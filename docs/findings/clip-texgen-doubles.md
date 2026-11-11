# User clip planes, coordinate generation and double-precision colour (2026-11-10)

Five open questions about the pipe, answered from the firmware image
(`ucode/arm1.s`, `ucode/arm1_functions.md`), the geometry-engine listings
(`ucode/ge_listing/`), the client senders in libGLcore (`libglcore/asm/`) and
the existing notes in `ucode/ge_compute.md`. Everything is in the repository's
own words. Grades follow `AGENTS.md`: established means read directly from a
binary at the cited place; inferred means a reasoned reading, with the
reasoning; unknown names what would settle it.

`docs/command-table.md` is not edited here. The proposed rows below use its
column layout and are for its single writer to apply. Where a row cites
evidence, the source cell points at this file because the table has no source
label for these readings yet.

## Summary

| # | Question | Answer in one line |
|---|---|---|
| 1 | Clip plane multiplied by the inverse model-view? | Yes, by the pipe's geometry engine at the call; neither the client nor the processor does arithmetic. Doubles go raw, high word of each first. Singular model-view: unknown. |
| 2 | Which enable names for clip planes? | 0x3000-0x3005 only (six planes), on both 0x024 and 0x025. Anything else in 0x3006-0x3fff is an invalid-enumerant error. |
| 3 | Texgen equations, planes, modes, start-up | Object and eye linear are four-term dot products; the eye plane is pre-multiplied at the call by the same 16-word block as a clip plane; modes accepted 0x2400-0x2402 and 0x81f0-0x81f3; sphere map is not refused on r or q by the client or the processor, and the engine appears to ignore it there; start-up planes follow the OpenGL defaults. |
| 4 | Colour doubles 0x062 and 0x06a | Narrowed to single precision on the way in and then identical to the float forms (same command, no scale, no clamp at entry); the [0,1] limit comes from the later colour pass. |
| 5 | Sphere map with a zero denominator | Unknown. The engine has no visible zero test in the words read and the reciprocal-square-root seed of zero is untested. |

## 1. Token 0x0b4, the user clip plane

### What the client sends - established

`__glkonim_ClipPlane` (`libglcore/asm/kon/kon_cfuncs.s`, 0x0da65d50, 88 bytes)
first checks the plane name against 0x3000 and 0x3006 (`sltiu` with 12288 and
12294). Out of range it sends the set-error token 0xe4 with 0x500 and stops.
Otherwise it stores token 0xb4 (180), the plane name, then four 64-bit stores
of the doubles at offsets 0, 8, 16 and 24 of the caller's array, in that order.
There is no multiplication, no matrix read and no conversion. The display-list
recorder `__glkonlc_ClipPlane` (`kon_cdlfuncs.s`, 0x0da6c990) copies the same
four doubles, high word first, to list offsets 8-36 and does no arithmetic
either. The bound is the constant 6, not the context's plane count (the query
sender checks that count; see item 2).

### What the processor does - established

`arm_clipplane` (`arm1.u` +0x18cc0, `ucode/arm1.s` 0x0c018cc0-0x0c018d28) reads
nine words, not eight: eight reads at the data port and the ninth, last word,
through the offset-0x3c port. It selects all engines (port 0x428), sends the
plane name through port 0x8c0, writes the descriptor 0x78601000, forwards seven
words through port 0x840, sends the last through port 0x8c0 and starts the
engine handler addressed by the low half of state-block word 0xf8. It writes
nothing into the ARM state block, so the plane lives only in engine memory.
The existing table row says 8 words; the processor's own count is 9 (the plane
name plus 4 doubles). That is the one correction to the current row.

### What the engine does - established arithmetic, inferred meaning

`mgeb_UserClipPlane` (`ge.u` 0xf3a4, `ge_listing/glmodes.S.lst`, source lines
329-373) first calls `mMatrixInverse` when the stale-inverse condition 0x76 is
set (0xf3a4), so the inverse is brought up to date at the call. It reads
command word 0 (the name) and words 1-4 (the coefficients). The multiply words
at 0xf3ae-0xf3c2 take, for coefficient k = 1..4 (command word k), the four
engine words 0x1f + 4(k-1) .. 0x22 + 4(k-1), so result word j is the sum over k
of coefficient k times engine word 0x1f + 4(k-1) + j. Single-precision multiply
and multiply-add are used (operation codes 0x47f and 0x460), so the operands
reach the engine as single floats.

