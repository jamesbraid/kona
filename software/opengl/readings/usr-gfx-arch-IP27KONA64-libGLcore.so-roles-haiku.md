# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

Routine roles read from the whole body of each routine in the IP27KONA64 build, filed beside the facts entries of [the per-binary page](usr-gfx-arch-IP27KONA64-libGLcore.so.md). Routines that already have an entry on another page of this repository are not repeated here.

- `PickBufferProcs` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa530
  **Inferred.** A position-independent wrapper that takes no arguments of its own. It loads gp from t9 and calls
  the routine in the GOT slot at gp-0x5668, which has no symbol name in this binary, with a0 through a3 left as
  the caller set them. It returns that routine's v0 unchanged and keeps ra and gp in a 0x10-byte frame.

- `DestroyContext` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa630
  **Inferred.** Tears down a context in a fixed order. It calls the unnamed GOT slot at gp-0x7778 on the context
  in a0, then the slot at gp-0x7598 on the same context. If the pointer at context +0xca98 is nonzero it calls the
  function pointer at +0x18 once for each entry counted by the word at +0x1024, passing each table entry as a1,
  then once more with the table base as a1. It calls the function pointer at +0x18 again with the doubleword at +0x9ee0 as a1,
  calls the function pointer at +0x60, clears the word at +0x9eac, passes the pointer at +0xf50 to free, and
  ends with the slot at gp-0x5fb0 on the context.

- `initialDestroyContext` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa740
  **Inferred.** Makes the same two calls that DestroyContext makes first and last on the context. It saves the
  context pointer in fp, calls the GOT slot at gp-0x7778 with it, then calls the GOT slot at gp-0x5fb0 with it.
  The routine stores nothing of its own.

- `VisualsMatch` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dab960
  **Inferred.** Returns 1 when two visual records match and 0 otherwise, for the context in a0. The first word
  of a1 must equal the word at context +0xde0, and the word at +0x54 must be zero in both a1 and a3. When the
  byte at +4 of a1 is zero, the words at +0x24 of a1 and a3 must be equal. Otherwise the byte at +4 of a3 must be
  nonzero and the words at +0x28 must be equal. Last, if the word at +0x48 of a1 is nonzero, the match fails
  only when the fifth argument, in t0, is 4. The routine calls nothing.

- `BindHyperpipe` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dac050
  **Inferred.** Binds a hyperpipe for the context in a0, or releases the current one when a1 is -1. With -1 it
  passes the word at context +0xb52c to `__glkon_UnbindHyperpipe` and returns. For any other value it calls
  `__glkon_BindHyperpipe` with a0 and a1 unchanged, then stores a1 into the word at +0xb52c. The store follows
  the call and does not depend on what the call returns.

- `__glSdramCopyIn` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dac500
  **Inferred.** Sends a copy request through `__glKon_ioctl` with request 0x2711, using the current context
  pointer at absolute 0x1020 as the handle. It builds a 0xc0-byte frame that holds the second argument at its
  base, the first argument at +0x2c, the third argument shifted left by two at +0x8, +0xc and +0x30, and the
  constant 0x1c8 at +0x24. The third ioctl argument is a descriptor at sp+0x18 whose first doubleword is the
  frame address. A negative result goes to perror on a string in the binary's data. The routine returns its
  first argument in v0 on both paths.

- `__glLockedMemoryFree` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dacc30
  **Inferred.** Unmaps one locked-memory region. The address comes from the first doubleword of its argument
  and the length from the word at +0x10, and both go to `munmap`. A negative result calls perror on a string at
  gp-0x70. The routine returns 1 in v0 whether or not the unmap succeeded.

- `__glLockedMemoryMemmove` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dacf40
  **Inferred.** Passes its three arguments through unchanged to `memmove` and returns the result of that call.
  The frame is 0x10 bytes and holds ra and gp.

- `__glkonSPBfree` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dadf40
  **Inferred.** Releases one block from a context's list. The context keeps a record pointer at +0x14c8, and the
  block pointer is the word at +0x18 of that record. If `__glDlistIsBlock` accepts the block, the routine calls
  `__glDlistTransientBlock` on it with the second argument as a1. If it does not, it calls the function pointer
  at context +0x1580 with the context and the second argument.

- `__glkonlc_End` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daeec0
  **Inferred.** Ends a display-list begin record. The current context comes from absolute 0x1020. If bit 2 (4)
  of its word at +0x15e4 is clear, the routine calls `__glSPDlalloc` with 0 and 0x16 and returns. Otherwise it
  clears that bit. When the count at absolute 0x1048 is below 2, it calls `__glSPDlistSpace` with 0 and takes
  the result as the new count. It writes the word 0x71 and a zero word at the pointer stored at absolute 0x1058,
  advances that pointer by 8, lowers the count at 0x1048 by 2, and adds 2 to the word at 0x1060.

- `__glkon_mem_alloc` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daf920
  **Inferred.** Sends a memory request through `__glKon_ioctl` with request 0x271a on the current context at
  absolute 0x1020. The request is a stack record with a0 as a byte at +0, a1 as a byte at +1, a2 as a halfword
  at +2, a3 as a word at +4 and t0 as a word at +8. The routine returns 0 when the ioctl returns 0 and -1 for any
  other result.

- `__glkon_unique_per_ge_mem_alloc` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dafbe0
  **Inferred.** Calls `__glkon_mem_alloc` with the fixed arguments 2, 9, 1, 1 and 0 for a0 through a3 and t0,
  and returns that call's result. The frame is 0x10 bytes.

- `__glkon_share` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dafc30
  **Inferred.** Loads the pointer P from the doubleword at +0xb328 of its first argument. It calls `__glKon_ioctl` on the
  current context from absolute 0x1020 with request 0x271f and a stack slot seeded with the doubleword at P+8. It
  then stores the slot's value after the call back at P+8 and returns 0. An ioctl failure returns -1 instead.

- `GetConvolutionFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db29f0
  **Inferred.** Returns the address of one of the context's filter tables, chosen by its argument. The context
  comes from absolute 0x1020. An argument of 0xde0 returns the address at context +0x3b8. An argument of 0 or
  0xde1 returns the address at +0x468 unless bit 0x04000000 of the word at +0x808 is set, which selects +0x410.
  Any other argument returns +0x410.

- `__glkonle_DrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db3540
  **Inferred.** Brackets a pixel draw between a set-modes call and an unset-modes call. It spills a2, a3, t0 and
  t1 into its frame, then calls `__glKonSetPixelLEModes` with a pointer to the frame in a0. Next it calls
  `__glkonim_DrawPixels` with the caller's a1 as a0 and the spilled values one register along: the old a2 becomes
  a1, the old a3 becomes a2, the old t0 becomes a3 and the old t1 becomes t0. It ends by calling
  `__glKonUnsetLEModes` with the same frame pointer.

- `GetLineModeDist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db1c70
  **Inferred.** Fetches 0x80 bytes through `__glkon_get_special` with 0xee and 0. It splits them into two 0x40-byte
  arrays. Each 16-byte source group gives its first eight bytes to the buffer passed as a1 and its last eight
  bytes to the buffer passed as a0. The routine makes no other calls.

- `__glkonim_GetListParameterivSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dad6e0
  **Inferred.** Reads one list parameter into the pointer in a2. The word at absolute 0x1030 equal to 1 reports
  0x502 through `__glSetError`. A zero list in a0 reports 0x501, and a parameter in a1 other than 0x8182 reports
  0x500. For 0x8182 the routine takes the names lock with `__glNamesLockData`, using the context and the word at
  +0x14d0, and passes the list as the third argument. It reads the float at +0x48 of the locked record,
  truncates it to a word, stores that through the output pointer and releases the lock with
  `__glNamesUnlockData`.

- `__glKonPushState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db2e70
  **Inferred.** Copies attribute groups out of the current context into the block at a1, one group per bit set
  in a0. Bit 0 (1) copies the bytes at context +0x568 and +0x569 to block +0 and +1 and the word at +0x578 to
  block +0x10. Bit 2 (4) copies the bytes at +0x264 and +0x265 of the group at context +0x330 to block +0x2c and
  +0x2d, and its word at +0x274 to block +0x3c. Bit 1 (2) copies the words at +0x23c, +0x240, +0x244, +0x24c,
  +0x250, +0x254 and +0x258 of that group to block +0x4, +0x8, +0xc, +0x14, +0x18, +0x1c and +0x20. Bit 3 (8)
  copies the words at +0x268, +0x26c, +0x270, +0x278, +0x27c, +0x280 and +0x284 to block +0x30 through +0x4c.
  The mask is written to block +0x58 on every path.

- `__glkonlc_Begin` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daf2b0
  **Inferred.** Starts a display-list primitive. The mode in a0 must be 0 to 9, or the routine passes 0x500 to
  the routine at 0x2dae8c0 as a tail call. It sets bit 2 (4) of the word at +0x15e4 in the current context, then
  appends two words to the list: the mode plus 0x57, then zero, at the pointer stored at absolute 0x1058. The
  pointer advances by 8, the word at 0x1060 goes up by 2 and the count at 0x1048 goes down by 2. When that count
  is below 2, the routine first calls `__glSPDlistSpace` with 0 and uses its result as the count.

- `__glkonDlistFreeArray` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dae100
  **Inferred.** Frees one display-list record. The record is the second argument and its block pointer is the
  doubleword at +0x18. The routine calls `__glDlistFreeTransient` on that block and `__glDlistBlockStateFree` on
  the block with the context. It then calls `__glLockedMemoryFree` on block+0x50, `__glDlistBlockStateFree` on
  block+0x70 and the routine at 0x2dac350 on block+0xc0. It calls `__glDlistHeapFree` on block+0xe0, calls the
  function pointer at context +0x1580 with the record's block at +0x18, and finishes with `__glDlistHeapFree`
  on the record plus 8.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `CopyDrawFreeRectangle` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db4dc0
  **Inferred.** Forwards a request through the context dispatch table. It loads the context pointer from the absolute word at 0x1020, keeps the argument pointer in fp, and calls the routine at 0x2db3460 with the first word of the argument in a0. It then tail-jumps through the pointer at context +0x18, with the context in a0 and the argument in a1. The loads from argument offsets 4, 8, 0xc and 0x10 feed no later instruction.

- `__glkonNumCompInPix` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db7ff0
  **Inferred.** Returns one word from a table indexed by its argument. The table base is read from a GOT slot 0x7ee0 bytes below a GOT pointer rebuilt from $t9, then adjusted by -0x3550. The result is the word at that base plus four times a0. Nothing checks the index.

- `__glkonNumByteInType` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db8020
  **Inferred.** Looks up a per-type count from a table in the same way as the routine before it. The GOT slot and the rebuilt GOT pointer are the same, but the base is adjusted by -0x3510. The word at base plus four times a0 is returned, with no range check.

- `InvalidGetFormat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db94b0
  **Inferred.** Returns 0 for an accepted format argument and 1 otherwise. The values 0x1903 through 0x190a and 0x8000 are accepted silently. Any other value calls the error reporter in the GOT slot at $gp-0x5f98 with 0x500 and returns 1.

