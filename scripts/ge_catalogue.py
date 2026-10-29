"""Cross-reference every geometry-engine label: where it sits, what reaches it.

Usage: ge_catalogue.py [UCODE_DIR] [LISTING_DIR] [OUT_TSV]
       defaults: ucode/KONA ucode/ge_listing ucode/ge_xref.tsv

Also rewrites the per-module tables of ucode/ge_handlers.md, below the
marker line, from the cross-reference and the hand-written module roles in
ucode/ge_modules.tsv. The prose above the marker is kept.

Reads ge_symbols, geif.u and arm1.u (IRIX 6.5.30m), the per-source
listings that ge_disasm.py writes, and the tables arm1_handlers.py and
ged_relocs.py write (arm1_handlers.tsv, ged_bound_table.tsv,
ged_relocs.tsv). For each label it records:

  source      the source file and first line the ge.u line table gives
  span        instructions up to the next label in the same listing
  slots       geif.u slots whose handler address is the label's address
  arm         arm1.u functions that load one of those slots from gepc
              (linear scan, the same patterns as arm1_handlers.py)
  tokens      host tokens whose ARM handler is one of those functions
  ged         distributor table index (ged_bound_table.tsv) or relocated
              distributor words (ged_relocs.tsv) that name the slot
  from        engine labels holding a transfer whose target is the label

The table is evidence for ucode/ge_handlers.md, which explains it.
"""
import bisect
import collections
import os
import re
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import arm1_disasm as A  # noqa: E402

GEPC = 0x04068654
PACKED = 0x48


