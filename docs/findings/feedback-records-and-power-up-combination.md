# Feedback records, and who runs the stored video combination at power-up

Two questions from an emulator author, answered from the IRIX 6.5.30m
binaries in `root/` and from published GL behaviour. First configuration only:
one IP27 Onyx2, one InfiniteReality2 pipe.

Grades: **established** (read directly, with the routine and offset),
**inferred** (a stated reasoning step), **unknown** (with the test that would
settle it). Nothing here edits `docs/command-table.md`; section 3 holds the
rows to apply there.

## 1. What the pipe writes into a feedback buffer

### 1.1 Who builds the record

**Established: the pipe builds the whole record, and the host library does not
rewrite it.** Three facts from `usr/gfx/arch/IP27KONA32/libGLcore.so`
(`libglcore/asm/KONA/kon_select.s`):

- `__glkonim_FeedbackBuffer` (0xd95cf30) stores the application's buffer
  pointer at context +4872 and a second copy of the same pointer at +31592
  (`sw a2,4872` and `sw a2,31592`). No allocation, no copy.
- `__glkonim_RenderMode` starts the pipe's output DMA on the +31592 pointer
  (`StartSelectFeed`). The records therefore land directly in the
  application's feedback array.
- `ResolveFeedback` (0xd95d010) reads that array in place. Its only
  stores into the array are the `bcopy` that deletes one stray word. It
  never writes a vertex value. Its only arithmetic is on the record code word
  (`trunc.w.s`, subtract 0x700, jump table of eight) and, for the polygon
  record, `trunc(1.0 + valuesPerVertex * n)` (`cvt.s.w` and `madd.s` at
  0xd95d1a0) to find where the next record starts.

So what the application reads is exactly the pipe's DMA bytes minus stray
words. The record layout in section 1.2 is the pipe's layout.

### 1.2 Record layout the host accepts

**Established** (`ResolveFeedback`: the table of value counts on the stack at
0xd95d010-0xd95d0a0 and the eight handlers). Each record is a code word, all
words single-precision floats:

| Code | Record | Words after the code |
|---|---|---|
| 0x700 | pass-through | 1 (the marker) |
| 0x701 | point | 1 vertex |
| 0x702 | line | 2 vertices |
| 0x703 | polygon | count word n (float), then n vertices |
| 0x704 | bitmap | 1 vertex |
| 0x705 | draw pixels | 1 vertex |
| 0x706 | copy pixels | 1 vertex |
| 0x707 | line reset | 2 vertices |

Values per vertex, V, from the type the application passed to
`glFeedbackBuffer` (the client refuses anything outside 0x600-0x604 and
computes V as a base count plus a colour count c):

| Type | V | c |
|---|---|---|
| 0x600 `GL_2D` | 2 | 0 |
| 0x601 `GL_3D` | 3 | 0 |
| 0x602 `GL_3D_COLOR` | 3 + c | 4 or 1 |
| 0x603 `GL_3D_COLOR_TEXTURE` | 7 + c | 4 or 1 |
| 0x604 `GL_4D_COLOR_TEXTURE` | 8 + c | 4 or 1 |

c is 4 when the context byte at +3220 is nonzero and 1 when it is zero
(`movz` at 0xd95d058). **Inferred:** that byte is the RGBA-versus-colour-index
mode flag; the only evidence is that the same byte selects between the two
colour paths in the library's software renderer (below).

### 1.3 Order of the values inside a vertex

**Inferred, from the library's own software renderer.** The same library
ships a software feedback path (`libglcore/asm/soft/so_feedback.s`, routine
`feedback`, 0xd9d66e0) that must fill the same array for the same call.
It emits, in order:

1. x, then y, with the window origin subtracted (context +3668 and +3672);
   when the byte at +4848 is set, y is reflected against the drawable height
   (+3704) first.
2. z (2D type stops before this), divided by the depth scale at +31360.
3. For 0x604 only: w (a vertex field at +124, taken to be w; not verified).
4. For 0x602, 0x603 and 0x604: colour, c values. In RGBA mode each channel is
   multiplied by a per-channel scale (+30856 to +30868); in index mode it is one
   value.
5. For 0x603 and 0x604: four texture coordinates.

