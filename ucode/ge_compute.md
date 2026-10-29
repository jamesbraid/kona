# What the geometry-engine routines compute

The per-label catalogue in [ge_handlers.md](ge_handlers.md) says where each label sits, what reaches it and which operations its words use. This page goes one step further for the routines an emulator needs first: what each one takes in, what it writes out and the arithmetic between them. Every entry was written after reading the routine's words in [ge_listing/](ge_listing/) (`ge.u`, IRIX 6.5.30m) with the operation codes of [ge_ops.md](ge_ops.md) and the field readings of [ge_isa.md](ge_isa.md).

Facts are labelled **established** (read from the words at the addresses given) or **inferred** (with the reasoning). The operation of a word is established when its code is one the diagnostic test fixes; how the two arithmetic units route their register operands (the decoded groups `r148`, `r128` and `r110`) is not mapped, so the order of terms inside a sum, and which partial sum a word extends, come from the memory addresses and offsets the words name, not from a register trace.

## Engine memory the transform code shares

**Established** from the stores of the load-matrix handlers (form-14 and form-5 words with `r211` = 3 and `r95` = 4, an immediate address, in `matrixfunc.S`) and from the form-5 reads with C = 0x1b and `r95` = 0x13 in the transform modules:

| Words | Contents | Writer |
|---|---|---|
| 0x1f-0x2e | inverse of the modelview, for normals | `mMatrixInverse` |
| 0x2f-0x3e | modelview matrix, 16 words in the order the host sends them | `mgeb_LoadMatrix_Modelview` (operand words 0-15) |
| 0x3f-0x4e | projection matrix | `mgeb_LoadMatrix_Projection` |
| 0x4f-0x5e | composite object-to-clip matrix | `uMatrixMultCCC` |
| 0x5f-0x6e | texture matrix | `mgeb_LoadMatrix_Texture` |
| 0xa3-0xba | six user clip planes in eye space, four words each | the clip-plane handler |
| 0x190-0x19f | colour matrix | `mgeb_LoadMatrix_Color` |

**Inferred:** the host sends a GL matrix column by column, so word 4j + i of each block is row i of column j. Every matrix handler also stores to special register 0x29 or 0x2b (B = 0x1c, E = 0x29 or 0x2b), and the transform modules start with conditional calls on `cc` 0x72 and 0x76 to the routines that rebuild the composite and the inverse: those two registers are the dirty flags the conditions test.

## Vertex records and the transform loop

**Established** from the words of `uxform.s`. Every transform module handles two vertices per pass. Address register 1 and 2 point at the two vertex records (loaded from registers 0x10 and 0x11 in the prologue), registers 3 and 4 trail them by one pass (copied from 1 and 2 halfway through the loop), and register 0x13 is added to registers 1 and 2 at the end of a pass to step both to the next pair. Register 0 is loaded from register 0x19 and stepped by F = 0x25, and the relative transfer at the end of the loop body (`cc` 0x11, condition group 7) repeats while it has not run out. Words of a vertex record, as the transform code reads and writes them through those registers:

| Offset | Contents |
|---|---|
| 0-3 | object position x, y, z, w (input) |
| 8-0xa | object normal (input) |
| 0xf-0x11 | eye-space normal (output of the normal transforms) |
| 0x13-0x16 | eye-space position (output of the eye transforms) |
| 0x17-0x1a | clip-space x, y, z, w (output of the clip transforms) |

## Transform modules (uxform.s)

- `mmo_ObjToClipSpace` (`uxform.s` lines 44-97): **inferred**, the plain vertex transform
  of the fixed-function path. It takes object positions (record words 0-3, two vertices per pass) and multiplies each by the
  composite matrix at engine words 0x4f-0x5e, four multiplies per input component, summed in two partial chains that the four
  plain adds at 0x123b-0x123e combine. The results are the clip-space x, y, z and w, stored back into the record at offsets
  0x17-0x1a. It then computes the six frustum distances w + x, w - x, w + y, w - y, w + z and w - z with unit-1 float adds and
  subtracts and writes them to special registers 0x10-0x15 (B = 0x1c, E = 0x10-0x15, words 0x123f-0x124a), where the clip
  hardware turns their signs into the clip codes the clippers read back from register 0x0d. The first word, at 0x1218,
  is a conditional call on `cc` 0x72 that recomputes the composite matrix when the modelview or projection changed.
- `umo_ObjToClipSpace`: **inferred**, second name the label table gives the code at 0x1218 (`uxform.s` line 44), so it
  takes a pair of object positions as input, multiplies them by the composite matrix 0x4f-0x5e and returns the same result: clip coordinates in
  record words 0x17-0x1a and six frustum distances in special registers 0x10-0x15.
- `lXF1` (`uxform.s` lines 52-97): **inferred**, the loop body of `mmo_ObjToClipSpace`, entered at 0x121f after a
  seven-word prologue. Each pass consumes two vertex records, runs 32 multiplies of their x, y, z and w inputs against the
  composite matrix, stores the clip-space output for both, and computes the w-relative plane distances. The relative transfer
  at 0x1242 (immediate -0x23) returns to it; the group-31 transfer at 0x1243 ends the command after the last pair.
- `mmo_ObjToClipSpaceN2E` (`uxform.s` lines 104-176): **inferred**, the clip transform for lit vertices. Besides the
  position transform of `mmo_ObjToClipSpace` it takes the object normal (record words 8-0xa) and multiplies it by the 3 x 3
  upper-left block of the inverse modelview (engine words 0x1f-0x21, 0x23-0x25, 0x27-0x29, three words of each of the first
  three columns), storing the eye-space normal as output to record words 0xf-0x11. Its second word, at 0x124d, calls `mMatrixInverse` on
  `cc` 0x76 to rebuild that inverse first. The normal is not rescaled here.
- `umo_ObjToClipSpaceN2E`: **inferred**, the second label at 0x124c (`uxform.s` line 104): same words, so it also transforms
  input normals in words 8-0xa by the inverse-modelview block at 0x1f-0x29 into an eye-space result in words 0xf-0x11, besides
  producing clip coordinates and frustum distances for each position.
