# Readings: `usr/gfx/arch/IP35KONA64/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXGetPipeAddress` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2143004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2143004-0x214300c (8 bytes).
  It occupies 8 bytes.
  The return at 0x2143004 has v0 = 0x4000.

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x214300c

`__glXOpenGraphicsDevice` is a 396-byte routine. It reads a per-process pointer at abs 0x1028 and indexes a table through it using the argument a0, with a bounds check against 0x41 (branch at 0x214302c); an out-of-range a0 reaches a `__glXFatal` call at 0x214306c and then rejoins the lookup. If the table word it loads (at 0x2143040) is not negative, the branch at 0x2143048 leads to the return at 0x2143058 without opening anything. Otherwise it opens a device path string at 0x21773e0 with flags 0x802 (call at 0x2143088) and calls fcntl (0x21430a4). When the word at +0x104 of the per-process block is negative (branch at 0x21430bc), it issues ioctl request 0x65 (call at 0x2143144). `__glXFatal` is also called at 0x21430d4, 0x2143110, 0x2143128 and 0x2143188, on paths the branches at 0x21430c4, 0x2143090, 0x21430ac and 0x214314c select. The path string, the meaning of request 0x65 and the fcntl arguments are not decoded here. The branch at 0x2143074 always jumps back to 0x2143038, and I did not trace that loop.

Grade: inferred.

Reviewed: 2026-11-12

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2143464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2143464-0x214371c (696 bytes).
  It occupies 696 bytes.
  The `ld` at 0x2143490 loads 8 bytes from a0 (arg0 at entry) +0x98.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2143494, `ld` at 0x2143684.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128, including `lw` at 0x2143498, `lw` at 0x2143688, `lw` at 0x2143698.
  The `lw` at 0x214349c loads 4 bytes from [0x1028]:8 +0x0.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148, including `ld` at 0x21434a8, `ld` at 0x214358c, `ld` at 0x2143600.
  The `ld` at 0x21434ac loads 8 bytes from [a0+152]:8 +0x168.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x21434b0, `ld` at 0x2143590, `ld` at 0x2143604.
  4 such `sb` accesses store 1 byte to [a0+152]:8 +0x170, including `sb` at 0x21434b8, `sb` at 0x2143574, `sb` at 0x21435f0.
  The `ld` at 0x21434bc loads 8 bytes from [a0+152]:8 +0x160.
  5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158, including `ld` at 0x21434d4, `ld` at 0x2143508, `ld` at 0x2143520.
  The `lw` at 0x21434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0, including `lw` at 0x21434ec, `lw` at 0x2143638.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4, including `lw` at 0x21434f0, `lw` at 0x214363c.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150, including `ld` at 0x21434fc, `ld` at 0x2143514, `ld` at 0x2143554.
  2 such `ld` accesses load 8 bytes from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2143500, `ld` at 0x21435ac.
  The `ld` at 0x214350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  4 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2143518, `lw` at 0x2143558, `lw` at 0x21435b8.
  2 such `lw` accesses load 4 bytes from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2143524, `lw` at 0x2143568.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40, including `lw` at 0x2143538, `lw` at 0x21435cc, `lw` at 0x2143670.
  2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x214357c, `sw` at 0x21435f8.
  The `sw` at 0x2143588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160, including `sd` at 0x2143594, `sd` at 0x214360c.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168, including `sd` at 0x2143598, `sd` at 0x2143610.
  The `sw` at 0x214368c stores 4 bytes to [0x1028]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x21436c4, `ld` at 0x21436e4, `ld` at 0x2143704.
  The `jalr` at 0x214348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2143534 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x21435c8 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2143674 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296].
  The `jalr` at 0x21436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177478, a2=?, a3=?.
  The `jalr` at 0x21436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x21774b0, a2=0x1, a3=?.
  The `jalr` at 0x214370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177490, a2=-0x1, a3=?.
  The `bne` branch at 0x21434a0 targets 0x2143660, is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]), and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` branch at 0x21434b4 targets 0x21434c8, is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8), and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` branch at 0x21434c0 targets 0x2143624, is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434cc targets 0x2143634, is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434e0 targets 0x2143634, is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3), and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` branch at 0x21434f4 targets 0x21436a4, is taken when at(=[[a0+152]:8+432]) == a2(=0x1), and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` branch at 0x214354c targets 0x21436fc, is taken when v0(=ret(0x2142fec)) == a2(=-0x1), and falls through when v0(=ret(0x2142fec)) != a2(=-0x1).
  The `bne` branch at 0x2143560 targets 0x2143574, is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?), and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` branch at 0x214356c targets 0x214358c, is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?), and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` branch at 0x21435d4 targets 0x21436dc, is taken when v0(=ret(0x2142fec)) == at(=-0x1), and falls through when v0(=ret(0x2142fec)) != at(=-0x1).
  The `beq` branch at 0x21435e8 targets 0x2143600, is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?), and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` branch at 0x2143644 targets 0x21435a8, is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed), and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` branch at 0x214364c targets 0x21435a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2143658 targets 0x21435b4 and is always taken.
  The `bltz` branch at 0x214367c targets 0x21436c0, is taken when v0(=ret(0x2142fec)) < 0 (signed), and falls through when v0(=ret(0x2142fec)) >= 0 (signed).
  The `beq` branch at 0x214369c targets 0x21434c8 and is always taken.
  The `beq` branch at 0x21436a4 targets 0x21434fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x21436b8 targets 0x2143514 and is always taken.
  The `beq` branch at 0x21436d4 targets 0x2143694 and is always taken.
  The `beq` branch at 0x21436f4 targets 0x2143624 and is always taken.
  The `beq` branch at 0x2143714 targets 0x2143624 and is always taken.
  The return at 0x21435a0 has v0 = ret(0x2142fec).
  The return at 0x2143618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x214362c has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0x2143620 to 0x2143620 are not reached by any path from the entry, and their branches are not listed.

