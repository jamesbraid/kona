# Readings: `usr/gfx/arch/IP27KONA64/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `__glXGetPipeAddress` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2643004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2643004-0x264300c (8 bytes).
  It occupies 8 bytes.
  The return at 0x2643004 has v0 = 0x4000.

- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x264300c
  It occupies 396 bytes.
  **Inferred.** Compares the index in a0 with 0x41; at or above 0x41 the branch at 0x264302c goes to 0x2643060, ahead of the __glXFatal call at 0x264306c. Otherwise it reads a word through the table at 0x1028 indexed by a0 (0x2643040) and returns when that word is non-negative (0x2643058). When it is negative it opens a device path (string at 0x26773e0, flags 0x802; 0x2643088) and calls fcntl with a1=2 and a2=5 (0x26430a4). It sends ioctl request 0x65 (0x2643144), the same request gversionIoctl sends on the IGLOO32 library, only when the record's word at +0x104 is negative (0x26430bc). A negative result from open or fcntl, and a non-positive ioctl result, lead to __glXFatal calls (0x2643110, 0x2643128, 0x2643188). A further __glXFatal call (0x26430d4) depends on a compare whose operands the facts leave unresolved (0x26430c4). The device path's contents and the meaning of the fcntl arguments are not in these facts.
  Reviewed: 2026-11-12

- `__glXBindHWContextToWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2643464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2643464-0x264371c (696 bytes).
  It occupies 696 bytes.
  The `ld` at 0x2643490 loads 8 bytes from a0 (arg0 at entry) +0x98.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2643494, `ld` at 0x2643684.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128, including `lw` at 0x2643498, `lw` at 0x2643688, `lw` at 0x2643698.
  The `lw` at 0x264349c loads 4 bytes from [0x1028]:8 +0x0.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148, including `ld` at 0x26434a8, `ld` at 0x264358c, `ld` at 0x2643600.
  The `ld` at 0x26434ac loads 8 bytes from [a0+152]:8 +0x168.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x26434b0, `ld` at 0x2643590, `ld` at 0x2643604.
  4 such `sb` accesses store 1 byte to [a0+152]:8 +0x170, including `sb` at 0x26434b8, `sb` at 0x2643574, `sb` at 0x26435f0.
  The `ld` at 0x26434bc loads 8 bytes from [a0+152]:8 +0x160.
  5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158, including `ld` at 0x26434d4, `ld` at 0x2643508, `ld` at 0x2643520.
  The `lw` at 0x26434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0, including `lw` at 0x26434ec, `lw` at 0x2643638.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4, including `lw` at 0x26434f0, `lw` at 0x264363c.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150, including `ld` at 0x26434fc, `ld` at 0x2643514, `ld` at 0x2643554.
  2 such `ld` accesses load 8 bytes from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2643500, `ld` at 0x26435ac.
  The `ld` at 0x264350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  4 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2643518, `lw` at 0x2643558, `lw` at 0x26435b8.
  2 such `lw` accesses load 4 bytes from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2643524, `lw` at 0x2643568.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40, including `lw` at 0x2643538, `lw` at 0x26435cc, `lw` at 0x2643670.
  2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x264357c, `sw` at 0x26435f8.
  The `sw` at 0x2643588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160, including `sd` at 0x2643594, `sd` at 0x264360c.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168, including `sd` at 0x2643598, `sd` at 0x2643610.
  The `sw` at 0x264368c stores 4 bytes to [0x1028]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x26436c4, `ld` at 0x26436e4, `ld` at 0x2643704.
  The `jalr` at 0x264348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2643534 calls (unnamed) [0x2642fec] with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x26435c8 calls (unnamed) [0x2642fec] with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2643674 calls (unnamed) [0x2642fec] with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296].
  The `jalr` at 0x26436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2677478, a2=?, a3=?.
  The `jalr` at 0x26436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x26774b0, a2=0x1, a3=?.
  The `jalr` at 0x264370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2677490, a2=-0x1, a3=?.
  The `bne` branch at 0x26434a0 targets 0x2643660, is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]), and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` branch at 0x26434b4 targets 0x26434c8, is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8), and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` branch at 0x26434c0 targets 0x2643624, is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x26434cc targets 0x2643634, is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x26434e0 targets 0x2643634, is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3), and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` branch at 0x26434f4 targets 0x26436a4, is taken when at(=[[a0+152]:8+432]) == a2(=0x1), and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` branch at 0x264354c targets 0x26436fc, is taken when v0(=ret(0x2642fec)) == a2(=-0x1), and falls through when v0(=ret(0x2642fec)) != a2(=-0x1).
  The `bne` branch at 0x2643560 targets 0x2643574, is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?), and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` branch at 0x264356c targets 0x264358c, is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?), and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` branch at 0x26435d4 targets 0x26436dc, is taken when v0(=ret(0x2642fec)) == at(=-0x1), and falls through when v0(=ret(0x2642fec)) != at(=-0x1).
  The `beq` branch at 0x26435e8 targets 0x2643600, is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?), and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` branch at 0x2643644 targets 0x26435a8, is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed), and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` branch at 0x264364c targets 0x26435a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2643658 targets 0x26435b4 and is always taken.
  The `bltz` branch at 0x264367c targets 0x26436c0, is taken when v0(=ret(0x2642fec)) < 0 (signed), and falls through when v0(=ret(0x2642fec)) >= 0 (signed).
  The `beq` branch at 0x264369c targets 0x26434c8 and is always taken.
  The `beq` branch at 0x26436a4 targets 0x26434fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x26436b8 targets 0x2643514 and is always taken.
  The `beq` branch at 0x26436d4 targets 0x2643694 and is always taken.
  The `beq` branch at 0x26436f4 targets 0x2643624 and is always taken.
  The `beq` branch at 0x2643714 targets 0x2643624 and is always taken.
  The return at 0x26435a0 has v0 = ret(0x2642fec).
  The return at 0x2643618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x264362c has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0x2643620 to 0x2643620 are not reached by any path from the entry, and their branches are not listed.

- `__glx_LoadMatrixd` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x264e764 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x264e764-0x264e7f4 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x264e774 loads 8 bytes from abs 0x1028.
  The `ld` at 0x264e784 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x264e78c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x264e7a4 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x264e7b0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x264e7b4 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x264e7c4 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x264e7ac calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0x264e7e4 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+132, a2=?, a3=?.
  The `bne` branch at 0x264e7c0 targets 0x264e7e0, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned).
  The `beq` branch at 0x264e7ec targets 0x264e7cc and is always taken.
  The return at 0x264e7d8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glx_LoadMatrixf` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x264e7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x264e7f4-0x264e884 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x264e804 loads 8 bytes from abs 0x1028.
  The `ld` at 0x264e814 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x264e81c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x264e834 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x264e840 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x264e844 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x264e854 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x264e83c calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0x264e874 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+68, a2=?, a3=?.
  The `bne` branch at 0x264e850 targets 0x264e870, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned).
  The `beq` branch at 0x264e87c targets 0x264e85c and is always taken.
  The return at 0x264e868 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).