- `lXF2` (`uxform.s` lines 113-176): **inferred**, the two-vertex loop of the normal-transforming clip module, from 0x1254.
  Per pass it takes two normals and two positions as input, multiplies the normals by nine inverse-modelview words and the two positions by the sixteen composite words,
  stores the normal outputs at E = 0xf-0x11 and the clip outputs at E = 0x17-0x1a, then derives the six plane distances
  for special registers 0x10-0x15. It loops through the relative transfer at 0x1289.
- `mmo_ObjToClipSpaceN2EN` (`uxform.s` lines 183-291): **inferred**, the normal-transforming clip module with
  GL_NORMALIZE. After the same inverse-modelview product as `mmo_ObjToClipSpaceN2E`, it sums the squares of the three eye
  normal components, takes a reciprocal square root (the Newton-Raphson step 0x57 run twice per vertex, at 0x12de-0x12df and
  0x12ea-0x12eb) and multiplies each component by it, so the eye-space normal output it stores at record words 0xf-0x11 (through the
  trailing registers 3 and 4, words 0x12f2-0x12f8) has unit length.
- `umo_ObjToClipSpaceN2EN`: **inferred**, the label sharing 0x1293 with the normalising clip module (`uxform.s` line 183);
  its result is a unit eye-space normal, which it normalises in record words 0xf-0x11, computed from the input normal in words 8-0xa with a
  reciprocal square root, plus the clip-space position and the six frustum distances.
- `lXF3` (`uxform.s` lines 192-291): **inferred**, the loop of the normalising module, from 0x129b to the transfer at
  0x12f4. Each pass takes two positions and two normals, computes clip coordinates (stores at E = 0x17-0x1a), the frustum
  distances for special registers 0x10-0x15, the dot product n . n of each eye normal, and the scaled normal output.
- `mmo_ObjToEyeSpace` (`uxform.s` lines 558-598): **inferred**, the eye-space transform that lighting, fog and texture
  generation need. It takes object positions (record words 0-3) and multiplies them by the modelview at engine words
  0x2f-0x3e, sixteen multiplies per vertex, storing the eye-space x, y, z and w as output in record words 0x13-0x16. It does
  no clip arithmetic and touches no special register.
- `umo_ObjToEyeSpace`: **inferred**, alias at 0x12fe (`uxform.s` line 558) of the modelview-only module: input record words
  0-3, result in words 0x13-0x16; it computes each output component as a four-term sum of input components times modelview words 0x2f-0x3e.
- `lXF5` (`uxform.s` lines 565-598): **inferred**, the loop of the eye-space module at 0x1304: 32 multiply-adds per pass
  transform two input positions, the eye results are stored at offsets 0x13-0x16, and the transfer at 0x131b (immediate -0x17)
  repeats it.
- `mmo_ObjToEyeSpaceAndTwoUserTR` (`uxform.s` lines 605-661): **inferred**, the eye transform for the case of two
  enabled user clip planes. It computes the eye position from the modelview as `mmo_ObjToEyeSpace` does, then evaluates the
  plane equation of each plane, the dot product of the eye position (record words 0x13-0x16) with the plane's four words at
  0xa3-0xa6 and 0xa7-0xaa, and writes the two distance results to special registers 0x16 and 0x17 (stores at 0x1357-0x135a), the
  user-clip inputs the clip hardware reports in register 0x0e.
- `umo_ObjToEyeSpaceAndTwoUserTR`: **inferred**, second label at 0x1325 (`uxform.s` line 605). It takes the position in
  words 0-3 and yields two outputs per vertex besides the eye position: plane distances that it computes as four-term dot
  products against user plane words 0xa3-0xaa, sent to special registers 0x16-0x17.
- `lXF12` (`uxform.s` lines 612-661): **inferred**, the loop of the two-plane module at 0x132b; each pass transforms two input
  positions, reads their eye coordinates back through the trailing registers (A = 3 and 4, D = 0x13-0x16) and multiplies them
  by the eight plane words, whose sums are the plane-distance results; the relative transfer at 0x1352 closes it.
- `mmo_ObjToEyeSpaceAndSixUserTR` (`uxform.s` lines 668-757): **inferred**, the same eye transform with all six user
  clip planes. After the modelview product it evaluates six plane equations against the eye position, using plane words
  0xa3-0xba in order as the second operand of each dot product, and stores the six distance results to special
  registers 0x16-0x1b.
- `umo_ObjToEyeSpaceAndSixUserTR`: **inferred**, the u-name at 0x135c (`uxform.s` line 668) of the six-plane module: it
  consumes object positions, multiplies them into eye space with modelview words 0x2f-0x3e, and its plane-distance results
  for planes 0-5 go to special registers 0x16-0x1b.
- `lXF7` (`uxform.s` lines 675-757): **inferred**, the six-plane loop at 0x1362. Its 80 multiply-adds per pass are 32 for
  the two eye positions and 48 for twelve plane evaluations (six planes, two vertices, four terms each); the inputs are
  record words 0-3 and the plane words, the outputs record words 0x13-0x16 and special registers 0x16-0x1b.

## Matrix maintenance (umatrix.s)

- `uMatrixMultCCC` (`umatrix.s` lines 39-116): **inferred**, rebuilds the composite matrix the clip transforms use. It
  takes the projection (engine words 0x3f-0x4e) and copies it into the staging words, replacing the third row: each column's
  third element becomes the difference of its fourth and third elements times 0.5, computed by the float subtracts at
  0xe72-0xe75 (fourth element staged at E = 3, 7, 0xb, 0xf; third element read from 0x41, 0x45, 0x49, 0x4d) and the multiplies
  by the constant 0.5 loaded at 0xe71. It then multiplies that matrix by the modelview at 0x2f-0x3e (64 multiplies and
  multiply-adds, 0xe7f-0xea5) and stores the 16 results to 0x4f-0x5e, the input of every clip transform. It writes special
  register 0x29 (store at 0xe7e) and returns through a group-5 indirect transfer at 0xea7. The operand order of the subtract
  is unknown, so whether the rewritten clip z runs from w at the near plane to 0 at the far plane, or from -w to 0, stays open;
  either way the clip transforms produce a z that the frustum test compares against w and 0 rather than against w and -w.
