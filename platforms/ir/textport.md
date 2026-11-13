# Textport: the command port as the IO6 PROM speaks it

The textport is the console path the pipe uses before any X server or GL client
runs. Its command port is the flow-controlled window offset `0xc10000`
(`XG_FC_GFX`, see [xg.md](../../devices/xg/README.md)). Two callers write to it: the kernel driver,
whose routines are in [kernel.md](../../software/kernel/kernel.md#textport-drawing-kona_setcolor-kona_mapcolor-kona_point-kona_box-kona_unblank-kona_movechar-kona_bitmap-kona_tportinit),
and the IO6 PROM, whose fuller grammar is below.

Every row and rule here is **inferred**. It is what the PROM code sends and waits
for, read from the PROM image's disassembly and symbol table. It is a software
expectation, not a measurement of the pipe. The PROM image is not on the IRIX
6.5.30 media this workspace reads, so these readings are **unverified** against
it here. The kernel column comes from the kernel routines already documented in
[kernel.md](../../software/kernel/kernel.md).

## Wire shape

A command is one word `1`, then a command code, then its arguments. There is no
count word. The payload length is fixed for each code, except code `0xa`, which
has its own header.

Before each command the PROM waits until `(window+0x800208) & 0x7fe` is zero. It
polls at most 5000 times with no delay between polls. The reading does not record
what the PROM does when the cap runs out.

| Code | Arguments | Kernel routine with the same shape |
|---|---|---|
| `1` | `x` | `kona_unblank` sends `1, 1, 0`. The meaning of `x` is not recorded. |
| `2` | `x`, a colour value | `kona_setcolor`: `1, 2, color` |
| `3` | `a, b<<2, c<<2, d<<2` | `kona_mapcolor`: `1, 3, index, r<<2, g<<2, b<<2` |
| `4` | `a, b` | `kona_movechar`: `1, 4, x, y` |
| `5` | `max(a-1,0), max(b-1,0), c, d` | `kona_box`: `1, 5`, with the low edges lowered by one and clamped at zero |
| `6` | `a, b` | `kona_point`: `1, 6, x, y` |
| `7` | `a & ~3, b & ~3` | None. The kernel never sends code 7. |
| `8` | `width, height` | `kona_tportinit`: `1, 8, xsize, ysize` |
| `9` | `0` | `kona_alive`: `1, 9, 0`. One reply word, `0x1234abcd`. |
| `0xa` | six signed halfwords, then a packed bitmap | `kona_bitmap`: `1, 10`, then the same header and packing |
| `0xc` | `0` | `get_graphics_info`: `1, 12, 0`. Five reply words. |

Code 7 is the only code the kernel driver does not send. Its two arguments are
each masked to a multiple of four, which suggests a grid alignment. Its role is
not recorded.

## Drawing entry points

The PROM calls its drawing routines through one table, in this order: codes 1,
2, 3, 5, 6, 4, `0xa`, an empty slot, 8, 7.

## Bitmap (code 0xa)

The header is six signed halfwords taken from the caller's descriptor at offsets
`+0x8`, `+0xa`, `+0xc`, `+0xe`, `+0x10` and `+0x12`. In order they are width,
height, x origin, y origin, x advance and y advance. The payload is
`ceil(width*height/32)` words of packed bits. Each source row is padded to 16
bits, the rows are packed back to back with no row padding, and the most
significant bit comes first. The kernel's `kona_bitmap` packs the same way
([kernel.md](../../software/kernel/kernel.md#textport-drawing-kona_setcolor-kona_mapcolor-kona_point-kona_box-kona_unblank-kona_movechar-kona_bitmap-kona_tportinit)).

The PROM's symbol table says every bitmap is preceded by a code 4 call that sets
the origin. Labels then advance from that origin by the header's advance values,
without a new code 4 for each glyph. This is **inferred** from the symbol's
description, not from the code that does it. It fits the kernel's `kona_movechar`
role, which is also recorded as inferred.

## Reply words

The PROM reads reply words from the ARM mailbox one at a time. For each word it:

1. polls window `0x800238` for bit `0x10`, waiting two ticks between polls, up to
   the cap. A cap of 0 means the default of 5000;
2. on a hit, reads `0x800240`, writes 0 to `0x800240`, then writes `0x10` to
   `0x800238` to acknowledge; and
3. stores the word.

If one word never arrives, the read returns `-1` at once and does not read the
rest. The sync probe (code 9) uses a cap of 100 on its first attempt. Graphics
info (code 0xc) uses the default cap.

The kernel's `receive_armdata` does the same steps but waits `us_delay(100)`
between polls, and its `kona_alive` uses a larger first poll count. The
difference is the spacing and the first-poll count, not the protocol.

## Open

- What the PROM does when the FIFO wait hits its cap. The reading does not say.
- Whether the PROM brackets its words with the kick sequence at `0xc00108`
  ([kernel.md](../../software/kernel/kernel.md)). The reading does not say.
- The meaning of code 1's argument, and the role of code 7. Neither is
  recorded.
- A separate reading claims the kernel's `get_graphics_info` checks reply words
  1 and 2 for a negative value (errors 0x500 and 0x400) and never reads words 3
  and 4. The disassembly in `kona_kernel/disasm/kona_tport/kona_tport.text.s`
  (`glabel get_graphics_info`) does not show that: it loads word 3 as the width
  and word 4 as the height, with 1280 and 1024 as the fallbacks, as
  [kernel.md](../../software/kernel/kernel.md) says. That separate reading is not used here.