- `InvalidGetType` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2db9500
  **Inferred.** Checks a type enumerant and returns 0 when it is accepted. The accepted values are 0x1400 through 0x1406 and 0x8032 through 0x8036. Any other value calls the error reporter at $gp-0x5f98 with 0x500 and returns 1.

- `__glkonim_GetError` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbb7c0
  **Inferred.** Fetches the current error code. When the state word at 0x1030 equals 1, it reports 0x502 through the error reporter at $gp-0x5f98 and returns 0. Otherwise it calls `__glkon_get_special` with selector 0x3e and the 64-bit constant 0xffffffffdbdbdbdb in a1, then returns the word at the pointer that call gives back.

- `kona_get_variable` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbcf40
  **Inferred.** Reads a context value through the accessor at 0x2dbabd0, using selector 0x812a in place of the first argument. It stores the word four bytes before the returned pointer through its second argument, then returns that pointer.

- `getTexTableUsage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc7970
  **Inferred.** Copies texture-usage data for the index in a2 out of an 8-byte-per-entry table at a1. Each entry holds a record at offset 0x1d0, and the record gives a flag word at offset 0, a count at offset 0x10 and a data pointer at offset 8. For indices 1 and 2 it writes count pairs of floats to the buffer in a3, taking element i and then element count+i, with i running from count-1 down to 0. Other indices pass the data pointer, the output buffer and a byte count to the copy routine reached through the GOT slot at $gp-0x10c8. The byte count is four times the element count, doubled when the flag word is nonzero.

- `__glkonim_GetClipPlane` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbb8a0
  **Inferred.** Returns the four coefficients of one clip plane as doubles. When the word at 0x1030 is 1, it reports 0x502 and stops. Otherwise the plane enumerant in a0 minus 0x3000 must be below the count at context +0xf74, or it reports 0x500 through $gp-0x5f98. On success it calls `__glkon_get_special` with selector 0x3c and the plane enumerant, then widens the four floats at the returned pointer and stores them as doubles at offsets 0, 8, 0x10 and 0x18 of the buffer in a1.

- `do_gettexenv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbbfe0
  **Inferred.** Helper behind the texture-environment getters. Only target 0x2300 is accepted, and any other target reports 0x500 through $gp-0x5f98 and returns 0. For that target it calls `__glkon_get_special` with selector 0x4d and the pname. Pname 0x2200 reads one word from the returned pointer, zero-extends it and stores it as a float at the output pointer in a2. Pnames 0x2201 and 0x80be copy four floats to a2. Any other pname reports 0x500 and returns 0. Success returns 1.

- `__glkonim_GetTexEnviv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbc120
  **Inferred.** Gets texture-environment values as integers. When the word at 0x1030 is 1, it reports 0x502 and stops. Otherwise it calls do_gettexenv at 0x2dbbfe0 with a four-float scratch area on its stack, and returns at once if that call gives 0. Pname 0x2200 truncates the first float to an integer and stores it at the output. Pnames 0x2201 and 0x80be multiply each float by the float at $gp-8, multiply that product as a double by the double at $gp+0x1d8, truncate, and store the four integers.

- `__glkonim_GetLightfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbb970
  **Inferred.** Reads light parameters as floats. When the word at 0x1030 is 1, it reports 0x502 first. Otherwise the light enumerant in a0 minus 0x4000 must be below the count at context +0xf68, and the parameter in a1 must lie in 0x1200 through 0x1209. Any failed check reports 0x500 through $gp-0x5f98. On success it calls `__glkon_get_special2` with selector 0x41, the light index and the parameter, then copies the returned array to the output in a2. The word four bytes before the array gives the element count. An odd count copies its first word alone, and the rest move in pairs.

- `__glkonim_GetMaterialfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dbbc90
  **Inferred.** Reads material parameters as floats for faces 0x404 and 0x405 only. When the word at 0x1030 is 1, it reports 0x502 first. The parameter in a1 must lie in 0x1200 through 0x1209 or 0x1600 through 0x1603, and any other face or parameter reports 0x500 through $gp-0x5f98. On success it calls `__glkon_get_special2` with selector 0x46, the face and the parameter, then copies the returned array to a2 using the element count stored four bytes before the array.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `initTexTables` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc80a0
  **Inferred.** Sets up the empty list heads of the texture table passed in a0. It stores the sentinel pointers a0+0x80, a0+0xc0 and a0+0x100 into the doublewords at +0x68 to +0x78, +0xb0 to +0xb8, +0xf0 to +0xf8 and +0x130 to +0x138, so the three list heads at +0xb8, +0xf8 and +0x138 start empty. It writes -1 as a word at +0x90, +0xd0 and +0x110. It then tail-calls through the GOT slot at gp-0x7660 with a0 unchanged, a1 = 0x10, a2 = 8 and a3 = the GOT-based address plus 0x72b0.

- `freeTexTables` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc8100
  **Inferred.** Releases the nodes on the three lists of the table at a1. For each 0x40-byte entry at a1, a1+0x40 and a1+0x80 it walks the chain headed by the doubleword at +0xb8 of that entry, following the next pointer at node+0x38 until it reaches the sentinel. For every node it calls the callback at [a0+0x18] three times with a0 as the first argument: once with the doubleword at node+0x20, once with the doubleword at node+8, and once with the node pointer itself. When all three chains are done it tail-calls through the GOT slot at gp-0x7650 with the original a0 and a1.

- `initARMTexCache` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc81d0
  **Inferred.** A short wrapper that tail-calls through the GOT slot at gp-0x7660, the same slot that initTexTables hands off to. It passes a0 unchanged, a1 = 0x200, a2 = 0x20 and a3 = the GOT-based address plus 0x7360. It writes no table words of its own.

- `updateTexUsage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc81f0
  **Inferred.** Bumps a usage counter in the context and stamps the object with its old value. The counter is the word at a0+0x104e0. It is incremented, and the value it held before is copied to the object's word at +0x1bc. Bit 17 is cleared in the object's word at +0x20 (mask 0xfffdffff). The routine then tail-calls the function pointer stored at a0+0x10088, with a0 advanced by 0x10058 and a1 set to the doubleword at object +0x1a8.

- `allocLevelImage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc8500
  **Inferred.** Allocates the image storage for one mip level. The level's record is the doubleword at a0+0x80+8*a1. If that slot already holds an image, the routine calls the driver callback at [drv+0x18] with the image and clears the slot. The driver table is the doubleword at absolute address 0x1020. The byte count is twice the product of the words at +0xc, +0x10 and +0x14 of the record, shifted left by the word at +8 of the 16-byte entry in the table at gp-0x1298 that the record's own word at +8 selects. The routine calls the allocator at drv+0 with that size and stores the result in the record. A null result tail-calls the GOT slot at gp-0x5f98 with error code 0x505.

- `setShadowRegs` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dca2c0
  **Inferred.** Sets the shadow-compare fields of the context a0. It tests the word at +0x2ac against 1. When that matches, it indexes the 16-byte table at gp-0x1298 by the word at +0x1c, takes the word at +8 of that entry, and checks that the 12-byte entry at that index in the table at gp-0x1288 holds 0xd at +8. If both checks pass, the word at +0x2c0 is cleared, bits 8 to 11 of +0x44 are set, and bits 10 and 11 of +0x40 are replaced by 1 or 2 shifted into place. The value is 1 when the word at +0x2b0 equals 0x819d and 2 otherwise. In every other case the word at +0x2c0 becomes 1, bits 0 and 8 to 11 of +0x44 are cleared, and bits 10 and 11 of +0x40 are cleared.

- `subgetSimple` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dce940
  **Inferred.** Fills a six-word extent record at a1. Word +0x38 is set to zero, +0x3c to a2 and +0x40 to a3, and +0x4c to t0. The words at +0x44, +0x48 and +0x50 are the sums a2+t1-1, a3+t2-1 and t0+t3-1. Three words are copied from the stack argument area into +0x54, +0x58 and +0x5c, and the two words behind the pointer in the stack slot at 0x68 go to +0x60 and +0x64. It then calls the GOT-based routine at gp-0x7bf8 with the record as its only argument. On return it clears bit 17 of the word at the context a0+0x20, the same mask as updateTexUsage.

- `validDimension` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dcee60
  **Inferred.** Checks a texture size a0 and border a1. The flag word at gp+0x170 records whether a one-time query has run. On the first call the routine calls the GOT-based routine at gp-0x1140 with the address held at gp-0x7f48 plus 0x4630 and a constant 1, then stores 1 at gp+0x170 and sets gp+0x174 to 1 when that query returns nonzero. The word at gp+0x174 chooses the size limit: sizes from 0x1001 up fail when it is nonzero, and sizes from 0x801 up fail when it is zero. Within the limit the routine returns 1 when a0 minus twice a1 is zero or a power of two, and 0 otherwise. The power-of-two test is (x & (x-1)) == 0.

- `repPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dcf2c0
  **Inferred.** Allocates a block of a2 records of sixteen bytes and fills every record with four 32-bit words. The words are spilled from a0 and a1 at entry: the high word of a0, then its low word, then the high and low words of a1. They are stored at +0, +4, +8 and +0xc of each record. The allocator is the first doubleword of the table that the doubleword at absolute address 0x1020 points to, and it is called with that table and the size 16*a2. The allocation call happens even for a zero count. The fill loop runs from the last record back to the first, and it is skipped when the count is zero.

- `whichComps` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dcfb40
  **Inferred.** Looks up a value in a 67-entry table at gp-0x1298 with 16-byte entries. It compares each entry's first word with a0 and returns the zero-based index of the first match. When nothing matches it returns -1.

