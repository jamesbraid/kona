# ARM firmware (arm1.u) and the host-token map

What `usr/gfx/ucode/KONA/arm1.u` (IRIX 6.5.30m, linked as `ucode/KONA/arm1.u`) is, and what it says about how a host command token reaches the geometry engine. Facts are labelled **established** (read from the file or its code at the stated address), **inferred** (with the reasoning) or **unknown**.

[scripts/arm1_disasm.py](../scripts/arm1_disasm.py) writes the outputs this page cites: [arm1_symbols.tsv](arm1_symbols.tsv) (every symbol), [arm1.s](arm1.s) (the whole read-only image disassembled and labelled) and [icu_map.tsv](icu_map.tsv) (the 512-entry token map). [scripts/ged_relocs.py](../scripts/ged_relocs.py) writes [ged_relocs.tsv](ged_relocs.tsv).

## Container

**Established.** `arm1.u` is a big-endian ARM image in AIF layout. The 128-byte header holds three branch-or-no-op words, a data word (0x2c), an SWI, then RO size 0x40248, RW size 0x27c7c, debug size 0x9ae8, zero-init size 0x2d4fc, debug type 1, image base 0x0c000000, workspace 0, address-mode word 0x120 and data base 0x04040260. The header is not loaded: read-only address A is file offset 0x80 + (A - 0x0c000000), and read-write address A is file offset 0x80 + 0x40248 + (A - 0x04040260). Checked by the literal pools: every pointer a function loads from its pool lands on a symbol or a string under this mapping, and an offset of 0 does not.

**Established.** The last 0x9ae8 bytes are a low-level debug table: a symbol count (1682) at +32, then 1682 pairs of {flags << 24 | name offset, value}, then the names. The symbols name the firmware's functions (`init_hip`, `arm_cullface`, `arm_context_activate`, ...), its data (`icu_map`, `gepc`, `DGDispatchTable`) and the linker regions (`Image$$RO$$Base` 0x0c000000, `Image$$ZI$$Base` 0x04067edc).

## The token map (`icu_map`)

**Established** (`init_hip`, 0x0c001c60). At start-up the firmware builds a 512-entry table of 32-bit words, one per host token, from a static list at `vector_end` (0x0c000328). Walking the list, a word with bit 0 set is a complete entry; an even word is followed by a second word, and the entry is (first | second << 4). Each entry is stored twice: in `icu_map` (0x04068e54, zero-initialised RAM) and at ARM address 0x00400000 + 4 x token. Tokens the list does not reach get `arm_badcmd` << 4 in the hardware copy at 0x00400000 only; `icu_map` keeps zero there. `init_hip` also records the index of the entry whose handler is `arm_matrixmode`.

**Inferred:** 0x00400000 is a table in the host-interface chip that the hardware consults for each incoming token. The firmware's own messages name an "ICU" (`HA_ICU_CURR_CMD`, `HA_ICU_PREV_CMD`), and the table is called `icu_map`.

[icu_map.tsv](icu_map.tsv) lists all 512 entries with the kpm token names. 306 tokens run an ARM handler and 206 are routed by the hardware.

### Entry format

**Established** from the code that reads or builds entries:

| Bits | Meaning | Where |
|---|---|---|
| 0 | 1 = routed by the hardware, no ARM handler. 0 = ARM handler | `init_hip` keeps odd words whole and builds even ones from a handler address |
| 1-2 | Kind: 0 for 392 tokens, 1 for the twelve begin tokens, 2 for `END`, 3 for 107 tokens (vertex data, list calls, context switches). Read as "legal between begin and end"; the begin/end error path is in [arm1_firmware.md](arm1_firmware.md) | `init_hip`, `arm_bgnend` 0x0c0018e4 |
| 3 | Chain: more entries follow in the same list | `varray_build_command` sets it on every entry it builds and `varray_set_cmd_table` clears it on the last |
| 4-31 (ARM entries) | Handler address bits 0-27 (the entry is the address shifted left by 4) | `init_hip` |
| 6-8 | Payload word count for a vertex attribute (from `wordCountTable`) | `varray_build_command` |
| 27-28 | From `lastWrdTable` | `varray_build_command` |
| 29-30 | From `byteCmpTable` | `varray_build_command` |

