# Kernel driver objects, one entry per archive member

The Kona kernel driver is the archive `usr/cpu/sysgen/IP27boot/kona.a` (and the same set under `IP35boot`), with the generic layer in `gfx.o`, `gfxs.a` and `rrm.o` (IRIX 6.5.30m). Each entry says what the object is for, how it reaches the pipe (register offsets of the host-interface window, the widget registers or the command port, or no hardware at all) and where its key routines sit; the member's own routines are `+offset` from the start of its text. **Established** means the routine named was read in the disassembly for this entry; **inferred** means the role is taken from the function-level reading in [kernel-functions.md](kernel-functions.md), whose offsets and sizes were matched to the member's symbol table. Ioctl numbers are those of [kernel.md](kernel.md); register names are those of [hip.md](hip.md) and [xg.md](xg.md).

## `kona.a` members, IP27 build

- `usr/cpu/sysgen/IP27boot/kona.a(kona_info.o)`: **established.**
  One 84-byte routine, `KONAinfo` at +0x0: the board-information ioctl.
  It clamps the caller's length to 1952, calls `copyout` of the block at pipe state +204, returns EFAULT (14) when that fails and otherwise stores the byte count through its fourth argument.
  It touches no register.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_genlock.o)`: **established.**
  A 32-byte member holding only `kona_voc_intr`, the interrupt service for the video-output-clock (genlock) cause.
  It loads the first argument's pointer and calls `rrmGenlockNotify` with that pointer and -1, so a genlock event reaches the resource manager's waiters; no register is read or written here.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_frs.o)`: **established.**
  Two routines that tell the pipe it is under the frame-rate scheduler: `KONAfrsinstall` at +0x0 (80 bytes) takes the state lock at +2576, sets the word at +144 to 1 and stores the scheduler handle at +152, and `KONAfrsuninstall` at +0x50 (68 bytes) clears both under the same lock.
  Neither writes a register; the generic `gfx_frs_install` in `gfx.o` calls them through the board's operation table.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_debug.o)`: **established.**
  A 44-byte member with one routine, `kona_debug_init`, called once from `kona_init`: if its done flag in `.sbss` is already set it prints a warning with `qprintf`, then sets the flag and returns 1.
  It exists so a second initialisation is visible in the console log; nothing else uses it.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_stubs.o)`: **established.**
  An 8-byte member whose only routine, `KONAdownload`, is two instructions (`jr ra` and a zero return value), so the generic download request has no effect on this board.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_geprint.o)`: **inferred.**
  `kona_geprint` at +0x0 (2788 bytes) formats a print request that the geometry-engine microcode left in the event buffer into a line of text for the console, taking the request, an output buffer and its size.
  The IP35 archive holds a byte-identical copy of this member, which the inventory lists once.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_ioctl.o)`: **inferred.**
  `KONAprivate` at +0x0 (2364 bytes) is the board's handler for private ioctls above 9999: it subtracts 10000, jumps through the table at `.rodata` +0x18 and returns an error for an empty slot.
  The slots it serves (10006 `KONA_SETCONFIGINFO`, 10016 `KONA_HEALTH`, 10100 `KONA_DIAG_MAP` and the rest) are tabulated in [kernel.md](kernel.md#kona-private-ioctls).
- `usr/cpu/sysgen/IP27boot/kona.a(kona_crash.o)`: **inferred.**
  Failure handling in three routines: `kona_die` at +0x0 (372 bytes) marks the pipe dead under the state lock at +2168 and quiesces it with the death reason in its second argument, reading `HH_TBUS_STATUS` and `HH_GFIFO_LEVEL` and writing `HH_ODMA_FLUSH` (0x800298); `kona_checkpipe_complete` at +0x174 (100 bytes) finishes a liveness check from GE event 0x105 or its timeout; `kona_checkpipe` at +0x1d8 (888 bytes) is the ioctl that loops a token through the geometry engine to see whether the pipe answers.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_sched.o)`: **established** for the structure, **inferred** for the flow-control details.
  The two scheduler hooks: `KONAsuspend` at +0x0 (400 bytes) takes a connection off the pipe, flushing the gather buffer and returning credits through `gfx_flow_detach_me` when the caller is attached; `KONAresume` at +0x190 (312 bytes) puts it back only when the pipe is alive (death reason 0 or 1 at +2172) and the connection is current, attaching with `gfx_flow_attach_me` and widget register 0x7c.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_setup.o)`: **inferred.**
  The two start-up steps of the board: `KONAinitialize` at +0x0 (304 bytes) leaves the pipe quiet by pulsing `HH_RESET` (0x800300) with 1 then 0, enabling only the parity interrupt through `HH_INTR_ENABLE` (0x800230) and setting the global enable 0x8000 in `HH_INTR_INFO` (0x800220); `KONAstart` at +0x130 (780 bytes) enables the running mask 0xf7c and sends token 497 (`KONA_HP_PIPE_SETUP`) with the scratch page's address pair and its size 16384 to the command port.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_share.o)`: **inferred.**
  The share-group pair behind the ioctl that lets two rendering nodes use one set of memory pools: `kona_share` at +0x0 (248 bytes) joins a node to a group on the pipe's list at +4968 after `RRM_CheckValidFault`, and `kona_unshare` at +0xf8 (172 bytes) leaves it, destroying the group's pipe memory (`kona_mem_destroy`) and DMA pool (`kona_dmapool_destroy`) when the last member goes.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_attach.o)`: **inferred.**
  The connection's attach and detach: `KONAattach` at +0x5c (364 bytes) fixes the user address-space layout from a four-entry range table (the address must be 16 KB aligned or the call fails with EINVAL; a pipe without a flow object gets ENODEV), `KONAdetach` at +0x1c8 (84 bytes) releases the region and runs `kona_diag_map_cleanup`, and `new_pipe_to_region` at +0x0 reassigns a mapping to another connection.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_map.o)`: **inferred.**
  The mapping operations of a connection: `KONAmapgfx` at +0x0 (860 bytes) is the first-touch fault that places the FIFO page (window +0xc10000), the host-interface page and the other pipe pages in the process with four `v_mapkvsegment` calls and attaches the process to flow control; `KONAunmapgfx` at +0x35c (260 bytes) detaches it, writing 1 to widget register 0x7c and reading it back; `KONAinvaltlb` at +0x460 (84 bytes) flushes the address space and sets the current CPU in the 128-bit mask at +104.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_flow.o)`: **inferred.**
  Software flow control for writers to the pipe's FIFO: `kona_flow_init` at +0x0 sets the defaults and the high mark `HH_GFIFO_HI` (0x800210); `kona_hiwater_intr` at +0x1e8 (740 bytes) parks a thread that wrote into a full FIFO, spinning on `HH_GFIFO_LEVEL` (0x800208) and arming `kona_hiwater_timeout` at +0x84; `kona_lowater_intr` at +0x4cc wakes it; `kona_diag_flow` at +0x5a4 is the ioctl 10101 switch that turns credit-based writes off and on.
  The same file holds the kernel's only two register accessors that do the work, `gfx_pio_write_32` at +0x9f0 (a store followed by `sync`) and `gfx_pio_read_32` at +0xa10 (a plain load).
- `usr/cpu/sysgen/IP27boot/kona.a(kona_timeout.o)`: **inferred.**
  The driver's own delta-sorted timeout list, driven by one kernel timer: `kona_timeout` at +0x3f0 (400 bytes) inserts a record, `kona_untimeout` at +0x580 removes it, `kona_timein` at +0xc8 advances the list by a tick, `kona_sched_tick` at +0x2b4 arms the timer through `itimeout` and `kona_callout` at +0x1b4 (256 bytes) is the watchdog that reads `HH_TBUS_STATUS` (0x8003a8) and logs "pipe hung".
  `kona_gfifo_spin` at +0x6ac (344 bytes) is the kernel-side wait for a full FIFO.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit.o)`: **inferred.**
  Allocation and registration of the pipe's state: `kona_alloc_bdata` at +0x0 (564 bytes) builds the state record, `kona_init_flow_control` at +0x250 creates the hub flow object with `gfx_flow_alloc`, `kona_register_board` at +0x2c4 calls `GfxRegisterBoard` with the Kona operation table, `kona_inventory_board` at +0x2ec adds the pipe to the inventory (class 7) and `kona_init_board_mapping` at +0x31c sets up the I/O-space allocator and tests the map RAM.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_edtinit_hip2.o)`: **inferred.**
  The Crosstalk side of attach: `kona_attach` at +0xed4 (1268 bytes) finds the widget, maps its window with `xtalk_piomap_alloc`, takes three interrupts and reads the board identity; `kona_reset_adaptor` at +0x13c8 (620 bytes) resets the widget and writes the control, interrupt-destination, timeout and water-mark registers (widget offsets 0x24 to 0x74); `kona_report_errs` at +0xd0 (1308 bytes) decodes the error status at widget offset 0x6c; `kona_extract_nic_info` at +0x69c (2104 bytes) parses the serial-number string of the pipe.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_intr.o)`: **inferred.**
  The two event decoders: `kona_arm_intr` at +0x0 (528 bytes) reads the event the ARM firmware leaves in `HH_ARM_MBOX` (0x800240) and acts on it, and `kona_ge_intr` at +0x210 (912 bytes) decodes the record the geometry-engine microcode leaves in the host buffer at +2584, reading the `HH_ODMA_*` position registers (0x800260 to 0x8002b8).
- `usr/cpu/sysgen/IP27boot/kona.a(kona_intr_hip2.o)`: **inferred.**
  The interrupt entry points registered for the HIP2 host interface: `kona_xg_intr_handler` at +0x0 (112 bytes) kills the pipe with reason 12 on any widget error, `kona_intr_handler` at +0x70 (588 bytes) reads `HH_INTR_STATUS` (0x800238), masks it with the enable shadow and dispatches the low-water, video, ARM and genlock causes, and `kona_ge_intr_handler` at +0x2bc (88 bytes) runs `kona_ge_intr` and writes 0x20 to the status register to clear the cause.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_mapram_hip2.o)`: **inferred.**
  The map RAM that lets the pipe DMA to host pages: `kona_mapram_init` at +0x8 (192 bytes) tests and fills it through the widget window at 0x100000, `kona_mapram_map` at +0xc8 (328 bytes) points consecutive entries at a buffer's physical pages, and the 8-byte routines `kona_mapram_pagesizeshiftof` (constant 14), `kona_mapram_unmap` and `kona_mapram_select_id_mask` do nothing but return.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_ddrn.o)`: **inferred.**
  Creation and destruction of a rendering node: `KONAcreateddrn` at +0x0 (224 bytes), `kona_mopup_complete` at +0xe0 (120 bytes, completion of GE event 0x103) and `KONAdestroyddrn` at +0x158 (1228 bytes), which asks a live pipe to drop the node's context and waits on the semaphore at +5320.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_context.o)`: **inferred.**
  Context switching and clip validation: `KONApcxswap` at +0x680 (2068 bytes) makes a node's context the one the pipe runs, `kona_act_pcx` at +0x124 (1372 bytes) restores the incoming node's pipe memory and DMA pool, `kona_deact_timeout` at +0x9c covers a deactivation the pipe never reports, `KONAvalidateclip` at +0xec8 (1288 bytes) sends clip packets bracketed by `HH_GINTR_INFO` (0xc00108) kicks, and `KONAsetnullclip` at +0x13d0 resets a clip record.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_dma.o)`: **inferred.**
  DMA between host and pipe in 23 routines: `lock_dmavec` at +0x0 pins a user vector, `kona_dmaread` at +0x130 and `kona_dmawrite` at +0x268 are the pipe-to-host and host-to-pipe ioctls, `kona_idma` at +0x4cc (756 bytes) sends one descriptor, `kona_dmapool` at +0xa44 gives the pipe a fetch pool, `kona_start_selectfeed` at +0xcf4 and `kona_finish_selectfeed` at +0x1158 move feedback and selection results, `kona_diag_map` at +0x15b8 (536 bytes) serves ioctl 10100, and seven converters from +0x17d0 (`abi32_to_kona_dmaread_args` and its siblings) widen a 32-bit caller's arguments.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_mem.o)`: **inferred.**
  The pipe-memory pools in 23 routines, the largest member (32148 bytes): `kona_mem_alloc` at +0x213c (1336 bytes) reserves a block for a node, the sender routines `kona_mem_swapout_func` (+0x40), `kona_mem_swapin_func` (+0x434, token 482), `kona_mem_copydown_func` (+0x7d8, token 481) and `kona_mem_reserve_func` (+0xd48, token 484) put the commands on the command port, and `kona_mem_swapout_complete` and `kona_mem_swapin_complete` finish them from GE and ARM events 0x102.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_nclops.o)`: **inferred.**
  The multi-pipe network: `kona_nclops_discover` at +0x144 (4244 bytes) finds which pipes are cabled in a ring and records the topology, `kona_nclops_configure` at +0x11d8 and `kona_nclops_query_config` at +0x162c are the configure and query ioctls for network ids 0 to 63, `kona_nclops_bind` and `kona_nclops_unbind` tie a pipe's rendering to its network, and `kona_nclops_swapped` at +0x1968 counts swaps from `kona_video_intr`.
  It reaches the pipe through `HH_VC_ADDRESS` and `HH_VC_DATA` (0x8003c0 and 0x8003d0) and bit 1 of register 0xe200 of the master pipe.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_tport.o)`: **inferred.**
  The kernel textport on the pipe: each drawing primitive sends token 1 and a sub-command to the command port (`kona_mapcolor` at +0x154 sends 1 and 3, `kona_point` at +0x2d8 1 and 6, `kona_box` at +0x438 1 and 5, `kona_bitmap` at +0x870 1 and 10, `kona_tportinit` at +0xb78 1 and 8), `kona_alive` at +0xdd4 asks whether the firmware runs, `kona_tport_reset_adaptor` at +0xf48 and `kona_earlyinit` at +0x10c4 bring up the crossbar link and register the console early, and `kona_fc_attach` at +0x1668 and `kona_fc_detach` at +0x179c bracket the console's flow-controlled writes.