- `mMatrixInverse` (`umatrix.s` lines 314-426): **inferred**, the inverse of the modelview's 3 x 3 block, for transforming
  normals. It copies the modelview words 0x2f-0x3e to a scratch block at engine address 0x8d2c (words 0xeeb-0xefa), computes
  the cofactors with paired multiplies and subtracts (0xefc-0xf28), sums a row of them times the matrix to get the
  determinant, takes its reciprocal (seed at 0xf31, Newton-Raphson step 0x4f at 0xf2f and 0xf37), and multiplies each
  cofactor by it. Address register 0xf is loaded with 0x1f at 0xf44 for the stores of the result, the block from 0x1f that
  the normal transforms read. It writes special register 0x2b (0xf32) and returns at 0xf4f.

## Perspective divide and viewport (uscreen2.s)

**Established** from the reads of `uscreen2.s` and the stores of `mgeb_ViewPort` (`glmodes.S`, 0xf41d and 0xf427): the viewport
transform keeps its scale and offset pairs in engine words 0x7e-0x83, x scale at 0x7e and offset at 0x7f, y at 0x80 and 0x81,
z at 0x82 and 0x83 (`uBackInvQ2DI` reads all six by immediate, 0x11c1-0x11df). The guard-band factors sit at 0x71-0x74.
Window coordinates go to vertex record words 0x23 (x), 0x24 (y) and 0x25 (z).

- `mmo_ToScreenSpace` (`uscreen2.s` lines 91-92, with `uBack` and `lSC1` after it): **inferred**, the perspective divide
  and viewport transform of the plain vertex path. Its first word subtracts with the flag-enable bit set on the clip-code
  special register 0x0d (C = 0x1b, F = 0xd at 0x10c9), and the next word branches on `cc` 0x21 to `uSecondChance` when a
  vertex fell outside the frustum. Otherwise it runs on into `uBack` and `lSC1`, which take the clip coordinates of each
  vertex (record words 0x17-0x1a) as input, compute 1/w from the reciprocal seed and Newton-Raphson steps, multiply x, y and
  z by the viewport scale and by 1/w, add the viewport offsets, and store the window x, y and z results to words 0x23-0x25.
- `umo_ToScreenSpace`: **inferred**, second label at 0x10c9 (`uscreen2.s` line 91), the same divide: its input is the clip
  position in words 0x17-0x1a and its output the window position in words 0x23-0x25; it scales each coordinate by 1/w and
  then by the viewport pair, or reroutes the vertex through the guard-band test first.
- `uSecondChance` (`uscreen2.s` line 66): **inferred**, the guard-band retest. Its one word at 0x10b8 writes the clip-code
  register 0x0d from a staging word; the loop `lSC2` after it takes the w input of each vertex, multiplies it by the
  guard-band factors at engine words 0x71-0x74, subtracts x (record word 0x17) or y (word 0x18), and writes the four results
  to special registers 0x10-0x13. A vertex outside the frustum sides but inside the guard band then needs no geometric clip,
  since the raster stage can scissor it.
- `lSC2` (`uscreen2.s` lines 69-84): **inferred**, the two-vertex loop of the guard-band retest from 0x10b9; it takes the w
  input of each vertex (record word 0x1a), multiplies it by the factors at 0x71 and 0x72, subtracts x into special registers
  0x10 and 0x11, and repeats through the relative transfer at 0x10c0 (immediate -7). Its last words compute the y results for
  0x12 and 0x13 and jump to `uBack` at 0x10c1.
- `uBack` (`uscreen2.s` lines 94-102): **inferred**, the set-up of the divide, reached from both the direct and the
  guard-band path at 0x10cb. It loads the vertex pointers (registers 1 and 2 from 0x10 and 0x11) and the pair count, takes the
  w inputs of the first pair, points address register 9 at the viewport words from 0x7f (0x10cf), and starts the reciprocal
  of w with two Newton-Raphson steps (0x10d2-0x10d3) whose result the loop multiplies into each coordinate.
- `lSC1` (`uscreen2.s` lines 104-149): **inferred**, the divide loop at 0x10d4 and its output tail. Each pass takes two
  clip positions, computes the reciprocal seed of each w (0x10d4-0x10d5) and refines it with the Newton-Raphson reciprocal
  step (0x10da-0x10df), multiplies x, y and z by it and by the viewport scales, adds the offsets, and stores window x and y to
  words 0x23 and 0x24 and z to word 0x25 through a minimum (0x10ea), which clamps the window depth from above. After the loop
  it writes 0x70000 to the raster-bus address 0x1f8 (0x10f0-0x10f1) and sends a run of words through address register 0x1e,
  the output window at 0xffff0000 (0x10f2-0x10ff), so the results leave the engine for the raster stage.
- `mmo_ToScreenSpaceInvQ` (`uscreen2.s` lines 183-184, with `uBackInvQ` and `lSC3`): **inferred**, the divide for
  textured vertices. Besides the window position it takes the texture coordinates s, t, r and q (record words 0xb-0xe) as
  input and multiplies them by the texture matrix (32 multiply-adds per pass at 0x1121-0x113c), computes 1/w and 1/q with the
  reciprocal steps, and stores the projected texture results to record words 0xf-0x12 (0x1165-0x116c) beside the window
  coordinates at 0x23-0x25.
- `umo_ToScreenSpaceInvQ`: **inferred**, the u-name of the textured divide at 0x1113 (`uscreen2.s` line 183); it consumes
  clip position and texture coordinates and yields window coordinates plus texture coordinates it scales by the reciprocal of
  q, after a branch on `cc` 0x21 to `uSecondChanceInvQ` for vertices outside the frustum.
- `uSecondChanceInvQ` (`uscreen2.s` lines 156-158): **inferred**, the entry of the guard-band retest of the textured
  divide: it stages the clip-code register 0x0d (read at 0x1101) and rewrites it (0x1102), then runs on into `lSC4`, which
  computes the same w-times-factor minus x or y distances as `uSecondChance` from the input w and the words at 0x71-0x74,
  with results in special registers 0x10-0x13.
- `lSC4` (`uscreen2.s` lines 161-176): **inferred**, the loop at 0x1103 of the textured guard-band retest: two vertices per
  pass, it multiplies the w input by the guard-band factor and subtracts the x coordinate, the two side results stored to
  special registers 0x10 and 0x11; after it, the y results go to 0x12 and 0x13 and the jump at 0x110b leads to `uBackInvQ`.
- `uBackInvQ` (`uscreen2.s` lines 186-197): **inferred**, the set-up of the textured divide at 0x1115. It loads the pair
  count and pointers, takes the w input of the first pair, and multiplies the texture-coordinate inputs (record word 0xb) by
  the first texture-matrix words 0x5f and 0x60 (0x111d-0x111f) to start the products whose results the loop `lSC3` completes and stores.
