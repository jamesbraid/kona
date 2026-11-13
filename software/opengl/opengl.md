# OpenGL driver: context, buffer configuration and display commands

What the 6.5.30m `libGLcore` (N32 build, `software/opengl/asm/KONA/`) does about contexts, buffer configuration, buffer swap and the display channels. Facts are labelled **established** (read from the assembly, function named), **inferred** (reasoning given) or **unknown**. The pixel and texture paths are in [RM.h](../../devices/rm/RM.h), [GE.h](../../devices/ge/GE.h) and [hip.md](../../devices/hip/README.md); the kernel side of every ioctl named here is in [kernel.md](../kernel/kernel.md).

Notation: `ctx` is the driver's per-context structure, offsets as the code uses them (names ours). A store to address `0x4000` through `$zero` is a write to the user command port, the doorbell of [GE.h](../../devices/ge/GE.h); the code writes the token word first and the payload words after it.

## Which functions call the kernel

**Established** (a scan of every call to `__glKon_ioctl`, the driver's ioctl wrapper; the number is the constant loaded before the call). Numbers 10000 and up are the pipe's private ioctls ([kernel.md](../kernel/kernel.md#private-ioctls)); 100-1000 are the generic graphics ioctls (`GFX_BASE` 100) and 1000 and up the rendering-resource-manager ones (the base resource-manager request 1000), named in the installed 6.5.5 headers the Kona stack header 3 and the Kona stack header 8.

| Number | Kernel name | Called from |
|---|---|---|
| 102 | the get-board-information graphics-driver request | `GetBoardInfo` (the Kona GL driver context assembly unit), which then builds the board name strings with `strcat`/`getenv` |
| 1005 | the swap-buffer resource-manager request | `SwapBuffers` |
| 1008 | the set-display-mode resource-manager request | `kona_writeconfig` |
| 1009 | the message resource-manager request | the hyperpipe code (the Kona GL driver assembly unit 2) |
| 10000 | the DMA-read Kona driver request | pixel read-back (the Kona GL driver pixel assembly unit), histogram read-back (the Kona GL driver histogram assembly unit) |
| 10001 | the DMA-write Kona driver request | display lists (the Kona GL driver display-list assembly unit; the first command-group token in the argument block is 456, `IDMACOPYLIST_LDMA`), pixel download (the Kona GL driver pixel assembly unit) |
| 10002, 10003 | the start select-feed Kona driver request, the finish select-feed Kona driver request | the Kona GL driver selection assembly unit, the Kona GL driver pipeline instrumentation assembly unit |
| 10010, 10011, 10014, 10015 | the memory allocate Kona driver request, `_FREE`, `_REALLOC`, the share Kona driver request | the Kona GL driver memory assembly unit |
| 10017 | the check pipe Kona driver request | the Kona GL driver state query assembly unit |
| 10018 | the DMA-pool Kona driver request | the Kona GL driver display-list assembly unit |

**Established, negative:** no instruction in `software/opengl/asm` loads the constant of a `CONTEXT_*` token (0x1f7-0x1fd), `RDATA_SETUP`, `PIPE_SETUP` or a `MEM_*` token (so no such token is written as a constant), and a scan of every store to `0x4000` in the Kona GL driver context assembly unit finds only the tokens listed below. The context-switch packets in [kona_kern.h](../kernel/include/kona_kern.h) are all sent by the kernel. **Inferred:** a GL context is saved and restored by the kernel and the pipe alone; `LoseCurrent` and `DestroyContext` touch the pipe only through the generic layer. `LoseCurrent` (the Kona GL driver context assembly unit) copies four words of the driver's global drawable state into the context (offsets 5052-5064) and calls the shared `__glLoseCurrentBuffers`; `DestroyContext` frees texture and evaluator state and calls the shared `__glDestroyContext`. Neither writes the command port.

## Buffer configuration: `kona_writeconfig`, `kona_readconfig`

**Established** (the Kona GL driver context assembly unit). The two functions have a debug print guarded by an environment variable whose format strings name the twelve configuration fields (strings in `libGLcore_n32.so`): `wconf:lvl:%d:rgb:%d:ci:%d:isize:%d:rsize:%d:db:%d:st:%d:zb:%d:ss:%d:acc:%d:ms:%d:aux:%d:` for writing, `rconf:...` the same for reading. The arguments of the print identify the context offsets: `lvl` 3300, `rgb` byte 3220, `ci` byte 3221, `isize` 3252, `rsize` 3256, `db` byte 3222, `st` byte 3223, `zb` 3244, `ss` 3248, `acc` 3228, `ms` 3288, `aux` 3296 (read configuration: the same fields at 3460, 3380, 3381, 3412, 3416, 3382, 3383, 3404, 3408, 3388, 3448, 3456).

`kona_writeconfig` sends `HP_BUFFER_CONFIG` (token 1), whose ARM handler pops ten payload words ([arm1_handlers.tsv](../ucode/arm1_handlers.tsv)), in this order: `lvl`; `rsize` if `rgb` is set, else 0; 0 if `rgb` is set, else `isize`; `db`; `st`; `ms`; `zb`; `ss`; `acc`; `aux`. It then writes token 2 (`HP_PACK`) and its one payload word, 0, and calls the set-display-mode resource-manager request (1008) with a 12-byte argument (the drawable serial at ctx+31564, then two zero words). A failed ioctl calls the context's error hook with "__kona_writeconfig: setdisplaymode failed". `kona_readconfig` sends `HP_READBUFFER_CONFIG` (token 4, ten payload words, the same order built from the read-configuration fields) and, when the first word of the argument block is 3, `HP_VIDEO_SOURCE` (token 276, one payload word): 1 for a source selector (the word at +16 of the object at +28 of the argument block) of 4096, 0 for 4097, 2 for 4098, 3 for 4099 and 0 for any other value; the value -3 is stored in ctx+3460 and the payload word in ctx+35964.

**Inferred:** the sixteen-bit `lvl` is the framebuffer level (overlay or normal), `rgb`/`ci` choose colour-index or RGB, `isize`/`rsize` the index and RGB sizes, `db` double buffering, `st` stereo, `zb`/`ss`/`acc`/`aux` the depth, stencil, accumulation and auxiliary buffer depths and `ms` the multisample count, from the field abbreviations; the meaning of the ten words inside the pipe is the ARM handler's (`arm_buffer_config` calls `XferMask`, `init_multisample`, `resolve_banks`, `SetFbState`, [arm1_handlers.tsv](../ucode/arm1_handlers.tsv)). The pipe receives `HP_VIDEO_SOURCE`'s word as 0-3, and `arm_video_source` (0x0c013924) passes it straight to `SetVideoFormat` (0x0c02bdfc), which keeps one format record for 0 and 1, another for 2 and another for 3 and ignores any other value; so the firmware, not the selector's name, decides what the pipe does. **Unknown: no shipped software or published source depends on it:** the host-side names of the selectors 4096-4099 and the unit of each size word beyond the field abbreviations (bits per component is the reading the names give). Routes tried: `kona_readconfig` and its callers, `arm_buffer_config` and `SetVideoFormat` in the firmware, the 6.5.5 installed headers (no video-library or GLX headers ship in that tree). **Established** (`libGL.so` IP27KONA32 6.5.30m, `glXCreateGLXVideoSourceSGIX` at 0x0d8252cc and `__glXCreateVideoSourcePrivate` at 0x0d82561c): the selector is the value the video library returns for control 7 of the source node. The GLX layer loads `libvl.so` on demand, allocates a 24-byte record at +28 of the drawable's argument block (whose first word it sets to 3), and fills it with the node kind (2 or 5) at +0, two words of control 4 at +4 and +8, control 6 at +12 and control 7 at +16, the word `kona_readconfig` maps. So the names of 4096-4099 are the video library's names for that control's values, defined in its header, which this tree does not ship. The full-text search of the published SGI manuals for those values failed twice: the Library search service refused connections on both tries (2026-10-29), so that route stays untried.

### Who calls them: the context's function table

**Established** (`__glKonCreateContext`, `MakeCurrent`, `MakeCurrentRead`, the Kona GL driver context assembly unit, N32 6.5.30m; targets resolved from the GOT page word 0x0d950000 plus the low offset each call adds). `__glKonCreateContext` fills five function pointers in the new context that the shared GL layer calls: +88 `initialDestroyContext` (0x0d948700), +92 `LoseCurrent` (0x0d948530), +96 `MakeCurrent` (0x0d9499e0), +100 `MakeCurrentRead` (0x0d9488c0) and +104 `VisualsMatch` (0x0d949a50).

- `MakeCurrent(ctx)` calls the drawable callbacks at ctx+60 and ctx+64 for the draw and read drawables and tail-calls `MakeCurrentRead(ctx, draw, read)`.
- `MakeCurrentRead` holds the only three calls to the configuration functions in the library (offsets -25008 and -24640 from that page, at source lines 737, 738 and 796). When bits 1 and 2 of the word at ctx+168 are clear (**inferred** to be the first make-current of the context: bit 1 clear first installs the context's dispatch procedures, and this path resets the context and allocates its per-engine memory) it runs `__glSoftResetContext`, `__glkon_unique_per_ge_mem_alloc` and `__glkon_share`, then `kona_writeconfig(ctx)`, then `kona_readconfig(ctx, read)` when the read drawable differs from the draw drawable, then the texture, evaluator, pixel and hyperpipe initialisers. On every later make-current it calls `kona_readconfig(ctx, read)` when the read drawable differs or when the read drawable's first word is 3, the same test `kona_readconfig` applies before it sends `HP_VIDEO_SOURCE`.
- `LoseCurrent`, `initialDestroyContext`, `DestroyContext` and `VisualsMatch` call neither function.

So `BUFFER_CONFIG` and `PACK` go to the pipe once per context, when it is first bound, together with the set-display-mode resource-manager request ioctl; `READBUFFER_CONFIG` goes whenever the read side changes. Rebinding a context to a new draw drawable sends no buffer configuration from the library. **Inferred:** the kernel's context switch restores the pipe's copy, since the configuration packet is part of the per-context state the ARM saves (`arm_buffer_config` keeps it in its shadow, [software/ucode/arm1_firmware.md](../ucode/arm1_firmware.md)).

### The context functions, one entry each

Each entry below is **established** from the Kona GL driver context assembly unit or the Kona GL driver memory assembly unit, `libGLcore` N32 6.5.30m, unless it says otherwise. Process address 0x1000 is the driver state page; its word at 0x1010 holds the current context pointer (`LoseCurrent` clears it, and the memory ioctls pass it to `__glKon_ioctl` as the first argument).

#### `GetBoardInfo`

`GetBoardInfo` at 0x0d947f60 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`): **Established.** Asks the kernel for the board description and fills the context's host-side capability words.
It sends the get-board-information graphics-driver request (ioctl 102) with a 1952-byte reply buffer, then compares the first four bytes of the reply with a fixed board-name string; on a mismatch it reports through the context's error hook (+20) and calls `exit(1)`.
Otherwise it builds the renderer name with `strcat` and `strncat` from bytes and words of the reply (+5, +40, +80, +124, +128, +180), stores a `strdup` of it at ctx+3576 (which `DestroyContext` frees), stores reply word +124 at ctx+31568 and the product of reply words +288 and +292 at ctx+31644, and sets flag bits in ctx+31580: 0x4 and 0x8 always, 0x2 and 0x10 unless one of two environment variables is set, 0x20 when a third is set.
The pipe sees nothing of this; it is host-side capability set-up.

**Established** (the whole body, 0x0d947f60-0x0d9481ac, with the strings read from the library's `.srdata`, `.sdata` and `.data` through the local gp 0x0da90fd8): the renderer name is built in this order, each piece appended to an empty buffer with `strcat` or one-character `strncat`.

1. Start. The first four bytes of the reply must be "KONA" (a four-byte compare at 0xd947fb4); if they are not, the routine prints 'library <-> hardware mismatch, not KONA graphics' through the context's message callback (the pointer at context +20) and calls an imported routine with 1 (not identified, presumably an exit). If the byte at reply +5 is 'I' (73), the whole reply string from byte 0 is copied and the rest of this step is skipped. Otherwise "IR" is appended, then one character: "E" when the word at reply +40 (the first configuration word, the board set) is 2, else the byte at reply +4.
2. "P" when that board-set word is 4 (the path at 0x0d9481fc); every other set skips it. Then "/".
3. One depth-class letter taken from "SMLX" at the word at reply +180, except that set 2 with depth word 3 prints "T" (the 'Extra-Small (Tiny)' of `gfxinfo`) instead of "X". Neither index is range-checked.
4. "/", one digit taken at the word at reply +128 (configuration +88) from the string "01234" that follows "SMLX" in `.sdata` (index 5 reads the terminating zero byte, which appends nothing), "/", the texture size string of the code in the word at reply +80 ("0", "16", "64", "128", "256", "512", "1024"; the table at 0x0da81278 has seven entries and no bounds check), "/", and one digit from the longer string "012345678" in `.data` at the word at reply +124 (configuration +84), which is also stored at ctx+31568. The buffer is then duplicated with `strdup` into ctx+3576.

So the text has the form IR`c`[P]/`d`/`n`/`t`/`m`. The reply's first six bytes are copied by `kona_alloc_bdata` from the string "KONAL" (a six-byte `bcopy` to state +204), so byte 4 is 'L' and byte 5 is zero on an IP27 kernel; that makes the 'I' branch unreachable for this kernel and the first character 'L', **inferred** because the pipe-record parser `kona_extract_nic_info` also writes into the record (its byte stores are at small offsets from a base register that was not traced) and may rewrite bytes 4 and 5. The IP35 libGLcore carries "KONAD" where this one carries "KONAL" ([libraries.md](libraries.md)). Which digit is which is **established** by the ARM firmware: the configuration block is the ARM's block at 0x04067edc, in which `init_jtag` (0x0c01af34-0x0c01af80) stores the engine count at +0x54 and the raster-manager count at +0x58 and names them in its messages "numges" and "numrms" (strings at 0x0c01af84 and 0x0c01afa8), so the digit at reply +128 (configuration +88) is the number of raster managers and the last digit, at reply +124 (configuration +84), the number of engines.

#### `LoseCurrent`

`LoseCurrent` at 0x0d948530 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`): **Established.** Detaches the context from the thread without writing any command word to the pipe.
It returns 0 at once unless ctx+3204 is 7168 and the driver-page word 0x1018 is not 1.
Otherwise it calls `__glLoseCurrentBuffers(ctx, 0)` when bit 2 of ctx+168 is set, clears the current-context word 0x1010, keeps word 0x1018 in ctx+3200, and, when ctx+4988 is non-zero, copies the driver-page words 0x1028-0x1034 into ctx+5052-5064.
It returns 1.
It writes no command word: losing a context sends nothing to the pipe.

#### `DestroyContext`

`DestroyContext` at 0x0d9485f0 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`): **Established.** Frees the context's host memory and sends nothing to the pipe.
It calls `__glkon_FreeTextureState` and `__glKonFreeEvaluators`; when the pointer list at ctx+41252 exists, releases each of its ctx+3776 entries and then the list itself through the context's free hook (+12); releases ctx+31600 the same way, calls the hook at ctx+48, frees the renderer string at ctx+3576, clears the drawable serial ctx+31564 and calls the shared `__glDestroyContext`.
No command word is written.

#### `initialDestroyContext`

`initialDestroyContext` at 0x0d948700 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`, 76 bytes): **Established.** It is the short destroy procedure of a context that never became current.
It calls `__glkon_FreeTextureState` and then `__glDestroyContext`, nothing else.
`__glKonCreateContext` installs it at ctx+88, so it is the destroy procedure of a context that never became current; it sends nothing to the pipe.

#### `MakeCurrent`

`MakeCurrent` at 0x0d9499e0 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`, 108 bytes): **Established.** Resolves the two drawables and hands them to the read-side function.
It calls the draw-drawable callback at ctx+60 and the read-drawable callback at ctx+64 and tail-calls `MakeCurrentRead(ctx, draw, read)` with their results.
It writes no command word itself.

#### `MakeCurrentRead`

`MakeCurrentRead` at 0x0d9488c0 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`): **Established.** It is where the configuration packets leave for the pipe.
On the first make-current of a context (bits 1 and 2 of ctx+168 clear) it calls `__glSoftResetContext`, `__glkon_unique_per_ge_mem_alloc`, `__glkon_share`, then `kona_writeconfig` and, for a separate read drawable, `kona_readconfig`, then the texture, evaluator, pixel and hyperpipe initialisers; on later calls it sends only `kona_readconfig` when the read drawable differs or is a video source.
So the configuration packets reach the pipe once per context and again per read-side change, as the section above says.

#### `VisualsMatch`

`VisualsMatch` at 0x0d949a50 (the Kona GL driver context assembly unit, `IP27KONA32/libGLcore.so`, 136 bytes, no calls): **Established.** Compares a context's visual with a drawable's and touches no hardware.
It returns 1 when the visual id at ctx+3216 equals word 0 of the first mode record, neither mode record has word +84 set, and the two records agree on colour model (byte +4) and on the size word for that model (+40 for RGB, +36 for colour index); it returns 0 when word +72 of the first record is set and the fifth argument is 4, and 0 for any other mismatch.
**Inferred** from the fields compared: the shared layer asks whether a drawable's visual can be used with this context.
It sends nothing to the pipe.

#### `__glkon_unique_per_ge_mem_alloc`

`__glkon_unique_per_ge_mem_alloc` at 0x0d94dae0 (the Kona GL driver memory assembly unit, `IP27KONA32/libGLcore.so`, 68 bytes): **Established.** Reserves the context's pipe-memory block through the kernel's allocator.
It calls `__glkon_mem_alloc(2, 9, 1, 1, 0)`, which packs its arguments into the 12-byte the memory allocate Kona driver request (ioctl 10010) block as byte 0, byte 1, halfword +2, word +4 and word +8, sends it for the current context and returns 0 on success, -1 on failure.
**Inferred** from the name and the one caller (`MakeCurrentRead`, first make-current only): each context reserves one block of pipe memory per geometry engine before its first configuration packet; the kernel side is `kona_mem_alloc` ([kernel.md](../kernel/kernel.md#ioctl-entries)).

#### `__glkon_share`

`__glkon_share` at 0x0d94db30 (the Kona GL driver memory assembly unit, `IP27KONA32/libGLcore.so`, 124 bytes): **Established.** Joins the context to its kernel share group for pipe memory.
It takes ctx, follows the pointer at ctx+0x8aac to a share record and sends the share Kona driver request (ioctl 10015) with that record's 64-bit word +8 as the 8-byte argument.
On success it writes the returned word back to record +8 and returns 0; on failure it returns -1.
**Inferred:** contexts that share display lists and textures pass the same group handle, so the kernel's `kona_share` counts them into one share group, and a zero handle asks for a new group.

## Display and scanout

**Established** (the Kona GL driver context assembly unit).

- **`SwapBuffers`** (taken only when the byte at ctx+3222, `db`, is set): writes token 198 (`HP_FINISH`, [arm1_handlers.tsv](../ucode/arm1_handlers.tsv): one payload word, calls `mgesi_FlushRM`) and the payload word 0 to the command port, then the swap-buffer resource-manager request (1005) with two words, ctx+31564 (the drawable serial) and ctx+31576. The swap itself is then done by the kernel's `KONAschedswapbuf` ([dg.md](../../devices/dg/README.md)). An ioctl failure prints through `perror` and the context's error hook.
- **`ChannelRect(a0, a1, a2, a3, a4)`**: writes `HP_VIDEO_CMD` (token 422, 0x1a6) then the display-generator command number 20, then eight words: `a0`, `a1`, `a2 + a4 - 1`, `a3`, `a4`, 0, 0, 1, then a checksum word that is the sum of the command number and the eight words (the code accumulates it as it stores). Command 20 is `DoDGRqstResize` with 8 payload words ([dg_dispatch.tsv](../ucode/dg_dispatch.tsv)); its first payload word selects the channel's record in the firmware and `dgResize` clips an output size below 2, printing "Illegal x output size %d, clipping to 2" (and "y"). `a0` is the VOC id of the channel. The firmware's use of all eight words is in [dg.md](../../devices/dg/README.md#the-resize-request-8-words): words 1-4 are the source rectangle that the channel's scaler maps onto its output size (x origin, top line, width, height; the caller's `a2 + a4 - 1` turns a bottom-left origin into a top line), words 5 and 6 set two channel flag bits that this caller always clears, and word 7 = 1 keeps the rectangle from becoming the channel's default.
- **`ChannelRectSync(a0, a1)`**: writes `HP_VIDEO_CMD`, command 78 (`DoDGRqstResizeSyncType`, 2 payload words), the words `a0` and `(a1 == 1)`, and the checksum (command + both words).
- **`Error`**: writes token 228 (`HP_SETERROR`) and the error code; the ARM keeps the first GL error ([arm1_firmware.md](../ucode/arm1_firmware.md)).
- **Window size**: two small functions keep the context's copy of the drawable size. The three builds (32-bit old ABI, new 32-bit ABI and 64-bit) differ in code, so the table below reads each one.

| Function | Build | Reading |
|---|---|---|
| `ChangeWindowSize` | usr/gfx/arch/IP27KONA/libGLcore.so (the Origin 350 copy has the same code) | **Established** at 0xd9465bc: stores the new width at context +3700 and the new height at +3704, then calls `__glkonim_Viewport` and after it the scissor routine, each with a zero origin and the new size, so viewport and scissor follow the window. |
| `ChangeWindowSize` | usr/gfx/arch/IP27KONA32/libGLcore.so | **Established** at 0xd948220: makes the same two stores before it builds its frame, calls the viewport routine and then jumps to `__glkonim_Scissor` with the same origin and size. |
| `ChangeWindowSize` | usr/gfx/arch/IP27KONA64/libGLcore.so | **Established** at 0x2daa260: the 64-bit context keeps width and height at +4056 and +4060; the call pair is the same, viewport first (`__glkonim_Viewport`), scissor by a tail jump. |
| `FindWindowSize` | usr/gfx/arch/IP27KONA/libGLcore.so | **Established** at 0xd94663c: asks the drawable for its geometry through the callback at context +28, which fills four words (x, y, width, height); when width or height differs from the stored pair it calls `ChangeWindowSize` with them, otherwise it returns without drawing state changes. |
| `FindWindowSize` | usr/gfx/arch/IP27KONA32/libGLcore.so | **Established** at 0xd948280: the same comparison with four result pointers passed in registers; a changed size goes to `ChangeWindowSize` at 0xd948220. |
| `FindWindowSize` | usr/gfx/arch/IP27KONA64/libGLcore.so | **Established** at 0x2daa2c0: loads the geometry callback from context +56 (a 64-bit pointer), compares against +4056 and +4060 and on a change calls `ChangeWindowSize` at 0x2daa260. |

The display-generator command framing (token, command number, count-checked payload, checksum word) is the one the ARM reads in `arm_video_cmd` ([arm1_firmware.md](../ucode/arm1_firmware.md)); `ChannelRect` is the only emitter of it in `libGLcore`'s context file, and the combination and format files that choose channel layout ([software/ucode/dg.md](../ucode/dg.md)) are not read by this library.

The 383-word format request (`LoadFormat`) is built and sent by the X server module, not by libGLcore: [dg.md](../../devices/dg/README.md#the-loadformat-request-383-words) has its sender, its words and the registers the firmware loads from them. The X module's other display emission is in [the next section](#x-server-module-display-emission).

## X server module: display emission

What `kona.so` (the X server module, `usr/lib/X11/dyDDX/`, IRIX 6.5.30m, stripped, dynamic symbols only) sends to the kernel and to the pipe for the cursor, display modes, clips and buffer swaps. The module was disassembled from `software/xsgi/asm/kona/` with its GOT calls resolved by `retools/tools/kona/resolve_got.py`; static helpers that have no symbol are named by address. Labels as above. Structure names come from the 6.5.5 installed headers the Kona stack header 6 and the Kona stack header 8; [software/xsgi/include/kona_ddx.h](../xsgi/include/kona_ddx.h) has the layouts.

### How the module writes commands

**Established** (`konValidateMode`, `konRecolorCursor`, `konValidateClip` and the cursor helpers below). The module stores through a pointer kept at +8 of its screen private record. A command is a 32-bit store of the command's **first payload word** to that pointer + 32 x token, followed by 32-bit stores of the remaining words to the pointer + 0. Seen: `X_LOADXMAP_DID` 0x132 at +0x2640, `X_LOADCURSOR` 0x130 at +0x2600, `X_LOADCURSORCOLOR` 0x131 at +0x2620, `X_LOADCLIP` 0x12b at +0x2560, `X_BOX` 0x154 and `X_BOX6` 0x155 at +0x2a80 and +0x2aa0, `X_DATA2` to `X_DATA10` at +0x2840 to +0x2960, and `WG_FLUSH_1` 0x1ff at +0x3fe0. **Inferred:** the pointer is the module's mapping of the 16 KB command FIFO (GE.h), and the hardware takes the token from bits 5-13 of the store's offset in the window, so a store at offset 0 is a payload word. That is a second framing beside libGLcore's token-as-data word at offset 0 ([GE.h](../../devices/ge/GE.h)); how the hardware tells a token-as-data word at offset 0 from a payload word there is not stated by any of them. **Inferred:** by count: every token's map entry carries its payload length for routed tokens (bits 6-10) and every ARM handler pops a fixed or self-described number of words ([software/ucode/arm1.md](../ucode/arm1.md)), so after a token the next n words at offset 0 are payload and the word after them is the next token. **Unknown: no shipped software or published source depends on it** beyond that: the host-interface logic that does the counting has no software-visible register for it apart from `HH_GFIFO_LEVEL`; routes tried: the token map, the ARM handlers, libGLcore's and the X module's emitters.

**Established** (`konal.so`, `konad.so`, `konas.so` 6.5.30m, `konCreateWindow` and `konDestroyWindow`): the other three builds of the module use the token-as-data framing instead. `konal.so` `konCreateWindow` stores 307 (`X_LOADXMAP_CONFIG`) and then the flag word, both at FIFO offset 0 (0x147d190-0x147d1a4), and where `kona.so` stores `WG_FLUSH_1` they load a word through the pointer at screen private +16 and discard it. **Established** (`kona_edtinit.o` `kona_alloc_bdata`, `Xsgi` `ddxGetBoardName` 0x1012a250 and `ddxMakeDynamicModulePath` 0x10080080): the IP27 kernel reports the board name `KONAL`, the IP35 kernel `KONAD`, and the X server lower-cases board names and loads `/usr/lib/X11/dyDDX/<name>.so`. **Inferred** (the name passed to the path builder was not traced): IP27 and IP35 servers run `konal.so` and `konad.so`, and the address-encoded framing above is the IP19 host's, the one `setmon`'s `KonCmd` uses for board type 19 ([setup-tools.md](../userland/setup-tools.md#setmon)).

**Established** by comparing each display sender of `konad.so`, `konal.so` and `konas.so` with its `kona.so` build instruction by instruction ([their entries](#display-functions-in-the-konadso-konalso-and-konasso-builds)); the payload words are unchanged and only the framing differs. Where `kona.so` adds 32 x token to the FIFO pointer and stores the first payload word there, these builds store the token number as a word at the pointer + 0 and then every payload word at + 0. Seen: 306 (`X_LOADXMAP_DID`) in `konValidateMode` and `konChangeDIDCmap`, 305 (`X_LOADCURSORCOLOR`) in `konRecolorCursor`, 303 (`X_LOADGAMMA`) three times in `konStore24DCColors`, 307 in `konDestroyWindow` as in `konCreateWindow`, 299, 298 and 297 (`X_LOADCLIP`, `X_LOADPOS`, `X_LOADGC`) in `kon_drawDid`, and 345 (`X_SEGMENT`) in `konSegmentSS`. None of the three builds forms the `WG_FLUSH_1` address (no `addiu` of 0x3fe0 in any of them, eleven in `kona.so`). **Inferred:** both framings reach the same firmware handlers, since the token map is the same; the modules differ in how the host writes, not in what the display generator receives.

### Ioctls

| Number | Header name | Module function | Argument (fields in order; source in the module) |
|---|---|---|---|
| 10005 | the select cursor Kona driver request | `konDisplayCursor`, `konCursorOn` | 16 bytes: mode, address, hot x, hot y |
| 10009 | the set channel rectangle Kona driver request | `konaSetStereoMode` | 18-byte `kona_set_channel_rect_args` from a static block |
| 1011 | the validate-clip resource-manager request | `konValidateClip` | 56-byte `RRM_ValidateClip` |
| 1012 | the validate-swap-buffer resource-manager request | `konValidateSwapbuf` | rnid, clipid, swapbufid |
| 1017 | the load-display-mode resource-manager request | `konLoadDisplayMode`, called by `konValidateMode` | rnid, clipid, wid, hwd_mode, hwi_mode |
| 1020 | the manager swap-buffer resource-manager request | `rrmMGRSwapBuf`, called by `konInitiateBufferSwap` | rnid, swapbufid, clipid, hwd_mode, hwi_mode |

The file descriptor is word +100 of the record at ScreenRec +116 in every caller. A failed call prints the module's message and `perror`; none retries.

**Window private (`rrmWindowPrivateIndex`), established** from the fields these calls take: +12 rendering-node id, +20 display id (passed as `wid` to VALIDATECLIP and LOADDISPLAYMODE and as `swapbufid` to VALIDATESWAPBUF and MGR_SWAPBUF), +32 hardware-independent mode (`hwi_mode`), +36 hardware-dependent mode (`hwd_mode`, written by `konValidateMode`). The record is 76 bytes (`allocRRMpriv` allocates and clears 76).

#### `allocRRMpriv`

`allocRRMpriv` at 0x49af60 in `kona.so` (**established**) creates a window's rrm private: it allocates 76 bytes, clears them and stores the record in the window's private slot (`rrmWindowPrivateIndex`).
It then calls the descriptor's hook +80, `konInitWindowType`, with the window, and returns the record, or 0 when the allocation fails.
`rrmDoubleBufferWindow` and the two bind functions call it.

### Cursor: the select cursor Kona driver request (10005), `X_LOADCURSOR`, `X_LOADCURSORCOLOR`

`konRecolorCursor` at 0x53be80 in `kona.so` (**established**) reloads a cursor's colours on the pipe: it sends `X_LOADCURSORCOLOR` (store offset +0x2620) addressed to the cursor's slot, or to 9884 for the crosshair.

**Established** (`konDisplayCursor` 0x441980, `konCursorOn`, `konRecolorCursor` 0x53be80, the static helpers 0x4a6c10, 0x531f50 and 0x526140). The cursor's per-screen private word (`devPriv[screen]`, CursorRec +20) is either 1, the crosshair, or a pointer to a cursor record.

- **Crosshair.** `konDisplayCursor` sets the screen's current slot (screen private +112) to -1 and selects mode 1 (`KONA_CURSOR_XHAIR`) with address 9884 and hot spot 32, 32. `konRecolorCursor` sends `X_LOADCURSORCOLOR` with address 9884 and the same colour word four times.
- **Glyph.** The record's +16 points to a cache entry whose first word is a slot number, allocated on first use. If the record's halfword +12 is zero the image is not on the pipe yet: the module builds it (helper 0x4a6c10, or 0x456fe0 when byte +6 of the record at +4 is set), builds the colours (0x531f50), sets +12 to 1 and sends `X_LOADCURSOR` (0x526140). It then selects mode 2 (`KONA_CURSOR_GLYPH`) with address slot x 260 and hot spot (`CursorBits` +12, +14). If the slot is already the current one it returns without the ioctl. The four argument words are also kept at screen private +76 to +88.
- **`konCursorOn(on, screen)`** re-sends the kept four words when `on` is set; otherwise it sends mode 0 (`KONA_CURSOR_OFF`) and leaves the other three words unset. `konCloseScreen` calls it with 0.

**Established** (`X_LOADCURSOR`, helper 0x526140): first word slot x 260, then 260 words from the cursor record's buffer (its +8), then `WG_FLUSH_1` with 0xdeadbeef. **Established** (`X_LOADCURSORCOLOR`, `konRecolorCursor`): first word the same address (slot x 260, or 9884 for the crosshair), then four colour words, buffer words 256-259.

**Established** (buffer layout, helpers 0x4a6c10 and 0x531f50; `CursorBits` is source +0, mask +4, width +8, height +10, x hot +12, y hot +14, the layout with no `emptyMask` word). Words 0-255 are 64 rows of 16 bytes: the source bits at bytes 0-7 and the mask bits at bytes 8-15 of each row, copied 16 bits at a time from the X bitmaps, with width and height clipped to 64 and the last unit of a narrow row masked to the width. Words 256-259: 256 a third colour (the record at +4's three halfwords when its byte +6 is set, else the foreground), 257 the foreground, 258 the background, 259 not written by these helpers. A colour word is 10:10:10, red in bits 20-29, green 10-19, blue 0-9, the top ten bits of each 16-bit X colour.

**Established** (ARM side, `arm_x_loadcursor` 0x0c03d9c4 and `arm_x_loadcursorcolor` 0x0c03daa0 in `arm1.u`). Both peek the first word (port + 0x40), write it, or for the colour load the word + 0x100, to display-bus register 0x118 through `mgesi_VCbusWrite`, select the video bus (port 0x434), name register 0x119, and start the pass-through counter with 0x4000104 (cursor) or 0x4000004 (colour). **Inferred:** the counter's n - 1 encoding gives 261 and 5 words, the first word plus 260 and plus 4, so the count includes the peeked word. **Established** since ([dg.md](../../devices/dg/README.md#cursor-memory)): 0x118 is the address register and 0x119 the data port of the XMAP's indirect memories, the cursor memory holds one 260-word block per slot with the image at +0 and the colours at +0x100, and the writes to 0x11e and 0x11f that follow are the fast-list end and flush writes ([dg.md](../../devices/dg/README.md#xmap-registers-memories-and-the-fast-list)).

**Kernel side** of 10005 ([dg.md](../../devices/dg/README.md#cursor)): the mode goes to cursor register 0x103 and the address to 0x101 at the next video interrupt, so the address in 0x101 is the same slot x 260 the cursor load used. **Established** ([dg.md](../../devices/dg/README.md#cursor-memory)): the module keeps 39 slots (`kon_initCursorCaches`), and 9884 is 39 x 260 - 256, so the crosshair's colour words at 9884 + 0x100 are the four words just past the last slot. Word 259 is the colour of pixel value 0 (no source, no mask), which no sender sets; **inferred** transparent and never shown.

### Display modes: `X_LOADXMAP_DID` and the load-display-mode resource-manager request (1017)

`konValidateMode` at 0x4601e0 in `kona.so` (**established**) is descriptor hook +40, which loads a display id's mode: it builds the hwd word, sends `X_LOADXMAP_DID` at +0x2640 and ends by calling `konLoadDisplayMode`.

**Established** (`konValidateMode` 0x4601e0; the module's own debug strings name the cases). For a window with a display id (rrm private +20 not negative) it builds `hwd_mode` from the window's visual flags (word +20 of the `nfbWindowPrivateIndex` record) and the `hwi_mode` word:

| Visual | Bits set in `hwd_mode` |
|---|---|
| main buffer, flag 0x2000 and 0x4000 ("RGB10") | none |
| main buffer, 0x2000 without 0x4000 ("RGB"; "DC RGB" with 0x8000) | 0x4; 0x10 for DC RGB |
| main buffer without 0x2000 ("ColorIndex/Luminance") | 0x8 |
| main buffer, flag 0x80000 ("Stereo") | 0x2 |
| main buffer, `hwi_mode` & 6 == 6 ("starting in backbuffer") | 0x1 |
| overlay or underlay (visual flag bit 0 clear, flag 0x6 nonzero) | (u << 1) & 0xe, u = 4 for underlay plus 2, plus 1 when `hwi_mode` has 0x2 and 0x40000 ("doublebuffered, starting in backbuffer"); 0x1 without visual flag 0x2000 ("over/under RGB"); 0x10 with visual flag 0x40000 ("over/under Opaque") |

It stores the result at rrm private +36 and sends `X_LOADXMAP_DID` with two words: the display id, then `(cmap << 7) & 0xffff80 | ((size - 1) & 0xf) << 3 | lum << 2 | grey << 1`. `cmap` is the colormap's entry in the module's colormap table, `size` the visual's plane count (VisualRec +10, capped at 12 when screen private +32 is set), `lum` and `grey` are visual flags 0x20000 and 0x10000; the debug string reads "did, cmap, size, lum, grey". The four values are cached in the 16-byte-per-id table that screen private +48 points to. `arm_x_loadxmap_did` writes the first word to display-bus register 0x118 and the second to 0x11c through `mgesi_VCbusWrite`; **inferred** an index and data pair into the XMAP's per-display-id table.

It then calls `konLoadDisplayMode(screen, rnid, clipid, did, hwd_mode, hwi_mode)`, which issues 1017 with those five words and on success caches {hwi_mode, hwd_mode} in the 8-byte-per-id table that screen private +52 points to ([its entry](#konloaddisplaymode)). **Established** (kernel, `RRM_LoadDisplayMode` in `rrm.o`): the display id must be below the board's count (gfx_data +88) or the call returns EINVAL; it calls the board's set-display-mode entry, which is slot +0xa0 of the driver's function table in `kona_edtinit.o`, `KONAsetdisplaymode`, with (did, hwd_mode); stores `hwi_mode` in the pane (+32) and in the board's per-id table (gfx_data +96); and sets pane +18 to 1 when `hwi_mode` bit 2 is set. `KONAsetdisplaymode` keeps the low byte at pipe state +4360 + did and sends `DISPMODE` (0x1e6) with 0, did, `hwd_mode`. So the third `DISPMODE` word is this X-built `hwd_mode`. **Established** (`arm_dispmode` 0x0c013dd4): the firmware passes the byte on unchanged, as a display-bus write of `hwd_mode` to address = display id through the engine's `mgesi_VCbusWrite`, after recording the display id in the swap-group slots that match the first word ([dg.md](../../devices/dg/README.md#the-firmwares-display-bus-window)); at a swap the kernel rewrites bits 0 and 1 from the buffer's display bank ([dg.md](../../devices/dg/README.md#buffer-swap-and-retrace-wait)), which fits bit 0 as "show the back buffer". **Unknown: no shipped software or published source depends on it:** what the display hardware does with bits 2-4 beyond the module's own names (RGB, colour index, DC RGB). Routes tried: the module, the kernel, the firmware (which forwards the byte untouched), the diagnostic's XMAP register list, which has no per-display-id mode table, and `setmon` and `ircombine`, neither of which issues the load-display-mode resource-manager request, the manager swap-buffer resource-manager request or `DISPMODE`.

### Clips: the validate-clip resource-manager request (1011)

`konValidateClip` at 0x46d3f0 in `kona.so` (**established**) is descriptor hook +28: it sends the window's clip to the kernel as the validate-clip resource-manager request (1011) and then marks the clip resource valid with `rrmSetResourceMask` and bit 0x2.

**Established** (`konValidateClip` 0x46d3f0). Before the ioctl the module repaints the window's display-id planes on the pipe: `X_LOADCLIP` with 1, 0, 0, screen width, screen height (a full-screen clip), a GC load, then the window's clip boxes, six at a time as `X_BOX6` and the rest through `X_DATA2`-`X_DATA10` and a closing `X_BOX`, each box as four halfwords x1, y1 + offset, x2 - 1, y2 + offset - 1 (offset: halfword +226 of the screen's device record). The ioctl argument:

| Word | Value |
|---|---|
| rnid, clipid | rrm private +12; the window's XID |
| xorg, yorg | window x; screen height - window y - window height (a bottom-left origin) |
| xsize, ysize | width and height in the low halves; a margin in the high halves (below) |
| numpieces, piecelist | always 1, pointing at one piece equal to {xorg, yorg, width, height} |
| wid | rrm private +20 |
| obscured | 0 when the clip is one rectangle equal to the window, or when rrm screen flag 0x2 is set (then the piece is the whole screen at 0, 0); 1 otherwise |
| widcheck, changed | not written: stack contents |
| hwi_mode | rrm private +32 |
| fboffset | halfword +30 of the GLX window private, or 0 |

The margin c, **established** from the arithmetic: c = trunc(sqrt(s^2 - w*h/4 + 2^21) - s - 1) with s = (w + h)/4, which makes (w + 2c)(h + 2c) just under 2^23 pixels; if w + 2c exceeds 3840 then c_x = (3840 - w)/2 and c_y = (2184 - h)/2, and the same with x and y exchanged when h + 2c exceeds 3840. The kernel's `VALIDATE_CLIP` packet carries the clip record's xsize and ysize words as they are ([kona_kern.h](../kernel/include/kona_kern.h)); **inferred** from the 6.5.5 `struct pane`, whose clip record is this ioctl structure, that the pipe receives the margin. **Inferred:** a guard band around the window for the geometry engines' clipping, sized so the padded area stays within 8M pixels and 3840 x 2184; its use in the pipe is **unknown**.

### Swap buffers: the validate-swap-buffer resource-manager request (1012) and the manager swap-buffer resource-manager request (1020)

**Established.** `konValidateSwapbuf` sends rnid (rrm private +12), the window's XID and the display id (+20), sets word +20 of the module's window private to 1 and bumps its byte +24, for the window and its descendants that share the same buffer. Kernel: `RRM_ValidateSwapBuf` calls `validate_pane_swapbuf`, which records the swap buffer id at pane +20, sets flag 0x8 in pane +12 and wakes a waiter when flag 0x8 of +14 was set; it sends nothing to the pipe.

`konInitiateBufferSwap` calls `rrmMGRSwapBuf(window)` for each window in its list; that sends rnid, display id, XID, `hwd_mode` (+36) and `hwi_mode` (+32), then calls `UpdateDIDMode`. Kernel: `RRM_MGR_SwapBuf` stores `hwi_mode` in the per-id table, calls slot +0xa8, `KONAschedmgrswapbuf`, with (clipid, swapbufid, hwi_mode, hwd_mode), and sets pane +18 from `hwi_mode` bit 2. `KONAschedmgrswapbuf` sends `DISPMODE` with clipid, swapbufid and `hwd_mode`, then `RETRACE_SEQID` with a new sequence number, recording the clip id and the sequence number per swap buffer at pipe state +3976 and +3592 ([dg.md](../../devices/dg/README.md)).

#### `konInitiateBufferSwap`

`konInitiateBufferSwap` at 0x4b0000 in `kona.so` (**established**) starts a buffer swap for a list of windows: it flips each window's mode words, finds it a display id and sends the manager swap.
It takes (window list, count).
For each window that holds a validated swap buffer (rrm private byte +4 bit 0x8) it first invalidates that resource through hook +32 with (window, 8, 1).
For a main-plane window (visual flag bit 0) it sets hwi bit 0x4 and hwd bit 0x1 when the double-buffer private's byte +2 is not 1, and clears both when it is: the displayed buffer flips.
For an overlay or underlay window (visual flags 0x6) it puts code 2, plus 1 when it sets hwi bit 0x4, into hwd bits 1-3; any other window prints "TRYing to swap bogus did".
An unrealized window (word +124 bit 11 clear) has its swap reported done at once through `dbcDelayedSwapBufferDone`.
Otherwise it tries `ShareSwappingID`; a window that joins a swapping id is also reported done at once and sends nothing.
Else it takes an id from `FindFreeID`, or from `StealID` when none is free.
It records the new hwd word in the id's 8-byte entry of the table that the module's screen private +52 points to, sets bit 0x10 (swap pending) on the id's entry and adds the window to a list.
Last, walking that list backwards, it calls `rrmMGRSwapBuf` for each window; on a failure it reports the swap done and clears bit 0x10 again.
It returns 0.

#### `rrmMGRSwapBuf`

`rrmMGRSwapBuf` at 0x540ac0 in `kona.so` (**established**) sends one window's swap to the kernel as the manager swap-buffer resource-manager request (1020).
The five words are the rendering-node id (+12), the display id (+20), the window id, the hwd word (+36) and the hwi word (+32).
On success it calls `UpdateDIDMode` with (window, 0) and returns 0; a failed ioctl prints through `perror` and returns 1.

#### `UpdateDIDMode`

`UpdateDIDMode` at 0x57a0e0 in `kona.so` (**established**) refreshes the mode an id's table entry records from the window that holds it, so a later `compareModes` sees the post-swap mode.
It takes (window, flip) and does nothing for a window without a display id.
It writes the window's hwi word (+32) to entry +8, with bit 0x4 inverted when flip is non-zero, and the window's hwd word (+36) to entry +12.
`rrmMGRSwapBuf` calls it with 0 after every manager swap; `rrmInvalidate` calls it with 1 when the kernel reports the window showing the other buffer.

### Stereo: the set channel rectangle Kona driver request (10009)

`konaSetStereoMode` at 0x4a2c10 in `kona.so` (**established**) tells the kernel's cursor-channel table about a stereo switch and then switches the frame-buffer layer.
It takes (screen, a, b, mode).
When `mode` is 1 and a small-data flag of the module is set, it writes 531 to the halfword at +6 (`y1`) of an 18-byte block in `.bss` (0x591ba0) and passes the block to 10009.
On failure it stores -7905 in a module error word and logs "Failed : update kernel with channel cursorinfo"; it then calls `nfbSetStereoMode`.
The block is not left zero: the static function at 0x4fed90 fills all of it and sends 10009 itself, from thirteen call sites.
That function writes the bytes at +0, +1 and +2 (**inferred** channel, valid and priority, the field order of `kona_set_channel_rect_args`) and the halfwords from +4 on from its arguments and the channel's video-control record.
So this call re-sends the rectangle last set up, with only `y1` replaced (**established** from the stores).
**Inferred:** the stereo switch moves the top edge of the cursor rectangle to line 531 for that channel; the module gives no reason for the value.
Kernel side: `kona_set_channel_rect` ([dg.md](../../devices/dg/README.md#choosing-the-cursor-channel)).

#### `konLoadDisplayMode`

`konLoadDisplayMode` at 0x522a90 in `kona.so` (**established**) sends one display id's mode to the kernel as the load-display-mode resource-manager request (1017).
It takes (screen, rnid, clipid, did, hwd_mode, hwi_mode) and passes those five words.
On success it stores the two mode words in the id's 8-byte entry of the table that the module's screen private +52 points to.
A failure prints "the load-display-mode resource-manager request failed" with the node id, the display id and errno, then `perror`.

#### `nfbSetStereoMode`

`nfbSetStereoMode` at 0x4529c0 in `kona.so` (**established**) switches a screen into or out of stereo by swapping screen procedures and rrm hooks for stereo versions.
It takes (screen, a, b, mode); the current mode is word +220 of the pipe record.
The same mode again returns 0; a change between two non-zero modes returns 8, the X match error.
Entering stereo, it saves screen procedures +216, +220 and +224 and rrm hooks +28, +36 and +76 in the pipe record (+228 to +248).
It installs replacements: 0x4d4b40 at screen +216, 0x4be980 at +220 and 0x568130 at +224.
The hooks become 0x506130 for the clip validation (+28), 0x542740 for the swap-buffer validation (+36) and 0x4afce0 at +76.
It stores b at pipe record halfword +226, the eye offset the stereo wrappers add ([wrappers](#stereo-drawing-wrappers-konstereo)), and a, clamped so that a + b fits the screen height, at +224.
It then repaints through the screen procedure at +340 and, by the calls it makes, creates a server-owned colormap and window, maps it and confines the pointer (`ConfineCursorToWindow`), resizing the root window's extents (**inferred** from the call sequence; the arguments were not traced).
The leave path frees those resources.

### Display-id window kinds

Moved from the open-questions file (display back-end question 2). Correction found later: the sentence below that the binaries define no "bits 7:2" field holds for the id table entry and the mode byte only. `konDrawDID` (`kona.so` 0x53e7b0, [kona-ddx.md](../xsgi/kona-ddx.md)) hands `kon_drawDid` the id already shifted, `id << 2` with plane mask 0xfc for ids below 63 and `(id - 64) << 8` with mask 0x1f00 for 63 to 95, so bits 7:2 and bits 12:8 are fields of that argument (established).

*Established: no, the set is larger, and "bits 7:2" is not a field the software defines.* Two separate per-id words exist.

- The id table entry (XMAP register 0x118 = id, data to 0x11c), built by `konValidateMode` (0x4601e0) and `konChangeDIDCmap` (0x44f1d0): bits 23:7 colour-map base (the colour map's slot number << 7), bits 6:3 number of index planes minus one (a visual's plane count, capped at 12 when a per-screen flag is set, then decremented; 0 stays 0), bit 2 "lum" (visual flag 0x20000), bit 1 "grey" (0x10000), bit 0 unused. The firmware's textport initialisation writes id 0 = 0x80050 (base 0x1000, field 6:3 = 10, bits 2:0 clear; the textport colours are loaded at 0x1000 + index, index below 0x1000).
- The mode byte (`DISPMODE`, written to bus address = id): bit 0 back buffer shown (the kernel rewrites bits 0-1 at each swap), bit 1 stereo (main planes), bit 2 non-colour-index RGB below 24 bits ("RGB"), bit 3 colour-index or luminance, bit 4 "DC RGB" (direct colour), and for overlays bits 3:1 hold the code 2, or 3 when double-buffered and starting in the back buffer (plus 4 for an underlay) with bit 0 set for non-RGB overlays and bit 4 set for opaque ones. 30-bit RGB10 main windows send no bits. Established from the case split in `konValidateMode`; what the XMAP does with bits 2-4 stays unknown ([opengl.md](opengl.md#display-modes-x_loadxmap_did-and-the-load-display-mode-resource-manager-request-1017)).

The complete set the X server can create, from every visual set in `konavis.so` (small, medium and large, all three pixel-depth revisions): main-plane colour index at 8 and 12 planes (also 15- and 16-plane luminance/grey), direct colour and true colour at 8, 12, 24 and 30 planes, stereo variants, the popup (2-plane colour index, fixed id 63), overlay colour index at 2, 4 and 8 planes in transparent and opaque forms (ids 64 and 65), and a 15-bit RGB overlay in both forms (ids 66 and 67); overlay window ids run 64-95 and main-plane ids 0-62 (`konInitDIDState`). No shipped visual is an underlay although the code handles one. Id values therefore fit in 7 bits.

*Where the id sits in the pixel: established, two layouts.* `kon_drawDid` (0x4715c0) builds the 64-bit foreground that paints an id into the framebuffer from the id split as low nibble and the rest. With the larger ("imp9") pixel layout the nibble goes to bits 6:3 of the high word and the remaining 12 bits to bits 19:8 of the high word, plane mask likewise; with the "imp8"/"imp8c" layout it goes to bits 12:9 and 25:14 of the low word. The layout follows the board's pixel depth (the visual set chosen at screen start). This split (nibble plus a 12-bit part at bit 4 up) may be what an earlier reading's "bits 15:4" shows.
*Where a CI8 index sits: unknown.* The X server hands the 8-bit pixel value to the pipe as the plain foreground (masked to the depth); nothing translates it, and the placement inside the framebuffer pixel is done by the raster hardware. What is known is that the id table's index-width field is 7 for an 8-plane visual and 11 for a 12-plane one. Note that a 24-plane RGB visual also gives 7 (23 and 15 = 7) unless the per-screen cap applies, so the width field alone does not tell colour index from RGB; the mode byte does.

### Display functions: cursor records, display ids, colour maps, gamma

**Established** from `kona.so` 6.5.30m by address; screen private means the record at `konScreenPrivateIndex`, as above.

#### `konRealizeCursor`

`konRealizeCursor` at 0x54ad40 in `kona.so` (**established**) builds the host copy of a cursor image for the pipe's cursor memory and sends nothing yet.
It takes (screen, cursor).
If any screen's private word +92 already holds this cursor (the crosshair the module keeps), it returns true without allocating.
Otherwise it allocates a 32-byte cursor record and stores it as the cursor's private word for this screen (cursor record +20).
It clears the record's +0 and +4, allocates and clears a 260-word image buffer at +8 and builds the image with the helper at 0x456fe0.
It marks the image as not yet on the pipe (halfword +12 = 0) with no cache slot (+16 = 0).
The image reaches the pipe later, through `konDisplayCursor` ([cursor](#cursor-the-select-cursor-kona-driver-request-10005-x_loadcursor-x_loadcursorcolor)).

#### `konUnrealizeCursor`

`konUnrealizeCursor` at 0x55f270 in `kona.so` (**established**) frees a cursor's host records and gives its pipe cursor slot back, without any pipe command.
It takes (screen, cursor) and returns 1.
A private word of 1 (the crosshair) is just cleared.
Otherwise, when the record has a cache entry (record +16), it calls the slot release helper at 0x4c20e0 with that entry and the screen.
The helper clears the owning record's +16 and halfword +12 and the entry's owner word (+12), and sets the screen's current slot (private +112) to -1 when it was this slot.
It then moves the entry to the head of the circular slot list whose head pointer is screen private +124.
Last, the function frees the records at +4 and +8 and the record itself, and clears the private word.

#### `kon_freeCursorCaches`

`kon_freeCursorCaches` at 0x567700 takes (screen private). Frees the cursor-cache table at +116 when there is one. `kon_initCursorCaches` builds it with the 39 slots ([dg.md](../../devices/dg/README.md#cursor-memory)).

#### `konReloadAllGammas`

`konReloadAllGammas` at 0x464060 takes (screen). Calls 0x4520a0 with the screen's video-control private record (`vcScreenPrivateIndex`), which walks every gamma map (count at +32, 16-byte entries at +36, the shadow pointer at entry +12; a missing shadow prints "NULL gamma shadow (%d)") and loads red, green and blue from the shadow through 0x477dc0: three 4096-entry tables at shadow +4, +8196 and +16388. 0x477dc0 picks the starting address from the shadow's kind word: kind 0 address 0, kind 1 (map << 14) + 0x40000, kind 2 0xf000 through the 0xdeadfeed form at 0x498ff0; it advances the address by 4096 per component. Both `X_LOADGAMMA` forms are in [dg.md](../../devices/dg/README.md#colour-maps-and-gamma-tables). Afterwards, when all three components were loaded, it marks the shadow as an identity ramp (word +24580) if the blue table is 0 to 4095 in order, and when that mark changed it re-sends display command 15 (`DoDGRqstChannelGammaMap`) for every channel that uses this map, through the control sender at 0x548db0 with attribute 10.

#### `konInitDIDState`

`konInitDIDState` at 0x457600 in `kona.so` (**established**) sets the kind of every display id in the rrm screen private's table.
The server's `rrmInit` calls it through descriptor word +84, after clearing the table ([descriptor](#the-rrm-descriptor-and-its-hooks)).
It takes (screen) and works on the 36-byte entries from rrm screen private +152.
Ids 0-62 are main-plane ids (halfword +18 = 0, +8 = 0, +12 = 8); id 63 is one of kind 3 (+8 = 0x3c00, +12 = 5); ids 64-95 are overlay ids (kind 1); no id gets kind 2.
Main ids at or above the limit in `KON_X_LIMIT_MAIN_DID` (accepted 14-63, default 63) get kind 0xffff (unusable).
The overlay limit `KON_X_LIMIT_OVERLAY_DID` (accepted 5-32, default 32) is added to running totals in a way that leaves ids 63-95 usable for every accepted value, so as coded it removes no overlay id.
A rejected value prints "punting, bogus DID limit" and keeps the default.
It checks that the total, 96, equals the count at rrm private +0 ("numids mismatch"); the module's descriptor sets that count to 96.
**Inferred:** kind 0 main, 1 overlay, 3 a reserved id, from the counts and the variable names.
Words +8 and +12 are the hardware-independent and hardware-dependent mode words of the windows that hold the id, **established** from the setter that records them, [below](#setdidmode).

#### `konChangeDIDCmap`

`konChangeDIDCmap` at 0x44f1d0 in `kona.so` (**established**) reloads one display id's colour-map field in the XMAP when a window's colormap changes.
It takes (window, colormap) and acts only for a window with a display id (rrm private +20 not negative) and a colormap.
It re-sends `X_LOADXMAP_DID` exactly as `konValidateMode` does ([display modes](#display-modes-x_loadxmap_did-and-the-load-display-mode-resource-manager-request-1017)).
The words are the display id, then the colormap's table entry << 7, the plane count - 1 (capped at 12 when screen private +32 is set) << 3, and the luminance and grey flags.
It takes those two flags only for colour-index visuals (visual flag bit 0 set, 0x2000 clear), and first caches {entry, size, grey, lum} in the 16-byte-per-id table that screen private +48 points to.
Its debug print reads "did = %d cmap base = 0x%x, size = %d".

#### `kon_drawDid`

`kon_drawDid` at 0x4715c0 in `kona.so` (**established**) loads the clip, position and graphics-context state for painting display-id planes, and draws nothing itself.
It takes (id, plane mask, screen, command pointer).
It sends `X_LOADCLIP` with a full-screen clip (enable word 1, a zero origin, the screen width and height).
Then `X_LOADPOS` (0x12a) with a zero origin and the screen size, and `X_LOADGC` with 13 words in the order of [the drawing grammar](#x-server-module-drawing-commands).
Those words are: foreground = the id placed in the display-id bit field, write mask from the plane mask, then fixed words (cfg low bits 0x8, op low nibble 1, addr low six bits 0, bl bits 1-4 = 3, ifmt 0, colfmt 1, pixfmt 1).
Two placements exist, chosen by bit 2 of screen private +148.
In one the id's low four bits go to bit 3 and its next twelve to bit 8 of `fg_h`, with mask `wmask0`.
In the other they go to bit 9 and to bit 14 of `fg_l`, with mask `wmask1`.
**Inferred:** the two layouts are the display-id field's position in two pixel depths; the callers then send the boxes.

#### `konTempBlankAllChannels`

`konTempBlankAllChannels` at 0x4657a0 in `kona.so` (**established**) blanks or unblanks every video channel with one display-generator request.
It takes (screen, value) and sends display command 60 (`DoDGRqstTempBlankAllChannels`) with the one word `value`, through the sender at 0x5341a0.
The firmware blanks or unblanks every channel ([dg.md](../../devices/dg/README.md#display-requests)).

#### `konInitializeColormap`

`konInitializeColormap` at 0x535530 in `kona.so` (**established**) sets up a new colormap: its hardware private block and its first entries.
It clears the colormap's private word (+68) and creates the hardware block (`nfbCreateHWColormap`).
For a static visual class (even class number) it fills the entries with `rrmInitializeGLStaticColormap` on a 32-bit-deep screen.
Otherwise it uses the sample server's routine, `cfbInitializeColormap`.
For a pseudo-colour colormap whose visual has flags 0x2020001 set, on a screen whose private +36 is set, it then fills all 256 entries from three 256-byte tables in the module's data (red 0x5869e0, green 0x586ae0, blue 0x586be0, each byte shifted to 16 bits) and marks them allocated.
The first eight are black, red, green, yellow, blue, magenta, cyan, white; **inferred** the IRIS default colour map, from that order.
For an overlay or underlay visual (flag 0x8, or 0x2 without 0x40000) it reserves entry 0, **inferred** as the transparent pixel, and fails when the colormap's flag word (+16) has bit 1 set, **inferred** fully allocated.

#### `konClearHWColormap`

`konClearHWColormap` at 0x4a25a0 in `kona.so` (**established**) is an empty function: it stores its one argument to the stack and returns, so the pipe's colour map is never cleared from here.

#### `konSetColor`

`konSetColor` at 0x4dac10: prints "konSetColor *** should NOT be called" through `ErrorF` and returns; colour stores go through `konStoreColors` and its relatives.

#### `konUninstallColormap`

`konUninstallColormap` at 0x508660 in `kona.so` (**established**) leaves true-colour (RGB) colormaps installed and hands every other colormap to `nfbUninstallColormap`.
It takes (colormap) and looks up the visual's flags in the visual table of the pipe's record (screen record +116: 20-byte entries at +88, indexed from the base id at +80).
With flag 0x2000 (RGB) it returns at once.

#### `konInstallFakeColormap`

`konInstallFakeColormap` at 0x4c3620 in `kona.so` (**established**) is the install hook of the software-only colour-map groups and does nothing: it saves its argument and returns.

#### `konStoreFakeColors`

`konStoreFakeColors` at 0x460c60 in `kona.so` (**established**) is the matching store hook of those groups: it spills its three arguments to its frame and returns without touching the pipe.

#### `konQueryMaxSwapBarrier`

`konQueryMaxSwapBarrier` at 0x44f1b0 in `kona.so` (**established**) answers the swap-barrier query with a constant 1, so the module reports one swap barrier.

### Frame-buffer layer: hardware colour maps, display-id state, cursor and blanking

**Established** from `kona.so` 6.5.30m by address unless a line says otherwise. `konad.so`, `konal.so` and `konas.so` carry a function of the same name and size for every entry here (addresses in `evidence/inventory/functions.tsv`). **Established** by comparing the instruction words of each against `kona.so`: `nfbInitVisDIDs` and `nfbListInstalledHWColormaps` are byte-identical; every other function differs only in global-pointer setup, global-pointer-relative loads and address-building immediates (the offsets of the module's own global table and symbol pages), plus the distance of one relative call in `SetReservedID`. So the readings below hold for all four modules. Pointers are 32-bit (n32). Screen private means the record at `rrmScreenPrivateIndex` unless stated; the "pipe's record" `R` is the word at ScreenRec +116.

**The two tables behind the colour-map functions** (established from `nfbHWColormapScreenInit` and its readers). `R` holds, besides the visual table (base id at +80, 20-byte entries at +88, whose word +4 is a group number and whose word +0 is what `cmapDID` returns for a visual with no colour map of its own):

| `R` offset | Content |
|---|---|
| +112, +116 | count and pointer of the **slot table**: 28-byte entries, one per hardware colour map |
| +120, +124 | count and pointer of the **group table**: 24-byte entries, one per set of interchangeable slots |

A slot entry holds: +0 the colour map now installed there (0 for none), +4 and +8 count and list of other slots that share its storage (**inferred** from how the install and uninstall functions use them), +16 the display id `cmapDID` returns (**established**: the best-id search and the steal function hand the value to a window as its id; **inferred** to be what the colour-map field of `X_LOADXMAP_DID` is built from, [display modes](#display-modes-x_loadxmap_did-and-the-load-display-mode-resource-manager-request-1017)), +20 a flag that the slot's number is reserved with the display-id allocator, +24 a word no function here reads (**unknown**: no shipped software or published source depends on it, beyond its values 0x2810, 0x2a00, 0x2b00, 0, 0, 0x2c00-0x3100 in steps of 0x100, 0x3800, 0x4800, 0x5800, 0, 0, 0x20000, 0; routes: every reader of the table in this module). A group entry holds: +0 the number of slots, +4 a pointer to that many 8-byte records {slot number, index of the next record} forming a ring, +8 the index of the most recently installed record, +12 the install hook (called by `nfbInstallHWColormap`), +16 a hook that this module's colour-map functions never call (**inferred** the store hook, because the fake groups pair `konInstallFakeColormap` with `konStoreFakeColors`) and +20 a lost-map hook.

The module's own tables, **established** from the data at 0x586088 (groups) and 0x586198 (slots), counts at 0x586190 (`konNumCmapGroups` = 11) and 0x586390 (`konNumHWCmaps` = 18): slots 0-4 are single-slot groups 0-4 with numbers 0x3f-0x43; slots 5-10 form group 5 (numbers 0-5, a ring of six); slots 11-13 form group 6 (numbers 6-8, a ring of three); slots 14-17 are single-slot groups 7-10 with numbers 9, 10, 0xb, 0xc. No slot lists a shared slot and no group sets the lost-map hook. Groups 3, 4, 7, 8 and 10 use the empty hooks `konInstallFakeColormap` and `konStoreFakeColors` ([above](#koninstallfakecolormap)); groups 0-2, 5 and 6 use the functions at 0x564710 and 0x523cf0; group 9 uses 0x476c40 and 0x4a45e0 (not read). **Inferred:** a group is a class of colour map the hardware loads in the same way, and a fake group is a visual the module keeps only in software.

#### `nfbCreateHWColormap`

`nfbCreateHWColormap` at 0x4e75e0 in `kona.so` (**established**) gives a new colormap the private block that records its hardware slot and its allocated entries.
It takes (colormap) and stores the block at colormap +68.
For a true-colour visual (class 5) the block is 8 bytes plus 12 bytes per word of a bit map sized to the visual's entry count; for any other class it is 8 bytes plus (entries + 31) / 8.
It sets block word 0 to -1 (no hardware slot) and clears the bytes from +4 (three entry-count bit maps for class 5, one otherwise) through the helper at 0x54b4f0, which returns 1.
An allocation failure returns 0 with the private word left 0.
**Inferred:** the bit maps record which entries have been allocated.
It is called from `konInitializeColormap`.

#### `nfbDestroyHWColormap`

`nfbDestroyHWColormap` at 0x56d9c0 in `kona.so` (**established**) frees a colormap's private block at +68 and clears the pointer.
It does not release a hardware slot; `nfbUninstallHWColormap` does that.
Its address is in the module's function table at 0x5866d8, in the slot the order of the neighbouring entries (create, destroy, install, uninstall, list) suggests is destroy-colormap (**inferred**).

#### `nfbInstallHWColormap`

`nfbInstallHWColormap` at 0x450d60 in `kona.so` (**established**) gives a colormap a hardware slot of its visual's group and runs the group's install hook; it loads no colours itself.
It takes (colormap). Its address is the table word at 0x5866dc, between destroy and uninstall (**inferred** install-colormap slot).

1. The group is word +4 of the visual-table entry for the colormap's visual. The colormap's slot is block word 0.
2. If the colormap already has a slot, it moves that slot's record to the head of the group's ring (the ring links are the second words of the records) and returns, sending nothing; when it is already the head it returns at once.
3. Otherwise it takes the record after the head as the victim, makes it the head, and stores its slot number in the colormap. If another colormap holds that slot it is told it lost the map (`WalkTree` over the screen with `TellLostMap`) and its slot becomes -1. The same happens for every slot in the victim slot's shared list, which clears those slots' installed pointers and calls the group's lost-map hook if it has one (this module's table has no shared lists and no lost-map hooks, so only the first case happens).
4. If the rrm screen record's word +48 is non-zero and the slot's reserved flag (+20) is clear, it reserves the slot's display id (slot +16) with the display-id allocator ([reserve an id](#setreservedid)) and sets the flag, so the display-id allocator treats that id as taken.
   With `kona.so` this step never runs: the module's descriptor leaves the reserve hook (word +44) empty, and the server's `rrmInit` then forces word +48 to 0.
5. It calls the group's install hook with the colormap, stores the colormap as the slot's installed map and walks the screen's windows with `nfbTellGainedMap` (at 0x478b10, named by its symbol).

The ring makes this a least-recently-used cache over the slots of a group. **Inferred** from the code: the head is the most recent and the record after the head is the next victim. When a group has one slot, the victim is that slot.

#### `nfbUninstallHWColormap`

`nfbUninstallHWColormap` at 0x5673b0 in `kona.so` (**established**) takes a colormap off its hardware slot and makes that slot the next one to be reused.
It takes (colormap) and returns nothing; a colormap without a slot (private block null or word 0 negative) returns at once.
For a colormap with a slot it moves that slot's record to the position just after the head of the ring, so it becomes the next victim.
Unless the colormap is the screen's default (screen record +28 compared with the colormap id), it then does the following.
When the rrm word +48 is non-zero it releases that reservation with `UnsetReservedID` and clears the reserved flag; in `kona.so` that word is 0.
It clears the slot's installed pointer, sets the colormap's slot to -1, tells the screen's windows the map was lost and calls the group's lost-map hook if any.
Finally, when the default colormap's group contains the freed slot (or a slot that shares it), it calls the screen's install function (screen record +316, **inferred** the install-colormap procedure) with the default colormap.
**Inferred:** a freed slot returns to the default map when it could hold it.

#### `nfbListInstalledHWColormaps`

`nfbListInstalledHWColormaps` at 0x525350 in `kona.so` (**established**) reports which colormaps currently hold hardware slots.
It takes (screen, id array) and walks the slot table (count at pipe record +112, two 28-byte entries per loop pass).
It writes the resource id (colormap +8) of every slot with an installed colormap to the array and returns the count.
Its address is the table word at 0x5866e4 (**inferred** list-installed slot).

#### `nfbHWColormapScreenInit`

`nfbHWColormapScreenInit` at 0x4f3090 in `kona.so` (**established**) copies the module's slot and group tables into the pipe's record at screen start.
It takes (screen, slot count, slot table, group count, group table), allocates 28 x slot count and 24 x group count bytes and copies the caller's tables into them with `bcopy`.
It stores the counts and pointers in the pipe record (+112, +116, +120, +124) and returns 1, or 0 when an allocation fails (after freeing the first).
Only `konInit` calls it, with `konNumHWCmaps`, the table at 0x586198, the group count and the table at 0x586088.
The record rings the groups point to are not copied.

#### `nfbHWColormapScreenClose`

`nfbHWColormapScreenClose` at 0x4f22c0 in `kona.so` (**established**) releases those two tables: it takes (screen) and frees the slot table and then the group table held in the pipe record.
`konCloseScreen` calls it.

#### `nfbUninstallColormap`

`nfbUninstallColormap` at 0x496580 in `kona.so` (**established**) puts the screen's default colormap back when the colormap being uninstalled is the one recorded as installed.
It takes (colormap) and compares it with the word at pipe record +128.
When they match and the colormap is not the screen's default (screen record +28), it looks the default up as a resource of type 6 and passes it to the screen's install function (screen record +316).
Otherwise it returns; it does not touch hardware slots itself.

#### `rrmInitializeGLStaticColormap`

`rrmInitializeGLStaticColormap` at 0x491010 in `kona.so` (**established**) loads the fixed colours of a 256-entry static-colour colormap from a table in the module.
For any other class or size it calls `cfbInitializeColormap` instead.
The table at 0x587f60 holds 256 red bytes, then 256 green and 256 blue; each byte is shifted into the high half of a 16-bit component.
The loop runs 257 times, so it also writes one entry past the 256th from the next table's first bytes (**established** from the loop bound, **inferred** a defect that the colormap's allocation absorbs).

#### `cfbInitializeColormap`

`cfbInitializeColormap` at 0x4f5260 in `kona.so` (**established**) is the X sample server's colour frame-buffer routine for static visuals, carried unchanged.
For a true-colour visual (class 4) it fills separate red, green and blue ramps (colormap +56, +60 and +64) scaled to 16 bits from each mask's width.
For a static-colour visual (class 2) it fills one table from the three masks; for static grey (class 0) it fills a grey ramp; it returns 1.

#### `cmapDID`

`cmapDID` at 0x4b05f0 in `kona.so` (**established**) returns the display id that goes with a window's colour map.
It takes (window) and looks up the window's colormap (the optional record's colormap, or none for an input-only window) as a resource of type 6 (colormap).
With a colormap whose block word 0 is not negative, it returns that slot's +16 field; otherwise it returns word +0 of the visual-table entry for the window's visual.
**Inferred:** the second form is the id a window gets when its colormap has no slot.
Callers: the best-id search and the steal function of [the allocator](#the-display-id-allocator).
The two unbind functions call it too (`rrmUnbindRNFromClip`, `rrmOGLUnbindRNFromClip`).

#### `nfbInitVisDIDs`

`nfbInitVisDIDs` at 0x52dcd0 takes (count, entries, table). For each 20-byte entry it copies word +4 of the 32-byte table record whose index is the entry's word +4 into the entry's word +0; the loop is unrolled by two. **Inferred:** it fills in each visual's display-id value from a per-depth table. **Established:** no code or data in any of the four modules refers to it, so it is exported but never run by them; what the entries and the table are is **unknown: no shipped software or published source depends on it** (routes: in all four modules no global-table slot, data word or address-building instruction pair holds its address, while the same search finds the addresses of two of its neighbours, each in one table word).

#### `nfbSetDidFlags`

`nfbSetDidFlags` at 0x4f3dd0 in `kona.so` (**established**) works out which windows of a tree need a display id other than their parent's.
It takes (window) and keeps two bits in the window's frame-buffer private word +32 (`nfbWindowPrivateIndex`).
Bit 0x4 is set when the window needs a display id of its own; bit 0x8 is set when any descendant does or has bit 0x8 itself.
Bit 0x4 comes from a static helper at 0x4ad610, called with the window, its private record, the pipe record and the parent's private record.
The helper clears bit 0x4 and returns 0 for a window that is not viewable or has no parent.
Viewable is bit 10 of window word +124, **established** from the server's `RealizeTree` in Xsgi at 0x100a4ba0, which sets bit 11 (realized) on a mapped window (bit 12) and bit 10 when the window is also input-output.
Otherwise the helper sets bit 0x4 and returns 4 when the window or the parent lacks private bit 0x1, or when the colour maps differ (private bit 0x2 set) or the visuals differ (bit 0x2 clear).
Private bit 0x1 marks a window drawn in its visual's own mode with no OpenGL rendering node bound.
`nfbCreateWindow` sets bit 0x1 for every new window; the two bind functions and `rrmDoubleBufferWindow` clear it, the two unbind functions set it again, and each then calls this function.
Private bit 0x2 marks a window whose visual's colour-map group has two or more hardware slots, so its colour map can differ from the parent's; `nfbCreateWindow` sets it at 0x4d96d4 from the group's slot count, and a child that takes its parent's visual inherits it.
The function runs the helper on the window itself, discarding the result, then on each child; it sets bit 0x8 on the window if any child's result was non-zero or the child has bit 0x8, and clears it otherwise.
When bit 0x8 or bit 0x4 is now set it marks bit 0x8 on every ancestor.
When both just cleared but one of them was set before, it walks up the ancestors and clears bit 0x8 on each one that has no child with either bit, stopping at the first ancestor that still has one.
An ancestor that lacks bit 0x8 here prints "nfbSetDidFlags: should never get here".
**Inferred:** the bits say which windows in a tree need a display id different from their parent's.
It has nine call sites, among them `nfbRealizeWindow` and `nfbChangeWindowAttributes`.
Other callers include `rrmUnbindRNFromClip` and `rrmDoubleBufferWindow`.

#### `nfbRealizeWindow`

`nfbRealizeWindow` at 0x44a0f0 in `kona.so` (**established**) is the frame-buffer layer's realize-window procedure; it settles the window's display-id bits and its layer counts.
For a viewable window (word +124 bit 10) it first adds one to the per-layer count of the pipe record (table at +64, indexed by frame-buffer private +24, the layer).
A window with a parent then goes through `nfbSetDidFlags`.
When its layer differs from the parent's it adds one to frame-buffer private +28 of every ancestor (**inferred** a count of descendants in another layer).
For the root window it sets bit (1 << layer) in private +36, passes a box of the whole screen to the screen procedure at +372 with that layer's region, and calls the root set-up at 0x5325d0 (`nfbInitRootWindow`).
It returns 1.

#### `nfbChangeWindowAttributes`

`nfbChangeWindowAttributes` at 0x47adc0 in `kona.so` (**established**) follows a colormap change through to the display-id bits.
When the change mask has the colormap bit (0x2000) it compares the window's new colormap with its parent's.
It records the result in frame-buffer private +32 bit 0x10 (set when they differ) and re-runs `nfbSetDidFlags` on the window.

#### `rrmUnbindRNFromClip`

`rrmUnbindRNFromClip` at 0x44ee60 in `kona.so` (**established**) is descriptor hook +68: it detaches a rendering node from a window and returns the window to plain X drawing.
It takes (window, node); a window with no rrm private returns at once.
It first invalidates every resource the window holds through hook +32 (`rrmInvalidate` with a zero mask), and drops a queued request when the private flag halfword has bit 0x20.
For a realized window (word +124 bit 11) it releases the display id with `FreeID`, or just sets it to -1 when it holds the no-id value (the id count, rrm screen private +0).
It releases the clip id too (`FreeCID`), and lowers the parent's counters with `decrRRMFlags`.
It sets the frame-buffer id (private +4) to the colour map's id from `cmapDID`, clears the bound-window list at rrm private +40, unbinding each listed window the same way, and frees it.
It then sets frame-buffer private +32 bit 0x1 and runs `nfbSetDidFlags`; for a realized window it calls hook +72 (`nfbValidateWindowVisual`) with the old id.
Finally it clears bit 0x1 of the rrm private flag halfword and returns 1.

#### `rrmOGLUnbindRNFromClip`

`rrmOGLUnbindRNFromClip` at 0x5664f0 in `kona.so` (**established**) is descriptor hook +60, the OpenGL form of the unbind above.
It invalidates through hook +32 and drops a queued request, as `rrmUnbindRNFromClip` does, and also frees the buffer held in the window's GLX private.
A bound-window list that is not empty prints "rrmOGLUnbindRNFromClip: pPriv->prrmBoundWins not empty".
It sets the frame-buffer id from `cmapDID`, sets private +32 bit 0x1 and runs `nfbSetDidFlags`.
For a realized window it calls hook +72, frees the display id (`FreeID`) and the clip id, lowers the parent's counters and clears the rrm private's bound bit.

#### `rrmDoubleBufferWindow`

`rrmDoubleBufferWindow` at 0x4965f0 in `kona.so` (**established**) makes the X server's double-buffer extension window double-buffered in the pipe.
It allocates the rrm private with `allocRRMpriv` when there is none (status 11 on failure, the X allocation error).
For a window not yet bound it sets holder count +8 to 1, flag halfword 5, clears +28 and +30, takes the rendering-node id (+12) from pipe record +104 and raises the parent's counters with `incrRRMpriv`.
It builds the hardware-independent mode (+32) from the mode recorded for the window's current frame-buffer id, with bit 0x2 (double-buffered) set and bit 0x4 (back buffer shown) clear.
The hardware-dependent mode (+36) is that id's recorded word +12, or its pending word +28 when reservations are on and the id is marked at +32.
It clears frame-buffer private +32 bit 0x1, runs `nfbSetDidFlags` and sets the display id to -1.
A realized window then gets a new id from `FindFreeID`, or from `StealID` when none is free.
It loads the new mode through hook +40 (`konValidateMode`) and finally calls the screen procedure at +192 with (window, 0); it returns 0.

#### `SetDIDMode`

`SetDIDMode` at 0x501220 in `kona.so` (**established**) loads a display id's mode into the hardware once, when the window holding it has a mode the id has not recorded.
It takes (window); with no display id (rrm window private +20 negative) it returns.
It looks at the id's 36-byte entry in the display-id table of the screen private (from +152), whose flag halfword (+16) has bit 0x8 for "mode recorded".
If the bit is set and the comparison at 0x5358c0 says the recorded mode equals the window's, it returns.
Otherwise it calls the screen private's hook at +40 with (window, window private, screen private), sets bit 0x8, and stores the window's two mode words in entry words +8 and +12.
The hook at +40 is `konValidateMode`, from the module's descriptor, so this is where the XMAP mode load and the load-display-mode resource-manager request go out for a newly used id ([display modes](#display-modes-x_loadxmap_did-and-the-load-display-mode-resource-manager-request-1017)).
This settles `konInitDIDState`: entry words +8 and +12 are the hwi and hwd mode words of the windows holding the id.
Callers include `rrmInvalidate` and the holder-add helper at 0x52a340.

`compareModes` at 0x5358c0 in `kona.so` (**established**) decides whether an id's recorded mode fits a window.
It returns 1 when the entry's kind halfword (+18) equals the window record's halfword +2 and the entry's words +8 and +12 equal the window's hardware-independent mode (+32) and hardware-dependent mode (+36) under two screen masks.
The masks are rrm screen private +16 and +20 (all ones and 0x7f7 in this module's descriptor); +16 has bit 0x4 cleared when the caller asks.

#### `SetNoStealID`

`SetNoStealID` at 0x51d7a0 in `kona.so` (**established**) protects a display id from the steal function: it takes (screen, id) and sets bit 0x20 of the id's entry flags (+16).

#### `UnsetReservedID`

`UnsetReservedID` at 0x438a40 in `kona.so` (**established**) clears the occupied bit 0x2 of an id's entry flags (+16); it takes (screen, id).
`nfbUninstallHWColormap` calls it to release a colour map's reservation, a path this module never takes because its descriptor leaves reservations off.

#### `FreeID`

`FreeID` at 0x49ac60 in `kona.so` (**established**) takes a window off its display id.
It takes (window), unlinks the window from its display-id entry through the static helper at 0x4d9c60 and sets the window's id (rrm window private +20) to -1.
The helper runs only when the window's private flag halfword has bit 0x8.
It drops the entry's window count (+20), removes the window from the doubly linked list of holders (window privates +44 and +48) and recomputes the entry's flag bits from the list's head and tail.
The flag bits are settled in [the allocator](#the-display-id-allocator).

#### `FreeCID`

`FreeCID` at 0x4c94f0 in `kona.so` (**established**) takes a window off its clip id.
It calls the leave helper at 0x4d3cc0 with the window and its entry (28-byte entries at screen private +148, index rrm window private +24), then sets the window's clip id to 0, an entry the allocator never hands out.
The helper runs only when the window's private flag halfword has bit 0x40.
It unlinks the window from the holders (window privates +60 and +64), drops the entry's count (+12) and recomputes the entry's flags (+8) from bit 0x1 and the holders that remain.

#### `SetReservedID`

`SetReservedID` at 0x572f10 in `kona.so` (**established**) takes a display id for one fixed mode, moving its current holders elsewhere.
It takes (screen, id) and copies the windows that hold the entry (count at +20, first at +0) into a stack list.
For each it calls the screen private's hook at +32 with (window, 0, 0) when the window's private byte +6 has bit 0x8, and then `FreeID`.
It copies entry words +24 and +28 over +8 and +12, calls the hook at +44 with (screen, id), and sets entry flag 0x2 (occupied).
It then runs the free-id search (`FindFreeID`) for each saved window, taking an id with `StealID` when none is free.
When the reserved id's own flag bit 0x10 was set before the call, it sets that bit on each window's new id and calls the hook at +32 with (window, 8, 1).
**Inferred:** the holders leave, the id switches to the pending mode held in words +24 and +28, and the holders are placed again.
Its one caller is `nfbInstallHWColormap`, behind screen-private word +48.
With `kona.so` that word is 0 and the hook at +44 is empty ([descriptor](#the-rrm-descriptor-and-its-hooks)), so the function is present but never runs.

#### The rrm descriptor and its hooks

The rrm screen private is not built by the module. **Established** from the server binary `Xsgi` (6.5.30m): its `rrmInit` at 0x101ec4d0 allocates 152 bytes plus 36 per display id, copies the caller's descriptor over the header and clears the id table.
It then swaps six screen procedures for the descriptor's words +104 to +124, keeping the originals in the private, and calls the descriptor's hook +84 with the screen.
When the descriptor's hook +44 is empty it forces word +48 to 0, and it builds the clip-id table (`rrmCIDInit`) only for a non-zero clip-id count at +4.
`konInit` passes the descriptor at 0x5868f8, which nothing in the module writes. Its words, by offset in the private:

| Offset | Value in `kona.so` | Role |
|---|---|---|
| +0 | 96 | display-id count, the size of the table `konInitDIDState` fills |
| +4 | 0 | clip-id count: zero, so no clip-id table is built and the callers of `FindFreeCID` that test it never call it |
| +8 | 0 | most clip rectangles a window may have without a clip id, read by `rrmNeedCID` |
| +16 | all ones | first mode mask of `compareModes` |
| +20 | 0x7f7 | second mode mask of `compareModes` |
| +28 | `konValidateClip` | validates a window's clip with the kernel (1011) |
| +32 | `rrmInvalidate` | at 0x4ff730: invalidates kernel resources of a window with the invalidate-render-node resource-manager request (1010) |
| +36 | `konValidateSwapbuf` | validates a window's swap buffer with the kernel (1012) |
| +40 | `konValidateMode` | at 0x4601e0: loads a display id's mode, `X_LOADXMAP_DID` then 1017 |
| +44 | empty | the reserve hook; empty, so the server turns reservations off |
| +48 | 0 | reservations off |
| +60 | `rrmOGLUnbindRNFromClip` | OpenGL unbind |
| +68 | `rrmUnbindRNFromClip` | unbind |
| +72 | `nfbValidateWindowVisual` | at 0x460c80: told the old id when a window's frame-buffer id changes |
| +80 | `konInitWindowType` | called by `allocRRMpriv` for each new window private |
| +84 | `konInitDIDState` | fills the id kinds at start |
| +92 | `rrmNeedCID` | at 0x44d590: whether a window needs a clip id |

`rrmInvalidate` at 0x4ff730 in `kona.so` (**established**) is hook +32; it takes (window, mask, flag).
A zero mask means every resource the window holds: the valid-resource bits in rrm private byte +4, which follow `the rmask resource-manager requests*` of the 6.5.5 the Kona stack header 8 (0x2 clip, 0x8 swap buffer).
It sends ioctl 1010 with the rendering-node id (+12), the window id and the bits, and clears them in byte +4.
When the swap-buffer bit was among them, it copies bit 0x4 of the returned mode into the window's hwi word (+32) and calls `UpdateDIDMode`, with 1 when the kernel's returned flag word has bit 0 set and 0 otherwise.
Only when that bit is set and the flag argument is non-zero does it then run `SetDIDMode`; a change of hwi bit 0x4 also bumps the global serial number and flushes client caches.
With the clip bit it invalidates the window's clip id (`rrmInvalidateCID`) when the screen has clip ids.

`rrmNeedCID` at 0x44d590 in `kona.so` (**established**) is hook +92: it returns 1 unless the window's clip list is empty or fits within the rectangle count at rrm private +8.
With this module's 0 at +8 that is every window with a non-empty clip.

`konValidateSwapbuf` and `konValidateClip` mark their resource valid through `rrmSetResourceMask` at 0x4daf70 in `kona.so` (**established**), which sets the given bits in rrm private byte +4 and clears them in byte +5; the swap-buffer validation passes 8 and the clip validation 2.

`rrmSetResourceMask` at 0x4daf70 in `kona.so` (**established**) marks kernel resources valid on a window: it takes (window, mask) and returns non-zero at once when any of the bits is already set in rrm private byte +4.
Otherwise it sets them in byte +4 and clears them in byte +5.

`konInitWindowType` at 0x46d2f0 in `kona.so` (**established**) is descriptor hook +80: it sets the new window private's kind halfword (+2) to 1 when the visual's flags (visual table word +8) have bit 0x2, the overlay and underlay visuals, and to 0 otherwise.
That kind is what the allocator matches against the id kinds `konInitDIDState` sets (0 main, 1 overlay).

`incrRRMpriv` at 0x474c90 in `kona.so` (**established**) makes sure a window and all its ancestors have an rrm private, creating each missing one with `allocRRMpriv`; it returns 0, or 1 when an allocation fails.

`incrRRMFlags` at 0x49af00 in `kona.so` (**established**) adds one to rrm private word +16 of a window and of every ancestor; **inferred** a count of bound descendants.

`decrRRMFlags` at 0x44b6b0 in `kona.so` (**established**) is the inverse walk: it subtracts one from word +16 of the window and each ancestor.

`rrmInvalidateCID` at 0x4b7410 in `kona.so` (**established**) drops a window's clip id when its clip changes.
A window whose clip id is 0 or the no-id value (the clip-id count) just gets 0.
Otherwise it calls hook +76 with the id's entry, then the screen procedure at +392; the descriptor leaves +76 empty, and the stereo switch installs 0x4afce0 there.

**Reserved ids** (**established**, `Xsgi` and `kona.so`): `konInit` calls the static function at 0x4feb90 once, which calls the server's `rrmSetReservedDID` for seventeen ids.
`rrmSetReservedDID` at 0x1015ce50 in `Xsgi` writes the id's flags as 0xd (reserved, shared, mode recorded), the given hwi word to entry +8 and +24, the hwd word to +12 and +28, and 1 to +32.
The module reserves ids 0 to 9 with hwi 0 and hwd 8 (colour index), id 10 with hwi 1 and hwd 4, id 11 with hwi 1 and hwd 0x14, and id 12 with hwi 1 and hwd 0.
It reserves the overlay ids 64 to 67 with hwi 0x3c00 (hwd 5, then 0x15) and hwi 0x3c01 (hwd 2, then 0x12).
These are the shared ids that windows in the commonest modes join through the best-id search.

#### The display-id allocator

`FindFreeID`, `FindFreeCID`, `FindBestID`, `ShareSwappingID` and `StealID`, read in full in `kona.so`; the other allocator functions are above. **Established** unless marked. The id table is the one of [`SetDIDMode`](#setdidmode); `winpriv` means the window's rrm private (+20 id, +24 clip id, +2 kind halfword, +36 hardware-dependent mode, +4 and +6 flag bytes) and the screen-private words +32, +40, +44, +72 and +92 are the descriptor's hooks ([descriptor](#the-rrm-descriptor-and-its-hooks)).

**Flag halfword of an id entry** (entry +16), from every test and store of it in the module:

| Bit | Set by | Meaning |
|---|---|---|
| 0x1 | the server's `rrmSetReservedDID` (in `Xsgi` at 0x1015ce50), for the ids `konInit` reserves | **Established**: reserved at start-up for one fixed mode ([reserved ids](#the-rrm-descriptor-and-its-hooks)). Tested by the free-id search (first pass skips it, second pass wants it), the steal function (skips it) and the share function (stops at it); preserved when the last holder leaves |
| 0x2 | the helper that adds a holder, `SetReservedID` | occupied: the id has a holder or is reserved; cleared by `UnsetReservedID` and when the last holder leaves |
| 0x4 | the helper that adds a second holder; the leave helper while more than one remains | shared: more than one window holds the id |
| 0x8 | `SetDIDMode` | the mode words (+8, +12) are recorded |
| 0x10 | the buffer-swap start function (`konInitiateBufferSwap`) | a swap is pending on the id; the swap-done callback clears it |
| 0x20 | `SetNoStealID` | the id may not be stolen |

**The shared helpers.** 0x5777c0 (window, id) frees the window's current id if it has one and then calls 0x489ba0 (window, id): it stores the id in winpriv +20 and in the frame-buffer private word +4, links the window at the tail of the entry's holder list through 0x52a340, and calls screen-private hook +72 (`nfbValidateWindowVisual`) with the window and the old frame-buffer id. 0x52a340 sets the window's flag halfword bit 0x8, raises the entry's holder count, sets entry bits 0x2 and, from two holders on, 0x4, and when the window is the first holder and bit 0x1 is clear it calls `SetDIDMode`. 0x5202c0 (screen private, entry) calls hook +32 with (window, 0, 1) for every holder.

**`FindFreeID`** at 0x5780a0 (**established**, `kona.so` 6.5.30m) takes (window) and returns 1 when the window has an id, 0 when none was found. A window of kind 1 on a screen whose private word +12 has bit 0 set gets the id equal to the table size (one past the last entry; **inferred** "no real id"). A window that already has an id whose entry is not shared keeps it. Otherwise the first pass takes the first entry of the same kind with bit 0x1 clear and no holders and gives it to the window through 0x5777c0. When screen-private word +48 is non-zero a second pass takes an entry of the same kind with bit 0x1 set, no 0x2 or 0x20 and no holders, clears its flags and gives it away. Neither found returns 0.

**`FindBestID`** at 0x44a280 (**established**, `kona.so` 6.5.30m) takes (window). It scans the ids and, for each whose recorded modes match the window's (`compareModes`), remembers it as the best so far; if that id's kind equals the window's and it is shared (0x4) the window joins it at once through 0x5777c0 (nothing happens when it already holds it). If the scan ends with a remembered id, the function first calls 0x5202c0 on that id's entry, which sends hook +32 to its holders, and gives the window the id. With no match, or an empty table, it asks `cmapDID` and gives the window that id unless it already has it. **Inferred:** prefer joining a shared id that already carries the right mode, else take over a matching one, else use the colour map's own id.

`ShareSwappingID` at 0x48c650 in `kona.so` (**established**) lets a window that starts a buffer swap join a display id already mid-swap in the same mode; it returns 1 when the window was given an id, else 0.
Pass 1 walks the ids from the highest down to 1 and considers entries with bit 0x10 (swap pending) other than the window's own, whose first holder has the same hardware-dependent mode (+36) as the window.
For each it walks the holder list of id 0 (entry +0 of the table, whatever entry it is considering) and notes whether any holder has bit 0x8 in its private byte +4.
When none does, it gives the window the entry's id through 0x5777c0 and returns 1; the scan stops at an entry with bit 0x1.
When some holder of id 0 does, pass 2 walks the same entries again.
For each swap-pending entry other than the window's own it calls 0x5202c0 on the entry once per holder of id 0 with that bit, and gives the window the entry's id if `compareModes` accepts the window's modes against it.
Bit 0x8 of private byte +4 is the swap-buffer resource: `konValidateSwapbuf` sets it after a successful validation (1012) and `rrmInvalidate` clears it ([hooks](#the-rrm-descriptor-and-its-hooks)).
Id 0 is the first of the colour-index ids the server reserves at start-up.
**Inferred:** a window that starts a swap may join an id that is mid-swap when the modes agree.

**`StealID`** at 0x433b20 (**established**, `kona.so` 6.5.30m) takes (window) and has three passes, all over ids of the window's kind:

1. an unshared id (bits 0x4 and 0x10 clear) whose first holder has private bit 0x8 clear in byte +4: look for another id whose recorded mode equals that holder's (`compareModes`); if that one is shared, move the holder there (hook +32 first when the holder's byte +6 has bit 0x8 and screen word +4 is set), and give the freed id to the window; if it is not shared and its first holder also has the bit clear, hook +32 on both holders, move the first holder there and give the window the freed id;
2. otherwise, starting from the cursor at screen-private +132, try the helper at 0x462580 on the first holder of each unshared id of the kind and, when it returns an id, give that id to the window and store the position in the cursor. The helper (**established** for its first pass) moves that holder onto another id whose recorded modes match its own, a shared one at once or else a matching unshared one, after invalidating it through hook +32 when its byte +6 has bit 0x8; it returns the id it vacated, or -1 when no id fits (later passes of the helper were not traced);
3. otherwise, again from the cursor, take any id of the kind without bit 0x1: it hands the old holders and the id to 0x4b3280 together with the `cmapDID` id of its first holder, and gives the id to the window. The helper (**established**) invalidates the holders of both ids through 0x5202c0, gives every holder of the taken id the other id (rrm private +20 and frame-buffer private +4), calls hook +72 for each and appends them to the other id's holder list.

`FindFreeCID` at 0x4609e0 in `kona.so` (**established**) gives a window a clip id, the hardware tag that lets a window with a complex clip be drawn without per-rectangle clipping (**inferred** from `rrmNeedCID`).
It works on the clip-id table: 28-byte entries from screen-private +148, count at +4; entry +0 first holder, +8 flags, +10 kind, +12 holder count; cursor at +136.
It first calls hook +92 (`rrmNeedCID`) with the window; on 0 it sets the window's clip id to the table count (**inferred** "none").
A window whose current clip id is not shared (bit 0x4 of entry +8 clear) keeps it.
Otherwise it scans for an entry of the window's kind without bit 0x1 (a kind-1 window also accepts other kinds when screen word +12 has bit 0x2).
An entry with no holder is given to the window at once; of the others it remembers the last whose first holder's private bytes +4 and +6 differ.
When none is remembered it takes the entry after the cursor (wrapping to 1, never 0) and advances the cursor.
For the chosen entry it sends hook +32 (`rrmInvalidate`) to the first holder with (2, 0), invalidating its clip, moves that holder to clip id 0 and gives the window the entry.
Both moves go through 0x5607b0 (window, id), which frees the window's current clip id with `FreeCID` and joins the new one through 0x4ca130, which stores the id at private +24 and adds the window as a holder.
With `kona.so` the clip-id count is 0, so no clip-id table exists and the guarded callers never reach this function ([descriptor](#the-rrm-descriptor-and-its-hooks)).

#### `nfbRealizeCursor`

`nfbRealizeCursor` at 0x4efd70 takes (screen, cursor). Allocates a 16-byte record (stored as the cursor's private word for this screen, CursorRec +20 + 4 x screen number) and a zeroed 256-byte buffer at record +8, sets halfword +12 to 1 and words +0 and +4 to 0. It clips the source bitmap to 32 x 32 (keeping the leftmost bits of a narrower cursor) and writes two 32-word planes: words 0-31 hold source AND mask (pixels in the foreground colour), words 32-63 hold mask AND NOT source (background). It returns 1; an allocation failure prints "nfbRealizeCursor: memory allocation failed" and returns 0. **Established:** the function table of `kona.so` uses `konRealizeCursor`, not this function, and in that module and its three siblings nothing refers to `nfbRealizeCursor` (the search is described [above](#nfbinitvisdids)), so a screen running one of them never builds that record. Its output is two 32 x 32 planes and no pipe-side form: the pipe's cursor image is a different layout ([cursor](#cursor-the-select-cursor-kona-driver-request-10005-x_loadcursor-x_loadcursorcolor)).

#### `konBlankScreen`

`konBlankScreen` at 0x4cd370 takes (value, screen), calls `konTempBlankAllChannels` with (screen, value) and returns 1 always. `konInit` calls it with 0 (it prints "konInit: konBlankScreen() failed" if the result is 0) and `konCloseScreen` calls it with 1. **Inferred:** 1 blanks every channel and 0 unblanks, from the two call sites; the argument order is not that of a server screen-saver hook, which takes the screen first, so the module does not install it as one.

### Stereo drawing wrappers (`konStereo*`)

**Established** (all 20, same body). Each wrapper takes the arguments of one X GC operation, finds the GC's `nfbGCPrivateIndex` record, saves its word +8 and the GC's ops pointer (+72), installs the plain ops kept at private +92 and sets private +104 to 1. It then runs the operation twice, once per eye: word +8 set to private +96 with the drawable's y (halfword +10) and the GC's clip y (private halfword +90) moved up by the screen record's halfword +226, and word +8 set to private +100 with them moved back. Word +220 of the screen record picks the order (1: +96 first). Each pass revalidates the GC (0x553d40 with mask 0x2000) and calls the plain op. Finally it restores word +8, the ops pointer and private +104. **Inferred:** +96 and +100 are the left and right buffer selects of the stereo frame buffer and +226 the vertical distance between the two eye images, the same offset `konValidateClip` adds. `konStereoCopyArea` and `konStereoCopyPlane` call the op once when the source is a pixmap, move the source y as well when source and destination are the same window, and free the first pass's exposure region.

#### `konStereoFillSpans`

`konStereoFillSpans` at 0x5225f0 in `kona.so` (**established**) fills a list of horizontal spans in each eye buffer in turn, through op slot 0 (`FillSpans`).

#### `konStereoSetSpans`

`konStereoSetSpans` at 0x513630 in `kona.so` (**established**) writes rows of given pixel values twice, once per eye, through op slot 4 (`SetSpans`).

#### `konStereoPutImage`

`konStereoPutImage` at 0x4c4f00 in `kona.so` (**established**) puts a client image into the left and then the right buffer (or the reverse, per screen word +220) through op slot 8 (`PutImage`).

#### `konStereoCopyArea`

`konStereoCopyArea` at 0x507a30 in `kona.so` (**established**) copies a rectangle per eye through op slot 12 (`CopyArea`); a pixmap source is copied once, a same-window source has its y moved too, and the first pass's exposure region is freed.

#### `konStereoCopyPlane`

`konStereoCopyPlane` at 0x4cc310 in `kona.so` (**established**) copies one bit plane per eye through op slot 16 (`CopyPlane`), with the same pixmap-source and same-window handling as the area copy.

#### `konStereoPolyPoint`

`konStereoPolyPoint` at 0x4dac80 in `kona.so` (**established**) plots a point list into both eye images, slot 4 x 5 (`PolyPoint`).

#### `konStereoPolyline`

`konStereoPolyline` at 0x44e1b0 in `kona.so` (**established**) draws connected lines for each eye in sequence by calling op slot 24 (`Polylines`) twice.

#### `konStereoPolySegment`

`konStereoPolySegment` at 0x441600 in `kona.so` (**established**) repeats op slot 28 (`PolySegment`), so separate line segments appear in both buffers.

#### `konStereoPolyRectangle`

`konStereoPolyRectangle` at 0x45bac0 in `kona.so` (**established**) outlines rectangles in each eye: two calls of op slot 32 (`PolyRectangle`) with the eye offset applied between them.

#### `konStereoPolyArc`

`konStereoPolyArc` at 0x4640c0 in `kona.so` (**established**) strokes arcs into the left-eye and right-eye buffers via op slot 36 (`PolyArc`).

#### `konStereoFillPolygon`

`konStereoFillPolygon` at 0x554820 in `kona.so` (**established**) fills one polygon per eye with op slot 40 (`FillPolygon`).

#### `konStereoPolyFillRect`

`konStereoPolyFillRect` at 0x4f14c0 in `kona.so` (**established**) paints filled rectangles twice, shifting the drawable down by the eye offset for one pass; the op is slot 44 (`PolyFillRect`).

#### `konStereoPolyFillArc`

`konStereoPolyFillArc` at 0x4eb180 in `kona.so` (**established**) fills pie or chord arcs per eye through slot 48 (`PolyFillArc`).

#### `konStereoPolyText8`

`konStereoPolyText8` at 0x44c6e0 in `kona.so` (**established**) renders 8-bit text strings in each eye image using op slot 52 (`PolyText8`).

#### `konStereoPolyText16`

`konStereoPolyText16` at 0x480b90 in `kona.so` (**established**) is the 16-bit string form: op slot 56 (`PolyText16`) runs for both buffers.

#### `konStereoImageText8`

`konStereoImageText8` at 0x45b5b0 in `kona.so` (**established**) draws 8-bit image text, background boxes included, per eye with op slot 60 (`ImageText8`).

#### `konStereoImageText16`

`konStereoImageText16` at 0x4d4d00 in `kona.so` (**established**) handles 16-bit image text the same two-pass way, op slot 64 (`ImageText16`).

#### `konStereoImageGlyphBlt`

`konStereoImageGlyphBlt` at 0x56da10 in `kona.so` (**established**) blits glyphs with their background into both views through op slot 68 (`ImageGlyphBlt`).

#### `konStereoPolyGlyphBlt`

`konStereoPolyGlyphBlt` at 0x4aed20 in `kona.so` (**established**) blits foreground-only glyphs once for the left view and once for the right, op slot 72 (`PolyGlyphBlt`).

#### `konStereoPushPixels`

`konStereoPushPixels` at 0x4e9d80 in `kona.so` (**established**) pushes a bitmap stipple through op slot 76 (`PushPixels`) in each of the two buffers.

### Video formats and combinations (`vfmt*`)

**Established** (`kona.so` 6.5.30m; `konad.so`, `konal.so`, `konas.so`, `setmon` and `ircombine` carry functions of the same names, read here in `kona.so` only). The library behind the LoadFormat request and the combination loader ([dg.md](../../devices/dg/README.md#loading-a-combination-channel)); the file format is in [software/ucode/dg.md](../ucode/dg.md). `GL_GRROOT`, when set, prefixes every path.

#### `vfmtFindFormatFile`

`vfmtFindFormatFile` at 0x42b7d0 in `kona.so` (**established**) finds a video format (`.vfo`) file by name and returns 0 when it exists.
It takes (out, name, directory) and appends `.vfo` when missing; the root is `GL_GRROOT` or empty.
A bare name becomes root + directory + "/" + name; a name with a directory part is used as given when that part equals root + directory, and otherwise returns 3 without looking.
It stats the result into a static buffer (0x59e4b0) and returns 0 when found; else it tries `$VFOPATH/name` and returns 0 when that exists, or puts the name back in out and returns 1.

#### `vfmtFindKonaFormatFile`

`vfmtFindKonaFormatFile` at 0x42ba20 in `kona.so` (**established**) looks for an InfiniteReality format through `vfmtFindFormatFile`.
The directory it passes is `/usr/gfx/ucode/KONA/dg4/vfo`.

#### `vfmtFindCmpFormatFile`

`vfmtFindCmpFormatFile` at 0x42ba70 in `kona.so` (**established**) searches the two compositor format directories, both through `vfmtFindFormatFile`.
It tries `/usr/gfx/ucode/VOYAGER/vfo` first.
Then, when the first search fails, `/usr/gfx/ucode/STINGRAY/vfo`.

#### `vfmtFindOdyFormatFile`

`vfmtFindOdyFormatFile` at 0x42bb10 in `kona.so` (**established**) serves the Odyssey board's formats through `vfmtFindFormatFile`.
It passes the directory `/usr/gfx/ucode/ODSY/vof`, spelled so.

#### `vfmtFindSG2FormatFile`

`vfmtFindSG2FormatFile` at 0x42bb60 in `kona.so` (**established**) covers the SG2 video option through `vfmtFindFormatFile`.
It seeks those formats in `/var/X11/Xvc/SG2_formats`.

#### `vfmtFindKonaCombinationFile`

`vfmtFindKonaCombinationFile` at 0x42bbb0 in `kona.so` (**established**) finds a combination file for this board.
It takes (out, name) and returns 1 with the name as given when that file exists.
Else it returns 1 with root + `/usr/gfx/ucode/KONA/dg4/cmb/` + name when that exists.
Else it returns 0 with the name copied back to out.

#### `vfmtFindCmpCombinationFile`

`vfmtFindCmpCombinationFile` at 0x42bcf0 in `kona.so` (**established**) finds a compositor combination file and returns 0 when one exists.
It takes (out, name) and tries the name first.
Then the `VOYAGER/cmb` directory.
Then the `STINGRAY/cmb` directory.
Then `/usr/diags/compositor/data`.
Then the whole list again with `.cmb` appended when the name lacks it.
When nothing is found it returns 1 with the `STINGRAY/cmb` path, or the name itself when it has a directory part.
The three directory attempts pass a length of 4 to `snprintf`, so they build a three-character path and cannot match (**established** from the argument; **inferred** to be a defect).

#### `vfmtGetLastKonaFileStat`

`vfmtGetLastKonaFileStat` at 0x42bf60 in `kona.so` (**established**) hands back the last file status the find functions took: it copies 19 doublewords (152 bytes, a `stat` result) from their static buffer to the caller's and returns 1.

#### `vfmtReadKonaCombination`

`vfmtReadKonaCombination` at 0x42d5f0 in `kona.so` (**established**) loads a combination file into the 41636-byte record the display set-up uses.
It takes (name, record), clears the record, finds the file with `vfmtFindKonaCombinationFile` and opens it as a symbol database.
It reads `MajorVersion` and `MinorVersion`; the comparison it computes from them is never used, so any version loads.
The 18 global fields come next, through 0x42ced0.
Examples: `textport` at +256, `managedSize` at +260, `pixelDepth` at +268.
More: `syncSource` at +272, `usingEncoderOutput` at +552, `allocatedSize` at +588.
Then up to 15 channel records of 2736 bytes at +596, through 0x42bff0 (fields `ch%1d` + name, offsets in [dg.md](../../devices/dg/README.md#loading-a-combination-channel)).
`FieldLayout` and `VbobSyncSource` may be absent.
It returns 0, 1 when the file cannot be opened, 2 on a missing field.

#### `vfmtWriteKonaCombination`

`vfmtWriteKonaCombination` at 0x42e840 in `kona.so` (**established**) is the inverse of the reader: it writes a combination record out as a symbol database.
It takes (name, record), resolves the path with `vfmtFindKonaCombinationFile` and opens a new database described as "Kona video format combination file".
It writes the two version fields, the same 18 globals and each existing channel through 0x42d7f0, and closes it.

#### `vfmtUpdateFormatInfoInCombination`

`vfmtUpdateFormatInfoInCombination` at 0x429320 in `kona.so` (**established**) refreshes the format copies inside a combination from the `.vfo` files.
It takes (record); for each existing channel (+712 set) it finds the format named at channel +340 with `vfmtFindKonaFormatFile` and loads it through 0x4319c0.
It stores word +260 of the loaded format at channel +256 (**inferred** its date stamp) and copies the 2020-byte format record into the channel at +716.
A missing file sets error code 953 and prints "failed to load format %s!", returning 0; otherwise it returns 1.

#### `vfmtMinimalKonaTarget`

`vfmtMinimalKonaTarget` at 0x428010 in `kona.so` (**established**) describes the smallest system as a 32-byte target.
It writes board-set class 0, one raster board, pixel depth 0, eight display-generator channels at revision 0 and no option channel; word +12 is left as it was.

#### `vfmtActualHWToKonaTarget`

`vfmtActualHWToKonaTarget` at 0x428070 in `kona.so` (**established**) fills a target description from the installed pipe.
It takes (pipe, target), starts from `vfmtMinimalKonaTarget` and opens the graphics device.
It asks the board count (ioctl 101, "GFX_GETNUM_BOARDS") and the board information (ioctl 102, 1952 bytes), and refuses a board whose name is not `KONA`.
It reads the configuration record at +40 of that information, the `kona_config` of the 6.5.5 the Kona kernel driver header 2 header.
Its `bdset` becomes the class: 0 stays 0, 2 stays 2, 6 becomes 3, others 1.
It copies `numrms`, which must be 1, 2 or 4 (any other value prints a message and becomes 1).
It copies `pixeldepth` (0-3) and the display generator's channel count, revision, option type and option revision.
It returns 1, or 0 after printing why the pipe could not be read.

#### `vfmtIsKonaCombinationValidForTarget`

`vfmtIsKonaCombinationValidForTarget` at 0x428590 in `kona.so` (**established**) checks a combination against a target, reporting through the message catalogue `IR_VIDEO`.
It takes (record, target, ...).
Each channel's `PixelFormat` must be 0-4 ("Illegal Pixel Format").
Formats 0 and 4 count 32 data bits, formats 1-3 count 42, and format 4 also marks the channel.
`MaxTilesPerRequest` must be at least 1; a class-2 target forces it to 4.
Then the tile requests per line, the data bits and the fill cost per channel go against the video bandwidth ("Video bandwidth exceeded"), and it prints each channel's frame rate, swap rate and fields per swap.

#### `vfmtIsKonaCombinationValidForActualHW`

`vfmtIsKonaCombinationValidForActualHW` at 0x428ff0 in `kona.so` (**established**) builds the target from the pipe with `vfmtActualHWToKonaTarget` and calls `vfmtIsKonaCombinationValidForTarget`.
It caches one target: it rebuilds it only when the pipe number differs from the last call's (the cached pipe starts at -1).

#### `vfmtResolvePixelDepth`

`vfmtResolvePixelDepth` at 0x4278c0 in `kona.so` (**established**) turns the combination's `pixelDepth` request into a depth the target can hold.
It takes (record, target) and counts the allocated pixels: the width rounded up to a multiple of 160, times the height.
It divides raster boards x 5 x 2^22 by that count (halved for class 2; class 3 uses 2^27).
It maps the requested depth (a jump on values 0-7) and that quotient through thresholds at 64, 32 and 16, then 8 and 4, to a depth code, or 0 when nothing fits.
**Established** reading of the classes: the class is the target's first word (0 for set 0, 2 for set 2, 3 for set 6, 1 otherwise), so the budget is RM count x 5 x 2^22 for classes 0 and 1, half that for class 2 and RM count x 5 x 2^27 for class 3. For class 2 the paths that return codes 5 and 6 (quotient at least 32 and 64) are skipped, and the auto path returns only 3 (quotient at least 8), 7 (at least 4) or none. **Inferred** with a 32-bit unit (80 image engines per RM, each with a 256K x 32 memory, [published-sources.md](../../references/documents/published-sources.md)): 80 MB per RM for classes 0 and 1, 40 MB for class 2 and 2.5 GB for class 3, the range the Onyx 350 upgrade document gives; the thresholds 4, 8, 16, 32 and 64 then stand for 128, 256, 512, 1024 and 2048 bits per pixel. How the codes 0-7 map to the names Small to Extra-Large is **unknown**.

#### `vfmtSwapRateCloseEnough`

`vfmtSwapRateCloseEnough` at 0x429090 in `kona.so` (**established**) compares two swap rates: it is true when |a - b| / a is below 0.01.
The Combiner user guide calls swap rates within about 2 percent equal; the code's bound is 1 percent.

#### `vfmtSyncFormatFrameRatesCompatible`

`vfmtSyncFormatFrameRatesCompatible` at 0x429120 in `kona.so` (**established**) decides whether a channel can lock to a sync format's frame rate.
It is false when either rate is 0 or the larger is more than 16 times the smaller.
Otherwise it is true when the ratio is within 0.01 of a whole number (its fractional part's distance from one half exceeds 0.49).

### Display functions in the `konad.so`, `konal.so` and `konas.so` builds

The display functions the display-generator chapter ([dg.md](../../devices/dg/README.md)) relies on, read in the three other 6.5.30m builds of the module. Each entry was checked by comparing the function's instruction words with its `kona.so` build. Where the entry says the words match, every differing word is a global-table offset, one half of an address built in a register, or an offset taken from a global-table pointer, and the branch and call structure is the same, so the reading of the `kona.so` entry above holds unchanged. `konal.so` and `konas.so` have the same code as `konad.so` (equal `code_sha`) except where a second entry names `konas.so`; that code also matches `kona.so` in the same way.

#### Cursor

- `konRealizeCursor` in `konad.so` at 0x5561d0 (**established**) builds the host copy of a cursor image and sends nothing to the pipe yet.
  Word for word it matches the `kona.so` build at 0x54ad40 apart from global-table offsets and address halves.
- `konUnrealizeCursor` in `konad.so` at 0x56b390 (**established**) frees a cursor's host records and puts its cursor-memory slot back on the free list.
  Its words match the `kona.so` code at 0x55f270 except for relocated offsets.
- `konUnrealizeCursor` in `konas.so` at 0x56b3b0 (**established**) is the same slot-releasing cleanup, compiled at another address.
  It matches the `kona.so` build at 0x55f270 in the same way, and `konal.so` holds this code.
- `konDisplayCursor` in `konad.so` at 0x441430 (**established**) chooses which cursor image the display generator shows, loading a glyph into a free slot first when needed.
  Apart from relocated words it is the `kona.so` function at 0x441980.
- `konCursorOn` in `konad.so` at 0x44fbc0 (**established**) switches the hardware cursor on or off through the kernel's cursor-select call.
  The `kona.so` build at 0x44fff0 has the same instructions modulo global-table offsets.
- `konRecolorCursor` in `konad.so` at 0x545ff0 (**established**) reloads a cursor's four colour words into the pipe's cursor memory, for a glyph slot or the crosshair.
  It is the `kona.so` routine at 0x53be80 with one change, made at two sites.
  The sites are 0x5460c4 and 0x546184:
  the token number 305 goes out as a data word at FIFO offset 0 before the address word, instead of being folded into the store address.
- `kon_initCursorCaches` in `konad.so` at 0x4cabb0 (**established**) allocates and links the 39 cursor-memory slot records of a screen.
  It equals the `kona.so` build at 0x4c2230 once the two relocated words are set aside.
- `kon_freeCursorCaches` in `konad.so` at 0x573ac0 (**established**) frees a screen's table of cursor slot records when one exists.
  Only relocated words differ from the `kona.so` copy at 0x567700.
- `kon_freeCursorCaches` in `konas.so` at 0x573ad0 (**established**) releases that same slot table at screen close.
  It matches the `kona.so` copy at 0x567700 the same way; `konal.so` carries identical code.
- `nfbRealizeCursor` in `konad.so` at 0x4f8cf0 (**established**) converts an X cursor into two 32 by 32 bit planes for the frame-buffer layer.
  It is the `kona.so` function at 0x4efd70 with relocated offsets only.

#### Display ids and modes

- `konValidateMode` in `konad.so` at 0x45fe70 (**established**) loads a display id's mode into the XMAP and then tells the kernel the window's mode.
  Against the `kona.so` build at 0x4601e0 the one change is at 0x4605cc:
  token 306 is stored as a data word at FIFO offset 0, and the payload follows at the same offset.
- `konLoadDisplayMode` in `konad.so` at 0x52c910 (**established**) passes one display id's hardware mode to the kernel's load-display-mode call.
  Its code is the `kona.so` routine at 0x522a90 with relocation-only differences.
- `konInitDIDState` in `konad.so` at 0x457290 (**established**) sets the starting kind of every display id in the screen's id table.
  Relocated offsets are the only difference from the `kona.so` code at 0x457600.
- `konChangeDIDCmap` in `konad.so` at 0x44ed90 (**established**) rewrites one display id's colour-map field after a window changes colormap.
  It follows the `kona.so` build at 0x44f1d0, except that at 0x44efd0 token 306 is written as a word at FIFO offset 0 before its payload.
- `kon_drawDid` in `konad.so` at 0x471770 (**established**) loads the full-screen clip, position and drawing state used to paint display-id planes.
  Compared with the `kona.so` build at 0x4715c0 the three commands change form only:
  tokens 299, 298 and 297 are stored as data words at FIFO offset 0 (0x4718e8, 0x471930, 0x47196c), ahead of unchanged payloads.
- `SetDIDMode` in `konad.so` at 0x50ac90 (**established**) loads an id's mode into the hardware when the holding window's mode is new to the id.
  The `kona.so` code at 0x501220 is the same apart from relocated offsets.
- `SetDIDMode` in `konas.so` at 0x50ac70 (**established**) performs the same once-per-mode hardware load of a display id.
  It too matches the `kona.so` code at 0x501220 modulo relocation, and `konal.so` shares this build.
- `UpdateDIDMode` in `konad.so` at 0x5864e0 (**established**) copies a window's current mode into its id's table entry after a swap.
  Relocated words aside it is the `kona.so` function at 0x57a0e0.
- `nfbSetDidFlags` in `konad.so` at 0x4fcd60 (**established**) marks which windows of a tree need their own display id rather than the parent's.
  The `kona.so` build at 0x4f3dd0 differs from it only in global-table and address words.
- `cmapDID` in `konad.so` at 0x4b8c00 (**established**) returns the display id paired with a window's colour map.
  It matches the `kona.so` routine at 0x4b05f0 except for relocated address halves.

#### Colour maps and gamma

- `konInitializeColormap` in `konad.so` at 0x53f6a0 (**established**) gives a new colormap its hardware private block and first entries.
  Its instructions are those of the `kona.so` build at 0x535530 with relocated words.
- `konUninstallColormap` in `konad.so` at 0x5120e0 (**established**) keeps true-colour maps installed and passes every other map to the frame-buffer layer's uninstall.
  It equals the `kona.so` code at 0x508660 once relocations are set aside.
- `konUninstallColormap` in `konas.so` at 0x5120c0 (**established**) makes the same split between true-colour and other colormaps on uninstall.
  It also matches the `kona.so` code at 0x508660, and `konal.so` holds the same code.
- `nfbCreateHWColormap` in `konad.so` at 0x4f0550 (**established**) allocates the block recording a colormap's hardware slot and allocated cells.
  Only relocated words separate it from the `kona.so` function at 0x4e75e0.
- `nfbDestroyHWColormap` in `konad.so` at 0x579d70 (**established**) frees a colormap's hardware private block and clears the pointer to it.
  It is the `kona.so` build at 0x56d9c0 apart from relocated words.
- `nfbInstallHWColormap` in `konad.so` at 0x450930 (**established**) gives a colormap a hardware slot in its visual's group and calls the group's install hook.
  The `kona.so` code at 0x450d60 has the same words modulo relocation.
- `nfbUninstallHWColormap` in `konad.so` at 0x573770 (**established**) takes a colormap off its hardware slot and queues that slot for reuse next.
  Relocated offsets are its only difference from the `kona.so` build at 0x5673b0.
- `nfbUninstallHWColormap` in `konas.so` at 0x573780 (**established**) frees the hardware slot of an uninstalled colormap in the same way.
  It matches the `kona.so` build at 0x5673b0 too, and `konal.so` has this code.
- `nfbHWColormapScreenInit` in `konad.so` at 0x4fc010 (**established**) copies the module's slot and group tables into the pipe record when a screen starts.
  It matches the `kona.so` function at 0x4f3090 apart from relocated words.
- `nfbHWColormapScreenClose` in `konad.so` at 0x4fb240 (**established**) frees the slot table and then the group table when a screen closes.
  The `kona.so` build at 0x4f22c0 is the same code with other global-table offsets.
- `konReloadAllGammas` in `konad.so` at 0x463d00 (**established**) reloads every video channel's gamma tables from their host shadows.
  Its words match the `kona.so` routine at 0x464060 except for relocated addresses.
- `konStoreColors` in `konad.so` at 0x52db70 (**established**) stores individual colormap cells on the pipe, one load command per changed cell.
  Its four sends store token 302 as a data word at FIFO offset 0 before the map address, the count and the colour word.
  The colour words go out as direct stores, so it makes one call where the `kona.so` build at 0x523cf0 makes three.
- `konInstallColormap` in `konad.so` at 0x570830 (**established**) loads a whole colormap into the XMAP colour memory when the map is installed.
  It stores token 302 once as a data word at FIFO offset 0, then the map address, the entry count and one packed word per entry.
  The `kona.so` build at 0x564710 folds the token into the store address and moves the entries through its copy helpers.
- `konInstallColormap` in `konas.so` at 0x570850 (**established**) performs the same whole-map load into the colour memory.
  It differs from the `konad.so` code in one relocated address half only, and `konal.so` holds this code.
- `konInstall24DCColormap` in `konad.so` at 0x476e50 (**established**) loads the direct-colour tables of a 24-bit visual into the gamma memory.
  It stores token 303 as a data word at FIFO offset 0, then the table address and the count 512.
  The table words follow as plain stores; the `kona.so` build at 0x476c40 makes 48 calls of a 32-word copy helper instead.
- `konStore24DCColors` in `konad.so` at 0x4ac860 (**established**) writes changed direct-colour entries into the gamma memory, red, green and blue in turn.
  The token 303 is stored as a data word at FIFO offset 0 at each of its three sends.
  Those sends are at 0x4acb08, 0x4acc70 and 0x4acdd8.
  The `kona.so` build at 0x4a45e0 folds the token into the store address instead.

#### Swap, blanking and stereo

- `konInitiateBufferSwap` in `konad.so` at 0x4b8610 (**established**) starts a buffer swap for a list of windows and asks the manager to perform it.
  It is the `kona.so` function at 0x4b0000 with relocation-only changes.
- `rrmMGRSwapBuf` in `konad.so` at 0x54b990 (**established**) sends one window's swap to the kernel through the manager swap call.
  The `kona.so` build at 0x540ac0 differs only in relocated words.
- `konTempBlankAllChannels` in `konad.so` at 0x465430 (**established**) blanks or unblanks all video channels with a single display request.
  Apart from relocated words it is the `kona.so` code at 0x4657a0.
- `konBlankScreen` in `konad.so` at 0x4d5f70 (**established**) is the screen-saver entry that blanks or restores every channel.
  It matches the `kona.so` routine at 0x4cd370 once relocations are set aside.
- `konaSetStereoMode` in `konad.so` at 0x4aaeb0 (**established**) updates the kernel's cursor rectangle for a stereo switch and then changes the frame-buffer layer's mode.
  Its instructions equal the `kona.so` build at 0x4a2c10 modulo relocated words.
- `nfbSetStereoMode` in `konad.so` at 0x452650 (**established**) switches a screen into or out of stereo by exchanging its drawing procedures and hooks.
  Relocated words are its only difference from the `kona.so` function at 0x4529c0.
- `nfbSetStereoMode` in `konas.so` at 0x452650 (**established**) makes the same stereo switch of screen procedures and hooks.
  It also matches the `kona.so` function at 0x4529c0, and `konal.so` carries this code.

#### Windows

- `konCreateWindow` in `konad.so` at 0x4fcfc0 (**established**) sets up a window's private data and sends the XMAP configuration flag 1 when the window needs a hardware window id.
  At 0x4fd190 it stores token 307 and then the flag as data words at FIFO offset 0.
  Where the `kona.so` build at 0x4f4030 next stores the flush word, this build loads one word through screen private +16 and discards it.
- `konDestroyWindow` in `konad.so` at 0x467320 (**established**) tears down a window's state and sends a zero configuration flag when the last such window goes.
  At 0x4673ec it stores token 307 and then 0 as data words at FIFO offset 0, with no flush word after them.
  The `kona.so` build at 0x467440 folds the token into the store address and adds the flush.

#### Video formats and combinations

- `vfmtReadKonaVideoFormat` in `konad.so` at 0x431140 (**established**) reads a video format file into the record the LoadFormat request is built from.
  It matches the `kona.so` build at 0x4319c0 word for word apart from relocated offsets.
- `vfmtFindFormatFile` in `konad.so` at 0x42af50 (**established**) locates a video format file by name below the graphics root.
  Only relocated words differ from the `kona.so` build at 0x42b7d0.
- `vfmtFindKonaFormatFile` in `konad.so` at 0x42b1a0 (**established**) searches this board's own format directory through the generic finder.
  It is the `kona.so` code at 0x42ba20 apart from relocated addresses.
- `vfmtFindCmpFormatFile` in `konad.so` at 0x42b1f0 (**established**) tries the two compositor format directories in turn.
  The `kona.so` routine at 0x42ba70 has the same words modulo relocation.
- `vfmtFindOdyFormatFile` in `konad.so` at 0x42b290 (**established**) looks up a format in the Odyssey board's directory.
  It matches the `kona.so` function at 0x42bb10 apart from relocated addresses.
- `vfmtFindSG2FormatFile` in `konad.so` at 0x42b2e0 (**established**) looks up a format among the SG2 video option's files.
  Its code is the `kona.so` build at 0x42bb60 with its addresses relocated.
- `vfmtFindKonaCombinationFile` in `konad.so` at 0x42b330 (**established**) resolves a combination file name for this board.
  It equals the `kona.so` code at 0x42bbb0 once relocated words are set aside.
- `vfmtFindCmpCombinationFile` in `konad.so` at 0x42b470 (**established**) resolves a compositor combination file name.
  The `kona.so` build at 0x42bcf0 differs from it only in relocated offsets.
- `vfmtGetLastKonaFileStat` in `konad.so` at 0x42b6e0 (**established**) copies out the file status saved by the last successful find.
  It matches the `kona.so` routine at 0x42bf60 apart from relocation.
- `vfmtReadKonaCombination` in `konad.so` at 0x42cd70 (**established**) reads a combination file into the record the display set-up loads.
  Relocated words are the only difference from the `kona.so` function at 0x42d5f0.
- `vfmtWriteKonaCombination` in `konad.so` at 0x42dfc0 (**established**) writes a combination record back out as a symbol database.
  Its instructions are the `kona.so` build at 0x42e840 with relocated offsets and string addresses.
- `vfmtUpdateFormatInfoInCombination` in `konad.so` at 0x428aa0 (**established**) refreshes each channel's format copy inside a combination from its file.
  It matches the `kona.so` code at 0x429320 modulo relocation.
- `vfmtActualHWToKonaTarget` in `konad.so` at 0x4277f0 (**established**) describes the installed pipe as a target for validation.
  The `kona.so` function at 0x428070 has the same instruction stream apart from relocated words.
- `vfmtIsKonaCombinationValidForTarget` in `konad.so` at 0x427d10 (**established**) checks a combination against a target and reports each failure.
  It is the `kona.so` build at 0x428590 with relocation-only differences.
- `vfmtIsKonaCombinationValidForActualHW` in `konad.so` at 0x428770 (**established**) validates a combination against the pipe actually present, caching that target.
  Relocated words aside it equals the `kona.so` routine at 0x428ff0.
- `vfmtResolvePixelDepth` in `konad.so` at 0x427040 (**established**) turns a combination's requested pixel depth into one the target can hold.
  It matches the `kona.so` code at 0x4278c0 except for relocated words.
- `vfmtSwapRateCloseEnough` in `konad.so` at 0x428810 (**established**) treats two swap rates as equal when they differ by under one percent.
  It is the `kona.so` function at 0x429090; the constant is loaded from another address.
- `vfmtSyncFormatFrameRatesCompatible` in `konad.so` at 0x4288a0 (**established**) decides whether a channel can lock to a sync format's frame rate.
  The `kona.so` build at 0x429120 differs from it only in relocated words.

## X server module: drawing commands

What `kona.so` (IRIX 6.5.30m) sends for X drawing, from a scan of every store whose address is the module's FIFO pointer plus 32 x token in the `kon` group of `software/xsgi/asm/kona/`, with the module's own debug format strings (read at their `.rodata` addresses) naming the fields. The framing is the one in [How the module writes commands](#how-the-module-writes-commands): the first payload word goes to the token's address, the rest to offset 0. Word counts in the table are what the module stores; "map" is the routed entry's count field (bits 6-10) in [software/ucode/icu_map.tsv](../ucode/icu_map.tsv), and "ARM" the payload reads of the ARM handler ([software/ucode/arm1_handlers.tsv](../ucode/arm1_handlers.tsv)). Labels as above.

**Established** (bulk words). Runs of more than three words go through the module's copy helpers `KonSeqData3_ip19` to `KonSeqData11_ip19` (0x4275c0 onwards): helper N copies N words from the source, using 64-bit stores (`sdc1`) to a second FIFO pointer kept at +12 of the module's screen record when the source is 8-byte aligned, and one 32-bit store to the ordinary pointer first when it is not. So a 64-bit store to the FIFO carries two payload words, high word first.

**Established** (the remainder rule). A drawing call cuts its list into the largest fixed form (24, 6 or 1 items); a remainder of r items (2 to 6) goes as `X_DATAk` carrying the first r - 1 items' words, then the single form with the last item. So `X_DATA1`-`X_DATA10` are never sent alone: they preload words that the next drawing command consumes. **Inferred** from that order and from the routed entries of `X_DATA*` landing on the register-write handler ([software/ucode/arm1.md](../ucode/arm1.md)).

| Token | Words | Emitted by | Payload |
|---|---|---|---|
| `X_LOADPOS` 0x12a | 4 (map 4) | `kon_loadGC` and 42 drawing functions before they draw | drawable x, y (halfwords +8, +10 of the `DrawableRec`), width, height (+12, +14); 0, 0, screen width, height for screen-wide work |
| `X_LOADGC` 0x129 | 13 (map 13) | `kon_loadGC` and inlined copies (16 functions) | in order, named by the module's debug print: `fg_h`, `fg_l`, `bg_h`, `bg_l`, `wmask0`, `wmask1`, `cfg`, `op`, `addr`, `bl`, `ifmt`, `colfmt`, `pixfmt`, taken from words +52, +56, +60, +64, +20, +24, +4, +8, +12, +16, +0, +28, +32 of the GC private record. **Inferred** from the names: foreground and background colour in two halves each, two write-mask words, configuration, raster op, framebuffer address, a buffer selector and three format words |
| `X_LOADCLIP` 0x12b | 5 (map 5) | `kon_loadClipRects` and 39 others | the number of clip rectangles n, then the first rectangle's x1, y1, x2, y2 one per word; rectangles 2 to n follow as `X_BDATA4` 0x145, four words each. A whole-screen clip is 1, 0, 0, width, height |
| `X_LOADSCISSOR` 0x12d | 4 (map 4) | the glyph routines (`kon*GlyphBlt*`, 14) | x, y of the glyph box, then its width and height (computed as differences) |
| `X_POINT` 0x14c, `X_POINT6`, `X_POINT24` | 1, 6, 24 (map 1, 6, 24) | `konPolyPoint`, `konDrawPoints`, `konBresS`, `konBresD`, `konSlowLineSS` | one word per point, the X `DDXPointRec` (x in the high half, y in the low) |
| `X_POINT_R` 0x14f, `X_POINT6_R` | 1, 6 | `konPolyPoint` for `CoordModePrevious` | the same with each point relative to the previous one |
| `X_BGPOINT` 0x15f, `X_BGPOINT6`, `X_BGPOINT24` | 1, 6, 24 | `konBresD` (double-dashed lines) | points drawn in the background colour, same format |
| `X_RECT` 0x152, `X_RECT6` | 2, 12 (map 2, 12) | `konPolyFillRectSolid`, `...StippledC`, `...TiledCAccel` | two words per rectangle, the X `xRectangle`: (x, y) then (width, height) |
| `X_BOX` 0x154, `X_BOX6` | 2, 12 (map 2, 12) | `konDrawSolidRects`, `konSolidFillRects`, `konValidateClip`, the glyph routines | two words per box, (x1, y1) then (x2, y2) halfword pairs ([clips](#clips-the-validate-clip-resource-manager-request-1011) has the clip-repaint form) |
| `X_SPANS` 0x156, `X_SPANS2`, `X_SPANS6` | 3, 5, 13 (map 3, 5, 13) | `konFillSpansSolid`, `...StippledC`, `...TiledCAccel`, `konSolidFS` | the span count (1, 2 or 6), then per span its start point word and its width word |
| `X_SEGMENT` 0x159, `X_SEGMENT6` | 2, 12 | `X_SEGMENT`: `konSegmentSS`, `konSolidZeroSeg`, one command per segment. `X_SEGMENT6`: no sender (no store at pointer + 0x2b40 in `kona.so`; the 0x2b40 constants in `konad.so`, `konal.so` and `konas.so` are in `nfbShmCreatePixmap`, not FIFO stores) | two point words per segment |
| `X_LINE` 0x15b, `X_LINE6`, `X_LINE_R`, `X_LINE6_R` | 1, 7, 2, 7 (map 2, 12, 2, 12) | `konLineSS` | a polyline: `X_LINE6` sends one point at the token address and six more through `KonSeqData6_ip19`, then advances six points, so consecutive commands share their end point. The map's count of 12 is two per segment; the module sends seven words, and that is the software's contract: the X server draws polylines this way on every pipe, so an `X_LINE6` command is seven words (the first at the token address) and the next word is a new command. The single forms follow the same rule: `X_LINE` is one word (the remainder's last point, after a data preload of the others) and `X_LINE_R` two, which differ from the map's 2 for the absolute form ([the word-count note](../../evidence/findings/gc-word4-polylines.md#word-counts-of-tokens-0x15b-0x15e)). The entry is a pass-form entry (`GFX` clear, count in bits 6-10, [software/ucode/arm1.md](../ucode/arm1.md#entry-format)); its distributor entry (table B 0xb0, word 0x251 of the Kona stack quad-strip assembly unit) loads strip state 9 and fetches, so the distributor walks the points through the strip code. **Inferred:** the count field states the end points the distributor hands on (six segments, two each), not the words it takes in. What the field does in the host interface for this entry is **unknown: no shipped software or published source depends on it** beyond the seven-word framing; routes tried: `konLineSS` and the copy helpers in all four X modules, the token map, the distributor listing ([software/ucode/ged_listing.txt](../ucode/ged_listing.txt)), kpm's table and the 6.5.5 headers |
| `X_PIX_SETUP` 0x136 | 7 (ARM 7) | `kon_loadNfbBitmapGC`, `kon_loadNfbOpaqueBitmapGC`, the glyph routines | 0, 4, a word from the GC private (+84), 0, two values computed by the caller, 0. **Established** (firmware `arm_x_pix_setup` 0x0c034ac4, `X_PixSetupGE` 0x0c035244): word 0 bits 0-3 are the transfer kind (0 framebuffer only; nonzero also sets up the texture-filter chip with `CompTF`; 2 also loads the packer from word 2 with `XSetPacker`) and bit 4 a flag kept at r8 + 0x934; word 1 picks the engine output module, 4 = `mmo_X_pixout_4` with the `cvmg_tbm` conversion (the bitmap and glyph case the module always sends) and 5 = `mmo_X_DrawBitmapOpaque` with a 16- or 32-bit conversion chosen by word 2 (1 or 2); words 1, 2 and 3 go to `X_PixSetupGE`, words 4 and 5 are kept at r8 + 0x904 and 0x908, word 6 goes to `CompGedReg` for the distributor set-up. The firmware caches words 0, 1, 2, 4 and 5 (r8 + 0x938-0x948) and `x_initpixels` invalidates the cache. **Unknown:** what words 3-6 mean to the engine and distributor beyond being passed on (what would settle it: following each of the four words through the engine's pixel-output module and the distributor set-up routine in the listings to the first instruction that reads it) |
| `X_PIX_WRITE` 0x139 | 1 + data | the glyph routines, `konDrawOpaqueMonoImage` | a header word, then the bitmap words; `arm_x_pix_write` reads the header and moves the data with the pass-through counter |
| `X_PIX_FINISH` 0x13a | 1 (ARM 1) | the same callers | 0 |
| `X_PIX_COPY` 0x137 | 4 (ARM 4) | `konCopyRect` | source x, source y, destination x, destination y, from the halfwords the debug print names `xs`, `ys`, `xd`, `yd`; width and height come from the preceding `X_LOADPOS`/`X_LOADCLIP` |
| `X_PIX_READ` 0x138 | 2 (ARM 2) | `konReadImage`, `konReadFBBlock` | the x and y of the block (**established**, `arm_x_pix_read` 0x0c0349e4: it subtracts y from the screen height to flip it, and takes the width and height from words 4 and 5 of the preceding `X_PIX_SETUP`, kept at r8 + 0x904 and 0x908); small reads return through the read-back area ("konReadImage/rdata"), larger ones go through the DMA-read Kona driver request ("DOING DMA!"); followed by `WG_FLUSH_1` with 0xdeadbeef |
| `X_LOADSTIPPLE` 0x13c, `X_STORESTIPPLE` 0x13d, `X_ROTATESTIPPLE` 0x13e | 1, 3, 3 (ARM 1, 3, 3) | `kon_loadStipple`, `kon_loadTilePlane`, `kon_loadCachedStipple` | a stipple cache slot; store adds the pattern's size and then the pattern words; rotate adds the x and y origin (halfwords +96, +98 of the GC private). The debug print "store/load %d, rot %d,%d" names them |
| `X_LOADCMAP` 0x12e | 2 + n (ARM 2) | `konStoreColors`, `konInstallColormap` | colour-map address, a count n (1 per entry in `konStoreColors`), then n colour words. `arm_x_loadcmap` writes the address to display-bus register 0x118, peeks the count through port + 0x40 and moves the colour words to register 0x119 with the pass-through counter (0x4000000 \| n) |
| `X_LOADGAMMA` 0x12f | 4, or 2 + 1024 | `konStore24DCColors`, `konInstall24DCColormap`; the unnamed function at 0x498ff0 | per colour (red, green, blue in turn): the gamma address (base + 2 x index + 0x1000 x colour), the count 2, and the 12-bit value twice; or 0xdeadfeed, 1024 and 1024 packed 10:10:10 words for the external gamma RAM. Both forms are read in [dg.md](../../devices/dg/README.md#colour-maps-and-gamma-tables) |
| `X_LOADXMAP_CONFIG` 0x133 | 1 (ARM 1) | `konCreateWindow` (1), `konDestroyWindow` (0), each followed by `WG_FLUSH_1` with 0xdeadbeef | one flag word, which `arm_x_loadxmap_config` writes to XMAP register 9 (bus address 0x109; [dg.md](../../devices/dg/README.md#xmap-registers-memories-and-the-fast-list)) |
| `WG_FLUSH_1` 0x1ff | 1 | after cursor loads, read-backs and the X-map configuration | 0xdeadbeef. **Established** (`konal.so` `konCreateWindow` 0x147d1ac, `setmon` `KonFlush` 0x10032ef0): only `kona.so` and `KonFlush`'s board-type-19 path send it; `konal.so` and `konad.so` load and discard a word through screen private +16 at the same eleven places. **Inferred** from the board names (above): those two are the modules IP27 and IP35 servers load, so on those hosts the pipe never sees the token and its handler `arm_wg_flush_1`, a branch to `arm_badcmd`, never runs ([software/ucode/arm1_firmware.md](../ucode/arm1_firmware.md#refused-tokens-beginend-divert-bad-command)) |

**Established, negative.** No store in the module addresses `X_INIT` (0x128), `X_LOADCLIP_ARM` (0x12c), `X_POINT24_R` (0x151) or any `X_UNUSED*` token; the scan's hits for them were string addresses that happen to be multiples of 32. **Unknown: no shipped software or published source depends on it:** no shipped program sends `X_INIT`. Routes tried, by constant 0x128 or token-address offset 0x2500 in the code: the X modules `kona.so`, `konal.so`, `konas.so`, `konad.so` and `konavis.so`, the X server `Xsgi`, `libGL` and `libGLcore` of every ABI, the kernel objects (`kona.a`, whose 25 command tokens are in [kona_kern.h](../kernel/include/kona_kern.h)), `irsaudit`, `kpm`, `ireeprom`, `hyper`, `ircombine`, `hyperpipeinfo` and the textport routines of `kona_tport.o`. The firmware's handler `arm_x_init` sends `mgeb_XContextInitialize`, which `arm_slop` also sends, so the X-side engine state is set up without the token. `arm_x_init` runs only if the token ever arrives.

## Texel download: header word 7 and the load-scissor bit

**Established** (`DoDrawPixelsOrTexels`, `software/opengl/asm/KONA/kon_pixel.s`, the function at 0x0d951aa0; word numbers are those of the table in [RM.h](../../devices/rm/RM.h), counted from 1 after the token, so the word the question calls "header word 6" counted from 0 is word 7, the flag copied from the descriptor at +0xb4). The function reads the descriptor's +0xb4 first.

- **Word 7 is nonzero** (the callers store 1 there when bit 2 of the context word at +31580 is set, 0 otherwise: five sites in the Kona GL driver pixel assembly unit store it, at least four others store 0): for a texel download (bit 7 of the descriptor word at +24 set) the function ORs 4 into the descriptor's flags word at +0x84, which is header word 18, the image of `TGTML_TEXLD_MISC`; bit 2 of that register is the load-scissor enable (`LDSCISSOREN`, RM.h). When bit 5 of the global word at +1796 is also set it ORs 0x8000 (the interlaced-download bit). The header is then sent through `__glKonSendData` with its 20 words copied from the descriptor.
- **Word 7 is zero**: the flags word is sent as `subloadLevel` built it, with only the interlaced bit added when that global bit is set. The function does not set bit 2 on this path.

So bit 2 of header word 18 is **forced on whenever word 7 is nonzero on a texel download**, and it is off when word 7 is zero. **Established** (the Kona GL driver texture API assembly unit, `subloadLevel` 0x0d96be7c onward, 6.5.30m): `subloadLevel` builds the flags word from the size code (internal-format entry +8), the bank bit pair, the tiling bits and the S and T bits of `st_bits_per_page`, and none of its paths ORs in 4, so the bit comes only from `DoDrawPixelsOrTexels`. The note in `RM.h` that the single-image path sets bit 2 does not match this code. The context bit behind word 7 is bit 2 of ctx+31580, which `GetBoardInfo` (called from `MakeCurrentRead`) sets and no store in the library clears; the pixel and texel callers still store 0 in word 7 on their non-DMA paths (the Kona GL driver pixel assembly unit stores at lines 1307, 2983, 3004, 7735 and 8057 of the listing), so on those paths bit 2 of word 18 is clear too. Bit 2 of word 18 and word 7 are therefore equal on every path.

**Established** since, from the firmware side ([ge.md](../../devices/ge/README.md#pixel-images-hp_drawpixels-hp_drawtexels-hp_bitmap)): `arm_drawtexels` reads word 7 as the "image arrives by DMA" flag. When it is nonzero the handler ends the command at word 20 and leaves the image to the next `HP_DO_IDMA`; libGLcore's `__glKonSendData` takes the same decision from the same descriptor word (+180), sending the image inline when it is 0 and through ioctl 10001 otherwise. So the context bit at +31580 selects DMA delivery, and the load-scissor enable in word 18 rides on it. Word 10, the texel format id, is a row number into the firmware's format tables ([ge.md](../../devices/ge/README.md#the-texel-format-id)).

## Texture functions

The entries below read the texture routines of the N32 `libGLcore` (`usr/gfx/arch/IP27KONA32/libGLcore.so`, 6.5.30m; the IP35KONA32 build has the same code) from `software/opengl/asm/texture/`. Every entry names its function's address and the listing it comes from. Offsets after a pointer name are byte offsets into the structure that pointer addresses.

### Texture hash, texture-table cache and numeric helpers

The texture hash is a record that starts 40 bytes into the shared texture state (`__glkon_InitSharedTextureState` passes state + 40 to `__glKonInitTextureHash`): a chain pointer at +0, a use counter at +4 and 4096 entries of three words (value, use stamp, key) from +8. Key 0 marks an empty entry. The function-pointer triple at +0xc008 (find), +0xc00c (delete) and +0xc010 (insert) holds the fast or the slow set. Overflow blocks of 0x8004 bytes (a next pointer, then 4096 value and key word pairs) hang off the chain pointer.

#### `allocHashBlock`

`allocHashBlock` at 0x0d978100 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it allocates one empty overflow block for the texture hash and returns it.
It asks the allocator hook at offset 0 of the context whose pointer sits at process address 0x1010 for 0x8004 bytes.
It then clears the block's next pointer and each of its 4096 key words, four per loop pass.
It is called from `insertHashBlock`.

#### `wrapHashCacheLRU`

`wrapHashCacheLRU` at 0x0d978170 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it ages every use stamp in the texture hash table so the stamps cannot overflow.
It walks the 4096 table entries two at a time from hash +8 and, for each entry whose key word is not 0, subtracts 0x20000000 from the stamp, setting it to 0 if the result is negative.
It does not touch the use counter at hash +4.
`__glKonHashFindTexSlow` calls it when that counter reaches 0x40000000.

#### `insertHashBlock`

`insertHashBlock` at 0x0d9781f0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it stores a key and value pair in the chain of overflow blocks of the texture hash.
Its arguments are the hash, the key and the value.
For each block in the chain it probes up to eight slots, starting at slot (key & 0xfff) and stepping back by ((key >> n) << 6) | (key & 0x3f), where n is 6 for the first block and grows by one per block, and takes the first slot whose key word is 0.
When no block has a free slot it calls `allocHashBlock`, links the new block at the end of the chain (or as the first block) and uses slot (key & 0xfff).
It writes the value at slot offset 4 and the key at offset 8, each slot being eight bytes from the block start.

#### `__glKonHashFindTexFast`

`__glKonHashFindTexFast` at 0x0d978300 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it looks a texture name up in the texture hash table and returns its object, or 0.
It tests the home entry (key & 0xfff) and then four more entries, each reached by subtracting ((key >> 12) << 6) | (key & 0x3f) from the previous index modulo 4096; the match is on the key word at entry +8.
It never looks at overflow blocks, which is correct only while the table has not overflowed.

#### `__glKonHashFindTexSlow`

`__glKonHashFindTexSlow` at 0x0d978380 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it finds a texture object by name in the hash table or its overflow chain and stamps its use.
It probes the table as the fast version does.
A table hit gets the next value of the use counter at hash +4 as its stamp, and the counter is incremented; when the counter reaches 0x40000000 the function calls `wrapHashCacheLRU`.
On a table miss it searches each overflow block with eight probes; a chain hit is promoted into the table slot among the four probed that holds the smallest stamp, the displaced entry is put back with `insertHashBlock` unless its key is negative, and the chain slot's key is cleared.
It returns the object, or 0 when the key is nowhere.

#### `__glKonHashDeleteTexFast`

`__glKonHashDeleteTexFast` at 0x0d9785d0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it removes a texture name from the table-only hash and returns the object that was stored.
It probes five entries exactly as `__glKonHashFindTexFast` does and clears the key word of the match, leaving the value word in place.
It returns 0 when the key is not found.

#### `__glKonHashDeleteTexSlow`

`__glKonHashDeleteTexSlow` at 0x0d978650 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it removes a texture name from the table or from the overflow chain and returns the stored object.
It probes the table first, clearing the key word of a match at entry +8.
Failing that it probes each chain block with eight probes and clears the key of the matching slot at slot offset 8.
It returns 0 when the key is absent.

#### `__glKonHashInsertTexSlow`

`__glKonHashInsertTexSlow` at 0x0d978740 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it adds a texture object to the hash, spilling to the overflow chain when the table probes are full.
The home entry is used if its key word is 0; otherwise four more entries are tried with the usual step.
Each entry written gets the key, the value and the current use counter from hash +4 as its stamp.
When all five probes are taken it calls `insertHashBlock` with the same key and value.

#### `__glKonHashInsertTexFast`

`__glKonHashInsertTexFast` at 0x0d978820 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it adds a texture object to the table-only hash and switches the hash to the slow functions when the table overflows.
It tries five entries as the slow version does, writing the key and value (no stamp) into the first free one.
When all five are taken it calls `insertHashBlock` and then stores the addresses of `__glKonHashFindTexSlow`, `__glKonHashDeleteTexSlow` and `__glKonHashInsertTexSlow` into the triple at hash +0xc008, +0xc00c and +0xc010.

#### `__glKonInitTextureHash`

`__glKonInitTextureHash` at 0x0d978920 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it selects the fast lookup functions for a new texture hash.
It stores the addresses of `__glKonHashFindTexFast`, `__glKonHashDeleteTexFast` and `__glKonHashInsertTexFast` at hash +0xc008, +0xc00c and +0xc010, the hash being the argument.
It does not clear the table.
`__glkon_InitSharedTextureState` calls it with the shared state plus 40.

#### `__glKonFreeTextures`

`__glKonFreeTextures` at 0x0d978950 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it frees every texture object that the texture hash still holds.
It takes the context and the hash.
Every table entry whose key word is not 0 has its value passed to `__glKonFreeTextureObj`, and so does every used slot (key not 0) in each overflow block of the chain.
It frees only the objects; the chain blocks go in `__glKonFreeTextureHash`.

#### `__glKonFreeTextureHash`

`__glKonFreeTextureHash` at 0x0d978a30 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it releases the overflow blocks of a texture hash.
It follows the chain pointer at hash +0 and calls the context's free hook (offset 12) on each block in turn.
It does not free the table itself or any texture object.

### Texture-table cache

The cache keeps a recency-ordered list of texture-table entries. Its record has a list head pointer at +0, a free-node pool at +4, the number of nodes made at +8, a node limit at +12, the nodes per allocation block at +16, hooks for insert (+20), delete (+24), recency update (+28) and eviction (+32), an embedded list head node at +36 and a table of allocated blocks at +52. A node is four words: payload, serial number, previous and next.

#### `ARMTexCacheUnused2Used`

`ARMTexCacheUnused2Used` at 0x0d978a90 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it takes a node from the free pool of the texture-table cache and puts it at the recent end of the list.
It stores the payload argument in the node and relinks it just before the list head node, so the head's next pointer leads to the oldest entry.
It never allocates; the caller checks the pool first.

#### `__glKonUpdateARMTexCacheLRU`

`__glKonUpdateARMTexCacheLRU` at 0x0d978ad0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it marks a texture-table cache node as most recently used.
It unlinks the node from its place in the list and relinks it directly before the head node.
The cache installs it as its recency hook (+28) once the node limit is reached.

#### `__glKonInsertARMTexCacheSlow`

`__glKonInsertARMTexCacheSlow` at 0x0d978b20 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it adds an entry to a full texture-table cache by evicting the oldest one.
With free nodes in the pool it only moves one to the list through `ARMTexCacheUnused2Used`.
With none it takes the oldest node (the head's next), calls the eviction hook at +32 on that node's payload, moves the node to the recent end with `__glKonUpdateARMTexCacheLRU` and stores the new payload in it.

#### `__glKonInsertARMTexCacheFast`

`__glKonInsertARMTexCacheFast` at 0x0d978bc0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it adds an entry to a texture-table cache that is still growing, one allocation block at a time.
When the pool is empty and the node count at +8 is below the limit at +12 it grows the block table by one pointer, allocates a block of (count at +16) nodes of 16 bytes through the context hooks at +8 and +0, numbers the nodes with the running count and chains them into the pool.
It then calls `ARMTexCacheUnused2Used` with the payload.
When the pool is still empty it swaps the insert hook to `__glKonInsertARMTexCacheSlow` and the recency hook to `__glKonUpdateARMTexCacheLRU`, then calls the slow insert.

#### `__glKonDeleteARMTexCache`

`__glKonDeleteARMTexCache` at 0x0d978d70 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it removes one node from the texture-table cache list and returns it to the free pool.
It unlinks the node from its neighbours and pushes it on the pool at +4.
It does not call the eviction hook.

#### `__glKonInitARMTexCache`

`__glKonInitARMTexCache` at 0x0d978da0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets up an empty texture-table cache with a node limit, a block size and an eviction hook.
Arguments are the cache, the limit (stored at +12), the nodes per block (+16) and the eviction function (+32).
It clears the pool, the node count and the block table pointer, links the embedded head node at +36 to itself, and installs `__glKonInsertARMTexCacheFast`, `__glKonDeleteARMTexCache` and `__glNop` as the insert, delete and recency hooks.

#### `__glKonInvalidateARMTexCache`

`__glKonInvalidateARMTexCache` at 0x0d978df0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it empties the texture-table cache, telling the owner of each entry first.
For every node on the list, oldest first, it calls the eviction hook at +32 with the node's payload.
It then splices the whole list onto the free pool and links the head node to itself.

#### `__glKonFreeARMTexCache`

`__glKonFreeARMTexCache` at 0x0d978e90 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it releases the memory of a texture-table cache.
It divides the node count at +8 by the block size at +16, frees that many blocks named in the block table at +52 and then the table, all through the context's free hook at offset 12.
It does not call the eviction hook.

### Numeric helpers

#### `__glKonTexChecksum`

`__glKonTexChecksum` at 0x0d978f60 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it folds an array of 32-bit words into one 32-bit key that `addTexTableUsage` compares before it compares contents.
The arguments are the word count and the array.
Counting back from the last word, the last word, the one two before it and so on are XORed together, the words between are added, and the result is the XOR of the sum and of that XOR.
It returns 0 for a count of 0.

#### `__glKonTexQuickSortPairs`

`__glKonTexQuickSortPairs` at 0x0d979020 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sorts an array of float pairs into increasing order of the first float, carrying the second along.
Its arguments are the array, the first index and the last index; each pair is eight bytes.
It takes the middle element's first float as the pivot, partitions with an inward scan from both ends, swaps the two words of out-of-place pairs, and recurses on both halves.
`addTexTableUsage` uses it on the control points of the detail and sharpen functions.

#### `__glKonTexEvaluateCubicSpline`

`__glKonTexEvaluateCubicSpline` at 0x0d979510 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it evaluates a cubic spline, given its second derivatives, at an increasing list of x positions.
The arguments are the query array and the result array, the query count, then the knot x values, the knot y values, the second derivatives and the knot count.
Queries below the first knot get the first y value.
Queries between knots k and k+1 use A = (x1 - x)/h and B = 1 - A with h the knot spacing, and return A*y0 + B*y1 + (h*h/6)*((A*A*A - A)*z0 + (B*B*B - B)*z1).
Queries past the last knot get the last y value.

#### `__glKonTexExp2NegX64`

`__glKonTexExp2NegX64` at 0x0d9796d0 (the Kona GL driver texture utility assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns 64 times 2 to the power of a non-positive float, plus 0.5, from two small tables.
It splits the argument x into the integer n (truncated toward zero) and the fraction f = n - x.
The first table, at data address 0x0da85848, holds 64, 32, 16, 8, 4, 2, 1 for n = 0 down to -6, and the value is 0 for n below -6.
The second table, `__glKonExp2From0ToM1` at 0x0da7f280, holds 2 to the power of -i/88 for i from 0 to 87 and is indexed with the truncation of f times 88.
The result is the first table value times the second table value, plus 0.5.

### Texture memory

The allocator manages two memory units, numbered 0 and 1, held in the shared texture state. Each unit has a 192-byte record at state +0xc130 + 192 x unit: three cached run start nodes (+0x00), three cached maximum run sizes (+0x0c), a stale flag for those caches (+0x18), 30 free-list bucket heads (+0x1c), a bucket occupancy mask (+0x94), the largest free bank (+0x98), the total free size (+0x9c), a pointer to the unit's list sentinel (+0xa0) and the sentinel node itself (+0xa4). Banks are 28-byte nodes: previous (+0) and next (+4) in address order, priority (+8, -1 for a free bank, -2 for the sentinel), start offset (+12), size (+16), and, for a used bank, the owning texture object at +20; a free bank uses +20 and +24 as previous and next links in a single list ordered by increasing size, which the bucket heads index. A texture object keeps its banks at +264 (unit 0) and +268 (unit 1), their start offsets at +276 and +280, its unit order at +284 and its priority at +8. The state also holds the end offset of memory obtained so far (+0xc2b8) and the list of resident objects (+0xc2b0).

#### `globalAlloc`

`globalAlloc` at 0x0d975a80 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it obtains or grows the texture memory pool from the kernel and returns the result of that request.
Its arguments are the shared state and a count, which it multiplies by 64 to get bytes.
If bit 1 of the state's first word is clear it calls `__glkon_texture_mem_alloc` and sets the bit; otherwise it calls `__glkon_texture_mem_realloc` with the state word at +0xc2b8 plus the count, times 64.
When an environment variable that it reads once is set, it also prints a size to stderr.
`__glKonTexAlloc` calls it when the pool must grow.

#### `whichBucket`

`whichBucket` at 0x0d975b50 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it maps a bank size to one of 30 half-octave free-list buckets.
It finds the position n of the highest set bit of the size and returns 2 x (n - 5) plus the next lower bit, capped at 29; sizes below 32 and the size 0 give bucket 0.
`findFreeBank` and `insertFreeBank` use it to index the bucket heads of a unit record.

#### `findFreeBank`

`findFreeBank` at 0x0d975bf0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the smallest free bank of a memory unit that is at least a given size, or 0.
Its arguments are the shared state, the unit and the size.
It starts at the head of the bucket that `whichBucket` gives and follows the next links (+24) while the bank is too small.
If the bucket has no such bank it uses the occupancy mask at unit-record +0x94 to take the head of the next higher non-empty bucket, whose banks all exceed the bucket's range.

#### `deleteFreeBank`

`deleteFreeBank` at 0x0d975d30 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it takes a free bank out of a unit's size-ordered free list.
It calls `whichBucket` for the bank's size, joins the bank's neighbours, and if the bank headed its bucket it moves the head to the next bank when that is in the same bucket and otherwise empties the bucket and clears its mask bit.
It also moves the largest-bank pointer (+0x98) back to the previous bank when the deleted one was the largest, and subtracts the bank's size from the unit's total free size at +0x9c.

#### `sizeNoGreaterPriorityInterval`

`sizeNoGreaterPriorityInterval` at 0x0d975e70 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it adds up the sizes of the unbroken stretch of banks around one bank whose priorities do not exceed a limit.
Its arguments are the bank, the priority limit and the unit's sentinel.
It sums the bank and each previous bank (+0) while their priority is at most the limit and the sentinel is not reached, and then each next bank (+4) the same way.
It returns the total.

#### `insertFreeBank`

`insertFreeBank` at 0x0d975f30 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it puts a free bank into a unit's size-ordered free list and refreshes the cached run sizes.
Its arguments are the state, the unit, the bank and a priority level.
It calls `whichBucket`, links the bank in place by increasing size (starting its search at the bucket head, or from the last bank of the nearest lower non-empty bucket when its bucket was empty), sets the bucket's mask bit when needed, updates the largest-bank pointer and adds the size to the total at +0x9c.
Unless the stale flag at +0x18 is already set it then calls `sizeNoGreaterPriorityInterval` for each priority from the given level down to 0 and sets the flag at the first level where the run reaches the cached maximum.

#### `inInterval`

`inInterval` at 0x0d9761a0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it tells whether the banks from a start node to the end of a unit's list add up to less than a size.
Its arguments are the start node, the size and the sentinel.
It returns 1 if it reaches the sentinel before the running total of sizes reaches the argument, and 0 if the size is 0 or less or the total reaches it first.

#### `maxSizeNoGreaterPriorityInterval`

`maxSizeNoGreaterPriorityInterval` at 0x0d9761e0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the size of the longest unbroken stretch of banks in a unit whose priorities are at most a limit.
Its arguments are the state, the unit and the limit.
It walks the unit's list from the sentinel's next bank, adds sizes while the priority stays within the limit, and keeps the largest total, with a bank above the limit ending a stretch.

#### `validateMaxIntervalBank`

`validateMaxIntervalBank` at 0x0d976290 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it recomputes the three cached maximum run sizes of a unit and clears the stale flag.
For the priority limits 0, 1 and 2 it walks the list once, finds the longest stretch of banks whose priority is at most the limit, and stores its first node at unit-record +0x00, +0x04 or +0x08 and its size at +0x0c, +0x10 or +0x14.
It then writes 0 to the flag at +0x18.

#### `validateBank`

`validateBank` at 0x0d9764c0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it is a consistency check of a unit's free-bank bookkeeping that prints a message when a rule fails.
If the stale flag is set it first calls `validateMaxIntervalBank`.
It then checks that the occupancy mask has the bit for the largest free bank's bucket, printing "bank %d: bogus free bucket mask 0x%x, max size = %d", and that the cached run sizes match `maxSizeNoGreaterPriorityInterval` for each of the priorities 0, 1 and 2, printing "bogus priority interval on bank %d".
`__glKonTexAlloc` calls it for both units before it allocates.

#### `stealNoGreaterPriorityBank`

`stealNoGreaterPriorityBank` at 0x0d976650 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it picks the stretch of banks of a unit to evict so that a request of a given size fits, and returns the stretch's first bank.
Its arguments are the state, the unit, the priority limit and the size.
When the largest free bank is already big enough it just returns `findFreeBank` for the size.
Otherwise it slides a window over the unit's banks, keeping at most the banks of priority within the limit in a ring of node and last-use pairs (512 bytes at first, doubled by copying when full), and among the windows whose sizes total at least the request it keeps the one with the lowest use stamp, read from the owner's word at +288 that `updateTexUsage` writes (**inferred** from the comparison against the best stamp so far, which starts at 0x40000000).
When no window fits it prints "bogus stolen memory for %d in bank %d with priority %d" and calls `exit` with 1.

#### `getMemNode`

`getMemNode` at 0x0d976c40 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns a spare 28-byte bank node from the state's node pool, making more when the pool is empty.
The pool head is at state +0xc2d0, the table of node blocks at +0xc2c8 and the block count at +0xc2cc.
When the pool is empty it grows the table by one entry with the context's reallocation hook (+8), allocates 7168 bytes (256 nodes) with the allocation hook (+0), links the nodes through their next fields and ends the chain with 0.

#### `putMemNode`

`putMemNode` at 0x0d976d60 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns a bank node to the state's node pool.
It stores the pool head (state +0xc2d0) in the node's next field and makes the node the new head.

#### `releaseMemBank`

`releaseMemBank` at 0x0d976d80 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it turns a used bank back into free space and merges it with free neighbours.
Its arguments are the state, the unit and the bank.
It sets the bank's priority to -1, and for the previous bank (+0) and the next bank (+4), when either is free (priority -1), it deletes that neighbour from the free list with `deleteFreeBank`, folds its size and start into the bank and returns the node with `putMemNode`.
It ends by calling `insertFreeBank` with the old priority of the bank as the level.

#### `addFreeBank`

`addFreeBank` at 0x0d976ee0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it adds newly obtained memory of a given size to the end of a unit's bank list.
If the last bank (the sentinel's previous) is free it removes that bank from the free list with `deleteFreeBank` and grows it; otherwise it takes a node with `getMemNode`, links it at the end as a free bank of the size at the state's end offset (+0xc2b8).
It then calls `insertFreeBank` for the bank with level 2 and returns the bank.

#### `getFreeBank`

`getFreeBank` at 0x0d976ff0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it carves a used bank of a requested size for a texture object out of a stretch of banks chosen by the stealing search.
Its arguments are the state, the unit, the first bank of the stretch, the size and the object.
If the unit's cached run sizes are stale it checks the stretch with `inInterval` and marks them valid.
It then visits banks of the stretch until their sizes total at least the request.
A free bank is removed from the free list with `deleteFreeBank`.
A used bank's owner is taken off the resident list at state +0xc2b0 (clearing bit 20 of the owner's word at +32), the owner's pointer for this unit is cleared, the owner is passed to `__glKonFreeAllocedTexObjBank`, and when that returns non-zero the owner's bank in the other unit goes through `releaseMemBank`.
Each visited node goes back with `putMemNode`.
It then takes a node from `getMemNode`, makes it a used bank of the size with the object's priority and the object as owner, stores it at object +264 or +268 with its start offset at +276 or +280, and turns any remainder into a free bank with `insertFreeBank`.

#### `__glKonTexAlloc`

`__glKonTexAlloc` at 0x0d9773e0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it gives a texture object its banks in the two texture memory units, evicting lower-priority objects and growing the pool when needed.
Its arguments are the shared state, the object and a mode word.
The needed byte counts are object +0 and +4, one per unit, and the unit order is the stored one at +284 when bit 1 of the mode is set and otherwise follows from comparing the two sizes and the two units' total free sizes (+0x9c).
It calls `validateBank` for both units.
For each unit it takes a start bank from `findFreeBank` when the unit's largest free bank is big enough and from `stealNoGreaterPriorityBank` when it is not, and then calls `getFreeBank` to make the bank.
When even evicting cannot supply the size it calls `globalAlloc` to enlarge the pool (checking that the pool size minus the end offset is a multiple of 1024 and printing a message if not), `addFreeBank` for both units and tries again.
On success it stores the unit order at +284, sets bit 20 of the word at +32, links the object at the head of the resident list at state +0xc2b0 through its +292 and +296 fields, and returns 0; it returns -1 when memory cannot be found.

#### `__glKonTexFree`

`__glKonTexFree` at 0x0d977ce0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it gives back a texture object's memory and takes it off the resident list.
If bit 20 of the word at +32 is set it unlinks the object from the list at state +0xc2b0 (fields +292 and +296) and clears the bit.
It then calls `releaseMemBank` for the bank at +264 (unit 0) and at +268 (unit 1) when they are not 0, and clears those fields.
It returns 0.
`__glKonFreeTextureObj` and `deallocTexture` call it.

#### `__glKonTexUpdatePriority`

`__glKonTexUpdatePriority` at 0x0d977dd0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it changes a texture object's priority and the priority recorded in its banks.
Its arguments are the state, the object and the new priority; it returns at once when the object already has it.
For the banks at object +264 and +268 it writes the priority into the bank's word at +8 and, unless the unit's stale flag at record +0x18 is set, sets that flag when the change could alter a cached run: for a rise it tests the cached run start with `inInterval`, and for a fall it compares `sizeNoGreaterPriorityInterval` of the bank against the cached maximum.
It finally writes the priority at object +8.
`__glKonTexParameter` and `__glkonim_PrioritizeTexturesEXT` call it.

#### `__glKonInitTextureMemory`

`__glKonInitTextureMemory` at 0x0d977fc0 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets the texture memory state to empty with the given maximum size.
The second argument is stored at state +0xc2b4 (the per-unit capacity, checked in `__glKonTexAlloc`), the counters at +0xc2ac to +0xc2b0 and the pool words are cleared, and for each unit the sentinel node (at record +0xa4) is linked to itself with priority -2, heads the first free-list bucket, is the largest bank, and the stale and mask fields are set up (mask 1).
`__glkon_InitSharedTextureState` calls it.

#### `__glKonFreeTextureMemory`

`__glKonFreeTextureMemory` at 0x0d978050 (the Kona GL driver texture memory assembly unit, `IP27KONA32/libGLcore.so`): **Established** it releases all bank-node memory of the texture state.
It frees each of the node blocks named in the table at state +0xc2c8 (their count is at +0xc2cc) and then the table, using the context's free hook at offset 12.
`__glkon_FreeTextureState` calls it.

### Image entry points: immediate mode, display-list compile and playback

Three families share one backend. The `__glkonim_` functions run a call at once, the `__glkonlc_` functions are the display-list compile versions that either run a proxy call at once or copy the call and its image into a list record, and the `__glkonle_` functions replay a record. All of them end in `__glkonim_TexImage` or `__glkonim_TexSubImage`, which no entry here describes.

#### `__glkonim_TexImage2D`

`__glkonim_TexImage2D` at 0x0d971470 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it checks the target of a two-dimensional image call and forwards the call with a depth of 1.
It accepts 0xde1 (the 2D texture), 0x8095 (the 2D detail texture) and 0x8064 (the 2D proxy); any other target gives `__glSetError` with 0x500, the invalid-enumeration code.
It then calls `__glkonim_TexImage`, adding the depth argument 1 and passing the image pointer from its stack.

#### `__glkonim_CopyTexSubImage3DEXT`

`__glkonim_CopyTexSubImage3DEXT` at 0x0d972810 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it allows the three-dimensional copy-sub-image call only for the 3D texture target.
A target other than 0x806f gives `__glSetError` with 0x500.
Otherwise it forwards its arguments and the stack argument to `__glkonim_CopyTexSubImage`.
- `__glkonim_CopyTexSubImage3DEXT` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xd97372c, 124 bytes): **Established.** It accepts only target 0x806f, reports 0x500 otherwise, moves its stack-resident arguments into the O32 outgoing frame, and forwards the three-dimensional request to `__glkonim_CopyTexSubImage`.

#### `__glkonlc_TexImage`

`__glkonlc_TexImage` at 0x0d975410 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it records a texture-image call and a copy of its pixels in a display list.
The record is allocated with `__glSPDlalloc` for the image size plus 0x28 bytes, with the list opcode 0xd0.
Its words hold the target (+0), level (+4), internal format (+8), width (+12), height (+16), depth (+20), border (+24), pixel format (+28), pixel type (+32) and the padded image size (+36), and the pixels follow at +0x28, copied by `__glFillImage3D`.
For the three proxy targets 0x8063, 0x8064 and 0x8070 it stores no pixels, and otherwise it sizes the image with `__glImageSize3D` rounded up to a multiple of 4.

#### `__glkonlc_TexImage1D`

`__glkonlc_TexImage1D` at 0x0d975540 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it compiles a one-dimensional image call into a display list.
Target 0xde0 goes to `__glkonlc_TexImage` with height 1 and depth 1.
The 1D proxy target 0x8063 is executed at once by `__glkonim_TexImage`; any other target calls `__glsplc_InvalidEnum`.

#### `__glkonlc_TexImage2D`

`__glkonlc_TexImage2D` at 0x0d975620 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it compiles a two-dimensional image call into a display list.
Target 0xde1 goes to `__glkonlc_TexImage` with depth 1.
The 2D proxy target 0x8064 is executed at once through `__glkonim_TexImage`, and any other target calls `__glsplc_InvalidEnum`.

#### `__glkonlc_TexImage3DEXT`

`__glkonlc_TexImage3DEXT` at 0x0d975700 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it compiles a three-dimensional image call into a display list.
Target 0x806f is recorded by `__glkonlc_TexImage` with all of its dimensions.
The 3D proxy target 0x8070 is executed at once by `__glkonim_TexImage`, and any other target calls `__glsplc_InvalidEnum`.

#### `__glkonle_TexImage`

`__glkonle_TexImage` at 0x0d9757d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it plays back one recorded texture-image call and returns the address of the next list record.
Between `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` it calls `__glkonim_TexImage` with the ten words of the record and the pixels at +0x28.
It returns the record address plus 0x28 plus the padded image size at +36.

#### `__glkonle_TexSubImage1DEXT`

`__glkonle_TexSubImage1DEXT` at 0x0d975870 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it plays back one recorded one-dimensional sub-image call and returns the address of the next list record.
Between `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` it calls `__glkonim_TexSubImage` with the target, level, x offset and width from the record, with the y and z offsets 0 and the height and depth 1, and the pixels at +0x1c.
It returns the record address plus 0x1c plus the padded size at +24.

#### `__glkonle_TexSubImage2DEXT`

`__glkonle_TexSubImage2DEXT` at 0x0d975920 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it plays back one recorded two-dimensional sub-image call and returns the address of the next record.
It calls `__glkonim_TexSubImage` between the `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` calls, with the z offset 0 and the depth 1 added to the fields of the record and the pixels at +0x24.
The next record starts at the record address plus 0x24 plus the padded size at +32.

#### `__glkonle_TexSubImage3DEXT`

`__glkonle_TexSubImage3DEXT` at 0x0d9759d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it plays back one recorded three-dimensional sub-image call and returns the address of the next record.
It calls `__glkonim_TexSubImage` between the `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` calls with every field of the record and the pixels at +0x2c.
The next record starts at the record address plus 0x2c plus the padded size at +40.

### Shared texture-function tables and the SGIS function calls

The shared texture state has a record at +0xc074 whose first 56 bytes are a 16-entry texture-table cache record (the layout described under the cache above) and whose slots at +56, +60 and +64 head three lists of shared function curves that texture objects point to: kind 0 holds the 129 filter weights of `TexFilterFuncSGIS`, kind 1 the detail control points and kind 2 the sharpen control points. A list node is 40 bytes: kind (+0), a copy of the data (+4), the item count (+8), the key from `__glKonTexChecksum` (+12), a user-array capacity (+24) and fill (+28), the user array (+20), and previous and next links (+32 and +36). A texture object records the node it uses for kind k at +300 + 4k and its position in that node's user array at +312 + 4k. The object's current-target index is 0 for the 2D detail target 0x8095, 1 for 0xde0, 2 for 0xde1 and 3 for 0x806f; the context keeps it at +31640 and the object pointers for the four indices from +31664.

#### `targetIndex`

`targetIndex` at 0x0d965e00 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it turns a texture target enumeration into a small index from 0 to 3.
It returns 1 for 0xde0, 2 for 0xde1, 3 for 0x806f, 0 for 0x8095, and -1 for any other value.

#### `getS0p7`

`getS0p7` at 0x0d9650a0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it converts a float into a signed 8-bit fraction with seven fractional bits.
It multiplies the argument by 128, truncates, clamps the result to the range -128 to 127 and returns the low eight bits.

#### `getS2p7`

`getS2p7` at 0x0d9650d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it packs a float into a ten-bit word made of an eight-bit mantissa and a two-bit exponent.
It computes (argument x 512 + 2) >> 2 as an integer, which is the argument times 128 rounded, clamps that to -1024 through 1023, and shifts it right until it fits -128 to 127, counting the shifts as the exponent e (0 to 3).
The result is the mantissa's low byte shifted left by 2 ORed with e, so the value represented is mantissa x 2^e / 128.

#### `getTexTableUsage`

`getTexTableUsage` at 0x0d965570 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it copies a texture object's shared function data back out for a get call.
Its arguments are the table state, the object, the kind and an output buffer; the node is the object's pointer at +300 + 4 x kind.
For kind 0 it `bcopy`s the item count words.
For kinds 1 and 2 it writes pairs (x, y) in reverse of the stored order, last stored point first, from the node's x array and the y array that follows it.

#### `addTexTableUsage`

`addTexTableUsage` at 0x0d965630 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it attaches a texture object to the shared list node that holds identical function data, making a node when none matches.
Its arguments are the table state, the object, the kind, the input array and the item count.
It copies the input (count words for kind 0, 2 x count words for kinds 1 and 2) into a buffer from the context's allocator.
For kinds 1 and 2 it calls `__glKonTexQuickSortPairs`, removes repeated x values, and stores the points as all x values then all y values.
It computes `__glKonTexChecksum` of the words and searches the kind's list for a node with the same count and key and equal bytes by `bcmp`.
On a match it frees its copy, doubles the node's user array when full, appends the object, and records the node and the slot at object +300 + 4k and +312 + 4k.
Otherwise it makes a 40-byte node holding the data, with a four-entry user array that holds the object, and links it just after the list head.
`initTexture` and the three SGIS function calls call it.

#### `initTexTables`

`initTexTables` at 0x0d965c70 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it makes the three shared function lists empty and sets up the cache next to them.
For each of the three kinds it stores the address of a list head node (at +68, +108 and +148 from the table base) in the table's pointer slots at +56, +60 and +64, links each head node to itself, and puts -1 in its count.
It then jumps to `__glKonInitARMTexCache` with the base, a limit of 16 nodes, 8 per block and `stealARMTableCacheCallback` as the eviction hook.

#### `freeTexTables`

`freeTexTables` at 0x0d965cd0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it frees every shared function node and then the cache beside the lists.
For each of the three lists it walks the nodes after the head and frees, with the context's free hook at offset 12, each node's user array (+20), its data copy (+4) and the node.
It ends with a jump to `__glKonFreeARMTexCache` for the cache record at the start of the table.

#### `initARMTexCache`

`initARMTexCache` at 0x0d965da0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it starts the texture-table cache of a shared state with room for 512 entries.
It jumps to `__glKonInitARMTexCache` with a limit of 512 nodes, 32 nodes per block and `freeARMTexCache` as the eviction hook.
The record it sets up lies at state +0xc03c, and its nodes hold texture objects.

#### `updateTexUsage`

`updateTexUsage` at 0x0d965dc0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it records that a texture object was just used and moves its cache entry to the recent end.
Its arguments are the shared state and the object.
It stores the state's use counter (the word at state +0xc2bc) in the object's word at +288, adds 1 to the counter and clears bit 17 of the object's flags at +32.
It then jumps to the recency hook (offset 28 of the cache record at state +0xc03c) with the entry the object holds at +272.

#### `isLodInvalid`

`isLodInvalid` at 0x0d965e50 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it says whether a level number is out of range for a target index.
It returns 1 for a negative level, for a level of 17 or more with index 1, 2, 4 or 5, for a level of 12 or more with index 3 or 6, and for any non-zero level with index 0.
Otherwise it returns 0.

#### `__glkonim_DetailTexFuncSGIS`

`__glkonim_DetailTexFuncSGIS` at 0x0d9733e0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets the detail function of the bound 2D texture from a list of control points.
Its arguments are the target, the point count and the points.
An error is raised through `__glSetError` for the word at process address 0x1018 being 1 (0x502), a target other than 0xde1 (0x500) and a count below 2 (0x501).
Otherwise it calls `subtractTexTableUsage` for the object at context +31672 and `addTexTableUsage` with kind 1, and, when the object's word at +16 is 1 and bit 24 of its flags at +32 is set, it invalidates the texture-table cache entry and, if the context word at +31636 is 2, calls `bindTexTable` and the object's hook at +256.

#### `__glkonim_GetDetailTexFuncSGIS`

`__glkonim_GetDetailTexFuncSGIS` at 0x0d973570 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the detail function control points of the bound 2D texture.
It raises 0x502 when the word at process address 0x1018 is 1 and 0x500 for a target other than 0xde1.
Otherwise it calls `getTexTableUsage` with kind 1 for the object at context +31672 and the caller's buffer.

#### `__glkonim_SharpenTexFuncSGIS`

`__glkonim_SharpenTexFuncSGIS` at 0x0d973600 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets the sharpen function of the texture bound for a 1D, 2D or 3D target from control points.
It raises 0x502 when the word at 0x1018 is 1 and 0x501 for a count below 2; the target is converted with `targetIndex` unless it matches the context's current one, and an index outside 1 to 3 raises 0x500.
Otherwise it calls `subtractTexTableUsage` and `addTexTableUsage` with kind 2 for the object at context +31664 + 4 x index, and, when the object's word at +16 is 2 and its target index equals the context word at +31636, it refreshes the object with `bindTexTable` and its hook at +256.

#### `__glkonim_GetSharpenTexFuncSGIS`

`__glkonim_GetSharpenTexFuncSGIS` at 0x0d9737e0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the sharpen function control points of the texture bound for a 1D, 2D or 3D target.
It raises 0x502 when the word at 0x1018 is 1, converts the target with `targetIndex` unless it matches the current one, and raises 0x500 for an index outside 1 to 3.
Otherwise it calls `getTexTableUsage` with kind 2 for the object at context +31664 + 4 x index.

#### `__glkonim_TexFilterFuncSGIS`

`__glkonim_TexFilterFuncSGIS` at 0x0d9738d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets the four-tap filter weights of the texture bound for a 1D or 2D target.
Its arguments are the target, the filter enumeration (only 0x8146 is accepted), the weight count and the weights.
It raises 0x502 when the word at 0x1018 is 1, 0x501 when the count is not 129 and 0x500 for an index other than 1 or 2 or a filter other than 0x8146.
Otherwise it calls `subtractTexTableUsage` and `addTexTableUsage` with kind 0 and 129 weights for the object at context +31664 + 4 x index, and when the object's word at +16 is 0 and its target index equals the context word at +31636 it refreshes the object with `bindTexTable` and its hook at +256.

#### `__glkonim_GetTexFilterFuncSGIS`

`__glkonim_GetTexFilterFuncSGIS` at 0x0d973aa0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the four-tap filter weights of the texture bound for a 1D or 2D target.
It raises 0x502 when the word at 0x1018 is 1, converts the target with `targetIndex` unless it matches the current one, and raises 0x500 for an index other than 1 or 2 or a filter other than 0x8146.
Otherwise it calls `getTexTableUsage` with kind 0 for the object at context +31664 + 4 x index.

### Texture levels, uploads and read-back

A texture object keeps its mipmap levels as 32-entry bit masks and level records. The mask at +36 marks defined levels, +40 and +44 mark levels that are in texture memory, +48 marks levels whose host copy is current and +52 marks levels whose border has been filled. The record for level n is a pointer at +124 + 4n whose words are the host image pointer (+0), internal format row (+4), width (+8), height (+12), depth (+16) and border (+20). The object's base level is at +24 and its last level at +20, and its tiling kind is at +12.

#### `tileinfo`

`tileinfo` at 0x0d96ad30 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the log2 tile extents for a texture object's tiling kind.
It reads the kind from object +12 and writes three values through its pointer arguments, in the order s, t, r: kinds 0 and 4 give 3, 2, 0, kind 1 gives 3, 2, 1, kind 2 gives 3, 1, 1 and kind 3 gives 5, 3, 0.
Other kinds leave the three values unwritten.

#### `subloadClipLevel`

`subloadClipLevel` at 0x0d96bba0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it picks the upload routine for one level of a texture that may be a clip-map.
When the clip-map word at object +436 is 0 it always calls `subloadSimple`.
Otherwise a level above the value at +348 is not loaded at all, a level above the breakpoint at +404 goes to `subloadPyramidLevel`, and the rest go to `subloadSimple`.

#### `subloadBorderedLevel`

`subloadBorderedLevel` at 0x0d96adc0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it uploads a rectangle of a level whose offsets may start in the border, as up to four `subloadSimple` calls.
A negative x or y offset is split off: the part at offsets below 0 and the interior are uploaded separately, with the dimension of the border strip taken from the negated offset.
Around those calls it saves the pixel-store state with `__glKonPushState`, and sets the unpack row length (0xcf2), skip rows (0xcf3) and skip pixels (0xcf4) with `__glkonim_PixelStorei` so each piece reads the right part of the caller's image, and it restores the state with `__glKonPopState`.

#### `subcopyBorderedLevel`

`subcopyBorderedLevel` at 0x0d96b090 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it is the copy-from-framebuffer counterpart of the bordered upload, again as up to four `subloadSimple` calls.
It splits a rectangle with a negative x or y offset into the border strips and the interior, as `subloadBorderedLevel` does, and shifts the source position in the request (the words at +36 and +40) by the part already handled.
It does not touch the pixel-store state.

#### `subloadPyramidLevel`

`subloadPyramidLevel` at 0x0d96b2f0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it uploads one level of a clip-map in several `subloadSimple` pieces so that a wrapped region lands in the right place.
It reads the unpack row length, skip rows and skip pixels with `__glkonim_GetIntegerv` (0xcf2, 0xcf3, 0xcf4), compares the region against the clip size at object +408, and when the region crosses the clip boundary splits it into several pieces whose offsets are reduced modulo that size, setting the skip values with `__glkonim_PixelStorei` before each piece and restoring them at the end.
`subloadClipLevel` calls it.

#### `subgetSimple`

`subgetSimple` at 0x0d96c4d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it reads texels of one level back from the pipe into host memory.
It fills a request record with the start coordinates (+52, +56, +68), the inclusive end coordinates (+60, +64, +72), the format and type words from its arguments and two words from the structure it is given, and calls `__glkonReadTexels3D`.
It then clears bit 17 of the object's flags at +32.

#### `getLevel`

`getLevel` at 0x0d96c570 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it reads a whole level of a texture object back to host memory.
It takes the level record's width, height and depth, rounds each log2 with `log2` against the minimum tile size from `tileinfo`, builds the texture-memory address words from the object's address table at +252 (choosing by the tiling kind and by the level's parity against +284), and calls `subgetSimple`.
When the object has a border (the byte at +400) it raises the pack skip pixels and skip rows (0xd04 and 0xd03) by one and, if the pack row length is 0, sets it, through `__glkonim_GetIntegerv` and `__glkonim_PixelStorei`, and restores them afterwards.
When a clip-map is set it calls `setClipmapRegisters` first.

#### `copyBackLods`

`copyBackLods` at 0x0d96cbb0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it copies levels of one parity back from texture memory to host memory before they are dropped.
Bit 0 of its mode argument selects odd levels and bit 1 even levels.
For each of the 32 levels selected that is defined (+36) and in texture memory (+40), it allocates the host image with `allocLevelImage` and reads the pixels with `getLevel` (as 16-bit values, type 0x1403) unless the host copy is already current (+48), bracketing the read with `__glKonSetNoModeState`, then marks the host copy current and clears the level from the masks at +40 and +44.
`freeTexture` calls it with both parities.

#### `downloadLods`

`downloadLods` at 0x0d96d3f0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sends every level of an object that is not yet in texture memory to the pipe.
When the object has a border it first runs `fillBorderColorLevel` for each level not in the mask at +52, with the pixel-store state saved by `__glKonPushState`, reset by `__glKonDefaultState` and restored by `__glKonPopState`.
It then calls `subloadLevel` for each level not in the mask at +44, reading the host copy as 16-bit values (type 0x1403), updates the masks at +40, +44 and +48, and frees the host image through the context's free hook.

#### `fillBorderColorLevel`

`fillBorderColorLevel` at 0x0d96cee0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it writes the border colour into the border texels of one level.
It marks the level in the mask at +52, finds the level's size from the object's dimensions at +332, +336 and +340 less the level number, and takes the colour as the 16 bytes at object +384 (four floats).
For each border strip it builds an array of RGBA float pixels with `repPixels` (format 0x1908, type 0x1406), uploads it through `subloadSimple` with the tiling and address words of the level, and frees the array through the context's hook at offset 12.

#### `repPixels`

`repPixels` at 0x0d96ce50 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it makes an array of one 16-byte pixel repeated a number of times.
Its arguments are the two 64-bit halves of the pixel and the count.
It allocates 16 bytes per copy from the context's allocator (hook at offset 0), fills the copies from the last to the first, and returns the array.

#### `whichComps`

`whichComps` at 0x0d96d6d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it finds the row of an internal format in the format table.
It scans the 67 rows of 16 bytes of `intern_format_arr3` and returns the index of the first row whose first word equals the argument, or -1 when none does.

#### `storage2Comp`

`storage2Comp` at 0x0d96d710 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it looks up a value for a storage format in a small table.
It scans the 11 rows of 28 bytes of `storage_format_arr7` for a row whose first word equals its first argument and returns that row's word at +4 + 4 x the second argument, or -1 when no row matches.

#### `validDimension`

`validDimension` at 0x0d96c9f0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it says whether a texture dimension is legal for a given border.
The dimension must not exceed 2048, or 4096 when the environment variable that `getenv` reads on the first call is set, and the dimension less twice the border must be a power of two.
It returns 1 for a legal size and 0 otherwise.

#### `areLodsConsistent`

`areLodsConsistent` at 0x0d96cae0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it checks that the defined levels of an object fit together.
It walks the level records from the base level (+24) to the last level (+20), skips empty ones, and calls `unmatchObjLevel` for each; it returns 0 at the first level that does not match and 1 otherwise.

#### `unmatchObjLevel`

`unmatchObjLevel` at 0x0d965ed0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns 1 when a level record does not have the size, border and format that the object's base level implies.
It derives the expected width, height and depth of the level from the log2 sizes at object +332, +336 and +340 minus the level number (a negative difference means 1), less twice the border byte at +400, and compares them with the record's words at +8, +12 and +16 (depth only when the target at +376 is 3).
It also compares the record's border (+20) with that byte and its format row (+4) with the word at +28.
The min-filter word at +364 being one of 0x8170 or 0x844d to 0x844f, the clip-map filters, changes the test to use the clip-map levels at +404 and +408.

#### `allocLevelImage`

`allocLevelImage` at 0x0d9660d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it gives a level record a fresh host image buffer.
It frees any image at record +0 with the context's hook at offset 12, then allocates width x height x depth x 2 bytes shifted left by the format's texel size code (word +8 of its row in `intern_format_arr3`) with the hook at offset 0.
On failure it calls `__glSetError` with 0x505 (out of memory).

#### `guessBaseLevel`

`guessBaseLevel` at 0x0d966840 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns the level that should act as an object's base level.
When bit 19 of the flags at +32 is clear it returns the stored base level at +24.
Otherwise it returns +24 if that level is defined in the mask at +36, or else the lowest defined level.

#### `setDetailFilter`

`setDetailFilter` at 0x0d966190 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets the detail-texture fields in the object's word at +64.
When the base level at +24 is not 0 it sets bits 5 to 7 of that word to 1 and leaves it.
Otherwise the word at +372 chooses bits 5 to 7: 4 for 0x2100, 3 for 0x104 and no change for others; the word at +360 then clears bits 26 and 27 and sets bit 27 for 0x8098 or bit 26 for 0x8099, leaving both clear for 0x8097 and doing nothing for other values.

#### `__glkonim_ProcImage`

`__glkonim_ProcImage` at 0x0d964c90 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it runs an image through the texture upload path and reads the converted texels back into a level record.
Unless bit 16 of the context word at +31632 is already set (which makes it return at once) it sets that bit, calls `allocLevelImage` for the level, generates a scratch texture with `__glkonim_GenTexturesEXT`, binds it for the target, sets the minification filter (0x2801) to linear (0x2601), uploads the caller's image with `__glkonim_TexImage`, and reads it back as 16-bit values with `getLevel` into the level's host buffer.
It then rebinds the previous texture, deletes the scratch one with `__glkonim_DeleteTexturesEXT`, sets the level's bit in the mask at object +48 and clears bit 16 of the context word.
- `__glkonim_ProcImage` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xd964cc0, 592 bytes): **Established.** Unless bit 16 is already set in the context word at 0x1010+31632, it allocates the level image, creates and binds one temporary texture, sets 0x2801 to 0x2601, uploads through `__glkonim_TexImage`, reads the converted level with `getLevel`, restores the no-mode state, rebinds the previous texture, deletes the temporary name, sets the level's host-copy bit and clears bit 16.

#### `undefineTextureLevel`

`undefineTextureLevel` at 0x0d9700d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it removes one level from a texture object.
If the level is defined it frees its host image, clears the level from the masks at +36, +40, +44 and +48, and, when no level is left, calls `deallocTexture` and zeroes the flags at +32.
It then points the object's hooks at +256 and +260 at `slowBindTexture` and `__glNop`, clears bit 24 of the flags, and if `computeActiveTarget` names a bound object it calls that object's hook at +256 so it is rebound.

#### `deallocTexture`

`deallocTexture` at 0x0d96e150 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it releases an object's texture memory and its table slot.
It calls `__glKonTexFree` for the object and, when the object holds a texture-table cache entry (+272), calls `freeARMTexCache` for it.

#### `freeTexture`

`freeTexture` at 0x0d96e1a0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it saves an object's levels to host memory and then drops its texture memory.
If the object has a bank in either memory unit (+264 or +268) it calls `copyBackLods` for both parities.
It then jumps to `deallocTexture`.

#### `destroyTextureObj`

`destroyTextureObj` at 0x0d96eb40 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it frees the host-side memory of a texture object.
For each of the 32 defined levels it frees the host image when the host copy is current (+48), then the level record, through the context's hook at offset 12.
It ends by jumping to the same hook for the address table at +252.

#### `validateTexture`

`validateTexture` at 0x0d96ea60 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it re-lays out a texture object after a change to its tiling kind or flags and rebinds it.
Its arguments are the context, the object, a size argument, the new tiling kind and the new flag bits.
It calls `freeTexture` with the state at context +3868, sets object +12 to the kind, sets the flags to the old flags with bit 22 cleared ORed with the new bits, and, when bit 19 of the flags is set, calls `calcObjSize` and `areLodsConsistent`.
An inconsistent object gets bits 16 and 21 set and a consistent one gets bit 16 cleared, and `slowBindTexture` is called last.

### Texture objects, deletion, attribute stack and per-context state

The context's texture state starts at context +0x7b90 (31632) with the enable word, which has bit n set for target index n. After it come the active target index at +0x7b94, the current target index at +0x7b98, the bound object pointer for each index from +0x7bb0 and the four built-in default objects of 544 bytes from +0x7bcc. Three proxy objects for the indices 4, 5 and 6 lie 0x8bc, 0xadc and 0xcfc bytes after the start of the state. An object's word at +376 is its target index, +380 its name, +120 its reference count and +272 its texture-table cache entry. The shared state pointer is at context +0x8aac.

#### `__glKonFreeTextureObj`

`__glKonFreeTextureObj` at 0x0d96f080 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it releases both the texture memory and the host memory of a texture object.
It reads the shared state from context +0x8aac, calls `__glKonTexFree` with it and the object, and then jumps to `destroyTextureObj`.

#### `__glKonDeleteTextureObj`

`__glKonDeleteTextureObj` at 0x0d96f0e0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it destroys a texture object that is no longer referenced.
It first calls `freeARMTexCache` when the object holds a cache entry (+272), then `__glKonFreeTextureObj`.
It then detaches the object from the shared function lists with `subtractTexTableUsage`: kinds 1, 2 and 0 for the target indices 1 and 2, kind 2 alone for index 3.
It ends by freeing the object with the context's free hook at offset 12.

#### `__glKonDeleteTexturesEXT`

`__glKonDeleteTexturesEXT` at 0x0d96f230 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it deletes the textures with the given names, unbinding any that are bound.
Name 0 is skipped.
For each other name it removes the object from the hash through the delete function at hash +0xc00c, and when the name is a generated one (at least 0x40004000 and below the next-name counter at state +0x1c) it appends the name to the free-name array at state +0x10, growing it by 256 entries with the context's reallocation hook (+8) when full.
If the object is the one bound for its target index it rebinds the built-in default object of that index (after `setClipmapRegisters` for the clip-map minification filters 0x8170 and 0x844d to 0x844f) and subtracts 1 from the reference count at +120; a count that is still non-zero, or an object that is not bound but still referenced, gets bit 25 of its flags at +32 set, and an unreferenced object goes to `__glKonDeleteTextureObj`.

#### `__glKonFreeAllocedTexObjBank`

`__glKonFreeAllocedTexObjBank` at 0x0d974da0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it saves an evicted object's levels and tells the caller whether both memory units of the object were given up.
It clears bit 24 of the object's flags, points the hooks at +256 and +260 at `slowBindTexture` and `__glNop`, and calls `copyBackLods`: with both parities and a return of 1 for tiling kinds 1 to 4 (word +12), and with the odd parity (mode 1) or, when its flag argument is set, the even one (mode 2) and a return of 0 for kind 0.
When the object holds a cache entry (+272) it frees it with `freeARMTexCache`.
`getFreeBank` calls it for each owner it evicts.

#### `__glKonShareTexture`

`__glKonShareTexture` at 0x0d974ec0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it makes a context use a shared texture state, creating one when none is given.
Given another context it takes that context's state from +0x8aac; otherwise it allocates 0xc2d8 bytes with the allocator hook at offset 0 and clears them.
It adds 1 to the state's share count at +4, sets bit 2 of the state's first word when the count was already 1 or more, and stores the pointer at context +0x8aac.

#### `__glKonValidateTextureState`

`__glKonValidateTextureState` at 0x0d974aa0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it prepares the texture state before drawing.
When the share count at state +4 is 2 or more, or bit 2 of the state's first word is set, it calls `__glKonInvalidateARMTexCache` on the function-node cache at state +0xc074, and with a share count of exactly 1 clears bit 2 again.
It then looks at the object bound for the current target: if the target is enabled in the word at +31632 and the object has defined levels (from +24 to +20) that are not yet all in texture memory (+40), it calls the object's bind hook at +256.

#### `__glkon_EnableTexture`

`__glkon_EnableTexture` at 0x0d972a70 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it turns one texture target on or off.
Its arguments are the target and the new state; a target other than the current one is converted with `targetIndex`, and an unrecognised one raises 0x500 through `__glSetError`.
Setting a bit in the enable word at context +31632 that was clear, or clearing one that was set, ends in a call of `slowBindTexture` for that word; clearing it first frees the object's cache entry (+272) with `freeARMTexCache`.
Nothing changes when the bit already has the requested value.

#### `__glkon_InitSharedTextureState`

`__glkon_InitSharedTextureState` at 0x0d974740 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets up a new shared texture state.
It calls `__glKonInitTextureMemory`, `__glKonInitTextureHash` with the state plus 40, `initTexTables` for the record at +0xc074 and `initARMTexCache` for the record at +0xc03c.
It then stores 0x40004000, the first generated texture name, at state +28.

#### `__glkon_InitTextureState`

`__glkon_InitTextureState` at 0x0d9748e0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets up a context's texture state and its default texture objects.
It clears the 0xf20 bytes from context +0x7b90, stores 0x40 and 0x400 at +0xe90 and +0xe8c when the context word at +0x7b9c is 0x01000000 and 0x80 and 0x800 otherwise, and stores 16 and 32 at +0x7ba0 and +0x7ba4.
It makes the shared state initialisation with `__glkon_InitSharedTextureState` the first time the state's flag bit 0 is clear, then calls `initTexture` four times for the default objects of the target indices 0 to 3, makes index 2 the current target, binds the four objects at +0x7bb0 and calls `initProxyTextures`.

#### `initProxyTextures`

`initProxyTextures` at 0x0d974850 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it makes the three proxy texture objects of a context's texture state.
It clears three 544-byte areas at offsets 0x8bc, 0xadc and 0xcfc of the state, points the state's proxy slots at +48, +52 and +56 to them, and gives them target indices 4, 5 and 6 at +376.
The indices 4, 5 and 6 are the ones `isLodInvalid` limits to 17, 17 and 12 levels.

#### `freeTextureAttrib`

`freeTextureAttrib` at 0x0d9747b0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it releases the saved texture attribute stack.
For as many passes as the entry count at +28 it calls the context's free hook (offset 12) with the word at offset 1164 of the array at +24; the array pointer is not advanced in the loop, so every pass frees that same word.
It ends by freeing the array itself through the same hook.

#### `__glkonim_AreTexturesResidentEXT`

`__glkonim_AreTexturesResidentEXT` at 0x0d96fba0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it reports which named textures have all their levels in texture memory.
A negative count or an unrecognised name raises 0x501 and the word at process address 0x1018 being 1 raises 0x502, each returning 0.
For each name it finds the object with the hash's find function at +0xc008 and writes 1 to the output byte when every level from +24 to +20 is set in the mask at +40, and 0 otherwise.
It returns 1 only if every texture was resident.
- `__glkonim_AreTexturesResidentEXT` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xd97076c, 360 bytes): **Established.** It rejects a begin or invalid name with 0x502 or 0x501 and returns zero on those paths. For each name it tests the level mask in the texture object, writes one or zero to the caller's byte array, and returns one only when every requested texture is resident.

#### `__glkonim_PrioritizeTexturesEXT`

`__glkonim_PrioritizeTexturesEXT` at 0x0d96fd30 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets the priorities of the named textures.
A negative count or an unrecognised name raises 0x501 and the word at process address 0x1018 being 1 raises 0x502.
For each name it finds the object through the hash, clamps the priority to the range 0.0 to 1.0, stores it as a float at object +328, and, when the object's target index at +376 is not negative, calls `__glKonTexUpdatePriority` with the integer part of twice the priority, which is 0, 1 or 2.
- `__glkonim_PrioritizeTexturesEXT` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xd9708d4, 420 bytes): **Established.** It rejects a begin or invalid name with 0x502 or 0x501. For each valid object it clamps the incoming priority to 0.0 through 1.0, stores it at object +328, and calls `__glKonTexUpdatePriority` with the resulting priority class when the target index is valid.

#### `__glKonPushTextureAttrib`

`__glKonPushTextureAttrib` at 0x0d974f80 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it saves the texture state on the attribute stack for a push of the texture attribute group.
The word at process address 0x1018 being 1 raises 0x502.
It allocates the stack on first use (context +0x7ba8, depth limit at +0xec0, 1172 bytes per record, depth at +0x7bac), saves the parameters of the four targets with `__glKonGetTexParams` into 160-byte parts of the record, the four bound object names, the enable word, and the point counts of the detail and sharpen functions.
A buffer made with the context's allocator holds the 129 filter weights for 1D (0xde0) and 2D (0xde1) from `__glkonim_GetTexFilterFuncSGIS`, the detail points from `__glkonim_GetDetailTexFuncSGIS` and the sharpen points from `__glkonim_GetSharpenTexFuncSGIS` for the three targets, and the depth is increased.

#### `__glKonPopTextureAttrib`

`__glKonPopTextureAttrib` at 0x0d975220 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it restores the texture state saved by the matching push.
The word at process address 0x1018 being 1 raises 0x502.
It lowers the depth at context +0x7bac, and for each of the four target indices it binds the saved texture with `__glkonim_BindTextureEXT`, restores the parameters with `__glKonSetTexParams` and the enable bit with `__glkon_EnableTexture`.
It then restores the filter weights with `__glkonim_TexFilterFuncSGIS` (129 weights each for 1D and 2D), the detail points with `__glkonim_DetailTexFuncSGIS` and the sharpen points with `__glkonim_SharpenTexFuncSGIS`, and frees the saved buffer.

### Parameters, validation, binding and layout

The parameter functions below all work on a 544-byte texture object. Besides the fields named earlier, its word at +64 holds filter and detail bits (bits 0 and 1 are a mode, bits 2 to 4 and 5 to 7 are two more fields written by `changeFilter`), +68 holds the three wrap bits at 0x1000, 0x2000 and 0x4000, +116 holds the target index in its top nibble, +252 points at the per-level address table, +360 and +364 are the magnification and minimisation filter enumerations, +401 holds the three wrap modes (two bits each), +404 and +408 hold the clip-map breakpoint level and the log2 of the clip size, and +436 is the clip-map flag. Bit 24 of the flags at +32 is set while the object is bound with the fast hooks and bit 25 is set when it was deleted while still referenced.

#### `__glkonim_TexParameteri`

`__glkonim_TexParameteri` at 0x0d9730d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets one integer texture parameter on the object bound to a target.
The word at process address 0x1018 being 1 raises 0x502.
A target other than the current one is converted with `targetIndex`, an unrecognised target raises 0x500, and a valid one becomes the current index at context +31640.
The parameter name must be one of 0x2800 to 0x2803, 0x8066, 0x8072, 0x809a, 0x809b, 0x80bf, 0x8124, 0x8125, 0x813a to 0x813d, 0x8172, 0x818e to 0x8190, 0x819a or 0x819b, otherwise it raises 0x500; the rest goes to `__glKonTexParameter`, whose result -1 raises 0x500 and -2 raises 0x501.

#### `__glkonim_TexParameteriv`

`__glkonim_TexParameteriv` at 0x0d972fb0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets a texture parameter from an integer vector.
It raises 0x502 when the word at 0x1018 is 1, converts the target with `targetIndex` unless it is the current one and raises 0x500 for an unrecognised target.
It then passes the vector to `__glKonTexParameter`, mapping a result of -1 to 0x500 and -2 to 0x501, and leaves the validation of the parameter name to that function.

#### `__glkonim_TexParameterfv`

`__glkonim_TexParameterfv` at 0x0d972ba0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it sets a texture parameter from a float vector.
It follows the same steps as the integer-vector version: error 0x502 for the word at 0x1018 being 1, `targetIndex` for a target that is not the current one with 0x500 for failure, then `__glKonTexParameter` with the float flag set, where -1 gives 0x500 and -2 gives 0x501.

#### `__glkonim_GetTexImage`

`__glkonim_GetTexImage` at 0x0d972870 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it returns one level of the bound texture to the caller's buffer, for those levels that are in texture memory but have no current host copy.
It raises 0x502 for the word at 0x1018 being 1 and 0x500 for an unrecognised target, and calls `isLodInvalid` for the level, raising 0x501 for an invalid one that is not below the clip-map value at +436.
When the level has a current host copy (+48) it prints "__glkonim_GetTexImage: proc_image not implemented" to stderr and returns.
When the level is only in texture memory (+40) it picks a component count from the format row's group word, calls `getLevel`, and then calls the object's hook at +256 so the object is rebound.
- `__glkonim_GetTexImage` (`usr/gfx/arch/IP27KONA/libGLcore.so` 0xd9737a8, 580 bytes): **Established.** It rejects a begin with 0x502, resolves the target with `targetIndex`, rejects an invalid target with 0x500 and an invalid level with 0x501, and prints a diagnostic when the level already has a host copy. For a texture-memory-only level it picks a size from the format table entry (the table word for class 1, 8 for class 2, 16 for classes 3 and 4), calls `getLevel` with it, and then calls the function at +256 of the texture object with the shared state.

#### `initTexture`

`initTexture` at 0x0d96a8d0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it resets a texture object to its defaults while keeping its identity.
It saves the target index (+376), name (+380), reference count (+120) and priority (+328), clears the 544 bytes, restores them, stores the index in the top nibble of the word at +116, applies the default parameters with `__glKonSetTexParams` and sets the priority again through `__glKonTexParameter` (0x8066) when it differs from the default.
It sets the hooks at +256 and +260 to `slowBindTexture` and `__glNop`.
Index 0 (the detail target) then gets its level range 0 to 0 and the fields +16 = 3 and +12 = 4.
Indices 1, 2 and 3 get default shared curves through `addTexTableUsage` and `bindTexTable`: sharpen (kind 2, 2 points) for 1, 2 and 3, the 129-weight filter (kind 0) for 1 and 2, and the detail curve (kind 1, 2 points) for 2.

#### `slowBindTexture`

`slowBindTexture` at 0x0d96e820 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it is the object's default bind hook, which checks that the object is ready, loads what is missing and installs the fast bind hooks.
It calls `configTexture` first.
If the layout is invalid (bit 19), a defined level is missing from the mask at +36 or a level is not in texture memory it keeps the hooks at `slowBindTexture` and `__glNop` and clears bit 24.
Otherwise it runs `downloadLods` when the object has no border and levels are missing from +52, makes a cache entry with `bindARMTexCache` when the object has none, calls `bindTexTable` unless the kind at +16 is 3, sets bit 24 and installs the fast hooks: `bind2DClipmapTexture` for the clip-map filters (unless the magnification filter is 0x8146), else a routine chosen by the tiling kind from a table, with `updateTexBindID` as the second hook.
It ends by calling the hook of the object bound for the active target, after `setShadowRegs` when its word at +508 is not 0.

#### `configTexture`

`configTexture` at 0x0d96e620 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it gives a texture object texture memory when the bits of its flags at +32 call for it.
With a non-zero mode argument, or with bit 21 clear, it needs bit 20 clear and bit 19 set; with bit 21 set and a mode of 0 it needs the target enabled in the state word, every level from +24 to +20 defined in the mask at +36, bit 20 clear and bit 16 clear, and it clears bit 21 afterwards.
It calls `__glKonTexAlloc` with mode 3 when the object already has a bank (+264 or +268) and mode 1 otherwise; when that fails it calls `freeTexture` and tries mode 1 once more.
On success it calls `translateLodAddr`.

#### `translateLodAddr`

`translateLodAddr` at 0x0d96e210 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it turns the object's level address table from bank-relative into absolute texture-memory addresses.
By tiling kind (+12) it adds the object's bank start offsets (+276 and +280) to the entries of the table at +252, one pair per even and odd level for kinds 0 and 2 and a single pair for kinds 1 and 3, and ends the table with -1.
For kind 0 it also sets bit 28 of the word at +64 from the parity that the object keeps at +284.

#### `calcObjSize`

`calcObjSize` at 0x0d96d750 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it computes how much texture memory an object needs and builds its level address table.
It takes the level record of the base level, stores its format row at +28, and the log2 sizes of width, height and depth (from `log2`) at +332, +336 and +340, the border byte at +400, and packs the sizes into the words at +68 and +84 with the tile sizes from `tileinfo`.
It frees any old table at +252 with the context's free hook and allocates a new one with `calloc` (17 words, or 48 for clip-maps), filling one start offset per level by adding 1 shifted left by the texel size code and the level's log2 sizes minus 4 (at least 4 bytes), alternating between the two units' running totals, and stores the two totals at +0 and +4.
It calls `changeMinMaxLod` first.

#### `changeMinMaxLod`

`changeMinMaxLod` at 0x0d9663c0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it converts the minimum and maximum level of detail into the hardware fields and refreshes the object.
It sets the first and last level (+24 and +20) from the tiling kind: kinds 1 and 3 give 0 and 0; kind 0 gives the stored base level at +344 for both when the minification filter is 0x2600 or 0x2601, and otherwise +344 and the smaller of the stored maximum level at +348 and the larger of the log2 sizes at +332 and +336; kind 2 gives +344 and the smaller of +348 and the largest of +332, +336 and +340.
For the clip-map filters (0x8170 and 0x844d to 0x844f) with the flag at +436 set it also uses the clip-map levels at +432 and +440.
It scales the float minimum (+352) and maximum (+356) levels by 64 with the help of `__glKonTexExp2NegX64`, caps the maximum at 1023, and stores them as 10-bit fields at bits 0 to 9 and 10 to 19 of the word at +80.
When the object is bound it then calls its hook at +256.

#### `changeClamp`

`changeClamp` at 0x0d967bf0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it records a wrap mode change for one axis of a texture object.
Parameter 0x2802 changes the S axis, 0x2803 the T axis and 0x8072 the R axis; the mode goes to bits 0 to 1, 2 to 3 or 4 to 5 of the byte at +401, and the bit at 0x1000, 0x2000 or 0x4000 of the word at +68 is set to 1 for the modes 1, 2 and 3 and to 0 otherwise.
It then clears bit 12 of the word at +64; when bit 22 of the flags is set it calls `guessBaseLevel` and `validateTexture` for the object, and when bit 24 is also set it calls the object's hook at +256.

#### `changeShadow`

`changeShadow` at 0x0d967f30 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it applies a shadow-compare change to a texture object.
It clears the word at +516, calls `setShadowRegs` for the object, and, when the object is bound with the fast hooks and is the current target's object, calls its hook at +256 to rebind it.

#### `changeClipmapParams`

`changeClipmapParams` at 0x0d968070 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it recomputes the clip-map centre and extent fields of an object from its clip-map parameters.
It reads the clip size and offsets at +0x19c to +0x1b8 (+412 to +440), a scale factor from the environment (read once with `getenv` and `atof`, the alignment limit), uses `log2` of the clip dimensions, and stores the aligned values back in the same area of the object.
It then calls `computeActiveTarget` and the object's bind hook when the object is the current one.

#### `guessClipmapBreakpoint`

`guessClipmapBreakpoint` at 0x0d96ff70 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it finds where the level sizes of a clip-map stop being equal.
It finds the first defined level, takes its width, and walks up while the following level records exist and have the same width.
It stores the last such level at +404 and `log2` of that width at +408 and returns 1, or stores 0 in both and returns 0 when no breakpoint exists.

#### `bind2DClipmapTexture`

`bind2DClipmapTexture` at 0x0d96a410 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it binds a 2D clip-map as a mipmap that starts at the breakpoint level.
It calls `setClipmapRegisters`, moves the address table pointer at +252 forward by the level offset at +440, and calls `bind2DMipmapTexture`.
When that offset is odd it flips bit 28 of the word at +64 to the parity at +284 for the call and back after it; the table pointer is restored at the end.

#### `changeFilter`

`changeFilter` at 0x0d9668c0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it applies a change of magnification or minimisation filter to a texture object.
From the filters at +364 (the nearest, linear and mipmap forms 9728 to 9987, and the clip-map forms 0x8170 and 0x844d to 0x844f) and +360 (the detail and sharpen forms 0x8097 to 0x8099 and 0x80ad to 0x80af) it selects a table kind for +16 and a tiling kind for +12 and rewrites the fields of the word at +64.
When the tiling kind changes it calls `freeTexture`, `changeMinMaxLod`, `guessBaseLevel`, `calcObjSize` and `areLodsConsistent` and ends in `slowBindTexture`.
Otherwise it calls `setDetailFilter`, detaches old shared function data with `subtractTexTableUsage`, attaches the new with `bindTexTable`, and rebinds the object through its hook at +256.

#### `checkTexImage`

`checkTexImage` at 0x0d970210 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it validates a texture-image call and prepares the object's level record for it.
It converts the target with `targetIndex` (0x500 on failure), rejects an invalid level with `isLodInvalid` unless the clip-map word at +436 covers it (0x501) and a border other than 0 or 1 (0x501), checks each dimension of the target with `validDimension`, and maps the internal format to its table row with `whichComps`, returning that row through its output pointer.
It then frees or allocates the level's record (24 bytes), and for an object that already has other levels compares them with `unmatchObjLevel`, calling `freeTexture`, `calcObjSize`, `areLodsConsistent` and `configTexture` as the layout needs and `undefineTextureLevel` when an old level no longer fits.
It returns the target index, or -1 after raising an error.

#### `checkProxyTexture`

`checkProxyTexture` at 0x0d973b90 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it answers a proxy texture-image call by filling in a proxy object instead of loading anything.
It accepts the targets 0x8063, 0x8064 and 0x8070 with a border of 0 or 1 and takes the proxy object from context +31680, +31684 or +31688, with the target index 1, 2 or 3 stored at +376.
It checks each dimension with `validDimension` (shifted left by the level) and the format with `whichComps`, returning -1 without an error when one of them fails, and calls `isLodInvalid` with the proxy index (0x501 for an invalid level).
It stores the format row, border and sizes in the proxy's level record and calls `calcObjSize`; when that returns 0 it clears the record's row, border and sizes to 0.
It returns 4, 5 or 6, the proxy's own index.

#### `checkTexSubImage`

`checkTexSubImage` at 0x0d971640 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it validates a sub-image call against the level that it would change.
It converts the target with `targetIndex` (0x500 on failure, otherwise the target becomes the current index), calls `isLodInvalid` (0x501), and requires the level to be defined in the mask at +36 (0x502 if not).
It then checks that the x, y and z offsets are not below minus the border and that offset plus size does not pass the level's width, height or depth (0x501), taking one off the height when the context's interlaced bit is set.
It returns the target index when the region is valid and not empty, and -1 otherwise.

#### `checkPixelError`

`checkPixelError` at 0x0d970cf0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it checks the pixel-transfer state before a texture read or write that uses the pixel path.
It returns -1 at once when its third argument is non-zero, bit 8 of the context word at +1796 is set, the context word at +1792 has a bit of 0x0e000000 set and the word at +1380 equals 0x81c5.
Otherwise it calls `__glKonParseInput` and returns -1 if that reports an error, raises 0x500 and returns -1 when the format is 0x1901, and calls `__glKonParseErrorDraw` for a non-zero output pointer, returning -1 if that fails and 0 otherwise.

#### `computeDestinationDims`

`computeDestinationDims` at 0x0d970ba0 (the Kona GL driver texture API assembly unit, `IP27KONA32/libGLcore.so`): **Established** it computes the size that a pixel-transfer image has after the context's convolution step.
It stores the width and height it was given and, when the context words at +1792, +1796 and +1380 select a convolution (+1380 equal to 0x81c5), reduces the width, and for target 0xde1 the height, by the filter's own size minus 1, read through `GetConvolutionFilter`.
When bit 5 of the context word at +1796 is set it doubles the height.

### 64-bit texture routines read in full

The following entries are from the 6.5.30m `usr/gfx/arch/IP27KONA64/libGLcore.so` body, not address or size transfers from the N32 build. The address and size on each continuation line are the values re-derived from that ELF.

- `__glkonim_TexSubImage2DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd4b70, size 132. It accepts targets 0xde1 and 0x8095, raises 0x500 for either other target, then forwards a two-dimensional sub-image with the saved target arguments, a zero first mode word, a one-dimensional count of 1 and the source record at argument-stack offset 0x70. The body returns after the forwarding call.
- `__glkonim_CopyTexSubImage2DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd4cf0, size 120. It accepts the same two targets, raises 0x500 otherwise, and forwards the copy with a zero first mode word, the original coordinates and the saved source target; the source depth argument is copied to stack offset 4 before the call. The wrapper returns without adding a command of its own.
- `__glkonim_CopyTexSubImage3DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd4d70, size 84. It requires target 0x806f, raises 0x500 for any other target, loads the caller's depth word from stack offset 0x64 into the forwarding record, and calls the three-dimensional copy routine with that word at stack offset 4.
- `__glkonlc_TexImage1D` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd7c70, size 224. The display-list compiler accepts targets 0xde0 and 0x8063; other targets go to the library error hook. It calls the immediate image sender with a one-dimensional flag, passes the saved width and format words through stack offsets 4 and 8, and supplies the pixel pointer from the caller's saved argument area.
- `__glkonlc_TexImage2D` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd7d50, size 220. It compares the target with 0xde1 and 0x8064 and takes a different path for each. Target 0xde1 calls the routine at 0x2dd7b40 with a flag of 1 and the record's remaining arguments. Target 0x8064 calls a different routine, at 0x2dd3300, with a flag of 1 in the sixth argument. Any other target calls the function in GOT slot 501 with the arguments unchanged, so `a0` is still the target; no 0x500 is formed in this build, and that callee is unknown. No return value is set in this routine; `v0` is whatever the callee left.
- `__glkonlc_TexImage3DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd7e30, size 208. It accepts targets 0x806f and 0x8070, reports 0x500 otherwise, and forwards the saved depth and pixel pointer along with the three-dimensional flag to the immediate image sender. The wrapper itself writes no command-port word.
- `__glkonle_TexImage` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd7f00, size 156. It parses a 40-byte display-list image record into a temporary argument block, calls the immediate image sender with the record's first six words and its trailing pixel pointer, then returns the next record address rounded up to an 8-byte boundary after the record's size word at +0x24.
- `__glkonle_TexSubImage1DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd7fa0, size 164. It parses the list record, forwards target, level, x offset, width, format, type and pixels to the one-dimensional sub-image sender with zero y and z coordinates, then returns the next 8-byte-aligned record address from the size word at +0x18.
- `__glkonle_TexSubImage2DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd8050, size 164. It parses the record and forwards its target, level, x and y offsets, width, height, format, type and pixels to the two-dimensional sender; the next record is the +0x20 size rounded up to an 8-byte boundary.
- `__glkonle_TexSubImage3DEXT` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dd8100, size 164. It parses the three-dimensional list record, forwards target through z offset, width, height, depth, format, type and pixels, and returns the address of the next list record: the record pointer plus 0x30 (the pixels start at record +0x30) plus the word at +0x28 rounded up to a multiple of 8. It brackets the forwarded call with two helpers from GOT slots 118 and 119, whose roles are unknown. This routine makes no hardware access itself.
- `__glKonTexFree` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dda590, size 232. For a texture object whose flag word at +0x20 has bit 20 set, it unlinks the cache entry at +0x1c0 from its doubly linked list, clears that flag, and frees the associated table through the context allocator. It then frees the object banks at +0x198 and +0x1a0 with allocator modes 0 and 1 when present, clears both pointers, and returns zero.
- `__glKonInitTextureMemory` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dda880, size 140. It initialises the texture-memory state at context plus 0x10000: stores the supplied allocator handle at +0x4d8, clears usage counters and list heads, writes -2 to both free-count fields, links six empty lists to the sentinel at +0x150168, and sets the active flag words at +0x318 and +0x480 to 1.
- `__glKonFreeTextureMemory` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2dda910, size 172. It walks the bank-pointer array at state +0x4f0 for the count at +0x4f8, calls the allocator's free entry at context offset +0x18 for each bank, then calls the same entry once for the array itself. A non-positive count skips the loop and still releases the array pointer.
- `__glKonHashFindTexFast` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2ddabc0, size 108. It hashes the low 12 bits of the texture key into 16-byte buckets, compares the stored key at bucket +0x1c, and on a miss probes up to three more buckets using a step formed from key bits 6 through 17. It returns the value at +0x10 of the matching bucket or zero after four misses.
- `__glKonHashDeleteTexFast` — `usr/gfx/arch/IP27KONA64/libGLcore.so`: **Established.**
  Address 0x2ddae70, size 112. It uses the same initial bucket and three-step probe sequence as the fast lookup, returns the matched value at +0x10, and clears the matching key at +0x1c. A miss returns zero without changing the table.

### O32 IP27 KONA libGLcore target-build readings

These entries describe the exact O32 target bodies in `usr/gfx/arch/IP27KONA/libGLcore.so`. Each was compared with its documented build counterpart; differing bytes alone do not establish different behavior.

| Routine | Target address / size | Target SHA-256 | Existing build / address / size | Existing SHA-256 | Different bytes |
|---|---|---|---|---|---:|
| `__glkonlc_TexImage1D` | 0xd976564 / 276 | `b706708fa7fd2a4217a383c60266b0259480e049463585d9eb5245a5efc1422f` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd975540 / 224 | `e06a4831df16a3cd9fe0712b04cbf6358db526c49a59698d5e36bca9ee7aa656` | 192 |
| `__glkonlc_TexImage2D` | 0xd976678 / 276 | `c24cffaecd65da4df3c63583cf1c58edc3418184112fcebff3b096b9b1e9f1ac` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd975620 / 220 | `1715279b110be7ce67e3ef8eca5d8e5b176b045d73118fd9a5d5ac3e10c514c0` | 191 |
| `__glkonlc_TexImage3DEXT` | 0xd97678c / 276 | `6032a4fef2bc58101c886683d29871ff41fc9d34ea1162c016d3edc33f59d849` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd975700 / 208 | `5a22211779739d2389f93e4240c6281d0ff5c2fd59461589270e76fa3118d8b8` | 173 |
| `__glkonle_TexImage` | 0xd9768a0 / 184 | `7b40851b9cafba28a8b62c147df982af7dd0895019f0b0cf26d37051092b7ac9` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9757d0 / 156 | `1394d1dc975633d9a8e5ae67d6299dd4a88cfd7a396f094f5f1d749ae9419a79` | 115 |
| `__glkonle_TexSubImage1DEXT` | 0xd976958 / 188 | `808a2003665334dac6fc54a25ac597a6816280303b8d0ed97a847534758de0ec` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd975870 / 164 | `fed7b53b299e86a9d207e42ed857a4aee4a21f381b8a5d84b3d78f2871913dd3` | 131 |
| `__glkonle_TexSubImage2DEXT` | 0xd976a14 / 188 | `7b204b126c047c60f1c1c1f32a0e4e6ce16dcb2f3686ad07f0e993413716ec86` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd975920 / 164 | `e2d2e6798b0dddcdf4c11c541106e72ec1ac8cdb4f1a79cd4c444e28c9336154` | 126 |
| `__glkonle_TexSubImage3DEXT` | 0xd976ad0 / 192 | `7e026d60aecd61d88446fe615b5811757ffae1565ebd49334d2ceb238f86a0f3` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9759d0 / 164 | `a9289efae4e901462a90fbfb694b4ce66cbd6d06f97d1bb0746482fff8495574` | 124 |
| `__glKonTexFree` | 0xd978d98 / 228 | `81ada91c4376164ff73aee00616944b7080697bb6f8ef897d6a2b3aa46e2f7e2` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd977ce0 / 228 | `080b4597d3f601d1c04bb24068e469068d79fc9001343e21b67d1a3dea8e02b4` | 191 |
| `__glKonFreeTextureMemory` | 0xd9790ac / 168 | `56b23fca31434818043f71f08acd9aaff8fb8324a7307a601b266e9736d428bf` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd978050 / 172 | `008dcc64344e116551a63a7faecaf7d4fb8afc493dc03eb392ff7b1f3724a51c` | 148 |
| `__glKonHashFindTexFast` | 0xd97937c / 240 | `a875c59991756c110017b3657887594689c5a1fb0c12c5cb1be1fe347e73b900` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd978300 / 124 | `f2c9089e52a12a47ea1aac92a252f22168c5599aca94a14a09fad0fd56eca81e` | 102 |
| `__glKonHashDeleteTexFast` | 0xd9796c4 / 264 | `722721feabc5c852a213fa87b9aac1f9168d2d1129e6542cd99c26932ac15cc7` | `usr/gfx/arch/IP27KONA32/libGLcore.so` 0xd9785d0 / 128 | `9208673da370c353829d0fb44863335939de533e7321ae224730d404121bf649` | 108 |

#### Target-build readings

- `__glkonlc_TexImage1D` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd976564; occupies 276 bytes.
  **Established.** Routes a one-dimensional image request by its target. Entry argument 0 equal to 0xde0 takes the compilation path (`beq` at 0xd976594), calling `__glkonlc_TexImage` with the word at 0x1010 (`lw` at 0xd976574) and the first three caller arguments (`jalr` at 0xd9765fc). Target 0x8063 takes the immediate path (`beq` at 0xd9765a0, `jalr` at 0xd976648 to `__glkonim_TexImage`). Other targets reach `__glsplc_InvalidEnum` (`jalr` at 0xd97665c). Its stores are stack argument preparation, with texture processing delegated to those callees. Hostfacts leaves the merged return unknown.

- `__glkonlc_TexImage2D` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd976678; occupies 276 bytes.
  **Established.** Compiles target 0xde1 through `__glkonlc_TexImage` (`beq` at 0xd9766a8, `jalr` at 0xd976710), passing the word from 0x1010 (`lw` at 0xd976688) before the caller's target, level and format arguments. Target 0x8064 instead reaches `__glkonim_TexImage` (`beq` at 0xd9766b4, `jalr` at 0xd97675c). The remaining path calls `__glsplc_InvalidEnum` (`jalr` at 0xd976770). This wrapper constructs outgoing stack arguments rather than writing a texture command itself. The return depends on the selected callee.

- `__glkonlc_TexImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd97678c; occupies 276 bytes.
  **Established.** Separates the recorded and immediate three-dimensional texture cases. Target 0x806f selects `__glkonlc_TexImage` (`beq` at 0xd9767bc, `jalr` at 0xd976824), whose first argument is the word at 0x1010 (`lw` at 0xd97679c). Target 0x8070 selects `__glkonim_TexImage` with the caller's first four arguments retained (`beq` at 0xd9767c8, `jalr` at 0xd976870). If neither target matches, it calls `__glsplc_InvalidEnum` (`jalr` at 0xd976884). The body only stores stack data. Hostfacts does not resolve the merged result.

- `__glkonle_TexImage` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd9768a0; occupies 184 bytes.
  **Established.** Replays a recorded texture image between `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` (`jalr` at 0xd9768c4, 0xd976924). The immediate image call receives the record words at entry argument 0 +0, +4, +8 and +0xc as its first four arguments (`lw` at 0xd9768d0, 0xd9768d4, 0xd9768d8, 0xd9768dc, `jalr` at 0xd976910 to `__glkonim_TexImage`). Additional record reads include +0x10, +0x14 and +0x24 (`lw` at 0xd9768cc, 0xd9768e4, 0xd97692c). The body's stores are stack-local, and the callees' hardware effects remain unknown here. Its computed return remains unknown in hostfacts.

- `__glkonle_TexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd976958; occupies 188 bytes.
  **Established.** Wraps one recorded subimage replay in pixel-mode setup and restoration (`jalr` at 0xd97697c, 0xd9769e0). `__glkonim_TexSubImage` receives record words +0, +4 and +8 (`lw` at 0xd976984, 0xd976988, 0xd97698c) and a zero fourth argument (`jalr` at 0xd9769cc). The record's later fields are read at +0xc, +0x10, +0x14 and +0x18 (`lw` at 0xd976994, 0xd9769ac, 0xd9769c0, 0xd9769e8). No command-port store appears in this body. Hostfacts cannot resolve the returned record position.

- `__glkonle_TexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd976a14; occupies 188 bytes.
  **Established.** Forwards a two-dimensional display-list subimage to `__glkonim_TexSubImage`, using record words +0, +4, +8 and +0xc as the first four arguments (`lw` at 0xd976a40, 0xd976a44, 0xd976a48, 0xd976a4c, `jalr` at 0xd976a88). Setup and restoration call `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` (`jalr` at 0xd976a38, 0xd976a9c), both with a save area at entry stack pointer -0x5c. The record word at +0x20 is read after replay (`lw` at 0xd976aa4). The wrapper stores only stack data and has an unresolved computed return in hostfacts.

- `__glkonle_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd976ad0; occupies 192 bytes.
  **Established.** Replays the three-dimensional record through `__glkonim_TexSubImage` (`jalr` at 0xd976b48), bracketed by `__glKonSetPixelLEModes` and `__glKonUnsetLEModes` (`jalr` at 0xd976af4, 0xd976b5c). The forwarded register arguments are entry-record words +0, +4, +8 and +0xc (`lw` at 0xd976b00, 0xd976b04, 0xd976b08, 0xd976b0c). Additional reads include +0x20, +0x24 and +0x28 (`lw` at 0xd976b34, 0xd976b40, 0xd976b64). This body prepares stack arguments. The immediate routine's hardware effect is unknown here. Its final pointer calculation is unknown in hostfacts.

- `__glKonTexFree` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd978d98; occupies 228 bytes.
  **Established.** Releases texture banks and updates residency links. A nonnegative signed value of the object flag word at +0x20 (`lw` at 0xd978db0) shifted left by 11 skips unlinking (`bgezl` at 0xd978dbc). The link path includes a store to state +0xc2b0 and neighbor-link stores (`sw` at 0xd978dd4, 0xd978ddc, 0xd978dec). The head store is the delay slot of a branch taken only when object +0x124 is zero (`lw` at 0xd978dc4, `beql` at 0xd978dd0), and is annulled otherwise. Nonzero bank pointers reach `releaseMemBank` with modes zero and one, using object +0x108 and +0x10c (`jalr` at 0xd978e20, 0xd978e54). Those pointer fields are cleared after their calls (`sw` at 0xd978e34, 0xd978e64). The routine returns zero (`jr` at 0xd978e74). The link and object-field writes are observed here. The release helper's effects are unknown.

- `__glKonFreeTextureMemory` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd9790ac; occupies 168 bytes.
  **Inferred.** Calls an inferred bank-table cleanup procedure loaded from entry argument 0 +0xc (`lw` at 0xd9790f4, 0xd979120). A count at state argument 1 +0xc2cc (`lw` at 0xd9790dc) that is nonpositive skips the element loop (`blez` at 0xd9790e8). The loop invokes the unknown callback with entry argument 0 and an unresolved element pointer (`jalr` at 0xd979100). It then invokes the procedure reloaded from the same +0xc slot with the table word from state +0xc2c8 (`lw` at 0xd979128, `jalr` at 0xd97912c). Its result is the final callback's return. The cleanup role follows the interface name, while callback effects remain unknown. Only stack stores occur locally.

- `__glKonHashFindTexFast` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd97937c; occupies 240 bytes.
  **Established.** Looks for entry argument 1 through five key comparisons. An initial mismatch takes the next probe (`bnel` at 0xd97939c), while a match returns via the word load in `jr` at 0xd9793a4's delay slot (`lw` at 0xd9793a8). Four later mismatch branches advance or reject the search (`bne` at 0xd9793e0, 0xd979408, 0xd979430, 0xd979454). Hostfacts leaves all computed probe addresses and matching values unknown. The final miss returns zero (`jr` at 0xd979464). The routine makes no stores or calls. The computed access addresses remain unresolved.

- `__glKonHashDeleteTexFast` in `usr/gfx/arch/IP27KONA/libGLcore.so`:
  Address 0xd9796c4; occupies 264 bytes.
  **Established.** Deletes a matching key along a five-probe search. Entry argument 1 differing from the first loaded key takes the next probe (`bnel` at 0xd9796ec). Match paths write zero at five possible store sites (`sw` at 0xd9796f4, 0xd979738, 0xd979764, 0xd979790, 0xd9797b8), then load their result in the return delay slot. Effective key and value addresses remain unknown in hostfacts. All misses return zero (`jr` at 0xd9797c4), and there is no call. The address space of the unresolved accesses is not established.
## What the published manuals add

Labels follow [published-sources.md](../../references/documents/published-sources.md); page numbers are PDF page indexes of the stored copies ([references/documents/](../../references/documents/README.md)).

- **Swap barrier and swap ready (established, published).** `SGIX_swap_barrier` synchronises the swaps of swap groups on different machines; it needs special hardware and is supported only on InfiniteReality, which offers exactly one barrier, and the user must cable a coaxial line between the Swap Ready ports and genlock the pipes (OpenGL on Silicon Graphics Systems, 007-2392-003 PDF p. 333-335). **Agrees** with `konQueryMaxSwapBarrier`, which answers a constant 1 ([above](#konquerymaxswapbarrier)). The DPLEX guide adds that swap-ready cabling is a shared line with BNC T pieces and no terminators, and that unregulated swap-ready lets the DG5 buffers transfer video data at the wrong interval (007-3849-001 PDF p. 17).
- **Video channels (established, published).** Output channels, "two or eight depending on the Display Generator board type", can each be resized independently with `SGIX_video_resize`; a framebuffer image may be magnified or minified (bilinear filtering for the NTSC and PAL encoder channel); the application can over-render at the swap rate and pan at the refresh rate; the channel's placement precision comes from `glXQueryChannelDeltasSGIX` (007-2392-003 PDF p. 338-340). The deltas are the tile placement modes of [dg.md](../../devices/dg/README.md#what-the-published-manuals-add) (160 x 8 tiles). `SGIX_ir_instrument1` exposes pipeline statistics on InfiniteReality (PDF p. 340). Display lists changed often should be given higher priority on InfiniteReality (PDF p. 350).
- **Extensions the guide marks InfiniteReality-only (established, published).** Each carries a note in its section: detail texture (PDF p. 221), point or line texture generation (223), sharpen texture (231), texture select (235), clip-map (237), reference plane (287), sprite (294), swap barrier (333), video resize (338) and instruments (351) (007-2392-003). The texture colour table is on Fuel and InfinitePerformance as well (PDF p. 213). The guide recommends the ARB or EXT equivalents for new code except on InfiniteReality. No software read here contradicts the list; it is the expected feature set of the 6.5.30 `libGLcore` builds, and the detail and sharpen entries are the two the [published-sources](../../references/documents/published-sources.md) patent entries 13 and 14 explain.
- **Multipipe decompositions (established, published).** The OpenGL Multipipe SDK divides work by a compound's mode: 2D, 3D, CULL, DB, DPLEX, EYE, FSAA or HMD, with flags ADAPTIVE, ASYNC, HW, MONO, NOCOPY and STEREO (007-4239-005 PDF p. 99). DPLEX (frame multiplexing) gives whole frames to successive pipes, each starting a fraction of a frame after the previous, which scales geometry and fill rate together at a latency of pipes minus one frames (PDF p. 58-59). With HW the SDK uses scalable-graphics hardware: for InfiniteReality the manual says the DPLEX mode must be given with HW and the configuration file must name the hyperpipe whose display pipe is the DPLEX output (PDF p. 79-80; 007-4527-004 PDF p. 84, 87 repeats it and shows the execution of a DPLEX compound). The SDK's own white papers say the Onyx family associates several pipes in one system image (007-4416-001, 007-4516-003). The DPLEX hardware meaning is in [dg.md](../../devices/dg/README.md#what-the-published-manuals-add).
