# How a buffer swap completes, and what IRIX waits on

What an emulated pipe has to deliver for an IRIX 6.5.30m kernel to treat a buffer swap as done: whether the pipe raises a swap-done interrupt, what the kernel sleeps on until the swap completes, what the flow-control writes of 0x22 and 1 to widget offset 0x7c ask of the pipe, and what advances the retrace tag at 0x800248. First configuration only (IP27 Onyx2, one InfiniteReality2 pipe); the IP35 objects were not re-read here, and earlier pages record identical code for `kona_video.o`, `kona_sched.o` and `rrm.o` apart from one CPU-number address. The page answers questions put by an emulator whose pipe stalls a compositing application on its first swaps.

Ratings: **established** (the whole routine read in the shipped binary or firmware image), **software expectation** (what the driver or firmware assumes the hardware does; no hardware was read, so none of it is observed), **inferred** (reasoning given), **unknown** (routes tried, and what would settle it). The IRIX source tree holds no InfiniteReality kernel driver (`refs/irix-source` has no `kona` or `rrm` source file in its 6.5.5 and 6.5.7 trees; the 6.5.5 tree carries only the installed headers `sys/kona.h`, `sys/kona_if.h`, `sys/kona_diag.h` and `sys/rrm.h`), so every reading is of `usr/cpu/sysgen/IP27boot/kona.a` and `rrm.o` (6.5.30m; `kona.a` SHA-256 0b4e51c8...29c3c2) and `usr/gfx/ucode/KONA/arm1.u`. Offsets below are within the named member. Companion pages: [the DG chapter](../../devices/dg/README.md#buffer-swap-and-retrace-wait), [the host interface](../../devices/hip/README.md#interrupts), [the non-IRIX driver page](non-irix-driver.md), [what the X server sends a client](xsgi-events-and-manager-messages.md).

## 1. Does the pipe raise an interrupt when a swap takes effect?

**No.** **Established** (absence, over every interrupt path of the driver). No cause bit, ARM event or geometry-engine event reports a swap. IRIX learns that the pipe has passed a swap only by reading `HH_SEQID` (0x800248) inside the handler of the per-frame video interrupt, `HH_INTR_STATUS` bit 3. The sources are exhaustive:

| Source | Where read | Swap-related |
|---|---|---|
| `HH_INTR_STATUS` bits 0, 1, 2 (FIFO high, low, overflow) | `kona_intr_handler` (`kona_intr_hip2.o` +0x70) | no |
| bit 3 `VIDEO` | same handler, test at +0x110, call at +0x11c; the service is `kona_video_intr` (`kona_video.o` +0x17b8) | **yes, the only one** |
| bit 4 `ARM` | `kona_arm_intr`: mailbox values 0 (text), 0x100, 0x102, 0x103 | no (input DMA, swap-in, context activate) |
| bit 5 `GE` (own handler) | `kona_ge_intr`: codes 0, 0x100-0x105 | no (select feedback, context deactivate, swap-out, mop-up, suspend, check-pipe) |
| bits 6, 8, 10, 11 | overflow and parity faults | no |
| bit 9 `VOC` | `kona_voc_intr`: genlock notice | no |
| XG error vector | `kona_xg_intr_handler` | no |

The 6.5.5 installed header `sys/kona_if.h` lists the same software codes for the engines (0x100-0x105) and the ARM (0x100, 0x102, 0x103) and none for a swap, which agrees with the table; it states what the driver expects, not what the hardware raises.

The video cause is delivered on the pipe's third Xtalk interrupt vector (V3, bits 7-0 of widget offset 0x5c; **inferred** from handler table order, [xg](../../devices/xg/README.md#where-the-pipes-interrupt-packets-go)). The handler runs only after `KONAstart` has replaced the software mask 0x100 with 0xf7c, which includes bit 3 (**established**, `kona_intr_hip2.o` +0xac and `KONAstart`, `kona_setup.o` +0x170). It reads status, masks it with the software mask and with `~0x20`, serves the set bits in ascending order, writes the served bits back to `HH_INTR_STATUS` and writes 0xbadc0ffe to `HH_INTR_ACK` (+0x194-+0x1d0).

### The path from `SwapBuffers` to the wake-up

All **established** unless marked.

1. Ioctl 1005, `RRM_SwapBuf` (`rrm.o` +0x3838). It clears the pane's BUFFER-valid bit (`invalidate_pane`), calls board operation +136, `KONAschedswapbuf` (`kona_video.o` +0x6e8), and then **unmaps the pipe** from the caller (`rrmUnMapGfx`). The ioctl itself does not wait for the swap, except in the swap-interval case below.
2. `KONAschedswapbuf` sends `VALIDATE_BANK`, a `DISPMODE` packet and, for any swap that is neither mode 1 nor in a swap group or network, queues a retrace record (`kona_retrace_setup`, callback `kona_swap_complete`, tag N from the counter at pipe state +3528) and calls `kona_retrace_activate`. That arms a 120-tick software timer and sends token `RETRACE_SEQID` (0x1e7) with N. Mode 1 outside a network skips the group logic (test at +0x870) and branches at +0xa30 to an immediate `kona_swap_complete`, with no wait and no interrupt. Swap-group and multi-pipe network members differ as the [DG chapter](../../devices/dg/README.md#buffer-swap-and-retrace-wait) lists.
3. The pipe processes the token in stream order and `HH_SEQID` becomes N ([when exactly is open](../../devices/dg/README.md#retrace-sequence)).
4. At the next video interrupt `kona_video_intr` does, in this order: `kona_video_tick` (frame counters, wakes video-sync sleepers); read `HH_SEQID`; `kona_nclops_swapped`; when the swap table at pipe state +184 is empty and the network field +5500 is -1, write 2 to display-bus 0x80 (`HH_VC_ADDRESS` 0x8003c0 = 0x80, `HH_VC_DATA` 0x8003d0 = 2, +0x1bf4-+0x1c1c); write 1 to `HH_TBUS_STATUS` (0x8003a8); then walk the retrace queue from its head and call the callback of every record whose tag is not above `HH_SEQID` (unsigned compare, +0x185c), with the timer cancelled and argument 0.
5. `kona_swap_complete` (`kona_video.o` +0x1cc) calls `rrmValidateBuffer` (`rrm.o` +0x2acc), which calls `validate_pane_buffer` (+0x878): BUFFER is set in the pane's valid mask and `sv_broadcast` wakes every sleeper on the pane's sleep point at +72.

### What IRIX sleeps on

| Sleep | Entered from | Primitive | Woken by | Needs |
|---|---|---|---|---|
| `validate_my_pane_buffer` (`rrm.o` +0x8c8) | the thread's next touch of the FIFO mapping after step 1 unmapped it: `gfx_fault` (`gfx.o` +0xd5c) to `RRM_ValidFault` (+0x3378) to `validate_my_pane_resources` (+0x97c); also `RRM_BindRNToReadAndClip` (+0x1554) | `sv_wait_sig` on pane +72, priority 542, non-fatal signals held (a fatal signal still interrupts it) | `sv_broadcast` in `validate_pane_buffer` | steps 3-5: a video interrupt with `HH_SEQID` at or above the tag |
| `rrmSwapWait` (`rrm.o` +0x3748), inside ioctl 1005 | pipe swap-wait enabled and the window has a swap interval | `sv_wait_sig` on node +48, priority 30 | `rrmValidateVideoSync` (+0x44b8), called from `kona_video_tick` | any video interrupt; `HH_SEQID` is not involved |
| `rrmWaitVideoSync` (+0x43dc), ioctl 1023 | an application waiting for a retrace count | `sv_wait_sig` on node +48 | `rrmValidateVideoSync` | any video interrupt |
| `rrmValidateMyRetrace` (+0x2de4) | ioctl 1007 `RRM_WaitForRetrace`, an in-flight swap cancelled by `RRM_InvalidateRN`, `RRM_LoadDisplayMode`; entered from `RRM_ValidFault` | `sv_wait` on node +48, priority 25, **not interruptible** | `rrmValidateRetrace` (+0x2e5c) from `kona_gsync_complete` (+0x2b8), the callback of `KONAschedretraceevent` | a video interrupt with `HH_SEQID` at or above the tag |

So IRIX sleeps on the swap in the page-fault path, not in an ioctl, unless a swap interval is in force. If the video interrupt never arrives, every row above stalls.

None of these wake-ups reaches the X server or a client's X connection: no X event reports a swap, a swap group, a barrier or a video-sync wait. What the kernel does send the server, and the one hardware-driven X event (screen lock status), are on [the Xsgi events page](xsgi-events-and-manager-messages.md). A client spinning in Xlib after a swap is waiting for something else.

### What a missing interrupt looks like

**Established.** The retrace timer is the only other way out. `kona_retrace_timeout` (`kona_video.o` +0x308) fires after `kona_retrace_timeout_value` = 120 watchdog ticks of 0.5 s, 60 s ([hip.md](../../devices/hip/README.md#what-the-retrace-interrupt-writes-0x800228-and-0x8003a8); with the shipped `kona_full_timeouts` = 1, while a build with 0 expires every pending timer at the first tick that sees no activity on `HH_TBUS_STATUS` bit 2 or from the ARM), removes that node's record and calls the callback with argument 1. `kona_swap_complete` then prints "swapbuffer timeout (rnp=0x%x)" (`cmn_err_tag` 2103, `kona_video.o` +0x1fc) and still runs `rrmValidateBuffer`, so the sleeper wakes. `kona_gsync_complete` does the same with "gsync timeout" (2104). A pipe that never interrupts therefore shows as one 60 s stall per swap and those messages in the system log, not as a permanent hang. A record that only `kona_retrace_setup` has queued has no timer: the timer is armed and its handle stored by `kona_retrace_activate` alone (`kona_video.o` +0x498 and +0x4a0; `kona_retrace_setup`, +0x3c8, stores no handle), so a swap-group member waiting for the last member to arrive can be completed only by the video interrupt.

### What an emulated pipe has to do

**Approximation guidance, not a hardware fact.** From the contract above:

1. Raise `HH_INTR_STATUS` bit 3 at every vertical retrace or field, whether or not any swap or retrace request is pending, once `HH_INTR_ENABLE` has bit 3 set. The video interrupt is also the clock for swap intervals, `glXGetVideoSyncSGI` counters and the cursor update (`kona_video_tick`). **Inferred** that real hardware does the same, from the counters the kernel advances unconditionally and the published rate of the counter ([DG chapter](../../devices/dg/README.md#retrace-sequence)); not measured.
2. Make no other interrupt for a swap. A swap-done cause that IRIX does not read would be harmless, but nothing waits for it.
3. Expect, in every video interrupt with no swap table and no network, one `HH_VC_ADDRESS` 0x80 / `HH_VC_DATA` 2 pair, and one write of 1 to `HH_TBUS_STATUS`. What the strobe does inside the frame manager is **unknown** ([DG.h](../../devices/dg/DG.h) `KONA_DG_SWAP_STROBE`).
4. If the emulation does raise bit 3 at every retrace and the application still stalls, check that `HH_SEQID` has the tag of the last `RETRACE_SEQID` the pipe consumed and not an older value, and that the write-back of the cause bits and the 0xbadc0ffe acknowledge do not lose a second bit raised between the status read and the write-back (`kona_intr_handler` writes back exactly the bits it served).

## 2. What the writes of 0x22 and 1 to offset 0x7c mean

Offset 0x7c of the pipe's Xtalk window is `XG_GFX_DET`, not a host-interface register (user-mapping offset 0xc07c; [xg](../../devices/xg/README.md)). kpm's table gives it `DETACH` in bit 0 and `RES_TNUM` in bits 5-1 (mask 0x3f; **established**, `software/diags/kpm/xg_registers.tsv`). The driver writes two values only:

- **0x22** is `(tnum << 1) & 0x3e` with tnum 17, the constant `gfx_flow_credit_tnum_get` returns and `kona_attach` stores at pipe state +2248. It is the **attach** (**established**).
- **1** is **detach**, followed by a read of the same offset whose value no caller looks at (**established**; the discarded read follows the write in every function in the table below).

What the pipe does with them is not in any shipped software. **Inferred** from the field names and from the driver's use: attach tells the XG to return flow-control credits for the writer's stores to the writer's hub on Xtalk transaction number 17, and detach stops that return before another CPU takes the FIFO. **Unknown: no shipped software or published source depends on it:** what the XG does if it receives 0x22 twice without a detach, how many credits it returns at attach, and whether detach discards credits not yet returned. Routes tried: every access to offset 0x7c in `kona.a` (the table below), the kpm XG table, `devices/xg`, the 6.5.5 headers. What would settle it: an XG datasheet or a capture of the credit packets, neither held.

### One attach, in order

**Established** (`gfx_flow_attach_me` 0x6b8, `gfx_flow_attach_me_finish` 0x810 in `gfx_flow.o`; `kona_retrace_activate` +0x4c4-+0x5d0 as the example sender). A sender first flushes its write-gather buffer and asks `gfx_flow_am_i_attached`; only when the CPU is not attached does it do the following, so a CPU that is already attached writes nothing to 0x7c:

1. `gfx_flow_attach_me`: the hub's credit bias for this CPU slice is zeroed, its credit counter is loaded with the credit count saved at the last detach (the full total on the first attach), its page register takes the FIFO page with bit 40, and the pipe's `IIO_IGFX_x` register in the master hub takes widget, node, slice and the valid bit. These are hub registers, not pipe registers.
2. Write 0x22 to 0x7c.
3. `kona_flow_await_returned_credits` (`kona_flow.o` +0x754): poll the hub's credit count for up to 1000 steps of 1 us until it reaches the bias. Then require the count not to exceed the total; **a count above the total kills the pipe (reason 25)**. The poll also ends at once when the word at +2344 is nonzero, and when the pipe is already flagged dead (+2172) and bit 2 of the flag word of the connection at +72 is set it takes a reset-and-reattach path instead (+0x80c; [xg](../../devices/xg/README.md)). If the wait times out the code does not fail: it reads `HH_GFIFO_LEVEL` (0x800208) and yields the CPU when the level is above 768, else returns.
4. `gfx_flow_attach_me_finish`: the hub's bias takes its real value.

The packet then goes out between kicks of `HH_GINTR_INFO` (0xc00108): 0x30000, the token, 0x10000, the payload, 0. The attach test runs again before each of the three kicks, so one packet has up to three conditional attach sites (hence three 0x22 writes in the code, one in a running trace).

### One detach, in order

**Established** (`KONAunmapgfx` +0x35c, `KONAsuspend` +0x0 and `KONAreleasegfxsema` +0x938 read in full; `KONApcxswap` and `KONAdestroyddrn` write 1 and read back the same way, their credit wait not re-read): flush the gather buffer; when no writer is parked on the FIFO (word +2344 is zero) and the hub's credit count is below the bias, run the same credit wait as step 3 above (`KONAsuspend` has a branch, taken with a nonzero third argument, that skips the check: +0x64-+0x9c); write 1 to 0x7c; read 0x7c back; `gfx_flow_detach_me` clears the `IIO_IGFX_x` valid bit, zeroes the bias, sets the page register to 0xdeadbabe and saves the remaining credit count for the next attach. A detach therefore expects the pipe to have returned the credits for everything written, or the saved count is short and the next attach waits for the rest.

### Who writes what

**Established** (offsets of the `daddiu a0,...,124` that forms the address, `kona.a` 6.5.30m `IP27boot`; the IP35 objects were not re-read).

| Value | Function (member, +offset) | When |
|---|---|---|
| 0x22 | `KONAmapgfx` (`kona_map.o` +0x2d8) | a connection is mapped to the pipe, after its faults are validated |
| 0x22 | `KONAresume` (`kona_sched.o` +0x274) | the scheduler puts a mapped connection back on a CPU |
| 0x22 | `KONAstart` (+0x2b0, +0x318, +0x380) | the first packet after the pipe is configured |
| 0x22 | `KONAschedswapbuf` (+0xa70, +0xad8, +0xb40), `KONAschedmgrswapbuf` (+0x1344, +0x13ac, +0x1414), `KONAsetdisplaymode` (+0xee0, +0xf48, +0xfb0), `kona_retrace_activate` (+0x5c4, +0x62c, +0x694) | each of their packet phases, when not attached |
| 0x22 | `kona_idma`, `kona_dmapool_update_pipe`, `kona_start_selectfeed`, `kona_finish_selectfeed` (`kona_dma.o`); `kona_mem_swapout_func`, `_swapin_func`, `_copydown_func`, `_resume`, `_reserve_func` (`kona_mem.o`); `kona_act_pcx`, `KONAvalidateclip`, `KONApcxswap` (`kona_context.o`); `kona_checkpipe` (`kona_crash.o`); `KONAdestroyddrn` (`kona_ddrn.o`) | every other packet sender, three to seven sites each |
| 0x22 | `kona_diag_flow` (`kona_flow.o` +0x6a0), `kona_flow_await_returned_credits` (+0x8a8, the recovery re-attach) | diagnostic switch on; credit-recovery path |
| 0x22, then a read | `kona_fc_attach` (`kona_tport.o` +0x1668; write +0x178c, read +0x1790) | the textport bracket (it loads its own hub credit values, 168 and 36, and does not call the flow layer) |
| 1, then a read | `KONAunmapgfx` (+0x3bc, read +0x3c8) | the connection is unmapped, which `RRM_SwapBuf` does after every swap it scheduled |
| 1, then a read | `KONAsuspend` (+0x88 and +0x110, reads +0x94 and +0x11c) | the scheduler takes a mapped, current connection off a CPU |
| 1, then a read | `KONAreleasegfxsema` (+0x984, read +0x990), `KONApcxswap` (+0x8b0, read +0x8bc), `KONAdestroyddrn` (+0x454, read +0x460) | giving up the pipe, a context switch, destroying a node |
| 1, then a read | `kona_fc_detach` (`kona_tport.o` +0x179c; write +0x17f4, read +0x1800) | end of the textport bracket |

### Why the last step is normally left open

**Established.** No packet sender on the swap path detaches: `KONAschedswapbuf`, `KONAschedmgrswapbuf`, `KONAsetdisplaymode`, `kona_retrace_activate` and `KONAstart` return with the CPU still attached, and the detach comes from the unmap, suspend or release path that runs later, if the connection is the pipe's current one and `gfx_flow_am_i_attached` is true (`KONAunmapgfx` +0x20-+0x3c: current connection, mapped flag, attached; `KONAsuspend` the same connection and attachment tests, but it accepts either of the two low flag bits, not only the mapped bit). Two other senders detach themselves: `KONApcxswap` after its context-switch packets (+0x880-+0x8c4, then it sends more) and `KONAdestroyddrn` after its last packet (+0x424-+0x468). In the swap path `RRM_SwapBuf` calls `KONAschedswapbuf` (attached, 0x22 if needed) and then `rrmUnMapGfx`, so the 1 follows within the same ioctl. The thread then sleeps in the fault path (section 1) detached. Seen from the pipe, a batch of 0x22, packets and no 1 is correct until the matching unmap or suspend runs. Nothing in the driver waits for a reply to either write: the only reply it looks for is the credit count in the hub, and that wait is bounded (1000 us) and a timeout ends in a yield, not a hang (the failures are the over-credit death and the dead-pipe reset above).

### What an emulated pipe has to do

**Approximation guidance, not a hardware fact.**

- Accept 0x22 and 1 at offset 0x7c without effect on the guest-visible registers, and answer the read-backs with any value.
- If the model also emulates the hub's credit counter, the credits for the writer's stores must come back to the registered CPU slice as the pipe consumes FIFO words, and must never total more than were taken (that kills the pipe, reason 25). A counter that never returns credits does not hang the kernel: each attach gives up after 1000 us, but a hub model that stalls stores at zero credits can hang the CPU in the store itself.
- Do not require a detach before the guest sleeps. A CPU may sleep attached; the next detach comes from `KONAsuspend`, `KONAunmapgfx` or `KONAreleasegfxsema` when the scheduler or the swap ioctl reaches it.

## 3. What advances the retrace tag at 0x800248

**Answer.** The pipe sets `HH_SEQID` to the one-word payload of each `RETRACE_SEQID` (0x1e7) token, as the pipe reaches that token in the command stream. It is not a counter, no retrace or frame count enters the value, and nothing in the firmware waits for a retrace. **Established** for what the firmware does with the token; **inferred** that `HH_SEQID` is the host-side view of the raster-bus register the firmware writes (no description of the host interface is held); **unknown** when the host-side value changes relative to the write (below).

### What the firmware does

**Established** (`arm1.u` 6.5.30m, raw words checked against the file, image offset 0x80 for the AIF header; `arm_retrace_seqid` 0x0c013f5c-0x0c014024):

1. It tests bit 2 of the host-interface status word at r9 - 0x1a0, the privilege bit that the kernel's kick of `HH_GINTR_INFO` sets (0x30000 before the token, 0x10000 before the payload; **software expectation**, the firmware only tests the bit, [host interface](../../devices/hip/README.md)). With the bit clear it prints "Command privilege violation." and calls `arm_badcmd` (0x0c0017f4), which never returns: it reads the payload port in a loop forever (0x0c00184c-0x0c001854). The kernel always kicks, so this only matters to a model that feeds the token without the kick.
2. It makes six writes to display-bus address 0x7f through the video-bus handler, with the values 1 to 6 (0x0c013f98-0x0c014008).
3. It writes the payload word to raster-bus register 0x420 with `tbus_regwrite` (0x0c015298), a tail call at 0x0c014018-0x0c014024. `tbus_regwrite` only stores the register number, the value and the register-write handler address to the engine ports 0x474, 0x840 and 0x8c0; that the geometry engines carry the write out, behind everything queued before it, is **inferred** from the port names ([arm1_firmware.md](../../software/ucode/arm1_firmware.md)).

Nothing else in the handler reads a counter, tests a frame or retrace state, or loops. **Inferred** from the register number being the only link: 0x420 is the register `HH_SEQID` reflects, and the six display-bus writes act as an ordering barrier ahead of it ([DG chapter](../../devices/dg/README.md#retrace-sequence)). What the display side does with the six writes is **unknown**: no shipped software depends on it, and a display-bus write that the display chips accept only in blanking would make the tag effectively retrace-paced. Routes tried: the handler, `mgesi_VCbusWrite` ([ge_compute.md](../../software/ucode/ge_compute.md#video-controller-bus-writes-videos)), the frame-manager registers ([fm](../../devices/fm/registers.md)), which have no entry for 0x7f.

### There is no retrace handler in the firmware

**Established.** `arm1.u` services no interrupt. The IRQ vector (0x0c000270, from the table at `vector_start` 0x0c0002e8) goes to `irq` (0x0c03caf8) and the FIQ vector (0x0c0002ac) to `fiq` (0x0c03cb14). Both jump to `fault` (0x0c03ca3c), which prints "ARM: Unexpected Exception (fault) - INTERRUPT REQUEST" (or the fast form) and spins at 0x0c03ca98. The ARM only runs token handlers from its input loop, so a retrace can change `HH_SEQID` only through whatever the engines or the host interface do on their own.

### What else writes it

**Established, negative** (routes: every load of the constant 0x420 as a register number in `arm1.u`, every `HH_SEQID` access in `kona.a`, the token inventory, the context-image chapter; all 337 direct calls of `tbus_regwrite` and `tbus_regwritenoincr` pass a constant register number, two of them 0x420; not searched: the engine microcode and the user libraries' own command streams):

- `init_dg_board` writes 0 to register 0x420 at the end of its start-up, when it is not running simulated (0x0c003d78-0x0c003da4), so a pipe whose firmware has started reads 0. This runs again on every firmware start.
- `kona.a` only reads `HH_SEQID`, in `kona_video_intr` (+0x17ec), and never writes it.
- The only senders of token 0x1e7 in the shipped kernel are `kona_retrace_activate` (+0x468) and `KONAschedmgrswapbuf` (+0x1138, which sends `DISPMODE` and then the token). No user-library or kpm sender of it is documented. A hardware-routed register-write token carrying register 0x420 could in principle set the value; none is documented and the kernel sends none.
- The saved-context image has no record for raster registers ([rm](../../devices/rm/README.md#context-save-and-restore)), so a context switch does not restore an old tag (**inferred** from the layout).

The other `0x420` stores in `arm1.u` (0x0c008068, 0x0c0098bc, 0x0c020934) are ARM-side window offsets and engine-select ports, not raster register 0x420.

### How the kernel picks the tags

**Established** (`kona_video.o`, 6.5.30m).

- The counter at pipe state +3528 starts at 0 (`kern_malloc` then `bzero`) and has two writers, `kona_retrace_setup` (+0x3c8) and `KONAschedmgrswapbuf` (+0x11ac). Each hands out the current value as the tag and adds 1 under the lock at +3520, so tags are dense: 0, 1, 2, and so on, one per swap or retrace wait.
- A tag is **not** always sent. `kona_retrace_setup` only allocates the tag and queues the record. A plain swap (+0xa3c, +0xa4c), a multi-pipe network member (+0x9a8, +0x9b8) or a retrace wait (`KONAschedretraceevent`, +0xd40, +0xd50) calls `kona_retrace_activate` straight after, which sends the token. A swap-group member calls `kona_retrace_setup` on arrival (+0xba4) and keeps the tag in the group record (+0xbb4), but only the last member to arrive calls `kona_retrace_activate` (+0xc6c), with its own tag. The earlier members' tags are never sent: their records complete only because `HH_SEQID` later reaches or passes them.
- Records complete in queue order, which is tag order, and the walk stops at the first record whose tag is above `HH_SEQID` (unsigned compare, `kona_video_intr` +0x185c). **Any number of records complete in one interrupt**: the loop runs until a record is above the value. `kona_mswap_complete` (+0x1004) does the same for managed swaps over a 96-entry table, comparing each entry with `HH_SEQID` and completing every entry at or below it; on a timeout it completes all of them.
- `HH_SEQID` is the last value written, not a maximum. Firmware stores the payload unconditionally, so a lower tag processed after a higher one lowers it (**established** for the firmware). The kernel only ever compares the value it reads with the queue head.
- Tokens may leave out of tag order. **Established:** a tag is allocated under the `P+3520` lock, but the token goes out after the lock is dropped (`kona_retrace_setup` unlocks at +0x44c, `KONAschedmgrswapbuf` at +0x11d4) and `kona_retrace_activate` takes no lock, so a sender that allocates tag N+1 can reach the FIFO before the one holding N. **Inferred** that two such senders can run at once: `RRM_Dispatch` (`rrm.o` +0x4670) holds one semaphore per rendering node around `RRM_SwapBuf`, and a per-pipe semaphore (`P+56`) only when the caller's connection is not the pipe's current one (+0x4980), so two nodes of one connection can both reach `KONAschedswapbuf`; no user library was read to show a program doing so. If it happens `HH_SEQID` ends at N and the record for N+1 stays queued until its own 60 s timer or a later token. One thread's own tokens are in tag order.
- Tag 0 completes on the first video interrupt whatever the pipe has done, because the firmware leaves 0 there ([DG chapter](../../devices/dg/README.md#retrace-sequence)).

### When the register changes

**Software expectation:** the kernel reads `HH_SEQID` only inside the video interrupt, once per frame, so it can observe the change no sooner than the next frame, and any value written before then is seen at that interrupt. **Unknown: no shipped software or published source depends on it:** whether the host-side register changes the moment the engines carry out the write or at the next retrace. Routes tried: both kernel readers, the firmware handler and start-up, the existing host-interface and display chapters. What would settle it: a host-interface datasheet or a capture that reads 0x800248 around a retrace.

### What this means for an emulated pipe

**Approximation guidance, not a hardware fact.**

- Set `HH_SEQID` to the payload of every `RETRACE_SEQID` token when the pipe consumes it from the FIFO, even if several arrive in one frame. Do not wait for a retrace and do not complete one token per retrace; the value jumps to the last payload and the driver retires every record at or below it in the next video interrupt.
- Reset it to 0 when the firmware starts.
- A record whose tag is above `HH_SEQID` has had no token consumed yet. That is correct while a swap-group member is waiting for the rest of its group, and it has **no timer** (section 1), so it waits until a token with a higher tag arrives. If such a record stays above a frozen value although every token the guest sent has been consumed, the model has lost or deferred a token; compare the highest tag the guest queued with the highest payload the model has seen.
- Do not clamp the register to a maximum, and do not clear it between tokens.
