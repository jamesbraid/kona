# Operation codes of the geometry-engine program: what the known handlers show

[ge_isa.md](ge_isa.md) maps every field of the 72-bit instruction word W and says the arithmetic operation codes are open. This page narrows them with three handlers whose job is known from the ARM side ([arm1_firmware.md](arm1_firmware.md)): `mgeb_CullFace` (slot 3), `mgeb_FrontFace` (15) and `mgeb_MatrixMode` (51), each sent exactly one GL enumerant, plus the shorter `mgesi_TbusRegWrite`, `mges_NullCommand` and `mgesi_FlushRM`. Facts are labelled **established** (counted from `ge.hex`, `ge.u` and `ge_symbols`, IRIX 6.5.30m), **inferred** (with the reasoning) or **unknown**. [scripts/ge_ops.py](../scripts/ge_ops.py) writes the tables cited: [ge_optuples.tsv](ge_optuples.tsv), [ge_opdeps.tsv](ge_opdeps.tsv) and [ge_idioms.tsv](ge_idioms.tsv).

**Result in short.** The 11-bit decoded group `M` (R121-111) is the engine's operation id; its low seven bits come from a seven-bit field of W that sits in a different place in each form. Two operations are identified with evidence (a move, and an equality compare against a GL enumerant). The floating-point operation codes and the input and output FIFO operations are not identified.

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

## Operations identified

**Move: M = 0x6ca.** **Established:** the most common operation overall (2317 words in form 13, 1619 in form 5), and the only operation in `mgesi_TbusRegWrite`, a handler that does nothing but forward two operand words to the raster-board register bus ([arm1_firmware.md](arm1_firmware.md)); `mgesi_FlushRM` and `mgesi_PassThrough` use it with one other operation each. **Inferred:** M = 0x6ca copies a source to a destination, with the form-5 and form-14 memory accesses (`imm` 0x1f4-0x1f7, `r95` = 0x13) being its stores. Evidence: the handler built to forward words contains no other operation.

**Equality compare against an enumerant: M = 0x6c2 with r110 = 0x7bd.** **Established:** 34 instructions in the whole program, 32 with first operand A = 0x18; in 31 a form-15 load into C = 0x1e precedes it by up to three words, and the loaded constants are GL enumerants: 0x405 (GL_BACK, in `mgeb_CullFace`), 0x900 (GL_CW, in `mgeb_FrontFace`), 0x1701 (GL_PROJECTION, in `mgeb_MatrixMode`), 0x1b01 and 0x1b02 (GL_LINE and GL_FILL, twice each) and several 0x8xxx values ([ge_idioms.tsv](ge_idioms.tsv)). The ARM side sends each of those three handlers one operand, the GL enumerant, so **inferred:** register 0x18 holds the first operand word of a command and the instruction compares it with the constant in register 0x1e. The conditional stores around it carry predicate field `r211` = 3 or 2 (true or false), which is **inferred** to select on the compare's result.

**Seen but not identified.** `mgeb_DepthRange` loads 0x49000000 (2^19) and 0x49800000 (2^20) as constants (matching the 2^20 depth scale in [docs/rm.md](../docs/rm.md)) and then runs operations 0x6e2 (twice), 0x6e0, 0x6e6 (twice) and 0x6e8 (twice). **Inferred:** these are floating-point operations (the constants are IEEE single-precision values), but no handler isolates one of them, so which is add, subtract or multiply is **unknown**.

## Input and output FIFO operations

**Unknown.** The special-register numbers for the input FIFO pointers (0x00-0x02, [GE.h](../GE.h)) appear as no operand field this analysis could single out: forms 5 and 14 carry small immediates, but their values do not separate FIFO accesses from other register accesses in the handlers above. Two leads: the operand ports the ARM writes (r9 + 0x470-0x47c, [arm1_firmware.md](arm1_firmware.md)) look like word offsets 28-31 of the engine's input port, and register numbers 0x1d, 0x1e and 0x1f occur as the staging registers in every handler (C = 0x1d in the start words, C = 0x1e for constants, 0x1f for "none"); the width match alone does not settle that the registers are the port. `mgesi_TbusRegWrite` writes only after reading two operands and uses `imm` 0x1f4-0x1f7 as destinations, which is the shortest place to look for the output side.

## The diagnostic program's instruction test