- `__glx_LoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x214e764 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x214e764-0x214e7f4 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x214e774 loads 8 bytes from abs 0x1028.
  The `ld` at 0x214e784 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x214e78c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x214e7a4 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x214e7b0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x214e7b4 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x214e7c4 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x214e7ac calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0x214e7e4 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+132, a2=?, a3=?.
  The `bne` branch at 0x214e7c0 targets 0x214e7e0, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned).
  The `beq` branch at 0x214e7ec targets 0x214e7cc and is always taken.
  The return at 0x214e7d8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x214e7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x214e7f4-0x214e884 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x214e804 loads 8 bytes from abs 0x1028.
  The `ld` at 0x214e814 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x214e81c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x214e834 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x214e840 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x214e844 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x214e854 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x214e83c calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0x214e874 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+68, a2=?, a3=?.
  The `bne` branch at 0x214e850 targets 0x214e870, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned).
  The `beq` branch at 0x214e87c targets 0x214e85c and is always taken.
  The return at 0x214e868 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215200c

`__glXInitThread` is a 404-byte routine whose name suggests per-thread GL state setup. It calls `_mplib_get_thread_id` (0x2152034) and compares the result with a stored word at [[0x1028]+272]; when the pointer at 0x1028 is non-null, the word at +0x10c equals the word loaded from 0x200e00 and the stored thread id matches, the branch at 0x2152054 skips to the return at 0x215214c. Otherwise it calls `__libc_threadbind` (0x215205c), allocates a 0x130-byte record with malloc (0x2152068), calls `__libc_threadbind` again (0x2152078), runs a loop of word stores (branch at 0x21520d8) and then stores words and doublewords at offsets 0x104 to 0x12c from the pointer at 0x1028 and at fixed absolute addresses (stores at 0x2152124 to 0x2152138). The branch at 0x2152134 tests the word at 0x217d1b0: when it is zero, control goes to a `dlopen` call on the string at 0x2177578 (0x2152168) followed by `__ateachexit` (0x2152178) with a0 = 0x2151f68; when `__ateachexit` returns non-zero, `__glXFatal` is called (0x2152190). When the flag is non-zero it returns without those calls. What the stored values mean is not shown; the thread-id meaning is inferred from the callee name.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215995c

`glXGetVideoSyncSGI` is a 140-byte routine. It walks the per-process block and a chained pointer to find a file descriptor from a table indexed by the word at offset 0x108. It then calls ioctl with request 0x3fe, with a stack buffer at sp-32 as the output. A word is stored through the argument a0 at 0x21599d8, most likely the counter that ioctl returns, but the stored value is not shown. Two null checks (branches at 0x2159978 and 0x2159984) skip the ioctl and reach a return of 5, while the normal path returns 0. The public GLX_SGI_video_sync extension has this function, which fits, but the facts do not confirm that.

Grade: inferred.

Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215995c
  **Inferred.** The facts match the IP27KONA64 copy at 0x265995c: the same 140 bytes, the same pointer chain from abs 0x1028, the same ioctl with request 0x3fe, and the same 0x0 and 0x5 returns, at addresses offset by the build. The ioctl result and stored word are not established, as in the other build.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215995c
  **Inferred.** The same 140-byte routine as the IP27KONA64 build, with the same instruction pattern at the same low offsets. The ioctl call is at 0x21599b4 with request 0x3fe, the zero tests at 0x2159978 and 0x2159984 skip it, and the returns are 0x0 at 0x21599d4 and 0x5 at 0x21599e0.
  Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21599e8

`glXWaitVideoSyncSGI` is a 200-byte routine with the same descriptor lookup and null checks as `glXGetVideoSyncSGI`. When either null check fails (branches at 0x2159a10 and 0x2159a1c) it returns 5 (0x2159a50). Past those, its entry arguments a0 and a1 are checked for a0 <= 0 (branch at 0x2159a24) and a1 < 0 (branch at 0x2159a2c); those return 6 (0x2159a40), and so does the branch at 0x2159a34 when its operand, which the facts leave unresolved, is zero. Otherwise it calls ioctl with request 0x3ff and a stack buffer at sp-48, returns 0, and stores a word through the argument a2 at 0x2159aac. The argument order matches the public GLX_SGI_video_sync prototype of divisor, remainder and count pointer, but the facts do not confirm that mapping, and the meaning of codes 5 and 6 is not shown.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA64/libGL.so` at 0x215a158