- `usr/cpu/sysgen/IP27boot/kona.a(kona_video.o)`: **inferred.**
  Video, swap and retrace in 21 routines: `KONAschedswapbuf` at +0x6e8 (1576 bytes) sends one window's buffer swap and queues its retrace record, `kona_retrace_setup` at +0x3c8 and `kona_retrace_activate` at +0x468 manage the queue, `kona_video_intr` at +0x17b8 (1172 bytes) serves bit 3 of `HH_INTR_STATUS`, `kona_enable_dac_cursor` at +0x1694 programs the eight channels' cursor generators through `HH_VC_ADDRESS`, and `kona_get_xy_channel` at +0x1d18 answers which video channel owns a screen position.
- `usr/cpu/sysgen/IP27boot/kona.a(gfx_io_space.o)`: **established** for the allocator structure.
  The pipe I/O-space allocator, seven routines: `grow_chunk_pool` at +0x0 takes one 16 KB page and cuts it into 409 chunk records of 40 bytes, `get_chunk` at +0xa4 and `free_chunk` at +0xe8 pop and push the free list, `init_gfx_io_space` at +0x128 builds a board's table, and `alloc_gfx_io_space` at +0x24c (472 bytes) and `free_gfx_io_space` at +0x424 (628 bytes) allocate and release an extent first-fit.
  It writes no register; the map RAM is programmed by the caller.
  The IP35 archive holds the identical object.

