# Kernel driver: DMA ioctl structures

Driver-side view of the 6.5.30m kernel graphics driver. The hardware-visible half is in [hip.md](hip.md). Facts are labelled **established** (disassembly or the 6.5.5 installed header `sys/kona.h`), **inferred** or **unknown**.

## DMA ioctls

**Established** (`kona_ioctl.o` `KONAprivate`, `kona_dma.o`; structures from the 6.5.5 header). The private ioctl numbers are 10000 + n: `KONA_DMAREAD` 0, `KONA_DMAWRITE` 1, `KONA_START_SELECTFEED` 2, `KONA_FINISH_SELECTFEED` 3, `KONA_DMAPOOL_OLD` 7, `KONA_DMAPOOL` 18. The 64-bit kernel has 32-bit-caller converters (`abi32_to_kona_dmaread_args` and siblings) that widen the pointer.

| Structure | Layout (64-bit kernel) |
|---|---|
| `kona_dmavec` | base pointer at 0 (8 bytes), total length at 8, line length at 12, stride at 16, padding to 24. All lengths in bytes. |
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

A context's select-feedback record is the 80-byte-or-so object at (context's pointer at +112) + 32: base at 0, length at 8, line length at 12, stride at 16, snapshot at 24, locked length at 28, outstanding word count at 32, status word at 36, pipe address at 40, semaphore at 48, timeout handle at 64, owning process at 72, in-flight flag at the object's +104 (`kona_start_selectfeed`, `kona_finish_selectfeed`, `kona_ge_intr`). **Established** as offsets; names ours.

### Multi-vector writes (`KONA_DMAWRITE`)

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

