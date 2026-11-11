# Tier-1 routine roles, kona batch 0

Roles for targets 0 to 24 of the ranked tier-1 list. Each one comes from the rendered instruction facts at the cited addresses, not from a read of the raw disassembly, so every entry is graded inferred. The grader accepted all 25 entries and none were rejected.

- `gversionIoctl` (`usr/gfx/arch/IGLOO32/libgl.so` 0xec78af0, 424 bytes):
  **Inferred.** Opens a device (path at 0xecd1bc8, flags 0x800) and sends ioctl requests 0x65 (0xec78b50) and 0x66 (0xec78b68, into a stack buffer). It calls uname (0xec78b78), checks the result against three constants with strcmp (0xec78b88, 0xec78ba0, 0xec78bb4), and passes the buffer through match_gfx (0xec787e0) and makeGversionString (0xec78880). The 0x66 request repeats after a __iglooMalloc call (0xec5f350) at 0xec78c64. The facts do not say what either request returns, so the version string's contents and the exact effect of the uname check stay open.
- `__glkonim_RasterPos2d` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5b68c, 20 bytes):
  **Inferred.** Stores one 4-byte word (0xda5b690) and two 8-byte FP values (0xda5b694, 0xda5b69c) to the fixed address 0x4000, with no calls. The two doubles fit a two-coordinate position call, but the source of the stored word is not in the facts, so its content is open.
- `__glkonim_RasterPos2f` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5b6a0, 20 bytes):
  **Inferred.** Stores one 4-byte word (0xda5b6a4) and two 4-byte float values (0xda5b6a8, 0xda5b6b0) to 0x4000, with no calls. It matches the 2d variant with single-precision operands.
- `__glkonim_RasterPos2i` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5b6b4, 20 bytes):
  **Inferred.** Stores three 4-byte integer words to 0x4000 (0xda5b6b8, 0xda5b6bc, 0xda5b6c4), with no calls. Three integer words where the 2f variant stores one word and two floats is the visible difference; the facts do not name their sources.
- `__glkonim_TexCoord2d` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5b8a4, 20 bytes):
  **Inferred.** Stores one 4-byte word (0xda5b8a8) and two 8-byte FP values (0xda5b8ac, 0xda5b8b4) to 0x4000, then returns without calls. The name suggests the two doubles are texture coordinates, which the facts do not confirm.
- `__glkonim_TexCoord2f` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5b8b8, 20 bytes):
  **Inferred.** Stores one 4-byte word (0xda5b8bc) and two 4-byte float values (0xda5b8c0, 0xda5b8c8) to 0x4000, with no calls.
- `__glkonim_TexCoord2i` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5b8cc, 20 bytes):
  **Inferred.** Stores three 4-byte integer words to 0x4000 (0xda5b8d0, 0xda5b8d4, 0xda5b8dc), with no calls.
- `__glkonim_Vertex2d` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5baf4, 20 bytes):
  **Inferred.** Stores one 4-byte word (0xda5baf8) and two 8-byte FP values (0xda5bafc, 0xda5bb04) to 0x4000, with no calls. The write pattern matches RasterPos2d at 0xda5b68c.
- `__glkonim_Vertex2f` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5bb08, 20 bytes):
  **Inferred.** Stores one 4-byte word (0xda5bb0c) and two 4-byte float values (0xda5bb10, 0xda5bb18) to 0x4000, with no calls.
- `__glkonim_Vertex2i` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5bb1c, 20 bytes):
  **Inferred.** Stores three 4-byte integer words to 0x4000 (0xda5bb20, 0xda5bb24, 0xda5bb2c), with no calls.
- `__glkonim_ShadeModel` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5c300, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5c304, 0xda5c30c) and returns with no calls or branches. The routine takes one argument, probably the shade mode, but the facts show no test on it, so which stored word carries the mode is open.
- `__glkonim_DrawBuffer` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5c5c0, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5c5c4, 0xda5c5cc) with no calls or branches. Its two-word shape matches ShadeModel.
- `__glkonim_ReadBuffer` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5c8a0, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5c8a4, 0xda5c8ac), with no calls.
- `__glkonim_BlendEquationEXT` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5cd10, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cd14, 0xda5cd1c), with no calls.
- `__glkonim_ResetMinmaxEXT` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5cd44, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cd48, 0xda5cd50), with no calls. The API call takes no arguments, so the stored words are probably fixed tokens, but the facts do not show that.
- `__glkonim_ReadInstrumentsSGIX` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5cf54, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cf58, 0xda5cf60), with no calls.
- `__glkonim_StopInstrumentsSGIX` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xda5cf74, 16 bytes):
  **Inferred.** Stores two 4-byte words to 0x4000 (0xda5cf78, 0xda5cf80), with no calls. It is the same shape as ReadInstrumentsSGIX, so the two probably share a token pattern, which is not confirmed.