- `storage2Comp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dcfb80
  **Inferred.** Looks up a value in an 11-entry table at gp-0x1290 with 0x1c-byte entries. It finds the entry whose first word equals a0 and returns the word at that entry's +4 plus 4*a1, so a1 selects one of the words that follow the key. When no entry matches it returns -1.

- `deallocTexture` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd05c0
  **Inferred.** Releases a texture object. It first calls the routine at the GOT slot gp-0x76f0 with the two incoming arguments unchanged. If the doubleword at object +0x1a8 is nonzero, it then calls the routine at the GOT-based address gp-0x7fd8 plus 0x7360 with the object as its only argument.

- `freeTexture` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd0610
  **Inferred.** Frees the storage of a texture object after copying its data back when that is needed. If the doubleword at object +0x198 or the doubleword at +0x1a0 is nonzero, it calls copyBackLods at 0x2dcf020 with the context, the object and the constant 3. It then tail-calls deallocTexture at 0x2dd05c0 with the same context and object.

- `__glKonFreeTextureObj` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd14f0
  **Inferred.** Frees a texture object for the context a0. It rebuilds gp from its own entry address and calls the GOT-based routine at gp-0x76f0 with the doubleword at context +0xb328 as the argument, passing the object through unchanged. It then calls destroyTextureObj at 0x2dd0fb0 with the context and the object, and returns.

- `destroyTextureObj` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd0fb0
  **Inferred.** Releases the images of a texture object, one mip level at a time. For each of the 32 level bits, it checks bit s of the word at obj+0x24. A set bit selects the level record at obj+0x80+8*s. When bit s of the word at obj+0x30 is also set, the routine calls the callback at ctx+0x18 with the level's image pointer and then again with the record pointer itself. Without that bit it makes only the second call. After the loop it tail-calls the callback at ctx+0x18 with the doubleword at obj+0x180.

- `validateTexture` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd0ed0
  **Inferred.** Revalidates a texture object after its parameters change. It calls freeTexture at 0x2dd0610 with the doubleword at context +0x1410 and the object. It then stores the argument a3 at object +0xc and writes the object's word at +0x20 with bit 22 cleared and the argument t0 ORed in. Only when bit 19 of that word is set does it go on: it calls calcObjSize at 0x2dcfbc0 with the context, the object and a2, then calls areLodsConsistent at 0x2dcef50. A failing check sets bits 16 and 21 of the word at +0x20, and a passing check clears bit 16. The routine then calls slowBindTexture at 0x2dd0c90 with the context and the object.

- `areLodsConsistent` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dcef50
  **Inferred.** Checks that the level records of an object are consistent over its range. The range runs from the word at obj+0x18 up to the word at obj+0x14. If the range is empty the routine returns 1. Otherwise, for each index in the range whose level record at obj+0x80+8*index is nonzero, it calls unmatchObjLevel at 0x2dc8300 with the object and the index. A nonzero return makes the routine return 0, and when every level passes it returns 1.

- `setDetailFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dc85c0
  **Inferred.** Sets the detail-filter bits of the context word at +0x40. When the word at ctx+0x18 is nonzero, bits 5 to 7 are cleared and bit 5 is set, then it returns. Otherwise the word at +0x224 is tested first. The value 0x2100 clears bits 5 to 7 and sets bit 7, and 0x104 clears them and sets bits 5 and 6. For any other value the word at +0x218 is tested. The value 0x8097 clears bits 26 and 27, 0x8099 clears them and sets bit 26, and 0x8098 clears them and sets bit 27. Any other value leaves the word unchanged.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `inInterval` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd8920
  **Inferred.** Walks a linked list from the head in a0 and reports whether the node pointer in a2 appears among the nodes visited before a running total falls to the limit in a1. A limit of zero or less returns 0 at once. Each node's next pointer is the doubleword at +0x8, and each visited node adds the word at +0x18 to a3, which starts at 0. The walk returns 1 as soon as the current node equals a2, and returns 0 when the total is no longer below a1.

- `__glkon_InitSharedTextureState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd6e00
  **Inferred.** Initialises the shared texture state at a0. It calls `__glKonInitTextureMemory` with its own four arguments unchanged, then `__glKonInitTextureHash` on a0+0x30, `initTexTables` on a0+0x100c0 and `initARMTexCache` on a0+0x10058. Before returning it stores the word 0x40004000 at a0+0x20.

- `initProxyTextures` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd6f10
  **Inferred.** Lays out three proxy texture tables inside the texture state at a0. It stores the table addresses a0+0xba0, a0+0xe70 and a0+0x1140 at a0+0x48, +0x50 and +0x58, and clears each 0x2d0-byte table with `bzero`. The word at +0x228 of the first, second and third table is then set to 4, 5 and 6.

- `__glkonim_GetDetailTexFuncSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd5b70
  **Inferred.** Reads the detail-texture function for the target in a0. The word at absolute 0x1030 is tested first; when it is 1 the routine reports 0x502 through `__glSetError`. Otherwise a0 must equal 0xde1 (GL_TEXTURE_2D), and any other target reports 0x500 through `__glSetError`. For 0xde1 it calls `getTexTableUsage` with the pointer loaded from context +0xb328 plus 0x100c0, the doubleword at context +0x9f50, and the flag 1, and returns that result.

- `checkPixelError` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dd3210
  **Inferred.** Checks the pixel-error state and returns -1 on error or 0 otherwise. When a2 is nonzero, bit 0x100 of the word at context +0x80c and some bit of mask 0xe000000 in the word at +0x808 are both set, and the word at +0x660 equals 0x81c5, it returns -1 without a call. Otherwise it builds a 0xe0-byte frame holding a0, a1, a3, a4, a5 and the constant 0x81 at +0x20, and calls `__glKonParseInput` on the frame, returning -1 if that returns nonzero. If the original a3 is 0x1901 (GL_STENCIL_INDEX) it reports 0x500 through `__glSetError` and returns -1. If the original a5 is zero it returns 0. Otherwise it calls `__glKonParseErrorDraw` on the frame and returns 0 when that returns 0, and -1 when it does not.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `allocHashBlock` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dda9c0
  **Inferred.** Obtains a fresh 0x10008-byte block and clears it. The allocator is the routine whose address is the first doubleword of the table pointed to by the doubleword at absolute address 0x1020; the call passes that table pointer as a0 and 0x10008 as a1, and the returned pointer is kept in v0. The first doubleword of the block is set to zero, then a loop stores zero at offsets 0x10, 0x20, 0x30 and 0x40 of each 0x40-byte step and stops when the cursor reaches the block base plus 0x10000.

- `wrapHashCacheLRU` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddaa30
  **Inferred.** Ages a 64 KiB table of 0x20-byte records, each holding two counter and flag pairs. It runs 2048 iterations from the base plus 0x10, and in each one it handles a record: the counter at +8 is reduced by 0x20000000 when the flag word at +0xc is nonzero, and the counter at +0x18 is reduced the same way when the flag word at +0x1c is nonzero. A counter that goes negative is stored as zero. It is a leaf routine and makes no calls.

- `__glKonInitTextureHash` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb180
  **Inferred.** Fills three doublewords of the record at a0 plus 0x10000. The doubleword loaded from -0x76c8 off the $at base goes to +0x10, the one from -0x76b8 goes to +0x18, and the one from -0x76a0 goes to +0x20. The routine makes no calls and does not test a0.

- `__glKonFreeTextureHash` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb2a0
  **Inferred.** Walks the singly linked list whose head pointer is at a1. For each node it calls the function pointer stored at a0 plus 0x18 with a0 unchanged and the node as a1. The next link is loaded from the node's first doubleword in the delay slot of that call, before the callee runs, and the walk ends at a null link.

- `ARMTexCacheUnused2Used` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb300
  **Inferred.** Moves the first node of the free list at a0 plus 8 onto the front of the used list. The free list advances through each node's +0x18 doubleword. The node's first doubleword is set from a1, and the node is linked just after the sentinel whose pointer is at a0: the node's +0x10 link takes the old first node, the old first node's +0x18 link and the sentinel's +0x10 link point to the node, and the node's +0x18 link takes the sentinel. The routine returns the node in v0.

- `__glKonUpdateARMTexCacheLRU` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb340
  **Inferred.** Moves the node a1 to the front of the list whose sentinel pointer is at a0. It first removes the node by joining its +0x10 and +0x18 neighbours, using the neighbour's +0x18 link for the one before it and +0x10 for the one after, and then inserts the node immediately after the sentinel in the same way as the insertion in ARMTexCacheUnused2Used. It makes no calls.

- `__glKonInsertARMTexCacheSlow` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb390
  **Inferred.** Adds an entry to the cache at a0 with value a1. When the pointer at a0 plus 8 is set, it hands the work to ARMTexCacheUnused2Used at 0x2ddb300 and returns the node it gives back. Otherwise it reads the least recently used node from the sentinel's +0x18 link, calls the hook stored at a0 plus 0x38 with that node's first doubleword, moves the node to the front through __glKonUpdateARMTexCacheLRU at 0x2ddb340, stores a1 into the node's first doubleword, and returns the node.

- `__glKonDeleteARMTexCache` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb5e0
  **Inferred.** Removes the node a1 from the list that holds it by joining its +0x10 and +0x18 neighbours. It then pushes the node onto the free list headed at a0 plus 8: the node's +0x18 link takes the old free head, and the head becomes the node. No calls are made and nothing is returned.

- `__glKonInitARMTexCache` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb610
  **Inferred.** Initialises a cache header at a0. The word at +0x10 and the doublewords at +0x8 and +0x60 are set to zero, a3 is stored at +0x38, a2 is stored as a word at +0x18 and a1 as a word at +0x14. The sentinel node sits at a0 plus 0x40 with both of its links at +0x50 and +0x58 pointing back to itself, so the list starts empty, and the pointer at a0 is set to the sentinel. Three doublewords loaded from memory addressed off $at go to +0x20, +0x28 and +0x30.

- `__glKonInvalidateARMTexCache` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb660
  **Inferred.** Empties the used list of the cache at a1. It walks from the sentinel's +0x18 link back around to the sentinel and calls the hook stored at a1 plus 0x38 for each node, passing the node's first doubleword as a0. The whole chain is then spliced onto the free list at a1 plus 8, and the sentinel is left pointing at itself.

- `__glKonFreeARMTexCache` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb700
  **Inferred.** Releases the entries of the cache object at a1. The count is the word at +0x10 divided by the word at +0x18, computed in double precision and truncated; the teq at 0x2ddb758 traps when the word at +0x18 is zero. For each of the count doublewords in the array pointed to at +0x60, it calls the function at a0 plus 0x18 with a0 unchanged and the element as a1. When the array pointer at +0x60 is nonzero, the same function is called once more with the array itself.

- `__glKonFreeTextures` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddb1b0
  **Inferred.** Visits the 64 KiB block at a1 and then the chain of such blocks headed by the pointer at a1. In the first pass, each 16-byte slot whose word at +0x1c is nonzero sends its doubleword at +0x10 to a hook. The second pass starts from the pointer at a1 and follows each block's first doubleword; in every block, each slot whose word at +0x10 is nonzero sends its doubleword at +8 to the same hook. The hook is the function pointer loaded from -0x78c0 off gp, and a0 is passed through unchanged.

