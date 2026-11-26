# What Xsgi sends a client, and how the kernel's manager messages reach it

Which X events the shipped X server (`Xsgi`, `glx.so`, `kona.so`, `konal.so`) sends for buffer swaps, swap groups, swap barriers, video sync and genlock, what makes it send each, and the path from a pipe interrupt through the kernel to the server. It answers an emulator whose Inferno player spins in Xlib waiting for an X event while the pipe's `HH_SEQID` already equals the last retrace tag. First configuration only (IP27 Onyx2, one InfiniteReality2 pipe, IRIX 6.5.30m); `konal.so` is the module this pipe loads and `kona.so` has the same code at other addresses. Companion pages: [swap and retrace completion](swap-and-retrace-completion.md), [swap-ready and the swap barrier](../../devices/dg/swap-ready-and-swap-barrier.md), [genlock and lock status](../../devices/dg/genlock-and-lock-status.md).

Ratings as on the swap page: **established** (the whole routine read), **software expectation**, **inferred**, **unknown** (routes tried, and what would settle it). Addresses are in the named module's own address space. The extension constants come from the shipped headers `X11/extensions/XSGIvc.h` and `XSGIvcproto.h` and the kernel header `sys/rrm.h` (names only).

## Answer

**Xsgi sends no event when a buffer swap, a swap-group swap, a swap-barrier swap, a video-sync wait or a video resize completes.** **Established** for the routines named below; **inferred** for the whole server, because the check was made over the event writers each module imports, not over every function of the 3 MB server. A client that spins on its X connection after a swap is waiting for some other event, and the swap itself never reaches it through X: a direct context swaps with an ioctl and sleeps in the kernel, an indirect context sends a request that has no reply and no event.

The events Xsgi can send that touch these features:

| Event | Extension, wire type | What makes Xsgi send it | Hardware or kernel cause | Rating |
|---|---|---|---|---|
| Buffer clobber | `GLX`, event base + 0x10 (the extension registers 17 events and 12 errors, `GLXExtensionInit` in `Xsgi` 0x102395c0) | pbuffer or window damage or save, through the callback stored at the screen's GLX record +0x60 (`SendBufferClobberEvent`, `glx.so` 0x48bf70; fields drawable, event type 0x8020 damaged or 0x8021 saved, draw type 0x8022 window or 0x8023 pbuffer, x, y, width, height, count) | none; software. I found the store of the callback (`glx.so` 0x4464ac) but not its callers | event established; callers unknown (the call goes through a function pointer in a per-screen record) |
| Screen lock status changed | `SGI-VIDEO-CONTROL` (Xvc), event base + 0, byte 1 = 2 (`XSGIvcScreenLockStatusChangedNotify`), select mask value 4 (`XSGIvcScreenLockStatusChangedNotifyMask` = 1 << 2) | the board-manager message type 12, see [genlock](#genlock-and-the-screen-lock-event) | genlock detect or loss on the DG video chips: `HH_INTR_STATUS` bit 9 | established |
| Other Xvc events (`VideoFormat`, `ScreenInputSyncSource`, `OutputGain`, `Pedestal`, `PhaseH/SCH/V`, `OutputSync`, `PlatformParam`, `GammaMap`, `Blanking`, `ChannelInputRectangle`, codes 0 to 12 in the header) | the same extension and event base, byte 1 = code, select mask bit = 1 << code | requests that change the setting (not traced) | none | named by the header; senders not read |
| Multibuffer `ClobberNotify` and `UpdateNotify` | `Multi-Buffering`, `SGI-NewMultibuffering` | the server's own multibuffer code. `kona.so` and `konal.so` import only the capability helpers `nmbxScreenInit`, `nmbxLookupCapability`, `nmbxCanSupportBuffers` and `nmbxErrorBase`, and no multibuffer event routine (`MultibufferExpose`, `DeliverEventsToMultibuffer`), so a retrace or swap never feeds it | none | established that the modules have no hook, inferred for the rest |
| DOUBLE-BUFFER (DBE) | none defined by the protocol | `dbcSwapBuffers` (`Xsgi` 0x1010bea0), `dbcNoticeSwapInitiated` (0x100f31f0) and `dbcDelayedSwapBufferDone` (0x10098a20) contain no event write among their named calls (the last paints through the scratch GC's `CopyArea`; whether that GC can raise `NoExpose` was not checked) | none | established for the named calls |
| SYNC counter and alarm events | `SYNC` | the only system counter the server creates is one call to `SyncCreateSystemCounter` for `SERVERTIME` (`Xsgi` 0x1027b450); there is no retrace counter | none | established |

Requests with no event:

- `glXSwapBuffers` on a direct context: the KONA `libGL.so` (`IP27KONA32/libGL.so` 0xd833d30) calls the direct-swap hook of the current context (a pointer in the context record; the libGLcore swap path behind it issues the resource-manager swap ioctl 1005, **inferred** from the swap page); no X traffic. On an indirect context it sends the 12-byte GLX SwapBuffers request (minor 11), handled by `glxSwapBuffers` (`glx.so` 0x448b20). **Established.**
- `glXJoinSwapGroupSGIX` and `glXBindSwapBarrierSGIX` are GLX requests to the server (`glx.so` `glxJoinSwapGroupSGIX` 0x46ddc0, `glxBindSwapBarrierSGIX` 0x430830); the server issues ioctl 1013 (join the swap group, or 1014 to leave it) for the join request, and 1013 followed by 1019 (swap-ready, with the barrier number minus one) for the barrier bind, and replies. The ioctl numbers are the `RRM_SWAPGROUP`, `RRM_SWAPUNGROUP` and `RRM_SWAPREADY` values of the shipped header `sys/rrm.h`. [Swap-ready page](../../devices/dg/swap-ready-and-swap-barrier.md#4-the-kernel-and-x-server-barrier). **Established.**
- `glXGetVideoSyncSGI` and `glXWaitVideoSyncSGI` are ioctls 1022 and 1023 from the library itself (0xd824fb8, 0xd82508c); the wait sleeps in the kernel until a video interrupt ([swap page](swap-and-retrace-completion.md#what-irix-sleeps-on)). **Established.**
- `glXChannelRectSGIX` and the channel queries go through Xvc requests (`ProcSGIvcChannelInputRectangle` 0x10172df0). **Inferred** from names and imports.

## The path from the kernel to the server

Every window-system notice from the kernel to `Xsgi` is a board-manager message, not a signal, not a counter and not an ioctl return.

1. A kernel routine builds a board message of a small type number with up to ten words and sends it with `GfxMessage` (sleeping form, ioctl context) or `GfxIntrMessage` (interrupt form); `sendMsg` (`gfx.o` +0x18dc) turns it into one 12-byte record per word (board minor, word index, message type or word byte, value) and queues them on the manager's STREAMS read queue. Nothing happens if no connection manages the board. **Established** ([kernel functions](../../software/kernel/kernel-functions.md)).
2. `irixKernInit` (`Xsgi` 0x10124250) registers `rrmEvent` (0x101e9ff0) with the board number as its argument, through the device-registration helper at 0x10094120 (it attaches the queue with ioctl 0x530c and fills a 12-byte entry of the per-device handler table). `ProcessInputEvents` (0x100e9680) walks the 12-byte queue records and calls the entry's handler for each one (call at 0x100e9774); the keyboard and pointer records go to `processShmiq` (0x10060650) the same way. `rrmEvent` collects the words (record byte 5 is the count on the first record, byte 6 the type, the word at +8 the value), takes the low 7 bits of the type (bit 7 marks the OpenGL variant) and calls entry `type` of the table whose pointer sits at the rrm screen record +0x80, with the window named by word 0 (the screen's root window when word 0 is 0), the OpenGL flag and the next two words. A type of 0 or above 12 is reported with `ErrorF`. If word 0 names no window it is tried against the GLX screen record's +0x54 hook (a pbuffer drawable) and then handed to the rrm record's +0x60 hook. While a server grab is in progress (`GrabInProgress`) a message with word 0 = 0, or whose window id carries another client's number in bits 22 to 29, is queued (a 28-byte node) instead of dispatched; the routine at 0x101336c0 later replays the queue through the same table and clears it (**inferred** that this runs at ungrab: the word it clears is set together with `GrabInProgress` at 0x1023b978, and the caller was not found). **Established** for the dispatch; **inferred** that the queue's descriptors are in the server's `select` set, as `shmiqInit` (0x100f6050) gets them from `shmiqGetFDs`; I did not trace `WaitForSomething`.
3. The table is `rrmFunctionTable` (`kona.so` 0x587f28, `konal.so` 0x593f90, 13 words, entry 0 empty). **Established** that it is the one at record +0x80: `konRRMPriv` (0x5868f8) holds its pointer at +0x80, `rrmInit` (`Xsgi` 0x101ec4d0) copies that structure into the per-screen record, and `rrmEvent` reads the record's +0x80:

| Type | Meaning (header name) | Sent by (kernel) | Handler in `kona.so` / `konal.so` |
|---|---|---|---|
| 1 to 5 | validate clip, validate swap buffer, both, bind render node, unbind | type 4 (0x84 for OpenGL) from `RRM_BindRNToReadAndClip`; types 1, 2 and 3 from the fault path (`validate_my_pane_resources`, `rrm.o` +0xab0, which builds the type from the resource mask: `RRM_RMASK_CLIP` (2) gives validate clip, `RRM_RMASK_SWAPBUF` (8) gives validate swap buffer, both give 3); 5 only through `RRM_Message`. The seven `GfxMessage` and `GfxIntrMessage` call sites in `rrm.o` are this site, two in `RRM_BindRNToReadAndClip` (type 4 or 0x84), `RRM_SetDisplayMode` (11 or 0x8b), the types 9 and 12 senders and `RRM_Message`. The faulting client sleeps until the server answers with ioctls 1011, 1012 and friends | 0x490260, 0x545980, 0x4f1bc0, 0x4d2f60, 0x542e70 (kona.so), not read |
| 6, 7, 8 | full screen, z-buffered, do not freeze | `RRM_Message` (ioctl 1009), client chosen, passed through unexamined | 0x4d9a20, 0x499c00, 0x4b07c0, not read |
| 9 | manager swap done | `kona_mswap_complete`, from the video interrupt, through `rrmValidateMGRSwapBuf` and a deferred `rrmValidateMGRSwapBufSTREAM` (`rrm.o` 0x4054), word 0 = the window's clip id | 0x48ccc0: clears bit 0x10 of a halfword in the window's 36-byte slot of the rrm screen record (+0xa8) and calls `dbcDelayedSwapBufferDone` with the window id, the DBE completion. **Established** |
| 10 | OpenGL requested a swap | `RRM_Message` from the client; no kernel routine was found that generates it (**inferred**) | 0x4ac040: when word 1 has bit 2 set, sets or clears flag 4 in the window record according to word 1 bit 4 and calls `dbcNoticeSwapInitiated` with that value. **Established** |
| 11 | set display mode | `RRM_SetDisplayMode` (`rrm.o` 0x2b78) | 0x4996d0, not read |
| 12 | genlock notice | `rrmGenlockNotifySTREAM` (`rrm.o` 0x40e8), words (0, -1) | 0x4adeb0 / 0x4b64c0: calls `XvcSendScreenLockChangeEvent`. **Established** |

4. Deferred window requests have a second wake source. After the first queued request `kona.so` registers a block handler (0x478cb0) and a wakeup handler (0x453160), and a work procedure (`rrmWorkProc` 0x53f520); the block handler lowers the `select` timeout to at most 50 ms, and at most every 50 ms a pass over the screens runs the per-screen pump (0x448210, record +0x18). When a pass finds nothing left the wakeup handler removes both handlers (the block handler just returns). So while a request is queued `Xsgi` wakes about 20 times a second by itself (**inferred** from the 50 ms constants), and an indefinite `select` suggests none is queued. **Established** (0x478cb0, 0x453160, 0x48f7b0-0x48f880, 0x53f520 read in full); the work the pump does is not read.

## Genlock and the screen lock event

This closes the question the [genlock page](../../devices/dg/genlock-and-lock-status.md) left open: what a genlock change does in the server.

Chain, all **established** unless marked:

1. A video-output chip's external-sync detect or loss cause raises `HH_INTR_STATUS` bit 9 once the firmware has enabled those causes (VOC control bits 5 and 4). That bit 9 is the OR of the chips' interrupt lines is **inferred**; how it clears is **unknown** (below).
2. `kona_intr_handler` runs `kona_voc_intr`, which calls `rrmGenlockNotify(connection, -1)`; that defers through `streams_timeout` to `rrmGenlockNotifySTREAM`, which sends message type 12, words (0, -1). The kernel reads no register.
3. `rrmEvent` calls the type 12 handler with the root window of the screen. It calls `XvcSendScreenLockChangeEvent` (`Xsgi` 0x10112a40), whose first step is the screen's Xvc callback at table +0x6c (`kona.so` 0x4d5990, which calls the status routine at 0x493090). The -1 is not used.
4. The status routine asks the firmware for the interrupt state: display request 0x3d (61, payload word 0) and the type 0x11 reply of 12 bytes. Word 1 of the reply is display-bus register 0x300, the status register of video chip 1 (the first word is 0x90 and the third the OR of the other present chips' status: [dgGetInterruptState](../../software/ucode/arm1_functions.md)). Bit 21 (`int_ext_sync_detect`) set gives lock 1; bit 20 (`int_ext_sync_loss`) set gives lock 0 and is tested second, so loss wins; neither keeps the previous value, the word at +0x49c of the kona screen record. The third word, which carries the other chips, is not looked at.
5. A second routine (0x4ef7c0) stores the value at +0x49c and sets the screen's lock-state word (Xvc record +0x1c) to 1 only when both the value and the genlock-requested flag at +0x4a0 are nonzero. If that word changed it sends firmware request 26 (`EnableGenlock`) with the new value; the environment variable `XVC_RAMBO_GENLOCK` makes it use the requested flag alone.
6. `XvcSendScreenLockChangeEvent` then writes one 32-byte event to every client that selected input on that screen with mask value 4 (bit 2): type = Xvc event base, byte 1 = 2, screen, status = the value from step 4. It is sent whether or not the value changed. Selection is `ProcSGIvcSelectInput` (0x100b30d0); the mask must fit in 12 bits.

**Not a poll.** Nothing in `Xsgi` or the kernel polls lock state; the 0x300 read happens once per type 12 message and once when the screen is attached (`kona.so` 0x4ee2f4, after the firmware's genlock-switching request 69 has filled the flag at +0x4a0; the attach code then zeroes the lock-state word and sends request 26 with 0). The lock query request returns stored words only.

### What an unlocked or never-locked screen looks like

All read from the initialisation at `kona.so` 0x4eb8e0-0x4eb970 and 0x4ebb94-0x4ebb9c, the attach code at 0x4ee26c-0x4ee354, and the query handlers at `Xsgi` 0x1014edb0 and 0x101246e0.

| Client call | Initial reply |
|---|---|
| `XSGIvcQueryScreenInputSyncSource` | implemented 1, voltage 1, source -1, achieved 0. The source reads -2 instead when the firmware's reply to request 69 at attach (`kona.so` 0x4ee340) is nonzero, and after a set that requests genlock; achieved stays 0 until a lock event with bit 21 arrives |
| `XSGIvcQueryVideoScreenInfo` | lock available 1 (a constant at screen record +0x14), flags 2, one external sync port; independent of lock |

Nothing blocks, retries or times out waiting for lock. **Established.**

### Who waits for lock

- `libGL.so` (IP27KONA32) imports from Xvc only `XSGIvcQueryVideoScreenInfo`, `XSGIvcQueryChannelInfo`, `XSGIvcQueryPlatformParameter` and `XSGIvcSetPlatformParameter`. **Established.**
- Performer 6.5.30m `libpf_ogl.so` and `libpf_igl.so` import only `XSGIvcQueryVideoScreenInfo` and `XSGIvcQueryChannelInfo`; `libpfdu`, `libpfutil` and `libpfui` import no Xvc function. `libpf.so` imports the same two. So the Performer run-time libraries cannot read the lock state or receive the lock event. (The Maya-linked `libpfdb/pfbExport_*.so` and `pfbViewer_*.so` plug-ins do import `XSGIvcSelectInput` and `XSGIvcQueryScreenInputSyncSource`, as does `xsetmon`; they are not part of a run-time Performer application.) It prints "Make sure pipes are genlocked" and a "NO GENLOCK" banner from the video-clock set-up (`pfPipe::initVClock` 0x3ef92700, `nb_syncVClock` 0x3ef94bc0 in the 32-bit library); from the strings these are warnings. **Established** for the imports, **inferred** for the warnings (bodies not read).
- Only a program that links `libXsgivc` and calls `XSGIvcQueryScreenInputSyncSource` or `XSGIvcSelectInput`, as `setmon`-style tools do, can wait for lock. Whether the Inferno player does is **unknown**: no copy of the player is held. What would settle it: its dynamic imports (`XSGIvcSelectInput`, `XSGIvcQueryScreenInputSyncSource`) and, in a stuck process, the wire type of the event its Xlib wait is matching (the lock event is Xvc event base + 0).

### What a model must do

- Never raising bit 9 and never setting bit 21 of display-bus 0x300 gives a screen that reports "not achieved" for ever with no event. Nothing shipped in the server, the kernel, libGL or Performer waits on it.
- To look locked: set bit 21 and clear bit 20 in the status register that display-bus 0x300 returns, raise `HH_INTR_STATUS` bit 9 once (the running enable mask 0xf7c includes it) and answer display request 61 with that word as word 1. A bit 9 that stays raised would, **inferred**, flood the server with type 12 messages, each costing a firmware request; the kernel handler writes the cause bit back and acknowledges, so the model should drop the line on the write-back.
- Request 61 makes the firmware write 0 to display-bus 0x8f after replying. What that clears is unknown ([arm1 functions](../../software/ucode/arm1_functions.md)).

## Swap signals a model might not produce

Hardware that exists and that a model can leave out without a shipped reader noticing, from the [swap-ready page](../../devices/dg/swap-ready-and-swap-barrier.md):

| Signal | Producer and consumer | Does software read it? | Rating |
|---|---|---|---|
| Swap-ready line, one shared wired-AND line per pipe set | each pipe drives it from `SWAP_CNTRL` (display-bus 0x1920 bit 0, or 0x8001 on DPLEX boards); the frame manager and chips sample it internally | No register reflects the level; only the delayed NEXT-to-NOW copy (DPLEX status 0xe200 bit 1) shows it. The kernel and server never wait on it | established as writes, inferred as sampling |
| Per-group strobes, `do_swap[0..9]` of the frame manager | selected by the display-id table at bus 0x81 + n | no | inferred |
| Swap-group arrival | counted in kernel software (group counters, retrace tag), completed by the video interrupt and `HH_SEQID` | the kernel, from its own counters | established |
| Genlock detect and loss | video chips' status bits 21 and 20, `HH_INTR_STATUS` bit 9 | yes, once per bit 9 interrupt, as above | established |

No swap-ready cause bit and no DG register carries a swap-group or barrier completion to the host. On a single pipe with the cable absent the kernel completes a swap group when its last member arrives and the retrace tag reaches the group's tag; the line is not needed. A group member whose record was only queued, never activated, has no 60-second timer ([swap page](swap-and-retrace-completion.md#what-a-missing-interrupt-looks-like)), so it can wait for ever if the member that would send the tag never swaps; that shows as a sleeper in the fault path and no timeout message, not as an X event.

## Open

| Unknown | Routes tried | What would settle it |
|---|---|---|
| Who calls the buffer-clobber callback at the GLX screen record +0x60 | every call through the record's +0x54 to +0x60 slots found in `Xsgi`, `glx.so` and `kona.so` by a text search | a full call-graph of `glx.so` and the DDX imports (`glxMi*`) |
| What request 61's clear of display-bus 0x8f does, and whether VOC status bits 21 and 20 latch | firmware and server code, the genlock page | a capture of 0x300 around a reference being applied and removed |
| Senders of the other Xvc events | names only | reading the `ProcSGIvc*` handlers and their screen callbacks |
| Whether the Inferno player waits on the lock event or flag | none held | the player's imports and its stuck wait type |