`varray_build_command` (0x0c0395fc) makes vertex-array entries by taking the attribute token's own entry, clearing bits 5-8 and 27-30, and putting in the count and the two table values above.

**Inferred** from the values in the hardware-routed entries:

- Bits 29-30 give the component type: every `...F` and `...I` token has 2 and every `...D` token has 3 (for example `HP_LOADMATRIXF` 0x58625401 and `HP_LOADMATRIXD` 0x78625001). The double forms send twice the words.
- Bits 15-23 are a 9-bit command number. Forms of one command share it (LOADMATRIXF and LOADMATRIXD 196, ROTATEF and ROTATED 202, X_POINT, X_POINT6 and X_POINT24 170), and the X-server commands get consecutive numbers in token order (X_POINT 170 to X_BGPOINT 178, then X_LOADGC 179 to X_LOADSCISSOR 182). What the number selects is under "Hardware-routed tokens" below.
- For routed commands, bits 6-10 read as a payload word count, with 0 for 32. It matches X_DATA1 to X_DATA10 (1-10), X_POINT6 (6), X_POINT24 (24), LOADMATRIXF (16), ROTATEF (4) and LOADMATRIXD (0, 32 words for 16 doubles). The three `HP_NORMAL3*` entries do not fit (bits 6-10 = 11 for three words), so this reading has an exception that is **unknown**.

**Unknown:** bits 4, 9-14 (beyond the count), 24-26 and 31 of routed entries.

## How a command reaches a geometry-engine handler

The slot table `geif.u` (1024 big-endian 16-bit words, [ge.md](ge.md)) is what the firmware uses for geometry-engine addresses.

**Established** (`init_hip`, 0x0c001d78-0x0c001dbc): the firmware copies 512 32-bit words of `geif.u` into `gepc` (0x04068654), so `gepc[k]` is word k, whose low half is the handler address of slot k. gfxinit loads the file for it ("LoadGeifFile: sdram addr"), and `find_ucode` locates it by the tag 0x4592; a simulator flag can point at 0x8000 instead. It then packs `gepc[0..127]` as halfword pairs into the state block at r8 + 0x48.

**Established** (ARM-handled tokens). A handler stores the payload in a host-interface register and then writes a geometry-engine handler address, taken from `gepc`, to the register at r9 + 0x8c0. Examples, each confirming a pairing [ge_name_matches.tsv](ge_name_matches.tsv) had only inferred from names:

- `arm_cullface` (token 0xb6): payload to r9 + 0x478, then the low half of r8 + 0x4c, which is `gepc[3]` = slot 3, `mgeb_CullFace`.
- `arm_frontface` (0xba): r8 + 0x64, `gepc[15]` = `mgeb_FrontFace`.
- `arm_matrixmode` (0xd0): r8 + 0xac, `gepc[51]` = `mgeb_MatrixMode`. For mode 0x1700 (model-view) it then writes, through a register written before each word (r9 + 0x400 = 0x46200020), the model-view variants: `gepc[44]` LoadIdentity_Modelview, `gepc[48]` LoadMatrix_Modelview, `gepc[151]` Frustum_Modelview, `gepc[53]` MultMatrix_Modelview, `gepc[56]` Ortho_Modelview, `gepc[67]` PopMatrix_Modelview, `gepc[71]` PushMatrix_Modelview, `gepc[75]` Rotate_Modelview, `gepc[78]` Scale_Modelview, `gepc[85]` Translate_Modelview.

**Inferred:** the geometry engine takes the handler address itself as the command, so for ARM-handled tokens the token-to-slot step is the ARM's choice of `gepc` index, written in its code, not a table. The matrix-mode case suggests that the per-mode matrix commands are rebound when the mode changes, which is why one host token (LOADMATRIXF) has four handlers.

