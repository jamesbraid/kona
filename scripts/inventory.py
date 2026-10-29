#!/usr/bin/env python3
"""Measure what the workspace has covered, from the binaries.

Usage: scripts/inventory.py [--out docs/inventory] [--no-coverage]
       Run it from the repository root, with root/ filled (IRIX_FILES.md) and
       the MIPS binutils and pyelftools installed (see AGENTS.md).

The scope is the `files` block of IRIX_FILES.md minus its `exclude` block.
Every ELF file and every ELF member of an `ar` archive in scope is read.
Five tables are written to the output directory, one row per item, each with
a status column:

  functions.tsv  every function symbol (.symtab, .dynsym and, for o32 files,
                 the .mdebug procedure table) with address and size
  mmio.tsv       every distinct device offset the code reaches: kernel calls
                 to the PIO accessor with a recoverable offset, loads and
                 stores off the pipe's base pointer, and the register tables
                 the kpm diagnostic carries
  tokens.tsv     every host command token: the kpm name table, the ARM
                 firmware's token map and the names in GE.h
  ioctls.tsv     every private ioctl slot the kernel dispatcher serves, and
                 every command constant user code passes to an ioctl wrapper
  ucode.tsv      every microcode routine and entry point: the ARM firmware's
                 symbols, the geometry engine's labels, the interface table's
                 slots and the display generator's command table

Status:
  documented  the item is explained in prose: a markdown page names it (in
              backticks or a code block) or a header carries a comment that
              names it or sits on its definition. The doc column gives
              `file#anchor` for a page or `file:line` for a header.
  named-only  the item appears in the repository only as a bare name or
              value: a header definition with no comment, or a committed
              table other than a verbatim dump of the binary's own names.
  undocumented  nothing in the docs, headers or tables mentions it.
Generated listings, disassembly and decompiled C are not evidence: they
restate the binary. So are verbatim dumps of a binary's own tables.

The script also rewrites the block between the inventory markers in
docs/coverage.md with the totals. Run it in the same commit as any doc or
header change, so the percentages stay current.
"""
import argparse
import bisect
import collections
import glob
import hashlib
import io
import os
import re
import shutil
import struct
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from elftools.elf.elffile import ELFFile
from scripts.toolchain import objdump

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# ---------------------------------------------------------------------------
# Repository-specific settings. Everything else is generic.

# Kernel accessors for the pipe's registers: the first argument is the
# address, the register base pointer held at this slot of the per-pipe state
# plus an offset.
PIO_ACCESSORS = {'gfx_pio_read_32': 'read', 'gfx_pio_write_32': 'write'}
BASE_SLOTS = {2376}
# Functions that take an ioctl command as their second argument.
IOCTL_WRAPPERS = {'ioctl', '__glKon_ioctl'}
# The kernel's private ioctl dispatcher; slot n serves command base + n.
IOCTL_DISPATCHER = 'KONAprivate'

# Where each device window is explained: headers (a define with a comment
# documents it) and docs (a hex literal in prose documents it).
WINDOWS = {
    'xg': (['XG.h'], ['docs/xg.md', 'docs/hip.md']),
    'hip': (['HIP.h'], ['docs/hip.md', 'docs/kernel.md', 'docs/xg.md']),
    'hip-alias': (['HIP.h'], ['docs/hip.md', 'docs/kernel.md']),
    'hip-register': (['HIP.h'], ['docs/hip.md']),
    'ge-register': (['GE.h'], ['docs/ge.md', 'ucode/ged.md']),
    'raster-index': (['RM.h'], ['docs/rm.md']),
}

# Committed tables that restate a binary's own names; they are not evidence.
DUMP_TABLES = {
    'ucode/arm1_symbols.tsv', 'ucode/icu_map.tsv',
}
DUMP_DIRS = ('docs/inventory/', 'diags/kpm/')
# Prose and header sources.
PROSE_GLOBS = ['docs/*.md', 'ucode/*.md', 'README.md']
PROSE_SKIP = {'docs/coverage.md'}
HEADER_GLOBS = ['*.h', '*/include/*.h']
TABLE_GLOBS = ['*/*.tsv', 'docs/*/*.tsv']

# ---------------------------------------------------------------------------
# Scope


def read_blocks(name):
    text = open(os.path.join(REPO, 'IRIX_FILES.md')).read()
    out = []
    for b in re.findall(r'^```%s\s*$(.*?)^```\s*$' % name, text, re.S | re.M):
        out += [l.strip() for l in b.split('\n') if l.strip()]
    return out


def scope_files():
    excl = [l.split()[0].lstrip('/') for l in read_blocks('exclude')]
    root = os.path.join(REPO, 'root')
    seen, out = set(), []
    for line in read_blocks('files'):
        rel = line.split()[0].lstrip('/')
        base = os.path.join(root, rel)
        if os.path.isdir(base):
            cands = [os.path.join(dp, f) for dp, _, fs in os.walk(base) for f in fs]
        elif os.path.lexists(base):
            cands = [base]
        else:
            continue
        for p in cands:
            r = os.path.relpath(p, root)
            if any(r == e or r.startswith(e.rstrip('/') + '/') for e in excl):
                continue
            if os.path.islink(p) and os.path.realpath(p).startswith(os.path.realpath(root)):
                real = os.path.realpath(p)
            else:
                real = p
            if real in seen or not os.path.isfile(real):
                continue
            seen.add(real)
            out.append((r, real))
    return sorted(out)


def unpack_ar(data):
    if data[:8] != b'!<arch>\n':
        return []
    names, pos, mem = b'', 8, []
    while pos + 60 <= len(data):
        hdr = data[pos:pos + 60]
        name = hdr[:16].decode('latin1').strip()
        size = int(hdr[48:58])
        body = data[pos + 60:pos + 60 + size]
        pos += 60 + size + (size & 1)
        if name == '//':
            names = body
            continue
        if name in ('/', '/SYM64/', '__.SYMDEF', '__.SYMDEF SORTED'):
            continue
        if name.startswith('/') and name[1:].isdigit():
            end = names.index(b'\n', int(name[1:]))
            name = names[int(name[1:]):end].decode('latin1')
        elif name.startswith('#1/'):
            n = int(name[3:])
            name, body = body[:n].decode('latin1').rstrip('\0'), body[n:]
        mem.append((name.rstrip('/'), body))
    return mem


