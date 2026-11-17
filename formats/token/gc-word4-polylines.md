# X graphics-context word 4 bit 31, and four polyline rules

Scope: the thirteen-word X graphics-context load (token 0x129) and the X
server's polyline commands (tokens 0x15b-0x15e). Sources: `software/xsgi/kona.so`
(IRIX 6.5.30m, via `software/xsgi/asm/kona/kon/kon.s`; addresses below are `kona.so`
virtual addresses), the pipe firmware `software/ucode/KONA/arm1.u`, the engine program
`software/ucode/KONA/ge.u` / `ge.hex` (listings in `software/ucode/ge_listing/`).
Grades: **established** (read from bytes),
**inferred** (reasoned, reasoning given), **unknown** (with the test that
would settle it). `formats/token/command-table.md` is not edited here; the rows to
adopt are under "Proposed command-table rows".

## Answers in one line each

1. Bit 31 of word 4 is set by the GC parser when the fill style is
   opaque-stippled, or tiled with a pipe-side tile. Established. That it means
   "paint the background where stipple bits are clear" is inferred, strongly.
2. No separate sender: the board is told through the GC load only. Word 4 is
   forwarded whole on the bus behind a 0xffffff mask word (re-verified from
   the instruction bytes), so bit 31 does not reach raster register 0x1c14
   (inferred from the mask reading). The handler is engine code, not firmware.
   A second store, to special register 0x23, takes word 0 or word 4 (unsettled,
   word 0 favoured). Whether bit 31 reaches anything is unknown.
3. No other sender in `kona.so` draws the background of a bit-31 fill after
   the load (the background senders that exist are listed in section 3).
   Inferred from the sender code; what the board does with the bit is unknown.
4. Last vertex of a polyline command: unknown for the pipe. Established for the
   host-side fallback.
5. Closing vertex equal to the first point: unknown for the pipe. Established
   for the host-side fallback (drawn once).
6. Relative polylines anchor at the drawable origin set by the position load,
   exactly like relative points: same converter and same origin words
   (the reads of control words 7 and 8 are established; that they are added,
   and that the relative converter seeds a running sum from them, is
   inferred). The absolute converter adds them inside its loop to every
   point; the relative converter reads them once before its loop.
7. A pending data run joins the next drawing command, and a polyline's
   remainder relies on it. Inferred for lines (sender design); inferred for
   points and rectangles (from the sender code); nothing shows it for polylines.
8. The sender's word counts after the token for 0x15b, 0x15c, 0x15d and 0x15e
   are 1, 7, 2 and 7 (established, all four X server builds). An earlier
   statement of 2, 7, 2, 7 was wrong for 0x15b: it took the map's count of 2,
   or the two points a remainder draws once its preload is counted, for the
   words sent. The map counts are 2, 12, 2, 12 and are not the sender's
   framing for any of the four. See the next section.
9. The position words are not zeroed before point and line commands: window
   drawing sends the window's own screen position.

## 1. What sets word 4 bit 31, and when

**Established.** The GC parser (`kon_parseGC`, 0x537a80) fills a per-GC private
record. The record's word at +0x14 is the first plane-mask word, and the
twelve other load words are taken from fixed offsets (`kon_loadGC` 0x4a6270,
stores at 0x4a6408-0x4a64d0: +0x34, +0x38, +0x3c, +0x40, then +0x14, +0x18,
+0x04, +0x08, +0x0c, +0x10, +0x00, +0x1c, +0x20). At its end the parser
(0x539800-0x539814) clears +0x14 to 24 bits, then (0x539818-0x539874) ORs in
0x80000000 when

- the GC's fill style (bits 25:24 of the word at gc+0x10, read at 0x539828 and
  0x539844) is 3, opaque-stippled; or
- the fill style is 1, tiled, and the private word at +0x88 (a pipe-side tile
  descriptor, tested at 0x539818) is non-zero.

