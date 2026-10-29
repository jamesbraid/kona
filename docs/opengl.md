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

**Inferred:** the sixteen-bit `lvl` is the framebuffer level (overlay or normal), `rgb`/`ci` choose colour-index or RGB, `isize`/`rsize` the index and RGB sizes, `db` double buffering, `st` stereo, `zb`/`ss`/`acc`/`aux` the depth, stencil, accumulation and auxiliary buffer depths and `ms` the multisample count, from the field abbreviations; the meaning of the ten words inside the pipe is the ARM handler's (`arm_buffer_config` calls `XferMask`, `init_multisample`, `resolve_banks`, `SetFbState`, [arm1_handlers.tsv](../ucode/arm1_handlers.tsv)). **Unknown:** the unit of each size word, and what the four source selectors 4096-4099 name.

## Display and scanout

**Established** (`kon_context.s`).

- **`SwapBuffers`** (taken only when the byte at ctx+3222, `db`, is set): writes token 198 (`HP_FINISH`, [arm1_handlers.tsv](../ucode/arm1_handlers.tsv): one payload word, calls `mgesi_FlushRM`) and the payload word 0 to the command port, then `RRM_SWAPBUF` (1005) with two words, ctx+31564 (the drawable serial) and ctx+31576. The swap itself is then done by the kernel's `KONAschedswapbuf` ([dg.md](dg.md)). An ioctl failure prints through `perror` and the context's error hook.
- **`ChannelRect(a0, a1, a2, a3, a4)`**: writes `HP_VIDEO_CMD` (token 422, 0x1a6) then the display-generator command number 20, then eight words: `a0`, `a1`, `a2 + a4 - 1`, `a3`, `a4`, 0, 0, 1, then a checksum word that is the sum of the command number and the eight words (the code accumulates it as it stores). Command 20 is `DoDGRqstResize` with 8 payload words ([dg_dispatch.tsv](../ucode/dg_dispatch.tsv)); its first payload word selects the channel's record in the firmware and `dgResize` clips an output size below 2, printing "Illegal x output size %d, clipping to 2" (and "y"). **Inferred:** `a0` is the channel number. **Unknown:** the roles of the other seven words; the firmware's use of payload words 1 and 2 was not found in the first part of `dgResize`, and the last three words are the constants 0, 0 and 1 in this caller.
- **`ChannelRectSync(a0, a1)`**: writes `HP_VIDEO_CMD`, command 78 (`DoDGRqstResizeSyncType`, 2 payload words), the words `a0` and `(a1 == 1)`, and the checksum (command + both words).
- **`Error`**: writes token 228 (`HP_SETERROR`) and the error code; the ARM keeps the first GL error ([arm1_firmware.md](../ucode/arm1_firmware.md)).
- **`ChangeWindowSize`** and **`FindWindowSize`**: store the window width and height at ctx+3700 and +3704 and re-issue the viewport and scissor through `__glkonim_Viewport` and `__glkonim_Scissor`; `FindWindowSize` asks the drawable object (callback at +28) for its size and re-creates state on a mismatch.

The display-generator command framing (token, command number, count-checked payload, checksum word) is the one the ARM reads in `arm_video_cmd` ([arm1_firmware.md](../ucode/arm1_firmware.md)); `ChannelRect` is the only emitter of it in `libGLcore`'s context file, and the combination and format files that choose channel layout ([ucode/dg.md](../ucode/dg.md)) are not read by this library.

**Unknown:** the X-server module's emission (cursor load, colour load, video-mode set, `X_LOADCURSOR` and the like in `ddx/`) is not read here; the second source of display commands, and whatever loads the 383-word format request, is there.