- **Established:** the plane is multiplied at the call by the 16-word block at
  engine words 0x1f-0x2e. The four sums are stored at the plane's slot,
  0x90a + 4n (n = name minus 0x3000), through the external-memory stores at
  0xf3c9-0xf3cf; the four operands themselves are moved and stored at slot
  offset 0x18-0x1b (stores 0xf3d1-0xf3d7), i.e. 0x922 + 4n, and the engine then
  runs `mUserClipResolve`. A later `glMatrixMode` or model-view change does not
  touch the stored plane. `arm_getclipplane` (0x0c0385c8) reads back from
  0x90a + 4n, so `glGetClipPlane` returns the transformed (eye-space) plane,
  which is what OpenGL specifies. The processor does no range check on the
  plane name there; the client does (name below the context count, error 0x500
  otherwise: `docs/libglcore-get-functions.md`).
- **Inferred:** the block at 0x1f-0x2e is the inverse of the model-view. The
  only writer is `mMatrixInverse` (`umatrix.s` 0x0ee7-0x0f57), whose listing
  reads the model-view at 0x2f-0x3e, forms cofactors, takes a reciprocal of a
  determinant and stores its results. By my reading of the final stores
  (0xf3e-0xf57: block base 0x1f plus 0x1f minus the store's F field, with the
  offset rule calibrated against `mMatrixMultCCW`'s sixteen stores), thirteen
  of them reach 0x20-0x22, 0x24-0x26 and 0x28-0x2e. I did not match stores to
  0x1f, 0x23 and 0x27 (the diagonal of the upper 3 x 3; the words that write
  them carry a store field I could not decode). Even so the writes cover the
  words that would hold the inverse translation (0x22, 0x26, 0x2a) and the
  bottom row (0x2b-0x2e), not only the upper 3 x 3. `ge_compute.md` calls it "the inverse of the
  3 x 3 block, for normals"; the translation words are written too, so the
  plane's fourth coefficient can pick up the inverse translation. The same
  block is what `mTexGenEyePlane` and `mTexGenEyeLine` use.
- **Inferred:** the product is the OpenGL rule p' = p M^-1 (plane as a row
  vector). It holds only if the block stores the inverse so that word 4k + j is
  row k, column j of M^-1. The normal transform in `mmo_ObjToClipSpaceN2E`
  multiplies by the same words with the same index pattern (normal component k
  against engine words 0x1f + 4k + j), and normals must come out right, so
  the layout is consistent. I did not evaluate the block numerically.

### Double form and word order

- **Established (client):** each coefficient is one 64-bit store (`sdc1`) of the
  caller's double; the CPU is big-endian, so the first word of each double on
  the wire is its high word (sign, exponent, top of the mantissa). The
  recorder stores high word at the lower list offset (lw 0($sp) to offset 8,
  lw 4($sp) to offset 12, and so on), the same order.
- **Established (precedent):** `arm_cleardepth` (0x0c01465c) documents the same
  order for another double: two payload words, high word first.
- **Inferred:** the eight coefficient words the processor forwards under
  descriptor 0x78601000 (seven through port 0x840, the last through 0x8c0) are narrowed from doubles to single floats before the engine
  handler reads them, because the handler multiplies them with single-precision
  operations and reads only command words 1-4 for eight data words. The same
  descriptor is used by the double matrix, rotate, scale, translate and
  depth-range paths. How the narrowing rounds, and where it happens
  (distributor or host interface), is **unknown**. What would settle it: a capture of the single-precision words that reach the engine for a double matrix whose elements are not exactly representable (for example 1 + 2^-30), compared with the host words; or the narrowing routine in whichever firmware path handles the double descriptor, found by following that descriptor's token entry in the ARM token list.

### Singular model-view - unknown