- `__glXInitThread` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265200c
  It occupies 404 bytes.
  **Inferred.** Calls _mplib_get_thread_id (0x2652034), then loads the per-thread pointer at 0x1028. The branches at 0x2652040, 0x265204c and 0x2652054 send three cases to 0x2652058: the pointer is empty, the record's word at +0x10c differs from the word at 0x200e00, or its word at +0x110 differs from the thread id. When both words match, the branch at 0x2652054 goes to 0x265213c. The path from 0x2652058 calls __libc_threadbind (0x265205c), mallocs 0x130 bytes (0x2652068) and calls __libc_threadbind again (0x2652078). It then stores through the pointer at 0x1028 at offsets up to +0x12c, including a loop whose counter is compared with 0x100 (0x26520d8). A branch on the word at 0x267d1b0 (0x2652134) goes to 0x2652154 when it is zero; the calls to dlopen on the string at 0x2677578 (0x2652168) and to __ateachexit (0x2652178) follow, with __glXFatal (0x2652190) when __ateachexit returns non-zero. The facts do not say what the stored fields mean.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265995c
  It occupies 140 bytes.
  **Inferred.** Follows the per-thread chain from 0x1028 to an object and returns 5 when a link in that chain is null (0x2659978, 0x2659984). Otherwise it sends ioctl request 0x3fe (0x26599b4) on a descriptor taken from a table indexed by the word at 0x1028+264, stores one word through its pointer argument a0 (0x26599d8), and returns 0. The value that word holds is unknown: the facts show the store, not its source. The name suggests a sync counter, which the facts do not confirm. The request's meaning is unknown.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265995c
  **Inferred.** Reads a pointer from the fixed slot at abs 0x1028 and follows it through two more loads to a record. Two null tests (branches at 0x2659978 and 0x2659984) skip the ioctl at 0x26599b4 with request 0x3fe and return 0x5 at 0x26599e0. The normal path returns 0x0 at 0x26599d4. A word is stored through the a0 pointer at 0x26599d8. The facts do not show what the ioctl returns or what the stored word holds, so the sync-count role comes only from the name.
  Reviewed: 2026-11-12

- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265995c
  **Inferred.** A 140-byte routine that loads a pointer from the absolute word 0x1028 and calls ioctl with request 0x3fe at 0x26599b4, passing a pointer to a stack buffer. It stores a word through a0 at 0x26599d8; the facts do not show the stored value. Two zero tests at 0x2659978 and 0x2659984 branch past the ioctl to 0x26599dc, and the two returns give 0x0 at 0x26599d4 and 0x5 at 0x26599e0.
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26599e8
  It occupies 200 bytes.
  **Inferred.** Uses the same chain and descriptor lookup as glXGetVideoSyncSGI, then sends ioctl request 0x3ff (0x2659a88). At that call a0 and a1 are also present in the a4 and a5 registers, but the facts do not show the callee reading them. It returns 6 when a0 is zero or negative or a1 is negative (0x2659a24, 0x2659a2c), and also when a further test on t0 (0x2659a34), whose source the facts leave unresolved, is zero. It returns 5 on the null-link path (0x2659a10, 0x2659a1c), and 0 after it stores one word through a2 (0x2659aac). The value that word holds is unknown: the facts show the store, not its source. The comparisons are visible, but the facts do not give the error names behind the return codes.
  Reviewed: 2026-11-12

- `glXSwapIntervalSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265a158
  It occupies 440 bytes.
  **Inferred.** Only the outline is read. It uses the same chain lookup, sends ioctl request 0x3ee (0x265a1bc), calls __glXSetupForCommand (0x265a208), and calls three unnamed callees along with XFlush and _XFlush (0x265a2cc, 0x265a2f4). A non-positive a0 goes to a shared exit (0x265a17c, 0x265a308) that returns one of 0, 5 or 6 (0x265a2e0). A branch on an unsigned compare (0x265a240) leads to the _XFlush call (0x265a2f4); the facts show no copy loop. The stores around 0x265a254 to 0x265a294 are not interpreted here.
  Reviewed: 2026-11-12

- `__glx_Flush` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26641dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26641dc-0x26642ec (272 bytes).
  It occupies 272 bytes.
  The `ld` at 0x26641e4 loads 8 bytes from abs 0x1028.
  The `ld` at 0x26641e8 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `ld` accesses load 8 bytes from [[0x1028]:8+280]:8 +0x138, including `ld` at 0x26641f0, `ld` at 0x26642c0.
  The `ld` at 0x2664218 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x266421c, `ld` at 0x266428c.
  The `ld` at 0x2664228 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x2664234, `ld` at 0x2664260, `ld` at 0x26642e8.
  The `ld` at 0x2664238 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0x266424c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0x2664254 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0x2664258, `sb` at 0x2664280.
  The `ld` at 0x266425c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2664268 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0x2664270 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0x2664274 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0x266427c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0x2664284 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0x2664288 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0x2664298 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0x26642a4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0x2664214 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x266422c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x266429c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=[[[[0x1028]:8+280]:8+312]:8+176]:8+8, a2=[[[[0x1028]:8+280]:8+312]:8+2408]:8, a3=?.
  The `jalr` at 0x26642b0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x26642bc calls XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x26642dc calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2664200 targets 0x26642c8, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0x2664220 targets 0x2664234, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0x2664244 targets 0x26642dc, is taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned), and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+8) (unsigned).
  The `beq` branch at 0x2664290 targets 0x26642a4, is taken when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a2(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0x26642a8 targets 0x26642b8, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0x26642e4 targets 0x266424c and is always taken.
  The return at 0x26642d4 has v0 = one of ?, ret(XFlush).

- `glXCreateWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2670560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2670560-0x26706a8 (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x26705a0, `ld` at 0x267063c.
  The `ld` at 0x26705ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x26705b8, `ld` at 0x26705f0, `ld` at 0x2670690.
  The `ld` at 0x26705bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x26705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x26705e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x26705e8, `sb` at 0x2670608.
  The `ld` at 0x26705ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x26705f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2670600 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2670604 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x267060c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x2670610 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x2670614 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x2670618 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x267061c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2670620 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x2670634 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2670638 stores 4 bytes to [a0+176]:8 +0x10.
  The `ld` at 0x2670648 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2670654 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x267058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2670628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f, a7=ret(__glXSetupForCommand).
  The `jalr` at 0x267064c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2670660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2670684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x2670598 targets 0x2670694, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x26705a4 targets 0x26705b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x26705c8 targets 0x2670680, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2670640 targets 0x2670654, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2670658 targets 0x267066c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x267068c targets 0x26705cc and is always taken.
  The return at 0x2670678 has v0 = ret(?).
  The return at 0x26706a0 has v0 = 0x0.

- `glXDestroyWindow` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26706a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26706a8-0x26707a4 (252 bytes).
  It occupies 252 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x26706e4, `ld` at 0x2670754.
  The `ld` at 0x26706f0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x26706fc, `ld` at 0x2670734, `ld` at 0x26707a0.
  The `ld` at 0x2670700 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x267071c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2670724 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x267072c, `sb` at 0x267074c.
  The `ld` at 0x2670730 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x267073c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2670744 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2670748 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2670750 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2670760 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x267076c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x26706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2670764 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a5=ret(__glXSetupForCommand), a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2670778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2670794 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=?.
  The `beq` branch at 0x26706dc targets 0x2670784, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x26706e8 targets 0x26706fc, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x267070c targets 0x2670794, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2670758 targets 0x267076c, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2670770 targets 0x2670784, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x267079c targets 0x2670714 and is always taken.
  The return at 0x267078c has v0 = one of ret(__glXSetupForCommand), ?, ret(?).

- `glXBindChannelToWindowSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26711c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26711c0-0x26712e4 (292 bytes).
  It occupies 292 bytes.
  The `ld` at 0x26711d8 loads 8 bytes from abs 0x1028.
  The `ld` at 0x26711f0 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2671284, `sb` at 0x26712e0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2671288, `ld` at 0x267128c.
  The `lw` at 0x26712a0 loads 4 bytes from ?.
  The `jalr` at 0x26711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2671218 calls __glXInitChannelRectState [0x2671024] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2671244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2671254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x267129c calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` branch at 0x26711fc targets 0x26712b8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0x2671220 targets 0x26712cc, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0x2671280 targets 0x26712dc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x2671290 targets 0x26712d4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x26712cc targets 0x26712bc and is always taken.
  The `beq` branch at 0x26712d4 targets 0x26712c0 and is always taken.
  The `beq` branch at 0x26712dc targets 0x26712a4 and is always taken.
  The return at 0x26712b0 has v0 = 0x1.
  The return at 0x26712c4 has v0 = 0x0.

- `glXQueryHyperpipeNetworkSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x267187c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x267187c-0x2671af0 (628 bytes).
  It occupies 628 bytes.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x26718b0, `sw` at 0x267195c, `sw` at 0x26719a4.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x26718b4, `ld` at 0x2671978, `ld` at 0x2671a04.
  The `ld` at 0x26718c0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x26718cc, `ld` at 0x2671904, `ld` at 0x2671aa0.
  The `ld` at 0x26718d0 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x26718ec stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x26718f4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x26718fc, `sb` at 0x2671930.
  The `ld` at 0x2671900 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x267190c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671918 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671920 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671928 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x267193c loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671948 stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2671984, `ld` at 0x2671a10, `ld` at 0x2671a58.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2671990, `ld` at 0x2671a1c, `ld` at 0x2671a64.
  The `jalr` at 0x26718a8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x26718c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671944 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=0x1000e, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2671970 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x267199c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x26719e0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x26719fc calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671a14 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671a28 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671a44 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2671a5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671a70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671a94 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2671ab4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671ac8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x26718b8 targets 0x26718cc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x26718dc targets 0x2671a94, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+16) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+16) (unsigned).
  The `beq` branch at 0x267194c targets 0x2671aa4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `blez` branch at 0x2671958 targets 0x2671968, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x2671964 targets 0x26719c4, is taken when a0(?) < 0x21 (signed), and falls through when a0(?) >= 0x21 (signed).
  The `beq` branch at 0x267197c targets 0x2671990, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671994 targets 0x26719a4, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x26719ec targets 0x2671a3c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x2671a08 targets 0x2671a1c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671a20 targets 0x2671a30, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671a34 targets 0x26719ac and is always taken.
  The `beq` branch at 0x2671a50 targets 0x2671a64, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671a68 targets 0x2671a7c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671a9c targets 0x26718e4 and is always taken.
  The `beq` branch at 0x2671aa8 targets 0x2671abc, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671ac0 targets 0x2671ad0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x26719bc has v0 = 0x0.
  The return at 0x2671a8c has v0 = ?.
  The return at 0x2671ae8 has v0 = 0x0.

- `glXHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2671af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2671af0-0x2671db4 (708 bytes).
  It occupies 708 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2671b54, `ld` at 0x2671c9c, `ld` at 0x2671d08.
  The `ld` at 0x2671b60 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2671b80, `ld` at 0x2671bc0, `ld` at 0x2671d68.
  The `ld` at 0x2671b88 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2671ba8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2671bb0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2671bb8, `sb` at 0x2671be0.
  The `ld` at 0x2671bbc loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671bc8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671bd4 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671bdc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671be8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2671bec loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671bf0 stores 4 bytes to [a0+176]:8 +0x14.
  The `sw` at 0x2671bfc stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2671c08 stores 4 bytes to [a0+176]:8 +0xc.
  The `lbu` at 0x2671c1c loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2671c28 stores 1 byte to [a0+176]:8 +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2671c40, `lbu` at 0x2671c50.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2671c48, `sb` at 0x2671c5c.
  The `sw` at 0x2671c84 stores 4 bytes to a4 (arg4 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2671ca8, `ld` at 0x2671d14, `ld` at 0x2671d78.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2671cb4, `ld` at 0x2671d20, `ld` at 0x2671d84.
  The `jalr` at 0x2671b2c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2671b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671c70 calls _XReply with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=0x10010.
  The `jalr` at 0x2671cac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2671cc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671d18 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a4 at entry (arg4), a3=?.
  The `jalr` at 0x2671d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671d58 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671d90 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2671b34 targets 0x2671ce8, is taken when s1(=a2) <= 0 (signed), and falls through when s1(=a2) > 0 (signed).
  The `beq` branch at 0x2671b3c targets 0x2671ce8, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x2671b44 targets 0x2671ce8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x2671b4c targets 0x2671da4, is taken when a0(=a1) < 0 (signed), and falls through when a0(=a1) >= 0 (signed).
  The `beq` branch at 0x2671b58 targets 0x2671b6c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2671b98 targets 0x2671d54, is taken when a1(=[a0+184]:8) < a3(?) (unsigned), and falls through when a1(=[a0+184]:8) >= a3(?) (unsigned).
  The `blez` branch at 0x2671c04 targets 0x2671c60, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2671c10 targets 0x2671c2c, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x2671c30 targets 0x2671c60, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2671c58 targets 0x2671c40, is taken when a7(?) != a1(?), and falls through when a7(?) == a1(?).
  The `beq` branch at 0x2671c78 targets 0x2671d6c, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bne` branch at 0x2671c8c targets 0x2671d08, is taken when s1(=a2) != a1(?), and falls through when s1(=a2) == a1(?).
  The `bltz` branch at 0x2671c94 targets 0x2671d08, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x2671ca0 targets 0x2671cb4, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671cb8 targets 0x2671cc8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671d0c targets 0x2671d20, is taken when v0(=[a0+2408]:8) == 0, and falls through when v0(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671d24 targets 0x2671d34, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671d64 targets 0x2671ba0 and is always taken.
  The `beq` branch at 0x2671d70 targets 0x2671d84, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671d88 targets 0x2671d98, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671d9c targets 0x2671cf4 and is always taken.
  The `beq` branch at 0x2671dac targets 0x2671cf4 and is always taken.
  The return at 0x2671ce0 has v0 = 0x0.
  The return at 0x2671d00 has v0 = 0x5b.
  The return at 0x2671d4c has v0 = 0x5b.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2671db4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2671db4-0x2671f28 (372 bytes).
  It occupies 372 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2671de8, `ld` at 0x2671e84.
  The `ld` at 0x2671df4 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2671e00, `ld` at 0x2671e34, `ld` at 0x2671ee0.
  The `ld` at 0x2671e04 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2671e1c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2671e24 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2671e2c, `sb` at 0x2671e5c.
  The `ld` at 0x2671e30 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671e3c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671e48 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671e50 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671e58 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2671e64 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671e70 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2671e7c stores 4 bytes to [a0+176]:8 +0xc.
  2 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2671e94, `ld` at 0x2671eec.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2671ea0, `ld` at 0x2671ef8.
  The `jalr` at 0x2671de0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2671df8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2671e78 calls _XReply with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+224], a5=0x10011, a6=[a0+176]:8, a7=0x11.
  The `jalr` at 0x2671e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2671eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2671ed4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a0+176]:8.
  The `jalr` at 0x2671ef0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2671f04 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2671dec targets 0x2671e00, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2671e10 targets 0x2671ed0, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2671e80 targets 0x2671ee4, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `beq` branch at 0x2671e8c targets 0x2671ea0, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671ea4 targets 0x2671eb8, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2671edc targets 0x2671e14 and is always taken.
  The `beq` branch at 0x2671ee4 targets 0x2671ef8, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2671efc targets 0x2671f10, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The return at 0x2671ec8 has v0 = ?.
  The return at 0x2671f20 has v0 = 0x5c.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2671f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2671f28-0x2672190 (616 bytes).
  It occupies 616 bytes.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2671f60, `sw` at 0x2672014, `sw` at 0x2672018.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x2671f64, `ld` at 0x267201c, `ld` at 0x26720a0.
  The `ld` at 0x2671f70 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x2671f7c, `ld` at 0x2671fb4, `ld` at 0x2672154.
  The `ld` at 0x2671f80 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2671f9c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2671fa4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x2671fac, `sb` at 0x2671fdc.
  The `ld` at 0x2671fb0 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671fbc stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2671fc8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2671fd0 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2671fd8 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x2671fe4 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `sw` at 0x2671ff0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0x2671ffc stores 4 bytes to [a0+176]:8 +0xc.
  4 such `ld` accesses load 8 bytes from [a0+2408]:8 +0x8, including `ld` at 0x2672028, `ld` at 0x26720ac, `ld` at 0x267210c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xd0, including `ld` at 0x2672034, `ld` at 0x26720b8, `ld` at 0x2672118.
  The `jalr` at 0x2671f58 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2671f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2671ff8 calls _XReply with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+224], a5=a1 at entry (arg1), a6=[a0+176]:8, a7=0x1000f.
  The `jalr` at 0x267202c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2672040 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x267207c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2672094 calls _XEatData with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x26720b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x26720c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x26720f8 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x2672110 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2672124 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2672148 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a1 at entry (arg1), a6=[a0+176]:8.
  The `jalr` at 0x267216c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0x2672180 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2671f68 targets 0x2671f7c, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0x2671f8c targets 0x2672144, is taken when v0(=[a0+184]:8) < v1(=[a0+176]:8+32) (unsigned), and falls through when v0(=[a0+184]:8) >= v1(=[a0+176]:8+32) (unsigned).
  The `beq` branch at 0x2672000 targets 0x2672158, is taken when v0(=ret(_XReply)) == 0, and falls through when v0(=ret(_XReply)) != 0.
  The `bgtz` branch at 0x2672010 targets 0x2672064, is taken when at(?) > 0 (signed), and falls through when at(?) <= 0 (signed).
  The `beq` branch at 0x2672020 targets 0x2672034, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2672038 targets 0x267204c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `bne` branch at 0x2672084 targets 0x26720e8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `beq` branch at 0x26720a4 targets 0x26720b8, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x26720bc targets 0x26720d0, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2672104 targets 0x2672118, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x267211c targets 0x2672130, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2672150 targets 0x2671f90 and is always taken.
  The `beq` branch at 0x2672160 targets 0x2672174, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2672178 targets 0x2672188, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x2672188 targets 0x2672130 and is always taken.
  The return at 0x267205c has v0 = 0x0.
  The return at 0x26720e0 has v0 = 0x0.
  The return at 0x267213c has v0 = one of ?, 0x0.

- `glXBindHyperpipeSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2672190 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2672190-0x2672258 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x2672198 loads 8 bytes from abs 0x1028.
  The `ld` at 0x267219c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x26721bc loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x26721c4 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x26721c8 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x130.
  The `lw` at 0x26721d4 loads 4 bytes from [[0x1028]:8+280]:8 +0x64.
  The `sw` at 0x267224c stores 4 bytes to [[0x1028]:8+280]:8 +0x64.
  The `jalr` at 0x2672228 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x26721b4 targets 0x267220c, is taken when s0(=[[0x1028]:8+280]:8) == 0, and falls through when s0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x26721c0 targets 0x267220c, is taken when t8(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when t8(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x26721cc targets 0x2672240, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+304]:8) != 0.
  The `beq` branch at 0x26721d8 targets 0x2672220, is taken when at(=[[[0x1028]:8+280]:8+100]) == a1(=-0x1), and falls through when at(=[[[0x1028]:8+280]:8+100]) != a1(=-0x1).
  The `beq` branch at 0x26721e0 targets 0x2672220, is taken when v0(=a1) == a1(=-0x1), and falls through when v0(=a1) != a1(=-0x1).
  The `beq` branch at 0x2672230 targets 0x2672248, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2672238 targets 0x26721fc and is always taken.
  The `beq` branch at 0x2672240 targets 0x26721fc and is always taken.
  The `beq` branch at 0x2672250 targets 0x26721fc and is always taken.
  The return at 0x26721f4 has v0 = 0x5.
  The return at 0x2672204 has v0 = one of 0x0, 0x5, 0x5c.
  The return at 0x2672218 has v0 = 0x5.

- `glXQueryHyperpipeBestAttribSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2672258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2672258-0x26722d0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2672258 loads 8 bytes from abs 0x1028.
  The `ld` at 0x267225c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2672278 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2672280 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2672284 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x138.
  The `jalr` at 0x2672294 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2672270 targets 0x26722b8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x267227c targets 0x26722b8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2672288 targets 0x26722c8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+312]:8) != 0.
  The `beq` branch at 0x26722c8 targets 0x26722a8 and is always taken.
  The return at 0x26722b0 has v0 = one of ?, 0x5c.
  The return at 0x26722c0 has v0 = 0x5.

- `glXQueryHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26722d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x26722d0-0x2672348 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x26722d0 loads 8 bytes from abs 0x1028.
  The `ld` at 0x26722d4 loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x26722f0 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x26722f8 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x26722fc loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x140.
  The `jalr` at 0x267230c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x26722e8 targets 0x2672330, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x26722f4 targets 0x2672330, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2672300 targets 0x2672340, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+320]:8) != 0.
  The `beq` branch at 0x2672340 targets 0x2672320 and is always taken.
  The return at 0x2672328 has v0 = one of ?, 0x5c.
  The return at 0x2672338 has v0 = 0x5.