`glXSwapIntervalSGI` is a 440-byte routine. It starts with the same descriptor lookup and null check as the other video-sync entries; a null first pointer (branch at 0x215a174) reaches the common exit at 0x215a2e0, and a0 <= 0 (branch at 0x215a17c) leads there too. When the word at +0x118 of the second block is non-zero (branch at 0x215a188) it calls ioctl with request 0x3ee and a stack buffer at sp-64 and returns 0 (0x215a1d0). When that word is zero, it loads a pointer at +0x138 and returns 5 (0x215a1f0) if that is null; otherwise it calls `__glXSetupForCommand` (0x215a208), then makes calls to unnamed callees (0x215a224, 0x215a2a8, 0x215a2c0) and to `XFlush` (0x215a2cc), on paths chosen by the null checks at 0x215a218, 0x215a29c and 0x215a2b8. A branch compares two unsigned values (0x215a240); when it is taken it reaches the `_XFlush` call at 0x215a2f4. The stores between (8-, 2-, 1- and 4-byte values) go to bases the facts do not resolve. The common exit returns 0, 5 or 6 depending on the path. The purpose of those stores is not established, and the ioctl's effect on the kernel side is not visible in the binary.

Grade: inferred.

Reviewed: 2026-11-12

- `__glx_Flush` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21641dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21641dc-0x21642ec (272 bytes).
  It occupies 272 bytes.
  The `ld` at 0x21641e4 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21641e8 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x138, including `ld` at 0x21641f0, `ld` at 0x21642c0.
  The `ld` at 0x2164218 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x216421c, `ld` at 0x216428c.
  The `ld` at 0x2164228 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2164234, `ld` at 0x2164260, `ld` at 0x21642e8.
  The `ld` at 0x2164238 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x216424c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2164254 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2164258, `sb` at 0x2164280.
  The `ld` at 0x216425c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2164268 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2164270 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2164274 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x216427c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2164284 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2164288 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2164298 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x21642a4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2164214 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x216422c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x216429c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=[[[[0x1028]:8+280]:8+312]:8+176]:8+8, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x21642b0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21642bc calls XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21642dc calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2164200 targets 0x21642c8, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2164220 targets 0x2164234, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2164244 targets 0x21642dc, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned).
  The `beq` branch at 0x2164290 targets 0x21642a4, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x21642a8 targets 0x21642b8, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x21642e4 targets 0x216424c and is always taken.
  The return at 0x21642d4 has v0 = one of ?, ret(XFlush).