`mMatrixInverse` has no zero test on the determinant in the words read: the
only conditional transfers in 0x0ee7-0x0f57 are the entry predicate and the
return at 0x0f4f. The reciprocal is a seed (0x0f2f) plus a Newton step
(0x0f2f and 0x0f37 per `ge_compute.md`). The diagnostic (`ge_ops.md`) exercises the reciprocal seed only
on 2^24 and 49.4295, never on zero, and states that NaN behaviour is unknown.
So the plane stored for a singular model-view is whatever the seed gives for a
zero determinant, carried through the multiplies: unknown. It could be a large
finite plane or NaN/infinity coefficients. What would settle it: a model of the
seed unit that reproduces the diagnostic's seed table (`ge_ops.md` lines
90-98) and run on a zero input, or a capture of `glGetClipPlane` after
`glClipPlane` with a zero model-view scale on real hardware. The OpenGL
specification leaves the case undefined, so no behaviour is wrong.

### Proposed rows

Section 2.10 (replace the existing 0x0b4 row; payload corrected from 8 to 9):

```
| 0x0b4 | set a user clip plane: the plane name (0x3000 + n, n below 6), then the four plane coefficients as doubles (eight words, the high word of each double first); the pipe's engine multiplies them at the call by the 16-word inverse-model-view block at engine words 0x1f-0x2e and stores the eye-space plane at 0x90a + 4n, the unmultiplied operands at 0x922 + 4n; the client and the processor do no arithmetic | 9 | y | established for the word layout, the multiplier and the stored places; inferred that the block is the inverse model-view; singular behaviour unknown | S3, [findings](findings/clip-texgen-doubles.md#1-token-0x0b4-the-user-clip-plane) |
```

## 2. Clip-plane enables on the generic enable token

### Answer - established

The enable (0x024) and disable (0x025) handlers accept 0x3000-0x3005, the six
clip planes, and no other value in the 0x3000-0x3fff block.

`arm_enable` (`ucode/arm1.s` 0x0c023380-0x0c023444) dispatches by range on the
word at the port: 0xb10-0xde1 (large table `e0`), the two values 0x2a01 and
0x2a02 (table `e0a`), then `sub r1, r0, #0x3000; cmp r1, #5; bhi` at
0x0c0233c4-0x0c0233cc into the six-entry table `e1` (0x04047b38), then 0x4000-
0x4007 (lights, table `e2`), then 0x8010-0x81c7 (`e3`), then the special value
0x6000, and otherwise a tail call to `set_invalid_enum` at 0x0c015438.
`arm_disable` (0x0c023448) is the same chain with the `d` tables. The handlers
are `e_clip_plane0`-`e_clip_plane5` (0x0c018d30-0x0c018df4) and
`d_clip_plane0`-`d_clip_plane5` (0x0c018e1c-0x0c018ecc): each sets or clears a
flag byte at state-block offsets 0x77d-0x782, sends the name (0x3000 + n) to
port 0x478 and starts the engine handler (`mgeb_EnableUserClipPlane`,
`mgeb_DisableUserClipPlane`), which (inferred, `ge_compute.md`) sets the flag at engine word 0x904 + n and
runs `mUserClipResolve`. 0x3006-0x3fff therefore raise an invalid-enumerant
error. The common exit of the client's `__glkonim_Enable` (`kon_modes.s`) stores
token 36 and then the raw name; I did not trace whether any name in
0x3000-0x3005 takes an early exit that sends nothing, but the processor's
range is what bounds the pipe. iris's 0x3000-0x3005 match.

The query token 0x03c takes the same names (0x3000 + n), but its processor
handler `arm_getclipplane` has no range check; the client's bound is the
context's plane count at context offset 3600, which is why six is the
practical limit for a context that reports six.

### Proposed rows

Section 2.8 (replace both rows):

```
| 0x024 | enable a capability; the one word is a GL capability number. User clip planes are 0x3000-0x3005 (planes 0 to 5) and nothing else in 0x3000-0x3fff; any other unlisted number is an invalid-enumerant error | 1 | y | established for the clip-plane range and the error, inferred for the other capability ranges | S3, [findings](findings/clip-texgen-doubles.md#2-clip-plane-enables-on-the-generic-enable-token) |
| 0x025 | disable a capability; same ranges as 0x024, with the matching disable routines | 1 | y | established for the clip-plane range and the error, inferred for the other capability ranges | S3, [findings](findings/clip-texgen-doubles.md#2-clip-plane-enables-on-the-generic-enable-token) |
```

