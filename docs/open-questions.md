# Open questions

Questions the binaries and sources read so far do not yet answer. No hardware is available, so each one is answered from software or published material: shipped binaries of every IRIX release, the 6.5.5 installed `sys/kona*.h` headers, the IR diagnostics, public drivers and emulators, manuals, and published `hinv`, `gfxinfo`, `irsaudit` and ide transcripts. Running the shipped software under an emulator counts too, labelled as the software's expectation.

Each entry gives the owning file, the routes already tried and the next route to try. When a question is answered, move the answer into the owning header or chapter and delete the entry. When every route is exhausted, the owner labels the fact "unknown: no shipped software or published source depends on it" with the routes tried, and the entry is deleted.

The "Next route" cells below were converted from requests for measurements on a running pipe and still describe that measurement. Each owner rewrites its section into software routes and works through them.

## Geometry engine program

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Each branch condition on its false side, the fourth flag condition, and `cc` 0x10, 0x11, 0x14, 0x15 | `ucode/ge_ops.md`, `GE.h` | `ge_inst.s` branch cases (all taken) | The same source routes; production handlers whose fall-through path is reachable only when a known condition is false |
| How form 11 encodes two operations in one M (M = 0x440: integer add and float multiply together) | `ucode/ge_ops.md` | `ge_inst.s` lines 3512-3528 | Compare the form-11 words of `ge.hex` with the same program's other encodings (`ge11.u`), and the assembler source if present |
| Which staging register each command operand word lands in (the engine's input FIFO operation) | `ucode/ge_ops.md`, `ucode/ge_isa.md` | `ge_inst.s` (reads no input) | `mgesi_TbusRegWrite` against the ARM's operand-port writes (r9 + 0x470-0x47c) for a handler whose two operands go to different outputs; `geif.u`-driven handlers with one operand |
| What the `value` column of kpm's engine register table is (reset value, test value or mask) | `docs/ge.md`, `GE.h` | kpm's table read as data | The kpm code that reads the column (write-then-read test, or a printed default) |
| Bit meanings of the ARM's DMA registers 0x200010-0x200048 (input, list and output DMA) | `docs/ge.md`, `ucode/arm1_firmware.md` | every firmware writer of 0x200010-0x20004c; the list-DMA commands in docs/ge.md give the address, length and mode words | The `irsaudit` DMA tests (`TEST_ge_hip` and the HIP tests) and the 6.5.5 `kona_if.h` header |
| Which engine-side condition produces each GE event code (0, 0x100-0x105) | `docs/hip.md`, `ucode/arm1_firmware.md` | kernel handler and the ARM's `start_kcomm`/`finish_kcomm` | The `ge.u` handlers that write the event registers (raster-bus 0x460-0x477) |
| Whether any path resets only the engines, and the engines' state after it | `docs/ge.md` | firmware start-up and reset paths | `irsaudit` `ResetKona` and the engine tests' set-up |
| Order and size of the engine-state records in a saved context image, the third word of each record, and which tag (0x200, 0x400-0x403) is which ARM region | `docs/ge.md` | the firmware loader `arm_context_load` | The engine save handlers `mges_ContextDeact*` in `ge.u` and the firmware save side (`deactivate_*`), which write the records in order |

**Where this section stopped (2026-10-29).** The operation ties are settled in ucode/ge_ops.md ("Settling the ties"): minimum, maximum, XOR and OR by the handlers that need them, AND by intent, unit 2's 0x2f/0x3f and 0x42's saturation unknown with routes. Every `ge_symbols` label and `geif.u` slot is placed by module with what reaches it (ucode/ge_handlers.md), and every token in GE.h carries its route. Not yet worked: the rows above, in table order; for the branch row, start from production handlers whose fall-through is reachable only on a false condition (the `cc` 0x111 conditional moves in fog.S and mdecompose2.S are candidates). The 40 "unknown entry" labels in ucode/ge_handlers.md are module heads no slot or decoded transfer reaches; find how they are entered (an address written to engine memory by the `Dirty*` modules is the first guess to test).

## XG (Xtalk widget)

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| The reset values of the command-FIFO water marks in `XG_HI_LO_WATER` (0x74, bits 16-21 and 22-27), which `kona_reset_adaptor` keeps rather than writes | `XG.h`, `docs/xg.md` | the 6.5.30m kernel; kpm's XG table (masks, no reset values); the 6.5.5 headers | kpm's own code that reads or writes 0x74 (its register test may write defaults), and the IR diagnostics' XG tests |
| The reset values of the other XG registers | `XG.h` | as above | none needed for the driver: it writes every other register it relies on; label "unknown: no shipped software or published source depends on it" once kpm's code is read |

## Host interface (HIP)

Routes already tried for every entry here: the 6.5.30m kernel objects (`kona.a`), the ARM firmware `arm1.u` and its NIC image `arm1_kpm.u`, `kpm`, `irsaudit`, `libGLcore` (N32) and the X module `kona.so`. The firmware side of each register the ARM touches is in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md#control-and-status-registers).

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| What the 0xc00000 view of the host-interface window is (the kernel writes `HH_GINTR_INFO` at 0xc00108, never at 0x800108) | `HIP.h` | kernel: every 0xc00000 access is that one register, written; `kpm` and `irsaudit` register tables name only the 0x800000 view | `irsaudit` and `ireeprom` for any read or write above 0xc00000; earlier IRIX releases' `kona.a` for a second user of the alias |
| How the host interface splits the user's 64-bit stores into token and payload words, and how a token-as-data word at FIFO offset 0 is told from a payload word | `docs/hip.md`, `GE.h` | `libGLcore` framing (token word first, then payload) and the X module's framing (first payload word at 32 x token) are both read ([docs/opengl.md](opengl.md#x-server-module-drawing-commands)); the firmware sees only handler addresses | `libGL`/`libGLcore` of an earlier release for a comment-bearing build; run the X server under an emulator with a logging FIFO model and compare both framings' word streams |
| The credit scheme behind `HH_GFIFO_LEVEL` beyond the 0x700 and 0x300 marks | `docs/hip.md` | kernel flow-control code (`kona_flow.o`) | `kpm`'s FIFO test, if any, and `irsaudit`'s FIFO tests |
| What makes the hardware divert a token to `arm_divert` | `ucode/arm1_firmware.md` | 6.5.30m firmware: the vector prints "divert not handled!" and spins; nothing else references it | `arm1.u` from other IRIX releases (the Library's 6.5.x media) for a build with a divert handler |
| Register-level detail of the input-DMA status bits 0, 5 and 6 of 0x200024, the mode value 2 at 0x200020, and what 0x9 in bits 15-12 of the page offset selects | `ucode/arm1_firmware.md`, `HIP.h` | firmware value flow in every DMA handler (now written); kernel DMAPOOL and DO_IDMA payload builders | `irsaudit`'s DMA tests, which program the DMA from the host through the diagnostic map, for other mode values and offset nibbles |
| The meaning of `flags` 256 and `snapshot` in the select-feedback ioctl | `kona_kernel/include/kona_kern.h` | kernel ioctl code | the firmware's `arm_start_selectfeed` and `arm_finish_selectfeed` payload reads (not yet read) |
| The hardware conditions behind each `HH_INTR_STATUS` bit, the low-water level that ends the FIFO-full wait, whether `HH_INTR_ACK` is required | `docs/hip.md`, `HIP.h` | kernel handlers and masks | `irsaudit` interrupt tests; `kpm` |
| What the reset pulse does to the token map, FIFOs and counters | `docs/hip.md`, `docs/xg.md` | kernel pulse sites; the firmware rebuilds the whole token map and reloads every table in `init_hip`/`init_ged` on each start, so no shipped firmware relies on any of it surviving | `irsaudit` reset tests; otherwise label unknown: no shipped software depends on it |
| The exact effect of `HH_GINTR_INFO` FORCE on a user stream that is mid-command | `HIP.h` | kernel kick sites; firmware: the privilege bit (0x200060 bit 2) is what the ARM tests, never FORCE | `irsaudit`; otherwise unknown: no shipped software depends on it beyond the kernel's use |

## ARM firmware

Routes already tried: `arm1.u` (6.5.30m, the whole image disassembled with its 1682 symbols), `arm1_kpm.u`, `kpm`, `libGLcore` N32 and `kona.so`. Answers live in [ucode/arm1.md](../ucode/arm1.md) and [ucode/arm1_firmware.md](../ucode/arm1_firmware.md).

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Roles of engine ports 0x420, 0x428 and 0x43c (0x430, 0x434, 0x438 are read) | `ucode/arm1_firmware.md` | every store in `arm1.u` (users listed there) | the engine program's input handling in `ge.u` (`activate_gefifo` pairs these with known handlers); `irsaudit`'s `ged*` tests |
| Bits 26-28 of the pass-through counter 0x200058 (four values seen) | `ucode/arm1_firmware.md` | all 27 writers | `irsaudit` and `kpm` writes to ARM 0x200058 through the host's ARM-space path |
| Roles of 0x200004, 0x20005c, 0x2000f4 | `ucode/arm1_firmware.md` | `init_ge`, `init_hip`, `activate_hip`, `arm_ged_verif_*` | `irsaudit`'s HIP register tests and `kpm`'s register table, which name the host-side copies |
| Whether the host interface drops `WG_FLUSH_0`/`WG_FLUSH_1` before the token map | `ucode/arm1_firmware.md`, `docs/opengl.md` | firmware: both handlers branch to `arm_badcmd`; the X module sends `WG_FLUSH_1` after cursor loads | `libGLcore` for `WG_FLUSH_0` stores; run the X server under an emulator and see whether a model that dispatches the token hangs |
| Why `X_LINE6` and `X_LINE6_R` carry 7 words while their map entries count 12 | `docs/opengl.md`, `ucode/arm1.md` | X module (`konLineSS`, `KonSeqData6_ip19`); routed entry fields | the distributor's line-strip entries in `ged1b.u` ([ucode/ged.md](../ucode/ged.md)) for how a line command consumes words |
| The unknown bits of routed token-map entries (4, 9-14 beyond the count, 24-26, 31) and the `HP_NORMAL3*` count exception | `ucode/arm1.md` | firmware builders (`init_hip`, `varray_build_command`) | the distributor control-word layout in [ucode/ged.md](../ucode/ged.md), which covers the same 24 bits |
| Who writes handler-table indexes 19-21 (used by the raster-position, material and evaluator code) | `ucode/arm1.md` | `init_ged`, `arm_matrixmode`, `xform_init`, `xform_restore` | the remaining stores of descriptor 0x46000020 in `arm1.u` (search by value, not by function) |
| Which distributor registers descriptors 0x44000020, 0x44200020, 0x44400020 load | `ucode/arm1_firmware.md` | `init_ged` | [ucode/ged.md](../ucode/ged.md)'s register list and the IR diagnostic's `ged*` builders |
| `dgFetal`'s purpose | `ucode/arm1_firmware.md` | start-up call site | `DoDGRqstFetal` and its strings |

**Where this pass stopped.** Every function and data symbol of the firmware is now explained, the ones not in [arm1_firmware.md](../ucode/arm1_firmware.md) in [arm1_functions.md](../ucode/arm1_functions.md) by family. The inventory still counts about 20 short lower-case data names (`gepc`, `path`, `overlap`, `swapin` and the like) as named only: its English-word rule credits a short lower-case name only when written as a call, which a table cannot honestly be. Next: the open questions above, then a second pass over the pixel-path control-word lists (what each word of a `_8_16` list programs).

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

**Where this section stopped (2026-10-29, second pass).** Every raster index in the inventory is now documented: each RM.h register carries its writers (engine program, `irsaudit`, vector files, the diagnostic's restore routine `tbuRegReset`) or is labelled unknown with the routes tried. The raster-bus word format is established from `irsaudit` `tbRegWrite` (docs/rm.md, "The register-write word"). The table rows above are not yet worked; next is the `irsaudit` read-back tests (`TEST_texread`, `TEST_readback`) for the read-back reply bytes.

## Display generator (DG)

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| What the display hardware does with `hwd_mode` bits 2-4, the clock-parameter units and LoadFormat words 1, 275-277 and 297-300 beyond the register bits they fill | `docs/dg.md`, `docs/opengl.md` | the X module's builder and `konValidateMode`, the kernel, the firmware consumers | `setmon` and `ircombine`, which print some of these fields by name |
| The X module's undocumented display functions: `konRealizeCursor`, `konUnrealizeCursor`, `kon_freeCursorCaches`, `konReloadAllGammas`, `konInitDIDState`, `konChangeDIDCmap`, `kon_drawDid`, `konTempBlankAllChannels`, the colormap set (`konInitializeColormap`, `konClearHWColormap`, `konSetColor`, `konUninstallColormap`, `konInstallFakeColormap`, `konStoreFakeColors`), `konQueryMaxSwapBarrier`, the 20 `konStereo*` drawing wrappers and 18 `vfmt*` functions | `docs/opengl.md` | `docs/inventory/functions.tsv` lists them; the cursor cache, gamma and display-id paths they feed are read in [dg.md](dg.md) | read each in `ddx/asm/kona/kon/kon.s` and `vfmt/vfmt.s` for its emission, in the order listed |
| What the combination fields `HSync`, `SyncComponent` and `VbobSyncSource` and the frame-detection fields feed | `ucode/dg.md` | the files; the names are present in `kona.so`, `setmon` and `ircombine`, so a consumer exists | find the readers' callers in `kona.so` (the `vfmt*` functions); `DoDGRqstSyncSelects` (4 words) and `DoDGRqstLoadGenlockParams` (16 words) are the likely destinations |

**Where this section stopped (2026-10-29).** Answered this session and moved to the owners: the video requester and XMAP start-up values, the XMAP registers the diagnostic's list omits and the fast-list ports, the gamma-table formats, the cursor memory (address 9884 and word 259), the retrace sequence number's path to `HH_SEQID`, the VIDEO and VOC interrupt bits, the reset, the tile request format and what is known of the pixel format ([dg.md](dg.md), [DG.h](../DG.h), [rm.md](rm.md#display-and-scanout-from-the-raster-boards)). What no software shows is labelled unknown there with the routes tried. The RM display row and the DG registers, command, interrupt and reset rows now meet the done definition, and so does `tport.bin`. Of the rows marked done before, the display-tables row is reopened by the combination fields above, and the OpenGL display row by the X module's undocumented display functions. The LoadFormat words and `hwd_mode` bits keep the DG "Display and scanout" row partial. Next: the rows above, in order.

## Geometry distributor

The distributor questions are written in [ucode/ged.md](../ucode/ged.md); listed here so this page is complete.

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| How the hardware chooses between the state-based index and the token's own entry number | `ucode/ged.md` | the distributor program and the firmware's tables | The `irsaudit` distributor tests (`TEST_gedcrc_*`, `TEST_geducode`) and their host models of the expected routing |
| What transfer ops 1, 3, 5, 6 and 7 test; control fields x, y, r, a, b, c, z and n; the small-constant registers r13, r14, r30-r67 and the sequencer-test registers 0x280-0x2b0 | `ucode/ged.md` | the diagnostic's instruction packer | The `gedSequencer` test's host side and `Get_GED_*_Inst` builders |

**Where this section stopped (2026-10-29).** The engine-choice row is closed as unknown with its routes (ucode/ged.md). Next: the `irsaudit` distributor tests for the first row (`TEST_gedcrc_*` compare CRCs against gold files, so look for a host model of the routing in `gedStress*`), then `gedSequencer` and the `Get_GED_*_Inst` builders for the second.

## Kernel driver

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Why `kona_video_intr` writes 1 to `HH_TBUS_STATUS` (0x8003a8) after `kona_nclops_swapped` on every video interrupt | `docs/kernel.md`, `HIP.h` | the kernel write site (`kona_video.o` 0x1830-0x1840) and kpm's register mask (0xf) | kpm's field names for `HH_TBUS_STATUS`, the firmware's reads of the same register, and `kona_callout`'s use of it |
| What the user-safe host-interface page at window offset 0x810000 (mapped at user offset 0x4000 for unprivileged processes) exposes, against 0x800000 for privileged ones | `docs/kernel.md`, `HIP.h` | `KONAmapgfx` (`kona_map.o` 0x0-0x1f8) | libGLcore's and the X modules' loads and stores relative to the 0x4000 page, and the HIP2 register table in kpm for a second bank at +0x10000 |
| Which pipe program writes the activate token into word 2 of a saved context header | `docs/kernel.md`, `docs/ge.md` | every host binary (no 0x1fa store); `arm_context_deactivate` and `deactivate_arm` in `arm1.u` (they save sections tagged 0x200, 0x400, 0x401 but write no header word) | the geometry-engine save code in `ucode/ge_listing/ctx_deact.S.lst` and the output words it sends |
| The meaning of the DPLEX display-port addresses (0x8001, 0x8400, 0x80, 0xe200, 0xe300, 0xe500) beyond the bits the discovery messages name | `docs/kernel.md`, `DG.h` | `kona_nclops.o` (all functions) | the X modules' hyperpipe code (`konHyperpipeConfig`, `konQueryHyperpipeNetwork`), `gfxinit` and `setmon` for DPLEX setup, and the display-board netlist for the `dplex` chip's address decode |

Where this reader stopped (2026-10-29): the four kernel rows' named gaps are read (`docs/kernel.md`). Next: document the remaining undocumented functions of `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` from `docs/inventory/functions.tsv`, then the questions above.
