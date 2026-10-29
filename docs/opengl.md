# OpenGL driver: context, buffer configuration and display commands

What the 6.5.30m `libGLcore` (N32 build, `libglcore/asm/KONA/`) does about contexts, buffer configuration, buffer swap and the display channels. Facts are labelled **established** (read from the assembly, function named), **inferred** (reasoning given) or **unknown**. The pixel and texture paths are in [RM.h](../RM.h), [GE.h](../GE.h) and [hip.md](hip.md); the kernel side of every ioctl named here is in [kernel.md](kernel.md).

Notation: `ctx` is the driver's per-context structure, offsets as the code uses them (names ours). A store to address `0x4000` through `$zero` is a write to the user command port, the doorbell of [GE.h](../GE.h); the code writes the token word first and the payload words after it.

## Which functions call the kernel

**Established** (a scan of every call to `__glKon_ioctl`, the driver's ioctl wrapper; the number is the constant loaded before the call). Numbers 10000 and up are the pipe's private ioctls ([kernel.md](kernel.md#private-ioctls)); 100-1000 are the generic graphics ioctls (`GFX_BASE` 100) and 1000 and up the rendering-resource-manager ones (`RRM_BASE` 1000), named in the installed 6.5.5 headers `sys/gfx.h` and `sys/rrm.h`.

| Number | Kernel name | Called from |
|---|---|---|
| 102 | `GFX_GETBOARDINFO` | `GetBoardInfo` (`kon_context.s`), which then builds the board name strings with `strcat`/`getenv` |
| 1005 | `RRM_SWAPBUF` | `SwapBuffers` |
| 1008 | `RRM_SETDISPLAYMODE` | `kona_writeconfig` |
| 1009 | `RRM_MESSAGE` | the hyperpipe code (`kon_igloo.s`) |
| 10000 | `KONA_DMAREAD` | pixel read-back (`kon_pixel.s`), histogram read-back (`kon_histogram.s`) |
| 10001 | `KONA_DMAWRITE` | display lists (`kon_dlist.s`; the first command-group token in the argument block is 456, `IDMACOPYLIST_LDMA`), pixel download (`kon_pixel.s`) |
| 10002, 10003 | `KONA_START_SELECTFEED`, `KONA_FINISH_SELECTFEED` | `kon_select.s`, `kon_pipeline_instruments.s` |
| 10010, 10011, 10014, 10015 | `KONA_MEM_ALLOC`, `_FREE`, `_REALLOC`, `KONA_SHARE` | `kon_mem.s` |
| 10017 | `KONA_CHECK_PIPE` | `kon_get.s` |
| 10018 | `KONA_DMAPOOL` | `kon_dlist.s` |

**Established, negative:** no instruction in `libglcore/asm` loads the constant of a `CONTEXT_*` token (0x1f7-0x1fd), `RDATA_SETUP`, `PIPE_SETUP` or a `MEM_*` token (so no such token is written as a constant), and a scan of every store to `0x4000` in `kon_context.s` finds only the tokens listed below. The context-switch packets in [kona_kern.h](../kona_kernel/include/kona_kern.h) are all sent by the kernel. **Inferred:** a GL context is saved and restored by the kernel and the pipe alone; `LoseCurrent` and `DestroyContext` touch the pipe only through the generic layer. `LoseCurrent` (`kon_context.s`) copies four words of the driver's global drawable state into the context (offsets 5052-5064) and calls the shared `__glLoseCurrentBuffers`; `DestroyContext` frees texture and evaluator state and calls the shared `__glDestroyContext`. Neither writes the command port.

## Buffer configuration: `kona_writeconfig`, `kona_readconfig`

**Established** (`kon_context.s`). The two functions have a debug print guarded by an environment variable whose format strings name the twelve configuration fields (strings in `libGLcore_n32.so`): `wconf:lvl:%d:rgb:%d:ci:%d:isize:%d:rsize:%d:db:%d:st:%d:zb:%d:ss:%d:acc:%d:ms:%d:aux:%d:` for writing, `rconf:...` the same for reading. The arguments of the print identify the context offsets: `lvl` 3300, `rgb` byte 3220, `ci` byte 3221, `isize` 3252, `rsize` 3256, `db` byte 3222, `st` byte 3223, `zb` 3244, `ss` 3248, `acc` 3228, `ms` 3288, `aux` 3296 (read configuration: the same fields at 3460, 3380, 3381, 3412, 3416, 3382, 3383, 3404, 3408, 3388, 3448, 3456).

`kona_writeconfig` sends `HP_BUFFER_CONFIG` (token 1), whose ARM handler pops ten payload words ([arm1_handlers.tsv](../ucode/arm1_handlers.tsv)), in this order: `lvl`; `rsize` if `rgb` is set, else 0; 0 if `rgb` is set, else `isize`; `db`; `st`; `ms`; `zb`; `ss`; `acc`; `aux`. It then writes token 2 (`HP_PACK`) and its one payload word, 0, and calls `RRM_SETDISPLAYMODE` (1008) with a 12-byte argument (the drawable serial at ctx+31564, then two zero words). A failed ioctl calls the context's error hook with "__kona_writeconfig: setdisplaymode failed". `kona_readconfig` sends `HP_READBUFFER_CONFIG` (token 4, ten payload words, the same order built from the read-configuration fields) and, when the first word of the argument block is 3, `HP_VIDEO_SOURCE` (token 276, one payload word): 1 for a source selector (the word at +16 of the object at +28 of the argument block) of 4096, 0 for 4097, 2 for 4098, 3 for 4099 and 0 for any other value; the value -3 is stored in ctx+3460 and the payload word in ctx+35964.

**Inferred:** the sixteen-bit `lvl` is the framebuffer level (overlay or normal), `rgb`/`ci` choose colour-index or RGB, `isize`/`rsize` the index and RGB sizes, `db` double buffering, `st` stereo, `zb`/`ss`/`acc`/`aux` the depth, stencil, accumulation and auxiliary buffer depths and `ms` the multisample count, from the field abbreviations; the meaning of the ten words inside the pipe is the ARM handler's (`arm_buffer_config` calls `XferMask`, `init_multisample`, `resolve_banks`, `SetFbState`, [arm1_handlers.tsv](../ucode/arm1_handlers.tsv)). The pipe receives `HP_VIDEO_SOURCE`'s word as 0-3, and `arm_video_source` (0x0c013924) passes it straight to `SetVideoFormat` (0x0c02bdfc), which keeps one format record for 0 and 1, another for 2 and another for 3 and ignores any other value; so the firmware, not the selector's name, decides what the pipe does. **Unknown: no shipped software or published source depends on it:** the host-side names of the selectors 4096-4099 and the unit of each size word beyond the field abbreviations (bits per component is the reading the names give). Routes tried: `kona_readconfig` and its callers, `arm_buffer_config` and `SetVideoFormat` in the firmware, the 6.5.5 installed headers (no video-library or GLX headers ship in that tree). **Established** (`libGL.so` IP27KONA32 6.5.30m, `glXCreateGLXVideoSourceSGIX` at 0x0d8252cc and `__glXCreateVideoSourcePrivate` at 0x0d82561c): the selector is the value the video library returns for control 7 of the source node. The GLX layer loads `libvl.so` on demand, allocates a 24-byte record at +28 of the drawable's argument block (whose first word it sets to 3), and fills it with the node kind (2 or 5) at +0, two words of control 4 at +4 and +8, control 6 at +12 and control 7 at +16, the word `kona_readconfig` maps. So the names of 4096-4099 are the video library's names for that control's values, defined in its header, which this tree does not ship. The full-text search of the published SGI manuals for those values failed twice: the Library search service refused connections on both tries (2026-10-29), so that route stays untried.

### Who calls them: the context's function table

**Established** (`__glKonCreateContext`, `MakeCurrent`, `MakeCurrentRead`, `kon_context.s`, N32 6.5.30m; targets resolved from the GOT page word 0x0d950000 plus the low offset each call adds). `__glKonCreateContext` fills five function pointers in the new context that the shared GL layer calls: +88 `initialDestroyContext` (0x0d948700), +92 `LoseCurrent` (0x0d948530), +96 `MakeCurrent` (0x0d9499e0), +100 `MakeCurrentRead` (0x0d9488c0) and +104 `VisualsMatch` (0x0d949a50).

- `MakeCurrent(ctx)` calls the drawable callbacks at ctx+60 and ctx+64 for the draw and read drawables and tail-calls `MakeCurrentRead(ctx, draw, read)`.
- `MakeCurrentRead` holds the only three calls to the configuration functions in the library (offsets -25008 and -24640 from that page, at source lines 737, 738 and 796). When bits 1 and 2 of the word at ctx+168 are clear (**inferred** to be the first make-current of the context: bit 1 clear first installs the context's dispatch procedures, and this path resets the context and allocates its per-engine memory) it runs `__glSoftResetContext`, `__glkon_unique_per_ge_mem_alloc` and `__glkon_share`, then `kona_writeconfig(ctx)`, then `kona_readconfig(ctx, read)` when the read drawable differs from the draw drawable, then the texture, evaluator, pixel and hyperpipe initialisers. On every later make-current it calls `kona_readconfig(ctx, read)` when the read drawable differs or when the read drawable's first word is 3, the same test `kona_readconfig` applies before it sends `HP_VIDEO_SOURCE`.
- `LoseCurrent`, `initialDestroyContext`, `DestroyContext` and `VisualsMatch` call neither function.

So `BUFFER_CONFIG` and `PACK` go to the pipe once per context, when it is first bound, together with the `RRM_SETDISPLAYMODE` ioctl; `READBUFFER_CONFIG` goes whenever the read side changes. Rebinding a context to a new draw drawable sends no buffer configuration from the library. **Inferred:** the kernel's context switch restores the pipe's copy, since the configuration packet is part of the per-context state the ARM saves (`arm_buffer_config` keeps it in its shadow, [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)).

### The context functions, one entry each

Each entry below is **established** from `kon_context.s` or `kon_mem.s`, `libGLcore` N32 6.5.30m, unless it says otherwise. Process address 0x1000 is the driver state page; its word at 0x1010 holds the current context pointer (`LoseCurrent` clears it, and the memory ioctls pass it to `__glKon_ioctl` as the first argument).

#### `GetBoardInfo`

`GetBoardInfo` at 0x0d947f60 (`kon_context.s`, `IP27KONA32/libGLcore.so`): **Established.** Asks the kernel for the board description and fills the context's host-side capability words.
It sends `GFX_GETBOARDINFO` (ioctl 102) with a 1952-byte reply buffer, then compares the first four bytes of the reply with a fixed board-name string; on a mismatch it reports through the context's error hook (+20) and calls `exit(1)`.
Otherwise it builds the renderer name with `strcat` and `strncat` from bytes and words of the reply (+5, +40, +80, +124, +128, +180), stores a `strdup` of it at ctx+3576 (which `DestroyContext` frees), stores reply word +124 at ctx+31568 and the product of reply words +288 and +292 at ctx+31644, and sets flag bits in ctx+31580: 0x4 and 0x8 always, 0x2 and 0x10 unless one of two environment variables is set, 0x20 when a third is set.
The pipe sees nothing of this; it is host-side capability set-up.

#### `LoseCurrent`

`LoseCurrent` at 0x0d948530 (`kon_context.s`, `IP27KONA32/libGLcore.so`): **Established.** Detaches the context from the thread without writing any command word to the pipe.
It returns 0 at once unless ctx+3204 is 7168 and the driver-page word 0x1018 is not 1.
Otherwise it calls `__glLoseCurrentBuffers(ctx, 0)` when bit 2 of ctx+168 is set, clears the current-context word 0x1010, keeps word 0x1018 in ctx+3200, and, when ctx+4988 is non-zero, copies the driver-page words 0x1028-0x1034 into ctx+5052-5064.
It returns 1.
It writes no command word: losing a context sends nothing to the pipe.

#### `DestroyContext`

`DestroyContext` at 0x0d9485f0 (`kon_context.s`, `IP27KONA32/libGLcore.so`): **Established.** Frees the context's host memory and sends nothing to the pipe.
It calls `__glkon_FreeTextureState` and `__glKonFreeEvaluators`; when the pointer list at ctx+41252 exists, releases each of its ctx+3776 entries and then the list itself through the context's free hook (+12); releases ctx+31600 the same way, calls the hook at ctx+48, frees the renderer string at ctx+3576, clears the drawable serial ctx+31564 and calls the shared `__glDestroyContext`.
No command word is written.

#### `initialDestroyContext`

`initialDestroyContext` at 0x0d948700 (`kon_context.s`, `IP27KONA32/libGLcore.so`, 76 bytes): **Established.** It is the short destroy procedure of a context that never became current.
It calls `__glkon_FreeTextureState` and then `__glDestroyContext`, nothing else.
`__glKonCreateContext` installs it at ctx+88, so it is the destroy procedure of a context that never became current; it sends nothing to the pipe.

#### `MakeCurrent`

`MakeCurrent` at 0x0d9499e0 (`kon_context.s`, `IP27KONA32/libGLcore.so`, 108 bytes): **Established.** Resolves the two drawables and hands them to the read-side function.
It calls the draw-drawable callback at ctx+60 and the read-drawable callback at ctx+64 and tail-calls `MakeCurrentRead(ctx, draw, read)` with their results.
It writes no command word itself.

#### `MakeCurrentRead`

`MakeCurrentRead` at 0x0d9488c0 (`kon_context.s`, `IP27KONA32/libGLcore.so`): **Established.** It is where the configuration packets leave for the pipe.
On the first make-current of a context (bits 1 and 2 of ctx+168 clear) it calls `__glSoftResetContext`, `__glkon_unique_per_ge_mem_alloc`, `__glkon_share`, then `kona_writeconfig` and, for a separate read drawable, `kona_readconfig`, then the texture, evaluator, pixel and hyperpipe initialisers; on later calls it sends only `kona_readconfig` when the read drawable differs or is a video source.
So the configuration packets reach the pipe once per context and again per read-side change, as the section above says.

#### `VisualsMatch`

`VisualsMatch` at 0x0d949a50 (`kon_context.s`, `IP27KONA32/libGLcore.so`, 136 bytes, no calls): **Established.** Compares a context's visual with a drawable's and touches no hardware.
It returns 1 when the visual id at ctx+3216 equals word 0 of the first mode record, neither mode record has word +84 set, and the two records agree on colour model (byte +4) and on the size word for that model (+40 for RGB, +36 for colour index); it returns 0 when word +72 of the first record is set and the fifth argument is 4, and 0 for any other mismatch.
**Inferred** from the fields compared: the shared layer asks whether a drawable's visual can be used with this context.
It sends nothing to the pipe.

#### `__glkon_unique_per_ge_mem_alloc`

`__glkon_unique_per_ge_mem_alloc` at 0x0d94dae0 (`kon_mem.s`, `IP27KONA32/libGLcore.so`, 68 bytes): **Established.** Reserves the context's pipe-memory block through the kernel's allocator.
It calls `__glkon_mem_alloc(2, 9, 1, 1, 0)`, which packs its arguments into the 12-byte `KONA_MEM_ALLOC` (ioctl 10010) block as byte 0, byte 1, halfword +2, word +4 and word +8, sends it for the current context and returns 0 on success, -1 on failure.
**Inferred** from the name and the one caller (`MakeCurrentRead`, first make-current only): each context reserves one block of pipe memory per geometry engine before its first configuration packet; the kernel side is `kona_mem_alloc` ([kernel.md](kernel.md#ioctl-entries)).

#### `__glkon_share`

`__glkon_share` at 0x0d94db30 (`kon_mem.s`, `IP27KONA32/libGLcore.so`, 124 bytes): **Established.** Joins the context to its kernel share group for pipe memory.
It takes ctx, follows the pointer at ctx+0x8aac to a share record and sends `KONA_SHARE` (ioctl 10015) with that record's 64-bit word +8 as the 8-byte argument.
On success it writes the returned word back to record +8 and returns 0; on failure it returns -1.
**Inferred:** contexts that share display lists and textures pass the same group handle, so the kernel's `kona_share` counts them into one share group, and a zero handle asks for a new group.

## Display and scanout

**Established** (`kon_context.s`).

- **`SwapBuffers`** (taken only when the byte at ctx+3222, `db`, is set): writes token 198 (`HP_FINISH`, [arm1_handlers.tsv](../ucode/arm1_handlers.tsv): one payload word, calls `mgesi_FlushRM`) and the payload word 0 to the command port, then `RRM_SWAPBUF` (1005) with two words, ctx+31564 (the drawable serial) and ctx+31576. The swap itself is then done by the kernel's `KONAschedswapbuf` ([dg.md](dg.md)). An ioctl failure prints through `perror` and the context's error hook.
- **`ChannelRect(a0, a1, a2, a3, a4)`**: writes `HP_VIDEO_CMD` (token 422, 0x1a6) then the display-generator command number 20, then eight words: `a0`, `a1`, `a2 + a4 - 1`, `a3`, `a4`, 0, 0, 1, then a checksum word that is the sum of the command number and the eight words (the code accumulates it as it stores). Command 20 is `DoDGRqstResize` with 8 payload words ([dg_dispatch.tsv](../ucode/dg_dispatch.tsv)); its first payload word selects the channel's record in the firmware and `dgResize` clips an output size below 2, printing "Illegal x output size %d, clipping to 2" (and "y"). `a0` is the VOC id of the channel. The firmware's use of all eight words is in [dg.md](dg.md#the-resize-request-8-words): words 1-4 are the source rectangle that the channel's scaler maps onto its output size (x origin, top line, width, height; the caller's `a2 + a4 - 1` turns a bottom-left origin into a top line), words 5 and 6 set two channel flag bits that this caller always clears, and word 7 = 1 keeps the rectangle from becoming the channel's default.
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

The display-generator command framing (token, command number, count-checked payload, checksum word) is the one the ARM reads in `arm_video_cmd` ([arm1_firmware.md](../ucode/arm1_firmware.md)); `ChannelRect` is the only emitter of it in `libGLcore`'s context file, and the combination and format files that choose channel layout ([ucode/dg.md](../ucode/dg.md)) are not read by this library.

The 383-word format request (`LoadFormat`) is built and sent by the X server module, not by libGLcore: [dg.md](dg.md#the-loadformat-request-383-words) has its sender, its words and the registers the firmware loads from them. The X module's other display emission is in [the next section](#x-server-module-display-emission).

## X server module: display emission

What `kona.so` (the X server module, `usr/lib/X11/dyDDX/`, IRIX 6.5.30m, stripped, dynamic symbols only) sends to the kernel and to the pipe for the cursor, display modes, clips and buffer swaps. The module was disassembled from `ddx/asm/kona/` with its GOT calls resolved by `scripts/resolve_got.py`; static helpers that have no symbol are named by address. Labels as above. Structure names come from the 6.5.5 installed headers `sys/kona.h` and `sys/rrm.h`; [ddx/include/kona_ddx.h](../ddx/include/kona_ddx.h) has the layouts.

### How the module writes commands

**Established** (`konValidateMode`, `konRecolorCursor`, `konValidateClip` and the cursor helpers below). The module stores through a pointer kept at +8 of its screen private record. A command is a 32-bit store of the command's **first payload word** to that pointer + 32 x token, followed by 32-bit stores of the remaining words to the pointer + 0. Seen: `X_LOADXMAP_DID` 0x132 at +0x2640, `X_LOADCURSOR` 0x130 at +0x2600, `X_LOADCURSORCOLOR` 0x131 at +0x2620, `X_LOADCLIP` 0x12b at +0x2560, `X_BOX` 0x154 and `X_BOX6` 0x155 at +0x2a80 and +0x2aa0, `X_DATA2` to `X_DATA10` at +0x2840 to +0x2960, and `WG_FLUSH_1` 0x1ff at +0x3fe0. **Inferred:** the pointer is the module's mapping of the 16 KB command FIFO (GE.h), and the hardware takes the token from bits 5-13 of the store's offset in the window, so a store at offset 0 is a payload word. That is a second framing beside libGLcore's token-as-data word at offset 0 ([GE.h](../GE.h)); how the hardware tells a token-as-data word at offset 0 from a payload word there is not stated by any of them. **Inferred:** by count: every token's map entry carries its payload length for routed tokens (bits 6-10) and every ARM handler pops a fixed or self-described number of words ([ucode/arm1.md](../ucode/arm1.md)), so after a token the next n words at offset 0 are payload and the word after them is the next token. **Unknown: no shipped software or published source depends on it** beyond that: the host-interface logic that does the counting has no software-visible register for it apart from `HH_GFIFO_LEVEL`; routes tried: the token map, the ARM handlers, libGLcore's and the X module's emitters.

### Ioctls

| Number | Header name | Module function | Argument (fields in order; source in the module) |
|---|---|---|---|
| 10005 | `KONA_SELECT_CURSOR` | `konDisplayCursor`, `konCursorOn` | 16 bytes: mode, address, hot x, hot y |
| 10009 | `KONA_SET_CHANNEL_RECT` | `konaSetStereoMode` | 18-byte `kona_set_channel_rect_args` from a static block |
| 1011 | `RRM_VALIDATECLIP` | `konValidateClip` | 56-byte `RRM_ValidateClip` |
| 1012 | `RRM_VALIDATESWAPBUF` | `konValidateSwapbuf` | rnid, clipid, swapbufid |
| 1017 | `RRM_LOADDISPLAYMODE` | `konLoadDisplayMode`, called by `konValidateMode` | rnid, clipid, wid, hwd_mode, hwi_mode |
| 1020 | `RRM_MGR_SWAPBUF` | `rrmMGRSwapBuf`, called by `konInitiateBufferSwap` | rnid, swapbufid, clipid, hwd_mode, hwi_mode |

The file descriptor is word +100 of the record at ScreenRec +116 in every caller. A failed call prints the module's message and `perror`; none retries.

**Window private (`rrmWindowPrivateIndex`), established** from the fields these calls take: +12 rendering-node id, +20 display id (passed as `wid` to VALIDATECLIP and LOADDISPLAYMODE and as `swapbufid` to VALIDATESWAPBUF and MGR_SWAPBUF), +32 hardware-independent mode (`hwi_mode`), +36 hardware-dependent mode (`hwd_mode`, written by `konValidateMode`). The record is 76 bytes (`allocRRMpriv` allocates and clears 76).

#### `allocRRMpriv`

`allocRRMpriv` at 0x49af60 in `kona.so` (**established**) creates a window's rrm private: it allocates 76 bytes, clears them and stores the record in the window's private slot (`rrmWindowPrivateIndex`).
It then calls the descriptor's hook +80, `konInitWindowType`, with the window, and returns the record, or 0 when the allocation fails.
`rrmDoubleBufferWindow` and the two bind functions call it.

### Cursor: `KONA_SELECT_CURSOR` (10005), `X_LOADCURSOR`, `X_LOADCURSORCOLOR`

**Established** (`konDisplayCursor` 0x441980, `konCursorOn`, `konRecolorCursor` 0x53be80, the static helpers 0x4a6c10, 0x531f50 and 0x526140). The cursor's per-screen private word (`devPriv[screen]`, CursorRec +20) is either 1, the crosshair, or a pointer to a cursor record.

- **Crosshair.** `konDisplayCursor` sets the screen's current slot (screen private +112) to -1 and selects mode 1 (`KONA_CURSOR_XHAIR`) with address 9884 and hot spot 32, 32. `konRecolorCursor` sends `X_LOADCURSORCOLOR` with address 9884 and the same colour word four times.
- **Glyph.** The record's +16 points to a cache entry whose first word is a slot number, allocated on first use. If the record's halfword +12 is zero the image is not on the pipe yet: the module builds it (helper 0x4a6c10, or 0x456fe0 when byte +6 of the record at +4 is set), builds the colours (0x531f50), sets +12 to 1 and sends `X_LOADCURSOR` (0x526140). It then selects mode 2 (`KONA_CURSOR_GLYPH`) with address slot x 260 and hot spot (`CursorBits` +12, +14). If the slot is already the current one it returns without the ioctl. The four argument words are also kept at screen private +76 to +88.
- **`konCursorOn(on, screen)`** re-sends the kept four words when `on` is set; otherwise it sends mode 0 (`KONA_CURSOR_OFF`) and leaves the other three words unset. `konCloseScreen` calls it with 0.

**Established** (`X_LOADCURSOR`, helper 0x526140): first word slot x 260, then 260 words from the cursor record's buffer (its +8), then `WG_FLUSH_1` with 0xdeadbeef. **Established** (`X_LOADCURSORCOLOR`, `konRecolorCursor`): first word the same address (slot x 260, or 9884 for the crosshair), then four colour words, buffer words 256-259.

**Established** (buffer layout, helpers 0x4a6c10 and 0x531f50; `CursorBits` is source +0, mask +4, width +8, height +10, x hot +12, y hot +14, the layout with no `emptyMask` word). Words 0-255 are 64 rows of 16 bytes: the source bits at bytes 0-7 and the mask bits at bytes 8-15 of each row, copied 16 bits at a time from the X bitmaps, with width and height clipped to 64 and the last unit of a narrow row masked to the width. Words 256-259: 256 a third colour (the record at +4's three halfwords when its byte +6 is set, else the foreground), 257 the foreground, 258 the background, 259 not written by these helpers. A colour word is 10:10:10, red in bits 20-29, green 10-19, blue 0-9, the top ten bits of each 16-bit X colour.

**Established** (ARM side, `arm_x_loadcursor` 0x0c03d9c4 and `arm_x_loadcursorcolor` 0x0c03daa0 in `arm1.u`). Both peek the first word (port + 0x40), write it, or for the colour load the word + 0x100, to display-bus register 0x118 through `mgesi_VCbusWrite`, select the video bus (port 0x434), name register 0x119, and start the pass-through counter with 0x4000104 (cursor) or 0x4000004 (colour). **Inferred:** the counter's n - 1 encoding gives 261 and 5 words, the first word plus 260 and plus 4, so the count includes the peeked word. **Established** since ([dg.md](dg.md#cursor-memory)): 0x118 is the address register and 0x119 the data port of the XMAP's indirect memories, the cursor memory holds one 260-word block per slot with the image at +0 and the colours at +0x100, and the writes to 0x11e and 0x11f that follow are the fast-list end and flush writes ([dg.md](dg.md#xmap-registers-memories-and-the-fast-list)).

**Kernel side** of 10005 ([dg.md](dg.md#cursor)): the mode goes to cursor register 0x103 and the address to 0x101 at the next video interrupt, so the address in 0x101 is the same slot x 260 the cursor load used. **Established** ([dg.md](dg.md#cursor-memory)): the module keeps 39 slots (`kon_initCursorCaches`), and 9884 is 39 x 260 - 256, so the crosshair's colour words at 9884 + 0x100 are the four words just past the last slot. Word 259 is the colour of pixel value 0 (no source, no mask), which no sender sets; **inferred** transparent and never shown.

### Display modes: `X_LOADXMAP_DID` and `RRM_LOADDISPLAYMODE` (1017)

**Established** (`konValidateMode` 0x4601e0; the module's own debug strings name the cases). For a window with a display id (rrm private +20 not negative) it builds `hwd_mode` from the window's visual flags (word +20 of the `nfbWindowPrivateIndex` record) and the `hwi_mode` word:

| Visual | Bits set in `hwd_mode` |
|---|---|
| main buffer, flag 0x2000 and 0x4000 ("RGB10") | none |
| main buffer, 0x2000 without 0x4000 ("RGB"; "DC RGB" with 0x8000) | 0x4; 0x10 for DC RGB |
| main buffer without 0x2000 ("ColorIndex/Luminance") | 0x8 |
| main buffer, flag 0x80000 ("Stereo") | 0x2 |
| main buffer, `hwi_mode` & 6 == 6 ("starting in backbuffer") | 0x1 |
| overlay or underlay (visual flag bit 0 clear, flag 0x6 nonzero) | (u << 1) & 0xe, u = 4 for underlay plus 2, plus 1 when `hwi_mode` has 0x2 and 0x40000 ("doublebuffered, starting in backbuffer"); 0x1 without visual flag 0x2000 ("over/under RGB"); 0x10 with visual flag 0x40000 ("over/under Opaque") |

It stores the result at rrm private +36 and sends `X_LOADXMAP_DID` with two words: the display id, then `(cmap << 7) & 0xffff80 | ((size - 1) & 0xf) << 3 | lum << 2 | grey << 1`. `cmap` is the colormap's entry in the module's colormap table, `size` the visual's plane count (VisualRec +10, capped at 12 when screen private +32 is set), `lum` and `grey` are visual flags 0x20000 and 0x10000; the debug string reads "did, cmap, size, lum, grey". The four values are cached at screen private +48 + 16 x did. `arm_x_loadxmap_did` writes the first word to display-bus register 0x118 and the second to 0x11c through `mgesi_VCbusWrite`; **inferred** an index and data pair into the XMAP's per-display-id table.

It then calls `konLoadDisplayMode(screen, rnid, clipid, did, hwd_mode, hwi_mode)`, which issues 1017 with those five words and on success caches {hwi_mode, hwd_mode} at screen private +52 + 8 x did. **Established** (kernel, `RRM_LoadDisplayMode` in `rrm.o`): the display id must be below the board's count (gfx_data +88) or the call returns EINVAL; it calls the board's set-display-mode entry, which is slot +0xa0 of the driver's function table in `kona_edtinit.o`, `KONAsetdisplaymode`, with (did, hwd_mode); stores `hwi_mode` in the pane (+32) and in the board's per-id table (gfx_data +96); and sets pane +18 to 1 when `hwi_mode` bit 2 is set. `KONAsetdisplaymode` keeps the low byte at pipe state +4360 + did and sends `DISPMODE` (0x1e6) with 0, did, `hwd_mode`. So the third `DISPMODE` word is this X-built `hwd_mode`. **Established** (`arm_dispmode` 0x0c013dd4): the firmware passes the byte on unchanged, as a display-bus write of `hwd_mode` to address = display id through the engine's `mgesi_VCbusWrite`, after recording the display id in the swap-group slots that match the first word ([dg.md](dg.md#the-firmwares-display-bus-window)); at a swap the kernel rewrites bits 0 and 1 from the buffer's display bank ([dg.md](dg.md#buffer-swap-and-retrace-wait)), which fits bit 0 as "show the back buffer". **Unknown: no shipped software or published source depends on it:** what the display hardware does with bits 2-4 beyond the module's own names (RGB, colour index, DC RGB). Routes tried: the module, the kernel, the firmware (which forwards the byte untouched), the diagnostic's XMAP register list, which has no per-display-id mode table, and `setmon` and `ircombine`, neither of which issues `RRM_LOADDISPLAYMODE`, `RRM_MGR_SWAPBUF` or `DISPMODE`.

### Clips: `RRM_VALIDATECLIP` (1011)

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

The margin c, **established** from the arithmetic: c = trunc(sqrt(s^2 - w*h/4 + 2^21) - s - 1) with s = (w + h)/4, which makes (w + 2c)(h + 2c) just under 2^23 pixels; if w + 2c exceeds 3840 then c_x = (3840 - w)/2 and c_y = (2184 - h)/2, and the same with x and y exchanged when h + 2c exceeds 3840. The kernel's `VALIDATE_CLIP` packet carries the clip record's xsize and ysize words as they are ([kona_kern.h](../kona_kernel/include/kona_kern.h)); **inferred** from the 6.5.5 `struct pane`, whose clip record is this ioctl structure, that the pipe receives the margin. **Inferred:** a guard band around the window for the geometry engines' clipping, sized so the padded area stays within 8M pixels and 3840 x 2184; its use in the pipe is **unknown**.

### Swap buffers: `RRM_VALIDATESWAPBUF` (1012) and `RRM_MGR_SWAPBUF` (1020)

**Established.** `konValidateSwapbuf` sends rnid (rrm private +12), the window's XID and the display id (+20), sets word +20 of the module's window private to 1 and bumps its byte +24, for the window and its descendants that share the same buffer. Kernel: `RRM_ValidateSwapBuf` calls `validate_pane_swapbuf`, which records the swap buffer id at pane +20, sets flag 0x8 in pane +12 and wakes a waiter when flag 0x8 of +14 was set; it sends nothing to the pipe.

`konInitiateBufferSwap` calls `rrmMGRSwapBuf(window)` for each window in its list; that sends rnid, display id, XID, `hwd_mode` (+36) and `hwi_mode` (+32), then calls `UpdateDIDMode`. Kernel: `RRM_MGR_SwapBuf` stores `hwi_mode` in the per-id table, calls slot +0xa8, `KONAschedmgrswapbuf`, with (clipid, swapbufid, hwi_mode, hwd_mode), and sets pane +18 from `hwi_mode` bit 2. `KONAschedmgrswapbuf` sends `DISPMODE` with clipid, swapbufid and `hwd_mode`, then `RETRACE_SEQID` with a new sequence number, recording the clip id and the sequence number per swap buffer at pipe state +3976 and +3592 ([dg.md](dg.md)).

#### `konInitiateBufferSwap`

`konInitiateBufferSwap` at 0x4b0000 in `kona.so` (**established**) starts a buffer swap for a list of windows: it flips each window's mode words, finds it a display id and sends the manager swap.
It takes (window list, count).
For each window that holds a validated swap buffer (rrm private byte +4 bit 0x8) it first invalidates that resource through hook +32 with (window, 8, 1).
For a main-plane window (visual flag bit 0) it sets hwi bit 0x4 and hwd bit 0x1 when the double-buffer private's byte +2 is not 1, and clears both when it is: the displayed buffer flips.
For an overlay or underlay window (visual flags 0x6) it puts code 2, plus 1 when it sets hwi bit 0x4, into hwd bits 1-3; any other window prints "TRYing to swap bogus did".
An unrealized window (word +124 bit 11 clear) has its swap reported done at once through `dbcDelayedSwapBufferDone`.
Otherwise it tries `ShareSwappingID`; a window that joins a swapping id is also reported done at once and sends nothing.
Else it takes an id from `FindFreeID`, or from `StealID` when none is free.
It records the new hwd word in the module's screen private at +52 + 8 x id + 4, sets bit 0x10 (swap pending) on the id's entry and adds the window to a list.
Last, walking that list backwards, it calls `rrmMGRSwapBuf` for each window; on a failure it reports the swap done and clears bit 0x10 again.
It returns 0.

#### `rrmMGRSwapBuf`

`rrmMGRSwapBuf` at 0x540ac0 in `kona.so` (**established**) sends one window's swap to the kernel as `RRM_MGR_SWAPBUF` (1020).
The five words are the rendering-node id (+12), the display id (+20), the window id, the hwd word (+36) and the hwi word (+32).
On success it calls `UpdateDIDMode` with (window, 0) and returns 0; a failed ioctl prints through `perror` and returns 1.

#### `UpdateDIDMode`

`UpdateDIDMode` at 0x57a0e0 in `kona.so` (**established**) refreshes the mode an id's table entry records from the window that holds it, so a later `compareModes` sees the post-swap mode.
It takes (window, flip) and does nothing for a window without a display id.
It writes the window's hwi word (+32) to entry +8, with bit 0x4 inverted when flip is non-zero, and the window's hwd word (+36) to entry +12.
`rrmMGRSwapBuf` calls it with 0 after every manager swap; `rrmInvalidate` calls it with 1 when the kernel reports the window showing the other buffer.

### Stereo: `KONA_SET_CHANNEL_RECT` (10009)

**Established** (`konaSetStereoMode(screen, a, b, mode)`, `misc` group). When `mode` is 1 and a small-data flag of the module is set, it writes 531 to the halfword at +6 (`y1`) of an 18-byte block in `.bss` (0x591ba0) and passes the block to 10009; on failure it stores -7905 in a module error word and logs "Failed : update kernel with channel cursorinfo". It then calls `nfbSetStereoMode`. No other store to the block was found by offset in the module, so the call sends channel 0, valid 0, priority 0, x1 0, y1 531 and zeros: **inferred** to withdraw channel 0 from the cursor rectangles while stereo is on. Whether another path fills the block through a pointer is **unknown**. Kernel side: `kona_set_channel_rect` ([dg.md](dg.md#choosing-the-cursor-channel)).

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

### Display functions: cursor records, display ids, colour maps, gamma

**Established** from `kona.so` 6.5.30m by address; screen private means the record at `konScreenPrivateIndex`, as above.

#### `konRealizeCursor`

`konRealizeCursor` at 0x54ad40 in `kona.so` (**established**) builds the host copy of a cursor image for the pipe's cursor memory and sends nothing yet.
It takes (screen, cursor).
If any screen's private word +92 already holds this cursor (the crosshair the module keeps), it returns true without allocating.
Otherwise it allocates a 32-byte cursor record and stores it as the cursor's private word for this screen (cursor record +20).
It clears the record's +0 and +4, allocates and clears a 260-word image buffer at +8 and builds the image with the helper at 0x456fe0.
It marks the image as not yet on the pipe (halfword +12 = 0) with no cache slot (+16 = 0).
The image reaches the pipe later, through `konDisplayCursor` ([cursor](#cursor-kona_select_cursor-10005-x_loadcursor-x_loadcursorcolor)).

#### `konUnrealizeCursor`

`konUnrealizeCursor` at 0x55f270 in `kona.so` (**established**) frees a cursor's host records and gives its pipe cursor slot back, without any pipe command.
It takes (screen, cursor) and returns 1.
A private word of 1 (the crosshair) is just cleared.
Otherwise, when the record has a cache entry (record +16), it calls the slot release helper at 0x4c20e0 with that entry and the screen.
The helper clears the owning record's +16 and halfword +12 and the entry's owner word (+12), and sets the screen's current slot (private +112) to -1 when it was this slot.
It then moves the entry to the head of the circular slot list whose head pointer is screen private +124.
Last, the function frees the records at +4 and +8 and the record itself, and clears the private word.

#### `kon_freeCursorCaches`

`kon_freeCursorCaches` at 0x567700 takes (screen private). Frees the cursor-cache table at +116 when there is one. `kon_initCursorCaches` builds it with the 39 slots ([dg.md](dg.md#cursor-memory)).

#### `konReloadAllGammas`

`konReloadAllGammas` at 0x464060 takes (screen). Calls 0x4520a0 with the screen's video-control private record (`vcScreenPrivateIndex`), which walks every gamma map (count at +32, 16-byte entries at +36, the shadow pointer at entry +12; a missing shadow prints "NULL gamma shadow (%d)") and loads red, green and blue from the shadow through 0x477dc0: three 4096-entry tables at shadow +4, +8196 and +16388. 0x477dc0 picks the starting address from the shadow's kind word: kind 0 address 0, kind 1 (map << 14) + 0x40000, kind 2 0xf000 through the 0xdeadfeed form at 0x498ff0; it advances the address by 4096 per component. Both `X_LOADGAMMA` forms are in [dg.md](dg.md#colour-maps-and-gamma-tables). Afterwards, when all three components were loaded, it marks the shadow as an identity ramp (word +24580) if the blue table is 0 to 4095 in order, and when that mark changed it re-sends display command 15 (`DoDGRqstChannelGammaMap`) for every channel that uses this map, through the control sender at 0x548db0 with attribute 10.

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
It re-sends `X_LOADXMAP_DID` exactly as `konValidateMode` does ([display modes](#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017)).
The words are the display id, then the colormap's table entry << 7, the plane count - 1 (capped at 12 when screen private +32 is set) << 3, and the luminance and grey flags.
It takes those two flags only for colour-index visuals (visual flag bit 0 set, 0x2000 clear), and caches {entry, size, grey, lum} at screen private +48 + 16 x id first.
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
The firmware blanks or unblanks every channel ([dg.md](dg.md#display-requests)).

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

**Established** from `kona.so` 6.5.30m by address unless a line says otherwise. `konad.so`, `konal.so` and `konas.so` carry a function of the same name and size for every entry here (addresses in `docs/inventory/functions.tsv`). **Established** by comparing the instruction words of each against `kona.so`: `nfbInitVisDIDs` and `nfbListInstalledHWColormaps` are byte-identical; every other function differs only in global-pointer setup, global-pointer-relative loads and address-building immediates (the offsets of the module's own global table and symbol pages), plus the distance of one relative call in `SetReservedID`. So the readings below hold for all four modules. Pointers are 32-bit (n32). Screen private means the record at `rrmScreenPrivateIndex` unless stated; the "pipe's record" `R` is the word at ScreenRec +116.

**The two tables behind the colour-map functions** (established from `nfbHWColormapScreenInit` and its readers). `R` holds, besides the visual table (base id at +80, 20-byte entries at +88, whose word +4 is a group number and whose word +0 is what `cmapDID` returns for a visual with no colour map of its own):

| `R` offset | Content |
|---|---|
| +112, +116 | count and pointer of the **slot table**: 28-byte entries, one per hardware colour map |
| +120, +124 | count and pointer of the **group table**: 24-byte entries, one per set of interchangeable slots |

A slot entry holds: +0 the colour map now installed there (0 for none), +4 and +8 count and list of other slots that share its storage (**inferred** from how the install and uninstall functions use them), +16 the display id `cmapDID` returns (**established**: the best-id search and the steal function hand the value to a window as its id; **inferred** to be what the colour-map field of `X_LOADXMAP_DID` is built from, [display modes](#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017)), +20 a flag that the slot's number is reserved with the display-id allocator, +24 a word no function here reads (**unknown**: no shipped software or published source depends on it, beyond its values 0x2810, 0x2a00, 0x2b00, 0, 0, 0x2c00-0x3100 in steps of 0x100, 0x3800, 0x4800, 0x5800, 0, 0, 0x20000, 0; routes: every reader of the table in this module). A group entry holds: +0 the number of slots, +4 a pointer to that many 8-byte records {slot number, index of the next record} forming a ring, +8 the index of the most recently installed record, +12 the install hook (called by `nfbInstallHWColormap`), +16 a hook that this module's colour-map functions never call (**inferred** the store hook, because the fake groups pair `konInstallFakeColormap` with `konStoreFakeColors`) and +20 a lost-map hook.

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
The hook at +40 is `konValidateMode`, from the module's descriptor, so this is where the XMAP mode load and `RRM_LOADDISPLAYMODE` go out for a newly used id ([display modes](#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017)).
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
It then runs the free-id search for each saved window, releasing the window with `FreeID` when none is found.
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
| +32 | `rrmInvalidate` | at 0x4ff730: invalidates kernel resources of a window with `RRM_INVALIDATERN` (1010) |
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
A zero mask means every resource the window holds: the valid-resource bits in rrm private byte +4, which follow `RRM_RMASK_*` of the 6.5.5 sys/rrm.h (0x2 clip, 0x8 swap buffer).
It sends ioctl 1010 with the rendering-node id (+12), the window id and the bits, and clears them in byte +4.
When the swap-buffer bit was among them, it copies bit 0x4 of the returned mode into the window's hwi word (+32) and calls `UpdateDIDMode`, with 1 when the kernel's returned flag word has bit 0 set and 0 otherwise.
Only when that bit is set and the flag argument is non-zero does it then run `SetDIDMode`; a change of hwi bit 0x4 also bumps the global serial number and flushes client caches.
With the clip bit it invalidates the window's clip id (`rrmInvalidateCID`) when the screen has clip ids.

`rrmNeedCID` at 0x44d590 in `kona.so` (**established**) is hook +92: it returns 1 unless the window's clip list is empty or fits within the rectangle count at rrm private +8.
With this module's 0 at +8 that is every window with a non-empty clip.

`konValidateSwapbuf` and `konValidateClip` mark their resource valid through `rrmSetResourceMask` at 0x4daf70 in `kona.so` (**established**), which sets the given bits in rrm private byte +4 and clears them in byte +5; the swap-buffer validation passes 8 and the clip validation 2.

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

`nfbRealizeCursor` at 0x4efd70 takes (screen, cursor). Allocates a 16-byte record (stored as the cursor's private word for this screen, CursorRec +20 + 4 x screen number) and a zeroed 256-byte buffer at record +8, sets halfword +12 to 1 and words +0 and +4 to 0. It clips the source bitmap to 32 x 32 (keeping the leftmost bits of a narrower cursor) and writes two 32-word planes: words 0-31 hold source AND mask (pixels in the foreground colour), words 32-63 hold mask AND NOT source (background). It returns 1; an allocation failure prints "nfbRealizeCursor: memory allocation failed" and returns 0. **Established:** the function table of `kona.so` uses `konRealizeCursor`, not this function, and in that module and its three siblings nothing refers to `nfbRealizeCursor` (the search is described [above](#nfbinitvisdids)), so a screen running one of them never builds that record. Its output is two 32 x 32 planes and no pipe-side form: the pipe's cursor image is a different layout ([cursor](#cursor-kona_select_cursor-10005-x_loadcursor-x_loadcursorcolor)).

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

**Established** (`kona.so` 6.5.30m; `konad.so`, `konal.so`, `konas.so`, `setmon` and `ircombine` carry functions of the same names, read here in `kona.so` only). The library behind the LoadFormat request and the combination loader ([dg.md](dg.md#loading-a-combination-channel)); the file format is in [ucode/dg.md](../ucode/dg.md). `GL_GRROOT`, when set, prefixes every path.

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
Then up to 15 channel records of 2736 bytes at +596, through 0x42bff0 (fields `ch%1d` + name, offsets in [dg.md](dg.md#loading-a-combination-channel)).
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
It reads the configuration record at +40 of that information, the `kona_config` of the 6.5.5 sys/kona_if.h header.
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

#### `vfmtSwapRateCloseEnough`

`vfmtSwapRateCloseEnough` at 0x429090 in `kona.so` (**established**) compares two swap rates: it is true when |a - b| / a is below 0.01.
The Combiner user guide calls swap rates within about 2 percent equal; the code's bound is 1 percent.

#### `vfmtSyncFormatFrameRatesCompatible`

`vfmtSyncFormatFrameRatesCompatible` at 0x429120 in `kona.so` (**established**) decides whether a channel can lock to a sync format's frame rate.
It is false when either rate is 0 or the larger is more than 16 times the smaller.
Otherwise it is true when the ratio is within 0.01 of a whole number (its fractional part's distance from one half exceeds 0.49).

## X server module: drawing commands

What `kona.so` (IRIX 6.5.30m) sends for X drawing, from a scan of every store whose address is the module's FIFO pointer plus 32 x token in the `kon` group of `ddx/asm/kona/`, with the module's own debug format strings (read at their `.rodata` addresses) naming the fields. The framing is the one in [How the module writes commands](#how-the-module-writes-commands): the first payload word goes to the token's address, the rest to offset 0. Word counts in the table are what the module stores; "map" is the routed entry's count field (bits 6-10) in [ucode/icu_map.tsv](../ucode/icu_map.tsv), and "ARM" the payload reads of the ARM handler ([ucode/arm1_handlers.tsv](../ucode/arm1_handlers.tsv)). Labels as above.

**Established** (bulk words). Runs of more than three words go through the module's copy helpers `KonSeqData3_ip19` to `KonSeqData11_ip19` (0x4275c0 onwards): helper N copies N words from the source, using 64-bit stores (`sdc1`) to a second FIFO pointer kept at +12 of the module's screen record when the source is 8-byte aligned, and one 32-bit store to the ordinary pointer first when it is not. So a 64-bit store to the FIFO carries two payload words, high word first.

**Established** (the remainder rule). A drawing call cuts its list into the largest fixed form (24, 6 or 1 items); a remainder of r items (2 to 6) goes as `X_DATAk` carrying the first r - 1 items' words, then the single form with the last item. So `X_DATA1`-`X_DATA10` are never sent alone: they preload words that the next drawing command consumes. **Inferred** from that order and from the routed entries of `X_DATA*` landing on the register-write handler ([ucode/arm1.md](../ucode/arm1.md)).

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
| `X_BOX` 0x154, `X_BOX6` | 2, 12 (map 2, 12) | `konDrawSolidRects`, `konSolidFillRects`, `konValidateClip`, the glyph routines | two words per box, (x1, y1) then (x2, y2) halfword pairs ([clips](#clips-rrm_validateclip-1011) has the clip-repaint form) |
| `X_SPANS` 0x156, `X_SPANS2`, `X_SPANS6` | 3, 5, 13 (map 3, 5, 13) | `konFillSpansSolid`, `...StippledC`, `...TiledCAccel`, `konSolidFS` | the span count (1, 2 or 6), then per span its start point word and its width word |
| `X_SEGMENT` 0x159, `X_SEGMENT6` | 2, 12 | `X_SEGMENT`: `konSegmentSS`, `konSolidZeroSeg`, one command per segment. `X_SEGMENT6`: no sender (no store at pointer + 0x2b40 in `kona.so`; the 0x2b40 constants in `konad.so`, `konal.so` and `konas.so` are in `nfbShmCreatePixmap`, not FIFO stores) | two point words per segment |
| `X_LINE` 0x15b, `X_LINE6`, `X_LINE_R`, `X_LINE6_R` | 2, 7, 2, 7 (map 2, 12, 2, 12) | `konLineSS` | a polyline: `X_LINE6` sends one point at the token address and six more through `KonSeqData6_ip19`, then advances six points, so consecutive commands share their end point. The map's count of 12 is two per segment; the module sends seven words, and that is the software's contract: the X server draws polylines this way on every pipe, so an `X_LINE6` command is seven words (the first at the token address) and the next word is a new command. The entry is a pass-form entry (`GFX` clear, count in bits 6-10, [ucode/arm1.md](../ucode/arm1.md#entry-format)); its distributor entry (table B 0xb0, word 0x251 of `qstrip.s`) loads strip state 9 and fetches, so the distributor walks the points through the strip code. **Inferred:** the count field states the end points the distributor hands on (six segments, two each), not the words it takes in. What the field does in the host interface for this entry is **unknown: no shipped software or published source depends on it** beyond the seven-word framing; routes tried: `konLineSS` and the copy helpers in all four X modules, the token map, the distributor listing ([ucode/ged_listing.txt](../ucode/ged_listing.txt)), kpm's table and the 6.5.5 headers |
| `X_PIX_SETUP` 0x136 | 7 (ARM 7) | `kon_loadNfbBitmapGC`, `kon_loadNfbOpaqueBitmapGC`, the glyph routines | 0, 4, a word from the GC private (+84), 0, two values computed by the caller, 0. **Established** (firmware `arm_x_pix_setup` 0x0c034ac4, `X_PixSetupGE` 0x0c035244): word 0 bits 0-3 are the transfer kind (0 framebuffer only; nonzero also sets up the texture-filter chip with `CompTF`; 2 also loads the packer from word 2 with `XSetPacker`) and bit 4 a flag kept at r8 + 0x934; word 1 picks the engine output module, 4 = `mmo_X_pixout_4` with the `cvmg_tbm` conversion (the bitmap and glyph case the module always sends) and 5 = `mmo_X_DrawBitmapOpaque` with a 16- or 32-bit conversion chosen by word 2 (1 or 2); words 1, 2 and 3 go to `X_PixSetupGE`, words 4 and 5 are kept at r8 + 0x904 and 0x908, word 6 goes to `CompGedReg` for the distributor set-up. The firmware caches words 0, 1, 2, 4 and 5 (r8 + 0x938-0x948) and `x_initpixels` invalidates the cache. **Unknown:** what words 3-6 mean to the engine and distributor beyond being passed on |
| `X_PIX_WRITE` 0x139 | 1 + data | the glyph routines, `konDrawOpaqueMonoImage` | a header word, then the bitmap words; `arm_x_pix_write` reads the header and moves the data with the pass-through counter |
| `X_PIX_FINISH` 0x13a | 1 (ARM 1) | the same callers | 0 |
| `X_PIX_COPY` 0x137 | 4 (ARM 4) | `konCopyRect` | source x, source y, destination x, destination y, from the halfwords the debug print names `xs`, `ys`, `xd`, `yd`; width and height come from the preceding `X_LOADPOS`/`X_LOADCLIP` |
| `X_PIX_READ` 0x138 | 2 (ARM 2) | `konReadImage`, `konReadFBBlock` | the x and y of the block (**established**, `arm_x_pix_read` 0x0c0349e4: it subtracts y from the screen height to flip it, and takes the width and height from words 4 and 5 of the preceding `X_PIX_SETUP`, kept at r8 + 0x904 and 0x908); small reads return through the read-back area ("konReadImage/rdata"), larger ones go through `KONA_DMAREAD` ("DOING DMA!"); followed by `WG_FLUSH_1` with 0xdeadbeef |
| `X_LOADSTIPPLE` 0x13c, `X_STORESTIPPLE` 0x13d, `X_ROTATESTIPPLE` 0x13e | 1, 3, 3 (ARM 1, 3, 3) | `kon_loadStipple`, `kon_loadTilePlane`, `kon_loadCachedStipple` | a stipple cache slot; store adds the pattern's size and then the pattern words; rotate adds the x and y origin (halfwords +96, +98 of the GC private). The debug print "store/load %d, rot %d,%d" names them |
| `X_LOADCMAP` 0x12e | 2 + n (ARM 2) | `konStoreColors`, `konInstallColormap` | colour-map address, a count n (1 per entry in `konStoreColors`), then n colour words. `arm_x_loadcmap` writes the address to display-bus register 0x118, peeks the count through port + 0x40 and moves the colour words to register 0x119 with the pass-through counter (0x4000000 \| n) |
| `X_LOADGAMMA` 0x12f | 4, or 2 + 1024 | `konStore24DCColors`, `konInstall24DCColormap`; the unnamed function at 0x498ff0 | per colour (red, green, blue in turn): the gamma address (base + 2 x index + 0x1000 x colour), the count 2, and the 12-bit value twice; or 0xdeadfeed, 1024 and 1024 packed 10:10:10 words for the external gamma RAM. Both forms are read in [dg.md](dg.md#colour-maps-and-gamma-tables) |
| `X_LOADXMAP_CONFIG` 0x133 | 1 (ARM 1) | `konCreateWindow` (1), `konDestroyWindow` (0), each followed by `WG_FLUSH_1` with 0xdeadbeef | one flag word, which `arm_x_loadxmap_config` writes to XMAP register 9 (bus address 0x109; [dg.md](dg.md#xmap-registers-memories-and-the-fast-list)) |
| `WG_FLUSH_1` 0x1ff | 1 | after cursor loads, read-backs and the X-map configuration | 0xdeadbeef. The firmware's handler `arm_wg_flush_1` is a branch to `arm_badcmd`, so the store is **inferred** to be a flush of the processor's write-gather buffer that the host interface drops before dispatch ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md#refused-tokens-beginend-divert-bad-command)) |

**Established, negative.** No store in the module addresses `X_INIT` (0x128), `X_LOADCLIP_ARM` (0x12c), `X_POINT24_R` (0x151) or any `X_UNUSED*` token; the scan's hits for them were string addresses that happen to be multiples of 32. **Unknown: no shipped software or published source depends on it:** no shipped program sends `X_INIT`. Routes tried, by constant 0x128 or token-address offset 0x2500 in the code: the X modules `kona.so`, `konal.so`, `konas.so`, `konad.so` and `konavis.so`, the X server `Xsgi`, `libGL` and `libGLcore` of every ABI, the kernel objects (`kona.a`, whose 25 command tokens are in [kona_kern.h](../kona_kernel/include/kona_kern.h)), `irsaudit`, `kpm`, `ireeprom`, `hyper`, `ircombine`, `hyperpipeinfo` and the textport routines of `kona_tport.o`. The firmware's handler `arm_x_init` sends `mgeb_XContextInitialize`, which `arm_slop` also sends, so the X-side engine state is set up without the token. An emulator need only run `arm_x_init` if the token ever arrives.

## Texel download: header word 7 and the load-scissor bit

**Established** (`DoDrawPixelsOrTexels`, `libglcore/asm/KONA/kon_pixel.s`, the function at 0x0d951aa0; word numbers are those of the table in [RM.h](../RM.h), counted from 1 after the token, so the word the question calls "header word 6" counted from 0 is word 7, the flag copied from the descriptor at +0xb4). The function reads the descriptor's +0xb4 first.

- **Word 7 is nonzero** (the callers store 1 there when bit 2 of the context word at +31580 is set, 0 otherwise: five sites in `kon_pixel.s` store it, at least four others store 0): for a texel download (bit 7 of the descriptor word at +24 set) the function ORs 4 into the descriptor's flags word at +0x84, which is header word 18, the image of `TGTML_TEXLD_MISC`; bit 2 of that register is the load-scissor enable (`LDSCISSOREN`, RM.h). When bit 5 of the global word at +1796 is also set it ORs 0x8000 (the interlaced-download bit). The header is then sent through `__glKonSendData` with its 20 words copied from the descriptor.
- **Word 7 is zero**: the flags word is sent as `subloadLevel` built it, with only the interlaced bit added when that global bit is set. The function does not set bit 2 on this path.

So bit 2 of header word 18 is **forced on whenever word 7 is nonzero on a texel download**, and it is off when word 7 is zero. **Established** (`kon_texture_api.s`, `subloadLevel` 0x0d96be7c onward, 6.5.30m): `subloadLevel` builds the flags word from the size code (internal-format entry +8), the bank bit pair, the tiling bits and the S and T bits of `st_bits_per_page`, and none of its paths ORs in 4, so the bit comes only from `DoDrawPixelsOrTexels`. The note in `RM.h` that the single-image path sets bit 2 does not match this code. The context bit behind word 7 is bit 2 of ctx+31580, which `GetBoardInfo` (called from `MakeCurrentRead`) sets and no store in the library clears; the pixel and texel callers still store 0 in word 7 on their non-DMA paths (`kon_pixel.s` stores at lines 1307, 2983, 3004, 7735 and 8057 of the listing), so on those paths bit 2 of word 18 is clear too. Bit 2 of word 18 and word 7 are therefore equal on every path.

**Established** since, from the firmware side ([ge.md](ge.md#pixel-images-hp_drawpixels-hp_drawtexels-hp_bitmap)): `arm_drawtexels` reads word 7 as the "image arrives by DMA" flag. When it is nonzero the handler ends the command at word 20 and leaves the image to the next `HP_DO_IDMA`; libGLcore's `__glKonSendData` takes the same decision from the same descriptor word (+180), sending the image inline when it is 0 and through ioctl 10001 otherwise. So the context bit at +31580 selects DMA delivery, and the load-scissor enable in word 18 rides on it. Word 10, the texel format id, is a row number into the firmware's format tables ([ge.md](ge.md#the-texel-format-id)).

## Texture functions

The entries below read the texture routines of the N32 `libGLcore` (`usr/gfx/arch/IP27KONA32/libGLcore.so`, 6.5.30m; the IP35KONA32 build has the same code) from `libglcore/asm/texture/`. Every entry names its function's address and the listing it comes from. Offsets after a pointer name are byte offsets into the structure that pointer addresses.

### Texture hash, texture-table cache and numeric helpers

The texture hash is a record that starts 40 bytes into the shared texture state (`__glkon_InitSharedTextureState` passes state + 40 to `__glKonInitTextureHash`): a chain pointer at +0, a use counter at +4 and 4096 entries of three words (value, use stamp, key) from +8. Key 0 marks an empty entry. The function-pointer triple at +0xc008 (find), +0xc00c (delete) and +0xc010 (insert) holds the fast or the slow set. Overflow blocks of 0x8004 bytes (a next pointer, then 4096 value and key word pairs) hang off the chain pointer.

#### `allocHashBlock`

`allocHashBlock` at 0x0d978100 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it allocates one empty overflow block for the texture hash and returns it.
It asks the allocator hook at offset 0 of the context whose pointer sits at process address 0x1010 for 0x8004 bytes.
It then clears the block's next pointer and each of its 4096 key words, four per loop pass.
It is called from `insertHashBlock`.

#### `wrapHashCacheLRU`

`wrapHashCacheLRU` at 0x0d978170 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it ages every use stamp in the texture hash table so the stamps cannot overflow.
It walks the 4096 table entries two at a time from hash +8 and, for each entry whose key word is not 0, subtracts 0x20000000 from the stamp, setting it to 0 if the result is negative.
It does not touch the use counter at hash +4.
`__glKonHashFindTexSlow` calls it when that counter reaches 0x40000000.

#### `insertHashBlock`

`insertHashBlock` at 0x0d9781f0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it stores a key and value pair in the chain of overflow blocks of the texture hash.
Its arguments are the hash, the key and the value.
For each block in the chain it probes up to eight slots, starting at slot (key & 0xfff) and stepping back by ((key >> n) << 6) | (key & 0x3f), where n is 6 for the first block and grows by one per block, and takes the first slot whose key word is 0.
When no block has a free slot it calls `allocHashBlock`, links the new block at the end of the chain (or as the first block) and uses slot (key & 0xfff).
It writes the value at slot offset 4 and the key at offset 8, each slot being eight bytes from the block start.

#### `__glKonHashFindTexFast`

`__glKonHashFindTexFast` at 0x0d978300 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it looks a texture name up in the texture hash table and returns its object, or 0.
It tests the home entry (key & 0xfff) and then four more entries, each reached by subtracting ((key >> 12) << 6) | (key & 0x3f) from the previous index modulo 4096; the match is on the key word at entry +8.
It never looks at overflow blocks, which is correct only while the table has not overflowed.

#### `__glKonHashFindTexSlow`

`__glKonHashFindTexSlow` at 0x0d978380 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it finds a texture object by name in the hash table or its overflow chain and stamps its use.
It probes the table as the fast version does.
A table hit gets the next value of the use counter at hash +4 as its stamp, and the counter is incremented; when the counter reaches 0x40000000 the function calls `wrapHashCacheLRU`.
On a table miss it searches each overflow block with eight probes; a chain hit is promoted into the table slot among the four probed that holds the smallest stamp, the displaced entry is put back with `insertHashBlock` unless its key is negative, and the chain slot's key is cleared.
It returns the object, or 0 when the key is nowhere.

#### `__glKonHashDeleteTexFast`

`__glKonHashDeleteTexFast` at 0x0d9785d0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it removes a texture name from the table-only hash and returns the object that was stored.
It probes five entries exactly as `__glKonHashFindTexFast` does and clears the key word of the match, leaving the value word in place.
It returns 0 when the key is not found.

#### `__glKonHashDeleteTexSlow`

`__glKonHashDeleteTexSlow` at 0x0d978650 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it removes a texture name from the table or from the overflow chain and returns the stored object.
It probes the table first, clearing the key word of a match at entry +8.
Failing that it probes each chain block with eight probes and clears the key of the matching slot at slot offset 8.
It returns 0 when the key is absent.

#### `__glKonHashInsertTexSlow`

`__glKonHashInsertTexSlow` at 0x0d978740 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it adds a texture object to the hash, spilling to the overflow chain when the table probes are full.
The home entry is used if its key word is 0; otherwise four more entries are tried with the usual step.
Each entry written gets the key, the value and the current use counter from hash +4 as its stamp.
When all five probes are taken it calls `insertHashBlock` with the same key and value.

#### `__glKonHashInsertTexFast`

`__glKonHashInsertTexFast` at 0x0d978820 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it adds a texture object to the table-only hash and switches the hash to the slow functions when the table overflows.
It tries five entries as the slow version does, writing the key and value (no stamp) into the first free one.
When all five are taken it calls `insertHashBlock` and then stores the addresses of `__glKonHashFindTexSlow`, `__glKonHashDeleteTexSlow` and `__glKonHashInsertTexSlow` into the triple at hash +0xc008, +0xc00c and +0xc010.

#### `__glKonInitTextureHash`

`__glKonInitTextureHash` at 0x0d978920 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it selects the fast lookup functions for a new texture hash.
It stores the addresses of `__glKonHashFindTexFast`, `__glKonHashDeleteTexFast` and `__glKonHashInsertTexFast` at hash +0xc008, +0xc00c and +0xc010, the hash being the argument.
It does not clear the table.
`__glkon_InitSharedTextureState` calls it with the shared state plus 40.

#### `__glKonFreeTextures`

`__glKonFreeTextures` at 0x0d978950 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it frees every texture object that the texture hash still holds.
It takes the context and the hash.
Every table entry whose key word is not 0 has its value passed to `__glKonFreeTextureObj`, and so does every used slot (key not 0) in each overflow block of the chain.
It frees only the objects; the chain blocks go in `__glKonFreeTextureHash`.

#### `__glKonFreeTextureHash`

`__glKonFreeTextureHash` at 0x0d978a30 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it releases the overflow blocks of a texture hash.
It follows the chain pointer at hash +0 and calls the context's free hook (offset 12) on each block in turn.
It does not free the table itself or any texture object.

### Texture-table cache

The cache keeps a recency-ordered list of texture-table entries. Its record has a list head pointer at +0, a free-node pool at +4, the number of nodes made at +8, a node limit at +12, the nodes per allocation block at +16, hooks for insert (+20), delete (+24), recency update (+28) and eviction (+32), an embedded list head node at +36 and a table of allocated blocks at +52. A node is four words: payload, serial number, previous and next.

#### `ARMTexCacheUnused2Used`

`ARMTexCacheUnused2Used` at 0x0d978a90 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it takes a node from the free pool of the texture-table cache and puts it at the recent end of the list.
It stores the payload argument in the node and relinks it just before the list head node, so the head's next pointer leads to the oldest entry.
It never allocates; the caller checks the pool first.

#### `__glKonUpdateARMTexCacheLRU`

`__glKonUpdateARMTexCacheLRU` at 0x0d978ad0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it marks a texture-table cache node as most recently used.
It unlinks the node from its place in the list and relinks it directly before the head node.
The cache installs it as its recency hook (+28) once the node limit is reached.

#### `__glKonInsertARMTexCacheSlow`

`__glKonInsertARMTexCacheSlow` at 0x0d978b20 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it adds an entry to a full texture-table cache by evicting the oldest one.
With free nodes in the pool it only moves one to the list through `ARMTexCacheUnused2Used`.
With none it takes the oldest node (the head's next), calls the eviction hook at +32 on that node's payload, moves the node to the recent end with `__glKonUpdateARMTexCacheLRU` and stores the new payload in it.

#### `__glKonInsertARMTexCacheFast`

`__glKonInsertARMTexCacheFast` at 0x0d978bc0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it adds an entry to a texture-table cache that is still growing, one allocation block at a time.
When the pool is empty and the node count at +8 is below the limit at +12 it grows the block table by one pointer, allocates a block of (count at +16) nodes of 16 bytes through the context hooks at +8 and +0, numbers the nodes with the running count and chains them into the pool.
It then calls `ARMTexCacheUnused2Used` with the payload.
When the pool is still empty it swaps the insert hook to `__glKonInsertARMTexCacheSlow` and the recency hook to `__glKonUpdateARMTexCacheLRU`, then calls the slow insert.

#### `__glKonDeleteARMTexCache`

`__glKonDeleteARMTexCache` at 0x0d978d70 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it removes one node from the texture-table cache list and returns it to the free pool.
It unlinks the node from its neighbours and pushes it on the pool at +4.
It does not call the eviction hook.

#### `__glKonInitARMTexCache`

`__glKonInitARMTexCache` at 0x0d978da0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it sets up an empty texture-table cache with a node limit, a block size and an eviction hook.
Arguments are the cache, the limit (stored at +12), the nodes per block (+16) and the eviction function (+32).
It clears the pool, the node count and the block table pointer, links the embedded head node at +36 to itself, and installs `__glKonInsertARMTexCacheFast`, `__glKonDeleteARMTexCache` and `__glNop` as the insert, delete and recency hooks.

#### `__glKonInvalidateARMTexCache`

`__glKonInvalidateARMTexCache` at 0x0d978df0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it empties the texture-table cache, telling the owner of each entry first.
For every node on the list, oldest first, it calls the eviction hook at +32 with the node's payload.
It then splices the whole list onto the free pool and links the head node to itself.

#### `__glKonFreeARMTexCache`

`__glKonFreeARMTexCache` at 0x0d978e90 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it releases the memory of a texture-table cache.
It divides the node count at +8 by the block size at +16, frees that many blocks named in the block table at +52 and then the table, all through the context's free hook at offset 12.
It does not call the eviction hook.

### Numeric helpers

#### `__glKonTexChecksum`

`__glKonTexChecksum` at 0x0d978f60 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it folds an array of 32-bit words into one 32-bit key that `addTexTableUsage` compares before it compares contents.
The arguments are the word count and the array.
Counting back from the last word, the last word, the one two before it and so on are XORed together, the words between are added, and the result is the XOR of the sum and of that XOR.
It returns 0 for a count of 0.

#### `__glKonTexQuickSortPairs`

`__glKonTexQuickSortPairs` at 0x0d979020 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it sorts an array of float pairs into increasing order of the first float, carrying the second along.
Its arguments are the array, the first index and the last index; each pair is eight bytes.
It takes the middle element's first float as the pivot, partitions with an inward scan from both ends, swaps the two words of out-of-place pairs, and recurses on both halves.
`addTexTableUsage` uses it on the control points of the detail and sharpen functions.

#### `__glKonTexEvaluateCubicSpline`

`__glKonTexEvaluateCubicSpline` at 0x0d979510 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it evaluates a cubic spline, given its second derivatives, at an increasing list of x positions.
The arguments are the query array and the result array, the query count, then the knot x values, the knot y values, the second derivatives and the knot count.
Queries below the first knot get the first y value.
Queries between knots k and k+1 use A = (x1 - x)/h and B = 1 - A with h the knot spacing, and return A*y0 + B*y1 + (h*h/6)*((A*A*A - A)*z0 + (B*B*B - B)*z1).
Queries past the last knot get the last y value.

#### `__glKonTexExp2NegX64`

`__glKonTexExp2NegX64` at 0x0d9796d0 (`kon_texture_util.s`, `IP27KONA32/libGLcore.so`): **Established** it returns 64 times 2 to the power of a non-positive float, plus 0.5, from two small tables.
It splits the argument x into the integer n (truncated toward zero) and the fraction f = n - x.
The first table, at data address 0x0da85848, holds 64, 32, 16, 8, 4, 2, 1 for n = 0 down to -6, and the value is 0 for n below -6.
The second table, `__glKonExp2From0ToM1` at 0x0da7f280, holds 2 to the power of -i/88 for i from 0 to 87 and is indexed with the truncation of f times 88.
The result is the first table value times the second table value, plus 0.5.

### Texture memory

The allocator manages two memory units, numbered 0 and 1, held in the shared texture state. Each unit has a 192-byte record at state +0xc130 + 192 x unit: three cached run start nodes (+0x00), three cached maximum run sizes (+0x0c), a stale flag for those caches (+0x18), 30 free-list bucket heads (+0x1c), a bucket occupancy mask (+0x94), the largest free bank (+0x98), the total free size (+0x9c), a pointer to the unit's list sentinel (+0xa0) and the sentinel node itself (+0xa4). Banks are 28-byte nodes: previous (+0) and next (+4) in address order, priority (+8, -1 for a free bank, -2 for the sentinel), start offset (+12), size (+16), and, for a used bank, the owning texture object at +20; a free bank uses +20 and +24 as previous and next links in a single list ordered by increasing size, which the bucket heads index. A texture object keeps its banks at +264 (unit 0) and +268 (unit 1), their start offsets at +276 and +280, its unit order at +284 and its priority at +8. The state also holds the end offset of memory obtained so far (+0xc2b8) and the list of resident objects (+0xc2b0).

#### `globalAlloc`

`globalAlloc` at 0x0d975a80 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it obtains or grows the texture memory pool from the kernel and returns the result of that request.
Its arguments are the shared state and a count, which it multiplies by 64 to get bytes.
If bit 1 of the state's first word is clear it calls `__glkon_texture_mem_alloc` and sets the bit; otherwise it calls `__glkon_texture_mem_realloc` with the state word at +0xc2b8 plus the count, times 64.
When an environment variable that it reads once is set, it also prints a size to stderr.
`__glKonTexAlloc` calls it when the pool must grow.

#### `whichBucket`

`whichBucket` at 0x0d975b50 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it maps a bank size to one of 30 half-octave free-list buckets.
It finds the position n of the highest set bit of the size and returns 2 x (n - 5) plus the next lower bit, capped at 29; sizes below 32 and the size 0 give bucket 0.
`findFreeBank` and `insertFreeBank` use it to index the bucket heads of a unit record.

#### `findFreeBank`

`findFreeBank` at 0x0d975bf0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it returns the smallest free bank of a memory unit that is at least a given size, or 0.
Its arguments are the shared state, the unit and the size.
It starts at the head of the bucket that `whichBucket` gives and follows the next links (+24) while the bank is too small.
If the bucket has no such bank it uses the occupancy mask at unit-record +0x94 to take the head of the next higher non-empty bucket, whose banks all exceed the bucket's range.

#### `deleteFreeBank`

`deleteFreeBank` at 0x0d975d30 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it takes a free bank out of a unit's size-ordered free list.
It calls `whichBucket` for the bank's size, joins the bank's neighbours, and if the bank headed its bucket it moves the head to the next bank when that is in the same bucket and otherwise empties the bucket and clears its mask bit.
It also moves the largest-bank pointer (+0x98) back to the previous bank when the deleted one was the largest, and subtracts the bank's size from the unit's total free size at +0x9c.

#### `sizeNoGreaterPriorityInterval`

`sizeNoGreaterPriorityInterval` at 0x0d975e70 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it adds up the sizes of the unbroken stretch of banks around one bank whose priorities do not exceed a limit.
Its arguments are the bank, the priority limit and the unit's sentinel.
It sums the bank and each previous bank (+0) while their priority is at most the limit and the sentinel is not reached, and then each next bank (+4) the same way.
It returns the total.

#### `insertFreeBank`

`insertFreeBank` at 0x0d975f30 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it puts a free bank into a unit's size-ordered free list and refreshes the cached run sizes.
Its arguments are the state, the unit, the bank and a priority level.
It calls `whichBucket`, links the bank in place by increasing size (starting its search at the bucket head, or from the last bank of the nearest lower non-empty bucket when its bucket was empty), sets the bucket's mask bit when needed, updates the largest-bank pointer and adds the size to the total at +0x9c.
Unless the stale flag at +0x18 is already set it then calls `sizeNoGreaterPriorityInterval` for each priority from the given level down to 0 and sets the flag at the first level where the run reaches the cached maximum.

#### `inInterval`

`inInterval` at 0x0d9761a0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it tells whether the banks from a start node to the end of a unit's list add up to less than a size.
Its arguments are the start node, the size and the sentinel.
It returns 1 if it reaches the sentinel before the running total of sizes reaches the argument, and 0 if the size is 0 or less or the total reaches it first.

#### `maxSizeNoGreaterPriorityInterval`

`maxSizeNoGreaterPriorityInterval` at 0x0d9761e0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it returns the size of the longest unbroken stretch of banks in a unit whose priorities are at most a limit.
Its arguments are the state, the unit and the limit.
It walks the unit's list from the sentinel's next bank, adds sizes while the priority stays within the limit, and keeps the largest total, with a bank above the limit ending a stretch.

#### `validateMaxIntervalBank`

`validateMaxIntervalBank` at 0x0d976290 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it recomputes the three cached maximum run sizes of a unit and clears the stale flag.
For the priority limits 0, 1 and 2 it walks the list once, finds the longest stretch of banks whose priority is at most the limit, and stores its first node at unit-record +0x00, +0x04 or +0x08 and its size at +0x0c, +0x10 or +0x14.
It then writes 0 to the flag at +0x18.

#### `validateBank`

`validateBank` at 0x0d9764c0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it is a consistency check of a unit's free-bank bookkeeping that prints a message when a rule fails.
If the stale flag is set it first calls `validateMaxIntervalBank`.
It then checks that the occupancy mask has the bit for the largest free bank's bucket, printing "bank %d: bogus free bucket mask 0x%x, max size = %d", and that the cached run sizes match `maxSizeNoGreaterPriorityInterval` for each of the priorities 0, 1 and 2, printing "bogus priority interval on bank %d".
`__glKonTexAlloc` calls it for both units before it allocates.

#### `stealNoGreaterPriorityBank`

`stealNoGreaterPriorityBank` at 0x0d976650 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it picks the stretch of banks of a unit to evict so that a request of a given size fits, and returns the stretch's first bank.
Its arguments are the state, the unit, the priority limit and the size.
When the largest free bank is already big enough it just returns `findFreeBank` for the size.
Otherwise it slides a window over the unit's banks, keeping at most the banks of priority within the limit in a ring of node and last-use pairs (512 bytes at first, doubled by copying when full), and among the windows whose sizes total at least the request it keeps the one with the lowest use stamp, read from the owner's word at +288 that `updateTexUsage` writes (**inferred** from the comparison against the best stamp so far, which starts at 0x40000000).
When no window fits it prints "bogus stolen memory for %d in bank %d with priority %d" and calls `exit` with 1.

#### `getMemNode`

`getMemNode` at 0x0d976c40 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it returns a spare 28-byte bank node from the state's node pool, making more when the pool is empty.
The pool head is at state +0xc2d0, the table of node blocks at +0xc2c8 and the block count at +0xc2cc.
When the pool is empty it grows the table by one entry with the context's reallocation hook (+8), allocates 7168 bytes (256 nodes) with the allocation hook (+0), links the nodes through their next fields and ends the chain with 0.

#### `putMemNode`

`putMemNode` at 0x0d976d60 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it returns a bank node to the state's node pool.
It stores the pool head (state +0xc2d0) in the node's next field and makes the node the new head.

#### `releaseMemBank`

`releaseMemBank` at 0x0d976d80 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it turns a used bank back into free space and merges it with free neighbours.
Its arguments are the state, the unit and the bank.
It sets the bank's priority to -1, and for the previous bank (+0) and the next bank (+4), when either is free (priority -1), it deletes that neighbour from the free list with `deleteFreeBank`, folds its size and start into the bank and returns the node with `putMemNode`.
It ends by calling `insertFreeBank` with the old priority of the bank as the level.

#### `addFreeBank`

`addFreeBank` at 0x0d976ee0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it adds newly obtained memory of a given size to the end of a unit's bank list.
If the last bank (the sentinel's previous) is free it removes that bank from the free list with `deleteFreeBank` and grows it; otherwise it takes a node with `getMemNode`, links it at the end as a free bank of the size at the state's end offset (+0xc2b8).
It then calls `insertFreeBank` for the bank with level 2 and returns the bank.

#### `getFreeBank`

`getFreeBank` at 0x0d976ff0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it carves a used bank of a requested size for a texture object out of a stretch of banks chosen by the stealing search.
Its arguments are the state, the unit, the first bank of the stretch, the size and the object.
If the unit's cached run sizes are stale it checks the stretch with `inInterval` and marks them valid.
It then visits banks of the stretch until their sizes total at least the request.
A free bank is removed from the free list with `deleteFreeBank`.
A used bank's owner is taken off the resident list at state +0xc2b0 (clearing bit 20 of the owner's word at +32), the owner's pointer for this unit is cleared, the owner is passed to `__glKonFreeAllocedTexObjBank`, and when that returns non-zero the owner's bank in the other unit goes through `releaseMemBank`.
Each visited node goes back with `putMemNode`.
It then takes a node from `getMemNode`, makes it a used bank of the size with the object's priority and the object as owner, stores it at object +264 or +268 with its start offset at +276 or +280, and turns any remainder into a free bank with `insertFreeBank`.

#### `__glKonTexAlloc`

`__glKonTexAlloc` at 0x0d9773e0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it gives a texture object its banks in the two texture memory units, evicting lower-priority objects and growing the pool when needed.
Its arguments are the shared state, the object and a mode word.
The needed byte counts are object +0 and +4, one per unit, and the unit order is the stored one at +284 when bit 1 of the mode is set and otherwise follows from comparing the two sizes and the two units' total free sizes (+0x9c).
It calls `validateBank` for both units.
For each unit it takes a start bank from `findFreeBank` when the unit's largest free bank is big enough and from `stealNoGreaterPriorityBank` when it is not, and then calls `getFreeBank` to make the bank.
When even evicting cannot supply the size it calls `globalAlloc` to enlarge the pool (checking that the pool size minus the end offset is a multiple of 1024 and printing a message if not), `addFreeBank` for both units and tries again.
On success it stores the unit order at +284, sets bit 20 of the word at +32, links the object at the head of the resident list at state +0xc2b0 through its +292 and +296 fields, and returns 0; it returns -1 when memory cannot be found.

#### `__glKonTexFree`

`__glKonTexFree` at 0x0d977ce0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it gives back a texture object's memory and takes it off the resident list.
If bit 20 of the word at +32 is set it unlinks the object from the list at state +0xc2b0 (fields +292 and +296) and clears the bit.
It then calls `releaseMemBank` for the bank at +264 (unit 0) and at +268 (unit 1) when they are not 0, and clears those fields.
It returns 0.
`__glKonFreeTextureObj` and `deallocTexture` call it.

#### `__glKonTexUpdatePriority`

`__glKonTexUpdatePriority` at 0x0d977dd0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it changes a texture object's priority and the priority recorded in its banks.
Its arguments are the state, the object and the new priority; it returns at once when the object already has it.
For the banks at object +264 and +268 it writes the priority into the bank's word at +8 and, unless the unit's stale flag at record +0x18 is set, sets that flag when the change could alter a cached run: for a rise it tests the cached run start with `inInterval`, and for a fall it compares `sizeNoGreaterPriorityInterval` of the bank against the cached maximum.
It finally writes the priority at object +8.
`__glKonTexParameter` and `__glkonim_PrioritizeTexturesEXT` call it.

#### `__glKonInitTextureMemory`

`__glKonInitTextureMemory` at 0x0d977fc0 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it sets the texture memory state to empty with the given maximum size.
The second argument is stored at state +0xc2b4 (the per-unit capacity, checked in `__glKonTexAlloc`), the counters at +0xc2ac to +0xc2b0 and the pool words are cleared, and for each unit the sentinel node (at record +0xa4) is linked to itself with priority -2, heads the first free-list bucket, is the largest bank, and the stale and mask fields are set up (mask 1).
`__glkon_InitSharedTextureState` calls it.

#### `__glKonFreeTextureMemory`

`__glKonFreeTextureMemory` at 0x0d978050 (`kon_texture_mem.s`, `IP27KONA32/libGLcore.so`): **Established** it releases all bank-node memory of the texture state.
It frees each of the node blocks named in the table at state +0xc2c8 (their count is at +0xc2cc) and then the table, using the context's free hook at offset 12.
`__glkon_FreeTextureState` calls it.