## Generic layer and resource manager

- `usr/cpu/sysgen/IP27boot/gfx.o`: **inferred.**
  The board-independent graphics layer: 62 routines, `gfxopen` at +0x1fb8 (1208 bytes) makes one connection per open, `gfxclose` at +0x24d8 (1400 bytes) undoes it, `gfxioctl` at +0x2b88 (2004 bytes) serves ioctls 100 to 113 and the board-private commands, `GfxRegisterBoard` at +0xa64 enters a board in the table, `gfxinit` at +0x1d80 starts the layer, and the thread and group tables (`gthread_find` at +0x800, `gfx_group_find` at +0x188) track which processes hold connections.
- `usr/cpu/sysgen/IP27boot/gfxs.a(gfx.o)`: **inferred.**
  The copy of the generic layer that sits inside the streams archive: 53828 bytes against 53816 for `gfx.o`, with the same 62 routines (`gfxopen`, `gfxclose` and `gfxioctl` among them).
- `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_debug.o)`: **established.**
  A 1220-byte member with no code and no data, only DWARF records (`.debug_info` 0x1d0 bytes, `.debug_abbrev` 0x200, `.debug_frame` 0x20d) and a five-entry symbol table of section symbols.
  Having no text section, it contributes nothing to the running kernel.
- `usr/cpu/sysgen/IP27boot/gfxs.a(gfx_flow.o)`: **inferred.**
  The hub flow-control layer, 19 routines: `gfx_flow_alloc` at +0x23c (916 bytes) builds the 112-byte flow record of a pipe and registers it with the hub, `gfx_flow_attach_me` at +0x6b8 and `gfx_flow_attach_me_finish` at +0x810 attach the calling CPU, `gfx_flow_detach_me` at +0x85c detaches it, and `gfx_flow_credit_total_get` at +0x650, `gfx_flow_credit_bias_get` at +0x65c and `gfx_flow_credit_count_get` at +0x668 answer the credit questions.