Section 2.13 query row for 0x03c: append "; the processor does not range-check
the name, the client does" to the existing role text; the grade stays
established.

## 3. Token 0x014, coordinate generation

### Sender and processor - established

`__glkonim_TexGenf`, `TexGeni`, `TexGend` (`kon_cfuncs.s`, 0x0da66590-0x0da66640)
and the vector forms `__glkonim_TexGendv`, `TexGenfv`, `TexGeniv`
(`kon_modes.s`, 0x0d94f000 onward) all send token 0x14, the coordinate, the
name, then seven value words: the scalar forms send the mode as one integer
word (a float or double argument is truncated, `trunc.w`) followed by six
zeros; for the planes (0x2501, 0x2502, 0x81f4, 0x81f5) four values and three
zeros; for 0x81f6 and 0x81f7 seven values. Double arrays are narrowed to float
word by word (`cvt.s.d`); no plane is multiplied by anything on the client.
No validation exists in the KONA senders (the command map points `glTexGen*`
straight at them).

`arm_texgenf` (0x0c024d9c) reads all nine words first, then:

- coordinate must be 0x2000-0x2003 (s, t, r, q): `sub r2, r0, #0x2000; cmp #3;
  bls`, otherwise `set_invalid_enum` (0x0c024df4);
- the name must be 0x2500 (mode), 0x2501 (object plane), 0x2502 (eye plane) or
  0x81f4-0x81f7 (0x0c024dfc-0x0c024e48); anything else is an invalid
  enumerant, and so is any name in 0x8100-0x81f3;
- for a mode, the value must be 0x2400, 0x2401, 0x2402 or 0x81f0-0x81f3
  (0x0c024e4c-0x0c024e68); a rejected value is an invalid enumerant. The check
  does not look at the coordinate. An accepted mode is kept at state-block
  offset 0x804 + 4n (0x0c024e6c-0x0c024e78); start-up value 0x2400 for all four
  (`initTextureState`, `arm1_functions.md`);
- then it sends the coordinate to port 0x478, the name and the seven values to
  port 0x840 and starts the engine handler `mgeb_TexGen` (high half of
  state-block word 0xec) through port 0x8c0.

Established for the accepted set: the listing of `arm_texgenf` at 0x0c024dfc-0x0c024e68 was re-read, and it accepts exactly the names 0x2500-0x2502 and 0x81f4-0x81f7 and the mode values 0x2400-0x2402 and 0x81f0-0x81f3. Inferred for the roles: the next sentence reads them as public enumerants and the assignment of the four distance names to 0x81f0-0x81f3 was not re-checked against the public registry in this pass.

The accepted modes, read as the public values: 0x2400 eye linear, 0x2401 object
linear, 0x2402 sphere map, and the four distance modes 0x81f0-0x81f3 of
SGIS_point_line_texgen (eye and object distance to point, eye and object
distance to line); the plane names 0x81f4-0x81f7 carry the reference points
and lines of those modes. The enumerant values are public; their roles are
read here from the handler labels in `ge_compute.md`.

### Equations and plane storage - inferred

Each coordinate n (0 = s .. 3 = q) has a mode word at engine word 0x3df + n,
an object plane at 0x3e3 + n + 4k and an eye plane at 0x3f3 + n + 4k, k = 0..3
(`ge_compute.md`, `texgen.S.lst`). The vertex modules (`utexgen.s`) compute:

- object linear (`mmo_TexGenObjLinear_ST`/`_RQ`, 0x0c30, 0x0c53): coordinate =
  the four-term dot product of the plane with the object position (vertex
  record words 0-3) - inferred;
- eye linear (`mmo_TexGenEyeLinear_ST`/`_RQ`, 0x0bea, 0x0c0d): coordinate = the
  four-term dot product of the eye plane with the eye position (record words
  0x13-0x16) - inferred;
- sphere map (`mmo_TexGenSphere_ST`, 0x0b85): s and t only. From eye position u
  and eye normal n it forms the reflection r = u - 2 n (n . u), computes
  1/sqrt(rx^2 + ry^2 + (rz+1)^2) by reciprocal-square-root seed plus Newton
  step, and produces s = 0.5 rx / sqrt(...) + 0.5, t = 0.5 ry / sqrt(...) + 0.5
  - inferred (the factor 0.5 and the constant 0.5 staged at 0x0bc4; I did not
  re-derive the exact multiply order);
