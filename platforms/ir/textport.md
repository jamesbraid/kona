# Textport: the command port

The textport is the console path the pipe uses before any X server or GL client
runs. Its command port is the flow-controlled window offset `0xc10000`
(`XG_FC_GFX`, see [xg.md](../../devices/xg/README.md)). The kernel driver writes
to it with the routines in
[kernel.md](../../software/kernel/kernel.md#textport-drawing-kona_setcolor-kona_mapcolor-kona_point-kona_box-kona_unblank-kona_movechar-kona_bitmap-kona_tportinit),
and the pipe's EEPROM boot program answers it, as read in
[tport.md](../../software/ucode/tport.md#textport-command-handler).

This page only lines the two sides up. Every sender fact is read from the
kernel objects and every receiver fact from `tport.bin`, both in the 6.5.30m
files the cited pages already document, and is graded there. A second sender,
the node PROM, is not covered: no PROM image is among the files this
workspace reads, so nothing about how the PROM drives the port is recorded.

## Wire shape

**Established** (the kernel senders, `kona_tport.o` 0x0-0xccc, and the pipe's
handler, `tport.bin` +0xed40). A command is one word `1`, then a sub-command
number, then that sub-command's operands. There is no count word; the
operand count is fixed for each number except 10, which has its own header.

| Number | Kernel sender and operands | Pipe handler (`tport.bin`) |
|---|---|---|
| 1 | `kona_unblank`: `1, 1, 0` | blank or unblank channel 0 by the flag (+0xeba4) |
| 2 | `kona_setcolor`: `1, 2, color` | set the drawing colour index (+0xeb48) |
| 3 | `kona_mapcolor`: `1, 3, index, r<<2, g<<2, b<<2` | define a colour-table entry (+0xeb50) |
| 4 | `kona_movechar`: `1, 4, x, y` | set the text position (+0xebb8) |
| 5 | `kona_box`: `1, 5`, low edges lowered by one and clamped at zero | order each pair, draw a rectangle (+0xeb70) |
| 6 | `kona_point`: `1, 6, x, y` | draw one primitive in the current colour (+0xeb64) |
| 7 | none: no kernel routine sends it | move the hardware cursor to x, y (+0xebac) |
| 8 | `kona_tportinit`: `1, 8, xsize, ysize` | reinitialise the console for that size (+0xec6c) |
| 9 | `kona_alive`: `1, 9, 0`; one reply word, `0x1234abcd` | mailbox check, reports `0x1234abcd` or `0xdeadbabe` (+0xec94) |
| 10 | `kona_bitmap`: `1, 10`, six header words, then packed bitmap words | draw a 1-bit glyph at the text position (+0xebc4) |
| 12 | `get_graphics_info`: `1, 12, 0`; five reply words | five-interrupt configuration report (+0xeca8) |

Sub-command 7 is the only one of these the kernel never sends. The pipe-side
reading above makes it a cursor move, so its role is not open; why the kernel
does not use it is.

## Bitmap (number 10)

The header is six words: width, height, x origin, y origin, x advance and y
advance, each a sign-extended halfword of the caller's glyph record. The
packing of the bitmap words that follow is **established** in the `kona_bitmap`
entry of [kernel.md](../../software/kernel/kernel.md#textport-drawing-kona_setcolor-kona_mapcolor-kona_point-kona_box-kona_unblank-kona_movechar-kona_bitmap-kona_tportinit).

## Reply words

The reply loop is `receive_armdata` in `kona_tport.o` (0xce8, **established**
0xd2c-0xd88, see [kernel.md](../../software/kernel/kernel.md#textport-control-and-discovery-kona_alive-receive_armdata-kona_getdesc-get_graphics_info-kona_earlyinit-find_konapipe)).
For each word it polls window `0x800238` for bit `0x10`, then reads `0x800240`,
writes 0 to `0x800240` and writes `0x10` to `0x800238`. A timeout returns
-1 and leaves the words already read in the buffer.

## Open

- How the node PROM drives this port: its FIFO wait, retry limits, reply
  polling and any use of the kick at `0xc00108`. Route: read a published PROM
  image, which is not on the 6.5.30 media.
- The role of the first reply words of sub-command 12 (indexes 0 to 2), which
  the kernel reads and discards.
- A separate reading claims the kernel's `get_graphics_info` checks reply words
  1 and 2 for a negative value and never reads words 3 and 4. The disassembly in
  `software/kernel/disasm/kona_tport/kona_tport.text.s` (`glabel
  get_graphics_info`) does not show that: it loads word 3 as the width and
  word 4 as the height, with 1280 and 1024 as the fallbacks, as
  [kernel.md](../../software/kernel/kernel.md) says. That reading is not used here.