- `__glKonHashDeleteTexSlow` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddaee0
  **Inferred.** Looks up the key a1 in the hash table at a0, returns its value, and clears the key when it is found. The primary slot is index a1 & 0xfff, a 16-byte entry with the key word at +0x1c and the value doubleword at +0x10. On a miss it tries four more slots at an index stepped by a value built from a1's bits 12 and up and its low six bits. If that also misses, it follows the chain headed by the doubleword at a0 and probes eight slots in each block; a hit in a chain block returns the doubleword at +8 and clears the word at +0x10. It returns 0 when the key is absent.

- `__glKonEvalCoord2DHost` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2ddf7d0
  **Inferred.** Calls EvalRow2D at 0x2ddee20 from a 0x4020-byte frame. It stores the float in f12 at frame+4, clears the word at frame+0xc, and passes the frame as a1, 0 as a2, 1 as a3, frame+0x10 as t0 and 1 as t1. The second float, from f13, is moved into f12 for the call. a0 passes through unchanged, and the return value left in f0 is not touched.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `__glkonim_Map1f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de19b0
  **Inferred.** Defines a one-dimensional evaluator map. When the word at 0x1030 is 1 it reports 0x502 through `__glSetError` and returns. Otherwise it passes the arguments to `__glKonSetUpMap1`, and the call returns at once when that result is zero or differs from the word the setup block holds. A nonzero word saved in the frame sends the call through `__glKonCleanUp1D` and returns; with that word clear, the byte at context +0xb9f0 selects `__glKonHostMapData1D` when it equals 1 and `__glKonSendMapData1D` when it does not.

- `__glkonim_EvalCoord1fv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de2080
  **Inferred.** Forwards a one-dimensional evaluation to a hook. The doubleword at context +0xb538 gates it: when that doubleword is zero the routine returns at once. When it is nonzero, the float at a0 goes into f12 and the routine held at +0xb9f8 is called with a1 unchanged.

- `__glkonim_EvalCoord2f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de2190
  **Inferred.** Forwards a two-dimensional evaluation to a hook gated by the doubleword at context +0xb798. A zero doubleword returns straight away. A nonzero one calls the routine at +0xba00 with a0 unchanged and a1 set to the context base plus 0x10000.

- `__glkonim_GetMapfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de2bf0
  **Inferred.** Returns the state of an evaluator map as floats in the caller's array at a2. The target in a0 is matched against the one- and two-dimensional evaluator enumerants from 0xd90 up to 0xdb9, and the query in a1 against 0xa00 (coefficients), 0xa01 (order) and 0xa02 (domain). The deformation target 0x8194 is passed to `__glkon_GetDeformationf`. A target or query that matches nothing reports 0x500 through `__glSetError`, and a word at 0x1030 equal to 1 reports 0x502 through the same routine.

- `__glkonim_GetMapdv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de3120
  **Inferred.** Same dispatch as the float form, returning doubles. Values are stored with `sdc1` at a2 offsets 0x0, 0x8, 0x10 and 0x18, and the deformation target goes to `__glkon_GetDeformationd`. Unknown targets and queries report 0x500, and the word at 0x1030 equal to 1 reports 0x502.

- `__glkonim_GetMapiv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de3660
  **Inferred.** Integer counterpart of the map query. It shares the target and query dispatch with the float form, stores its results with `sw` and `swc1` through a2, and hands the deformation target to `__glkon_GetDeformationi`. An unmatched target or query reports 0x500, and 0x502 is reported through `__glSetError` as well.

- `PixelMapHostReadback` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de46a0
  **Inferred.** Reads up to four pixel maps back to the host. Each of the arguments a1, a2, a3 and a4 that is nonzero produces one call to `__glkonim_GetPixelMapusv`, with the map number a0 plus its index from 0 to 3 and that argument as the second argument.

- `PixelMapHostDownload` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de4750
  **Inferred.** Sends four pixel maps to the device. It calls `__glkonim_PixelMapusv` four times with the map numbers a0 through a0+3, taking the second argument of each call from the words at a1+8, a1+12, a1+16 and a1+20. The call order runs from map 0 to map 3.

- `__glkonim_GetColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de5210
  **Inferred.** Copies a color table to the caller. The table record is one of four context offsets (0x17e4, 0x1894, 0x1944 and 0x19f4), and a word is read from it. Before the copy it sets up the transfer state in this order: `__glInitMemGet`, then `__glInitMemPack`, then `__glInitUnpacker`, then `__glInitPacker`. It reports 0x500 and 0x502 through `__glSetError` on its error paths, with 0x8000 as the second argument on the 0x500 ones.

- `get_pixel_map_setup` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de5570
  **Inferred.** Decodes a pixel-map enumerant in a0. A ten-entry jump table at 0x2ee8810 picks the map, four words are stored through the output pointer a2, one path calls `__glkonim_GetIntegerv` with a0 plus 64 as its first argument and returns 0. An invalid enumerant reports 0x500 through `__glSetError` and returns 1.

- `__glkonim_GetPixelMapfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de5610
  **Inferred.** Returns one pixel map as floats. It decodes the map name with `get_pixel_map_setup`, fetches the map data from `__glkon_get_special3` with selector 0x48, and stores five floats with `swc1`. The routine also reports 0x502 through `__glSetError` with its arguments passed through.

- `__glkonim_GetPixelMapusv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de5990
  **Inferred.** Returns one pixel map as unsigned 16-bit values. It uses the same decode and fetch as the float form, `get_pixel_map_setup` followed by `__glkon_get_special3` with selector 0x48, and stores six halfwords with `sh`. The 0x502 report goes through `__glSetError` with the caller's arguments.

- `__glkonlc_Rectf` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de6940
  **Inferred.** Appends a rectangle to the display list being compiled. The write pointer is the doubleword at 0x1058 and the free word count is the word at 0x1048. The record is 16 words: the header words 3 and 0xe, four corner words each preceded by the tag 0x8c built from the floats in f12 to f15, then 0x71 and a zero. When fewer than 16 words are free it calls `__glSPDlistSpace` with 0 first. The running word count at 0x1060 goes up by 16 and that new count is the return value.

- `__glkonlc_Rectfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de6a30
  **Inferred.** Same 16-word rectangle record and free-count and running-count handling as `__glkonlc_Rectf`. The two corners come through the pointers a0 and a1, each read as a pair of floats, rather than from float registers. Space is reserved through `__glSPDlistSpace` when the free count is below 16.

- `__glkonlc_Recti` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de6b20
  **Inferred.** Integer rectangle variant of the display-list append. The four arguments go into the 16-word record as words stored with `sw`, and the doubleword and running-count updates are the same as in the float form. A short free count calls `__glSPDlistSpace` with 0 before the record is written.

- `__glkonlc_Rectiv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de6c00
  **Inferred.** Integer form that reads its corners as words through the pointers a0 and a1 and writes them into the same 16-word record layout as the float pointer form.

- `__glkonlc_Materiali` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de7030
  **Inferred.** Records a shininess-only material element. The pname in a1 must be 0x1601 (GL_SHININESS), and any other pname calls `__glsplc_InvalidEnum` and returns its result. For shininess it appends a seven-word record tagged 0x97, with the face in a0 and the pname in a1 as words and the integer a2 converted to float at +0xc. When fewer than seven words are free it calls `__glSPDlistSpace` first.

- `__glkonim_GetMinmaxEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de9790
  **Inferred.** Copies out a min/max table. The target in a0 must be 0x802e (GL_MINMAX_EXT), and a mismatch reports 0x500 through `__glSetError`. Table data comes from `__glkon_get_special` with selector 0x109, element sizes from `__glSpecBytesPerElement`, and the output is reordered with `__glkon_byteSwapMaybe`, called with 2 in a2, and packed by `__glkon_packPixelRow`, called with 2 in a3. The word at 0x1030 equal to 1 reports 0x502 through `__glSetError`.

- `__glkon_byteSwapMaybe` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dea530
  **Inferred.** Swaps the bytes of a pixel-element buffer in place under control of two context flag bytes. The byte read depends on the argument in a4: when a4 is zero it reads the byte at +0x568, otherwise it reads the byte at +0x594. The element type in a1 is compared against 0x1400 to 0x1407 and the packed types 0x8033 to 0x8036 to choose the swap width.

- `fullscreen` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2deade0
  **Inferred.** Issues ioctl request 0x3f1 through `__glKon_ioctl`, passing the pointer read from 0x1020 as the first argument. The request record is built on the stack: the word at context +0x9eac is read twice, the constants 3 and 2 are stored as words, the byte 6 goes at offset 8, and the two arguments a0 and a1 are stored at offsets 0x10 and 0x18.

- `lcDeformationMap3` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2deb200
  **Inferred.** Records a three-dimensional deformation map. `__glCheckMap3Params` runs first. A 0x501 or 0x500 result goes to the matching invalid-enum or invalid-value helper, and three argument registers are compared against that 2, and a mismatch calls the invalid-value helper. When the free count at 0x1048 is below 0x20 it calls `__glSPDlistSpace`. The record is then filled by `__glFillDeformationMap3d` when t0 is zero and by `__glFillDeformationMap3f` when it is not, with the record pointer plus 0x20 as the seventh argument.

- `getDeformationf` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2deb6a0
  **Inferred.** Reads a deformation map out of its block. `__glkon_get_special` with selector 0x1c6 returns the block, and three floats at -4, 0 and +4 from it give the three dimensions. The query in a1 selects the output: 0xa00 copies 12 times the product of the three dimensions in bytes from the block at +0x20 and returns 3 times that product; 0xa01 writes the three dimensions as floats and returns 3; 0xa02 copies 24 bytes from +8 and returns 6. Any other query reports 0x500 through `__glSetError` and returns 0.

- `__glkon_GetDeformationf` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2deb7c0
  **Inferred.** Thin wrapper. It calls `getDeformationf` with its four arguments unchanged and returns that routine's result.

- `__glkonim_PixelTransformParameterfSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df01f0
  **Inferred.** Sets one pixel-transform parameter. A word at 0x1030 equal to 1 reports 0x502 through `__glSetError`. For the names 0x8010 to 0x8012 the value selector in a1 must be 0x8013, otherwise 0x500 is reported. The name 0x81c6 skips that check and goes straight to `__glkonim_PixelTransformParameterfvSGI` with a pointer to the float spilled from f14. Any other name reports 0x500.

- `GetPixelTransformParameterfvSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df0650
  **Inferred.** Reads one pixel-transform parameter out of the context into the caller's floats at a2. A nine-entry jump table at 0x2ee89f0 picks which context words are read, and the values are stored with `swc1` at a2 offsets 0x0, 0x4, 0x8 and 0xc. One case calls `__glkonim_GetFloatv` and another calls `__glkon_get_special2` with selector 0xfa, and bad names report 0x500 through `__glSetError`.

- `__glkonim_GetPixelTransformParameterfvSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df08e0
  **Inferred.** Forwards its four arguments to `GetPixelTransformParameterfvSGI` and returns the result.

- `__glsplc_InvalidOperation` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4360
  **Inferred.** Raises the error 0x502 (GL_INVALID_OPERATION) through the context. It loads the context pointer from absolute 0x1020, calls the function pointer at that context's offset 0x15a0 with 0x502 as the only argument, and returns.

- `__glim_FinishAsyncSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f850
  **Inferred.** Finishes an asynchronous marker through the dispatch table whose pointer sits at +0x1ad8 of the current context. While the begin-state word is 1 it reports 0x502 and returns zero. Otherwise it calls slot +0x908 of that table with the argument still in a0 and returns the result when it is non-zero. A zero result makes it call slot +0x270 first, then slot +0x908 a second time with the same argument, and return the second result.

- `__glim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1fcc0
  **Inferred.** Records the blend equation mode in the word at +0x834 of the current context. The accepted values are 0xbf1, 0x8006, 0x8007, 0x8008, 0x800a, 0x800b, 0x8320 and 0x8321; a value 0x8009 or any other falls to the 0x500 report. Success sets the begin-state word to 2 and bit 0 of the context word at +0x4714. A call made while the begin-state word is 1 reports 0x502 and stores nothing.

- `__glim_GetConvolutionFilterEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e32c70
  **Inferred.** Stores the enumerant 0x1908 (GL_RGBA in the GL headers) in a stack slot. The word at 0x1030 is then tested: 0 continues, 2 calls the routine at context +0x4748 and clears 0x1030 before continuing, and any other value reports 0x502 through `__glSetError` and returns. The continuing path calls `__glCheckConvolutionFilterArgs` with the context, the caller's a0, zero in a2 and a3, and the address of the stack slot in t1. A zero result returns. Otherwise the routine calls the context routine at +0x4d88 with the context and the caller's a0 to a3 each moved one register along.

- `__glim_GetSeparableFilterEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e32d40
  **Inferred.** Uses the same begin-state test as the convolution getter: 0 continues, 2 flushes through the context routine at +0x4748 and clears 0x1030, and anything else reports 0x502. After `__glCheckConvolutionFilterArgs` succeeds, the a0 target must equal 0x8012 (GL_SEPARABLE_2D_EXT in the GL headers), or the routine reports 0x500 and returns. On a match it calls the context routine at +0x4d90 and passes the caller's arguments on, each one register later in the list.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `__glim_NurbsKnots1iSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39ca0
  **Inferred.** Converts an integer sequence into a double array. The static helper at 0x2e398d0 receives a0 unchanged and the count in a2, and returns the output buffer. A null buffer or a count of zero or less returns without writing. The input is read from the pointer in a3 at a stride of a1 times four bytes, each word goes through `cvt.d.w`, and the doubles are stored in order at eight-byte steps. The loop runs four elements per pass, with a remainder loop first.

- `__glSetValue` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e44220
  **Inferred.** Stores the float in f13 into the word at a0 in the type given by a2. Type 0x1406 stores the float bit pattern
  unchanged. Type 0x1405 truncates the float to an integer and stores the low 32 bits. Any other type returns without storing
  anything, and the routine never reports an error.

- `__glim_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43c80
  **Inferred.** Clears the histogram store for the target in a0. The word at 0x1030 equal to 1 reports 0x502 through
  `__glSetError`. A target other than 0x8024 reports 0x500. For 0x8024 the routine multiplies the word at context +0x5d8 by the
  element count that `__glElementsPerGroup` returns for the format word at +0x5f4, shifts the product left by two to get a byte
  count, and passes that count with a zero fill value and the buffer pointer at +0x5d0 to the routine in the GOT slot at gp-0x1038,
  which the module's symbol table does not name.

- `vvec` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e470f0
  **Inferred.** Combines two four-word homogeneous vectors A (a1) and B (a2) into a0. The word at offset 0xc of each operand is tested as an integer with its top bit discarded, and read as a float when it is nonzero. When both are nonzero, the result is B.xyz times A.w minus A.xyz times B.w, computed with mul.s and nmsub.s. When only B is nonzero the result is B.xyz, when only A is nonzero it is the negation of A.xyz, and when both are zero it is B.xyz minus A.xyz.

- `__glFogRGBColor` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e47780
  **Inferred.** Blends one vertex's RGB record with the fog colour. The record lives at vertex a2 plus 0x98 plus 16 times the index in a1. The fog depth z is the float at a2 plus 0xb8, and the end distance is the float at context +0xf2c. Each output channel is the context fog colour (+0x73c for red, +0x740 for green, +0x744 for blue) times (end minus z), plus the record channel times z. The results are written back to the record at +0x98, +0x9c and +0xa0.

- `__glFogCIColor` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e47ee0
  **Inferred.** Adds fog to one colour-index value. The index word at vertex a2 plus 16 times a1 plus 0x98 gets the context fog index (float at +0x75c) times (end minus z) added to it, where z is the float at a2 plus 0xb8 and end is the float at context +0xf2c. The sum is capped at (1 shifted left by the count at context +0xe04) minus 1, and written back to the same word. The cap is the only clamp, so a negative sum is stored unchanged.

- `__glFogLitCIColor` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e47f40
  **Inferred.** Calls the function pointer at context +0x4908 with the three arguments exactly as received, then applies the colour-index fog of `__glFogCIColor`. After the call the index and vertex arguments are swapped into place, so the record is vertex plus 16 times the index as before. The fog arithmetic and the mask cap at +0xe04 match `__glFogCIColor` line for line.

- `__glFogLitRGBColor` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e477e0
  **Inferred.** Calls the function pointer at context +0x4908 with the arguments as received, then blends the RGB record the same way as `__glFogRGBColor`. The saved vertex and index are reloaded from the stack after the call, and the record is at vertex plus 16 times the index plus 0x98. The routine keeps the context pointer in fp across the call.

- `__glPolygonOffsetLine` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e4ac10
  **Inferred.** Wraps the call through the function pointer at context +0x4c98 with a flag. It sets the byte at context +0x9884 to 1 before the call, passes the four arguments through unchanged, and clears the byte again when the callee returns. The context pointer is carried in a0 and in fp.

- `__glFirstLStripVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e4ae20
  **Inferred.** Records the first vertex of a line strip. It stores the vertex pointer a1 at context +0x4e50 and a1 plus 0xc8 at +0x4e48. The stored pointer at +0x4890 is taken from the GOT at gp minus 0x59d0 when bit 0x80 of the word at context +0x808 is set, and from the pointer at context +0x48a0 when it is clear. The value at +0x4920 comes from the GOT at gp minus 0x5580 in both cases. If the word at context +0x8cfc is nonzero, the routine calls the function pointer stored at offset 0x10 of the vertex, with the context and the vertex as arguments.

- `__glle_DeformationMap3SGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e4f6e0
  **Inferred.** Replays a three-dimensional deformation map. It reads floats from cursor +4, +8, +0x10, +0x14, +0x1c and +0x20 and words from +0xc, +0x18 and +0x24. The dispatch call goes through the table at context +0x1ad8, slot +0x860. The return is the cursor plus 40 plus 12 times the product of the words at +0x24, +0xc and +0x18.

- `__glle_TexImage3DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e50b00
  **Inferred.** Replays a glTexImage3DEXT record. The context and the seven words at cursor +0 through +0x18 go to `__gllei_TexImage3DEXT` at 0x2e7eb80. The payload length is the word at +0x24 rounded up to 8, and the routine returns the cursor plus that length plus 40.

- `__glle_TexSubImage1DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e51060
  **Inferred.** Replays a glTexSubImage1DEXT record. `__gllei_TexSubImage1DEXT` at 0x2e8b2d0 is called with the context, the words at cursor +0 through +0x14 as a1 through a6, and the data address cursor +0x20 as a7. The word at +0x18, rounded up to 8, gives the payload length, and the return adds 32 to the cursor and that length.

- `__glle_TexSubImage2DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e51590
  **Inferred.** Passes the context and seven words, cursor +0 through +0x18, to `__gllei_TexSubImage2DEXT` at 0x2e8b570. The payload length is the word at +0x20 rounded up to 8. The return is the cursor plus that length plus 40.

- `__glle_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e51b00
  **Inferred.** Calls `__gllei_TexSubImage3DEXT` at 0x2e8b830 with the context and the seven words at cursor +0 through +0x18. The word at +0x28 sets the payload length, rounded up to 8, and the routine returns the cursor plus that length plus 48.

- `__glle_ColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e53840
  **Inferred.** Replays a glColorTableSGI record through the context dispatch slot at +0x4e18. Arguments a1 through a5 are the words at cursor +0, +4, +8, +0xc and +0x10, a6 is the cursor plus 0x18, and a7 is the constant 1. The word at +0x14 rounded up to 8 is the payload, and the return is the cursor plus the payload plus 24.

- `__gllc_DeformationMap3fSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e4f540
  **Inferred.** Checks its arguments with `__glCheckMap3Params` at 0x2e33900 and allocates a record with a 64-byte fill target at record +64. `__glFillDeformationMap3f` at 0x2e33700 writes the map, a halfword goes to record +20, and `__glDlistAppendOp` links `__glle_DeformationMap3SGIX` at 0x2e4f6e0. Failures go to `__gllc_InvalidEnum` at 0x2e4f6b8 or `__gllc_InvalidValue` at 0x2e4f6cc.

- `__gllc_DeformationMap3dSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e4f7c0
  **Inferred.** The double-precision form of the three-dimensional deformation compiler. It uses the same `__glCheckMap3Params` check, then `__glFillDeformationMap3d` at 0x2e33790 fills a record that starts 64 bytes in. The record links to `__glle_DeformationMap3SGIX`. Errors leave through `__gllc_InvalidEnum` at 0x2e4f958 or `__gllc_InvalidValue` at 0x2e4f96c.

