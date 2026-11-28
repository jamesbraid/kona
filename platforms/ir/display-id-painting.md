# Painting a window's display-id planes, and the per-pixel window test

What a driver must send to mark the pixels a window owns, and what the pipe compares per pixel afterwards. Most of the facts were already in [command-table.md](../../formats/token/command-table.md) sections 7.6, 7.7, 7.8 and 10 and in [kona-ddx.md](../../software/xsgi/kona-ddx.md). This page reads the one routine that was only summarised there in full, and puts the answer in the order a driver needs it.

Labels are **established** (read in full from a binary, with address), **inferred** or **unknown**. Everything is for IRIX 6.5.30m, one InfiniteReality2 pipe on an IP27 host. No hardware was read.

## Answer first

| Question | Answer | Label |
|---|---|---|
| What is painted | each window's display id, written into the framebuffer planes that hold it, through an ordinary X fill: a full-screen clip load, a full-screen position load, one 13-word graphics-context load, then boxes | established |
| The graphics-context words | words 6 to 12 are fixed: `0x8`, `0x1`, `0x0`, `0x6`, `0x0`, `0x1`, `0x1`. Words 2 and 3 (background) are zero. Words 0, 1, 4 and 5 carry the id and the plane write mask in one of two layouts ([table](#the-thirteen-words)) | established |
| The plane write mask | only the id planes are writable: mask value `0xfc` for a main-plane window, `0x1f00` for an overlay or popup group, repacked into words 4 and 5 by the formulas below | established |
| Which layout | bit 2 of the word at +148 of the pipe record the X module finds through its screen record. That the bit follows the board's pixel depth is inferred; what sets it was not read here | established that the bit chooses; inferred what it means |
| Id width | main-plane ids 0 to 62, popup 63, overlay and underlay groups 64 to 95: 96 ids. The painter refuses an id of 96 or more | established |
| What the pipe tests per pixel | with the enable bit of the window-id test register (raster index `0x1c06`) set, a fragment is kept only if the pixel's id field equals the reference under the mask | established that the register exists and how the host builds it; the comparison itself inferred |
| When the test is on | the kernel sets the enable bit only for a window whose clip is not one rectangle equal to the window or the screen (the "obscured" flag). A plain window is confined by the scissor alone | established |

## The routine that paints

`kon_drawDid` in `konal.so` (IP27 build, 0x13f1770 to 0x13f1a1c) is **established**, read in full. It draws nothing itself: it loads clip, position and graphics context, and its caller sends the boxes. Its arguments are the id `v` and plane mask `m` that `konDrawDID` computes, the screen record and the command pointer. The id conversion, the mask and the refusal of ids 96 and up are not in `kon_drawDid`. The same routine in `kona.so` (0x4715c0) is recorded in [kona-ddx.md](../../software/xsgi/kona-ddx.md) as differing only in how the token words are stored; it was not re-read here.

The caller is `konDrawDID` (`kona.so` 0x53e7b0, read in full there). It converts the display id into `v` and `m`, refuses ids of 96 and up, and sends the boxes. **Established:**

| Display id | `v` (painted value) | `m` (plane mask value) |
|---|---|---|
| 0 to 62, main plane | `(id << 2) & 0xfc` | `0xfc` |
| 63 (popup) to 95 (overlay or underlay group) | `((id - 64) << 8) & 0x1f00`, so 63 gives `0x1f00`, the same as 95 | `0x1f00` |
| 96 and above | refused: a message and no drawing | |

Wire sequence for one paint. The token numbers are the pipe's; `konal.so` stores the token as a data word, `kona.so` as a store address. Established for `konal.so`:

1. `X_LOADCLIP` (0x12b), five words: 1, 0, 0, screen width, screen height (halfwords at screen record +8 and +10).
2. `X_LOADPOS` (0x12a), four words: 0, 0, screen width, screen height.
3. `X_LOADGC` (0x129), thirteen words, below.
4. The boxes: groups of six as `X_BOX6`, then one to five left over as `X_DATA2`, `X_DATA4`, `X_DATA6` or `X_DATA8` runs ending in an `X_BOX` (the box forms are in [kona-ddx.md](../../software/xsgi/kona-ddx.md)).

### The thirteen words

| Word | Name | Value | Label |
|---|---|---|---|
| 0 | `fg_h` | layout A: `((v & 0xf) << 3) \| ((v & 0xfff0) << 4)`; layout B: 0 | established |
| 1 | `fg_l` | layout A: 0; layout B: `((v & 0xf) << 9) \| ((v & 0xfff0) << 10)` | established |
| 2, 3 | background | 0, 0 | established |
| 4 | `wmask0` | layout A: `((m >> 4) & 0xfff) \| ((m & 0xf) << 20)`; layout B: 0 | established |
| 5 | `wmask1` | layout A: 0; layout B: `((m >> 12) & 0xf) \| ((m & 0xfff) << 12)` | established |
| 6 | `cfg` | `0x8`: colour format 2 in bits 5:2, every other bit clear | established; that format 2 is luminance-alpha 16 is inferred from the format names |
| 7 | `op` | `0x1`: draw buffer 1, every other field clear | established |
| 8 | `addr` | `0x0`: colour base 0 | established |
| 9 | `bl` | `0x6`: logic-op code 3 (copy) in bits 4:1, no enable bit | established |
| 10 | `ifmt` | `0x0` | established |
| 11 | `colfmt` | `0x1` | established |
| 12 | `pixfmt` | `0x1` | established |

The routine zeroes eight locals first (0x13f1798 to 0x13f17b4) and then edits only the bits named, so words 6 to 9 are whole-word values, not just "low bits" as the older rows in [command-table.md section 7.8](../../formats/token/command-table.md#78-x-graphics-context-load-token-0x129-thirteen-words-and-its-companion-loads) read. Painting uses a fixed luminance-alpha 16 format whatever the desktop's colour mode is. **Inferred:** the same words therefore serve the 8-bit and 24-bit desktops; the pixel-write set in [x-state-words.md](x-state-words.md) is a different set. Layouts A and B are the two places the id can sit in the 64-bit foreground and write mask, [section 7.6](../../formats/token/command-table.md#76-pixel-id-placement-and-window-kinds). Worked values, computed from the formulas above by a short script (not from a capture):

| Display id | `v`, `m` | Layout A, words 0, 4 | Layout B, words 1, 5 |
|---|---|---|---|
| 0 | `0x0`, `0xfc` | `0x0`, `0xc0000f` | `0x0`, `0xfc000` |
| 5 | `0x14`, `0xfc` | `0x120`, `0xc0000f` | `0x4800`, `0xfc000` |
| 62 | `0xf8`, `0xfc` | `0xf40`, `0xc0000f` | `0x3d000`, `0xfc000` |
| 63 (popup) | `0x1f00`, `0x1f00` | `0x1f000`, `0x1f0` | `0x7c0000`, `0xf00001` |
| 64 | `0x0`, `0x1f00` | `0x0`, `0x1f0` | `0x0`, `0xf00001` |
| 65 | `0x100`, `0x1f00` | `0x1000`, `0x1f0` | `0x40000`, `0xf00001` |

The unused word of each pair is 0 (word 1 and 5 in layout A, words 0 and 4 in layout B).

One existing claim does not fit this routine. [Section 7.8](../../formats/token/command-table.md#78-x-graphics-context-load-token-0x129-thirteen-words-and-its-companion-loads) says, as an inference, that a zero in word 2 makes the engine skip the raster-register part of the load. This routine sends word 2 as zero and the painting works, and every pixmap load in [x-state-words.md](x-state-words.md) also sends zero in words 2 and 3. **Inferred:** so the engine's test cannot be a plain zero test of the word as the X module sends it. What would settle it: the engine routine `mgebi_XLoadGC` (`ge.u` 0x4cf4 to 0x4d13, [xload.S.lst](../../software/ucode/ge_listing/xload.S.lst)) read for which stored value its branch tests; this page did not re-read it.

## What the pipe tests per pixel

**Established:** the register is raster index `0x1c06`, shadow word 39: bit 0 test enable, bits 12:1 reference id, bits 24:13 mask ([section 8.1](../../formats/token/command-table.md#81-window-id-clip-test-register-0x1c06)). The window-and-clip set-up request (token `0x1f3`) writes it from word 9 (the id) and word 10 (the obscured flag): ids `0..0x3e` give reference = id, mask `0x3f`; `0x3f` gives reference and mask `0x800`; `0x40..0x5f` give `(id - 0x40) << 6` under mask `0x7c0`; and `-1` (a vanished window) gives `0x3f` under `0x3f` ([section 10](../../formats/token/command-table.md#10-window-placement-word-9-and-the-window-id-test)). The start-up value is 0, test off, and the X initialiser (`x_initregs`, `arm1.u` 0x0c03d0b8) also writes 0 to it.

**Inferred:** the compared value is the painted value shifted right by two, so a main id `n` is tested in compared bits 5:0 and an overlay group `g` in bits 10:6, and a fragment passes when `((pixel ^ reference) & mask) == 0`. The argument is that every pair the encoder produces has its id bits inside its mask bits, and the opposite polarity would compare only bits that are always zero. A second point is open: word 9 = `0x3f` compares bit 11 only, while the painter gives the popup the same pattern as overlay group 31, so under the plain shift reading a popup validated through this request owns no pixel.

**Unknown:** the comparison is made inside the image-processor chip, which has no program, and no shipped software, published paper or board netlist states its bit positions. What would settle it: that chip's netlist, or a capture that writes `0x1c06` one bit at a time over pixels painted as a main window, an overlay and a popup. A driver does not need the answer to paint and to send clips as IRIX does; it needs it only to model the test.

## What a driver sends

For a GL window: paint the window's id planes (clip, position, graphics context, boxes), load the id's entry in the display-id table (`X_LOADXMAP_DID`, [section 7.1](../../formats/token/command-table.md#71-display-id-table-entry-xmap-indirect-memory-data-at-0x11c-address--id-in-0x118)), send the window-and-clip request with the id and the obscured flag, and from then on every GL draw is tested against `0x1c06` when the flag was set. A window that is one unobscured rectangle needs no test: the scissor registers derived from the same request confine the draw.

| Open question | What would settle it |
|---|---|
| What sets bit 2 at +148 of the pipe record, and so which layout a given board and depth uses | the store to that field in the module's screen set-up (`konInit`, `kona.so` 0x56ed50) and the visual-set choice it follows |
| What `konValidateVisual` (`kona.so` 0x52cc30) repaints and with which ids | a read of the whole function and of the routine at 0x4b1cf0, whose five call sites were not read |
| Whether painting is safe while a GL context is current | [x-tokens-and-gl-contexts.md](x-tokens-and-gl-contexts.md) |
| Bit positions of the per-pixel compare | the image-processor netlist, or the one-bit capture above |
