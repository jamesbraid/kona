# X graphics-context word 4 bit 31, and four polyline rules

Scope: the thirteen-word X graphics-context load (token 0x129) and the X
server's polyline commands (tokens 0x15b-0x15e). Sources: `ddx/kona.so`
(IRIX 6.5.30m, via `ddx/asm/kona/kon/kon.s`; addresses below are `kona.so`
virtual addresses), the pipe firmware `ucode/KONA/arm1.u`, the engine program
`ucode/KONA/ge.u` / `ge.hex` (listings in `ucode/ge_listing/`), and one
recorded X session (the 4Dwm desktop recording `onyx2-deskside-irix-4dwm.kona.rec`,
SHA-256 `8c86364169ee8ec55119fb9aa7c330dea4d0243f9501de6f021cbe05d2d8cba0`).
Grades: **established** (read from bytes or counted in the recording),
**inferred** (reasoned, reasoning given), **unknown** (with the test that
would settle it). `docs/command-table.md` is not edited here; the rows to
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
3. In the recorded session the 60 loads with bit 31 set are followed only by
   the same stipple and fill tokens that plain stippled fills use; no other
   sender draws their background. Established for the recording; what the
   board does with them is unknown.
4. Last vertex of a polyline command: unknown for the pipe. Established for the
   host-side fallback.
5. Closing vertex equal to the first point: unknown for the pipe. Established
   for the host-side fallback (drawn once).
6. Relative polylines anchor at the drawable origin set by the position load,
   exactly like relative points: same converter and same origin words
   (established); that the converter seeds a running sum from them is inferred.
7. A pending data run joins the next drawing command, and a polyline's
   remainder relies on it. Inferred for lines (sender design); established for
   points and rectangles in the recording; no polyline command occurs in the
   recording.

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
  in `docs/command-table.md` section 7.8.

So the engine sends word 4 whole and the mask 0x00ffffff as its own bus word in
front of it. **Inferred** (not observed on the raster side): the bus word is a
bit-enable mask, so bits 31:24 of register 0x1c14 are not written. Support: the
ARM's register writes (`arm1.u`, descriptor 0x58404800) carry the same three
parts, mask first, then select, then value, and `docs/rm.md` ("The shadow bit
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
  loaded nine words earlier (`ucode/ge_isa.md`, "The store-data register",
  inferred). The loading words at 0x4d01, 0x4d03, 0x4d04 and 0x4d05 read input
  words 0, 1, 2 and 3 (A = 0x1f, D = 0-3), and the four `r95` = 4 stores at
  0x4d0a, 0x4d0c, 0x4d0d and 0x4d0e sit exactly nine words after them. Read
  that way, 0x4d0a stores word 0 (the foreground colour high half), not word
  4, which is consistent with the other three stores taking words 1, 2 and 3.
  The same instruction word also names input word 4 through A/D, which is the
  direct reading and the one `ucode/ge_compute.md` adopts. The fit is exact
  for all four stores, so word 0 is the more likely source (inferred, because
  the store-data rule is itself inferred). If word 0 is right, word 4 reaches
  the board only on the bus data word, under the mask, and bit 31 reaches no
  stored state. Neither reading shows a consumer.

*Test that would settle both:* a raster-side or engine-side observation of
special register 0x23 (or the raster bit-enable behaviour) after loads whose
words 0 and 4 differ in a marked bit. No such capture is held. Without it the
honest statement is: bit 31 is dropped on the 0x1c14 path (inferred), and its
use elsewhere is unknown.

## 3. Where opaque behaviour comes from in the 4Dwm recording

**Method.** The recording's command window writes were parsed as token plus
payload (word counts from `ucode/icu_map.tsv`; the IP27 module writes every
token as data at one offset). 1195 `0x129` loads parse; 60 have word 4 bit 31 set
(21 with word 4 = 0x80ffffff and 24-bit RGB format word 10 = 8, 39 with word 4 =
0x80f00fff and colour-index format word 10 = 5). Counted over all loads: 1135
have it clear.

**Established, from those 60 loads.**

- Every one is followed by the stipple sequence (store stipple 0x13d, rotate
  0x13e, load stipple 0x13c) except one chain cut short by the parser; then
  clip loads and span tokens (`X_SPANS6` 215, `X_SPANS2` 67, `X_SPANS` 27
  sends over all 60 chains), plus `X_RECT` 2 and `X_POINT` 1, then load stipple
  0xffffffff.
- 74 loads with bit 31 clear have the same stipple sequence and `X_RECT`.
  Same tokens, different word 4.
- Foreground and background colour words differ in all but two of the 59
  stipple-fill loads with bit 31 set; for the bit-31-clear stipple fills the
  background word is whatever the GC holds.
- No token in the stream paints a background for these fills: there are no
  background-colour point commands (`X_BGPOINT` 0x15f-0x161: zero sends; the
  matching values in the file are payload words), no opaque-bitmap set-up (pixel
  set-up word 1 = 5: zero of 448; the values seen are 0, 1, 2, 4), and the
  chains before each bit-31 fill, sampled at four places, hold unrelated fills.
  A full pairing of each bit-31 fill with a preceding solid fill of its own box
  was not done.

**Reading.** If the board ignored bit 31, these 60 fills would put foreground
pixels only, and nothing in the stream would paint the background pixels the X
protocol requires for opaque stipples and two-colour tiles. That fits the
sender argument in section 1 (inferred). It cannot show what the board does:
the recording holds what the server sent, not what the pipe drew. The
screen comparison of two implementations is the same kind of evidence and is
not used here. What would settle the board's behaviour is unknown without a
raster-side observation (section 2 test).

**Other senders of background pixels that exist in the module but are absent
from this recording** (all established from the module, none seen in the stream):
`X_BGPOINT*` from `konBresD` (dashed lines, double-dash), pixel set-up mode 5 from
`kon_loadNfbOpaqueBitmapGC`, and the image-text pair of a background box under
`kon_loadImgRectGC` followed by glyphs under `kon_loadImgBitmapGC`. Image text
may be present: 68 scissor loads and 90 mode-4 glyph set-ups occur, but not told
apart from plain text here.

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
twice, is decided by the raster line rule, which no software read here states.
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
end rule from a register-level source; or (b) a recording of a real X client
drawing a seven-point and an eight-point XOR polyline plus a closed polygon
outline, with the resulting pixels read back. The 4Dwm recording contains no
polyline command: values 0x15b-0x15f appear only as payload words, and every
`0x129` load chain parses without one.

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
polyline of more than seven points occurs in the recording, so this is only a
reading of the code. The relative remainder also advances by 8(n-1) bytes and
sends two words (0x465d48-0x465d88), where the absolute remainder advances by
4(n-1) and sends one (0x466024-0x46604c); whether either is intended is
unknown. Test: send a nine-point relative polyline and read the resulting
vertices.

## 7. Does a pending data run join a line

**Established (recording).** The `X_DATAk` words are routed to the register-write
command (`ucode/icu_map.tsv`), yet the sender uses them strictly as a preload for
the next drawing command. In the recording every one of the 401 data runs is
immediately followed by a point, rectangle or box token, never by a load or
another data run: DATA1/POINT 115, DATA2/POINT 88, DATA2/RECT 8, DATA3/POINT 82,
DATA4/POINT 52, DATA4/RECT 4, DATA4/BOX 2, DATA6/RECT 44, DATA6/BOX 6 (counted
over the chains that start at a `0x129` load). The run's size plus the closing
token's payload is the number of items drawn (for example 6 + 2 words = four
rectangles), so the run joins the command that follows it.

