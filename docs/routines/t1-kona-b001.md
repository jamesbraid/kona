# Routine role statements, kona batch 1

These statements come from rendered facts for 13 routines: memory accesses, calls, branches and return values at fixed addresses in the named binaries. Names come from the inventory. The facts show what the code does, not what its callers mean by it, so every grade below is inferred. Where a fact is missing, the statement says so.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b6b4

`__glkonim_RasterPos2i` is a 20-byte leaf with no calls. It stores three words to the fixed absolute address 0x4000 (stores at 0xda5b6b8, 0xda5b6bc and 0xda5b6c4), and the last one sits in the delay slot of the return at 0xda5b6c0. The likely reading is that it writes a command word and two integer coordinates into one write window, but the binary does not say what 0x4000 is, so the destination stays open.

Grade: inferred.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8a4

`__glkonim_TexCoord2d` is a 20-byte leaf with no calls. It stores one word at 0xda5b8a8, then two 8-byte doubles at 0xda5b8ac and 0xda5b8b4, all to abs 0x4000. The order of one word followed by two doubles fits a command carrying a double-precision pair, but the meaning of the leading word is not shown.

Grade: inferred.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8b8

`__glkonim_TexCoord2f` is a 20-byte leaf with no calls. It stores one word at 0xda5b8bc, then two single-precision floats at 0xda5b8c0 and 0xda5b8c8, all to abs 0x4000. It is the same shape as the double variant one entry above, with 4-byte floats in place of doubles, so the two are probably one command family. That is a guess from the shape, not something the facts establish.

Grade: inferred.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8cc

`__glkonim_TexCoord2i` is a 20-byte leaf with no calls. It stores three words to abs 0x4000 at 0xda5b8d0, 0xda5b8d4 and 0xda5b8dc, with the return at 0xda5b8d8 and its last store in the delay slot. Unlike the float and double variants, it stores three words and no 8-byte values. What the three words hold is not shown.

Grade: inferred.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5baf4

`__glkonim_Vertex2d` is a 20-byte leaf with no calls. It stores one word at 0xda5baf8, then two doubles at 0xda5bafc and 0xda5bb04, all to abs 0x4000, with the return at 0xda5bb00 and the second double in its delay slot. Its store layout matches `__glkonim_TexCoord2d`. The name suggests a double-precision vertex submission, but the code does not show the leading word's value or any check on the arguments.

Grade: inferred.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5bb08

`__glkonim_Vertex2f` is a 20-byte leaf with no calls. It stores one word at 0xda5bb0c and two single floats at 0xda5bb10 and 0xda5bb18, all to abs 0x4000, with the return at 0xda5bb14. Its layout matches `__glkonim_TexCoord2f`. As with the other vertex and texture entries, the facts show the store pattern, not the command encoding.

Grade: inferred.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5bb1c

`__glkonim_Vertex2i` is a 20-byte leaf with no calls. It stores three words to abs 0x4000 at 0xda5bb20, 0xda5bb24 and 0xda5bb2c, with the return at 0xda5bb28. Its layout matches `__glkonim_TexCoord2i`. The routine does no argument check that the facts show, so any validation happens in a caller.

Grade: inferred.

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x214300c

`__glXOpenGraphicsDevice` is a 396-byte routine. It reads a per-process pointer at abs 0x1028 and indexes a table through it using the argument a0, with a bounds check against 0x41 (branch at 0x214302c). It opens a device path string at 0x21773e0 with flags 0x802 (call at 0x2143088), calls fcntl (0x21430a4), then issues ioctl request 0x65 (call at 0x2143144). Five paths call `__glXFatal` (0x214306c, 0x21430d4, 0x2143110, 0x2143128, 0x2143188) on failure. The path string, the meaning of request 0x65 and the fcntl arguments are not decoded here. The branch at 0x2143074 always jumps back to 0x2143038, and I did not trace that loop.

Grade: inferred.

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215200c

`__glXInitThread` is a 404-byte routine that sets up per-thread GL state. It calls `_mplib_get_thread_id` (0x2152034) and compares the result with a stored value at [[0x1028]+272]. It allocates a 0x130-byte record with malloc (0x2152068), stores pointers and counters into the per-process block at offsets 0x104 to 0x130 and into absolute words 0x1068 to 0x1088, binds the thread with `__libc_threadbind` (0x215205c and 0x2152078), and registers a cleanup with `__ateachexit` (0x2152178). It also calls dlopen on the string at 0x2177578 (0x2152168). The flag at 0x217d1b0 gates one path, but the facts do not show which path leads to the dlopen. The thread-id meaning is inferred from the callee name.

Grade: inferred.

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215995c

`glXGetVideoSyncSGI` is a 140-byte routine. It walks the per-process block and a chained pointer to find a file descriptor from a table indexed by the word at offset 0x108. It then calls ioctl with request 0x3fe, with a stack buffer at sp-32 as the output. A word is stored through the argument a0 at 0x21599d8, most likely the counter that ioctl returns, but the stored value is not shown. Two null checks (branches at 0x2159978 and 0x2159984) skip the ioctl and reach a return of 5, while the normal path returns 0. The public GLX_SGI_video_sync extension has this function, which fits, but the facts do not confirm that.

Grade: inferred.

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21599e8

`glXWaitVideoSyncSGI` is a 200-byte routine with the same descriptor lookup and null checks as `glXGetVideoSyncSGI`. It calls ioctl with request 0x3ff and a stack buffer at sp-48, and it stores a word through the argument a2 at 0x2159aac. Its entry arguments a0 and a1 are checked for a0 <= 0 (branch at 0x2159a24) and a1 < 0 (branch at 0x2159a2c), and those checks return 6, while later error paths return 5 and success returns 0. The argument order matches the public GLX_SGI_video_sync prototype of divisor, remainder and count pointer, but the facts do not confirm that mapping, and the meaning of codes 5 and 6 is not shown.

Grade: inferred.

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215a158

`glXSwapIntervalSGI` is a 440-byte routine. It uses the same descriptor lookup and calls ioctl with request 0x3ee and a stack buffer at sp-64. It calls `__glXSetupForCommand` (0x215a208), then makes several calls to unnamed callees and to `XFlush` and `_XFlush` (0x215a2cc, 0x215a2f4). A loop compares two unsigned values (branch at 0x215a240) and stores 8-, 2-, 1- and 4-byte values to bases the facts do not resolve. An early check on a0 (branch at 0x215a17c) sends one path to the common exit at 0x215a2e0, whose return value is 0, 5 or 6 depending on the path. The purpose of that loop and the stores is not established, and the ioctl's effect on the kernel side is not visible in the binary.

Grade: inferred.

### `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218fd90

`__glkonim_AlphaFunc` is an 80-byte leaf with no calls. It stores four words and two single floats to abs 0x4000, the same address the vertex and texture entries write to. It loads one float from abs 0x22e0778 (at 0x218fdc4) and compares f13 with f0 using c.lt.s (at 0x218fd94), then branches on the result (0x218fdac). Both returns set v0 to 0x150a08. The name suggests an alpha test function and reference value, which fits the stores, but the comparison operands and the meaning of 0x150a08 are not established.

Grade: inferred.