- the four distance modes yield Euclidean distance to the stored point or
  perpendicular distance to the stored line, in object or eye space - inferred
  from the module names and operation mix, not re-derived.

### Eye plane pre-multiplied - established arithmetic

`mTexGenEyePlane` (0xcc6e, `texgen.S.lst` lines 402-428) calls `mMatrixInverse`
when the stale condition 0x76 is set, then runs the same multiply pattern as the
clip plane: coefficient k (command words 2-5) against engine words
0x1f + 4(k-1) .. 0x22 + 4(k-1) (imm=1f ... imm=2e at 0xcc77-0xcc8c), and stores
the four sums at 0x3f3, 0x3f7, 0x3fb and 0x3ff plus n (stores 0xcc94-0xcc9a).
So the eye plane is pre-multiplied at specification time by the same block as a
clip plane, with the same caveats about the block being the inverse model-view
and a singular model-view (items 1 and 4). The object plane (`mTexGenObjPlane`,
0xcc9e) is stored unchanged at 0x3e3 + n + 4k. The eye point and eye line forms
transform the point by the model-view (0x2f-0x3e) and the line direction by the
inverse block, then divide or normalise - inferred.

### Mode values and mode-to-module selection - inferred

`mgeb_TexGen` (0xcabe) compares the name and mode value with 16 stored
enumerants (0x2500, 0x2402, 0x2401, 0x2400, 0x81f3, 0x81f2, 0x2501, 0x2502,
0x81f7, 0x81f6, 0x2001, 1, 0x81f1, 0x81f0, 0x81f5, 0x81f4) and branches to a
per-mode routine that rewrites the mode word at 0x3df + n with the enable bits
(0x60000000) kept and the module address ORed in: eye linear 0x8000000 plus
0xbea (s, t) or 0xc0d (r, q); object linear 0xc30 or 0xc53; sphere map
0x0c000000 plus 0xb85; distance modes with the other module addresses. The
routine then runs `mTexGenResolve` (0xd11e).

### Sphere map on r or q

- **Established:** neither the client sender nor `arm_texgenf` refuses it; the
  mode check ignores the coordinate (0x0c024e4c-0x0c024e68), so GL_SPHERE_MAP on
  r or q is stored in the processor's state block at 0x804 + 4n and sent on.
  OpenGL calls this an invalid-enumerant error; this pipe raises none.
- **Inferred:** the engine ignores it. `mTexGenSph` (0xcd59) begins with a
  conditional transfer on condition 9 straight to `mTexGenResolve`, which
  `ge_compute.md` reads as "coordinate is r or q"; the mode word of that
  coordinate is not rewritten, so it keeps its previous mode. I confirmed the
  coordinate comparison against 0x2001 (the staged t constant, 0xcad7) but did
  not trace the flag timing from that compare to the branch at 0xcd59.
- **Inferred consequence:** `glGetTexGeniv` for r or q (`arm_gettexgenfv`
  returns the mode from the state block) reports 0x2402 while the engine still
  generates with the earlier mode. **Unknown:** no capture of that sequence.
  What would settle it: running the glTexGen call for r with sphere map in a
  model of the engine and reading mode word 0x3e1, or a hardware readback of
  vertex output.

### Start-up planes - inferred

`mGL_EX_Initialize` (`ge.S.lst` 0xae09-0xaf64, source lines 640-973) stores the
planes with external-memory stores whose data word is the one loaded nine words
earlier (the delay `ge_isa.md` fits best). Decoding those pairs gives, at
start-up, for both the object block (0x3e3-0x3f2) and the eye block
(0x3f3-0x402): 1.0 in words 0x3e3 and 0x3e8 (object) and 0x3f3 and 0x3f8 (eye),
all other words 0.0. That is plane s = (1, 0, 0, 0), plane t = (0, 1, 0, 0),
plane r = (0, 0, 0, 0), plane q = (0, 0, 0, 0), the OpenGL defaults, in the
interleaved layout 0x3e3 + n + 4k. The mode words are staged from 0x8000000
plus the eye-linear module addresses 0xbea (s, t) and 0xc0d (r, q) at
0xaeb0-0xaeb3, i.e. eye linear with generation off, matching the processor's
0x2400. The words 0x3df-0x3e2 themselves I did not resolve to the last bit;
the decode of the mode words is the weakest part of this start-up reading.
The point and line blocks at 0x403-0x42e start at 0.0 except 0x40f-0x412 and
0x41f-0x422, which hold 1.0; I read no further meaning into those.

