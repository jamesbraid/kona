# Role readings: `usr/gfx/arch/IP27KONA/libGLcore.so`

Routine roles read from the whole body of each routine in the o32 build (big-endian MIPS). Callee names come
from the dynamic symbol table. The context pointer is the word at absolute address 0x1010. Every entry here is
graded Inferred because each role is read from the code alone. Routines that already have an entry on another
page of this repository are not repeated here; the facts for this binary are in
[the per-binary page](usr-gfx-arch-IP27KONA-libGLcore.so.md).

- `DestroyContext` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd946994
  **Inferred.** Tears down a GL context block passed in a0. It calls `__glkon_FreeTextureState` and then `__glKonFreeEvaluators` on the same block. If the word at context +0xa124 is nonzero and the count at +0xec0 is positive, it walks the array at +0xa124 through the function pointer at +0xc. It zeroes the word at +0x7b4c, frees the string at +0xdf8 with `free` (the string that `GetBoardInfo` stores there), and returns the result of `__glDestroyContext` at 0xd9d16d8.

- `__glSdramCopyIn` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd948384
  **Inferred.** Issues a driver request with ioctl code 0x2711 on the device word at global 0x1010. The request block is built on the stack from a0, a1 and a2 shifted left by two. A negative ioctl result is reported through `perror` with a message at 0xda745e0. The routine returns its first argument in both cases.

- `__glkonim_ListParameteriSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd949494
  **Inferred.** Wraps the scalar form of a list-parameter call. It spills the integer in a2 to the stack and passes that stack address as the vector argument to `__glkonim_ListParameterivSGIX` at 0xd949308. The context and parameter name pass through unchanged, and the vector routine's result is returned.

- `__glKonSdramInvalidate` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd948450
  **Inferred.** Releases the blocks on a list in a1 back to the heap at context +0x133c plus 16, with `__glDlistFreeBlock` and `__glDlistHeapRemove`. Once the walk ends it clears the word at a1+0x14. When bit 0x20 of the word at context +0x7b5c is set it calls `__glkonDlistMemUsage` with arguments (ctx, 4, -1). It returns 0.

- `__glKonPushState` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd94ef2c
  **Inferred.** Saves the parts of the current state block into the record at a1, where the state block is the global pointer at 0x1010 plus 0x280. Bit 0x1 of a0 copies the two bytes at +0x478 and +0x479 to a1+0 and a1+1. Bit 0x2 copies the words at +0x47c through +0x498 to a1+4 through a1+0x20, bit 0x4 copies the bytes at +0x4a4 and +0x4a5 and the word at +0x4b4, and bit 0x8 copies +0x4a8 through +0x4c4 to a1+0x30 through a1+0x4c. It stores a0 at a1+0x58 and returns the state block address.

- `SetSubrectState` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd94f534
  **Inferred.** Sets three pixel-store parameters for a sub-rectangle. a0 and a1 are offsets, a2 is a value, and a3 points at a record whose words at +0x8 and +0xc are added to a1 and a0. It calls `__glkonim_PixelStorei` three times. The enumerant for each call is read from the table at 0xda7d84c: table+4 gets a0 plus [a3+0xc], table+8 gets a1 plus [a3+8], and table+0 gets a2.

- `__glkonDlistFreeArray` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd94a008
  **Inferred.** Frees the parts of one display-list array record in a1. It takes the sub-block pointer at +0x10 and passes it to `__glDlistFreeTransient`, then calls `__glDlistBlockStateFree` on that block and on its +0x40 part. It frees the +0x2c part with `__glLockedMemoryFree`, the +0x6c part with `__glSdramFree`, and the +0x80 part with `__glDlistHeapFree`. The record's own +4 part goes to `__glDlistHeapFree` too, and the function pointer at context +0x13a0 is called last with the sub-block.

- `__glkonSPFreeDlist` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd94af94
  **Inferred.** Releases one display-list object in a1 for the context in a0. If bit 0x20 of the context word at +0x7b5c is set, it calls `__glkonDlistMemUsage` with (ctx, 2, the word at a1+0x20). If bit 0x20 of the word at a1+0x20 is set, it calls `__glKonSdramInvalidate`. If bit 0x2 is set, it removes a1+0x30 from the heap at context +0x133c plus 4 and clears that bit. It finishes by calling `__glSPFreeDlist` on the object.

- `__glKonInitConvolutionState` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9554a0
  **Inferred.** Fills the convolution parameter block of the context in a0 with defaults and makes no calls. Integer words at +0x300, +0x354 and +0x3a8 hold the enumerants 0x8010, 0x8016 and 0x8012, and +0x308 and +0x35c hold 0x1908. The counts 4 and 7 go into the +0x30c, +0x348 and +0x39c words, and zero goes into +0x340, +0x394 and +0x398. Float words at +0x2a8 to +0x2b4, +0x310 to +0x31c and +0x364 to +0x3c4 are set to 1.0, and float words at +0x2b8 to +0x2c4, +0x320 to +0x32c and +0x374 to +0x3d4 are set to 0.0. The pointer +0x2fc is set to a0+0x354.

- `__glkonDlistNewArray` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd949eac
  **Inferred.** Creates one display-list array record. It allocates 0x8c bytes through the function pointer at context +0x1398 and stores the block at a1+0x10. Then it initialises the sub-blocks at +0x2c (`__glLockedMemoryInit`), +0x40 and +0x80 through `__glDlistBlockStateInit` and `__glDlistHeapInit`, and +0x6c through `__glSdramInit`. When bit 0x20 of the word at context +0x7b5c is set it calls `__glkonDlistMemUsage` with (ctx, 6, 0). Last, it copies two globals into context +0x13b4 and +0x13b8.

- `__glKonDrawTexels3D` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9535b8
  **Inferred.** Draws a 3D texel block for the context in a0. It first calls `__glKonParseInput`, then `__glKonParseErrorDraw`, and stops if either returns nonzero. If the words at +0 and +4 are both nonzero it calls `__glKonParseHostImage`. It sets the word at +0x18 to 0x81. If the count at +8 is below 2 it calls `DrawSubTexels` once. Otherwise it calls `DrawSubTexels` once per slice, advancing the pointer at +0x14 by a per-slice stride computed from +0xa8 and the row size.

- `__glkonlc_TexGenfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd94d610
  **Inferred.** Records one texture-generation call in the list cursor at global 0x1028. The cursor holds the remaining word count at 0x1028, the write pointer at 0x1030 and a running count at 0x1034. When fewer than ten words remain it calls `__glSPDlistSpace`. It then writes a record tagged 0x14 with the coordinate index in a0 at +4 and the parameter name in a1 at +8. Names 0x2501, 0x2502, 0x81f4 and 0x81f5 copy four floats from a2 to +0xc through +0x18 and zero +0x1c through +0x24. Names 0x81f6 and 0x81f7 copy seven floats, and any other name stores the truncated integer of a2[0] at +0xc. The write pointer moves 0x28 bytes and the remaining count drops by ten.

