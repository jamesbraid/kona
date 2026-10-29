"""List every register the kernel driver reads or writes through gfx_pio_*_32.

Usage: kernel_registers.py [DISASM_DIR] > kona_kernel/registers.tsv
       default DISASM_DIR: kona_kernel/disasm

The driver reaches the pipe's registers with one pair of helpers,
gfx_pio_read_32(addr) and gfx_pio_write_32(addr, value), where addr is the
pipe's register base (a per-pipe state word) plus a constant built with
lui/ori. This scans each function for those calls, recovers the constant
from the instructions just before the call and prints one row per
(member, function, offset, direction, count). A call whose offset cannot be
recovered from the preceding instructions prints offset "?" (these are the
command-word writes and the writes whose address comes from a data
structure). Offsets of 0x800000 and above get the HH_ name HIP.h gives
(the name is looked up by the low 12 bits; HIP1 and HIP2 may name the same
offset differently, and both are listed). Small offsets are registers of the
pipe's Xtalk widget (docs/xg.md); window labels are the names HIP.h and
docs/xg.md use.
"""
import collections
import os
import re
import sys

root = sys.argv[1] if len(sys.argv) > 1 else 'kona_kernel/disasm'
names = {}
for line in open('HIP.h'):
    m = re.match(r'#define KONA_(?:HIP[12]_)?(HH_\w+)\s+(0x[0-9a-f]+)', line)
    if m:
        names.setdefault(int(m.group(2), 16), []).append(m.group(1))

lui = re.compile(r'\s*lui\s+(\$\w+),(0x[0-9a-f]+|\d+)')
ori = re.compile(r'\s*(?:ori|addiu|daddiu)\s+(\$\w+),(\$\w+),(0x[0-9a-f]+|-?\d+)')
li = re.compile(r'\s*li\s+(\$\w+),(0x[0-9a-f]+|-?\d+)')
call = re.compile(r'\s*jal\s+gfx_pio_(read|write)_32')
base = re.compile(r'\s*ld\s+(\$\w+),2376\(')
add = re.compile(r'\s*d?addu\s+(\$\w+),(\$\w+),(\$\w+)')
mov = re.compile(r'\s*move\s+(\$\w+),(\$\w+)')
glabel = re.compile(r'glabel (\w+)')

rows = collections.Counter()
for member in sorted(os.listdir(root)):
    p = os.path.join(root, member, member + '.text.s')
    if not os.path.exists(p):
        continue
    func = '?'
    lines = open(p).read().split('\n')
    for i, ln in enumerate(lines):
        g = glabel.match(ln)
        if g:
            func = g.group(1)
        c = call.match(ln)
        if not c:
            continue
        regs = {}
        # walk back to the start of the straight-line block and replay
        j = i - 1
        while j > 0 and i - j < 16 and not lines[j].startswith('.L') and not glabel.match(lines[j]):
            j -= 1
        for k in range(j, i + 2):
            s = lines[k]
            m = lui.match(s)
            if m:
                regs[m.group(1)] = int(m.group(2), 0) << 16
                continue
            m = base.match(s)
            if m:
                regs[m.group(1)] = 0   # the pipe's register base, state offset 2376 (0x948)
                continue
            m = ori.match(s)
            if m and m.group(2) in regs:
                v = int(m.group(3), 0)
                regs[m.group(1)] = regs[m.group(2)] | v if 'ori' in s else regs[m.group(2)] + v
                continue
            m = li.match(s)
            if m:
                regs[m.group(1)] = int(m.group(2), 0)
                continue
            m = add.match(s)
            if m:
                a, b = regs.get(m.group(2)), regs.get(m.group(3))
                if a is not None and b is not None:
                    regs[m.group(1)] = a + b
                else:
                    regs.pop(m.group(1), None)
                continue
            m = mov.match(s)
            if m and m.group(2) in regs:
                regs[m.group(1)] = regs[m.group(2)]
        # the address argument is $a0 at the call (delay slot included)
        off = regs.get('$a0')
        if off is not None and off % 4:
            off = None   # a 32-bit register offset is a multiple of 4
        key = (member, func, '?' if off is None else '0x%x' % off, c.group(1))
        rows[key] += 1

print('member\tfunction\toffset\tdirection\tcalls\twindow\tname')
for (member, func, off, d), n in sorted(rows.items()):
    nm = ''
    if off != '?':
        v = int(off, 16)
        nm = ','.join(sorted(set(names.get(v & 0xfff, []))) if v >= 0x800000 else [])
        win = ('host-interface window' if v >= 0x800000 and v < 0xc00000 else
               'host-interface alias 0xc00000' if v >= 0xc00000 else 'pipe base offset (XG widget registers, docs/xg.md)')
    else:
        win = 'computed address (command port, mapping or pipe-space address)'
    print('\t'.join([member, func, off, d, str(n), win, nm]))