- `usr/cpu/sysgen/IP27boot/gfxs.a(klconfig.o)`: **established.**
  One routine, `find_gfxpipe` at +0x0 (740 bytes): it reads the node directory through `get_nasid`, requires the directory's first word to be 0x58464552, walks the 64 node ids and builds a list of graphics components (marker 0x0c0de000 at +64) sorted by module and slot, then returns the n-th.
- `usr/cpu/sysgen/IP27boot/gfxstubs.a(gfxstubs.o)`: **inferred.**
  The set of 18 eight-byte routines that satisfy the generic hooks when no graphics is configured: `gfx_exit` at +0x0, `gfx_disp` at +0x8, `gfx_fault` at +0x30, `rrmSuspend` and `rrmResume` at +0x38 and +0x40, the share-group and frame-rate hooks and `tp_dogui` at +0x20, each returning without doing anything.
- `usr/cpu/sysgen/IP27boot/rrm.o`: **inferred.**
  The rendering resource manager, 72 routines: `RRM_Dispatch` at +0x4670 (1148 bytes) takes ioctls 1000 to 1099, `RRM_OpenRN` at +0x1914 creates a rendering node, `RRM_BindRNToReadAndClip` at +0x1554 binds it to a draw and a read window, `rrmValidateMyPcx` at +0x3024 gives it a context slot, `RRM_SwapBuf` at +0x3838 and `RRM_SwapGroup` at +0x3c4c handle swaps, and `rrmSuspend` at +0x2170 and `rrmResume` at +0x2518 save and restore a node's resources.