- `lSC3` (`uscreen2.s` lines 199-331): **inferred**, the textured divide loop at 0x1121 and its output tail. Per pass it
  multiplies two vertices' s, t, r and q inputs by the texture matrix, adds the words at 0x75-0x77 (0x1143-0x1147),
  computes reciprocals of w and q, and stores window x, y and clamped z to words 0x23-0x25 and the projected texture results
  to words 0xf-0x12. The relative transfer at 0x116a closes the loop; the tail sends 0x70000 to bus address 0x1f8 and the
  vertex words through address register 0x1e to the output (0x1193-0x11a2).
- `mmo_ToScreenSpaceInvQ2DI` (`uscreen2.s` lines 365-366, with `uBackInvQ2DI` and `lSC5`): **inferred**, the textured
  divide that reads the viewport by immediate address instead of through register 9: it multiplies the clip x, y and z inputs
  by the scales at 0x7e, 0x80 and 0x82 (0x11c1-0x11c5), adds the offsets at 0x7f, 0x81 and 0x83 (0x11db-0x11df), and stores
  the window results to words 0x23-0x25, with the texture results to words 0xf-0x12 (0x11e1-0x11e6).
- `umo_ToScreenSpaceInvQ2DI`: **inferred**, alias at 0x11b6 (`uscreen2.s` line 365). It converts the clip position into
  window coordinates with the six viewport words 0x7e-0x83 as operands and the reciprocal of w, and returns texture
  coordinates divided by q, branching on `cc` 0x21 to its own guard-band retest.
- `uSecondChanceInvQ2DI` (`uscreen2.s` lines 338-340): **inferred**, the entry of the guard-band retest for the
  immediate-address divide; with `lSC6` after it, it takes w and x or y as input, multiplies w by the factors at 0x71-0x74 and
  subtracts the coordinate, and writes the results to special registers 0x10-0x13 before the jump to `uBackInvQ2DI` at
  0x11ae.
- `lSC6` (`uscreen2.s` lines 343-358): **inferred**, the loop at 0x11a6 of that retest; it takes two vertices' w and x as
  input, multiplies and subtracts to produce the left and right guard-band distances as results in special registers 0x10 and
  0x11, and repeats through the relative transfer at 0x11ad.
- `uBackInvQ2DI` (`uscreen2.s` lines 368-376): **inferred**, the set-up at 0x11b8. It copies the inputs at engine words
  0xbb and 0xbc into staging words 3 and 4 and points address register 0xa at the texture matrix 0x5f (0x11bb), so that `lSC5`
  multiplies texture coordinates by it and combine them with the reciprocal of q into the results it stores at words
  0xf-0x12.
- `lSC5` (`uscreen2.s` lines 378-467): **inferred**, the loop at 0x11c1 and its tail: the clip x, y and z inputs multiplied
  by the viewport scales 0x7e, 0x80 and 0x82 and by 1/w (seed at 0x11c5), offsets 0x7f and 0x81 added, depth combined with
  0x83 through a minimum, results stored to words 0x23-0x25; the transfer at 0x11e2 (immediate -0x21) repeats it, and the tail
  sends the vertex words through address register 0x1e (0x1208-0x1217).

## Lighting inner loops (ulight.s)

The colour words of the vertex record, **established** from the stores of these modules: input colour at record words 4-7
(r, g, b, a), lit or clamped output colour at words 0x1b-0x1e.

- `mmo_LiColorClamp` (`ulight.s` lines 35-44, loop `lLI2`): **inferred**, the colour pass for unlit vertices. It takes
  each vertex's current colour (record words 4-7) as input, clamps every component with the unit-1 clamp 0x7c (the operation
  the diagnostic test returns as 0 for a negative input and unchanged for 0.333), and stores the result to words 0x1b-0x1e,
  the colour the later stages send. Before the loop it ANDs engine word 3 with the constant 0xffffffef (0x0d69-0x0d6a)
  and branches to `mmo_AbortGeometry` on `cc` 0x2a, and it writes 0xd to special register 0x24 (0x0d6d).
- `umo_LiColorClamp`: **inferred**, the second name at 0x0d69 (`ulight.s` line 35) for the unlit colour pass; it converts
  input colour words 4-7 into clamped output words 0x1b-0x1e, two vertices per pass, with no lighting arithmetic.
- `lLI2` (`ulight.s` lines 46-60): **inferred**, the loop of the colour clamp from 0x0d72. Each of its eight clamp words
  (0x0d73-0x0d7a) clamps one of the four colour inputs of one of two vertices and stores the result at E = 0x1b-0x1e; the
  pointers advance by register 0x13 at 0x0d76 and 0x0d7a.
- `mmo_LighterSimple` (`ulight.s` lines 67-79, loop `lLI1`): **inferred**, the fast lighting module for one directional
  light with a non-local viewer. It loads a parameter pointer into address register 9 from engine word 0x88 (0x0d7f) and
  points register 8 at the power table at 0xf00 (0x0d80). Per vertex it takes the eye normal (record words 0xf-0x11) as input
  and computes two dot products against parameter words: n . L with the words at offsets 0x1c, 0x1b and 0x1a and n . H with
  those at 0x10, 0xf and 0xe (0x0d84-0x0d8e). Each dot product is limited below by a maximum and a clamp (0x0d96-0x0d98);
  n . H indexes the power table through register 8 (0x0d9b-0x0da6) to give the specular factor. The colour results, sums of
  precomputed ambient, diffuse-times-(n . L) and specular-times-factor terms from the parameter words at offsets 0x19-0x11,
  are stored clamped to record words 0x1b-0x1e (0x0db4-0x0dbe).
- `umo_LighterSimple`: **inferred**, the u-name at 0x0d7c (`ulight.s` line 67). It takes eye normals, evaluates diffuse and
  specular terms for one light from the parameter block named by engine word 0x88 and the power table at 0xf00, and produces
  the clamped lit colour in record words 0x1b-0x1e; it ends with a jump to `mLiIrisColoring` at 0x0dc0.
