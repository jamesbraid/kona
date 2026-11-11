# Operation codes of the geometry-engine program

[ge_isa.md](ge_isa.md) maps every field of the 72-bit instruction word W. This page identifies the operations. It uses two kinds of evidence: handlers whose job is known from the ARM side ([arm1_firmware.md](arm1_firmware.md)), and the IR diagnostic's engine instruction test, whose expected results the diagnostic host program carries word for word. Facts are labelled **established** (read or counted from `ge.hex`, `ge.u`, `ge_symbols` and `irsaudit`, IRIX 6.5.30m), **inferred** (with the reasoning) or **unknown**. [retools/tools/kona/ge_ops.py](../retools/tools/kona/ge_ops.py) writes [ge_optuples.tsv](ge_optuples.tsv), [ge_opdeps.tsv](ge_opdeps.tsv) and [ge_idioms.tsv](ge_idioms.tsv); [retools/tools/kona/ge_inst_results.py](../retools/tools/kona/ge_inst_results.py) writes [ge_inst_results.tsv](ge_inst_results.tsv).

**Result in short.** The 11-bit decoded group `M` (R121-111) is the operation id. The engine has two arithmetic units that one word can drive at once: unit 1 takes its 7-bit operation in M[6:0] (M = 0x680 | op) and writes register field Q; unit 2 takes its 7-bit operation in M[10:4] (M = (op << 4) | 0x7f) and writes register field P. Read the other way, M[10:7] names unit 2's operation and M[6:0] unit 1's, each with an idle value, so one word can drive both units ([form 11](#how-one-m-names-two-operations)). A third group, r110, drives the reciprocal and reciprocal-square-root seeds. The diagnostic test fixes the result of every operation it exercises against the expected word: integer add, saturating subtract, the bitwise group, single-precision add and subtract, single- and double-precision multiply, double add and subtract, integer-to-float conversion, a clamp at zero, the two Newton-Raphson step operations and the two seeds ([table below](#operation-table)). It also fixes the output instruction (one register word to the host) and gives one taken case for each of 16 branch conditions.

## Reading a handler in source order

**Established.** The line table of `ge.u` gives each instruction a source file and line. Address order is the scheduler's (software-pipelined, with constant loads hoisted ahead of their users); line order is the programmer's. `mgeb_CullFace` read by line is: start word (line 546), three operations on register 0x1d (548-550), the compare of the operand with 0x405 (555-556), conditional stores of the small constants 0x70 and 3 (552, 563, 569, 570, 579), a compare with 0x40000000 (567-575), the end-of-command transfer (553) and a closing word (581).

**Established** (counts over the 320 handler labels in `ge_symbols`).

- **Start words.** 78 handlers begin with `7039c007c88cf80000` and 76 with `77fa41d7c881d00000` (immediate bits masked). `mges_NullCommand`, the handler that does nothing, consists of exactly the skeleton: `7039c007c88cf80000` (line 96), `77fa41d7c881d00000` (98), two loads of 0 into register 0x1d (99, 100), `77fa41a7c881f80000` (102) and the end transfer (103). Every handler in this page starts with those words, so they are command framing, not arithmetic. **Inferred:** the first reads the command in; the third zeroes the register the command's operands are staged through. Their exact action is **unknown**.
- **End of command.** 215 handlers hold a relative transfer with immediate 0 and condition code 0x11 (`xfer4.rel c31 cc=11` in the listings); 31 hold an absolute transfer with immediate 0 in the same group, which the listings print as a jump to `HereWeGo`; 75 hold neither and jump into shared code. The first kind is on the last or next-to-last source line in 161 of the 215. Both kinds carry R88, the indirect-transfer bit: neither goes to address 0, both hand over to the next command's handler ([ge_isa.md](ge_isa.md#calls-returns-and-the-end-of-a-command)).
- **The transfer with immediate 0.** Of 296 such transfers (code 4, relative bit set), the instruction at address + 5 exists in 283, against 296 of 296 at address + 0 (which is the instruction itself, so no test). **Inferred:** the transfer takes effect after four delay slots, and with immediate 0 it continues at the instruction after them; it is a wait on condition 0x11 and not a jump. For the conditional transfers (code 5) with a nonzero immediate the target is relative to the instruction itself: 216 of 216 land on an instruction at base 0, 144 of 216 at base 5. **Inferred** ([ge_isa.md](ge_isa.md), branch conditions): cc 0x11 is the end-of-command wait or a loop counter, chosen by the condition-group field R76-72; it is the condition in 300 of the 320 transfers whose target is their own address.

## The operation field

**Established** ([ge_opdeps.tsv](ge_opdeps.tsv), forward selection of W bits that determine `M` over every word of a form):

| Form | W bits that determine M | Grade |
|---|---|---|
| 5 | W22-16 (bit 20 not needed) | established |
| 12 | W16-13, W30, W51 | established |
| 13 | W22-16, W29, W8 | established |
| 15 | W61 only | established |
| 14 | none: M is constant | established |

In form 13, **established** over all 10996 words: with W29 set (7934 words) M = 0x680 | W[22:16], so W[22:16] = 0x4a gives 0x6ca, 0x60 gives 0x6e0, 0x62 gives 0x6e2, 0x42 gives 0x6c2 and 0x50 gives 0x6d0; with W29 clear (3062 words) M = (W[22:16] << 4) | 0x7f, which gives 0x47f, 0x57f, 0x6ff and so on. **Inferred:** W29 chooses between reading W[22:16] as an operation and reading it as another field that lands in M[10:4]; the low bits 0x7f are the "no operation" pattern. In form 5 the same M values come from different W[22:16] codes (0x6ca from 0x44, 0x6c2 from 0x46, 0x6e2 from 0x4e). So M is a canonical operation id that the assembler produced from a form-specific code; **inferred:** M[6:0] is the operation, 64 codes at most (0x40-0x7f).

The other decoded groups depend on the low bits: `r148` (R148-139) on W[13:0] and W29, `r110` (R110-100) on a similar set, `r99` (R99-96) only on W55-54 and one more bit. [ge_optuples.tsv](ge_optuples.tsv) lists the 400 most common tuples (form, M, r110, r99, r148, r128) with counts, the most common first operand A and the handlers that use each most. `r128` is not fully explained by any W bit set this method found in form 13 (3511 words still disagree), which fits it being a function of wired operand fields as well.


## Operations identified from production handlers

**Move: M = 0x6ca.** **Established:** the most common operation overall (2317 words in form 13, 1619 in form 5), and the only operation in `mgesi_TbusRegWrite`, a handler that does nothing but forward two operand words to the raster-board register bus ([arm1_firmware.md](arm1_firmware.md)); `mgesi_FlushRM` and `mgesi_PassThrough` use it with one other operation each. The diagnostic test below confirms it: 0x6ca returns its first operand unchanged.

**Equality compare against an enumerant: M = 0x6c2 with r110 = 0x7bd.** **Established:** 34 instructions in the whole program, 32 with first operand A = 0x18; in 31 a form-15 load into C = 0x1e precedes it by up to three words, and the loaded constants are GL enumerants: 0x405 (GL_BACK, in `mgeb_CullFace`), 0x900 (GL_CW, in `mgeb_FrontFace`), 0x1701 (GL_PROJECTION, in `mgeb_MatrixMode`), 0x1b01 and 0x1b02 (GL_LINE and GL_FILL, twice each) and several 0x8xxx values ([ge_idioms.tsv](ge_idioms.tsv)). The ARM side sends each of those three handlers one operand, the GL enumerant, so **inferred:** register 0x18 holds the first operand word of a command. The diagnostic test shows 0x6c2 is the integer subtract, so the compare is a subtract whose zero result is tested. The conditional stores around it carry predicate field `r211` = 3 or 2 (true or false), which is **inferred** to select on that result.

**`mgeb_DepthRange`.** **Established:** it runs 0x6e8 and then 0x6e6 on each of its two inputs, then 0x6e2, 0x6e0 and unit-2 multiplies against the constants 0x49000000 (2^19) and 0x49800000 (2^20). **Inferred:** with the table below this reads as GL's clamp of zNear and zFar to [0, 1] (maximum, then minimum), then (far - near) and (far + near) scaled by powers of two for the 2^20 depth range of [docs/rm.md](../docs/rm.md).

**Counted loops.** **Inferred:** a form-14 word with `r219` = 1, C = 0x1e and an immediate loads a loop count into register G; a later word with C = G, G = G and F = 0x25 steps it, and a relative transfer repeats the body. The counts seen include 8 (`mgesi_FlushRM`), 0x59 (the raster-shadow length, `mges_ContextReloadFromBEF`), 0x1fa and 0xeaf (`ctx_load.S` at 0x6641 and 0x6653). The field reading and the evidence are in [ge_isa.md](ge_isa.md#fields). The 0x1fa count is not the activate token.

## Shifts and the float-to-integer conversion

The diagnostic test fixes none of unit 1's codes 0x5b, 0x5d, 0x5f and 0x71 (M = 0x6db, 0x6dd, 0x6df, 0x6f1; 95, 711, 489 and 254 words in the production listings). The diagnostic program uses 0x5b-0x5f only in `debug.S`, `init.s`, `walk_tbus.S` and `eram.S`, which return no expected word. Their readings come from modules whose job the ARM side fixes. The shift count is the second operand in each.

**0x5d is a logical shift right: inferred.** `U_uExtract` (`arm1.u` 6.5.30m, 0x0c03092c) writes 21 words to engine memory 0xbc0 with `WriteEram`; the last 16 are `ExtractShiftMasksL12A4`, four copies of {shift 4, mask 0xfff, shift 0, mask 0xf}. `mmo_ExtractL12A4` (mextract.S, 0x91e3-0x928d) loads 0xbc5-0xbd4 into staging words 0-0xf, then per input word runs 0x6dd with the input and staging word 0 (the 4), and 0x6dd with the input and staging word 2 (the 0), and ANDs the two results with staging words 1 and 3 (0xfff and 0xf) before storing them (lines 115-122, eight pairs per pass). Only a right shift splits a 16-bit L12A4 word into two disjoint fields: (x >> 4) & 0xfff is bits 15-4 and x & 0xf bits 3-0, while a left shift would make the two fields overlap in bits 3-0. `umo_UnpackVertexV3F_C4UB` (uunpack.s, 0x2c83-0x2cac) takes 0x5d nine times (three alone, six paired with a unit-2 multiply, M = 0x45d) with ANDs against 0xff and the constant 0x3b808080 (1/255): bytes of a packed colour, shifted down and masked, then scaled to [0, 1].

**0x5f is a shift left and 0x5d does not extend the sign: inferred.** The colour unpack at munpack.S lines 264-269 (0x57b5-0x57c7) stages the counts 8, 16 and 24 (0x18), runs 0x6df three times and 0x6dd four times on one packed word, converts the four results with 0x6f3 and multiplies each by 1/255. That is byte k = (x << 8k) >> 24 for k = 0-3, which needs three left shifts and four right shifts by 24, the counts seen. GL's unsigned-byte colour reaches [0, 1] only if the right shift brings in zeros; an arithmetic shift would turn bytes 0x80-0xff negative.

**0x5b is an arithmetic shift right: inferred.** The normal unpack of `mmo_UnpackVertexV3F_N3S` (munpack.S lines 298-299, 0x576c-0x5772) runs 0x6df once and 0x6db twice per packed word of two signed shorts, converts with 0x6f3 and scales. Low short = (x << 16) >> 16 and high short = x >> 16, both needing the sign brought in for a signed normal; `umo_UnpackVertexV3F_N3S` (uunpack.s) has the same two-to-three mix. The unsigned paths above never use 0x5b.

**0x71 is float-to-integer conversion: inferred.** `mmo_FloatToInt` (floattoint.s, 0x2753-0x2799, loop `mainloop_f2i`), the module the ARM appends for float-to-integer pixel transfers (`AddF2I`, `U_uF2I`), uses only moves, unit-2 multiplies and M = 0x471: a multiply by the scale `U_uF2I` writes to control memory 0x1ba with `WriteCram`, paired with unit-1 code 0x71, on each input word (A = 0x10, D = 0-0x10) before the store. It is 0x73's partner in the conversion group, the way 0x62 is 0x60's. Whether it truncates or rounds to nearest is **unknown: no shipped software or published source depends on it**: only 2 of the 302 words with unit-1 code 0x71 have a 0.5 constant within twelve words before them, so no handler shows a rounding step it would need, and no expected result exercises it. Routes tried: the `irsaudit` `expected_token` array (no 0x71 case), the diagnostic program's sources (no 0x71 use).

## The diagnostic program's instruction test

The IR diagnostics ship a second geometry-engine program, `usr/diags/IR/ucode/ge.hex` and `ge.u` (IRIX 6.5.30m, built from a 1998 diagnostic tree). Its line table names its sources, among them `ge_inst.s`, `fib.S`, `mul.S`, `mul_ge.S` and `mmath.S`. [retools/tools/kona/ge_disasm.py](../retools/tools/kona/ge_disasm.py) runs on it unchanged when given an empty symbol file, rederiving the wiring from that program's own two encodings. The listings are not committed.

**Established (the expected results).** `TEST_ge_instTest` in `irsaudit` (0x1006f460) loads the diagnostic program, starts it, waits for the engine's output DMA (`wait_for_odma`) and compares the first 172 returned words one by one with the array `expected_token` (dynamic symbol, 0x102001a8, 688 bytes), printing a debug line for each mismatch. `ge_inst.s` is straight-line code: it contains exactly 172 output instructions, none inside a loop, so the n-th output instruction in address order produces `expected_token[n]`. [ge_inst_results.tsv](ge_inst_results.tsv) pairs them. The output instruction is a form-12 (or form-10) word with `r213` = 3 and B = 9, 10 or 11, using either M = 0x6ca or the unit-2 move M = 0x27f with `r95` = 0x20; `r148`[9:5] is the register it sends. **Established** by every case below: the register it names is the one the preceding operation wrote.

The operands come from the test's own code: form-15 words load 32-bit constants into a staging file (B selects the entry), and M = 0x6ca words copy them into the arithmetic registers (A names the staging entry, Q the register). For a two-operand operation `r148`[9:5] names the first register and `r148`[4:0] the second. The tests below use registers 0 and 1 (A, B) or the pairs 0:1 and 2:3 (double precision), and send the result register.

### Operation table

Each row is one operation word in `ge_inst.s`, its operands and the word `irsaudit` expects back. "Established" means the expected word fixes the operation among the plain candidates (add, subtract, multiply, the bitwise operations, moves, conversions); where it does not, the row says so.

| Line | Unit, code (M) | Operands | Expected | Reading |
|---|---|---|---|---|
| 1096, 1122, 1143 | 1, 0x40 (0x6c0) | 2 and 2, then +2, +2 | 4, 6, 8 (index 48-50) | integer add, **established** (2 \| 2 and 2 ^ 2 would give 2 and 0) |
| 3601 | 1, 0x40 (0x6c0) | A = 0xaaaaaaaa, B = 0x55555555 | 0xffffffff (136) | consistent with add; whether the add saturates at the signed limit is **unknown**, since no operand in the test overflows it |
| 3617 | 1, 0x50 (0x6d0) | same | 0x00000000 (137) | AND or NOR; AND **inferred** ([below](#settling-the-ties)) |
| 3632 | 1, 0x58 (0x6d8), one operand | A = 0xaaaaaaaa | 0x55555555 (138) | bitwise NOT, **established** for one operand |
| 3648 | 1, 0x54 (0x6d4) | A, B as above | 0xffffffff (139) | OR, XOR or NAND; OR **inferred** ([below](#settling-the-ties)) |
| 3663 | 1, 0x42 (0x6c2) | A = 0xaaaaaaaa, B = 0x55555555 | 0x80000000 (140) | a subtract that does not wrap: **established** against wrapping A - B (0x55555555) and B - A (0xaaaaaaab); **inferred** signed A - B saturated at the 32-bit limit, which the production compare idiom also fits; the sign bit of a wider result would also give 0x80000000 |
| 3678 | 1, 0x56 (0x6d6) | A, B | 0xffffffff (141) | OR, XOR or NAND; XOR **inferred** ([below](#settling-the-ties)) |
| 3694 | 1, 0x4a (0x6ca), one operand | A = 0xaaaaaaaa | 0xaaaaaaaa (142) | move of the first operand, **established** |
| 3709 | 1, 0x4b (0x6cb) | A, B | 0x55555555 (143) | move of the second operand, **established** with the register walk at lines 3326-3448 (index 120-127), where 0x6cb with second operand 0, 1, 2, 4, 8, 0x10, 0x1f, 0x15 sends each register's loaded pattern |
| 3729 | 1, 0x60 (0x6e0) | A = 1024.1024 (0x44800347), B = 2048.2048 (0x45000347) | 3072.307 (0x454004ea, 144) | single-precision add, **established** (the only candidate giving 3A) |
| 3744 | 1, 0x66 (0x6e6) | same | 0x44800347 = A (145) | returns the smaller and the first operand; minimum, **inferred** from `mmo_Minmax` ([below](#settling-the-ties)) |
| 3759 | 1, 0x68 (0x6e8) | same | 0x45000347 = B (146) | returns the larger and the second operand; maximum, **inferred** as above |
| 3774 | 1, 0x62 (0x6e2) | first = B, second = A (`r148` = 0x20) | 0x44800347 (147) | single-precision subtract B - A, **established** (B = 2A exactly) |
| 3792 | 1, 0x73 (0x6f3), one operand | 0x400 | 1024.0 (0x44800000, 148) | integer to single-precision float, **established** |
| 3829-3830 | 1, 0x20 (0x6a0), two words | 0x400a5a5a5a5a5a5a (3.294...), 0x4005a5a5a5a5a5a5 (2.706...) as doubles | 0x40180000 00000000 = 6.0 (149-150) | double-precision add, **established**; the second word names the low halves |
| 3858-3859 | 1, 0x22 (0x6a2), two words | same | 0x3fe2d2d2 d2d2d2d4 (151-152) | double-precision subtract, **established** (the exact IEEE difference) |
| 3895, 3913, 3931 | 1, 0x7c (0x6fc), one operand | 0x0478002b, 0xce1ef209 (-6.7e8), 0x3eaa7efa (0.333) | the same, 0, the same (153-155) | clamp below at zero, **established** for these inputs; the test has no input above 1.0, and the upper clamp at 1.0 is **inferred** in [The clamp above 1.0](#the-clamp-above-10) |
| 3996 | 2, 0x47 (0x47f) | 3577494.5 (0x4a5a5a5a), 5300.7056 (0x45a5a5a5) | 0x508d4985 (156) | single-precision multiply, **established** bit for bit against IEEE round-to-nearest |
| 4010 | 2, 0x27 (0x27f), one operand | 0x4a5a5a5a | the same (157) | unit-2 move of the first operand, **established**; the output instructions use it |
| 4025 | 2, 0x2f (0x2ff) | same pair | 0x45a5a5a5 = B (158) | returns the second operand, which is also the smaller; move of B or minimum not separated |
| 4050 | 2, 0x4f (0x4ff) | A = 0.60294 (0x3f1a5a5a), B = 1.91912 (0x3ff5a5a5) | 0x3f57c750 (159) | 2 - A x B, **established** bit for bit: the Newton-Raphson reciprocal step |
| 4068 | 2, 0x57 (0x57f) | same | 0x3f6be3a8 (160) | (3 - A x B) / 2, **established** bit for bit: the Newton-Raphson reciprocal-square-root step |
| 4104-4105 | 2, 0x07 (0x7f), two words | the two doubles above | 0x4021d3b5 97795b3c (161-162) | double-precision multiply, **established** (the exact IEEE product 8.9135) |
| 4128-4129 | 2, 0x37 (0x37f) | same | the first double (163-164) | double move of the first pair, **established** |
| 4153-4154 | 2, 0x3f (0x3ff) | same | the second double (165-166) | double move of the second pair, or minimum (the second is the smaller); not separated |
| 4182, 4232 | r110 = 0x6bf, one operand | 16777216.0, 49.4295 | 0x337f0000, 0x3ca60000 (167, 169) | reciprocal seed, **established**: within 0.4% of 1/x, with only fraction bits 22-16 set (7 bits) |
| 4206, 4261 | r110 = 0x2bf, one operand | same | 0x397f0000, 0x3e120000 (168, 170) | reciprocal-square-root seed, **established**: within 0.4% of 1/sqrt(x), 7 fraction bits |

**Established:** a seed result reaches a register through a following unit-2 move word with `r110` = 0x68d (lines 4184, 4208), so the seed unit has its own result register.

**Inferred** from the table: unit 1 groups its codes by M[6:5]: 0x20-0x3f double precision, 0x40-0x5f integer and bitwise, 0x60-0x7f single precision and conversion. Bit 1 selects subtract in both add pairs (0x20/0x22, 0x60/0x62). Unit 2 is the multiplier: single multiply 0x47, the two Newton-Raphson steps 0x4f and 0x57, double multiply 0x07, moves 0x27/0x2f and 0x37/0x3f. This corrects the earlier weak reading that 0x6e0 was the multiply: `mMatrixMultCCC`'s 63 uses of 0x6e0 are the adds of a product whose multiplies run in unit 2.

**Form 11 carries both units.** Lines 3512-3528 use M = 0x440 with two destinations (P = 3, Q = 2; then 5, 4; 7, 6; 0x12, 0x11). Starting from 10 and 10.0, the even registers end at 20, 30, 40, 50 and the odd ones at 100.0, 1000.0, 1e4, 1e5 (index 128-135). **Inferred:** one word does an integer add of 10 and a single-precision multiply by 10.0 together.

#### How one M names two operations

Every unit-2 code the test fixes ends in binary 111 (0x07, 0x27, 0x2f, 0x37, 0x3f, 0x47, 0x4f, 0x57), so it is k << 3 | 7 for a 4-bit k. **Established** (counted over every listed word of `ge.u` that carries M, 6.5.30m): split M into M[10:7] and M[6:0]. In the single-unit forms 12, 13 and 15 one half always holds its idle value: M[10:7] = 0xd with a unit-1 code in M[6:0] (the 0x680 | code pattern), or M[6:0] = 0x7f with a unit-2 k in M[10:7] (the code << 4 | 0x7f pattern). In form 11, 1428 of 1430 words carry a non-idle value in both halves. The most common pair, k = 8 with M[6:0] = 0x60 (M = 0x460, 855 words in form 11 and 2130 across all forms), is a single-precision multiply and add, the core of `mMatrixMultCCC` and the lighting modules. Forms 1-3 and 5-10 carry both halves in some words too (2003 words). **Inferred** from that split and the test's M = 0x440: M[10:7] is unit 2's k (unit-2 code = k << 3 | 7, k = 0xd meaning unit 2 idle), and M[6:0] is unit 1's code (0x7f meaning unit 1 idle). M = 0x440 is then k = 8 (single multiply) and unit-1 code 0x40 (integer add), which is what lines 3512-3528 return. The `code << 4 | 0x7f` and `0x680 | code` patterns above are the same layout with the other unit idle. The k values that occur in two-unit words are 0, 1, 4, 5, 8, 9 and 0xa (unit-2 codes 0x07, 0x0f, 0x27, 0x2f, 0x47, 0x4f, 0x57). Code 0x0f (k = 1, 72 words in `bitmaptofloat.s`, `colortable.S`, `drawpnt.S`, `getlight.S`, `primmtrllight.S`, `ulight.s` and `ueval2D.s`) is the only one the instruction test does not exercise. **Inferred: 0x0f is the integer multiply, keeping the low 32 bits of the product.** KONA's diagnostic program uses it only in `mul.S`, beside integer adds and subtracts and no float operation, and `irsaudit`'s multiply test checks that routine against cubes computed on the host ([ge_isa.md](ge_isa.md#engine-facts-read-from-konas-own-binaries)). Whether the result is the low 32 bits of the product, and how signed operands behave, is **unknown**: every operand in that test is positive.

**Not identified.** 0x6c8 appears once, in the branch test (line 1570, operands 0x00005a5a and 0x5a5a5a5a), and only its effect on a branch is observed.

## The clamp above 1.0

The diagnostic test fixes unit-1 code 0x7c only for a negative input (0) and two inputs between 0 and 1 (unchanged). No
`irsaudit` test sends it a value above one: `expected_token` has three 0x7c cases, `ge_mul_test` checks integer cubes and
`ge_hist_stress_test` has no expected array. The production uses settle it by function.

**Inferred: 0x7c clamps to [0, 1].** The pixel path's colour look-up stage is the clamp module followed directly by the
table module. `AddRGBALut` (`arm1.u` +0x2f87c) and `AddLuminanceLut` (+0x2f9e4) call `AddClamp` with per-component
scales taken from the context (four words at +0x40 of the per-component record, or one value repeated), and `U_uClamp`
(+0x3124c) writes them three times into the module's 17-word block, 1.0 when no array is given. The loop of `mmo_Clamp`
(`clamp.s` 0x1697-0x16b3) applies 0x7c to each component and multiplies the clamped values by that scale; its
output feeds `mmo_LUT16` as a table index, and the look-up module does no bound check of its own (its words are float
adds and unit-2 moves, `LUT.s`). GL defines the pixel-map index as the component clamped to [0, 1] times the map size
minus one. With a clamp at zero only, a colour above 1.0 after scale and bias would index past the table, so the clamp
must also limit at 1.0. The vertex colour pass agrees: `mmo_LiColorClamp` (`ulight.s` 0x0d73-0x0d7a) passes each
unlit colour component through 0x7c and nothing else before the colour leaves the engine, and GL clamps vertex colours
to [0, 1].

What a NaN input gives is **unknown: no shipped software or published source depends on it**. Routes tried: the three
`expected_token` cases, the other `irsaudit` engine tests, the diagnostic program's own sources (`mmath.S`, `mul.S`,
`fib.S`, `eram.S`, `cram.S`, `debug.S`: no 0x6fc word), and the production uses listed above.

## Branch conditions and the flag register

Lines 1210-2195 test conditional transfers (sequencer code 3 with condition code `cc`, see [ge_isa.md](ge_isa.md)). Each case loads a marker into register 0, sets flags with one operation (`r220` = 1 for unit 1, `r221` = 1 for unit 2, `r222` = 1 for the address unit), branches with one `cc` to the output word, and on the fall-through path overwrites register 0 with 0xdeadbeef. **Established:** none of the 24 expected words (index 52-75) is 0xdeadbeef, so every branch is taken. Each case therefore shows one input for which its condition is true.

Each row below shows one input for which its branch is taken, so the condition is **inferred** from that input alone. A single input does not fix a condition among the candidates it satisfies; tracing each production branch back to the word that set its flags would settle the rest. The fourth condition per nibble (`cc` 6, 7, 0xe and 0xf) is **unknown** ([below](#the-fourth-flag-condition)).

| cc | Flags from | Result that made it true | Branch (KONA diag `ge.u`) | Condition |
|---|---|---|---|---|
| 0 | integer add | 0 with carry out; and 0xa6000000 | 0x0bf4, 0x0c4d | unit 1 result <= 0, **inferred** |
| 1 | integer add | 0x5a64b4b4; and 0x5a000000 with carry out | 0x0cb8, 0x0d23 | unit 1 result > 0, **inferred** |
| 2 | integer subtract | 0 | 0x0ab3 | unit 1 result zero, **inferred** |
| 3 | integer add | 0xa64b4b4b | 0x0a48 | unit 1 result not zero, **inferred** |
| 4 | integer add | 0xa6000000 | 0x0b89 | unit 1 result negative, **inferred** |
| 5 | integer add | 0 with carry out | 0x0b1e | unit 1 result not negative, **inferred** |
| 6 | operation 0x6c8 | not known | 0x0d8e | unknown (the fourth condition, [below](#the-fourth-flag-condition)) |
| 7 | integer add | 0x5a64b4b4 | 0x0df9 | unknown (the inverse of 6) |
| 8 | float multiply | -1.0; and 0.0 | 0x107f, 0x10ea | unit 2 result <= 0, **inferred** |
| 9 | float multiply | 1.0 | 0x1014 | unit 2 result > 0, **inferred** |
| 0xa | float multiply | 0.0 | 0x0ed3 | unit 2 result zero, **inferred** |
| 0xb | float multiply | -1.0 (the flags here come from the last flag-setting word, as this multiply has no `r221`) | 0x0e68 | unit 2 result not zero, **inferred** |
| 0xc | float multiply | -1.0 | 0x0f3e | unit 2 result negative, **inferred** |
| 0xd | float multiply | 0.0 | 0x0fa9 | unit 2 result not negative, **inferred** |
| 0xe | unit-2 operation 0x2f | not known | 0x1143 | unknown (the fourth condition, [below](#the-fourth-flag-condition)) |
| 0xf | float multiply | 3.0 | 0x11ae | unknown (the inverse of 0xe) |

The test sections around these rows are `alu_test` (KONA 0x1aa3), `mlu_test` (0x1da0) and `seed_test` (0x1f4c) in the diagnostic's file table; they hold exactly the unit-1, unit-2 and seed rows of the [operation table](#operation-table) (expected index 136-155, 156-166 and 167-170).

### Address-unit conditions

**Established** (KONA diag `ge.u` 6.5.30m, lines 2088-2195). Four more cases, expected index 72-75, set the flags with a form-14 word carrying `r222` = 1 (the address unit) and branch on a `cc` above 15. None returns 0xdeadbeef. Which condition each `cc` selects is **inferred** from the one value each case produces.

| cc | Flag-setting word | Value it produced | Branch | Condition |
|---|---|---|---|---|
| 0x10 | 0x1245, immediate 0 | 0 | 0x1249 | address-unit result zero, **inferred** |
| 0x11 | 0x1209, operation F = 0x20 on register 2, which 0x11e7 loaded with 0xd | not zero | 0x120b | address-unit result not zero, **inferred** |
| 0x14 | 0x1283, immediate 0xa5a5 | positive | 0x1287 | address-unit result > 0, **inferred** |
| 0x15 | 0x12c1, immediate 0xffff5a5b | negative | 0x12c5 | address-unit result <= 0, **inferred** |

**Inferred: F = 0x20 with `r222` steps a count down by one.** The branch at 0x120b follows the decrement at 0x1209 of register 2, loaded with 0xd, and takes `cc` 0x11. That F = 0x3f is the address unit's add is **established** for KONA in [ge_isa.md](ge_isa.md#engine-facts-read-from-konas-own-binaries).

All four branches are in condition group 4. Bit 0 inverts here too, but the pairs differ from the arithmetic units': bits 2-1 = 0 is equal and 2 is greater. **Inferred** from the address-unit field reading in [ge_isa.md](ge_isa.md#fields): F = 0x25 with `r222` is the decrement that steps a loop count, so the production loops that end on `cc` 0x11 in group 7 run while the stepped count is not zero, and the pixel-path loops that continue on `cc` 0x14 and leave on `cc` 0x15 test the count against zero the same way.

The flag word shows the address unit too. In the flag-register test (index 4-7) the words that read 0x1cc follow an `r222` word with immediate 0x5a5a, and those that read 0xcc follow one with immediate 0xffffa5a6 (0x0360, 0x0370, 0x0380, 0x038f): **inferred**, bit 8 of the condition word is the address unit's "greater than zero".

**Established** (index 8-15, the flag register read as source A = 0x1b, an address register the test points at 0xfffe0104, special register 0x41 FPU_COND_A; [ge_isa.md](ge_isa.md#how-code-reaches-the-special-registers)): after a float multiply of 2356.2 by the constant 0.0 the register reads 0xcc; after a float multiply of -2356.2 by 1.0, 0xac; after an integer add giving 0 with carry 0xac; after an integer add giving 0xfffff000 0xaa. A word without `r220` or `r221` leaves the value unchanged (index 9, 11, 13, 15). That each multiply's second operand is the constant stored just before it is **inferred** from the code order.

**Inferred:** the register holds two nibbles, each with bit 3 = result <= 0, bit 2 = zero, bit 1 = negative, bit 0 = the operation passed its second operand ([below](#the-fourth-flag-condition)). `cc` 0-7 test the low nibble and 8-15 the high nibble; `cc` bits 2-1 pick the condition (0 <= 0, 1 zero, 2 negative, 3 second operand passed) and bit 0 inverts it. All 14 cases with a known operation agree with this reading. The low nibble is set by a unit-1 word with `r220` and the high nibble by a unit-2 word with `r221` ([below](#conditions-in-production-handlers): production code tests the low nibble after unit-1 float subtracts and moves, so the split is by unit, not by integer and float). The carry out is not a condition the test names.

### Conditions in production handlers

**Established** (counted over the production listings, `ge.u` 6.5.30m). Conditional and loop transfers (sequencer codes 5 and 3) use `cc` 0x11 (238), 0x14 (183), 2 (111), 3 (109), 0x15 (88), 0x10 (24), 4 (27), 5 (18), 1 (17) and 0 (15); `cc` 8, 9, 0xa and 0xd occur once or twice each, and 6, 7, 0xb, 0xc, 0xe and 0xf never. Of the 200 code-5 or code-3 transfers with `cc` 0-15 and condition-group field (R76-72) 4, 161 have a flag-setting word among the ten before them, and in all 161 the nearest one is a unit-1 word with `r220`, never a unit-2 word with `r221`: the integer subtract 0x6c2, the moves 0x6ca, the bitwise 0x6d0, 0x6d4 and 0x6d6, and the float add and subtract 0x6e0 and 0x6e2. The three with `cc` 8-15 have no flag-setting word within ten. So production branches only on the low nibble, and it sets that nibble from unit-1 float results as well as integer ones.

**Inferred** (false sides, by function). Production code needs each tested condition to be false for some input, and the needed inputs match the reading above:

- `cc` 2 and 3 (zero, not zero). `glmodes.S` lines 1274-1278 (0xf2d0-0xf2de) compare one value with three constants (4, 0 and 0x10, staged at 0xf2cd-0xf2cf) by 0x6c2 and then take three `cc` 2 transfers in a row (0xf2dc-0xf2de) to three different targets, each testing one compare in order. The chain reaches the second and third transfer only if `cc` 2 is false for a nonzero difference.
- `cc` 0 and 1 (<= 0, > 0). `fog.S` lines 1359-1368 (0x7282-0x7292) subtract twice in unit 1 (float 0x6e2, at 0x7282 and 0x7286) and branch on `cc` 0 at 0x7291 and `cc` 1 at 0x7292. With the [twelve-word flag delay](#the-twelve-word-flag-delay) the `cc` 0 branch tests the 0x7282 subtract and the `cc` 1 branch the 0x7286 one. The second subtract takes the first one's result through the forwarding path (`r128` = 5, port-1 code 0, four words back; [ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding)) and subtracts 0.001 from it. So the pair tests one difference d twice, d <= 0 and d - 0.001 > 0, and both sides of each test occur in the search it belongs to ([ge_compute.md](ge_compute.md#fog-fogs), `mDefineFineMode`).
- `cc` 4 (negative). `clip.S` lines 176 and 301 take it after a unit-1 float operation (0x6e0, 0x6ea) in the clipping code, where the sign says which side of a clip plane a vertex lies; both sides occur in normal drawing, so the condition must be false for some inputs.

**Inferred** (the conditions above 15, by their targets; the names are the `ge_symbols` labels shipped beside `ge.u`). `cc` 0x14 with the loop form (code 3) jumps back to a `mainloop*` label in 31 of the 39 such words with a named target, and `cc` 0x15 with code 3 jumps forward to an `epilogue*` label in 30 of 36: the pixel-path loops run "while not done" and leave on the inverse, so bit 0 inverts here too. Which counter or input state decides "done" is **unknown**: no shipped software or published source depends on it beyond these loops; routes tried: the listings, the pixel-path labels, and the ARM's pixel-path set-up ([arm1_firmware.md](arm1_firmware.md)), which sends counts as operands but names no engine condition. `cc` 0x10 with condition group 31 jumps to `mmo_AbortGeometry` in 11 of its 24 uses (`mdecompose2.S`), once to `mErrInvalidEnum` and once to `mmo_PixLineNextGE`: **inferred** to test an abort or error request raised outside the instruction stream. `cc` 0x11 is the condition of the end-of-command wait (relative transfer with immediate 0, condition group 31) and of the counted loops (`mgesi_FlushRM` 0x3816, `ctx_load.S` 0x6647 and 0x665b, condition group 7), so the condition-group field R76-72 changes what a `cc` above 15 tests; with group 7 it is **inferred** to be "counter not exhausted", from the loop counts of [ge_isa.md](ge_isa.md#fields).

### The twelve-word flag delay

**Established for KONA** (both shipped programs, IRIX 6.5.30m: production `usr/gfx/ucode/KONA/ge.u` and the IR diagnostic `usr/diags/IR/ucode/ge.u`, every conditional transfer read). A transfer that tests a unit-1 or unit-2 condition (`cc` 0-15) sees the flags of the latest flag-setting word of that unit (`r220` for `cc` 0-7, `r221` for 8-15) at least twelve words before it. A flag-setting word less than twelve words back is not yet visible.

The production program has 311 such transfers (295 with sequencer code 5, 9 with code 0 and 7 with code 3). In 176 the nearest flag-setting word is exactly twelve back and in 43 it is further. In 85 a closer one exists. In 71 of those every closer word is read, under the same rule, by a later transfer. In the other 14 no later transfer in address order reads the closer word. In eleven of them the word is read after a jump. In the `mshortcircuit.S` merges (0x9881 and eight more) a transfer at `mMerge8_16C` 0x9a33 or `mMerge4_8C` 0x9a79 reads it. For `mpixout.S` 0xa3fd and 0xa4ca the reader is at `upixout.s` 0x2838 or 0x2869. In the other three the closer word's flags are never read on any path, so a flag-setting word does not imply a reader:

- `ueval2D.s` 0x019b, a conditional call (condition group 27, `cc` 3) to `uEvalSaveState1D`, reads 0x018f, twelve back: the AND of engine words 0x1ec and 0x1ed, and `uEvalSaveState1D` itself rewrites word 0x1ec (`evalmisc.s` 0x0984), so the call saves the one-dimensional evaluator state when that state test is nonzero. The closer word 0x0190 (a move of command operand 0) is the last flag-setting word before 0x0209. The only transfer in its window 0x019c-0x0214 is the end-of-command wait at 0x01fc (`cc` 0x11, an address-unit condition). The called path (`uEvalSaveState1D`, then `mWramToEram` in `umemove.s`) tests only `cc` 0x11.
- `ueval2D.s` 0x0364, a conditional end of command (group 31, `cc` 3), reads the move of command operand 0 at 0x0358, twelve back. The closer AND at 0x0359 is followed by the next flag-setting word at 0x0368. The only transfer in its window 0x0365-0x0373 is the unconditional end at 0x0372.
- `ulight.s` 0x0df5, the `cc` 1 transfer at the head of `lPT1`, reads the shift at 0x0de7 on the first pass. On later passes, with the four delay slots of the back edge at 0x0e01, it reads the shift at 0x0df9, thirteen words back in execution order. The closer shift at 0x0dee writes register 0xf, which 0x0df9 shifts again and whose flags replace it before any test. The back edge's delay slot 0x0e03 repeats the 0x0dee operation for the next pass.

Seven transfers have no flag-setting word within 60 words. Four of them are the jump targets just named, and a fifth, `mTexGenSph` 0xcd59, is reached from 0xcae7. The other two, `uscreen2.s` 0x1188 and 0x11fd, sit in modules that are entered as successors, so their flags come from an earlier module. No transfer needs a flag-setting word fewer than twelve words back.

The line table settles the distance. Where a flag-setting word and the transfer that tests it share one source line, they are twelve words apart in 38 cases, never 8-11 or 14-16, and once 13 (0xcae7, `texgen.S` line 731, the first of a chain of six whose other five are twelve apart). 21 of the 38 have another flag-setting word at eleven or thirteen words. That word belongs to the neighbouring test in a chain: each transfer reads its own compare, and a delay of eleven or thirteen would read the neighbour's instead. The chains are `texgen.S` 0xcae8-0xcaed and 0xcb07-0xcb0c, `glmodes.S` 0xf2dc-0xf2de, `refplane.S` 0x5a67-0x5a6b and `polymode.S` 0xdc21-0xdc22. In the diagnostic program all 56 such transfers whose flags come from a flag-setting word sit at least twelve words after it (37 at exactly twelve). The 24 branch tests of `ge_inst.s` are all taken (none returns 0xdeadbeef, above), so each one read the flags of the operation it was written for.

Exceptions, where the delay differs or does not apply:

- **Address-unit conditions** (`cc` 0x10-0x15, flags from `r222`) arrive after two words. Of 735 transfers with a condition above 15, the same-line address-unit word is two words back in 19, in the transfer's own word in 15, three back in 2 and thirteen back in 2. The diagnostic tests agree: `enable_ne` branches two words after its decrement (0x1209 to 0x120b).
- **Conditional stores and moves** (`r198` predicates, `r213` = 2) are not transfers. Their nearest unit-1 flag-setting word is most often two words back (35 of 124 with `r198` = 1). **Inferred:** predicates read the flags at an earlier stage than the sequencer. Their delay is **unknown**, since no single distance fits all of them.
- **Double-precision operations** (codes 0x20-0x3f) take two words, so their results are forwarded later than the four words of [ge_isa.md](ge_isa.md#operand-ports-and-result-forwarding). Whether their flags are later too is **unknown**.

### The fourth flag condition

True after 0x6c8 and after unit-2 0x2f in the test, false after adds and multiplies; its inverse (`cc` 7 and 0xf) is true after the add and the multiply of the test. Production never branches on it (`cc` 6, 7, 0xe and 0xf do not occur). What it records is **unknown**: 0x6c8 with operands 0x00005a5a and 0x5a5a5a5a sets it, and unit-2 0x2f returns its second operand in the [operation table](#operation-table), but a move of the second operand, a compare that keeps the larger and a property of the result all fit these two cases. A read of the engine netlists for the flag logic, or of a production word whose flags are tested, would settle it.

## Settling the ties

The engine test leaves five pairs tied, because its operands give the same word for each candidate: 0x50 (AND or NOR), 0x54 and 0x56 (OR, XOR or NAND), 0x66 and 0x68 (minimum and maximum, or moves of the first and second operand), and unit 2's 0x2f and 0x3f (move of the second operand, or minimum). No shipped program carries an expected result that separates them, so the readings below rest on what production handlers need the operation to do. Routes tried, none of which carries a separating result:

- `irsaudit` 6.5.30m exports one expected-result array, `expected_token`. The 6.5 base release (June 1998) ships a different `irsaudit` build but byte-identical `ge.hex`, `ge.u`, `ge_diag_init.*` and `geif.u` in `usr/diags/IR/ucode/`, so no older `ge_inst.s` with other operands exists on the media read.
- The diagnostic program's other sources: 0x6d0, 0x6d4 and 0x6d6 occur only in `debug.S` and `eram.S`, and 0x6e6, 0x6e8, 0x2ff and 0x3ff only in `ge_inst.s`. `eram.S` builds each memory pattern with the same code on its write and its check pass and compares with the subtract 0x6c2, so any bitwise reading passes; `debug.S` uses 0x6d0 and 0x6d6 on status words (masks 0x2, 0x4, 0x100) with no result returned to the host. `TEST_ge_eram` only gathers the engine's mismatch records.
- The other engine tests in `irsaudit`: `ge_hist_stress_test` and `ge_mul_test` start their program, wait for the output DMA (`wait_for_odma`) and print on failure, with no expected-result array; `ge12_multige_test` and `ge12_splitge_test` drive the engines' scan chain (`jt_select_chain`, `jt_send_data`, `jt_unpack_vector`) and run no engine instructions.
- A search of the mailing-list archives for published `irsaudit` output could not be run: the archive service refused the connection twice (2026-10-29).

**0x66 minimum and 0x68 maximum: inferred, by function.** `mmo_Minmax` (minmax.s, 0x1472-0x1486, loop `mainloop_mm`) is the module the ARM adds to the pixel path for `HP_MINMAX` (`AddMinMax`, `U_uMinMax`); `HP_GETMINMAX` reads its result back. Its loop body is 36 pairs of words: for each input word (A = 0x10, D = k), 0x6e6 writes even register 2k with second operand 2k, and 0x6e8 writes odd register 2k+1 with second operand 2k+1. Each register is an accumulator updated from the same input. If 0x6e6 and 0x6e8 were the moves the test also allows (0x6e6 returning its first operand, the input; 0x6e8 its second, the accumulator), the even registers would end at the last pixel and the odd ones would never change, and `glGetMinmax` could not return a minimum or a maximum. Only minimum and maximum make the module work; the test fixes which is which (0x66 returned the smaller). `mgeb_DepthRange`'s clamp of zNear and zFar fits the same reading.

**0x56 XOR and 0x54 OR: inferred, by function.** In `mgeb_InitFogGlobal` (fog.S lines 2835-2862, 0x6cff-0x6d2a) operand words are combined with small constants (4, 5, 6, 7) by 0x6d6, the results are folded together by 0x6d4 in a word that sets the flags (`r220`), and conditional moves (`cc` 0x111) follow. Production code elsewhere applies 0x6d6 to GL enumerants (0x801, 0x8199) before a zero test. A zero result must therefore be reachable when an operand equals the constant. Of OR, XOR and NAND only XOR gives zero for equal non-zero operands, and of the remaining pair only OR keeps a fold of several such results zero exactly when every one is zero. So 0x56 is XOR and 0x54 is OR; the alternatives leave those branches unreachable.

**0x50 AND: inferred, by intent.** Production code applies 0x6d0 to single-bit masks (0x2, 0x4, 0x8, 0x10) before a zero test and to field-clearing masks before a store (for example `entry.S` line 759, 0xb427: 0xfe3fffff, result written back to engine memory). NOR with a single-bit mask is zero only when every other bit of the operand is set, and NOR with 0xfe3fffff discards every bit outside 22-24; AND is the only reading under which these handlers test a bit or clear a field. Unlike the two cases above, no handler's result is checked by the host, so this stays an inference from intent.

**Unit-2 0x2f and 0x3f: unknown.** Production uses 0x2ff 50 times (`LUT.s`, `ueval1D.s`, `ueval2D.s`, `matrix.S`) and 0x3ff never. In 48 of the 50 the first-operand field is 0 and the word stores the second operand's register (`r213` = 2 or 3), which fits a move of the second operand, but the unit-2 move of the first operand (0x27f) also mostly carries a zero first field, so the field value does not separate a move from a minimum against register 0. Unknown: no shipped software or published source separates them; routes as listed above.

**0x42's 0x80000000: signed saturating subtract or the sign bit of a wider difference, unknown.** Both give 0x80000000 for these operands, and production uses 0x6c2 only as a compare whose zero result is tested, which both readings satisfy. No expected word tests the subtract past its limit, so nothing separates them. Routes tried for that: `expected_token`, which has no overflowing operand pair, and the memory tests of the diagnostic, whose 0x6c2 words compare a memory word with a register for equality only.

## Input and output FIFO operations

**Output: established** above for the diagnostic program. Its output word is a move stored through address register B = 9, 10 or 11 with `r213` = 3, and it reaches host memory through the engine's output DMA in the order issued.

**Production words of the same form stay in the engine: inferred.** B in such a word names an address register and E the offset, not a port ([ge_isa.md](ge_isa.md#fields)). The diagnostic program aims registers 9, 0xa and 0xb at 0xffff0000, 0xffff0000 and 0xffff0006 before its tests (`ge_inst.s` lines 58-60, 0x02a2-0x02aa of `usr/diags/IR/ucode/ge.u`, 6.5.30m, form-14 words with `r219` = 3 and G = 9, 0xa, 0xb), an address range the engine's 12-bit data-memory buses cannot reach; that is what sends its stores out. No production word loads a value of that form into any address register: the 27 production loads of registers 9-0xb carry engine addresses such as 0x1385, 0x17f5 and 0x73bd. Production reads the same registers back as sources (A = 9 in 405 words, 0xa in 394, 0xb in 623), and `mMatrixTransposeWW` swaps six pairs of words in place through register 0xb (the 4 x 4 transpose described in [ge_isa.md](ge_isa.md#fields)). So whether a store leaves the engine depends on the address in the register, not on the word's form; none of the 211 production words of the diagnostic's output form is an output.

## Control-memory addresses in immediates

**Established** (counted over the production listings; form 5 with `r95` = 0x13, and form 14 with C = 0x1e and `r95` = 0x13). The 10-bit immediate of these words is an address in the space the ARM fills with `WriteCram` (`arm1.u` 6.5.30m: `U_uF2I` writes 0x1ba, other parameter writers 0x129, 0x161, 0x166, 0x1b0 and 0x1c4). With B = 0x1e and `r213` = 3 the word stores to that address; with C = 0x1e it reads from it. The bus-output addresses 0x1f4-0x1f8 are in the same space.

- **0x161-0x169 are read, not stored.** The program reads them 196 times (form 5, C = 0x1e) and never stores to them. `colortable.S` line 108 (0x4212) reads 0x161 into a staging word. **Inferred:** they are the ARM's pixel-path parameter words, written by `WriteCram` at 0x161 and 0x166 ([arm1_firmware.md](arm1_firmware.md)).
- **0xca-0xce, 0xd3, 0xd5, 0xd6, 0xd8 and 0xd9 are stored and never read back by an immediate-addressed read; 0xc9 and 0xd2 are read once each (`mDrawLinList`, `mmo_DrawMSPntPrim`) against 44 and 29 stores.** The writers are the clear, line and point drawing paths: `mgesi_ClearVertex` stores four operand words scaled by a multiply to 0xc9-0xcc (D = 5-8), two converted by integer-to-float to 0xcd and 0xce (D = 1, 2) and one more to 0xd5, then sends one raster-bus word to 0x1f4 (clear.S lines 680-705, 0x90b2-0x90c3); `mDrawLinPrim`, `mDrawLinList` and `mmo_DrawMSLinPrim` store the same set per line, and the point and stipple paths store 0xd2, 0xd3 and 0xd9. **Inferred:** like 0x1f4-0x1f8, these are words a reader outside the instruction stream picks up, most likely the raster-side vertex and colour inputs, since the program writes them once per primitive and almost never reads them. Which raster input each address feeds is the low 32 bits of the product, and how signed operands behave, is **unknown**: every operand in these writers; routes tried: every immediate-addressed read in the production listings (none of these addresses), the ARM's `WriteCram` calls (none of them), and the raster register tables of [docs/rm.md](../docs/rm.md) (which index the raster bus, not engine control memory).
- **0xc5-0xc8, 0xcf, 0xd0, 0xd1 and 0xd4 are read by the drawing modules and written by almost nothing in the program.** 0xc7 and 0xc8 are read by the fog code (`mgeb_FogEnable`, `mSetFogOffset`, `mLoadFogTable` and two more); 0xc5, 0xc6, 0xcf, 0xd0, 0xd1 and 0xd4 (29 to 42 reads each) by the clear, line, point and multisample-point paths (`mgesi_ClearColor`, `mmo_DrawLinPrim`, `DrawMSTablePnt` and others), with only `mmo_DrawTriPrimPhong` storing to 0xcf and 0xd0. **Inferred:** state that another command sets before the primitives run, through a store this decode does not show as an immediate (an address register, or a copy routine such as `mWramToCram`).



**Input: established by word count, inferred as an addressing mode.** A handler reads word k of its command's operands as source A = 0x1f with D = k. Nothing stages the operands into registers first: the words are read where they arrived. Counted over the production listings, the D values each handler uses with A = 0x1f match the operand counts the host sends:

| Handler | D used with A = 0x1f | Words sent (GE.h, from the ARM handler or the token map) |
|---|---|---|
| `mgeb_LoadMatrix_Modelview` (and `_Projection`, `_Texture`, `_Color`) | 0-15 | `LOADMATRIXF`: 16 |
| `mgeb_Scale_Modelview` (and the other three) | 0-2 | `SCALEF`: 3 |
| `mgeb_SetCurrentRaster` | 0-14 | `SET_CURRENT_RASTER`: 15 |
| `mgeb_DepthRange` | 0-1 | the two clamped values |
| `mgeb_CullFace`, `mgeb_FrontFace`, `mgeb_MatrixMode` | 0 | one enumerant (port 0x478, [arm1_firmware.md](arm1_firmware.md)) |
| `mgesi_TbusRegWrite` | 0-1 | `tbus_regwrite(reg, value)`: reg at port 0x474, value at 0x840 |
| `mgesi_BshRegisterWrite` | 0-2 | the ARM's four-store raster write: select, address and value words ([docs/rm.md](../docs/rm.md#the-register-write-word)) |

In `mgesi_TbusRegWrite` the first word (D = 0, the register) goes to the bus-output address 0x1f7 and the second (D = 1, the value) to 0x1f5; in `mgesi_BshRegisterWrite` D = 0 goes to 0x1f5 after the constant 0x70000 at 0x1f8, then D = 1 to 0x1f8 and D = 2 to 0x1f5. So the ARM's operand ports (0x470-0x47c with tag 1, 0x4f0-0x4fc with tag 3, data port 0x840) only fill the command's word sequence in order; the port address carries the engine select and tag, not the word offset. D is 6 bits wide, the width of the distributor's `hq_off[6]` input to each engine ([ge_isa.md](ge_isa.md)), so **inferred:** a command delivers at most 64 words that the engine addresses by offset. Handlers that read D beyond the command's own words (`mgeb_LiClrMtrl*` reading D = 0x27, `mgeb_RestoreNormal` D = 8-0xa) are **inferred** to read the vertex record the distributor assembles at the offsets of [ged.md](ged.md#the-token-map-entry-is-the-distributors-control-word) rather than command operands.

The input FIFO special registers (0x00-0x02 in [GE.h](../GE.h)) are not operand words: production code writes them through address register 0x1c at start-up (`HereWeGo`, 0x0017-0x001b) and in the context code (`mgeb_ContextDeactReconfigureFifo`, `mgeb_ContextLoadRegs`), and reads 0x01 and 0x02 only to save a context ([ge_isa.md](ge_isa.md#how-code-reaches-the-special-registers)). How the engine advances its input pointer at the end of a command, and whether the 0x1f source also covers the context save's FIFO image (`ctx_load.S`, `ctx_deact.S`), is the low 32 bits of the product, and how signed operands behave, is **unknown**: every operand in the handlers above. Routes tried: the production listings (every A = 0x1f use, tabulated above), the ARM's operand ports and kpm's `HA_GED_CTRL` address layout, the diagnostic program `ge_inst.s` (reads no command input).
