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

**Where this section stopped (2026-10-29, second pass).** Answered and removed: kpm's value column (docs/ge.md), the GE event codes (docs/ge.md, "Engine events"), engine-only reset (labelled unknown with routes, docs/ge.md). Field G of form 14 is read as the written register (ucode/ge_isa.md), which settles the 0x6641 word for the kernel's question. Of the 40 "unknown entry" module heads, 26 are reached as address constants, `HereWeGo` is the program's first word, and 13 are labelled unknown with routes (ucode/ge_handlers.md). Still open, in table order: branch false sides, form 11, input staging registers (the counted copy loops in `ctx_load.S`, which store staging registers 0x1e, 0x1d and 0x1c each pass, are the next lead), the ARM DMA register bits (`irsaudit` `TEST_idma` and `TEST_odma` not yet read), and the saved-context records.

## XG (Xtalk widget)

No open questions. The reset values of the command water marks in `XG_HI_LO_WATER` and of the other XG registers are labelled unknown with the routes tried in [XG.h](../XG.h) and [xg.md](xg.md#reset-kona_reset_adaptor); what the `HH_RESET` pulse clears is labelled the same way in [xg.md](xg.md#pipe-reset-konainitialize-and-the-credit-wait-path).

## Host interface (HIP)

No open entries.

## ARM firmware

Routes already tried: `arm1.u` (6.5.30m, the whole image disassembled with its 1682 symbols), `arm1_kpm.u`, `kpm`, `libGLcore` N32, `kona.so` and `irsaudit`. Answers live in [ucode/arm1.md](../ucode/arm1.md) and [ucode/arm1_firmware.md](../ucode/arm1_firmware.md).

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Whether the host interface drops `WG_FLUSH_0`/`WG_FLUSH_1` before the token map | `ucode/arm1_firmware.md`, `docs/opengl.md` | firmware: both handlers branch to `arm_badcmd`; the X module sends `WG_FLUSH_1` after cursor loads | `libGLcore` for `WG_FLUSH_0` stores; run the X server under an emulator and see whether a model that dispatches the token hangs |
| Who sends `X_INIT` (0x128) | `docs/opengl.md` | no store in the X modules `kona.so`, `konal.so`, `konas.so`, `konad.so` addresses it (offset 0x2500); `libGLcore` hits for 0x2500 are the GL enum `TEXTURE_GEN_MODE` | the X server binary `Xsgi`; the kernel's textport and X-server start paths |
| Why `X_LINE6` and `X_LINE6_R` carry 7 words while their map entries count 12 | `docs/opengl.md`, `ucode/arm1.md` | X module (`konLineSS`; `KonSeqData6_ip19` stores six words as three 64-bit stores, so seven words in all); the entries are pass-form with count 12 ([ucode/ged.md](../ucode/ged.md)); their distributor entries (0x251, 0x273 in `qstrip.s`) only load a strip state; every other X token's count equals the words sent | the distributor's `qstrip.s` code after the state load, for how many words a line strip consumes; irsaudit's X tests |
| Who writes handler-table indexes 19-21 (used by the raster-position, material and evaluator code) | `ucode/arm1.md` | `init_ged`, `arm_matrixmode`, `xform_init`, `xform_restore` | the remaining stores of descriptor 0x46000020 in `arm1.u` (search by value, not by function) |
| Which distributor registers descriptors 0x44000020, 0x44200020, 0x44400020 load | `ucode/arm1_firmware.md` | `init_ged` | [ucode/ged.md](../ucode/ged.md)'s register list and the IR diagnostic's `ged*` builders |
| `dgFetal`'s purpose | `ucode/arm1_firmware.md` | start-up call site | `DoDGRqstFetal` and its strings |

**Where this pass stopped.** Every function and data symbol of the firmware is now explained, the ones not in [arm1_firmware.md](../ucode/arm1_firmware.md) in [arm1_functions.md](../ucode/arm1_functions.md) by family. The inventory still counts about 20 short lower-case data names (`gepc`, `path`, `overlap`, `swapin` and the like) as named only: its English-word rule credits a short lower-case name only when written as a call, which a table cannot honestly be. Next: the open questions above, then a second pass over the pixel-path control-word lists (what each word of a `_8_16` list programs). The host-interface questions were worked from irsaudit in this pass ([docs/hip.md](hip.md#what-the-ir-diagnostic-shows-of-the-host-interface)); still to read are `kpm` beyond `hipReset` (its FIFO dump and ARM-space writes), the distributor's `qstrip.s` for `X_LINE6`, and `ge.u`'s `activate_gefifo` for the engine ports 0x420, 0x428 and 0x43c.

## Raster and texture boards (RM, TM)

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Which `tf` chip or chips answer `TFP_` and `TFT_` indexes, and which chip types answer each combined index (`PGTG_`, `TGTM_`, `TGTMTFT`, `PGTFPIMP_`) | `RM.h`, `docs/rm.md` | register names, `init_*` writers in the firmware | `irsaudit`'s per-chip register tests (`jt_reg_read` callers) and their expected values; the 6.5.5 `kona_diag.h` header |
| The select word of the ARM's register write, and whether the back-end chip rewrites the top half of the bus word | `docs/rm.md` | firmware writers; the diagnostic vector files; `irsaudit` `tbRegWrite` (mode-1 word) and `fcTbusWrite` (modes 2 and 3 travel as codes 6 and 4 in `HP_TBUS_1`, docs/rm.md, "Bus modes 2 and 3") | the engine's bus-output addresses 0x1f4-0x1f8 in `mgesi_TbusRegWrite` and `mgesi_BshRegisterWrite`, read word by word against the ARM's four-store write; if they do not separate the select word, label it unknown with these routes |
| Texel and pixel data formats on the raster bus | `docs/rm.md`, `RM.h`, `docs/opengl.md` | the firmware's format tables now give the bus format code per texel format (docs/ge.md, "The texel format id") | The firmware's path setup that sends those codes (`SetupGE_*`, `SetupPGTG`), and the diagnostic texture tests' host pattern generators (`GenerateTexturePattern`) |
| Register and pixel-memory contents of `pg`, `tg`, `tf` and `tm` after reset and after `ResetRMBoards` | `docs/rm.md` | firmware reset paths; `irsaudit` `tbuRegReset`, whose restore values are now in docs/rm.md (the diagnostic's choice, not a measured reset) | The diagnostic BIST files (`*.tcbist`, `*.sdbist`); if they hold no register state, label unknown with these routes |
| Per-pixel LOD, sub-texel position, filter-weight and iterator widths inside the fixed-function chips | `docs/rm.md`, `RM.h` | bus widths from the netlists | Host reference models in `irsaudit`'s texture and shading tests, which must compute the expected pixels at the hardware's precision |

**Where this section stopped (2026-10-29, third pass).** Answered and moved to docs/rm.md: the read-back reply bytes (labelled unknown: the `irsaudit` read-back tests compare scan-chain CRCs and software sees only the packed host image), how a raster fault shows (the kernel watchdog and the diagnostic's CRC and BIST tests; finer causes labelled unknown), the host encoding of bus modes 2 and 3 (`fcTbusWrite`), and kpm's names for the 89 shadow words. Still open, in table order: which `tf` chip answers `TFP_`/`TFT_` and the combined indexes (next: `jt_reg_read` callers in `irsaudit`), the select word, the texel and pixel bus formats (next: `SetupGE_*`, `SetupPGTG` and `GenerateTexturePattern`), register contents after reset (next: the `*.tcbist` and `*.sdbist` files), and the internal widths (next: the texture tests' host reference models, `tbuGenPattern`, `tbuLoadBicubic`).

## Display generator (DG)

No open entries. **Where this section stopped (2026-10-29, second pass).** Answered and moved to the owners: the LoadFormat words 1, 19, 25-27, 275-278 and 295-302 and the clock-parameter word layout from the X module's channel loader, genlock code and PLL solver ([dg.md](dg.md#the-loadformat-request-383-words), [DG.h](../DG.h)); the combination fields `HSync`, `SyncComponent`, `TriLevelSyncEnable`, `SetupEnable`, `VbobSyncSource` and the frame-detection fields through the channel loader and the genlock parameters ([dg.md](dg.md#loading-a-combination-channel), [ucode/dg.md](../ucode/dg.md)); and the X module's 35 display functions and 18 `vfmt*` functions ([opengl.md](opengl.md#display-functions-cursor-records-display-ids-colour-maps-gamma)). Labelled unknown with routes: `hwd_mode` bits 2-4, what the clock chip does with each PLL code, LoadFormat words 299-300, `SyncSource`, `SyncMethod`, `HalfLineInterp`, `PFDRegularLines`, `PFDValidTable` and genlock words 1-6 and 12-15. Next, outside these rows: the other undocumented `nfb*` display-id and colormap functions of `kona.so` (`nfbInitVisDIDs`, `nfbSetDidFlags`, `cmapDID`, `SetDIDMode`, the `nfb*HWColormap` set).

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
| Which pipe program writes the activate token into word 2 of a saved context header | `docs/kernel.md`, `docs/ge.md` | every host binary (no 0x1fa store); `arm_context_deactivate` and `deactivate_arm` in `arm1.u` (they save sections tagged 0x200, 0x400, 0x401 but write no header word); the ARM cannot form 0x1fa as an instruction immediate and no literal-pool word in `arm1.u` holds it; the only engine word with the immediate 0x1fa is 0x6641 in `ctx_load.S` (`mgeb_ContextDestroy`'s range, form 14, constant staging register C = 0x1e, G = 2) | decode where that form-14 word sends its constant once [ge_isa.md](../ucode/ge_isa.md) settles field G and the output path; if it is the save-image header, the answer is the destroy handler, not the save path. Settled for that word: field G is read in [ge_isa.md](../ucode/ge_isa.md#fields) and [ge_ops.md](../ucode/ge_ops.md), and 0x6641 loads 0x1fa as a copy-loop count into engine register 2, never sent out, so the engine program does not store the activate token through that word |

Where this reader stopped (2026-10-29): every function of `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` has an entry in the [function reference](kernel.md#function-reference). Answered and moved: the `HH_TBUS_STATUS` writes ([kernel.md](kernel.md#hh_tbus_status)), the 0x810000 page (the `USER` address bit, [kernel.md](kernel.md#what-a-process-maps)), the DPLEX register names from `irsaudit` ([kernel.md](kernel.md#multi-pipe-dplex-display-port-writes)), what the reset pulse clears ([xg.md](xg.md#pipe-reset-konainitialize-and-the-credit-wait-path)). The 0x9000 low word: the kernel is its only producer (no 0x9000 constant in kpm, libGLcore or the X module `kona.so`; irsaudit's two are in an IMP test), and HIP2's `HH_ODMA_POFF` is 17 bits wide against HIP1's 12, so bits 12-16 exist only on HIP2; what 0x9 selects stays with the host-interface entry above. Since then `rrmSuspend`/`rrmResume` were read branch by branch and the `MESSAGE` valid bit was settled (nothing sets it again), both in [kernel.md](kernel.md#function-reference). Next: the row above, then the smaller unknowns marked in the function reference (copy-in conversion arguments, `streams_timeout` arguments, the `gfxdd_mmap` region attribute words in `KONAattach`).