- `glXHyperpipeAttribSGIX` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2672348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2672348-0x26723c0 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2672348 loads 8 bytes from abs 0x1028.
  The `ld` at 0x267234c loads 8 bytes from [0x1028]:8 +0x118.
  The `lw` at 0x2672368 loads 4 bytes from [[0x1028]:8+280]:8 +0x118.
  The `ld` at 0x2672370 loads 8 bytes from [[0x1028]:8+280]:8 +0x120.
  The `ld` at 0x2672374 loads 8 bytes from [[[0x1028]:8+280]:8+288]:8 +0x148.
  The `jalr` at 0x2672384 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+288]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2672360 targets 0x26723a8, is taken when v0(=[[0x1028]:8+280]:8) == 0, and falls through when v0(=[[0x1028]:8+280]:8) != 0.
  The `beq` branch at 0x267236c targets 0x26723a8, is taken when v1(=[[[0x1028]:8+280]:8+280]) == 0, and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  The `beq` branch at 0x2672378 targets 0x26723b8, is taken when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+288]:8+328]:8) != 0.
  The `beq` branch at 0x26723b8 targets 0x2672398 and is always taken.
  The return at 0x26723a0 has v0 = one of ?, 0x5c.
  The return at 0x26723b0 has v0 = 0x5.

- `_init` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x2677350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGL.so`.
  Range: 0x2677350-0x267738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2677370 calls __glXInit [0x2642b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2677384 has v0 = ret(__glXInit).
