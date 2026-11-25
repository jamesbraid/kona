# The X_LOADGC and X_PIX_SETUP words for a plain 8-bit and a 24-bit visual

The 13 graphics-context words (token 0x129) and 7 pixel set-up words (token 0x136) the X server sends for a plain 8-bit and a 24-bit visual, what each means, and how a driver that is not IRIX builds them for its own drawing state. It answers one question from the NT design and completes the part of [non-irix-driver.md](non-irix-driver.md#3-x-pixel-grammar) that said the words could only be replayed. The field-by-field register layouts are already in [command-table.md](../../formats/token/command-table.md#78-x-graphics-context-load-token-0x129-thirteen-words-and-its-companion-loads); this page adds the values and the rules that produce them.

Labels are **established** (read in full or run, with address), **inferred** or **unknown**. No hardware was read.

## How the values were obtained

The words are produced by shipped code, so the code was run rather than transcribed. [tools/x_state_words.py](../../tools/x_state_words.py) maps `kona.so`, `konal.so`, `konad.so` or `konas.so` (IRIX 6.5.30m, `usr/lib/X11/dyDDX/`) into an emulator, calls `kon_loadPixmapGC` (`kona.so` 0x501690) with the arguments `konDrawImage` (0x552f40) passes, and prints the stores into the FIFO; with `--gc` it calls `kon_parseGC` (`kona.so` 0x537a80), which `konValidateWindowGC` (0x553d40) calls to build a solid-fill context. Nothing is stubbed except `bzero`. The `konal.so` on the 6.5.30 media is not byte-identical to the copy the rest of this workspace reads (its hash differs from the manifest's); the words it prints are the same. **Established:** all four modules print the same 13 + 7 payload words for both visuals (`konal`, `konad` and `konas` put the token word in the stream first, `kona` stores to FIFO + 32 x token). The 24-bit write path was also read by hand in the `kona.so` listing and agrees. The colour and plane-mask formulas below were checked against the emulated function on random inputs (40 colours, 20 plane masks) with no mismatch.

`konDrawImage` calls the loader as `kon_loadPixmapGC(alu, planemask, kind, flags, buffer, 1, width, height, bit offset, drawable, fifo)` (**established**: the call follows the 0x8000-byte DMA test in `konDrawImage`): `alu` is the X raster op (**inferred** from its use: it becomes the logic-op code in `bl`), `kind` is 0 for an image write and carries 0x10 when the band goes by DMA, `flags` is the window's visual flag word (word +8 of the visual's 20-byte record, copied into the window private at +20 by `konValidateWindowPriv` 0x448120), `buffer` is 1 unless the window is double-buffered (then 2 or 3), `drawable` supplies the depth byte (`+2`), `fifo` is the command pointer. The 20-byte records are in `konavis.so`; the two visuals here are

| Visual | flag word | in the tables |
|---|---|---|
| 8 planes, any class (PseudoColor is the usual one) | `0x01020001` | the six `imp8` and `imp8c` tables |
| 24 planes TrueColor, 8 bits per component | `0x20002001`; `0x20082001` is a second entry whose bit `0x80000` makes the draw-buffer field of `op` 5 | the six `imp8` and `imp8c` tables |

Other main-plane words exist (`0x01120001` 8 bit, `0x02020001` 12 bit, `0x10030001` 16-bit gray, `0x80006001` 30-bit RGB10, `0x4000a001` 24-bit DirectColor); the tool prints any of them. Overlay, underlay and popup planes (low nibble 2, 4 or 8) take other branches and are not covered.

## The words

Window not double-buffered, alu copy (3), all planes writable, a 16 x 16 transfer at bit offset 0. Payload words, in wire order.

| X_LOADGC word | name | 24-bit RGB (`0x20002001`) | 8-bit (`0x01020001`) | meaning |
|---|---|---|---|---|
| 0 | `fg_h` | 0 (the pixmap loader), else the colour | 0, else the colour | foreground colour, high half |
| 1 | `fg_l` | 0 | 0 | foreground colour, low half |
| 2 | `bg_h` | 0 | 0 | background colour, high half |
| 3 | `bg_l` | 0 | 0 | background colour, low half |
| 4 | `wmask0` | `0xffffff` | `0xf00fff` | plane write mask, red 11:0 and green 23:12 |
| 5 | `wmask1` | `0xffffff` | `0` | plane write mask, blue 11:0 and alpha 23:12 |
| 6 | `cfg` | `0x2804` | `0x180c` | colour format bits 5:2 (1 = RGBA12, 3 = CI16), read format bits 13:11 (5 and 3) |
| 7 | `op` | `0x60001` | `0x40001` | draw buffer 3:0 (1), read-back format 17:14 (8 and 0), read base 23:18 (1) |
| 8 | `addr` | 1 | 1 | colour base address, the first 6-bit field |
| 9 | `bl` | 6 | 6 | logic-op code in bits 4:1: 3, copy |
| 10 | `ifmt` | 8 | 5 | bus pixel-format code: 8 RGBA8, 5 I16 |
| 11 | `colfmt` | 0 | 1 | luminance-alpha colour flag for the texture filter |
| 12 | `pixfmt` | 0 | 1 | luminance-alpha pixel flag |

| X_PIX_SETUP word | name | write (kind 0) 24 / 8-bit | copy (kind 1) | read (kind 2) | meaning |
|---|---|---|---|---|---|
| 0 | `kind` | 0 / 0 | 1 | 2 | transfer kind in 3:0; bit 4 set means the rows come by DMA (**inferred**) |
| 1 | `src` | 2 / 0 | 2 / 1 | 2 / 1 | engine pixel-output module: source pixel is 1, 2, 4 or 8 bytes for 0 to 3 |
| 2 | `dst` | 2 / 1 | 2 / 1 | 2 / 0 | destination size code: 0 8-bit, 1 16-bit, 2 32-bit conversion |
| 3 | `shift` | 8 / 8 | 0 | -8 (`0xfffffff8`) / 8 | source shift handed to the engine set-up |
| 4 | `width` | pixels | | | transfer width |
| 5 | `height` | rows | | | transfer height |
| 6 | `bitoffset` | bit offset of the first pixel in the host row (0 for aligned data) | | | |

So a 24-bit image write is `0, 2, 2, 8, w, h, 0` and an 8-bit image write `0, 0, 1, 8, w, h, 0`. All of this is **established** as what the shipped code emits; the meaning column is as graded in [command-table.md](../../formats/token/command-table.md#79-x-pixel-packings-set-up-write-read-copy-and-finish) (registers established, a few bit roles inferred).

**Colour words for a solid fill (`kon_parseGC`, window not double-buffered).** **Established**, checked on random inputs:

- 24-bit: with `rep(c) = (c << 4) | (c >> 4)` for an 8-bit component, `fg_h = rep(R) << 8 | (rep(G) >> 5) & 0x7f` and `fg_l = rep(B) << 14 | (rep(G) & 0x1f) << 27 | 0x1ffe`. So white is `0xfff7f`, `0xfbffdffe`; black is 0, `0x1ffe`. The background words are packed the same way. The constant `0x1ffe` fills bits 12:1 of the low word (**inferred:** alpha 1.0; no shipped code names the field).
- 8-bit: `fg_h = index << 12`, `fg_l = 0x1ffe`; the background the same.
- Plane mask: 24-bit `wmask0 = rep(R) | rep(G) << 12`, `wmask1 = rep(B) | 0xfff000`, so alpha is always writable. 8-bit `wmask0 = 0xf00000 | (mask8 << 4) | 0xf`, `wmask1 = 0`. For the pixmap loader these are computed from its plane-mask argument the same way.

**The solid-fill words and the pixmap words agree.** `kon_parseGC` takes the draw buffer and read buffer as its third and fourth arguments (`konValidateWindowGC` passes 1 and 1, or 2 where the window's double-buffer private says so; **established**, the tail of that function). With 1 and 1 its `cfg`, `op`, `addr`, `bl`, `ifmt`, `colfmt` and `pixfmt` equal the pixmap loader's for both visuals; only words 0 to 3 differ (a pixmap transfer sends zero colours). With other buffer values `op` takes the draw buffer in 3:0 and the read buffer in bit 18 and up, and `cfg` bit 12 follows the read buffer. A driver therefore needs one 13-word template per hardware pixel mode.

## What each word depends on

- **On the framebuffer mode, not the X visual:** `cfg` (colour format, read format), `op` (read-back format), `ifmt`, `colfmt`, `pixfmt` and the plane-mask layout say how the pipe stores and reads a pixel in the mode the combination configured (RGBA12, CI16, RGB10A2 for the 30-bit visual, whose `cfg` is 0 and `ifmt` 9). They must match what the miniport set up.
- **On the transfer:** only `kind`, `width`, `height`, `bitoffset` and, through the table index, `src`, `dst` and `shift`.
- **On the colour:** words 0 to 3, and the plane mask.
- **Constant here:** `addr` 1, `bl` 6 (copy), the draw buffer 1.

**Can another visual's words be used for text?** Not blindly. Words 6, 10, 11 and 12 and the colour packing change with the pixel mode (the 24-bit set against the 8-bit set differs in all of them), and writing CI-format words into an RGBA12 framebuffer, or the reverse, would store pixels in the wrong format. **Inferred:** a *solid fill* only needs words 0 to 9 right for the mode, because `ifmt`, `colfmt` and `pixfmt` select the host-transfer format of a pixel write and the texture-filter flags, which a box does not use; but no shipped code shows a box with the wrong `ifmt`, so a miniport should record the words for its own mode (the NT design's plan) and not borrow.

## What the firmware does with the set-up words

**Established** (`arm_x_pix_setup` 0x0c034ac4 and `X_PixSetupGE` 0x0c035244 read in full, `CompGedReg` 0x0c034bf0 and `CompPixGedReg` 0x0c034cfc read to the register-list code): the handler reads the seven words, keeps width and height at r8 + 0x904 and 0x908 and bit 4 of word 0 at 0x934, and calls `X_PixSetupGE(src, dst, shift)`. For modules 0 to 3 it writes engine control word 0xd with 8, 16 or 32 minus the shift (modules 0, 1, 2) and word 0xe with the shift, picks the converter group by `dst` (0 `cvmg_8`, 1 `cvmg_16`, 2 `cvmg_32`) and the output routine slot (0x16f for `dst` 0 and 1, 0x170 for 2), and writes engine word 0x161 with 0x24, 0x44 or 0x84 by module. So the 24-bit write is a 32-bit source, 32-bit conversion, field width 24 (0xd = 32 - 8), and the 8-bit write is a 1-byte source converted to 16-bit lanes with the index at bits 15:8 (0xd = 8 - 8 = 0, shift 8), which fits the CI16 lane layout the colour format in `cfg` names (**inferred**; the lane offset is the shift in [command-table.md](../../formats/token/command-table.md#78-x-graphics-context-load-token-0x129-thirteen-words-and-its-companion-loads)). `CompGedReg` then computes the distributor's unpacker, reorderer and transfer-unit registers from the source size (1, 2, 4, 8 bytes for modules 0 to 3) and writes them; `CompTF` acts for kinds 1 and 2 and `XSetPacker` (0x0c035830, not re-read for this page) for kind 2 only. The count of pixel words that `X_PIX_WRITE` passes through is in [command-cut-short.md](command-cut-short.md#1-how-the-pipe-finds-the-end-of-a-command).

## What the NT design should do

1. At start-up the miniport writes its own pixel mode into the pipe (through the buffer-configuration and display tokens) and records the matching 13-word template from the table above for that mode: for the 24-bit RGBA12 mode `0x2804`, `0x60001`, 1, 6, 8, 0, 0 in words 6 to 12 and the masks `0xffffff`, `0xffffff`; for CI8 `0x180c`, `0x40001`, 1, 6, 5, 1, 1 and the masks `0xf00fff`, 0.
2. The HAL's STOP backend fills words 0 to 3 from the text colours with the packing above, sends `X_LOADGC`, `X_LOADPOS` and `X_LOADCLIP` and then either fills (`X_BOX`, which needs no `X_PIX_SETUP`) or writes cells with `X_PIX_SETUP`, `X_PIX_WRITE`, `X_PIX_FINISH`. The fill route cuts the unknowns to the 13-word template and the box edge convention; the image route also needs the 7 words above. Both are what IRIX sends for the same mode.

## What stays unknown

| Question | What would settle it |
|---|---|
| The meaning of the read-back format code in `op` bits 17:14 (8 for RGBA12 and RGBA8 reads, 0 for CI) beyond being a raster-register field | the raster board's register description, or a trace of what `0x1c02` selects |
| Whether bits 12:1 of `fg_l`, constant `0xfff`, are the alpha component, and the single bit 0 and bit 13 | the image-processor's colour-register layout; no shipped software names it |
| Whether a fill with a wrong `ifmt`, `colfmt` or `pixfmt` is harmless | a model of the raster path; no shipped sender does it |
| The bits of the visual flag word other than the ones the loader tests (low nibble plane group, `0x2000` colour, `0x4000` 10-bit components, `0x10000` the 16-bit luminance shift, `0x80000` adds 4 to the draw buffer) | a read of every flag-word consumer in `konal.so`; only the pixmap loader and `kon_parseGC` were read here |
| The 16-bit luminance and the colour-index main-plane shift tables that start-up fills in | the start-up code that builds them (unchanged from [command-table.md](../../formats/token/command-table.md)) |