**Established** (`init_ged_ucode`, 0x0c001e20). The distributor program `ged1b.u` is loaded as 1024 32-bit words. Before writing each word to the distributor (register 0x48200020 written first), the firmware tests it: top two bits 2, bits 27-29 zero and bits 16-22 one of 0x3e, 0x45, 0x46, 0x47, 0x48. Such a word holds a geometry-engine slot number in its low 16 bits, and the firmware replaces it with that slot's handler address (from r8 + 0x48 below slot 128, from `gepc` above; a slot above 0x1ff prints "bad index"). It then loads the distributor's tables: 16 words through 0x42200020 and 512 words through 0x42600020. [ged_relocs.tsv](ged_relocs.tsv) lists the 83 relocated words. They name 35 handlers, all primitive-assembly entries: `mgesi_Triangles`, `mgesi_TriangleStrip*`, `mgesi_QuadStrip*`, `mgesi_TfanPoly*`, `mgesi_LineStrip*`, `mgesi_Points`, `mgeb_Material`, `mgeb_RasterPos`, `mges_EvalCoord`, `mgesi_SubdivEntry` and `mgebi_NullCommand`.

This corrects an earlier reading: `ged1b.u`'s code segment is 931 32-bit words (0xe8c bytes), not 12-byte records, and its second segment (byte address 0x1000) is the 528-word table block the firmware loads after the program.

## Hardware-routed tokens: from command number to engine handler

The firmware loads three things that decide what a routed token does. All three are written through the descriptor port at r9 + 0x400 and the data port at r9 + 0x8c0 ([arm1_firmware.md](arm1_firmware.md) lists the port protocol).

**Established** (`init_ged_ucode` 0x0c001e20, `init_ged` 0x0c0024e8).

1. **The distributor program** (1024 words of `ged1b.u`, descriptor 0x48200020), with the 83 slot words relocated to handler addresses ([ged_relocs.tsv](ged_relocs.tsv)).
2. **Two tables from the second segment of `ged1b.u`:** 16 words (descriptor 0x42200020) and 512 words (descriptor 0x42600020). The 512 entries are small numbers (largest 0x3a1) that are word addresses inside the 1024-word distributor program: entry 129 is 0x254, entry 170 is 0x275, entry 196 is 0x4f.
3. **A table of engine handler addresses.** `init_ged` writes 43 entries into indexes 0 to 63 of a table: descriptor 0x46000020 with the index as data sets the index, 0x46200020 with a `gepc` handler address writes an entry and advances the index (`arm_matrixmode` sets index 3 once and writes ten entries in a row). [ged_bound_table.tsv](ged_bound_table.tsv) lists them: 0 `mgesi_BshRegisterWrite`, 1 `mgeb_Fogf`, 2 `mgeb_Fogi`, 3-12 the ten matrix operations (load identity, load matrix, frustum, multiply, ortho, pop, push, rotate, scale, translate) in the modelview variants, 14 `mges_NullCommand`, 15 `mgesi_TBUS_1`, 16 `mgebi_ReferencePlane`, 25-28 the map-grid and map-spec evaluators, 29-31 deformation and IMP register writes, 32-33 the 2D mip-map bind and texture scale/bias, 34 `mgesi_PushAttrLights`, 42-54 the X-server commands (`XPoint`, `XPointRel`, `XRect`, `XBox`, `XSpans`, `XSegment`, `XLine`, `XLineRel`, `XBgPoint`, `XLoadGC`, `XLoadPosition`, `XLoadClip`, `XLoadScissor`) and 60-63 `EnableUnpack`, `DisableUnpack`, `RestoreColor` and `RestoreNormal`.

**Established** (correlation, [hw_route.tsv](hw_route.tsv)). Take a routed token's command number n. The handler at index `n & 63` of that table has the token's own name for 48 of the 206 routed tokens (the matrix tokens, `TBUS_1`, `REFERENCE_PLANE`, the deformation tokens, `BIND_2D_MIPMAP_TEXTURE`, `FOGF`, and every X-server drawing and load token from `X_POINT` to `X_LOADSCISSOR`), and by role for six more: `MAPGRID1D` and `MAPGRID2D` (`EvalGrid1D` and `EvalGrid2D`), `X_POINT6_R`, `X_POINT24_R` and `X_LINE6_R` (the relative forms) and `LOAD_POST_TEX_SCALE_BIAS` (`TextureScaleBias`). That is 54 tokens. The X-server tokens are the best test: the drawing tokens 0x14c-0x161 take numbers 170-178 and the load tokens (0x129, 0x12a, 0x12b, 0x12d) take 179-182, which land on indexes 42-54, where `init_ged` wrote the X handlers in that order; the old name-matched slots (240, 242, 244-250, 360-363) are the ones stored there.

