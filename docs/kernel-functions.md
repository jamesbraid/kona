# Kernel driver: one entry per function

Each entry reads one function of the 6.5.30m `kona.a` members (the IP27 and IP35 copies of each member are byte-identical in the functions below) from its disassembly in [kona_kernel/disasm/](../kona_kernel/disasm/). `P` is the pipe state record that every function takes as its first argument; the field offsets used here are the ones of [kernel.md](kernel.md) and [kona_kern.h](../kona_kernel/include/kona_kern.h). Register names and offsets are those of [HIP.h](../HIP.h); the register window base is the pointer at state +2376. Longer treatment of the same code, and the structures it works on, is in [kernel.md](kernel.md#function-reference) and [hip.md](hip.md).

Every entry carries a label (**Established** from the disassembly cited, or **Inferred** where the entry says what the code implies), the function's role and its hardware effect, and where it was read (member, offset, callees).

## Flow control: `kona_flow.o`

The graphics FIFO fill level is read from the host-interface level register at window offset 0x800208 and compared against two thresholds the driver keeps in the state (+2332 and +2348, both set to 768 by `kona_flow_init`). A writer that finds the FIFO fuller than the threshold sleeps until the low-water interrupt (bit 1 of the interrupt mask) fires.

- `kona_flow_init` (`kona_flow.o` +0x0, 80 bytes): **Established.** Sets the flow-control defaults of a pipe at attach time. It zeroes the in-flight spin limit (+2328), sets both thresholds to 768, and writes 1792 to the high-water register
  `HH_GFIFO_HI` (0x800210). It then clears the timeout handle (+2336) and the waiting flag (+2344). Calls `gfx_pio_write_32` once.
- `kona_flow_cleanup` (`kona_flow.o` +0x50, 52 bytes): **Established.** Cancels the high-water timeout at detach. If the handle at +2336 is set it calls
  `kona_untimeout` on it and clears the handle. No register is touched.
- `kona_hiwater_timeout` (`kona_flow.o` +0x84, 192 bytes): **Established.** Timeout handler that runs when a writer has waited too long for the FIFO to drain. It clears the handle, then reads
  `HH_GFIFO_LEVEL` (0x800208). If the level is still above the threshold at +2332 it logs the stuck level with `cmn_err_tag` (tag 2102), drops the in-flight count (+80) when the sleeper flag is clear, and kills the pipe with `kona_die` reason 6. If the level has fallen it logs a notice and runs
  `kona_lowater_intr` instead.
- `kona_delay_monitor_gfifo` (`kona_flow.o` +0x144, 164 bytes): **Established.** Busy-waits for the FIFO to drain, in 4 us steps, for at most the number of microseconds in its second argument (rounded down to a multiple of four). Each step reads
  `HH_GFIFO_LEVEL` (0x800208). When the level is at or below the second threshold (+2348) it writes 3 to `HH_INTR_STATUS` (0x800238), which clears the two FIFO interrupt causes, clears the waiting flag and returns the time left; otherwise it calls `us_delay` for 4 us. Returns the time remaining (0 when the FIFO never drained).
- `kona_hiwater_intr` (`kona_flow.o` +0x1e8, 740 bytes): **Established.** Handles the FIFO-high condition: the kernel has to stop a thread that is writing into a full FIFO until the pipe has drained it. It counts the event (+5256), does nothing if the pipe is dead or a wait is already in progress, and spins up to the limit at +2328 microseconds (0 as shipped) watching
  `HH_GFIFO_LEVEL`. If the FIFO is still full it takes the state lock (+2352), clears the old causes by writing 3 to `HH_INTR_STATUS`, and sets bit 1 in the `HH_INTR_ENABLE` shadow (+2368), writing it to 0x800230 so the pipe interrupts when the level falls. It reads the level once more to close the race; if it is still high it arms
  `kona_hiwater_timeout` with `kona_timeout` (kills the pipe with reason 9 if no timeout record is available) and yields the processor with `force_resched`. If the level fell in the meantime it removes bit 1 from the mask again, acknowledges, and runs
  `kona_flow_await_returned_credits`.
- `kona_lowater_intr` (`kona_flow.o` +0x4cc, 216 bytes): **Established.** Handles the FIFO-low interrupt that wakes the writer
  `kona_hiwater_intr` parked. It counts the event (+5264); if no writer is parked it does nothing more. Otherwise it cancels the timeout, clears bit 1 of the interrupt-enable shadow and writes it to `HH_INTR_ENABLE` (0x800230), writes 3 to `HH_INTR_STATUS` (0x800238), clears the waiting flag and the sleeper flags, and returns the in-flight count it had taken.
- `kona_diag_flow` (`kona_flow.o` +0x5a4, 336 bytes):
  **Established.** Diagnostic switch behind ioctl 10101 that turns the credit-based write path off (argument 0) or on (argument 1).
  Off clears the low three bits of the interrupt-enable shadow and writes it to `HH_INTR_ENABLE` (0x800230).
  On is refused with EACCES (13) for a dead pipe; otherwise it sets bit 2 of the shadow and writes it to the enable register (the FIFO-overflow cause), flushes the write-gather buffer with `gfx_flow_flush_my_wg`, and, if the caller is not already attached, attaches it with `gfx_flow_attach_me`, writes the credit-return transaction number (state +2248 shifted left once, masked with 0x3e) to the widget register at offset 0x7c, waits with `kona_flow_await_returned_credits` and finishes with `gfx_flow_attach_me_finish`.
  The on path then ends, attached or not, by writing 0 (the word at +2360) to the kick register `HH_GINTR_INFO` (0xc00108); the off path writes no kick (0x5e8-0x610).
  Any other argument returns EINVAL (22).
- `kona_diag_credits` (`kona_flow.o` +0x6f4, 96 bytes): **Established.** Fills a four-word answer with the flow-control credit figures for the caller: the total from
  `gfx_flow_credit_total_get`, the bias from `gfx_flow_credit_bias_get`, the live count from `gfx_flow_credit_count_get`, and the constant 100000 as the fourth word. No register of the pipe is touched.
- `kona_flow_await_returned_credits` (`kona_flow.o` +0x754, 484 bytes): **Established.** After an attach, waits until the pipe has handed the hub its credits back. It polls the credit count with
  `gfx_flow_credit_count_get` for up to 1000 steps of 1 us (`us_delay`) until the count reaches the bias. When the wait ends it checks the count against the total; a count above the total kills the pipe with reason 25. If the pipe is dead and bit 2 of the word at +4 of the attached record (the cookie at +72) is set, it resets the adaptor: `kona_reset_adaptor`, then writes 1 and
  0 to `HH_RESET` (0x800300) with a read back after each, and re-attaches through `gfx_flow_detach_me`, `gfx_flow_reset`,
  `gfx_flow_attach_me`, the 0x7c write and `gfx_flow_attach_me_finish`. If the time ran out without credits and the FIFO is still full it marks the current process as the waiter (+2320) and yields.
- `KONAreleasegfxsema` (`kona_flow.o` +0x938, 184 bytes): **Established.** The board's operation for a process giving up the pipe. At interrupt level it checks whether the caller is attached to the flow object
  (`gfx_flow_am_i_attached`); if so it flushes the gather buffer, waits for returned credits when the count is still below the bias, writes 1 to the widget register at offset 0x7c and reads it back, then detaches (`gfx_flow_detach_me`). Returns 0.
- `gfx_pio_write_32` (`kona_flow.o` +0x9f0, 16 bytes): **Established.** The kernel's only register store: a 32-bit store to the address argument followed by
  `sync`, so the store leaves the processor before the next instruction.
- `gfx_pio_read_32` (`kona_flow.o` +0xa10, 8 bytes): **Established.** The kernel's only register load: returns the 32-bit word at the address argument (a plain load, no barrier).

## Start-up and suspend: `kona_setup.o`, `kona_sched.o`

- `KONAinitialize` (`kona_setup.o` +0x0, 304 bytes): **Established.** The board's first initialisation step after attach: it leaves the pipe quiet with only the parity interrupt enabled. It registers the textport board
  (`htp_register_board`), sets the interrupt-enable shadow (+2368) to 0x100, runs `kona_reset_adaptor`, then pulses `HH_RESET` (0x800300) with 1 then 0, reading it back after each write. It writes the shadow to
  `HH_INTR_ENABLE` (0x800230) and 0x8000 (the global interrupt enable, saved at +2364) to `HH_INTR_INFO` (0x800220), and sizes and tests the map RAM with `kona_mapram_init`. At raised priority it detaches the caller from flow control if attached, resets the flow object
  (`gfx_flow_reset`), runs `kona_flow_init` and clears the dead flag (+2172). Returns 0.
- `KONAstart` (`kona_setup.o` +0x130, 780 bytes): **Established.** Brings the pipe from the quiet state to running, once the ARM firmware is up. It reads
  `HH_INTR_STATUS` (0x800238). If the parity cause (bit 8) is already set it logs the pipe number, kills the pipe with `kona_die` reason 22, clears bit 5 of the status word, writes it back, writes the acknowledge value 0xbadc0ffe to `HH_INTR_ACK` (0x800228) and returns the status with that bit cleared. Otherwise it writes 0xf7c (3964) to
  `HH_INTR_ENABLE` (0x800230) as the running mask and attaches the caller to the write-gather group (widget register 0x7c, then credit wait) when it is not attached. It then sends the pipe-setup packet to the command port: it kicks `HH_GINTR_INFO` (0xc00108) with 0x30000, sends the token 497 (`KONA_HP_PIPE_SETUP`), kicks 0x10000, sends three payload words (state +2592, +2596,
  16384: the pipe-space address pair of the driver's scratch page and its size) and kicks 0. Returns 0.
- `KONAsuspend` (`kona_sched.o` +0x0, 400 bytes): **Established.** The board's operation for taking a connection off the pipe when the scheduler switches it out. When the connection is the current one (state +72) and mapped (flag bits 0-1 of its word +4), it flushes the gather buffer and, if the caller is attached to flow control, waits for the returned credits when the credit count is below the bias, writes 1 to the widget register at offset 0x7c, reads it back and detaches with
  `gfx_flow_detach_me`. Without the force argument it also clears the resume-wait flag (+120) when no sleeper is parked (+104). Returns 0.
- `KONAresume` (`kona_sched.o` +0x190, 312 bytes): **Established.** The board's operation for putting a connection back on the pipe. Without the force argument it first clears the resume-wait flag (+120) and yields with
  `force_resched` if it was set. It then proceeds only if the pipe is alive (the death reason at +2172 is 0 or 1, or the connection is privileged), the connection is the current one and flag bits 0-1 of its word +4 are set. If the caller is not attached to flow control it attaches:
  `gfx_flow_attach_me`, widget register 0x7c = the credit transaction number, then the credit wait and `gfx_flow_attach_me_finish`. Returns 0.

## Attach, detach and mapping: `kona_attach.o`, `kona_map.o`

- `new_pipe_to_region` (`kona_attach.o` +0x0, 92 bytes): **Established.** Moves a mapping from one connection to another when
  `gfxdd_recycle` finds a reusable region. It calls the old connection's unmap operation (table entry +104), clears the old connection's bound node (+72), destroys its region handle (`ddv_destroy_handle`) and stores the handle in the new connection at +48. No register is touched.
- `KONAattach` (`kona_attach.o` +0x5c, 364 bytes): **Established.** The board's attach operation: it defines the user address-space layout of a connection. It refuses a pipe whose state has no flow object (+2272 zero; logs and returns ENODEV, 19) and an address not aligned to 16 KB (EINVAL, 22). It copies a four-entry range table out of read-only data, tries
  `gfxdd_recycle`, and otherwise adds the user address to each range and calls `gfxdd_mmap` with 3 ranges (4 for a privileged connection, flag bit 2), failing with ENOMEM (12). The pages are then filled on first touch by `KONAmapgfx`. No register is touched.
- `KONAdetach` (`kona_attach.o` +0x1c8, 84 bytes): **Established.** Undoes the attach: if the kernel textport was active it clears its mute flag and prints a console reset sequence, clears the connection's region handle (+48) with
  `gfxdd_munmap`, and runs `kona_diag_map_cleanup` on the pipe. Returns 0.
- `KONAmapgfx` (`kona_map.o` +0x0, 860 bytes): **Established.** The first-touch fault operation: maps the pipe's pages into the user process, and attaches the process to the flow-controlled FIFO. Four
  `v_mapkvsegment` calls place the FIFO page (window +0xc10000, or the command-port page when the pipe has no flow window) at user offset 0, the host-interface page (window +0x810000, or +0x800000 when privileged) at 0x4000, for a privileged connection the 2 MB register window from window +0 at 0xc000, and the current node's return-data buffer at 0x8000. Before mapping it walks the thread's other connections and unmaps each that is mapped (`unmap` through their operation table), waiting in 10 us steps up to 1000 times if another mapping is in progress. After mapping it sets flag bit 0 of the connection (+4), attaches to flow control exactly as `KONAresume` does (widget register 0x7c, credit wait), and kicks
  `HH_GINTR_INFO` (0xc00108) with 0. Returns -1 on success and 0 when a mapping failed.
- `KONAunmapgfx` (`kona_map.o` +0x35c, 260 bytes): **Established.** Removes a connection's mapping. If it is the current mapped connection and attached to flow control, it flushes the gather buffer, waits for credits when the count is below the bias, writes 1 to widget register 0x7c and reads it back, and detaches. It then clears its bound-node pointers (+104, +112) and flag bit 0, invalidates the physical mappings with
  `ddv_invalphys_fal` and the TLB entries with `KONAinvaltlb` when the first call returns 0.
- `KONAinvaltlb` (`kona_map.o` +0x460, 84 bytes): **Established.** Flushes the TLB entries of the connection's address space with
  `ddv_invaltlb` and records the current CPU in the 128-bit mask at +104, so a later `KONAunmapgfx` knows which CPUs may hold entries.

## Sharing, genlock, information, scheduling hooks and stubs

- `kona_share` (`kona_share.o` +0x0, 248 bytes): **Established.** Joins a rendering node to a share group (the ioctl that lets two nodes share memory pools). It checks the caller with
  `RRM_CheckValidFault` (EFAULT 14), takes an in-flight count on the board record (+80), looks the requested group up in the pipe's list (+4968, linked through +104) and, if none matches, allocates a zeroed 112-byte group record (`kern_malloc`) and pushes it on the list. It increments the group's use count, stores it in the node's private record (+240) and in the caller's argument, drops the in-flight count and returns 0. No register is touched.
- `kona_unshare` (`kona_share.o` +0xf8, 172 bytes): **Established.** Leaves a share group: finds the node's group on the pipe's list, decrements the use count and clears the node's pointer. When the count reaches zero it destroys the group's memory blocks
  (`kona_mem_destroy`) and DMA pool (`kona_dmapool_destroy`), unlinks the record and frees it with `kern_free`.
- `kona_voc_intr` (`kona_genlock.o` +0x0, 32 bytes): **Established.** Handler for the video-output-clock (genlock) interrupt: it calls the resource manager's genlock notification
  `rrmGenlockNotify` with its first argument's pointer and -1, and has no register effect.
- `KONAinfo` (`kona_info.o` +0x0, 84 bytes): **Established.** The board-information ioctl: copies at most 1952 bytes from state +204 to the caller
  (`copyout`), returns EFAULT (14) when the copy fails, and stores the byte count in the length word.
- `KONAfrsinstall` (`kona_frs.o` +0x0, 80 bytes): **Established.** Marks the pipe as managed by the frame-rate scheduler: under the state lock (+2576) it sets flag +144 to 1 and stores the scheduler handle at +152. No register is touched.
- `KONAfrsuninstall` (`kona_frs.o` +0x50, 68 bytes): **Established.** Undoes
  `KONAfrsinstall`: under the state lock it clears +144 and the handle at +152.
- `kona_debug_init` (`kona_debug.o` +0x0, 44 bytes): **Established.** A once-only debug initialiser: if its done flag is already set it prints a warning with
  `qprintf`; then it sets the flag and returns 1.
- `KONAdownload` (`kona_stubs.o` +0x0, 8 bytes): **Established.** The board's download operation. It returns 0 and does nothing, so the generic download request has no effect on this board.

## Interrupt handlers: `kona_intr.o`, `kona_intr_hip2.o`

- `kona_xg_intr_handler` (`kona_intr_hip2.o` +0x0, 112 bytes): **Established.** Handler for the Crosstalk-widget error interrupt: any such interrupt is fatal to the pipe. It counts the interrupt (per-CPU counter and +5268), logs a message, kills the pipe with
  `kona_die` reason 12, and then runs `kona_report_errs`, which reads the widget error register and prints one line per set bit. It writes no register itself.
- `kona_intr_handler` (`kona_intr_hip2.o` +0x70, 588 bytes): **Established.** Main handler for the host-interface interrupt line: it reads the pending causes and runs the matching service routine. It returns at once while the enable shadow (+2368) is still the reset value 0x100. Otherwise, under the state lock (+2352), it reads
  `HH_INTR_STATUS` (0x800238), masks the result with the shadow and with the complement of 0x20 (GE events have their own handler), and serves the set bits in order. Bit 1 runs `kona_lowater_intr`, bit 3 runs `kona_video_intr`, bit 4 runs
  `kona_arm_intr`, and bit 9 runs `kona_voc_intr`. The other bits are errors: bit 0 (FIFO-high) and bit 6 (output DMA) are logged only, while bit 2 (FIFO overflow, reason 10), bit 8 (parity, reason 22), bit 10 (PIO overflow, reason 13) and bit 11 (input-DMA overflow, reason 14) kill the pipe with `kona_die`. It writes the served bits back to
  `HH_INTR_STATUS` (write-one-to-clear) and 0xbadc0ffe to `HH_INTR_ACK` (0x800228), then drops the lock.
- `kona_ge_intr_handler` (`kona_intr_hip2.o` +0x2bc, 88 bytes): **Established.** Handler for the geometry-engine interrupt: it counts the interrupt (per-CPU counter), runs
  `kona_ge_intr` to decode the event record, then writes 0x20 to `HH_INTR_STATUS` (0x800238) to clear the GE cause.
- `kona_arm_intr` (`kona_intr.o` +0x0, 528 bytes): **Established.** Decodes the event the ARM firmware posts in its mailbox. It sets the activity flag (+5464) the watchdog looks at and reads the mailbox
  `HH_ARM_MBOX` (0x800240). Value 0 is a text message: up to 5000 times it writes 0x10 to `HH_INTR_STATUS` to clear the ARM cause (which prompts the firmware for the next character), polls that bit for up to 5000 x 20 us, reads the mailbox again and keeps the low byte, stopping at a zero byte or 511 characters, and then prints the string. Value 0x100 (input DMA done) signals the semaphore at +5176 and cancels the timeout at +5192. Value 0x102 runs `kona_mem_swapin_complete`. Value 0x103 (context activated) signals the semaphore at +5296 and cancels the timeout at +5312, under the state lock. Any other value is logged with tag 2100. The mailbox is never written.
- `kona_ge_intr` (`kona_intr.o` +0x210, 912 bytes): **Established.** Decodes the event record that the geometry-engine microcode leaves in the host buffer at +2584 (event code in word 0, up to three arguments after it). It replaces word 0 with the code ORed with 0xbad00000 once read. If word 1 is 256 and the code is a valid context slot it swaps words 0 and
  1 and logs the repair (**Inferred:** the microcode wrote them in the wrong order). Code 0 formats a print request with `kona_geprint` and logs it. Code 0x100 stores the select-feedback result in the context's record and wakes its waiter. Codes 0x101 and 0x102 and
  0x103 signal the deactivate semaphore (+5272) or run `kona_mem_swapout_complete` or `kona_mopup_complete`. Code 0x104 runs `kona_mem_suspend_complete` and 0x105 runs
  `kona_checkpipe_complete`. Any other code is logged (tag 2101) with a dump of the six output-DMA position registers at 0x800260 through 0x8002b8.

## Failure handling: `kona_crash.o`

- `kona_die` (`kona_crash.o` +0x0, 372 bytes): **Established.** Marks a pipe dead and quiesces it; every fatal path in the driver ends here, with a reason code in the second argument. Under the state lock (+2168) it returns at once if the pipe is already dead (+2172 nonzero). Otherwise it stores the reason at +2172, saves
  `HH_INTR_INFO` (0x800220) at +2176 and `HH_TBUS_STATUS` (0x8003a8) at +2180, then writes the saved enable word with bit 15 cleared back to `HH_INTR_INFO` (global interrupt off), 8 to `HH_TBUS_STATUS`, and 0xbadc0ffe to `HH_ODMA_FLUSH` (0x800298). It logs the pipe number and reason (tag 2114) and the FIFO level from
  `HH_GFIFO_LEVEL` (0x800208), clears the sleeper flags (+104, +108, +120), and calls `gthread_scan` with reason 9 so every thread using the pipe is signalled.
- `kona_checkpipe_complete` (`kona_crash.o` +0x174, 100 bytes): **Established.** Completion of the check-pipe request, run from the GE event 0x105 or from its timeout. On a timeout it logs tag 2115 and kills the pipe with
  `kona_die` reason 18; otherwise it cancels the timeout (+5360) and clears the handle. Either way it signals the semaphore at +5344 on which the requester sleeps.
- `kona_checkpipe` (`kona_crash.o` +0x1d8, 888 bytes):
  **Established.** The ioctl that asks the pipe whether it is still alive, by looping a token through the geometry engine.
  After `RRM_CheckValidFault` it returns 0 if a check is already running (+5360).
  Otherwise it arms a timeout, then writes to the command port (+2304): kick `HH_GINTR_INFO` (0xc00108), the token 477 (`KONA_HP_GE_INTR`), kick, the event number 261 (0x105) as its payload, kick 0.
  It then sleeps on the semaphore at +5344 until the GE interrupt or the timeout wakes it.
  The kick value is 0x10000 when the caller's node belongs to the board's manager and 0x30000 otherwise.
  Returns 0, or EFAULT (14) for a bad caller.

## Board record and flow-control set-up: `kona_edtinit.o`

- `kona_alloc_bdata` (`kona_edtinit.o` +0x0, 564 bytes): **Established.** Allocates and initialises the pipe state for the next board number. It grows the global board table to the board count if needed, then
  `kern_malloc`s 5544 bytes, zeroes it, initialises the state spinlocks (+2168, +2352, +2576, +3520) and six semaphores (+5152 to +5344), sets the dead flag (+2172) to 1 until `KONAinitialize`, registers the board (`kona_register_board`), copies in the board number (+2184), and sets sizes (+88 = 96, +96 and +184 point into the state). It allocates one 16 KB host page for GE events (+2584) and stores its pipe-space address pair (frame number with 0x10000000 at +2592, in-page offset with 0x9000 at +2596). It copies a six-byte name to +204 and sets the information length (+240) to 1952, runs
  `kona_timeout_init`, enters the pipe in the table and returns it (0 when the table has no room for a second board).
- `kona_free_bdata` (`kona_edtinit.o` +0x234, 28 bytes): **Established.** Frees the pipe state with
  `kern_free`.
- `kona_init_flow_control` (`kona_edtinit.o` +0x250, 116 bytes): **Established.** Creates the pipe's flow-control object. It calls
  `gfx_flow_alloc` with the widget vertex (+200), the FIFO page address (state +2216 plus 0xc10000), a credit size parameter built from a global (shifted left by 3), 100000, the high-water interrupt handler (`kona_hiwater_intr`) and the state. It stores the object at +2272 and, when it exists, copies its 32-byte mapping descriptor into +2280 with `gfx_flow_wg_info_get`. That descriptor puts the kernel's mapping of the FIFO page (the command port) at +2304.
- `kona_register_board` (`kona_edtinit.o` +0x2c4, 40 bytes): **Established.** Registers the pipe with the generic graphics layer: calls
  `GfxRegisterBoard` with KONA's operation table, the state and the information record at +204.
- `kona_inventory_board` (`kona_edtinit.o` +0x2ec, 48 bytes): **Established.** Adds the pipe to the system hardware inventory: calls
  `add_to_inventory` with class 7 and three words from the state (+2188, +2192, +2196) and the board number (+2184).
- `kona_init_board_mapping` (`kona_edtinit.o` +0x31c, 100 bytes): **Established.** Sets up the pipe-space allocator for the board and tests the map RAM: it builds a descriptor (the size from +2312 and four operation pointers from the module's data), calls
  `init_gfx_io_space` for the board number, then `kona_mapram_init`.

## Map RAM: `kona_mapram_hip2.o`

The map RAM is an array of 32-bit entries at window offset 0x100000 (stride 4), one per 16 KB page of the pipe's DMA address space.

- `kona_mapram_pagesizeshiftof` (`kona_mapram_hip2.o` +0x0, 8 bytes): **Established.** Returns the constant 14, the page-size shift: the map RAM pages are 16 KB.
- `kona_mapram_init` (`kona_mapram_hip2.o` +0x8, 192 bytes): **Established.** Tests that the map RAM is present and fills it with a known pattern. For each entry index k below the entry count (state +2312) it writes 0x10000000 | k to window offset 0x100000 + 4k and reads it back; the first mismatch logs tag 2111 and kills the pipe with
  `kona_die` reason 21.
- `kona_mapram_map` (`kona_mapram_hip2.o` +0xc8, 328 bytes): **Established.** Points consecutive map RAM entries at the physical pages of a host buffer so the pipe can DMA to it. It builds the page list of the buffer with
  `uvaddr_to_alenlist` (user address) or `kvaddr_to_alenlist` (kernel address), takes it in pieces of 16 KB with `alenlist_get`, and for each piece writes 0x20000000 | ((physical address >> 14) << 2) to the entry at window offset 0x100000 + 4 x (first index + n). A failed `alenlist_get` logs and kills the pipe with reason 21. Returns the first index in the high word and the page count in the low word.
- `kona_mapram_unmap` (`kona_mapram_hip2.o` +0x210, 8 bytes): **Established.** Does nothing: entries are never cleared, only overwritten by the next map.
- `kona_mapram_select_id_mask` (`kona_mapram_hip2.o` +0x218, 8 bytes): **Established.** Returns 0 and has no other effect, so no map-RAM identifier mask is applied on this host interface.

## Driver timeouts: `kona_timeout.o`

- `kona_timeout_init` (`kona_timeout.o` +0x0, 88 bytes): **Established.** Initialises the two timeout spinlocks (+5368 and +5372) and fills the argument block for the kernel timer (+5400 to +5424) with the handler, the delay flag 4 and a name string.
- `kona_timeout_alloc` (`kona_timeout.o` +0x58, 84 bytes): **Established.** Gets one 64-byte timeout record with
  `kmem_alloc`, retrying ten times with a 10 us delay between tries; returns 0 when all fail.
- `kona_timeout_free` (`kona_timeout.o` +0xac, 28 bytes): **Established.** Returns a timeout record (64 bytes) with
  `kmem_free`.
- `kona_sched_tick` (`kona_timeout.o` +0x2b4, 156 bytes): **Established.** Arms the kernel timer that drives the driver's timeout list: converts the microseconds in its second argument to clock ticks with
  `drv_usectohz`, calls `itimeout` with `kona_itimeout_func`, keeps the handle (+5440) and the due time in microseconds (+5448, from
  `microtime`), and returns nonzero if the timer was armed.
- `kona_itimeout_func` (`kona_timeout.o` +0x350, 160 bytes): **Established.** The kernel timer's callback: skips if the arm count (+5472) is stale, runs
  `kona_callout` (the watchdog and list step) under the tick lock, then re-arms itself for 500000 us with `kona_sched_tick` while the list is not empty; if re-arming fails it kills the pipe with `kona_die` reason 9.
- `kona_untimeout` (`kona_timeout.o` +0x580, 300 bytes): **Established.** Cancels one driver timeout: finds the record on the list (+5376), adds its remaining ticks to its successor, unlinks and frees it, and returns the record (0 if absent). When the list becomes empty it cancels the kernel timer as well
  (`untimeout`), waiting with `untimeout_wait` if the callback is running.
- `kona_timein` (`kona_timeout.o` +0xc8, 236 bytes): **Established.** Advances the driver's delta-sorted timeout list by one tick: under the list lock it decrements the first record's remaining ticks, and while the first record is due (or, when the second argument is nonzero, always) unlinks it, runs its interrupt-level routine, calls its handler with the state and its three saved arguments, restores the interrupt level and frees the record.
- `kona_callout` (`kona_timeout.o` +0x1b4, 256 bytes):
  **Established.** The pipe watchdog that runs from every timer tick.
  It does nothing while a kernel debugger holds the current CPU.
  Otherwise, if the pipe is alive, it reads `HH_TBUS_STATUS` (0x8003a8) and counts the pipe as active when bit 2 is set or the ARM interrupt handler has set the activity flag (+5464).
  A live pipe with no activity logs "pipe hung" (tag 2112) and forces every timeout to fire, unless the `kona_full_timeouts` tunable is set (0x278-0x290), in which case it neither logs nor forces.
  A dead pipe skips the read and the log.
  It writes 4 to `HH_TBUS_STATUS` and clears the activity flag, then calls `kona_timein`.
- `kona_timeout` (`kona_timeout.o` +0x3f0, 400 bytes): **Established.** Schedules a handler to run after a number of ticks: takes a record from
  `kona_timeout_alloc`, fills it (handler, the delay, the interrupt-level routine and three arguments), inserts it into the list (+5376) so remaining ticks stay delta-coded, and, if the list was empty, arms the tick with `kona_sched_tick` for 500000 us; when arming fails it frees the record and returns 0. Returns the record, used as the handle by `kona_untimeout`.

## DMA support: `kona_dma.o`

A DMA vector (`kona_dmavec`) is a 24-byte descriptor: base pointer at +0, total length at +8, line length at +12, stride (the gap between lines) at +16.

- `lock_dmavec` (`kona_dma.o` +0x0, 200 bytes): **Established.** Pins the pages of one DMA vector in memory. A zero line length means one flat run. It computes the span covered (the total for a flat vector, otherwise one line plus (line + stride) for each further line), returns EINVAL (22) for a zero span and
  E2BIG (7) when the span in 16 KB pages would not fit in 32 bits, then calls `userdma` on the base address. Returns the span, or a negative error. No register is touched.
- `unlock_dmavec` (`kona_dma.o` +0xc8, 104 bytes): **Established.** Releases what
  `lock_dmavec` pinned: it recomputes the same span from the vector and calls `undma` on the base address. No register is touched.
- `kona_dmaread` (`kona_dma.o` +0x130, 312 bytes): **Established.** The pipe-to-host DMA ioctl: it starts select feedback with
  `kona_start_selectfeed`, then writes the caller's command groups to the command port (+2304 of the state), each as its token word followed by the count of payload words that follows, so the pipe produces the data, and ends with `kona_finish_selectfeed`. It counts itself in the board's in-flight count (+80) while it runs and returns the finish result.
- `kona_idma_timeout` (`kona_dma.o` +0x440, 140 bytes): **Established.** Timeout handler for an input DMA that the pipe never completed: under the state lock, if the DMA is still recorded (+5192) it logs the pipe-space address and length (tag 2122), kills the pipe with
  `kona_die` reason 4, wakes the waiter on the semaphore at +5176 and clears the record.
- `kona_dmapool` (`kona_dma.o` +0xa44, 488 bytes): **Established.** The ioctl that gives the pipe a host buffer it can fetch from during rendering (a DMA pool), for one rendering node or its share group. Only pool type 0 is accepted (other types return 2). After
  `RRM_CheckValidFault` it picks the pool record (the node's at private record +208, or the share group's at +72 when the share argument is set; an existing pool of the other kind gives 34). It releases the previous buffer (`undma`, `free_gfx_io_space`), requires the new address to be 16 KB aligned (EINVAL, 22) or zero, pins it with
  `userdma`, maps it with `alloc_gfx_io_space` (page shift from `kona_mapram_pagesizeshiftof`), stores address, length, mapping and shift in the record, calls
  `kona_dmapool_update_pipe`, and sends a one-word GED_NOP (370) to the command port. Returns the pool record or an error.
- `kona_dmapool_update` (`kona_dma.o` +0xc2c, 76 bytes): **Established.** Re-sends the DMA pool of a node to the pipe: it picks the shared pool (when the node has a share group with a pool) or the node's own pool record and calls
  `kona_dmapool_update_pipe`.
- `kona_dmapool_destroy` (`kona_dma.o` +0xc78, 124 bytes): **Established.** Drops a pool: if it is mapped, it unpins the buffer
  (`undma`) and frees the pipe-space mapping (`free_gfx_io_space`), then clears the pool's length.
- `kona_selectfeed_timeout` (`kona_dma.o` +0x10b4, 164 bytes): **Established.** Timeout handler for select feedback: under the state lock, if a feed is pending (record +64) it logs the context and length (tag 2123), kills the pipe with reason 5, sets the returned word count to -1 and wakes the sleeper on the context's semaphore (+48).
- `abi32_to_kona_dmaread_args` (`kona_dma.o` +0x17d0, 204 bytes): **Established.** Widens the 32-bit caller's read-DMA argument (148 bytes) for the 64-bit kernel: the buffer pointer is zero-extended into +0, the total length, line length and stride go to +8, +12 and +16, the 32 caller command words to +24 and their count to +152. On the sizing call it only reports 148 bytes, allocating a buffer when the caller's is too small.
- `abi32_to_kona_dmawrite_args` (`kona_dma.o` +0x189c, 188 bytes): **Established.** Same conversion for a write-DMA argument: the table pointer goes to +0, the entry count to +8, the 32 caller command words to +12 and the command count to +140.
- `abi32_to_kona_dmapool_args` (`kona_dma.o` +0x1958, 128 bytes): **Established.** Widens the 16-byte 32-bit pool argument: address to +0 (zero-extended), length to +8, type to +12, share to +16.
- `abi32_to_kona_dmavec` (`kona_dma.o` +0x19d8, 128 bytes): **Established.** Widens one 32-bit vector descriptor to the 24-byte kernel form: pointer, total length, line length and stride.
- `abi32_to_kona_start_selectfeed_args` (`kona_dma.o` +0x1a58, 136 bytes): **Established.** Widens the 20-byte select-feedback start argument: the vector goes to +0, +8, +12, +16 and the snapshot word to +24.
- `abi32_to_kona_diag_map` (`kona_dma.o` +0x1ae0, 120 bytes): **Established.** Widens the 20-byte diagnostic-map argument: address to +0, length to +8 and flags to +16.
- `kona_diag_map_to_abi32` (`kona_dma.o` +0x1b58, 136 bytes): **Established.** Narrows the diagnostic-map result back for a 32-bit caller: the address, length, returned high word, flags and returned low word go out as five 32-bit words.

## Video, swap and retrace: `kona_video.o`

Swaps and retrace waits are not register writes: the driver puts a marker into the pipe's command stream (token 487, `RETRACE_SEQID`) and runs a callback when the video interrupt shows the pipe has reached it. The display-generator register pair used for the swap strobe and the cursor is `HH_VC_ADDRESS` (0x8003c0) and `HH_VC_DATA` (0x8003d0), an address and data pair.

- `KONApositioncursor` (`kona_video.o` +0x74, 92 bytes): **Established.** Records a new cursor position: under the state lock (+3520) it stores the x halfword at +3564 and the y halfword at +3566 and sets the cursor-changed flag (+3553). It writes no register;
  `kona_video_intr` sends the position to the display generator at the next video interrupt.
- `kona_video_rundown` (`kona_video.o` +0xd0, 168 bytes): **Established.** Removes a rendering node from the retrace queue (head +3544, tail +3536, linked through the private record +136). If the node's retrace record (+120) was waiting it cancels its timeout with
  `kona_untimeout`, unlinks the node and returns 1; otherwise 0.
- `kona_video_cleanup` (`kona_video.o` +0x178, 84 bytes): **Established.** Calls
  `kona_video_rundown` for a node under the video lock (+3520) so a node being destroyed leaves the retrace queue safely.
- `KONAunschedswapbuf` (`kona_video.o` +0xd10, 28 bytes): **Established.** The board's operation to cancel a scheduled swap: it calls
  `kona_video_cleanup` on the connection's pipe state.
- `kona_swap_complete` (`kona_video.o` +0x1cc, 236 bytes): **Established.** Callback run when the pipe has passed a swap marker (second argument is the node, third nonzero for a timeout, which is logged with tag 2103). It looks for the buffer's pane pointer among the swap-table entries of the pipe (table +184, count +176), and for each match writes 128 to
  `HH_VC_ADDRESS` (0x8003c0) and 2 to `HH_VC_DATA` (0x8003d0): the swap strobe of the display generator. It then calls `rrmValidateBuffer` for the node.
- `kona_gsync_complete` (`kona_video.o` +0x2b8, 80 bytes): **Established.** Callback for a genlock-synchronised retrace: a timeout (third argument nonzero) is logged with tag 2104, and it calls
  `rrmValidateRetrace` for the node. No register is touched.
- `kona_retrace_timeout` (`kona_video.o` +0x308, 192 bytes): **Established.** Timeout handler for a queued retrace record: under the video lock, if the node's record is still waiting (+120), it clears the flag, removes the node with
  `kona_video_rundown` and calls the record's callback (+16) with the timeout flag 1.
- `kona_retrace_setup` (`kona_video.o` +0x3c8, 160 bytes): **Established.** Queues a retrace record: under the video lock it takes the next sequence number from the counter at +3528, stores the number (record +0) and the callback (record +16) in the node's record (private record +112) and appends the node to the retrace queue (tail +3536, head +3544). It returns the record.
- `kona_retrace_activate` (`kona_video.o` +0x468, 640 bytes): **Established.** Starts the wait for a queued record: arms a software timeout
  (`kona_timeout`, handle stored in the record at +8) and writes to the command port: kick `HH_GINTR_INFO` (0xc00108) with 0x30000, token 487 (`RETRACE_SEQID`), kick 0x10000, the record's sequence number as the one payload word, kick 0.
- `KONAschedretraceevent` (`kona_video.o` +0xd2c, 64 bytes): **Established.** The board's operation for a bare retrace wait (no buffer swap): it queues the node with
  `kona_retrace_setup` using the generic callback from its data and starts it with `kona_retrace_activate`. Returns 0.
- `KONAsetdisplaymode` (`kona_video.o` +0xd6c, 664 bytes): **Established.** The display-mode operation: after
  `RRM_CheckValidFault` it stores the caller's mode byte in the per-index table at +4360 and sends token 486 (`DISPMODE`) with three payload words: 0, the index and the byte, between kicks of `HH_GINTR_INFO` (0xc00108). Returns 0, or -14 for a failed caller check.
- `kona_mswap_complete` (`kona_video.o` +0x1004, 308 bytes): **Established.** Completion for managed (multi-pipe) swaps: it walks the 96-entry table of pending swaps (clip ids at +3976, sequence numbers at +3592), and for each whose sequence number the pipe has reached (or all of them after a timeout) calls
  `rrmValidateMGRSwapBuf`, decrements the pending count (+3576) and clears the entry. After a timeout it logs tag 2105; when nothing is pending it cancels the timeout (+3584).
- `KONAschedmgrswapbuf` (`kona_video.o` +0x1138, 816 bytes): **Established.** Schedules a swap for the manager of a multi-pipe window: after
  `RRM_CheckValidFault` it restarts the manager timeout, takes the next sequence number (+3528), records the clip id and number in the swap table at the entry for the swap-buffer id (+3976 and +3592), then writes to the command port: kick 0x30000, token 486 (`DISPMODE`), kick 0x10000, the clip id, the swap-buffer id and the display-mode word, token 487 (`RETRACE_SEQID`) with the sequence number, kick 0. Returns 0.
- `kona_enable_dac_cursor` (`kona_video.o` +0x1694, 292 bytes): **Established.** Re-initialises the cursor generators of all eight display channels through the
  `HH_VC_ADDRESS` / `HH_VC_DATA` pair. If the DAC cursor flag (+3554) is set it first writes address 0x103 with data 0. For channel n it writes address 0x0b00 + 0x100n with data 4 and then 2, and address 0x0b02 + 0x100n with 5 when n is the cursor channel (+3556) and the DAC flag is set, else 0.

## Rendering nodes: `kona_ddrn.o`

A rendering node's driver-private record is 256 bytes (the layout is in [kona_kern.h](../kona_kernel/include/kona_kern.h)). It holds the return-data page, the 64 KB context save area, the retrace record (+112), the lists of memory blocks, and a bind marker halfword (+248).

- `KONAcreateddrn` (`kona_ddrn.o` +0x0, 224 bytes): **Established.** The board's operation for creating a rendering node. It allocates and zeroes the private record
  (`kern_malloc` of 256 bytes), stores it in the node (+112), sets the bind marker (+248) to -1, and initialises the semaphore at +80. It takes one 16 KB page for return data (`kvpalloc`, address at +0) and stores its pipe-space address pair (frame number with 0x10000000 at +8, in-page offset with 0x9000 at +12). It takes a 64 KB context save area (`kvpalloc` of four pages, at +16) and maps it into pipe space with `alloc_gfx_io_space` (shift 14), storing the address at +24. Returns 0. No register is touched.
- `kona_mopup_complete` (`kona_ddrn.o` +0xe0, 120 bytes): **Established.** Completion of the context mop-up request, run from GE event 0x103 or from its timeout. It wakes the waiter on the semaphore at +5320. On a timeout it logs tag 2121 and kills the pipe with
  `kona_die` reason 17; otherwise it cancels the timeout (+5336). It then clears that handle.
- `KONAdestroyddrn` (`kona_ddrn.o` +0x158, 1228 bytes): **Established.** The board's operation for destroying a rendering node. Unless the pipe is dead it asks the pipe to drop the node's context: it arms a timeout (+5336) and writes to the command port the token 504
  (`CONTEXT_MOPUP`), kick 0x10000, the token 259 (the event it expects back) and kick 0, attaching to flow control as needed, then sleeps on the semaphore at +5320 until `kona_mopup_complete` runs. It then frees what the node owns: the return page (`kvpfree`), the semaphore, the DMA pools
  (`kona_dmapool_destroy`), the retrace queue entry (`kona_video_cleanup`), the hyperpipe binding (`kona_nclops_cleanup`), the memory blocks
  (`kona_mem_destroy`) and share group (`kona_unshare`), the save area's pipe-space mapping (`free_gfx_io_space`) and pages, any select-feedback lock
  (`unlock_dmavec`) and its mapping, and finally the private record (`kern_free`). It also runs `clean_up_other_gfxp` for the node's connections.

## Context switching and clip validation: `kona_context.o`

- `kona_deact_timeout` (`kona_context.o` +0x9c, 136 bytes): **Established.** Timeout handler for a context deactivation the pipe never reported: under the state lock, if the deactivate timeout record (+5288) is still set, it logs tag 2125, kills the pipe with
  `kona_die` reason 2, and signals the semaphore at +5272 the switch is sleeping on, clearing the record.
- `KONApcxswap` (`kona_context.o` +0x680, 2068 bytes):
  **Established.** The context-switch operation: it makes a rendering node's context the one the pipe runs.
  It returns at once if the pipe is dead (+2172).
  It cleans up other connections of the thread (`clean_up_other_gfxp`) and makes the incoming node's blocks resident (`kona_mem_validate`).
  For the outgoing context it arms the deactivate timeout, sends token 508 (`CONTEXT_DEACTIVATE`) with the context's slot number (a 176-byte slot index), and sleeps on the context semaphore until GE event 0x101.
  For an incoming context seen before it sends token 505 (`CONTEXT_LOAD`) with the image length word, the save area's pipe-space address pair and the marker 0xedededed.
  For a new one it sends token 509 (`CONTEXT_INIT`) with the address pair and 0x10000, then token 498 (`RDATA_SETUP`) with the return-data address pair and 0x4000, and sets the context's initialised flag.
  It sets bit 1 of the incoming connection's word +4 while it works and clears it before returning (0x8cc-0x8e0).
  Only the `CONTEXT_LOAD` path calls `kona_act_pcx` (0x820), passing the save area's word 2 as the activate token; the `CONTEXT_INIT` path branches past the call (0xa2c to 0x828).
  Each packet is bracketed by kicks of `HH_GINTR_INFO` (0xc00108): 0x30000 before the token, 0x10000 before the payload and 0 at the end, with flow-control attach and detach (widget register 0x7c) around the waits.
- `KONApcxswitch` (`kona_context.o` +0xe94, 52 bytes): **Established.** The board's alternative switch operation: it only logs that it should never be called.
  `KONApcxswap` does the work.
- `KONAvalidateclip` (`kona_context.o` +0xec8, 1288 bytes): **Established.** Sends the display-clip validation packets for a rendering node outside a context switch. Each is bracketed by the kicks of
  `HH_GINTR_INFO` (0xc00108). It sends token 499 (`VALIDATE_CLIP`) with the draw drawable's clip words when the drawable's change counter differs from the node's cached copy (+136), token 494 (`VALIDATE_READCLIP`) with the read drawable's words when its counter differs from the cache at +140, and always token 500
  (`VALIDATE_BANK`) with the two display-bank halfwords. It ends with token 370 (GED_NOP) and a zero word, and refreshes the cached counters.
- `KONAsetnullclip` (`kona_context.o` +0x13d0, 56 bytes): **Established.** Resets a clip record to the empty clip: it stores 0 in words +8, +12, +16, +20, +24, +48 and +60, -1 in +40, and 1 in +44 and +52. No register is touched.

## Pipe memory pools: `kona_mem.o`

The pipe has four memory pools, each with a 24-byte pool record at state +4976 + 24 x pool number (capacity from the configuration record's memory-type record). A block is a 96-byte record of one allocation: +2 not resident, +3 transfer state, +16 host save buffer, +24 its pipe-space address, +32 saved size, +40 owner list head, +48 and +64 list links, +72 a semaphore held while a swap is in flight. Tokens named here are written to the command port between kicks of `HH_GINTR_INFO` (0xc00108): 0x30000 before the token, 0x10000 before the payload, 0 at the end.

- `kona_mem_swapout_func` (`kona_mem.o` +0x40, 1012 bytes): **Established.** Sends the packet that makes the pipe copy a block out to host memory. It does nothing for a dead pipe. When the suspend flag (+5112) is 1 it first sends token 479
  (`MEM_SUSPEND`) with the word 0x104, then token 483 (`MEM_SWAPOUT`) with eight words: pool, offset, size, unit size, copy count, the host buffer's address pair, and the completion event 0x102.
- `kona_mem_swapin_func` (`kona_mem.o` +0x434, 932 bytes): **Established.** Sends the packet that makes the pipe load a block back from host memory: token 482
  (`MEM_SWAPIN`) with pool, offset, size, unit size, copy count, the host buffer's address pair and the completion event 0x102. Without the driver-wide DMA flag it writes the saved data into the command stream after the token instead of an address.
- `kona_mem_copydown_func` (`kona_mem.o` +0x7d8, 672 bytes): **Established.** Sends token 481
  (`MEM_COPYDOWN`) with four words (pool, old offset, new offset, size), telling the pipe to slide a block down inside its memory.
- `kona_mem_suspend` (`kona_mem.o` +0xa78, 16 bytes): **Established.** Sets the suspend flag (+5112) to 1 when the record's select-feedback flag (+104) is set, else 0, so the swap-out path knows to send
  `MEM_SUSPEND` first.
- `kona_mem_resume` (`kona_mem.o` +0xa88, 704 bytes): **Established.** Gives the pipe back the suspend record it returned. When the saved count (+5112) is 2 or more and the pipe is alive it waits for the suspend answer on the semaphore at +5152, then sends token 478
  (`MEM_RESUME`) with the saved words from +5116, and clears the count.
- `kona_mem_reserve_func` (`kona_mem.o` +0xd48, 672 bytes): **Established.** Sends token 484
  (`MEM_RESERVE`) with four words (pool, id byte, offset, size) to tell the pipe a range of its memory belongs to a block.
- `kona_mem_cleanup` (`kona_mem.o` +0xfe8, 332 bytes): **Established.** Retires finished transfers: under the state lock it takes the list of completed blocks (+5104, linked through block +56), frees each block's pipe-space mapping with
  `free_gfx_io_space` and, for state 2, the host save buffer (`kvpfree`) and its mapping, and marks the block done (219).
- `kona_mem_swapout` (`kona_mem.o` +0x1134, 428 bytes): **Established.** Moves one resident block out of the pipe: subtracts its size from the pool (+8), waits for any transfer in flight (its semaphore, 25), runs
  `kona_mem_cleanup`, allocates a host save buffer for size x unit x copies (`kvpalloc`) and maps it (`alloc_gfx_io_space`), queues the block on the swap-out queue (+5072, head +5080), arms the swap timeout, calls
  `kona_mem_swapout_func`, and marks the block not resident. When the DMA flag is set it waits for the transfer to finish.
- `kona_mem_compress` (`kona_mem.o` +0x12e0, 200 bytes): **Established.** Compacts a pool: walks the sorted block list and, for each block that is not already at the lowest offset its alignment allows, sends a copy-down
  (`kona_mem_copydown_func`) and records the new offset.
- `kona_mem_grow` (`kona_mem.o` +0x13a8, 280 bytes): **Established.** Enlarges a block in place by swapping out the blocks after it until the gap is big enough
  (`kona_mem_swapout`); if the pool's end is too close, it swaps the block itself out and only enlarges its recorded size.
- `kona_mem_reserve` (`kona_mem.o` +0x14c0, 608 bytes): **Established.** Finds room for a block. While the pool has too few free units it swaps out resident blocks of other owners; then it places the block first-fit in an aligned gap, links it in and counts its size. If nothing fits and the type allows it, it compacts once
  (`kona_mem_compress`) and retries; otherwise it swaps out every resident block and returns 1 so the caller retries on an empty pool. Returns 0 once placed.
- `kona_mem_swapin_complete` (`kona_mem.o` +0x1720, 300 bytes): **Established.** Completion of a swap-in, from ARM event 0x102 or its timeout: under the state lock it takes the head of the swap-in queue (+5096, tail +5088; an empty queue logs a warning), cancels the timer unless the pipe is in recovery, marks the block state 2, moves it to the finished list (+5104) and wakes its waiter. On a timeout it logs the block and kills the pipe with
  `kona_die` reason 15.
- `kona_mem_swapout_complete` (`kona_mem.o` +0x184c, 308 bytes): **Established.** Same for a swap-out, from GE event 0x102 (queue +5080, tail +5072): the block gets state 1 (done) or 2 (timed out), and a timeout kills the pipe with reason 16.
- `kona_mem_suspend_complete` (`kona_mem.o` +0x1980, 168 bytes): **Established.** Completion of
  `MEM_SUSPEND`, from GE event 0x104 or its timeout. On a timeout it logs tag 2109 and kills the pipe (reason 16). Otherwise, when the first event word n is not negative, it clears +5168 and copies words 0 through n into the array at +5112. Either way it wakes the semaphore at +5152.
- `kona_mem_swapin` (`kona_mem.o` +0x1a28, 376 bytes): **Established.** Moves one block back into the pipe: it waits for any transfer in flight, runs
  `kona_mem_cleanup`, maps the block's save buffer into pipe space, queues it on the swap-in queue (+5088), arms the timer and calls `kona_mem_swapin_func`. When the DMA flag is set it waits for completion. It then decrements the owner's not-resident count and marks the block resident.
- `kona_mem_update_driver` (`kona_mem.o` +0x1ba0, 224 bytes): **Established.** Re-announces every block of an owner list to the pipe after a context load: for each block in each of the owner's and the shared lists it calls
  `kona_mem_reserve_func` with the block's pool, id, offset and size.
- `kona_mem_update` (`kona_mem.o` +0x1c80, 152 bytes): **Established.** Runs
  `kona_mem_update_driver` for the node's own block lists (private record +112) and for its share group's lists (+240). `kona_act_pcx` calls it before activating a context.
- `kona_mem_validate_driver` (`kona_mem.o` +0x1d18, 296 bytes): **Established.** Makes all blocks of one owner list resident: it runs
  `kona_mem_cleanup`, then for each non-resident block of the owner list and of the shared list calls `kona_mem_reserve` and, on success, `kona_mem_swapin`.
- `kona_mem_validate` (`kona_mem.o` +0x1e40, 276 bytes): **Established.** Repeats
  `kona_mem_validate_driver` for each of the four pools until neither the node's nor its share group's list has a non-resident block. `KONApcxswap` calls it before it loads a context.
- `kona_mem_destroy` (`kona_mem.o` +0x1f54, 488 bytes): **Established.** Releases every block of a node (or of its share group, when asked): subtracts each from its pool's resident list and size, waits for a transfer in flight, runs
  `kona_mem_cleanup`, and frees the host save buffer and the block.

## Pipe-space allocator: `gfx_io_space.o`

Each board has an 88-byte record in a table of such records (board number x 88). It holds a copy of the caller's 56-byte descriptor (+0 size in pages, +8 map operation, +16 unmap operation, +24 operation to call when nothing fits, +32 address base operation, +40 in-page offset mask, +48 cookie), then +56 the chunk page, +64 the free-chunk list, +72 the free-extent list and +80 the allocated-extent list. None of these functions touches a register: they hand out the addresses that `kona_mapram_map` later writes into the map RAM.

- `grow_chunk_pool` (`gfx_io_space.o` +0x0, 164 bytes): **Established.** Takes one 16 KB page
  (`kvpalloc`) and cuts it into 409 chunk records of 40 bytes, each with start, count, key and handle set to 0xffffffff and a link to the next, ending the chain with 0. The new page replaces the previous one as the free-chunk list.
- `get_chunk` (`gfx_io_space.o` +0xa4, 68 bytes): **Established.** Pops one chunk record from the free-chunk list (+64), calling
  `grow_chunk_pool` first when the list is empty, and clears its link.
- `free_chunk` (`gfx_io_space.o` +0xe8, 36 bytes): **Established.** Resets a chunk's start, count and key to 0xffffffff and pushes it back on the free-chunk list.
- `init_chunks` (`gfx_io_space.o` +0x10c, 28 bytes): **Established.** Calls
  `grow_chunk_pool` once to give a new board its first chunk page.
- `init_gfx_io_space` (`gfx_io_space.o` +0x128, 292 bytes): **Established.** Sets up one board's allocator: on the first call it allocates and zeroes the table of 88-byte records for every board, then copies the caller's descriptor into the board's record, runs
  `init_chunks`, and makes the whole space one free extent (start 0, length from descriptor word 0).
- `free_gfx_io_space` (`gfx_io_space.o` +0x424, 628 bytes): **Established.** Releases a range: finds the allocated extent whose key matches the address (with the in-page bits removed), calls the descriptor's unmap operation with its handle, and returns the extent to the free list, which is sorted by start page, merging it with an adjacent free neighbour on either side.

## Multi-pipe network: `kona_nclops.o`

The multi-pipe ("hyperpipe") code drives the display port of each pipe through `HH_VC_ADDRESS` (0x8003c0) and `HH_VC_DATA` (0x8003d0): every access is the address written to the first register and the value read or written through the second. The topology record (3336 bytes, pointer at pipe state +5480) holds 64 network records of 48 bytes: state at +0, current master pipe at +8, lock at +16, swap countdown at +20, member count at +40 and bound count at +44. Per pipe: next pipe in the ring +5488, network id +5496, configured network +5500 (-1 for none), swap counters +5504 and +5508, bind count +5516. Only pipes whose display board reports option type 5 and that the X server manages take part.

- `alloc_new_network_id` (`kona_nclops.o` +0x0, 136 bytes):
  **Established.** Gives a pipe a network id by walking the ring of next-pipe links.
  It works on the two-word records `kona_nclops_discover` builds on its stack ({pipe index at +0, network id at +4}) and the table of downstream-record pointers indexed by pipe index, not on the pipe state: if the record has no id yet (+4 equals -1) it either takes the next id from the counter (when there is no downstream record or it is the origin) or recurses into the downstream record and copies its id, so every pipe in a ring ends with the same id.
  The ids reach the pipe state (+5496) only in discovery's last phase.
- `alloc_network_id` (`kona_nclops.o` +0x88, 120 bytes): **Established.** Entry point for the same assignment: when the pipe has a successor and no id yet it calls
  `alloc_new_network_id` on the successor, then copies that pipe's id to its own.
- `is_ddo3` (`kona_nclops.o` +0x100, 40 bytes): **Established.** Returns 1 when the pipe's configuration record shows display option type 5 (the multi-pipe option board), else 0: the test is the word at pipe state +320.
- `is_managed` (`kona_nclops.o` +0x128, 28 bytes): **Established.** Returns 1 when the X server manages the pipe, that is when the manager word at +8 of the board's table entry is nonzero.
- `kona_nclops_discover` (`kona_nclops.o` +0x144, 4244 bytes):
  **Established.** Finds which pipes are cabled in a ring and records the topology.
  It allocates the topology record and a pair table, then for every option-type-5 managed pipe writes display-port address 0x8001 = 0 and 0x8400 = 0x7000, then 0xe500 = 1 and 0xe300 = 1, and polls 0xe200 until bit 1 is set on all of them (10000 passes, then logs a timeout).
  It sends 0xe300 = 0xa1 on all pipes and after 1 us reads bit 7 of 0xe200 on each, repeats with 0x21 to find pipes that see a signal and marks both kinds, then makes every DPLEX pipe, marked or not, transmit alone (0xa1, then 0x21 after the reads) while it reads bit 7 on each unmarked pipe to find the one that sees it (two seeing it is logged and fails discovery; 0x748-0x89c).
  Finally it writes 0xe300 = 1 and 0xe500 = 1 on all and polls bit 1 again.
  It builds the ring, numbers it with `alloc_network_id` and stores the {pipe, network} pairs (+3076, count +3072).
- `kona_nclops_configure` (`kona_nclops.o` +0x11d8, 1108 bytes): **Established.** The configure ioctl: validates the network id and pipe list, builds a network record (state 1, member count, lock), and for each member sets its ring link, network id, configured network (+5500) and three caller words (+5520 to +5528), then writes display-port 0x8400 = 0xf000,
  0x80 = 0 and 0xe500 = 0. Members dropped from a network get 0xe300 = 0 and +5500 = -1. Returns 0 or
  1.
- `kona_nclops_query_config` (`kona_nclops.o` +0x162c, 204 bytes): **Established.** The query ioctl: for a network id from 0 to 63 whose record state is 1, it walks the ring from the master pipe and returns the member count at +0 and, for each member i, the pipe number at +24 + 16i and the three configuration words at +12, +16 and +20 + 16i; any other id returns 1. No register is touched.
- `kona_nclops_bind` (`kona_nclops.o` +0x16f8, 372 bytes): **Established.** Binds a pipe's rendering to its network: for a configured network id it sets +5500, counts the bind (+5516), copies the swap counter to +5504 and +5508, and increments the network's bound count (+44). When the bound count reaches the member count it writes display-port 0xe300 = 1 on the network's master pipe; the node's bind marker (+248) is set. Returns 0 or
  1.
- `kona_nclops_unbind` (`kona_nclops.o` +0x186c, 252 bytes): **Established.** Undoes
  `kona_nclops_bind` for a pipe whose configured network matches: it decrements the pipe's bind count (+5516) and the network's bound count (+44) when positive, and sets the node's bind marker (+248) to -1. Returns 0. No register is touched.
- `kona_nclops_swapped` (`kona_nclops.o` +0x1968, 496 bytes): **Established.** Called from
  `kona_video_intr` after each swap: counts the pipe's swap, and when every member of the network has swapped it writes 0xe300 = 0 and 0xe500 = 0 on the master pipe and 0xe300 = 1 on the next pipe in the ring, which becomes the master (record +8). It does nothing for a pipe outside a network.
- `kona_nclops_destroy` (`kona_nclops.o` +0x1b58, 496 bytes): **Established.** Dissolves a network that nothing is bound to: waits for bit 1 of 0xe200 on the master (10000 passes), then for each member writes display-port 0x80 = 1,
  0x8400 = 0x7000, 0xe300 = 1 and
  0xe500 = 1, clears its ring link and sets +5500 to -1.
- `kona_nclops_cleanup` (`kona_nclops.o` +0x1d48, 188 bytes): **Established.** Unbinds a node that is being destroyed: when its bind marker (+248) is not negative it sets it to -1, decrements the pipe's bind count (+5516) and the network's bound count (+44) under their locks. No register is touched.
- `kona_nclops_init` (`kona_nclops.o` +0x1e04, 48 bytes):
  **Established.** Does nothing unless the pipe state holds a topology record pointer (+5480 nonzero, 0x1e04-0x1e10); then clears the 64 bytes from +5480, the pointer included, so the next topology request runs discovery again.
  Called without a condition by ioctl 10006 (`KONA_SETCONFIGINFO`) after `kona_mem_init`.

## Kernel textport: `kona_tport.o`

The textport drawing functions form a nine-entry operation table handed to the console layer by `kona_earlyinit`. Each drawing function does the same framing, read from `kona_tport.o` +0x0 to +0xccc. It sets the in-use flag, returns without sending anything when the mute flag is set, takes the textport lock, and waits up to 100000 times 2 us for `HH_GFIFO_LEVEL` (0x800208, masked with 0x7fe) to read zero. It brackets the stores with `kona_fc_attach` and `kona_fc_detach`, and writes 32-bit words to the flow-controlled FIFO page at window offset 0xc10000. Every sequence starts with the word 1, then a sub-command number, then a fixed payload.

- `kona_setcolor` (`kona_tport.o` +0x0, 340 bytes): **Established.** Sets the textport drawing colour: sends 1,
  2, then the colour word.
- `kona_mapcolor` (`kona_tport.o` +0x154, 388 bytes): **Established.** Loads one colour-map entry: sends 1,
  3, the index, and the red, green and blue components each shifted left by 2 (an 8-bit value widened to 10 bits without replicating the top bits).
- `kona_point` (`kona_tport.o` +0x2d8, 352 bytes): **Established.** Draws a single pixel at the given position: sends 1,
  6, then the x and y words.
- `kona_box` (`kona_tport.o` +0x438, 400 bytes): **Established.** Fills a rectangle: sends 1,
  5, then x1 - 1 and y1 - 1 (each clamped at 0, so values below 1 become 0), then x2 and
  y2 unchanged.
- `kona_unblank` (`kona_tport.o` +0x5c8, 328 bytes): **Established.** Turns the screen on: sends 1,
  1, 0. **Inferred:** sub-command 1 is the blank control; no function in this object sends payload 1.
- `kona_movechar` (`kona_tport.o` +0x710, 352 bytes): **Established.** Sets the character position the next glyph is drawn from: sends 1,
  4, then the x and y words.
- `kona_bitmap` (`kona_tport.o` +0x870, 776 bytes): **Established.** Draws a glyph: sends 1,
  10, then six sign-extended halfwords from the glyph record (width at +8, height +10, x origin +12, y origin +14, x advance +16, y advance +18), then the packed bits. N words are sent, N = ((width x height + 7) / 8 + 3) / 4; rows are packed back to back (MSB first, 16-bit source units) into a 100-word local array, without padding between rows.
- `kona_tportinit` (`kona_tport.o` +0xb78, 344 bytes): **Established.** Initialises the textport on the pipe: sends 1,
  8, then the screen width and height words from the module's data (1280 and 1024 until `get_graphics_info` replaces them).
- `kona_getdesc` (`kona_tport.o` +0xcd0, 24 bytes): **Established.** The table's last entry: returns 1 when its second argument is 1 and
  0 otherwise, touching nothing.
- `receive_armdata` (`kona_tport.o` +0xce8, 236 bytes): **Established.** Reads reply words from the ARM during early boot. For each of n words it polls bit 4 of
  `HH_INTR_STATUS` (0x800238) up to a poll count (50000 when 0), waiting 100 us between polls, then reads `HH_ARM_MBOX` (0x800240), writes 0 to the mailbox and 0x10 to the status register. Returns the words received, 0 for n not positive, or -1 on timeout.
- `kona_alive` (`kona_tport.o` +0xdd4, 372 bytes): **Established.** Asks the pipe whether its firmware is running. It takes the textport lock, waits for the FIFO to drain, writes 0 to
  `HH_ARM_MBOX`, sends 1, 9,
  0 with the flow-control bracket, waits 10 ms and reads one reply word with `receive_armdata`. Returns 0 when the word is 0x1234abcd, otherwise -1.
- `kona_tport_reset_adaptor` (`kona_tport.o` +0xf48, 380 bytes):
  **Established.** Brings a pipe's crossbar link up before the textport uses it: it measures how many free-running counter ticks one `us_delay(1000)` takes, then polls the link-alive bit (bit 31 of the crossbar word) with `us_delay(2)` between reads until it is set or that 1 ms budget has passed (0xfa0-0x1010; -1 on timeout), sets the pipe widget's flags (`hub_widget_flags_set`) and programs the crossbar port selection so the pipe's DMA goes to port 9 when that link is up and to port 10 otherwise.
  Returns -1 when the link does not come up.
- `kona_earlyinit` (`kona_tport.o` +0x10c4, 652 bytes): **Established.** Registers the kernel textport early in boot. It reads the console option
  (`kopt_find`) to choose a pipe number (a leading d or D disables it), finds the pipe with `find_konapipe`, computes the pipe's window base from its node and widget numbers, resets the adaptor on the first call, checks `kona_alive` (starting the firmware through
  `init_graphics` if the EEPROM state is 2), reads the screen size with `get_graphics_info`, initialises with `kona_tportinit` and registers the operation table with
  `htp_register_board`. Returns 1 when a board was registered.
- `find_konapipe` (`kona_tport.o` +0x1350, 156 bytes): **Established.** Looks up pipe n with
  `find_gfxpipe` and returns 1 only when the board type is the graphics board (0x51) and it has a graphics component; it stores the component's node (halfword +34) and widget (byte +32) through the output pointers.
- `init_graphics` (`kona_tport.o` +0x13ec, 104 bytes):
  **Established.** Starts the pipe firmware if it does not answer: when `kona_alive` fails it writes 0 to `HH_INTR_INFO` (0x800220) and 3 then 2 to `HH_RESET` (0x800300), then, as on success, calls `kona_alive(base, 0)` and returns its result (0x1410-0x1418): the second call runs in every case.
- `get_eeprom_state` (`kona_tport.o` +0x1454, 124 bytes): **Established.** Reads the firmware state word the pipe's EEPROM loader left: writes 1 to
  `HH_ARM_CTRL` (0x800308), sets the ARM address 0x200bc through `HH_ARM_ADDRESS` (0x8003e8) and `HH_ARM_DATA` (0x8003f0), then reads eight words from ARM address 0x87ff00 and returns the eighth.
- `get_graphics_info` (`kona_tport.o` +0x14d0, 408 bytes): **Established.** Reads the pipe's configuration over the textport channel: sends 1,
  12, 0, waits 10 ms and reads five words with `receive_armdata`. Words 3 and
  4 become the screen width and height (defaults 1280 and 1024 when negative or when no reply arrives, which also returns -1).
- `kona_fc_attach` (`kona_tport.o` +0x1668, 308 bytes): **Established.** Puts the calling CPU in the hub's flow-controlled write path for the pipe. It blocks one hub error interrupt
  (`err_int_block_mask`), sets the CPU slice's graphics page register to the FIFO page with bit 40, the credit counter to 168 and the bias to 36, registers the CPU in the pipe's hub (`IIO_IGFX_0`), and writes 34 to the widget register at 0x7c (credit-return transaction number 17).
- `kona_fc_detach` (`kona_tport.o` +0x179c, 144 bytes): **Established.** Ends the textport bracket: sets the graphics page register to 0xdeadbabe, writes 1 to widget register 0x7c, resets the credit counter to 64 and releases the hub error mask
  (`err_int_unblock_mask`).

## Attach and Crosstalk set-up: `kona_edtinit_hip2.o`

The Crosstalk widget registers named here are those of the pipe's XG chip ([xg.md](xg.md)): 0x24 control, 0x2c request timeout, 0x34 and 0x3c interrupt destination, 0x5c interrupt vectors, 0x6c error status, 0x74 FIFO water marks.

- `kona_init` (`kona_edtinit_hip2.o` +0x0, 200 bytes): **Established.** The driver's start-up hook: it runs
  `kona_debug_init`, then under the board semaphore walks every pipe index below the board count, finds each graphics pipe with `find_konapipe`, allocates its pipe state with `kona_alloc_bdata` (logging a failure) and stores the pipe's widget number (+2208) and node number (+2210) in it. It then registers the driver with the Crosstalk layer
  (`xwidget_driver_register` with the part number 0xc102 and manufacturer 682), so `kona_attach` runs when the widget is found.
- `kona_intr_set` (`kona_edtinit_hip2.o` +0xc8, 8 bytes): **Established.** Does nothing: it is the first slot of the handler table (the table of interrupt handlers the attach step walks), and returns immediately.
- `kona_report_errs` (`kona_edtinit_hip2.o` +0xd0, 1308 bytes): **Established.** Prints the Crosstalk error causes. It reads the XG error status register at widget offset 0x6c and prints one message (level 4, with the pipe number) for each of the 31 bits that is set and has a name; it writes no register.
- `nic_xg_vertex_info` (`kona_edtinit_hip2.o` +0x5ec, 32 bytes): **Established.** Registers the pipe's serial-number chip with the hardware graph: calls
  `nic_vertex_info_set` with `nic_access_mcr32` so the numbers are read through the XG's one-wire register with 32-bit accesses.
- `hexstrtol` (`kona_edtinit_hip2.o` +0x60c, 144 bytes): **Established.** Converts a string of lowercase hexadecimal digits to a number, stopping at the first other character.
- `kona_extract_nic_info` (`kona_edtinit_hip2.o` +0x69c, 2104 bytes): **Established.** Parses the pipe's serial-number string (colon-separated fields such as part, revision and serial, matched with
  `strncmp` against the known field names) and stores the parsed numbers in the information record at state +204 onward, using `hexstrtol` for hexadecimal fields.
- `kona_attach` (`kona_edtinit_hip2.o` +0xed4, 1268 bytes): **Established.** Attaches the driver to a pipe's Crosstalk widget, in the order xg.md lists. It finds the widget and its master node, claims a pipe record, maps the widget window
  (`xtalk_piomap_alloc`), runs `kona_init_flow_control`, adds a hardware-graph edge and allocates three Crosstalk interrupts with their handlers (`kona_xg_intr_handler`,
  `kona_intr_handler`, `kona_ge_intr_handler`). It writes 0x8800 to `HH_VC_ADDRESS` (0x8003c0) and reads
  `HH_VC_DATA` (0x8003d0), resets the adaptor and reports errors, reads the widget registers 0x04 and 0x64 (the map RAM size, stored at +2312), reads the board identity through the display port (address 0x0b00), extracts the serial numbers, initialises the pipe-space allocator
  (`kona_init_board_mapping`) and adds the pipe to the inventory (`kona_inventory_board`). Failures log tag 2108 and free what was taken.
- `kona_reset_adaptor` (`kona_edtinit_hip2.o` +0x13c8, 620 bytes): **Established.** Brings the XG chip and host interface to their working state after attach or recovery. It resets the widget link
  (`xwidget_gfx_reset`), then writes the widget control register (0x24) with the interrupt target number, widget number and crossbar credit count, the interrupt destination (0x34, 0x3c) and the three interrupt vectors (0x5c), reports errors, clears the error status (0x6c) and request timeout (0x2c), sets the interrupt-enable bit in 0x24 last, sets the FIFO water marks in 0x74 (output-DMA low 0x40 and high 0x3f), and writes 0xfff to
  `HH_INTR_STATUS` (0x800238) and 0 to the two error-status registers at 0x800390 and 0x800398.
- `kona_detach` (`kona_edtinit_hip2.o` +0x1634, 8 bytes): **Established.** The widget detach hook: it does nothing and returns, so a detached pipe's state stays allocated.

## Remaining small kernel entries

- `kona_gfifo_spin` (`kona_timeout.o` +0x6ac, 344 bytes):
  **Established.** The kernel-side wait that holds a process while the graphics FIFO is full: it raises the FIFO-wait flag (`gfx_waitf_on`), counts the wait (+5260, +5472), records the time in microseconds, cancels the pending watchdog timer (`untimeout_wait` on +5440), then loops while the pipe is alive, calling `kona_delay_monitor_gfifo` with the time left and, when that returns 0, running the watchdog step `kona_callout` and waiting another 500000 us.
  When the loop ends, because the FIFO drained or the pipe died, it cancels the high-water timeout at +2336 with `kona_untimeout`; only a pipe that is still alive is then re-armed with `kona_sched_tick` (0x7e4), which kills the pipe with reason 9 if it fails.
  It drops the lock and clears the flag on every path.
- `gfx_pio_write_64` (`kona_flow.o` +0xa00, 16 bytes): **Established.** A 64-bit store to its address argument followed by
  `sync`. No function of `kona.a`, `gfx.o`, `rrm.o` or `gfxs.a` calls it.
- `gfx_pio_read_64` (`kona_flow.o` +0xa18, 8 bytes): **Established.** A 64-bit load from its address argument with no barrier. Nothing in the kernel objects calls it.
- `gfx_flow_init` (`gfx_flow.o` +0x90, 316 bytes): **Established.** One-time set-up of the hub flow-control layer. For every node it reads the hub revision (bits 4-7 of the status register at remote offset 0x600000), clears the transaction-credit flag when the revision is below 4, and writes 10000 to the two interrupt comparators at remote offsets 0x320 and
  0x348. It installs the high-water prehandler on every enabled CPU and allocates the owners table (16 bytes per node) and the per-CPU attachment table (8 bytes per CPU).
- `gfx_flow_interface_alloc` (`gfx_flow.o` +0xa1c, 56 bytes): **Established.** Allocates a zeroed 112-byte flow record with no hub registration: sets the attached CPU (+96) and owner (+104) to -1, and stores the caller's callback at +32 and its argument at +40. It touches no register.
- `gfx_flow_set_cpu_attachment` (`gfx_flow.o` +0x9ec, 24 bytes): **Established.** Records a flow record as the current CPU's attachment, by storing it in the per-CPU attachment table slot. It touches no register and not the record itself.
- `gfx_flow_detach_requires_credit_flow_disable` (`gfx_flow.o` +0x6b0, 8 bytes): **Established.** Returns the constant 1. No register is touched. **Inferred:** callers use it as a capability query that says credit flow must be disabled before a detach.

## Generic graphics layer: `gfx.o`

The 6.5.30m `IP27boot/gfx.o` and `IP35boot/gfx.o` (and the copy of each inside `gfxs.a`) hold the same code for the entries in this section unless an entry says the IP35 object differs. Offsets are `.text` offsets; where the IP35 object places the same code elsewhere the entry gives that offset too. `conn` is the 128-byte connection record `gfxopen` allocates and `board data` is the board's private record; their field layout is in [kernel.md](kernel.md#generic-graphics-layer-gfxo).

- `gfxtable_readerlock` (`IP27boot/gfx.o` at +0x0 for 68 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Enters a table lock as a reader. It takes the spinlock at lock +4 with `mutex_spinlock`, adds 1 to the reader count at +0 with a plain load and store, and drops the spinlock with `mutex_spinunlock`. A reader waits for nothing but that spinlock, so lookups overlap, while a writer polls the count in `gfxtable_writerlock`. Called by `gfx_group_find`, `gthread_find` and `gthread_scan`.
- `gfx_group_find` (`IP27boot/gfx.o` at +0x188 for 184 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Returns the group record for a thread handle, or 0. It converts the handle to its thread-group handle with `threadhandle_to_threadgrouphandle`, hashes it (low four bits, or bits 12-15 when those are zero), holds the table as a reader (`gfxtable_readerlock`) while it walks the bucket chain comparing the record's first word, and releases it again. The record is used by the caller after the lock is dropped.
- `gthread_find` (`IP27boot/gfx.o` at +0x800 for 220 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Looks a thread handle up in the 16-bucket thread table. The bucket comes from bytes 1 to 3 of the handle, `((b1*29 ^ b2)*29 ^ b3) & 0xf`; it reader-locks the bucket (128 bytes apart, count at +0, spinlock at +4), follows the chain through record +32 until record +0 equals the handle, unlocks and returns the record or 0. The pointer outlives the lock.
- `gthread_find_gfxp` (`IP27boot/gfx.o` at +0x8dc for 56 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Returns the first connection of a thread's connection list, or 0 when the thread has no record or no list. It calls `gthread_find` and reads the list at record +16, then its first-connection pointer at +24. `gfxopen` uses it to compare the mode of an existing connection with the one being opened.
- `gthread_scan` (`IP27boot/gfx.o` at +0x914 for 336 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Runs a callback over every thread record in three phases. Phase 0 calls it with no thread; a nonzero result ends the scan at once. Then it reader-locks all 16 buckets with `gfxtable_readerlock`, calls the callback with phase 1 for every thread whose exited flag (bit 4 of +8) is clear and stops at the first nonzero result, unlocking every bucket through `gfxtable_readerunlock` on the way out. The normal exit releases the buckets and returns the result of the phase-2 call. Callers pass `gfx_conflict_scan`, `GfxKiller` or `irisgl_sproc_cleanup`.
- `gthread_destroy` (`IP27boot/gfx.o` at +0x568 for 244 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Removes a thread's record from the hash table and frees it. It writer-locks the bucket with `gfxtable_writerlock`, unlinks the record whose handle matches (chain link at +32), unlocks with `gfxtable_writerunlock` and releases the 40-byte record with `kern_free`. It leaves the list and group alone, so every caller first runs `gthread_detach_list` and `gthread_detach_group`.
- `gthread_attach_list` (`IP27boot/gfx.o` at +0x65c for 156 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Gives a thread a connection list. With a non-null list it bumps that list's reference count and stores it at thread +16; with a null list it allocates a 32-byte one with `kern_malloc` (returning 0 on failure), sets the count to 1, clears the reader count and first connection, and initialises the sync variable "glw" (`init_sv`) and the spinlock "gfxl" (`spinlock_init`). Returns 1.
- `gthread_detach_list` (`IP27boot/gfx.o` at +0x6f8 for 84 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Drops a thread's connection list. It clears thread +16, subtracts 1 from the list's reference count, and when the count reaches 0 destroys the spinlock (`spinlock_destroy`) and sync variable (`sv_destroy`) and frees the 32-byte list with `kern_free`. Returns 1.
- `gthread_attach_group` (`IP27boot/gfx.o` at +0x74c for 92 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Makes a thread a member of a group. Under the group's spinlock (`mutex_spinlock` on +16) it adds 1 to the member count at +8, then stores the group at thread +24. Returns 1.
- `gthread_detach_group` (`IP27boot/gfx.o` at +0x7a8 for 88 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Takes a thread out of its group. A thread with no group (+24 zero) returns 0; otherwise it clears the pointer and subtracts 1 from the group's member count under the group's spinlock, and returns 1. The group record is not freed here; that is `gfx_group_destroy`.
- `irisgl_sproc_cleanup` (`IP27boot/gfx.o` at +0x2470 for 104 bytes):
  Also in `IP35boot/gfx.o` at +0x2468 with the same code. **Established.** The callback `gfxclose` passes to `gthread_scan` when the last IrisGL connection of a share group closes. For phase-1 calls on a thread whose group equals the argument it runs `cleargfxsched_thread`, `gthread_detach_list` and `gthread_detach_group` and clears flag 2 (the "given graphics by a sproc" bit) in the thread record; every other call does nothing. It returns 0 so the scan continues.
- `gfxcleanup` (`IP27boot/gfx.o` at +0x13ac for 52 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The last-reference test shared by the character and STREAMS halves. When the connection's side flags (+56) are both clear it destroys the spinlock (`spinlock_destroy`) and frees the record with `kern_free`; otherwise it does nothing, because the other half still holds the connection.
- `gfxinit` (`IP27boot/gfx.o` at +0x1d80 for 196 bytes):
  Also in `IP35boot/gfx.o`. **Established.** One-time start-up of the generic layer. It caps the configured device limit at 0x20000 (printing the "exceeds absolute maximum" text with `cmn_err` level 4 when it was larger), initialises the board and device semaphores (`init_sema`, value 1), calls `processors_configured`, `init_gfx_group_table` and `init_gthread_table`, allocates one 32-byte statistics record per CPU with `kern_calloc` and publishes it with `ksym_add` under the name "gfxinfo".
- `sendMsg` (`IP27boot/gfx.o` at +0x18dc for 256 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Builds shmiq-style input event records and queues them to the window system. When the board's managing connection has side flag 1 (the STREAMS side), it appends one 12-byte record per value of the message to the allocated block (board shmiq minor at +0, index at +4, one byte of the message at +6, the value at +8), clears the block with `bzero` first, and puts it on the board's read queue (+32) with `putq`. With no board or no STREAMS-side manager it returns and queues nothing. Called by `GfxDelayedMessage` and `GfxSendMessage`.
- `GfxDelayedMessage` (`IP27boot/gfx.o` at +0x19dc for 160 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The retry that `bufcall` runs when a message block could not be allocated at once. It allocates `12 * count` bytes with `allocb`; on success it calls `sendMsg`, wakes the sleeper that is waiting on the message (`wakeup`), frees the copy with `kern_free` and returns 0. If the allocation fails again it re-arms itself with `bufcall` and returns 1; if that fails too it prints the "out of buffers" text with `cmn_err`, wakes the sleeper, frees the copy and returns 0.
- `GfxMessage` (`IP27boot/gfx.o` at +0x1bd8 for 28 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The sleeping form of the event-message entry for board drivers. It forwards its argument to `GfxSendMessage` with the interrupt flag 0, which lets that routine hold the streams lock and sleep when no buffer is free.
- `GfxDetach` (`IP27boot/gfx.o` at +0x1c8c for 244 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Takes a connection off its board. A connection with no function table skips straight to the end. Otherwise, when its region handle (+48) no longer resolves (`gfxdd_lookup`) it destroys the handle with `ddv_destroy_handle`; it runs `RRM_Exit`, calls the board's detach function (table +16) when a handle remains, and under the streams lock calls `GfxUnmanage` if this connection is the board's manager. When it owns the board it also zeroes the board's label (+16 to +28 of its info record) and owner. It ends by clearing the connection's function table, board and board data.
- `GfxUnmanage` (`IP27boot/gfx.o` at +0x154c for 388 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Gives up the manager role of a board. If the connection is not already the pipe-semaphore holder it takes the board's pipe semaphore (`psema`, priority 537), records itself as holder and spins with `us_delay` of 2 microseconds while the backed-up flag (+104) is set. It then clears the board's manager, the board data's managing connection and both queue pointers, and kills every other user of the board by running `gthread_scan` with `GfxKiller` and signal 9. It finishes according to the board number (+24 of the board): for any board but 0 it calls the board's release hook (table +192) at raised priority, clears the holder and releases the semaphore with `vsema`; for board 0 it calls `cn_init` with 1 before clearing the holder and releasing the semaphore (inferred: the textport console is re-initialised when the first board is given up).
- `GfxOpen` (`IP27boot/gfx.o` at +0x13e0 for 364 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The board manager's open: only a clone open (flag 2 in the open flags) is accepted, anything else returns 19. It finds the caller's connection through `gthread_find_gfxp` and needs one with board data. It kills the other users of the board with `gthread_scan` and `GfxKiller` (signal 9), waits with `delay` for the board's open-rendering-node count (+16 of the board data) to reach 0, takes the manager role, records the read and write queues in the board (+32, +40), sets side flag 1 and builds a device number with the board number as minor (`getemajor`, `makedevice`). It calls `RRM_init_panes` once the board is managed.
- `gfx_frs_valid_pipenum` (`IP27boot/gfx.o` at +0x3458 for 12 bytes):
  Also in `IP35boot/gfx.o` at +0x3464 with the same code. **Established.** Tells the frame-rate scheduler whether a pipe number names a registered board. It returns 1 when the number is below `GfxNumberOfBoards` (a signed compare, so a negative number counts as valid) and 0 otherwise; it touches nothing else.
- `gfx_frs_install` (`IP27boot/gfx.o` at +0x3464 for 88 bytes):
  Also in `IP35boot/gfx.o` at +0x3470 with the same code. **Established.** Passes a frame-rate-scheduler install request to the board that owns the pipe. It looks up `GfxBoards[pipe]` and calls the board's install hook (function table +208) with the board data and the interrupt-group descriptor, returning its result. A board without the hook gets the "Null operation" notice at `cmn_err` level 5 and the return register is left as it was.
- `gfx_frs_uninstall` (`IP27boot/gfx.o` at +0x34bc for 80 bytes):
  Also in `IP35boot/gfx.o` at +0x34c8 with the same code. **Established.** The matching removal. It calls the board's uninstall hook (function table +216) with the board data only and returns its result; a missing hook prints "Null operation" through `cmn_err` at level 5 and returns without setting a result.
- `gfx_disp` (`IP27boot/gfx.o` at +0xc28 for 308 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The scheduler's question whether a thread may be dispatched, answered 1 (yes) or 0 (hold it back). It finds the thread's first connection (`gthread_find`) and, for each connection with board data, calls the clear-backup hook (+112) while the backed-up flag (+104) is set, returning 0 for a connection that is still backed up and mapped, in use or holding the pipe semaphore. For an IrisGL thread in a group that holds the semaphore with nobody inside it, it calls `valusema` and returns 0 when another process is waiting for the semaphore. Inferred: the point is to switch a graphics process out only when it holds no pipe state.
- `gfx_fault` (`IP27boot/gfx.o` at +0xd5c for 216 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Handles a fault on a graphics mapping. It finds the thread record (none: returns 1), takes the connection semaphore (`psema`, priority 25) for an IrisGL connection in a group, calls the board's TLB-invalidate hook (+112) when the connection is mapped, then asks `RRM_ValidFault` to make the address valid and releases the semaphore with `vsema`. It returns 1 when that result was negative and 0 otherwise.
- `gfx_exit` (`IP27boot/gfx.o` at +0xe34 for 428 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The process-exit hook. It marks the thread record as exited (flag 4) and returns 0 in every path. For the sole member of an IrisGL share group (`threadgroup_refcnt` is 1) it walks the connection list under the reader lock (`GfxListReaderLock`) and, for each connection that holds the pipe semaphore, releases it at raised priority: board hook (+192) if present, holder cleared, `vsema`. A thread without a group instead calls each connection's board exit function (table +56).
- `gfx_shcheck` (`IP27boot/gfx.o` at +0xfe0 for 596 bytes):
  Also in `IP35boot/gfx.o`. **Established.** Tears down a thread's graphics state when its share group goes away. For IrisGL connections it reduces the group's running count (+12, under the group spinlock) unless flag 2 is set, detaches the list, group and scheduler state (`gthread_detach_list`, `gthread_detach_group`, `cleargfxsched_thread`) and, when the running count has fallen to 0, releases a pipe semaphore still held by a list connection. For OpenGL connections it destroys each region handle (`ddv_destroy_handle`), clears the list's first-connection pointer and destroys the thread record. The record is gone afterwards in both cases.
- `gfx_shdup` (`IP27boot/gfx.o` at +0x1234 for 124 bytes):
  Also in `IP35boot/gfx.o`. **Established.** The share-group duplication hook: when the parent thread has a first connection that is not OpenGL, it creates a record for the child with `gthread_create`, shares the parent's connection list (`gthread_attach_list`) and registers the child with `setgfxsched_thread`. A parent with no connection or with an OpenGL one is left alone. Inferred: this is how a forked or sproc'd child inherits an IrisGL connection.
- `gfx_shalloc` (`IP27boot/gfx.o` at +0x336c for 192 bytes):
  Also in `IP35boot/gfx.o` at +0x3378 with the same code. **Established.** The share-group allocation hook. It makes a group for the current thread with `gfx_group_create`, attaches the thread to it (`gthread_attach_group`), and then, with interrupts blocked (`splhi`) and the connection list writer-locked (`GfxListWriterLock`), sets the group field (+96) of each connection to the new group. A first connection that is not OpenGL also sets the group's running count to 1. No result value is set.
- `gfx_shfree` (`IP27boot/gfx.o` at +0x342c for 44 bytes):
  Also in `IP35boot/gfx.o` at +0x3438 with the same code. **Established.** The share-group release hook. It finds the group of the current thread (`curthreadhandle`, `gfx_group_find`) and frees it with `gfx_group_destroy`, which does not look at the member count.
- `gfxopen` (`IP27boot/gfx.o` at +0x1fb8 for 1208 bytes):
  **Established.** The character-device open that makes one connection per open. It takes the device semaphore (`psema`, priority 25) and immediately refuses a thread for which `is_gsn_bypass_thread` is true, returning 1008. The minor in the device number must be 0 (IrisGL) or 1 (OpenGL, connection flag 8), else 6; it takes the first free slot of the device table (19 when full), refuses to mix IrisGL and OpenGL in one process or share group (19, `cmn_err_tag` ids 2126 and 2127) and allocates and zeroes a 128-byte connection (`kern_malloc`, `bzero`). The CPU mask at +104 and +112 is two 64-bit words, and the bit of the current CPU, read as a halfword from the fixed per-CPU address 0xffffffffffffc420, is set in it. The connection is then linked into the thread's list, with `gthread_attach_list` and `setgfxsched_thread` for a first connection, and the slot number goes into the returned device number.
- `gfxopen` (`IP35boot/gfx.o` at +0x1fb8 for 1200 bytes):
  **Established.** The same open for the IP35 kernel, with three differences read from the disassembly. There is no `is_gsn_bypass_thread` test, so the 1008 refusal does not exist. The connection record is 256 bytes (`kern_malloc` and `bzero` of 256) and the CPU mask at +104 is eight 64-bit words, so the mask covers 512 CPUs instead of 128; the new connection's bit is set in the word chosen by the CPU number divided by 64. The current CPU number is read from 0xffffffffffffc428 rather than 0xffffffffffffc420. The device-table, mode-conflict and list steps are as in the IP27 object.
- `gfxclose` (`IP27boot/gfx.o` at +0x24d8 for 1400 bytes):
  **Established.** The character-device close. It takes the device semaphore unless the device number is an OpenGL one, checks the slot (6 past the limit, 19 empty) and, when the closer is not the owner of the connection, moves the connection onto the closer's list. It then runs `GfxDetach`, unlinks the connection under the list writer lock (`GfxListWriterLock`) and frees its semaphore (`freesema`). For the last IrisGL connection of a group it zeroes the running count and has `gthread_scan` call `irisgl_sproc_cleanup`; an emptied list leads to `cleargfxsched_thread` and `gthread_destroy`. Closing another process's descriptor prints two notices with `cmn_err`, sends the owner SIGKILL and the closer SIGABRT (`psignal`). When it has to create a list for the closer it zeroes the two-word CPU mask at +104 and +112.
- `gfxclose` (`IP35boot/gfx.o` at +0x24d0 for 1420 bytes):
  **Established.** The same close for the IP35 kernel. The sequence of detach, list unlinking, group cleanup and the kill-and-abort notices is unchanged; what differs is the connection layout. Where it makes a new connection list for the closer it clears eight 64-bit CPU-mask words at +104 through +160 in a loop, where the IP27 object clears two, matching the 512-CPU mask of the 256-byte IP35 connection. The compiler also placed the thread-record creation and the allocation-failure return differently, which changes the size by 20 bytes.
- `gfxioctl` (`IP27boot/gfx.o` at +0x2b88 for 2004 bytes):
  **Established.** The ioctl entry point for the generic and board-private commands. It counts the call in the per-CPU statistics (`gfxinfo`, +12 of the 32-byte record of the CPU number it reads from 0xffffffffffffc420), finds the connection by the low 17 bits of the device number and the thread record, and serialises IrisGL connections in a group with the connection semaphore. It dispatches 101 (board count), 102 (board info), 103/112 (attach, re-attach), 104 (detach), 105 (is managed), 106/107 (initialise, start), 108 (download, through `copyin_xlate`), 110 (map all), 111 (label) and 113 (diagnostic flag) in a chain of compares; 1000 to 9999 go to `RRM_Dispatch` and 10000 and up to the board's private-ioctl hook (+200).
- `gfxioctl` (`IP35boot/gfx.o` at +0x2b94 for 2004 bytes):
  **Established.** The same ioctl entry for the IP35 kernel, with the same command chain, arguments and results; the only differences are that the CPU number for the statistics record comes from 0xffffffffffffc428 instead of 0xffffffffffffc420, and that the compiler loads `GfxNumberOfBoards` earlier, which shifts the code by one instruction.

## Stubs for a kernel without graphics: `gfxstubs.a(gfxstubs.o)`

A kernel built without a graphics board links `gfxstubs.a` in place of `gfx.o`, `rrm.o` and `gfxs.a`. In `IP27boot/gfxstubs.a(gfxstubs.o)` and `IP35boot/gfxstubs.a(gfxstubs.o)` (identical code) every function is a `jr ra` with at most one instruction in its delay slot, 8 bytes long, so no register or table is touched. The entries give the value each one returns, which is what the rest of the kernel sees in place of the real hook.

- `gfx_disp` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x8 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** The scheduler's may-dispatch question with no graphics present: the delay slot loads 1, so every thread may be dispatched. The real `gfx_disp` of the full graphics layer can answer 0.
- `gfx_fault` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x30 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Stands in for the graphics fault handler by returning 1 (the delay slot loads 1), the same value the real handler returns when it did not repair the fault. Earlier prose called this stub a no-op; the return value is read from the instruction at +0x34.
- `gfx_exit` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x0 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** The process-exit hook for a kernel with no graphics: returns 0 and does nothing else, the value the real `gfx_exit` also returns on every path.
- `gfx_frs_valid_pipenum` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x78 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Reports that no pipe number is valid for the frame-rate scheduler, by returning 0 (the delay slot moves zero into the result). The real function returns 1 for numbers below the board count; this build has no boards.
- `gfx_frs_install` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x80 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Returns at once without touching the result register or any state, so a frame-rate-scheduler install request is silently accepted and nothing is installed.
- `gfx_frs_uninstall` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x88 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** The removal counterpart: a bare return with an empty delay slot, so an uninstall request does nothing and leaves the result register as the caller had it.
- `gfx_shalloc` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x58 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Share-group allocation hook with graphics absent. It returns immediately, so no group record is created for the process.
- `gfx_shcheck` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x48 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Share-group teardown hook with graphics absent. It returns immediately and releases nothing, as there is no thread or connection state to remove.
- `gfx_shdup` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x50 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Share-group duplication hook with graphics absent. It returns immediately, so a forked child gets no graphics record.
- `gfx_shfree` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x60 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** Share-group release hook with graphics absent. It returns immediately, because no group was ever allocated by `gfx_shalloc`.
- `rrmSuspend` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x38 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** The rendering-manager suspend entry for a kernel with no manager. A bare return, so the scheduler's request to take graphics state off a pipe does nothing.
- `rrmResume` (`IP27boot/gfxstubs.a(gfxstubs.o)` at +0x40 for 8 bytes):
  The IP35 copy of the object has the same code. **Established.** The rendering-manager resume entry for a kernel with no manager. A bare return, so a request to put graphics state back on a pipe does nothing.

## Rendering resource manager: `rrm.o`

`IP27boot/rrm.o` and `IP35boot/rrm.o` hold the same code for the entries below unless an entry says the IP35 object differs; the four that differ do so only in a fixed address or a register assignment. Offsets are `.text` offsets. `node` is a 176-byte rendering node, `pane` a 184-byte window record and `pipe state` the board's private record; their fields are listed in [kernel.md](kernel.md#rendering-resource-manager-rrmo). "Board operation +N" is a slot of the board function table at connection +32.

- `RRM_init` (`IP27boot/rrm.o` at +0xf7c for 172 bytes):
  **Established.** Initialises the node and pane tables of the whole driver once. For each rendering-node slot from 1 to `rrm_maxrn`-1 it marks the node free (byte +82 set to 1) and `init_sema`s that slot's entry of `RRMcall_sema`; it stores `rrm_maxrn` into `max_pane` and calls `init_panes`. It allocates nothing, because `RRMrn`, `rrm_pane` and `RRMcall_sema` are external arrays, and slot 0 is never made available.
- `RRM_init` (`IP35boot/rrm.o` at +0xf7c for 172 bytes):
  **Established.** The same one-time initialisation as the IP27 object, with the same loop, semaphore initialisation, `max_pane` store and `init_panes` call. The two builds differ only in which of two registers holds the `RRMcall_sema` address and which the "RRMcall_sema" name string, a compiler choice with no effect on behaviour.
- `RRM_Init` (`IP27boot/rrm.o` at +0x1028 for 72 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Per-board initialisation: initialises the board's spinlock at pipe state +48 (name "bdatalock") with `spinlock_init` and its big semaphore at +56 (name "gfxsema", count 1) with `init_sema`. Nothing else is touched. `GfxRegisterBoard` calls it when a board registers.
- `init_panes` (`IP27boot/rrm.o` at +0xdc4 for 224 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Prepares every pane for use. It initialises the pane-pool semaphore ("panesema") and then, for each of `max_pane` panes, the validation semaphore at +40, the two sleep points at +64 and +72 (`init_sv`) and the pane spinlock at +80 (`spinlock_init`). It does not clear the panes or the free list; those start zeroed as external storage.
- `pane_validmask` (`IP27boot/rrm.o` at +0x504 for 8 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Returns the pane's valid-resource mask: a load of the halfword at pane +12 in the delay slot of the return, with no locking. Callers combine it with a node's valid mask to see which resources are current.
- `invalidate_pane` (`IP27boot/rrm.o` at +0x50c for 140 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Marks resources of a window as no longer valid. It finds the pane with `clip2pane` (no pane: returns 0), widens a mask that contains CLIP (0x2) with READ (0x40), clears those bits from the pane's valid mask under the pane spinlock and returns the mask as it was before.
- `validate_pane_buffer` (`IP27boot/rrm.o` at +0x878 for 80 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Declares the pane's buffer valid and wakes anyone waiting for it. Under the pane spinlock it ORs BUFFER (0x4) into the valid mask and calls `sv_broadcast` on the sleep point at +72, so every process parked in `validate_my_pane_buffer` runs again.
- `validate_pane_clip` (`IP27boot/rrm.o` at +0x614 for 452 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Installs the clip the window manager computed for a window. It finds the pane for the clip id (none: returns 0), allocates the 224-byte piece list on first use with `kern_malloc` and copies the caller's pieces in with `copyin` (14 on a fault, with the "copyin botch" notice from `cmn_err`). Under the pane spinlock it copies the 64-byte clip record into pane +96, bumps the serial at +8, updates mode and displayed bank, sets CLIP and READ in the valid mask, and wakes a process sleeping on +64 with `sv_signal` after releasing the pane semaphore with `vsema` when nobody else is still waiting.
- `validate_pane_swapbuf` (`IP27boot/rrm.o` at +0x7d8 for 160 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Declares a window's swap-buffer id valid, the SWAPBUF counterpart of `validate_pane_clip`. It finds the pane with `clip2pane`, and under the pane spinlock stores the new swap-buffer id at +20 and sets SWAPBUF in the valid mask. If a process was waiting for it (bit 0x8 of the waiting mask) it clears that bit, and when no wait is left it clears the owner and releases the pane semaphore with `vsema`; it then wakes the sleeper on +64 with `sv_signal`. A missing pane does nothing; the result is always 0.
- `pane_cleanup` (`IP27boot/rrm.o` at +0x408 for 180 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Detaches a window that the manager says is gone. It finds the pane with `clip2pane`; under the pane-pool semaphore and the pane lock it sets the clip id to 0 and clears CLIP, SWAPBUF and READ from the valid mask, wakes a sleeper on +64 (`sv_signal`) and releases the pane semaphore when a validation was pending, and takes the pane out of its swap group with `rrmSwapUnGroup`.
- `RRM_UnbindRNFromClip` (`IP27boot/rrm.o` at +0x18f0 for 36 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The manager's request to drop a window: it calls `pane_cleanup` with the clip id from the argument block and the connection, and returns 0 whatever the pane did. The node id in the block is not used.
- `RRM_BindRNToReadAndClip` (`IP27boot/rrm.o` at +0x1554 for 768 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Binds a rendering node to a draw window and a read window. A clip id of 0 returns 22. A node that already had panes first waits for its buffer (`validate_my_pane_buffer`) and drops them with `unbind_pane`; then `bind_pane` supplies the draw pane and, when the read clip id differs, a second pane for reading. If either pane lacks its valid bits it unmaps the pipe (`rrmUnMapGfx`) and tells the manager with a 3-word board message through `GfxMessage`; if both are valid and the node is current it sends the clip to the board with operation +80. A connection with no manager gets 14.
- `RRM_OpenRN` (`IP27boot/rrm.o` at +0x1914 for 732 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Creates a rendering node for a connection. Holding the pipe's big semaphore it demands an id of -1 (else 22), takes the first free slot (12 when none), zeroes the 176-byte node keeping its reuse count, builds the id from reuse count and slot, sets the request mask (always PCX, BUFFER, RETRACE, MESSAGE and REFERENCE, with CLIP only for a client that asked for it), calls board operation +64 to create the node (a nonzero answer returns 12) and counts the node in the pipe state. An OpenGL connection gets the id written back as it is; others get a 16-byte link on their open list.
- `rrmUnbindProcFromRN` (`IP27boot/rrm.o` at +0x13b4 for 176 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Detaches a connection from the node it is bound to. It returns -1 when none is bound; otherwise, for a non-OpenGL connection with a share group, it finds the thread (`curthreadhandle`, `gthread_find`) and takes the list writer lock (`GfxListWriterLock`) around `rrmDoUnMapGfx` and clearing the bound-node pointer (+72), then returns 0.
- `rrmInvalidateRN` (`IP27boot/rrm.o` at +0x1168 for 192 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Clears resource bits from a node's valid mask so the next pipe access has to revalidate them. It first takes the pipe's big semaphore if the connection does not own it, then under the node spinlock removes the bits; it returns 0 when every requested bit was valid beforehand and -2 when some were already invalid.
- `RRM_InvalidateRN` (`IP27boot/rrm.o` at +0x1228 for 396 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The manager's command to invalidate a window's resources. A mask outside 0xff or with bits other than CLIP, SWAPBUF, READ and REFERENCE returns 22. It calls `invalidate_pane`; when SWAPBUF is among the bits it cancels a scheduled swap with board operation +144 (a result of 2 means the swap is in flight, so it invalidates the node's retrace bit and has operation +152 schedule a retrace wake-up). It copies the old valid mask back to the caller (14 on a fault).
- `RRM_ValidFault` (`IP27boot/rrm.o` at +0x3378 for 880 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The fault path that maps the pipe for a connection that touched it unmapped. A connection with no bound node, or whose node has no clip and asks for one, is killed with SIGKILL (`psignal`) and a notice. Otherwise, holding the big semaphore, it loops until every requested resource of the node is valid: `rrmValidateMyRetrace`, `validate_my_pane_resources` for the draw and read panes and `rrmValidateMyPcx`, restarting whenever the semaphore was lost. It then locks the mapping (`ddv_lock`) and calls the board's map operation (+96), returning its result.
- `RRM_CheckValidFault` (`IP27boot/rrm.o` at +0x36e8 for 96 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Makes sure the caller's pipe is mapped before a handler works on it. A mapped connection (flag bit 0x1) returns 0 at once; an unmapped one that is not a diagnostic connection and has no manager gets -1; otherwise it calls `RRM_ValidFault` with address 0 and returns 0 on success and -1 on failure.
- `RRM_Dispatch` (`IP27boot/rrm.o` at +0x4670 for 1148 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The entry for ioctl commands 1000 to 1099. It looks the command up in a 26-entry table of handler, argument size, manager flag and name, returning 22 for a command outside the range or an empty slot, and copies the argument in with `copyin` (14 on a fault) or `copyin_xlate` for the two 32-bit-aware commands. It takes the big semaphore for a manager's command, finds and validates the node named in the argument (22 or 13 for a bad or foreign node), takes `RRMcall_sema` for the slot when the command is a client command, and returns the handler's result.
- `RRM_ValidateClip` (`IP27boot/rrm.o` at +0x3278 for 256 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The manager's command that supplies a window's clip. It takes the big semaphore if the connection does not own it, raises the nesting count, and when the pipe's current node is bound to the same clip id first calls `RRM_CheckValidFault` (a negative answer yields 14). It then calls `validate_pane_clip` with the argument block and lowers the nesting count again.
- `RRM_ValidateSwapBuf` (`IP27boot/rrm.o` at +0x2a84 for 72 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The manager's command that supplies a window's swap-buffer id: `RRM_CheckValidFault` first (a negative result returns 14), then `validate_pane_swapbuf` with the clip id at +4 of the block and the value at +8.
- `rrmValidateBuffer` (`IP27boot/rrm.o` at +0x2acc for 68 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Marks a node's draw pane buffer valid for the next swap. When the pipe state's swap-wait enable (+160) is set it sets the pane's next-swap time to the swap interval plus the swap-wait clock at +164, then calls `validate_pane_buffer` to set BUFFER and wake sleepers.
- `irix5_to_RRM_ValidateClip` (`IP27boot/rrm.o` at +0x4aec for 208 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The 32-bit-caller converter for the clip block, run by `copyin_xlate`. In its size pass it reports a 56-byte source image and picks the staging buffer (the built-in one, or `kern_malloc` of 56 bytes if that is too small); in its convert pass it expands the image to the native 64-byte block, widening the piece-list pointer at +28 into the 8-byte slot at +32 and shifting the remaining words up by 4 bytes.
- `RRM_SwapBuf` (`IP27boot/rrm.o` at +0x3838 for 668 bytes):
  **Established.** The client's buffer-swap command. It makes sure the node requests SWAPBUF (`rrmSetResourceMask`), may wait for its slot with `rrmSwapWait` when swap-wait is enabled and the window has a swap interval (a nonzero answer returns 4), checks the pipe is mapped (`RRM_CheckValidFault`, 14 on failure) and records the swap-buffer id and mode; an OpenGL connection also flips the pane's displayed bank. It invalidates the BUFFER bit with `invalidate_pane`, asks the board to schedule the swap (operation +136) and, when that succeeds, unmaps the pipe (`rrmUnMapGfx`) and adds 1 to the per-CPU counter at +20 of the CPU's `gfxinfo` record, indexed by the halfword at 0xffffffffffffc420.
- `RRM_SwapBuf` (`IP35boot/rrm.o` at +0x3838 for 668 bytes):
  **Established.** The same swap command as the IP27 object: the same resource-mask update, swap-wait, mapping check, bank flip, board operation +136 and final unmap. The one difference is the CPU number for the statistics counter, which this object reads from the halfword at 0xffffffffffffc428 instead of 0xffffffffffffc420.
- `RRM_SetSwapInterval` (`IP27boot/rrm.o` at +0x41e4 for 40 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Sets how many retraces a window waits between swaps. A negative interval returns 22 (the value is loaded in the branch delay slot); otherwise it stores the interval in the node (+32) and in the node's draw pane (+24) and returns 0.
- `RRM_SwapGroup` (`IP27boot/rrm.o` at +0x3c4c for 312 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Puts a window into a swap group so its swaps happen together. No pane for the window gives 2; a pane already grouped leaves its old group through `rrmSwapUnGroup`. A second id of 0 starts a new 12-byte group from `kern_malloc` with the pane as a ring of one; otherwise the named member must exist (9), be grouped (15) and be on the same pipe (6), and the pane is linked into its ring under the pane-pool semaphore with the group count raised.
- `rrmSwapUnGroup` (`IP27boot/rrm.o` at +0x3ad4 for 248 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Takes a pane out of its swap group, with the pane-pool semaphore held by the caller. It lowers the group's outstanding-swap countdown when the pane has not yet swapped this round, clears the pane's group pointer, unlinks it from the ring and subtracts 1 from the group's member count; when that reaches 0 it clears the group from every swap-ready line slot of the pipe state and frees the record with `kern_free`.
- `RRM_SwapReady` (`IP27boot/rrm.o` at +0x3d84 for 360 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Connects a swap group to one of the pipe's swap-ready lines, or disconnects it. A line number at or above the line count (+176) gives 37; no pane gives 2, a pane on another pipe 6 and an ungrouped pane 15. Turned on, an empty line slot takes the group (0), a slot already holding this group gives 17 and another group's slot 16; turned off, the slot is cleared if it holds this group (0) and otherwise the call returns 9.
- `RRM_LoadDisplayMode` (`IP27boot/rrm.o` at +0x2c3c for 336 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The manager's command to load a display mode into a mode slot. It finds the pane with `clip2pane` and refuses one that already has a swap-buffer id (22), as it does a slot number outside the pipe's mode count. It calls the board's set-display-mode operation (+160); a negative result is returned negated. Otherwise it stores the mode in the pane and in the pipe's mode table, and when the board answered 1 it invalidates the bound node's retrace bit (`rrmInvalidateRN`), has operation +152 schedule a retrace wake-up and unmaps the pipe.
- `RRM_MGR_SwapBuf` (`IP27boot/rrm.o` at +0x3f90 for 196 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The manager's own swap command, which swaps on behalf of a window. After `RRM_CheckValidFault` (14 on failure) it records the hardware mode word at +16 of the block in the pipe's mode table, asks the board to schedule a manager swap (operation +168) and returns a failure negated. On success it finds the window's pane with `clip2pane` and sets its displayed bank from bit 2 of the mode word.
- `RRM_SetVideoSync` (`IP27boot/rrm.o` at +0x4318 for 20 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Writes the application's video-sync counter: the value at +4 of the argument block is stored at pipe state +128, and the result is 0. This is the same word `RRM_GetVideoSync` reads and `rrmValidateVideoSync` advances.
- `RRM_GetVideoSync` (`IP27boot/rrm.o` at +0x432c for 68 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Returns the video-sync counter to the caller: reads pipe state +128 into +4 of the argument block, copies 8 bytes out to the user address (14 on a fault) and returns 0.
- `rrmWaitVideoSync` (`IP27boot/rrm.o` at +0x43dc for 220 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Sleeps a node until the video-sync counter reaches a chosen phase. An interval below 1, a negative remainder or a remainder not below the interval returns 22. Under the pipe-state spinlock it stores interval (+144) and remainder (+148) in the node and pushes the node on the sleeper list at pipe state +136, then sleeps on the node's sleep point with `sv_wait_sig`; an interrupt returns -1.
- `rrmValidateVideoSync` (`IP27boot/rrm.o` at +0x44b8 for 320 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The per-retrace service of the video-sync list. Under the pipe-state spinlock (`mutex_spinlock`) it walks the sleeper list, wakes with `sv_signal` each node whose counter modulo its interval equals its remainder after storing the counter in node +152, then wakes swap-wait sleepers whose next-swap time has arrived. Called from `kona_video_tick` in `kona_video.o`; the shipped objects divide by the interval without a zero check.
- `rrmValidateRetrace` (`IP27boot/rrm.o` at +0x2e5c for 80 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Declares a node's retrace resource valid. Under the node spinlock (`mutex_spinlock`) it ORs RETRACE (0x10) into the node's valid mask and wakes the process sleeping in `rrmValidateMyRetrace` with `sv_signal` on the sleep point at +48. Called from `kona_gsync_complete` in `kona_video.o`.
- `rrmSetResourceMask` (`IP27boot/rrm.o` at +0x29c4 for 192 bytes):
  Also in `IP35boot/rrm.o`. **Established.** Changes which resources a node asks for. Under the node spinlock it compares the new request with the current valid mask (merged with the draw pane's mask when CLIP is requested); if a newly requested bit is not valid it unmaps the pipe with `rrmUnMapGfx` so the next access faults and validates it, then stores the new mask. It returns nothing useful.
- `rrmValidateMyPcx` (`IP27boot/rrm.o` at +0x3024 for 596 bytes):
  **Established.** Gives a node its hardware context slot when the PCX resource is requested and not valid. It returns 0 when PCX is already valid; otherwise it raises the nesting count, invalidates the previously current node (`rrmInvalidateRN`), picks a slot with `rrmAllocPcxid` and either swaps contexts with a victim (board operation +120) or switches to this node (+128), records the node in the slot table, bumps the per-CPU counter at +8 of the `gfxinfo` record indexed by the halfword at 0xffffffffffffc420, makes the node current and sets PCX valid. The first time it also releases the big semaphore (`splhi`, `vsema`). A negative board result returns -1.
- `rrmValidateMyPcx` (`IP35boot/rrm.o` at +0x3024 for 596 bytes):
  **Established.** The same context-slot validation as the IP27 object: the same slot allocation, board operations +120 and +128, current-node update and first-time semaphore release. It differs only in reading the CPU number for the `gfxinfo` counter from the halfword at 0xffffffffffffc428 instead of 0xffffffffffffc420.
- `rrmSuspend` (`IP27boot/rrm.o` at +0x2170 for 936 bytes):
  Also in `IP35boot/rrm.o`. **Established.** The scheduler's switch-out of a thread's graphics connections. It finds the thread record (`gthread_find`), refuses with a notice from `cmn_err` when the thread was preempted while holding the pipe (flag bit 0x1), marks it suspending and walks its connection list under `GfxListReaderLock`, calling the board's suspend operation (+176) for each connection. A connection that owns the big semaphore with nesting 0 gives it up at raised priority (operation +192, owner cleared, `vsema`, `splx`) unless the suspend operation asked to keep it.
- `rrmResume` (`IP27boot/rrm.o` at +0x2518 for 1196 bytes):
  **Established.** The switch-in counterpart. Pinned to its CPU with `rt_pin_thread` and read from the halfword at 0xffffffffffffc420, it walks the thread's connections: OpenGL connections whose CPU bit is not set in the mask at +104 get the board's TLB-invalidate operation (+112) and the bit; mapped connections have their bound node's requested and valid masks re-checked and, when complete, get the big semaphore without sleeping (`cpsema`) and the board's resume operation (+184), otherwise they are unmapped with `rrmDoUnMapGfx` so the next access does the blocking work. It ends with `rt_unpin_thread`.
- `rrmResume` (`IP35boot/rrm.o` at +0x2518 for 1196 bytes):
  **Established.** The same resume path as the IP27 object, with the same pinning, TLB invalidation, mask re-check, non-sleeping `cpsema` and board operation +184. The only difference is the address of the CPU-number halfword it reads, 0xffffffffffffc428 in this build and 0xffffffffffffc420 in the IP27 one.