- `lLI1` (`ulight.s` lines 81-147): **inferred**, the loop of the simple lighter at 0x0d89, two vertices per pass: it computes dot
  products of the normal inputs with the light and half-angle vectors, the power-table lookup, the multiply-add of the colour
  terms and the clamped stores of the results. The relative transfer at 0x0db6 (immediate -0x2d) repeats it; the
  group-31 transfer at 0x0db7 on `cc` 0x61 ends the command early when the count runs out.
- `mLiPwrTable` (`ulight.s` lines 192-235, loop `lPT1`): **inferred**, builds the lookup table that turns a cosine into its
  power, for the specular shininess and the spot exponent. It is called from `mLiUpdateShin`, `mgeb_LightSpotExp` and
  `mLiSwichSpotPrwTableSub` (calls at 0xe2c6, 0xe2e6 and 0xc655) with the exponent as input. It converts the exponent to
  integer and splits it with shifts and masks (0x0dca-0x0de1), converts the parts back to float, and in `lPT1` multiplies
  successive entries to produce the table, storing the results through address register 0xd (0x0de2-0x0dec). It returns
  through a group-5 indirect transfer at 0x0e0a.
- `uLiPwrTable`: **inferred**, the u-name at 0x0dc9 (`ulight.s` line 192) of the power-table builder; its input is the
  shininess or spot exponent and its output the table of powers that `mmo_LighterSimple` indexes, which it computes with
  float-integer conversions and repeated multiplies.
- `lPT1` (`ulight.s` lines 240-272): **inferred**, the table loop at 0x0df5: per pass it takes the running power as input, multiplies it by the
  step value, subtracts and adds the interpolation terms, and stores two result words through the table pointer (stores with
  `r211` = 3 at 0x0dff and 0x0e01), repeating through the relative transfer at 0x0e01 (immediate -0xc).

## Texture-coordinate generation (utexgen.s)

**Established** from the stores of these modules: generated s and t go to vertex record words 0xb and 0xc, r and q to 0xd
and 0xe, the words `mmo_ToScreenSpaceInvQ` later multiplies by the texture matrix. Every module starts by shifting two staging
words into special registers 0x2f and 0x2e (B = 0x1c, E = 0x2f and 0x2e), and every result store is the predicated kind
(`r213` = 2, against 3 for an ordinary store). **Inferred:** the two registers hold the per-coordinate enables, so each module
writes only the coordinates whose generation mode it implements and several modules can run on one vertex batch.

- `mmo_TexGenSphere_ST` (`utexgen.s` lines 45-53, loop `lTGLOOP2`): **inferred**, GL_SPHERE_MAP for s and t. Per vertex
  it takes the eye position u (record words 0x13-0x15) and eye normal n (words 0xf-0x11) as input, computes n . u (the
  multiply-adds at 0x0b8e-0x0b99), normalises u with a reciprocal square root, forms the reflection r = u - 2 n (n . u) with
  the subtracts at 0x0bab-0x0bb5, computes 1/m = 1/sqrt(rx^2 + ry^2 + (rz + 1)^2) with a second seed and Newton step, and
  produces s = rx / m + 0.5 and t = ry / m + 0.5 with the constant 0.5 loaded at 0x0bc4. The results go to words 0xb and 0xc
  through predicated stores (0x0be5-0x0be8).
- `umo_TexGenSphere_ST`: **inferred**, second label at 0x0b85 (`utexgen.s` line 45) of the sphere-map generator: input eye
  position and normal, output s and t in record words 0xb and 0xc; it computes each as the reflected vector's component divided
  by m and offset by one half.
- `lTGLOOP2` (`utexgen.s` lines 55-147): **inferred**, the sphere-map loop at 0x0b8e, two vertices per pass, taking eye position and normal
  as input; it computes the n . u dot products, two reciprocal square roots per vertex (Newton steps 0x57 at 0x0ba5-0x0ba7, 0x0bb1-0x0bb3 and 0x0bd0-0x0bde),
  the reflection and the halved, offset results stored to words 0xb and 0xc; the absolute transfer at 0x0be0 repeats it.
- `mmo_TexGenEyeLinear_ST` (`utexgen.s` lines 154-167, loop `lXF8`): **inferred**, GL_EYE_LINEAR for s and t. It points
  address register 6 at the plane block named by engine word 0x3f3 (0x0bec) and, per vertex, computes the dot product of the
  eye position input (record words 0x13-0x16) with the s plane and with the t plane, eight multiply-adds per vertex against
  the plane words read through register 6. The two results are stored, predicated, to words 0xb and 0xc (0x0c05-0x0c08).
- `umo_TexGenEyeLinear_ST`: **inferred**, the u-name at 0x0bea (`utexgen.s` line 154); it evaluates the eye-linear s and t
  as four-term dot products of the eye position input with the planes behind word 0x3f3 and returns them in record words 0xb-0xc.
- `lXF8` (`utexgen.s` lines 169-190): **inferred**, the eye-linear s, t loop at 0x0bf8: two vertices per pass, it
  multiplies the eye-coordinate inputs 0x13-0x16 by plane words and stores the s and t results; the relative transfer at 0x0c03
  (immediate -0xb) repeats it and the group-31 transfer at 0x0c04 ends the command.
- `mmo_TexGenEyeLinear_RQ` (`utexgen.s` lines 197-210, loop `lXF9`): **inferred**, GL_EYE_LINEAR for r and q: it computes the
  same dot products of the eye position input with two planes, the plane block named by engine word 0x3f5 (0x0c11), and the
  results stored predicated to record words 0xd and 0xe (0x0c28-0x0c2b).
- `umo_TexGenEyeLinear_RQ`: **inferred**, alias at 0x0c0d (`utexgen.s` line 197): it computes the eye-linear r and q from
  the input eye position words 0x13-0x16 and the planes behind word 0x3f5, with outputs in words 0xd and 0xe.
- `lXF9` (`utexgen.s` lines 212-233): **inferred**, the r, q loop at 0x0c1b; it takes two eye positions per pass, multiplies
  them into the r and q plane equations and stores the two results per vertex, looping through the transfer at 0x0c26.
- `mmo_TexGenObjLinear_ST` (`utexgen.s` lines 240-253, loop `lXF10`): **inferred**, GL_OBJECT_LINEAR for s and t: it computes
  the dot products from the object position input (record words 0-3) instead of the eye position, with the plane block named by
  engine word 0x3e3 (0x0c32), and the s and t results are stored predicated to words 0xb and 0xc.
