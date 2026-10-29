# The distributor: instruction set, registers and dispatch

The distributor (`ged`) sits between the host interface and the geometry engines. It runs a 1024-word program, `ged1b.u` in `usr/gfx/ucode/KONA/`, which the ARM loads at start-up ([arm1.md](arm1.md)). This page reads the program's word format, the distributor's register space and how it picks a program entry for each geometry token. Facts are labelled **established** (read from a binary at the stated place), **inferred** (with the reasoning) or **unknown**. All binaries are IRIX 6.5.30m.

Sources:

- `usr/diags/IR/bin/irsaudit`, the IR diagnostic: an N32 executable, stripped, with 1280 exported function names. Among them are the routines that build distributor words and control words: `Compact_GED_Ucode` (0x1013fc60), `Get_GED_Nop_Inst`, `Get_GED_Fetch_Inst`, `Get_GED_Release_Inst`, `Compact_GED_Geom_Control`, `Compact_GED_Pass_Control`, `Compact_GED_Reg_Pixel_Control`, the matching `Compact_HIP_*` routines, `GEDencodeOneHotRegisterAddress`, `Load_GED_Reg`, `Activate_GED_Ucode`, `Load_GED_Ucode_Flush`, `load_ged_seq_ucode`, `load_ged_pcl_table` and `gedSequencer`. They were disassembled with the MIPS binutils. The flat dump is not committed.
- `ged1b.u` itself, its line table and its two tables. [scripts/ged_disasm.py](../scripts/ged_disasm.py) writes [ged_listing.txt](ged_listing.txt), every word decoded with the layout below.
- `arm1.u`'s token map ([icu_map.tsv](icu_map.tsv)) and descriptor writes ([arm1_firmware.md](arm1_firmware.md)).

## Word format

**Established** (`Compact_GED_Ucode`). The diagnostic fills a 13-word structure and packs it into one 32-bit distributor word. Bits 31-30 select one of four types, and each type places the structure's fields differently:

| Type (31-30) | Bits | Field |
|---|---|---|
| 0, control | 29-27, 26, 25-24, 23, 22-17, 16, 15, 13, 12, 11-10, 9-0 | sub-op (always 0 in `ged1b.u`), **fetch**, x, y, a 6-bit r, a, b, c, **release**, z, a 10-bit n. Bit 14 is never set |
| 1, transfer | 29-27, 26, 25, 24, 23-16, 15-10, 9-0 | op, fetch, p, q, an 8-bit register (for ops 5 and 7 the packer turns a register number into a one-hot byte, below), a 6-bit value (written only for ops 1-3), a 10-bit target |
| 2, load | 29-27, 26, 25-24, 23, 22-16, 15-0 | op, fetch, x, y, a 7-bit register, a 16-bit immediate (written only for ops 0 and 2) |
| 3 | 31-30 only | the packer writes nothing else; `ged1b.u` has no type-3 words |

**Established** (the named words). `Get_GED_Nop_Inst` returns 0. `Get_GED_Fetch_Inst` returns a control word with only bit 26 set (0x04000000). `Get_GED_Release_Inst` returns a control word with only bit 12 set (0x00001000). `Load_GED_Ucode_Flush` writes the two-word program [fetch, release] to a given address, points table B entry 63 at it and sets distributor register 0x200 to 63.

**Established** (one-hot registers). `GEDencodeOneHotRegisterAddress` maps register numbers 53-60 to the bytes 0x01, 0x02, 0x04, ..., 0x80 and rejects any other number. `GEDdecodeOneHotRegisterAddress` is its inverse. `Compact_GED_Ucode` calls the encoder for transfer ops 5 and 7 only.

**Established** (the program). `ged1b.u` has 931 words: 210 control, 248 transfer and 473 load. Every transfer target is below 931. Transfer ops by count: 0 (120), 1 (24), 3 (9), 4 (1), 5 (7), 6 (32), 7 (55); op 2 is unused. Load ops: 0 (450) and 2 (23).

