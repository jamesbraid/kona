# Geometry-engine labels: where each sits and what reaches it

Every label `ge_symbols` gives for the geometry-engine program (IRIX 6.5.30m, 1100 labels at 1025 addresses), grouped by the source module the `ge.u` line table names, with the module's role and, for each label, the ways into it that the shipped programs show. The cross-reference is [ge_xref.tsv](ge_xref.tsv), written by [scripts/ge_catalogue.py](../scripts/ge_catalogue.py) from `ge_symbols`, `geif.u`, `arm1.u`, the listings of [scripts/ge_disasm.py](../scripts/ge_disasm.py) and the ARM tables of [arm1.md](arm1.md). The module roles are in [ge_modules.tsv](ge_modules.tsv). How a command reaches a handler is in [arm1.md](arm1.md#how-a-command-reaches-a-geometry-engine-handler); the instruction set is in [ge_isa.md](ge_isa.md) and [ge_ops.md](ge_ops.md).

## How to read the tables

**Established** (counted from the files):

- **Line** is the source line of the label's first instruction, from the `ge.u` line table; **Words** counts instructions from the label to the next label of the same listing (labels at the same address share the count).
- **geif slot k** means `geif.u` entry 2k+1 holds the label's address, so the ARM's copy `gepc` names it ([ge.md](ge.md#command-dispatch-table-geifu)). 348 of the 1100 labels sit at a slot address.
- **ARM** lists the `arm1.u` functions whose code loads one of those slots, either from `gepc` through a base loaded from the literal pool or from the packed copy at r8 + 0x48. The scan is linear and per function, the same patterns as `scripts/arm1_handlers.py`; a slot reached through a register computed elsewhere is not seen.
- **Tokens** are the host tokens whose ARM handler is one of those functions ([arm1_handlers.tsv](arm1_handlers.tsv)).
- **Distributor** gives the index of the 64-entry handler table `init_ged` fills ([ged_bound_table.tsv](ged_bound_table.tsv)) or says the slot is in a word of the distributor program that the ARM relocates at load ([ged_relocs.tsv](ged_relocs.tsv)).
- **Transfers in** lists the labels whose code holds a decoded transfer to this address in the listings. Transfers to `HereWeGo` (address 0) are left out: they are how 31 handlers end. **Inferred:** the relative-target reading of [ge_isa.md](ge_isa.md) is right for these; a wrong decode would add a false entry or miss a true one.
- **Inside** names the nearest preceding handler or module label in the same source when nothing else reaches a label. **Inferred:** such a label is a loop head, a branch target or a second entry of that routine; its role follows from the routine's.
- **Address loaded as a constant** lists the labels whose code loads this label's address as an immediate in a constant-load word (`r215=3` in the listing). 242 labels are reached this way, among them 26 module heads the other columns miss: `mGL_EM_Initialize` and `mGL_CM_Initialize` load the evaluator, transform, colour-clamp, point, line, triangle and dispatch modules (`umo_EvalPolyV`, `mmo_ObjToClipSpace`, `mmo_LiColorClamp`, `mmo_DrawPntPrim`, `mmo_DrawLinPrim`, `mmo_DrawTri`, `mDispatchCentral`); the `Dirty*` modules load the deform, sprite, cull and colour-mask modules; `mgeb_PolygonSetup_*`, `mPolymodeSetup`, `mgebi_PointSize_*` and `mgeb_LineWidth_Aliased` load the primitive modules they select. **Inferred:** the loading code stores the address in engine memory and a later indirect transfer goes through it, which is how the program chains modules; the indirect transfer itself is not decoded.
- `HereWeGo` is the program's first word (address 0), and 31 handlers end by a transfer to it. **Inferred:** it is where the engines start after the ARM sets `EXEC_GO` ([ge.md](ge.md)), since no slot or constant names it and it runs before any command arrives.
- **Unknown entry** marks a label at the head of its module that no slot, ARM load, decoded transfer or address constant reaches. 13 remain: `AA_Response_Max`, `umo_BitmapToFloat`, `umo_BitmapToInt`, `umo_DummyDecompose`, `uWramToCram`, `mDummy`, `mmo_DrawTriPrimPhong`, `minv`, `msqrt`, `misqrt`, `mMatrixTransposeWW`, `mCramToWram` and `mge_ErrNoError`. Routes tried: the `geif.u` slots, every `arm1.u` load of `gepc` and the packed copy, the distributor table and relocations, every decoded transfer target within three words of each address, every immediate of any form in the 129 listings, and a search for the label's first three instructions elsewhere in `ge.u` (only `umo_DummyDecompose` matches another routine, `mmo_DummyDecompose`, and `msqrt`/`misqrt` match each other). **Inferred:** these are unused copies or library routines assembled into the image; unknown: no shipped software or published source depends on how they would be entered.
- **Alias** marks a second name at the same address. 75 addresses carry two names: 49 `mmo_`/`umo_` pairs, 13 `m`/`u` pairs (`mWramToEram` and `uWramToEram`), 12 command-handler pairs (`mgeb_`/`ugeb_`, `mgesi_`/`ugesi_`, `mges_`/`uges_`), and one address with two `mgeb_` names.

**Inferred** from the prefixes and from what reaches each class:

- `mgeb_`, `mges_`, `mgesi_`, `mgebi_` are command handlers: every one of them that has a slot is reached through a slot. What the letters after `mge` distinguish is **unknown**: the destination registers 0x430-0x43c that the sending ARM functions write ([arm1_firmware.md](arm1_firmware.md)) do not separate the classes.
- `mmo_` and `umo_` are modules: routines the ARM chains into a pixel or geometry path by slot (the `Add*` routines of [arm1_firmware.md](arm1_firmware.md)) or that handlers reach by transfer. 116 `mmo_` labels have a slot; of the 87 `umo_` labels 49 are aliases of an `mmo_` label.
- A bare `m` or `u` before a capital (`mMatrixMultCCC`, `uSinCos`) marks a subroutine reached by transfer; only three have a slot (`mSpriteObject`, `mSpriteEye`, `mSpriteAxial`, the sprite modes the ARM selects).
- Lower-case names (`mainloop_mm`, `epilogue_clamp`, `lDE2`, `V3Floop`) are local labels: loop heads, epilogues and branch targets inside the routine above them.
- The `.s` sources (lower case) carry the `u` names and the inner loops (`ueval1D.s`, `uxform.s`, `udrawtri.s`); the `.S` sources carry the command handlers. **Inferred:** two source styles, one for hand-scheduled inner loops and one passed through the C preprocessor; the `ge.u` line table distinguishes the names, nothing else in the media does.

Four short lower-case names are subroutines, not local labels: `minv()`, `msqrt()` and `misqrt()` in math.S (reciprocal, square root and reciprocal square root; **established** that math.S holds the reciprocal seed twice and the reciprocal-square-root seed four times, the seed codes of [ge_ops.md](ge_ops.md)), and `mod()` in mpixout.S, reached from `mgeb_XPolygonStippleRotate` (**inferred:** a remainder for the stipple rotation).

**Unknown:** the meaning of the `m`/`u` pairing beyond "same address"; whether `u` names were once separate entry points.

## Modules

<!-- generated by scripts/ge_catalogue.py below this line -->

### aa.S

Antialiased-line response tables (maximum, step, response), used by the line-width and AA table code. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `AA_Response` | 0x9059 | 133 | 65 | transfers in `mGenerateAALineTable`, `mGenerateAALineTable4`, `mGenerateAALineTable8`, `mmo_DrawAAPntPrim` |
| `AA_Response_Step` | 0x9045 | 264 | 11 | transfers in `mGenerateAALineTable`, `mGenerateAALineTable4`, `mGenerateAALineTable8`, `mmo_DrawAAPntPrim` |
| `AA_Response_Max` | 0x903c | 337 | 2 | unknown entry |

### bitmaptofloat.s

Pixel-path stage expanding bitmap bits to floats, LSB-first and MSB-first loops. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_BitmapToFloat` | 0x25a0 | 56 | 69 | unknown entry |
| `mainloop_b2f_lsb_first` | 0x25e5 | 150 | 20 | inside `umo_BitmapToFloat` |
| `epilogue_b2f_lsb_first` | 0x25f9 | 173 | 39 | transfers in `umo_BitmapToFloat` |
| `b2f_msb_first` | 0x2620 | 219 | 13 | transfers in `umo_BitmapToFloat` |
| `mainloop_b2f_msb_first` | 0x262d | 240 | 21 | inside `umo_BitmapToFloat` |
| `epilogue_b2f_msb_first` | 0x2642 | 264 | 39 | transfers in `b2f_msb_first` |

### bitmaptoint.s

Pixel-path stage expanding bitmap bits to integers, LSB-first and MSB-first loops. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_BitmapToInt` | 0x2669 | 45 | 58 | unknown entry |
| `mainloop_b2i_lsb_first` | 0x26a3 | 126 | 35 | inside `umo_BitmapToInt` |
| `epilogue_b2i_lsb_first` | 0x26c6 | 164 | 49 | transfers in `umo_BitmapToInt` |
| `b2i_msb_first` | 0x26f7 | 218 | 8 | transfers in `umo_BitmapToInt` |
| `mainloop_b2i_msb_first` | 0x26ff | 232 | 35 | inside `umo_BitmapToInt` |
| `epilogue_b2i_msb_first` | 0x2722 | 270 | 49 | transfers in `b2i_msb_first` |

### bootinit.s

Start-up initialisation of engine memories and registers (`MemRegInit`), reached from the entry code. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `MemRegInit` | 0x27cc | 9 | 9 | transfers in `HereWeGo` |

### bootstrap.s

Program entry at address 0 (`HereWeGo`): every even geif.u entry and the 60 unused odd entries point here, and 31 handlers end by jumping to it (ucode/ge_ops.md). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `HereWeGo` | 0x0000 | 20 | 83 | the program's first word (address 0); 31 handlers end by a transfer to it |

### clamp.s

Pixel-path clamp stage, added by AddClamp. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Clamp` | 0x1633 | 43 | 100 | geif slot 254; ARM `AddClamp` |
| `umo_Clamp` | 0x1633 | 43 | 100 | alias of `mmo_Clamp` |
| `mainloop_clamp` | 0x1697 | 167 | 29 | inside `mmo_Clamp` |
| `epilogue_clamp` | 0x16b4 | 199 | 51 | transfers in `mmo_Clamp` |

### clear.S

Clear commands: colour, index, depth, accumulation and overlay clears, sent by arm_clear and its helpers. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_ClearColor` | 0x91ce | 43 | 21 | geif slot 336; tokens `HP_CLEAR`; ARM `arm_clear` |
| `mgesi_ClearLA16` | 0x91b6 | 97 | 24 | geif slot 402; tokens `HP_CLEAR`; ARM `arm_clear` |
| `mgesi_ClearIndex` | 0x91a9 | 166 | 13 | geif slot 346; tokens `HP_CLEAR`; ARM `arm_clear` |
| `mgesi_OverlayClearColor` | 0x918f | 210 | 26 | geif slot 343; ARM `overlay_clear` |
| `mgesi_OverlayClearIndex` | 0x9156 | 275 | 36 | geif slot 344; ARM `overlay_clear` |
| `mgesi_ClearDepth32` | 0x9138 | 363 | 29 | geif slot 345; tokens `HP_CLEARDEPTH`; ARM `arm_cleardepth`, `depth_pop` |
| `mgesi_ClearAccum` | 0x911b | 424 | 29 | geif slot 347; ARM `accum_clear` |
| `mgesi_ClearAccum32` | 0x90f8 | 487 | 35 | geif slot 433; ARM `accum_clear32` |
| `mgesi_ClearAccumWord` | 0x90ea | 551 | 14 | geif slot 348; ARM `accum_clear` |
| `mgesi_ClearAccumWord32` | 0x90c4 | 627 | 26 | geif slot 432; ARM `accum_clear32` |
| `mgesi_ClearVertex` | 0x90a3 | 658 | 31 | geif slot 349; ARM `masked_clear` |

### clip.S

Triangle and polygon clipping against the user planes and the view frustum. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mClipPolyToPlane` | 0xefb5 | 93 | 229 | transfers in `mClipTriUserAndFrustum` |
| `mEyeToClipAfterUserClip` | 0xf182 | 712 | 77 | transfers in `mClipLinUserAndFrustum`, `mClipTriUserAndFrustum` |
| `mSetClipVertsFree` | 0xf20a | 860 | 16 | transfers in `mClipTriUserAndFrustum` |
| `mPerTriClipFlagsFrustum` | 0xef7e | 924 | 29 | transfers in `mClipTriUserAndFrustum` |
| `mClipTriUserAndFrustum` | 0xed52 | 1080 | 218 | address loaded as a constant in `mGL_EM_Initialize`, `mmo_DecomposePolygon`, `mmo_DecomposeQuadStrip`, `mmo_DecomposeQuads`, `mmo_DecomposeSimpleTriangles`, `mmo_DecomposeTriangleFan` and 8 more |
| `mClipTriFlushSR` | 0xf14f | 1603 | 42 | transfers in `mClipTriUserAndFrustum` |
| `mClipTriFlush` | 0xf1dc | 1700 | 36 | transfers in `mClipTriUserAndFrustum` |

### colortable.S

Colour-table and pixel-map lookup stages and their upload and download. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_ColorTableSetup` | 0x422e | 80 | 13 | geif slot 128; ARM `SetupGE_ColorTable` |
| `mmo_Lutout` | 0x41fb | 110 | 26 | geif slot 293; ARM `AddLutOutput` |
| `mLutoutDone` | 0x41e0 | 151 | 8 | transfers in `mmo_LutoutI`, `mmo_LutoutLA`, `mmo_LutoutRGBA` |
| `mmo_LutoutRGBA` | 0x41b5 | 174 | 25 | geif slot 294; ARM `U_uLutOutput` |
| `mmo_LutoutLA` | 0x418e | 208 | 19 | geif slot 295; ARM `U_uLutOutput` |
| `mmo_LutoutI` | 0x416c | 239 | 13 | geif slot 296; ARM `U_uLutOutput` |
| `mgeb_LutRamp3` | 0x4074 | 302 | 192 | geif slot 157; ARM `PixEndColorTable` |
| `mgeb_LutRamp1` | 0x4022 | 379 | 41 | geif slot 156; ARM `PixEndColorTable` |
| `mgeb_PixMapOutputI` | 0x3fd8 | 456 | 39 | geif slot 160 |
| `mgeb_PixMapOutputRGBA` | 0x3f87 | 520 | 43 | geif slot 161; ARM `do_pixelmap` |
| `mgesi_TLutDownload` | 0x3f52 | 589 | 32 | geif slot 226; ARM `PixValidateTexColorTable` |
| `mTLutDownloadDone` | 0x3f49 | 628 | 6 | transfers in `mmo_TLutDownloadI`, `mmo_TLutDownloadLA`, `mmo_TLutDownloadRGBA` |
| `mmo_TLutDownloadRGBA` | 0x3f10 | 647 | 38 | geif slot 330; ARM `PixValidateTexColorTable` |
| `mmo_TLutDownloadLA` | 0x3edb | 699 | 39 | geif slot 331; ARM `PixValidateTexColorTable` |
| `mmo_TLutDownloadI` | 0x3ea8 | 744 | 33 | geif slot 332; ARM `PixValidateTexColorTable` |
| `mmo_LUT16_big` | 0x3c18 | 809 | 320 | geif slot 290 |
| `mmo_LUT_I2C_16` | 0x3b81 | 958 | 101 | geif slot 291; ARM `AddIndexLut` |
| `mmo_LUT_I2I_16` | 0x3aae | 1071 | 113 | geif slot 292; ARM `AddIndexLut` |
| `mgesi_LutUpload` | 0x3a6d | 1213 | 47 | geif slot 210; ARM `do_getcolortable` |

### conv3x3.s

General 3x3 convolution pixel stage. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_GeneralConvolve3x3_124` | 0x20a3 | 127 | 93 | geif slot 283 |
| `umo_GeneralConvolve3x3_124` | 0x20a3 | 127 | 93 | alias of `mmo_GeneralConvolve3x3_124` |
| `normal_path_conv3` | 0x2100 | 246 | 74 | transfers in `mmo_GeneralConvolve3x3_124`; address loaded as a constant in `mValidateTexenvMode`, `mgebi_TexEnv` |
| `mainloop_conv3` | 0x214a | 345 | 37 | inside `mmo_GeneralConvolve3x3_124` |
| `epilogue_conv3` | 0x216f | 393 | 26 | transfers in `normal_path_conv3` |

### conv5x5.s

General 5x5 convolution pixel stage. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_GeneralConvolve5x5_124` | 0x2189 | 110 | 130 | geif slot 284 |
| `umo_GeneralConvolve5x5_124` | 0x2189 | 110 | 130 | alias of `mmo_GeneralConvolve5x5_124` |
| `normal_path_conv5` | 0x220b | 275 | 90 | transfers in `mmo_GeneralConvolve5x5_124` |
| `mainloop_conv5` | 0x2265 | 399 | 109 | inside `mmo_GeneralConvolve5x5_124` |
| `epilogue_conv5` | 0x22d2 | 550 | 91 | transfers in `normal_path_conv5` |

### conv7x7.s

General 7x7 convolution pixel stage. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_GeneralConvolve7x7_124` | 0x232d | 116 | 143 | geif slot 285 |
| `umo_GeneralConvolve7x7_124` | 0x232d | 116 | 143 | alias of `mmo_GeneralConvolve7x7_124` |
| `normal_path_conv7` | 0x23bc | 295 | 123 | transfers in `mmo_GeneralConvolve7x7_124` |
| `mainloop_conv7` | 0x2437 | 456 | 217 | inside `mmo_GeneralConvolve7x7_124` |
| `epilogue_conv7` | 0x2510 | 734 | 144 | transfers in `normal_path_conv7` |

### CRAMBlockLoad.s

Block load of coefficient memory (CRAM) from the input stream. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_CRAMBlockLoad` | 0x15f9 | 50 | 26 | geif slot 127 |
| `ugeb_CRAMBlockLoad` | 0x15f9 | 50 | 26 | alias of `mgeb_CRAMBlockLoad` |
| `mainloop_cbl` | 0x1613 | 103 | 9 | inside `mgeb_CRAMBlockLoad` |
| `post_loop_cbl` | 0x161c | 118 | 7 | inside `mgeb_CRAMBlockLoad` |
| `epilogue_cbl` | 0x1623 | 148 | 16 | transfers in `mgeb_CRAMBlockLoad` |

### ctx_deact.S

Context save (deactivate and mop-up): engine state written out section by section for the ARM's deactivate code. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mges_ContextDeactivate` | 0x68da | 217 | 240 | geif slot 186; ARM `deactivate_ge` |
| `mges_ContextDeactGED` | 0x68ba | 585 | 21 | geif slot 183; tokens `HP_CONTEXT_DEACTIVATE`; ARM `arm_context_deactivate` |
| `mgeb_ContextDeactReconfigureFifo` | 0x6886 | 633 | 49 | geif slot 185; tokens `HP_CONTEXT_DEACTIVATE`, `HP_CONTEXT_MOPUP`; ARM `arm_context_deactivate`, `arm_context_mopup` |
| `mges_ContextDeactSection` | 0x6866 | 699 | 20 | geif slot 184; ARM `deact_section` |
| `mges_ContextDeactStoreValue` | 0x6859 | 752 | 6 | geif slot 181; ARM `deactivate_arm`, `deactivate_ged_ge` |
| `mges_ContextDeactFinish` | 0x67d0 | 784 | 125 | geif slot 182; tokens `HP_CONTEXT_DEACTIVATE`; ARM `arm_context_deactivate` |

### ctx_load.S

Context load and destroy: registers, flag registers, WRAM, ERAM, CRAM and the input FIFO restored, and reload from the BEF shadow. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mges_ContextLoadODMA` | 0x6795 | 145 | 20 | geif slot 190; tokens `HP_CONTEXT_LOAD`; ARM `arm_context_load` |
| `mges_ContextLoadBEF` | 0x6760 | 208 | 41 | geif slot 187; tokens `HP_CONTEXT_LOAD`; ARM `arm_context_load`, `init_befshadow` |
| `mges_ContextReloadFromBEF` | 0x6730 | 297 | 40 | geif slot 188; ARM `reset_imps` |
| `mgeb_ContextLoadCram` | 0x671e | 387 | 9 | geif slot 130; tokens `HP_CONTEXT_LOAD`; ARM `arm_context_load` |
| `mgeb_ContextLoadEram` | 0x670c | 419 | 9 | geif slot 131; tokens `HP_CONTEXT_INIT`, `HP_X_INIT`; ARM `arm_context_init`, `arm_x_init`, `init_geBefAddrs`, `load_broadcast_geEram` |
| `mgeb_ContextLoadWram` | 0x66ff | 437 | 6 | geif slot 134; tokens `HP_CONTEXT_LOAD`; ARM `arm_context_load` |
| `mgeb_ContextLoadFlagRegs` | 0x66ed | 457 | 10 | geif slot 133; tokens `HP_CONTEXT_ACTIVATE`; ARM `arm_context_activate` |
| `mgeb_ContextLoadRegs` | 0x6697 | 484 | 67 | geif slot 132; ARM `activate_geregs` |
| `mges_ContextLoadFifo` | 0x668a | 564 | 5 | geif slot 189; ARM `activate_gefifo` |
| `mgeb_ContextDestroy` | 0x6622 | 590 | 90 | geif slot 129; tokens `HP_CONTEXT_DESTROY`; ARM `arm_context_destroy` |
| `mLiUpdateMtrlState` | 0x67a9 | 670 | 27 | transfers in `mgeb_ContextLoadRegs` |

### debug.S

Debug monitor: number printing, drain, roll call and the slop command. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_DebugDrain` | 0x4a9c | 148 | 6 | geif slot 350; tokens `HP_SLOP`; ARM `arm_slop` |
| `mmo_DebugGE` | 0x4a8d | 217 | 4 | geif slot 281 |
| `mPrintf` | 0x4aa9 | 294 | 270 | transfers in `MSPoint_Print_Scratch_Tables`, `mgesi_PipeSetup`, `mgesi_PrintNum` |
| `mgesi_PrintNum` | 0x4961 | 548 | 191 | geif slot 351; tokens `HP_GEROLLCALL`; ARM `arm_gerollcall` |

### deform.S

Deformation map loading and the deformation query. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DirtyDeformModule` | 0x48d8 | 50 | 22 | address loaded as a constant in `mgeb_DeformationMap3_1`, `mmo_DirtyPrePathModule` |
| `mgeb_DeformationMap3_1` | 0x482e | 129 | 119 | geif slot 407; ARM `init_ged`; distributor table 29 |
| `mgeb_LoadIdentityDeformation` | 0x4806 | 344 | 23 | geif slot 408; ARM `init_ged`; distributor table 30 |
| `mgesi_GetDeformation` | 0x479b | 447 | 74 | geif slot 409; tokens `HP_GET_DEFORMATION`; ARM `arm_get_deformation` |
| `mgesi_GetDeformationsMask` | 0x4786 | 559 | 17 | geif slot 410; ARM `get_deformations_mask` |

### drawlin.S

Line primitive output: plain, stippled, multisample and line-list forms. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DrawLinPrim` | 0x8db0 | 111 | 14 | address loaded as a constant in `mGL_CM_Initialize`, `mgeb_LineWidth_Aliased`, `mgeb_LineWidth_AlphaAA` |
| `mDrawLinPrim` | 0x892b | 165 | 136 | transfers in `mmo_DrawLinPrim` |
| `mDrawLinList` | 0x89bc | 318 | 105 | transfers in `mmo_DrawLinPrim` |
| `mmo_DrawMSLinPrim` | 0x8a2d | 482 | 211 | address loaded as a constant in `mgeb_LineWidth_MS` |
| `mmo_DrawLinStipplePrim` | 0x8b08 | 806 | 516 | address loaded as a constant in `mgeb_LineWidth_Aliased`, `mgeb_LineWidth_AlphaAA`, `mgeb_LineWidth_MS` |

### drawmstpnt.S

Multisample point output with distance attenuation and the sample tables. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `SaveClipState` | 0x8123 | 269 | 9 | transfers in `mmo_DrawMSDistAttTablePntPrim`, `mmo_DrawMSTablePntPrim`, `mmo_DrawMSTablePntPrim1` |
| `RestoreClipState` | 0x810b | 285 | 9 | transfers in `mmo_DrawMSDistAttTablePntPrim`, `mmo_DrawMSTablePntPrim`, `mmo_DrawMSTablePntPrim1` |
| `mmo_DrawMSTablePntPrim` | 0x7e6f | 662 | 450 | address loaded as a constant in `mgebi_PointSize_MS` |
| `mmo_DrawMSTablePntPrim1` | 0x7c28 | 1382 | 384 | address loaded as a constant in `mgebi_PointSize_MS` |
| `DrawMSTablePnt` | 0x7a54 | 3079 | 268 | transfers in `mmo_DrawMSDistAttTablePntPrim` |
| `DrawMSTFanPnt` | 0x79a3 | 4019 | 144 | transfers in `mmo_DrawMSDistAttTablePntPrim` |
| `mmo_DrawMSDistAttTablePntPrim` | 0x7855 | 4198 | 138 | address loaded as a constant in `mgebi_PointSize_MS` |

### drawpnt.S

Point primitive output: plain, antialiased, multisample and distance-attenuated. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DrawPntPrim` | 0x8465 | 199 | 79 | address loaded as a constant in `mGL_CM_Initialize`, `mgebi_PointSize_Aliased` |
| `mmo_DrawDistAttPntPrim` | 0x8357 | 362 | 214 | address loaded as a constant in `mgebi_PointSize_Aliased` |
| `mmo_DrawAAPntPrim` | 0x84be | 768 | 219 | address loaded as a constant in `mgebi_PointSize_AlphaAA` |
| `mmo_DrawMSPntPrim` | 0x82a7 | 1264 | 154 | address loaded as a constant in `mgebi_PointSize_MS` |
| `mmo_DrawMSDistAttPntPrim` | 0x813b | 1474 | 283 | address loaded as a constant in `mgebi_PointSize_MS` |

### drawtri.S

Triangle output with polygon offset. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DrawTriPrimOffset` | 0x8dc0 | 127 | 224 | address loaded as a constant in `mgeb_PolygonSetup_Render` |

### entry.S

Vertex-entry points the distributor jumps to: raster position, points and the line-strip vertex save and copy forms. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_TriangleStrip` | 0xb699 | 81 | 28 | geif slot 234; distributor relocated word |
| `mgesi_TriangleStripSave` | 0xb673 | 105 | 31 | geif slot 237; distributor relocated word |
| `mgesi_TriangleStripRestore` | 0xb64d | 131 | 31 | geif slot 235; distributor relocated word |
| `mgesi_TriangleStripRestoreSave` | 0xb627 | 158 | 31 | geif slot 236; distributor relocated word |
| `mgesi_TriangleStripWithSwapOdd` | 0xb60e | 184 | 25 | geif slot 418; distributor relocated word |
| `mgesi_TriangleStripSaveWithSwapOdd` | 0xb5f6 | 207 | 24 | geif slot 415; distributor relocated word |
| `mgesi_TriangleStripRestoreWithSwapOdd` | 0xb5de | 230 | 24 | geif slot 416; distributor relocated word |
| `mgesi_TriangleStripRestoreSaveWithSwapOdd` | 0xb5c6 | 254 | 24 | geif slot 417; distributor relocated word |
| `mgesi_Triangles` | 0xb5ae | 281 | 24 | geif slot 238; distributor relocated word |
| `mgesi_QuadStrip` | 0xb596 | 304 | 24 | geif slot 217; distributor relocated word |
| `mgesi_QuadStripSave` | 0xb57b | 330 | 27 | geif slot 220; distributor relocated word |
| `mgesi_QuadStripRestore` | 0xb560 | 358 | 27 | geif slot 218; distributor relocated word |
| `mgesi_QuadStripRestoreSave` | 0xb545 | 387 | 27 | geif slot 219; distributor relocated word |
| `mgesi_Quads` | 0xb531 | 419 | 20 | geif slot 221; distributor relocated word |
| `mgeb_SetTfanPolyMode` | 0xb51f | 445 | 9 | geif slot 171; distributor relocated word |
| `mgesi_TfanPoly` | 0xb4f1 | 476 | 36 | geif slot 228; distributor relocated word |
| `mgesi_TfanPolySave` | 0xb4bd | 526 | 45 | geif slot 233; distributor relocated word |
| `mgesi_TfanPolyRestore` | 0xb48b | 581 | 39 | geif slot 230; distributor relocated word |
| `mgesi_TfanPolyRestoreEdge` | 0xb430 | 635 | 72 | geif slot 338; distributor relocated word |
| `mgesi_TfanPolyRestoreSave` | 0xb3fc | 728 | 45 | geif slot 232; distributor relocated word |
| `mgesi_TfanPolyEnd` | 0xb3cf | 778 | 33 | geif slot 229; distributor relocated word |
| `mgesi_TfanPolyRestoreEnd` | 0xb39e | 820 | 36 | geif slot 231; distributor relocated word |
| `mgesi_LineStrip` | 0xb38a | 865 | 20 | geif slot 203; distributor relocated word |
| `mgesi_LineStripSaveV0` | 0xb372 | 888 | 24 | geif slot 208; distributor relocated word |
| `mgesi_LineStripSaveAndIgnoreV0` | 0xb35a | 914 | 24 | geif slot 207; distributor relocated word |
| `mgesi_LineStripCopyV0` | 0xb342 | 939 | 24 | geif slot 205; distributor relocated word |
| `mgesi_LineStripCopyAndIgnoreV0` | 0xb32a | 965 | 24 | geif slot 204; distributor relocated word |
| `mgesi_LineStripRestoreV0` | 0xb312 | 990 | 24 | geif slot 206; distributor relocated word |
| `mgesi_Points` | 0xb2fe | 1019 | 20 | geif slot 214; distributor relocated word |
| `mgeb_RasterPos` | 0xb2d2 | 1044 | 42 | geif slot 169; distributor relocated word |

### ERAMBlockClear.s

Block clear of external memory (ERAM). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_ERAMBlockClear` | 0x16e7 | 43 | 36 | geif slot 136 |
| `ugeb_ERAMBlockClear` | 0x16e7 | 43 | 36 | alias of `mgeb_ERAMBlockClear` |
| `mainloop_ebc` | 0x170b | 93 | 9 | inside `mgeb_ERAMBlockClear` |
| `epilogue_ebc` | 0x1714 | 118 | 10 | transfers in `mgeb_ERAMBlockClear` |

### err.S

GL error codes recorded on the engine (invalid enum, value, operation, stack overflow and underflow). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mge_ErrNoError` | 0xd4b9 | 32 | 10 | unknown entry |
| `mErrInvalidEnum` | 0xd520 | 54 | 9 | transfers in `mgeb_Fogf`, `mgeb_Material`, `mgebi_TexEnv` |
| `mErrInvalidValue` | 0xd50a | 77 | 9 | transfers in `mFrustum`, `mLiPushMtrlShin`, `mLiSetMShininess`, `mOrtho`, `mgeb_LightSpotCutAng`, `mgeb_LightSpotExp` |
| `mErrInvalidOperation` | 0xd4f4 | 100 | 9 | transfers in `mgeb_LoadName` |
| `mErrStackOverflow` | 0xd4de | 123 | 9 | transfers in `mgeb_PushMatrix_Color`, `mgeb_PushMatrix_Modelview`, `mgeb_PushMatrix_Projection`, `mgeb_PushMatrix_Texture`, `mgeb_PushName` |
| `mErrStackUnderflow` | 0xd4c8 | 146 | 9 | transfers in `mgeb_PopMatrix_Color`, `mgeb_PopMatrix_Modelview`, `mgeb_PopMatrix_Projection`, `mgeb_PopMatrix_Texture`, `mgeb_PopName` |

### eval.s

Evaluator polynomial inner loops of general order in U and V, with derivatives. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_EvalPolyV` | 0x0586 | 186 | 19 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLYVUORDERLOOP` | 0x0599 | 206 | 20 | transfers in `lPOLYVVORDERLOOP` |
| `lPOLYVVORDERLOOP` | 0x05ad | 227 | 29 | inside `umo_EvalPolyV` |
| `umo_EvalPolyU` | 0x05ca | 290 | 37 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLYUUORDERLOOP` | 0x05ef | 328 | 26 | inside `umo_EvalPolyU` |
| `umo_EvalPolyVdV` | 0x0609 | 394 | 28 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLYVDVUORDERLOOP` | 0x0625 | 423 | 16 | transfers in `lPOLYVDVVORDERLOOP` |
| `lPOLYVDVVORDERLOOP` | 0x0635 | 440 | 41 | inside `umo_EvalPolyVdV` |
| `umo_EvalPolyUdU` | 0x065e | 520 | 22 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLYUDUUSIZELOOP` | 0x0674 | 543 | 16 | transfers in `lPOLYUDUUORDERLOOP` |
| `lPOLYUDUUORDERLOOP` | 0x0684 | 560 | 41 | inside `umo_EvalPolyUdU` |
| `umo_EvalComputeNormals3D` | 0x06ad | 628 | 83 | address loaded as a constant in `mGL_EM_Initialize` |
| `umo_EvalComputeNormals4D` | 0x0700 | 748 | 111 | address loaded as a constant in `mGL_EM_Initialize`, `mgesi_PassThrough` |

### eval1.s

Evaluator polynomial loops of order 1. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_EvalPoly1V` | 0x076f | 84 | 20 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY1VLOOP` | 0x0783 | 104 | 11 | inside `umo_EvalPoly1V` |
| `umo_EvalPoly1U` | 0x078e | 144 | 22 | address loaded as a constant in `mGL_EM_Initialize` |
| `umo_EvalPoly1VdV` | 0x07a4 | 192 | 13 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY1VDVLOOP` | 0x07b1 | 205 | 18 | inside `umo_EvalPoly1VdV` |
| `umo_EvalPoly1UdU` | 0x07c3 | 250 | 34 | address loaded as a constant in `mGL_EM_Initialize` |

### eval2.s

Evaluator polynomial loops of order 2. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_EvalPoly2V` | 0x07e5 | 117 | 21 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY2VLOOP` | 0x07fa | 139 | 22 | inside `umo_EvalPoly2V` |
| `umo_EvalPoly2U` | 0x0810 | 189 | 35 | address loaded as a constant in `mGL_EM_Initialize`, `mgebi_XSetupWindow` |
| `umo_EvalPoly2VdV` | 0x0833 | 253 | 24 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY2VDVLOOP` | 0x084b | 278 | 26 | inside `umo_EvalPoly2VdV` |
| `umo_EvalPoly2UdU` | 0x0865 | 333 | 13 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY2UDULOOP` | 0x0872 | 347 | 17 | inside `umo_EvalPoly2UdU` |

### eval4.s

Evaluator polynomial loops of order 4. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_EvalPoly4V` | 0x0883 | 134 | 17 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY4VLOOP` | 0x0894 | 152 | 41 | inside `umo_EvalPoly4V` |
| `umo_EvalPoly4U` | 0x08bd | 220 | 53 | address loaded as a constant in `mGL_EM_Initialize` |
| `umo_EvalPoly4VdV` | 0x08f2 | 307 | 18 | address loaded as a constant in `mGL_EM_Initialize`, `mgeb_PushMatrix_Color` |
| `lPOLY4VDVLOOP` | 0x0904 | 326 | 41 | inside `umo_EvalPoly4VdV` |
| `umo_EvalPoly4UdU` | 0x092d | 400 | 13 | address loaded as a constant in `mGL_EM_Initialize` |
| `lPOLY4UDULOOP` | 0x093a | 414 | 40 | inside `umo_EvalPoly4UdU` |

### evalbasis.s

Evaluator change of basis for orders 1-8. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uEvalChangeBasis1and2` | 0x09f5 | 92 | 15 | address loaded as a constant in `mGL_EM_Initialize` |
| `uEvalChangeBasis3` | 0x0a04 | 128 | 8 | address loaded as a constant in `mGL_EM_Initialize` |
| `lCB3LOOP` | 0x0a0c | 137 | 22 | inside `uEvalChangeBasis3` |
| `uEvalChangeBasis4` | 0x0a22 | 181 | 16 | address loaded as a constant in `mGL_EM_Initialize` |
| `lCB4POLYLOOP` | 0x0a32 | 198 | 22 | inside `uEvalChangeBasis4` |
| `uEvalChangeBasis5` | 0x0a48 | 243 | 26 | address loaded as a constant in `mGL_EM_Initialize` |
| `lCB5LOOP` | 0x0a62 | 270 | 24 | inside `uEvalChangeBasis5` |
| `uEvalChangeBasis6` | 0x0a7a | 318 | 31 | address loaded as a constant in `mGL_EM_Initialize` |
| `lCB6MATRIXLOOP` | 0x0a99 | 350 | 1 | transfers in `lCB6LOOP` |
| `lCB6LOOP` | 0x0a9a | 352 | 28 | inside `uEvalChangeBasis6` |
| `uEvalChangeBasis7` | 0x0ab6 | 405 | 40 | address loaded as a constant in `mGL_EM_Initialize` |
| `lCB7LOOP` | 0x0ade | 446 | 30 | inside `uEvalChangeBasis7` |
| `uEvalChangeBasis8` | 0x0afc | 502 | 51 | address loaded as a constant in `mGL_EM_Initialize` |
| `lCB8MATRIXLOOP` | 0x0b2f | 554 | 2 | transfers in `lCB8LOOP` |
| `lCB8LOOP` | 0x0b31 | 557 | 31 | inside `uEvalChangeBasis8` |
| `uEvalChangeBasis4x4` | 0x0b50 | 613 | 10 | inside `uEvalChangeBasis8` |
| `lCB4X4LOOP` | 0x0b5a | 624 | 43 | inside `uEvalChangeBasis4x4` |

### evalmisc.s

Evaluator state save, load and swap for 1D and 2D maps. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uEvalSaveState` | 0x0962 | 55 | 21 | transfers in `mClipLinUserAndFrustum`, `mClipTriUserAndFrustum`, `mgeb_ColorTableSetup`, `mgeb_PixDrawColorSetup`, `mgeb_PixDrawColorSetup_FFT`, `mgeb_PixPolygonStippleSetup` and 1 more |
| `uEvalSaveState1D` | 0x0977 | 92 | 18 | transfers in `mgeb_EvalMapSpec2D` |
| `uEvalSaveState2D` | 0x0989 | 126 | 18 | transfers in `mgeb_EvalMapSpec1D` |
| `uEvalLoadState1D` | 0x099b | 160 | 18 | transfers in `mgeb_EvalMapData1D`, `mgesi_EvalStrip1D`, `uEvalCoord1D` |
| `uEvalLoadState2D` | 0x09ad | 194 | 18 | transfers in `lstrip2dreturn`, `mgeb_EvalMapData2D`, `mgesi_EvalStrip2D`, `uEvalCoord2D` |
| `uEvalSwapState1D` | 0x09bf | 228 | 27 | transfers in `mgeb_EvalMapData2D`, `mgesi_EvalStrip2D`, `uEvalCoord2D` |
| `uEvalSwapState2D` | 0x09da | 272 | 27 | transfers in `mgeb_EvalMapData1D`, `mgesi_EvalStrip1D`, `uEvalCoord1D` |

### expand.s

Pixel-path component expansion (RGB, LA, CI, single component), added by AddExpand2RGBA. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Expand` | 0x171e | 69 | 66 | geif slot 256; ARM `AddExpand2RGBA` |
| `umo_Expand` | 0x171e | 69 | 66 | alias of `mmo_Expand` |
| `expand_rgb` | 0x1760 | 163 | 8 | inside `mmo_Expand` |
| `mainloop_exp_rgb` | 0x1768 | 174 | 29 | inside `mmo_Expand` |
| `epilogue_exp_rgb` | 0x1785 | 206 | 30 | transfers in `expand_rgb` |
| `expand_la` | 0x17a3 | 248 | 8 | transfers in `mmo_Expand` |
| `mainloop_exp_la` | 0x17ab | 259 | 29 | inside `mmo_Expand` |
| `epilogue_exp_la` | 0x17c8 | 291 | 30 | transfers in `expand_la` |
| `expand_l` | 0x17e6 | 333 | 9 | transfers in `mmo_Expand` |
| `mainloop_exp_l` | 0x17ef | 345 | 29 | inside `mmo_Expand` |
| `epilogue_exp_l` | 0x180c | 377 | 30 | transfers in `expand_l` |
| `expand_ci` | 0x182a | 418 | 20 | transfers in `mmo_Expand` |
| `mainloop_exp_ci` | 0x183e | 443 | 29 | inside `mmo_Expand` |
| `epilogue_exp_ci` | 0x185b | 475 | 30 | transfers in `expand_ci` |
| `expand_ci2` | 0x1879 | 517 | 8 | transfers in `expand_ci` |
| `mainloop_exp_ci2` | 0x1881 | 528 | 29 | inside `mmo_Expand` |
| `epilogue_exp_ci2` | 0x189e | 560 | 41 | transfers in `expand_ci2` |
| `expand_single` | 0x18c7 | 616 | 24 | transfers in `mmo_Expand` |
| `mainloop_exp_single` | 0x18df | 650 | 29 | inside `mmo_Expand` |
| `epilogue_exp_single` | 0x18fc | 682 | 50 | transfers in `expand_single` |

### feedback.S

Feedback mode: begin and end, and the point, line, triangle and pixel feedback records. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_BgnFeedbackMode` | 0xb72f | 59 | 32 | geif slot 125; tokens `HP_RENDERMODE`; ARM `arm_rendermode` |
| `mgeb_EndFeedbackMode` | 0xb720 | 131 | 9 | geif slot 138; tokens `HP_RENDERMODE`; ARM `arm_rendermode` |
| `mmo_FeedbackTriangle` | 0xb76e | 166 | 80 | address loaded as a constant in `mgeb_PolygonSetup_Feedback` |
| `mmo_FeedbackLine` | 0xb89a | 320 | 85 | address loaded as a constant in `mgeb_LineWidth_Feedback` |
| `mmo_FeedbackPoint` | 0xb80f | 479 | 72 | address loaded as a constant in `mgebi_PointSize_Feedback` |
| `mFeedbackVertex` | 0xb93f | 612 | 85 | transfers in `mmo_FeedbackLine`, `mmo_FeedbackPoint`, `mmo_FeedbackTriangle` |
| `mgesi_FeedbackPixel` | 0xb6bc | 737 | 65 | geif slot 419; tokens `HP_BITMAP_DLIST`; ARM `PixelRestore`, `SetupRM`, `arm_bitmap_dlist`, `do_bitmap` |

### fft.S

FFT pixel path (sizes 2 to 256), transpose and complex output, set up by SetupGE_FFT. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_FFT_2` | 0x37cb | 764 | 11 | geif slot 440 |
| `mmo_FFT_4` | 0x37aa | 810 | 25 | geif slot 441 |
| `mmo_FFT_8` | 0x375e | 858 | 62 | geif slot 442 |
| `mmo_FFT_16` | 0x36c0 | 941 | 139 | geif slot 443; ARM `SetupGE_FFT` |
| `mmo_FFT_32` | 0x35c1 | 1027 | 190 | geif slot 444; ARM `SetupGE_FFT` |
| `mmo_FFT_64` | 0x3488 | 1090 | 245 | geif slot 445 |
| `mmo_FFT_128` | 0x330f | 1155 | 293 | geif slot 446; ARM `SetupGE_FFT` |
| `mmo_FFT_256` | 0x315b | 1219 | 349 | geif slot 447; ARM `SetupGE_FFT` |
| `mmo_Complex_Out` | 0x3133 | 1385 | 30 | geif slot 448 |
| `mmo_Complex_Sort_Out` | 0x30d4 | 1489 | 55 | geif slot 449 |
| `mgesi_PixRasterPosSetup_FFT` | 0x3051 | 1667 | 105 | geif slot 452; ARM `SetupRM_FFT` |
| `mmo_Transpose` | 0x3026 | 2050 | 43 | geif slot 450; ARM `SetupGE_FFT` |
| `mgeb_PixDrawColorSetup_FFT` | 0x3000 | 2191 | 15 | geif slot 451; ARM `SetupGE_FFT` |

### floattoint.s

Pixel-path float-to-integer stage, added by AddF2I. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_FloatToInt` | 0x2753 | 30 | 41 | geif slot 288; ARM `AddF2I` |
| `umo_FloatToInt` | 0x2753 | 30 | 41 | alias of `mmo_FloatToInt` |
| `mainloop_f2i` | 0x277c | 94 | 29 | inside `mmo_FloatToInt` |
| `epilogue_f2i` | 0x2799 | 126 | 51 | transfers in `mmo_FloatToInt` |

### fluff.S

Geometry pipeline control: module dirty flags, multipass, punt and the vertex save and copy helpers. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mDispatchCentral` | 0xe741 | 53 | 11 | address loaded as a constant in `mGL_CM_Initialize` |
| `mdc_finish` | 0xe450 | 83 | 14 | transfers in `mDispatchCentral`, `mdc_multipass`, `mdc_sprite` |
| `mdc_polymode_or_clip` | 0xe4d0 | 121 | 3 | transfers in `mDispatchCentral` |
| `mdc_sprite` | 0xe4b6 | 140 | 9 | transfers in `mDispatchCentral` |
| `mdc_multipass` | 0xe471 | 169 | 29 | transfers in `mDispatchCentral`, `mdc_sprite` |
| `mdc_evaluator` | 0xe462 | 239 | 4 | transfers in `mDispatchCentral`, `mdc_multipass`, `mdc_sprite` |
| `mmo_AbortGeometry` | 0xe6e8 | 264 | 38 | transfers in `lCU2`, `mmo_DecomposeLineStrip`, `mmo_DecomposePoints`, `mmo_DecomposePolygon`, `mmo_DecomposeQuadStrip`, `mmo_DecomposeQuads` and 12 more |
| `mmo_SaveRasterPos` | 0xe623 | 459 | 65 | address loaded as a constant in `mRecordHit`, `mdc_finish`, `mgeb_RasterPos`, `mmo_AbortGeometry` |
| `mmo_Vn2ToSave` | 0xe4de | 625 | 20 | address loaded as a constant in `mgesi_QuadStripSave`, `mgesi_TriangleStripSave`, `mgesi_TriangleStripSaveWithSwapOdd` |
| `mmo_SaveToV0` | 0xe605 | 656 | 19 | address loaded as a constant in `mgesi_QuadStripRestore`, `mgesi_TfanPolyRestore`, `mgesi_TfanPolyRestoreEnd`, `mgesi_TfanPolyRestoreSave`, `mgesi_TriangleStripRestore`, `mgesi_TriangleStripRestoreWithSwapOdd` |
| `mmo_SaveToV0AndVn2ToSave` | 0xe57e | 687 | 34 | address loaded as a constant in `mgesi_QuadStripRestoreSave`, `mgesi_TriangleStripRestoreSave`, `mgesi_TriangleStripRestoreSaveWithSwapOdd` |
| `mmo_V0ToSave` | 0xe544 | 731 | 19 | address loaded as a constant in `mgesi_LineStripSaveV0`, `mgesi_TfanPolySave` |
| `mmo_SaveToVn1` | 0xe560 | 766 | 20 | address loaded as a constant in `mgesi_LineStripRestoreV0` |
| `mmo_CopyV0ToVn1` | 0xe6d4 | 796 | 12 | address loaded as a constant in `mgesi_LineStripCopyV0` |
| `mmo_V0ToSaveAndIgnore` | 0xe4fd | 825 | 21 | address loaded as a constant in `mgesi_LineStripSaveAndIgnoreV0` |
| `mmo_CopyV0ToVn1AndIgnore` | 0xe6c0 | 863 | 15 | address loaded as a constant in `mgesi_LineStripCopyAndIgnoreV0` |
| `mmo_V0ToSave_SaveExtra` | 0xe519 | 895 | 24 | address loaded as a constant in `mgesi_TfanPolySave` |
| `mmo_SaveToV0_SaveExtra` | 0xe5a9 | 932 | 24 | address loaded as a constant in `mgesi_TfanPolyRestoreSave` |
| `mmo_SaveToV0_RestoreExtra` | 0xe5d7 | 965 | 35 | address loaded as a constant in `mgesi_TfanPolyRestoreEdge` |
| `mmo_Punt` | 0xe3d2 | 1002 | 5 | address loaded as a constant in `mmo_AbortGeometry` |
| `mmo_DirtyMultipassModule` | 0xe6a5 | 1016 | 8 | address loaded as a constant in `mmo_DirtyPrePathModule` |
| `mmo_MultipassModule` | 0xe3e1 | 1038 | 31 | address loaded as a constant in `mmo_DirtyMultipassModule` |

### fog.S

Fog: global table set-up, fog function, mode, enable and offset. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mDummy` | 0x7631 | 180 | 1 | unknown entry |
| `mZclipToEye` | 0x7604 | 202 | 29 | transfers in `mCoarseTblSpecialEntry`, `mFineTblSpecialEntry`, `mGetInternalPointsGSS`, `mInitExpFog`, `mInitLinearFog`, `mOneBigTblSpecialEntry` and 1 more; address loaded as a constant in `mLoadFogTable` |
| `mSendFog` | 0x75d2 | 247 | 22 | address loaded as a constant in `mStartFogDownload` |
| `mFinishFogDownload` | 0x75c3 | 316 | 7 | transfers in `mLoadFogTable`, `mSendFineTblSpecialEntry`, `mSendOneBigTblSpecialEntry`; address loaded as a constant in `mgeb_InitFogGlobal` |
| `mSendFineTblSpecialEntry` | 0x75ba | 344 | 3 | address loaded as a constant in `mFineTblSpecialEntry` |
| `mFineTblSpecialEntry` | 0x75ab | 358 | 7 | address loaded as a constant in `mLoadFineTable`, `mgeb_InitFogGlobal` |
| `mSendCoarseTblSpecialEntry` | 0x7595 | 389 | 14 | address loaded as a constant in `mCoarseTblSpecialEntry` |
| `mCoarseTblSpecialEntry` | 0x74ff | 448 | 23 | address loaded as a constant in `mgeb_InitFogGlobal` |
| `mSendOneBigTblSpecialEntry` | 0x74f3 | 484 | 12 | address loaded as a constant in `mOneBigTblSpecialEntry` |
| `mOneBigTblSpecialEntry` | 0x74e4 | 522 | 8 | address loaded as a constant in `mgeb_InitFogGlobal` |
| `mInitLinearFog` | 0x74be | 556 | 15 | address loaded as a constant in `mgeb_Fogf` |
| `mLinearFog` | 0x74a8 | 580 | 9 | address loaded as a constant in `mgeb_Fogf` |
| `mInitExpFog` | 0x748a | 644 | 14 | address loaded as a constant in `mgeb_Fogf` |
| `mExpFog` | 0x7431 | 686 | 49 | address loaded as a constant in `mgeb_Fogf` |
| `mSplineSlopeAndOffset` | 0x7404 | 777 | 28 | transfers in `mInitSplineFog`, `mUpdateSplineIntervals` |
| `mInitSplineFog` | 0x73ec | 826 | 15 | address loaded as a constant in `mgeb_Fogf` |
| `mUpdateSplineIntervals` | 0x7390 | 856 | 34 | transfers in `mSplineFog`, `mSplineFogGSS` |
| `mSplineFog` | 0x7372 | 932 | 10 | transfers in `mSplineFogGSS`; address loaded as a constant in `mLoadFogTable`, `mgeb_Fogf` |
| `mSplineFogGSS` | 0x7534 | 972 | 31 | address loaded as a constant in `mCoarseTblSpecialEntry`, `mLoadFogTable` |
| `mGetInternalPointsGSS` | 0x7360 | 1065 | 7 | transfers in `mLinearApproxErrorGSS`, `mLinearApproxParamsGSS` |
| `mLinearApproxErrorGSS` | 0x7332 | 1089 | 18 | address loaded as a constant in `mLinearApproxParamsGSS` |
| `mLinearApproxParamsGSS` | 0x730b | 1138 | 17 | address loaded as a constant in `mStartGSS` |
| `mStartGSS` | 0x783f | 1167 | 10 | transfers in `mDefineCoarseMode`, `mDefineFineMode` |
| `mDefineFineMode` | 0x71c8 | 1222 | 129 | transfers in `mDefineCoarseMode` |
| `mDefineCoarseMode` | 0x7771 | 1490 | 85 | transfers in `mLoadFogTable` |
| `mStartFogDownload` | 0x7187 | 1660 | 41 | transfers in `mLoadFineTable`, `mLoadFogTable`, `mLoadOneBigTable` |
| `mLoadOneBigTable` | 0x715c | 1736 | 27 | transfers in `mLoadFogTable` |
| `mLoadFineTable` | 0x7146 | 1799 | 11 | address loaded as a constant in `mgeb_InitFogGlobal` |
| `mLoadFogTable` | 0x76a2 | 1835 | 90 | transfers in `mResolveFogTable`, `mgeb_FogEnable`, `mgeb_FogFunc`, `mgeb_FogRestore`, `mgeb_Fogf` |
| `mSetFogOffset` | 0x765c | 1992 | 38 | transfers in `mResolveFogTable`, `mgeb_FogEnable`, `mgeb_Fogf` |
| `mgeb_Fogf` | 0x6fb2 | 2079 | 211 | geif slot 352; ARM `init_ged`; distributor table 1; transfers in `mgeb_Fogi` |
| `mgeb_Fogi` | 0x6fa5 | 2364 | 4 | geif slot 353; ARM `init_ged`; distributor table 2 |
| `mgeb_FogEnable` | 0x6f1e | 2418 | 51 | geif slot 112; ARM `e_fog` |
| `mgebi_FogDisable` | 0x6f05 | 2505 | 18 | geif slot 113; ARM `d_fog` |
| `mgebi_FogOffsetEnableDisable` | 0x6eea | 2557 | 20 | geif slot 115; ARM `d_fog_offset`, `e_fog_offset` |
| `mgeb_FogRestore` | 0x6ebf | 2608 | 13 | geif slot 354; ARM `fogRestore` |
| `mgeb_FogFunc` | 0x6e4b | 2647 | 45 | geif slot 114; tokens `HP_FOGFUNC`; ARM `arm_fogfunc`, `initFogState` |
| `mgesi_GetFogFunc` | 0x6e20 | 2742 | 23 | geif slot 356 |
| `mResolveFogTable` | 0x763a | 2782 | 6 | transfers in `mMatrixMultCCW`, `mgeb_DepthRange`, `mgeb_LoadIdentity_Projection`, `mgeb_LoadMatrix_Projection`, `mgeb_PopMatrix_Projection`, `mgeb_PushMatrix_Projection` and 2 more |
| `mgeb_InitFogGlobal` | 0x6cf0 | 2821 | 208 | geif slot 355; ARM `InitFogGlobal` |

### ge.S

Start-up and context initialisation of GL and X state, pipe set-up. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_GlobalInitialize` | 0xad66 | 54 | 19 | geif slot 152; ARM `init_ge` |
| `mgeb_GLContextInitialize` | 0xad39 | 90 | 9 | geif slot 365; ARM `context_init` |
| `mgeb_XContextInitialize` | 0xad1c | 114 | 11 | geif slot 364; tokens `HP_SLOP`, `HP_X_INIT`; ARM `arm_slop`, `arm_x_init` |
| `mX_REGS_Initialize` | 0xade8 | 132 | 25 | transfers in `mgeb_XContextInitialize` |
| `mGL_REGS_Initialize` | 0xb25a | 200 | 26 | transfers in `mgeb_GLContextInitialize`, `mgeb_GlobalInitialize` |
| `mX_CM_Initialize` | 0xadaf | 279 | 52 | transfers in `mgeb_XContextInitialize` |
| `mGL_CM_Initialize` | 0xb1ac | 332 | 165 | transfers in `mgeb_GLContextInitialize` |
| `mGL_EM_Initialize` | 0xb0f4 | 496 | 178 | transfers in `mgeb_GlobalInitialize` |
| `mGL_EX_Initialize` | 0xae09 | 941 | 715 | transfers in `mgeb_GLContextInitialize` |
| `mDebugInitialize` | 0xad90 | 985 | 16 | inside `mGL_EX_Initialize` |
| `mgesi_PipeSetup` | 0xab9d | 1023 | 224 | geif slot 374; tokens `HP_PIPE_SETUP`; ARM `arm_pipe_setup`, `init_simulator_hacks` |

### generallight.S

General (multi-light, local viewer) lighting loop. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_LiColorMask` | 0xd87e | 41 | 26 | address loaded as a constant in `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `mmo_LighterGeneral` | 0xd85e | 147 | 30 | transfers in `mLiUpdateMtrlState`; address loaded as a constant in `mLiPushMtrlInit`, `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `mLiVtxLoop` | 0xd8a0 | 295 | 27 | transfers in `mLiPrimMtrlInit`, `mmo_LighterGeneral`; address loaded as a constant in `mmo_LighterGeneral` |
| `mLiDirtyLocLiVwrLiSrcInit` | 0xd9a2 | 373 | 27 | address loaded as a constant in `mgeb_LiDisableLightS`, `mgeb_LiEnableLightS`, `mgeb_LightModelLocV`, `mgeb_LightPos`, `mgeb_PopAttrLights` |
| `mLiNoLightSrc` | 0xd901 | 492 | 23 | transfers in `mLiDirtyLocLiVwrLiSrcInit`; address loaded as a constant in `mGL_CtxLightInitialize`, `mLiDirtyLocLiVwrLiSrcInit` |
| `mLiInfVInfLiInit` | 0xd9f7 | 566 | 68 | transfers in `mLiDirtyLocLiVwrLiSrcInit`; address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit` |
| `mLiLocalViewer` | 0xd8bc | 820 | 61 | transfers in `mLiDirtyLocLiVwrLiSrcInit`; address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit` |
| `mLiLocLiFrnClrAccum` | 0xd9c1 | 947 | 54 | address loaded as a constant in `mLiInfVInfLiInit`, `mLiLocLiFrnClrInit`, `mLiLocVInfLiInit`, `mLiPrmMtrlBackClrInitAccm`, `mLiPrmMtrlFrntClrAccmEnd` |
| `mLiLocLiFrnClrInit` | 0xd943 | 1146 | 48 | address loaded as a constant in `mLiVtxLoop` |
| `mLiBackClrAccum` | 0xd973 | 1326 | 41 | address loaded as a constant in `mLiBackClrInit`, `mLiPrmMtrlBackClrAccmEnd` |
| `mLiBackClrInit` | 0xd91a | 1479 | 33 | address loaded as a constant in `mLiPrimShinLoop`, `mLiVtxLoop` |
| `mLiFinalLi` | 0xda3c | 1585 | 43 | address loaded as a constant in `mGL_CtxLightInitialize`, `mgeb_LiDisableClrMtrl`, `mgeb_RGBA_Mode` |

### generallight2.S

Local and infinite light-source terms of the general lighting. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mLiInfVInfLi` | 0xc3db | 91 | 72 | address loaded as a constant in `mGL_CtxLightInitialize`, `mLiDirtyLocLiVwrLiSrcInit` |
| `mLiLocVInfLi` | 0xc426 | 403 | 104 | address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit` |
| `mLiLocVInfLiInit` | 0xc493 | 761 | 104 | address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit` |
| `mLiLocalLight` | 0xc321 | 1097 | 175 | transfers in `mLiPrmMtrlFrntClrAccmEnd`; address loaded as a constant in `mLiDirtyLocLiVwrLiSrcInit`, `mmo_LighterGeneral` |

### get.S

Query replies: current values, raster position and special registers. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_GetCurrent` | 0x95cd | 39 | 24 | geif slot 222; ARM `getcurrent` |
| `mgesi_GetRaster` | 0x959a | 99 | 51 | geif slot 200; tokens `HP_COPYCONVISOVERLAPPED`, `HP_GETRASTER`, `HP_PUSHATTRIB`; ARM `arm_copyconvisoverlapped`, `arm_getraster`, `arm_pushattrib` |
| `mgesi_GetSpecial` | 0x9562 | 180 | 54 | geif slot 397; tokens `HP_PUSHATTRIB`; ARM `arm_pushattrib`, `special_get` |

### getlight.S

Light and material queries, and the push and pop of light attributes. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_LiGetLight` | 0xc2d2 | 89 | 68 | geif slot 198; tokens `HP_GETLIGHTFV`; ARM `arm_getlightfv` |
| `mgesi_LiGetMaterial` | 0xc284 | 275 | 67 | geif slot 199; tokens `HP_GETMATERIALFV`; ARM `arm_getmaterialfv`, `material_push` |
| `mgesi_PushAttrLights` | 0xc255 | 470 | 34 | geif slot 180; ARM `init_ged`; distributor table 34 |
| `mgeb_PopAttrLights` | 0xc20a | 593 | 64 | geif slot 166; tokens `HP_POPLIGHTS`; ARM `arm_poplights` |

### glExt.S

Polygon-offset commands (core and extension). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_PolygonOffsetExt` | 0xb2c3 | 64 | 9 | geif slot 64; tokens `HP_POLYGONOFFSETEXT`; ARM `arm_polygonoffsetext` |
| `mgeb_PolygonOffset` | 0xb2ab | 93 | 13 | geif slot 435; tokens `HP_POLYGONOFFSET`; ARM `arm_polygonoffset` |
| `mgeb_Disable_EnablePolyOffsetExt` | 0xb27b | 118 | 32 | geif slot 6; ARM `d_polygonoffset`, `d_polygonoffsetline`, `d_polygonoffsetpoint`, `e_polygonoffset`, `e_polygonoffsetline`, `e_polygonoffsetpoint` and 1 more |

### glmodes.S

Raster and pipeline modes: viewport, depth range, cull face, front face, matrix mode, point parameters, sprites, multipass, the IrisGL lighting flag. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_SetGeId` | 0xf435 | 47 | 15 | geif slot 224; ARM `init_ge` |
| `mgeb_ViewPort` | 0xf404 | 107 | 47 | geif slot 90; ARM `resolve_viewport` |
| `mgeb_DepthRange` | 0xf3ea | 233 | 21 | geif slot 335; tokens `HP_DEPTHRANGE`; ARM `arm_depthrange`, `depth_init`, `viewport_pop` |
| `mgeb_FrontFace` | 0xf3db | 293 | 10 | geif slot 15; tokens `HP_FRONTFACE`; ARM `arm_frontface`, `polygon_pop`, `prim_init` |
| `mgeb_UserClipPlane` | 0xf3a4 | 329 | 43 | geif slot 89; tokens `HP_CLIPPLANE`; ARM `arm_clipplane` |
| `mgeb_EnableUserClipPlane` | 0xf390 | 393 | 10 | geif slot 9; ARM `e_clip_plane0`, `e_clip_plane1`, `e_clip_plane2`, `e_clip_plane3`, `e_clip_plane4`, `e_clip_plane5` |
| `mgeb_DisableUserClipPlane` | 0xf37c | 420 | 10 | geif slot 4; tokens `HP_CONTEXT_ACTIVATE`; ARM `arm_context_activate`, `d_clip_plane0`, `d_clip_plane1`, `d_clip_plane2`, `d_clip_plane3`, `d_clip_plane4` and 1 more |
| `mUserClipResolve` | 0xf583 | 441 | 69 | transfers in `mgeb_DisableUserClipPlane`, `mgeb_EnableUserClipPlane`, `mgeb_UserClipPlane` |
| `mgeb_CullFace` | 0xf366 | 546 | 20 | geif slot 3; tokens `HP_CONTEXT_ACTIVATE`, `HP_CULLFACE`; ARM `arm_context_activate`, `arm_cullface`, `polygon_pop`, `prim_init` |
| `mgeb_Enable_Cull_Face` | 0xf352 | 619 | 17 | geif slot 10; ARM `e_cull_face` |
| `mgeb_Disable_Cull_Face` | 0xf33e | 643 | 16 | geif slot 5; ARM `d_cull_face` |
| `mgeb_SetLMCFlag` | 0xf32f | 687 | 9 | geif slot 405; tokens `HP_IRISGL_MODE`; ARM `arm_irisgl_mode` |
| `mgeb_ClearLMCFlag` | 0xf320 | 714 | 9 | geif slot 406; tokens `HP_IRISGL_MODE`; ARM `arm_irisgl_mode` |
| `mmo_DirtyCullAndLightModule` | 0xf547 | 754 | 52 | address loaded as a constant in `mGL_CtxLightInitialize`, `mLiPrimMtrlInit`, `mLiUpdateMtrlColor`, `mLiUpdateShin`, `mLightColor`, `mPolymodeSetup` and 17 more |
| `mmo_DirtyLightModule` | 0xf50d | 899 | 52 | address loaded as a constant in `mGL_CtxLightInitialize`, `mLiPrimMtrlInit`, `mLiUpdateMtrlColor`, `mLiUpdateShin`, `mLightColor`, `mgeb_CI_Mode` and 14 more |
| `mmo_DirtyXformAndObjToClipModule` | 0xf449 | 1032 | 38 | address loaded as a constant in `mTexGenResolve`, `mUserClipResolve`, `mgeb_Disable_Normalize`, `mgeb_Enable_Normalize`, `mgeb_LiDisableLightS`, `mgeb_LiDisableLighting` and 6 more |
| `mmo_DirtyTextureAndScreenModule` | 0xf494 | 1136 | 54 | address loaded as a constant in `mTexGenResolve`, `mgeb_ClipmapXform`, `mgeb_Frustum_Texture`, `mgeb_LoadIdentity_Texture`, `mgeb_LoadMatrix_Texture`, `mgeb_MultMatrix_Texture` and 7 more |
| `mgeb_Sprite` | 0xf2cc | 1263 | 35 | geif slot 81; tokens `HP_SPRITEPARAMETERFV`; ARM `arm_spriteparameterfv`, `initSpriteState`, `resolveSpriteMode`, `sprite_pop` |
| `mgeb_EnableSprite` | 0xf2b9 | 1318 | 15 | geif slot 12; ARM `e_sprite` |
| `mgeb_DisableSprite` | 0xf2a6 | 1364 | 15 | geif slot 8; ARM `d_sprite` |
| `mgeb_Enable_Multipass` | 0xf293 | 1403 | 15 | geif slot 137; ARM `e_multipass` |
| `mgeb_Disable_Multipass` | 0xf280 | 1447 | 15 | geif slot 135; ARM `d_multipass` |
| `mgeb_PointParameter` | 0xf21b | 1524 | 50 | geif slot 63; tokens `HP_POINTPARAMETERF`, `HP_POINTPARAMETERFV`; ARM `arm_pointparameterf`, `arm_pointparameterfv` |
| `mmo_DirtyPrePathModule` | 0xf4e4 | 1637 | 25 | address loaded as a constant in `mGL_CM_Initialize`, `mgeb_DeformationMap3_1`, `mgeb_DisableSprite`, `mgeb_Disable_Multipass`, `mgeb_EnableSprite`, `mgeb_Enable_Multipass` and 4 more |

### histogram.S

Histogram and min-max state moved between ERAM and CRAM, and the ERAM fill. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `DoEramFill` | 0x4544 | 38 | 11 | transfers in `mgeb_EramFill`, `mgeb_EramIndirectFill` |
| `mgeb_EramFill` | 0x4530 | 77 | 10 | geif slot 140; ARM `AddConvolutionOutput`, `init_per_ge_context` |
| `mgeb_EramIndirectFill` | 0x4503 | 113 | 15 | geif slot 141; ARM `reset_histogram`, `reset_minmax` |
| `mgesi_HistogramUpload` | 0x449d | 175 | 65 | geif slot 201 |
| `mmo_CramMinmaxToEramMinmax` | 0x4472 | 271 | 23 | geif slot 300; ARM `AddMinMax` |
| `mgeb_EramMinmaxToCramMinmax` | 0x443b | 313 | 24 | geif slot 143; ARM `MinmaxRestore`, `init_per_ge_context` |

### histogram.s

Pixel-path histogram stage, added by AddHistogram. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Histogram` | 0x13b4 | 46 | 75 | geif slot 286; ARM `AddHistogram` |
| `umo_Histogram` | 0x13b4 | 46 | 75 | alias of `mmo_Histogram` |
| `mainloop_hist` | 0x13ff | 142 | 24 | inside `mmo_Histogram` |
| `epilogue_hist` | 0x1417 | 176 | 9 | inside `mmo_Histogram` |
| `uge_HistogramFill` | 0x1420 | 195 | 30 | inside `mmo_Histogram` |

### hostio.S

Engine-to-host returns: read-data framing, ERAM, CRAM, special-register and last-vertex output DMA. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_Cram2ODMA` | 0x6b13 | 115 | 25 | geif slot 196; tokens `HP_GETV`, `HP_SLOP`; ARM `arm_getv`, `arm_slop` |
| `mgesi_Eram2ODMA` | 0x6af0 | 137 | 28 | geif slot 197; tokens `HP_GETCLIPPLANE`, `HP_GETPOLYGONSTIPPLE`, `HP_GETTEXENVFV`, `HP_GETTEXGENFV`, `HP_GETV`, `HP_PUSHATTRIB`, `HP_SLOP`; ARM `arm_getclipplane`, `arm_getpolygonstipple`, `arm_gettexenvfv`, `arm_gettexgenfv`, `arm_getv`, `arm_pushattrib` and 4 more |
| `mgesi_WramFifo2ODMA` | 0x6ad4 | 162 | 23 | geif slot 239; ARM `mem_swapout_arm`, `mem_swapout_sarm` |
| `mgeb_LoadEram` | 0x6ac2 | 208 | 8 | geif slot 42; tokens `HP_TEXGEN_POP`, `HP_X_STORESTIPPLE`; ARM `InitMSPointsGlobal`, `WriteEram`, `arm_texgen_pop`, `arm_x_storestipple` |
| `mgesi_LoadEram` | 0x6ab0 | 232 | 12 | geif slot 209 |
| `mgesi_SR2ODMA` | 0x6a9e | 263 | 13 | geif slot 223; tokens `HP_SLOP`; ARM `arm_slop` |
| `mgesi_LastVertex2ODMA` | 0x6a86 | 288 | 17 | geif slot 202; tokens `HP_SLOP`; ARM `arm_slop` |
| `mgesi_SlopReadWord` | 0x6a79 | 322 | 10 | geif slot 401; ARM `slop_readword` |
| `mgesi_StartRdata` | 0x6a57 | 346 | 34 | geif slot 413; tokens `HP_GETCLIPPLANE`, `HP_GETCURRENT`, `HP_GETERROR`, `HP_GETRASTER`, `HP_GETTEXGENFV`, `HP_GETV`, `HP_GET_DEFORMATION`, `HP_GET_GE_TEXTURE_ATTRIB`, `HP_GET_GE_XFORM_ATTRIB`, `HP_PUSHATTRIB`; ARM `arm_get_deformation`, `arm_get_ge_texture_attrib`, `arm_get_ge_xform_attrib`, `arm_getclipplane`, `arm_getcurrent`, `arm_geterror` and 4 more |
| `mgesi_FinishRdata` | 0x6a32 | 409 | 37 | geif slot 414; tokens `HP_GETCLIPPLANE`, `HP_GETCURRENT`, `HP_GETERROR`, `HP_GETRASTER`, `HP_GETTEXGENFV`, `HP_GETV`, `HP_GET_DEFORMATION`, `HP_GET_GE_TEXTURE_ATTRIB`, `HP_GET_GE_XFORM_ATTRIB`, `HP_PUSHATTRIB`; ARM `arm_get_deformation`, `arm_get_ge_texture_attrib`, `arm_get_ge_xform_attrib`, `arm_getclipplane`, `arm_getcurrent`, `arm_geterror` and 4 more |

### indxirislight.S

Colour-index and IrisGL lighting final stages. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mLiPrimMtrlIndxFinalLi` | 0xd536 | 65 | 23 | address loaded as a constant in `mLiPrimMtrlInit` |
| `mLiIndexFinalLi` | 0xd5a6 | 134 | 22 | address loaded as a constant in `mgeb_CI_Mode` |
| `mLiFinalLiEquIndx` | 0xd5c4 | 192 | 62 | transfers in `mLiIndexFinalLi`; address loaded as a constant in `mLiPrimMtrlIndxFinalLi` |
| `mLiIrisColoring` | 0xd54e | 393 | 66 | transfers in `lLI1`; address loaded as a constant in `mmo_LighterGeneral` |

### inttofloat.s

Pixel-path integer-to-float stage, added by AddInt2Float. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_IntToFloat` | 0x200d | 31 | 70 | geif slot 287; ARM `AddInt2Float` |
| `umo_IntToFloat` | 0x200d | 31 | 70 | alias of `mmo_IntToFloat` |
| `mainloop_i2f` | 0x2053 | 127 | 29 | inside `mmo_IntToFloat` |
| `epilogue_i2f` | 0x2070 | 159 | 51 | transfers in `mmo_IntToFloat` |

### lightenables.S

Lighting, light-source and colour-material enables and disables, spot power table recompute. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_LiEnableLighting` | 0xdda1 | 77 | 34 | geif slot 26; ARM `e_lighting` |
| `mLiSwichSpotPrwTable` | 0xde3f | 185 | 78 | transfers in `mgeb_LiEnableLighting`, `mgeb_LiReCmpPwrTable` |
| `mLiSwichSpotPrwTable2` | 0xddc5 | 319 | 52 | transfers in `mLiSwichSpotPrwTable` |
| `mLiSwichSpotPrwTableSub` | 0xde2a | 418 | 10 | transfers in `mLiSwichSpotPrwTable2` |
| `mgeb_LiReCmpPwrTable` | 0xdd83 | 462 | 18 | geif slot 154; ARM `ReCompPwrTable` |
| `mgeb_LiEnableLightS` | 0xdd3e | 546 | 49 | geif slot 25; ARM `e_light0`, `e_light1`, `e_light2`, `e_light3`, `e_light4`, `e_light5` and 3 more |
| `mgeb_LiEnableClrMtrl` | 0xdd2b | 665 | 16 | geif slot 24; ARM `e_colormaterial` |
| `mgeb_LiDisableLighting` | 0xdd0d | 722 | 30 | geif slot 23; ARM `PixelRestore`, `SetupGE_ColorLine`, `SetupGE_LuminanceLine`, `d_lighting` |
| `mgeb_LiDisableLightS` | 0xdcc0 | 832 | 60 | geif slot 22; ARM `d_light0`, `d_light1`, `d_light2`, `d_light3`, `d_light4`, `d_light5` and 3 more |
| `mgeb_LiDisableClrMtrl` | 0xdc9c | 967 | 33 | geif slot 21; ARM `SetupGE_FFT`, `d_colormaterial` |

### lightmodel.S

Light-model parameters (ambient, local viewer, two-sided) and colour-material face selection. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_LightModel2Side` | 0xc7fb | 59 | 28 | geif slot 32; ARM `light_pop`, `lightmodel_2side` |
| `mgeb_LightModelLocV` | 0xc7e1 | 152 | 26 | geif slot 34; ARM `light_pop`, `lightmodel_locv` |
| `mgeb_LightModelGAmb` | 0xc7cf | 228 | 17 | geif slot 33; ARM `light_pop`, `lightmodel_gamb` |
| `mgeb_LiClrMtrlFront` | 0xc795 | 289 | 55 | geif slot 19; ARM `colormaterial_front` |
| `mgeb_LiClrMtrlBack` | 0xc75b | 416 | 55 | geif slot 18; ARM `AddOutput`, `colormaterial_back` |
| `mgeb_LiClrMtrlFrontBack` | 0xc721 | 543 | 55 | geif slot 20; ARM `colormaterial_frontback` |

### lightsource.S

Per-light parameters: position, spot direction, exponent and cutoff, attenuation, colours. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mLightColor` | 0xc70d | 71 | 18 | transfers in `mgeb_LightAmb`, `mgeb_LightDiff`, `mgeb_LightSpec` |
| `mgeb_LightAmb` | 0xc704 | 143 | 8 | geif slot 27; ARM `light_amb`, `light_pop` |
| `mgeb_LightDiff` | 0xc6fb | 176 | 8 | geif slot 28; ARM `light_diff`, `light_pop` |
| `mgeb_LightSpec` | 0xc6f2 | 209 | 8 | geif slot 36; ARM `light_pop`, `light_spec` |
| `mgeb_LightK0` | 0xc6e5 | 231 | 6 | geif slot 29; ARM `light_k0`, `light_pop` |
| `mgeb_LightK1` | 0xc6d8 | 269 | 6 | geif slot 30; ARM `light_k1`, `light_pop` |
| `mgeb_LightK2` | 0xc6cb | 307 | 6 | geif slot 31; ARM `light_k2`, `light_pop` |
| `mgeb_LightSpotCutAng` | 0xc697 | 350 | 27 | geif slot 37; ARM `light_pop`, `light_scut` |
| `mgeb_LightSpotExp` | 0xc626 | 450 | 74 | geif slot 39; ARM `light_pop`, `light_sexp` |
| `mgeb_LightSpotDir` | 0xc5cd | 626 | 52 | geif slot 38; ARM `light_sdir` |
| `mgeb_LightPos` | 0xc500 | 750 | 165 | geif slot 35; ARM `light_pos` |

### lightsubroutines.S

Lighting initialisation and the dirty-state refresh of the lighting tables. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mLiDirtySimLiCRAM` | 0xe334 | 108 | 78 | transfers in `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule`; address loaded as a constant in `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `mLiDirtyGenLiCRAM` | 0xe391 | 320 | 52 | transfers in `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule`; address loaded as a constant in `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `mLiUpdateShin` | 0xe27a | 674 | 143 | transfers in `mLiEndPrimShinLp`, `mLiPushMtrlInit`, `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `mGL_CtxLightInitialize` | 0xe184 | 896 | 236 | transfers in `mgeb_GLContextInitialize` |
| `mGL_LightInitialize` | 0xe05a | 1087 | 292 | transfers in `mgeb_GlobalInitialize` |

### linclip.S

Line clipping against the user planes and the view frustum. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mClipLineToPlane` | 0xebbf | 89 | 338 | transfers in `mClipLinUserAndFrustum` |
| `mClipLinUserAndFrustum` | 0xea1c | 695 | 230 | address loaded as a constant in `mGL_EM_Initialize`, `mmo_DecomposeLineStrip` |
| `mClipLinFlush` | 0xed2c | 1028 | 30 | transfers in `mClipLinUserAndFrustum` |

### line.S

Line width, stipple and antialiased-line tables. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mDownLoadAALineTable` | 0x65db | 216 | 59 | transfers in `mGenerateAALineTable`, `mgeb_DownLoadAALineTable`, `mmo_DrawTriPrimOffset` |
| `mDownLoadAALineTable4` | 0x6579 | 328 | 76 | transfers in `mGenerateAALineTable4`, `mgeb_DownLoadAALineTable` |
| `mDownLoadAALineTable8` | 0x652d | 435 | 56 | transfers in `mGenerateAALineTable8`, `mgeb_DownLoadAALineTable` |
| `mGenerateAALineTable` | 0x64af | 550 | 62 | transfers in `mgeb_DownLoadAALineTable`, `mgeb_InitAALineTables`, `mmo_DrawTriPrimOffset` |
| `mGenerateAALineTable4` | 0x6432 | 702 | 70 | transfers in `mgeb_DownLoadAALineTable` |
| `mGenerateAALineTable8` | 0x63d4 | 854 | 57 | transfers in `mgeb_DownLoadAALineTable` |
| `mgeb_LineWidth_AlphaAA` | 0x6379 | 1014 | 73 | geif slot 94; ARM `ResolveLine` |
| `mgeb_DownLoadAALineTable` | 0x6319 | 1190 | 50 | geif slot 375; ARM `d_polygon_stipple`, `downLoadAALineTable` |
| `mgeb_InitAALineTables` | 0x6300 | 1325 | 14 | geif slot 400; ARM `initAALineTablesGlobal` |
| `mgeb_LineWidth_MS` | 0x62dc | 1424 | 28 | geif slot 95 |
| `mgeb_LineStipple` | 0x62a7 | 1520 | 31 | geif slot 40; tokens `HP_LINESTIPPLE`; ARM `arm_linestipple`, `line_pop` |
| `mgeb_LineWidth_Select` | 0x6298 | 1572 | 9 | geif slot 175 |
| `mgeb_LineWidth_Feedback` | 0x6289 | 1604 | 9 | geif slot 174 |
| `mgeb_LineWidth_Aliased` | 0x6257 | 1668 | 41 | geif slot 93 |

### LUT.s

Pixel-path lookup-table stage (16-bit and RGBA alpha-only forms), added by the ARM's AddLuminanceLut. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_LUT16` | 0x1b8d | 77 | 137 | geif slot 289; ARM `AddLuminanceLut` |
| `umo_LUT16` | 0x1b8d | 77 | 137 | alias of `mmo_LUT16` |
| `mainloop_lut` | 0x1c16 | 246 | 83 | inside `mmo_LUT16` |
| `postmainloop_lut` | 0x1c69 | 332 | 4 | inside `mmo_LUT16` |
| `epilogue_lut` | 0x1c6d | 339 | 168 | transfers in `mmo_LUT16` |
| `umo_LUT16RGBA_AlphaOnly` | 0x1d15 | 518 | 137 | inside `mmo_LUT16` |
| `mainloop_lut_rgba_alpha_only` | 0x1d9e | 687 | 35 | inside `umo_LUT16RGBA_AlphaOnly` |
| `postmainloop_lut_rgba_alpha_only` | 0x1dc1 | 725 | 4 | inside `umo_LUT16RGBA_AlphaOnly` |
| `epilogue_lut_rgba_alpha_only` | 0x1dc5 | 732 | 73 | transfers in `umo_LUT16RGBA_AlphaOnly` |
| `umo_LUT16LA_AlphaOnly` | 0x1e0e | 817 | 137 | inside `umo_LUT16RGBA_AlphaOnly` |
| `mainloop_lut_la_alpha_only` | 0x1e97 | 986 | 35 | inside `umo_LUT16LA_AlphaOnly` |
| `postmainloop_lut_la_alpha_only` | 0x1eba | 1024 | 4 | inside `umo_LUT16LA_AlphaOnly` |
| `epilogue_lut_la_alpha_only` | 0x1ebe | 1031 | 73 | transfers in `umo_LUT16LA_AlphaOnly` |

### m_pipecontrol.S

GL context swap in and out on the engines, end of a pixel stream. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_PixEndStream` | 0x6cc7 | 51 | 16 | geif slot 305 |
| `mgeb_SwapOutGL` | 0x6cb3 | 97 | 9 | geif slot 341 |
| `mgeb_SwapInGL` | 0x6c9f | 119 | 9 | geif slot 340 |

### mask.s

Pixel-path mask stage. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Mask` | 0x1b07 | 29 | 55 | geif slot 297; ARM `loadIndexPath` |
| `umo_Mask` | 0x1b07 | 29 | 55 | alias of `mmo_Mask` |
| `mainloop_mask` | 0x1b3e | 107 | 29 | inside `mmo_Mask` |
| `epilogue_mask` | 0x1b5b | 139 | 50 | transfers in `mmo_Mask` |

### material.S

Material parameters and their updates. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_Material` | 0xde94 | 54 | 80 | geif slot 158; distributor relocated word |
| `mLiSetMAmbDiff` | 0xdf4c | 268 | 26 | transfers in `mLiUpdateMtrlColor`, `mgeb_Material` |
| `mLiSetMShininess` | 0xdf27 | 322 | 26 | transfers in `mgeb_Material` |
| `mLiUpdateMtrlColor` | 0xdef0 | 406 | 37 | transfers in `mgeb_LiClrMtrlBack`, `mgeb_LiClrMtrlFront`, `mgeb_LiClrMtrlFrontBack`, `mgeb_LiDisableClrMtrl` |
| `mLiPushMaterial` | 0xe036 | 532 | 24 | transfers in `mLiPushMtrlInit`, `mLiPushMtrlInit2`, `mgeb_Material` |
| `mLiPushMtrlASEI` | 0xe009 | 612 | 30 | transfers in `mLiPushMaterial`, `mLiPushMtrlDiff` |
| `mLiPushMtrlDiff` | 0xdfe4 | 689 | 31 | transfers in `mLiPushMaterial` |
| `mLiPushMtrlShin` | 0xdf72 | 742 | 33 | transfers in `mLiPushMaterial` |
| `mLiPushMtrlInit` | 0xdfb1 | 822 | 46 | transfers in `mgeb_Material` |
| `mLiPushMtrlInit2` | 0xdf9c | 946 | 11 | address loaded as a constant in `mLiPushMtrlInit` |

### math.S

Scalar math subroutines: reciprocal, square root, reciprocal square root. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `misqrt` | 0xd340 | 13 | 11 | unknown entry |
| `msqrt` | 0xd31e | 34 | 12 | unknown entry |
| `minv` | 0xd308 | 56 | 9 | unknown entry |

### matrix.S

Matrix copy, transpose, identity, ortho and frustum helpers. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mMatrixTransposeWW` | 0xd399 | 34 | 12 | unknown entry |
| `mMatrixLoadIdentityC` | 0xd3f7 | 54 | 17 | inside `mMatrixTransposeWW` |
| `mMatrixCopyCW` | 0xd380 | 87 | 25 | inside `mMatrixLoadIdentityC` |
| `mMatrixCopyCC` | 0xd35e | 117 | 32 | inside `mMatrixCopyCW` |
| `mFrustum` | 0xd410 | 151 | 67 | transfers in `mgeb_Frustum_Color`, `mgeb_Frustum_Modelview`, `mgeb_Frustum_Projection`, `mgeb_Frustum_Texture` |
| `mOrtho` | 0xd3ad | 233 | 64 | transfers in `mgeb_Ortho_Color`, `mgeb_Ortho_Modelview`, `mgeb_Ortho_Projection`, `mgeb_Ortho_Texture` |

### matrixfunc.S

Matrix stack commands per matrix mode: push, pop, load, multiply, rotate, scale, translate, frustum, ortho. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_MatrixMode` | 0xbe80 | 40 | 9 | geif slot 51; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_init` |
| `mgeb_LoadIdentity_Modelview` | 0xbe57 | 68 | 36 | geif slot 44; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 3 |
| `mgeb_LoadIdentity_Projection` | 0xbe3c | 132 | 21 | geif slot 45; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_init`, `xform_restore` |
| `mgeb_LoadIdentity_Texture` | 0xbe22 | 187 | 22 | geif slot 46; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_init`, `xform_restore` |
| `mgeb_LoadIdentity_Color` | 0xbe08 | 219 | 23 | geif slot 43; ARM `arm_loadidentity` |
| `mgeb_LoadMatrix_Modelview` | 0xbdec | 271 | 28 | geif slot 48; tokens `HP_GETPOLYGONSTIPPLE`, `HP_MATRIXMODE`; ARM `arm_getpolygonstipple`, `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 4 |
| `mgeb_LoadMatrix_Projection` | 0xbdd0 | 315 | 27 | geif slot 49; tokens `HP_GETPOLYGONSTIPPLE`, `HP_MATRIXMODE`; ARM `arm_getpolygonstipple`, `arm_matrixmode`, `xform_restore` |
| `mgeb_LoadMatrix_Texture` | 0xbdb5 | 358 | 27 | geif slot 50; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_LoadMatrix_Color` | 0xbd99 | 392 | 28 | geif slot 47; ARM `arm_loadmatrixd`, `arm_loadmatrixf` |
| `mgeb_MultMatrix_Modelview` | 0xbd89 | 436 | 9 | geif slot 53; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 6 |
| `mgeb_MultMatrix_Projection` | 0xbd7a | 465 | 8 | geif slot 54; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_MultMatrix_Texture` | 0xbd6c | 494 | 10 | geif slot 55; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_MultMatrix_Color` | 0xbd5e | 515 | 11 | geif slot 52; ARM `arm_multmatrixd`, `arm_multmatrixf` |
| `mgeb_Rotate_Modelview` | 0xbd4e | 546 | 8 | geif slot 75; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 10 |
| `mgeb_Rotate_Projection` | 0xbd3f | 574 | 7 | geif slot 76; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Rotate_Texture` | 0xbd31 | 596 | 9 | geif slot 77; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Rotate_Color` | 0xbd23 | 622 | 10 | geif slot 74; ARM `arm_rotated`, `arm_rotatef` |
| `mgeb_Scale_Modelview` | 0xbd05 | 651 | 28 | geif slot 78; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 11 |
| `mgeb_Scale_Projection` | 0xbce6 | 695 | 29 | geif slot 79; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Scale_Texture` | 0xbcc8 | 743 | 30 | geif slot 80; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Scale_Color` | 0xbca7 | 775 | 32 | geif slot 170; ARM `arm_scaled`, `arm_scalef` |
| `mgeb_Translate_Modelview` | 0xbc89 | 823 | 27 | geif slot 85; ARM `init_ged`, `xform_init`; distributor table 12 |
| `mgeb_Translate_Projection` | 0xbc6a | 872 | 28 | geif slot 86; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Translate_Texture` | 0xbc4b | 920 | 29 | geif slot 87; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Translate_Color` | 0xbc2b | 966 | 30 | geif slot 173; ARM `arm_translated`, `arm_translatef` |
| `mgeb_Frustum_Modelview` | 0xbc1b | 1016 | 8 | geif slot 151; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 5 |
| `mgeb_Frustum_Projection` | 0xbc0c | 1044 | 7 | geif slot 16; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Frustum_Texture` | 0xbbfe | 1066 | 9 | geif slot 17; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged_ucode`, `xform_restore` |
| `mgeb_Frustum_Color` | 0xbbf0 | 1092 | 10 | geif slot 150; ARM `arm_frustum` |
| `mgeb_Ortho_Modelview` | 0xbbe0 | 1121 | 8 | geif slot 56; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 7 |
| `mgeb_Ortho_Projection` | 0xbbd1 | 1149 | 7 | geif slot 57; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Ortho_Texture` | 0xbbc3 | 1171 | 9 | geif slot 58; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_Ortho_Color` | 0xbbb5 | 1197 | 10 | geif slot 159; ARM `arm_ortho` |
| `mgeb_PushMatrix_Modelview` | 0xbb81 | 1226 | 44 | geif slot 71; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 9 |
| `mgeb_PushMatrix_Projection` | 0xbb45 | 1291 | 46 | geif slot 72; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_PushMatrix_Texture` | 0xbb0a | 1355 | 45 | geif slot 73; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_PushMatrix_Color` | 0xbacd | 1418 | 47 | geif slot 70; ARM `arm_pushmatrix` |
| `mgeb_PopMatrix_Modelview` | 0xba88 | 1488 | 46 | geif slot 67; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `init_ged`, `xform_init`, `xform_restore`; distributor table 8 |
| `mgeb_PopMatrix_Projection` | 0xba3a | 1553 | 47 | geif slot 68; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_PopMatrix_Texture` | 0xb9ed | 1622 | 47 | geif slot 69; tokens `HP_MATRIXMODE`; ARM `arm_matrixmode`, `xform_restore` |
| `mgeb_PopMatrix_Color` | 0xb99d | 1692 | 50 | geif slot 66; ARM `arm_popmatrix` |

### mcolormatrix.S

Pixel-path colour-matrix stage, added by AddColorMatrix. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_ColorMatrix` | 0x9767 | 55 | 43 | geif slot 253; ARM `AddColorMatrix` |

### mcomporder.S

Pixel-path component-order reversal, added by AddCompOrder. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_ReverseComp4Order` | 0x6b2f | 65 | 62 | geif slot 280; ARM `AddCompOrder` |

### mdecompose2.S

Primitive decomposition: triangle strips, quads, quad strips, polygons, simple triangles. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DummyDecompose` | 0xca01 | 37 | 7 | address loaded as a constant in `mdc_multipass`, `mgesi_TfanPoly`, `mgesi_TfanPolyEnd`, `mgesi_TfanPolyRestore`, `mgesi_TfanPolyRestoreEdge`, `mgesi_TfanPolyRestoreEnd` and 8 more |
| `mmo_DecomposePolygon` | 0xca86 | 53 | 37 | address loaded as a constant in `mgesi_TfanPoly`, `mgesi_TfanPolyEnd`, `mgesi_TfanPolyRestore`, `mgesi_TfanPolyRestoreEdge`, `mgesi_TfanPolyRestoreEnd`, `mgesi_TfanPolyRestoreSave` and 1 more |
| `mmo_DecomposeQuads` | 0xca3a | 132 | 37 | address loaded as a constant in `mgesi_Quads` |
| `mmo_DummyDecomposeQuadStrip` | 0xc9e1 | 222 | 31 | address loaded as a constant in `mgesi_QuadStrip`, `mgesi_QuadStripRestore`, `mgesi_QuadStripRestoreSave`, `mgesi_QuadStripSave` |
| `mmo_DecomposeQuadStrip` | 0xca60 | 281 | 34 | address loaded as a constant in `mgesi_QuadStrip`, `mgesi_QuadStripRestore`, `mgesi_QuadStripRestoreSave`, `mgesi_QuadStripSave` |
| `mmo_DecomposeSimpleTriangles` | 0xca10 | 350 | 38 | address loaded as a constant in `mgesi_Triangles` |
| `mmo_DecomposeTriangleStripWithSwapEven` | 0xc9b2 | 410 | 34 | address loaded as a constant in `mgesi_TriangleStrip`, `mgesi_TriangleStripRestore`, `mgesi_TriangleStripRestoreSave`, `mgesi_TriangleStripSave` |
| `mmo_DecomposeTriangleStripWithSwapOdd` | 0xc989 | 501 | 26 | address loaded as a constant in `mgesi_TriangleStripRestoreSaveWithSwapOdd`, `mgesi_TriangleStripRestoreWithSwapOdd`, `mgesi_TriangleStripSaveWithSwapOdd`, `mgesi_TriangleStripWithSwapOdd` |

### mdecompress.S

Pixel-path 16-bit depth decompression, added by AddDecompressZ. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DecompressZ16` | 0x9793 | 68 | 106 | geif slot 255; ARM `AddDecompressZ` |

### memove.S

Memory moves between ERAM, WRAM and CRAM. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mCramToWram` | 0xd4a2 | 32 | 16 | unknown entry |
| `mEramToWram` | 0xd45d | 68 | 18 | transfers in `RestoreClipState`, `mgesi_TfanPolyRestoreEdge`, `uEvalLoadState1D`, `uEvalLoadState2D`, `uEvalSwapState1D`, `uEvalSwapState2D` |
| `mEramToEram` | 0xd47f | 108 | 24 | transfers in `mLiUpdateShin`, `mgeb_EramToEram` |

### mexpand.S

32-bit expansion stages for 1- and 2-component pixels. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Expand32_1_4` | 0x6c55 | 43 | 53 | geif slot 257 |
| `mmo_Expand32_2_4` | 0x6c0b | 132 | 52 | geif slot 258 |

### mextract.S

Pixel-path L12A4 extraction, added by AddExtract. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_ExtractL12A4` | 0x91e3 | 71 | 143 | geif slot 282; ARM `AddExtract` |

### minmax.s

Pixel-path min-max stage, added by AddMinMax (ucode/ge_ops.md, "Settling the ties"). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Minmax` | 0x143e | 62 | 52 | geif slot 298; ARM `AddMinMax` |
| `umo_Minmax` | 0x143e | 62 | 52 | alias of `mmo_Minmax` |
| `mainloop_mm` | 0x1472 | 129 | 27 | inside `mmo_Minmax` |
| `epilogue_mm` | 0x148d | 159 | 139 | transfers in `mmo_Minmax` |
| `merge2_mm` | 0x1518 | 318 | 54 | inside `mmo_Minmax` |
| `merge1_mm` | 0x154e | 381 | 49 | transfers in `epilogue_mm` |
| `merge3_mm` | 0x157f | 438 | 46 | transfers in `epilogue_mm` |
| `merge4_mm` | 0x15ad | 492 | 46 | transfers in `epilogue_mm` |
| `uge_MinmaxFill` | 0x15db | 544 | 30 | inside `mmo_Minmax` |

### mmath.S

Sine and cosine of two angles. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mSinCosAB` | 0xd23f | 115 | 119 | transfers in `DrawMSTFanPnt`, `mmo_DrawMSDistAttPntPrim` |

### mmatrix.S

4x4 matrix multiply, CRAM by CRAM into CRAM. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mMatrixMultCCC` | 0xe8a6 | 36 | 343 | transfers in `mgebi_ReferencePlane` |

### mmemove.S

Memory moves from WRAM to CRAM and to the output FIFO. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mWramToCram` | 0xd191 | 33 | 17 | transfers in `mgeb_ContextLoadCram`, `mgeb_LoadCram` |
| `mWramToFifo` | 0xd1a9 | 271 | 102 | transfers in `mges_ContextDeactGED`, `mges_ContextDeactSection`, `mges_ContextDeactivate` |

### mpixelSetup.S

Pixel-path set-up: stream distribution to the next engine, CRAM/ERAM copies, integer-to-float and shift skips. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_PixRasterPosSetup` | 0xa990 | 143 | 315 | geif slot 106; tokens `HP_BITMAP_DLIST`; ARM `PixelRestore`, `SetupPGTG`, `arm_bitmap_dlist`, `do_bitmap` |
| `mgesi_PixQueryCopyOverlap` | 0xa8f7 | 667 | 93 | geif slot 213; ARM `QueryOverlap` |
| `mgeb_StrideEramToCram` | 0xa8bb | 840 | 44 | geif slot 172 |
| `mgeb_FlipXConvKern` | 0xa864 | 906 | 53 | geif slot 148; ARM `__glkonFixConvKernDirection` |
| `mgeb_FlipYConvKern` | 0xa7fe | 992 | 61 | geif slot 149; ARM `__glkonFixConvKernDirection` |
| `mgeb_BitmapApplyOrig` | 0xa7e8 | 1076 | 11 | geif slot 1; ARM `SetupGE_FFT`, `do_bitmap` |
| `mgeb_BitmapApplyMove` | 0xa7cf | 1108 | 14 | geif slot 2; tokens `HP_BITMAP`; ARM `BitmapEndStream`, `arm_bitmap` |
| `mgeb_PixDrawColorSetup` | 0xa7aa | 1151 | 16 | geif slot 59; ARM `SetupGE_IndexStream`, `SetupGE_PerRect`, `X_PixSetupGE` |
| `mgeb_PixLastGECounterSetup` | 0xa79b | 1197 | 9 | geif slot 403; ARM `PixelRestore`, `SetupGE_FFT` |
| `mgebi_PixCurGEIDSetup` | 0xa77f | 1226 | 22 | geif slot 121; tokens `HP_X_PIX_WRITE`; ARM `PixelRestore`, `SendPixelsToPipe`, `StartRbus`, `XPixelRestore`, `arm_x_pix_write` |
| `mgeb_PixPolygonStippleSetup` | 0xa75f | 1277 | 14 | geif slot 62; ARM `SetupGE_PolygonStipple` |
| `mgeb_TransparentBitmapSetup` | 0xa747 | 1306 | 14 | geif slot 88; tokens `HP_BITMAP_DLIST`; ARM `arm_bitmap_dlist` |
| `DoFlushPGPCache` | 0xa71e | 1328 | 34 | transfers in `mgebi_PixEndTransparentBitmap`, `mgesi_FlushPGPCache` |
| `mgesi_FlushPGPCache` | 0xa715 | 1376 | 5 | geif slot 398; ARM `BitmapEndStream`, `CommonPixEnd`, `PixEndConvolve`, `PixEndReadConvolve`, `PixEnd_FFT` |
| `mgebi_PixEndTransparentBitmap` | 0xa6ff | 1391 | 11 | geif slot 96; tokens `HP_BITMAP_DLIST`; ARM `arm_bitmap_dlist` |
| `mgeb_PixEndRGBStream` | 0xa6e8 | 1419 | 23 | geif slot 61; tokens `HP_X_PIX_COPY`, `HP_X_PIX_FINISH`, `HP_X_PIX_READ`; ARM `BitmapEndStream`, `CommonPixEnd`, `PixEndColorTable`, `PixEndReadConvolve`, `PixEndTexColorTable`, `PixEnd_FFT` and 3 more |
| `mgeb_PixEndPolygonStipple` | 0xa6db | 1464 | 8 | geif slot 60; ARM `PixEndConvolve`, `PixEndPolygonStipple` |
| `mgesi_PixConv5GVEntry` | 0xa6be | 1513 | 23 | geif slot 105 |
| `mmo_PixLineNextGE` | 0xa6ad | 1608 | 15 | geif slot 301; ARM `loadColorPath`, `loadLuminancePath`; transfers in `FastRowConv5Epilog` |
| `mmo_SetupHip` | 0xa62a | 1680 | 98 | geif slot 299; ARM `AddHipSetter` |
| `mmo_PixStreamNextGE_BEFWAR` | 0xa614 | 1915 | 22 | geif slot 303; ARM `SetupGE_FFT`, `loadBitmapPath`, `loadColorPath`, `loadConvolutionReadPath`, `loadDepthPath`, `loadIndexPath` and 3 more |
| `mmo_PixStreamNextGE` | 0xa60b | 1980 | 6 | geif slot 304; ARM `SetupGE_FFT`, `loadBitmapPath`, `loadColorPath`, `loadConvolutionReadPath`, `loadDepthPath`, `loadIndexPath` and 3 more |
| `mmo_PixStreamBrdcastCore0ANextGE` | 0xa5fa | 1999 | 11 | geif slot 302; ARM `loadColorTablePath`, `loadConvolutionPath`, `loadPolygonStipplePath` |
| `mgeb_LoadCram` | 0xa5e8 | 2032 | 8 | geif slot 41; tokens `HP_SLOP`; ARM `SetupGE_FFT`, `WriteCram`, `XWriteCram`, `arm_slop` |
| `mgeb_CramToEram` | 0xa5d4 | 2054 | 9 | geif slot 412; ARM `CopyCramToEram` |
| `mgeb_EramToCram` | 0xa5c0 | 2080 | 9 | geif slot 411; ARM `CopyEramToCram` |
| `mgeb_EramToEram` | 0xa5ac | 2107 | 9 | geif slot 142; ARM `mem_copydown_ge` |
| `mmo_CopyFifoLine` | 0xab59 | 2246 | 50 | geif slot 267; ARM `AddCopyFifoLine` |
| `mmo_Shift_Skip` | 0xa570 | 2433 | 35 | geif slot 438; ARM `AddShiftRealFifo` |
| `mmo_I2F_Scale_Skip` | 0xa532 | 2556 | 38 | geif slot 439; ARM `AddI2FScaleRealFifo` |

### mpixout.S

Pixel output stages for GL and X: component packing, polygon stipple, transparent and opaque bitmaps. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_Pixout_8_16NC` | 0xa44e | 90 | 85 | geif slot 310 |
| `mmo_Pixout_8_16` | 0xa4b5 | 228 | 27 | geif slot 309 |
| `mmo_Pixout_2_4NC` | 0xa407 | 308 | 50 | geif slot 312 |
| `mmo_Pixout_2_4` | 0xa3e8 | 404 | 27 | geif slot 311 |
| `mmo_Pixout_RGB_in_RGBA` | 0xa395 | 507 | 60 | geif slot 259 |
| `mmo_Pixout_RGB_in_RGBANC` | 0xa33f | 595 | 57 | geif slot 260 |
| `mmo_Pixout_32` | 0xa2d5 | 687 | 102 | geif slot 261 |
| `mmo_Pixout_32NC` | 0xa276 | 859 | 92 | geif slot 262 |
| `mmo_PixoutCI_4_8` | 0xa214 | 1034 | 77 | geif slot 306 |
| `mmo_PixoutMerge2_4C` | 0xa1c2 | 1128 | 68 | geif slot 307 |
| `mmo_ArbClamp` | 0xa154 | 1332 | 90 | geif slot 264; ARM `AddArbClamp` |
| `mmo_ConvEramToWram` | 0xa132 | 1412 | 19 | geif slot 265; ARM `AddCopyEramToWram` |
| `mmo_unloadConvA` | 0xa105 | 1467 | 16 | geif slot 268; ARM `InitPixGEState` |
| `mmo_unloadConvL` | 0xa0d8 | 1505 | 16 | geif slot 270; ARM `InitPixGEState` |
| `mmo_unloadConvLA` | 0xa0a9 | 1539 | 17 | geif slot 271; ARM `InitPixGEState` |
| `mmo_unloadConvI` | 0xa07c | 1578 | 16 | geif slot 269; ARM `InitPixGEState` |
| `mmo_unloadConvRGBA` | 0xa049 | 1612 | 19 | geif slot 273; ARM `InitPixGEState` |
| `mmo_unloadConvRGB` | 0xa018 | 1645 | 18 | geif slot 272; ARM `InitPixGEState` |
| `mmo_ConvolveOut` | 0xa002 | 1678 | 11 | geif slot 266; ARM `AddConvolutionOutput` |
| `mmo_loadConvA` | 0x9fd7 | 1726 | 13 | geif slot 274; ARM `InitPixGEState` |
| `mmo_loadConvL` | 0x9fa9 | 1760 | 14 | geif slot 276; ARM `InitPixGEState` |
| `mmo_loadConvLA` | 0x9f79 | 1794 | 16 | geif slot 277; ARM `InitPixGEState` |
| `mmo_loadConvI` | 0x9f49 | 1829 | 15 | geif slot 275; ARM `InitPixGEState` |
| `mmo_loadConvRGBA` | 0x9f19 | 1863 | 18 | geif slot 279; ARM `InitPixGEState` |
| `mmo_loadConvRGB` | 0x9eeb | 1899 | 16 | geif slot 278; ARM `InitPixGEState` |
| `mmo_PolygonStippleOut` | 0x9eb1 | 1940 | 23 | geif slot 313; ARM `AddPolygonStippleOutput` |
| `mDoPolygonStippleRotate` | 0x9df3 | 1988 | 80 | transfers in `mgeb_PolygonStippleRotate`, `mgeb_XPolygonStippleRotate` |
| `mgeb_PolygonStippleRotate` | 0x9ddc | 2085 | 13 | geif slot 65; tokens `HP_GETPOLYGONSTIPPLE`; ARM `PolygonStippleGLRotate`, `arm_getpolygonstipple` |
| `mDoPolygonStippleDownloadInner` | 0x9dae | 2112 | 26 | transfers in `mDoPolygonStippleDownload` |
| `mDoPolygonStippleDownload` | 0x9d6b | 2160 | 39 | transfers in `mgesi_PolygonStippleDownload`, `mgesi_XPolygonStippleDownload`, `mmo_DrawTriPrimOffset` |
| `mgesi_PolygonStippleDownload` | 0x9d56 | 2212 | 9 | geif slot 215; ARM `PolygonStippleGLRotate`, `downLoadPolygonStipple` |
| `mmo_X_pixout_8_16` | 0x9cd5 | 2256 | 122 | geif slot 367 |
| `mmo_X_pixout_4` | 0x9c54 | 2359 | 122 | geif slot 368 |
| `mmo_X_pixout_4Comp` | 0x9c14 | 2459 | 59 | geif slot 369 |
| `mmo_X_DrawBitmapOpaque` | 0x9b8f | 2561 | 125 | geif slot 370 |
| `mLASTGE` | 0xa4d4 | 2711 | 69 | transfers in `mmo_Pixout_2_4`, `mmo_Pixout_2_4NC`, `mmo_Pixout_8_16`, `mmo_Pixout_8_16NC`, `mmo_Short_Complex_To_16`, `mmo_Short_Complex_To_8` and 10 more |
| `mgesi_TransparentBitmap` | 0x9b4a | 2838 | 48 | geif slot 111; tokens `HP_BITMAP_DLIST`; ARM `arm_bitmap_dlist` |
| `mod` | 0x9ae9 | 2905 | 12 | transfers in `mgeb_XPolygonStippleRotate` |
| `mgeb_XPolygonStippleRotate` | 0x9a98 | 2955 | 40 | geif slot 165; tokens `HP_X_ROTATESTIPPLE`; ARM `arm_x_rotatestipple` |
| `mgesi_XPolygonStippleDownload` | 0x9a83 | 3010 | 9 | geif slot 216; tokens `HP_X_LOADSTIPPLE`; ARM `arm_x_loadstipple` |

### msepconv.S

Separable convolution stages 3x3, 5x5 and 7x7. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_SepConvolve3x3_124` | 0x9710 | 107 | 86 | geif slot 314 |
| `mmo_SepConvolve5x5_124` | 0x96ac | 424 | 99 | geif slot 315 |
| `mmo_FastSepConvolve5x5_124` | 0x9654 | 769 | 88 | geif slot 316; ARM `AddFastSep5Convolution` |
| `mmo_SepConvolve7x7_124` | 0x95e5 | 1190 | 111 | geif slot 317 |

### mshortcircuit.S

Short-circuit pixel conversions between packed formats. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_shortpass8W` | 0x99b0 | 172 | 48 | geif slot 318 |
| `mmo_short8to16` | 0x998d | 318 | 31 | geif slot 319 |
| `mmo_shortLA8toL12A4` | 0x98fa | 409 | 31 | geif slot 323 |
| `mMerge4_8C` | 0x9a57 | 494 | 38 | transfers in `mmo_short8to16`, `mmo_shortLA8toL12A4` |
| `mMerge4_8C_LastBlk` | 0x9a3d | 616 | 21 | transfers in `mMerge4_8C`, `mmo_short8to16`, `mmo_shortLA8toL12A4` |
| `mmo_short8to4` | 0x9968 | 705 | 32 | geif slot 320 |
| `mmo_short16to4` | 0x9943 | 798 | 32 | geif slot 321 |
| `mmo_short16to8` | 0x991e | 891 | 32 | geif slot 322 |
| `mmo_shortLA16toL12A4` | 0x98d5 | 984 | 32 | geif slot 324 |
| `mmo_short8toRGB5A1` | 0x98b0 | 1081 | 32 | geif slot 325 |
| `mmo_short16toRGB5A1` | 0x988b | 1177 | 32 | geif slot 326 |
| `mmo_shortBGRApass` | 0x9868 | 1269 | 31 | geif slot 327 |
| `mMerge8_16C` | 0x9a10 | 1352 | 39 | transfers in `mmo_short16to4`, `mmo_short16to8`, `mmo_short16toRGB5A1`, `mmo_short8to4`, `mmo_short8toRGB5A1`, `mmo_shortBGRApass` and 1 more |
| `mMerge8_16C_LastBlk` | 0x99f5 | 1491 | 22 | transfers in `mMerge8_16C`, `mmo_short16to4`, `mmo_short16to8`, `mmo_short16toRGB5A1`, `mmo_short8to4`, `mmo_short8toRGB5A1` and 2 more |
| `mmo_Short_Complex_To_8` | 0x9833 | 1618 | 40 | geif slot 436 |
| `mmo_Short_Complex_To_16` | 0x9805 | 1734 | 33 | geif slot 437 |

### msum.S

Pixel-path RGB-to-luminance sum, added by AddSumRGB2L. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_SumRGB2L` | 0x6b9a | 78 | 65 | geif slot 263; ARM `AddSumRGB2L` |

### munpack.S

Vertex-array unpack for lit vertex formats (V3F with colour, normal and texture coordinates). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_UnpackVertexV3F_N3S` | 0x5757 | 291 | 141 | geif slot 381; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_C4UB_N3S` | 0x56ff | 323 | 82 | geif slot 382; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_N3S_T2F` | 0x563d | 407 | 159 | geif slot 385; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_C4UB_N3S_T2F` | 0x55da | 440 | 91 | geif slot 386; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_N3S_T2S` | 0x5504 | 533 | 189 | geif slot 389; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_C4UB_N3S_T2S` | 0x549e | 573 | 96 | geif slot 390; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_LGT` | 0x5470 | 605 | 36 | geif slot 391; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_C4UB_LGT` | 0x542c | 632 | 59 | geif slot 392; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_T2F_LGT` | 0x53f6 | 659 | 44 | geif slot 393; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_C4UB_T2F_LGT` | 0x53a8 | 689 | 67 | geif slot 394; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_T2S_LGT` | 0x5368 | 720 | 53 | geif slot 395; address loaded as a constant in `mGL_EM_Initialize` |
| `mmo_UnpackVertexV3F_C4UB_T2S_LGT` | 0x5312 | 752 | 75 | geif slot 396; address loaded as a constant in `mGL_EM_Initialize` |

### phong.S

Phong-shaded triangle output with per-pixel normalise and light. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DrawTriPrimPhong` | 0x9296 | 85 | 523 | unknown entry |
| `normalize_and_light` | 0x952c | 727 | 35 | transfers in `mmo_DrawTriPrimPhong` |

### pi.S

Performance instruments start and stop. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_StartInstruments` | 0x494f | 37 | 18 | geif slot 420; tokens `HP_READ_INSTRUMENTS`, `HP_START_INSTRUMENTS`; ARM `arm_read_instruments`, `arm_start_instruments` |
| `mgesi_StopInstruments` | 0x4905 | 81 | 70 | geif slot 421; tokens `HP_READ_INSTRUMENTS`, `HP_STOP_INSTRUMENTS`; ARM `arm_read_instruments`, `arm_stop_instruments` |

### pntclip.S

Point clipping against the user planes and the view frustum. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mClipPntUserAndFrustum` | 0xe75e | 54 | 82 | address loaded as a constant in `mGL_EM_Initialize`, `mmo_DecomposePoints` |

### point.S

Multisample point tables and point size. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgebi_PointSize_Select` | 0x61e0 | 37 | 16 | geif slot 179 |
| `mgebi_PointSize_Feedback` | 0x61c6 | 69 | 16 | geif slot 178 |
| `mgebi_PointSize_Aliased` | 0x6163 | 177 | 81 | geif slot 177 |
| `mgebi_PointSize_AlphaAA` | 0x612c | 396 | 51 | geif slot 97 |
| `mgebi_PointSize_MS` | 0x6094 | 589 | 95 | geif slot 98 |
| `MSPoint_Print_Scratch_Tables` | 0x5fbe | 858 | 120 | inside `mgebi_PointSize_MS` |
| `MSPoint_Init_Samples` | 0x5e9e | 927 | 66 | transfers in `mgeb_ComputeMSPointTables` |
| `MSPoint_Init` | 0x5d94 | 1056 | 180 | transfers in `mgeb_ComputeMSPointTables` |
| `MSPoint_Sort` | 0x5ccc | 1200 | 118 | transfers in `mgeb_ComputeMSPointTables` |
| `MSPoint_Pack` | 0x5c5a | 1428 | 74 | transfers in `mgeb_ComputeMSPointTables` |
| `mgeb_ComputeMSPointTables` | 0x5bab | 1572 | 77 | geif slot 422; ARM `initMSPointTablesGlobal` |
| `mgeb_SetMSPointTables` | 0x5b96 | 1871 | 11 | geif slot 423; tokens `HP_SAMPLEPATTERN`; ARM `arm_samplepattern`, `init_multisample` |

### polygon.S

Polygon set-up for render, select and feedback modes, and polygon mode. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_PolygonSetup_Render` | 0x6216 | 37 | 28 | geif slot 163 |
| `mgeb_PolygonSetup_Select` | 0x6208 | 84 | 11 | geif slot 164 |
| `mgeb_PolygonSetup_Feedback` | 0x61fa | 115 | 10 | geif slot 162 |
| `mPolymodeSetup` | 0x6237 | 156 | 23 | transfers in `mgeb_PolygonSetup_Feedback`, `mgeb_PolygonSetup_Render`, `mgeb_PolygonSetup_Select` |

### polymode.S

Triangle output in line or point polygon mode. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DrawTriPolymodePrim` | 0xda68 | 80 | 306 | address loaded as a constant in `mPolymodeSetup` |

### primmtrllight.S

Lighting with per-primitive material changes. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mLiPrimMtrlInit` | 0xd6ef | 57 | 51 | transfers in `mmo_LighterGeneral` |
| `mLiPrimShinLoop` | 0xd60e | 218 | 74 | transfers in `mLiEndPrimShinLp`; address loaded as a constant in `mLiPrimMtrlCopyEnd`, `mLiPrimMtrlInit` |
| `mLiPrmMtrlFrntClrAccmEnd` | 0xd690 | 432 | 13 | address loaded as a constant in `mLiPrimShinLoop` |
| `mLiPrmMtrlBackClrInitAccm` | 0xd676 | 487 | 20 | address loaded as a constant in `mLiPrimShinLoop`, `mLiPrmMtrlBackClrAccmEnd` |
| `mLiPrmMtrlBackClrAccmEnd` | 0xd667 | 561 | 8 | address loaded as a constant in `mLiPrmMtrlBackClrInitAccm` |
| `mLiEndPrimShinLp` | 0xd7d9 | 604 | 33 | transfers in `mLiPrmMtrlFrntClrAccmEnd`; address loaded as a constant in `mLiPrmMtrlBackClrInitAccm` |
| `mLiPrimMtrlFinalLi` | 0xd726 | 737 | 30 | address loaded as a constant in `mLiPrimMtrlInit` |
| `mLiPrimMtrlCopyStckCmpn` | 0xd745 | 831 | 62 | transfers in `mLiPrimMtrlIndxFinalLi`; address loaded as a constant in `mLiPrimMtrlFinalLi`, `mLiPrimMtrlIndxFinalLi` |
| `mLiPrimMtrlCopyCmpn` | 0xd786 | 1052 | 16 | transfers in `mLiPrimMtrlIndxFinalLi`; address loaded as a constant in `mLiPrimMtrlFinalLi`, `mLiPrimMtrlIndxFinalLi` |
| `mLiPrimMtrlCpFrntEnd` | 0xd6a7 | 1111 | 29 | address loaded as a constant in `mLiPrimMtrlInit` |
| `mLiPrimMtrlCopyEnd` | 0xd6c4 | 1174 | 40 | address loaded as a constant in `mLiPrimMtrlInit` |
| `mLiClrMtrlFinalLi` | 0xd831 | 1304 | 43 | address loaded as a constant in `mgeb_LiEnableClrMtrl`, `mgeb_RGBA_Mode` |
| `mLiColorMtrlCopy` | 0xd808 | 1403 | 36 | transfers in `mLiClrMtrlFinalLi`; address loaded as a constant in `mLiPrimMtrlInit` |
| `mLiFinalLiEqu` | 0xd796 | 1511 | 63 | transfers in `mLiColorMtrlCopy`; address loaded as a constant in `mLiPrimMtrlInit` |

### push_attrib.S

Restore of transform attributes, FFT factor initialisation. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_InitFFTFactors` | 0x37de | 36 | 13 | geif slot 431; tokens `HP_LOAD_GE_XFORM_ATTRIB`; ARM `arm_load_ge_xform_attrib` |
| `mgeb_RestoreXformAttribs` | 0x37de | 36 | 13 | alias of `mgeb_InitFFTFactors` |

### raster.S

Raster-board commands: register writes, flush, accumulation, current raster, colour-index and RGBA modes, texture address set-up, clipmap transform. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_PassThrough` | 0x3a5b | 39 | 18 | geif slot 211; tokens `HP_PASSTHROUGH`; ARM `arm_passthrough` |
| `mgeb_DeathCommand` | 0x3a52 | 83 | 1 | geif slot 404 |
| `mges_NullCommand` | 0x3a45 | 98 | 6 | geif slot 193; ARM `init_ged`; distributor relocated word,table 14 |
| `mgebi_NullCommand` | 0x3a32 | 119 | 13 | geif slot 176; tokens `HP_CONTEXT_MOPUP`; ARM `PixEndRGBLine`, `PixelRestore`, `SetupGE_ColorLine`, `SetupGE_LuminanceLine`, `activate_setcurrentge`, `arm_context_mopup` and 1 more; distributor relocated word |
| `mges_DiagDeactivate` | 0x3a25 | 146 | 6 | geif slot 191; tokens `HP_GED_VERIF_DUMP`; ARM `arm_ged_verif_dump`, `diag_ged_deactivate_context` |
| `mgebi_ShadeModel` | 0x3a0a | 169 | 22 | geif slot 99; tokens `HP_SHADEMODEL`; ARM `arm_shademodel`, `light_pop` |
| `mgesi_TbusRegWrite` | 0x39fd | 215 | 10 | geif slot 107; tokens `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`, `HP_BLENDCOLOR`, `HP_BUFFER_CONFIG`, `HP_CLEAR`, `HP_COLORMASK`, `HP_VALIDATE_CLIP`; ARM `SetupReadbackTF`, `arm_bind_linear_texture`, `arm_bind_texture`, `arm_blendcolor`, `arm_buffer_config`, `arm_clear` and 16 more |
| `mgesi_IMPtbusRegWrite` | 0x39e7 | 242 | 22 | geif slot 108 |
| `mges_TbusRegWriteNoIncr` | 0x39da | 282 | 9 | geif slot 227; ARM `tbus_regwritenoincr` |
| `mgesi_AlphaFunc` | 0x39c8 | 307 | 18 | geif slot 91; tokens `HP_ALPHAFUNC`; ARM `arm_alphafunc`, `color_pop` |
| `mgesi_AlphaTest` | 0x39b8 | 352 | 16 | geif slot 92; ARM `color_pop`, `d_alpha_test`, `e_alpha_test` |
| `mgesi_TBUS_1` | 0x39ab | 396 | 10 | geif slot 225; ARM `init_ged`; distributor table 15 |
| `mges_TBUS_1` | 0x399e | 425 | 9 | geif slot 0; tokens `HP_CONTEXT_ACTIVATE`; ARM `arm_context_activate`, `deactivate_arm`, `diag_tbus_1`, `diag_tbus_1_noid`, `init_simulator_hacks` |
| `mgesi_BshRegisterWrite` | 0x3991 | 452 | 12 | geif slot 194; ARM `init_ged`; distributor table 0 |
| `mgesi_BshRegisterWriteN` | 0x3972 | 485 | 31 | geif slot 102; tokens `HP_BIND_2D_CLIPMAP_TEXTURE`, `HP_BIND_3D_MIPMAP_TEXTURE`, `HP_BIND_3D_TEXTURE`, `HP_BIND_BICUBIC_TEXTURE`, `HP_SHADOW_TEXTURE`; ARM `arm_bind_2d_clipmap_texture`, `arm_bind_3d_mipmap_texture`, `arm_bind_3d_texture`, `arm_bind_bicubic_texture`, `arm_shadow_texture` |
| `mgesi_IMPbshRegisterWrite` | 0x395e | 574 | 20 | geif slot 195; ARM `init_ged`; distributor table 31 |
| `mgeb_Enable_Normalize` | 0x394e | 614 | 11 | geif slot 11; ARM `e_normalize` |
| `mgeb_Disable_Normalize` | 0x393e | 647 | 11 | geif slot 7; ARM `d_normalize` |
| `mgeb_RGBA_Mode` | 0x3923 | 682 | 25 | geif slot 333; tokens `HP_BUFFER_CONFIG`; ARM `arm_buffer_config` |
| `mgeb_CI_Mode` | 0x38fd | 754 | 31 | geif slot 334; tokens `HP_BUFFER_CONFIG`; ARM `arm_buffer_config` |
| `mgesi_UserColor` | 0x38e5 | 842 | 24 | geif slot 342; tokens `HP_BLENDCOLOR`; ARM `arm_blendcolor`, `color_pop` |
| `mgesi_Accum` | 0x38c0 | 901 | 34 | geif slot 337 |
| `mgesi_Accum32` | 0x3894 | 970 | 38 | geif slot 434 |
| `mgebi_ErrQuery` | 0x387d | 1052 | 17 | geif slot 339; tokens `HP_GETERROR`; ARM `arm_geterror` |
| `mgeb_SetCurrentRaster` | 0x384b | 1093 | 39 | geif slot 366; tokens `HP_SET_CURRENT_RASTER`; ARM `arm_set_current_raster` |
| `mgesi_FlushRM` | 0x380b | 1149 | 46 | geif slot 399; tokens `HP_FINISH`, `HP_FLUSH_RASTER`; ARM `arm_finish`, `arm_flush_raster`, `reset_imps` |
| `mgeb_ClipmapXform` | 0x37f9 | 1238 | 17 | geif slot 427; tokens `HP_BIND_2D_CLIPMAP_TEXTURE`; ARM `arm_bind_2d_clipmap_texture` |

### refplane.S

Reference-plane commands. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgebi_ReferencePlane_Enable` | 0x5b2f | 41 | 13 | geif slot 117; ARM `activate_private`, `e_reference_plane`, `resolve_viewport` |
| `mgebi_ReferencePlane_Disable` | 0x5b15 | 75 | 21 | geif slot 118; ARM `d_reference_plane` |
| `mgebi_ReferencePlane` | 0x59a2 | 127 | 239 | geif slot 376; ARM `init_ged`; distributor table 16 |
| `mRefPlane` | 0x5b4c | 464 | 73 | transfers in `mgebi_ReferencePlane`, `mgebi_ReferencePlane_Enable` |

### scalebias.s

Pixel-path scale-and-bias stage and the depth final stage. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_ScaleBias` | 0x1f07 | 67 | 112 | geif slot 328; ARM `AddF2ISignScaleBias`, `AddPostClrMtrxScaleBias`, `AddPostClrMtrxScaleBias1Cmpnt`, `AddScaleBias`, `AddScaleBias1Cmpnt`, `AddSignedBias` |
| `umo_ScaleBias` | 0x1f07 | 67 | 112 | alias of `mmo_ScaleBias` |
| `umo_DepthFinalCont` | 0x1f77 | 198 | 11 | transfers in `umo_DepthFinal` |
| `mainloop_sb` | 0x1f82 | 217 | 29 | inside `umo_DepthFinalCont` |
| `epilogue_sb` | 0x1f9f | 249 | 51 | transfers in `umo_DepthFinalCont` |
| `umo_DepthFinal` | 0x1fd2 | 313 | 59 | inside `umo_DepthFinalCont` |

### select.S

Selection mode: begin and end, name stack. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_InitNames` | 0xc12e | 36 | 12 | geif slot 153; tokens `HP_INITNAMES`; ARM `arm_initnames` |
| `mgeb_PopName` | 0xc0e0 | 70 | 17 | geif slot 167; tokens `HP_POPNAME`; ARM `arm_popname` |
| `mgeb_PushName` | 0xc086 | 113 | 22 | geif slot 168; tokens `HP_PUSHNAME`; ARM `arm_pushname` |
| `mgeb_LoadName` | 0xc02c | 165 | 19 | geif slot 155; tokens `HP_LOADNAME`; ARM `arm_loadname` |
| `mgeb_BgnSelectMode` | 0xc016 | 219 | 12 | geif slot 126; tokens `HP_RENDERMODE`; ARM `arm_rendermode` |
| `mgeb_EndSelectMode` | 0xc002 | 252 | 10 | geif slot 139; tokens `HP_RENDERMODE`; ARM `arm_rendermode` |
| `mSelectFlush` | 0xc159 | 282 | 79 | transfers in `mgeb_BgnSelectMode`, `mgeb_EndSelectMode`, `mgeb_InitNames`, `mgeb_LoadName`, `mgeb_PopName`, `mgeb_PushName` |

### selectmods.S

Selection hit recording per primitive type. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_SelectTriangle` | 0xbecc | 70 | 42 | address loaded as a constant in `mgeb_PolygonSetup_Select` |
| `mmo_SelectLine` | 0xbfaf | 138 | 34 | address loaded as a constant in `mgeb_LineWidth_Select` |
| `mmo_SelectPoint` | 0xbf6d | 203 | 26 | address loaded as a constant in `mgebi_PointSize_Select` |
| `mmo_SelectRasterPos` | 0xbf2f | 261 | 24 | transfers in `mmo_SaveRasterPos` |
| `mRecordHit` | 0xbe8f | 316 | 34 | transfers in `mmo_SelectLine`, `mmo_SelectPoint`, `mmo_SelectRasterPos`, `mmo_SelectTriangle` |

### shiftadd.s

Pixel-path shift-and-add stage. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_ShiftAdd` | 0x192e | 33 | 55 | geif slot 329; ARM `AddCopyFloat`, `AddShiftAdd`, `AddUnsignedIntShift` |
| `umo_ShiftAdd` | 0x192e | 33 | 55 | alias of `mmo_ShiftAdd` |
| `shift_left` | 0x1965 | 111 | 9 | inside `mmo_ShiftAdd` |
| `mainloop_sa_ls` | 0x196e | 123 | 19 | inside `mmo_ShiftAdd` |
| `epilogue_sa_ls` | 0x1981 | 145 | 26 | transfers in `shift_left` |
| `shift_right` | 0x199b | 175 | 9 | transfers in `mmo_ShiftAdd` |
| `mainloop_sa_rs` | 0x19a4 | 187 | 19 | inside `mmo_ShiftAdd` |
| `epilogue_sa_rs` | 0x19b7 | 209 | 26 | transfers in `shift_right` |
| `umo_ShiftAdd_RGB` | 0x19d1 | 247 | 55 | inside `mmo_ShiftAdd` |
| `shift_left_rgb` | 0x1a08 | 325 | 9 | inside `umo_ShiftAdd_RGB` |
| `mainloop_sa_ls_rgb` | 0x1a11 | 337 | 21 | inside `umo_ShiftAdd_RGB` |
| `epilogue_sa_ls_rgb` | 0x1a26 | 361 | 20 | transfers in `shift_left_rgb` |
| `shift_right_rgb` | 0x1a3a | 390 | 9 | transfers in `umo_ShiftAdd_RGB` |
| `mainloop_sa_rs_rgb` | 0x1a43 | 402 | 21 | inside `umo_ShiftAdd_RGB` |
| `epilogue_sa_rs_rgb` | 0x1a58 | 426 | 20 | transfers in `shift_right_rgb` |
| `umo_ShiftAdd_Luminance` | 0x1a6c | 463 | 55 | inside `umo_ShiftAdd_RGB` |
| `shift_left_luminance` | 0x1aa3 | 541 | 9 | inside `umo_ShiftAdd_Luminance` |
| `mainloop_sa_ls_luminance` | 0x1aac | 553 | 21 | inside `umo_ShiftAdd_Luminance` |
| `epilogue_sa_ls_luminance` | 0x1ac1 | 577 | 20 | transfers in `shift_left_luminance` |
| `shift_right_luminance` | 0x1ad5 | 606 | 9 | transfers in `umo_ShiftAdd_Luminance` |
| `mainloop_sa_rs_luminance` | 0x1ade | 618 | 21 | inside `umo_ShiftAdd_Luminance` |
| `epilogue_sa_rs_luminance` | 0x1af3 | 642 | 20 | transfers in `shift_right_luminance` |

### sprite.S

Sprite (SGIX_sprite) rotation modes. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DirtySpriteModule` | 0x8669 | 109 | 6 | address loaded as a constant in `mmo_DirtyPrePathModule` |
| `mSpriteAxial` | 0x8800 | 167 | 86 | geif slot 371; ARM `initSpriteState` |
| `mSpriteObject` | 0x86d3 | 235 | 170 | geif slot 372; transfers in `mSpriteEye` |
| `mSpriteEye` | 0x87f7 | 365 | 1 | geif slot 373 |
| `mSpriteRotateV0OntoV1` | 0x8894 | 390 | 59 | transfers in `mSpriteAxial`, `mSpriteObject` |
| `mSpriteRotateMatrix` | 0x8676 | 466 | 54 | transfers in `mSpriteAxial`, `mSpriteObject` |
| `mMatrixMultCCWNoFetch` | 0x88e9 | 605 | 63 | transfers in `mSpriteRotateMatrix`, `mSpriteRotateV0OntoV1` |

### subdiv.S

Patch subdivision entry and tags. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_Subdiv` | 0x442e | 36 | 6 | geif slot 424; tokens `HP_SUBDIV_PATCH_PARAMETER`; ARM `arm_subdiv_patch_parameter` |
| `mges_SubdivTag` | 0x4421 | 59 | 6 | geif slot 425; tokens `HP_SUBDIV_PATCH`; ARM `arm_subdiv_patch` |
| `mgesi_SubdivEntry` | 0x4414 | 82 | 7 | geif slot 426; distributor relocated word |

### texenv.S

Texture environment. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mValidateTexenvMode` | 0x594d | 54 | 43 | transfers in `mgebi_TexEnv`, `mgebi_TexEnvComps` |
| `mTexEnvDone` | 0x5942 | 111 | 4 | transfers in `mgebi_TexEnv` |
| `mgebi_TexEnv` | 0x5879 | 137 | 89 | geif slot 109; tokens `HP_TEXENVF`, `HP_TEXENVI`; ARM `arm_texenvf`, `arm_texenvi`, `initTextureState` |
| `mgebi_TexEnvComps` | 0x5857 | 238 | 17 | geif slot 110; tokens `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`; ARM `arm_bind_linear_texture`, `arm_bind_texture`, `initTextureState`, `texture_pop` |

### texgen.S

Texture-coordinate generation modes and planes. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mTexGenResolve` | 0xd11e | 57 | 65 | transfers in `mTexGenEyeLin`, `mTexGenEyeLineDist`, `mTexGenEyePointDist`, `mTexGenObjLin`, `mTexGenObjLineDist`, `mTexGenObjPointDist` and 3 more |
| `mTexGenSph` | 0xcd59 | 189 | 10 | transfers in `mgeb_TexGen` |
| `mTexGenObjLin` | 0xcd3f | 223 | 10 | transfers in `mgeb_TexGen` |
| `mTexGenEyeLin` | 0xcd21 | 249 | 12 | transfers in `mgeb_TexGen` |
| `mTexGenEyePointDist` | 0xcd03 | 278 | 12 | transfers in `mgeb_TexGen` |
| `mTexGenObjPointDist` | 0xcce9 | 306 | 10 | transfers in `mgeb_TexGen` |
| `mTexGenEyeLineDist` | 0xcccb | 333 | 12 | transfers in `mgeb_TexGen` |
| `mTexGenObjLineDist` | 0xccb1 | 361 | 10 | transfers in `mgeb_TexGen` |
| `mTexGenObjPlane` | 0xcc9e | 382 | 10 | transfers in `mgeb_TexGen` |
| `mTexGenEyePlane` | 0xcc6e | 402 | 32 | transfers in `mgeb_TexGen` |
| `mTexGenObjPoint` | 0xcc43 | 443 | 20 | transfers in `mgeb_TexGen` |
| `mTexGenEyePoint` | 0xcbff | 469 | 43 | transfers in `mgeb_TexGen` |
| `mTexGenObjLine` | 0xcbbe | 518 | 41 | transfers in `mgeb_TexGen` |
| `mTexGenEyeLine` | 0xcb59 | 556 | 77 | transfers in `mgeb_TexGen` |
| `mgeb_TexGen_Enable` | 0xcb39 | 623 | 12 | geif slot 84; ARM `e_texgen_q`, `e_texgen_r`, `e_texgen_s`, `e_texgen_t` |
| `mgeb_TexGen_Disable` | 0xcb19 | 654 | 12 | geif slot 83; ARM `d_texgen_q`, `d_texgen_r`, `d_texgen_s`, `d_texgen_t` |
| `mgeb_TexGen` | 0xcabe | 688 | 59 | geif slot 82; tokens `HP_TEXGENF`; ARM `arm_texgenf`, `texture_pop` |
| `mmo_TexGenObjPoint_ST` | 0xce98 | 870 | 77 | address loaded as a constant in `mTexGenObjPointDist` |
| `mmo_TexGenObjPoint_RQ` | 0xcef3 | 961 | 77 | address loaded as a constant in `mTexGenObjPointDist` |
| `mmo_TexGenObjLine_ST` | 0xcd7e | 1057 | 121 | address loaded as a constant in `mTexGenObjLineDist` |
| `mmo_TexGenObjLine_RQ` | 0xce0b | 1216 | 121 | address loaded as a constant in `mTexGenObjLineDist` |
| `mmo_TexGenEyePoint_ST` | 0xd068 | 1372 | 77 | address loaded as a constant in `mTexGenEyePointDist` |
| `mmo_TexGenEyePoint_RQ` | 0xd0c3 | 1463 | 77 | address loaded as a constant in `mTexGenEyePointDist` |
| `mmo_TexGenEyeLine_ST` | 0xcf4e | 1559 | 121 | address loaded as a constant in `mTexGenEyeLineDist` |
| `mmo_TexGenEyeLine_RQ` | 0xcfdb | 1718 | 121 | address loaded as a constant in `mTexGenEyeLineDist` |

### texture.S

Texture binding, scale and bias, the texture-memory load FIFO and the texture address. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgebi_Texture` | 0x43f3 | 85 | 29 | geif slot 100; tokens `HP_ACTIVE_TEXTURE`, `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`, `HP_GETCONVOLUTIONFILTER`, `HP_GETSEPARABLEFILTER`, `HP_READPIXELS`; ARM `arm_active_texture`, `arm_bind_linear_texture`, `arm_bind_texture`, `arm_getconvolutionfilter`, `arm_getseparablefilter`, `arm_readpixels` and 7 more |
| `mgebi_UpdateTexturing` | 0x43bd | 170 | 49 | geif slot 101; tokens `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`; ARM `arm_bind_linear_texture`, `arm_bind_texture` |
| `mgeb_SkipNextTextureAddr` | 0x43ae | 301 | 9 | geif slot 122; tokens `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`; ARM `arm_bind_linear_texture`, `arm_bind_texture` |
| `mgebi_Bind2dMipmapTexture` | 0x42d3 | 367 | 192 | geif slot 428; ARM `init_ged`; distributor table 32 |
| `mgesi_RestoreTextureAddress` | 0x4293 | 644 | 35 | geif slot 430; ARM `activate_texture` |
| `mgesi_FillTMLoadFifo` | 0x4278 | 721 | 27 | geif slot 123; tokens `HP_BIND_DETAIL_TEXTURE`, `HP_BIND_LINEAR_TEXTURE`, `HP_BIND_TEXTURE`, `HP_FREE_ARM_TEX_CACHE`; ARM `SetupSubtexload`, `activate_texture`, `arm_bind_detail_texture`, `arm_bind_linear_texture`, `arm_bind_texture`, `arm_free_arm_tex_cache` and 2 more |
| `mgebi_TextureScaleBias` | 0x424e | 790 | 34 | geif slot 429; ARM `init_ged`; distributor table 33 |

### ucolormatrix.s

Colour-matrix inner loop. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uColorMatrix` | 0x298a | 59 | 4 | transfers in `mmo_ColorMatrix` |
| `clrmtrixloop` | 0x298e | 68 | 20 | inside `uColorMatrix` |

### ucull.s

Face culling. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_FaceCull` | 0x0c76 | 29 | 17 | address loaded as a constant in `mLiPushMtrlInit`, `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `umo_FaceCull` | 0x0c76 | 29 | 17 | alias of `mmo_FaceCull` |
| `lCU1` | 0x0c87 | 47 | 54 | inside `mmo_FaceCull` |
| `lCU2` | 0x0cbd | 104 | 9 | transfers in `lCU1` |

### udecompose.s

Primitive decomposition of strips, lines and triangles. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DecomposeTriangleStrip` | 0x0cc6 | 20 | 11 | address loaded as a constant in `mgesi_TriangleStrip`, `mgesi_TriangleStripRestore`, `mgesi_TriangleStripRestoreSave`, `mgesi_TriangleStripSave`, `mgesi_TriangleStripWithSwapOdd` |
| `umo_DecomposeTriangleStrip` | 0x0cc6 | 20 | 11 | alias of `mmo_DecomposeTriangleStrip` |
| `lDE2` | 0x0cd1 | 32 | 10 | inside `mmo_DecomposeTriangleStrip` |
| `mmo_DecomposeTriangles` | 0x0cdb | 49 | 10 | inside `mmo_DecomposeTriangleStrip` |
| `umo_DecomposeTriangles` | 0x0cdb | 49 | 10 | alias of `mmo_DecomposeTriangles` |
| `lDE9` | 0x0ce5 | 60 | 21 | inside `mmo_DecomposeTriangles` |
| `mmo_DecomposeLineStrip` | 0x0cfa | 90 | 11 | address loaded as a constant in `mgesi_LineStrip`, `mgesi_LineStripCopyAndIgnoreV0`, `mgesi_LineStripCopyV0`, `mgesi_LineStripRestoreV0`, `mgesi_LineStripSaveAndIgnoreV0`, `mgesi_LineStripSaveV0` |
| `umo_DecomposeLineStrip` | 0x0cfa | 90 | 11 | alias of `mmo_DecomposeLineStrip` |
| `lDE3` | 0x0d05 | 102 | 11 | inside `mmo_DecomposeLineStrip` |
| `mmo_DecomposePoints` | 0x0d10 | 120 | 9 | address loaded as a constant in `mgeb_RasterPos`, `mgesi_Points` |
| `umo_DecomposePoints` | 0x0d10 | 120 | 9 | alias of `mmo_DecomposePoints` |
| `lDE6` | 0x0d19 | 131 | 12 | inside `mmo_DecomposePoints` |
| `mmo_DecomposeTriangleFan` | 0x0d25 | 150 | 11 | address loaded as a constant in `mgesi_TfanPoly`, `mgesi_TfanPolyEnd`, `mgesi_TfanPolyRestore`, `mgesi_TfanPolyRestoreEdge`, `mgesi_TfanPolyRestoreEnd`, `mgesi_TfanPolyRestoreSave` and 1 more |
| `umo_DecomposeTriangleFan` | 0x0d25 | 150 | 11 | alias of `mmo_DecomposeTriangleFan` |
| `lDE7` | 0x0d30 | 162 | 11 | inside `mmo_DecomposeTriangleFan` |

### udecompose2.s

Simple triangle-strip decomposition. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_DummyDecompose` | 0x0d3b | 13 | 15 | unknown entry |
| `umo_DecomposeSimpleTriangleStrip` | 0x0d4a | 41 | 13 | inside `umo_DummyDecompose` |
| `lDE4` | 0x0d57 | 55 | 18 | inside `umo_DecomposeSimpleTriangleStrip` |

### udeform.s

Deformation of coordinates and texture coordinates. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DeformCoord` | 0x2ab8 | 51 | 19 | address loaded as a constant in `mmo_DirtyDeformModule` |
| `umo_DeformCoord` | 0x2ab8 | 51 | 19 | alias of `mmo_DeformCoord` |
| `loopDC` | 0x2acb | 71 | 28 | inside `mmo_DeformCoord` |
| `mmo_DeformCoordTexture` | 0x2ae7 | 107 | 26 | address loaded as a constant in `mmo_DirtyDeformModule` |
| `umo_DeformCoordTexture` | 0x2ae7 | 107 | 26 | alias of `mmo_DeformCoordTexture` |
| `loopDCT` | 0x2b01 | 134 | 49 | inside `mmo_DeformCoordTexture` |
| `mmo_DeformTexture` | 0x2b32 | 193 | 19 | address loaded as a constant in `mmo_DirtyDeformModule` |
| `umo_DeformTexture` | 0x2b32 | 193 | 19 | alias of `mmo_DeformTexture` |
| `loopDT` | 0x2b45 | 213 | 28 | inside `mmo_DeformTexture` |
| `mmo_DeformCoordNormal` | 0x2b61 | 252 | 24 | address loaded as a constant in `mmo_DirtyDeformModule` |
| `umo_DeformCoordNormal` | 0x2b61 | 252 | 24 | alias of `mmo_DeformCoordNormal` |
| `loopDCN` | 0x2b79 | 277 | 46 | inside `mmo_DeformCoordNormal` |
| `mmo_DeformCoordNormalTexture` | 0x2ba7 | 334 | 30 | address loaded as a constant in `mmo_DirtyDeformModule` |
| `umo_DeformCoordNormalTexture` | 0x2ba7 | 334 | 30 | alias of `mmo_DeformCoordNormalTexture` |
| `loopDCNT` | 0x2bc5 | 365 | 67 | inside `mmo_DeformCoordNormalTexture` |
| `mDeformation3_1Inverse` | 0x2c08 | 453 | 99 | transfers in `mmo_DeformCoordNormal`, `mmo_DeformCoordNormalTexture` |
| `uDeformation3_1Inverse` | 0x2c08 | 453 | 99 | alias of `mDeformation3_1Inverse` |

### udrawtri.s

Triangle and quad output. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_DrawTri` | 0x288c | 42 | 12 | address loaded as a constant in `mGL_CM_Initialize`, `mgeb_PolygonSetup_Render` |
| `umo_DrawTri` | 0x288c | 42 | 12 | alias of `mmo_DrawTri` |
| `uDTList` | 0x2898 | 55 | 5 | transfers in `mmo_DrawTri` |
| `lDI3` | 0x289d | 63 | 45 | inside `uDTList` |
| `mmo_DrawQuad` | 0x28ca | 115 | 12 | address loaded as a constant in `mGL_CM_Initialize`, `mgeb_PolygonSetup_Render` |
| `umo_DrawQuad` | 0x28ca | 115 | 12 | alias of `mmo_DrawQuad` |
| `uDQList` | 0x28d6 | 128 | 5 | transfers in `mmo_DrawQuad` |
| `lDI4` | 0x28db | 136 | 46 | inside `uDQList` |
| `mmo_DrawTriPrim` | 0x2909 | 189 | 5 | transfers in `mmo_DrawQuad`, `mmo_DrawTri` |
| `umo_DrawTriPrim` | 0x2909 | 189 | 5 | alias of `mmo_DrawTriPrim` |
| `lDI1` | 0x290e | 197 | 124 | inside `mmo_DrawTriPrim` |

### ueval1D.s

1D evaluator commands: map spec, map data, grid, strip. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_EvalMapSpec1D` | 0x0053 | 114 | 73 | geif slot 146; ARM `init_ged`; distributor table 27 |
| `ugeb_EvalMapSpec1D` | 0x0053 | 114 | 73 | alias of `mgeb_EvalMapSpec1D` |
| `mgeb_EvalMapData1D` | 0x009c | 220 | 38 | geif slot 13; tokens `HP_MAPDATA1D`; ARM `arm_mapdata1d` |
| `ugeb_EvalMapData1D` | 0x009c | 220 | 38 | alias of `mgeb_EvalMapData1D` |
| `levaldata1dloop` | 0x00c2 | 259 | 15 | inside `mgeb_EvalMapData1D` |
| `mgeb_EvalGrid1D` | 0x00d1 | 292 | 16 | geif slot 144; ARM `init_ged`; distributor table 25 |
| `ugeb_EvalGrid1D` | 0x00d1 | 292 | 16 | alias of `mgeb_EvalGrid1D` |
| `mgesi_EvalStrip1D` | 0x00e1 | 324 | 118 | geif slot 103; tokens `HP_EVALSTRIP1D`; ARM `arm_evalstrip1d` |
| `ugesi_EvalStrip1D` | 0x00e1 | 324 | 118 | alias of `mgesi_EvalStrip1D` |
| `lstrip1dreturn` | 0x0157 | 443 | 15 | address loaded as a constant in `mgesi_EvalStrip1D` |
| `umo_EvalEntry1D` | 0x0166 | 470 | 22 | transfers in `mmo_Lutout`; address loaded as a constant in `mgeb_EvalMapSpec1D` |
| `umo_EvalDecomposeLines1D` | 0x017c | 504 | 15 | address loaded as a constant in `mGL_EM_Initialize` |

### ueval2D.s

2D evaluator commands: map spec, map data, grid, strip. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_EvalMapSpec2D` | 0x018b | 178 | 122 | geif slot 147; ARM `init_ged`; distributor table 28 |
| `ugeb_EvalMapSpec2D` | 0x018b | 178 | 122 | alias of `mgeb_EvalMapSpec2D` |
| `mgeb_EvalMapData2D` | 0x0205 | 334 | 38 | geif slot 14; tokens `HP_MAPDATA2D`; ARM `arm_mapdata2d` |
| `ugeb_EvalMapData2D` | 0x0205 | 334 | 38 | alias of `mgeb_EvalMapData2D` |
| `levaldata2dloop` | 0x022b | 373 | 15 | inside `mgeb_EvalMapData2D` |
| `mgeb_EvalGrid2D` | 0x023a | 405 | 26 | geif slot 145; ARM `init_ged`; distributor table 26 |
| `ugeb_EvalGrid2D` | 0x023a | 405 | 26 | alias of `mgeb_EvalGrid2D` |
| `mgesi_EvalStrip2D` | 0x0254 | 461 | 111 | geif slot 104; tokens `HP_EVALSTRIP2D`; ARM `arm_evalstrip2d` |
| `ugesi_EvalStrip2D` | 0x0254 | 461 | 111 | alias of `mgesi_EvalStrip2D` |
| `lstrip2dloop` | 0x02c3 | 573 | 46 | transfers in `lstrip2dreturn` |
| `lstrip2dreturn` | 0x02f1 | 620 | 38 | address loaded as a constant in `lstrip2dloop` |
| `umo_EvalEntry2D` | 0x0317 | 697 | 30 | address loaded as a constant in `mgeb_EvalMapSpec2D` |
| `umo_EvalDecomposePoints` | 0x0335 | 750 | 15 | address loaded as a constant in `mGL_EM_Initialize` |
| `umo_EvalDecomposeLines2D` | 0x0344 | 777 | 55 | address loaded as a constant in `mGL_EM_Initialize` |
| `umo_EvalDecomposeFill` | 0x037b | 844 | 37 | address loaded as a constant in `mGL_EM_Initialize` |

### uevalbasis.s

Evaluator change of basis for geometry, colour, normal and texture maps. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uEvalChangeBasis1D` | 0x0484 | 102 | 34 | transfers in `mgesi_EvalStrip1D`, `uEvalCoord1D` |
| `eval_texturechangebasis` | 0x04a6 | 137 | 16 | address loaded as a constant in `uEvalChangeBasis1D` |
| `eval_colorchangebasis` | 0x04b6 | 154 | 16 | address loaded as a constant in `uEvalChangeBasis1D` |
| `eval_normalchangebasis` | 0x04c6 | 171 | 16 | address loaded as a constant in `uEvalChangeBasis1D` |
| `eval_changebasis1ddone` | 0x04d6 | 188 | 15 | address loaded as a constant in `uEvalChangeBasis1D` |
| `uEvalChangeBasis2D` | 0x04e5 | 239 | 34 | transfers in `mgesi_EvalStrip2D`, `uEvalCoord2D` |
| `eval_geomchangebasisv` | 0x0507 | 274 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_texturechangebasisu` | 0x0517 | 291 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_texturechangebasisv` | 0x0527 | 308 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_colorchangebasisu` | 0x0537 | 325 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_colorchangebasisv` | 0x0547 | 342 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_normalchangebasisu` | 0x0557 | 359 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_normalchangebasisv` | 0x0567 | 376 | 16 | address loaded as a constant in `uEvalChangeBasis2D` |
| `eval_changebasis2ddone` | 0x0577 | 393 | 15 | address loaded as a constant in `uEvalChangeBasis2D` |

### uevalcoord.s

Evaluator coordinate entry (EvalCoord) for 1D and 2D. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mges_EvalCoord` | 0x03a0 | 61 | 11 | geif slot 192; distributor relocated word |
| `uges_EvalCoord` | 0x03a0 | 61 | 11 | alias of `mges_EvalCoord` |
| `evalcoord2dloop` | 0x03ab | 80 | 46 | inside `mges_EvalCoord` |
| `evalcoord1dloop` | 0x03d9 | 127 | 45 | inside `mges_EvalCoord` |
| `uEvalCoord1D` | 0x0406 | 195 | 57 | transfers in `evalcoord1dloop` |
| `uEvalCoord2D` | 0x043f | 264 | 69 | transfers in `evalcoord2dloop` |

### ulight.s

Simple lighting and colour clamp. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_LiColorClamp` | 0x0d69 | 35 | 9 | address loaded as a constant in `mGL_CM_Initialize`, `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `umo_LiColorClamp` | 0x0d69 | 35 | 9 | alias of `mmo_LiColorClamp` |
| `lLI2` | 0x0d72 | 46 | 10 | inside `mmo_LiColorClamp` |
| `mmo_LighterSimple` | 0x0d7c | 67 | 13 | address loaded as a constant in `mmo_DirtyCullAndLightModule`, `mmo_DirtyLightModule` |
| `umo_LighterSimple` | 0x0d7c | 67 | 13 | alias of `mmo_LighterSimple` |
| `lLI1` | 0x0d89 | 81 | 64 | inside `mmo_LighterSimple` |
| `mLiPwrTable` | 0x0dc9 | 192 | 44 | transfers in `mLiSwichSpotPrwTableSub`, `mLiUpdateShin`, `mgeb_LightSpotExp` |
| `uLiPwrTable` | 0x0dc9 | 192 | 44 | alias of `mLiPwrTable` |
| `lPT1` | 0x0df5 | 240 | 30 | inside `mLiPwrTable` |

### umath.s

Sine and cosine. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mSinCos` | 0x0e13 | 24 | 79 | transfers in `DrawMSTFanPnt`, `mgeb_LightSpotCutAng`, `mgebi_PointSize_MS` |
| `uSinCos` | 0x0e13 | 24 | 79 | alias of `mSinCos` |

### umatrix.s

Matrix multiply, inverse, adjoint, rotate and scale. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uMatrixMultCCC` | 0x0e62 | 39 | 78 | transfers in `mmo_ObjToClipSpace`, `mmo_ObjToClipSpaceN2E`, `mmo_ObjToClipSpaceN2EN` |
| `mMatrixMultCCW` | 0x0eb0 | 209 | 55 | transfers in `mFrustum`, `mOrtho`, `mRotate`, `mgeb_MultMatrix_Color`, `mgeb_MultMatrix_Modelview`, `mgeb_MultMatrix_Projection` and 1 more |
| `uMatrixMultCCW` | 0x0eb0 | 209 | 55 | alias of `mMatrixMultCCW` |
| `mMatrixInverse` | 0x0ee7 | 314 | 113 | transfers in `mTexGenEyeLine`, `mTexGenEyePlane`, `mTexGenEyePoint`, `mgeb_LightSpotDir`, `mgeb_UserClipPlane`, `mmo_ObjToClipSpaceN2E` and 1 more |
| `uMatrixInverse` | 0x0ee7 | 314 | 113 | alias of `mMatrixInverse` |
| `mMatrixAdjoint` | 0x0f58 | 435 | 88 | transfers in `mSpriteAxial`, `mSpriteObject`, `mgebi_ReferencePlane` |
| `uMatrixAdjoint` | 0x0f58 | 435 | 88 | alias of `mMatrixAdjoint` |
| `mRotate` | 0x0fb0 | 557 | 99 | transfers in `mgeb_Rotate_Color`, `mgeb_Rotate_Modelview`, `mgeb_Rotate_Projection`, `mgeb_Rotate_Texture` |
| `uRotate` | 0x0fb0 | 557 | 99 | alias of `mRotate` |

### umemove.s

Memory moves WRAM, CRAM and ERAM in each direction. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uWramToCram` | 0x1013 | 18 | 8 | unknown entry |
| `lW2C` | 0x101b | 27 | 10 | inside `uWramToCram` |
| `mWramToEram` | 0x1025 | 45 | 8 | transfers in `SaveClipState`, `mgeb_ContextLoadEram`, `mgeb_InitFFTFactors`, `mgeb_LoadEram`, `mgesi_LoadEram`, `mmo_SaveRasterPos` and 7 more |
| `uWramToEram` | 0x1025 | 45 | 8 | alias of `mWramToEram` |
| `lW2E` | 0x102d | 54 | 13 | inside `mWramToEram` |
| `mCramToEram` | 0x103a | 75 | 7 | transfers in `mgeb_CramToEram`, `mgeb_SwapOutGL`, `mmo_DirtySpriteModule`, `mmo_MultipassModule` |
| `uCramToEram` | 0x103a | 75 | 7 | alias of `mCramToEram` |
| `lC2E` | 0x1041 | 83 | 14 | inside `mCramToEram` |
| `mEramToCram` | 0x104f | 105 | 17 | transfers in `mdc_multipass`, `mdc_sprite`, `mgeb_EramToCram`, `mgeb_SwapInGL`, `mmo_MultipassModule` |
| `uEramToCram` | 0x104f | 105 | 17 | alias of `mEramToCram` |
| `lE2C` | 0x1060 | 123 | 20 | inside `mEramToCram` |
| `mClearEram` | 0x1074 | 151 | 8 | transfers in `mDebugInitialize`, `mges_ContextDeactivate` |
| `uClearEram` | 0x1074 | 151 | 8 | alias of `mClearEram` |
| `lcE` | 0x107c | 160 | 13 | inside `mClearEram` |
| `mCramToFifo` | 0x1089 | 183 | 6 | transfers in `mges_ContextDeactivate` |
| `uCramToFifo` | 0x1089 | 183 | 6 | alias of `mCramToFifo` |
| `lC2F` | 0x108f | 190 | 12 | inside `mCramToFifo` |
| `mEramToFifo` | 0x109b | 210 | 10 | transfers in `mges_ContextDeactivate` |
| `uEramToFifo` | 0x109b | 210 | 10 | alias of `mEramToFifo` |
| `lE2F` | 0x10a5 | 221 | 19 | inside `mEramToFifo` |

### unpack.S

Vertex-array unpack enable and disable, colour and normal restore. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgeb_EnableUnpack` | 0x583e | 42 | 11 | geif slot 119; ARM `init_ged`; distributor table 60 |
| `mgeb_DisableUnpack` | 0x582e | 80 | 10 | geif slot 120; ARM `init_ged`; distributor table 61 |
| `mgeb_RestoreColor` | 0x581b | 105 | 13 | geif slot 377; ARM `init_ged`; distributor table 62 |
| `mgeb_RestoreNormal` | 0x580a | 133 | 11 | geif slot 378; ARM `init_ged`; distributor table 63 |

### upixelSetup.s

Pixel colour-stream entry into the engine. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_PixDrawColorEntry` | 0x27d5 | 51 | 16 | geif slot 212; ARM `CompGedReg`, `SetupGED_ColorStream`, `SetupGED_FFT`, `__glkonSendConvKernToHost`, `init_ged_regs` |
| `ugesi_PixDrawColorEntry` | 0x27d5 | 51 | 16 | alias of `mgesi_PixDrawColorEntry` |

### upixout.s

Packed pixel output loops. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `umo_Pixout32_8_16` | 0x27e5 | 60 | 30 | geif slot 308 |
| `loop32_8_16` | 0x2803 | 100 | 46 | inside `umo_Pixout32_8_16` |
| `uPO_2_4C` | 0x2831 | 170 | 4 | transfers in `mmo_Pixout_2_4` |
| `uPO_2_4C_loop` | 0x2835 | 178 | 12 | inside `uPO_2_4C` |
| `uPO_2_4C_LastBlck` | 0x2841 | 194 | 9 | transfers in `mmo_Pixout_2_4` |
| `uPO_8_16C` | 0x284a | 209 | 4 | transfers in `mmo_Pixout_8_16` |
| `uPO_8_16C_loop` | 0x284e | 216 | 40 | inside `uPO_8_16C` |
| `uPostLoop` | 0x2876 | 259 | 13 | transfers in `uPO_8_16C_LastBlck` |
| `uPO_8_16C_LastBlck` | 0x2883 | 275 | 9 | transfers in `mmo_Pixout_8_16` |

### uscreen2.s

Transformation to screen space with the second-chance (clipped) path. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uSecondChance` | 0x10b8 | 66 | 1 | transfers in `mmo_ToScreenSpace` |
| `lSC2` | 0x10b9 | 69 | 16 | inside `uSecondChance` |
| `mmo_ToScreenSpace` | 0x10c9 | 91 | 2 | address loaded as a constant in `mGL_CM_Initialize`, `mmo_DirtyTextureAndScreenModule` |
| `umo_ToScreenSpace` | 0x10c9 | 91 | 2 | alias of `mmo_ToScreenSpace` |
| `uBack` | 0x10cb | 94 | 9 | transfers in `lSC2` |
| `lSC1` | 0x10d4 | 104 | 44 | inside `uBack` |
| `uSecondChanceInvQ` | 0x1100 | 156 | 3 | transfers in `mmo_ToScreenSpaceInvQ` |
| `lSC4` | 0x1103 | 161 | 16 | inside `uSecondChanceInvQ` |
| `mmo_ToScreenSpaceInvQ` | 0x1113 | 183 | 2 | transfers in `mmo_SaveRasterPos`; address loaded as a constant in `mTexGenResolve`, `mmo_DirtyTextureAndScreenModule` |
| `umo_ToScreenSpaceInvQ` | 0x1113 | 183 | 2 | alias of `mmo_ToScreenSpaceInvQ` |
| `uBackInvQ` | 0x1115 | 186 | 12 | transfers in `lSC4` |
| `lSC3` | 0x1121 | 199 | 130 | inside `uBackInvQ` |
| `uSecondChanceInvQ2DI` | 0x11a3 | 338 | 3 | transfers in `mmo_ToScreenSpaceInvQ2DI` |
| `lSC6` | 0x11a6 | 343 | 16 | inside `uSecondChanceInvQ2DI` |
| `mmo_ToScreenSpaceInvQ2DI` | 0x11b6 | 365 | 2 | address loaded as a constant in `mmo_DirtyTextureAndScreenModule` |
| `umo_ToScreenSpaceInvQ2DI` | 0x11b6 | 365 | 2 | alias of `mmo_ToScreenSpaceInvQ2DI` |
| `uBackInvQ2DI` | 0x11b8 | 368 | 9 | transfers in `lSC6` |
| `lSC5` | 0x11c1 | 378 | 87 | inside `uBackInvQ2DI` |

### usepconv3x3.s

Separable 3x3 convolution row and column loops. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uSepConv3_124` | 0x29a2 | 68 | 7 | transfers in `mmo_SepConvolve3x3_124` |
| `RowConv3Loop` | 0x29a9 | 80 | 16 | inside `uSepConv3_124` |
| `ColumnConv3Loop` | 0x29b9 | 108 | 13 | inside `uSepConv3_124` |

### usepconv5x5.s

Separable 5x5 convolution row and column loops, with a fast form. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uSepConv5_124` | 0x29c6 | 78 | 9 | transfers in `mmo_SepConvolve5x5_124` |
| `RowConv5Loop` | 0x29cf | 91 | 29 | inside `uSepConv5_124` |
| `ColumnConv5Loop` | 0x29ec | 133 | 21 | inside `uSepConv5_124` |
| `uFastSepConv5_124` | 0x2a01 | 188 | 47 | transfers in `mmo_FastSepConvolve5x5_124` |
| `FastRowConv5Loop` | 0x2a30 | 243 | 24 | inside `uFastSepConv5_124` |
| `FastRowConv5Epilog` | 0x2a48 | 280 | 11 | inside `uFastSepConv5_124` |
| `FastColumnConv5Loop` | 0x2a53 | 301 | 21 | inside `uFastSepConv5_124` |

### usepconv7x7.s

Separable 7x7 convolution row and column loops. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `uSepConv7_124` | 0x2a68 | 82 | 11 | transfers in `mmo_SepConvolve7x7_124` |
| `RowConv7Loop` | 0x2a73 | 97 | 39 | inside `uSepConv7_124` |
| `ColumnConv7Loop` | 0x2a9a | 149 | 30 | inside `uSepConv7_124` |

### utexgen.s

Texture-coordinate generation loops: sphere, eye-linear, object-linear. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_TexGenSphere_ST` | 0x0b85 | 45 | 9 | address loaded as a constant in `mTexGenSph` |
| `umo_TexGenSphere_ST` | 0x0b85 | 45 | 9 | alias of `mmo_TexGenSphere_ST` |
| `lTGLOOP2` | 0x0b8e | 55 | 92 | inside `mmo_TexGenSphere_ST` |
| `mmo_TexGenEyeLinear_ST` | 0x0bea | 154 | 14 | address loaded as a constant in `mGL_EX_Initialize`, `mTexGenEyeLin` |
| `umo_TexGenEyeLinear_ST` | 0x0bea | 154 | 14 | alias of `mmo_TexGenEyeLinear_ST` |
| `lXF8` | 0x0bf8 | 169 | 21 | inside `mmo_TexGenEyeLinear_ST` |
| `mmo_TexGenEyeLinear_RQ` | 0x0c0d | 197 | 14 | address loaded as a constant in `mGL_EX_Initialize`, `mTexGenEyeLin` |
| `umo_TexGenEyeLinear_RQ` | 0x0c0d | 197 | 14 | alias of `mmo_TexGenEyeLinear_RQ` |
| `lXF9` | 0x0c1b | 212 | 21 | inside `mmo_TexGenEyeLinear_RQ` |
| `mmo_TexGenObjLinear_ST` | 0x0c30 | 240 | 14 | address loaded as a constant in `mTexGenObjLin` |
| `umo_TexGenObjLinear_ST` | 0x0c30 | 240 | 14 | alias of `mmo_TexGenObjLinear_ST` |
| `lXF10` | 0x0c3e | 255 | 21 | inside `mmo_TexGenObjLinear_ST` |
| `mmo_TexGenObjLinear_RQ` | 0x0c53 | 283 | 14 | address loaded as a constant in `mTexGenObjLin` |
| `umo_TexGenObjLinear_RQ` | 0x0c53 | 283 | 14 | alias of `mmo_TexGenObjLinear_RQ` |
| `lXF11` | 0x0c61 | 298 | 21 | inside `mmo_TexGenObjLinear_RQ` |

### uunpack.s

Vertex-array unpack loops for unlit vertex formats. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_UnpackVertexV3F` | 0x2c6b | 44 | 13 | geif slot 379; address loaded as a constant in `mGL_EM_Initialize` |
| `umo_UnpackVertexV3F` | 0x2c6b | 44 | 13 | alias of `mmo_UnpackVertexV3F` |
| `V3Floop` | 0x2c78 | 60 | 11 | inside `mmo_UnpackVertexV3F` |
| `mmo_UnpackVertexV3F_C4UB` | 0x2c83 | 78 | 17 | geif slot 380; address loaded as a constant in `mGL_EM_Initialize` |
| `umo_UnpackVertexV3F_C4UB` | 0x2c83 | 78 | 17 | alias of `mmo_UnpackVertexV3F_C4UB` |
| `V3F_C4UBloop` | 0x2c94 | 97 | 25 | inside `mmo_UnpackVertexV3F_C4UB` |
| `umo_UnpackVertexV3F_N3S` | 0x2cad | 129 | 18 | inside `mmo_UnpackVertexV3F_C4UB` |
| `V3F_N3Sloop` | 0x2cbf | 150 | 52 | inside `umo_UnpackVertexV3F_N3S` |
| `mmo_UnpackVertexV3F_T2F` | 0x2cf3 | 209 | 12 | geif slot 383; address loaded as a constant in `mGL_EM_Initialize` |
| `umo_UnpackVertexV3F_T2F` | 0x2cf3 | 209 | 12 | alias of `mmo_UnpackVertexV3F_T2F` |
| `V3F_T2Floop` | 0x2cff | 223 | 19 | inside `mmo_UnpackVertexV3F_T2F` |
| `mmo_UnpackVertexV3F_C4UB_T2F` | 0x2d12 | 249 | 10 | geif slot 384; address loaded as a constant in `mGL_EM_Initialize` |
| `umo_UnpackVertexV3F_C4UB_T2F` | 0x2d12 | 249 | 10 | alias of `mmo_UnpackVertexV3F_C4UB_T2F` |
| `V3F_C4UB_T2Floop` | 0x2d1c | 261 | 38 | inside `mmo_UnpackVertexV3F_C4UB_T2F` |
| `umo_UnpackVertexV3F_N3S_T2F` | 0x2d42 | 306 | 18 | inside `mmo_UnpackVertexV3F_C4UB_T2F` |
| `V3F_N3S_T2Floop` | 0x2d54 | 327 | 58 | inside `umo_UnpackVertexV3F_N3S_T2F` |
| `mmo_UnpackVertexV3F_T2S` | 0x2d8e | 392 | 14 | geif slot 387; address loaded as a constant in `mGL_EM_Initialize` |
| `umo_UnpackVertexV3F_T2S` | 0x2d8e | 392 | 14 | alias of `mmo_UnpackVertexV3F_T2S` |
| `V3F_T2Sloop` | 0x2d9c | 408 | 25 | inside `mmo_UnpackVertexV3F_T2S` |
| `mmo_UnpackVertexV3F_C4UB_T2S` | 0x2db5 | 440 | 10 | geif slot 388; address loaded as a constant in `mGL_EM_Initialize` |
| `umo_UnpackVertexV3F_C4UB_T2S` | 0x2db5 | 440 | 10 | alias of `mmo_UnpackVertexV3F_C4UB_T2S` |
| `V3F_C4UB_T2Sloop` | 0x2dbf | 452 | 43 | inside `mmo_UnpackVertexV3F_C4UB_T2S` |
| `umo_UnpackVertexV3F_N3S_T2S` | 0x2dea | 502 | 18 | inside `mmo_UnpackVertexV3F_C4UB_T2S` |
| `V3F_N3S_T2Sloop` | 0x2dfc | 523 | 64 | inside `umo_UnpackVertexV3F_N3S_T2S` |

### uxform.s

Object-to-clip transformation with optional normal-to-eye transformation. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_ObjToClipSpace` | 0x1218 | 44 | 7 | address loaded as a constant in `mGL_CM_Initialize`, `mmo_DirtyXformAndObjToClipModule` |
| `umo_ObjToClipSpace` | 0x1218 | 44 | 7 | alias of `mmo_ObjToClipSpace` |
| `lXF1` | 0x121f | 52 | 45 | inside `mmo_ObjToClipSpace` |
| `mmo_ObjToClipSpaceN2E` | 0x124c | 104 | 8 | address loaded as a constant in `mmo_DirtyXformAndObjToClipModule` |
| `umo_ObjToClipSpaceN2E` | 0x124c | 104 | 8 | alias of `mmo_ObjToClipSpaceN2E` |
| `lXF2` | 0x1254 | 113 | 63 | inside `mmo_ObjToClipSpaceN2E` |
| `mmo_ObjToClipSpaceN2EN` | 0x1293 | 183 | 8 | address loaded as a constant in `mmo_DirtyXformAndObjToClipModule` |
| `umo_ObjToClipSpaceN2EN` | 0x1293 | 183 | 8 | alias of `mmo_ObjToClipSpaceN2EN` |
| `lXF3` | 0x129b | 192 | 99 | inside `mmo_ObjToClipSpaceN2EN` |
| `mmo_ObjToEyeSpace` | 0x12fe | 558 | 6 | address loaded as a constant in `mmo_DirtyXformAndObjToClipModule` |
| `umo_ObjToEyeSpace` | 0x12fe | 558 | 6 | alias of `mmo_ObjToEyeSpace` |
| `lXF5` | 0x1304 | 565 | 33 | inside `mmo_ObjToEyeSpace` |
| `mmo_ObjToEyeSpaceAndTwoUserTR` | 0x1325 | 605 | 6 | address loaded as a constant in `mmo_DirtyXformAndObjToClipModule` |
| `umo_ObjToEyeSpaceAndTwoUserTR` | 0x1325 | 605 | 6 | alias of `mmo_ObjToEyeSpaceAndTwoUserTR` |
| `lXF12` | 0x132b | 612 | 49 | inside `mmo_ObjToEyeSpaceAndTwoUserTR` |
| `mmo_ObjToEyeSpaceAndSixUserTR` | 0x135c | 668 | 6 | address loaded as a constant in `mmo_DirtyXformAndObjToClipModule` |
| `umo_ObjToEyeSpaceAndSixUserTR` | 0x135c | 668 | 6 | alias of `mmo_ObjToEyeSpaceAndSixUserTR` |
| `lXF7` | 0x1362 | 675 | 82 | inside `mmo_ObjToEyeSpaceAndSixUserTR` |

### video.S

Video-controller bus writes for the display board (cursor, colour map, gamma, mode, swap). **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_VCbusWrite` | 0x5305 | 35 | 11 | geif slot 251; tokens `HP_DISPMODE`, `HP_DPLEX_SWAP`, `HP_RETRACE_SEQID`, `HP_SWAP_CNTRL`, `HP_X_LOADCMAP`, `HP_X_LOADCURSOR`, `HP_X_LOADCURSORCOLOR`, `HP_X_LOADGAMMA`, `HP_X_LOADXMAP_CONFIG`, `HP_X_LOADXMAP_DID`; ARM `arm_dispmode`, `arm_dplex_swap`, `arm_retrace_seqid`, `arm_swap_cntrl`, `arm_x_loadcmap`, `arm_x_loadcursor` and 6 more |
| `mgesi_VCbusWriteMultiple` | 0x52e8 | 67 | 24 | geif slot 252; tokens `HP_X_LOADCMAP`, `HP_X_LOADCURSOR`, `HP_X_LOADCURSORCOLOR`, `HP_X_LOADGAMMA`; ARM `arm_x_loadcmap`, `arm_x_loadcursor`, `arm_x_loadcursorcolor`, `arm_x_loadgamma` |

### xclipdraw.S

X server clipped drawing of points, lines and rectangles. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mmo_XclipDrawPoints` | 0x5130 | 70 | 71 | transfers in `mAbsX`, `mRelX` |
| `mmo_XclipDrawRects` | 0x508b | 170 | 129 | transfers in `mAbsX`, `mgesi_XRect`, `mgesi_XSpans` |
| `mmo_XclipDrawLines` | 0x4ead | 327 | 386 | transfers in `mAbsX`, `mRelX` |

### xentry.S

X server drawing commands: points, lines, segments, rectangles, boxes, spans. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgesi_XPoint` | 0x5293 | 59 | 8 | geif slot 240; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 42 |
| `mgesi_XPointRel` | 0x5284 | 86 | 7 | geif slot 241; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 43 |
| `mgesi_XBgPoint` | 0x5274 | 112 | 8 | geif slot 242; ARM `init_ged`; distributor table 50 |
| `mgesi_XBgPointRel` | 0x5265 | 139 | 7 | geif slot 243 |
| `mgesi_XRect` | 0x5223 | 163 | 49 | geif slot 244; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 44 |
| `mgesi_XBox` | 0x520c | 252 | 9 | geif slot 245; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 45 |
| `mgesi_XSpans` | 0x51d4 | 297 | 43 | geif slot 246; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 46 |
| `mgesi_XSegment` | 0x51bd | 370 | 11 | geif slot 247; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 47 |
| `mgesi_XSegmentRel` | 0x51a6 | 405 | 10 | geif slot 248; tokens `HP_SLOP`; ARM `arm_slop` |
| `mgesi_XLine` | 0x5196 | 447 | 8 | geif slot 249; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 48 |
| `mgesi_XLineRel` | 0x5187 | 476 | 7 | geif slot 250; tokens `HP_SLOP`; ARM `arm_slop`, `init_ged`; distributor table 49 |
| `mAbsX` | 0x52c4 | 499 | 26 | transfers in `mgesi_XBgPoint`, `mgesi_XBox`, `mgesi_XLine`, `mgesi_XPoint`, `mgesi_XSegment` |
| `mRelX` | 0x52a3 | 552 | 19 | transfers in `mgesi_XBgPointRel`, `mgesi_XLineRel`, `mgesi_XPointRel`, `mgesi_XSegmentRel` |

### xload.S

X server state loads: graphics context, position, clip, scissor, pixel set-up. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgebi_XLoadPosition` | 0x4d7c | 62 | 96 | geif slot 360; ARM `arm_x_loadpos`, `init_ged`; distributor table 52 |
| `mgesi_XLoadScissor` | 0x4d43 | 195 | 57 | geif slot 361; ARM `init_ged`; distributor table 54 |
| `mgebi_XLoadGC` | 0x4cf4 | 307 | 72 | geif slot 362; ARM `init_ged`; distributor table 51 |
| `mgeb_XLoadClip` | 0x4cc0 | 447 | 42 | geif slot 363; tokens `HP_X_LOADCLIP_ARM`; ARM `arm_x_loadclip_arm`, `init_ged`; distributor table 53 |
| `mgesi_XPixRmSetup` | 0x4c70 | 554 | 72 | geif slot 116; tokens `HP_X_PIX_WRITE`; ARM `XPixSetupRM`, `arm_x_pix_write` |

### xsetup.S

X server set-up of clip, colours and window. **Inferred** from its labels and callers.

| Label | Address | Line | Words | Reached from |
|---|---|---|---|---|
| `mgebi_XSetupWindow` | 0x4e30 | 40 | 101 | geif slot 357; tokens `HP_SLOP`; ARM `arm_slop` |
| `mgeb_XSetupColors` | 0x4e22 | 199 | 12 | geif slot 358; tokens `HP_SLOP`; ARM `arm_slop` |
| `mgeb_XSetupClip` | 0x4deb | 231 | 47 | geif slot 359; tokens `HP_SLOP`; ARM `arm_slop` |