- `umo_TexGenObjLinear_ST`: **inferred**, the second label at 0x0c30 (`utexgen.s` line 240); its inputs are the object
  coordinates in words 0-3 and the object planes behind word 0x3e3, and it computes s and t as plane dot products, its results in
  words 0xb-0xc.
- `lXF10` (`utexgen.s` lines 255-276): **inferred**, the object-linear s, t loop at 0x0c3e: per pass it multiplies the
  object-coordinate inputs of two vertices (A = 1 and 2, D = 0-3) by the plane words and stores four results (B = 3 and 4, E = 0xb
  and 0xc).
- `mmo_TexGenObjLinear_RQ` (`utexgen.s` lines 283-296, loop `lXF11`): **inferred**, GL_OBJECT_LINEAR for r and q: it computes
  plane dot products from the object position input, planes from the block named by engine word 0x3e5 (0x0c57), results stored predicated to words 0xd and 0xe.
- `umo_TexGenObjLinear_RQ`: **inferred**, alias at 0x0c53 (`utexgen.s` line 283), the object-linear r and q generator; it
  computes each output as the dot product of the input object position words 0-3 with one plane behind word 0x3e5.
- `lXF11` (`utexgen.s` lines 298-319): **inferred**, the object-linear r, q loop at 0x0c61; two vertices per pass, it takes
  object coordinates as operands of the plane multiply-adds and stores the r and q results to words 0xd and 0xe.

## Triangle output (udrawtri.s)

**Established** from the words of `udrawtri.s`: the triangle modules do no edge or slope arithmetic. They contain no
reciprocal, no seed and no multiply of one vertex's coordinate by another's; every word that carries data reads one vertex
record word and stores through address register 0x1e, the output window at 0xffff0000 that `HereWeGo` sets up, so the values
leave the engine one vertex at a time and the raster stage forms the edges. Per vertex the stores carry, in this order: three
subtracts on record words 0x10, 0xf and 0x11 and a move of 0x12 (the texture results of the divide, with 0xf and 0x12 stored
predicated, `r213` = 2), a move of the edge-flag word 0x26, subtracts on window x and y (words 0x23 and 0x24), the unit-1
operation 0x7e on window z (word 0x25), and multiplies of the colour words 0x1e, 0x1d, 0x1c and 0x1b. The subtracts take
their second operand from an origin block reached through address register 0xd, which each module points at engine word 0xc9
(`ge_ops.md` lists 0xc9-0xce among the words the drawing paths write once per primitive). What unit-1 code 0x7e computes is
unknown: the diagnostic test does not exercise it, and it occurs only on the depth word of the drawing modules (`drawtri.S`,
`mdrawtri.S`, `drawlin.S`, `drawpnt.S` and four more).

- `mmo_DrawTri` (`udrawtri.s` lines 42-53): **inferred**, the entry of the triangle-strip output. It reads the cull and clip
  state (special register 0x0c through register 0x1c, 0x288c), and branches on `cc` 0x66 to `mmo_DrawTriPrim`, the
  independent-triangle path, or on `cc` 0x28 and 0x26 to the list loop `uDTList`. Its set-up XORs engine word 0x70 into a
  register, takes the colour scale and offsets from words 0xc4-0xc6 as input operands, and writes special register 0x2c from
  engine word 6 ANDed with a mask (0x2896). The output of the module is the vertex stream through register 0x1e that `lDI3`
  produces.
- `umo_DrawTri`: **inferred**, alias at 0x288c (`udrawtri.s` line 42) of the strip output entry: it selects between the
  list loop and the independent-triangle module, with the clip state as input, and returns nothing to the vertex record; its results are
  the per-vertex words the loop sends to the raster stage.
- `uDTList` (`udrawtri.s` lines 55-59): **inferred**, the set-up of the strip loop at 0x2898: it loads the vertex count
  from register 0x19, points register 0xd at the origin block from 0xc9 and register 0xc at engine address 0x11fc, and ORs the
  edge-flag word 0x26 of the first vertex into itself (0x289a), so that `lDI3` takes the vertex inputs in pairs.
- `lDI3` (`udrawtri.s` lines 63-108): **inferred**, the strip output loop at 0x289d, two vertices per pass: for each it
  subtracts the origin words from the texture and window inputs, converts depth with operation 0x7e, and sends the results
  to the output window through register 0x1e; after the loop it multiplies the colour words 0x1b-0x1e of the last pair by the
  scale (0x28ba-0x28c1), writes the inverted command word to bus address 0x1f5 (0x28c4) and a staging word to 0x1f4 (0x28c9).
- `mmo_DrawQuad` (`udrawtri.s` lines 115-126): **inferred**, the quad-strip entry, the same selection as `mmo_DrawTri`
  (branches on `cc` 0x66, 0x28 and 0x26 to `mmo_DrawTriPrim` or `uDQList`) with the same reads of words 0x70 and 0xc4-0xc6 as
  input; the output is the vertex stream `lDI4` produces.
- `umo_DrawQuad`: **inferred**, second name at 0x28ca (`udrawtri.s` line 115) for the quad-strip entry; it takes the cull
  state and selects the quad loop, whose results are raster words per vertex.
- `uDQList` (`udrawtri.s` lines 128-132): **inferred**, the set-up of the quad loop at 0x28d6: it writes engine word 3 into
  special register 0x2f, stages the constant 0x800, loads the count and points register 0xd at 0xc9, the origin operands of
  the subtracts in `lDI4`.
- `lDI4` (`udrawtri.s` lines 136-182): **inferred**, the quad output loop at 0x28db. Per pass it ANDs the edge-flag inputs
  (word 0x26) of two vertices with the staged 0x800 and sets the flags, shifts them into the output (0x28e7-0x28e8), subtracts
  the origin from the texture and window coordinates, converts depth with operation 0x7e and sends the results through
  register 0x1e; the colour multiplies and the bus words to 0x1f5 and 0x1f4 follow the loop (0x28f9-0x2908).
- `mmo_DrawTriPrim` (`udrawtri.s` lines 189-193): **inferred**, the independent-triangle output, three vertices per
  triangle. It takes the triangle count from register 0x12, writes engine words 6 and 3 into special registers 0x2e and 0x2f,
  and points register 0xd at 0xc9; `lDI1` then produces the raster words.
