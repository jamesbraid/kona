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

### Who calls them: the context's function table

**Established** (`__glKonCreateContext`, `MakeCurrent`, `MakeCurrentRead`, `kon_context.s`, N32 6.5.30m; targets resolved from the GOT page word 0x0d950000 plus the low offset each call adds). `__glKonCreateContext` fills five function pointers in the new context that the shared GL layer calls: +88 `initialDestroyContext` (0x0d948700), +92 `LoseCurrent` (0x0d948530), +96 `MakeCurrent` (0x0d9499e0), +100 `MakeCurrentRead` (0x0d9488c0) and +104 `VisualsMatch` (0x0d949a50).

- `MakeCurrent(ctx)` calls the drawable callbacks at ctx+60 and ctx+64 for the draw and read drawables and tail-calls `MakeCurrentRead(ctx, draw, read)`.
- `MakeCurrentRead` holds the only three calls to the configuration functions in the library (offsets -25008 and -24640 from that page, at source lines 737, 738 and 796). When bits 1 and 2 of the word at ctx+168 are clear (**inferred** to be the first make-current of the context: bit 1 clear first installs the context's dispatch procedures, and this path resets the context and allocates its per-engine memory) it runs `__glSoftResetContext`, `__glkon_unique_per_ge_mem_alloc` and `__glkon_share`, then `kona_writeconfig(ctx)`, then `kona_readconfig(ctx, read)` when the read drawable differs from the draw drawable, then the texture, evaluator, pixel and hyperpipe initialisers. On every later make-current it calls `kona_readconfig(ctx, read)` when the read drawable differs or when the read drawable's first word is 3, the same test `kona_readconfig` applies before it sends `HP_VIDEO_SOURCE`.
- `LoseCurrent`, `initialDestroyContext`, `DestroyContext` and `VisualsMatch` call neither function.

So `BUFFER_CONFIG` and `PACK` go to the pipe once per context, when it is first bound, together with the `RRM_SETDISPLAYMODE` ioctl; `READBUFFER_CONFIG` goes whenever the read side changes. Rebinding a context to a new draw drawable sends no buffer configuration from the library. **Inferred:** the kernel's context switch restores the pipe's copy, since the configuration packet is part of the per-context state the ARM saves (`arm_buffer_config` keeps it in its shadow, [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)).

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

It then calls `konLoadDisplayMode(screen, rnid, clipid, did, hwd_mode, hwi_mode)`, which issues 1017 with those five words and on success caches {hwi_mode, hwd_mode} at screen private +52 + 8 x did. **Established** (kernel, `RRM_LoadDisplayMode` in `rrm.o`): the display id must be below the board's count (gfx_data +88) or the call returns EINVAL; it calls the board's set-display-mode entry, which is slot +0xa0 of the driver's function table in `kona_edtinit.o`, `KONAsetdisplaymode`, with (did, hwd_mode); stores `hwi_mode` in the pane (+32) and in the board's per-id table (gfx_data +96); and sets pane +18 to 1 when `hwi_mode` bit 2 is set. `KONAsetdisplaymode` keeps the low byte at pipe state +4360 + did and sends `DISPMODE` (0x1e6) with 0, did, `hwd_mode`. So the third `DISPMODE` word is this X-built `hwd_mode`. **Established** (`arm_dispmode` 0x0c013dd4): the firmware passes the byte on unchanged, as a display-bus write of `hwd_mode` to address = display id through the engine's `mgesi_VCbusWrite`, after recording the display id in the swap-group slots that match the first word ([dg.md](dg.md#the-firmwares-display-bus-window)); at a swap the kernel rewrites bits 0 and 1 from the buffer's display bank ([dg.md](dg.md#buffer-swap-and-retrace-wait)), which fits bit 0 as "show the back buffer". **Unknown: no shipped software or published source depends on it:** what the display hardware does with bits 2-4 beyond the module's own names (RGB, colour index, DC RGB). Routes tried: the module, the kernel, the firmware (which forwards the byte untouched) and the diagnostic's XMAP register list, which has no per-display-id mode table.

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
| `X_SEGMENT` 0x159, `X_SEGMENT6` | 2, 12 | `konSegmentSS`, `konSolidZeroSeg` | two point words per segment |
| `X_LINE` 0x15b, `X_LINE6`, `X_LINE_R`, `X_LINE6_R` | 2, 7, 2, 7 (map 2, 12, 2, 12) | `konLineSS` | a polyline: `X_LINE6` sends one point at the token address and six more through `KonSeqData6_ip19`, then advances six points, so consecutive commands share their end point. The map's count of 12 is two per segment; the module sends seven words. **Inferred:** for the polyline forms the count field counts segment end points, which the distributor expands; this is the one routed X token whose stored word count differs from the field ([open-questions.md](open-questions.md#arm-firmware)) |
| `X_PIX_SETUP` 0x136 | 7 (ARM 7) | `kon_loadNfbBitmapGC`, `kon_loadNfbOpaqueBitmapGC`, the glyph routines | 0, 4, a word from the GC private (+84), 0, two values computed by the caller, 0. **Unknown:** the field meanings; `arm_x_pix_setup` builds the engine's pixel path from them through `X_PixSetupGE` ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) |
| `X_PIX_WRITE` 0x139 | 1 + data | the glyph routines, `konDrawOpaqueMonoImage` | a header word, then the bitmap words; `arm_x_pix_write` reads the header and moves the data with the pass-through counter |
| `X_PIX_FINISH` 0x13a | 1 (ARM 1) | the same callers | 0 |
| `X_PIX_COPY` 0x137 | 4 (ARM 4) | `konCopyRect` | source x, source y, destination x, destination y, from the halfwords the debug print names `xs`, `ys`, `xd`, `yd`; width and height come from the preceding `X_LOADPOS`/`X_LOADCLIP` |
| `X_PIX_READ` 0x138 | 2 (ARM 2) | `konReadImage`, `konReadFBBlock` | the read position and a size word; small reads return through the read-back area ("konReadImage/rdata"), larger ones go through `KONA_DMAREAD` ("DOING DMA!"); followed by `WG_FLUSH_1` with 0xdeadbeef |
| `X_LOADSTIPPLE` 0x13c, `X_STORESTIPPLE` 0x13d, `X_ROTATESTIPPLE` 0x13e | 1, 3, 3 (ARM 1, 3, 3) | `kon_loadStipple`, `kon_loadTilePlane`, `kon_loadCachedStipple` | a stipple cache slot; store adds the pattern's size and then the pattern words; rotate adds the x and y origin (halfwords +96, +98 of the GC private). The debug print "store/load %d, rot %d,%d" names them |
| `X_LOADCMAP` 0x12e | 2 + n (ARM 2) | `konStoreColors`, `konInstallColormap` | colour-map address, a count n (1 per entry in `konStoreColors`), then n colour words. `arm_x_loadcmap` writes the address to display-bus register 0x118, peeks the count through port + 0x40 and moves the colour words to register 0x119 with the pass-through counter (0x4000000 \| n) |
| `X_LOADGAMMA` 0x12f | 4, or 2 + 1024 | `konStore24DCColors`, `konInstall24DCColormap`; the unnamed function at 0x498ff0 | per colour (red, green, blue in turn): the gamma address (base + 2 x index + 0x1000 x colour), the count 2, and the 12-bit value twice; or 0xdeadfeed, 1024 and 1024 packed 10:10:10 words for the external gamma RAM. Both forms are read in [dg.md](dg.md#colour-maps-and-gamma-tables) |
| `X_LOADXMAP_CONFIG` 0x133 | 1 (ARM 1) | `konCreateWindow` (1), `konDestroyWindow` (0), each followed by `WG_FLUSH_1` with 0xdeadbeef | one flag word, which `arm_x_loadxmap_config` writes to XMAP register 9 (bus address 0x109; [dg.md](dg.md#xmap-registers-memories-and-the-fast-list)) |
| `WG_FLUSH_1` 0x1ff | 1 | after cursor loads, read-backs and the X-map configuration | 0xdeadbeef. The firmware's handler `arm_wg_flush_1` is a branch to `arm_badcmd`, so the store is **inferred** to be a flush of the processor's write-gather buffer that the host interface drops before dispatch ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md#refused-tokens-beginend-divert-bad-command)) |

**Established, negative.** No store in the module addresses `X_INIT` (0x128), `X_LOADCLIP_ARM` (0x12c), `X_POINT24_R` (0x151) or any `X_UNUSED*` token; the scan's hits for them were string addresses that happen to be multiples of 32. Who sends `X_INIT` is not settled by this module.

## Texel download: header word 7 and the load-scissor bit

**Established** (`DoDrawPixelsOrTexels`, `libglcore/asm/KONA/kon_pixel.s`, the function at 0x0d951aa0; word numbers are those of the table in [RM.h](../RM.h), counted from 1 after the token, so the word the question calls "header word 6" counted from 0 is word 7, the flag copied from the descriptor at +0xb4). The function reads the descriptor's +0xb4 first.

- **Word 7 is nonzero** (the callers store 1 there when bit 2 of the context word at +31580 is set, 0 otherwise: five sites in `kon_pixel.s` store it, at least four others store 0): for a texel download (bit 7 of the descriptor word at +24 set) the function ORs 4 into the descriptor's flags word at +0x84, which is header word 18, the image of `TGTML_TEXLD_MISC`; bit 2 of that register is the load-scissor enable (`LDSCISSOREN`, RM.h). When bit 5 of the global word at +1796 is also set it ORs 0x8000 (the interlaced-download bit). The header is then sent through `__glKonSendData` with its 20 words copied from the descriptor.
- **Word 7 is zero**: the flags word is sent as `subloadLevel` built it, with only the interlaced bit added when that global bit is set. The function does not set bit 2 on this path.

So bit 2 of header word 18 is **forced on whenever word 7 is nonzero on a texel download**. **Unknown:** whether bit 2 is also set when word 7 is zero (the earlier note in RM.h says the single-image path sets it; the OR of the value 4 was not found in `subloadLevel`, so that claim is **unconfirmed**), and what the hardware does with word 7 itself, which is sent as a separate header word. Because both derive from the same context bit, bit 2 of word 18 and word 7 are equal on every path read here.

**Established** since, from the firmware side ([ge.md](ge.md#pixel-images-hp_drawpixels-hp_drawtexels-hp_bitmap)): `arm_drawtexels` reads word 7 as the "image arrives by DMA" flag. When it is nonzero the handler ends the command at word 20 and leaves the image to the next `HP_DO_IDMA`; libGLcore's `__glKonSendData` takes the same decision from the same descriptor word (+180), sending the image inline when it is 0 and through ioctl 10001 otherwise. So the context bit at +31580 selects DMA delivery, and the load-scissor enable in word 18 rides on it. Word 10, the texel format id, is a row number into the firmware's format tables ([ge.md](ge.md#the-texel-format-id)).
