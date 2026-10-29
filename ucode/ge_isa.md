# Geometry-engine instruction set

How the 72-bit geometry-engine instruction word is laid out, read from the two encodings of the same program in `usr/gfx/ucode/KONA/` (IRIX 6.5.30m): `ge.hex` (the 72-bit words W) and `ge.u` (a 256-bit record R per word). Facts are labelled **established** (read from the files at the stated place), **inferred** (with the reasoning) or **unknown**.

[scripts/ge_disasm.py](../scripts/ge_disasm.py) writes [ge_wiring.tsv](ge_wiring.tsv) (where every record bit comes from, per form) and the listings in [ge_listing/](ge_listing/), one per source file named by the line table, with labels, decoded fields and source lines. [ge.md](ge.md) covers the containers, the line and file tables and the slot table.

## The engine's microcode port

**Established** from the diagnostic netlist `ge14_4ge.netmap.Z` ([diags/netmap_chips.tsv](../diags/netmap_chips.tsv), chip `ge`): each geometry engine has a microcode memory port `u_a[18]` and `u_d[72]` / `u_di[72]` with byte-lane enables for bits 0-15, 16-31, 32-47, 48-63 and 64-71. **Inferred:** the engine fetches the 72-bit word of `ge.hex` from external memory. The 256-bit `ge.u` record is wider than any pin bus, so it is not what the chip stores.

The other buses on the same chip, **established** by name and width: an external data memory `e_aev[12]`, `e_aod[12]`, `e_amsb[6]`, `e_d[32]` (even and odd address banks); an input port from the distributor `hq_d[32]`, `hq_off[6]`, `hq_op[3]`, `hq_st[2]`, `hq_val`; and an output port `re_d[64]`, `re_dest`, `re_dtype`. The distributor (`ged`) drives eight such input ports and takes `gc_ctrl[24]` and two `gd_data[32]` / `gd_tag[3]` channels from the host interface.

## Two encodings, one program

**Established.** For every address both files hold a word: 62521 in all. 15310 of them are zero in `ge.hex` and have record bits 8-62 all zero in `ge.u`; the other 1578 zero words have those record bits set to a fixed pattern. **Inferred:** the first group is padding the assembler left between modules (most of it in 0x3001-0xf5fb), and the second is real no-ops. The listings leave padding out, which leaves 47211 instructions.

**Established** (the method). Within one form (below), take each record bit and compare it with each W bit over all the form's non-padding words. Most record bits equal one W bit, or its inverse, in every word or in at least 99.5% of them. [ge_wiring.tsv](ge_wiring.tsv) gives the source and agreement count for all 256 record bits in each of the 15 forms. A record bit that follows no single W bit is marked decoded: it is a function of several W bits.

So the record is a decoded control word. Each field of W lands, unchanged, at a fixed place in the record, and the form selects which W bits go where. An earlier reading took the record bytes as fields and found their values unrelated to W ([ge_u_bitmap.tsv](ge_u_bitmap.tsv)); fields do not sit on byte boundaries, which explains that result.

## Forms

**Established.** W bits 67-70 select one of 15 layouts (value 4 never occurs). In eight forms (2, 3, 5, 11, 12, 13, 14, 15) bit 67 is also wired into the record as an ordinary field bit, and the even and odd forms of a pair differ in layout. **Inferred:** the decoder looks at all four bits, so the form is a 4-bit field even though bit 67 also carries data in half of the forms.

W bit 71 is wired to record bit 223 in every form. Its meaning is **unknown**: it is set in 2349 words, including eight of the no-ops.

## Fields

Names below are labels for record bit ranges, chosen from where wired runs start and stop. The record bit numbers count from the least significant bit of the 256-bit big-endian record. A blank cell means the field keeps its no-op value or is decoded in that form.

