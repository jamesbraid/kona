# Open questions

Questions the binaries and sources read so far do not yet answer. No hardware is available, so each one is answered from software or published material: shipped binaries of every IRIX release, the 6.5.5 installed `sys/kona*.h` headers, the IR diagnostics, public drivers and emulators, manuals, and published `hinv`, `gfxinfo`, `irsaudit` and ide transcripts. Running the shipped software under an emulator counts too, labelled as the software's expectation.

Each entry gives the owning file, the routes already tried and the next route to try. When a question is answered, move the answer into the owning header or chapter and delete the entry. When every route is exhausted, the owner labels the fact "unknown: no shipped software or published source depends on it" with the routes tried, and the entry is deleted.

The "Next route" cells below were converted from requests for measurements on a running pipe and still describe that measurement. Each owner rewrites its section into software routes and works through them.

## Geometry engine program

No open entries. **Where this section stopped (2026-10-29, fourth pass).** Answered and moved to [ucode/ge_ops.md](../ucode/ge_ops.md) and [GE.h](../GE.h): how one operation field names two operations (M[10:7] unit 2, M[6:0] unit 1, both live in form 11), the branch conditions' false sides from production handlers that need them (the low flag nibble is unit 1's, not the integer one's), the conditions 0x10, 0x11, 0x14 and 0x15 by their targets, and the input operands (word k is source A = 0x1f, D = k, matched against the host word counts). Labelled unknown with routes: the fourth flag condition (no production use), unit-2 code 0x0f, the pixel-loop exit counter, and how the engine advances its input pointer. The 13 unreached module heads stay labelled unknown with routes in ucode/ge_handlers.md.

## Geometry engine routines