- `kona_get_evaluator` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd958dc8
  **Inferred.** Returns a pointer to a float buffer filled from the current context for four evaluator enumerants.
  The buffer is the pointer at context +0x7b64 plus 8. Argument 0xdd0 reads the floats at context +0x78c and +0x790
  and stores them at buffer offsets 0 and 4. Argument 0xdd1 reads the word at +0x798, converts it to float and
  stores it at offset 0. Argument 0xdd2 reads the floats at +0x79c, +0x7a0, +0x7ac and +0x7b0 and stores them at
  offsets 0, 4, 8 and 0xc. Argument 0xdd3 reads the words at +0x7a8 and +0x7b8, converts each to float and stores
  them at offsets 0 and 4. Any other argument stores nothing. The buffer address is returned in every case.

- `pass_dword_dword` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9590f0
  **Inferred.** Copies the doubleword at a0 to the command port at 0x4000, then copies the doubleword at a0+8 to
  the same port. Each copy is one store through the zero register. The routine reads no context state.

- `pass_word_word` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd959190
  **Inferred.** Writes the two 32-bit words at a0 and a0+4 to the command port at 0x4000, in that order, one store
  each. It touches no context state.

- `tileinfo` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd96af48
  **Inferred.** Writes three outputs through the pointers in a1, a2 and a3. The selector is the word at a0+0xc,
  dispatched through a jump table for values 0 to 4. The stores are (3, 2, 0) for selector 0, (3, 2, 1) for 1,
  (3, 1, 1) for 2, (5, 3, 0) for 3 and (3, 2, 0) for 4. A selector of 5 or more writes nothing.

