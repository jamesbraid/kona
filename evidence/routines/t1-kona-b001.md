# Routine role statements, kona batch 1

These statements come from rendered facts for 13 routines: memory accesses, calls, branches and return values at fixed addresses in the named binaries. Names come from the inventory. The facts show what the code does, not what its callers mean by it, so every grade below is inferred. Where a fact is missing, the statement says so.

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b6b4

`__glkonim_RasterPos2i` is a 20-byte leaf with no calls. It stores three words to the fixed absolute address 0x4000 (stores at 0xda5b6b8, 0xda5b6bc and 0xda5b6c4), and the last one sits in the delay slot of the return at 0xda5b6c0. The likely reading is that it writes a command word and two integer coordinates into one write window, but the binary does not say what 0x4000 is, so the destination stays open.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8a4

`__glkonim_TexCoord2d` is a 20-byte leaf with no calls. It stores one word at 0xda5b8a8, then two 8-byte doubles at 0xda5b8ac and 0xda5b8b4, all to abs 0x4000. The order of one word followed by two doubles fits a command carrying a double-precision pair, but the meaning of the leading word is not shown.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8b8

`__glkonim_TexCoord2f` is a 20-byte leaf with no calls. It stores one word at 0xda5b8bc, then two single-precision floats at 0xda5b8c0 and 0xda5b8c8, all to abs 0x4000. It is the same shape as the double variant one entry above, with 4-byte floats in place of doubles, so the two are probably one command family. That is a guess from the shape, not something the facts establish.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8cc

`__glkonim_TexCoord2i` is a 20-byte leaf with no calls. It stores three words to abs 0x4000 at 0xda5b8d0, 0xda5b8d4 and 0xda5b8dc, with the return at 0xda5b8d8 and its last store in the delay slot. Unlike the float and double variants, it stores three words and no 8-byte values. What the three words hold is not shown.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5baf4

`__glkonim_Vertex2d` is a 20-byte leaf with no calls. It stores one word at 0xda5baf8, then two doubles at 0xda5bafc and 0xda5bb04, all to abs 0x4000, with the return at 0xda5bb00 and the second double in its delay slot. Its store layout matches `__glkonim_TexCoord2d`. The name suggests a double-precision vertex submission, but the code does not show the leading word's value or any check on the arguments.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5bb08

`__glkonim_Vertex2f` is a 20-byte leaf with no calls. It stores one word at 0xda5bb0c and two single floats at 0xda5bb10 and 0xda5bb18, all to abs 0x4000, with the return at 0xda5bb14. Its layout matches `__glkonim_TexCoord2f`. As with the other vertex and texture entries, the facts show the store pattern, not the command encoding.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5bb1c

`__glkonim_Vertex2i` is a 20-byte leaf with no calls. It stores three words to abs 0x4000 at 0xda5bb20, 0xda5bb24 and 0xda5bb2c, with the return at 0xda5bb28. Its layout matches `__glkonim_TexCoord2i`. The facts show no argument check in this routine; whether a caller validates anything is not visible here.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x214300c

`__glXOpenGraphicsDevice` is a 396-byte routine. It reads a per-process pointer at abs 0x1028 and indexes a table through it using the argument a0, with a bounds check against 0x41 (branch at 0x214302c); an out-of-range a0 reaches a `__glXFatal` call at 0x214306c and then rejoins the lookup. If the table word it loads (at 0x2143040) is not negative, the branch at 0x2143048 leads to the return at 0x2143058 without opening anything. Otherwise it opens a device path string at 0x21773e0 with flags 0x802 (call at 0x2143088) and calls fcntl (0x21430a4). When the word at +0x104 of the per-process block is negative (branch at 0x21430bc), it issues ioctl request 0x65 (call at 0x2143144). `__glXFatal` is also called at 0x21430d4, 0x2143110, 0x2143128 and 0x2143188, on paths the branches at 0x21430c4, 0x2143090, 0x21430ac and 0x214314c select. The path string, the meaning of request 0x65 and the fcntl arguments are not decoded here. The branch at 0x2143074 always jumps back to 0x2143038, and I did not trace that loop.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215200c

