# Role readings: `usr/gfx/arch/IP27KONA/libGLcore.so`

Routine roles read from the whole body of each routine in the o32 build, filed beside the facts entries of
[the per-binary page](usr-gfx-arch-IP27KONA-libGLcore.so.md). The IP35KONA build holds the same code at the same
addresses. Every routine here touches only context state; none stores to the command port at 0x4000.

- `__glim_AlphaFunc` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0dc0
  **Inferred.** Sets the alpha-test comparison and reference value in the current context. The comparison code in a0 must lie in 0x200 to 0x207, otherwise the routine reports 0x500; the float reference in a1 is held to the range from 0 up to the bound at context +0xdd8 and stored at context +0x720, with the code at +0x71c. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 0 is set in both context words at +0x2e20 and +0x2e24.

- `__glim_ClearDepth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c13bc
  **Inferred.** Sets the depth-buffer clear value in the current context. The double in f12 is limited to the range 0.0 to 1.0 (the upper bound is built from the immediate 0x3ff00000) and stored as a double at context +0x668. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_ClearIndex` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1468
  **Inferred.** Sets the colour-index clear value in the current context. The float in f12 is scaled by 16.0 (the constant 0x41800000), truncated to an integer, masked with the index mask word at context +0x7848 shifted left four with 0xf added below it, converted back to float and divided by 16.0 before being stored at context +0x754. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. It leaves the word at 0x1018 and the context change words alone.

- `__glim_ClearStencil` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c14fc
  **Inferred.** Sets the stencil clear value in the current context. The integer in a0 is masked to the stencil width by an all-ones mask of (1 shifted left by the bit count at context +0xcb0) minus one, and the result is stored as a halfword at context +0x684. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_CullFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c172c
  **Inferred.** Chooses which polygon faces are culled. Only the mode values 0x404, 0x405 and 0x408 are accepted and stored at context +0x1ec; any other value reports 0x500 through `__glSetError`. A call made while the word at 0x1018 is 1 reports 0x502 the same way. On success the word at 0x1018 becomes 2 and bit 2 is set in the context word at +0x2e24.

- `__glim_FrontFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c20a4
  **Inferred.** Chooses the winding order that marks a polygon as front facing. Only the orientation values 0x900 and 0x901 are accepted and stored at context +0x1f0; any other value reports 0x500 through `__glSetError`. A call made while the word at 0x1018 is 1 reports 0x502 the same way. On success the word at 0x1018 becomes 2 and bit 2 is set in the context word at +0x2e24.

- `__glim_IndexMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c22d4
  **Inferred.** Sets the colour-index write mask in the current context. The mask in a0 is ANDed with the index mask word at context +0x7848 and stored at context +0x758. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_ColorMask` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1580
  **Inferred.** Sets the four colour-channel write-enable flags. Each of the four arguments a0 to a3 is cut to its low byte and stored as one byte at context +0x75c, +0x75d, +0x75e and +0x75f in argument order. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1618
  **Inferred.** Chooses which material property follows the current colour. The face in a0 must be 0x404, 0x405 or 0x408, and the property in a1 one of 0x1200, 0x1201, 0x1202, 0x1600 or 0x1602, otherwise it reports 0x500 through `__glSetError`; a call made while the word at 0x1018 is 1 reports 0x502. The accepted pair is stored at context +0x568 and +0x56c. When bit 7 of the context word at +0x700 is set it then calls the context function pointers at +0x2e48 and +0x2f18 in turn, so the colour-tracking routines are reselected at once. It does not write the word at 0x1018.

- `__glim_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1a08
  **Inferred.** Selects the colour buffers that drawing goes to. Zero is accepted directly; the values 0x400 to 0x40c go through a jump table, and the case for a larger value tests it against the auxiliary-buffer count at context +0xce0. Paths that fail on a missing stereo or auxiliary buffer report 0x502 through `__glSetError`, and an unknown enumerant reports 0x500; a byte flag at context +0xc96 steers some of the cases. The resolved selection is stored at context +0x760 and the requested value at +0x764, then the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_Fogf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1db4
  **Inferred.** Sets one scalar fog parameter by handing it to the vector entry point. A parameter name in a0 from 0xb61 to 0xb65 passes the spilled value of a1 by address to `__glim_Fogfv` at 0xd9c1b4c, which does the checking and storing; any other name reports 0x500 through `__glSetError`. It makes no begin-mode check of its own and does not touch the context.