class Binary:
    """One ELF image: a file, or a member of an archive."""

    def __init__(self, label, member, data):
        self.label, self.member, self.data = label, member, data
        self.elf = ELFFile(io.BytesIO(data))
        h = self.elf.header
        self.rel = h['e_type'] == 'ET_REL'
        flags = h['e_flags']
        if self.elf.elfclass == 64:
            self.abi = 'n64'
        elif flags & 0x20:
            self.abi = 'n32'
        else:
            self.abi = 'o32'
        self.name = label if not member else '%s(%s)' % (label, member)

    def section_name(self, idx):
        if isinstance(idx, int) and idx < self.elf.num_sections():
            return self.elf.get_section(idx).name
        return str(idx)

    def symbols(self):
        """Defined function symbols as (section, address, size, name)."""
        rows, seen = [], set()
        for sn in ('.symtab', '.dynsym'):
            sec = self.elf.get_section_by_name(sn)
            if sec is None or not hasattr(sec, 'iter_symbols'):
                continue
            for s in sec.iter_symbols():
                if s['st_info']['type'] != 'STT_FUNC' or s['st_shndx'] == 'SHN_UNDEF':
                    continue
                key = (s.name, s['st_value'])
                if key in seen or not s.name:
                    continue
                seen.add(key)
                rows.append([self.section_name(s['st_shndx']), s['st_value'], s['st_size'], s.name])
        for sec, addr, name in mdebug_procs(self):
            if (name, addr) not in seen:
                seen.add((name, addr))
                rows.append([sec, addr, 0, name])
        # a missing size runs to the next symbol of the same section
        by = collections.defaultdict(list)
        for r in rows:
            by[r[0]].append(r[1])
        for sec in by:
            by[sec] = sorted(set(by[sec]))
        end = {}
        text = self.elf.get_section_by_name('.text')
        for sec_name in by:
            s = self.elf.get_section_by_name(sec_name)
            end[sec_name] = (s['sh_addr'] + s['sh_size']) if s is not None and s['sh_addr'] + s['sh_size'] else None
        for r in rows:
            if r[2] == 0:
                a = by[r[0]]
                i = bisect.bisect_right(a, r[1])
                nxt = a[i] if i < len(a) else end.get(r[0])
                if nxt is not None and nxt > r[1]:
                    r[2] = nxt - r[1]
        return rows


def mdebug_procs(b):
    """Procedures in an ECOFF .mdebug table (o32 files with no function symbols)."""
    sec = b.elf.get_section_by_name('.mdebug')
    if sec is None:
        return []
    d = sec.data()
    e = '>' if b.elf.little_endian is False else '<'
    f = struct.unpack(e + 'HH' + 'I' * 23, d[:96])
    (iline, cbline, cbLineOff, idn, cbdn, ipd, cbpd, isym, cbSymOff, iopt, cbopt, iaux, cbaux,
     iss, cbss, issext, cbssext, ifd, cbfd, crfd, cbrfd, iext, cbext) = f[2:]
    base = sec['sh_offset']
    full = b.data
    out = []
    # file descriptors: 72 bytes each
    for i in range(ifd):
        o = cbfd + i * 72
        if o + 72 > len(full):
            break
        (adr, rss, issBase, cbSs, isymBase, csym) = struct.unpack(e + 'IiiiiI', full[o:o + 24])
        for j in range(csym):
            so = cbSymOff + (isymBase + j) * 12
            iss_, val, bf = struct.unpack(e + 'iII', full[so:so + 12])
            st = bf >> 26
            if st in (6, 14):  # proc, static proc
                no = cbss + issBase + iss_
                end = full.index(b'\0', no)
                name = full[no:end].decode('latin1')
                if name:
                    out.append(('.text', val, name))
    return out


# ---------------------------------------------------------------------------
# Documentation index


def slug(h):
    h = re.sub(r'`', '', h.strip().lower())
    h = re.sub(r'[^\w\s-]', '', h)
    return re.sub(r'\s', '-', h)


IDENT = re.compile(r'[A-Za-z_][A-Za-z0-9_]*')
AMBIGUOUS = re.compile(r'[a-z]{1,10}')
HEXLIT = re.compile(r'\b0x([0-9a-fA-F]+)\b')
DECLIT = re.compile(r'(?<![\w.])(\d{4,6})(?![\w.])')


