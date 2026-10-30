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
  register 0x29 (store at 0xe7e) and returns through a group-5 indirect transfer at 0xea7.
  The four subtracts are operand-routing form `r110` = 0x7bd, a register-file operand (A = 0x18, D = 3, 7, 0xb, 0xf) with a
  memory operand (C = 0x1b, immediate address). **Inferred** from `mgeb_BitmapApplyOrig` (below), where the same form
  must return the memory word minus the register-file operand: each subtract yields the third element minus the fourth,
  so the rewritten third row is (row 3 - row 4) / 2 and the clip z it produces is (z - w) / 2, which is -w at the near
  plane and 0 at the far plane of an ordinary projection. The diagnostic test's subtract (`ge_inst.s` line 3774, B - A)
  is form `r110` = 0x43d, two arithmetic registers, so it does not settle this form by itself.
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
- `ugesi_EvalStrip1D` (`ueval1D.s` lines 324-438, at 0xe1): **inferred**, `glEvalMesh1`: from the grid words it computes
  each u as start plus i times the step (float adds and multiplies, the index converted with integer-to-float), maps it
  into the map's domain by subtracting the low end and multiplying by the reciprocal width, and runs the evaluation
  modules for each point, the results being the vertices of a line strip.
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
- `uEvalCoord1D` (`uevalcoord.s` lines 195-251, at 0x406): **inferred**, maps one u into the domain of each enabled 1D map:
  four subtracts of the low end (0x421-0x424), a multiply by the reciprocal width and unit-1 code 0x08 (not fixed by the
  test) at 0x425-0x426, then calls `uEvalChangeBasis1D` when a map changed and stores the mapped u as the input of the
  polynomial modules.
- `uEvalCoord2D` (`uevalcoord.s` lines 264-332, at 0x43f): **inferred**, the 2D form: subtracts and multiplies map u and v
  into each 2D map's domain, swaps state with `uEvalSwapState1D` when the 1D set is resident, and stores the mapped pair.
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
- `umo_EvalComputeNormals3D` (`eval.s` lines 628-709, at 0x6ad): **inferred**, the `GL_AUTO_NORMAL` normal: from the u and
  v derivatives at 0x8004 and 0x8028 it computes the cross product with multiply-subtract words (0x6c4-0x6d0), then
  normalises it with the reciprocal-square-root seed and Newton-Raphson steps, storing the result in the normal block.
- `umo_EvalComputeNormals4D` (`eval.s` lines 748-857, at 0x700): **inferred**, the normal for homogeneous (four-component)
  maps: the derivative of x/w by the quotient rule, with twelve multiply-subtract pairs, before the cross product and
  normalisation.
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
  the position. So form 0x7bd yields the memory word minus the register-file operand, which settles the order in
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

**Inferred: a store with `r95` = 4 writes the value a move delivered nine words earlier.** A move with `r99` = 0xa (from a
staging word) or `r99` = 2 (from a memory operand) feeds the store data. Over the 1427 production stores with `r95` = 4, the
most recent such move nine or more words before the store has the store's own source line in 423, against 211 at eight
words and 107 at ten. Applied to `mGL_CM_Initialize` (`ge.S` lines 350-367, 0xb1bf-0xb1fb) the pairing gives word 0 = 2,
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
:
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
