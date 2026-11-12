# Tier-1 routine roles, kona batch 0

Roles for targets 0 to 24 of the ranked tier-1 list. Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. The grader accepted all 25 entries and none were rejected.

- `gversionIoctl` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec78af0
  It occupies 424 bytes.
  **Inferred.** Opens a device (path at 0xecd1bc8, flags 0x800; 0xec78b34); a negative result branches to 0xec78c04. Otherwise it sends ioctl request 0x65 (0xec78b50), and when that returns a positive value it sends request 0x66 into a stack buffer at sp-3416 (0xec78b68). When that returns a non-negative value it calls uname (0xec78b78) with the buffer at sp-3400, then calls strcmp three times (0xec78b88, 0xec78ba0, 0xec78bb4) with sp-3456 as the second argument and the first loaded from 0xecdefc4, 0xecdefc8 and 0xecdefcc. A zero result sends the first and third compares to 0xec78c18 and the second to 0xec78c14. When none match it calls match_gfx (0xec787e0) with sp-3456, then makeGversionString (0xec78880) with its own first argument and sp-2886 as the third (0xec78be8), and closes the descriptor when it is non-negative (0xec78bfc). The path at 0xec78c18 calls match_gfx on the word at 0xecdefc4, then __iglooMalloc (0xec5f350) at 0xec78c2c. When that returns non-zero it repeats the 0x66 request (0xec78c64) and, when that returns non-negative, tests a loaded byte (0xec78c78) before a further match_gfx call (0xec78c88). The facts do not show how sp-3456 relates to the uname buffer or the 0x66 buffer, what either request returns, or what the version string holds.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_RasterPos2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5b68c
  It occupies 20 bytes.
  **Inferred.** Stores one 4-byte word (0xda5b690) and two 8-byte FP values (0xda5b694, 0xda5b69c) to the fixed address 0x4000, with no calls. The two doubles fit a two-coordinate position call, but the source of the stored word is not in the facts, so its content is open.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_RasterPos2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5b6a0
  It occupies 20 bytes.
  **Inferred.** Stores one 4-byte word (0xda5b6a4) and two 4-byte float values (0xda5b6a8, 0xda5b6b0) to 0x4000, with no calls. It matches the 2d variant with single-precision operands.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_RasterPos2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5b6b4
  It occupies 20 bytes.
  **Inferred.** Stores three 4-byte integer words to 0x4000 (0xda5b6b8, 0xda5b6bc, 0xda5b6c4), with no calls. Three integer words where the 2f variant stores one word and two floats is the visible difference; the facts do not name their sources.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_TexCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5b8a4
  It occupies 20 bytes.
  **Inferred.** Stores one 4-byte word (0xda5b8a8) and two 8-byte FP values (0xda5b8ac, 0xda5b8b4) to 0x4000, then returns without calls. The name suggests the two doubles are texture coordinates, which the facts do not confirm.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_TexCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5b8b8
  It occupies 20 bytes.
  **Inferred.** Stores one 4-byte word (0xda5b8bc) and two 4-byte float values (0xda5b8c0, 0xda5b8c8) to 0x4000, with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_TexCoord2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5b8cc
  It occupies 20 bytes.
  **Inferred.** Stores three 4-byte integer words to 0x4000 (0xda5b8d0, 0xda5b8d4, 0xda5b8dc), with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_Vertex2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5baf4
  It occupies 20 bytes.
  **Inferred.** Stores one 4-byte word (0xda5baf8) and two 8-byte FP values (0xda5bafc, 0xda5bb04) to 0x4000, with no calls. The write pattern matches RasterPos2d at 0xda5b68c.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_Vertex2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5bb08
  It occupies 20 bytes.
  **Inferred.** Stores one 4-byte word (0xda5bb0c) and two 4-byte float values (0xda5bb10, 0xda5bb18) to 0x4000, with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_Vertex2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5bb1c
  It occupies 20 bytes.
  **Inferred.** Stores three 4-byte integer words to 0x4000 (0xda5bb20, 0xda5bb24, 0xda5bb2c), with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_ShadeModel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5c300
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5c304, 0xda5c30c) and returns with no calls or branches. The routine takes one argument, probably the shade mode, but the facts show no test on it, so which stored word carries the mode is open.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_DrawBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5c5c0
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5c5c4, 0xda5c5cc) with no calls or branches. Its two-word shape matches ShadeModel.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_ReadBuffer` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5c8a0
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5c8a4, 0xda5c8ac), with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cd10
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cd14, 0xda5cd1c), with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cd44
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cd48, 0xda5cd50), with no calls. The facts do not show where either stored value comes from, so the content of the words is open.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_ReadInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cf54
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cf58, 0xda5cf60), with no calls.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_StopInstrumentsSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda5cf74
  It occupies 16 bytes.
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cf78, 0xda5cf80), with no calls. It is the same shape as ReadInstrumentsSGIX, so the two probably share a token pattern, which is not confirmed.
  Reviewed: 2026-11-12 (sonnet)
- `__glXOpenGraphicsDevice` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x264300c
  It occupies 396 bytes.
  **Inferred.** Compares the index in a0 with 0x41; at or above 0x41 the branch at 0x264302c goes to 0x2643060, ahead of the __glXFatal call at 0x264306c. Otherwise it reads a word through the table at 0x1028 indexed by a0 (0x2643040) and returns when that word is non-negative (0x2643058). When it is negative it opens a device path (string at 0x26773e0, flags 0x802; 0x2643088) and calls fcntl with a1=2 and a2=5 (0x26430a4). It sends ioctl request 0x65 (0x2643144), the same request gversionIoctl sends on the IGLOO32 library, only when the record's word at +0x104 is negative (0x26430bc). A negative result from open or fcntl, and a non-positive ioctl result, lead to __glXFatal calls (0x2643110, 0x2643128, 0x2643188). A further __glXFatal call (0x26430d4) depends on a compare whose operands the facts leave unresolved (0x26430c4). The device path's contents and the meaning of the fcntl arguments are not in these facts.
  Reviewed: 2026-11-12 (sonnet)
- `__glXInitThread` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265200c
  It occupies 404 bytes.
  **Inferred.** Calls _mplib_get_thread_id (0x2652034), then loads the per-thread pointer at 0x1028. The branches at 0x2652040, 0x265204c and 0x2652054 send three cases to 0x2652058: the pointer is empty, the record's word at +0x10c differs from the word at 0x200e00, or its word at +0x110 differs from the thread id. When both words match, the branch at 0x2652054 goes to 0x265213c. The path from 0x2652058 calls __libc_threadbind (0x265205c), mallocs 0x130 bytes (0x2652068) and calls __libc_threadbind again (0x2652078). It then stores through the pointer at 0x1028 at offsets up to +0x12c, including a loop whose counter is compared with 0x100 (0x26520d8). A branch on the word at 0x267d1b0 (0x2652134) goes to 0x2652154 when it is zero; the calls to dlopen on the string at 0x2677578 (0x2652168) and to __ateachexit (0x2652178) follow, with __glXFatal (0x2652190) when __ateachexit returns non-zero. The facts do not say what the stored fields mean.
  Reviewed: 2026-11-12 (sonnet)
- `glXGetVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265995c
  It occupies 140 bytes.
  **Inferred.** Follows the per-thread chain from 0x1028 to an object and returns 5 when a link in that chain is null (0x2659978, 0x2659984). Otherwise it sends ioctl request 0x3fe (0x26599b4) on a descriptor taken from a table indexed by the word at 0x1028+264, stores one word through its pointer argument a0 (0x26599d8), and returns 0. The value that word holds is unknown: the facts show the store, not its source. The name suggests a sync counter, which the facts do not confirm. The request's meaning is unknown.
  Reviewed: 2026-11-12 (sonnet)
- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x26599e8
  It occupies 200 bytes.
  **Inferred.** Uses the same chain and descriptor lookup as glXGetVideoSyncSGI, then sends ioctl request 0x3ff (0x2659a88). At that call a0 and a1 are also present in the a4 and a5 registers, but the facts do not show the callee reading them. It returns 6 when a0 is zero or negative or a1 is negative (0x2659a24, 0x2659a2c), and also when a further test on t0 (0x2659a34), whose source the facts leave unresolved, is zero. It returns 5 on the null-link path (0x2659a10, 0x2659a1c), and 0 after it stores one word through a2 (0x2659aac). The value that word holds is unknown: the facts show the store, not its source. The comparisons are visible, but the facts do not give the error names behind the return codes.
  Reviewed: 2026-11-12 (sonnet)
- `glXSwapIntervalSGI` in `usr/gfx/arch/IP27KONA64/libGL.so` at 0x265a158
  It occupies 440 bytes.
  **Inferred.** Only the outline is read. It uses the same chain lookup, sends ioctl request 0x3ee (0x265a1bc), calls __glXSetupForCommand (0x265a208), and calls three unnamed callees along with XFlush and _XFlush (0x265a2cc, 0x265a2f4). A non-positive a0 goes to a shared exit (0x265a17c, 0x265a308) that returns one of 0, 5 or 6 (0x265a2e0). A branch on an unsigned compare (0x265a240) leads to the _XFlush call (0x265a2f4); the facts show no copy loop. The stores around 0x265a254 to 0x265a294 are not interpreted here.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_AlphaFunc` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dafd90
  It occupies 80 bytes.
  **Inferred.** A float compare at 0x2dafd94 (f13 against f0) selects the path at the branch at 0x2dafdac. When f13 < f0 it falls through, stores two 4-byte words (0x2dafdb4, 0x2dafdb8) and one single-precision value (0x2dafdc0) to 0x4000, and returns 0x150a08. Otherwise it loads a single-precision value (0x2dafdc4), stores two 4-byte words (0x2dafdcc, 0x2dafdd0) and one single-precision value (0x2dafddc) to 0x4000, and returns 0x150a08 (0x2dafdd8). The facts do not say what is loaded at 0x2dafdc4 or whether the compare is a clamp.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_RasterPos2d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b68c
  It occupies 20 bytes.
  **Inferred.** The rendered facts match the IP27KONA copy at the same address line for line: one 4-byte store (0xda5b690), two 8-byte FP stores (0xda5b694, 0xda5b69c), no calls. The bytes were not compared, so this rests on the rendered facts only.
  Reviewed: 2026-11-12 (sonnet)
- `__glkonim_RasterPos2f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b6a0
  It occupies 20 bytes.
  **Inferred.** The rendered facts match the IP27KONA copy at the same address: one 4-byte store (0xda5b6a4), two 4-byte float stores (0xda5b6a8, 0xda5b6b0), no calls. As with the 2d copy, the bytes were not compared directly.
  Reviewed: 2026-11-12 (sonnet)
