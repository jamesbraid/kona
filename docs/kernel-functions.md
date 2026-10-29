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
- `KONApcxswap` (`kona_context.o` +0x680, 2068 bytes): **Established.** The context-switch operation: it makes a rendering node's context the one the pipe runs. It returns at once if the pipe is dead (+2172). It cleans up other connections of the thread
  (`clean_up_other_gfxp`) and makes the incoming node's blocks resident (`kona_mem_validate`). For the outgoing context it arms the deactivate timeout, sends token 508 (`CONTEXT_DEACTIVATE`) with the context's slot number (a 176-byte slot index), and sleeps on the context semaphore until GE event 0x101. For an incoming context seen before it sends token 505
  (`CONTEXT_LOAD`) with the image length word, the save area's pipe-space address pair and the marker 0xedededed. For a new one it sends token 509 (`CONTEXT_INIT`) with the address pair and 0x10000, then token 498 (`RDATA_SETUP`) with the return-data address pair and 0x4000, and sets the context's initialised flag. It marks the incoming connection used (word +4 gets bit 1) and calls
  `kona_act_pcx`. Each packet is bracketed by kicks of `HH_GINTR_INFO` (0xc00108): 0x30000 before the token, 0x10000 before the payload and 0 at the end, with flow-control attach and detach (widget register 0x7c) around the waits.
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