### Proposed rows

Section 2.11 (replace the 0x014 row):

```
| 0x014 | texture-coordinate generation, float form (nine words): coordinate 0x2000-0x2003 (s, t, r, q); name 0x2500 (mode), 0x2501 (object plane), 0x2502 (eye plane), 0x81f4-0x81f7 (point and line reference forms); seven value words. A mode value is accepted when it is 0x2400, 0x2401, 0x2402 or 0x81f0-0x81f3 and is checked without reference to the coordinate, so sphere map on r or q is not an error; any other coordinate, name or mode value is an invalid-enumerant error. An eye plane is multiplied at the call by the 16-word inverse-model-view block (the same block as a clip plane); an object plane is stored unchanged | 9 | y | established for the sender, the processor's checks and the eye-plane multiply; inferred for the equations, start-up planes and the engine ignoring sphere map on r or q | S3, S59, S60, [findings](findings/clip-texgen-doubles.md#3-token-0x014-coordinate-generation) |
```

Section 7.14, append to the "Coordinate generation" paragraph:

```
The accepted mode values are 0x2400, 0x2401, 0x2402 and 0x81f0-0x81f3, tested without looking at the coordinate. The engine keeps, per coordinate n, a mode word at engine word 0x3df + n, an object plane at 0x3e3 + n + 4k and an eye plane at 0x3f3 + n + 4k (k = 0..3). Object and eye linear generation are four-term dot products of the plane with the object position or the eye position; the eye plane is multiplied at specification time by the 16-word inverse-model-view block at engine words 0x1f-0x2e. Sphere map is implemented for s and t only; for r and q the engine does not change the mode word (inferred), although the processor accepts and records the mode. At start-up the processor's modes are all 0x2400 (established) and the planes are s = (1, 0, 0, 0), t = (0, 1, 0, 0), r = q = (0, 0, 0, 0) (inferred). See findings/clip-texgen-doubles.md.
```

## 4. Colour double forms 0x062 and 0x06a

### Answer

They are narrowed to single precision on the way in and then handled exactly
like the float forms 0x063 and 0x06b. Nothing scales or clamps them at entry;
the limit to 0..1 happens later, in the vertex colour pass, for both.

- **Established (client):** `__glkonim_Color3d` (`kon_cfuncs.s`, 0x0da651e0)
  stores token 98 (0x62) and three 64-bit stores; `__glkonim_Color4d`
  (0x0da65340) stores token 106 (0x6a) and four. No arithmetic, no clamp, no
  conversion. `__glkonim_Color3f`/`4f` store token 99/107 and single words.
- **Established (map words):** `ucode/icu_map.tsv`: 0x062 entry 0xfa485187 and
  0x06a entry 0xf8485007 are routed (hardware) entries with command 144, the
  same as the float forms 0x063 (0xda4850c7) and 0x06b (0xd8485107). The
  difference is the component-size field (bits 29-30: 3 for double, 2 for
  float). The float flag (map bit 22) is set and the normalise flag (map bit
  24) is clear in all four, so the double data are taken as floating point and
  not scaled the way the integer forms are. The processor never runs.
- **Inferred:** the distributor narrows each double to a single float, which is
  how `docs/ge-routed-tokens.md` already reads these rows. The reasoning: the
  engine handler for command 144 is shared with the float form, so it must see
  floats.
  **Unknown:** the narrowing's rounding and its treatment of NaN and values out
  of float range. What would settle it: the same capture as above with a NaN and a value beyond the float range among the double elements, read at the engine's input; no shipped software or diagnostic sends one.
