# Open questions

Questions the binaries and sources read so far do not yet answer. No hardware is available, so each one is answered from software or published material: shipped binaries of every IRIX release, the 6.5.5 installed `sys/kona*.h` headers, the IR diagnostics, public drivers and emulators, manuals, and published `hinv`, `gfxinfo`, `irsaudit` and ide transcripts. Running the shipped software under an emulator counts too, labelled as the software's expectation.

Each entry gives the owning file, the routes already tried and the next route to try. When a question is answered, move the answer into the owning header or chapter and delete the entry. When every route is exhausted, the owner labels the fact "unknown: no shipped software or published source depends on it" with the routes tried, and the entry is deleted.

The "Next route" cells below were converted from requests for measurements on a running pipe and still describe that measurement. Each owner rewrites its section into software routes and works through them.

## Geometry engine program

No open entries. **Where this section stopped (2026-10-29, fourth pass).** Answered and moved to [ucode/ge_ops.md](../ucode/ge_ops.md) and [GE.h](../GE.h): how one operation field names two operations (M[10:7] unit 2, M[6:0] unit 1, both live in form 11), the branch conditions' false sides from production handlers that need them (the low flag nibble is unit 1's, not the integer one's), the conditions 0x10, 0x11, 0x14 and 0x15 by their targets, and the input operands (word k is source A = 0x1f, D = k, matched against the host word counts). Labelled unknown with routes: the fourth flag condition (no production use), unit-2 code 0x0f, the pixel-loop exit counter, and how the engine advances its input pointer. The 13 unreached module heads stay labelled unknown with routes in ucode/ge_handlers.md.

## XG (Xtalk widget)