class DocIndex:
    def __init__(self):
        self.prose = {}        # identifier -> 'file#anchor'
        self.call = {}         # identifier written as a call, name(), in prose or a comment
        self.hex = collections.defaultdict(list)    # int -> [(file, anchor)]
        self.dec = collections.defaultdict(list)
        self.hdr_doc = {}      # identifier -> 'file:line' (commented)
        self.hdr_named = {}    # identifier -> 'file:line' (bare define)
        self.hdr_val = collections.defaultdict(list)   # int -> [(file, line, name, commented)]
        self.tbl = {}          # identifier -> file
        self.tbl_val = {}
        self.load()

    def md(self, path):
        sect, fence = '', False
        for ln in open(os.path.join(REPO, path), encoding='utf-8', errors='replace'):
            if ln.startswith('```'):
                fence = not fence
                continue
            if not fence and ln.startswith('#'):
                sect = slug(ln.lstrip('#'))
                continue
            where = '%s#%s' % (path, sect) if sect else path
            if fence:
                spans = [ln]
            else:
                spans = re.findall(r'`([^`]+)`', ln)
            for sp in spans:
                for m in IDENT.finditer(sp):
                    self.prose.setdefault(m.group(0), where)
                    if sp[m.end():m.end() + 1] == '(':
                        self.call.setdefault(m.group(0), where)
            # numbers count in any prose line
            for m in HEXLIT.finditer(ln):
                self.hex[int(m.group(1), 16)].append((path, where))
            for m in DECLIT.finditer(ln):
                self.dec[int(m.group(1))].append((path, where))

    def header(self, path):
        text = open(os.path.join(REPO, path), encoding='utf-8', errors='replace').read()
        lines = text.split('\n')
        incomment = False
        for n, ln in enumerate(lines, 1):
            s = ln
            code, comment = s, ''
            if incomment:
                if '*/' in s:
                    comment, code = s.split('*/', 1)
                    incomment = False
                else:
                    comment, code = s, ''
            else:
                m = re.search(r'/\*(.*?)(\*/|$)', s)
                if m:
                    comment = m.group(1)
                    code = s[:m.start()] + s[m.end():]
                    if not m.group(2):
                        incomment = True
                m2 = re.search(r'//(.*)$', code)
                if m2:
                    comment += ' ' + m2.group(1)
                    code = code[:m2.start()]
            where = '%s:%d' % (path, n)
            for m in IDENT.finditer(comment):
                self.hdr_doc.setdefault(m.group(0), where)
                if comment[m.end():m.end() + 1] == '(':
                    self.call.setdefault(m.group(0), where)
            for m in HEXLIT.finditer(comment):
                self.hex[int(m.group(1), 16)].append((path, where))
            for m in DECLIT.finditer(comment):
                self.dec[int(m.group(1))].append((path, where))
            if not code.strip():
                continue
            commented = len(comment.split()) >= 3
            d = re.match(r'\s*#\s*define\s+(\w+)\s+\(?(0x[0-9a-fA-F]+|\d+)', code)
            e = re.match(r'\s*(\w+)\s*=\s*\(?(0x[0-9a-fA-F]+|\d+)\)?\s*,?', code)
            m = d or e
            if m:
                name, val = m.group(1), int(m.group(2), 0)
                self.hdr_val[val].append((path, n, name, commented))
                if commented:
                    self.hdr_doc.setdefault(name, where)
                else:
                    self.hdr_named.setdefault(name, where)
            else:
                for m in IDENT.finditer(code):
                    self.hdr_named.setdefault(m.group(0), where)

    def table(self, path):
        for ln in open(os.path.join(REPO, path), encoding='utf-8', errors='replace'):
            if ln.startswith('#'):
                continue
            for cell in ln.rstrip('\n').split('\t'):
                if IDENT.fullmatch(cell):
                    self.tbl.setdefault(cell, path)
                for m in HEXLIT.finditer(cell):
                    self.tbl_val.setdefault(int(m.group(1), 16), path)

    def load(self):
        for g in PROSE_GLOBS:
            for p in sorted(glob.glob(os.path.join(REPO, g))):
                r = os.path.relpath(p, REPO)
                if r not in PROSE_SKIP:
                    self.md(r)
        for g in HEADER_GLOBS:
            for p in sorted(glob.glob(os.path.join(REPO, g))):
                self.header(os.path.relpath(p, REPO))
        for g in TABLE_GLOBS:
            for p in sorted(glob.glob(os.path.join(REPO, g))):
                r = os.path.relpath(p, REPO)
                if r in DUMP_TABLES or r.startswith(DUMP_DIRS):
                    continue
                self.table(r)

    def by_name(self, *names):
        """(status, doc) for the best of several spellings of one item."""
        # A short lower-case word is also ordinary English: count it only
        # when it is written as a call, name(), in prose or a header comment.
        keep = []
        for n in names:
            if AMBIGUOUS.fullmatch(n):
                if n in self.call:
                    return 'documented', self.call[n]
            else:
                keep.append(n)
        names = keep
        for n in names:
            if n in self.prose:
                return 'documented', self.prose[n]
        for n in names:
            if n in self.hdr_doc:
                return 'documented', self.hdr_doc[n]
        for n in names:
            if n in self.hdr_named:
                return 'named-only', self.hdr_named[n]
        for n in names:
            if n in self.tbl:
                return 'named-only', self.tbl[n]
        return 'undocumented', ''

    def by_value(self, window, values, names=()):
        hdrs, docs = WINDOWS.get(window, ([], []))
        best = None
        for v in values:
            for (f, line, name, com) in self.hdr_val.get(v, []):
                if f in hdrs:
                    if com:
                        return 'documented', '%s:%d' % (f, line)
                    best = best or ('named-only', '%s:%d' % (f, line))
            for (f, where) in self.hex.get(v, []):
                if f in docs and ':' not in where:
                    return 'documented', where
        for n in names:
            st = self.by_name(n)
            if st[0] == 'documented':
                return st
        if best:
            return best
        for n in names:
            st = self.by_name(n)
            if st[0] != 'undocumented':
                return st
        for v in values:
            if v in self.tbl_val and (window in ('hip', 'xg') and v > 0xff):
                return 'named-only', self.tbl_val[v]
        return 'undocumented', ''


# ---------------------------------------------------------------------------
# Disassembly and a small constant replay

INSN = re.compile(r'^\s*([0-9a-f]+):\t[0-9a-f]{8}\s+(\S+)(?:\s+(.*?))?\s*$')
FUNC = re.compile(r'^([0-9a-f]+) <(.+)>:$')
RELOC = re.compile(r'^\s+([0-9a-f]+): (R_\w+)\s+(\S+)')
TARGET = re.compile(r'([0-9a-f]+) <([^>+]+)(?:\+0x[0-9a-f]+)?>$')
TARGET0 = re.compile(r'(?:^|,)([0-9a-f]+)(?: <|$)')
CALLS = {'jal', 'bal', 'bgezal', 'bgezall', 'jalr'}
NODEST = {'sw', 'sd', 'sb', 'sh', 'swl', 'swr', 'sdl', 'sdr', 'sc', 'scd', 'swc1', 'sdc1', 'sdc2', 'swc2',
          'beq', 'bne', 'beqz', 'bnez', 'blez', 'bgtz', 'bltz', 'bgez', 'b', 'j', 'jr', 'nop', 'break',
          'beql', 'bnel', 'beqzl', 'bnezl', 'blezl', 'bgtzl', 'bltzl', 'bgezl', 'mtc0', 'mtc1', 'dmtc1',
          'dmtc0', 'sync', 'teq', 'tne', 'tge', 'tlt', 'mthi', 'mtlo', 'cache', 'pref', 'syscall', 'eret'}


