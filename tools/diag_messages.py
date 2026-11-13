#!/usr/bin/env python3
"""Catalogue the messages that the KONA kernel objects print.

Usage: tools/diag_messages.py [--out software/kernel/diag-messages.tsv] [--doc software/kernel/diag-messages.md]

Run it from the repository root inside the toolchain environment (MIPS objdump and
pyelftools, as for retools/tools/inventory.py). It walks every routine of the kernel objects
in the scope list below and finds each call to a print routine (cmn_err, cmn_err_tag,
printf, qprintf, sprintf). A string literal reaches the call through a $gp-relative
pointer slot in .srdata, and kernel_annotate.py already knows how to resolve those;
this script reuses its slot and string readers.

Register values follow the code in straight-line order, with two rules for a MIPS
call. The delay slot of a branch or call runs before the branch takes effect, so it
is applied first. A callee-saved register restored from the stack keeps the value it
held before the restore, because the code after an epilogue is often reached by a
branch from the middle of the routine.

For every call the table records the routine, the call address, the callee, the
level or tag the call shows (cmn_err takes the level in a0, cmn_err_tag the tag in a0
and the level in a1), the format string and where it lives, the nearest enclosing
branch that skips the call (the call runs when that branch is not taken), and whether
the routine touches the board registers or waits on the board. Rows are sorted with
board-facing messages first.

Each row's "grade" is "mechanical" unless software/kernel/diag-messages-reads.tsv holds a reading
for it. That file is written by hand: each line gives the item id, the grade "read", the
condition under which the call runs and a note on what the disassembly shows. A row
without a reading keeps the mechanical fields only. Its skip_branch is the nearest
conditional branch before the call, with no jump or return between, that jumps over it;
it is a candidate, not the condition,
because a call can also be reached by a taken branch.
"""
import argparse
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)

from elftools.elf.elffile import ELFFile  # noqa: E402
import kernel_annotate as ka  # noqa: E402

OBJDUMP = os.environ.get('MIPS_OBJDUMP', 'mips64-linux-gnuabi64-objdump')
INSN = re.compile(r'^\s+([0-9a-f]+):\t([0-9a-f]+) \t(\S+)(?:\t(.*))?$')
RELOC = re.compile(r'^\t\t\t([0-9a-f]+): (R_MIPS_\w+)\t(.*)$')
FUNC = re.compile(r'^([0-9a-f]+) <([^>]+)>:$')

PRINTERS = {'cmn_err', 'cmn_err_tag', 'printf', 'qprintf', 'sprintf'}
# format argument position per print routine
FMT_ARG = {'cmn_err': 'a1', 'cmn_err_tag': 'a2', 'printf': 'a0', 'qprintf': 'a0', 'sprintf': 'a1'}
BRANCH = {'beq', 'bne', 'beqz', 'bnez', 'blez', 'bgtz', 'bltz', 'bgez', 'b', 'j', 'jal', 'jalr', 'jr', 'bal',
          'bltzal', 'bgezal', 'bc1t', 'bc1f', 'beql', 'bnel', 'beqzl', 'bnezl', 'blezl', 'bgtzl', 'bltzl', 'bgezl'}
CALLS = {'jal', 'jalr', 'bal', 'bltzal', 'bgezal'}
COND = {'beq', 'bne', 'beqz', 'bnez', 'blez', 'bgtz', 'bltz', 'bgez'}
NOWRITE = {'sd', 'sw', 'sh', 'sb', 'sdl', 'sdr', 'swl', 'swr', 'sdc1', 'swc1', 'mtc0', 'dmtc0', 'mtc1', 'dmtc1',
           'mult', 'multu', 'dmult', 'dmultu', 'div', 'divu', 'ddiv', 'ddivu', 'nop', 'sync', 'cache', 'pref',
           'mthi', 'mtlo', 'ctc1', 'tlbwi', 'tlbwr', 'tlbp', 'tlbr', 'eret'}
LOADS = {'ld', 'lw', 'lwu', 'lh', 'lhu', 'lb', 'lbu'}
SAVED = {'s0', 's1', 's2', 's3', 's4', 's5', 's6', 's7', 's8', 'fp', 'gp'}
CALLER_SAVED = ['v0', 'v1', 'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 't0', 't1', 't2', 't3', 't4', 't5',
                't6', 't7', 't8', 't9', 'at', 'ra']