This matches the count table in 1.2 (2, 3, 3+c, 3+4+c, 4+c+4). The software
path is the GL-visible contract for the type; it does not show that the
pipe's microcode emits the identical order, only that the host accepts nothing
else, since `ResolveFeedback` never reorders. **Unknown:** the order the
geometry engine actually writes, and where in a 3D-colour-texture vertex the
colour sits relative to the texture coordinates, until an operand-level read
of `mFeedbackVertex` (`ucode/ge_listing/feedback.S.lst`, 0xb93f, source lines
611-706) binds the final stores to registers, or a recorded feedback buffer
exists. What would settle it: a captured DMA buffer from a feedback run with a
known triangle, colour and texture coordinate, or tracing the register named by
each store from 0xb98d onward through the arithmetic words.

### 1.4 Scale factors, and who applies them

- **Established:** `mFeedbackVertex` (0xb93f) loads exactly two float
  constants, 0x3d800000 (0.0625) at 0xb93f and 0x35800000 (2^-20) at 0xb940,
  and `mgesi_FeedbackPixel` (0xb6bc) loads the same two (0xb6c7, 0xb6c8). No
  other feedback routine loads them. The host library multiplies no vertex
  value (1.1).
- **Inferred:** the engine multiplies window x and y by 0.0625 and window z by
  2^-20. The constants are loaded straight into the staging registers that the
  float multiply-adds in the same routine read. The per-operand binding is not
  traced, so which constant meets which coordinate is read from the routine's
  shape and the command table's earlier reading, not from a register trace.
- **Inferred:** the 0.0625 is a subpixel-to-pixel conversion (window x and y
  in 1/16 pixel units) and the 2^-20 a conversion of a 20-bit-fraction depth
  to [0,1). The meaning of the input units is not stated in any file read.
- **Established, negative:** the host applies no scale. The software path's
  divisions and multiplications (section 1.3) are the equivalent for the
  software renderer only.

### 1.5 Code words and who writes them

**Established** (constants and call sites):

| Record | Code word comes from |
|---|---|
| point, line, line reset, polygon | The engine routines `mmo_FeedbackPoint` (0xb80f, constant 0x701), `mmo_FeedbackLine` (0xb89a, constants 0x702 and 0x707; the test choosing 0x707 was not traced) and `mmo_FeedbackTriangle` (0xb76e, 0x703) load the integer constant and convert it to float. |
| pass-through | `arm_passthrough` (0x0c038930) sends the marker as command word 0 of `mgesi_PassThrough` (0x3a5b), which loads 0x700 itself and converts it to float. It writes the 0x700 word then the marker. |
| draw pixels, copy pixels | `SetupRM` (0x0c033fac), at 0x0c03409c-0x0c0340b0, when the render mode halfword at state-block 0x862 reads 0x1c01: writes 0x705 when bit 1 of the pixel-transfer flags is clear and 0x706 when it is set to operand port 0x474 (command word 0), then selects `mgesi_FeedbackPixel`. The engine converts it to float. |
| bitmap | `do_bitmap` (0x0c02b3a4) in feedback mode writes 0x304 + 0x400 = 0x704 to operand port 0x474 (0x0c02b424-0x0c02b42c) then selects the same handler. |

**Inferred:** every feedback handler writes the record as: register 0x452
(output-DMA line length, `rm.md`) first, then the words through register
0x476 (data port), then 0x477. In `mgesi_PassThrough` the constant 8 is loaded
beside the 0x452 index (0x3a62-0x3a65), the byte length of two words (code and
marker), which would fit "length of this record in bytes". For the polygon the length would
depend on n. Not traced; the settling test is the value the triangle routine
stores through 0x1f5 after the 0x452 index at 0xb85d-0xb85f.

### 1.6 The stray word

`ResolveFeedback` deletes any word at a record boundary whose truncated
value minus 0x700 is 8 or more. **Unknown** which pipe-side write produces
it. Routes tried: every feedback routine in `ge.u` (no store of a non-record
word that is visible in the constants), the `START_SELECTFEED` handler
(programs the channel, writes no framing word), `arm_finish_selectfeed`
(`start_kcomm` writes a four-word event record through the second channel,
not channel 0), and the client's select path (which has a different skip,
marker 0 or 0x2bad2d00, not applied on this driver). A leading word before
the first record in the DMA stream, produced by the raster-bus reply-header
write, would fit but nothing shipped states it. What would settle it: a
captured feedback DMA buffer, or the raster-bus register description for
0x476/0x477.