## IP35 builds

**Established** (the members of the two archives extracted with `ar`, their sections compared with `readelf` and `cmp`). Every IP35 member is the same source compiled with the platform macro changed, so the code is the IP27 code except where the platform's hub differs. Members whose text matches byte for byte differ in the DWARF line table alone, which is 85 bytes (0x55) shorter in each of them.

| Member | Routines | Text bytes | Text bytes that differ | `.debug_line` IP27 / IP35 |
|---|---|---|---|---|
| `IP35boot/kona.a(kona_attach.o)` | 3 | 540 | 0 | 0x743 / 0x6ee |
| `IP35boot/kona.a(kona_context.o)` | 7 | 5128 | 0 | 0x91f / 0x8ca |
| `IP35boot/kona.a(kona_crash.o)` | 3 | 1360 | 0 | 0x70c / 0x6b7 |
| `IP35boot/kona.a(kona_ddrn.o)` | 3 | 1572 | 0 | 0x75c / 0x707 |
| `IP35boot/kona.a(kona_debug.o)` | 1 | 44 | 0 | 0x710 / 0x6bb |
| `IP35boot/kona.a(kona_dma.o)` | 23 | 7136 | 0 | 0xde0 / 0xd8b |
| `IP35boot/kona.a(kona_edtinit.o)` | 6 | 896 | 0 | 0x7b4 / 0x75f |
| `IP35boot/kona.a(kona_frs.o)` | 2 | 148 | 0 | 0x642 / 0x5ed |
| `IP35boot/kona.a(kona_genlock.o)` | 1 | 32 | 0 | 0x646 / 0x5f1 |
| `IP35boot/kona.a(kona_info.o)` | 1 | 84 | 0 | 0x63b / 0x5e6 |
| `IP35boot/kona.a(kona_intr.o)` | 2 | 1440 | 0 | 0x822 / 0x7cd |
| `IP35boot/kona.a(kona_ioctl.o)` | 1 | 2364 | 0 | 0x95e / 0x909 |
| `IP35boot/kona.a(kona_mapram_hip2.o)` | 5 | 544 | 0 | 0x6ec / 0x697 |
| `IP35boot/kona.a(kona_mem.o)` | 23 | 10460 | 0 | 0x11bf / 0x116a |
| `IP35boot/kona.a(kona_nclops.o)` | 13 | 7732 | 0 | 0x117c / 0x1127 |
| `IP35boot/kona.a(kona_sched.o)` | 2 | 712 | 0 | 0x67f / 0x62a |
| `IP35boot/kona.a(kona_setup.o)` | 2 | 1084 | 0 | 0x6d5 / 0x680 |
| `IP35boot/kona.a(kona_share.o)` | 2 | 420 | 0 | 0x6cc / 0x677 |
| `IP35boot/kona.a(kona_stubs.o)` | 1 | 8 | 0 | 0x610 / 0x5bb |
| `IP35boot/kona.a(kona_video.o)` | 21 | 7860 | 0 | 0xe4d / 0xdf8 |