- `umo_DrawTriPrim`: **inferred**, alias at 0x2909 (`udrawtri.s` line 189): the independent-triangle module; it consumes
  three vertex records per triangle, subtracts the origin block from their window and texture words, and produces those
  results with the converted depth and scaled colour.
- `lDI1` (`udrawtri.s` lines 197-321): **inferred**, the independent-triangle loop at 0x290e. It reads the three vertex
  pointers of a triangle from the list at register 0xf (words 0-3 and 0xf-0x13 into registers 2-9, 0x2910-0x2919), tests the
  triangle's flag words 4 and 0x13 against 0x1c, and for each vertex subtracts the origin from the texture and window inputs,
  converts depth with operation 0x7e, multiplies the colour words, and sends the results through register 0x1e.

## Polygon clipping (clip.S)

- `mClipPolyToPlane` (`clip.S` lines 88-660): **inferred**, clips one polygon against one plane, the Sutherland-Hodgman
  step. Its input is a vertex list reached through address register 0xb and a plane held in registers 0x12-0x15. For each
  vertex it computes the signed distance as the four-term dot product of the vertex's words 0-3 with the plane (multiplies
  at 0xefd6-0xefd9 and 0xf017-0xf01a, sums with the flag-enable bit at 0xefe1). Where two neighbours' distances differ in
  sign it subtracts them (0xf04e-0xf052, 0xf06f-0xf073), takes the reciprocal of the difference with the seed and two
  Newton-Raphson steps, and multiplies to get the crossing fraction t. A new vertex from the free list then gets each
  attribute as v0 + t (v1 - v0): address registers 4, 5 and 7 are stepped through the attribute offsets 0x2c-0x88
  (0xf09e-0xf0c5) and the multiplies and adds at 0xf0b4-0xf10b form the interpolated results. The output list is copied, 13
  words, from register 0xd to register 0xf (0xf133-0xf13f), special register 0x0f is flipped by an XOR (0xf141), and it
  returns through a group-4 indirect transfer at 0xf146.
- `mClipTriUserAndFrustum` (`clip.S` lines 1080-1569): **inferred**, the clipper's driver for one triangle. It takes the
  triangle's clip-code word (special register 0x0d, read six times through register 0x1c) as input, selects each plane the
  codes name, and calls `mClipPolyToPlane` for it (seven conditional calls on `cc` 2). Vertices that a user plane creates
  exist only in eye space, and it projects them with two calls to `mEyeToClipAfterUserClip`. The
  result is a clipped polygon that it sends on with `mClipTriFlush`, and the clip-vertex pool is reset by
  `mSetClipVertsFree`.
- `mEyeToClipAfterUserClip` (`clip.S` lines 712-837): **inferred**, projects vertices created in eye space by user-plane
  clipping. It rebuilds the projection's third row as `uMatrixMultCCC` does, the difference of the fourth and third
  elements of each column (projection words 0x42 and 0x41, 0x46 and 0x45, 0x4a and 0x49, 0x4e and 0x4d) times the constant 0.5
  loaded at 0xf183. It then multiplies each new vertex's eye-position input (record words 0x13-0x16, through registers 7 and
  0xf) by the projection words 0x3f-0x4e and stores the clip-space result to words 0x17-0x1a (0xf1b0, 0xf1b5). It returns
  through a group-5 indirect transfer.
- `mPerTriClipFlagsFrustum` (`clip.S` lines 922-990): **inferred**, recomputes the frustum clip codes of a polygon's
  vertices after clipping. For each vertex (pointer list through register 7) it takes w (record word 0x1a) as input,
  multiplies it by the four guard-band factors at engine words 0x71-0x74, and computes the six side distances as results: x and y
  subtracted from the scaled w for special registers 0x10-0x13, z added to and subtracted from w for 0x14 and 0x15
  (0xef8f-0xef98). It ORs the resulting code from register 0x0d into the vertex's flag word 4 (0xefa1) and loops on `cc` 0x14
  through the transfer at 0xefab.
- `mClipTriFlush` (`clip.S` lines 1700-1771): **inferred**, saves and resets the clipper's state between triangles. It
  copies the clip-code special registers 0x0d, 0x0e and 0x0f into the save area at register 0x1b offsets 0x3e and 0x3f
  (0xf1e1-0xf1e3), writes the staged value 0x3f to 0x0d and 0x0e, records the vertex count and pointers at offsets 0x35-0x3d,
  and on its second entry (0xf1f4-0xf1fc) moves the saved words back into 0x0d-0x0f.
- `mClipTriFlushSR` (`clip.S` lines 1603-1674): **inferred**, the version of the clip flush used on the path that also
  saves and restores the evaluator state: the same moves between special registers 0x0d-0x0f and the save area through
  register 0x1b, and the same reset of the codes to 0x3f, ending in a group-31 transfer.
- `mSetClipVertsFree` (`clip.S` lines 860-890): **inferred**, rebuilds the free list of clip vertices. It loads the list
  heads 0x8178, 0x8484 and 0x8790 with the offsets 0x94, 0xa8 and 0xbc into registers 0xe and 0xf (0xf20b-0xf210) and stores
  the slot offsets 0x9c, 0x138, 0x1d4 and 0x270, steps of 0x9c, into the list (0xf215-0xf218), so `mClipPolyToPlane` can take
  new vertices from it.

## Matrix building and scalar subroutines (matrix.S, umatrix.s, math.S, umath.s)