The structures behind `kona_act_pcx`, `KONApcxswap`, the swap code (`docs/dg.md`) and the DMA code are laid out in the comment "Rendering node and drawable" in [kona_kern.h](../kona_kernel/include/kona_kern.h): the 176-byte rendering node, the pane (drawable) with its clip record, swap-group counters and display bank, and the driver's 256-byte private record with the return-data buffer, the 64 KB context save area and the retrace and select-feedback records. **Established** from the driver's accesses cross-checked against the 6.5.5 installed header `sys/rrm.h`. The rendering node's +64 is the node's graphics connection, [below](#the-graphics-connection-gfx_gfx). The save area's activate word (+8) is word 2 of the saved context image's header: `KONApcxswap` passes the save area's word 2 to `kona_act_pcx` as the activate token and `CONTEXT_LOAD`'s first payload word is the area's word 0, which the firmware requires to equal the image length ([ge.md](ge.md)). **Established negative:** no host code stores it (no 0x1fa or 506 immediate in any `kona.a` member, `gfx.o`, `rrm.o` or libGLcore), so the pipe writes it when it saves the context. **Inferred:** the value is `CONTEXT_ACTIVATE` 0x1fa, since the firmware maps token 0x1fa to `arm_context_activate`; which engine instruction writes it into the header is an open question ([open-questions.md](open-questions.md#kernel-driver)).

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

Flags at +4: bit 0 "mapped", set by `KONAmapgfx` (`kona_map.o` 0x1f0) and cleared by `KONAunmapgfx`; bit 2 "privileged", set by `gfxioctl` (0x2fa0-0x2fbc) when `drv_priv` grants it, and it selects the privileged mapping ([above](#what-a-process-maps)) and lets `kona_flow_await_returned_credits` take the reset path ([xg.md](xg.md)); bit 1, set by `KONApcxswap` (`kona_context.o` 0x72c-0x738) on the incoming node's connection before it sends the context packets, with no reader found in `kona.a`, `gfx.o` or `rrm.o` (a scan for a load of +4 followed by a test of 0x2; it is not the node's own `gr_reqmask` bit that `kona_act_pcx` tests: that is the node's +4, a different object); bit 3, set in `gfxopen` for one open mode; bit 4, set while `rrmDoUnMapGfx` calls the unmap operation and cleared after; bit 5, set by `gfxioctl` after it calls operation +96.

The generic board record (+8 above) has at +8 the connection that manages the board: `GfxOpen` (`gfx.o` 0x14dc) stores the opening connection there when it is empty, and `GfxUnmanage` and `GfxDetach` clear it. So `kona_act_pcx` step 3 (`kona_context.o` 0x1e8-0x1f4), which loads node+64, then its +8, then that record's +8, and compares the result with node+64, asks "does this rendering node belong to the board's managing connection", the X server. Nodes of the managing connection go straight to the activate token; every other node first sends `VALIDATE_BANK` with its panes' display banks. That resolves the "+8 back-link": it is not a pointer back to the node but the board's manager slot.

`rrmValidateMyPcx` (`rrm.o` 0x30a8-0x3110) calls the switch operation with the outgoing node read from pipe state +8 and then stores the incoming node there, so pipe state +8 is the current rendering node. `KONAmapgfx` maps that node's return-data buffer, and `kona_flow_await_returned_credits` and `kona_diag_flow` read the current connection at pipe state +72.

## Private ioctls

**Established** (`KONAprivate` in `kona_ioctl.o`, 6.5.30m; numbers and argument shapes from the 6.5.5 installed header `sys/kona.h`, checked against the sizes the 6.5.30m code copies in). `KONAprivate` subtracts 10000 from the command and indexes a 103-entry jump table (`kona_ioctl.rodata.s`); any other command, and every table slot not listed below, logs a message and returns EINVAL (22). A failed copy returns EFAULT (14). Argument bytes are what the code copies in or out, from the `li $a2,N` before each `copyin`/`copyin_xlate`/`copyout`.

| Number | Header name | In 6.5.30m | Copied in | Handler |
|---|---|---|---|---|
| 10000 | `KONA_DMAREAD` | yes | 160 (translated for a 32-bit caller) | `kona_dmaread` ([hip.md](hip.md)) |
| 10001 | `KONA_DMAWRITE` | yes | 144 | `kona_dmawrite` |
| 10002 | `KONA_START_SELECTFEED` | yes | 32 | `kona_start_selectfeed` |
| 10003 | `KONA_FINISH_SELECTFEED` | yes | none; 8 out | `kona_finish_selectfeed` |
| 10005 | `KONA_SELECT_CURSOR` | yes | 16 | `kona_select_cursor` ([dg.md](dg.md#cursor)) |
| 10006 | `KONA_SETCONFIGINFO` | yes | 1912 | copied into the pipe state at +244, then `kona_mem_init` and `kona_nclops_init` run |
| 10007 | `KONA_DMAPOOL_OLD` | **no**: default slot, EINVAL | | the 6.5.30m driver has only `KONA_DMAPOOL` (10018) |
| 10008 | `KONA_DEBUG_IOCTL` | **no**: returns EINVAL without calling anything | | |
| 10009 | `KONA_SET_CHANNEL_RECT` | yes | 18 | `kona_set_channel_rect` |
| 10010 | `KONA_MEM_ALLOC` | yes | 12 | `kona_mem_alloc` |
| 10011 | `KONA_MEM_FREE` | yes | 12 | `kona_mem_free` |
| 10012 | `KONA_GET_XY_CHANNEL` | yes | 14; result copied out | `kona_get_xy_channel` |
| 10014 | `KONA_MEM_REALLOC` | yes | 12 | `kona_mem_alloc` after the free (call order read, not traced to the end) |
| 10015 | `KONA_SHARE` | yes | 8; result copied out | `kona_share` |
| 10016 | `KONA_HEALTH` | yes | none; 12 out | copies the three words at pipe state +2172, +2176, +2180 (death reason, saved `HH_INTR_INFO`, saved `HH_TBUS_STATUS`: the `KONA_SC_DEATH_*` fields of [kona_kern.h](../kona_kernel/include/kona_kern.h)) |
| 10017 | `KONA_CHECK_PIPE` | yes | none | `kona_checkpipe` |
| 10018 | `KONA_DMAPOOL` | yes | 24 (translated) | pool setup ([hip.md](hip.md)) |
| 10019 | `KONA_GET_NCLOPS_TOPOLOGY` | yes | none; 260 out | copies 260 bytes from the topology record the pipe state points to (+5480, record +3072); **inferred** 260 = a count word plus 32 `{index, networkId}` pairs of 8 bytes, as the header declares |
| 10020 | `KONA_NCLOPS_CONFIGURE` | yes | allocates 524 | 524 = three words plus 32 four-word pipe records, as `kona_nclops_config_args_t` declares |
| 10021 | `KONA_NCLOPS_QUERY_CONFIG` | yes | allocates 524 | |
| 10022 | `KONA_NCLOPS_BIND` | yes | 4 | `kona_nclops_bind` |
| 10023 | `KONA_NCLOPS_UNBIND` | yes | 4 | `kona_nclops_unbind` |
| 10024 | `KONA_NCLOPS_DESTROY_CONFIG` | yes | 4 | `kona_nclops_destroy` |

Slots 10004 and 10013 are empty in both the header and the driver, and slots 10025-10099 take the default. The header reserves 10100 and up for diagnostic ioctls (`kona_diag.h`); the last three slots of the 103-entry table serve them.

### Diagnostic ioctls

**Established** (`KONAprivate`, `kona_ioctl.o` 0xf4-0x124 and their targets; 6.5.30m):

| Number | Copied | Handler | What it does |
|---|---|---|---|
| 10100 | 24 in (translated for a 32-bit caller), 24 out | `kona_diag_map` | maps a user buffer for the pipe to reach by DMA and returns its pipe address ([below](#diagnostic-map-kona_diag_map)) |
| 10101 | none: the argument itself is the value | `kona_diag_flow` (`kona_flow.o` 0x5a0-) after `RRM_CheckValidFault` | argument 0: clear bits 0-2 of the driver's `HH_INTR_ENABLE` shadow (pipe state +2368) and write it; argument 1: unless the pipe is dead (EACCES, 13), set bit 2 of the shadow and write it, kick `HH_GINTR_INFO` with 0 and attach the caller to the write-gather group (offset 0x7c) as a packet sender does; anything else EINVAL |
| 10102 | 16 out | `kona_diag_credits` after `RRM_CheckValidFault` | four words: the flow-control credit total, bias and current count (`gfx_flow_credit_total_get`, `_bias_get`, `_count_get`) and the constant 100000 |

`RRM_CheckValidFault` returning a negative value makes 10101 and 10102 fail with EFAULT. **Inferred:** 10101 turns FIFO flow control (`HH_INTR_ENABLE` bits 0-2, the high- and low-water sources of [hip.md](hip.md)) off and on so a diagnostic can fill the FIFO, and 10102 reads the credit state it then checks; the constant 100000 is a limit the diagnostic is told, whose use is in the user program.

`KONA_NCLOPS_*` is the multi-pipe (hyperpipe) path: `kona_nclops_bind` and `kona_nclops_swapped` write the display-generator indirect port (`HH_VC_ADDRESS` then `HH_VC_DATA`, [dg.md](dg.md)), so binding a pipe to a network changes a display-generator register. Which addresses it writes and what they select are **unknown**; the first configuration has one pipe.

## Registers the driver touches

**Established** (`scripts/kernel_registers.py`, output in [kona_kernel/registers.tsv](../kona_kernel/registers.tsv): one row per function, offset and direction, with the number of call sites). The driver reaches the pipe with two helpers only, `gfx_pio_read_32` and `gfx_pio_write_32`; there is no 64-bit access in the driver. The address is the per-pipe register base (pipe state +0x948) plus a constant, or the command-port pointer at pipe state +0x900. The script follows register values through each function in text order, keeping the saved registers (`$s0`-`$s8`) across calls and branches because this compiler loads a function's fixed addresses into them once. Of the 494 call sites in the 6.5.30m `kona.a`, it resolves 307 to a register offset and 167 to the command port (`cmd` rows). The other 20 (`?` rows) take an address set on a branch the text-order walk does not follow; each was read by hand:

| Function (`kona.a` member) | Sites | Address, read by hand |
|---|---|---|
| `kona_act_pcx`, `KONApcxswap`, `KONAvalidateclip` (`kona_context.o`) | 3, 2, 2 | `HH_GINTR_INFO` through the alias (0xc00108): `$s2` holds 0xc00108, set before the branch to each kick block |
| `kona_mem_swapin_func` (`kona_mem.o` 0x624) | 1 | the command port: the conditional branch to 0x624 loads +0x900 in its delay slot |
| `kona_nclops_configure` (`kona_nclops.o` 0x15d0-0x15fc) | 2 | `HH_VC_ADDRESS` then `HH_VC_DATA` (`$s4`, `$s5` hold 0x8003c0 and 0x8003d0): VC 0xe300 = 0, [below](#multi-pipe-dplex-display-port-writes) |
| `kona_video_intr` (`kona_video.o` 0x1a00-0x1c40) | 7 | `HH_VC_ADDRESS` and `HH_VC_DATA` (`$s2`/`$s1` set to 0x8003c0/0x8003d0 at three places in the function): the cursor writes of [dg.md](dg.md#cursor) |
| `kona_mapram_init` (`kona_mapram_hip2.o` 0x3c-0x58) | 2 | map RAM entry k at window offset 0x100000 + 8k, written with 0x10000000 + k and read back as a presence test ([hip.md](hip.md)) |
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
| 0x8003a8 | `HH_TBUS_STATUS` | `kona_callout`, `kona_die` | the same two, and `kona_video_intr` (value 1, `kona_video.o` 0x1830-0x1840, after `kona_nclops_swapped` on every video interrupt; why is **unknown**, see [open-questions.md](open-questions.md#kernel-driver)) |
| 0x8003c0, 0x8003d0 | `HH_VC_ADDRESS`, `HH_VC_DATA` | `kona_attach`, `kona_nclops_discover`, `kona_nclops_destroy` (data) | `kona_attach`, `kona_video_intr`, `kona_enable_dac_cursor`, `kona_swap_complete`, every `kona_nclops_*` function that touches a pipe |
| 0xc00108 | `HH_GINTR_INFO` (through the alias window) | | the kick of every packet sender (below) |
| 0x4, 0x24, 0x2c, 0x34, 0x3c, 0x5c, 0x64, 0x6c, 0x74 | Xtalk widget registers, not host-interface | `kona_attach`, `kona_report_errs`, `kona_reset_adaptor` | `kona_reset_adaptor` ([xg.md](xg.md)) |
| 0x7c | flow-control group register (`KONA_REG_DETACH_FLUSH`) | `KONApcxswap`, `KONAsuspend`, `KONAunmapgfx`, `KONAreleasegfxsema`, `KONAdestroyddrn` | 24 functions: every packet sender, `KONAmapgfx`, `KONAresume`, `KONAsuspend` |

Everything above 0x800000 is the 32-bit host-interface window of HIP.h at the offset shown (HIP.h gives the bit fields and which are verified). The values the driver writes to the widget registers (0x24, 0x2c, 0x34, 0x3c, 0x5c, 0x74) are read step by step in [xg.md](xg.md#reset-kona_reset_adaptor); the display-port values of the multi-pipe path are [below](#multi-pipe-dplex-display-port-writes).

### What a process maps

**Established** (`KONAmapgfx`, `kona_map.o` 0x0-0x1f8, 6.5.30m). The driver maps four ranges into the process with `v_mapkvsegment`, each at an offset from the user address `ddv_getaddr` returns; the page size is 16 KB (the code masks with -16384):

| User offset | Pages | Pipe address | When |
|---|---|---|---|
| 0x0000 | 1 | window + 0xc10000, or the command-port pointer (pipe state +0x900) when the pipe-state word +0x8ec is zero | always: the user command FIFO |
| 0x4000 | 1 | window + 0x810000, or window + 0x800000 when bit 2 of the connection's flags is set | always: a page of the host-interface window |
| 0xc000 | 128 (2 MB) | window + 0 | only with bit 2 of the connection's flags set: the widget and host-interface registers from offset 0 |
| 0x8000 | 1 | the return-data buffer of the current rendering node: pipe state +8 (the node `rrmValidateMyPcx` last switched in), its private record at +112, the buffer at +0 | only when that buffer exists |

So the 6.5.5 header's layout holds for 6.5.30m: command FIFO at 0, registers at 0x4000, return data at 0x8000, the I/O window from 0xc000 for 2 MB (0xc000-0x20bfff). Bit 2 of the connection's flags is set by `gfxioctl` when `drv_priv` grants the caller privilege ([below](#the-graphics-connection-gfx_gfx)); an ordinary process gets the page at 0x810000 and no I/O window. **Inferred:** 0x810000 is a user-safe image of the host-interface page, since the privileged mapping replaces it with 0x800000 itself; the registers that page exposes are an open question in [open-questions.md](open-questions.md#kernel-driver). After mapping, the driver sets bit 0 of the connection's flags, attaches to the write-gather group (offset 0x7c) and kicks `HH_GINTR_INFO`.

## Multi-pipe (DPLEX) display-port writes

**Established** (`kona_nclops.o`, 6.5.30m). The `KONA_NCLOPS_*` ioctls run the multi-pipe ("hyperpipe") network through the display port: every access is `HH_VC_ADDRESS` = address, then `HH_VC_DATA` read or write. They act only on pipes whose display board reports option-channel type 5 (`is_ddo3`: the configuration record's `dg` option-channel type, pipe state +320) and that the X server manages (`is_managed`). The messages name the option "DPLEX" ("DPLEX: timeout waiting for NOW bit during discovery", "DPLEX: cannot detect a valid topology, please check your connections", "DPLEX: pipes %d and %d both seeing pipe %d's transmit", "Pipe %d has two boards pointing to it"), and the display-board netlist lists a `dplex` option chip ([dg.md](dg.md)). The display-port addresses are below; their decode to the option chip is in the display-port map of [dg.md](dg.md).

| VC address | Access and values | Functions |
|---|---|---|
| 0x8001 | write 0 | `kona_nclops_discover` (0x2c4-0x2e0), before discovery |
| 0x8400 | write 0x7000 standalone, 0xf000 in a network | 0x7000: `kona_nclops_discover` (0x2ec), `kona_nclops_destroy` (0x1c94); 0xf000: `kona_nclops_configure` (0x14b4-0x14d0) |
| 0x80 | write 1 standalone, 0 in a network | `kona_nclops_destroy` (0x1c74), `kona_nclops_configure` (0x14d4-0x14ec). It is also the swap strobe address of [dg.md](dg.md) |
| 0xe200 | read: bit 1 "NOW", bit 7 receiving a neighbour's transmit | `kona_nclops_discover`, `kona_nclops_destroy` (0x1bf8-0x1c18) |
| 0xe300 | write 1, 0xa1 (transmit), 0x21, 0 | discovery, `kona_nclops_bind` (0x1828-0x1858), `kona_nclops_swapped` (0x1a7c-0x1b20), `kona_nclops_configure`, `kona_nclops_destroy` |
| 0xe500 | write 1 or 0 | discovery (1), `kona_nclops_configure` (0), `kona_nclops_swapped` (0), `kona_nclops_destroy` (1) |

**Discovery** (`kona_nclops_discover`, 0x144-0x11d4), **established** as a sequence: (1) on each DPLEX pipe write 0x8001 = 0 and 0x8400 = 0x7000; (2) write 0xe500 = 1 and 0xe300 = 1; (3) poll 0xe200 on every pipe until bit 1 is set on all, giving up after 10000 passes with the "during discovery" message; (4) write 0xe300 = 0xa1 on all, wait 1 us, read 0xe200 and mark each pipe whose bit 7 is clear; write 0xe300 = 0x21 on all, wait 1 us, read again and mark those whose bit 7 is now set; (5) for each unmarked pipe in turn, write 0xe300 = 0xa1 on it alone, wait 1 us, and read bit 7 of 0xe200 on every other unmarked pipe: the one that sees it is its downstream neighbour (two seeing it prints "both seeing"), then 0xe300 = 0x21; (6) write 0xe300 = 1 and 0xe500 = 1 on all and wait for bit 1 again (10000 passes, "after discovery"); (7) build the ring from the neighbour links and give each ring a network id (`alloc_network_id`, `alloc_new_network_id`; "two boards pointing to it" when a pipe has two upstream neighbours). **Inferred** from the messages and the sequence: bit 7 of 0xe300 drives the pipe's link transmitter, bit 7 of 0xe200 reports a signal on its receiver, bit 0 of 0xe300 enables normal operation and bit 1 of 0xe200 reports the link ready ("NOW").

The topology record (`kmem_zalloc` 3336 bytes, pointer at pipe state +5480, shared by all pipes) holds 64 network records of 48 bytes (a state word at +0, the network's current swap-master pipe at +8, a lock at +16, a swap countdown at +20, the member count at +40 and the bound count at +44), then the pair count at +3072 and 32 {pipe index, network id} pairs at +3076; +3332 is the largest network id. Per pipe: next pipe in the ring +5488, network id +5496, configured network +5500 (-1 for none), swap counters +5504 and +5508, bind count +5516, and three words of the caller's configuration at +5520-+5528. `KONA_GET_NCLOPS_TOPOLOGY` copies out the 260 bytes from +3072 (count and pairs).

**Configure, bind, swap and destroy** (**established**). `kona_nclops_configure` (0x11d8) checks the network id and pipe indexes, fills the per-pipe words, and on each member writes 0x8400 = 0xf000, 0x80 = 0, 0xe500 = 0; pipes leaving a network get 0xe300 = 0 and +5500 = -1. `kona_nclops_bind` (0x16f8) counts binds; when the bound count reaches the member count it writes 0xe300 = 1 on the network's current master pipe (record +8). `kona_nclops_swapped` (0x1968), called from `kona_video_intr` on every video interrupt, counts swaps; when every member has swapped, the master writes 0xe300 = 0 and 0xe500 = 0, its next pipe in the ring writes 0xe300 = 1 and becomes the master. `kona_nclops_destroy` (0x1b58) waits for bit 1 of 0xe200 on the master and returns each member to standalone: 0x80 = 1, 0x8400 = 0x7000, 0xe300 = 1, 0xe500 = 1. **Inferred:** 0xe300 = 1 on one pipe at a time passes a swap token around the ring, and 0x8400 bit 15 and 0x80 switch a pipe between local and networked swap.

## Commands the driver sends

**Established** (`scripts/kernel_commands.py`, output in [kona_kernel/commands.tsv](../kona_kernel/commands.tsv)). The driver writes one token word and then payload words to its command port, between kicks of `HH_GINTR_INFO` ([kona_kern.h](../kona_kernel/include/kona_kern.h) for the kick values and the payload layouts it has settled). Each row of `commands.tsv` is a constant token written by a named function; tokens built from a variable, and the user-supplied groups of the DMA ioctls, are not listed. The 25 distinct tokens (by name, `GED_NOP` included) and their senders, by token name in [GE.h](../GE.h):

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

The memory tokens manage four pools of pipe memory. `kona_mem_init` (0x0-0x3c) points pool record i (24 bytes at pipe state +4976 + 24i) at the configuration record's memory-type record i (pipe state +388 + 28i, the four seven-word records of [the configuration record](#the-configuration-record-and-its-identity-words)); the 6.5.5 header names the memory types `arm`, `ge` and `tex`. The first payload word of every `MEM_*` token is that pool index, 0-3, computed as (pool record - (pipe state +4976)) / 24. An allocation is a 96-byte record (`kona_mem_alloc`): byte +0 the caller's id byte (byte 1 of the `KONA_MEM_ALLOC` argument), +1 the pool (byte 0), +4 the alignment, +6 flags (bit 0: one copy per engine), +8 the size and +12 the offset in the pool.

| Token | Sender, caller | Payload |
|---|---|---|
| `HP_MEM_RESUME` 0x1de | `kona_mem_resume` (0xa8c-0xc10) | n words, the words at pipe state +5116 onward, where n is the count at +5112; sent only when n is 2 or more and the pipe is alive, then the count is cleared. `kona_mem_suspend_complete` stores what the pipe returned for `MEM_SUSPEND` there ([hip.md](hip.md)), so the resume hands the pipe back its own suspend record |
| `HP_MEM_SUSPEND` 0x1df | `kona_mem_swapout_func`, before `MEM_SWAPOUT` when +5112 is 1 | 1 word: 0x104 |
| `HP_MEM_COPYDOWN` 0x1e1 | `kona_mem_copydown_func`, called by `kona_mem_compress` (0x12f4-0x1388) | 4 words: pool, the block's old offset, its new offset, its size. `kona_mem_compress` walks the pool's list and slides each block down to the lowest offset its alignment allows |
| `HP_MEM_SWAPIN` 0x1e2 | `kona_mem_swapin_func`, called by `kona_mem_swapin` (0x1a38-0x1b98) | pool, offset, size (in units), unit size (the memory-type record's word 5), copy count (1, or the record's word 2 when flag bit 0 is set), then the host buffer's address pair (high word = address >> 12, low word = (address & 0xfff) \| 0x9000) and 0x102 when the driver-wide DMA flag is set. With the flag clear the low word is 0xffffffff and the saved data follow in the FIFO, size x unit / 4 words per copy, then 0x102 |
| `HP_MEM_SWAPOUT` 0x1e3 | `kona_mem_swapout_func`, called by `kona_mem_swapout` (0x1150-0x12dc) | 8 words: pool, offset, size, unit size, copy count, the address pair of a buffer `kvpalloc` just allocated and `alloc_gfx_io_space` mapped, and 0x102 |
| `HP_MEM_RESERVE` 0x1e4 | `kona_mem_reserve_func`, called by `kona_mem_update_driver` (0x1bec, 0x1c40) and `kona_mem_free` (0x2830) | 4 words: pool, id byte, offset, size. `kona_act_pcx` calls `kona_mem_update` first, which re-reserves every block the incoming node holds in each of the four pools (lists at private record +144 + 16 x pool) and the shared list; `kona_mem_free` releases a block with offset and size 0 |
| `HP_PIPE_SETUP` 0x1f1 | `KONAstart` | 3 words: pipe state +2592, pipe state +2596, the constant 0x4000 |

**Established:** the trailing 0x102 and the 0x104 of `MEM_SUSPEND` are the event codes the pipe returns when it finishes: [hip.md](hip.md) maps GE event 0x102 to `kona_mem_swapin_complete` and `kona_mem_swapout_complete`, and 0x104 to `kona_mem_suspend_complete`. So the host names the completion event it expects in the command; they share their numbers with the `HISTOGRAM` and `GETHISTOGRAM` tokens only by coincidence of range (**inferred**). The address pair has the same form as the DMA and context packets (0x9000 in bits 15-12 of the low word; [open-questions.md](open-questions.md#host-interface-hip)). The 0x4000 in `PIPE_SETUP` equals the user offset of the host-interface page ([above](#what-a-process-maps)); that it means that is **inferred** from the match alone.

The payloads of the context, validate and DMA tokens are in `kona_kern.h` and [hip.md](hip.md), those of the display tokens in [dg.md](dg.md); this table and those are the index.

## The configuration record and its identity words

**Established.** `KONA_SETCONFIGINFO` (10006) copies 1912 bytes from the caller into the pipe state at +244 (`KONAprivate`, [above](#private-ioctls)). The 6.5.5 installed header `sys/kona_if.h` declares `kona_config`; its size under the header's declarations is exactly 1912 bytes (the identity block of 924 bytes, plus thirteen 76-byte NIC records, one per board: the record is a flag word, a serial number, and two 32-byte pages), so the 6.5.30m record has that layout. Offsets from the start of the record (add 244 for the pipe state):

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

The identity words are 32-bit values, one per chip, whose test macros in the header look at the top nibble (a revision) and, for the host-interface and image-processor chips, at bits 12-15 (a part number): `KONA_ID_XMAP8A` is `(id.dg.xmap[n] & 0xf0000000) == 0`. **Inferred** from that layout that they are boundary-scan identification codes read by the firmware; the ARM replies to the config request with 222 words of its own board-configuration block ([arm1_firmware.md](../ucode/arm1_firmware.md)), which covers the record through the xmap and voc words. How the host fills the rest is **unknown**.

**Established.** The driver reads exactly one of these words: `kona_video_intr` loads the word at pipe state +1088 (`kona_video.text.s`, line 1784, the cursor-position code in [dg.md](dg.md#cursor)). 1088 - 244 = 844 is `id.dg.xmap[0]`, the identity word of the first display-generator XMAP chip. It is not a host-interface register and the kernel never reads one: the word comes from the configuration the caller supplied. A zero top nibble (XMAP8A) clears the two low bits of the cursor x field.
