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

## Rendering node, drawable and private record

The structures behind `kona_act_pcx`, `KONApcxswap`, the swap code (`docs/dg.md`) and the DMA code are laid out in the comment "Rendering node and drawable" in [kona_kern.h](../kona_kernel/include/kona_kern.h): the 176-byte rendering node, the pane (drawable) with its clip record, swap-group counters and display bank, and the driver's 256-byte private record with the return-data buffer, the 64 KB context save area and the retrace and select-feedback records. **Established** from the driver's accesses cross-checked against the 6.5.5 installed header `sys/rrm.h`. The rendering node's +64 is the node's graphics connection (struct gfx_gfx): `clean_up_other_gfxp` compares it with the list `gthread_find_gfxp` returns. Two of that object's words the driver uses (+4 bit 0 and the +8 back-link) do not match the 6.5.5 layout, so the 6.5.30m structure differs there. The save area's activate word (+8) is inferred to be written by the pipe: the firmware maps token 0x1fa to `arm_context_activate`, and the only geometry-engine instruction with the immediate 0x1fa is in the context code (`mgeb_ContextDestroy`, 0x6641).

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

Slots 10004 and 10013 are empty in both the header and the driver. The header reserves 10100 and up for diagnostic ioctls (`kona_diag.h`); the 103-entry table reaches 10102, and slots 10025-10102 are all the default. **Unknown:** the diagnostic ioctls are not read.

`KONA_NCLOPS_*` is the multi-pipe (hyperpipe) path: `kona_nclops_bind` and `kona_nclops_swapped` write the display-generator indirect port (`HH_VC_ADDRESS` then `HH_VC_DATA`, [dg.md](dg.md)), so binding a pipe to a network changes a display-generator register. Which addresses it writes and what they select are **unknown**; the first configuration has one pipe.

## Registers the driver touches

**Established** (`scripts/kernel_registers.py`, output in [kona_kernel/registers.tsv](../kona_kernel/registers.tsv): one row per function, offset and direction, with the number of call sites). The driver reaches the pipe with two helpers only, `gfx_pio_read_32` and `gfx_pio_write_32`; there is no 64-bit access in the driver. The address is the per-pipe register base (pipe state +0x948) plus a constant. The script recovers the constant from the instructions before each call; it finds 117 of the 156 call rows. The rest are writes of command words to the pipe's command port (+0x900) and writes whose address comes from a data structure (a mapping, a pipe-space address); those are not register offsets.

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
| 0x8003a8 | `HH_TBUS_STATUS` | `kona_callout`, `kona_die` | the same two |
| 0x8003c0, 0x8003d0 | `HH_VC_ADDRESS`, `HH_VC_DATA` | `kona_attach` (data) | `kona_attach`, `kona_video_intr`, `kona_enable_dac_cursor`, `kona_swap_complete`, `kona_nclops_bind`, `kona_nclops_swapped` |
| 0xc00108 | `HH_GINTR_INFO` (through the alias window) | | the kick of every packet sender (below) |
| 0x4, 0x24, 0x2c, 0x34, 0x3c, 0x5c, 0x64, 0x6c, 0x74 | Xtalk widget registers, not host-interface | `kona_attach`, `kona_report_errs`, `kona_reset_adaptor` | `kona_reset_adaptor` ([xg.md](xg.md)) |
| 0x7c | flow-control group register (`KONA_REG_DETACH_FLUSH`) | `KONApcxswap`, `KONAsuspend`, `KONAunmapgfx`, `KONAreleasegfxsema`, `KONAdestroyddrn` | 24 functions: every packet sender, `KONAmapgfx`, `KONAresume`, `KONAsuspend` |

Everything above 0x800000 is the 32-bit host-interface window of HIP.h at the offset shown (HIP.h gives the bit fields and which are verified). The reads and writes follow only the pattern the earlier sections describe; the **unknown** parts are the meaning of the values the driver writes to the widget registers and to `HH_VC_DATA` for the nclops path.

The user-mapped windows of the pipe (what `KONAmapgfx` hands to a process) are, **established** as constants in the 6.5.5 header `sys/kona.h` and **unchecked** against 6.5.30m: pipe command FIFO at 0-0x3fff, host-interface registers at 0x4000-0x7fff, return-data window at 0x8000-0xbfff, and the I/O register window from 0xc000 (0xc000-0xffff on the first host-interface generation, 0xc000-0x20bfff through the widget on the second). `kona_map.o` writes `HH_GINTR_INFO` and the flow-control register once each around a mapping (`KONAmapgfx`).

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

Payloads read by hand for the tokens no other document covers (`kona_mem.o`, `kona_setup.o`; **established** for count and source, role **inferred** where stated). All words are 32-bit, written to the command port between the second and third kick.

| Token | Sender | Payload |
|---|---|---|
| `MEM_RESUME` 0x1de | `kona_mem_resume` | 1 word: a word read from a record at +5112 |
| `MEM_SUSPEND` 0x1df | `kona_mem_swapout_func` | 1 word: the constant 0x104 |
| `MEM_COPYDOWN` 0x1e1 | `kona_mem_copydown_func` | 4 words: the function's four arguments after the pipe, in order |
| `MEM_SWAPIN` 0x1e2 | `kona_mem_swapin_func` | 9 words: five values from the function's arguments, two zero words, the constant 0x102, then one word read through a pointer |
| `MEM_SWAPOUT` 0x1e3 | `kona_mem_swapout_func` | 8 words: five values from the function's arguments, two zero words, the constant 0x102 |
| `MEM_RESERVE` 0x1e4 | `kona_mem_reserve_func` | 4 words: the function's four arguments after the pipe, in order |
| `PIPE_SETUP` 0x1f1 | `KONAstart` | 3 words: pipe state +2592, pipe state +2596, the constant 0x4000 |

The two constants 0x102 and 0x104 are also token numbers in GE.h (`HISTOGRAM`, `GETHISTOGRAM`), but they are written here as payload; whether the pipe reads them as a kind code or only happens to share the numbers is **unknown**. The 0x4000 in `PIPE_SETUP` equals the pipe's register-window offset in the user mapping above; whether that is the meaning is **unknown**. Which memory region the `MEM_*` arguments describe (the header's memory types are `arm`, `ge` and `tex`) is **unknown**: the five swap values were not traced to their callers.

The payloads of the context, validate and DMA tokens are in `kona_kern.h` and [hip.md](hip.md), those of the display tokens in [dg.md](dg.md); this table and those are the index. **Unknown:** the callers' values for every `MEM_*` word.