ARGS = ['a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7']

# calls that touch a board register or wait on the board
BOARD_CALLS = {'gfx_pio_read_32', 'gfx_pio_write_32', 'gfx_pio_read_64', 'gfx_pio_write_64', 'gfx_waitf_on',
               'gfx_waitf_off', 'us_delay', 'gfx_io_space_alloc', 'kvtophys', 'xwidget_info_get'}
# words in the text of a message that name board hardware or its flow
BOARD_WORDS = re.compile(r'fifo|interrupt|intr|dma|register|timeout|time out|timed out|guava|xg|xtalk|parity|pipe|'
                         r'arm|map ?ram|tbus|now bit|hi.?water|lo.?water|credit|hang|swap|mopup|'
                         r'checkpipe|selectfeed|pio|\bge\d*\b|odma|idma|hwgraph|dplex|nclops|discover|'
                         r'backed up|spurious|garbage', re.I)


def parse(obj):
    text = subprocess.run([OBJDUMP, '-dr', obj], capture_output=True, text=True, check=True).stdout.splitlines()
    funcs = []
    cur = None
    for line in text:
        m = FUNC.match(line)
        if m:
            cur = {'name': m.group(2), 'addr': int(m.group(1), 16), 'insns': []}
            funcs.append(cur)
            continue
        if cur is None:
            continue
        m = RELOC.match(line)
        if m and cur['insns']:
            cur['insns'][-1]['relocs'].append((m.group(2), m.group(3)))
            continue
        m = INSN.match(line)
        if m:
            cur['insns'].append({'addr': int(m.group(1), 16), 'mnem': m.group(3),
                                 'ops': (m.group(4) or '').strip(), 'relocs': []})
    return funcs


def split_ops(ops):
    ops = re.sub(r'\s*<[^>]*>', '', ops)
    return [o.strip() for o in ops.split(',')] if ops else []


def branch_target(ops):
    m = re.search(r'([0-9a-f]+)\s*<', ops)
    if m:
        return int(m.group(1), 16)
    m = re.search(r'([0-9a-f]+)$', ops.strip())
    return int(m.group(1), 16) if m else None


def skip_text(mnem, ops):
    """The condition under which the branch skips the code after it."""
    o = split_ops(ops)
    if mnem == 'beqz' and len(o) >= 1:
        return '%s == 0' % o[0]
    if mnem == 'bnez' and len(o) >= 1:
        return '%s != 0' % o[0]
    if mnem == 'beq' and len(o) >= 2:
        return '%s == %s' % (o[0], o[1])
    if mnem == 'bne' and len(o) >= 2:
        return '%s != %s' % (o[0], o[1])
    if mnem == 'blez' and o:
        return '%s <= 0' % o[0]
    if mnem == 'bgtz' and o:
        return '%s > 0' % o[0]
    if mnem == 'bltz' and o:
        return '%s < 0' % o[0]
    if mnem == 'bgez' and o:
        return '%s >= 0' % o[0]
    return '%s %s' % (mnem, ops)


NEGATE = {'==': '!=', '!=': '==', '<=': '>', '>': '<=', '<': '>=', '>=': '<'}


def run_text(mnem, ops):
    """The condition under which code after the branch runs, i.e. the negation of the skip condition."""
    text = skip_text(mnem, ops)
    for op in ('==', '!=', '<=', '>=', '<', '>'):
        if ' %s ' % op in text:
            a, b = text.split(' %s ' % op)
            return '%s %s %s' % (a, NEGATE[op], b)
    return 'not (%s)' % text


def meet(a, b):
    """Register values that two paths agree on; the rest become unknown."""
    # Two paths that build the same pointer at different addresses agree on the pointer; the
    # address kept is the first path's.
    return {r: v for r, v in a.items() if b.get(r) == v or (v[0] == 'ptr' and b.get(r, ('?',))[:3] == v[:3])}


def cstr(elf, sec, off):
    return ka.cstring(elf, sec, off)