- `setShadowRegs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd967a48
  **Inferred.** Sets the shadow-compare state of the texture object at a0. The shadow path runs only when the word
  at +0x1fc is 1 and the 12-byte entry selected for the object's index at +0x1c has 13 at +8. That entry comes from
  the table at the GOT slot gp-0x4944, indexed through the 16-byte rows of the table named `intern_format_arr3`.
  On the shadow path, bits 10 and 11 of +0x40 are set to 1 if the word at +0x200 equals 0x819d and to 2 otherwise,
  bit 0 of +0x40 is cleared, bits 8 to 11 of +0x44 are set, and +0x210 becomes 0. On every other path those bits
  are cleared, and +0x210 becomes 1.

- `changeShadow` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd967b18
  **Inferred.** Refreshes shadow state for the object in a1 from the descriptor in a2. It stores 0 at a1+0x204 and
  calls `setShadowRegs` on a1. It returns unless bit 24 of the word at a1+0x20 is set. With that bit set, it calls
  the internal routine at 0xd965230 with a2 when a2[0] AND (0x10 minus (1 shifted left by a2[1]+1)) is nonzero.
  Then, if the word at a1+0x178 equals a2[1], it calls the function pointer at a1+0x100 with a2.

- `setDetailFilter` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9664d8
  **Inferred.** Updates the filter bits in the word at a0+0x40 from fields of the texture object. When the word at
  +0x18 is nonzero, bits 0, 5, 6 and 7 are cleared and bit 5 is set, and the routine returns. When it is zero, the
  word at +0x174 is tested first: 0x104 clears bits 0, 5, 6 and 7 and sets 0x60, while 0x2100 clears the same bits
  and sets 0x80. Other values leave +0x40 alone. Then the word at +0x168 is tested: 0x8097 clears bits 26 and 27,
  0x8098 clears them and sets bit 27, and 0x8099 clears them and sets bit 26. Other values change nothing further.

- `allocLevelImage` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9663f4
  **Inferred.** Replaces the image of one level. The level record v1 is the pointer at a0+0x7c+4*a1. If its word
  at +0 is nonzero, that image is released by calling the context's function pointer at +0xc, and the word is then
  cleared. The new size is the product of the words at v1+8, +0xc and +0x10, doubled and shifted left by the shift
  stored at +8 of the 16-byte row of `intern_format_arr3` indexed by v1+4. The context's function pointer at +0 is
  called with that size and the result stored at v1+0. A zero result reports 0x505 through `__glSetError`.

- `repPixels` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd96d3a0
  **Inferred.** Allocates a buffer of count 16-byte records and fills each with the four register arguments a0
  to a3. The count is the fifth argument, taken from the caller's stack slot at +0x10. The allocation is made by
  calling the context's function pointer at offset 0 with count times 16 bytes. When the count is nonzero, the
  four words are written into every record, from the last index down to 0. The routine returns the allocation
  address.

- `whichComps` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd96dd6c
  **Inferred.** Maps a0 to an index in the table at the GOT slot gp-0x494c, which is `intern_format_arr3`. The
  words at table offsets 0, 0x10 and 0x20 return 0, 1 and 2 when they equal a0. After those, blocks of 0x40 bytes
  starting at offset 0x30 are scanned, each holding four keys at +0, +0x10, +0x20 and +0x30. The returned index
  runs from 3 upward by four per block, plus the key's position within the block, up to 66. When no key matches,
  the result is -1.

- `subgetSimple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd96ca24
  **Inferred.** Fills a descriptor at a1 and passes it to `__glkonReadTexels3D`. The word at +0x30 is set to 0, a2
  is stored at +0x34 and a3 at +0x38. The fifth argument is stored at +0x44. The end values at +0x3c, +0x40 and
  +0x48 are a2 plus the sixth argument minus 1, a3 plus the seventh argument minus 1, and the fifth argument plus
  the eighth argument minus 1. Arguments 9, 10 and 11 are stored at +0x4c, +0x50 and +0x54. The two words at the
  address given as argument 12 are stored at +0x58 and +0x5c. The routine then calls `__glkonReadTexels3D` with the
  descriptor in a0 and clears bit 17 of the word at the first argument's +0x20.

- `bind2DClipmapTexture` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd96a588
  **Inferred.** Updates the 2-D clipmap state of the texture object at a1. It calls the internal routine at
  0xd96a540 with the object as a0 and the word at object+0x68 as a1. It then adds four times the count at +0x1b8
  to the pointer at +0xfc. While that pointer is advanced, it calls the internal routine at 0xd96a328 with the
  object. If the count is odd, the word at +0x40 is first set to its value with bit 28 cleared, OR'd with the word
  at +0x11c shifted left 28, and after the call bit 28 is set to whether the word at +0x11c is zero. Finally the
  pointer at +0xfc is moved back by the same amount.
