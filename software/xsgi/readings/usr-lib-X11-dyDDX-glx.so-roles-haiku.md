# Role readings: `usr/lib/X11/dyDDX/glx.so`

Routine roles read from the whole body of each routine in the n32 build of `usr/lib/X11/dyDDX/glx.so`,
a stripped big-endian MIPS image (ELF header flags 0x20000022). Callees go through GOT slots, named from the dynamic symbol table where it names them and by gp offset or local address where it does not. Every entry is Inferred. Routines that were not read are listed at the end.

- `glx_rt_DispSwapIsTextureEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeaa8a0
  **Inferred.** Byte-reverses the texture-name word at request offset +0xc and passes it to `glIsTextureEXT`. The boolean result is stored as a word at +8 of the client block, reached through the pointer at +0x38 of the object the global at 0x200f80 points to, and that word is then byte-reversed. The routine sets the block's word at +0x20 to 1, clears +0x4, sets the byte at +0 to 1, and copies the word at +0x30 into +0x2c. I did not decode what consumes the +0x2c copy.

- `glxGetMapivSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeaa9f0
  **Inferred.** Forwards its two arguments unchanged to an unnamed local routine at 0xee9c90 and returns that routine's v0. The GOT slot holds 0xef0000 and the code adds -0x6370 to reach the callee, which has no symbol.

- `glx_rt_DispGetSeparableFilterEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeaaa40
  **Inferred.** Reads the request's target word at +0xc, the width and height words at +0x10 and +0x14, and the byte at +0x18 used as the pack alignment. It asks `glGetConvolutionParameterivEXT` for the convolution width and height (pnames 0x8018 and 0x8019), sizes the row and column spans with `glxGetTexImageSize`, and clamps negative sizes to zero. Each span rounds up to a multiple of four bytes. When the client block's word at +0x34 is below the total, the reply buffer at +0x30 is grown with `Xrealloc` if it exists or `Xalloc` if not; a null result stores 0xb at +0x24 and zero at +0x28. The routine then sets `glPixelStorei(0xd00, alignment)`, calls `glxClearErrorFlag`, and calls `glGetSeparableFilterEXT`. A nonzero `glxErrorFlagIsSet` result takes the error branch. The success branch records the length as the total divided by four at +4 and sets the flags at +0x20 and +0x24. I did not decode the flag bits in the error branch.

- `glx_rt_MakeCurrent` in `usr/lib/X11/dyDDX/glx.so` at 0xeaad90
  **Inferred.** Calls `glFlush` first when its fourth argument is nonzero. With a nonzero second argument it calls that object's function at +0x5c and returns `__glXBadContextState` when the result is zero. When the first and second arguments differ it unbinds the second through `impUnbindHWContextFromThread`, and it calls the function at +0x58 when the third argument is set. A nonzero first argument reads the context at +0x4c and makes up to two indirect calls through +0x68 and +0x64, falling back to +0x60. I did not decode the field comparisons that pick between those calls. The failure path returns 0xb.

- `glxFreeVideoSourcePrivate` in `usr/lib/X11/dyDDX/glx.so` at 0xeaafd0
  **Inferred.** Passes the block at +0x1c of its argument to `free` when that pointer is set, then clears the pointer at +0x1c and the word at +0x18.

- `glx_rt_DispSwapAreTexturesResident` in `usr/lib/X11/dyDDX/glx.so` at 0xeab040
  **Inferred.** Byte-reverses the count word at request +8 and then each texture name in the array that follows it, in place. The reply array at client +0x30 is grown with `Xrealloc` or `Xalloc` when +0x34 is smaller than the count, and a failed allocation stores 0xb. It then calls `glxClearErrorFlag` and `glAreTexturesResident` with the count, the texture array and the reply array. The boolean result is stored at client +8 and byte-reversed there. I did not decode the flag words written after an error.

- `__glXDisp_TexCoord3fv` in `usr/lib/X11/dyDDX/glx.so` at 0xeab380
  **Inferred.** Passes the request pointer to `glTexCoord3fv` as its only argument, with no copy or swap.

- `__glXDispSwap_Rectiv` in `usr/lib/X11/dyDDX/glx.so` at 0xeab3c0
  **Inferred.** Byte-reverses four 32-bit words of the request body in two loops, covering bytes 0 to 7 and then 8 to 0xf. The second pointer is the request body plus 8, and `glRectiv` receives the body pointer and that second pointer.

- `__glXDisp_Color4fv` in `usr/lib/X11/dyDDX/glx.so` at 0xeab570
  **Inferred.** Makes one call, `glColor4fv` with the request pointer, from a 0x20-byte frame.

- `__glXDispSwap_PointParameterfvSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xeab5b0
  **Inferred.** Reverses the pname word at the request pointer, then asks `glxPointParameterfvSGISSize` how many floats follow. A negative answer becomes zero. The floats at +4 are byte-reversed one word at a time, and then `glPointParameterfvSGIS` is called with the pname and the pointer at +4.

- `__glXDisp_EvalCoord1dv` in `usr/lib/X11/dyDDX/glx.so` at 0xeab740
  **Inferred.** When the request pointer is not 8-byte aligned, it copies eight bytes from the pointer down by four with `memcpy` and uses the lowered pointer. It then calls `glEvalCoord1dv` with that pointer.

- `__glXDispSwap_CopyTexImage2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeab9d0
  **Inferred.** Byte-reverses the eight 32-bit words at request offsets 0 through 0x1c. It then calls `glCopyTexImage2DEXT` with those words in a0 to a3 and t0 to t3. I did not check whether o32 expects the last four in the stack argument area.

- `glxSwapCreateContext` in `usr/lib/X11/dyDDX/glx.so` at 0xeabcd0
  **Inferred.** Reverses the 16-bit field at header offset +2 and the 32-bit words at +4, +8, +0xc and +0x10 of the request in place, then calls `glxCreateContext` with its first argument and the request pointer.

- `glx_rt_DispSwapEndList` in `usr/lib/X11/dyDDX/glx.so` at 0xeabe90
  **Inferred.** Stores its argument in the frame and calls `glEndList` with the argument register left unchanged. The routine has no byte reversal.

- `__glXDisp_Color4iv` in `usr/lib/X11/dyDDX/glx.so` at 0xeabed0
  **Inferred.** The only work is one call to `glColor4iv`, passing the request pointer, from a 0x20-byte frame.

- `__glXDisp_TexCoord3dv` in `usr/lib/X11/dyDDX/glx.so` at 0xeabf10
  **Inferred.** If the request pointer is not 8-byte aligned, copies 0x18 bytes down by four with `memcpy`, then calls `glTexCoord3dv` with the aligned pointer.

- `glx_rt_DispSwapDeleteLists` in `usr/lib/X11/dyDDX/glx.so` at 0xeabf90
  **Inferred.** Reverses the two 32-bit words at request body +8 and +0xc in place, then calls `glDeleteLists` with the first word as the list and the second as the range.

- `__glXDisp_TexCoord2sv` in `usr/lib/X11/dyDDX/glx.so` at 0xeac0b0
  **Inferred.** Calls `glTexCoord2sv` with the request pointer as its one argument.

- `glx_rt_DispDeleteLists` in `usr/lib/X11/dyDDX/glx.so` at 0xeac0f0
  **Inferred.** The native-order counterpart of the swapped delete-lists routine. It takes the words at request +8 and +0xc without reversing them and calls `glDeleteLists`.

- `glxSwapQueryContextInfoEXTReply` in `usr/lib/X11/dyDDX/glx.so` at 0xeac150
  **Inferred.** Reverses the reply header in place, covering the 16-bit field at +2 and the words at +4 and +8. It sends the 32-byte header with `WriteToClient`, then reverses each 32-bit item of the array at the third argument. The item count is the word at +4 of the reply, and the array is sent with a second `WriteToClient` of count times four bytes.

- `glxCopyContext` in `usr/lib/X11/dyDDX/glx.so` at 0xeac350
  **Inferred.** Reads the source context at request +4, the destination at +8, the mask at +0xc and the tag at +0x10. A mask with any of bits 20 to 31 set stores the value at +0x18 of the structure at the first argument's +0x2c and returns 2. Each context is then checked with `SecurityLookupIDByType` against `__glXContextRes`, and a failed lookup returns `__glXBadContext` or `__glXBadContextTag`. A context with its flag word at +0x2c set, or a mismatched screen word at +4, returns 8. A source with its word at +0x28 set returns 0xa. A nonzero tag is resolved through `glxLookupContextByTag`, and a mismatch with the destination returns 8. The routine finishes by calling `glxSendCopyContext` with the two contexts, the mask and a flag that is set when the tag is nonzero, and returns 0. I did not decode the layout of the context words beyond the offsets named here.

- `__glXDisp_DepthMask` in `usr/lib/X11/dyDDX/glx.so` at 0xeac5d0
  **Inferred.** Loads the unsigned byte at the request pointer and passes it to `glDepthMask`.

- `glxBitmapReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeac620
  **Inferred.** Reads the 32-bit words at request +0x14 and +0x18. When the second argument is set it reverses both. It then calls an unnamed local routine at 0xee69f0 with format 0x1900, type 0x1a00, and the two words as width and height, and returns that routine's result.

- `glxTexParameterfvReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeac710
  **Inferred.** Tail-forwards both arguments to `glxTexParameterivReqSize` and returns its result.

- `glxLightModelfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeac8c0
  **Inferred.** Passes its first argument to `glxLightModelivSize` and returns the result.

- `__glXDisp_EvalCoord1fv` in `usr/lib/X11/dyDDX/glx.so` at 0xeac900
  **Inferred.** Calls `glEvalCoord1fv` with the request pointer as its sole argument.

- `glxSwapQueryServerStringReply` in `usr/lib/X11/dyDDX/glx.so` at 0xeac940
  **Inferred.** Reverses the reply header in place, the same header fields as the context-info reply, and sends the 32-byte header with `WriteToClient`. The string bytes are then sent unchanged with a second `WriteToClient` of the word at +4 times four bytes, so there is no per-item reversal.

- `__glXDispSwap_Scaled` in `usr/lib/X11/dyDDX/glx.so` at 0xeaca80
  **Inferred.** If the request pointer is not 8-byte aligned, copies 0x18 bytes down by four with `memcpy`. It then reverses the three 8-byte doubles at the pointer and calls `glScaled` with them in f12, f13 and f14.

- `__glXDispSwap_Scalef` in `usr/lib/X11/dyDDX/glx.so` at 0xeaccf0
  **Inferred.** Reverses three 32-bit words at the request pointer and loads them as single-precision floats into f12, f13 and f14 for `glScalef`.

- `glxLightivSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeace40
  **Inferred.** Maps the light pname 0x1200 to 0x1209 to an element count through a jump table, and returns -1 for any other pname. Decoded from the table: pnames 0x1200 to 0x1203 (ambient, diffuse, specular, position) give 4, 0x1204 (spot direction) gives 3, and 0x1205 to 0x1209 give 1. The table is at 0xf10028 from the pointer slot at the `$gp` offset -0x7fa0.

- `tmDeleteScreen` in `usr/lib/X11/dyDDX/glx.so` at 0xeacf60
  **Inferred.** When its argument is non-null, it calls `tmDeleteVisual` on each visual in the array at +0xc, using the count at +8. It frees the array, calls an unnamed local routine at 0xee36a0 with the word at +4, and frees the screen block.

- `__glXDispSwap_Color4fv` in `usr/lib/X11/dyDDX/glx.so` at 0xead150
  **Inferred.** Reverses the four 32-bit floats at the request pointer, then calls `glColor4fv` with that pointer.

- `glxTexGendvReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xead240
  **Inferred.** When the second argument is set it reverses the word at request +4. It passes that word to `glxTexGenivSize` and returns the result multiplied by 8.

- `__glXDispSwap_Color4dv` in `usr/lib/X11/dyDDX/glx.so` at 0xead2e0
  **Inferred.** If the request pointer is not 8-byte aligned, copies 0x20 bytes down by four with `memcpy`. It then reverses each of the four 8-byte doubles in place and calls `glColor4dv`.

- `impErrorCallback` in `usr/lib/X11/dyDDX/glx.so` at 0xead480
  **Inferred.** Looks up the object the global at 0x200f80 points to, takes its +0x38 pointer, and if that is non-null stores its second argument at +0x4c.

- `__glXDispSwap_Color3sv` in `usr/lib/X11/dyDDX/glx.so` at 0xead4d0
  **Inferred.** Swaps the two bytes of each of the three 16-bit shorts at the request pointer, then calls `glColor3sv`.

- `__glXDisp_TexCoord2iv` in `usr/lib/X11/dyDDX/glx.so` at 0xead590
  **Inferred.** Calls `glTexCoord2iv` with the request pointer as its one argument, from a 0x20-byte frame.

- `glxSwapDestroyContext` in `usr/lib/X11/dyDDX/glx.so` at 0xead5d0
  **Inferred.** Reverses the 16-bit field at +2 and the 32-bit word at +4 of the request in place. It then reaches `glxDestroyContext` through a direct branch-and-link to 0xeb3240, passing the client and the request. The routine loads the GOT slot for `glxDestroyContext` but does not use it.

- `__glXDisp_Materialiv` in `usr/lib/X11/dyDDX/glx.so` at 0xead6a0
  **Inferred.** Reads the face and pname words at the request pointer and passes the pointer at +8 as the value, then calls `glMaterialiv`.

- `__glXDispSwap_Enable` in `usr/lib/X11/dyDDX/glx.so` at 0xead700
  **Inferred.** Reverses the 32-bit word at the request pointer, then calls `glEnable` with that value.

- `__glXDispSwap_BindTextureEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xead7a0
  **Inferred.** Byte-order shim for the BindTextureEXT request. It reverses the eight request bytes in place, trading byte 0 with byte 3, byte 1 with byte 2, byte 4 with byte 7 and byte 5 with byte 6, through a frame temporary at sp+0. It then loads the word at offset 0 as a0 and the word at offset 4 as a1 and calls the plain handler through the GOT slot at gp-0x6a28. The handler's return value is passed back unchanged.

- `__glXDispSwap_Color4bv` in `usr/lib/X11/dyDDX/glx.so` at 0xead890
  **Inferred.** Forwards the request pointer and does no byte work, since four single-byte components have no order to fix. The routine spills a0, reloads it and passes it to the plain handler through the GOT slot at gp-0x6cfc.

- `glxFreeGLXPixmap` in `usr/lib/X11/dyDDX/glx.so` at 0xeadc20
  **Inferred.** Frees a GLX pixmap descriptor. If the words at descriptor offsets +8 or +0xc are non-zero it returns at once. Otherwise it passes the descriptor's first word as the argument to the function pointer at [[descriptor+0x14]+0xf0], then passes the descriptor itself to a second routine through the GOT slot at gp-0x6ef0. Neither callee is named in the binary.

- `__glXDispSwap_ColorMaterial` in `usr/lib/X11/dyDDX/glx.so` at 0xeae0c0
  **Inferred.** Byte-order shim for ColorMaterial. It swaps the request bytes in four pairs, 0 with 3, 1 with 2, 4 with 7 and 5 with 6, and passes the two resulting words, the one at offset 0 and the one at offset 4, to the handler at gp-0x6c00. It has no branches of its own.

- `glxFogfvReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeae1b0
  **Inferred.** The name suggests a size query, but the body only spills its two arguments, reloads them and calls the routine at gp-0x752c. The value that call returns is this routine's return value. No size arithmetic appears here.

- `glxSwapGetVisualConfigs` in `usr/lib/X11/dyDDX/glx.so` at 0xeae200
  **Inferred.** Reverses the byte order of six bytes in the record at the address held in a1: byte 2 with byte 3, byte 4 with byte 7, and byte 5 with byte 6. Then it calls the routine at gp-0x7280 with the original a0 and a1 unchanged, so the callee sees the swapped record in place.

- `__glXDisp_Color4uiv` in `usr/lib/X11/dyDDX/glx.so` at 0xeae2d0
  **Inferred.** Passes the request pointer in a0 to the handler at gp-0x6ce4 without reading any field. The routine exists only to put the unsigned-integer colour request on the same dispatch path as the other colour entries.

- `__glXDisp_CullFace` in `usr/lib/X11/dyDDX/glx.so` at 0xeae310
  **Inferred.** Loads the word at offset 0 of the request, the face enum, and passes it as the sole argument to the handler at gp-0x6bfc. It returns that handler's result.

- `__glXDisp_ColorMask` in `usr/lib/X11/dyDDX/glx.so` at 0xeaeea0
  **Inferred.** Reads the four bytes at request offsets 0 through 3 with unsigned byte loads and passes them as a0 to a3 to the handler at gp-0x6b2c. Each argument is the unsigned byte as the client sent it.

- `__glXDisp_PolygonOffsetEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeaef00
  **Inferred.** Loads two single-precision floats from request offsets 0 and 4 into f12 and f13, the first two floating-point argument registers, and calls the handler at gp-0x6a54. The floats are passed as they are, with no conversion or byte swap, so this is the native-order path.

- `glx_rt_DispSwapGetColorTable` in `usr/lib/X11/dyDDX/glx.so` at 0xeaf220
  **Inferred.** Subtracts 4 from the pointer in a0 and passes the adjusted pointer to the handler at gp-0x7980. The body does not show what the four skipped bytes hold.

- `__glXDisp_ReferencePlaneSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeaf270
  **Inferred.** If the request pointer is not 8-byte aligned, it moves the 32-byte payload four bytes down with a copy through the routine at gp-0x6e94, from the pointer to the pointer minus 4. It then uses the pointer minus 4 and passes it to the handler at gp-0x69b4. The shift looks like a realignment of the payload, but the body does not show why the client's layout needs it.

- `__glXDispSwap_Color4sv` in `usr/lib/X11/dyDDX/glx.so` at 0xeaf4c0
  **Inferred.** Swaps the two bytes of each halfword in the eight-byte payload. A loop walks from the request pointer to the pointer plus 8 in steps of two and exchanges each pair of bytes through a temporary in the frame at sp+8. It then passes the original pointer to the handler at gp-0x6cec.

- `__glXDisp_TexCoord3iv` in `usr/lib/X11/dyDDX/glx.so` at 0xeaf580
  **Inferred.** The integer three-coordinate texture path. It passes the request pointer to the handler at gp-0x6c4c and reads no fields.

- `__glXDisp_LightModelfv` in `usr/lib/X11/dyDDX/glx.so` at 0xeaf5c0
  **Inferred.** Hands the handler the word at offset 0 as a0 and the address of offset 4 as a1, so the vector parameter arrives by pointer. The work happens in the handler at gp-0x6bcc.