- `__glim_Fogi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c2024
  **Inferred.** Sets one integer fog parameter by handing it to the integer-vector entry point. A parameter name in a0 from 0xb61 to 0xb65 passes the spilled value of a1 by address to `__glim_Fogiv` at 0xd9c1e34, which does the checking and storing; any other name reports 0x500 through `__glSetError`. It makes no begin-mode check of its own and does not touch the context.

- `__glim_Hint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c2140
  **Inferred.** Records a quality hint for one target. The mode in a1 must be 0x1100, 0x1101 or 0x1102, otherwise it reports 0x500 through `__glSetError`; a call made while the word at 0x1018 is 1 reports 0x502. Targets 0xc50 to 0xc54 reach their store through a jump table. Targets 0x8316 and 0x8322 are tested directly and write the mode to context +0x784 and +0x788, and any other target reports 0x500. Some cases set bit 3, bit 1 or bit 2 of the context word at +0x2e24, the others bit 0, and every success writes 2 to the word at 0x1018.

- `__glim_PolygonOffset` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c8010
  **Inferred.** Sets the polygon depth offset from a slope factor and a unit count. The float factor in f12 is stored at context +0x1f4, and the float in f14 is multiplied by the context float at +0x1fc before being stored at +0x1f8. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 2 is set in the context word at +0x2e24.

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c7fa0
  **Inferred.** Sets the polygon depth offset from a slope factor and a bias, taking the bias as already scaled. The float in f12 is stored at context +0x1f4 and the float in f14 unchanged at +0x1f8. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 2 is set in the context word at +0x2e24.

- `__glim_StencilOp` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c41cc
  **Inferred.** Sets what the stencil test does on stencil failure, depth failure and depth pass. All three operation codes in a0, a1 and a2 are checked in that order and each must be 0, 0x150a or one of 0x1e00 to 0x1e03, otherwise the routine reports 0x500 through `__glSetError` and stores nothing. The three codes are then stored at context +0x68c, +0x690 and +0x694. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2, bit 0 is set in the context word at +0x2e24 and bit 2 in the one at +0x2e20.

- `__glim_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9998fc
  **Inferred.** Selects the colour buffer that pixel reads come from. Values 0x400 to 0x40c go through a jump table, and the auxiliary case compares the value minus 0x409 with the count at context +0xce0; the cases that need a buffer the context lacks (a byte flag at +0xc96 is tested in one of them) report 0x502, and any value outside that range reports 0x500. The accepted request is stored at context +0x4d8, with a resolved code at +0x4d4 for the front-buffer case. A call made while the word at 0x1018 is 1 reports 0x502. On success the word at 0x1018 becomes 2 and bit 4 is set in the context word at +0x2e24.

- `__glim_PixelZoom` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd998bac
  **Inferred.** Sets the horizontal and vertical pixel-zoom factors. Each float, f12 for x and f14 for y, is divided by the step held at context +0xe5c, offset by the rounding float at +0xdd4 (added when the value is above zero, subtracted otherwise), truncated to an integer and multiplied by the step again, so both factors are rounded to a multiple of that step. The results are stored at context +0x2e8 and +0x2ec. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 4 is set in the context word at +0x2e24.

- `__glim_PixelTransferi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd998fa0
  **Inferred.** Sets a pixel-transfer parameter from an integer by converting it to a float first. The integer in a1 is converted with a word-to-single conversion and the call is passed on, with the parameter name in a0 unchanged, to `__glim_PixelTransferf` at 0xd998ccc. It checks nothing and touches no context state itself.