def run_objdump(path):
    out = subprocess.run([objdump(), '-d', '-r', '-w', '-M', 'gpr-names=numeric', path],
                         capture_output=True, text=True, errors='replace').stdout
    funcs, cur, relocs = [], None, {}
    last = None
    for ln in out.split('\n'):
        inline = re.findall(r'\t([0-9a-f]+): (R_\w+)\t(\S+)', ln)
        for ra, rt, rn in inline:
            if rt != 'R_MIPS_NONE' and not rn.startswith('.'):
                relocs.setdefault(int(ra, 16), rn)
        if inline:
            ln = ln[:ln.index('\t' + inline[0][0] + ': ' + inline[0][1])]
        m = INSN.match(ln)
        if m:
            cur_insn = (int(m.group(1), 16), m.group(2), m.group(3) or '')
            if cur is None:
                cur = ['?', []]
                funcs.append(cur)
            cur[1].append(cur_insn)
            last = cur_insn[0]
            continue
        m = RELOC.match(ln)
        if m and m.group(2) != 'R_MIPS_NONE':
            relocs.setdefault(int(m.group(1), 16), m.group(3))
            continue
        m = FUNC.match(ln)
        if m:
            cur = [m.group(2), []]
            funcs.append(cur)
    return funcs, relocs


def reg(s):
    s = s.strip()
    m = re.fullmatch(r'\$(\d+)', s)
    return int(m.group(1)) if m else None


def target_name(op, addr_reloc, relocs):
    if addr_reloc in relocs:
        return relocs[addr_reloc]
    m = TARGET.search(op)
    return m.group(2) if m else None


def replay(funcs, relocs, want_calls, base_slots=(), stubs=None, got=None):
    """Walk each function; at each call to a name in want_calls yield
    (function, call name, {reg: (kind, value)}). Also yield direct accesses
    through registers loaded from a base slot as ('mem', ...)."""
    for fname, insns in funcs:
        # block boundaries: targets of branches inside the function
        starts = set()
        for a, op, args in insns:
            if (op[0] in 'bj' and op not in ('jr', 'jalr', 'jal', 'bal')) or op in ('bgezall',):
                m = re.search(r'([0-9a-f]+) <', args) or re.search(r',([0-9a-f]+)$', args) or re.fullmatch(r'([0-9a-f]+)', args.strip())
                if m:
                    starts.add(int(m.group(1), 16))
        regs = {}
        pending = None
        for i, (a, op, args) in enumerate(insns):
            if a in starts:
                regs = {}
            ops = [x.strip() for x in re.split(r',(?![^()]*\))', args)] if args else []
            if pending is not None:
                # delay slot of a recorded call: evaluate after it executes
                call_name, call_addr = pending
                pending = None
                _apply(regs, op, ops, base_slots)
                if call_name is not None:
                    yield fname, 'call', call_name, dict(regs), call_addr
                regs = {k: v for k, v in regs.items() if k >= 26 or k in (16, 17, 18, 19, 20, 21, 22, 23, 28, 29, 30)}
                continue
            if op in CALLS:
                nm = None
                if op == 'jalr':
                    r = reg(ops[-1]) if ops else None
                    v = regs.get(r)
                    if v and v[0] == 'got' and got:
                        nm = got(v[1])
                else:
                    tgt = ops[-1] if ops else ''
                    nm = relocs.get(a)
                    if nm is None:
                        m = TARGET.search(tgt)
                        nm = m.group(2) if m else None
                        if stubs and m is None:
                            mm = re.match(r'([0-9a-f]+)', tgt)
                            if mm and int(mm.group(1), 16) in stubs:
                                nm = stubs[int(mm.group(1), 16)]
                    if stubs and nm and nm.startswith('.MIPS.stubs'):
                        mm = re.match(r'([0-9a-f]+)', tgt)
                        nm = stubs.get(int(mm.group(1), 16), nm) if mm else nm
                if nm in want_calls:
                    pending = (nm, a)
                else:
                    # an unwanted call: its delay slot still runs, then clobber
                    pending = (None, a)
                continue
            _apply(regs, op, ops, base_slots)
            mem = _mem(regs, op, ops)
            if mem is not None:
                yield fname, 'mem', mem, None, a
        # (pending at end of a function is ignored)


def _apply(regs, op, ops, base_slots):
    def get(r):
        return regs.get(reg(r)) if reg(r) is not None else None

    def put(r, v):
        n = reg(r)
        if n is None:
            return
        if v is None:
            regs.pop(n, None)
        else:
            regs[n] = v
    if not ops or op in NODEST:
        return
    d = ops[0]
    if op == 'lui' and len(ops) == 2:
        try:
            put(d, ('c', (int(ops[1], 0) << 16) & 0xffffffffffffffff))
        except ValueError:
            put(d, None)
    elif op in ('li',) and len(ops) == 2:
        try:
            put(d, ('c', int(ops[1], 0)))
        except ValueError:
            put(d, None)
    elif op in ('ori', 'addiu', 'daddiu', 'addi', 'daddi') and len(ops) == 3:
        s = get(ops[1])
        try:
            imm = int(ops[2], 0)
        except ValueError:
            imm = None
        if reg(ops[1]) == 0 and imm is not None:
            put(d, ('c', imm))
        elif s and s[0] in ('c', 'b') and imm is not None:
            put(d, (s[0], (s[1] | imm) if op == 'ori' else s[1] + imm))
        else:
            put(d, None)
    elif op in ('move', 'or') and len(ops) >= 2 and (op == 'move' or ops[2:] == ['$0']):
        put(d, get(ops[1]))
    elif op in ('addu', 'daddu') and len(ops) == 3:
        a, b = get(ops[1]), get(ops[2])
        if a and b and a[0] == 'b' and b[0] == 'c':
            put(d, ('b', a[1] + b[1]))
        elif a and b and a[0] == 'c' and b[0] == 'b':
            put(d, ('b', a[1] + b[1]))
        elif a and b and a[0] == 'c' and b[0] == 'c':
            put(d, ('c', a[1] + b[1]))
        else:
            put(d, None)
    elif op in ('ld', 'lw', 'lwu') and len(ops) == 2:
        m = re.fullmatch(r'(-?\d+)\((\$\d+)\)', ops[1])
        if m and int(m.group(1)) in base_slots and op == 'ld':
            put(d, ('b', 0))
        elif m and m.group(2) == '$28':
            put(d, ('got', int(m.group(1))))
        else:
            put(d, None)
    else:
        put(d, None)


