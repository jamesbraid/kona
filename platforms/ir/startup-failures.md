# Start-up failures: "mopup timeout", death_reason 17, "bad state (0x11)" and "return area did not go valid"

What each of four messages from an IRIX 6.5.30m InfiniteReality pipe means in the shipped software: what the kernel or `gfxinit` waited for, what was supposed to answer, and where the numbers come from. Read 2026-11-28 against kona at 6832d842. It answers an emulator whose Onyx 3000 (IP35, InfiniteReality3) gfxinit prints "IR0: mopup timeout.", "death_reason = 17", "Pipe 0 in bad state (0x11)" and "Kona return area did not go valid!".

Binaries: the IP35 `usr/cpu/sysgen/IP35boot/kona.a` members `kona_ddrn.o`, `kona_crash.o`, `kona_intr.o`, `kona_timeout.o`, `kona_setup.o`, `kona_ioctl.o`, and `usr/gfx/gfxinit` (the same file as `gfxinfo`, N32), with the `arm1.u` firmware. The IP35 text sections of `kona_ddrn.o`, `kona_crash.o`, `kona_intr.o`, `kona_setup.o` and `kona_ioctl.o` disassemble to the same instructions as the IP27 members (compared after stripping addresses); `kona_timeout.o` differs in one absolute load, the address of the debugger flag. Offsets below are `.text` offsets of those members. No IRIX source was read for this page.

Ratings: **established** (the whole routine read in the binary), **software expectation** (what the driver assumes the hardware does; no hardware was read), **inferred** (reasoning given), **unknown** (routes tried, and what would settle it).

## 1. What "mopup" waits for