- `usr/cpu/sysgen/IP35boot/kona.a(kona_flow.o)`: **established.**
  Differs from the IP27 member in 3 bytes of 2592 text bytes, all inside `kona_hiwater_intr` at +0x1e8: the per-processor number it reads for its statistics record comes from 0xffffffffffffc428 where the IP27 code reads 0xffffffffffffc420.
  The other 13 routines have the same code hash.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_timeout.o)`: **established.**
  One text byte differs in 2052, again the per-processor number address (0xffffffffffffc428 for 0xffffffffffffc420) inside `kona_callout` at +0x1b4; the other nine routines match.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_intr_hip2.o)`: **established.**
  Three of 788 text bytes differ, the same per-processor address in `kona_intr_handler` at +0x70 and `kona_ge_intr_handler` at +0x2bc; `kona_xg_intr_handler` at +0x0 is unchanged.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_map.o)`: **established.**
  The text is 20 bytes longer (1224 against 1204) and 218 bytes differ: `KONAunmapgfx` at +0x35c clears an eight-word CPU mask where the IP27 routine clears two, and `KONAinvaltlb` sets its bit in that eight-word mask; `KONAmapgfx` at +0x0 is unchanged.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit_hip2.o)`: **established.**
  The text is 12 bytes shorter (5680 against 5692) with 1526 bytes differing: `kona_attach` builds its window address from the node id shifted by 33 bits instead of 32, tests whether a second board shares the crossbar with `get_xbow_peer`, and calls `hub_setup_prb`; `kona_reset_adaptor` at +0x13bc moves for the same node-address shift.
  The other seven routines match.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_tport.o)`: **established.**
  The text is 68 bytes shorter (6120 against 6188) with 1844 bytes differing across `kona_tport_reset_adaptor`, `kona_earlyinit`, `kona_fc_attach` and `kona_fc_detach`: the crossbar link bring-up chooses its port word (0x2e4200 or 0x2a4200) from its target argument, the window address uses the 33-bit node shift, and the flow-control bracket drops the hub error-mask calls and finds the CPU slice from bit 0 of a byte at +1320.
  The other 15 routines match.
- `usr/cpu/sysgen/IP35boot/gfx.o`: **established.**
  Differs from the IP27 object in `gfxopen`, `gfxclose` and `gfxioctl` only; the other 59 routines have the same code hash.
- `usr/cpu/sysgen/IP35boot/gfxs.a(gfx.o)`: **established.**
  The archive copy of the IP35 generic layer: 53732 bytes against 53720 for the stand-alone object, and the same three routines (`gfxopen`, `gfxclose`, `gfxioctl`) differ from the IP27 code.
- `usr/cpu/sysgen/IP35boot/gfxs.a(gfx_flow.o)`: **established.**
  Holds 16 routines where the IP27 member has 19; 8 of those in common have the same code and 8 differ; the function-level entries attribute the change to the IP35 hub's 33-bit node shift.
- `usr/cpu/sysgen/IP35boot/gfxs.a(klconfig.o)`: **established.**
  Five routines where the IP27 member has one: `find_gfxpipe` at +0x0 (816 bytes) scans 128 node ids, `prom_has_vga_support` at +0x330, `find_vga_pipe` at +0x368, `find_vga_noprom_pipe` at +0x688 and `klcheck_vga` at +0xafc add the lookup of a display board the PROM does not drive.
- `usr/cpu/sysgen/IP35boot/gfxstubs.a(gfxstubs.o)`: **established.**
  The same 18 eight-byte stubs as the IP27 member, with identical code hashes; its object is 7300 bytes where the IP27 one is 8948.
- `usr/cpu/sysgen/IP35boot/rrm.o`: **established.**
  Of 72 routines, 68 match the IP27 code and 4 differ (`RRM_init`, `rrmResume`, `rrmValidateMyPcx` and `RRM_SwapBuf`).
- `usr/cpu/sysgen/IP35boot/kona.a(kona_attach.o)`: **inferred.**
  Its 540-byte text section is byte-identical to the IP27 member (0 bytes differ), so the three routines are the IP27 ones: `new_pipe_to_region` at +0x0, `KONAattach` at +0x5c (364 bytes) and `KONAdetach` at +0x1c8 (84 bytes). Board access is the connection's user address-space mapping (the 16 KB alignment check and the four-entry range table), not a register.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_crash.o)`: **inferred.**
  The 1360-byte text section is identical to the IP27 member (0 bytes differ), with `kona_die` at +0x0 (372 bytes), `kona_checkpipe_complete` at +0x174 (100 bytes) and `kona_checkpipe` at +0x1d8 (888 bytes). Board access: `kona_die` reads `HH_TBUS_STATUS` and `HH_GFIFO_LEVEL` and writes `HH_ODMA_FLUSH` (0x800298); the liveness check goes through the geometry engine's token loop.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_ddrn.o)`: **inferred.**
  The 1572-byte text section is identical to the IP27 member (0 bytes differ): `KONAcreateddrn` at +0x0 (224 bytes), `kona_mopup_complete` at +0xe0 (120 bytes) and `KONAdestroyddrn` at +0x158 (1228 bytes). Board access is by geometry-engine events: completion of event 0x103 and the pipe's context drop, with a wait on the semaphore at +5320; no register is named.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_debug.o)`: **inferred.**
  The 44-byte text section is identical to the IP27 member (0 bytes differ) and holds one routine, `kona_debug_init` at +0x0, which prints the repeat-initialisation warning and sets its done flag. Board access: none.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_frs.o)`: **inferred.**
  The 148-byte text section is identical to the IP27 member (0 bytes differ): `KONAfrsinstall` at +0x0 (80 bytes) and `KONAfrsuninstall` at +0x50 (68 bytes), which set and clear the frame-rate scheduler handle under the state lock at +2576. Board access: none; neither writes a register.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_genlock.o)`: **inferred.**
  The 32-byte text section is identical to the IP27 member (0 bytes differ) and holds `kona_voc_intr`, the video-output-clock interrupt service that passes -1 to `rrmGenlockNotify`. Board access: the genlock cause, but no register is read or written here.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_info.o)`: **inferred.**
  The 84-byte text section is identical to the IP27 member (0 bytes differ) and holds `KONAinfo` at +0x0, the board-information ioctl that clamps its length to 1952 and copies out the block at pipe state +204. Board access: none; it touches no register.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_intr.o)`: **inferred.**
  The 1440-byte text section is identical to the IP27 member (0 bytes differ): `kona_arm_intr` at +0x0 (528 bytes) reads the event word the ARM firmware leaves in `HH_ARM_MBOX` (0x800240), and `kona_ge_intr` at +0x210 (912 bytes) reads the `HH_ODMA_*` position registers (0x800260 to 0x8002b8) and decodes the geometry-engine record at pipe host buffer +2584.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_ioctl.o)`: **inferred.**
  The 2364-byte text section is identical to the IP27 member (0 bytes differ), and `KONAprivate` at +0x0 is the same private-ioctl dispatcher: it subtracts 10000 from the request and jumps through the table at `.rodata` +0x18. Board access: the ioctls above 9999 listed in [kernel.md](kernel.md#kona-private-ioctls), no register.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_sched.o)`: **inferred.**
  The 712-byte text section is identical to the IP27 member (0 bytes differ): `KONAsuspend` at +0x0 (400 bytes) takes the connection off the pipe and returns credits through `gfx_flow_detach_me`, and `KONAresume` at +0x190 (312 bytes) puts it back through `gfx_flow_attach_me` and widget register 0x7c when the pipe is alive.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_setup.o)`: **inferred.**
  The 1084-byte text section is identical to the IP27 member (0 bytes differ): `KONAinitialize` at +0x0 (304 bytes) pulses `HH_RESET` (0x800300) with 1 then 0, enables the parity interrupt through `HH_INTR_ENABLE` (0x800230) and sets 0x8000 in `HH_INTR_INFO` (0x800220); `KONAstart` at +0x130 (780 bytes) enables the running mask 0xf7c and sends token 497 with the scratch page's address pair and size 16384 to the command port.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_share.o)`: **inferred.**
  The 420-byte text section is identical to the IP27 member (0 bytes differ): `kona_share` at +0x0 (248 bytes) joins a node to a share group on the pipe's list at +4968, and `kona_unshare` at +0xf8 (172 bytes) leaves it, destroying the group's pipe memory and DMA pool when the last member goes. Board access: the pipe's share-group list and memory pools, no register.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_stubs.o)`: **inferred.**
  The 8-byte text section is identical to the IP27 member (0 bytes differ) and holds one routine, `KONAdownload` at +0x0: `jr ra` with a zero return value, so the generic download request does nothing on this board. Board access: none.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_mapram_hip2.o)`: **inferred.**
  The 544-byte text section is identical to the IP27 member (0 bytes differ). `kona_mapram_pagesizeshiftof` at +0x0 returns the constant 14, `kona_mapram_init` at +0x8 (192 bytes) tests and fills the map RAM through the widget window at 0x100000, `kona_mapram_map` at +0xc8 (328 bytes) points consecutive entries at a buffer's physical pages, and `kona_mapram_unmap` at +0x210 and `kona_mapram_select_id_mask` at +0x218 are 8-byte routines that only return. Board access: `kona_mapram_init` tests and fills the map RAM through the widget window at 0x100000.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_context.o)`: **inferred.**
  The 5128-byte text section is identical to the IP27 member (0 bytes differ, compared with `cmp` on the two `.text` sections cut from the archive members), so its seven routines are the IP27 ones at the same offsets: `clean_up_other_gfxp` at +0x0 (156 bytes), `kona_deact_timeout` at +0x9c, `kona_act_pcx` at +0x124 (1372 bytes), `KONApcxswap` at +0x680 (2068 bytes), `KONApcxswitch` at +0xe94, `KONAvalidateclip` at +0xec8 (1288 bytes) and `KONAsetnullclip` at +0x13d0. Board access: the command port and the `HH_GINTR_INFO` kick (0xc00108), as [kernel-functions.md](kernel-functions.md#context-switching-and-clip-validation-kona_contexto) gives them.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_dma.o)`: **inferred.**
  The 7136-byte text section is identical to the IP27 member (0 bytes differ, compared with `cmp`), so its 23 routines are the IP27 ones at the same offsets: `lock_dmavec` at +0x0, `kona_dmaread` at +0x130, `kona_dmawrite` at +0x268, `kona_idma` at +0x4cc (756 bytes), `kona_dmapool` at +0xa44, `kona_start_selectfeed` at +0xcf4, `kona_finish_selectfeed` at +0x1158, `kona_diag_map` at +0x15b8 (536 bytes) and the seven `abi32_to_*` converters from +0x17d0. Board access: the pipe's command port (+2304 of the state), as [kernel-functions.md](kernel-functions.md#dma-support-kona_dmao) describes.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_edtinit.o)`: **inferred.**
  The 896-byte text section is identical to the IP27 member (0 bytes differ, compared with `cmp`): `kona_alloc_bdata` at +0x0 (564 bytes), `kona_free_bdata` at +0x234 (28 bytes), `kona_init_flow_control` at +0x250 (116 bytes), `kona_register_board` at +0x2c4 (40 bytes), `kona_inventory_board` at +0x2ec (48 bytes) and `kona_init_board_mapping` at +0x31c (100 bytes). Board access: none written directly; `kona_init_board_mapping` calls `kona_mapram_init`, which tests the map RAM through the widget window.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_mem.o)`: **inferred.**
  The 10460-byte text section is identical to the IP27 member (0 bytes differ, compared with `cmp`), so its 23 routines are the IP27 ones at the same offsets: `kona_mem_init` at +0x0 (64 bytes), the sender routines `kona_mem_swapout_func` (+0x40), `kona_mem_swapin_func` (+0x434, token 482), `kona_mem_copydown_func` (+0x7d8, token 481) and `kona_mem_reserve_func` (+0xd48, token 484), `kona_mem_alloc` at +0x213c (1336 bytes), `kona_mem_free` at +0x2674 (616 bytes), and the completions `kona_mem_swapin_complete` (+0x1720), `kona_mem_swapout_complete` (+0x184c) and `kona_mem_suspend_complete` (+0x1980). Board access: the pipe's command port, and the GE and ARM events 0x102 and 0x104 that the completions consume.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_nclops.o)`: **inferred.**
  The 7732-byte text section is identical to the IP27 member (0 bytes differ, compared with `cmp`), so its 13 routines are the IP27 ones at the same offsets: `alloc_new_network_id` at +0x0, `alloc_network_id` at +0x88, `is_ddo3` at +0x100, `is_managed` at +0x128, `kona_nclops_discover` at +0x144 (4244 bytes), `kona_nclops_configure` at +0x11d8, `kona_nclops_query_config` at +0x162c, `kona_nclops_bind` at +0x16f8, `kona_nclops_unbind` at +0x186c, `kona_nclops_swapped` at +0x1968 and `kona_nclops_init` at +0x1e04. Board access: `HH_VC_ADDRESS` (0x8003c0) and `HH_VC_DATA` (0x8003d0), and bit 1 of register 0xe200 of the master pipe.
- `usr/cpu/sysgen/IP35boot/kona.a(kona_video.o)`: **inferred.**
  The 7860-byte text section is identical to the IP27 member (0 bytes differ, compared with `cmp`), so its 21 routines are the IP27 ones at the same offsets: `KONApositioncursor` at +0x74 (92 bytes), `kona_video_rundown` at +0xd0, `kona_swap_complete` at +0x1cc (236 bytes), `kona_retrace_setup` at +0x3c8, `kona_retrace_activate` at +0x468 (640 bytes), `KONAschedswapbuf` at +0x6e8 (1576 bytes), `KONAsetdisplaymode` at +0xd6c (664 bytes), `kona_video_tick` at +0x1468 (112 bytes), `kona_enable_dac_cursor` at +0x1694 (292 bytes) and `kona_video_intr` at +0x17b8 (1172 bytes). Board access: the display generator's `HH_VC_ADDRESS` (0x8003c0) and `HH_VC_DATA` (0x8003d0) pair, and the command port with the `HH_GINTR_INFO` kick (0xc00108) for tokens 486 and 487, as [kernel-functions.md](kernel-functions.md#video-swap-and-retrace-kona_videoo) describes.
