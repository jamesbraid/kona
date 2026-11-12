# Kernel driver: DMA ioctl structures

Driver-side view of the 6.5.30m kernel graphics driver. The hardware-visible half is in [hip.md](hip.md). Facts are labelled **established** (disassembly or the 6.5.5 installed header the Kona stack header 6), **inferred** or **unknown**.

## DMA ioctls

**Established** (`kona_ioctl.o` `KONAprivate`, `kona_dma.o`; structures from the 6.5.5 header). The private ioctl numbers are 10000 + n: the DMA-read Kona driver request 0, the DMA-write Kona driver request 1, the start select-feed Kona driver request 2, the finish select-feed Kona driver request 3, the DMA-pool old Kona driver request 7, the DMA-pool Kona driver request 18. The 64-bit kernel has 32-bit-caller converters (`abi32_to_kona_dmaread_args` and siblings) that widen the pointer.

| Structure | Layout (64-bit kernel) |
|---|---|
| `kona_dmavec` | base pointer at 0 (8 bytes), total length at 8, line length at 12, stride at 16, padding to 24. All lengths in bytes. The stride is the gap between the end of one line and the start of the next, so the pitch is line length + stride (the span `unlock_dmavec` releases, [below](#function-reference)). |
| `kona_dmaread_args` | `kona_dmavec` at 0, `hip_data[32]` words at 24, `hip_cmdcnt` at 152 |
| `kona_dmawrite_args` | table pointer at 0, entry count at 8, `hip_data[32]` at 12, `hip_cmdcnt` at 140 (the entries are 24-byte dmavecs) |
| `kona_start_selectfeed_args` | `kona_dmavec` at 0, `snapshot` at 24 |
| `kona_finish_selectfeed_args` | out: word count at 0, overflow flag at 4 |
| `kona_dmapool_args` | address at 0 (8 bytes), length at 8, type at 12, share at 16 |

`hip_data` is an array of command groups: token word, count n, n payload words, `hip_cmdcnt` groups in all (`hip.md`). The kernel writes them, uninterpreted, to the pipe's command port (`P+2304`) between the setup and completion steps of a transfer.

Per-pipe counters and handles the DMA code uses (offsets in the pipe state, names ours; roles from the code that uses them):

| Offset | Role |
|---|---|
| `P+80` | count of operations in flight on the process (incremented around each ioctl, **inferred** from the increment and decrement pairs) |
| `P+5176` | semaphore the writer sleeps on until the pipe reports an input DMA done |
| `P+5192` | timeout handle for an input DMA |
| `P+5200`, `P+5208` | address and length of the input DMA in flight, printed by `kona_idma_timeout` |
| `P+2184` | pipe identity passed to `alloc_gfx_io_space` and `free_gfx_io_space` |

A context's select-feedback record is the 80-byte-or-so object at (context's pointer at +112) + 32: base at 0, length at 8, line length at 12, stride at 16, snapshot at 24, locked length at 28, outstanding word count at 32, status word at 36, pipe address at 40, semaphore at 48, timeout handle at 64, owning process at 72 (`kona_start_selectfeed`, `kona_finish_selectfeed`, `kona_ge_intr`). The owning-process word, private record +104, is also the in-flight flag: `kona_start_selectfeed` refuses with 16 while it is set (`kona_dma.o` 0xd14-0xd28) and stores `curproc` there (0xde4), `kona_finish_selectfeed` clears it (0x13c0), and `kona_mem_suspend` tests it. The object has no separate flag at its own +104. **Established** as offsets; names ours.

### Multi-vector writes (the DMA-write Kona driver request)

**Established** (`KONAprivate`, `kona_ioctl.o` 0x480 and 0x7ac-0x934, 6.5.30m). The 144-byte argument names a table of `kona_dmavec` entries and their count (+8). The kernel checks the caller with `RRM_CheckValidFault`, counts the operation in flight (the connection's board record +80, incremented here and decremented on every exit), then copies the table in: up to seven entries into a fixed area in the pipe state (+2384), eight or more into a `kern_malloc` buffer of 24 x count bytes freed afterwards. Each entry is translated for a 32-bit caller (`abi32_to_kona_dmavec`). The argument's table pointer is replaced with the kernel copy and `kona_dmawrite` sends the transfer ([hip.md](hip.md)). So a caller may pass any number of vectors; nothing in the ioctl path limits the count. The X server modules are the only callers in the inventory (`konDrawImage`, `konWriteFBSubBlock`); how many vectors they pass is in their own documents ([opengl.md](opengl.md)).

### Diagnostic map (`kona_diag_map`)

**Established** (`kona_dma.o` 0x15b8-0x17d0, `kona_diag_map_cleanup` 0x1550, 6.5.30m). The 24-byte argument: user address at +0 (8 bytes), length at +8, the returned high address word at +12, flags at +16, the returned low address word at +20. Flags bits 0-1 choose the operation and bits 2-3 the kind:

- operation 2: release (`kona_diag_map_cleanup`: free the I/O space, unlock the pages, clear the owner) and return 0; any operation other than 1 or 2: EINVAL.
- operation 1 (map), refused with EBUSY (16) when a map already exists (pages locked at pipe state +5240 or I/O space at +5224) or another process owns the map (+5216, the owning process, set here); length 0 gives EINVAL.
- kind 4, a physical address: at most 4096 bytes (else E2BIG, 7). The pages are locked (`lock_dmavec`), `curproc_vtop` gives the page frame, and the kernel returns high word = (frame number x 4) \| 0x10000000 and low word = (offset in a 4 KB page) \| 0x9000.
- kind 8, through the map RAM: the pages are locked, `kona_mapram_pagesizeshiftof` picks the page size and `alloc_gfx_io_space` maps the buffer into the pipe's I/O space; the kernel returns high word = I/O address >> 12 and low word = (I/O address & 0xfff) \| 0x9000.
- any other kind: EINVAL.

One map exists per pipe; the locked vector is kept at +5232-+5248 for the cleanup. The address pair is the same form the kernel puts in its own DMA and context packets, so a diagnostic can hand the pipe a buffer by either route. **Inferred** from the two kinds: bit 28 of the high word marks a physical (unmapped) host address, a page number in 4 KB units, while a word without it is an I/O-space page that the map RAM translates ([hip.md](hip.md)). What bits 15-12 = 9 of the low word select is open ([open-questions.md](open-questions.md#host-interface-hip)).

## Rendering node, drawable and private record

The structures behind `kona_act_pcx`, `KONApcxswap`, the swap code (`docs/dg.md`) and the DMA code are laid out in the comment "Rendering node and drawable" in [kona_kern.h](../kona_kernel/include/kona_kern.h): the 176-byte rendering node, the pane (drawable) with its clip record, swap-group counters and display bank, and the driver's 256-byte private record with the return-data buffer, the 64 KB context save area and the retrace and select-feedback records. **Established** from the driver's accesses cross-checked against the 6.5.5 installed header the Kona stack header 8. The rendering node's +64 is the node's graphics connection, [below](#the-graphics-connection-gfx_gfx). The save area's activate word (+8) is word 2 of the saved context image's header: `KONApcxswap` passes the save area's word 2 to `kona_act_pcx` as the activate token and `CONTEXT_LOAD`'s first payload word is the area's word 0, which the firmware requires to equal the image length ([ge.md](ge.md)). No host code stores either word (no 0x1fa or 506 immediate in any `kona.a` member, `gfx.o`, `rrm.o` or libGLcore); the pipe writes the header when it saves the context. **Who writes word 2, established on the ARM side** (`arm1.u` 6.5.30m): `deactivate_hip` (0x0c021e34-0x0c021e44) keeps the low nine bits of host-interface register 0x20007c, the previous token number (`HA_ICU_PREV_CMD`), as word 6 of its saved block, replacing it with the arrayed-command start token (0x200070) minus 1 when an arrayed command was in progress (0x0c021ecc-0x0c021ed4); it also keeps that token's map entry as word 1. `deactivate_arm` (0x0c0220e8-0x0c022108) then sends word 6 as operand 0 and the constant 2 as operand 1 to the engine handler in slot 181, `mges_ContextDeactStoreValue`, the same handler `deactivate_ged_ge` uses to place four distributor values at indexes 6, 4, 5 and 3. **Inferred on the engine side** (`ge.u` 6.5.30m, [ctx_deact.S listing](../ucode/ge_listing/ctx_deact.S.lst)): that handler stores operand 0 at engine word 0x1333 plus operand 1 (0x6859-0x6862), and `mges_ContextDeactFinish` reads engine words 0x1335 to 0x133a and 0x133c (source lines 834-843) on its way to writing the image header, with the record table pointer 0x133d (word 10) loaded first; so header word k is engine word 0x1333 + k and word 2 is the saved token number. **Why it works, established** (`load_arm` 0x0c020f60-0x0c020f94, `activate_hip` 0x0c020978-0x0c020994): when `CONTEXT_LOAD` brings the saved block back, the firmware rewrites the token-map entry that word 6 names so that it runs `arm_context_activate`; the kernel then sends header word 2 as a token (`kona_act_pcx` step 4), the host interface dispatches it to `arm_context_activate`, and `activate_hip` puts word 1, the original map entry, back. So the activate token is not the constant 0x1fa: it is the number of the last token the context ran before it was switched out, and re-sending it sets the host interface's token registers as they were. The earlier reading of the word as `CONTEXT_ACTIVATE` 0x1fa rested on the token name only and is withdrawn. The `CONTEXT_INIT` path does not use the word: `KONApcxswap` branches from its `RDATA_SETUP` packet (0xa2c) past the call to `kona_act_pcx` (0x820), so a context is activated through this word only after a `CONTEXT_LOAD` of an image the pipe saved.

## The graphics connection (`gfx_gfx`)

**Established** (`gfx.o`, `rrm.o`, `kona_map.o`, `kona_context.o`, 6.5.30m; field names ours). Each open of a graphics device makes a 128-byte connection record (`gfxopen`, `gfx.o` 0x2190-0x21d8: `kern_malloc(128)`, zeroed). The fields the driver uses:

| Offset | Field | Set by | Used by |
|---|---|---|---|
| +4 | flags word | see below | |
| +8 | the board's generic record | `gfxioctl` on attach (`gfx.o` 0x3260, 0x32dc), cleared on a failed attach | `kona_act_pcx` |
| +16 | the owning thread | `gfxopen` | |
| +24 | next connection of the same thread | `gfxopen` | the walk in `clean_up_other_gfxp` and `KONAmapgfx` |
| +32 | the board driver's operation table (copied from the board record +56) | `gfxioctl` on attach | `rrmDoUnMapGfx` (+104 unmap, +96), `rrmValidateMyPcx` (+128, called with the private state, the incoming node and the outgoing node) |
| +40 | the board driver's private state, for this board the pipe state (copied from the board record +64) | `gfxioctl` on attach | `KONAmapgfx`, `rrmValidateMyPcx` |
| +48 | the address-space handle of the mapping | | `KONAmapgfx`, `KONAunmapgfx` |
| +56 | a second flags word (bit 1 set in `gfxopen`) | `gfxopen` | |

Flags at +4 (the 6.5.5 header's `GFX_*` names in parentheses): bit 0 "mapped" (the mapped graphics-driver request), set by `KONAmapgfx` (`kona_map.o` 0x1f0) and cleared by `KONAunmapgfx`; bit 2 "privileged" (the diagnostic graphics-driver request, a thread that identified itself as a diagnostic), set by `gfxioctl` (0x2fa0-0x2fbc) when `drv_priv` grants it, and it selects the privileged mapping ([above](#what-a-process-maps)) and lets `kona_flow_await_returned_credits` take the reset path ([xg.md](xg.md)); bit 1 (the in-use graphics-driver request), set by `KONApcxswap` (`kona_context.o` 0x72c-0x738) on the incoming node's connection before it sends the context packets and read by `rrmResume` (`rrm.o` 0x2714), which treats a connection with it set as one that has talked to the pipe ([below](#suspend-and-resume-rrmsuspend-rrmresume)); it is not the node's own `gr_reqmask` bit that `kona_act_pcx` tests (that is the node's +4, a different object); bit 3 (the OpenGL graphics-driver request), set in `gfxopen` for one open mode; bit 4 (the unmapping graphics-driver request), set while `rrmDoUnMapGfx` calls the unmap operation and cleared after; bit 5 (the diagnostic-map-all graphics-driver request), set by `gfxioctl` after it calls operation +96 for `GFX_MAPALL`.

The generic board record (+8 above) has at +8 the connection that manages the board: `GfxOpen` (`gfx.o` 0x14dc) stores the opening connection there when it is empty, and `GfxUnmanage` and `GfxDetach` clear it. So `kona_act_pcx` step 3 (`kona_context.o` 0x1e8-0x1f4), which loads node+64, then its +8, then that record's +8, and compares the result with node+64, asks "does this rendering node belong to the board's managing connection", the X server. Nodes of the managing connection go straight to the activate token; every other node first sends `VALIDATE_BANK` with its panes' display banks. That resolves the "+8 back-link": it is not a pointer back to the node but the board's manager slot.

`rrmValidateMyPcx` (`rrm.o` 0x30a8-0x3110) calls the switch operation with the outgoing node read from pipe state +8 and then stores the incoming node there, so pipe state +8 is the current rendering node. `KONAmapgfx` maps that node's return-data buffer, and `kona_flow_await_returned_credits` and `kona_diag_flow` read the current connection at pipe state +72.

## Private ioctls

**Established** (`KONAprivate` in `kona_ioctl.o`, 6.5.30m; numbers and argument shapes from the 6.5.5 installed header the Kona stack header 6, checked against the sizes the 6.5.30m code copies in). `KONAprivate` subtracts 10000 from the command and indexes a 103-entry jump table (the Kona kernel driver request-dispatch assembly unit); any other command, and every table slot not listed below, logs a message and returns EINVAL (22). A failed copy returns EFAULT (14). Argument bytes are what the code copies in or out, from the `li $a2,N` before each `copyin`/`copyin_xlate`/`copyout`.

| Number | Header name | In 6.5.30m | Copied in | Handler |
|---|---|---|---|---|
| 10000 | the DMA-read Kona driver request | yes | 160 (translated for a 32-bit caller) | `kona_dmaread` ([hip.md](hip.md)) |
| 10001 | the DMA-write Kona driver request | yes | 144 | `kona_dmawrite` |
| 10002 | the start select-feed Kona driver request | yes | 32 | `kona_start_selectfeed` |
| 10003 | the finish select-feed Kona driver request | yes | none; 8 out | `kona_finish_selectfeed` |
| 10005 | the select cursor Kona driver request | yes | 16 | `kona_select_cursor` ([dg.md](dg.md#cursor)) |
| 10006 | the set-configuration-information Kona driver request | yes | 1912 | copied into the pipe state at +244, then `kona_mem_init` and `kona_nclops_init` run |
| 10007 | the DMA-pool old Kona driver request | **no**: default slot, EINVAL | | the 6.5.30m driver has only the DMA-pool Kona driver request (10018) |
| 10008 | the debug ioctl Kona driver request | **no**: returns EINVAL without calling anything | | |
| 10009 | the set channel rectangle Kona driver request | yes | 18 | `kona_set_channel_rect` |
| 10010 | the memory allocate Kona driver request | yes | 12 | `kona_mem_alloc` |
| 10011 | the memory free Kona driver request | yes | 12 | `kona_mem_free` |
| 10012 | the get XY channel Kona driver request | yes | 14; result copied out | `kona_get_xy_channel` |
| 10014 | the memory reallocate Kona driver request | yes | 12 | `kona_mem_alloc` with the grow flag set; the free routine is never called |
| 10015 | the share Kona driver request | yes | 8; result copied out | `kona_share` |
| 10016 | the health Kona driver request | yes | none; 12 out | copies the three words at pipe state +2172, +2176, +2180 (death reason, saved `HH_INTR_INFO`, saved `HH_TBUS_STATUS`: the `KONA_SC_DEATH_*` fields of [kona_kern.h](../kona_kernel/include/kona_kern.h)) |
| 10017 | the check pipe Kona driver request | yes | none | `kona_checkpipe` |
| 10018 | the DMA-pool Kona driver request | yes | 24 (translated) | pool setup ([hip.md](hip.md)) |
| 10019 | the get channel-operation topology Kona driver request | yes | none; 260 out | copies 260 bytes from the topology record the pipe state points to (+5480, record +3072); **inferred** 260 = a count word plus 32 `{index, networkId}` pairs of 8 bytes, as the header declares |
| 10020 | the channel-operation configure Kona driver request | yes | allocates 524 | 524 = three words plus 32 four-word pipe records, as `kona_nclops_config_args_t` declares |
| 10021 | the channel-operation query configuration Kona driver request | yes | allocates 524 | |
| 10022 | the channel-operation bind Kona driver request | yes | 4 | `kona_nclops_bind` |
| 10023 | the channel-operation unbind Kona driver request | yes | 4 | `kona_nclops_unbind` |
| 10024 | the channel-operation destroy configuration Kona driver request | yes | 4 | `kona_nclops_destroy` |

Slots 10004 and 10013 are empty in both the header and the driver, and slots 10025-10099 take the default. `gfxinit` and `setmon` issue 10026, 10030 and 10031 from their `venice_*` functions (`venice_get_dg2_eeprom`, `venice_loadsection_vs2_top`, `vs2SetShadow`, `vs2GetShadow`, `vs2_set_MasterGenlock`), code that by its names drives another board family sharing the private number range; on a KONA pipe all three land in default slots and fail with EINVAL. **Inferred** from the function names that those paths run only when the tools find that other board. The header reserves 10100 and up for diagnostic ioctls (the Kona kernel driver header 1); the last three slots of the 103-entry table serve them.

### Diagnostic ioctls

**Established** (`KONAprivate`, `kona_ioctl.o` 0xf4-0x124 and their targets; 6.5.30m):

| Number | Copied | Handler | What it does | Grade |
|---|---|---|---|---|
| 10100 | 24 in (translated for a 32-bit caller), 24 out | `kona_diag_map` | maps a user buffer for the pipe to reach by DMA and returns its pipe address ([below](#diagnostic-map-kona_diag_map)) | established |
| 10101 | none: the argument itself is the value | `kona_diag_flow` (`kona_flow.o` 0x5a0-) after `RRM_CheckValidFault` | argument 0: clear bits 0-2 of the driver's `HH_INTR_ENABLE` shadow (pipe state +2368) and write it; argument 1: unless the pipe is dead (EACCES, 13), set bit 2 of the shadow and write it, flush the write-gather buffer, attach the caller to the write-gather group (offset 0x7c) as a packet sender does when it is not attached yet, then kick `HH_GINTR_INFO` with 0 (0x614-0x6f0); anything else EINVAL | established |
| 10102 | 16 out | `kona_diag_credits` after `RRM_CheckValidFault` | four words: the flow-control credit total, bias and current count (`gfx_flow_credit_total_get`, `_bias_get`, `_count_get`) and the constant 100000 | established |

`RRM_CheckValidFault` returning a negative value makes 10101 and 10102 fail with EFAULT. **Inferred:** 10101 turns FIFO flow control (`HH_INTR_ENABLE` bits 0-2, the high- and low-water sources of [hip.md](hip.md)) off and on so a diagnostic can fill the FIFO, and 10102 reads the credit state it then checks; the constant 100000 is a limit the diagnostic is told, whose use is in the user program.

`the channel-operation Kona driver requests*` is the multi-pipe (hyperpipe) path: `kona_nclops_bind` and `kona_nclops_swapped` write the display-generator indirect port (`HH_VC_ADDRESS` then `HH_VC_DATA`, [dg.md](dg.md)), so binding a pipe to a network changes display-port registers: the addresses, values and names are in [Multi-pipe (DPLEX) display-port writes](#multi-pipe-dplex-display-port-writes).

## Ioctl reference

Every ioctl number the user-space binaries send or the kernel dispatchers handle, one row each, in three groups: the generic graphics ioctls (100-113, answered by `gfxioctl` for every board), the rendering resource manager commands (1000-1025, forwarded by `gfxioctl` to `RRM_Dispatch`; names and argument structures from the 6.5.5 installed header the Kona stack header 8) and the Kona private ioctls (10000 and up, `KONAprivate`). Argument sizes are the byte counts the code copies in or out. Numbers 108 (the download graphics-driver request) and 10017, 10101 and 10102 are described elsewhere in this chapter.

### Generic graphics ioctls

| Ioctl number | Name | What it does |
|---|---|---|
| `0x65` (101) | `GFX_GETNUM_BOARDS` | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x2cf4): stores the number of registered graphics boards in the caller's return value and returns 0, with no argument copied in. |
| `0x66` (102) | the get-board-information graphics-driver request | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m): copies in a 24-byte request, fails with ENODEV (19) for a board number past the count, and otherwise calls the board driver's information function, which fills the caller's buffer. |
| `0x67` (103) | `GFX_ATTACH_BOARD` | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x3260): binds the open connection to a board. It copies the board record, operation table and private state into the connection, calls the board driver's attach function with the user address, and makes the connection the board owner when it has none; a second attach on one connection fails with 16. |
| `0x68` (104) | `GFX_DETACH_BOARD` | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x2e80): releases the connection's board, refusing with 16 when an IrisGL-mode connection shares its thread group with other threads. |
| `0x69` (105) | `GFX_IS_MANAGED` | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x2ef0): copies in a 4-byte board number and returns 1 when the board record's +8 field is set, 0 otherwise. |
| `0x6a` (106) | the initialize graphics-driver request | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x2ff8): board owner only (EPERM otherwise); takes the pipe semaphore, waits for the pending-operation count to drain, calls the board driver's initialise function (operation +24) and unmaps the connection if it was mapped. |
| `0x6b` (107) | the start graphics-driver request | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x3078): board owner only; takes the pipe semaphore the same way and calls the board driver's start function (operation +40), returning what it returns. |
| `0x6d` (109) | the blank-screen graphics-driver request | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x309c): board owner only; returns 0 without calling the board driver, so on this driver the call has no effect on the display. |
| `0x6e` (110) | `GFX_MAPALL` | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x2d78): takes the pipe semaphore, calls the board driver's map function (operation +96) with the arguments (connection, 0, -1) and sets connection flag 0x20 whether or not it succeeds. The map covers the whole pipe, not the per-process part. |
| `0x6f` (111) | `GFX_LABEL` | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x30d4): board owner only; copies a 16-byte string from the caller into the label field of the board's information record. |
| `0x70` (112) | the reattach board graphics-driver request | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x3260): the same steps as an attach but without the "already attached" refusal. |
| `0x71` (113) | the set diagnostic flag graphics-driver request | **Established** (`gfxioctl`, `gfx.o`, 6.5.30m, +0x2fa0): calls `drv_priv` on the caller's credentials and, if the caller is the super-user, sets connection flag 4, which selects the privileged register mapping described under "What a process maps". |

### Resource manager ioctls

| Ioctl number | Name | What it does |
|---|---|---|
| 1000 | the open-render-node resource-manager request | **Established** (`RRM_OpenRN`, `rrm.o`, 6.5.30m, +0x1914): copies in 8 bytes, finds a free rendering-node slot, zeroes the 176-byte node, initialises its lock and calls the board driver's node-creation function; it returns the new node number with the resource mask the caller asked for. |
| 1002 | the bind-proc-to-render-node resource-manager request | **Established** (`RRM_BindProcToRN`, `rrm.o`, 6.5.30m, +0x1464): makes the node named in the 4-byte argument the calling process's current node, closing the previous one if it had no other user; slot 0 clears the binding and is allowed only for OpenGL connections. |
| 1003 | the bind-render-node-to-clip resource-manager request | **Established** (`RRM_BindRNToClip`, `rrm.o`, 6.5.30m, +0x1854): binds the node to a window's clip region by finding or creating the pane for that clip identifier, and returns the bind identifier; it calls the shared bind-to-read-and-clip routine with the read clip equal to the draw clip. |
| 1004 | the unbind-render-node-from-clip resource-manager request | **Established** (`RRM_UnbindRNFromClip`, `rrm.o`, 6.5.30m, +0x18f0): the window is going away, so the pane for the clip identifier in the 8-byte argument is cleaned up: its valid bits cleared, waiters woken and its swap group left. |
| 1006 | the set-swap-interval resource-manager request | **Established** (`RRM_SetSwapInterval`, `rrm.o`, 6.5.30m, +0x41e4): stores the requested number of retraces between buffer swaps in the node and in its pane; a negative value fails with EINVAL (22). |
| 1010 | the invalidate-render-node resource-manager request | **Established** (`RRM_InvalidateRN`, `rrm.o`, 6.5.30m, +0x1228): manager call that clears the resource bits named by the 20-byte argument for one window, returns the hardware-independent mode the window wants and the wrong-buffer flag, and unmaps connections whose resources are gone so their next draw revalidates. |
| 1011 | the validate-clip resource-manager request | **Established** (`RRM_ValidateClip`, `rrm.o`, 6.5.30m, +0x3278): manager call that copies the 64-byte clip description, up to 14 pieces, into the window's pane and raises its serial number, so the next context switch resends the clip to the pipe. |
| 1012 | the validate-swap-buffer resource-manager request | **Established** (`RRM_ValidateSwapBuf`, `rrm.o`, 6.5.30m, +0x2a84): manager call that records the hardware display identifier for the window's swap buffers in the pane and wakes the processes waiting for that resource. |
| 1013 | the swap-group resource-manager request | **Established** (`RRM_SwapGroup`, `rrm.o`, 6.5.30m, +0x3c4c): manager call that joins the window to the swap group of a second window, or starts a new group when the second identifier is 0, so the group's members swap together; windows on different boards are refused. |
| 1017 | the load-display-mode resource-manager request | **Established** (`RRM_LoadDisplayMode`, `rrm.o`, 6.5.30m, +0x2c3c): manager call that passes the hardware-dependent display mode for one display identifier to the board driver; the effect on the display bus is described with the `DISPMODE` command in dg.md. |
| 1019 | the swap-ready resource-manager request | **Established** (`RRM_SwapReady`, `rrm.o`, 6.5.30m, +0x3d84): manager call that asserts or releases one of the board's swap-ready lines for the window's swap group, the barrier line genlocked pipes share; a line already driven by another group fails with 16. |
| 1020 | the manager swap-buffer resource-manager request | **Established** (`RRM_MGR_SwapBuf`, `rrm.o`, 6.5.30m, +0x3f90): the board manager reports that it performed a swap; the call stores the new display mode word, calls the board driver's swap-complete function and records the buffer bit in the pane. |
| 1022 | the get-vertical-sync resource-manager request | **Established** (`RRM_GetVideoSync`, `rrm.o`, 6.5.30m, +0x432c): returns the board's retrace counter, kept at +128 of the board record, in the second word of the 8-byte argument. |
| 1023 | the wait-vertical-sync resource-manager request | **Established** (`RRM_WaitVideoSync`, `rrm.o`, 6.5.30m, +0x4370): sleeps the caller until the retrace counter reaches a value with the given remainder modulo the given interval, then returns the counter at wakeup; an interval of 0 or a remainder outside it fails with 22. |

### Kona private ioctls

| Ioctl number | Name | What it does |
|---|---|---|
| 10000 | the DMA-read Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 160 bytes (translated for a 32-bit caller) and starts a pipe-to-host transfer, the path pixel read-back uses. |
| 10001 | the DMA-write Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 144 bytes naming a table of host buffers and starts a host-to-pipe transfer with `kona_dmawrite`; the number of vectors is not limited by this path. |
| 10002 | the start select-feed Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 32 bytes describing the select or feedback buffer and arms the pipe to deliver records into it through `kona_start_selectfeed`. |
| 10003 | the finish select-feed Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): takes no input, waits for the pipe to finish the select or feedback run through `kona_finish_selectfeed` and copies out 8 bytes with the amount returned. |
| 10005 | the select cursor Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 16 bytes (mode, cursor address, hot x, hot y) and programs the display generator's cursor through `kona_select_cursor`. |
| 10006 | the set-configuration-information Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies 1912 bytes of board configuration into the pipe state at +244, then runs `kona_mem_init` so pipe memory pools can be allocated. |
| 10007 | the DMA-pool old Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): not implemented in this release; the jump-table slot is the default one and the call fails with EINVAL (22). |
| 10008 | the debug ioctl Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): returns EINVAL (22) without calling anything, so the debug hook is compiled out of this release. |
| 10009 | the set channel rectangle Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 18 bytes (channel number and rectangle) and records the screen rectangle each video channel scans out, through `kona_set_channel_rect`. |
| 10010 | the memory allocate Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 12 bytes (pool, size, result slot) and allocates pipe memory from the driver's pool through `kona_mem_alloc`. |
| 10011 | the memory free Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 12 bytes naming a pool block and returns it to the pool through `kona_mem_free`. |
| 10012 | the get XY channel Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 14 bytes (a screen position) and copies out the video channel that scans that position, through `kona_get_xy_channel`. |
| 10014 | the memory reallocate Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 12 bytes and calls `kona_mem_alloc` with its extra argument set to 1; this path never calls the free routine, and the allocator then walks the pool's existing blocks comparing their id byte with the request's (+0x2340 to +0x2368 in `kona_mem.o`), so the role is **inferred** to be growing or reusing a block, as [kernel-functions.md](kernel-functions.md) describes. |
| 10015 | the share Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 8 bytes and returns the result, letting a second process share a memory block of the first, through `kona_share`. |
| 10016 | the health Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): takes no input and copies out the three words at pipe state +2172, +2176 and +2180: the death reason, the saved interrupt-info register and the saved bus-status register. |
| 10018 | the DMA-pool Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 24 bytes (translated for a 32-bit caller) and sets up the DMA pool that later transfers draw from. |
| 10019 | the get channel-operation topology Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): takes no input and copies out 260 bytes from the topology record at pipe state +5480, which is **inferred** to be a count and 32 pairs of pipe index and network identifier. |
| 10020 | the channel-operation configure Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): allocates a 524-byte block for the multi-pipe network configuration (three header words and 32 pipe records) and applies it to the display ports. |
| 10021 | the channel-operation query configuration Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): allocates the same 524-byte block and returns the current multi-pipe network configuration. |
| 10022 | the channel-operation bind Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 4 bytes and binds this pipe to a multi-pipe network by writing the display-generator indirect port, through `kona_nclops_bind`. |
| 10023 | the channel-operation unbind Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 4 bytes and removes the pipe from its network through `kona_nclops_unbind`. |
| 10024 | the channel-operation destroy configuration Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): copies in 4 bytes and frees a multi-pipe configuration, through `kona_nclops_destroy`. |
| 10025 | default slot | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): this number and every other jump-table slot not named in this table logs a message and returns EINVAL (22). |
| 10026 | `gfxinfo` request | **Established** (`gfxinit`, 6.5.30m, +0xf7f0): sent by `venice_get_dg2_eeprom` to read a 7192-byte display-board EEPROM image; the Kona driver has no slot for it and fails the call with EINVAL, so the code runs only on the other board family that shares the number range. |
| 10030 | `gfxinfo` request | **Established** (`gfxinit`, 6.5.30m, +0x198cc): sent by `vs2SetShadow` to write a video-board shadow register block; the Kona driver answers EINVAL because it has no slot for the number. |
| 10031 | `gfxinfo` request | **Established** (`gfxinit`, 6.5.30m, +0x19870): sent by `vs2GetShadow` to read the same shadow block back; the Kona driver answers EINVAL because it has no slot for the number. |
| 10100 | the diagnostic map Kona driver request | **Established** (`KONAprivate`, `kona_ioctl.o`, 6.5.30m): maps or releases one host buffer for diagnostic DMA through `kona_diag_map` and returns its pipe-space address pair, as described under "Diagnostic map". |

### Who sends them