- `__gllc_ColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e538c0
  **Inferred.** Compiles glColorTableSGI into the list. `__glCheckColorTableArgs` validates the call, with `__gllc_TableTooLarge`, `__gllc_InvalidEnum`, `__gllc_InvalidValue` or `__gllc_InvalidOperation` on the failing paths. `__glImageSize` sizes the table with 1 as its second argument, and `__glFillImage` fills the record at +48 with opcode 0xe3. The record is linked to `__glle_ColorTableSGI` at 0x2e53840.

- `__glRenderAliasedPoint1_NoTex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e5b7f0
  **Inferred.** Builds the argument block for the aliased-point hook. The x and y floats at vertex +0x88 and +0x8c are truncated to integers, and z at +0x90 is truncated to a 32-bit integer; all three go to stack slots 0, 4 and 8. When the byte at context +0x9884 is set, the truncated float at +0x9864 is added to z. The four floats at offsets 0, 4, 8 and 0xc of the record at vertex+8 are copied to stack slots 0xc through 0x18. It then calls the hook at +0x4da8 with a0 taken from the pointer at +0x4718 and a1 set to the stack block.

- `__glRenderFlatFogPoint` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e5b9b0
  **Inferred.** Sends one vertex through two context hooks. It first calls the hook at +0x4d10 with a1 set to the stack, a2 set to the word at vertex+8, and the float at vertex+0xb8 in f15. It then points vertex+8 at the stack, calls the hook at +0x4cd0 with a1 = the vertex, and writes the saved word back to vertex+8 after that call returns.

- `__glPolygonOffsetPoint` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e5bc00
  **Inferred.** Wraps a call to the procedure at context +0x4cc8 with a flag. It sets the byte at context +0x9884 to 1, calls the procedure with a0 through a3 unchanged, and clears the byte to 0 after the call. The aliased-point routines read that byte and add the float at +0x9864 to the point's depth, so the flag makes the callee's point draw carry the polygon offset.

- `OtherTFanVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e61210
  **Inferred.** Advances the fan by one vertex. It clears the byte at context +0x95b8, sets byte 0xc0 of the new vertex a1 to 1, and stores a1 at +0x8cf0. The previous current vertex, the pointer at +0x4e50, moves to +0x4e48, and a1 becomes the current one. The words at offset 4 of the old and new vertices and the context word at +0x4e74 are then combined. If all three are zero, the hook at +0x4990 is called. If they are not all zero and all three share a set bit, the routine returns. Otherwise the hook at +0x49a8 is called. Both hook calls pass a0 unchanged and a2 = context+0x4e70.

- `__glComputePolygonOffset` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e5fc60
  **Inferred.** Returns a polygon depth offset in f0 and stores nothing. It takes the larger of the absolute values of the floats at context +0x97b0 and +0x97ac, multiplies that by the float at +0x2a4, and adds the float at +0x2a8 times the 32-bit unsigned integer at +0x9d74, converted to float after zero-extension.

- `__glPolygonOffsetForLineAndPoint` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e5fcb0
  **Inferred.** Computes two depth slopes for a three-vertex primitive and then the offset. It divides the float at context +0xf2c by the float at +0x9710 to get a scale, then takes the z values (floats at +0x90) of a1 and a2 relative to a3. Four context floats at +0x9714, +0x9718, +0x971c and +0x9720, each multiplied by the scale, combine these differences into two values stored at +0x97ac and +0x97b0. It then calls `__glComputePolygonOffset` at 0x2e5fc60 and stores the returned f0 at +0x9864.

- `ThirdTrianglesVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e61410
  **Inferred.** Third vertex of a triangle list. It clears the byte at context +0x95b8, stores a1 at +0x8cf0, and copies the byte at context +0x275 into offset 0xc0 of the record in a1. It sets +0x4e48 to context +0x4e70 and the slot at +0x4890 to FirstTrianglesVertex (0x2e614e0). Then it loads three words: [a1+4], context +0x4e74 and context +0x4f3c. If all three are zero it calls through the pointer at context +0x4988. Otherwise, if the AND of the three is zero, it calls through the pointer at +0x49a8. Both calls pass a0, a1 and a3 = context +0x4f38. If neither test holds, it returns.

- `__glFirstQuadsVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e617b0
  **Inferred.** First vertex after a quad begins. Flag byte context +0x275 goes to offset 0xc0 of a1, then the write pointer at +0x4e48 is set to a1+0xc8 and the slot at +0x4890 is set to SecondQuadsVertex (0x2e61780). No calls.

- `__glColorTableParameterfvSGI_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68c10
  **Inferred.** Returns 4 when the target in a0 is 0x80d6 or 0x80d7, and -1 for any other target. The routine compares a0 with each constant in turn, and both matches reach the same return of 4.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `__glColorTableParameterivSGI_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68c40
  **Inferred.** Saves ra and gp in a 16-byte frame, derives gp from t9, and makes an unconditional call (bgezall on $zero) to 0x2e68c10. That target is outside this chunk. Whatever it leaves in v0 is the result once the frame is popped.

- `__glSpriteParameterfvSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68c80
  **Inferred.** Maps the sprite parameter name in a0 to a component count. Name 0x8149 gives 1, and 0x814a gives 3. For 0x814b the xor of a0 with 0x814b is zero, so the movz selects 3 as well. Any other name gives -1. The routine reads no memory and touches no context.

- `__glSpriteParameterivSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68cc0
  **Inferred.** Integer-named sprite query built on the same frame. It calls the float table at 0x2e68c80 and returns that table's v0, so both names report identical component counts.

- `__glPointParameterfvSGIS_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68d00
  **Inferred.** Returns the component count for the point parameter name in a0. Names 0x8126, 0x8127 and 0x8128 each return 1. Name 0x8129 returns 3, through a movz that copies a1 (preset to 3) when a0 xor 0x8129 is zero. Any other name returns -1.

- `__glPixelTransformParameterfvSGI_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68d50
  **Inferred.** Looks up the pixel-transform parameter name in a0 with a compare-and-branch tree. It returns 1 for 0x8013, 4 for 0x8014 and 0x8015, and -1 for 0x8016. Names 0x8017 through 0x801b return 1, as do 0x81c9 and 0x81ca. Names from 0x801c through 0x81c8, names above 0x81ca, and names below 0x8013 return -1.

- `__glPixelTransformParameterivSGI_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68e50
  **Inferred.** Forwarder to the pixel-transform table at 0x2e68d50. It keeps no state of its own, and the v0 it gets back is the value it returns.

- `__glPixelTexGenParameterivSGIS_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68e90
  **Inferred.** Accepts names 0x8354, 0x8355, 0x8357 and 0x835a, each returning 1. Every other name returns -1 in v0. The routine makes no calls and reads no memory.

- `__glPixelTexGenParameterfvSGIS_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68ed0
  **Inferred.** Float-named entry that sets up the frame and branches into the integer-named table at 0x2e68e90. The table's result passes through without change.

- `__glFragmentMaterialfvSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68f10
  **Inferred.** Gives the component count for fragment material names. 0x1601 returns 1. The names 0x1600, 0x1200, 0x1201, 0x1202 and 0x1602 each return 4. Any other name returns -1.

- `__glFragmentMaterialivSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68f90
  **Inferred.** Saves the frame, calls the fragment-material table at 0x2e68f10 with a0 unchanged, and returns its v0.

- `__glFragmentLightfvSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e68fd0
  **Inferred.** Compare-and-branch table over the fragment light parameter names. It returns 4 for 0x1200 through 0x1203, 3 for 0x1204, and 1 for 0x1205 through 0x1209. Name 0x8193 also returns 1. Every other name returns -1. The code touches no memory.

- `__glFragmentLightivSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e69100
  **Inferred.** Passes the fragment light name in a0 to the table at 0x2e68fd0, then returns the v0 that table computes.

- `__glFragmentLightModelfvSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e69140
  **Inferred.** Light-model name 0x840a returns 4. Names 0x8408, 0x8409 and 0x840b return 1. Any other name returns -1, and the movz in the fall-through path is what picks the 1 for 0x840b.

- `__glFragmentLightModelivSGIX_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e69190
  **Inferred.** Hands the light-model name to 0x2e69140 under a fresh 16-byte frame. Its return value is the one the caller receives.

- `__glColorSubTable_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e691d0
  **Inferred.** Dispatcher over 26 consecutive names. It computes a0 minus 0x80bc in 32 bits, so names 0x80bc through 0x80d5 pass the sltiu bound of 0x1a. The index is scaled by 8, and the table base comes from a GOT word less 0x6178. The handler is entered with jr t1 and returns straight to the caller. Out-of-range names return -1.

- `__glim_SubdivPatchParameteriSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e6b420
  **Inferred.** Converts the integer in a1 to single precision in f13, then calls `__glim_SubdivPatchParameterfSGIX` at 0x2e6b2e0 with a0 unchanged. The conversion sits in the call's delay slot, so the callee sees the float. Return registers pass straight through.

- `CopyRVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e6f940
  **Inferred.** Copies a0 single-precision words from the array at a1 into the array at a2, starting from the last element, using lwc1 and swc1 with 4-byte and 8-byte steps. An odd count moves the last word with one scalar store before the paired loop runs. A count of zero or less returns at once.

- `NormalizedCrossProduct` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e6f9c0
  **Inferred.** Writes the cross product of the three-float vectors at a0 and a1 into a2. The result is rescaled so its length equals the double at gp+0x1b8: that constant is divided by the length, and each component is multiplied by the quotient. The squared length is accumulated in single precision, and the division runs in double before rounding back to single.

- `PrepSmoothVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e6fec0
  **Inferred.** Multiplies the counts a0 and a1 into N, then fills seven pointers in the block at t1. Base a3 feeds +0x0 (4N), +0x8 (4(N+a0)) and +0x20 (4(N-a0)). Base a2 feeds +0x10 (4(N+a0)) and +0x18 (4N). Base t0 feeds +0x28 (4(N-a0)) and +0x30 (4N).

- `UpdateCreaseVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e701b0
  **Inferred.** For i below the count in a0, it writes out[i] = (K1 * A[i] + B[i] + C[i]) * K2. The arrays A, B and C have base pointers in the doublewords at a1, a1+8 and a1+16. K1 is the double at gp+0x4f0 and K2 the double at gp+0x780. The K1 product is rounded to single before the two adds. The final multiply by K2 runs in double and is rounded to single.

- `CreasePosition` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e704a0
  **Inferred.** Fills out[i] for i below a1 from three float arrays whose base pointers are at the block a2 (+0x0, +0x8, +0x10), with the output at a3. The weight s is the float at gp+0x50 when a0 is odd, and the float at gp+0x58 when a0 is even. With p the float at gp-0x20 and q the float at gp-0x14, out[i] = (s*A[i] + (s+p+q)*B[i] + (s+2p+q)*C[i]) * (K/(s+2p)), where K is the double at gp+0x1b8.

- `UpdateVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e70240
  **Inferred.** Selects a worker from the flag word a0 and calls it with the arguments shifted. A zero word or one with bit 0x4 set calls UpdateSmoothVertex at 0x2e6ff20. Bit 0x10 calls UpdateConicalVertex at 0x2e70060. Bits 0x1 or 0x2 call UpdateCreaseVertex at 0x2e701b0. Otherwise it copies a1 words from the first array in the block at a3 into the output at t0. The routine keeps ra in a 16-byte frame.

