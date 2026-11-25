#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.9"
# dependencies = ["unicorn==2.1.4", "pyelftools"]
# ///
"""Print the X_LOADGC and X_PIX_SETUP words the X server module sends for a visual.

Executes the shipped code (6.5.30m usr/lib/X11/dyDDX/kona*.so) under Unicorn: `kon_loadPixmapGC`
(the image write, copy and read loader) in all four modules, and with --gc `kon_parseGC` (the GC
validate path, kona.so only) to show the words and colour packing a solid fill carries; for a
single-buffered window both paths give the same format words. Nothing is
stubbed but the bzero call; the module's own data tables are read from the file. The IP27 and IP35
modules (konal, konad) and konas put the token word in the FIFO stream; kona.so stores to
FIFO + 32 x token. Only the payload words are printed.

usage: x_state_words.py [--root root] [--module kona|konal|konad|konas] [--kind 0|1|2]
                        [--planemask HEX] [--width N --height N --bitoffset N] FLAGS DEPTH
       x_state_words.py --gc FLAGS DEPTH FOREGROUND [--background N] [--planemask HEX]
FLAGS is the visual's flag word (word +8 of its 20-byte record in konavis.so, the window
private's +20): 0x01020001 is the 8-bit main plane, 0x20002001 the 24-bit RGB main plane.
KIND is the transfer kind: 0 image write, 1 screen copy, 2 image read.
"""
import argparse
import struct
import sys

from elftools.elf.elffile import ELFFile
from unicorn import (Uc, UC_ARCH_MIPS, UC_MODE_MIPS64, UC_MODE_BIG_ENDIAN, UC_HOOK_MEM_WRITE,
                     UcError)
from unicorn.mips_const import UC_MIPS_REG_SP, UC_MIPS_REG_PC

# Function entry points (file offsets) in the 6.5.30 overlay-media builds of each module.
LOADPIXMAP = {'kona': 0x101690, 'konal': 0x10b0e0, 'konad': 0x10b100, 'konas': 0x10b0e0}
PARSEGC = {'kona': 0x137a80}
GP = {'kona': 0x593bd8}
GC_WORDS = ['fg_h', 'fg_l', 'bg_h', 'bg_l', 'wmask0', 'wmask1', 'cfg', 'op', 'addr', 'bl',
            'ifmt', 'colfmt', 'pixfmt']
SETUP_WORDS = ['kind', 'src', 'dst', 'shift', 'width', 'height', 'bitoffset']
FIFO, STACK, DRAW, GCMEM, RET = 0x20000000, 0x7f000000, 0x30000000, 0x30001000, 0x40000000


def reg(n):
    from unicorn import mips_const
    return getattr(mips_const, 'UC_MIPS_REG_%d' % n)


def load(path, entry_file_offset):
    elf = ELFFile(open(path, 'rb'))
    data = open(path, 'rb').read()
    mu = Uc(UC_ARCH_MIPS, UC_MODE_MIPS64 | UC_MODE_BIG_ENDIAN)
    entry = None
    for seg in elf.iter_segments():
        if seg['p_type'] != 'PT_LOAD':
            continue
        lo = seg['p_vaddr'] & ~0xfff
        hi = (seg['p_vaddr'] + seg['p_memsz'] + 0xfff) & ~0xfff
        try:
            mu.mem_map(lo, hi - lo)
        except Exception:
            pass
        mu.mem_write(seg['p_vaddr'], data[seg['p_offset']:seg['p_offset'] + seg['p_filesz']])
        if seg['p_offset'] <= entry_file_offset < seg['p_offset'] + seg['p_filesz']:
            entry = seg['p_vaddr'] + entry_file_offset - seg['p_offset']
    for base, size in ((STACK, 0x100000), (FIFO, 0x40000), (DRAW, 0x5000), (RET, 0x1000)):
        mu.mem_map(base, size)
    return mu, entry


def start(mu, entry, args, stack_args):
    sp = STACK + 0xf0000
    mu.reg_write(UC_MIPS_REG_SP, sp)
    for i, a in enumerate(args):
        mu.reg_write(reg(4 + i), a & 0xffffffff)
    for i, a in enumerate(stack_args):     # n32: 8-byte slots, the 32-bit value in the low word
        mu.mem_write(sp + 8 * i + 4, struct.pack('>I', a & 0xffffffff))
    mu.reg_write(reg(25), entry)
    mu.reg_write(reg(31), RET)
    try:
        mu.emu_start(entry, RET, count=200000)
    except UcError as e:
        sys.exit('emulation stopped at %#x: %s' % (mu.reg_read(UC_MIPS_REG_PC), e))