- `glXCreateWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2170560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2170560-0x21706a8 (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21705a0, `ld` at 0x217063c.
  The `ld` at 0x21705ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21705b8, `ld` at 0x21705f0, `ld` at 0x2170690.
  The `ld` at 0x21705bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21705e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21705e8, `sb` at 0x2170608.
  The `ld` at 0x21705ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x21705f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170600 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2170604 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217060c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x2170610 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x2170614 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x2170618 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x217061c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2170620 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x2170634 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2170638 stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x2170648 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2170654 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x217058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f, a7=ret(__glXSetupForCommand).
  The `jalr` at 0x217064c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x2170598 targets 0x2170694, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21705a4 targets 0x21705b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21705c8 targets 0x2170680, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2170640 targets 0x2170654, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170658 targets 0x217066c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217068c targets 0x21705cc and is always taken.
  The return at 0x2170678 has v0 = ret(?).
  The return at 0x21706a0 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21706a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21706a8-0x21707a4 (252 bytes).
  It occupies 252 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21706e4, `ld` at 0x2170754.
  The `ld` at 0x21706f0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21706fc, `ld` at 0x2170734, `ld` at 0x21707a0.
  The `ld` at 0x2170700 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x217071c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170724 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x217072c, `sb` at 0x217074c.
  The `ld` at 0x2170730 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217073c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170744 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170748 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170750 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2170760 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x217076c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x21706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2170764 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a5=ret(__glXSetupForCommand), a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2170778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170794 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=?.
  The `beq` branch at 0x21706dc targets 0x2170784, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21706e8 targets 0x21706fc, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x217070c targets 0x2170794, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2170758 targets 0x217076c, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170770 targets 0x2170784, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217079c targets 0x2170714 and is always taken.
  The return at 0x217078c has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21711c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21711c0-0x21712e4 (292 bytes).
  It occupies 292 bytes.
  The `ld` at 0x21711d8 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21711f0 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171284, `sb` at 0x21712e0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2171288, `ld` at 0x217128c.
  The `lw` at 0x21712a0 loads 4 bytes from ?.
  The `jalr` at 0x21711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2171218 calls __glXInitChannelRectState [0x2171024] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2171244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2171254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x217129c calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` branch at 0x21711fc targets 0x21712b8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0x2171220 targets 0x21712cc, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0x2171280 targets 0x21712dc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x2171290 targets 0x21712d4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x21712cc targets 0x21712bc and is always taken.
  The `beq` branch at 0x21712d4 targets 0x21712c0 and is always taken.
  The `beq` branch at 0x21712dc targets 0x21712a4 and is always taken.
  The return at 0x21712b0 has v0 = 0x1.
  The return at 0x21712c4 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x217187c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x217187c-0x2171af0 (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x21718b0, `sw` at 0x217195c, `sw` at 0x21719a4.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21718b4, `ld` at 0x2171978, `ld` at 0x2171a04.
  The `ld` at 0x21718c0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21718cc, `ld` at 0x2171904, `ld` at 0x2171aa0.
  The `ld` at 0x21718d0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21718ec stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21718f4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21718fc, `sb` at 0x2171930.
  The `ld` at 0x2171900 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217190c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171918 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171920 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171928 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217193c loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171948 stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171984, `ld` at 0x2171a10, `ld` at 0x2171a58.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171990, `ld` at 0x2171a1c, `ld` at 0x2171a64.
  The `jalr` at 0x21718a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21718c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171944 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2171970 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x217199c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21719e0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x21719fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a44 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2171a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171a70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171a94 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2171ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171ac8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x21718b8 targets 0x21718cc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21718dc targets 0x2171a94, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x217194c targets 0x2171aa4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0x2171958 targets 0x2171968, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x2171964 targets 0x21719c4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0x217197c targets 0x2171990, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171994 targets 0x21719a4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x21719ec targets 0x2171a3c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2171a08 targets 0x2171a1c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171a20 targets 0x2171a30, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171a34 targets 0x21719ac and is always taken.
  The `beq` branch at 0x2171a50 targets 0x2171a64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171a68 targets 0x2171a7c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171a9c targets 0x21718e4 and is always taken.
  The `beq` branch at 0x2171aa8 targets 0x2171abc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171ac0 targets 0x2171ad0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x21719bc has v0 = 0x0.
  The return at 0x2171a8c has v0 = ?.
  The return at 0x2171ae8 has v0 = 0x0.

- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2171af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2171af0-0x2171db4 (708 bytes).
  It occupies 708 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171b54, `ld` at 0x2171c9c, `ld` at 0x2171d08.
  The `ld` at 0x2171b60 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171b80, `ld` at 0x2171bc0, `ld` at 0x2171d68.
  The `ld` at 0x2171b88 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171ba8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171bb0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171bb8, `sb` at 0x2171be0.
  The `ld` at 0x2171bbc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171bc8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171bd4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171bdc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171be8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171bec loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171bf0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2171bfc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171c08 stores 4 bytes to [a0+176]:8 +0xc.
  The `lbu` at 0x2171c1c loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2171c28 stores 1 byte to [a0+176]:8 +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2171c40, `lbu` at 0x2171c50.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171c48, `sb` at 0x2171c5c.
  The `sw` at 0x2171c84 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171ca8, `ld` at 0x2171d14, `ld` at 0x2171d78.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171cb4, `ld` at 0x2171d20, `ld` at 0x2171d84.
  The `jalr` at 0x2171b2c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171c70 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=0x10010.
  The `jalr` at 0x2171cac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2171cc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2171d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d58 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2171b34 targets 0x2171ce8, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0x2171b3c targets 0x2171ce8, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2171b44 targets 0x2171ce8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x2171b4c targets 0x2171da4, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0x2171b58 targets 0x2171b6c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171b98 targets 0x2171d54, is taken when a1(=[a0+184]:8) < a3(?) (unsigned), and falls through when a1(=[a0+184]:8) >= a3(?) (unsigned).
  The `blez` branch at 0x2171c04 targets 0x2171c60, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2171c10 targets 0x2171c2c, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x2171c30 targets 0x2171c60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2171c58 targets 0x2171c40, is taken when a7(?) != a1(?), and falls through when a7(?) == a1(?).
  The `beq` branch at 0x2171c78 targets 0x2171d6c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2171c8c targets 0x2171d08, is taken when s1(=a2) != a1(?), and falls through when s1(=a2) == a1(?).
  The `bltz` branch at 0x2171c94 targets 0x2171d08, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x2171ca0 targets 0x2171cb4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171cb8 targets 0x2171cc8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d0c targets 0x2171d20, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171d24 targets 0x2171d34, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d64 targets 0x2171ba0 and is always taken.
  The `beq` branch at 0x2171d70 targets 0x2171d84, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171d88 targets 0x2171d98, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171d9c targets 0x2171cf4 and is always taken.
  The `beq` branch at 0x2171dac targets 0x2171cf4 and is always taken.
  The return at 0x2171ce0 has v0 = 0x0.
  The return at 0x2171d00 has v0 = 0x5b.
  The return at 0x2171d4c has v0 = 0x5b.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2171db4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2171db4-0x2171f28 (372 bytes).
  It occupies 372 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171de8, `ld` at 0x2171e84.
  The `ld` at 0x2171df4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171e00, `ld` at 0x2171e34, `ld` at 0x2171ee0.
  The `ld` at 0x2171e04 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171e1c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171e24 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171e2c, `sb` at 0x2171e5c.
  The `ld` at 0x2171e30 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171e3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171e48 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171e50 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171e58 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171e64 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171e70 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171e7c stores 4 bytes to [a0+176]:8 +0xc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2171e94, `ld` at 0x2171eec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2171ea0, `ld` at 0x2171ef8.
  The `jalr` at 0x2171de0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171e78 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2171e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2171ed4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2171ef0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2171f04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2171dec targets 0x2171e00, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171e10 targets 0x2171ed0, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2171e80 targets 0x2171ee4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2171e8c targets 0x2171ea0, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171ea4 targets 0x2171eb8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2171edc targets 0x2171e14 and is always taken.
  The `beq` branch at 0x2171ee4 targets 0x2171ef8, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2171efc targets 0x2171f10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2171ec8 has v0 = ?.
  The return at 0x2171f20 has v0 = 0x5c.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2171f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2171f28-0x2172190 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2171f60, `sw` at 0x2172014, `sw` at 0x2172018.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2171f64, `ld` at 0x217201c, `ld` at 0x21720a0.
  The `ld` at 0x2171f70 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2171f7c, `ld` at 0x2171fb4, `ld` at 0x2172154.
  The `ld` at 0x2171f80 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2171f9c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2171fa4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2171fac, `sb` at 0x2171fdc.
  The `ld` at 0x2171fb0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171fbc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2171fc8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2171fd0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2171fd8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2171fe4 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2171ff0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2171ffc stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2172028, `ld` at 0x21720ac, `ld` at 0x217210c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2172034, `ld` at 0x21720b8, `ld` at 0x2172118.
  The `jalr` at 0x2171f58 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2171f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2171ff8 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=[a0+176]:8, a7=0x1000f.
  The `jalr` at 0x217202c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172040 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x217207c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2172094 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21720b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x21720c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21720f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2172110 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172124 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2172148 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=[a0+176]:8.
  The `jalr` at 0x217216c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2172180 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2171f68 targets 0x2171f7c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2171f8c targets 0x2172144, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2172000 targets 0x2172158, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0x2172010 targets 0x2172064, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The `beq` branch at 0x2172020 targets 0x2172034, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2172038 targets 0x217204c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2172084 targets 0x21720e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x21720a4 targets 0x21720b8, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x21720bc targets 0x21720d0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172104 targets 0x2172118, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x217211c targets 0x2172130, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172150 targets 0x2171f90 and is always taken.
  The `beq` branch at 0x2172160 targets 0x2172174, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2172178 targets 0x2172188, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2172188 targets 0x2172130 and is always taken.
  The return at 0x217205c has v0 = 0x0.
  The return at 0x21720e0 has v0 = 0x0.
  The return at 0x217213c has v0 = one of ?, 0x0.

- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2172190 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2172190-0x2172258 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x2172198 loads 8 bytes from abs 0x1028.
  The `ld` at 0x217219c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x21721bc loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x21721c4 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x21721c8 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x130.
  The `lw` at 0x21721d4 loads 4 bytes from [[0x1028]:8+280]:8 +0x64.
  The `sw` at 0x217224c stores 4 bytes to [[0x1028]:8+280]:8 +0x64.
  The `jalr` at 0x2172228 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21721b4 targets 0x217220c, is taken when s0(=[[0x1028]:8+280]:8) == 0, and falls through when s0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x21721c0 targets 0x217220c, is taken when t8(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when t8(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x21721cc targets 0x2172240, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) != 0.
  The `beq` branch at 0x21721d8 targets 0x2172220, is taken when at(=[[[0x1028]:8+280]:8+100]) == a1(=-0x1), and falls through when at(=[[[0x1028]:8+280]:8+100]) != a1(=-0x1).
  The `beq` branch at 0x21721e0 targets 0x2172220, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0x2172230 targets 0x2172248, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2172238 targets 0x21721fc and is always taken.
  The `beq` branch at 0x2172240 targets 0x21721fc and is always taken.
  The `beq` branch at 0x2172250 targets 0x21721fc and is always taken.
  The return at 0x21721f4 has v0 = 0x5.
  The return at 0x2172204 has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0x2172218 has v0 = 0x5.

- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2172258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2172258-0x21722d0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2172258 loads 8 bytes from abs 0x1028.
  The `ld` at 0x217225c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2172278 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2172280 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2172284 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x138.
  The `jalr` at 0x2172294 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2172270 targets 0x21722b8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x217227c targets 0x21722b8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2172288 targets 0x21722c8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) != 0.
  The `beq` branch at 0x21722c8 targets 0x21722a8 and is always taken.
  The return at 0x21722b0 has v0 = one of ?, 0x5c.
  The return at 0x21722c0 has v0 = 0x5.

- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x21722d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x21722d0-0x2172348 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x21722d0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21722d4 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x21722f0 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x21722f8 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x21722fc loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x140.
  The `jalr` at 0x217230c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21722e8 targets 0x2172330, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x21722f4 targets 0x2172330, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2172300 targets 0x2172340, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) != 0.
  The `beq` branch at 0x2172340 targets 0x2172320 and is always taken.
  The return at 0x2172328 has v0 = one of ?, 0x5c.
  The return at 0x2172338 has v0 = 0x5.

- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2172348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2172348-0x21723c0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2172348 loads 8 bytes from abs 0x1028.
  The `ld` at 0x217234c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2172368 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2172370 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2172374 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x148.
  The `jalr` at 0x2172384 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2172360 targets 0x21723a8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x217236c targets 0x21723a8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2172378 targets 0x21723b8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) != 0.
  The `beq` branch at 0x21723b8 targets 0x2172398 and is always taken.
  The return at 0x21723a0 has v0 = one of ?, 0x5c.
  The return at 0x21723b0 has v0 = 0x5.

- `_init` in `usr/gfx/arch/IP35KONA64/libGL.so` at 0x2177350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGL.so`.
  Range: 0x2177350-0x217738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2177370 calls __glXInit [0x2142b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2177384 has v0 = ret(__glXInit).