MEM_OPS = {'lb': ('r', 1), 'lbu': ('r', 1), 'lh': ('r', 2), 'lhu': ('r', 2), 'lw': ('r', 4), 'lwu': ('r', 4),
           'ld': ('r', 8), 'sb': ('w', 1), 'sh': ('w', 2), 'sw': ('w', 4), 'sd': ('w', 8)}


def _mem(regs, op, ops):
    if op not in MEM_OPS or len(ops) != 2:
        return None
    m = re.fullmatch(r'(-?\d+)\((\$\d+)\)', ops[1])
    if not m:
        return None
    b = regs.get(int(m.group(2)[1:]))
    if b and b[0] == 'b':
        return (b[1] + int(m.group(1)), MEM_OPS[op][0], MEM_OPS[op][1])
    return None


def stub_map(b, relocs_unused=None):
    """Map the address of each .MIPS.stubs entry to its dynamic symbol name."""
    sec = b.elf.get_section_by_name('.MIPS.stubs')
    dyn = b.elf.get_section_by_name('.dynsym')
    if sec is None or dyn is None:
        return {}
    d = sec.data()
    base = sec['sh_addr']
    names = [s.name for s in dyn.iter_symbols()]
    out = {}
    e = '>'
    for off in range(0, len(d) - 3, 4):
        w, = struct.unpack(e + 'I', d[off:off + 4])
        if (w >> 16) == 0x240e or (w >> 16) == 0x2418:  # li t8 / li t6 ... (addiu $24,$0,N)
            idx = w & 0xffff
            if (w >> 16) == 0x2418 and idx < len(names):
                for back in (12, 16, 8):
                    out[base + off - back] = names[idx]
    return out


def got_resolver(b):
    dyn = b.elf.get_section_by_name('.dynamic')
    dsym = b.elf.get_section_by_name('.dynsym')
    if dyn is None or dsym is None:
        return None
    tags = {}
    for t in dyn.iter_tags():
        tags[t.entry.d_tag] = t.entry.d_val
    if 'DT_PLTGOT' not in tags:
        return None
    gotno = tags.get('DT_MIPS_LOCAL_GOTNO')
    gotsym = tags.get('DT_MIPS_GOTSYM')
    if gotno is None or gotsym is None:
        return None
    gsz = 8 if b.elf.elfclass == 64 else 4
    names = [s.name for s in dsym.iter_symbols()]
    gotsec = None
    for s in b.elf.iter_sections():
        if s['sh_addr'] == tags['DT_PLTGOT']:
            gotsec = s
    if gotsec is None:
        return None

    def res(off):
        idx = (off + 0x7ff0) // gsz
        if idx >= gotno and gotsym + idx - gotno < len(names):
            return names[gotsym + idx - gotno]
        return None
    return res


# ---------------------------------------------------------------------------
# Inventories


def esc(s):
    return str(s).replace('\t', ' ').replace('\n', ' ')


def write_tsv(path, header, rows):
    with open(path, 'w') as f:
        f.write('\t'.join(header) + '\n')
        for r in rows:
            f.write('\t'.join(esc(x) for x in r) + '\n')


def load_binaries():
    out, seen, dup = [], {}, []
    for rel, real in scope_files():
        data = open(real, 'rb').read()
        if data[:4] == b'\x7fELF':
            digest = hashlib.sha1(data).hexdigest()
            if digest in seen:
                dup.append((rel, seen[digest]))
                continue
            seen[digest] = rel
            try:
                out.append(Binary(rel, '', data))
            except Exception as ex:
                print('skip %s: %s' % (rel, ex), file=sys.stderr)
        elif data[:8] == b'!<arch>\n':
            for name, body in unpack_ar(data):
                if body[:4] == b'\x7fELF':
                    digest = hashlib.sha1(body).hexdigest()
                    if digest in seen:
                        dup.append(('%s(%s)' % (rel, name), seen[digest]))
                        continue
                    seen[digest] = '%s(%s)' % (rel, name)
                    try:
                        out.append(Binary(rel, name, body))
                    except Exception as ex:
                        print('skip %s(%s): %s' % (rel, name, ex), file=sys.stderr)
    load_binaries.duplicates = dup
    return out


def inv_functions(bins, docs):
    rows = []
    for b in bins:
        for sec, addr, size, name in b.symbols():
            st, doc = docs.by_name(name)
            rows.append([b.name, b.abi, sec, '0x%x' % addr, size, name, st, doc])
    rows.sort(key=lambda r: (r[0], int(r[3], 16), r[5]))
    return ['binary', 'abi', 'section', 'address', 'size', 'name', 'status', 'doc'], rows


def kpm_tables(tmp):
    kpm = os.path.join(REPO, 'root/usr/gfx/KONA/bin/kpm')
    if not os.path.exists(kpm):
        return None
    subprocess.run([sys.executable, os.path.join(REPO, 'scripts/extract_kpm_tables.py'), kpm, tmp],
                   check=True, capture_output=True)
    return tmp


def read_tsv(path):
    rows = []
    for ln in open(path):
        if ln.startswith('#') or not ln.strip():
            continue
        rows.append(ln.rstrip('\n').split('\t'))
    h, rows = rows[0], rows[1:]
    return [dict(zip(h, r)) for r in rows]


def host_window(off):
    if off >= 0xc00000:
        return 'hip-alias'
    if off >= 0x800000:
        return 'hip'
    return 'xg'