- `FinalPosition` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e70550
  **Inferred.** Picks a worker from the flag word a0. Zero or a word with bit 0x4 set calls SmoothPosition at 0x2e70360. With bit 0x4 clear and bits 0x1 or 0x2 set, it calls CreasePosition at 0x2e704a0. Otherwise it copies a1 words from the first array in the block at a3 into the output at t0.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `ComputeNormal` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e70b80
  **Inferred.** Picks one of three normal helpers from the flag bits in a0. When the low two bits of a0 are nonzero it calls CreaseNormal at 0x2e70780 with a0 to a3 passed on unchanged. Otherwise, if bit 3 of a0 is set, it calls CornerNormal at 0x2e70a40, and if not it calls SmoothNormal at 0x2e70640; those two receive a1, a2 and a3 moved down into a0, a1 and a2. The callee's v0 is returned as it stands, and the 16-byte frame holds only the saved return address.

- `__glLookUpTextureParams` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e78a30
  **Inferred.** Takes the context in a0 and a target in a1 and returns a pointer built from the doubleword at +0xab8. Target 0xde0 returns that doubleword unchanged, target 0xde1 adds 0xe0, and target 0x806f adds 0x1c0. Any other target returns zero in v0.

- `__glLookUpTextureTexobjs` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e78a80
  **Inferred.** Same shape as the params lookup with its own offsets: the doubleword at context +0xab8 plus 0xd8 for target 0xde0, plus 0x1b8 for 0xde1, plus 0x298 for 0x806f. Other targets return zero.

- `__glLookUpTexture` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e78ad0
  **Inferred.** Loads the table pointer at context +0x8da0 and returns the doubleword at that pointer plus an offset chosen by target. The offsets are 0 for 0xde0, 8 for 0xde1, 0x10 for 0x806f, 0x18 for 0x8063, 0x20 for 0x8064 and 0x28 for 0x8070. Any other target returns zero, which the routine sets in v0 before its first test.

- `__glLookUpTextureObject` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e78b90
  **Inferred.** Reads the pointer at context +0x8da8, then returns a doubleword from it. For target 0xde0 it returns the doubleword at that pointer's +0, the 0xde1 path returns +8 and the 0x806f path returns +0x10. The 1D path uses offset 0, so it returns the doubleword the pointer addresses directly. Other targets return zero.

- `__glTexInitTextureObject` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e78ca0
  **Inferred.** Fills the object at a1: a2 is stored as a word at +0xf8, a3 as a word at +0x10, and a zero byte at +0x14. It also loads four values from a table reached through t9 plus 0x87af8, storing three doublewords at +0x8, +0x120 and +0x128 and one float at +0xfc.

- `__glim_TextureColorMaskSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b240
  **Inferred.** Stores the four byte arguments a0, a1, a2 and a3 as channel flags at context +0xae8, +0xae9, +0xaea and +0xaeb. The context pointer is the doubleword at absolute address 0x1020. A call made while the word at 0x1030 is 1 reports 0x502 instead. On success the word at 0x1030 becomes 2 and bit 0 is set in the context word at +0x4714.

- `__glExtractTexelL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b2c0
  **Inferred.** Reads one single-component texel. The row a3 must be non-negative and below the word at +0x1c of the image record in a0, and the column t0 must be non-negative and below the word at +0x18. Inside those bounds the element index is t0 plus a3 shifted left by the word at +0x30, and the float at that index is stored at +0xc of the output block. Outside them the border value at +0xa0 of the record in a1 is stored there instead.

- `__glExtractTexelLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b320
  **Inferred.** Reads a luminance-alpha texel pair with the same row and column tests as the single-component reader. An in-range pair takes two floats at index times eight bytes and stores them at +0xc and +0x10 of the output. Out of range, the border floats at +0xa0 and +0xac of a1 are copied to those two slots.

- `__glExtractTexelRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b390
  **Inferred.** Reads a three-component texel. In range, the index is multiplied by twelve bytes and the three floats there go to output offsets 0, 4 and 8. Out of range, the three border floats at +0xa0, +0xa4 and +0xa8 of a1 are stored to the same offsets.

- `__glExtractTexelRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b420
  **Inferred.** Reads a four-component texel using the usual row and column bounds. An in-range texel copies four consecutive floats, sixteen bytes per index step, into output offsets 0 to 0x10. An out-of-range texel copies the four border floats at a1+0xa0 to a1+0xac to the same offsets.

- `__glExtractTexelA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b4b0
  **Inferred.** Reads an alpha-only texel. In range it loads the float at index times four and writes it to output offset 0x10. Out of range it loads the border float at +0xac of a1 and stores it at that same offset, and nothing else.

- `__glExtractTexelI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b510
  **Inferred.** Reads an intensity texel. In range it writes the indexed float to output offset 0x14; out of range it loads the border float at +0xa0 of a1 and stores it there.

- `__glExtractTexelL_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b6f0
  **Inferred.** Has no bounds tests. The index is t0 plus (a3 + 1) times the word at +8 of the image record, and the float one element past that index is stored at output offset 0xc.

- `__glExtractTexelLA_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b720
  **Inferred.** Has no bounds tests. It reads the pair at elements 2 times the index plus 2 and plus 3, where the index is t0 plus (a3 + 1) times the word at +8. The first float goes to output offset 0xc and the second to offset 0x10.

- `__glExtractTexelRGB_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b760
  **Inferred.** Has no bounds tests. It forms the same index as the single-component neighbour reader, scales it by twelve bytes, and copies the three floats starting three elements past that point to output offsets 0, 4 and 8.

- `__glExtractTexelRGBA_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b7b0
  **Inferred.** Has no bounds tests. The index is shifted to a sixteen-byte stride and the four floats starting one texel past it go to output offsets 0, 4, 8 and 0x10.

- `__glExtractTexelA_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b800
  **Inferred.** Has no bounds tests. It loads the float one element past the (a3 + 1) times +8 index and stores it at output offset 0x10.

- `__glExtractTexelI_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b830
  **Inferred.** Has no bounds tests. It loads the float one element past the same index as the alpha neighbour reader and stores it at output offset 0x14.

- `__glExtractTexel3L` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b960
  **Inferred.** Reads a single-component texel from a volume. Three bounds apply: a3 against the word at +0x1c, t0 against +0x18 and a2 against +0x20, all non-negative. The index is t0 plus (a3 shifted left by +0x30) plus a2 times the word at +0x14. The indexed float goes to output offset 0xc, and out-of-range requests copy the border float at +0xa0 of a1 there.

- `__glExtractTexel3LA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7b9f0
  **Inferred.** Reads a luminance-alpha volume texel with the three bounds of the single-component volume reader. The index is doubled before it addresses the pair, which lands at output offsets 0xc and 0x10. The fallback copies the border floats at +0xa0 and +0xac of a1.

- `__glExtractTexel3RGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7ba90
  **Inferred.** Reads a three-component volume texel. The index is scaled by twelve bytes, and the three floats go to output offsets 0, 4 and 8. The three-component border values at a1+0xa0 to a1+0xa8 are the fallback.

- `__glExtractTexel3RGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bb40
  **Inferred.** Reads a four-component volume texel after the same three bound tests. Four consecutive floats per texel are copied to output offsets 0 to 0x10, and the fallback is the four border floats at a1+0xa0 to a1+0xac.

- `__glExtractTexel3A` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bc00
  **Inferred.** Reads an alpha volume texel. Inside the three bounds the float at the volume index is written to output offset 0x10. Outside, the border float at +0xac of a1 is written there.

- `__glExtractTexel3I` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bc90
  **Inferred.** Reads an intensity volume texel. The volume index selects a float that is written to output offset 0x14, or the border float at +0xa0 of a1 when any of the three bounds fails.

- `__glExtractTexel3RGB8` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bd20
  **Inferred.** Reads a packed three-byte texel from the volume. The record at *a1 holds a float scale at +0xf34, which multiplies each of the three bytes after conversion to float. The bytes at offsets 0, 1 and 2 of the four-byte texel at index times four go to output offsets 0, 4 and 8. Out of range, the three border floats at a1+0xa0 to a1+0xa8 are stored unscaled.

- `__glExtractTexel3RGBA8` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7be00
  **Inferred.** Reads a packed four-byte volume texel. Each byte is converted to float and multiplied by the scale at +0xf34 of the record that *a1 points to, then stored at output offsets 0, 4, 8 and 0x10. Out-of-range requests copy the border floats at a1+0xa0 to a1+0xac without scaling.

- `__glExtractTexel3L_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bf00
  **Inferred.** Has no bounds tests. The index is t0 plus (a3 + 1) times the word at +8 plus (a2 + 1) times the word at +0x14, and the float one element past it goes to output offset 0xc.

- `__glExtractTexel3LA_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bf50
  **Inferred.** Has no bounds tests. The volume index formed as in the single-component neighbour reader is doubled, and the pair at elements 2 times the index plus 2 and plus 3 goes to output offsets 0xc and 0x10.

- `__glExtractTexel3RGB_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7bfb0
  **Inferred.** Has no bounds tests. It uses the (a3 + 1) and (a2 + 1) neighbour index and a twelve-byte stride, then copies the three floats starting three elements past that index to output offsets 0, 4 and 8.

- `__glExtractTexel3RGBA_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7c010
  **Inferred.** Has no bounds tests. It forms the neighbour index as the RGB neighbour reader does, applies a sixteen-byte stride, and copies the four floats of the texel after the index to output offsets 0 to 0x10.

- `__glExtractTexel3A_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7c080
  **Inferred.** Has no bounds tests. It loads the float one element past the neighbour index and stores it at output offset 0x10.

- `__glExtractTexel3I_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7c0d0
  **Inferred.** Has no bounds tests. It loads the float one element past the neighbour index and stores it at output offset 0x14.

