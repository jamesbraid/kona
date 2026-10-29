# Operation codes of the geometry-engine program

[ge_isa.md](ge_isa.md) maps every field of the 72-bit instruction word W. This page identifies the operations. It uses two kinds of evidence: handlers whose job is known from the ARM side ([arm1_firmware.md](arm1_firmware.md)), and the IR diagnostic's engine instruction test, whose expected results the diagnostic host program carries word for word. Facts are labelled **established** (read or counted from `ge.hex`, `ge.u`, `ge_symbols` and `irsaudit`, IRIX 6.5.30m), **inferred** (with the reasoning) or **unknown**. [scripts/ge_ops.py](../scripts/ge_ops.py) writes [ge_optuples.tsv](ge_optuples.tsv), [ge_opdeps.tsv](ge_opdeps.tsv) and [ge_idioms.tsv](ge_idioms.tsv); [scripts/ge_inst_results.py](../scripts/ge_inst_results.py) writes [ge_inst_results.tsv](ge_inst_results.tsv).

**Result in short.** The 11-bit decoded group `M` (R121-111) is the operation id. The engine has two arithmetic units that one word can drive at once: unit 1 takes its 7-bit operation in M[6:0] (M = 0x680 | op) and writes register field Q; unit 2 takes its 7-bit operation in M[10:4] (M = (op << 4) | 0x7f) and writes register field P. A third group, r110, drives the reciprocal and reciprocal-square-root seeds. The diagnostic test fixes the result of every operation it exercises against the expected word: integer add, saturating subtract, the bitwise group, single-precision add and subtract, single- and double-precision multiply, double add and subtract, integer-to-float conversion, a clamp at zero, the two Newton-Raphson step operations and the two seeds ([table below](#operation-table)). It also fixes the output instruction (one register word to the host) and gives one taken case for each of 16 branch conditions.

## Reading a handler in source order

**Established.** The line table of `ge.u` gives each instruction a source file and line. Address order is the scheduler's (software-pipelined, with constant loads hoisted ahead of their users); line order is the programmer's. `mgeb_CullFace` read by line is: start word (line 546), three operations on register 0x1d (548-550), the compare of the operand with 0x405 (555-556), conditional stores of the small constants 0x70 and 3 (552, 563, 569, 570, 579), a compare with 0x40000000 (567-575), the end-of-command transfer (553) and a closing word (581).

**Established** (counts over the 320 handler labels in `ge_symbols`).

- **Start words.** 78 handlers begin with `7039c007c88cf80000` and 76 with `77fa41d7c881d00000` (immediate bits masked). `mges_NullCommand`, the handler that does nothing, consists of exactly the skeleton: `7039c007c88cf80000` (line 96), `77fa41d7c881d00000` (98), two loads of 0 into register 0x1d (99, 100), `77fa41a7c881f80000` (102) and the end transfer (103). Every handler in this page starts with those words, so they are command framing, not arithmetic. **Inferred:** the first reads the command in; the third zeroes the register the command's operands are staged through. Their exact action is **unknown**.
- **End of command.** 215 handlers hold a relative transfer with immediate 0 and condition code 0x11 (`xfer4.rel c31 cc=11` in the listings); 31 hold an absolute jump to address 0 (`HereWeGo`); 75 hold neither and jump into shared code. The first kind is on the last or next-to-last source line in 161 of the 215. This corrects [ge_isa.md](ge_isa.md), which gave the jump to address 0 as the way handlers end: it is the way for one handler in ten.
- **The transfer with immediate 0.** Of 296 such transfers (code 4, relative bit set), the instruction at address + 5 exists in 283, against 296 of 296 at address + 0 (which is the instruction itself, so no test). **Inferred:** the transfer takes effect after four delay slots, and with immediate 0 it continues at the instruction after them; it is a wait on condition 0x11 and not a jump. For the conditional transfers (code 5) with a nonzero immediate the target is relative to the instruction itself: 216 of 216 land on an instruction at base 0, 144 of 216 at base 5. The meaning of cc 0x11 is **unknown**; it is the condition in 300 of the 320 transfers whose target is their own address.

## The operation field

**Established** ([ge_opdeps.tsv](ge_opdeps.tsv), forward selection of W bits that determine `M` over every word of a form):

| Form | W bits that determine M |
|---|---|
| 5 | W22-16 (bit 20 not needed) |
| 12 | W16-13, W30, W51 |
| 13 | W22-16, W29, W8 |
| 15 | W61 only |
| 14 | none: M is constant |

In form 13, **established** over all 10996 words: with W29 set (7934 words) M = 0x680 | W[22:16], so W[22:16] = 0x4a gives 0x6ca, 0x60 gives 0x6e0, 0x62 gives 0x6e2, 0x42 gives 0x6c2 and 0x50 gives 0x6d0; with W29 clear (3062 words) M = (W[22:16] << 4) | 0x7f, which gives 0x47f, 0x57f, 0x6ff and so on. **Inferred:** W29 chooses between reading W[22:16] as an operation and reading it as another field that lands in M[10:4]; the low bits 0x7f are the "no operation" pattern. In form 5 the same M values come from different W[22:16] codes (0x6ca from 0x44, 0x6c2 from 0x46, 0x6e2 from 0x4e). So M is a canonical operation id that the assembler produced from a form-specific code; **inferred:** M[6:0] is the operation, 64 codes at most (0x40-0x7f).

The other decoded groups depend on the low bits: `r148` (R148-139) on W[13:0] and W29, `r110` (R110-100) on a similar set, `r99` (R99-96) only on W55-54 and one more bit. [ge_optuples.tsv](ge_optuples.tsv) lists the 400 most common tuples (form, M, r110, r99, r148, r128) with counts, the most common first operand A and the handlers that use each most. `r128` is not fully explained by any W bit set this method found in form 13 (3511 words still disagree), which fits it being a function of wired operand fields as well.


## Operations identified from production handlers

**Move: M = 0x6ca.** **Established:** the most common operation overall (2317 words in form 13, 1619 in form 5), and the only operation in `mgesi_TbusRegWrite`, a handler that does nothing but forward two operand words to the raster-board register bus ([arm1_firmware.md](arm1_firmware.md)); `mgesi_FlushRM` and `mgesi_PassThrough` use it with one other operation each. The diagnostic test below confirms it: 0x6ca returns its first operand unchanged.

**Equality compare against an enumerant: M = 0x6c2 with r110 = 0x7bd.** **Established:** 34 instructions in the whole program, 32 with first operand A = 0x18; in 31 a form-15 load into C = 0x1e precedes it by up to three words, and the loaded constants are GL enumerants: 0x405 (GL_BACK, in `mgeb_CullFace`), 0x900 (GL_CW, in `mgeb_FrontFace`), 0x1701 (GL_PROJECTION, in `mgeb_MatrixMode`), 0x1b01 and 0x1b02 (GL_LINE and GL_FILL, twice each) and several 0x8xxx values ([ge_idioms.tsv](ge_idioms.tsv)). The ARM side sends each of those three handlers one operand, the GL enumerant, so **inferred:** register 0x18 holds the first operand word of a command. The diagnostic test shows 0x6c2 is the integer subtract, so the compare is a subtract whose zero result is tested. The conditional stores around it carry predicate field `r211` = 3 or 2 (true or false), which is **inferred** to select on that result.

**`mgeb_DepthRange`.** **Established:** it runs 0x6e8 and then 0x6e6 on each of its two inputs, then 0x6e2, 0x6e0 and unit-2 multiplies against the constants 0x49000000 (2^19) and 0x49800000 (2^20). **Inferred:** with the table below this reads as GL's clamp of zNear and zFar to [0, 1] (maximum, then minimum), then (far - near) and (far + near) scaled by powers of two for the 2^20 depth range of [docs/rm.md](../docs/rm.md).

## The diagnostic program's instruction test

The IR diagnostics ship a second geometry-engine program, `usr/diags/IR/ucode/ge.hex` and `ge.u` (IRIX 6.5.30m, built from a 1998 diagnostic tree). Its line table names its sources, among them `ge_inst.s`, `fib.S`, `mul.S`, `mul_ge.S` and `mmath.S`. [scripts/ge_disasm.py](../scripts/ge_disasm.py) runs on it unchanged when given an empty symbol file, rederiving the wiring from that program's own two encodings. The listings are not committed.

**Established (the expected results).** `TEST_ge_instTest` in `irsaudit` (0x1006f460) loads the diagnostic program, starts it, waits for the engine's output DMA (`wait_for_odma`) and compares the first 172 returned words one by one with the array `expected_token` (dynamic symbol, 0x102001a8, 688 bytes), printing a debug line for each mismatch. `ge_inst.s` is straight-line code: it contains exactly 172 output instructions, none inside a loop, so the n-th output instruction in address order produces `expected_token[n]`. [ge_inst_results.tsv](ge_inst_results.tsv) pairs them. The output instruction is a form-12 (or form-10) word with `r213` = 3 and B = 9, 10 or 11, using either M = 0x6ca or the unit-2 move M = 0x27f with `r95` = 0x20; `r148`[9:5] is the register it sends. **Established** by every case below: the register it names is the one the preceding operation wrote.

The operands come from the test's own code: form-15 words load 32-bit constants into a staging file (B selects the entry), and M = 0x6ca words copy them into the arithmetic registers (A names the staging entry, Q the register). For a two-operand operation `r148`[9:5] names the first register and `r148`[4:0] the second. The tests below use registers 0 and 1 (A, B) or the pairs 0:1 and 2:3 (double precision), and send the result register.

### Operation table

Each row is one operation word in `ge_inst.s`, its operands and the word `irsaudit` expects back. "Established" means the expected word fixes the operation among the plain candidates (add, subtract, multiply, the bitwise operations, moves, conversions); where it does not, the row says so.

| Line | Unit, code (M) | Operands | Expected | Reading |
|---|---|---|---|---|
| 1096, 1122, 1143 | 1, 0x40 (0x6c0) | 2 and 2, then +2, +2 | 4, 6, 8 (index 48-50) | integer add, **established** (2 | 2 and 2 ^ 2 would give 2 and 0) |
| 3601 | 1, 0x40 (0x6c0) | A = 0xaaaaaaaa, B = 0x55555555 | 0xffffffff (136) | consistent with add |
| 3617 | 1, 0x50 (0x6d0) | same | 0x00000000 (137) | AND or NOR; **inferred** AND: production code applies it with single-bit masks (0x2, 0x4, 0x8, 0x10) and field-clearing masks (0xfe3fffff) |
| 3632 | 1, 0x58 (0x6d8), one operand | A = 0xaaaaaaaa | 0x55555555 (138) | bitwise NOT, **established** for one operand |
| 3648 | 1, 0x54 (0x6d4) | A, B as above | 0xffffffff (139) | OR, XOR or NAND; **inferred** OR: production code applies it with single-bit constants (0x1, 0x4, 0x40000000) |
| 3663 | 1, 0x42 (0x6c2) | A = 0xaaaaaaaa, B = 0x55555555 | 0x80000000 (140) | a subtract that does not wrap: **established** against wrapping A - B (0x55555555) and B - A (0xaaaaaaab); **inferred** signed A - B saturated at the 32-bit limit, which the production compare idiom also fits; the sign bit of a wider result would also give 0x80000000 |
| 3678 | 1, 0x56 (0x6d6) | A, B | 0xffffffff (141) | OR, XOR or NAND; **inferred** XOR as the remaining one, production code applies it to GL enumerants (0x801, 0x8199), which fits an equality test |
| 3694 | 1, 0x4a (0x6ca), one operand | A = 0xaaaaaaaa | 0xaaaaaaaa (142) | move of the first operand, **established** |
| 3709 | 1, 0x4b (0x6cb) | A, B | 0x55555555 (143) | move of the second operand, **established** with the register walk at lines 3326-3448 (index 120-127), where 0x6cb with second operand 0, 1, 2, 4, 8, 0x10, 0x1f, 0x15 sends each register's loaded pattern |
| 3729 | 1, 0x60 (0x6e0) | A = 1024.1024 (0x44800347), B = 2048.2048 (0x45000347) | 3072.307 (0x454004ea, 144) | single-precision add, **established** (the only candidate giving 3A) |
| 3744 | 1, 0x66 (0x6e6) | same | 0x44800347 = A (145) | returns the smaller and the first operand; **inferred** minimum from `mgeb_DepthRange` |
| 3759 | 1, 0x68 (0x6e8) | same | 0x45000347 = B (146) | returns the larger and the second operand; **inferred** maximum, as above |
| 3774 | 1, 0x62 (0x6e2) | first = B, second = A (`r148` = 0x20) | 0x44800347 (147) | single-precision subtract B - A, **established** (B = 2A exactly) |
| 3792 | 1, 0x73 (0x6f3), one operand | 0x400 | 1024.0 (0x44800000, 148) | integer to single-precision float, **established** |
| 3829-3830 | 1, 0x20 (0x6a0), two words | 0x400a5a5a5a5a5a5a (3.294...), 0x4005a5a5a5a5a5a5 (2.706...) as doubles | 0x40180000 00000000 = 6.0 (149-150) | double-precision add, **established**; the second word names the low halves |
| 3858-3859 | 1, 0x22 (0x6a2), two words | same | 0x3fe2d2d2 d2d2d2d4 (151-152) | double-precision subtract, **established** (the exact IEEE difference) |
| 3895, 3913, 3931 | 1, 0x7c (0x6fc), one operand | 0x0478002b, 0xce1ef209 (-6.7e8), 0x3eaa7efa (0.333) | the same, 0, the same (153-155) | clamp below at zero, **established** for these inputs; an upper clamp at 1.0 is not tested (both positive inputs are below 1) |
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

**Form 11 carries both units.** Lines 3512-3528 use M = 0x440 with two destinations (P = 3, Q = 2; then 5, 4; 7, 6; 0x12, 0x11). Starting from 10 and 10.0, the even registers end at 20, 30, 40, 50 and the odd ones at 100.0, 1000.0, 1e4, 1e5 (index 128-135). **Inferred:** one word does an integer add of 10 and a single-precision multiply by 10.0 together; how form 11 encodes the two operations in one 11-bit M is **unknown**.

**Not identified.** 0x6c8 appears once, in the branch test (line 1570, operands 0x00005a5a and 0x5a5a5a5a), and only its effect on a branch is observed.

## Branch conditions and the flag register

Lines 1210-2195 test conditional transfers (sequencer code 3 with condition code `cc`, see [ge_isa.md](ge_isa.md)). Each case loads a marker into register 0, sets flags with one operation (`r220` = 1 for unit 1, `r221` = 1 for unit 2), branches with one `cc` to the output word, and on the fall-through path overwrites register 0 with 0xdeadbeef. **Established:** none of the 24 expected words (index 52-75) is 0xdeadbeef, so every branch is taken. Each case therefore shows one input for which its condition is true:

| cc | Flags from | Result that made it true |
|---|---|---|
| 0 | integer add | 0 with carry out; and 0xa6000000 |
| 1 | integer add | 0x5a64b4b4; and 0x5a000000 with carry out |
| 2 | integer subtract | 0 |
| 3 | integer add | 0xa64b4b4b |
| 4 | integer add | 0xa6000000 |
| 5 | integer add | 0 with carry out |
| 6 | operation 0x6c8 | not known |
| 7 | integer add | 0x5a64b4b4 |
| 8 | float multiply | -1.0; and 0.0 |
| 9 | float multiply | 1.0 |
| 0xa | float multiply | 0.0 |
| 0xb | float multiply | -1.0 (the flags here come from the last flag-setting word, as this multiply has no `r221`) |
| 0xc | float multiply | -1.0 |
| 0xd | float multiply | 0.0 |
| 0xe | unit-2 operation 0x2f | not known |
| 0xf | float multiply | 3.0 |

**Established** (index 8-15, the flag register read as source A = 0x1b): after a float multiply of 2356.2 by the constant 0.0 the register reads 0xcc; after a float multiply of -2356.2 by 1.0, 0xac; after an integer add giving 0 with carry 0xac; after an integer add giving 0xfffff000 0xaa. A word without `r220` or `r221` leaves the value unchanged (index 9, 11, 13, 15). That each multiply's second operand is the constant stored just before it is **inferred** from the code order.

**Inferred:** the low four bits are the integer flags and the high four the float flags, each with bit 3 = result <= 0, bit 2 = zero, bit 1 = negative, bit 0 = a fourth condition clear in every observed case. `cc` 0-7 test the integer nibble and 8-15 the float nibble; `cc` bits 2-1 pick the condition (0 <= 0, 1 zero, 2 negative, 3 the fourth) and bit 0 inverts it. All 14 cases with a known operation agree. The fourth condition (true after 0x6c8 and after 0x2f, false after an add or multiply that did not overflow) is **inferred** to be signed overflow, on that alone. The carry out is not a condition the test names.

**Open question** ([docs/open-questions.md](../docs/open-questions.md)): each condition on its false side, the fourth condition, and the three ties in the table above (0x6d0 against NOR, 0x6d4 and 0x6d6 against each other and NAND, 0x6e6 and 0x6e8 against moves, 0x2f and 0x3f against minimum). Static routes tried for the ties, none of which separates them:

- `irsaudit` 6.5.30m exports one expected-result array, `expected_token`; its operands give equal results for each tied pair.
- In the diagnostic engine program (listed per source with `scripts/ge_disasm.py`), 0x6d0, 0x6d4 and 0x6d6 occur only in `debug.S` and `eram.S`, and 0x6e6, 0x6e8, 0x2ff and 0x3ff only in `ge_inst.s`. `eram.S` builds and checks its memory patterns on the engine; `TEST_ge_eram` (`irsaudit` 0x1006c9b0-0x1006ccdc) only gathers the mismatch records the engine reports, ending at a 0xbabebabe marker, so a NOR in place of an AND would pass the same way.
- Production use supports AND, OR, XOR, maximum and minimum by intent only: single-bit masks tested for zero, field-clearing masks before an OR, XOR against GL enumerants before a zero test, and `mgeb_DepthRange`'s clamp.


## Input and output FIFO operations

**Output: established** above. The output word is a move into port B = 9, 10 or 11 with `r213` = 3; it reaches host memory through the engine's output DMA in the order issued.

**Input: unknown.** The special-register numbers for the input FIFO pointers (0x00-0x02, [GE.h](../GE.h)) appear as no operand field this analysis could single out. Two leads: the operand ports the ARM writes (r9 + 0x470-0x47c, [arm1_firmware.md](arm1_firmware.md)) look like word offsets 28-31 of the engine's input port, and register numbers 0x1d, 0x1e and 0x1f occur as the staging registers in every handler (C = 0x1d in the start words, C = 0x1e for constants, 0x1f for "none"). The diagnostic test reads no command input: its operands are constants. **open question** (docs/open-questions.md): an engine trace of `mgesi_TbusRegWrite` with two known operand words, giving which staging register each word lands in.