def inv_mmio(bins, docs, tmp):
    acc = collections.defaultdict(lambda: {'dir': set(), 'src': set(), 'n': 0})
    unresolved = 0
    kernel = [b for b in bins if b.rel]
    for b in kernel:
        with tempfile.NamedTemporaryFile(suffix='.o', dir=tmp, delete=False) as f:
            f.write(b.data)
            path = f.name
        funcs, relocs = run_objdump(path)
        os.unlink(path)
        for fname, kind, what, regs, addr in replay(funcs, relocs, set(PIO_ACCESSORS), BASE_SLOTS):
            if kind == 'call':
                v = regs.get(4)
                if v and v[0] in ('b', 'c') and v[1] % 4 == 0 and v[1] < (1 << 32):
                    key = (host_window(v[1]), v[1])
                    e = acc[key]
                    e['dir'].add(PIO_ACCESSORS[what])
                    e['src'].add('%s:%s' % (b.name.split('/')[-1], fname))
                    e['n'] += 1
                else:
                    unresolved += 1
            elif kind == 'mem' and what[0] >= 0 and what[0] < (1 << 32):
                off, d, w = what
                d = {'r': 'read', 'w': 'write'}[d]
                if off % 4 == 0 and off < 0x1000000 and off not in BASE_SLOTS:
                    key = (host_window(off), off)
                    e = acc[key]
                    e['dir'].add(d)
                    e['src'].add('%s:%s' % (b.name.split('/')[-1], fname))
                    e['n'] += 1
    # the register tables the diagnostic tool carries
    if tmp and os.path.exists(os.path.join(tmp, 'hip_registers.tsv')):
        for r in read_tsv(os.path.join(tmp, 'hip_registers.tsv')):
            if r['kind'] == '1' and int(r['offset'], 16) != 0xdead:
                key = ('hip-register', int(r['offset'], 16))
                e = acc[key]
                e['src'].add('kpm:' + r['name'])
                e['n'] += 1
        for r in read_tsv(os.path.join(tmp, 'ge_registers.tsv')):
            if r['kind'] == '1':
                key = ('ge-register', int(r['address'], 16))
                e = acc[key]
                e['src'].add('kpm:' + r['name'])
                e['n'] += 1
        for r in read_tsv(os.path.join(tmp, 'raster_registers.tsv')):
            if r['kind'] == '1':
                key = ('raster-index', int(r['value'], 16))
                e = acc[key]
                e['src'].add('kpm:' + r['name'])
                e['n'] += 1
    rows = []
    for (win, off), e in sorted(acc.items()):
        names = [s.split(':', 1)[1] for s in e['src'] if s.startswith('kpm:')]
        vals = [off] if win != 'hip' else [off, off & 0xfff]
        if win == 'hip-alias':
            vals = [off, off & 0xfff]
        st, doc = docs.by_value(win, vals, names)
        srcs = sorted(e['src'])
        rows.append([win, '0x%x' % off, ','.join(sorted(e['dir'])) or '-', e['n'],
                     ';'.join(srcs[:6]) + (';+%d more' % (len(srcs) - 6) if len(srcs) > 6 else ''), st, doc])
    return (['window', 'offset', 'direction', 'sites', 'sources', 'status', 'doc'], rows, unresolved)


def inv_tokens(docs, tmp):
    toks = {}
    if tmp and os.path.exists(os.path.join(tmp, 'hp_commands.tsv')):
        for r in read_tsv(os.path.join(tmp, 'hp_commands.tsv')):
            t = int(r['token'], 16)
            toks.setdefault(t, {'kpm': '', 'hdr': '', 'src': set()})
            toks[t]['kpm'] = r['name']
            toks[t]['src'].add('kpm')
    for line in open(os.path.join(REPO, 'GE.h')):
        m = re.match(r'\s*(KONA_HP_\w+)\s*=\s*(0x[0-9a-f]+)', line)
        if m:
            t = int(m.group(2), 16)
            toks.setdefault(t, {'kpm': '', 'hdr': '', 'src': set()})
            toks[t]['hdr'] = m.group(1)
            toks[t]['src'].add('GE.h')
    icu = os.path.join(tmp, 'icu_map.tsv') if tmp else ''
    route = {}
    if icu and os.path.exists(icu):
        for ln in open(icu):
            if ln.startswith('#') or ln.startswith('token'):
                continue
            c = ln.rstrip('\n').split('\t')
            if c and re.fullmatch(r'0x[0-9a-f]+|\d+', c[0]):
                t = int(c[0], 0)
                toks.setdefault(t, {'kpm': '', 'hdr': '', 'src': set()})
                toks[t]['src'].add('firmware map')
                route[t] = c[1] if len(c) > 1 else ''
    rows = []
    for t in sorted(toks):
        e = toks[t]
        names = [n for n in (e['hdr'], e['kpm']) if n]
        if e['kpm'] and ('KONA_' + e['kpm']) not in names:
            names.append('KONA_' + e['kpm'])
        st, doc = docs.by_name(*names) if names else ('undocumented', '')
        rows.append(['0x%03x' % t, e['kpm'], e['hdr'], route.get(t, ''), ','.join(sorted(e['src'])), st, doc])
    return ['token', 'kpm_name', 'header_name', 'firmware_route', 'sources', 'status', 'doc'], rows