- `__glExtractTexel3RGB8_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7c120
  **Inferred.** Has no bounds tests. The neighbour index selects a four-byte texel and the three bytes at its offsets 4, 5 and 6 are read, converted and scaled by the float at +0xf34 of *a1. The results go to output offsets 0, 4 and 8.

- `__glExtractTexel3RGBA8_B` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7c1b0
  **Inferred.** Has no bounds tests. The neighbour index selects a four-byte texel and its four bytes at offsets 4 to 7 are converted, scaled by the float at +0xf34 of *a1, and stored at output offsets 0, 4, 8 and 0x10.

- `__glInitTexImageStore` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7d750
  **Inferred.** Fills the store record in a1 for the level named by a3. The level entry is the 112-byte record at index a3 of the array at +0xe8 of a2. The record's first doubleword goes to +0x60, its words at +8, +0xc and +0x3c go to +0x9c, +0xa0 and +0x94, and the word at a2+0xf0 goes to +0x220. The +0x94 slot is only filled when a2+0xf0 equals 1. The routine clears +0x88, +0x90 and +0x98 and sets +0x8c to 1.
  The format at +0x48 of the level entry picks the values stored at +0x58 and +0x5c. Every matched format stores 0x1406 at +0x5c and 4 at +0xa4. At +0x58 it stores 0x1903 for 0x1909 and 0x8049, 1 for 0x190a, and the format itself for 0x1907, 0x1908 and 0x1906. A format outside these leaves +0x58 and +0x5c as they were.

- `__glInitTexSourceUnpack` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7d9d0
  **Inferred.** Stores its integer arguments into the unpack record in a1: a5 at +0, a6 at +4, a7 at +8 as a doubleword, a4 at +0xc0, a3 at +0xbc and a2 at +0xb8, +0xc4 and +0xc8. It also zeroes the float at +0xd4 and copies the float at +0xf2c of a0 to +0xb0. It then calls through the GOT slot at gp-0x6c68 with a2 set to a byte read from the caller's stack argument area at 0x57.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `__glFilter4Func` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e804e0
  **Inferred.** Third forwarder of the same kind. It calls the function pointer at +0x138 of the filter state in a0, with a1 set from the word at +0xe8 of that state, and returns the callee's result unchanged.

- `__glLoadDefaultFilterFuncSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e7edc0
  **Inferred.** Copies a fixed set of constants from the GP pool into the table at a0 and does nothing else. Words from gp+0xe0 through gp+0xfc go to offsets 0x0 through 0x1c. Words from gp+0x100 through gp+0x13c go to offsets 0x20 through 0x5c, with the word at gp+0x134 also written to 0x64. Words from gp+0x140 through gp+0x158 go to offsets 0x60 and 0x68 through 0x7c, and the word at 0x80 is set to zero. The routine has no argument checks and returns through ra with no frame.

- `__GL_TEXENV_CLAMP` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82380
  **Inferred.** Clamps the float in f12 against the upper bound in f14 and the lower bound in f13, returning the result in f0. When f12 is greater than f14 it returns f14 directly, with no lower-bound test. Otherwise it returns f12, unless f12 is below f13, in which case it returns f13. The texture-environment callers pass zero as f13 and the float at a0+0xf2c as f14.

- `__glTextureSBModulateL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e823b0
  **Inferred.** Replaces the texel's first three floats at a2 with its luminance at a2+0xc. It then computes three clamped channel values through `__GL_TEXENV_CLAMP`. Each value is a coefficient from the table at the pointer stored at a0+0x8db8, plus that table's scale times the luminance. The three values are stored back into a2 and multiply the colour floats at a1.

- `__glTextureSBModulateLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e824d0
  **Inferred.** Follows the same plan as the luminance variant above and adds a fourth channel. The texel's luminance at a2+0xc is written to a2+0, +4 and +8 first. The alpha coefficient is clamped from the texel alpha at a2+0x10 and the table words at +0xc4 and +0xb4, stored back at a2+0x10, and then multiplies the alpha at a1+0xc.
# Role readings: `usr/gfx/arch/IP27KONA64/libGLcore.so`

- `__glTextureSBModulateRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82620
  **Inferred.** Modulates the RGB part of the colour vector in a1 by the texel RGB. Each of a2+0, a2+4 and a2+8 is replaced by `__GL_TEXENV_CLAMP` of (texel times the unit scale plus the unit bias), with the scales at unit +0xb0, +0xb4 and +0xb8 and the biases at +0xc0, +0xc4 and +0xc8. The clamp takes 0.0 in f13 and the float at context +0xf2c in f14. The three results then multiply a1+0, a1+4 and a1+8. The alpha slots a1+0xc and a2+0x10 are neither read nor written.

- `__glTextureSBModulateRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82730
  **Inferred.** Runs the RGB modulate of the same shape, then handles alpha. The alpha texel at a2+0x10 becomes the clamp of its value times unit +0xbc plus unit +0xcc, and that value is stored back to a2+0x10. The product of a1+0xc and this alpha is written to a1+0xc.

- `__glTextureSBModulateA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82870
  **Inferred.** Modulates only the alpha channel. It reads the texel at a2+0x10, clamps it through `__GL_TEXENV_CLAMP` after a scale from unit +0xbc and a bias from unit +0xcc, stores the result back to a2+0x10, and multiplies a1+0xc by it. The RGB slots of a1 and a2 are not touched.

- `__glTextureSBModulateI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e828f0
  **Inferred.** Modulates from a single intensity. The float at a2+0x14 is copied into a2+0, a2+4, a2+8 and a2+0x10 before anything else runs. Those four slots then go through the same clamp of value times scale plus bias as the RGBA routine, with the RGB scales and biases from unit +0xb0 to +0xc8 and the alpha pair from +0xbc and +0xcc. The results multiply a1+0, a1+4, a1+8 and a1+0xc.

- `__glTextureSBDecalRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82a40
  **Inferred.** Forms the three texel values exactly as the RGB modulate does, clamping each a2+0, a2+4 and a2+8 against the unit scales and biases. Each a1 RGB float is then replaced by a context float times the texel. The floats are at context +0x9a08, +0x9a0c and +0x9a10, which is the ctx+0x10000 base loaded from the stack with the displacements -0x65f8, -0x65f4 and -0x65f0. The alpha slot a1+0xc is not written.

- `__glTextureSBDecalRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82b60
  **Inferred.** Clamps the RGB texels as the RGB routines do and the alpha texel at a2+0x10 from unit +0xbc and +0xcc. It then mixes each RGB channel with the context float at +0x9a08, +0x9a0c or +0x9a10: the new a1 value is a1 times (1 minus the clamped alpha), plus that context float times the texel times the clamped alpha. The alpha slot a1+0xc is left unchanged.

- `__glTextureSBBlendL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82cd0
  **Inferred.** Takes a luminance from a2+0xc and copies it into a2+0, a2+4 and a2+8. Each of the three is then clamped against the unit scale and bias as in the RGB modulate. The blend colour comes from the pointer at context +0xac0, advanced by 4 bytes, and its floats at +0, +4 and +8 are the per-channel colour. Each a1 RGB float becomes a1 times (1 minus the texel) plus the blend colour times the texel. The alpha slot is not written.

- `__glTextureSBBlendLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82e20
  **Inferred.** Blends RGB the way the luminance blend does, with the luminance copied from a2+0xc into a2+0, a2+4 and a2+8 and the blend colour at the context +0xac0 pointer plus 4. For alpha it does not blend. The clamped alpha texel from a2+0x10 multiplies a1+0xc directly.

- `__glTextureSBBlendRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e82fa0
  **Inferred.** Clamps the three RGB texels at a2+0, a2+4 and a2+8 from the unit scales and biases, then blends each a1 RGB float with the blend colour. The blend colour is read from the floats at 4, 8 and 0xc bytes past the pointer held at context +0xac0. The mix is a1 times (1 minus texel) plus colour times texel. The alpha slot is untouched.

- `__glTextureSBBlendRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e830e0
  **Inferred.** Blends the RGB channels against the colour from the context +0xac0 pointer exactly as the RGB blend does. The alpha texel at a2+0x10 is clamped from unit +0xbc and +0xcc, and a1+0xc is multiplied by it, so the alpha is modulated rather than blended.

- `__glTextureSBBlendA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e83260
  **Inferred.** Same instruction sequence as `__glTextureSBModulateA` at 0x2e82870; the two differ only in the gp displacement in the prologue. It clamps a2+0x10 from unit +0xbc and +0xcc and multiplies a1+0xc by the result.

- `__glTextureSBBlendI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e832e0
  **Inferred.** Starts from the intensity at a2+0x14, copied into a2+0, a2+4, a2+8 and a2+0x10. RGB and alpha are clamped against the unit scales and biases. Each RGB channel of a1 is then blended with the context +0xac0 colour at offsets 4, 8 and 0xc from its pointer. The alpha channel blends a1+0xc with the fourth float at +0xc from that pointer, weighted by the clamped alpha.

- `__glTextureSBReplaceL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e83470
  **Inferred.** Copies the luminance at a2+0xc into a2+0, a2+4 and a2+8, then clamps each against the unit scale and bias. Each a1 RGB float is set to the context float at +0x9a08, +0x9a0c or +0x9a10 times the clamped texel. Unlike the RGB routine, the context floats replace the fragment colour outright. The alpha slot is not written.

- `__glTextureSBReplaceLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e83590
  **Inferred.** Works like the luminance replace on RGB, with the luminance from a2+0xc. The alpha texel at a2+0x10 is taken as it stands, clamped from unit +0xbc and +0xcc, and a1+0xc becomes the context float at +0x9a30 times that clamped alpha.

- `__glTextureSBReplaceRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e836f0
  **Inferred.** Same instruction sequence as `__glTextureSBDecalRGB` at 0x2e82a40. It clamps the RGB texels from unit scales and biases, sets each a1 RGB float to a context float at +0x9a08, +0x9a0c or +0x9a10 times the texel, and leaves a1+0xc alone.

- `__glTextureSBReplaceRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e83810
  **Inferred.** Clamps the RGB texels and the alpha texel at a2+0x10 from unit +0xbc and +0xcc. Each a1 RGB float is set to a context float (+0x9a08, +0x9a0c, +0x9a10) times its texel, and a1+0xc is set to the context float at +0x9a30 times the clamped alpha.

- `__glTextureSBReplaceA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e83960
  **Inferred.** Replaces only the alpha. It clamps the texel at a2+0x10 from unit +0xbc and +0xcc and stores the result back to a2+0x10. The float at context +0x9a30 times that value becomes a1+0xc. The RGB slots of a1 and a2 are not accessed.

- `__glTextureSBReplaceI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e839e0
  **Inferred.** Starts from the intensity at a2+0x14, copied into a2+0, a2+4, a2+8 and a2+0x10. RGB and alpha are then clamped against the unit scales and biases. Each a1 RGB float is set to a context float at +0x9a08, +0x9a0c or +0x9a10 times the clamped texel, and a1+0xc is set to the context float at +0x9a30 times the clamped alpha.