- `__glim_CallList` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd992588
  **Inferred.** Executes one display list by number. A list number of zero reports 0x501 through `__glSetError`. Any other number is passed to the local routine `DoCallList` at 0xd9921f8, and once it returns the word at context +0x1374 is cleared to zero.

- `__glim_CallLists` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd99293c
  **Inferred.** Executes a sequence of display lists named by an array. A negative count in a0 reports 0x501 through `__glSetError`. The type in a1 is looked up in a byte table for the values 0x1400 to 0x1409 (anything else yields -1), and a result of -1 reports 0x500. Otherwise the local routine `DoCallLists` at 0xd9925f0 runs, and then the word at context +0x1374 is cleared to zero.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c7e74
  **Inferred.** Sets the constant blend colour. Each of the four floats (red in f12, green in f14, blue and alpha passed in a2 and a3) is held to the range from 0 up to the float at context +0xdd8 and stored at context +0x730, +0x734, +0x738 and +0x73c in that order. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. It does not write the word at 0x1018 or the context change words.

- `__glim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1054
  **Inferred.** Chooses the blend equation. The mode in a0 is accepted when it is 0xbf1, 0x8320 or 0x8321, or when it lies from 0x8006 to 0x800b, which the routine sends through a jump table; anything else reports 0x500 through `__glSetError`, and a call made while the word at 0x1018 is 1 reports 0x502. The accepted mode is stored at context +0x72c. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_ClearAccum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c114c
  **Inferred.** Sets the accumulation-buffer clear colour. Each of the four floats (red in f12, green in f14, blue and alpha in a2 and a3) is held between -1.0, built from the immediate 0xbf800000, and the float at context +0xdd8, and the four are stored at context +0x670, +0x674, +0x678 and +0x67c. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. On success the word at 0x1018 becomes 2 and bit 0 is set in the context word at +0x2e24.

- `__glim_PolygonStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c3f10
  **Inferred.** Loads a new 32 by 32 polygon stipple pattern. The pattern pointer in a0 is converted by `__glFillImage` at 0xd9e4c8c, called with the width 0x20, the height 0x20 and the format 0x1900, and the context function pointer at +0x31a8 is then called with the context. A call made while the word at 0x1018 is 1 reports 0x502 through `__glSetError`. Afterwards the word at 0x1018 is written and bit 2 is set in the context word at +0x2e24.

- `__glim_Bitmap` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c8f60
  **Inferred.** Draws a bitmap at the current raster position, choosing a path by the mode word at 0x1018. With 0 it rejects a negative a0 or a2 with 0x501 through `__glSetError` and otherwise calls the context function pointer at +0x3114 with the saved arguments. With 2 it first calls the context pointer at +0x2e40, clears the word at 0x1018 to 0, and then calls the entry at offset 0x20 of the table that context +0x17f4 points to. With 1 (between begin and end) it reports 0x502.

- `__glim_ReadPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd99a240
  **Inferred.** Reads a rectangle of pixels back to client memory, choosing a path by the mode word at 0x1018. With 0 it calls `__glCheckReadPixelArgs` at 0xd999d80, and when that returns non-zero calls the context function pointer at +0x3150. With 2 it calls the context pointer at +0x2e40, clears the word at 0x1018 to 0, and re-enters the exported `glReadPixels` with the same arguments. With 1 it reports 0x502 through `__glSetError`.

- `__glim_DrawPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd99a0f4
  **Inferred.** Writes a block of pixels from client memory, choosing a path by the mode word at 0x1018. With 0 it calls `__glCheckDrawPixelArgs` at 0xd999a34 and, when that returns non-zero, either sends the call to `__glFeedbackDrawPixels` at 0xd9db2dc (when the byte at context +0x1c4 is set and the render mode at +0xc84 is 0x1c01) or calls the context pointer at +0x3148 (when the mode is 0x1c00). With 2 it calls the context pointer at +0x2e40, clears the word at 0x1018 to 0 and re-enters the exported `glDrawPixels`. With 1 it reports 0x502.