def analyse(obj):
    elf = ELFFile(open(obj, 'rb'))
    gp0 = ka.gp0_of(elf)
    slots = ka.slot_targets(elf, '.srdata')
    sites = []
    for f in parse(obj):
        ins = f['insns']
        st = {}
        calls = []
        branches = []
        callees = set()

        # A callee-saved register that the routine loads only from one $gp slot, and
        # never writes otherwise, holds that pointer wherever it is read. The flow walk
        # loses it at labels reached only through a jump table or a branch it has not seen
        # yet, and the routines in the table keep their string base in such a register.
        sdefs = {}
        for x in ins:
            ops = split_ops(x['ops'])
            if x['mnem'] in NOWRITE or x['mnem'] in BRANCH or not ops or ops[0] not in SAVED:
                continue
            if x['mnem'] == 'ld' and len(ops) == 2 and re.match(r'-?\d+\(sp\)$', ops[1]):
                continue
            sdefs.setdefault(ops[0], []).append(x)
        fixed = {}
        for r, xs in sdefs.items():
            found = set()
            for x in xs:
                o = split_ops(x['ops'])
                mm = re.match(r'(-?\d+)\(gp\)$', o[1]) if len(o) == 2 else None
                if (x['mnem'] == 'ld' and mm and x['relocs'] and x['relocs'][0][0] == 'R_MIPS_GPREL16'
                        and x['relocs'][0][1] == '.srdata' and int(mm.group(1)) + gp0 in slots):
                    nm, add = slots[int(mm.group(1)) + gp0]
                    found.add((nm, add))
                else:
                    found.add(None)
            if len(found) == 1 and None not in found:
                nm, add = next(iter(found))
                fixed[r] = ('ptr', nm, add, xs[0]['addr'])

        def val(r):
            return st.get(r) or fixed.get(r, ('?',))

        def apply(x):
            m = x['mnem']
            ops = split_ops(x['ops'])
            rel = x['relocs']
            if m in NOWRITE or m in BRANCH or not ops:
                return
            dst = ops[0]
            if m == 'li' and len(ops) == 2:
                st[dst] = ('const', int(ops[1], 0))
                return
            if m in LOADS:
                if len(ops) == 2 and m == 'ld' and dst in SAVED and re.match(r'-?\d+\(sp\)$', ops[1]):
                    return
                mm = re.match(r'(-?\d+)\(gp\)$', ops[1]) if len(ops) == 2 else None
                if mm and m == 'ld' and rel and rel[0][0] == 'R_MIPS_GPREL16' and rel[0][1] == '.srdata':
                    slot = int(mm.group(1)) + gp0
                    if slot in slots:
                        nm, add = slots[slot]
                        st[dst] = ('ptr', nm, add, x['addr'])
                        return
                st[dst] = ('?',)
                return
            if m in ('daddiu', 'addiu') and len(ops) == 3:
                src = val(ops[1])
                try:
                    imm = int(ops[2], 0)
                except ValueError:
                    st[dst] = ('?',)
                    return
                if src[0] == 'ptr':
                    st[dst] = ('ptr', src[1], src[2] + imm, x['addr'])
                elif ops[1] == 'zero':
                    st[dst] = ('const', imm)
                else:
                    st[dst] = ('?',)
                return
            if m == 'ori' and len(ops) == 3 and ops[1] == 'zero':
                st[dst] = ('const', int(ops[2], 0))
                return
            if m in ('or', 'daddu', 'addu') and len(ops) == 3 and ops[2] == 'zero':
                st[dst] = val(ops[1]) if ops[1] != 'zero' else ('const', 0)
                return
            if m == 'move' and len(ops) == 2:
                st[dst] = val(ops[1]) if ops[1] != 'zero' else ('const', 0)
                return
            if m == 'lui' and len(ops) == 2:
                st[dst] = ('const', int(ops[1], 0) << 16)
                return
            st[dst] = ('?',)

        n = len(ins)
        pending = {}
        passed = {}
        targets = set()
        for x in ins:
            if x['mnem'] in BRANCH:
                t = branch_target(x['ops'])
                if t is not None:
                    targets.add(t)
        live = True
        i = 0
        while i < n:
            x = ins[i]
            if x['addr'] in pending:
                if live:
                    st = meet(st, pending[x['addr']])
                else:
                    st = dict(pending[x['addr']])
                live = True
            elif not live and x['addr'] in targets and x['addr'] in passed:
                # reached only by a backward branch: use the state it had when first passed
                st = dict(passed[x['addr']])
                live = True
            if live:
                passed[x['addr']] = dict(st)
            m = x['mnem']
            if m in BRANCH:
                ds = ins[i + 1] if i + 1 < n else None
                if ds is not None:
                    apply(ds)
                if m in CALLS:
                    target = None
                    for kind, t in x['relocs']:
                        if kind == 'R_MIPS_26':
                            target = t
                    if target is not None:
                        callees.add(target)
                    calls.append({'addr': x['addr'], 'target': target,
                                  'args': {a: val(a) for a in ARGS},
                                  'ds_addr': ds['addr'] if ds else None})
                    for r in CALLER_SAVED:
                        st[r] = ('?',)
                else:
                    t = branch_target(x['ops'])
                    if m in COND and ds is not None:
                        branches.append({'addr': x['addr'], 'mnem': m, 'ops': x['ops'], 'target': t})
                    if t is not None and t > x['addr']:
                        pending[t] = meet(pending[t], st) if t in pending else dict(st)
                    if m in ('b', 'j', 'jr'):
                        live = False
                        st = {}
                i += 2
                continue
            apply(x)
            i += 1

        jumps = [x['addr'] for x in ins if x['mnem'] in ('b', 'j', 'jr')]
        board = bool(callees & BOARD_CALLS)
        for c in calls:
            if c['target'] not in PRINTERS:
                continue
            # A jump or return between the branch and the call means the call is entered by a
            # taken branch from elsewhere, so the branch does not guard it.
            guards = [b for b in branches if b['addr'] < c['addr'] and b['target'] is not None
                      and c['addr'] < b['target']
                      and not any(b['addr'] < u < c['addr'] for u in jumps)]
            guard = max(guards, key=lambda b: b['addr']) if guards else None
            fa = FMT_ARG[c['target']]
            fmt = c['args'][fa]
            text = None
            if fmt[0] == 'ptr':
                text = cstr(elf, fmt[1], fmt[2])
            sites.append({'func': f['name'], 'func_addr': f['addr'], 'callee': c['target'], 'addr': c['addr'],
                          'args': c['args'], 'fmt': fmt, 'fmt_text': text, 'guard': guard,
                          'nguards': len(guards), 'board_calls': board, 'ds_addr': c['ds_addr']})
    return sites