### What each type does

**Inferred** from the program, with the reasoning given for each:

- **Transfers jump to the 10-bit target, with one delay slot.** Entry 0x36f (`tri.s:65`) is a jump to 0x13 (`material.s`) followed by a load of r49, and the word after that load starts another table entry. Only if the load executes as the jump's delay slot does it ever run. Every unused table entry lands on a three-word loop of the same shape, for example 0x003-0x005: load r69 with the null handler, jump to itself, then a no-op. Op 0 has no register operand and is the unconditional form. Op 4 occurs once, to address 0. Ops 1 and 3 test r50 or r51 against the 6-bit value. Op 6 tests r51. Ops 5 and 7 test one of the one-hot registers 53-60. What each condition tests (equal, bit set, nonzero) is **unknown**.
- **Load op 0 sets a register to the immediate. Load op 2 copies a register.** All 23 op-2 words carry 0x3e or 0x36 as the immediate, and 0x3e and 0x36 are themselves register numbers the program loads (r62, r54). The copies run `r70 <- r62`, `r69 <- r62` and `r65 <- r54`, and the ARM relocates only op-0 loads ([arm1.md](arm1.md)).
- **Fetch (bit 26) takes the next word from the input. Release (bit 12) ends a command sequence.** The diagnostic names both words. Each primitive module has exactly one release, two in `tfanpoly.s`, and it sits on the path that runs after `END` and resets r48 and r49 (`tri.s:54`, `0x04001000`). The flush, material and idle stubs also end in one. Bit 26 also occurs in load and transfer words (19 of the 32 op-6 transfers, and the last load of every begin stub), so **inferred:** fetch is a side effect any word can carry. How a completed primitive (every third vertex of `tri.s`) is handed to an engine is **unknown**. The candidates are the x and y fields that every vertex-state load of r49 carries.
- Control fields x, y, r, a, b, c, z and n, and load fields x and y. The vertex states load r49 with x = 2 or 3 and y = 1 (`tri.s:23`: `82b10b5a`). Their meaning is **unknown**.

## Registers

**Established** (values, from the listing). The loads name these registers. The roles are **inferred** from the values and from where the loads sit.

| Register | Values loaded | Role |
|---|---|---|
| r48 | 0 at every primitive's end; 1 `points.s`, 2 `lines.s`, 4 `tri.s`, 5 `linestrip.s`, 6 `lineloop.s`, 7 `quad.s`, 8 `qstrip.s`, 9 `tstrip.s`, 10 `tfanpoly.s`, 12 `trigger.s` | the current primitive class, set by each begin stub ([below](#how-an-entry-is-chosen)) |
| r49 | (n << 10) \| word, with n from 0 to 15 and word a program address | the vertex state: n counts vertices within the primitive's cycle, and word is where the next vertex goes. Reset to 0x1d (`trigger.s:7`, the idle vertex code) at every end |
| r50, r51 | r50: 0-10; r51: 0xa, 0xb, 0xc | tested by transfer ops 1, 3 and 6; begin stubs test r50 first |
| r62 | geometry-engine slots of primitive handlers (`mgesi_Triangles`, `mgesi_TriangleStrip*`, ...) | the handler for the current primitive; copied to r70 before a release |
| r69, r70, r71 | handler slots (`mgebi_NullCommand`, `mges_EvalCoord`, `mgeb_Material`, `mgeb_RasterPos`, ...) | the handler sent with the next release |
| r13, r14, r54, r55, r56, r65, r67, r30, r31, r33, r39 | small constants (r13 = 0xf in every begin) | **unknown** |

**Established** (relocation). The ARM's loader (`init_ged_ucode`) relocates op-0 loads whose register is 0x3e or 0x45-0x48 (r62, r69-r72). The diagnostic's loader (`load_ged_seq_ucode`, 0x1003a14c) relocates the same form for registers 0x40 and 0x45-0x48, and refuses a slot of 512 or more. **Inferred:** r64 and r62 are both handler registers, and the production firmware never loads r64.