- `__glim_Accum` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0520
  **Inferred.** Runs one accumulation-buffer operation, choosing a path by the mode word at 0x1018. With 2 it calls the context pointer at +0x2e40, clears the word to 0 and re-enters the exported `glAccum`; with 1 it reports 0x502 through `__glSetError`. With 0 it reports 0x502 when the byte at context +0xc98 is zero (no accumulation buffer) or the byte at +0xc95 is set, runs a setup entry from offset 0x84 of the block at context +0x7ab8 when the word at +0x10 of that block is zero, and sends the operation code in a0 (0x100 to 0x104, otherwise 0x500) through a jump table to one of five handlers. The selected handler is called with that block and the float value only when the render mode at context +0xc84 is 0x1c00.

- `__glim_PixelStoref` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd998500
  **Inferred.** Sets a pixel pack or unpack parameter from a float by converting it and calling `__glim_PixelStorei` at 0xd99868c. The names 0x806b to 0x806e, 0x8131 and 0x8133 round the float to the nearest integer (adding or subtracting the constant 0.5 by sign). The 22 names from 0xcf0 to 0xd05 go through a jump table whose cases either pass 0 when the float equals zero and 1 otherwise, or truncate it; every other name is truncated. The converted value is passed in a1 and nothing else is checked here.

- `__glim_CopyPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd99a368
  **Inferred.** Copies a rectangle of pixels inside the framebuffer, choosing a path by the mode word at 0x1018. With 2 it calls the context pointer at +0x2e40, clears the word to 0 and re-enters the exported `glCopyPixels`; with 1 it reports 0x502 through `__glSetError`. With 0 it reports 0x501 for a negative a2 or a3, then maps the buffer type on the stack (0x1800, 0x1801 or 0x1802, otherwise 0x500) to a format code, and reports 0x502 when the matching context byte (+0xc99 for depth, +0xc9a for stencil) is clear. When the byte at context +0x1c4 is set it calls `__glFeedbackCopyPixels` at 0xd9db27c in render mode 0x1c01, or the context pointer at +0x314c in mode 0x1c00.

- `__glMakeIdentity` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f163c
  **Inferred.** Turns the matrix record in a0 into the 4 by 4 identity. Sixteen floats at +0x00 to +0x3c get 1.0 (the immediate 0x3f800000) on the diagonal at +0x00, +0x14, +0x28 and +0x3c and 0.0 elsewhere, and the word at +0x40 is set to 4.

- `__glCopyMatrix` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f15b0
  **Inferred.** Copies one matrix record to another. The word at +0x40 and the sixteen floats at +0x00 to +0x3c are read from the source in a1 and written one by one to the destination in a0, with no conversion.

- `__glDlistFreeBlock` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd991314
  **Inferred.** Marks one fixed-size display-list block as free. The block index is the distance of a1 from the heap base at +0x08 of the record in a0, divided by the block size at +0x00 (a zero size traps with break 7); that bit is cleared in the bitmap whose pointer is at +0x18, and the counter at +0x1c is incremented.

- `__glDlistTransientBlock` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd991600
  **Inferred.** Marks one fixed-size display-list block as transient. The block index is found as in the free-block routine from the base at +0x08 and the size at +0x00 of the record in a0 (zero traps with break 7), the bit is set in a second bitmap whose pointer is at +0x24, and the counter at +0x28 is incremented.

- `__glNamesIsName` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f58d8
  **Inferred.** Tells whether a name is in use in a name table. It looks the name in a2 up in the structure in a1 with `findLeaf` at 0xd9f27a0, asking for the leaf to be found (third argument 1), and returns 1 when a leaf comes back and 0 otherwise.

- `__glNamesUnlockData` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f5084
  **Inferred.** Drops one hold on shared name-table data. It decrements the count at the word pointed to by a1, and only when that count reaches zero does it call the function pointer at +0x0c of the record in a0.

- `__glMakeCurrentBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cb2f8
  **Inferred.** Binds a buffer record to a context. The four words at +0x00 to +0x0c of the state block in a1 are copied into the record in a0 at +0x10, +0x14, +0x1c and +0x28, the context words at +0xe78 and +0xe74 of a2 go to +0x08 and +0x04, and the context pointer a2 and the block pointer a1 are stored at +0x00 and +0x44.