def pixmap_words(root, module, flags, depth, kind, planemask, width, height, bitoffset, rop=3,
                 buffer=1):
    mu, entry = load('%s/usr/lib/X11/dyDDX/%s.so' % (root, module), LOADPIXMAP[module])
    mu.mem_write(DRAW, bytes([0, 0, depth, depth]))      # DrawableRec: type, class, depth, bpp
    stores = []
    mu.hook_add(UC_HOOK_MEM_WRITE, lambda uc, a, addr, sz, v, ud:
                stores.append((addr - FIFO, v & 0xffffffff)) if FIFO <= addr < FIFO + 0x40000
                else None)
    # kon_loadPixmapGC(rop, planemask, kind, flags, buffer, 1, width, height, bitoffset, drawable,
    # fifo): the arguments konDrawImage passes.
    start(mu, entry, [rop, planemask, kind, flags, buffer, 1, width, height],
          [bitoffset, DRAW, FIFO])
    words = [v for _, v in stores]
    if module != 'kona':        # token word first
        assert words[0] == 0x129 and words[14] == 0x136, words
        words = words[1:14] + words[15:]
    return words[:13], words[13:20]


def gc_private(root, flags, depth, foreground, background, planemask, alu=3):
    mu, entry = load('%s/usr/lib/X11/dyDDX/kona.so' % root, PARSEGC['kona'])
    mu.mem_write(DRAW, bytes([0, 0, depth, depth]))
    mu.mem_write(RET + 0x100, bytes.fromhex('03e0000800000000'))       # jr ra
    mu.mem_write(GP['kona'] - 28468, struct.pack('>I', RET + 0x100))   # the bzero GOT slot
    priv = DRAW + 0x2000
    gc = bytearray(128)
    gc[5] = alu
    struct.pack_into('>III', gc, 20, planemask, foreground, background)
    struct.pack_into('>I', gc, 76, GCMEM + 0x800)      # devPrivates
    mu.mem_write(GCMEM, bytes(gc))
    mu.mem_write(GCMEM + 0x800, struct.pack('>I', priv))
    # kon_parseGC(gc, flags, draw buffer, read buffer, drawable); 1 and 1 for a plain window
    start(mu, entry, [GCMEM, flags, 1, 1, DRAW], [])
    return struct.unpack('>22I', bytes(mu.mem_read(priv, 88)))


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('--root', default='root')
    ap.add_argument('--module', default='kona', choices=sorted(LOADPIXMAP))
    ap.add_argument('--kind', type=int, default=0)
    ap.add_argument('--planemask', type=lambda s: int(s, 16), default=0xffffffff)
    ap.add_argument('--width', type=int, default=16)
    ap.add_argument('--height', type=int, default=16)
    ap.add_argument('--bitoffset', type=int, default=0)
    ap.add_argument('--gc', action='store_true', help='run kon_parseGC instead')
    ap.add_argument('--background', type=lambda s: int(s, 0), default=0)
    ap.add_argument('flags', type=lambda s: int(s, 0))
    ap.add_argument('depth', type=int)
    ap.add_argument('foreground', nargs='?', type=lambda s: int(s, 0), default=0)
    a = ap.parse_args()
    if a.gc:
        p = gc_private(a.root, a.flags, a.depth, a.foreground, a.background, a.planemask)
        # kon_loadGC sends private words 13..: +52 +56 +60 +64 +20 +24 +4 +8 +12 +16 +0 +28 +32
        order = [13, 14, 15, 16, 5, 6, 1, 2, 3, 4, 0, 7, 8]
        for name, i in zip(GC_WORDS, order):
            print('%-7s %#010x' % (name, p[i]))
        return
    gc, setup = pixmap_words(a.root, a.module, a.flags, a.depth, a.kind, a.planemask, a.width,
                             a.height, a.bitoffset)
    print('X_LOADGC (0x129)')
    for n, v in zip(GC_WORDS, gc):
        print('  %-8s %#010x' % (n, v))
    print('X_PIX_SETUP (0x136)')
    for n, v in zip(SETUP_WORDS, setup):
        print('  %-8s %#010x' % (n, v))


if __name__ == '__main__':
    main()