def describe(v):
    if v[0] == 'const':
        return '0x%x' % (v[1] & 0xffffffffffffffff)
    if v[0] == 'ptr':
        return '%s+0x%x' % (v[1], v[2])
    return '?'


def row_for(obj_label, site):
    c = site['callee']
    args = site['args']
    if c == 'cmn_err':
        lvl = args['a0']
        kind = 'cmn_err'
        level = describe(lvl)
        tag = ''
    elif c == 'cmn_err_tag':
        kind = 'cmn_err_tag'
        tag = describe(args['a0'])
        tag = '%s (%d)' % (tag, int(tag, 16)) if tag.startswith('0x') else tag
        level = describe(args['a1'])
    else:
        kind = c
        level = ''
        tag = ''
    fmt_text = site['fmt_text']
    if fmt_text is None:
        status = 'unresolved'
    else:
        status = 'resolved'
    g = site['guard']
    if g is not None:
        guard = '%s %s' % (g['mnem'], g['ops'])
        runs = run_text(g['mnem'], g['ops'])
        guard_addr = '0x%x' % g['addr']
    else:
        guard = ''
        runs = ''
        guard_addr = ''
    text = fmt_text or ''
    hw_text = bool(BOARD_WORDS.search(text))
    hw = site['board_calls'] or hw_text
    reason = []
    if site['board_calls']:
        reason.append('routine calls board access')
    if hw_text:
        reason.append('message names board hardware')
    fmt_src = ('%s+0x%x' % (site['fmt'][1], site['fmt'][2])) if site['fmt'][0] == 'ptr' else ''
    formed = '0x%x' % site['fmt'][3] if site['fmt'][0] == 'ptr' else ''
    return {
        'id': '%s:0x%x' % (obj_label[1], site['addr']),
        'binary': obj_label[0],
        'routine': site['func'],
        'call': '0x%x' % site['addr'],
        'callee': c,
        'kind': kind,
        'level': level,
        'tag': tag,
        'format': text,
        'format_at': fmt_src,
        'formed_at': formed,
        'status': status,
        'skip_at': guard_addr,
        'skip_branch': guard,
        'skip_runs_when': runs,
        'skip_count': str(site['nguards']),
        'board': 'yes' if hw else 'no',
        'board_reason': '; '.join(reason),
        'grade': 'mechanical',
        'runs_when': '',
        'note': '',
    }


