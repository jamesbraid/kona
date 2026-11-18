#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.9"
# dependencies = ["unicorn==2.1.4", "pyelftools"]
# ///
"""Run irsaudit's raster-bus play routines under Unicorn and print the words they send.

Executes the shipped code (6.5.30m usr/diags/IR/bin/irsaudit) from the test function's
entry with libc, PIO, JTAG and message calls stubbed, logs every fcGfxWrite32 word, and
decodes the tokens back into "mode word" lines in the vector-file format:
token 5 or 9 is one mode-1 word, tokens 6, 7, 8, 10 and 11 are a pair of words.

usage: raster_play_emu.py tbusfile [--file NAME] [--cleartex --texcode N] [--ktype T]
       raster_play_emu.py aaspoke [--file aaspoke]
       raster_play_emu.py 0x100d1898 [--rng bsd|glibc]     (rm_crc_reg)
--ktype is the board type word KONAINFO points at (2 adds one register write).
The emulated random() for rm_crc_reg is a guess: IRIX's generator is not read.
"""
import argparse, struct, subprocess, sys
from unicorn import Uc, UC_ARCH_MIPS, UC_MODE_MIPS64, UC_MODE_BIG_ENDIAN, UC_HOOK_CODE
from unicorn.mips_const import *
from elftools.elf.elffile import ELFFile

ap = argparse.ArgumentParser()
ap.add_argument('routine')
ap.add_argument('--binary', default='root/usr/diags/IR/bin/irsaudit')
ap.add_argument('--data', default='root/usr/diags/IR/data')
ap.add_argument('--ktype', type=int, default=6)
ap.add_argument('--file')
ap.add_argument('--cleartex', action='store_true')
ap.add_argument('--texcode', type=int, default=0)
ap.add_argument('--rng', default='bsd')
a = ap.parse_args()

e = ELFFile(open(a.binary, 'rb'))
sym = {s.name: s['st_value'] for s in e.get_section_by_name('.dynsym').iter_symbols() if s['st_value']}
got = e.get_section_by_name('.got')
GOTA = got['sh_addr']; GP = GOTA + 0x7ff0
dyn = {t.entry.d_tag: t.entry.d_val for t in e.get_section_by_name('.dynamic').iter_tags()}
LG, GS = dyn['DT_MIPS_LOCAL_GOTNO'], dyn['DT_MIPS_GOTSYM']
DS = list(e.get_section_by_name('.dynsym').iter_symbols())

uc = Uc(UC_ARCH_MIPS, UC_MODE_MIPS64 + UC_MODE_BIG_ENDIAN)
uc.mem_map(0x10000000, 0x800000)
for seg in e.iter_segments():
    if seg['p_type'] == 'PT_LOAD': uc.mem_write(seg['p_vaddr'], seg.data())
STUB, HEAP, STACK = 0x0e000000, 0x20000000, 0x40000000
uc.mem_map(STUB, 0x100000); uc.mem_map(HEAP, 0x10000000); uc.mem_map(STACK - 0x100000, 0x100000)
heap = [HEAP]
def alloc(n):
    p = heap[0]; heap[0] += (n + 15) & ~15; uc.mem_write(p, b'\0' * n); return p