**Inferred** (an addressing form these routines settle): a form-13 or form-14 word with C naming an address register and
`r95` = 0x13 (a read) or `r211` = 3 with `r95` = 4 (a store) reaches the word at that register plus 0x1f - F. `mMatrixCopyCC`
moves 16 words with F running 0x1f (the field's idle value), 0x1e, ... 0x10 through registers 0xa and 0xc, which is offsets
0-0xf, and the plain divide of `uscreen2.s` reads the viewport scales through register 9 = 0x7f with F = 0x20, 0x1e and 0x1c,
which is 0x7e, 0x80 and 0x82, the three scale words `uBackInvQ2DI` reads by immediate address. The engine's work matrix W
lives at 0x8d2c (address register 0xb), the target matrix C at the address the calling handler loads into register 0xa
(0x2f modelview, 0x3f projection, 0x5f texture, 0x190 colour, in `matrixfunc.S`).

- `mMatrixMultCCW` (`umatrix.s` lines 209-264): **inferred**, post-multiplies the current matrix by the work matrix,
  C = C x W, GL's rule for glMultMatrix, glRotate, glOrtho and the rest. Its inputs are the 16 words of C through register
  0xa and the 16 of W through register 0xb; 64 multiply-adds (0xeb3-0xedb) compute each result word as the dot product of a
  row of C with a column of W, and the 16 results are stored back through register 0xa (0xece-0xee5). It writes special
  register 0x2c (predicated, 0xeb4), branches on `cc` 0x78 to `mResolveFogTable` when the target is the modelview of a fogged
  context, and ends with the end-of-command wait at 0xede.
- `uMatrixMultCCW`: **inferred**, the u-name at 0x0eb0 (`umatrix.s` line 209) of the same product: input matrices C at
  register 0xa and W at 0xb, output C x W written over C, computed with 64 multiply-adds.
- `uMatrixInverse`: **inferred**, the u-name at 0x0ee7 (`umatrix.s` line 314) of the normal-matrix inverse: it takes the
  modelview words 0x2f-0x3e as input, computes the cofactors and the reciprocal of the determinant, and its results, the
  inverse block from engine word 0x1f, feed the normal transforms of `uxform.s`.
- `mMatrixCopyCC` (`matrix.S` lines 117-132): **inferred**, copies one 16-word matrix to another, the copy the push and pop
  handlers use: input through register 0xa, output through register 0xc, offsets 0-0xf by the F encoding above. It converts
  nothing; it returns at 0xd377.
- `mMatrixCopyCW` (`matrix.S` lines 87-102): **inferred**, writes the work matrix W (16 words read through register 0xb,
  D = 0-0xf) as the result over the matrix at register 0xc, the load half of glLoadMatrix-style handlers that build W first;
  it returns at 0xd390.
- `mOrtho` (`matrix.S` lines 233-290): **inferred**, glOrtho. It takes the six operand words left, right, bottom, top,
  near and far (A = 0x1f, D = 0-5), computes the differences r - l, t - b and f - n and their reciprocals (seed and
  Newton-Raphson steps at 0xd3b7-0xd3bc), part of the products in double precision (unit-2 code 0x07 at 0xd3c5-0xd3d6), and
  stores the result matrix to the work words: 2/(r - l), 2/(t - b) and -2/(f - n) on the diagonal and -(r + l)/(r - l),
  -(t + b)/(t - b), -(f + n)/(f - n) in the last column (stores at E = 0, 5, 0xa and 0xc-0xe, 0xd3e0-0xd3e7), with the
  constant 2.0 loaded at 0xd3af. A zero difference branches to `mErrInvalidValue` (0xd3e8-0xd3ea), the GL_INVALID_VALUE case;
  otherwise it jumps to `mMatrixMultCCW` (0xd3ee) to multiply W into the current matrix.
- `mFrustum` (`matrix.S` lines 151-216): **inferred**, glFrustum: the same six operand inputs, the differences and their
  reciprocals, the constant 2.0 (0xd412) and the double-precision products, with two more error branches to
  `mErrInvalidValue` on `cc` 8 and `cc` 0 for a near or far plane that is not positive, before the jump that multiplies the
  perspective result matrix into the current one.
- `mRotate` (`umatrix.s` lines 557-656): **inferred**, glRotate. It takes the axis from operand words 1-3, computes the
  sum of their squares and normalises the axis with a reciprocal square root (seed at 0xfcc, steps at 0xfca and 0xfd9),
  reduces the angle (operand 0, in degrees) and computes its sine and cosine with the same sequence as `mSinCos` inline
  (unit-2 code 0x5f, double subtracts at 0xfc7-0xfc8, unit-1 code 0x35), then builds the result, the rotation matrix, from the products
  of the axis components with each other and with the sine and one minus the cosine (0xfd5-0x1009) and jumps to
  `mMatrixMultCCW` at 0x100a.
- `uRotate`: **inferred**, alias at 0x0fb0 (`umatrix.s` line 557) of the rotate builder; its result is the work matrix of a
  rotation by the operand angle about the normalised operand axis, which it then multiplies into the current matrix.
- `mSinCos` (`umath.s` lines 24-102): **inferred**, sine and cosine of an angle in degrees, used by the spot cut-off
  handler and the multisample point code. The constants it reads are the table `ge.S` stores at start-up (0xb0f4-0xb10f):
  1/360 at 0x14cf, -pi at 0x14c9, 1.5 x 2^23 at 0x14cd (the add-and-subtract rounding constant) and 2 pi at 0x14ce, and
  the polynomial coefficients 0.000184876, 0.00831191, 0.166656 and 1.0 at 0x14d0-0x14d3. It multiplies the angle input by
  1/360, removes the whole turns by adding and subtracting the rounding constant, scales the remaining fraction back by
  2 pi, and evaluates the odd polynomial x - 0.166656 x^3 + 0.00831191 x^5 - 0.000184876 x^7 for each result
  (alternating multiplies and subtracts at 0xe3e-0xe57). The two outputs, sine and cosine, are left in registers 0 and 1
  (0xe5a-0xe5b) and it returns through a group-5 transfer at 0xe59.
- `uSinCos`: **inferred**, the u-name at 0x0e13 (`umath.s` line 24): input an angle in degrees, outputs its sine and
  cosine, which it computes by turn reduction against the constants at 0x14c9-0x14cf and a seventh-order odd polynomial.
- `minv` (`math.S` lines 56-62): **inferred**, the reciprocal subroutine, which computes 1/x: for each input it takes the reciprocal seed
  (0xd308, 0xd30c) and refines it with two Newton-Raphson steps of code 0x4f (2 - a x b, 0xd30a and 0xd312), multiplying the
  seed by each step's result, and returns 1/x at 0xd315.
- `msqrt` (`math.S` lines 34-43): **inferred**, the square-root subroutine: it computes 1/sqrt(x) from the
  reciprocal-square-root seed (0xd31e, 0xd326) and two steps of code 0x57 ((3 - a x b) / 2, 0xd324 and 0xd330), then
  multiplies the result by the input x (0xd334), which yields sqrt(x); it returns at 0xd337.
- `misqrt` (`math.S` lines 13-21): **inferred**, the reciprocal-square-root subroutine, which computes 1/sqrt(x) of its input: the same seed and two Newton steps
  as `msqrt` (0xd340-0xd352) without the final multiply by the input, so it returns 1/sqrt(x) at 0xd355.