def load_reads(path):
    reads = {}
    if not os.path.exists(path):
        return reads
    with open(path) as f:
        for line in f:
            line = line.rstrip('\n')
            if not line or line.startswith('#'):
                continue
            parts = line.split('\t')
            if len(parts) != 4:
                raise SystemExit('reads: bad line (want id, grade, runs_when, note): %r' % line)
            reads[parts[0]] = (parts[1], parts[2], parts[3])
    return reads


COLUMNS = ['id', 'binary', 'routine', 'call', 'callee', 'kind', 'level', 'tag', 'format', 'format_at', 'formed_at',
           'status', 'skip_at', 'skip_branch', 'skip_runs_when', 'skip_count', 'board', 'board_reason', 'grade',
           'runs_when', 'note']


def summary(rows):
    graded = sum(r['grade'] == 'read' for r in rows)
    board = sum(r['board'] == 'yes' for r in rows)
    unres = sum(r['status'] == 'unresolved' for r in rows)
    kinds = {}
    for r in rows:
        kinds[r['callee']] = kinds.get(r['callee'], 0) + 1
    lines = ['| Measure | Count |', '| --- | ---: |',
             '| Print-call sites in scope | %d |' % len(rows),
             '| Sites whose format string was traced | %d |' % (len(rows) - unres),
             '| Sites with no traced format string | %d |' % unres,
             '| Board-facing sites (sorted first) | %d |' % board,
             '| Sites read by hand (grade read) | %d |' % graded]
    lines += ['| Calls to %s | %d |' % (k, v) for k, v in sorted(kinds.items())]
    return '\n'.join(lines)


def write_doc(path, rows):
    begin, end = '<!-- diag-messages:begin -->', '<!-- diag-messages:end -->'
    text = open(path).read()
    i, j = text.index(begin) + len(begin), text.index(end)
    open(path, 'w').write(text[:i] + '\n' + summary(rows) + '\n' + text[j:])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', default='software/kernel/diag-messages.tsv')
    ap.add_argument('--doc', default='software/kernel/diag-messages.md')
    ap.add_argument('--reads', default='software/kernel/diag-messages-reads.tsv')
    ap.add_argument('--root', default='root/usr/cpu/sysgen/IP27boot')
    args = ap.parse_args()
    scope = []
    members = os.path.join(args.root, 'kona.a_members')
    for name in sorted(os.listdir(members)):
        if name.endswith('.o'):
            scope.append(('usr/cpu/sysgen/IP27boot/kona.a(%s)' % name, os.path.join(members, name), 'kona', name))
    for name in ('gfx.o', 'rrm.o'):
        scope.append(('usr/cpu/sysgen/IP27boot/%s' % name, os.path.join(args.root, name), 'shared', name))
    reads = load_reads(args.reads)
    rows = []
    for label, path, group, base in scope:
        for site in analyse(path):
            r = row_for((label, base), site)
            if r['id'] in reads:
                r['grade'], r['runs_when'], r['note'] = reads[r['id']]
            rows.append(r)
    rows.sort(key=lambda r: (r['board'] != 'yes', r['binary'], int(r['call'], 16)))
    with open(args.out, 'w') as f:
        f.write('\t'.join(COLUMNS) + '\n')
        for r in rows:
            f.write('\t'.join(str(r[c]) for c in COLUMNS) + '\n')
    if os.path.exists(args.doc):
        write_doc(args.doc, rows)
    print('%d rows' % len(rows), file=sys.stderr)


if __name__ == '__main__':
    main()