- `__glXOpenGraphicsDevice` (`usr/gfx/arch/IP27KONA64/libGL.so` 0x264300c, 396 bytes):
  **Inferred.** Checks the index in a0 and sends any value at or above 0x41 to __glXFatal (0x264306c). For a valid index it reads a record through the word at 0x1028, opens a device path (string at 0x26773e0, flags 0x802), sets a descriptor flag with fcntl (0x26430a4), and sends ioctl request 0x65 (0x2643144), the same request gversionIoctl sends on the IGLOO32 library. Each failure goes to __glXFatal. The fcntl arguments and the device path's contents are not in these facts.
- `__glXInitThread` (`usr/gfx/arch/IP27KONA64/libGL.so` 0x265200c, 404 bytes):
  **Inferred.** Gets a thread id with _mplib_get_thread_id (0x2652034). When the per-thread pointer at 0x1028 is empty it mallocs 0x130 bytes (0x2652068) and fills the new record. It binds the thread with __libc_threadbind (0x265205c, 0x2652078). It also calls dlopen on the string at 0x2677578 (0x2652168) and __ateachexit (0x2652178), with __glXFatal (0x2652190) on failure; the branch order that gates those calls is not fully settled by the facts.
- `glXGetVideoSyncSGI` (`usr/gfx/arch/IP27KONA64/libGL.so` 0x265995c, 140 bytes):
  **Inferred.** Follows the per-thread chain from 0x1028 to an object and returns 5 when a link in that chain is null (0x2659978, 0x2659984). Otherwise it sends ioctl request 0x3fe (0x26599b4) on a descriptor taken from a table indexed by the word at 0x1028+264, stores the result through its pointer argument a0 (0x26599d8), and returns 0. The name suggests a sync counter, but the facts do not give the request's meaning.
- `glXWaitVideoSyncSGI` (`usr/gfx/arch/IP27KONA64/libGL.so` 0x26599e8, 200 bytes):
  **Inferred.** Uses the same chain and descriptor lookup as glXGetVideoSyncSGI, then sends ioctl request 0x3ff (0x2659a88) with a0 and a1 passed through as its last two arguments. It returns 6 when a0 is zero or negative or a1 is negative (0x2659a24, 0x2659a2c), 5 on the null-link path (0x2659a10, 0x2659a1c), and 0 after it stores the result through a2 (0x2659aac). The comparisons are visible, but the facts do not give the error names behind the return codes.
- `glXSwapIntervalSGI` (`usr/gfx/arch/IP27KONA64/libGL.so` 0x265a158, 440 bytes):
  **Inferred.** Only the outline is read. It uses the same chain lookup, sends ioctl request 0x3ee (0x265a1bc), calls __glXSetupForCommand (0x265a208), and calls three unnamed callees along with XFlush and _XFlush (0x265a2cc, 0x265a2f4). A non-positive a0 goes to a shared exit (0x265a17c, 0x265a308) that returns one of 0, 5 or 6 (0x265a2e0). The copy loop with an unsigned bound (0x265a240) and the unnamed stores around 0x265a254 to 0x265a294 are not interpreted here.
- `__glkonim_AlphaFunc` (`usr/gfx/arch/IP27KONA64/libGLcore.so` 0x2dafd90, 80 bytes):
  **Inferred.** Stores four 4-byte words to 0x4000 (three are named at 0x2dafdb4, 0x2dafdb8 and 0x2dafdcc) and two single-precision values (0x2dafdc0, 0x2dafddc). A float compare at 0x2dafd94 decides whether the stored float comes from the registers or from a constant at 0x2f00778, loaded at 0x2dafdc4. It returns 0x150a08 on both paths, but the facts do not say what that constant is or whether the compare is a clamp.
- `__glkonim_RasterPos2d` (`usr/gfx/arch/IP35KONA/libGLcore.so` 0xda5b68c, 20 bytes):
  **Inferred.** The rendered facts match the IP27KONA copy at the same address line for line: one 4-byte store (0xda5b690), two 8-byte FP stores (0xda5b694, 0xda5b69c), no calls. The bytes were not compared, so this rests on the rendered facts only.
- `__glkonim_RasterPos2f` (`usr/gfx/arch/IP35KONA/libGLcore.so` 0xda5b6a0, 20 bytes):
  **Inferred.** The rendered facts match the IP27KONA copy at the same address: one 4-byte store (0xda5b6a4), two 4-byte float stores (0xda5b6a8, 0xda5b6b0), no calls. As with the 2d copy, the bytes were not compared directly.