| Form | Words | imm (R255-224) | A (R191-187) | B (R186-182) | C (R181-177) | D (R174-169) | E (R168-163) | F (R159-154) | G (R153-149) | P, Q (R138-134, R133-129) | M (R121-111) |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 0 | 1578 | | | | | | | | | | |
| 1 | 143 | | W66-62 | W53-49 | | W61-56 | W48-43 | | | | |
| 2 | 618 | | W66-62 | | | W61-56 | | | | | |
| 3 | 1051 | | | W53-49 | | | W66-61 | | | | |
| 5 | 2854 | W40-31 (10 bits) | W66-62 | W53-49 | | W61-56 | W29-24 | | | | |
| 6 | 79 | | W66-62 | W53-49 | bits 2-0 = W46-44 | W61-56 | W37-32 | bits 2-0 = W40-38 | | | |
| 7 | 1346 | | W66-62 | W53-49 | W48-44 | W61-56 | W37-32 | W43-38 | W30-26 | | |
| 8 | 471 | | W66-62 | W53-49 | W48-44 | W61-56 | W37-32 | W43-38 | | | some bits from W16-13 |
| 9 | 1135 | | W66-62 | W53-49 | W48-44 | W61-56 | W37-32 | bits 4-0 = W42-38 | | | bits 10-9 = W28-27, 6-0 = W25-19 |
| 10 | 825 | | | W53-49 | W48-44 | | W61-56 | bits 4-0 = W42-38 | | W66-62, W37-33 | W29-19 |
| 11 | 1430 | | W66-62 | | W48-44 | W61-56 | | W43-38 | | W53-49, W37-33 | W29-19 |
| 12 | 5242 | | W66-62 | W53-49 | W48-44 | W61-56 | W29-24 | W43-38 | | | some bits from W16-13 |
| 13 | 10996 | | W66-62 | | W48-44 | W61-56 | | W43-38 | | | |
| 14 | 14833 | W17-0, sign-extended from W17 | | | W48-44 | | | W43-38 | W23-19 | | |
| 15 | 4610 | W31-0 | W66-62 | W53-49 | W48-44 | bits 4-0 = W60-56 | bits 3-0 = W35-32 | W43-38 | | | |

Smaller wired fields, all **established** in [ge_wiring.tsv](ge_wiring.tsv): R198-192 from W36-31 (forms 12, 13); R95-89 from W21-17 (form 12), W53-49 (form 13) and W28-24 (form 8); R88-87 from W29-28 (form 14); paired bits that copy one W bit twice (R215-214, R213-212, R211-210), which read as 2-bit enables set to 00 or 11.

**Inferred:** A, B, C and G (5 bits) and D, E and F (6 bits) are operand or register specifiers. They appear in nearly every form at the same record place, each fed from one of a few W positions, and each has a fixed value in the no-op record (A to E are 0; F, G, P and Q are 0x1f). The 6-bit width matches the distributor's `hq_off[6]` word offset, which suggests D, E and F can name the input words a command delivers. That rests on the width match only.

**Unknown:** what most decoded record bits do. The largest decoded groups are R148-139 (10 bits, decoded in forms 1-13), R128-122 and R110-100, and the whole of R62-26 outside form 0. These are the candidates for the arithmetic operation codes.

## Immediates

**Established** (wiring, every word of the form): form 15 carries a 32-bit immediate in W31-0; form 14 an 18-bit immediate in W17-0, sign-extended from W17 into the record's 32-bit immediate; form 5 a 10-bit immediate in W40-31, landing in the low ten immediate bits. Form 15 immediates include IEEE single-precision constants (2.0, 255.0, 4096.0, 16777215.0 and others; [ge.md](ge.md#precision) lists some), so the 32-bit immediate feeds floating-point operations as well as addresses.

