# ARM firmware (arm1.u) and the host-token map

What `usr/gfx/ucode/KONA/arm1.u` (IRIX 6.5.30m, linked as `ucode/KONA/arm1.u`) is, and what it says about how a host command token reaches the geometry engine. Facts are labelled **established** (read from the file or its code at the stated address), **inferred** (with the reasoning) or **unknown**.

[scripts/arm1_disasm.py](../scripts/arm1_disasm.py) writes the outputs this page cites: [arm1_symbols.tsv](arm1_symbols.tsv) (every symbol), [arm1.s](arm1.s) (the whole read-only image disassembled and labelled) and [icu_map.tsv](icu_map.tsv) (the 512-entry token map). [scripts/ged_relocs.py](../scripts/ged_relocs.py) writes [ged_relocs.tsv](ged_relocs.tsv).

## Container

**Established.** `arm1.u` is a big-endian ARM image in AIF layout. The 128-byte header holds three branch-or-no-op words, a data word (0x2c), an SWI, then RO size 0x40248, RW size 0x27c7c, debug size 0x9ae8, zero-init size 0x2d4fc, debug type 1, image base 0x0c000000, workspace 0, address-mode word 0x120 and data base 0x04040260. The header is not loaded: read-only address A is file offset 0x80 + (A - 0x0c000000), and read-write address A is file offset 0x80 + 0x40248 + (A - 0x04040260). Checked by the literal pools: every pointer a function loads from its pool lands on a symbol or a string under this mapping, and an offset of 0 does not.

**Established.** The last 0x9ae8 bytes are a low-level debug table: a symbol count (1682) at +32, then 1682 pairs of {flags << 24 | name offset, value}, then the names. The symbols name the firmware's functions (`init_hip`, `arm_cullface`, `arm_context_activate`, ...), its data (`icu_map`, `gepc`, `DGDispatchTable`) and the linker regions (`Image$$RO$$Base` 0x0c000000, `Image$$ZI$$Base` 0x04067edc).

## The token map (`icu_map`)

**Established** (`init_hip`, 0x0c001c60). At start-up the firmware builds a 512-entry table of 32-bit words, one per host token, from a static list at `vector_end` (0x0c000328). Walking the list, a word with bit 0 set is a complete entry; an even word is followed by a second word, and the entry is (first | second << 4). Each entry is stored twice: in `icu_map` (0x04068e54, zero-initialised RAM) and at ARM address 0x00400000 + 4 x token. Tokens the list does not reach get `arm_badcmd` << 4. `init_hip` also records the index of the entry whose handler is `arm_matrixmode`.

**Inferred:** 0x00400000 is a table in the host-interface chip that the hardware consults for each incoming token. The firmware's own messages name an "ICU" (`HA_ICU_CURR_CMD`, `HA_ICU_PREV_CMD`), and the table is called `icu_map`.

[icu_map.tsv](icu_map.tsv) lists all 512 entries with the kpm token names. 306 tokens run an ARM handler and 206 are routed by the hardware.

### Entry format

**Established** from the code that reads or builds entries:

| Bits | Meaning | Where |
|---|---|---|
| 0 | 1 = routed by the hardware, no ARM handler. 0 = ARM handler | `init_hip` keeps odd words whole and builds even ones from a handler address |
| 1-2 | Kind. 0 for ordinary ARM handlers; 3 for tokens 0x1f0, 0x1f8, 0x1fa and 0x1fc. The function at 0x0c001958 (inside the begin/end checker) treats kinds 1 and 2 specially | `init_hip`, 0x0c001984 |
| 3 | Chain: more entries follow in the same list | `varray_build_command` sets it on every entry it builds and `varray_set_cmd_table` clears it on the last |
| 4-31 (ARM entries) | Handler address bits 0-27 (the entry is the address shifted left by 4) | `init_hip` |
| 6-8 | Payload word count for a vertex attribute (from `wordCountTable`) | `varray_build_command` |
| 27-28 | From `lastWrdTable` | `varray_build_command` |
| 29-30 | From `byteCmpTable` | `varray_build_command` |

`varray_build_command` (0x0c0395fc) makes vertex-array entries by taking the attribute token's own entry, clearing bits 5-8 and 27-30, and putting in the count and the two table values above.

**Inferred** from the values in the hardware-routed entries:

- Bits 29-30 give the component type: every `...F` and `...I` token has 2 and every `...D` token has 3 (for example `HP_LOADMATRIXF` 0x58625401 and `HP_LOADMATRIXD` 0x78625001). The double forms send twice the words.
- Bits 15-23 are a 9-bit command number. Forms of one command share it (LOADMATRIXF and LOADMATRIXD 196, ROTATEF and ROTATED 202, X_POINT, X_POINT6 and X_POINT24 170), and the X-server commands get consecutive numbers in token order (X_POINT 170 to X_BGPOINT 178, then X_LOADGC 179 to X_LOADSCISSOR 182).
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

**Unknown:** how a hardware-routed token's 9-bit command number becomes a geometry-engine address. Tested and ruled out:

- It is not the `geif.u` slot: no bit range of the entry, of width 8 to 10, equals or offsets to the slot for the name-matched X-server, fog, map and texture-bind commands.
- It is not a direct index into the distributor's 512-word table: the programs at `table[16 + n]` and `table[n]` for those commands relocate none of the expected slots.
- No 128- or 512-entry array in `arm1.u` holds the expected slots or handler addresses at those positions, as 16- or 32-bit entries.
- The geometry-engine program does not load the expected handler addresses as immediates anywhere (`ucode/ge_isa.md`), except one branch from `mgeb_Fogi` to `mgeb_Fogf`.

The geometry-engine error register names an entry lookup table (`ELUT_ADR`, `GE.h`). **Inferred:** the 9-bit number indexes such a table in the engine or the distributor, filled at run time by a path not yet found. The leads are the distributor's 16-word register block and its program at the table targets.

## Context tokens

**Established** from the map: tokens 0x1f7-0x1fd run `arm_context_destroy` (0x1f7), `arm_context_mopup` (0x1f8), `arm_context_load` (0x1f9), `arm_context_activate` (0x1fa), `arm_context_fifo_sync` (0x1fb), `arm_context_deactivate` (0x1fc) and `arm_context_init` (0x1fd). This matches the kpm names `HP_CONTEXT_*` for the same values.

**Established** (`arm_context_deactivate`, 0x0c022188): after deactivating the host interface, distributor and engines it writes `gepc[183]` (`mges_ContextDeactGED`) and `gepc[185]` (`mgeb_ContextDeactReconfigureFifo`) to r9 + 0x4f0 and r9 + 0x4f8, the first payload word to r9 + 0x470, and finally `gepc[182]` to r9 + 0x8c0. Slot 182 is `mges_ContextDeactFinish`, so the deactivate ends in the geometry-engine microcode.