- `__glLoseCurrentBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cb334
  **Inferred.** Unbinds a buffer record from its context and writes its state back. When the context pointer at +0x00 of the record in a0 is non-zero it clears it and copies the words at +0x10, +0x14, +0x1c and +0x28 back into the state block that +0x44 points to, at +0x00, +0x04, +0x08 and +0x0c. A record with no context is left alone.

- `__glDepthPassSpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda03de4
  **Inferred.** Remaps a span of bytes in place through a lookup table. The context in a0 supplies the count at +0x7660, the span pointer at +0x772c and the table base at +0x7a10; each byte is replaced by the table entry it indexes. The routine returns 0.

- `__glPolygonOffsetPoint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f9acc
  **Inferred.** Runs the point renderer with the polygon-offset flag raised. It sets the byte at context +0x7770 to 1, calls the context function pointer at +0x3108, and sets the byte back to 0 afterwards.

- `__glPolygonOffsetLine` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e9c10
  **Inferred.** Runs the line renderer with the polygon-offset flag raised. It sets the byte at context +0x7770 to 1, calls the context function pointer at +0x30f0, and sets the byte back to 0 afterwards.

- `__glSPExecuteDlist` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd996f60
  **Inferred.** Plays back a display list recorded in the software-pipeline format. It passes the pointer at +0x10 of the list record in a1 to `__glSPInterpret` at 0xda6cab4.

- `__glGenericExecuteDlist` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d5458
  **Inferred.** Plays back a display list recorded in the generic format. It passes the pointer at +0x0c of the list record in a1 to `__glDoInterpret` at 0xda6ca20.

- `__glFogRGBColor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e62c4
  **Inferred.** Blends one vertex colour toward the fog colour. With f the float at +0xb0 of the vertex record in a2 and u the context float at +0xdd8 (in a0) minus f, the three colour floats at +0x90, +0x94 and +0x98 of the vertex selected by index a1 (16 bytes apart) are each replaced by colour times f plus u times the fog colour floats at context +0x638, +0x63c and +0x640.

- `__glFogCIColor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e6b38
  **Inferred.** Applies fog to a colour-index vertex. The index float at +0x90 of the vertex selected by a1 in a2 (16 bytes apart) is increased by (the context float at +0xdd8 minus the float at +0xb0 of the vertex) times the fog index at context +0x658, and the sum is then held to at most 2 to the power of the bit count at context +0xcb4, minus one.

- `__glFogVertexLinear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9dc4dc
  **Inferred.** Computes the linear fog factor of one vertex and returns it in f0. It takes the absolute value z of the float at +0x68 of the vertex in a1, forms (the context float at +0x650 minus z) times the context float at +0x654, and holds the result between 0.0 and the context float at +0xdd8.

- `__glNamesLockData` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f4640
  **Inferred.** Looks up the data stored under a name and takes a reference on it. It finds the leaf for the name in a2 with `findLeaf` at 0xd9f27a0, takes the array pointed to by +0x0c of the leaf, picks the entry at the name minus the leaf's base at +0x04, and when the entry is non-zero adds 1 to the count at its first word. It returns the entry, or 0 when the leaf, the array or the entry is missing.

- `__glDlistHeapPriorityChanged` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9919ec
  **Inferred.** Restores heap order after a display-list block changes priority. It calls `upheap` at 0xd991b04 and then `downheap` at 0xd991ba8, both with the heap in a0 and the position held at +0x04 of the node in a1.

- `__glDlistAllocOp2` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd992e30
  **Inferred.** Allocates one display-list operation record of a requested size. It calls the context function pointer at +0x3194 with the pointer at context +0x1394 and the size in a1 plus 16. When that returns null it reports 0x505 through `__glSetError` and returns 0; otherwise it clears the words at +0x00 and +0x04 and the byte at +0x0e of the new record, stores the requested size at +0x08 and returns the record.

