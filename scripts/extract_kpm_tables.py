"""Extract the command-name and raster-register tables from the kpm tool.

Usage: extract_kpm_tables.py [KPM] [OUTDIR]
       defaults: diags/KONA_bin/kpm diags/kpm

kpm (IRIX 6.5.30, /usr/gfx/KONA/bin/kpm, N32 executable) carries two
decode tables in its .data section:

  - an array of string pointers naming every host command token, indexed by
    token value (located by searching for a pointer to the string "HP_DATA");
  - an array of 16-byte records {kind, name, value, width} describing the
    raster-side registers: kind 1 is a register (value = register index),
    kind 2 a field of the preceding register (value = low bit, width = bits),
    kind 3 a named value of the preceding field (located by searching for the
    record whose name is "BEF_DUMP").

Both are written as TSV with the virtual address of each entry, so every
row can be cited back to the binary.
"""
import os
import struct
import sys

from elftools.elf.elffile import ELFFile

kpm = sys.argv[1] if len(sys.argv) > 1 else 'diags/KONA_bin/kpm'
out = sys.argv[2] if len(sys.argv) > 2 else 'diags/kpm'

with open(kpm, 'rb') as fp:
    elf = ELFFile(fp)
    segs = [(s['p_vaddr'], s['p_offset'], s['p_filesz'])
            for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']
    fp.seek(0)
    data = fp.read()


def v2o(v):
    for va, off, sz in segs:
        if va <= v < va + sz:
            return off + v - va
    return None


def o2v(o):
    for va, off, sz in segs:
        if off <= o < off + sz:
            return va + o - off
    return None


def cstr(v, limit=64):
    o = v2o(v)
    if o is None:
        return None
    end = data.find(b'\0', o)
    if end < 0 or end == o or end - o > limit:
        return None
    s = data[o:end]
    if not all(32 <= c < 127 for c in s):
        return None
    return s.decode('ascii')


def word(o):
    return struct.unpack('>I', data[o:o + 4])[0]


def find_string(s):
    o = data.find(s.encode() + b'\0')
    while o >= 0 and data[o - 1] != 0:
        o = data.find(s.encode() + b'\0', o + 1)
    return o2v(o)


def find_pointer(v):
    return [o for o in range(0, len(data) - 4, 4) if word(o) == v]


os.makedirs(out, exist_ok=True)

# Command-name table: consecutive string pointers starting at "HP_DATA".
hp_data = find_string('HP_DATA')
start = find_pointer(hp_data)[0]
rows = []
o = start
while cstr(word(o)) is not None:
    rows.append((o2v(o), (o - start) // 4, cstr(word(o))))
    o += 4
with open(os.path.join(out, 'hp_commands.tsv'), 'w') as fp:
    fp.write('# kpm command-name table, %d entries from vaddr 0x%08x\n'
             % (len(rows), o2v(start)))
    fp.write('vaddr\ttoken\tname\n')
    for va, idx, name in rows:
        fp.write('0x%08x\t0x%03x\t%s\n' % (va, idx, name))

# Raster register descriptor table: 16-byte records around "BEF_DUMP".
bef = find_string('BEF_DUMP')
anchor = [p for p in find_pointer(bef) if word(p - 4) == 1][0] - 4


def is_rec(o):
    return word(o) in (1, 2, 3) and cstr(word(o + 4)) is not None


s = anchor
while is_rec(s - 16):
    s -= 16
e = anchor
while is_rec(e):
    e += 16
with open(os.path.join(out, 'raster_registers.tsv'), 'w') as fp:
    fp.write('# kpm raster register table, %d records from vaddr 0x%08x\n'
             % ((e - s) // 16, o2v(s)))
    fp.write('# kind 1 = register (value = index); 2 = field (value = low bit,'
             ' width = bits); 3 = named field value\n')
    fp.write('vaddr\tkind\tname\tvalue\twidth\n')
    for o in range(s, e, 16):
        kind, name, val, width = struct.unpack('>4I', data[o:o + 16])
        fp.write('0x%08x\t%d\t%s\t0x%x\t%d\n'
                 % (o2v(o), kind, cstr(name), val, width))

print('hp_commands: %d, raster records: %d' % (len(rows), (e - s) // 16))
