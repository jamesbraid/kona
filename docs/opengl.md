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
- **`ChangeWindowSize`** and **`FindWindowSize`**: store the window width and height at ctx+3700 and +3704 and re-issue the viewport and scissor through `__glkonim_Viewport` and `__glkonim_Scissor`; `FindWindowSize` asks the drawable object (callback at +28) for its size and re-creates state on a mismatch.

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

### Stereo: `KONA_SET_CHANNEL_RECT` (10009)

**Established** (`konaSetStereoMode(screen, a, b, mode)`, `misc` group). When `mode` is 1 and a small-data flag of the module is set, it writes 531 to the halfword at +6 (`y1`) of an 18-byte block in `.bss` (0x591ba0) and passes the block to 10009; on failure it stores -7905 in a module error word and logs "Failed : update kernel with channel cursorinfo". It then calls `nfbSetStereoMode`. No other store to the block was found by offset in the module, so the call sends channel 0, valid 0, priority 0, x1 0, y1 531 and zeros: **inferred** to withdraw channel 0 from the cursor rectangles while stereo is on. Whether another path fills the block through a pointer is **unknown**. Kernel side: `kona_set_channel_rect` ([dg.md](dg.md#choosing-the-cursor-channel)).

### Display functions: cursor records, display ids, colour maps, gamma

**Established** from `kona.so` 6.5.30m by address; screen private means the record at `konScreenPrivateIndex`, as above.

#### `konRealizeCursor`

`konRealizeCursor` at 0x54ad40 takes (screen, cursor). If any screen's private word +92 already holds this cursor (the crosshair the module keeps), it returns true without allocating. Otherwise it allocates a 32-byte cursor record, stores it as the cursor's private word for this screen (CursorRec +20), clears its +0 and +4, allocates and clears a 260-word image buffer at +8, builds the image with the helper at 0x456fe0, and marks it not yet on the pipe (halfword +12 = 0) with no cache slot (+16 = 0). The image reaches the pipe later, through `konDisplayCursor` ([cursor](#cursor-kona_select_cursor-10005-x_loadcursor-x_loadcursorcolor)).

#### `konUnrealizeCursor`

`konUnrealizeCursor` at 0x55f270 takes (screen, cursor). A private word of 1 (the crosshair) is just cleared. Otherwise it releases the record's cache slot through 0x4c20e0, which unlinks the slot from the cache list, clears the record's +12 and +16 and resets the screen's current slot (private +112) to -1 when it was this one, then frees the records at +4 and +8 and the record itself and clears the private word. Nothing is sent to the pipe.

#### `kon_freeCursorCaches`

`kon_freeCursorCaches` at 0x567700 takes (screen private). Frees the cursor-cache table at +116 when there is one. `kon_initCursorCaches` builds it with the 39 slots ([dg.md](dg.md#cursor-memory)).

#### `konReloadAllGammas`

`konReloadAllGammas` at 0x464060 takes (screen). Calls 0x4520a0 with the screen's video-control private record (`vcScreenPrivateIndex`), which walks every gamma map (count at +32, 16-byte entries at +36, the shadow pointer at entry +12; a missing shadow prints "NULL gamma shadow (%d)") and loads red, green and blue from the shadow through 0x477dc0: three 4096-entry tables at shadow +4, +8196 and +16388. 0x477dc0 picks the starting address from the shadow's kind word: kind 0 address 0, kind 1 (map << 14) + 0x40000, kind 2 0xf000 through the 0xdeadfeed form at 0x498ff0; it advances the address by 4096 per component. Both `X_LOADGAMMA` forms are in [dg.md](dg.md#colour-maps-and-gamma-tables). Afterwards, when all three components were loaded, it marks the shadow as an identity ramp (word +24580) if the blue table is 0 to 4095 in order, and when that mark changed it re-sends display command 15 (`DoDGRqstChannelGammaMap`) for every channel that uses this map, through the control sender at 0x548db0 with attribute 10.

#### `konInitDIDState`

`konInitDIDState` at 0x457600 takes (screen). Fills the display-id table of the rrm screen private (`rrmScreenPrivateIndex`, 36-byte entries from +152): ids 0-62 are main-plane ids (halfword +18 = 0, +8 = 0, +12 = 8), id 63 is one of kind 3 (+8 = 0x3c00, +12 = 5), ids 64-95 are overlay ids (kind 1); no id gets kind 2. Main ids at or above `KON_X_LIMIT_MAIN_DID` (accepted 14-63, default 63) get kind 0xffff (unusable). `KON_X_LIMIT_OVERLAY_DID` (accepted 5-32, default 32) is added to running totals in a way that leaves ids 63-95 usable for every accepted value, so as coded it removes no overlay id. A rejected value prints "punting, bogus DID limit" and keeps the default. It checks that the total, 96, equals the count at rrm private +0 ("numids mismatch"). **Inferred:** kind 0 main, 1 overlay, 3 a reserved id, from the counts and the env-variable names; words +8 and +12 are the hardware-independent and hardware-dependent mode words of the windows that hold the id, **established** from the setter that records them, [below](#setdidmode).

#### `konChangeDIDCmap`

`konChangeDIDCmap` at 0x44f1d0 takes (window, colormap). For a window with a display id (rrm private +20 not negative) and a colormap, it re-sends `X_LOADXMAP_DID` exactly as `konValidateMode` does ([display modes](#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017)): the display id, then the colormap's table entry << 7, the plane count - 1 (capped at 12 when screen private +32 is set) << 3, and the luminance and grey flags, which it takes only for colour-index visuals (visual flag bit 0 set, 0x2000 clear). It caches {entry, size, grey, lum} at screen private +48 + 16 x id first. Its debug print reads "did = %d cmap base = 0x%x, size = %d".

#### `kon_drawDid`

`kon_drawDid` at 0x4715c0 takes (id, plane mask, screen, command pointer). Loads the drawing state for painting display-id planes, without drawing: `X_LOADCLIP` with 1, 0, 0, screen width, height; `X_LOADPOS` (0x12a) with 0, 0, width, height; and `X_LOADGC` with 13 words in the order of [the drawing grammar](#x-server-module-drawing-commands): foreground = the id placed in the display-id bit field, write mask from the plane mask, then fixed words (cfg low bits 0x8, op low nibble 1, addr low six bits 0, bl bits 1-4 = 3, ifmt 0, colfmt 1, pixfmt 1). Two placements exist, chosen by bit 2 of screen private +148: the id's low four bits at bit 3 and its next twelve at bit 8 of `fg_h`, with mask `wmask0`; or the same at bits 9 and 14 of `fg_l`, with mask `wmask1`. **Inferred:** the two layouts are the display-id field's position in two pixel depths; the callers then send the boxes.

#### `konTempBlankAllChannels`

`konTempBlankAllChannels` at 0x4657a0 takes (screen, value). Sends display command 60 (`DoDGRqstTempBlankAllChannels`) with the one word `value`, through the sender at 0x5341a0. The firmware blanks or unblanks every channel ([dg.md](dg.md#display-requests)).

#### `konInitializeColormap`

`konInitializeColormap` at 0x535530 takes (colormap). Clears the colormap's private word (+68) and creates the hardware colormap (`nfbCreateHWColormap`). For a static visual class (even class number) it fills the entries with `rrmInitializeGLStaticColormap` on a 32-bit-deep screen or `cfbInitializeColormap` otherwise. For a PseudoColor colormap whose visual has flags 0x2020001 set, on a screen whose private +36 is set, it then fills all 256 entries from three 256-byte tables in the module's data (red 0x5869e0, green 0x586ae0, blue 0x586be0, each byte shifted to 16 bits) and marks them allocated; the first eight are black, red, green, yellow, blue, magenta, cyan, white. **Inferred:** the IRIS default colour map, from that order. For an overlay or underlay visual (flag 0x8, or 0x2 without 0x40000) it reserves entry 0, **inferred** as the transparent pixel, and fails when the colormap's flag word (+16) has bit 1 set, **inferred** fully allocated.

#### `konClearHWColormap`

`konClearHWColormap` at 0x4a25a0 is an empty function that returns at once. The pipe's colour map is not cleared from here.

#### `konSetColor`

`konSetColor` at 0x4dac10: prints "konSetColor *** should NOT be called" through `ErrorF` and returns; colour stores go through `konStoreColors` and its relatives.

#### `konUninstallColormap`

`konUninstallColormap` at 0x508660 takes (colormap). Looks up the visual's flags in the module's visual table (ScreenRec +116 record: 20-byte entries at +88, indexed from the base id at +80). For an RGB visual (flag 0x2000) it does nothing; otherwise it calls `nfbUninstallColormap`.

#### `konInstallFakeColormap`

`konInstallFakeColormap` at 0x4c3620 is an empty function, like `konClearHWColormap`.

#### `konStoreFakeColors`

`konStoreFakeColors` at 0x460c60 is an empty function that takes three arguments and returns.

#### `konQueryMaxSwapBarrier`

`konQueryMaxSwapBarrier` at 0x44f1b0 returns 1, so the module reports one swap barrier.

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

`nfbCreateHWColormap` at 0x4e75e0 takes (colormap). Allocates the colormap's private block and stores it at ColormapRec +68: for a TrueColor visual (class 5) 8 bytes plus 12 bytes per word of a bit map sized to the visual's entry count; for any other class 8 bytes plus (entries + 31) / 8. It sets block word 0 to -1 (no hardware slot) and clears the bytes from +4 (three entry-count bit maps for TrueColor, one otherwise) through the helper at 0x54b4f0, which returns 1. An allocation failure returns 0 with the private word left 0. **Inferred:** the bit maps record which entries have been allocated. Called from `konInitializeColormap`.

#### `nfbDestroyHWColormap`

`nfbDestroyHWColormap` at 0x56d9c0 takes (colormap), frees the private block at +68 and clears the pointer. It does not release a hardware slot; `nfbUninstallHWColormap` does that. Its address is in the module's function table at 0x5866d8, in the slot the order of the neighbouring entries (create, destroy, install, uninstall, list) suggests is destroy-colormap (**inferred**).

#### `nfbInstallHWColormap`

`nfbInstallHWColormap` at 0x450d60 takes (colormap). It does not load colours; it gives the colormap a hardware slot and runs the group's install hook. Its address is the table word at 0x5866dc, between destroy and uninstall (**inferred** install-colormap slot).

1. The group is word +4 of the visual-table entry for the colormap's visual. The colormap's slot is block word 0.
2. If the colormap already has a slot, it moves that slot's record to the head of the group's ring (the ring links are the second words of the records) and returns, sending nothing; when it is already the head it returns at once.
3. Otherwise it takes the record after the head as the victim, makes it the head, and stores its slot number in the colormap. If another colormap holds that slot it is told it lost the map (`WalkTree` over the screen with `TellLostMap`) and its slot becomes -1. The same happens for every slot in the victim slot's shared list, which clears those slots' installed pointers and calls the group's lost-map hook if it has one (this module's table has no shared lists and no lost-map hooks, so only the first case happens).
4. If the rrm screen record's word +48 is non-zero and the slot's reserved flag (+20) is clear, it reserves the slot's number with the display-id allocator ([reserve an id](#setreservedid)) and sets the flag, so the display-id allocator treats that colour-map number as taken.
5. It calls the group's install hook with the colormap, stores the colormap as the slot's installed map and walks the screen with the callback at 0x478b10, **inferred** to be the gained-map notice.

The ring makes this a least-recently-used cache over the slots of a group. **Inferred** from the code: the head is the most recent and the record after the head is the next victim. When a group has one slot, the victim is that slot.

#### `nfbUninstallHWColormap`

`nfbUninstallHWColormap` at 0x5673b0 takes (colormap) and returns nothing. For a colormap with a slot it moves that slot's record to the position just after the head, so it becomes the next victim. Unless the colormap is the screen's default (ScreenRec +28 compared with the colormap id), it then: when the rrm word +48 is non-zero, releases that reservation ([release a reservation](#setnostealid-unsetreservedid-freeid-freecid)) and clears the reserved flag; clears the slot's installed pointer; sets the colormap's slot to -1; tells the screen's windows the map was lost; calls the group's lost-map hook if any; and finally, when the default colormap's group contains the freed slot (or a slot that shares it), calls the screen's install function (ScreenRec +316, **inferred** `InstallColormap`) with the default colormap. **Inferred:** a freed slot returns to the default map when it could hold it. A colormap without a slot (private block null or word 0 negative) returns at once.

#### `nfbListInstalledHWColormaps`

`nfbListInstalledHWColormaps` at 0x525350 takes (screen, id array). Walks the slot table (count at `R` +112), writes the id (ColormapRec +8) of every slot with an installed colormap to the array and returns the count. Its address is the table word at 0x5866e4 (**inferred** list-installed slot).

#### `nfbHWColormapScreenInit`

`nfbHWColormapScreenInit` at 0x4f3090 takes (screen, slot count, slot table, group count, group table). Allocates 28 x slot count and 24 x group count bytes, copies the caller's tables into them and stores the counts and pointers in `R` (+112, +116, +120, +124). Returns 1, or 0 when an allocation fails (after freeing the first). Only `konInit` calls it, with `konNumHWCmaps`, the table at 0x586198, `konNumCmapGroups` and the table at 0x586088. The record rings the groups point to are not copied.

#### `nfbHWColormapScreenClose`

`nfbHWColormapScreenClose` at 0x4f22c0 takes (screen) and frees the slot table and the group table from `R`. `konCloseScreen` calls it.

#### `cmapDID`

**Established** in `kona.so` 6.5.30m: `cmapDID` at 0x4b05f0 takes (window) and returns the display id for the window's colour map. It looks up the window's colormap (the optional record's colormap, or none for an InputOnly window) as a resource of type 6 (colormap). With a colormap whose block word 0 is not negative, it returns that slot's +16 field. Otherwise it returns word +0 of the visual-table entry for the window's visual. **Inferred:** the second form is the id a window gets when its colormap has no slot. Callers: the best-id search and the steal function of [the allocator](#the-display-id-allocator) and the two unbind-from-clip functions (`rrmUnbindRNFromClip`, `rrmOGLUnbindRNFromClip`).

#### `nfbInitVisDIDs`

`nfbInitVisDIDs` at 0x52dcd0 takes (count, entries, table). For each 20-byte entry it copies word +4 of the 32-byte table record whose index is the entry's word +4 into the entry's word +0; the loop is unrolled by two. **Inferred:** it fills in each visual's display-id value from a per-depth table. **Established:** no code or data in any of the four modules refers to it, so it is exported but never run by them; what the entries and the table are is **unknown: no shipped software or published source depends on it** (routes: in all four modules no global-table slot, data word or address-building instruction pair holds its address, while the same search finds the addresses of two of its neighbours, each in one table word).

#### `nfbSetDidFlags`

`nfbSetDidFlags` at 0x4f3dd0 takes (window). It keeps two bits in the window's frame-buffer private word +32 (`nfbWindowPrivateIndex`): bit 0x4, set when the window needs a display id of its own, and bit 0x8, set when any descendant does or has bit 0x8 itself. Bit 0x4 comes from a static helper at 0x4ad610 (called with the window, its private record, `R` and the parent's private record): it clears bit 0x4 and returns 0 for a window whose state bit 10 (word +124, **unknown** which state) is clear or that has no parent; otherwise it sets bit 0x4 and returns 4 when the window or the parent lacks private bit 0x1, when the colormap differs from the parent's (private bit 0x2 set) or when the visual differs (bit 0x2 clear). `nfbSetDidFlags` runs it on the window itself, discarding the result, then on each child, sets bit 0x8 on the window if any child's result was non-zero or the child has bit 0x8, and clears it otherwise. When bit 0x8 or 0x4 is now set it marks bit 0x8 on every ancestor. When both just cleared but one of them was set before, it walks up the ancestors and clears bit 0x8 on each one that has no child with bit 0x4 or 0x8, stopping at the first ancestor that still has one; an ancestor that lacks bit 0x8 here prints "nfbSetDidFlags: should never get here". **Inferred:** the bits say which windows in a tree need a display id different from their parent's. **Unknown:** what sets private bits 0x1 and 0x2. Nine call sites, among them `nfbRealizeWindow`, `nfbChangeWindowAttributes`, `rrmUnbindRNFromClip` and `rrmDoubleBufferWindow`.

#### `SetDIDMode`

`SetDIDMode` at 0x501220 takes (window). With the window's display id (rrm window private +20, negative means none, then it returns) it looks at the 36-byte entry in the display-id table of the screen private (from +152). That entry's flag halfword (+16) has bit 0x8 for "mode recorded". If the bit is set and the helper `compareModes` at 0x5358c0 says the recorded mode equals the window's, it returns. `compareModes` returns 1 when the entry's kind halfword (+18) equals the window record's halfword +2 and the entry's words +8 and +12 equal the window's hardware-independent mode (+32) and hardware-dependent mode (+36) under two screen masks (private +16 and +20; +16 has bit 0x4 cleared when the caller asks). Otherwise `SetDIDMode` calls the screen private's hook at +40 with (window, window private, screen private), sets bit 0x8, and stores the window's two mode words in entry words +8 and +12. This settles `konInitDIDState`: entry words +8 and +12 are the hwi and hwd mode words of the windows holding the id (the hwd word is the one `konValidateMode` builds, see [hwd_mode bits](#display-modes-x_loadxmap_did-and-rrm_loaddisplaymode-1017)). **Unknown:** the hook at private +40; callers are two static functions at 0x462928 and 0x499784.

#### `SetNoStealID`, `UnsetReservedID`, `FreeID`, `FreeCID`

Small members of the display-id allocator, which `kona-ddx.md` leaves unexplained. **Established**: `SetNoStealID` at 0x51d7a0 takes (screen, id) and sets bit 0x20 of the id's entry flags (+16). `UnsetReservedID` at 0x438a40 takes (screen, id) and clears bit 0x2. `FreeID` at 0x49ac60 takes (window): it unlinks the window from its display-id entry through the static helper at 0x4d9c60 and sets the window's id (rrm window private +20) to -1. `FreeCID` at 0x4c94f0 takes (window) and does the same for its colour-map id (private +24, entries of 28 bytes at screen private +148, helper 0x4d3cc0). Each helper runs only when the window's private flag halfword has bit 0x8 (ids) or 0x40 (colour-map ids), drops the entry's window count (+20 in the id table, +12 in the colour-map table), removes the window from a doubly linked list of holders (window privates +44 and +48 for ids, +60 and +64 for colour-map ids) and recomputes the entry's flag bits from the list's head and tail. The flag bits are settled in [the allocator](#the-display-id-allocator).

#### `SetReservedID`

`SetReservedID` at 0x572f10 takes (screen, id). **Established** (callers not traced): it copies the windows that hold the entry (count at +20, first at +0) into a stack list; for each it calls the screen private's hook at +32 with (window, 0, 0) when the window's private byte +6 has bit 0x8, and `FreeID`; then copies entry words +24 and +28 over +8 and +12, calls the hook at +44 with (screen, id), and sets entry flag 0x2 (occupied). It then runs the free-id search for each saved window, releasing the window with `FreeID` when none is found, and, when the reserved id's own flag bit 0x10 was set before the call, sets that bit on each window's new id and calls the hook at +32 with (window, 8, 1). **Inferred:** it takes an id for one fixed mode: the holders leave, the id switches to the pending mode held in words +24 and +28, and the holders are placed again. **Unknown:** the hooks at +32 and +44.

#### The display-id allocator

`FindFreeID`, `FindFreeCID`, `FindBestID`, `ShareSwappingID` and `StealID`, read in full in `kona.so`; the other allocator functions are above. **Established** unless marked. The id table is the one of [`SetDIDMode`](#setdidmode); `winpriv` means the window's rrm private (+20 id, +24 colour-map id, +2 kind halfword, +36 hardware-dependent mode, +4 and +6 flag bytes) and the screen-private words +32, +40, +44, +72 and +92 are function pointers the module fills in elsewhere (**unknown** what they point to: no code in this module's functions reads them as anything but calls).

**Flag halfword of an id entry** (entry +16), from every test and store of it in the module:

| Bit | Set by | Meaning |
|---|---|---|
| 0x1 | no store found in the module | tested by the free-id search (first pass skips it, second pass wants it), the steal function (skips it) and the share function (stops at it); preserved when the last holder leaves. **Unknown** what sets it: no shipped software or published source depends on it (routes: every halfword store to an entry's flags in `kona.so`; the other three modules carry the same code) |
| 0x2 | the helper that adds a holder, `SetReservedID` | occupied: the id has a holder or is reserved; cleared by `UnsetReservedID` and when the last holder leaves |
| 0x4 | the helper that adds a second holder; the leave helper while more than one remains | shared: more than one window holds the id |
| 0x8 | `SetDIDMode` | the mode words (+8, +12) are recorded |
| 0x10 | the buffer-swap start function (`konInitiateBufferSwap`) | a swap is pending on the id; the swap-done callback clears it |
| 0x20 | `SetNoStealID` | the id may not be stolen |

**The shared helpers.** 0x5777c0 (window, id) frees the window's current id if it has one and then calls 0x489ba0 (window, id): it stores the id in winpriv +20 and in the frame-buffer private word +4, links the window at the tail of the entry's holder list through 0x52a340, and calls screen-private hook +72 with the window and the old frame-buffer id. 0x52a340 sets the window's flag halfword bit 0x8, raises the entry's holder count, sets entry bits 0x2 and, from two holders on, 0x4, and when the window is the first holder and bit 0x1 is clear it calls `SetDIDMode`. 0x5202c0 (screen private, entry) calls hook +32 with (window, 0, 1) for every holder.

**`FindFreeID`** at 0x5780a0 (**established**, `kona.so` 6.5.30m) takes (window) and returns 1 when the window has an id, 0 when none was found. A window of kind 1 on a screen whose private word +12 has bit 0 set gets the id equal to the table size (one past the last entry; **inferred** "no real id"). A window that already has an id whose entry is not shared keeps it. Otherwise the first pass takes the first entry of the same kind with bit 0x1 clear and no holders and gives it to the window through 0x5777c0. When screen-private word +48 is non-zero a second pass takes an entry of the same kind with bit 0x1 set, no 0x2 or 0x20 and no holders, clears its flags and gives it away. Neither found returns 0.

**`FindBestID`** at 0x44a280 (**established**, `kona.so` 6.5.30m) takes (window). It scans the ids and, for each whose recorded modes match the window's (`compareModes`), remembers it as the best so far; if that id's kind equals the window's and it is shared (0x4) the window joins it at once through 0x5777c0 (nothing happens when it already holds it). If the scan ends with a remembered id, the function first calls 0x5202c0 on that id's entry, which sends hook +32 to its holders, and gives the window the id. With no match, or an empty table, it asks `cmapDID` and gives the window that id unless it already has it. **Inferred:** prefer joining a shared id that already carries the right mode, else take over a matching one, else use the colour map's own id.

**`ShareSwappingID`** at 0x48c650 (**established**, `kona.so` 6.5.30m) takes (window) and returns 1 when the window was given an id, else 0. Pass 1 walks the ids from the highest down to 1 and considers entries with bit 0x10 (swap pending) other than the window's own, whose first holder has the same hardware-dependent mode (+36) as the window; for each it walks the holder list of id 0 (not of that entry) and notes whether any holder has bit 0x8 in its private byte +4. When none does, it gives the window the entry's id through 0x5777c0 and returns 1. The scan stops at an entry with bit 0x1. When some holder of id 0 does, pass 2 walks the same entries again: for each swap-pending entry other than the window's own it calls 0x5202c0 on the entry once per holder of id 0 with that bit, and gives the window the entry's id if `compareModes` accepts the window's modes against it. **Inferred:** a window that starts a swap may join an id that is mid-swap when the modes agree. **Unknown:** what bit 0x8 of private byte +4 stands for and why the holders of id 0 matter (routes: the stores to that byte were not traced).

**`StealID`** at 0x433b20 (**established**, `kona.so` 6.5.30m) takes (window) and has three passes, all over ids of the window's kind:

1. an unshared id (bits 0x4 and 0x10 clear) whose first holder has private bit 0x8 clear in byte +4: look for another id whose recorded mode equals that holder's (`compareModes`); if that one is shared, move the holder there (hook +32 first when the holder's byte +6 has bit 0x8 and screen word +4 is set), and give the freed id to the window; if it is not shared and its first holder also has the bit clear, hook +32 on both holders, move the first holder there and give the window the freed id;
2. otherwise, starting from the cursor at screen-private +132, try the helper at 0x462580 (not read) on the first holder of each unshared id of the kind and, when it returns an id, give that id to the window and store the position in the cursor;
3. otherwise, again from the cursor, take any id of the kind without bit 0x1: it hands the old holders and the id to 0x4b3280 (not read) together with the `cmapDID` id of its first holder, and gives the id to the window.

**`FindFreeCID`** at 0x4609e0 (**established**, `kona.so` 6.5.30m) takes (window). It works on the colour-map id table (28-byte entries from screen-private +148, count at +4; entry +0 first holder, +8 flags, +10 kind, +12 holder count; cursor at +136). It first calls hook +92 with the window; on 0 it sets the window's colour-map id to the table count (**inferred** "none"). Otherwise a window whose current colour-map id is shared (bit 0x4 of entry +8) keeps it; else it looks for an entry of the same kind, without bit 0x1, that has no holder or whose first holder's private bytes +4 and +6 are equal, and sends hook +32 to that entry's first holder with (2, 0) before giving the window the entry; when none fits it takes the entry after the cursor (wrapping to 1, never 0), advances the cursor and does the same. Assignment is through 0x5607b0, called twice, once to release (id 0) and once to set. **Inferred:** a round-robin steal of colour-map ids. **Unknown:** the hook at +92 and the helper at 0x5607b0 (not read).

#### `nfbRealizeCursor`

`nfbRealizeCursor` at 0x4efd70 takes (screen, cursor). Allocates a 16-byte record (stored as the cursor's private word for this screen, CursorRec +20 + 4 x screen number) and a zeroed 256-byte buffer at record +8, sets halfword +12 to 1 and words +0 and +4 to 0. It clips the source bitmap to 32 x 32 (keeping the leftmost bits of a narrower cursor) and writes two 32-word planes: words 0-31 hold source AND mask (pixels in the foreground colour), words 32-63 hold mask AND NOT source (background). It returns 1; an allocation failure prints "nfbRealizeCursor: memory allocation failed" and returns 0. **Established:** the function table of `kona.so` uses `konRealizeCursor`, not this function, and in that module and its three siblings nothing refers to `nfbRealizeCursor` (the search is described [above](#nfbinitvisdids)), so a screen running one of them never builds that record. Its output is two 32 x 32 planes and no pipe-side form: the pipe's cursor image is a different layout ([cursor](#cursor-kona_select_cursor-10005-x_loadcursor-x_loadcursorcolor)).

#### `konBlankScreen`

`konBlankScreen` at 0x4cd370 takes (value, screen), calls `konTempBlankAllChannels` with (screen, value) and returns 1 always. `konInit` calls it with 0 (it prints "konInit: konBlankScreen() failed" if the result is 0) and `konCloseScreen` calls it with 1. **Inferred:** 1 blanks every channel and 0 unblanks, from the two call sites; the argument order is not that of a server screen-saver hook, which takes the screen first, so the module does not install it as one.

### Stereo drawing wrappers (`konStereo*`)

**Established** (all 20, same body). Each wrapper takes the arguments of one X GC operation, finds the GC's `nfbGCPrivateIndex` record, saves its word +8 and the GC's ops pointer (+72), installs the plain ops kept at private +92 and sets private +104 to 1. It then runs the operation twice, once per eye: word +8 set to private +96 with the drawable's y (halfword +10) and the GC's clip y (private halfword +90) moved up by the screen record's halfword +226, and word +8 set to private +100 with them moved back. Word +220 of the screen record picks the order (1: +96 first). Each pass revalidates the GC (0x553d40 with mask 0x2000) and calls the plain op. Finally it restores word +8, the ops pointer and private +104. **Inferred:** +96 and +100 are the left and right buffer selects of the stereo frame buffer and +226 the vertical distance between the two eye images, the same offset `konValidateClip` adds. `konStereoCopyArea` and `konStereoCopyPlane` call the op once when the source is a pixmap, move the source y as well when source and destination are the same window, and free the first pass's exposure region.

#### `konStereoFillSpans`

`konStereoFillSpans` repeats GC op slot 0 (`FillSpans`) once per eye.

#### `konStereoSetSpans`

`konStereoSetSpans` repeats GC op slot 4 (`SetSpans`) once per eye.

#### `konStereoPutImage`

`konStereoPutImage` repeats GC op slot 8 (`PutImage`) once per eye.

#### `konStereoCopyArea`

`konStereoCopyArea` repeats GC op slot 12 (`CopyArea`) once per eye.

#### `konStereoCopyPlane`

`konStereoCopyPlane` repeats GC op slot 16 (`CopyPlane`) once per eye.

#### `konStereoPolyPoint`

`konStereoPolyPoint` repeats GC op slot 20 (`PolyPoint`) once per eye.

#### `konStereoPolyline`

`konStereoPolyline` repeats GC op slot 24 (`Polylines`) once per eye.

#### `konStereoPolySegment`

`konStereoPolySegment` repeats GC op slot 28 (`PolySegment`) once per eye.

#### `konStereoPolyRectangle`

`konStereoPolyRectangle` repeats GC op slot 32 (`PolyRectangle`) once per eye.

#### `konStereoPolyArc`

`konStereoPolyArc` repeats GC op slot 36 (`PolyArc`) once per eye.

#### `konStereoFillPolygon`

`konStereoFillPolygon` repeats GC op slot 40 (`FillPolygon`) once per eye.

#### `konStereoPolyFillRect`

`konStereoPolyFillRect` repeats GC op slot 44 (`PolyFillRect`) once per eye.

#### `konStereoPolyFillArc`

`konStereoPolyFillArc` repeats GC op slot 48 (`PolyFillArc`) once per eye.

#### `konStereoPolyText8`

`konStereoPolyText8` repeats GC op slot 52 (`PolyText8`) once per eye.

#### `konStereoPolyText16`

`konStereoPolyText16` repeats GC op slot 56 (`PolyText16`) once per eye.

#### `konStereoImageText8`

`konStereoImageText8` repeats GC op slot 60 (`ImageText8`) once per eye.

#### `konStereoImageText16`

`konStereoImageText16` repeats GC op slot 64 (`ImageText16`) once per eye.

#### `konStereoImageGlyphBlt`

`konStereoImageGlyphBlt` repeats GC op slot 68 (`ImageGlyphBlt`) once per eye.

#### `konStereoPolyGlyphBlt`

`konStereoPolyGlyphBlt` repeats GC op slot 72 (`PolyGlyphBlt`) once per eye.

#### `konStereoPushPixels`

`konStereoPushPixels` repeats GC op slot 76 (`PushPixels`) once per eye.

### Video formats and combinations (`vfmt*`)

**Established** (`kona.so` 6.5.30m; `konad.so`, `konal.so`, `konas.so`, `setmon` and `ircombine` carry the same functions). The library behind the LoadFormat request and the combination loader ([dg.md](dg.md#loading-a-combination-channel)); the file format is in [ucode/dg.md](../ucode/dg.md). `GL_GRROOT`, when set, prefixes every path.

#### `vfmtFindFormatFile`

`vfmtFindFormatFile` at 0x42b7d0 takes (out, name, directory). Appends `.vfo` when missing. A bare name becomes root + directory + "/" + name; a name with a directory part is used as given when that part equals root + directory, and otherwise returns 3 without looking. It stats the result into a static buffer and returns 0 when found; else it tries `$VFOPATH/name` and returns 0 when that exists, 1 otherwise.

#### `vfmtFindKonaFormatFile`

`vfmtFindKonaFormatFile` at 0x42ba20 calls `vfmtFindFormatFile` with the directory `/usr/gfx/ucode/KONA/dg4/vfo`.

#### `vfmtFindCmpFormatFile`

`vfmtFindCmpFormatFile` at 0x42ba70 calls `vfmtFindFormatFile` with the directory `/usr/gfx/ucode/VOYAGER/vfo`, then `/usr/gfx/ucode/STINGRAY/vfo`.

#### `vfmtFindOdyFormatFile`

`vfmtFindOdyFormatFile` at 0x42bb10 calls `vfmtFindFormatFile` with the directory `/usr/gfx/ucode/ODSY/vof`.

#### `vfmtFindSG2FormatFile`

`vfmtFindSG2FormatFile` at 0x42bb60 calls `vfmtFindFormatFile` with the directory `/var/X11/Xvc/SG2_formats`.

#### `vfmtFindKonaCombinationFile`

`vfmtFindKonaCombinationFile` at 0x42bbb0 takes (out, name). Returns 1 with the name as given when it exists, else 1 with root + `/usr/gfx/ucode/KONA/dg4/cmb/` + name when that exists, else 0.

#### `vfmtFindCmpCombinationFile`

`vfmtFindCmpCombinationFile` at 0x42bcf0 takes (out, name). Tries the name, then the `VOYAGER/cmb`, `STINGRAY/cmb` and `/usr/diags/compositor/data` directories, then the same with `.cmb` appended; returns 0 when found, otherwise 1 with the `STINGRAY/cmb` path (or the name itself when it has a directory part). The three directory attempts pass a length of 4 to `snprintf`, so they build a three-character path and cannot match (**established** from the argument; **inferred** to be a defect).

#### `vfmtGetLastKonaFileStat`

`vfmtGetLastKonaFileStat` at 0x42bf60 takes (buffer). Copies the 152-byte `stat` result the find functions left in their static buffer and returns 1.

#### `vfmtReadKonaCombination`

`vfmtReadKonaCombination` at 0x42d5f0 takes (name, record). Clears a 41636-byte combination record, finds and opens the file, checks `MajorVersion` and `MinorVersion`, reads the 20 global fields (0x42ced0; for example `textport` +256, `managedSize` +260, `pixelDepth` +268, `syncSource` +272, `usingEncoderOutput` +552, `allocatedSize` +588) and up to 15 channel records of 2736 bytes at +596 (0x42bff0, fields `ch%1d` + name, offsets in [dg.md](dg.md#loading-a-combination-channel)). `FieldLayout` and `VbobSyncSource` may be absent. Returns 0, 1 when the file cannot be opened, 2 on a bad field.

#### `vfmtWriteKonaCombination`

`vfmtWriteKonaCombination` at 0x42e840 takes (name, record). The inverse: opens a new file with the description "Kona video format combination file", writes the two version fields, the 20 globals and each existing channel through 0x42d7f0, and closes it.

#### `vfmtUpdateFormatInfoInCombination`

`vfmtUpdateFormatInfoInCombination` at 0x429320 takes (record). For each existing channel (+712 set) it reads the channel's `.vfo`, stores its file time at channel +256 and copies the 2020-byte format record into the channel at +716; a missing file prints "failed to load format %s!".

#### `vfmtMinimalKonaTarget`

`vfmtMinimalKonaTarget` at 0x428010 takes (target). Fills a 32-byte target description with the smallest system: board-set class 0, 1 raster board, pixel depth 0, 8 display-generator channels at revision 0, no option channel.

#### `vfmtActualHWToKonaTarget`

`vfmtActualHWToKonaTarget` at 0x428070 takes (pipe, target). Opens `/dev/opengl`, asks the board count (ioctl 101, "GFX_GETNUM_BOARDS") and the board information (ioctl 102, 1952 bytes), refuses a board whose name is not `KONA`, and copies from the configuration record at +40 of that information (the 6.5.5 `sys/kona_if.h` `kona_config`): `bdset` to the class (0 stays 0, 2 stays 2, 6 becomes 3, others 1), `numrms` (1, 2 or 4), `pixeldepth` (0-3), and the display generator's channel count, revision, option type and option revision.

#### `vfmtIsKonaCombinationValidForTarget`

`vfmtIsKonaCombinationValidForTarget` at 0x428590 takes (record, target, ...). Checks a combination against a target, reporting through the message catalogue `IR_VIDEO`: each channel's `PixelFormat` must be 0-4 ("Illegal Pixel Format"; 0 and 4 count 32 data bits, 1-3 count 42, 4 also marks the channel), `MaxTilesPerRequest` at least 1 (forced to 4 on a class-2 target), then the tile requests per line, the data bits and the fill cost per channel against the video bandwidth ("Video bandwidth exceeded"), and prints each channel's frame rate, swap rate and fields per swap.

#### `vfmtIsKonaCombinationValidForActualHW`

`vfmtIsKonaCombinationValidForActualHW` at 0x428ff0: builds the target from the pipe with `vfmtActualHWToKonaTarget` (cached per pipe) and calls `vfmtIsKonaCombinationValidForTarget`.

#### `vfmtResolvePixelDepth`

`vfmtResolvePixelDepth` at 0x4278c0 takes (record, target). Turns the combination's `pixelDepth` request into a depth the target can hold: it counts the allocated pixels (width rounded up to 160 times height), divides raster boards x 5 x 2^22 by that count (halved for class 2; class 3 uses 2^27), and maps the requested depth (a jump on values 0-7) and that quotient through thresholds at 64, 32, 16, 8 and 4 to a depth code, or 0 when nothing fits.

#### `vfmtSwapRateCloseEnough`

`vfmtSwapRateCloseEnough` at 0x429090 takes (a, b). True when |a - b| / a is below 0.01. The Combiner user guide calls swap rates within about 2 percent equal; the code's bound is 1 percent.

#### `vfmtSyncFormatFrameRatesCompatible`

`vfmtSyncFormatFrameRatesCompatible` at 0x429120 takes (a, b). False when either rate is 0 or the larger is more than 16 times the smaller; otherwise true when the ratio is within 0.01 of a whole number.

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
