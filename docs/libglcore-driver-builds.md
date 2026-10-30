# libGLcore: the Kona driver in the O32 and 64-bit builds

The Kona driver routines of [libglcore-driver-functions.md](libglcore-driver-functions.md) and [libglcore-functions.md](libglcore-functions.md) were read in the N32 build of the 6.5.30m `libGLcore.so`. The same routines exist in the O32 build (`usr/gfx/arch/IP27KONA/libGLcore.so`) and the 64-bit build (`usr/gfx/arch/IP27KONA64/libGLcore.so`); the IP35 builds under `usr/gfx/arch/IP35KONA` and `usr/gfx/arch/IP35KONA64` carry byte-identical code for every function (the function code hashes of the inventory agree for all 4868 and 4907 routines), so each entry here covers both. Each build is a separate compile, so a routine's bytes differ even when it does the same thing: the O32 compiler schedules and allocates differently and keeps arguments past the fourth on the stack, and the 64-bit build has 8-byte pointers, so structure offsets in the context are different.

## Routines that match the N32 routine

Each build has two tables. The first names each routine with its address and size in this build, its address and source file in the N32 build, and the role copied from the N32 entry. The second gives what was compared for the same routine: the ordered callees, the FIFO store count and up to six of the constants. Every row is **Inferred**: the comparison was made by a script over the disassembly of each build (`objdump -d`, with a call through a register named from the global-offset-table slot loaded into it, a direct or pc-relative call named from its target address, and a call whose register was loaded before a branch target in the same routine, for example in a delay slot of another block, listed as indirect), not by reading the routine whole. For each row the script found, in this build and in N32, the same ordered list of callees (`indirect` is a call through a pointer loaded from memory, `none` a routine that calls nothing), the same number of stores to the command FIFO page at process address 0x4000, and the same set of immediate constants of 16 or more outside the process-page words 4096 to 4200. That shows the same calls, tokens and stores modulo ABI. It does not show that every branch and every context offset is the same, so the role is only as good as that match. Offsets in the N32 role are handled per build. The 64-bit build has 8-byte pointers, so its context and process-page offsets differ: each offset the role quotes is replaced by the offset found at the same place in the two aligned instruction streams (the process-page words 4112, 4120, 4136, 4140, 4144 and 4148 are at 4128, 4144, 4168, 4176, 4184 and 4192 in every aligned access of 600 or more), and a sentence whose offsets cannot be matched is dropped with everything after it. In the O32 build the layout is that of N32, so an offset is kept only when the build's code uses the same value (the process-page words are the exception: the O32 code reaches them through a register holding 4136, so they are kept as N32 has them); dispatch-table and other offsets of that kind are not carried over. A routine whose role could not be carried over is not listed here.

### O32 build (`usr/gfx/arch/IP27KONA/libGLcore.so`)