This is the only sequence in the parser that ORs 0x80000000 into that word (the
other high-bit shifts in the parser pack colour values into other fields). The
only other routines that read the fill style are the window-GC validator and the
generic reducer, and neither touches the load words. A full search for every
other way to set the bit was not made.

**Which loaders pass it on.** Raw copy of +0x14, bit 31 included:
`kon_loadGC` (0x4a644c), the inline copies in `konPolyFillRectSolid`,
`konPolyFillRectStippledC` and `konPolyFillRectTiledCAccel`, `kon_loadAccelGC`,
`kon_loadBitmapGC` (0x4f3b08-0x4f3b14) and `kon_loadOpaqueBitmapGC`
(0x515cf4-0x515d00). Masked to 24 bits, bit 31 never sent: `kon_loadGeomGC`
(0x5303d8-0x5303e8), `kon_loadImgRectGC` and `kon_loadImgBitmapGC` (each ANDs
with 0x00ffffff), and the two nfb bitmap loaders build word 4 from their own
arguments.

**Why it reads as the opaque flag (inferred, strong).** The validator
(`konValidateWindowGC`, 0x553d40, switch at 0x554424-0x554534) chooses the
operation vector from the fill style. For a stipple that fits in the pipe's
stipple cache (private halfword +0x5c non-zero, set at 0x5543f8 only when the stipple
pixmap, gc+0x24, is at most 32 by 32 and the call at 0x5543b4 returns a result) both stippled (2) and opaque-stippled (3) get the same
vector, `konStippledCPrivOps` (data 0x5868b0: `konStippledCFillRects`,
`konStippledCFS`, `nfbSolidZeroSeg`). Only an uncached opaque stipple gets a
different vector, `nfbOpStippledPrivOps` (host two-pass). So for a cached
opaque stipple the one thing that differs on the wire from a plain stippled fill
is word 4 bit 31 (the background colour is in words 2-3 for both). Tiled with a
pipe tile also goes through `konTiledCAccelPrivOps` and gets the bit, so the bit
reads "two-colour pattern: clear pattern bits paint the background colour".
This is a reading of how the sender is built, not an observation of the board.

## 2. How the board receives it

**Established.** There is no firmware (`arm1.s`) handler for 0x129. The pipe's token map entry for 0x129 is the word
0x5859db41 at `arm1.u` +0xb3c (token map at +0x698, four bytes per token). Bit 0
is set (routed by hardware, no ARM handler), bits 6-10 give 13 payload words,
bits 15-23 give command number 179. The handler is engine code: `mgebi_XLoadGC`,
`ge.u` / `ge.hex` 0x4cf4-0x4d3a (`xload.S`).

**The 0xffffff mask is read from the instruction bytes (established).** `ge.hex` rows:

- 0x4d02 `782071e7cb00ffffff`: store of the 32-bit immediate 0x00ffffff
  (W31-0) to staging entry 0xb (E = W35-32 = 0xb).
- 0x4cf7 `782071e7c0013d1c14`: staging entry 0 = 0x013d1c14, the select for raster
  register 0x1c14; 0x4cf8 entry 1 = 0x013e1c15 (register 0x1c15).
- The write for word 4 is the four-step sequence at 0x4d0f-0x4d12: staged
  0x70000 to bus port 0x1f8 (D = 0xa), staged 0x00ffffff to port 0x1f5 (D = 0xb),
  select 0x013d1c14 to 0x1f8 (D = 0), then input word 4 to 0x1f5 (A = 0x1f,
  D = 4; bytes `2fc4bd32fac044f6a0`: A = W66-62 = 0x1f, D = W61-56 = 4). Word 5
  repeats it at 0x4d13 and 0x4d15-0x4d17 with the same mask entry 0xb and
  register 0x1c15.
- Mask pairing for words 6-12 (0x383c, 0xffc00f, 0x3f, 0x1e, 0x1f, 1, 1) reads
  the same way at 0x4d03-0x4d09 and 0x4d18-0x4d35, matching the table already
  in `formats/token/command-table.md` section 7.8.