- `__glXDisp_TexCoord1fv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb00e0
  **Inferred.** Forwards the request pointer unchanged to the handler at gp-0x6c70. The single-float texture coordinate is read by the callee.

- `__glXDisp_PixelTexGenSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0470
  **Inferred.** Passes the first request word, the mode, as the only argument to the handler at gp-0x69e4.

- `__glXExtensionReset` in `usr/lib/X11/dyDDX/glx.so` at 0xeb04c0
  **Inferred.** Reset hook for the extension state. When the word read through the GOT slot at gp-0x6f1c is zero, it first calls the routine at gp-0x79c4. It then reads the pointer stored at gp-0x6f24, takes the word at its offset 0x44 and passes that to the routine at gp-0x7690.

- `__glXDisp_LightModeliv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0600
  **Inferred.** Integer counterpart of the LightModelfv path. The word at offset 0 goes in a0, the address of offset 4 goes in a1, and the call goes to the handler at gp-0x6bc4.

- `glxSharpenTexFuncSGISReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0b40
  **Inferred.** Returns a byte count from the word at request offset 4. When a1 is non-zero that word is first byte-reversed in full, using shifts and masks. The result is the word shifted left by 3, so each unit is taken as eight bytes.

- `glx_rt_CopyContext` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0bc0
  **Inferred.** Copy-context path. When the fourth argument a3 is non-zero it calls the routine at gp-0x6e6c first. It then calls the function pointer stored at offset 0x78 of the structure in a0, with a0, a1 and a2 unchanged.

- `__glXDisp_TexCoord1dv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb10f0
  **Inferred.** The double-precision one-coordinate texture path. When the pointer is not 8-byte aligned it shifts the eight-byte payload down four bytes with a copy through the routine at gp-0x6e94, the same realignment as ReferencePlaneSGIX but with a count of 8. It then passes the pointer to the handler at gp-0x6c74.

- `__glXDispSwap_EvalMesh1` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0120
  **Inferred.** Byte-order shim for EvalMesh1. It reverses each of the three four-byte groups of the twelve-byte request, so bytes 0 and 3 trade, then 1 and 2, then the same pairs in the next two groups. It then loads the three words at offsets 0, 4 and 8 and calls the handler at gp-0x6aec with them as a0, a1 and a2.

- `glx_rt_DispSwapGetInstrumentsSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0c30
  **Inferred.** Reply path for an instruments query. It calls the routine at gp-0x6d68 with the original request pointer and stores its 32-bit result at offset 8 of a reply record. That record's pointer comes from the global word at 0x200f80, then the word at offset 0x38 of it. The four reply bytes at offsets 8 to 11 are then reversed, the word at reply offset 0x30 is copied to offset 0x2c, and the reply's byte 0 is set to 1, its word at offset 4 to 0 and its word at offset 0x20 to 1.

- `__glXDispSwap_Color4iv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb15e0
  **Inferred.** Byte-order fix-up for a Color4iv request sent by a client of the other endianness. The loop swaps the bytes of the four 32-bit words that start at the argument pointer, using the pair order 0/3 and 1/2 inside each word, and stops when the pointer reaches the pointer plus 0x10. It then tail calls `glColor4iv` through its GOT slot with the original pointer in a0.

- `__glXDispSwap_Begin` in `usr/lib/X11/dyDDX/glx.so` at 0xeb1780
  **Inferred.** Reverses the four bytes of the single word at the argument pointer, then loads the reversed word and passes it to `glBegin`. The byte moves are the full 32-bit reversal (byte 0 with byte 3, byte 1 with byte 2), and the saved gp and ra are restored before the return.

- `__glXDisp_LineWidth` in `usr/lib/X11/dyDDX/glx.so` at 0xeb1c90
  **Inferred.** Loads one single-precision value from the argument pointer into f12 and calls `glLineWidth`. It does no checks of its own and returns whatever `glLineWidth` leaves behind.

- `__glXDisp_CopyConvolutionFilter1DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeb1db0
  **Inferred.** Unpacks five 32-bit words from the request at offsets 0, 4, 8, 0xc and 0x10 into a0 to a3 and t0, then calls `glCopyConvolutionFilter1DEXT`. No word is converted, so the request must already be in the host byte order.