- `__glGenericPickClipProcs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f6df0
  **Inferred.** Chooses the clipping routines held in the context. The pointer at context +0x30fc becomes one routine when the word at +0x570 equals 0x1d00 and another otherwise, and the pointer at +0x2f70 is set to one fixed routine; all three are read from the global offset table.

- `__glFlatRGBASpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda03f70
  **Inferred.** Fills a span with one constant colour. The context in a0 supplies the count at +0x7660, the four colour floats at +0x7638 to +0x7644 and the output pointer at +0x7738; the colour is written once per pixel as four floats, 16 bytes apart. The routine returns 0.

- `__glDlistHeapInit` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9916e0
  **Inferred.** Prepares the display-list block heap in a0. It clears a 12-byte record at the start of a0 with `bzero`, clears a second 12-byte record at the global address 0xda88370, stores the float -1.0 (the immediate 0xbf800000) at +0x00 and zero at +0x08 of that global record, inserts it into the heap with `__glDlistHeapInsert` at 0xd99183c, and returns 1.

- `__glSpanCopy` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9a26d8
  **Inferred.** Copies a span of pixel data. The byte count is the product of the three words at +0x1c, +0xb4 and +0x24 of the description record in a1, and `memcpy` moves that many bytes from a2 to a3.

- `__glLoadPackModes` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9a8b1c
  **Inferred.** Copies the pixel-store pack settings from the context in a0 into the pack record in a1. The words at context +0x480, +0x484, +0x488 and +0x48c go to +0x84, +0x80, +0x94 and +0x88, and the bytes at +0x478 and +0x479 go to +0x78 and +0x7c. The words at context +0x47c and +0x490 go to +0x8c and +0x90 only when they are positive; otherwise the record's own defaults at +0xa8 and +0xac are used.

- `__glInitLUTCache` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda081d0
  **Inferred.** Creates the lookup-table cache header. It calls the allocator function pointer at +0x00 of a0 for 16 bytes, stores the result at context +0x6e58, then sets the first word of the new block to 0 and the second to 1.

- `__glBuildAntiAliasIndex` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f8b90
  **Inferred.** Packs a coverage value into an anti-aliasing colour index and returns it as a float. The float in f12 is truncated and has its low four bits cleared, the float in f14 is multiplied by 15.0 (the immediate 0x41700000), increased by 0.5 and truncated, and the two integers are ORed together.

- `__glClipTriangle` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9fe470
  **Inferred.** Clips one triangle against the view volume. The three vertex pointers in a1, a2 and a3 are put in an array on the stack and handed with the count 3, the context in a0 and the fifth argument to `__glDoPolygonClip` at 0xd9fdff8.

- `__glEndPolygon` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda00edc
  **Inferred.** Finishes a polygon that was collected vertex by vertex. The vertex count is the distance of the fill pointer at context +0x31c8 from the buffer at +0x31e0, divided by 192 bytes per vertex; with three or more vertices the context function pointer at +0x2f74 is called with the buffer and the count. Either way two pointers read from the global offset table are stored at context +0x2ee4 and +0x2f5c.

- `__glShadeRGBASpan` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda03ec8
  **Inferred.** Fills a span with a linearly shaded colour. The context in a0 gives the pixel count at +0x7660, the starting colour floats at +0x7638 to +0x7644, the four per-pixel steps at +0x7684 to +0x7690 and the output pointer at +0x7738. Each pixel is written as four floats 16 bytes apart, and the steps are added to the colour after every pixel. The routine returns 0.

- `__glDoBlendMax` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c916c
  **Inferred.** Implements the maximum blend for one colour. Each of the four floats at +0x00 to +0x0c of a3 is replaced by the float at the same offset in a2 when the one in a3 is smaller (a compare and a store per component), so a3 ends up holding the componentwise maximum of the two colours.