The IR diagnostics ship a second geometry-engine program, `usr/diags/IR/ucode/ge.hex` and `ge.u` (IRIX 6.5.30m, built from a 1998 diagnostic tree). Its line table names its sources, among them `ge_inst.s`, `fib.S`, `mul.S`, `mul_ge.S` and `mmath.S`. [scripts/ge_disasm.py](../scripts/ge_disasm.py) runs on it unchanged when given an empty symbol file, rederiving the wiring from that program's own two encodings. The listings are not committed. Labels as above.

**Established** (`ge_inst.s`). The instruction test applies one operation at a time, in source order: 0x6c0 (line 3601), 0x6d0 (3617), 0x6d8 (3632), 0x6d4 (3648), 0x6c2 (3663), 0x6d6 (3678), 0x6e0 (3729), 0x6e6 (3744), 0x6e8 (3759), 0x6e2 (3774), 0x6f3 (3792), 0x6a0 (3829) and 0x6a2 (3858). Each is a form-13 word with destination field Q = 2. Twelve no-ops follow it, then a form-12 word with M = 0x27f, `r95` = 0x20 and B = 9, 0xa or 0xb. The pattern repeats 48 times. The operands are not loaded anywhere in the test's own code. The diagnostic host program (`irsaudit`) checks engine results against stored CRCs (`irsaudit.*.gold.Z`), so the inputs come from the host.

**Inferred.** These 13 codes are the engine's distinct arithmetic operations, grouped by M[6:5]: 0x40-0x5f (0x6c0, 0x6c2, 0x6d0, 0x6d4, 0x6d6, 0x6d8), 0x60-0x7f (0x6e0, 0x6e2, 0x6e6, 0x6e8, 0x6f3) and 0x20-0x3f (0x6a0, 0x6a2). The reasoning: a test written to exercise instructions issues each code once. The rest of `ge_inst.s` uses a few more codes (0x6c8, 0x6cb next to the move 0x6ca, 0x6fc and 0x440), all inside the same groups, so the list is a lower bound on the operation set. The production handlers that work on IEEE constants (`mgeb_DepthRange`: 0x6e0, 0x6e2, 0x6e6, 0x6e8) use only the 0x60 group, so that group is the floating-point unit. The 0x40 group holds the equality compare already identified (0x6c2). The twelve-word gap is **inferred** to be the result latency the test waits out before storing, which bounds the pipeline depth at twelve. The word after the gap (M = 0x27f, `r95` = 0x20) is **inferred** to be the result store and is the first candidate for the output operation. It occurs 48 times in this test and 14 times in the whole production program.

**Inferred, weakly** (counts in known routines):

- `fib.S` (a Fibonacci loop) uses only 0x6c0, 0x6c2 and the move. So 0x6c0 is the integer add and 0x6c2 the subtract or compare that ends the loop.
- `mMatrixMultCCC` (production `mmatrix.S`, 0xe8a6 on) uses 0x6e0 63 times, 0x6e2 38 times, 0x460 25 times and 0x462 6 times. A 4 x 4 product needs 64 multiplies, which points at 0x6e0 as the multiply.
- Against that, the diagnostic's `mmath.S` uses 0x6e2 32 times and 0x6e0 only 9 times, so the counts do not separate multiply from add on their own. The codes 0x460 and 0x462 share M[6:0] with 0x6e0 and 0x6e2 and differ only in M[10:7], which fits the same operation with another operand mode.

**Unknown: needs capture.** The identity of each code. The smallest capture is the engines' output words for one run of the `ge_inst.s` test with known operands. That means feeding the diagnostic's input words, which are in `irsaudit`'s test setup, and recording the 48 stored results. Comparing each result with its two inputs fixes add, subtract, multiply, the compares and the conversions. An alternative is the read-back words of `GL_DEPTH_RANGE` state after `glDepthRange(0.25, 0.75)`, which pass through `mgeb_DepthRange`'s 0x6e0-0x6e8 sequence.

## What would settle it

A handler whose behaviour is known beyond the argument it takes. The firmware's callers give two more: `mgesi_StartRdata` and `mgesi_FinishRdata` (the raster-board register sequence of read-back is in [arm1_firmware.md](arm1_firmware.md)) and `mgeb_Fogf` (one float in, a table out). Their W words, read in source order next to the ARM's calls, would fix the output operation and the float multiply.
