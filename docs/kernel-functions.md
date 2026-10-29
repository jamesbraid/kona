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
- `kona_diag_flow` (`kona_flow.o` +0x5a4, 336 bytes): **Established.** Diagnostic switch behind ioctl 10101 that turns the credit-based write path off (argument 0) or on (argument 1). Off clears the low three bits of the interrupt-enable shadow and writes it to
  `HH_INTR_ENABLE` (0x800230). On is refused with EACCES (13) for a dead pipe; otherwise it sets bit 2 of the shadow and writes it to the enable register (the FIFO-overflow cause), flushes the write-gather buffer with `gfx_flow_flush_my_wg`, and, if the caller is not already attached, attaches it with `gfx_flow_attach_me`, writes the credit-return transaction number (state +2248 shifted left once, masked with 0x3e) to the widget register at offset 0x7c, waits with
  `kona_flow_await_returned_credits` and finishes with `gfx_flow_attach_me_finish`. Both paths end by writing 0 (the word at +2360) to the kick register `HH_GINTR_INFO` (0xc00108). Any other argument returns EINVAL (22).
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
- `kona_checkpipe` (`kona_crash.o` +0x1d8, 888 bytes): **Established.** The ioctl that asks the pipe whether it is still alive, by looping a token through the geometry engine. After
  `RRM_CheckValidFault` it returns 0 if a check is already running (+5360). Otherwise it arms a timeout, then writes to the command port (+2304): kick `HH_GINTR_INFO` (0xc00108), the token 477 (`KONA_HP_GE_INTR`), kick, the event number 261 (0x105) as its payload, kick 0. It then sleeps on the semaphore at +5344 until the GE interrupt or the timeout wakes it. The kick value is 0x10000 when the caller's node belongs to the board's manager and 0x30000 otherwise. Returns 0, or EFAULT (14) for a bad caller.

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
- `kona_callout` (`kona_timeout.o` +0x1b4, 256 bytes): **Established.** The pipe watchdog that runs from every timer tick. It does nothing while a kernel debugger holds the current CPU. Otherwise, if the pipe is alive, it reads
  `HH_TBUS_STATUS` (0x8003a8) and counts the pipe as active when bit 2 is set or the ARM interrupt handler has set the activity flag (+5464). A live pipe with no activity (and with the debugger flag clear) logs "pipe hung" (tag 2112) and forces every timeout to fire. It writes 4 to `HH_TBUS_STATUS` and clears the activity flag, then calls `kona_timein`.
- `kona_timeout` (`kona_timeout.o` +0x3f0, 400 bytes): **Established.** Schedules a handler to run after a number of ticks: takes a record from
  `kona_timeout_alloc`, fills it (handler, the delay, the interrupt-level routine and three arguments), inserts it into the list (+5376) so remaining ticks stay delta-coded, and, if the list was empty, arms the tick with `kona_sched_tick` for 500000 us; when arming fails it frees the record and returns 0. Returns the record, used as the handle by `kona_untimeout`.