### Registers the host writes

**Established** (`ged_host_reg_write` 0x100372d4 and `Load_GED_Reg` 0x1013f830). A distributor register write is a control word of the third kind below, with the register number in bits 13-22: `((reg << 13) | 1)`. It reaches the descriptor port (ARM address 0x200600, the ARM's r9 + 0x400) as (control >> 3) << 11 | 0x20, which puts the register number in bits 21-30. The value follows at r9 + 0x8c0. That is the form of every ARM descriptor in the 0x42..., 0x44..., 0x46... and 0x48... families ([arm1_firmware.md](arm1_firmware.md)). Registers by number, with the evidence for each:

| Register | Use (writer) |
|---|---|
| 0x200, 0x201 | written before a program is started: 0x200 = the table B index, 0x201 = 4 \| (flag << 3) \| (flag << 4) (`Activate_GED_Ucode`) |
| 0x210, 0x211 | table A pointer and data, 16 words (`load_ged_pcl_table`; ARM descriptors 0x42000020 and 0x42200020) |
| 0x212, 0x213 | table B pointer and data, 512 words (same; 0x42400020, 0x42600020). `Activate_GED_Ucode` writes one entry this way |
| 0x220-0x222 | initial values from the context record (ARM 0x44000020-0x44400020) |
| 0x230, 0x231 | the 64-entry engine handler table: index, then entries with auto-increment (ARM 0x46000020, 0x46200020) |
| 0x233, 0x235 | value and address ports to the geometry-engine registers (ARM 0x46600020, 0x46a00020, [docs/ge.md](../docs/ge.md)) |
| 0x240, 0x241 | program pointer and data, 1024 words (diagnostic 0x48000020, 0x48200020) |
| 0x242 | cleared before a program is started (`Activate_GED_Ucode`) |
| 0x280-0x28b, 0x29d, 0x2a5, 0x2ae, 0x2b0 | set by the diagnostic's sequencer test (`gedSequencer`); 0x280/0x281 and 0x282/0x283 are pointer and data pairs; 0x2b0 is written three to ten times in a row; **unknown** roles |

The names "seq ucode" for the program and "pcl table" for tables A and B are the diagnostic's own (`load_ged_seq_ucode`, `load_ged_pcl_table`).

## The token-map entry is the distributor's control word

**Established** (`Compact_HIP_Geom_Control` 0x1013f44c, `Compact_HIP_Pass_Control` 0x1013f4c0, `Compact_HIP_Reg_Pixel_Control` 0x1013f51c, and the matching `Compact_GED_*`). The diagnostic builds a 24-bit distributor control word (the `gc_ctrl[24]` bus of the netlist, [ge_isa.md](ge_isa.md)) in one of three forms, then packs it with host-interface bits into a 32-bit word in exactly the layout of the token map's routed entries:

| Form | Entry bits | Control word placed at | Count field |
|---|---|---|---|
| Geometry | bit 31 = 1, bit 0 = 1 | bits 9-30 = control bits 1-22 (control bit 23 is the form flag) | bits 6-8 |
| Pass | bit 31 = 0, bit 5 = 0, bit 0 = 1 | bits 11-30 = control bits 3-22 | bits 6-10 |
| Register/pixel | bit 31 = 0, bit 5 = 1, bit 0 = 1 | bits 11-30 = control bits 3-22 | bits 6-10 |

In all three, bits 1-2, 3 and 4 hold three host-interface fields (the kind, chain and one more bit, [arm1.md](arm1.md)). Splitting the 512-entry map this way gives 121 geometry, 71 pass and 14 register/pixel entries, which together are the 206 routed tokens:

- **Geometry:** the begin, end, vertex, colour, index, normal, texture-coordinate, material, evaluator-continuation, packed-vertex, array-loop, `SWAPTMESH` and `BEGIN_SUBDIV_PATCH` tokens.
- **Pass:** the matrix, map, fog, flush, `TBUS_1`, `GEPASSCMD` and X drawing tokens, plus the X-server `X_DATA*` words.
- **Register/pixel:** `EVAL_COORD*` and `EVAL_POINT*` (register 0x28f), `SETCOLORNORMAL` (0x293), `DEFORM` (0x292), `GED_NOP` (register 1), `SKIP*` (3) and the diagnostic reserved tokens (1).

The ARM's descriptor words have bit 0 clear and bit 5 set. **Inferred:** bit 0 marks an entry routed from the host stream, and a descriptor written by the ARM itself does not need it.

**Established** (geometry control fields, `Compact_GED_Geom_Control`). Bit 0, 1-5, 6, 7-12, 13, 14, 15, 16, 17-18, 19-20, 21-22, and 23 = 1. Decoding the 121 geometry entries with that layout gives the fields below. The values are established; each meaning is **inferred** from which tokens carry it:

| Control bits | Token-map bits | Values | Reading |
|---|---|---|---|
| 1-5 | 9-13 | vertex 0, colour 8, index 12, normal 13, texture coordinate 16, `MATERIAL*_cont` 2; 0 for begin and end | word offset of the attribute in the vertex record |
| 6 | 14 | 1 for vertex-data tokens, 0 for begin, end, material, array loop | the payload is vertex data |
| 7-12 | 15-20 | vertex 14, normal 15, colour 16, index 17, texture coordinate 18, begin 4-13, end 2, `SWAPTMESH` 3, material 1 and 31, array loop 0, subdivision 21 | the entry number k |
| 13 | 21 | 1 for the vertex and packed-vertex tokens only | marks a vertex, the token that completes a vertex |
| 14 | 22 | 1 for `F` and `D` forms and the begin and end tokens; 0 for `B`, `S`, `I` and the unsigned forms | data are floating point |
| 15 | 23 | 1 for `UB`, `US`, `UI` forms and begin and end | data are unsigned |
| 16 | 24 | 1 for the integer colour and normal forms, 0 for integer vertex, index and texture coordinate | integer data are normalised (the GL rule for colours and normals) |
| 17-18 | 25-26 | 4 minus the component count (`COLOR3*` 1, `TEXCOORD1*` 3, `VERTEX2*` 2) | components the hardware fills with defaults |
| 19-20 | 27-28 | 3 for 32- and 64-bit data; for bytes and shorts, the number of valid bytes in the last word minus 1 (`COLOR3B` 2, `COLOR3S` 1, `COLOR4S` 3) | bytes in the last word |
| 21-22 | 29-30 | 0 byte, 1 short, 2 32-bit, 3 double | component size |

This replaces [arm1.md](arm1.md)'s reading of token-map bits 21-23 as a bank number. For a geometry token those bits are the vertex, float and unsigned flags. A `VERTEX3F` token's "bank 3" is vertex | float, not a primitive class. For a pass token the same bits are three separate fields (`Compact_GED_Pass_Control`: control bits 13, 14 and 15). That is why the ARM's eight register-write descriptors (command numbers 0, 64, ..., 448) differ only there.

## How an entry is chosen

**Established** (tables). Table A is 16 words: 0, 0x35, 0x32, 0, 0x30, 0x28, 0x08, 0x2c, 0x10, 0x18, 0x20, 0, 0x34, 0, 0, 0. Every begin stub loads r48 with a class c and r49 with a state. For each class, 8 x A[c] is the first table B index of that primitive's entries. The check: for all 177 loads of r49 in the program whose word is not the idle 0x1d, the word equals B[8 x A[c] + 4n], where c is the class the module loads into r48 and n is r49's upper bits. There are no exceptions.

| r48 | Module | 8 x A[r48] | Entries |
|---|---|---|---|
| 0 | idle (`trigger.s`, `material.s`, the stubs) | 0x000 | 0x000-0x03f |
| 1 | `points.s` | 0x1a8 | 0x1a8-0x1af |
| 2 | `lines.s` | 0x190 | 0x190-0x19b |
| 4 | `tri.s` | 0x180 | 0x180-0x18f |
| 5 | `linestrip.s` | 0x140 | 0x140-0x153 |
| 6 | `lineloop.s` | 0x040 | 0x040-0x063 |
| 7 | `quad.s` | 0x160 | 0x160-0x173 |
| 8 | `qstrip.s` | 0x080 | 0x080-0x0b7 |
| 9 | `tstrip.s` | 0x0c0 | 0x0c0-0x0ff |
| 10 | `tfanpoly.s` | 0x100 | 0x100-0x12b |
| 12 | `trigger.s` (subdivision) | 0x1a0 | 0x1a0-0x1a7 |

**Established** (layout within a class). Each class's entries come in groups of four, one group per state n. Within a group, for `tri.s`:

- offset 0 is the vertex code of that state, the same word r49 holds;
- offset 1 saves the state in r49 and jumps to the material code (`material.s`);
- offset 2 finishes or abandons the primitive (it sets r48 to 0 and r49 to 0x1d);
- offset 3 is a plain fetch in `tri.s` (0x377), while `tstrip.s` gives each state its own offset-3 code.

The same four offsets in class 0 are B[0] = 0x1d (idle vertex), B[1] = 0x16 (material), B[2] = 0x3 (the null loop) and B[3] = 0x23 (fetch and release).

**Inferred** (the rule). The hardware forms a table B index as 8 x A[r48] + 4 x (r49 >> 10) + j. For the tokens that take part in primitive assembly, j is the token's entry number k when k is below 4: the array-loop tokens (k = 0) count as vertices, material is 1, `END` is 2 and `SWAPTMESH` is 3. Four things point that way:

- The offsets match those tokens in every class: material saves and resumes, `END` resets r48, and the swap code exists only for triangle strips.
- With r48 = 0 and n = 0 the formula gives B[k], which is how the begin tokens (k = 4-13) reach their stubs at B[4]-B[13].
- The begin tokens are illegal inside a primitive (the ARM's begin/end check, [arm1_firmware.md](arm1_firmware.md)), so they never need the state-based index.
- A vertex token (k = 14, control bit 13 set) runs the code r49 points at, which is offset 0 of the current group.

Attribute tokens (colour, normal, index, texture coordinate: control bit 6 set, bit 13 clear) need no program step to update the current vertex. So their data are **inferred** to go to the vertex record by the hardware, at the offset in control bits 1-5 with the conversion the other fields describe. In the idle state their entries (B[15]-B[18]) are the null loop.

This also answers which unit picks the bank, the question [arm1.md](arm1.md) left open. The distributor does, from its own r48 through table A, and the token carries no bank. The eight-bank reading of table B was a coincidence of the 64-entry spacing: points, lines, triangles and the subdivision code all sit in what looked like bank 6.

**Unknown: needs capture.**

- How the hardware chooses between the state-based index and the token's own k (by k < 4, by control bit 6, or by a separate path for vertex tokens). A trace of the distributor's dispatch address per token would settle it. The scan chain names it (`ged_dispInst`, `ged_dispGeomCtrl`, `ged_geomStatus` in `irsaudit`'s boundary-scan register list). The capture is a JTAG read of those registers, one token at a time, while the pipe receives `BEGIN_TRIANGLES`, three `VERTEX3F`, `COLOR3F`, `SWAPTMESH` and `END`.
- What transfer ops 1, 3, 5, 6 and 7 test, and what control fields x, y, r, a, b, c, z and n do. The diagnostic's sequencer test (`gedSequencer`) builds a five-word program from them and checks a CRC. The same capture over that test would show the effect of each field.
- How the distributor picks among the eight engines. The installed 6.5.5 header `sys/kona_if.h` has a round-robin flag and an occupancy mask, which point at it.