**Established** (the number is also a separate key into the distributor program). Tokens that share a program entry call different handlers: command 170 (`X_POINT`), 174 (`X_SPANS`) and 178 (`X_BGPOINT`) all start at distributor word 0x275, yet their indexes 42, 46 and 50 hold `XPoint`, `XSpans` and `XBgPoint`; entry 0x2a1 is shared by `LOADIDENTITY` (131), `ORTHO` (135), `TBUS_1` (143), `MAPSPEC1D` (155), `X_POINT_R` (171), `X_SEGMENT` (175) and `X_LOADGC` (179). So the handler does not come from the distributor program.

**Inferred**, from those three results together: the hardware takes the 9-bit command number from the token entry, starts the distributor program at table[16 + n] (the second 512-word table) and uses the low six bits as an index into the handler table, giving the engine the handler address as its command. The firmware's own sequencing supports it: the handler table is filled by the ARM from `gepc`, which is why no static array in `arm1.u` or `ged1b.u` holds a number-to-slot map (every earlier search for one failed), and why one token (`LOADMATRIXF`) can run different handlers: the ARM rebinds indexes 3-12 whenever the matrix mode changes, so the number stays fixed while the handler changes. What is not established is the hardware step itself; no firmware code reads or writes it, only the tables.

**Where the rule does not hold.** For the other 152 routed tokens `n & 63` names an unrelated handler or none, so the handler table is not how they reach the engines: the vertex data tokens (colour, index, normal, texture coordinate, vertex, material, evaluator, packed vertex: numbers 1-18, 78, 129, 142-146, 159, 206, 272 and 448), the begin and end tokens (386-397), `SWAPTMESH`, the vertex-array loop tokens (all number 0), `FLUSH`, `GEPASSCMD`, `SKIP*`, `SETCOLORNORMAL`, `DEFORM` and `X_DATA1`-`X_DATA10`. **Inferred:** their programs pick the handler themselves: the begin and vertex programs contain the relocated slot words for `mgesi_Triangles`, `mgesi_TriangleStrip*`, `mgesi_QuadStrip*`, `mgesi_LineStrip` and the rest of the primitive handlers, and `X_DATA*` and `X_BDATA4` land on `BshRegisterWrite`, a register write, which fits their role. Which of the two paths a program takes, and what bits 6-8 of the number mean (groups 2 and 3 both use the handler table; group 0 holds `POPMATRIX` 8, `PUSHMATRIX` 9 and `FOGI_cont` 2), is **unknown**. So is the instruction set of the distributor program, which this page does not decode.

**Unknown.** Whether the handler table sits in the distributor or in the engines. The engine error register has a bit named `ELUT_ADR` ([GE.h](../GE.h)); a table indexed by six bits that is written beside the distributor program is **inferred** to be the distributor's, but nothing in the firmware names the chip.

A token the ARM runs instead is a plain handler that picks a `gepc` slot in its own code ([above](#how-a-command-reaches-a-geometry-engine-handler)).

## Context tokens

**Established** from the map: tokens 0x1f7-0x1fd run `arm_context_destroy` (0x1f7), `arm_context_mopup` (0x1f8), `arm_context_load` (0x1f9), `arm_context_activate` (0x1fa), `arm_context_fifo_sync` (0x1fb), `arm_context_deactivate` (0x1fc) and `arm_context_init` (0x1fd). This matches the kpm names `HP_CONTEXT_*` for the same values.

**Established** (`arm_context_deactivate`, 0x0c022188): after deactivating the host interface, distributor and engines it writes `gepc[183]` (`mges_ContextDeactGED`) and `gepc[185]` (`mgeb_ContextDeactReconfigureFifo`) to r9 + 0x4f0 and r9 + 0x4f8, the first payload word to r9 + 0x470, and finally `gepc[182]` to r9 + 0x8c0. Slot 182 is `mges_ContextDeactFinish`, so the deactivate ends in the geometry-engine microcode.
