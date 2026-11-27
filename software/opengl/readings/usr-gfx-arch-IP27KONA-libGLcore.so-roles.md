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