Every `ge.u` label and `geif.u` slot has its own entry in [ucode/ge_handlers.md](../ucode/ge_handlers.md): placement, what reaches it, a role line, and what its words do in the field readings of [ucode/ge_ops.md](../ucode/ge_ops.md). The entries are only as good as those readings; the questions below would sharpen them.

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| What the unit-1 operations the diagnostic test does not fix compute, the most common being 0x6df (104 handler uses), 0x6f1 (98) and 0x6dd (85) | `ucode/ge_ops.md` | the 172 expected words of `ge_inst.s`; the per-label operation counts | read the pixel-path packing loops (`mmo_ExtractL12A4`, `mMerge8_16C`, `mmo_DecompressZ16`), where these codes sit next to field masks such as 0xfff and 0xffff0000, and fix shift amounts and directions from the masks |
| Whether a transfer to address 0 outside condition group 31 is a return | `ucode/ge_isa.md` | the class counts in [ge_handlers.md](../ucode/ge_handlers.md#how-to-read-the-entries) (group-0 transfers go only to named routines; groups 4, 5 and 7 to address 0 sit mostly in subroutines) and the call from `mgeb_LightSpotCutAng` into `mSinCos` | find a link-register or return-address field among the decoded bits of the group-0 words, and check every caller continues after its call |
| Whether every word in the diagnostic's output-instruction form leaves the engine in production code | `ucode/ge_ops.md` | form-10 and form-12 counts per label; `mMatrixTransposeWW` holds eleven | compare the B field of those words with the register numbers their neighbours read back |
| What the form-5 stores to engine addresses outside 0x1f4-0x1f8 reach (0xc9-0xd7 in `mgesi_ClearVertex`, 0x161-0x169 elsewhere) | `ucode/ge_ops.md` | the store counts per label | match the addresses with the loads of the drawing modules that run after the handler |

**Where this pass stopped** (2026-10-29). Every row of `ge.u` and `geif.u` in [inventory/ucode.tsv](inventory/ucode.tsv) is understood. Local labels (loop heads, epilogues) carry no role line of their own; their entry names the routine they sit in. 97 label rows cite a mention in another label's entry, where that label is named as a transfer target or address constant, because that entry comes first in the file. The textport image has no inventory rows, and its 92 unnamed functions in [ucode/tport.s](../ucode/tport.s) remain unread one by one.

## XG (Xtalk widget)

No open questions. The reset values of the command water marks in `XG_HI_LO_WATER` and of the other XG registers are labelled unknown with the routes tried in [XG.h](../XG.h) and [xg.md](xg.md#reset-kona_reset_adaptor); what the `HH_RESET` pulse clears is labelled the same way in [xg.md](xg.md#pipe-reset-konainitialize-and-the-credit-wait-path).

## Host interface (HIP)

No open entries.

## ARM firmware

Routes already tried: `arm1.u` (6.5.30m, the whole image disassembled with its 1682 symbols), `arm1_kpm.u`, `kpm`, `libGLcore` N32, `kona.so` and `irsaudit`. Answers live in [ucode/arm1.md](../ucode/arm1.md) and [ucode/arm1_firmware.md](../ucode/arm1_firmware.md).

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| `libGLcore.so` (6.5.30m, IP27KONA32) has no store at displacement 0x1fe0, its three 8160-byte stores are into a work record in `__glim_SubdivPatchSGIX` | the kernel's and `libGLcore`'s token-as-data emitters for a constant 0xff word; run the X server under an emulator and see whether a model that dispatches the token hangs |

**Where this pass stopped** (2026-10-29). Answered and moved out: handler-table indexes 19-21 (nothing writes or reads them; the commands that land there are geometry entries, [ucode/arm1.md](../ucode/arm1.md#hardware-routed-tokens-from-command-number-to-engine-handler)), descriptors 0x44000020-0x44400020 (distributor registers 0x220-0x222) and `dgFetal` ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md#start-up)). Still open: `WG_FLUSH`.

## Raster and texture boards (RM, TM)

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Texel and pixel data formats on the raster bus (bit layout of the mode-2 and mode-3 words per bus format code) | `docs/rm.md`, `docs/opengl.md` | the firmware's format tables give the bus format code per texel format (docs/ge.md, "The texel format id"); the vector files hold the words but not their source images; `irsaudit` texture tests check CRCs only | the engine's pixel-out modules (`mpixout.S`, `munpack.S`, `mpixelSetup.S` listings), reading which bus-output address and shift each format code selects; if they do not separate the layout, label unknown with these routes |
| What each pass of `mges_ContextReloadFromBEF`'s 89-word loop puts on the bus besides the stepped index | `docs/rm.md` | the listing (count, base, mask and step read) | the loop body at 0x6744-0x6752 in source-line order, now that the operation codes are known |

**Where this section stopped (2026-10-29, fourth pass).** Answered and moved to docs/rm.md: the select word (it is the shadow bit mask, bus index 7 `BEF_REGSHADOW_BMASK`, from `mgesi_BshRegisterWrite`), which `tf` chips answer `TFP_` and `TFT_` (all four, through `pg` and `tg`, from the netlists, the `tf1.tcbist` RAM list and `pxid_to_tfnum`), the shadow RAM's 256 slots from `irsaudit` `TEST_befshadow`. Labelled unknown with routes: whether the back-end chip rewrites the top half, whether the mask limits the raster chip's own register, the per-chip decode of combined indexes, register and memory contents after reset (the BIST files hold no register state), the internal widths (every texture and raster test compares CRCs, none models pixels), slots 0x00-0x0e and the `arm_slop` base. Still open: the two rows above.

## Display generator (DG)

**Where this section stopped (2026-10-29, second pass).** Answered and moved to the owners: the LoadFormat words 1, 19, 25-27, 275-278 and 295-302 and the clock-parameter word layout from the X module's channel loader, genlock code and PLL solver ([dg.md](dg.md#the-loadformat-request-383-words), [DG.h](../DG.h)); the combination fields `HSync`, `SyncComponent`, `TriLevelSyncEnable`, `SetupEnable`, `VbobSyncSource` and the frame-detection fields through the channel loader and the genlock parameters ([dg.md](dg.md#loading-a-combination-channel), [ucode/dg.md](../ucode/dg.md)); and the X module's 35 display functions and 18 `vfmt*` functions ([opengl.md](opengl.md#display-functions-cursor-records-display-ids-colour-maps-gamma)). Labelled unknown with routes: `hwd_mode` bits 2-4, what the clock chip does with each PLL code, LoadFormat words 299-300, `SyncSource`, `SyncMethod`, `HalfLineInterp`, `PFDRegularLines`, `PFDValidTable` and genlock words 1-6 and 12-15. The display-id, colour-map and cursor functions that were next (`nfbInitVisDIDs`, `nfbSetDidFlags`, `cmapDID`, `SetDIDMode`, the `nfb*HWColormap` set, `nfbRealizeCursor`, `konBlankScreen`) are in [opengl.md](opengl.md#frame-buffer-layer-hardware-colour-maps-display-id-state-cursor-and-blanking), with four small allocator functions and `SetReservedID`. Open: what sets display-id flag bit 0x1 (no store in `kona.so`; the other three were compared word for word), the screen-private hooks at +32, +40, +44, +72 and +92 that the allocator calls, and the helpers at 0x462580, 0x4b3280, 0x5607b0 and 0x5607d0 that the steal and colour-map-id functions use ([allocator](opengl.md#the-display-id-allocator)). Route: find where the screen private is filled in and trace the hooks from there.

## Geometry distributor

No open entries. **Where this section stopped (2026-10-29, fourth pass).** The `irsaudit` sequencer and stress tests are read into [ucode/ged.md](../ucode/ged.md#the-diagnostics-sequencer-and-stress-tests): the register/pixel form's transfer bit, the programs `gedSequencer` and `gedStressTd` build, the registers each test loads and the pointer and data pairs among them. Every such test is checked only by CRC signatures against `irsaudit.*.gold`, so the state-or-token entry choice, transfer ops 1, 3, 5, 6 and 7, the control fields, the small-constant registers and the roles of 0x280-0x2b0 are labelled unknown there with the routes tried.

## Kernel driver

| Question | Owner | Routes tried | Next route |
|---|---|---|---|
| Which pipe program writes the activate token into word 2 of a saved context header | `docs/kernel.md`, `docs/ge.md` | every host binary (no 0x1fa store); the kernel archives' data (the two aligned 0x1fa words in `kona.a` are symbol-table entries of `kona_flow.o` and `kona_mem.o`, not data); `arm_context_deactivate`, `deactivate_arm` and `deact_section` in `arm1.u` (the ARM sends each saved section to one engine through slot 184 and writes no header word); no aligned 0x1fa word anywhere in `arm1.u`, `arm1_kpm.u`, `ge.u` or `ge11.u` data; every engine listing's immediates (the only 0x1fa is 0x6641 in `ctx_load.S`, a copy-loop count, [ge_ops.md](../ucode/ge_ops.md)); the 6.5.5 `sys/kona*.h` headers (no image layout) | the engine program's output stream for `CONTEXT_INIT` and `mges_ContextDeactFinish` (slot 182): decode which word it sends to the output-DMA data port (raster register 0x476) third, as a computed value (for example 0x1f8 + 2 or a token-map read), since the engines are the only remaining writer of the image |

Where this reader stopped (2026-10-29): every function of `kona.a`, `gfx.o`, `rrm.o` and `gfxs.a` has an entry in the [function reference](kernel.md#function-reference). Answered and moved: the `HH_TBUS_STATUS` writes ([kernel.md](kernel.md#hh_tbus_status)), the 0x810000 page (the `USER` address bit, [kernel.md](kernel.md#what-a-process-maps)), the DPLEX register names from `irsaudit` ([kernel.md](kernel.md#multi-pipe-dplex-display-port-writes)), what the reset pulse clears ([xg.md](xg.md#pipe-reset-konainitialize-and-the-credit-wait-path)). The 0x9000 low word: the kernel is its only producer (no 0x9000 constant in kpm, libGLcore or the X module `kona.so`; irsaudit's two are in an IMP test), and HIP2's `HH_ODMA_POFF` is 17 bits wide against HIP1's 12, so bits 12-16 exist only on HIP2; what 0x9 selects stays with the host-interface entry above. Since then `rrmSuspend`/`rrmResume` were read branch by branch and the `MESSAGE` valid bit was settled (nothing sets it again), both in [kernel.md](kernel.md#function-reference). Next: the row above, then the smaller unknowns marked in the function reference (copy-in conversion arguments, `streams_timeout` arguments, the `gfxdd_mmap` region attribute words in `KONAattach`).

## Where work stopped

2026-10-29, backfill reader (functions, ioctls, host-interface registers): every ioctl row is understood (one labelled, cited row per number in [kernel.md](kernel.md#ioctl-reference)); the host-interface output-DMA, scan-controller and ARM-stall registers each have their own entry ([hip.md](hip.md#output-dma-registers-as-the-host-programs-them)). The function rows are grouped by role and source file ([kpm.md](kpm.md), [irsaudit.md](irsaudit.md), [libglcore.md](libglcore.md), [libgl.md](libgl.md), [x-server-glx.md](x-server-glx.md), [kona-ddx.md](kona-ddx.md), [setup-tools.md](setup-tools.md), [irisgl.md](irisgl.md), [xserver.md](xserver.md), [libfm.md](libfm.md)), which the inventory grades `named-only` because each entry names many functions. Next, in order: one entry per function for the hardware-facing groups (the `__glkonim_*` and `__glkonlc_*` senders and the `kon_*` texture and display-list memory code in libGLcore, the `kon*` functions of `kona.so`, the `Kon*` command helpers of `setmon`), then the remaining host-interface registers that are `named-only` (`HH_SWITCH`, `HH_NOP`, `HH_INTR_ACK`, the `INTR_ENABLE` and `INTR_STATUS` pairs, `HH_ARM_STATUS`, `HH_ARM_STEP`, the FCI and GV error and overlap registers, `HH_TFIFO_HI`, `HIP2_HH_IDMA_HI`, `HH_GFIFO_WAIT`), then the raster registers. The nine combination files whose names contain `@` (for example `2@1280x1024_60.cmb`) and the extensionless tools cannot be matched by the file-name pattern of the shared inventory script, so their `binaries` rows stay undocumented until the script accepts them.