# Imported GOT entries point at stubs, handled by name.
stubname = {}
for i in range(LG, got['sh_size'] // 4):
    nm = DS[GS + i - LG].name if GS + i - LG < len(DS) else None
    if nm and nm not in sym:
        stubname[STUB + 8 * i] = nm
        uc.mem_write(GOTA + 4 * i, struct.pack('>I', STUB + 8 * i))

R = uc.reg_read
def W(r, v): uc.reg_write(r, v & 0xffffffffffffffff)
def ret(v=0): W(UC_MIPS_REG_V0, v); W(UC_MIPS_REG_PC, R(UC_MIPS_REG_RA))

class Random:
    """BSD additive generator (degree 31); 'bsd' and 'glibc' differ only in seeding."""
    def seed(s, x):
        r = [x & 0xffffffff]
        for _ in range(30):
            if a.rng == 'glibc':
                w = r[-1] - (1 << 32) if r[-1] & 0x80000000 else r[-1]
                hi, lo = int(w / 127773), (abs(w) % 127773) * (1 if w >= 0 else -1)
                w = 16807 * lo - 2836 * hi
                r.append((w + 2147483647 if w < 0 else w) & 0xffffffff)
            else:
                r.append((1103515245 * r[-1] + 12345) & 0xffffffff)
        s.r, s.f, s.b = r, 3, 0
        for _ in range(310): s.next()
    def next(s):
        s.r[s.f] = (s.r[s.f] + s.r[s.b]) & 0xffffffff
        v = s.r[s.f] >> 1
        s.f, s.b = (s.f + 1) % 31, (s.b + 1) % 31
        return v
rng = Random()

fifo = []
def libc(name):
    a0, a1 = R(UC_MIPS_REG_A0) & 0xffffffff, R(UC_MIPS_REG_A1) & 0xffffffff
    if name == 'calloc': ret(alloc(a0 * a1))
    elif name == 'malloc': ret(alloc(a0))
    elif name == 'bzero': uc.mem_write(a0, b'\0' * a1); ret()
    elif name == 'srandom': rng.seed(a0); ret()
    elif name == 'random': ret(rng.next())
    elif name in ('free', 'sleep', 'sginap', 'printf'): ret()
    else: sys.exit('unhandled libc call ' + name)

internal = {'fcGfxWrite32': lambda: (fifo.append(R(UC_MIPS_REG_A0) & 0xffffffff), ret())}
for n in sym:
    if n.startswith(('kt_output_', 'jt_')) or n in ('fcGfxFlush', 'fcPioRead32', 'fcPioWrite32',
                                                   'kt_code_result', 'getSubField', 'setSubField'):
        internal[n] = (lambda v: lambda: ret(v))(1 if n == 'jt_select_chain' else 0)
haddr = {sym[n]: f for n, f in internal.items()}
def hook(uc, addr, size, ud):
    if addr in stubname: libc(stubname[addr])
    elif addr in haddr: haddr[addr]()
uc.hook_add(UC_HOOK_CODE, hook, begin=STUB, end=STUB + 0xfffff)
for p in haddr: uc.hook_add(UC_HOOK_CODE, hook, begin=p, end=p)

def u32(p): return struct.unpack('>I', uc.mem_read(p, 4))[0]
def call(fn, arg):
    end = STUB + 0xffff0
    W(UC_MIPS_REG_SP, STACK - 0x1000); W(UC_MIPS_REG_A0, arg)
    W(UC_MIPS_REG_T9, fn); W(UC_MIPS_REG_RA, end); W(UC_MIPS_REG_GP, GP)
    uc.emu_start(fn, end)

def lines(name):
    if name == 'aaspoke':
        txt = open(a.data + '/aaspoke.tbus').read().split('\n')
    else:
        txt, cur = [], None
        for ln in subprocess.run(['zcat', a.data + '/tbusdata.Z'], capture_output=True,
                                 check=True).stdout.decode().split('\n'):
            if ln.startswith('#start '): cur = ln.split()[1].replace('.tbus', '')
            elif ln.startswith('#end'): cur = None
            elif cur == name: txt.append(ln)
    return [(int(p[1], 16), int(p[2], 16)) for p in map(str.split, txt) if len(p) == 3 and p[0][0] != '#']

def load(state, ents):
    buf = alloc(16 * len(ents) + 16)
    for i, (m, w) in enumerate(ents): uc.mem_write(buf + 16 * i, struct.pack('>iiQ', m, 0, w))
    uc.mem_write(state, struct.pack('>ii', buf, len(ents)))

kinfo = alloc(0x2000); uc.mem_write(kinfo, struct.pack('>i', a.ktype))
uc.mem_write(sym['KONAINFO'], struct.pack('>I', kinfo))
arg = alloc(0x2000)                                   # the per-test board record
uc.mem_write(arg + 0x444, struct.pack('>i', a.texcode))
if a.routine == 'tbusfile':                           # play routine 0x1010ae8c, state at GOT -29564
    st = u32(GP - 29564)
    load(st, lines(a.file) if a.file else [])
    uc.mem_write(st + 32, struct.pack('>i', int(a.cleartex)))
    call(0x1010ae8c, arg)
elif a.routine == 'aaspoke':                          # state at GOT -29744
    load(u32(GP - 29744), lines('aaspoke') if a.file else [])
    call(sym['aaspoke'], arg)
else:
    uc.mem_write(arg + 0x16c, struct.pack('>i', 1))   # one raster board
    call(int(a.routine, 16), arg)

PAIR = {6: (2, 1), 7: (2, 3), 8: (3, 2), 10: (3, 1), 11: (3, 3)}
i, out = 0, sys.stdout
while i < len(fifo):
    t = fifo[i]
    if t in (5, 9):
        out.write('1 %016x\n' % (fifo[i + 1] << 32 | fifo[i + 2])); i += 3
    elif t in PAIR:
        out.write('%d %016x\n%d %016x\n' % (PAIR[t][0], fifo[i + 1] << 32 | fifo[i + 2],
                                            PAIR[t][1], fifo[i + 3] << 32 | fifo[i + 4])); i += 5
    else:
        sys.exit('unknown token %#x at word %d' % (t, i))