The senders below are read from the call sites of the 6.5.30m user-space binaries: 101 and 102 by the X server and OpenGL start-up code (`__glXOpenGraphicsDevice`, `__glx_GetString`, `__iglooGetGraphicsType`, `ddxFindAvailableBoards`) and by `setmon` and `gfxinfo`; 103 by `irixKernInit` in the X server, `crm_setmon` and `gr2ev_info`; 104 by `xgsetmon` and `ng1_setmon`; 105, 106 and 107 by `ireeprom` and `gfxinfo`; 110 and 113 by the diagnostic and setup tools (`gr2ev_info`, `ng1_setmon`, `vs2setmon`); 111 by `irixKernInit`; 112 by `ng1_setmon`. In the OpenGL client library `libGL.so`, `__glXHWAttach` sends 112 and then 103, `__glXAllocHWContext` 1000, `__glXFreeHWContext` 1001, `__glXBindHWContextToWindow` 1002 and 1003, and `glXSwapIntervalSGI`, `glXGetVideoSyncSGI` and `glXWaitVideoSyncSGI` 1006, 1022 and 1023. The X server sends 1002 (`irixKernInit`), 1004 (`rrmDisposeClip` in `kona.so`), 1010 (`rrmInvalidate`), and `glx.so` sends 1013 and 1019 (`glxJoinSwapGroupSGIX`, `glxBindSwapBarrierSGIX`). 1011, 1012, 1017 and 1020 come from the Kona X module ([opengl.md](opengl.md#ioctls)).

## Ioctl entries

One entry per ioctl number that the inventory finds in a sender or in the private jump table. Handlers and
argument sizes are read from the 6.5.30m objects `gfx.o`, `rrm.o` and `kona_ioctl.o`; the sender is the first
binary and function the inventory finds loading the number into the ioctl call. The entries below are read from the
disassembly of those objects; they carry no per-entry label unless one is given, because each describes a request, not one routine.

### Generic ioctls (`gfx.o`)

`gfxioctl` (`gfx.o` 6.5.30m, at 0x2b88) answers 101, 102, 103, 105, 112 and 113 for any open connection, before it
checks that the connection is attached to a board. Every other number below 1000 needs an attached connection
(EACCES, 13, otherwise). Numbers 1000-9999 go to `RRM_Dispatch`, and 10000 and up go to the board's private
operation (+200 of its operation table), which for this board is `KONAprivate`. Offsets below are within `gfx.o`'s
text section.

- 0x65 (ioctl 101), `GFX_GETNUM_BOARDS`.
  At 0x2cf4: `gfxioctl` copies the global `GfxNumberOfBoards` into the caller's
  result word and returns 0, with no argument copied in, so a client knows how many boards to scan.
  The inventory scan finds it sent first by `main` in `ireeprom` and by the X server's board search.
- 0x66 (ioctl 102).
  At 0x2eb8: `gfxioctl` translates a 24-byte request with `copyin_xlate`
  (EFAULT, 14, on a bad pointer), refuses a board number past the count or an empty slot with ENODEV (19),
  then at 0x323c calls slot 0 of the board's information operations with the user buffer address and
  length from the request, so the board driver fills the caller's buffer itself. Sent by `main` in `ireeprom` and by `crm_setmon`.
- 0x67 (ioctl 103), `GFX_ATTACH_BOARD`.
  From `gfxioctl` at 0x2f30 and 0x32dc: a 16-byte request through `copyin_xlate`, the same
  board-number checks, then EBUSY (16) if this connection already has an operation table. Otherwise it records
  the board, its operation table and its private state in the connection (+8, +32, +40) and calls the board's attach
  operation (+8) with the user address from the request; a failure clears those three fields again, and success makes
  the connection the board's owner when the board has none. Sent by `irixKernInit` in `Xsgi`.
- 0x68 (ioctl 104), `GFX_DETACH_BOARD`.
  At 0x2e80: the handler releases the board with a call to `GfxDetach`. An OpenGL-mode connection
  (flag 8) or one whose thread record has no group link (+24) is detached at once; an IrisGL-mode connection is
  detached only when `threadgroup_refcnt` reports one member, and a shared group gets EBUSY (16). Sent by `xgsetmon`.
- 0x69 (ioctl 105), `GFX_IS_MANAGED`.
  At 0x2ef0 and 0x3144: `gfxioctl` reads a 4-byte board number with `copyin`, rejects a bad board with 19,
  and writes 1 to the result word when the board record's +8 field is set, 0 when it is not; going by its name, that field is the board's managing connection.
  Setup tools ask this before touching a board an X server may hold; sent by `main` in `ireeprom`.
- 0x6a (ioctl 106).
  At 0x2ff8: only the board's owner gets past 0x2cdc (others receive 1). The handler takes the pipe
  semaphore unless it already holds it, spins with 2-microsecond delays until the pipe's pending count (+104) drains,
  calls the board's initialise operation (+24), then at raised priority zeroes the retrace counter at +128,
  calls the optional operation at +192, drops the semaphore and unmaps a mapped connection with `rrmUnMapGfx`.
  The inventory scan finds it sent by `setup_ucode` in `ireeprom`.
- 0x6b (ioctl 107).
  At 0x3078: an owner-only call that takes the pipe semaphore in the same way and returns what the
  board's start operation (+40) returns; that operation lets the pipe run once its microcode is loaded. Sent by `main` in `gfxinfo`.
- 0x6c (ioctl 108).
  At 0x2fc0: **Established.** An attached connection's 40-byte request is translated by `copyin_xlate` and passed with the
  connection to the board's download operation (+32). For this board that operation is `KONAdownload` in `kona_stubs.o`,
  which returns 0, so the request changes nothing on the pipe. The inventory finds it sent by `gr2_init`
  and `mgras_init` in `gfxinfo`, code for other board families.
- 0x6e (ioctl 110), `GFX_MAPALL`.
  At 0x2d78: the handler takes the pipe semaphore, locks the region with `ddv_lock`, calls the board's map
  operation (+96) with offset 0 and length -1 to map the whole pipe, and sets connection flag 0x20 before `ddv_unlock`,
  whatever the map returned. Diagnostics use it to reach every register. Sent by `main` in `ireeprom` and by `ng1_setmon`.
- 0x6f (ioctl 111), `GFX_LABEL`.
  At 0x30d4: an owner-only call that copies 16 bytes from the caller into the board's information
  record at +16 with `copyin` (14 on a fault). The X server labels the board it manages this way; sent by
  `irixKernInit` in `Xsgi`.
- 0x70 (ioctl 112).
  At 0x2f68 and 0x3260: the same request size and board checks as the attach call, but it skips the
  EBUSY test and binds the connection again, so a process holding a board can re-attach it. Sent by `ng1_setmon` in `setmon`.
- 0x71 (ioctl 113).
  At 0x2fa0: `gfxioctl` calls `drv_priv` with the caller's credentials and, for the super-user only,
  sets connection flag 4. `KONAmapgfx` in kona_map.o tests that flag at +0x134 and then maps the register page at
  pipe offset 0x800000 instead of 0x810000, plus the I/O window at 0xc000. Sent by `main` in `ireeprom` and by `vs2setmon`.

### Rendering manager ioctls (`rrm.o`)

`gfxioctl` forwards every number from 1000 to 9999 to `RRM_Dispatch`, which looks the handler up in a 26-entry table
in `rrm.o` (each entry is the handler, the argument size and a manager-only flag).

- Ioctl 1000 (0x3e8), read from `rrm.o`.
  `RRM_Dispatch` runs `RRM_OpenRN` with no node and an 8-byte argument; the handler claims a free rendering-node slot,
  stores the new id in the caller's result word and returns 12 when no slot is free.
  Sent by `irixKernInit` and `xgsetmon`.
- Ioctl 1002 (0x3ea), read from `rrm.o`.
  `RRM_BindProcToRN` makes the calling connection the user of the named node, or unbinds it for node 0
  (OpenGL connections only). Sent by `irixKernInit` and `xgsetmon`.
- Ioctl 1003 (0x3eb).
  `RRM_BindRNToClip` builds a read-and-clip bind request with the same clip id for both and calls
  `RRM_BindRNToReadAndClip`; the bind id is returned for OpenGL connections. Sent by `xgsetmon` in `setmon`.
- Ioctl 1004 (0x3ec).
  A manager-only command: `RRM_UnbindRNFromClip` calls `pane_cleanup` for the window's clip id and always returns 0.
  Sent by `rrmDisposeClip` in `kona.so` when a window goes away.
- Ioctl 1006 (0x3ee).
  `RRM_SetSwapInterval` rejects a negative interval with 22 and otherwise stores it in the node and its draw pane.
  Sent by `glXSwapIntervalSGI` in `libGL.so`.
- Ioctl 1010 (0x3f2), read from `rrm.o`.
  A manager-only command: `RRM_InvalidateRN` accepts only the mask bits 0x2, 0x8, 0x40 and 0x80, invalidates the pane,
  and copies 20 bytes back. Sent by `rrmInvalidate` and by `SGICapGLCapture` in `Xsgi`.
- Ioctl 1011 (0x3f3).
  A manager-only command with a 64-byte argument, widened for 32-bit callers by `irix5_to_RRM_ValidateClip`;
  `RRM_ValidateClip` calls `validate_pane_clip`, which marks the pane's clip valid and wakes the sleeper.
  Sent by `konValidateClip` in `kona.so`.
- Ioctl 1012 (0x3f4).
  A manager-only command: `RRM_ValidateSwapBuf` calls `validate_pane_swapbuf`, which records the swap-buffer id in the pane
  and wakes a waiter; nothing is sent to the pipe. Sent by `konValidateSwapbuf` in `kona.so`.
- Ioctl 1013 (0x3f5).
  A manager-only command: `RRM_SwapGroup` makes a new swap group for the window when the second id is 0, otherwise
  joins the window to that member's group. Sent by `glxJoinSwapGroupSGIX` and `glxBindSwapBarrierSGIX` in `glx.so`.
- Ioctl 1017 (0x3f9).
  A manager-only command: `RRM_LoadDisplayMode` rejects a display id past the board's count with 22,
  calls the driver's set-display-mode slot (+160) and records the mode in the pane and the per-display table.
  Sent by `konLoadDisplayMode` in `kona.so`.
- Ioctl 1019 (0x3fb).
  A manager-only command: `RRM_SwapReady` assigns or releases the window's swap group on a swap-ready line,
  with error 37 for a line past the count. Sent by `glxBindSwapBarrierSGIX` in `glx.so`.
- Ioctl 1020 (0x3fc).
  A manager-only command: `RRM_MGR_SwapBuf` stores the independent mode in the per-display table and calls the driver's
  scheduled-manager-swap slot (+168); a zero result also updates the pane's displayed bank. Sent by `rrmMGRSwapBuf`
  in `kona.so`.
- Ioctl 1022 (0x3fe).
  `RRM_GetVideoSync` copies the video-sync counter at pipe state +128 out in an 8-byte block.
  Sent by `glXGetVideoSyncSGI` in `libGL.so`.
- Ioctl 1023 (0x3ff).
  `RRM_WaitVideoSync` sleeps in `rrmWaitVideoSync` until the counter matches the interval and remainder,
  then copies the wake counter out. Sent by `glXWaitVideoSyncSGI` in `libGL.so`.

### Private ioctls (`kona_ioctl.o`)

`KONAprivate` subtracts 10000 and indexes a 103-slot jump table; a slot the table does not serve logs a message with
`cmn_err_tag` and returns 22. In the cases below "copies N" is the byte count of the `copyin` or `copyout`.

- Ioctl 10000 (0x2710).
  `KONAprivate` copies in 160 bytes through `copyin_xlate` and calls `kona_dmaread`, which moves pipe data into host memory.
  Sent by `konReadFBBlock` and `konReadImage` in `kona.so`.
- Ioctl 10001 (0x2711).
  `KONAprivate` copies in 144 bytes, counts the operation in flight, copies the vector table and calls `kona_dmawrite`.
  Sent by `konDrawImage` and `konWriteFBSubBlock` in `kona.so`.
- Ioctl 10002 (0x2712).
  `KONAprivate` copies in 32 bytes through `copyin_xlate` and calls `kona_start_selectfeed`, which starts
  select or feedback return. Sent by `__glKonlSendPackedVertex` in `libGLcore.so`.
- Ioctl 10003 (0x2713).
  `KONAprivate` calls `kona_finish_selectfeed` and copies 8 bytes out. Sent by `__glKonlSendPackedVertex` in `libGLcore.so`.
- Ioctl 10005 (0x2715).
  `KONAprivate` copies in 16 bytes and calls `kona_select_cursor`, which picks the cursor mode, glyph and hot spot. Sent by `konDisplayCursor` and `konCursorOn` in `kona.so`.
- Ioctl 10006 (0x2716).
  `KONAprivate` copies 1912 bytes of configuration record into the pipe state at +244, then calls `kona_mem_init`
  and `kona_nclops_init`. Sent by `kona_getconfig` in `gfxinfo`.
- Ioctl 10008 (0x2718), read from `kona_ioctl.o`.
  The jump-table slot returns 22 at once, with no copy and no call; the number is reserved and does nothing.
- Ioctl 10009 (0x2719).
  `KONAprivate` copies in 18 bytes and calls `kona_set_channel_rect`, which fills one entry of the cursor-rectangle table. Sent by `konaSetStereoMode` in `kona.so`.
- Ioctl 10010 (0x271a).
  `KONAprivate` copies in 12 bytes and calls `kona_mem_alloc` with its grow flag clear, which reserves a block in one of the
  pipe memory pools. No sender in the inventory loads the number as a constant.
- Ioctl 10011 (0x271b).
  `KONAprivate` copies in 12 bytes and calls `kona_mem_free` to release a block. No sender in the inventory loads the number.
- Ioctl 10012 (0x271c).
  `KONAprivate` copies in 14 bytes, calls `kona_get_xy_channel`, which finds the video channel at a screen position,
  and copies 14 bytes back. Sent by `saXSGIvcSetChannelGammaMap` in `setmon`.
- Ioctl 10014 (0x271e), read with less certainty than the rest.
  `KONAprivate` copies in 12 bytes and calls `kona_mem_alloc` with its flag set; with the flag set the routine
  looks for an existing block of the same id and grows it, returning 2 when none exists (`kona_mem.o`).
  Sent by `venice_calcframebuffer` in `gfxinfo`, which addresses the older board family.
- Ioctl 10015 (0x271f).
  `KONAprivate` copies in 8 bytes and calls `kona_share` (`kona_share.o`), which finds the share group the word names on the
  pipe's list, or allocates a 112-byte group when it is 0 or absent, counts the node into it and copies the group handle back.
  No sender in the inventory loads the number.
- Ioctl 10016 (0x2720), read from `kona_ioctl.o`.
  `KONAprivate` copies three words saved at pipe state +2172, +2176 and +2180 out: the reason the pipe was declared dead
  and the interrupt and bus status registers saved then. Sent by `kona_diagnose` in `gfxinfo`.
- Ioctl 10018 (0x2722).
  `KONAprivate` copies in 24 bytes through `copyin_xlate` and calls `kona_dmapool`, which registers a user buffer
  the pipe may DMA from (a zero length releases it). No sender in the inventory loads the number.
- Ioctl 10019 (0x2723).
  `KONAprivate` calls `kona_nclops_discover` when the pipe state holds no topology record (+5480), then copies 260 bytes
  of it out. Sent by `konQueryHyperpipeNetwork` in `kona.so`.
- Ioctl 10020 (0x2724).
  `KONAprivate` copies in 524 bytes, calls `kona_nclops_configure` and copies the result back.
  Sent by `konHyperpipeConfig` in `kona.so`; `gfxinfo` also sends it from older-family code.
- Ioctl 10021 (0x2725).
  `KONAprivate` copies in 524 bytes, calls `kona_nclops_query_config` and copies 524 bytes back.
  Sent by `konQueryHyperpipeConfig` in `kona.so`.
- Ioctl 10022 (0x2726).
  `KONAprivate` copies in 4 bytes and calls `kona_nclops_bind`, which writes the display-port registers of the pipe.
  Sent by `__glkon_BindHyperpipe` in `libGLcore.so`.
- Ioctl 10023 (0x2727).
  `KONAprivate` copies in 4 bytes and calls `kona_nclops_unbind`. Sent by `__glkon_UnbindHyperpipe` in `libGLcore.so`.
- Ioctl 10024 (0x2728).
  `KONAprivate` copies in 4 bytes and calls `kona_nclops_destroy` unless the pipe state's network field (+5500) is -1.
  Sent by `konDestroyHyperpipeConfig` in `kona.so`.
- Ioctl 10025 (0x2729), read from `kona_ioctl.o`.
  The jump-table slot is the default one, which logs a message and returns 22.
  Only `read_encoder_reg` in `gfxinfo`, code for the older board family, sends it.
- Ioctl 10026 (0x272a), read from `kona_ioctl.o`.
  The jump-table slot is the default one, which returns 22. Only `venice_get_dg2_eeprom` in `gfxinfo` sends it.
- Ioctl 10030 (0x272e), read from `kona_ioctl.o`.
  The jump-table slot is the default one, which returns 22. Only `vs2SetShadow` and `venice_loadsection_vs2_top`
  in `gfxinfo` send it.
- Ioctl 10031 (0x272f), read from `kona_ioctl.o`.
  The jump-table slot is the default one, which returns 22. Only `vs2GetShadow` and `vs2_set_MasterGenlock`
  in `gfxinfo` send it.
- Ioctl 10100 (0x2774).
  `KONAprivate` copies in 24 bytes through `copyin_xlate`, calls `kona_diag_map` to map a user buffer for DMA
  and copies 24 bytes back. Sent by `kona_getconfig` in `gfxinfo` and by `main` of `ireeprom`.
- 0x2775 (ioctl 10101), the flow-control switch.
  From `kona_ioctl.o`: jump-table slot 101 (at .rodata 0x340) leads to `KONAprivate`+0x10c, which
  calls `RRM_CheckValidFault` (EFAULT, 14, when it fails) and then `kona_diag_flow` with the ioctl argument itself as
  the value. In `kona_flow.o`, argument 0 clears bits 0-2 of the interrupt-enable shadow at pipe state +2368 and writes
  it to `HH_INTR_ENABLE` (0x800230), turning the FIFO water-mark interrupts off; argument 1 refuses a dead pipe with
  EACCES (13), sets bit 2 again, flushes the caller's write-gather buffer, attaches the caller to the
  write-gather group (programming XG offset 0x7c) if it is not attached yet, and writes 0 to the flow-controlled
  alias of `HH_GINTR_INFO` (0xc00108). Any other value returns EINVAL (22). No sender in the inventory loads the number.
- 0x2776 (ioctl 10102), the credit read.
  Established from `kona_ioctl.o`: slot 102 (at .rodata 0x348) leads to `KONAprivate`+0xf4, which checks
  `RRM_CheckValidFault`, copies 16 bytes in, calls `kona_diag_credits` and copies 16 bytes back. That routine in
  `kona_flow.o` (at 0x6f4) fills four words: the flow-control credit total, bias and current count from
  the generic flow layer, and the constant 100000, so a diagnostic can check the credit state after
  switching flow control with 10101. No sender in the inventory loads the number.

## Registers the driver touches

**Established** (`retools/tools/kona/kernel_registers.py`, output in [kona_kernel/registers.tsv](../kona_kernel/registers.tsv): one row per function, offset and direction, with the number of call sites). The driver reaches the pipe with two helpers only, `gfx_pio_read_32` and `gfx_pio_write_32`; there is no 64-bit access in the driver. The address is the per-pipe register base (pipe state +0x948) plus a constant, or the command-port pointer at pipe state +0x900. The script follows register values through each function in text order, keeping the saved registers (`$s0`-`$s8`) across calls and branches because this compiler loads a function's fixed addresses into them once. Of the 494 call sites in the 6.5.30m `kona.a`, it resolves 307 to a register offset and 167 to the command port (`cmd` rows). The other 20 (`?` rows) take an address set on a branch the text-order walk does not follow; each was read by hand:

| Function (`kona.a` member) | Sites | Address, read by hand |
|---|---|---|
| `kona_act_pcx`, `KONApcxswap`, `KONAvalidateclip` (`kona_context.o`) | 3, 2, 2 | `HH_GINTR_INFO` through the alias (0xc00108): `$s2` holds 0xc00108, set before the branch to each kick block |
| `kona_mem_swapin_func` (`kona_mem.o` 0x624) | 1 | the command port: the conditional branch to 0x624 loads +0x900 in its delay slot |
| `kona_nclops_configure` (`kona_nclops.o` 0x15d0-0x15fc) | 2 | `HH_VC_ADDRESS` then `HH_VC_DATA` (`$s4`, `$s5` hold 0x8003c0 and 0x8003d0): VC 0xe300 = 0, [below](#multi-pipe-dplex-display-port-writes) |
| `kona_video_intr` (`kona_video.o` 0x1a00-0x1c40) | 7 | `HH_VC_ADDRESS` and `HH_VC_DATA` (`$s2`/`$s1` set to 0x8003c0/0x8003d0 at three places in the function): the cursor writes of [dg.md](dg.md#cursor) |
| `kona_mapram_init` (`kona_mapram_hip2.o` 0x3c-0x58) | 2 | map RAM entry k at window offset 0x100000 + 4k, written with 0x10000000 + k and read back as a presence test ([hip.md](hip.md)) |
| `kona_mapram_map` (`kona_mapram_hip2.o`) | 1 | the map RAM entry of the page being mapped ([hip.md](hip.md)) |

| Offset from base | HIP.h name | Read by | Written by |
|---|---|---|---|
| 0x800208 | `HH_GFIFO_LEVEL` | `kona_die`, `kona_flow_await_returned_credits`, `kona_hiwater_timeout` | |
| 0x800210 | `HH_GFIFO_HI` | | `kona_flow_init` |
| 0x800220 | `HH_INTR_INFO` | `kona_die` | `KONAinitialize`, `kona_die` |
| 0x800228 | `HH_INTR_ACK` | | `KONAstart`, `kona_intr_handler` |
| 0x800230 | `HH_INTR_ENABLE` | | `KONAinitialize`, `KONAstart`, `kona_diag_flow`, `kona_hiwater_intr`, `kona_lowater_intr` |
| 0x800238 | `HH_INTR_STATUS` | `KONAstart`, `kona_intr_handler` | the handlers, `kona_reset_adaptor`, `kona_delay_monitor_gfifo` |
| 0x800240 | `HH_ARM_MBOX` | `kona_arm_intr` | |
| 0x800248 | `HH_SEQID` | `kona_video_intr` | |
| 0x800260-0x8002b8 | `HH_ODMA_PNUM`, `_POFF`, `_TOTAL` and the `ODMA2` set | `kona_ge_intr` | |
| 0x800298 | `HH_ODMA_FLUSH` | | `kona_die` |
| 0x800300 | `HH_RESET` | `KONAinitialize`, `kona_flow_await_returned_credits` | the same two |
| 0x800390, 0x800398 | `HH_FCI_ERR_STAT1/2` or `HH_GV_ERR_STAT1/2` (the two host-interface generations name the offset differently) | | `kona_reset_adaptor` |
| 0x8003a8 | `HH_TBUS_STATUS` | `kona_callout`, `kona_die` | the same two, and `kona_video_intr`: [below](#hh_tbus_status) |
| 0x8003c0, 0x8003d0 | `HH_VC_ADDRESS`, `HH_VC_DATA` | `kona_attach`, `kona_nclops_discover`, `kona_nclops_destroy` (data) | `kona_attach`, `kona_video_intr`, `kona_enable_dac_cursor`, `kona_swap_complete`, every `kona_nclops_*` function that touches a pipe |
| 0xc00108 | `HH_GINTR_INFO` (through the alias window) | | the kick of every packet sender (below) |
| 0x4, 0x24, 0x2c, 0x34, 0x3c, 0x5c, 0x64, 0x6c, 0x74 | Xtalk widget registers, not host-interface | `kona_attach`, `kona_report_errs`, `kona_reset_adaptor` | `kona_reset_adaptor` ([xg.md](xg.md)) |
| 0x7c | `XG_GFX_DET` (`KONA_REG_DETACH_FLUSH`): 34 to attach (credit-return transaction number 17 in `RES_TNUM`), 1 to detach | `KONApcxswap`, `KONAsuspend`, `KONAunmapgfx`, `KONAreleasegfxsema`, `KONAdestroyddrn` | 24 functions: every packet sender, `KONAmapgfx`, `KONAresume`, `KONAsuspend` |

### `HH_TBUS_STATUS`

**Established** (6.5.30m; field names from kpm's host-interface table, `diags/kpm/hip_registers.tsv`: `TBUS_DRAW` bit 0, `TBUS_LOAD` bit 1, `TBUS_ACTIVE` bit 2, `TBUS_STALL` bit 3). The driver touches the register in three places:

- `kona_callout`, the watchdog that runs every half second ([below](#timeouts-and-the-pipe-watchdog-kona_timeout_init-kona_timeout_alloc-kona_timeout_free-kona_timein-kona_sched_tick-kona_untimeout-kona_timeouto)), reads it and counts the pipe as busy when `TBUS_ACTIVE` is set, then writes 4 (`TBUS_ACTIVE`) whether it was set or not.
- `kona_video_intr` writes 1 (`TBUS_DRAW`) on every video interrupt, on both of its paths: after `kona_nclops_swapped`, and after the swap-strobe write (display port 0x80 = 2) it makes when the first entry of the swap table at `P+184` is empty and the pipe is in no multi-pipe network (`kona_video.o` 0x180c-0x1840, 0x1bf4-0x1c24).
- `kona_die` reads it into `KONA_SC_DEATH_HIP_3A8` for the health Kona driver request, then writes 8 (`TBUS_STALL`).

**Inferred:** the four bits are sticky status bits cleared by writing 1, because the watchdog reads `TBUS_ACTIVE` and then writes exactly that bit back each tick, which only makes sense if the write re-arms an activity latch. Read that way, the video interrupt clears the `TBUS_DRAW` latch once a frame and `kona_die` clears `TBUS_STALL`. Nothing in the kernel, libGLcore, the X module or kpm reads `TBUS_DRAW` or `TBUS_STALL` back, so what sets them is **unknown: no shipped software or published source depends on it** (routes tried: the 6.5.30m kernel objects, kpm's table and strings, `irsaudit` strings, which name the bus signals `hip_tbus_drdy` and `hip_tbus_lrdy` but no use of this register, and the 6.5.5 headers, whose only mention is the saved copy in the health record). The kernel writes the bit each tick and expects it set while the pipe makes progress, or the watchdog reports "Pipe hung: no TBUS or ARM activity" when the ARM is also quiet.

Everything above 0x800000 is the 32-bit host-interface window of HIP.h at the offset shown (HIP.h gives the bit fields and which are verified). The values the driver writes to the widget registers (0x24, 0x2c, 0x34, 0x3c, 0x5c, 0x74) are read step by step in [xg.md](xg.md#reset-kona_reset_adaptor); the display-port values of the multi-pipe path are [below](#multi-pipe-dplex-display-port-writes).

### What a process maps

**Established** (`KONAmapgfx`, `kona_map.o` 0x0-0x1f8, 6.5.30m). The driver maps four ranges into the process with `v_mapkvsegment`, each at an offset from the user address `ddv_getaddr` returns; the page size is 16 KB (the code masks with -16384):

| User offset | Pages | Pipe address | When |
|---|---|---|---|
| 0x0000 | 1 | window + 0xc10000, or the command-port pointer (pipe state +0x900) when the pipe-state word +0x8ec is zero | always: the user command FIFO |
| 0x4000 | 1 | window + 0x810000, or window + 0x800000 when bit 2 of the connection's flags is set | always: a page of the host-interface window |
| 0xc000 | 128 (2 MB) | window + 0 | only with bit 2 of the connection's flags set: the widget and host-interface registers from offset 0 |
| 0x8000 | 1 | the return-data buffer of the current rendering node: pipe state +8 (the node `rrmValidateMyPcx` last switched in), its private record at +112, the buffer at +0 | only when that buffer exists |

So the 6.5.5 header's layout holds for 6.5.30m: command FIFO at 0, registers at 0x4000, return data at 0x8000, the I/O window from 0xc000 for 2 MB (0xc000-0x20bfff). Bit 2 of the connection's flags is set by `gfxioctl` when `drv_priv` grants the caller privilege ([below](#the-graphics-connection-gfx_gfx)); an ordinary process gets the page at 0x810000 and no I/O window.

**The page at 0x810000, established** (kpm's host-interface table): the host interface decodes the low bits of a register access address, recorded as `HIP1_HH_ADDR` and `HIP2_HH_ADDR`, with bits 3-9 the register number and bit 16 `USER`. 0x810000 is 0x800000 with bit 16 set, so the unprivileged page reaches the same registers as the privileged one, marked as user accesses. HIP1 also keeps the last access's `USER` bit in `HH_FCI_PIO_STATUS` (0x3a0). Which registers refuse a user access, and what a refused access does, is **unknown: no shipped software or published source depends on it**: libGL attaches at user address 0x4000 (`__glXGetPipeAddress` in `libGL.so` returns 16384), so libGLcore's command stores to 0x4000 land in the FIFO page (window 0xc10000), and a scan of `libGLcore_n32.so`, `libGL.so`, `libgl.so` and `kona.so` for constant addresses in the register page (0x8000-0xbfff at that attach address) finds none. Privileged callers (the X server and the diagnostics) get 0x800000 instead. Whether user accesses reach the same register file is not established. After mapping, the driver sets bit 0 of the connection's flags, attaches to flow control (34 to `XG_GFX_DET`, offset 0x7c) and kicks `HH_GINTR_INFO`.

## Multi-pipe (DPLEX) display-port writes

**Established** (`kona_nclops.o`, 6.5.30m). The `the channel-operation Kona driver requests*` ioctls run the multi-pipe ("hyperpipe") network through the display port: every access is `HH_VC_ADDRESS` = address, then `HH_VC_DATA` read or write. They act only on pipes whose display board reports option-channel type 5 (`is_ddo3`: the configuration record's `dg` option-channel type, pipe state +320) and that the X server manages (`is_managed`). The messages name the option "DPLEX" ("DPLEX: timeout waiting for NOW bit during discovery", "DPLEX: cannot detect a valid topology, please check your connections", "DPLEX: pipes %d and %d both seeing pipe %d's transmit", "Pipe %d has two boards pointing to it"), and the display-board netlist lists a `dplex` option chip ([dg.md](dg.md)). The display-port addresses are below; their decode to the option chip is in the display-port map of [dg.md](dg.md).

| VC address | Access and values | Functions | Grade |
|---|---|---|---|
| 0x8001 | write 0 | `kona_nclops_discover` (0x2c4-0x2e0), before discovery | established |
| 0x8400 | write 0x7000 standalone, 0xf000 in a network | 0x7000: `kona_nclops_discover` (0x2ec), `kona_nclops_destroy` (0x1c94); 0xf000: `kona_nclops_configure` (0x14b4-0x14d0) | established |
| 0x80 | write 1 standalone, 0 in a network | `kona_nclops_destroy` (0x1c74), `kona_nclops_configure` (0x14d4-0x14ec). It is also the swap strobe address of [dg.md](dg.md) | established |
| 0xe200 | read: bit 1 "NOW", bit 7 receiving a neighbour's transmit | `kona_nclops_discover`, `kona_nclops_destroy` (0x1bf8-0x1c18) | established |
| 0xe300 | write 1, 0xa1 (transmit), 0x21, 0 | discovery, `kona_nclops_bind` (0x1828-0x1858), `kona_nclops_swapped` (0x1a7c-0x1b20), `kona_nclops_configure`, `kona_nclops_destroy` | established |
| 0xe500 | write 1 or 0 | discovery (1), `kona_nclops_configure` (0), `kona_nclops_swapped` (0), `kona_nclops_destroy` (1) | established |

**Discovery** (`kona_nclops_discover`, 0x144-0x11d4), **established** as a sequence: (1) on each DPLEX pipe write 0x8001 = 0 and 0x8400 = 0x7000; (2) write 0xe500 = 1 and 0xe300 = 1; (3) poll 0xe200 on every pipe until bit 1 is set on all, giving up after 10000 passes with the "during discovery" message; (4) write 0xe300 = 0xa1 on all, wait 1 us, read 0xe200 and mark each pipe whose bit 7 is clear; write 0xe300 = 0x21 on all, wait 1 us, read again and mark those whose bit 7 is now set; then write 0xe300 = 0x21 on all once more (0x6cc-0x744); (5) for every DPLEX pipe in turn, marked or not (0x748-0x7a0: the transmitter loop tests only `is_ddo3` and `is_managed`), write 0xe300 = 0xa1 on it alone, wait 1 us, and read bit 7 of 0xe200 on every unmarked pipe, the transmitter included (0x834-0x89c: the receiver loop tests the mark and does not skip the transmitting pipe). The pipe that sees the signal is the transmitter's downstream neighbour, recorded only while no earlier step has failed (0xc00); a second receiver prints "cannot detect" and "both seeing" (0x116c-0x1190), fails discovery and the scan goes on. Then 0xe300 = 0x21 on the transmitter (0x768-0x788). So a pipe marked in step 4, which heard nothing, still transmits and is found as the head of its chain; only the receivers are limited to unmarked pipes; (6) write 0xe300 = 1 and 0xe500 = 1 on all and wait for bit 1 again (10000 passes, "after discovery"); (7) build the ring from the neighbour links and give each ring a network id (`alloc_network_id`, `alloc_new_network_id`; "two boards pointing to it" when a pipe has two upstream neighbours). **Inferred** from the messages and the sequence: bit 7 of 0xe300 drives the pipe's link transmitter, bit 7 of 0xe200 reports a signal on its receiver, bit 0 of 0xe300 enables normal operation and bit 1 of 0xe200 reports the link ready ("NOW").

The topology record (`kmem_zalloc` 3336 bytes, pointer at pipe state +5480, shared by all pipes) holds 64 network records of 48 bytes (a state word at +0, the network's current swap-master pipe at +8, a lock at +16, a swap countdown at +20, the member count at +40 and the bound count at +44), then the pair count at +3072 and 32 {pipe index, network id} pairs at +3076; +3332 is the largest network id. Per pipe: next pipe in the ring +5488, network id +5496, configured network +5500 (-1 for none), swap counters +5504 and +5508, bind count +5516, and three words of the caller's configuration at +5520-+5528. the get channel-operation topology Kona driver request copies out the 260 bytes from +3072 (count and pairs).

**Configure, bind, swap and destroy** (**established**). `kona_nclops_configure` (0x11d8) checks the network id and pipe indexes, fills the per-pipe words, and on each member writes 0x8400 = 0xf000, 0x80 = 0, 0xe500 = 0; pipes leaving a network get 0xe300 = 0 and +5500 = -1. `kona_nclops_bind` (0x16f8) counts binds; when the bound count reaches the member count it writes 0xe300 = 1 on the network's current master pipe (record +8). `kona_nclops_swapped` (0x1968), called from `kona_video_intr` on every video interrupt, counts swaps; when every member has swapped, the master writes 0xe300 = 0 and 0xe500 = 0, its next pipe in the ring writes 0xe300 = 1 and becomes the master. `kona_nclops_destroy` (0x1b58) waits for bit 1 of 0xe200 on the master and returns each member to standalone: 0x80 = 1, 0x8400 = 0x7000, 0xe300 = 1, 0xe500 = 1. **Inferred:** 0xe300 = 1 on one pipe at a time passes a swap token around the ring, and 0x8400 bit 15 and 0x80 switch a pipe between local and networked swap.

**Register names, established** from the IR diagnostic `irsaudit` (6.5.30m, `/usr/diags/IR/bin/irsaudit`): its DPLEX controller test `TEST_ddo3_ctrlreg` (0x1013022c) and loopback test `TEST_ddo3_autoconfig_loopback` (0x101305d8) access the same display-port addresses through `vcWrite` and `vcRead` and name them in their messages. The DPLEX board is the `DDO3` option (option-channel type 5, `KONA_DGOPT_DPLEX` in the 6.5.5 the Kona kernel driver header 2).

| VC address | irsaudit's name | Bits named or exercised |
|---|---|---|
| 0xe200 | `DDO3_STATUS_REG` (read) | bit 0 `STATUS_NEXT`, the echo of the control bit below; bit 1 the "NOW" state; bit 5 `SWAP_RDY_DRIVE`, the echo of 0xe500 bit 0; bit 7 `AUTO_CONFIG_DAT_RCV`, the data arriving on the LVDS link. The test masks reads with 0xf3 when it prints them |
| 0xe300 | `DDO3_CONTROL` (write) | bit 0 `NEXT`; bit 7 `AUTO_CONFIG_DAT`, the data sent on the LVDS link. The test writes 0xa0 for data high and 0x20 for data low; bit 5 is set in both and is not named |
| 0xe500 | `DDO3_MUXDELAY` (write) | bit 0 `SWAP_RDY_DRV`: the pipe drives the shared swap-ready line |

The loopback test's messages settle the protocol bits: it sets `SWAP_RDY_DRV` and `NEXT`, polls bit 1 of the status for up to 100000 reads and reports "NEXT to NOW transition"; its failure advice is that another pipe pulling the external swap-ready line low prevents the transition. With the LVDS connectors cabled back to back it toggles `AUTO_CONFIG_DAT` and expects `AUTO_CONFIG_DAT_RCV` to follow. So, **established** by name and **inferred** for the network: discovery's 0xa1/0x21 writes send a 1 or 0 on the pipe's LVDS transmitter (bit 7) with `NEXT` held and bit 5 set as irsaudit sets it; bit 7 of 0xe200 is what the neighbour's transmitter delivers; bit 1 "NOW" comes up once `NEXT` is set and no pipe holds the swap-ready line low. In the swap ring, 0xe500 bit 0 decides whether a pipe drives swap-ready (1 standalone, 0 in a network, and 0 on the master once all members have swapped), and the 0xe300 `NEXT` bit marks the pipe that takes the next swap.

The other three addresses belong to the display board's option slot, not to the DPLEX controller: [dg.md](dg.md) has the ARM's `SWAP_CNTRL` writing 0x8001 on a DPLEX board where other boards take 0x1920, the display-generator sync-select request writing 0x8400, and 0x80 as the swap strobe; `irsaudit`'s option video setup writes 0x8001 = 0 and then 0x8400 = 0x1000 or 0x800 for the other option boards. The bit meanings of the kernel's 0x8400 values 0x7000 and 0xf000 and of bit 5 of 0xe300 are **unknown: no shipped software or published source depends on them beyond the values written** (routes tried: `kona_nclops.o`, `irsaudit`'s DPLEX and option-video tests and strings, the X modules' hyperpipe functions, which reach the pipe only through the `the channel-operation Kona driver requests*` ioctls, `setmon`, `gfxinit`, the `dplex.def` video-format rules, which hold only timing rules, and the 6.5.5 headers).

## Commands the driver sends

**Established** (`retools/tools/kona/kernel_commands.py`, output in [kona_kernel/commands.tsv](../kona_kernel/commands.tsv)). The driver writes one token word and then payload words to its command port, between kicks of `HH_GINTR_INFO` ([kona_kern.h](../kona_kernel/include/kona_kern.h) for the kick values and the payload layouts it has settled). Each row of `commands.tsv` is a constant token written by a named function; tokens built from a variable, and the user-supplied groups of the DMA ioctls, are not listed. The 25 distinct tokens (by name, `GED_NOP` included) and their senders, by token name in [GE.h](../GE.h):

| Sender | Tokens |
|---|---|
| `KONAstart` | `PIPE_SETUP` |
| `KONApcxswap` | `RDATA_SETUP`, `CONTEXT_LOAD`, `CONTEXT_DEACTIVATE`, `CONTEXT_INIT` |
| `KONAvalidateclip`, `kona_act_pcx` | `VALIDATE_READCLIP`, `VALIDATE_CLIP`, `VALIDATE_BANK`; `GED_NOP` pads |
| `KONAdestroyddrn` | `CONTEXT_MOPUP` |
| `kona_checkpipe` | `GE_INTR` |
| `kona_dmapool_update_pipe` | `DMAPOOL_SETUP` |
| `kona_idma` | `DO_IDMA` |
| `kona_start_selectfeed`, `kona_finish_selectfeed` | `START_SELECTFEED`, `FINISH_SELECTFEED` |
| `kona_mem_*` | `MEM_RESUME`, `MEM_SUSPEND`, `MEM_COPYDOWN`, `MEM_SWAPIN`, `MEM_SWAPOUT`, `MEM_RESERVE`; `GED_NOP` pads |
| `KONAschedswapbuf`, `KONAschedmgrswapbuf`, `KONAsetdisplaymode`, `kona_retrace_activate` | `DISPMODE`, `RETRACE_SEQID`, `SWAP_CNTRL`, `DPLEX_SWAP`, `VALIDATE_BANK`; `GED_NOP` pads |

Payloads read by hand for the tokens no other document covers (`kona_mem.o`, `kona_setup.o`, 6.5.30m; **established** for count, order and source). All words are 32-bit, written to the command port between the second and third kick.

The memory tokens manage four pools of pipe memory. `kona_mem_init` (0x0-0x3c) points pool record i (24 bytes at pipe state +4976 + 24i) at the configuration record's memory-type record i (pipe state +388 + 28i, the four seven-word records of [the configuration record](#the-configuration-record-and-its-identity-words)); the 6.5.5 header names the memory types `arm`, `ge` and `tex`. The first payload word of every `MEM_*` token is that pool index, 0-3, computed as (pool record - (pipe state +4976)) / 24. An allocation is a 96-byte record (`kona_mem_alloc`): byte +0 the caller's id byte (byte 1 of the memory allocate Kona driver request argument), +1 the pool (byte 0), +4 the alignment, +6 flags (bit 0: one copy per engine), +8 the size and +12 the offset in the pool.

| Token | Sender, caller | Payload |
|---|---|---|
| `HP_MEM_RESUME` 0x1de | `kona_mem_resume` (0xa8c-0xc10) | n words, the words at pipe state +5116 onward, where n is the count at +5112; sent only when n is 2 or more and the pipe is alive, then the count is cleared. `kona_mem_suspend_complete` stores what the pipe returned for `MEM_SUSPEND` there ([hip.md](hip.md)), so the resume hands the pipe back its own suspend record |
| `HP_MEM_SUSPEND` 0x1df | `kona_mem_swapout_func`, before `MEM_SWAPOUT` when +5112 is 1 | 1 word: 0x104 |
| `HP_MEM_COPYDOWN` 0x1e1 | `kona_mem_copydown_func`, called by `kona_mem_compress` (0x12f4-0x1388) | 4 words: pool, the block's old offset, its new offset, its size. `kona_mem_compress` walks the pool's list and slides each block down to the lowest offset its alignment allows |
| `HP_MEM_SWAPIN` 0x1e2 | `kona_mem_swapin_func`, called by `kona_mem_swapin` (0x1a38-0x1b98) | pool, offset, size (in units), unit size (the memory-type record's word 5), copy count (1, or the record's word 2 when flag bit 0 is set), then the host buffer's address pair (high word = address >> 12, low word = (address & 0xfff) \| 0x9000) and 0x102 when the driver-wide DMA flag is set. With the flag clear the low word is 0xffffffff and the saved data follow in the FIFO, size x unit / 4 words per copy, then 0x102 |
| `HP_MEM_SWAPOUT` 0x1e3 | `kona_mem_swapout_func`, called by `kona_mem_swapout` (0x1150-0x12dc) | 8 words: pool, offset, size, unit size, copy count, the address pair of a buffer `kvpalloc` just allocated and `alloc_gfx_io_space` mapped, and 0x102 |
| `HP_MEM_RESERVE` 0x1e4 | `kona_mem_reserve_func`, called by `kona_mem_update_driver` (0x1bec, 0x1c40) and `kona_mem_free` (0x2830) | 4 words: pool, id byte, offset, size. `kona_act_pcx` calls `kona_mem_update` first, which re-reserves every block the incoming node holds in each of the four pools (lists at private record +144 + 16 x pool) and the shared list; `kona_mem_free` releases a block with offset and size 0 |
| `HP_PIPE_SETUP` 0x1f1 | `KONAstart` | 3 words: pipe state +2592, pipe state +2596, the constant 0x4000. **Established** (`arm_pipe_setup` 0x0c023298, `start_kcomm` 0x0c022800): the firmware keeps them as `gecomm_pnum`, `gecomm_poff` and `gecomm_len` (0x04046fd8-0x04046fe0), sends all three to every engine, and `start_kcomm` loads them into the second output-DMA channel (raster-bus 0x460 and 0x461 the address pair, 0x462 and 0x463 the length). So 0x4000 is the byte length of the engine-event area the pipe writes back |
| `HP_TBUS_1` 0x0e2 | `KONAschedswapbuf` (`kona_video.o` 0xc80-0xca0), only when the swap mode argument is 2 and the pane is the last member of its swap group to arrive | 2 words: 0x478478 twice, then the function calls `rrmValidateBuffer` and kicks `HH_GINTR_INFO` without a third word. The token map entry (0x5847c8c1), `mgesi_TBUS_1` (reads command words 0-2) and the diagnostic senders (`fcTbusWrite`, the firmware's `diag_tbus_1`) all take three, so on this path the pipe takes the next command-port word as the third (**inferred** from the count). `retools/tools/kona/kernel_commands.py` misses this site, so `commands.tsv` does not list it |

**Established:** the trailing 0x102 and the 0x104 of `MEM_SUSPEND` are the event codes the pipe returns when it finishes: [hip.md](hip.md) maps GE event 0x102 to `kona_mem_swapin_complete` and `kona_mem_swapout_complete`, and 0x104 to `kona_mem_suspend_complete`. So the host names the completion event it expects in the command; they share their numbers with the `HISTOGRAM` and `GETHISTOGRAM` tokens only by coincidence of range (**inferred**). The address pair has the same form as the DMA and context packets (0x9000 in bits 15-12 of the low word; [open-questions.md](open-questions.md#host-interface-hip)).

The payloads of the context, validate and DMA tokens are in `kona_kern.h` and [hip.md](hip.md), those of the display tokens in [dg.md](dg.md); this table and those are the index.

## The configuration record and its identity words

**Established.** the set-configuration-information Kona driver request (10006) copies 1912 bytes from the caller into the pipe state at +244 (`KONAprivate`, [above](#private-ioctls)). The 6.5.5 installed header the Kona kernel driver header 2 declares `kona_config`; its size under the header's declarations is exactly 1912 bytes (the identity block of 924 bytes, plus thirteen 76-byte NIC records, one per board: the record is a flag word, a serial number, and two 32-byte pages), so the 6.5.30m record has that layout. Offsets from the start of the record (add 244 for the pipe state):

| Offset | Field |
|---|---|
| 0-32 | `bdset` (board-set type), `gecnt`, `rmcnt`, `befram`, `gpi`, `channels`, `vidopt`, `colmap`, `extgamma` |
| 36 | `rm[4]`: `present`, `texram` pairs |
| 68 | `dg`: channel count and revision, option-channel type and revision |
| 84 | software state: engines and raster managers in use, occupancy mask, narrow flag, logical-to-physical engine ids, screen width and height, pixel depth, four memory-type records of seven words |
| 256 | `id.ge`: `board`, `ioadap`, `hip` (+264), `ged`, `bef` |
| 276 | `id.rm[4]`, 140 bytes each: `board`, `pg`, `tg`, `tf[4]`, `tm[8]`, `imp[20]` |
| 836 | `id.dg`: `board` (836), `fm` (840), `xmap[4]` (844-856), `voc[8]` (860-888), `dac[8]` (892-920) |
| 924 | NIC records |

The identity words are 32-bit values, one per chip, whose test macros in the header look at the top nibble (a revision) and, for the host-interface and image-processor chips, at bits 12-15 (a part number): `KONA_ID_XMAP8A` is `(id.dg.xmap[n] & 0xf0000000) == 0`. **Inferred** from that layout that they are boundary-scan identification codes read by the firmware; the ARM replies to the config request with a count word of 0x1de and then 478 words of its own board-configuration block (`arm_getconfig`, 0x0c022474-0x0c0224cc; [arm1_firmware.md](../ucode/arm1_firmware.md)), which reaches past the xmap and voc words. How the host fills the rest is **unknown**.

**Established.** The driver reads exactly one of these words: `kona_video_intr` loads the word at pipe state +1088 (the Kona kernel driver video assembly unit, line 1784, the cursor-position code in [dg.md](dg.md#cursor)). 1088 - 244 = 844 is `id.dg.xmap[0]`, the identity word of the first display-generator XMAP chip. It is not a host-interface register and the kernel never reads one: the word comes from the configuration the caller supplied. A zero top nibble (XMAP8A) clears the two low bits of the cursor x field.

## Function reference

One entry per `kona.a` function, with its role, hardware effect and where it was read, is in [kernel-functions.md](kernel-functions.md). The sections below are the longer treatment.

Every function of `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` in the 6.5.30m `IP27boot` kernel objects, grouped by object and family. Read from annotated disassembly: `retools/tools/kona/kernel_annotate.py OBJECT` prints `objdump -dr` with call targets and the string literals each instruction addresses. `gfxs.a` holds a byte-identical copy of `gfx.o` plus `gfx_flow.o`, `gfx_debug.o` and `klconfig.o`. Functions documented in the sections above are not repeated.

### Generic graphics layer (`gfx.o`)

Conventions. Offsets are bytes. "Established" means read from the `gfx.o` disassembly (hex offsets are `.text` offsets). "Inferred" means reasoned from use, with the reason given. Structure names (`gfx_gfx`, `gfx_board`,
`gfx_data`, `gthread`, `gfx_group`,
`gfx_list`, `gfx_fncs`) are the 6.5.5 header's; the 6.5.30m offsets below were checked against the header's field order and agree except where stated. Every string below was recovered from the `.rodata` offset the instruction forms (offsets 0x0-0x3e0 of `.rodata`). The ioctl numbering, the thread flag bits and the connection flag bits are the header's
`GFX_BASE` (100) series, `GTHREAD_*` and
`GFX_*`/`GFXS_*` constants; the code uses the same numbers.

Errno values used, all **established** as immediates: 1 EPERM, 6 ENXIO, 12 ENOMEM, 13 EACCES, 14 EFAULT, 16 EBUSY, 19 ENODEV, 22 EINVAL, 54 EBADRQC, 1008 ENOTSUP (names from the 6.5.5 `errno.h`).

Layouts used throughout (**established** from the accesses, role names ours):

- Connection (`gfx_gfx`, 128 bytes, allocated by `gfxopen`): +0 spinlock, +4 flags (1 mapped, 4 diagnostic, 8 OpenGL, 0x10 unmapping, 0x20 mapped-all), +8 board, +16 owning thread handle, +24 next connection of the thread, +32 board function table, +40 board private data, +48 region handle, +56 side flags (1 referenced by the STREAMS side, 2 by the character side), +72 the rendering node currently bound, +80 per-connection semaphore, +96 group, +104 and +112 a 128-bit CPU mask.
- Board (`gfx_board`, 72 bytes, from `GfxRegisterBoard`): +0 info record, +8 managing connection, +16 owning connection, +24 board number, +32 read queue, +40 write queue, +48 short minor, +50 short index, +56 function table, +64 board private data.
- Board private data (`gfx_data`) fields touched here: +0 managing connection, +16 count of open rendering nodes, +56 pipe semaphore, +72 connection holding the pipe semaphore, +80 pipe lock count, +104 backed-up flag, +112 clear-backup function, +120 resched flag, +128 the OpenGL vsync counter.
- Function table offsets used: +8 attach, +16 detach, +24 initialize, +32 download, +40 start, +48 position cursor, +56 exit, +96 map, +104 unmap, +112 invalidate TLB, +192 release pipe semaphore, +200 private-ioctl, +208 frame-scheduler install, +216 frame-scheduler uninstall.
- Thread record (`gthread`, 40 bytes): +0 thread handle, +8 flags (2 member of an IrisGL group just given graphics, 4 has gone through exit, 8 suspending), +16 shared connection list, +24 group, +32 next in hash bucket.
- Group record (`gfx_group`, 32 bytes): +0 thread-group handle, +8 member count, +12 count of running IrisGL members, +16 spinlock, +24 next in bucket.
- Connection list (`gfx_list`, 32 bytes): +0 reference count, +4 reader count, +8 sync variable, +16 spinlock, +24 first connection.
- Per-CPU statistics `gfxinfo`: array of 32-byte records, one per configured CPU; +12 is bumped on every ioctl.
- Globals by role: board table `GfxBoards`, board count `GfxNumberOfBoards`, board limit `GfxBoardLimit`, device table
  `GfxDev` (connection pointers indexed by minor), device limit `GfxDevLimit`, a pair of semaphores `GfxBoardInitSema` (+0) and
  `GfxDevSema` (+16) in `.bss`, group table (16 bucket heads), thread table (16 buckets of 128 bytes).

#### Table locks: `gfxtable_readerlock`, `gfxtable_readerunlock`, `gfxtable_writerlock`, `gfxtable_writerunlock`

Lock object is `{int readers; spinlock at +4}`.

- `gfxtable_readerlock(lock)`: **established** (`gfx.o` 0x0). Takes the spinlock, increments the reader count, releases the spinlock. Readers do not wait for anything but the spinlock.
- `gfxtable_readerunlock(lock)`: **established** (0x44). Takes the spinlock, decrements the reader count, releases it.
- `gfxtable_writerlock(lock)`: **established** (0x88). Takes the spinlock; while the reader count is positive it drops the spinlock, `nano_delay`s 1000 ns, and retakes it. Returns holding the spinlock, with the interrupt-level cookie as the return value. New readers are therefore blocked for the writer's whole critical section.
- `gfxtable_writerunlock(lock, cookie)`: **established** (0x108). Releases the spinlock with the cookie.

#### Connection-list locks: `GfxListWriterLock`, `GfxListWriterUnlock`, `GfxListReaderLock`, `GfxListReaderUnlock`

Lock object is the connection list record (`gfx_list`).

- `GfxListWriterLock(list)`: **established** (0x2a50). Takes the spinlock at +16; while the reader count at +4 is positive, sleeps on the sync variable at +8 (`sv_wait`, priority 25, which releases the spinlock) and retakes it. Returns the interrupt-level cookie with the spinlock held.
- `GfxListWriterUnlock(list, cookie)`: **established** (0x2ac8). Releases the spinlock at +16 with the cookie.
- `GfxListReaderLock(list)`: **established** (0x2ae4). Spinlock, reader count +1, unlock. No return value, no wait.
- `GfxListReaderUnlock(list)`: **established** (0x2b28). Spinlock, reader count -1, `sv_signal` on the sync variable, unlock.

#### Group table: `init_gfx_group_table`, `gfx_group_find`, `gfx_group_create`, `gfx_group_destroy`

Group handle hash: low four bits of the thread-group handle, or bits 12-15 if the low four are zero (the header's the group table index graphics-driver request). Table is 16 pointers (128 bytes) with chained buckets via +24, guarded by the table lock.

- `init_gfx_group_table()`: **established** (0x124). If the table pointer is null, `kern_malloc(128)`, zero it, `spinlock_init` the table lock's spinlock (name "ggt") and zero its reader count. On allocation failure it prints the
  `.rodata` 0x0 text "Error: unable to allocate gfx_group table" at `cmn_err` level 0 and then continues into the zeroing with the null pointer (no early return; a latent fault, not an error path that was exercised). No return value.
- `gfx_group_find(thread_handle)`: **established** (0x188). Maps the thread handle to its thread-group handle (`threadhandle_to_threadgrouphandle`), hashes, reader-locks the table, walks the bucket for a record whose +0 matches, reader-unlocks. Returns the record or 0.
- `gfx_group_create(thread_handle)`: **established** (0x240). `kern_malloc(32)`; returns 0 on failure. Sets +0 to the thread-group handle, +8 and +12 to 0 (the rest is not cleared),
  `spinlock_init` at +16 (name "ggpl"), then writer-locks the table, pushes the record on its bucket head, unlocks. Returns the record.
- `gfx_group_destroy(group)`: **established** (0x2fc). Writer-locks the table, unlinks the record from its bucket (comparing the handle), unlocks, then `spinlock_destroy` at +16 and
  `kern_free`. It does not look at the member count. A null argument faults.

#### Graphics thread table: `init_gthread_table`, `gthread_create`, `gthread_destroy`, `gthread_find`, `gthread_attach_list`, `gthread_detach_list`, `gthread_attach_group`, `gthread_detach_group`

Thread hash (the header's `GTHREAD_TABLE_INDEX`): bytes 1, 2,
3 of the handle combined as `((b1*29 ^ b2)*29 ^ b3) & 0xf`. Buckets are 128 bytes apart: +0 reader count, +4 spinlock, +8 head of chain (chained through thread +32).

- `init_gthread_table()`: **established** (0x3cc). If the table pointer is null, `kern_malloc(2048)`, zero it, and for each of 16 buckets `spinlock_init` at +4 (name "ggt") and zero the reader count. On allocation failure prints
  `.rodata` 0x40 "Error: unable to allocate gthread table" at level 0 and then, as above, proceeds into the zeroing with a null pointer.
- `gthread_create(thread_handle)`: **established** (0x46c). `kern_malloc(40)` (0 on failure), sets +0 handle, +8 flags 0, +16 list 0, +24 group 0. Calls
  `gfx_group_find`; if a group exists, `gthread_attach_group` attaches it. Then writer-locks the bucket and pushes the record at the head. Returns the record. It does not check for an existing record for the same handle; callers call `gthread_find` first.
- `gthread_destroy(thread_handle)`: **established** (0x568). Writer-locks the bucket, unlinks the record with that handle, unlocks, `kern_free`s it. Does nothing else; callers detach the list and group first.
- `gthread_find(thread_handle)`: **established** (0x800). Reader-locks the bucket, walks the chain comparing +0, reader-unlocks, returns the record or 0. The result is used after the lock is dropped.
- `gthread_attach_list(thread, list)`: **established** (0x65c). If `list` is non-null, increments its reference count (no atomic) and stores it at thread +16. If `list` is null, allocates a fresh 32-byte list (returns 0 if that fails), sets reference count 1, reader count 0, first connection 0, `init_sv` at +8 (name "glw"),
  `spinlock_init` at +16 (name "gfxl"), and stores it. Returns 1.
- `gthread_detach_list(thread)`: **established** (0x6f8). Clears thread +16, decrements the list's reference count, and if it reaches 0 does `spinlock_destroy`,
  `sv_destroy` and `kern_free`. Returns 1. The list pointer must be non-null.
- `gthread_attach_group(thread, group)`: **established** (0x74c). Under the group's spinlock increments the member count at +8, stores the group at thread +24. Returns 1.
- `gthread_detach_group(thread)`: **established** (0x7a8). If thread +24 is null returns 0. Otherwise clears it, decrements the group's +8 under its spinlock, returns 1. The group record is not freed here.

Helpers in the same family, not in the assigned list: `gthread_find_gfxp(handle)` (0x8dc) returns the first connection of the thread's list, or 0. `gthread_scan(callback, arg)` (0x914) calls
`callback(0, arg, 0)` first (a nonzero result makes `gthread_scan` return 0 immediately); then reader-locks all 16 buckets, calls `callback(thread, arg, 1)` for every thread whose flag 4 (has exited) is clear, stopping and returning the first nonzero result after unlocking everything; at the end unlocks and returns
`callback(0, arg, 2)`.

#### Board registration and hardware graph: `GfxRegisterBoard`, `GfxAddHwgraphEdge`, `gfxinit`

- `GfxRegisterBoard(fncs, data, info)`: **established** (0xa64). If `GfxNumberOfBoards` is not below `GfxBoardLimit`, prints
  `.rodata` 0x80 "Gfx: board limit exceeded" at `cmn_err` level 4 and returns -1. Otherwise allocates a 72-byte board record into
  `GfxBoards[GfxNumberOfBoards]`, zeroes it, sets +56 to `fncs`, +64 to
  `data`, +0 to `info`, +24 to the board number, increments `GfxNumberOfBoards`, calls
  `RRM_Init` (its argument is not established), and returns 0. The meaning of the three arguments follows from the stores; the board drivers' own names for them are not in this file (inferred: they are the function table, private data and info record).
- `GfxAddHwgraphEdge(vertex, data)`: **established** (0xb48). Searches `GfxBoards` for the board whose +64 equals `data` (the loop has no upper bound: a miss runs off the table). Labels the vertex with the string
  "_gfxid" and the board index via `graph_info_add_LBL`. If the cached "gfx" directory vertex is still -1, creates it with `hwgraph_path_add` under the graph root (name "gfx"). Formats the index with "%d" and adds an edge of that name from the "gfx" vertex to the board's vertex
  (`hwgraph_edge_add`), returning that call's result. **Inferred:** the resulting path is a numbered edge under a "gfx" directory.
- `gfxinit()`: **established** (0x1d80). If `GfxDevLimit` exceeds 0x20000, prints `.rodata` 0x178 "Configured maximum number of graphics devices (GfxDevLimit==%d) exceeds absolute maximum of %d. Maximum reset to %d." (level 4) and sets the limit to 0x20000. Initializes the two semaphores
  (`GfxBoardInitSema`, `GfxDevSema`, value 1). Calls `processors_configured`,
  `init_gfx_group_table`, `init_gthread_table`, allocates `gfxinfo` as that many 32-byte records with
  `kern_calloc`, and registers it with `ksym_add` under the name "gfxinfo". The allocation of `GfxDev` itself is not here (**unknown** where; the symbol is external to `gfx.o`).

#### Character entry points: `gfxopen`, `gfxclose`, `gfxioctl`, `gfxcleanup`, `gfxread`, `gfxwrite`, `gfxmap`, `gfxunmap`

- `gfxopen` (`usr/cpu/sysgen/IP27boot/gfx.o` 0x1fb8): **established**. The minor in `*devp` (low 18 bits) must be 0 or
  1: 1 selects OpenGL mode (the connection gets flag 8), 0 is the legacy IrisGL mode (**inferred** from the header's OpenGL-mode constant and the error texts). Steps:
  `curthreadhandle`; `psema(GfxDevSema, 25)`; if `is_gsn_bypass_thread` returns nonzero, releases and returns 1008. Minor >= 2: returns 6. Scans
  `GfxDev` for the first null slot below `GfxDevLimit`; none: releases, prints `.rodata` 0x220 "gfx: open device limit reached" (level 4), returns 19. Finds the caller's thread record; a record with flag 4 (exited) is detached and destroyed, and a fresh one is created
  (`gthread_create`; failure returns 12). Looks up the group (`gfx_group_find`). Every existing connection of the thread must have the same mode (flag 8 against the requested mode); a mismatch prints `.rodata` 0x240 "gfx: attempt to do both
  IrisGL and OpenGL rendering from the same process/share group denied" through `cmn_err_tag` (id 2126, level 4) and returns 19. If the thread has a group, it runs
  `gthread_scan(gfx_conflict_scan, {mode, group})` with mode 1 (OpenGL) or 2 (IrisGL) and, if the scan reports 3, prints
  `.rodata` 0x2a0 "gfx: attempt to do both IrisGL and OpenGL rendering from the same share group denied" (id 2127), returns 19. Then allocates and zeroes a 128-byte connection, stores it in the free slot, sets +16 to the thread handle, +96 to the thread's group, initializes the spinlock (name "GFXP") and the semaphore at +80 (name "gfx", value 1), zeroes the mask at +104/+112 and sets the bit for the current CPU (the CPU number is a halfword read from a fixed private-page address). For OpenGL mode it sets flag 8 and clears the minor in
  `*devp`. List handling: if the thread already has connections, the new one is appended at the tail (taking the list writer lock when the group exists and the mode is IrisGL); if not, a new list is made (`gthread_attach_list(thread, 0)`), the connection becomes its first entry, and
  `setgfxsched_thread` is called. For the first IrisGL connection in a group, the group's running-IrisGL count (+12) is set to 1 and `curthreadgroup_scan(irisgl_sproc_setup_scan, {thread handle, group, list})` extends the list to the other group members. Finally releases
  `GfxDevSema`, sets side flag 2 on the connection, ORs the slot index into `*devp` (plus 0x20000 for OpenGL mode), returns 0. So the open is a clone open: the returned device number encodes the slot.
- `gfxclose(dev)`: **established** (0x24d8). Mask the low 18 bits of `dev`; if bit 0x20000 (OpenGL mode) is clear it takes
  `GfxDevSema` (and releases it on every exit). The slot is the low 17 bits; at or above `GfxDevLimit` returns 6, an empty slot returns 19. If the closer's thread differs from the connection's owner (+16): for an OpenGL-mode device number (bit 0x20000) or when the closer has no group, the owner's thread record is found with interrupts blocked
  (`splhi`), the connection is unlinked from the owner's list and relinked after the closer's first connection, and ownership is taken over; the owner is later killed (see below). Then calls `GfxDetach` on the connection, unlinks it from the closer's list (writer-locking the list), and `freesema`s +80. When an
  IrisGL connection was the last one of its list it zeroes the group's running count, detaches this thread from the group and runs `gthread_scan(irisgl_sproc_cleanup, group)` so the remaining members drop their lists. If the thread's list is now empty it calls `cleargfxsched_thread`,
  `gthread_detach_list`, `gthread_detach_group`, and when nothing remains `gthread_destroy`. After taking the streams lock it clears side flag 2, calls
  `gfxcleanup`, drops the streams lock, clears the `GfxDev` slot, releases `GfxDevSema` if taken, and returns 0. If the connection had been removed from a different process's list, it prints
  (`.rodata` 0x300, level 1) the closer's name and pid with "aborted - for closing another process' graphics file descriptor", and (`.rodata` 0x350) the owner's name and pid with "killed - another process closed its graphics file descriptor", sends the owner SIGKILL (9) and the closer SIGABRT (6) (`psignal`). **Inferred:** the point is that a file descriptor inherited across processes is not allowed to be closed from the other side.
- `gfxcleanup(conn)`: **established** (0x13ac). If side flags (+56) are 0, `spinlock_destroy` and
  `kern_free` the connection; otherwise nothing. This is the last-reference-gone test shared by the STREAMS and character halves.
- `gfxread()`, `gfxwrite()`: **established** (0x2b78,
  0x2b80): each returns 54 (EBADRQC).
- `gfxmap()`, `gfxunmap()`: **established** (0x335c,
  0x3364): each returns 54 (EBADRQC). Mapping is done through the ioctl path, not these.
- `gfxioctl` (`usr/cpu/sysgen/IP27boot/gfx.o` 0x2b88; arguments dev, cmd, arg, mode, cred, rvalp): **established**. Bumps `gfxinfo[cpu].+12`. Slot = low 17 bits of
  `dev`; at or above `GfxDevLimit` returns 6; empty slot 19; caller has no thread record 13. Serialization: an OpenGL connection used from a thread in a group is refused with 13 unless the caller is the connection's owner; a non-OpenGL
  (IrisGL) connection in a group takes the +80 semaphore around the call. Dispatch order and effects:
  - 101 `GFX_GETNUM_BOARDS`: stores `GfxNumberOfBoards` in `*rvalp`, returns 0.
  - 102: `copyin_xlate` of 24 bytes (converter `irix5_to_gfx_getboardinfo_args`), 14 on failure; board number out of range or null entry gives 19; otherwise calls the board's info function (+0) with the board private data, the user buffer, the length and
    `rvalp`, and returns its result.
  - 105 `GFX_IS_MANAGED`: `copyin` of a 4-byte board number (14 on failure, 19 for a bad board); `*rvalp` = 1 if the board has a managing connection (+8), else 0; returns 0.
  - 103 `GFX_ATTACH_BOARD`: `copyin_xlate` of 16 bytes (`irix5_to_gfx_attach_board_args`); 14 on failure, 19 for a bad board; if the connection already has a function table (+32) returns 16. Otherwise copies the board, function table and private data into the connection (+8, +32, +40), calls the board's attach function (+8) with the user address; on error clears the three fields and returns the error; on success makes the connection the board's owner (+16) if the board has none. Returns 0.
  - 112: same 16-byte argument and the same steps as attach, but without the "already attached" check (16).
  - 113: `drv_priv(cred)`; if it returns 0 sets connection flag 4 and returns 0, else returns that error.
  - Every other command first requires the connection to be attached (+32 non-null), else 13.
  - Commands 10000 and up: calls the board's private-ioctl function (+200) with the connection, the bound rendering node (+72), `cmd`, `arg`, `rvalp`, and returns its result. Commands 1000-9999:
    `RRM_Dispatch(conn, cmd, arg, rvalp)`.
  - 104 `GFX_DETACH_BOARD`: if the connection is IrisGL mode and in a group with more than one thread (`threadgroup_refcnt` != 1) returns 16; otherwise
    `GfxDetach(conn)`, returns 0.
  - 108: `copyin_xlate` of 40 bytes (`irix5_to_gfx_download_args`; 14 on failure), then the board's download function (+32) with the connection and the native argument; its result is returned.
  - 110 `GFX_MAPALL`: acquires the board's pipe semaphore (the sequence:
    `psema(+56, 537)`, record the connection at +72, spin with
    `us_delay(2)` while the backed-up flag at +104 is set) if the connection does not already hold it, locks the region handle (`ddv_lock`), calls the board's map function (+96) with (connection, 0, -1), sets connection flag 0x20 whether or not that succeeded, unlocks, and returns the map function's result. The pipe semaphore is not released here.
  - Commands 106, 107, 109,
    111 (and the unknown-command default) require the connection to be the board's owner (+16); otherwise return 1. Then: 106: takes the pipe semaphore as above, calls the initialize function (+24), zeroes the board data's +128 counter, with interrupts blocked calls the release hook (+192) if present, clears the owner (+72), `vsema`s the semaphore, and if the connection is mapped (flag 1) calls `rrmUnMapGfx`; returns the initialize result. 107
   : takes the pipe semaphore (no release here) and returns the start function's (+40) result. 109: does nothing, returns 0 (**established**: no code; **unknown** whether a board hook was meant). 111 `GFX_LABEL`:
    `copyin` of 16 bytes into the board's info record at +16 (the label field); 14 on failure, else 0.
  - Any other number below 1000 (for example 100 or 114) from an attached connection: if the connection is not the board's owner returns 1; if it is the owner, prints `.rodata` 0x398 "gfx: unknown ioctl (%d)"
    (`cmn_err_tag`, id 2128, level 4) and returns 22. From an unattached connection it returns 13.
  - The IrisGL semaphore is released after the call, and 0 or the handler's result is returned. The jump is a chain of compares, not a table. (**Established** from the compare constants 101, 102,
    105, 103, 112,
    113, 108, 104,
    110, then 106, 107, 109,
    111.)

#### Thread-scan callbacks: `gfx_conflict_scan`, `irisgl_sproc_setup_scan`, `irisgl_sproc_cleanup`, `GfxKiller`

Callbacks of `gthread_scan` take `(thread record, arg, phase)` with phase 0 start, 1 per thread, 2 end; `irisgl_sproc_setup_scan` instead takes
`(thread handle, arg)` for `curthreadgroup_scan`.

- `gfx_conflict_scan(thread, arg, phase)`: **established** (0x1e44). `arg` is `{int mode; ...; group handle at +8}`. Does nothing unless phase is 1 and the thread's group handle equals
  `arg +8`. For each connection of that thread's list, takes the connection semaphore (+80, priority 25), reads its mode (1 if flag 8 else 2), releases it. If a connection's mode differs from `arg`'s mode it sets `arg` mode to 3 and returns 1 (stopping the scan); otherwise returns 0.
- `irisgl_sproc_setup_scan(thread_handle, arg)`: **established** (0x1f28). `arg` is `{originating handle, group, list}`. Skips the originating thread (returns 0). For every other member:
  `gthread_create`, sets flag 2, writer-locks the list, `gthread_attach_list` with the shared list, unlocks,
  `setgfxsched_thread(handle)`. Returns 0. **Inferred:** gives every sproc'd IrisGL share-group member access to the opener's connections.
- `irisgl_sproc_cleanup(thread, group, phase)`: **established** (0x2470). Only for phase 1. If the thread's group equals `group`: `cleargfxsched_thread`,
  `gthread_detach_list`, `gthread_detach_group`, clears flag 2. Returns 0.
- `GfxKiller(thread, arg, phase)`: **established** (0x12b0). `arg` is `{int signal; board data at +8; calling thread record at +16}`. Phase 1 only. Skips the calling thread. For any other thread that holds a connection whose private data (+40) equals
  `arg +8`, calls `threadhandle_to_proc` and `psignal(proc, signal)`; at most once per thread. Takes the list reader lock when the thread has a group. Always returns 0 (the scan continues). The signal is 9 in the two callers in this file
  (`GfxOpen`, `GfxUnmanage`; read from the immediates). **Inferred:** removes other users of a board when a manager takes it over.

#### Frame-rate-scheduler hooks: `gfx_frs_valid_pipenum`, `gfx_frs_install`, `gfx_frs_uninstall`

- `gfx_frs_valid_pipenum(n)`: **established** (0x3458). Returns `n < GfxNumberOfBoards` (signed).
- `gfx_frs_install(intrgroup, pipe)`: **established** (0x3464). Looks up `GfxBoards[pipe]`, calls its frame-scheduler install hook (function table +208) with the board's private data and the interrupt-group descriptor, and returns the result. A null hook prints
  `.rodata` 0x3b8 "[gfx_frs_install]: Null operation" at `cmn_err` level 5; the return value on that path is not set by this code (**unknown**).
- `gfx_frs_uninstall(pipe)`: **established** (0x34bc). Same with the uninstall hook (+216), private data as the only argument; null hook prints `.rodata` 0x3e0 "[gfx_frs_uninstall]: Null operation" (level 5); return value unset on that path.

#### Scheduler, fault, exit and share-group hooks: `gfx_disp`, `gfx_fault`, `gfx_exit`, `gfx_shcheck`, `gfx_shdup`, `gfx_shalloc`, `gfx_shfree`

These are entry points called from outside `gfx.o` (the caller is not in this file; roles below are **inferred** from names and behavior).

- `gfx_disp(thread_handle, ...)`: **established** (0xc28). Finds the thread's first connection; none: returns 1. For each connection with board data: if the data's backed-up flag (+104) is positive and a clear-backup function (+112) exists, calls it; while still backed up, returns 0 if the connection is mapped or in use (flags & 3) or holds the pipe semaphore (+72). For a thread with a group and an IrisGL connection that holds the pipe semaphore with lock count 0, the thread not exited, resched flag clear and group running count nonzero, it calls `valusema` on the pipe semaphore and returns 0 if the value is negative (someone is waiting). Otherwise returns 1. **Inferred:** 1 means "may be dispatched", 0 means "hold the thread back".
- `gfx_fault(?, conn, addr)`: **established** (0xd5c). Finds the current thread's record (none: returns 1). For an IrisGL connection in a group takes the +80 semaphore; if the connection is mapped calls the board's TLB-invalidate function (+112); calls `RRM_ValidFault(conn, addr)`; releases the semaphore; returns 1 if the result was negative, else 0. **Inferred:** 0 means the fault was legitimate and fixed.
- `gfx_exit()`: **established** (0xe34). Finds the current thread's record (none: returns 0). Sets flag 4. If it has a group and the first connection is IrisGL mode and the thread is the only member (`threadgroup_refcnt` 1), then for each connection that holds the pipe semaphore: block interrupts, call the release hook (+192) if present, clear the holder (+72),
  `vsema`, restore. If it has no group, calls each connection's exit hook (function table +56) when present. Returns 0 in every path.
- `gfx_shcheck(thread_handle)`: **established** (0xfe0). Tears the thread's graphics state down. For IrisGL connections: decrements the group's running count (+12, under its spinlock) unless flag 2 is set on the thread; detaches list, group and scheduler state; if the running count is now 0, also releases any pipe semaphore a list connection holds (holder equals the connection, lock count 0). For
  OpenGL connections: destroys each connection's region handle (`ddv_destroy_handle`, clears +48), clears the list's first-connection pointer, detaches list, group, scheduler state, and `gthread_destroy`s the record. In both cases the thread record is gone afterward. No value used.
- `gfx_shdup(parent_handle, child_handle)`: **established** (0x1234). If the parent's first connection exists and is not OpenGL mode, creates a record for the child (`gthread_create`), shares the parent's list
  (`gthread_attach_list`) and calls `setgfxsched_thread(child)`. **Inferred:** called when a share-group or fork child inherits graphics.
- `gfx_shalloc()`: **established** (0x336c). Creates a group for the current thread (`gfx_group_create`), attaches it (`gthread_attach_group`), and with interrupts blocked and the list writer-locked sets each connection's group (+96); for a first connection that is not
  OpenGL it also sets the group's running count to 1. Restores the interrupt level; no result value is set (**inferred**: void).
- `gfx_shfree()`: **established** (0x342c). `gfx_group_destroy(gfx_group_find(current thread))`.

#### Streams side: `GfxClose`, `GfxProto`, `GfxWput`, `GfxRqService`, `sendMsg`, `GfxDelayedMessage`, `GfxSendMessage`, `GfxMessage`, `GfxIntrMessage`

The queue's private pointer (+40) is the connection.

- `GfxClose(q)`: **established** (0x16d0). If the connection has no board data and its board's managing connection (+8 of the board) is this connection, calls `GfxUnmanage`. Clears side flag 1, calls
  `gfxcleanup`, returns 0.
- `GfxWput(q, mp)`: **established** (0x1840). On message type 1 (M_PROTO) or 131 (M_PCPROTO) passes to
  `GfxProto`; type 134 (M_FLUSH) flushes the queue when bit 2 of the first byte is set (`flushq(q, 0)`) and frees the message; any other type prints
  `.rodata` 0xe8 "Gfx: throwing away unknown message (db_type=%d)" (level 4) and frees the message. Returns 0.
- `GfxProto` (`usr/cpu/sysgen/IP27boot/gfx.o` 0x173c; arguments q, mp): **established**. Reads the first word of the message data. If it is 0x53484d51 ("SHMQ"), stores the shorts at +4 and +6 of the data into the board's +48 and +50 (shmiq minor and index), rewrites the first word to 0x514d4853 and replies (`qreply`). If it is 102 or 0x53484951 ("SHIQ"), calls the board's position-cursor function (+48) with the board data and the two words at +4 and +8; a zero result frees the message, a nonzero result turns the message type into 138
  (M_ERROR) and replies. No function table: frees the message. Any other first word prints `.rodata` 0xb0 "Gfx: received a proto message of unknown type (%d)" (level 4) and frees it. Returns 0.
- `GfxRqService(q)`: **established** (0x1c10). Loops `getq`; for each message, if the next queue accepts it
  (`canput`) calls its put routine; otherwise `putbq`s the message back and returns 1. Returns 0 when drained.
- `sendMsg(mp, msg)`: **established** (0x18dc). `msg` layout: +0 board pointer, +8 one byte, +12 entry count, +16 that many 32-bit values. If the board's managing connection has side flag 1 set, it appends `count` 12-byte records to the message block (`count` bytes at +5 of the first, board +50 at +2) where each record holds the board's +48 short at +0, +50 at +4, the byte from
  `msg +8` at +6, and value i at +8, then `putq`s it on the board's read queue (+32). If the board is null or has no STREAMS-side manager it returns without queuing and without freeing `mp`. **Inferred:** the records are shmiq-style input events for the window system.
- `GfxDelayedMessage(msg)`: **established** (0x19dc). `allocb(12 * count, 3)`: success:
  `sendMsg`, `wakeup(msg)`,
  `kern_free(msg)`, returns 0. Failure: `bufcall` with itself as the callback; success returns 1 (deferred); failure prints
  `.rodata` 0x120 "gfx: out of buffers. message discarded", then `wakeup` and `kern_free` and returns 0.
- `GfxSendMessage(msg, intr)`: **established** (0x1a7c). Null `msg`: returns 1. With `intr` zero it holds the streams lock across the work; allocates an
  `mblk` of `12 * count`; on success calls `sendMsg` and returns 0. On allocation failure with
  `intr` zero: copies the message (`4 * count + 52` bytes), schedules `GfxDelayedMessage` through
  `bufcall`, drops the streams lock and `sleep`s on the copy (priority 25) until it is woken, returning 0 (or 1 if `bufcall` failed, after printing the "out of buffers" text and freeing the copy). On allocation failure with `intr` set it never sleeps: prints
  `.rodata` 0x148 "gfx: msg alloc failed. message discarded" and returns 1. The same message is printed if the copy cannot be allocated.
- `GfxMessage(msg)`: **established** (0x1bd8). `GfxSendMessage(msg, 0)`.
- `GfxIntrMessage(msg)`: **established** (0x1bf4). `GfxSendMessage(msg, 1)`; the interrupt-safe, non-sleeping form (**inferred** from the flag's effects).

Not in the assigned list but needed to read the above: `GfxOpen` (0x13e0) only accepts clone opens (flag 2, else 19), requires the caller to have a connection with board data, kills other users of the board (`gthread_scan` with `GfxKiller`, signal 9), waits
(`delay(100)` polls) until the board's open-rendering-node count (+16 of the board data) is 0, then makes the connection the board's manager (returns 1 if a manager exists), records the queues in the board (+32, +40), sets side flag 1 and returns a new device number with the board number as minor. `GfxUnmanage` (0x154c) undoes it. `GfxDetach` (0x1c8c) destroys the region handle when lookup says it is stale, calls
`RRM_Exit`, calls the board's detach function (+16) when a region handle remains, unmanages the board if this connection manages it, clears the board's label and owner if it owns it, and finally clears the connection's board, function table and private data.

#### 32-bit argument converters: `irix5_to_gfx_getboardinfo_args`, `irix5_to_gfx_download_args`, `irix5_to_gfx_attach_board_args`

All three follow the `copyin_xlate` callback protocol. **Established** (0x350c, 0x3584,
0x3624): the first argument is a mode and the last a descriptor record `{int staging-buffer size at +0; int needed size, written back at +4; caller's staging buffer at +8; pointer to the 32-bit source at +16 (written in mode 0, read in the convert mode)}`. In mode 0 (size query) they set the "needed" size at +4 to the 32-bit structure's size and point +16 at the staging buffer at +8 if +0 is large enough, otherwise at a fresh `kern_malloc` block of that size; they return 0. In mode nonzero (convert) they read the 32-bit structure at +16 and write the native structure at the second argument, widening the 32-bit pointer by zero extension:

- `irix5_to_gfx_getboardinfo_args`: 12-byte source `{board, buf pointer, len}` to native `{board at +0, buf at +8, len at +16}`.
- `irix5_to_gfx_download_args`: 32-byte source `{len, addr pointer, magic, unit, off, width, entry, run}` to native `{len +0, addr +8, magic +16, unit +20, off +24, width +28, entry +32, run +36}`.
- `irix5_to_gfx_attach_board_args`: 8-byte source `{board, vaddr pointer}` to native `{board +0, vaddr +8}`.

The caller passes the sizes 24, 40, 16 (native) and the ABI from
`curproc_abi` (all three: `gfxioctl` 0x2eb8,
0x2fc0, 0x2f30). Nothing in `gfx.o` frees the allocated buffer; `copyin_xlate` does ([below](#the-copy-routine-copyin_xlate)).

#### The copy routine `copyin_xlate`

**Established** (`copyin_xlate` in the linked 6.5.30m IP27 kernel `/unix`, 0xc0000000001b1b50-0xc0000000001b1c50; argument roles also in the 6.5.5 installed header the Kona stack header 9 and the ABI bits in the Kona stack header 5). Arguments: user source, native destination, native size, converter, the caller's ABI, a mask of ABIs that need no conversion, and a count handed to the converter as its third argument. Every caller in `gfx.o`, `rrm.o` and `kona_ioctl.o` passes `curproc_abi()`, the mask 4 (`ABI_IRIX5_64`) and the count 1. When the ABI is in the mask it is a plain `copyin` of the native size (EFAULT on failure). Otherwise it builds the descriptor on its own stack, so the descriptor words the converters read have these meanings:

- +0: the size of the routine's built-in buffer, 200 bytes in this kernel (`li v0,200` stored at 0xc0000000001b1bcc).
- +4: the byte count to fetch from the user, 0 on entry, set by the converter in mode 0.
- +8: the address of that 200-byte built-in buffer (the routine's stack pointer).
- +16: the buffer the converter chose (0 on entry): the built-in one when +0 is large enough, else a `kern_malloc` block.
- +24: the caller's ABI.

It calls the converter in mode 0 with (0, 0, count, descriptor), returns a nonzero result unchanged, then `copyin`s +4 bytes from the user into +16 (EFAULT, after freeing a heap buffer, on failure), calls the converter in mode 1 with (1, native destination, count, descriptor), frees +16 with `kern_free` whenever it is not the built-in buffer, and returns the converter's result. So every 32-bit image in this driver (8 to 56 bytes) fits the built-in buffer and the `kern_malloc` branch of the converters never runs in 6.5.30m; when it does run its block is freed here.

### Rendering resource manager (`rrm.o`)

#### Records and conventions used below

Sources: `rrm.o` of the 6.5.30m kernel, annotated disassembly; offsets in backticks are `rrm.o` `.text` offsets. Roles and field names are ours unless a header name is given in parentheses. **Established** means read from the disassembly; **inferred** carries its reason; **unknown** says what was tried. Every handler below is a leaf of `RRM_Dispatch` and is called as (connection, rendering node or 0, kernel copy of the argument block, user address of the argument block, user address for a returned id).

Rendering node, 176 bytes, one per slot of the external array `RRMrn` (slot 0 is never handed out; `rrm_maxrn` is an absolute constant). **Established** offsets used by `rrm.o`: +0 id word (halfword +0 = reuse count, halfword +2 = slot), +4 request mask (u16,
gr_reqmask), +6 valid mask (u16, gr_validmask), +8 context pointer (zeroed at open), +20 draw clip id, +24 read clip id, +28 swap-buffer id (the display id), +32 swap interval, +36 next-swap time, +48 sleep point (a sync variable,
gr_rnwait), +56 connection that opened the node (gr_creategfxp), +64 connection currently using it (gr_gfxp), +72 pipe state
(gr_bdata), +80 context slot (s16, -1 = none, gr_pcxid), +82 free byte (1 = unallocated), +83 "first context validation done" byte, +84 "bound to a process" byte, +88 older and +96 newer links of the context-slot recency list, +104 per-node spin lock
(gr_rnlock), +112 private record (gr_private), +120 draw pane, +128 read pane, +136 draw serial last sent, +140 read serial last sent, +144 video-sync interval, +148 video-sync remainder, +152 counter value at wake-up, +160 next sleeper on the video-sync list, +168 next sleeper on the swap-wait list. Resource mask bits (rrm.h names): 0x1 PCX, 0x2 CLIP, 0x4 BUFFER, 0x8 SWAPBUF, 0x10 RETRACE, 0x20 MESSAGE, 0x40 READ, 0x80 REFERENCE. This agrees with [above](#rendering-node-drawable-and-private-record) and the "Rendering node and drawable" comment in `kona_kern.h`; additions here are +20/+24 clip ids, +28/+32, +56, +72, +80..+104 and +144..+168 (+36 follows the header; `rrm.o` never touches it).

Pane, 184 bytes, one per entry of the external array `rrm_pane` (`max_pane` entries, set equal to `rrm_maxrn`). **Established**: +0 id (halfword +0 = reuse count, +2 = index), +4 clip id (0 = window gone), +8 serial, +12 valid mask
(u16, same bit meanings), +14 waiting mask (u16), +16 reference count, +18 displayed bank, +20 swap-buffer id, +24 swap interval, +28 next-swap time, +32 hardware-independent mode, +40 a counting semaphore ("p_sema") held by the thread validating the pane, +56 its owner (a connection), +64 sleep point for clip/swap-buffer validation, +72 sleep point for buffer validation, +80 spin lock, +88 pipe state pointer, +96 clip record (64 bytes, the `RRM_ValidateClip` image), +128 (= clip record +32) a 224-byte piece-list buffer allocated on first use, +160 swap group, +168 next pane in the swap group ring, +176 "has swapped this round" byte, +177 cushion byte. Globals:
`.srdata` holds addresses of the data; `.bss` +0 is a free list of eight pane indices (shorts), `.bss` +16 the pane-pool semaphore ("panesema", the only lock around bind, unbind, group edits); `.sbss` +4 is the free-list length (halfword) and +8 the garbage-collection scan cursor.

Connection (`gfx_gfx`, see the table in [the connection table](#the-graphics-connection-gfx_gfx)): `rrm.o` adds +4 flag bits 0x1 mapped, 0x2 in use, 0x4 diagnostic/privileged, 0x8 OpenGL client, 0x10 unmapping, 0x20 whole-pipe diagnostic map (matching the 6.5.5 `gx_flags` constants); +8 board record (record +8 is the managing connection); +32 operation table; +40 pipe state; +48 mapping handle (argument of
`ddv_lock`/`ddv_unlock`); +64 list of rendering nodes this connection opened (16-byte links {node, next}); +72 bound rendering node; +96 share-group record (spin lock at +16); +104 CPU bit mask used for late TLB invalidation. Pipe state, the prefix `rrm.o` uses: +8 current node, +16 node count, +20 context slots, +24 slot table, +32 newest and +40 oldest node, +48 spin lock ("bdatalock"), +56 big semaphore ("gfxsema", 16 bytes), +72 its owner, +80 nesting count, +84 busy hold, +88 mode count, +96 mode table, +104 FIFO-backed-up flag, +124 and +128 video-sync counters, +136 video-sync sleeper list, +160 swap-wait enable, +164 swap-wait clock, +168 swap-wait list, +176 count and +184 table of swap-ready lines, +192 cushion depth. The pipe state's +8 and +72 are the same words [above](#rendering-node-drawable-and-private-record) calls the current node and current connection.

Board operation table (connection +32), slots used by `rrm.o` (**established** offsets; the names are the 6.5.5 `gfx_fncs` member names in declaration order, an **inferred** match supported by the three slots kernel.md already fixed: +96, +104, +128): +64 create node, +72 destroy node, +80 validate clip, +88 set null clip, +96 map, +104 unmap, +112 invalidate TLB, +120 context swap, +128 context switch, +136 schedule swap, +144 unschedule swap, +152 schedule retrace event, +160 set display mode, +168 schedule manager swap, +176 suspend, +184 resume, +192 release big semaphore.

Taking the big semaphore recurs in many functions and is written once here (the sequence the 6.5.5 `GET_GFXSEMA` macro describes, **inferred** from its shape, **established** as code): if pipe state +72 is not this connection,
`psema(pipe state +56, 537)`, store the connection at +72, then
`us_delay(2)` while +104 is nonzero. "Hold" means this followed by +80 incremented; "release hold" is +80 decremented.

Errno values are quoted as numbers (**established**); names are SVR4 numbering (**inferred**): 2 ENOENT, 4 EINTR, 6 ENXIO, 9 EBADF, 12 ENOMEM, 13 EACCES, 14 EFAULT, 15 ENOTBLK, 16 EBUSY, 17 EEXIST, 19 ENODEV, 22 EINVAL, 37 ECHRNG.

#### Initialisation: `RRM_init`, `RRM_Init`, `init_panes`, `RRM_init_panes`

- `RRM_init` (`0xf7c`): no arguments. **Established**: for slots 1 to `rrm_maxrn`-1 sets the node's free byte (+82) to 1 and `init_sema`s element
  `slot` of the 16-byte array `RRMcall_sema` ("RRMcall_sema", count 1); stores `rrm_maxrn` into
  `max_pane` (the store sits in the delay slot of the call, `0x1018`); calls `init_panes`. Allocates nothing: `RRMrn`,
  `rrm_pane` and `RRMcall_sema` are external arrays. Slot 0 is skipped (**inferred**: reserved so that id 0 never names a node; `RRM_Dispatch` rejects slot 0).
- `RRM_Init` (`0x1028`): argument is the board's pipe state. **Established**: `spinlock_init(+48, "bdatalock")` and
  `init_sema(+56, 1, "gfxsema")`. Nothing else; the per-board node and pane tables are not touched. **Unknown**: which board-attach code calls it (not in `rrm.o`).
- `init_panes` (`0xdc4`): **Established**: `init_sema` of the pane-pool semaphore (`.bss`+16, "panesema"); then for each of
  `max_pane` panes `init_sema(+40, ".p_sema")`, `init_sv(+64, ".p_wait")`,
  `init_sv(+72, ".p_bwait")`, `spinlock_init(+80, ".p_lock")`. It does not zero the panes or the free list; **inferred** that the external array and `.bss` start zeroed, so the free list is empty and the first bind fills it through
  `pane_gc`.
- `RRM_init_panes` (`0xea4`): argument is a connection (a board is being reset). **Established**: for every pane whose pipe-state pointer (+88) equals this connection's pipe state: clear the valid mask (+12); if the waiting mask (+14) was nonzero, clear the owner (+56), `vsema(pane +40)`, clear the waiting mask; if the pane is in a swap group (+160), `rrmSwapUnGroup(connection, pane)`. It does not clear the clip id, reference count or wake sleepers on +64/+72. **Inferred**: used when the board is re-initialised so every window must revalidate.

#### Dispatch and messages: `RRM_Dispatch`, `RRM_Message`, `RRM_ValidateMessage`

- `RRM_Dispatch` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x4670): arguments (connection, command, user argument address, user address for a returned value). **Established**:
  - Command outside 1000..1099 gives 22. The handler, argument size, "manager-class" flag and a name string come from a 24-byte-per-entry table in `.data` indexed by command - 1000 (26 entries, `0x0`-`0x270`); a zero handler gives 22. The numbers, order and the 1100 limit match the 6.5.5 command set exactly.
  - Argument copy: `copyin` of the table size to a stack block (14 on failure); commands 1011 and 1016 use
    `copyin_xlate` with the converters `irix5_to_RRM_ValidateClip` and `irix5_to_RRM_GetDisplayModes` and the caller's
    `curproc_abi()`; the sixth and seventh arguments are the mask 4 (`ABI_IRIX5_64`, callers that need no conversion) and the count 1 handed to the converter ([the copy routine](#the-copy-routine-copyin_xlate)).
  - If the caller is the board's managing connection (board record +8 equals it) and the flag is set, it takes the big semaphore before the handler. Every flag-set command that reaches the handler runs with the nesting count (+80) raised and lowered around it; the dispatcher never releases a big semaphore it took for the manager.
  - Node lookup: commands 1004, 1010-1014,
    1017-1020 and 1000 (open) run with node 0. Command 1002 with slot 0 is allowed only for OpenGL connections (else 22) and runs with node 0; with a nonzero slot it takes the general path. General path: slot = low half of the first word; slot 0, slot >=
    `rrm_maxrn`, free byte 1 or id word unequal gives 22; a manager caller with a flag-set command proceeds directly; any other caller of a flag-set command gets 13; a flag-clear command must belong to the caller (OpenGL connection: the creator exists, is OpenGL, shares the pipe state, and a bound node is not in use by another connection, else 13 (`0x4a54`-`0x4aa4`); other connections: node on the connection's open list, else 13).
  - Flag-clear commands with a node run under `RRMcall_sema[slot]` (`psema` 25, re-checking the node afterwards, 22 if it changed) and release it after the handler.
  - The handler gets (connection, node, stack argument, user address, 4th dispatch argument); its result is returned.
  - Command map (command, table size, manager-class flag): 1000 8 0; 1001 4 0; 1002 4 0; 1003 12 0; 1004 8 1; 1005 12 0; 1006 8 0; 1007 4 0; 1008 12 0; 1009 56 0; 1010 20 1; 1011 64 1; 1012 12 1; 1013 8 1; 1014 8 1; 1015 4 1; 1016 24 0; 1017 20 1; 1018 8 1; 1019 12 1; 1020 20 1; 1021 8 0; 1022 8 0; 1023 16 0; 1024 20 0; 1025 12 0. Table sizes equal the 6.5.5 argument structures (64-bit layout) except 1014, which the header has no structure for (8 bytes read).
  - **Inferred**: flag 1 marks commands only the board manager issues (the general path refuses others with 13), but for the commands run with node 0 the dispatcher itself does not test who the caller is; none of those handlers tests it either, so any enforcement is outside `rrm.o` (the ioctl layer was not read for this).
- `RRM_Message` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x420c): command 1009. **Established**: under the node lock takes valid = node valid mask | pane valid mask (`pane_validmask` of the draw pane); the argument's mask (+4) is replaced by mask & valid. If that is nonzero: `rrmInvalidateRN(connection, node, mask)`,
  `invalidate_pane(mask, draw pane clip id, connection)`, `rrmUnMapGfx`. Then it forwards the message to the manager: no manager (board record +8 is 0) gives 14; otherwise builds a board message with the type byte (+8), a word count capped at 10 (from +12) and that many data words (from +16), calls `GfxMessage`, returns 0. **Inferred**: the client names resources it wants dropped and an upstream type from
  the board message types; the fullscreen, z-buffer and dont-freeze types are passed through unexamined.
- `RRM_ValidateMessage` (`0x2b10`): **Established**: reads the node's valid mask under its lock; if bit 0x20 (MESSAGE) is set returns 22; otherwise calls `rrmValidateBuffer(node)` and returns 0. `rrmValidateBuffer` (`0x2acc`, not in the requested list) sets the pane's next-swap time to its swap interval plus the pipe state's swap-wait clock (+164) when the swap-wait enable (+160) is set, then calls
  `validate_pane_buffer`. **Inferred**: acknowledges a message that `RRM_Message` invalidated, hence the 22 when nothing is outstanding. **Established negative**: nothing sets node bit 0x20 valid again. `RRM_OpenRN` starts the valid mask at 0x34
  (`MESSAGE`, `RETRACE`, `BUFFER`) masked by the request (`0x1ad0`, `0x1b30`); the only other halfword stores to node +6 in `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` are
  `rrmInvalidateRN` (`0x11fc`, clears bits), `rrmValidateRetrace` (`0x2e8c`, sets 0x10) and `rrmValidateMyPcx` (`0x3124`, sets 0x1). So after the first
  `RRM_Message` that names `MESSAGE`, the bit stays clear for the node's life and every later `RRM_ValidateMessage` goes on to
  `rrmValidateBuffer`; only a node that has never had its `MESSAGE` bit invalidated gets 22.

#### Rendering-node lifetime: `RRM_OpenRN`, `RRM_CloseRN`, `rrmCloseRN`, `RRM_Exit`, `RRM_BindProcToRN`, `rrmUnbindProcFromRN`, `rrmUnMapGfx`

- `RRM_OpenRN` (`0x1914`): argument block {id (must be -1), request mask}; fifth argument is where the new id is written. **Established**:
  - Hold the big semaphore (`0x1924`-`0x19d4`). Id not -1 gives 22 (release hold first). Under the pane-pool semaphore finds the first slot 1..`rrm_maxrn`-1 with free byte 1; none gives 12.
  - Zeroes 176 bytes keeping the old reuse count, clears the free byte, sets creator (+56) and user (+64) to the connection, id word = (old reuse count << 16) | slot, pipe state (+72), valid mask 0x34 then 0x30 (BUFFER cleared), request mask = argument | 0xb5 (PCX, BUFFER, RETRACE, MESSAGE, REFERENCE always requested). If the caller is the managing connection or did not ask for CLIP, BUFFER and REFERENCE are dropped from the request mask. Context slot -1, private record 0, `init_sv(+48, "RRMrn")`, `spinlock_init(+104, "rnlock")`.
  - Calls op +64 (create node, `0x1b5c`); nonzero gives 12 and marks the node free again. Success increments the pipe state's node count (+16). OpenGL connection: bound byte 0, writes the id to the fifth argument. Other connections: `kern_malloc(16)` link pushed on the connection's open list (+64, allocation not checked), bound byte 1, writes the id.
  - Returns 0, 12 or 22; always releases the hold.
- `RRM_CloseRN` (`0x1f0c`): **Established**: `rrmCloseRN(connection, node)`, returns 0.
- `rrmCloseRN(connection, node)` (`rrm.o` offset 0x1bf0), established: closes one rendering node and frees what it holds on the pipe.
  Clears the creator (+56). OpenGL connection: if the node's bound byte is set and its user is another connection, returns 0 without closing (**inferred**: the real close then happens when that user unbinds, see `RRM_BindProcToRN`); otherwise sets the user to this connection.
  Hold handling (`0x1c40`-`0x1c58`, `0x1e18`-`0x1e58`, `0x1dd4`-`0x1df0`): if the pipe state's owner (+72) is not this connection it takes the big semaphore with `psema(+56, 537)`, stores itself as the owner and spins with `us_delay(2)` while +104 is nonzero; an owner that is already this connection skips all three. Either way it adds 1 to the nesting count (+80) and, at the end, subtracts 1. It never calls `vsema`: the semaphore stays owned by the closing connection after the return, and is given back later by `rrmSuspend` (when the thread is switched out with the nesting count at 0) or by the tail of `RRM_Exit`. The OpenGL early return above happens before any of this, so it neither takes nor counts the hold.
  Under the hold, calls op +72 (destroy node) with (pipe state, connection, node). If the connection's bound node (+72) is this node, `rrmUnbindProcFromRN(connection)`; a nonzero result prints `.rodata`+0x178 "rrmCloseRN: ERROR rrmUnbindProcFromRN" with `cmn_err` level 0 and the close goes on.
  Under the pipe state lock (+48): removes the node from the swap-wait list (+168) and the video-sync sleeper list (+136), chained through node +168 and +160.
  Non-OpenGL: removes and frees its link on the open list (`kern_free`). Bumps the reuse count (15 bits) of the id. When the draw pane (+120) is set: `unbind_pane` on it and, if the read pane (+128) differs, on the read pane, then clears both pointers; with no draw pane neither pane is touched. Destroys the sleep point and lock, sets free byte 1. Clears pipe state current node (+8) if it was this node. When the node holds a context slot (halfword +80 not -1) it clears that slot's entry in the slot table (+24) and, if the connection is not the manager, unlinks the node from the recency list (+32/+40 ends, node +88/+96 links); a node without a slot skips both. Decrements the node count (+16) and the nesting count. Returns 0 on every path.
  Called by `RRM_CloseRN`, `RRM_Exit` and `RRM_BindProcToRN`.
- `RRM_Exit` (`0x1f2c`): argument is a connection (it is closing). **Established**:
  - OpenGL connection: if a node is bound (+72) and its creator (+56) is not this connection, takes that node's `RRMcall_sema` entry (`psema` priority 25), clears its bound byte (+84) and calls `rrmUnbindProcFromRN` when the creator is still set or `rrmCloseRN` when it is 0, then `vsema`; no message on this path. Then for slots 1 to `rrm_maxrn`-1 it closes each node whose creator is this connection, each under its slot's `RRMcall_sema`.
  - Other connections: pops nodes from the open list (+64) and closes each under its `RRMcall_sema`, until the list is empty (`rrmCloseRN` unlinks the entry).
  - Both close loops print `.rodata`+0x1a0 "RRM_Exit: ERROR rrmCloseRN" with `cmn_err` level 0 when `rrmCloseRN` returns nonzero (`0x2144` on the open-list path, `0x2154` on the slot path); since `rrmCloseRN` always returns 0 the message cannot appear in this build. The annotated listing labels the slot path's string `.rodata`+0x340 "age": the annotator added 0x1a0 to a register it still believed held the string from `0x2148`; the code forms `.rodata`+0x1a0 on both paths.
  - Finally, if the pipe state's owner (+72) is this connection: store 0 to the word at +84 and to the nesting count (+80), raise IPL (`splhi`), call op +192 if present, clear the owner, `vsema(+56)`, `splx`. This is where a connection that closed nodes gives back the big semaphore `rrmCloseRN` left it holding. Returns 0.
- `RRM_BindProcToRN` (`0x1464`): argument {id}, node from dispatch. **Established**: non-OpenGL connection: `rrmUnbindProcFromRN` first. OpenGL connection: if a different node is currently bound, takes that node's
  `RRMcall_sema`, clears its bound byte, then `rrmUnbindProcFromRN` if the node's creator still exists else `rrmCloseRN` on it. Then if the node is not 0: node user (+64) = connection, bound byte 1. Connection bound node (+72) = node. Calls
  `valusema(big semaphore)` and `force_resched()` if the value is nonzero (**inferred**: a waiter exists so give the CPU up). Returns 0. Node 0 means unbind (allowed for OpenGL only by the dispatcher).
- `rrmUnbindProcFromRN` (`0x13b4`): argument is a connection. **Established**: returns -1 if no node is bound. For a non-OpenGL connection that has a share group (+96), looks up the thread (`curthreadhandle`,
  `gthread_find`) and takes `GfxListWriterLock` on its connection list; `rrmDoUnMapGfx`; clears the bound node (+72); releases the list lock; returns 0.
- `rrmUnMapGfx` (`0x10d4`): argument is a connection. **Established**: if the connection has no share group or is an OpenGL connection, calls `rrmDoUnMapGfx`; otherwise finds the current thread's connection list and calls it with the list's spin lock (+16) held. `rrmDoUnMapGfx` (`0x1070`) raises IPL, sets flag 0x10, calls op +104 (unmap), clears the flag, restores IPL. **Inferred**: this is how the kernel forces the next pipe access to fault into
  `RRM_ValidFault`; every "force revalidation" step below ends here.

#### Binding a node to a window: `RRM_BindRNToClip`, `RRM_BindRNToReadAndClip`, `RRM_UnbindRNFromClip`, `RRM_MapClipToSwapbufID`

- `RRM_BindRNToReadAndClip` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x1554): argument {id, clip id, read clip id, bind id out, read bind id out}; fifth argument is the user address to copy the block back to (may be 0). **Established**:
  - Clip id 0 gives 22.
  - If the node already has a pane: `validate_my_pane_buffer` then `unbind_pane` on it, and on the read pane when request bit 0x40 is set; request bit 0x8 (SWAPBUF) is cleared.
  - `bind_pane(connection, clip id)` becomes the draw pane (serial cache +136 = 0). If the read clip id differs, a second `bind_pane` is the read pane (serial cache +140 = 0, request bit 0x40 set); if equal, the read pane is the same pane and bit 0x40 is cleared.
  - If either pane lacks its CLIP (draw) or READ valid bit, `rrmUnMapGfx` is called and no message is sent. If both are valid and the node is the pipe's current node, `RRM_CheckValidFault` (negative gives 14), op +80 (validate clip) is called with (connection, node, current node, address of the draw pane's clip record at +96); result -1 gives 14; on success the serial caches +136/+140 are set from the panes' serials. If both are valid and it is not the current node, the caches stay 0 (**inferred**: the clip is sent when the node's context is next activated).
  - Messages to the manager: the check for a manager comes first on every path and a missing manager returns 14 (even when both panes were valid). The unmapped (not valid) case sends up to two board messages of 3 words: type 4, or 0x84 for OpenGL connections, with words (clip id being bound, node id, previous clip id of that role), one for the read clip when it differs and one for the draw clip; the node's clip ids (+24, +20) are updated. In the both-valid case no message is sent and the clip ids are only updated.
  - OpenGL connections get the bind id words (the pane id word) written to +12 and +16 and copied out (14 on `copyout` failure). Returns 0 otherwise.
- `RRM_BindRNToClip` (`0x1854`): argument {id, clip id, bind id out}. **Established**: builds a five-word block with read clip id = clip id and calls `RRM_BindRNToReadAndClip` with no copy-out; for OpenGL connections and success, stores the bind id into +8 and copies 12 bytes out (14 on failure). Returns the callee's result.
- `RRM_UnbindRNFromClip` (`0x18f0`): argument {id, clip id}. **Established**: `pane_cleanup(clip id, connection)`; returns 0 always. **Inferred**: used by the manager when a window goes away; the node id is not used.
- `RRM_MapClipToSwapbufID` (`0x45f8`): argument {id, clip id, swap-buffer id out}. **Established**: `clip2pane`; result is the pane's swap-buffer id (+20) or -1 when no pane; if the user address is nonzero copies 12 bytes out (14 on failure); returns 0.

#### Pane allocation and garbage collection: `bind_pane`, `unbind_pane`, `clip2pane`, `pane_gc`, `pane_cleanup`, `pane_setnullclip`, `pane_validmask`

- `bind_pane` (`0x178`): (connection, clip id). **Established**: under the pane-pool semaphore (`psema`, 25) finds a pane with the same clip id and the same pipe state; if none, takes the last index of the free list (calling `pane_gc` first when the list is empty), bumps its reuse count (+0), sets +2 = index, clears displayed bank and valid mask, serial 1, clip id, pipe state. Removes the index from the free list wherever it is
  (`bcopy` shift). If the reference count was 0, valid mask |= 0x4 (BUFFER); valid mask |= 0x80 always; reference count incremented. Returns the pane. There is no failure return: if the garbage collector finds nothing the code uses index count-1 = -1 unchecked (**established** by reading; behaviour with a full table is **unknown**).
- `unbind_pane` (`0x34c`): (pane, connection). **Established**: under the pane-pool semaphore, reference count -1. Does not free anything.
- `clip2pane` (`0x394`): (clip id, connection). **Established**: linear scan of `max_pane` panes for clip id (+4) equal and pipe state (+88) equal to the connection's; returns the pane or 0. No lock.
- `pane_gc` (`IP27boot/rrm.o` at +0x0 for 376 bytes; `IP35boot/rrm.o` has an identical body): no arguments. **Established**: scans from the cursor (`.sbss`+8) to `max_pane`, then from 0 to the cursor, for panes with reference count 0, storing up to eight indices into the free list
  (`.bss`+0..15), then sets the cursor to one past the last found (0 when past `max_pane`-2) and the list length (`.sbss`+4). Called by
  `bind_pane` with the pane-pool semaphore held. **Inferred**: panes keep their clip binding after the last unbind so a rebind of the same window finds it; the free list is a cache of reusable entries.
- `pane_cleanup` (`0x408`): (clip id, connection). **Established**: `clip2pane`; if found: under the pane-pool semaphore and the pane lock, sets clip id 0 and clears valid bits 0x2,
  0x8 and 0x40; if the waiting mask was nonzero, clears the owner, `vsema(+40)`, clears the waiting mask and
  `sv_signal(+64)` to wake sleepers. If the pane is in a swap group, `rrmSwapUnGroup(connection, pane)`. Locks: pane-pool semaphore outside, pane lock inside.
- `pane_setnullclip` (`0x4bc`): (pane, connection). **Established**: calls op +88 with the pane's clip record (+96); increments the serial (+8); valid mask |= 0xca (CLIP, SWAPBUF, READ, REFERENCE). **Inferred**: used for a window that has vanished, to give the pipe an empty clip that a client with no clip id can still draw into.
- `pane_validmask` (`0x504`): (pane). **Established**: returns the halfword at +12.

#### Clip and buffer validation: `validate_pane_clip`, `validate_pane_buffer`, `validate_my_pane_buffer`, `validate_my_pane_resources`, `invalidate_pane`, `invalidate_pane_buffer`, `rrmInvalidateRN`, `RRM_InvalidateRN`, `RRM_ValidFault`, `rrmAllocPcxid`

- `validate_pane_clip` (`0x614`): (clip id, connection, argument block of the `RRM_ValidateClip` form). **Established**:
  - No pane for the clip id returns 0. Allocates the pane's 224-byte piece-list buffer (+128) on first use (`kern_malloc`, unchecked). If the argument's piece-list pointer (+32) is nonzero, copies `numpieces` x 16 bytes (capped at 224, forcing `numpieces` to 14) from user memory with `copyin`; failure prints
    "validate_pane_clip: copyin botch 0x%x %d" (level 4) and returns 14.
  - Under the pane lock: if valid bit 0x8 (SWAPBUF) is clear the pane's mode (+32) is the argument's mode (+56) and the displayed bank (+18) is 1 when mode bit 0x4 is set, else 0; if 0x8 is set the argument's mode bit 0x4 is forced to match the displayed bank and written to both argument and pane. The first 64 bytes of the argument are copied into the pane's clip record (+96), with the piece pointer replaced by the pane's own buffer; the serial (+8) is incremented.
  - If the pane's CLIP bit was already valid, returns 0 here; else valid mask |= 0x42 (CLIP, READ), clears bit 0x2 of the waiting mask, and when the waiting mask becomes 0 clears the owner and `vsema(+40)`; `sv_signal(+64)` wakes the sleeper. Returns 0. (`validate_pane_swapbuf` at `0x7d8`, not in the list, does the same for the swap-buffer id and bit 0x8.)
- `validate_pane_buffer` (`0x878`): (pane). **Established**: under the pane lock valid mask |= 0x4 (BUFFER) and `sv_broadcast(+72)`.
- `validate_my_pane_buffer` (`0x8c8`): (pane, unused, mask). **Established**: under the pane lock, if the caller's mask includes BUFFER and the pane's does not, `hold_nonfatalsig` then
  `sv_wait_sig(+72, 542)` (lock released by the wait); an interrupted wait returns -1; otherwise 0. Returns 0 without sleeping when BUFFER is already valid.
- `validate_my_pane_resources` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x97c): (pane, connection, mask). **Established**:
  - If the mask has none of 0x8e (CLIP, BUFFER, SWAPBUF, REFERENCE) returns 0. Otherwise `validate_my_pane_buffer` (negative gives -1), then under the pane lock valid mask |= 0x80 and missing = mask & ~valid & 0xa.
  - Nothing missing returns 0. Pane owner already this connection returns -1. A pane with clip id 0 whose connection is not the manager and whose mask asks for CLIP: an OpenGL connection gets `pane_setnullclip` and 0; any other connection is sent SIGKILL (`psignal`, 9) with
    "validate_my_pane_resources #N: lost clipid - killing process %d" (levels 4, tags 2129, 2130,
    2131 for the three places) and gets -1.
  - Otherwise takes the pane's semaphore (+40): `cpsema`, and if that fails `psema(…, 798)` with signals held (-1 if interrupted; after waking, 0 if somebody else validated the pane meanwhile, with the pane semaphore released). Holder sets the waiting mask (+14) = missing and owner = connection, then, with the pane lock dropped, sends the manager a board message of one word (the clip id): type 1 for CLIP, 2 for SWAPBUF, 3 for both (the validate-clip message types,
    `_VALIDATESWAPBUF`, `_SWAP_N_CLIP`), via `GfxMessage`. No manager returns -2. Then sleeps on the pane (+64,
    `sv_wait_sig`, 542) until the waiting mask clears or ownership changes (-1 if interrupted).
  - Pane lock held through each check, released across `GfxMessage` and the sleeps. **Inferred**: the manager (the X server) answers with a `RRM_ValidateClip` or `RRM_ValidateSwapBuf` command, which lands in
    `validate_pane_clip` / `validate_pane_swapbuf`.
- `invalidate_pane` (`0x50c`): (mask, clip id, connection). **Established**: `clip2pane`; with mask bit 0x2 the mask also gets 0x40 (READ), and a missing pane returns 0; under the pane lock clears the mask bits from the valid mask; returns the valid mask as it was before.
- `invalidate_pane_buffer` (`0x598`): (mask, clip id, connection). **Established**: as `invalidate_pane` but returns 0. **Unknown**: its callers are not in `rrm.o` (not referenced by any function read).
- `rrmInvalidateRN` (`0x1168`): (connection, node, mask). **Established**: takes the big semaphore (not the nesting count), then under the node lock clears the mask bits from the node's valid mask; returns 0 if every bit asked for was valid before, else -2.
- `RRM_InvalidateRN` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x1228): command 1010, argument {id, clip id, mask, mode out, flags out}; user address in the fourth argument. **Established**:
  - Mask outside 0xff gives 22; mask with any bit other than 0x2, 0x8, 0x40,
    0x80 gives 22.
  - `invalidate_pane(mask, clip id, connection)`; the old pane valid mask is kept to return in +8. If mask bit 0x8 (SWAPBUF): the pane must exist (22) and the connection must have a bound node (14); if the pane's swap-buffer id (low byte) is not 0xff, op +144 (unschedule swap) is called with (connection, bound node, swap-buffer id). A negative result returns its negation; 0 does nothing more; 2 means a swap is in flight: `rrmInvalidateRN(connection, bound node, 0x10)` and, if that returned 0, op +152 (schedule retrace event) and `rrmUnMapGfx`; any other positive result runs
    `validate_pane_buffer` and sets flags +16 to 1. The pane's mode (+32) is stored to +12.
  - Copies 20 bytes out (14 on failure). Returns 0.
  - **Inferred**: result 2 of the unschedule operation means the swap cannot be cancelled and the retrace event wakes the bound node later.
- `RRM_ValidFault` (`0x3378`): (connection, fault address). **Established**: runs when a pipe page is touched while the connection is unmapped. Steps:
  - Connection not whole-pipe-diagnostic and no bound node: "RRM_ValidFault: killing process %d because not bound to an rn" (level 4, tag 2132), SIGKILL, -1.
  - Take the big semaphore, then (unless diagnostic) loop: a bound node with clip id 0, not the manager, requesting CLIP: "RRM_ValidFault: killing process %d because not bound to clip region" (level 4), SIGKILL, -1. Valid = node valid mask | draw pane valid mask (if CLIP requested) with READ taken from the read pane (if READ requested; the manager skips the pane merge). All requested bits valid proceeds to the map. Otherwise: if RETRACE is missing, `rrmValidateMyRetrace`; if the semaphore was lost restart; `validate_my_pane_resources(draw pane, connection, request mask)` (negative gives -1), same for the read pane if READ requested, then
    `rrmValidateMyPcx` if the node's PCX bit was clear (negative gives -1). If the semaphore was lost during this, the loop restarts.
  - Map: `ddv_lock(connection +48)`; recheck ownership (else unlock and restart); for a non-OpenGL connection with a share group, take the group's spin lock; call op +96 (map) with (connection, fault address, -1 for whole-pipe diagnostic or the node's context slot); release locks and `ddv_unlock`; return the map operation's result.
  - **Inferred**: -2 from `validate_my_pane_resources` (no manager) collapses to -1 here without a kill.
- `rrmAllocPcxid` (`0x2eac`): (connection, node). **Established**: returns the pipe state's current node when the board has exactly one context slot (+20 equals 1). Otherwise: a node that already has a context slot, on a non-manager connection, is moved to the newest end of the recency list (unless already newest); returns 0. A node without one takes the first empty entry of the slot table (+24); for a non-manager connection with no empty entry the oldest node (+40) is evicted: the new node takes the victim's slot and the victim is returned; the node is linked newest. A manager's node takes an empty slot but is never linked and never evicts. **Inferred**: the returned node is the one `rrmValidateMyPcx` (`0x3024`, not in the list) passes to op +120 (context swap) or, when 0, uses to call op +128 (context switch) with the current node.

#### Swap, swap groups and display mode: `RRM_SwapBuf`, `rrmSwapWait`, `RRM_SetSwapInterval`, `RRM_SwapGroup`, `RRM_SwapUnGroup`, `rrmSwapUnGroup`, `RRM_SwapReady`, `RRM_CushionBuffer`, `rrmValidateMGRSwapBuf`, `rrmValidateMGRSwapBufSTREAM`, `rrmGenlockNotifySTREAM`, `RRM_SetDisplayMode`, `RRM_GetDisplayModes`

- `RRM_SwapBuf` (`0x3838`): argument {id, hardware mode, hardware-independent mode}. **Established**:
  - Ensures request bit 0x8 via `rrmSetResourceMask`. If the swap-wait enable (+160) is set and the pane has a swap interval and the swap-wait clock + 1 is below the pane's next-swap time, `rrmSwapWait` (nonzero returns 4).
  - `RRM_CheckValidFault` negative gives 14. Pane clip id 0: OpenGL connections return 0, others continue. The node's swap-buffer id (+28) = the pane's (+20). OpenGL connection: toggles the pane's displayed bank (+18) and sets or clears mode bit 0x4 to match; others leave the mode alone. Pane mode (+32) = the mode.
  - Low byte of swap-buffer id 0xff with no swap group returns 0; otherwise a swap-buffer id below the mode count stores the hardware-independent mode into the mode table (+96). Holds the nesting count; takes the pane-pool semaphore if the pane is in a swap group.
  - `invalidate_pane(0x4, node clip id)`, then op +136 (schedule swap) with (pipe state, node, swap-buffer id, hardware mode). Nonzero result: `validate_pane_buffer` and returns it. Zero: `rrmUnMapGfx`, adds 1 to the per-CPU counter at +20 of the 32-byte
    `gfxinfo` entry for the CPU (the CPU number read from the halfword at absolute address `0xffffc420`), returns 0. Releases the hold and the pane-pool semaphore on all paths.
- `rrmSwapWait` (`0x3748`): (node). **Established**: under the pipe state lock, if the clock + 1 is less than the pane's next-swap time, inserts the node into the swap-wait list (+168, sorted by next-swap time through node +168) and sleeps
  `sv_wait_sig(node +48, 30)` with signals held; interrupted returns -1; else 0. Woken by
  `rrmValidateVideoSync`.
- `RRM_SetSwapInterval` (`0x41e4`): argument {id, interval}. **Established**: negative returns 22; stores the interval in the node (+32) and the node's draw pane (+24); returns 0. (The 22 comes from the delay slot, `0x41ec`.)
- `RRM_SwapGroup` (`0x3c4c`): argument {window id, group member window id}. **Established**: pane for the first id missing gives 2. A pane already in a group leaves it (`rrmSwapUnGroup`). Second id 0 creates a new group: `kern_malloc(12)` zeroed (refcount, countdown, last sequence number), the pane a ring of one. Otherwise the second pane must exist (9), be in a group (15) and share the pipe state (6). Joining takes the pane-pool semaphore, inserts the pane after the member in the ring (+168), group pointer (+160), swapped byte 0, group refcount +1. Returns 0,
  2, 6, 9,
  15.
- `RRM_SwapUnGroup` (`0x3bcc`): argument {window id}. **Established**: under the pane-pool semaphore: no pane gives 2, no group gives 15, else `rrmSwapUnGroup`, 0.
- `rrmSwapUnGroup` (`0x3ad4`): (connection, pane). **Established**: if the group's countdown (+4) is nonzero and the pane has not swapped (+176 is 0), the countdown is decremented; clears the pane's group pointer, unlinks it from the ring, group refcount -1; at 0 clears every swap-ready line slot equal to the group (table at pipe state +184, count at +176) and `kern_free`s the group. Caller holds the pane-pool semaphore. **Inferred**: group fields are {member count, outstanding swaps this round, last sequence number}, as the 6.5.5 header lists.
- `RRM_SwapReady` (`0x3d84`): argument {window id, line, on/off}. **Established**: line not below the line count (+176) gives 37; no pane 2; pane on another pipe state 6; no group 15. Takes the big semaphore if not held (not released here). On: empty slot becomes the group and returns 0; slot already this group 17; other group 16. Off: slot is this group clears it and returns 0, else 9. **Inferred**: marks which group drives a swap-ready line.
- `RRM_CushionBuffer` (`0x3eec`): argument {window id, on/off}. **Established**: no pane gives 2; pane on another pipe state 6; board cushion depth (+192) 0 gives 19. On: byte +177 already nonzero gives 16, else it becomes the board's depth, 0. Off: byte +177 is 0 gives store 0 and 0; byte nonzero gives 2 without clearing; this looks inverted against the on case and was read as written, not verified.
- `rrmValidateMGRSwapBuf(connection, value)` (`IP27boot/rrm.o` offset 0x40a0, 72 bytes), established: defers a manager swap-buffer validation out of interrupt context.
  If the connection and its board record (+8) exist, it calls `streams_timeout` with the STREAMS monitor, `rrmValidateMGRSwapBufSTREAM`, -100, the connection, the value and 0 (0x40c4-0x40e0). The two literals, **established** from the linked 6.5.30m IP27 kernel `/unix`: `streams_timeout` (0xc00000000015dce8) keeps the monitor, the function and the last three arguments in a callout record (+32, +40, +48, +56, +64) and passes its third argument to `itimeout` as the delay in ticks; `timeout_get_queuehead` (0xc000000000046870-0xc0000000000468c8) turns a delay of exactly -100 into an expiry time of 0, already due, and any other value at or below 0 into one tick. So -100 means "run at the next callout pass", the same value the base kernel's `cn_write` uses (0xc0000000000a1730) to push console output out of interrupt context. `streams_service` (0xc00000000015dac4) later calls the function with record +48, +56, +64, so the trailing 0 is a third argument that `rrmValidateMGRSwapBufSTREAM` and `rrmGenlockNotifySTREAM` never read (both use only their first two). Its only caller in the board objects is `kona_mswap_complete` (`kona_video.o`), which passes it the clip id of each completed managed swap; the deferred side then reports the finish to the manager with `GfxIntrMessage`. `IP35boot/rrm.o` has the same body at the same offset (identical disassembly).
- `rrmGenlockNotify(connection, value)` (`rrm.o` offset 0x4130), established: defers a genlock change notice to the manager out of interrupt context.
  Like the swap-buffer path it returns at once without a connection or board record, else calls `streams_timeout` with -100, the connection, the value and 0 (0x4154-0x4170).
  The deferred `rrmGenlockNotifySTREAM` (offset 0x40e8) sends the board manager an interrupt-time message of type 12 with the value through `GfxIntrMessage`.
- `rrmValidateMGRSwapBufSTREAM` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x4054): (connection, value). **Established**: with a connection and board record present, builds a 3-word board message of type 9 with the value as word 0 and words 1-2 zero, and sends it with `GfxIntrMessage`. Runs as the deferred callback of
  `rrmValidateMGRSwapBuf`.
- `rrmGenlockNotifySTREAM` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x40e8): (connection, value). **Established**: 2-word board message of type 12, words (0, value), `GfxIntrMessage`.
  `rrmGenlockNotify` (`0x4130`, not in the list) defers to it with the same `streams_timeout` pattern.
- `RRM_SetDisplayMode` (`usr/cpu/sysgen/IP27boot/rrm.o` 0x2b78): argument {id, hardware mode, hardware-independent mode}. **Established**: `RRM_CheckValidFault` negative gives 14; no manager gives 14; sends a 3-word board message of type 11, or 0x8b for
  OpenGL, words (node clip id, hardware-independent mode, hardware mode); `invalidate_pane(0x8, pane clip id)`; `rrmUnMapGfx`; returns 0.
- `RRM_GetDisplayModes` (`0x2d8c`): argument {id, user buffer, length}. **Established**: length below mode count x 4 gives 22; copies the mode table (pipe state +96) out, 14 on failure; 0.

#### Video sync and retrace: `RRM_WaitForRetrace`, `rrmValidateMyRetrace`, `RRM_SetVideoSync`, `RRM_GetVideoSync`, `RRM_WaitVideoSync`, `rrmWaitVideoSync`

- `RRM_WaitForRetrace` (`0x4178`): **Established**: `RRM_CheckValidFault` negative gives 14; `rrmInvalidateRN(connection, node, 0x10)`; op +152 (schedule retrace event);
  `rrmUnMapGfx`; 0. The next pipe access then faults and sleeps in `rrmValidateMyRetrace` until the retrace interrupt validates RETRACE (`rrmValidateRetrace`, `0x2e5c`: sets bit 0x10,
  `sv_signal(node +48)`).
- `rrmValidateMyRetrace` (`0x2de4`): (connection, node). **Established**: under the node lock, if RETRACE is requested but not valid,
  `sv_wait(node +48, 25)` (not interruptible) and returns 0; otherwise unlocks and returns 0. No re-test after waking.
- `RRM_SetVideoSync` (`0x4318`): argument {id, count}. **Established**: stores the count at pipe state +128; returns 0. The 6.5.5 header calls +128 the OpenGL counter and says applications cannot write it; this binary does, so the header comment does not describe 6.5.30m.
- `RRM_GetVideoSync` (`0x432c`): **Established**: reads pipe state +128 into the block's +4, copies 8 bytes out (14 on failure).
- `RRM_WaitVideoSync` (`0x4370`): argument {id, interval, remainder, count out}. **Established**: calls `rrmWaitVideoSync(connection, node, interval, remainder)`; nonzero is returned as is; success sets +12 to the node's wake counter (+152) and copies 16 bytes out (14 on failure).
- `rrmWaitVideoSync` (`0x43dc`): (connection, node, interval, remainder). **Established**: interval below 1, remainder negative or remainder not below interval gives 22. Under the pipe state lock stores interval (+144) and remainder (+148) in the node and pushes it on the sleeper list (+136, linked through +160);
  `sv_wait_sig(node +48, 30)` with signals held; interrupted gives -1, else 0. The waker is
  `rrmValidateVideoSync` (`0x44b8`, not in the list): per retrace it walks the list and, for each node whose counter modulo interval equals its remainder, unlinks it, stores the counter in +152 and `sv_signal`s it (counter +128 for OpenGL connections, +124 for the others; the code traps on a zero interval), then releases swap-wait sleepers whose next-swap time has arrived. **Inferred** for the swap-wait part; the list-edit details were read once and not traced to the end.

#### Suspend and resume: `rrmSuspend`, `rrmResume`

- `rrmSuspend` (`0x2170`): (thread handle, flags). **Established** outline: `gthread_find`; if the thread record's flags (+8) have bit 0x1 (kernel-preempted while holding the pipe) prints "gthd->flags & GTHREAD_GFXKP: gthd 0x%lx" (level 5) and returns. Sets thread flag 0x8 (suspending) for the duration. Walks the thread's connection list (record +16; connections chained at connection +24), under
  `GfxListReaderLock` and the share group's spin lock when the thread has a group (record +24), adjusting the group's running count (+12) for IrisGL groups. For each connection calls op +176 (suspend) with (pipe state, connection, flags & 0x100). When the connection owns the big semaphore and the nesting count is 0, the semaphore is released (IPL raised, op +192 if present, owner cleared, `vsema`) unless the suspend operation returned nonzero, in which case the count is raised and the result stored as busy hold (+84) so the semaphore stays held; a nonzero count is dropped and the semaphore released only if the busy hold was set and the operation returned 0, or if the FIFO-backed-up flag (+104) is set and flags bit 0x80 was passed. **Inferred**: the busy hold lets the board driver decline a context switch at an unhelpful moment; the IrisGL group count only matters for sproc share groups.
- `rrmResume` (`0x2518`): (thread handle, flags). **Established** outline: `rt_pin_thread` ... `rt_unpin_thread` bracket; CPU number from the halfword at `0xffffc420`. For each connection of the thread with a pipe state: an
  OpenGL connection whose CPU bit is not yet set in its CPU mask (+104) and which has a mapping handle (+48) gets op +112 (invalidate TLB) and the bit set; a non-OpenGL connection in a share group with a mapping handle gets op +112 each time. With flags bit 0x100 clear: a mapped connection (bit 0x1) is handled by one of two cases: whole-pipe diagnostic connections get op +184 (resume) only when they own the semaphore (else `rrmDoUnMapGfx` first); other connections re-evaluate their bound node's request versus valid masks (as in `RRM_ValidFault`) and, when everything requested is valid,
  `cpsema` the big semaphore (non-sleeping) and call op +184 with the semaphore held; if the masks do not match or `cpsema` fails they `rrmDoUnMapGfx` so the next access faults and does the blocking work. An unmapped connection with flag 0x2 set gets op +184 directly (`0x27c0`). **Inferred**: Resume never sleeps for the semaphore. This is also a reader of connection flag bit 0x2, which kernel.md recorded as having none in `rrm.o`: the test is `0x2714`, taken only when bit 0x1 is clear. **Established**, the mapped-connection branch (`0x27f8`-`0x2934`): with no bound node it calls op +184 at once (`0x29a4`). Otherwise it loops: under the node lock it takes the requested mask (+4) and the valid mask (node +6 OR'd with the draw pane's +12; when `READ` 0x40 is requested, the read pane's 0x40 bit replaces the draw pane's). If the connection already owns the big semaphore with a nonzero nesting count, op +184 runs whatever the masks say. If it owns it with nesting 0, op +184 runs only when every requested bit is valid; otherwise the semaphore is released (IPL raised, op +192, owner cleared,
  `vsema`) and the connection unmapped. If it does not own it, a fully valid node tries `cpsema`, and on success takes ownership and goes round the loop again, so the masks are re-read with the semaphore held before op +184 runs; a failed `cpsema` or a mask mismatch unmaps. The thread part (`0x2938`-`0x29a0`): if the thread belongs to a share group, Resume clears thread flag 0x2 and, unless thread flag 0x1 is set, adds one to the group's running count (+12) under the group lock. `rrmSuspend` is the mirror (`0x2470`-`0x24f4`): for a group whose first connection is not
  OpenGL (connection flag 0x8 clear), it subtracts one from the running count unless thread flag 0x2 is set, and suspends the connections only when the count reaches 0. **Inferred:** the members of an IrisGL `sproc` share group share one pipe context, which is switched out only when the last running member stops.

#### Resource masks: `rrmGetResourceMask`, `rrmSetResourceMask`

- `rrmGetResourceMask` (`0x2168`): (node). **Established**: returns the node's request mask (+4, zero-extended halfword).
- `rrmSetResourceMask` (`0x29c4`): (connection, node, new mask). **Established**: under the node lock reads the request mask and valid mask (merged with the draw pane's valid mask when CLIP is requested); bits newly requested and not valid make it call `rrmUnMapGfx` (so the next access faults to validate them); then stores the new mask under the lock. Returns nothing meaningful.

#### 32-bit converters: `irix5_to_RRM_ValidateClip`, `irix5_to_RRM_GetDisplayModes`

- `irix5_to_RRM_ValidateClip` (`0x4aec`): callback for `copyin_xlate` (arguments: mode, native destination, unused, state block). **Established**: with mode 0 (size pass) the state block's +4 is set to 56 (the byte count of the 32-bit image) and +16 gets the buffer for the 32-bit image: the state block's +8 value when the +0 value is at least 56, else a fresh `kern_malloc(56)` (`0x4ba8`); nonzero mode converts: reads the image from +16 and writes the native 64-byte block: words 0-24 at the same offsets, the 32-bit piece-list pointer at +28 widened (zero-extended) into the 8-byte slot at +32, then the 32-bit words at +32..+52 to +40..+60. State-block +0 is the size of `copyin_xlate`'s 200-byte built-in buffer and +8 its address (**established** from `copyin_xlate` in `/unix`, [the copy routine](#the-copy-routine-copyin_xlate)), so the 56-byte image always uses the built-in buffer. Field mapping agrees with the 6.5.5 pair of
  `RRM_ValidateClip` layouts.
- `irix5_to_RRM_GetDisplayModes` (`0x4bbc`): same protocol, 12-byte image (id, 32-bit buffer pointer, length) widened to the 24-byte native block: id at +0, zero-extended pointer at +8, length at +16. The size pass sets +4 to 12 and allocates 12 bytes (`0x4c20`) when the +0 value is below 12.

### Textport, flow control and pipe discovery (`kona_tport.o`, `gfx_flow.o`, `klconfig.o`)

Conventions. Offsets are bytes; hex offsets after an object name are `.text` offsets of that object. "Established" means read from the disassembly with relocations (`.lit8`, `.sdata`,
`.sbss`, `.data` and `.rodata` contents read from the object's sections). "Inferred" carries its reason. "Unknown" says what was tried. Names of structure fields, globals and the per-pipe record are ours. "Window" is the 16 MB block of the pipe's Xtalk widget; its first word is the base the textport code keeps in a global (`.sbss` +0 of `kona_tport.o`, called "pipe base" below). Register names are `HIP.h` / `XG.h` names for pipe registers and, for the hub registers, the names the published Linux
ip27 headers (`hubpi.h`, `hubio.h`, `hubni.h`, `klconfig.h`, `gda.h`) give the same offsets; the identity is **inferred** from exact offset and field-layout agreement, and every such offset is a plain constant in the code.

Per-CPU facts used by several functions, all **established** as accesses and **inferred** as to meaning: the halfword at absolute address 0xffffffffffffc3a0 is the executing CPU's number, and the halfword two bytes above it is the node's compact id (`gfx_flow.o 0x794`); the per-CPU area pointer is `pdaindr[cpu * 16 + 8]`; in that area the byte at +1312 is the CPU's slice (0 or
1, "A" or "B") and the halfword at +1060 is the node's NASID (`kona_tport.o 0x1688-0x168c`, `gfx_flow.o 0x71c`). The hub's graphics registers sit at offset 0x300 plus 0x28 times the slice in the hub's local register alias (base 0x9200000001000000 in the constants, `gfx_flow.o` `.lit8` +0x0) or its remote alias (0x9200000001800000 plus NASID << 32, `.lit8` +0x10).

#### Textport drawing: `kona_setcolor`, `kona_mapcolor`, `kona_point`, `kona_box`, `kona_unblank`, `kona_movechar`, `kona_bitmap`, `kona_tportinit`

Framing common to all eight (**established**, `kona_tport.o` 0x0-0xccc). The functions form a nine-entry function table in `kona_tport.o` `.data` (relocations at +0x00 `kona_tportinit`, +0x08 `kona_mapcolor`, +0x10
`kona_setcolor`, +0x18 `kona_box`, +0x20 `kona_point`, +0x28
`kona_bitmap`, +0x30 `kona_movechar`, +0x38 `kona_unblank`, +0x40
`kona_getdesc`), which `kona_earlyinit` hands to `htp_register_board`. Each drawing function takes the pipe base as first argument and does, in order:

1. Store 1 in `ktport_inuse` (`.sdata` +0x14). If `ktport_mute` (`.sdata` +0x10) is nonzero, store 0 in `ktport_inuse` and return with nothing sent (no value is returned that anyone could read; the function is void).
2. Store the pipe base argument in the global pipe base; `mutex_spinlock(&ktport_lock)` (`.sbss` +8), keeping the returned priority level for the unlock.
3. Wait for the command FIFO to drain: read the host-interface register `HH_GFIFO_LEVEL` (window offset 0x800208), mask with 0x7fe, and while the result is above zero call `us_delay(2)`, at most 100000 times (about 200 ms). The loop gives up silently; the function carries on whether or not the FIFO emptied.
4. Call `kona_fc_attach(pipe base)` (hub-side flow control; below).
5. Write 32-bit words to window offset 0xc10000 (`XG_FC_GFX`, the flow-controlled graphics FIFO; one store per word, always the same address). The word sequences are in the bullets.
6. Store 0 in `ktport_inuse`; repeat the drain wait of step 3; `kona_fc_detach(pipe base)`; `mutex_spinunlock`.

Every sequence starts with the same word, 1, then a sub-command number, then its payload. No count word is sent; the payload length is fixed per sub-command. **Inferred:** word 1 is the textport's single entry token and the second word selects the operation. `GE.h` lists token 0x001 as `HP_BUFFER_CONFIG` for the geometry command set; whether the display-ARM textport image dispatches the same word differently is **unknown** ([tport.md](../ucode/tport.md) records the textport token as not identified; the kernel's constants settle token 1 and sub-commands 1 to 6, 8,
9, 10, 12; sub-commands 7 and
11 are **unknown**, not used by any function in these objects). The IO6 PROM sends sub-command 7 with two masked arguments; see [textport.md](textport.md).

- `kona_setcolor` (`kona_tport.o` 0x0): argument color (a1). Sends 1,
  2, color. **Established** (0xb4-0xd4). Void.
- `kona_mapcolor` (`kona_tport.o` 0x154): arguments index, r, g, b (a1-a4). Sends 1,
  3, index, r << 2, g << 2, b << 2: the 8-bit components are widened to 10 bits by a plain shift, no replication of the top bits. **Established** (0x218-0x258). Void.
- `kona_point` (`kona_tport.o` 0x2d8): arguments x, y. Sends 1, 6, x, y. **Established** (0x390-0x3b8). Void.
- `kona_box` (`kona_tport.o` 0x438): arguments x1, y1,
  x2, y2, all treated as inclusive by the caller. Sends 1,
  5, then x1 - 1 clamped at zero, y1 - 1 clamped at zero, x2,
  y2 (x2 and y2 unmodified). The clamp is a signed test against 1: values below 1 become 0, others lose 1. **Established** (0x4f8-0x548). The left and bottom edges are therefore sent one pixel lower than asked while the right and top edges are not; **inferred** that the display code treats the low edges as exclusive and this compensates Void.
- `kona_unblank` (`kona_tport.o` 0x5c8): no argument besides the pipe base. Sends 1, 1,
  0. **Established** (0x678-0x690). **Inferred:** sub-command 1 is "blank control" and payload 0 means "screen on"; no function in these objects sends payload 1. Void.
- `kona_movechar` (`kona_tport.o` 0x710): arguments x, y. Sends 1, 4, x, y. **Established** (0x7c8-0x7f0). **Inferred** from the name: sets the character position the next glyph is drawn from; the kernel code shows only the words sent. Void.
- `kona_bitmap` (`kona_tport.o` 0x870): argument is a pointer to a glyph record; fields touched: pointer to bit data at +0 (64-bit), signed halfwords at +8 width, +10 height, +12 x origin, +14 y origin, +16 x advance, +18 y advance (names ours, **established** 0x990-0x9bc). Sends 1, 10, width, height, x origin, y origin, x advance, y advance (each sign-extended halfword as one word), then N packed words, N = ((width * height + 7) / 8 + 3) / 4 with signed division truncating toward zero (**established** 0x9c0-0xa10). Packing (**established** 0xa14-0xad8): a local array of 100 words is zeroed, the source is read as unsigned 16-bit units, each row of the glyph being whole 16-bit units from the start of a unit; a bit cursor starts at 32 and counts down; each unit is OR-ed in shifted so its most significant bit lands at the cursor, spilling into the next word when it crosses a word boundary, and the cursor drops by
  min(16, bits left in the row), so rows are packed back to back without row padding while the source rows keep their unit alignment. **Inferred** from OR-only combining: bits of a partial last unit beyond the row width are not masked and must be zero in the source or they pollute the next row's first bits. The function does not bound N or the packing by 100 words (no comparison in 0x870-0xb74), so a glyph larger than 3200 bits overruns the local array; **established** as an absence of any check. After the glyph words the common tail follows. Void.
- `kona_tportinit` (`kona_tport.o` 0xb78): no argument besides the pipe base. Sends 1, 8, xsize, ysize, where xsize and ysize are the two words at
  `.sdata` +0 and +4 (initial values 1280 and 1024, **established** from the `.sdata` image;
  `get_graphics_info` overwrites them). **Established** (0xc28-0xc50). The routine does not return the size to the caller; the size goes to `htp_register_board` from `kona_earlyinit` instead. Void.

#### Textport control and discovery: `kona_alive`, `receive_armdata`, `kona_getdesc`, `get_graphics_info`, `kona_earlyinit`, `find_konapipe`

- `receive_armdata` (`kona_tport.o` 0xce8): arguments n (word count), buf, delay (polls; 0 means 50000, `.text` 0xd2c-0xd34). Per word: poll `HH_INTR_STATUS` (window offset 0x800238) bit 4 (0x10, the ARM bit); each poll is followed by
  `us_delay(100)`, including the first, up to delay polls; on a hit read `HH_ARM_MBOX` (0x800240) into the buffer, write 0 to `HH_ARM_MBOX`, write 0x10 to `HH_INTR_STATUS` (acknowledge by writing the bit; **inferred** write-one-to-clear). **Established** 0xd2c-0xd88. Returns the number of words received, 0 if n is not positive, or -1 on timeout (the words already read stay in the buffer). Uses the global pipe base (not an argument). Takes no lock.
- `kona_alive` (`kona_tport.o` 0xdd4): arguments pipe base, delay (poll count for the reply). Stores the pipe base globally; takes `ktport_lock`; waits for the FIFO to drain as above; attach; writes 0 to `HH_ARM_MBOX` (0x800240); sends 1,
  9, 0; drain wait; detach; unlock; `us_delay(10000)`;
  `receive_armdata(1, &status, delay)`. Returns 0 if one word arrived and equals 0x1234abcd, else -1 (timeout or other word). **Established** (0xe68-0xf44). Does not test `ktport_mute` or set `ktport_inuse`. **Inferred:** sub-command 9 is a pipe liveness query and 0x1234abcd the ARM's success code.
- `kona_getdesc` (`kona_tport.o` 0xcd0): two arguments; returns 1 if the second equals 1, else 0; touches nothing. **Established.** Its role (the function table's last slot) is **unknown**; no kernel function for cursor, screen-blank-with-argument or block move exists in `kona_tport.o`.
- `get_graphics_info` (`kona_tport.o` 0x14d0): argument pipe base. Same lock, drain, attach, send, drain, detach, unlock frame as `kona_alive`, sending 1,
  12, 0; then `us_delay(10000)` and
  `receive_armdata(5, buf, 0)`. **Established** (0x1568-0x15f8). Reply words: index 0..2 are read into a local array and never used here (their meaning is **unknown**); word 3 is the screen width and word 4 the height, copied to `.sdata` +0 and +4 unless negative, in which case 1280 or
  1024 replaces it. If no word arrived, both defaults are stored and -1 is returned; otherwise 0. **Established** (0x15fc-0x1664). Does not check `ktport_mute`.
- `kona_earlyinit` (`kona_tport.o` 0x10c4): no arguments; returns 1 when a textport board was registered, else 0 (also stored in `ktport_active`, `.sdata` +0xc, on the normal exit, **established** 0x132c-0x1330). Steps (**established** unless said):
  1. Read the flag at `.sdata` +0x18 (initial value 1) into a local and clear it, so only the first call sees "first call".
  2. `kopt_find("console")` (strings at `.rodata` +0
     "kona_textport_lock" and +0x18 "console"). If the value starts with `d` or `D`, return 0. Otherwise the pipe number is the decimal number after the first character, or 0 if the second character is absent or not a digit (0x10e4-0x11c4); stored at
     `.sdata` +8.
  3. `find_konapipe(n, 0, 0)`; if the result is not 1, store 0 at
     `.sdata` +8 and retry with pipe 0; if that also fails, return 0. If `kona_tport_disable_earlyinit` (`.sbss` +0xc) is nonzero, return 0.
  4. Set `ktport_active` and `ktport_inuse` to 1; loop over indices below `GfxBoardLimit`. For each,
     `find_konapipe(i, &window, &adapter)` (a halfword and a byte on the stack); skip unless it returns 1. Pipe base = 0x9200000000000000 + (window << 32) + (adapter << 24); with adapter 0 the base is instead 0x92000000e0000000 + (window << 32) (0x1260-0x1314; the second form is the crossbar alias used by `kona_tport_reset_adaptor`; **inferred**, a pipe with widget number 0 is not expected).
  5. Store the base in the global; on the first call only (flag was 1) call `kona_tport_reset_adaptor(window, adapter)` and skip this pipe if it returns -1. Skip unless i equals the selected pipe number.
  6. `kona_alive(base, poll)`, with poll 50000 on the first call and 100 later. If that fails, read the EEPROM state (`get_eeprom_state`); continue only if it is 2. Then
     `init_graphics(base)`, skip on a negative result; `get_graphics_info`,
     `kona_tportinit`, `spinlock_init(&ktport_lock, "kona_textport_lock")`, `htp_register_board(base, table in .data, xsize, ysize)`; mark success.
  7. On exit store 0 in `ktport_inuse`. The texts are only the two names above; the object prints no message.
- `find_konapipe` (`kona_tport.o` 0x1350): arguments pipe index, `short *window` (may be null), `unsigned char *adapter` (may be null). Calls
  `find_gfxpipe(index)`; returns -1 if there is no board; returns 0 if the board's type byte (+5) is not 0x51 (the published `KLTYPE_GFX_KONA` value) or the board has no component of structure type 10
  (`KLSTRUCT_GFX`, via `find_first_component(board, 10)`); otherwise stores the component's halfword at +34 into `*window` (the node number) and its byte at +32 into
  `*adapter` (the widget number) and returns 1. **Established** (0x1360-0x13e8); field meanings **inferred** from the published `klinfo_t` layout (widget id at +32, nasid at +34).
- Helpers called above, not in the assigned list but needed to read it: `init_graphics` (0x13ec) calls `kona_alive(base, 100)`; if that fails it writes 0 to `HH_INTR_INFO` (0x800220) and writes 3 then 2 to
  `HH_RESET` (0x800300) with a read-back in between (reset with ARM start asserted, then start alone), and in every case ends with `kona_alive(base, 0)` (50000 polls, about 5 s) whose result it returns. `get_eeprom_state` (0x1454) writes 1 to
  `HH_ARM_CTRL` (0x800308), the ARM-space address 0x200bc through `HH_ARM_ADDRESS` (0x8003e8) / `HH_ARM_DATA` (0x8003f0) with data 0, then reads eight words from ARM address 0x87ff00 upward and returns the eighth (the state word). It does not pulse
  `HH_RESET` first.

#### Textport flow-control bracket and adaptor reset: `kona_fc_attach`, `kona_fc_detach`, `kona_tport_reset_adaptor`

- `kona_fc_attach` (`kona_tport.o` 0x1668): argument pipe base. Calls `err_int_block_mask(8)`; then (all 64-bit stores to the hub registers with a `sync` between each, **established** 0x16a4-0x1790): with S the slice and node = the CPU's NASID from the per-CPU area, and the pipe's NASID (bits 32-39 of the base, sign-extended from 8 bits) and widget (bits 24-27):
  1. `PI_GFX_PAGE_x` (local hub offset 0x300 + 0x28 S) = (pipe base + 0xc10000) | 1 << 40. **Inferred:** Linux names the same bit `PI_GFX_PAGE_ENABLE`, so this nominates the FIFO page as the one the hub flow-controls for this CPU slice.
  2. `PI_GFX_CREDIT_CNTR_x` (0x308 + 0x28 S) = 168.
  3. `PI_GFX_BIAS_x` (0x310 + 0x28 S) = 36.
  4. `IIO_IGFX_0` (the pipe's own hub, remote alias offset 0x400140), value = widget | (CPU NASID & 0x1ff) << 4 | (S & 1) << 16 | 1 << 20, i.e. widget number, node, processor, valid (Linux `IIO_IGFX_INIT` layout), then read back. Always register 0, whatever the pipe slot.
  5. Pipe register `XG_GFX_DET` (window offset 0x7c) = 34, then read back. 34 is `RES_TNUM` = 17 (bits 1-5) with `DETACH` clear; 17 is the constant
     `gfx_flow_credit_tnum_get` returns. **Established**; reading: the pipe is told which Xtalk transaction number to use when returning credits (**inferred**). Returns nothing meaningful. The textport uses fixed credit values (168 and 36) where
     `gfx_flow_alloc` computes values from a size argument.
- `kona_fc_detach` (`kona_tport.o` 0x179c): argument pipe base is ignored except via the global. Writes `PI_GFX_PAGE_x` = 0xdeadbabe (page enable bit clear, nothing flow-controlled), `sync`; writes
  `XG_GFX_DET` (0x7c) = 1 (`DETACH`) and reads it back; writes `PI_GFX_CREDIT_CNTR_x` = 64;
  `sync`; `err_int_unblock_mask(8)`; `sync`. **Established** (0x17a0-0x1824). It does not touch `PI_GFX_BIAS_x` or the
  `IIO_IGFX_0` valid bit, so the node/widget registration written by attach stays valid after detach (contrast `gfx_flow_detach_me`, which clears it). The meaning of the credit counter value 64 is **unknown**; **inferred** a parked or default value.
- `kona_tport_reset_adaptor` (`IP27boot/kona.a(kona_tport.o)` 0xf48): arguments node (a0), widget (a1). Returns 0 on success, -1 if the crossbar link does not come back. **Established** steps (0xf48-0x1080):
  1. Crossbar base = 0x92000000e0000000 + (node << 32) (`.lit8` +0). Read its word at +4 (crossbar `WIDGET_ID` per [xg.md](xg.md)). Credit count N = 4 when bits 12-27 are nonzero; else 3 if bits 28-31 are below 3, else 4 (same rule as the kernel's own reset in [xg.md](xg.md)).
  2. Calibrate: read the 64-bit real-time counter (hub offset 0x30100, `.lit8` +8, `PI_RT_COUNT`) around `us_delay(1000)`; the difference is the timeout in counter ticks for step 3 (about 1 ms).
  3. Port block = crossbar base + 0x40 * (widget & 7). Save the word at +0x10c (link control), write 0 to +0x134 (link reset), poll bit 31 of +0x114 (link alive) with `us_delay(2)` until set or the tick budget runs out; on timeout return -1. On success write the saved word back to +0x10c.
  4. `hub_widget_flags_set(node, widget, 2)`.
  5. Write `XG_XT_CTRL` (window offset 0x24) = (widget & 0xf) | (N << 12) & 0xf000 | 0x02640200, except 0x02a40200 when bit 31 of the crossbar word at +0x154 is clear; read it back. The constant is the kernel's 0x00240200 plus the target-number field (bits 22-25): 9 when that crossbar link-status bit is set, 10 when clear. Why those two targets and why +0x154 is **unknown** (the +0x154 word is the status of the second 0x40-byte port block, port 9); **inferred** it chooses the hub-side destination port of the pipe's DMA and credit traffic.
  6. Write `XG_ERR_STAT` (window offset 0x6c) = 0x800000 (clears the data-write credit-overflow bit, **inferred** write-one-to-clear as in [xg.md](xg.md)). Return 0. It sets no interrupt destination, vector register or bit 17 of `XG_XT_CTRL`; the textport polls instead. Differences from the full driver reset in [xg.md](xg.md) otherwise limited to the missing steps.

#### Pipe discovery: `find_gfxpipe`

- `find_gfxpipe` (`klconfig.o` 0x0): argument n (index; values below 1 return the first). Returns the pipe's `lboard` pointer in the owning node's configuration area, or 0. **Established** (0x0-0x2e0) with roles **inferred** from the published `gda_t`,
  `kldir_ent_t`, `lboard_t` and `klinfo_t` layouts.
  1. Read the local node's configuration directory pointer: 64-bit word at node K1 base (0x9600000000000000 + NASID << 32) + 0x2000 + 208 (directory entry 3, `pointer`), and require its first word to equal 0x58464552 (`GDA_MAGIC`); otherwise return 0. The array of 64 halfword NASIDs at +128 of that record is the node table (-1 ends or skips an entry).
  2. The first call builds a global list (head at `klconfig.o` `.sdata` +0): for each node in the table, the first board is found through directory entry 1's `offset` (+72 from the directory base, masked to 40 bits) then the word at +20 of that header; `find_lboard_class(board, 80)` walks boards of class 0x50 (graphics); for each,
     `find_first_component(board, 10)`.
  3. Each graphics component found is written into: flags byte +2 gets bit 2 set; a marker 0x0c0de000 goes to +64 and 0 to +72 if +64 was below the marker; +68 gets (module id << 8) | (slot & 0xf) as a sort key. The component is inserted into the list, linked through its own +72, sorted ascending by module id then slot. So the list lives inside the configuration area.
  4. Walk n links from the head; take the node's NASID at component +34 and the key at +68, and return `find_lboard_modslot(first board of that node, module = key >> 8, slot = (key & 0xff) | 0x20)`. The routine stores into the configuration records, so calling it is not read-only. A short list (fewer than n + 1 pipes) returns 0. Same ordering as `kona_earlyinit`'s index: pipe 0 is the lowest module and slot. The meaning of the `| 0x20` on the slot is **unknown**; **inferred** a slot-number encoding the lookup expects
     (`brd_slot` of graphics boards is not in the 0-15 range the sort key kept).

#### VGA pipe discovery (IP35 `klconfig.o`: `prom_has_vga_support`, `find_vga_pipe`, `find_vga_noprom_pipe`, `klcheck_vga`)

**Established** (IP35boot `gfxs.a(klconfig.o)` disassembly; the IP27 build has only `find_gfxpipe`). The Origin 350 kernel also finds a plain VGA display on a PCI bridge. These four functions sit beside `find_gfxpipe` and have nothing to do with the Kona pipe; they are listed because they are in the same object.

- `prom_has_vga_support()` (IP35 `gfxs.a(klconfig.o)` offset 0x330), established: asks whether the PROM records VGA displays itself. It loads two global PROM version words and returns 1 only when the first is at least 6 and the second at least 171 (0x340-0x358), else 0. Called by `find_vga_pipe` (0x3c8).
- `find_vga_pipe(n)` (IP35 `gfxs.a(klconfig.o)` offset 0x368), established: returns the n-th VGA display of the system, or 0.
  It reads the pointer in the local node's configuration directory entry 3 (the one `find_gfxpipe` uses) and gives up unless the word it points to is 0x58464552 (0x39c-0x3a4).
  When `prom_has_vga_support` returns 0 it hands the request to `find_vga_noprom_pipe` (0x678).
  Otherwise it walks a cached list whose head is a global and whose entries link through +56 to the n-th entry; when the list does not exist yet it builds it by scanning the 128 possible nodes (0x468) for boards of class 112 (`find_lboard_class`) and their components of type 47 (`find_first_component`, `find_component`), and also calls `chk_for_pebrick` (0x63c) during the scan.
- `find_vga_noprom_pipe(n)` (IP35 `gfxs.a(klconfig.o)` offset 0x688), established: the same lookup for a PROM that does not list VGA displays, so it builds its own list.
  After the same directory and 0x58464552 checks and the same 128-node scan for class-112 boards, it walks their components of type 5 (bridges), keeps the bridges whose identifying value matches one of two PIC part numbers (0x9d8-0x9e0), probes each bridge's slots with the VGA check below and allocates a 144-byte list entry from kernel memory (0x98c) for each VGA function it finds.
  Inferred: the two constants, 0xd102 and 0xd112, are the widget part numbers of the two buses of the PIC PCI bridge, as Linux's SN2 PIC header gives them.
- `klcheck_vga(bridge, slot, function)` (IP35 `gfxs.a(klconfig.o)` offset 0xafc), established: tests one PCI function for a VGA display. It reads the configuration dword at offset 8 of the function, at bridge + 0x20000 + slot x 0x1000 + function x 0x100 (0xafc-0xb14), and accepts it only when the top byte (class) is 3 and the next byte (subclass) is 0; then it clears the two low bits of the byte at offset 7 of that function's space and returns the function's configuration address, otherwise 0. Inferred from the PCI layout: class 3 subclass 0 is a VGA-compatible display, and the byte at 7 is half of the status word.

#### Generic textport driver (IP27 `tport.a`)

**Established** (IRIX 6.5.30m IP27 `tport.a(tport.o)`, read with `retools/tools/kona/kernel_annotate.py`). The STREAMS driver behind the console text port of a graphics head; `kona_tport.o` above supplies the KONA board's side. Its state is one record in `.bss`: +0 a state word (0 untouched, -1 lock ready, 1 board found), +4 the lock, +8 and +16 the read and write queues, +24 open, stopped and transmitting bits, +32 and +36 the transmit and receive timeout ids, +40 a 48-byte terminal settings block, +112 a 64-byte receive ring with pointers at +176 and +184, +192 the upstream buffer, +200 and +202 the window size. Board calls go through a `.data` table of 56-byte rows indexed by `.bss` +88: +16 write, +24 unblank, +32 window size, +48 graphics ioctl. The linked kernel's `tpcons_write` uses row +16 of the same table.

- `tp_open()` (`tport.o` offset 0x0), established: STREAMS open routine that claims the single textport and pushes the line discipline onto the stream.
  It returns 6 if the open-mode argument (a3) is nonzero (0x14-0x20) or the low 18 bits of the device number are nonzero (0x3c-0x54).
  It calls tp_initlock, and returns 0 at once if .bss +24 bits 0-1 are already set (0x6c-0x84).
  Otherwise it sets .bss +24 to 2, allocates a 64-byte buffer into .bss +192 (retrying via strwaitbuf, error 63 on failure, 0x88-0xb8), pushes the "stty_ld" module (0xd4-0xe0; on error frees the buffer and returns that error, 0x18c-0x19c), stores the queues in .bss +8/+16 and as both queue private pointers, copies 48 bytes of default termios to .bss +40, sets speed 9600 at +56, sets 0x80 in +48, clears 0x20 in +40, and sets .bss +24 to open (0xf8-0x184).
  Inferred: the +40 block is the terminal settings.
- `tp_close()` (`tport.o` offset 0x1a0), established: STREAMS close routine that releases the textport.
  It takes the .bss +4 spinlock at tty priority (0x1ac-0x1c0), cancels the transmit timer id in .bss +32 and the receive timer id in .bss +36 with untimeout and clears both (0x1c4-0x1f0), and, if .bss +192 holds a buffer, resets the receive ring via tp_flushr and frees it with freemsg (0x1f8-0x210).
  It zeroes .bss +8, +16 and the state word +24 (0x214-0x21c), unlocks, and returns 0 (0x220-0x230).
  Inferred: the timer ids are for the delayed queue wakeups scheduled in the transmit and receive paths.
- `tp_wput()` (`tport.o` offset 0x244), established: write-side put routine that dispatches on message type (byte at datap+30, 0x248-0x284).
  Type 0 goes to putq then tp_start (0x5c4-0x5cc); type 12 is freed; type 134 calls sdrv_flush, then bit 2 of its first byte clears .bss +24 bit 2 and calls tp_start, and bit 1 flushes the receive ring under the lock (0x4b4-0x520).
  Type 14 is an ioctl, switched on its command word (0x2b4-0x6c4): 21509 and 21537 ack (21537 sets 0x4000 in .bss +40); 21510 argument 0 stops, 1 starts output; 21705 reads and 21706/21707/21708 write the 48-byte block at .bss +40; 0x40087468 returns four window shorts; 0x74700001/2 call the graphics hooks.
  Others are nacked (130); other types call sdrv_error.
- `tp_xmit_qenable()` (`tport.o` offset 0x6c8), established: timer callback that re-enables the write queue passed in a0 after a transmit delay.
  If .bss +32 is nonzero it clears it and calls qenable (0x6c8-0x6e4).
  If it is zero it first reports an assertion failure (file name "the Kona stack text-port source unit" line 360, expression "tp.tp_txtimeoid") via assfail, then rereads the word and calls qenable only if it is now nonzero (0x6f4-0x718).
  Inferred: .bss +32 holds the id of the pending transmit timeout.
- `tp_xmit()` (`tport.o` offset 0x720), established: schedules a delayed re-run of the write queue so that output continues after a short pause.
  It does nothing unless .bss +24 bit 3 (transmitting) is set and .bss +32 (the pending timer id) is zero (0x724-0x738).
  Then it stores 1 in .bss +28 and calls streams_timeout with the callback tp_xmit_qenable, a delay argument of -100, and the read queue from .bss +8 as callback argument, saving the returned id in .bss +32 (0x748-0x77c).
  No return value is used.
  A delay of -100 is the callout layer's "due at the next pass" value (see `rrmValidateMGRSwapBuf` below), so output resumes as soon as the callout runs, outside the caller's context.
- `tp_tx()` (`tport.o` offset 0x780), established: pushes queued console output to the board through the table-driven write hook, at most 16 bytes per call.
  If .bss +24 bit 0 (open) is clear or bit 2 (stopped) is set it calls tp_stop and returns (0x798-0x7a8).
  It takes one message with getq from the queue at .bss +16; none means tp_stop (0x884).
  A nonzero type byte panics (0x7d8, 0x894).
  Otherwise it calls tp_write with the read pointer and min(16, length), advances the read pointer, counts the characters with sysinfo_outch_add, frees a fully used block (continuing with its continuation block) or puts the rest back with putbq, and calls tp_xmit if any bytes were written (0x7e0-0x868).
- `tp_start()` (`tport.o` offset 0x8a4), established: starts console output.
  It raises the interrupt priority with spltty, and if .bss +24 bit 3 is already set just restores it with splx (0x8ac-0x8d8).
  Otherwise it sets bit 3 and calls tp_tx before restoring the priority (0x8dc-0x8ec).
  It sets no return value of its own.
  Inferred: bit 3 means output is running, so the call is idempotent.
- `tp_stop()` (`tport.o` offset 0x8f0), established: halts console output.
  It raises the priority with spltty, clears .bss +24 bit 3 if it is set (0x900-0x91c), and restores the priority with splx (0x920).
  It does not touch queues or timers and has no meaningful return value.
  Inferred: it is the counterpart of tp_start and only clears the running bit.
- `tp_rcv_qenable()` (`tport.o` offset 0x934), established: timer callback that re-enables the queue passed in a0 once received keyboard bytes are waiting.
  If .bss +36 is nonzero it clears it and calls qenable (0x934-0x950).
  If zero it reports an assertion failure (file "the Kona stack text-port source unit" line 477, expression "tp.tp_rxtimoid") via assfail, then rereads the word and calls qenable only if it is now nonzero (0x960-0x980).
  Inferred: .bss +36 holds the pending receive timeout id.
- `tp_rcv()` (`tport.o` offset 0x98c), established: keyboard-input handler registered with the graphics port layer; its a0 is passed on untouched.
  It first calls tp_unblank, then kb_translate with a 16-byte stack buffer; a count of zero or less returns 1 (0x9a8-0x9bc).
  Under the .bss +4 spinlock, if the port is open (bit 0 of .bss +24) it appends the translated bytes to the 64-byte ring at .bss +112..+176 using write pointer +176 and read pointer +184, dropping bytes when the ring is full.
  If the ring was empty with no timer pending it schedules tp_rcv_qenable through streams_timeout (delay 0), setting .bss +28 to 1 and saving the id in +36 (0x9cc-0xaac).
  It always returns 1.
- `tp_rsrv()` (`tport.o` offset 0xab0), established: read-side service routine that turns ring bytes into upstream messages.
  It calls keyboard_check and, if nonzero, re-registers the tp_rcv handler via gl_setporthandler (0xabc-0xadc).
  If .bss +192 is empty it allocates a 64-byte buffer, or asks bufcall to retry later and returns 0 (0xae8-0xb08, 0xc08).
  With the lock held and .bss +28 set, it feeds each ring byte to tp_rx and clears +28 (0xb20-0xb70).
  If the buffer has data and canput succeeds it sends it with putnext and allocates a replacement (0xb80-0xbbc).
  It then calls tp_tx under the lock and returns 0.
- `tp_rx()` (`tport.o` offset 0xc24), established: handles one received character (a0) and adds it to the pending upstream buffer.
  It returns at once if .bss +24 bit 0 is clear or .bss +48 bit 0x80 is clear (0xc30-0xc54).
  Otherwise it counts it with sysinfo_rawch_add; if .bss +40 bit 0x400 is set it applies stop and start handling: matching the byte at .bss +74 sets flag bit 2 and calls tp_stop, matching the byte at +73 clears it, calls tp_start and swallows the char, and a flag at +24 bit 4 appears to mark a pending special character (0xc5c-0xd98).
  Surviving bytes are masked to 7 bits when +40 bit 0x20 is set and the global byte at gp+0 is zero, then stored at the write pointer of .bss +192 if room remains (0xccc-0xd00).
  Inferred: +73 and +74 are the start and stop characters of the terminal settings block that begins at +40.
- `tp_flushr()` (`tport.o` offset 0xd9c), established: discards pending received input.
  It sets both ring pointers, .bss +176 and +184, to the ring start at .bss +112 (0xd9c-0xdac), sets the write pointer of the buffer in .bss +192 back to its read pointer (0xda8-0xdb4), and clears .bss +28 (0xdbc).
  It takes no arguments and returns nothing meaningful.
  It does not take the lock; callers do.
- `tp_guiop()` (`tport.o` offset 0xdc0), established: forwards a graphics ioctl to the board driver.
  If .bss +0 is not 1 it returns -1 (0xdc4-0xdd4).
  Otherwise it picks the board row, 56 bytes each, from the .data table using the number in .bss +88, loads the function pointer at row offset 48, and returns 0 if it is null (0xdd8-0xdf8).
  If not, it calls it with a0 and a1 unchanged (the data block and ioctl block from tp_wput) and returns its result (0xe00-0xe24).
  Inferred: .bss +0 equal to 1 means a board was found at initialisation.
- `tp_write()` (`tport.o` offset 0xe28), established: writes character bytes to the board's text output.
  If .bss +0 is not 1 it returns doing nothing (0xe2c-0xe40).
  Otherwise it picks the board row, 56 bytes each, in the .data table using the number in .bss +88 and calls the function pointer at row offset 16, passing a0 and a1 through unchanged (0xe48-0xe6c). tp_tx calls it with the read pointer and a byte count and ignores any result; this routine sets none of its own.
  The linked kernel's console write takes the same table row (+16), so console output and textport output reach the board through one hook.
- `tp_unblank()` (`tport.o` offset 0xe78), established: asks the board driver to turn the display back on.
  If .bss +0 is not 1 it returns doing nothing (0xe7c-0xe90).
  Otherwise it picks the board row, 56 bytes each, in the .data table by the number in .bss +88 and calls the function pointer at row offset 24 with no arguments set here (0xe98-0xebc). tp_rcv calls it before translating each keyboard event and no caller reads a result.
  Inferred: the hook is the screen unblank step, so a key press wakes a blanked console.
- `tp_gwinsize()` (`tport.o` offset 0xec8), established: fills in the text window size in .bss +200 and +202.
  It picks the board row, 56 bytes each, in the .data table using .bss +88 and, if the function pointer at row offset 32 exists, calls it with pointers to those two halfwords (0xecc-0xf0c).
  If the pointer is null it stores the defaults 40 at +200 and 80 at +202 (0xef0-0xf18).
  Unlike the other hooks it does not test .bss +0 first.
  Inferred: 40 and 80 are the default text window size (rows and columns) when the board reports none.
- `tp_initlock()` (`tport.o` offset 0x112c), established: one-time setup of the driver lock.
  If .bss +0 is nonzero it returns at once (0x112c-0x1144).
  If it is zero it initialises the spinlock at .bss +4 with spinlock_init, naming it "TPORT", then stores -1 in .bss +0 (0x1148-0x116c).
  It takes no arguments and returns nothing. tp_open and tp_init call it.
  Inferred: .bss +0 acts as a state word, 0 for untouched, -1 for lock ready, and 1 for board found, as tp_guiop tests for 1.

- `gfx_earlyinit()` (`tport.a(tport.o)` offset 0x11cc), established: the real early console hook that a graphics kernel links in place of the empty stub; it runs each board family's early set-up until one finds a board.
  It calls the MGRAS early set-up and, when that returns 0, the KONA one, `kona_earlyinit` (0x11d4-0x11f4), returning at the first nonzero result.
  When both return 0 it tries the RAD1 and then the RAD4 early set-up, each only if that symbol is linked (weak references tested at 0x11fc-0x1208).
  The linked 6.5.30m kernel calls it from the console set-up `cn_init`, before the console is chosen.

#### Flow-control layer

`gfx_flow_init`, `gfx_flow_alloc`, `gfx_flow_interface_alloc`,
`gfx_flow_dealloc`, `gfx_flow_wg_info_get`, `gfx_flow_attach_me`,
`gfx_flow_attach_me_finish`, `gfx_flow_detach_me`, the credit accessors and the interrupt prehandler (`gfx_flow.o`, in `gfxs.a`).

Model as the code shows it (**established** register traffic, **inferred** semantics). Each hub has, per CPU slice (A at 0x300, B at 0x328; fields in 8-byte steps), five 64-bit graphics registers: page, credit counter, bias, interrupt counter, interrupt comparator (`PI_GFX_PAGE_x`, `PI_GFX_CREDIT_CNTR_x`, `PI_GFX_BIAS_x`,
`PI_GFX_INT_CNTR_x`, `PI_GFX_INT_CMP_x`). A CPU slice attaches to at most one pipe at a time. Attaching (1) loads the page register with the pipe FIFO address and bit 40 (the hub then treats stores to that page as flow-controlled), (2) loads the credit counter with the credit count saved from last time (or the initial total), (3) registers the CPU as the pipe's writer in the pipe's own hub's `IIO_IGFX_0/1` register (widget number, node, processor, valid), then, after the caller has told the pipe which transaction number to return credits on
(`XG_GFX_DET`, `RES_TNUM` 17) and waited for credits, (4) loads the bias. Detaching reverses this, disables the page (writes 0xdeadbabe) and saves the remaining credit count in the software record. The stores themselves are done to a kernel mapping of the FIFO page whose page-table entry has cache attribute 7 (uncached accelerated, so the processor gathers stores) when the pipe's size parameter is large and attribute 2 (uncached) when small (**inferred** from the 16 or
56 stored in the entry's attribute field, assuming the R10000 encoding in entry bits 3-5), and `gfx_flow_flush_my_wg` flushes the gathered stores by reading the hub's real-time counter, an uncached register (**inferred**). The hub counts the CPU's stores against the credit counter; the pipe returns credits over Xtalk; the bias sets the low-water level below which the hub should hold stores back (**inferred** from bias always being below total in every computed case and from the diagnostic reporting total, bias and count; the exact arithmetic direction is **unknown**: no function here shows the counter being decremented, the hub does that). The interrupt counter and comparator implement a "delayed high-water" interrupt: the comparator is set to 10000 everywhere at init, and the interrupt handler resets the counter. Units: the total, bias and count getters shift left by 3 (unit of 8, **established**; what the unit counts is **unknown**).

Software record `fl` (112 bytes, allocated by `gfx_flow_alloc` / `gfx_flow_interface_alloc`; names ours, all **established** as accesses): +0 widget vertex handle (32-bit), +4 widget id (32-bit; the low 4 bits are the widget number), +8 FIFO page address given to the hub page register, +16 total credits, +20 current/saved credits, +24 bias, +28 scaled size-derived word (see below), +32 high-water callback pointer, +40 its argument, +48..+79 a 32-byte block returned by
`gfx_flow_wg_info_get` (word +48 = 1, +52 = 1, +56 = 1, +60 page-table cache attribute bits 16 or 56, +64 mode word, +68 not written by
`gfx_flow_alloc`, +72 kernel virtual address of the one-page mapping), +80 halfword compact node id of the master, +84 pipe slot on that node, +88 address of the `IIO_IGFX_x` register of the master hub, +96 halfword CPU currently attached (-1 none), +104 doubleword owner cookie (-1 none).

Globals in `gfx_flow.o` `.sdata`: +0 `hub_use_transaction_credits`, +8 `gfx_flow_igfx_owners` (pointer to 2 pointers per node), +0x10
`gfx_flow_attach_count`, +0x18 `gfx_flow_cpu_attachments` (pointer to one pointer per CPU).

- `gfx_flow_init` (`gfx_flow.o` 0x90, static): no arguments. For every compact node (`maxnodes`, through `compact_to_nasid_node`) it reads the 64-bit register at remote offset 0x600000
  (`NI_STATUS_REV_ID`), takes bits 4-7 (hub revision), and clears `hub_use_transaction_credits` if the revision is below 4; it writes 10000 to remote offsets 0x320 and
  0x348 (`PI_GFX_INT_CMP_A` and `_B`). If the flag is then zero, it also writes 0 to remote offset 0x20068 (`PI_HARDRESET_BIT`) on each node whose revision is 4 or more. It installs
  `gfx_flow_delayed_hiwater_intr_prehandler` with `install_gfxintr(cpu, 0, handler, 0)` for every enabled CPU (`cpu_enabled`,
  `maxcpus`), allocates (`kmem_zalloc`) `maxnodes * 16` bytes for the owners table and
  `maxcpus * 8` bytes for the attachments table. **Established** (0x90-0x1cc). The object's `.sdata` image has `hub_use_transaction_credits` = 0 and this object only ever clears it (the stores are in
  `gfx_flow_init` and `gfx_flow_alloc`), and no other object read stores to it (`kona.a`, `gfx.o`, `rrm.o`, the rest of `gfxs.a`, `kernel.o`), nor does any `master.d`, `mtune` or
  `system` file under `/var/sysgen` name it. **Established negative:** with the shipped objects the transaction-credit branch below is never taken. Void.
- `gfx_flow_alloc` (`gfx_flow.o` 0x23c): arguments, by register: a0 widget vertex, a1 FIFO page address for the hub page register,
  a2 physical address mapped into the kernel mapping, a3 size parameter for the credit count, a4 a number scaled into +28,
  a5 high-water callback, a6 its argument, a7 flags. Returns the record or 0. **Established** (0x23c-0x5cc).
  - If flag bit 0 is set and the owners table already exists while `hub_use_transaction_credits` is nonzero, return 0. If bit 0 is set otherwise, clear the global (this call forces the non-transaction mode for the system). If the owners table does not exist, run `gfx_flow_init` first.
  - `kmem_alloc(112, 0)` (not zeroed);
    `xwidget_info_get`, `xwidget_info_id_get` fill +0 and +4; +8 = a1.
  - Credit parameters. With the global nonzero: total = ((a3 - 544) >> 7) + 20 capped at 27, bias 20, mode word 8, attribute bits 56. With it zero: total = a3 >> 3 capped at 101; if total is at most 68 the bias is 8 and attribute bits 16, otherwise bias 68 and attribute bits 56; mode word 4. The mode word stored at +64 is that number OR-ed with the flags. +20 starts equal to +16. +28 = max(1, a4 / 10) (computed as 100 a4 / 1000; nothing in these objects reads it, role **unknown**). +48, +52, +56 = 1.
  - `kvalloc(1, 0, 0)`
    gives one kernel virtual page (stored at +72). A 64-bit page-table entry is written into `kptbl` at index (virtual address + 1 << 62) >> 14: ((a2 >> 14) << 8) | attribute bits | 0x4000000100000007. The 16 KB page size and the entry layout are **inferred** from the shifts.
  - `xwidget_info_master_get` then `master_node_get` give the master's compact node, stored at +80. The owners table has two slots per node; the allowed number of slots is 2 with the global nonzero, 1 otherwise; the first free slot is claimed (+84 is the index); if none, `cmn_err` is called with level 4, the format "Compact node id %d is limited to %d gfx
    pipe(s)." and (node, limit), then four continuation lines at level 6 saying that the additional pipe cannot be configured and advising to move it to another crossbar, add a node to the pipe's crossbar or spread pipes between the upper and lower I/O quadrants; the record is freed and 0 returned. On success +88 = 0x9200000001c00140 + (NASID << 32) + 8 * slot (`IIO_IGFX_0` or `_1` of the master hub), +96 = -1 (halfword), +104 = -1, +32 and +40 from
    a5 and a6.
- `gfx_flow_interface_alloc` (`gfx_flow.o` 0xa1c): arguments callback, argument.
  `kmem_zalloc(112, 0)`; sets +96 = -1, +104 = -1, +32 = callback, +40 = argument; returns the record. **Established.** **Inferred:** a record for a flow object with no hub registration of its own (never attached to hardware by these functions, but usable with
  `gfx_flow_set_cpu_attachment` and the prehandler).
- `gfx_flow_dealloc` (`gfx_flow.o` 0x5dc): argument record. Clears its slot in the owners table (index node * 2 + slot, computed from +80 and +84) and `kmem_free(record, 112)`. The kernel virtual page and page-table entry from `gfx_flow_alloc` are not released here. **Established.** Void.
- `gfx_flow_wg_info_get` (`gfx_flow.o` 0x624): arguments record, out (four doublewords). Copies the 32 bytes at record +48 to `out`. **Established.** Void. Out word 2's low half (record +68) is uninitialised heap in a record built by `gfx_flow_alloc`; **established** as absence of any store to it.
- `gfx_flow_attach_me` (`gfx_flow.o` 0x6b8): arguments record, cookie. Increments `gfx_flow_attach_count`; sets record +96 to the CPU number,
  `gfx_flow_cpu_attachments[cpu]` to the record, +104 to the cookie. If the hub revision (bits 4-7 of the local `NI_STATUS_REV_ID`, local offset 0x600000,
  `.lit8` +0x38) is below 3, `err_int_block_mask(8)` first. Then, for the CPU's slice: `PI_GFX_BIAS_x` = 0,
  `sync`; `PI_GFX_CREDIT_CNTR_x` = record +20 (zero-extended), `sync`; `PI_GFX_PAGE_x` = record +8 | 1 << 40, `sync`; the register at +88
  (`IIO_IGFX_x` of the master hub) = widget number (record +4 low 4 bits) | (this CPU's NASID, from the compact node, & 0x1ff) << 4 | (slice & 1) << 16 | 1 << 20, `sync`; then a read of `PI_GFX_BIAS_x` into a local (a fence). **Established** (0x6b8-0x7f4). The bias is left at zero on purpose until
  `gfx_flow_attach_me_finish`. Void. The caller ([xg.md](xg.md) and [kona_kern.h](../kona_kernel/include/kona_kern.h)) writes `XG_GFX_DET` = (credit tnum << 1) and waits for credits between the two.
- `gfx_flow_attach_me_finish` (`gfx_flow.o` 0x810): argument record. `PI_GFX_BIAS_x` (slice offset 784) = record +24 (zero-extended), `sync`. **Established.** Void.
- `gfx_flow_detach_me` (`gfx_flow.o` 0x85c): argument record. In order, each followed by `sync`: write 0 to the register at +88 (clears the valid bit); `PI_GFX_BIAS_x` = 0;
  `PI_GFX_PAGE_x` = 0xdeadbabe; `PI_GFX_INT_CNTR_x` (offset 792) = 0; write slice + 1 to local offset 0x90 (`PI_INT_PEND_MOD`) and read local 0x98
  (`PI_INT_PEND0`) back. If the hub revision is below 3,
  `err_int_unblock_mask(8, 1)`. Then record +20 = low 32 bits of
  `PI_GFX_CREDIT_CNTR_x` (the remaining count, saved for the next attach), `gfx_flow_cpu_attachments[cpu]` = 0, +96 = -1, +104 = -1. **Established** (0x85c-0x988). **Inferred:** the
  `PI_INT_PEND_MOD` write clears pending interrupt number slice + 1 (the published Linux code treats writes below 0x100 as clears), presumably the slice's graphics interrupt; the bit's identity is **unknown**. What would settle it: the hub's interrupt-pending bit assignment in a published hub description or in the published Linux IP27 interrupt code, read for the bit numbered slice + 1, cross-checked against the level `kona_attach` hands to the interrupt allocation for the graphics source (`xtalk_intr_alloc` at `kona_edtinit_hip2.o` 0x1050-0x1094). Void.
- `gfx_flow_am_i_attached` (`gfx_flow.o` 0x990): argument record or null. With a record: returns 1 if record +96 equals the current CPU number, else 0. With null: if the attachments table exists, returns 1 if the current CPU's slot is nonzero; if the table does not exist it returns 1. **Established** (0x990-0x9d0; the "1" is a delay-slot load that survives on the null-table path).
- `gfx_flow_flush_my_wg` (`gfx_flow.o` 0x9d4): no arguments. Reads the 64-bit local `PI_RT_COUNT` (offset 0x30100, `.lit8` +0x58) into a stack slot and discards it. **Established.** **Inferred:** an uncached read of a hub register orders and flushes the CPU's gathered uncached stores. Void.
- `gfx_flow_set_cpu_attachment` (`gfx_flow.o` 0x9ec): argument record. `gfx_flow_cpu_attachments[cpu]` = record. **Established.** Void.
- `gfx_flow_clear_cpu_attachment` (`gfx_flow.o` 0xa04): no arguments. `gfx_flow_cpu_attachments[cpu]` = 0. **Established.** Void. Neither this nor the setter touches the record's +96/+104 or any hub register.
- `gfx_flow_credit_tnum_get` (`gfx_flow.o` 0x648): returns the constant 17. **Established.** Matches the `RES_TNUM` field value in the 34 written by `kona_fc_attach` and the driver's attach step.
- `gfx_flow_credit_bias_get` (`gfx_flow.o` 0x65c): argument record; returns record +24 << 3. **Established.**
- `gfx_flow_credit_count_get` (`gfx_flow.o` 0x668): no record argument. Reads the 64-bit `PI_GFX_CREDIT_CNTR_x` of the current CPU's slice from the local alias (address formed by subtracting the constant 0x6dffffffff000000 from the offset, which yields 0x9200000001000000 + offset) and returns it << 3 as a 32-bit value. **Established.** It reads the live counter, not the saved +20.
- `gfx_flow_detach_requires_credit_flow_disable` (`gfx_flow.o` 0x6b0): returns 1 unconditionally. **Established.** Role **unknown** (**inferred** a capability query the caller uses to decide whether credit flow must be disabled before detaching).
- `gfx_flow_delayed_hiwater_intr_prehandler` (`gfx_flow.o` 0x0): arguments (ignored, interrupt frame pointer). Looks up the current CPU's record in `gfx_flow_cpu_attachments`. If none, only clears `PI_GFX_INT_CNTR_x` (offset 792 + 40 slice) and returns. If one exists, it calls the record's callback (+32) with the record's argument (+40) and a flag that is 1 when the doubleword at +248 of the frame, masked with 0x18, equals 0x10 (**inferred** the saved status word's mode field says the interrupt hit user mode), then clears the counter. **Established** (0x0-0x8c).
- Also in the object though not in the assigned list: `gfx_flow_reset` (0x5d0) copies record +16 to +20 (sets the saved credit count back to the total); `gfx_flow_credit_total_get` (0x650) returns record +16 << 3.

#### What these objects leave open

- Textport sub-commands 7 and 11: no kernel code sends them (**established negative** over `kona_tport.o` and every other object read). What the textport firmware does with each sub-command belongs to [tport.md](../ucode/tport.md).
- `kona_getdesc`: the base kernel's textport layer calls it through the function table that `htp_register_board` receives. It returns 1 for argument 1 and
  0 otherwise. What the caller asks is **unknown: no shipped software or published source depends on it beyond that return value** (routes tried: `kona_tport.o`).
- The hub's credit arithmetic (how `PI_GFX_CREDIT_CNTR` counts stores and when the bias stalls them) and the unit behind the shift by 3 are the hub's behaviour, not the pipe's. The pipe-visible contract is the one established above: the pipe returns credits on Xtalk transaction number 17, which the driver loads into `XG_GFX_DET.RES_TNUM`.
- Targets 9 and 10 in `kona_tport_reset_adaptor`: **inferred** that bit 31 of the crossbar word at +0x154 is the link-alive bit of crossbar port 9 (the same bit the reset polls at +0x114 for the pipe's own port), so the textport sends the pipe's DMA to port 9 when that link is up and to port 10 otherwise. Which hub sits on either port is the system's topology, not the pipe's.

### Stubs for a kernel without graphics (`gfxstubs.a`)

**Established** (`gfxstubs.o`, both the IP27 and IP35 copies). A kernel configured without a graphics board links `gfxstubs.a` instead of `gfx.o`, `rrm.o` and `gfxs.a`; every function in it is two instructions. `gfx_disp` returns 1;
`gfx_exit`, `gfx_frs_valid_pipenum`, `tp_init()` and `tp_dogui()` return 0; `gfx_fault` returns 1;
`gfx_earlyinit`, `tpcons_write`, `shmiq_sproc` and
`initkbdtype` return nothing. The others share their names with the `gfx.o` and `rrm.o` hooks documented above (`rrmSuspend`,
`rrmResume`, `gfx_shcheck`, `gfx_shdup`,
`gfx_shalloc`, `gfx_shfree`,
`gfx_frs_install`, `gfx_frs_uninstall`) and do nothing.

### The rest of `kona.a`

**Established** from the 6.5.30m `kona.a` members named in each heading (annotated disassembly from `retools/tools/kona/kernel_annotate.py`); offsets are `.text` offsets of that member, `P` is the pipe state, as above.

#### I/O-space allocator: `init_gfx_io_space`, `init_chunks`, `grow_chunk_pool`, `get_chunk`, `free_chunk` (`gfx_io_space.o`)

The pipe-side addresses that `alloc_gfx_io_space` hands out (the map-RAM pages of [the diagnostic map](#diagnostic-map-kona_diag_map) and of the memory and context buffers) come from a per-board first-fit allocator. Each board has an 88-byte record in a table of `GfxBoardLimit` records, allocated and zeroed on the first `init_gfx_io_space` call. The record holds a copy of the caller's 56-byte descriptor (+0 the size of the space in pages, +8 the map operation, +16 the unmap operation, +24 the operation called when nothing fits, +32 the operation that returns the address base, +40 the in-page offset mask, +48 the cookie passed to every operation), then +56 the chunk page, +64 the free-chunk list, +72 the free-extent list (sorted by start page) and +80 the allocated-extent list.

- `init_gfx_io_space` (0x128) takes the board index and the descriptor, copies the descriptor, calls `init_chunks` and makes the whole space one free extent: start 0, length = descriptor word 0.
- `init_chunks` (0x10c) only calls `grow_chunk_pool`.
- `grow_chunk_pool` (0x0) takes one 16 KB page (`kvpalloc(1,
  0, 0)`) and cuts it into 409 chunk records of 40 bytes: +0 start page, +8 page count, +16 the address handed out (the lookup key on free), +24 the handle the map operation returned, +32 the next chunk. Every field but the link starts as 0xffffffff; the chunks are chained into the free-chunk list. The previous chunk page is overwritten, not chained, so chunks from an earlier page stay valid only while they are in use.
- `get_chunk` (0xa4) pops a chunk from the free-chunk list, growing the pool first when it is empty, and clears its link.
- `free_chunk` (0xe8) resets the start, count and key to 0xffffffff and pushes the chunk back.

`alloc_gfx_io_space(board, address, length, page shift)` (0x24c) rounds the request out to whole pages of 1 << shift, takes the first free extent that is large enough, and splits it when it is larger. When no extent fits it calls descriptor operation +24 and searches again, forever. It then calls the map operation, records the handle, and returns (start << shift) + the in-page offset, ORed with what operation +32 returns. `free_gfx_io_space(board, address)` (0x424) finds the allocated extent by its key (address without the in-page bits), calls the unmap operation, and returns the extent to the sorted free list, merging it with either neighbour.

- `kona_free_up_space` (`kona_dma.o` 0x1520) is KONA's "nothing fits" operation: it logs "Ran out of gfx io space!" with `cmn_err_tag` (tag 2124) and returns. Nothing is freed, so the allocator's retry loop spins and logs until another thread frees space. **Inferred** from the loop: an exhausted I/O space blocks the allocating thread rather than failing the request.

#### Attach, detach and board registration: `KONAattach`, `KONAdetach`, `new_pipe_to_region`, `kona_register_board`, `kona_free_bdata`, `kona_detach`, `KONAinfo`, `nic_xg_vertex_info`, `hexstrtol` (`kona_attach.o`, `kona_edtinit.o`, `kona_edtinit_hip2.o`, `kona_info.o`)

- `KONAattach(connection, user address)` (`kona_attach.o` 0x5c) is the board's attach operation. It refuses a pipe whose state word +2272 is zero ("uninitialized board structure found in KONAattach", ENODEV 19) and a user address that is not 16 KB aligned (EINVAL 22). If `gfxdd_recycle` can reuse an existing mapping for this connection (it calls `new_pipe_to_region`) it returns 0. Otherwise it builds the region list from a four-entry template in
  `.rodata` and calls `gfxdd_mmap` with `gfx_fault` as the fault handler, so pages are filled on first touch by
  `KONAmapgfx`. The template's user ranges are 0x0000-0x4000, 0x4000-0x8000,
  0x8000-0xc000 and 0xc000-0x20c000, each followed by two attribute words (0 and
  1; 2 and 1;
  1 and 3; 2 and
  1) that `gfxdd_mmap` interprets; their meaning was not read. A privileged connection (flag bit 2) gets all four ranges and a 0x20c000-byte region, any other the first three and 0xc000 bytes. A failed `gfxdd_mmap` returns ENOMEM (12). The ranges match the mapping table in [What a process maps](#what-a-process-maps).
- `new_pipe_to_region(old connection, region handle, new connection)` (0x0) moves a mapping to a new connection: it unmaps the old connection (operation +104), clears its bound node and destroys its region handle, then stores the handle in the new connection's +48.
- `KONAdetach(connection)` (0x1c8): when the kernel textport is active it clears `ktport_mute` and prints a control sequence to the console; then
  `gfxdd_munmap` of the region, and `kona_diag_map_cleanup` of the pipe. Returns 0.
- `kona_register_board(P)` (`kona_edtinit.o` 0x2c4) calls `GfxRegisterBoard` with KONA's board descriptor (in
  `.data`), the pipe state and the pipe's information record at `P+204`.
- `KONAinfo(P, buffer, length, returned length)` (`kona_info.o` 0x0) copies out at most 1952 bytes from `P+204` and stores the count; EFAULT on a failed copy. 1952 is a 40-byte header at `P+204` plus the 1912-byte [configuration record](#the-configuration-record-and-its-identity-words) at `P+244`, so the board information a program reads is the header followed by the whole configuration record.
- `kona_free_bdata` (0x234) is `kern_free` of the pipe state; `kona_detach` (`kona_edtinit_hip2.o` 0x1634) is empty.
- `nic_xg_vertex_info` (`kona_edtinit_hip2.o` 0x5ec) passes its argument to `nic_vertex_info_set` with `nic_access_mcr32` as the access routine: the board serial numbers are read through the XG's one-wire register
  (`XG_NIC`, [xg.md](xg.md#the-rest-of-the-window)) with 32-bit accesses.
- `hexstrtol()` (0x60c) converts a string of lowercase hexadecimal digits to a number, stopping at the first other character.

#### Small operations: `KONApcxswitch`, `KONAdownload`, `KONAfrsinstall`, `KONAfrsuninstall`, `KONAinvaltlb`, `kona_debug_init`, `kona_mapram_select_id_mask`, `gfx_pio_read_64`, `gfx_pio_write_64`, `kona_flow_cleanup`

- `KONApcxswitch` (`kona_context.o` 0xe94) only logs "KONApcxswitch should *not* have been called!" and returns 0. The board's context-switch operation slot is therefore dead for KONA: `KONApcxswap` does the work.
- `KONAdownload` (`kona_stubs.o`) returns 0; the generic download ioctl does nothing for this board.
- `KONAfrsinstall(P, handle)` and `KONAfrsuninstall(P)` (`kona_frs.o`) set or clear, under the lock at `P+2576`, the frame-rate-scheduler flag `P+144` and its handle `P+152`.
- `KONAinvaltlb(connection)` (`kona_map.o` 0x460) invalidates every TLB entry of the connection's mapping (`ddv_invaltlb(handle, 0, -1)`) and sets the current CPU's bit in the 128-bit CPU mask at connection +104.
- `kona_debug_init` (`kona_debug.o`) sets a once-only flag and complains when called twice.
- `kona_mapram_select_id_mask` (`kona_mapram_hip2.o` 0x218) is a stub in the second-generation map-RAM code: it always returns the value 0 and has no other effect, so on that host interface no map-RAM identifier mask is applied.
- `gfx_pio_read_64` and `gfx_pio_write_64` (`kona_flow.o` 0xa18,
  0xa00) are a 64-bit load and a 64-bit store followed by `sync`. No member of `kona.a`, `gfx.o`, `rrm.o` or `gfxs.a` calls them, so the statement above that the driver makes only 32-bit accesses stands.
- `kona_flow_cleanup(P)` (`kona_flow.o` 0x50) cancels the high-water timeout whose handle is at `P+2336`.

#### 32-bit callers and DMA unlocking: `abi32_to_kona_dmawrite_args`, `abi32_to_kona_dmapool_args`, `abi32_to_kona_start_selectfeed_args`, `abi32_to_kona_diag_map`, `kona_diag_map_to_abi32`, `unlock_dmavec` (`kona_dma.o`)

The converters are `copyin_xlate` and `copyout_xlate` callbacks for 32-bit callers. Each is called twice by the copy routine: once to say how many bytes of 32-bit argument to fetch (it allocates a buffer when the routine's own is too small) and once to widen the fetched words into the 64-bit structure of [DMA ioctls](#dma-ioctls). In each case the 32-bit pointer becomes a zero-extended 64-bit pointer and the other words are copied unchanged.

- `abi32_to_kona_dmawrite_args` (0x189c): 140 bytes in. The table pointer goes to +0, the count to +8, the 32 `hip_data` words to +12 and the command count to +140.
- `abi32_to_kona_dmapool_args` (0x1958): 16 bytes in, to address +0, length +8, type +12, share +16.
- `abi32_to_kona_start_selectfeed_args` (0x1a58): 20 bytes in. The 32-bit `kona_dmavec` (pointer, total, line length, stride) goes to +0, +8, +12, +16 and `snapshot` to +24.
- `abi32_to_kona_diag_map` (0x1ae0): 20 bytes in, to address +0, length +8 and flags +16. `kona_diag_map_to_abi32` (0x1b58) narrows the result back: the address, length, returned high word, flags and returned low word go out as five 32-bit words.
- `unlock_dmavec(vector, direction)` (0xc8) releases the pages `lock_dmavec` locked, with `undma` over the span the vector covers: the total length when the line length is 0 or equals the total, otherwise line + (line + stride) x (total / line - 1). **Established** from that formula: the stride field of
  `kona_dmavec` is the gap between lines, not the pitch.

#### Memory pools: `kona_mem_reserve`, `kona_mem_grow`, `kona_mem_validate`, `kona_mem_validate_driver`, `kona_mem_suspend`, `kona_mem_cleanup`, `kona_mem_destroy` (`kona_mem.o`)

The four pipe-memory pools of [Commands the driver sends](#commands-the-driver-sends) are managed like this. A pool record (24 bytes at `P+4976`) holds the memory-type record pointer (+0; the type record's word at +24 is the pool's capacity and +16 allows compaction), the units in use (+8) and the list of resident blocks sorted by offset (+16, linked through block +48). Each owner keeps a list head per pool: a byte at +0 that is nonzero while some block on it is not resident, and the first block at +8, linked through block +64. A block (96 bytes, from `kona_mem_alloc`) adds to the fields listed there: +2 "not resident", +3 transfer state, +16 the host save buffer, +24 its I/O-space address, +32 the saved size, +40 the owning list head, +72 a semaphore held while a swap is in flight.

- `kona_mem_reserve(P, pool, owner, shared owner, block)` (0x14c0) finds room for a block. While the free units are fewer than the block needs, it swaps out (`kona_mem_swapout`) resident blocks of other owners. Then it places the block first-fit in an aligned gap between resident blocks, links it and adds its size to the pool. If no gap fits and the type allows compaction, it runs `kona_mem_compress` once and tries again. Otherwise it swaps out every resident block and returns 1 so the caller tries again on an empty pool. It returns 0 once the block is placed.
- `kona_mem_grow(P, pool, block, units)` (0x13a8) enlarges a block in place, swapping out the blocks that follow it until the gap is large enough. If the pool's end is too close, it swaps the block itself out and only enlarges its recorded size.
- `kona_mem_validate_driver(P, pool, owner list, shared list)` (0x1d18) runs `kona_mem_cleanup`, then for every non-resident block of the owner's list and then of the shared list calls `kona_mem_reserve`, and on success
  `kona_mem_swapin` (the `MEM_RESERVE` and `MEM_SWAPIN` packets).
- `kona_mem_validate(P, rendering node)` (0x1e40) repeats `kona_mem_validate_driver` for each of the four pools until neither the node's own list (private record +144 + 16 x pool) nor its share group's list (+240's record, +8 + 16 x pool) has a non-resident block. `KONApcxswap` calls it (`kona_context.o` 0x70c) before it loads a context, so every block a context owns is in pipe memory before the context runs.
- `kona_mem_suspend(P, private record)` (0xa78) sets `P+5112` to 1 when the record's select-feedback in-flight flag (+104) is set, else 0. `kona_mem_alloc` calls it before it moves memory; a 1 there makes the swap-out path send
  `MEM_SUSPEND` first ([above](#commands-the-driver-sends)).
- `kona_mem_cleanup(P)` (0xfe8) takes, under the lock at `P+2576`, the list of finished transfers that the swap completion routines leave at `P+5104` (linked through block +56). For each block it frees the I/O-space mapping, and for state 2 also the host save buffer (pages = copies x unit size x saved size, rounded up to 16 KB), then marks the block's state byte 219 (done).
- `kona_mem_destroy(P, rendering node, shared)` (0x1f54) removes every block of the node's (or, with `shared` set, its share group's) lists from the pools' resident lists, subtracting their sizes, then for each block waits on its in-flight semaphore, runs `kona_mem_cleanup`, frees the host save buffer and the block.

#### Share groups, multi-pipe and video cleanup: `kona_unshare`, `kona_nclops_cleanup`, `kona_nclops_query_config`, `kona_video_cleanup`, `kona_video_rundown`, `KONAunschedswapbuf`

- `kona_unshare(P, rendering node)` (`kona_share.o` 0xf8) drops the node's reference to its share-group record (private record +240). The record is found on the pipe's list at `P+4968` (linked through +104). When the count at +0 reaches zero, it destroys the group's memory blocks (`kona_mem_destroy` with
  `shared` 1) and DMA pool (`kona_dmapool_destroy`), unlinks the record and frees it. The node's pointer is cleared either way.
- `kona_nclops_cleanup(P, rendering node)` (`kona_nclops.o` 0x1d48): when the node's bind marker (private record halfword +248) is not negative, it sets it to -1 and decrements the pipe's bind count (`P+5516`, under the lock at `P+3520`) and, if that was positive, the bound count of the pipe's network (topology record +44, under the network's lock). So the halfword +248 that `KONAcreateddrn` sets to -1 is "bound to a hyperpipe network", and destroying a bound node unbinds it.
- `kona_nclops_query_config(topology, argument)` (0x162c) serves the channel-operation query configuration Kona driver request. For a network id (argument +8) of 0-63 whose record state is 1 (configured), it walks the ring from the network's master pipe and returns the member count at +0 and, per member i, three words of the pipe's configuration (`P+5520`-`P+5528`) at +12 + 16i and the pipe number at +24 + 16i. Any other id returns 1.
- `kona_video_rundown(P, rendering node)` (`kona_video.o` 0xd0) removes the node from the retrace queue (head `P+3544`, linked through private record +136, tail `P+3536`), cancelling its retrace timeout (+120), and returns 1 if it was queued. `kona_video_cleanup` (0x178) does the same under the lock at `P+3520`.
  `KONAunschedswapbuf(connection, node)` (0xd10), the board's unschedule-swap operation, is `kona_video_cleanup` on the connection's pipe state.

#### Timeouts and the pipe watchdog: `kona_timeout_init`, `kona_timeout_alloc`, `kona_timeout_free`, `kona_timein`, `kona_sched_tick`, `kona_untimeout` (`kona_timeout.o`)

The driver keeps its own timeout list per pipe instead of using the kernel's directly. Each timeout is a 64-byte record (`kona_timeout_alloc`: `kmem_alloc`, retried ten times 10 us apart; `kona_timeout_free`:
`kmem_free`): +0 next, +8 ticks remaining relative to the previous entry, +16 the requested tick count, +24 the handler, +32 an interrupt-level routine, +40/+48/+56 three handler arguments. `kona_timeout` inserts a record into the delta-sorted list at `P+5376`;
`kona_untimeout` removes one and adds its remaining ticks to its successor.

- `kona_timeout_init(P)` (0x0) initialises the list lock (`P+5372`) and the tick lock (`P+5368`) and sets four words of an `itimeout` argument block at `P+5400`-`P+5424`.
- `kona_sched_tick(P, microseconds)` (0x2b4) arms the kernel's `itimeout` with `kona_itimeout_func` after the given time, stores the handle at
  `P+5440` and the target time at `P+5448`, and returns nonzero on success.
- `kona_itimeout_func` runs `kona_callout` under the tick lock, then, while the list is not empty, re-arms itself for 500000 us (0x7a120). If re-arming fails it kills the pipe with reason 9.
- `kona_gfifo_spin(P)` (`kona_timeout.o` 0x6ac) is the kernel-side wait that holds a process while the graphics FIFO is full. **Established** (disassembly): it raises the "FIFO wait" flag with `gfx_waitf_on`, counts the wait (`P+5260`, `P+5472`), records the current time in microseconds
  (`microtime` times one million plus microseconds), cancels the pending watchdog timeout (`untimeout_wait` on the handle at `P+5440`), then loops while the pipe is alive: it calls
  `kona_delay_monitor_gfifo` with the time left and, when that returns zero, runs `kona_callout` and waits another 500000 us (0x7a120, the watchdog tick). When the loop ends, drained or dead, it cancels the high-water timeout at `P+2336` (`kona_untimeout`, 0x778); a pipe still alive is then re-armed with `kona_sched_tick` (0x7e4) and, if that fails, killed with reason 9
  (`KONA_DIE_SET_TIMEOUT_FAILED`). It drops the lock and clears the wait flag on every path.
- `kona_callout(P)` is the watchdog. It does nothing while a kernel debugger holds the CPU. If the pipe is alive it reads `HH_TBUS_STATUS` and counts the pipe as active when
  `TBUS_ACTIVE` (bit 2) is set, or when the ARM interrupt handler has set `P+5464` since the last tick. A pipe with neither, and with the `kona_full_timeouts` tunable clear, gets "Pipe hung: no TBUS or ARM activity"
  (`cmn_err_tag` 2112). It then writes 4 to `HH_TBUS_STATUS`, clears `P+5464` and calls
  `kona_timein(P, hung)`.
- `kona_timein(P, force)` (0xc8) decrements the first record's remaining ticks and fires every record that reaches zero. With `force` set, it fires every record on the list at once. To fire, it unlinks the record, calls the record's interrupt-level routine, calls the handler with (P, the three arguments), restores the level and frees the record.

So every driver timeout (deactivation, check-pipe, swap, memory transfers) counts half-second ticks, and a pipe that shows no activity in one tick makes all pending timeouts expire at once, each running its own failure path ([hip.md](hip.md)).

### Further functions of gfx.o and gfxstubs.a

Entries for functions the sections above name only in lists. `P` is the pipe state record; offsets are `.text` offsets of the object named.

- `gfxtable_readerunlock(lock)` (`gfx.o` offset 0x44, same bytes in `gfxs.a(gfx.o)`), established: the lock is an 8-byte record, reader count at +0 and a spinlock at +4. It calls `mutex_spinlock` on +4, subtracts 1 from the count with a plain load and store, then
  `mutex_spinunlock` with the saved level. It returns nothing and does not wake anyone, because the writer in `gfxtable_writerlock` polls. Called from `gfx_group_find`,
  `gthread_find` and `gthread_scan`, after each had incremented the count (the matching increment is the first function at offset 0x0). Inferred: the count is a hand-made readers-writer lock so many lookups can overlap.
- `gfxtable_writerlock(lock)` (`gfx.o` offset 0x88, same bytes in `gfxs.a(gfx.o)`), established: takes the spinlock at +4 with `mutex_spinlock`; if the reader count at +0 is positive it releases the spinlock, calls
  `nano_delay` on a timespec of 0 s and 1000 ns built on the stack, retakes the spinlock and rechecks, repeating until the count is zero or negative. It returns holding the spinlock and gives back the saved interrupt level from the last `mutex_spinlock` as the result. Because the spinlock stays held, new readers cannot enter until `gfxtable_writerunlock`. Called from
  `gfx_group_create`, `gfx_group_destroy`, `gthread_create` and
  `gthread_destroy`.
- `gfxtable_writerunlock(lock, level)` (`gfx.o` offset 0x108, same bytes in `gfxs.a(gfx.o)`), established: calls `mutex_spinunlock` on the spinlock at lock +4 with the level the matching `gfxtable_writerlock` returned in the second argument. It touches no count and returns nothing. Called from the same four create and destroy functions as `gfxtable_writerlock`.
- `init_gfx_group_table()` (`gfx.o` offset 0x124, same bytes in `gfxs.a(gfx.o)`), established: if the global `gfx_group_table` pointer is already set it returns at once. Otherwise it `kern_malloc`s 128 bytes (sixteen bucket heads) into that pointer; on a null result it calls
  `cmn_err(0, ...)` with "Error: unable to allocate gfx_group table" and carries on, so the next `bzero` of 128 bytes runs on the null pointer (no early exit). It then calls
  `spinlock_init` on the spinlock of `gfx_group_table_lock` (+4) with name "ggt" and zeroes that lock's reader count. Called once from `gfxinit`. Inferred: the table exists only to find the group of a thread group handle quickly.
- `gfx_group_create(thread_handle)` (`gfx.o` offset 0x240, same bytes in `gfxs.a(gfx.o)`), established: `kern_malloc(32)`; a null result returns 0. It stores the thread-group handle from
  `threadhandle_to_threadgrouphandle` at +0, zeroes the member count at +8 and the running-IrisGL count at +12, and calls `spinlock_init` on +16 with name "ggpl". The bucket is the low four bits of the handle, or bits 12 to 15 when the low four are zero. Under
  `gfxtable_writerlock` on `gfx_group_table_lock` it copies the bucket head into the new record's +24 and stores the record as the new head, then calls `gfxtable_writerunlock`. It returns the record. It does not check for an existing group. Called only from
  `gfx_shalloc`.
- `gfx_group_destroy(group)` (`gfx.o` offset 0x2fc, same bytes in `gfxs.a(gfx.o)`), established: reads the group's handle at +0, picks the bucket with the same rule as `gfx_group_create`, takes
  `gfxtable_writerlock` and walks the chain comparing handles (not pointers), unlinking the first record whose handle matches. After `gfxtable_writerunlock` it calls `spinlock_destroy` on +16 of the unlinked record and
  `kern_free` on it; if no record matched it frees nothing. It ignores the member counts and returns no value. A null argument faults on the first load. Called only from `gfx_shfree`, which passes the result of `gfx_group_find`.
- `init_gthread_table()` (`gfx.o` offset 0x3cc, same bytes in `gfxs.a(gfx.o)`), established: if the global `gthread_table` is already set it returns. Otherwise `kern_malloc(2048)` and
  `bzero` it: sixteen 128-byte buckets. On a null allocation it calls `cmn_err(0, ...)` with "Error: unable to allocate gthread table" and still runs the zeroing and the loop on the null pointer. For each bucket it calls `spinlock_init` on +4 with the name "ggt" and zeroes the reader count at +0; the chain head of a bucket is at +8. Called once from
  `gfxinit` after `init_gfx_group_table`. Callers of the table are `gthread_create`,
  `gthread_destroy`, `gthread_find` and `gthread_scan`.
- `GfxAddHwgraphEdge(vertex, data)` (`gfx.o` offset 0xb48, same bytes in `gfxs.a(gfx.o)`), established: scans `GfxBoards` from entry 0 for the board record whose +64 (board private data) equals `data`; the loop has no bound, so an unregistered `data` runs past the table. Then it calls
  `graph_info_add_LBL(hwgraph, vertex, "_gfxid", 0, index)`. If the cached "gfx" directory vertex (a 32-bit `.sdata` word) is still -1 it calls `hwgraph_path_add(hwgraph_root, "gfx", &cache)` to create it. It formats the index with "%d" into a stack buffer and returns
  `hwgraph_edge_add(gfx_vertex, vertex, name)`. Called from `kona_attach` (`kona_edtinit_hip2.o` offset 0x1020) with the pipe vertex and the pipe state P. Inferred: it makes the board reachable as a numbered entry under a "gfx" hardware-graph directory and records the index for later lookup.
- `GfxProto(q, mp)` (`gfx.o` offset 0x173c, same bytes in `gfxs.a(gfx.o)`), established: the queue private pointer at q +40 is the connection; `mp` data starts at b_rptr (mp +24). It reads the first 32-bit word of the data. For 0x53484d51 ("SHMQ") it stores the shorts at data +4 and +6 into the board record (connection +8) at +48 and +50, writes 0x514d4853 over the first word and calls
  `qreply(q, mp)`. For 102 or 0x53484951 ("SHIQ") it takes the function table at connection +32; with none it calls
  `freemsg`; otherwise it calls table +48 with the private data (connection +40) and the words at data +4 and +8, and a zero return means `freemsg` while a nonzero return sets db_type to 138 (M_ERROR) and calls
  `qreply`. Any other word logs the complaint at `.rodata` 0xb0 (a "Gfx: received a proto message" text naming the type number) through `cmn_err` level 4 and frees the message. It always returns 0. Called only from
  `GfxWput`. Inferred: SHMQ records which shared-input-queue the window system attached to the board, and the cursor message moves the hardware cursor.
- `GfxWput(q, mp)` (`gfx.o` offset 0x1840, same bytes in `gfxs.a(gfx.o)`), established: the write-side put routine, reached through a pointer in `gfx.o`'s `.data` rather than a call. It reads db_type from the data block (`mp
  +40`, byte +30). Types 1 (M_PROTO) and 131 (M_PCPROTO) go to `GfxProto` and its result is returned. Type 134 (M_FLUSH) calls
  `flushq(q, 0)` if bit 2 of the first data byte is set, then `freemsg`, returns 0. Any other type logs the complaint at `.rodata` 0xe8 (a "Gfx: throwing away" text naming
  db_type) at `cmn_err` level 4 and frees the message. The result is always 0 on the non-proto paths.
- `GfxIntrMessage(msg)` (`gfx.o` offset 0x1bf4, same bytes in `gfxs.a(gfx.o)`), established: calls `GfxSendMessage(msg, 1)` and returns its result;
  `GfxMessage` at 0x1bd8 is the same with flag 0. With flag 1 the send path never sleeps and discards the message if `allocb` fails. Called from `rrmValidateMGRSwapBufSTREAM` and
  `rrmGenlockNotifySTREAM` in `rrm.o`, which build short board messages from callbacks that must not block. Inferred: the name means "usable from interrupt or deferred-callback context".
- `GfxRqService(q)` (`gfx.o` offset 0x1c10, same bytes in `gfxs.a(gfx.o)`), established: the read-side service routine, stored in `.data` (relocation at `.data` 0x78 next to the
  `GfxClose` pointer). It `getq`s from q; for each message it asks
  `canput(q->q_next)` (q +24) and, if true, calls the next queue's put procedure (load
  q_qinfo, then its first entry) with the message. If `canput` fails it calls `putbq(q, msg)` and returns 1. When
  `getq` returns null it returns 0. It never frees a message itself.
- `gfx_conflict_scan(thread, arg, phase)` (`gfx.o` offset 0x1e44, same bytes in `gfxs.a(gfx.o)`), established: callback for `gthread_scan`; `arg` holds a 32-bit mode at +0 and a group handle at +8. It returns 0 at once unless phase is 1, the thread has a group (+24) and that group's handle (+0 of the group) equals
  `arg +8`. For each connection on the thread's list (list +16, first connection list +24, next connection at +24) it does `psema` on the connection semaphore (+80, priority 25), computes a mode (1 if connection flag 8 is set, else 2), does `vsema`, and compares with
  `arg` mode. A mismatch stores 3 into `arg` mode and returns 1; if all match it returns 0. Called from `gfxopen` (via `gthread_scan`) with mode 1 for an
  OpenGL open and 2 otherwise; a final mode of 3 makes `gfxopen` refuse a mix of IrisGL and OpenGL in one share group.
- `irisgl_sproc_setup_scan(thread_handle, arg)` (`gfx.o` offset 0x1f28, same bytes in `gfxs.a(gfx.o)`), established: callback for `curthreadgroup_scan`; `arg` holds the opener's handle at +0, the group at +8 (not read here) and the opener's connection list at +16. For the opener's own handle it returns 0 and does nothing. For each other member it calls
  `gthread_create`, ORs flag 2 into the new record's flags (+8), takes `GfxListWriterLock` on the shared list, calls `gthread_attach_list(record, list)`, calls
  `GfxListWriterUnlock`, then `setgfxsched_thread(thread_handle)`. It returns 0 whether or not
  `gthread_create` succeeded. Called only from `gfxopen`. Inferred: gives each sproc'd IrisGL sibling access to the opener's connections and puts it in the graphics scheduler.
- `GfxListWriterLock(list)` (`gfx.o` offset 0x2a50, same bytes in `gfxs.a(gfx.o)`), established: the list record has a reader count at +4, a sync variable at +8 and a spinlock at +16. It calls `mutex_spinlock` on +16; while the reader count is positive it calls
  `sv_wait(list+8, 25, spinlock)`, which releases the spinlock while sleeping, then retakes the spinlock and rechecks. It returns the saved interrupt level with the spinlock held. Callers are
  `gfxopen`, `gfxclose`, `gfx_shalloc`,
  `gfx_shcheck`, `irisgl_sproc_setup_scan` and `rrmUnbindProcFromRN`. Unlike
  `gfxtable_writerlock` it sleeps instead of polling.
- `GfxListWriterUnlock(list, level)` (`gfx.o` offset 0x2ac8, same bytes in `gfxs.a(gfx.o)`), established: calls `mutex_spinunlock` on list +16 with the level returned by `GfxListWriterLock`. It changes no count and returns nothing; readers waiting need no wakeup because they never wait. Called by the same functions that call `GfxListWriterLock`.
- `GfxListReaderLock(list)` (`gfx.o` offset 0x2ae4, same bytes in `gfxs.a(gfx.o)`), established: takes the spinlock at list +16, adds 1 to the reader count at +4 and releases the spinlock. It never waits for writers and returns nothing, so a reader can enter while a writer sleeps in `GfxListWriterLock` between its checks. Called from
  `GfxKiller`, `gfx_exit`, `rrmSuspend` and
  `rrmResume`.
- `GfxListReaderUnlock(list)` (`gfx.o` offset 0x2b28, same bytes in `gfxs.a(gfx.o)`), established: takes the spinlock at list +16, subtracts 1 from the reader count at +4, calls `sv_signal` on the sync variable at +8 (waking a writer that is sleeping in
  `GfxListWriterLock`), then releases the spinlock with the saved level. Returns nothing. Called by the same four functions as `GfxListReaderLock`.
- `gfxread()` (`gfx.o` offset 0x2b78, same bytes in `gfxs.a(gfx.o)`), established: two instructions, returns 54 (EBADRQC) without reading its arguments. Inferred: the character device switch entry for read exists only to satisfy the table; the board is driven by `gfxioctl` and mapped memory. No call to it exists in `gfx.o`, so it is reached through the device switch.
- `gfxwrite()` (`gfx.o` offset 0x2b80, same bytes in `gfxs.a(gfx.o)`), established: two instructions, returns 54 (EBADRQC) and ignores its arguments, identical in effect to `gfxread`. It is reached through the character device switch (no direct caller in `gfx.o`).
- `gfxmap()` (`gfx.o` offset 0x335c, same bytes in `gfxs.a(gfx.o)`), established: two instructions, returns 54 (EBADRQC) without touching its arguments. Mapping of pipe memory is done by ioctl commands through the board's map function (table +96), not by this mmap entry. Reached through the character device switch.
- `gfxunmap()` (`gfx.o` offset 0x3364, same bytes in `gfxs.a(gfx.o)`), established: two instructions, returns 54 (EBADRQC) without touching its arguments, as `gfxmap` does. Unmapping is done through the board's unmap function (table +104) from the ioctl path.
- `irix5_to_gfx_getboardinfo_args(phase, native, ignored, desc)` (`gfx.o` offset 0x350c, same bytes in `gfxs.a(gfx.o)`), established: with phase 0, if the descriptor word at +0 is below 12 it `kern_malloc`s 12 bytes into descriptor +16 (the result is not checked), otherwise it copies descriptor +8 into +16; then it stores 12 at descriptor +4. With a nonzero phase it reads the 12-byte user record at descriptor +16 and writes the native record: word 0 to +0, the 32-bit pointer at user +4 zero-extended to +8, word at user +8 to +16. Used by `gfxioctl` command 102 (get board info).
- `irix5_to_gfx_download_args(phase, native, ignored, desc)` (`gfx.o` offset 0x3584, same bytes in `gfxs.a(gfx.o)`), established: with phase 0, a descriptor word at +0 below 32 gets a 32-byte `kern_malloc` into descriptor +16 (unchecked), else descriptor +8 is copied to +16; descriptor +4 becomes 32. With a nonzero phase it widens the 32-byte user record into the 40-byte native one: user +0 to +0, user +4 as a zero-extended pointer to +8, then user +8, +12, +16, +20, +24, +28 to native +16, +20, +24, +28, +32, +36. Used by `gfxioctl` command 108 (download).
- `irix5_to_gfx_attach_board_args(phase, native, ignored, desc)` (`gfx.o` offset 0x3624, same bytes in `gfxs.a(gfx.o)`), established: with phase 0, a descriptor word at +0 below 8 gets an 8-byte `kern_malloc` into descriptor +16 (unchecked), else descriptor +8 is copied to +16; descriptor +4 becomes 8. With a nonzero phase it converts the 8-byte user record to the 16-byte native one: word at user +0 to +0 and the 32-bit pointer at user +4 zero-extended to +8. Used by `gfxioctl` command 103 (attach board) and in the second
  `copyin_xlate` at `gfxioctl` offset 0x2f88.
- `gfx_earlyinit()` (`gfxstubs.o` offset 0x10), established: returns immediately with `nop` in the delay slot, so no value is set and nothing is touched.
  Established from the linked 6.5.30m IP27 kernel `/unix`: its only caller is the console set-up `cn_init` (0xc0000000000a1958), which calls it with no arguments before it looks at the console; a graphics kernel links a real `gfx_earlyinit` instead (in `/unix` it calls `mgras_earlyinit` and then `kona_earlyinit` until one returns nonzero), so the stub is what a kernel without graphics boards runs at that call.
- `tp_init()` (`gfxstubs.o` offset 0x18), established: returns 0 (`move v0,zero` in the delay slot) and does nothing else. The same name is also a 456-byte function in `tport.a(tport.o)` per the workspace inventory, so inferred: the stub reports success for a kernel linked without that text-port code; callers see no error.
- `tp_dogui()` (`gfxstubs.o` offset 0x20), established: returns 0 and does nothing else, with no arguments read. Inferred: the text-port hook that asks whether a graphical console is in use, answered "no" when the real text-port code is not linked; no caller is present in the workspace's listings.
- `tpcons_write()` (`gfxstubs.o` offset 0x28), established: returns at once with no value and does not read its arguments, so console output sent to it is discarded.
  The same name is a 64-byte function in `tport.a(tport.o)` per the workspace inventory.
  Established from `/unix` (6.5.30m IP27): its only caller is the console write `cn_write` (0xc0000000000a1764), which passes its own (buffer, length) unchanged when the console type halfword at +74 of the console record is 0 (graphics text port; type 1 goes to `ducons_write`).
  The linked real version calls a function pointer (+16) from a 56-byte-per-entry table indexed by word +88 of a kernel record.
  Inferred: that is the text-port write of the console board, so the stub is the no-graphics form of the path.
- `shmiq_sproc()` (`gfxstubs.o` offset 0x68), established: returns at once with no value and does nothing with its arguments.
  Established from `/unix` (6.5.30m IP27): its only caller is `allocshaddr` (0xc0000000001e3324), which passes the shared-address record it is building, after initialising that record's locks; the linked real version loops over a table whose length is a global count.
  Inferred from the name: the hook gives a new share group the shared input queues, which a kernel without graphics does not have.
- `initkbdtype()` (`gfxstubs.o` offset 0x70), established: returns at once with no value; no keyboard type is recorded and no arguments are read.
  Established from `/unix` (6.5.30m IP27): its only caller is the PC keyboard and mouse attach `pckm_attach` (0xc0000000000964a4), with no arguments; the linked real version starts by testing a global byte.
  Inferred from the name: it records the keyboard type for the graphics console, which a kernel without graphics does not have.

### Further functions of rrm.o

Entries for functions the sections above name only in lists. `P` is the pipe state record; offsets are `.text` offsets of the object named.

- `pane_gc()` (`rrm.o` offset 0x0), established: refills the pane free list, a short array of eight pane indices at the start of the small `.bss` block, with its entry count in a halfword in `.sbss`. It scans the
  `rrm_pane` array (184-byte entries, `max_pane` of them) starting at a saved scan position (a word in `.sbss`), then wraps from index 0 up to that position, and pushes the index of every pane whose reference count (+16) is zero until eight indices are collected or both passes finish. The count is then overwritten with the number found (not added to the old count), and the scan position becomes the last index examined plus 1, or 0 when that index is not below `max_pane`-2 (when the saved position was 0 and nothing remained to rescan it becomes 1 for `max_pane` of 3 or more, else 0). It takes no lock; its only caller is
  `bind_pane`, which holds the pane-pool semaphore and calls it when the list is empty. Inferred: the reference count of a pane drops to 0 when `unbind_pane` releases the last user, so these are the windows nobody holds and a new window may reuse.
- `bind_pane(connection, clip id)` (`rrm.o` offset 0x178), established: returns the pane for a window id on this connection's board, creating it when absent, and counts one more user. It takes the pane-pool semaphore (`psema` on `.bss`+16, priority 25), then looks through all
  `max_pane` panes for one whose clip id (+4) equals the argument and whose pipe state pointer (+88) equals the connection's (+40). If none matches it pops the last index from the free list (calling `pane_gc` first when the list is empty), then sets the id halfword (+0) to its old value plus 1, the index halfword (+2), displayed bank (+18) 0, valid mask (+12) 0, serial (+8) 1, clip id (+4) and pipe state (+88). Next it removes the pane's index from the free list wherever it still appears (`bcopy` shifts the tail down, count minus 1). Finally, if the reference count (+16) was 0 it sets valid bits 0x4 (BUFFER) and 0x80 (REFERENCE), otherwise only 0x80; it adds 1 to the reference count, releases the semaphore with
  `vsema` and returns the pane. Nothing checks for a pool with no free pane beyond what `pane_gc` finds. Called twice from `RRM_BindRNToReadAndClip` (draw pane, read pane). Inferred: bit 0x80 forces the new user to revalidate once, and a pane that nobody held starts with BUFFER valid because there is no earlier buffer state to wait for.
- `unbind_pane(pane, connection)` (`rrm.o` offset 0x34c), established: takes the pane-pool semaphore (`psema` priority 25), subtracts 1 from the pane's reference count (+16) and releases it with `vsema`. The connection argument is not used. It frees nothing and clears no pane field: the pane stays bound to its clip id and is only found again by
  `clip2pane` or collected later by `pane_gc` when the count is 0. Called from `RRM_BindRNToReadAndClip` (twice, when a node rebinds) and from
  `rrmCloseRN` (draw pane, and read pane when different).
- `clip2pane(clip id, connection)` (`rrm.o` offset 0x394), established: linear search of the `rrm_pane` array (`max_pane` entries of 184 bytes) for the first pane whose clip id (+4) equals the first argument and whose pipe state pointer (+88) equals the connection's pipe state (+40); returns it or 0. It takes no lock and ignores the reference count, so a pane with clip id 0 (one that
  `pane_cleanup` cleared) also matches a lookup for 0. Called by `pane_cleanup`, `invalidate_pane`, `invalidate_pane_buffer`,
  `validate_pane_clip`, `validate_pane_swapbuf`, `RRM_SwapGroup` (twice),
  `RRM_SwapUnGroup`, `RRM_SwapReady`, `RRM_CushionBuffer`,
  `RRM_InvalidateRN`, `RRM_LoadDisplayMode`, `RRM_MGR_SwapBuf` and
  `RRM_MapClipToSwapbufID`.
- `pane_setnullclip(pane, connection)` (`rrm.o` offset 0x4bc), established: calls the board operation table entry +88 (set null clip, reached through connection +32) with the address of the pane's clip record (pane +96) as its only argument, then adds 1 to the pane serial (+8) and sets valid bits 0xca (CLIP 0x2, SWAPBUF 0x8, READ 0x40, REFERENCE 0x80) in the valid mask (+12). The caller holds the pane spin lock. Called three times from `validate_my_pane_resources` for an OpenGL connection whose window has vanished (clip id 0). Inferred: this gives the pipe an empty clip so a client with no window can still draw without the manager's help; the pane serial change makes the next context load resend the clip.
- `invalidate_pane_buffer(mask, clip id, connection)` (`rrm.o` offset 0x598), established: calls `clip2pane(clip id, connection)`; when mask bit 0x2 (CLIP) is set it adds 0x40 (READ); with a pane found it takes the pane spin lock (+80), clears the mask bits from the valid mask (+12) and unlocks.
  It always returns 0 (its sibling `invalidate_pane` returns the old valid mask).
  No function in `rrm.o`, `gfx.o`, `gfxs.a`, `gfxstubs.a` or any `kona.a` member calls it or takes its address, and the same holds for the whole linked 6.5.30m IP27 kernel `/unix`: no `jal` reaches it (0xc0000000000ed8a8) and its address appears only in `.symtab`, `.debug_info` and `.debug_frame`, in no loaded section.
  So it is dead code.
  Inferred: an earlier variant of the invalidate path whose result no caller needed.
  Nothing records why it was kept, and no shipped software or published source depends on it; routes tried: every annotated listing of these objects, the call and data references of `/unix`, the 6.5.5 installed header `sys/rrm.h` (which does not declare it).
- `validate_my_pane_buffer(pane, unused, mask)` (`rrm.o` offset 0x8c8), established: takes the pane spin lock (+80); if the requested mask has bit 0x4 (BUFFER) and the pane's valid mask (+12) does not, it holds non-fatal signals (`hold_nonfatalsig`) and sleeps on the pane's buffer sleep point (`sv_wait_sig` on +72, priority 542, which releases the spin lock), then releases the signal state; an interrupted sleep returns -1. Otherwise it unlocks and returns 0. It sleeps once only and does not recheck the bit after waking. Called by
  `RRM_BindRNToReadAndClip` (twice) and `validate_my_pane_resources`; `validate_pane_buffer` supplies the wake-up.
- `validate_my_pane_resources(pane, connection, mask)` (`rrm.o` offset 0x97c), established: makes the draw or read pane's CLIP and SWAPBUF resources valid before a client touches the pipe, asking the board manager (the X server) when they are not. Returns 0 for success, -1 for an interrupted sleep, a lost race or a killed client, -2 for no manager. Phases in order: (1) a mask with none of 0x8e (CLIP, BUFFER, SWAPBUF, REFERENCE) returns 0; (2) `validate_my_pane_buffer`, negative returns -1; (3) under the pane spin lock set valid bit 0x80 and compute missing = mask & ~valid & 0xa; none missing returns 0; (4) owner (+56) already this connection returns -1; (5) a pane with clip id (+4) 0, on a connection that is not the manager and whose mask asks for CLIP: an OpenGL connection (connection flag 0x8) gets
  `pane_setnullclip` and 0, any other connection gets "validate_my_pane_resources #1: lost clipid - killing process %d" (`cmn_err_tag` tag 2129, level 4) and
  `psignal` 9, returning -1; (6) try `cpsema` on the pane's validation semaphore (+40); if it fails, unlock, hold signals, `psema` (priority 798, negative returns -1), relock, recompute missing (none: release the semaphore and return 0) and repeat the lost-clip test (message #2, tag 2130, on the kill path, with
  `vsema` first); (7) as the semaphore holder set the waiting mask (+14) to missing and owner (+56) to the connection, unlock, and read the manager from the board record (connection +8, record +8): none returns -2 (with the semaphore still held and the owner and waiting mask still set); (8) otherwise send the manager a one-word board message through `GfxMessage` carrying the pane's clip id, with type 2 when SWAPBUF is missing, plus 1 when CLIP is missing (1,
  2 or 3 = validate clip, validate swap buffer, both); (9) relock and, while the waiting mask still has 0x2 or
  0x8 set and the owner is this connection, sleep with `sv_wait_sig` on +64 (priority 542; negative returns -1), rechecking for a vanished window each time (message #3, tag 2131, or `pane_setnullclip` for OpenGL, returning 0 without releasing the semaphore). The semaphore is released by the validator
  (`validate_pane_clip` or `validate_pane_swapbuf` clears the owner and does `vsema` when the waiting mask empties), not by this function. Called by
  `RRM_ValidFault` for the draw pane and, when READ is requested, the read pane. Inferred: the reply that wakes it is the manager's `RRM_ValidateClip` or `RRM_ValidateSwapBuf` ioctl.
- `RRM_init_panes(connection)` (`rrm.o` offset 0xea4), established: for each of `max_pane` panes whose pipe state pointer (+88) equals the connection's pipe state (+40), clears the valid mask (+12); when the waiting mask (+14) was nonzero it also clears the owner (+56), releases the pane's validation semaphore
  (`vsema` on +40) and zeroes the waiting mask; when the pane is in a swap group (+160 nonzero) it calls `rrmSwapUnGroup(connection, pane)`. It does not clear the clip id or reference count, does not wake the sleep points and takes no lock. Called from `GfxOpen` (`gfx.o` offset 0x14e8) immediately after the opening connection is stored as the board's manager. Inferred: a new manager means every window must be validated again, so all valid bits are dropped; sleepers on +64 or +72 are not woken here.
- `rrmDoUnMapGfx(connection)` (`rrm.o` offset 0x1070), established: raises the interrupt level with `splhi`, sets connection flag 0x10 (unmapping) in connection +4, calls the board operation table entry +104 (unmap, reached through connection +32) with the connection, clears flag 0x10 and restores the level with
  `splx`. Called by `rrmUnMapGfx` (twice), `rrmUnbindProcFromRN` and
  `rrmResume` (three times). Inferred: the flag lets the board's unmap code and the page-fault path tell an intentional unmap from a fault.
- `RRM_CloseRN(connection, node)` (`rrm.o` offset 0x1f0c), established: ioctl 1001 handler; passes its first two arguments unchanged to `rrmCloseRN`, discards the result and returns 0. All real work, including the OpenGL early exit and the board's destroy operation, is in `rrmCloseRN`.
- `RRM_Exit(connection)` (`rrm.o` offset 0x1f2c), established: runs when a connection closes; called by `GfxDetach` (`gfx.o` offset 0x1cc0). An
  OpenGL connection (flag 0x8): if it has a bound node (+72) whose creator (+56) is not this connection (another connection, or 0 once that creator closed it), it takes that node's `RRMcall_sema` entry (16-byte element per slot, `psema` priority 25), clears the node's bound byte (+84), calls
  `rrmUnbindProcFromRN` when the creator is still set or `rrmCloseRN` when it is gone, and releases the entry; then for slots 1 to `rrm_maxrn`-1 it closes (under the slot's
  `RRMcall_sema`) every node whose creator is this connection, printing "RRM_Exit: ERROR rrmCloseRN" at
  `cmn_err` level 0 for a nonzero result. A non-OpenGL connection closes each node on its open list (+64,
  16-byte links, node at +0) the same way until the list is empty. Last, if the connection has a pipe state whose owner (+72) is this connection, it clears busy byte +84 and nesting count +80, raises the level, calls board operation +192 (release big semaphore) when present, clears the owner, releases the big semaphore (`vsema` on +56) and restores the level. Returns 0 always. Both close loops form `.rodata`+0x1a0, "RRM_Exit: ERROR rrmCloseRN" (`0x2148` on the open-list path, `0x215c` on the slot path); the annotated listing labels the second one `.rodata`+0x340 "age" because its register tracking does not follow the branch, and the message is unreachable because `rrmCloseRN` returns 0 on every path. The pipe-state release at the end is the one that gives back the big semaphore `rrmCloseRN` keeps.
- `rrmGetResourceMask(node)` (`rrm.o` offset 0x2168), established: returns the node's request mask, the unsigned halfword at node +4. Called by `RRM_SwapBuf` to test whether bit 0x8 (SWAPBUF) is already requested.
- `RRM_SetDisplayMode(connection, node, argument)` (`rrm.o` offset 0x2b78), established: ioctl 1008 handler (the OpenGL library's `kona_writeconfig` issues it).
  `RRM_CheckValidFault` negative returns 14. A board with no manager (board record +8, record +8 zero) returns 14. Otherwise it sends the manager a 3-word board message (`GfxMessage`) of type 11, or 139 (0x8b) when the connection is OpenGL (flag 0x8), with words (node draw clip id +20, argument +8 hardware-independent mode, argument +4 hardware mode); then
  `invalidate_pane(0x8, draw pane clip id, connection)` so the window's swap buffers are revalidated, and `rrmUnMapGfx(connection)` so the next pipe access faults; returns 0. It reads the draw pane (node +120) without a null check. Inferred: the manager answers with the display-mode load that programs the hardware.
- `RRM_GetDisplayModes(connection, node, argument)` (`rrm.o` offset 0x2d8c), established: ioctl 1016 handler. The argument is 24 bytes: user buffer pointer at +8, buffer length at +16. Required size is the pipe state's mode count (+88) x 4; a smaller length returns 22; otherwise it `copyout`s that many bytes of the mode table (pipe state +96) to the user buffer, failure returns 14, success 0. Its 32-bit variant of the argument goes through `irix5_to_RRM_GetDisplayModes`.
- `irix5_to_RRM_GetDisplayModes(direction, kernel image, unused, info)` (`rrm.o` offset 0x4bbc), established: the argument converter that `RRM_Dispatch` hands to `copyin_xlate` for ioctl 1016 (with
  `curproc_abi()` as the ABI). With direction 0 it prepares a buffer: if the info block's size word (+0) is below 12 it `kern_malloc(12)`s, else it keeps the caller's pointer (+8); it stores that as the buffer (+16), sets the info block's size (+4) to 12 (the size of the 32-bit argument), and returns 0. With direction nonzero it widens the 12-byte 32-bit image found at info +16 into the 24-byte kernel argument at the second argument: the word at +0 to +0, the zero-extended 32-bit word at +4 (the user pointer) to the 64-bit field at +8, the word at +8 to +16. Returns 0. Inferred: 32-bit callers pass {id, 32-bit pointer, length}; the roles of the argument slots are read from the stores and the direction flag from the branch.
- `rrmValidateMyRetrace(connection, node)` (`rrm.o` offset 0x2de4), established: takes the node's spin lock (+104), tests whether RETRACE (0x10) is requested (+4) and not valid (+6); if so it sleeps uninterruptibly with `sv_wait` on the node's sleep point (+48, priority 25, releasing the lock) and returns 0 after waking; if not it unlocks and returns 0. Called by `RRM_ValidFault` when the node's RETRACE bit is missing. Paired with
  `rrmValidateRetrace`.
- `rrmAllocPcxid(connection, node)` (`rrm.o` offset 0x2eac), established: chooses the hardware context slot ("pcx id") for a node. If the pipe state's slot count (+20) is 1 it returns the pipe's current node (+8) and does nothing else. Otherwise: a node that already has a slot (+80 not -1) on a non-manager connection is moved to the newest end of the recency list (pipe +32 newest, +40 oldest, node +96 toward newer, +88 toward older), unless already newest, and 0 is returned; a manager's node is left alone and 0 returned. A node with no slot takes the first empty entry (value 0) of the slot table (+24, 8 bytes each) by storing its index in node +80 (the table entry itself is filled by the caller). A non-manager node is then linked as newest; if there was no empty entry the oldest node is unlinked, the new node takes its slot number and the old node is returned for eviction; a manager's node takes a free slot if there is one but is never linked and never evicts. Returns the evicted node or 0. Called twice by
  `rrmValidateMyPcx`. Inferred: the evicted node is the context the board driver must save.
- `rrmValidateMyPcx(connection, node)` (`rrm.o` offset 0x3024), established: makes the node's pipe context current, setting valid bit 0x1 (PCX).
  It reads the node's masks under its spin lock; if PCX is not requested-and-missing it returns 0.
  Otherwise it adds 1 to the pipe's nesting count (+80, caller holds the big semaphore); if another node is the pipe's current node (+8) it invalidates that node's PCX with `rrmInvalidateRN(connection, other, 1)`.
  With a slot already assigned it calls `rrmAllocPcxid` (recency update) and board operation +128 (context switch) with (pipe state, node, current node).
  With no slot: on the node's first validation (byte +83 clear) and CLIP requested it first calls `invalidate_pane(0x2, draw pane clip id)` so the clip is revalidated; then `rrmAllocPcxid`; an evicted victim gets operation +120 (context swap) with (pipe state, victim, node, current node) and its slot reset to -1, otherwise operation +128 with a null victim.
  A negative operation result makes the return value -1, else 0.
  After either path: the node's slot entry in the table (+24) is set to the node, the per-CPU `gfxinfo` counter at +8 is incremented (CPU number from the halfword at absolute 0xffffc420), the pipe's current node becomes this node, valid bit 0x1 is set under the node lock, and the nesting count drops by 1.
  In the first-validation CLIP case it also sets byte +83, calls operation +192 (release big semaphore), clears the owner (+72) and releases the semaphore (`vsema` on +56) at raised interrupt level, so the fault loop restarts.
  Called by `RRM_ValidFault`.
  Why it lets go, **established** as control flow from `RRM_ValidFault` (0x33e0-0x3418, 0x3444-0x3470): after `rrmValidateMyPcx` returns, the fault handler checks the pipe-state owner (+72); while it is still this connection it goes straight to the map step, and only when the owner has changed does it take the semaphore again and re-run the whole validity check.
  The CLIP bit was cleared on the draw pane just before the first context load, so without the release the client would be mapped with no clip validated for the new context.
  Dropping the owner forces the re-check, which reaches `validate_my_pane_resources` and asks the manager for the clip; the manager's reply (`RRM_ValidateClip`, a manager-class command) needs the big semaphore, which this release also frees.
  **Inferred** from that flow: a new hardware context starts with no clip loaded, so the first load must be followed by a clip validation from the manager; later loads restore the clip saved with the context and keep the semaphore.
- `rrmSwapWait(node)` (`rrm.o` offset 0x3748), established: under the pipe state spin lock (+48), if the swap-wait clock (+164) plus 1 is below the draw pane's next-swap time (+28), links the node into the pipe's swap-wait list (head +168, chained through node +168) sorted by ascending next-swap time, holds non-fatal signals and sleeps with `sv_wait_sig` on the node's sleep point (+48, priority 30); an interrupted sleep returns -1, a normal wake 0. If the clock is not behind it unlocks and returns 0 without sleeping. Called by
  `RRM_SwapBuf`. Inferred: the sleeper is woken from `rrmValidateVideoSync` (called from `kona_video_tick`) as the clock reaches its time, which implements the swap interval.
- `RRM_SwapBuf(connection, node, argument)` (`rrm.o` offset 0x3838), established: ioctl 1005 (OpenGL `SwapBuffers`). Argument +4 is the hardware mode, +8 the hardware-independent mode. Order: ensure request bit 0x8 with
  `rrmSetResourceMask`; if the pipe has swap waiting (+160) and the pane has an interval (+24) and clock+1 is below the pane's next-swap time, `rrmSwapWait` (nonzero returns 4); `RRM_CheckValidFault` negative returns 14; a pane with clip id 0 returns 0 for an
  OpenGL connection and continues for others; node swap-buffer id (+28) is set from the pane (+20); an OpenGL connection toggles the displayed bank (+18) and sets or clears mode bit 0x4 in argument +8 to match, then the pane mode (+32) is set to the argument mode. If the id's low byte is 0xff and the pane has no swap group it returns 0; otherwise an id below the pipe's mode count (+88) stores the hardware-independent mode into the mode table (+96). It adds 1 to the nesting count (+80), takes the pane-pool semaphore if the pane is in a group, calls `invalidate_pane(0x4, node clip id, connection)`, then board operation +136 (schedule swap) with (pipe state, node, swap-buffer id, hardware mode). Nonzero result: nesting count restored, `validate_pane_buffer`, semaphore released, result returned. Zero result:
  `rrmUnMapGfx`, the per-CPU `gfxinfo` counter at +20 incremented, semaphore released, returns 0.
- `RRM_SwapUnGroup(connection, node, argument)` (`rrm.o` offset 0x3bcc), established: ioctl 1014 (manager). Argument +0 is the window id. Takes the pane-pool semaphore; `clip2pane` finds the pane (none: result 2); a pane with no swap group (+160 zero) gives 15; otherwise `rrmSwapUnGroup(connection, pane)` and result 0. The semaphore is released on every path and the result returned.
- `RRM_CushionBuffer(connection, node, argument)` (`rrm.o` offset 0x3eec), established: ioctl 1018 (manager).
  Argument +0 is the window id, +4 on/off.
  `clip2pane` none gives 2; a pane on another pipe state (+88) gives 6; a pipe cushion depth (+192) of 0 gives 19.
  Switch on: pane byte +177 already nonzero gives 16, else it is set to the cushion depth and 0 is returned.
  Switch off: byte +177 zero stores 0 and returns 0, nonzero returns 2 without clearing it.
  The off case looks inverted against the on case; it is read as written (0x3f70-0x3f88), and the only accesses of byte +177 in the whole linked 6.5.30m kernel `/unix` are these three in `RRM_CushionBuffer`, so nothing reads the depth it stores.
  No shipped software or published source depends on whether the off case behaves as intended; routes tried: every access of offset 177 in `/unix`, a scan of every ELF image under `root/usr` (the X server `Xsgi`, the X modules, `libGL`, `libGLcore`, the IrisGL libraries, the tools and diagnostics) for the command number 1018 loaded as an ioctl request (the X module `kona.so` loads its other manager commands that way; none loads 1018), and the 6.5.5 `sys/rrm.h` structure `RRM_CushionBuffer`, which gives the argument layout only.
- `rrmValidateMGRSwapBufSTREAM(connection, value)` (`rrm.o` offset 0x4054), established: runs from the STREAMS timeout queue. If the connection and its board record (+8) exist it builds a board message on the stack (type byte 9, word count 3, words value, 0, 0) addressed to that record and sends it with
  `GfxIntrMessage`; otherwise it returns. Scheduled by `rrmValidateMGRSwapBuf`. Inferred: type 9 tells the manager that a swap it requested has completed.
- `rrmGenlockNotifySTREAM(connection, value)` (`rrm.o` offset 0x40e8), established: STREAMS-timeout side of the genlock notice. If the connection and its board record (+8) exist, sends a board message with `GfxIntrMessage`: type byte 12, word count 2, words (0, value); otherwise returns. Scheduled by `rrmGenlockNotify`.
- `RRM_WaitForRetrace(connection, node)` (`rrm.o` offset 0x4178), established: ioctl 1007 handler. `RRM_CheckValidFault` negative returns 14. Otherwise `rrmInvalidateRN(connection, node, 0x10)` clears the node's RETRACE valid bit, board operation +152 (schedule retrace event, with pipe state and node) is called,
  `rrmUnMapGfx(connection)` unmaps the pipe, and 0 is returned. The wait itself happens on the next pipe access, which faults into `RRM_ValidFault` and sleeps in
  `rrmValidateMyRetrace` until `rrmValidateRetrace` sets the bit.
- `RRM_MapClipToSwapbufID(connection, node, argument, user address)` (`rrm.o` offset 0x45f8), established: ioctl 1025. Argument +4 is the window's clip id; `clip2pane` finds the pane and the pane's swap-buffer id (+20) is stored into argument +8, or -1 when there is no pane. When the user address is nonzero it `copyout`s the 12-byte argument there (failure returns 14). Otherwise returns 0.
