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
  0x17-0x1a. It then computes the six frustum distances w + x, w - x, w + y, w - y, w + z' and -z', where z' is the stored clip z, the (z - w) / 2 row of the
  rewritten matrix (register 0x14 = w + z', register 0x15 = register 0x1e (zero) - z'; so the near cut is w + z' >= 0 and the far cut
  is -z' >= 0, i.e. z_c <= w for the unrewritten clip z), with unit-1 float adds and
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
  third element becomes its third element minus its fourth, times 0.5, computed by the float subtracts at
  0xe72-0xe75 (fourth element staged at E = 3, 7, 0xb, 0xf; third element read from 0x41, 0x45, 0x49, 0x4d) and the multiplies
  by the constant 0.5 loaded at 0xe71. It then multiplies that matrix by the modelview at 0x2f-0x3e (36 multiply words,
  0xe7f-0xe9f, finishing eight sums of four products) and stores its results to all 16 words 0x4f-0x5e, the input of every
  clip transform. Each sum is stored twice, once with `r95` = 4 (lane 0) and once with `r95` = 5 (lane 1), nine words after
  it is loaded into the store-data register; lane 0's multiplies give rows 0 and 2, and lane 1 must read one word on for rows 1 and 3, as its twin `mMatrixMultCCC`
  sets up explicitly; how 0xe63 gives lane 1 that base is open ([Lanes](ge_isa.md#lanes)). It writes special
  register 0x29 (store at 0xe7e) and returns through a group-5 indirect transfer at 0xea7.
  The four subtracts are operand-routing form `r110` = 0x7bd, a register-file operand (A = 0x18, D = 3, 7, 0xb, 0xf) with a
  memory operand (C = 0x1b, immediate address). That form returns the loaded memory word minus the register-file operand
  ([ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding), established): each subtract yields the third element minus the fourth,
  so the rewritten third row is (row 3 - row 4) / 2 and the clip z it produces is (z - w) / 2, which is -w at the near
  plane and 0 at the far plane of an ordinary projection.
- `mMatrixMultCCC` (`mmatrix.S` lines 35-104, at 0xe8a6): **inferred**, the `m`-module twin of `uMatrixMultCCC`, called from
  `mgebi_ReferencePlane` (0x59c4). It takes the projection (engine words 0x3f-0x4e) and the modelview (0x2f-0x3e) as inputs and
  computes their product into the composite words 0x4f-0x5e. It sets register 0xf to the staging base 0x8d2c in every lane and
  to 0x8d2d in lane 1 (0xe8a6, 0xe8a7), copies the projection into the staging words through lane 0's register (sixteen
  `r95` = 0x13 reads stored at E = 0-0xf, 0xe8ab-0xe8ba), and rebuilds each column's third element as (third minus fourth)
  times 0.5 (subtracts 0xe8c0-0xe8c4, the 0.5 staged at 0xe8c3, stores 0xe8c5-0xe8c9). Register 0xe points at the
  modelview (0xe8c7). The multiplies (from 0xe8cc) read the staged words at D = 0, 4, 8, 0xc and 2, 6, 0xa, 0xe, so lane 0's
  sums are rows 0 and 2 and lane 1's, one word on, rows 1 and 3; the results go out as `r95` = 4 stores to the odd words
  and `r95` = 5 stores to the even words (0xe8f3-0xe90f), with special register 0x29 written at 0xe902, and it returns through
  the group-5 indirect transfer at 0xe907. Its explicit lane-1 add is the witness for the open lane-1 question of
  `uMatrixMultCCC` ([Lanes](ge_isa.md#lanes)).
- `mMatrixInverse` (`umatrix.s` lines 314-426): **inferred**, the inverse of the modelview's 3 x 3 block, for transforming
  normals. It copies the modelview words 0x2f-0x3e to a scratch block at engine address 0x8d2c (words 0xeeb-0xefa), computes
  the cofactors with paired multiplies and subtracts (0xefc-0xf28), sums a row of them times the matrix to get the
  determinant, takes its reciprocal (seed at 0xf31, Newton-Raphson step 0x4f at 0xf2f and 0xf37), and multiplies each
  cofactor by it. Address register 0xf is loaded with 0x1f at 0xf44 for the stores of the result, the block from 0x1f that
  the normal transforms read. It writes special register 0x2b (0xf32) and returns at 0xf4f.

## Matrix operations per matrix (matrixfunc.S)

Each GL matrix operation has four handlers in `matrixfunc.S`, one per matrix: the colour matrix at engine word 0x190,
the texture matrix at 0x5f, the projection at 0x3f and the modelview at 0x2f, each 16 words, column by column. What the
four copies add around the arithmetic differs by matrix and is the same for every operation, so it is stated once here.
**Established** (every handler below, read in full in `ge_listing/matrixfunc.S.lst`): the colour copies read engine
word 3, combine it with the staged constant 0x10000 by unit-1 code 0x51 and store it back under a predicate; the
texture copies stage the engine address 0xf494 and store it to word 0xd under a predicate; the projection copies write
special register 0x29 and the modelview copies 0x2b and 0x29; the glOrtho, glFrustum, glRotate and glMultMatrix copies
of every matrix also write special register 0x2c, and the translate and scale copies do not.
**Inferred:** word 3 bit 16 marks a colour matrix in use, word 0xd selects the texture-coordinate transform that applies
a full matrix, and the special-register writes mark the derived matrices for rebuilding (0x29 is the register
`uMatrixMultCCC` writes after rebuilding the composite). What unit-1 code 0x51 computes is not fixed by the diagnostic
test ([ge_ops.md](ge_ops.md)).

- `mgeb_Translate_Color` (at 0xbc2b): **established**, takes glTranslate's x, y and z operands and computes the colour matrix's new fourth column, x times column 0 plus y times column 1 plus z times column 2 plus the old column 3 (words 0x190-0x19b read), with unit-2 multiply-adds (M = 0x460) and single adds (M = 0x6e0); the result is stored to 0x19c-0x19f.
- `mgeb_Translate_Texture` (at 0xbc4b): **established**, the same product for the texture matrix: its inputs are the three operands and words 0x5f-0x6a, it multiplies and adds them into the translation column, and its result replaces words 0x6b-0x6e.
- `mgeb_Translate_Projection` (at 0xbc6a): **established**, multiplies the projection's first three columns (0x3f-0x4a) by the operands it takes and adds them into its last column, whose four results go back to 0x4b-0x4e, then calls `mResolveFogTable` (0xbc7f) so that the fog table follows the new projection.
- `mgeb_Translate_Modelview` (at 0xbc89): **established**, glTranslate on the modelview: from its three operands it computes each result as x times the first column plus y times the second plus z times the third plus the old fourth (the first three columns at 0x2f-0x3a, the fourth from 0x3b up), and the four results are written back to words 0x3b-0x3e.
- `mgeb_Scale_Color` (at 0xbca7): **established**, takes glScale's three operands and multiplies colour-matrix column 0 (0x190-0x193) by x, column 1 (0x194-0x197) by y and column 2 (0x198-0x19b) by z; each product is a result stored back in place, and column 3 is left as it was.
- `mgeb_Scale_Texture` (at 0xbcc8): **established**, scales the texture matrix's columns 0x5f-0x62, 0x63-0x66 and
  0x67-0x6a by the x, y and z operands with single multiplies (M = 0x47f), so its output is the matrix times
  diag(x, y, z, 1).
- `mgeb_Scale_Projection` (at 0xbce6): **established**, multiplies each of the projection's first three columns (0x3f-0x4a) by one operand; the three scaled columns are its results, and it then calls `mResolveFogTable` (0xbcfb) as the projection translate does.
- `mgeb_Scale_Modelview` (at 0xbd05): **established**, consumes the three scale factors and multiplies the first three modelview columns (0x2f-0x3a, four words each) by them in order and produces the scaled modelview in place, with the translation words 0x3b-0x3e unchanged.
- `mgeb_Ortho_Color` (at 0xbbb5): **inferred**, glOrtho on the colour matrix: it passes the six operands through to `mOrtho` (0xd3ad) with word 0x190 as the target, and the result is that matrix after the builder multiplies it by the orthographic matrix.
- `mgeb_Ortho_Texture` (at 0xbbc3): **inferred**, routes glOrtho's six operand words to `mOrtho`, which multiplies the texture matrix (word 0x5f) by the orthographic matrix and leaves the result there.
- `mgeb_Ortho_Projection` (at 0xbbd1): **inferred**, the common case of glOrtho: its inputs are left, right, bottom, top, near and far, and `mOrtho` builds a matrix from them and multiplies the projection at word 0x3f by it to give the result.
- `mgeb_Ortho_Modelview` (at 0xbbe0): **inferred**, applies glOrtho to the modelview: `mOrtho` takes the six operands, computes the orthographic matrix and yields the modelview at word 0x2f times it.
- `mgeb_Frustum_Color` (at 0xbbf0): **inferred**, its inputs are glFrustum's six bounds; `mFrustum` (0xd410) converts them into a perspective matrix and multiplies it into the colour matrix at 0x190, which holds the result.
- `mgeb_Frustum_Texture` (at 0xbbfe): **inferred**, hands the six frustum bounds it takes to `mFrustum`, which calculates the perspective matrix so that the product, the output of the handler, lands in the texture matrix at 0x5f.
- `mgeb_Frustum_Projection` (at 0xbc0c): **inferred**, glFrustum's usual target: from the six bound operands `mFrustum` computes the projection at 0x3f times their perspective matrix, which becomes the new projection as its result.
- `mgeb_Frustum_Modelview` (at 0xbc1b): **inferred**, takes the bounds as arguments; the perspective matrix built from them by `mFrustum` multiplies the modelview at 0x2f, and the product is the result.
- `mgeb_Rotate_Color` (at 0xbd23): **inferred**, consumes glRotate's angle and axis; `mRotate` (0xfb0) calculates the rotation matrix and multiplies the colour matrix at 0x190 by it, and produces the rotated colour matrix there.
- `mgeb_Rotate_Texture` (at 0xbd31): **inferred**, rotates the texture matrix: the angle and axis operands go to `mRotate`, which converts them to a rotation matrix, and the output is word 0x5f's matrix times that rotation.
- `mgeb_Rotate_Projection` (at 0xbd3f): **inferred**, glRotate with the projection at 0x3f as the matrix `mRotate` multiplies; its four operands give the rotation, and the result replaces the projection.
- `mgeb_Rotate_Modelview` (at 0xbd4e): **inferred**, takes the four rotate operands and yields the modelview at 0x2f times the rotation `mRotate` computes from them.
- `mgeb_MultMatrix_Color` (at 0xbd5e): **inferred**, takes the 16 operand words of glMultMatrix and lets `mMatrixMultCCW` (0xeb0) multiply the colour matrix at 0x190 by them from the right, the product being the result.
- `mgeb_MultMatrix_Texture` (at 0xbd6c): **inferred**, glMultMatrix for the texture matrix: `mMatrixMultCCW` multiplies word 0x5f's matrix by the 16-word operand and produces the new texture matrix.
- `mgeb_MultMatrix_Projection` (at 0xbd7a): **inferred**, post-multiplies the projection at 0x3f by the operand matrix it receives as input, through `mMatrixMultCCW`, and the result is the new projection.
- `mgeb_MultMatrix_Modelview` (at 0xbd89): **inferred**, its input is the operand matrix, which `mMatrixMultCCW` multiplies into the modelview at 0x2f; the output is that product.
- `mgeb_LoadIdentity_Modelview` (at 0xbe57): **established**, takes no operand and produces two identity matrices by
  conditional stores: the modelview at words 0x2f-0x3e (ones written to 0x2f, 0x34, 0x39 and 0x3e, zeros to the other
  twelve) and the 16-word block at 0x1f-0x2e that `mMatrixInverse` writes its normal matrix into (ones at its diagonal
  words 0x1f, 0x24, 0x29 and 0x2e). It also writes special registers 0x2b and 0x29, so loading the identity resets the
  normal matrix directly instead of computing its inverse.
- `mgeb_LoadMatrix_Modelview` (at 0xbdec): **established**, takes the 16 operand words of glLoadMatrix (command input,
  D = 0 to 0xf) and copies them unchanged, in order, into the modelview words 0x2f-0x3e; the stored matrix is its
  result, and it writes special registers 0x2b and 0x29 first.
- `mgeb_PushMatrix_Modelview` (at 0xbb81): **inferred**, glPushMatrix. Its input is the stack pointer at word 0x7d, which it
  compares with the limit 0x892 by integer subtract and adds 0x10 to. It copies the 16 modelview words 0x2f-0x3e to
  the stack slot the pointer names; its results are the copied slot and the new pointer stored back to 0x7d. When the
  pointer is at the limit it calls `mErrStackOverflow` (0xbbab) instead.
- `mgeb_PopMatrix_Modelview` (at 0xba88): **inferred**, glPopMatrix, the inverse of the push: its input is the stack
  pointer at word 0x7d, which it checks against 0x6a2 (calling `mErrStackUnderflow` at 0xba95 when the stack is empty)
  and decrements by subtracting 0x10; the 16 words of the slot become the result in 0x2f-0x3e, and it writes special registers 0x2b
  and 0x29 so that the derived matrices are rebuilt from the restored modelview.
- `mgeb_MatrixMode` (at 0xbe80): **inferred**, glMatrixMode: it takes the mode enumerant from the command input,
  compares it with GL_PROJECTION (0x1701) by integer subtract and stores the selection it computes to word 0x1e under
  a predicate as its result. The ARM picks the per-matrix handlers itself through the geif slots it loads for the mode
  ([ge_handlers.md](ge_handlers.md#matrixfuncs)), so this word is the engine's own copy of the mode.
- `mgeb_LoadIdentity_Color` (at 0xbe08): **established**, takes no operand. It writes the identity into the colour matrix
  at 0x190-0x19f by predicated stores, the diagonal words 0x190, 0x195, 0x19a and 0x19f last (0xbe1d-0xbe20) after the
  twelve off-diagonal ones. Unlike the other three identity loads it also reads engine word 3 (0xbe0c), combines it with
  the staged constant 0x10000 by the bitwise unit-1 code 0x54 (M = 0x6d4, 0xbe18) and stores the result back to word 3
  (0xbe21), so loading the identity updates the colour-matrix flag bit along with the matrix.
- `mgeb_LoadIdentity_Texture` (at 0xbe22): **established**, the texture matrix's identity: stores to 0x60-0x6e with the
  ones at 0x5f, 0x64, 0x69 and 0x6e written last (0xbe38-0xbe3b). It does no arithmetic. Besides the matrix, it stages the
  engine address 0xf494 (0xbe29) and stores it to word 0xd (0xbe37), the word the texture copies use to pick the full
  texture-coordinate transform.
- `mgeb_LoadIdentity_Projection` (at 0xbe3c): **established**, writes the identity into the projection, 0x3f-0x4e, the
  diagonal 0x3f, 0x44, 0x49 and 0x4e last (0xbe52-0xbe55), and writes special register 0x29 (0xbe48) so the composite
  matrix is rebuilt. A conditional transfer on `cc` 0x64 at 0xbe4d enters `mResolveFogTable`, as the projection
  translate and scale do; no value is calculated here.
- `mgeb_LoadMatrix_Color` (at 0xbd99): **established**, its input is glLoadMatrix's 16 operand words (command input, D = 0
  to 0xf, read at 0xbd99-0xbdaa) and its result the colour matrix 0x190-0x19f holding them in order. It also reads word 3
  (0xbd9d), combines it with 0x10000 through unit-1 code 0x51 (M = 0x6d1, 0xbdab), the operation the section header
  names, and stores word 3 back at 0xbdb4.
- `mgeb_LoadMatrix_Texture` (at 0xbdb5): **established**, copies the 16 command words into 0x5f-0x6e without arithmetic;
  word 6 of the input passes through staging register 0x18 (0xbdc5) on its way to 0x66. Its other output is
  word 0xd, loaded with the staged address 0xf494 (0xbdbc, store at 0xbdce).
- `mgeb_LoadMatrix_Projection` (at 0xbdd0): **established**, moves the operand matrix into 0x3f-0x4e unchanged, writes
  special register 0x29 (0xbdd9) and takes the `cc` 0x64 branch to `mResolveFogTable` (0xbde2), the same hook as the
  identity load; it calculates nothing.
- `mgeb_PushMatrix_Color` (at 0xbacd): **inferred**, glPushMatrix for the colour stack. It takes the stack pointer from
  engine word 0x6a1 (0xbacd), compares it with the limit 0x8f2 by integer subtract (M = 0x6c2, 0xbad8), adds 0x10 to it
  (M = 0x6c0, 0xbada) and stores the new pointer back under a predicate (0xbae3). Its results are the 16 colour-matrix
  words 0x190-0x19f and word 3, seventeen words in all, copied through address register 0x13 to the slot (0xbadc-0xbb05);
  at the limit it branches to `mErrStackOverflow` (0xbb00).
- `mgeb_PushMatrix_Texture` (at 0xbb0a): **inferred**, the texture stack's push: it takes its stack pointer from word 0x6a0 as input, the
  overflow test subtracts the limit 0x8d2 (0xbb15) and the increment adds 0x10 (0xbb17). It produces a copy of the sixteen
  words 0x5f-0x6e in the slot (0xbb19-0xbb40) and the advanced pointer; `mErrStackOverflow` is its error exit (0xbb3b).
- `mgeb_PushMatrix_Projection` (at 0xbb45): **inferred**, pushes the projection: it takes the pointer at word 0x69f as input, compares it
  against 0x8b2 by subtract (0xbb50) and adds 0x10 (0xbb52); output the slot holding 0x3f-0x4e (0xbb54-0xbb7b) and the stored
  pointer. It ends through the `cc` 0x64 branch to `mResolveFogTable` (0xbb77) after the overflow test at 0xbb76.
- `mgeb_PopMatrix_Color` (at 0xb99d): **inferred**, glPopMatrix on the colour stack. Its input is the pointer at 0x6a1; it
  subtracts 0x10 (M = 0x6c2, 0xb9a8) and compares it with 0x8e2 (0xb9a4), branching to `mErrStackUnderflow` on `cc` 0
  (0xb9b0); with the push limit 0x8f2 that leaves room for one saved matrix, which meets GL's minimum depth of two for
  this stack. The slot's sixteen words become the result in 0x190-0x19f (0xb9bb-0xb9db), and word 3 is rebuilt from the
  saved copy with the bitwise codes 0x51 and 0x50 (0xb9c1, 0xb9c3) and stored at 0xb9e3.
- `mgeb_PopMatrix_Texture` (at 0xb9ed): **inferred**, restores the texture matrix: it takes the pointer from 0x6a0, subtracts
  0x10 and compares the result with 0x8c2 (0xb9f4, 0xb9f8), one slot below the push limit, and an empty stack exits to
  `mErrStackUnderflow` (0xba00). The output is the slot copied back to 0x5f-0x6e (0xba0b-0xba29), with word 0xd set from the
  staged 0xf494 (0xba10) as in every texture copy.
- `mgeb_PopMatrix_Projection` (at 0xba3a): **inferred**, pops the projection: it takes pointer word 0x69f, subtracts 0x10 and compares
  with 0x8a2 (0xba45, 0xba41), underflow exit at 0xba4d; it yields 0x3f-0x4e from the slot (0xba58-0xba76), writes special
  register 0x29 (0xba79) so the composite is recomputed, and takes the `mResolveFogTable` branch (0xba7e).

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
- `uBackInvQ` (`uscreen2.s` lines 186-197, at 0x1115): **inferred**, the prologue of the textured divide loop `lSC3`. It
  copies engine words 0xbb, 0xbc and 0xbd into staging words 3, 4 and 5 (moves 0x1115, 0x1117, 0x1119), points address
  registers 1 and 2 at the two vertex records from registers 0x10 and 0x11 (0x1116, 0x1118) and register 0xa at the
  texture matrix at engine word 0x5f (0x111a), and steps the pass count in register 0 from register 0x19 (F = 0x25 at
  0x111b). It takes w of both vertices (record word 0x1a) and adds register 0x1e to each (unit-1 add M = 0x6e0 into
  registers 0 and 1, 0x111b and 0x111c), the value the loop's reciprocal seeds read. Its unit-2 words multiply each
  vertex's s (record word 0xb) by texture-matrix words 0x5f and 0x60 (0x111d-0x1120), the first products of the texture
  transform whose sums `lSC3` completes and stores as results.
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

## Light-source parameters (lightsource.S)

The ARM's light routines (`light_k0`, `light_spec` and the rest in [arm1_functions.md](arm1_functions.md)) send the
light's engine-memory address as operand 0 and the values after it. These handlers put the values in the light's block
in external memory: every store here has `r95` = 8, the external-memory store of `texenv.S`, and goes to address
register 0x16, the external-memory base, plus a field offset plus the light address. Which value each store sends
follows [the store-data register](ge_isa.md#the-store-data-register): it is the operand moved nine words before it,
and every store below sits exactly there. Read in full from the [lightsource.S listing](ge_listing/lightsource.S.lst)
(`ge.u`, IRIX 6.5.30m).

- `mLightColor` (`lightsource.S` lines 68-106, at 0xc70d): **inferred**, stores one light colour and marks lighting
  dirty. Its inputs are the four colour operands (words 1-4) and the field base in address register 4 that its caller
  set; 0xc711 adds the light address from register 3 to it. The four moves at 0xc70e, 0xc710, 0xc712 and 0xc714 give
  the results of the four colour stores at 0xc717, 0xc719, 0xc71b and 0xc71d, nine words after each, to register 4 + 0 to + 3. It also
  computes control word 0x86 ORed with 1 (0xc715) and stages the module addresses 0xf50d `mmo_DirtyLightModule` and
  0xf547 `mmo_DirtyCullAndLightModule` (0xc713, 0xc716), whose moves feed three predicated control-memory stores in the
  end-of-command shadow: 0x86 (0xc71e), successor word 0xc (0xc71f) and successor word 0xb (0xc720). So the next vertex
  batch runs the dirty-light module, which re-selects the lighting code. The predicate of those stores is **unknown** (what would settle it: the `r198` predicate field of the three store words, and whether the flag delay of [ge_ops.md](ge_ops.md) puts the result of 0xc70d ahead of 0xc71e-0xc720; if both hold, the predicate is bit 0 of control word 0x84);
  the only flags the routine sets come from 0xc70d, control word 0x84 ANDed with 1.
- `mgeb_LightAmb` (`lightsource.S` lines 126-143, at 0xc704): **inferred**, the ambient-colour entry. It takes operand
  0, the light address, into register 3 (0xc705) and derives register 4 from the external-memory base with address
  code F = 0xf (0xc708), then jumps to `mLightColor`, which writes the four ambient components there as its result. The words after its
  jump also stage 1 in staging word 5 and read control word 0x84, the flag test `mLightColor` begins with.
- `mgeb_LightDiff` (`lightsource.S` lines 159-176, at 0xc6fb): **inferred**, the diffuse twin of the ambient entry. It
  takes the same operands and runs the same eight words except the address code, F = 0x17 at 0xc6ff, which selects
  another field of the same light block; the result is the four diffuse components stored there by `mLightColor`.
- `mgeb_LightSpec` (`lightsource.S` lines 192-209, at 0xc6f2): **inferred**, the specular entry. Its input operands are
  the light address and four colour words; it selects the field with F = 0x13 at 0xc6f6 and its output is the light's
  specular colour in external memory, through the shared tail at 0xc70d.
- `mgeb_LightK0` (`lightsource.S` lines 229-244, at 0xc6e5): **inferred**, takes the constant attenuation factor
  (operand 1, moved at 0xc6e5) and the light address (operand 0, loaded into register 3 at 0xc6e6). In the end-of-command
  shadow it sets register 0x13 from the external-memory base with F = 8 (0xc6e9) and stores the factor at register 0x13
  plus register 3 (0xc6ee, F = 0x3f adds the two), nine words after the move; that stored word is its only result. There is no range test here; `light_k0`
  rejects a negative value before sending.
- `mgeb_LightK1` (`lightsource.S` lines 267-282, at 0xc6d8): **inferred**, takes the linear factor as its input
  operand. The words match K0's except the address code at 0xc6dc, F = 7 against K0's 8, which selects the neighbouring
  field for its result.
- `mgeb_LightK2` (`lightsource.S` lines 305-320, at 0xc6cb): **inferred**, consumes the quadratic factor, operand 1,
  and selects its field with F = 6 at 0xc6cf. With K0 and K1 it fills three fields whose address codes step down by
  one; the output word is the operand moved at the handler's first word, stored nine words on (0xc6cb to 0xc6d4).
- `mgeb_LightPos` (`lightsource.S` line 750, at 0xc500): **inferred**, sets a light's position or direction in eye
  space. Its operands are the four position words (command words 1-4) and the light address (word 0, loaded at 0xc503);
  it multiplies the position by the modelview matrix at engine words 0x2f-0x3e: sixteen products at 0xc504-0xc516, each
  component's four terms summed by `fmul.fadd` words (0xc50c, 0xc510, 0xc514, 0xc532). It then branches on `cc` 3 at
  0xc524 to 0xc59f, which forms a reciprocal (`rcpseed` 0xc5a1, `rcpstep` 0xc5a3, 0xc5ab) and scales the position by
  it; the other path squares and adds the components, takes a reciprocal square root (`rsqstep` 0xc541, `rsqseed`
  0xc543), compares the squared length with 1e-05 (0x3727c5ac, staged at 0xc550) and normalises the vector. Results go
  to the light's block in external memory (stores at 0xc52a, 0xc56b, 0xc566, 0xc579, and 0xc597-0xc59b) and to special
  registers 0x25, 0x2e and 0x2f; the dirty-module addresses 0xd9a2, 0xf449, 0xf50d and 0xf547 go to control words 0x9a,
  8, 0xc and 0xb (0xc52c, 0xc55a, 0xc589, 0xc58b), and 0xc5c4 and 0xc596 end the command.
- `mgeb_LightSpotDir` (`lightsource.S` line 626, at 0xc5cd): **inferred**, sets a spotlight's axis in eye space. It
  first calls `mMatrixInverse` (0xee7) at 0xc5cd on `cc` 0x76, so the inverse of the modelview at engine words
  0x1f-0x2e is current, then multiplies the three direction words (command words 1-3) by the nine words 0x1f-0x29
  (0xc5d6-0xc5e1) and accumulates the three sums (0xc5de-0xc5ee). A reciprocal square root of the summed squares
  (`rsqstep` 0xc5f9, 0xc605, `rsqseed` 0xc5fb) normalises the vector. The unit vector is written twice into the light's
  block, at offsets 5-7 (0xc61e-0xc622) and 0x14-0x16 (0xc616-0xc61a), with a further store at offset 0x22 (0xc61c),
  and the command ends at 0xc61d. Its operands are command words 1-3; the unit vector it produces is the stored result,
  derived from the inverse-matrix products.
- `mgeb_LightSpotExp` (`lightsource.S` line 450, at 0xc626): **inferred**, read word by word from 0xc626 to 0xc68e.
  It installs a spotlight exponent e, picks the cosine below which e's power falls under 0.002, and from it derives the
  light-block words the spot term reads. Operands: the light (command word 0, address register 3 at 0xc64d, offset by
  address register 0x16 at 0xc659), e (word 1) and the table slot index (word 2, address register 4 at 0xc62d).
  Range check: 0xc648 subtracts the staged 128.0 (0x43000000, 0xc644) from e and the branch at 0xc654 (`cc` 1,
  twelve words later) sends e > 128 to 0xc689 and `mErrInvalidValue` (0xd50a); the branch at 0xc653 tests the flags of
  the unit-1 operation 0x6a on e (0xc645) for a negative result and takes the same path.
  Cut-off cosine: 0xc62a converts the result of unit-1 operation 0x77 on e (0xc626) to an integer n, which 0xc633 puts
  in address register 0x1a; 0xc63b reads the word c at 0x1448 + n, an entry of the 0.002^(1/k) table `mGL_LightInitialize`
  builds there, so c^k = 0.002. 0xc642 subtracts c from register 0x1f (1.0), giving x = 1 - c.
  Reciprocal: the seeds at 0xc647 and 0xc64c and the steps at 0xc649 and 0xc64e give y1 = y0(2 - x y0); 0xc652 and
  0xc656 refine it to y1(2 - x y1), about 1/x, in register 0. 0xc651 multiplies x by the staged one thirty-first (0x3d042108,
  0xc650) into register 3, the cosine step `mLiPwrTable` multiplies by register 3 at 0x0dd7; `mLiPwrTable` (0xdc9) is
  called on `cc` 0x7e at 0xc655. This reading needs a unit-2 result to reach its register later than five words after
  the word that computes it and by eight (0xc651's x/31 is not yet in register 3 at 0xc652 or 0xc656, 0xc64e's y1 is
  at 0xc656), while unit 1 reaches it in four (0xc666 writes register 0x1c and 0xc670 reads it).
  Stores, by the nine-word store-data rule and a seven-word delay from each read through C to the loaded port (the
  reads at 0xc66f, 0xc671 and 0xc675 feed 0xc676, 0xc678 and 0xc67c; `mgeb_BitmapApplyOrig` 0xa7e8 and 0xa7ef show
  the same delay): e to light word 0x1d (0xc65e, store 0xc667) and to the slot at 0x1bff plus the index (0xc669);
  30.99997 (0x41f7fff0) times 1/x to word 0x1e (0xc662, 0xc66b), the scale that maps cos - c onto the 31 steps of
  the light's table; min(word 0x1b / x, 1.0) to word 0x1c (0xc675, `fmin` with register 0x1f at 0xc67a, store 0xc683),
  word 0x1b being the cut-off word `mgeb_LightSpotCutAng` stores at 0xc6c3; 32.0 x (262144.0 + index) to word 0x20
  (0xc666, 0xc670, 0xc674, store 0xc67d), the float 2^23 + 32 x index whose low mantissa bits are the light's 32-word
  offset in the power tables at 0x1100; and, under predicate `r198` = 3, the spot direction copy at words 0x14-0x16
  that `mgeb_LightSpotDir` writes, divided by x, to words 5-7 (stores 0xc67f, 0xc681, 0xc685). Word 0x1f gets 1/x
  times the unit-1 operation 0x6c of register 1 (0xc66d, 0xc672, store 0xc67b).
  Unknown: what the operations 0x6c, 0x6a and 0x77 compute, so what word 0x1f holds and how n is rounded from e; the
  condition behind predicate `r198` = 3 (set by 0x6a at 0xc673) and behind the predicated words 0xc638, 0xc63d and
  0xc63e. Special register 0xb is saved in staging word 0 (0xc63a), replaced (0xc640) and restored (0xc67b, 0xc689).
- `mgeb_LightSpotCutAng` (`lightsource.S` line 350, at 0xc697): **inferred**, installs a spotlight cut-off angle after
  range-checking it. The light address (command word 0, 0xc697) and the angle in degrees (word 1) are the operands, and
  the angle has the staged limits subtracted from it 180.0 and 90.0 (0x43340000 at 0xc69a, 0x42b40000 at 0xc699;
  subtractions 0xc69b and 0xc69d). The branches at 0xc6a8 and 0xc6a9 send an angle above the limit to
  `mErrInvalidValue` (0xd50a); 180 degrees takes the branch at 0xc6a7 to 0xc6b3, while any other valid angle calls
  `mSinCos` (0xe13) at 0xc6aa to produce its cosine. After the two paths merge, it clamps the result with `fmin`
  (0xc6be) and stores three words into the light block at offsets 0x1a-0x1c (0xc6c3, 0xc6c5, 0xc6c7), ending the
  command at 0xc6c2.

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
their second operand from a register: their routing form `r110` = 0x63d selects the vertex word for port 1 and register
`r148` bits 4-0 for port 2 ([ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding)), registers 0x1a-0x1c for the
texture words and register 1 for window x and y. An earlier reading had them subtract an origin block at 0xc9 through
address register 0xd. That register names the vertex slot of each store instead, described below. What unit-1 code 0x7e computes is
unknown: the diagnostic test does not exercise it, and it occurs only on the depth word of the drawing modules (`drawtri.S`,
`mdrawtri.S`, `drawlin.S`, `drawpnt.S` and four more).

**Inferred** (vertex slots). Each output store names a control-memory address besides the output window and its
offset E. The address is the immediate of a form-5 word with `r95` = 0x13 or 0x33, or address register 0xd (loaded with
0xc9 at 0x2899, 0x28d9 and 0x290d) with F = 0x1f - k for 0xc9 + k. A form-9 store, which has no room for it, takes the
address from a form-14 word just before it with C = 0x1e and `r95` = 0x13 (0x895a before 0x895b). Every drawing module
uses the same address for the same vertex word:

| Address | Vertex word |
|---|---|
| 0xcd, 0xce | window x and y (record words 0x23, 0x24) |
| 0xcf, 0xd0 | depth (word 0x25), in two stores |
| 0xcc, 0xcb, 0xca, 0xc9 | colour words 0x1e, 0x1d, 0x1c, 0x1b |
| 0xd2, 0xd3, 0xd4, 0xd1 | texture words 0x10, 0x11, 0x12, 0xf |
| 0xd5 | the vertex's command word |

`udrawtri.s`, `drawlin.S` and `drawmstpnt.S` are three examples (0x28ac, 0x8955, 0x7a09 for x). So the address names a
field of the raster-bus vertex packet, as the converter lists at 0x1c4 name the fields of a pixel word
([docs/rm.md](../docs/rm.md#pixel-and-texel-data-words)). The packing itself happens outside the program.

**Established** (E by slot, over every store of the drawing modules in `udrawtri.s`, `drawtri.S`, `mdrawtri.S`,
`drawlin.S`, `drawpnt.S`, `drawmstpnt.S`, `clear.S`, `refplane.S` and `phong.S`):

| Slot | E | Stores |
|---|---|---|
| 0xcf, high depth | 4 | 38 of 39 |
| texture word 0xf | 4 | 35 of 38 |
| 0xc9, last colour | 6 or 7 | 46 |
| 0x1f4 | 2 | 35 |
| 0x1f5 | 3 or 0 | 19 and 60 |
| every other slot | 0 | |

**Inferred:** E is the bus-mode code of [docs/rm.md](../docs/rm.md#bus-modes-2-and-3) (0 mode 1, 4 mode 3, 6 mode 2,
2 mode 0), put on the store that completes a 64-bit bus word. A vertex is then two bus words. The first, closed by the high
depth part, holds command, x, y and depth high in mode 3, and the second, closed by the last colour, holds the rest in
mode 2. That is the 3, 2 alternation of the vector files' vertex runs, whose mode-3 words carry the command nibble. Bit 0
of E (7 against 6 at 0xc9, 3 at 0x1f5) is set on the last vertex of a triangle, a line, a single point and each strip
vertex, or on a separate 0x1f5 store after the multisample points, fan points and stipple segments. It is set on neither
in the reference-plane and clear-vertex paths, so its meaning is **unknown**. What would settle it: a listing search for the words that read bit 0 of the E field or the 0x1f5 store downstream, or the engine netlist's use of that bit.

**Inferred** (where the command nibble comes from). The command field of the vertex packet gets its value from the 0xd5
store and from all-ones stores (M = 0x6d8, NOT of register 0x1e, which reads as zero) to the slots 0xd6-0xd9. Matched
against the commands the IR diagnostic sends ([docs/rm.md](../docs/rm.md#primitive-set-up-happens-in-the-pixel-generator)):

| Primitive | 0xd5 | All-ones store | Diagnostic's command |
|---|---|---|---|
| Point (`mmo_DrawPntPrim`, `mmo_DrawAAPntPrim`, `mmo_DrawDistAttPntPrim`) | register 0x1e, 0 | 0xd9 (0x849a, 0x8625, 0x8441) | 2 |
| Triangle (`lDI1`, `mmo_DrawTriPrimOffset`, `mRefPlane`, `mmo_DrawTriPrimPhong`) | 0 on all three vertices | 0xd7 on the third only (0x2964, 0x8e8d, 0x5b85, 0x92d1) | 0, 0, 6 |
| Line (`mDrawLinPrim`) | 0, then staging word 2 on the second vertex (0x8985) | 0xd8 on the second (0x8999) | 0 then 4 or 14 |

So 0xd7 sets 6 and 0xd9 sets 2. Which bits 0xd8 sets is not fixed, since the line command is 4 or 14 and staging word 2 is
not traced.

The multisample fan point `DrawMSTFanPnt` (0x79a3) writes the command value itself. Its 0xd5 store (0x7a06, and 0x7a38 in
the rim loop 0x7a20-0x7a4a) sends staging word 8 or 9. Its caller `mmo_DrawMSDistAttTablePntPrim` stages 7 in both
(0x7897, 0x7898) and then 0 in word 8 (0x78a6), so the centre goes with 0 and the rim loop with 7. That is the encoding
`tbuRoundPoint` uses for its rim points ([docs/rm.md](../docs/rm.md#set-up-arithmetic-what-the-software-fixes)), and it
is the second witness, from the engine program, that command 7 is the fan rule. GL strips and fans themselves do not reach
the bus as strips and fans on the independent-triangle path. The decomposers ([below](#decomposers-udecomposes)) turn them
into a table of triangles, and `lDI1` sends each as 0, 0, 6. The strip loop `lDI3` and the quad loop `lDI4` instead send
record word 0x26 to 0xd5, moved or shifted left by register 8 (0x28a6, 0x28e7), and `mmo_DrawTriPrimOffset` does the same
at 0x8fb7.

**Established** (what the engine itself does to word 0x26 before those stores). Counted over every store with offset
0x26 in the listings: none creates the word of an input vertex. Each is a read-modify-write of the same word
(`udrawtri.s` 0x289a, `mdrawtri.S` 0x8faa, `mdecompose2.S` 0xca5c-0xca7b), a copy from another record or a register in
the save and restore modules of `fluff.S` (0xe633-0xe680), the patch evaluator (`ueval2D.s` 0x0304-0x0307) and
`entry.S` 0xb46f, or is built from special register 0x2c for the vertices a clipper makes (`clip.S` 0xf0a2,
`linclip.S` 0xea81-0xeac9). The stores with B = 0x1c and offset 0x26 (`glmodes.S`, `line.S`, `polygon.S` and others)
write special register 0x26, not a record. So the word arrives with the vertex. Each module that sends it raw to 0xd5
first ORs 0xe0000000 into the word of the batch's first record. `mmo_DrawTri` stages 0xe0000000 as staging word 1
(0x2897), and `uDTList` ORs it into the word of the record at register 0x10 (0x289a, unit-1 0x54 with the staged word on
port 2). `mmo_DrawTriPrimOffset` does the same (0x8fa3, 0x8faa), and the line path stages the constant at 0x8dba. The
start-up code writes the constants the decomposers combine with the word: engine word 0x1d = 0xc1c00000 (staged at
`ge.S` 0xb208, moved at 0xb209, stored at 0xb212), and words 0xbe, 0xbf and 0xc0 = 0x00400000, 0x00800000 and
0x01000000 (moved at 0xb221, 0xb227 and 0xb21c, stored at 0xb22a, 0xb230 and 0xb225), each the value its store's
nine-word rule names. The strip decomposer XORs the word with 0xc1c00000 (0xcce-0xccf). The triangle decomposer masks
one of bits 22, 23 and 24 per vertex, and the swap decomposers test bit 28 (0xc98e, 0xc9b9).

**Inferred** (the layout of word 0x26). Bits 22-24 carry the GL edge flag, one bit per triangle edge after the mask.
The edge-flag command sends all ones or zero (`arm_edgeflag`, [arm1_functions.md](arm1_functions.md)), and the
triangle decomposer picks a different bit of it for each corner. Bits 31-28 are the vertex's raster command, since the
strip loop sends them unchanged. Setting bits 31-29 on a batch's first vertex gives command 14 or 15. That can only mark
the vertex that starts the run again, because a batch that continues a strip resends its two carried vertices first
([ged.md](ged.md#vertex-history-fields-x-and-z)). The fan-restore handler ORs the same constant into the saved records
it brings back. Bit 28 is the swap: the decomposers test it to choose the swapped triangle order, and the diagnostic
adds it to command 6 to make the fan rule 7 ([docs/rm.md](../docs/rm.md#primitive-set-up-happens-in-the-pixel-generator)).

Which value bits 31-29 hold on the later vertices of a strip is **unknown**. What would settle it: the raw record words of a drawn four-vertex strip read from the raster side of a live pipe, or the engine netlist's record-write stage. For the run to be drawn they must name the
triangle command: 6 with bit 28 clear for the strip rule, 7 with it set. No engine word puts it there, so the distributor
or the host interface must supply it as the record is written. Routes tried: the drawing modules, the decomposers' flag
words, `mgesi_TfanPolyRestoreEdge`, every store with offset 0x26 and every write of 0xc9-0xd9 (none outside the drawing
modules' output stores), the distributor program (no control word in `ged1b.u` sets the 6-bit r field, so none names a
record offset), the distributor's engine ports and its register 0x290 (below), and the strip handler the distributor
releases. `mgesi_TriangleStrip` (0xb699-0xb6b3) takes three input words (C = 0x1d at 0xb699-0xb69b: registers 0x1a
and 0x19, the count `uDTList` reads, and staging word 0x10) and stores only to special registers 0x0c-0x0e, 0x23 and
0x24 and to the successor words; it writes no vertex record. 

**Established** (the closing 0x1f5 and 0x1f4 words cannot carry it; route of the twelfth pass). In `lDI3` the 0xd5 store of
word 0x26 (0x28a6, and 0x28a7 for the second vertex) sits inside the loop 0x289d-0x28b9, so it runs once per vertex. The
all-ones store to 0x1f5 (0x28c4, E = 3, and 0x28c5 for the second thread) and the staging-word store to 0x1f4 (0x28c9,
E = 2) sit after the loop, in the eight-word shadow of the group-5 R88 return at 0x28c1 ([ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command)):
0x28c9 is its eighth word. They run once per batch, after every vertex has gone, so they close the batch and cannot give
each later strip vertex its command. Where the packing is done is **unknown**: KONA's engine has a 64-bit output port `re_d[64]` with
`re_dest` and `re_dtype` ([ge_isa.md](ge_isa.md#the-engines-microcode-port)), so the slot addresses 0xc9-0xd9 may name
fields of a block inside the engine, but no binary read says so. A read of the engine netlists would settle it, and until then
how 0xd5 and the all-ones slots form the command nibble is unknown. No engine word writes control
memory 0xc9-0xd9 or 0x1f4 (every store with `r211` and `r95` = 4-0xb whose address is an immediate, or an address
register loaded with one, was resolved; `ctx_load.S` 0x6686 writes 0x1f5 and the evaluators write 0x1f1-0x1f3). Next
route: find what the engine's output stage takes per slot. Check whether the ARM writes a field table for the vertex slots at
context start (`WriteCram` and `XWriteCram` callers, `CopyEramToCram`, `mgeb_LoadCram`), the way it writes the pixel
converter lists to 0x1c4 ([arm1_pixel_tables.md](arm1_pixel_tables.md)), and read the tag tables (`ptagBig`,
`ttagBig`), whose low bits are bus-mode codes like E.

**Established** (the distributor's engine ports, the `ge14_2ge`, `ge14_4ge`, `ge14_top4ges` and `ge14_btm4ges` netlists in
`usr/diags/IR/data/`, 6.5.30m). The distributor drives four port groups, a to d, each a 32-bit data bus `hq_data`, a 6-bit
record offset `hq_offset` and a 3-bit `hq_op`. Group k reaches engine k and engine k + 4: `hq_opd` lands on `gem3` and
`gem7`. The valid line `hq_valid` and the 2-bit `hq_status` are one per engine (0-7). So every word reaches an engine
with a record offset wide enough for word 0x26 and a 3-bit operation, and the engine answers with a 2-bit status. What
the `hq_op` codes mean is **unknown**: `irsaudit` names the scan cells (`ged_hq_op0`-`3`, `ged_hq_status0`-`7`,
`ged_hqStall0_a` and the rest) but only compares their CRCs with the gold files, and no shipped program writes or reads a
value of them. That the op is three bits, like bits 31-29, is a coincidence the software does not tie. What would settle it: the distributor netlist's decode of the three op lines, or a scan capture of the `hq_op` cells while one handler runs (hardware proposal first).

**Inferred** (register 0x290 is not the source). The edge-flag command loads distributor register 0x290 (descriptor
0x52000020) with all ones for a true flag and zero for false (`arm_edgeflag`, `arm1.u` 0x0c015c7c), and
`context_init_ged` (0x0c01fcb8) gives a new context 7. Seven is three set bits, one per edge bit 22-24, which fits the
register feeding the edge flag. It cannot feed bits 31-29: after `glEdgeFlag(GL_FALSE)` they would be 0 and no later
strip vertex would draw, and after a true flag they would be 7, command 14 or 15. The same context set-up loads 0x55
into register 0x294 (descriptor 0x52800020), whose bit 0 is the IRIS GL mode (`arm_irisgl_mode`) and bit 5 the
triangle-mesh mode (`arm_tmeshmode`); neither handler touches 0x290.

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

## Vertex-array unpacking (uunpack.s)

These modules turn the packed vertex-array records the distributor delivers into full vertex records before the
transform. **Inferred** from the words cited per entry (`ge.u` 6.5.30m). Common shape: the set-up label points registers 1
and 2 at two records (from address registers 0x10 and 0x11), loads the pass count into register 0 from register 0x19,
reads its successor from engine word 0xda (`r95` = 2), and the loop label handles two records per pass, one per thread
(W71 words take record 2). It steps both pointers by register 0x13, repeats on `cc` 0x11 in group 7 and ends with a
group-31 transfer to the successor. In every form the output record gets x, y and z in words 0-2 as delivered, word 3
(w) from register 0x1f, and colour in words 4-7. Register 0x1f reads as 1.0 there, since it also fills q.

- `mmo_UnpackVertexV3F` (`uunpack.s` lines 44-56, at 0x2c6b): **inferred**, set-up for position-only arrays. It reads the
  current colour from engine words 0x13a7-0x13aa (form-14 loads at 0x2c6b, 0x2c6d, 0x2c6f, 0x2c71) into registers 0, 2
  and 4 and the load latch. Each vertex then gets the current GL colour.
- `umo_UnpackVertexV3F`: **inferred**, second name at 0x2c6b (`uunpack.s` line 44) of the position-only set-up, whose
  input is the colour block at 0x13a7 and whose result is the four colour values staged for `V3Floop`.
- `V3Floop` (`uunpack.s` lines 60-69, at 0x2c78): **inferred**, the position-only loop. It writes w = register 0x1f
  (0x2c78) and the staged colour into words 4-7 of both records (0x2c7a-0x2c81), and advances both pointers by register
  0x13 (0x2c7e, 0x2c7f).
- `mmo_UnpackVertexV3F_C4UB` (`uunpack.s` lines 78-94, at 0x2c83): **inferred**, the prologue of the byte-colour unpack.
  It stages three shift counts and loads them into registers 0x15, 0x16 and 0x17 (0x2c85-0x2c8a), the mask 0xff into
  register 0x14 through staging word 3 (0x2c8b, 0x2c8c) and 1/255 (0x3b808080) into staging word 4 (0x2c8d). The counts
  are 24, 16 and 8: only those make the three shifted words below land on disjoint bytes once ANDed with 0xff. It then
  takes record word 3, the packed colour, as input and shifts it right logically by registers 0x15, 0x17 and 0x16
  (unit-1 code 0x5d at 0x2c90, 0x2c92 and 0x2c93), the first extraction whose results `V3F_C4UBloop` converts.
- `umo_UnpackVertexV3F_C4UB`: **inferred**, alias at 0x2c83 (`uunpack.s` line 78) of the byte-colour set-up. Its input
  is the packed colour in record word 3 and its result is the shift, mask and scale constants the loop uses.
- `V3F_C4UBloop` (`uunpack.s` lines 97-120, at 0x2c94): **inferred**, the byte-colour loop, two records per pass. Its
  input is record word 3, from which it computes the four bytes (w >> 24), (w >> 16) & 0xff, (w >> 8) & 0xff and w &
  0xff (logical right shifts 0x5d, ANDs 0x50 with register 0x14 at 0x2c95-0x2c97 and 0x2ca1-0x2ca3), converts each to
  float (0x73 at 0x2c94, 0x2c99-0x2c9b) and multiplies it by 1/255 read from staging word 4 (unit-2 multiplies M = 0x45d
  and 0x47f at 0x2c9c-0x2c9f). The results go to the colour words of the output record: bits 31-24 to word 4 (red),
  23-16 to word 5, 15-8 to word 6 and 7-0 to word 7 (alpha), each in [0, 1]. Word 3 is overwritten with register 0x1f,
  the w of 1.0 (0x2c98, 0x2ca4). The relative transfer at 0x2ca3 repeats it and 0x2ca4 ends the command.
- `umo_UnpackVertexV3F_N3S` (`uunpack.s` lines 129-146, at 0x2cad): **inferred**, set-up for position plus a
  short-integer normal. It loads the current colour from 0x13a7-0x13aa as `mmo_UnpackVertexV3F` does (0x2caf-0x2cb5) and
  stages 0x380000fd, about 1/32767, into staging word 4 (0x2cbb) as the normal's scale.
- `V3F_N3Sloop` (`uunpack.s` lines 150-200, at 0x2cbf): **inferred**, the short-normal loop. It takes record word 3 as
  two signed 16-bit values: the high half by an arithmetic right shift (0x5b, 0x2cbf, 0x2cc1) and the low half by a left
  shift then an arithmetic right shift (0x5f then 0x5b, 0x2cc0-0x2cc6), both by register 0x17. Each is converted (0x73)
  and multiplied by staging word 4, about 1/32767, and stored as normal x (word 8, high half) and normal y (word 9)
  (0x2cc7-0x2ccd). It then computes the third component: it squares words 8 and 9 (0x2cce-0x2cd1), adds the squares
  (0x2cd3), subtracts the sum from register 0x1f, 1.0 (0x2cd7, kept in register 0x1c), seeds the reciprocal square root
  of that difference (`r110` = 0x2bd at 0x2cdc), refines it with one Newton step (unit-2 code 0x57 at 0x2ce2) and
  multiplies the refined value by the difference (0x2cea), so the result in word 0xa is sqrt(1 - x^2 - y^2). So this
  record carries two normal components and the engine rebuilds the third as the positive unit-length z. The host packer
  agrees: `__glkonSendPackedVertexV3F_N3S` in `libGLcore_n32.so` (0x0da773ec, source lines 693-705; the 64-bit `libGLcore.so` has it at 0x02edc9cc) loads the first two
  shorts of the normal as one word, clears its bit 0 and ORs in the sign bit of the third short, so word 3 carries x, y
  and only the sign of z. The predicated subtracts at 0x2cee and 0x2cf0 (register 0x1f minus the stored z) are where the
  sign could be applied; which bit chooses them is open. It also writes w = 1.0 to word 3 and the current colour from
  registers 0, 2, 4 and 6 to words 4-7 (0x2cd4-0x2ce9).
- `mmo_UnpackVertexV3F_T2F` (`uunpack.s` lines 209-220, at 0x2cf3): **inferred**, set-up for position plus two float
  texture coordinates. Like the position-only set-up it stages the current colour from 0x13a7-0x13aa.
- `umo_UnpackVertexV3F_T2F`: **inferred**, second name at 0x2cf3 (`uunpack.s` line 209) of the float-texture set-up.
  Its input is the current colour block and its result is the colour staged for `V3F_T2Floop`.
- `V3F_T2Floop` (`uunpack.s` lines 223-240, at 0x2cff): **inferred**, the float-texture loop. It moves record words 3 and
  4 (s and t) to texture words 0xb and 0xc (0x2cff-0x2d02) before overwriting word 3 with w (0x2d03), stores r = register
  0x1e (zero) and q = register 0x1f (one) to words 0xd and 0xe (0x2d0d-0x2d10), and copies the colour to words 4-7.
- `mmo_UnpackVertexV3F_C4UB_T2F` (`uunpack.s` lines 249-258, at 0x2d12): **inferred**, set-up for position, byte colour
  and float texture coordinates. It stages three shift counts into registers 0x16-0x18 (0x2d14-0x2d19) and 1/255 into
  staging word 0 (0x2d1b).
- `umo_UnpackVertexV3F_C4UB_T2F`: **inferred**, alias at 0x2d12 (`uunpack.s` line 249) of that set-up. Its result is the
  shift counts and colour scale, and its input the per-context successor word 0xda.
- `V3F_C4UB_T2Floop` (`uunpack.s` lines 261-296, at 0x2d1c): **inferred**, the byte-colour and float-texture loop, two
  records per pass. Its input is the packed colour in record word 3 and the float s and t in words 4 and 5. It isolates
  each colour byte of word 3 with a left shift by registers 0x18, 0x17 and 0x16 (24, 16 and 8; 0x5f at 0x2d1c-0x2d21)
  followed by a logical right shift by 24 (0x5d at 0x2d2a-0x2d2f), and takes the top byte with one right shift by 24
  (0x2d22, 0x2d23). Each byte is converted (0x73 at 0x2d30-0x2d33, then the multiply-and-convert words M = 0x473 at
  0x2d34-0x2d37) and multiplied by 1/255 from staging word 0, and the products are its colour results, stored as bits
  31-24 to word 4, 23-16 to word 5, 15-8 to word 6 and 7-0 to word 7 (0x2d34-0x2d3b). It moves the float s and t from
  words 4 and 5 to words 0xb and 0xc (0x2d26-0x2d29) before the colour overwrites them, and stores r = 0 and q = 1
  (0x2d3c-0x2d3f) and w = 1.0 in word 3 (0x2d24, 0x2d25).
- `umo_UnpackVertexV3F_N3S_T2F` (`uunpack.s` lines 306-323, at 0x2d42): **inferred**, set-up for position, short normal and
  float texture. It stages the current colour (0x13a7-0x13aa) and the normal scale 0x380000fd, the union of the N3S and
  T2F set-ups.
- `V3F_N3S_T2Floop` (`uunpack.s` lines 327-383, at 0x2d54): **inferred**, the loop for position, short normal and float
  texture, two records per pass. It takes the packed normal in record word 3 and the float texture pair in words 4 and 5
  as input. It moves the float s from record word 4 to texture word 0xb (0x2d54, 0x2d55), t from word 5 to word 0xc
  (0x2d56, 0x2d57) and r = 0 to word 0xd (0x2d58, 0x2d59), then unpacks word 3 as `V3F_N3Sloop` does: the high and low
  signed halves are shifted out (0x5b at 0x2d5a, 0x2d5c), converted, multiplied by staging word 4 (about 1/32767) and
  stored as normal x and y in words 8 and 9 (0x2d62-0x2d68). The third component is computed, not delivered: 1.0
  (register 0x1f) minus x^2 + y^2 is subtracted and kept (0x2d72, 0x2d74), its reciprocal square root is seeded (0x2d77)
  and refined with the step code 0x57 (0x2d7d, 0x2d7f), and the product of the refined root and the difference, sqrt(1 -
  x^2 - y^2), is the result stored to word 0xa (0x2d85, 0x2d87). The predicated subtracts at 0x2d89 and 0x2d8b mirror
  those of `V3F_N3Sloop`. It also stores q = 1 at word 0xe (0x2d66, 0x2d6d) and writes the current colour to words 4-7.
  It has 16 unit-2 words per pass, the most of the unpack loops.
- `mmo_UnpackVertexV3F_T2S` (`uunpack.s` lines 392-405, at 0x2d8e): **inferred**, set-up for position plus two short
  texture coordinates. It stages the shift count into register 0x17 (0x2d90, 0x2d91) and the current colour from
  0x13a7-0x13aa.
- `umo_UnpackVertexV3F_T2S`: **inferred**, alias at 0x2d8e (`uunpack.s` line 392) of the short-texture set-up. Its inputs
  are the colour block and the shift count, and the loop consumes its results.
- `V3F_T2Sloop` (`uunpack.s` lines 408-431, at 0x2d9c): **inferred**, the short-texture loop, two records per pass. Its
  input is record word 3, which it splits into two signed 16-bit coordinates: an arithmetic right shift by register 0x17
  gives the high half (0x5b at 0x2d9e, 0x2d9f), and a left shift followed by an arithmetic right shift gives the low
  half (0x5f at 0x2d9c, 0x2d9d, then 0x5b at 0x2da4, 0x2da5). It converts both to float with no scale (0x73 at
  0x2dac-0x2daf) and its results are the high half as s (word 0xb) and the low half as t (word 0xc), with r = register
  0x1e (zero) and q = register 0x1f (one) at words 0xd and 0xe (0x2db0-0x2db3). GL short texture coordinates are not
  normalised, which matches the missing multiply. It also writes w = 1.0 to word 3 (0x2da0) and the current colour to
  words 4-7 (0x2da2-0x2dab). The conversions and stores sit in the delay words of the transfer at 0x2dab and write the
  records the trailing pointers 3 and 4 hold.
- `mmo_UnpackVertexV3F_C4UB_T2S` (`uunpack.s` lines 440-449, at 0x2db5): **inferred**, set-up for position, byte colour and
  short texture coordinates: the byte shift counts and 1/255, as in the C4UB_T2F set-up.
- `umo_UnpackVertexV3F_C4UB_T2S`: **inferred**, second name at 0x2db5 (`uunpack.s` line 440) of that set-up, which
  produces the constants and takes the successor from word 0xda.
- `V3F_C4UB_T2Sloop` (`uunpack.s` lines 452-493, at 0x2dbf): **inferred**, the byte-colour and short-texture loop. It
  combines the byte unpack of `V3F_C4UB_T2Floop` (12 conversions per pass: four colour bytes and two shorts for each of
  two records) with the short split of `V3F_T2Sloop`.
- `umo_UnpackVertexV3F_N3S_T2S` (`uunpack.s` lines 502-519, at 0x2dea): **inferred**, set-up for position, short normal and
  short texture. It stages the current colour and the normal scale 0x380000fd, as the N3S set-ups do.
- `V3F_N3S_T2Sloop` (`uunpack.s` lines 523-574, at 0x2dfc): **inferred**, the loop for position, short normal and short
  texture. Its inputs are the packed texture pair in record word 4 and the packed normal in word 3. It splits record
  word 4 into two signed halves for the texture (0x5f and 0x5b at 0x2dfc-0x2dff), which it converts unscaled into s and
  t (words 0xb and 0xc), and record word 3 into the two normal halves (0x5b at 0x2e08, 0x2e0a), which it converts and
  multiplies by staging word 4 (about 1/32767) into words 8 and 9 (0x2e10-0x2e16). The result in word 0xa is sqrt(1 -
  x^2 - y^2): the subtract from register 0x1f at 0x2e20 and 0x2e22, the seed at 0x2e25, the Newton steps at 0x2e2b and
  0x2e2d and the final multiply stored at 0x2e33. It writes the current colour to words 4-7, repeats through the
  relative transfer at 0x2e32 and ends at 0x2e33.

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
  clipping. It rebuilds the projection's third row as `uMatrixMultCCC` does, the third element minus the fourth
  of each column (projection words 0x41 minus 0x42, 0x45 minus 0x46, 0x49 minus 0x4a, 0x4d minus 0x4e) times the constant 0.5
  loaded at 0xf183. Its own subtracts use a different routing from `uMatrixMultCCC`'s: moves at 0xf184-0xf187 load the
  third elements, and the subtracts at 0xf189-0xf18c (unit-1 code 0x62, `r110` = 0x5fd) take that move's result five
  words back on port 1 (`r128` code 1) and the fourth element on port 2 (selector 3; read at 0xf188 for the first column, by the subtract
  word itself, immediates 0x46, 0x4a and 0x4e, for the others), so with port 1 minus port 2 ([ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding)) each is
  third minus fourth. It then multiplies each new vertex's eye-position input (record words 0x13-0x16, through registers 7 and
  0xf) by the projection words 0x3f-0x4e and stores the clip-space result to words 0x17-0x1a (0xf1b0, 0xf1b5). It returns
  through a group-5 indirect transfer.
- `mPerTriClipFlagsFrustum` (`clip.S` lines 922-990): **inferred**, recomputes the frustum clip codes of a polygon's
  vertices after clipping. For each vertex (pointer list through register 7) it takes w (record word 0x1a) as input,
  multiplies it by the four guard-band factors at engine words 0x71-0x74, and computes the six side distances as results: x and y
  subtracted from the scaled w for special registers 0x10-0x13, w plus the stored clip z' for 0x14 and register 0x1e (zero) minus z' for 0x15, z' = (z - w) / 2
  (0xef8f-0xef98). It ORs the resulting code from register 0x0d into the vertex's flag word 4 (0xefa1) and loops on `cc` 0x14
  through the transfer at 0xefab.
- `mClipTriFlush` (`clip.S` lines 1700-1771): **inferred**, saves and resets the clipper's state between triangles. It
  copies the clip-code special registers 0x0d, 0x0e and 0x0f into the save area at register 0x1b offsets 0x3e and 0x3f
  (0xf1e1-0xf1e3), writes the staged value 0x3f to 0x0d and 0x0e, records the vertex count and pointers at offsets 0x35-0x3d,
  and on its second entry (0xf1f4-0xf1fc) moves the saved words back into 0x0d-0x0f.
- `mSetClipVertsFree` (`clip.S` lines 860-890): **inferred**, rebuilds the free list of clip vertices. It loads the list
  heads 0x8178, 0x8484 and 0x8790 with the offsets 0x94, 0xa8 and 0xbc into registers 0xe and 0xf (0xf20b-0xf210) and stores
  the slot offsets 0x9c, 0x138, 0x1d4 and 0x270, steps of 0x9c, into the list (0xf215-0xf218), so `mClipPolyToPlane` can take
  new vertices from it.
- `mClipTriFlushSR` (`clip.S` line 1603, at 0xf14f):
  **inferred**, the clip flush that suspends the clipper's state and comes back to restore it. It takes the clipper's working
  registers as input: registers 0xa, 0xd, 0x12 and 0x19 go to offsets 0x36, 0x37, 0x35 and 0x3a of the save area at register 0x1b
  (stores 0xf150-0xf153), registers 0xb and 0xc to offsets 0x38 and 0x39 (0xf165-0xf166), and special registers 0xd-0xf are copied to
  offsets 0x3e and 0x3f (0xf156-0xf158). It resets special registers 0xd and 0xe to the staged 0x3f (0xf154-0xf15a), loads the
  transfer target from word 0xe and saves it at offset 0x3b (0xf159, 0xf15b), records 0xf at offset 0x3c and in register 0x19
  (0xf15c) and stores the continuation 0xf168 (staged 0xf15d) on the stack at register 0x17 (0xf15e, 0xf163, 0xf167) before the
  group-31 transfer at 0xf15f. The continuation at 0xf168 reloads registers 0x12, 0xa, 0xd, 0xb, 0xc and 0x19 from offsets
  0x35-0x3a (0xf169-0xf16e), writes the saved clip codes back to special registers 0xd-0xf (0xf172-0xf174), lowers register 0x17
  (0xf17e) and returns at 0xf179. It copies the saved registers into the save area and later restores them for the clip codes.

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
  0xa and W through register 0xb. Its 32 multiply words (0xeb5-0xed7) read W's words 0-7 and compute columns 0 and 1 of
  C x W, each result the dot product of a row of C with a column of W. The same words run in lane 1, whose register 0xb
  0xeb1 has moved on by 8 (under the lane-1 mask set at 0xeb0), so lane 1 reads W's words 8-0xf and computes columns 2 and
  3 ([Lanes](ge_isa.md#lanes)). Sixteen stores write C back through register 0xa (0xece-0xee5, the last seven in the
  eight-word shadow of the end of the command): `r95` = 4 stores lane 0's sums to C + 0 to C + 7, and `r95` = 5 stores
  lane 1's to C + 8 to C + 0xf. It writes special
  register 0x2c (predicated, 0xeb4), branches on `cc` 0x78 to `mResolveFogTable` when the target is the modelview of a fogged
  context, and ends with the end-of-command wait at 0xede.
- `uMatrixMultCCW`: **inferred**, the u-name at 0x0eb0 (`umatrix.s` line 209) of the same product: input matrices C at
  register 0xa and W at 0xb, output C x W written over C. It multiplies with the same 32 multiply words and stores the same 16 words.
- `mMatrixMultCCWNoFetch` (`sprite.S` lines 605-634, at 0x88e9): **inferred**, the sprite code's copy of the same
  product, called by `mSpriteRotateMatrix` and jumped to by `mSpriteRotateV0OntoV1`. Its inputs are words 0-7 of the
  matrix at register 0xb and the 16 words of C at register 0xa. Its 32 multiplies (0x88ee-0x8916) write registers 0x14
  and up, and its adds total them in fours. Of its 32 add words, the eight at every second word from 0x8912 to 0x8920
  add register 0x1e, which reads as zero, to a finished sum and load the store-data register with it. The 16 results go
  back over C, `r95` = 4 to C + 0 to C + 7 and `r95` = 5 to C + 8 to C + 0xf, each nine words after its move; the last
  eight stores sit in the shadow of the group-5 return at 0x8922. So it computes the same product as `mMatrixMultCCW`,
  lane 1 supplying columns 2 and 3 through the `r95` = 5 stores ([Lanes](ge_isa.md#lanes)): 0x88e9 selects lane 1 and
  0x88ea adds 8 to its register 0xb, as 0xeb0-0xeb1 do.
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
- `mMatrixAdjoint` (`umatrix.s` line 435, at 0x0f58): **inferred**, the cofactor matrix of a 4 x 4 matrix, which is the
  inverse scaled by its determinant (the sprite code uses it to find the eye direction in object space). Its input is
  the 16 words at register 0xa, which it first copies into a staging block at 0x8d2c (registers 0xd and 0xe loaded
  from it at 0x0f58-0x0f5b; sixteen reads and stores 0x0f5c-0x0f6b, in the order 8, 10, 13, 15, 4, 6, 9, 11, 12, 14, 5, 7,
  0, 2, 1, 3). It forms the 2 x 2 minors of the lower and upper row pairs with multiply-subtract words (0x0f6e-0x0f81),
  multiplies each by the matching element and adds or subtracts the products into the 3 x 3 cofactors (0x0f82-0x0f9e,
  with stores of eight words through register 0x18 at 0x0f8a-0x0f8d and 0x0f9b-0x0f9e). A predicate set at 0x0f76-0x0f91
  marks the elements whose sign is flipped, and eight predicated subtracts from zero (0x0f9f-0x0fa6) rewrite those words
  as their negatives. Its output is 16 words through register 0x18, eight from each of two lanes (the lane-1 copy sits
  8 words on), with no division by the determinant; it returns at 0x0fa7.
- `uMatrixAdjoint`: **inferred**, the u-name at 0x0f58 (`umatrix.s` line 435) of the same cofactor routine. It takes the
  matrix at register 0xa as input, computes the cofactors with the 2 x 2 minor words at 0x0f6e-0x0f81 and the sign
  corrections at 0x0f9f-0x0fa6, and produces the cofactor matrix at register 0x18 as its result.
- `mMatrixTransposeWW` (`matrix.S` line 34, at 0xd399): **inferred**, transposes the work matrix in place. Its input is
  the 16 words at register 0xb. It swaps the six off-diagonal pairs (1, 4), (2, 8), (3, 0xc), (6, 9), (7, 0xd) and
  (0xb, 0xe) with twelve moves, each reading word D and storing it at the mirror offset E (0xd399-0xd3a4); the diagonal
  words stay where they are, and the return at 0xd3a4 is the last move's own word. The result is the transposed matrix in place, made by moves alone.
- `mMatrixLoadIdentityC` (`matrix.S` line 54, at 0xd3f7): **inferred**, writes the identity into the current matrix. It has
  no input words. It loads the store-data register with zero (the move of register 0x1e at 0xd3f7), stores that zero to the
  twelve off-diagonal offsets of register 0xc (stores 0xd400-0xd407 with F = 0x1e-0x16 and 0xd408-0xd40b), reloads the store-data register
  with one (a move of register 0x1f, 0xd403) and stores it to the diagonal offsets 0, 5, 0xa and 0xf (0xd40c-0xd40f). The
  return at 0xd407 leaves the last stores in its shadow. Nothing in it computes anything; the result is the identity in the current matrix.
- `mFrustum` (`matrix.S` line 151, at 0xd410): **inferred**, builds the perspective matrix of a view frustum and
  multiplies it into the current matrix. Its inputs are the six command words left, right, bottom, top, near and far
  (A = 0x1f, D = 0-5, reads 0xd410-0xd416). It stages 2.0 (0xd412), forms the extents r - l, t - b and f - n and the sums
  r + l, t + b and f + n, takes reciprocals of the extents with seed and Newton steps (0xd41a-0xd422) and uses
  double-precision multiplies and subtracts (0xd42b-0xd43c) for the entries that follow. Its outputs are the sixteen staging
  words through register 0x18: the entries at offsets 0 and 5 are 2n/(r - l) and 2n/(t - b), offsets 8, 9 and 0xa are
  (r + l)/(r - l), (t + b)/(t - b) and -(f + n)/(f - n), offset 0xe is -2fn/(f - n), offset 0xb is -1.0 (the subtract at
  0xd413), and offsets 1-4, 6, 7, 0xc, 0xd and 0xf are zero (stores 0xd413-0xd44b). Five conditional branches to the
  invalid-value handler at 0xd50a (0xd44c-0xd450, `cc` 2, 2, 2, 0 and 8) reject a zero extent or a non-positive near or
  far plane. Otherwise register 0xb is pointed at 0x8d2c (0xd459) and the routine jumps to `mMatrixMultCCW` at 0xeb0
  (0xd454), which multiplies the new matrix into the current one.

## Pixel-path stages (scalebias.s, inttofloat.s, clamp.s)

**Established** from the three modules' words: a pixel-path stage reads its parameter block through address register 5
(loaded from the module's parameter address, 0x1f11 and the matching words of the others), takes its input components as
source A = 0x10 with D = k from the stream the previous stage left, and writes each result with an `r213` = 3 store at
E = k, two components behind the read; the loop transfer on `cc` 0x14 (0x1f96, `mainloop_*`) repeats while input remains and
the `epilogue_*` code drains the last components. The parameter offsets below use the F encoding of the matrix section.

- `mmo_ScaleBias` (`scalebias.s` lines 67-195): **inferred**, the GL pixel-transfer scale and bias stage
  (GL_RED_SCALE, GL_RED_BIAS and the rest). Its set-up reads the 0x1d-word block `U_uScaleBias` writes (`arm1.u` +0x30fa4):
  the header words into staging, then the four component scales and four biases, each written three times by the ARM, into
  24 registers (0x1f3d-0x1f6b). The loop `mainloop_sb` takes the RGBA components as input and computes each output as
  input x scale + bias for its component, with one two-unit word per component (unit-2 multiply, unit-1 add). The results
  go to the output stream for the next stage.
- `umo_ScaleBias`: **inferred**, the u-name at 0x1f07 (`scalebias.s` line 67) of the scale-and-bias stage: input pixel
  components; it multiplies each by its scale and adds its bias to give the output, with the 24 parameter words copied from
  the block of `U_uScaleBias`.
- `mainloop_sb` (`scalebias.s` lines 217-245): **inferred**, the loop at 0x1f82 that does the arithmetic: 24 input
  components per pass (D = 2-0x18 and 1); it multiplies each by the matching scale register and adds its bias, the results
  stored at E = 0-0x17 (0x1f83-0x1f9e); the loop transfer is at 0x1f96.
- `epilogue_sb` (`scalebias.s` lines 249-303): **inferred**, the drain at 0x1f9f: it multiplies the last 24 components by
  their scales and adds the biases, interleaved with the stepping of the input counter (`r222` words with C = 2), and the group-31 transfer at
  0x1fc9 ends the command once the results are stored.
- `umo_DepthFinal` (`scalebias.s` lines 313-384): **inferred**, the scale-and-bias set-up for depth pixels. Besides the
  parameter block it reads engine words 0x82 (the viewport depth scale of `mgeb_ViewPort`) and 0xc6 as input (0x1feb,
  0x1fed), combines them with the GL depth scale and bias by an add and a subtract (0x1ff0-0x1ff1), and multiplies the
  results into the 24 parameter registers (0x1ff4-0x2003), so the shared loop maps depth values to the window depth range
  in one multiply-add. It continues at `umo_DepthFinalCont` through the transfer at 0x2004.
- `umo_DepthFinalCont` (`scalebias.s` lines 198-213): **inferred**, the joint between the depth set-up and the shared loop
  at 0x1f77: it takes the epilogue branch at once (`cc` 0x15) for a short input, otherwise loads the stream pointers and
  multiplies the first two input components (0x1f7f, 0x1f81) before falling into `mainloop_sb`, whose results are the
  scaled depth values.
- `mmo_IntToFloat` (`inttofloat.s` lines 31-123): **inferred**, converts integer pixel components to float for the
  pixel path. It reads the six-word block `U_uI2F` writes (`arm1.u` +0x30bd0) and loads its last word, the scale the ARM
  picks by data type, into register 0 (0x203a). Each input component then goes through the unit-1 integer-to-float
  conversion 0x73 and a unit-2 multiply by that scale, so a byte or short component becomes a float result in GL's [0, 1]
  range when the ARM supplies the matching reciprocal.
- `umo_IntToFloat`: **inferred**, alias at 0x200d (`inttofloat.s` line 31): input integer components, output floats; it
  computes each as float(x) times the scale word of the `U_uI2F` block.
- `mainloop_i2f` (`inttofloat.s` lines 127-155): **inferred**, the conversion loop at 0x2053: per pass it converts 24 input
  components with code 0x73 and multiplies each by the scale (two-unit words 0x2054-0x206f), storing the results at E = 0
  upward through register 0x12.
- `epilogue_i2f` (`inttofloat.s` lines 159-213): **inferred**, the drain at 0x2070: it converts the last input components
  and multiplies them by the scale, and the group-31 transfer near its end closes the command after the final results are stored.
- `mmo_Clamp` (`clamp.s` lines 43-163): **inferred**, the clamp stage of the pixel path. It loads the 17-word block
  `U_uClamp` writes (`arm1.u` +0x3124c), four per-component scales repeated three times (1.0 when none are given), into
  registers, and its loop clamps each input component to [0, 1] with the unit-1 clamp 0x7c and multiplies it by its scale
  in the same word before the store of the result. The scale is the pixel map's size minus one when the stage feeds a look-up
  table, so the result is the table index GL defines ([ge_ops.md](ge_ops.md#the-clamp-above-10)).
- `umo_Clamp`: **inferred**, the u-name at 0x1633 (`clamp.s` line 43); it takes pixel components as input, clamps each to
  [0, 1] with code 0x7c and multiplies by the per-component parameter, producing the clamped results for the next stage.
- `mainloop_clamp` (`clamp.s` lines 167-195): **inferred**, the clamp loop at 0x1697: 24 input components per pass; it
  clamps each with code 0x7c and multiplies it by parameter register 1-8 in turn (0x1698-0x16b3), results stored at E = 0 upward.
- `epilogue_clamp` (`clamp.s` lines 199-253): **inferred**, the drain at 0x16b4 that clamps and multiplies the last
  input components and stores the results before the command ends.
## Fog (fog.S)

**Inferred**, from the words of `fog.S` in the listing and the GL fog model. Fog is applied per pixel by the texture
filters from a table (`TFP_FOG*`, the `ufog.fog_lut` RAMs of [docs/rm.md](../docs/rm.md#chips-on-each-board)); the engine's
part is twice over. Per vertex it turns the clip-space depth into an eye distance and evaluates the current fog function
on it, through a routine whose address the set-up handlers leave in control memory 0xa3c. Per state change it builds and
downloads the filter's fog table. The parameters live in engine memory from 0x9de (mode), 0x9df (density), 0x9e0 and
0x9e1 (start and end) and 0x9eb-0x9ed (the `GL_FOG_FUNC_SGIS` point list).

- `mZclipToEye` (`fog.S` lines 196-227, at 0x7604): **inferred**, converts the depth of two vertices from clip space to the eye
  distance the fog functions take as input. Starting at 0x7604 it limits each clip z by a minimum, multiplies and adds
  projection terms, takes a reciprocal (seed and Newton-Raphson steps at 0x7613-0x761d) and multiplies by it, so the
  result is a ratio of two linear functions of z, the inverse of the projection's depth mapping. Unit-1 code 0x6e, which
  the diagnostic test does not fix, writes the two results to registers 0x10 and 0x11 (0x7627, 0x7629) before the end of
  command at 0x7628.
- `mLinearFog` (`fog.S` lines 580-596, at 0x74a8): **inferred**, the per-vertex `GL_LINEAR` fog factor. It subtracts each of the two
  input eye distances from the end value (register subtracts at 0x74ac and 0x74ae), multiplies the differences by the stored
  1/(end - start) and clamps both results to [0, 1] with 0x7c into registers 0x10 and 0x11, the outputs the drawing
  modules send.
- `mInitLinearFog` (`fog.S` lines 553-563, at 0x74be): **inferred**, set-up of linear fog. It takes fog start and end from engine
  words 0x9e0 and 0x9e1 as input operands, subtracts them, computes the reciprocal of the difference with the seed and two
  Newton-Raphson steps (0x74d0-0x74dc), stores the result for the per-vertex multiply, and stores the linear routine's address at control address 0xa3c so later
  vertices run `mLinearFog`; it ends by calling `mZclipToEye`.
- `mExpFog` (`fog.S` lines 681-758, at 0x7431): **inferred**, the per-vertex exponential fog factor, e to the power of minus
  density times distance, for two vertices. It multiplies each input distance by the stored scale, limits it with a minimum
  against 127.998, splits it with unit-1 code 0x7b and the float-to-integer conversion (0x7445, 0x744a) into an integer
  part and a fraction, and uses the integer parts as indexes into two tables through address registers 0x12 and 0x13
  (0x745a-0x7477); the looked-up words are multiplied together and clamped with 0x7c to give the results in registers
  0x10 and 0x11.
- `mInitExpFog` (`fog.S` lines 641-662, at 0x748a): **inferred**, set-up of exponential fog. It reads the density from engine word
  0x9df as input, multiplies it by the constants 16 and 256 loaded at 0x749c and 0x749a to give the table scale as its result, stores
  127.998 as the index limit, points the per-vertex address at control address 0xa3c to `mExpFog` and the two table bases
  at 0x1555 and 0x15d5, then calls `mZclipToEye`.
- `mSplineFog` (`fog.S` lines 932-956, at 0x7372): **inferred**, the per-vertex `GL_FOG_FUNC_SGIS` factor. For each of the two
  input distances it subtracts the start of the current interval, multiplies by the interval's slope and adds its offset, with
  the outputs going to registers 0x10 and 0x11 (0x737e, 0x7380); when a distance falls outside the interval (`cc` 5 at
  0x737f) it calls `mUpdateSplineIntervals` and computes again.
- `mUpdateSplineIntervals` (`fog.S` lines 856-915, at 0x7390): **inferred**, finds the interval of the fog point list at 0x9ed that
  holds each input distance. Its loop (back transfer to 0x7391 on `cc` 4) steps through the point pairs, compares the
  distance with each point by subtraction, and on a match copies the interval's two end points into registers 4-7 and
  calls `mSplineSlopeAndOffset` for the result.
- `mInitSplineFog` (`fog.S` lines 815-840, at 0x73ec): **inferred**, set-up of the point-list fog. It copies the first two points of
  the list at 0x9ed into the interval registers as input and stores the spline routine's address at control address
  0xa3c, then calls `mSplineSlopeAndOffset` to compute the first interval's coefficients.
- `mSplineSlopeAndOffset` (`fog.S` lines 777-799, at 0x7404): **inferred**, computes the line through two fog points as slope and
  offset. It subtracts the two distances and the two factors, takes the reciprocal of the distance difference (seed and
  Newton-Raphson steps), multiplies to get the slope and derives the offset from one end point by a multiply and a
  subtract; the results are the coefficients `mSplineFog` uses.
- `mSplineFogGSS` (`fog.S` lines 972-1023, at 0x7534): **inferred**, the table-building form of the spline evaluation. It takes a
  distance as input, subtracts the interval ends, steps through the point list at 0x9ed in a loop (back transfer to 0x7556)
  and calls `mSplineFog` and `mUpdateSplineIntervals` to give the fog value at that distance as its result.
- `mDummy` (`fog.S` line 180, at 0x7631): **inferred**, the empty per-vertex routine: one word at 0x7631 that ends the command, so
  with fog off the vertex input passes through and no fog factor is computed or produced.
- `mSendFog` (`fog.S` lines 243-297, at 0x75d2): **inferred**, the per-primitive fog stage. It adds the vertex record's input depth words
  to an offset (0x75d8, 0x75d9), calls `mZclipToEye` and then the routine at 0xa3c through the indirect transfers at
  0x75da and 0x75e5, multiplies the two resulting fog factors by a scale, and writes the results for the raster bus;
  it ends with two bitwise-not words at 0x7600-0x7601 that store to bus address 0x1f5.
- `mgeb_InitFogGlobal` (`fog.S` lines 2810-3072, at 0x6cf0): **inferred**, initialises the fog state at start-up. Its 208 words
  combine operand words with small constants by XOR and OR (the enumerant tests of
  [ge_ops.md](ge_ops.md#settling-the-ties)), convert the default parameters with integer-to-float and float-to-integer
  conversions, and store the results, mostly by moves, into the fog block from 0x9de and the table descriptors.
- `mgesi_GetFogFunc` (`fog.S` lines 2728-2766, at 0x6e20): **inferred**, answers a query for the fog point list. It takes the count
  at 0x9eb and 0x9ec as input, writes the reply header 0x476 to bus address 0x1f7 (0x6e2e), moves the points from 0x9ed to bus address 0x1f5 in a
  loop (relative transfer at 0x6e3e) and closes with a word to 0x1f4 at 0x6e4a, returning the list to the host as its result.
- `mgeb_FogFunc` (`fog.S` lines 2639-2713, at 0x6e4b): **inferred**, stores a new `GL_FOG_FUNC_SGIS` point list. It takes the point
  count as its first operand, converts it with float-to-integer at 0x6e61, copies the operand pairs into the list at
  0x9ed in a loop (back transfer to 0x6e70), compares the mode word 0x9de with the fog-function enumerant 0x812a by XOR
  at 0x6e87 and, when that mode is current, calls `mLoadFogTable`, whose result is the rebuilt table.
- `mgeb_FogRestore` (`fog.S` lines 2599-2624, at 0x6ebf): **inferred**, rebuilds the fog table after a context restore. It tests the
  fog mode flags (`cc` 0x64 at 0x6ed3), and when fog is on calls `mLoadFogTable` so the filter's table again matches the
  restored parameters; no arithmetic of its own produces a result.
- `mgebi_FogOffsetEnableDisable` (`fog.S` lines 2555-2585, at 0x6eea): **inferred**, writes the fog offset enable to the filters.
  It moves fixed words (0x70000, 0x40000, 0x1621403, 0x42011200) to bus addresses 0x1f8, 0x1f5 and 0x1f4, a raster
  register write with its mode word, with no computed input.
- `mgebi_FogDisable` (`fog.S` lines 2503-2535, at 0x6f05): **inferred**, turns fog off in the filters with the same bus sequence as
  the offset handler but the fixed words 0x42011400 and 0x100000, so its output is a constant register write.
- `mgeb_FogEnable` (`fog.S` lines 2386-2483, at 0x6f1e): **inferred**, turns fog on. It takes the stored range words 0xa36-0xa38 as
  input, subtracts pairs of them (0x6f25-0x6f5f) and branches on `cc` 3 seven times (0x6f31-0x6f6c) to decide whether the table is still
  valid, writes the filter's enable register on the bus (0x1f8, 0x1f5, 0x1f4) and then calls `mSetFogOffset` and
  `mLoadFogTable` for the offset and table results.
- `mgeb_Fogi` (`fog.S` lines 2363-2367, at 0x6fa5): **inferred**, the integer-parameter entry: four words that store the operand
  pointer at 0xa35 and branch to `mgeb_Fogf`, which converts and handles the parameter.
- `mgeb_Fogf` (`fog.S` lines 2079-2349, at 0x6fb2): **inferred**, the `glFog` parameter handler. It compares the parameter name
  operand with the fog enumerants by XOR and dispatches on `cc` 2 (0x6fc9-0x6fcf, invalid names to `mErrInvalidEnum` at
  0x7058), stores density, start, end, index and mode
  into the block from 0x9de, clamps the four fog colour components with 0x7c (0x708f-0x7095), converts an integer parameter with
  float-to-integer, a subtract, a shift left and a shift right (0x70c9-0x70da), and writes the packed colour as its result to the
  filters.
- `mLoadFogTable` (`fog.S` lines 1831-1975, at 0x76a2): **inferred**, chooses how to build the filter's fog table. It reads the
  viewport and projection depth words (0x49, 0x4a, 0x4d, 0x4e) and the range words 0xa36-0xa38 as input, multiplies and
  subtracts them to get the depth range the table must cover, takes a reciprocal, and by the fog mode selects `mLoadOneBigTable` (`cc` 4 and 2 at 0x76f3 and 0x7701), `mDefineCoarseMode`
  (0x7710) or the finishing path (`cc` 3 at 0x76b5); the result is a table layout that
  `mStartFogDownload` sends.
- `mLoadOneBigTable` (`fog.S` lines 1736-1771, at 0x715c): **inferred**, lays out a single uniform table. It takes the near and far
  depth words 0xc7 and 0xc8 as input, multiplies their span by 4096, takes the reciprocal for the step, rounds with the
  2^23 constant (0x4b000000), and stores the start and step results at 0xa3a and 0xa3b before calling `mStartFogDownload`.
- `mDefineCoarseMode` (`fog.S` lines 1490-1594, at 0x7771): **inferred**, lays out the coarse part of a two-level table. From the
  input depth words 0xc7 and 0xc8 it computes the span and its reciprocal, applies unit-1 code 0x6c (not fixed by the test) to the break points and
  compares them against the large constants 0x4f600000-0x4f7f8000 and 0.001, calling `mStartGSS` where the fog function
  needs searched break points; the results go to 0xa3a and 0xa3b, and it continues into `mDefineFineMode`.
- `mDefineFineMode` (`fog.S` lines 1220-1449, at 0x71c8): **inferred**, lays out the fine part of the table. It subtracts and
  multiplies the input depth bounds to get the fine step as a result, compares against 251, 253 and 0.001 (constants loaded at 0x7206, 0x7241 and 0x7220),
  calls `mStartGSS` for searched points (0x7217, 0x7255), and writes the resulting mode word to the filters through bus address 0x1f8;
  it ends the command itself on `cc` 2 or 0x11.
  Its loop (0x71f0-0x72b6, indexed by address register 6, which 0x72a5 steps down with F = 0x20) is a best-so-far search. Before the loop it points
  address register 8 at engine word 0x8d2c (0x71eb) and stores 4096.0 there (0x71ef). Each pass loads a candidate word
  through register 9 (0x7281). 0x7282 subtracts the best word at register 8 from it in routing form `r110` = 0x7bd: port 1,
  the loaded word, minus port 2 ([ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding)), so d = candidate - best.
  0x7286 takes d forwarded from four words back (`r128` = 5) and subtracts the staged 0.001 (0x7285). With the
  [twelve-word flag delay](ge_ops.md#the-twelve-word-flag-delay), `cc` 0 at 0x7291 tests d <= 0 and goes to 0x729b, and
  `cc` 1 at 0x7292 tests d - 0.001 > 0 and skips to the step at 0x72a5. Falling through also reaches 0x729b. 0x729b stores
  the loaded word through register 8, making it the new best, and 0x72a4 records register 6 in staging word 0x2f. After
  the loop 0x72bf loads that index back into register 6. **Inferred:** the result is the pass whose candidate is smallest, with
  4096.0 as the ceiling. A later pass replaces the best when its candidate is no more than 0.001 above it, so near ties go to the
  later pass. The established port order makes this a minimum search, and the other order would make it a maximum search
  that starts at 4096.0.
- `mStartGSS` (`fog.S` lines 1162-1181, at 0x783f): **inferred**, starts a golden-section search for a table break point. It stores
  the address of `mLinearApproxParamsGSS` as the routine to run (0x730b) and sets up the search state at 0xa3f, so the
  result is a search that the following commands advance.
- `mGetInternalPointsGSS` (`fog.S` lines 1060-1071, at 0x7360): **inferred**, places the two interior probe points of a golden-section
  step. It subtracts the input interval ends, multiplies the length by 0.382 (0x3ec39581, the golden-section ratio), adds and
  subtracts it from the ends, and calls `mZclipToEye` to evaluate fog at the probes as its output.
- `mLinearApproxParamsGSS` (`fog.S` lines 1131-1147, at 0x730b): **inferred**, computes the straight line between the fog values at
  an interval's two ends: subtracts, takes the reciprocal of the distance difference, multiplies to get slope and
  offset, and continues to `mGetInternalPointsGSS` with those results.
- `mLinearApproxErrorGSS` (`fog.S` lines 1089-1114, at 0x7332): **inferred**, measures how far the fog function departs from that
  line at the two probes. It multiplies and adds to evaluate the line at the input probes, subtracts the true fog values, applies unit-1 code
  0x6e to the two differences and compares them, then narrows the interval and repeats through `mGetInternalPointsGSS`
  (`cc` 0x14) or ends; the result is the break point of largest error.
- `mStartFogDownload` (`fog.S` lines 1660-1715, at 0x7187): **inferred**, sends the table to the filters. It takes the table layout
  as input, multiplies three pairs of its words by the constants 21 and 12, 16 and 4, 20 and 8 and sums each pair
  (0x718b-0x71b1), writes the filter's table register 0x1405 through bus address 0x1f7 (0x71b4) as its output, and stores `mSendFog`
  (0x75d2) as the per-entry routine (0x71b7) before calling the entry loop at 0x0010 (0x71bf).
- `mLoadFineTable` (`fog.S` lines 1794-1813, at 0x7146): **inferred**, starts the download of the fine table: it stores
  `mFineTblSpecialEntry` (0x75ab) as the entry routine and the fine-table bounds from 0xa33 and 0xa34 as input to
  `mStartFogDownload`, whose result is the loaded fine table.
- `mOneBigTblSpecialEntry` (`fog.S` lines 522-535, at 0x74e4): **inferred**, computes the special first entry of the single table:
  it applies unit-1 code 0x6c, which the diagnostic test does not fix, to the start depth (0x74e8), stores `mSendOneBigTblSpecialEntry` (0x74f3) as the next routine and calls
  `mZclipToEye` and the fog routine at 0xa3c to produce that entry's value.
- `mSendOneBigTblSpecialEntry` (`fog.S` lines 484-508, at 0x74f3): **inferred**, sends that entry: it multiplies the input fog value by
  2.1875, converts it with float-to-integer, and writes it with the fixed words 0x400c000c and 0x42011000 to bus
  addresses 0x1f8 and 0x1f5, then calls `mFinishFogDownload` after this output.
- `mCoarseTblSpecialEntry` (`fog.S` lines 435-469, at 0x74ff): **inferred**, computes the coarse table's special entry. It converts
  the input entry index to float, multiplies by the coarse step and adds the start (0x750b-0x751b) to get the entry's depth,
  applies code 0x6c at 0x752a and calls `mZclipToEye` and the fog routine for the value, with `mSendCoarseTblSpecialEntry`
  (0x7595) as the routine that sends the result.
- `mSendCoarseTblSpecialEntry` (`fog.S` lines 386-409, at 0x7595): **inferred**, copies two values through the table pointer at 0x8d2c
  (0x759c-0x759d) and multiplies the four input coarse fog values by their scales (0x75a7-0x75aa), whose results go to the
  output window for the download.
- `mFineTblSpecialEntry` (`fog.S` lines 358-370, at 0x75ab): **inferred**, the fine table's special entry: stores
  `mSendFineTblSpecialEntry` (0x75ba) as the next routine and calls `mZclipToEye` so the fog routine evaluates the entry
  as its result.
- `mSendFineTblSpecialEntry` (`fog.S` lines 335-344, at 0x75ba): **inferred**, multiplies the fine entry's input fog value by 2.1875
  (0x75c2), the float reading of the word 0x400c000c loaded at 0x75c1, and calls `mFinishFogDownload`, producing the last table word.
- `mFinishFogDownload` (`fog.S` lines 311-317, at 0x75c3): **inferred**, closes the download: it writes 0x1389 to bus address
  0x1f4 (0x75c8-0x75ca), the end of the table transfer, and ends the command, with no computed input.
- `mResolveFogTable` (`fog.S` lines 2782-2790, at 0x763a): **inferred**, called from `mgeb_DepthRange` at 0xf3fa when the depth
  range changes: it calls `mSetFogOffset` and `mLoadFogTable` so both the offset and the table are recomputed for the
  new range, and produces no value of its own.
- `mSetFogOffset` (`fog.S` lines 1992-2041, at 0x765c): **inferred**, computes the fog depth offset and scale for the filters. It
  takes the offset parameters at 0x9e9 and 0x9ea and the projection depth words 0x49, 0x4a, 0x4d and 0x4e as input,
  multiplies and adds them, takes a reciprocal and limits with maxima, and writes the results with the register word
  0x1651406 to bus addresses 0x1f8 and 0x1f5.

## Feedback and selection (feedback.S, select.S, selectmods.S)

**Inferred**, from the words of the three modules and the GL feedback and selection rules. Both modes replace drawing:
the begin handlers set a bit in engine word 0x1b, and with the bit set the primitive output modules below run in place
of the drawing modules and send their results to the host on the raster-bus return path, framed by the reply words
0x476, 0x452 and 0x477 written to bus addresses 0x1f7 and 0x1f5.

- `mgeb_BgnFeedbackMode` (`feedback.S` lines 59-117, at 0xb72f): **inferred**, enters feedback mode. It takes the
  feedback type operand and compares it by integer subtract with the type enumerants 0x601-0x604 in turn (`GL_3D` to
  `GL_4D_COLOR_TEXTURE`), ORs the matching set of record-content flags (the constants 1, 5, 0x15 and 0x17 loaded at
  0xb738-0xb73b, the compares and ORs at 0xb73f-0xb759) into engine word 0x1b, and returns no value.
- `mgeb_EndFeedbackMode` (`feedback.S` lines 129-143, at 0xb720): **inferred**, leaves feedback mode by ANDing engine word
  0x1b with 0xefffffff, clearing the feedback bit 28; nothing is computed or returned.
- `mFeedbackVertex` (`feedback.S` lines 611-706, at 0xb93f): **inferred**, formats one vertex of a feedback record. It
  takes the vertex record as input, subtracts the window origin from window x and y (record words 0x23, 0x24), adds the
  depth offset from engine word 0xc6 to z and multiplies it by 2^-20 (9.53674e-07) and the coordinate scale 0.0625,
  clamps colour with 0x7c, and multiplies the texture coordinates by the texture matrix at engine words 0x5f-0x6e with
  multiply-add chains (0xb96c onward); every result is stored to the output window for the host.
- `mmo_FeedbackPoint` (`feedback.S` lines 475-595, at 0xb80f): **inferred**, the point form: it writes the point token
  0x701 as its first output word, converts the vertex count with integer-to-float, calls `mFeedbackVertex` once and
  sends the record with the reply header through bus addresses 0x1f7 and 0x1f5.
- `mmo_FeedbackLine` (`feedback.S` lines 314-453, at 0xb89a): **inferred**, the line form: it chooses the token 0x702 or
  the reset token 0x707 by testing bit 29 (mask 0x20000000, AND at 0xb8b5) of record word 4 of the vertex, then calls `mFeedbackVertex` for both
  end points, so the result is one line record per segment.
- `mmo_FeedbackTriangle` (`feedback.S` lines 161-296, at 0xb76e): **inferred**, the polygon form: it writes the polygon
  token 0x703 and the count 3 as input-derived header words, then calls `mFeedbackVertex` three times, each output vertex
  carrying the fields the feedback type flags select.
- `mgesi_FeedbackPixel` (`feedback.S` lines 725-811, at 0xb6bc): **inferred**, the record for a pixel operation (the
  bitmap, draw, copy-pixel tokens): it takes the current raster position as input, scales its depth by 2^-20 and its
  coordinates by 0.0625, clamps the colour with 0x7c, and sends the result with the reply header 0x476 to bus addresses
  0x1f7 and 0x1f5.
- `mgeb_BgnSelectMode` (`select.S` lines 212-233, at 0xc016): **inferred**, enters selection mode: it calls
  `mSelectFlush`, ORs 0x20000000 (bit 29) into engine word 0x1b and resets the name-stack depth at 0xa87, with no value
  returned.
- `mgeb_EndSelectMode` (`select.S` lines 245-262, at 0xc002): **inferred**, leaves selection mode: it calls
  `mSelectFlush` for the last hit and ANDs word 0x1b with 0xdfffffff to clear bit 29.
- `mgeb_InitNames` (`select.S` lines 36-58, at 0xc12e): **inferred**, `glInitNames`: when the selection bit of word 0x1b is
  set it flushes any pending hit through `mSelectFlush` and stores zero to the stack depth at 0xa87.
- `mgeb_PushName` (`select.S` lines 113-152, at 0xc086): **inferred**, `glPushName`: it flushes the pending hit, compares
  the depth at 0xa87 with the limit 0x40 by subtraction and branches to `mErrStackOverflow` when the stack is full;
  otherwise it stores the name operand at 0xa46 plus the depth and adds 1 to the depth.
- `mgeb_PopName` (`select.S` lines 70-100, at 0xc0e0): **inferred**, `glPopName`: after the flush it subtracts 1 from the
  depth at 0xa87, branching to `mErrStackUnderflow` when the depth was already zero.
- `mgeb_LoadName` (`select.S` lines 165-197, at 0xc02c): **inferred**, `glLoadName`: after the flush it replaces the top
  name of the stack at 0xa46 with its operand, or branches to `mErrInvalidOperation` when the stack is empty.
- `mSelectFlush` (`select.S` lines 282-401, at 0xc159): **inferred**, writes one hit record to the host. When the hit flag
  at 0x2a9 is set it adds 1 to the hit count at 0xa8b, takes the minimum and maximum depth of the hit as input (0xc1be,
  0xc1bf), scales them to unsigned 32-bit integers with the constants 2^32 and 2^20 loaded at 0xc1b9-0xc1f0, and sends
  the record (name count, minimum, maximum, the names from 0xa46 in a loop at 0xc1d5) behind the reply words 0x476 and
  0x477; the hit state is then reset.
- `mRecordHit` (`select.S` lines 316-399, at 0xbe8f): **inferred**, folds one primitive's depth range into the pending
  hit: it takes the primitive's minimum and maximum depth as input, combines them with the stored range by minimum and
  maximum operations, sets the hit flag at 0x2a9, and on an overflow condition (`cc` 0x4c) writes the register word to
  bus addresses 0x1f8, 0x1f5 and 0x1f4; the result is the updated range.
- `mmo_SelectPoint` (`selectmods.S` lines 203-241, at 0xbf6d): **inferred**, the point form of selection: for each input
  vertex not rejected by the clip codes (AND with the flag word) it adds the depth offset 0xc6 to z and takes the
  running minimum and maximum, then calls `mRecordHit` with the results.
- `mmo_SelectLine` (`selectmods.S` lines 138-181, at 0xbfaf): **inferred**, the line form: it adds the depth offset to
  both input end points' z, compares them by minimum and maximum, and passes the range to `mRecordHit`.
- `mmo_SelectTriangle` (`selectmods.S` lines 70-116, at 0xbecc): **inferred**, the triangle form: it adds the depth
  offset to each of the three input z values and reduces them with minimum and maximum operations to one range per
  triangle, the result `mRecordHit` merges.
- `mmo_SelectRasterPos` (`selectmods.S` lines 261-296, at 0xbf2f): **inferred**, selection for a raster position: when
  the position is valid (AND with the flag word) it compares its z by minimum and maximum with the stored range and
  calls `mRecordHit`, so a raster position inside the view volume counts as a hit.

## Pixel-path stages: mask, shift and add, expand, look-up, min-max and colour matrix

**Inferred**, from the words of each module and the ARM routine that writes its parameters ([arm1_functions.md](arm1_functions.md)).
Each stage has the shape of the stages in [Pixel-path stages](#pixel-path-stages-scalebiass-inttofloats-clamps): a set-up
(`umo_*`) that loads its parameter block, a `mainloop_*` of 24 components per pass that reads the input stream through
address register 0x10 and stores through register 0x12 two components behind, and an `epilogue_*` that drains the rest
and ends the command. The `mmo_*` names sit on the same words as the `umo_*` ones.

- `mmo_Mask` (`mask.s` line 29, at 0x1b07): **inferred**, the module name of the masking stage, on the same word as
  `umo_Mask`; the host picks it by slot and its words AND each input with a mask to give the masked result.
- `umo_Mask` (`mask.s` lines 29-102, at 0x1b07): **inferred**, loads the mask words from the stage's parameter block into
  registers (seven moves) as the operands of the loop, then branches straight to `epilogue_mask` (`cc` 0x15) when the
  input holds fewer than one pass of components.
- `mainloop_mask` (`mask.s` lines 107-134, at 0x1b3e): **inferred**, ANDs each of 24 input components with its mask
  register (0x1b3f onward) and stores the results, the loop transfer on `cc` 0x14 repeating while input remains.
- `epilogue_mask` (`mask.s` lines 139-192, at 0x1b5b): **inferred**, ANDs the last 23 input components with their masks,
  stores those results and ends the command with the group-31 transfer.
- `mmo_ShiftAdd` (`shiftadd.s` line 33, at 0x192e): **inferred**, the slot name of the `GL_INDEX_SHIFT` and
  `GL_INDEX_OFFSET` stage, on the same word as `umo_ShiftAdd`, which shifts each input index and adds the offset.
- `umo_ShiftAdd` (`shiftadd.s` lines 33-106, at 0x192e): **inferred**, takes the seven words `U_uShiftAdd` writes at
  0x1a3 (offset, shift and add arguments) as input, applies unit-1 code 0x4e (not fixed by the test) to one parameter,
  and branches on the sign of the result (`cc` 4 at 0x195c) to `shift_right` for a negative shift; otherwise it falls into `shift_left`.
- `shift_left` (`shiftadd.s` lines 111-119, at 0x1965): **inferred**, shifts the first four input indexes left by the
  shift count (four shift words) before the loop, or branches to the drain on a short input.
- `mainloop_sa_ls` (`shiftadd.s` lines 123-141, at 0x196e): **inferred**, the left-shift loop: per pass it adds the offset
  to four shifted indexes (integer adds at 0x196e-0x1971, stored as results) and shifts the next four input indexes left.
- `epilogue_sa_ls` (`shiftadd.s` lines 145-170, at 0x1981): **inferred**, finishes the left-shift case: the last indexes
  are shifted, the offset is added, and the results are stored before the command ends.
- `shift_right` (`shiftadd.s` lines 175-183, at 0x199b): **inferred**, the negative-shift entry: it shifts the first four
  input indexes right with the logical shift 0x5d, the mirror of `shift_left`.
- `mainloop_sa_rs` (`shiftadd.s` lines 187-205, at 0x19a4): **inferred**, the right-shift loop: it adds the offset to four
  indexes and shifts the next four right per pass, giving index >> -shift + offset as each result.
- `epilogue_sa_rs` (`shiftadd.s` lines 209-234, at 0x19b7): **inferred**, drains the right-shift case with the same shift
  and add pattern and ends the command after the last stored result.
- `umo_ShiftAdd_RGB` (`shiftadd.s` lines 247-320, at 0x19d1): **inferred**, the set-up of the three-component variant: it
  loads the same parameter words, applies code 0x4e twice to derive two shift counts, and branches on their sign to
  `shift_right_rgb`.
- `shift_left_rgb` (`shiftadd.s` line 325, at 0x1a08): **inferred**, a single transfer word that skips the RGB left-shift
  loop when the input is shorter than one pass, so no component is shifted there.
- `mainloop_sa_ls_rgb` (`shiftadd.s` lines 337-356, at 0x1a11): **inferred**, per pixel shifts the first three input
  components left and the fourth right by a register amount (0x1a12-0x1a15), so it repositions packed fields rather than
  adding an offset; the shifted results are stored.
- `epilogue_sa_ls_rgb` (`shiftadd.s` lines 361-384, at 0x1a26): **inferred**, applies the shift-left, shift-left,
  shift-left, shift-right pattern to the last three pixels and stores those results.
- `shift_right_rgb` (`shiftadd.s` line 390, at 0x1a3a): **inferred**, the one-word guard of the RGB right-shift loop,
  branching to its drain when fewer than one pass of input remains.
- `mainloop_sa_rs_rgb` (`shiftadd.s` lines 402-421, at 0x1a43): **inferred**, shifts all sixteen input components of a pass
  right with logical shifts and stores them, the RGB form for a negative shift count.
- `epilogue_sa_rs_rgb` (`shiftadd.s` lines 426-449, at 0x1a58): **inferred**, the last twelve right shifts of the RGB
  variant, whose stored results end the command.
- `umo_ShiftAdd_Luminance` (`shiftadd.s` lines 463-536, at 0x1a6c): **inferred**, the luminance variant's set-up, with the
  same parameter loads and two applications of code 0x4e as the RGB one, branching to `shift_right_luminance` on a
  negative count.
- `shift_left_luminance` (`shiftadd.s` line 541, at 0x1aa3): **inferred**, the guard word of the luminance left-shift
  loop: a short input goes directly to its drain.
- `mainloop_sa_ls_luminance` (`shiftadd.s` lines 553-572, at 0x1aac): **inferred**, the luminance loop, with the RGB
  loop's per-pixel shift pattern (three left shifts and one right shift, 0x1aad onward) on luminance input.
- `epilogue_sa_ls_luminance` (`shiftadd.s` lines 577-600, at 0x1ac1): **inferred**, drains that luminance loop with twelve
  more shifts before the command ends.
- `shift_right_luminance` (`shiftadd.s` line 606, at 0x1ad5): **inferred**, guard of the luminance right-shift loop.
- `mainloop_sa_rs_luminance` (`shiftadd.s` lines 618-637, at 0x1ade): **inferred**, shifts sixteen luminance inputs right
  per pass and stores the results.
- `epilogue_sa_rs_luminance` (`shiftadd.s` lines 642-665, at 0x1af3): **inferred**, the twelve-shift drain of the luminance
  right-shift case, the last luminance results of the stage.
- `mmo_Expand` (`expand.s` line 69, at 0x171e): **inferred**, slot name of the expand-to-RGBA stage, sharing its first word
  with `umo_Expand`.
- `umo_Expand` (`expand.s` lines 69-155, at 0x171e): **inferred**, reads the ten layout words `U_uExpand` writes at
  0x1b0-0x1b9 as input and selects the form by them: `expand_single` (`cc` 0x15), `expand_ci` (`cc` 0x14), `expand_l` or
  `expand_la`, falling into `expand_rgb` otherwise.
- `expand_rgb` (`expand.s` line 163, at 0x1760): **inferred**, guard of the RGB loop; a short input goes to its drain.
- `mainloop_exp_rgb` (`expand.s` lines 174-201, at 0x1768): **inferred**, turns three-component input into four: per pixel
  it moves red, green and blue to output words 0-2, writes the fill value (the alpha word from the layout block) to word
  3 and stores the next input into word 4 onward (0x1769-0x176d), so each RGB pixel results in RGBA with constant alpha.
- `epilogue_exp_rgb` (`expand.s` lines 206-239, at 0x1785): **inferred**, applies the same RGB-to-RGBA moves to the last
  input pixels and ends the command.
- `expand_la` (`expand.s` line 248, at 0x17a3): **inferred**, guard word of the luminance-alpha loop.
- `mainloop_exp_la` (`expand.s` lines 259-286, at 0x17ab): **inferred**, expands luminance-alpha input: it copies the
  luminance to red, multiplies it by a unit register into green and blue (0x17ad-0x17ae) and moves alpha into the fourth
  output, giving (L, L, L, A) results.
- `epilogue_exp_la` (`expand.s` lines 291-324, at 0x17c8): **inferred**, the luminance-alpha drain: the same move, two
  multiplies and move for the last pixels.
- `expand_l` (`expand.s` line 334, at 0x17e7): **inferred**, guard word of the luminance-only loop.
- `mainloop_exp_l` (`expand.s` lines 345-372, at 0x17ef): **inferred**, expands luminance input to (L, L, L, fill): one
  move and two multiplies replicate the luminance, and a move writes the fill into alpha of each result.
- `epilogue_exp_l` (`expand.s` lines 377-410, at 0x180c): **inferred**, drains the luminance-only expansion with the
  loop's move, two multiplies and fill move for each remaining pixel.
- `expand_ci` (`expand.s` lines 418-432, at 0x182a): **inferred**, chooses between the one-word and two-word colour-index
  loops (`cc` 0x14 to `expand_ci2`) from the layout words.
- `mainloop_exp_ci` (`expand.s` lines 443-470, at 0x183e): **inferred**, copies each colour-index input into four output
  words (0x183f-0x1842), so the index travels as four equal components for the later stages.
- `epilogue_exp_ci` (`expand.s` lines 475-508, at 0x185b): **inferred**, the colour-index drain, replicating the last
  indexes the same way.
- `expand_ci2` (`expand.s` line 517, at 0x1879): **inferred**, guard word of the second index loop.
- `mainloop_exp_ci2` (`expand.s` lines 528-555, at 0x1881): **inferred**, the second index layout, whose 24 moves per pass
  place each input index in the output positions this layout's words select.
- `epilogue_exp_ci2` (`expand.s` lines 560-604, at 0x189e): **inferred**, drains the second index layout with 24 moves and
  ends the command.
- `expand_single` (`expand.s` lines 616-642, at 0x18c7): **inferred**, set-up of the single-component form: it stores the
  fill values for the three components that the input lacks (moves at 0x18cb, 0x18d0, 0x18d8) and takes the drain on a
  short input.
- `mainloop_exp_single` (`expand.s` lines 650-677, at 0x18df): **inferred**, places each single-component input in its
  output slot and stores the three fill values beside it (0x18e0-0x18e3), giving four-component results.
- `epilogue_exp_single` (`expand.s` lines 682-735, at 0x18fc): **inferred**, drains the single-component expansion: 23
  moves place the last inputs beside their fill values, and the group-31 transfer ends the command after the stores.
- `mmo_LUT16` (`LUT.s` line 77, at 0x1b8d): **inferred**, slot name of the 16-bit-index look-up stage, sharing its words
  with `umo_LUT16`.
- `umo_LUT16` (`LUT.s` lines 77-242, at 0x1b8d): **inferred**, loads the 14-word `U_uLut` block (table size, six table
  offsets and the constant 2^23) into registers as input, and starts the pipeline with ten float adds of 2^23 to the first
  components, which turn each clamped, scaled component into an integer table index in the low mantissa bits.
- `mainloop_lut` (`LUT.s` lines 246-328, at 0x1c16): **inferred**, the look-up loop: each component is added to 2^23
  (0x1c16 onward) and the resulting index word addresses the table through registers 8 and 9, whose entry a unit-2 move
  (code 0x2f) brings back as the result.
- `postmainloop_lut` (`LUT.s` lines 332-333, at 0x1c69): **inferred**, two words between the loop and the drain that move
  the last in-flight look-ups out of the pipeline, with no arithmetic of their own.
- `epilogue_lut` (`LUT.s` lines 339-509, at 0x1c6d): **inferred**, drains the look-up pipeline: eight more index adds and
  the table reads for every component still in flight, the results stored before the command ends.
- `umo_LUT16RGBA_AlphaOnly` (`LUT.s` lines 518-683, at 0x1d15): **inferred**, set-up of the RGBA look-up that maps only
  alpha: the same parameter loads and first index adds as `umo_LUT16`.
- `mainloop_lut_rgba_alpha_only` (`LUT.s` lines 687-721, at 0x1d9e): **inferred**, per pixel it passes red, green and
  blue through with unit-2 moves and looks up alpha through the table, so only the alpha result changes.
- `postmainloop_lut_rgba_alpha_only` (`LUT.s` lines 725-726, at 0x1dc1): **inferred**, the two words that empty that
  loop's pipeline.
- `epilogue_lut_rgba_alpha_only` (`LUT.s` lines 732-806, at 0x1dc5): **inferred**, the drain of the alpha-only RGBA look-up,
  ending with eight unit-2 moves of the passed-through components.
- `umo_LUT16LA_AlphaOnly` (`LUT.s` lines 817-982, at 0x1e0e): **inferred**, set-up of the luminance-alpha look-up that maps
  alpha only, loading the table block as the RGBA form does.
- `mainloop_lut_la_alpha_only` (`LUT.s` lines 986-1020, at 0x1e97): **inferred**, passes luminance through and looks up
  alpha, two components per pixel.
- `postmainloop_lut_la_alpha_only` (`LUT.s` lines 1024-1025, at 0x1eba): **inferred**, pipeline flush of that loop.
- `epilogue_lut_la_alpha_only` (`LUT.s` lines 1031-1105, at 0x1ebe): **inferred**, drains the luminance-alpha alpha-only
  look-up and ends the command.
- `uColorMatrix` (`ucolormatrix.s` lines 59-62, at 0x298a): **inferred**, the start of the colour-matrix stage: four
  multiplies of the first input pixel's red by the first matrix column fill the pipeline.
- `clrmtrixloop` (`ucolormatrix.s` lines 68-87, at 0x298e): **inferred**, the colour-matrix loop: per pixel sixteen
  two-unit words (multiply-add, 0x298e onward) multiply the input RGBA by the 4 x 4 matrix of `U_mColorMatrix` and sum
  the products, giving the four output components; it repeats on `cc` 0x14 and ends on `cc` 0x11.
- `mmo_Minmax` (`minmax.s` line 62, at 0x143e): **inferred**, slot name of the `GL_MINMAX` stage, on the same word as
  `umo_Minmax`.
- `umo_Minmax` (`minmax.s` lines 62-125, at 0x143e): **inferred**, reads the seven `U_uMinMax` words at 0x17c-0x182 as
  input (the destination record and the initial range 0 and 1.0) and seeds 24 accumulator registers from them.
- `mainloop_mm` (`minmax.s` lines 129-154, at 0x1472): **inferred**, per input component a minimum into an even register
  and a maximum into the odd one ([ge_ops.md](ge_ops.md#settling-the-ties)), 24 words per pass.
- `epilogue_mm` (`minmax.s` lines 159-301, at 0x148d): **inferred**, folds the last inputs into the accumulators, then
  reduces the per-lane minima and maxima to one minimum and one maximum per component with chains of minimum and maximum
  words, the results for the merge routines.
- `merge1_mm` (`minmax.s` lines 381-432, at 0x154e): **inferred**, merges the single-component result with the stored
  range at 0x183 and 0x187 by minimum and maximum and stores it back.
- `merge2_mm` (`minmax.s` lines 318-375, at 0x1518): **inferred**, the two-component merge, comparing with the stored
  minima at 0x183-0x184 and maxima at 0x187-0x188.
- `merge3_mm` (`minmax.s` lines 438-486, at 0x157f): **inferred**, the three-component merge against stored words
  0x183-0x185 and 0x187-0x189.
- `merge4_mm` (`minmax.s` lines 492-540, at 0x15ad): **inferred**, the four-component merge against 0x183-0x186 and
  0x187-0x18a, the full RGBA min-max result.
- `uge_MinmaxFill` (`minmax.s` lines 544-578, at 0x15db): **inferred**, combines three operands with the stored range:
  three minima and three maxima (0x15ea-0x15ef) between the input words and the stored minimum and maximum, the results
  written back by predicated stores (0x15f3-0x15f8).

## Pixel-path stages: histogram, convolution and bitmaps

**Inferred**, from the words of `histogram.s`, `histogram.S`, `conv3x3.s`, `conv5x5.s`, `conv7x7.s`, `bitmaptofloat.s` and
`bitmaptoint.s`, with the parameter writers `U_uHistogram`, `U_uConv5x5S`, `U_uConv5x5G`, `U_uConv7x7G` and
`U_uConvolutionOutput` ([arm1_functions.md](arm1_functions.md)). The histogram counts and the convolution partial sums
live in engine external memory, which `mgeb_EramFill` clears before a transfer.

- `mmo_Histogram` (`histogram.s` line 46, at 0x13b4): **inferred**, slot name of the `GL_HISTOGRAM` stage on the first
  word of `umo_Histogram`; its words turn each input component into a bin number and count it.
- `umo_Histogram` (`histogram.s` lines 46-135, at 0x13b4): **inferred**, takes the eight `U_uHistogram` words at
  0x174-0x17b as input (copied into staging and registers 0 and 1 at 0x13b6-0x13c0), then starts the pipeline: the first
  component is multiplied by the bin scale, limited by a minimum against the last bin and converted to an integer
  (0x13ee, 0x13f2, 0x13f6).
- `mainloop_hist` (`histogram.s` lines 142-163, at 0x13ff): **inferred**, per input component: multiply by the bin
  scale (0x1401), minimum with the top bin (0x1405), float-to-integer (0x1409), then the bin address is formed through
  register 6 and the count there is updated in external memory; the relative transfer at 0x140e repeats it on `cc` 0x14.
- `epilogue_hist` (`histogram.s` lines 176-183, at 0x1417): **inferred**, two words that complete the last count update
  and end the command; the result is the histogram left in external memory.
- `uge_HistogramFill` (`histogram.s` lines 195-229, at 0x1420): **inferred**, adds three operand counts to three stored
  bins: it reads each stored word, adds the operand with an integer add (0x1430-0x1434) and writes the sums back with
  predicated stores (0x1439-0x143d).
- `mgesi_HistogramUpload` (`histogram.S` lines 155-255, at 0x449d): **inferred**, returns the histogram to the host: it
  writes the reply header 0x476 (0x44a0), reads the counts from external memory, converts them with float-to-integer
  (0x44c9, 0x44ce), ORs neighbouring fields into one word (0x44f7) and sends the results through bus addresses 0x1f5 and
  0x1f4, with loops on `cc` 0x14 at 0x44d3 and 0x44f6.
- `mgeb_EramFill` (`histogram.S` lines 71-85, at 0x4530): **inferred**, fills a block of external memory with one operand
  value by calling `DoEramFill`; the convolution and histogram set-ups use it to clear their areas.
- `mgeb_EramIndirectFill` (`histogram.S` lines 107-129, at 0x4503): **inferred**, the same fill with the block address
  taken from an operand pointer rather than the command itself, calling `DoEramFill` with that address.
- `DoEramFill` (`histogram.S` lines 38-53, at 0x4544): **inferred**, the fill loop: it stores the fill value to eight
  consecutive words per pass (predicated stores at 0x4547-0x4552), stepping the address register by its stride, and
  repeats through the relative transfer at 0x454d until the count is used up.
- `mgeb_EramMinmaxToCramMinmax` (`histogram.S` lines 306-327, at 0x443b): **inferred**, copies the eight min-max result
  words from external memory into control memory 0x183-0x18a, where `merge1_mm` to `merge4_mm` compare with them, using
  nine moves (0x443b-0x4471).
- `mmo_CramMinmaxToEramMinmax` (`histogram.S` lines 268-294, at 0x4472): **inferred**, the reverse copy, the module
  `AddMinMax` adds after the min-max stage: it moves the merged range from control memory 0x183-0x18a back to external
  memory, the result `HP_GETMINMAX` later reads.
- `mmo_GeneralConvolve3x3_124` (`conv3x3.s` line 127, at 0x20a3): **inferred**, slot name of the general 3 x 3 convolution
  for one, two or four components, on the same word as its set-up.
- `umo_GeneralConvolve3x3_124` (`conv3x3.s` lines 127-242, at 0x20a3): **inferred**, loads the kernel and layout words
  from control memory 0x112-0x11f as input (40 moves), points the external-memory partial-sum pointer at 0xfffef200, and
  branches to `normal_path_conv3` (`cc` 0x14) unless the image is too short for it.
- `normal_path_conv3` (`conv3x3.s` lines 246-339, at 0x2100): **inferred**, starts the convolution of a row: it sets the
  row pointers in address registers 0xb, 0xc and 0x10, multiplies the first input pixels by the nine kernel weights and
  begins the multiply-add chains that build each output as the sum of a 3 x 3 neighbourhood times the kernel.
- `mainloop_conv3` (`conv3x3.s` lines 345-386, at 0x214a): **inferred**, the 3 x 3 loop: two-unit multiply-add words
  combine each input pixel with three kernel weights and the partial sums read from external memory, so each pass adds
  one input row's contribution to three output rows.
- `epilogue_conv3` (`conv3x3.s` lines 393-421, at 0x216f): **inferred**, finishes the last pixels with nine multiply-adds
  and eight adds (0x216f-0x2187), stores the results, and points register 0x12 at the converter list 0x1c4 for the output
  stage before the command ends.
- `mmo_GeneralConvolve5x5_124` (`conv5x5.s` line 110, at 0x2189): **inferred**, slot name of the general 5 x 5
  convolution, sharing its first word with the set-up below.
- `umo_GeneralConvolve5x5_124` (`conv5x5.s` lines 110-269, at 0x2189): **inferred**, the 5 x 5 set-up: it seeds five
  words with 0x8000 and loads the 19-word block of `U_uConv5x5G` from 0x112 as input before branching to its normal path.
- `normal_path_conv5` (`conv5x5.s` lines 275-390, at 0x220b): **inferred**, starts a 5 x 5 row with seven multiplies and
  the first multiply-add chains, the 25-weight neighbourhood sum taking five input rows.
- `mainloop_conv5` (`conv5x5.s` lines 399-542, at 0x2265): **inferred**, the 5 x 5 loop: 109 words per pass of mostly
  two-unit multiply-adds that add each input pixel times five weights into five partial sums.
- `epilogue_conv5` (`conv5x5.s` lines 550-662, at 0x22d2): **inferred**, the 5 x 5 drain: 80 words of multiply-adds and
  adds that complete and store the last partial sums.
- `mmo_GeneralConvolve7x7_124` (`conv7x7.s` line 116, at 0x232d): **inferred**, slot name of the 7 x 7 convolution, on the
  first word of its set-up.
- `umo_GeneralConvolve7x7_124` (`conv7x7.s` lines 116-289, at 0x232d): **inferred**, the 7 x 7 set-up: the same 0x8000
  seeds and block loads as the 5 x 5 one, from the block `U_uConv7x7G` writes.
- `normal_path_conv7` (`conv7x7.s` lines 295-447, at 0x23bc): **inferred**, starts a 7 x 7 row: row pointers, seven
  multiplies and the opening multiply-add chains of the 49-weight sum.
- `mainloop_conv7` (`conv7x7.s` lines 456-726, at 0x2437): **inferred**, the 7 x 7 loop, 217 words per pass, adding each
  input pixel times seven weights into seven partial sums.
- `epilogue_conv7` (`conv7x7.s` lines 734-905, at 0x2510): **inferred**, the 7 x 7 drain of 133 words that completes the
  sums of the last pixels and stores them.
- `umo_BitmapToFloat` (`bitmaptofloat.s` lines 56-146, at 0x25a0): **inferred**, set-up of the bitmap-to-colour stage: it
  loads the seven layout words from 0x1ba-0x1c0 as input and builds the bit masks 4, 0x10, 0x20, 0x40 and 0x80, then
  tests the first input word bit by bit with AND words paired with unit-2 code 0x0f, the integer multiply
  ([ge_ops.md](ge_ops.md#how-one-m-names-two-operations), inferred from the cube test); it falls into the least-significant-first loop or branches to `b2f_msb_first`.
- `mainloop_b2f_lsb_first` (`bitmaptofloat.s` lines 150-169, at 0x25e5): **inferred**, per input bitmap word it isolates
  each bit with an AND or shift (0x25e6 onward), least significant first, and stores one output per bit through
  register 0x12, the value the paired integer multiply produces; the loop repeats on `cc` 0x14.
- `epilogue_b2f_lsb_first` (`bitmaptofloat.s` lines 173-215, at 0x25f9): **inferred**, the drain for the last bits of the
  least-significant-first order, with the same AND and integer-multiply pairs.
- `b2f_msb_first` (`bitmaptofloat.s` lines 219-236, at 0x2620): **inferred**, the entry for `GL_UNPACK_LSB_FIRST` false:
  four ANDs prepare the masks for the most-significant-first order before its loop.
- `mainloop_b2f_msb_first` (`bitmaptofloat.s` lines 240-260, at 0x262d): **inferred**, the most-significant-first loop:
  bit by bit from the top, one output value per bit.
- `epilogue_b2f_msb_first` (`bitmaptofloat.s` lines 264-306, at 0x2642): **inferred**, drains the most-significant-first
  order for the last bits of the bitmap.
- `mainloop_b2i_lsb_first` (`bitmaptoint.s` lines 126-160, at 0x26a3): **inferred**, the integer form: per input word it
  shifts right by four counts (0x26a5-0x26a8) and ANDs each result with 1 (0x26a9-0x26ac), storing 0 or 1 per bit,
  least significant first.
- `epilogue_b2i_lsb_first` (`bitmaptoint.s` lines 164-214, at 0x26c6): **inferred**, the shift-and-mask drain of the
  least-significant-first integer case, 47 words.
- `b2i_msb_first` (`bitmaptoint.s` lines 218-228, at 0x26f7): **inferred**, the guard of the most-significant-first
  integer loop, taking the drain on a short input.
- `mainloop_b2i_msb_first` (`bitmaptoint.s` lines 232-266, at 0x26ff): **inferred**, the same shift-right and AND-with-1
  conversion with the shift counts in the reverse order, so the top bit comes out first.
- `epilogue_b2i_msb_first` (`bitmaptoint.s` lines 270-320, at 0x2722): **inferred**, drains the most-significant-first
  integer case and ends the command after the last stored bit.

## Colour tables and pixel output (colortable.S, upixout.s, upixelSetup.s)

**Inferred**, from the words of the three modules. The colour-table code serves `glColorTable` and the colour-index maps:
it fills ramps, packs tables for the texture filters' look-up RAM (`TFT_TLUT_DATA_*`, [RM.h](../RM.h)) and sends tables
back to the host. The output modules are the last pixel stage, which clamps, scales to the destination's integer range
and packs fields for the raster bus ([docs/rm.md](../docs/rm.md#pixel-and-texel-data-words)).

- `mgeb_ColorTableSetup` (`colortable.S` lines 69-91, at 0x422e): **inferred**, takes the table record operands as input,
  stores 0x8000 and the record words into control memory 0x1ec-0x1ee and calls `uEvalSaveState`, so the table builders
  that follow reuse the evaluator state as working space.
- `mgeb_LutRamp1` (`colortable.S` lines 373-426, at 0x4022): **inferred**, fills a one-component table with a ramp: per
  entry it adds the step to the running value (integer adds), applies unit-1 code 0x51 (not fixed by the test) and ORs
  the result into the packed table word, looping through the transfer at 0x4048.
- `mgeb_LutRamp3` (`colortable.S` lines 294-351, at 0x4074): **inferred**, the three-component ramp: 192 words that step
  three running values, apply code 0x51 to each, shift them into position and OR them into packed entries, the results
  stored for the download.
- `mgesi_TLutDownload` (`colortable.S` lines 582-609, at 0x3f52): **inferred**, starts a texture look-up table download:
  it takes the table description operands as input, stores them in control memory 0x299-0x29f and writes the filter
  register word 0x1854 to bus address 0x1f7.
- `mmo_TLutDownloadI` (`colortable.S` lines 744-774, at 0x3ea8): **inferred**, sends an intensity table: it moves each
  input entry to the bus with the register words 0x420c2400, 0x20c1800, 0x20c0c00 and 0x20c0000, one per filter RAM,
  looping on `cc` 0x14 and ending in `mTLutDownloadDone`.
- `mmo_TLutDownloadLA` (`colortable.S` lines 695-729, at 0x3edb): **inferred**, the luminance-alpha table form: it passes
  each input entry through the integer multiply (unit-2 code 0x0f, 0x3ee5), steps the RAM addresses at 0x295-0x298 with integer adds and writes the entries
  with register words 0x2180000 and 0x2181800.
- `mmo_TLutDownloadRGBA` (`colortable.S` lines 643-680, at 0x3f10): **inferred**, the four-component table form, with the
  same address stepping as the LA form and two loops on `cc` 0x14 (0x3f22, 0x3f30) for the colour and alpha halves.
- `mTLutDownloadDone` (`colortable.S` lines 617-628, at 0x3f49): **inferred**, ends a table download with two bitwise-not
  stores to bus addresses 0x1f5 and 0x1f4, the closing words of the transfer; nothing is computed.
- `mmo_LUT_I2I_16` (`colortable.S` lines 1056-1178, at 0x3aae): **inferred**, the colour-index-to-index map: it loads the
  map size and table addresses from control memory 0xb9e-0xba6, subtracts and ANDs to keep each input index inside the
  map, reads the mapped index through the table pointer and stores it as the result.
- `mmo_LUT_I2C_16` (`colortable.S` lines 947-1035, at 0x3b81): **inferred**, the index-to-colour maps: the input index is
  masked the same way and used to read four tables (red, green, blue, alpha addresses at 0xb9f-0xba9), giving four
  colour results per index.
- `mmo_LUT16_big` (`colortable.S` lines 809-929, at 0x3c18): **inferred**, the look-up for tables above 0x1000 entries:
  each input is turned into an index with float adds and float-to-integer conversions, split into word and field parts
  by shifts and ANDs, and the packed table word is read and unpacked as the result.
- `mgesi_LutUpload` (`colortable.S` lines 1207-1252, at 0x3a6d): **inferred**, returns a colour table to the host: it
  unpacks each stored entry with shifts and ANDs, converts the fields to float with four integer-to-float words
  and multiplies them by a scale register, using 0xffff as the field mask, and sends the results behind the reply header 0x476.
- `mmo_Lutout` (`colortable.S` lines 108-141, at 0x41fb): **inferred**, set-up of the colour-table output stage: it loads
  the eight `U_uLutOutput` words from 0x161-0x168 and jumps to `umo_EvalEntry1D` to run the table entries through it.
- `mmo_LutoutI` (`colortable.S` lines 239-252, at 0x416c): **inferred**, packs intensity entries: per input it clamps
  with 0x7c, multiplies by the field maximum, converts to integer and shifts and ORs it into the output word.
- `mmo_LutoutLA` (`colortable.S` lines 208-221, at 0x418e): **inferred**, packs luminance-alpha entries: two clamps,
  multiplies and conversions per input pair, the alpha field shifted above the luminance.
- `mmo_LutoutRGBA` (`colortable.S` lines 174-191, at 0x41b5): **inferred**, packs four-component entries with four
  clamps, multiplies and conversions, the fields shifted and ORed into the result word.
- `mLutoutDone` (`colortable.S` lines 151-160, at 0x41e0): **inferred**, closes the colour-table output by restoring
  control words 0x164 and 0x165 and ending the command; nothing is computed.
- `mgeb_PixMapOutputRGBA` (`colortable.S` lines 515-561, at 0x3f87): **inferred**, writes an RGBA pixel map: it clamps each
  input component, multiplies by 65535 (0x477fff00), converts to integer, applies code 0x51 and shifts and ORs two
  16-bit fields into each output word.
- `mgeb_PixMapOutputI` (`colortable.S` lines 449-489, at 0x3fd8): **inferred**, the index pixel map: it converts each input
  to integer, masks it to 16 bits with 0xffff and packs two per output word by a shift of 16 and an OR.
- `ugesi_PixDrawColorEntry` (`upixelSetup.s` lines 51-70, at 0x27d5): **inferred**, the pixel-path entry for colour data:
  it takes the raster position words at 0x16e and 0x16f as input, subtracts and adds the offsets from 0x129 and the
  constant 0x10000, and stores the results as the start of the pixel rectangle.
- `mgesi_PixDrawColorEntry` (`upixelSetup.s` line 51, at 0x27d5): **inferred**, the slot name on the same word, so the
  host reaches the same subtract-and-add of the raster position through either name.
- `umo_Pixout32_8_16` (`upixout.s` lines 60-97, at 0x27e5): **inferred**, set-up of the integer output module: it loads the
  output record words from 0x161-0x169 (address, count, tag and the scale of the destination format) and writes the bus
  header to 0x1f5 and 0x1f4, then clamps the first two input components with 0x7c.
- `loop32_8_16` (`upixout.s` lines 100-144, at 0x2803): **inferred**, the output loop: per component a clamp with 0x7c
  paired with a multiply by the destination maximum, 24 per pass, the scaled results packed and sent.
- `uPO_2_4C` (`upixout.s` lines 170-173, at 0x2831): **inferred**, entry for two- and four-component output: four clamps
  prime the pipeline with the first input pixel.
- `uPO_2_4C_loop` (`upixout.s` lines 178-188, at 0x2835): **inferred**, eight clamp-and-multiply words per pass for two or
  four components, ending on `cc` 2 when the count runs out.
- `uPO_2_4C_LastBlck` (`upixout.s` lines 194-202, at 0x2841): **inferred**, the last block: four clamps and four
  multiplies give the final scaled results before the command ends.
- `uPO_8_16C` (`upixout.s` lines 209-212, at 0x284a): **inferred**, entry for 8- and 16-component blocks: four clamps on
  the first input words.
- `uPO_8_16C_loop` (`upixout.s` lines 216-257, at 0x284e): **inferred**, the packing loop whose stores name the converter
  list through register 0x12 ([docs/rm.md](../docs/rm.md#pixel-and-texel-data-words)): 39 clamp-and-multiply words
  scale each input into its field.
- `uPostLoop` (`upixout.s` lines 259-271, at 0x2876): **inferred**, drains the packing pipeline with eight more
  clamp-and-multiply words and four multiplies, the last results of the transfer.
- `uPO_8_16C_LastBlck` (`upixout.s` lines 275-283, at 0x2883): **inferred**, the short last block: four clamps and four
  clamp-and-multiply words, then `uPostLoop`.

## Evaluators (eval*.s, evalbasis.s, evalmisc.s, ueval1D.s, ueval2D.s, uevalbasis.s, uevalcoord.s)

**Inferred**, from the words of the evaluator modules and the GL evaluator model (`glMap1`, `glMap2`, `glEvalCoord`,
`glEvalMesh`). The engine converts each map's Bernstein control points to power-basis coefficients once, when the map is
defined, and then evaluates every coordinate by Horner's rule, with a second chain for the derivative when normals are
generated. The 1D and 2D map sets share working memory (`WRAM`); the state routines swap the inactive set out to engine
external memory. Coefficient blocks sit at engine addresses 0x8010-0x8178, one block per map type; the order and domain
words are at 0x1ec-0x1f3 and 0x453-0x461.

- `ugeb_EvalMapSpec1D` (`ueval1D.s` lines 114-187, at 0x53): **inferred**, the `glMap1` specification handler. It takes
  the map type, order and domain operands as input, converts the order with float-to-integer, masks and adds to form the
  coefficient block's address (blocks at 0x8010, 0x8080, 0x80f0 and 0x8160), stores the domain words, and copies the
  control points into the block with unit-2 moves, the result a block ready for `uEvalChangeBasis1D`.
- `mgeb_EvalMapSpec1D` (`ueval1D.s` line 114, at 0x53): **inferred**, the slot name on the first word of
  `ugeb_EvalMapSpec1D`, through which the host sends the 1D map specification that it converts and stores.
- `ugeb_EvalMapData1D` (`ueval1D.s` lines 220-257, at 0x9c): **inferred**, receives a 1D map's control-point data: it
  takes the map number operand, ANDs it to a block index, converts the count with float-to-integer and calls
  `uEvalSwapState2D` or `uEvalLoadState1D` so the 1D set is resident before `levaldata1dloop` stores the points.
- `mgeb_EvalMapData1D` (`ueval1D.s` line 220, at 0x9c): **inferred**, the slot name of that data handler on the same word,
  so its input points reach the same resident block.
- `levaldata1dloop` (`ueval1D.s` lines 259-279, at 0xc2): **inferred**, the copy loop: it moves each input word into the
  coefficient block through the pointer at 0x1ec, repeating on the counter (transfer at 0xc2) until the count ends.
- `ugeb_EvalGrid1D` (`ueval1D.s` lines 292-313, at 0xd1): **inferred**, `glMapGrid1`: it stores the grid count, converted
  to float with integer-to-float, and the grid end points as input words at 0x461 and 0x1ed, the result being the grid
  `ugesi_EvalStrip1D` steps through.
- `mgeb_EvalGrid1D` (`ueval1D.s` line 292, at 0xd1): **inferred**, slot name of the 1D grid handler on the same word,
  storing the same count and end points.
- `ugesi_EvalStrip1D` (`ueval1D.s` lines 324-438, at 0xe1): **inferred**, `glEvalMesh1`, two grid points per pass. Its
  inputs are the command operands (operand 1 converted with integer-to-float at 0xef) and the grid block at engine
  address 0x8000 (address register 5, loaded at 0xf0), whose word 1 is the grid start and word 3 the step. It keeps the
  two point indices as floats in registers 0x13 and 0x14, steps them with float adds (0xf6, 0xf8), multiplies each by
  the step (0xff, 0x100), compares each with word 0 of the block by a flag-setting subtract (0x101, 0x102) and adds the
  start (0x103, 0x104), so u = start + i x step. Each u is then mapped into every 1D map's domain: for the four map blocks
  from 0x8010 in steps of 0x70 (address registers 6, 8, 0xa and 0xc, loaded at 0x114, 0x108, 0x116 and 0x117), it subtracts the
  low end, word 1, and the high end, word 2 with flags (0x11c-0x11f and the same pattern at 0x124, 0x12c, 0x134), and
  multiplies the first difference by the reciprocal width in word 3. The mapped results go to words 0x12 and 0x15 of
  each block, one per point (0x120, 0x121, 0x128, 0x129, 0x130, 0x131, 0x138, 0x139), for the evaluation modules that produce the
  line-strip vertices. Before that it calls `uEvalSwapState2D` or `uEvalLoadState1D` (0xf4, 0xf5) and
  `uEvalChangeBasis1D` (0xfe) when the control words at 0x1ec-0x1f1 ask for them.
- `mgesi_EvalStrip1D` (`ueval1D.s` line 324, at 0xe1): **inferred**, slot name of the 1D mesh handler on its first word,
  which computes the same grid of u values.
- `lstrip1dreturn` (`ueval1D.s` lines 443-457, at 0x157): **inferred**, the return point after each evaluated point:
  it converts the point counter with float-to-integer, applies unit-1 code 0x51 (not fixed by the test) to it and
  updates registers 0x19 and 0x1a, the counts the drawing modules read.
- `umo_EvalEntry1D` (`ueval1D.s` lines 470-491, at 0x166): **inferred**, sets up the pipeline for a 1D evaluation: it
  stores the record stride 0x28 and the vertex-pointer and count words (0x14, 0x3a8, 8, 0x1e0) as input to the modules
  that follow, producing no arithmetic result of its own.
- `umo_EvalDecomposeLines1D` (`ueval1D.s` lines 504-518, at 0x17c): **inferred**, turns the evaluated 1D points into line
  primitives: it stores the decompose table addresses 0x8bb0 and 0x8bec and the primitive codes 0xc and 0x15 for the
  line-strip output that follows.
- `ugeb_EvalMapSpec2D` (`ueval2D.s` lines 178-300, at 0x18b): **inferred**, the `glMap2` specification handler: from the
  u and v orders it computes the block address with integer adds, subtracts and integer multiplies (unit-2 code 0x0f, 0x1bb-0x1c9, the
  order products a 2D block needs), stores the two domains, and copies the control-point grid into the block with
  unit-2 moves.
- `mgeb_EvalMapSpec2D` (`ueval2D.s` line 178, at 0x18b): **inferred**, slot name of the 2D specification handler on the
  same word, which converts the orders and stores the control points.
- `ugeb_EvalMapData2D` (`ueval2D.s` lines 334-371, at 0x205): **inferred**, receives 2D control points: it masks the map
  number, converts the count, and calls `uEvalSwapState1D` or `uEvalLoadState2D` before `levaldata2dloop` stores them.
- `mgeb_EvalMapData2D` (`ueval2D.s` line 334, at 0x205): **inferred**, slot name of the 2D data handler on that word.
- `levaldata2dloop` (`ueval2D.s` lines 373-392, at 0x22b): **inferred**, copies each input word of the 2D control-point
  data into its block through the pointer at 0x1ec until the counter runs out.
- `ugeb_EvalGrid2D` (`ueval2D.s` lines 405-434, at 0x23a): **inferred**, `glMapGrid2`: converts the two grid counts with
  integer-to-float and stores them with the u and v end points at 0x557 and 0x55b, the input of `ugesi_EvalStrip2D`.
- `mgeb_EvalGrid2D` (`ueval2D.s` line 405, at 0x23a): **inferred**, slot name of the 2D grid handler on that word.
- `ugesi_EvalStrip2D` (`ueval2D.s` lines 461-571, at 0x254): **inferred**, `glEvalMesh2`: it computes the u and v of the
  first grid row by start plus index times step, maps both into the map domains by subtract and multiply, and enters
  `lstrip2dloop`, the results being quad-strip rows of evaluated vertices.
- `mgesi_EvalStrip2D` (`ueval2D.s` line 461, at 0x254): **inferred**, slot name of the 2D mesh handler on that word.
- `lstrip2dloop` (`ueval2D.s` lines 573-618, at 0x2c3): **inferred**, steps along a mesh row: per point it adds the step,
  subtracts the domain start and multiplies by the reciprocal width (0x2c4-0x2d0), stores the mapped coordinates into
  the evaluation input at 0x8000 and 0x8018, and runs the evaluation modules.
- `lstrip2dreturn` (`ueval2D.s` lines 620-684, at 0x2f1): **inferred**, the end of each mesh point: it adds to the row
  counters, applies code 0x51 to the count, reloads the 2D state when needed (`uEvalLoadState2D`) and returns to
  `lstrip2dloop` (`cc` 0x14) or ends the command.
- `umo_EvalEntry2D` (`ueval2D.s` lines 697-737, at 0x317): **inferred**, the 2D pipeline set-up: stores the stride 0x28,
  the vertex count words and the 0xda primitive code as input for the evaluation and decompose modules.
- `umo_EvalDecomposePoints` (`ueval2D.s` lines 750-763, at 0x335): **inferred**, sets up point output from evaluated
  vertices: the table addresses 0x8bb0 and 0x8bec, the primitive code 0x16 and two words of -24.0 (0xc1c00000) as input
  for the point output.
- `umo_EvalDecomposeLines2D` (`ueval2D.s` lines 777-828, at 0x344): **inferred**, sets up line output for a 2D mesh: it stores four
  words of -24.0 and the tables 0x8bb0 and 0x8bec, with an integer multiply (unit-2 code 0x0f) and two ANDs, as input for the line output.
- `umo_EvalDecomposeFill` (`ueval2D.s` lines 844-880, at 0x37b): **inferred**, sets up filled output: it stores four
  words of -6.0 (0xc0c00000) and the tables 0x8bc4, 0x8c28 and 0x8c3c as input for the filled output.
- `uges_EvalCoord` (`uevalcoord.s` lines 61-71, at 0x3a0): **inferred**, the `glEvalCoord` and `glEvalPoint` entry: it
  takes the coordinate count as input, subtracts 7 (0xfffffff9) to decide between the 1D and 2D loops, and branches.
- `mges_EvalCoord` (`uevalcoord.s` line 61, at 0x3a0): **inferred**, slot name of that entry on the same word, the
  handler the distributor's evaluator-coordinate flush sends ([ged.md](ged.md#registers)).
- `evalcoord2dloop` (`uevalcoord.s` lines 80-125, at 0x3ab): **inferred**, for each queued two-coordinate input it tests
  bit 26 (AND with 0x4000000) and calls `uEvalCoord2D`, looping on `cc` 0x14.
- `evalcoord1dloop` (`uevalcoord.s` lines 127-168, at 0x3d9): **inferred**, the one-coordinate loop: bit 25 (AND with
  0x2000000) selects the queued 1D coordinates, each handed to `uEvalCoord1D`.
- `uEvalCoord1D` (`uevalcoord.s` lines 195-251, at 0x406): **inferred**, maps one u into the domain of each enabled 1D
  map. Its input is u, word 0 of the block at address register 4 (moved into register 0x13 at 0x410), and it writes 1.0
  into word 3 of that block (0x412). Control words 0x1ec, 0x1ee, 0x1ed and 0x1f1 decide whether the 1D map state must
  first be swapped in or loaded (calls to `uEvalSwapState2D` at 0x416 and `uEvalLoadState1D` at 0x417) and whether the
  basis changed (`uEvalChangeBasis1D`, 0x420). It then subtracts each map's low end u1, word 1 of the map blocks at
  registers 5 and 6, from u (0x421, 0x422), subtracts the high end, word 2, with the flags enabled (0x423, 0x424), and
  multiplies the first difference by word 3 of the block, the stored 1/(u2 - u1) (0x425; the second map uses unit-1 code
  0x08 at 0x426). The result (u - u1) / (u2 - u1) is stored to word 0x12 of each map block, and the predicated stores at
  0x427 and 0x428 replace it with exactly 1.0 when the flags of the high-end subtract select them. It ends the command
  at 0x436, clearing words 0xc and 0xd and setting word 0xe of the input block to 1.0 under a predicate in the delay
  words (0x43a-0x43c).
- `uEvalCoord2D` (`uevalcoord.s` lines 264-332, at 0x43f): **inferred**, maps one (u, v) pair into the domain of each
  enabled 2D map. Its inputs are u and v, words 0 and 1 of the block at address register 4 (moved into registers 0x13
  and 0x14 at 0x451 and 0x452); it writes 1.0 into word 3 of that block (0x457). Control words 0x1ec, 0x1ed, 0x1ee and
  0x1f2 decide whether the 2D state must be swapped in or loaded first (calls to `uEvalSwapState1D` at 0x44f and
  `uEvalLoadState2D` at 0x450) and whether the basis changed (`uEvalChangeBasis2D`, 0x459). For each map block (address
  register 5, then 6) it subtracts the low ends, word 1 from u and word 4 from v (0x45a, 0x45b; 0x469, 0x46a), subtracts
  the high ends, words 2 and 5, with the flags enabled (0x45c, 0x45d; 0x46b, 0x46c), and multiplies the first
  differences by the stored reciprocal widths in words 3 and 6 (0x45e, 0x45f; 0x46d, 0x46e). The results, (u - u1) / (u2
  - u1) and (v - v1) / (v2 - v1), go to words 0x12 and 0x11 of the block, and predicated stores replace each with
  exactly 1.0 when the matching high-end subtract selects them (0x460, 0x461; 0x46f, 0x470). It ends the command at
  0x47b and clears words 0xc and 0xd and sets word 0xe of the input block to 1.0 under a predicate (0x478-0x47a).
- `uEvalChangeBasis1D` (`uevalbasis.s` lines 102-135, at 0x484): **inferred**, converts every changed 1D map from
  Bernstein to power basis: it adds the block offsets, stores the order-indexed routine address (0x4a6, 0x4b6, 0x4c6,
  0x4d6) and calls the order-specific `uEvalChangeBasisN` through the indirect transfer, one per map type.
- `eval_texturechangebasis` (`uevalbasis.s` lines 137-152, at 0x4a6): **inferred**, the texture-map step of that chain:
  it points the conversion at the texture block 0x80f0 and calls the routine stored at 0x1f3.
- `eval_colorchangebasis` (`uevalbasis.s` lines 154-169, at 0x4b6): **inferred**, the colour-map step, converting the
  block at 0x8160 through the routine at 0x1f3.
- `eval_normalchangebasis` (`uevalbasis.s` lines 171-185, at 0x4c6): **inferred**, the normal-map step of the 1D chain,
  with the same indirect call through 0x1f3.
- `eval_changebasis1ddone` (`uevalbasis.s` lines 188-198, at 0x4d6): **inferred**, ends the 1D conversion by clearing
  the change flag at 0x1f1, so the converted coefficients are used until the next map change.
- `uEvalChangeBasis2D` (`uevalbasis.s` lines 239-272, at 0x4e5): **inferred**, the 2D conversion chain: it converts each
  changed 2D map in u and then in v, storing the per-step routine addresses 0x507-0x577 and calling them in turn.
- `eval_geomchangebasisv` (`uevalbasis.s` lines 274-289, at 0x507): **inferred**, converts the vertex map's block at
  0x8098 in the v direction.
- `eval_texturechangebasisu` (`uevalbasis.s` lines 291-306, at 0x517): **inferred**, converts the 2D texture block at
  0x8108 in u, with an integer multiply (unit-2 code 0x0f, 0x0520) in its set-up.
- `eval_texturechangebasisv` (`uevalbasis.s` lines 308-323, at 0x527): **inferred**, the v direction of the 2D texture
  block at 0x8108.
- `eval_colorchangebasisu` (`uevalbasis.s` lines 325-340, at 0x537): **inferred**, converts the 2D colour block at 0x8178
  in u.
- `eval_colorchangebasisv` (`uevalbasis.s` lines 342-357, at 0x547): **inferred**, converts the 2D colour block at 0x8178
  in v.
- `eval_normalchangebasisu` (`uevalbasis.s` lines 359-373, at 0x557): **inferred**, the u step for the 2D normal map.
- `eval_normalchangebasisv` (`uevalbasis.s` lines 376-391, at 0x567): **inferred**, the v step for the 2D normal map.
- `eval_changebasis2ddone` (`uevalbasis.s` lines 393-403, at 0x577): **inferred**, clears the 2D change flag at 0x1f2
  after the last conversion.
- `uEvalChangeBasis1and2` (`evalbasis.s` lines 92-98, at 0x9f5): **inferred**, the basis change for orders 1 and 2 does no
  arithmetic: it ends the call and leaves the control points as the input of the `eval1.s` and `eval2.s` modules, whose
  loops work on them directly.
- `uEvalChangeBasis3` (`evalbasis.s` lines 128-133, at 0xa04): **inferred**, set-up of the order-3 conversion through the
  routine word 0x1f3, the quadratic case.
- `lCB3LOOP` (`evalbasis.s` lines 137-155, at 0xa0c): **inferred**, per component of an order-3 map: a multiply, an add and
  a subtract (0xa0f-0xa14) combine three control points into power-basis coefficients (for a quadratic these are P0,
  2(P1 - P0) and P0 - 2P1 + P2).
- `uEvalChangeBasis4` (`evalbasis.s` lines 181-196, at 0xa22): **inferred**, set-up of the cubic conversion: two
  subtracts and three multiplies prime the binomial factors.
- `lCB4POLYLOOP` (`evalbasis.s` lines 198-218, at 0xa32): **inferred**, the cubic loop: adds, subtracts and multiplies
  form the four power-basis coefficients of each component from its four control points.
- `uEvalChangeBasis5` (`evalbasis.s` lines 243-268, at 0xa48): **inferred**, the order-5 set-up, with the differences of
  neighbouring control points formed by subtracts before the loop.
- `lCB5LOOP` (`evalbasis.s` lines 270-292, at 0xa62): **inferred**, combines five control points per component into five
  coefficients with multiply-adds weighted by the binomial factors of degree 4.
- `uEvalChangeBasis6` (`evalbasis.s` lines 318-348, at 0xa7a): **inferred**, order-6 set-up: differences and binomial
  products for degree 5.
- `lCB6MATRIXLOOP` (`evalbasis.s` line 350, at 0xa99): **inferred**, the one-word head of the order-6 loop, a subtract with
  a multiply that the loop's second transfer returns to for each matrix row.
- `lCB6LOOP` (`evalbasis.s` lines 352-378, at 0xa9a): **inferred**, the order-6 loop: multiply-adds produce six
  coefficients per component.
- `uEvalChangeBasis7` (`evalbasis.s` lines 405-444, at 0xab6): **inferred**, order-7 set-up, 40 words of differences and
  binomial products for degree 6.
- `lCB7LOOP` (`evalbasis.s` lines 446-474, at 0xade): **inferred**, the order-7 loop producing seven coefficients per
  component.
- `uEvalChangeBasis8` (`evalbasis.s` lines 502-552, at 0xafc): **inferred**, order-8 set-up, the largest, for degree 7.
- `lCB8MATRIXLOOP` (`evalbasis.s` lines 554-555, at 0xb2f): **inferred**, the two-word head the order-8 loop returns to for
  each row of the conversion matrix.
- `lCB8LOOP` (`evalbasis.s` lines 557-586, at 0xb31): **inferred**, the order-8 loop: multiply-adds give eight
  coefficients per component.
- `uEvalChangeBasis4x4` (`evalbasis.s` lines 613-622, at 0xb50): **inferred**, set-up of the bicubic conversion of a 4 x 4
  control grid, two subtracts priming the factors.
- `lCB4X4LOOP` (`evalbasis.s` lines 624-665, at 0xb5a): **inferred**, applies the cubic conversion to the rows and columns
  of the grid with multiply-adds and subtracts, giving sixteen power-basis coefficients.
- `uEvalSaveState` (`evalmisc.s` lines 55-74, at 0x962): **inferred**, saves the evaluator working memory to external
  memory with `mWramToEram`, taking the block words at 0x1ec-0x1f0 and the sizes 0x461 and 0x555 as input.
- `uEvalSaveState1D` (`evalmisc.s` lines 92-105, at 0x977): **inferred**, saves only the 1D set: block 0x8000, size 0x461.
- `uEvalSaveState2D` (`evalmisc.s` lines 126-139, at 0x989): **inferred**, saves only the 2D set: block 0x8000, size 0x555.
- `uEvalLoadState1D` (`evalmisc.s` lines 160-174, at 0x99b): **inferred**, brings the 1D set back with `mEramToWram`,
  converting its stored size with float-to-integer.
- `uEvalLoadState2D` (`evalmisc.s` lines 194-208, at 0x9ad): **inferred**, the 2D counterpart, restoring size 0x555 from
  external memory.
- `uEvalSwapState1D` (`evalmisc.s` line 228, at 0x9bf): **inferred** from its listing, saves the one-dimensional map set
  out to external memory and loads the two-dimensional set in, which makes the 2D set resident for the evaluator; the
  copies are two calls with no arithmetic beyond one float-to-integer conversion (code 0x71 at 0x9c5). It takes two words
  of control memory 0x1ef and 0x1f0 and stores them as staging words 0 and 1 at register 0x18 (0x9c0, 0x9c1), and does an
  `r95` = 7 store at 0x9c2. The call to `mWramToEram` (0x1025) at 0x9c8 has the delay words 0x9c9-0x9cc: register 2 takes
  staging word 0, register 0 the constant 0x8000 and register 1 the sum of register 0x16 and 0x461, the 1D set's size
  constant, and the first of three stores of the store-data register to control words 0x1ec, 0x1ed and 0x1ee is the word
  at 0x9cc, the others 0x9cd and 0x9ce. The jump to `mEramToWram` (0xd45d) at 0x9d1 has the delay words 0x9d2-0x9d5:
  register 2 takes staging word 1, register 0 the sum of register 0x16 and 0x555, the 2D set's size constant, register 1
  the constant 0x8000, and an `r95` = 2 read at 0x9d5. The routine ends in that jump.
- `uEvalSwapState2D` (`evalmisc.s` line 272, at 0x9da): **inferred** from its listing, the mirror of `uEvalSwapState1D`:
  it saves the two-dimensional set out to external memory and loads the one-dimensional set in, which makes the 1D set
  resident. It stores control words 0x1f0 and 0x1ef as staging words 0 and 1 (0x9db, 0x9dc, the reverse order of the 1D
  routine), does the `r95` = 7 store at 0x9dd and converts one word with float-to-integer (0x9e0). The call to
  `mWramToEram` at 0x9e3 has the delay words 0x9e4-0x9e7: register 2 takes staging word 0, register 0 the constant 0x8000
  and register 1 the sum of register 0x16 and 0x555, the 2D size constant; the stores to control words 0x1ec, 0x1ee and
  0x1ed, in that order, are at 0x9e7-0x9e9. The jump to `mEramToWram` at 0x9ec has the delay words 0x9ed-0x9f0: register 2
  takes staging word 1, register 0 the sum of register 0x16 and 0x461, register 1 the constant 0x8000, and an `r95` = 2
  read at 0x9f0. The size constants and the order of the stores to 0x1ed and 0x1ee are what differ from the 1D routine.
- `umo_EvalPolyV` (`eval.s` lines 186-204, at 0x586): **inferred**, set-up of the 2D vertex evaluation without derivative:
  it ANDs the order word, converts it with integer-to-float and subtracts to form the loop counts from the input u and v.
- `lPOLYVUORDERLOOP` (`eval.s` lines 206-225, at 0x599): **inferred**, Horner's rule in u: multiply-adds fold each row of
  coefficients into one value per row.
- `lPOLYVVORDERLOOP` (`eval.s` lines 227-254, at 0x5ad): **inferred**, the v pass: multiply-adds fold the per-row values
  into the evaluated position, the module's result.
- `umo_EvalPolyU` (`eval.s` lines 290-326, at 0x5ca): **inferred**, the same evaluation with the passes in the other
  order, its first u row computed in the set-up.
- `lPOLYUUORDERLOOP` (`eval.s` lines 328-353, at 0x5ef): **inferred**, the loop of `umo_EvalPolyU`: multiply-adds over
  the u order, followed by six adds that combine the partial sums into the result.
- `umo_EvalPolyVdV` (`eval.s` lines 394-421, at 0x609): **inferred**, the evaluation that also gives the v derivative: it
  takes the derivative buffer at 0x85a8 as a second output and forms the loop counts.
- `lPOLYVDVUORDERLOOP` (`eval.s` lines 423-438, at 0x625): **inferred**, the u pass of the value-and-derivative form.
- `lPOLYVDVVORDERLOOP` (`eval.s` lines 440-479, at 0x635): **inferred**, the v pass: multiply-adds build the value and
  multiply-subtracts the derivative, both results stored.
- `umo_EvalPolyUdU` (`eval.s` lines 520-541, at 0x65e): **inferred**, the u-derivative form, its derivative output at 0x8004.
- `lPOLYUDUUSIZELOOP` (`eval.s` lines 543-558, at 0x674): **inferred**, the first pass of the u-derivative form over the
  v size.
- `lPOLYUDUUORDERLOOP` (`eval.s` lines 560-597, at 0x684): **inferred**, the second pass, value and u derivative.
- `umo_EvalComputeNormals3D` (`eval.s` lines 628-709, at 0x6ad): **inferred**, the `GL_AUTO_NORMAL` normal of a
  three-component map, two evaluated points per pass (one per thread). Its inputs are the u-derivative vector at data
  words 0x8004-0x8006 plus register 0x14 and the v-derivative vector at register 0x14 plus register 6 (or 7 for the
  second point). It computes their cross product, (du_y dv_z - du_z dv_y, du_z dv_x - du_x dv_z, du_x dv_y - du_y dv_x),
  with multiply-subtract words (0x6c4-0x6d0), sums the squares of the three components, seeds the reciprocal square root
  of that sum (0x6df, 0x6e0, reseeded at 0x6e7 and 0x6e8) and refines it with two Newton steps of code 0x57
  (0x6e5-0x6e6, 0x6f1-0x6f2). It multiplies each component by the refined value and stores the unit normal, its result,
  at offsets 0-2 through address registers 6 and 7 (0x6f9-0x6fe), the last three in the delay words of the
  end-of-command transfer at 0x6f7.
- `umo_EvalComputeNormals4D` (`eval.s` lines 748-857, at 0x700): **inferred**, the `GL_AUTO_NORMAL` normal of a
  homogeneous (four-component) map, two points per pass. Its inputs are the evaluated point P (x, y, z, w at register
  0x14 plus register 0xa, or 0xb for the second point), the u derivative at data words 0x8004-0x8007 plus register 0x14
  and the v derivative at register 0x14 plus register 6 (or 7). Twelve multiply-subtract pairs compute du_xyz w - P_xyz
  du_w and dv_xyz w - P_xyz dv_w, the numerators of the quotient-rule derivatives of P/w; the common factor 1/w^2 is
  dropped because the vector is normalised afterwards. It then computes the cross product of the two vectors, seeds the
  reciprocal square root of its squared length (0x74e, 0x74f, reseeded at 0x756 and 0x757), refines it with two Newton
  steps of code 0x57 (0x754-0x755, 0x760-0x761), and stores the scaled components, the unit normal, at offsets 0-2
  through address registers 6 and 7 (0x768-0x76d), in the delay words of the end-of-command transfer at 0x766.
- `umo_EvalPoly1V` (`eval1.s` lines 84-103, at 0x76f): **inferred**, the one-coefficient (constant) 2D map: no arithmetic;
  the set-up points at the coefficient.
- `lPOLY1VLOOP` (`eval1.s` lines 104-114, at 0x783): **inferred**, copies the constant input coefficients to the output
  with eight moves per pass, since a degree-0 map evaluates to its control point.
- `umo_EvalPoly1U` (`eval1.s` lines 144-165, at 0x78e): **inferred**, the constant map in the u ordering: nine moves.
- `umo_EvalPoly1VdV` (`eval1.s` lines 192-204, at 0x7a4): **inferred**, the constant map with a v derivative, whose
  derivative output buffer at 0x85a8 receives zeros.
- `lPOLY1VDVLOOP` (`eval1.s` lines 205-220, at 0x7b1): **inferred**, sixteen moves per pass: the value and a zero
  derivative.
- `umo_EvalPoly1UdU` (`eval1.s` lines 250-282, at 0x7c3): **inferred**, the constant map with a u derivative, outputs at
  0x8004 and 0x1d4.
- `umo_EvalPoly2V` (`eval2.s` lines 117-137, at 0x7e5): **inferred**, the linear (order-2) map: one subtract prepares the
  input.
- `lPOLY2VLOOP` (`eval2.s` lines 139-159, at 0x7fa): **inferred**, evaluates the linear map from its two control points
  with eight multiplies, eight multiply-adds and four adds per pass.
- `umo_EvalPoly2U` (`eval2.s` lines 189-223, at 0x810): **inferred**, the linear map in u ordering: twelve multiplies and
  the adds that give each result.
- `umo_EvalPoly2VdV` (`eval2.s` lines 253-276, at 0x833): **inferred**, linear map with v derivative, derivative output at
  0x85a8.
- `lPOLY2VDVLOOP` (`eval2.s` lines 278-302, at 0x84b): **inferred**, value and derivative of a linear map: multiplies and
  adds, with unit-1 code 0x63 (not fixed by the test) on the derivative words.
- `umo_EvalPoly2UdU` (`eval2.s` lines 333-345, at 0x865): **inferred**, the linear u-derivative set-up, two subtracts.
- `lPOLY2UDULOOP` (`eval2.s` lines 347-362, at 0x872): **inferred**, its loop: multiply-adds for the value and code 0x63
  with multiplies for the derivative, results at 0x1d4.
- `umo_EvalPoly4V` (`eval4.s` lines 134-150, at 0x883): **inferred**, the cubic (order-4) map: a subtract prepares t.
- `lPOLY4VLOOP` (`eval4.s` lines 152-191, at 0x894): **inferred**, the unrolled cubic Horner evaluation: eight multiplies
  and 32 multiply-adds per pass.
- `umo_EvalPoly4U` (`eval4.s` lines 220-271, at 0x8bd): **inferred**, the cubic map in u ordering, evaluated within the
  set-up by twelve multiplies and multiply-add chains.
- `umo_EvalPoly4VdV` (`eval4.s` lines 307-324, at 0x8f2): **inferred**, cubic map with v derivative, output buffer 0x85a8.
- `lPOLY4VDVLOOP` (`eval4.s` lines 326-365, at 0x904): **inferred**, value and derivative of a cubic: sixteen multiplies,
  adds, and alternating multiply-subtract and multiply-add words.
- `umo_EvalPoly4UdU` (`eval4.s` lines 400-412, at 0x92d): **inferred**, cubic u-derivative set-up, derivative at 0x8004.
- `lPOLY4UDULOOP` (`eval4.s` lines 414-452, at 0x93a): **inferred**, the cubic value and u derivative per pass.

## Pixel output and set-up (mpixout.S, mpixelSetup.S)

**Inferred**, from the words of the two modules. These are the ends of the pixel paths: output modules that clamp, scale
and pack pixels for the raster bus, the X server's direct pixel and stipple paths, the convolution input and output
copies, the moves between engine memories, and the set-up handlers that place the raster position and choose which
engine takes each part of a pixel stream. Output records are the seven-word records of
[docs/rm.md](../docs/rm.md#pixel-and-texel-data-words), loaded from control memory 0x161-0x169.

- `mmo_Pixout_8_16` (`mpixout.S` lines 228-291, at 0xa4b5): **inferred**, the clamping 8- and 16-bit output: it loads the
  record words 0x161-0x169 as input and, by the count, runs `uPO_8_16C` or `uPO_8_16C_LastBlck`, or `mLASTGE` on the
  last engine (`cc` 0x7e).
- `mmo_Pixout_8_16NC` (`mpixout.S` lines 90-208, at 0xa44e): **inferred**, the same output without clamping ("NC"): each
  input component is only multiplied by its field scale (a run of multiplies from 0xa459) before packing.
- `mmo_Pixout_2_4` (`mpixout.S` lines 404-467, at 0xa3e8): **inferred**, the clamping two- and four-component output,
  dispatching on the count to `uPO_2_4C`, `uPO_2_4C_LastBlck` or `mLASTGE`.
- `mmo_Pixout_2_4NC` (`mpixout.S` lines 308-387, at 0xa407): **inferred**, the two- and four-component form without the
  clamp: twelve multiplies scale the input fields, with its own short-count paths on `cc` 2, 3 and 0x14.
- `mmo_Pixout_RGB_in_RGBA` (`mpixout.S` lines 507-583, at 0xa395): **inferred**, writes three-component input into
  four-component pixels: clamp-and-multiply words scale red, green and blue, and a lone multiply supplies the alpha field.
- `mmo_Pixout_RGB_in_RGBANC` (`mpixout.S` lines 595-671, at 0xa33f): **inferred**, the unclamped RGB-into-RGBA output,
  twenty multiplies scaling the input fields.
- `mmo_Pixout_32` (`mpixout.S` lines 687-797, at 0xa2d5): **inferred**, the 32-bit-component output: each input is clamped
  with 0x7c and multiplied by the field maximum, 24 per pass, the results sent as whole words.
- `mmo_Pixout_32NC` (`mpixout.S` lines 859-968, at 0xa276): **inferred**, the 32-bit output without the clamp, a long run
  of multiplies that scale each input word.
- `mmo_PixoutCI_4_8` (`mpixout.S` lines 1034-1112, at 0xa214): **inferred**, packs 4- and 8-bit colour indexes: the input
  indexes are moved into their byte or nibble positions (77 moves) with no arithmetic beyond the packing.
- `mmo_PixoutMerge2_4C` (`mpixout.S` lines 1128-1304, at 0xa1c2): **inferred**, merges two- and four-component output
  with what is already in the destination: it converts the input with float-to-integer and moves fields under the
  register words 0x2202000 and 0x22000.
- `mmo_ArbClamp` (`mpixout.S` lines 1325-1396, at 0xa154): **inferred**, clamps each input component to an arbitrary range
  rather than [0, 1]: a minimum against the upper bound and a maximum against the lower bound per component, four
  components at a time.
- `mmo_ConvEramToWram` (`mpixout.S` lines 1409-1427, at 0xa132): **inferred**, loads a convolution kernel from external
  memory into working memory using the six descriptor words at 0xbb6-0xbbb, the input of the convolution modules.
- `mmo_ConvolveOut` (`mpixout.S` lines 1678-1692, at 0xa002): **inferred**, the convolution output module: it reads the
  five `U_uConvolutionOutput` words at 0x161-0x165 that name where the summed rows are and how to convert them.
- `mmo_loadConvRGB` (`mpixout.S` lines 1899-1921, at 0x9eeb): **inferred**, copies three-component input pixels into the
  convolution row buffer, three moves per pixel in a loop on `cc` 0x14.
- `mmo_loadConvRGBA` (`mpixout.S` lines 1863-1885, at 0x9f19): **inferred**, the four-component load into the row buffer.
- `mmo_loadConvI` (`mpixout.S` lines 1829-1849, at 0x9f49): **inferred**, loads intensity input, one move per pixel.
- `mmo_loadConvLA` (`mpixout.S` lines 1794-1815, at 0x9f79): **inferred**, loads luminance-alpha input, two moves per pixel.
- `mmo_loadConvL` (`mpixout.S` lines 1760-1780, at 0x9fa9): **inferred**, loads luminance input, one move per pixel.
- `mmo_loadConvA` (`mpixout.S` lines 1726-1746, at 0x9fd7): **inferred**, loads alpha-only input into the row buffer.
- `mmo_unloadConvRGB` (`mpixout.S` lines 1645-1665, at 0xa018): **inferred**, copies finished three-component convolution
  results out of the row buffer to the next stage.
- `mmo_unloadConvRGBA` (`mpixout.S` lines 1612-1631, at 0xa049): **inferred**, moves four summed components per output
  pixel from the row buffer to the next stage (four moves per pass), repeating while the row has results.
- `mmo_unloadConvI` (`mpixout.S` lines 1578-1598, at 0xa07c): **inferred**, for intensity kernels one move per output
  pixel carries the single convolved value out of the buffer.
- `mmo_unloadConvLA` (`mpixout.S` lines 1539-1564, at 0xa0a9): **inferred**, the luminance-alpha unload: two moves per
  pixel pass the convolved pair on, its loop closing on `cc` 0x14 at 0xa0aa.
- `mmo_unloadConvL` (`mpixout.S` lines 1505-1525, at 0xa0d8): **inferred**, the luminance unload, whose single move per
  pixel hands each summed luminance to the following stage.
- `mmo_unloadConvA` (`mpixout.S` lines 1467-1491, at 0xa105): **inferred**, for an alpha-only kernel the filtered alpha
  leaves the buffer one word per pixel, with the colour components untouched.
- `mmo_PolygonStippleOut` (`mpixout.S` lines 1935-1971, at 0x9eb1): **inferred**, writes a polygon stipple pattern: each
  input row is ANDed, shifted by 0x20 and ORed into the record word at 0x162 before the bus write.
- `mgesi_PolygonStippleDownload` (`mpixout.S` lines 2208-2221, at 0x9d56): **inferred**, `glPolygonStipple`: a bitwise-not
  store to bus address 0x1f4, then `mDoPolygonStippleDownload` sends the pattern.
- `mDoPolygonStippleDownload` (`mpixout.S` lines 2160-2201, at 0x9d6b): **inferred**, stores the 32 stipple rows from the
  pattern words at 0x880-0x8e0 to the pixel generator's stipple registers (register words 0x2010200-0x2010700), with
  integer adds stepping the row address.
- `mDoPolygonStippleDownloadInner` (`mpixout.S` lines 2109-2140, at 0x9dae): **inferred**, the inner loop: per input row it
  shifts right by 8 to split the 32-bit row into bytes and writes them to bus address 0x1f7.
- `mgeb_PolygonStippleRotate` (`mpixout.S` lines 2079-2092, at 0x9ddc): **inferred**, rotates the stipple for a window
  origin: it passes the shift counts (0x20 each way) and the pattern address 0x26b to `mDoPolygonStippleRotate`.
- `mDoPolygonStippleRotate` (`mpixout.S` lines 1988-2063, at 0x9df3): **inferred**, rotates the 32 x 32 pattern by the x
  and y origin: shifts left and right by the count and by 32 minus it, ORs the halves, ANDs with masks, and stores the
  rotated rows as the result.
- `mgesi_XPolygonStippleDownload` (`mpixout.S` lines 3006-3018, at 0x9a83): **inferred**, the X server's stipple download:
  an integer add on the operand and a store to 0x1f4, then `mDoPolygonStippleDownload`.
- `mgeb_XPolygonStippleRotate` (`mpixout.S` lines 2949-2998, at 0x9a98): **inferred**, the X form of the rotation: it
  converts the origin operands with float-to-integer, reduces them modulo the pattern size through `mod`, and calls
  `mDoPolygonStippleRotate`.
- `mod` (`mpixout.S` lines 2905-2923, at 0x9ae9): **inferred**, a modulo by repeated subtraction: it subtracts the divisor
  while the input stays non-negative (branches on `cc` 4 and 5 to 0x9b17 and 0x9b34) and adds it back once, returning the
  remainder.
- `mgesi_TransparentBitmap` (`mpixout.S` lines 2836-2887, at 0x9b4a): **inferred**, the X server's transparent bitmap: it
  shifts the input bitmap words right to split them, and writes them with the register words 0x2010f00, 0x2011f00 and
  0x42013f00 so only the set bits are drawn.
- `mmo_X_DrawBitmapOpaque` (`mpixout.S` lines 2561-2652, at 0x9b8f): **inferred**, the opaque bitmap: for each input word
  a long run of subtracts and moves produces one foreground or background pixel per bit.
- `mmo_X_pixout_4Comp` (`mpixout.S` lines 2459-2539, at 0x9c14): **inferred**, unpacks X pixel words: the input is shifted
  right by each field position (32 logical shifts) and the fields sent as four components.
- `mmo_X_pixout_4` (`mpixout.S` lines 2359-2438, at 0x9c54): **inferred**, the 4-bit X pixel packing: shift right, shift
  left and OR repeat for each input nibble, building the packed output words.
- `mmo_X_pixout_8_16` (`mpixout.S` lines 2256-2334, at 0x9cd5): **inferred**, the 8- and 16-bit X packing with the same
  shift, shift and OR pattern on byte or short fields.
- `mLASTGE` (`mpixout.S` lines 2693-2814, at 0xa4d4): **inferred**, the output path of the engine that holds the last part
  of a pixel stream: it reads the stream state words 0xbf6-0xbfb, clears bit 16 of one (AND with 0xfffeffff) and sends
  the remaining pixels through two loops on `cc` 0x14 (0xa4f6, 0xa516).
- `mmo_CopyFifoLine` (`mpixelSetup.S` lines 2239-2356, at 0xab59): **inferred**, copies one line of pixels between
  engines' FIFOs for a copy operation, reading the line descriptor at 0xbfc-0xc00 and moving the words in loops on
  `cc` 0 and 0x14.
- `mmo_I2F_Scale_Skip` (`mpixelSetup.S` lines 2549-2614, at 0xa532): **inferred**, converts integer input to float with
  integer-to-float and multiplies by a scale while skipping the components the descriptor at 0xbfc-0xc00 excludes.
- `mmo_Shift_Skip` (`mpixelSetup.S` lines 2426-2491, at 0xa570): **inferred**, the shift form of that stage: logical
  right shifts extract the input fields, skipping excluded components by the same descriptor.
- `mgeb_EramToEram` (`mpixelSetup.S` lines 2103-2114, at 0xa5ac): **inferred**, a block copy within external memory by a
  call to `mEramToEram` with the operand addresses and count.
- `mgeb_EramToCram` (`mpixelSetup.S` lines 2076-2087, at 0xa5c0): **inferred**, copies a block from external memory into
  control memory through `mEramToCram`.
- `mgeb_CramToEram` (`mpixelSetup.S` lines 2050-2061, at 0xa5d4): **inferred**, the reverse copy through `mCramToEram`.
- `mgeb_LoadCram` (`mpixelSetup.S` lines 2024-2035, at 0xa5e8): **inferred**, loads control memory from working memory by
  calling `mWramToCram`, the way the ARM's parameter blocks reach the stages.
- `mgeb_StrideEramToCram` (`mpixelSetup.S` lines 833-879, at 0xa8bb): **inferred**, a strided copy from external memory to
  control memory: one word every stride, in a loop on the counter (0xa8d6).
- `mmo_PixStreamNextGE` (`mpixelSetup.S` lines 1966-1980, at 0xa60b): **inferred**, hands the pixel stream to the next
  engine: two bitwise-not stores to bus addresses 0x1f5 and 0x1f4.
- `mmo_PixStreamBrdcastCore0ANextGE` (`mpixelSetup.S` lines 1995-2004, at 0xa5fa): **inferred**, the broadcast form: the
  register word 0x70000 to bus address 0x1f8, then the hand-over words to 0x1f5 and 0x1f4.
- `mmo_PixStreamNextGE_BEFWAR` (`mpixelSetup.S` lines 1915-1949, at 0xa614): **inferred**, the hand-over with a back-end
  workaround: ten float-to-integer conversions of the pending words are written out before the hand-over stores.
- `mmo_PixLineNextGE` (`mpixelSetup.S` lines 1567-1631, at 0xa6ad): **inferred**, hands a pixel line to the next engine,
  writing 0x70000 to 0x1f8 and the constants 142.0 and 40.0 (0x430e0000, 0x42200000) with the hand-over words.
- `mmo_SetupHip` (`mpixelSetup.S` lines 1673-1897, at 0xa62a): **inferred**, sets up the host-interface side of a pixel
  transfer: it combines the transfer descriptor's fields with ANDs, shifts, adds and ORs into the host-interface
  register words, 98 words in all.
- `mgesi_PixRasterPosSetup` (`mpixelSetup.S` lines 73-621, at 0xa990): **inferred**, the raster position set-up for pixel
  operations, 315 words: it converts the image size and zoom operands with integer-to-float, adds and multiplies them
  into the start, step and end of the pixel rectangle, and stores the results for the output stages.
- `mgesi_PixQueryCopyOverlap` (`mpixelSetup.S` lines 659-813, at 0xa8f7): **inferred**, decides the order of a
  `glCopyPixels` whose source and destination overlap: it converts both rectangles to float, compares them with minima,
  maxima and unit-1 code 0x64 (not fixed by the test), and returns the copy direction and start as integers.
- `mgesi_PixConv5GVEntry` (`mpixelSetup.S` lines 1503-1552, at 0xa6be): **inferred**, the entry of the separable 5 x 5
  convolution's vertical pass: it subtracts 2 from the raster position words 0x16a-0x16d,
  converts and adds the offset at 0x129, and jumps to the stage.
- `mgeb_PixEndPolygonStipple` (`mpixelSetup.S` lines 1462-1475, at 0xa6db): **inferred**, ends a polygon-stipple pixel
  path by restoring the evaluator area pointer 0x8d2c, with no arithmetic.
- `mgeb_PixEndRGBStream` (`mpixelSetup.S` lines 1415-1455, at 0xa6e8): **inferred**, ends an RGB pixel stream: ten
  float-to-integer conversions of the pending words, then the register word 0x70000 and the closing stores.
- `mgebi_PixEndTransparentBitmap` (`mpixelSetup.S` lines 1384-1397, at 0xa6ff): **inferred**, ends a transparent bitmap
  by adding the moves at 0x31 and 0x32 back to the raster position and flushing through `DoFlushPGPCache`.
- `mgesi_FlushPGPCache` (`mpixelSetup.S` lines 1371-1376, at 0xa715): **inferred**, the command form of the pixel
  generator cache flush, a call to `DoFlushPGPCache`.
- `DoFlushPGPCache` (`mpixelSetup.S` lines 1326-1364, at 0xa71e): **inferred**, writes the pixel generator's flush
  sequence: the register words 0x1661410, 0x3ff1 and 0x1243fd3 with mode words to bus addresses 0x1f8, 0x1f5, 0x1f7 and
  0x1f6.
- `mgeb_TransparentBitmapSetup` (`mpixelSetup.S` lines 1299-1317, at 0xa747): **inferred**, subtracts the bitmap's origin
  (words 0x31 and 0x32) from the raster position before a transparent bitmap.
- `mgeb_PixPolygonStippleSetup` (`mpixelSetup.S` lines 1267-1290, at 0xa75f): **inferred**, prepares a stipple path by
  saving the evaluator state with `uEvalSaveState` and storing the area words 0x1ec-0x1ee.
- `mgebi_PixCurGEIDSetup` (`mpixelSetup.S` lines 1224-1257, at 0xa77f): **inferred**, tells the raster which engine is
  current for a pixel stream: register words 0x10f087f and 0x2202000 with 40.0 and the mode word 0x70000 to the bus.
- `mgeb_PixLastGECounterSetup` (`mpixelSetup.S` lines 1197-1211, at 0xa79b): **inferred**, converts the engine count with
  integer-to-float and subtracts 0.5 to set the last-engine counter at 0x16e.
- `mgeb_PixDrawColorSetup` (`mpixelSetup.S` lines 1144-1183, at 0xa7aa): **inferred**, prepares a colour draw path by
  saving the evaluator state and storing the area words, as the stipple set-up does.
- `mgeb_BitmapApplyMove` (`mpixelSetup.S` lines 1101-1113, at 0xa7cf): **inferred**, `glBitmap`'s move. It takes four
  operands, the x and y origin and the x and y move floats that `BitmapEndStream` and `arm_bitmap` in `arm1.u` send from
  pixel state +0x34c to +0x358 (0x0c026af4-0x0c026b10), reads the raster position words 0x31 and 0x32 and adds the
  operands with four float adds (command operands 2, 1 and 3 at 0xa7d2, 0xa7d6 and 0xa7d7, after operand 0 is read at
  0xa7d1), so the result written back to 0x31 and 0x32 is the position plus origin plus move.
- `mgeb_BitmapApplyOrig` (`mpixelSetup.S` lines 1070-1082, at 0xa7e8): **inferred**, `glBitmap`'s origin. It takes
  two operands, the x and y origin floats that `do_bitmap` in `arm1.u` sends from its pixel state +0x34c and +0x350
  (0x0c02b3d0-0x0c02b3dc), reads the raster position words 0x31 and 0x32 (form-14 reads at 0xa7e8 and 0xa7ea), and
  computes two float subtracts in operand-routing form `r110` = 0x7bd (0xa7ef, 0xa7f1), which the conditional stores at
  0xa7f8 and 0xa7fa write back to 0x31 and 0x32 as the position the bitmap is drawn from. **Inferred** operand order: GL
  draws a bitmap at the raster position minus its origin, and the reverse order would draw every bitmap at origin minus
  position, mirrored through the window corner; `mgeb_BitmapApplyMove` then adds both the origin and the move operands
  (the four adds at 0xa7d2-0xa7db), which returns to position plus move only if this handler subtracted the origin from
  the position. So form 0x7bd yields the loaded word minus the word read through A and D. The port layout in
  [ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding) now establishes that order from the diagnostic's expected words, and
  this handler and `mDefineFineMode`'s search are its two production witnesses. It settles the order in
  `uMatrixMultCCC`. Its empty-bitmap path is not consistent with that alone: `arm_bitmap` sends the same four floats to
  `mgeb_BitmapApplyMove` without this handler running first (0x0c02b570-0x0c02b588), which adds the origin to the
  position; GL's empty bitmaps normally carry a zero origin, so the difference does not show.
- `mgeb_FlipYConvKern` (`mpixelSetup.S` lines 980-1052, at 0xa7fe): **inferred**, flips a convolution kernel vertically:
  with integer subtracts and an arithmetic shift it pairs row r with row n-1-r and swaps them by unit-2 moves.
- `mgeb_FlipXConvKern` (`mpixelSetup.S` lines 899-960, at 0xa864): **inferred**, the horizontal flip, pairing column c
  with n-1-c the same way.

## How the vertex path is chained (successor words)

**Inferred: a word with `r95` = 2 loads the target of the next indirect transfer.** Such a word reads one engine word,
named by an immediate (C = 0x1e) or by an address register (C). Of the 356 such words in the production listings, 351 are
followed within 400 words by an indirect transfer (R88) in condition group 4, 5 or 31, and every read word whose start-up
value is known holds a code address. So each module ends by reading a fixed engine word and jumping through it, and a
handler reroutes the vertex path by rewriting those words. It follows that a group-31 transfer goes where the last such
read pointed: to the next module while a vertex batch is in flight, and to `mDispatchCentral` at the end of the chain. That
narrows the reading in [ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command), which took every group-31 target as
the next command's handler. In every primitive entry handler below, the eight words after the group-31 transfer still
execute (the last successor-word store sits in the eighth).

**Inferred: a store with `r95` = 4 writes the value a word with `r99` bit 1 produced nine words earlier.** The rule and its
evidence are in [The store-data register](ge_isa.md#the-store-data-register). Applied to `mGL_CM_Initialize` (`ge.S` lines 350-367, 0xb1bf-0xb1fb) the pairing gives word 0 = 2,
word 1 = 0x3f, word 2 = 0xfff, word 8 = 0x1218 and 1.0 on the diagonals of the five matrices (0x1f, 0x2f, 0x3f, 0x4f,
0x5f), each from a move on the store's own line.

**Inferred: special register 0x20 + k is bit k of a flag word that `cc` 0x60 + 2k tests (`cc` 0x61 + 2k for the bit
clear).** Three pairs fix the spacing: the matrix handlers write 0x29 and 0x2b and the transform modules branch on `cc`
0x72 and 0x76 ([Engine memory the transform code shares](#engine-memory-the-transform-code-shares)); `mgeb_Enable_Multipass`,
`mgeb_EnableSprite` and `mgeb_EnableUnpack` store the set pattern (`r148` = 0x3a0) to 0x27 and their `Disable` partners the
clear pattern (0x3c0), and the entry handlers test `cc` 0x6e to pick the pre-path module; `mDispatchCentral` copies engine
word 0x19 into FLAG_GLOB_LO (special register 0x0b, 0xe742) just before branching on `cc` 0x60, 0x62, 0x64, 0x66 and 0x68.
Writes through register 0x1d at offsets 0x20 and up (private registers 0x60 and up) pair with `cc` 0x40 + 2k the same way:
`mgeb_SetTfanPolyMode` writes offset 0x20 and the fan entries branch on `cc` 0x40. The value written is a store of register
0x1e or 0x1d (`r148` = 0x3c0 or 0x3a0), or the sum of register 0x1e with itself (`r148` = 0x3de, M = 0x6e0), which
`mRotate` also stores to the zero entries of its rotation matrix (0x0fd0, 0x0fd6, 0x0ff2, 0x0ff5): register 0x1e reads as
zero there.

Successor words, with the value `mGL_CM_Initialize` writes and the modules that read each as their successor (by the
`r95` = 2 words of the listings):

| Word | Start-up value | Read as successor by | Written later by |
|---|---|---|---|
| 8 | 0x1218 `mmo_ObjToClipSpace` | `mmo_DirtyXformAndObjToClipModule` (0xf485); the primitive entry handlers, through a register | lighting, texture-generation and mode handlers (`glmodes.S`, `lightenables.S`, `texgen.S`) |
| 9 | 0x1218 | `umo_ObjToEyeSpace` and its user-plane variants (0x1303, 0x132a, 0x1361) | |
| 0xa | (none) | the clip-space transform loops `lXF1`, `lXF2`, `lXF3` (0x1222, 0x125d, 0x129e) | every primitive entry handler; `mmo_DummyDecompose` |
| 0xb | 0xd69 `mmo_LiColorClamp` | the decomposers of `mdecompose2.S`; `mmo_DirtyCullAndLightModule` | lighting and cull state handlers |
| 0xc | 0xd69 | `umo_FaceCull`, `umo_DecomposeLineStrip`, `umo_DecomposePoints` | |
| 0xd | 0x10c9 `mmo_ToScreenSpace` | `umo_LiColorClamp` (0x0d6d), `umo_LighterSimple`, `mmo_LiColorMask` | the save-vertex entry handlers; the texture-matrix handlers, with 0xf494 `mmo_DirtyTextureAndScreenModule` |
| 0xf | (none) | the screen-space loops `lSC1`, `lSC3`, `lSC5` (0x10df, 0x1182, 0x11f7) | every primitive entry handler |
| 0x10 | (none) | `mClipTriUserAndFrustum` (0xed98) | the triangle, quad and fan entry handlers |
| 0x11, 0x14, 0x15, 0x16 | 0x28ca `mmo_DrawQuad`, 0x288c `mmo_DrawTri`, 0x8db0 `mmo_DrawLinPrim`, 0x8465 `mmo_DrawPntPrim` | copied into word 0xf by the entry handlers | `polygon.S` (feedback and select copies such as 0xb76e and 0xbecc), `line.S`, `point.S` |
| 0x17 | (none) | the screen-space loops (0x10de, 0x1175, 0x11f6) | the decomposers (0xed52, `mClipTriUserAndFrustum`) |
| 0x18 | (none) | the vertex-save modules of `fluff.S` (`mmo_Vn2ToSave`, `mmo_V0ToSave`, `mmo_SaveToVn1` and the rest) | the save-vertex entry handlers |
| 0x1a | 0xe741 `mDispatchCentral` | the draw modules (`mmo_DrawLinPrim` 0x8db9 and others) | |
| 0xda, 0xdb | 0xf4e4 `mmo_DirtyPrePathModule` | deform and multipass modules (0xda); unpack modules and `mmo_DirtyPrePathModule` (0xdb) | `mgeb_DeformationMap3_1` |

## Primitive entry handlers (entry.S)

The distributor releases each batch of vertices to an engine with one of these handlers
([ged.md](ged.md) names the release for each state). **Inferred** for all of them, from the words cited in each entry and
the three readings above, and **established** where an entry says so: every handler copies engine word 0 into CULL
(0x0c), word 2 into CLIP_HOMO (0x0d) and word 1 into CLIP_USER (0x0e), each a move whose memory operand is read through
address register 0x1b at offset 0, 2 or 1 (in the handlers without a restore stage the copy into 0x0e uses the operand
read one word earlier); `mGL_CM_Initialize`
starts those words at 2, 0xfff and 0x3f, `mgeb_ViewPort` rewrites word 2 (0xf42d) and `mUserClipResolve` word 1. It
clears flag bits 3 and 4 (special registers 0x23 and 0x24). It points an address register at engine word 8, and at word
0xda instead when flag bit 7 (special register 0x27) is set, and reads its successor through that register, so the batch
runs `mmo_ObjToClipSpace`, or `mmo_DirtyPrePathModule` when multipass, sprite, unpack or deformation is on. It loads
register 0x10 from register 0x1f with register 0x14, sets register 0x11 to register 0x10 plus 0x1d4 and register 0x13 to
0x3a8, the stride of the two-vertex transform loop ([Vertex records and the transform loop](#vertex-records-and-the-transform-loop)):
vertex records 0x1d4 words apart, taken two at a time. What the conditional update of register 0x19 from register 0x12
on `cc` 0x68 does is not traced.

- `mgeb_RasterPos` (`entry.S` lines 1044-1099, at 0xb2d2): **inferred**, glRasterPos sent down the point path. It takes
  the four position operands (command words 0-3) as input and multiplies them by the modelview matrix at engine words
  0x2f-0x3e: twelve unit-2 multiplies (M = 0x47f, 0xb2d4-0xb2e1, command word 0, 1 or 2 times one column word each) and
  four multiply-adds for the w column (M = 0x460, 0xb2ee-0xb2f1); the four results, modelview times (x, y, z, w), go out
  through address register 0x1f at offsets 0x13-0x16 (0xb2f2-0xb2f5), the eye-space words of a vertex record. It then writes successor word 0xf with
  `mmo_SaveRasterPos` (0xe623, staged at 0xb2d3, stored at 0xb2eb) and word 0xa with the point decomposer 0xd10 (0xb2ec),
  so the position is transformed and clipped like a point and its last stage records it instead of drawing a pixel.
  Two reads of form `r95` = 0x17 (0x138a at 0xb2dd, 0x34 at 0xb2df) and the store to engine word 0x12 at 0xb2ed were not
  traced.
- `mgesi_Points` (`entry.S` line 1019, at 0xb2fe): **inferred**, starts a batch of independent points. Its outputs are
  successor word 0xf, which takes the point draw module held in word 0x16 (move at 0xb307, store 0xb310), and word 0xa,
  which takes `umo_DecomposePoints` (0xd10, staged at 0xb306, stored at 0xb311 in the last delay word); the start module is
  read through register 0x1a (0xb2fe-0xb303) before the group-31 transfer at 0xb309.
- `mgesi_LineStrip` (`entry.S` line 865, at 0xb38a): **inferred**, the plain line-strip batch, also used for line loops
  whose closing segment needs no saved vertex. It selects the line draw module from word 0x15 for successor word 0xf
  (0xb393, 0xb39c) and hands the transformed vertices to `mmo_DecomposeLineStrip` (0xcfa) through word 0xa (0xb39d).
- `mgesi_LineStripSaveV0` (`entry.S` line 888, at 0xb372): **inferred**, a line-strip batch whose first vertex must be
  kept for the loop's closing segment. Besides the line set-up (word 0xf from word 0x15, word 0xa = 0xcfa), it splices
  `mmo_V0ToSave` (0xe544) into the chain: word 0x18 takes the old contents of word 0xd (read at 0xb37f, stored at 0xb388)
  and word 0xd takes the module's address (0xb380, 0xb389), so the save runs where the lighting successor ran before and
  then continues to it.
- `mgesi_LineStripSaveAndIgnoreV0` (`entry.S` line 914, at 0xb35a): **inferred**, the same splice with
  `mmo_V0ToSaveAndIgnore` (0xe4fd) as the inserted stage: word 0xd's previous successor moves to word 0x18 (0xb367,
  0xb370) and 0xe4fd replaces it (0xb371). By its name the module keeps the first vertex without drawing a segment from it.
- `mgesi_LineStripCopyV0` (`entry.S` line 939, at 0xb342): **inferred**, the batch that closes a line loop from the
  engine's saved copy, which the distributor releases after resending the first vertex. Its inserted stage is
  `mmo_CopyV0ToVn1` (0xe6d4, ORed in at 0xb350 and stored to word 0xd at 0xb359), with the displaced successor kept in
  word 0x18 (0xb358).
- `mgesi_LineStripCopyAndIgnoreV0` (`entry.S` line 965, at 0xb32a): **inferred**, closes a loop with
  `mmo_CopyV0ToVn1AndIgnore` (0xe6c0) as the extra stage: the handler moves word 0xd into word 0x18 (0xb337, 0xb340), puts
  0xe6c0 in word 0xd (0xb341), and otherwise sets up the line path as `mgesi_LineStrip` does.
- `mgesi_LineStripRestoreV0` (`entry.S` line 990, at 0xb312): **inferred**, the loop end that brings back the first vertex
  saved by an earlier batch. The stage it inserts ahead of word 0xd's successor is `mmo_SaveToVn1` (0xe560, stored at
  0xb329), the displaced address going to word 0x18 (0xb328); word 0xa gets the strip decomposer 0xcfa (0xb327).
- `mgesi_Quads` (`entry.S` line 419, at 0xb531): **inferred**, independent quads. Its inputs are state words 0-2 and the
  quad draw module in word 0x11 (read at 0xb53a), which it writes to successor word 0xf (0xb543); word 0xa receives
  `mmo_DecomposeQuads` (0xca3a, 0xb539, stored 0xb544), with no dummy and no flag test.
- `mgesi_QuadStrip` (`entry.S` line 304, at 0xb596): **inferred**, a quad-strip batch. Word 0xf takes the quad draw module
  from word 0x11 (0xb5a1, 0xb5aa); word 0xa takes `mmo_DummyDecomposeQuadStrip` (0xc9e1, staged on line 306, stored at
  0xb5ab on line 308) and, when flag bit 6 (`cc` 0x6c, special register 0x26) is set, `mmo_DecomposeQuadStrip` (0xca60,
  line 311, conditional store at 0xb5ac on line 312); word 0x10, the successor of the triangle clipper, takes 0xca60
  (0xb5ad, line 313). The source lines pair each staged address with its store. Flag bit 6 is the one input that differs between the two stores, so it selects the successor this handler outputs.
- `mgesi_QuadStripSave` (`entry.S` line 330, at 0xb57b): **inferred**, the quad-strip batch that keeps its last edge for
  the next batch: the quad-strip set-up of `mgesi_QuadStrip` (0xb588-0xb593) plus `mmo_Vn2ToSave` (0xe4de) spliced in at
  word 0xd, whose former successor it parks in word 0x18 (0xb58b, 0xb594, 0xb595). Flag bit 6 is again the input that
  selects which quad-strip decomposer word 0xa holds as the result (0xb591-0xb592).
- `mgesi_QuadStripRestore` (`entry.S` line 358, at 0xb560): **inferred**, releases a quad strip whose first edge was saved
  by the previous batch. It splices `mmo_SaveToV0` (0xe605) in front of word 0xd's successor (stores 0xb579, 0xb57a) and
  reads its start module through register 0x11 (0xb567-0xb56c) rather than 0x13. Its other output, word 0xa, holds the
  dummy or the real quad-strip decomposer as the flag-bit-6 input selects (0xb576-0xb577).
- `mgesi_QuadStripRestoreSave` (`entry.S` line 387, at 0xb545): **inferred**, a middle batch of a long quad strip that
  both brings back the saved edge and saves its own: the inserted stage is `mmo_SaveToV0AndVn2ToSave` (0xe57e, staged at
  0xb549, stored to word 0xd at 0xb55f) and word 0x18 takes the old word 0xd (0xb55e). As in the other quad-strip
  handlers, the flag-bit-6 input selects the decomposer it produces in word 0xa (0xb55b-0xb55c).
- `mgesi_Triangles` (`entry.S` line 281, at 0xb5ae): **inferred**, independent triangles. It copies the triangle draw
  module from word 0x14 into successor word 0xf (0xb5b9, 0xb5c2) and writes word 0xa with `mmo_DummyDecompose` (0xca01,
  0xb5c3), replaced by `mmo_DecomposeSimpleTriangles` (0xca10) when flag bit 6 is set (0xb5c4); word 0x10 receives 0xca10
  (0xb5c5). So the handler selects the transform's successor from one input bit: without flag bit 6 the transform output goes on in batch order, and with it the decomposer runs before lighting.
- `mgesi_TriangleStrip` (`entry.S` line 81, at 0xb699): **inferred**, a triangle-strip batch that starts on an even
  triangle; it takes flag bits 0 and 6 as inputs and selects from them the decomposer it outputs to word 0xa. Word 0xf gets the draw module of word 0x14 (0xb6a4, 0xb6ad); word 0xa the dummy decomposer (0xb6ae) or, under
  flag bit 6, `mmo_DecomposeTriangleStrip` (0xcc6, 0xb6af); word 0x10 gets 0xcc6 (0xb6b0). It ends at 0xb6a8 unless flag
  bit 0 (special register 0x20, `cc` 0x61 for the bit clear) is set; then it falls through, writes word 0xa with
  `mmo_DecomposeTriangleStripWithSwapEven` (0xc9b2, lines 88-90, store at 0xb6bb) and ends at 0xb6b3.
  `mgeb_SetLMCFlag` sets that bit and `mgeb_ClearLMCFlag` clears it.
- `mgesi_TriangleStripSave` (`entry.S` line 105, at 0xb673): **inferred**, an even-start strip batch that keeps its last
  two vertices for the next batch. It adds `mmo_Vn2ToSave` (0xe4de) to the chain at word 0xd (0xb684, 0xb68d), moving the
  old successor to word 0x18 (0xb68c), on top of the strip decomposer it selects from the flag-bit inputs 6 and 0, the result landing in word 0xa (0xb689-0xb68b,
  swap path 0xb68e-0xb698).
- `mgesi_TriangleStripRestore` (`entry.S` line 131, at 0xb64d): **inferred**, an even-start strip batch that continues a
  strip from vertices the previous batch saved: the stage spliced at word 0xd is `mmo_SaveToV0` (0xe605, 0xb667) and the
  displaced successor goes to word 0x18 (0xb666); the start module is read through register 0x11, and the decomposer in
  word 0xa is the result of the same flag tests as in `mgesi_TriangleStrip`, where input bits 6 and 0 select it
  (0xb663-0xb672).
- `mgesi_TriangleStripRestoreSave` (`entry.S` line 158, at 0xb627): **inferred**, a middle strip batch that restores the
  previous batch's vertices and saves its own: `mmo_SaveToV0AndVn2ToSave` (0xe57e) becomes word 0xd's stage (0xb641) and
  word 0x18 takes what word 0xd held (0xb640); the decomposer words and the swap path are those of `mgesi_TriangleStrip`,
  so the same two flag-bit inputs select its word-0xa output (0xb63d-0xb64c).
- `mgesi_TriangleStripWithSwapOdd` (`entry.S` line 184, at 0xb60e): **inferred**, the strip batch that starts on an odd
  triangle, which every odd-winding distributor state releases. It stages the dummy decomposer and
  `mmo_DecomposeTriangleStrip` (0xb611-0xb612) for words 0xa and 0x10 as the even handler does (0xb622-0xb625), then
  overwrites word 0xa with `mmo_DecomposeTriangleStripWithSwapOdd` (0xc989, lines 188-190, store at 0xb626) without a flag
  test, so the odd decomposer runs after the transform whatever the state.
- `mgesi_TriangleStripSaveWithSwapOdd` (`entry.S` line 207, at 0xb5f6): **inferred**, an odd-start batch that saves:
  word 0xa is written only once, with `mmo_DecomposeTriangleStripWithSwapOdd` (0xc989, 0xb60b), and `mmo_Vn2ToSave`
  (0xe4de) is spliced in at word 0xd (0xb60d) with the old successor in word 0x18 (0xb60c).
- `mgesi_TriangleStripRestoreWithSwapOdd` (`entry.S` line 230, at 0xb5de): **inferred**, the odd-start counterpart of
  `mgesi_TriangleStripRestore`: decomposer 0xc989 in word 0xa (0xb5f3), restore stage `mmo_SaveToV0` (0xe605) in word 0xd
  (0xb5f5), previous word 0xd in word 0x18 (0xb5f4).
- `mgesi_TriangleStripRestoreSaveWithSwapOdd` (`entry.S` line 254, at 0xb5c6): **inferred**, odd start with both restore
  and save: it outputs 0xc989 to word 0xa (0xb5db) and `mmo_SaveToV0AndVn2ToSave` (0xe57e) to word 0xd (0xb5dd), and keeps
  word 0xd's old value in word 0x18 (0xb5dc).
- `mgeb_SetTfanPolyMode` (`entry.S` lines 445-461, at 0xb51f): **inferred**, sets the fan-or-polygon mode the fan entry
  handlers branch on. It clears private flag registers 0x60 and 0x68 (stores through register 0x1d at offsets 0x20 and
  0x28, 0xb520-0xb521) and sets both again under condition 0x11 (0xb522-0xb523), then ends with the relative wait at
  0xb528. By the bank reading above, `cc` 0x40 in the fan handlers tests register 0x60. What condition 0x11 tests here is
  not traced.
- `mgesi_TfanPoly` (`entry.S` lines 476-504, at 0xb4f1): **inferred**, a triangle-fan or polygon batch. After the shared
  set-up it takes the fan-or-polygon bit as input and branches on it (`cc` 0x40, 0xb4f9), which selects the decomposer it outputs. Fan path: word 0xf takes the triangle draw module of word 0x14 (0xb4f8,
  0xb501), word 0xa the dummy decomposer or, under flag bit 6, `mmo_DecomposeTriangleFan` (0xd25, 0xb50c-0xb50d), word
  0x10 0xd25 (0xb50e). Polygon path (0xb50f-0xb51e): flag bit 3 takes engine word 3 (0xb511), the decomposer is
  `mmo_DecomposePolygon` (0xca86) in word 0x10 and, under flag bit 6 or 3, in word 0xa, and engine word 0x11fc is ANDed
  with 0xfe3fffff (0xb516), clearing its bits 22-24.
- `mgesi_TfanPolySave` (`entry.S` lines 526-557, at 0xb4bd): **inferred**, the fan or polygon batch that saves its
  vertices for the next batch. Both paths of `mgesi_TfanPoly` are here, each with a save stage spliced at word 0xd and the
  old successor moved to word 0x18: `mmo_V0ToSave` (0xe544, 0xb4d9-0xb4da) on the fan path and `mmo_V0ToSave_SaveExtra`
  (0xe519, 0xb4eb-0xb4ec) on the polygon path, whose extra state is the polygon's edge word. The `cc` 0x40 input
  (0xb4c5) selects the path and with it the decomposer output to words 0xa and 0x10.
- `mgesi_TfanPolyRestore` (`entry.S` lines 581-611, at 0xb48b): **inferred**, a fan or polygon batch that brings back the
  centre vertex saved earlier. It inserts `mmo_SaveToV0` (0xe605) at word 0xd before branching (0xb492-0xb49f, both paths),
  then takes the fan-or-polygon bit as input (0xb497) and selects as its result the fan decomposer (0xb4aa-0xb4ac) or the
  polygon decomposer with the 0x11fc mask (0xb4ad-0xb4bc).
- `mgesi_TfanPolyRestoreEdge` (`entry.S` lines 635-706, at 0xb430): **inferred**, restores the centre vertex and the edge
  state of a fan or polygon split across batches. Fan path: it ORs 0xe0000000 into three words addressed from register 0x1f
  (0xb444-0xb44a, offsets set from F = 0x26, +0x134 and +0x1d0), setting their top three bits. Polygon path: it splices
  `mmo_SaveToV0_RestoreExtra` (0xe5d7) at word 0xd (0xb45d-0xb45e), copies record words 0-0xf and 0x26 to the record 0x138
  words on (0xb45f-0xb46f), calls `mEramToWram` (0xb470) to copy 0x27 words back from external memory into the record,
  takes flag bit 3 from engine word 3 (0xb47c) and clears bits 22-24 of two record words with 0xfe3fffff (0xb481-0xb482).
  The branch on `cc` 0x40 (0xb438) is the input that selects between the two paths and so the decomposer output.
- `mgesi_TfanPolyRestoreSave` (`entry.S` lines 728-759, at 0xb3fc): **inferred**, a middle fan or polygon batch that
  restores the saved centre and saves for the next: `mmo_SaveToV0` (0xe605) is the fan path's spliced stage
  (0xb418-0xb419) and `mmo_SaveToV0_SaveExtra` (0xe5a9) the polygon path's (0xb42a-0xb42b); the `cc` 0x40 input at 0xb404
  selects which pair, and which decomposer, is the output.
- `mgesi_TfanPolyEnd` (`entry.S` lines 778-803, at 0xb3cf): **inferred**, the last batch of a fan or polygon, which the
  distributor releases at glEnd. It takes no save stage: after the shared set-up its only output is the decomposer,
  which the `cc` 0x40 input (0xb3d7) selects: the fan one (0xd25, 0xb3ea-0xb3ec) or the polygon one (0xca86, 0xb3f8-0xb3fb).
- `mgesi_TfanPolyRestoreEnd` (`entry.S` lines 820-847, at 0xb39e): **inferred**, the closing batch of a fan whose centre
  the engine saved earlier: `mmo_SaveToV0` (0xe605) is inserted at word 0xd (0xb3a5-0xb3b2) before the `cc` 0x40 branch,
  and the two paths then output 0xd25 or 0xca86 to the decomposer words, as the same input selects in
  `mgesi_TfanPolyEnd` (branch at 0xb3aa).

## Vertex save and copy modules (fluff.S)

The save-vertex entry handlers splice one of these modules into the chain at successor word 0xd and park the displaced
successor in word 0x18 ([Primitive entry handlers](#primitive-entry-handlers-entrys)). **Established** for every module
below (each read in full in `ge_listing/fluff.S.lst`): it reads word 0x18 twice, once as a move whose value its store to
word 0xd receives (the nine-word pairing of [the successor section](#how-the-vertex-path-is-chained-successor-words)) and
once with `r95` = 2 before its group-31 transfer, so it unhooks itself and continues to the stage it displaced. The vertex
data they move is record words 0x1b-0x22: the colour words 0x1b-0x1e and the four after them, which
`mmo_SaveRasterPos` fills with the transformed texture coordinates. The save area is reached through address register
0x16 at offsets 0x35-0x3c (`r95` = 0x17 reads, `r95` = 8 stores). Two fixed records serve as the strip's history: one at
engine address 0x10c8 and one at 0x1164, each reached through register 0 loaded with that immediate.

- `mmo_Punt` (`fluff.S` lines 996-1003, at 0xe3d2): **established**, the empty stage: it restores word 0xd from word 0x18
  (0xe3d7, 0xe3e0) and jumps on through word 0x18 (0xe3d2), moving no vertex data.
- `mmo_V0ToSave` (`fluff.S` lines 721-744, at 0xe544): **established**, copies record words 0x1b-0x22 of the batch's first
  vertex (address register 0x1f, moves at 0xe545-0xe553) into the save area, offsets 0x35-0x3c (stores 0xe54e-0xe55c),
  for the line loop's closing segment or the fan's centre.
- `mmo_V0ToSaveAndIgnore` (`fluff.S` lines 822-839, at 0xe4fd): **established**, the same eight-word copy from the first
  vertex to the save area (0xe4fe-0xe515), plus three register updates in its delay words (0xe510-0xe514: registers 0x19,
  0x10 and 0x11 rewritten from themselves) that by its name drop the saved vertex from the batch's drawing.
- `mmo_Vn2ToSave` (`fluff.S` lines 619-637, at 0xe4de): **established**, saves the older history vertex for the next
  batch: register 0 is set to 0x10c8 (0xe4de) and its words 0x1b-0x22 go to save-area offsets 0x35-0x3c (0xe4e2-0xe4f9).
- `mmo_V0ToSave_SaveExtra` (`fluff.S` lines 892-913, at 0xe519): **established**, the polygon form of `mmo_V0ToSave`: after
  the eight-word copy (0xe51a-0xe531) it calls `mWramToEram` (0xe52c) with source 0x102c, destination register 0x16 and
  count 0x27, keeping 39 more words, the polygon state, in external memory.
- `mmo_SaveToV0` (`fluff.S` lines 650-663, at 0xe605): **established**, the restore: it reads save-area offsets 0x35-0x3c
  (0xe605-0xe613) and writes them over record words 0x1b-0x22 of the batch's first vertex (stores through register 0x1f,
  0xe60c-0xe61a), so a strip or fan continues from the vertex the previous batch kept.
- `mmo_SaveToVn1` (`fluff.S` lines 758-773, at 0xe560): **established**, moves the saved eight words (0xe560-0xe56e) into
  the history record at 0x1164 (register 0 loaded at 0xe563, stores 0xe567-0xe575): the line loop's first vertex becomes
  the endpoint before the closing segment.
- `mmo_SaveToV0AndVn2ToSave` (`fluff.S` lines 681-705, at 0xe57e): **established**, both directions in one stage: the save
  area's eight words replace record words 0x1b-0x22 of the first vertex (0xe57e-0xe595), and the record at 0x10c8 then
  refills the save area (0xe58a-0xe5a5).
- `mmo_SaveToV0_SaveExtra` (`fluff.S` lines 926-947, at 0xe5a9): **established**, restores the first vertex's eight words
  from the save area (0xe5a9-0xe5be) and then calls `mWramToEram` (0xe5bf) with source 0x102c, destination register 0x16
  plus 0x3d and count 0x27 to keep the polygon state.
- `mmo_SaveToV0_RestoreExtra` (`fluff.S` lines 959-981, at 0xe5d7): **established**, restores record words 0x1b-0x22 from
  save-area offsets 0x35-0x3c (0xe5d7-0xe5ec) and eight more words from offsets 0x58-0x5f into the record through form-5
  stores with the immediates 0x108-0x124 (0xe5e7-0xe5fc), the extra state the save forms kept.
- `mmo_CopyV0ToVn1` (`fluff.S` lines 790-805, at 0xe6d4): **established**, copies record words 0x1b-0x22 of the first
  vertex straight into the history record at 0x1164 (0xe6d8-0xe6df), without the save area: the vertex is already in the
  batch, so the loop can close from it.
- `mmo_CopyV0ToVn1AndIgnore` (`fluff.S` lines 857-876, at 0xe6c0): **established**, the same direct copy into the record at
  0x1164 (0xe6c4-0xe6ca), followed by the three register rewrites (0xe6ce-0xe6d0) that `mmo_V0ToSaveAndIgnore` also ends
  with.
- `mmo_SaveRasterPos` (`fluff.S` lines 459-605, at 0xe623): **inferred**, the last stage of glRasterPos, which
  `mgeb_RasterPos` installs in word 0xf. It tests bit 2 of the vertex's flag word 0x26 (AND with 4 at 0xe626, branch on
  `cc` 3 at 0xe632). On the saving path it takes the texture coordinates in record words 0xb-0xe as input and multiplies
  them by the texture matrix at engine words 0x5f-0x6e (unit-2 multiplies and multiply-adds, 0xe651-0xe660), storing the
  four results to record words 0x1f-0x22 (0xe661-0xe664); it subtracts staged values from record words 0xf-0x11 and
  0x23-0x25 (0xe67a-0xe67f) and copies 0x27 words of the record to external memory with `mWramToEram` (0xe681), the saved
  raster position. It leaves through word 0x1a (0xe692), or to `mmo_SelectRasterPos` on `cc` 3 (0xe697). The other path
  branches to `mmo_ToScreenSpaceInvQ` on `cc` 2 (0xe647).
- `mmo_MultipassModule` (`fluff.S` line 1038, at 0xe3e1):
  **inferred**, the module that keeps the matrices consistent across passes of a multipass draw. It takes bit 7 of control
  word 0x19 (AND with the staged 0x80, 0xe3e2-0xe3e3) as its input. With the bit clear it calls `mCramToEram` (0x103a, call
  0xe3f5) with source 0x2f, destination 0x1505 and count 0x20, saving the modelview and projection matrices, and jumps to 0xe43b;
  with it set (branch 0xe3ef to 0xe407) it subtracts control word 0x7d and the staged 0x10 (0xe408) and calls `mEramToCram`
  (0x104f) twice to bring 0x10 words back to 0x2f and then to 0x3f (calls 0xe414, 0xe430), then sets special registers 0x29 and
  0x2b (0xe439-0xe43a). Both paths step register 9 (0xe43c, and again under cc 0x15 at 0xe43d) and continue through word 0xda
  (0xe441). Its outputs are the saved or restored matrix words and register 9 stepped for the next stage.
- `mdc_finish` (`fluff.S` line 83, at 0xe450):
  **inferred**, the last stage of the vertex path when no mode flag is set. It tests bit 3 of control word 0x19 (0xe450-0xe451),
  clears special register 0x2a when the bit is zero (0xe453) and writes register 0x10 to special register 0xb (0xe454). It
  stages `mmo_SaveRasterPos` (0xe623, 0xe455) and subtracts it from control word 0xf (0xe456); the delay words of the command end
  at 0xe459 send 0x70000 to bus address 0x1f8 (0xe45d) and, when the draw stage differs, zero to 0x1f5 and staging word 0x10 to
  0x1f4 (0xe45f, 0xe461). It takes control word 0x19 and register 0x10 as inputs and produces special registers 0x2a and 0xb and the end-of-batch bus words.
- `mdc_evaluator` (`fluff.S` line 239, at 0xe462): **inferred**, the end stage for the evaluator path. It loads the transfer
  target through register 0x17 (0xe462), writes register 0x10 to special register 0xb (0xe463), ends the command (0xe468)
  and, in its delay word, takes register 0x17 down by one (0xe46d), so the next stage comes from the top of the stack that
  register 0x17 indexes. Special register 0xb receives register 0x10 as it is and the stack pointer drops by one; the next
  stage address comes from the stack.
- `mdc_multipass` (`fluff.S` line 169, at 0xe471):
  **inferred**, the end stage for the multipass path, taken from `mDispatchCentral` or `mdc_sprite`. On the fall-through path
  it ANDs register 0x10 with the staged 0xfffffff7 into special register 0xb (0xe47a-0xe47b), copies control words 0-2 to the cull
  and clip special registers 0xc, 0xd and 0xe (0xe48a-0xe48d), and stages `mmo_DummyDecompose` (0xca01, 0xe490), which it writes
  to word 0xa under cc 2, when that word is empty (0xe48e, 0xe49a), before ending the command at 0xe492. The branch at 0xe471
  on cc 0x6e goes to 0xe49b, which clears bit 0x80 of control word 0x19 by code 0x51 (0xe49c), calls `mEramToCram` (0xe49d) with
  source 0x1505, destination 0x2f and count 0x20, and then jumps to `mdc_finish` (0xe4ad) or `mdc_evaluator` (0xe4ac, cc 0x68). It takes registers and control words 0-2 as inputs, produces the restored special registers and word 0xa, and selects the end path by comparing flag bit tests.
- `mdc_sprite` (`fluff.S` line 140, at 0xe4b6): **inferred**, the end stage for the sprite path. It calls `mEramToCram`
  (0x104f, 0xe4b6) with a source taken from the immediate 0x14d5 (0xe4b9), destination 0x2f and count 0x10, restoring the
  saved matrix, and sets special registers 0x2b and 0x29 (0xe4bf-0xe4c0). It then selects the next stage: `mdc_multipass` on
  cc 0x66 (0xe4c5), `mdc_evaluator` on cc 0x68 (0xe4c6), otherwise `mdc_finish` (0xe4c7). The saved matrix words at 0x14d5
  are copied into 0x2f-0x3e unchanged; the flag tests at 0xe4c5-0xe4c7 pick the next stage.
- `mdc_polymode_or_clip` (`fluff.S` line 121, at 0xe4d0):
  **inferred**, the shortest end stage, for the polygon-mode and clip states. It writes register 0x10 to special register 0xb
  (0xe4d0), ends the command (0xe4d5) and in the delay word takes register 0x17 down by one (0xe4da), the same stack step
  `mdc_evaluator` makes. It takes register 0x10 as input, produces special register 0xb and lowers register 0x17.
- `mmo_DirtyMultipassModule` (`fluff.S` line 1016, at 0xe6a5): **inferred**, the dirty-state stage that puts
  `mmo_MultipassModule` into the pre-path chain. It stages 0xe3e1 (0xe6a6), moves it to store-data (0xe6a7), stores it at
  word 0xda plus register 9 (0xe6b0), loads that word as the transfer target (0xe6b1) and writes word 0xdb under cc 0x15
  after a test on register 9 (0xe6bd, 0xe6bf). The command then continues through the word it just wrote (0xe6b7). The
  staged address 0xe3e1 is stored unchanged into the pre-path word, and that word is the successor.
- `mmo_AbortGeometry` (`fluff.S` line 264, at 0xe6e8):
  **inferred**, the stage the decomposers branch to when a batch must be dropped. It tests control word 3 against the staged
  0x10 (0xe6e9-0xe6ea) and control word 0xd against register 0x1d (0xe6eb); on a nonzero result it jumps to 0xe716, which clears
  special registers 0xd, 0xe and 0xc (0xe71c, 0xe71e, 0xe720), stages `mmo_Punt` (0xe3d2, 0xe71f) and stores it to word 0xd under
  cc 2 (0xe722, 0xe72b), parks the old word 0x18 in external word 0x14d5 (0xe723, 0xe72c), points word 0x18 at 0xe730 (0xe725,
  0xe72f) and ends the command through word 0xc (0xe727); when the chain reaches 0xe730 it reloads the parked word and goes back
  to 0xe700. Otherwise, at 0xe700, it reads word 0x1a as the successor, compares `mmo_SaveRasterPos` (0xe623, 0xe702) with word 0xf
  and sends 0x70000 to bus address 0x1f8, then, when they differ, zero to 0x1f5 and staging word 0x10 to 0x1f4 (0xe70f-0xe715). Its inputs are control words 3 and 0xd and register 0x1d, which it compares against masks; its outputs are the cleared special registers and the bus words.
- `mDispatchCentral` (`fluff.S` line 53, at 0xe741): **inferred**, the end-of-chain dispatcher that selects what the
  finished batch does next. It copies control word 0x19 to special register 0xb (0xe742), clears special register 9 (0xe74f)
  and branches on the flag bits of word 0x19 in order: cc 0x60 and 0x62 to `mdc_polymode_or_clip` (0xe4d0, 0xe750-0xe751),
  cc 0x64 to `mdc_sprite` (0xe4b6), cc 0x66 to `mdc_multipass` (0xe471), cc 0x68 to `mdc_evaluator` (0xe462), and the jump
  at 0xe755 to `mdc_finish` when no bit is set. Control word 0x19 is copied unchanged to special register 0xb; the flag
  tests listed pick the next stage.

## Decomposers (udecompose.s)

Each decomposer turns the batch's run of vertex records into a primitive list at engine address 0x8bb0 (the decompose
table the evaluator set-up also names), written through address register 7 at offsets 1-4: the record addresses of the
primitive's vertices and a flag word built from their edge-flag words (record word 0x26). **Inferred** from the words
cited per entry; the `mmo_` and `umo_` names share each address. Every one loads its count from register 0x19, which the
entry handler set up, tests `cc` 0x10 or 0x15 with a branch to `mmo_AbortGeometry`, reads its successor from word 0xb
(triangles) or 0xc (lines, points), and stages the clipper the screen-space stage hands to next, stored to successor word
0x17 through register 0x1b at offset 8.

- `mmo_DecomposeTriangleStrip` (`udecompose.s` lines 20-42, at 0xcc6): **inferred**, takes the strip's vertex records
  (register 1 from register 0x1f, register 8 at +0x1d0) and the count in register 0x19 as input and produces one table entry
  per triangle; it combines by XOR (unit-1 0x56, 0xccf) the record flag words with engine word 0x1d before the loop, and its output
  successor for the screen stage is `mClipTriUserAndFrustum` (0xed52, staged 0xcc6, stored 0xcda).
- `umo_DecomposeTriangleStrip`: **inferred**, second name of the strip decomposer at 0xcc6 (`udecompose.s` line 20): it
  consumes the strip records and produces the triangle table at 0x8bb0, continuing through successor word 0xb (0xcc9).
- `lDE2` (`udecompose.s` lines 32-40, at 0xcd1): **inferred**, the strip loop: a one-word relative transfer on `cc` 0x11
  steps register 1 by one record (F = 0x27) and repeats, while its delay words store three record addresses (offsets 1-3,
  0xcd3-0xcd6) and the combined flag word (offset 4, OR at 0xcd8) of the current triangle and advance register 7 under
  condition 5 (0xcd7).
- `mmo_DecomposeTriangles` (`udecompose.s` lines 49-81, at 0xcdb): **inferred**, independent triangles: its input is the
  batch in groups of three records, its output one table entry per group, and it combines the flag words, ANDed with the edge masks at
  engine words 0xbe-0xc0 (0xce5-0xceb) and the constant 0xc0000000 staged at 0xce3; successor word 0x17 again gets
  `mClipTriUserAndFrustum` (0xcdd, 0xcf9).
- `umo_DecomposeTriangles`: **inferred**, alias at 0xcdb (`udecompose.s` line 49) of the independent-triangle
  decomposer, which reads the records three at a time and produces the 0x8bb0 table.
- `lDE9` (`udecompose.s` lines 60-71, at 0xce5): **inferred**, its loop: per triangle it ANDs the three edge-flag words with
  the masks at 0xbe and 0xbf and ORs in 0xc0 (0xce5-0xceb), selects the next record address by condition 4 or 5 (0xce7-0xcea,
  +0x1d4 for the next record) and repeats through the relative transfer at 0xcf0 (immediate -0xb).
- `mmo_DecomposeLineStrip` (`udecompose.s` lines 90-113, at 0xcfa): **inferred**, takes the line-strip records and the
  count (register 0x19 at 0xcfb) as input and produces a table entry per segment, whose flag word combines the endpoints' edge flags (0xd0d); it stages 0x20000000 (0xcfa) as a flag bit
  and `mClipLinUserAndFrustum` (0xea1c, 0xd01), the line clipper that becomes successor word 0x17, and continues through word
  0xc (0xcfd).
- `umo_DecomposeLineStrip`: **inferred**, second name at 0xcfa (`udecompose.s` line 90) for the segment decomposer; its
  output is the segment table at 0x8bb0 and its successor word 0xc.
- `lDE3` (`udecompose.s` lines 102-111, at 0xd05): **inferred**, the segment loop: per pass it clears offset 2 of the entry
  (0xd05), stores the two endpoint records and the combined flag word (0xd08-0xd0d) and steps register 1 by one record under
  the relative transfer at 0xd06.
- `mmo_DecomposePoints` (`udecompose.s` lines 120-143, at 0xd10): **inferred**, takes the point records (register 1 from
  register 0x10) and the count as input; it copies the count into register 0x12 (0xd11), selects two records per pass, and produces one table entry per
  point, staging `mClipPntUserAndFrustum` (0xe75e) for successor word 0x17 (0xd24) and continuing through word 0xc (0xd14).
- `umo_DecomposePoints`: **inferred**, the point decomposer under its second name (0xd10, `udecompose.s` line 120): one
  table entry per input record, then the point clipper as the screen stage's successor.
- `lDE6` (`udecompose.s` lines 131-141, at 0xd19): **inferred**, the point loop, two points per pass: it clears offsets 2
  and 0x11 of the entries (0xd19-0xd1a), stores both record addresses (0xd1d-0xd1f), advances register 1 by 0x3a8 (two
  records, 0xd1c) and repeats through the relative transfer at 0xd1b.
- `mmo_DecomposeTriangleFan` (`udecompose.s` lines 150-173, at 0xd25): **inferred**, the fan: its inputs are the centre
  record (register 8, 0xd25) and the following records, and it produces a triangle entry for each pair of consecutive outer
  vertices together with the centre, the flag word that combines the centre's edge-flag word by OR (0xd29-0xd2b); its successor is word
  0xb and the screen stage's is `mClipTriUserAndFrustum` (0xd27).
- `umo_DecomposeTriangleFan`: **inferred**, alias at 0xd25 (`udecompose.s` line 150): it takes the centre and outer
  records and produces centre-anchored entries in the 0x8bb0 table.
- `lDE7` (`udecompose.s` lines 162-170, at 0xd30): **inferred**, the fan loop: each pass stores the centre (register 8) and
  the current outer record into the entry (0xd30, 0xd33-0xd34), ORs the edge flags (0xd35), selects the next entry and
  record by condition 4 or 5 (0xd36-0xd38) and repeats through the relative transfer at 0xd31.

## Memory copies (umemove.s)

The engine has three data memories, named in the copy routines ([ge_isa.md](ge_isa.md#engine-facts-read-from-konas-own-binaries)):
working memory (WRAM), which also takes the command words, control memory (CRAM), shared by the cores, and
external memory (ERAM). **Inferred** from the callers: register 0 holds the source address, register 1 the destination
and register 2 the word count. `mmo_V0ToSave_SaveExtra` loads 0x102c into register 0 (0xe52a) and register 0x16 + 0x3d
into register 1 (0xe52e) around its call at 0xe52c, and `mmo_SaveToV0_SaveExtra` also loads 0x27 into register 2
(0xe5c4). Each routine steps the count with the address-unit decrement (F = 0x25 with `r222`) and loops on `cc` 0x11 in
condition group 7, which is "count not zero" ([Address-unit conditions](ge_ops.md#address-unit-conditions)). Its loop
alternates plain words with W71 words, so the core's two threads move alternate words
([ge_isa.md](ge_isa.md#forms)). It returns through a group-5 indirect transfer
([ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command)). By memory, reads use `r95` = 0x13 for control memory
and 0x15-0x17 for external memory. Stores through register 1 use `r211` = 3 with `r95` = 4-6 for the internal memories
and 8-0xa for external memory. All 20 labels were read in `ge_listing/umemove.s.lst` (`ge.u` 6.5.30m).

- `uWramToCram` (`umemove.s` lines 18-25, at 0x1013): **inferred**, the set-up of the working-to-control memory copy.
  It decrements the count with the flag set (0x1013, again at 0x1019), applies F = 0x22 to the destination register
  (0x1014) and F = 5 to the source register (0x1016), and preloads source words at register 0 + 2 and + 4 (0x1015,
  0x1017) before the loop. `mmemove.S` has the `mWramToCram` that `mgeb_LoadCram` calls. This build has no caller in
  the shipped program.
- `lW2C` (`umemove.s` lines 27-35, at 0x101b): **inferred**, the working-to-control loop. A relative transfer to itself
  on `cc` 0x11 (0x101b) repeats its four delay slots, which store source words through register 1 (`r211` = 3,
  `r95` = 4, 5 and 6 at 0x101c-0x1020, then 0x1023). The stores at 0x101f, 0x1020 and 0x1023 are thread B's. The
  group-5 transfer at 0x101c returns once the count reaches zero.
- `mWramToEram` (`umemove.s` lines 45-52, at 0x1025): **inferred**, saves a block of working memory to external memory.
  The vertex-save stages call it to keep 0x27 words of polygon state (0xe52c, 0xe5bf), and `uEvalSaveState` calls it for the
  evaluator maps (0x96e). Its set-up decrements the count (0x1026), adjusts the destination with F = 0x22 (0x1028) and
  moves the first source words from register 0 + 1, + 3 and + 2 (0x1025, 0x1029, 0x102b).
- `uWramToEram` (`umemove.s` line 45, at 0x1025): **established** to be the second label of `mWramToEram`'s first word, 0x1025 (`ge_symbols`), so
  the transform-path modules that use the u- names get the same external-memory save.
- `lW2E` (`umemove.s` lines 54-65, at 0x102d): **inferred**, the working-to-external loop. Each pass decrements the
  count (0x102d) and stores through register 1 into external memory with `r95` = 9, 8 and 0xa (0x102e, 0x1030, 0x1032,
  0x1034, 0x1036, 0x1038), the last three in thread B. It repeats through the relative transfer of -3 at 0x1030 and
  returns at 0x1031.
- `mCramToEram` (`umemove.s` lines 75-81, at 0x103a): **inferred**, the control-to-external memory copy that
  `mgeb_CramToEram` calls. Its set-up reads control-memory words through register 0 with `r95` = 0x13 (0x103a,
  0x103c, 0x103e, 0x1040), adjusts the destination (0x103b) and decrements the count (0x103d).
- `uCramToEram`: **established** at 0x103a, the same word as `mCramToEram` (`ge_symbols`). It has no caller of its own in
  the shipped program and moves control memory into external memory like its twin.
- `lC2E` (`umemove.s` lines 83-95, at 0x1041): **inferred**, the control-to-external loop. Control-memory reads
  (`r95` = 0x13 at 0x1042, 0x1044, 0x104a, 0x104c) alternate with external stores through register 1 (`r95` = 9, 8 and
  0xa at 0x1043, 0x1045, 0x1047, 0x1049, 0x104b, 0x104d). It loops back four words at 0x1045 and returns at 0x1046.
- `mEramToCram` (`umemove.s` lines 106-121, at 0x104f): **inferred**, the external-to-control memory copy behind
  `mgeb_EramToCram` and the strided pixel-path loads. Its set-up issues six external reads through register 0 with
  `r95` = 0x17 (0x1050-0x105e), so the first words are in flight before the loop starts, and decrements the count
  at 0x1051.
- `uEramToCram` (`umemove.s` line 106, at 0x104f): **established** as the other name for that word (`ge_symbols`). Like `mEramToCram`, it fills control memory
  from external memory, here for callers that use the u- names.
- `lE2C` (`umemove.s` lines 123-135, at 0x1060): **inferred**, the external-to-control loop. It keeps reading external
  memory (`r95` = 0x17 at 0x1061, 0x1063, 0x1065) and storing through register 1 with `r95` = 5, 4 and 6 (0x1062,
  0x1064, 0x1066, 0x1068, 0x106a, 0x106c). It loops back four words at 0x1064 and returns at 0x106b.
- `mClearEram` (`umemove.s` lines 151-158, at 0x1074): **inferred**, fills a block of external memory with one value,
  zero by its name. Unlike the copies, it keeps its count in register 1 (decremented at 0x1078) and its address in
  register 0 (F = 0x22 at 0x1076). The value comes from a register move at 0x1074 with no memory source.
- `uClearEram`: **established** at 0x1074 beside `mClearEram` (`ge_symbols`). The two names reach one external-memory
  clear.
- `lcE` (`umemove.s` lines 160-171, at 0x107c): **inferred**, the clear loop. It decrements register 1 (0x107c) and
  stores through register 0 into external memory with `r95` = 9, 8 and 0xa (0x107d, 0x107f, 0x1081, 0x1083, 0x1085,
  0x1087), the last three in thread B. It loops back three words at 0x107f and returns at 0x1080.
- `mCramToFifo` (`umemove.s` lines 183-201, at 0x1089): **inferred**, streams a block of control memory to the engine's
  output. It decrements the count (0x1089, 0x108d) before `lC2F`, then ends with a bitwise-not store to bus address
  0x1f5 (0x1098, thread B at 0x1099). That is the hand-over word `mmo_PixStreamNextGE` also sends.
- `uCramToFifo`: **established** at 0x1089, sharing `mCramToFifo`'s first word (`ge_symbols`). It sends control memory
  to the output by the same code.
- `lC2F` (`umemove.s` lines 190-198, at 0x108f): **inferred**, the control-to-output loop. A transfer to itself on
  `cc` 0x11 (0x108f) repeats reads with `r95` = 0x11 and 0x13 (0x1090, 0x1093) and output stores with `r213` = 3,
  B = 0x1e and E = 1 (0x1091 thread A, 0x1095 thread B). The group-5 transfer at 0x1092 returns at the end.
- `mEramToFifo` (`umemove.s` lines 211-219, at 0x109b): **inferred**, streams a block of external memory to the output.
  Its set-up reads external memory with `r95` = 0x15, 0x16 and 0x17 (0x109c-0x10a4) and decrements the count
  (0x109d). After the loop it sends the bitwise-not word to bus address 0x1f5 (0x10b4, 0x10b6).
- `uEramToFifo` (`umemove.s` line 211, at 0x109b): **established** as `mEramToFifo`'s own first word under a second name (`ge_symbols`), so both
  names send external memory to the output.
- `lE2F` (`umemove.s` lines 221-232, at 0x10a5): **inferred**, the external-to-output loop. Each pass decrements the
  count (0x10a5), reads external memory (0x10a6, 0x10a8) and stores one output word per thread (0x10a7, 0x10ad). It
  repeats through the relative transfer of -3 at 0x10a8 and returns at 0x10af.

## Block loads and clears (CRAMBlockLoad.s, ERAMBlockClear.s)

Two command handlers move a host-sized block in four-word passes. Each takes its operands from the command input
(source A = 0x1f, word k as D = k) into address registers with `r217` = 1. It runs its main loop on the address-unit
condition `cc` 0x14 (count > 0, [Address-unit conditions](ge_ops.md#address-unit-conditions)), stores the one to three
words left over under the same condition, and ends in the end-of-command wait (a relative group-31 transfer with
immediate 0). **Inferred** from the words cited, read in `ge_listing/CRAMBlockLoad.s.lst` and
`ge_listing/ERAMBlockClear.s.lst` (`ge.u` 6.5.30m). The ARM reaches them through `geif.u` slots 127 (entry 255, `mgeb_CRAMBlockLoad`) and 136 (entry 273,
`mgeb_ERAMBlockClear`) ([ge_handlers.md](ge_handlers.md#cramblockloads)).

- `mgeb_CRAMBlockLoad` (`CRAMBlockLoad.s` lines 50-65, at 0x15f9): **inferred**, loads a block of command words into
  control memory. Its operands 0-4 go to registers 3, 4, 0xc, 0xa and 0xb (0x15fa-0x15fe): register 3 is the pass
  count, register 4 the leftover count and register 0xa the control-memory destination. Register 1 is pointed five
  words into the command input (0x15ff), past the operands, so the data follows them. An empty count skips to
  `epilogue_cbl` through the `cc` 0x15 branch at 0x1605.
- `ugeb_CRAMBlockLoad` (`CRAMBlockLoad.s` line 50, at 0x15f9): **established** as the second name of that handler's
  first word (`ge_symbols`). It reaches the same control-memory load.
- `mainloop_cbl` (`CRAMBlockLoad.s` lines 103-111, at 0x1613): **inferred**, the four-word pass. It is a transfer to
  itself on `cc` 0x14 whose word also steps register 3 with F = 0x20 and sets the address-unit flag. Its delay slots
  move input words at register 1 + 0-4 into control memory through register 0xa (`r211` = 3, `r95` = 4 at 0x1614-0x161a)
  and advance register 0xa (F = 0x1a, 0x1618) and register 1 (F = 5, 0x1619).
- `post_loop_cbl` (`CRAMBlockLoad.s` lines 118-121, at 0x161c): **inferred**, the code after the last pass; at 0x161f it copies the saved input pointer from register
  0xd back into register 1 (C = 0xd, G = 1). 0x161b set register 0xd from register 1 inside the loop, so the
  leftover words are read from where the last full pass ended.
- `epilogue_cbl` (`CRAMBlockLoad.s` lines 148-168, at 0x1623): **inferred**, stores the zero to three leftover words.
  It tests register 4 against 1, 2 and 3 with address-unit words (F = 0x20, 0x21, 0x22 at 0x1629, 0x162b, 0x162d)
  and makes each control-memory store at 0x162c, 0x162e, 0x1630 and 0x1632 conditional on `cc` 0x14. The relative
  group-31 transfer at 0x162a ends the command.
- `mgeb_ERAMBlockClear` (`ERAMBlockClear.s` lines 43-72, at 0x16e7): **inferred**, clears a block of external memory.
  Operand 2 goes to register 0xa, 0 to register 3 and 1 to register 4 (0x16e8-0x16ea). It adds the context's
  external-memory base in register 0x16 to register 0xa (0x16f0) and makes the fill value from an integer subtract
  with no operand fields (0x1702), staged at 0x16fb. An empty count branches to `epilogue_ebc` on `cc` 0x15 (0x1701).
- `ugeb_ERAMBlockClear` (`ERAMBlockClear.s` line 43, at 0x16e7): **established** to share `mgeb_ERAMBlockClear`'s
  entry word (`ge_symbols`), so it clears the same external-memory block.
- `mainloop_ebc` (`ERAMBlockClear.s` lines 93-100, at 0x170b): **inferred**, four external-memory stores per pass
  through register 0xa (`r95` = 8 at 0x170c, 0x170e, 0x1710, 0x1712) under a transfer to itself on `cc` 0x14 that
  steps register 3. It advances the destination by F = 0x1b at 0x1711.
- `epilogue_ebc` (`ERAMBlockClear.s` lines 118-131, at 0x1714): **inferred**, writes the leftover words. It
  compares register 4 by address-unit words (0x1714, 0x1716, 0x1717) and makes the stores at 0x1718, 0x171a and
  0x171c conditional on `cc` 0x14. The relative group-31 transfer at 0x1715 ends the command.

## Raster-board commands (raster.S)

The handlers of `raster.S` talk to the raster boards through the engine's bus-output addresses 0x1f4-0x1f8 (`r95` = 0x13 stores with the address as immediate; [docs/rm.md](../docs/rm.md#the-shadow-bit-mask)). Read in full from the [raster.S listing](ge_listing/raster.S.lst) (`ge.u`, IRIX 6.5.30m). Three habits recur. **Established:** most handlers begin by reading three input words (C = 0x1d): the first into address register 0x1a, the third into staging word 0x10. A shadowed register write is four stores: 0x00070000 to 0x1f8 and a bit mask to 0x1f5 (shadow index 7, `BEF_REGSHADOW_BMASK`), then the address word to 0x1f8 and the value to 0x1f5. A direct write to a register puts its index on 0x1f7 and its value on 0x1f5. **Inferred: in this file the `mgesi_` and `mgebi_` handlers end by sending staging word 0x10 to 0x1f4 (E = 2), and the `mges_` handlers do not.** The clearest case is a pair that differs in little else: `mgesi_TbusRegWrite` sends the closing word and `mges_TbusRegWriteNoIncr` does not. So the closing word is taken to increment a per-command count on the raster side, which the name "NoIncr" points to. `mges_TBUS_1`, `mges_NullCommand` and `mges_DiagDeactivate` also have no 0x1f4 store.

- `mgesi_TbusRegWrite` (`raster.S` lines 213-228, at 0x39fd): **inferred**, the engine half of the firmware's
  `tbus_regwrite` for the board registers 0x400-0x477
  ([docs/rm.md](../docs/rm.md#host-interface-registers-on-the-raster-bus)). Operand 0, the register number, goes to
  0x1f7 (0x3a05). The clear-pattern register (`r148` = 0x3c0) goes to 0x1f6 (0x3a07), operand 1, the value, to 0x1f5
  (0x3a08), and the saved word to 0x1f4 (0x3a09).
- `mges_TbusRegWriteNoIncr` (`raster.S` lines 280-292, at 0x39da): **inferred**, the same board-register write without
  the closing 0x1f4 word. Operand 0 goes to 0x1f7 (0x39e4) and operand 1 with the 0x1f6 store (0x39e5), then a 0x1f5
  store that names no source (0x39e6) ends the command.
- `mgesi_IMPtbusRegWrite` (`raster.S` lines 242-266, at 0x39e7): **inferred**, a board-register write bracketed by
  writes of `TFP_AMASK` (0x1408). It first writes the clear pattern to 0x1408 directly (0x1f7 at 0x39eb, 0x1f5 at
  0x39ec), then sends operand 0 to 0x1f7 and operand 1 to 0x1f6 (0x39ee, 0x39f1). Last it sends a shadowed write whose
  mask is the clear pattern to address word 0x01681408 (0x39f7-0x39fb), so the raster chip gets 0 while the shadow
  keeps its value (**inferred** from the mask reading in [docs/rm.md](../docs/rm.md#the-shadow-bit-mask)).
- `mgesi_BshRegisterWrite` (`raster.S` lines 450-469, at 0x3991): **established**, the engine half of the firmware's
  four-store raster write. It takes three operands, mask, address word and value, and sends them as one shadowed
  write: 0x00070000 and operand 0 (0x3998, 0x3999), then operand 1 to 0x1f8 and operand 2 to 0x1f5 (0x399b, 0x399c),
  and the closing word (0x399d).
- `mgesi_BshRegisterWriteN` (`raster.S` lines 485-558, at 0x3972): **inferred**, the list form of the shadowed write.
  Address register 0x13 is loaded from operand 0 and stepped through the command (0x3975, 0x397b-0x397e), and register
  0x12 counts the loop (0x397d, 0x3981). The loop at 0x3980-0x3983 sends 0x00070000 and the word at register 0x13, and
  each pass then sends the next two words to 0x1f8 and 0x1f5 (0x3984, 0x3985), so the input is a list of (mask,
  address, value) triples. The thread-B words at 0x3986-0x398a send the triple at offsets 9-0xb from register 0x13 the
  same way. It ends with the inverted clear pattern on 0x1f5 under E = 3 (0x398c, 0x398e) and the closing word.
  `arm_bind_2d_clipmap_texture` uses it for five clipmap registers ([GE.h](../GE.h)).
- `mgesi_IMPbshRegisterWrite` (`raster.S` lines 574-596, at 0x395e): **inferred**, the shadowed write that the GL
  state handlers use for `IMP_` registers ([docs/rm.md](../docs/rm.md#how-the-arm-firmware-writes-raster-registers)).
  It brackets the write as `mgesi_IMPtbusRegWrite` does. First `TFP_AMASK` (0x1408) gets the clear pattern directly
  (0x3960-0x3964), then the operand triple goes out as mask, address and value (0x3969-0x396c). Last comes a zero-mask
  shadowed write to address word 0x01681408 (0x396d-0x3970).
- `mgesi_TBUS_1` (`raster.S` lines 394-408, at 0x39ab): **inferred**, plays one raw bus word from `irsaudit`'s
  `fcTbusWrite` (token 0xe2). Its operands are a mode code, the low half and the high half. Operand 0, the mode code,
  goes into address register 0x13 (0x39ac). Operand 2, the high half, goes to 0x1f8 (0x39b3), and operand 1, the low
  half, to 0x1f5 in a store that names register 0x13 (C = 0x13, `r176` = 2, E = 0x3f, 0x39b6). So the mode reaches the
  bus with the low-half store rather than as a separate word.
- `mges_TBUS_1` (`raster.S` lines 423-434, at 0x399e): **inferred**, the same raw bus word without the closing word:
  mode into register 0x13 (0x39a1), high half to 0x1f8 (0x39a8), low half to 0x1f5 through the register-0x13 store
  (0x39a9-0x39aa).
- `mgesi_AlphaTest` (`raster.S` lines 352-377, at 0x39b8): **inferred**, `glEnable`/`glDisable` of the alpha test. It
  takes the enable flag as operand 0, shifts it left (unit-1 0x5f, 0x39c1), and writes the result to `TFP_AFUNC`
  (address word 0x015b1407) through the shadow with mask 0x8000 (0x39bd, 0x39c2-0x39c6). The output is bit 15 of
  `TFP_AFUNC`, the enable bit of [RM.h](../RM.h), set or cleared.
- `mgesi_AlphaFunc` (`raster.S` lines 307-337, at 0x39c8): **inferred**, `glAlphaFunc`. Its inputs are the function and
  the reference value. It writes `TFP_AFUNC` (address word 0x15b1407, staged at 0x39c9) through the shadow with mask
  0x7fff (0x39cb), which covers the twelve-bit reference and the three-bit function, sending the words to bus addresses
  0x1f8 and 0x1f5 (0x39d1-0x39d3). It multiplies the reference, operand 1 read at 0x39d4, by engine word 0xc5 (loaded
  into register 0x1c at 0x39ca) in the unit-2 word at 0x39d5, whose `r95` = 0x20 store sends the product as the field
  value. Word 0xc5 is the colour scale `mgeb_RGBA_Mode` sets to just under 4096.0, so a reference of 1.0 produces the
  field's top value 0xfff.
- `mgebi_ShadeModel` (`raster.S` lines 167-197, at 0x3a0a): **inferred**, `glShadeModel` (operand 0,
  0x1d00 flat or 0x1d01 smooth, [GE.h](../GE.h)). It tests the operand with an AND that sets the flags (0x3a12) and,
  under that predicate (`r198` = 0x11), writes `PG_GENERAL` (address word 0x01270800) through the shadow with mask 1,
  its flat-shading bit (0x3a0e, 0x3a10-0x3a17). It also updates engine word 3 with an OR or the code-0x51 combine,
  storing on either side of the test (0x3a18-0x3a24). The output is the pixel generator's shading mode and a mode bit
  the drawing modules read.
- `mgesi_FlushRM` (`raster.S` lines 1149-1224, at 0x380b): **inferred**, drains the raster chips. It writes the three
  no-op registers in turn: `IMP_NOP` (0x1c3a, 0x3810-0x3812), `TFP_NOP` (0x1411, 0x3824-0x3826) and `PG_NOP` (0x87f,
  0x3837-0x3839). After each it runs a counted wait, loading register 0xf with 8, 0xb0 and 0x56 (0x380e, 0x3823,
  0x3836) and counting it down (0x3814-0x3816, 0x3827-0x3829, 0x383a-0x383c), and then stores the inverted clear
  pattern with E = 3 on both threads (0x381f-0x3820 and the two later copies). Its effect is a pause long enough for
  each stage to empty, with no register state changed.
- `mgebi_ErrQuery` (`raster.S` lines 1041-1065, at 0x387d): **inferred**, returns a status word to the host. It reads
  a word with an `r95` = 0x17 word on address register 0x16 (F = 0x1b, 0x387d), which an `r95` = 8 word writes back at
  the end (0x3890), and stages board register 0x476 (0x3883), the reply port of the firmware's read-back paths
  ([docs/rm.md](../docs/rm.md#host-interface-registers-on-the-raster-bus)). It sends the register number to 0x1f7 and
  a value to 0x1f5 under a predicate (0x3885-0x3888).
- `mgesi_Accum` (`raster.S` lines 901-951, at 0x38c0): **inferred**, `glAccum` for the 16-bit accumulation buffer. Its
  inputs are the operation (operand 0, 0x100-0x104) and the float value (operand 1). It compares the operation with
  0x102, `GL_RETURN` (staged 0x38c2, integer compare at 0x38c3), and processes the value with unit-1 code 0x6e and a
  flag-setting subtract (0x38c4, 0x38c8). It stages the scales 1024.0 and 4096.0 (0x38ce, 0x38d0) and selects between
  them under predicates (0x38d4-0x38d6). The output is a write of `IMP_ACCUM` (0x1c0e) on the bus (0x38d9) after
  `TFP_AMASK` (0x1408) is cleared (0x38d7-0x38d8), followed by format words built by an OR and a multiply-and-convert
  store (0x38de, 0x38df) and a zero-mask shadowed write of 0x01681408 (0x38e0-0x38e3). [RM.h](../RM.h) gives
  `IMP_ACCUM` a 13-bit value field, which is where the scaled value is inferred to go.
- `mgesi_Accum32` (`raster.S` lines 970-1027, at 0x3894): **inferred**, the 32-bit accumulation-buffer form that
  `arm_accum` picks when the buffer depth is 0x20. Inputs, comparison with `GL_RETURN` and output register are those
  of `mgesi_Accum`. The format words differ: 0x2060d00 and 0xd0000 (0x38b0, 0x38af) where `mgesi_Accum` stages
  0x2040d00 and 0x400d0000. It also stages 0x40031303, 0x38 and 0x30 (0x38a1, 0x38a5, 0x38a6), which `mgesi_Accum`
  lacks, keeps the scales 1024.0 and 4096.0 (0x38a7, 0x38a2) and predicates more of its moves on the comparison
  (0x38a8-0x38ab). It sends `TFP_AMASK` and `IMP_ACCUM` as `mgesi_Accum` does (0x38ac, 0x38ae-0x38b4) and ends with
  the same zero-mask shadowed write (0x38bb-0x38be).
- `mgesi_UserColor` (`raster.S` lines 840-882, at 0x38e5): **inferred**, `glBlendColorEXT`. It takes four floats, red,
  green, blue and alpha (operands 0-3), and multiplies each by engine word 0xc5, read by immediate in the same word,
  into registers 0x19-0x1c (0x38ea-0x38ed). It then sends two shadowed writes with mask 0xffffff (staged 0x38ee), to
  address words 0x013d1c14 and 0x013e1c15 (staged 0x38f0, 0x38f6; sent to bus address 0x1f8 at 0x38f2 and 0x38f8). The
  format words 0xc0000 and 0x400c0c00 (0x38f3, 0x38f5) go out with the four scaled values, which are its results
  (register moves 0x38f4, 0x38f7, 0x38fa and 0x38fb). With the 4096 scale each component becomes a twelve-bit field, two
  per 24-bit value. kpm names those two indexes `IMP_WMASK_BIT` ([RM.h](../RM.h)), so the blend colour shares slots with
  that name.
- `mgeb_CI_Mode` (`raster.S` lines 754-818, at 0x38fd): **inferred**, switches the context to colour-index mode. Its
  input is the index width (operand 0) and a second operand. From operand 0 it builds an integer with a
  float-to-integer conversion of 16.0 (unit-1 0x71, 0x38ff), a left shift of 1 (0x5f, 0x3901), the integer multiply
  0x0f (0x3905) and an integer subtract (0x3909), inferred to be the index range. It converts operand 1 to float
  (0x73, 0x3911) and stores results to engine words 0xc5, 0xa41 and 0xa42 (0x3913, 0x3922, 0x3912, 0x390c), 0xc5 being
  the colour scale the other paths multiply by. It also ORs 0x800 into engine word 3 (0x390d, stored at 0x3916) and
  0x10 into word 0x84 (0x390e, 0x3917) and sets the lighting successor words 0xb, 0xc and 0xa1 to
  `mmo_DirtyCullAndLightModule` (0xf547), `mmo_DirtyLightModule` (0xf50d) and `mLiIndexFinalLi` (0xd5a6) (staged
  0x390a, 0x390b, 0x390f; stores 0x3913-0x3921). The output is colour-index lighting on the vertex path. The
  store-to-value pairing uses the nine-word rule of [How the vertex path is
  chained](#how-the-vertex-path-is-chained-successor-words).
- `mgeb_RGBA_Mode` (`raster.S` lines 682-737, at 0x3923): **inferred**, the RGBA counterpart. It undoes
  `mgeb_CI_Mode`'s flags: code 0x51 takes 0x800 out of engine word 3 (0x392f) and 0x10 out of word 0x84 (0x3925,
  stored at 0x392e). It sets the colour scale word 0xc5 to 0x457ffff8, 4095.9998, so that a colour of 1.0 converts to
  0xfff (0x3933, 0x393d). It points successor words 0xb and 0xc at `mmo_DirtyCullAndLightModule` and
  `mmo_DirtyLightModule` and word 0xa1 at `mLiFinalLi` (0xda3c). Under the predicate set by ANDing word 0x84 with 8
  (0x3930) it stores `mLiClrMtrlFinalLi` (0xd831) there instead (0x393c).
- `mgeb_Enable_Normalize` (`raster.S` lines 612-632, at 0x394e): **inferred**, `glEnable(GL_NORMALIZE)`. It reads
  engine word 3 (0x3950), ORs in 1 (0x3953) and stores the result back (0x395c). It also writes
  `mmo_DirtyXformAndObjToClipModule` (0xf449) to successor word 8 (0x3954, 0x395d), so the next vertex batch
  re-selects its transform with normalisation on.
- `mgeb_Disable_Normalize` (`raster.S` lines 645-665, at 0x393e): **inferred**, the opposite switch. Engine word 3 is
  combined with 1 by code 0x51 (0x3943), which turns bit 0 off if 0x51 is AND-NOT as its other uses suggest. Successor
  word 8 again gets `mmo_DirtyXformAndObjToClipModule` (0x3944, 0x394d).
- `mgeb_ClipmapXform` (`raster.S` lines 1238-1267, at 0x37f9): **inferred**, loads the clipmap texture transform that
  `arm_bind_2d_clipmap_texture` sends after its five clipmap register writes. It stores the three input words to
  engine words 0x75-0x77 (0x3804-0x3807) and ORs 0x2000000, bit 25, into engine word 3 (0x37fe-0x37ff, store 0x3808),
  with a code-0x51 combine stored under a predicate as the alternative (0x3800, 0x3809). It sets successor word 0xd,
  the texture-coordinate transform, to `mmo_DirtyTextureAndScreenModule` (0xf494) (0x37fd, 0x380a), as the
  texture-matrix handlers do ([Matrix operations per matrix](#matrix-operations-per-matrix-matrixfuncs)).
- `mgeb_SetCurrentRaster` (`raster.S` lines 1086-1132, at 0x384b): **inferred**, loads the context's raster position,
  the fifteen floats `arm_set_current_raster` forwards ([GE.h](../GE.h)). It multiplies operand 4 by 16.0
  (0x384e-0x384f). It tests bit 11 (0x800) of engine word 3, the colour-index flag `mgeb_CI_Mode` sets, with a
  flag-setting AND (0x3851), moves a different value into register 0x1c under that predicate (0x3853), and subtracts
  operand 0xe from a register (0x3854). It copies operands 1-3 and 5-0xd into engine words 0x23 and 0x28-0x34 (moves
  0x3855-0x386c, stores 0x385e-0x3879). The result is the raster-position block that `glRasterPos` and the bitmap
  handlers read.
- `mgebi_NullCommand` (`raster.S` lines 117-131, at 0x3a32): **inferred**, a command that does nothing but keep the
  raster side in step. It loads register 0x13 from the third input word (0x3a35) and sends 0x00070000 to 0x1f8
  (0x3a37). Under a predicate set by testing register 0x13 (0x3a41) it then sends the clear pattern to 0x1f5 and the
  closing word (0x3a38-0x3a3b). The first pair is a write to shadow index 7, the bit mask, which changes no raster
  register.
- `mges_NullCommand` (`raster.S` lines 96-103, at 0x3a45): **inferred**, the silent no-op: it consumes its three input
  words (0x3a45-0x3a47), waits for the next command (0x3a49) and sends nothing to the raster bus.
- `mges_DiagDeactivate` (`raster.S` lines 144-151, at 0x3a25): **inferred**, the same three-word consume-and-wait
  shape as `mges_NullCommand` (0x3a25-0x3a29), sent when a diagnostic context is deactivated. It changes no engine or
  raster state.
- `mgesi_PassThrough` (`raster.S` lines 39-73, at 0x3a5b): **inferred**, writes one host word to the board registers
  that the firmware's read-back paths use. It stages board registers 0x452, 0x476 and 0x477, the count 8 and 0x700
  (0x3a5c-0x3a62). Then it writes register number to 0x1f7 and value to 0x1f5: 0x452 gets 8 (0x3a64-0x3a65); 0x476
  gets 0x700 converted from integer to float (0x3a66-0x3a67) and then operand 0 (0x3a69); 0x477 gets the clear pattern
  (0x3a6a-0x3a6b). The closing word follows (0x3a6c).

## GL mode handlers and the dirty modules (glmodes.S)

The handlers of `glmodes.S` change no vertex data. They rewrite mode words in engine memory and the successor words of [How the vertex path is chained](#how-the-vertex-path-is-chained-successor-words), so that the next vertex batch first runs a "dirty" module, which picks the real module for the new state. Read in full from the [glmodes.S listing](ge_listing/glmodes.S.lst) (`ge.u`, IRIX 6.5.30m). Which value a `r95` = 4 store writes follows the nine-word pairing of that section, so each such reading is **inferred**. The set and clear patterns are the stores of registers 0x1d and 0x1e (`r148` = 0x3a0 and 0x3c0) described there.

- `mgeb_PointParameter` (`glmodes.S` lines 1524-1618, at 0xf21b): **inferred**, `glPointParameterfEXT`. Its input is
  operand 0, the parameter name, and the values in operands 1-3. It compares the name with 0x8126-0x8129 (staged
  0xf21c-0xf21f, flag-setting integer subtracts 0xf220-0xf223) and branches on the equal flag to one case per name
  (0xf22c-0xf22f). For the minimum size (0x8126), the maximum size (0x8127) and the fade threshold (0x8128) it
  multiplies operand 1 by 0.5 (0x3f000000, staged at 0xf233; multiplies 0xf242, 0xf24e, 0xf25a) and the product is its
  result, stored nine words on to ERAM word 0x241, 0x242 or 0x243 (0xf24b, 0xf257, 0xf263): a diameter becomes a radius.
  For the distance attenuation (0x8129) it copies operands 1-3 to words 0x23e-0x240 (0xf265-0xf27a), subtracts 1.0
  (register 0x1f) from the first with the flags enabled (0xf26f) and tests the other two with unit-1 code 0x6a (0xf270,
  0xf271). From those flags it sets or clears bit 2 of engine word 4 (OR with 4 at 0xf272, predicated stores 0xf27b and
  0xf27e) and points successor word 8 at `mmo_DirtyXformAndObjToClipModule` (staged 0xf273, stored 0xf27f). So the
  default (1, 0, 0) turns attenuation off.
- `mgeb_Enable_Multipass` (`glmodes.S` lines 1403-1431, at 0xf293): **inferred**, turns on the multipass pre-path. It
  ORs 8 into engine words 0xdf and 0x19 (0xf299-0xf29a, stores 0xf2a2-0xf2a3) and stores the set pattern to special
  registers 0x27 and 0x2a (0xf297-0xf298). It points successor words 0xda and 0xdb at `mmo_DirtyPrePathModule`
  (0xf294, 0xf2a4-0xf2a5).
- `mgeb_Disable_Multipass` (`glmodes.S` lines 1445-1472, at 0xf280): **inferred**, the reverse. It ANDs 0xfffffff7
  into words 0xdf and 0x19 (0xf282-0xf287, stores 0xf28f-0xf290) and clears special register 0x27 only under the flag
  of the 0xdf AND (0xf283, 0xf285), so the pre-path flag drops only when no other pre-path feature is left in word
  0xdf. It resets words 0xda and 0xdb to `mmo_DirtyPrePathModule` (0xf291-0xf292).
- `mgeb_EnableSprite` (`glmodes.S` lines 1318-1347, at 0xf2b9): **inferred**, turns on sprites. 0x10 goes into word
  0xdf (0xf2bb-0xf2bc) and 4 into word 0x19 (0xf2ba, 0xf2bf), both stored at 0xf2c7-0xf2c9. Special registers 0x2a and
  0x27 get the set pattern (0xf2bd-0xf2be), and the pre-path successor words 0xda and 0xdb get
  `mmo_DirtyPrePathModule` (0xf2c0, 0xf2ca-0xf2cb).
- `mgeb_DisableSprite` (`glmodes.S` lines 1362-1389, at 0xf2a6): **inferred**, the reverse. It takes 0x10 out of word
  0xdf with the mask 0xffffffef and 4 out of word 0x19 with 0xfffffffb (0xf2a8-0xf2ac). The pre-path flag in special
  register 0x27 is cleared under the same last-feature predicate as `mgeb_Disable_Multipass` (0xf2ab), and words 0xda
  and 0xdb are reset (0xf2ad, 0xf2b7-0xf2b8).
- `mgeb_Sprite` (`glmodes.S` lines 1263-1304, at 0xf2cc): **inferred**, the sprite parameters. It compares operand 0
  with the codes 4, 0 and 0x10 (0xf2cd-0xf2d2) and branches on equality (0xf2dc-0xf2de). Code 0x10 stores operand 1 at
  offset 0x94a from address register 0x16 (0xf2e7, 0xf2f0). Code 0 copies operands 1-4 to offsets 0x93a-0x93d
  (0xf2f4-0xf303), and code 4 copies them to offsets 0x93e-0x941 (0xf307-0xf316).
- `mgeb_SetLMCFlag` (`glmodes.S` lines 687-704, at 0xf32f): **inferred**, sets the lighting colour-material flag. It
  stores a unit-1 0x6c result of register selector 0x3e0 to special register 0x20, flag bit 0, which `cc` 0x60 tests
  (0xf330). It converts the same register with 0x71 and stores the result to engine word 0xc1 (0xf334, 0xf33d).
- `mgeb_ClearLMCFlag` (`glmodes.S` lines 714-732, at 0xf320): **inferred**, clears that flag. The clear pattern goes
  to special register 0x20 (0xf321) and to engine word 0xc1 (0xf325, 0xf32e).
- `mgeb_Enable_Cull_Face` (`glmodes.S` lines 594-629, at 0xf352): **inferred**, `glEnable(GL_CULL_FACE)`. It sets
  special register 0x26 (0xf356) and ORs 0x40000000 into engine word 6 (0xf357-0xf358, store 0xf362). It points
  successor word 0xb at `mmo_DirtyCullAndLightModule` (0xf355, 0xf35a, store 0xf363), and recomputes bit 30 of word 3
  from the culled-face word: AND-NOT at 0xf35b, OR under the flag of 0xf359 at 0xf35c, stores at 0xf364-0xf365.
- `mgeb_Disable_Cull_Face` (`glmodes.S` lines 643-677, at 0xf33e): **inferred**, the reverse. Word 6 loses 0x40000000
  (0xf33f-0xf340, store 0xf34f) and word 3 loses bit 30 (0xf345, 0xf348, store 0xf351). Special register 0x26 is
  cleared and then set again under a flag taken from engine word 0x1b (0xf341-0xf344). Successor word 0xb gets
  `mmo_DirtyCullAndLightModule` (0xf346-0xf347, 0xf350).
- `mgeb_CullFace` (`glmodes.S` lines 546-581, at 0xf366): **inferred**, `glCullFace`. It compares operand 0 with
  0x405, `GL_BACK` (0xf369-0xf36a), and stores the selected pattern to engine word 0x70, the sign word `udrawtri.s`
  XORs into its cull test ([Triangle output](#triangle-output-udrawtris)) (0xf372, 0xf375). It also stores to offset
  0x14 from register 0x16 (0xf373, 0xf376). Bit 30 of word 3 is set only when culling is enabled: word 6 is ANDed with
  0x40000000 and tested at 0xf370, then stored under that flag at 0xf37b.
- `mgeb_FrontFace` (`glmodes.S` lines 291-311, at 0xf3db): **inferred**, `glFrontFace`. It compares operand 0 with
  0x900, `GL_CW` (0xf3dd-0xf3de), and stores the set or the clear pattern to engine word 0x6f, under the comparison's
  predicate for the second store (0xf3df-0xf3e9).
- `mgeb_UserClipPlane` (`glmodes.S` lines 329-373, at 0xf3a4): **inferred**, `glClipPlane`. If the inverse modelview is
  stale (`cc` 0x76) it calls `mMatrixInverse` first (0xf3a4). Its inputs are operand 0, the GL plane enumerant, and the
  four plane coefficients in operands 1-4. It computes the plane's slot from the enumerant: it subtracts 0x3000
  (`GL_CLIP_PLANE0`, immediate 0xffffd000 at 0xf3b5), doubles the result twice (0xf3b9, 0xf3bd, `r176` = 2), adds 0x90a
  (0xf3c1) and then the external-memory base in register 0x16 (0xf3c5), so plane i sits at 0x90a + 4i. It multiplies
  coefficient k by the four inverse-modelview words 0x1f + 4(k - 1) to 0x22 + 4(k - 1) (single multiplies M = 0x47f at
  0xf3ae-0xf3b4, multiply-adds M = 0x460 at 0xf3b6-0xf3c2, final float adds at 0xf3bf, 0xf3c4 and 0xf3c6), which gives
  the plane in eye coordinates. The four sums are its result: ERAM stores (`r95` = 8) at 0xf3c9, 0xf3cb, 0xf3cd and
  0xf3cf, nine words after the words that load them, write them to slot offsets 0-3, and the operands themselves, moved
  at 0xf3c8-0xf3ce, go to offsets 0x18-0x1b (stores 0xf3d1-0xf3d7, F = 7 down to 4). It then jumps to `mUserClipResolve`
  (0xf3d2).
- `mgeb_EnableUserClipPlane` (`glmodes.S` lines 386-400, at 0xf390): **inferred**, `glEnable(GL_CLIP_PLANEi)`. It
  forms the plane's flag address from operand 0 with the offsets 0xffffd000 and 0x904 (0xf390, 0xf398, 0xf39c) and
  stores the set pattern there through register 0x16 (0xf397, 0xf3a0). Then it goes to `mUserClipResolve` (0xf39b).
- `mgeb_DisableUserClipPlane` (`glmodes.S` lines 413-427, at 0xf37c): **inferred**, the same address arithmetic
  (0xf37c-0xf388) with the clear pattern stored in the plane's flag (0xf383, 0xf38c), followed by `mUserClipResolve`
  (0xf387).
- `mUserClipResolve` (`glmodes.S` lines 441-534, at 0xf583): **inferred**, rebuilds the user clip state after any
  plane change. Its input is the six plane slots from 0x904 and 0x90a. Its loop (0xf590-0xf5a8) copies the eye-space
  coefficients of every enabled plane into a packed list from engine word 0xa3 (registers 0x11-0x13), and a second
  loop does the same at 0xf5c0-0xf5cd. The count of enabled planes goes to word 0xa2 (0xf5be). It compares the count
  with 6 and with 2 (0xf5ab, 0xf5e4) and from those tests stores the clip-code mask word 1 as 0x3f, 0xff or 0xfff
  (staged 0xf585-0xf587, stores 0xf5e3, 0xf5f1-0xf5f2): six frustum bits plus room for two or for six user planes. It
  also updates bits in words 3 and 4 (0xf5d8-0xf5f0) and sets successor word 8 to `mmo_DirtyXformAndObjToClipModule`
  (0xf583, 0xf5fc), which can then pick the two-plane or six-plane transform.
- `mgeb_DepthRange` (`glmodes.S` lines 226-279, at 0xf3ea): **inferred**, `glDepthRange`. It takes near and far
  (operands 0 and 1) and clamps each to [0, 1] with the maximum and minimum codes 0x68 and 0x66 (0xf3ea-0xf3ef). It
  forms their difference and sum (0xf3f3-0xf3f5) and multiplies by the staged 2^20 and 2^19 (0x49800000, 0x49000000,
  0xf3f1-0xf3f2; multiplies 0xf3f6-0xf3f9), which gives the window-z scale and offset. Four results go to engine words
  0xc6, 0x82, 0xc7 and 0xc8 (0xf3ff-0xf402), 0x82 being the z scale of the viewport transform and 0xc7-0xc8 the depth words the fog code reads. When fog is on
  (`cc` 0x64) it continues in `mResolveFogTable` (0xf3fa), so the fog table follows the new range.
- `mgeb_ViewPort` (`glmodes.S` lines 101-211, at 0xf404): **inferred**, `glViewport` with the window offsets. It
  converts operands 0-3 (x, y, width, height) from integer to float (0x73, 0xf404-0xf410) and keeps the integers at
  offsets 0x248-0x24b from register 0x16 (0xf40d-0xf413). With the staged 0.5 (0xf412) it multiplies to get the half
  extents (0xf414-0xf416). It takes reciprocals with the seed and a Newton-Raphson step (`r110` = 0x6bf at 0xf415,
  0x4ff at 0xf417), converts operands 5-0xa (0xf418-0xf421) and stages 49152.0 (0xf423). The scale and centre results
  go to engine words 0x7e, 0x7f, 0x80, 0x81 and 0x71-0x74 (0xf41d, 0xf427, 0xf42f-0xf434), the x and y scale and offset pairs and the guard-band factors that `uscreen2.s` reads ([Perspective divide and viewport](#perspective-divide-and-viewport-uscreen2s)).
- `mgesi_SetGeId` (`glmodes.S` lines 47-79, at 0xf435): **inferred**, gives an engine its identity at start-up
  (`init_ge`, [docs/ge.md](../docs/ge.md)). It stores the engine number (operand 0) to engine word 0x1389 (0xf438,
  0xf441) and tests its low four bits with an AND against 0xf that sets the flags (0xf436-0xf437). Under that
  predicate it stores one of two staged values to word 0x138a (0xf443, 0xf445), the staged constants being 1000000.0
  and 16.0 (0xf439, 0xf43b).
- `mmo_DirtyXformAndObjToClipModule` (`glmodes.S` lines 1032-1118, at 0xf449): **inferred**, the transform selector
  that runs as successor word 8 after a mode change. It tests engine word 3 against 2 and 1 and words 4 and 5
  (flag-setting ANDs and moves at 0xf44c-0xf45f). From those tests it picks one of six transform modules:
  `mmo_ObjToClipSpace` (0x1218), `mmo_ObjToClipSpaceN2E` (0x124c), `mmo_ObjToClipSpaceN2EN` (0x1293),
  `mmo_ObjToEyeSpace` (0x12fe), `mmo_ObjToEyeSpaceAndTwoUserTR` (0x1325) or `mmo_ObjToEyeSpaceAndSixUserTR` (0x135c)
  (staged 0xf44a-0xf459). It stores the choice in word 8 under predicates (0xf46a-0xf46b) and writes 4 to word 9
  (0xf46c-0xf46d). On `cc` 0x6f it also resets the pre-path words 0xda and 0xdb (0xf479-0xf484). It then reloads word
  8 as its successor (0xf485), so the batch continues in the module it chose.
- `mmo_DirtyTextureAndScreenModule` (`glmodes.S` lines 1136-1250, at 0xf494): **inferred**, the screen-stage selector,
  successor word 0xd. Its input is the texture matrix in engine words 0x5f-0x6e. It ORs the off-diagonal words
  together (0xf49c-0xf4a5), compares the diagonal words 0x5f, 0x64, 0x69 and 0x6e with register 0x1f (0xf4a8-0xf4ad)
  and records each result under a predicate (0xf4a2-0xf4b3), which tests whether the matrix is the identity. With bits
  of words 3 and 7 (0xf4b0-0xf4bd) and an integer multiply (0xf4be) it chooses among `mmo_ToScreenSpace` (0x10c9),
  `mmo_ToScreenSpaceInvQ` (0x1113) and `mmo_ToScreenSpaceInvQ2DI` (0x11b6) (staged 0xf4b4-0xf4b8). The choice goes to
  words 0xe and 0xd (0xf4d3-0xf4d4), and the module continues through word 0xd (0xf4d5).
- `mmo_DirtyPrePathModule` (`glmodes.S` lines 1637-1675, at 0xf4e4): **inferred**, builds the pre-path chain from the
  feature bits in engine word 0xdf: 4 for deformation, 8 for multipass, 0x10 for sprites (flag-setting ANDs at 0xf4e6,
  0xf4ea, 0xf4ee). For each bit set it stores the dirty module of that feature, `mmo_DirtyDeformModule` (0x48d8),
  `mmo_DirtyMultipassModule` (0xe6a5) or `mmo_DirtySpriteModule` (0x8669), into the next chain word through register
  0xf, which starts at word 0xda and steps under the same predicates (0xf4eb-0xf4fd). It then continues through word
  0xdb (0xf4fe, 0xf503).
- `mmo_DirtyLightModule` (`glmodes.S` lines 899-1013, at 0xf50d): **inferred**, the lighting selector, successor word
  0xc. Its inputs are bit 4 of engine word 3, word 0x7e and word 0x84 (flag-setting ANDs at 0xf50e-0xf517 and 0xf51e).
  It picks `mmo_LighterGeneral` (0xd85e), `mmo_LighterSimple` (0xd7c), `mmo_LiColorClamp` (0xd69) or `mmo_LiColorMask`
  (0xd87e) (staged 0xf512-0xf518), converts two counts to float (0xf528-0xf529) and stores to special registers 0x2e
  and 0x2f (0xf51c, 0xf52c). It writes the choice to word 0xc (0xf534) and branches on `cc` 0x7c, 0x7f or always to
  `mLiUpdateShin`, `mLiDirtySimLiCRAM` or `mLiDirtyGenLiCRAM` (0xf53c-0xf53e), which reload the light tables.
- `mmo_DirtyCullAndLightModule` (`glmodes.S` lines 754-869, at 0xf547): **inferred**, the same lighting choice as
  `mmo_DirtyLightModule` (staged 0xf54c-0xf552, branches 0xf578-0xf57a), extended with the cull step. When culling is
  enabled, tested on engine word 6 at 0xf562, it stores `mmo_FaceCull` (0xc76, staged 0xf561) to successor word 0xb
  (0xf56d, 0xf570) in place of the lighting module. It also writes word 0x9d (0xf56f, 0xf57b).

## Fast Fourier transform stages (fft.S)

The FFT pixel path (path 9, built by `SetupGE_FFT` in [arm1_functions.md](arm1_functions.md)) runs these modules on
complex samples stored as (real, imaginary) word pairs in the input record at address register 0x10. Read from the
[fft.S listing](ge_listing/fft.S.lst) and the kona-ge decompile (`ge.u`, IRIX 6.5.30m), with the ARM side read from
`arm1.u`.

**Established** (`SetupGE_FFT`, `arm1.u` 0x0c02cf70-0x0c02d2d8, and `InitFFTGlobal`). The ARM picks the transform by
width: 2, 4, 8, 0x10, 0x20, 0x40, 0x80 and 0x100 load `gepc` offsets 0x6e0-0x6fc, slots 440-447, which hold
`mmo_FFT_2` up to `mmo_FFT_256`; any other width prints the unsupported-width message. The chain it writes to control
memory 0x129 is an optional `mmo_Transpose` (slot 450, when context word +0x560 is set), the transform, then
`mmo_Complex_Out` (slot 448) or `mmo_Complex_Sort_Out` (slot 449) by context word +0x55c, then one of the two
stream-advance modules (slots 303 and 304). Before it the ARM writes 0x1a0 to port 0x478, then half the width and
0x75a3 + width to the data port 0x840, and starts `mgeb_LoadCram` (slot 41, the low half of packed word r8 + 0x98);
0x75a3 + width is the engine-memory address of that width's sort table (`FFT_Sort_2` at 0x75a5 up to `FFT_Sort_256` at
0x76a3). With the transpose it uses port 0x474 and adds a third word per engine from the float table at 0x0404cee0
(6.0, 0.0, 2.0, 4.0). **Inferred:** those words land in CRAM 0x1a0, 0x1a1 and 0x1a2, the words the output and
transpose stages read. The twiddle table `FFT_Factors` sits at ERAM 0x73a5:
entry t is cos(2 pi t / 256) at 0x73a5 + 2t and -sin(2 pi t / 256) one word above, so W^t = exp(-2 pi i t / 256) and the
transform is the forward one.

**Inferred** (the pass plan). Every size from 8 up is a decimation-in-frequency transform: a radix-2 first pass for 8,
32 and 128 (sizes 2 x 4^m), then radix-4 passes, the last with no multiplies, which leaves the samples in digit-reversed
order. The sort tables match that order exactly: `FFT_Sort_8` reads positions 0, 4, 1, 5, 2, 6, 3, 7 (the even outputs
sit in the first half after the radix-2 split), `FFT_Sort_16` reads 0, 4, 8, 0xc, 1, ... (base-4 digit reversal), and
`FFT_Sort_4` is the identity, as one radix-4 pass needs. In each twiddled pass lane j (0-2) takes butterfly j + 1 of
three: the immediates give lane 0, 1 and 2 the twiddle pointers t, 2t and 3t for t = 1, 2 and 3 times the pass's stride,
and the pointer steps are three butterflies' worth. A loop whose counter is loaded with c runs c + 1 times: every count
below closes only that way (for example 21 passes of three lanes plus one twiddle-free butterfly give the 64 butterflies
of the 128-point radix-2 pass).

- `mmo_FFT_2` (`fft.S` lines 758-766, at 0x37cb): **inferred**, the two-point butterfly. It loads record words 0-3, two
  complex samples a and b. Float adds from 0x37d1 store the sums of the real and imaginary parts over a, and float
  subtracts from 0x37d2 store the differences over b: a + b replaces a and a - b replaces b, in place. It reads its successor through address register 0x13 (0x37cf), steps that register in the delay
  slot (0x37da) and ends with the group-31 transfer at 0x37d5.
- `mmo_FFT_4` (`fft.S` lines 804-812, at 0x37aa): **inferred**, the four-point transform done in one pass. It loads
  record words 0-7, four complex samples, and computes eight results with 16 float adds and subtracts only
  (0x37b2-0x37c1), which is what a radix-4 butterfly needs, since its twiddle factors 1, -1, i and -i only swap and
  negate parts. The eight results go back over words 0-7 in place (the stores at 0x37ba-0x37c1), with no multiply and no
  table read; its sort table is the identity. It reads and steps its successor pointer like the two-point stage
  (0x37bc, 0x37c7).
- `mgeb_PixDrawColorSetup_FFT` (`fft.S` line 2191, at 0x3000): **inferred**, the command that opens an FFT pixel transfer.
  It takes CRAM word 0x1ec (read at 0x3000) and the first two command words as inputs. When the CRAM word is nonzero a
  conditional call (`cc` 3, 0x300c) runs `uEvalSaveState` (0x962) first. It then stores command word 0 and command word 1
  through address register 0x1c at offsets 8 and 9 (0x3018, 0x301d), the COMP_FORMAT and FPU_MODE special registers,
  discards two further input words (0x3013-0x3014), re-bases the per-lane staging register 0x18 on 0x8000 with a 0x11-word
  stride per lane (0x3015-0x3017) and stores the zero register to CRAM words 0x1ed and 0x1ee (0x3024, 0x3025). It ends the
  command at 0x301d. Two special registers are written and the CRAM words listed are cleared; the staging base is set once
  per lane. `SetupGE_FFT` sends it last but one, through slot 451, with the format word from `compFormatTable` in port
  0x478.
- `mmo_Transpose` (`fft.S` line 2050, at 0x3026): **inferred**, a stage of the FFT path that rebuilds the raster-side
  set-up for the next pass and advances one CRAM accumulator. Its inputs are ERAM words 0x31, 0x32, 5, 6 and 0x1389 and
  CRAM words 0x1a0 and 0x1a2 (reads at 0x3026-0x3030, 0x3035, 0x3042). It shifts CRAM 0x1a2 right by 8 and masks it with
  0xff (0x3037, 0x303b), converts the field to float (0x303f), adds ERAM 5, ERAM 6, ERAM 0x1389, CRAM 0x1a2 and the
  staged constant 0x3eff0000 in three lanes (0x3032-0x3047) and writes back 2 x field + sum to CRAM 0x1a2 (0x3050).
  Staging words hold the raster register indices 0x3fcc, 0x3fcd and 0x3fce (0x303d, 0x3031, 0x304d); each goes to bus
  address 0x1f7 (0x303e, 0x3049, 0x304e) ahead of the data words pushed through the output window (0x3041, 0x3046,
  0x304b, 0x304c, 0x304f). The successor comes from address register 0x13 (0x3041, 0x3048).
- `mgesi_PixRasterPosSetup_FFT` (`fft.S` line 1667, at 0x3051): **inferred**, the engine half of the raster-board
  set-up that `SetupRM_FFT` triggers. It takes ERAM words 5, 0x31, 0x32, 0xc04 and 0xc05 as inputs (0x3051-0x3059) and
  converts three of them to float (0x305e-0x3060). It multiplies their sum by the staged 8.0 (0x41000000, 0x3064-0x3066),
  limits the products with fmax and fmin (0x3071-0x3076) and pushes two limited values to the output window. It then
  stages a block of register indices and data words (0x3078-0x30a3, among them 0x806, 0x3fd3, 0x3ff8, 0x12b0806) and
  sends them as 0x1f7 and 0x1f5 pairs (0x307c-0x307e, 0x30ab-0x30b7, 0x30bf-0x30c8) with two shadowed writes through
  0x1f8 whose data comes from float-to-integer conversions (0x30a7, 0x30aa). A return at 0x30cb leaves the handler.
- `mmo_Complex_Sort_Out` (`fft.S` line 1489, at 0x30d4): **inferred**, the output stage that emits the transformed
  samples in natural order through the sort table. Inputs are CRAM words 0x1a0 and 0x1a1 (0x30d5, 0x30d6), which
  `SetupGE_FFT` fills with half the width and the address of the width's `FFT_Sort_*` table; they become the loop count
  and a step in registers 0xf and 0xe (0x30de, 0x30df), and three lanes read the table's byte offsets from ERAM with
  `r95` = 0x14-0x16 (0x30e7-0x30e9, 0x30f8-0x3102). Each pass of the loop 0x30f8-0x3129 derives two sample addresses
  from the table words (0x30f0, 0x3116, 0x311b), reads the real and imaginary words at them (0x311f-0x3122) and
  pushes both to the output window (0x311d-0x3126). It produces two closing window words at 0x3130-0x3131, takes
  the successor from address register 0x13 (0x30f3) and ends at 0x312a.
- `mmo_Complex_Out` (`fft.S` line 1385, at 0x3133): **inferred**, the output stage that emits the transformed samples in
  record order with no sort table, the one `SetupGE_FFT` picks when context word +0x55c is zero. CRAM word 0x1a0, half
  the width (0x3134), gives the count for the loop 0x3148-0x3151; address registers 0xd and 0xe are set
  0x10-word-relative bases at 0x313e-0x3140. Each pass reads four words at offsets 0-3 of both bases (0x3148-0x314b,
  0x3150), two samples, and pushes them to the output window (0x314c-0x314f), stepping both bases by 0x18 (0x3151,
  0x3152). It also sends a 0x1f8 and 0x1f5 prefix (0x3143, 0x3146), reads the successor through register 0x13 (0x3142,
  0x3147) and ends the command at 0x3152.
- `mmo_FFT_256` (`fft.S` line 1219, at 0x315b): **inferred**, the 256-point transform as four radix-4 passes in place on
  the record at register 0x10. The set-up at 0x315c-0x315e points registers 0xa, 0xb and 0xd at offsets 0x200, 0x400
  and 0x600, the quarters of the record (0x200 is sample 64 in the units `mmo_FFT_128` uses for its half). Pass 1
  opens with the twiddle-free butterfly 0x3167-0x317f (8 adds and 8 subtracts, no multiply), which runs once, then the
  loop 0x3180-0x31bd (the transfer at 0x31bd goes back to 0x3180; counter 0x14 at 0x3177, 21 passes of three lanes, so
  63 butterflies and the first makes 64). It takes twiddle entries 1, 2, 3 in lane 0, 2, 4, 6 in lane 1 and 3, 6, 9
  in lane 2 (immediates 0x73a7-0x73b7 at 0x315f-0x317f) and steps them by 6, 0xc and 0x12 words (0x3173-0x3175), so lane
  j multiplies by W^j, W^2j and W^3j; each pass has 11 single multiplies (M = 0x47f), one form-11 word with M = 0x44a
  and 22 adds and subtracts, the same mix as the inner loop of `mmo_FFT_128`'s second pass. Pass 2 is a nested loop,
  outer counter 3 at 0x31c7 (four 64-sample groups) and inner loop 0x31ef-0x322c with counter 4 (15 butterflies in
  steps of three), after a twiddle-free butterfly of 16 adds and subtracts (0x31be-0x31ee); its twiddles are entries 4,
  8, 12 and their multiples (0x73ad-0x73ed), stepped by 0x18, 0x30 and 0x48. Pass 3 (loop 0x326a-0x32b6, counter 0xf,
  16 groups of 16) preloads fixed twiddles at 0x3240-0x3262: entries 16, 32, 48 in lane 0, 32, 64, 96 in lane 1 and 48,
  96, 144 in lane 2, the 16-point factors. Pass 4 (loop 0x32df-0x32f7, counter 0x14, 21 x 3 butterflies, plus the block
  0x32b7-0x32dd) uses 16 adds and subtracts per butterfly and no multiply. It loads its successor at 0x3300 and ends at
  0x3306.
- `mmo_FFT_128` (`fft.S` line 1155, at 0x330f): **inferred**, the 128-point transform as a radix-2 pass and three radix-4
  passes in place on the record at register 0x10. Register 0 holds 0x200 (0x330f), which pairs sample k with sample
  k + 64. The twiddle-free butterfly of samples 0 and 64 runs first (2 adds and 2 subtracts, 0x3317-0x331a); the loop
  0x3322-0x333e (counter 0x14 at 0x3320, 21 passes) does the other 63, lane j starting at twiddle entry 2, 4 or 6
  (0x73a9, 0x73ad, 0x73b1) and stepping 0xc words, which is W_128^k = W^2k. Each lane replaces a with a + b and b with
  (a - b) times the twiddle, a complex product of 4 multiplies (0x3336-0x3339) with one add and one subtract. Pass 2 is
  a nested loop over the two 64-sample halves (outer counter 1 at 0x3348, loop to 0x334c), each half a twiddle-free
  butterfly (0x334c-0x336f, 16 adds and subtracts) and the inner loop 0x3370-0x33ad (counter 4) with offsets 0x100 and
  0x180, twiddle entries 4, 8 and 12 and their multiples (0x73ad-0x73ed) and per butterfly 12 multiplies and 22 adds
  and subtracts, a radix-4 butterfly with three complex products. Pass 3 (loop 0x33eb-0x3437, counter 7, eight groups
  of 16) uses the fixed 16-point twiddles loaded at 0x33c1-0x33e3. Pass 4 is twiddle-free: the loop 0x3446-0x345e
  (counter 9, ten passes of three) and the block 0x346d-0x347e, 16 adds and subtracts each, cover the 32 butterflies.
  The successor is read through register 0x13 at 0x3479 and the command ends at 0x347f.
- `mmo_FFT_64` (`fft.S` line 1090, at 0x3488): **inferred**, the 64-point transform as three radix-4 passes in place on
  the record at register 0x10. Address registers 0xb and 0xd start at offsets 0x100 and 0x180 (0x3489, 0x348a) and
  registers 0xc, 0xe and 0xf point at twiddle entries 4, 8 and 12 (0x73ad, 0x73b5, 0x73bd, 0x348b-0x3492), with lanes 1
  and 2 at the doubled and tripled entries (0x34a5-0x34ab) and steps 0x18, 0x30 and 0x48 (0x349f-0x34a1). Pass 1 is the
  twiddle-free butterfly 0x3488-0x34ab and the loop 0x34ac-0x34e9 (counter 4 at 0x34a3, five passes of three: 15
  butterflies) with 12 multiplies and 22 adds and subtracts each. Pass 2 (loop 0x351c-0x3568, counter 3, four groups of
  16) uses the fixed 16-point twiddles loaded at 0x34f2-0x3514, and pass 3 (block 0x3569-0x3590 and loop 0x3591-0x35a9,
  counter 4) has adds and subtracts only. The successor is loaded at 0x35b2 and the command ends at 0x35b8.
- `mmo_FFT_32` (`fft.S` line 1027, at 0x35c1): **inferred**, the 32-point transform, a radix-2 pass then two radix-4
  passes on the record at register 0x10. The twiddle-free pair comes first (2 adds and 2 subtracts, 0x35c1-0x35d3); the
  radix-2 loop 0x35d4-0x35f0 (counter 4) starts lanes at twiddle entries 8, 16 and 24 (0x73b5, 0x73c5, 0x73d5, which are
  W_32^1-3) with a step of 0x30 words and does one complex product per lane, 4 multiplies, 3 adds and 3 subtracts. The
  next loop (0x3623-0x366f, counter 1, two groups of 16) uses the fixed 16-point twiddles loaded at 0x35f9-0x361b, with 12
  multiplies, and the last loop (0x367e-0x3696, counter 1) plus the block 0x3697-0x36b6 use adds and subtracts only. The
  successor is read at 0x36b1 and the command ends at 0x36b7.
- `mmo_FFT_16` (`fft.S` line 941, at 0x36c0): **inferred**, the 16-point transform written without loops: two radix-4
  passes. The fixed twiddles come from entries 16, 32, 48 (lane 0), 32, 64, 96 (lane 1) and 48, 96, 144 (lane 2),
  read at 0x36c0-0x36fa, W_16^j, W_16^2j and W_16^3j. A twiddle-free butterfly (0x36dd-0x36ec) and a second block of
  adds and subtracts (0x36fd-0x370c) are followed by 12 multiplies and 6 adds and subtracts (0x370d-0x3726), the three
  complex products; two more blocks of 16 (0x3727-0x3736, 0x3745-0x3754) are the twiddle-free second pass. Register 0xf
  steps the sample offsets by 2, 4 and 6 (0x36ed, 0x36ee, 0x36ef) and by 8, 0x10 and 0x18 (0x3737-0x3739). The successor
  is read at 0x374f and the command ends at 0x3755.
- `mmo_FFT_8` (`fft.S` line 858, at 0x375e): **inferred**, the eight-point transform on the record at register 0x10, a
  radix-2 pass and one radix-4 pass with no loops. The first block (0x3766-0x3769) adds and subtracts samples four apart.
  Lanes 0-2 read twiddle entries 32, 64 and 96 (ERAM 0x73e5, 0x7425, 0x7465 and the words above them, 0x3760-0x3771),
  W_8^1, W_8^2 and W_8^3, and each forms one complex product of a difference with 4 multiplies, 3 adds and 3 subtracts
  (0x376d-0x3790). The final block (0x3791-0x37a0), 16 adds and subtracts, is the radix-4 pass on each half, which
  leaves the order that `FFT_Sort_8` undoes. The successor is loaded at 0x379b and the command ends at 0x37a1.

## Line and point state handlers (line.S, point.S)

These commands choose which module draws a line or point and pass the width or size on. Address register 0x1b points at
the context's module slots, and the line slot is 0x15 below it (F = 0xa) and the point slot 0x16 (F = 9). Read from the
[line.S](ge_listing/line.S.lst) and [point.S](ge_listing/point.S.lst) listings (`ge.u`, IRIX 6.5.30m).

- `mgeb_LineWidth_Feedback` (`line.S` line 1602, at 0x6289): **inferred**, glLineWidth while the render mode is
  GL_FEEDBACK. It takes no operand: the only value it moves is the constant 0xb89a, and its one store (0x6297) puts that
  address of `mmo_FeedbackLine` in the line slot, so the result is that every later line is fed back instead of drawn.
- `mgeb_LineWidth_Select` (`line.S` line 1570, at 0x6298): **inferred**, the selection-mode twin: it selects
  `mmo_SelectLine` (0xbfaf) as the line module, the same store at 0x62a6 producing the new slot value; the width operand is
  left unread, since selection records no width.
- `mgebi_PointSize_Feedback` (`point.S` line 69, at 0x61c6): **inferred**, glPointSize in feedback mode. Its output is the
  point slot set to `mmo_FeedbackPoint` (0xb80f, store at 0x61d1); it also sends the raster register write that the bus
  constant 0x70000 introduces, through bus-output addresses 0x1f8, 0x1f5 and 0x1f4 (0x61d2-0x61d6).
- `mgebi_PointSize_Select` (`point.S` line 37, at 0x61e0): **inferred**, glPointSize in selection mode: same shape, with
  `mmo_SelectPoint` (0xbf6d) as the result stored in the point slot at 0x61eb and the same three bus-output writes after it.
- `mgeb_LineWidth_Aliased` (`line.S` line 1668, at 0x6257): **inferred**, glLineWidth for aliased lines. It takes the
  width from command word 0 and converts it to an integer with unit-1 code 0x71 (0x625a), then compares the result with
  the staged constants to choose between `mmo_DrawLinStipplePrim` (0x8b08) and `mmo_DrawLinPrim` (0x8db0). Predicated stores
  (0x6271-0x6274) produce the chosen module in control word 0x15 and a mode in control word 3; the width goes to engine
  word 0x236 (0x6276) and to the raster side through bus-output addresses 0x1f8 and 0x1f5 (0x6279-0x627f).
- `mgeb_LineWidth_MS` (`line.S` line 1424, at 0x62dc): **inferred**, the multisample form. It reads the width operand,
  ORs 0x400 into and masks 0xfffffeff out of the mode bits it stages, and selects `mmo_DrawMSLinPrim` (0x8a2d) or the
  stipple module 0x8b08 as its result for control word 0x15 (predicated stores 0x62ee and 0x62f3), saving the width at
  engine word 0x236 like the aliased handler.
- `mgeb_LineStipple` (`line.S` line 1520, at 0x62a7): **inferred**, glLineStipple. Its operands are the repeat factor
  (command word 0) and the pattern (word 1). It converts the factor to float (code 0x73), computes its reciprocal with a
  seed and a Newton step (0x62ac-0x62b6) and stores that result at engine word 0x25e; the pattern, shifted by code 0x5d
  (0x62bc), goes to 0x24d. A loop (0x62c8-0x62cf) then converts further words to float and stores them from 0x24e on.
- `mgeb_SetMSPointTables` (`point.S` line 1871, at 0x5b96): **inferred**,
  the command that picks which multisample point table set later point modules use. It consumes command word 0 (read at
  0x5b99). The integer multiply at 0x5b9a scales it by the 0x640 staged at 0x5b97, the add at 0x5b9e puts the 0x1c07
  staged at 0x5b98 on top, and the sum is the result: the store at 0x5ba7 writes it to external-memory word 0x247,
  which the table-driven point modules read back (0x7892, 0x7c70, 0x7eba). The command ends at 0x5ba2.
- `mgeb_ComputeMSPointTables` (`point.S` line 1572, at 0x5bab): **inferred**,
  the command that builds the multisample coverage tables for a run of point sizes. Its operands are command words 0-2: the routine multiplies
  word 0 by the 0x640 staged at 0x5bac (multiply at 0x5bae), and words 1 and 2 are parked in registers 0x19 and 0x1a by
  the moves at 0x5bce and 0x5bd0 as the two packed sample-position words. The routine writes a parameter block at 0x85d0
  (1, 5, -2, 8 and 0x19 at 0x5bb9-0x5bbd), fills staging words 0-9 with 0, 4, 0xc, 0x10, 8, 200, 200, 7, 3 and 4
  (0x5bbf-0x5bc8) and points the lanes at scratch regions 0xc8 words apart (0x77a3 to 0x7b8b, 0x5bb1-0x5bb6). After
  the call to `MSPoint_Init_Samples` (0x5bcf) a loop from 0x5beb to the branch at 0x5c4b calls `MSPoint_Init`,
  `MSPoint_Sort` and `MSPoint_Pack` as a triple three times a pass (0x5bee-0x5c36), subtracting staging word 8 (3) from
  the running size between triples. The output is the packed tables in external memory; the command closes with
  a raster register write of 0x1c3a to bus-output 0x1f7 and zero to 0x1f5 (0x5c52-0x5c53) and its end at 0x5c51.
- `MSPoint_Pack` (`point.S` line 1428, at 0x5c5a): **inferred**,
  squeezes one point size's sorted sample records into packed words. The routine takes the record list the sort leaves
  in each lane's scratch region (external-memory loads at 0x5c69-0x5c80) and the parameter block at 0x85d0 (loop
  count 0x19 from word 8, loaded at 0x5c60; multiplier 5 from word 2, used by the multiplies at 0x5c92-0x5ca4). Per
  record it unpacks fields with right shifts by staging words 1 and 4 (0x5c88-0x5c94) masked by word 7, folds two of them
  into one cell index by multiplying by 5 and adding (0x5c92, 0x5ca3), shifts the sample number up by staging word 0xc
  (5, at 0x5c9a) and ORs four such bytes into one word at byte shifts 0, 8, 0x10 and 0x18 (staging words 0xd-0xf, the
  `or` chain 0x5ca7-0x5cba). The packed word leaves through the lane stores at 0x5cc3-0x5cc7; the loop branch is at
  0x5cc2 and the routine returns at 0x5cc3.
- `MSPoint_Sort` (`point.S` line 1200, at 0x5ccc): **inferred**,
  puts one lane's sample records in order. It takes the 200 records `MSPoint_Init` leaves as input (the count is staging
  word 5, loaded into register 0x13 at 0x5ccc), read with external-memory loads at 0x5cd9-0x5ce3. It unpacks each
  record with right shifts by staging words 1-4 masked by word 7 (0x5ceb-0x5cf3), compares neighbouring records with
  unit-1 subtracts that set flags (0x5d0f, 0x5d19, 0x5d21, 0x5d2b, 0x5d32, 0x5d3d) and exchanges them with moves
  predicated on those flags (0x5d15-0x5d44). Two nested loops repeat this (the branch at 0x5d67 back to 0x5cf4, the one
  at 0x5d8a back to 0x5cd5). The reordered records go back out through the lane stores `r95` = 8, 9 and 0xa (0x5d50-0x5d54,
  0x5d68-0x5d83) and the routine returns at 0x5d8b.
- `MSPoint_Init` (`point.S` line 1056, at 0x5d94): **inferred**,
  generates the sample records of one point size over a 5 by 5 block of pixel cells. Its inputs are the parameter
  block at 0x85d0 (block size 5 at word 2, offset -2 at word 3, cell width 8 at word 5) and the two sample-offset tables
  at 0x8614 and 0x8634 that `MSPoint_Init_Samples` fills (registers 0xc, 0xd and 0xe, set at 0x5d97-0x5d99). Both loop
  counters start at 5 minus a converted size (0x5d94, 0x5d9b-0x5d9c) and run down through the branches at 0x5e94 (back to
  0x5d9c) and 0x5e7f (back to 0x5da3). For each of a cell's eight samples it packs one record, shifting the two cell
  indices, the two sample offsets and the sample number to bit positions 0, 4, 0xc, 0x10 and 8 and ORing them (the
  `sll`/`or` runs from 0x5da3), and stores it through the lane stores at 0x5dcd-0x5dd2. The second half (0x5e22-0x5e73)
  computes each sample's squared distance from the point centre: it adds the sample offsets to the cell position
  scaled by 8 (0x5e2b, 0x5e34-0x5e38), squares both terms with integer multiplies (0x5e3c, 0x5e3e) and sums them (0x5e44,
  0x5e49), storing the sums per lane from 0x5e4d on. It returns at 0x5e95.
- `MSPoint_Init_Samples` (`point.S` line 927, at 0x5e9e): **inferred**,
  unpacks a point's sixteen sample-position fields into two small offset tables. The input is the pair of packed
  words in registers 0x19 and 0x1a (set by the caller from command words 1 and 2), each holding eight 3-bit fields. For
  each field it stages the shift count 0, 3, 6 ... 0x15 in staging word 0xa (0x5e9e, 0x5eb0, 0x5ec2 and so on to 0x5fac),
  shifts right (0x5e9f), adds the bias 4 from staging word 9 (0x5ea3) and masks with word 7 (0x5ea7). Even fields are
  stored into the table at 0x8614 (register 0x12, set at 0x5ea2) and odd fields into 0x8634 (register 0x13, 0x5eb4),
  eight entries each. It returns at 0x5fb5.
- `MSPoint_Print_Scratch_Tables` (`point.S` line 858, at 0x5fbe): **inferred**,
  a debugging dump of the scratch tables the multisample point code builds. Staging words 5 and 6 are its arguments
  (registers 0x13 and 0x12, 0x5fbf and 0x5fbe) and it steps through the two regions with external-memory loads
  (0x5fcb, 0x5fcd). Each pass saves the per-lane values to external words 0x17d7-0x17dc (stores at 0x5fd7-0x5fe1),
  loads the pointers 0x1757 and 0x17f4 (0x5feb, 0x5fee), calls `mPrintf` (0x4aa9, call at 0x607c) and reads the saved
  words back (0x5ff7-0x6003); three near-identical set-up blocks (0x5fd5, 0x600b, 0x6046) precede the call. The loop
  branch at 0x608a (which evaluates the address-unit flags set at 0x5fc7) returns to 0x5fc7 and the routine returns at 0x608b.
- `mgebi_PointSize_MS` (`point.S` line 589, at 0x6094): **inferred**,
  glPointSize when multisampling is on. Its operands are the size (command word 0) and a hint (word 1, compared with
  the 0x1102 staged at 0x6099 by the subtract at 0x609b). The size is multiplied by the 0.5 staged at 0x6097 (0x609e),
  two reciprocals come from seeds and Newton steps (0x60aa-0x60b2, 0x60e2-0x60ea), `mSinCos` is called at 0x60f1 with
  360.0 and pi staged (0x60ec, 0x60f0), and the results are stored to external words 0x237-0x23a and 0x244-0x246
  (0x6128, 0x6111, 0x610d, 0x60f6, 0x60c3, 0x60f4, 0x6117). The attenuation bit tested at 0x60b0 steers the module slot
  (control word 0x16): when it is set the slot gets `mmo_DrawMSDistAttPntPrim` (0x813b) or, if the hint equals 0x1102,
  `mmo_DrawMSDistAttTablePntPrim` (0x7855). Otherwise it starts as `mmo_DrawMSPntPrim` (0x82a7) and the predicated stores at
  0x611a and 0x611b can replace it with `mmo_DrawMSTablePntPrim1` (0x7c28) or `mmo_DrawMSTablePntPrim` (0x7e6f), on
  compares of an integer count (pi x 8.0 x square, stored at 0x239 and converted at 0x610a) with 0x64 and 0x1e (0x610e,
  0x6110). The command ends by writing 0x70000 to bus-output 0x1f8 and values to 0x1f5 and 0x1f4 (0x611d-0x6122).
- `mgebi_PointSize_AlphaAA` (`point.S` line 396, at 0x612c): **inferred**,
  glPointSize for antialiased points. Its operands are the size (command word 0) and a hint (word 1, compared with the 0x1102
  staged at 0x6146 by the subtract at 0x614b). The routine multiplies the size by the 0.5 staged at 0x614d (0x6150) and
  the result, the radius, is stored to external word 0x237 (0x615e); 0x80 is ORed into the mode word (0x6137); and the draw-module slot
  (control word 0x16) is set to `mmo_DrawAAPntPrim` (0x84be, staged at 0x614c, stored at 0x6160). The mode word goes
  back to control word 3 under predicates (0x6161, 0x6162). Raster register writes follow as pairs of 0x1f8 and 0x1f5
  stores (0x613a-0x6155, constants 0x70000, 0xfff, 0x1203fcf, 0x128080f, 0xfff000, 0x8000) and one to 0x1f4 (0x6157)
  before the end at 0x615a.
- `mgebi_PointSize_Aliased` (`point.S` line 177, at 0x6163): **inferred**,
  glPointSize for plain (non-antialiased) points. The operand is the size (command word 0, read at 0x6167). The routine
  adds the 0.5 stored at 0x6168, applies unit-1 code 0x7b (0x616d), takes the larger of that and a register (0x6171) and
  stores half the result to external word 0x237 (0x617e). A test of bit 3 in control word 4 (0x6166) selects the draw
  module: with the bit set the branch at 0x6177 jumps to the bus write at 0x61b7 and `mmo_DrawDistAttPntPrim` (0x8357,
  staged at 0x6164) stays in the slot. Otherwise `mmo_DrawPntPrim` (0x8465, staged at 0x619e) goes to control word 0x16
  (0x61a9), the constants 0, 0xffffff00 and 0x80 (0x6184, 0x6193, 0x6195) go to external words 0x23b-0x23d (stores
  0x619b-0x61a5), and the converted size values go to bus-output pairs 0x1f8/0x1f5 (0x618f-0x61b6). The raster write 0x70000 to
  0x1f8 and the word to 0x1f4 close the command (0x61b7-0x61bc, end at 0x61bd).
- `mgeb_InitAALineTables` (`line.S` line 1325, at 0x6300): **inferred**,
  builds the antialiased-line response tables once at start-up. Its operands are command words 0 and 1: word 1 is stored
  through address register 0x1d at offset 0x21 (0x6302) and compared with the 0x1102 staged at 0x6303 (the subtract at
  0x6304), and the routine multiplies word 0 at 0x6306. The 0x10000000 staged at 0x6305 is moved into register 0x1c
  under that compare's predicate (0x6308). The routine then calls `mGenerateAALineTable` (0x64af, call at 0x6307), which
  produces the tables, and the command ends at 0x6310.
- `mgeb_DownLoadAALineTable` (`line.S` line 1190, at 0x6319): **inferred**,
  regenerates the antialiased-line response table and sends it to the raster side. Its operands are command words 0 and
  1: the routine multiplies word 0 (read at 0x6319) by the 0.5 staged at 0x631a (multiply at 0x631c) and stores the result
  to external word 0x13ae (0x632a), and word 1 goes to register 0x1c (0x631d). The size word at 0x13af (read at 0x6324) is shifted right by 8 and
  masked with 0xff (0x6329, 0x6332), and its field is compared with 8, 4 and 1 (0x6336-0x633a) to select the
  generator and download pair: eight samples (0x63d4 and 0x652d), four (0x6432 and 0x6579) or one (0x64af and 0x65db),
  at the transfers 0x6342-0x6347. It finishes with the raster writes 0x70000 to 0x1f8 and values to 0x1f5 and 0x1f4
  (0x6356-0x6359) and ends at 0x6351.
- `mgeb_LineWidth_AlphaAA` (`line.S` line 1014, at 0x6379): **inferred**,
  glLineWidth for antialiased lines. Its operands are command words 3, 2, 1 and 0, read in turn (0x6379, 0x638c, 0x6393, 0x6395) and
  word 1 is compared with the 0x1102 staged at 0x6392 (0x6394). Predicated stores (0x6397-0x639e, 0x63b3, 0x63b6) update
  the mode word at control word 3 and put the draw module in control word 0x15: `mmo_DrawLinStipplePrim` (0x8b08, staged
  at 0x6383) or `mmo_DrawLinPrim` (0x8db0, staged at 0x638e). The filter width is computed with float multiplies and
  adds around the constants 0.5, 8.0 and 23.0 (0x6381, 0x6382, 0x63a7; operations 0x6396-0x63a9), converted at 0x63b9 and
  stored to external word 0x236 (0x63b4). The command then sends raster writes: 0x70000 then 0xfff, and 0x1213fd0 then
  the converted width, through the bus-output pairs 0x1f8/0x1f5 (0x63bb-0x63c2) after reading 0x13ae and 0x13af (0x63bc,
  0x63be). It ends at 0x63cb.
- `mGenerateAALineTable8` (`line.S` line 854, at 0x63d4): **inferred**,
  computes the eight-sample antialiased-line response table. It takes the engine word at 0x1389 (0x63dc), the width and
  size words that `mgeb_DownLoadAALineTable` left and the constants it stages (0.5, 1/31 as 0x3d042108, 3.0, 0.25 and
  0.5; 0x63dd-0x63e7). The three lane registers point at per-lane result blocks 0x13b0, 0x13d0 and 0x13f0 (0x6403-0x6405).
  It multiplies and adds (0x63ea-0x63fa), calls `AA_Response` (0x9059, branch at 0x6408) and `AA_Response_Step` (0x9045,
  jump at 0x6409), clamps each response (`clamp` at 0x6416, 0x641c) and stores the values through the external-memory
  stores at 0x641f-0x6423. The conditional branch at 0x6420 hands on to `mDownLoadAALineTable8` (0x652d); otherwise the
  routine returns at 0x6429.
- `mGenerateAALineTable4` (`line.S` line 702, at 0x6432): **inferred**,
  the four-sample table generator. It consumes the same staged constants (0x643b-0x6445) and engine word 0x1389 (0x643a),
  points a lane register at the blocks 0x13b0, 0x13d0 and 0x13f0 (0x6461-0x6463) and runs the response routine twice:
  `AA_Response` and `AA_Response_Step` at 0x6466-0x6467, then again at 0x6489-0x648a with the successor reloaded
  (0x648a). After each pass it clamps the response (0x6474, 0x647a, 0x6497) and stores results through the lane stores
  at 0x647d-0x6481 and 0x64a0-0x64a2. The branch at 0x649d hands on to `mDownLoadAALineTable4` (0x6579); otherwise it
  returns at 0x64a6.
- `mGenerateAALineTable` (`line.S` line 550, at 0x64af): **inferred**,
  the one-sample response table generator, also reached from `mgeb_InitAALineTables` (0x6307). It takes the width as input and adds the 0.5 staged at
  0x64bc to it (0x64be), scales by the staged 1/31 (0x64cc) and loads three lane registers with the result
  blocks 0x13b0, 0x13d0 and 0x13f0 (0x64e3-0x64e6). It reaches `AA_Response` (0x9059, 0x64f4) or `AA_Response_Step`
  (0x9045, 0x64f5), clamps the two results (0x6502, 0x6508) and stores them through the external-memory stores at
  0x650b-0x650f. The branch at 0x651b hands on to `mDownLoadAALineTable` (0x65db) and the routine returns at 0x6524.
- `mDownLoadAALineTable8` (`line.S` line 435, at 0x652d): **inferred**,
  sends the eight-sample response table to the raster side. Its inputs are the engine word 0x1389 (0x652d), the 255.0
  staged at 0x6542 and the base addresses 0x89f, 0x8bf, 0x8df and 0x8ff (0x653d, 0x6545-0x6547), with the three lane
  registers loaded with 0x13b0, 0x13d0 and 0x13f0 (0x6549-0x654b). It reads the generated entries from external memory
  (0x654f-0x6555), multiplies them by 255.0 (0x655b, 0x655c) and subtracts a register from each base address
  (0x655d-0x655f). It produces four address/value pairs: the address goes to bus-output 0x1f7 and the entry, converted
  from float to integer (0x6564, 0x6569, 0x656e, 0x6574), to 0x1f5 (0x6561-0x6574). It returns at 0x6570.
- `mDownLoadAALineTable4` (`line.S` line 328, at 0x6579): **inferred**,
  the four-sample download. It takes the engine word 0x1389 (0x6579), scales the entries by the 255.0 staged at 0x658e,
  and subtracts a register from the base addresses 0x89f, 0x8bf, 0x8df and 0x8ff (0x6589-0x6593, 0x65ad-0x65af). Six entries per
  lane are read from the blocks 0x13b0, 0x13d0 and 0x13f0 (0x659b-0x65a5), converted from float to integer (0x65b4,
  0x65b9, 0x65be, 0x65c4) and sent as eight address/value pairs to bus-output 0x1f7 and 0x1f5 (0x65b1-0x65d7). It
  returns at 0x65d2.
- `mDownLoadAALineTable` (`line.S` line 216, at 0x65db): **inferred**,
  the one-sample download, a loop that sends the table in blocks. Its inputs are the staged constants 0.5, 255.0, 3 and 6 and the base
  addresses 0x89f, 0x8bf, 0x8df, 0x8ff (0x65dc, 0x65e2-0x65e8), and the lane registers get 0x13b0, 0x13d0 and 0x13f0
  (0x65e9-0x65ed). The counter register 0xc is loaded from 0x20 (0x65f0). Each pass reads six entries per lane from
  external memory (0x65f1-0x65fb), multiplies them by 255.0 (0x65fd, 0x6602), converts them to integers (0x6606, 0x660b,
  0x6610) and writes four address/value pairs to bus-output 0x1f7 and 0x1f5 (0x6603-0x661d). The loop branch at 0x6617
  returns to 0x65f1 and the routine returns at 0x6619.

## Texture-coordinate generation commands and modules (texgen.S)

The glTexGen command, its enables, and the distance-to-point and distance-to-line generators of SGIS_point_line_texgen.
Each coordinate n (s = 0 to q = 3) owns a mode word at engine word 0x3df + n and parameter blocks with a stride of four,
so word k of coordinate n's plane is at 0x3f3 + n + 4k. Read word by word from the
[texgen.S listing](ge_listing/texgen.S.lst) (`ge.u`, IRIX 6.5.30m), with the Ghidra decompiler output of each routine
beside it. The GL enum values the dispatcher compares against are the public OpenGL and SGIS_point_line_texgen values.

- `mgeb_TexGen` (`texgen.S` line 688, at 0xcabe): **inferred**, the glTexGen command. Its inputs are command words 0-2
  (coordinate, parameter name, value). It converts the coordinate into the index n by subtracting 0x2000, GL_S (0xcad1),
  stages the enum constants it compares against, and subtracts them from the operands to select a handler. Parameter
  GL_TEXTURE_GEN_MODE (0x2500) sends the value to one of seven mode handlers (0xcae7-0xcaed); any other parameter goes
  to 0xcafa, which selects one of six plane, point or line handlers. The result is a jump with n in register 0xa.
- `mgeb_TexGen_Disable` (`texgen.S` line 654, at 0xcb19): **inferred**, glDisable of a GL_TEXTURE_GEN coordinate. It takes
  the enable token from command word 0, subtracts 0xc60 (GL_TEXTURE_GEN_S) to index the mode word at 0x3df + n, and
  combines that word with the mask 0x60000000 by unit-1 code 0x51 (0xcb2c), which has no settled reading of its own;
  clearing the two bits the enable handler sets is the one that fits. It stores the result back and jumps to the resolver.
- `mgeb_TexGen_Enable` (`texgen.S` line 623, at 0xcb39): **inferred**, the matching glEnable. Same indexing as the
  disable handler, but it ORs 0x60000000 into the coordinate's mode word (0xcb4c), so bits 30-29 are the enable, and its
  output is that word stored back at 0x3df + n.
- `mTexGenSph` (`texgen.S` line 189, at 0xcd59): **inferred**, GL_SPHERE_MAP for one coordinate. It refuses r and q
  (condition 9 sends them straight to `mTexGenResolve`), keeps only the enable bits of the mode word (AND 0x60000000), then
  ORs in 0xc000000 and the address 0xb85 of `umo_TexGenSphere_ST`; the combined word is its result, stored at 0x3df + n.
- `mTexGenObjLin` (`texgen.S` line 223, at 0xcd3f): **inferred**, GL_OBJECT_LINEAR. From the mode word it keeps bits
  30-29 and combines them with a module address: 0xc30 (`umo_TexGenObjLinear_ST`) or 0xc53 for r and q. The predicated
  stores at 0xcd53 and 0xcd55 select which one by coordinate, producing the new mode word.
- `mTexGenEyeLin` (`texgen.S` line 249, at 0xcd21): **inferred**, GL_EYE_LINEAR. Like the object-linear handler it masks
  the old mode word, but it also adds the eye-space flag 0x8000000 before ORing in 0xbea for s and t or 0xc0d for r and
  q, the two eye-linear transform modules; output the mode word at 0x3df + n.
- `mTexGenEyePointDist` (`texgen.S` line 278, at 0xcd03): **inferred**, GL_EYE_DISTANCE_TO_POINT_SGIS (0x81f0). It takes
  the coordinate's mode word, sets the eye flag 0x8000000, and packs in `mmo_TexGenEyePoint_ST` or its r, q twin as
  the module this coordinate runs; result stored predicated at 0xcd1b or 0xcd1d.
- `mTexGenObjPointDist` (`texgen.S` line 306, at 0xcce9): **inferred**, GL_OBJECT_DISTANCE_TO_POINT_SGIS (0x81f1). With no
  eye flag, its output mode word combines the enables with 0xce98 or 0xcef3, the object point-distance modules.
- `mTexGenEyeLineDist` (`texgen.S` line 333, at 0xcccb): **inferred**, GL_EYE_DISTANCE_TO_LINE_SGIS (0x81f2): eye flag set
  and the line modules at 0xcf4e and 0xcfdb as candidates. It produces the mode word through the same predicated pair of
  stores and ends by jumping to the resolver.
- `mTexGenObjLineDist` (`texgen.S` line 361, at 0xccb1): **inferred**, GL_OBJECT_DISTANCE_TO_LINE_SGIS (0x81f3). It takes
  the old mode word and returns it with the enable bits kept and 0xcd7e or 0xce0b, the object line modules, ORed in.
- `mTexGenObjPlane` (`texgen.S` line 382, at 0xcc9e): **inferred**, GL_OBJECT_PLANE. Its input is the plane in command
  words 2-5. It converts nothing: four moves copy the plane, and the stores at 0xcca7-0xccad write the result words
  at 0x3e3 + n + 4k, where the object-linear modules read it.
- `mTexGenEyePlane` (`texgen.S` line 402, at 0xcc6e): **inferred**, GL_EYE_PLANE. It first calls `mMatrixInverse` when
  condition 0x76 says the inverse is stale, then multiplies the plane in command words 2-5, taken as a row vector, by the
  inverse modelview at engine words 0x1f-0x2e: sixteen products summed in fours (0xcc77-0xcc8c). That is GL's rule
  p' = p M^-1 at specification time. The four results go to 0x3f3 + n + 4k.
- `mTexGenObjPoint` (`texgen.S` line 443, at 0xcc43): **inferred**, GL_OBJECT_POINT_SGIS. It takes the homogeneous point
  in command words 2-5, computes 1/w with a reciprocal seed and one Newton step (0xcc4b-0xcc59), and multiplies x, y and
  z by it. The three results are stored at 0x403 + n + 4k.
- `mTexGenEyePoint` (`texgen.S` line 469, at 0xcbff): **inferred**, GL_EYE_POINT_SGIS. It transforms the point operand
  (command words 2-5) by the modelview at engine words 0x2f-0x3e, sixteen multiply-adds, then divides the eye-space
  x, y and z by the transformed w as the object-point handler does. Results at 0x413 + n + 4k.
- `mTexGenObjLine` (`texgen.S` line 518, at 0xcbbe): **inferred**, GL_OBJECT_LINE_SGIS. Its operands are a point (command
  words 2-5) and a direction (words 6-8). It divides the point by its w and normalises the direction with a reciprocal
  square root of the sum of squares (seed at 0xcbd2, Newton step after it). It stores the six results at 0x423 + n + 4k.
- `mTexGenEyeLine` (`texgen.S` line 556, at 0xcb59): **inferred**, GL_EYE_LINE_SGIS. It calls `mMatrixInverse` when stale,
  transforms the point operand by the modelview (0x2f-0x3e) and the direction by the 3 x 3 block of the inverse at
  0x1f-0x29, then divides and normalises as the object-line handler does. Six results at 0x43b + n + 4k.
- `mmo_TexGenObjPoint_ST` (`texgen.S` line 870, at 0xce98): **inferred**, the vertex module for object distance to a
  point, s and t. Two vertices per pass (records at address registers 0xc and 0xd); its inputs are object position
  words 0-2 and the point saved at 0x403 and 0x404 onward. Per vertex it subtracts the point, sums the squares and
  computes the length as x times a reciprocal square root with one Newton step. The results go to record words 0xb and
  0xc through predicated stores; it also shifts the special-register words 0x2e and 0x2f.
- `mmo_TexGenObjPoint_RQ` (`texgen.S` line 961, at 0xcef3): **inferred**, the same distance for r and q: it takes the
  object position and the points of coordinates 2 and 3 (0x405 and 0x406 onward) and returns the two lengths in record
  words 0xd and 0xe.
- `mmo_TexGenEyePoint_ST` (`texgen.S` line 1372, at 0xd068): **inferred**, eye distance to a point for s and t. Its input
  is the eye position, record words 0x13-0x15, against the eye-space points at 0x413 and 0x414 onward; it computes the
  Euclidean distance per vertex, two vertices per pass, and yields s and t in words 0xb and 0xc. The loop closes at 0xd0b9.
- `mmo_TexGenEyePoint_RQ` (`texgen.S` line 1463, at 0xd0c3): **inferred**, the r and q form of the eye point distance:
  eye position input, points of coordinates 2 and 3, the two distances as output words 0xd and 0xe.
- `mmo_TexGenObjLine_ST` (`texgen.S` line 1057, at 0xcd7e): **inferred**, object distance to a line for s and t. For each
  of two vertices it takes the object position (words 0-2), subtracts the line point saved at 0x423 onward, removes the
  component along the unit direction (the dot product times the direction) and computes the length of what is left with
  a reciprocal square root and a Newton step. Outputs: s in word 0xb and t in word 0xc, predicated.
- `mmo_TexGenObjLine_RQ` (`texgen.S` line 1216, at 0xce0b): **inferred**, r and q of the object line distance. Same
  arithmetic on the lines of coordinates 2 and 3 (0x425 and 0x426 onward), with its results in record words 0xd and 0xe.
- `mmo_TexGenEyeLine_ST` (`texgen.S` line 1559, at 0xcf4e): **inferred**, eye distance to a line, s and t. It takes the eye
  position (record words 0x13-0x15) and the eye-space lines at 0x43b onward, projects out the direction component and
  returns the perpendicular distance in words 0xb and 0xc.
- `mmo_TexGenEyeLine_RQ` (`texgen.S` line 1718, at 0xcfdb): **inferred**, the r, q twin: eye position as input, lines of
  coordinates 2 and 3 (0x43d onward), perpendicular distances produced in words 0xd and 0xe.
- `mTexGenResolve` (`texgen.S` line 57, at 0xd11e): **inferred**, rebuilds the vertex path after any texgen change. Its
  inputs are the four mode words 0x3df-0x3e2. It shifts each left by one into special registers 0x2c-0x2f (0xd126-0xd130),
  tests the enables (conditions 0x7b and 0x7f) and, from them, writes the module addresses for s, t and for r, q into
  control words 0x77 and 0x78, ORs flags into control words 4, 5 and 7, and points words 8 and 0xd at
  `mmo_DirtyXformAndObjToClipModule` (0xf449) and the texture dirty module (0xf494). It ends the command at 0xd16c.

## Texture environment (texenv.S)

The GL texture-environment state lives in engine external memory: the mode at word 0x293, the environment colour at
0x28b-0x28e, the four bias words at 0x28f-0x292 and the bound texture's format index at 0x294 (`r95` = 8 stores,
`r95` = 0x17 reads). Read in full from the [texenv.S listing](ge_listing/texenv.S.lst) (`ge.u`, IRIX 6.5.30m). The
per-format tables the ARM loads at 0x7387-0x73a4 are in [arm1_functions.md](arm1_functions.md#texture-management).

- `mgebi_TexEnv` (`texenv.S` lines 130-228, at 0x5879): **inferred**, the glTexEnv handler. It takes the parameter
  name and value as command operands 0 and 1 (0x5879, 0x587b) and compares the name with 0x2200, the environment
  mode (integer subtract at 0x587d, branch to 0x58c3 when it differs). For the mode it converts the value to an integer
  (0x5892), compares it with the six accepted modes it stages at 0x5893-0x5898 (0x2100, 0x2101, 0x0be2, 0x8062, 0x1e01
  and 0x104), stores it to word 0x293 (0x58c1) and calls `mValidateTexenvMode`; an unmatched value goes to
  `mErrInvalidEnum` through 0x5933. For the environment colour (0x2201, compared at 0x58c6) it stores operands 1-4 to
  words 0x28b-0x28e (0x58e6-0x58f8) and sends the colour to the raster board through bus words 0x1f8 and 0x1f5 with
  the register words 0x15e1402 and 0x15f1413 (`TFP_TEV_CC` and `TFP_TEV_CC1`, staged at 0x58e4-0x58e5). For 0x80be,
  the texture-environment bias, it stores operands 1-4 to words 0x28f-0x292 (0x591a-0x5920) and re-validates.
- `mValidateTexenvMode` (`texenv.S` lines 44-98, at 0x594d): **inferred**, selects and sends the raster texture
  function. Its inputs are the stored mode (word 0x293), the bias words and the format index (word 0x294). It compares
  the mode with the five base modes by integer subtracts (0x595c-0x5960) and, under the matching predicate, points
  address register 0x13 at that mode's table (modulate 0x7387, decal 0x738c, blend 0x7391, both replace forms 0x7396,
  0x5967-0x596b); the add tables 0x739b and 0x73a0 are chosen on the path at 0x597b-0x597c. It then reads the word at
  table + format index (0x5995) and outputs it to the raster board as register `TFP_TEV` (register word 0x15d1401, bus
  words 0x1f8 and 0x1f5, 0x599a-0x59a0), whose low byte holds the alpha and colour functions.
- `mgebi_TexEnvComps` (`texenv.S` lines 236-258, at 0x5857): **inferred**, records the format of a newly bound texture.
  It takes the format index from the input stream (C = 0x1d, 0x5857-0x585a), stores it to word 0x294 (0x5866) and calls
  `mValidateTexenvMode` (0x5861), so binding a texture of another format re-selects the raster function for the
  current mode; it ends with the closing bus word to 0x1f4 under its predicate (0x586e-0x586f).
- `mTexEnvDone` (`texenv.S` lines 111-114, at 0x5942): **established**, the common exit of the handler: it sends staging
  word 0x10 to bus address 0x1f4 under the same predicate (0x5942-0x5943) and ends the command with the group-31
  transfer at 0x5944.

## Face culling (ucull.s)

Read in full from the [ucull.s listing](ge_listing/ucull.s.lst) (`ge.u`, IRIX 6.5.30m). The cull module takes the
triangle list the decomposers build, two triangles per pass, and tests each triangle's orientation in clip space.

- `mmo_FaceCull` (`ucull.s` lines 29-40, at 0xc76): **inferred**, the set-up of the cull loop. Its input is the triangle
  list the decomposers build: it points address register 1 at it from register 0x15 plus the constant 0x8bb0 (0xc76),
  copies list words 0 and 1 to special registers 0x2e and 0x2c (0xc7a, 0xc7b), and loads address registers 6-8 and 9-0xb
  with the three vertex pointers of two triangles, list words 0-2 and 0xf-0x11 (0xc7a-0xc7f), the layout `lDI1` also
  reads. Its last words read clip x and y (record words 0x17 and 0x18) of the first vertices and issue the first unit-2 multiplies of the loop's products (0xc82-0xc86). Its output is the six pointers and those products, which `lCU1` consumes.
- `umo_FaceCull`: **inferred**, the second name at 0xc76 (`ucull.s` line 29) of the cull set-up. It takes the triangle
  list from register 0x15 as input, produces the six vertex pointers in address registers 6-0xb, and starts the multiplies of clip x and y (record words 0x17 and 0x18) whose products `lCU1` sums.
- `lCU1` (`ucull.s` lines 47-91, at 0xc87): **inferred**, the cull loop, two triangles per pass. Its inputs are the
  clip-space x, y and w (record words 0x17, 0x18 and 0x1a) of the three vertices each list entry names, through address
  registers 6-8 and 9-0xb. It multiplies them in pairs and adds and subtracts the products (multiplies 0xc87-0xc9d,
  float adds and subtracts M = 0x6e0 and 0x6e2 interleaved) to compute w0 (x1 y2 - x2 y1) + w1 (x2 y0 - x0 y2) + w2 (x0
  y1 - x1 y0), the determinant of the three (x, y, w) rows, whose sign is the triangle's winding after the perspective
  divide when every w is positive. It XORs list word 4 of the triangle (0x13 for the second) with control word 0x6f
  (0xc9e, 0xca1), XORs that with the complement of control word 0x70 (bitwise NOT at 0xca5, M = 0x6d8) and with the
  determinant, and stores the result to special register 0x1c, the cull accumulator, once per triangle (0xcaa, 0xcab).
  Unit-1 code 0x51 and ORs with register 0x1d (0xca2, 0xca6, 0xca8-0xca9, 0xcaf-0xcb2) update the flags the transfers
  test. It repeats through 0xcb3 (immediate -0x2c, `cc` 0x11) and ends the command at 0xcb4; at 0xc91 `cc` 0x78 sends it
  to `lCU2`.
- `lCU2` (`ucull.s` line 104, at 0xcbd): **established**, the abort exit of the cull loop: one group-31 transfer to
  `mmo_AbortGeometry`, reached from the loop when `cc` 0x78 is set at 0xc91.

## Vertex deformation (udeform.s)

Read word by word from the [udeform.s listing](ge_listing/udeform.s.lst) (`ge.u`, IRIX 6.5.30m). The Ghidra
decompiler output of these loops is not usable yet: the loops overlap their own delay slots and the module does not
model register-write latency, so the readings below come from the listing. Two parameter blocks sit in external
memory (ERAM, read with `r95` = 0x17): the position map at 0x95e-0x969 (address register 8, read at register 8
plus 0x1f - F) and the texture map at 0x99d-0x9a8 (address register 7, the same layout). The set-up keeps three of a
block's words in registers and the loop multiplies by the other nine, so a block is an affine map of three
coordinates: three offsets and a 3 x 3 matrix. Which ERAM word lands in which register depends on the load latency,
which is not settled, so the entries name blocks, not single words. The loops take two vertex records per pass, one per thread (the W71 words take record 2), count passes in
register 0 from register 0x19 less one, read their successor from engine word 0xda plus register 9 (`r95` = 2), and
end with the group-31 transfer.

- `mmo_DeformCoord` (`udeform.s` lines 51-69, at 0x2ab8): **inferred**, set-up of the position deformation. It reads
  the first words of the position block (ERAM 0x95e onwards) and keeps three in registers 2-4 (0x2ab8-0x2ac4), stages the bit 0x40000 as
  staging word 0 and copies it to register 0 (0x2abb, 0x2abd), and points registers 1 and 2 at the two input records
  (0x2abf, 0x2ac1). Its output is that state for `loopDC`, and it already multiplies the first input x by the
  block's coefficients (0x2ac7-0x2aca).
- `umo_DeformCoord`: **inferred**, the second name at 0x2ab8 (`udeform.s` line 51) of the position set-up; it takes
  the ERAM block at 0x95e as input, selects the two records the loop transforms, and leaves registers 0-4 and
  address registers 1, 2 and 8 as its result.
- `loopDC` (`udeform.s` lines 71-91, at 0x2acb): **inferred**, the position loop. Its inputs are two vertex records per pass. Per record it ANDs record word 0x26
  with register 0 (unit-1 code 0x50, 0x2acb) to test bit 0x40000, then multiplies x, y and z (record words 0-2) by
  nine coefficients of the block read through register 8 and adds the products to the offsets in registers 2-4 (unit-2 multiply with
  unit-1 add, M = 0x460, 0x2acd-0x2ad8). The three sums are its output, stored back over words 0-2 of both records
  (0x2ada-0x2adf), so each vertex position is replaced by its image under the affine map.
- `mmo_DeformCoordTexture` (`udeform.s` lines 107-132, at 0x2ae7): **inferred**, set-up of the module that deforms
  both position and texture coordinates. It keeps three words of the texture block (ERAM 0x99d onwards) in registers
  5-7 and three of the position block in registers 2-4 (through register 8, 0x2af0-0x2af9), and stages two
  test bits, 0x20000 in register 1 and 0x40000 in register 0 (0x2aea, 0x2af1). Those blocks are its inputs; the
  result is the register state that lets `loopDCT` transform both coordinate sets.
- `umo_DeformCoordTexture`: **inferred**, alias at 0x2ae7 (`udeform.s` line 107). Inputs: the two ERAM blocks. It
  combines them into one result: six offsets in registers 2-7 and two test bits in registers 0 and 1 for `loopDCT`.
- `loopDCT` (`udeform.s` lines 134-176, at 0x2b01): **inferred**, the combined loop. It takes two records per pass and first maps the position words
  0-2 as `loopDC` does (products against register 8's block, 0x2b01-0x2b15), then tests bit 0x20000 of record word
  0x26 (0x2b16) and multiplies texture words 0xb-0xd by the texture block's coefficients (register 7, 0x2b18-0x2b23),
  adding offsets 5-7. The results replace words 0-2 and 0xb-0xd of both records (0x2b10-0x2b15, 0x2b25-0x2b2a).
- `mmo_DeformTexture` (`udeform.s` lines 193-211, at 0x2b32): **inferred**, set-up of texture-only deformation. It reads
  ERAM 0x99d-0x9a2 by immediate and keeps three of them in registers 5-7 (0x2b32-0x2b3e), stages the test bit 0x20000 in register 1 (0x2b35,
  0x2b37) and computes the first products of texture word 0xb (0x2b41-0x2b44). Its input is the texture block and
  its output the state `loopDT` starts from.
- `umo_DeformTexture`: **inferred**, alias at 0x2b32 (`udeform.s` line 193): the texture block at 0x99d is its input,
  and it converts it into its output, the staged offsets and the test bit.
- `loopDT` (`udeform.s` lines 213-233, at 0x2b45): **inferred**, the texture loop. It takes two records per pass, ANDs word 0x26 with 0x20000
  (0x2b45), multiplies s, t and r (record words 0xb-0xd) by the texture block's coefficients through register 7 and adds the offsets (M = 0x460,
  0x2b47-0x2b52); its output is the mapped texture coordinate written back to words 0xb-0xd (0x2b54-0x2b59).
- `mmo_DeformCoordNormal` (`udeform.s` lines 252-275, at 0x2b61): **inferred**, set-up for position and normal. It
  reads control word 3 and ANDs it with 0x200000 (0x2b62-0x2b64); when that bit is set it calls
  `mDeformation3_1Inverse` (0x2b72) to rebuild the inverse of the position map. It points register 0xa at the block
  at 0x98e, where the inverse lives, and register 8 at the position block, and keeps three position-block words in
  registers 2-4. Inputs: control word 3 and the two blocks; output: that state, with the first products of x already formed: it multiplies x by the block (0x2b75-0x2b78).
- `umo_DeformCoordNormal`: **inferred**, alias at 0x2b61 (`udeform.s` line 252); its input is the position map and
  control word 3, and its result is a current inverse at 0x98e plus the loop state, which it derives by calling the
  inverse routine only when the map has changed.
- `loopDCN` (`udeform.s` lines 277-316, at 0x2b79): **inferred**, the position-and-normal loop over two input records per pass. Positions are mapped as
  in `loopDC` (0x2b7b-0x2b89); the normal, words 8-0xa, is multiplied by the inverse block through register 0xa
  (0x2b83-0x2b99) with no offset added, the transform a normal needs under an affine map. Output: mapped position
  in words 0-2 and transformed normal in words 8-0xa (0x2b88-0x2b9f).
- `mmo_DeformCoordNormalTexture` (`udeform.s` lines 334-363, at 0x2ba7): **inferred**, set-up that combines the three:
  it tests control word 3 against 0x200000 and calls `mDeformation3_1Inverse` (0x2bbe), keeps three words of the
  texture block in registers 5-7 and three of the position block in registers 2-4, and stages both record test bits.
  Its inputs are control word 3 and the three blocks, and its result is the state `loopDCNT` uses.
- `umo_DeformCoordNormalTexture`: **inferred**, alias at 0x2ba7 (`udeform.s` line 334). It consumes the position,
  inverse and texture blocks, selects whether the inverse is rebuilt, and produces the register state `loopDCNT` uses.
- `loopDCNT` (`udeform.s` lines 365-430, at 0x2bc5): **inferred**, the loop that takes two records per pass and
  transforms position (0x2bc7-0x2bd5), normal through the inverse (0x2bd6-0x2be5) and texture coordinates
  (0x2bec-0x2c00) of each; its results go back to words 0-2, 8-0xa and 0xb-0xd.
- `mDeformation3_1Inverse` (`udeform.s` lines 453-519, at 0x2c08): **inferred**, the inverse of the position map's
  3 x 3 part, whose input is the ERAM position block. It copies the map's nine coefficients from ERAM through register 8 into nine words at register
  0xe (0x2c09-0x2c19), which the callers set to the staging base plus 4 (0x2b61). The three lanes then load registers 0xb-0xd with
  that block plus 0, 3 and 6 in rotated order (0x2c08-0x2c18), so each lane multiplies a different pair of rows: each
  lane computes one cross product, which is one row of the adjugate. The determinant, its reciprocal (seed at 0x2c3c,
  Newton step code 0x4f at 0x2c3a) and the scaled adjugate follow; its output is the inverse, sent by the `r95` = 4
  and 7 stores from 0x2c37 on. It also rewrites control word 3 with unit-1 code 0x52 applied to it and the staged
  0x200000 (0x2c1c, store 0x2c35), which fits clearing the bit that asked for the rebuild.
- `uDeformation3_1Inverse`: **inferred**, the second name at 0x2c08 (`udeform.s` line 453). It takes the 3 x 3 map from
  the ERAM position block and returns its inverse; it computes the three cross products in the three lanes.

## GL error recording (err.S)

Read in full from the [err.S listing](ge_listing/err.S.lst) (`ge.u`, IRIX 6.5.30m). The current GL error lives in
external memory at address register 0x16 plus 4 (read with `r95` = 0x17, written with `r95` = 8). The codes are the
public OpenGL error values.

- `mge_ErrNoError` (`err.S` lines 27-40, at 0xd4b9): **inferred**, resets the error state. It takes three command
  words into address registers 0x1a, 0x19 and 0x13 (C = 0x1d, 0xd4bc-0xd4be), stages 0 and moves it into the
  store-data register (0xd4ba, 0xd4bb), and its `r95` = 8 store at register 0x16 plus 4 (0xd4c4) produces the result:
  the error word becomes GL_NO_ERROR. It also compares register 0x13 with zero (address test, 0xd4c5). It then waits on the relative group-5 transfer at 0xd4bf.
- `mErrInvalidEnum` (`err.S` lines 50-63, at 0xd520): **inferred**, records GL_INVALID_ENUM. Its input is the current
  error word (read at 0xd520); it compares it with a staged 0 by an integer subtract that sets the flags (unit-1 code 0x42, 0xd527),
  and moves the staged code 0x500 into the store-data register (0xd528, 0xd529). The predicated `r95` = 8 store at
  0xd532 writes that output back only when the comparison found no earlier error, so the first error is kept.
- `mErrInvalidValue` (`err.S` lines 73-86, at 0xd50a): **inferred**, the GL_INVALID_VALUE recorder. Input: the error
  word at register 0x16 plus 4 (read at 0xd50a). It selects the code 0x501 (staged at 0xd512) as the new value and
  stores it (0xd51c) under the predicate that the old word was zero; the result is the error word unchanged
  otherwise.
- `mErrInvalidOperation` (`err.S` lines 96-109, at 0xd4f4): **inferred**, sets GL_INVALID_OPERATION, 0x502 (0xd4fc).
  It takes the current error word (0xd4f4), compares it with zero through the subtract at 0xd4fb, and the predicated
  store at 0xd506 produces the new error word only if none was pending.
- `mErrStackOverflow` (`err.S` lines 119-132, at 0xd4de): **inferred**, the GL_STACK_OVERFLOW case, code 0x503
  staged at 0xd4e6. Its inputs and test are those of the other recorders: it compares the word read at 0xd4de with
  zero (0xd4e5), and its output, the store at 0xd4f0, leaves an earlier error in place.
- `mErrStackUnderflow` (`err.S` lines 142-155, at 0xd4c8): **inferred**, GL_STACK_UNDERFLOW, 0x504 (0xd4d0), the pop
  side. The handler reads the error word as its input (0xd4c8), the flag-setting subtract (0xd4cf) compares it with
  zero, and the result is written by the predicated store 0xd4da.

## Debug output (debug.S)

Read from the [debug.S listing](ge_listing/debug.S.lst) (`ge.u`, IRIX 6.5.30m). These routines keep a message buffer
in external memory: address register 0x12 is loaded with 0x1757 (and later 0x17f4) and each message word goes out with
an `r95` = 8 store at that base plus the index in register 0x13, which is saved at 0x17de.

- `mgesi_PrintNum` (`debug.S` lines 546-559, at 0x4961): **inferred**, writes labelled numbers to the debug buffer.
  It takes the number from the command (C = 0x1d, 0x4961-0x4964) and saves each lane's store-data register to
  0x17d7-0x17dc with `r95` = 8, 9 and 0xa stores (0x4967-0x4971). It then appends message words, the number and
  text constants such as "Roll", "call" and ": " (0x526f6c6c, 0x63616c6c, 0x3a200000 at 0x49d0, 0x49fd, 0x4a2a), at
  register 0x12 plus the index, which it adds one to (0x497e-0x4981). Its result is the buffer and the stored index; the
  saved lane values are read back with `r95` = 0x14-0x16 (0x4984-0x4988), so the caller's state survives.
- `mmo_DebugGE` (`debug.S` lines 215-265, at 0x4a8d): **inferred**, a vertex-path stage that does no arithmetic. It
  takes the successor word through register 0x13 (`r95` = 2, 0x4a8d), adds 2 to register 0x13 (F = 0x1d, 0x4a98) and
  passes the batch on with the group-31 transfer at 0x4a93; its output is the batch unchanged.
- `mgeb_DebugDrain` (`debug.S` lines 146-199, at 0x4a9c): **inferred**, a command that consumes its operands and
  waits: it takes one command word into address register 0x1a (0x4a9c), reads two more and discards them (0x4a9d,
  0x4a9e), and waits on the relative group-31 transfer at 0x4aa0. Its
  effect is that the engine drains before the next command.
- `mPrintf` (`debug.S` lines 287-333, at 0x4aa9): **inferred**, the formatter behind the debug buffer; its inputs are
  the format words at register 0xb. It saves eleven
  words to 0x17df-0x17e9 with `r95` = 8 stores (0x4ab0-0x4b1d), then copies six words from register 0xb's address to
  register 0xa's, one lane and thread at a time (0x4ac7-0x4afa). It reads ERAM 0x1389 and the word at 0x17f3
  (0x4afd-0x4b05), shifts and ANDs them (0x4b04, 0x4b0c) and selects a branch on the result (0x4b18). Its output
  starts with the staged header words 0x401, 0, 0x2103000 and 0x42200000 (0x4b41-0x4b46).

## Host read-back and output DMA (hostio.S)

Read from the [hostio.S listing](ge_listing/hostio.S.lst) (`ge.u`, IRIX 6.5.30m). These handlers program the
host-interface output DMA through raster-bus register writes, or send data to the output window, register 0x1e
(0xffff0000 from `bootstrap.s` 0x000e). A bus write puts a register number from [RM.h](../RM.h) on bus address 0x1f7
and the value on 0x1f5, and 0x1f4 closes the command ([rm.md](../docs/rm.md#data-path)). Board register numbers:
0x440 `HIP_ODMA_CHANNEL`, 0x460-0x464 the second channel's page number, offset, length, total and overflow, 0x476
the shadow read port.

- `mgesi_StartRdata` (`hostio.S` lines 346-396, at 0x6a57): **inferred**, starts a pixel read-back on the second
  output-DMA channel. It stages the register numbers 0x477, 0x440, 0x463, 0x464, 0x460, 0x461, 0x462 and 0x476 and the
  values 1 and 0x400 (0x6a58-0x6a66), then sends index-value pairs to 0x1f7 and 0x1f5 (0x6a60-0x6a77). The values
  are its inputs: the three command words (A = 0x1f, D = 0-2) for page number, offset and length, and channel select
  1. It combines each register number with its value into one bus write, and the result is a programmed channel; it
  waits at 0x6a70 and closes with 0x1f4 (0x6a78).
- `mgesi_FinishRdata` (`hostio.S` lines 409-467, at 0x6a32): **inferred**, the matching end of a read-back. It takes
  two command words (0x6a34, 0x6a35) and combines the same register numbers with values, 4 in place of the channel value 1
  (staging word 8, 0x6a40), followed by three more 0x1f5 words of register 0x1e, 0x1e and 0x1e plus 1 (0x6a4f-0x6a55),
  which produces the closing state of the channel; it ends with a group-31 transfer to 0x6c45 (0x6a4e).
- `mgesi_SlopReadWord` (`hostio.S` lines 320-333, at 0x6a79): **inferred**, reads one word through the shadow port. It
  takes a command word as operand, sends 0x476 on 0x1f7 and that word on 0x1f5 (0x6a81-0x6a84), which selects the
  slot; its output is the word the raster side returns for that slot, and it closes with 0x1f4.
- `mgesi_SR2ODMA` (`hostio.S` lines 256-273, at 0x6a9e): **inferred**, the same port read. It takes the shadow
  register's number from the first command word into register 0x13 (0x6a9e). It adds 0x10000 to that number twice (0x6aa6,
  0x6aaa), which selects the register field of the port word, and sends the result to 0x1f5 after 0x476 on 0x1f7
  (0x6aab-0x6aae).
- `mgesi_LastVertex2ODMA` (`hostio.S` lines 286-308, at 0x6a86): **inferred**, sends a stored vertex record to the
  host. It takes a count from the command into register 0x12 (0x6a8b) and selects the record with register 0x13
  (0x6a87, 0x6a89). After 0x476 goes on 0x1f7 (0x6a8c, 0x6a8d), a two-word loop counts register 0x12 down (F = 0x20,
  0x6a8f-0x6a91); then each record word read through register 0x13 is moved to the output window (0x6a98, 0x6a99),
  with register 0x13 stepped by 1 (0x6a96).
- `mgesi_LoadEram` (`hostio.S` lines 224-241, at 0x6ab0): **inferred**, loads external memory from the command
  stream. It derives the copy's operands from the command and calls `mWramToEram` (0x6ab0) with register 1 = the first command word (the ERAM address, 0x6ab1),
  register 2 = the count less one (F = 0x20, 0x6ab3) and register 0 = the input pointer plus 1 (0x6ab4), so the
  payload words are its input and the copy into ERAM its result. It then writes 0x70000 to 0x1f8 and the closing word
  (0x6abe-0x6ac1).
- `mgeb_LoadEram` (`hostio.S` lines 200-211, at 0x6ac2): **inferred**, the batch form: it derives the same address,
  count and source operands (0x6ac2-0x6ac6) and the call copies the payload into ERAM, and it takes one more command word (0x6ac9) but sends no bus words; the
  result is only the copy.
- `mgesi_WramFifo2ODMA` (`hostio.S` lines 162-185, at 0x6ad4): **inferred**, copies command payload to the output
  window. It loads register 0x13 with the input pointer plus 0, 1 and 2 in lanes 0, 1 and 2 (0x6ad8-0x6ada; each of those words also selects the
  next lane), so each lane reads its own input word; it takes the count into register 0x12 (0x6ad6) and sends 0x476 (0x6add). The loop
  counts down (0x6ae0-0x6ae2) while words read through register 0x13 at offsets 0 and 3 go to output word 1
  (0x6ae8, 0x6ae9), register 0x13 stepping by 6 (0x6ae7). The closing words AND with register 0x1e (code 0x58,
  0x6aeb, 0x6aed).
- `mgesi_Eram2ODMA` (`hostio.S` lines 137-149, at 0x6af0): **inferred**, sends an ERAM block to the host. Its operands
  are the ERAM address (register 0x13, 0x6af0, 0x6af2) and a count (register 0x12). The loop reads six words per pass
  with `r95` = 0x14, 0x15, 0x16, 0x14, 0x15, 0x16 at register 0x13 plus 0 to 5 (0x6afc-0x6b06), two per lane, and
  each lane's word goes to output word 1 (0x6b08, 0x6b0d). It selects the lanes in that order, so the result leaves in
  address order; register 0x13 steps
  by 6 (F = 0x19, 0x6b0a).
- `mgesi_Cram2ODMA` (`hostio.S` lines 115-126, at 0x6b13): **inferred**, the control-memory twin. It takes the CRAM
  address and count as operands (0x6b13, 0x6b1a), sends 0x476 (0x6b1c, 0x6b1d), and its loop reads CRAM words with
  `r95` = 0x10, 0x11 and 0x12, one per lane, at register 0x13 plus 0-3 (0x6b22-0x6b25), and selects each lane's word
  in turn, producing the block on the output window.

## Clears (clear.S)

Read from the [clear.S listing](ge_listing/clear.S.lst) (`ge.u`, IRIX 6.5.30m). Each clear handler converts the clear
value from the command into the raster format and writes it as raster-bus registers: the register number goes on
bus address 0x1f7 (or 0x1f8 for a high half), the value on 0x1f6 or 0x1f5, or through `r95` = 0x20 stores, which
take a unit result into the engine's conversion-and-merge block. Register numbers from [RM.h](../RM.h):
0x1c09 `IMP_DEPTH_CLEAR`, 0x1c12 `IMP_CLEAR_COLOR` and 0x1c13 its second word. Float constants are written as their
values.

- `mgesi_ClearColor` (`clear.S` lines 45-71, at 0x91cf): **inferred**, the RGBA clear colour. It takes the four
  components from command words 0-3 (A = 0x1f), multiplies each by the scale it reads from control word 0xc5 into
  register 0x1c (0x91d2; multiplies 0x91d8-0x91e1), and sends the products through `r95` = 0x20 stores after
  0x1c12 and 0x1c13 on 0x1f7 (0x91d4, 0x91dc). The output is the two clear-colour words, red and green in the first
  and blue and alpha in the second.
- `mgesi_ClearLA16` (`clear.S` lines 99-138, at 0x91b7): **inferred**, the luminance-alpha clear for 16-bit
  luminance-alpha visuals. Its inputs are the command's luminance and alpha; it multiplies the first by the 0xc5
  scale (0x91bf) and by the staged 16.0, 4096.0 and 15.999999 (0x91b8, 0x91bc, 0x91be), so the result is a value
  spread over the fields of both 0x1c12 and 0x1c13 (0x91c0, 0x91ba, sends 0x91c3-0x91cc).
- `mgesi_ClearIndex` (`clear.S` lines 166-190, at 0x91a9): **inferred**, the colour-index clear. It takes the index
  from command word 1, converts it to float (unit-1 code 0x73, 0x91af) and multiplies it in the word at 0x91b4,
  next to the staged 0x400c0000 (0x91ae). Its output is the product, sent as the 0x1c12 value (0x91b0-0x91b4).
- `mgesi_OverlayClearColor` (`clear.S` lines 212-248, at 0x9190): **inferred**, the clear colour of an overlay
  visual. It takes the four command components and multiplies them by the staged scales 1.9999999, 7.9999995 and
  31.999998 (0x9194-0x9198; products 0x9199-0x919f) and combines the results with the staged field words 0x11000, 0x51100, 0x50700, 0x30400 and
  0x40021600 (0x9190-0x9195) in five 0x1c12 data stores (0x91a3-0x91a7).
- `mgesi_OverlayClearIndex` (`clear.S` lines 277-341, at 0x9157): **inferred**, the overlay colour-index clear. It
  compares command word 2 with a staged 8 (subtract with flags, 0x9170) and selects one of two paths (0x9165): one
  scales the index operand by 1/256 (0x3b800000, 0x9171) with field words 0x40080400 and 0x81000, the other by
  1/16 (0x3d800000, 0x9181) with 0x40000 and 0x41400. Either result is written as 0x1c12.
- `mgesi_ClearDepth32` (`clear.S` lines 363-396, at 0x9138): **inferred**, the 32-bit depth clear. It takes the depth
  from command word 0 and multiplies it in double precision (unit-2 code 0x07, 0x9144) by 4294967295.99, the staged
  pair 0x41efffff, 0xffffffff (0x9142, 0x9143), which converts a [0, 1] depth to a 32-bit integer. The result goes
  out with 0x70000 on 0x1f8 (0x9140, 0x9146) as the value of `IMP_DEPTH_CLEAR` (address word 0x013a1c09, 0x9139),
  with `TFP_AMASK` 0x1408 (0x913a) and a second pair at 0x9150-0x9154.
- `mgesi_ClearAccum` (`clear.S` lines 424-465, at 0x911b): **inferred**, the accumulation-buffer clear. It takes the
  clear value from command word 0, multiplies it by 16777215.0 (0x4b7fffff, 0x911e; 0x9120) and converts the product
  to an integer (code 0x71, 0x9124). It then masks the result with 0xfff, 0xf000, 0xf0000 and 0x1f00000 and shifts
  by 0xc and 4 (0x9128-0x9130), which packs the 24-bit value into fields of the two clear-colour words 0x1c12 and
  0x1c13 (sends 0x9131-0x9136).
- `mgesi_ClearAccum32` (`clear.S` lines 487-530, at 0x90f8): **inferred**, the same accumulation clear for 32-bit
  components. It takes command word 0 (0x90fb) and adds a double-precision multiply by the staged pair 0x41dfffff, 0xff800000, about 2^31 (0x90fd,
  0x90fe; code 0x07 at 0x90ff, 0x9100), and its packing (0x9109-0x9113) produces the 0x1c12 and 0x1c13 values.
- `mgesi_ClearAccumWord` (`clear.S` lines 551-581, at 0x90ea): **inferred**, a one-word clear of the accumulation
  buffer through `IMP_DEPTH_CLEAR`: it stages 0x1c09 (0x90f0) and 0x40200000 (0x90ed), multiplies its operand by
  16777215.0 (0x90f1, 0x90f2), and sends the result to 0x1f6 (0x90f5, 0x90f6).
- `mgesi_ClearAccumWord32` (`clear.S` lines 603-641, at 0x90c4): **inferred**, the 32-bit form of the one-word
  accumulation clear. It takes command word 0 and applies unit-1 code 0x75 to it (0x90c4; the code has no reading
  of its own yet), multiplies in double precision by
  the 2^31 pair (0x90c6-0x90c9), shifts by 0x10 (0x90d1-0x90d3) and writes the result as `IMP_DEPTH_CLEAR` (0x90dc,
  0x90dd).
- `mgesi_ClearVertex` (`clear.S` lines 658-708, at 0x90a3): **inferred**, the set-up for a clear drawn as geometry. It
  takes command words 3 and 4 (0x90a5, 0x90a6) and words 1 and 2, which it converts to float and stores to control
  words 0xcd and 0xce (code 0x73, 0x90b5, 0x90b6). It writes control word 0xd5 from the 0x800 it stages (0x90b2) and
  multiplies the colour by register 0x1c (`r95` = 0x33 stores to 0xc9-0xcc, 0x90be-0x90c2), so the result is a
  vertex in the control words the triangle path reads.

## Short-circuit pixel conversions (mshortcircuit.S)

Read from the [mshortcircuit.S listing](ge_listing/mshortcircuit.S.lst) (`ge.u`, IRIX 6.5.30m). The twelve `mmo_short*`
modules are the pixel-path stages the ARM chains in through `geif.u` slots 318-327, 436 and 437 when a pixel transfer needs
no float stage. Each copies the output record words 0x161-0x169 into the staging words with `r95` = 0x13 reads, loads its
address registers from them with `r217` = 1, puts four field shift counts in unit registers 2-5, and then picks one of three
exits: `mLASTGE` when `cc` 0x7e holds (the engine that carries the last piece), a full-block merge when `cc` 3 holds, and
otherwise the last-block merge. Unit-1 code 0x5d is a logical shift right ([ge_ops.md](ge_ops.md)), so a conversion
between component widths keeps the high bits of each source field.

- `mMerge8_16C` (`mshortcircuit.S` lines 1352-1479, at 0x9a10): **inferred**, the full-block shift loop. Each pass takes 32
  input words through address register 0x10 (D = 0-0x1f) and produces 32 results, each its input shifted right (code 0x5d)
  by unit register 2, 3, 4 or 5 in turn (`r148` = 2-5, 0x9a16-0x9a3a), stored with `r213` = 3. It counts address
  register 5 down (0x9a15), adds 0x20 to register 0x10 (0x9a37), loops on `cc` 0x14 and goes on to `mMerge8_16C_LastBlk`
  on `cc` 3 (0x9a33).
- `mMerge8_16C_LastBlk` (`mshortcircuit.S` lines 1491-1553, at 0x99f5): **inferred**, shifts the closing block the same way:
  16 input words per pass (D = 0-0xf, 0x99fb-0x9a0e), each output word the input moved right by the register-2-to-5 count
  for its column, with address register 6 as the pass count (0x99fa) and register 0x10 advanced by 0x10 (0x9a0b).
- `mMerge4_8C` (`mshortcircuit.S` lines 494-604, at 0x9a57): **inferred**, the widening loop, which shifts each input twice. A word that reads input (form
  9, A = 0x10) alternates with one that does not (form 10), so each input word yields two outputs: word k is shifted right by
  registers 2 and 3 when k is even and by 4 and 5 when k is odd (0x9a5d-0x9a80). Sixteen inputs give 32 results per pass;
  register 5 counts passes (0x9a5c), register 0x10 steps by 0x10 (0x9a7d) and `cc` 3 sends the rest to
  `mMerge4_8C_LastBlk`.
- `mMerge4_8C_LastBlk` (`mshortcircuit.S` lines 616-676, at 0x9a3d): **inferred**, the closing pass of the widening loop:
  eight input words (D = 0-7) give sixteen results by the same two-shifts-per-input pattern (0x9a43-0x9a55), counted by
  address register 6 (0x9a42), with register 0x10 moved on by 8 (0x9a52).
- `mmo_short16toRGB5A1` (`mshortcircuit.S` lines 1177-1240, at 0x988b): **inferred**, converts 16-bit components into the
  RGB5A1 fields. It takes the record and stages 0xb at staging offset 0xf and 0xf at 0xe (0x98a1, 0x98a4) and moves them into the shift
  registers (0x98a3, 0x98a8), so the merge outputs keep the top five bits of red, green and blue (16 - 11) and the top bit
  of alpha (16 - 15).
- `mmo_short8toRGB5A1` (`mshortcircuit.S` lines 1081-1145, at 0x98b0): **inferred**, converts 8-bit input to the same
  packing. Its staged counts are 3 and 7 (0x98c6, 0x98c9), so each output keeps five bits of a colour byte and one bit of alpha.
- `mmo_short16to8` (`mshortcircuit.S` lines 891-951, at 0x991e): **inferred**, converts 16-bit components to bytes: the one
  count it stages is 8 (0x9934), copied into the shift registers at 0x9936-0x993c, and `mMerge8_16C` then shifts each input to its byte result.
- `mmo_short16to4` (`mshortcircuit.S` lines 798-858, at 0x9943): **inferred**, takes 16-bit components and converts each to
  a four-bit result, with the shift of 0xc staged at 0x9959.
- `mmo_short8to4` (`mshortcircuit.S` lines 705-765, at 0x9968): **inferred**, converts byte input to nibble outputs: 4 is the
  shift count it writes to staging offset 0xf (0x997e).
- `mmo_shortLA16toL12A4` (`mshortcircuit.S` lines 984-1048, at 0x98d5): **inferred**, takes 16-bit luminance-alpha input and
  converts it into the L12A4 texel output. Luminance is shifted right by 4 (staged at 0x98eb) to leave twelve bits and alpha by
  0xc (0x98ee) to leave four.
- `mmo_shortLA8toL12A4` (`mshortcircuit.S` lines 409-469, at 0x98fa): **inferred**, converts byte input to L12A4. It
  sets one count register from the staged 4 (0x9911, 0x9912) and the others by moves (0x9916, 0x9917), and exits to the
  widening merge `mMerge4_8C`, so each input word gives two output fields.
- `mmo_short8to16` (`mshortcircuit.S` lines 318-376, at 0x998d): **inferred**, converts byte components into 16-bit fields.
  It stages no count: all four shift registers are loaded by moves from one register (`r148` = 0x3c0, 0x999f-0x99a9), and
  it hands the words to `mMerge4_8C` (0x99a6), which writes two outputs per input.
- `mmo_shortBGRApass` (`mshortcircuit.S` lines 1269-1328, at 0x9868): **inferred**, the BGRA pass, which shifts by zero: it loads the shift
  registers by the same register moves as `mmo_short8to16` (0x987a-0x9884), copies eight record words (0x161-0x169) and
  uses `mMerge8_16C`, one output per input.
- `mmo_shortpass8W` (`mshortcircuit.S` lines 172-287, at 0x99b0): **inferred**, copies words through unchanged, so each output equals its input and nothing converts. Its loop
  at 0x99d3-0x99e0 moves eight input words per pass (code 0x4a, D = 0-7) to the output, with address register 0xf counting
  passes and register 0x10 stepping by 8; the remainder runs four words at a time from 0x99e3, counted by register 0xe.
  No shift or merge stage is involved.
- `mmo_Short_Complex_To_16` (`mshortcircuit.S` lines 1734-1783, at 0x9805): **inferred**, converts complex (real, imaginary)
  pairs from the FFT stages into 16-bit pixels. It reads control word 0x165 into unit register 0x1c (0x9809), and its loop
  (0x9825-0x9831) takes the even input words only (D = 0, 2, ... 0xe), which are the real parts, shifting each right by
  that count. Eight results per pass, address register 0xf counting down, register 0x10 advanced by 0x10.
- `mmo_Short_Complex_To_8` (`mshortcircuit.S` lines 1618-1689, at 0x9833): **inferred**, takes complex input and converts it to byte output: the same
  real-part selection and register-0x1c shift, but each pass covers sixteen pairs, half through register 0x10 (0x9854-0x985c)
  and half through register 0xc, which it sets to register 0x10 plus 0x10 (0x985d-0x9866, 0x9853).

## X server drawing entries (xentry.S)

Read from the [xentry.S listing](ge_listing/xentry.S.lst) (`ge.u`, IRIX 6.5.30m). These are the command handlers for the X
server's direct point, line, segment, rectangle and span requests. A command word carries two signed 16-bit window
coordinates; the handlers mark the request type in the words at register 0x1c plus 0x2c-0x2f (moves of unit register 0x1d
or 0x1e, `r148` = 0x3a0 or 0x3c0), point registers 0x19 and 0x1a at the operands (C = 0x1d), and hand the coordinates to
`mAbsX` or `mRelX`, which convert them and chain to the clip-and-draw modules of
[xclipdraw.S](ge_handlers.md). Unit-1 code 0x5f shifts left, 0x5b shifts right arithmetically, 0x40 is the integer add and
0x73 integer-to-float ([ge_ops.md](ge_ops.md)).

- `mAbsX` (`xentry.S` lines 496-534, at 0x52c4): **inferred**, converts absolute X coordinates into float vertices. It
  takes each packed operand word (A = 0x11) and splits it by a left shift and an arithmetic right shift by the count
  staged in unit register 0x1c (0x52cd-0x52d3), which sign-extends the two 16-bit halves; it adds the window origin read
  from control words 7 and 8 (code 0x40, 0x52d4-0x52d7), converts the sums to float (code 0x73) and stores the results
  into vertex words 0, 1, 6 and 7 through register 0x13 (0x52d8-0x52db). After the loop it selects `mmo_XclipDrawRects` on
  `cc` 0x7c, `mmo_XclipDrawLines` on `cc` 0x7a and otherwise `mmo_XclipDrawPoints` (0x52dd-0x52df).
- `mRelX` (`xentry.S` lines 549-581, at 0x52a3): **inferred**, the CoordModePrevious form: it takes the same packed
  operands through register 0x13, unpacks them with the 0x5f and 0x5b shifts (0x52ac-0x52b0), adds the origin words 7 and
  8 (0x52aa, 0x52ab) and each previous result, and stores the float outputs through register 0x11 (0x52b7, 0x52b8),
  looping back to 0x52ac. Its exits are only the line drawer (`cc` 0x7a) and the point drawer.
- `mgesi_XPoint` (`xentry.S` lines 51-64, at 0x5293): **inferred**, PolyPoint with absolute coordinates. It takes its
  operand count in register 0x19 and copies it to 0x12 (0x529f), writes the three type words 0x2c-0x2e from
  unit register 0x1e (0x5293-0x5295) and jumps to `mAbsX` (0x529a), which converts the points and yields
  `mmo_XclipDrawPoints`.
- `mgesi_XPointRel` (`xentry.S` lines 78-90, at 0x5284): **inferred**, PolyPoint in CoordModePrevious. It takes
  offsets rather than positions and converts them with `mRelX` (transfer at 0x528a), which adds each offset to the
  point before it; the outputs go to `mmo_XclipDrawPoints`. Of the type words it sets only the first two, from
  unit register 0x1e.
- `mgesi_XBgPoint` (`xentry.S` lines 104-117, at 0x5274): **inferred**, points drawn with the background. It takes the same operands and differs from
  `mgesi_XPoint` in taking word 0x2c from unit register 0x1d instead of 0x1e (0x5276), then converts through `mAbsX`
  (0x527b) to the point output.
- `mgesi_XBgPointRel` (`xentry.S` lines 131-143, at 0x5265): **inferred**, the background point request in relative
  coordinates: word 0x2c from register 0x1d and 0x2d from 0x1e (0x5265, 0x5266), operands that `mRelX` (0x526b) converts into point results.
- `mgesi_XLine` (`xentry.S` lines 439-454, at 0x5196): **inferred**, PolyLine with absolute vertices. It writes 0x2f and
  0x2d from register 0x1d and 0x2e from 0x1e (0x5196-0x5198), takes the vertex count from operand register 0x19 minus one
  (F = 0x20 at 0x51a2, the segment count of a polyline) and transforms the points through `mAbsX`, whose `cc` 0x7a exit
  produces lines.
- `mgesi_XLineRel` (`xentry.S` lines 468-482, at 0x5187): **inferred**, PolyLine in CoordModePrevious. It takes relative vertex input with the same type words
  except 0x2e (0x5187, 0x5188) and the same count minus one (0x5192), with `mRelX` as the converter (0x518d); the output is a line strip whose vertices `mRelX` computes as running sums.
- `mgesi_XSegment` (`xentry.S` lines 370-391, at 0x51bd): **inferred**, PolySegment: each segment is two independent
  endpoints, so it stages 1 and shifts the operand count right by it (code 0x5d, 0x51c1-0x51c3), giving the number of
  segments as the loop count it loads into register 0x12 (0x51cc). It sets 0x2f and 0x2e from register 0x1e and 0x2d from
  0x1d, then converts through `mAbsX` (0x51cb), whose line exit produces the segments.
- `mgesi_XSegmentRel` (`xentry.S` lines 405-425, at 0x51a6): **inferred**, the relative-coordinate segment request. It takes the
  halved count of `mgesi_XSegment` (0x51aa-0x51ac), type words 0x2f and 0x2d only (0x51ae, 0x51af), and `mRelX` to
  compute the vertex results (0x51b4).
- `mgesi_XBox` (`xentry.S` lines 252-269, at 0x520c): **inferred**, rectangle outlines: it halves the operand count as
  the segment handlers do (0x5210-0x5212), writes only word 0x2e from register 0x1d (0x5215) and converts the corner
  pairs with `mAbsX` (0x521a), whose `cc` 0x7c exit sends the results to the rectangle drawer.
- `mgesi_XRect` (`xentry.S` lines 163-238, at 0x5223): **inferred**, PolyFillRectangle with its own conversion loop
  (0x523d-0x525b). It takes x, y from one operand word and width, height from the next, splits each with the 0x5f and 0x5b
  shifts by unit register 0x19, masks with the 0xffff it stages (0x5237; AND code 0x50 at 0x5240, 0x5247), adds the
  origin words 7 and 8 (0x5246-0x5251) and converts to float (code 0x73), and stores four results per rectangle through
  register 0x10 (0x524e-0x525a) before ending in `mmo_XclipDrawRects` (0x525c).
- `mgesi_XSpans` (`xentry.S` lines 290-356, at 0x51d4): **inferred**, fill spans: each span is a packed (x, y) operand and a
  width. The loop at 0x51ea-0x5202 unpacks the point with the shift pair, adds the origin from control words 7 and 8
  (0x51f0, 0x51f3, 0x51f5, 0x51f6), converts point and width with code 0x73, and stores four outputs per span through
  register 0xf (0x51f8-0x5201), so each span becomes a one-pixel-high rectangle for `mmo_XclipDrawRects` (0x5203).

## Per-primitive material lighting (primmtrllight.S)

Read from the [primmtrllight.S listing](ge_listing/primmtrllight.S.lst) and the lane-modelled decompile of each label
(`ge.u`, IRIX 6.5.30m). These labels serve `glMaterial` calls made between `glBegin` and `glEnd`: the general lighter
reaches them through `mLiPrimMtrlInit`. Most of their work is choosing which lighting step runs next. They write code
addresses into the lighting code's own jump words in control memory (0x91-0x9e) and into the staged-address words at
register 5 plus 6-8, and the general lighter's accumulate and final steps ([generallight.S](#general-lighting-generallights))
transfer through those words. The decompile reads some registers one word early, so the order of terms below comes from
the listing.

- `mLiPrimShinLoop` (`primmtrllight.S` lines 218-402, at 0xd60e): **inferred**, the per-vertex material decode. It takes
  the change mask the vertex carries (staging word 0xc), converts it to an integer (code 0x71) and ANDs it with the staged
  0x3f (0xd613, 0xd614), so its result selects which of the six material fields this vertex changes. It copies control
  words 0x88 and 0x89 into the record (0xd616 onward), stores `mLiPrmMtrlFrntClrAccmEnd` as the next front-colour step
  and records the mask in control word 0x86 under a predicate, then hands on through the jump words.
- `mLiPrmMtrlFrntClrAccmEnd` (`primmtrllight.S` lines 430-456, at 0xd690): **inferred**, the end of the front-colour sum
  for a material vertex. It takes the colour accumulated by the light loop and adds the material terms at register 5 plus
  0x32-0x34 (front) and register 6 plus 0x32-0x34 (back) to it; when bit 2 of the tested word is set it returns at once,
  leaving `mLiLocLiFrnClrAccum` as the next step (control word 0x9c).
- `mLiPrmMtrlBackClrInitAccm` (`primmtrllight.S` lines 487-545, at 0xd676): **inferred**, starts the back-face colour
  accumulation. It compares the input against control word 0xa0 (code 0x6a) and then selects the steps that follow: it
  stores `mLiEndPrimShinLp` to word 0x91, `mLiPrmMtrlBackClrAccmEnd` to 0x9e and `mLiLocLiFrnClrAccum` to 0x9c, so the
  output of this label is the next chain of the back-face pass.
- `mLiPrmMtrlBackClrAccmEnd` (`primmtrllight.S` lines 561-582, at 0xd667): **inferred**, closes the back-colour sum by
  rewriting two jump words, which selects the next steps: its results are `mLiBackClrAccum` in word 0x93 and `mLiPrmMtrlBackClrInitAccm` in 0x9d, which
  it takes from the two addresses it stages at register 5 plus 6 and 7. No arithmetic is done.
- `mLiPrimMtrlCpFrntEnd` (`primmtrllight.S` lines 1099-1154, at 0xd6a7): **inferred**, selects the material copy steps
  for the front face. It computes record word 0x25 from word 0x24 (code 0x4c), takes the two staged addresses and writes
  them to jump words 0x94-0x97 under predicates set by the change mask, so each changed field is routed to the copy
  step and the rest to the plain one, and those words are its output; word 0x98 gets the entry at register 5 plus 0x35 indexed by register 0x16.
- `mLiPrimMtrlCopyEnd` (`primmtrllight.S` lines 1174-1270, at 0xd6c4): **inferred**, the end of the material copy. It
  takes the mask and shifts the four mask words at staging 0xc-0xf right by the staged 6 (code 0x5d), the result being the next vertex's
  six-bit field mask, adds control word 0x85 into the material colours at register 5 and 6
  plus 0xe-0x10, and stores `mLiPrimShinLoop` as the next step with 0x54 as its count.
- `mLiPrimMtrlFinalLi` (`primmtrllight.S` lines 737-802, at 0xd726): **inferred**, chooses the final-lighting copy. It
  stages `mLiPrimMtrlCopyCmpn` and `mLiPrimMtrlCopyStckCmpn`, takes the mask in staging word 4, ANDs it with 0x3f and
  selects one or the other address for jump words 0x94 and 0x95 by predicate, after converting the input count to an
  integer (code 0x71); its output is the copy routine each material field runs.
- `mLiPrimMtrlCopyStckCmpn` (`primmtrllight.S` lines 831-993, at 0xd745): **inferred**, copies material components field by
  field. Each pass of its loop takes the field mask (record word 0xf), shifts it by one (code 0x51 with a zero count
  register), and when the bit is set copies the four colour inputs held in unit registers 5-8 to both material copies,
  through address registers 0 and 1, then steps them by register 0xb; the result is the mask with that field consumed.
- `mLiPrimMtrlCopyCmpn` (`primmtrllight.S` lines 1027-1052, at 0xd786): **inferred**, the single-field copy: it subtracts
  unit register 0xa from 0xb (integer subtract) into record word 0x25, ANDs the mask with register 9 into word 0xf and
  writes the four colour inputs (registers 5-8) to the two material blocks at address registers 0 and 1 as its output.
- `mLiFinalLiEqu` (`primmtrllight.S` lines 1501-1638, at 0xd796): **inferred**, evaluates the final lighting equation for a
  vertex whose material changed. It takes the material words at address register 0 plus 7, 8, 0xa, 0xb and 0xf and the
  sums at register 5 plus 0xf and 0x10, and multiplies and adds them per colour component in its loop; the result is the lit
  colour. It starts by copying staging words 0 and 1 to record words 0xb and 0xf.
- `mLiEndPrimShinLp` (`primmtrllight.S` lines 604-703, at 0xd7d9): **inferred**, the end of the per-vertex material loop.
  It takes no operands; it stores 0xd7e9 as its own continuation, clears register 5 plus 9 with code 0x46, restores the address saved in control
  word 0x9a to register 5 plus 0xb, and returns when `cc` 0x7f holds; otherwise it selects the next step by `cc` 0x7e and
  writes it to jump word 0x9e as its result.
- `mLiColorMtrlCopy` (`primmtrllight.S` lines 1396-1473, at 0xd808): **inferred**, the `glColorMaterial` copy: it takes
  the vertex colour through address register 8 (offset 7) and writes it into the tracked material fields at register 5
  plus 0x1d and register 9 plus 0x1b, two faces in turn (count 2), and selects which fields receive it from the mask; record word 0x2a gets the output marker.
- `mLiClrMtrlFinalLi` (`primmtrllight.S` lines 1291-1378, at 0xd831): **inferred**, the final step when colour material is
  on. It takes record word 0xf, saves it to staging word 1, sets it to control word 0x85 and adds that ambient term to the
  material colours at register 5 and 6 plus 0xe-0x10, then runs the two-face copy of `mLiColorMtrlCopy` so the output
  colours include the tracked vertex colour.

## General lighting (generallight.S)

Read from the [generallight.S listing](ge_listing/generallight.S.lst) and the lane-modelled decompile of each label
(`ge.u`, IRIX 6.5.30m). `mmo_LighterGeneral` is the vertex module the dirty-light module chooses for full OpenGL lighting
([glmodes.S](#gl-mode-handlers-and-the-dirty-modules-glmodess)). Its labels are steps of one per-vertex pipeline that
reach each other through the lighting jump words in control memory 0x9c-0xa0 and the staged addresses at register 5
plus 6 and 7, as in [primmtrllight.S](#per-primitive-material-lighting-primmtrllights). Address registers 8 and 9 point
at the two vertex records a pass lights, registers 5 and 6 at the front and back material blocks, and 0 and 1 at the
front and back colour sums. Unit-1 code 0x7c clamps to [0, 1]; what code 0x6c, which these labels apply with the same operand on both ports, does is
not read here.

- `mmo_LighterGeneral` (`generallight.S` lines 129-257, at 0xd85e): **inferred**, the module entry. Unless `cc` 0x2a
  holds, it takes the vertex flags (staging words 3 and 4), ANDs word 3 with control word 0x84, writes control word 0xa1
  and the address of `mLiIrisColoring` into data words 0x8700-0x8703, and selects `mLiPrimMtrlInit` when the flag word
  shares a bit with control word 3 (material changes inside the primitive). Otherwise it copies the vertex's colour
  words (address register 7 plus 3-5) to record word 0xb and data words 0x8561-0x8562, its output for the light loop.
- `mmo_LiColorMask` (`generallight.S` lines 35-95, at 0xd87e): **inferred**, applies the colour write mask to lit
  colours. It stages 16.0, multiplies each input colour component of the two records by it, converts the products to
  integers (code 0x71), ANDs them with the mask word at register 0x16 minus 0x20, and converts the results back to float
  (code 0x73) into record words 0x1b-0x1d of both vertices; its loop runs register 0x19 minus one times.
- `mLiVtxLoop` (`generallight.S` lines 284-354, at 0xd8a0): **inferred**, the head of the per-vertex light loop. It takes
  the vertex colour words (register 7 plus 3-5) into record word 0xb and material words 0x39 and 0x3a, selects
  `mLiBackClrInit` and `mLiLocLiFrnClrInit` as the next steps (jump words 0x9d and 0x9c), copies control words 0x88 and
  0x89 into material words 0x25 and 0x24, and outputs register 5 plus 1 to jump word 0x9f.
- `mLiDirtyLocLiVwrLiSrcInit` (`generallight.S` lines 373-431, at 0xd9a2): **inferred**, re-selects the light-source and
  viewer cases after a state change. It takes the light's flag word and stages the addresses of `mLiInfVInfLi`, `mLiLocVInfLi`, `mLiLocalLight`,
  `mLiLocVInfLiInit`, `mLiInfVInfLiInit` and `mLiLocalViewer` in a table at address register 0 plus 2-7, compares the
  flag word with them (code 0x6a) and writes the chosen per-light routine to jump word 0xa0, its result.
- `mLiNoLightSrc` (`generallight.S` lines 462-502, at 0xd901): **inferred**, the case with no light enabled, which selects a zero light term. It takes the
  zero in unit register 0x1e and writes it to the colour-sum words 0xe-0x13 of both material blocks (registers 5 and 6),
  so the output colour is the emissive and ambient part alone; it copies jump word 0x9e into 0x9d.
- `mLiInfVInfLiInit` (`generallight.S` lines 566-771, at 0xd9f7): **inferred**, the first light pass for an infinite
  light and an infinite viewer. It takes the vertex normals and computes the diffuse dot product of each vertex normal (record words 0xf and 0x10 at
  registers 8 and 9) with the light direction (registers 3 and 4) plus the light's offset term, clamps it with code 0x7c,
  multiplies it by the light colour as the pass's result, and selects `mLiLocLiFrnClrAccum` for the next light (register 5 plus 7).
- `mLiLocalViewer` (`generallight.S` lines 817-907, at 0xd8bc): **inferred**, the local-viewer geometry for one light.
  It takes the eye-space positions (record words 0x13-0x15 of each vertex) as input and computes the squared length of the view
  vector, its reciprocal square root refined by one Newton step ((3 - x y^2) / 2), and the reciprocal of record word 0x16
  (w) by the two-step 1/x (2 - x / x) form, and stores the normalised results in material words 0x2f, 0x30 and 0x32.
- `mLiLocLiFrnClrInit` (`generallight.S` lines 1142-1273, at 0xd943): **inferred**, the first front-colour pass for a
  local light. It takes the per-light terms at material word 0x2d and 0x2c, clamps each with code 0x7c, applies code 0x6c to them,
  and initialises the front colour sums of both vertices; those sums are its result.
- `mLiLocLiFrnClrAccum` (`generallight.S` lines 947-1100, at 0xd9c1): **inferred**, adds each further local light to the
  front colour. Its inputs are the same clamped terms; it takes the maximum of material word 0x2c and zero for the
  diffuse factor and adds the weighted light colour to the front sums, the result being the running front colour.
- `mLiBackClrInit` (`generallight.S` lines 1473-1550, at 0xd91a): **inferred**, starts the back-face colour. It clamps the
  input terms (code 0x7c), takes the larger of each dot product and zero, and multiplies the factors by
  the light colour in unit registers 6-11 into colour-sum words 0x15-0x1a of address registers 0 and 1 as its result; it selects
  `mLiBackClrAccum` as the next step.
- `mLiBackClrAccum` (`generallight.S` lines 1323-1422, at 0xd973): **inferred**, accumulates each further light input into the
  back colour: the same clamped, maximum-with-zero factors multiplied by registers 6-11, now added to the sums already in
  words 0x15-0x1a, so the output is the running total over the lights.
- `mLiFinalLi` (`generallight.S` lines 1583-1739, at 0xda3c): **inferred**, combines the sums into the output colour. For
  each vertex pair it takes the material emissive and ambient words (register 5 plus 0xe-0x10, register 6 plus 0xf),
  adds the light sums, copies the alpha word from register 0xd plus 6 into record word 0x1e of both vertices, and
  writes the lit colour to record words 0x1b-0x1d; record word 0xb gets staging word 0.

## Vertex-array unpacking with lighting inputs (munpack.S)

Read from the [munpack.S listing](ge_listing/munpack.S.lst) (`ge.u`, IRIX 6.5.30m). These are the `m`-module forms of the
[uunpack.s](#vertex-array-unpacking-uunpacks) unpackers for vertex arrays that feed lighting, each a single label holding
set-up and loop. They read the successor word from control word 0xdb (`r95` = 2), take the pass count from register
0x19, point address registers 0xe and 0xf at the two records of a pass (one per thread, the W71 words writing the second)
and step them by register 0x13. The record layout is the uunpack one: w in word 3, colour in 4-7, normal in 8-0xa,
texture s and t in 0xb and 0xc, r and q in 0xd and 0xe. Where an array lacks a part, the module takes the current value
from engine words 0x13a7-0x13aa (colour) or 0x13ab-0x13ad (normal) with `r95` = 0x17 reads.

- `mmo_UnpackVertexV3F_LGT` (`munpack.S` lines 605-615, at 0x5470): **inferred**, positions only, for lit vertices. Its
  inputs are the delivered x, y and z; it takes the current colour and current normal (0x5470-0x547c) and its loop
  (0x5484-0x5493) produces each record by moves alone: w from register 0x1f, colour into words 4-7 and normal into 8-0xa
  of both records. Nothing converts or scales a value.
- `mmo_UnpackVertexV3F_C4UB_LGT` (`munpack.S` lines 632-644, at 0x542c): **inferred**, positions with a packed byte colour.
  It takes the packed colour input, stages the shift counts 0x18, 8 and 0x10 and the scale 1/255 (0x3b808080), splits the colour word with left and
  right shifts (codes 0x5f and 0x5d), converts each byte to float (0x73) and multiplies it by 1/255 into words 4-7;
  the current normal (0x13ab-0x13ad) fills words 8-0xa of the output.
- `mmo_UnpackVertexV3F_T2F_LGT` (`munpack.S` lines 659-671, at 0x53f6): **inferred**, positions and float texture
  coordinates. Every one of its 31 operations is a move (code 0x4a): the s and t input words go to record words 0xb and
  0xc, r and q get 0 and 1 in 0xd and 0xe, and the current colour and normal fill 4-0xa, so the result is a full record
  and nothing computes.
- `mmo_UnpackVertexV3F_C4UB_T2F_LGT` (`munpack.S` lines 689-703, at 0x53a8): **inferred**, takes float texture coordinates in addition to
  the byte colour and converts the colour: the same 1/255 scaling of the shifted bytes (eight multiplies, code 0x47f) gives words 4-7, the
  texture words are moved to 0xb and 0xc, and only the normal is taken from the current state for the output record.
- `mmo_UnpackVertexV3F_T2S_LGT` (`munpack.S` lines 720-734, at 0x5368): **inferred**, short texture coordinates. It stages
  16 (0x10) as a shift count and splits the packed s, t word into two signed halves with one left shift (0x5f) and
  arithmetic right shifts (0x5b), converts them to float (0x73) for the results in words 0xb and 0xc, and takes colour and normal from the
  current state.
- `mmo_UnpackVertexV3F_C4UB_T2S_LGT` (`munpack.S` lines 752-768, at 0x5312): **inferred**, takes byte colour and short texture
  coordinates together and converts both: four shift counts and 1/255 are staged, the colour bytes are converted and scaled (code 0x47f) to
  words 4-7 and the two signed shorts are extended and converted to the texture output; the normal comes from 0x13ab-0x13ad.
- `mmo_UnpackVertexV3F_N3S` (`munpack.S` lines 238-303, at 0x5757): **inferred**, positions with a short-integer normal.
  It takes the current colour (0x5757-0x575d), stages 1/32767 (0x380000fd, 0x5762), and per record splits the packed
  normal into signed shorts (0x5f once, 0x5b twice per word), converts and scales them, and normalises the vector with
  the reciprocal-square-root seed and a Newton step (unit-2 code 0x57, M = 0x57f) before storing the result in words 8-0xa.
- `mmo_UnpackVertexV3F_C4UB_N3S` (`munpack.S` lines 323-336, at 0x56ff): **inferred**, the same normal decode with the
  colour input taken from the array: the bytes are scaled by 1/255 into words 4-7 and the shorts by 1/32767 into 8-0xa, then
  normalised into the output; both scales are staged at entry, so no current state is read.
- `mmo_UnpackVertexV3F_N3S_T2F` (`munpack.S` lines 350-421, at 0x563d): **inferred**, short normal plus float texture
  coordinates: it converts and normalises the normal as `mmo_UnpackVertexV3F_N3S` does, moves s and t to words 0xb and
  0xc, writes r = 0 and q = 1, and takes the colour from 0x13a7-0x13aa for the output record; its loop runs back to 0x564b.
- `mmo_UnpackVertexV3F_C4UB_N3S_T2F` (`munpack.S` lines 440-455, at 0x55da): **inferred**, takes byte colour,
  short normal and float texture input: two staged scales (1/255 and 1/32767) and the shift counts 8, 0x10 and 0x18 feed the
  colour and normal conversions, and the texture words are copied as delivered to the output.
- `mmo_UnpackVertexV3F_N3S_T2S` (`munpack.S` lines 471-549, at 0x5504): **inferred**, takes a short normal and short texture
  coordinates. Both packed words are split into signed halves (16 arithmetic shifts, code 0x5b), converted (24 uses of
  0x73), the normal scaled by 1/32767 and normalised, and the colour output taken from the current state; its loop starts at
  0x5512.
- `mmo_UnpackVertexV3F_C4UB_N3S_T2S` (`munpack.S` lines 573-590, at 0x549e): **inferred**, takes every part packed: byte colour,
  short normal and short texture coordinates. It stages 1/255, 1/32767 and the shift counts, decodes the colour with
  right shifts and the 1/255 multiply, decodes and normalises the normal, and converts the two texture shorts, writing the results
  to words 3-0xe of both records per pass.

## Engine and context initialisation (ge.S)

Read from the [ge.S listing](ge_listing/ge.S.lst) (`ge.u`, IRIX 6.5.30m). These handlers fill engine state with
constants rather than compute from operands; the entries say what each one writes, which is what an emulator needs to
reproduce a freshly initialised engine.

- `mgeb_GlobalInitialize` (`ge.S` lines 49-75, at 0xad66): **inferred**, the one-time engine set-up. It calls
  `mGL_REGS_Initialize`, `mGL_EM_Initialize` and `mGL_LightInitialize` (0xad66, 0xad6f, 0xad78), then stages five raster
  words and sends them to the bus-output addresses 0x1f4-0x1f8 (0x430e0000, 0x42200000, 0x2102000, 0x2103000 and
  0x2202000, staged at 0xad81-0xad85, stored at 0xad8b-0xad8f), and ends the command.
- `mgeb_GLContextInitialize` (`ge.S` lines 85-99, at 0xad39): **inferred**, the set-up of a new OpenGL context: four calls,
  to `mGL_REGS_Initialize`, `mGL_CM_Initialize`, `mGL_EX_Initialize` and `mGL_CtxLightInitialize` (0xad39-0xad54), with
  nothing of its own between them.
- `mgeb_XContextInitialize` (`ge.S` lines 109-121, at 0xad1c): **inferred**, the X-server context set-up. It calls
  `mX_REGS_Initialize` and `mX_CM_Initialize` and copies its two command operands (A = 0x1f, D = 0 and 1) to control
  words 5 and 6 (0xad2e, 0xad2f, stores 0xad37, 0xad38).
- `mGL_REGS_Initialize` (`ge.S` lines 200-260, at 0xb25a): **inferred**, resets the address registers for an OpenGL
  context. Per lane it sets register 0x18 to the staging bases 0x8d2c, 0x8d3d and 0x8d4e (0xb25d-0xb261), and registers
  0x14 and 0x15 to 0 and 0, 0x9c and 0x14, and 0x138 and 0x28 in lanes 0, 1 and 2 (0xb25b-0xb264); register 0x17, the stack pointer of the link saves, starts at 0x1e4
  (0xb275), and 0x16, 0x19 and 0x1b at zero. It converts the staged 1.0, 0x80000000 and 0x14 with code 0x71 and stores the
  results at register 0x1d plus 2 and 3 and register 0x1c plus 0xb and 0xf (0xb26a-0xb26d).
- `mX_REGS_Initialize` (`ge.S` lines 132-189, at 0xade8): **inferred**, the X-context form of the register reset: the
  same 1.0 and 0x80000000 constants converted with code 0x71 (four uses) into words 2 and 3 of register 0x1d and 0xb and
  0xf of register 0x1c, without the stack and staging bases.
- `mX_CM_Initialize` (`ge.S` lines 277-316, at 0xadaf): **inferred**, fills the X context's control memory with eighteen
  staged constants: masks (0xfffff, 0xffffffff, 0xff, 0xff001fff), the counts 0x4ff and 0x3ff, raster field words
  (0x142808, 0x141408, 0x50140000, 0x3043c00 and three more) and the five raster words `mgeb_GlobalInitialize` sends.
- `mGL_CM_Initialize` (`ge.S` lines 330-456, at 0xb1ac): **inferred**, fills an OpenGL context's control memory. Among its
  64 staged words are the default vertex-module chain (`mmo_ObjToClipSpace` 0x1218, `mmo_LiColorClamp` 0xd69, 0x10c9,
  0x28ca, 0x8465, 0xe741, 0x288c, 0x8db0), the error-handler address 0xf4e4, and float constants such as 1.0, -24.0
  (0xc1c00000), 2^19 and 2^20 (0x49000000, 0x49800000) and 0x457ffff8.
- `mGL_EM_Initialize` (`ge.S` lines 496-606, at 0xb0f4): **inferred**, writes the external-memory constant tables. It
  stages trigonometry constants: -pi, pi, pi/2 and 2 pi (0xc0490fdb, 0x40490fdb,
  0x3fc90fdb, 0x40c90fdb), pi/180 (0x3c8efa35), the series coefficients near 1/6 and 1/120 (0x3e2aa7c9, 0x3c082eab) and
  the rounding constant 0x4b400000, and then the vertex-array unpack table: the addresses of every `uunpack.s` and
  `munpack.S` module (0x2c6b, 0x2c83, 0x5757, 0x56ff and onward), one per array format.
- `mGL_EX_Initialize` (`ge.S` lines 640-973, at 0xae09): **inferred**, the largest initialiser (747 words, 257 moves). It
  stages mostly 1.0 (0x3f800000), plus 0.5, 32.0 (0x42000000), the words
  0x1b02 (twice), 0x8a2, 0x8c2, 0x8e2, 0xbea and 0xc0d, and the masks 0xffffff00 and 0xffff.
- `mDebugInitialize` (`ge.S` lines 985-1001, at 0xad90): **inferred**, clears the debug-print state: it zeroes external
  words 0x1755 and 0x1756, saves the transfer-target register at the stack (0xad9b), calls `mClearEram` on 0x80 words
  from 0x16d5 (0xad97-0xad99), stages the marker 0xdeadbeef (0xad9d) and restores the saved target before returning.
- `mgesi_PipeSetup` (`ge.S` lines 1016-1048, at 0xab9d): **inferred**, the pipe set-up command. It takes four command
  operands and stores them to external words 0x17f5 and 0x1385-0x1387 (0xab9d-0xabac), saves the three lanes' values
  at 0x17d7-0x17db, and prints a greeting through `mPrintf`: the staged words 0x57656c63, 0x6f6d6520, 0x746f2047,
  0x454c616e and 0x64210000 are the text "Welcome to GELand!".

## Multisample point drawing (drawmstpnt.S)

These modules draw multisample points from the coverage tables that `mgeb_ComputeMSPointTables` builds, and most of
them bracket their work with a save and restore of a block of working memory. Read from the
[drawmstpnt.S listing](ge_listing/drawmstpnt.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DrawMSDistAttTablePntPrim` (`drawmstpnt.S` line 4198, at 0x7855): **inferred**,
  draws distance-attenuated multisample points from the coverage tables. It walks the point list through register
  0xf, takes the table pointer from external word 0x247 (0x7892) and the point parameters from external words 0x237 and
  0x23e-0x244 (reads at 0x78a1-0x7934). A test of control word 0x19 against 2 (0x7857) decides whether `SaveClipState`
  is called (call at 0x7863). It copies a 17-word parameter block to 0x85d0 (0x7877-0x7887) and a 9-word block of raster
  words to 0x8614 (0x7888-0x7891), computes per-point extents with float multiplies, adds and subtracts (0x78ce-0x7954,
  with a float conversion at 0x7941 and an integer conversion at 0x7951) and ANDs record word 4 with control word 0x1c
  (0x78ad); a zero result takes the branch at 0x78b9 to the loop tail 0x796c. Each remaining point is drawn with
  `DrawMSTablePnt` (0x7a54, call at 0x7962) or `DrawMSTFanPnt` (0x79a3, call at 0x7963). The end at 0x7977 restores the
  clip state (0x7985), reloads the successor from control word 0x1a (0x798e) and flushes with 0x70000 to 0x1f8 and
  values to 0x1f5 and 0x1f4 (0x799d-0x79a2).
- `DrawMSTFanPnt` (`drawmstpnt.S` line 4019, at 0x79a3): **inferred**,
  draws one large multisample point as a fan: a centre vertex and a ring of rim vertices. It reads the point's colour
  and size words (control words 0xc4-0xc6 at 0x79cd-0x79d3) and the point record through registers 0xb and 0xd. It
  converts the radius to an integer step (0x79ab), takes a reciprocal (0x79ba-0x79c6), calls `mSinCosAB` (0xd23f, call at
  0x79d5) and `mSinCos` (0xe13, call at 0x79ee), and derives each rim point's x and y by adding and subtracting the
  scaled sine and cosine terms (0x79eb-0x79f6). The centre goes out first (0x79fb-0x7a1f) and a loop from 0x7a20 to the
  branch at 0x7a4a then produces one rim vertex per pass. Each vertex's window x and y, depth (unit-1 code 0x7e), colour
  words and texture words are stored to the vertex slots 0xcd-0xd4 and 0xcc-0xc9 (for example 0x7a09-0x7a1e and
  0x7a2b-0x7a49). It returns at 0x7a4b with the closing stores to slots 0xcb, 0xca and 0xc9.
- `DrawMSTablePnt` (`drawmstpnt.S` line 3079, at 0x7a54): **inferred**,
  draws one multisample point from the sorted tables. Its input is the point record through register 0xf, plus the colour and size
  words from control words 0xc4-0xc6 (0x7a57-0x7a5e), and the three working regions are the parameter block at 0x85d0,
  the sample table at 0x8614 and a scratch block at 0x8528 (registers 0xb, 0xa and 0xd, set at 0x7a54-0x7a56). It zeroes six
  scratch words (0x7a59-0x7a60), compares the size with table words using subtracts (0x7a77, 0x7a7b) and walks the table
  rows in a loop from 0x7a9c to the branch at 0x7b26, with exits at 0x7ac5, 0x7ae4 and 0x7b03. It then writes the raster
  words 0x806, 0x3fd3, 0x1243fd3, 0x12b0806 and 0x70000 to bus-output 0x1f7, 0x1f5 and 0x1f8 (0x7b4c-0x7b7a), runs a
  series of compare subtracts (0x7b82-0x7c0a) with closing 0x1f8/0x1f5 writes at 0x7bb6, 0x7bc5, 0x7c1b and 0x7c1e, and
  returns at 0x7c1f (the branch at 0x7bbe also reaches it).
- `mmo_DrawMSTablePntPrim1` (`drawmstpnt.S` line 1382, at 0x7c28): **inferred**,
  one of the two batch drawers for table-driven multisample points (`mgebi_PointSize_MS` stages it at 0x60f7 and its slot
  store is 0x611a). It takes the point list through register 0xf (step 0x78, 0x7e41), the table pointer from external word
  0x247 (0x7c70) and a count from 0x246 (0x7c62). A control word 0x19 test (0x7c29) can call `SaveClipState` (0x7c36). It
  sends 0x70000 to 0x1f8 and a value to 0x1f5 (0x7c3f-0x7c41), copies parameter blocks into 0x85d0 (0x7c4a-0x7c59) and 0x8614
  (0x7c5a-0x7c61) and gives the lanes the scratch blocks 0x8528, 0x8544 and 0x8560 (0x7c63-0x7c67). Each point is tested by
  ANDing record word 4 with control word 0x1c (0x7c80; zero takes the transfer at 0x7c8d to the tail 0x7e3a); the routine
  then zeroes seven words (0x7c97-0x7c9d), runs a row loop (0x7ced-0x7d7c) of compare subtracts and register steps, and
  produces the vertex slots 0xd1-0xd4, 0xd9 and 0xcf and the raster words 0x806, 0x3fd3 and 0x12b0806 (0x7d85-0x7dd1). A
  second loop (0x7dd4-0x7e31) writes pairs to 0x1f8 and 0x1f5 (0x7dbe-0x7dd1, 0x7e1b-0x7e2c). The end restores the clip
  state (0x7e53), loads the successor (0x7e5c) and flushes through 0x1f4 (0x7e6e).
- `mmo_DrawMSTablePntPrim` (`drawmstpnt.S` line 662, at 0x7e6f): **inferred**,
  the other batch drawer for table-driven multisample points (`mgebi_PointSize_MS` stages it at 0x60f5 and its slot store is
  0x611b). It consumes the same inputs as the first one: the save call at 0x7e7d on a control word 0x19 test (0x7e70), 0x70000 to 0x1f8
  and a value to 0x1f5 (0x7e86-0x7e88), parameter blocks into 0x85d0 and 0x8614 (0x7e91-0x7ea9), lane scratch blocks 0x8528,
  0x8544 and 0x8560 (0x7eab-0x7eb0) and the table pointer from external word 0x247 (0x7eba). Per point it ANDs record
  word 4 with control word 0x1c (0x7eca), runs row loops at 0x7f3b-0x7fe2 and 0x8069-0x80ca that compare cell counts with
  subtracts, and produces the same outputs, the vertex slots 0xd1-0xd4, 0xd9 and 0xcf together with the raster words 0x806, 0x3fd3,
  0x1243fd3 and 0x12b0806 (0x7ffa-0x8067). The record pointer advances by 0x78 (0x80da), the restore call is at 0x80ef and the end
  is the flush through 0x1f4 (0x810a).
- `RestoreClipState` (`drawmstpnt.S` line 285, at 0x810b): **inferred**, brings the 0x4b-word block of working memory at
  0x8528 back from external memory. It reads no command words: it loads the source 0x7c53 into register 0, the destination
  0x8528 into register 1 and the count 0x4b into register 2 (0x810c-0x810e) and calls `mEramToWram` (0xd45d, call at
  0x810b); the successor is saved at 0x810f and reloaded at 0x8114 and the routine returns at 0x811a.
- `SaveClipState` (`drawmstpnt.S` line 269, at 0x8123): **inferred**, the mirror image: it copies the 0x4b words of working
  memory at 0x8528 out to external memory at 0x7c53. It reads no command words: it loads the source 0x8528 into register 0,
  the destination 0x7c53 into register 1 and the count 0x4b into register 2 (0x8124-0x8126) and calls `mWramToEram` (0x1025,
  call at 0x8123). The successor is saved at 0x8127 and reloaded at 0x812c, and the routine returns at 0x8132.

## Point drawing (drawpnt.S)

The point modules read each point's vertex record, subtract the window origin and the texture offsets, and write the
result to the vertex slots (control words 0xc9-0xd9, see the vertex-slot table under Triangle output) that the raster
stage collects. Read from the [drawpnt.S listing](ge_listing/drawpnt.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DrawMSDistAttPntPrim` (`drawpnt.S` line 1474, at 0x813b): **inferred**,
  draws distance-attenuated multisample points as fans. Its inputs are the colour and size words at control words 0xc4-0xc6
  (0x813b-0x813e) and the point parameters in external words 0x237 and 0x23e-0x244 (0x8141-0x81c0), with the constants
  360.0 (0x8143), 0x2043c00 (0x8144) and 7 (0x8147) staged. It evaluates reciprocal square roots with seeds and Newton
  steps (0x816a-0x81a2) and reciprocals (0x81e2-0x81eb) to derive the per-point extents, calls `mSinCosAB` (0xd23f at 0x81f5)
  for the ring vertices, which it produces in the loop from 0x8256 to the loop word at 0x827e. The outer per-point loop is the branch at
  0x8289 back to 0x8149, the record pointer steps by 0x78 (0x828e), the successor is loaded from control word 0x1a
  (0x8292) and the routine ends with a return at 0x829e and the flush 0x70000, 0x1f5, 0x1f4 (0x82a1-0x82a6).
- `mmo_DrawMSPntPrim` (`drawpnt.S` line 1264, at 0x82a7): **inferred**,
  draws multisample points without attenuation. Its inputs are size words from external memory 0x237-0x23a and 0x245
  (0x82a7-0x82b5, 0x82e3) and colour words from control words 0xc4-0xc6 (0x82af-0x82b6), and it stages 0x2043c00 and 7
  (0x82b8, 0x82bb). For each point that passes the ANDing of record word 4 with control word 0x1c (0x82bd) it adds the
  offsets to the window x and y (0x82dd, 0x82df, 0x8302, 0x8304) and produces three vertex groups as output (0x82d2-0x8343): texture
  words 0xd1-0xd4, the command at 0xd5, window x and y at 0xcd and 0xce, depth at 0xcf and 0xd0 and colour products at
  0xcc-0xc9. The inner loop is at 0x831b-0x833c and the point loop at 0x82bd-0x8347; the return at 0x8348 follows with
  the flush at 0x8351-0x8356.
- `mmo_DrawDistAttPntPrim` (`drawpnt.S` line 362, at 0x8357): **inferred**,
  draws plain points whose size falls off with eye distance. Control words 0xc4-0xc6 (0x8362-0x8366) and external words
  0x237 and 0x23e-0x242 (0x8363-0x83ce) supply the colour, size and attenuation values, and the staged constants are
  0x70000, 0xfff, 0xfff000, 0xc, 0x1203fcf, 0x128080f, 8.0 and 2.0 (0x8358-0x8361). Per point it squares and sums the
  eye-space coordinates (0x837f-0x83b5), takes two reciprocal square roots with Newton steps (0x8394-0x83cc), converts
  the extents to integers (0x83fe-0x8406) and writes them as register pairs to bus-output 0x1f8 and 0x1f5
  (0x83f6-0x8425). The vertex slots are then stored as in `mmo_DrawPntPrim` (0x842b-0x845b) and the flush is at
  0x8460-0x8464; the per-point loop branch is at 0x8455.
- `mmo_DrawPntPrim` (`drawpnt.S` line 199, at 0x8465): **inferred**,
  sends plain single points to the raster stage as vertex packets. It takes the colour words from control words
  0xc4-0xc6 (0x8468-0x846e), the successor from control word 0x1a (0x846a) and the three external words 0x23b-0x23d
  (0x8469-0x846d) as inputs. Each pass reads a point record through register 0xf (step 0x78, 0x84b3), ANDs its word 4 with control
  word 0x1c (0x8477), adds offsets to the window x and y with integer adds (0x847f-0x8482), subtracts the texture words
  into slots 0xd1-0xd4 (0x8488-0x8496), stores the command (0xd5, 0x8498) and an all-ones value to slot 0xd9 (0x849a), then
  the window x, y and depth into 0xcd, 0xce, 0xcf and 0xd0 (0x849c-0x84a5) and the colour words, each multiplied by a
  register, into 0xcc-0xc9 (0x84a9-0x84b1). The loop branch at 0x84ae returns to 0x8475 and the exit return at
  0x84af ends the command after the flush 0x70000, 0x1f5, 0x1f4 (0x84b8-0x84bd).
- `mmo_DrawAAPntPrim` (`drawpnt.S` line 768, at 0x84be): **inferred**,
  sends antialiased points to the raster stage. It takes mode bits from control words 3 and 4 (0x84c5, 0x84cb) as input, reads
  radius and attenuation words from external memory 0x237 and 0x23e-0x242 (0x84d1, 0x8559-0x8596) and stages 0.5, 3.0,
  6.0, 0.25, 1.0 and 8 (0x84c4-0x84d4). It forms the coverage footprint with reciprocal square roots (0x8550-0x8587),
  unit-1 code 0x77 (0x85c4-0x85c8) and float-to-integer conversions (0x85cd, 0x85d1), then evaluates the filter by
  branching to `AA_Response` (0x9059, 0x85fb) or jumping to `AA_Response_Step` (0x9045, 0x85fc). The texture, window and
  depth stores to slots 0xd1-0xd5, 0xcd, 0xce, 0xcf and 0xd0 (0x8617-0x8632) are followed by colour words multiplied by a
  register before they go to 0xcc-0xc9 (0x8636-0x863e). Loops run from 0x85e7 (branch 0x863b), 0x85da (0x8646) and 0x84f7
  (0x8651); it returns at 0x865a with the flush at 0x8663-0x8668.

## Line drawing (drawlin.S)

The line modules turn each segment into vertices for the raster stage by moving the endpoint records into the vertex
slots (control words 0xc9-0xd9, see the vertex-slot table under Triangle output) with a per-endpoint width offset. Read
from the [drawlin.S listing](ge_listing/drawlin.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mDrawLinPrim` (`drawlin.S` line 165, at 0x892b): **inferred**,
  the per-segment worker for plain lines. Its inputs are the segment table through register 0xf (step 0x78, 0x89b2) and the line
  width from external word 0x236 (0x8969). For each segment it ANDs record word 4 with control word 0x1c (0x892e), loads the two
  endpoint records into registers 4-7 (0x8930-0x893b), subtracts their window x and y words (0x8944-0x8947) and scales the
  differences by the width with float multiplies (0x895e-0x8971). Predicated adds and subtracts pick the offset signs
  (0x8977-0x8981). Three vertices are written: the first endpoint (texture words 0xd1-0xd4, command 0xd5, window x, y,
  depth and colour; 0x894b-0x8968), a middle vertex built from the offset points (0x8985-0x898d) and the second endpoint
  with the all-ones store to slot 0xd8 (0x898f-0x89ac). The loop branch at 0x89ad returns to 0x892e, and the return at
  0x89b3 follows the flush 0x70000, 0x1f8, 0x1f5 and 0x1f4 (0x89b7-0x89bb).
- `mDrawLinList` (`drawlin.S` line 318, at 0x89bc): **inferred**,
  the worker for connected segment lists, where each pass reuses the previous endpoint. Its inputs are registers 0x10 and 0x11, copied
  into registers 0xc and 0xb (0x89bc, 0x89bd) and the first endpoint's vertex goes out at once (slots 0xd1-0xd5, 0xcd-0xd0
  and 0xcc-0xc9, 0x89be-0x89cf). A loop from 0x89d0 to the branch at 0x8a1b then moves the next endpoint into registers 8
  and 9 (0x89d0-0x89d3), subtracts window x and y (0x89d8-0x89db), multiplies by the width read from external word 0x236
  (0x89e0, 0x89dc-0x89df), selects offset signs with predicated adds and subtracts (0x89e7-0x89f3) and stores two more
  vertices (0x89f7-0x8a1f), the second with the all-ones slot 0xd8 (0x8a0b). Registers 0xb and 0xc advance by a stride
  (0x8a17, 0x8a19), and the routine returns at 0x8a24 with the flush ending at 0x8a2c.
- `mmo_DrawMSLinPrim` (`drawlin.S` line 482, at 0x8a2d): **inferred**,
  the multisample line worker. It begins by writing the constant 0x80a to bus-output 0x1f7 and zero to 0x1f6 and 0x1f5
  (0x8a30-0x8a33), takes control words 0xc4-0xc6 as input (0x8a34-0x8a36) and reads the width from external word 0x236 (0x8a55).
  Each pass ANDs record word 4 with control word 0x1c (0x8a38) and emits four vertices, two with plain command words
  (0x8a75-0x8aa9) and two with the all-ones store to slot 0xd7 (0x8abd, 0x8ade), and adds the width to window x and y
  in each (0x8a77-0x8ae9). The loop branch at 0x8af3 returns to 0x8a38, the closing raster writes of 0x22f080a and 0x70000
  go to 0x1f8 and 0x1f5 (0x8afc-0x8b02) and the last flush is 0x8b03-0x8b07.
- `mmo_DrawLinStipplePrim` (`drawlin.S` line 806, at 0x8b08): **inferred**,
  the stippled line worker, which breaks each segment into pattern pieces. It takes the stipple pattern from external
  word 0x24d (0x8b1d), the table that starts at 0x24e (0x8ba8), the reciprocal repeat factor at 0x25e (0x8b7e), 16.0
  (0x8b2e) and the line width at 0x236 (0x8b70). It computes the segment length with a reciprocal square root (0x8b63-0x8b6f)
  and further reciprocals use seeds and Newton steps (0x8b8c, 0x8b94, 0x8be7-0x8bf4). The loop from 0x8bac to the branch
  at 0x8d62 steps through the pattern table, and the output is vertex groups written at 0x8c12-0x8c26, 0x8c38-0x8c71,
  0x8c86-0x8c98, 0x8cac-0x8cd0, 0x8d23-0x8d37 and 0x8d4b-0x8d59, with command words stored by NOT to slots 0xd6, 0xd7 and
  control word 0x1eb (0x8c68, 0x8d2c, 0x8cdb). Exit branches are at 0x8b14, 0x8b3d, 0x8b9f and 0x8d7b.
- `mmo_DrawLinPrim` (`drawlin.S` line 111, at 0x8db0): **inferred**,
  the line module that the line-width handlers install; it only selects the worker. It stages 0x100 and 0xe0000000
  (0x8db1, 0x8dba), tests control word 3 against 0x100 (0x8db2), takes control words 0xc5, 0xc4 and 0xc6 as inputs into registers 0-2
  (0x8db3-0x8db5), sets register 0xd to 0xd1 (0x8dbb), reloads the successor from control word 0x1a (0x8db9) and
  writes through register 0x1c at offsets 0x2c and 0x2f (0x8dbc-0x8dbe). The result is a choice: the conditional branch at 0x8db6 (condition
  0x67) goes to `mDrawLinList` (0x89bc) and otherwise the jump at 0x8db7 goes to `mDrawLinPrim` (0x892b).

## Point clipping (pntclip.S)

- `mClipPntUserAndFrustum` (`pntclip.S` line 54, at 0xe75e): **inferred**,
  the clip stage for a batch of points, run as the screen stage's successor after `mmo_DecomposePoints`. It takes the
  point table through register 0xd (step 0x78, 0xe7cc) and the point count from register 0x12 (0xe768), and reads
  control word 0xa2 (0xe75e, kept in register 9 at 0xe767). It stages 0x3f in staging words 0 and 1 (0xe763, 0xe764) and
  writes it to the clip special registers 0x0d and 0x0e (0xe765, 0xe766). For each pair of points it multiplies the
  clip-space w word (record word 0x1a) by control words 0x71-0x74 (0xe773-0xe77f), subtracts them from words 0x17 and
  0x18 and combines the signs with `or` (0xe778-0xe794); a loop from 0xe79b to the branch at 0xe7b4 then forms four-term dot
  products of words 0x13-0x16 with control words from 0xa3 on (0xe79b-0xe7ae). The result is a flag word merged back into
  record word 4 by unit-1 code 0x51 (0xe7c5); the loop branch is at 0xe7c7 and the command ends at 0xe7c8.

## Line clipping (linclip.S)

- `mClipLinUserAndFrustum` (`linclip.S` line 695, at 0xea1c): **inferred**,
  the line clipper, which clips each segment against the user planes and then the six frustum planes. Its inputs
  are the segment table at 0x8bb0 and 0x8bec (registers 0xb and 0xc, 0xea58-0xea59), the two clip-vertex slots at 0xb38 and
  0xb74 (registers 7 and 6, 0xea5c-0xea5d), the user-plane count in control word 0xa2 (0xead0) and the plane equations
  from control word 0xa3 on (0xeae0). It calls `uEvalSaveState` (0x962, call at 0xea28) when control word 0x1ec is
  nonzero and copies each endpoint record's words 0xb-0xe and 0x13-0x22 into working buffers (0xea6b-0xea80 and
  0xea99-0xeaae). A user-plane loop (0xeae2-0xeaf9) calls `mClipLineToPlane` (0xebbf, call at 0xeaee) per plane and then
  `mEyeToClipAfterUserClip` (0xf182, call at 0xeb07). It compares the frustum bits in turn (staged 0x10, 0x20, 1, 2, 4 and 8 at
  0xeb10, 0xeb27, 0xeb3e, 0xeb55, 0xeb6c, 0xeb83) with the clip special register and calls `mClipLineToPlane` for
  each (0xeb1e, 0xeb35, 0xeb4c, 0xeb63, 0xeb7a, 0xeb91), then `mClipLinFlush` (0xed2c, call at 0xeb9a). The segment loop
  branch is at 0xeba5; the end reloads the successor from control word 0x1a (0xebae), stores results to control words 0x19
  and 0xbb-0xbd (0xebbb-0xebbe) and returns at 0xebb6.
- `mClipLineToPlane` (`linclip.S` line 89, at 0xebbf): **inferred**,
  clips one segment against one plane. It fetches the two endpoint record pointers into registers 3, 4, 7 and 8
  (0xebc3-0xebc8) from the two slots set at 0xebbf-0xebc0, and takes the plane coefficients from registers 0x19-0x1c,
  which the caller filled. It computes the signed distance of each endpoint as a four-term dot product (multiplies
  at 0xebd5-0xebe2, adds at 0xebdf-0xebf3), compares the signs with predicated moves (0xebeb-0xebf9), subtracts the two
  distances (0xec01-0xec07) and takes the reciprocal of the difference with seed and Newton steps (0xec08-0xec18), then
  multiplies for the crossing fraction. The result is a new endpoint: the words 0xb-0xe, 0x13-0x1a and 0x1b-0x22 are
  stored through register 0xe (0xec2e-0xed29) from products with the fraction and adds. Words 0x1b-0x22 of one endpoint
  are copied across by moves under the predicate at 0xecd1 (0xecd2-0xecd9), and the branch at 0xec37 (condition
  0x78) leads to 0xece3. It returns at 0xed23, with an early conditional return at 0xecbb.
- `mClipLinFlush` (`linclip.S` line 1028, at 0xed2c): **inferred**,
  hands a clipped segment to the following stage and arranges to resume afterwards. It takes the clip special registers
  0x0d, 0x0e and 0x0f as input and saves them into the save area at register 0x1b offsets 0x38-0x3a (0xed2f, 0xed32, 0xed35) and registers 0xa-0xc
  into offsets 0x35-0x37 (0xed2d, 0xed3e, 0xed3f), then sets special registers 0x0d and 0x0e to the 0x3f staged at 0xed2e
  and 0xed30 (0xed31, 0xed33). It stages the continuation address 0xed41 (0xed36), adds 0x178 to register 0x14 and 0xb38 to register 0x15
  to get the pool pointers in registers 0x10 and 0xf (0xed39, 0xed3b) and ends the command at 0xed38. The continuation at 0xed41 moves the saved
  words back into the special registers (0xed42-0xed44), reloads registers 0xa-0xc (0xed47-0xed4a) and returns at 0xed49.

## Start-up and memory set-up (bootstrap.s, bootinit.s)

The engine's reset code: it runs once and then waits for the first command. Read from the [bootstrap.s listing](ge_listing/bootstrap.s.lst) and the [bootinit.s listing](ge_listing/bootinit.s.lst) (`ge.u`, IRIX 6.5.30m).

- `HereWeGo` (`bootstrap.s` line 20, at 0x0000): **inferred**, the reset entry that puts the engine's base registers and its
  first four special registers into a known state. It takes no input. It calls `MemRegInit` (call at 0x0003, which only
  returns), then loads address registers 0x1c, 0x1d and 0x1e with 0xfffe0000, 0xfffe0100 and 0xffff0000 and register 0x16
  with 0 (0x000c-0x000f), and gives each lane its own staging register 0x18 (0x8d2c, 0x8d3d and 0x8d4e by the F = 0, 0x11
  and 0x22 loads at 0x0010-0x0012). It stages 0x380, 0x43, 0x435 and 0x14 at offsets 0-3 (stores 0x0016, 0x0018, 0x001a and
  0x001d) and copies them through register 0x1c to special registers 0, 1, 2 and 0xa (moves 0x0017, 0x0019, 0x001b and 0x001e).
  Its result is that register state; it then pads with 36 address-register loads from register 0x1d (0x0024-0x0047) and ends
  in the group-31 end-of-command transfer at 0x004a, which targets itself, so the engine waits there for the next command. Nothing in it computes a value; every store is a constant or a copy of one.
- `MemRegInit` (`bootinit.s` line 9, at 0x27cc): **inferred**, the memory-register initialiser called from the start-up
  code, and it is empty. Its only word is a return (0x27cc, an indirect transfer in group 4 with no operand and no store),
  so it reads nothing, writes nothing and gives its caller `HereWeGo` the same machine state it was called with; the seven
  words after it are no-ops.

## Deformation commands (deform.S)

The command side of the vertex deformation: the commands that load, clear and read back the deformation maps, and the module
selector that points the vertex path at the matching loop in `udeform.s`. The state lives in control-memory word 3 (flag
bits 0x80000 geometry, 0x100000 texture, 0x200000 inverse needed) and in two external-memory blocks, the position block at
0x958 and the texture block at 0x997. Read from the [deform.S listing](ge_listing/deform.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgesi_GetDeformationsMask` (`deform.S` line 559, at 0x4786): **inferred**, the read-back of a two-bit deformation mask.
  Its input is command word 0, read with A = 0x1f at 0x478b. It stages 0x476 (0x4787), 1 (0x4789) and 3 (0x4793), and
  derives the reply by shifting word 0 right by one and masking the result with 3 (the shift at 0x478b, the AND at 0x4795).
  Its output is the header 0x476 stored to bus address 0x1f7 (0x4788), the masked value stored through register 0x1e
  (0x4794, 0x4799), and a zero stored to bus address 0x1f4 (0x479a) to close the reply. The words after the end-of-command
  transfer at 0x4792 are its delay shadow.
- `mgesi_GetDeformation` (`deform.S` line 447, at 0x479b): **inferred**, the read-back of one deformation map. Its input
  is command word 0, which it compares with the geometry-deformation enumerant 0x8194 by an XOR (0x479d-0x479e) to choose
  between the staged flag bits 0x100000 and 0x80000 (moves 0x47a2-0x47a3). It writes the header 0x476 to bus address 0x1f7
  (0x479f), then ANDs control-memory words 0x1f5 and 3 (0x47aa-0x47ab). A zero result takes the branch at 0x47b7 to 0x47df,
  where 30 moves of register 0x1e (zero) or 0x1f (one) go out through register 0x1e: the identity map. A non-zero result
  points register 0x13 at external-memory block 0x958, or 0x997 under the predicated load at 0x47b5, and sends the block's
  words out through register 0x1e: six reads at 0x47c0-0x47ca, then a loop of reads at 0x47d2-0x47d5 that runs on register
  0x12 (loaded with 7 at 0x47cf). It ends with the closing word to bus address 0x1f4 (0x4805) and the end-of-command
  transfer at 0x47fd.
- `mgeb_LoadIdentityDeformation` (`deform.S` line 344, at 0x4806): **inferred**, turns off the deformations named by a bit
  mask. Its input is command word 0 (A = 0x1f, 0x4807), bit 0 for geometry and bit 1 for texture. It shifts the mask left
  by 0x13 (0x4808) and ANDs it with 0x180000 (0x480c), which moves the two bits onto flag bits 0x80000 and 0x100000, and
  clears those bits in control-memory word 3 with unit-1 code 0x51 (0x4810, stored back through the store at 0x4826).
  It also clears the matching bit in control-memory word 0xdf (AND with 0xdf, 0x481e; store 0x482b) and, under the
  predicates set at 0x4813-0x4816, writes the address 0xf4e4 of `mmo_DirtyPrePathModule` to control-memory words 0xda and
  0xdb (stores 0x482c-0x482d), which makes the vertex path re-select its modules. It ends at 0x4825. Its result is the cleared flag bits and the re-selected path.
- `mgeb_DeformationMap3_1` (`deform.S` line 129, at 0x482e): **inferred**, loads a deformation map whose control values
  arrive in one command. It takes the command's 31 words: word 0, compared with 0x8194 by the XOR at 0x4832, says whether
  the map is the geometry or the texture one, and words up to 0x1e are read through register 0x1f. It chooses the
  destination block base, 0x958 for geometry or 0x997 for texture (loads 0x4843 and 0x4849), and fills it through
  registers 0x10, 0x13 and 0x1a, one value per lane (stores with `r95` = 8, 9 and 0xa, 0x486a-0x48d4). The block holds
  command words as given and, from the subtracts at 0x487f, 0x488a, 0x4891, 0x489c, 0x48a2, 0x48a9, 0x48b5, 0x48bb, 0x48bf,
  0x48c1 and 0x48c7, differences between them, so the loops in `udeform.s` can evaluate the map with multiplies and adds.
  Its other outputs are in control memory: it ORs the staged flag 0x80000 or 0x100000 into word 3 (OR 0x483e, store
  0x4848), ORs 0x200000 into it under a predicate (OR 0x4834, store 0x483d), ORs 4 into word 0xdf (0x4846-0x4847, store
  0x4850) and writes 0xf4e4, the address of `mmo_DirtyPrePathModule`, to words 0xda and 0xdb (stores 0x4851-0x4852), so
  the next vertex re-selects its modules.
- `mmo_DirtyDeformModule` (`deform.S` line 50, at 0x48d8): **inferred**, the selector that turns the deformation flag bits
  into a vertex-path successor. It stages the test bits 0x100000 and 0x80000 at offsets 1 and 0 (0x48d8, 0x48da) and five
  loop-entry addresses at offsets 2-6: 0x2b32 (texture only), 0x2ab8 (position), 0x2ae7 (position and texture), 0x2b61
  (position and normal) and 0x2ba7 (position, normal and texture) (stores 0x48e0-0x48e4). It reads control-memory words 3
  and 5 (0x48d9, 0x48dc), ANDs them with the test bits (0x48db, 0x48dd), picks one staged address by the predicated
  address-register loads at 0x48e6-0x48e8 and the test at 0x48eb, and moves it into the store-data register (0x48ec). Its
  output is that address, stored to control-memory word 0xda (0x48f5) and, under the predicate at 0x4904, to 0xdb, and
  loaded as the transfer target with `r95` = 2 at 0x48f6, so the group-31 transfer at 0x48fc continues in the chosen loop.
  It reads control-memory words 3 and 5 and picks exactly one of the five addresses.

## Performance instruments (pi.S)

The two commands that program and read the engine's performance counters through the raster bus. Each sends pairs of bus
words: a select word (an `0x476xxxx`-style value) to address 0x1f8 and its data word to 0x1f5, and closes with a word to
0x1f4. Read from the [pi.S listing](ge_listing/pi.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgesi_StopInstruments` (`pi.S` line 81, at 0x4905): **inferred**, writes the counter-control sequence that halts and
  reads out the instruments. Its inputs are command words 0, 1, 2 and 9 (read with A = 0x1f, 0x4930-0x4943) and eighteen
  staged constants (0x817f, 0xa, 0x3, 0x10476, 0x2, 0x1, 0x4, 0x5, 0x400, and the selects 0x4760000, 0x4610000, 0x4600000,
  0x4740000, 0x4640000, 0x4630000, 0x4400000, 0x4770000 and 0x4620000; stores 0x4908-0x4929). It combines them into 44 bus
  words: the select words alternate with data words, which are either a staged constant or one of the four command words,
  and every select goes to 0x1f8 and every data word to 0x1f5 (moves 0x490a-0x4945 and the shadow words 0x4947-0x494d). A
  closing word goes to 0x1f4 (0x494e), and the end-of-command transfer at 0x4946 carries 0x1f8 as its last immediate.
- `mgesi_StartInstruments` (`pi.S` line 37, at 0x494f): **inferred**, the matching start sequence, which arms four counters.
  Its input is command word 0 (read at 0x4959). It stages the four selects 0x60476, 0x30476, 0x40476 and 0x50476 (stores
  0x4950, 0x4951, 0x4953 and 0x4956) and sends them to 0x1f8 in that order (0x4955, 0x495a, 0x495c, 0x495e), each followed
  by a data word to 0x1f5: command word 0 after the first, then zero (register 0x1e) after each of the other three (0x4959,
  0x495b, 0x495d, 0x495f). It ends with a zero word to 0x1f4 (0x4960) and the end-of-command transfer at 0x4958. The counter
  set-up is that bus stream.

## X server window and clip loading (xload.S, xsetup.S)

The commands that give the X server's direct-drawing path its window, clip rectangle, scissor and graphics-context state.
The window origin and size sit in control-memory words 7-0xc; the raster back end receives register writes as pairs of bus
words: a select to 0x1f8 and a data word to 0x1f5, with a `0x70000` select ahead of each mask word, and a closing word to
0x1f4. Read from the [xload.S listing](ge_listing/xload.S.lst) and the [xsetup.S listing](ge_listing/xsetup.S.lst)
(`ge.u`, IRIX 6.5.30m).

- `mgesi_XPixRmSetup` (`xload.S` line 554, at 0x4c70): **inferred**, builds the raster-module set-up for an X pixel
  transfer. It takes command words 0-6 (A = 0x1f, D = 0-6, moves 0x4c73-0x4c7e) and stages thirteen constants: register
  selects such as 0x2103000, 0x806, 0x11b00, 0x2011a00, 0x2021800, 0x20c0c00 and 0x20c0000 (stores 0x4c71-0x4c88), and the
  float 40.0 (0x42200000, 0x4c85). It converts that float to an integer with `ftoi` (0x4c87, 0x4c9b, 0x4c9d), forms sums and
  differences of the command words (adds 0x4c8e, 0x4cb9 and 0x4cbe, subtracts 0x4cae, 0x4caf and 0x4cbd) and sends the
  staged selects and the results out through register 0x1e (moves 0x4c76-0x4cba). Its bus output is a select to 0x1f8
  (0x4c9e), a word to 0x1f7 (0x4c9f), data to 0x1f5 (0x4ca9) and the closing word to 0x1f4 (0x4cbf); the 0.5 staged at 0x4ca1
  is added to control-memory words 0xb and 0xc (0x4ca2, 0x4ca3) before they are converted.
- `mgeb_XLoadClip` (`xload.S` line 447, at 0x4cc0): **inferred**, converts a list of integer clip words into floats in
  control memory. It takes the count in command word 0 (stored to control-memory word 0x16, 0x4ccb) and the integers from
  the command at register 0x10. One pass of the loop at 0x4ccc-0x4ce7 reads eight integers (offsets 0-3 and 0xc-0xf from
  the pointer), converts each with the integer-to-float code 0x73 (0x4ccc-0x4ce2) and stores the three lanes' floats to
  control-memory words from 0x17 (stores with `r95` = 4, 5 and 6, 0x4cd5-0x4ceb). The pointer steps by 0x18 (0x4ce7), the
  count falls on register 0x13 (0x4cd4), and the branch at 0x4ce7 repeats until the count is spent; the last two floats
  are stored after the loop (0x4ce8-0x4ced). Its results are the floats in control memory.
- `mgebi_XLoadGC` (`xload.S` line 307, at 0x4cf4): **inferred**, loads an X graphics context into the engine and the raster
  back end. It takes command words 0-0xc. Words 0-3 go to control-memory words 0-3 (stores 0x4d0c-0x4d0e and 0x4d00) and
  word 4 to special register 0x23 (0x4d0a). It stages nine register selects (0x13d1c14, 0x13e1c15, 0x1341c00,
  0x1351c02, 0x13b1c0b, 0x13c1c0d, 0x13f3ff8, 0x167140f and 0x1661410, stores 0x4cf7-0x4cff) and the masks 0xffffff, 0x383c,
  0xffc00f, 0x3f, 0x1e and 0x1f. A zero in command word 2 branches over the bus part (0x4d06). Otherwise it sends nine
  writes: for each, a `0x70000` select and its mask (0x4d0f-0x4d2c), then the register select to 0x1f8 and the next of
  command words 4-0xc to 0x1f5 (0x4d11-0x4d35). It closes with command word 1 to 0x1f8 and 0x1f5 around a 0x803 word at
  0x1f7 (0x4d36-0x4d38) and a zero to 0x1f4 (0x4d39). Its output is the nine register writes plus the stored state.
- `mgesi_XLoadScissor` (`xload.S` line 195, at 0x4d43): **inferred**, converts a scissor rectangle into the raster
  back end's window coordinates. It takes command words 0-3 (the rectangle's origin and extent, moves 0x4d44-0x4d47) and
  control-memory words 5, 6, 0xb and 0xc (reads 0x4d4a, 0x4d50, 0x4d52, 0x4d54, 0x4d57, 0x4d5b). It combines them with
  saturating integer adds and subtracts (0x4d4b, 0x4d4c, 0x4d4f, 0x4d54, 0x4d59, 0x4d5d), converts window values with `ftoi`
  (0x4d51, 0x4d55) and shifts each edge left by the staged 3 or 0x12 (0x4d63, 0x4d6b, 0x4d75, 0x4d7a). Its output is four
  masked raster writes, a `0x70000` select and a mask (0x7fff or 0x3fff8000) before each register select 0x1133fc2 or
  0x1143fc3 (stores 0x4d4e, 0x4d6d), sent to 0x1f8 and 0x1f5 (0x4d5e-0x4d79), and a closing zero to 0x1f4 (0x4d7b).
- `mgebi_XLoadPosition` (`xload.S` line 62, at 0x4d7c): **inferred**, records a window's position and size and sends the
  raster back end the matching offset and clip registers. It takes command words 0-3 (x, y, width, height; moves 0x4d7c,
  0x4d7d, 0x4d88 and the store at 0x4d85) and stores them to control-memory words 7, 8, 9 and 0xa (stores 0x4d8f, 0x4d85,
  0x4db5 and 0x4d8d). It computes edges with saturating subtracts against control-memory words 5 and 6 (0x4d81, 0x4d82,
  0x4d8e, 0x4d90), subtracts them from 0x803 and 0x80f after a right shift (0x4d9a, 0x4d9d), rounds the results to a multiple of
  8 and 32 with the masks 0xfffffff8 and 0xffffffe0 (ANDs 0x4da2, 0x4da9), converts the rounded values with integer-to-float
  (0x4dad, 0x4dae) and stores them to control-memory words 0xb and 0xc (0x4db6, 0x4db7). The bus output is six
  `0x70000`-prefixed register writes with the selects 0x1133fc2, 0x1143fc3, 0x12c0807 and 0x12d0808 (stores 0x4dba, 0x4dcc,
  0x4ddd, 0x4de0; sends 0x4dbd-0x4de9) and a closing zero to 0x1f4 (0x4dea). A pending abort ends the command early (0x4daf).
- `mgeb_XSetupClip` (`xsetup.S` line 231, at 0x4deb): **inferred**, unpacks packed 16-bit clip rectangles into floats. Its
  input is the command's packed words, read through register 0x13 (offsets 0, 1, 6 and 7 per pass) with the count in
  command word 0 (store 0x4df6). One pass of the loop at 0x4df7-0x4e15 splits each word into its high half (a right shift
  by the staged 0, 0x4df7, 0x4dfd, 0x4e00) and low half (an AND with the staged 0xffff, 0x4dfa, 0x4dff, 0x4e03), converts the
  halves to floats with code 0x73 (0x4dfb, 0x4dfe, 0x4e01, 0x4e04) and stores them in all three lanes to control-memory words
  from 0x17 (`r95` = 4, 5 and 6, 0x4e04-0x4e18). The pointer steps by 0xc per pass (0x4e02), the count on register 0x10
  (0x4e03), and the branch at 0x4e15 repeats; the end-of-command transfer is at 0x4e19. Its output is the float list in control memory.
- `mgeb_XSetupColors` (`xsetup.S` line 199, at 0x4e22): **inferred**, a four-word copy that stores the command's colour
  words in control memory. It reads command words 0-3 (A = 0x1f, D = 0-3, moves 0x4e22-0x4e26) and stores them to
  control-memory words 0, 1, 2 and 3 (stores 0x4e2b, 0x4e2d, 0x4e2e and 0x4e2f, in the shadow of the end-of-command transfer
  at 0x4e27). It converts nothing and sends nothing to the raster back end. Its input is four command words and its output the same four words in control memory.
- `mgebi_XSetupWindow` (`xsetup.S` line 40, at 0x4e30): **inferred**, the per-window set-up: it unpacks a window's
  geometry from two packed command words, stores origin and size in control memory and sends the raster registers that
  place and clip the window. Its inputs are command words 0 and 1, each holding two signed 16-bit fields that it separates
  with a left shift and an arithmetic right shift (0x4e36-0x4e3c), and control-memory words 5 and 6 (reads 0x4e40, 0x4e4d,
  0x4e50, 0x4e6a). Its outputs are control-memory words 7-0xa (the unpacked origin and size, stores 0x4e42-0x4e44 and 0x4e79),
  words 0xb and 0xc (stores 0x4e7a-0x4e7b; the values come from the integer-to-float conversions at 0x4e6d-0x4e6e plus the 0.5
  staged at 0x4e70, after a rounding to multiples of 8 and 32 with the masks 0xfffffff8 and 0xffffffe0, ANDs 0x4e66 and
  0x4e69) and the same `0x70000`-prefixed raster writes as `mgebi_XLoadPosition`: masks 0x7fff, 0x3fff8000, 3, 0x12 and
  0x7ff with the selects 0x1133fc2, 0x1143fc3, 0x12c0807 and 0x12d0808 (stores 0x4e7d, 0x4e8e, 0x4e9f, 0x4ea2) sent to 0x1f8
  and 0x1f5 (0x4e7f-0x4ea9), closed by a zero to 0x1f4 (0x4eac). A pending abort ends the command early (0x4e73).

## X server clip-and-draw (xclipdraw.S)

The three loops that finish an X drawing request: each takes the float vertices that `mAbsX` or `mRelX` left in the
vertex record (record words 0, 1, 6 and 7 for two primitives per pass, one per thread) and tests them against the clip
rectangles that `mgeb_XSetupClip` or `mgeb_XLoadClip` stored as floats from control-memory word 0x17 (four edges per
rectangle, read through register 0xf). Survivors leave through register 0x1e and the raster bus (select to 0x1f8, data
to 0x1f5, closing word to 0x1f4 after a `0x70000` select). Read from the [xclipdraw.S listing](ge_listing/xclipdraw.S.lst)
(`ge.u`, IRIX 6.5.30m).

- `mmo_XclipDrawLines` (`xclipdraw.S` line 327, at 0x4ead): **inferred**, clips X line segments to the clip rectangle list
  and emits each piece as a raster line. It takes the endpoint floats at register 0x13 (record words 0-3 and 6-9) and
  control-memory words 0xb, 0xc, 1, 2 and 0x17 onward. For each rectangle it subtracts the endpoint coordinates from the
  four edges (0x4ec6-0x4ee8), ORs the sign bits into an outside code per endpoint (0x4ec9-0x4eef) and branches on the codes:
  `cc` 3 at 0x4f03 skips to 0x5070 (next rectangle) and `cc` 2 at 0x4f19 jumps to the emit code at 0x5020 for a segment
  that needs no clipping. A segment that crosses an edge is shortened by four edge blocks (0x4f2f-0x4f7b, 0x4f80-0x4fb9,
  0x4fbe-0x4ff7 and 0x4ffc-0x5017): each takes a reciprocal of the segment's extent along the crossing axis (reciprocal
  seed and step, 0x4ef1-0x4f02), multiplies the other extent by it (0x4f36-0x4f39) and adds the product to the endpoint
  (0x4f3a-0x4f3d). The emit code multiplies the extents by themselves, sums them (0x5020-0x5027) and takes a
  reciprocal square root (0x5031, 0x5032, 0x503d), which scales the direction before the endpoint adds and subtracts at
  0x5045-0x5064; the results go out through register 0x1e (E = 3, 4 and 6) with bus words to 0x1f8 and 0x1f5 (0x503f,
  0x5042, 0x5058, 0x5068) and an end word to 0x1f5 (0x506e). The loops at 0x5072 (over rectangles) and 0x507d (over
  segments) close with the return at 0x5082.
- `mmo_XclipDrawRects` (`xclipdraw.S` line 170, at 0x508b): **inferred**, intersects X fill rectangles with the clip
  rectangle list and emits the non-empty pieces. It stages the selects 0x70000, 0x40 and 0x12f080a (0x508c-0x508e) and
  reads control-memory words 0xb, 0xc, 0, 1 and 2 (0x5090-0x5094, 0x511d) for the window offset and clip count. For each
  clip rectangle the loop at 0x50a6-0x50fd takes the rectangle's four floats (record words 0-3, 0xc and 0xe) and clamps
  them against the rectangle's edges: larger of the two lower edges (`fmax`, 0x50ad-0x50b0) and smaller of the two upper
  edges (`fmin`, 0x50c5, 0x50ca, 0x50d3, 0x50d8), then subtracts to get the extents (0x50b3-0x50c0). It sends each result
  through register 0x1e with predicated stores to offsets 4, 6, 7 and 3 (0x50c6, 0x50cb, 0x50f9, 0x50fb) and bus words
  to 0x1f8 and 0x1f5 (0x50c8, 0x50ca, 0x50e6, 0x50f6). The outer loop at 0x5108 steps to the next rectangle and the
  branch at 0x5109 leaves through the return at 0x5127; a pending 0x70000/0x1f8/0x1f5/0x1f4 closing sequence runs in
  the return's shadow (0x512b-0x512f).
- `mmo_XclipDrawPoints` (`xclipdraw.S` line 70, at 0x5130): **inferred**, keeps the X points that lie inside the clip
  rectangle list and sends them on. It takes the point floats at register 0x13 (record words 0, 1, 6 and 7), adds the
  offset words it reads from control memory (0xb, 0xc, 1; `fadd` 0x513f-0x5142), and then, for each rectangle at register
  0xf, subtracts the point from the four edges (0x5147-0x514e) and ORs the sign bits (0x514f-0x5156). A point that passes
  is marked by the predicated stores to offsets 0x23 and 0x2b of register 0x1d (0x5157, 0x5158), and the loop at 0x515d
  repeats for the next rectangle. The output pass (0x5167-0x5178) sends the surviving position through register 0x1e
  as `fadd` of control-memory word 0xf and `fsub` of word 0x10 (0x516b-0x516e), with bus words to 0x1f8 and 0x1f5
  (0x5172, 0x5174); the loop branch at 0x5179 steps to the next point pair and the return is at 0x517e, with the
  closing zero to 0x1f4 at 0x5186.

## Vertex-array unpack control commands (unpack.S)

Four small commands around the vertex-array unpack modules: two restore the current normal and colour that the unpack
loops start from, two attach or detach the unpack module in the vertex path's successor words. Read from the
[unpack.S listing](ge_listing/unpack.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgeb_RestoreNormal` (`unpack.S` line 133, at 0x580a): **inferred**, re-establishes the current normal after a context
  restore. It takes command words 8, 9 and 0xa (A = 0x1f, D = 8-0xa, moves 0x580a, 0x580c and 0x580e) and copies them
  unchanged into external-memory words 0x13ab, 0x13ac and 0x13ad (stores with `r95` = 8 at 0x5813, 0x5815 and 0x5817, in
  the shadow of the end-of-command transfer at 0x5812), where the unpack set-up reads the normal it starts from. It transforms nothing: the result is the three command words as sent.
- `mgeb_RestoreColor` (`unpack.S` line 105, at 0x581b): **inferred**, the colour counterpart: it takes command words 4-7
  (moves 0x581b, 0x581d, 0x581f, 0x5821) and stores them to external-memory words 0x13a7-0x13aa (stores 0x5824, 0x5826,
  0x5828, 0x582a), the four-component current colour that `mmo_UnpackVertexV3F` and its relatives load. It scales nothing; the result is the four command words unchanged.
- `mgeb_DisableUnpack` (`unpack.S` line 80, at 0x582e): **inferred**, detaches the unpack module. It reads control-memory
  word 0xdf (0x582e, setting the flags) and, under that predicate, writes zero to special register 0x27 (0x5830). It then
  reads control-memory word 0xdb (0x5834) and stores it into word 0xda (0x583d), so the vertex path's successor reverts to
  the pre-path module held in 0xdb; the transfer at 0x5835 ends the command. The saved module (word 0xdb) becomes the
  successor again.
- `mgeb_EnableUnpack` (`unpack.S` line 42, at 0x583e): **inferred**, attaches an unpack module chosen by the command. Its
  input is command word 0 (loaded into address register 0x1a at 0x583e). It reads the external-memory table at 0x138a
  indexed by that register (0x5846, `r95` = 0x14), which gives the address of the module, stores that address into
  control-memory word 0xda (0x5856) as the successor, and stores register 0x1d to special register 0x27 (0x5849) to mark
  unpacking as active; the transfer at 0x584e ends the command. The module address comes from the table lookup and becomes
  the new successor word.

## Reference plane (refplane.S)

The depth reference plane the raster back end uses for polygon offset-style depth interpolation: one command sets the
plane, a second pair switches it on and off, and one routine turns the stored plane into raster terms. The plane's
working state sits in external-memory words 0x94b-0x957, and its enable flag is bit 0x4000000 of control-memory word 3.
Read from the [refplane.S listing](ge_listing/refplane.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgebi_ReferencePlane` (`refplane.S` line 127, at 0x59a2): **inferred**, defines the reference plane from four command
  numbers and fills the working block. It first writes the identity-like initial values (zero, zero, zero, one, repeated, then
  a final zero: moves of register 0x1e or 0x1f, 0x59a2-0x59ba) to external-memory words 0x94b-0x957 (stores `r95` = 8,
  0x59ab-0x59c3). It then calls `mMatrixMultCCC` on `cc` 0x72 (0x59c4) to refresh the composite matrix and calls
  `mMatrixAdjoint` (0x59cd) on the composite at 0x4f (0x59d2), and multiplies the command's four words (A = 0x1f, D = 0-2
  at 0x59d6-0x59e0, and the fourth) by the adjoint's staged words (0x59da-0x59f5), summing the products in pairs
  (0x59e5-0x59f0). It forms a reciprocal of the normalising term (0x59f6-0x5a00), scales the sums by it (0x59fa-0x5a04),
  loads the guard constants 100.0 (0x42c80000, 0x5a05) and 1e-6 (0x358637bd, 0x5a06), and builds a twelve-word block of
  differences and products (0x5a0b-0x5a4e) that the loops at 0x5a58-0x5a78 and 0x5a85-0x5a99 test with sign comparisons
  (branches 0x5a66-0x5a6b, 0x5aae, 0x5abe, all to 0x5aea). Its outputs are the plane terms stored to words 0x94b-0x957
  again (0x5ad0-0x5ae8), then tests the enable bit 0x4000000 of control-memory word 3 with a flag-setting AND (0x5af5-0x5af6;
  the routine never stores word 3) and may skip a call to `mRefPlane` (0x5b02, `cc` 3) that sends the raster registers, with the closing word to 0x1f4 (0x5b0b). Its operands are those four command words.
- `mgebi_ReferencePlane_Disable` (`refplane.S` line 75, at 0x5b15): **inferred**, turns the reference plane off. It clears
  bit 0x4000000 of control-memory word 3 by ANDing with 0xfbffffff (0x5b19, 0x5b21, store 0x5b2e) and sends two raster
  writes, each preceded by the `0x70000` select (0x5b1c): the select 0x1243fd3 to 0x1f8 with the data 6 to 0x1f5
  (0x5b1d-0x5b23), then a closing zero to 0x1f4 (0x5b24-0x5b25). Both data stores are predicated (0x5b1f, 0x5b23) on the
  state tested at 0x5b27. It takes no command words; it combines the flag clear with the two bus writes, and its result is the plane switched off.
- `mgebi_ReferencePlane_Enable` (`refplane.S` line 41, at 0x5b2f): **inferred**, turns the reference plane on. The first
  two words are the framing words of every handler (0x5b2f, 0x5b30), not operand reads; 0x5b32 loads staging word 0x10 and register 0x13
  from register 0x1d and 0x5b36 sets the flags from register 0x13. It reads no command word. It ORs 0x4000000 into control-memory word 3
  (stage 0x5b35, OR 0x5b37, store 0x5b40) and calls `mRefPlane` (0x5b38) to send the stored plane to the raster back end.
  The call word carries `cc` 0x11, the same value as the unconditional jump that ends `mDispatchCentral` (0xe755) and the
  calls elsewhere that nothing gates (for example 0x8123), so the call is not conditional on the flags set at 0x5b36
  (inferred). The closing zero goes to 0x1f4 (0x5b41-0x5b42), and the end-of-command transfer is at 0x5b43.
- `mRefPlane` (`refplane.S` line 464, at 0x5b4c): **inferred**, converts the stored reference plane into raster terms. It
  takes external-memory words 0x94b-0x953 (reads 0x5b4c-0x5b6a) and the viewport scale and offset words of control memory
  (0x7e-0x83), plus control-memory words 0xc4-0xc6 and 0xd5. It multiplies the plane terms by the scales (0x5b53-0x5b5d, 0x5b62,
  0x5b68, 0x5b6b, 0x5b71), adds the offsets (0x5b6d, 0x5b6e, 0x5b70, 0x5b73), clamps with `fmin` (0x5b6f, 0x5b75, 0x5b88)
  and packs the results with unit-1 code 0x7e (0x5b76, 0x5b78, 0x5b7f, 0x5b81, 0x5b8c). It stores words 0xc9, 0xcd, 0xce,
  0xd5 and 0xd7 of control memory (0x5b72, 0x5b74, 0x5b7a-0x5b85) and sends eight bus words, a `0x70000` select and a data word
  to 0x1f8 and 0x1f5 around the select 0x1243fd3 (0x5b65-0x5b69, 0x5b92-0x5b95). It returns through the indirect
  transfer at 0x5b8d.

## Sprite modes (sprite.S)

The sprite code turns a point sprite into a billboard by rotating the modelview matrix so a chosen axis faces the eye. The
three mode entries, `mSpriteObject`, `mSpriteEye` and `mSpriteAxial`, each end in `mSpriteRotateMatrix`, which builds a
rotation about the chosen axis in the staging words at register 0x18 and multiplies it into the modelview at 0x2f with
`mMatrixMultCCWNoFetch`. The sprite parameters sit in external memory (0x93a-0x940 and the mode word 0x94a, read through
register 0x16). Read from the [sprite.S listing](ge_listing/sprite.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DirtySpriteModule` (`sprite.S` line 109, at 0x8669): **inferred**, the hook that refreshes the sprite code's copy
  of the modelview after the matrix changes. It reads the mode word at 0x94a (0x8669) and loads the three copy
  registers: register 0 with 0x2f, the first modelview word (0x8670), register 1 with the external-memory target 0x14d5
  (0x8671) and register 2 with the count 0x10 (0x8672). It then jumps to `mCramToEram` at 0x103a (0x866d), which moves
  those sixteen words from control to external memory; the copy is its only result. Its input is the modelview words at 0x2f-0x3e, which it moves unchanged to 0x14d5 onward.
- `mSpriteRotateMatrix` (`sprite.S` line 466, at 0x8676): **inferred**, builds the axis-angle rotation matrix for the
  sprite and applies it to the modelview. Its inputs are the rotation axis and the cosine and sine terms that the three
  mode entries leave in registers 0xe-0x13 (the multiplies at 0x867a-0x8681 and the adds at 0x8684-0x8685 form the cosine
  and sine terms from them). When both terms are zero the branch at 0x8695 skips the rotation (to 0x86be). Otherwise it
  writes zeros to staging words 3, 7, 0xb, 0xc, 0xd and 0xe (0x8697-0x869c) and 1.0 to word 0xf (0x869d), computes the nine
  rotation terms from products of the axis components with each other, with the sine and with one minus the cosine
  (0x869e-0x86b4, stores E = 0-0xa) and calls `mMatrixMultCCWNoFetch` (0x86b5) with register 0xb at 0x8d2c and register
  0xa at 0x2f (0x86b9, 0x86ba). Afterwards it stores register 0x1d to special registers 0x2b, 0x29 and 0x2a (0x86c2,
  0x86c3, 0x86c5) and loads its successor from control-memory word 0xda indexed by register 9 (0x86c4), ending at 0x86ca. Its output is the rotated modelview matrix.
- `mSpriteObject` (`sprite.S` line 235, at 0x86d3): **inferred**, the object-aligned sprite mode: it turns the sprite
  about a fixed object-space axis so its face points at the eye. It reads the sprite's object-space point and axis from
  external memory 0x93a-0x93c and 0x93e-0x940 (0x86d3, 0x86d6, 0x86e0, 0x870c-0x8710), combines the point with the
  modelview rows at control memory 0x30-0x3a, and writes the translated fourth row back to control-memory words
  0x3b-0x3e (stores 0x86fc-0x86ff). It calls `mMatrixAdjoint` on the modelview (0x86f7), normalises the eye direction
  that gives with a reciprocal square root (steps 0x874d-0x87e4), calls `mSpriteRotateV0OntoV1` (0x87a7) to turn the sprite
  axis onto that direction, and jumps to `mSpriteRotateMatrix` (0x87ee) for the final roll about the eye direction. Its inputs are the sprite point and axis; its output is the updated modelview rows 0x3b-0x3e and the rotated matrix.
- `mSpriteEye` (`sprite.S` line 365, at 0x87f7): **inferred**, the eye-aligned sprite mode, a one-word dispatcher. Its
  only word is the unconditional transfer at 0x87f7 to `mSpriteObject` at 0x86d3; it reads, computes and stores nothing
  itself. `mSpriteObject` then compares the mode word with its own address (0x8707) and skips the section 0x871c-0x8733 only on a match, so the eye-aligned mode takes the other path ([geif_commands.md](geif_commands.md)). It takes no operand and returns whatever `mSpriteObject` produces.
- `mSpriteAxial` (`sprite.S` line 167, at 0x8800): **inferred**, the axis-aligned sprite mode: the sprite rotates about
  the axis stored with it so its face turns toward the eye as far as that axis allows. It reads the axis from external
  memory 0x93a-0x93c and the point from 0x93e-0x940 (0x8800-0x8819) and control-memory word 0x30 (0x8814), forms the
  squared length of the axis and its reciprocal square root (0x8822 seed, steps from 0x8836 on), calls
  `mSpriteRotateV0OntoV1` (0x8836), stores the translated modelview row to control-memory words 0x3b-0x3e (0x8839-0x883e),
  calls `mMatrixAdjoint` (0x883f), projects the eye direction off the axis and normalises the remainder (0x886f, 0x8877)
  and finishes by jumping to `mSpriteRotateMatrix` (0x888b). Its inputs are the stored axis and point; its output is the rotated modelview.
- `mSpriteRotateV0OntoV1` (`sprite.S` line 390, at 0x8894): **inferred**, builds the rotation matrix that carries one unit
  vector onto another. Its inputs are the two vectors in registers 0xe-0x10 and 0x16, 0x1a and 0x1b. It computes their
  cross product, squares and sums it and takes a reciprocal square root to normalise the axis (0x88ac-0x88b4 and the
  Newton steps after them), forms the cosine as their dot product, and writes the rotation into staging words 0-2, 4-6 and
  8-0xa with zeros at 3, 7, 0xb and 0xc-0xe and 1.0 at 0xf (store 0x88e8). It sets register 0xb to 0x8d2c and register 0xa to
  0x2f (0x88e4, 0x88e5) and jumps to `mMatrixMultCCWNoFetch` at 0x88e9 (0x88e0), so the result is the modelview already
  multiplied by that rotation.

## Block moves between engine memories (mmemove.S, memove.S)

The `m`-module versions of the block copies (compare [Memory copies (umemove.s)](ge_compute.md#memory-copies-umemoves)).
They share one convention: register 0 is the source address, register 1 the destination (or the output window register
for the FIFO form), register 2 the count. A pass moves six words, two per lane, so the source and destination registers
step by 6 (`r162` = 1 or F = 0x19 words) and the count falls by one on the address-unit decrement (F = 0x25), looping on
`cc` 0x11 in group 7. Each routine returns through the group-5 transfer. Read from the
[mmemove.S listing](ge_listing/mmemove.S.lst) and the [memove.S listing](ge_listing/memove.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mWramToCram` (`mmemove.S` line 33, at 0xd191): **inferred**, copies a block from working memory to control memory.
  Its input is the block at register 0 (read with A/D offsets 0-5, moves 0xd194-0xd19c). One pass of the loop at
  0xd194-0xd19f stores those six words through register 1 with `r95` = 4, 5 and 6 (stores 0xd19d-0xd1a2, 0xd1a5, 0xd1a6),
  two per lane, steps register 0 and register 1 on by 6 (0xd1a3, 0xd1a4) and counts down register 2 (0xd191, 0xd19c). The
  branch at 0xd19f repeats the pass, and the return is at 0xd1a0. It transforms nothing; its output is the block copied word for word.
- `mWramToFifo` (`mmemove.S` line 271, at 0xd1a9): **inferred**, sends a block of working memory out through the output
  window. It takes the source at register 0 (lane offsets 1 and 2 added at 0xd1aa and 0xd1ae) and the count in register 2
  (0xd1ac, 0xd1b0). The loop at 0xd1b0-0xd1b2 steps register 2 and moves each word through register 0x1e at offset 1
  (moves 0xd1b8, 0xd1b9, with the second thread taking D = 3); register 0 steps by 6 at 0xd1b7. When the count is spent it
  sends an all-ones word (a NOT of register 0x1e, 0xd1bb, 0xd1bc) to window offset 3 and bus address 0x1f5 as the end
  marker, and returns at 0xd1b5. It converts nothing but adds the end marker.
- `mCramToWram` (`memove.S` line 32, at 0xd4a2): **inferred**, copies a block from control memory to working memory. It
  gives lanes 1 and 2 their own register-1 offsets (adds of 1 and 2 at 0xd4a3 and 0xd4a7) and reads the source
  through register 0 with `r95` = 0x10, 0x11 and 0x12 (CRAM reads into lanes 0, 1 and 2, 0xd4a9-0xd4ad). Each pass of the
  loop at 0xd4a8-0xd4af stores the loaded words through register 1 (B = 1, 0xd4ab, 0xd4ae), steps registers 0 and 1 by 6
  (0xd4b3, 0xd4b4) and counts down register 2 (0xd4a4, 0xd4a8); the return is at 0xd4b0. Its input is the block at register 0 and its output the same words in working memory.
- `mEramToWram` (`memove.S` line 68, at 0xd45d): **inferred**, copies a block from external memory to working memory.
  After the lane offsets (0xd45e, 0xd462) it reads six source words per pass with `r95` = 0x14, 0x15 and 0x16, which load
  one external-memory word into lane 0, 1 or 2 (0xd463-0xd46d), and stores them through register 1 with the plain
  store of 0xd46f and 0xd474. The loop at 0xd463-0xd475 steps both registers by 6 (0xd479, 0xd47a) and register 2 down
  (0xd460, 0xd473); the return is at 0xd476. It transforms nothing; the input block reappears unchanged in working memory as the output.
- `mEramToEram` (`memove.S` line 108, at 0xd47f): **inferred**, copies a block within external memory. A pass reads six
  words through register 0 with `r95` = 0x17 (0xd482-0xd48c), moves them to the store-data register (0xd489-0xd493) and
  stores them through register 1 with `r95` = 8, 9 and 0xa (0xd492-0xd49c), the external-memory write forms. The loop
  0xd482-0xd498 steps registers 0 and 1 by 6 (0xd49b, 0xd49d), counts register 2 down (0xd47f, 0xd495) and returns at 0xd499. Its input is the source block; it transforms nothing and its output is the copy at register 1.

## Trigonometric subroutine (mmath.S)

Read from the [mmath.S listing](ge_listing/mmath.S.lst) (`ge.u`, IRIX 6.5.30m). The routine reads the same constant table
that `mSinCos` uses (external memory 0x14c9-0x14d3, written by the start-up code).

- `mSinCosAB` (`mmath.S` line 115, at 0xd23f): **inferred**, evaluates the sine and cosine of two angles in one pass.
  Its inputs are two angles in degrees, held in registers 0 and 1, and the table read through register 0x13 =
  0x14c9 (reads 0xd243, 0xd247, 0xd24d, 0xd251, 0xd260, 0xd271-0xd285). It multiplies each angle by the 1/360 at 0x14cf
  (0xd24a, 0xd24b), removes whole turns with the add-and-subtract of the rounding constant at 0x14cd (0xd24e-0xd253),
  scales the fraction back by 2 pi with the double-precision subtracts at 0xd25c-0xd25f and applies the odd polynomial of
  coefficients 0x14d0-0x14d3 with alternating multiplies and subtracts (0xd27c-0xd29e). A quadrant fix-up with
  conditional subtracts (0xd267-0xd27b) picks the signs. Its results are four values left in registers 0-3 by the
  multiplies at 0xd29d-0xd2a0, and it returns at 0xd29f.

## Transform attribute block copies (push_attrib.S)

The attribute commands of `push_attrib.S` move blocks between the command stream and engine memory with the shared copy
routine `mWramToEram`. Read from the [push_attrib listing](ge_listing/push_attrib.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mgeb_InitFFTFactors` (`push_attrib.S` line 36, at 0x37de): **inferred**, a double block copy from the command payload
  into external memory. It takes the payload as input: the first call (0x37de) points register 0 at command word 0, register
  1 at ERAM 0x90a and register 2 at the count 0x30 (0x37e1-0x37e3), and the second call (0x37e7) points register 0 at word
  0x30, register 1 at ERAM 0x94b and register 2 at 0xd (0x37ea-0x37ec). Both go through `mWramToEram` (0x1025), so the
  command writes 0x30 + 0xd = 61 words into engine memory, then ends at 0x37f0. The payload words are copied unchanged; the
  source, destination and count of each copy are the constants listed above.
- `mgeb_RestoreXformAttribs` (`push_attrib.S` line 36, at 0x37de): **inferred**, a second name for the same words as
  `mgeb_InitFFTFactors`, so the same 61-word payload copy into ERAM 0x90a and 0x94b through `mWramToEram` (calls at 0x37de
  and 0x37e7). As a restore command it returns the saved block to the same two ERAM ranges. The same copies run unchanged,
  with the same source, destination and count constants.

## Video controller bus writes (video.S)

The two handlers of `video.S` here forward command words to the video-controller bus using the bus-output addresses
0x1f4-0x1f7 that the raster handlers use. Read from the [video listing](ge_listing/video.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mgesi_VCbusWriteMultiple` (`video.S` line 67, at 0x52e8): **inferred**, a burst write of several words to one
  video-controller register. Command word 0 (register) and command word 1 (count) become registers 0x1a and 0x19 (0x52e8,
  0x52e9). It sends the staged selector 0x411 (0x52eb) through the window and command word 0 to bus address 0x1f6 (0x52ef),
  then walks the following command words with register 0xf (0x52f0, 0x52f2, 0x52f3) and forwards them through the window and
  a 0x1f5 store (0x52f4). A decrement loop on register 0xe (0x52f5-0x52f7) repeats the walk, and the return at 0x52fc has
  delay slots that push words at offsets 0 and 3 of register 0xf (0x52fd, 0x52fe) and send the closing word 0x1f4 (0x5304).
  The data words go out unchanged; nothing is calculated on them.
- `mgesi_VCbusWrite` (`video.S` line 35, at 0x5305): **inferred**, a single write to a video-controller register. It takes
  two command words as inputs. It stages 0x411 (0x530c), sends it to bus address 0x1f7 (0x530d), sends command word 0 to
  0x1f6 (0x530f) and command word 1 to 0x1f5 (0x5310), and ends with the closing word to 0x1f4 (0x5311). The command words
  go out unchanged; the register selector 0x411 is the only constant of its own.

## Context load and destroy (ctx_load.S)

The `ctx_load.S` handlers restore or clear engine state from the command stream and write raster-side registers through
the 0x1f4-0x1f8 bus addresses. Read from the [ctx_load listing](ge_listing/ctx_load.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mgeb_ContextDestroy` (`ctx_load.S` line 590, at 0x6622): **inferred**, wipes an engine context. Moves into 29 unit-1
  registers (0x6622-0x663e) take command word 0 and the zero register as sources, and two counted loops then store them: the
  first (count 0x1fa loaded at 0x6641, loop 0x6645-0x6647) writes six words per pass through register 0, the second (count
  0xeaf loaded at 0x6653, loop 0x6654-0x665b) writes six words per pass to external memory with `r95` = 8-0xa. It then
  writes zero to flag words 0x42 and 0x43 at register 0x1d (0x6664, 0x6665) and to special registers 0xb and 0xf at
  register 0x1c (0x6666, 0x6667), loads address registers 0-0x13 (0x6669-0x667c), writes four staged raster values 0x42200000, 0x2102000, 0x2103000
  and 0x2202000 to bus addresses 0x1f5-0x1f8 (0x6686-0x6689) and ends at 0x6681. It takes command word 0 and the zero register as inputs, and its outputs are the cleared memory ranges and raster values.
- `mges_ContextLoadFifo` (`ctx_load.S` line 564, at 0x668a): **inferred**, a command that consumes its operands without
  acting on them. It discards three input words (0x668a-0x668c) and ends the command at 0x668e, with the lane select
  word at 0x6695 in the delay slot, so no register or memory word changes. It takes three input words and discards them.
- `mgeb_ContextLoadRegs` (`ctx_load.S` line 484, at 0x6697): **inferred**, restores the engine's special registers from a
  saved context. Nine command words are the inputs: word 6 goes to special register 0xb (0x6698), words 3, 4 and 5 to
  special registers 9, 0xa and 0xf (0x669c-0x669e), words 7 and 8 to flag words 0x42 and 0x43 through register 0x1d (0x669f,
  0x66a0), and words 0-2 become registers 0-2 that are written to special registers 1, 2 and 8 (0x66af-0x66b1). It loads
  address registers 0x10-0x18 from the staged words at register 0x18 (0x66a7-0x66af) and, when the next input word is zero
  (0x66b3, 0x66b5), calls `mLiUpdateMtrlState` (0x67a9) on `cc` 0x68. It discards 36 further input words (0x66bf-0x66e2) and
  ends at 0x66e4. Each word goes to the target its position fixes, unchanged.
- `mgeb_ContextLoadFlagRegs` (`ctx_load.S` line 457, at 0x66ed): **inferred**, restores the four mode-flag words. Command
  words 0 and 1 go to special registers 0xf and 0xb through register 0x1c (0x66ee, 0x66ef) and words 2 and 3 to flag words
  0x42 and 0x43 through register 0x1d (0x66f0, 0x66f1). Two more input words are discarded (0x66f3, 0x66f4) and the command
  ends at 0x66f6. Each word goes to the target its position fixes, unchanged.
- `mgeb_ContextLoadWram` (`ctx_load.S` line 437, at 0x66ff): **inferred**, a command that takes three operand words and
  stores none of them. Command word 0 becomes register 0x1a (0x66ff), two further words are discarded (0x6700, 0x6701),
  and the command ends at 0x6703 with the lane select at 0x670a, so working memory is left as it was. It takes three words as input and discards them.
- `mgeb_ContextLoadEram` (`ctx_load.S` line 419, at 0x670c): **inferred**, loads a block of external memory from the command
  payload. Command word 0 is the ERAM destination in register 1 (0x670d), the next word less one is the count in register 2
  (0x670f) and register 0 points one word into the payload (0x6710). The copy is the call to `mWramToEram` at 0x670c, and
  one more input word is discarded at 0x6713 before the command ends at 0x6715. The payload goes into ERAM unchanged; the
  only arithmetic is the subtraction of one that gives the count.
- `mgeb_ContextLoadCram` (`ctx_load.S` line 387, at 0x671e): **inferred**, loads engine control memory from the command
  payload. It takes command word 0 as the count in register 2 (0x6721), points register 0 at the payload (0x6722) and
  register 1 at CRAM address 0 (0x6723). `mWramToCram` (0xd191, called at 0x671e) does the copy and the command ends at
  0x6727. The payload goes into control memory unchanged; the count word fixes how many words are copied.
- `mges_ContextReloadFromBEF` (`ctx_load.S` line 297, at 0x6730): **inferred**, replays the 0x59-word raster shadow from
  engine memory to the raster board. It first sends the selector 0x70000 and the 0x1408 mask write (0x6735-0x673b) and
  loads the loop count 0x59 and an ERAM base 0x1233 (0x673c, 0x6740). Each pass of the loop 0x6744-0x6753 reads six
  ERAM words (0x6744-0x674e), adds a staged base to the shadow index (0x6742, 0x6752, 0x6754) and steps the pointer by
  six (0x6757). The words go out through 0x1f8 and 0x1f5 (0x6758-0x675e) as shadowed register writes. Its inputs are the ERAM shadow words and the staged base, and its outputs are the shadowed writes on 0x1f8 and 0x1f5; it adds the staged base to each index.
- `mges_ContextLoadBEF` (`ctx_load.S` line 208, at 0x6760): **inferred**, replays the raster shadow held in engine external
  memory to the raster board, as `mges_ContextReloadFromBEF` does, with the word count taken from the command stream instead
  of the fixed 0x59. Two command words become registers 0x1a and 0x19 (0x6760, 0x6766), and register 0x19 gives the loop
  count (0x6772). It sends the 0x1408 mask write to bus addresses 0x1f7, 0x1f6 and 0x1f5 (0x6764-0x6769), stages the
  selectors 0x30000, 0x60000, 0x3100000, 0x3110000 and 0x3120000 (0x676a-0x6770) and loops over ERAM base 0x1233 in steps of
  six: six per-lane ERAM reads (`r95` = 0x14-0x16, 0x6775-0x6781) and adds of a staged base to the shadow index (0x6773,
  0x6787) per pass, the loop transfer at 0x6788 and the base step at 0x678b. The words go out through 0x1f8 and 0x1f5
  (0x678c-0x678e).
- `mges_ContextLoadODMA` (`ctx_load.S` line 145, at 0x6795): **inferred**, programs the output-DMA registers 0x450-0x454 on
  the raster side from five command words. The five register indices are staged at 0x6798-0x679b and 0x679f; each goes to
  bus address 0x1f7 (0x679c, 0x679e, 0x67a1, 0x67a3, 0x67a6) and is followed by one command word on 0x1f5 (0x679d, 0x67a0,
  0x67a2, 0x67a4, 0x67a8). The command ends at 0x67a0, with the last stores in its delay slots. Five register writes go out
  on 0x1f7 and 0x1f5: the indices are the staged constants and the values are the command words, unchanged.
- `mLiUpdateMtrlState` (`ctx_load.S` line 670, at 0x67a9): **inferred**, the call that `mgeb_ContextLoadRegs` makes to
  refresh lighting state after a context restore. It tests the staged mask 0x80 against CRAM word 0x84 (0x67aa, 0x67ab),
  zeroes special registers 0xd, 0xe and 0xc (0x67b1-0x67b3) and reads CRAM word 0xd (0x67b4). When the test fails it jumps
  into `mmo_LighterGeneral` (0xd85e, 0x67b8) with registers 0x10, 0x11, 0x13, 0x17 and 0x19 set to the record, 0x3a8 and
  0xe (0x67b9-0x67bd). The tail at 0x67c1 zeroes special register 0x24, clears bit 0x10 of CRAM word 0x18 (0x67c5, 0x67c6),
  rewrites CRAM 0xd (0x67ce, 0x67cf) and returns at 0x67c7. Its inputs are CRAM words 0x84 and 0xd, and it produces rewritten CRAM words 0x18 and 0xd; it compares the staged mask with 0x84 to select its path.

## Context deactivate (ctx_deact.S)

The `ctx_deact.S` handlers save engine state back to the host and clear the raster side before a context switch. Read from
the [ctx_deact listing](ge_listing/ctx_deact.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mges_ContextDeactFinish` (`ctx_deact.S` line 784, at 0x67d0): **inferred**, the closing command of a context save. It
  reads ERAM words 0xeae, 0xeaf, 0x1335-0x133a, 0x133c, 0x1385 and 0x1386 (0x67d1, 0x67da, 0x67ec-0x67fa, 0x6817, 0x6822)
  and sends raster selectors 0x476, 0x477, 0x460-0x463, 0x401, 0x400 and 0x440 with staged data to bus addresses
  0x1f5-0x1f7. A loop (count 0x18 at 0x67d9, 0x6802-0x680c) copies ERAM from 0x133d in groups of three words to the output
  window, stepping the pointer by 3 at 0x6811. A run of 0x1f7, 0x1f6 and 0x1f5 stores (0x6840-0x6858) resets raster
  registers 0x460, 0x461, 0x440 and 0x470, and the command ends at 0x6850. The listed ERAM words go out unchanged on the bus
  and to the output window.
- `mges_ContextDeactStoreValue` (`ctx_deact.S` line 752, at 0x6859): **inferred**, writes one command word into saved
  context memory. It reads command word 0 as the value (0x6859) and command word 1 as the offset in register 0x19
  (0x685a), discards a word (0x685b) and stores the value to ERAM at register 0x19 plus 0x1333 (0x6862). The command ends
  at 0x685d. It takes two command words as input and produces one ERAM store; it adds 0x1333 to the offset word to derive the address.
- `mges_ContextDeactSection` (`ctx_deact.S` line 699, at 0x6866): **inferred**, streams one section of saved context to
  the host. Command words give the start (register 0x1a) and a length reduced by two (register 0x19, 0x6867), and the
  payload words go out through `mWramToFifo` (0xd1a9, called at 0x6868). It then sends the selector 0x476 to 0x1f7
  (0x686f), pushes one input word to the window (0x6870), stores command word 0 into staging (0x6876), loads command word 1
  into register 2 (0x6877) and adds a staged value (0x6878). Two ERAM stores with `r95` = 8 (0x687f, 0x6881) update
  registers 0xe and 0xf, and the command ends at 0x687d. Its results are the payload copy to the host and the two ERAM stores; it adds a staged value to the word it loads at 0x6878.
- `mgeb_ContextDeactReconfigureFifo` (`ctx_deact.S` line 633, at 0x6886): **inferred**, resets the input FIFO pointers after
  a context switch. It stages 0x43 and 0x435 through register 0x1b (0x6889, 0x688a) and stores them to special registers 1
  and 2 (0x688b, 0x688c). It discards 36 input words (0x688d-0x68af), re-bases staging register 0x18 on 0x8d2c per lane
  (0x68b3-0x68b5) and ends the command at 0x68b1. The special-register values 0x43 and 0x435 come from staging; the 36 input
  words are discarded.
- `mges_ContextDeactGED` (`ctx_deact.S` line 585, at 0x68ba): **inferred**, the distributor-side variant of the section
  save. Command words become registers 0x1a and 0x19 (0x68ba, 0x68bb) and the payload goes to the host through `mWramToFifo`
  (0xd1a9, called at 0x68bc). It sends the selector 0x476 (0x68c0, 0x68c2), pushes one input word (0x68c4), stages 0x100
  (0x68c9) and stores the count word into staging at register 0x19 (0x68cb). Two ERAM stores with `r95` = 8 (0x68d3, 0x68d5)
  update registers 0xe and 0xf, and the command ends at 0x68d1. The payload is copied out unchanged, the selector 0x476 is
  sent, and the count word and the staged 0x100 are stored to ERAM.
- `mges_ContextDeactivate` (`ctx_deact.S` line 217, at 0x68da): **inferred**, the full context save. It reads COMP_FORMAT
  (0x68de), sets it to 4 (0x68df, 0x68e0), clears an ERAM range through `mClearEram` (0x1074, called at 0x68ed) and
  sends raster selectors 0x477, 0x460-0x464, 0x400, 0x440, 0x470-0x474 and the data words with them on bus addresses
  0x1f5-0x1f8 (0x6904-0x694d). It reads ERAM words 0xeae, 0xeaf, 0xeb0 and 0x133a-0x133d (0x690d, 0x691d, 0x6923, 0x6900).
  It pushes special registers 1, 2, 9, 0xa, 0xf and 0xb and flag words 0x42, 0x43 to the window (0x698a-0x6999). Calls
  to `uEvalSaveState` (0x962, conditional at 0x69bd), `mEramToFifo` (0x109b), `mCramToFifo` (0x1089) and `mWramToFifo`
  (0xd1a9, 0x6a16) stream the remaining state out, and the command ends at 0x6a29. Its inputs are the special registers and ERAM words listed, and its outputs are the pushed saves and bus writes; it subtracts at 0x692a for an ERAM word compare and selects which words go out.

## Pipe control and pixel stream end (m_pipecontrol.S)

These handlers swap engine memory blocks and close a pixel stream. Read from the
[m_pipecontrol listing](ge_listing/m_pipecontrol.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mgeb_SwapInGL` (`m_pipecontrol.S` line 119, at 0x6c9f): **inferred**, brings a saved block of external memory back into
  control memory. Its three command words are the inputs, loaded into registers 0, 1 and 2 (0x6c9f, 0x6ca0, 0x6ca2), and
  `mEramToCram` (0x104f, called at 0x6ca1) does the copy. It clears staging word 0x10 (0x6ca9) and ends at 0x6caa. The
  control-memory words are copied unchanged over the range the three command words give.
- `mgeb_SwapOutGL` (`m_pipecontrol.S` line 97, at 0x6cb3): **inferred**, the mirror of `mgeb_SwapInGL`: it saves control
  memory to external memory. It loads command words 0-2 into registers 0-2 (0x6cb3, 0x6cb4, 0x6cb6), calls `mCramToEram`
  (0x103a, at 0x6cb5), clears staging word 0x10 (0x6cbd) and ends at 0x6cbe. The ERAM words are copied unchanged from
  control memory over the range the three command words give.
- `mmo_PixEndStream` (`m_pipecontrol.S` line 51, at 0x6cc7): **inferred**, the module that closes a pixel stream and
  decides whether to flip a CRAM flag. It reads CRAM word 0x1c3 into staging word 1 (0x6cc7), stages 1 in word 0
  (0x6cce) and loads the CRAM value into register 0xf (0x6cd0). A positive test of that register (0x6cd8, then `loop`
  with `cc` 0x14 at 0x6cdb) jumps to 0x6ce7, which sends the staged word to bus address 0x1f5 and the closing word to
  0x1f4 (0x6ced-0x6cef) and ends there. Otherwise the fall-through path combines the staged 1 with CRAM 0x1c3 by
  exclusive-or (0x6cda), writes the result back to 0x1c3 (0x6ce3), sends the 0x1f5 and 0x1f4 words (0x6ce4-0x6ce6) and
  ends at 0x6cde. Its input is CRAM word 0x1c3 and its outputs are the 0x1f5 and 0x1f4 writes and the flipped flag; it combines the flag with 1.

## Get queries (get.S)

The `get.S` handlers answer state queries by pushing words to the output window. Read from the
[get listing](ge_listing/get.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mgesi_GetSpecial` (`get.S` line 180, at 0x9562): **inferred**, a query that returns one of several engine state
  values chosen by command word 0. It stages the GL enumerants 0xba3, 0xba4 and 0xba5 (0x9565, 0x9566, 0x9575) and
  others (0x8038, 0x80b2, 0x8e2, 0x6a2, 0x8a2, 0x8c2), compares each against command word 0 with equality subtracts
  (0x956e-0x9573) and reads ERAM words 0x69f-0x6a1 and 0xa43-0xa45 (0x9568-0x9588). Exclusive-or and shift steps combine the
  matches with those words (0x9578-0x9585, 0x958c) and predicated moves (0x9587, 0x958e, 0x958f) select the value that
  goes out. The result is pushed to the output window after 0x1f7 gets 0x476 (0x9594, 0x9595); the command ends at 0x9591
  with the closing word 0x1f4 (0x9599). Its input is command word 0, which it compares with the staged enumerants, and its output is the selected state word.
- `mgesi_GetRaster` (`get.S` line 99, at 0x959a): **inferred**, a query for the stored raster position. It reads ERAM words
  0x23 and 0x28-0x34 (0x95a1, 0x95a4, 0x95a7-0x95c1, 0x95c4), scales ERAM 0x34 by the staged 0x3d800000 (0x95b4) and
  pushes the words to the output window. Predicated stores (0x95a2, 0x95a3, 0x95a8-0x95b6, 0x95c9, 0x95ca) apply the
  lane flags, two further products use staged 0x35800000 (0x959c, 0x95c7), the mask of 3 comes from staging at 0x95a0 and
  0x476 goes to 0x1f7 (0x95a5, 0x95a6). The command ends at 0x95c4, with the closing 0x1f4 write at 0x95cc. Its inputs are the ERAM words listed, and it produces the scaled and unscaled words pushed to the window; it multiplies ERAM 0x34 by the staged constant.
- `mgesi_GetCurrent` (`get.S` line 39, at 0x95cd): **inferred**, a query that echoes the current-attribute words back out.
  It sends 0x476 to bus address 0x1f7 (0x95ce, 0x95cf), masks a command word (0x95d2) and then pushes command words 4 to 0xe
  (0x95d3-0x95df) to the output window. Two predicated stores at 0x95e2 and 0x95e3 add lane-dependent words, and the closing
  0x1f4 write (0x95e4) ends the reply. Command words 4-0xe reach the output window unchanged.

## Polygon offset extensions (glExt.S)

The polygon-offset commands of `glExt.S` keep their factor and unit words in ERAM 0xa43-0xa46 and their enable bits in
CRAM and ERAM flag words. Read from the [glExt listing](ge_listing/glExt.S.lst) (`ge.u`, IRIX 6.5.30m).
- `mgeb_Disable_EnablePolyOffsetExt` (`glExt.S` line 118, at 0xb27b): **inferred**, switches the polygon-offset enable
  bits. Command word 0 selects the bit (it is tested against the staged masks 0x80000000, 2 and 4 at 0xb27e, 0xb284,
  0xb296) and command word 1 is the on/off value (0xb27d, 0xb295). It reads CRAM 0x1b (0xb280) and ERAM 0xa8c and 0xa8d
  (0xb27f, 0xb291), combines each flag word with the mask by or and a unit-1 bit-clear (0xb281, 0xb282, 0xb286, 0xb294)
  and stores the result under lane predicates to CRAM 0x1b (0xb28a, 0xb28e), ERAM 0xa8c (0xb28f, 0xb29f), ERAM 0xa8d
  (0xb2a1, 0xb2a4) and special register 0x26 (0xb297, 0xb29c, 0xb29d). It consumes two input words (0xb29e, 0xb2a0) and
  ends at 0xb2a2.
- `mgeb_PolygonOffset` (`glExt.S` line 93, at 0xb2ab): **inferred**, stores the offset factor and a scaled unit value.
  Command word 0 is written to ERAM 0xa43 (0xb2bb) and command word 1 to ERAM 0xa45 (0xb2bd); it also multiplies word 1
  by the ERAM word 0xa46 read at 0xb2ab (the multiply at 0xb2b2) and stores the product to ERAM 0xa44 (0xb2bf). Two
  input words are discarded (0xb2b7, 0xb2b8) and the command ends at 0xb2ba. Its outputs are the three ERAM words 0xa43-0xa45, where 0xa44 is the product of command word 1 and ERAM 0xa46.
- `mgeb_PolygonOffsetExt` (`glExt.S` line 64, at 0xb2c3): **inferred**, the extension form that stores both operands
  unscaled. Command word 0 goes to ERAM 0xa43 (0xb2cc) and command word 1 goes to ERAM 0xa44 (0xb2ce), with no multiply and
  no read of ERAM 0xa46. Two input words are discarded (0xb2c6, 0xb2c7) and the command ends at 0xb2c9. Both command words
  are stored unchanged, to ERAM 0xa43 and 0xa44.

## Decomposers, second set (udecompose2.s)

The routines of `udecompose2.s` build the triangle table at engine address 0x8bb0 for the vertex path without a lighting
stage, and stage `mClipTriUserAndFrustum` (0xed52) as the successor of the screen stage. Read from the
[udecompose2.s listing](ge_listing/udecompose2.s.lst) (`ge.u`, IRIX 6.5.30m).

- `umo_DummyDecompose` (`udecompose2.s` line 13, at 0xd3b): **inferred**, the stand-in decomposer that produces no triangle
  table. It takes no operands: the word at 0xd3b loads the transfer target from engine word 0xb, 0xed52 is staged as staging
  word 0 (0xd3d) and moved to the store-data register (0xd3e), and a move of register 0x1e, which reads as zero, loads it
  again (0xd3f). The two stores in the delay words of the group-31 transfer at 0xd41 send the first value to word 0x17
  (0xd47) and the zero to word 0xa (0xd48), so the screen stage reaches the triangle clipper and the decomposer slot empties
  itself; the command then continues through word 0xb. The clipper address 0xed52 is stored unchanged as word 0x17.
- `umo_DecomposeSimpleTriangleStrip` (`udecompose2.s` line 41, at 0xd4a):
  **inferred**, the strip decomposer for the path without edge-flag masking. It takes the batch's vertex-record pointers
  (registers 1, 2 and 8) and the count in register 0x19 (reduced by the F = 0x21 step at 0xd4f), reads the mask word 0x1c
  from control memory (0xd4a), stages 0xed52 and the constant 0x81c00000 (0xd4b-0xd4c), xors that constant with register
  0x1d (0xd51) and aims register 7 at 0x8bb0 (0xd54). A test on cc 0x10 sends an empty or aborted batch to `mmo_AbortGeometry`
  (0xd55). Its outputs are the table entries that the loop `lDE4` fills, the clipper address stored to word 0x17 (0xd68) and a
  continuation through word 0xb (0xd52). It derives the entry flag words by combining the staged constant with register 0x1d and selects register 7 as the table pointer.
- `lDE4` (`udecompose2.s` line 55, at 0xd57):
  **inferred**, the loop of the simple strip decomposer, two triangles per pass. Thread A stores register 1 at offset 1 of the
  entry at register 7 and register 1 plus register 8 at offsets 2 and 3 (0xd5b, 0xd5d, 0xd61); thread B stores the matching
  pointers at offsets 0x10-0x12 (0xd5c, 0xd5e, 0xd62). The edge-flag words, combined with unit-1 code 0x53 (0xd58, 0xd5a) and then
  ORed or xored with register 0x1d (0xd63, 0xd66, 0xd67), go to offsets 4 and 0x13. Register 7 advances by 0x1e (0xd65) and the
  relative transfer at 0xd5f (immediate -8) repeats the pass; the group-31 transfer at 0xd60 ends the command. Its inputs are the record pointers in registers 1, 2 and 8; its outputs are the two table entries, and it combines the edge-flag words of each triangle into the flag word.

## Subdivision patch commands (subdiv.S)

The three handlers of `subdiv.S` take the three-word commands that the ARM sends for a subdivision patch and keep only the
first word in registers; none of them touches the vertex records. Read from the [subdiv.S listing](ge_listing/subdiv.S.lst)
(`ge.u`, IRIX 6.5.30m).

- `mgesi_SubdivEntry` (`subdiv.S` line 82, at 0x4414): **inferred**, the variant that forwards its last operand to the
  raster bus. It consumes the next three words of the command stream: the first two go to address registers 0x1a and 0x19
  (0x4415-0x4416) and the third is staged as word 0x10 of the staging file (0x4417). The delay word at 0x4420 moves that
  staged word to bus-output address 0x1f4, offset 2, and the word at 0x441d copies register 0x1a into register 0; the
  command ends at the transfer at 0x4418. Three command words are consumed and only the third is forwarded, as one
  raster-bus word.
- `mges_SubdivTag` (`subdiv.S` line 59, at 0x4421): **inferred**, the variant that keeps one operand and drops two. The
  first stream word becomes register 0x1a (0x4421) and the next two are read and discarded (0x4422-0x4423); the delay word
  at 0x442a copies register 0x1a into register 0 and the transfer at 0x4425 ends the command. It produces no store and no
  bus word. Three command words are consumed and only the first is kept, in register 0x1a.
- `mgeb_Subdiv` (`subdiv.S` line 36, at 0x442e): **inferred**, the command that `arm_subdiv_patch_parameter` sends. Its
  words match `mges_SubdivTag`'s: the first operand goes into register 0x1a (0x442e), two stream words are consumed and
  dropped (0x442f-0x4430), register 0 is loaded from register 0x1a in the delay word at 0x4437 and the command ends at
  0x4432. Register 0x1a ends up holding the first command word; the other two are dropped.

## Render-mode and polygon-mode setup (polygon.S)

Three entry handlers, one each for feedback, selection and normal rendering, choose the triangle output module and then share
`mPolymodeSetup`, which applies the polygon-mode operands. The draw-module slots are control-memory words 0x11, 0x13 and 0x14;
the stores take their address as 0x1f minus the field F, so F = 0xb, 0xc and 0xe write words 0x14, 0x13 and 0x11. Read from
the [polygon.S listing](ge_listing/polygon.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgeb_PolygonSetup_Feedback` (`polygon.S` line 115, at 0x61fa): **inferred**, the entry that routes triangles to the
  feedback recorder. It stages `mmo_FeedbackTriangle` (0xb76e, 0x61fb) into the store-data register (0x61fc), consumes three
  operand words of the command (the first into register 0x1a, 0x6202, the other two at 0x6203-0x6204) and stores the address
  to words 0x14, 0x13 and 0x11 (0x6205-0x6207). The jump at 0x61ff continues in `mPolymodeSetup`. The feedback module
  address goes unchanged into the three slots and the operand words pass on to the shared tail.
- `mgeb_PolygonSetup_Select` (`polygon.S` line 84, at 0x6208): **inferred**, the same entry for selection mode. Its staged
  output module is the one at 0xbecc (0x6209), moved to store-data at 0x620a and written to words 0x14, 0x13 and 0x11 by the
  three delay stores at 0x6213-0x6215, after the three operand words are consumed (0x6210-0x6212). A move of register 0x1e
  to B = 0x1f at 0x620c and the jump at 0x620d to `mPolymodeSetup` finish the entry. The module address 0xbecc goes
  unchanged into the three slots and the operand words pass on to the shared tail, as in the other entries.
- `mgeb_PolygonSetup_Render` (`polygon.S` line 37, at 0x6216):
  **inferred**, the entry for normal drawing. It reads operand words 3 and 4 itself and leaves words 0-2 to `mPolymodeSetup`.
  Word 3 is tested for zero (0x6217) and decides whether bit 0x40 is ORed into, or removed by unit-1 code 0x51 from, control
  word 3 (0x6218-0x621a, stores 0x6222 and 0x6225); word 4 does the same for bit 0x40000000 of word 0x1b (0x621b-0x621e, stores
  0x6226-0x6227). It stages `mmo_DrawTri` (0x288c), `mmo_DrawQuad` (0x28ca) and `mmo_DrawTriPrimOffset` (0x8dc0) at 0x6224,
  0x6228 and 0x622a, writes the first two to words 0x14, 0x13 and 0x11 (0x6231-0x6233) and, under a nonzero test of word 0x1b
  (0x6229), overwrites them with the offset variant (0x6234-0x6236). Its outputs are the updated words 3 and 0x1b and the draw-module slots; it selects between the plain and the offset module and combines the operands with the current flag bits.
- `mPolymodeSetup` (`polygon.S` line 156, at 0x6237):
  **inferred**, the shared tail that switches polygon-mode drawing on or off. Operand word 0 is the switch: its zero test (0x6237)
  selects whether bit 0 of control word 6 is set (OR, store 0x6242) or cleared (code 0x51, store 0x6243). Special register
  0x26 is cleared (0x6241) and set again under the nonzero tests of control words 6 and 0x1b (0x6246-0x6249). Operand words 1 and
  2 are saved to external-memory words 0xc and 0xd (reads 0x6244, 0x6245, stores 0x624d and 0x6253). It sets word 0xb to
  `mmo_DirtyCullAndLightModule` (0xf547, staged 0x6245, store 0x6254) and, when word 0 was nonzero, installs
  `mmo_DrawTriPolymodePrim` (0xda68, staged 0x624b) in words 0x14 and 0x11 (stores 0x6255-0x6256). Its outputs are the updated word 6, special register 0x26, external words 0xc and 0xd, and the draw-module slots.

## Triangle output with polygon offset (drawtri.S)

Read from the [drawtri.S listing](ge_listing/drawtri.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DrawTriPrimOffset` (`drawtri.S` line 127, at 0x8dc0):
  **inferred**, the independent-triangle output used when polygon offset is on. It tests bit 0x40000000 of control word 0x1b
  (0x8dc0-0x8dc1) and calls `mDoPolygonStippleDownload` (0x9d6b, 0x8dcd) when it is set; reads external-memory words 0xa44
  and 0xa43 through register 0x16 (0x8dd8, 0x8ddd); stages 0x4020000c, 0x805 and 0x49800000, that is 2^20 (0x8ddb-0x8dde); loads
  the colour constants at control words 0xc4-0xc6 (0x8de0-0x8de2) and copies words 6 and 3 to special registers 0x2e and 0x2f
  (0x8dd7, 0x8de3). Per triangle, in the loop that starts at 0x8de7, it takes three vertex pointers from the list at register 0xf
  (0x8df1-0x8df8), subtracts the vertices' window x, y (record words 0x23, 0x24) and z (0x25) pairwise (0x8dff-0x8e15), forms
  products and reciprocal steps (0x8e0e-0x8e31) and sends 0x805 to bus address 0x1f7 (0x8e34). The three vertices then go out
  through register 0x1e: texture differences (slots 0xd1-0xd4), window x, y (0xcd, 0xce), depth through code 0x7e (0xcf, 0xd0),
  colour multiplies (0xc9-0xcc) and the command word (0xd5), at 0x8e3b-0x8e8e. After the loop it writes an all-ones word to
  bus address 0x1f5 (0x8eb1) and calls `mDownLoadAALineTable` (0x65db, on cc 3, 0x8ed7) and `mGenerateAALineTable` (0x64af, 0x8ed8).

## Phong triangle drawing (phong.S)

Read from the [phong.S listing](ge_listing/phong.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DrawTriPrimPhong` (`phong.S` line 85, at 0x9296):
  **inferred**, the independent-triangle module for per-pixel (Phong) lighting. It points register 0xd at 0x8d2c (0x9296), reads
  control word 0xd (0x9298), points register 0xb at the scratch block 0x83a8 (0x929d) and writes the culling and clip special
  registers 0xc, 0xd and 0xe from the staged 2, 0x3f and 0x3f (0x929e-0x92a3). Per triangle, in the loop that starts at 0x92a4,
  it takes the three vertex pointers from the list at register 0xd (0x92b2-0x92b4), sends the packet header words 0x70000, 6,
  0x1243fd3 and 1 to bus addresses 0x1f8 and 0x1f5 (0x92bf-0x92c2), and sends each vertex's window x and y (slots 0xcd, 0xce) and a
  minimum for depth (0xcf, 0xd0) through register 0x1e (0x92c4-0x92d6). Edge differences of window x, y and record words 4-7 and
  0xf (0x92db-0x9336) are multiplied and subtracted into plane coefficients stored at register 0xb offsets 0-0x22 (0x92f9-0x9427).
  It then jumps to `normalize_and_light` (0x9428, return address staged at 0x9430; the second copy at 0x9479 and 0x9481),
  steps the normals along the edges with adds into record words 4-0xa (0x94b6-0x94e2) and loops back to 0x9425 or 0x93f8. It ends
  through word 0x1a (0x9519). Its outputs are the packet words on the raster bus, the coefficient block at 0x83a8 and the per-vertex window words.
- `normalize_and_light` (`phong.S` line 727, at 0x952c):
  **inferred**, the per-vertex step that scales an eye-space normal to unit length before lighting. It takes record words 8, 9
  and 0xa of the vertices at registers 0x10 and 0x11 as operands, squares and sums them (0x952c-0x9538), takes the reciprocal
  square root with a seed at 0x9542 and 0x9545 and refinement steps at 0x9540, 0x9543, 0x954c and 0x954f, and multiplies the three
  components by it. The unit normals go to record words 0xf-0x11 of each vertex (0x9554-0x9559). It continues through word 0xc
  (0x9553) and, in the delay word at 0x9561, writes the return address staged by the caller (0x9431 or 0x9482) to word 0xd, so the
  lighting stage that follows comes back to the Phong drawing loop. Its results are the unit normals in record words 0xf-0x11 and the redirected word 0xd.

## General lighting, per-light steps (generallight2.S)

These routines belong to the same per-vertex lighting pipeline as [General lighting](#general-lighting-generallights): address
registers 5 and 6 point at the front and back material blocks of the two vertices lit per pass, registers 8 and 9 at the
vertex records, register 3 at the light parameters in external memory. Each returns through a jump word of control memory
0x9c-0x9e. Read from the [generallight2.S listing](ge_listing/generallight2.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mLiLocalLight` (`generallight2.S` line 1097, at 0xc321): **inferred**, one positional light's contribution to two
  vertices, with distance attenuation (the spot falloff is not derived: see the end). It takes words 0x32-0x34 of both
  material blocks (adds at 0xc321-0xc326) and the light's position, spot and attenuation parameters, which it reads from
  external memory through register 3 (0xc330-0xc33e, 0xc367, 0xc3a1-0xc3a7; 0xc364 reads through register 0x16) as operands.
  It computes the squared distance with a multiply-add chain (0xc327-0xc32e), then its reciprocal square root (seed 0xc33f,
  steps 0xc33c, 0xc33d, 0xc348, 0xc349 and again 0xc3b9, 0xc3c4, 0xc3c5), reciprocals for attenuation (0xc395-0xc3a0) and
  maxima against zero for the dot products (0xc36d, 0xc379, 0xc3a5, 0xc3a7; the maximum reading is inferred, since the
  operation code ties with a move). The constant 1e-05 (0x3727c5ac) is staged at 0xc35a. Results are written into the
  material blocks at offsets 0x1a-0x22 and 0x2c-0x2e (0xc3a8-0xc3ce); it returns at 0xc3d2 through the word 0x9c read at
  0xc3ca. The words 0xc373-0xc394 (stores of lane data to control words 0x9d and 0x9e and reads with `r95` = 0x1c-0x1e and
  the immediate 0x1100) are not read here; they are the part that could hold the spot term.
- `mLiInfVInfLi` (`generallight2.S` line 91, at 0xc3db):
  **inferred**, the diffuse and specular accumulation for a directional light with a distant viewer. It takes the eye normals
  of both vertices (record words 0xf-0x11 through registers 8 and 9) and multiplies them by the light direction held in unit
  registers 3-5 (0xc3db-0xc3e5); the compare at 0xc3e8 and the clamp at 0xc3ea limit the diffuse factor. The light colour words
  read from register 3 (0xc3e9, 0xc3eb, 0xc3ed, 0xc3ef) scale the factors, and the sums are added into the colour-sum words
  0xe-0x10 of both material blocks (adds 0xc400-0xc405). It stores its next-step address to words 0x9d and 0x9e (0xc415, 0xc41d)
  and returns at 0xc41d.
- `mLiLocVInfLi` (`generallight2.S` line 403, at 0xc426):
  **inferred**, the same light accumulation for a viewer at a finite position. It adds the view-vector words 0x2f-0x31 of the
  two material blocks (0xc426-0xc431), multiplies them against the vertex normals (0xc43c-0xc441, 0xc453, 0xc457-0xc45f),
  normalises the combined vector with the reciprocal square root (steps 0xc43f, 0xc44c, 0xc452, seed 0xc448), and reads the
  light and material colour factors from register 3 (0xc450-0xc467). It updates the colour-sum words 0xe-0x10 of both blocks
  (adds 0xc46b-0xc472, 0xc47a), applies unit-1 codes 0x6d and 0x6c to the products (0xc479, 0xc480, 0xc485, 0xc487) and returns at
  0xc48a with the successor 0x9e stored at 0xc48c. Its inputs are the material-block words, the vertex normals and the light parameters at register 3; it accumulates the lit colour sums as its result.
- `mLiLocVInfLiInit` (`generallight2.S` line 761, at 0xc493):
  **inferred**, the first-light pass for that case, which also stages the next step. Its geometry matches `mLiLocVInfLi`:
  the same view-vector adds at 0xc493-0xc4a1, normal multiplies at 0xc4ab-0xc4b5 and reciprocal square-root steps at 0xc4ac,
  0xc4b3, 0xc4b9 and 0xc4bf. It stages `mLiLocLiFrnClrAccum` (0xd9c1) in word 7 of the front material block (0xc4cc), stores
  the jump words 0x9c and 0x9d (0xc4d9, 0xc4ea), writes the colour sums of both blocks fresh (moves 0xc4d5-0xc4e4 to words 0xe-0x10
  rather than adding) and returns at 0xc4f7 with word 0x9e stored in the delay words (0xc4fc). Its inputs are the same material-block words, vertex normals and light parameters as `mLiLocVInfLi` takes; its result is the fresh colour sums.

## Decomposers for the lit vertex path (mdecompose2.S)

These decomposers fill the table at 0x8bb0, with entries addressed through register 0xf: vertex pointers and a flag word built
from the edge-flag word 0x26 of the vertex records. Each stages the triangle clipper 0xed52 as the successor of the screen
stage (store to word 0x17) and tests cc 0x10 or 0x15 for an abort to `mmo_AbortGeometry` (0xe6e8). Read from the
[mdecompose2.S listing](ge_listing/mdecompose2.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DecomposeTriangleStripWithSwapOdd` (`mdecompose2.S` line 501, at 0xc989):
  **inferred**, the strip decomposer for triangles that need their vertex order reversed. It takes the vertex pointers in
  registers 0xb, 0xc and 0xe and the count from register 0x19, and derives the loop counter in register 0x12 (0xc989, 0xc993). Per
  triangle, in the loop that starts at 0xc998, it ANDs the edge-flag word 0x26 of the record at register 0xe with register 0x1b
  (0xc998), applies a predicated xor to the flag register (0xc99d) and exchanges registers 0xb and 0xc through register 0xa when
  the test is nonzero (0xc9a2-0xc9a6). The entry at register 0xf receives the pointers and the flag word from register 0x1c
  (stores 0xc9a5-0xc9ae), and register 0xf steps on at 0xc9ad until the group-31 end at 0xc9a9. Its output is the table of triangles, with vertex order swapped where the flag test selects it.
- `mmo_DecomposeTriangleStripWithSwapEven` (`mdecompose2.S` line 410, at 0xc9b2):
  **inferred**, the same strip decomposer started on the other parity. It first loads registers 9 and 0xc from register 0x1f
  (0xc9b2, 0xc9b6), reads control word 0x1d (0xc9b3) and combines it by code 0x51 into register 0x1c (0xc9b5). The loop that starts
  at 0xc9c3 ANDs the edge-flag words of the records at registers 0xc and 0xe with registers 0x1d and 0x1b (0xc9c3-0xc9c4), combines
  them with xor and OR (0xc9ce, 0xc9d0), swaps registers 9 and 0xa under cc 3 (0xc9cf-0xc9d1) and stores the pointers and the
  flag word to the entry (0xc9d2-0xc9d6), repeating through the transfer at 0xc9d7. Its inputs are the vertex pointers and the flag words; its output is the table of triangles, with swapped order where the test selects it.
- `mmo_DummyDecomposeQuadStrip` (`mdecompose2.S` line 222, at 0xc9e1):
  **inferred**, the quad-strip decomposer that draws nothing yet keeps the strip's vertex records consistent. It tests the count
  in register 0x19 against five thresholds (address-unit tests with F = 0x22-0x2a, 0xc9e2-0xc9ee), sets up register 0x12 and the two
  record pointers (0xc9ef-0xc9f5), and under cc 5 adds the staged constant 0x6800 to two record words of each of the vertices at
  registers 0xe and 0xf, offsets 0 and 0x27 (adds 0xc9fb-0xc9ff). The clipper address 0xed52 goes to word 0x17 (0xc9f6) and zero to
  word 0xa (0xc9fa); a test on cc 0x10 branches to the abort at 0xc9f7. Its inputs are the count and the two record pointers; its outputs are the adjusted record words, the clipper address and the cleared word 0xa.
- `mmo_DummyDecompose` (`mdecompose2.S` line 37, at 0xca01): **inferred**, the same stand-in as `umo_DummyDecompose` for the
  lit vertex path: it stages 0xed52 (0xca04), loads word 0xb as the transfer target (0xca01) and stores the clipper to word
  0x17 (0xca0e) and zero to word 0xa (0xca0f), so the decomposer slot clears and the command continues through word 0xb (the
  transfer at 0xca07). It reads no word beyond word 0xb; the clipper address goes to word 0x17 and a zero to word 0xa, and
  word 0xb is the successor.
- `mmo_DecomposeSimpleTriangles` (`mdecompose2.S` line 350, at 0xca10):
  **inferred**, independent triangles for the lit path. It takes the batch base from register 0x1f and derives the six record
  pointers from register 0x12 plus the strides 0x138, 0x57c, 0x618 and 0x6b4 (0xca10-0xca1e). It converts the vertex count to a
  triangle count: itof (0xca18), multiply by the staged 0x3eab020c, about one third (0xca16, 0xca1c), ftoi (0xca24). It ANDs the
  edge-flag words of the three vertices with control words 0xbf and 0xc0 (0xca1d-0xca25), ORs the results into one flag word
  (0xca26-0xca2a, 0xca2e-0xca2f) and stores pointer words at offsets 2, 3 and 0xf-0x12 of the entry at register 0xd, with flags at
  offsets 4 and 0x13 (stores 0xca31-0xca38). The clipper address 0xed52 (staged 0xca29) goes to word 0x17 (0xca37).
- `mmo_DecomposeQuads` (`mdecompose2.S` line 132, at 0xca3a):
  **inferred**, one quad per run, split into two triangle entries. It takes the vertex records from register 0x1f (registers
  0xf and 0x12, 0xca3b-0xca3c) and the count in register 0x19 (staged 0xca3d), forms a loop value through an arithmetic shift
  (0xca3f) and stages 0xed52, 0xc0000000, 0x7800 and 0x6000 (0xca42-0xca46). The entry at register 0xd holds pointer words at
  offsets 1-3 and 6-8 (stores 0xca4c-0xca59), flag words at offsets 4, 5 and 9 built from the edge-flag words ANDed with control
  words 0xbe and 0xc0 (0xca4e-0xca53, 0xca55, 0xca5a, 0xca5b). It ORs flag bits back into record words 0x26 of two vertices
  (0xca5c, 0xca5e), stores the clipper to word 0x17 (0xca5a) and ends at 0xca57 after the abort test at 0xca56. Its output is the table entries for the two triangles of the quad; it combines the edge-flag words of the vertices by AND and OR into the flag words.
- `mmo_DecomposeQuadStrip` (`mdecompose2.S` line 281, at 0xca60):
  **inferred**, the quad-strip decomposer for the lit path. The count in register 0x19 gives the pass count in register 0xc
  (0xca60, 0xca64), reduced each pass at 0xca7a; the clipper goes to word 0x17 (staged 0xca63, store 0xca6e) and the staged 0x6000
  and 0x6800 (0xca6c-0xca6d) adjust record words. Per quad, in the loop that starts at 0xca6f, it writes two five-word entries:
  pointers at offsets 0-3 with the constant 0xc1400000 at offset 4 (0xca6f-0xca73), and pointers at offsets 5-8 with the same
  constant at offset 9 (0xca74-0xca78, 0xca82). Under cc 5 it adds to record words 0x26 (0xca79, 0xca7b), and it steps registers
  0xd and 0xe by 0x138 and register 0xf by 0x28 (0xca7e-0xca80); the transfer at 0xca7c repeats. Its inputs are the vertex pointers and edge-flag words; its outputs are the two entries per quad.
- `mmo_DecomposePolygon` (`mdecompose2.S` line 53, at 0xca86):
  **inferred**, convex-polygon decomposition into a fan around the first vertex. It reads control words 0xbe, 0xbf and 0xc0 as
  edge masks (0xca86, 0xca89, 0xca8e), derives the triangle count from register 0x19 (0xca87, count less two) with the pass counter
  in register 0xc (0xca8b), and sets special register 0x2f from the staged set pattern (0xca88). Per triangle, in the loop that
  starts at 0xca96, it ANDs the edge-flag words of the vertices at registers 0xd, 0xe and 0xb with those masks (0xca96-0xca9f),
  ORs the results into one flag (0xca9b, 0xcaa3, 0xcaaa, 0xcaab) and stores the three pointers, the first one again at offset 3,
  and the flag word (0xcaac-0xcab3). Special register 0x2f is cleared and conditionally set again (0xcaae-0xcaaf); the clipper
  goes to word 0x17 (0xca95) and the transfer at 0xcab4 repeats the pass. Its inputs are the vertex pointers and the masks at control words 0xbe-0xc0; it combines the masked edge flags into one result per triangle.

## Colour-index and IRIS lighting (indxirislight.S)

Lighting for colour-index mode and for the IRIS GL colour paths. Read from the
[indxirislight.S listing](ge_listing/indxirislight.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mLiPrimMtrlIndxFinalLi` (`indxirislight.S` line 65, at 0xd536):
  **inferred**, the colour-index variant of the final-lighting copy selector: it stages the three next-step addresses 0xd786,
  0xd745 and 0xd5c4 (`mLiPrimMtrlCopyCmpn`, `mLiPrimMtrlCopyStckCmpn` and `mLiFinalLiEquIndx`) into words 6, 7 and 8 of the front
  material block (stores 0xd536, 0xd539, 0xd53c). It takes the mask 0x3f from staging word 2, ANDs it and stores the result to
  special register 0xf (0xd538), converts a value with ftoi (0xd53b), reads three external-memory words at 0x74-0x76 through
  register 0x16 (0xd53e, 0xd541, 0xd543) and writes jump words 0x98 and 0x90 (0xd548, 0xd54c). On cc 2 it branches to
  `mLiPrimMtrlCopyCmpn` (0xd544); otherwise the jump at 0xd545 goes to `mLiPrimMtrlCopyStckCmpn`.
- `mLiIrisColoring` (`indxirislight.S` line 393, at 0xd54e):
  **inferred**, the final colour step of the two-vertex light loop, in two forms chosen by bit 4 of control word 0x84 (AND,
  0xd54f, branch on cc 3 at 0xd55b). In the clamping form, whose loop starts at 0xd564, it takes colour words 4-7 of the vertices at
  registers 8 and 9, clamps each to the unit range (code 0x7c, 0xd566-0xd572) and moves the results into record words 0x1b-0x22 of
  both vertices under cc 3 (0xd56a-0xd580); registers 8 and 9 step by 0x3a8 (0xd57b, 0xd57e) and the transfer at 0xd579 repeats.
  The other form, whose loop starts at 0xd583, scales the colours by the staged 16.0 (0x41800000, 0xd559), converts to integer
  (0xd589, 0xd58c), masks with register 0x1c (0xd58d, 0xd590), converts back (0xd591, 0xd594) and stores the quantised colours to
  the same record words (0xd595-0xd59f).
- `mLiIndexFinalLi` (`indxirislight.S` line 134, at 0xd5a6):
  **inferred**, the light-index gather before the final colour-index step. It sets register 0xf to 1, or 2 under cc 0x62
  (0xd5a6-0xd5a7), takes the external-memory block at register 0x16 plus 0x64 (0xd5a8) and, in a second pass, plus 0x7b (0xd5b6),
  and copies its three words (reads 0xd5ac, 0xd5ae, 0xd5b1) to offsets 0xf-0x11 of both colour-sum blocks, registers 0 and 1
  (stores 0xd5b3-0xd5b9). Registers 0 and 1 come from registers 5 and 6 plus 0x11 (0xd5a9-0xd5aa); registers 3 and 4 are set from
  registers 8 and 9 plus 0x1b (0xd5ba-0xd5bb). The loop on cc 0x14 repeats at 0xd5ba and the jump at 0xd5bb continues in
  `mLiFinalLiEquIndx`. It takes the three external words per pass as input, produces them in both colour blocks unchanged, and selects the pass base 0x64 or 0x7b.
- `mLiFinalLiEquIndx` (`indxirislight.S` line 192, at 0xd5c4):
  **inferred**, converts the summed light colour to a colour index. It stages 16.0 (0xd5c5), 0.3 (0x3e99999a), 0.59 (0x3f170a3d)
  and 0.11 (0x3de147ae) (0xd5c8, 0xd5c9, 0xd5d3), the usual RGB-to-intensity weights, and multiplies words of the two colour
  blocks by them (0xd5ca-0xd5d7); the fadds at 0xd5da-0xd5e1 add the products into an intensity, fmin at 0xd5e2, 0xd5e5, 0xd5f6
  and 0xd5f9 limit it, and ftoi at 0xd5fe and 0xd601 produce integers. The itof stores at 0xd606-0xd60b write three words to each
  vertex's colour words, through registers 3 and 4. The successor word 0x9f is read at 0xd5ff, the loop on cc 0x14 repeats from
  0xd5c8 (0xd604) and the group-31 transfer at 0xd605 ends the command. Its inputs are the colour words of both blocks; its result is the colour index, which it derives by multiplying and adding the weighted components.

## Polygon-mode triangle drawing (polymode.S)

Read from the [polymode.S listing](ge_listing/polymode.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DrawTriPolymodePrim` (`polymode.S` line 80, at 0xda68):
  **inferred**, the triangle draw module that `mPolymodeSetup` installs when a polygon mode other than fill is active. It takes
  control word 6 (0xda68) and leaves to 0xdc09 on cc 0x28 or 0x26 (0xda6b, 0xda6c), the same tests `mmo_DrawTri` makes, and sets
  special registers 0x23 and 0x2a (0xda72, 0xda80). Per triangle, in the loop that starts at 0xda82, it reads the face's mode
  word from external memory through register 9 (0xda9f, 0xdacd), subtracts the constant 0x1b01, GL_LINE (staged 0xdaa5, 0xdad3;
  0x1b02 at 0xdc10), and dispatches on the result to 0xdaeb, 0xdafc or 0xdb72 (0xdae0-0xdae2). The first copies the triangle's
  five words through register 0xb (0xdaed-0xdaf1); the other two read external words 0xa43 and 0xa44, the pair
  `mmo_DrawTriPrimOffset` reads, with the staged 2^20 (0xdafc, 0xdafe, 0xdb05, 0xdb72-0xdb7b), subtract vertex window coordinates
  and depth pairwise (0xdb1d-0xdb33, 0xdb93-0xdba9), form reciprocal steps (0xdb30-0xdb38) and send 0x805 to bus address 0x1f7
  (0xdb4c, 0xdbc2). The sequences at 0xdc2c and 0xdc63 save vertex pointers to external words 0x14d5-0x14d9, send 0x805 to 0x1f7 and
  zero to 0x1f5 (0xdc46-0xdc4a, 0xdc7d-0xdc81) and jump back into the loop (0xdc5a, 0xdc93). The fill case clears bit 0 of control
  word 0x19 by code 0x51 (0xdbfd-0xdc08) and returns at 0xdc00 after reading word 0x1a (0xdbfa).

## Light and material queries and attribute stacks (getlight.S)

The routines here move lighting state between engine memory and the back end: one restores a saved block of eight
lights, one streams the eight light blocks out, and two answer host read-backs. Light blocks sit 0x23 words apart from
the external-memory base plus 0x2c7. Read from the [getlight.S listing](ge_listing/getlight.S.lst) (`ge.u`, IRIX
6.5.30m).

- `mgeb_PopAttrLights` (`getlight.S` line 593, at 0xc20a): **inferred**, puts a saved set of lights back into engine
  memory and queues the lighting modules for re-selection. Its single command word, the saved-block address, lands in
  address register 0x1a at 0xc20d, and the saved words come in through address register 15 (reads at 0xc231-0xc247,
  offsets 0-0xb). Register 3 is set from the external-memory base plus 0x2ab at 0xc20f (the light-model block that
  precedes the light blocks); nine stores at offsets 4-0xc (0xc213-0xc223) rewrite that block. The words at
  0xc226-0xc22e write control memory: 0x87, 0x9a = 0xd9a2 (`mLiDirtyLocLiVwrLiSrcInit`), 0xc = 0xf50d, 0xb = 0xf547 and
  8 = 0xf449, and AND control word 0x84 with 0xffffff9f and word 4 with 0xffffffdf (0xc21e, 0xc222), clearing bits of
  the lighting flags. The loop body 0xc22f-0xc24b copies twelve words per pass into the external-memory block register
  3 addresses and repeats on `cc` 0x14 (0xc24b); in the shadow of the end-of-command wait at 0xc24c, register 15
  advances by 0xc (0xc24f) and register 3 by 0x23 (0xc251). Its inputs are the saved words and the one operand; its
  result is the restored blocks, with the flag words combined by AND as above and the saved block selected through register 15.
  It combines the old flag bits with the masks to derive the new ones.
- `mgesi_PushAttrLights` (`getlight.S` line 470, at 0xc255): **inferred**, streams the lighting attribute words out to
  the back end. It consumes no command words; its inputs are the 0x23-word light blocks in external memory (register 3
  is loaded from the base at 0xc25f, and the pass count 8 is staged at 0xc25d and loaded into register 0x13 at 0xc25e).
  The header word 0x476 goes to bus-output 0x1f7 (0xc25c). The loop 0xc263-0xc27a reads words of one light block
  (offsets 1-7, 0x14-0x16 and 0x21, reads 0xc263-0xc279) and forwards them to the output window, address register 0x1e
  (moves 0xc26b-0xc278), repeating on `cc` 0x14 (0xc27a). The words after the wait at 0xc27b add 0x23 to register 3
  (0xc27f), send four more words (0xc27d, 0xc27e, 0xc281, 0xc282) and write a zero to bus-output 0x1f4 (0xc283). It
  selects and forwards stored words unchanged and adds 0x23 to the block pointer; its output is the word stream.
- `mgesi_LiGetMaterial` (`getlight.S` line 275, at 0xc284): **inferred**, answers a material read-back by returning
  four words of one material field. The face enumerant at command word 0x27 and the property enumerant at word 0x28
  (0xc285, 0xc294, 0xc298) are the inputs; it compares them with the staged constants 0x404, 0x405 and 0x408 (faces)
  and 0x1200-0x1202 and 0x1600-0x1603 (properties) with the `isub` words 0xc289-0xc29f. Address words at 0xc2ae and
  0xc2af select the front block (external-memory base plus 0x64) or the back block (plus 0x7b), and field addresses are
  picked by the predicated words 0xc2a6-0xc2aa. The result is four words sent to the output window (0xc2c2-0xc2c7)
  after the header 0x476 goes to bus-output 0x1f7 (0xc2b4); on `cc` 2 the branch at 0xc2b1 takes the path at 0xc2c9,
  which returns command words 4-7 unchanged (0xc2cc-0xc2d0). A zero to bus-output 0x1f4 (0xc2c8, 0xc2d1) closes the
  reply.
- `mgesi_LiGetLight` (`getlight.S` line 89, at 0xc2d2): **inferred**, answers a light read-back by returning one light
  parameter. Command word 0 (the light, into register 3 at 0xc2db and 0xc2ff) and word 1 (the parameter enumerant) are
  its operands; it compares the enumerant with the staged constants 0x1201-0x1209 using the `isub` chain 0xc2dc-0xc2ec;
  the predicated address words 0xc2e6-0xc2f5 pick the matching field through register 0x1a, with reads at 0xc2e4,
  0xc2f2 and 0xc2f4. The header 0x476 goes to bus-output 0x1f7 (0xc2dd, 0xc2f6). It returns four words: read through
  register 0x13 on the first path (0xc301-0xc307, stores 0xc309-0xc30e), or from register 3 plus offsets 1-4 on the
  path the branch at 0xc2f8 reaches at 0xc310 (reads 0xc312-0xc318, stores 0xc31a-0xc31f); a zero to bus-output 0x1f4
  (0xc30f, 0xc320) closes the reply.

## Light-model and colour-material handlers (lightmodel.S)

The colour-material handlers share one skeleton: they compare the colour-material enumerant at command word 0x27 with
the five material enumerants and derive per-field masks that go into special registers 0x20-0x27 (front fields
0x20-0x23, back fields 0x24-0x27). Read from the [lightmodel.S listing](ge_listing/lightmodel.S.lst) (`ge.u`, IRIX
6.5.30m).

- `mgeb_LiClrMtrlFrontBack` (`lightmodel.S` line 543, at 0xc721): **inferred**, switches colour tracking on for both
  faces. Inputs are the tracked-property enumerant at command word 0x27 and the current colour in operand words 4-7
  (saved to staging words 0xd-0x10 at 0xc747-0xc74a). The enumerant is compared with 0x1200, 0x1201, 0x1202, 0x1600 and
  0x1602 (`isub` words 0xc728-0xc72f), combines the flags with control word 0x84 (the AND at 0xc730) and XORs them into
  eight masks written to special registers 0x20-0x27 (0xc735, 0xc73a-0xc740, 0xc73d, 0xc73e). It also writes special
  register 0x2f (0xc743), reads the external-memory words 0x2b9 and 0x2b8 (0xc72b, 0xc745) and writes them back
  (0xc74d, 0xc753), stores control word 0x85 (0xc759), and either waits for the end of the command on `cc` 0x7f
  (0xc751) or jumps to `mLiUpdateMtrlColor` (0xdef0) at 0xc752. The masks it derives are its output, one per tracked
  field.
- `mgeb_LiClrMtrlBack` (`lightmodel.S` line 416, at 0xc75b): **inferred**, the back-face variant of colour tracking.
  The enumerant comparisons of the front-and-back entry recur here (0xc763-0xc769) with the staged face constant 0x405,
  and builds masks for the back fields only: four XORs write special registers 0x24-0x27 (0xc779-0xc77c) and zeros go
  to 0x20-0x23 (0xc76e-0xc771). Special register 0x2f is written at 0xc77d, the operand colour words 4-7 are saved to
  staging 0xd-0x10 (0xc781-0xc784), external-memory words 0x2b9 and 0x2b8 are read and rewritten (0xc764, 0xc76c,
  0xc787, 0xc78d) and the jump at 0xc78c hands over to `mLiUpdateMtrlColor`. It compares the operand enumerant and
  derives back-face masks as output.
- `mgeb_LiClrMtrlFront` (`lightmodel.S` line 289, at 0xc795): **inferred**, the front-face variant of colour tracking.
  The face constant 0x404 is staged at 0xc7b9, and the routine compares the tracked enumerant with 0x1200-0x1202,
  0x1600 and 0x1602 (0xc79d-0xc7a3); four XORs write the masks to special registers 0x20-0x23 (0xc7b3-0xc7b6) and zeros
  go to 0x24-0x27 (0xc7a8-0xc7ab). Special register 0x2f is written at 0xc7b7, operand words 4-7 are saved at
  0xc7bb-0xc7be, the external-memory words 0x2b9 and 0x2b8 are read and written back (0xc79e, 0xc7a6, 0xc7c1, 0xc7c7)
  and the jump at 0xc7c6 continues in `mLiUpdateMtrlColor` (0xdef0). The front-face masks it derives are its output.
- `mgeb_LightModelGAmb` (`lightmodel.S` line 228, at 0xc7cf): **inferred**, records the scene-wide ambient colour used
  by every lit vertex. Three colour operands (command words 0-2, moved at 0xc7d0, 0xc7d2 and 0xc7d4) are written as
  three words to external-memory offsets 0x2ab, 0x2ac and 0x2ad (stores 0xc7d9, 0xc7db, 0xc7dd). It combines the staged
  constant 1 with control word 0x86 by OR (0xc7d5, store 0xc7de) and loads the module addresses 0xf50d and 0xf547
  (0xc7d3, 0xc7d6) into control words 0xc and 0xb (0xc7df, 0xc7e0), so the next vertex batch re-selects the lighting
  code; the command ends at 0xc7d8. The operands pass through unchanged and the stored words are its output.
- `mgeb_LightModelLocV` (`lightmodel.S` line 152, at 0xc7e1): **inferred**, toggles whether specular terms use the true
  eye position. The operand is one command word (loaded into register 0x1a at 0xc7e1 and combined with the staged mask
  0xfffffffb by the AND at 0xc7ec); the routine reads control word 0x84 (0xc7e2) and ORs in the staged constant 4
  (0xc7e8); the same constant is ORed into control word 4 (0xc7eb). The updated words go back to control words 0x84 and
  4 under predicates (0xc7f3-0xc7f5), and 0xd9a2, 0xf449, 0xf50d and 0xf547 are written to control words 0x9a, 8, 0xc
  and 0xb (0xc7f6-0xc7fa). It writes special register 0x2e (0xc7ea) and waits for the next command at 0xc7f2. It
  combines the operand with control word 0x84 by AND and OR, and the rewritten words are its output.
- `mgeb_LightModel2Side` (`lightmodel.S` line 59, at 0xc7fb): **inferred**, toggles whether back faces get their own
  lit colour. One command word (register 0x1a, 0xc7fb) and control words 6 and 0x84 (read at 0xc7fc and 0xc800) are the
  inputs. The staged constant 0x80000000 (0xc7fe) is ORed into control word 6 at 0xc80d for the set case and combined
  with it by the unit-1 operation 0x51 at 0xc7ff for the clear case; predicated stores at 0xc816 and 0xc817 write the
  result. The constant 2 (staged at 0xc803) is ORed into control word 0x84 (0xc806, store 0xc814). Special registers
  0x26 and 0x2e are written (0xc807-0xc80b), and 0xf547 and 0xf50d (staged at 0xc802 and 0xc80c) go to control words
  0xb and 0xc (0xc815, 0xc818); the command ends at 0xc810. It combines the operand with control word 6 by OR or
  AND-NOT and rewrites it as the result.

## Light enable and disable handlers (lightenables.S)

These handlers flip bits in a few control words and queue the modules that must be re-selected. The stages 0xf50d,
0xf547, 0xf449 and 0xf4e4 are `mmo_DirtyLightModule`, `mmo_DirtyCullAndLightModule`, `mmo_DirtyXformAndObjToClipModule`
and `mmo_DirtyPrePathModule`; they land in control words 0xc, 0xb, 8 and 0xda-0xdb. Read from the [lightenables.S
listing](ge_listing/lightenables.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgeb_LiDisableClrMtrl` (`lightenables.S` line 967, at 0xdc9c): **inferred**, disarms the per-vertex colour override
  of material fields. The current colour in command words 4-6 (moved to staging 0xd-0xf at 0xdcaa-0xdcad), a further
  word read at 0xdcb3 and control word 0x84 (0xdc9e) are the inputs. The routine tests the tracking bit 0x10 (staged at
  0xdc9d), clears bit 3 of control word 0x84 with the mask 0xfffffff7 (0xdcb1, 0xdcb2, store at 0xdcbe), and under a
  predicate restores the lighting final step 0xda3c (`mLiFinalLi`) to control word 0xa1 (0xdca9). It writes the
  colour-material result to special register 0x2e (0xdca8), queues the dirty modules into words 0xc and 0xb (0xdcb9,
  0xdcba), and on `cc` 0x7c branches at 0xdcb6 to `mLiUpdateMtrlColor` (0xdef0) before waiting at 0xdcb7. It combines
  control word 0x84 with the mask by AND, and the colour operands are its inputs.
- `mgeb_LiDisableLightS` (`lightenables.S` line 832, at 0xdcc0): **inferred**, subtracts one from the enabled-light
  count in control word 0x87 and zeroes word 0 of the light's block, only when that word is nonzero. It reads command
  word 1 into address register 0x1a (0xdcc0): the block address 0x2c7 + 0x23 n that the ARM sends on port 0x840. It
  never reads command word 0, the light number from port 0x478. 0xdcc8 sets address register 3 to register 0x16 plus
  register 0x1a, the block in external memory, and subtracts (code 0x42, routing 0x77d) the result of 0xdcc4,
  forwarded by `r128` code 0, from control word 0x87, read at 0xdcc7, into staging word 2. 0xdcc4 converts register
  0x1f with code 0x71, and register 0x1f is the constant 1.0 (the identity diagonal of `mMatrixLoadIdentityC`,
  0xd403), so the step is one. 0xdccc and 0xdcce read block words 1 and 0. With a seven-word load delay, 0xdcd4 sets the
  unit-1 flags from word 1 (code 0x6a) and 0xdcd5 writes word 0 to special register 0x2e. The routine stores under predicate
  0x7c: the new count to word 0x87 (0xdcf6, store data loaded at 0xdced), zero to block word 0 (0xdd07, zero moved
  from register 0x1e at 0xdcfe), 0xd9a2 to word 0x9a (0xdce8) and zero to ERAM 0x2af plus address register 0xa
  (0xdd09). ERAM 0x2ba, read at 0xdcda, is written back at 0xdcf1 less register 0x1b (0xdce1), and register 0x1b is
  1 under predicate code 3 (0xdcd8) and 0 under 0x7d (0xdcd9). Under predicate 0x6b, which tests special register
  0x25 (the new 0x2ba value, 0xdce5), it clears bit 5 of control word 4 (mask 0xffffffdf, 0xdce9, 0xdcea, store
  0xdcf3) and queues 0xf449 into word 8 (0xdcf2); under code 2 it stores word 0x86 ORed with 1 (0xdceb, 0xdcf4), and it queues words 0xc
  (0xdd02) and 0xb (0xdce6). The predicate reading: predicate and branch codes 0x60-0x7f test special registers
  0x20-0x2f, two codes per register with bit 0 inverting, the way `mLiSwichSpotPrwTable2` writes special registers
  0x20 + n and branches on `cc` 0x60 + 2n; 0x7c tests 0x2e. The disable stores under 0x7c and the enable under 0x7d,
  so 0x7c reads as "nonzero" by function: disabling a light that is already off changes nothing. What address
  register 0xa holds at 0xdd09 is unknown: 0xdcdc sets it to register 0x16 plus register 0x1a after 0xdcd2 reloads
  register 0x1a, and the value of that reload is not traced; the next route is the reload's source word.
- `mgeb_LiDisableLighting` (`lightenables.S` line 722, at 0xdd0d): **inferred**, clears the master lighting bits spread
  over four control words. One command word (register 0x1a, 0xdd0d) is consumed, and the masks 0xfffffffd, 0xffffffdb
  and 0xffffff7f and the constants 0x80000000 and 8 are staged (0xdd0f-0xdd15) and ANDed into control words 5, 4 and
  0x84 (0xdd18, 0xdd19, 0xdd1f), which clears bit 1 of word 5, bits 2 and 5 of word 4 and bit 7 of word 0x84; control
  word 6 loses bit 31 through the unit-1 operation 0x51 at 0xdd12. The stores 0xdd20-0xdd28 write those words back,
  special registers 0x26 and 0x2e are written (0xdd1a, 0xdd1c), the dirty modules go to words 8, 0xc and 0xb
  (0xdd25-0xdd27), and `mmo_DirtyPrePathModule` (0xf4e4, staged at 0xdd1e) goes to control words 0xda and 0xdb (0xdd29,
  0xdd2a); the command ends at 0xdd22. Its operand is one command word; it combines the masks with control words 5, 4
  and 0x84 by AND, and the cleared words are its output.
- `mgeb_LiEnableClrMtrl` (`lightenables.S` line 665, at 0xdd2b): **inferred**, arms the per-vertex colour override of
  material fields. Reading one command word into register 0x1a (0xdd2b), it ANDs the staged 0x10 with the following
  operand (0xdd2f) to derive the predicate for the update; under it control word 0xa1 receives 0xd831
  (`mLiClrMtrlFinalLi`, staged at 0xdd30, stored at 0xdd3a). It ORs bit 3 (the constant 8, staged at 0xdd33) into
  control word 0x84 (the OR at 0xdd34, store at 0xdd3d) and queues 0xf50d and 0xf547 in control words 0xc and 0xb
  (0xdd3b, 0xdd3c), then ends at 0xdd35. It combines the operand with 0x10 by AND and ORs bit 3 into control word 0x84;
  the rewritten word is its output.
- `mgeb_LiEnableLightS` (`lightenables.S` line 546, at 0xdd3e): **inferred**, adds one to the enabled-light count in
  control word 0x87 and writes the new count into word 0 of the light's block, only when that word is zero. It reads
  command word 1, the block address from port 0x840, into address register 0x1a (0xdd3e), sets address register 3 to
  register 0x16 plus that address (0xdd46) and reads block words 0 and 1 (0xdd4a, 0xdd4c). 0xdd4d moves control word
  0x87 into staging word 9. 0xdd5e converts the constant register 0x1f (1.0) with code 0x71, and 0xdd62 adds the
  result, forwarded four words by `r128` code 0, to staging word 9 (code 0x40). Under predicate 0x7d that sum goes to
  word 0x87 (0xdd6b) and to block word 0 (0xdd6c), both from the store data 0xdd62 loads. The predicate tests special
  register 0x2e, which 0xdd52 loads with block word 0; 0xdd53 sets the unit-1 flags from block word 1 (code 0x6a).
  A seven-word load delay gives that pairing here and in the disable, where the two reads come in the other order, and
  matches `mpixelSetup.S`, whose reads at 0xa7e8 and 0xa7ea are used at 0xa7ef and 0xa7f1. Under the same predicate the routine keeps a second
  count in ERAM 0x2ba. 0xdd5d reads that word into address register 0x1a after 0xdd5f has saved the block address in
  staging word 0xa. 0xdd66 sets address register 0xb to register 0x16 plus the word read, and 0xdd6a stores the block
  address (store data loaded at 0xdd61) at 0x2af plus that word. 0xdd73 writes 0x2ba back as the word plus register
  0x1c (0xdd64). Register 0x1c is 0 (0xdd5a), 1 under predicate code 3 (0xdd5b) and 0 under 0x7c (0xdd5c). Under 0x7d
  it also writes 0xd9a2 to word 0x9a (0xdd60). It writes 0xf547 to word 0xb (0xdd61) and 0xf50d to word 0xc (0xdd67)
  unconditionally. Under predicate 0x6a, which tests special register 0x25 (the new 0x2ba value, 0xdd68), it stores
  control word 4 ORed with 0x20 (0xdd6d, 0xdd76). Under 0x6e it queues 0xf449 into word 8 (0xdd78), and under code 2
  it stores word 0x86 ORed with 1 (0xdd70, 0xdd7c). The command ends at 0xdd7a. The predicate codes are read as under
  `mgeb_LiDisableLightS`; with them, enabling a light that is already on changes nothing. Bit 5 of control word 4 then
  follows whether the 0x2ba count is nonzero, set here and cleared by the disable. Which light property the code-3
  predicate tests (it follows the flags of block word 1) is unknown; the next route is the light-parameter handlers that
  write block word 1.
- `mgeb_LiReCmpPwrTable` (`lightenables.S` line 462, at 0xdd83): **inferred**, stores the exponent-table control word
  and asks for a rebuild of the spot power table. One command word (register 0x1a, 0xdd90) is converted to an integer
  (0xdd91) and delivered to special register 0x2f (0xdd92) and external-memory word 0x1bfe (the store at 0xdd9c). It
  tests control word 0x84 for bit 7 (0xdd85) and writes special register 0x2e (0xdd89), sets control word 0x86 to 7
  (staged at 0xdd93, stored at 0xdd9d) and queues 0xf50d and 0xf547 in words 0xc and 0xb (0xdd9e, 0xdd9f); on `cc` 0x7c
  the branch at 0xdd97 goes to `mLiSwichSpotPrwTable` (0xde3f), otherwise the return at 0xdd98 leaves the routine. It
  converts its operand to an integer and the stored words are its outputs, combined with the flags as above.
- `mgeb_LiEnableLighting` (`lightenables.S` line 77, at 0xdda1): **inferred**, sets the master lighting bits spread
  over four control words. External-memory word 0x1bfe (0xdda1) and one command word (register 0x1a, 0xdda2) are the
  inputs; the operand is converted with the unit-1 operation 0x6c (0xdda3) and writes the result to special register
  0x2f (0xdda8). It sets bit 31 of control word 6 (the OR with 0x80000000 at 0xddab), bit 1 of word 5 (0xddb0), bits 2
  and 5 of word 4 (the constant 0x24 staged at 0xddac) and bit 7 of word 0x84 (0xddb7), the mirror image of
  `mgeb_LiDisableLighting`. It queues 0xf50d, 0xf547 and 0xf449 for words 0xc, 0xb and 8 and 0xf4e4 for words 0xda and
  0xdb (0xddc2, 0xddc3), writes special register 0x26 (0xddb3), and either waits at 0xddbb on `cc` 0x7f or jumps to
  `mLiSwichSpotPrwTable` (0xde3f) at 0xddbc. It combines the bits by OR as described and converts the operand as shown.
- `mLiSwichSpotPrwTable2` (`lightenables.S` line 319, at 0xddc5): **inferred**, dispatches over the eight lights after
  the spot power table has been recomputed. The eight integer results the table routine leaves in registers 0-7 are the
  inputs, and they are written through the unit-1 operation 0x4c, to special registers 0x20-0x27 (0xddc5-0xddce). Eight
  consecutive branches on `cc` 0x60, 0x62, 0x64 ... 0x6e (0xddd3, 0xdddc, 0xdde5, 0xddee, 0xddf7, 0xde00, 0xde09,
  0xde12) test each light; their delay words load register 1 with staging word 2-9, register 3 with the light block
  0x2c7, 0x2ea, 0x30d ... 0x3bc (0xddd5, 0xddde, ...), register 0 with 0x1100 + 0x20n and register 2 with the table
  slot 0x1bff + n. A taken branch goes to `mLiSwichSpotPrwTableSub` (0xde2a); with none taken the word at 0xde1b loads
  the successor from control word 0x9e and the command ends at 0xde20. It selects which light takes the branch; the
  special-register values and block pointers are its outputs.
- `mLiSwichSpotPrwTableSub` (`lightenables.S` line 418, at 0xde2a): **inferred**, the per-light step that refreshes one
  entry of the spot power table. Registers 1, 2 and 3 arrive as the earlier dispatcher left them; the routine reads the
  light's exponent word at register 3 plus 0x1d (0xde2a) and the table word at 0x1448 plus register 1 (0xde2c). It
  computes a difference (`fsub`, 0xde33), scales it by the constant 0x3d042108, one thirty-first (staged at 0xde35,
  multiplied at 0xde37) and stores the product to external memory through register 2 (0xde3b), after loading registers
  13 and 1 with 0x8584 and 0x20 (0xde39, 0xde3a). It finishes by jumping to `mLiPwrTable` (0xdc9) at 0xde36. Its inputs
  are registers 1-3; it subtracts and scales as shown, and the stored table entry is its result.
- `mLiSwichSpotPrwTable` (`lightenables.S` line 185, at 0xde3f): **inferred**, recomputes the eight lights' spot
  power-table state in one unrolled pass. Address register 15 gets 0x1c00 (0xde3f); light 0's and light 1's spot words
  at external-memory offsets 0x2e4 and 0x307 (0xde41, 0xde45) and the table word 0x1bff (0xde4b) are read, and the
  routine then walks the lights by adding 0x23 to the block pointer (0xde49, 0xde50, 0xde55, 0xde5d, 0xde63),
  multiplying each spot word by the table entry (`fmul` 0xde48, 0xde4c, 0xde51, 0xde54, 0xde5b, 0xde60, 0xde68, 0xde6e)
  and subtracting neighbouring entries (`fsub` 0xde52, 0xde56, 0xde5a, 0xde5e, 0xde62, 0xde66, 0xde6c, 0xde72). The
  eight flags it sets (0xde42-0xde47 and the moves to 0xde74) select among eight integers (`ftoi`, staging words 2-9 at
  0xde81-0xde88), the successor is loaded from control word 0x9e (0xde80), and the branch at 0xde89 on `cc` 3 enters
  `mLiSwichSpotPrwTable2` (0xddc5); `ret` at 0xde8b ends the routine. Its inputs are the spot words and table entries;
  it multiplies and subtracts them, and the integers it produces feed the dispatcher.

## Material handlers (material.S)

The `glMaterial` handlers keep one material block per face in external memory (front at the base plus 0x64, back at
plus 0x7b) and branch by property to small writer routines. Read from the [material.S
listing](ge_listing/material.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgeb_Material` (`material.S` line 54, at 0xde94): **inferred**, the common entry for a material change, which
  decides which block and field the operand words belong to. Command words 0 and 1 carry the face and property
  enumerants (loaded into registers 0x1a and 0x19 at 0xde95 and 0xde96), with the colour or exponent operands behind
  them (0xde97, 0xded5-0xdee1). Both enumerants are compared with the staged 0x404, 0x405, 0x408 and 0x1200-0x1203,
  0x1600-0x1602 (`isub` words 0xdea3-0xdeb7), and selects the field address, the base plus 0x64, 0x68, 0x6c, 0x70, 0x74
  or 0x78, with predicated address words at 0xdeb9-0xdec2. It then branches on `cc` 0x10 to `mErrInvalidEnum` (0xd520),
  `cc` 0x68 to `mLiPushMaterial` (0xe036), `cc` 0x7b to `mLiSetMAmbDiff` (0xdf4c), `cc` 0x79 to `mLiSetMShininess`
  (0xdf27), and to `mLiPushMtrlInit` (0xdfb1) at 0xdeca; the direct path stores operand words through registers 12 and
  4 (0xded9-0xdee8) and marks control word 0x86 (0xdee5). The selected field address and the stored operand words are
  its results.
- `mLiUpdateMtrlColor` (`material.S` line 406, at 0xdef0): **inferred**, applies the current vertex colour to a tracked
  material field. Staged enumerants are compared (`isub` 0xdef1-0xdf00), control word 0x84 is ANDed (0xdefc) and the
  routine selects the field address, the base plus 0x70, 0x68, 0x6c or 0x64 (address words 0xdefd, 0xdefe, 0xdf01,
  0xdf04). The four colour words (staged at 0xdf02 onward) are written through registers 12 and 4 at 0xdf10-0xdf23,
  special register 0x2d is written at 0xdef5, 0x86 is set from the constant 1 (0xdf1b, 0xdf1c) and the dirty modules
  0xf50d and 0xf547 are queued in words 0xc and 0xb (0xdf24, 0xdf26); the branch at 0xdf03 on `cc` 0x7b skips to
  `mLiSetMAmbDiff`. Its inputs are the staged colour words and enumerants; the stored blocks are its output.
- `mLiSetMShininess` (`material.S` line 322, at 0xdf27): **inferred**, writes a material's shininess exponent after
  validating it. The staged exponent (staging word 0xd) is compared with the limit 128.0 (0x43000000 at 0xdf29;
  `u1_0x6a` at 0xdf2b, `fsub` at 0xdf2e). A larger value reaches the jump to `mErrInvalidValue` (0xd50a) at 0xdf43.
  Valid values are converted and written to special registers 0x2c and 0x2d (0xdf27, 0xdf28, then predicated copies
  0xdf2a-0xdf36) and to the front and back field words through registers 12 and 4 (0xdf44, 0xdf46); control word 0x86
  gets the staged bits 2 and 4 by OR (0xdf33, 0xdf40) and the routine waits for the next command at 0xdf41 or 0xdf42.
  Its input is the staged exponent; it compares it with 128.0 and converts it, and the special-register values are its
  result.
- `mLiSetMAmbDiff` (`material.S` line 268, at 0xdf4c): **inferred**, writes the ambient or diffuse colour words of a
  material block. The three staged colour words (staging 0xe-0x10, read at 0xdf4c, 0xdf54 and 0xdf5c) and a fourth word
  already on hand are stored twice each, once at registers 12 and 4 plus offsets 0-3 (0xdf4d-0xdf65) and once eight
  words earlier (F = 0x27-0x24, stores 0xdf51-0xdf6e), so one command refreshes the ambient and diffuse fields
  together. It combines the constant 1 into control word 0x86 (0xdf66, 0xdf67), queues 0xf50d and 0xf547 (0xdf6f,
  0xdf71) and ends at 0xdf69. Its inputs are the staged colour words; the stored fields are its output.
- `mLiPushMtrlShin` (`material.S` line 742, at 0xdf72): **inferred**, the shininess writer used by the material push
  path. The limit 128.0 (0xdf74) and the bit constant 2 (0xdf75) are staged; the exponent is compared with the limit
  (0xdf78, 0xdf7c) and converted into special registers 0x2c and 0x2d (0xdf72, 0xdf73, 0xdf76-0xdf82). Two predicated
  external-memory stores write the result at offsets 0x2bf and 0x2c5 (0xdf94, 0xdf96, after the reads at 0xdf84 and
  0xdf86), control word 0x86 gets the staged 4 (0xdf8e, 0xdf90), and an out-of-range value takes the jump to
  `mErrInvalidValue` (0xd50a) at 0xdf93. It converts the exponent operand and compares it with the limit; the stored
  words are its results.
- `mLiPushMtrlInit2` (`material.S` line 946, at 0xdf9c): **inferred**, the second stage of starting a material push;
  its address is staged by `mLiPushMtrlInit` (0xdfd1) and moved into register 0x12 at 0xdfd6. Staging words 0xc, 7, 8
  and 4 (the colour words handed over, read at 0xdf9c-0xdf9f) feed three special registers 0x2c, 0x2d and 0x2e
  (0xdfa1-0xdfa3), and the routine stages the face constant 0x405 (0xdfae). The word at 0xdfa8 jumps on to
  `mLiPushMaterial` (0xe036), so its output is the three special-register values plus that transfer. Its inputs are
  four staging words; it selects them into three special registers and returns through the jump.
- `mLiPushMtrlInit` (`material.S` line 822, at 0xdfb1): **inferred**, opens a material push by snapshotting the current
  material block. External-memory words 0x79, 0x90 and 0x91 are read (0xdfb3, 0xdfb5, 0xdfb7) and twelve words are
  written at offsets 0x2bb-0x2c6 (stores 0xdfbd-0xdfd8). It stages the successor addresses 0xd85e (0xdfca), 0xdf9c
  (0xdfd1) and 0xc76 (0xdfd7), puts the constants 0x89, 0x8c, 0x8b, 0x86, 0x9e, 0xc and 0xb into control-memory stores
  (0xdfd9-0xdfe2), and divides control: a branch on `cc` 0xa at 0xdfda to `mLiPushMaterial` (0xe036), otherwise a jump
  at 0xdfdb to `mLiUpdateShin` (0xe27a). Its inputs are three words read from external memory; the twelve-word snapshot
  is its output.
- `mLiPushMtrlDiff` (`material.S` line 689, at 0xdfe4): **inferred**, the push path's colour writer for the diffuse and
  ambient fields. External-memory words 0x2bc and 0x2c2 are read (0xdfe5, 0xdfe8), and the routine derives the field
  pointers in registers 5, 6, 12 and 4 from them by small offsets (address words 0xdfe6, 0xdfe7, 0xdfea, 0xdfeb,
  0xdffd, 0xdfff) and writes the four staged colour words (staging 0xd-0x10, read at 0xdfe4-0xdff1) through registers
  5, 6 and 12 (stores 0xdfee-0xdffa, 0xdffe). On `cc` 0x7b the branch at 0xdfff continues in `mLiPushMtrlASEI`
  (0xe009); otherwise the command ends at 0xe000 with register 4 set to the base plus 0x7f. Its inputs are the staged
  colour words; the stored fields are its output.
- `mLiPushMtrlASEI` (`material.S` line 612, at 0xe009): **inferred**, the push path's writer for the remaining colour
  fields. Staging words 0xc-0x10 (read at 0xe009, 0xe00e, 0xe012, 0xe01f, 0xe023) are compared with the staged
  enumerants (`isub` 0xe00a-0xe00d), and takes the field addresses from external-memory offsets 0x2c0, 0x2bb, 0x2bd and
  0x2be (predicated address words 0xe014-0xe01a). The colour words go out through registers 5, 6, 14 and 15 (stores
  0xe017-0xe02e), after two reads at 0xe020 and 0xe022 and an address step at 0xe011 and 0xe013 (F = 0x24); the command
  ends at 0xe02d. It compares and selects the fields, and the stored colour words are its output.
- `mLiPushMaterial` (`material.S` line 532, at 0xe036): **inferred**, the property dispatcher of the push path. Staged
  property and face words come in, and control word 0x84 is tested against the staged 0x10 (0xe037), forms two field
  pointers, registers 5 and 6, from register 12 plus 0x20 and 0xf2 (address words 0xe04b, 0xe04c), and shifts and
  compares to set the flags at 0xe04d. It then transfers on `cc` 0x7b or 0x7d to `mLiPushMtrlDiff` (0xdfe4, branches
  0xe04e, 0xe04f), on `cc` 0x78 to `mLiPushMtrlASEI` (0xe009, 0xe050) and otherwise jumps to `mLiPushMtrlShin` (0xdf72,
  0xe051); it also writes special register 0x2f (0xe03b, 0xe049). Its inputs are the staged property and face words; it
  selects the target routine and the field pointers are its output.

## Light state initialisation and dirty refresh (lightsubroutines.S)

These routines set up the default lighting state in external memory and derive the control-memory coefficients the
lighting inner loops read from it. Read from the [lightsubroutines.S listing](ge_listing/lightsubroutines.S.lst)
(`ge.u`, IRIX 6.5.30m).

- `mGL_LightInitialize` (`lightsubroutines.S` line 1087, at 0xe05a): **inferred**, builds the spot-exponent power table
  in external memory. No command words are read. Among the immediates staged between 0xe05a and 0xe175 are 128
  floating-point values equal to 0.002 raised to the power 1/n for n = 1 to 128 (0x3b03126f for n = 1, 0x3d372d5e for n
  = 2, up to 0x3f73de1e for n = 128; checked by recomputation), together with -1.0 and 1.0 (0xe05a, 0xe05b). The table
  values are written sixteen words per address register through registers 0x13 down (stores 0xe080-0xe15e), with
  register 0x13 loaded with 0x1448 at 0xe064, and the scalar stores at 0xe068-0xe078 fill external-memory words 0x1bfc,
  0x1bfd, 0x11ff and 0x1bfe-0x1c06 (the words `mLiSwichSpotPrwTable` and `mLiUpdateShin` read back). The routine
  returns at 0xe17b. Its operands are constants alone; it combines them into the stored table, which is its result.
- `mGL_CtxLightInitialize` (`lightsubroutines.S` line 896, at 0xe184): **inferred**, writes the default lighting state
  for a new context. No command words are read. Register 13 is set to the external-memory base plus 0x64 (0xe184) and
  register 12 to the base plus 0x7b (0xe18d), and the staged defaults 0.2 (0x3e4ccccd), 0.8 (0x3f4ccccd), 1.0 and 0.0
  (moves 0xe185-0xe1de) fill the front and back material blocks (stores 0xe18f-0xe1df). A loop (0xe1e0-0xe22b) fills
  each of eight light blocks, 0x23 words apart, with default constants such as 1.0, -1.0 (0xe225), the cut-off 180.0
  (0x43340000, 0xe213) and 0x48800100 (0xe21f); register 3 steps by 0x23 (0xe230), the pass counter is decremented at
  0xe227 and the branch at 0xe22b repeats on `cc` 0x14. Afterwards light 0 gets white colour defaults (0xe235-0xe23c),
  the light-model block at the base plus 0x2ab gets 0.2 ambient (0xe23e, 0xe240) and the mode constants 0x1602 and
  0x408 (0xe25a, 0xe25c), and control memory receives the module addresses 0xf547 and 0xf50d, 0xda3c, 0xd901 and 0xc3db
  through register 13 = 0x84 (0xe244, 0xe26c-0xe279); it returns at 0xe271. Its operands are constants alone; it
  combines them into the default blocks, which are its output.
- `mLiUpdateShin` (`lightsubroutines.S` line 674, at 0xe27a): **inferred**, recomputes the shininess-derived specular
  state after a material change. The shininess words at external-memory offsets 0x78 and 0x8f (0xe27a, 0xe27c) and the
  table controls at 0x1bfc, 0x1bfd and 0x1448 (0xe293, 0xe296, 0xe298, 0xe29b) are the inputs. The constants 0x3f7fffef
  (0.99999899), 0x3b808081 (1/255) and 0x47000000 (32768.0) are staged in a scratch block at 0x8584 (address register
  13, loaded at 0xe280) by the stores 0xe28a-0xe28c. It derives a reciprocal (`rcpseed` 0xe2a8, `rcpstep` 0xe2a6,
  0xe2a9, 0xe2ae, 0xe2b1) and scales with it (`fmul` 0xe2aa, 0xe2ad, 0xe2b2-0xe2be). Results go to external-memory
  words 0x1bfc and 0x1bfd (0xe2b8, 0xe2bb), 0x79 and 0x7a (0xe2bf, 0xe2c9), 0x90 and 0x91 (0xe2c7, 0xe2cb) and control
  words 0x86, 0x89, 0x88, 0x8c and 0x8b (0xe2ac, 0xe2bd, 0xe2c1, 0xe2c8, 0xe2ca, 0xe2cd); the branches at 0xe2c5 and
  0xe2c6 continue at 0xe2e1 or call `mLiPwrTable` (0xdc9).
- `mLiDirtySimLiCRAM` (`lightsubroutines.S` line 108, at 0xe334): **inferred**, rebuilds the control-memory lighting
  coefficients for the simple lighting case. The light-model ambient words 0x2ab-0x2ad (0xe334, 0xe336, 0xe338) and
  light and material fields through registers 7 and 12 (reads 0xe33a-0xe347, 0xe35d-0xe372) are the inputs; it adds and
  multiplies them (`fadd` 0xe341-0xe345, 0xe372, 0xe384-0xe387; `fmul` 0xe349-0xe34d, 0xe374-0xe383), and then reloads
  register 13 with the control-memory address 0x84 (0xe373) and writes the results to control words 0x84-0x99 with the
  stores 0xe373-0xe390. Control word 0x84 receives the AND of a staged word with a material word (0xe36a), 0x86 the
  constant 1 combined by the unit-1 operation 0x51 (0xe36c); the command ends at 0xe388.
- `mLiDirtyGenLiCRAM` (`lightsubroutines.S` line 320, at 0xe391): **inferred**, rebuilds the control-memory lighting
  coefficients for the general lighting case. Three ambient words at 0x2ab-0x2ad (0xe391, 0xe393, 0xe395) and light and
  material fields through registers 12 and 0 (reads 0xe397-0xe3bd) go in; products are formed with `fmul.mov` words
  (0xe39f, 0xe3a1, 0xe3a3, 0xe3b6, 0xe3b8, 0xe3ba) and sums with `fadd` (0xe3a4, 0xe3a6, 0xe3bc, 0xe3bd, 0xe3bf), then
  reloads register 13 with the control-memory address 0x84 (0xe3a8) and stores the set through it (0xe3ab-0xe3d1,
  ending with the command at 0xe3c9). Control word 0x84 gets the OR of a staged constant with a material word (0xe397),
  0x86 the constant 1 combined by the unit-1 operation 0x51 (0xe3c8, 0xe3d1), and the successor is loaded from control
  word 0x9d (0xe3c3). Its inputs are the ambient, light and material words; it multiplies and adds them, and the
  control words are its output.

## Float-to-integer pixel stage (floattoint.s)

The module the ARM appends for float-to-integer pixel transfers: a set-up that copies a short parameter block, a loop
that scales and converts 24 components per pass, and a drain for the remainder. Read from the
[floattoint.s listing](ge_listing/floattoint.s.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_FloatToInt` (`floattoint.s` line 30, at 0x2753): **inferred**,
  the stage that turns scaled float pixel components into 32-bit integers. It takes the control-memory words 0x1ba-0x1be
  as input, copied to staging words 0-4 by five moves (0x2754-0x2758), and word 0x1bf, which it loads into register 0
  (0x275c) as the multiplier; the components arrive on the input stream (A = 0x10). The staging words then go into
  address registers 3, 0, 4, 1 and 2 (0x275d-0x2761), and the address-unit words of 0x2762-0x2774 add them into the
  pointers the loop reads and writes through. The first multiplies by register 0 (0x2779-0x277b) lead straight into
  `mainloop_f2i`; a short input leaves by the `cc` 0x15 transfer at 0x2771 to `epilogue_f2i`. Its output is the stream of
  integers the loop stores.
- `umo_FloatToInt` (`floattoint.s` line 30, at 0x2753): **inferred**,
  the second name of the same first word, so the 41 words 0x2753-0x277b are one set-up block. They consume the six
  parameter words of control memory 0x1ba-0x1bf, derive the loop's start addresses with integer address arithmetic, and
  leave register 0 holding the scale that every later multiply uses. Control falls on into `mainloop_f2i` at 0x277c. The block takes the parameter words as input and its output is register 0 and the five address registers that the loop uses.
- `mainloop_f2i` (`floattoint.s` line 94, at 0x277c): **inferred**,
  the conversion loop, 24 components per pass. Each two-unit word (`fmul.ftoi`, M = 0x471, for instance 0x277d and
  0x277f-0x2789) multiplies a component read from the stream (D = 1-0x18) by register 0 in unit 2, while unit 1 converts
  the product of the word before with code 0x71, the float-to-integer conversion. The four conversion-only words (0x278c,
  0x2792, 0x2795, 0x2797) take products that have no new multiply behind them. The results are stored with `r213` = 3 at
  E = 0-0x17 (0x277d-0x2798), and the relative transfer at 0x2790 on `cc` 0x14 returns to 0x277c. Its input is the 24 stream components of each pass, and it multiplies each by the scale.
- `epilogue_f2i` (`floattoint.s` line 126, at 0x2799): **inferred**,
  the drain that converts the last components once the loop has run out of whole passes. It reads the remaining stream
  words (D = 0-0x16 at 0x279a-0x27c7), multiplies each by register 0 and converts it, interleaving a count test (`atest`
  with C = 2 and F stepping 0x20-0x35) between each pair. Its output is the last integers, stored at E = 0-0x16 (the
  last at 0x27cb); the group-31 transfer at 0x27c3 ends the command after the delay-slot words 0x27c4-0x27cb. Its input is the leftover stream components, which it scales and converts.

## Separable 3 x 3 convolution (usepconv3x3.s)

The inner routines of the separable 3 x 3 filter, entered by a jump from `mmo_SepConvolve3x3_124`: one head block, a
row-pass loop and a column-pass loop that returns to the caller. Four components per pixel are filtered together
(D = 0-3, kernel words through address registers 3-6). Read from the [usepconv3x3.s listing](ge_listing/usepconv3x3.s.lst)
(`ge.u`, IRIX 6.5.30m).

- `uSepConv3_124` (`usepconv3x3.s` line 68, at 0x29a2): **inferred**,
  the first products of the row pass. Its seven words take the first three pixel rows through address registers 8, 9
  and 0xa (A = 8, 9, 0xa) as operands and multiply them by the registers named in `r148` (4, 5 and 6 at 0x29a2, 0x29a5,
  0x29a8) and by the kernel word fetched from control memory at address register 3 plus 2 (0x29a4). The multiply-add at
  0x29a7 adds an earlier product, and words 0x29a3 and 0x29a6 set address registers 0xa and 0xb to 8 and 9 plus 2. It has
  no transfer and runs into `RowConv3Loop`. Its results are the first partial products, left for the row loop.
- `RowConv3Loop` (`usepconv3x3.s` line 80, at 0x29a9): **inferred** from the unit codes and word counts of its listing, the
  row pass of the separable 3 x 3 filter. It takes three neighbouring pixels of a row, four components each, as row-buffer
  operands through address registers 8-0xb, multiplies each by a kernel word and sums the products, so one pass yields one
  filtered pixel as four component sums. Of the twelve words 0x29a9-0x29b4, four are plain multiplies (unit-2 code 0x47,
  M = 0x47f at 0x29a9, 0x29ac, 0x29af, 0x29b2) and eight are multiply-adds (M = 0x460, a unit-2 multiply with a unit-1
  single-precision add): twelve products, three per component. The four results are stored through address registers 8, 9,
  0xa and 0xb (0x29ab, 0x29ae, 0x29b1, 0x29b4). The relative transfer at 0x29ac (group 4, `cc` 0x11) targets 0x29a9. Falling
  out of the loop, 0x29b5-0x29b8 multiply the words at address register 7 (D = 0-3) by the column kernel words read from
  control memory at registers 3-6 plus 3, the opening products of the column pass.
  Which kernel word meets which pixel in each multiply is unknown.
- `ColumnConv3Loop` (`usepconv3x3.s` line 108, at 0x29b9): **inferred** from the unit codes and word counts of its listing,
  the column pass of the separable 3 x 3 filter. It takes the row-pass words of three rows as operands, multiplies each by
  a column kernel word and adds the products into running sums, one output pixel of four components per pass. All twelve
  words 0x29b9-0x29c4 are multiply-adds (M = 0x460): three products for each of the four components. The adds at
  0x29b9-0x29bc take registers 0, 1, 2 and 3 (named by `r148`) and the unit-2 product forwarded from four words earlier
  (`r128` = 0x2c), so each component's first add joins its product to the word in its own register; the other eight adds
  take a product and the unit-1 sum forwarded from four words earlier (`r128` = 0x20), a chain. Words 0x29ba, 0x29bb,
  0x29bf and 0x29c0 advance address registers 7, 2, 0xe and 0xf by 4, one pixel. The four results are stored at E = 0-3
  through address register 2 (0x29c1-0x29c4); those four words also multiply the words at register 7 plus 0-3 by control
  memory words at registers 3-6 plus 3. The transfer at 0x29bc loops back three words on `cc` 0x11 and the return at
  0x29bd leaves to the caller. Which row buffer feeds which multiply is unknown.

## Separable 5 x 5 convolution (usepconv5x5.s)

The inner routines of the separable 5 x 5 filter in its ordinary and fast forms. The ordinary form works on stream words
that are already float; the fast form converts integer input as it goes and has its own head, loop and drain. Read from
the [usepconv5x5.s listing](ge_listing/usepconv5x5.s.lst) (`ge.u`, IRIX 6.5.30m).

- `uSepConv5_124` (`usepconv5x5.s` line 78, at 0x29c6): **inferred**,
  the head of the ordinary row pass. Nine words multiply the first row words (A = 8 at 0x29c6-0x29ca, A = 9 at
  0x29cb-0x29ce) by kernel values, five of which are fetched from control memory at address register 3 plus 1, 2 and 4
  (0x29c7, 0x29c8, 0x29ca) and at register 4 plus 1 and 2 (0x29cc, 0x29cd). The multiply-adds at 0x29cb and 0x29cd start
  the sums, and the address-unit parts of 0x29c6 and 0x29cb set address registers 9 and 0xa to 8 and 9 plus 1. It runs
  into `RowConv5Loop`. It takes the first row words as input, multiplies them by kernel values, and its results are the opening partial sums for the row loop.
- `RowConv5Loop` (`usepconv5x5.s` line 91, at 0x29cf): **inferred** from the unit codes and word counts of its listing, the
  row pass of the separable 5 x 5 filter. It takes five neighbouring pixels of a row, four components each, as row-buffer
  operands through address registers 8-0xb, multiplies each by a kernel word and sums the products, so one pass yields one
  filtered pixel as four component sums. Of the twenty words 0x29cf-0x29e2 four are plain multiplies (M = 0x47f at 0x29d1,
  0x29d6, 0x29db, 0x29e0) and sixteen are multiply-adds (M = 0x460): twenty products, five per component. The four results
  are stored through registers 8, 9, 0xa and 0xb (0x29d3, 0x29d8, 0x29dd, 0x29e2). The group-4 transfer at 0x29da (`cc`
  0x11) targets 0x29cf, 11 words back. After the loop, 0x29e3-0x29e6 reload address registers 8-0xb from the words at
  address register 1 plus 1-4, 0x29e7 loads register 0 from staging word 0x14, and 0x29e8-0x29eb multiply the words at
  register 7 by the first column kernel words (control memory at registers 3-6 plus 5).
  Which kernel word meets which pixel in each multiply is unknown.
- `ColumnConv5Loop` (`usepconv5x5.s` line 133, at 0x29ec): **inferred** from the unit codes and word counts of its listing,
  the column pass of the separable 5 x 5 filter. It takes the row-pass products of five rows as operands through address
  registers 8-0xb and 7, multiplies each by a column kernel word (control memory at registers 3-6 plus 6 and 7) and adds the
  products into running sums, one output pixel of four components per pass. All twenty words 0x29ec-0x29ff are
  multiply-adds (M = 0x460, no plain multiply): five products for each of the four components. Words 0x29f4-0x29f6 and
  0x29f9-0x29fb advance registers 2 and 7-0xb by 4 words, one pixel. The transfer at 0x29f7 (`cc` 0x11) targets 0x29ec, 11
  words back, and the end-of-command transfer at 0x29f8 sits in its delay words. The four results are stored at E = 0-3
  through address register 2 (0x29fc-0x29ff), each in a word that also multiplies the word at register 7 by a kernel word.
  Which product enters which running sum is unknown.
- `uFastSepConv5_124` (`usepconv5x5.s` line 188, at 0x2a01): **inferred**,
  the start of the fast form, which takes integer pixel input. It converts the first sixteen stream words (four pixels,
  four components) to float with `itof` and the multiply-and-convert word `fmul.itof` (M = 0x473, 0x2a01-0x2a16), storing
  them at offsets 0-0xf of the row buffer at address register 8. Words 0x2a18-0x2a2f then begin the five-tap
  multiply-add chain while the next pixel is converted (`fmul.itof` under `cc` 0x91 at 0x2a1e, 0x2a24 and 0x2a2a), and
  control runs into `FastRowConv5Loop`. Its results are the sixteen converted floats left in the row buffer.
- `FastRowConv5Loop` (`usepconv5x5.s` line 243, at 0x2a30): **inferred**,
  one pass converts the four integer components of the next pixel (the `fmul.itof` words 0x2a30, 0x2a36, 0x2a3c, 0x2a42)
  and also runs the five-tap row multiply-adds. The converted values are stored into the row buffers by the words at
  0x2a32, 0x2a38, 0x2a3e and 0x2a44, and the filtered words by 0x2a34, 0x2a3a, 0x2a40 and 0x2a46. The relative transfer at
  0x2a3f goes back to 0x2a30 on `cc` 0x11. It takes four integer components per pass as input, converts them, and its results are the stored float copies and four filtered words.
- `FastRowConv5Epilog` (`usepconv5x5.s` line 280, at 0x2a48): **inferred**,
  the hand-over between the fast row pass and its column pass. It reloads address registers 8-0xb from the words at
  address register 1 plus 1-4 (0x2a48-0x2a4c), register 0 and register 0x10 from staging words 0x14 and 0x10 (0x2a4d,
  0x2a4e), and issues four multiplies of the words at register 7 by the first column kernel words (0x2a4f-0x2a52, plus 5).
  The conditional group-31 transfer at 0x2a4a, on `cc` 0x10, leaves for `mmo_PixLineNextGE` at 0xa6ad. It takes the pointer words at address register 1 as input and its results are the reloaded address registers and the opening column products, which it multiplies.
- `FastColumnConv5Loop` (`usepconv5x5.s` line 301, at 0x2a53): **inferred** from the unit codes and word counts of its
  listing, the column pass of the fast 5 x 5 filter. Its twenty words 0x2a53-0x2a66 carry the same instruction fields as the
  twenty of `ColumnConv5Loop` (0x29ec-0x29ff): the same multiply-add code, forwarding fields, address registers and kernel
  offsets. It takes the row-pass products of five rows as operands, multiplies each by a column kernel word and adds the
  products into running sums, five products for each of the four components. The four results are stored at E = 0-3 through
  address register 2 (0x2a63-0x2a66). The transfer at 0x2a5e (`cc` 0x11) goes back 11 words to 0x2a53 and the end-of-command
  transfer at 0x2a5f sits in its delay words. The fast form differs from the ordinary form in its row pass, which
  converts integer pixels as it filters them.

## Separable 7 x 7 convolution (usepconv7x7.s)

The inner routines of the separable 7 x 7 filter: a head block that fetches the first kernel values, a row loop with seven
taps and a column loop that returns to the caller. Read from the [usepconv7x7.s listing](ge_listing/usepconv7x7.s.lst)
(`ge.u`, IRIX 6.5.30m).

- `uSepConv7_124` (`usepconv7x7.s` line 82, at 0x2a68): **inferred**,
  the head of the row pass. Eleven words multiply the first row words (A = 8 and 9) by kernel values, five of them fetched
  from control memory at address register 3 plus 1, 2, 4, 5 and 6 (`r95` = 0x13 at 0x2a69, 0x2a6a, 0x2a6c, 0x2a6d, 0x2a6e) and
  two more at register 4 plus 1 and 2 (0x2a70, 0x2a71). The multiply-adds at 0x2a6d, 0x2a6f and 0x2a71 start the sums, and
  the word at 0x2a6b stores through the staging pointer (`r215` = 3, B = 0x18). It runs into `RowConv7Loop`. It takes the first row words as input, multiplies them by kernel values, and its results are the opening partial sums for the row loop.
- `RowConv7Loop` (`usepconv7x7.s` line 97, at 0x2a73): **inferred** from the unit codes and word counts of its listing, the
  row pass of the separable 7 x 7 filter. It takes seven neighbouring pixels of a row, four components each, as row-buffer
  operands through address registers 8-0xb, multiplies each by a kernel word and sums the products, so one pass yields one
  filtered pixel as four component sums. Of the twenty-eight words 0x2a73-0x2a8e four are plain multiplies (M = 0x47f at
  0x2a77, 0x2a7e, 0x2a85, 0x2a8c) and twenty-four are multiply-adds (M = 0x460): twenty-eight products, seven per
  component. The four results are stored through registers 8, 9, 0xa and 0xb (0x2a79, 0x2a80, 0x2a87, 0x2a8e). The
  group-4 transfer at 0x2a86 (`cc` 0x11) targets 0x2a73. After the loop, 0x2a8f-0x2a94 reload address registers 8-0xd from
  the words at register 1 plus 1-6, 0x2a95 loads register 0 from staging word 0, and 0x2a96-0x2a99 multiply the words at
  register 7 by the first column kernel words (control memory at registers 3-6 plus 7).
  Which kernel word meets which pixel in each multiply is unknown.
- `ColumnConv7Loop` (`usepconv7x7.s` line 149, at 0x2a9a): **inferred** from the unit codes and word counts of its listing,
  the column pass of the separable 7 x 7 filter. It takes the row-pass products of seven rows as operands through address
  registers 8-0xd and 7, multiplies each by a column kernel word (control memory at registers 3-6 plus 8-0xb) and adds the
  products into running sums, one output pixel of four components per pass. All twenty-eight words 0x2a9a-0x2ab5 are
  multiply-adds (M = 0x460): seven products for each of the four components. Words 0x2aa7-0x2ab1 advance the buffer
  pointers 7-0xd by 4 words, one pixel. The four results are stored at E = 0-3 through address register 2 (0x2ab2-0x2ab5).
  The transfer at 0x2aad (`cc` 0x11) loops back to 0x2a9a and the end-of-command transfer at 0x2aaf sits in its delay
  words; the two words after the final store (0x2ab6, 0x2ab7) load address registers 0x1b and 0x16 with the immediate 0x1e.
  Which product enters which running sum is unknown.

## Texture state handlers (texture.S)

The handlers of `texture.S` send texture-state words to the raster boards through the bus-output addresses 0x1f4-0x1f8
and keep engine words 3 and 0xd and external-memory words 7-9 in step. Read from the
[texture.S listing](ge_listing/texture.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mgebi_TextureScaleBias` (`texture.S` line 790, at 0x424e): **inferred**,
  writes three raster-board registers from three operand words. It takes the operands (A = 0x1f, D = 1-3 at 0x4264,
  0x4268, 0x426c) and stages the constants 0x70000, 0xffffffff twice and the register address words 0x1541850, 0x1551851
  and 0x1561852 in staging words 1-8 (0x424f-0x425d). It then sends three shadowed register writes, each the select
  constant 0x70000, a mask, the address word and the operand, as twelve moves (0x4261-0x426c) through the bus-output
  addresses selected at 0x425a, 0x425f and 0x426d (0x1f5, 0x1f8 and 0x1f4), and the closing word goes to 0x1f4 at 0x426e.
  It also ANDs engine word 3 with 0x1000000 (0x4250) and writes word 3 back under `cc` 3 at 0x4260. It combines the staged select, mask and address constants with the operands into the bus words.
- `mgesi_FillTMLoadFifo` (`texture.S` line 721, at 0x4278): **inferred**, pushes a fixed run of zero words, ended by an
  all-ones word, to raster-board register 0x7fc0. It keeps its one operand word in address register 0x1a (0x4278) and in
  staging word 0 (0x427b), writes the index 0x7fc0 to bus address 0x1f7 (0x427e), and sends the zero register (`r148` =
  0x3c0) to 0x1f6 (0x4281) and to 0x1f5 in a run of thirteen moves (0x4283-0x428f). The last word is the bitwise not of zero
  (0x4290), and staging word 0 goes to 0x1f4 at 0x4292; the group-31 transfer at 0x428a ends the command. The bus words are
  zeros from register 0x1e and, last, an all-ones word made by the NOT.
- `mgesi_RestoreTextureAddress` (`texture.S` line 644, at 0x4293): **inferred**, replays a saved texture-address table to
  the raster board. It reads the external-memory word 0x9cd (0x4293), keeps it in staging word 1 (0x429a), points address
  register 0x13 at 0x9ce (0x42a9) and sets register 0x12 (0x42ab). The loop at 0x42ae-0x42c5 reads twelve consecutive
  external-memory words per pass (offsets 0-0xb, using the three read forms `r95` = 0x14, 0x15 and 0x16) and forwards them
  as bus-output stores (0x42ba, 0x42c0, 0x42c6, 0x42cc); register 0x12 is stepped at 0x42c3 and the group-7 transfer at
  0x42c5 repeats the pass. The group-31 transfer at 0x42ca closes the command after the final 0x1f4 write at 0x42d2. The
  table starts at external memory 0x9ce and twelve of its words are forwarded per pass.
- `mgebi_Bind2dMipmapTexture` (`texture.S` line 367, at 0x42d3): **inferred**,
  builds the texture-address table of a 2-D mipmapped texture from the command's operand words (A = 0x1f, D up to 0x15)
  and sends the matching raster writes. It stages register-address constants such as 0x1471000, 0x14b0c05, 0x14a0c04,
  0x14f13d5, 0x15a0c02 and 0x158101e (0x42d8-0x42e4); per level it masks fields with 0xff, shifts them down (`srl`) and up
  (`sll`), and ORs them with level tags 0x10040000-0x100b0000 (0x430b, 0x4328, 0x4343, 0x434c, 0x4367, 0x4373, 0x438c,
  0x4395). The packed words are stored to external memory 0x9ce-0x9dd (0x4322-0x43a1) and the header word at 0x9cd (0x43a2),
  with predicated bus stores in between. Transfers on `cc` 0x2 (0x42e1) and 0x4 (0x432d, 0x4351, 0x4379) skip ahead when
  the level count is used up, and the closing word goes to 0x1f4 at 0x43a4. Its output is the sixteen packed table words and the header, which it combines from the operand fields.
- `mgeb_SkipNextTextureAddr` (`texture.S` line 301, at 0x43ae): **inferred**,
  sets a flag bit in engine word 3 and steps past the operand words that carry the next address. It takes one operand
  word into address register 0x1a (0x43ae), steps past two more (0x43b0, 0x43b1), reads word 3 (0x43af), combines it with
  the staged constant 0x1000000 (0x43b2) by unit-1 code 0x51 (0x43b3) and returns the result to word 3 with the store at
  0x43bc. It sends no bus word; the group-31 transfer at 0x43b4 ends the command.
- `mgebi_UpdateTexturing` (`texture.S` line 170, at 0x43bd): **inferred**,
  refreshes the raster-board and engine texture state after a mode change. It stages 0x1000000, 0x70000, 0x2000, 0xf494,
  0x1000, 0x4000 and the raster address words 0x1493fd4, 0x1483fd5 and 0x159101f in staging words 1-0xe (0x43be-0x43d4),
  combines the operand words (A = 0x1f, D = 1-3) with masks and shifts (`and` 0x43c9, `sll` 0x43e1-0x43e4), and writes engine
  words 0xd and 3 (0x43d7, 0x43d8) and external-memory words 7, 8 and 9 (0x43ea, 0x43ec, 0x43ef). Its raster output is a
  run of predicated bus-output writes (0x43db-0x43e9, to 0x1f8, 0x1f5 and 0x1f4); the group-31 transfer at 0x43ea ends
  the command.
- `mgebi_Texture` (`texture.S` line 85, at 0x43f3): **inferred**,
  sets the raster board's texture register and the engine's texturing flags from one operand word. It keeps the operand in
  address register 0x1a (0x43f3) and stages 0x70000, 1, 0x15c1500, 0x1243fd3 and the engine address 0xf494 (0x43f7-0x4402).
  Through 0x1f8 and 0x1f5 it sends a shadowed write (select 0x70000, mask 1, address word 0x15c1500 and the operand at
  0x4401) and a second address-and-value pair (0x1243fd3 at 0x4404, then 0x4406). It reads engine word 7, ORs it with 1 and
  applies code 0x51 (0x4407, 0x4408), stores the result back (0x4410, 0x4411), stores to engine word 0xd (0x4413), and ends
  with a 0x1f4 write at 0x440a and the group-31 transfer at 0x440b. It combines the staged address words with the operand, and ORs word 7 with 1.

## Colour component order (mcomporder.S)

A pixel-path module that rewrites four-component pixels in place. Read from the
[mcomporder.S listing](ge_listing/mcomporder.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_ReverseComp4Order` (`mcomporder.S` line 65, at 0x6b2f): **inferred**, swaps the positions of the four words in each
  pixel (D = 3, 2, 1, 0 become E = 0, 1, 2, 3), for example RGBA to ABGR. It takes the three words the ARM wrote to external
  memory 0xbae-0xbb0 (read at 0x6b2f, 0x6b37, 0x6b39) and keeps the last two in address registers 0xf and 0xd (0x6b48,
  0x6b49). The main loop 0x6b4f-0x6b6f moves 32 stream words, eight pixels, per pass with `mov` words that exchange offsets
  (D = 0x1f, 0x1e... to E = 0x1c, 0x1d...), all stored through address register 0x10 and repeating on `cc` 0x14 at 0x6b6f. A
  one-pixel loop (0x6b84-0x6b88) takes the remainder, and the return at 0x6b91 restores register 0x10 from register 0xe in
  its delay slot (0x6b96). The words are moved unchanged; only their order in each pixel differs, by the fixed pattern of
  the moves.

## Luminance from RGB (msum.S)

A pixel-path module that collapses colour to one value. Read from the [msum.S listing](ge_listing/msum.S.lst) (`ge.u`,
IRIX 6.5.30m).

- `mmo_SumRGB2L` (`msum.S` line 78, at 0x6b9a): **inferred**,
  adds the first three words of each four-word pixel and caps the sum at 1.0. Its input is the stream words (A = 0x10) and
  the parameter words from external memory 0xbb1-0xbb3 (read at 0x6b9a, 0x6ba2, 0x6ba4); the constant 0x3f800000 (1.0) is
  staged at 0x6ba6 and loaded into register 0x18. For each pixel the loop at 0x6bba adds word 0 and word 1 (0x6bbb), adds
  word 2 to that (0x6bca onward) and takes the minimum with register 0x18 (`fmin`, M = 0x6e6, 0x6bce). The result is stored
  over the pixel's first word at E = 0, 4, 8 and so on (0x6bce-0x6bd9, eight pixels per pass). The loop transfers on `cc`
  0x14 at 0x6bda, a one-pixel loop (0x6bef-0x6bf9) takes the rest, and the return at 0x6c02 leaves.

## Pixel widening to four words (mexpand.S)

Two pixel-path modules that widen one- or two-word pixels to four. Read from the [mexpand.S listing](ge_listing/mexpand.S.lst)
(`ge.u`, IRIX 6.5.30m).

- `mmo_Expand32_2_4` (`mexpand.S` line 132, at 0x6c0b): **inferred**, turns each luminance-and-alpha pair into a four-word
  quad (L, L, L, A). It takes the control words 0x1b0-0x1b3 (read at 0x6c0d-0x6c17) into staging words 1-4 and address
  registers 0xd, 0xe and 0xf for the counts and pointers. The loop 0x6c28-0x6c48 reads 16 stream words (D = 0-0xf) and
  stores 32: word 2k becomes E = 4k, 4k+1 and 4k+2, and word 2k+1 becomes E = 4k+3, all through address register 0xf. The
  loop transfer is at 0x6c48 on `cc` 0x14, and the group-31 transfer at 0x6c4c ends the command. Each pass stores 32 words:
  source word 2k fills three slots and word 2k+1 the fourth, unchanged.
- `mmo_Expand32_1_4` (`mexpand.S` line 43, at 0x6c55): **inferred**, turns each single-word pixel into a quad whose first
  three words repeat the value and whose fourth is a constant. It consumes the control words 0x1b0-0x1b3 as above, and also
  0x1b7 (0x6c67), which it stores in staging word 0 as the fourth word. The loop 0x6c72-0x6c92 reads eight stream words (D =
  0-7) and writes 32 words: each input word to E = 4k, 4k+1 and 4k+2, with staging word 0 (A = 0x18) as E = 4k+3 (0x6c75,
  0x6c79 and so on). The loop transfer is at 0x6c92 and the group-31 transfer at 0x6c96 ends the command. Each pass stores
  32 words: the input word fills three slots and the staged constant the fourth, unchanged.

## Antialiased-line response (aa.S)

Small register-only subroutines called by the antialiased-line table generators; they take their operands in registers
and return their results in registers 0x1b and 0x1c. Read from the [aa.S listing](ge_listing/aa.S.lst) (`ge.u`, IRIX
6.5.30m).

- `AA_Response_Max` (`aa.S` line 337, at 0x903c): **inferred**, the two-word exit that returns register 0x1f in both result
  registers. The word in the return's delay slot (0x903d) is a unit-2 move and a unit-1 move under `cc` 0x291 that copy
  register 0x1f into registers 0x1c and 0x1b, and the return at 0x903c hands them back. No other word transfers into it.
  Register 0x1f is copied unchanged into both result registers.
- `AA_Response_Step` (`aa.S` line 264, at 0x9045): **inferred**,
  one stage of the response function. Two float subtracts (0x9045, 0x9046) take differences of registers 0x15 and 0x14 and
  0x15 and 0x13; two adds (0x9049, 0x904a) combine the results with staging word 0 and write registers 0x1c and 0x1b; two more
  subtracts (0x904c, 0x904d) follow. Moves under `cc` 0x111 then write the zero register 0x1e (`r198` = 0, at 0x904b and
  0x904e) or register 0x1f (`r198` = 1, at 0x904f and 0x9051) as the result. The result is registers 0x1b and 0x1c, and the
  return at 0x9050 leaves. Its inputs are registers 0x13-0x15 and staging word 0.
- `AA_Response` (`aa.S` line 133, at 0x9059): **inferred**,
  computes the filter response of an antialiased line. Its inputs are registers set by the caller: the subtracts at
  0x9059 and 0x905c write registers 0x16 and 0x17, and the adds at 0x905e and 0x9061 write 0x18 and 0x19. It then spends
  eighteen float subtracts, sixteen adds and sixteen multiplies in all (0x9063-0x9098), with unit-1 code 0x6a at 0x905d,
  0x9060, 0x9084 and 0x9085, and conditional words under `cc` 0x111 (0x905f, 0x9062, 0x9083, 0x9086, 0x908f, 0x9090, 0x9094,
  0x9096, 0x9099) that write the results. They end in registers 0x1b and 0x1c, and the return at 0x909a leaves.

## Bit-field extraction (mextract.S)

A pixel-path module that splits packed pixel words into separate components. Read from the
[mextract.S listing](ge_listing/mextract.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_ExtractL12A4` (`mextract.S` line 71, at 0x91e3): **inferred**,
  splits each packed 16-bit word, a 12-bit and a 4-bit field, into two output words. It takes the external-memory words
  0xbc0-0xbd4 as input (reads at 0x91e3-0x920b): the last sixteen become staging words 0-0xf, the shift counts and masks,
  and four of the words are loaded into address registers 0xc, 0xe, 0xf and 0xd (0x91f7-0x91fd). In the loop 0x921b-0x9263
  each of eight input words is shifted right by a staged count (`srl`, M = 0x6dd) and ANDed with its mask (`and`, M = 0x6d0,
  0x923d-0x9262), giving 16 output words stored at E = 0-0xf through address register 0xf. A one-word loop (0x9278-0x9284)
  takes the remainder, and the group-31 transfer at 0x928d ends the command. It shifts and masks each input word into its two fields.

## Separable convolution set-up (msepconv.S)

The command handlers that set a separable convolution up: each reads layout words from control memory 0x112-0x11e, writes
four per-component kernel addresses into address registers 3-6, copies kernel values into registers, and jumps to the
inner routine of the matching size. Read from the [msepconv.S listing](ge_listing/msepconv.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_SepConvolve7x7_124` (`msepconv.S` line 1190, at 0x95e5): **inferred**,
  the set-up of the 7 x 7 filter. It moves control words 0x112, 0x115, 0x117, 0x119 and 0x11b-0x11e into staging
  (0x95e7-0x95ef) and combines them by integer adds (0x95ed-0x9605) into the buffer addresses and counts held in address
  registers and staging words. Four kernel addresses are written into address registers 3-6 (0xda, 0xe8, 0xf6 and 0x104, 14
  words apart, at 0x9639, 0x9638, 0x9635, 0x9634). The kernel values are read through control words 0x121-0x124 and address
  registers 3-6 into registers 0-0x18 (0x963a-0x9653), a short input skips the pipelined part on `cc` 0x14 (0x95fd), and
  the jump at 0x964b goes to `uSepConv7_124`. Its results are the address registers, staging words and kernel registers that the inner routine consumes.
- `mmo_FastSepConvolve5x5_124` (`msepconv.S` line 769, at 0x9654): **inferred**,
  the set-up of the 5 x 5 filter for integer input. It reads layout words 0x112, 0x115, 0x117-0x119 and 0x11c-0x11e as its
  input and combines them by integer adds (0x965b-0x966a) into buffer addresses and counts. The kernel addresses in
  address registers 3-6 are 0xe0, 0xea, 0xf4 and 0xfe, ten words per component (0x9655, 0x965b, 0x965d, 0x965e), and the
  kernel values go into registers 8-0x18 (0x9684-0x96ab). A short input skips ahead on `cc` 0x14 (0x966c), and the jump at
  0x96a3 goes to `uFastSepConv5_124`. Its results are the address registers, staging words and kernel registers that the inner routine consumes.
- `mmo_SepConvolve5x5_124` (`msepconv.S` line 424, at 0x96ac): **inferred**,
  the set-up of the 5 x 5 filter for float input. It reads the layout words 0x112, 0x115, 0x117, 0x119 and 0x11b-0x11e from
  control memory (0x96ad-0x96b6), combines them by integer adds (0x96b4-0x96c1) into the address and count words, and
  writes the four kernel addresses 0xe0, 0xea, 0xf4 and 0xfe into address registers 3-6 (0x96e1, 0x96e6, 0x96f3, 0x96f7). A
  short input skips the pipelined part on `cc` 0x14 (0x96c2). The kernel values are copied into registers 4-0x16
  (0x96f9-0x970f) and the jump at 0x9707 goes to `uSepConv5_124`. Its results are the address registers, staging words and kernel registers that the inner routine consumes.
- `mmo_SepConvolve3x3_124` (`msepconv.S` line 107, at 0x9710): **inferred**,
  the set-up of the 3 x 3 filter. It stages control words 0x112, 0x115, 0x117-0x119 and 0x11b-0x11e (0x9711-0x9721) and adds
  them into the buffer addresses and counts (0x971c-0x972d). The four kernel addresses are 0xe0, 0xe6, 0xec and 0xf2, six
  words per component (0x9750, 0x974c, 0x9752, 0x9738), the kernel values go into registers 4-0x18 (0x9754-0x9766), a short
  input skips ahead on `cc` 0x14 (0x9725), and the jump at 0x975e goes to `uSepConv3_124`. Its results are the address registers, staging words and kernel registers that the inner routine consumes.

## Colour matrix module (mcolormatrix.S)

The colour-matrix pixel-path module that precedes the shared multiply loop. Read from the
[mcolormatrix.S listing](ge_listing/mcolormatrix.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_ColorMatrix` (`mcolormatrix.S` line 55, at 0x9767): **inferred**,
  loads the 4 x 4 matrix products the per-pixel loop will use. It takes control words 0x18b, 0x18e and 0x18f (read at 0x9768,
  0x9769, 0x976f) and eight external-memory words 0xbda-0xbe1 (0x976a-0x9778) as input; the eight words go into registers
  0xc-0x13 (0x9771-0x977f) and the control words into staging, then into address registers 3 and 4. The sixteen matrix
  words at control 0x190-0x19f are each multiplied by one of registers 0xc-0xf (`r148` = 0x180, 0x1a0, 0x1c0, 0x1e0) in
  four groups of four (`fmul`, 0x9780-0x9792), and the products go to registers 0-0xf. The jump at 0x978a goes to
  `uColorMatrix` (0x298a), which runs the per-pixel loop. Its results are the sixteen products in registers 0-0xf, which it computes for the loop.

## Depth decompression (mdecompress.S)

A pixel-path module that expands 16-bit depth values to 32 bits. Read from the
[mdecompress.S listing](ge_listing/mdecompress.S.lst) (`ge.u`, IRIX 6.5.30m).

- `mmo_DecompressZ16` (`mdecompress.S` line 68, at 0x9793): **inferred**,
  expands compressed 16-bit depth words into 32-bit depth values. It takes the four parameter words the ARM wrote to external
  memory 0xbf2-0xbf5 (read at 0x9793, 0x9795, 0x9797, 0x979f) and stages 0xfffff000, 0xffffe000, 0x13, 6 and 0xfff in staging
  words 5, 4, 2, 0 and 3 (0x9798-0x979c). Each pass takes eight stream words (D = 0-7): the `and` and `srl` words 0x97b6-0x97c6
  split a word into fields, and `sll`, `or` and `isub` words (0x97c3-0x97fa) combine them. The eight values are stored at
  E = 0-7 through address register 0xf, some by conditional stores (`r213` = 2, for example 0x97cd). The loop repeats on
  `cc` 0x14 at 0x97fb, and the group-31 transfer at 0x97fc ends the command. Its result is eight 32-bit depth values per pass, which it unpacks from the 16-bit inputs and combines with shifts.