def main():
    src = sys.argv[1] if len(sys.argv) > 1 else 'ucode/KONA'
    lst = sys.argv[2] if len(sys.argv) > 2 else 'ucode/ge_listing'
    out = sys.argv[3] if len(sys.argv) > 3 else 'ucode/ge_xref.tsv'

    labels = []
    for line in open(os.path.join(src, 'ge_symbols')):
        n, a = line.split()
        labels.append((int(a, 16), n))
    g = struct.unpack('>1024H', open(os.path.join(src, 'geif.u'), 'rb').read())
    slots_of = collections.defaultdict(list)
    for k in range(512):
        if g[2 * k + 1]:
            slots_of[g[2 * k + 1]].append(k)

    # listings: label -> (file, first line, span); transfers -> referring label
    where, span, refs = {}, {}, collections.defaultdict(set)
    insn = re.compile(r'^([0-9a-f]{4}): ')
    for f in sorted(os.listdir(lst)):
        if not f.endswith('.lst'):
            continue
        sf = f[:-4]
        cur, pend = None, []
        for line in open(os.path.join(lst, f)):
            line = line.rstrip('\n')
            if line.endswith(':') and not line.startswith('#') and ' ' not in line:
                pend.append(line[:-1])
                continue
            m = insn.match(line)
            if not m:
                continue
            ln = re.search(r'; %s:(\d+)$' % re.escape(sf), line)
            for p in pend:
                where.setdefault(p, (sf, int(ln.group(1)) if ln else 0))
                span[p] = 0
            if pend:
                cur = pend
                pend = []
            if cur:
                for c in cur:
                    span[c] += 1
            t = re.search(r'-> [0-9a-f]{4} <([^>]+)>', line)
            if t and cur and t.group(1) != "HereWeGo":
                refs[t.group(1)].add(cur[0])

    # ARM: which functions load each gepc slot
    mem, syms, base, ro, dbase, rw = A.load(os.path.join(src, 'arm1.u'))
    csyms = sorted((v, n) for v, f, n in syms if base <= v < base + ro)
    addrs = [v for v, n in csyms]

    def name_at(a):
        i = bisect.bisect_right(addrs, a) - 1
        return csyms[i][1] if i >= 0 else '?'

    arm = collections.defaultdict(set)
    gbase, fn = set(), None
    pcs = list(range(base, base + ro, 4))
    texts = {}
    for pc in pcs:
        t, _ = A.dis(mem[pc], pc)
        texts[pc] = re.sub(r'\s*<[^>]*>', '', t)
    for i, pc in enumerate(pcs):
        f = name_at(pc)
        if f != fn:
            fn, gbase = f, set()
        t = texts[pc]
        op, _, args = t.partition(' ')
        m = re.match(r'(r\d+), \[pc, #(-?)0x([0-9a-f]+)\]$', args)
        if op == 'ldr' and m:
            off = int(m.group(3), 16) * (-1 if m.group(2) else 1)
            if mem.get(pc + 8 + off, 0) == GEPC:
                gbase.add(m.group(1))
        m = re.match(r'(r\d+), \[(r\d+), #(0x[0-9a-f]+)\]!?$', args)
        if op == 'ldr' and m:
            off = int(m.group(3), 16)
            if m.group(2) in gbase and off % 4 == 0 and off < 0x800:
                arm[off // 4].add(fn)
            elif m.group(2) == 'r8' and PACKED <= off < PACKED + 0x100 and i + 1 < len(pcs):
                r = m.group(1)
                nxt = texts[pcs[i + 1]]
                b = 2 * ((off - PACKED) // 4)
                if nxt == 'mov %s, %s, lsl #16' % (r, r):
                    arm[b + 1].add(fn)
                elif nxt == 'mov %s, %s, lsr #16' % (r, r):
                    arm[b].add(fn)

    tok = collections.defaultdict(set)
    for line in open('ucode/arm1_handlers.tsv'):
        if line[0] == '#' or line.startswith('token'):
            continue
        f = line.rstrip('\n').split('\t')
        tok[f[2]].add(f[1])
    ged = collections.defaultdict(set)
    for line in open('ucode/ged_bound_table.tsv'):
        if line[0] == '#' or line.startswith('index'):
            continue
        i, h = line.split()
        ged[h].add('table %s' % i)
    for line in open('ucode/ged_relocs.tsv'):
        if line[0] == '#' or line.startswith('ged_word'):
            continue
        f = line.rstrip('\n').split('\t')
        ged[f[5]].add('reloc')

    with open(out, 'w') as fh:
        fh.write('# Every ge_symbols label of ge.u (IRIX 6.5.30m) with what reaches it. Produced by\n')
        fh.write('# scripts/ge_catalogue.py; explained in ucode/ge_handlers.md.\n')
        fh.write('address\tlabel\tsource\tline\tspan\tslots\tarm\ttokens\tged\tfrom\n')
        for a, n in labels:
            s, ln = where.get(n, ('', 0))
            sl = slots_of.get(a, [])
            af = sorted(set().union(*[arm[k] for k in sl])) if sl else []
            tk = sorted(set().union(*[tok[x] for x in af])) if af else []
            gd = sorted(set().union(*[ged[x] for x, b in [(m, 0) for aa, m in labels if aa == a]])) if sl else []
            fr = sorted(refs.get(n, set()) - {n})
            fh.write('0x%04x\t%s\t%s\t%d\t%d\t%s\t%s\t%s\t%s\t%s\n' % (
                a, n, s, ln, span.get(n, 0), ','.join(map(str, sl)), ','.join(af),
                ','.join(tk), ','.join(gd), ','.join(fr)))

    write_md(out)


MARK = '<!-- generated by scripts/ge_catalogue.py below this line -->'


def write_md(xref, md='ucode/ge_handlers.md', roles='ucode/ge_modules.tsv'):
    role = {}
    for line in open(roles):
        if line[0] == '#' or line.startswith('source\t'):
            continue
        k, v = line.rstrip('\n').split('\t', 1)
        role[k] = v
    rows = [l.rstrip('\n').split('\t') for l in open(xref)
            if l[0] != '#' and not l.startswith('address\t')]
    by = collections.OrderedDict()
    for r in sorted(rows, key=lambda r: (r[2], int(r[3]), int(r[0], 16))):
        by.setdefault(r[2], []).append(r)
    head = open(md).read().split(MARK)[0] if os.path.exists(md) else ''
    o = [head.rstrip('\n'), '', MARK, '']
    for f in sorted(by, key=str.lower):
        o.append('### %s' % f)
        o.append('')
        rl = role.get(f, 'role unknown').rstrip('.')
        o.append('%s%s. **Inferred** from its labels and callers.' % (rl[0].upper(), rl[1:]))
        o.append('')
        o.append('| Label | Address | Line | Words | Reached from |')
        o.append('|---|---|---|---|---|')
        owner = None
        alias = {}
        for r in by[f]:
            alias.setdefault(r[0], r[1])
        for r in by[f]:
            a, n, s, ln, sp, sl, arm, tk, ged, fr = r
            how = []
            if alias[a] != n:
                how.append('alias of `%s`' % alias[a])
            else:
                if sl:
                    how.append('geif slot %s' % sl)
                if tk:
                    how.append('tokens %s' % ', '.join('`%s`' % t for t in tk.split(',')))
                if arm:
                    a2 = arm.split(',')
                    how.append('ARM %s%s' % (', '.join('`%s`' % x for x in a2[:6]),
                                             ' and %d more' % (len(a2) - 6) if len(a2) > 6 else ''))
                if ged:
                    how.append('distributor %s' % ged.replace('reloc', 'relocated word'))
                if fr:
                    f2 = fr.split(',')
                    how.append('transfers in %s%s' % (', '.join('`%s`' % x for x in f2[:6]),
                                                     ' and %d more' % (len(f2) - 6) if len(f2) > 6 else ''))
                if not (sl or arm or fr) and owner and owner != n:
                    how.append('inside `%s`' % owner)
            if sl or n.startswith(('mmo_', 'umo_', 'mge', 'uge')) or (n[0] in 'mu' and n[1:2].isupper()):
                owner = alias[a]
            o.append('| `%s` | 0x%s | %s | %s | %s |' % (n, a[2:], ln, sp, '; '.join(how) or 'unknown entry'))
        o.append('')
    open(md, 'w').write('\n'.join(o))


if __name__ == '__main__':
    main()