### 1.7 Not found: diagnostics and test vectors

Routes tried and negative: `usr/diags/IR/` vector files and `.gold` files (CRCs
of pixel results; no feedback or select case), `irsaudit` strings (no
feedback test), the X server and GLX modules (`Xsgi`, `glx.so`: only the
GLX request names `glFeedbackBuffer`, with no layout code), `kona.so` and its
siblings. The OpenGL feedback behaviour in the published GL specification is
the standard order (x y z w, colour, texture) for `GL_4D_COLOR_TEXTURE`; that
specification was not re-fetched for this note, so the match with 1.3 is
the library's software path agreeing with GL, not a quoted page.

## 2. The stored video combination at power-up

**Established: yes, something other than the loader's release runs it, but
only on one image and only if the pipe is not already answering.** The flash
holds the stored combination; two ARM images contain the code that reads and
loads it.

1. **The ARM image loaded by the user-space loader** (`arm1.u`). Start-up in
   `init` (0x0c004108) calls `init_dg_board` (0x0c003d3c, call at 0x0c0041ac),
   which runs `init_dg_jtag`, then, unless a data-block flag is set (the
   simulator), `dgTempBlankAllChannels` and `dgAutoInit` (0x0c0047d4, call at
   0x0c003d90) -> `DoDGRqstAutoInit` (0x0c004674). This runs when the ARM first
   executes `arm1.u`, which is after the loader's write of 1 to `HH_ARM_UNSTALL`
   (+0x800328) if that write releases the ARM, as the loader's order suggests
   (inferred; the register is named by `kpm`'s table and no software reads
   it). `DoDGRqstAutoInit` is also reachable as display request 45 and from
   `dgAutoInitLateChannels` (0x0c004800).
2. **The EEPROM boot image** (`tport.bin`). Its start-up `fn_0c012be4`
   (0x0c012be4, called from the entry at 0x0c0000ec) runs
   `tp_init_dg_board` (0x0c012b90, call at 0x0c012c94), which calls
   `fn_0c0139ac` and then `DoDGRqstAutoInit(0)` (0x0c002434 in that image,
   call at 0x0c012ba4). **Established:** this is the same stored-combination
   load, after a fixed 0x0fffffff-count delay. **Inferred:** `tport.bin` is
   what the ARM executes when it boots from the board's EEPROM, because
   `ireeprom` writes files of that container (magic 0xbadc0ffe) to the
   board EEPROM.
3. **What starts the EEPROM image: unknown.** The shipped node PROM was not
   read here (`root/` holds no PROM image), so whether and when the PROM
   resets the pipe so that the ARM boots from the EEPROM is not established.
   Settle by disassembling the node PROM's graphics console set-up and
   listing its writes to the host-interface reset register.
4. **Nothing else.** The PROM never sends display request 45 or any
   `LoadFormat`: its commands are the textport token's sub-commands 8, 9 and
   0xc plus drawing ones. The kernel (`kona.a`) writes none of the loader
   registers (`KONAdownload` is a stub). The loader `gfxinit`
   (`kona_loaducode`, 0x1000ca5c) writes the post-load registers once, after
   loading the four microcode files, and does not send request 45.

So the two answers: before any loader release, the stored combination is run
by the EEPROM boot image whenever the ARM boots from the EEPROM (what triggers
that boot is unknown, item 3). After release, `arm1.u`
runs it again at its own start-up. A pipe the PROM never touched (console on
serial, no graphics install) has no code path that runs the combination before
the loader releases the ARM.

**Unknown, with settling tests:**

- Whether a freshly powered pipe is already running the EEPROM image with no
  PROM reset (the power-on value of the host-interface reset register).
  Settle with a hardware read of that register right after power-up, or a
  published board manual.
- Whether the `arm1.u` load at +0x4000000 overwrites an already running EEPROM
  image (`tport.bin` shares load addresses with `arm1.u`, per their identical
  base 0x0c000000), and whether the loader's `0x200050` bit 0 write halts
  that ARM. The loader's own evidence only says it holds ARM access during the
  load.
- Whether a stored combination that fails its checks (cookie 0xfacefeed,
  length under 0x8000) behaves the same in both images: `arm1.u` falls back to
  the emergency format (`dgFetal`, 0x0c009628); `tport.bin`'s
  `DoDGRqstAutoInit` was not read to the end for that fallback.