- `glx_rt_DispNewList` in `usr/lib/X11/dyDDX/glx.so` at 0xeb1e20
  **Inferred.** Steps the request pointer past an 8-byte header, keeps the moved pointer in the stack slot at sp+0x14, then passes the words at the new offsets 0 and 4 (the request's words 8 and 12) to `glNewList` as its two arguments.

- `glx_rt_DispGetClipPlane` in `usr/lib/X11/dyDDX/glx.so` at 0xeb1e80
  **Inferred.** Fetches a per-connection state block through the pointer at 0x200f80 and its word at +0x38, then checks the reply buffer at +0x30 against a 0x20-byte minimum at +0x34. When the buffer is missing or too small it allocates or grows it with `Xalloc` or `Xrealloc` at 0x20 bytes, and on allocation failure stores 0xb at +0x24 and returns. The plane index in the request is passed to `glGetClipPlane` with the buffer, and the result selects one of two reply layouts: the flag byte at the block goes to 1, and the length word at +4 is set to 0 or 8. I did not decode the two local calls made before and after the query, so their contribution is not described.

- `glxGetPixelMapuivSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb2030
  **Inferred.** Forwards its one argument unchanged to `glxGetPixelMapSize` at 0xeb82d0 through a direct branch-and-link, and returns that routine's result. The GOT slot loaded just before the call is not used by the direct call.

- `__glXDisp_PointSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb2070
  **Inferred.** Reads a single float from the argument pointer into f12 and calls `glPointSize`. It has no checks and returns the callee's result.

- `glxMakeCurrentRead` in `usr/lib/X11/dyDDX/glx.so` at 0xeb22b0
  **Inferred.** Takes the request pointer from the second argument and loads its words at offsets 8, 0xc, 0x10 and 0x14 into a1, a2, a3 and t0. It then calls a local slot with the first argument, those four words, and the constant 1 in t1, so the constant is the last of six arguments.

- `__glXDisp_Hint` in `usr/lib/X11/dyDDX/glx.so` at 0xeb2340
  **Inferred.** Passes the two request words at offsets 0 and 4 as the target and the mode to `glHint`. Nothing in the body is checked before the call.

- `glxDestroyContext` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3240
  **Inferred.** Looks up the context id in the second argument's word at +4 with `SecurityLookupIDByType`, passing an id type read from a local data slot. When a context is found it clears its word at +0x24. If its word at +0x28 is zero it walks a per-type table indexed by its word at +0x80 and calls a local slot with the entry, then frees the context with `glxFreeContext` when its word at +0x2c is set, or sends the destroy with `glxSendDestroyContext` otherwise. Either way it finishes with `FreeResourceByType` on the id. When the lookup finds nothing, the id is stored into a field of the first argument's record and a value from a local slot is returned. I did not decode the return values of that not-found branch in full.

- `glxConvolutionParameterivEXTReqSize_EXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeb33a0
  **Inferred.** Reads the parameter word at +4 of the request. When the second argument is nonzero the word is first byte-reversed, using the standard shift and mask sequence for a 32-bit swap. The result goes to a local slot, and the return value is that slot's result shifted left by two, which gives a byte count of four times the value count.

- `__glXDispSwap_ClearIndex` in `usr/lib/X11/dyDDX/glx.so` at 0xeb38e0
  **Inferred.** Reverses the four bytes at the argument pointer in place, loads the result as a float into f12, and calls `glClearIndex`. The reversal is the 0/3 and 1/2 byte swap of one word.

- `__glXDispSwap_LogicOp` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3980
  **Inferred.** Byte-reverses the word at the argument pointer, then passes that word to `glLogicOp` as its single argument. The swap is the same four-byte reversal used by the other single-word swap entries.

- `glxEvalComputeK` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3a20
  **Inferred.** Reduces the enumerant in a0 by 0xd90, and when the reduced value is below 0x29 it jumps to the address held in a table entry for that value. Four case blocks store 4, 3, 2 and 1 into the result slot, and an out-of-range input stores -1. The table is not decoded, so which enumerants reach which case block is not established.

- `glxSwapGetFBConfigs` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3ae0
  **Inferred.** Exchanges pairs of bytes inside the request body at offsets 2 and 3, 4 and 7, and 5 and 6, then calls `glxGetFBConfigs` directly with the first argument and the now-corrected request pointer. The swap is a byte-pair exchange rather than a full word reversal.

- `glxChangeDrawableAttributes` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3bb0
  **Inferred.** Uses a 0x20-byte frame that saves gp and ra. It forwards its first two arguments to local slot 338 with the constant 0 as the third argument, and returns the slot's result without changing it.

- `glx_rt_DispGetSeparableFilter` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3d90
  **Inferred.** Uses a 0x20-byte frame that saves gp and ra. It subtracts 4 from the argument pointer (addiu by -4), stores the result in the frame, and passes it to local slot 34 as the only argument, returning that slot's result.

- `glxSwapGetDrawableAttributes` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3de0
  **Inferred.** Runs the same byte-pair exchange as the FBConfigs swap on offsets 2/3, 4/7 and 5/6 of the request, then calls a local slot with the first and second arguments. The callee is not an exported name, so this entry does not name the routine it finishes in.

- `glxSendRenderCommand` in `usr/lib/X11/dyDDX/glx.so` at 0xeb3eb0
  **Inferred.** Looks up a client record in the `clientThreadp` table, indexed by the word at the first argument. It builds a 16-byte header on the stack: a halfword 2 at offset 0, the request pointer at offset 4, the request's halfword at offset 2 times four as a byte count at offset 8, and a zero halfword at offset 0xc. The header, the client record and a zero then go to a local slot that does the send.

- `__glXDisp_CopyConvolutionFilter2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeb41b0
  **Inferred.** Passes six words from the request, at offsets 0, 4, 8, 0xc, 0x10 and 0x14, as the arguments of `glCopyConvolutionFilter2DEXT`. The words are not converted, so the request must be in host order.

- `__glXDisp_DepthFunc` in `usr/lib/X11/dyDDX/glx.so` at 0xeb4220
  **Inferred.** Passes the one word at the argument pointer to `glDepthFunc` and returns.

- `__glXDisp_ClearAccum` in `usr/lib/X11/dyDDX/glx.so` at 0xeb4870
  **Inferred.** Loads four consecutive floats from the argument pointer, at offsets 0, 4, 8 and 0xc, into f12 to f15, and calls `glClearAccum`.

- `glxFreeGLXWindow` in `usr/lib/X11/dyDDX/glx.so` at 0xeb48d0
  **Inferred.** Does nothing when either word at +8 or +0xc of the window record is set. Otherwise it reads the id word at offset 0 of the record, prints a message through `printf` with a format string from the local data area (the string is not decoded), and compares the id with `LookupIDByType` of the id at offset 4 and the type 0xc0000001. On a match it calls a function pointer read from the record's dispatch table at +0xb8, then frees the record with `Xfree`.

- `__glXDisp_Rectsv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb49a0
  **Inferred.** Passes the request pointer itself as the first argument to `glRectsv` and the pointer 4 bytes past it as the second. The two pointers are not dereferenced here.

- `__glXDisp_PixelMapuiv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb49f0
  **Inferred.** Takes the map id and the size from words at offsets 0 and 4 of the request, passes the address of the data at offset 8 as the third argument, and calls `glPixelMapuiv`.

- `__glXDispSwap_HistogramEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeb57b0
  **Inferred.** Byte-reverses the three 32-bit words at offsets 0, 4 and 8 of the request and leaves the byte at offset 0xc untouched. It then calls `glHistogramEXT` with the first three words and the unswapped byte as the fourth argument.

- `__glXDispSwap_Color3fv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb5900
  **Inferred.** Byte-reverses three 32-bit words at the argument pointer, using the same 0/3 and 1/2 pair order as the Color4iv swap but stopping at the pointer plus 0xc. It then tail calls `glColor3fv` with the original pointer.

- `glxGetMinmaxParameterfvEXTSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb5ed0
  **Inferred.** Returns the number of values the parameter name in a0 produces. The names 0x802f and 0x8030 give 1, and any other name gives -1, the sentinel for an invalid name.

- `__glXDispSwap_Color3dv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb5f40
  **Inferred.** Reverses the bytes of three 8-byte doubles at the request pointer in place and then calls glColor3dv with that pointer. When the pointer is not 8-byte aligned (low three bits set) it first copies 0x18 bytes from the request to the request minus 4 with memcpy (GOT 0xf129b0) and steps the pointer back 4. The reversal loop walks from the pointer to the pointer plus 0x18 in steps of 8 and swaps byte 0 with 7, 1 with 6, 2 with 5 and 3 with 4 in each element.

- `glx_rt_DispGetColorTableSGI` in `usr/lib/X11/dyDDX/glx.so` at 0xeb60e0
  **Inferred.** Builds the reply for a GetColorTable request. It reads the target, format and type words at request offsets 0xc, 0x10 and 0x14 and the swap byte at 0x18. The element count comes from glGetColorTableParameterivSGI with pname 0x80d9 and then glxGetTexImageSize, and a negative count is clamped to zero. The buffer at state +0x30 grows through Xrealloc or Xalloc when its capacity at +0x34 is short, and an allocation failure writes error 0xb at +0x24. The routine sets GL_PACK_SWAP_BYTES (0xd00) from the swap byte, calls glGetColorTableSGI between glxClearErrorFlag and glxErrorFlagIsSet, and on error writes +0x20 as 1 with +0x2c set to the buffer. On success it stores the word count, (size + 3) >> 2, at +4.

- `__glXDisp_TexCoord1iv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6360
  **Inferred.** Hands the request pointer itself to glTexCoord1iv through the GOT slot at 0xf12bd8. The int vector is passed by address, so the routine does nothing to its contents.

- `__glXDispSwap_Color3bv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6600
  **Inferred.** Forwards the request pointer to glColor3bv (GOT 0xf12b28) without touching the three signed bytes, since byte data has no order to reverse.

- `__glXDispSwap_Materialf` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6850
  **Inferred.** Reverses the bytes of three 4-byte fields in the request: the face word at offset 0, the pname word at 4 and the float at 8. It then calls glMaterialf with the face in a0, the pname in a1 and the reordered float in f14 (loaded with lwc1 from offset 8).

- `__glXDispSwap_Materiali` in `usr/lib/X11/dyDDX/glx.so` at 0xeb69a0
  **Inferred.** Uses the same three 4-byte reversals as the float variant, at offsets 0, 4 and 8, and calls glMateriali. The integer parameter goes in a2 as the word loaded from offset 8.

- `glxGetColorTableParameterfvSGISize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6af0
  **Inferred.** Returns how many values a color-table parameter query yields. The pname in a0 minus 0x80d6 indexes a table of ten jump entries. The case block at 0xeb6b44 returns 4, the block at 0xeb6b54 returns 1, and an index of ten or more returns 0.

- `__glXDisp_SharpenTexFuncSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6b90
  **Inferred.** Forwards three request fields to glSharpenTexFuncSGIS: the target word at offset 0 in a0, the count word at offset 4 in a1, and the point array address request plus 8 in a2.

- `glxMap1dReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6bf0
  **Inferred.** Gives the payload length in bytes of a Map1d control-point block. It reads the words at request offsets 0x10 and 0x14, and when the second argument is nonzero it byte-reverses both. The first word goes to glxEvalComputeK at 0xeb3a20, then the first result and the second word go to the unnamed routine at 0xf097a0, which the GOT slot value 0xf10000 less 0x6860 locates. The return value is that routine's result shifted left by 3, eight bytes per double.

- `glxMap1fReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6cf0
  **Inferred.** Gives the payload length of a Map1f control-point block with the same call chain as the double variant. The two words are read from request offsets 0 and 0xc, the same byte reversal applies when the second argument is nonzero, and the result from 0xf097a0 is shifted left by 2 for four-byte floats.

- `__glXDisp_DrawPixels` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6df0
  **Inferred.** Sets six unpack pixel-store parameters from the request by calling glPixelStorei: the byte at offset 0 for GL_UNPACK_SWAP_BYTES (0xcf0), the byte at 1 for GL_UNPACK_LSB_FIRST (0xcf1), and the words at 4, 8, 0xc and 0x10 for 0xcf2 through 0xcf5 (row length, skip rows, skip pixels, alignment). It then calls glDrawPixels with width, height, format and type from request offsets 0x14, 0x18, 0x1c and 0x20, and passes the pixel data pointer, request plus 0x24, as the eighth argument.

- `glxGetTexGenfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6ef0
  **Inferred.** Returns the value count for a texture-generation query. The pname 0x2500 returns 1, 0x2501 and 0x2502 each return 4, and every other pname returns -1.

- `glxDestroyGLXVideoSourceSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeb6f90
  **Inferred.** Checks the caller's right to free a video source. It reads the pointer at +0x2c of the first argument and the word at +0xc of the second argument, then calls SecurityLookupIDByType with class word *(0xf130b0, the symbol __glXVideoSourceRes) and access mode 4. A nonzero lookup result takes the path that calls FreeResourceByType with the second argument's word, that class and mode 0, and returns 0. A zero lookup result stores the word at +0x18 of the pointer at +0x2c and returns the word at 0xf130cc (__glXBadDrawable).

- `__glXDispSwap_Fogfv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb7060
  **Inferred.** Reverses the pname word at request offset 0 and passes it to glxFogfvSize (0xeeb120) to get the parameter count, clamped to zero if negative. It then reverses that many 4-byte values beginning at offset 4 and calls glFogfv with the pname and the request plus 4 as the vector.

- `__glXDisp_TexFilterFuncSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xeb71f0
  **Inferred.** Loads four request words for glTexFilterFuncSGIS: target from offset 0, filter from 4 and count from 8, with the point array address request plus 0xc in a3.

- `glx_rt_DispSwapGetPolygonStipple` in `usr/lib/X11/dyDDX/glx.so` at 0xeb7250
  **Inferred.** Builds the reply for GetPolygonStipple. The byte at request offset 8 becomes the LSB-first flag for GL_PACK_LSB_FIRST (0xd01). If the buffer at state +0x30 has capacity below 0x80 bytes it is grown to 0x80 with Xrealloc or Xalloc, and a failed allocation writes error 0xb at +0x24. The routine calls glGetPolygonStipple between glxClearErrorFlag and glxErrorFlagIsSet. On success it stores 0x20 as the word count at +4 and the buffer at +0x2c, and on error it writes +0x20 as 1 with a zero at +4.

- `__glXDisp_Rectdv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb79a0
  **Inferred.** Calls glRectdv with two corner pointers into the request. When the pointer's low three bits are set it first copies 0x20 bytes to the request minus 4 with memcpy and steps the pointer back 4. The second corner is that pointer plus 0x10.

- `glxGetHistogramParameterfvEXTSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb7a20
  **Inferred.** Returns a value count for a histogram parameter query. The pname in a0 minus 0x8026 indexes a jump table of eight entries. Indexes eight and above return -1, and the in-range case block at 0xeb7a74 returns 1.

- `glx_rt_DispSwapGetFloatv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb7ab0
  **Inferred.** Builds the reply for GetFloatv. It reverses the 4-byte pname at request offset 8 and takes the count from glxGetFloatvSize (0xf031d0), clamped to zero when negative. The buffer at +0x30 grows to count times 4 bytes through Xrealloc or Xalloc. The routine calls glGetFloatv between glxClearErrorFlag and glxErrorFlagIsSet, then reverses each returned float in place. On success it stores the count at +0xc with its four bytes reversed, and the buffer at +0x2c; on error it writes +0x20 as 1 and clears +4.

- `__glXDisp_AlphaFunc` in `usr/lib/X11/dyDDX/glx.so` at 0xeb8280
  **Inferred.** Passes the comparison enum from request offset 0 to glAlphaFunc in a0 and loads the reference value from offset 4 into f13 with lwc1, which is the float slot for the second argument.

- `glxGetPixelMapSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb82d0
  **Inferred.** Maps a pixel-map enum to its size query. The enum in a0 minus 0xc70 indexes ten case blocks, in order, that load the size enums 0xcb0 through 0xcb9 and call glGetIntegerv into a word that is then returned. Any index of ten or more stores -1 and returns it.

- `__glXDispSwap_Color3usv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb8820
  **Inferred.** Swaps each 16-bit element of the three unsigned shorts at the request, six bytes total, in place. It then calls glColor3usv with the original request pointer.

- `__glXDisp_Rectfv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb88e0
  **Inferred.** Calls glRectfv with the request pointer as the first corner and the request pointer plus 8 as the second.

- `__glXDisp_SpriteParameterfvSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeb8cf0
  **Inferred.** Calls glSpriteParameterfvSGIX (GOT slot 0xf12e68) with the pname word from request offset 0 in a0 and the float vector at request offset 4 in a1.

- `glx_rt_DispGetMinmaxParameterivEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeb93a0
  **Inferred.** Builds the reply for GetMinmaxParameteriv. The request pointer is advanced by 0xc, so the pname word sits at request offset 0x10 and the target at 0xc. The count comes from glxGetMinmaxParameterivEXTSize (0xedec30), clamped to zero when negative, and the buffer at +0x30 grows to count times 4 bytes. The routine calls glGetMinmaxParameterivEXT between glxClearErrorFlag and glxErrorFlagIsSet. On error it writes +0x20 as 1, +4 as zero and the buffer at +0x2c. On success it stores the count at +0xc. A count of one copies the single word into +0x10, and any other count stores the buffer at +0x2c and the word count at +4.

- `__glXDispSwap_ListBase` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9610
  **Inferred.** Reverses the 4-byte word at request offset 0 in place and passes it to glListBase.

- `__glXDisp_PixelMapfv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb96b0
  **Inferred.** Calls glPixelMapfv with the map enum from request offset 0, the element count at 4 and the float array at request plus 8.

- `__glXDispSwap_PushName` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9710
  **Inferred.** Reverses the name word at request offset 0 in place with the same four-byte swap as the list-base routine, then passes that word to glPushName through the GOT slot at 0xf12cf4.

- `__glXDispSwap_EdgeFlagv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb97b0
  **Inferred.** Passes the request pointer to glEdgeFlagv (GOT 0xf12b68) unchanged. The edge flag is one byte at offset 0, so the 0xeb97b0 routine has no 4-byte or 8-byte reversal to do.

- `glxColorTableParameterivSGISize` in `usr/lib/X11/dyDDX/glx.so` at 0xeb97f0
  **Inferred.** Passes its first argument through to glxColorTableParameterfvSGISize (0xecb150) and returns that routine's result unchanged.

- `glx_rt_DispGenLists` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9830
  **Inferred.** Calls glGenLists with the word at request offset 8 and stores the returned list base at +8 of the reply state. The state pointer comes from the global at 0x200f80, field +0x38. The routine also copies the buffer pointer from +0x30 to +0x2c, sets +0x20 to 1, clears +4 and writes 1 to the byte at +0.

- `__glXDisp_ConvolutionParameterfvEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeb98e0
  **Inferred.** Passes the target and pname words at request offsets 0 and 4 to glConvolutionParameterfvEXT, with the parameter pointer at request plus 8 as the third argument.

- `__glXDispSwap_SpriteParameterfvSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9940
  **Inferred.** Reverses the pname word at request offset 0 and passes it to glxSpriteParameterfvSGIXSize (0xef3df0) for the value count, clamped to zero when negative. It then reverses that many 4-byte words that follow, from offset 4 to 4 plus four times the count, and calls glSpriteParameterfvSGIX (GOT 0xf12e68) with the pname in a0 and the request plus 4 in a1.

- `glx_rt_DispGetPixelMapfv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9ad0
  **Inferred.** Render-side reply handler for glGetPixelMapfv. It reads the pixel-map enumerant from the request word at +8, sizes the reply with glxGetPixelMapfvSize and clamps a negative count to zero. The count times four is compared with the capacity word at state +0x34. When the reply buffer at state +0x30 is too small it is grown with Xrealloc, or allocated with Xalloc when still empty, and a failed allocation writes 0xb (BadAlloc) to state +0x24. It then calls glxClearErrorFlag, glGetPixelMapfv and glxErrorFlagIsSet. On error it stores the buffer at +0x2c, sets +0x20 to 1, clears +4 and sets the byte at +0 to 1. On success a count of one copies the float into state +0x10. Any other count stores (count times 4 + 3) shifted right by two at +4. The state pointer is read from the global word at 0x200f80, then its field at +0x38.

- `__glXDispSwap_Fogiv` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9d30
  **Inferred.** Byte-swaps the parameter name at a0 and the vector that follows it, then calls glFogiv. The four bytes of the name word are reversed first, and glxFogivSize sizes the vector from that name, with a negative size clamped to zero. Each following 4-byte word from a0+4 up to a0+4+4*count is reversed in turn. glFogiv then gets the name and a0+4 as the vector pointer.

- `glxSwapRender` in `usr/lib/X11/dyDDX/glx.so` at 0xeb9ec0
  **Inferred.** Walks a buffer of GLX render commands for one context. It first fixes the header: the halfword at +2 is swapped and the word at +4 is reversed. That halfword counts 4-byte words, so the body is four times that count less the 8-byte header. The context is found by the tag word at +4 with glxLookupContextByTag. The commands are then stepped through with a halfword byte size at +0 and a halfword opcode at +2. Opcodes up to 0xc4, from 0x800 to 0x822 and from 0x1000 to 0x101b index three 8-byte tables, each entry holding a size word at +0 and a handler pointer at +4. A nonzero handler is called indirectly on the command body, and a result that does not match the length returns 0x10 (BadLength). The commands are then handed to glxSendRenderCommand, reached through a stub at 0xeb3eb0. An unknown opcode, a zero size word or a failed context lookup returns an error word from a global: the one at -0x7000(gp) for the first two and the one at -0x7008(gp) for the lookup.

- `glx_rt_DispGetTexEnvfv` in `usr/lib/X11/dyDDX/glx.so` at 0xeba2c0
  **Inferred.** Render-side reply handler for glGetTexEnvfv. The target is the word at request +8 and the parameter name is at +12. The name is passed to glxGetTexEnvfvSize to size the reply. The buffer at state +0x30 is grown or allocated against the capacity at +0x34 as in the pixel-map handler, and a failed allocation leaves 0xb in +0x24. glGetTexEnvfv runs after glxClearErrorFlag, and the error check then uses glxErrorFlagIsSet. A one-value reply is copied as a float into state +0x10.

- `__glXDispSwap_LineWidth` in `usr/lib/X11/dyDDX/glx.so` at 0xeba530
  **Inferred.** Reverses the four bytes at offsets 0x0 to 0x3 of a0 and passes the resulting float to glLineWidth in f12.

- `glxSwapQueryExtensionsString` in `usr/lib/X11/dyDDX/glx.so` at 0xeba5d0
  **Inferred.** Swaps the request body at the second argument. The halfword at +2 is byte-swapped, and the word at +4 is reversed, with bytes 4 and 7 exchanged and 5 and 6 exchanged. Bytes 0 and 1 are not touched. The original two arguments then go to glxQueryExtensionsString.

- `__glXDispSwap_FrontFace` in `usr/lib/X11/dyDDX/glx.so` at 0xeba6a0
  **Inferred.** Reverses the word at a0 byte by byte, bytes 0 and 3 and bytes 1 and 2, then passes its value as the mode to glFrontFace.

- `glxTexParameterivReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xeba740
  **Inferred.** Size helper for glTexParameteriv requests. It reads the parameter-name word at a0+4 and reverses it only when the flag in a1 (stored at frame offset 0x2c) is nonzero. It returns glxTexParameterivSize of that name times four, done as a shift left by two.

- `__glXDispSwap_Color3iv` in `usr/lib/X11/dyDDX/glx.so` at 0xeba7e0
  **Inferred.** Reorders three 4-byte integers at a0, one word after another from a0 up to a0+0xc, then calls glColor3iv with the same pointer.

- `__glXDispSwap_TexCoord4fv` in `usr/lib/X11/dyDDX/glx.so` at 0xeba8d0
  **Inferred.** Reverses four 4-byte floats at a0, stopping at a0+0x10, then calls glTexCoord4fv(a0).

- `__glXDispSwap_TexCoord3sv` in `usr/lib/X11/dyDDX/glx.so` at 0xeba9c0
  **Inferred.** Exchanges the two bytes of each 16-bit value at a0, three of them up to a0+6. glTexCoord3sv is called with the pointer.

- `glxCreateGLXVideoSourceSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xebaa80
  **Inferred.** Creates the server-side video-source object for a GLX request. It allocates 0x18 bytes with Xalloc, zeroes the six words of that block and sets its first byte to 0xff. The drawable ID at request +0xc goes to glxGetDrawablePrivate. Its word +0 is set to 3, its word +4 is cleared, and its count at +0x24 is raised for the duration of the call. A second Xalloc of 0x2c bytes receives copied fields from glxGetVideoSourcePrivate's result, and AddResource installs the block under the drawable ID with the class read from the global at -0x702c(gp). The count is then lowered and glxFreeDrawablePrivate releases the drawable. Any allocation or lookup failure, including AddResource, returns 0xb (BadAlloc), and the success path returns 0.

- `__glXDispSwap_TexCoord4dv` in `usr/lib/X11/dyDDX/glx.so` at 0xebad50
  **Inferred.** When a0 is not 8-byte aligned, the 32-byte body is moved down four bytes with memcpy. Four doubles are then reversed one at a time, stepping 8 bytes from a0, and glTexCoord4dv is called with a0.

- `__glXDispSwap_LoadMatrixd` in `usr/lib/X11/dyDDX/glx.so` at 0xebe430
  **Inferred.** Realigns a 128-byte matrix at a0 with memcpy when it is misaligned, reverses its sixteen doubles and calls glLoadMatrixd(a0).

- `__glXDispSwap_CopyColorTableSGI` in `usr/lib/X11/dyDDX/glx.so` at 0xebe5d0
  **Inferred.** Reverses five 4-byte fields at offsets 0x0 to 0x13 of the request. glCopyColorTableSGI then takes the first four from a0 to a3 and the fifth, at +0x10, in t0.

- `__glXDispSwap_LoadMatrixf` in `usr/lib/X11/dyDDX/glx.so` at 0xebe7d0
  **Inferred.** Reverses the 64-byte float matrix at a0 one 4-byte word at a time and passes a0 to glLoadMatrixf.

- `__glXDispSwap_Color3ubv` in `usr/lib/X11/dyDDX/glx.so` at 0xebe8c0
  **Inferred.** Forwards the request pointer a0 to glColor3ubv with no byte movement. The callee reads the three unsigned bytes at offsets 0x0 to 0x2, and the frame is 0x20 bytes.

- `__glXDisp_Rectiv` in `usr/lib/X11/dyDDX/glx.so` at 0xebe900
  **Inferred.** Hands glRectiv two vertex pointers without moving bytes: a0 is the request pointer and a1 is the request plus 0x8, the second vertex. The frame is 0x20 bytes.

- `__glXDispSwap_CopyTexSubImage3DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xebe950
  **Inferred.** Byte-reverses nine 4-byte words at request offsets 0x0 through 0x20. glCopyTexSubImage3DEXT then gets the first eight words in a0 to a3 and t0 to t3, and the ninth goes in the outgoing argument area.

- `__glXDisp_PassThrough` in `usr/lib/X11/dyDDX/glx.so` at 0xebecb0
  **Inferred.** Loads the float at offset 0x0 of a0 into f12 and calls glPassThrough with no swap. The frame is 0x20 bytes.

- `glxSpriteParameterfvSGIXReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xebed00
  **Inferred.** Size helper for sprite-parameter vector requests. It reads the parameter word at offset 0x0 of a0 and reverses it when the flag at frame offset 0x2c is nonzero. It returns glxSpriteParameterfvSGIXSize of that word times four.

- `__glXDisp_FrameZoomSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xebeda0
  **Inferred.** Passes the word at offset 0x0 of a0 to glFrameZoomSGIX with no swap. The frame is 0x20 bytes.

- `PanoramiXGetDepth` in `usr/lib/X11/dyDDX/glx.so` at 0xebedf0
  **Inferred.** Searches a server table for the depth matching a visual. The screen record comes from a pointer table reached through the global base plus 0x48, indexed by the screen number in a0. Its halfword at +0x10 counts the entries at record +0x14. Each 8-byte entry has a count halfword at +2 and a pointer at +4 to a list of 4-byte values. When one of those values equals a1, the routine returns the byte at the entry's +0. A miss returns -1.

- `glx_rt_DispGetDetailTexFuncSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xebef40
  **Inferred.** Render-side reply handler for glGetDetailTexFuncSGIS. The target is the word at request +0xc, and glxGetDetailTexFuncSGISSize sizes the reply from it. The reply buffer at state +0x30 is grown or allocated against the capacity at +0x34, and a failure sets BadAlloc in +0x24. glGetDetailTexFuncSGIS(target, buffer) runs after glxClearErrorFlag, and glxErrorFlagIsSet decides the error path. A one-value reply is copied as a float into state +0x10.

- `__glXDisp_CopyTexImage1DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xebf1a0
  **Inferred.** Forwards seven request words to glCopyTexImage1DEXT without swapping. The words at +0, +4, +8 and +0xc go to a0 to a3, and those at +0x10, +0x14 and +0x18 go to t0 to t2.

- `__glXDisp_Scaled` in `usr/lib/X11/dyDDX/glx.so` at 0xebf220
  **Inferred.** Passes three doubles to glScaled. A misaligned request is first moved down four bytes with a 24-byte memcpy. The doubles at +0, +8 and +0x10 go to f12, f13 and f14.

- `__glXDisp_Scalef` in `usr/lib/X11/dyDDX/glx.so` at 0xebf2b0
  **Inferred.** Loads the floats at offsets 0x0, 0x4 and 0x8 of the request into f12, f13 and f14 and calls glScalef.

- `glxTexParameterfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xebf330
  **Inferred.** Returns glxTexParameterivSize of the request's a0 unchanged, so the float form reuses the integer form's size helper. The frame is 0x20 bytes, with gp saved at 0x8.

- `__glXDispSwap_EvalCoord1dv` in `usr/lib/X11/dyDDX/glx.so` at 0xebf370
  **Inferred.** Moves the 8-byte double at a0 down four bytes with memcpy when it is misaligned, reverses its eight bytes and calls glEvalCoord1dv(a0).

- `__glXDispSwap_ClearStencil` in `usr/lib/X11/dyDDX/glx.so` at 0xebfc30
  **Inferred.** Reverses the 4-byte integer at a0 and calls glClearStencil with it.

- `__glXDispSwap_Color3uiv` in `usr/lib/X11/dyDDX/glx.so` at 0xebfcd0
  **Inferred.** Byte-reverses three unsigned words at a0 by advancing the pointer four bytes at a time through a0+0xc, then passes the pointer to glColor3uiv.

- `__glXDisp_Vertex4sv` in `usr/lib/X11/dyDDX/glx.so` at 0xebfdc0
  **Inferred.** Calls glVertex4sv with the request pointer a0, leaving the four 16-bit values at offsets 0x0 to 0x6 to the callee. The frame is 0x20 bytes.

- `__glXDisp_Accum` in `usr/lib/X11/dyDDX/glx.so` at 0xebfe00
  **Inferred.** Calls glAccum with the operation word at offset 0x0 of a0 in a0 and the float at offset 0x4 in f13, the second floating-point argument register.

- `glxMakeContextCurrent` in `usr/lib/X11/dyDDX/glx.so` at 0xebfe50
  **Inferred.** Unpacks the words at +4, +8, +0xc and +0x10 of the block at a1 and forwards them with a0 to glxMakeCurrentHelper. The constant 2 is passed as the sixth argument. The routine does no checks of its own.

- `__glXDispSwap_CopyTexSubImage2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec0150
  **Inferred.** Reverses the eight 4-byte words at request offsets 0x0 through 0x1f, each word in place, then passes the words at +0 through +0x1c to glCopyTexSubImage2DEXT in the order target, level, xoffset, yoffset, x, y, width and height.

- `glx_rt_DispGetTexEnviv` in `usr/lib/X11/dyDDX/glx.so` at 0xebfee0
  **Inferred.** Render-side reply handler for glGetTexEnviv, the integer twin of the Fv handler above. It sizes the reply with glxGetTexEnvivSize, grows or allocates the buffer at state +0x30 against the capacity at +0x34, and calls glxClearErrorFlag, glGetTexEnviv and glxErrorFlagIsSet in that order. The request offsets match the Fv handler's, with the target at +8 and the name at +12, as far as its visible loads show. A one-value reply is copied as an integer into state +0x10.

- `__glXDisp_TexSubImage3DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec0450
  **Inferred.** Sets nine pixel-store parameters before the upload. The byte at +0 goes to GL_UNPACK_SWAP_BYTES (0xcf0) and the byte at +1 to GL_UNPACK_LSB_FIRST (0xcf1). The word at +4 goes to GL_UNPACK_ROW_LENGTH (0xcf2), and the words at +8, +0x10, +0x14, +0x1c and +0x20 go to GL_UNPACK_IMAGE_HEIGHT (0x806e), GL_UNPACK_SKIP_ROWS (0xcf3), GL_UNPACK_SKIP_IMAGES (0x806d), GL_UNPACK_SKIP_PIXELS (0xcf4) and GL_UNPACK_ALIGNMENT (0xcf5). It then calls glTexSubImage3DEXT with the words at +0x24 to +0x50, and the pixel pointer is the request address plus 0x58.

- `__glXDispSwap_TexGend` in `usr/lib/X11/dyDDX/glx.so` at 0xec05c0
  **Inferred.** A misaligned request is first moved down four bytes with a 16-byte memcpy. The 8-byte double at +0 is then reversed as a unit, and the words at +8 and +0xc are each reversed. glTexGend is called with the word at +8 as the coordinate, the word at +0xc as the name and the double in f14.

- `__glXDispSwap_TexGenf` in `usr/lib/X11/dyDDX/glx.so` at 0xec0790
  **Inferred.** Reverses the three 4-byte words at +0, +4 and +8 in place. glTexGenf is then called with the word at +0 as the coordinate, the word at +4 as the name and the float at +8 in f14.

- `__glXDispSwap_TexGeni` in `usr/lib/X11/dyDDX/glx.so` at 0xec08e0
  **Inferred.** Byte-order fix-up for a TexGeni request from a client of the opposite endianness. It reverses the bytes of the three 32-bit words at the argument pointer in place (byte 0 with byte 3, byte 1 with byte 2 in each word), loads them into a0, a1 and a2, and calls `glTexGeni` through its GOT slot.

- `__glXDisp_ReadInstrumentsSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xec0a30
  **Inferred.** The word at offset 0 of the request is the sole argument to `glReadInstrumentsSGIX`. The routine reads nothing else, and returns the callee's result in v0.

- `__glXDispSwap_EvalCoord1fv` in `usr/lib/X11/dyDDX/glx.so` at 0xec0a80
  **Inferred.** Swaps the four bytes of one word at the argument pointer. The loop bound is the pointer plus four, so it runs once, and then `glEvalCoord1fv` is called with the same pointer.

- `__glXDispSwap_TexCoord4sv` in `usr/lib/X11/dyDDX/glx.so` at 0xec0b70
  **Inferred.** Eight bytes at the argument pointer hold four halfwords. The loop walks them two bytes at a time and swaps the two bytes of each, then passes the pointer to `glTexCoord4sv`.

- `__glXDisp_CopyTexImage2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec0c30
  **Inferred.** Loads eight words from the request at offsets 0 through 0x1c. The first four go to a0 to a3 and the last four to t0 to t3, and `glCopyTexImage2DEXT` is called with them. No word is converted.

- `glxSwapMakeCurrent` in `usr/lib/X11/dyDDX/glx.so` at 0xec0cb0
  **Inferred.** Takes two arguments. It reads the pointer at +0x2c of the first, loads the word that pointer names, and uses that word as an index into a four-byte table whose base comes from gp-0x6848. The record it picks has a flag word at +0xc; when the flag is zero the routine reverses three words of the second argument starting at offset 4. It then calls `glxMakeCurrent` with the two original arguments.

- `glxTexSubImage2DEXTReqSize_EXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec0e30
  **Inferred.** Copies five words from the argument block into the frame, the first from +0x14 and the others from +0x2c, +0x30, +0x24 and +0x28. When the flag argument a1 is nonzero it byte-reverses all five copies. A target equal to 0x8064 gives a zero result. Any other target passes the four fields after the first, plus two constant 1 values, to an unnamed local routine at 0xeeaa30 and returns what that routine gives back.

- `__glXDisp_Color4usv` in `usr/lib/X11/dyDDX/glx.so` at 0xec1030
  **Inferred.** Hands the request pointer to `glColor4usv` as it arrived. The shorts are not converted, so the client must already use host byte order.

- `__glXDisp_PolygonMode` in `usr/lib/X11/dyDDX/glx.so` at 0xec10f0
  **Inferred.** Loads the words at offsets 0 and 4 of the request as face and mode, then calls `glPolygonMode`. Nothing is checked or converted.

- `__glXDispSwap_PolygonMode` in `usr/lib/X11/dyDDX/glx.so` at 0xec1140
  **Inferred.** Two 32-bit words at the argument pointer arrive in the other byte order. The routine reverses each one, then calls `glPolygonMode` with the corrected face and mode.

- `impUnbindHWContextFromThread` in `usr/lib/X11/dyDDX/glx.so` at 0xec1230
  **Inferred.** Takes the pointer at +0x4c of the argument and the pointer stored at 0x200f80. If the word at +0x40 of the second pointer is nonzero, it calls an unnamed local routine at 0xee04a0 with the field at +8 of the first pointer, the constant 0x3ea and the address of a frame slot. The word at +0x40 is set to zero afterwards whichever way the result's sign falls, since both branches store zero.

- `glxConvolutionFilter2DEXTReqSize_EXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec12d0
  **Inferred.** Copies four words from +0x24, +0x28, +0x1c and +0x20 of the argument into the frame. If the flag in a1 is nonzero, all four are byte-reversed. The routine then calls the unnamed local routine at 0xeeaa30 with those four values and two constant 1 flags, and returns its result. It makes no proxy-target test.

- `__glXDisp_Disable` in `usr/lib/X11/dyDDX/glx.so` at 0xec1450
  **Inferred.** `glDisable` receives the word at offset 0 of the request. The wrapper is one load and one call with no check.

- `glxGetMinmaxParameterivSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec14a0
  **Inferred.** Its only job is to pass the argument on to `glxGetMinmaxParameterfvEXTSize` and hand back the size that comes out. It saves gp and ra around the call.

- `glx_rt_DestroyContext` in `usr/lib/X11/dyDDX/glx.so` at 0xec14e0
  **Inferred.** Saves the context pointer found at +0x4c of the argument in the frame. It then calls the function pointer stored at +0x58 of the argument, passing the argument itself, and afterwards calls `glxFreeContext` with the saved pointer. The callback runs before the free.

- `glxConvolutionParameterfvEXTSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec1540
  **Inferred.** Returns whatever `glxConvolutionParameterivEXTSize` computes for the same argument. The wrapper itself reads no field.

- `glxFreeGLXPbuffer` in `usr/lib/X11/dyDDX/glx.so` at 0xec1580
  **Inferred.** Tests the words at +8 and +0xc of the argument. Only when both are zero does it call `glxDeletePbuffer` with the first word of the argument, followed by `Xfree` on the argument pointer. If either word is nonzero, neither call happens.

- `__glXDispSwap_CopyTexSubImage1DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec1600
  **Inferred.** Six words at the argument pointer, covering offsets 0 to 0x17, are reversed one by one. `glCopyTexSubImage1DEXT` then receives the first four words in a0 to a3 and the fifth and sixth in t0 and t1.

- `__glXDisp_Indexfv` in `usr/lib/X11/dyDDX/glx.so` at 0xec1850
  **Inferred.** Forwards the pointer to `glIndexfv`, which reads the single float itself.

- `__glXDisp_TexSubImage2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec1890
  **Inferred.** Issues six `glPixelStorei` calls with enums 0xcf0 to 0xcf5. Enums 0xcf0 and 0xcf1 take the bytes at offsets 0 and 1 of the request, and 0xcf2 to 0xcf5 take the words at offsets 4, 8, 0xc and 0x10. It then calls `glTexSubImage2DEXT` with the words at +0x14 through +0x30 and the address of +0x38, which goes on the stack as the ninth argument.

- `__glXDisp_MultMatrixd` in `usr/lib/X11/dyDDX/glx.so` at 0xec19b0
  **Inferred.** When the pointer is not 8-byte aligned, a `memcpy` moves 0x80 bytes, a 4x4 double matrix, back by four bytes and the pointer steps back by four. The aligned path skips that. Either way `glMultMatrixd` gets the resulting pointer.

- `__glXDisp_MultMatrixf` in `usr/lib/X11/dyDDX/glx.so` at 0xec1a30
  **Inferred.** No alignment repair happens here, unlike the double-precision wrapper. The request address goes straight to `glMultMatrixf`.

- `glx_rt_DispDeleteTexturesEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec1a70
  **Inferred.** Advances the argument pointer by 0xc and saves it in the frame. The count is the word at the new position, and the name array begins four bytes after it. Both go to `glDeleteTexturesEXT`.

- `glxGetColorTableParameterivSGISize` in `usr/lib/X11/dyDDX/glx.so` at 0xec1ad0
  **Inferred.** Delegates the size computation to `glxGetColorTableParameterfvSGISize`, with the argument unchanged.

- `glxLightModelivSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec1cf0
  **Inferred.** Leaf routine that returns an element count for a light-model enum. It compares a0 with 0xb53, 0xb51, 0xb52 and 0x81f8 in turn. 0xb53 (`GL_LIGHT_MODEL_AMBIENT`) gives 4, the other three give 1, and any other value gives -1. It makes no calls.

- `__glXDispSwap_TexCoord4iv` in `usr/lib/X11/dyDDX/glx.so` at 0xec1db0
  **Inferred.** The sixteen bytes at the argument pointer are a four-int vector sent in the other byte order. Four words are byte-reversed in place, then `glTexCoord4iv` receives the original pointer.

- `__glXDisp_Vertex3sv` in `usr/lib/X11/dyDDX/glx.so` at 0xec1ea0
  **Inferred.** `glVertex3sv` receives the request address in a0 and reads the three shorts itself.

- `__glXDisp_Vertex4dv` in `usr/lib/X11/dyDDX/glx.so` at 0xec1ee0
  **Inferred.** If the pointer is not 8-byte aligned, `memcpy` moves 0x20 bytes back by four and the pointer is stepped back by four. `glVertex4dv` is then called with the pointer.

- `__glXDisp_TagSampleBufferSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xec1f60
  **Inferred.** Calls `glTagSampleBufferSGIX` without reading the request. The argument pointer is still in a0 at the call, and that callee takes no arguments, so the value is ignored.

- `__glXDisp_Indexdv` in `usr/lib/X11/dyDDX/glx.so` at 0xec1fb0
  **Inferred.** Same alignment rule as the four-double vertex wrapper, with an 8-byte copy: a misaligned pointer is moved back by four after a `memcpy` of one double. Then `glIndexdv` is called.

- `glx_rt_DispGetError` in `usr/lib/X11/dyDDX/glx.so` at 0xec2030
  **Inferred.** Calls `glGetError`, then writes a reply record. The record pointer is the word at +0x38 of the block that the global at 0x200f80 points to. The error code goes to +8, a copy of the word at +0x30 goes to +0x2c, and the words at +0x20 and +4 become 1 and 0. The byte at +0 is set to 1.

- `__glXDispSwap_ColorSubTable` in `usr/lib/X11/dyDDX/glx.so` at 0xec20c0
  **Inferred.** Nine words from offset 4 to 0x24 are byte-reversed. Then a header goes out through `glPixelStorei`: enum 0xcf0 gets 1 when header byte 0 is zero and 0 otherwise, 0xcf1 gets byte 1, and 0xcf2 to 0xcf5 get the words at +4, +8, +0xc and +0x10. `glColorSubTable` finally takes the words at +0x14, +0x18, +0x1c, +0x20 and +0x24, and the address of +0x28.

- `__glXDispSwap_PolygonOffset` in `usr/lib/X11/dyDDX/glx.so` at 0xec24a0
  **Inferred.** Byte-reverses the words at offsets 0 and 4, loads them as single-precision values into f12 and f13, and calls `glPolygonOffset`.

- `__glXDisp_Vertex4fv` in `usr/lib/X11/dyDDX/glx.so` at 0xec2590
  **Inferred.** The request pointer is stored and reloaded but otherwise untouched, then `glVertex4fv` reads the four floats from it.

- `glxSpriteParameterivSGIXReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xec25d0
  **Inferred.** Saves both arguments in the frame and branches-and-links to an unnamed local routine at 0xebed00 with them in a0 and a1, returning that result. The GOT value loaded before the branch is never used.

- `__glXDisp_TexSubImage1DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec2620
  **Inferred.** Runs six `glPixelStorei` calls for enums 0xcf0 to 0xcf5, the same ones the two-dimensional wrapper uses, then calls `glTexSubImage1DEXT`. Its arguments are the words at +0x14, +0x18, +0x1c, +0x24, +0x2c and +0x30, and the address of +0x38 in t2 as the seventh.

- `__glXDisp_ResetMinmaxEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec2730
  **Inferred.** The word at offset 0 of the request becomes the target for `glResetMinmaxEXT`. Nothing else is read.

- `__glXDispSwap_Viewport` in `usr/lib/X11/dyDDX/glx.so` at 0xec2780
  **Inferred.** Four words at the argument pointer are reversed, and `glViewport` is called with them in a0 to a3.

- `__glXDispSwap_TexCoord2fv` in `usr/lib/X11/dyDDX/glx.so` at 0xec2920
  **Inferred.** Each of the two words at the argument pointer is byte-reversed. The float values that result are then passed to `glTexCoord2fv` by pointer.

- `__glXDispSwap_TexCoord1sv` in `usr/lib/X11/dyDDX/glx.so` at 0xec2a10
  **Inferred.** A single halfword at the argument pointer has its two bytes exchanged, the loop bound being the pointer plus two. `glTexCoord1sv` is then called with the pointer.

- `__glXDisp_Vertex4iv` in `usr/lib/X11/dyDDX/glx.so` at 0xec2ad0
  **Inferred.** Spills the request pointer in a0 to 0x14(sp), reloads it unchanged, and calls the GOT slot at gp-0x6c0c with it. The callee's v0 is the function's result, and nothing else is computed. The 0x20-byte frame keeps gp at 8(sp) and ra at 0(sp).

- `__glXDispSwap_TexCoord2dv` in `usr/lib/X11/dyDDX/glx.so` at 0xec2b10
  **Inferred.** Reverses the bytes of the two doubles in a TexCoord2dv request, then calls the GOT slot at gp-0x6c64 with the adjusted pointer. If the pointer is not 8-byte aligned (andi 7 is nonzero), the GOT slot at gp-0x6e94 first moves 16 bytes down to ptr-4 with the pointer stored back at 0x24(sp). Each 8-byte element is reversed by swapping bytes 0 and 7, 1 and 6, 2 and 5, 3 and 4. The loop stops at start+16, so it runs twice.

- `__glXDispSwap_StencilMask` in `usr/lib/X11/dyDDX/glx.so` at 0xec2cb0
  **Inferred.** Swaps bytes 0 and 3 and then bytes 1 and 2 of the 32-bit mask in the request buffer, writing them back in place. The reversed word is then the a0 argument to the GOT slot at gp-0x6b30. The caller's buffer is changed by this routine.

- `__glXDispSwap_InitNames` in `usr/lib/X11/dyDDX/glx.so` at 0xec2d50
  **Inferred.** Does no byte reversal of its own. The incoming a0 is saved at 0x14(sp) and passed on unchanged to the GOT slot at gp-0x6b60. The frame is 0x20 bytes.

- `glxGetDetailTexFuncSGISSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec2d90
  **Inferred.** Sizes a reply. It calls the GOT slot at gp-0x6db8 with the first argument, the enumerant 0x809c in a1, and the address of a local word at (sp). It returns twice the value of that word, which the callee wrote.

- `glxTexGenivReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec2de0
  **Inferred.** Spills a0 and a1 to 0x14(sp) and 0x1c(sp), reloads them as they were, and calls the GOT slot at gp-0x72f4. The v0 that call leaves is returned. This routine computes no size of its own.

- `__glXDisp_PointParameterfvSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xec2e30
  **Inferred.** Unpacks a PointParameterfv request. The word at offset 0 becomes the parameter name in a0, and a pointer to offset 4 of the request becomes the value pointer in a1. Both go to the GOT slot at gp-0x69c8. No byte reversal is done.

- `sgiAsyncExec` in `usr/lib/X11/dyDDX/glx.so` at 0xec2ed0
  **Inferred.** Spills all six argument registers to this frame's upper slots at 0x74 to 0x9c, eight bytes apart, then points (sp) at a record at sp+8. The value at *a1 indexes a pointer table at the GOT slot at gp-0x6848, and the entry is kept at 0x48(sp). When the entry is null, the routine passes two addresses and the index to the GOT slot at gp-0x6e58 and returns 0. When the entry's flag word at +0xc is set, it calls the GOT slot at gp-0x7868 with the record and the entry, clears the flag, and returns the word at record+0x3c. Otherwise it fills the record with the saved arguments and sets record+0x3c to -1. It then calls the GOT slot at gp-0x73d4 with the record, the entry and the constant 1. A halfword of 1 at entry+0xa sets the flag at +0xc and returns 0. A record word at +0x38 equal to 2 returns 0x11. Any other case returns record+0x3c.

- `glxDestroyHyperpipeConfigSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xec30d0
  **Inferred.** Takes the index word at offset 0xc of its second argument and bounds it against the count word at offset 0x44 of a table reached through the GOT slot at gp-0x6f24. An index that is negative or too large stores the index at +0x18 of the object whose pointer sits at +0x2c of the first argument, and returns 2. Otherwise it resolves the entry through the GOT slot at gp-0x6e7c and calls the sub-entry's hook at +0x68 when that is set. It then builds a 0x20-byte record at 0x20(sp) with a byte of 1, a halfword from +0x1c of that object, and zeros. It calls the GOT slot at gp-0x6ec0 with the object, 0x20 and the record only when the word at +0x10 of the object is zero. The success path returns 0.

- `glxWaitX` in `usr/lib/X11/dyDDX/glx.so` at 0xec3710
  **Inferred.** Passes the first argument and the word at offset 4 of the second argument's record to the GOT slot at gp-0x74c4. If that call returns zero, the second argument's word at +4 is stored at +0x18 of the object whose pointer sits at +0x2c of the first argument. The success path returns the 32-bit global read through the GOT slot at gp-0x7008. Any nonzero return gives 0.

- `glx_rt_DispFlushRasterSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xec37a0
  **Inferred.** Saves a0 at 0x14(sp) and calls the GOT slot at gp-0x6d5c with it. The 0x20-byte frame is saved and restored around the call.

- `__glXDisp_Map1f` in `usr/lib/X11/dyDDX/glx.so` at 0xec3ec0
  **Inferred.** Decodes a Map1f request. It reads the target from offset 0, the order word from offset 0xc, two floats from offsets 4 and 8, and a pointer to the control points at offset 0x10. The GOT slot at gp-0x7df0 is called with the target, and its v0 is kept as the count. The GOT slot at gp-0x694c then takes the target, the two floats in f13 and f14, the count, the order and the points pointer as its arguments. The frame is 0x40 bytes.

- `__glXDispSwap_StopInstrumentsSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xec40c0
  **Inferred.** Reverses the word at the request pointer by swapping bytes 0 and 3 and then bytes 1 and 2, in place. The reversed word goes to the GOT slot at gp-0x69b8 as the only argument.

- `__glXDisp_Vertex2sv` in `usr/lib/X11/dyDDX/glx.so` at 0xec4160
  **Inferred.** The request pointer goes to the GOT slot at gp-0x6c28 by way of its spill slot at 0x14(sp). Nothing else happens.

- `__glXDisp_Vertex3dv` in `usr/lib/X11/dyDDX/glx.so` at 0xec41a0
  **Inferred.** Copies a 24-byte payload of three doubles to an 8-byte boundary if the pointer is misaligned. It calls the GOT slot at gp-0x6e94 with (ptr-4, ptr, 0x18), stores ptr-4 at 0x14(sp), and calls the GOT slot at gp-0x6c24 with the final pointer.

- `__glXDisp_Indexsv` in `usr/lib/X11/dyDDX/glx.so` at 0xec4da0
  **Inferred.** Forwards the request pointer to the GOT slot at gp-0x6ccc. The frame is 0x20 bytes.

- `__glXDisp_Vertex3fv` in `usr/lib/X11/dyDDX/glx.so` at 0xec5460
  **Inferred.** Forwards the request pointer to the GOT slot at gp-0x6c20. It reads nothing from the request.

- `__glXDisp_Viewport` in `usr/lib/X11/dyDDX/glx.so` at 0xec5b00
  **Inferred.** Takes four 32-bit words from the request at offsets 0, 4, 8 and 0xc and passes them in a0 to a3 in that order. The GOT slot at gp-0x6a60 is then called with them.

- `glxSpriteParameterivSGIXSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec5b60
  **Inferred.** Returns whatever the GOT slot at gp-0x7444 computes from the pointer in a0. The routine only sets up the frame and forwards the call.

- `tmDeleteVisual` in `usr/lib/X11/dyDDX/glx.so` at 0xec5fb0
  **Inferred.** Hands the visual handle to the GOT slot at gp-0x6f28. The callee's result is not kept or changed.

- `__glXDisp_Vertex3iv` in `usr/lib/X11/dyDDX/glx.so` at 0xec60b0
  **Inferred.** Reloads a0 from its spill slot and calls the GOT slot at gp-0x6c1c. The frame is 0x20 bytes.

- `__glXDisp_Indexiv` in `usr/lib/X11/dyDDX/glx.so` at 0xec6d60
  **Inferred.** Passes the request pointer through the spill slot at 0x14(sp) to the GOT slot at gp-0x6cd0.

- `glx_rt_DispFinish` in `usr/lib/X11/dyDDX/glx.so` at 0xec6870
  **Inferred.** Calls the GOT slot at gp-0x6e68 with the request pointer, then updates the state block reached through the global at 0x200f80 and its field +0x38. It copies the word at +0x30 of that block into +0x2c, sets the word at +0x20 to 1, clears the word at +4, and sets the byte at +0 to 1. The frame is 0x30 bytes.

- `__glXDisp_Map1d` in `usr/lib/X11/dyDDX/glx.so` at 0xec3d70
  **Inferred.** Decodes a Map1d request. The word at offset 0x10 of the request is the target, passed to the GOT slot at gp-0x7df0. Two doubles are copied from request offsets 0 and 8, and the control points start at offset 0x18. The point count is the product of the word at 0x14 and the GOT result, and it is taken as 0 when either is negative. The points are moved to an 8-byte boundary when needed, using a copy through the GOT slot at gp-0x6e94. The GOT slot at gp-0x6944 then receives the target, the doubles in f13 and f14, the GOT result in a3, the word at 0x14 in t0 and the points pointer in t1.

- `__glXDispSwap_StencilFunc` in `usr/lib/X11/dyDDX/glx.so` at 0xec3f70
  **Inferred.** Byte-reverses three 32-bit words of the request in place, one word at a time. The swaps are 0 with 3 and 1 with 2, then 4 with 7 and 5 with 6, then 8 with 11 and 9 with 10. The GOT slot at gp-0x6ad0 is then called with the three reversed words in a0, a1 and a2.

- `__glXDispSwap_TexCoord2sv` in `usr/lib/X11/dyDDX/glx.so` at 0xec5ff0
  **Inferred.** Reverses the two 16-bit values of a TexCoord2sv request in place by swapping each pair of bytes. The loop runs from the request pointer to its +4 end and steps by 2. The GOT slot at gp-0x6c58 is then called with the same request pointer.

- `__glXDispSwap_TexCoord3fv` in `usr/lib/X11/dyDDX/glx.so` at 0xec5a10
  **Inferred.** Reverses three 32-bit floats of a TexCoord3fv request in place, swapping bytes 0 with 3 and 1 with 2 in each word. The loop stops at request+0xc. The GOT slot at gp-0x6c50 is then called with the request pointer.

- `PanoramiXGetVisual` in `usr/lib/X11/dyDDX/glx.so` at 0xec6720
  **Inferred.** Looks up a visual record in a table of 36-byte records. The record table is taken from the pointer table at the GOT slot at gp-0x6f24 plus 0x48, indexed by the first argument times 4, and the table's count is the halfword at +0x78. The search compares the first word of each record with the second argument, and returns the matching record's address, or 0 when none matches. The list pointer at +0x7c of the screen entry is the base of the records.

- `__glXDispSwap_PolygonStipple` in `usr/lib/X11/dyDDX/glx.so` at 0xec6da0
  **Inferred.** Replays a byte-swapped glPolygonStipple request. It reverses the bytes of the four 32-bit words at request offsets +4, +8, +12 and +16 in place, so the request is in host order afterwards. It then calls glPixelStorei six times with the standard unpack enums 0xcf0 (swap bytes, set from whether byte 0 is zero), 0xcf1 (LSB first, the raw byte 1), 0xcf2 (row length, word +4), 0xcf3 (skip rows, word +8), 0xcf4 (skip pixels, word +12) and 0xcf5 (alignment, word +16). The last call hands glPolygonStipple the pointer to request offset +0x14. The bytes at +0 to +3 are never swapped.

- `__glXDisp_DrawArraysEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xec70f0
  **Inferred.** Replays a packed glDrawArraysEXT request that carries a table of client arrays. The request header is 12 bytes: the vertex count at +0, the array count at +4 and the mode at +8. Each following 12-byte table entry gives a type at +0, a component count at +4 and an array token at +8. A first pass sums each array's padded byte size using glxTypeSize, and the total is kept in a stack slot. A second pass points each array at its data and calls the matching pointer routine for the token: 0x8074 vertex, 0x8075 normal, 0x8076 colour, 0x8077 index, 0x8078 texture coordinate and 0x8079 edge flag, then enables that array with glEnable. A GL_DOUBLE array (type 0x140a) is first copied with memcpy into a block carved from the stack. The routine ends with glDrawArraysEXT(mode, 0, count) and disables the six arrays.
- `__glXDisp_Map2d` in `usr/lib/X11/dyDDX/glx.so` at 0xec75b0
  **Inferred.** Replays a glMap2d request. The request holds the four doubles u1, u2, v1 and v2 at offsets 0x00 to 0x18, the target at +0x20, the u order at +0x24 and the v order at +0x28, with the control points from +0x2c on. The routine asks glxEvalComputeK for the components per point (K) from the target. If either order is negative, or K is negative, the point count is zero; the target itself is not checked. Otherwise the count is K times the u order times the v order. The routine copies the eight-byte doubles into stack slots with memcpy, and when the control-point pointer is not 8-byte aligned it first moves the points down four bytes. It then calls glMap2d with the strides vorder times K and K, the orders and the point pointer.

- `__glXDisp_Map2f` in `usr/lib/X11/dyDDX/glx.so` at 0xec7790
  **Inferred.** Replays a glMap2f request with the same layout in single precision. The target is at +0, u1 and u2 are floats at +4 and +8, the u order at +0xc, v1 and v2 are floats at +0x10 and +0x14, and the v order at +0x18. The control points start at +0x1c and are passed by pointer without any copy, realignment or range check. K comes from glxEvalComputeK, and the routine calls glMap2f with the u stride set to the v order times K, the v stride set to K, and the orders and points unchanged.
- `__glXDisp_Bitmap` in `usr/lib/X11/dyDDX/glx.so` at 0xec7d00
  **Inferred.** Replays a glBitmap request. It calls glPixelStorei six times with the unpack enums 0xcf0 to 0xcf5, passing the raw byte at +0 (swap bytes), the raw byte at +1 (LSB first), and the words at +4 (row length), +8 (skip rows), +0xc (skip pixels) and +0x10 (alignment). Unlike the polygon-stipple replay it does not reverse any bytes and does not reduce the swap flag to a boolean. The bitmap call takes the width from +0x14 and the height from +0x18, the floats at +0x1c, +0x20, +0x24 and +0x28 as the origin and the move values, and passes the bitmap data at +0x2c by pointer.

- `glxErrorFlagIsSet` in `usr/lib/X11/dyDDX/glx.so` at 0xec7e10
  **Inferred.** Reports whether the GLX error flag is set for the calling thread. It loads the pointer stored at the fixed address 0x200f80, takes the structure at +0x38 from it, and returns 1 when the word at +0x4c of that structure is nonzero, otherwise 0. It makes no calls.

- `glxRender` in `usr/lib/X11/dyDDX/glx.so` at 0xec7e70
  **Inferred.** Walks the render commands packed after a GLX render request header. The header is 8 bytes: the request length in 4-byte units at +2 (read as a halfword and multiplied by 4) and the context tag at +4. The routine calls glxLookupContextByTag with the first argument and the tag. If no context matches, it stores the tag at +0x18 of the record that the first argument holds at +0x2c, and returns the word at 0xf130d4. Otherwise it sets the context's +0x34 word to 1 and walks the commands. Each command has its length as a halfword at +0 and its opcode at +2. Opcodes 0x01 to 0xc4 index one 8-byte table at 0xf10430, 0x800 to 0x822 index a second table at 0xf10b38, and 0x1000 to 0x101b index a third table at 0xf10a58. An opcode outside these ranges stores the number of commands handled so far at that same +0x18 and returns the word at 0xf130dc. The table entry holds a fixed size and an optional size function. When the function is set it is called with the command's data and the result is added to the fixed size. The padded size must match the command's length, and a mismatch, or a command that runs past the end of the request, returns 0x10. When the walk finishes, the routine calls glxSendRenderCommand with the client record and the request.

- `glx_rt_CreateContext` in `usr/lib/X11/dyDDX/glx.so` at 0xec7890
  **Inferred.** Builds a context from a create request. It copies 160 bytes (twenty eight-byte items) from the third argument at +0x48 into a local array. When the fourth argument is 0x8014 (RGBA) or 0x8015 (colour index) it clears the matching flag byte in that array, and for colour index it also zeroes a block of words. It then calls a local helper on the pointer chain from the first argument, stores one byte of the helper's result at the first argument's +8, and calls a second local helper on that value to get a string. The routine scans the __gl_adapters table with strcmp for that string. On a match it stores the first argument at global 0xf10000 +0xc9c and calls the function pointer paired with the matched string, passing the global block at +0xc50, the local array and the second argument. Without a match it calls a local routine with a NULL first argument and the string at 0xf0c680, and returns 0. Both helpers are unnamed in this build, so what they return is known only from their call sites.

- `glxAddContextToListOfClient` in `usr/lib/X11/dyDDX/glx.so` at 0xec7c70
  **Inferred.** Chooses the context list head for a new context and passes it to glxAddContextToList. If the first argument's word at +0x2c is nonzero, the list head is the second argument plus 0x28. Otherwise it reads the client index from the first argument at +0x80 and uses the entry for that index in the clientThreadp table, plus 0x34. The first argument is passed through as the context to add.
- `glx_rt_DispPixelStoref` in `usr/lib/X11/dyDDX/glx.so` at 0xec81b0
  **Inferred.** Unpacks a single-float pixel-store command. It steps the request pointer past an 8-byte header, then reads the pname word at +8 and the float at +12 and calls glPixelStoref with them. It does no swapping and no range checks.

- `glx_rt_DispPixelStorei` in `usr/lib/X11/dyDDX/glx.so` at 0xec8210
  **Inferred.** The integer counterpart of glx_rt_DispPixelStoref. It skips the 8-byte header, then calls glPixelStorei with the pname word at +8 and the value word at +12.

- `__glXDispSwap_ReadBuffer` in `usr/lib/X11/dyDDX/glx.so` at 0xec8270
  **Inferred.** Replays a byte-swapped glReadBuffer request. It reverses the four bytes of the word at offset 0 in place, swapping bytes 0 and 3 and bytes 1 and 2, and then calls glReadBuffer with that word.

- `__glXDispSwap_TexCoord2iv` in `usr/lib/X11/dyDDX/glx.so` at 0xec8310
  **Inferred.** Replays a byte-swapped glTexCoord2iv request. It loops over the eight bytes of payload (two 32-bit words, starting at offset 0) and reverses the bytes of each word in place. It then calls glTexCoord2iv with the original request pointer.

- `__glXDispSwap_Lightiv` in `usr/lib/X11/dyDDX/glx.so` at 0xec8490
  **Inferred.** Replays a byte-swapped glLightiv request. It reverses the bytes of the light word at +0 and the pname word at +4, then asks glxLightivSize for the number of values that pname takes. A negative result is treated as zero. It reverses each 32-bit value that follows at +8, using the size as the loop bound, and then calls glLightiv with the light, the pname and a pointer to the values at +8.

- `__glXDisp_Vertex2dv` in `usr/lib/X11/dyDDX/glx.so` at 0xec8680
  **Inferred.** Replays a glVertex2dv request, which carries two doubles (16 bytes) at the request pointer. If the pointer is not 8-byte aligned, it moves the 16 bytes down four bytes with memcpy and passes the moved pointer. It then calls glVertex2dv. No bytes are swapped.

- `__glXDisp_InitNames` in `usr/lib/X11/dyDDX/glx.so` at 0xec8700
  **Inferred.** Passes the request pointer through to glInitNames, which takes no arguments. The argument sits in the 0x20-byte frame at +0x14, and the routine reads nothing from the request.
- `__glXDispSwap_Map1d` in `usr/lib/X11/dyDDX/glx.so` at 0xec8fc0
  **Inferred.** Replays a byte-swapped glMap1d request. It reverses each 8-byte double at offsets 0 (u1) and 8 (u2), and reverses the words for the target at +0x10 and the order at +0x14. K comes from glxEvalComputeK on the target. The count is the order times K, or zero when the order is not positive or K is negative. Each 8-byte control-point value from +0x18 on is reversed in place, and the points are moved down four bytes when they are not 8-byte aligned. The routine then calls glMap1d with u1, u2, K as the stride, the order and the point pointer.

- `__glXDispSwap_Map1f` in `usr/lib/X11/dyDDX/glx.so` at 0xec9420
  **Inferred.** Replays a byte-swapped glMap1f request in single precision. It reverses the words for the target at +0, the floats u1 at +4 and u2 at +8, and the order at +0xc, then takes K from glxEvalComputeK. The count is the order times K, or zero when the order is not positive or K is negative. Each 32-bit point from +0x10 on is reversed in place. The routine calls glMap1f with u1, u2, K as the stride, the order and a pointer to the points at +0x10. Unlike the double version it does no realignment.
- `__glXDispSwap_ColorTableSGI` in `usr/lib/X11/dyDDX/glx.so` at 0xec8740
  **Inferred.** Replays a byte-swapped glColorTableSGI request. It reverses the nine 32-bit words from +4 to +0x27 in place and leaves the two flag bytes at +0 and +1 alone. It then calls glPixelStorei six times, as the polygon-stipple replay does: swap bytes from whether byte 0 is zero, LSB first from byte 1, and the words at +4, +8, +0xc and +0x10 for row length, skip rows, skip pixels and alignment. Last it calls glColorTableSGI with the target at +0x14, the internal format at +0x18, the width at +0x1c, the format at +0x20, the type at +0x24 and a pointer to the table data at +0x28.
- `__glXDisp_Vertex2fv` in `usr/lib/X11/dyDDX/glx.so` at 0xec8f80
  **Inferred.** Passes the request pointer to glVertex2fv with no byte reversal and no realignment, so the floats at offsets 0 and 4 are taken from the request as they lie.

- `__glXDisp_Vertex2iv` in `usr/lib/X11/dyDDX/glx.so` at 0xec98f0
  **Inferred.** Keeps the request pointer in the 0x20-byte frame at +0x14 and passes it straight to glVertex2iv, which reads the integers at offsets 0 and 4. It reverses nothing and realigns nothing.

- `glxGetConvolutionParameterfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xec98b0
  **Inferred.** Forwards its argument, kept in the 0x20-byte frame at +0x14, to glxGetConvolutionParameterivEXTSize and returns that routine's result. The float and integer queries share one size table.

- `glx_rt_DispSelectBuffer` in `usr/lib/X11/dyDDX/glx.so` at 0xeca370
  **Inferred.** Unpacks a SelectBuffer request for the calling thread. It skips an 8-byte header and reads the buffer size from the word at request +8. The thread's buffer pointer is kept at +0x40 and its capacity at +0x44, both in the record at the thread pointer loaded from the fixed address 0x200f80 and then +0x38. When the size is larger than the capacity, the routine grows the buffer with Xrealloc to size times four bytes. If that allocation fails, it stores 0xb (BadAlloc) at the record's +0x24, stores the size at +0x28 and returns without calling glSelectBuffer. Otherwise it calls glSelectBuffer with the size and the buffer.

- `glxClearErrorFlag` in `usr/lib/X11/dyDDX/glx.so` at 0xeca460
  **Inferred.** Clears the GLX error flag for the calling thread. It loads the pointer at the fixed address 0x200f80, takes the structure at its +0x38 and stores zero in that structure's +0x4c word, which is the flag that glxErrorFlagIsSet reads. It makes no calls and returns nothing.

- `__glXDispSwap_LoadName` in `usr/lib/X11/dyDDX/glx.so` at 0xeca490
  **Inferred.** Replays a byte-swapped glLoadName request. It reverses the four bytes of the word at offset 0 in place, swapping bytes 0 and 3 and bytes 1 and 2, and calls glLoadName with that word.

- `glx_rt_SwapIntervalSGI` in `usr/lib/X11/dyDDX/glx.so` at 0xeca530
  **Inferred.** Forwards a swap-interval request, which the SGI swap-interval name suggests. It reads the context pointer from the first argument's +0x4c word and the drawable from that context's +0x38 word. It then calls the local routine at 0xed0770 with the context and calls the local routine at 0xee04a0 with the constant 0x3ee and the address of a two-word stack block. That block holds the drawable and the second argument. The routine makes no direct GL call. Neither local routine is named in this build.

- `glxGetDrawablePrivate` in `usr/lib/X11/dyDDX/glx.so` at 0xecaa30
  **Inferred.** Finds or creates the GLX private record for a drawable ID. It looks the ID up with LookupIDByType in the resource type held at 0xf130ac and returns the record if one exists. Otherwise it allocates a 40-byte record with Xalloc and zeroes its first words. It sets the word at +0x20 to 1 and stores the malloc, calloc, realloc and free entries from the GOT at +8, +0xc, +0x10 and +0x14. It then registers the record with AddResource. If registration fails, the record is freed with Xfree and the routine returns without a record.

- `glxSwapDestroyGLXPbufferSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xecab90
  **Inferred.** Replays a byte-swapped request that destroys a GLX pbuffer. It reverses the halfword at request +2 and the word at +0xc in place. It then calls glxDestroyGLXPbufferSGIX with the first argument and the request pointer.

- `__glXDispSwap_CallList` in `usr/lib/X11/dyDDX/glx.so` at 0xecac60
  **Inferred.** Replays a byte-swapped glCallList request. It reverses the word at offset 0, swapping bytes 0 and 3 and bytes 1 and 2, and calls glCallList with that word as the list number.

- `__glXDispSwap_DrawArrays` in `usr/lib/X11/dyDDX/glx.so` at 0xecb110
  **Inferred.** Forwards the request pointer to __glXDispSwap_DrawArraysEXT, the byte-swapped replay of the array request, from a 0x20-byte frame whose argument is at +0x14. It returns what that routine returns.

- `glxTexEnvivReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xecb1f0
  **Inferred.** Returns the byte size of a glTexEnviv vector request. It reads the parameter name from the word at +4 and, when the second argument is nonzero (a byte-swapped request), reverses its four bytes. It passes the name to glxTexEnvivSize for the number of values and returns that count shifted left by 2, that is count times four.

- `__glXDispSwap_PushMatrix` in `usr/lib/X11/dyDDX/glx.so` at 0xecb290
  **Inferred.** Calls glPushMatrix with the request pointer from the 0x20-byte frame at +0x14, which that call does not use. The byte-swapped variant has no fields to reverse, so the wrapper only forwards.

- `glxLightfvReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xecb2d0
  **Inferred.** Forwards its two arguments unchanged to glxLightivReqSize. It spills a0 and a1 to its frame, reloads them as they were, and calls through the GOT slot at gp-0x7840 (0xf12004), which holds glxLightivReqSize. The callee's return in v0 is not touched.

- `glx_rt_DispFlush` in `usr/lib/X11/dyDDX/glx.so` at 0xecbff0
  **Inferred.** Calls libGLcore glFlush through the GOT slot at gp-0x6e6c (0xf129d8) with no arguments set up. The incoming a0 is spilled to 0x14(sp) and never reloaded, so the call passes whatever a0 still holds.

- `glxTexGenfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xecd5b0
  **Inferred.** Hands its a0 to glxTexGenivSize, reached through the GOT slot at gp-0x7268 (0xf125dc), and returns that result. It is the float-form size query delegating to the integer form.

- `glxLightfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xece550
  **Inferred.** Single-argument delegate: a0 goes to glxLightivSize, called through the GOT slot at gp-0x7f00 (0xf11944). Nothing is stored in the glx state.

- `__glXDisp_EvalCoord2fv` in `usr/lib/X11/dyDDX/glx.so` at 0xecfc30
  **Inferred.** Passes the request pointer in a0 to libGLcore glEvalCoord2fv through the GOT slot at gp-0x6af0 (0xf12d54). Unlike the double form, it does no alignment check and moves no bytes first.

- `__glXDisp_EvalCoord2dv` in `usr/lib/X11/dyDDX/glx.so` at 0xecedc0
  **Inferred.** Tests the low three bits of the request pointer. When they are set it calls the helper at 0xea8a30 with destination pointer-4, source pointer and length 0x10, then steps the pointer back by 4 and stores it in the frame. It then calls libGLcore glEvalCoord2dv through the GOT slot at gp-0x6af4 (0xf12d50) with the aligned pointer.

- `__glXDisp_TexParameterf` in `usr/lib/X11/dyDDX/glx.so` at 0xece590
  **Inferred.** Reads the target word at request offset 0 and the pname word at offset 4 into a0 and a1, loads the float at offset 8 into f14, and calls libGLcore glTexParameterf (GOT gp-0x6b98, slot 0xf12cac). The float sits in f14 because it is the third argument.

- `__glXDisp_TexParameteri` in `usr/lib/X11/dyDDX/glx.so` at 0xece860
  **Inferred.** Copies the three request words at offsets 0, 4 and 8 into a0, a1 and a2 and calls libGLcore glTexParameteri (GOT gp-0x6b90, slot 0xf12cb4). No bytes are reversed here, which separates it from the __glXDispSwap_ entries.

- `__glXDisp_StencilOp` in `usr/lib/X11/dyDDX/glx.so` at 0xecfa70
  **Inferred.** Passes the request words at offsets 0, 4 and 8 as the three stencil operation codes to libGLcore glStencilOp (GOT gp-0x6acc, slot 0xf12d78). The routine itself checks no codes; the byte order is taken as the host's.

- `glx_rt_DispSwapGetHistogram` in `usr/lib/X11/dyDDX/glx.so` at 0xeccdd0
  **Inferred.** Subtracts 4 from the request pointer in a0, stores the result in the frame, and calls glx_rt_DispSwapGetHistogramEXT (GOT gp-0x7790, slot 0xf120b4) with it. The reason for the 4-byte step back is not visible in this routine.

- `glxQueryExtensionsString` in `usr/lib/X11/dyDDX/glx.so` at 0xecbde0
  **Inferred.** Takes the client record's pointer at +0x2c and the screen number from the second argument. It walks the screen table at gp-0x6f24 + 0x48 + 4 × screen, reads the list pointer at +0x1b4 of that screen record, and indexes it by a global at gp-0x6f20. It asks the helper at 0xea8a44 for the string length, allocates the (length in words × 4)-byte buffer with 0xea88c8, and copies with 0xea8a58. A reply header with byte 1, the sequence number from client +0x1c and the word count goes out through glxSwapQueryExtensionsStringReply when the client's +0x10 flag is set, and through the helper at 0xea8954 otherwise. When that allocation fails it returns 0xb (BadAlloc) and sends no reply.

- `__glXDispSwap_TexCoord3iv` in `usr/lib/X11/dyDDX/glx.so` at 0xecc030
  **Inferred.** Reverses the bytes of three 32-bit words at the request pointer (offsets 0, 4 and 8, so 12 bytes), then calls libGLcore glTexCoord3iv (GOT gp-0x6c4c, slot 0xf12bf8) with the same pointer. There is no alignment check.

- `__glXDispSwap_ClipPlane` in `usr/lib/X11/dyDDX/glx.so` at 0xecc120
  **Inferred.** If the pointer is not 8-byte aligned it moves 0x24 bytes down by 4 through 0xea8a30. It then reverses the plane-number word at +0x20 and each of the four doubles in +0x00 to +0x1f, byte by byte. It calls libGLcore glClipPlane with the plane number from +0x20 in a0 and the equation pointer in a1 (GOT gp-0x6c04, slot 0xf12c40).

- `glx_rt_DispSwapGetConvolutionParameterfv` in `usr/lib/X11/dyDDX/glx.so` at 0xecc310
  **Inferred.** Byte-reversed render-thread reply for glGetConvolutionParameterfv. It skips an 8-byte header, reverses the pname word at +4, and asks glxGetConvolutionParameterfvSize (GOT gp-0x7acc, slot 0xf11d78) for the float count, clamped at zero. The buffer comes from 0xea8940 when the record's +0x30 pointer is already set, else from 0xea88c8. It then reverses the target word at +0 and calls glGetConvolutionParameterfv (GOT gp-0x6d40). The reversal block for the returned floats sits in the middle of the body and I did not trace it one instruction at a time.

- `__glXDispSwap_CopyPixels` in `usr/lib/X11/dyDDX/glx.so` at 0xecc720
  **Inferred.** Reverses five 32-bit words at offsets 0 through 0x13 of the request, then calls libGLcore glCopyPixels (GOT gp-0x6aa8, slot 0xf12d9c) with the first four in a0 to a3 and the fifth in t0 (the a4 register).

- `glx_rt_DispSwapGetHistogramParameterfvEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xecc920
  **Inferred.** Byte-reversed render-thread reply for glGetHistogramParameterfvEXT. It skips a 12-byte header and reverses the pname word at +4 before asking glxGetHistogramParameterfvEXTSize (GOT gp-0x7d48, slot 0xf11afc) for the count. Buffers come from 0xea8940 or 0xea88c8 as in the Convolution form, and the call is glGetHistogramParameterfvEXT (GOT gp-0x6d9c, slot 0xf12aa8). The reply reversal block is not traced in this entry.

- `__glXDispSwap_BlendEquationEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xeccd30
  **Inferred.** Reverses the four bytes of the mode word at offset 0 of the request and calls libGLcore glBlendEquation (GOT gp-0x6a58, slot 0xf12dec) with it in a0.

- `glxSwapQueryServerString` in `usr/lib/X11/dyDDX/glx.so` at 0xecce20
  **Inferred.** Byte-reverses three fields of the request in place: the 16-bit length at +2, the 32-bit word at +4 and the 32-bit word at +8. It then calls glxQueryServerString (GOT gp-0x7b8c, slot 0xf11cb8) with the client pointer and the request pointer, unchanged. The field meanings follow the GLX request layout and are not checked against a source here.

- `__glXDispSwap_ReferencePlaneSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeccf40
  **Inferred.** Realigns the request by 0x20 bytes through 0xea8a30 when the pointer is not 8-byte aligned, then reverses the bytes of four 8-byte doubles in the block. It calls libGLcore glReferencePlaneSGIX (GOT gp-0x69b4, slot 0xf12e90) with the block pointer in a0.

- `__glXDispSwap_PolygonOffsetEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xecd0e0
  **Inferred.** Reverses two 32-bit floats at request offsets 0 and 4, loads the first into f12 and the second into f13, and calls libGLcore glPolygonOffsetEXT (GOT gp-0x6a54, slot 0xf12df0). The n32 convention puts the second float in f13, not f14.

- `__glXDispSwap_Rotated` in `usr/lib/X11/dyDDX/glx.so` at 0xecd5f0
  **Inferred.** Realigns by 0x20 bytes through 0xea8a30 when the pointer is unaligned, then reverses each 8-byte chunk at offsets 0, 8, 0x10 and 0x18. It loads the four doubles into f12, f13, f14 and f15 and calls libGLcore glRotated (GOT gp-0x6a78, slot 0xf12dcc). I checked the first and last reversal blocks and the pattern between them.

- `__glXDispSwap_Rotatef` in `usr/lib/X11/dyDDX/glx.so` at 0xecd910
  **Inferred.** Reverses four 32-bit words at offsets 0, 4, 8 and 0xc, loads them into f12 to f15, and calls libGLcore glRotatef (GOT gp-0x6a74, slot 0xf12dd0).

- `glx_rt_DispGetHistogramParameterfv` in `usr/lib/X11/dyDDX/glx.so` at 0xecdb10
  **Inferred.** Render-thread reply for glGetHistogramParameterfv with no byte reversal. It skips an 8-byte header, reads the pname at +4, and asks glxGetHistogramParameterfvSize (GOT gp-0x77c0, slot 0xf12084) for the count, clamped at zero. It takes the buffer from 0xea8940 or 0xea88c8 and reallocates when the record's +0x34 capacity is below count × 4. After glClearErrorFlag it calls glGetHistogramParameterfv (GOT gp-0x6d38, slot 0xf12b0c), and a set error flag gives the error reply. A count of one copies the float as a raw 32-bit word through f0 into the reply at +0x10. Larger counts store the buffer at +0x2c and the count at +4.

- `__glXDisp_CopyTexSubImage2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xecdd80
  **Inferred.** Loads eight request words into the argument registers: offsets 0, 4, 8 and 0xc into a0 to a3, and 0x10, 0x14, 0x18 and 0x1c into a4 to a7. It calls libGLcore glCopyTexSubImage2D (GOT gp-0x6a14, slot 0xf12e30) with them. No byte order change is made.

- `__glXDispSwap_MinmaxEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xece450
  **Inferred.** Reverses two 32-bit words at offsets 0 and 4 and leaves the byte at offset 8 alone. It calls libGLcore glMinmax (GOT gp-0x6a34, slot 0xf12e10) with the first word as target, the second as internalformat and the unsigned byte as sink.

- `glx_rt_DispGetHistogramParameteriv` in `usr/lib/X11/dyDDX/glx.so` at 0xece5f0
  **Inferred.** The integer-form counterpart of the float histogram reply: same header skip, same buffer and error handling, with glxGetHistogramParameterivSize (GOT gp-0x7834, slot 0xf12010) for the count and glGetHistogramParameteriv (GOT gp-0x6d34, slot 0xf12b10) for the call. The single value is still moved through f0 as a raw word, so an integer is returned bit for bit.

- `glxRtDispRender` in `usr/lib/X11/dyDDX/glx.so` at 0xeceb80
  **Inferred.** Walks a GLX render command stream. The request's halfword at +2 gives its length in words; the walk covers that length minus the 8-byte header. Each command starts with a byte length at +0 and an opcode at +2. Opcodes 0x800 to 0x822 index one table after subtracting 0x800, 0x1000 to 0x101b index a second table after subtracting 0x1000, and any other opcode indexes a third table directly. The argument a1 chooses between the two tables for each range, and I infer that it is a byte-swap flag but did not confirm it. Each handler gets the pointer past the 4-byte command header.

- `glxDeliverEvents` in `usr/lib/X11/dyDDX/glx.so` at 0xecf410
  **Inferred.** Looks up a per-screen record through the client's table at +0x84, indexed by a global, and returns 0 unless the record's masks at +0x24 or +0x28 overlap the mask in the fourth argument. When they overlap it calls the helper at 0xea8918 once for the head record and then for each record on the list at +0x2c. It counts positive and negative results, returns the positive count when one exists, and otherwise returns the negative count.

- `glx_rt_DispSwapDeleteTexturesEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xecf600
  **Inferred.** Skips a 12-byte header, reverses the count word at the new pointer, then reverses each of the following count words. It calls libGLcore glDeleteTexturesEXT (GOT gp-0x6d88, slot 0xf12abc) with the count in a0 and the name list at pointer+4 in a1.

- `glxGetDrawableEventMask` in `usr/lib/X11/dyDDX/glx.so` at 0xecf780
  **Inferred.** Takes a key record in a0 and a lookup record in a1. The entry it reads from a1's table at +0x84, indexed by the global at gp-0x6f3c, is compared first. If the second table (global at gp-0x6f38, indexed by bits 22 to 29 of the word at a1+4) holds a0 in that slot, the routine returns the entry's word at +0x24. Otherwise it walks the list from the entry's +0x2c, comparing a0's word at +4 with each node's word at +4 masked by 0x3fc00000, and returns the node's word at +8 on the first match, or 0 when none matches.
- `__glXDisp_CopyTexSubImage3DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xecf880
  **Inferred.** Loads nine request words: offsets 0, 4, 8 and 0xc into a0 to a3, 0x10, 0x14, 0x18 and 0x1c into t0 to t3, and offset 0x20 into the stack slot at 4(sp), the low half of the first argument doubleword. It calls libGLcore glCopyTexSubImage3D (GOT gp-0x6a10, slot 0xf12e34).

- `printPanoramiXVisuals` in `usr/lib/X11/dyDDX/glx.so` at 0xecf910
  **Inferred.** Prints the PanoramiX visual table, one header and then one line per visual. The outer loop runs over a screen count read from the global at gp-0x6f48, and the inner count is the word at +0x44 of the object whose address the GOT slot at gp-0x6f24 holds. Each print goes through the helper at 0xea8b5c with format strings in the read-only data at 0xf10000 and above. I did not decode the format strings, so the printed text is not described.

- `__glXDisp_TexImage3DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xecfad0
  **Inferred.** Sets seven unpack parameters before the image call. Byte offset 0 goes to GL_UNPACK_SWAP_BYTES (0xcf0) and byte offset 1 to GL_UNPACK_LSB_FIRST (0xcf1). Words at +4, +8, +0x10, +0x14, +0x1c and +0x20 go to GL_UNPACK_ROW_LENGTH (0xcf2), GL_UNPACK_IMAGE_HEIGHT (0x806e), GL_UNPACK_SKIP_ROWS (0xcf3), GL_UNPACK_SKIP_IMAGES (0x806d), GL_UNPACK_SKIP_PIXELS (0xcf4) and GL_UNPACK_ALIGNMENT (0xcf5). The glPixelStorei calls go through GOT gp-0x6e10 (slot 0xf12a34). Then libGLcore glTexImage3D (GOT gp-0x6990, slot 0xf12eb4) takes target, level, internalformat, width, height and depth from +0x24 to +0x38, border from +0x40, format from +0x44, type from +0x48 and the pixel pointer at request +0x50. The word at +0x3c is not read.

- `glx_rt_DispSwapGetConvolutionParameteriv` in `usr/lib/X11/dyDDX/glx.so` at 0xecfc70
  **Inferred.** Byte-reversed reply for glGetConvolutionParameteriv, the integer form of the Convolution float reply above. It skips 8 bytes, reverses the pname word, and takes the count from glxGetConvolutionParameterivSize (GOT gp-0x7678, slot 0xf121cc) through a direct call rather than the branch-and-link the float form uses. The GL call is glGetConvolutionParameteriv (GOT gp-0x6d3c, slot 0xf12b08). The reply reversal block is not traced in this entry.

- `glx_rt_DispGetMinmaxParameterfvEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed0130
  **Inferred.** The minmax form of the float histogram reply. It skips a 12-byte header, reads target and pname from the advanced pointer, and takes its count from glxGetMinmaxParameterfvEXTSize (GOT gp-0x7d9c, slot 0xf11aa8). Buffers, error handling and the single-value path through f0 match the histogram float reply. The GL call is glGetMinmaxParameterfvEXT (GOT gp-0x6d94, slot 0xf12ab0).

- `glxQueryVersion` in `usr/lib/X11/dyDDX/glx.so` at 0xed03a0
  **Inferred.** Builds a 32-byte reply on the stack: byte 1 at +0, the sequence number from the client's record at +0x1c at +2, a zero length word at +4, and the constants 1 and 3 at +8 and +0xc, which I read as the major and minor version. The record at client +0x2c supplies the sequence number and the flag. If the flag at its +0x10 is nonzero the reply goes through glxSwapQueryVersionReply (GOT gp-0x75fc, slot 0xf12248). Otherwise a 0x20-byte send goes through the helper at 0xea8954. The routine returns 0.

- `glx_rt_DispGenTextures` in `usr/lib/X11/dyDDX/glx.so` at 0xed0450
  **Inferred.** Render-thread glGenTextures. It skips an 8-byte header and reads the count at the new pointer. A name table at the object's +0x30 pointer is grown when its capacity at +0x34 is below count × 4, using 0xea8940 to reuse an existing table and 0xea88c8 to create one. If creation fails it sets the object's error word to 0xb (BadAlloc) at +0x24. Otherwise it clears the error flag, calls libGLcore glGenTextures with the count and table (GOT gp-0x6d50, slot 0xf12af4), and checks glxErrorFlagIsSet (GOT gp-0x7b08, slot 0xf11d3c). On success it stores the count at +4 and marks the record done; on error it stores 0 at +4 and marks the record done.

- `__glXDispSwap_Accum` in `usr/lib/X11/dyDDX/glx.so` at 0xed0630
  **Inferred.** Byte-reverses the word at offset 0 and the word at offset 4 of the request, then calls the target with the reversed word 0 as a0 and the float at offset 4 in f13. The target is the unnamed slot at gp-0x6b20. The name suggests the accumulation-buffer entry point; the slot itself is not named.

- `__glXDisp_PushName` in `usr/lib/X11/dyDDX/glx.so` at 0xed0720
  **Inferred.** Loads the first word of the request into a0 and calls the unnamed slot at gp-0x6b50 with no byte reversal. It keeps gp and ra in a 0x20-byte frame and returns whatever the target returns.

- `__glXDispSwap_Materialfv` in `usr/lib/X11/dyDDX/glx.so` at 0xed07a0
  **Inferred.** Reverses the word at offset 4, calls an unnamed size helper at gp-0x766c with it, clamps a negative result to zero, then reverses the word at offset 0. Each 4-byte word from offset 8 up to that many words past it is reversed in a loop, and the target at gp-0x6bb4 gets the offset-0 word in a0, the offset-4 word in a1 and the parameter block at request+8 in a2.

- `__glXDisp_RasterPos4sv` in `usr/lib/X11/dyDDX/glx.so` at 0xed1070
  **Inferred.** Passes the request pointer through unchanged and unswapped to the unnamed target at gp-0x6c88. The routine reads no coordinates, so the target has to pull the four 16-bit values from the request itself.

- `__glXDispSwap_Translatef` in `usr/lib/X11/dyDDX/glx.so` at 0xed1320
  **Inferred.** Reverses the bytes inside the three words at offsets 0, 4 and 8, then loads them as floats into f12, f13 and f14 and calls the unnamed slot at gp-0x6a64. It has no integer arguments of its own.

- `__glXDispSwap_PixelTransferf` in `usr/lib/X11/dyDDX/glx.so` at 0xed22c0
  **Inferred.** Reverses the words at offsets 0 and 4, then passes the word at offset 0 in a0 and the float at offset 4 in f13 to the unnamed target at gp-0x6ac0. The float goes in the second float slot, so the call is a one-integer, one-float shape.

- `__glXDispSwap_PixelTransferi` in `usr/lib/X11/dyDDX/glx.so` at 0xed23f0
  **Inferred.** Reverses the words at offsets 0 and 4 and passes both as integers, in a0 and a1, to the unnamed target at gp-0x6abc. No floating-point register is loaded, which separates it from the float variant at 0xed22c0.

- `__glXDispSwap_LineStipple` in `usr/lib/X11/dyDDX/glx.so` at 0xed24e0
  **Inferred.** Reverses the word at offset 0 and swaps the two bytes of the halfword at offset 4. It then calls the unnamed target at gp-0x6bc0 with the word in a0 and the unsigned halfword at offset 4 in a1.

- `__glXDisp_CopyTexSubImage1DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed25b0
  **Inferred.** Reads six words from the request at offsets 0, 4, 8, 12, 16 and 20 with no reversal, and passes them in a0 to a5. The last two come through t0 and t1, which are the N32 a4 and a5. It forwards all six to the unnamed target at gp-0x6a18.

- `glxPixelMapuivReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xed2620
  **Inferred.** Reads the word at offset 4 of the request and reverses its four bytes when a1 is nonzero, with shifts and masks rather than a call. It returns that count multiplied by four, which is the byte length of the map data.

- `__glXDispSwap_PushAttrib` in `usr/lib/X11/dyDDX/glx.so` at 0xed26a0
  **Inferred.** Reverses the four bytes of the word at offset 0 and passes it in a0 to the unnamed target at gp-0x6b10. It is a one-argument forwarder, the attribute mask.

- `glxGetVideoSourcePrivate` in `usr/lib/X11/dyDDX/glx.so` at 0xed2740
  **Inferred.** Returns a pointer stored at offset 0x1c of the object in a0. When that slot is still zero, it allocates a zeroed 0x18-byte block through the unnamed allocator at gp-0x6f14 (a0 = 1, a1 = 0x18), stores the block at +0x1c, and copies a global pointer loaded from gp-0x7f64 into +0x18. Once the slot is set, it returns it without a call.

- `__glXDisp_RasterPos4fv` in `usr/lib/X11/dyDDX/glx.so` at 0xed2ee0
  **Inferred.** Hands the request pointer, unchanged, to the unnamed target at gp-0x6c90, the float-coordinate twin of the 16-bit forwarder at 0xed1070. Only the target slot differs.

- `glxAddContextToList` in `usr/lib/X11/dyDDX/glx.so` at 0xed1930
  **Inferred.** Pushes a context onto the head of a singly linked list. The current head word, read through the pointer in a0, is stored at offset 0x84 of the context in a1, and then the head is set to that context. The routine makes no call and returns at once.

- `glxTexEnvfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xed1d70
  **Inferred.** Passes its first argument unchanged to the unnamed size helper at gp-0x7194 and returns that helper's result. It holds no state of its own beyond a 0x20-byte frame.

- `glx_rt_WaitGL` in `usr/lib/X11/dyDDX/glx.so` at 0xed23b0
  **Inferred.** Saves a0 into its frame and calls the unnamed target at gp-0x6e68 with a0 unchanged. It reads nothing from the request and does no reversal.

- `glxPointParameterfvSGISReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xed1670
  **Inferred.** Reads the word at offset 0 of the request. When a1 is nonzero it reverses the four bytes with shifts and masks, then passes the word in a0 to the unnamed size helper at gp-0x7754 and returns that helper's value shifted left by two.

- `glxGetMapdvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xed19c0
  **Inferred.** Passes its two arguments through to a function whose address is read from the GOT slot at gp-0x7fd8 and reduced by 0x6370, then returns that function's value. The callee is not named in the binary.

- `__glXDispSwap_TextureColorMaskSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xed1a10
  **Inferred.** Loads the four bytes at offsets 0 to 3 of the request, zero-extended, and passes them as a0 to a3 to the unnamed target at gp-0x69a8. Each field is a single byte, so no reversal is needed.

- `__glXDisp_PointParameterfSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xed1970
  **Inferred.** Passes the word at offset 0 in a0 and the float at offset 4 in f13 to the unnamed target at gp-0x69cc, with no reversal. The name points to the point-parameter float request, which this pass does not confirm.

- `PanoramiXVisualsCleanup` in `usr/lib/X11/dyDDX/glx.so` at 0xed1710
  **Inferred.** Frees the per-screen visual arrays and clears their pointers and counts. It loops over the count at offset 0x44 of the object at gp-0x6f24, calling the unnamed free routine at gp-0x6f28 on each array pointer at gp-0x6f4c and zeroing that slot. It then frees and zeroes a fixed set of global pointers and their counts, and walks the table at gp-0x6f78 freeing each sub-array.

- `glxSwapQueryContextInfoEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed0fa0
  **Inferred.** Reverses the halfword at offset 2 and the word at offset 12 of the request, then calls the unnamed target at gp-0x74a8 with the saved a0 and the reversed request pointer in a1.

- `glx_rt_DispSwapGetMinmax` in `usr/lib/X11/dyDDX/glx.so` at 0xed6290
  **Inferred.** Passes its request pointer to a handler one word earlier than it was given. The pointer in a0 is decremented by 4 and handed on as the only argument through GOT slot -0x7ecc. The routine does not reverse any bytes, despite the swap-variant name, and returns whatever the handler leaves in v0.

- `__glXDispSwap_SampleMaskSGIS` in `usr/lib/X11/dyDDX/glx.so` at 0xed63a0
  **Inferred.** Reverses the four bytes of the word at offset 0 of the request. The reversal swaps bytes 0 with 3 and bytes 1 with 2, using a stack temporary at sp+0. The reversed word is then read as a float into f12, the byte at offset 4 goes into a1, and the handler at GOT slot -0x6a04 is called. The name suggests a sample-mask value and an invert flag, but the stripped binary does not confirm it.

- `glxSendDestroyContext` in `usr/lib/X11/dyDDX/glx.so` at 0xed69d0
  **Inferred.** Builds a request header on the stack and sends it with the table entry for a context. The table base comes from GOT slot -0x6848 and is indexed by the first word of the first argument times four. The header has halfword 2 at sp+8, halfword 0 at sp+0x14, the word 8 at sp+0x10, byte 4 at sp+0x49, and the second argument at sp+0x4c. The send goes through GOT slot -0x73d4 with a2 set to zero.

- `glxSendRenderLargeCommand` in `usr/lib/X11/dyDDX/glx.so` at 0xed7b60
  **Inferred.** Sends a large render command. The first argument's first word, times four, indexes the same table at GOT slot -0x6848. The second argument pointer is kept at sp+0, and the word at offset 0x10 of the block it points to is copied into the header at sp+0x10. The header uses halfword 2 at sp+8 and halfword 0 at sp+0x14, and the send goes through GOT slot -0x73d4, the same slot as the destroy path.

- `glxColorTableParameterfvSGIReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xed7a80
  **Inferred.** Works out the length of a color-table-parameter request. It loads the word at offset 4 of the request, and when the second argument is nonzero it reverses that word's bytes. The word is passed to the function at GOT slot -0x7a94, and the routine returns that result times four. The callee is unnamed, so the meaning of its result rests on the routine name.

- `glxTexFilterFuncSGISReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xed4be0
  **Inferred.** Gives the length of a texture-filter request from the word at offset 8. If the second argument is nonzero, that word is byte-reversed first, with byte 0 swapped with byte 3 and byte 1 swapped with byte 2. The routine makes no call; it returns the word shifted left by two, which is the word times four, so the result depends on the argument block alone.

- `glxSendCreateContext` in `usr/lib/X11/dyDDX/glx.so` at 0xed59a0
  **Inferred.** Sends a create-context request. The context-table lookup works as in the destroy path, with the table entry placed at sp+0. The header has halfword 1 at sp+8, byte 3 at sp+0x49, and the length word 0x14 at sp+0x10. The words a1, a2, a3 and t0 are copied to sp+0x4c, sp+0x50, sp+0x54 and sp+0x58. After the send through GOT slot -0x73d4, the routine reads the word at sp+0x40. If that word equals 2 the 64-bit result is zero, and otherwise it is the word at sp+0x44.

- `glxSwapGetDrawableAttributesSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xed55d0
  **Inferred.** Reverses the bytes of the second argument block in place: bytes 2 and 3 swap, and bytes 12 through 15 are reversed as a word. It then calls the handler at GOT slot -0x7278 with the first argument unchanged and the second pointing at the reversed block. The frame is 0x30 bytes.

- `glx_rt_DispSwapIsEnabled` in `usr/lib/X11/dyDDX/glx.so` at 0xed6a70
  **Inferred.** Answers an enable query. It moves the request pointer forward by 8 and reverses the word at that new position, then calls the handler at GOT slot -0x6dac with that word and keeps the returned byte at sp+5. The reply block is the pointer found at absolute address 0x200f80, read at its +0x38 field. The returned byte is stored there as a 32-bit word at reply+8, the bytes of that word are reversed, the word at reply+0x30 moves to reply+0x2c, the word at reply+0x20 is set to 1, the word at reply+4 is cleared, and byte 1 is written at reply+0.

- `glxLookupFBConfig` in `usr/lib/X11/dyDDX/glx.so` at 0xed67e0
  **Inferred.** Finds a frame-buffer config by key. Records are 24 bytes and are selected by the first argument from a table reached through GOT slot -0x6fdc. Each record gives a count at +0xc and the start of a pointer list at +8, and the list end is the start plus four times the count. The routine walks the list until the config's field at +0x48 equals the second argument, returns that config pointer, and returns zero when no entry matches before the end.

- `__glXDisp_RasterPos3sv` in `usr/lib/X11/dyDDX/glx.so` at 0xed4ba0
  **Inferred.** Hands the request pointer to the handler at GOT slot -0x6c98 without reading or changing it.

- `__glXDisp_RasterPos4dv` in `usr/lib/X11/dyDDX/glx.so` at 0xed4eb0
  **Inferred.** Checks the request pointer for 8-byte alignment. If it is misaligned, the 32-byte body is copied from the pointer to four bytes lower through GOT slot -0x6e94, and the pointer is moved down by 4. The handler at GOT slot -0x6c94 is then called with the adjusted pointer.

- `__glXDisp_Enable` in `usr/lib/X11/dyDDX/glx.so` at 0xed56a0
  **Inferred.** Loads the first word of the request and passes it as the one argument to the handler at GOT slot -0x6b18. The name suggests the word is a capability to enable.

- `__glXDisp_RasterPos4iv` in `usr/lib/X11/dyDDX/glx.so` at 0xed5960
  **Inferred.** Passes the request pointer through unchanged to GOT slot -0x6c8c.

- `__glXDisp_ReadBuffer` in `usr/lib/X11/dyDDX/glx.so` at 0xed6240
  **Inferred.** Reads the first request word, which the name suggests is the buffer mode, and hands it to GOT slot -0x6aac as the sole argument.

- `__glXDisp_TexEnvf` in `usr/lib/X11/dyDDX/glx.so` at 0xed62e0
  **Inferred.** Collects the words at offsets 0 and 4 of the request into a0 and a1, loads the float at offset 8 into f14, and calls the handler at GOT slot -0x6b88.

- `__glXDisp_TexEnvi` in `usr/lib/X11/dyDDX/glx.so` at 0xed6340
  **Inferred.** Copies the three integer words at offsets 0, 4 and 8 of the request into a0, a1 and a2, then calls the handler at GOT slot -0x6b80.

- `__glXDisp_RasterPos3fv` in `usr/lib/X11/dyDDX/glx.so` at 0xed6920
  **Inferred.** Forwards the request pointer to GOT slot -0x6ca0 with no other change.

- `__glXDisp_PushMatrix` in `usr/lib/X11/dyDDX/glx.so` at 0xed71e0
  **Inferred.** Takes no operands. It passes the request pointer on to GOT slot -0x6a7c.

- `__glXDisp_ClearStencil` in `usr/lib/X11/dyDDX/glx.so` at 0xed79f0
  **Inferred.** Loads the first request word as a single integer and calls GOT slot -0x6b38 with it.

- `__glXDisp_RasterPos2sv` in `usr/lib/X11/dyDDX/glx.so` at 0xed7b20
  **Inferred.** Sends the request pointer to GOT slot -0x6ca8 untouched.

- `__glXDisp_ColorTableParameterivSGI` in `usr/lib/X11/dyDDX/glx.so` at 0xed7220
  **Inferred.** Passes the words at offsets 0 and 4 and the address of offset 8 as a0, a1 and a2 to the handler at GOT slot -0x69ec.

- `__glXDispSwap_PopName` in `usr/lib/X11/dyDDX/glx.so` at 0xed7a40
  **Inferred.** Has no fields to reverse, so it forwards the request pointer unchanged to GOT slot -0x6b54.

- `__glXDispSwap_Materialiv` in `usr/lib/X11/dyDDX/glx.so` at 0xed6050
  **Inferred.** Reverses the word at offset 4 and asks the function at GOT slot -0x71c8 for an element count from it. A negative count becomes zero. The word at offset 0 is reversed, then each 4-byte element from offset 8 up to 8 plus four times the count is reversed in place. The handler at GOT slot -0x6bac is called with the word at 0, the word at 4 and the address of offset 8.

- `__glXDispSwap_TexParameteriv` in `usr/lib/X11/dyDDX/glx.so` at 0xed65f0
  **Inferred.** Follows the same reversal order as the Materialiv stub. It reverses the word at offset 4, takes the element count from the function at GOT slot -0x729c and clamps a negative count to zero, reverses the word at offset 0, and reverses each element from offset 8. The handler at GOT slot -0x6b8c then receives the target, the parameter name and the address of the element data.

- `__glXDisp_CopyColorTableSGI` in `usr/lib/X11/dyDDX/glx.so` at 0xed6960
  **Inferred.** Passes five request words, at offsets 0, 4, 8, 0xc and 0x10, as the arguments a0 through t0 to the handler at GOT slot -0x69e8.

- `glxTexImage3DEXTReqSize_EXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed4c60
  **Inferred.** Reads six words from the request at offsets 0x24, 0x44, 0x48, 0x30, 0x34 and 0x38, reversing each when the second argument is nonzero. If the word at 0x24 equals 0x8070 the result is zero. A nonzero word at offset 0x4c also gives zero. Otherwise the first five words and the constant 1 go to a computed callee, reached from GOT slot -0x7fd8 with an offset of -0x55d0, and its return value is the result. The constant 0x8070 is not matched to an enumerant name here, and the callee is not named.

- `__glXDispSwap_ResetMinmaxEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed8aa0
  **Inferred.** Reverses the four bytes of the 32-bit word at the request pointer in a0, swapping byte 0 with byte 3 and byte 1 with byte 2, and stores them back into the same request. It then loads the reversed word into a0 and calls glResetMinmaxEXT through the GOT slot at gp-0x6a2c. The frame is 0x30 bytes, and the callee's v0 comes back unchanged.

- `__glXDisp_RasterPos3dv` in `usr/lib/X11/dyDDX/glx.so` at 0xed8b40
  **Inferred.** Calls glRasterPos3dv with a request of three doubles. When the pointer in a0 is not 8-byte aligned (low three bits set), it calls memcpy(a0-4, a0, 0x18) to move the 24-byte record four bytes down, then passes the moved pointer in a0. Source and destination overlap on that copy, which memcpy does not promise to handle. On the aligned path a0 reaches the call as the caller set it.

- `glxFogFuncSGISReqSize_SGI` in `usr/lib/X11/dyDDX/glx.so` at 0xed8bc0
  **Inferred.** Returns the size of a fog request, computed from the 32-bit word at a0 shifted left by three. When a1 is nonzero, that word is byte-reversed first; the constants 0xff00, 0x8 and 0x18 are the masks and shifts of a 32-bit byte swap. The swapped value goes only to a local stack slot, so the request itself is not written.

- `tmVisualAttributeIsEqual` in `usr/lib/X11/dyDDX/glx.so` at 0xed8c40
  **Inferred.** Compares the four argument registers and returns 1 when the match path is reached and 0 on a mismatch. The argument registers are spilled into a 48-byte frame first. The decision tree tests registers against each other and against zero, and the leaves store the constants 0 and 1. I did not map each register to a visual-attribute field, and the tree's register aliasing is not resolved.

- `glx_rt_DispGetMinmaxParameterfv` in `usr/lib/X11/dyDDX/glx.so` at 0xed8cc0
  **Inferred.** Builds the reply for the float minmax query. It asks glxGetMinmaxParameterfvSize for the element count, using the word at a0+12, and grows the reply buffer with Xrealloc or Xalloc. The buffer and its limit come from the thread block reached through the global at 0x200f80. The routine clears the GLX error flag, calls glGetMinmaxParameterfv with the words at a0+8 and a0+12 and the buffer, and returns the error-flag state. One path returns the constant 1 without calling GL. I did not trace the branch conditions in blocks B2 to B6 beyond the size comparisons.

- `__glXDispSwap_IndexMask` in `usr/lib/X11/dyDDX/glx.so` at 0xed8f30
  **Inferred.** Applies the same in-place byte reversal as the minmax reset entry, on the 32-bit word at a0. Bytes 0 and 3 trade places and bytes 1 and 2 trade places, and the reversed word is written back into the request. The word is then passed as the single argument to glIndexMask through the GOT slot at gp-0x6b24. Its v0 is returned unchanged.

- `glxGetTexLevelParameterfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xed8fd0
  **Inferred.** Maps the single enumerant in a0 to a size of 1 when the enumerant is accepted and -1 when it is not. A tree of comparisons on a0 leads there, using the constants 0x805c to 0x805f, 0x8060, 0x8061, 0x8071, 0x8136, 0x1000, 0x1001, 0x1002, 0x1003, 0x1005 and 0x1006. The 0x805c to 0x805f and 0x8060/0x8061 values match the GL texture component-size tokens by the standard enum values, which I did not check against the spec. I did not trace which of the 34 blocks leads to 1 and which to -1, so the enumerant-by-enumerant mapping is not decoded.

- `glxGetColorTableParameterfvSize` in `usr/lib/X11/dyDDX/glx.so` at 0xed91d0
  **Inferred.** Passes its four arguments to glxGetColorTableParameterfvSGISize, which is reached at the fixed address 0xeb6af0 rather than through the GOT. It returns that routine's v0 and f0 with no branches and no state of its own.

- `glx_rt_DispAreTexturesResidentEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed9210
  **Inferred.** Handles the reply for the texture-residency query. It compares the name count at a0+12 with a limit in the thread block, grows or allocates the reply buffer, and calls glAreTexturesResidentEXT with the count, the name list at a0+16 and the buffer. Some paths write constant 1 or 0 into fields of the thread block without calling GL, and the GLX error-flag state is the return value on the GL path. I did not decode every store across the 11 blocks.

- `__glXDisp_ConvolutionFilter2DEXT` in `usr/lib/X11/dyDDX/glx.so` at 0xed93f0
  **Inferred.** Unpacks a 2D convolution-filter request into six glPixelStorei calls and one glConvolutionFilter2DEXT call. The pixel-store tokens 0xcf0 to 0xcf5 match the GL unpack tokens by standard value, and their values come from the byte at +0, the byte at +1 and the words at +4, +8, +12 and +16. The filter call takes target, internal format, width, height, format and type from the words at +20 to +40, and the seventh argument in a6 is the image pointer a0+44.

- `__glXDisp_RasterPos3iv` in `usr/lib/X11/dyDDX/glx.so` at 0xed9500
  **Inferred.** Spills a0 to its frame and forwards the request pointer with the caller's a1 to a3 to glRasterPos3iv through the GOT slot at gp-0x6c9c. No alignment test or copy is made, unlike the double-precision RasterPos entries. The callee's v0 is returned.

- `glxGetDrawableAttributes` in `usr/lib/X11/dyDDX/glx.so` at 0xed9540
  **Inferred.** Hands a0 and a1 to __glxGetDrawableAttributes at 0xeda6f0 with zero in a2 and the caller's a3 unchanged, using a direct call. It has no branches or state, and the callee's v0 is the result.

- `glx_rt_DispSwapGenTextures` in `usr/lib/X11/dyDDX/glx.so` at 0xeda2a0
  **Inferred.** Sizes a reply for n generated names, where n is the word at a0+8, as n*4 bytes through Xrealloc or Xalloc. It then calls glGenTextures(n, buffer) and, after the call, byte-reverses each 32-bit name in the buffer by a loop that runs from the buffer start to buffer plus 4n. The GLX error flag is tested after the loop, and the routine returns that state. If the buffer pointer at the thread block's +48 is zero, it skips the call and returns at once.

- `__glXDisp_ShadeModel` in `usr/lib/X11/dyDDX/glx.so` at 0xeda580
  **Inferred.** Reads the mode word from the request at a0 and passes it to glShadeModel through the GOT slot at gp-0x6b9c. The routine also sets a1 to the constant 0x3f2c4 before the call. glShadeModel takes one argument, so that register setting does not reach the GL call. The callee's v0 is returned.

- `__glXDisp_LogicOp` in `usr/lib/X11/dyDDX/glx.so` at 0xeda5d0
  **Inferred.** Reads the opcode word at a0 and calls glLogicOp with it through the GOT slot at gp-0x6ad4. The second register is loaded with 0x3f274 and goes nowhere, since glLogicOp takes one argument. The frame is 0x20 bytes.

- `__glXDisp_PopMatrix` in `usr/lib/X11/dyDDX/glx.so` at 0xeda670
  **Inferred.** Calls glPopMatrix through the GOT slot at gp-0x6a80 in a 0x20-byte frame, with no request data. It never reads the request pointer, and it passes the four argument registers through as the caller set them. The return value is the callee's v0.

- `glx_rt_DispEndList` in `usr/lib/X11/dyDDX/glx.so` at 0xeda6b0
  **Inferred.** Forwards a0 to a3 to glEndList through the GOT slot at gp-0x6e20, with a 0x20-byte frame. It reads no request words and keeps no state, and the callee's v0 is returned.

- `sgiGetThreadCmdStatus` in `usr/lib/X11/dyDDX/glx.so` at 0xedb0b0
  **Inferred.** Copies two 32-bit words from a per-thread record into the caller's block. The record pointer is the word at a1+24, and the words at +56 and +60 of that record are stored to a0+56 and a0+60. The routine makes no calls and returns a0 in v0.

- `glxSwapDestroyWindow` in `usr/lib/X11/dyDDX/glx.so` at 0xedb0f0
  **Inferred.** Reverses two byte groups of the request at a1 in place: bytes 2 and 3, and the four bytes at offsets 4 to 7. It then calls glxDestroyWindow at the fixed address 0xf095f0, passing a0 and the request pointer a1. The frame is 0x30 bytes.

- `glx_rt_DispSwapReadPixels` in `usr/lib/X11/dyDDX/glx.so` at 0xedb1c0
  **Inferred.** Handles a byte-swapped reply for glReadPixels. It sizes the output with glxReadPixelsSize at the fixed address 0xebf510, using the words at a0+16 to a0+28 and the byte at a0+30. It then reallocates the reply buffer through Xrealloc or Xalloc, sets two pack-store tokens 0xd00 and 0xd01 with glPixelStorei, clears the error flag, and calls glReadPixels with the words at a0+8 to a0+28 and the buffer. The error-flag state is the return value. The values given to the two pack stores are not decoded.

- `__glXDisp_RasterPos2fv` in `usr/lib/X11/dyDDX/glx.so` at 0xedb630
  **Inferred.** Passes a0 to a3 straight through to glRasterPos2fv through the GOT slot at gp-0x6cb0. The request pointer reaches the callee as it is, and there is no alignment check or copy. The return value is the callee's v0.

- `__glXDisp_Scissor` in `usr/lib/X11/dyDDX/glx.so` at 0xedb670
  **Inferred.** Reads four 32-bit words from the request at a0, at offsets 0, 4, 8 and 12, and passes them in order to glScissor through the GOT slot at gp-0x6ba0. The frame is 0x20 bytes, and the callee's v0 is returned.

- `glxSendReplyForSingle` in `usr/lib/X11/dyDDX/glx.so` at 0xedb6d0
  **Inferred.** Sends a reply to a client. The client number in a0 indexes the clientThreadp table, shifted by two, to find the client's thread record. It writes a 32-byte header with WriteToClient, using a1 = 0x20. A second WriteToClient sends a payload whose length is the count word at +4 of the record's +56 block, times four. The routine returns 0 or the word at +36 of the same +56 block. I did not map the eight blocks that decide whether the second send happens.

- `__glXDisp_Fogfv` in `usr/lib/X11/dyDDX/glx.so` at 0xedb870
  **Inferred.** Passes the parameter name word at a0 and a pointer to the value at a0+4 to glFogfv. The float data stays in the request buffer and is not copied. The frame is 0x20 bytes, and the callee's v0 is returned.

- `glx_rt_DispSwapRenderMode` in `usr/lib/X11/dyDDX/glx.so` at 0xedb8c0
  **Inferred.** Looks up a context by tag with glxLookupContextByTag at the fixed address 0xef1670, then compares a word at +48 of the result with 0x1c00, 0x1c01 and 0x1c02 to pick a path. The mode-setting path calls glRenderMode with the word at a0+8. The query path calls glGetIntegerv with 0xc40, the standard GL render-mode token, into a stack slot at sp-76. The loops in blocks 11, 16 and 19 are not decoded beyond their bounds. The return value comes from one of two fields of the thread context, a byte at +18 or a word at +0, and I did not decode what those fields mean.

- `__glXDisp_TexImage2D` in `usr/lib/X11/dyDDX/glx.so` at 0xedbe70
  **Inferred.** Unpacks a 2D texture-image request into six glPixelStorei calls and one glTexImage2D call. The pixel-store tokens and their request sources match the 1D version: the byte at +0 and +1, and the words at +4 to +16. The image call takes target, level, internal format, width, height, border, format and type from the words at offsets 0x14 to 0x30 of the request. The ninth argument, the pixel pointer, is passed on the stack, and I did not decode that store.

- `__glXDisp_SpriteParameteriSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xedbf90
  **Inferred.** Loads the two request words at a0 and a0+4 and passes them as the name and value to glSpriteParameteriSGIX through the GOT slot at gp-0x69d8. No check is made, and the callee's v0 is returned.

- `glxLightivReqSize` in `usr/lib/X11/dyDDX/glx.so` at 0xedbfe0
  **Inferred.** Loads the word at a0+4 on every path. When a1 is nonzero, it byte-reverses that word first, with the same constants 0xff00, 0x8 and 0x18 as the fog size entry. The routine then calls glxLightivSize and returns its result shifted left by two. Which argument register carries the word into that call is not decoded.

- `glx_rt_DispGetMinmaxParameteriv` in `usr/lib/X11/dyDDX/glx.so` at 0xedc080
  **Inferred.** Is the integer counterpart of the float minmax reply. Its call order matches the float version: glxGetMinmaxParameterivSize at the fixed address 0xec14a0, Xrealloc, Xalloc, glxClearErrorFlag, glGetMinmaxParameteriv through the GOT, and glxErrorFlagIsSet. I read only the calls and their order, so its branch structure is not decoded.

- `__glXDispSwap_LoadIdentity` in `usr/lib/X11/dyDDX/glx.so` at 0xedc2f0
  **Inferred.** Despite the Swap name, this routine reverses no bytes and reads no request words. It passes a0 to a3 straight through to glLoadIdentity through the GOT slot at gp-0x6a9c, and returns the callee's v0.

- `glxGetHistogramParameterivSize` in `usr/lib/X11/dyDDX/glx.so` at 0xedc330
  **Inferred.** Forwards its four arguments unchanged to glxGetHistogramParameterfvEXTSize at the fixed address 0xeb7a20 and returns that routine's v0 and f0. The name says iv, but the routine it reaches is the fv size routine. That mismatch is worth checking against the dispatch table.

- `__glXDisp_TexImage1D` in `usr/lib/X11/dyDDX/glx.so` at 0xedc370
  **Inferred.** Unpacks a 1D texture-image request into six glPixelStorei calls and one glTexImage1D call. The stores use the same request sources as the 2D version. The image call takes target, level, internal format, width and border from the words at offsets 0x14, 0x18, 0x1c, 0x20 and 0x28, format and type from 0x2c and 0x30, and the pixel pointer a0+0x34 as the eighth argument. The word at offset 0x24 is not read.

- `__glXDisp_RasterPos2dv` in `usr/lib/X11/dyDDX/glx.so` at 0xedc490
  **Inferred.** Calls glRasterPos2dv with a request of two doubles. It checks the low three bits of a0, and when they are set it calls memcpy(a0-4, a0, 0x10) to move the record four bytes down and passes the moved pointer to the call. The copy regions overlap. On the aligned path a0 reaches the call unchanged.

- `__glXDispSwap_EvalCoord2dv` in `usr/lib/X11/dyDDX/glx.so` at 0xedc510
  **Inferred.** Starts the same way as the 2dv entry: when a0 is not 8-byte aligned it calls memcpy(a0-4, a0, 0x10) to move the record down. It then runs two counted loops, guarded by unsigned comparisons of a2 with a3 and of a6 with a7. The inner body moves bytes at offsets 0 through 7 of each element, which reads as an eight-byte reversal of a double, but I did not check the element size against the loop bounds. It calls glEvalCoord2dv last, and the arguments of that call are not decoded.

- `glxChangeDrawableAttributesSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xedc6b0
  **Inferred.** Calls __glxChangeDrawableAttributes at the fixed address 0xeca5c0, passing a0, a1 and a3 through and the constant 1 in a2. The frame is 0x20 bytes, and the callee's v0 is returned.

- `__glXDisp_MatrixMode` in `usr/lib/X11/dyDDX/glx.so` at 0xedc700
  **Inferred.** Reads the mode word at a0 and passes it to glMatrixMode through the GOT slot at gp-0x6a90. The routine also sets a1 to 0x3d144. glMatrixMode takes one argument, so the second register does not change the call. The callee's v0 is returned.

- `__glXDispSwap_TexGeniv` in `usr/lib/X11/dyDDX/glx.so` at 0xedc7d0
  **Inferred.** Byte-reverses two request words in place: the word at +0 and the word at +4. It then calls glxTexGenivSize at the fixed address 0xeff980 with the word at +4 to get a count. A loop reverses that many words starting at +8, guarded by unsigned comparisons of the running pointer, and the routine then calls glTexGeniv with the word at +0, the word at +4 and the pointer a0+8. The loop's element size and bound are not decoded.

## Not described

Chunk 000:

Skipped: none.
Not decoded: the unnamed local routines at 0xee9c90, 0xee69f0 and 0xee36a0, whose GOT addends I resolved but whose bodies lie outside this chunk; the flag bits written in `glx_rt_DispGetSeparableFilterEXT`'s error branch; the field comparisons that select among indirect calls in `glx_rt_MakeCurrent`; the context layout beyond the offsets named in `glxCopyContext`; and whether the o32 stack-argument slots used by `__glXDispSwap_CopyTexImage2DEXT` match the eight words it loads.

Chunk 002:

These routines are longer than fifteen minutes of reading for this pass and were not described: `__glXDispSwap_Frustum` (1124 bytes), `glxGetFBConfigs` (3760 bytes), `__glXDispSwap_ConvolutionParameterivEXT` (484 bytes), `glx_rt_DispSwapGetTexGeniv` (1040 bytes), `glx_rt_DispGetDoublev` (608 bytes), `glx_rt_DispSwapGetMinmaxParameterfv` (1040 bytes), `__glXDispSwap_TexEnviv` (484 bytes), `__glXDispSwap_TexImage2D` (1252 bytes), `glxSwapRenderLarge` (2148 bytes), `__glXDispSwap_TexImage1D` (1240 bytes), `__glXDispSwap_SpriteParameterivSGIX` (396 bytes).

Chunk 008:

Not described, because the body was too long to read to the end in the time limit: `__glXDispSwap_Map2d` (0xecb320, 1664 bytes), `__glXDispSwap_Map2f` (0xecb9a0, 1088 bytes) and `glxGetTexImageSize` (0xecde50, 1536 bytes).

Chunk 010:

Not read in the time budget, so no reading is given: glx_rt_DispSwapGetDoublev (0xed3c20, 1064 bytes), glx_rt_DispSwapGetConvolutionParameterfvEXT (0xed51c0, 1040 bytes), glxSwapGetDrawableAttributesSGIXReply (0xed6440, 424 bytes), glxSwapMakeCurrentReply (0xed5c80, 276 bytes), glx_rt_DispGetTexParameterfv (0xed56f0, 616 bytes), glx_rt_DispGetTexParameteriv (0xed5dc0, 616 bytes), __glXDispSwap_TexGenfv (0xed5a90, 484 bytes), __glXDispSwap_TexGendv (0xed6f30, 676 bytes), __glXDispSwap_ConvolutionParameterfvEXT (0xed7800, 484 bytes), __glXDispSwap_CallLists (0xed6bc0, 868 bytes), __glXDispSwap_TexSubImage4DSGIS (0xed7280, 1396 bytes), glxTexSubImage4DSGISReqSize_SGI (0xed4f30, 656 bytes), glxGetFBConfigsSGIX (0xed7bf0, 3760 bytes).