def dispatch_table(b, funcs, relocs):
    """Slots of the jump table that the named dispatcher function indexes."""
    sym = None
    for sn in ('.symtab',):
        sec = b.elf.get_section_by_name(sn)
        for s in sec.iter_symbols():
            if s.name == IOCTL_DISPATCHER and s['st_info']['type'] == 'STT_FUNC':
                sym = s
    if sym is None:
        return None
    lo, hi = sym['st_value'], sym['st_value'] + sym['st_size']
    text = b.elf.get_section_by_name('.text')
    # relocations of the read-only section give the jump table targets
    rod = b.elf.get_section_by_name('.rodata')
    rel = b.elf.get_section_by_name('.rel.rodata')
    if rod is None or rel is None:
        return None
    data = rod.data()
    entries = []
    for r in rel.iter_relocations():
        off = r['r_offset']
        val = struct.unpack('>Q', data[off:off + 8])[0] if b.elf.elfclass == 64 else struct.unpack('>I', data[off:off + 4])[0]
        entries.append((off, val))
    entries.sort()
    # contiguous runs of 8-byte entries whose values point into the function
    best, run = [], []
    for off, val in entries:
        if lo <= val < hi and (not run or off == run[-1][0] + 8):
            run.append((off, val))
        else:
            if len(run) > len(best):
                best = run
            run = [(off, val)] if lo <= val < hi else []
    if len(run) > len(best):
        best = run
    if not best:
        return None
    insns = [x for f in funcs if f[0] == IOCTL_DISPATCHER for x in f[1]]
    base = 0
    for a, op, args in insns:
        m = re.match(r'\$\d+,\$\d+,(-\d+)$', args or '')
        if op in ('addiu', 'daddiu') and m and abs(int(m.group(1))) >= 1000:
            base = -int(m.group(1))
            break
    return base, [v for _, v in best], insns, lo


def inv_ioctls(bins, docs, tmp):
    rows = []
    # kernel dispatcher
    for b in bins:
        if not b.rel or not b.elf.get_section_by_name('.rel.rodata'):
            continue
        sec = b.elf.get_section_by_name('.symtab')
        if not any(s.name == IOCTL_DISPATCHER for s in sec.iter_symbols()):
            continue
        with tempfile.NamedTemporaryFile(suffix='.o', dir=tmp, delete=False) as f:
            f.write(b.data)
            path = f.name
        funcs, relocs = run_objdump(path)
        os.unlink(path)
        r = dispatch_table(b, funcs, relocs)
        if not r:
            continue
        base, targets, insns, lo = r
        default = collections.Counter(targets).most_common(1)[0][0]
        order = sorted(set(targets))
        addr_idx = {a: i for i, (a, _, _) in enumerate(insns)}
        for slot, tgt in enumerate(targets):
            number = base + slot
            if tgt == default:
                continue
            # first call after the case label names the handler
            handler = ''
            i = addr_idx.get(tgt)
            j = bisect.bisect_right(order, tgt)
            stop = order[j] if j < len(order) else 1 << 62
            while i is not None and i < len(insns) and insns[i][0] < stop:
                a, op, args = insns[i]
                if op in ('jal', 'bal', 'jalr'):
                    handler = relocs.get(a, '') or (TARGET.search(args).group(2) if TARGET.search(args) else '')
                    break
                i += 1
            name = ''
            for ln in open(os.path.join(REPO, 'docs/kernel.md'), encoding='utf-8'):
                if re.match(r'\|\s*%d\s*\|' % number, ln):
                    m = re.search(r'`(\w+)`', ln)
                    name = m.group(1) if m else ''
                    break
            st, doc = _ioctl_status(docs, number, name)
            rows.append(['kernel', b.name, str(number), name, handler, ioctl_class(number), st, doc])
        # the table has `len(targets)` slots; default slots are not ioctls
    # user-side callers
    users = collections.defaultdict(lambda: collections.defaultdict(set))
    for b in bins:
        if b.rel:
            continue
        with tempfile.NamedTemporaryFile(suffix='.elf', dir=tmp, delete=False) as f:
            f.write(b.data)
            path = f.name
        funcs, relocs = run_objdump(path)
        os.unlink(path)
        stubs = stub_map(b)
        got = got_resolver(b)
        for fname, kind, what, regs, addr in replay(funcs, relocs, IOCTL_WRAPPERS, (), stubs, got):
            if kind != 'call':
                continue
            v = regs.get(5)
            if v and v[0] == 'c' and 0 < v[1] < (1 << 32):
                users[v[1]][b.name].add(fname)
    for cmd in sorted(users):
        where = users[cmd]
        names = sorted(where)
        st, doc = _ioctl_status(docs, cmd, '')
        rows.append(['user', ';'.join(n.split('/')[-1] for n in names[:4]) + (';+%d more' % (len(names) - 4) if len(names) > 4 else ''),
                     str(cmd), '', ';'.join(sorted({f for n in names for f in where[n]})[:3]), ioctl_class(cmd), st, doc])
    return ['side', 'binary', 'command', 'name', 'handler_or_caller', 'class', 'status', 'doc'], rows


def ioctl_class(n):
    """Which family a command number belongs to, by range."""
    if 10000 <= n < 10200:
        return 'kona private'
    if 1000 <= n < 2000:
        return 'graphics manager'
    if 100 <= n < 200:
        return 'graphics init'
    return 'other'


def _ioctl_status(docs, number, name):
    st, doc = docs.by_name(name) if name else ('undocumented', '')
    if st == 'documented':
        return st, doc
    if number < 1000:
        return st, doc
    for f, where in docs.dec.get(number, []) + docs.hex.get(number, []):
        if f.endswith('.md') and f != 'docs/coverage.md':
            return 'documented', where
    for f, where in docs.dec.get(number, []) + docs.hex.get(number, []):
        return 'named-only', where
    return st, doc