**Inferred for polylines.** `konLineSS` sends a polyline remainder of r points
as a data run of r-1 points followed by an `X_LINE` carrying one point
(0x465e68-0x466048; for relative 0x465d48-0x465d88, two words). If the run did
not join the line, every polyline of two to six points would draw nothing,
because the final `X_LINE` alone has one point. The engine side agrees in form:
`mgesi_XLine` derives the segment count from the operand count, which is the
only quantity that could include the run (`ge_compute.md`, 0x51a2). So a
polyline continues across the data/line boundary and the run is part of one
polyline. Not established: whether the run joins a command of a different family
(a data run followed by a different token), since none was sent in the recording
and the sender never does it. Test: a hand-built stream with a data run before a
point command versus before a line command.

## Side finding (affects an existing row)

`docs/command-table.md` section 7.8 lists "word 6, low five bits, bitmap and
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

| word 4, bit 31 | set by `kon_parseGC` for fill style 3 (opaque stipple), or fill style 1 (tiled) with a pipe tile at private +0x88; sent by `kon_loadGC` and the inline fill copies and by the bitmap loaders, not by the geometry, image-rectangle and image-bitmap loaders. Recording: 60 of 1195 loads, always before stipple store/load tokens and `X_RECT`/`X_SPANS*` | established | `kona.so` 0x53985c, 0x4a644c, 0x5303d8; 4Dwm recording |
| meaning of word 4 bit 31 | opaque: clear stipple bits paint the background colour of words 2-3 (cached stipples and two-colour tiles use the same fill vector as plain stippled fills) | inferred | `kona.so` 0x554424-0x554534 |
| word 10, low five bits, bitmap and glyph-image loads | cleared (this replaces the row that says word 6) | established | `kona.so` 0x4f3ac0, 0x4f3b68 |

Polyline rows (near tokens 0x15b-0x15e):

| polyline chunking | seven points per `X_LINE6`/`X_LINE6_R`, next chunk starts at the previous chunk's last point; remainder is a data run of r-1 points plus one-point `X_LINE`, or for relative two words | established | `kona.so` 0x465dcc-0x466048 |
| polyline last vertex, closing vertex | pipe: unknown (rasteriser end rule). Host fallback: last vertex sent once as a point unless CapNotLast or closed onto the first point | pipe unknown; fallback established | `kona.so` 0x56ebd0-0x56ed38 |
| relative polyline anchor | origin from the position load (control words 7, 8), restarted at every command, same converter as relative points | established | `ge.u` 0x52a3-0x52b9, 0x4d7c |
| data run before a line | joins the line command (one polyline); run followed by points and rectangles joins them in the recording | inferred (lines); established (points, rectangles) | `kona.so` 0x465e68, recording |

## What was not done

Not traced: the operand registers of the four endpoint adds at `ge.hex` 0x504d-0x5050;
the rasteriser's end-pixel rule; which GC state selects `konLineSS`; whether
special register 0x23 has a hardware reader. The recording was parsed with a
simple token walk (word counts from the token map); a chain that hit an unknown
token was cut, so the 60 bit-31 loads are a count of parsed loads, not a proof
that none were missed.
