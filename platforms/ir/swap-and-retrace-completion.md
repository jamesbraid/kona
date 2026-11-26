# How a buffer swap completes, and what IRIX waits on

What an emulated pipe has to deliver for an IRIX 6.5.30m kernel to treat a buffer swap as done: whether the pipe raises a swap-done interrupt, and what the kernel sleeps on until the swap completes. First configuration only (IP27 Onyx2, one InfiniteReality2 pipe); the IP35 objects were not re-read here, and earlier pages record identical code for `kona_video.o`, `kona_sched.o` and `rrm.o` apart from one CPU-number address. The page answers questions put by an emulator whose pipe stalls a compositing application on its first swaps.

Ratings: **established** (the whole routine read in the shipped binary or firmware image), **software expectation** (what the driver or firmware assumes the hardware does; no hardware was read, so none of it is observed), **inferred** (reasoning given), **unknown** (routes tried, and what would settle it). The IRIX source tree holds no InfiniteReality kernel driver (`refs/irix-source` has only 6.5.5 and 6.5.7 trees without a `kona` or `rrm` file), so every reading is of `usr/cpu/sysgen/IP27boot/kona.a` and `rrm.o` (6.5.30m; `kona.a` SHA-256 0b4e51c8...29c3c2) and `usr/gfx/ucode/KONA/arm1.u`. Offsets below are within the named member. Companion pages: [the DG chapter](../../devices/dg/README.md#buffer-swap-and-retrace-wait), [the host interface](../../devices/hip/README.md#interrupts), [the non-IRIX driver page](non-irix-driver.md).

## 1. Does the pipe raise an interrupt when a swap takes effect?

**No.** **Established** (absence, over every interrupt path of the driver). No cause bit, ARM event or geometry-engine event reports a swap. IRIX learns that the pipe has passed a swap only by reading `HH_SEQID` (0x800248) inside the handler of the per-frame video interrupt, `HH_INTR_STATUS` bit 3. The sources are exhaustive:

| Source | Where read | Swap-related |
|---|---|---|
| `HH_INTR_STATUS` bits 0, 1, 2 (FIFO high, low, overflow) | `kona_intr_handler` (`kona_intr_hip2.o` +0x70) | no |
| bit 3 `VIDEO` | same handler, test at +0xa0, call at +0xac; the service is `kona_video_intr` (`kona_video.o` +0x17b8) | **yes, the only one** |
| bit 4 `ARM` | `kona_arm_intr`: mailbox values 0 (text), 0x100, 0x102, 0x103 | no (input DMA, swap-in, context activate) |
| bit 5 `GE` (own handler) | `kona_ge_intr`: codes 0, 0x100-0x105 | no (select feedback, context deactivate, swap-out, mop-up, suspend, check-pipe) |
| bits 6, 8, 10, 11 | overflow and parity faults | no |
| bit 9 `VOC` | `kona_voc_intr`: genlock notice | no |
| XG error vector | `kona_xg_intr_handler` | no |

The video cause is delivered on the pipe's third Xtalk interrupt vector (V3, bits 7-0 of widget offset 0x5c; **inferred** from handler table order, [xg](../../devices/xg/README.md#where-the-pipes-interrupt-packets-go)). The handler runs only after `KONAstart` has replaced the software mask 0x100 with 0xf7c, which includes bit 3 (**established**, `kona_intr_handler` +0x3c and `KONAstart`). It reads status, masks it with the software mask and with `~0x20`, serves the set bits in ascending order, writes the served bits back to `HH_INTR_STATUS` and writes 0xbadc0ffe to `HH_INTR_ACK` (+0x124-+0x160).

### The path from `SwapBuffers` to the wake-up

All **established** unless marked.

1. Ioctl 1005, `RRM_SwapBuf` (`rrm.o` +0x3838). It clears the pane's BUFFER-valid bit (`invalidate_pane`), calls board operation +136, `KONAschedswapbuf` (`kona_video.o` +0x6e8), and then **unmaps the pipe** from the caller (`rrmUnMapGfx`). The ioctl itself does not wait for the swap, except in the swap-interval case below.
2. `KONAschedswapbuf` sends `VALIDATE_BANK`, a `DISPMODE` packet and, for any swap that is neither mode 1 nor in a swap group or network, queues a retrace record (`kona_retrace_setup`, callback `kona_swap_complete`, tag N from the counter at pipe state +3528) and calls `kona_retrace_activate`. That arms a 120-tick software timer and sends token `RETRACE_SEQID` (0x1e7) with N. Mode 1 outside a network skips the group logic (test at +0x188) and branches at +0x348 to an immediate `kona_swap_complete`, with no wait and no interrupt. Swap-group and multi-pipe network members differ as the [DG chapter](../../devices/dg/README.md#buffer-swap-and-retrace-wait) lists.
3. The pipe processes the token in stream order and `HH_SEQID` becomes N ([when exactly is open](../../devices/dg/README.md#retrace-sequence)).
4. At the next video interrupt `kona_video_intr` does, in this order: `kona_video_tick` (frame counters, wakes video-sync sleepers); read `HH_SEQID`; `kona_nclops_swapped`; when the swap table at pipe state +184 is empty and the network field +5500 is -1, write 2 to display-bus 0x80 (`HH_VC_ADDRESS` 0x8003c0 = 0x80, `HH_VC_DATA` 0x8003d0 = 2, +0x43c-+0x464); write 1 to `HH_TBUS_STATUS` (0x8003a8); then walk the retrace queue from its head and call the callback of every record whose tag is not above `HH_SEQID` (unsigned compare, +0xa4), with the timer cancelled and argument 0.
5. `kona_swap_complete` (`kona_video.o` +0x1cc) calls `rrmValidateBuffer` (`rrm.o` +0x2acc), which calls `validate_pane_buffer` (+0x878): BUFFER is set in the pane's valid mask and `sv_broadcast` wakes every sleeper on the pane's sleep point at +72.

### What IRIX sleeps on

| Sleep | Entered from | Primitive | Woken by | Needs |
|---|---|---|---|---|
| `validate_my_pane_buffer` (`rrm.o` +0x8c8) | the thread's next touch of the FIFO mapping after step 1 unmapped it: `gfx_fault` (`gfx.o` +0xd5c) to `RRM_ValidFault` (+0x3378) to `validate_my_pane_resources` (+0x97c); also `RRM_BindRNToReadAndClip` (+0x1554) | `sv_wait_sig` on pane +72, priority 542, non-fatal signals held (a fatal signal still interrupts it) | `sv_broadcast` in `validate_pane_buffer` | steps 3-5: a video interrupt with `HH_SEQID` at or above the tag |
| `rrmSwapWait` (`rrm.o` +0x3748), inside ioctl 1005 | pipe swap-wait enabled and the window has a swap interval | `sv_wait_sig` on node +48, priority 30 | `rrmValidateVideoSync` (+0x44b8), called from `kona_video_tick` | any video interrupt; `HH_SEQID` is not involved |
| `rrmWaitVideoSync` (+0x43dc), ioctl 1023 | an application waiting for a retrace count | `sv_wait_sig` on node +48 | `rrmValidateVideoSync` | any video interrupt |
| `rrmValidateMyRetrace` (+0x2de4) | ioctl 1007 `RRM_WaitForRetrace`, an in-flight swap cancelled by `RRM_InvalidateRN`, `RRM_LoadDisplayMode`; entered from `RRM_ValidFault` | `sv_wait` on node +48, priority 25, **not interruptible** | `rrmValidateRetrace` (+0x2e5c) from `kona_gsync_complete` (+0x2b8), the callback of `KONAschedretraceevent` | a video interrupt with `HH_SEQID` at or above the tag |

So IRIX sleeps on the swap in the page-fault path, not in an ioctl, unless a swap interval is in force. If the video interrupt never arrives, every row above stalls.

### What a missing interrupt looks like

**Established.** The retrace timer is the only other way out. `kona_retrace_timeout` (`kona_video.o` +0x308) fires after `kona_retrace_timeout_value` = 120 watchdog ticks of 0.5 s, 60 s ([hip.md](../../devices/hip/README.md#what-the-retrace-interrupt-writes-0x800228-and-0x8003a8)), removes that node's record and calls the callback with argument 1. `kona_swap_complete` then prints "swapbuffer timeout (rnp=0x%x)" (`cmn_err_tag` 2103, `kona_video.o` +0x1fc) and still runs `rrmValidateBuffer`, so the sleeper wakes. `kona_gsync_complete` does the same with "gsync timeout" (2104). A pipe that never interrupts therefore shows as one 60 s stall per swap and those messages in the system log, not as a permanent hang. A record that only `kona_retrace_setup` has queued has no timer: the timer is armed and its handle stored by `kona_retrace_activate` alone (`kona_video.o` +0x498 and +0x4a0; `kona_retrace_setup`, +0x3c8, stores no handle), so a swap-group member waiting for the last member to arrive can be completed only by the video interrupt.

### What an emulated pipe has to do

**Approximation guidance, not a hardware fact.** From the contract above:

1. Raise `HH_INTR_STATUS` bit 3 at every vertical retrace or field, whether or not any swap or retrace request is pending, once `HH_INTR_ENABLE` has bit 3 set. The video interrupt is also the clock for swap intervals, `glXGetVideoSyncSGI` counters and the cursor update (`kona_video_tick`). **Inferred** that real hardware does the same, from the counters the kernel advances unconditionally and the published rate of the counter ([DG chapter](../../devices/dg/README.md#retrace-sequence)); not measured.
2. Make no other interrupt for a swap. A swap-done cause that IRIX does not read would be harmless, but nothing waits for it.
3. Expect, in every video interrupt with no swap table and no network, one `HH_VC_ADDRESS` 0x80 / `HH_VC_DATA` 2 pair, and one write of 1 to `HH_TBUS_STATUS`. What the strobe does inside the frame manager is **unknown** ([DG.h](../../devices/dg/DG.h) `KONA_DG_SWAP_STROBE`).
4. If the emulation does raise bit 3 at every retrace and the application still stalls, check that `HH_SEQID` has the tag of the last `RETRACE_SEQID` the pipe consumed and not an older value, and that the write-back of the cause bits and the 0xbadc0ffe acknowledge do not lose a second bit raised between the status read and the write-back (`kona_intr_handler` writes back exactly the bits it served).