**Established** (`kona_ddrn.o`, `KONAdestroyddrn` +0x158 and `kona_mopup_complete` +0xe0). "Mopup" is the kernel destroying a rendering node (the per-context state of one GL or X client, [kernel.md](../../software/kernel/kernel.md#rendering-node-drawable-and-private-record)) by telling the pipe to drop the running context. The kernel sends the privileged token `CONTEXT_MOPUP` (0x1f8, 504) and then waits for the pipe to report back. What it waits for is not a register bit and not a poll: it sleeps on the semaphore at pipe state +5320 until `kona_mopup_complete` wakes it.

When the mopup is sent (`KONAdestroyddrn` +0x168-0x2c8):

- Only if the node being destroyed is the pipe's current node (pipe state +8 equals the node) and the pipe is alive (the word at +2172 is zero). Any other destroy skips the pipe entirely and just frees host memory.
- Only if the connection's board has a managing connection (connection +8, then board +8, is non-zero), which is the X server's connection once Xsgi has taken the board.

Sequence (+0x2e8-0x40c):

1. `kona_timeout(P, 120 ticks)` arms the timer. Its handle goes to +5336 and its callback is `kona_mopup_complete(P, 1)`.
2. Flush the write-gather buffer, set a temporary bit (value 2) in the connection's flags at +4 (cleared again with an AND of -3 at +0x478; what the bit is for is **unknown**, below), attach to flow control if not attached.
3. Three kicks of the command-port register `HH_GINTR_INFO` through its flow-controlled alias at window offset 0xc00108, as described in [command-cut-short.md](command-cut-short.md): 0x30000, then the token word 504; 0x10000, then the word 259 (0x103); 0, which ends the packet. The 259 is the event code the kernel asks the pipe to report.
4. `psema(P+5320)`: sleep.

The wake-up is the completion event. **Established** (`kona_intr.o`): the geometry-engine interrupt handler (`kona_ge_intr`, +0x210) reads the event record the pipe leaves in the host page at P+2584, replaces word 0 with the code ORed with 0xbad00000, and for the code 259 (0x103) calls `kona_mopup_complete(P, 0)` (call at +0x360). That routine does `vsema(P+5320)` first and then, with timed-out clear, cancels the timer at +5336 (`kona_untimeout`) and clears the handle. So the success path needs four things from the pipe, in order: the ARM runs the 0x1f8 token, it posts the code 0x103 to the event page, the event page write reaches host memory, and the geometry-engine interrupt (`HH_INTR_STATUS` bit 5) is raised. The page is the one the kernel registered with `PIPE_SETUP` (0x1f1: P+2592, P+2596 and length 0x4000, sent by `KONAstart`; [hip.md](../../devices/hip/README.md#host-interface-interrupts-kona_intr_handler)).

**Pipe side, established** (`arm1.u` `arm_context_mopup` 0x0c02226c; [arm1_functions.md](../../software/ucode/arm1_functions.md)). The handler requires the privileged stream, resets the host-interface registers and the ARM's context bookkeeping to idle, loads two engine handler addresses (`mgebi_NullCommand`, `mgeb_ContextDeactReconfigureFifo`), writes the numbers 1 to 9 to all engines, and finally reports its last payload word (here 0x103) with `start_kcomm` (0x0c022800) and `finish_kcomm` (0x0c022980). Those two program the second output-DMA channel of the host interface (raster-bus registers 0x460-0x464, the destination words `gecomm_pnum`, `gecomm_poff`, `gecomm_len` stored by `arm_pipe_setup`) and push the code through register 0x476. **Unknown:** what in the host-interface chip raises the GE interrupt after that transfer. No shipped software reads it; the kernel only knows the interrupt arrives. What would settle it: a published register description of the host-interface chip.

**Timeout value and units. Established** (`kona_ddrn.o` `.sdata` word `kona_mopup_timeout_value` = 0x78 = 120; `kona_timeout.o`). A timeout is counted in ticks. The software tick is 500000 us (the constant 0x7a120 passed to `kona_sched_tick` from `kona_timeout` at +0x55c and from `kona_itimeout_func` at +0x3b4), run through the kernel's `itimeout`; `kona_timein` (+0xc8) takes one tick off the first record on the list per call and fires records that reach zero. 120 ticks is therefore 60 seconds of kernel time. The "pipe hung" shortcut that would fire every record early is off: `kona_full_timeouts` is 1 in the IP35 object, so the watchdog never declares the pipe hung and a mopup always waits the full 60 seconds ([hip.md](../../devices/hip/README.md#what-the-retrace-interrupt-writes-0x800228-and-0x8003a8)).

**On the timeout. Established** (`kona_mopup_complete` +0x100-0x12c). The routine is called with its second argument set. It has already woken the sleeper; it then prints `cmn_err_tag` 2121 (0x849) at level 4 with the format "%s%d: mopup timeout.\n", the string "IR" and the board number from P+2184 (so "IR0: mopup timeout."), calls `kona_die(P, 17)`, and clears the timer handle. The sleeper then goes on to free the node as if the mopup had worked.

## 2. death_reason 17 and "Pipe 0 in bad state (0x11)"

**Established** (`kona_crash.o`, `kona_die` +0x0; `kona_ioctl.o`, `KONAprivate` ioctl 10016 at +0x268; `gfxinit` `kona_diagnose` 0x1000b1f8).

- 17 is the argument `kona_mopup_complete` passes to `kona_die` (at +0x128). It is the only caller that passes 17. [kona_kern.h](../../software/kernel/include/kona_kern.h) lists the other reasons.
- `kona_die` acts only once per pipe. Under the lock at P+2168 it returns at once if the word at P+2172 is already non-zero. Otherwise it stores the reason there, copies register 0x800220 (`HH_INTR_INFO`) to +2176 and `HH_TBUS_STATUS` 0x8003a8 to +2180, writes 0x800220 back from the driver's shadow (+2364) with bit 15 cleared, writes 8 to 0x8003a8, writes 0xbadc0ffe to 0x800298, prints `cmn_err_tag` 2114 "%s%d:  Fatal error.  bdata = 0x%0lx death_reason = %ld\n" at level 4 (that is the "death_reason = 17" line; `bdata` is the pipe-state pointer), reads `HH_GFIFO_LEVEL` (0x800208) and prints "Graphics FIFO depth is %d words." at level 6, clears three driver words and runs `gthread_scan` with action 9 over the graphics threads. **Inferred** from the register names in [HIP.h](../../devices/hip/HIP.h): the global interrupt enable is cleared and the raster-bus stall bit set, so the pipe stops interrupting and stops drawing; 0xbadc0ffe is a marker. There is no restart in the kernel: a dead pipe stays dead until `KONAinitialize` runs again.
- The word at P+2172 is the death state: 1 after the pipe-state allocation ("never initialised"), 0 once `KONAinitialize` has run (`kona_setup.o` +0x120 stores 0), and the reason once `kona_die` has fired. Ioctl 10016 copies out three words, +2172, +2176, +2180.
- `gfxinit` takes the first word. `kona_diagnose` (0x1000b1f8-0x1000b414) returns quietly for 0 or 1; any other value makes it print "Pipe %s in bad state (0x%x) ... starting postmortem" (format at 0x10021940) with the pipe's name and the word, so 0x11 is the value 17 in hex and is not a separate code. It then forks `/usr/gfx/KONA/bin/postmortem` and waits for it for up to 60 s.

**Where `kona_diagnose` runs. Established, and a correction.** The family table in `gfxinit` `.data` has one 32-byte record per pipe family; the KONA, KONAT, KONAS and KONAL records at 0x10023de8-0x10023e60 carry four function pointers: +4 `kona_diagnose` (0x1000b1f8), +8 `kona_init` (0x1000b0e0), +12 `kona_getconfig` (0x1000ae90), +16 `kona_info` (0x1000acbc). The per-board routine at 0x100063d0 calls them in this order: ioctl 102, 113, 103, 110; **hook +4 (`kona_diagnose`) at 0x100065d4-0x100065f8, unless the `GFXINIT_DIAG` environment variable starts with "FALSE"**; ioctl 106 (`KONAinitialize`); hook +8 (`kona_init`, microcode load) at 0x10006618-0x1000663c; ioctl 107 (`KONAstart`); hook +12 (`kona_getconfig`) at 0x10006664-0x10006670; ioctl 104. [non-irix-driver.md](non-irix-driver.md#1-loading-the-arm-firmware) had called `kona_diagnose` the post-start hook (corrected in the same commit); the table shows it is the first one, so it reports a death that happened before this run, not one this run's own steps caused. `KONAinitialize` (ioctl 106) then clears the death word, so the kernel treats the pipe as alive again for the rest of the run.

**Inferred:** the 0x11 therefore comes from an earlier mopup that timed out in the same boot (an X server or GL client that exited while its context was the current one), and "bad state" is how the next gfxinit sees it. A second gfxinit that follows a first one that left a client behind is enough. The published postings of the same shape (death reasons 2 and 6, [published-sources.md](../../references/documents/published-sources.md)) show the bad-state word equal to the reason, which agrees with this reading.

## 3. "Kona return area did not go valid!"

**Established** (`gfxinit` `kona_getconfig`, 0x1000ae90-0x1000b0dc; the message is at 0x10021880).

What gfxinit sends, in order, after ioctl 107 has started the pipe:

1. Ioctl 10100 with flags 9 (operation 1, map, kind 2; `kona_diag_map`, [kernel.md](../../software/kernel/kernel.md#diagnostic-map-kona_diag_map)) for a 16384-byte page-aligned buffer from `memalign`. The kernel locks it and returns its pipe address as two words (frame number x 4 | 0x10000000, offset | 0x9000).
2. The command words, each written through the helper at 0x1000a108 to the user command FIFO page, in this order: **498 (0x1f2, `RDATA_SETUP`)**, the first returned address word, the second returned address word, the length 16384; then the first word of the buffer is cleared to 0; then **489 (0x1e9, `GETCONFIG`)** and one payload word, 0. So the configuration request is 0x1e9, and it is preceded by 0x1f2, which tells the pipe where to write the reply. Nothing else is sent between the map and the poll. (The helper keeps its own family switch from `getinvent` at 0x1000a000; the offset it stores to for a Kona pipe was not decoded, **unknown**, but the same helper carries every command word of the tool.)
3. Poll the buffer's first word (word 0). The first 65536 reads follow each other directly; after that every read is preceded by `sginap(1)`, for at most 4097 such calls. The loop ends as soon as the word is non-zero. If it never is, the message is printed and the program carries on: it sends ioctl 10006 with the buffer plus 8 anyway (the kernel copies 1912 bytes from there into the pipe's configuration record), then unmaps with 10100 operation 10, and `kona_getconfig` returns 0.

So the word that is polled is word 0 of the page registered by 0x1f2, and nothing in the host or kernel ever writes it: only the pipe does.

**What makes word 0 go valid. Established on the ARM side** (`arm1.u`, [arm1_functions.md](../../software/ucode/arm1_functions.md#queries-and-read-back)): token 0x1f2 (`arm_rdata_setup`, 0x0c022448) stores the address and length into the state block (+0xc98, +0xc9c, +0xca0). Token 0x1e9 (`arm_getconfig`, 0x0c022474) runs `start_rdata` (0x0c0224d4), which sets the second output-DMA channel from those words: 0x477 = 0, 0x440 = 1, 0x463 = length, 0x464 = 0x400, 0x460 and 0x461 = the address, 0x462 = length, 0x476 = 0. It then writes the count 0x1de to register 0x476 and 478 words (0x1de) of the board-configuration block at 0x04067edc to the same register, one write per word. It ends with `finish_rdata` (0x0c02255c): 0x477 = 0, 0x463 = 4, 0x464 = 0x400, 0x460 and 0x461 = the same base address, 0x462 = 4, **0x476 = 1**, 0x477 = 0, 0x463 = 0, 0x464 = 0x400, 0x440 = 0.

**Inferred:** the last transfer, four bytes at the page base with the value 1, is what makes word 0 non-zero. The reasoning: it is the only write of the sequence that is sized to one word and aimed back at the base address, and the client side of every other query waits for the same word ([libglcore-get-functions.md](../../software/opengl/libglcore-get-functions.md#request-wait-and-reply), where the reply starts at +8). The configuration data then sits at +8, which is where `kona_getconfig` tells the kernel to copy from. **Unknown:** whether the data words really land at +8 and the 1 at +0 (the byte layout depends on how the output-DMA channel packs 32-bit writes to 0x476), and the literal completion value; the firmware writes 1, but no host code compares it with anything but zero. What would settle it: the host-interface chip's description of the channel, or a capture of one completed reply.

## 4. What the three failures share

**Inferred.** All three need the pipe's ARM to run host tokens and to deliver output-DMA data to host memory:

- A mopup completes only if the ARM runs 0x1f8, posts the event and the event interrupt arrives.
- The return area goes valid only if the ARM runs 0x1f2 and 0x1e9 and the output-DMA writes land in the buffer. This path has no interrupt: gfxinit polls memory, so it exercises the data path alone.
- "bad state" is the record of the first failure.

If the emulated ARM never executes the tokens (not started, or stalled), all three show up together. If the return area goes valid but mopup still times out, the fault is the event path (the write to the event page or the GE interrupt), not the ARM. The first fault in time is the one to chase, and it is the earliest "mopup timeout" or other "Fatal error" line in the kernel log, not the gfxinit lines, which can come a whole run later.

## Unknowns

| Question | Routes tried | What would settle it |
|---|---|---|
| What raises `HH_INTR_STATUS` bit 5 after the event-page transfer | the kernel handlers, `start_kcomm`/`finish_kcomm`, `kpm` and `irsaudit` register tables | a published host-interface register description |
| Byte layout of the return page (data at +8, value 1 at +0) | `start_rdata`, `finish_rdata`, the client waits in `libGLcore` | the channel's packing rule, or one captured reply |
| The connection-flag bit 2 the mopup sets for its duration | `KONAdestroyddrn` read in full; no other site in `kona.a` tests it in the paths read here | a full cross-reference of flag +4 bit 1 |
| Offset the command helper at 0x1000a108 stores to for a Kona pipe | the helper's four branches; the family code from `getinvent` was not mapped to a branch | map the inventory state of a Kona board to the branch |
