# Open questions

Questions the binaries and sources read so far do not yet answer. No hardware is available, so each one is answered from software or published material: shipped binaries of every IRIX release, the 6.5.5 installed `sys/kona*.h` headers, the IR diagnostics, public drivers and emulators, manuals, and published `hinv`, `gfxinfo`, `irsaudit` and ide transcripts. Running the shipped software under an emulator counts too, labelled as the software's expectation.

Each entry gives the owning file, the routes already tried and the next route to try. When a question is answered, move the answer into the owning header or chapter and delete the entry. When every route is exhausted, the owner labels the fact "unknown: no shipped software or published source depends on it" with the routes tried, and the entry is deleted.

The "Next route" cells below were converted from requests for measurements on a running pipe and still describe that measurement. Each owner rewrites its section into software routes and works through them.

## Geometry engine program

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Ties the instruction test leaves open: 0x50 AND or NOR, 0x54 and 0x56 between OR, XOR and NAND, 0x66 and 0x68 minimum and maximum or moves, unit-2 0x2f and 0x3f move of the second operand or minimum; whether 0x42's 0x80000000 is saturation | `ucode/ge_ops.md` | `expected_token` in `irsaudit` 6.5.30m (its operands give equal results for each tied pair); `irsaudit` exports no other expected-result array; the diagnostic engine program's other sources (listed with `scripts/ge_disasm.py`): 0x6d0, 0x6d4 and 0x6d6 occur only in `debug.S` and `eram.S`, and 0x6e6, 0x6e8, 0x2ff, 0x3ff only in `ge_inst.s`;
| Each branch condition on its false side, the fourth flag condition, and `cc` 0x10, 0x11, 0x14, 0x15 | `ucode/ge_ops.md`, `GE.h` | `ge_inst.s` branch cases (all taken) | The same source routes; production handlers whose fall-through path is reachable only when a known condition is false |
| How form 11 encodes two operations in one M (M = 0x440: integer add and float multiply together) | `ucode/ge_ops.md` | `ge_inst.s` lines 3512-3528 | Compare the form-11 words of `ge.hex` with the same program's other encodings (`ge11.u`), and the assembler source if present |
| Which staging register each command operand word lands in (the engine's input FIFO operation) | `ucode/ge_ops.md`, `ucode/ge_isa.md` | `ge_inst.s` (reads no input) | `mgesi_TbusRegWrite` against the ARM's operand-port writes (r9 + 0x470-0x47c) for a handler whose two operands go to different outputs; `geif.u`-driven handlers with one operand |
| What the `value` column of kpm's engine register table is (reset value, test value or mask) | `docs/ge.md`, `GE.h` | kpm's table read as data | The kpm code that reads the column (write-then-read test, or a printed default) |
| Bit meanings of the ARM's DMA registers 0x200010-0x200048 (input, list and output DMA) | `docs/ge.md`, `ucode/arm1_firmware.md` | every firmware writer of 0x200010-0x20004c; the list-DMA commands in docs/ge.md give the address, length and mode words | The `irsaudit` DMA tests (`TEST_ge_hip` and the HIP tests) and the 6.5.5 `kona_if.h` header |
| Which engine-side condition produces each GE event code (0, 0x100-0x105) | `docs/hip.md`, `ucode/arm1_firmware.md` | kernel handler and the ARM's `start_kcomm`/`finish_kcomm` | The `ge.u` handlers that write the event registers (raster-bus 0x460-0x477) |
| Whether any path resets only the engines, and the engines' state after it | `docs/ge.md` | firmware start-up and reset paths | `irsaudit` `ResetKona` and the engine tests' set-up |
| Order and size of the engine-state records in a saved context image, the third word of each record, and which tag (0x200, 0x400-0x403) is which ARM region | `docs/ge.md` | the firmware loader `arm_context_load` | The engine save handlers `mges_ContextDeact*` in `ge.u` and the firmware save side (`deactivate_*`), which write the records in order |

**Where this section stopped (2026-10-29).** The variable-length command grammars and the texel format id are done (docs/ge.md). The ties were tried from every diagnostic and production program in the 6.5.30m media without a constraining result; the next step is the source routes in the first row. The remaining rows have not been worked from software yet; take them in table order.

## XG (Xtalk widget)

| Question | Owner | Next route |
|---|---|---|
| Names, reset values and layouts of the chip-specific registers 0x5c-0x74, of bits 16-31 of WIDGET_CONTROL (0x24; the driver always sets 0x240000, puts the interrupt target in bits 25-22 and sets bit 17 last) and of 0x74 (bits 16-27 kept, 0x3f40 or-ed in) | `XG.h`, `docs/xg.md` | Read the XG window 0x00-0x7c from a stopped kernel (or the PROM) right after power-on, then after each step of `kona_reset_adaptor`; then write each unexplained bit alone and read back. |
| What the XG does on the crossbar link reset that `xwidget_gfx_reset` performs (which XG and host-interface state survives it) | `docs/xg.md` | Read the XG window and the host-interface registers before and after `xwidget_gfx_reset` on a pipe with a nonzero map RAM and a nonzero error status. |
| What lies in the 16 MB window outside the offsets the driver uses (below 0x800000 apart from 0x04-0x74; the 0xc00000 alias) | `docs/xg.md`, `HIP.h` | Read a few words at stride through each unused range from a kernel debugger; note bus errors. |
| The XG side of host DMA: how it turns a map-RAM entry into Xtalk read and write requests (request size, ordering, how many outstanding) and what raises each DMA error bit of 0x6c (bits 8, 9, 26-28) | `docs/hip.md`, `XG.h` | Trace the Xtalk link (logic analyser on the crossbar port) during a `KONA_DMAREAD` and a `KONA_DMAWRITE` of a few pages; repeat with one map-RAM entry invalidated. |
| The hardware conditions that raise each XG error bit and each of the three interrupt vectors | `XG.h`, `docs/hip.md` | Provoke the conditions the bit names where software can (an invalid map-RAM entry, an over-full graphics FIFO with flow control off, a bad PIO command) and read 0x6c and the interrupt that arrives. |

## Host interface (HIP)

| Question | Owner | Next route |
|---|---|---|
| What the 0xc00000 alias of the host-interface window selects (the kernel writes `HH_GINTR_INFO` at 0xc00108, not 0x800108) | `HIP.h` | Read and write a harmless register (`HH_INTR_ENABLE`) through both offsets from a kernel debugger and compare; then repeat the kernel's kick through 0x800108 and see whether the privileged packet is taken. |
| How the host interface splits the user's 64-bit stores at 0x4000 into token and payload words, and the credit scheme behind `HH_GFIFO_LEVEL` beyond the 0x700 and 0x300 marks | `docs/hip.md`, `GE.h` | Trace the Xtalk PIO writes to the pipe (logic analyser on the crossbar port) while a GL program issues Begin, Vertex3f, End; read `HH_GFIFO_LEVEL` after each store with the pipe held (`HH_GINTR_INFO` hold). |
| What makes the hardware refuse a token to the ARM's divert and begin/end vectors | `docs/hip.md`, `ucode/arm1_firmware.md` | Send a geometry token outside Begin/End and a token whose map entry is the bad-command entry; log the ARM's vector entry with its firmware trace (`printf` output on the ARM console) and the token registers 0x200078 and 0x20007c. |
| Register-level behaviour of the input and output DMA engines (0x200010-0x200024, the `ODMA` set), the meaning of bits 15-12 = 0x9 of the page-offset word, and of `flags` 256 and `snapshot` | `docs/hip.md`, `HIP.h`, `kona_kernel/include/kona_kern.h` | Trace the Xtalk read requests of one `DO_IDMA` with the page-offset word's top nibble 0x9 and then 0x0 (sent through the diagnostic map); repeat a select feedback with `snapshot` 0 and 1 and compare the returned words. |
| The hardware conditions behind each `HH_INTR_STATUS` bit, the low-water level that ends the FIFO-full wait, whether `HH_INTR_ACK` is required | `docs/hip.md`, `HIP.h` | Read `HH_INTR_STATUS` and `HH_GFIFO_LEVEL` on every interrupt while a program fills the FIFO past 0x700 and drains it; repeat once without writing `HH_INTR_ACK`. |
| What the host-interface reset pulse (1 then 0, start bit clear) does to the token map, the FIFOs, the DMA and event counters, and whether it stops a running ARM | `docs/hip.md`, `docs/xg.md` | Fill the FIFO with a held pipe, read the token map at ARM 0x00400000 and the counters, pulse `HH_RESET` as the kernel does, read them again and check whether the ARM still answers its mailbox. |
| The exact effect of `HH_GINTR_INFO` FORCE on a user stream that is mid-command | `HIP.h` | Kick a privileged packet while a user process is between a token and its payload; read back the user's next result. |

## Raster and texture boards (RM, TM)

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Which `tf` chip or chips answer `TFP_` and `TFT_` indexes, and which chip types answer each combined index (`PGTG_`, `TGTM_`, `TGTMTFT`, `PGTFPIMP_`) | `RM.h`, `docs/rm.md` | register names, `init_*` writers in the firmware | `irsaudit`'s per-chip register tests (`jt_reg_read` callers) and their expected values; the 6.5.5 `kona_diag.h` header |
| The select word of the ARM's register write, bus modes 2 and 3, and whether the back-end chip rewrites the top half of the bus word | `docs/rm.md` | firmware writers; the diagnostic vector files' mode column | `irsaudit`'s `tbRegWrite` and the `.tbus` vector builders, which form the same words on the host |
| Texel and pixel data formats on the raster bus | `docs/rm.md`, `RM.h`, `docs/opengl.md` | the firmware's format tables now give the bus format code per texel format (docs/ge.md, "The texel format id") | The firmware's path setup that sends those codes (`SetupGE_*`, `SetupPGTG`), and the diagnostic texture tests' host pattern generators (`GenerateTexturePattern`) |
| The bytes of a read-back reply on the read-back bus (`IMP_OP`, `TFP_TEXRB`, `TM_RDBK` encodings) | `docs/rm.md` | netlists, register names | `irsaudit`'s read-back tests, which unpack the reply on the host |
| How a raster fault shows (no interrupt or error pin) | `docs/rm.md` | netlists, kernel interrupt handler | Kernel timeout paths and the diagnostics' error reports; if none decode a raster fault, label it unknown with those routes |
| Register and pixel-memory contents of `pg`, `tg`, `tf` and `tm` after reset and after `ResetRMBoards` | `docs/rm.md` | firmware reset paths | The diagnostic BIST files (`*.tcbist`, `*.sdbist`) and the register tests' expected reset values in `irsaudit` |
| Per-pixel LOD, sub-texel position, filter-weight and iterator widths inside the fixed-function chips | `docs/rm.md`, `RM.h` | bus widths from the netlists | Host reference models in `irsaudit`'s texture and shading tests, which must compute the expected pixels at the hardware's precision |

**Where this section stopped (2026-10-29).** Not yet worked from software; the texel-format part of the third row is answered and the rest follows the next-route column.

## Display generator (DG)

| Question | Owner | Next route |
|---|---|---|
| The display-bus writes for the cursor crosshair address 9884 and colour word 259 of `X_LOADCURSOR` | `docs/opengl.md`, `DG.h` | Trace the video-controller port (`vc_data[8]` with its strobes) while the X server loads a cursor and switches it to crosshair mode. |
| When the hardware raises the VIDEO interrupt (bit 3) and writes `HH_SEQID` relative to vertical retrace, and what raises VOC (bit 9) | `docs/dg.md`, `docs/hip.md` | Log `HH_INTR_STATUS` and `HH_SEQID` with timestamps against the vertical sync on the video connector while a program swaps every frame; unplug and replug genlock for VOC. |
| The display generator's own reset register and whether a host request or interrupt reaches it | `docs/dg.md` | Read the display board's scan-chain registers before and after `ResetRMBoards` and after an `HH_RESET` pulse. |

## Geometry distributor

The distributor questions are written in [ucode/ged.md](../ucode/ged.md); listed here so this page is complete.

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| How the hardware chooses between the state-based index and the token's own entry number | `ucode/ged.md` | the distributor program and the firmware's tables | The `irsaudit` distributor tests (`TEST_gedcrc_*`, `TEST_geducode`) and their host models of the expected routing |
| What transfer ops 1, 3, 5, 6 and 7 test; control fields x, y, r, a, b, c, z and n; the small-constant registers r13, r14, r30-r67 and the sequencer-test registers 0x280-0x2b0 | `ucode/ged.md` | the diagnostic's instruction packer | The `gedSequencer` test's host side and `Get_GED_*_Inst` builders |
| How the distributor chooses among the engines in its occupancy mask (the mask and its register are read: ucode/ged.md, "Engine occupancy mask") | `ucode/ged.md` | `arm1.u` start-up (`init_ge_config`, `init_ge`); 6.5.5 `sys/kona_if.h` (a round-robin flag no 6.5.30m firmware path tests) | `irsaudit` `ge12_multige_test` and `ge12_splitge_test`; if they predict no assignment, label it unknown with these routes |

**Where this section stopped (2026-10-29).** Not yet worked from software; take the rows in order.

## Kernel driver

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Why `kona_video_intr` writes 1 to `HH_TBUS_STATUS` (0x8003a8) after `kona_nclops_swapped` on every video interrupt | `docs/kernel.md`, `HIP.h` | the kernel write site (`kona_video.o` 0x1830-0x1840) and kpm's register mask (0xf) | kpm's field names for `HH_TBUS_STATUS`, the firmware's reads of the same register, and `kona_callout`'s use of it |
| What the user-safe host-interface page at window offset 0x810000 (mapped at user offset 0x4000 for unprivileged processes) exposes, against 0x800000 for privileged ones | `docs/kernel.md`, `HIP.h` | `KONAmapgfx` (`kona_map.o` 0x0-0x1f8) | libGLcore's and the X modules' loads and stores relative to the 0x4000 page, and the HIP2 register table in kpm for a second bank at +0x10000 |
| Which pipe program writes the activate token into word 2 of a saved context header | `docs/kernel.md`, `docs/ge.md` | every host binary (no 0x1fa store); `arm_context_deactivate` and `deactivate_arm` in `arm1.u` (they save sections tagged 0x200, 0x400, 0x401 but write no header word) | the geometry-engine save code in `ucode/ge_listing/ctx_deact.S.lst` and the output words it sends |
| The meaning of the DPLEX display-port addresses (0x8001, 0x8400, 0x80, 0xe200, 0xe300, 0xe500) beyond the bits the discovery messages name | `docs/kernel.md`, `DG.h` | `kona_nclops.o` (all functions) | the X modules' hyperpipe code (`konHyperpipeConfig`, `konQueryHyperpipeNetwork`), `gfxinit` and `setmon` for DPLEX setup, and the display-board netlist for the `dplex` chip's address decode |

Where this reader stopped (2026-10-29): the four kernel rows' named gaps are read (`docs/kernel.md`). Next: document the remaining undocumented functions of `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` from `docs/inventory/functions.tsv`, then the questions above.
