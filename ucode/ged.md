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
are listed after the table.

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
- what control fields x, y, r, a, b, c, z and n and load fields x and y do, beyond fetch (bit 26) and release (bit 12): **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;
- the roles of the small-constant registers r13, r14, r30, r31, r33, r39, r54-r56, r65 and r67: **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;
- the roles of registers 0x280-0x2b0 beyond the pointer and data pairs read above: **unknown: no shipped software or published source depends on it**, routes tried in the paragraph after this list;

Routes tried: `ged1b.u` 6.5.30m (every load, transfer and control word, [ged_listing.txt](ged_listing.txt)); the ARM firmware's distributor writes in `arm1.u` 6.5.30m (`init_ged`, `init_ged_ucode`, `init_ge`, the 0x42..., 0x44..., 0x46... descriptors); `irsaudit` 6.5.30m: the instruction builders (`Compact_GED_Ucode`, `Get_GED_*_Inst`, `Compact_GED_*_Control`, `Load_GED_Ucode_Flush`, `Load_GED_Ucode_Loop`, `Send_GED_Inc_GE`), the sequencer and stress tests above, `TEST_geducode` (loads the program file with `LoadUcodeFile` and calls `init_ged_regs`), `TEST_gedreg` (writes registers with `ged_host_reg_write` and reads them back with `fcPioRead32`), the `TEST_gedcrc_*` tests and their gold files, and the boundary-scan register names; kpm's tables (three distributor command names, `HP_GED_NOP`, `HP_GED_VERIF_LOAD`, `HP_GED_VERIF_DUMP`, and no distributor register table); and the 6.5.5 `sys/kona.h`, `sys/kona_if.h` and `sys/kona_diag.h` headers (an occupancy-mask field, a distributor revision test and a round-robin flag, nothing on the program).

## Engine selection

How the distributor picks among the engines it is allowed to use. What the firmware gives it is now read ([below](#engine-occupancy-mask)); the selection rule inside the distributor is **unknown: no shipped software or published source depends on it**. Routes tried: `arm1.u` start-up (`init_ge_config`, `init_ge`), the 6.5.5 `sys/kona_if.h` header (a round-robin flag no 6.5.30m firmware path tests), and `irsaudit` 6.5.30m `ge12_multige_test`, `ge12_splitge_test` and `ge12_noge_test`, which only drive the engines' scan chains (`jt_select_chain`, `jt_set_global_instruction`, `jt_send_data`, `jt_pack_vector`, `jt_unpack_vector`) and send no primitives, so they predict no assignment. An emulator that keeps the engines' results in command order may choose any rule.

## Engine occupancy mask

**Established** (`arm1.u` 6.5.30m, `init_ge_config` 0x0c003164-0x0c003288, `init_ge` 0x0c0032e4-0x0c003368). `init_ge_config` builds a mask with one bit per geometry engine present, from the engine count and a mask the board configuration supplies; if the two leave no engine it prints that the supplied mask gives an empty occupancy mask and ignores it. It stores the mask at word +0x5c of the board-configuration block (0x04067edc), the count at +0x54 and the logical-to-physical engine numbers at +0x64 onward (eight words). `init_ge` then writes 2 to 0x200004 when any of engines 4-7 is present (mask & 0xf0) and 0 otherwise, writes 0 through distributor descriptor 0x44200020 (register 0x221) and the mask five times through 0x44400020 (register 0x222).

**Inferred:** register 0x222 is the distributor's occupancy mask, the set of engines it may hand work to, and 0x200004 says whether the second engine board (engines 4-7) is in use. The installed 6.5.5 header `sys/kona_if.h` (read for this section) has an occupancy-mask field in the engine part of its configuration record, which agrees, and a configuration flag for round-robin distribution. No 6.5.30m firmware path tests that flag: the four places that read the configuration flags word (`pinfo` + 0xc) test bits 0x1, 0x2, 0x4, 0x8 and 0x80 only.