No open questions. The reset values of the command water marks in `XG_HI_LO_WATER` and of the other XG registers are labelled unknown with the routes tried in [XG.h](../XG.h) and [xg.md](xg.md#reset-kona_reset_adaptor); what the `HH_RESET` pulse clears is labelled the same way in [xg.md](xg.md#pipe-reset-konainitialize-and-the-credit-wait-path).

## Host interface (HIP)

No open entries.

## ARM firmware

Routes already tried: `arm1.u` (6.5.30m, the whole image disassembled with its 1682 symbols), `arm1_kpm.u`, `kpm`, `libGLcore` N32, `kona.so` and `irsaudit`. Answers live in [ucode/arm1.md](../ucode/arm1.md) and [ucode/arm1_firmware.md](../ucode/arm1_firmware.md).

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Whether the host interface drops `WG_FLUSH_0`/`WG_FLUSH_1` before the token map | `ucode/arm1_firmware.md`, `docs/opengl.md` | firmware: both handlers branch to `arm_badcmd`; the X module sends `WG_FLUSH_1` after cursor loads | `libGLcore` for `WG_FLUSH_0` stores; run the X server under an emulator and see whether a model that dispatches the token hangs |
| Who writes handler-table indexes 19-21 (used by the raster-position, material and evaluator code) | `ucode/arm1.md` | `init_ged`, `arm_matrixmode`, `xform_init`, `xform_restore` | the remaining stores of descriptor 0x46000020 in `arm1.u` (search by value, not by function) |
| Which distributor registers descriptors 0x44000020, 0x44200020, 0x44400020 load | `ucode/arm1_firmware.md` | `init_ged` | [ucode/ged.md](../ucode/ged.md)'s register list and the IR diagnostic's `ged*` builders |
| `dgFetal`'s purpose | `ucode/arm1_firmware.md` | start-up call site | `DoDGRqstFetal` and its strings |

**Where this pass stopped** (2026-10-29). kpm's ARM-side register table ([ucode/arm1_registers.tsv](../ucode/arm1_registers.tsv)) closed the engine-port, pass-through, 0x2000f4 and token-map-bit questions, and `X_INIT` and `X_LINE6` are labelled in [docs/opengl.md](opengl.md#x-server-module-drawing-commands). The inventory now counts every `arm1.u` symbol as documented, so the earlier gap (short lower-case data names credited only in the call form) no longer shows. Still open above: `WG_FLUSH`, handler-table indexes 19-21, descriptors 0x44000020-0x44400020 and `dgFetal`. Next: search `arm1.u` by value for stores of descriptor 0x46000020 with data 19-21, read `DoDGRqstFetal`, and run the X server under an emulator for the `WG_FLUSH_1` question.

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

**Where this section stopped (2026-10-29, second pass).** Answered and moved to the owners: the LoadFormat words 1, 19, 25-27, 275-278 and 295-302 and the clock-parameter word layout from the X module's channel loader, genlock code and PLL solver ([dg.md](dg.md#the-loadformat-request-383-words), [DG.h](../DG.h)); the combination fields `HSync`, `SyncComponent`, `TriLevelSyncEnable`, `SetupEnable`, `VbobSyncSource` and the frame-detection fields through the channel loader and the genlock parameters ([dg.md](dg.md#loading-a-combination-channel), [ucode/dg.md](../ucode/dg.md)); and the X module's 35 display functions and 18 `vfmt*` functions ([opengl.md](opengl.md#display-functions-cursor-records-display-ids-colour-maps-gamma)). Labelled unknown with routes: `hwd_mode` bits 2-4, what the clock chip does with each PLL code, LoadFormat words 299-300, `SyncSource`, `SyncMethod`, `HalfLineInterp`, `PFDRegularLines`, `PFDValidTable` and genlock words 1-6 and 12-15. The display-id, colour-map and cursor functions that were next (`nfbInitVisDIDs`, `nfbSetDidFlags`, `cmapDID`, `SetDIDMode`, the `nfb*HWColormap` set, `nfbRealizeCursor`, `konBlankScreen`) are in [opengl.md](opengl.md#frame-buffer-layer-hardware-colour-maps-display-id-state-cursor-and-blanking), with four small allocator functions and `SetReservedID`. Still to read, in `kona.so` (the allocator rules in [kona-ddx.md](kona-ddx.md#identifier-allocation-and-support) say unknown, but the code is readable): the five search, share and steal functions at 0x5780a0, 0x4609e0, 0x44a280, 0x48c650 and 0x433b20, and the meaning of display-id flag bits 0x1, 0x4 and 0x10.

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
| Which pipe program writes the activate token into word 2 of a saved context header | `docs/kernel.md`, `docs/ge.md` | every host binary (no 0x1fa store); the kernel archives' data (the two aligned 0x1fa words in `kona.a` are symbol-table entries of `kona_flow.o` and `kona_mem.o`, not data); `arm_context_deactivate`, `deactivate_arm` and `deact_section` in `arm1.u` (the ARM sends each saved section to one engine through slot 184 and writes no header word); no aligned 0x1fa word anywhere in `arm1.u`, `arm1_kpm.u`, `ge.u` or `ge11.u` data; every engine listing's immediates (the only 0x1fa is 0x6641 in `ctx_load.S`, a copy-loop count, [ge_ops.md](../ucode/ge_ops.md)); the 6.5.5 `sys/kona*.h` headers (no image layout) | the engine program's output stream for `CONTEXT_INIT` and `mges_ContextDeactFinish` (slot 182): decode which word it sends to the output-DMA data port (raster register 0x476) third, as a computed value (for example 0x1f8 + 2 or a token-map read), since the engines are the only remaining writer of the image |

Where this reader stopped (2026-10-29): every function of `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` has an entry in the [function reference](kernel.md#function-reference). Answered and moved: the `HH_TBUS_STATUS` writes ([kernel.md](kernel.md#hh_tbus_status)), the 0x810000 page (the `USER` address bit, [kernel.md](kernel.md#what-a-process-maps)), the DPLEX register names from `irsaudit` ([kernel.md](kernel.md#multi-pipe-dplex-display-port-writes)), what the reset pulse clears ([xg.md](xg.md#pipe-reset-konainitialize-and-the-credit-wait-path)). The 0x9000 low word: the kernel is its only producer (no 0x9000 constant in kpm, libGLcore or the X module `kona.so`; irsaudit's two are in an IMP test), and HIP2's `HH_ODMA_POFF` is 17 bits wide against HIP1's 12, so bits 12-16 exist only on HIP2; what 0x9 selects stays with the host-interface entry above. Since then `rrmSuspend`/`rrmResume` were read branch by branch and the `MESSAGE` valid bit was settled (nothing sets it again), both in [kernel.md](kernel.md#function-reference). Next: the row above, then the smaller unknowns marked in the function reference (copy-in conversion arguments, `streams_timeout` arguments, the `gfxdd_mmap` region attribute words in `KONAattach`).

