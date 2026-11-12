# The distributor: instruction set, registers and dispatch

The distributor (`ged`) sits between the host interface and the geometry engines. It runs a 1024-word program, `ged1b.u` in `usr/gfx/ucode/KONA/`, which the ARM loads at start-up ([arm1.md](arm1.md)). This page reads the program's word format, the distributor's register space and how it picks a program entry for each geometry token. Facts are labelled **established** (read from a binary at the stated place), **inferred** (with the reasoning) or **unknown**. All binaries are IRIX 6.5.30m.

Sources:

- `usr/diags/IR/bin/irsaudit`, the IR diagnostic: an N32 executable, stripped, with 1280 exported function names. Among them are the routines that build distributor words and control words: `Compact_GED_Ucode` (0x1013fc60), `Get_GED_Nop_Inst`, `Get_GED_Fetch_Inst`, `Get_GED_Release_Inst`, `Compact_GED_Geom_Control`, `Compact_GED_Pass_Control`, `Compact_GED_Reg_Pixel_Control`, the matching `Compact_HIP_*` routines, `GEDencodeOneHotRegisterAddress`, `Load_GED_Reg`, `Activate_GED_Ucode`, `Load_GED_Ucode_Flush`, `load_ged_seq_ucode`, `load_ged_pcl_table` and `gedSequencer`. They were disassembled with the MIPS binutils. The flat dump is not committed.
- `ged1b.u` itself, its line table and its two tables. [retools/tools/kona/ged_disasm.py](../retools/tools/kona/ged_disasm.py) writes [ged_listing.txt](ged_listing.txt), every word decoded with the layout below.
- `arm1.u`'s token map ([icu_map.tsv](icu_map.tsv)) and descriptor writes ([arm1_firmware.md](arm1_firmware.md)).

## Word format

**Established** (`Compact_GED_Ucode`). The diagnostic fills a 13-word structure and packs it into one 32-bit distributor word. Bits 31-30 select one of four types, and each type places the structure's fields differently:

| Type (31-30) | Bits | Field | Grade |
|---|---|---|---|
| 0, control | 29-27, 26, 25-24, 23, 22-17, 16, 15, 13, 12, 11-10, 9-0 | sub-op (always 0 in `ged1b.u`), **fetch**, x, y, a 6-bit r, a, b, c, **release**, z, a 10-bit n. Bit 14 is never set | established |
| 1, transfer | 29-27, 26, 25, 24, 23-16, 15-10, 9-0 | op, fetch, p, q, an 8-bit register (for ops 5 and 7 the packer turns a register number into a one-hot byte, below), a 6-bit value (written only for ops 1-3), a 10-bit target | established |
| 2, load | 29-27, 26, 25-24, 23, 22-16, 15-0 | op, fetch, x, y, a 7-bit register, a 16-bit immediate (written only for ops 0 and 2) | established |
| 3 | 31-30 only | the packer writes nothing else; `ged1b.u` has no type-3 words | established |

**Established** (the named words). `Get_GED_Nop_Inst` returns 0. `Get_GED_Fetch_Inst` returns a control word with only bit 26 set (0x04000000). `Get_GED_Release_Inst` returns a control word with only bit 12 set (0x00001000). `Load_GED_Ucode_Flush` writes the two-word program [fetch, release] to a given address, points table B entry 63 at it and sets distributor register 0x200 to 63.

**Established** (one-hot registers). `GEDencodeOneHotRegisterAddress` maps register numbers 53-60 to the bytes 0x01, 0x02, 0x04, ..., 0x80 and rejects any other number. `GEDdecodeOneHotRegisterAddress` is its inverse. `Compact_GED_Ucode` calls the encoder for transfer ops 5 and 7 only.

**Established** (the program). `ged1b.u` has 931 words: 210 control, 248 transfer and 473 load. Every transfer target is below 931. Transfer ops by count: 0 (120), 1 (24), 3 (9), 4 (1), 5 (7), 6 (32), 7 (55); op 2 is unused. Load ops: 0 (450) and 2 (23).

### What each type does

**Inferred** from the program, with the reasoning given for each:

- **Transfers jump to the 10-bit target, with one delay slot.** Entry 0x36f (`tri.s:65`) is a jump to 0x13 (`material.s`) followed by a load of r49, and the word after that load starts another table entry. Only if the load executes as the jump's delay slot does it ever run. Every unused table entry lands on a three-word loop of the same shape, for example 0x003-0x005: load r69 with the null handler, jump to itself, then a no-op. Op 0 has no register operand and is the unconditional form. Op 4 occurs once, to address 0. Ops 1 and 3 test r50 or r51 against the 6-bit value. Op 6 tests r51. Ops 5 and 7 test one of the one-hot registers 53-60. What each condition tests (equal, bit set, nonzero) is **unknown**. What would settle it: the distributor netlist's compare logic for ops 1, 3, 5, 6 and 7, or the table entries run with r50 and r51 set to values that separate equality, a set bit and nonzero (hardware proposal first).
- **Load op 0 sets a register to the immediate. Load op 2 copies a register.** All 23 op-2 words carry 0x3e or 0x36 as the immediate, and 0x3e and 0x36 are themselves register numbers the program loads (r62, r54). The copies run `r70 <- r62`, `r69 <- r62` and `r65 <- r54`, and the ARM relocates only op-0 loads ([arm1.md](arm1.md)).
- **Fetch (bit 26) takes the next word from the input. Release (bit 12) ends a command sequence.** The diagnostic names both words. Each primitive module has exactly one release, two in `tfanpoly.s`, and it sits on the path that runs after `END` and resets r48 and r49 (`tri.s:54`, `0x04001000`). The flush, material and idle stubs also end in one. Bit 26 also occurs in load and transfer words (19 of the 32 op-6 transfers, and the last load of every begin stub), so **inferred:** fetch is a side effect any word can carry. How a completed primitive (every third vertex of `tri.s`) is handed to an engine is **unknown**. What would settle it: the distributor netlist's engine-select and valid lines (`hq_valid`), or the order of engine writes in a scan capture while one triangle runs (hardware proposal first). Field x of the vertex-state loads is read below as a vertex-history operation and the r51 count as the batch size ([Vertex history fields x and z](#vertex-history-fields-x-and-z)), which leaves field y and the hardware's own batch hand-over as the candidates.
- Control fields x, y, r, a, b, c, z and n, and load fields x and y. The vertex states load r49 with x = 2 or 3 and y = 1 (`tri.s:23`: `82b10b5a`). Fields x and z are read in [Vertex history fields x and z](#vertex-history-fields-x-and-z); y, r, a, b, c and n are **unknown**. What would settle it: the distributor netlist's decode of the control word's fields, or the diagnostic's own field names for those bits (a read of its distributor tests).

### Vertex history fields x and z

**Established** (where the values occur, [ged_listing.txt](ged_listing.txt)). Field x (bits 25-24) is set only on the
words that handle a vertex token or a `SWAPTMESH` token, plus the idle, raster-position and single-word paths of
`trigger.s` (words 0x021, 0x025, 0x028 and the patch vertex 0x034, all x = 2), and field z (bits 11-10) only on the batch-switch and end paths of
the modules that keep vertices across primitives:

| Module | x on each vertex | z | Count reloaded into r51 at a batch switch |
|---|---|---|---|
| `points.s`, `lines.s`, `tri.s`, `quad.s` | 2 on every vertex | never | 0xc |
| `linestrip.s` | 2 on every vertex | 2 before the first vertex of a new batch | 0xb |
| `lineloop.s` | 2 on the first, 3 on the second, 2 after (3 again on a second vertex after a material change, word 0x14c) | 2 at a switch; 3 on every end path | 0xb, or 0xa on the split-loop path |
| `tstrip.s`, `qstrip.s` | 2 on the first, 3 on every later vertex | 3 then 2 at every switch | 0xa |
| `tfanpoly.s` | 2 on the first, 3 on the second, 2 after | 3 then 2 at every switch | 0xa |

The `SWAPTMESH` entries of `tstrip.s` load r49 with x = 1 (words 0x0b2-0x0cc, and the control word 0x101); no other
module uses x = 1. Every begin stub loads r51 with 0xc.

**Inferred** (one reading fits every module above). The distributor keeps two vertex history slots per primitive and a
count of room left in the current engine batch:

- x = 2 writes the incoming vertex into the newer slot; x = 3 first moves the newer slot into the older one; x = 1
  exchanges the two. A fan's or loop's second vertex is the only x = 3 write, so the centre or first vertex stays in the
  older slot for the rest of the primitive; a strip shifts on every vertex, so the two slots hold the last two vertices.
  The `SWAPTMESH` exchange gives the IRIS GL swap order: after it the next shift drops the newer vertex instead of the
  older.
- z = 2 sends the newer slot again and z = 3 the older one. The modules issue them exactly when a new batch starts or a
  loop closes: one resend (z = 2) for a line strip, which shares one vertex across the boundary; two (z = 3, z = 2) for a
  triangle strip, quad strip or fan, which share an edge; and z = 3 alone at the end of a line loop, the first vertex as
  the closing endpoint.
- r51 counts the vertices a batch can still take: twelve for a new primitive, eleven after one carried vertex, ten after
  two. The op-6 transfer tests it on every vertex of the strip modules and on every finished primitive of the separate
  ones (third corner of a triangle, second endpoint of a line, fourth corner of a quad, every point), so a batch holds
  twelve primitives of those classes.

What fields y, r, a, b, c and n do, and how a full batch is handed to an engine, stay open. Field y is set on almost every
x-carrying load and on some end paths (`lines.s` 0x38c, `lineloop.s` 0x18d, `tstrip.s` 0x0db).

## Registers

**Established** (values, from the listing). The loads name these registers. The roles are **inferred** from the values and from where the loads sit.

| Register | Values loaded | Role |
|---|---|---|
| r48 | 0 at every primitive's end; 1 `points.s`, 2 `lines.s`, 4 `tri.s`, 5 `linestrip.s`, 6 `lineloop.s`, 7 `quad.s`, 8 `qstrip.s`, 9 `tstrip.s`, 10 `tfanpoly.s`, 12 `trigger.s` | the current primitive class, set by each begin stub ([below](#how-an-entry-is-chosen)) |
| r49 | (n << 10) \| word, with n from 0 to 15 and word a program address | the vertex state: n counts vertices within the primitive's cycle, and word is where the next vertex goes. Reset to 0x1d (`trigger.s:7`, the idle vertex code) at every end |
| r50, r51 | r50: 0-10; r51: 0xa, 0xb, 0xc | tested by transfer ops 1, 3 and 6; begin stubs test r50 first |
| r62 | geometry-engine slots of primitive handlers (`mgesi_Triangles`, `mgesi_TriangleStrip*`, ...) | the handler for the current primitive; copied to r70 before a release |
| r69, r70, r71 | handler slots (`mgebi_NullCommand`, `mges_EvalCoord`, `mgeb_Material`, `mgeb_RasterPos`, ...) | the handler sent with the next release |
| r13, r14, r54, r55, r56, r65, r67, r30, r31, r33, r39 | small constants (r13 = 0xf in every begin) | **unknown**; what would settle it is the first word that reads each register in the distributor listing, or the netlist's use of it |

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
| 0x280-0x2b0 | set by the diagnostic's sequencer and stress tests; what each test writes is [below](#the-diagnostics-sequencer-and-stress-tests) |

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

## Table B entries, one by one

Each row below is one entry of the 512-entry table B of `ged1b.u` (IRIX 6.5.30m): the index, the token and primitive
state that select it under the index rule of [How an entry is chosen](#how-an-entry-is-chosen), and what the program does
from the word the entry holds, read from [ged_listing.txt](ged_listing.txt). Register roles used in the rows: the class
register r48, the state register r49 (state n in its upper bits, the next vertex word below), the pending-class register
r50, the current handler r62, and the handler r70 that the next release sends. The row label covers the reading of the
target's words; the index rule itself is the inference of that section. Entries that hold the null loop (0x003 or 0x006)
are listed after each table, and each has a row of its own in the generated [ged_null_entries.md](ged_null_entries.md).

### Idle state and the begin tokens (class 0, entries 0x000-0x03f)

| Entry | Token, class 0 | What the code at the target does |
|---|---|---|
| 0x000 | `ged1b.u` the array-loop vertex tokens outside any primitive | **Inferred**: runs the idle vertex code at word 0x01d (`trigger.s` line 7). Unless nothing is pending it first flushes a pending evaluator coordinate through the subroutine at 0x009 and copies the current handler into the release handler; then it marks the control word with x = 2, loads the null command `mges_NullCommand` and releases, so a vertex given outside begin and end reaches no primitive. |
| 0x001 | `ged1b.u` `HP_MATERIALF` and the other k = 1 material tokens while idle | **Inferred**: enters the material code at word 0x016 (`material.s` line 11). After the same pending-primitive flush as the idle vertex, it loads `mgeb_Material` as the third handler, issues a fetch with control fields a and b set, and ends with a release so the material change goes out on its own. |
| 0x002 | `ged1b.u` `HP_END` with no primitive open | **Inferred**: lands on the null loop at word 0x003, which loads `mgebi_NullCommand` and spins on itself, so an unmatched end is swallowed; the ARM rejects such a stream before it reaches the distributor. |
| 0x003 | `ged1b.u` `HP_SWAPTMESH` outside a primitive | **Inferred**: word 0x023 (`trigger.s` line 17) fetches the next word and then releases with whatever handler is loaded, without touching the class or state, so the swap has no effect when no strip is open. |
| 0x004 | `ged1b.u` `HP_BEGIN_POINTS` | **Inferred**: the points begin stub at word 0x10e (`points.s` line 6). It tests the pending class against 0 and against 1, and when another class is still pending it flushes it; it then makes `mgesi_Points` the current handler, loads 0xc into r51, sets class 1 and points the state register at state 1, word 0x119. |
| 0x005 | `ged1b.u` `HP_BEGIN_LINESTRIP` | **Inferred**: begin stub at word 0x1a2 (`linestrip.s` line 6): a pending-class test for 0, a second for 5, the flush of a different pending primitive, then `mgesi_LineStrip` as current handler, class 5 and state 0 at word 0x1b7. |
| 0x006 | `ged1b.u` `HP_BEGIN_LINELOOP` | **Inferred**: begin stub at word 0x130 (`lineloop.s` line 6) with a pending-class test for 0, then one for 6. A line loop is sent with the same engine handler as a strip, `mgesi_LineStrip`, which the stub loads before setting class 6; the closing segment is the loop module's own work. |
| 0x007 | `ged1b.u` `HP_BEGIN_TRIANGLES` | **Inferred**: begin stub at word 0x34b (`tri.s` line 6). The second test (value 4, its own class) skips the handler load, so a run of separate triangle primitives keeps one handler; otherwise it loads `mgesi_Triangles`, then sets class 4 and state 1 at word 0x357. |
| 0x008 | `ged1b.u` `HP_BEGIN_TSTRIP` | **Inferred**: begin stub at word 0x040 (`tstrip.s` line 6), testing the pending class for 0, then for 9; it loads `mgesi_TriangleStrip` and sets class 9, the triangle-strip module whose 56 entries start at 0x0c0. |
| 0x009 | `ged1b.u` `HP_BEGIN_TFAN` | **Inferred**: begin stub at word 0x2a3 (`tfanpoly.s` line 11). Besides the usual pending-class tests (0, then 10) it checks a one-hot mode register and, when the mode changes, loads `mgeb_SetTfanPolyMode` with the mode value 1, which tells the engines to draw a fan; the current handler becomes the fan and polygon end handler and the class 10. |
| 0x00a | `ged1b.u` `HP_BEGIN_QUADS` and `HP_BEGIN_RECT` | **Inferred**: begin stub at word 0x1e5 (`quad.s` line 6), tests the pending class for 0, then 7; it loads `mgesi_Quads` as current handler and sets class 7, so rectangles and quads share one assembly path. |
| 0x00b | `ged1b.u` `HP_BEGIN_QSTRIP` | **Inferred**: begin stub at word 0x21a (`qstrip.s` line 6) with pending-class tests for 0, then 8, loading `mgesi_QuadStrip` and class 8. |
| 0x00c | `ged1b.u` `HP_BEGIN_POLYGON` | **Inferred**: enters the shared fan code at word 0x2b3 (`tfanpoly.s` line 32). It differs from the fan stub in the mode it sends: when the one-hot mode register is set it loads `mgeb_SetTfanPolyMode` with the mode value 0 and clears the register, then joins the fan path with class 10. |
| 0x00d | `ged1b.u` `HP_BEGIN_LINES` | **Inferred**: begin stub at word 0x379 (`lines.s` line 6); tests the pending class for 0, then 2, loads `mgesi_LineStrip` as the current handler even for separate lines, and sets class 2 with state 0 at word 0x385. |
| 0x00e | `ged1b.u` the plain vertex tokens (k = 14) while idle | **Inferred**: the same idle vertex code at word 0x01d as entry 0x000: an optional flush of the pending primitive, then a release with the null command, so vertex data outside begin and end produce no geometry. |
| 0x013 | `ged1b.u` entry number 19 while idle | **Inferred**: word 0x025 (`trigger.s` line 21) marks the control word with x = 2, fetches with `mgeb_RasterPos` loaded as the third handler and releases: the raster-position command, which takes the current vertex. |
| 0x014 | `ged1b.u` entry number 20 while idle | **Inferred**: word 0x028 (`trigger.s` line 26) is a single fetch with x = 2 followed by a release, passing one word to the engines with the handler already loaded. |
| 0x015 | `ged1b.u` `HP_BEGIN_SUBDIV_PATCH` (k = 21) | **Inferred**: the subdivision begin at word 0x02a (`trigger.s` line 30): after the pending-primitive flush it loads `mgesi_SubdivEntry` as current handler, class 12 and state 1 at word 0x034, and clears two of the small-constant registers. |
| 0x03e | `ged1b.u` the release half of the diagnostic flush | **Inferred**: word 0x011 (`flush.s` line 14) is a fetch with release: the second word of the two-word flush program the diagnostic writes with `Load_GED_Ucode_Flush`. |
| 0x03f | `ged1b.u` the flush entry | **Inferred**: word 0x00d (`flush.s` line 6) tests the pending class; when a primitive is pending it flushes an evaluator coordinate, copies the current handler to the release handler and clears the pending class, then releases at 0x011 so the engines finish the open batch. |

Entries 0x00f-0x012 (the normal, colour, index and texture-coordinate tokens while idle), 0x016-0x03d and 0x002 hold the
null loop at 0x003: those tokens carry no program step, their data going to the vertex record by the hardware.

### Independent triangles (class 4, entries 0x180-0x18f)

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x180 | `ged1b.u` a vertex after at least one finished triangle (state 0) | **Inferred**: word 0x357 (`tri.s` line 23) takes the vertex as the first corner of a new triangle: it loads state 2 with next word 0x35a, marking the load with x = 2 and y, and fetches. |
| 0x181 | `ged1b.u` material in state 0 | **Inferred**: word 0x36f (`tri.s` line 65) jumps to the material code at 0x013, restoring state 0 at word 0x357 in the delay slot so assembly resumes after `mgeb_Material` is queued. |
| 0x182 | `ged1b.u` `HP_END` in state 0 | **Inferred**: word 0x366 (`tri.s` line 52) closes the primitive: class 0, state back to the idle code 0x1d, and a fetch with release that sends the triangle handler loaded when the last triangle completed. |
| 0x183 | `ged1b.u` `HP_SWAPTMESH` in state 0 | **Inferred**: word 0x377 (`tri.s` line 84) is a bare fetch, so a strip swap inside separate triangles is dropped. |
| 0x184 | `ged1b.u` the first vertex after the begin token (state 1) | **Inferred**: the same first-corner code at 0x357 as entry 0x180; state 1 differs from state 0 only in what material and end do. |
| 0x185 | `ged1b.u` material before the first triangle | **Inferred**: word 0x371 (`tri.s` line 69) goes to the material code with state 1 restored (0x757), keeping the begin state across the material change. |
| 0x186 | `ged1b.u` `HP_END` before any triangle finished | **Inferred**: word 0x361 (`tri.s` line 39) first tests r51 against 3 with pending class 4 set in its delay slot; on the other path it flushes a pending evaluator coordinate at 0x009, clears the pending class and loads `mgesi_Triangles` for the release at 0x366. |
| 0x187 | `ged1b.u` `HP_SWAPTMESH` in state 1 | **Inferred**: the bare fetch at 0x377 again; separate triangles have no strip order to swap at the begin state either. |
| 0x188 | `ged1b.u` the second corner (state 2) | **Inferred**: word 0x35a (`tri.s` line 28) records the corner by moving the state register to state 3 with next word 0x35d, then fetches. |
| 0x189 | `ged1b.u` material after one corner | **Inferred**: word 0x373 (`tri.s` line 73) enters the material code with state 2 at 0x35a restored in the delay slot. |
| 0x18a | `ged1b.u` `HP_END` with one corner pending | **Inferred**: word 0x363 (`tri.s` line 45) abandons the incomplete triangle: evaluator flush on r54, pending class cleared, `mgesi_Triangles` loaded for release, then the shared reset at 0x366. |
| 0x18b | `ged1b.u` `HP_SWAPTMESH` after one corner | **Inferred**: fetch-only word 0x377; the pending corner is kept. |
| 0x18c | `ged1b.u` the third corner (state 3) | **Inferred**: word 0x35d (`tri.s` line 33) completes a triangle: state returns to 1, r13 is reloaded with 0xf, and a fetching transfer on r51 goes to 0x36a, which loads `mgesi_Triangles` into the release handler and sets state 0, the state in which the next corner starts the next triangle. |
| 0x18d | `ged1b.u` material after two corners | **Inferred**: word 0x375 (`tri.s` line 77) queues the material handler with state 3 at 0x35d restored, so the third corner still completes the triangle. |
| 0x18e | `ged1b.u` `HP_END` with two corners pending | **Inferred**: the abandon path at 0x363 shared with entry 0x18a: the two corners are dropped and the batch released. |
| 0x18f | `ged1b.u` `HP_SWAPTMESH` after two corners | **Inferred**: plain fetch at 0x377, the last of the four swap entries of class 4. |

### Points (class 1, entries 0x1a8-0x1af)

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x1a8 | `ged1b.u` a vertex after a point was sent (state 0) | **Inferred**: word 0x119 (`points.s` line 22) reloads state 1 with the x = 2 and y marks and takes a fetching transfer on r51 to 0x127, which loads `mgesi_Points` for the release and returns to state 0: every vertex is a whole point. |
| 0x1a9 | `ged1b.u` material between points | **Inferred**: word 0x12c (`points.s` line 54) reaches the material code with state 0 restored at word 0x119. |
| 0x1aa | `ged1b.u` `HP_END` after points were sent | **Inferred**: word 0x121 (`points.s` line 36) sets class 0 and the idle state 0x1d and releases the points batch. |
| 0x1ab | `ged1b.u` `HP_SWAPTMESH` among points | **Inferred**: word 0x125 (`points.s` line 43), a fetch with no state change: a strip swap means nothing for points. |
| 0x1ac | `ged1b.u` the first point after begin (state 1) | **Inferred**: the same per-point code at 0x119 as entry 0x1a8, so the first vertex is sent like every other. |
| 0x1ad | `ged1b.u` material right after the points begin | **Inferred**: word 0x12e (`points.s` line 58) enters material with state 1 (0x519) restored. |
| 0x1ae | `ged1b.u` `HP_END` with no point sent | **Inferred**: word 0x11c (`points.s` line 27) tests r51 against 1 with pending class 1 in its delay slot; otherwise it flushes the evaluator coordinate, clears the pending class and loads `mgesi_Points` before the reset at 0x121. |
| 0x1af | `ged1b.u` `HP_SWAPTMESH` at the begin state of points | **Inferred**: fetch-only word 0x125, ignored like entry 0x1ab. |

### Separate lines (class 2, entries 0x190-0x19b)

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x190 | `ged1b.u` the first endpoint after begin (state 0) | **Inferred**: word 0x385 (`lines.s` line 27) records the endpoint by moving to state 1 with next word 0x388, then fetches. |
| 0x191 | `ged1b.u` material before a line's first endpoint | **Inferred**: word 0x39d (`lines.s` line 77) jumps to material with state 0 at 0x385 restored. |
| 0x192 | `ged1b.u` `HP_END` between lines | **Inferred**: word 0x392 (`lines.s` line 58) resets class and state and releases the batch of finished lines. |
| 0x193 | `ged1b.u` `HP_SWAPTMESH` between lines | **Inferred**: word 0x396 (`lines.s` line 66) only fetches. |
| 0x194 | `ged1b.u` the second endpoint (state 1) | **Inferred**: word 0x388 (`lines.s` line 36) finishes a segment: state 2 with next word 0x385, r13 reloaded with 0xf, and a fetching transfer on r51 to 0x398, which loads `mgesi_LineStrip` for the release and returns to state 0. |
| 0x195 | `ged1b.u` material between a line's two endpoints | **Inferred**: word 0x39f (`lines.s` line 81) enters material with state 1 at 0x388 restored, so the pending endpoint survives. |
| 0x196 | `ged1b.u` `HP_END` with one endpoint pending | **Inferred**: word 0x38c (`lines.s` line 47) sets control field y before falling into the end code at 0x38d, which drops the lone endpoint and releases. |
| 0x197 | `ged1b.u` `HP_SWAPTMESH` with one endpoint pending | **Inferred**: the fetch at 0x396; the endpoint stays pending. |
| 0x198 | `ged1b.u` a first endpoint after a finished segment (state 2) | **Inferred**: the endpoint code at 0x385 shared with entry 0x190, starting the next segment. |
| 0x199 | `ged1b.u` material after a finished segment | **Inferred**: word 0x3a1 (`lines.s` line 85) enters material with state 2 at 0x385 restored. |
| 0x19a | `ged1b.u` `HP_END` after finished segments | **Inferred**: word 0x38d (`lines.s` line 49) tests r51 against 2 with pending class 2 in its delay slot, flushes a pending evaluator coordinate otherwise, loads `mgesi_LineStrip` and releases through the reset at 0x392. |
| 0x19b | `ged1b.u` `HP_SWAPTMESH` after a finished segment | **Inferred**: fetch at 0x396, the third swap entry of class 2, with no effect on the lines. |

### Line loops (class 6, entries 0x040-0x063)

States: 0 takes the first vertex, 1 the second, 2 and 5 the later ones on the plain path, 3 the first vertex after a
batch switch, 8 the second vertex after a material change, and 4, 6 and 7 the later vertices once a material change has
split the loop. The loop's first vertex is the older history slot from the second vertex on (field x, [above](#vertex-history-fields-x-and-z)),
which is what every end entry resends with z = 3 to close the loop.

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x040 | `ged1b.u` the first vertex of a line loop (state 0) | **Inferred**: word 0x13c (`lineloop.s` line 22) writes it with x = 2 into the newest history slot, moves to state 1 at word 0x13f and clears r30 on the fetch. |
| 0x041 | `ged1b.u` material before the loop has a vertex | **Inferred**: word 0x16c (`lineloop.s` line 101) jumps to the material code at 0x013 and puts back state 0 at word 0x13c in the delay slot. |
| 0x042 | `ged1b.u` `HP_END` of an empty line loop | **Inferred**: word 0x19e (`lineloop.s` line 214) clears r48, parks r49 on the idle code 0x1d and releases with the handler already loaded; no closing segment is sent. |
| 0x043 | `ged1b.u` `HP_SWAPTMESH` before the first loop vertex | **Inferred**: word 0x180 (`lineloop.s` line 150) is a lone fetch, so a strip swap inside a loop changes no state. |
| 0x044 | `ged1b.u` the second loop vertex (state 1) | **Inferred**: word 0x13f (`lineloop.s` line 27) loads r49 with x = 3, shifting the first vertex into the older slot where it stays, and moves to state 2 at 0x142. |
| 0x045 | `ged1b.u` material after one loop vertex | **Inferred**: word 0x16e (`lineloop.s` line 106) reaches the material code with r49 set to state 8 (0x214c), so the next vertex takes the x = 3 shift through word 0x14c and then joins the split-loop states. |
| 0x046 | `ged1b.u` `HP_END` with one loop vertex | **Inferred**: word 0x18e (`lineloop.s` line 186) tests the batch count against 3, setting the pending class to 6 in its delay slot; the branch leaves the batch open, while the other path clears the pending class, makes `mgesi_LineStrip` the current handler and goes through 0x198, where a one-hot test picks which of the two release-handler registers takes it, before the release. |
| 0x047 | `ged1b.u` `HP_SWAPTMESH` with one loop vertex | **Inferred**: the fetch at 0x180 again; the single vertex stays in the newest slot. |
| 0x048 | `ged1b.u` a later loop vertex on the plain path (state 2) | **Inferred**: word 0x142 (`lineloop.s` line 32) replaces the newest slot (x = 2) and stays in state 2, and the fetching op-6 transfer on the batch count goes to 0x158 when the batch is full: evaluator flush, state 3, `mgesi_LineStrip` into one of the release-handler registers as the one-hot test at 0x15a decides, and the count reset to 0xb, one vertex short of twelve. |
| 0x049 | `ged1b.u` material in the middle of a loop (state 2) | **Inferred**: word 0x170 (`lineloop.s` line 111) enters the material code and resumes in state 4 (0x114f), whose batch switches load the vertex-0 save handlers. |
| 0x04a | `ged1b.u` `HP_END` of a loop with two or more vertices on the plain path | **Inferred**: word 0x18d (`lineloop.s` line 182) first issues y = 1 with z = 3, resending the loop's first vertex as the closing endpoint, then shares the end test of entry 0x046. |
| 0x04b | `ged1b.u` `HP_SWAPTMESH` in state 2 | **Inferred**: plain fetch at 0x180; a loop has no strip order for a swap to change. |
| 0x04c | `ged1b.u` the first vertex after a batch switch (state 3) | **Inferred**: word 0x145 (`lineloop.s` line 37) issues z = 2, carrying the previous endpoint into the new batch, then writes the new vertex with x = 2 and moves to state 5 at 0x149. |
| 0x04d | `ged1b.u` material right after a batch switch | **Inferred**: word 0x177 (`lineloop.s` line 126) resends both history slots (z = 3, then z = 2) with r30 set to 0xf between them, then enters material with state 6 (0x1952) restored. |
| 0x04e | `ged1b.u` `HP_END` right after a batch switch | **Inferred**: word 0x193 (`lineloop.s` line 193) resends the last endpoint (z = 2), loads `mgesi_LineStrip` into r62, then at 0x196 resends the first vertex (z = 3), so the new batch holds just the closing segment, and releases through 0x198. |
| 0x04f | `ged1b.u` `HP_SWAPTMESH` in state 3 | **Inferred**: the fetch-only word 0x180; the endpoint waiting to be carried is untouched. |
| 0x050 | `ged1b.u` a later loop vertex after a material split (state 4) | **Inferred**: word 0x14f (`lineloop.s` line 53) writes the vertex with x = 2 and keeps state 4; a full batch goes to 0x160, which makes `mgesi_LineStripSaveV0` the current handler and, at 0x166, copies it to the second release-handler register, resends the last endpoint (z = 2), sets state 7 and resets the batch count to 0xa. |
| 0x051 | `ged1b.u` material in state 4 | **Inferred**: word 0x170 (`lineloop.s` line 111) is shared with entry 0x049 and resumes in state 4 after `mgeb_Material`. |
| 0x052 | `ged1b.u` `HP_END` in state 4 | **Inferred**: word 0x185 (`lineloop.s` line 165) loads `mgesi_LineStripCopyV0` into r62, then 0x196 resends the first vertex with z = 3 and the release sends the batch with that handler, which closes the loop from the engine's saved copy. |
| 0x053 | `ged1b.u` `HP_SWAPTMESH` in state 4 | **Inferred**: lone fetch at 0x180 with state 4 kept. |
| 0x054 | `ged1b.u` a later loop vertex after a switch (state 5) | **Inferred**: word 0x149 (`lineloop.s` line 43) replaces the newest slot and stays in state 5; when r51 runs out it takes the same switch path at 0x158 as state 2. |
| 0x055 | `ged1b.u` material in state 5 | **Inferred**: word 0x172 (`lineloop.s` line 116) closes the current batch first: a one-hot test picks the release-handler register that gets `mgesi_LineStrip`, the batch count becomes 0xa, and the two history slots are resent (z = 3, z = 2) before the material code, resuming in state 6. |
| 0x056 | `ged1b.u` `HP_END` in state 5 | **Inferred**: word 0x187 (`lineloop.s` line 169) keeps `mgesi_LineStrip` in r62 and joins 0x196: the first vertex goes out with z = 3 as the closing endpoint, the evaluator flush runs and the batch is released. |
| 0x057 | `ged1b.u` `HP_SWAPTMESH` in state 5 | **Inferred**: word 0x180 fetches and nothing more. |
| 0x058 | `ged1b.u` a later loop vertex in state 6 | **Inferred**: word 0x152 (`lineloop.s` line 58) keeps state 6 and writes the newest slot; a full batch goes to 0x162, loading `mgesi_LineStripSaveAndIgnoreV0` into r62 before the common switch at 0x166 (state 7, z = 2, r51 = 0xa). |
| 0x059 | `ged1b.u` material in state 6 | **Inferred**: word 0x17c (`lineloop.s` line 133) reaches `mgeb_Material` with state 6 (0x1952) put back. |
| 0x05a | `ged1b.u` `HP_END` in state 6 | **Inferred**: word 0x189 (`lineloop.s` line 173) selects `mgesi_LineStripCopyAndIgnoreV0` for the closing release, after the z = 3 resend of the first vertex at 0x196. |
| 0x05b | `ged1b.u` `HP_SWAPTMESH` in state 6 | **Inferred**: the shared fetch at 0x180 drops it. |
| 0x05c | `ged1b.u` a later loop vertex in state 7 | **Inferred**: word 0x155 (`lineloop.s` line 63) writes the newest slot and stays in state 7; a full batch goes to 0x164, where `mgesi_LineStrip` becomes the batch handler, then 0x166 switches as for states 4 and 6. |
| 0x05d | `ged1b.u` material in state 7 | **Inferred**: word 0x17e (`lineloop.s` line 137) enters the material code and puts back state 7 at word 0x155. |
| 0x05e | `ged1b.u` `HP_END` in state 7 | **Inferred**: word 0x18b (`lineloop.s` line 177) closes with `mgesi_LineStripRestoreV0`, the handler that brings back the saved first vertex on the engine, after the z = 3 resend. |
| 0x05f | `ged1b.u` `HP_SWAPTMESH` in state 7 | **Inferred**: fetch-only word 0x180 (`lineloop.s` line 150). |
| 0x060 | `ged1b.u` the second vertex after a material change (state 8) | **Inferred**: word 0x14c (`lineloop.s` line 48) loads r49 with x = 3, so the first vertex moves to the older slot as on the plain path, and enters state 4 at 0x14f. |
| 0x061 | `ged1b.u` material in state 8 | **Inferred**: word 0x16e (`lineloop.s` line 106), shared with entry 0x045, keeps state 8 across the material change. |
| 0x062 | `ged1b.u` `HP_END` in state 8 | **Inferred**: word 0x182 (`lineloop.s` line 160) resends the single vertex with z = 2, loads `mgesi_LineStripCopyV0` and jumps past the z = 3 word to 0x197, then releases. |
| 0x063 | `ged1b.u` `HP_SWAPTMESH` in state 8 | **Inferred**: the fetch at 0x180 ends it with no effect. |

Entries 0x064-0x07f hold the null loop at 0x006: line loops have no state above 8.

### Line strips (class 5, entries 0x140-0x153)

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x140 | `ged1b.u` the first vertex of a line strip (state 0) | **Inferred**: word 0x1b7 (`linestrip.s` line 41) tests one-hot register r53 and, in the delay slot, marks the vertex with x = 2 and y = 1; with r53 clear it moves to state 1 (0x1bf), otherwise to state 2 (0x1c2). Either way the r51 count drops by one. |
| 0x141 | `ged1b.u` material before the first strip vertex | **Inferred**: word 0x1d7 (`linestrip.s` line 88) jumps to the material code with state 0 (0x1b7) restored. |
| 0x142 | `ged1b.u` `HP_END` of an empty line strip | **Inferred**: word 0x1b3 (`linestrip.s` line 35) parks the state register on 0x1d, clears the class and the small constant r13 and releases. |
| 0x143 | `ged1b.u` `HP_SWAPTMESH` before any strip vertex | **Inferred**: word 0x1e3 (`linestrip.s` line 114) only fetches. |
| 0x144 | `ged1b.u` a strip vertex in state 1 | **Inferred**: word 0x1bf (`linestrip.s` line 52) replaces the newest history slot (x = 2) and stays in state 1; a full batch goes to 0x1cd, which flushes the evaluator, loads `mgesi_LineStrip` into r70, sets r51 to 0xb and moves to state 3. |
| 0x145 | `ged1b.u` material in state 1 | **Inferred**: word 0x1d9 (`linestrip.s` line 92) runs the material code and resumes in state 1 at 0x1bf. |
| 0x146 | `ged1b.u` `HP_END` in state 1 | **Inferred**: word 0x1ae (`linestrip.s` line 23) tests the batch count against 4 with pending class 5 in the delay slot; the branch to 0x1b3 releases without changing the handler and leaves the strip pending, while the fall-through flushes the evaluator and makes `mgesi_LineStrip` the release handler first. |
| 0x147 | `ged1b.u` `HP_SWAPTMESH` in state 1 | **Inferred**: the fetch at 0x1e3; a line strip has a single history slot, so there is nothing to swap. |
| 0x148 | `ged1b.u` a strip vertex in state 2 (one-hot r53 set at the first vertex) | **Inferred**: word 0x1c2 (`linestrip.s` line 57) is the state-1 code with one difference at the batch switch: 0x1d2 loads `mgesi_LineStrip` into the second release-handler register instead of the first and moves to state 4. |
| 0x149 | `ged1b.u` material in state 2 | **Inferred**: word 0x1de (`linestrip.s` line 101) queues the material and puts back state 2 at 0x1c2. |
| 0x14a | `ged1b.u` `HP_END` in state 2 | **Inferred**: word 0x1b0 (`linestrip.s` line 26) always sends the batch: evaluator flush, pending class cleared, `mgesi_LineStrip` as release handler, then the reset and release at 0x1b3. |
| 0x14b | `ged1b.u` swap token in line-strip state 2 | **Inferred**: word 0x1e3 (`linestrip.s` line 114) takes the next input word; a line strip shares one vertex per segment, so there is no order to swap. |
| 0x14c | `ged1b.u` the first vertex after a batch switch (state 3) | **Inferred**: word 0x1c5 (`linestrip.s` line 62) resends the previous vertex with z = 2 so the segment that spans the batch boundary is drawn by the new batch, then writes the new vertex with x = 2 and returns to state 1. |
| 0x14d | `ged1b.u` material right after a switch from state 1 | **Inferred**: word 0x1db (`linestrip.s` line 96) does the z = 2 resend first, then enters material with state 1 restored, so the carried vertex is already in place afterwards. |
| 0x14e | `ged1b.u` `HP_END` right after a switch from state 1 | **Inferred**: word 0x1b3 (`linestrip.s` line 35); the new batch has only the carried vertex, which is never resent, and the release ends the strip. |
| 0x14f | `ged1b.u` swap token just after a line-strip batch switch (state 3) | **Inferred**: dropped by the fetch at 0x1e3; the carried endpoint still waits for its z = 2 resend. |
| 0x150 | `ged1b.u` the first vertex after a switch from state 2 (state 4) | **Inferred**: word 0x1c9 (`linestrip.s` line 68) mirrors entry 0x14c: z = 2 resend, x = 2 write, back to state 2 at 0x1c2. |
| 0x151 | `ged1b.u` material right after a switch from state 2 | **Inferred**: word 0x1e0 (`linestrip.s` line 105) resends the carried vertex (z = 2) and resumes in state 2 after `mgeb_Material`. |
| 0x152 | `ged1b.u` `HP_END` right after a switch from state 2 | **Inferred**: the reset at 0x1b3, shared with entries 0x142 and 0x14e: the new batch holds only the carried vertex, which is never resent, so the release draws nothing more. |
| 0x153 | `ged1b.u` `HP_SWAPTMESH` in state 4 | **Inferred**: the last swap entry of class 5 is the fetch at 0x1e3 again. |

Entries 0x154-0x15f hold the null loop at 0x006: line strips use states 0-4 only.

### Separate quads (class 7, entries 0x160-0x173)

The begin stub enters state 1; states 1 to 4 take the four corners, and the fourth corner returns to state 1. State 0 is
the first corner after a batch switch. Every corner is written with x = 2: separate quads keep no vertex across quads.

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x160 | `ged1b.u` the first corner after a batch switch (state 0) | **Inferred**: word 0x1f1 (`quad.s` line 22) writes the corner with x = 2 and moves to state 2 at 0x1f7, the same step as a first corner in state 1. |
| 0x161 | `ged1b.u` material in state 0 | **Inferred**: word 0x20e (`quad.s` line 80) jumps to the material code with r49 put back to 0x1f1. |
| 0x162 | `ged1b.u` `HP_END` in state 0 | **Inferred**: word 0x205 (`quad.s` line 61) clears r48, sets r49 to the idle 0x1d and releases; the batch was already handed over at the switch, so nothing is added. |
| 0x163 | `ged1b.u` `HP_SWAPTMESH` among quads (state 0) | **Inferred**: word 0x218 (`quad.s` line 104), a bare fetch. |
| 0x164 | `ged1b.u` the first corner after the begin token (state 1) | **Inferred**: word 0x1f4 (`quad.s` line 27) records the corner and goes to state 2. |
| 0x165 | `ged1b.u` material between quads | **Inferred**: word 0x210 (`quad.s` line 84) reaches `mgeb_Material` with state 1 kept, so the next corner starts a quad. |
| 0x166 | `ged1b.u` `HP_END` after whole quads | **Inferred**: word 0x200 (`quad.s` line 47) tests the batch count against 4 with pending class 7 in the delay slot; the branch keeps the batch open for a following quads begin, the other path flushes the evaluator and makes `mgesi_Quads` the release handler. |
| 0x167 | `ged1b.u` `HP_SWAPTMESH` at a quad boundary | **Inferred**: fetch at 0x218; there is no shared edge to swap. |
| 0x168 | `ged1b.u` the second corner (state 2) | **Inferred**: word 0x1f7 (`quad.s` line 32) moves to state 3 at word 0x1fa. |
| 0x169 | `ged1b.u` material after one corner | **Inferred**: word 0x212 (`quad.s` line 88) keeps state 2 across the material change. |
| 0x16a | `ged1b.u` `HP_END` with one corner pending | **Inferred**: word 0x202 (`quad.s` line 54) drops the partial quad: evaluator flush, r50 cleared, `mgesi_Quads` as release handler, then the reset at 0x205. |
| 0x16b | `ged1b.u` `HP_SWAPTMESH` after one corner | **Inferred**: plain fetch at 0x218. |
| 0x16c | `ged1b.u` the third corner (state 3) | **Inferred**: word 0x1fa (`quad.s` line 37) moves to state 4 at 0x1fd. |
| 0x16d | `ged1b.u` material after two corners | **Inferred**: word 0x214 (`quad.s` line 92) resumes in state 3 after the material code. |
| 0x16e | `ged1b.u` `HP_END` with two corners pending | **Inferred**: the abandon path at 0x202, which sends the finished quads of the batch and forgets the two corners. |
| 0x16f | `ged1b.u` `HP_SWAPTMESH` after two corners | **Inferred**: fetch-only word 0x218. |
| 0x170 | `ged1b.u` the fourth corner (state 4) | **Inferred**: word 0x1fd (`quad.s` line 42) completes the quad and returns to state 1; the op-6 transfer on r51 (no fetch bit) goes to 0x209 when the batch holds twelve quads, which flushes the evaluator, sets state 0, loads `mgesi_Quads` into r70 and resets r51 to 0xc. |
| 0x171 | `ged1b.u` material after three corners | **Inferred**: word 0x216 (`quad.s` line 96) puts back state 4 (0x11fd) so the fourth corner still closes the quad. |
| 0x172 | `ged1b.u` `HP_END` with three corners pending | **Inferred**: 0x202 again: the three corners are discarded and the batch released with `mgesi_Quads`. |
| 0x173 | `ged1b.u` `HP_SWAPTMESH` after three corners | **Inferred**: the last class-7 swap entry, the fetch at 0x218. |

Entries 0x174-0x17f hold the null loop at 0x006.

Entries 0x1c0-0x1d3 repeat entries 0x160-0x173 word for word (0x1c0 and 0x160 both point at 0x1f1, and so on to 0x1d3 and
0x173). **Inferred:** no class reaches them, because no table A word is 0x38 (8 x 0x38 = 0x1c0) and the state field of r49
never exceeds 15. The same holds for entries 0x19c-0x19f, which repeat the state-7 group of line loops (0x05c-0x05f) at an
index no class forms (8 x A + 4n for class 2 stops at 0x19b). Each has its own row:

| Entry | Copy of | What the code at the target does |
|---|---|---|
| 0x19c | 0x05c | **Inferred**: `ged1b.u` word 0x155 (`lineloop.s` line 63), the line-loop vertex code of state 7, out of reach of the separate-lines class whose index range ends at 0x19b. |
| 0x19d | 0x05d | **Inferred**: `ged1b.u` word 0x17e (`lineloop.s` line 137), material with loop state 7 put back; unreachable for the same reason. |
| 0x19e | 0x05e | **Inferred**: `ged1b.u` word 0x18b (`lineloop.s` line 177), the loop end that loads `mgesi_LineStripRestoreV0`; no r48 value indexes it. |
| 0x19f | 0x05f | **Inferred**: `ged1b.u` word 0x180 (`lineloop.s` line 150), a fetch, the spare copy of the loop's state-7 swap entry. |
| 0x1c0 | 0x160 | **Inferred**: `ged1b.u` word 0x1f1 (`quad.s` line 22), the quad corner after a switch; table A holds no 0x38, so this copy is never selected. |
| 0x1c1 | 0x161 | **Inferred**: `ged1b.u` word 0x20e (`quad.s` line 80), material with quad state 0 put back, in the spare copy. |
| 0x1c2 | 0x162 | **Inferred**: `ged1b.u` word 0x205 (`quad.s` line 61), the quad reset and release, duplicated here. |
| 0x1c3 | 0x163 | **Inferred**: `ged1b.u` word 0x218 (`quad.s` line 104), the quad fetch, duplicated. |
| 0x1c4 | 0x164 | **Inferred**: `ged1b.u` word 0x1f4 (`quad.s` line 27), first corner after begin, in the unreachable copy. |
| 0x1c5 | 0x165 | **Inferred**: `ged1b.u` word 0x210 (`quad.s` line 84), material between quads, second copy. |
| 0x1c6 | 0x166 | **Inferred**: `ged1b.u` word 0x200 (`quad.s` line 47), the end test on r51 against 4, second copy. |
| 0x1c7 | 0x167 | **Inferred**: `ged1b.u` word 0x218 again, the swap at a quad boundary in the copy. |
| 0x1c8 | 0x168 | **Inferred**: `ged1b.u` word 0x1f7 (`quad.s` line 32), the second-corner code that moves a quad to state 3, held in a copy no class selects. |
| 0x1c9 | 0x169 | **Inferred**: `ged1b.u` word 0x212 (`quad.s` line 88), material after one corner, copied. |
| 0x1ca | 0x16a | **Inferred**: `ged1b.u` word 0x202 (`quad.s` line 54), the abandon-and-release path, copied. |
| 0x1cb | 0x16b | **Inferred**: `ged1b.u` word 0x218 for a swap after one corner, in the copy. |
| 0x1cc | 0x16c | **Inferred**: `ged1b.u` word 0x1fa (`quad.s` line 37), the third-corner code that moves a quad to state 4, again in the spare copy. |
| 0x1cd | 0x16d | **Inferred**: `ged1b.u` word 0x214 (`quad.s` line 92), material after two corners, copied. |
| 0x1ce | 0x16e | **Inferred**: `ged1b.u` word 0x202 for an end with two corners, in the copy. |
| 0x1cf | 0x16f | **Inferred**: `ged1b.u` word 0x218 for a swap after two corners, in the copy. |
| 0x1d0 | 0x170 | **Inferred**: `ged1b.u` word 0x1fd (`quad.s` line 42), the fourth corner with the twelve-quad batch test, copied. |
| 0x1d1 | 0x171 | **Inferred**: `ged1b.u` word 0x216 (`quad.s` line 96), material after three corners, copied. |
| 0x1d2 | 0x172 | **Inferred**: `ged1b.u` word 0x202 for an end with three corners, in the copy. |
| 0x1d3 | 0x173 | **Inferred**: `ged1b.u` word 0x218, the final swap entry of the copy. |

### Quad strips (class 8, entries 0x080-0x0b7)

States: 0 and 13 take the first two vertices, 2 and 1 alternate after that (a quad completes on each state-1 vertex),
5 is the first vertex after a batch switch, and 3, 4, 6 to 12 are the same cycle after a material change, whose batch
switches load the save and restore handlers. From the second vertex on every vertex is written with x = 3, keeping the
previous one in the older slot: the two newest vertices are the edge the next quad shares.

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x080 | `ged1b.u` the first quad-strip vertex (state 0) | **Inferred**: word 0x226 (`qstrip.s` line 22) writes it with x = 2 and moves to state 13 at word 0x229. |
| 0x081 | `ged1b.u` material before the first quad-strip vertex | **Inferred**: word 0x254 (`qstrip.s` line 98) reaches the material code with state 0 put back. |
| 0x082 | `ged1b.u` `HP_END` of an empty quad strip | **Inferred**: word 0x289 (`qstrip.s` line 202) resets r48 and r49 and releases. |
| 0x083 | `ged1b.u` `HP_SWAPTMESH` in a quad strip (state 0) | **Inferred**: word 0x2a1 (`qstrip.s` line 256) only fetches; the fourteen swap entries of class 8 all land there. |
| 0x084 | `ged1b.u` a vertex that completes a quad (state 1) | **Inferred**: word 0x22c (`qstrip.s` line 32) shifts with x = 3, moves to state 2, and on a full batch goes to 0x28d: evaluator flush, state 5, `mgesi_QuadStrip` into r70, r51 = 0xa (two vertices carried). |
| 0x085 | `ged1b.u` material just before a quad completes | **Inferred**: word 0x258 (`qstrip.s` line 106) resumes in state 4 (0x1242) after `mgeb_Material`, the split-strip form of state 1. |
| 0x086 | `ged1b.u` `HP_END` with an odd vertex pending (state 1) | **Inferred**: word 0x27a (`qstrip.s` line 174) flushes the evaluator, clears r50 and releases with `mgesi_QuadStrip`. |
| 0x087 | `ged1b.u` `HP_SWAPTMESH` in state 1 | **Inferred**: the fetch at 0x2a1 leaves both history slots alone. |
| 0x088 | `ged1b.u` the vertex after a completed quad (state 2) | **Inferred**: word 0x22f (`qstrip.s` line 37) shifts it in with x = 3 and moves to state 1. |
| 0x089 | `ged1b.u` material after a completed quad | **Inferred**: word 0x25a (`qstrip.s` line 110) keeps state 2 through the material code. |
| 0x08a | `ged1b.u` `HP_END` after a completed quad | **Inferred**: word 0x27f (`qstrip.s` line 185) tests the batch count against 4 with pending class 8 in the delay slot; the branch leaves the batch open, the fall-through flushes and makes `mgesi_QuadStrip` the release handler before the reset at 0x289. |
| 0x08b | `ged1b.u` `HP_SWAPTMESH` once a quad has just been completed (state 2) | **Inferred**: word 0x2a1 (`qstrip.s` line 256) takes the next input word and does nothing else, so the shared edge stays as it was and the next vertex shifts in normally. |
| 0x08c | `ged1b.u` a vertex in state 3 (after a material split) | **Inferred**: word 0x23f (`qstrip.s` line 63) shifts with x = 3 and returns to the plain state 1. |
| 0x08d | `ged1b.u` material in state 3 | **Inferred**: word 0x25c (`qstrip.s` line 114) restores state 3 at 0x23f after the material change. |
| 0x08e | `ged1b.u` `HP_END` in state 3 | **Inferred**: the end test at 0x27f shared with entry 0x08a. |
| 0x08f | `ged1b.u` a swap token while a split quad strip waits in state 3 | **Inferred**: the same single fetch at word 0x2a1; quad strips have no swap code, and state 3 still returns to the plain cycle on its next vertex. |
| 0x090 | `ged1b.u` a quad-completing vertex in state 4 | **Inferred**: word 0x242 (`qstrip.s` line 68) shifts with x = 3 into state 3; on a full batch 0x292 loads `mgesi_QuadStripSave` into r69, moves to state 7 and resets r51 to 0xa. |
| 0x091 | `ged1b.u` material in state 4 | **Inferred**: word 0x25e (`qstrip.s` line 118) puts back state 4 after `mgeb_Material`. |
| 0x092 | `ged1b.u` `HP_END` in state 4 | **Inferred**: the flush-and-release with `mgesi_QuadStrip` at 0x27a, as in entry 0x086. |
| 0x093 | `ged1b.u` swap in state 4, one vertex before a split quad completes | **Inferred**: word 0x2a1 consumes the token without touching r49, so the following vertex still completes the quad and may trigger the save switch at 0x292. |
| 0x094 | `ged1b.u` the first vertex after a batch switch (state 5) | **Inferred**: word 0x232 (`qstrip.s` line 42) sets state 1 in its delay slot and jumps to 0x236, which clears r39 and r31, resends the older and then the newer history slot (z = 3, z = 2) into the new batch and writes the new vertex with x = 3, followed by y = 1. |
| 0x095 | `ged1b.u` material right after a batch switch | **Inferred**: word 0x260 (`qstrip.s` line 122) sets state 6 and, at 0x264, resends both slots (z = 3, then z = 2 in the jump's delay slot) before the material code. |
| 0x096 | `ged1b.u` `HP_END` right after a batch switch | **Inferred**: word 0x289; the carried edge has not been resent, so the new batch is empty and only the release goes out. |
| 0x097 | `ged1b.u` swap arriving just after a batch switch (state 5) | **Inferred**: dropped at word 0x2a1; the two carried vertices are still waiting for the z = 3 and z = 2 resend that the next vertex performs. |
| 0x098 | `ged1b.u` a vertex in state 6 (after material in state 5) | **Inferred**: word 0x23c (`qstrip.s` line 58) shifts with x = 3 into state 1, the carried edge having been resent before the material change. |
| 0x099 | `ged1b.u` a second material change after the carried edge was resent (state 6) | **Inferred**: word 0x269 (`qstrip.s` line 137) jumps to `mgeb_Material` and reloads state 6 in its delay slot; the edge is already in the new batch, so nothing is resent again. |
| 0x09a | `ged1b.u` `HP_END` in state 6 | **Inferred**: the end test at 0x27f with pending class 8. |
| 0x09b | `ged1b.u` swap token in state 6 of a quad strip | **Inferred**: the fetch-only word 0x2a1 discards it, leaving the vertex that follows to complete the next quad from state 1. |
| 0x09c | `ged1b.u` the first vertex after a save switch (state 7) | **Inferred**: word 0x234 (`qstrip.s` line 46) is the state-5 resend at 0x236 with state 9 set instead of state 1. |
| 0x09d | `ged1b.u` material in state 7 | **Inferred**: word 0x262 (`qstrip.s` line 126) resends both slots like entry 0x095 and resumes in state 8. |
| 0x09e | `ged1b.u` `HP_END` in state 7 | **Inferred**: word 0x286 (`qstrip.s` line 195) loads `mgebi_NullCommand` into r70, so the empty batch after a save switch is released with no drawing. |
| 0x09f | `ged1b.u` swap token right after a save switch (state 7) | **Inferred**: word 0x2a1 reads past it; the save-handler batch begun at 0x292 is not affected. |
| 0x0a0 | `ged1b.u` a vertex in state 8 | **Inferred**: word 0x245 (`qstrip.s` line 73) shifts with x = 3 and moves to state 9. |
| 0x0a1 | `ged1b.u` material in state 8 | **Inferred**: word 0x26b (`qstrip.s` line 141) leaves the state at 8. |
| 0x0a2 | `ged1b.u` `HP_END` in state 8 | **Inferred**: the end test at 0x27f; the quad-strip batch stays pending when the count test branches. |
| 0x0a3 | `ged1b.u` swap token in state 8 of a split quad strip | **Inferred**: consumed by the fetch at 0x2a1, with the strip's alternation between states 9 and 10 left intact. |
| 0x0a4 | `ged1b.u` a quad-completing vertex in state 9 | **Inferred**: word 0x248 (`qstrip.s` line 78) moves to state 10; a full batch goes to 0x297, which loads `mgesi_QuadStripRestore` into r70, returns to state 5 and resets r51 to 0xa. |
| 0x0a5 | `ged1b.u` material arriving when a split quad strip is in state 9 | **Inferred**: word 0x26d (`qstrip.s` line 145) queues `mgeb_Material` and puts r49 at state 11 (0x2e4e), whose full-batch path loads the restore-and-save handler instead of the plain restore one. |
| 0x0a6 | `ged1b.u` `HP_END` in state 9 | **Inferred**: word 0x275 (`qstrip.s` line 164) releases the batch with `mgesi_QuadStripRestore` after the evaluator flush. |
| 0x0a7 | `ged1b.u` swap token in state 9 | **Inferred**: word 0x2a1 fetches past it; a quad strip has no use for the IRIS GL swap order. |
| 0x0a8 | `ged1b.u` a vertex in state 10 | **Inferred**: word 0x24b (`qstrip.s` line 83) shifts with x = 3 back to state 9. |
| 0x0a9 | `ged1b.u` material between the two vertices of a split-strip quad (state 10) | **Inferred**: word 0x26f (`qstrip.s` line 149) runs the material code and resumes with r49 still at state 10, so the next vertex returns to state 9 as before. |
| 0x0aa | `ged1b.u` `HP_END` in state 10 | **Inferred**: 0x275 again, the restore-handler release. |
| 0x0ab | `ged1b.u` swap token in state 10 | **Inferred**: no state change: the lone fetch at 0x2a1 ends the token. |
| 0x0ac | `ged1b.u` a quad-completing vertex in state 11 | **Inferred**: word 0x24e (`qstrip.s` line 88) moves to state 12; a full batch goes to 0x29c, which loads `mgesi_QuadStripRestoreSave` into r69 and returns to state 7. |
| 0x0ad | `ged1b.u` a repeated material change in state 11 | **Inferred**: word 0x271 (`qstrip.s` line 153) queues the material handler and restores state 11, keeping the restore-and-save switch for the next full batch. |
| 0x0ae | `ged1b.u` `HP_END` reached in state 11 | **Inferred**: word 0x275 (`qstrip.s` line 164) flushes the evaluator, clears the pending class and releases the batch with `mgesi_QuadStripRestore`, the handler that brings back the edge saved by an earlier batch. |
| 0x0af | `ged1b.u` swap token in state 11 | **Inferred**: discarded by word 0x2a1 like every other quad-strip swap. |
| 0x0b0 | `ged1b.u` a vertex in state 12 | **Inferred**: word 0x251 (`qstrip.s` line 93) shifts with x = 3 into state 9. |
| 0x0b1 | `ged1b.u` material in the twelfth quad-strip state | **Inferred**: word 0x273 (`qstrip.s` line 157) enters the material code with state 12 put back, so the next vertex rejoins state 9. |
| 0x0b2 | `ged1b.u` `HP_END` from state 12 | **Inferred**: shares word 0x275 with states 9 to 11: evaluator flush, then a release that runs `mgesi_QuadStripRestore` over the last batch. |
| 0x0b3 | `ged1b.u` swap token in state 12 | **Inferred**: word 0x2a1 takes the next word and leaves state 12 in place. |
| 0x0b4 | `ged1b.u` the second quad-strip vertex (state 13) | **Inferred**: word 0x229 (`qstrip.s` line 27) is the first x = 3 write, moving the first vertex to the older slot, and enters state 2. |
| 0x0b5 | `ged1b.u` material after one quad-strip vertex | **Inferred**: word 0x256 (`qstrip.s` line 102) keeps state 13. |
| 0x0b6 | `ged1b.u` `HP_END` with one quad-strip vertex | **Inferred**: the unconditional flush and `mgesi_QuadStrip` release at 0x27a. |
| 0x0b7 | `ged1b.u` swap token after only one quad-strip vertex (state 13) | **Inferred**: the fetch at 0x2a1 (`qstrip.s` line 256); with one vertex there is not yet an edge to reorder. |

### Triangle strips (class 9, entries 0x0c0-0x0ff)

States: 0 and 1 take the first two vertices; 7 and 6 alternate on the plain path, and 2 and 3 are the same pair when the
strip's winding is odd (the `WithSwapOdd` handlers); 4 and 5 are the first vertex after a batch switch; 8 to 11 and 13 to
15 are the cycle after a material change, whose switches load the save and restore handlers. Every vertex from the second
on is written with x = 3, so the two newest vertices stay in the history slots. A `SWAPTMESH` token (entry offset 3) loads
r49 with x = 1, which **inferred** exchanges the two slots, and toggles the parity in one-hot register r55 at word 0x102
(r14 follows it). Every state except 0, 1 and 12 has its own swap code.

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x0c0 | `ged1b.u` the first triangle-strip vertex (state 0) | **Inferred**: word 0x04c (`tstrip.s` line 22) writes it with x = 2, moves to state 1 at 0x04f and clears r55 after the fetch. |
| 0x0c1 | `ged1b.u` material before the first strip vertex | **Inferred**: word 0x0d9 (`tstrip.s` line 282) jumps to the material code with a no-op in the delay slot, so r49 keeps state 0. |
| 0x0c2 | `ged1b.u` `HP_END` of an empty triangle strip | **Inferred**: word 0x0e8 (`tstrip.s` line 314) clears the class, idles r49 and releases. |
| 0x0c3 | `ged1b.u` `HP_SWAPTMESH` before any strip vertex | **Inferred**: word 0x0af (`tstrip.s` line 189) only fetches; with no vertex there is no pair to exchange. |
| 0x0c4 | `ged1b.u` the second strip vertex (state 1) | **Inferred**: word 0x04f (`tstrip.s` line 27) writes it with x = 3, so the first vertex becomes the older slot, and enters state 7. |
| 0x0c5 | `ged1b.u` material after one strip vertex | **Inferred**: the material jump at 0x0d9 leaves r49 at state 1. |
| 0x0c6 | `ged1b.u` `HP_END` with one strip vertex | **Inferred**: word 0x0db (`tstrip.s` line 287) issues y = 1, then tests the batch count against 4 with pending class 9 in the delay slot; the fall-through flushes the evaluator and makes `mgesi_TriangleStrip` the release handler before the release at 0x0e8. |
| 0x0c7 | `ged1b.u` `HP_SWAPTMESH` with one strip vertex | **Inferred**: fetch at 0x0af; the swap needs two vertices. |
| 0x0c8 | `ged1b.u` a vertex in state 2 (odd winding) | **Inferred**: word 0x05c (`tstrip.s` line 50) shifts with x = 3 into state 3 and clears the parity; when the batch is full the op-6 transfer goes to 0x07d, which makes `mgesi_TriangleStripWithSwapOdd` the current handler and sets state 5 before the switch code at 0x09e copies it to the release handler and resets the count to 0xa. |
| 0x0c9 | `ged1b.u` material in state 2 | **Inferred**: word 0x0d1 (`tstrip.s` line 257) resumes in state 14 (0x3874), the odd-winding state of the split cycle. |
| 0x0ca | `ged1b.u` `HP_END` in state 2 | **Inferred**: word 0x0e3 (`tstrip.s` line 304) flushes the evaluator and releases with `mgesi_TriangleStripWithSwapOdd`. |
| 0x0cb | `ged1b.u` `HP_SWAPTMESH` in state 2 | **Inferred**: word 0x0b9 (`tstrip.s` line 209) loads the state register with x = 1 and state 3 in a jump's delay slot, then the parity code at 0x102 flips the one-hot parity bit and its copy in r14. |
| 0x0cc | `ged1b.u` a vertex in state 3 (odd winding) | **Inferred**: word 0x05f (`tstrip.s` line 55) shifts into state 2; a full batch goes to 0x07a, `mgesi_TriangleStripWithSwapOdd` again, with state 4 next. |
| 0x0cd | `ged1b.u` material in state 3 | **Inferred**: word 0x0d3 (`tstrip.s` line 261) resumes in state 15 at word 0x077. |
| 0x0ce | `ged1b.u` `HP_END` in state 3 | **Inferred**: the odd-winding release at 0x0e3, as for state 2. |
| 0x0cf | `ged1b.u` `HP_SWAPTMESH` in state 3 | **Inferred**: word 0x0bb (`tstrip.s` line 213) loads x = 1 with state 2 and runs the parity toggle at 0x102. |
| 0x0d0 | `ged1b.u` the first vertex after a switch into state 4 | **Inferred**: word 0x05a (`tstrip.s` line 46) sets state 6 and jumps to 0x0f6, which clears r39 and r31, resends the older slot (z = 3), marks y = 1, resends the newer slot (z = 2) and writes the new vertex with x = 2, then clears r55. |
| 0x0d1 | `ged1b.u` material in state 4 | **Inferred**: word 0x0cd (`tstrip.s` line 249) sets state 6 and goes to 0x109, which resends both slots (z = 3, then z = 2 in the delay slot of the jump to the material code). |
| 0x0d2 | `ged1b.u` `HP_END` in state 4 | **Inferred**: word 0x0e8; the new batch has no vertex yet, so only the release goes out. |
| 0x0d3 | `ged1b.u` `HP_SWAPTMESH` in state 4 | **Inferred**: word 0x0b5 (`tstrip.s` line 201) sets state 6 and goes to 0x0fd: both slots are resent (z = 3, z = 2), then x = 1 exchanges them and the parity toggle at 0x102 runs. |
| 0x0d4 | `ged1b.u` the first vertex after a switch into state 5 | **Inferred**: word 0x058 (`tstrip.s` line 42) is the resend-and-write path at 0x0f6 with state 2 as the next state. |
| 0x0d5 | `ged1b.u` material in state 5 | **Inferred**: word 0x0cf (`tstrip.s` line 253) resends both slots through 0x109 and resumes in state 2. |
| 0x0d6 | `ged1b.u` `HP_END` in state 5 | **Inferred**: the plain release at 0x0e8, as for state 4. |
| 0x0d7 | `ged1b.u` `HP_SWAPTMESH` in state 5 | **Inferred**: word 0x0b7 (`tstrip.s` line 205) resends both slots at 0x0fd, exchanges them with x = 1 and moves to state 2. |
| 0x0d8 | `ged1b.u` a vertex in state 6 (even winding) | **Inferred**: word 0x055 (`tstrip.s` line 37) shifts with x = 3 into state 7; a full batch goes to 0x083, which keeps `mgesi_TriangleStrip` as the handler and sets state 4. |
| 0x0d9 | `ged1b.u` material between triangles on the even-winding path (state 6) | **Inferred**: word 0x0d5 (`tstrip.s` line 265) moves the strip into the split cycle at state 9 (0x2465), so a later batch switch saves the shared edge on the engine. |
| 0x0da | `ged1b.u` `HP_END` in state 6 | **Inferred**: word 0x0db: y = 1, then the r51 test against 4 and the `mgesi_TriangleStrip` release, shared with entry 0x0c6. |
| 0x0db | `ged1b.u` `HP_SWAPTMESH` in state 6 | **Inferred**: word 0x0b3 (`tstrip.s` line 197) exchanges the slots (x = 1), moves to state 7 and toggles r55. |
| 0x0dc | `ged1b.u` a vertex in state 7 (even winding) | **Inferred**: word 0x052 (`tstrip.s` line 32) shifts with x = 3 into state 6; a full batch goes to 0x080, `mgesi_TriangleStrip` as handler and state 5 next. |
| 0x0dd | `ged1b.u` material on the even-winding path in state 7 | **Inferred**: word 0x0d7 (`tstrip.s` line 269) resumes the strip at state 8 (0x2062) of the split cycle after `mgeb_Material` is queued. |
| 0x0de | `ged1b.u` `HP_END` in state 7 | **Inferred**: word 0x0dc (`tstrip.s` line 291): the r51 test with pending class 9, without the y mark of entry 0x0da. |
| 0x0df | `ged1b.u` `HP_SWAPTMESH` in state 7 | **Inferred**: word 0x0b1 (`tstrip.s` line 193) exchanges the slots with x = 1 and moves to state 6. |
| 0x0e0 | `ged1b.u` a vertex in state 8 | **Inferred**: word 0x062 (`tstrip.s` line 60) shifts with x = 3 and drops back to the plain state 6; when the count is spent, 0x086 makes `mgesi_TriangleStripSave` current and 0x0a7 copies it to the second release handler, resends both slots and sets state 13. |
| 0x0e1 | `ged1b.u` material in state 8 | **Inferred**: the shared jump at 0x0d9 keeps state 8. |
| 0x0e2 | `ged1b.u` `HP_END` with the strip in state 8 | **Inferred**: word 0x0dc (`tstrip.s` line 291) tests the batch count with pending class 9 set; without the branch it releases the batch as plain `mgesi_TriangleStrip`. |
| 0x0e3 | `ged1b.u` swap in state 8 | **Inferred**: word 0x0bd (`tstrip.s` line 217) loads r49 with x = 1, exchanging the two history slots, and with state 9, then flips the parity at 0x102. |
| 0x0e4 | `ged1b.u` a vertex in state 9 | **Inferred**: word 0x065 (`tstrip.s` line 65) writes it with x = 3 and moves to state 8; a spent count takes the same save switch at 0x086 as state 8. |
| 0x0e5 | `ged1b.u` material once the strip is in state 9 | **Inferred**: the jump at word 0x0d9 queues `mgeb_Material` and leaves r49 untouched, so the strip continues in state 9. |
| 0x0e6 | `ged1b.u` `HP_END` in state 9 | **Inferred**: the end test at 0x0dc with pending class 9. |
| 0x0e7 | `ged1b.u` swap in state 9 | **Inferred**: word 0x0bf (`tstrip.s` line 221) exchanges the history slots (x = 1), returns to state 8 and toggles the parity bit. |
| 0x0e8 | `ged1b.u` a vertex in state 10 | **Inferred**: word 0x068 (`tstrip.s` line 70) shifts it in and moves to state 11; when the batch is full, 0x08c loads `mgesi_TriangleStripRestoreSave` and the switch at 0x0a7 continues in state 13. |
| 0x0e9 | `ged1b.u` material in state 10 of a triangle strip | **Inferred**: word 0x0d9 jumps straight to the material code; r49 keeps state 10 and the history slots are not resent. |
| 0x0ea | `ged1b.u` `HP_END` in state 10 | **Inferred**: word 0x0ec (`tstrip.s` line 321) releases with `mgesi_TriangleStripRestore` after the evaluator flush. |
| 0x0eb | `ged1b.u` swap in state 10 | **Inferred**: word 0x0c1 (`tstrip.s` line 225) exchanges the slots with x = 1, moves to state 11 and runs the parity toggle. |
| 0x0ec | `ged1b.u` a vertex in state 11 | **Inferred**: word 0x06b (`tstrip.s` line 75) shifts it in and moves to state 10; a full batch goes to 0x08f, which loads the restore-and-save handler and continues in state 10 rather than 13. |
| 0x0ed | `ged1b.u` material in state 11 of a triangle strip | **Inferred**: handled by the shared material jump at 0x0d9 with no change to the strip state or to either history slot. |
| 0x0ee | `ged1b.u` `HP_END` from state 11 | **Inferred**: word 0x0ec (`tstrip.s` line 321) flushes the evaluator and releases with `mgesi_TriangleStripRestore`, as the end in state 10 does. |
| 0x0ef | `ged1b.u` swap in state 11 | **Inferred**: word 0x0c3 (`tstrip.s` line 229) exchanges the two vertices, sets state 10 and toggles the one-hot parity. |
| 0x0f4 | `ged1b.u` a vertex in state 13 | **Inferred**: word 0x071 (`tstrip.s` line 85) shifts and stays in state 13; a full batch goes to 0x095, `mgesi_TriangleStripRestoreSaveWithSwapOdd`, state 10 next. |
| 0x0f5 | `ged1b.u` material while the strip sits in state 13 | **Inferred**: the shared word 0x0d9 queues the material handler; state 13 and its restore-and-save switch remain in force. |
| 0x0f6 | `ged1b.u` `HP_END` in state 13 | **Inferred**: word 0x0f1 (`tstrip.s` line 329) releases with `mgesi_TriangleStripRestoreWithSwapOdd`. |
| 0x0f7 | `ged1b.u` `HP_SWAPTMESH` in state 13 | **Inferred**: word 0x0c7 (`tstrip.s` line 237) loads x = 1 and keeps state 13 before the parity toggle. |
| 0x0f8 | `ged1b.u` a vertex in state 14 | **Inferred**: word 0x074 (`tstrip.s` line 90) shifts it in and returns to the odd-winding state 3; a spent count goes to 0x098, which loads the odd-winding save handler and continues in state 13. |
| 0x0f9 | `ged1b.u` material in odd-winding state 14 | **Inferred**: queued through word 0x0d9, which leaves r49 at state 14 so the next vertex still returns to state 3. |
| 0x0fa | `ged1b.u` `HP_END` in state 14 | **Inferred**: the odd-winding release with `mgesi_TriangleStripWithSwapOdd` at 0x0e3. |
| 0x0fb | `ged1b.u` swap in state 14 | **Inferred**: word 0x0c9 (`tstrip.s` line 241) swaps the slots with x = 1, sets state 15 and toggles parity at 0x102. |
| 0x0fc | `ged1b.u` a vertex in state 15 | **Inferred**: word 0x077 (`tstrip.s` line 95) shifts and stays in state 15; a full batch goes to 0x09b, `mgesi_TriangleStripSaveWithSwapOdd`, state 10 next. |
| 0x0fd | `ged1b.u` material in state 15 | **Inferred**: word 0x0d9 again; state 15 loops on itself, so the strip stays there after the material change. |
| 0x0fe | `ged1b.u` `HP_END` in state 15 | **Inferred**: 0x0e3, the `mgesi_TriangleStripWithSwapOdd` release, which every odd-winding state shares. |
| 0x0ff | `ged1b.u` swap in state 15 | **Inferred**: word 0x0cb (`tstrip.s` line 245) swaps the slots, moves to state 14 and flips the parity bit and its r14 copy. |

Entries 0x0f0-0x0f3 (state 12) hold the null loop at 0x006: no code loads state 12.

### Triangle fans and polygons (class 10, entries 0x100-0x12b)

Fans and polygons share these entries; the begin stubs differ only in the mode they send (`mgeb_SetTfanPolyMode` 1 or 0)
and the one-hot register r56 that remembers it. States: 0 takes the centre vertex, 1 the second, 2 the later ones, 3 the
first vertex after a batch switch, 5 the second vertex after a material change, 6 and 8 the later vertices once a material
change has split the fan, 7 and 9 their batch switches, 4 and 10 the states after a material change at a switch. The second
vertex is written with x = 3 and every other with x = 2, so the centre stays in the older history slot, which each switch
resends with z = 3 along with the newest vertex (z = 2).

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x100 | `ged1b.u` the centre vertex of a fan or polygon (state 0) | **Inferred**: word 0x2c3 (`tfanpoly.s` line 53) writes it with x = 2, moves to state 1 and clears r33 on the fetch. |
| 0x101 | `ged1b.u` material before the centre vertex | **Inferred**: word 0x301 (`tfanpoly.s` line 147) runs the material code with state 0 put back. |
| 0x102 | `ged1b.u` `HP_END` of an empty fan or polygon | **Inferred**: word 0x339 (`tfanpoly.s` line 247) resets the class and state and releases. |
| 0x103 | `ged1b.u` `HP_SWAPTMESH` in a fan (state 0) | **Inferred**: word 0x330 (`tfanpoly.s` line 229) only fetches; all eleven swap entries of class 10 land there. |
| 0x104 | `ged1b.u` the second fan vertex (state 1) | **Inferred**: word 0x2c6 (`tfanpoly.s` line 58) writes it with x = 3, which moves the centre into the older slot for the rest of the fan, sets r14 to 7, clears r39 and enters state 2. |
| 0x105 | `ged1b.u` material after the centre vertex | **Inferred**: word 0x305 (`tfanpoly.s` line 156) resumes in state 5, so the second vertex takes the split-fan path. |
| 0x106 | `ged1b.u` `HP_END` with only the centre vertex | **Inferred**: word 0x332 (`tfanpoly.s` line 235) tests the one-hot mode bit: the fan mode leaves pending class 10 and the polygon mode pending class 3 (the value the polygon begin stub compares with); then the batch count is tested against 4, and the fall-through flushes and makes `mgesi_TfanPolyEnd` the release handler. |
| 0x107 | `ged1b.u` swap token after the fan's centre vertex (state 1) | **Inferred**: word 0x330 (`tfanpoly.s` line 229) fetches past it: a fan's centre is held by the x = 3 shift of the second vertex, not by swap order. |
| 0x108 | `ged1b.u` a later fan vertex (state 2) | **Inferred**: word 0x2cc (`tfanpoly.s` line 69) replaces the newest slot (x = 2) and stays in state 2; when the batch is full it moves to state 3 at word 0x2d2 instead. |
| 0x109 | `ged1b.u` material between fan triangles (state 2) | **Inferred**: word 0x303 (`tfanpoly.s` line 151) queues `mgeb_Material` and moves the fan to state 6, the split path whose switches load the save and restore handlers. |
| 0x10a | `ged1b.u` `HP_END` in state 2 | **Inferred**: the mode test at 0x332 and the r51 test, shared with entry 0x106. |
| 0x10b | `ged1b.u` swap token in fan state 2 | **Inferred**: the single fetch at 0x330; the centre stays in the older slot and the newest vertex is unchanged. |
| 0x10c | `ged1b.u` the first vertex after a fan batch switch (state 3) | **Inferred**: word 0x2d2 (`tfanpoly.s` line 79) flushes the evaluator, puts `mgesi_TfanPoly` into the release handler a one-hot test picks, resends the centre (z = 3) and the last vertex (z = 2), resets the batch count to 0xa and writes the new vertex with x = 2, back in state 2. |
| 0x10d | `ged1b.u` material at a fan batch switch | **Inferred**: word 0x307 (`tfanpoly.s` line 160) loads `mgesi_TfanPolySave` into the second release handler, then a one-hot test either adds the plain fan handler with state 6 or keeps state 4; it resends both slots, resets the batch count to 0xa and enters the material code. |
| 0x10e | `ged1b.u` `HP_END` in state 3 | **Inferred**: the shared end at 0x332 with the fan or polygon pending class. |
| 0x10f | `ged1b.u` swap token while a fan waits to start its next batch (state 3) | **Inferred**: dropped by the fetch at 0x330; the resend of centre and last vertex still happens on the next vertex. |
| 0x110 | `ged1b.u` a vertex in state 4 | **Inferred**: word 0x2dd (`tfanpoly.s` line 94) writes it with x = 2 and moves to state 8. |
| 0x111 | `ged1b.u` material in fan state 4 | **Inferred**: word 0x314 (`tfanpoly.s` line 177) re-enters the material code with state 4 put back, so the next vertex still goes to state 8. |
| 0x112 | `ged1b.u` `HP_END` in state 4 | **Inferred**: word 0x341 (`tfanpoly.s` line 266) resends the newest vertex (z = 2), loads `mgesi_TfanPolyRestoreEdge` and releases it through 0x344 after the evaluator flush. |
| 0x113 | `ged1b.u` swap token in fan state 4 | **Inferred**: word 0x330 consumes it; fans and polygons have no swap code at all. |
| 0x114 | `ged1b.u` the second vertex after a material change (state 5) | **Inferred**: word 0x2c9 (`tfanpoly.s` line 64) writes it with x = 3, so the centre still moves to the older slot, sets r14 to 7 and enters state 6. |
| 0x115 | `ged1b.u` material in state 5 | **Inferred**: word 0x305 (`tfanpoly.s` line 156) keeps state 5, as for entry 0x105. |
| 0x116 | `ged1b.u` `HP_END` in state 5 | **Inferred**: word 0x33d (`tfanpoly.s` line 255) makes `mgesi_TfanPolyEnd` the current handler, copies it to the release handler at 0x346 and releases with the pending class cleared. |
| 0x117 | `ged1b.u` swap token in fan state 5 | **Inferred**: discarded by the fetch at 0x330 before the second vertex arrives. |
| 0x118 | `ged1b.u` a vertex in state 6 | **Inferred**: word 0x2e0 (`tfanpoly.s` line 99) writes the newest slot and stays in state 6; a full batch moves to state 7 and resets r51 to 0xa. |
| 0x119 | `ged1b.u` a repeated material change in fan state 6 | **Inferred**: word 0x316 (`tfanpoly.s` line 181) runs the material code and leaves the fan in state 6. |
| 0x11a | `ged1b.u` `HP_END` in state 6 | **Inferred**: the `mgesi_TfanPolyEnd` release at 0x33d, as for state 5. |
| 0x11b | `ged1b.u` swap token in fan state 6 | **Inferred**: word 0x330 reads past it without any write to r49. |
| 0x11c | `ged1b.u` the first vertex after a split-fan switch (state 7) | **Inferred**: word 0x2e6 (`tfanpoly.s` line 109) flushes the evaluator, loads `mgesi_TfanPolySave` into r69, resends the centre and the last vertex (z = 3, z = 2) and writes the new vertex with x = 2, moving to state 8. |
| 0x11d | `ged1b.u` material in state 7 | **Inferred**: word 0x318 (`tfanpoly.s` line 185) does the same save-handler load and resend, then enters the material code with state 8 put back. |
| 0x11e | `ged1b.u` `HP_END` in fan state 7 | **Inferred**: word 0x33d (`tfanpoly.s` line 255) makes `mgesi_TfanPolyEnd` the handler of the closing release, after the evaluator flush at 0x344. |
| 0x11f | `ged1b.u` swap token in fan state 7 | **Inferred**: fetch-only word 0x330; the save-handler switch due on the next vertex is not disturbed. |
| 0x120 | `ged1b.u` a vertex in state 8 | **Inferred**: word 0x2ef (`tfanpoly.s` line 120) writes the newest slot and stays in state 8; a full batch moves to state 9 with r51 reset to 0xa. |
| 0x121 | `ged1b.u` material in fan state 8 | **Inferred**: word 0x320 (`tfanpoly.s` line 195) queues `mgeb_Material` and keeps the fan in state 8, its main split-path state. |
| 0x122 | `ged1b.u` `HP_END` in state 8 | **Inferred**: word 0x33f (`tfanpoly.s` line 260) releases with `mgesi_TfanPolyRestoreEnd`. |
| 0x123 | `ged1b.u` swap token in fan state 8 | **Inferred**: consumed by word 0x330, with the centre vertex still held in the older slot. |
| 0x124 | `ged1b.u` the first vertex after a switch in state 9 | **Inferred**: word 0x2f5 (`tfanpoly.s` line 131) flushes, loads `mgesi_TfanPolyRestore` into r69, resends both slots and writes the vertex with x = 2, back to state 8. |
| 0x125 | `ged1b.u` material in state 9 | **Inferred**: word 0x322 (`tfanpoly.s` line 199) uses a one-hot test to pick the second release handler, the restore-and-save fan handler with state 10 or the restore handler with state 8, resends both slots and enters the material code. |
| 0x126 | `ged1b.u` `HP_END` in fan state 9 | **Inferred**: word 0x33f (`tfanpoly.s` line 260) loads `mgesi_TfanPolyRestoreEnd`, the handler that closes the fan with the centre restored on the engine, before the release. |
| 0x127 | `ged1b.u` swap token in fan state 9 | **Inferred**: the fetch at 0x330 leaves the pending restore switch for the next vertex. |
| 0x128 | `ged1b.u` a vertex in state 10 | **Inferred**: word 0x2fe (`tfanpoly.s` line 142) writes it with x = 2 and moves to state 8. |
| 0x129 | `ged1b.u` material in fan state 10 | **Inferred**: word 0x32e (`tfanpoly.s` line 215) keeps state 10 across the material change, so the next vertex still lands in state 8. |
| 0x12a | `ged1b.u` `HP_END` in state 10 | **Inferred**: word 0x341, the z = 2 resend and `mgesi_TfanPolyRestoreEdge` release shared with entry 0x112. |
| 0x12b | `ged1b.u` `HP_SWAPTMESH` in state 10 | **Inferred**: the last class-10 entry, the fetch at 0x330. |

Entries 0x12c-0x13f hold the null loop at 0x006.

### Subdivision patches (class 12, entries 0x1a0-0x1a7)

| Entry | Token and state | What the code at the target does |
|---|---|---|
| 0x1a4 | `ged1b.u` a vertex inside a subdivision patch (state 1) | **Inferred**: word 0x034 (`trigger.s` line 43) reloads state 1 with the x = 2 mark and fetches: every vertex of the patch is collected with no per-vertex primitive step. |
| 0x1a5 | `ged1b.u` material inside a subdivision patch | **Inferred**: word 0x037 (`trigger.s` line 48) jumps to the material code at 0x013 with the patch state untouched. |
| 0x1a6 | `ged1b.u` `HP_END` of a subdivision patch | **Inferred**: word 0x039 (`trigger.s` line 52) flushes an evaluator coordinate when one is pending, copies the current handler `mgesi_SubdivEntry` into the null-handler register, resets class and state and releases, so the whole patch goes to the engines in one command. |

Entries 0x1a0-0x1a3 and 0x1a7 hold the null loop at 0x006: the patch never uses state 0, and a strip swap inside a patch is
dropped.

## The diagnostic's sequencer and stress tests

Sources: `irsaudit` 6.5.30m, `gedSequencer` (0x10075210), `gedStressTd` (0x10074ba4), `gedStressReorder` (0x1007341c), `gedStressForm` (0x100735a8), `gedStressUnpack` (0x10073730), `gedStressPtu` (0x100738c4), `gedStressVtu` (0x10073b4c), the unnamed helpers that follow `gedSequencer` (0x10075710-0x10075b14), and the register/pixel builders `Load_GED_Reg` (0x1013f830), `Transfer_GED_Reg` (0x1013f940) and `Send_GED_CI_Token` (0x1013f728).

**Established** (the register/pixel control word, `Compact_GED_Reg_Pixel_Control` 0x1013f6fc). The form has bit 0 set, the register number in bits 13-22 and one more field in bit 12. `Load_GED_Reg` clears bit 12 and sends the value through data tag 3 (ARM address 0x200ac0). `Transfer_GED_Reg` sets bit 12 and sends the filler 0xdeadbeef through data tag 2 (0x200a80). `Send_GED_CI_Token` uses register 0 with bit 12 clear and sends 0xdeedcafe through data tag 6 (0x200b80). **Inferred:** bit 12 turns a register load into a transfer of the register's contents down the engine path, with the data word only a placeholder; the sequencer test ends with transfers of 0x284-0x28b, which it had loaded, before it waits for the back-end chip (`waitBefDone`) and its CRCs are compared.

**Established** (`gedSequencer`, in order). It writes 0 to register 0x2ad. It sends the raw stream 1, 9, 0x282, 0x283, 0, 32 and 32 zero words, the same shape it later uses with 0x240/0x241 to load the program, so 0x282/0x283 are a pointer and data pair for a 32-word store cleared here. It builds the five-word program [x = 1, x = 1, z = 2, fetch with z = 3, release] (the field names of [Word format](#word-format)), loads it at address 0 through 0x240/0x241 and puts the flush program at address 5 (`Load_GED_Ucode_Flush`). It loads 0x284 and 0x285 with 0, 0x286 and 0x287 with 0x55555555, 0x288 and 0x289 with 0xaaaaaaaa and 0x28a and 0x28b with all ones; 0x29d with 0xef and 0x2a5 with 0xfe; through 0x280/0x281 the words 0x01234567 and 0x76543210 from pointer 64 and 0x89abcdef and 0xfedcba98 from pointer 96; 0x2ae with 3; and 0x2b0 ten times with 0 to 9. It then starts the program at table B index 0 (`Activate_GED_Ucode`), sends one 0xdeadbeef word through data tag 2, transfers 0x284-0x28b and waits for the back-end chip.

**Established** (`gedStressTd`). The same shape with other values: 0x294 = 0; 0x284-0x28b as above; 0x2b0 ten times with 0; through 0x280/0x281 the 128 words 0 to 127 from pointer 0; 0x28c = 1, 0x295 = 2, 0x29d = 3, 0x2a5 = 4; and the program [x = 2, fetch, release, x = 2, fetch, no-op].

**Established** (the other stress tests). They call helpers that write consecutive distributor registers in groups: 52-56 (0x34-0x38), 80-81 (0x50-0x51), 96-97 (0x60-0x61), 0x2c0-0x2c6 (0x2c4-0x2c6 always 0, 1 and 0xcf), and 0x2ae with a mask of n ones shifted left (helper 0x10075ad8). Each test then sends the diagnostic stream 1, 13, a count and that many data words from a table it filled (helper 0x10075710), and waits for the back-end chip. Registers 52-56 lie inside the 7-bit register range of the program's load words, and 53-56 inside the one-hot range 53-60 that transfer ops 5 and 7 test ([Word format](#word-format)).

**The checks.** Every one of these tests, and `TEST_gedcrc_fe`, `TEST_gedcrc_seq` and `TEST_gedcrc_token`, which run them through a common helper (0x10075c9c) and call `run_crc_testlist`, ends by comparing the chips' CRC signatures with the gold files `usr/diags/IR/data/irsaudit.*.gold`, whose records are per-chip signature words (`#gedSequencer.g2r1t64` and so on). No test computes an expected distributor output in host code. The scan-chain names in the same binary (`ged_dispInst`, `ged_dispGeomCtrl`, `ged_dispRegBlkId`, `ged_geomStatus`, `ged_passInst`, `ged_passBlkSel`, `ged_pack_state`, `ged_coreByteCnt`) name the distributor's dispatch, pass and pack stages but carry no values.

**What stays open.** The tests replay fixed programs and compare CRCs, so they fix none of the following:

- how the hardware chooses between the state-based table B index and the token's own entry number k for a given token (by k < 4, by control bit 6, or by a separate vertex path): **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;
- what transfer ops 1, 3, 5, 6 and 7 test (equal, bit set, nonzero): **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;
- what control fields y, r, a, b, c and n and load field y do, beyond fetch (bit 26) and release (bit 12), and the exact hardware action of x and z, which [Vertex history fields x and z](#vertex-history-fields-x-and-z) reads from the program's use of them: **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;
- the roles of the small-constant registers r13, r14, r30, r31, r33, r39, r54-r56, r65 and r67: **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;
- the roles of registers 0x280-0x2b0 beyond the pointer and data pairs read above: **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;

Routes tried: `ged1b.u` 6.5.30m (every load, transfer and control word, [ged_listing.txt](ged_listing.txt)); the ARM firmware's distributor writes in `arm1.u` 6.5.30m (`init_ged`, `init_ged_ucode`, `init_ge`, the 0x42..., 0x44..., 0x46... descriptors); `irsaudit` 6.5.30m: the instruction builders (`Compact_GED_Ucode`, `Get_GED_*_Inst`, `Compact_GED_*_Control`, `Load_GED_Ucode_Flush`, `Load_GED_Ucode_Loop`, `Send_GED_Inc_GE`), the sequencer and stress tests above, `TEST_geducode` (loads the program file with `LoadUcodeFile` and calls `init_ged_regs`), `TEST_gedreg` (writes registers with `ged_host_reg_write` and reads them back with `fcPioRead32`), the `TEST_gedcrc_*` tests and their gold files, and the boundary-scan register names; kpm's tables (three distributor command names, `HP_GED_NOP`, `HP_GED_VERIF_LOAD`, `HP_GED_VERIF_DUMP`, and no distributor register table); and the 6.5.5 `sys/kona.h`, `sys/kona_if.h` and `sys/kona_diag.h` headers (an occupancy-mask field, a distributor revision test and a round-robin flag, nothing on the program).

## Engine selection

How the distributor picks among the engines it is allowed to use. What the firmware gives it is now read ([below](#engine-occupancy-mask)); the selection rule inside the distributor is **unknown: no shipped software or published source depends on it**. Routes tried: `arm1.u` start-up (`init_ge_config`, `init_ge`), the 6.5.5 `sys/kona_if.h` header (a round-robin flag no 6.5.30m firmware path tests), and `irsaudit` 6.5.30m `ge12_multige_test`, `ge12_splitge_test` and `ge12_noge_test`, which only drive the engines' scan chains (`jt_select_chain`, `jt_set_global_instruction`, `jt_send_data`, `jt_pack_vector`, `jt_unpack_vector`) and send no primitives, so they predict no assignment. Any rule that keeps the engines' results in command order is consistent with the firmware.

## Engine occupancy mask

**Established** (`arm1.u` 6.5.30m, `init_ge_config` 0x0c003164-0x0c003288, `init_ge` 0x0c0032e4-0x0c003368). `init_ge_config` builds a mask with one bit per geometry engine present, from the engine count and a mask the board configuration supplies; if the two leave no engine it prints that the supplied mask gives an empty occupancy mask and ignores it. It stores the mask at word +0x5c of the board-configuration block (0x04067edc), the count at +0x54 and the logical-to-physical engine numbers at +0x64 onward (eight words). `init_ge` then writes 2 to 0x200004 when any of engines 4-7 is present (mask & 0xf0) and 0 otherwise, writes 0 through distributor descriptor 0x44200020 (register 0x221) and the mask five times through 0x44400020 (register 0x222).

**Inferred:** register 0x222 is the distributor's occupancy mask, the set of engines it may hand work to, and 0x200004 says whether the second engine board (engines 4-7) is in use. The installed 6.5.5 header `sys/kona_if.h` (read for this section) has an occupancy-mask field in the engine part of its configuration record, which agrees, and a configuration flag for round-robin distribution. No 6.5.30m firmware path tests that flag: the four places that read the configuration flags word (`pinfo` + 0xc) test bits 0x1, 0x2, 0x4, 0x8 and 0x80 only.