| Routine | Binary | Address | Size | N32 address | Source file | Role (from the N32 entry) | Label |
|---|---|---|---|---|---|---|---|
| `__glKonDefaultState` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94f000` | 580 | `0xd950e70` | `kon_pixel.c` | Sets chosen pixel-storage parameters to their defaults with `__glkonim_PixelStorei`. | Inferred |
| `__glKonEvalCoord1DGe11` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd980d2c` | 24 | `0xd97d740` | `kon_eval.c` | The geometry-engine glEvalCoord1: it writes the token 157, the count 1 and the float coordinate to the command port. | Inferred |
| `__glKonEvalCoord2DGe11` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd980d44` | 28 | `0xd97d760` | `kon_eval.c` | The geometry-engine glEvalCoord2: it writes the token 161, the count 2 and the two float coordinates. | Inferred |
| `__glKonEvalMesh1DGe11` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd980d60` | 204 | `0xd97d780` | `kon_eval.c` | Sends a glEvalMesh1 to the geometry engine as `HP_EVALSTRIP1D` (token 38) records. The mode (0x1b00 points or 0x1b01 lines) goes in as the mode minus 0x1b00, then the first index and a run length. Points go in chunks of 6 stepping by 6; lines in chunks of 6 stepping by 5 so successive chunks share an end vertex. | Inferred |
| `__glKonEvalMesh2DGe11` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd980e2c` | 604 | `0xd97d870` | `kon_eval.c` | The glEvalMesh2 sender, writing `HP_EVALSTRIP2D` (token 39) records of the form mode minus 0x1b00, a flag word (0x10 to 0x13), the first u index, a u count, the first v index and a v count. It tiles the grid in u chunks of 6 (5 steps apart for lines) and v chunks of 50 (49 apart for lines). | Inferred |
| `__glKonGetTexParams` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6bb40` | 980 | `0xda76c20` | `kon_texture_attrib.c` | The inverse of `__glKonSetTexParams`: it fills the 160-byte record with the same 27 `__glKonGetTexParameter` calls, same parameter names, offsets and vector flags, reading the values back from the texture object. | Inferred |
| `__glKonInitConvolutionState` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9554a0` | 284 | `0xd9571d0` | `kon_convolve.c` | Sets the context's convolution defaults. | Inferred |
| `__glKonInitializeEnables` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94c124` | 200 | `0xd94de90` | `kon_modes.c` | Builds the table that `__glkonim_xEnable` uses. It walks 186 pairs of halfwords in the library's data (0x25c8 to 0x28b0 from the data page), each a pipe code and an extended enum, and stores the pair in an 8-byte slot of the uninitialised table at index (enum & 0xff) plus (enum >> 7). | Inferred |
| `__glKonParseHostImage` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94e848` | 564 | `0xd950700` | `kon_pixel.c` | Fills in the host-side layout of a request record from the pixel-storage settings in force. | Inferred |
| `__glKonSetPixelLEModes` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94f498` | 104 | `0xd9511c0` | `kon_pixel.c` | Puts the pipe into the mode that the compiled-list pixel paths need. It calls `__glKonPushState` with 0xc and the caller's save area, then `__glKonDefaultState` with 0xc, and finally `__glkonim_PixelStorei` with 0xcf5 (GL_UNPACK_ALIGNMENT) and 1. | Inferred |
| `__glKonUnsetLEModes` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94f500` | 52 | `0xd951220` | `kon_pixel.c` | Restores the state saved by `__glKonSetPixelLEModes` by calling `__glKonPopState` with the save area it was given. | Inferred |
| `__glkonAdjustPlist` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94908c` | 136 | `0xd94b1a0` | `kon_dlist.c` | Rebases a page list. | Inferred |
| `__glkonCompressPlist` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9480f0` | 184 | `0xd94a380` | `kon_dlist.c` | Merges adjacent entries of a list record's block table. | Inferred |
| `__glkonDlistOptimizer` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94a0f8` | 12 | `0xd94c110` | `kon_dlist.c` | An empty function: it returns immediately, so the Kona display-list path applies no optimisation. | Inferred |
| `__glkonHostCopy` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd951c28` | 204 | `0xd953550` | `kon_pixel.c` | Copies rows from the pipe's read-back buffer into host memory. | Inferred |
| `__glkonPadBlocks` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94a104` | 140 | `0xd94c120` | `kon_dlist.c` | Fills the unused tail of every block of a finished list that has a successor with skip tokens, so the player steps over it. | Inferred |
| `__glkonSPBfree` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd949e28` | 132 | `0xd94bea0` | `kon_dlist.c` | Frees a display-list block. | Inferred |
| `__glkonSPValidateDlist` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94b2b4` | 84 | `0xd94d150` | `kon_dlist.c` | Calls `__glkonSPValidateOnlyDlist` and then the function pointer at offset 8 of its second argument, passing both of its own arguments through. | Inferred |
| `__glkonSendPackedVertexV3F` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c380` | 76 | `0xda77330` | `kon_spvertarray.s` | Sends one vertex per pass with token 0x1ab: an 8-byte store of x and y (read as an unaligned pair) and a word store of z. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c3cc` | 104 | `0xda7737c` | `kon_spvertarray.s` | Token 0x1ac, then x and y as one 8-byte store and z joined with the colour (four unsigned bytes read as one word) in a second 8-byte store, z in the upper word. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_N3S` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c4b4` | 164 | `0xda77470` | `kon_spvertarray.s` | Token 0x1ae with x and y as one 8-byte store, z and the colour word as a second, and the packed normal (first normal word with its low bit replaced by the top bit of the second) as a single word. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2F` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c6fc` | 200 | `0xda776d0` | `kon_spvertarray.s` | Token 0x1b2 and eight words in all: x and y, then z with the colour, then the packed normal as one word, then the two texture floats as the last 8-byte store. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2S` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c958` | 192 | `0xda77944` | `kon_spvertarray.s` | Token 0x1b6, x and y, then z with the colour word, then a last 8-byte store whose upper word is the packed normal and whose lower word is the texture word. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_T2F` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c5c8` | 144 | `0xda77590` | `kon_spvertarray.s` | Token 0x1b0, x and y, then z with the colour word as a second 8-byte store, and the two texture floats as a third 8-byte store read as one unaligned pair. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_T2S` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c82c` | 140 | `0xda7780c` | `kon_spvertarray.s` | Token 0x1b4, x and y, then z with the colour word as a second 8-byte store, and the one-word texture coordinate as a trailing word store. | Inferred |
| `__glkonSendPackedVertexV3F_N3S` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c434` | 128 | `0xda773ec` | `kon_spvertarray.s` | Token 0x1ad, x and y in one 8-byte store, then z in the upper word of a second store whose lower word is the packed normal. The normal word is the first word of the three shorts with its lowest bit replaced by the top bit of the second word. | Inferred |
| `__glkonSendPackedVertexV3F_N3S_T2F` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c658` | 164 | `0xda77628` | `kon_spvertarray.s` | Token 0x1b1, x and y, then z with the packed normal word, then the two texture floats as one 8-byte store; the normal packs the first word of its shorts with the top bit of the second in the low bit. | Inferred |
| `__glkonSendPackedVertexV3F_N3S_T2S` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c8b8` | 160 | `0xda778a0` | `kon_spvertarray.s` | Token 0x1b5, x and y, then z with the packed normal word, then the texture word as a single trailing store. | Inferred |
| `__glkonSendPackedVertexV3F_T2F` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c558` | 112 | `0xda77518` | `kon_spvertarray.s` | Token 0x1af, x and y as one 8-byte store, then z in the upper word and the first texture float in the lower word of the second store, and the second float as a single word. | Inferred |
| `__glkonSendPackedVertexV3F_T2S` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c7c4` | 104 | `0xda7779c` | `kon_spvertarray.s` | Token 0x1b3, x and y as one 8-byte store, then z in the upper word and the texture word (the two shorts of the coordinate read as one unsigned word) in the lower word of a second store. | Inferred |
| `__glkonSwapOutList` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd949b88` | 364 | `0xd94bbb0` | `kon_dlist.c` | Copies the chain of 0x400-byte blocks that a list is being compiled into out of locked memory. | Inferred |
| `__glkon_BindHyperpipe` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98b8e4` | 116 | `0xd987620` | `kon_hyperpipe.c` | Binds a hyperpipe through the driver. | Inferred |
| `__glkon_InitDlistState` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94a334` | 228 | `0xd94c3a0` | `kon_dlist.c` | Fills the display-list manager's slots in the context. | Inferred |
| `__glkon__HyperpipeRect` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98b8d0` | 20 | `0xd987610` | `kon_hyperpipe.c` | Returns 0 without effect, so setting a hyperpipe rectangle through this entry does nothing. | Inferred |
| `__glkon__QueryHyperpipeBestRect` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98b890` | 24 | `0xd9875e0` | `kon_hyperpipe.c` | Returns 0 and does nothing else, so a best-rectangle query never reports a rectangle. | Inferred |
| `__glkon__QueryHyperpipeLimit` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98b8bc` | 20 | `0xd987600` | `kon_hyperpipe.c` | Returns 0 and nothing else; the limit query reports 0. | Inferred |
| `__glkon__QueryHyperpipeRect` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98b8a8` | 20 | `0xd9875f0` | `kon_hyperpipe.c` | Returns 0 and nothing else; the rectangle query reports no rectangle. | Inferred |
| `__glkon_datavn` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c354` | 40 | `0xda77304` | `kon_sdlist.s` | Sends a counted run of words from a pointer to the command port: if the pointer has bit 2 set it sends one word alone to restore 8-byte alignment, then 8-byte units while two or more words remain, then a trailing single word. | Inferred |
| `__glkon_dlerror` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94a8a4` | 140 | `0xd94c7f0` | `kon_dlist.c` | Records a GL error in a display list. It appends token 0xe4 and the error code to the list buffer: if the remaining-space word at process address 0x1028 is below 2 it first calls `__glSPDlistSpace` with 0, then it writes the two words at the list pointer (0x1030), advances the pointer by 8, reduces the remaining count by 2 and raises the word count at 0x1034 by 2. | Inferred |
| `__glkon_dlist_mem_alloc` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bbcc` | 72 | `0xd94d960` | `kon_mem.c` | Allocates display-list memory by calling `__glkon_mem_alloc` with the first field 1, zero for the next three fields and the caller's size in the fourth. | Inferred |
| `__glkon_dlist_mem_free` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bc5c` | 60 | `0xd94da00` | `kon_mem.c` | Frees display-list memory through `__glkon_mem_free` with the first field 1 and a zero second field. | Inferred |
| `__glkon_dlist_mem_realloc` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bc14` | 72 | `0xd94d9b0` | `kon_mem.c` | Resizes display-list memory through `__glkon_mem_realloc` with the first field 1, zeros in the middle and the caller's size in the fourth word. | Inferred |
| `__glkon_get_special` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956ec4` | 76 | `0xd958a00` | `kon_get.c` | The one-argument query: it stores its first argument (the request token) and its second argument to the command port, calls `__glkona_wait_rdata`, and returns the reply address, the return-data pointer plus 8. | Inferred |
| `__glkon_get_special2` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956f10` | 80 | `0xd958a50` | `kon_get.c` | Same sequence as the one-argument query with a third word: three stores to the command port, then a call to `__glkona_wait_rdata` and a return of the reply address at the return-data pointer plus 8. The buffer pointer is loaded from `ctx` again after the wait, so the reply address is the one in force when the wait ends. | Inferred |
| `__glkon_get_special3` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956f60` | 84 | `0xd958aa0` | `kon_get.c` | The same request, wait and reply sequence with four words sent to the command port, and the reply address returned as the return-data pointer plus 8. The four words are its four register arguments, stored in order. | Inferred |
| `__glkon_get_special4` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956fb4` | 92 | `0xd958b00` | `kon_get.c` | The same request, wait and reply sequence with five words sent to the command port (the largest request any of the helpers sends), then a call to `__glkona_wait_rdata` and a return of the return-data pointer plus 8. | Inferred |
| `__glkon_mem_free` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bb50` | 124 | `0xd94d8e0` | `kon_mem.c` | Frees driver memory. | Inferred |
| `__glkon_mem_realloc` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bad8` | 120 | `0xd94d880` | `kon_mem.c` | The resize form of `__glkon_mem_alloc`: the same 12-byte block (byte, byte, halfword, word, word) goes to `__glKon_ioctl` with request 0x271e, and the result is mapped to 0 for success and -1 for failure. | Inferred |
| `__glkon_packPixelRow` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98bba0` | 1732 | `0xd987bd0` | `kon_pix_util.c` | Packs a row of pixels held as integers into one of the packed pixel types. The arguments are the source integer array, the destination, the packed type and the pixel count; a count of 0 or less, or a type other than the four below, does nothing (the 8_8_8_8 type 0x8035 is not handled). | Inferred |
| `__glkon_texture_mem_alloc` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bc98` | 72 | `0xd94da40` | `kon_mem.c` | Allocates texture memory by calling `__glkon_mem_alloc` with the first field 3, zeros in the middle and the caller's size in the fourth word. | Inferred |
| `__glkon_texture_mem_realloc` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94bce0` | 72 | `0xd94da90` | `kon_mem.c` | Resizes texture memory through `__glkon_mem_realloc` with the first field 3 and the caller's size in the fourth word. | Inferred |
| `__glkonim_Accum` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c664` | 24 | `0xda66710` | `kon_cfuncs.c` | glAccum: token 0xc5, the operation name and the value as a float word. | Inferred |
| `__glkonim_BlendColorEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cce4` | 44 | `0xda66df0` | `kon_cfuncs.c` | glBlendColorEXT: token 0xe6 and the four floats red, green, blue, alpha, unclamped on the host. | Inferred |
| `__glkonim_BlendEquationEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd10` | 16 | `0xda66e10` | `kon_cfuncs.c` | glBlendEquationEXT: token 0xe7 and the mode word. | Inferred |
| `__glkonim_Clear` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94d958` | 16 | `0xd94f880` | `kon_modes.c` | The immediate-mode glClear: a token word of 0x1a followed by the buffer mask unchanged. The function checks nothing, so an invalid mask is the pipe's concern. | Inferred |
| `__glkonim_ClearIndex` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c5d0` | 16 | `0xda666a0` | `kon_cfuncs.c` | glClearIndex: token 0x1c and the index as a float word. | Inferred |
| `__glkonim_ClearStencil` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c5e0` | 16 | `0xda666b0` | `kon_cfuncs.c` | glClearStencil sends the stencil clear value as token 0x1e followed by the integer, two stores, with no masking to the stencil depth on the host. | Inferred |
| `__glkonim_ClipPlane` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5bd44` | 88 | `0xda65d50` | `kon_cfuncs.c` | glClipPlane. The plane name must be 0x3000 to 0x3005, else token 0xe4 with the code 0x500. Otherwise it sends token 0xb4, the plane name and the four doubles of the equation in the order they sit in the array. | Inferred |
| `__glkonim_Color3b` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b040` | 72 | `0xda65180` | `kon_cfuncs.c` | The immediate-mode glColor3b. It builds two words from its register arguments and stores them to the command port: the first component shifted to bits 31 to 24, the second masked to a byte at bits 23 to 16 and the token 0x61 in the low byte, then the third component in the top byte. | Inferred |
| `__glkonim_Color3bv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b088` | 44 | `0xda651b0` | `kon_cfuncs.c` | The immediate-mode glColor3bv, two stores to the command port with no branch and no room check. The first word carries the token 0x61 in its low byte, the first component (a signed byte) in bits 31 to 24 and the second in bits 23 to 16; the second word carries the third component in its top byte and nothing else. | Inferred |
| `__glkonim_Color3dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f5e8` | 24 | `0xda794a8` | `kon_sfuncs.s` | Sends the three doubles of a glColor3dv vector as token 0x62 followed by three 8-byte stores, each of which writes one double (two command words) to the port. | Inferred |
| `__glkonim_Color3fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f600` | 20 | `0xda794c0` | `kon_sfuncs.s` | Sends the three floats of a glColor3fv vector with token 0x63: one word for the token, one 8-byte store of the first two floats and one word for the third. | Inferred |
| `__glkonim_Color3iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f614` | 20 | `0xda794d4` | `kon_sfuncs.s` | Sends a glColor3iv vector, three signed integers, under token 0x64. | Inferred |
| `__glkonim_Color3s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b108` | 72 | `0xda65240` | `kon_cfuncs.c` | The immediate-mode glColor3s, two stores to the command port: the first short in the upper half with the token 0x65, then the second short in the upper half over the third masked to 16 bits. The mask stops a negative third value from changing the upper half. | Inferred |
| `__glkonim_Color3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b150` | 40 | `0xda65260` | `kon_cfuncs.c` | The immediate-mode glColor3sv, two stores to the command port. The first word is the first short in its upper half and the token 0x65 in its low byte; the second word packs the second short in its upper half and the third, zero-extended, in its lower half. | Inferred |
| `__glkonim_Color3ubv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b1a8` | 44 | `0xda652b0` | `kon_cfuncs.c` | The immediate-mode glColor3ubv, two stores to the command port with the same word layout as the signed-byte form but the token 0x66: the first component in bits 31 to 24 and the second in bits 23 to 16 of the first word, the third in the top byte of the second. | Inferred |
| `__glkonim_Color3ui` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b1d4` | 24 | `0xda652e0` | `kon_cfuncs.c` | The immediate-mode glColor3ui, four stores to the command port: the token 103 (0x67) and the three unsigned integer arguments, passed through unchanged. Apart from the token it is the same sequence as `__glkonim_Color3i`. | Inferred |
| `__glkonim_Color3uiv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f628` | 20 | `0xda794e8` | `kon_sfuncs.s` | Sends a glColor3uiv vector (three unsigned integers) under token 0x67, as a token word, a doubleword holding the first two values and a word holding the third. | Inferred |
| `__glkonim_Color3usv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b218` | 40 | `0xda65320` | `kon_cfuncs.c` | The immediate-mode glColor3usv, two stores to the command port: the first short and the token 0x68 in the first word, the second short in the upper half and the third in the lower half of the second word. | Inferred |
| `__glkonim_Color4b` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b240` | 96 | `0xda65350` | `kon_cfuncs.c` | The immediate-mode glColor4b, two stores to the command port. Word one is the first argument at bits 31 to 24, the second masked to a byte at bits 23 to 16 and the token 0x69; word two is the third argument at bits 31 to 24 and the fourth, masked to a byte, at bits 23 to 16. | Inferred |
| `__glkonim_Color4bv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b2a0` | 56 | `0xda65380` | `kon_cfuncs.c` | The immediate-mode glColor4bv, two stores to the command port. The first word is the first component in bits 31 to 24, the second in bits 23 to 16 and the token 0x69 in the low byte; the second word is the third component in bits 31 to 24 and the fourth in bits 23 to 16, with the low half zero. | Inferred |
| `__glkonim_Color4dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f63c` | 32 | `0xda794fc` | `kon_sfuncs.s` | Sends the four doubles of a glColor4dv vector under token 0x6a. | Inferred |
| `__glkonim_Color4fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f65c` | 24 | `0xda7951c` | `kon_sfuncs.s` | Sends a glColor4fv vector (four floats) under token 0x6b as the token word and two doubleword stores. | Inferred |
| `__glkonim_Color4iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f674` | 24 | `0xda79534` | `kon_sfuncs.s` | Sends a glColor4iv vector, four signed integers, under token 0x6c. | Inferred |
| `__glkonim_Color4s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b344` | 92 | `0xda65420` | `kon_cfuncs.c` | The immediate-mode glColor4s, three stores to the command port: the first short in the upper half with the token 0x6d, the second short in the upper half over the third masked to 16 bits, and the fourth short in the upper half alone. | Inferred |
| `__glkonim_Color4sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b3a0` | 52 | `0xda65450` | `kon_cfuncs.c` | The immediate-mode glColor4sv, three stores to the command port, the longest of the colour vector senders. Word one holds the first short in its upper half and the token 0x6d in its low byte; word two the second short in its upper half and the third in its lower half; word three the fourth short in its upper half with a zero lower half. | Inferred |
| `__glkonim_Color4ubv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b414` | 56 | `0xda654c0` | `kon_cfuncs.c` | The immediate-mode glColor4ubv, two stores to the command port with the token 0x6e: the first and second components in bits 31 to 24 and 23 to 16 of the first word beside the token, the third and fourth in the same two positions of the second word. | Inferred |
| `__glkonim_Color4ui` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b44c` | 28 | `0xda65500` | `kon_cfuncs.c` | The immediate-mode glColor4ui, five stores to the command port: the token 111 (0x6f) followed by the four unsigned integer arguments unchanged, the same shape as `__glkonim_Color4i`. | Inferred |
| `__glkonim_Color4usv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b4a0` | 52 | `0xda65550` | `kon_cfuncs.c` | The immediate-mode glColor4usv, three stores to the command port with the token 0x70: word one is the first short and the token, word two the second short over the third, word three the fourth short in its upper half. | Inferred |
| `__glkonim_ColorMaterial` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5bd9c` | 20 | `0xda65db0` | `kon_cfuncs.c` | glColorMaterial: token 0xb5, then the face and the mode as two words, with no check on either value. | Inferred |
| `__glkonim_ColorTableParameterfvSGI` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cdb0` | 52 | `0xda66ee0` | `kon_cfuncs.c` | glColorTableParameterfvSGI sends token 0xeb, the target, the name and four floats from the array in order. | Inferred |
| `__glkonim_ColorTableParameterivSGI` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cde4` | 100 | `0xda66f20` | `kon_cfuncs.c` | glColorTableParameterivSGI converts all four integers of the array to floats and sends them under token 0xeb after the target and the name. | Inferred |
| `__glkonim_ConvolutionParameterfEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956728` | 60 | `0xd9582f0` | `kon_convolve.c` | Forwards to `__glkonim_PixelTransformParameterfSGI` and returns, so the single-float convolution parameter takes the pixel-transform path. | Inferred |
| `__glkonim_ConvolutionParameterfvEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956764` | 52 | `0xd958330` | `kon_convolve.c` | Forwards to `__glkonim_PixelTransformParameterfvSGI`; the float-array convolution parameter is handled there. | Inferred |
| `__glkonim_ConvolutionParameteriEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9566c0` | 52 | `0xd958270` | `kon_convolve.c` | Not a separate routine: it calls `__glkonim_PixelTransformParameteriSGI` through a library entry and returns. In this build the convolution-parameter entry shares its body with the pixel-transform parameter setter of the same argument shape. | Inferred |
| `__glkonim_ConvolutionParameterivEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9566f4` | 52 | `0xd9582b0` | `kon_convolve.c` | Calls `__glkonim_PixelTransformParameterivSGI` with its own arguments untouched and returns, sharing that function's checks and sends for the array form of the convolution parameter. | Inferred |
| `__glkonim_CopyTexImage1DEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd97237c` | 116 | `0xd971580` | `kon_texture_api.c` | glCopyTexImage1DEXT. Only target 0xde0 is accepted (anything else gives `__glSetError` 0x500); the call goes to `__glkonim_CopyTexImage` with the constant 1 loaded into one argument register that the one-dimensional signature does not supply. | Inferred |
| `__glkonim_CopyTexSubImage1DEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd973628` | 128 | `0xd972720` | `kon_texture_api.c` | glCopyTexSubImage1DEXT. Target 0xde0 only, else 0x500; it calls `__glkonim_CopyTexSubImage` with zero in two argument registers and the constant 1 in a stack word. | Inferred |
| `__glkonim_CullFace` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5bdb0` | 64 | `0xda65dd0` | `kon_cfuncs.c` | glCullFace. Modes 0x404 (front), 0x405 (back) and 0x408 (front and back) go out under token 0xb6; any other mode sends token 0xe4 with the code 0x500. | Inferred |
| `__glkonim_DeformSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98cb3c` | 84 | `0xd988990` | `kon_deform.c` | glDeformSGIX. A mask with any bit set above bit 1 (mask and -4 non-zero) calls `__glSetError` with 0x501 and sends nothing; otherwise it sends token 0x1bf followed by the mask as two words. | Inferred |
| `__glkonim_DepthRange` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c8b0` | 20 | `0xda669a0` | `kon_cfuncs.c` | glDepthRange: token 0xcf and the near and far doubles in two 8-byte stores. | Inferred |
| `__glkonim_DrawBuffer` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c5c0` | 16 | `0xda66690` | `kon_cfuncs.c` | glDrawBuffer: token 0xc4 and the buffer name, unchecked. | Inferred |
| `__glkonim_End` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94be38` | 20 | `0xd94dbf0` | `kon_modes.c` | The immediate-mode glEnd: it clears the begin flag at process address 0x1018, then sends token 0x71 and a zero pad word to the command port. It checks nothing, so an End without a Begin is passed to the pipe unchanged. | Inferred |
| `__glkonim_Flush` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94beb0` | 24 | `0xd94dc70` | `kon_modes.c` | The immediate-mode glFlush. | Inferred |
| `__glkonim_FlushRasterSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cf84` | 16 | `0xda670a0` | `kon_cfuncs.c` | glFlushRasterSGIX sends the raster flush as token 0x1cc followed by one zero word, two stores, and does not wait for the pipe. | Inferred |
| `__glkonim_Fogi` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5be9c` | 72 | `0xda65ee0` | `kon_cfuncs.c` | glFogi. Names 0xb61 to 0xb65 are accepted (0x500 through token 0xe4 otherwise); it sends token 0xb8, the name, the integer and three zero words, and no conversion to float happens here. | Inferred |
| `__glkonim_Frustum` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c8c4` | 52 | `0xda669c0` | `kon_cfuncs.c` | glFrustum: token 0xd1 followed by six doubles (left, right, bottom, top, near, far) in six 8-byte stores, with no check on their values. | Inferred |
| `__glkonim_GetConvolutionParameterfvEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9567cc` | 52 | `0xd9583b0` | `kon_convolve.c` | Forwards to `__glkonim_GetPixelTransformParameterfvSGI`, so the float convolution-parameter query is answered by the pixel-transform one. | Inferred |
| `__glkonim_GetConvolutionParameterivEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd956798` | 52 | `0xd958370` | `kon_convolve.c` | Forwards to `__glkonim_GetPixelTransformParameterivSGI`, so reading an integer convolution parameter is the pixel-transform query. | Inferred |
| `__glkonim_GetTexLevelParameterfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd975408` | 80 | `0xd974510` | `kon_texture_api.c` | glGetTexLevelParameterfv. It calls `__glkonim_GetTexLevelParameteriv` with its own arguments, keeps the output pointer in a saved register, and afterwards converts the integer that call stored into a float in the same place. | Inferred |
| `__glkonim_IndexMask` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c654` | 16 | `0xda66700` | `kon_cfuncs.c` | glIndexMask sends the colour-index write mask as token 0x23 followed by the mask word, two stores, with no narrowing on the host. | Inferred |
| `__glkonim_Indexd` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b4ec` | 16 | `0xda655a0` | `kon_cfuncs.c` | The immediate-mode glIndexd, two stores to the command port: the token 114 (0x72) as a word and the double-precision index from `f12` as a single 64-bit store. | Inferred |
| `__glkonim_Indexdv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f6b4` | 16 | `0xda79574` | `kon_sfuncs.s` | Sends one double for glIndexdv with token 0x72: the token word and one 8-byte store. | Inferred |
| `__glkonim_Indexf` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b4fc` | 16 | `0xda655b0` | `kon_cfuncs.c` | The immediate-mode glIndexf, two stores to the command port: the token 115 (0x73) and the single-precision index from `f12` as a 32-bit float. | Inferred |
| `__glkonim_Indexfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f6c4` | 16 | `0xda79584` | `kon_sfuncs.s` | Sends the single float of a glIndexfv vector under token 0x73. | Inferred |
| `__glkonim_Indexi` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b50c` | 16 | `0xda655c0` | `kon_cfuncs.c` | The immediate-mode glIndexi, two word stores to the command port: the token 116 (0x74) and the integer index from `a0` unchanged. | Inferred |
| `__glkonim_Indexiv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f6d4` | 16 | `0xda79594` | `kon_sfuncs.s` | Sends the single integer of a glIndexiv vector under token 0x74, a token word and one data word. | Inferred |
| `__glkonim_Indexs` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b51c` | 32 | `0xda655d0` | `kon_cfuncs.c` | The immediate-mode glIndexs: the token 117 (0x75) is stored to the command port, then the short argument moved into the upper half of a word (a left shift by 16) is stored as the payload. | Inferred |
| `__glkonim_Indexub` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd68` | 24 | `0xda66e80` | `kon_cfuncs.c` | The immediate-mode glIndexub: it stores the token 117 (0x75) to the command port, the same token the short forms use, and then the byte argument shifted left by 24 into the top byte of the payload word, where the short forms put their value in the upper 16 bits. | Inferred |
| `__glkonim_InitNames` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c570` | 16 | `0xda66640` | `kon_cfuncs.c` | glInitNames sends the name-stack reset as token 0x10c followed by one zero word, two stores in all, and reads none of its argument registers. | Inferred |
| `__glkonim_LightModelfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c108` | 48 | `0xda66190` | `kon_cfuncs.c` | glLightModelfv sends token 9, the name and four floats from the array. The name is not checked here. | Inferred |
| `__glkonim_LightModeliv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c180` | 48 | `0xda66210` | `kon_cfuncs.c` | glLightModeliv sends token 0xa, the name and four integers from the array, with no check. | Inferred |
| `__glkonim_Lightfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c008` | 52 | `0xda66070` | `kon_cfuncs.c` | glLightfv sends token 7, the light name, the parameter name and four floats from the array, with no validation of the name; the pipe sees the array whatever its length. | Inferred |
| `__glkonim_Lightiv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c088` | 52 | `0xda66100` | `kon_cfuncs.c` | glLightiv sends token 8, the light, the parameter name and four integers from the array without a range check on the name. | Inferred |
| `__glkonim_ListParameterfSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9492cc` | 60 | `0xd94b3b0` | `kon_dlist.c` | Wraps a single float in a one-element array and forwards to `__glkonim_ListParameterfvSGIX`. | Inferred |
| `__glkonim_LoadIdentity` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c8f8` | 16 | `0xda669f0` | `kon_cfuncs.c` | glLoadIdentity sends the matrix reset as token 0xd2 followed by one zero pad word, two stores, and consults no matrix state on the host. | Inferred |
| `__glkonim_LoadIdentityDeformationMapSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98cc3c` | 20 | `0xd988aa0` | `kon_deform.c` | glLoadIdentityDeformationMapSGIX: it sends token 0x1c3 and the mask reduced to its low two bits. It never reports an error for the discarded bits. | Inferred |
| `__glkonim_LoadMatrixd` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c994` | 140 | `0xda66a90` | `kon_cfuncs.c` | glLoadMatrixd: token 0xd4 and sixteen doubles, each in one 8-byte store, in memory order. | Inferred |
| `__glkonim_LoadMatrixf` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c908` | 140 | `0xda66a00` | `kon_cfuncs.c` | glLoadMatrixf: token 0xd3 and the sixteen floats of the matrix, copied as they lie in memory, element 0 first. | Inferred |
| `__glkonim_LoadName` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c580` | 16 | `0xda66650` | `kon_cfuncs.c` | glLoadName sends the selection-name replacement as token 0x10d followed by the name word, two stores with no range or begin-flag check. | Inferred |
| `__glkonim_Materialfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c214` | 52 | `0xda662a0` | `kon_cfuncs.c` | glMaterialfv sends token 0x97, the face, the name and four floats in array order. Unlike the scalar forms it does not check the name. | Inferred |
| `__glkonim_Materiali` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd988020` | 112 | `0xd9844e0` | `kon_materiali.c` | glMateriali. Only the name 0x1601 (shininess) is accepted, otherwise 0x500 goes to `__glSetError`. The integer is converted to a float and sent under token 0x97 after the face and the name, followed by three zero pad words. | Inferred |
| `__glkonim_MultMatrixd` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5caec` | 140 | `0xda66c00` | `kon_cfuncs.c` | glMultMatrixd: token 0xd6 and sixteen doubles in memory order. | Inferred |
| `__glkonim_MultMatrixf` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5ca60` | 140 | `0xda66b70` | `kon_cfuncs.c` | glMultMatrixf: token 0xd5 and sixteen floats in memory order. | Inferred |
| `__glkonim_Normal3b` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b554` | 72 | `0xda65610` | `kon_cfuncs.c` | The immediate-mode glNormal3b, two stores to the command port from its three register arguments. Word one is the first component in bits 31 to 24, the second masked to a byte in bits 23 to 16 and the token 0x76 in the low byte; word two is the third component in the top byte. | Inferred |
| `__glkonim_Normal3iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f710` | 20 | `0xda795d0` | `kon_sfuncs.s` | Sends a glNormal3iv vector under token 0x79. | Inferred |
| `__glkonim_Normal3s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b61c` | 72 | `0xda656d0` | `kon_cfuncs.c` | The immediate-mode glNormal3s, two stores to the command port. Word one is the first short in its upper half beside the token 0x7a; word two is the second short in its upper half and the third masked to 16 bits in its lower half. | Inferred |
| `__glkonim_Ortho` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cb78` | 52 | `0xda66c90` | `kon_cfuncs.c` | glOrtho: token 0xd7 and six doubles (left, right, bottom, top, near, far). | Inferred |
| `__glkonim_PassThrough` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c590` | 16 | `0xda66660` | `kon_cfuncs.c` | glPassThrough: token 0xc1 and the marker value as a float word, unconverted. | Inferred |
| `__glkonim_PixelTransferi` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd955448` | 72 | `0xd957190` | `kon_pixel.c` | The integer form of glPixelTransfer: it converts the integer value to a float and calls `__glkonim_PixelTransferf` with the parameter name unchanged and the float in `$f13`. | Inferred |
| `__glkonim_PixelTransformParameteriSGI` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9908e8` | 72 | `0xd98d100` | `kon_pixel_transform.c` | Converts the integer parameter to a float and calls `__glkonim_PixelTransformParameterfSGI`, with the target and name unchanged. | Inferred |
| `__glkonim_PixelZoom` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd954350` | 260 | `0xd955f90` | `kon_pixel.c` | glPixelZoom. A begin raises 0x502. A factor above a limit just over 127 (a double constant, compared after widening) raises 0x501 and is replaced by 127.0; negative factors are not checked. | Inferred |
| `__glkonim_PolygonOffset` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd54` | 20 | `0xda66e60` | `kon_cfuncs.c` | glPolygonOffset: token 0x168 and two floats, the factor and the units. | Inferred |
| `__glkonim_PolygonOffsetEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd20` | 20 | `0xda66e20` | `kon_cfuncs.c` | glPolygonOffsetEXT: token 0x11b and two floats, the factor and the bias. | Inferred |
| `__glkonim_PopMatrix` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cbac` | 16 | `0xda66cc0` | `kon_cfuncs.c` | glPopMatrix sends the stack pop as token 0xd8 followed by one zero pad word, two stores, and keeps no stack depth on the host. | Inferred |
| `__glkonim_PopName` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c5a0` | 16 | `0xda66670` | `kon_cfuncs.c` | glPopName sends the selection-name pop as token 0xc2 followed by one zero word, two stores and nothing read from the caller. | Inferred |
| `__glkonim_PushMatrix` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cbbc` | 16 | `0xda66cd0` | `kon_cfuncs.c` | glPushMatrix sends the stack push as token 0xd9 followed by one zero pad word, two stores, with no overflow test on the host. | Inferred |
| `__glkonim_PushName` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c5b0` | 16 | `0xda66680` | `kon_cfuncs.c` | glPushName sends the selection-name push as token 0xc3 followed by the name word, two stores with no check of the value. | Inferred |
| `__glkonim_RasterPos2dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f724` | 20 | `0xda795e4` | `kon_sfuncs.s` | Sends the two doubles of a glRasterPos2dv vector under token 0xa8. | Inferred |
| `__glkonim_RasterPos2fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f738` | 16 | `0xda795f8` | `kon_sfuncs.s` | Sends the two floats of a glRasterPos2fv vector under token 0xa9. | Inferred |
| `__glkonim_RasterPos2sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f758` | 24 | `0xda79618` | `kon_sfuncs.s` | Sends the two shorts of a glRasterPos2sv vector under token 0xab. | Inferred |
| `__glkonim_RasterPos3fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f788` | 20 | `0xda79648` | `kon_sfuncs.s` | Sends a glRasterPos3fv vector under token 0xad as the token, a doubleword of the first two floats and a word for the third. | Inferred |
| `__glkonim_RasterPos3iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f79c` | 20 | `0xda7965c` | `kon_sfuncs.s` | Sends a glRasterPos3iv vector under token 0xae in three stores: the token word, a doubleword with the first two integers and a word for the third. | Inferred |
| `__glkonim_RasterPos3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f7b0` | 32 | `0xda79670` | `kon_sfuncs.s` | Sends the three shorts of a glRasterPos3sv vector under token 0xaf. | Inferred |
| `__glkonim_RasterPos4dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f7d0` | 32 | `0xda7968c` | `kon_sfuncs.s` | Sends the four doubles of a glRasterPos4dv vector under token 0xb0. | Inferred |
| `__glkonim_RasterPos4iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f808` | 24 | `0xda796c4` | `kon_sfuncs.s` | Sends a glRasterPos4iv vector (four integers) under token 0xb2. | Inferred |
| `__glkonim_RasterPos4sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f820` | 40 | `0xda796dc` | `kon_sfuncs.s` | Sends the four shorts of a glRasterPos4sv vector under token 0xb3. | Inferred |
| `__glkonim_ReadBuffer` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c8a0` | 16 | `0xda66990` | `kon_cfuncs.c` | glReadBuffer: token 0x37 and the buffer name, unchecked. | Inferred |
| `__glkonim_ReadInstrumentsSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cf54` | 16 | `0xda67070` | `kon_cfuncs.c` | glReadInstrumentsSGIX: token 0x1cd and the argument word. | Inferred |
| `__glkonim_ReferencePlaneSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cf94` | 44 | `0xda670b0` | `kon_cfuncs.c` | glReferencePlaneSGIX: token 0x1bd followed by the four doubles of the plane equation, in array order. | Inferred |
| `__glkonim_ResetHistogramEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd34` | 16 | `0xda66e40` | `kon_cfuncs.c` | glResetHistogramEXT: token 0x103 and the target word. | Inferred |
| `__glkonim_ResetMinmaxEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd44` | 16 | `0xda66e50` | `kon_cfuncs.c` | glResetMinmaxEXT: token 0x108 and the target word. | Inferred |
| `__glkonim_Rotated` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cbcc` | 36 | `0xda66ce0` | `kon_cfuncs.c` | glRotated: token 0xda followed by four doubles (angle, then the axis x, y and z). | Inferred |
| `__glkonim_Rotatef` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cbf0` | 44 | `0xda66d00` | `kon_cfuncs.c` | glRotatef: token 0xdb and four floats (angle, axis x, y, z). | Inferred |
| `__glkonim_SamplePatternSGIS` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cd98` | 16 | `0xda66ec0` | `kon_cfuncs.c` | glSamplePatternSGIS sends the multisample pattern choice as token 0x117 followed by the pattern word, two stores with no check of the value. | Inferred |
| `__glkonim_Scaled` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cc1c` | 28 | `0xda66d20` | `kon_cfuncs.c` | glScaled sends the scale as token 0xdc followed by the x, y and z doubles, three 8-byte stores that make six data words. | Inferred |
| `__glkonim_Scalef` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cc38` | 32 | `0xda66d40` | `kon_cfuncs.c` | glScalef sends the scale as token 0xdd followed by the x, y and z floats, three single-word stores. | Inferred |
| `__glkonim_ShadeModel` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c300` | 16 | `0xda663a0` | `kon_cfuncs.c` | glShadeModel: token 0xc0 and the mode word, unchecked. | Inferred |
| `__glkonim_SpriteParameterivSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd963e00` | 168 | `0xd963e20` | `kon_sprite.c` | The integer form of glSpriteParameterSGIX. It converts the integer or integers to floats on the stack, one when the name is 0x8149 (GL_SPRITE_MODE_SGIX) and three for every other name, and calls `__glkonim_SpriteParameterfvSGIX` with that array. | Inferred |
| `__glkonim_StartInstrumentsSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cf64` | 16 | `0xda67080` | `kon_cfuncs.c` | glStartInstrumentsSGIX sends the instrument start as token 0x1b9 followed by one zero word, two stores, and ignores its arguments. | Inferred |
| `__glkonim_StencilMask` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c5f0` | 16 | `0xda666c0` | `kon_cfuncs.c` | glStencilMask sends the write mask as token 0x20 followed by the mask word, two stores, and does not reduce it to the stencil bit count. | Inferred |
| `__glkonim_StopInstrumentsSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cf74` | 16 | `0xda67090` | `kon_cfuncs.c` | glStopInstrumentsSGIX: token 0x1ba and the argument word. | Inferred |
| `__glkonim_SubdivPatchParameteriSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98d1ec` | 72 | `0xd988fb0` | `kon_subdiv.c` | The integer form: it converts the integer value to a float and calls `__glkonim_SubdivPatchParameterfSGIX` with the name unchanged. | Inferred |
| `__glkonim_TexCoord1d` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b83c` | 16 | `0xda658a0` | `kon_cfuncs.c` | The immediate-mode glTexCoord1d, two stores to the command port: the token 123 (0x7b) as a word and the double in `f12` as one 64-bit store. | Inferred |
| `__glkonim_TexCoord1dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f848` | 16 | `0xda79704` | `kon_sfuncs.s` | Sends the one double of a glTexCoord1dv vector under token 0x7b. | Inferred |
| `__glkonim_TexCoord1f` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b84c` | 16 | `0xda658b0` | `kon_cfuncs.c` | The immediate-mode glTexCoord1f, two stores to the command port: the token 124 (0x7c) and the float in `f12` as a 32-bit store. | Inferred |
| `__glkonim_TexCoord1fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f858` | 16 | `0xda79714` | `kon_sfuncs.s` | Sends the one float of a glTexCoord1fv vector under token 0x7c. | Inferred |
| `__glkonim_TexCoord1i` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b85c` | 16 | `0xda658c0` | `kon_cfuncs.c` | The immediate-mode glTexCoord1i, two word stores to the command port: the token 125 (0x7d) and the integer in `a0` unchanged. | Inferred |
| `__glkonim_TexCoord1s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b86c` | 32 | `0xda658d0` | `kon_cfuncs.c` | The immediate-mode glTexCoord1s: it stores the token 126 (0x7e) to the command port and then the short argument shifted into the upper half of a word. | Inferred |
| `__glkonim_TexCoord2iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f89c` | 16 | `0xda79758` | `kon_sfuncs.s` | Sends the two integers of a glTexCoord2iv vector under token 0x81. | Inferred |
| `__glkonim_TexCoord3dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f8ac` | 24 | `0xda79768` | `kon_sfuncs.s` | Sends the three doubles of a glTexCoord3dv vector under token 0x83. | Inferred |
| `__glkonim_TexCoord3fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f8c4` | 20 | `0xda79780` | `kon_sfuncs.s` | Sends a glTexCoord3fv vector under token 0x84: a doubleword of the first two floats and a word for the third follow the token word. | Inferred |
| `__glkonim_TexCoord3s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5b988` | 72 | `0xda65a10` | `kon_cfuncs.c` | The immediate-mode glTexCoord3s, two stores to the command port: the first short in the upper half with the token 0x86, then the second short in the upper half over the third masked to 16 bits in the lower half. | Inferred |
| `__glkonim_TexCoord4dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f8ec` | 32 | `0xda797a8` | `kon_sfuncs.s` | Sends the four doubles of a glTexCoord4dv vector under token 0x87. | Inferred |
| `__glkonim_TexCoord4fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f90c` | 24 | `0xda797c8` | `kon_sfuncs.s` | Sends the four floats of a glTexCoord4fv vector under token 0x88 in two doublewords. | Inferred |
| `__glkonim_TexCoord4s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5ba64` | 92 | `0xda65ac0` | `kon_cfuncs.c` | The immediate-mode glTexCoord4s, three stores to the command port: the first short in the upper half with the token 0x8a, then the second short in the upper half over the third masked to 16 bits, then the fourth short alone in the upper half. | Inferred |
| `__glkonim_TexGend` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c4c4` | 60 | `0xda66590` | `kon_cfuncs.c` | glTexGend. It sends token 0x14, the coordinate, the name and the double truncated to a 32-bit integer, followed by five zero words. The coordinate and name are not checked here, and a plane-equation value would lose its fraction. | Inferred |
| `__glkonim_TexGenf` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c500` | 64 | `0xda665d0` | `kon_cfuncs.c` | glTexGenf: token 0x14, the coordinate, the name and the float truncated to an integer, then five zero words, with no checking. | Inferred |
| `__glkonim_TexGeni` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5c540` | 48 | `0xda66610` | `kon_cfuncs.c` | glTexGeni: token 0x14, the coordinate, the name and the integer unchanged, then five zero words. | Inferred |
| `__glkonim_TexGeniv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94d320` | 352 | `0xd94f1f0` | `kon_modes.c` | The integer form, with the same ten-word record as `__glkonim_TexGenfv` and the same split of names: four values, seven values, or one. The integer parameters at offsets 0 to 12 (four-value names) or 0 to 24 (the two line names) are converted to floats before sending; the mode name sends its integer word unchanged, followed by six zero words. | Inferred |
| `__glkonim_TexSubImage1DEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd973598` | 144 | `0xd9726a0` | `kon_texture_api.c` | glTexSubImage1DEXT. Target 0xde0 only (0x500 otherwise). It loads zero into two argument registers and the constant 1 into two others, and calls `__glkonim_TexSubImage`. | Inferred |
| `__glkonim_TexSubImage3DEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd973478` | 140 | `0xd9725a0` | `kon_texture_api.c` | glTexSubImage3DEXT. The only target accepted is 0x806f, otherwise 0x500 goes to `__glSetError`. | Inferred |
| `__glkonim_Translated` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cc58` | 28 | `0xda66d60` | `kon_cfuncs.c` | glTranslated sends the translation as token 0xde followed by the x, y and z doubles, three 8-byte stores that make six data words. | Inferred |
| `__glkonim_Translatef` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5cc74` | 32 | `0xda66d80` | `kon_cfuncs.c` | glTranslatef sends the translation as token 0xdf followed by the x, y and z floats, three single-word stores. | Inferred |
| `__glkonim_Vertex2dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f93c` | 20 | `0xda797f8` | `kon_sfuncs.s` | Sends the two doubles of a glVertex2dv vector under token 0x8b. | Inferred |
| `__glkonim_Vertex3dv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f970` | 24 | `0xda7982c` | `kon_sfuncs.s` | Sends the three doubles of a glVertex3dv vector under token 0x8f. | Inferred |
| `__glkonim_Vertex3iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f99c` | 20 | `0xda79858` | `kon_sfuncs.s` | Sends a glVertex3iv vector under token 0x91 in three stores, the third being a single word for the last integer. | Inferred |
| `__glkonim_Vertex3s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5bbd8` | 72 | `0xda65c30` | `kon_cfuncs.c` | The immediate-mode glVertex3s, two stores to the command port: the first short in the upper half with the token 0x92, then the second short in the upper half over the third masked to 16 bits. | Inferred |
| `__glkonim_Vertex4fv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f9d0` | 24 | `0xda7988c` | `kon_sfuncs.s` | Sends a glVertex4fv vector under token 0x94 as the token word and two doublewords. | Inferred |
| `__glkonim_Vertex4iv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6f9e8` | 24 | `0xda798a4` | `kon_sfuncs.s` | Sends a glVertex4iv vector under token 0x95: token word and two doublewords of four integers. | Inferred |
| `__glkonim_Vertex4s` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5bcb4` | 92 | `0xda65ce0` | `kon_cfuncs.c` | The immediate-mode glVertex4s, three stores to the command port: the first short in the upper half with the token 0x96, then the second short over the masked third, then the fourth short alone in the upper half. | Inferred |
| `__glkonlc_Accum` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda648a8` | 152 | `0xda6ea80` | `kon_cdlfuncs.c` | Display-list form of the accumulation-buffer operation call, which appends three words to the list. Word one is the token 0xc5 (HP_ACCUM), then the operation enumerant (the first argument) unchanged and the scalar value (the second argument) as raw single-precision bits. | Inferred |
| `__glkonlc_BlendColorEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda66018` | 176 | `0xda70200` | `kon_cdlfuncs.c` | Display-list form of the blend-colour constant call, which appends five words to the list. | Inferred |
| `__glkonlc_BlendEquationEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda660c8` | 140 | `0xda702b0` | `kon_cdlfuncs.c` | Display-list form of the blend-equation selection call, which appends two words to the list. Word one is the token 0xe7 (HP_BLENDEQUATION), then the equation enumerant (the first argument) unchanged. | Inferred |
| `__glkonlc_Clear` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94d968` | 140 | `0xd94f890` | `kon_modes.c` | Display-list form of the buffer clear call, which appends two words to the list. Word one is the token 0x1a (HP_CLEAR), then the buffer-selection mask (the first argument) unchanged. | Inferred |
| `__glkonlc_ClearIndex` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6453c` | 140 | `0xda6e610` | `kon_cdlfuncs.c` | Display-list form of the colour-index clear value call, which appends two words to the list. Word one is the token 0x1c (HP_CLEARINDEX), then the index value (the first argument) as raw single-precision bits. | Inferred |
| `__glkonlc_ClearStencil` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda645c8` | 140 | `0xda6e6d0` | `kon_cdlfuncs.c` | Display-list form of the stencil clear value call, which appends two words to the list. Word one is the token 0x1e (HP_CLEARSTENCIL), then the stencil value (the first argument) unchanged. | Inferred |
| `__glkonlc_Color3bv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5d06c` | 172 | `0xda67190` | `kon_cdlfuncs.c` | Display-list form of the colour call with three signed-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5d608` | 168 | `0xda676f0` | `kon_cdlfuncs.c` | Display-list form of the colour call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color3ubv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5d75c` | 172 | `0xda67830` | `kon_cdlfuncs.c` | Display-list form of the colour call with three unsigned-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color3usv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5d9f8` | 168 | `0xda67ab0` | `kon_cdlfuncs.c` | Display-list form of the colour call with three unsigned-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4bv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5db5c` | 184 | `0xda67c10` | `kon_cdlfuncs.c` | Display-list form of the colour call with four signed-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5e174` | 180 | `0xda681e0` | `kon_cdlfuncs.c` | Display-list form of the colour call with four signed-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4ubv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5e2e4` | 184 | `0xda68340` | `kon_cdlfuncs.c` | Display-list form of the colour call with four unsigned-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4us` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5e4f8` | 184 | `0xda68540` | `kon_cdlfuncs.c` | Display-list form of the colour call with four unsigned-short components passed in registers: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4usv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5e5b0` | 180 | `0xda685f0` | `kon_cdlfuncs.c` | Display-list form of the colour call with four unsigned-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_ColorMask` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda646e0` | 176 | `0xda6e850` | `kon_cdlfuncs.c` | Display-list form of the colour write-mask call, which appends five words to the list. Word one is the token 0x21 (HP_COLORMASK), then the red enable (the first argument) unchanged, the green enable (the second argument) unchanged, the blue enable (the third argument) unchanged and the alpha enable (the fourth argument) unchanged. | Inferred |
| `__glkonlc_ColorMaterial` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda62b28` | 152 | `0xda6cab0` | `kon_cdlfuncs.c` | Display-list form of the colour-material tracking call, which appends three words to the list. Word one is the token 0xb5 (HP_COLORMATERIAL), then the face enumerant (the first argument) unchanged and the mode enumerant (the second argument) unchanged. | Inferred |
| `__glkonlc_ColorTableParameterfvSGI` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda66554` | 192 | `0xda70830` | `kon_cdlfuncs.c` | Display-list form of the colour-table parameter call with a float vector, which appends seven words to the list. Word one is the token 0xeb (HP_COLORTABLEPARAMETERFV), then the table target (the first argument) unchanged, the parameter name (the second argument) unchanged and the four floats read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_ColorTableParameterivSGI` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda66614` | 240 | `0xda708f0` | `kon_cdlfuncs.c` | Display-list form of the colour-table parameter call with an integer vector, which appends seven words to the list. Word one is the token 0xeb (HP_COLORTABLEPARAMETERFV), then the table target (the first argument) unchanged, the parameter name (the second argument) unchanged and the four integers each converted to single precision read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_DeformSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98cb90` | 172 | `0xd9889f0` | `kon_deform.c` | Display-list form of the deformation call. The mask argument must have no bit set above the low two (values 0 to 3); otherwise `__glsplc_InvalidValue` raises the invalid-value error (1281) through the context hook and nothing is recorded. | Inferred |
| `__glkonlc_DepthMask` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda64790` | 140 | `0xda6e900` | `kon_cdlfuncs.c` | Display-list form of the depth-buffer write-enable call, which appends two words to the list. Word one is the token 0x22 (HP_DEPTHMASK), then the enable flag (the first argument) unchanged. | Inferred |
| `__glkonlc_DepthRange` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda64e90` | 188 | `0xda6f0c0` | `kon_cdlfuncs.c` | Display-list form of the depth-range call, which appends five words to the list. Word one is the token 0xcf (HP_DEPTHRANGE), then the near value (the first argument) as a double, high half then low half and the far value (the second argument) as a double, high half then low half. | Inferred |
| `__glkonlc_EdgeFlag` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5e664` | 140 | `0xda686a0` | `kon_cdlfuncs.c` | Display-list form of the edge-flag call taking the flag by value, which appends two words to the list. Word one is the token 0xa7 (HP_EDGEFLAG), then the flag (the first argument) unchanged. | Inferred |
| `__glkonlc_EdgeFlagv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5e6f0` | 144 | `0xda68760` | `kon_cdlfuncs.c` | Display-list form of the edge-flag call taking a pointer to the flag, which appends two words to the list. Word one is the token 0xa7 (HP_EDGEFLAG), then the unsigned byte at offset 0 of the pointer argument. | Inferred |
| `__glkonlc_Frustum` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda64f4c` | 300 | `0xda6f170` | `kon_cdlfuncs.c` | Display-list form of the perspective frustum call, which appends thirteen words to the list. | Inferred |
| `__glkonlc_LightModelfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63550` | 180 | `0xda6d4d0` | `kon_cdlfuncs.c` | Display-list form of the lighting-model call with a float vector, which appends six words to the list. Word one is the token 0x9 (HP_LIGHTMODELF), then the parameter name (the first argument) unchanged and the four floats read from the vector (the second argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_LightModeliv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda636d0` | 180 | `0xda6d650` | `kon_cdlfuncs.c` | Display-list form of the lighting-model call with an integer vector, which appends six words to the list. Word one is the token 0xa (HP_LIGHTMODELI), then the parameter name (the first argument) unchanged and the four 32-bit words read from the vector (the second argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_Lightfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6322c` | 192 | `0xda6d1b0` | `kon_cdlfuncs.c` | Display-list form of the light-source parameter call with a float vector, which appends seven words to the list. Word one is the token 0x7 (HP_LIGHTF), then the light number (the first argument) unchanged, the parameter name (the second argument) unchanged and the four floats read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_Lightiv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda633c0` | 192 | `0xda6d340` | `kon_cdlfuncs.c` | Display-list form of the light-source parameter call with an integer vector, which appends seven words to the list. Word one is the token 0x8 (HP_LIGHTI), then the light number (the first argument) unchanged, the parameter name (the second argument) unchanged and the four 32-bit words read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_LineStipple` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63784` | 152 | `0xda6d700` | `kon_cdlfuncs.c` | Display-list form of the line-stipple call, which appends three words to the list. Word one is the token 0xbc (HP_LINESTIPPLE), then the repeat factor (the first argument) unchanged and the pattern (the second argument) unchanged. | Inferred |
| `__glkonlc_LoadIdentityDeformationMapSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98cc50` | 144 | `0xd988ac0` | `kon_deform.c` | Display-list form of the deformation-map identity call, which appends two words to the list. Word one is the token 0x1c3 (HP_LOAD_IDENTITY_DEFORMATION), then the first argument masked to its low two bits. | Inferred |
| `__glkonlc_LoadMatrixd` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65208` | 588 | `0xda6f450` | `kon_cdlfuncs.c` | Display-list form of the matrix load call with sixteen doubles, which appends thirty-three words to the list. | Inferred |
| `__glkonlc_Materialfv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda638e8` | 192 | `0xda6d860` | `kon_cdlfuncs.c` | Display-list form of the material parameter call with a float vector, which appends seven words to the list. Word one is the token 0x97 (HP_MATERIALF), then the face enumerant (the first argument) unchanged, the parameter name (the second argument) unchanged and the four floats read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_Materialiv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd988254` | 352 | `0xd984700` | `kon_materiali.c` | The compile-mode integer glMaterialiv, as a seven-word `HP_MATERIALF` record (token 151) of face, parameter and four value words. The parameters 0x1601 (shininess) and 0x1603 (colour indexes) copy up to three integers as floats with a zero last word; every other parameter scales four integers by the constant 2^-31 (0x30000000), mapping the integer colour range onto -1 to 1. | Inferred |
| `__glkonlc_MultMatrixd` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65620` | 588 | `0xda6f810` | `kon_cdlfuncs.c` | Display-list form of the matrix multiply call with sixteen doubles, which appends thirty-three words to the list. | Inferred |
| `__glkonlc_Normal3bv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5eccc` | 172 | `0xda68e50` | `kon_cdlfuncs.c` | Display-list form of the normal call with three signed-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Normal3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5f268` | 168 | `0xda693b0` | `kon_cdlfuncs.c` | Display-list form of the normal call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Ortho` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6586c` | 300 | `0xda6fa10` | `kon_cdlfuncs.c` | Display-list form of the orthographic projection call, which appends thirteen words to the list. | Inferred |
| `__glkonlc_PassThrough` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda64314` | 140 | `0xda6e320` | `kon_cdlfuncs.c` | Display-list form of the feedback pass-through marker call, which appends two words to the list. Word one is the token 0xc1 (HP_PASSTHROUGH), then the marker value (the first argument) as raw single-precision bits. | Inferred |
| `__glkonlc_PolygonOffset` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda66304` | 152 | `0xda70580` | `kon_cdlfuncs.c` | Display-list form of the standard polygon-offset call, which appends three words to the list. Word one is the token 0x168 (HP_POLYGONOFFSET), then the scale factor (the first argument) as raw single-precision bits and the units value (the second argument) as raw single-precision bits. | Inferred |
| `__glkonlc_PolygonOffsetEXT` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda66154` | 152 | `0xda70370` | `kon_cdlfuncs.c` | Display-list form of the extension polygon-offset call, which appends three words to the list. Word one is the token 0x11b (HP_POLYGONOFFSETEXT), then the scale factor (the first argument) as raw single-precision bits and the bias value (the second argument) as raw single-precision bits. | Inferred |
| `__glkonlc_RasterPos3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda5fd18` | 164 | `0xda69dd0` | `kon_cdlfuncs.c` | Display-list form of the raster position call with three signed-short components read through a vector pointer: it appends four words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_RasterPos4sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda60314` | 172 | `0xda6a390` | `kon_cdlfuncs.c` | Display-list form of the raster position call with four signed-short components read through a vector pointer: it appends five words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Rectd` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd98773c` | 380 | `0xd983c60` | `kon_rect.c` | Display-list form of the double-precision rectangle call with four coordinate arguments, which appends twenty-four words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_Rectdv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd9878b8` | 408 | `0xd983dd0` | `kon_rect.c` | Display-list form of the double-precision rectangle call with two vector pointers, which appends twenty-four words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_Rects` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd987e14` | 236 | `0xd9842f0` | `kon_rect.c` | Display-list form of the short rectangle call with four coordinate arguments, which appends twelve words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_Rectsv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd987f00` | 276 | `0xd9843d0` | `kon_rect.c` | Display-list form of the short rectangle call with two vector pointers, which appends twelve words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_ReferencePlaneSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda66b24` | 252 | `0xda70e80` | `kon_cdlfuncs.c` | Display-list form of the reference-plane call taking a four-double pointer, which appends nine words to the list. Word one is the token 0x1bd (HP_REFERENCE_PLANE), then the four doubles read from the vector (the first argument) at offsets 0 to 24, each high half then low half. | Inferred |
| `__glkonlc_Rotated` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65aa0` | 244 | `0xda6fca0` | `kon_cdlfuncs.c` | Display-list form of the rotation call in doubles, which appends nine words to the list. | Inferred |
| `__glkonlc_Rotatef` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65b94` | 176 | `0xda6fd90` | `kon_cdlfuncs.c` | Display-list form of the rotation call in floats, which appends five words to the list. Word one is the token 0xdb (HP_ROTATEF), then the angle (the first argument) as raw single-precision bits, the x axis component (the second argument) as raw single-precision bits, the y axis component (the third argument) as raw single-precision bits and the z axis component (the fourth argument) as raw single-precision bits. | Inferred |
| `__glkonlc_SamplePatternSGIS` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda664c0` | 140 | `0xda70760` | `kon_cdlfuncs.c` | Display-list form of the multisample pattern selection call, which appends two words to the list. Word one is the token 0x117 (HP_SAMPLEPATTERN), then the pattern (the first argument) unchanged. | Inferred |
| `__glkonlc_Scaled` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65c44` | 216 | `0xda6fe40` | `kon_cdlfuncs.c` | Display-list form of the scale call in doubles, which appends seven words to the list. Word one is the token 0xdc (HP_SCALED), then the x factor (the first argument) as a double, high half then low half, the y factor (the second argument) as a double, high half then low half and the z factor (the third argument) as a double, high half then low half. | Inferred |
| `__glkonlc_Scalef` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65d1c` | 164 | `0xda6ff10` | `kon_cdlfuncs.c` | Display-list form of the scale call in floats, which appends four words to the list. Word one is the token 0xdd (HP_SCALEF), then the x factor (the first argument) as raw single-precision bits, the y factor (the second argument) as raw single-precision bits and the z factor (the third argument) as raw single-precision bits. | Inferred |
| `__glkonlc_ShadeModel` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63b74` | 140 | `0xda6db00` | `kon_cdlfuncs.c` | Display-list form of the shade-model selection call, which appends two words to the list. Word one is the token 0xc0 (HP_SHADEMODEL), then the mode (the first argument) unchanged. | Inferred |
| `__glkonlc_SpriteParameterivSGIX` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd964094` | 168 | `0xd964050` | `kon_sprite.c` | Converts the integers to floats on the stack, one for parameter 0x8149 and three otherwise, and passes them to `__glkonlc_SpriteParameterfvSGIX` with the parameter. It checks and records nothing itself. | Inferred |
| `__glkonlc_TexCoord3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda61274` | 168 | `0xda6b330` | `kon_cdlfuncs.c` | Display-list form of the texture coordinate call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_TexCoord4sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6187c` | 180 | `0xda6b8f0` | `kon_cdlfuncs.c` | Display-list form of the texture coordinate call with four signed-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_TexEnvf` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63c00` | 228 | `0xda6dbc0` | `kon_cdlfuncs.c` | The compile-mode single-float glTexEnv. Only target 0x2300 with parameter 0x2200 (the environment mode) is accepted; any other target or parameter calls `__glsplc_InvalidEnum`. It appends six words: `HP_TEXENVF` (token 17), 0x2200, the value and three zeros. | Inferred |
| `__glkonlc_TexEnvi` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63de0` | 224 | `0xda6dda0` | `kon_cdlfuncs.c` | The integer form, with the same target 0x2300 and parameter 0x2200 checks, appending `HP_TEXENVI` (token 18), 0x2200, the integer value and three zeros. | Inferred |
| `__glkonlc_TexEnviv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63ec0` | 252 | `0xda6de80` | `kon_cdlfuncs.c` | The integer vector form with the same target and parameter set, appending `HP_TEXENVI` (token 18), the parameter and four integer words copied unchanged. | Inferred |
| `__glkonlc_TexGend` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda63fbc` | 200 | `0xda6df80` | `kon_cdlfuncs.c` | The double-precision twin of `__glkonlc_TexGenf`: the same ten-word `HP_TEXGENF` record with the double converted to the value word, and no argument checks. | Inferred |
| `__glkonlc_TexGendv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94d480` | 400 | `0xd94f330` | `kon_modes.c` | The double vector glTexGen with the same ten-word `HP_TEXGENF` layout and parameter groups, converting each double of the plane parameters to a float. | Inferred |
| `__glkonlc_TexGenf` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda64084` | 196 | `0xda6e040` | `kon_cdlfuncs.c` | The compile-mode single-value glTexGen. It always appends ten words without checking the enums: `HP_TEXGENF` (token 20), the coordinate, the parameter, the value and six zeros. | Inferred |
| `__glkonlc_TexGeni` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda64148` | 188 | `0xda6e100` | `kon_cdlfuncs.c` | Display-list form of the integer texture-coordinate generation call, which appends ten words to the list. Word one is the token 0x14 (HP_TEXGENF), then the coordinate enumerant (the first argument) unchanged, the parameter name (the second argument) unchanged, the parameter value (the third argument) unchanged and six zero words. | Inferred |
| `__glkonlc_TexGeniv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94d778` | 480 | `0xd94f690` | `kon_modes.c` | The integer vector glTexGen with the same three parameter groups and ten-word record as `__glkonlc_TexGenfv`, converting the integers of the plane parameters to floats and storing the single mode value as an integer. | Inferred |
| `__glkonlc_Translated` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65dc0` | 216 | `0xda6ffb0` | `kon_cdlfuncs.c` | Display-list form of the translation call in doubles, which appends seven words to the list. Word one is the token 0xde (HP_TRANSLATED), then the x offset (the first argument) as a double, high half then low half, the y offset (the second argument) as a double, high half then low half and the z offset (the third argument) as a double, high half then low half. | Inferred |
| `__glkonlc_Translatef` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda65e98` | 164 | `0xda70080` | `kon_cdlfuncs.c` | Display-list form of the translation call in floats, which appends four words to the list. Word one is the token 0xdf (HP_TRANSLATEF), then the x offset (the first argument) as raw single-precision bits, the y offset (the second argument) as raw single-precision bits and the z offset (the third argument) as raw single-precision bits. | Inferred |
| `__glkonlc_Vertex3sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda62344` | 168 | `0xda6c320` | `kon_cdlfuncs.c` | Display-list form of the vertex position call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Vertex4sv` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6294c` | 180 | `0xda6c8e0` | `kon_cdlfuncs.c` | Display-list form of the vertex position call with four signed-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonle_Bitmap` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd952b08` | 144 | `0xd9543b0` | `kon_pixel.c` | The list-execution glBitmap. | Inferred |
| `__glkonle_ColorTableSGI` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd984b8c` | 136 | `0xd981cc0` | `kon_colortable.c` | The list-execution glColorTableSGI. It sets the pixel modes with `__glKonSetPixelLEModes`, calls `__glkonim_ColorTableSGI` with the arguments restored from the stack, and then restores the modes. | Inferred |
| `__glkonle_Push` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xda6c2f0` | 100 | `0xda772a0` | `kon_sdlist.s` | Replays a recorded run of words to the command port. The record starts with a count word, and the data follows it. When the record's address has bit 2 clear it first sends one word alone so that the doubleword stores that follow are 8-byte aligned, then sends 8-byte units while at least two words remain, then a final single word if one is left. | Inferred |
| `__glkonle_SetBegin` | `usr/gfx/arch/IP27KONA/libGLcore.so` | `0xd94adf4` | 16 | `0xd94cd00` | `kon_dlist.c` | Sets the begin flag at process address 0x1018 to 1 and returns its argument unchanged. | Inferred |

What was compared for the O32 rows above:

| Routine | Callees, in order | FIFO stores | Constants |
|---|---|---|---|
| `__glKonDefaultState` | `__glkonim_PixelStorei` x20 | 0 | `0xcf0`, `0xcf1`, `0xcf2`, `0xcf3`, `0xcf4`, `0xcf5` |
| `__glKonEvalCoord1DGe11` | `none` | 3 | `0x9d` |
| `__glKonEvalCoord2DGe11` | `none` | 4 | `0xa1` |
| `__glKonEvalMesh1DGe11` | `none` | 16 | `0x26`, `0x1b00` |
| `__glKonEvalMesh2DGe11` | `none` | 56 | `0x10`, `0x11`, `0x12`, `0x13`, `0x27`, `0x32` |
| `__glKonGetTexParams` | `__glKonGetTexParameter` x27 | 0 | `0x2800`, `0x2801`, `0x2802`, `0x2803`, `0x8066`, `0x8072` |
| `__glKonInitConvolutionState` | `none` | 0 | `0x1908`, `0x8010`, `0x8012`, `0x8016` |
| `__glKonInitializeEnables` | `fprintf`, `exit` | 0 | `0xff` |
| `__glKonParseHostImage` | `none` | 0 | `0x20`, `0x80`, `0x1f00`, `0x3ff1`, `0x8ad0` |
| `__glKonSetPixelLEModes` | `__glKonPushState`, `__glKonDefaultState`, `__glkonim_PixelStorei` | 0 | `0xcf5` |
| `__glKonUnsetLEModes` | `__glKonPopState` | 0 | `none` |
| `__glkonAdjustPlist` | `none` | 0 | `none` |
| `__glkonCompressPlist` | `none` | 0 | `0xff` |
| `__glkonDlistOptimizer` | `none` | 0 | `none` |
| `__glkonHostCopy` | `bcopy` x2 | 0 | `none` |
| `__glkonPadBlocks` | `none` | 0 | `0xfc`, `0x1d8`, `0x1d9`, `0x1da` |
| `__glkonSPBfree` | `__glDlistIsBlock`, `__glDlistTransientBlock`, `indirect` | 0 | `none` |
| `__glkonSPValidateDlist` | `__glkonSPValidateOnlyDlist`, `indirect` | 0 | `none` |
| `__glkonSendPackedVertexV3F` | `none` | 3 | `0x1ab` |
| `__glkonSendPackedVertexV3F_C4UB` | `none` | 3 | `0x1ac` |
| `__glkonSendPackedVertexV3F_C4UB_N3S` | `none` | 4 | `0x1ae` |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2F` | `none` | 5 | `0x1b2` |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2S` | `none` | 4 | `0x1b6` |
| `__glkonSendPackedVertexV3F_C4UB_T2F` | `none` | 4 | `0x1b0` |
| `__glkonSendPackedVertexV3F_C4UB_T2S` | `none` | 4 | `0x1b4` |
| `__glkonSendPackedVertexV3F_N3S` | `none` | 3 | `0x1ad` |
| `__glkonSendPackedVertexV3F_N3S_T2F` | `none` | 4 | `0x1b1` |
| `__glkonSendPackedVertexV3F_N3S_T2S` | `none` | 4 | `0x1b5` |
| `__glkonSendPackedVertexV3F_T2F` | `none` | 4 | `0x1af` |
| `__glkonSendPackedVertexV3F_T2S` | `none` | 3 | `0x1b3` |
| `__glkonSwapOutList` | `indirect`, `memmove`, `indirect` | 0 | `0x400` |
| `__glkon_BindHyperpipe` | `ioctl` | 0 | `0x2726` |
| `__glkon_InitDlistState` | `getenv` | 0 | `none` |
| `__glkon__HyperpipeRect` | `none` | 0 | `none` |
| `__glkon__QueryHyperpipeBestRect` | `none` | 0 | `none` |
| `__glkon__QueryHyperpipeLimit` | `none` | 0 | `none` |
| `__glkon__QueryHyperpipeRect` | `none` | 0 | `none` |
| `__glkon_datavn` | `none` | 1 | `none` |
| `__glkon_dlerror` | `__glSPDlistSpace` | 0 | `0xe4` |
| `__glkon_dlist_mem_alloc` | `__glkon_mem_alloc` | 0 | `none` |
| `__glkon_dlist_mem_free` | `__glkon_mem_free` | 0 | `none` |
| `__glkon_dlist_mem_realloc` | `__glkon_mem_realloc` | 0 | `none` |
| `__glkon_get_special` | `__glkona_wait_rdata` | 2 | `none` |
| `__glkon_get_special2` | `__glkona_wait_rdata` | 3 | `none` |
| `__glkon_get_special3` | `__glkona_wait_rdata` | 4 | `none` |
| `__glkon_get_special4` | `__glkona_wait_rdata` | 5 | `none` |
| `__glkon_mem_free` | `__glKon_ioctl` | 0 | `0x271b` |
| `__glkon_mem_realloc` | `__glKon_ioctl` | 0 | `0x271e` |
| `__glkon_packPixelRow` | `none` | 0 | `0x1f`, `0x3ff`, `0x8032`, `0x8033`, `0x8034`, `0x8036` |
| `__glkon_texture_mem_alloc` | `__glkon_mem_alloc` | 0 | `none` |
| `__glkon_texture_mem_realloc` | `__glkon_mem_realloc` | 0 | `none` |
| `__glkonim_Accum` | `none` | 3 | `0xc5` |
| `__glkonim_BlendColorEXT` | `none` | 5 | `0xe6` |
| `__glkonim_BlendEquationEXT` | `none` | 2 | `0xe7` |
| `__glkonim_Clear` | `none` | 2 | `0x1a` |
| `__glkonim_ClearIndex` | `none` | 2 | `0x1c` |
| `__glkonim_ClearStencil` | `none` | 2 | `0x1e` |
| `__glkonim_ClipPlane` | `none` | 8 | `0xb4`, `0xe4`, `0x500`, `0x3000`, `0x3006` |
| `__glkonim_Color3b` | `none` | 2 | `0x61`, `0xff` |
| `__glkonim_Color3bv` | `none` | 2 | `0x61` |
| `__glkonim_Color3dv` | `none` | 4 | `0x62` |
| `__glkonim_Color3fv` | `none` | 3 | `0x63` |
| `__glkonim_Color3iv` | `none` | 3 | `0x64` |
| `__glkonim_Color3s` | `none` | 2 | `0x65`, `0xffff` |
| `__glkonim_Color3sv` | `none` | 2 | `0x65` |
| `__glkonim_Color3ubv` | `none` | 2 | `0x66` |
| `__glkonim_Color3ui` | `none` | 4 | `0x67` |
| `__glkonim_Color3uiv` | `none` | 3 | `0x67` |
| `__glkonim_Color3usv` | `none` | 2 | `0x68` |
| `__glkonim_Color4b` | `none` | 2 | `0x69`, `0xff` |
| `__glkonim_Color4bv` | `none` | 2 | `0x69` |
| `__glkonim_Color4dv` | `none` | 5 | `0x6a` |
| `__glkonim_Color4fv` | `none` | 3 | `0x6b` |
| `__glkonim_Color4iv` | `none` | 3 | `0x6c` |
| `__glkonim_Color4s` | `none` | 3 | `0x6d`, `0xffff` |
| `__glkonim_Color4sv` | `none` | 3 | `0x6d` |
| `__glkonim_Color4ubv` | `none` | 2 | `0x6e` |
| `__glkonim_Color4ui` | `none` | 5 | `0x6f` |
| `__glkonim_Color4usv` | `none` | 3 | `0x70` |
| `__glkonim_ColorMaterial` | `none` | 3 | `0xb5` |
| `__glkonim_ColorTableParameterfvSGI` | `none` | 7 | `0xeb` |
| `__glkonim_ColorTableParameterivSGI` | `none` | 7 | `0xeb` |
| `__glkonim_ConvolutionParameterfEXT` | `__glkonim_PixelTransformParameterfSGI` | 0 | `none` |
| `__glkonim_ConvolutionParameterfvEXT` | `__glkonim_PixelTransformParameterfvSGI` | 0 | `none` |
| `__glkonim_ConvolutionParameteriEXT` | `__glkonim_PixelTransformParameteriSGI` | 0 | `none` |
| `__glkonim_ConvolutionParameterivEXT` | `__glkonim_PixelTransformParameterivSGI` | 0 | `none` |
| `__glkonim_CopyTexImage1DEXT` | `__glSetError`, `__glkonim_CopyTexImage` | 0 | `0x500`, `0xde0` |
| `__glkonim_CopyTexSubImage1DEXT` | `__glSetError`, `__glkonim_CopyTexSubImage` | 0 | `0x500`, `0xde0` |
| `__glkonim_CullFace` | `none` | 4 | `0xb6`, `0xe4`, `0x404`, `0x405`, `0x408`, `0x500` |
| `__glkonim_DeformSGIX` | `__glSetError` | 2 | `0x1bf`, `0x501` |
| `__glkonim_DepthRange` | `none` | 3 | `0xcf` |
| `__glkonim_DrawBuffer` | `none` | 2 | `0xc4` |
| `__glkonim_End` | `none` | 2 | `0x71` |
| `__glkonim_Flush` | `none` | 2 | `0xc7` |
| `__glkonim_FlushRasterSGIX` | `none` | 2 | `0x1cc` |
| `__glkonim_Fogi` | `none` | 8 | `0xb8`, `0xe4`, `0x500`, `0xb61`, `0xb66` |
| `__glkonim_Frustum` | `none` | 7 | `0xd1` |
| `__glkonim_GetConvolutionParameterfvEXT` | `__glkonim_GetPixelTransformParameterfvSGI` | 0 | `none` |
| `__glkonim_GetConvolutionParameterivEXT` | `__glkonim_GetPixelTransformParameterivSGI` | 0 | `none` |
| `__glkonim_GetTexLevelParameterfv` | `__glkonim_GetTexLevelParameteriv` | 0 | `none` |
| `__glkonim_IndexMask` | `none` | 2 | `0x23` |
| `__glkonim_Indexd` | `none` | 2 | `0x72` |
| `__glkonim_Indexdv` | `none` | 2 | `0x72` |
| `__glkonim_Indexf` | `none` | 2 | `0x73` |
| `__glkonim_Indexfv` | `none` | 2 | `0x73` |
| `__glkonim_Indexi` | `none` | 2 | `0x74` |
| `__glkonim_Indexiv` | `none` | 2 | `0x74` |
| `__glkonim_Indexs` | `none` | 2 | `0x75` |
| `__glkonim_Indexub` | `none` | 2 | `0x75` |
| `__glkonim_InitNames` | `none` | 2 | `0x10c` |
| `__glkonim_LightModelfv` | `none` | 6 | `none` |
| `__glkonim_LightModeliv` | `none` | 6 | `none` |
| `__glkonim_Lightfv` | `none` | 7 | `none` |
| `__glkonim_Lightiv` | `none` | 7 | `none` |
| `__glkonim_ListParameterfSGIX` | `__glkonim_ListParameterfvSGIX` | 0 | `none` |
| `__glkonim_LoadIdentity` | `none` | 2 | `0xd2` |
| `__glkonim_LoadIdentityDeformationMapSGIX` | `none` | 2 | `0x1c3` |
| `__glkonim_LoadMatrixd` | `none` | 17 | `0xd4` |
| `__glkonim_LoadMatrixf` | `none` | 17 | `0xd3` |
| `__glkonim_LoadName` | `none` | 2 | `0x10d` |
| `__glkonim_Materialfv` | `none` | 7 | `0x97` |
| `__glkonim_Materiali` | `__glSetError` | 7 | `0x97`, `0x500`, `0x1601` |
| `__glkonim_MultMatrixd` | `none` | 17 | `0xd6` |
| `__glkonim_MultMatrixf` | `none` | 17 | `0xd5` |
| `__glkonim_Normal3b` | `none` | 2 | `0x76`, `0xff` |
| `__glkonim_Normal3iv` | `none` | 3 | `0x79` |
| `__glkonim_Normal3s` | `none` | 2 | `0x7a`, `0xffff` |
| `__glkonim_Ortho` | `none` | 7 | `0xd7` |
| `__glkonim_PassThrough` | `none` | 2 | `0xc1` |
| `__glkonim_PixelTransferi` | `__glkonim_PixelTransferf` | 0 | `none` |
| `__glkonim_PixelTransformParameteriSGI` | `__glkonim_PixelTransformParameterfSGI` | 0 | `none` |
| `__glkonim_PixelZoom` | `__glSetError` x3 | 3 | `0x2f`, `0x501`, `0x502` |
| `__glkonim_PolygonOffset` | `none` | 3 | `0x168` |
| `__glkonim_PolygonOffsetEXT` | `none` | 3 | `0x11b` |
| `__glkonim_PopMatrix` | `none` | 2 | `0xd8` |
| `__glkonim_PopName` | `none` | 2 | `0xc2` |
| `__glkonim_PushMatrix` | `none` | 2 | `0xd9` |
| `__glkonim_PushName` | `none` | 2 | `0xc3` |
| `__glkonim_RasterPos2dv` | `none` | 3 | `0xa8` |
| `__glkonim_RasterPos2fv` | `none` | 2 | `0xa9` |
| `__glkonim_RasterPos2sv` | `none` | 2 | `0xab` |
| `__glkonim_RasterPos3fv` | `none` | 3 | `0xad` |
| `__glkonim_RasterPos3iv` | `none` | 3 | `0xae` |
| `__glkonim_RasterPos3sv` | `none` | 3 | `0xaf` |
| `__glkonim_RasterPos4dv` | `none` | 5 | `0xb0` |
| `__glkonim_RasterPos4iv` | `none` | 3 | `0xb2` |
| `__glkonim_RasterPos4sv` | `none` | 3 | `0xb3` |
| `__glkonim_ReadBuffer` | `none` | 2 | `0x37` |
| `__glkonim_ReadInstrumentsSGIX` | `none` | 2 | `0x1cd` |
| `__glkonim_ReferencePlaneSGIX` | `none` | 5 | `0x1bd` |
| `__glkonim_ResetHistogramEXT` | `none` | 2 | `0x103` |
| `__glkonim_ResetMinmaxEXT` | `none` | 2 | `0x108` |
| `__glkonim_Rotated` | `none` | 5 | `0xda` |
| `__glkonim_Rotatef` | `none` | 5 | `0xdb` |
| `__glkonim_SamplePatternSGIS` | `none` | 2 | `0x117` |
| `__glkonim_Scaled` | `none` | 4 | `0xdc` |
| `__glkonim_Scalef` | `none` | 4 | `0xdd` |
| `__glkonim_ShadeModel` | `none` | 2 | `0xc0` |
| `__glkonim_SpriteParameterivSGIX` | `__glkonim_SpriteParameterfvSGIX` | 0 | `0x8149` |
| `__glkonim_StartInstrumentsSGIX` | `none` | 2 | `0x1b9` |
| `__glkonim_StencilMask` | `none` | 2 | `0x20` |
| `__glkonim_StopInstrumentsSGIX` | `none` | 2 | `0x1ba` |
| `__glkonim_SubdivPatchParameteriSGIX` | `__glkonim_SubdivPatchParameterfSGIX` | 0 | `none` |
| `__glkonim_TexCoord1d` | `none` | 2 | `0x7b` |
| `__glkonim_TexCoord1dv` | `none` | 2 | `0x7b` |
| `__glkonim_TexCoord1f` | `none` | 2 | `0x7c` |
| `__glkonim_TexCoord1fv` | `none` | 2 | `0x7c` |
| `__glkonim_TexCoord1i` | `none` | 2 | `0x7d` |
| `__glkonim_TexCoord1s` | `none` | 2 | `0x7e` |
| `__glkonim_TexCoord2iv` | `none` | 2 | `0x81` |
| `__glkonim_TexCoord3dv` | `none` | 4 | `0x83` |
| `__glkonim_TexCoord3fv` | `none` | 3 | `0x84` |
| `__glkonim_TexCoord3s` | `none` | 2 | `0x86`, `0xffff` |
| `__glkonim_TexCoord4dv` | `none` | 5 | `0x87` |
| `__glkonim_TexCoord4fv` | `none` | 3 | `0x88` |
| `__glkonim_TexCoord4s` | `none` | 3 | `0x8a`, `0xffff` |
| `__glkonim_TexGend` | `none` | 10 | `0x14` |
| `__glkonim_TexGenf` | `none` | 10 | `0x14` |
| `__glkonim_TexGeni` | `none` | 10 | `0x14` |
| `__glkonim_TexGeniv` | `none` | 24 | `0x14`, `0x2501`, `0x2502`, `0x81f4`, `0x81f5`, `0x81f6` |
| `__glkonim_TexSubImage1DEXT` | `__glSetError`, `__glkonim_TexSubImage` | 0 | `0x500`, `0xde0` |
| `__glkonim_TexSubImage3DEXT` | `__glSetError`, `__glkonim_TexSubImage` | 0 | `0x500`, `0x806f` |
| `__glkonim_Translated` | `none` | 4 | `0xde` |
| `__glkonim_Translatef` | `none` | 4 | `0xdf` |
| `__glkonim_Vertex2dv` | `none` | 3 | `0x8b` |
| `__glkonim_Vertex3dv` | `none` | 4 | `0x8f` |
| `__glkonim_Vertex3iv` | `none` | 3 | `0x91` |
| `__glkonim_Vertex3s` | `none` | 2 | `0x92`, `0xffff` |
| `__glkonim_Vertex4fv` | `none` | 3 | `0x94` |
| `__glkonim_Vertex4iv` | `none` | 3 | `0x95` |
| `__glkonim_Vertex4s` | `none` | 3 | `0x96`, `0xffff` |
| `__glkonlc_Accum` | `__glSPDlistSpace` | 0 | `0xc5` |
| `__glkonlc_BlendColorEXT` | `__glSPDlistSpace` | 0 | `0xe6` |
| `__glkonlc_BlendEquationEXT` | `__glSPDlistSpace` | 0 | `0xe7` |
| `__glkonlc_Clear` | `__glSPDlistSpace` | 0 | `0x1a` |
| `__glkonlc_ClearIndex` | `__glSPDlistSpace` | 0 | `0x1c` |
| `__glkonlc_ClearStencil` | `__glSPDlistSpace` | 0 | `0x1e` |
| `__glkonlc_Color3bv` | `__glSPDlistSpace` | 0 | `0x61` |
| `__glkonlc_Color3sv` | `__glSPDlistSpace` | 0 | `0x65` |
| `__glkonlc_Color3ubv` | `__glSPDlistSpace` | 0 | `0x66` |
| `__glkonlc_Color3usv` | `__glSPDlistSpace` | 0 | `0x68` |
| `__glkonlc_Color4bv` | `__glSPDlistSpace` | 0 | `0x69` |
| `__glkonlc_Color4sv` | `__glSPDlistSpace` | 0 | `0x6d` |
| `__glkonlc_Color4ubv` | `__glSPDlistSpace` | 0 | `0x6e` |
| `__glkonlc_Color4us` | `__glSPDlistSpace` | 0 | `0x70` |
| `__glkonlc_Color4usv` | `__glSPDlistSpace` | 0 | `0x70` |
| `__glkonlc_ColorMask` | `__glSPDlistSpace` | 0 | `0x21` |
| `__glkonlc_ColorMaterial` | `__glSPDlistSpace` | 0 | `0xb5` |
| `__glkonlc_ColorTableParameterfvSGI` | `__glSPDlistSpace` | 0 | `0xeb` |
| `__glkonlc_ColorTableParameterivSGI` | `__glSPDlistSpace` | 0 | `0xeb` |
| `__glkonlc_DeformSGIX` | `__glsplc_InvalidValue`, `__glSPDlistSpace` | 0 | `0x1bf` |
| `__glkonlc_DepthMask` | `__glSPDlistSpace` | 0 | `0x22` |
| `__glkonlc_DepthRange` | `__glSPDlistSpace` | 0 | `0xcf` |
| `__glkonlc_EdgeFlag` | `__glSPDlistSpace` | 0 | `0xa7` |
| `__glkonlc_EdgeFlagv` | `__glSPDlistSpace` | 0 | `0xa7` |
| `__glkonlc_Frustum` | `__glSPDlistSpace` | 0 | `0xd1` |
| `__glkonlc_LightModelfv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_LightModeliv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_Lightfv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_Lightiv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_LineStipple` | `__glSPDlistSpace` | 0 | `0xbc` |
| `__glkonlc_LoadIdentityDeformationMapSGIX` | `__glSPDlistSpace` | 0 | `0x1c3` |
| `__glkonlc_LoadMatrixd` | `__glSPDlistSpace` | 0 | `0x21`, `0xd4` |
| `__glkonlc_Materialfv` | `__glSPDlistSpace` | 0 | `0x97` |
| `__glkonlc_Materialiv` | `__glSPDlistSpace` | 0 | `0x97`, `0x1601`, `0x1603` |
| `__glkonlc_MultMatrixd` | `__glSPDlistSpace` | 0 | `0x21`, `0xd6` |
| `__glkonlc_Normal3bv` | `__glSPDlistSpace` | 0 | `0x76` |
| `__glkonlc_Normal3sv` | `__glSPDlistSpace` | 0 | `0x7a` |
| `__glkonlc_Ortho` | `__glSPDlistSpace` | 0 | `0xd7` |
| `__glkonlc_PassThrough` | `__glSPDlistSpace` | 0 | `0xc1` |
| `__glkonlc_PolygonOffset` | `__glSPDlistSpace` | 0 | `0x168` |
| `__glkonlc_PolygonOffsetEXT` | `__glSPDlistSpace` | 0 | `0x11b` |
| `__glkonlc_RasterPos3sv` | `__glSPDlistSpace` | 0 | `0xaf` |
| `__glkonlc_RasterPos4sv` | `__glSPDlistSpace` | 0 | `0xb3` |
| `__glkonlc_Rectd` | `__glSPDlistSpace` | 0 | `0x16`, `0x18`, `0x71`, `0x8b` |
| `__glkonlc_Rectdv` | `__glSPDlistSpace` | 0 | `0x16`, `0x18`, `0x71`, `0x8b` |
| `__glkonlc_Rects` | `__glSPDlistSpace` | 0 | `0x71`, `0x8e` |
| `__glkonlc_Rectsv` | `__glSPDlistSpace` | 0 | `0x16`, `0x71`, `0x8e` |
| `__glkonlc_ReferencePlaneSGIX` | `__glSPDlistSpace` | 0 | `0x1bd` |
| `__glkonlc_Rotated` | `__glSPDlistSpace` | 0 | `0xda` |
| `__glkonlc_Rotatef` | `__glSPDlistSpace` | 0 | `0xdb` |
| `__glkonlc_SamplePatternSGIS` | `__glSPDlistSpace` | 0 | `0x117` |
| `__glkonlc_Scaled` | `__glSPDlistSpace` | 0 | `0xdc` |
| `__glkonlc_Scalef` | `__glSPDlistSpace` | 0 | `0xdd` |
| `__glkonlc_ShadeModel` | `__glSPDlistSpace` | 0 | `0xc0` |
| `__glkonlc_SpriteParameterivSGIX` | `__glkonlc_SpriteParameterfvSGIX` | 0 | `0x8149` |
| `__glkonlc_TexCoord3sv` | `__glSPDlistSpace` | 0 | `0x86` |
| `__glkonlc_TexCoord4sv` | `__glSPDlistSpace` | 0 | `0x8a` |
| `__glkonlc_TexEnvf` | `__glsplc_InvalidEnum` x2, `__glSPDlistSpace` | 0 | `0x11`, `0x2200`, `0x2300` |
| `__glkonlc_TexEnvi` | `__glsplc_InvalidEnum` x2, `__glSPDlistSpace` | 0 | `0x12`, `0x2200`, `0x2300` |
| `__glkonlc_TexEnviv` | `__glsplc_InvalidEnum` x2, `__glSPDlistSpace` | 0 | `0x12`, `0x2200`, `0x2202`, `0x2300`, `0x80be` |
| `__glkonlc_TexGend` | `__glSPDlistSpace` | 0 | `0x14` |
| `__glkonlc_TexGendv` | `__glSPDlistSpace` | 0 | `0x14`, `0x2501`, `0x2502`, `0x81f4`, `0x81f5`, `0x81f6` |
| `__glkonlc_TexGenf` | `__glSPDlistSpace` | 0 | `0x14` |
| `__glkonlc_TexGeni` | `__glSPDlistSpace` | 0 | `0x14` |
| `__glkonlc_TexGeniv` | `__glSPDlistSpace` | 0 | `0x14`, `0x2501`, `0x2502`, `0x81f4`, `0x81f5`, `0x81f6` |
| `__glkonlc_Translated` | `__glSPDlistSpace` | 0 | `0xde` |
| `__glkonlc_Translatef` | `__glSPDlistSpace` | 0 | `0xdf` |
| `__glkonlc_Vertex3sv` | `__glSPDlistSpace` | 0 | `0x92` |
| `__glkonlc_Vertex4sv` | `__glSPDlistSpace` | 0 | `0x96` |
| `__glkonle_Bitmap` | `__glKonSetPixelLEModes`, `__glkonim_Bitmap`, `__glKonUnsetLEModes` | 0 | `none` |
| `__glkonle_ColorTableSGI` | `__glKonSetPixelLEModes`, `__glkonim_ColorTableSGI`, `__glKonUnsetLEModes` | 0 | `none` |
| `__glkonle_Push` | `none` | 3 | `none` |
| `__glkonle_SetBegin` | `none` | 0 | `none` |

### 64-bit build (`usr/gfx/arch/IP27KONA64/libGLcore.so`)

| Routine | Binary | Address | Size | N32 address | Source file | Role (from the N32 entry) | Label |
|---|---|---|---|---|---|---|---|
| `__glKonCleanUp1D` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de0960` | 876 | `0xd97e000` | `kon_eval.c` | Re-decides where 1D evaluation runs after a map or its enable changed. | Inferred |
| `__glKonDefaultState` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db2f50` | 416 | `0xd950e70` | `kon_pixel.c` | Sets chosen pixel-storage parameters to their defaults with `__glkonim_PixelStorei`. | Inferred |
| `__glKonEvalCoord1DHost` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ddf560` | 76 | `0xd97cbe0` | `kon_eval.c` | Evaluates one point of a 1D map on the host. It stores the float parameter in a local record with a single row of count 1 and calls `EvalRow1D` with that record. | Inferred |
| `__glKonEvalMesh1DHost` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ddf5b0` | 540 | `0xd97cc30` | `kon_eval.c` | Evaluates a glEvalMesh1 on the host. It does nothing unless the 1D enable word at context +2208 is non-zero. | Inferred |
| `__glKonEvalMesh2DGe11` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de01d0` | 760 | `0xd97d870` | `kon_eval.c` | The glEvalMesh2 sender, writing `HP_EVALSTRIP2D` (token 39) records of the form mode minus 0x1b00, a flag word (0x10 to 0x13), the first u index, a u count, the first v index and a v count. It tiles the grid in u chunks of 6 (5 steps apart for lines) and v chunks of 50 (49 apart for lines). | Inferred |
| `__glKonExecuteLDMA` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dacf80` | 32 | `0xd94b060` | `kon_dlist.c` | Writes the token 365 and the two words at the start of the block that the second argument's word at +40 points to. | Inferred |
| `__glKonFreeEvaluators` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de1370` | 392 | `0xd97ea20` | `kon_eval.c` | Releases every evaluator buffer a context holds. | Inferred |
| `__glKonGetTexParameter` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dcbfe0` | 1632 | `0xd969ba0` | `kon_texture_api.c` | The glGetTexParameter value reader, not an upload routine: its arguments are an object table pointer, a slot number, the parameter name, an output pointer and a flag that is non-zero for float output. | Inferred |
| `__glKonGetTexParams` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edc200` | 828 | `0xda76c20` | `kon_texture_attrib.c` | The inverse of `__glKonSetTexParams`: it fills the 160-byte record with the same 27 `__glKonGetTexParameter` calls, same parameter names, offsets and vector flags, reading the values back from the texture object. | Inferred |
| `__glKonInitColortableState` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de3c90` | 44 | `0xd981330` | `kon_colortable.c` | Points four slots of the context at records inside it. | Inferred |
| `__glKonInitConvolutionState` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db9390` | 280 | `0xd9571d0` | `kon_convolve.c` | Sets the context's convolution defaults. | Inferred |
| `__glKonInitEvaluators` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de1080` | 740 | `0xd97e720` | `kon_eval.c` | Resets the evaluator state of a new context. | Inferred |
| `__glKonInitializeEnables` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daff90` | 168 | `0xd94de90` | `kon_modes.c` | Builds the table that `__glkonim_xEnable` uses. It walks 186 pairs of halfwords in the library's data (0x25c8 to 0x28b0 from the data page), each a pipe code and an extended enum, and stores the pair in an 8-byte slot of the uninitialised table at index (enum & 0xff) plus (enum >> 7). | Inferred |
| `__glKonLockedMemoryForceSwapIn` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dad920` | 224 | `0xd94b880` | `kon_dlist.c` | Keeps trying `__glKonLockedMemorySwapIn` until the record is resident. | Inferred |
| `__glKonParseInput` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db2630` | 404 | `0xd950560` | `kon_pixel.c` | Turns the format and type enums of a pixel-transfer request record (`a0`; format at +12, type at +16) into the pipe's internal codes. | Inferred |
| `__glKonSdramForceSwapIn` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dac980` | 332 | `0xd94aa80` | `kon_dlist.c` | Keeps trying `__glKonSdramSwapIn` until the record is resident, evicting other lists to make room. | Inferred |
| `__glKonSendMapData1D` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de0570` | 168 | `0xd97dc10` | `kon_eval.c` | Sends a 1D map's control points to the pipe. For a non-null record it writes `HP_MAPDATA1D` (token 42), a word count of the record's word count (word 11) plus 5, then the first word times 4, the words at record +20, +24 and +28, the word count, and finally that many control-point words from the pointer at +48, in groups of four with an early return on the last odd word. | Inferred |
| `__glKonSendMapData2D` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de0620` | 192 | `0xd97dcc0` | `kon_eval.c` | The 2D form, using `HP_MAPDATA2D` (token 43) and a count of the word count plus 8. After the first word times 4 it writes the six words at record +20 to +40, the word count and the control-point words from the pointer at +48 in groups of four. | Inferred |
| `__glKonSendPackedVertex` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbed70` | 160 | `0xd95c960` | `kon_pvertarray.c` | Sends a packed-vertex draw as a whole. It writes token 0x1b7, the format word from its fourth argument and bits 23 to 16 of that word as a second word, calls `glBegin` with the mode, then calls the sender chosen by bits 27 to 24 of the format word from a 16-entry pointer table with the first index and the count, calls `glEnd`, and finally writes token 0x1cf and a zero word. | Inferred |
| `__glKonSetPixelLEModes` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db32a0` | 84 | `0xd9511c0` | `kon_pixel.c` | Puts the pipe into the mode that the compiled-list pixel paths need. It calls `__glKonPushState` with 0xc and the caller's save area, then `__glKonDefaultState` with 0xc, and finally `__glkonim_PixelStorei` with 0xcf5 (GL_UNPACK_ALIGNMENT) and 1. | Inferred |
| `__glKonUnsetLEModes` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db3300` | 52 | `0xd951220` | `kon_pixel.c` | Restores the state saved by `__glKonSetPixelLEModes` by calling `__glKonPopState` with the save area it was given. | Inferred |
| `__glkonAdjustPlist` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dad240` | 164 | `0xd94b1a0` | `kon_dlist.c` | Rebases a page list. It takes the entry count from the word at +0x34 of the list record (never fewer than 1), reads a base value at offset 0x50 of the record that the pointer at `ctx` +0x14c8 leads to through its word at +0x18, and subtracts that base from the first word of each 8-byte entry of the array at +0x28. | Inferred |
| `__glkonCompressPlist` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dac280` | 200 | `0xd94a380` | `kon_dlist.c` | Merges adjacent entries of a list record's block table. The table at record +40 has one pair of words per block (address, extent) for the count at +48 minus 1. An entry that starts exactly one 0x400-byte step after the previous run's end, and whose summed extent stays below 0x1000000, is folded into the previous pair; otherwise it begins a new pair. | Inferred |
| `__glkonDrawArraysCEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8360` | 440 | `0xda72e40` | `kon_gvertarray.c` | For each vertex it sends the colour, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed93a0` | 532 | `0xda73e30` | `kon_gvertarray.c` | For each vertex it sends the colour, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed73e0` | 440 | `0xda71f00` | `kon_gvertarray.c` | For each vertex it sends the colour, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCTEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8b20` | 532 | `0xda735e0` | `kon_gvertarray.c` | For each vertex it sends the colour, then texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCTIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed9ce0` | 640 | `0xda74730` | `kon_gvertarray.c` | For each vertex it sends the colour, then texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCTIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed7ba0` | 532 | `0xda726a0` | `kon_gvertarray.c` | For each vertex it sends the colour, then texture-coordinate, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCTV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed6ce0` | 440 | `0xda71810` | `kon_gvertarray.c` | For each vertex it sends the colour, then texture-coordinate, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysCV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed66a0` | 348 | `0xda711d0` | `kon_gvertarray.c` | For each vertex it sends the colour, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8040` | 348 | `0xda72b20` | `kon_gvertarray.c` | For each vertex it sends the edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8fc0` | 440 | `0xda73a60` | `kon_gvertarray.c` | For each vertex it sends the index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed70c0` | 348 | `0xda71be0` | `kon_gvertarray.c` | For each vertex it sends the index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8520` | 532 | `0xda73000` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed95c0` | 640 | `0xda74040` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed75a0` | 532 | `0xda720c0` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCTEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8d40` | 640 | `0xda737f0` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCTIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed9f60` | 748 | `0xda749a0` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCTIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed7dc0` | 640 | `0xda728b0` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then texture-coordinate, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCTV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed6ea0` | 532 | `0xda719d0` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then texture-coordinate, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNCV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed6800` | 440 | `0xda71330` | `kon_gvertarray.c` | For each vertex it sends the normal, then colour, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed81a0` | 440 | `0xda72c80` | `kon_gvertarray.c` | For each vertex it sends the normal, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed9180` | 532 | `0xda73c20` | `kon_gvertarray.c` | For each vertex it sends the normal, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed7220` | 440 | `0xda71d40` | `kon_gvertarray.c` | For each vertex it sends the normal, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNTEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8900` | 532 | `0xda733d0` | `kon_gvertarray.c` | For each vertex it sends the normal, then texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNTIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed9a60` | 640 | `0xda744c0` | `kon_gvertarray.c` | For each vertex it sends the normal, then texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNTIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed7980` | 532 | `0xda72490` | `kon_gvertarray.c` | For each vertex it sends the normal, then texture-coordinate, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNTV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed6b20` | 440 | `0xda71650` | `kon_gvertarray.c` | For each vertex it sends the normal, then texture-coordinate, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysNV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed6540` | 348 | `0xda71070` | `kon_gvertarray.c` | For each vertex it sends the normal, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysTEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed8740` | 440 | `0xda73210` | `kon_gvertarray.c` | For each vertex it sends the texture-coordinate, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysTIEV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed9840` | 532 | `0xda742b0` | `kon_gvertarray.c` | For each vertex it sends the texture-coordinate, then index, then edge-flag, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysTIV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed77c0` | 440 | `0xda722d0` | `kon_gvertarray.c` | For each vertex it sends the texture-coordinate, then index, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonDrawArraysTV` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed69c0` | 348 | `0xda714f0` | `kon_gvertarray.c` | For each vertex it sends the texture-coordinate, then vertex element, one call per enabled array and in that order. | Inferred |
| `__glkonSPBalloc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dade10` | 304 | `0xd94bd70` | `kon_dlist.c` | Gets a fresh block for the list under compilation when the current one is full. If both flag bits 1 and 2 at context +5604 are set it first calls `__glkonSwapOutList`. When bit 2 is clear it just calls the context allocator for the requested word count times 4 bytes. | Inferred |
| `__glkonSPValidateDlist` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf250` | 88 | `0xd94d150` | `kon_dlist.c` | Calls `__glkonSPValidateOnlyDlist` and then the function pointer at offset 8 of its second argument, passing both of its own arguments through. | Inferred |
| `__glkonSPValidateLocalDlist` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf040` | 48 | `0xd94cf60` | `kon_dlist.c` | Calls `__glKonSdramForceSwapIn` and returns 1 if that returned non-zero and 0 if it returned zero. | Inferred |
| `__glkonSPValidateOnlyDlist` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf070` | 468 | `0xd94cf90` | `kon_dlist.c` | Chooses the player a list will use next. It first sets the record's execute pointer at +16 to `__glSPExecuteDlist`. Inside a begin (process word 0x1030 equal to 1), for a record with flag bit 1 set, or for one with a block count at +48 of 1 or less, it keeps that. | Inferred |
| `__glkonSendPackedVertexV3F` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edc910` | 76 | `0xda77330` | `kon_spvertarray.s` | Sends one vertex per pass with token 0x1ab: an 8-byte store of x and y (read as an unaligned pair) and a word store of z. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edc95c` | 112 | `0xda7737c` | `kon_spvertarray.s` | Token 0x1ac, then x and y as one 8-byte store and z joined with the colour (four unsigned bytes read as one word) in a second 8-byte store, z in the upper word. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_N3S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edca50` | 168 | `0xda77470` | `kon_spvertarray.s` | Token 0x1ae with x and y as one 8-byte store, z and the colour word as a second, and the packed normal (first normal word with its low bit replaced by the top bit of the second) as a single word. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2F` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edccb0` | 204 | `0xda776d0` | `kon_spvertarray.s` | Token 0x1b2 and eight words in all: x and y, then z with the colour, then the packed normal as one word, then the two texture floats as the last 8-byte store. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edcf24` | 204 | `0xda77944` | `kon_spvertarray.s` | Token 0x1b6, x and y, then z with the colour word, then a last 8-byte store whose upper word is the packed normal and whose lower word is the texture word. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_T2F` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edcb70` | 152 | `0xda77590` | `kon_spvertarray.s` | Token 0x1b0, x and y, then z with the colour word as a second 8-byte store, and the two texture floats as a third 8-byte store read as one unaligned pair. | Inferred |
| `__glkonSendPackedVertexV3F_C4UB_T2S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edcdec` | 148 | `0xda7780c` | `kon_spvertarray.s` | Token 0x1b4, x and y, then z with the colour word as a second 8-byte store, and the one-word texture coordinate as a trailing word store. | Inferred |
| `__glkonSendPackedVertexV3F_N3S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edc9cc` | 132 | `0xda773ec` | `kon_spvertarray.s` | Token 0x1ad, x and y in one 8-byte store, then z in the upper word of a second store whose lower word is the packed normal. The normal word is the first word of the three shorts with its lowest bit replaced by the top bit of the second word. | Inferred |
| `__glkonSendPackedVertexV3F_N3S_T2F` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edcc08` | 168 | `0xda77628` | `kon_spvertarray.s` | Token 0x1b1, x and y, then z with the packed normal word, then the two texture floats as one 8-byte store; the normal packs the first word of its shorts with the top bit of the second in the low bit. | Inferred |
| `__glkonSendPackedVertexV3F_N3S_T2S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edce80` | 164 | `0xda778a0` | `kon_spvertarray.s` | Token 0x1b5, x and y, then z with the packed normal word, then the texture word as a single trailing store. | Inferred |
| `__glkonSendPackedVertexV3F_T2F` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edcaf8` | 120 | `0xda77518` | `kon_spvertarray.s` | Token 0x1af, x and y as one 8-byte store, then z in the upper word and the first texture float in the lower word of the second store, and the second float as a single word. | Inferred |
| `__glkonSendPackedVertexV3F_T2S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edcd7c` | 112 | `0xda7779c` | `kon_spvertarray.s` | Token 0x1b3, x and y as one 8-byte store, then z in the upper word and the texture word (the two shorts of the coordinate read as one unsigned word) in the lower word of a second store. | Inferred |
| `__glkonSwapOutList` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dadc50` | 444 | `0xd94bbb0` | `kon_dlist.c` | Copies the chain of 0x400-byte blocks that a list is being compiled into out of locked memory. It acts only when bit 2 of the current context's word at +5604 is set and the chain pointer in `a0` is non-null. | Inferred |
| `__glkon_DlistInit` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dae410` | 92 | `0xd94c340` | `kon_dlist.c` | Resets the display-list state: it clears the four process words at 0x1048 to 0x1060, writes 2 to `ctx` +0x15e4 and clears the words at +0x15d8, +0x15e0, +0x15e8 and +0x15f0, then calls `__glSPDlistSpace` with 0. | Inferred |
| `__glkon_GetDeformationd` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb800` | 204 | `0xd988ce0` | `kon_deform.c` | Reads a deformation value as doubles. It calls `getDeformationf` into a float buffer on the stack, and when that returns a non-zero count it widens each float to a double in the caller's array, with a leading pass for the count modulo 4 and then four per pass. | Inferred |
| `__glkon_GetDeformationi` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb8d0` | 204 | `0xd988db0` | `kon_deform.c` | Reads a deformation value as integers. It calls `getDeformationf` into a float buffer on the stack and, for a non-zero count, truncates each float to an integer in the caller's array, with a leading pass for the count modulo 4 and then four per pass. | Inferred |
| `__glkon_InitDlistState` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dae470` | 204 | `0xd94c3a0` | `kon_dlist.c` | Fills the display-list manager's slots in the context. | Inferred |
| `__glkon_ResumeSelectfeed` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbf140` | 264 | `0xd95cd20` | `kon_select.c` | Re-arms select or feedback delivery after `__glkon_SuspendSelectfeed`. | Inferred |
| `__glkon_SuspendSelectfeed` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbf010` | 296 | `0xd95cc00` | `kon_select.c` | Stops the pipe delivering select or feedback records so a read or query can use the command path. | Inferred |
| `__glkon_datavn` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edc8e4` | 40 | `0xda77304` | `kon_sdlist.s` | Sends a counted run of words from a pointer to the command port: if the pointer has bit 2 set it sends one word alone to restore 8-byte alignment, then 8-byte units while two or more words remain, then a trailing single word. | Inferred |
| `__glkon_dlerror` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dae8c0` | 180 | `0xd94c7f0` | `kon_dlist.c` | Records a GL error in a display list. It appends token 0xe4 and the error code to the list buffer: if the remaining-space word at process address 0x1048 is below 2 it first calls `__glSPDlistSpace` with 0, then it writes the two words at the list pointer (0x1030), advances the pointer by 8, reduces the remaining count by 2 and raises the word count at 0x1060 by 2. | Inferred |
| `__glkon_dlist_mem_alloc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafa60` | 68 | `0xd94d960` | `kon_mem.c` | Allocates display-list memory by calling `__glkon_mem_alloc` with the first field 1, zero for the next three fields and the caller's size in the fourth. | Inferred |
| `__glkon_dlist_mem_free` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafb00` | 56 | `0xd94da00` | `kon_mem.c` | Frees display-list memory through `__glkon_mem_free` with the first field 1 and a zero second field. | Inferred |
| `__glkon_dlist_mem_realloc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafab0` | 68 | `0xd94d9b0` | `kon_mem.c` | Resizes display-list memory through `__glkon_mem_realloc` with the first field 1, zeros in the middle and the caller's size in the fourth word. | Inferred |
| `__glkon_mem_realloc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf980` | 96 | `0xd94d880` | `kon_mem.c` | The resize form of `__glkon_mem_alloc`: the same 12-byte block (byte, byte, halfword, word, word) goes to `__glKon_ioctl` with request 0x271e, and the result is mapped to 0 for success and -1 for failure. | Inferred |
| `__glkon_packPixelRow` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dea6e0` | 1480 | `0xd987bd0` | `kon_pix_util.c` | Packs a row of pixels held as integers into one of the packed pixel types. The arguments are the source integer array, the destination, the packed type and the pixel count; a count of 0 or less, or a type other than the four below, does nothing (the 8_8_8_8 type 0x8035 is not handled). | Inferred |
| `__glkon_texture_mem_alloc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafb40` | 68 | `0xd94da40` | `kon_mem.c` | Allocates texture memory by calling `__glkon_mem_alloc` with the first field 3, zeros in the middle and the caller's size in the fourth word. | Inferred |
| `__glkon_texture_mem_realloc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafb90` | 68 | `0xd94da90` | `kon_mem.c` | Resizes texture memory through `__glkon_mem_realloc` with the first field 3 and the caller's size in the fourth word. | Inferred |
| `__glkonim_AlphaFunc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafd90` | 80 | `0xd94dc90` | `kon_modes.c` | The immediate-mode glAlphaFunc. The function name goes through unchecked, and the reference value (a float in `$f13`) is clamped to the range 0 to 1.0 before it is sent: the token is 0xca, followed by the function name and the clamped float. | Inferred |
| `__glkonim_ClearDepth` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbfca0` | 124 | `0xd95d830` | `kon_attrib.c` | The immediate-mode glClearDepth. When the begin flag at process address 0x1030 is 1 it calls `__glSetError` with 0x502. Otherwise it clamps the double argument to the range 0 up to a float held in `ctx` at +3884, widened to a double, and sends token 0x1f and the clamped double in one 8-byte store. | Inferred |
| `__glkonim_ConvolutionParameterfEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba4f0` | 52 | `0xd9582f0` | `kon_convolve.c` | Forwards to `__glkonim_PixelTransformParameterfSGI` and returns, so the single-float convolution parameter takes the pixel-transform path. | Inferred |
| `__glkonim_ConvolutionParameterfvEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba530` | 52 | `0xd958330` | `kon_convolve.c` | Forwards to `__glkonim_PixelTransformParameterfvSGI`; the float-array convolution parameter is handled there. | Inferred |
| `__glkonim_ConvolutionParameteriEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba470` | 52 | `0xd958270` | `kon_convolve.c` | Not a separate routine: it calls `__glkonim_PixelTransformParameteriSGI` through a library entry and returns. In this build the convolution-parameter entry shares its body with the pixel-transform parameter setter of the same argument shape. | Inferred |
| `__glkonim_ConvolutionParameterivEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba4b0` | 52 | `0xd9582b0` | `kon_convolve.c` | Calls `__glkonim_PixelTransformParameterivSGI` with its own arguments untouched and returns, sharing that function's checks and sends for the array form of the convolution parameter. | Inferred |
| `__glkonim_CopyColorTableSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de50a0` | 356 | `0xd982710` | `kon_colortable.c` | Implements glCopyColorTableSGI through the host. A begin raises 0x502 and a negative or non-power-of-two width 0x501. | Inferred |
| `__glkonim_CopyConvolutionFilter2DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db9dd0` | 312 | `0xd957c00` | `kon_convolve.c` | The two-dimensional copy for target 0x8011: `HP_COPYCONVOLUTIONFILTER2D` (token 243) with the format index, x, y, width and height, bracketed by `HP_PIXEL_NOMODE` records, and the filter's format, width and height saved at +1048, +1104 and +1108. | Inferred |
| `__glkonim_CopyPixels` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db4020` | 2800 | `0xd951f10` | `kon_pixel.c` | The Kona glCopyPixels. A begin raises 0x502 and the argument check `ParseErrorCopy` (0xd950130) can end the call. | Inferred |
| `__glkonim_CopyTexImage1DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dd3aa0` | 84 | `0xd971580` | `kon_texture_api.c` | glCopyTexImage1DEXT. Only target 0xde0 is accepted (anything else gives `__glSetError` 0x500); the call goes to `__glkonim_CopyTexImage` with the constant 1 loaded into one argument register that the one-dimensional signature does not supply. | Inferred |
| `__glkonim_CopyTexSubImage1DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dd4c80` | 108 | `0xd972720` | `kon_texture_api.c` | glCopyTexSubImage1DEXT. Target 0xde0 only, else 0x500; it calls `__glkonim_CopyTexSubImage` with zero in two argument registers and the constant 1 in a stack word. | Inferred |
| `__glkonim_DeformSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb4b0` | 92 | `0xd988990` | `kon_deform.c` | glDeformSGIX. A mask with any bit set above bit 1 (mask and -4 non-zero) calls `__glSetError` with 0x501 and sends nothing; otherwise it sends token 0x1bf followed by the mask as two words. | Inferred |
| `__glkonim_DeformationMap3dSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb0a0` | 340 | `0xd988580` | `kon_deform.c` | The double form with `HP_DEFORMATION_MAP3_1D` (token 449). The same order-2 requirement and loop, but the ranges are converted to floats and the control points are sent as 24 doubles. | Inferred |
| `__glkonim_DeformationMap3fSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deaf50` | 328 | `0xd988430` | `kon_deform.c` | The immediate glDeformationMap3fSGIX. It needs all three orders to be exactly 2 (else error 0x501), calls `deformMapProlog` with `HP_DEFORMATION_MAP3_1F` (token 448) and, if that succeeds, sends the 2 by 2 by 2 control points as 24 floats: for each of two outer steps two inner steps send three floats at the current position and three at the position one third-parameter stride on. | Inferred |
| `__glkonim_DisableClientState` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db0e90` | 616 | `0xd94ed90` | `kon_modes.c` | The inverse for the same six arrays: a begin writes 228 and 0x502, another name raises 0x500, and it sends nothing. It clears the array's bit in the word at +6080 and its field in the word at +6068. | Inferred |
| `__glkonim_DrawPixels` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db3460` | 212 | `0xd951370` | `kon_pixel.c` | The Kona glDrawPixels. A begin raises 0x502. | Inferred |
| `__glkonim_EdgeFlagPointer` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbec70` | 256 | `0xd95c860` | `kon_vertarray.c` | glEdgeFlagPointer with stride and pointer. It raises 0x502 in a begin, calls `__glim_EdgeFlagPointerEXT` with a count of 0, and tests the slot at +5832. | Inferred |
| `__glkonim_Enable` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db0180` | 1328 | `0xd94e080` | `kon_modes.c` | The Kona glEnable. `a0` is the capability. Inside a begin (the word at process address 0x1030 equal to 1) it writes the token 0xe4 and the value 0x502 to the command port (process address 0x4000) and returns, leaving the pipe to record the error. | Inferred |
| `__glkonim_End` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafcf0` | 20 | `0xd94dbf0` | `kon_modes.c` | The immediate-mode glEnd: it clears the begin flag at process address 0x1030, then sends token 0x71 and a zero pad word to the command port. It checks nothing, so an End without a Begin is passed to the pipe unchanged. | Inferred |
| `__glkonim_EvalCoord1d` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de1f90` | 80 | `0xd97f640` | `kon_eval.c` | glEvalCoord1d. | Inferred |
| `__glkonim_EvalCoord1dv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de1fe0` | 80 | `0xd97f690` | `kon_eval.c` | glEvalCoord1dv. | Inferred |
| `__glkonim_EvalCoord1f` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de2030` | 76 | `0xd97f6e0` | `kon_eval.c` | glEvalCoord1f. | Inferred |
| `__glkonim_EvalCoord2d` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de20d0` | 88 | `0xd97f780` | `kon_eval.c` | glEvalCoord2d. | Inferred |
| `__glkonim_EvalCoord2dv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de2130` | 88 | `0xd97f7e0` | `kon_eval.c` | glEvalCoord2dv. | Inferred |
| `__glkonim_EvalCoord2f` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de2190` | 76 | `0xd97f840` | `kon_eval.c` | glEvalCoord2f. | Inferred |
| `__glkonim_EvalCoord2fv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de21e0` | 80 | `0xd97f890` | `kon_eval.c` | glEvalCoord2fv. | Inferred |
| `__glkonim_EvalMesh1` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de25f0` | 152 | `0xd97fca0` | `kon_eval.c` | The Kona glEvalMesh1. A begin raises 0x502 and a mode other than 0x1b00 (point) or 0x1b01 (line) raises 0x500. | Inferred |
| `__glkonim_EvalMesh2` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de2700` | 156 | `0xd97fdb0` | `kon_eval.c` | glEvalMesh2: a begin raises 0x502 and a mode outside 0x1b00 to 0x1b02 (point, line, fill) raises 0x500. | Inferred |
| `__glkonim_EvalPoint1` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de2690` | 104 | `0xd97fd40` | `kon_eval.c` | glEvalPoint1. | Inferred |
| `__glkonim_EvalPoint2` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de27a0` | 140 | `0xd97fe50` | `kon_eval.c` | glEvalPoint2. | Inferred |
| `__glkonim_Finish` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafd10` | 92 | `0xd94dc10` | `kon_modes.c` | The immediate-mode glFinish. If the begin flag at process address 0x1030 is 1 it calls `__glSetError` with 0x502 (invalid operation). Otherwise it sends token 0xc6 and the word 1 to the command port and calls `__glkona_wait_rdata`, so it returns only after the pipe has written its reply word. | Inferred |
| `__glkonim_FogFuncSGIS` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de5df0` | 288 | `0xd9833f0` | `kon_fog.c` | glFogFuncSGIS with a point count and an array of (x, y) float pairs. A count below 1 or above 32 raises 0x501. The first x and first y must not be negative, each later x must not be below the one before, each later y must not exceed the one before and must not be negative; a violation raises 0x501. | Inferred |
| `__glkonim_GetConvolutionParameterfvEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba5b0` | 52 | `0xd9583b0` | `kon_convolve.c` | Forwards to `__glkonim_GetPixelTransformParameterfvSGI`, so the float convolution-parameter query is answered by the pixel-transform one. | Inferred |
| `__glkonim_GetConvolutionParameterivEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba570` | 52 | `0xd958370` | `kon_convolve.c` | Forwards to `__glkonim_GetPixelTransformParameterivSGI`, so reading an integer convolution parameter is the pixel-transform query. | Inferred |
| `__glkonim_GetHistogramParameterfvEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de9530` | 348 | `0xd986ab0` | `kon_histogram.c` | The float form: the same 0x502 test and `__glkon_get_special2` request 261, then the integers of the reply block (count at +4, values from +8) are each converted to a float and stored to the output, with the loop unrolled four at a time after the remainder. | Inferred |
| `__glkonim_GetHistogramParameterivEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de9430` | 248 | `0xd9869c0` | `kon_histogram.c` | The Kona glGetHistogramParameterivEXT. A begin raises 0x502. | Inferred |
| `__glkonim_GetLightfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbb970` | 260 | `0xd959710` | `kon_get.c` | The immediate-mode glGetLightfv. It calls `__glSetError` with 0x502 when the word at process address 0x1030 is 1, and with 0x500 when the light name minus 0x4000 is not below the light count at `ctx` +3944 or the parameter name is outside 0x1200-0x1209. | Inferred |
| `__glkonim_GetListParameterfvSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dad620` | 192 | `0xd94b580` | `kon_dlist.c` | Reads the SGIX list priority as a float. A begin raises 0x502, a list name of 0 raises 0x501 and a name other than 0x8182 raises 0x500. It finds the list with `__glNamesLockData`, copies the float at record +72 to the output and unlocks it; an unknown list leaves the output unchanged. | Inferred |
| `__glkonim_GetPixelMapuiv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de5780` | 524 | `0xd982dd0` | `kon_colortable.c` | The unsigned integer form with the same block fetch. | Inferred |
| `__glkonim_GetPixelTransformParameterivSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2df0920` | 200 | `0xd98d550` | `kon_pixel_transform.c` | Calls `GetPixelTransformParameterfvSGI` into a local float array and converts the returned count of floats to integers in the caller's array, four at a time after the remainder. | Inferred |
| `__glkonim_GetTexEnvfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbc0c0` | 88 | `0xd959e60` | `kon_get.c` | The immediate-mode glGetTexEnvfv: it calls `__glSetError` with 0x502 when the word at process address 0x1030 is 1, and otherwise calls `do_gettexenv` with the caller's three arguments and discards its result. | Inferred |
| `__glkonim_GetTexLevelParameterfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dd6b90` | 76 | `0xd974510` | `kon_texture_api.c` | glGetTexLevelParameterfv. It calls `__glkonim_GetTexLevelParameteriv` with its own arguments, keeps the output pointer in a saved register, and afterwards converts the integer that call stored into a float in the same place. | Inferred |
| `__glkonim_IsEnabled` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbb830` | 100 | `0xd9595d0` | `kon_get.c` | The immediate-mode glIsEnabled. It calls `kona_get_offset` with the capability name and returns 0 for a negative index. Otherwise it calls `__glkonim_GetBooleanv` with the same name and the address of a byte on its own stack, and returns that byte. | Inferred |
| `__glkonim_IsTextureEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dd23c0` | 156 | `0xd96fed0` | `kon_texture_api.c` | The Kona glIsTexture. Inside a begin it raises 0x502 and returns 0. A name of 0 returns 0. | Inferred |
| `__glkonim_LineWidth` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1a50` | 76 | `0xd94f950` | `kon_modes.c` | The immediate-mode glLineWidth. A width of zero or less sends token 0xe4 with the code 0x501 (invalid value). Otherwise it sends token 0xbd and the width, limited to at most 32.0 (the constant in the library's pool), so a wider request is sent as 32.0. | Inferred |
| `__glkonim_ListParameterfSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dad450` | 56 | `0xd94b3b0` | `kon_dlist.c` | Wraps a single float in a one-element array and forwards to `__glkonim_ListParameterfvSGIX`. | Inferred |
| `__glkonim_ListParameterfvSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dad2f0` | 340 | `0xd94b250` | `kon_dlist.c` | Sets the SGIX list priority from floats. A begin raises 0x502, a list name of 0 raises 0x501, and any name but 0x8182 raises 0x500. The value is clamped to the range 0 to 1 and, for a list found through `__glNamesLockData`, written to the record words at +72, +80 and +96. | Inferred |
| `__glkonim_MapGrid1f` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de2300` | 192 | `0xd97f9b0` | `kon_eval.c` | The float form of glMapGrid1: the same checks (0x502 in a begin, token 228 with 0x501 for a negative count), the same context block (count +2208, ends +2196 and +2200, step +2204) and the same five words after the token 40, taking the ends directly as floats instead of converting. | Inferred |
| `__glkonim_MapGrid2f` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de24e0` | 272 | `0xd97fb90` | `kon_eval.c` | The float form of glMapGrid2, with the checks, stores and token 41 record of `__glkonim_MapGrid2d` but with float ends used as given: u count +2224, ends +2212 and +2216, step +2220, v count +2240, ends +2228 and +2232, step +2236. | Inferred |
| `__glkonim_Materiali` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de6ee0` | 116 | `0xd9844e0` | `kon_materiali.c` | glMateriali. Only the name 0x1601 (shininess) is accepted, otherwise 0x500 goes to `__glSetError`. The integer is converted to a float and sent under token 0x97 after the face and the name, followed by three zero pad words. | Inferred |
| `__glkonim_PixelMapfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de4fe0` | 56 | `0xd982650` | `kon_colortable.c` | glPixelMapfv: it calls the shared pixel-map routine `do_pixelmap` with the element type 0x1406 (GL_FLOAT) in the fourth argument. | Inferred |
| `__glkonim_PixelMapuiv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de5020` | 56 | `0xd982690` | `kon_colortable.c` | glPixelMapuiv: it calls `do_pixelmap` with the element type 0x1405 (GL_UNSIGNED_INT) as the fourth argument and the rest unchanged. | Inferred |
| `__glkonim_PixelMapusv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de5060` | 56 | `0xd9826d0` | `kon_colortable.c` | glPixelMapusv: it calls `do_pixelmap` with the element type 0x1403 (GL_UNSIGNED_SHORT). | Inferred |
| `__glkonim_PixelStoref` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db8230` | 204 | `0xd956070` | `kon_pixel.c` | The float form of glPixelStorei: it raises 0x502 in a begin and otherwise calls `__glkonim_PixelStorei` with the name and an integer made from the float. | Inferred |
| `__glkonim_PixelTransferi` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db9350` | 56 | `0xd957190` | `kon_pixel.c` | The integer form of glPixelTransfer: it converts the integer value to a float and calls `__glkonim_PixelTransferf` with the parameter name unchanged and the float in `$f13`. | Inferred |
| `__glkonim_PixelTransformParameterfvSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2df02a0` | 556 | `0xd98ced0` | `kon_pixel_transform.c` | The vector glPixelTransformParameterfvSGI. A begin raises 0x502 and an unrecognised target 0x500. | Inferred |
| `__glkonim_PixelTransformParameteriSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2df04d0` | 56 | `0xd98d100` | `kon_pixel_transform.c` | Converts the integer parameter to a float and calls `__glkonim_PixelTransformParameterfSGI`, with the target and name unchanged. | Inferred |
| `__glkonim_PixelTransformParameterivSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2df0510` | 316 | `0xd98d140` | `kon_pixel_transform.c` | The integer form. A begin raises 0x502. It asks `__glPixelTransformParameterfvSGI_size` how many values the name carries (a negative answer raises 0x500), converts that many integers to floats in a local array and calls `__glkonim_PixelTransformParameterfvSGI` with them. | Inferred |
| `__glkonim_PixelZoom` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db8150` | 220 | `0xd955f90` | `kon_pixel.c` | glPixelZoom. A begin raises 0x502. A factor above a limit just over 127 (a double constant, compared after widening) raises 0x501 and is replaced by 127.0; negative factors are not checked. | Inferred |
| `__glkonim_PointSize` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1aa0` | 76 | `0xd94f9a0` | `kon_modes.c` | The immediate-mode glPointSize. A size of zero or less sends token 0xe4 with the code 0x501 (invalid value); otherwise it sends token 0xbe and the size, capped at 22.0 (a constant in the pool), so the largest point the pipe is asked for is 22 pixels wide. | Inferred |
| `__glkonim_ReadPixels` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db52d0` | 184 | `0xd9531d0` | `kon_pixel.c` | The Kona glReadPixels. A begin raises 0x502. | Inferred |
| `__glkonim_RenderMode` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbf8c0` | 520 | `0xd95d460` | `kon_select.c` | The Kona glRenderMode. A begin raises 0x502 and a mode other than 0x1c00 (render), 0x1c01 (feedback) or 0x1c02 (select) raises 0x500; both return 0. Entering feedback needs the feedback buffer pointer at context +5232 and entering select needs the select buffer pointer at +5288, otherwise it raises 0x502 and returns 0. | Inferred |
| `__glkonim_SampleMaskSGIS` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafe90` | 80 | `0xd94dd90` | `kon_modes.c` | The immediate-mode glSampleMaskSGIS. The mask value (a float in `$f12`) is clamped to 0 through 1.0 and sent under token 0x118 together with the invert flag from the second argument; a negative value becomes 0.0 and a value over 1.0 becomes 1.0. | Inferred |
| `__glkonim_SelectBuffer` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dbf250` | 284 | `0xd95ce20` | `kon_select.c` | glSelectBuffer with size and buffer. A begin raises 0x502, a negative size 0x501 and, when the render mode at +3540 is already 0x1c02 (select), 0x502. | Inferred |
| `__glkonim_SpriteParameterivSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dc61f0` | 136 | `0xd963e20` | `kon_sprite.c` | The integer form of glSpriteParameterSGIX. It converts the integer or integers to floats on the stack, one when the name is 0x8149 (GL_SPRITE_MODE_SGIX) and three for every other name, and calls `__glkonim_SpriteParameterfvSGIX` with that array. | Inferred |
| `__glkonim_SubdivPatchParameteriSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2debad0` | 56 | `0xd988fb0` | `kon_subdiv.c` | The integer form: it converts the integer value to a float and calls `__glkonim_SubdivPatchParameterfSGIX` with the name unchanged. | Inferred |
| `__glkonim_TexSubImage1DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dd4c00` | 124 | `0xd9726a0` | `kon_texture_api.c` | glTexSubImage1DEXT. Target 0xde0 only (0x500 otherwise). It loads zero into two argument registers and the constant 1 into two others, and calls `__glkonim_TexSubImage`. | Inferred |
| `__glkonim_TexSubImage3DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dd4b00` | 100 | `0xd9725a0` | `kon_texture_api.c` | glTexSubImage3DEXT. The only target accepted is 0x806f, otherwise 0x500 goes to `__glSetError`. | Inferred |
| `__glkonim_xEnable` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db0040` | 312 | `0xd94df40` | `kon_modes.c` | Enables a capability given by an extended enum through a hash table. A value above 0xffff, or one whose entry is missing, raises 0x500. The entry is the pair of halfwords at the table's byte offset 4 times ((value & 0xff) plus (value >> 7)); the first must equal the value, and the second is the pipe's own code for it. | Inferred |
| `__glkonlSendPackedVertexV3F_C4UB` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2eda540` | 552 | `0xda74f60` | `kon_gpvertarray.c` | The list-compile form of the V3F with C4UB sender: each vertex appends the token 0x1ac and then x, y and z, then the packed colour word to the list buffer, 5 words in all, and the function never stores to the command port. | Inferred |
| `__glkonlSendPackedVertexV3F_N3S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2eda770` | 616 | `0xda75190` | `kon_gpvertarray.c` | The list-compile form of the V3F with N3S sender: each vertex appends the token 0x1ad and then x, y and z, then the packed normal word to the list buffer, 5 words in all, and the function never stores to the command port. | Inferred |
| `__glkonlSendPackedVertexV3F_T2F` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edaca0` | 568 | `0xda756c0` | `kon_gpvertarray.c` | The list-compile form of the V3F with T2F sender: each vertex appends the token 0x1af and then x, y, z and then the two texture floats s and t to the list buffer, 6 words in all, and the function never stores to the command port. | Inferred |
| `__glkonlSendPackedVertexV3F_T2S` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edb780` | 552 | `0xda761a0` | `kon_gpvertarray.c` | The list-compile form of the V3F with T2S sender: each vertex appends the token 0x1b3 and then x, y, z and one word holding both texture shorts to the list buffer, 5 words in all, and the function never stores to the command port. | Inferred |
| `__glkonlc_Accum` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3f50` | 144 | `0xda6ea80` | `kon_cdlfuncs.c` | Display-list form of the accumulation-buffer operation call, which appends three words to the list. Word one is the token 0xc5 (HP_ACCUM), then the operation enumerant (the first argument) unchanged and the scalar value (the second argument) as raw single-precision bits. | Inferred |
| `__glkonlc_AlphaFunc` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafde0` | 176 | `0xd94dce0` | `kon_modes.c` | Display-list form of the alpha-test call. The comparison argument is not validated and goes in unchanged. The reference value is clamped into the range 0 to 1 before it is stored: a value below zero becomes zero and a value above one becomes one. | Inferred |
| `__glkonlc_Begin` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf2b0` | 220 | `0xd94d1b0` | `kon_dlist.c` | The compile-mode glBegin. A mode below 10 sets bit 4 of the context word at +5604 and appends two words to the list: the token `HP_BEGIN_POINTS` (87) plus the mode, which selects the begin token for that primitive, and a zero. | Inferred |
| `__glkonlc_Bitmap` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db62b0` | 576 | `0xd954170` | `kon_pixel.c` | The compile-mode glBitmap. A negative size calls `__glsplc_InvalidValue`. | Inferred |
| `__glkonlc_BlendColorEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed56d0` | 176 | `0xda70200` | `kon_cdlfuncs.c` | Display-list form of the blend-colour constant call, which appends five words to the list. | Inferred |
| `__glkonlc_BlendEquationEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5780` | 180 | `0xda702b0` | `kon_cdlfuncs.c` | Display-list form of the blend-equation selection call, which appends two words to the list. Word one is the token 0xe7 (HP_BLENDEQUATION), then the equation enumerant (the first argument) unchanged. | Inferred |
| `__glkonlc_CallList` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf390` | 272 | `0xd94d290` | `kon_dlist.c` | The compile-mode glCallList. If a begin is open (bit 4 of the word at +5604) it first flushes the pending words, clears bit 4, sets bit 1 and adds the end-of-begin handler to the instruction list, then reserves one word. | Inferred |
| `__glkonlc_CallLists` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf4a0` | 284 | `0xd94d3a0` | `kon_dlist.c` | The compile-mode glCallLists, with exactly the same begin-closing preamble as `__glkonlc_CallList`, followed by a call to `__glsplc_CallLists` with its three arguments. | Inferred |
| `__glkonlc_Clear` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1990` | 180 | `0xd94f890` | `kon_modes.c` | Display-list form of the buffer clear call, which appends two words to the list. Word one is the token 0x1a (HP_CLEAR), then the buffer-selection mask (the first argument) unchanged. | Inferred |
| `__glkonlc_ClearAccum` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daf710` | 304 | `0xd94d610` | `kon_dlist.c` | Display-list form of the accumulation-buffer clear colour call. If the word at process address 4144 equals 1 it calls `__glSetError` with 1282 (invalid operation) and records nothing. | Inferred |
| `__glkonlc_ClearIndex` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3ae0` | 180 | `0xda6e610` | `kon_cdlfuncs.c` | Display-list form of the colour-index clear value call, which appends two words to the list. Word one is the token 0x1c (HP_CLEARINDEX), then the index value (the first argument) as raw single-precision bits. | Inferred |
| `__glkonlc_ClearStencil` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3ba0` | 180 | `0xda6e6d0` | `kon_cdlfuncs.c` | Display-list form of the stencil clear value call, which appends two words to the list. Word one is the token 0x1e (HP_CLEARSTENCIL), then the stencil value (the first argument) unchanged. | Inferred |
| `__glkonlc_Color3bv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecc660` | 156 | `0xda67190` | `kon_cdlfuncs.c` | Display-list form of the colour call with three signed-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color3sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2eccbc0` | 152 | `0xda676f0` | `kon_cdlfuncs.c` | Display-list form of the colour call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color3ubv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2eccd00` | 156 | `0xda67830` | `kon_cdlfuncs.c` | Display-list form of the colour call with three unsigned-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color3usv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2eccf80` | 152 | `0xda67ab0` | `kon_cdlfuncs.c` | Display-list form of the colour call with three unsigned-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4b` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecd020` | 184 | `0xda67b50` | `kon_cdlfuncs.c` | Display-list form of the colour call with four signed-byte components passed in registers: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4bv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecd0e0` | 168 | `0xda67c10` | `kon_cdlfuncs.c` | Display-list form of the colour call with four signed-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4s` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecd600` | 176 | `0xda68130` | `kon_cdlfuncs.c` | Display-list form of the colour call with four signed-short components passed in registers: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecd6b0` | 164 | `0xda681e0` | `kon_cdlfuncs.c` | Display-list form of the colour call with four signed-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4ubv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecd810` | 168 | `0xda68340` | `kon_cdlfuncs.c` | Display-list form of the colour call with four unsigned-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4us` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecda10` | 172 | `0xda68540` | `kon_cdlfuncs.c` | Display-list form of the colour call with four unsigned-short components passed in registers: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Color4usv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecdac0` | 164 | `0xda685f0` | `kon_cdlfuncs.c` | Display-list form of the colour call with four unsigned-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_ColorMask` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3d20` | 164 | `0xda6e850` | `kon_cdlfuncs.c` | Display-list form of the colour write-mask call, which appends five words to the list. Word one is the token 0x21 (HP_COLORMASK), then the red enable (the first argument) unchanged, the green enable (the second argument) unchanged, the blue enable (the third argument) unchanged and the alpha enable (the fourth argument) unchanged. | Inferred |
| `__glkonlc_ColorMaterial` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed1f80` | 140 | `0xda6cab0` | `kon_cdlfuncs.c` | Display-list form of the colour-material tracking call, which appends three words to the list. Word one is the token 0xb5 (HP_COLORMATERIAL), then the face enumerant (the first argument) unchanged and the mode enumerant (the second argument) unchanged. | Inferred |
| `__glkonlc_ColorTableParameterfvSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5d00` | 180 | `0xda70830` | `kon_cdlfuncs.c` | Display-list form of the colour-table parameter call with a float vector, which appends seven words to the list. Word one is the token 0xeb (HP_COLORTABLEPARAMETERFV), then the table target (the first argument) unchanged, the parameter name (the second argument) unchanged and the four floats read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_ColorTableParameterivSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5dc0` | 212 | `0xda708f0` | `kon_cdlfuncs.c` | Display-list form of the colour-table parameter call with an integer vector, which appends seven words to the list. Word one is the token 0xeb (HP_COLORTABLEPARAMETERFV), then the table target (the first argument) unchanged, the parameter name (the second argument) unchanged and the four integers each converted to single precision read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_DeformSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb510` | 164 | `0xd9889f0` | `kon_deform.c` | Display-list form of the deformation call. The mask argument must have no bit set above the low two (values 0 to 3); otherwise `__glsplc_InvalidValue` raises the invalid-value error (1281) through the context hook and nothing is recorded. | Inferred |
| `__glkonlc_DeformationMap3dSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb430` | 128 | `0xd988910` | `kon_deform.c` | Converts the double range arguments to floats and calls `lcDeformationMap3` with the remaining arguments unchanged; it records nothing itself. | Inferred |
| `__glkonlc_DeformationMap3fSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb3c0` | 108 | `0xd9888a0` | `kon_deform.c` | A tail call to `lcDeformationMap3` with the arguments it received. | Inferred |
| `__glkonlc_DepthMask` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3dd0` | 180 | `0xda6e900` | `kon_cdlfuncs.c` | Display-list form of the depth-buffer write-enable call, which appends two words to the list. Word one is the token 0x22 (HP_DEPTHMASK), then the enable flag (the first argument) unchanged. | Inferred |
| `__glkonlc_DepthRange` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed4590` | 176 | `0xda6f0c0` | `kon_cdlfuncs.c` | Display-list form of the depth-range call, which appends five words to the list. Word one is the token 0xcf (HP_DEPTHRANGE), then the near value (the first argument) as a double, high half then low half and the far value (the second argument) as a double, high half then low half. | Inferred |
| `__glkonlc_EdgeFlag` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecdb70` | 180 | `0xda686a0` | `kon_cdlfuncs.c` | Display-list form of the edge-flag call taking the flag by value, which appends two words to the list. Word one is the token 0xa7 (HP_EDGEFLAG), then the flag (the first argument) unchanged. | Inferred |
| `__glkonlc_EdgeFlagv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecdc30` | 188 | `0xda68760` | `kon_cdlfuncs.c` | Display-list form of the edge-flag call taking a pointer to the flag, which appends two words to the list. Word one is the token 0xa7 (HP_EDGEFLAG), then the unsigned byte at offset 0 of the pointer argument. | Inferred |
| `__glkonlc_FogFuncSGIS` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de5f10` | 524 | `0xd983510` | `kon_fog.c` | The compile-mode glFogFuncSGIS. The point count must be 1 to 32 and the first pair non-negative, and each following pair must have an x not below the previous x, a y no larger than the previous y and a non-negative y; any violation calls `__glsplc_InvalidValue`. | Inferred |
| `__glkonlc_Frustum` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed4640` | 304 | `0xda6f170` | `kon_cdlfuncs.c` | Display-list form of the perspective frustum call, which appends thirteen words to the list. | Inferred |
| `__glkonlc_LightModelfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed29a0` | 168 | `0xda6d4d0` | `kon_cdlfuncs.c` | Display-list form of the lighting-model call with a float vector, which appends six words to the list. Word one is the token 0x9 (HP_LIGHTMODELF), then the parameter name (the first argument) unchanged and the four floats read from the vector (the second argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_LightModeliv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed2b20` | 168 | `0xda6d650` | `kon_cdlfuncs.c` | Display-list form of the lighting-model call with an integer vector, which appends six words to the list. Word one is the token 0xa (HP_LIGHTMODELI), then the parameter name (the first argument) unchanged and the four 32-bit words read from the vector (the second argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_Lightfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed2680` | 180 | `0xda6d1b0` | `kon_cdlfuncs.c` | Display-list form of the light-source parameter call with a float vector, which appends seven words to the list. Word one is the token 0x7 (HP_LIGHTF), then the light number (the first argument) unchanged, the parameter name (the second argument) unchanged and the four floats read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_Lightiv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed2810` | 180 | `0xda6d340` | `kon_cdlfuncs.c` | Display-list form of the light-source parameter call with an integer vector, which appends seven words to the list. Word one is the token 0x8 (HP_LIGHTI), then the light number (the first argument) unchanged, the parameter name (the second argument) unchanged and the four 32-bit words read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_LineStipple` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed2bd0` | 140 | `0xda6d700` | `kon_cdlfuncs.c` | Display-list form of the line-stipple call, which appends three words to the list. Word one is the token 0xbc (HP_LINESTIPPLE), then the repeat factor (the first argument) unchanged and the pattern (the second argument) unchanged. | Inferred |
| `__glkonlc_LineWidth` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1af0` | 184 | `0xd94f9f0` | `kon_modes.c` | The compile-mode glLineWidth. A width of 0 or less is an invalid value. It appends `HP_LINEWIDTH` (token 189), the width, and the width limited to 32.0. | Inferred |
| `__glkonlc_LoadIdentityDeformationMapSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2deb5e0` | 188 | `0xd988ac0` | `kon_deform.c` | Display-list form of the deformation-map identity call, which appends two words to the list. Word one is the token 0x1c3 (HP_LOAD_IDENTITY_DEFORMATION), then the first argument masked to its low two bits. | Inferred |
| `__glkonlc_Materialfv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed2d30` | 180 | `0xda6d860` | `kon_cdlfuncs.c` | Display-list form of the material parameter call with a float vector, which appends seven words to the list. Word one is the token 0x97 (HP_MATERIALF), then the face enumerant (the first argument) unchanged, the parameter name (the second argument) unchanged and the four floats read from the vector (the third argument) at offsets 0 to 12. | Inferred |
| `__glkonlc_Materialiv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de7100` | 368 | `0xd984700` | `kon_materiali.c` | The compile-mode integer glMaterialiv, as a seven-word `HP_MATERIALF` record (token 151) of face, parameter and four value words. The parameters 0x1601 (shininess) and 0x1603 (colour indexes) copy up to three integers as floats with a zero last word; every other parameter scales four integers by the constant 2^-31 (0x30000000), mapping the integer colour range onto -1 to 1. | Inferred |
| `__glkonlc_Normal3bv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ece320` | 156 | `0xda68e50` | `kon_cdlfuncs.c` | Display-list form of the normal call with three signed-byte components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Normal3sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ece880` | 152 | `0xda693b0` | `kon_cdlfuncs.c` | Display-list form of the normal call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Ortho` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed4ee0` | 304 | `0xda6fa10` | `kon_cdlfuncs.c` | Display-list form of the orthographic projection call, which appends thirteen words to the list. | Inferred |
| `__glkonlc_PassThrough` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed37f0` | 180 | `0xda6e320` | `kon_cdlfuncs.c` | Display-list form of the feedback pass-through marker call, which appends two words to the list. Word one is the token 0xc1 (HP_PASSTHROUGH), then the marker value (the first argument) as raw single-precision bits. | Inferred |
| `__glkonlc_PointParameterfvSGIS` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dc6e60` | 536 | `0xd964a70` | `kon_point_parameters.c` | The vector form: the same three single-value parameters and range tests, appended as `HP_POINTPARAMETERF` (token 423), plus parameter 0x8129 (distance attenuation), which appends `HP_POINTPARAMETERFV` (token 424), the parameter and three floats unchecked. | Inferred |
| `__glkonlc_PointSize` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1bb0` | 184 | `0xd94fab0` | `kon_modes.c` | The compile-mode glPointSize. A size of 0 or less calls `__glsplc_InvalidValue`. It appends three words: `HP_POINTSIZE` (token 190), the size, and the size limited to 22.0. | Inferred |
| `__glkonlc_PolygonOffset` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5a50` | 144 | `0xda70580` | `kon_cdlfuncs.c` | Display-list form of the standard polygon-offset call, which appends three words to the list. Word one is the token 0x168 (HP_POLYGONOFFSET), then the scale factor (the first argument) as raw single-precision bits and the units value (the second argument) as raw single-precision bits. | Inferred |
| `__glkonlc_PolygonOffsetEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5840` | 144 | `0xda70370` | `kon_cdlfuncs.c` | Display-list form of the extension polygon-offset call, which appends three words to the list. Word one is the token 0x11b (HP_POLYGONOFFSETEXT), then the scale factor (the first argument) as raw single-precision bits and the bias value (the second argument) as raw single-precision bits. | Inferred |
| `__glkonlc_RasterPos3sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecf2a0` | 148 | `0xda69dd0` | `kon_cdlfuncs.c` | Display-list form of the raster position call with three signed-short components read through a vector pointer: it appends four words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_RasterPos4sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ecf860` | 156 | `0xda6a390` | `kon_cdlfuncs.c` | Display-list form of the raster position call with four signed-short components read through a vector pointer: it appends five words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Rectd` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de6660` | 360 | `0xd983c60` | `kon_rect.c` | Display-list form of the double-precision rectangle call with four coordinate arguments, which appends twenty-four words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_Rectdv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de67d0` | 364 | `0xd983dd0` | `kon_rect.c` | Display-list form of the double-precision rectangle call with two vector pointers, which appends twenty-four words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_Rects` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de6cf0` | 224 | `0xd9842f0` | `kon_rect.c` | Display-list form of the short rectangle call with four coordinate arguments, which appends twelve words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_Rectsv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de6dd0` | 264 | `0xd9843d0` | `kon_rect.c` | Display-list form of the short rectangle call with two vector pointers, which appends twelve words: a rectangle-begin record, four vertex records and an end record. | Inferred |
| `__glkonlc_ReferencePlaneSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed6350` | 220 | `0xda70e80` | `kon_cdlfuncs.c` | Display-list form of the reference-plane call taking a four-double pointer, which appends nine words to the list. Word one is the token 0x1bd (HP_REFERENCE_PLANE), then the four doubles read from the vector (the first argument) at offsets 0 to 24, each high half then low half. | Inferred |
| `__glkonlc_Rotated` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5170` | 240 | `0xda6fca0` | `kon_cdlfuncs.c` | Display-list form of the rotation call in doubles, which appends nine words to the list. | Inferred |
| `__glkonlc_Rotatef` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5260` | 176 | `0xda6fd90` | `kon_cdlfuncs.c` | Display-list form of the rotation call in floats, which appends five words to the list. Word one is the token 0xdb (HP_ROTATEF), then the angle (the first argument) as raw single-precision bits, the x axis component (the second argument) as raw single-precision bits, the y axis component (the third argument) as raw single-precision bits and the z axis component (the fourth argument) as raw single-precision bits. | Inferred |
| `__glkonlc_SampleMaskSGIS` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dafee0` | 176 | `0xd94dde0` | `kon_modes.c` | The compile-mode glSampleMaskSGIS. The mask value is clamped to the range 0.0 to 1.0, then three words are appended: `HP_SAMPLEMASK` (token 280), the clamped value and the invert flag argument unchanged. | Inferred |
| `__glkonlc_SamplePatternSGIS` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5c30` | 180 | `0xda70760` | `kon_cdlfuncs.c` | Display-list form of the multisample pattern selection call, which appends two words to the list. Word one is the token 0x117 (HP_SAMPLEPATTERN), then the pattern (the first argument) unchanged. | Inferred |
| `__glkonlc_Scaled` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5310` | 208 | `0xda6fe40` | `kon_cdlfuncs.c` | Display-list form of the scale call in doubles, which appends seven words to the list. Word one is the token 0xdc (HP_SCALED), then the x factor (the first argument) as a double, high half then low half, the y factor (the second argument) as a double, high half then low half and the z factor (the third argument) as a double, high half then low half. | Inferred |
| `__glkonlc_Scalef` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed53e0` | 160 | `0xda6ff10` | `kon_cdlfuncs.c` | Display-list form of the scale call in floats, which appends four words to the list. Word one is the token 0xdd (HP_SCALEF), then the x factor (the first argument) as raw single-precision bits, the y factor (the second argument) as raw single-precision bits and the z factor (the third argument) as raw single-precision bits. | Inferred |
| `__glkonlc_ShadeModel` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed2fd0` | 180 | `0xda6db00` | `kon_cdlfuncs.c` | Display-list form of the shade-model selection call, which appends two words to the list. Word one is the token 0xc0 (HP_SHADEMODEL), then the mode (the first argument) unchanged. | Inferred |
| `__glkonlc_SpriteParameterivSGIX` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dc6420` | 136 | `0xd964050` | `kon_sprite.c` | Converts the integers to floats on the stack, one for parameter 0x8149 and three otherwise, and passes them to `__glkonlc_SpriteParameterfvSGIX` with the parameter. It checks and records nothing itself. | Inferred |
| `__glkonlc_TexCoord3sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed0800` | 152 | `0xda6b330` | `kon_cdlfuncs.c` | Display-list form of the texture coordinate call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_TexCoord4s` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed0d10` | 176 | `0xda6b840` | `kon_cdlfuncs.c` | Display-list form of the texture coordinate call with four signed-short components passed in registers: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_TexCoord4sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed0dc0` | 164 | `0xda6b8f0` | `kon_cdlfuncs.c` | Display-list form of the texture coordinate call with four signed-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_TexEnvf` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3090` | 216 | `0xda6dbc0` | `kon_cdlfuncs.c` | The compile-mode single-float glTexEnv. Only target 0x2300 with parameter 0x2200 (the environment mode) is accepted; any other target or parameter calls `__glsplc_InvalidEnum`. It appends six words: `HP_TEXENVF` (token 17), 0x2200, the value and three zeros. | Inferred |
| `__glkonlc_TexEnvi` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3270` | 212 | `0xda6dda0` | `kon_cdlfuncs.c` | The integer form, with the same target 0x2300 and parameter 0x2200 checks, appending `HP_TEXENVI` (token 18), 0x2200, the integer value and three zeros. | Inferred |
| `__glkonlc_TexEnviv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3350` | 252 | `0xda6de80` | `kon_cdlfuncs.c` | The integer vector form with the same target and parameter set, appending `HP_TEXENVI` (token 18), the parameter and four integer words copied unchanged. | Inferred |
| `__glkonlc_TexGend` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3450` | 184 | `0xda6df80` | `kon_cdlfuncs.c` | The double-precision twin of `__glkonlc_TexGenf`: the same ten-word `HP_TEXGENF` record with the double converted to the value word, and no argument checks. | Inferred |
| `__glkonlc_TexGendv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1430` | 448 | `0xd94f330` | `kon_modes.c` | The double vector glTexGen with the same ten-word `HP_TEXGENF` layout and parameter groups, converting each double of the plane parameters to a float. | Inferred |
| `__glkonlc_TexGenf` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed3510` | 184 | `0xda6e040` | `kon_cdlfuncs.c` | The compile-mode single-value glTexGen. It always appends ten words without checking the enums: `HP_TEXGENF` (token 20), the coordinate, the parameter, the value and six zeros. | Inferred |
| `__glkonlc_TexGeni` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed35d0` | 176 | `0xda6e100` | `kon_cdlfuncs.c` | Display-list form of the integer texture-coordinate generation call, which appends ten words to the list. Word one is the token 0x14 (HP_TEXGENF), then the coordinate enumerant (the first argument) unchanged, the parameter name (the second argument) unchanged, the parameter value (the third argument) unchanged and six zero words. | Inferred |
| `__glkonlc_TexGeniv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db1790` | 488 | `0xd94f690` | `kon_modes.c` | The integer vector glTexGen with the same three parameter groups and ten-word record as `__glkonlc_TexGenfv`, converting the integers of the plane parameters to floats and storing the single mode value as an integer. | Inferred |
| `__glkonlc_Translated` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5480` | 208 | `0xda6ffb0` | `kon_cdlfuncs.c` | Display-list form of the translation call in doubles, which appends seven words to the list. Word one is the token 0xde (HP_TRANSLATED), then the x offset (the first argument) as a double, high half then low half, the y offset (the second argument) as a double, high half then low half and the z offset (the third argument) as a double, high half then low half. | Inferred |
| `__glkonlc_Translatef` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed5550` | 160 | `0xda70080` | `kon_cdlfuncs.c` | Display-list form of the translation call in floats, which appends four words to the list. Word one is the token 0xdf (HP_TRANSLATEF), then the x offset (the first argument) as raw single-precision bits, the y offset (the second argument) as raw single-precision bits and the z offset (the third argument) as raw single-precision bits. | Inferred |
| `__glkonlc_Vertex3sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed17f0` | 152 | `0xda6c320` | `kon_cdlfuncs.c` | Display-list form of the vertex position call with three signed-short components read through a vector pointer: it appends two words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Vertex4s` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed1d00` | 176 | `0xda6c830` | `kon_cdlfuncs.c` | Display-list form of the vertex position call with four signed-short components passed in registers: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Vertex4sv` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed1db0` | 164 | `0xda6c8e0` | `kon_cdlfuncs.c` | Display-list form of the vertex position call with four signed-short components read through a vector pointer: it appends three words to the list instead of writing them to the command port. | Inferred |
| `__glkonlc_Viewport` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2ed55f0` | 220 | `0xda70120` | `kon_cdlfuncs.c` | The compile-mode glViewport. A negative width or height calls `__glsplc_InvalidValue`; otherwise it appends five words, `HP_VIEWPORT` (token 227), x, y, width and height, making room first when fewer than five remain. | Inferred |
| `__glkonle_Bitmap` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2db64f0` | 116 | `0xd9543b0` | `kon_pixel.c` | The list-execution glBitmap. It saves and sets the pixel modes with `__glKonSetPixelLEModes`, loads the width, height, origin and move values (word at 0, word at 4, four floats at 8 to 0x14) from the record argument, calls `__glkonim_Bitmap`, and restores the modes. | Inferred |
| `__glkonle_ColorTableSGI` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2de4620` | 128 | `0xd981cc0` | `kon_colortable.c` | The list-execution glColorTableSGI. It sets the pixel modes with `__glKonSetPixelLEModes`, calls `__glkonim_ColorTableSGI` with the arguments restored from the stack, and then restores the modes. | Inferred |
| `__glkonle_ConvolutionFilter1DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba5f0` | 224 | `0xd9583f0` | `kon_convolve.c` | The display-list player for glConvolutionFilter1DEXT. A begin raises 0x502 and skips the record; a state of 2 first ends the current begin through the context hook at +18248. | Inferred |
| `__glkonle_ConvolutionFilter2DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba6d0` | 228 | `0xd9584d0` | `kon_convolve.c` | The player for the two-dimensional filter record, built the same way with target 0x8011, the record's five arguments and the data after the 28-byte header, returning the pointer past the data. | Inferred |
| `__glkonle_Push` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2edc880` | 100 | `0xda772a0` | `kon_sdlist.s` | Replays a recorded run of words to the command port. The record starts with a count word, and the data follows it. When the record's address has bit 2 clear it first sends one word alone so that the doubleword stores that follow are 8-byte aligned, then sends 8-byte units while at least two words remain, then a final single word if one is left. | Inferred |
| `__glkonle_SeparableFilter2DEXT` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2dba7c0` | 256 | `0xd9585c0` | `kon_convolve.c` | The player for the separable filter record: it calls `__glkonim_SeparableFilter2DEXT` with target 0x8012, the record's arguments, the row data after the 32-byte header and the column data 32 bytes per row-length entry further on, and returns the pointer past both lengths rounded to 4 bytes. | Inferred |
| `__glkonle_SetBegin` | `usr/gfx/arch/IP27KONA64/libGLcore.so` | `0x2daede0` | 16 | `0xd94cd00` | `kon_dlist.c` | Sets the begin flag at process address 0x1030 to 1 and returns its argument unchanged. | Inferred |

What was compared for the 64-bit rows above:

| Routine | Callees, in order | FIFO stores | Constants |
|---|---|---|---|
| `__glKonCleanUp1D` | `indirect` x2, `__glKonHostMapData1D`, `indirect` x2, `__glKonHostMapData1D`, `indirect` x2, `__glKonHostMapData1D`, `indirect` x2, `__glKonHostMapData1D`, `indirect` x4, `__glKonSendMapSpec1D` x4, `__glKonSendMapData1D` x4 | 2 | `0x2c`, `0xd1` |
| `__glKonDefaultState` | `__glkonim_PixelStorei` x20 | 0 | `0xcf0`, `0xcf1`, `0xcf2`, `0xcf3`, `0xcf4`, `0xcf5` |
| `__glKonEvalCoord1DHost` | `EvalRow1D` | 0 | `none` |
| `__glKonEvalMesh1DHost` | `indirect`, `EvalRow1D`, `indirect` x2, `EvalRow1D`, `indirect` x2, `EvalRow1D`, `indirect` x2, `EvalRow1D`, `indirect` | 0 | `0x100`, `0x1b00`, `0x1b01` |
| `__glKonEvalMesh2DGe11` | `none` | 56 | `0x10`, `0x11`, `0x12`, `0x13`, `0x27`, `0x32` |
| `__glKonExecuteLDMA` | `none` | 3 | `0x16d` |
| `__glKonFreeEvaluators` | `indirect` x10 | 0 | `none` |
| `__glKonGetTexParameter` | `__glSetError` | 0 | `0x500`, `0x2800`, `0x2801`, `0x2802`, `0x2803`, `0x2804` |
| `__glKonGetTexParams` | `__glKonGetTexParameter` x27 | 0 | `0x2800`, `0x2801`, `0x2802`, `0x2803`, `0x8066`, `0x8072` |
| `__glKonInitColortableState` | `none` | 0 | `none` |
| `__glKonInitConvolutionState` | `none` | 0 | `0x1908`, `0x8010`, `0x8012`, `0x8016` |
| `__glKonInitEvaluators` | `indirect` x2 | 0 | `none` |
| `__glKonInitializeEnables` | `fprintf`, `exit` | 0 | `0xff` |
| `__glKonLockedMemoryForceSwapIn` | `__glKonLockedMemorySwapIn`, `__glDlistHeapQueryMin`, `__glKonLockedMemorySwapOut`, `__glKonLockedMemorySwapIn` | 0 | `none` |
| `__glKonParseInput` | `indirect` x2 | 0 | `0x500`, `0x1400`, `0x1407`, `0x1900`, `0x190b`, `0x1a00` |
| `__glKonSdramForceSwapIn` | `__glKonSdramSwapIn`, `__glDlistHeapPriorityChanged`, `__glDlistHeapQueryMin`, `__glKonSdramInvalidate`, `__glDlistHeapPriorityChanged` | 0 | `0x20` |
| `__glKonSendMapData1D` | `none` | 11 | `0x2a` |
| `__glKonSendMapData2D` | `none` | 14 | `0x2b` |
| `__glKonSendPackedVertex` | `glBegin`, `indirect`, `glEnd` | 5 | `0xff`, `0x1b7`, `0x1cf` |
| `__glKonSetPixelLEModes` | `__glKonPushState`, `__glKonDefaultState`, `__glkonim_PixelStorei` | 0 | `0xcf5` |
| `__glKonUnsetLEModes` | `__glKonPopState` | 0 | `none` |
| `__glkonAdjustPlist` | `none` | 0 | `none` |
| `__glkonCompressPlist` | `none` | 0 | `0xff` |
| `__glkonDrawArraysCEV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysCIEV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysCIV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysCTEV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysCTIEV` | `indirect` x10 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysCTIV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysCTV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysCV` | `indirect` x4 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysEV` | `indirect` x4 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysIEV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysIV` | `indirect` x4 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNCEV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNCIEV` | `indirect` x10 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNCIV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNCTEV` | `indirect` x10 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNCTIEV` | `indirect` x12 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNCTIV` | `indirect` x10 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNCTV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNCV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNEV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNIEV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNIV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNTEV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNTIEV` | `indirect` x10 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNTIV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysNTV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysNV` | `indirect` x4 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysTEV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysTIEV` | `indirect` x8 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonDrawArraysTIV` | `indirect` x6 | 5 | `0x182`, `0x1a1`, `0xbeef` |
| `__glkonDrawArraysTV` | `indirect` x4 | 5 | `0x182`, `0x1a3`, `0xbeef` |
| `__glkonSPBalloc` | `indirect`, `__glkonim_GetIntegerv`, `__glDlistFreeTransient`, `__glkonSwapOutList`, `indirect`, `__glkonSwapOutList`, `indirect` | 0 | `0x20`, `0x400`, `0xbd0` |
| `__glkonSPValidateDlist` | `__glkonSPValidateOnlyDlist`, `indirect` | 0 | `none` |
| `__glkonSPValidateLocalDlist` | `__glKonSdramForceSwapIn` | 0 | `none` |
| `__glkonSPValidateOnlyDlist` | `__glkonDlistMemUsage`, `__glkonSPValidateLocalDlist`, `indirect`, `__glkonCompressPlist`, `__glkonAdjustPlist`, `__glKonLockedMemoryForceSwapIn` | 0 | `0x10`, `0x20`, `0x4c` |
| `__glkonSendPackedVertexV3F` | `none` | 3 | `0x1ab` |
| `__glkonSendPackedVertexV3F_C4UB` | `none` | 3 | `0x1ac` |
| `__glkonSendPackedVertexV3F_C4UB_N3S` | `none` | 4 | `0x1ae` |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2F` | `none` | 5 | `0x1b2` |
| `__glkonSendPackedVertexV3F_C4UB_N3S_T2S` | `none` | 4 | `0x1b6` |
| `__glkonSendPackedVertexV3F_C4UB_T2F` | `none` | 4 | `0x1b0` |
| `__glkonSendPackedVertexV3F_C4UB_T2S` | `none` | 4 | `0x1b4` |
| `__glkonSendPackedVertexV3F_N3S` | `none` | 3 | `0x1ad` |
| `__glkonSendPackedVertexV3F_N3S_T2F` | `none` | 4 | `0x1b1` |
| `__glkonSendPackedVertexV3F_N3S_T2S` | `none` | 4 | `0x1b5` |
| `__glkonSendPackedVertexV3F_T2F` | `none` | 4 | `0x1af` |
| `__glkonSendPackedVertexV3F_T2S` | `none` | 3 | `0x1b3` |
| `__glkonSwapOutList` | `indirect`, `memmove`, `indirect` | 0 | `0x400` |
| `__glkon_DlistInit` | `__glSPDlistSpace` | 0 | `none` |
| `__glkon_GetDeformationd` | `getDeformationf` | 0 | `none` |
| `__glkon_GetDeformationi` | `getDeformationf` | 0 | `none` |
| `__glkon_InitDlistState` | `getenv` | 0 | `none` |
| `__glkon_ResumeSelectfeed` | `StartSelectFeed` x3 | 0 | `0x1c01`, `0x1c02` |
| `__glkon_SuspendSelectfeed` | `FinishSelectFeed` x3 | 0 | `0x1c01`, `0x1c02` |
| `__glkon_datavn` | `none` | 1 | `none` |
| `__glkon_dlerror` | `__glSPDlistSpace` | 0 | `0xe4` |
| `__glkon_dlist_mem_alloc` | `__glkon_mem_alloc` | 0 | `none` |
| `__glkon_dlist_mem_free` | `__glkon_mem_free` | 0 | `none` |
| `__glkon_dlist_mem_realloc` | `__glkon_mem_realloc` | 0 | `none` |
| `__glkon_mem_realloc` | `__glKon_ioctl` | 0 | `0x271e` |
| `__glkon_packPixelRow` | `none` | 0 | `0x1f`, `0x3ff`, `0x8032`, `0x8033`, `0x8034`, `0x8036` |
| `__glkon_texture_mem_alloc` | `__glkon_mem_alloc` | 0 | `none` |
| `__glkon_texture_mem_realloc` | `__glkon_mem_realloc` | 0 | `none` |
| `__glkonim_AlphaFunc` | `none` | 6 | `0xca` |
| `__glkonim_ClearDepth` | `__glSetError` | 2 | `0x1f`, `0x502` |
| `__glkonim_ConvolutionParameterfEXT` | `__glkonim_PixelTransformParameterfSGI` | 0 | `none` |
| `__glkonim_ConvolutionParameterfvEXT` | `__glkonim_PixelTransformParameterfvSGI` | 0 | `none` |
| `__glkonim_ConvolutionParameteriEXT` | `__glkonim_PixelTransformParameteriSGI` | 0 | `none` |
| `__glkonim_ConvolutionParameterivEXT` | `__glkonim_PixelTransformParameterivSGI` | 0 | `none` |
| `__glkonim_CopyColorTableSGI` | `indirect`, `__glKonPushState`, `__glKonDefaultState`, `__glkonim_ReadPixels`, `__glkonim_ColorTableSGI`, `__glKonPopState`, `__glSetError` | 6 | `0x111`, `0x501`, `0x502`, `0x1403`, `0x1908` |
| `__glkonim_CopyConvolutionFilter2DEXT` | `__glChkConvFilterArgs`, `__glSetError` x2 | 12 | `0x10`, `0xf3`, `0x111`, `0x500`, `0x502`, `0x8011` |
| `__glkonim_CopyPixels` | `ParseErrorCopy`, `GetConvolutionFilter`, `GetSingleCompFromPipe`, `CopyConvIsOverlapped`, `__glkon_OverlappedCopy`, `CopyIsOverlapped`, `__glkon_OverlappedCopy`, `__glSetError`, `__glkon_OverlappedCopy`, `indirect`, `__glKonSetNoModeState`, `__glkonim_ReadPixels`, `__glKonSetNoModeState`, `__glKonParseHostImage`, `DoDrawPixelsOrTexels`, `__glKonSetNoModeState`, `indirect`, `__glSetError`, `__glkonim_ReadPixels` x2, `__glKonParseHostImage`, `DoDrawPixelsOrTexels` | 64 | `0x38`, `0x41`, `0x42`, `0x100`, `0x501`, `0x502` |
| `__glkonim_CopyTexImage1DEXT` | `__glSetError`, `__glkonim_CopyTexImage` | 0 | `0x500`, `0xde0` |
| `__glkonim_CopyTexSubImage1DEXT` | `__glSetError`, `__glkonim_CopyTexSubImage` | 0 | `0x500`, `0xde0` |
| `__glkonim_DeformSGIX` | `__glSetError` | 2 | `0x1bf`, `0x501` |
| `__glkonim_DeformationMap3dSGIX` | `indirect`, `deformMapProlog` | 6 | `0x1c1`, `0x501` |
| `__glkonim_DeformationMap3fSGIX` | `indirect`, `deformMapProlog` | 6 | `0x1c0`, `0x501` |
| `__glkonim_DisableClientState` | `__glSetError` | 2 | `0x10`, `0x20`, `0xe4`, `0x500`, `0x502`, `0x8074` |
| `__glkonim_DrawPixels` | `__glKonParseInput`, `__glKonParseErrorDraw`, `__glKonParseHostImage`, `DrawPixels`, `__glSetError` | 0 | `0x41`, `0x502` |
| `__glkonim_EdgeFlagPointer` | `__glim_EdgeFlagPointerEXT`, `compute_func_ptr`, `__glSetError` | 0 | `0x10`, `0x502` |
| `__glkonim_Enable` | `indirect` x2, `ValidateHistogramSink` x2, `__glKonEvalEnable` | 4 | `0x10`, `0x20`, `0x24`, `0x40`, `0xe4`, `0xff` |
| `__glkonim_End` | `none` | 2 | `0x71` |
| `__glkonim_EvalCoord1d` | `indirect` | 0 | `none` |
| `__glkonim_EvalCoord1dv` | `indirect` | 0 | `none` |
| `__glkonim_EvalCoord1f` | `indirect` | 0 | `none` |
| `__glkonim_EvalCoord2d` | `indirect` | 0 | `none` |
| `__glkonim_EvalCoord2dv` | `indirect` | 0 | `none` |
| `__glkonim_EvalCoord2f` | `indirect` | 0 | `none` |
| `__glkonim_EvalCoord2fv` | `indirect` | 0 | `none` |
| `__glkonim_EvalMesh1` | `indirect` x2, `__glSetError` | 0 | `0x500`, `0x502`, `0x1b00`, `0x1b02` |
| `__glkonim_EvalMesh2` | `indirect` x2, `__glSetError` | 0 | `0x500`, `0x502`, `0x1b00`, `0x1b03` |
| `__glkonim_EvalPoint1` | `indirect` | 0 | `none` |
| `__glkonim_EvalPoint2` | `indirect` | 0 | `none` |
| `__glkonim_Finish` | `__glkona_wait_rdata`, `__glSetError` | 2 | `0xc6`, `0x502` |
| `__glkonim_FogFuncSGIS` | `indirect` x4 | 2 | `0x21`, `0x10f`, `0x501` |
| `__glkonim_GetConvolutionParameterfvEXT` | `__glkonim_GetPixelTransformParameterfvSGI` | 0 | `none` |
| `__glkonim_GetConvolutionParameterivEXT` | `__glkonim_GetPixelTransformParameterivSGI` | 0 | `none` |
| `__glkonim_GetHistogramParameterfvEXT` | `__glkon_get_special2`, `__glSetError` | 0 | `0x105`, `0x502` |
| `__glkonim_GetHistogramParameterivEXT` | `__glkon_get_special2`, `__glSetError` | 0 | `0x105`, `0x502` |
| `__glkonim_GetLightfv` | `__glkon_get_special2`, `indirect`, `__glSetError` | 0 | `0x41`, `0x500`, `0x502`, `0x1200`, `0x120a` |
| `__glkonim_GetListParameterfvSGIX` | `__glSetError`, `__glNamesLockData`, `__glNamesUnlockData`, `__glSetError`, `indirect` | 0 | `0x500`, `0x501`, `0x502`, `0x8182` |
| `__glkonim_GetPixelMapuiv` | `get_pixel_map_setup`, `__glkon_get_special3`, `__glSetError` | 0 | `0x48`, `0x200`, `0x502`, `0xc70`, `0xc71` |
| `__glkonim_GetPixelTransformParameterivSGI` | `GetPixelTransformParameterfvSGI` | 0 | `none` |
| `__glkonim_GetTexEnvfv` | `do_gettexenv`, `__glSetError` | 0 | `0x502` |
| `__glkonim_GetTexLevelParameterfv` | `__glkonim_GetTexLevelParameteriv` | 0 | `none` |
| `__glkonim_IsEnabled` | `kona_get_offset`, `__glkonim_GetBooleanv` | 0 | `none` |
| `__glkonim_IsTextureEXT` | `indirect`, `__glSetError` | 0 | `0x502` |
| `__glkonim_LineWidth` | `none` | 5 | `0xbd`, `0xe4`, `0x501` |
| `__glkonim_ListParameterfSGIX` | `__glkonim_ListParameterfvSGIX` | 0 | `none` |
| `__glkonim_ListParameterfvSGIX` | `__glSetError`, `__glNamesLockData`, `__glDlistHeapPriorityChanged` x2, `indirect`, `__glSetError`, `indirect` | 0 | `0x20`, `0x500`, `0x501`, `0x502`, `0x8182` |
| `__glkonim_MapGrid1f` | `__glSetError` | 7 | `0x28`, `0xe4`, `0x501`, `0x502` |
| `__glkonim_MapGrid2f` | `__glSetError` | 11 | `0x29`, `0xe4`, `0x501`, `0x502` |
| `__glkonim_Materiali` | `__glSetError` | 7 | `0x97`, `0x500`, `0x1601` |
| `__glkonim_PixelMapfv` | `do_pixelmap` | 0 | `0x1406` |
| `__glkonim_PixelMapuiv` | `do_pixelmap` | 0 | `0x1405` |
| `__glkonim_PixelMapusv` | `do_pixelmap` | 0 | `0x1403` |
| `__glkonim_PixelStoref` | `__glkonim_PixelStorei` x2, `__glSetError` | 0 | `0x502`, `0xcf0`, `0xcf1`, `0xd00`, `0xd01` |
| `__glkonim_PixelTransferi` | `__glkonim_PixelTransferf` | 0 | `none` |
| `__glkonim_PixelTransformParameterfvSGI` | `__glSetError` x5 | 22 | `0xf8`, `0xf9`, `0x500`, `0x502`, `0x8010`, `0x8011` |
| `__glkonim_PixelTransformParameteriSGI` | `__glkonim_PixelTransformParameterfSGI` | 0 | `none` |
| `__glkonim_PixelTransformParameterivSGI` | `__glPixelTransformParameterfvSGI_size`, `__glkonim_PixelTransformParameterfvSGI`, `__glSetError` x2 | 0 | `0x500`, `0x502` |
| `__glkonim_PixelZoom` | `__glSetError` x3 | 3 | `0x2f`, `0x501`, `0x502` |
| `__glkonim_PointSize` | `none` | 5 | `0xbe`, `0xe4`, `0x501` |
| `__glkonim_ReadPixels` | `__glKonParseInput`, `__glKonParseErrorRead`, `__glkonReadPixelsOrTexels`, `__glSetError` | 0 | `0x22`, `0x502` |
| `__glkonim_RenderMode` | `indirect` x2, `StartSelectFeed` x2, `ResolveFeedback`, `ResolveSelect`, `__glSetError` | 2 | `0x19`, `0x500`, `0x502`, `0x1c00`, `0x1c01`, `0x1c02` |
| `__glkonim_SampleMaskSGIS` | `none` | 6 | `0x118` |
| `__glkonim_SelectBuffer` | `indirect` x2, `__glSetError`, `indirect` x2 | 0 | `0x501`, `0x502`, `0x1c02` |
| `__glkonim_SpriteParameterivSGIX` | `__glkonim_SpriteParameterfvSGIX` | 0 | `0x8149` |
| `__glkonim_SubdivPatchParameteriSGIX` | `__glkonim_SubdivPatchParameterfSGIX` | 0 | `none` |
| `__glkonim_TexSubImage1DEXT` | `__glSetError`, `__glkonim_TexSubImage` | 0 | `0x500`, `0xde0` |
| `__glkonim_TexSubImage3DEXT` | `__glSetError`, `__glkonim_TexSubImage` | 0 | `0x500`, `0x806f` |
| `__glkonim_xEnable` | `__glSetError` | 2 | `0x10`, `0x20`, `0x24`, `0xad`, `0xae`, `0xaf` |
| `__glkonlSendPackedVertexV3F_C4UB` | `__glSPDlistSpace` x3 | 0 | `0x1ac` |
| `__glkonlSendPackedVertexV3F_N3S` | `__glSPDlistSpace` x3 | 0 | `0x1ad` |
| `__glkonlSendPackedVertexV3F_T2F` | `__glSPDlistSpace` x3 | 0 | `0x1af` |
| `__glkonlSendPackedVertexV3F_T2S` | `__glSPDlistSpace` x3 | 0 | `0x1b3` |
| `__glkonlc_Accum` | `__glSPDlistSpace` | 0 | `0xc5` |
| `__glkonlc_AlphaFunc` | `indirect` | 0 | `0xca` |
| `__glkonlc_Begin` | `__glSPDlistSpace` | 0 | `0x500` |
| `__glkonlc_Bitmap` | `__glSPDlistSpace`, `bzero`, `__glFillImage`, `__glsplc_Bitmap`, `indirect` | 0 | `0xc41`, `0x1900`, `0x1a00` |
| `__glkonlc_BlendColorEXT` | `__glSPDlistSpace` | 0 | `0xe6` |
| `__glkonlc_BlendEquationEXT` | `__glSPDlistSpace` | 0 | `0xe7` |
| `__glkonlc_CallList` | `__glsplc_AddIlist` x2, `__glsplc_CallList`, `indirect` | 0 | `none` |
| `__glkonlc_CallLists` | `__glsplc_AddIlist` x2, `__glsplc_CallLists`, `indirect` | 0 | `none` |
| `__glkonlc_Clear` | `__glSPDlistSpace` | 0 | `0x1a` |
| `__glkonlc_ClearAccum` | `__glSPDlistSpace`, `__glSetError` | 0 | `0x1b`, `0x502` |
| `__glkonlc_ClearIndex` | `__glSPDlistSpace` | 0 | `0x1c` |
| `__glkonlc_ClearStencil` | `__glSPDlistSpace` | 0 | `0x1e` |
| `__glkonlc_Color3bv` | `__glSPDlistSpace` | 0 | `0x61` |
| `__glkonlc_Color3sv` | `__glSPDlistSpace` | 0 | `0x65` |
| `__glkonlc_Color3ubv` | `__glSPDlistSpace` | 0 | `0x66` |
| `__glkonlc_Color3usv` | `__glSPDlistSpace` | 0 | `0x68` |
| `__glkonlc_Color4b` | `__glSPDlistSpace` | 0 | `0x69`, `0xff` |
| `__glkonlc_Color4bv` | `__glSPDlistSpace` | 0 | `0x69` |
| `__glkonlc_Color4s` | `__glSPDlistSpace` | 0 | `0x6d`, `0xffff` |
| `__glkonlc_Color4sv` | `__glSPDlistSpace` | 0 | `0x6d` |
| `__glkonlc_Color4ubv` | `__glSPDlistSpace` | 0 | `0x6e` |
| `__glkonlc_Color4us` | `__glSPDlistSpace` | 0 | `0x70` |
| `__glkonlc_Color4usv` | `__glSPDlistSpace` | 0 | `0x70` |
| `__glkonlc_ColorMask` | `__glSPDlistSpace` | 0 | `0x21` |
| `__glkonlc_ColorMaterial` | `__glSPDlistSpace` | 0 | `0xb5` |
| `__glkonlc_ColorTableParameterfvSGI` | `__glSPDlistSpace` | 0 | `0xeb` |
| `__glkonlc_ColorTableParameterivSGI` | `__glSPDlistSpace` | 0 | `0xeb` |
| `__glkonlc_DeformSGIX` | `__glsplc_InvalidValue`, `__glSPDlistSpace` | 0 | `0x1bf` |
| `__glkonlc_DeformationMap3dSGIX` | `lcDeformationMap3` | 0 | `none` |
| `__glkonlc_DeformationMap3fSGIX` | `lcDeformationMap3` | 0 | `none` |
| `__glkonlc_DepthMask` | `__glSPDlistSpace` | 0 | `0x22` |
| `__glkonlc_DepthRange` | `__glSPDlistSpace` | 0 | `0xcf` |
| `__glkonlc_EdgeFlag` | `__glSPDlistSpace` | 0 | `0xa7` |
| `__glkonlc_EdgeFlagv` | `__glSPDlistSpace` | 0 | `0xa7` |
| `__glkonlc_FogFuncSGIS` | `indirect` x4 | 0 | `0x21`, `0x10f` |
| `__glkonlc_Frustum` | `__glSPDlistSpace` | 0 | `0xd1` |
| `__glkonlc_LightModelfv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_LightModeliv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_Lightfv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_Lightiv` | `__glSPDlistSpace` | 0 | `none` |
| `__glkonlc_LineStipple` | `__glSPDlistSpace` | 0 | `0xbc` |
| `__glkonlc_LineWidth` | `__glSPDlistSpace`, `__glsplc_InvalidValue` | 0 | `0xbd` |
| `__glkonlc_LoadIdentityDeformationMapSGIX` | `__glSPDlistSpace` | 0 | `0x1c3` |
| `__glkonlc_Materialfv` | `__glSPDlistSpace` | 0 | `0x97` |
| `__glkonlc_Materialiv` | `__glSPDlistSpace` | 0 | `0x97`, `0x1601`, `0x1603` |
| `__glkonlc_Normal3bv` | `__glSPDlistSpace` | 0 | `0x76` |
| `__glkonlc_Normal3sv` | `__glSPDlistSpace` | 0 | `0x7a` |
| `__glkonlc_Ortho` | `__glSPDlistSpace` | 0 | `0xd7` |
| `__glkonlc_PassThrough` | `__glSPDlistSpace` | 0 | `0xc1` |
| `__glkonlc_PointParameterfvSGIS` | `__glsplc_InvalidEnum`, `__glSPDlistSpace` x3, `indirect`, `__glsplc_InvalidValue` | 0 | `0x1a7`, `0x1a8`, `0x8126`, `0x8127`, `0x8128`, `0x8129` |
| `__glkonlc_PointSize` | `__glSPDlistSpace`, `__glsplc_InvalidValue` | 0 | `0xbe` |
| `__glkonlc_PolygonOffset` | `__glSPDlistSpace` | 0 | `0x168` |
| `__glkonlc_PolygonOffsetEXT` | `__glSPDlistSpace` | 0 | `0x11b` |
| `__glkonlc_RasterPos3sv` | `__glSPDlistSpace` | 0 | `0xaf` |
| `__glkonlc_RasterPos4sv` | `__glSPDlistSpace` | 0 | `0xb3` |
| `__glkonlc_Rectd` | `__glSPDlistSpace` | 0 | `0x16`, `0x18`, `0x71`, `0x8b` |
| `__glkonlc_Rectdv` | `__glSPDlistSpace` | 0 | `0x16`, `0x18`, `0x71`, `0x8b` |
| `__glkonlc_Rects` | `__glSPDlistSpace` | 0 | `0x71`, `0x8e` |
| `__glkonlc_Rectsv` | `__glSPDlistSpace` | 0 | `0x16`, `0x71`, `0x8e` |
| `__glkonlc_ReferencePlaneSGIX` | `__glSPDlistSpace` | 0 | `0x1bd` |
| `__glkonlc_Rotated` | `__glSPDlistSpace` | 0 | `0xda` |
| `__glkonlc_Rotatef` | `__glSPDlistSpace` | 0 | `0xdb` |
| `__glkonlc_SampleMaskSGIS` | `indirect` | 0 | `0x118` |
| `__glkonlc_SamplePatternSGIS` | `__glSPDlistSpace` | 0 | `0x117` |
| `__glkonlc_Scaled` | `__glSPDlistSpace` | 0 | `0xdc` |
| `__glkonlc_Scalef` | `__glSPDlistSpace` | 0 | `0xdd` |
| `__glkonlc_ShadeModel` | `__glSPDlistSpace` | 0 | `0xc0` |
| `__glkonlc_SpriteParameterivSGIX` | `__glkonlc_SpriteParameterfvSGIX` | 0 | `0x8149` |
| `__glkonlc_TexCoord3sv` | `__glSPDlistSpace` | 0 | `0x86` |
| `__glkonlc_TexCoord4s` | `__glSPDlistSpace` | 0 | `0x8a`, `0xffff` |
| `__glkonlc_TexCoord4sv` | `__glSPDlistSpace` | 0 | `0x8a` |
| `__glkonlc_TexEnvf` | `__glsplc_InvalidEnum` x2, `__glSPDlistSpace` | 0 | `0x11`, `0x2200`, `0x2300` |
| `__glkonlc_TexEnvi` | `__glsplc_InvalidEnum` x2, `__glSPDlistSpace` | 0 | `0x12`, `0x2200`, `0x2300` |
| `__glkonlc_TexEnviv` | `__glsplc_InvalidEnum` x2, `__glSPDlistSpace` | 0 | `0x12`, `0x2200`, `0x2202`, `0x2300`, `0x80be` |
| `__glkonlc_TexGend` | `__glSPDlistSpace` | 0 | `0x14` |
| `__glkonlc_TexGendv` | `__glSPDlistSpace` | 0 | `0x14`, `0x2501`, `0x2502`, `0x81f4`, `0x81f5`, `0x81f6` |
| `__glkonlc_TexGenf` | `__glSPDlistSpace` | 0 | `0x14` |
| `__glkonlc_TexGeni` | `__glSPDlistSpace` | 0 | `0x14` |
| `__glkonlc_TexGeniv` | `__glSPDlistSpace` | 0 | `0x14`, `0x2501`, `0x2502`, `0x81f4`, `0x81f5`, `0x81f6` |
| `__glkonlc_Translated` | `__glSPDlistSpace` | 0 | `0xde` |
| `__glkonlc_Translatef` | `__glSPDlistSpace` | 0 | `0xdf` |
| `__glkonlc_Vertex3sv` | `__glSPDlistSpace` | 0 | `0x92` |
| `__glkonlc_Vertex4s` | `__glSPDlistSpace` | 0 | `0x96`, `0xffff` |
| `__glkonlc_Vertex4sv` | `__glSPDlistSpace` | 0 | `0x96` |
| `__glkonlc_Viewport` | `__glSPDlistSpace`, `__glsplc_InvalidValue`, `indirect` | 0 | `0xe3` |
| `__glkonle_Bitmap` | `__glKonSetPixelLEModes`, `__glkonim_Bitmap`, `__glKonUnsetLEModes` | 0 | `none` |
| `__glkonle_ColorTableSGI` | `__glKonSetPixelLEModes`, `__glkonim_ColorTableSGI`, `__glKonUnsetLEModes` | 0 | `none` |
| `__glkonle_ConvolutionFilter1DEXT` | `__glSetError`, `indirect`, `__glKonSetPixelLEModes`, `__glkonim_ConvolutionFilter1DEXT`, `__glKonUnsetLEModes` | 0 | `0x502`, `0x8010` |
| `__glkonle_ConvolutionFilter2DEXT` | `__glSetError`, `indirect`, `__glKonSetPixelLEModes`, `__glkonim_ConvolutionFilter2DEXT`, `__glKonUnsetLEModes` | 0 | `0x502`, `0x8011` |
| `__glkonle_Push` | `none` | 3 | `none` |
| `__glkonle_SeparableFilter2DEXT` | `__glSetError`, `indirect`, `__glKonSetPixelLEModes`, `__glkonim_SeparableFilter2DEXT`, `__glKonUnsetLEModes` | 0 | `0x502`, `0x8012` |
| `__glkonle_SetBegin` | `none` | 0 | `none` |