So the engine sends word 4 whole and the mask 0x00ffffff as its own bus word in
front of it. **Inferred** (not observed on the raster side): the bus word is a
bit-enable mask, so bits 31:24 of register 0x1c14 are not written. Support: the
ARM's register writes (`arm1.u`, descriptor 0x58404800) carry the same three
parts, mask first, then select, then value, and `devices/rm/README.md` ("The shadow bit
mask") reads the first as a bit mask. On that reading bit 31 does not reach
register 0x1c14. If the chip ignored the mask it would reach a 24-bit register
and be dropped by the register width instead; either way it is not stored in
0x1c14.

**Second destination (unknown).** The same handler also
stores to engine special register 0x23 at 0x4d0a (`2fc4b842006344f6a0`: B = W53-49
= 0x1c, E = W29-24 = 0x23, A = 0x1f, D = 4; store type `r95` = 4), with no mask.
Two things are open:

- *Destination role.* No engine word reads special register 0x23 (a scan of all
  listings for A = 0x1c with D = 0x23 finds none); the primitive entry handlers
  write constants to it (35 writes in `entry.S`), so a hardware reader is
  plausible and unseen.
- *Source word.* Stores with `r95` = 4 send the lane-0 store-data register
  loaded nine words earlier (`software/ucode/ge_isa.md`, "The store-data register",
  inferred). The loading words at 0x4d01, 0x4d03, 0x4d04 and 0x4d05 read input
  words 0, 1, 2 and 3 (A = 0x1f, D = 0-3), and the four `r95` = 4 stores at
  0x4d0a, 0x4d0c, 0x4d0d and 0x4d0e sit exactly nine words after them. Read
  that way, 0x4d0a stores word 0 (the foreground colour high half), not word
  4, which is consistent with the other three stores taking words 1, 2 and 3.
  The same instruction word also names input word 4 through A/D, which is the
  direct reading and the one `software/ucode/ge_compute.md` adopts. The fit is exact
  for all four stores, so word 0 is the more likely source (inferred, because
  the store-data rule is itself inferred). If word 0 is right, word 4 reaches
  the board only on the bus data word, under the mask, and bit 31 reaches no
  stored state. Neither reading shows a consumer.

*Test that would settle both:* a raster-side or engine-side observation of
special register 0x23 (or the raster bit-enable behaviour) after loads whose
words 0 and 4 differ in a marked bit. No such capture is held. Without it the
honest statement is: bit 31 is dropped on the 0x1c14 path (inferred), and its
use elsewhere is unknown.

## 3. Where opaque behaviour could come from

**Reading.** If the board ignored bit 31, a bit-31 fill would put foreground
pixels only, and the sender code never follows the load with a separate token
that paints the background pixels the X protocol requires for opaque stipples
and two-colour tiles. That fits the sender argument in section 1 (inferred).
It cannot show what the board does: sender code shows what the server sends,
not what the pipe draws. What would settle the board's behaviour is a
raster-side observation (section 2 test).

**Senders of background pixels that exist in the module** (established from the module):
`X_BGPOINT*` from `konBresD` (dashed lines, double-dash), pixel set-up mode 5 from
`kon_loadNfbOpaqueBitmapGC`, and the image-text pair of a background box under
`kon_loadImgRectGC` followed by glyphs under `kon_loadImgBitmapGC`.

## Word counts of tokens 0x15b-0x15e

**Established (sender).** `konLineSS` in `kona.so` splits a polyline of n
points into full chunks (0x465dcc-0x465e0c, 0x4659b0-0x465b18 for the
relative form) and a remainder of fewer than six points. The framing in
`kona.so` is a store of the first word at the token's address (the FIFO
pointer plus 32 times the token number) and further words at the pointer
itself. What each token carries:

| Token | Words after the token number | Where in `kona.so` | Map count |
|---|---|---|---|
| 0x15b (absolute remainder, last point) | 1 | 0x466024-0x46604c (offset 0x2b60); the only store is to the token address, none at the pointer | 2 |
| 0x15c (absolute full chunk) | 7: first point at the token address, six through the six-word copy helper at 0x4275c0 | 0x465dcc-0x465e08 (offset 0x2b80) | 12 |
| 0x15d (relative remainder) | 2: one at the token address, one at the pointer | 0x465d48-0x465d88 (offset 0x2ba0) | 2 |
| 0x15e (relative full chunk) | 7: same pattern | 0x465a10-0x465a48 (offset 0x2bc0) | 12 |

The other three X server builds (`konad.so`, `konal.so`, `konas.so`) have the
same four sequences at the same file offsets, with the token number stored as a
word at the pointer instead of the address form: 0x65f14 (0x15b: token plus one
payload word), 0x65b14 (0x15d: token plus two), 0x65b84 (0x15c: token plus
seven), 0x656a0 (0x15e: token plus seven). Read in `konal.so`; `konad.so` and
`konas.so` show the identical store pattern for 0x15b and 0x15d (the 0x15c and
0x15e sequences were not read there). A literal search of every binary under
`root/` (the X modules, the three `libGLcore.so` ABIs, `libgl.so`,
`irsaudit`, the kernel objects, `setmon`, `ircombine`, `dmconf`, `Xsgi`) for the
four token offsets found no sender but these; the other hits are unrelated
immediates (the GL libraries and tools do not emit X drawing tokens).

*Preload.* A remainder of r points (r from 2 to 5 after the full chunks, 1
when n leaves one point) is sent as a data preload of r - 1 points (tokens
0x141-0x147, chosen at 0x465e68-0x465fd0, copy helpers at 0x427608 and
neighbours) immediately before the line token. So an absolute remainder is r
points on the wire (r - 1 preloaded plus the one-word 0x15b) and draws r - 1
segments; the "two points, one segment" in the old row counted the preload's
point, not words after the token.

**Engine side.** `mgesi_XLine` (0x5196) and `mgesi_XLineRel` (0x5187) read no
fixed number of operand words. Each takes the operand count from register 0x19,
subtracts one (F = 0x20 at 0x51a2, 0x5192) and passes it as the loop count
to `mAbsX` or `mRelX`, which read the operands through register 0x11 or 0x13
(`ge_compute.md`, X server drawing entries). The same handler serves 0x15b and
0x15c (command 176) and 0x15d and 0x15e (command 177), so nothing in engine
code separates the single from the burst form. There is no firmware (`arm1.s`)
handler: all four entries are routed by the host interface (bit 0 set; entries
0x58584881, 0x58584b01, 0x5858c881, 0x5858cb01 at `arm1.u` +0x698 plus four
bytes per token). The count in register 0x19 is set by the distributor, which
no software read here shows; if it were the map count, a seven-point chunk
would be twelve and the engine would draw eleven segments from seven points,
which the sender's explicit seven-word framing and the six-segment chunking
contradict. So the engine-side evidence is consistent with the sender's counts
and cannot confirm them independently.