`__glXInitThread` is a 404-byte routine whose name suggests per-thread GL state setup. It calls `_mplib_get_thread_id` (0x2152034) and compares the result with a stored word at [[0x1028]+272]; when the pointer at 0x1028 is non-null, the word at +0x10c equals the word loaded from 0x200e00 and the stored thread id matches, the branch at 0x2152054 skips to the return at 0x215214c. Otherwise it calls `__libc_threadbind` (0x215205c), allocates a 0x130-byte record with malloc (0x2152068), calls `__libc_threadbind` again (0x2152078), runs a loop of word stores (branch at 0x21520d8) and then stores words and doublewords at offsets 0x104 to 0x12c from the pointer at 0x1028 and at fixed absolute addresses (stores at 0x2152124 to 0x2152138). The branch at 0x2152134 tests the word at 0x217d1b0: when it is zero, control goes to a `dlopen` call on the string at 0x2177578 (0x2152168) followed by `__ateachexit` (0x2152178) with a0 = 0x2151f68; when `__ateachexit` returns non-zero, `__glXFatal` is called (0x2152190). When the flag is non-zero it returns without those calls. What the stored values mean is not shown; the thread-id meaning is inferred from the callee name.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215995c

`glXGetVideoSyncSGI` is a 140-byte routine. It walks the per-process block and a chained pointer to find a file descriptor from a table indexed by the word at offset 0x108. It then calls ioctl with request 0x3fe, with a stack buffer at sp-32 as the output. A word is stored through the argument a0 at 0x21599d8, most likely the counter that ioctl returns, but the stored value is not shown. Two null checks (branches at 0x2159978 and 0x2159984) skip the ioctl and reach a return of 5, while the normal path returns 0. The public GLX_SGI_video_sync extension has this function, which fits, but the facts do not confirm that.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21599e8

`glXWaitVideoSyncSGI` is a 200-byte routine with the same descriptor lookup and null checks as `glXGetVideoSyncSGI`. When either null check fails (branches at 0x2159a10 and 0x2159a1c) it returns 5 (0x2159a50). Past those, its entry arguments a0 and a1 are checked for a0 <= 0 (branch at 0x2159a24) and a1 < 0 (branch at 0x2159a2c); those return 6 (0x2159a40), and so does the branch at 0x2159a34 when its operand, which the facts leave unresolved, is zero. Otherwise it calls ioctl with request 0x3ff and a stack buffer at sp-48, returns 0, and stores a word through the argument a2 at 0x2159aac. The argument order matches the public GLX_SGI_video_sync prototype of divisor, remainder and count pointer, but the facts do not confirm that mapping, and the meaning of codes 5 and 6 is not shown.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215a158

`glXSwapIntervalSGI` is a 440-byte routine. It starts with the same descriptor lookup and null check as the other video-sync entries; a null first pointer (branch at 0x215a174) reaches the common exit at 0x215a2e0, and a0 <= 0 (branch at 0x215a17c) leads there too. When the word at +0x118 of the second block is non-zero (branch at 0x215a188) it calls ioctl with request 0x3ee and a stack buffer at sp-64 and returns 0 (0x215a1d0). When that word is zero, it loads a pointer at +0x138 and returns 5 (0x215a1f0) if that is null; otherwise it calls `__glXSetupForCommand` (0x215a208), then makes calls to unnamed callees (0x215a224, 0x215a2a8, 0x215a2c0) and to `XFlush` (0x215a2cc), on paths chosen by the null checks at 0x215a218, 0x215a29c and 0x215a2b8. A branch compares two unsigned values (0x215a240); when it is taken it reaches the `_XFlush` call at 0x215a2f4. The stores between (8-, 2-, 1- and 4-byte values) go to bases the facts do not resolve. The common exit returns 0, 5 or 6 depending on the path. The purpose of those stores is not established, and the ioctl's effect on the kernel side is not visible in the binary.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218fd90

`__glkonim_AlphaFunc` is an 80-byte leaf with no calls. It compares f13 with f0 using c.lt.s (at 0x218fd94) and branches on the result (0x218fdac). When f13 < f0 it stores two words and one single float to abs 0x4000 (0x218fdb4, 0x218fdb8, 0x218fdc0) and returns at 0x218fdbc. Otherwise it loads a float at 0x218fdc4 from an address the facts do not resolve, then stores two words and one single float to abs 0x4000 (0x218fdcc, 0x218fdd0, 0x218fddc) and returns at 0x218fdd8. 0x4000 is the same address the vertex and texture entries write to. Both returns leave v0 at 0x150a08, which looks like a leftover constant rather than a result. The name suggests an alpha test function and reference value, which fits the stores, but the comparison operands and the meaning of the stored values are not established.

Grade: inferred.

Reviewed: 2026-11-12