## 3. Proposed command-table rows

Apply to `docs/command-table.md` in the next pass. The first four replace
the like-named rows of the select-and-feedback table in section 7.16; the
fifth replaces the section 2.14 row for token 0x0c1; the last is a note
for display request 45.

Replace "feedback record codes and layout":

```
| feedback record codes and layout | each record starts with a code word, a single-precision float of 0x700 (pass-through), 0x701 (point), 0x702 (line), 0x703 (polygon), 0x704 (bitmap), 0x705 (draw pixel), 0x706 (copy pixel) or 0x707 (line reset). The words after the code: pass-through 1 (the marker); point, bitmap, draw-pixel and copy-pixel one vertex; line and line-reset two vertices; polygon a count word n (float) then n vertices. A vertex is V values: 2D 2, 3D 3, 3D colour 3+c, 3D colour texture 7+c, 4D colour texture 8+c, with c = 4 (RGBA, taken to be the context's RGBA flag byte) or 1 (colour index). The pipe writes every word. The client's resolve routine reads the buffer in place and changes nothing but one stray word at a record boundary (a value whose integer part minus 0x700 is 8 or more), which it deletes by shifting the rest down one word; the application's buffer pointer is the DMA target. The record code is written by the engine's point, line and triangle feedback routines (constants 0x701, 0x702 or 0x707, 0x703), by the pass-through handler (0x700) and, for pixels and bitmaps, by the firmware as command word 0 of the pixel feedback handler (0x705 or 0x706 from the pixel-transfer set-up when the mode halfword at state-block 0x862 is 0x1c01, 0x704 from the bitmap handler) | record sizes and who writes the codes: established; the stray word's source: unknown (what would settle it: a captured feedback DMA buffer, or the raster-bus register description for 0x476 and 0x477) | S35 |
```

Replace "vertex" detail (new row after it):

```
| feedback vertex value order and scale | x, y, then z (not in 2D), then w (4D only), then colour (c values) then four texture coordinates (texture types only). The host library's software renderer, which fills the same array for the same call, emits exactly this order; the host resolve routine never reorders, so the pipe's order is the same unless it is not accepted. The engine's vertex routine (0xb93f) and the pixel routine (0xb6bc) load the two float constants 0.0625 and 2^-20 (0x3d800000, 0x35800000) and no other feedback routine does; they are the window x and y scale (after subtracting the window origin) and the z scale. The host applies none | order: inferred (what would settle it: a captured feedback buffer for a known colour-and-texture triangle, or a register trace of the stores from 0xb98d); which constant meets which coordinate: inferred (same test); the scale being applied by the pipe: established that the host does not, inferred that the engine does | S35 |
```

Replace the section 2.14 row:

```
| 0x0c1 | insert a feedback pass-through marker | 1 | y | established (handler and record code; the effect on the record stream is in section 7.16) | S3, S35 |
```

Add after the selection-names row (feedback pixel records):

```
| pixel and bitmap records | in feedback mode (state-block halfword 0x862 equal to 0x1c01) the pixel-transfer set-up and the bitmap handler do not set up the raster pipe. They write the record code (0x705 draw pixel, 0x706 copy pixel, 0x704 bitmap) to operand port 0x474 and select the engine's pixel feedback handler (geif slot 419), which reads engine memory words 0x28 to 0x33 and writes one vertex scaled as above | established (firmware writes and handler selection); what the ten engine memory words are: unknown (what would settle it: the engine routine's operand trace) | S35 |
```

Replace the row for display request 45 (`| 45 | auto-initialise from the stored combination | 1 | none | established | S5 |`):

```
| 45 | auto-initialise from the stored combination (also run by the ARM at its own start-up in both the main firmware, after the display-board set-up, and the EEPROM boot image; the second runs whenever the ARM boots from the EEPROM, before any host loader release; what triggers that boot is unknown) | 1 | none | established for the start-up calls; the EEPROM boot trigger unknown | S5 |
```

Evidence keys to add if the applier wants them separate: the new rows
cite `ucode/ge_listing/feedback.S.lst`, `libglcore/asm/soft/so_feedback.s`,
`libglcore/asm/KONA/kon_select.s`, and for section 2 `ucode/arm1.s` and
`ucode/tport.s`; all under S35 and S5.