**Inferred** (one memory operation). The form-14 pattern C = 0x1e, R95-89 = 0x17 with an immediate reads a word of the engine's data memory at that address. In `mmo_CopyFifoLine` (0xab59-0xab65) five such words name 0xc00, 0xbfc, 0xbff, 0xbfd and 0xbfe. The ARM function `U_mCopyFifoLine` (arm1.u 0x0c030b4c) writes five words at 0xbfc with `WriteEram` just before it sends that handler ([arm1.md](arm1.md)). The addresses fit the 12-bit `e_aev` / `e_aod` buses.

## Transfers

The record group R88-72 (`seq` in the listings) and R209-199 (`cc`) control the program counter. **Established** properties of the data:

- R86-84 is a 3-bit code. It is 6 in the no-op record and in 45089 of the 47211 instructions, 4 in 1076, 5 in 908, 3 in 120, and 0 or 1 in 18. Codes 3-5 occur in forms 14 (1858 words), 3 (138), 1 (59) and 2 (49).
- When the code is 3, 4 or 5 and R87 is clear (1463 words), the immediate is the address of a real instruction in every word. When R87 is set (641 words), the immediate is a small signed number, and address + immediate lands on a real instruction in 630. Examples in `ctx_load.S`: 0x6647 has immediate -2 and 0x665b immediate -7, each pointing back to the start of the loop around it.
- With code 4 and R87 clear, 405 words go to address 0 (`HereWeGo`, the reset entry). The others go to subroutine-like labels (`mWramToEram`, `mMatrixMultCCW`, ...).
- `mDispatchCentral` (0xe750-0xe755) is a run of code-5 words with immediates 0xe4d0, 0xe4d0, 0xe4b6, 0xe471, 0xe462 that differ in `cc` (0x60, 0x62, 0x64, 0x66, 0x68), ending with a code-4 word to 0xe450.
- `mgeb_Fogi` (0x6fa5) contains a code-4 word (0x6fa9) to `mgeb_Fogf` (0x6fb2).

**Inferred:** R86-84 is the sequencer operation: 6 = continue, 5 = conditional jump, 4 = jump (and, to address 0, the end of a command: the 405 handler exits), 3 = a loop form (its targets are the `mainloop` and `epilogue` labels of the pixel paths). R87 makes the target relative to the instruction's own address. `cc` selects the condition, as the dispatch chain tests one condition per word. R76-72 is a second condition or mode code (4 in the no-op and in most jumps). R83-77 is 0x7f or 0x7e in transfers; its role is **unknown**.

**Inferred:** the engine starts each command in hardware. `HereWeGo` holds two no-ops, one word with code 6 and a jump to `MemRegInit` (0x27cc, `bootinit.s`), and no code that looks up a command's handler was found anywhere in the program. Most handlers end differently: 215 of the 320 handler labels end in a relative transfer with immediate 0 and condition code 0x11, and 31 jump to address 0 ([ge_ops.md](ge_ops.md)). Either way the hardware takes the next command's handler address (from the ARM, [arm1.md](arm1.md), or from the distributor) when the handler finishes; that part is **inferred** from the absence of any handler lookup code.

## Operations, conditions and FIFOs

- **ALU:** the operation codes of both arithmetic units, the seed unit and the output move are fixed by the IR diagnostic's instruction test and its expected results ([ge_ops.md](ge_ops.md), [ge_inst_results.tsv](ge_inst_results.tsv)). Ties the test cannot break are listed there.
- **Branch conditions:** `cc` 0-15 are read from the same test (ge_ops.md): integer and float flag nibbles, conditions "<= 0", zero, negative and a fourth one, with bit 0 inverting. Each was observed true for one input; the false sides are **inferred**. `cc` 0x11 (the end-of-command wait) and 0x10, 0x14, 0x15 test other state and are **unknown**.
- **FIFO input:** the special-register numbers in `GE.h` (FIFO pointers 0x00-0x02) have not been located in any field. **Unknown: needs capture** ([docs/captures.md](../docs/captures.md)).

A reader can extend the decode without the `ge.u` record: every field in the tables above is a plain slice of W.