- **Inferred (the clamp):** a colour component leaves the engine clamped to
  [0, 1] by the unit-1 clamp 0x7c in `mmo_LiColorClamp` (`ulight.s` 0x0d73-
  0x0d7a) for unlit vertices, and by the final lighting clamps for lit ones
  (`mLiFinalLi`). Whether 0x7c also limits above 1.0 is itself an inference
  (`ge_ops.md`, "The clamp above 1.0"). Because the double and float forms
  share a handler, both are limited identically; the stored current colour
  before that pass is unclamped (what `glGetFloatv(GL_CURRENT_COLOR)` returns
  is a separate question not settled here).

### Proposed rows

Section 3.2 (replace the two double rows):

```
| 0x062 | set current colour, 3 components, double: three doubles narrowed to single precision by the distributor, then handled as the float form (command 144); no scale or clamp at entry, alpha filled by the hardware; the 0..1 limit comes from the later colour pass | geometry | yes | no | 144 | 6 | established for the word layout, command and absence of scale or clamp at entry; inferred for the narrowing and the later limit | S1, S4, [findings](findings/clip-texgen-doubles.md#4-colour-double-forms-0x062-and-0x06a) |
| 0x06a | set current colour, 4 components, double: four doubles narrowed to single precision by the distributor, then handled as the float form (command 144); no scale or clamp at entry; the 0..1 limit comes from the later colour pass | geometry | yes | no | 144 | 8 | established for the word layout, command and absence of scale or clamp at entry; inferred for the narrowing and the later limit | S1, S4, [findings](findings/clip-texgen-doubles.md#4-colour-double-forms-0x062-and-0x06a) |
```

## 5. Sphere map when the reflection denominator is zero

### Answer - unknown

The pipe's result is not determined by anything read so far. The denominator is
m = 2 sqrt(rx^2 + ry^2 + (rz + 1)^2), which is zero when the reflection vector
is (0, 0, -1), i.e. when the eye normal is perpendicular to the view direction
(a silhouette). The sphere-map module is `mmo_TexGenSphere_ST` (`utexgen.s`,
0x0b85-0x0be8). Findings:

- **Established:** the loop forms the three squares and sums them with
  multiply-adds (0x0b8e-0x0b99, 0x0bab-0x0bb5) and takes a
  reciprocal-square-root seed (`r110` 0x2bd at 0x0b9f, 0x2a7 and 0x2a3 at
  0x0ba7 and 0x0ba9) plus Newton steps (`M` 0x57f at 0x0ba5 and 0x0ba7); the results go to vertex-record words 0xb and 0xc through predicated
  stores at 0x0be5-0x0be8.
- **Established:** the listing has several predicated operations (condition
  0x211 at 0x0ba6, 0x0ba8-0x0baa, 0x0bc8-0x0bcb, 0x0bd4, 0x0bd6, 0x0bd9) whose
  predicate source I did not resolve. If one of them guards a zero-length
  vector, the output is a defined constant; if not, the output is whatever the
  seed and the multiply give for zero.
- **Unknown:** the seed unit's result for an input of zero. The diagnostic
  (`ge_ops.md` lines 95-98) fixes it only for two inputs, and the notes record
  NaN and infinity behaviour as unknown. The reflection normaliser `u` has the
  same problem when the eye position is the origin.
- What would settle it: (a) resolve the predicates by tracing the flag chain
  from the seed words to the 0x211 operations, which needs a model of the flag
  delay (`ge_ops.md`, "The twelve-word flag delay"); (b) run the module in a
  model of the engine with a seed table recovered from the diagnostic and
  input (0, 0, -1) as the reflection; or (c) read vertex-output texture
  coordinates from real hardware with a normal perpendicular to the view. None
  of these is done here.

No proposed table row: the table does not list vertex-module arithmetic. If
`ucode/ge_compute.md` is amended, the sphere-map entry could add "the result
for a zero denominator is unknown".

## Method notes

- The ARM listings are `ucode/arm1.s` (byte offsets are the image's `+0x...`).
- The engine addresses are word addresses in the production `ge.u`; the
  listings in `ucode/ge_listing/` give them in the first column.
- The start-up decode in item 3 and the store offsets in item 1 were done by
  script from the listing text and checked against `mMatrixMultCCW`'s stores
  for the address calibration; the scripts are not committed.
- Nothing was run on hardware or in an emulator.