**Grades.** Sender word counts 1, 7, 2, 7: established. That the pipe's host
interface takes in exactly those words (rather than the map's 2, 12, 2, 12):
inferred, because the shipped server uses these framings and no capture from a
real pipe is held. The absolute single form is the best-supported case against
the map count being the framing: a two-word read would consume the next
token's number as a point after every remainder of two to six points.

*Test that would settle it:* a hand-built command stream on the pipe or a
register-level model: a one-point preload, an absolute 0x15b with one payload
word, then a graphics-context-independent state token whose effect is visible,
and the same with a second payload word. A pipe that takes the map's count
would swallow the state token in the first stream.

**Wrong earlier claims.** "0x15b is two words": wrong for the sender (one).
"0x15d is two words": right as a wire count, but its source pointer is odd
(see section 6). The command table's single-form note said the single forms
carry two points because the segment count is the operand count minus one; that
is right, but those points are the preload plus the token, not two words after
it. The old opengl.md row's "2, 7, 2, 7" is corrected to 1, 7, 2, 7.

## 4-5. Polyline last vertex and closing vertex

**Established (sender, `konLineSS` 0x465810, 2172 bytes).** A polyline of n
points goes out in chunks. Each full chunk is `X_LINE6` (0x15c): the first point
at the token, then six more, seven points in all (0x465dcc-0x465e08). The next
chunk starts at the previous chunk's last point (cursor advance 0x465e0c), so
consecutive commands share their end vertex. A remainder goes out as data run
`X_DATAk` holding the first points, then `X_LINE` (0x15b) with the final point
(0x465e68-0x466048). There is no end-cap handling in this routine: it never reads
the cap style, never sends an extra point at the end, and never compares the last
point with the first. It is only used for a clip list of at most 12 rectangles;
otherwise it calls the host-side routine (0x466058).

**Established (host-side fallback, `konSlowLineSS` 0x56dd30).** It clips each
segment on the host (`miZeroClipLine`) and sends pixels as `X_POINT` tokens. After
the last segment (0x56ebd0-0x56ed38):

- if the cap style (bits 29:28 of the word at gc+0x10) is 0 (CapNotLast), it ends;
- otherwise it draws the last point, unless the last point equals the first
  (both compared with the drawable origin added, 0x56ebe8-0x56ec38) and the polyline
  has more than two points (end pointer is not the second point,
  0x56ec3c-0x56ec4c), which skips a closed outline's repeated start point. The point is clipped against
  the clip rectangles and sent as one `X_POINT` (0x56ecd8-0x56ed08).

So on this path every segment is sent without its end pixel, the final vertex is
drawn once as a separate point, and a polyline that closes on its first vertex
does not draw that vertex a second time. This is the usual zero-width line rule,
and it is the server's own statement of the rule.

**Unknown for the pipe.** Whether an `X_LINE`/`X_LINE6` command draws its last
vertex, and so whether a shared chunk vertex and a closing vertex are drawn
twice, is decided by the raster line rule, which no software read here states. What would settle it: a published description of the raster line rule, or a capture of the pixels a two-vertex `X_LINE` leaves at its last vertex on a pipe, compared with the same line sent as an `X_LINE6` chunk whose last vertex is shared with the next chunk.
What the engine does: `mgesi_XLine` (0x5196) sets the type words, takes the
segment count as operand count minus one (0x51a2) and goes through `mAbsX` (0x52c4)
to `mmo_XclipDrawLines` (0x4ead). The emit code (0x5020-0x5058) scales each
segment's direction by a reciprocal square root and a staged 0.5
(`ge.hex` 0x4eba, 0x3f000000) before the endpoint adds and subtracts at
0x504d-0x5050. The sign and the operands of those four adds were not traced, and
even if they were, whether the end pixel is included depends on the rasteriser.
Two facts that do hold: the sender relies on an explicit end point only in the
slow path, and the fast path sends no end-cap correction for any cap style, so
either the pipe's line rule matches the default (CapButt, last pixel drawn) and
shared vertices are accepted as drawn twice, or the fast path is only chosen when
this is harmless. Which GC state selects `konLineSS` over `konSlowLineSS` was not
found (the choice is made through the GC operation table, filled by relocation,
not by a name reference in code).

*Tests that would settle it:* (a) decode the operand registers of
`ge.hex` 0x5045-0x5050 to get the signed per-end shift, then take the rasteriser's
end rule from a register-level source; or (b) a capture from a real pipe of an X client
drawing a seven-point and an eight-point XOR polyline plus a closed polygon
outline, with the resulting pixels read back.

## 6. Relative polylines and the drawable origin

**Established.** `mgesi_XLineRel` (0x5187) and `mgesi_XPointRel` (0x5284) (and
the relative background-point and segment entries) all reach the same converter
`mRelX` (0x52a3); the absolute forms all reach `mAbsX` (0x52c4). Both converters
add the same two control-memory words, 7 and 8 (reads at 0x52aa-0x52ab for
`mRelX`, 0x52d4-0x52d7 for `mAbsX`). Those words are the position load's x and
y: `mgebi_XLoadPosition` (0x4d7c) stores them (0x4d8f, 0x4d85). `mRelX` seeds its
x and y accumulators from them at every command entry and adds each delta to the
point before it (loop 0x52ac-0x52b9, adds at 0x52b7-0x52b8). So the first point
of a relative command is an offset from the drawable origin, the same anchor as a
relative point, and each command restarts there: a relative command never starts
from the end of the previous command.

**Established (sender consequence).** `konLineSS` handles that restart itself:
for a second and later relative chunk it adds a running sum to the first point
before sending (0x4659b0-0x465af0). **Inferred, not tested:** the sum it carries
covers seven points (offsets 0 to 24 bytes) although the next chunk's first
point is the seventh, so that point's own delta looks counted twice; no relative
polyline of more than seven points is traced here, so this is only a
reading of the code. The relative remainder also advances by 8(n-1) bytes and
sends two words (0x465d48-0x465d88), where the absolute remainder advances by
4(n-1) and sends one (0x466024-0x46604c). Points are four bytes, so the
remainder occupies 4n bytes from the cursor and the two relative words lie at
8(n-1) and 8(n-1)+4: past the last point for every n of two or more. The absolute
form reads the last point. I found no reading of the relative arithmetic under
which the two words are the final point. Treat the relative single form as
suspect; whether it is a sender fault or an addressing I have not understood is
unknown. Test: send a nine-point relative polyline and read the resulting
vertices.

**What the converters add (control words 7 and 8).** `mAbsX` (0x52c4) reads
control words 7 and 8 inside its loop (0x52cd-0x52dc), in four operations per
pass at 0x52d4-0x52d7 (two vertices, x and y each), so every point gets the
origin added. `mRelX` (0x52a3) reads the same two words once, before its loop
(0x52aa-0x52ab; the loop is 0x52ac-0x52b9), into its running-sum accumulators,
so the origin enters each output through the sum, not by a per-point add. The
immediates 7 and 8 and their positions are read from the instruction words
(established); that the operations are integer adds, and that words 7 and 8 hold the
position load's x and y, rest on the ISA decode and the store reading of
`mgebi_XLoadPosition` in `ge_compute.md`, which is graded inferred, so the claim
that both converters add the position to every point is inferred, not
established.

**Senders do not zero the position.** The position load is sent by
`kon_loadGC` (0x4a6270; stores 0x4a62e8-0x4a631c, token offset 0x2540) with the
drawable record's halfwords +8 and +10 (x, y) and +12 and +14 (width, height),
and `konLineSS` calls it (0x465940) before every line token. For a window
those are the window's screen position, nonzero unless it sits at the origin;
a pixmap has zero. Zero comes only from the screen-wide senders, which send
0, 0, screen width, screen height. Box senders mostly zero the position first; the
per-routine breakdown is in the drawable-origin row of `command-table.md`
section 7.18. By the sender code a line after a nonzero origin is the normal
case.

## 7. Does a pending data run join a line

**Inferred.** The `X_DATAk` words are routed to the register-write
command (`software/ucode/icu_map.tsv`), yet the sender uses them strictly as a preload for
the next drawing command (points, rectangles and boxes in the senders that
use them). The run's size plus the closing token's payload is the number of
items drawn (for example 6 + 2 words = four rectangles), so the run joins the
command that follows it.

**Inferred for polylines.** `konLineSS` sends a polyline remainder of r points
as a data run of r-1 points followed by an `X_LINE` carrying one point
(0x465e68-0x466048; for relative 0x465d48-0x465d88, two words). If the run did
not join the line, every polyline of two to six points would draw nothing,
because the final `X_LINE` alone has one point. The engine side agrees in form:
`mgesi_XLine` derives the segment count from the operand count, which is the
only quantity that could include the run (`ge_compute.md`, 0x51a2). So a
polyline continues across the data/line boundary and the run is part of one
polyline. Not established: whether the run joins a command of a different family
(a data run followed by a different token), since the sender never does it. Test: a hand-built stream with a data run before a
point command versus before a line command.

## Side finding (affects an existing row)

`formats/token/command-table.md` section 7.8 lists "word 6, low five bits, bitmap and
glyph-image loads: cleared". In `kon_loadBitmapGC` the cleared local variable
(`&= ~0x1f`) is the eleventh word sent, word 10 (the bus pixel-format code, whose
engine mask is 0x1f), at 0x4f3ac0-0x4f3ad0 and 0x4f3b68-0x4f3b70; word 6 is the
private record's +0x04 copied unchanged. The same holds for
`kon_loadImgBitmapGC` (0x52ec00 area) and `kon_loadNfbBitmapGC`. The row should
say word 10.

## Proposed command-table rows

Section 7.8, replace the word 4 row:

| 4 | plane write mask, red and green 12-bit fields (bits 23:0). Bit 31 is not part of the plane mask: the X server sets it when the fill is an opaque stipple, or a tile held in the pipe | bits 23:0 to raster register 0x1c14 (shadow word 45) under bus mask 0xffffff; the word 4 operand is also named by the special register 0x23 store at `ge.u` 0x4d0a (source word uncertain, see the next row) | mask and register: established; masked write semantics: inferred; effect of bit 31 anywhere: unknown | `kona.so` 0x539818-0x539874, `ge.u` 0x4d02, 0x4d0f-0x4d12, 0x4d0a |

Section 7.8, the "what the engine does with word 4" row, restate:

| special register 0x23 store at `ge.u` 0x4d0a | destination established; no engine word reads it. Data source is word 4 by the operand, word 0 by the nine-word store-data fit (exact for the four stores at 0x4d0a-0x4d0e, so favoured) | - | source word unknown (word 0 favoured, inferred) | `ge.u` 0x4d01-0x4d0e |

Section 7.8, add to "values the X module is seen to put":

| word 4, bit 31 | set by `kon_parseGC` for fill style 3 (opaque stipple), or fill style 1 (tiled) with a pipe tile at private +0x88; sent by `kon_loadGC` and the inline fill copies and by the bitmap loaders, not by the geometry, image-rectangle and image-bitmap loaders. | established | `kona.so` 0x53985c, 0x4a644c, 0x5303d8 |
| meaning of word 4 bit 31 | opaque: clear stipple bits paint the background colour of words 2-3 (cached stipples and two-colour tiles use the same fill vector as plain stippled fills) | inferred | `kona.so` 0x554424-0x554534 |
| word 10, low five bits, bitmap and glyph-image loads | cleared (this replaces the row that says word 6) | established | `kona.so` 0x4f3ac0, 0x4f3b68 |

Polyline rows (near tokens 0x15b-0x15e):

| polyline chunking | seven points per `X_LINE6`/`X_LINE6_R`, next chunk starts at the previous chunk's last point; remainder is a data run of r-1 points plus a one-word `X_LINE` (0x15b), or for relative a two-word `X_LINE_R` (0x15d). Words after the token: 1, 7, 2, 7 for 0x15b to 0x15e | sender counts established; pipe intake inferred | `kona.so` 0x465dcc-0x466048 |
| polyline last vertex, closing vertex | pipe: unknown (rasteriser end rule). Host fallback: last vertex sent once as a point unless CapNotLast or closed onto the first point | pipe unknown; fallback established | `kona.so` 0x56ebd0-0x56ed38 |
| relative polyline anchor | origin from the position load (control words 7, 8), restarted at every command, same converter as relative points; the relative converter reads the words once to seed its sum, the absolute one adds them per point | origin-word reads established; adds and seeding inferred | `ge.u` 0x52a3-0x52b9, 0x52c4-0x52dc, 0x4d7c |
| data run before a line | joins the line command (one polyline); run followed by points and rectangles joins them (sender design) | inferred | `kona.so` 0x465e68 |

## What was not done

Not traced: the operand registers of the four endpoint adds at `ge.hex` 0x504d-0x5050;
the rasteriser's end-pixel rule; which GC state selects `konLineSS`; whether
special register 0x23 has a hardware reader. 