def inv_ucode(docs, tmp):
    rows = []
    # ARM firmware symbols and the display generator's command table
    arm = os.path.join(REPO, 'root/usr/gfx/ucode/KONA/arm1.u')
    if os.path.exists(arm):
        out = tempfile.mkdtemp(dir=tmp)
        subprocess.run([sys.executable, os.path.join(REPO, 'scripts/arm1_disasm.py'), arm, out],
                       check=True, capture_output=True)
        for ln in open(os.path.join(out, 'arm1_symbols.tsv')):
            if ln.startswith('#') or ln.startswith('address'):
                continue
            a, flags, name = ln.rstrip('\n').split('\t')
            if name.startswith(('Image$$', 'C$$', 'Load$$')) or '$$' in name:
                kind = 'linker region'
            else:
                kind = 'symbol (flags %s)' % flags
            st, doc = docs.by_name(name)
            rows.append(['arm1.u', kind, a, name, '', st, doc])
        if os.path.exists(os.path.join(REPO, 'ucode/dg_dispatch.tsv')):
            for ln in open(os.path.join(REPO, 'ucode/dg_dispatch.tsv')):
                if ln.startswith('#') or ln.startswith('command'):
                    continue
                c = ln.rstrip('\n').split('\t')
                if len(c) >= 3:
                    st, doc = docs.by_name(c[2])
                    if st != 'documented':
                        st2, doc2 = _dg_cmd(docs, c[0])
                        if st2 == 'documented':
                            st, doc = st2, doc2
                    rows.append(['arm1.u', 'display command', c[0], c[2], 'words=%s' % c[1], st, doc])
    # geometry engine labels and the interface table
    gsym = os.path.join(REPO, 'root/usr/gfx/ucode/KONA/ge_symbols')
    labels = {}
    if os.path.exists(gsym):
        for ln in open(gsym):
            p = ln.split()
            if len(p) == 2:
                labels.setdefault(int(p[1], 16), []).append(p[0])
                st, doc = docs.by_name(p[0])
                rows.append(['ge.u', 'label', p[1], p[0], '', st, doc])
    gif = os.path.join(REPO, 'root/usr/gfx/ucode/KONA/geif.u')
    if os.path.exists(gif):
        d = open(gif, 'rb').read()
        for k in range(len(d) // 2):
            v = struct.unpack('>H', d[2 * k:2 * k + 2])[0]
            name = labels.get(v, [''])[0]
            if k < 512:
                st, doc = _slot_status(docs, k, name)
                rows.append(['geif.u', 'dispatch slot', '%d' % k, name, 'handler 0x%x' % v, st, doc])
    return ['program', 'kind', 'address_or_index', 'name', 'detail', 'status', 'doc'], rows


def _dg_cmd(docs, cmd):
    return 'undocumented', ''


def _slot_status(docs, k, name):
    st, doc = docs.by_name(name) if name else ('undocumented', '')
    return st, doc


# ---------------------------------------------------------------------------


def summarize(name, rows, col):
    n = len(rows)
    c = collections.Counter(r[col] for r in rows)
    return name, n, c['documented'], c['named-only'], c['undocumented']


def update_coverage(summary, scope_n, path):
    block = ['<!-- inventory:start (generated by scripts/inventory.py; do not edit) -->',
             '## Coverage measured from the binaries',
             '',
             'Counts come from `scripts/inventory.py` run over %d files in scope; each row of the tables in '
             '[docs/inventory/](inventory/README.md) is one item with a status. "Documented" means a doc or '
             'header explains the item; "named-only" means it appears as a bare name or value; '
             '"undocumented" means nothing mentions it.' % scope_n,
             '',
             '| Inventory | Items | Documented | Named only | Undocumented |',
             '|---|---:|---:|---:|---:|']
    for name, n, d, no, u in summary:
        pct = lambda x: '%d (%.1f%%)' % (x, 100.0 * x / n) if n else '0'
        block.append('| %s | %d | %s | %s | %s |' % (name, n, pct(d), pct(no), pct(u)))
    block += ['', 'The rows below are the areas view: one row per area of each block, written by hand.',
              '<!-- inventory:end -->']
    text = open(path).read()
    new = '\n'.join(block)
    if '<!-- inventory:start' in text:
        text = re.sub(r'<!-- inventory:start.*?<!-- inventory:end -->', lambda m: new, text, flags=re.S)
    else:
        # place it after the first heading and intro paragraph
        i = text.index('\n## Status key')
        text = text[:i] + '\n' + new + '\n' + text[i:]
    open(path, 'w').write(text)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', default=os.path.join(REPO, 'docs/inventory'))
    ap.add_argument('--no-coverage', action='store_true')
    a = ap.parse_args()
    os.makedirs(a.out, exist_ok=True)
    tmp = tempfile.mkdtemp(prefix='inventory-')
    try:
        bins = load_binaries()
        print('%d ELF images in scope; %d byte-identical copies skipped' % (len(bins), len(load_binaries.duplicates)), file=sys.stderr)
        docs = DocIndex()
        kt = kpm_tables(tmp)
        # the firmware's token map comes from the ARM image
        arm = os.path.join(REPO, 'root/usr/gfx/ucode/KONA/arm1.u')
        if os.path.exists(arm):
            subprocess.run([sys.executable, os.path.join(REPO, 'scripts/arm1_disasm.py'), arm, tmp],
                           check=True, capture_output=True)
        summary = []
        h, rows = inv_functions(bins, docs)
        write_tsv(os.path.join(a.out, 'functions.tsv'), h, rows)
        summary.append(summarize('Functions (every binary)', rows, 6))
        best = {}
        rank = {'documented': 2, 'named-only': 1, 'undocumented': 0}
        for r in rows:
            if r[5] not in best or rank[r[6]] > rank[best[r[5]][6]]:
                best[r[5]] = r
        summary.append(summarize('Functions (distinct names)', list(best.values()), 6))
        h, rows, unresolved = inv_mmio(bins, docs, tmp)
        write_tsv(os.path.join(a.out, 'mmio.tsv'), h, rows)
        summary.append(summarize('MMIO offsets', rows, 5))
        print('mmio: %d accessor calls with an offset that could not be recovered' % unresolved, file=sys.stderr)
        h, rows = inv_tokens(docs, tmp)
        write_tsv(os.path.join(a.out, 'tokens.tsv'), h, rows)
        summary.append(summarize('Command tokens', rows, 5))
        h, rows = inv_ioctls(bins, docs, tmp)
        write_tsv(os.path.join(a.out, 'ioctls.tsv'), h, rows)
        summary.append(summarize('Ioctls', rows, 6))
        h, rows = inv_ucode(docs, tmp)
        write_tsv(os.path.join(a.out, 'ucode.tsv'), h, rows)
        summary.append(summarize('Microcode routines and entry points', rows, 5))
        for s in summary:
            print('%-40s %6d  documented %6d  named-only %6d  undocumented %6d' % s, file=sys.stderr)
        if not a.no_coverage:
            update_coverage(summary, len(scope_files()), os.path.join(REPO, 'docs/coverage.md'))
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


if __name__ == '__main__':
    main()
