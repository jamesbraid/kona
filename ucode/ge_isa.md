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

## The program files

Each file below has its own entry; [ge.md](ge.md) has the container layouts in full.

`ge11.u` is the production engine program in the 72-bit form the engines take. **Established:** it starts with the magic word 0x45930003, and its code at file offset 0x71 is two segments of 12-byte records, each record one word W as three big-endian 32-bit words, equal to `ge.hex` at every address. **Inferred:** it is the file a loader writes into the engines' microcode memory, because `init_ge` in `arm1.u` looks for file records tagged 0x4593, the high half of this magic, in its download loop at 0x0c003448, a loop the shipped firmware skips.

`ge.u` is the name of two different programs, both with the magic word 0x45900003 and records of 32 bytes. **Established:** usr/gfx/ucode/KONA/ge.u is the production program, the 62521 words of `ge11.u` with each W widened to a 256-bit decoded control word ([ge_wiring.tsv](ge_wiring.tsv)), plus the line table and source names the listings use; usr/diags/IR/ucode/ge.u is the diagnostic program built from `ge_inst.s` and its siblings, which `irsaudit` loads in `TEST_ge_instTest` at 0x1006f460 and checks against `expected_token` ([ge_ops.md](ge_ops.md#the-diagnostic-programs-instruction-test)).

`ge.hex` is the plain-text copy of both programs, one instruction per line as a 16-bit address and W in 18 hex digits, the 72-bit width of the engine's microcode data port `u_d`. **Established:** usr/gfx/ucode/KONA/ge.hex has 62521 lines over addresses 0x0000-0x2e3b and 0x3000-0xf5fc, the same words as `ge11.u`, and usr/diags/IR/ucode/ge.hex has 14546 lines for the diagnostic program.

`ged1b.u` is the geometry distributor's program and dispatch tables, not an engine program. **Established:** its magic is 0x45910003, its code is 931 32-bit words at byte address 0 and a 528-word table block at byte address 0x1000, and `init_ged_ucode` at 0x0c001e20 in `arm1.u` writes the program to the distributor as 1024 words through descriptor 0x48200020 before the two tables ([arm1.md](arm1.md)). **Inferred** there: the second table gives each command number the word where the distributor starts ([ged.md](ged.md)).

`ge_symbols` is the label table the listings and handler entries name code by. **Established:** it is plain text, 1100 lines of a label and a hexadecimal instruction address, starting with `HereWeGo` at address 0x00000000; every address falls inside the code of `ge.hex`, and of the 80 labels that come as an m-prefixed and a u-prefixed pair, 74 pairs share one address. The pipe never needs it, since the ARM reaches handlers through `geif.u` slots; the debugging tool `kpm` is the one shipped binary whose strings name the file (a byte search of every installed file).

`ge_diag_init.u` is a small engine program the diagnostic keeps beside its instruction-test program. **Established:** it uses the container of `ge.u` (magic 0x45900003, records of 32 bytes), its code segment at file offset 0x6e holds 283 words, and its source names are a `ge_begin.s` file and diagnostic include files. **Inferred** from its name and from the message `irsaudit` keeps at address 0x10198970 ("already loaded" with this program's hex name): the diagnostic loads it to set an engine up before a test runs.

`ge_diag_init.hex` is the text form of that same program. **Established:** 283 lines from address 0x0000 to 0x011a, one 72-bit word each in the layout of `ge.hex`, the first two zero and the third a nonzero form-14 word; `irsaudit` names this file in its strings at address 0x10198990.

## Engine facts read from KONA's own binaries

Everything in this section was read from KONA's binaries, all IRIX 6.5.30m: the pipe monitor `kpm` (`usr/gfx/KONA/bin/kpm`), the ARM firmware `arm1.u`, the diagnostic program `usr/diags/IR/ucode/ge.u` with `ge.hex`, `irsaudit`, which drives it, and the kernel `unix`. A fact is **established for KONA** only where KONA code shows it. KONA's own software calls its engine GE11: the build tree in `ge.u`'s file table is `gfx/KM/ucode/ge11/`, the ARM's engine control register is `HA_GE11_CTRL` ([arm1_firmware.md](arm1_firmware.md)), and the diagnostic program has a source named `ge11table.s`.







**Inferred: the three engine memories: a 2K-word internal working memory and an external memory (`mWramToEram`, `mEramToCram` and the rest of `umemove.s`), the ARM's `WriteCram` writes control-memory addresses below 0x200 ([Control-memory addresses in immediates](ge_ops.md#control-memory-addresses-in-immediates)), and its `WriteEram` writes engine addresses such as 0xbfc ([Immediates](#immediates)). The sizes are GE11's on IMPACT; that KONA's engine has the same is inferred from the shared name, not measured. The same document says the ERAM parts are **unknown**; a read of the engine netlists for the raster clock.




















- **Microcode load order: established for KONA.** `kpm`'s `ge11LoadUcode` (0x1001bbf0) reads `ge_kpm.hex` with the format "%x%2x%8x%8x" (address, bits 71-64, bits 63-32, bits 31-0). For each word whose address does not follow the last one it writes 0x200000 + 4 x address to distributor register 564 (0x1001bdd4), then sends three words to register 562 in the order bits 31-0, bits 63-32, bits 71-64 (0x1001bd7c-0x1001bd9c). The ARM's dormant loader in `init_ge` (`arm1.u` 0x0c00347c-0x0c0034d8) sends 0x200000 plus the file's load address and then each 12-byte `ge11.u` record as its three words in file order, which is the same low-first order ([ge.md](ge.md)). So the microcode window, word n at 0x200000 + 4n, and the low-first three-part write are what both KONA loaders use. `init_ge` also rewrites the program's first word once the load is done, sending the first file's start address and its first three words again (0x0c0034f4-0x0c003558). The size of the microcode store is **unknown**: the netlist's `u_a[18]` port gives an 18-bit address, and no KONA program goes above 0xffff.
- **Starting the engine: GO established for KONA, the latency bit unknown.** Both KONA writers store `DIAG_SEL` 0x100 and then 1 to the execution-control register ([GE.h](../GE.h), execution-control comment). `kpm`'s field table names bit 4 `GE11_EXEC_UCLAT`, but no binary read says which value means which latency.
- **Two threads and three output FIFOs: established for KONA.** `kpm`'s special-register table names per-thread pairs: `FPU_COND_A` and `FPU_COND_B` (0x41, 0x4c), `FLAG_THRD_A` and `FLAG_THRD_B` (0x42, 0x43), `SORT_THRD_A` and `SORT_THRD_B` (0x44, 0x45) ([diags/kpm/ge_special_registers.tsv](../diags/kpm/ge_special_registers.tsv)). Its register table names `OFIFO0` to `OFIFO2`, each with an A and a B status register. That W71 selects thread B stays **inferred**.
- **F = 0x3f adds: established for KONA; the 18-bit wrap is unknown.** KONA's diagnostic `areg.s` loads a pattern into each of address registers 0 to 0x1b (0x21e7-0x2253). It then adds the pattern's negative to each register with F = 0x3f (`r222` = 1, register C, the word's immediate: 0x2260 adds 0xffffefbf to register 1, which holds 0x1041) and branches to the failure exit 0x2422 on `cc` 0x11, "address-unit result not zero" (0x2263). The add must therefore give zero. None of these sums overflows 18 bits, so they do not test the wrap.
- **Address-register write latency: unknown.** No KONA routine was found that needs a particular distance between an address-register write and its first read.
- **Commands name their handler by microcode address: established for KONA.** The ARM sends `gepc[k]`, the handler address taken from `geif.u`, to the engine as the command word ([arm1.md](arm1.md)). The word that waits at the end of a command, `77f1c007c8bcf80000`, is the same on both chips: 194 times in production `ge.hex`, and in the diagnostic program at the end of its test routines, such as `geversion.s` (0x21d9).
- **Calls, returns and the eight-word shadow: established for KONA's `MemRegInit`, inferred elsewhere.** `MemRegInit` writes out the eight words by hand ([Calls, returns and the end of a command](#calls-returns-and-the-end-of-a-command)). In production `ge.u`, 192 of the 197 unconditional group-4 or group-5 returns are followed by at most eight words before the next label. The other five, at 0x28bd and 0x8afa among them, are predicated returns (`cc` 0x74) whose fall-through path continues.
- **Whether the integer add saturates: unknown.** KONA's integer-add test is the diagnostic's Fibonacci routine `fib.S` (unit-1 code 0x40 at 0x387d and 0x3883). `irsaudit`'s `TEST_ge_ext_stress` (0x1006dd58) checks its replies against pairs it generates from (2, 3), with each new pair (a + b, a + 2b), for 20 rounds (0x1006e03c-0x1006e110). The largest is 267914296, below 2^31, so no KONA test overflows the add.
- **Unit-2 code 0x0f multiplies: inferred for KONA, positive operands only.** `irsaudit`'s `ge_mul_test` (0x1006e278) writes 180 to ARM address 0x200ac0, waits for the engine's output DMA, and checks each reply pair against cubes it computes on the host: 1^3 and 2^3, then 3^3 and 4^3, up to 99^3 and 100^3 (`mult` at 0x1006e4dc-0x1006e518, loop to 100 at 0x1006e4bc). The diagnostic routine that fits is `mul.S`, which loops 100 times (immediate 0x64 at 0x37a2), has the M = 0xff words as its only multiplies (0x37ac-0x37b5, 0x381d, 0x3821) and stores pairs of results. That the test runs `mul.S` is inferred from that match, not traced through the ARM. Every operand and product is positive, so no KONA test shows how the multiply handles signed operands.
- **Special register 6 at 0xfffe0018: established by the `gevers_ucode` program, not by KONA code.** `gevers_ucode` (6.5.30m `unix`, data symbol at 0xc0000000014c63b8, a table of 12-byte words whose first 0x29 hold the program) loads address register 0xa with 0xfffe0018 (word 4) and address register 3 with the output window 0xffff0000 (word 0xe); word 0x23 moves the word at offset 0 of register 0xa out through register 3, word 0x24 sends a constant the program stored at word 8 (0x40000000), and word 0x28 then jumps to 0x27, a two-word idle loop. The only memory-mapped read in the program is the one through 0xfffe0018. 0x18 = 4 x 6, and 6 is the number kpm gives CHIP_REV. KONA's diagnostic version routine `geversion.s` (0x213e-0x21d9) loads plain 4 and 6 into address register 0x1b (0x219e, 0x21bc) and sends the words found there through the output window (0x21a5, 0x21b1, 0x21c3, 0x21ce, form 12 with `r110` = 0x6bc). Those are data-memory addresses: `ge_inst.s` reads address 4 back with the same form after storing 0xbabebabe there (0x0563, 0x0568; expected word 17). So KONA's version test returns two memory words and does not read `CHIP_REV`. No production word reaches 0xfffe0018 either ([How code reaches the special registers](#how-code-reaches-the-special-registers)). For KONA's own code, register 6 at that address rests on the shared map alone.

## Forms

**Established.** W bits 67-70 select one of 15 layouts (value 4 never occurs). In eight forms (2, 3, 5, 11, 12, 13, 14, 15) bit 67 is also wired into the record as an ordinary field bit, and the even and odd forms of a pair differ in layout. **Inferred:** the decoder looks at all four bits, so the form is a 4-bit field even though bit 67 also carries data in half of the forms.

W bit 71 is wired to record bit 223 in every form. It is set in 2349 words, including eight of the no-ops. **Inferred: W71 makes the word run on the core's second thread, B.** In production, 1505 of the 2116 W71 words that carry an operation sit next to an unmarked word with the same operation code (counted over the listings), as in `udrawtri.s` `lDI3`, where 0x289d and 0x289e subtract with register 1 and then register 2, 0x28a3 and 0x28a4 move them, and so on: the same step for two vertices, one per thread. What the threads share beyond the program is **unknown**; kpm's private registers 0x40 and up have A and B copies ([GE.h](../GE.h)). That the chip has threads A and B at all is **established** by kpm's per-thread register names ([Engine facts read from KONA's own binaries](#engine-facts-read-from-konas-own-binaries)).

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

**Inferred (A with D, B with E: an address register and an offset).** In memory reads A names an address register and D the word offset from it; in stores with `r213` = 3, B names the address register and E the offset. `mMatrixTransposeWW` (matrix.S lines 34-39, 0xd399-0xd3a4) is twelve words that read A = 0xb with D = 2, 3, 4, 6, 7, 0xb and write B = 0xb with E = 8, 0xc, 1, 9, 0xd, 0xe, and the reverse: the six swaps (1,4), (2,8), (3,12), (6,9), (7,13) and (11,14) that transpose a 4 x 4 matrix stored row by row, in place, through register 0xb. The diagnostic program's `areg.s` loads address registers 0-8 and up with form-14 words that carry `r219` = 3 and G naming the register (IRIX 6.5.30m usr/diags/IR/ucode/ge.u, 0x21e4-0x2207), and production code loads registers 0xa and 0xb the same way with engine addresses such as 0x1385, 0x17f5 and 0x73bd. Fixed selectors: 0x1f is the command input ([ge_ops.md](ge_ops.md#input-and-output-fifo-operations)), 0x18 the staging words that form-15 and form-12 words fill (B = 0x18, E = k) and later words read (A = 0x18, D = k), 0x10 the pixel-path input word, and 0x1e the word's own immediate as the address (form-5 stores).

**Inferred (field G in form 14).** In form-14 words with `r219` = 1, G names the register written and C the register read, with C = 0x1e meaning the word's own immediate. Of the 356 words that carry F = 0x25 with `r222` = 1, 168 have G = C, a read-modify-write of one register. Where such a word sits in a loop, a form-14 word with C = 0x1e loads the same G a few words earlier, and the loop's relative transfer follows. Examples: `mgesi_FlushRM` loads 8 into register 0xf at 0x380e and steps it at 0x3814 under the transfer at 0x3816. `mges_ContextReloadFromBEF` loads 0x59, the length of the 89-word raster shadow, into register 2 at 0x673c and steps it at 0x6741 and 0x6751 under the transfer at 0x6753. The word at 0x6641 in `ctx_load.S` (immediate 0x1fa, C = 0x1e, G = 2) has the same shape. It loads 0x1fa into register 2, 0x6645 steps register 2, and the transfer at 0x6647 (relative -2) repeats it. The four delay slots after it, 0x6648-0x664b, store staging registers 0x1e, 0x1d and 0x1c to engine memory through the pointer fields `r95` = 4, 5 and 6. No later word reads register 2 before 0x6653 loads it again with 0xeaf. **Inferred:** 0x1fa there is the iteration count of a copy loop and never leaves the engine. It is not the host's activate token, which has the same value. What F = 0x25 does to the count (a decrement is the reading that fits) is **unknown**.

**Unknown:** what most decoded record bits do. The largest decoded groups are R148-139 (10 bits, decoded in forms 1-13), R128-122 and R110-100, and the whole of R62-26 outside form 0. For unit 1 the first three now have a reading ([below](#operand-ports-and-result-forwarding)); the rest of R110-100 and R62-26 remain the candidates for further operation and routing codes.

### Operand ports and result forwarding

Unit 1 has two operand ports. For each port the word names a source in `r110` and, for the sources that need one, a register in `r148` or a forwarded result in `r128`. Sources: production `ge.u` and the IR diagnostic `ge.u` (IRIX 6.5.30m, `usr/gfx/ucode/KONA/` and `usr/diags/IR/ucode/`), with the expected words of `irsaudit` `expected_token`.

| Field | Port 1 | Port 2 |
|---|---|---|
| Source selector | `r110` bits 9-8 | `r110` bits 7-6 |
| Register, when the selector is 0 | `r148` bits 9-5 | `r148` bits 4-0 |
| Forwarded result, when the selector is 1 | `r128` bits 5-3 | `r128` bits 2-0 |

**Established** (the port fields). The diagnostic instruction test names its two registers in `r148`, first register in bits 9-5 ([ge_ops.md](ge_ops.md#the-diagnostic-programs-instruction-test)), and every two-register case there has `r110` = 0x43d, both selectors 0. Over the production words that run unit 1 alone (unit 2 idle), a selector of 1, 2 or 3 leaves the matching register field at 0 in 12,785 of 12,823 words for port 1 and 14,695 of 14,947 for port 2. A selector of 2 or 3 also leaves the matching `r128` field at its idle value 5, in all but 9 of 23,005 port uses. A selector of 1 occurs 2,730 times for port 1 and 2,035 times for port 2.

**Established** (selector 1 forwards a result). Read the 3-bit `r128` field as k. Codes 0-3 take the result of the unit-1 operation 4 + k words earlier, and codes 4-7 the result of the unit-2 operation 4 + (k - 4) words earlier. Two independent sites agree:

- The diagnostic chain at `ge_inst.s` lines 3512-3528 (0x1a1c, 0x1a20, 0x1a25, 0x1a2b). Four form-11 words each run an integer add and a float multiply. They write different registers each time (Q = 2, 4, 6, 0x11; P = 3, 5, 7, 0x12), so no register carries a result from one word to the next. Yet `irsaudit` expects 20, 30, 40, 50 and 100.0, 1000.0, 1e4, 1e5 (index 128-135). The three later words carry `r128` = 0x04, 0x0d and 0x16. Their unit-1 field reads 0, 1 and 2, and the previous word is 4, 5 and 6 words back. Their unit-2 field reads 4, 5 and 6, at the same distances.
- The production program. Among the 4,765 forwarded operands in words that run unit 1 alone, 4,740 have an operation of the named unit exactly that many words earlier. Code 0 matches in 1,883 of 1,893 uses and code 4 in 840 of 852. All 25 misses involve the double-precision codes 0x22, 0x31 and 0x35 (M = 0x6a2, 0x6b1, 0x6b5) as consumer or producer, which take two words.

So a single-precision unit-1 or unit-2 result is available four words after the word that computes it. The forwarding window holds the results of the words four to seven back. Code 5 is also the field's idle value, since a word that does not select forwarding leaves it there. 121 port-1 uses of code 5 are real forwards of the unit-2 result five words back.

**Inferred** (selectors 2 and 3). Selector 2 takes the word the instruction itself reads through A and D: a staging word, a command operand (A = 0x1f), or engine memory through an address register. Selector 3 takes the word loaded by a preceding read that has no destination of its own. Form-14 reads such as 0x7281 (A = 9) and 0xa7e8 (immediate 0x31) are those reads, and the diagnostic's integer add at line 1096 (0x098d) adds the word read at 0x0988 to register 0. A move (unit-1 code 0x4a) has both selectors at 2 in its common routing `r110` = 0x6bd and copies port 1.

**Established** (subtract order in every routing form). The single-precision subtract returns port 1 minus port 2: diagnostic line 3774 puts B in register 1 (`r148` bits 9-5) and A in register 0, and `irsaudit` expects B - A. Routing form `r110` = 0x7bd selects 3 for port 1 and 2 for port 2, so it returns the loaded word minus the word the instruction reads through A and D. Two production sites agree:

- `mgeb_BitmapApplyOrig` subtracts command operand 0 (A = 0x1f, port 2) from the raster position loaded at 0xa7e8 (port 1), which is GL's bitmap placement ([ge_compute.md](ge_compute.md#pixel-output-and-set-up-mpixouts-mpixelsetups)).
- `mDefineFineMode`'s search keeps the smaller of two error words (`fog.S` 0x7281-0x72a5, [ge_compute.md](ge_compute.md#fog-fogs)).

The other order would break both.

### Unit-2 and seed-unit operands

`r110` is eleven bits. Bits 9-6 route unit 1 (above). Bits 5-4 and 3-2 are unit 2's two port selectors, bits 1 and 10 control the seed unit, and bit 0 is 1 in every word except 517 that no rule below needs. Sources as above: production `ge.u`, the IR diagnostic `ge.u` (IRIX 6.5.30m) and `irsaudit` `expected_token`.

| Field | Unit-2 port 1 | Unit-2 port 2 | Seed unit |
|---|---|---|---|
| Source selector | `r110` bits 5-4 | `r110` bits 3-2 | `r110` bit 1 |
| Register | selector 1: `r148` bits 9-5 | selector 1: `r148` bits 4-0 | bit 1 = 1: `r148` bits 9-5 |
| Forwarded result | selector 2: `r128` bits 5-3 | selector 2: `r128` bits 2-0 | bit 1 = 0: `r128` bits 5-3 |
| Memory operand | selector 3: the word read through A and D | selector 3: the loaded word | none |
| Seed result | selector 0 | selector 0 | |

The unit-2 codes are the unit-1 codes plus one: unit 1 uses 0 for a register, 1 for a forward, 2 for the A/D word and 3 for the loaded word. Unit 2 has one memory code, and the port decides which of the two memory words it takes.

**Established** (registers, selector 1). Two diagnostic words fix the fields. At `ge_inst.s` line 4010 (0x1dee) the unit-2 move of its first operand has `r110` = 0x69d (port 1 selector 1), `r148` = 0, and returns 0x4a5a5a5a, the word in register 0. At line 4025 (0x1e08) code 0x2f, which returns its second operand, has `r110` = 0x6b5 (port 2 selector 1), `r148` = 1, and returns 0x45a5a5a5, the word in register 1. The multiply at line 3996 (0x1dd4, `r110` = 0x695, both selector 1, `r148` = 1) returns their product. In production unit-2-only words, selector 1 comes with a nonzero register field in 1,363 of 1,413 port-1 uses and 1,972 of 2,249 port-2 uses; the rest name register 0.

**Established** (forwarding, selector 2). It uses unit 1's rule: `r128` code k takes unit 1's result 4 + k words back for k = 0-3, and unit 2's result 4 + (k - 4) words back for k = 4-7. The diagnostic chain at `ge_inst.s` lines 3512-3528 is the first witness. Its multiplies at 0x1a20, 0x1a25 and 0x1a2b have port-2 selector 2 (`r110` = 0x5d9) and `r128` bits 2-0 = 4, 5 and 6. The previous multiply is 4, 5 and 6 words back, and no register carries the product between them, yet `irsaudit` expects 100.0, 1000.0, 1e4 and 1e5. Production is the second: in words where unit 2 runs alone, 2,151 of the 2,163 forwarded unit-2 operands have an operation of the named unit at exactly that distance. Of the 12 misses, nine are double-precision words in `clear.S` and `matrix.S`, which take two slots. The other three are in `uunpack.s` (0x2ccd, 0x2d68, 0x2e16), where the named distance lands on a multiply that sits between two integer-to-float conversions.

**Established** (the seed unit). The seed unit works on one operand: a register named in `r148` bits 9-5 when `r110` bit 1 is set, or the forwarded result named in `r128` bits 5-3 when it is clear. Bit 10 picks the function: 1 the reciprocal seed, 0 the reciprocal-square-root seed. Unit 2 reads the seed through selector 0 exactly two words later. Two independent sites agree:

- The diagnostic seed test. `ge_inst.s` line 4182 (0x1f5e, `r110` = 0x6bf, bit 10 set, bit 1 set) and line 4206 (0x1f80, `r110` = 0x2bf, bit 10 clear) take register 0. Two words later the unit-2 moves at 0x1f60 and 0x1f82 (`r110` = 0x68d, port 1 selector 0) return the reciprocal and reciprocal-square-root seeds `irsaudit` expects (index 167-170).
- The production program. Every one of the 399 production words that reads selector 0 has a word two before it whose seed operand is real. In 228 that operand is a register. In the other 171 it is a forwarded result, and in each of those an operation of the named unit sits at the distance the code gives. The Newton-Raphson sequences show the pairing directly. In `utexgen.s`, 0xbca seeds a sum forwarded from 0xbc5, and 0xbcc squares that seed (`r110` = 0x281, both ports selector 0). The step at 0xbd0 then computes (3 - x y0^2) / 2 from the square and register 2, and 0xbd4 multiplies the step by a fresh seed of register 2 taken at 0xbd2. `mMatrixInverse` (`umatrix.s` 0xf2d, `r110` = 0x6bd, `r128` = 0xd) seeds the determinant forwarded from 0xf28 for the step at 0xf2f.

So the seed unit runs in every word. A word whose `r110` is the no-op value 0x6bd still seeds whatever its `r128` bits 5-3 forward, and only a read two words later makes that result matter. Words with `r110` bits 1-0 = 0 (517, all with bit 10 set) are never followed by a selector-0 read. What clearing bit 0 does is **unknown**.

**Inferred** (selector 3, a memory word: the A/D word on port 1, the loaded word on port 2). In unit-2-only words, port-1 selector 3 comes with an A/D read (`r99` bit 3) in 1,635 of 1,990 uses. Port 1 must take the word read through A and D at two sites. In `uMatrixMultCCC` the multiply at 0xe76 (`r110` = 0x6b9, A = 0x18, D = 0xc) takes staging word 0xc, the 0.5 stored at 0xe71, against the subtract forwarded from 0xe72. In `lDI3` the colour multiplies at 0x28ba-0x28c0 (`r110` = 0x6b5) take the vertex colour word that A = 0xa or 0xb and D = 0x1b-0x1e name, against the scale in a register. Port 2 must take the loaded word in the matrix multiplies, whose words select 3 on both ports (`r110` low bits 0x3d) and read one factor through A and D and the other through C. `uMatrixMultCCC` 0xe7f reads the modelview word through A = 0xb and the composite word at immediate 0x2f through C = 0x1b. `mMatrixMultCCW` 0xeb5 reads one matrix through A = 0xb and the other through C = 0xa. Taking the same word on both ports would square one factor. The three `uMatrixMultCCC` multiplies at 0xe77-0xe79 name no A/D read (A = 0, D = 0) and must still multiply by 0.5. So a word that reads nothing through A and D leaves the last word read in place for selector 3. That is also **inferred**.

### How code reaches the special registers

**Established (production `ge.u`, 6.5.30m):** `HereWeGo` loads address register 0x1c with 0xfffe0000 (form 14, `r219` = 1, G = 0x1c, at 0x000c) and register 0x1d with 0xfffe0100 (0x000d), and no other production word writes either register. The address registers are 18 bits wide (the diagnostic `areg.s` walks 18-bit patterns through every one), so both values have bit 17 set; 0x1e gets 0xffff0000 (0x000e), the output window the diagnostic also aims its result stores at.

**Special register n sits at engine address 0xfffe0000 + 4n: established for n = 6, 0xa, 0x41 and 0x4c, each read or written at that address by code whose purpose fixes the register (the `gevers_ucode` program for 6, CHIP_REV, under [Engine facts read from KONA's own binaries](#engine-facts-read-from-konas-own-binaries); the others below and under [Forms](#forms)); inferred for the other numbers. The selector is address register 0x1c or 0x1d used as a base: inferred.** A word reads special n as source A = 0x1c with offset D = n and writes it as B = 0x1c with E = n (with `r213` = 3, or 2 for a predicated store); 0x1d with offset k reaches 0x40 + k, the private registers. kpm's numbers for the 24 registers in [GE.h](../GE.h) are the offsets the code uses. The evidence, each from a fixed address:

- The histogram module sets one register in two spellings. The diagnostic `ge_hist.S` stores through B = 0x1c, E = 0xa ten times (diagnostic `ge.u`, 0x3057 and nine more); the production `umo_Histogram` loads 0xfffe0028 into address register 8 (0x13b4) and stores control word 0x17b through it at offset 0 (0x13bb). 0x28 = 4 x 0xa, and 0xa is LUT_MODE. The production lookup modules `umo_LUT16`, `umo_LUT16RGBA_AlphaOnly` and `umo_LUT16LA_AlphaOnly` use the same 0xfffe0028 (0x1ba2, 0x1d2a, 0x1e23).
- The diagnostic flag test loads 0xfffe0104 into address register 0x1b (`ge_inst.s`, 0x034d) and reads through it with A = 0x1b; the words returned (expected words 4-15 in `irsaudit` `expected_token`) are the flag nibbles of [ge_ops.md](ge_ops.md#branch-conditions-and-the-flag-register). 0x104 = 4 x 0x41, FPU_COND_A, the condition word.
- The users match kpm's names: the start-up writes 0x00-0x02 and 0xa; context save and restore (`mges_ContextDeactivate`, `mgeb_ContextLoadRegs`) carry 0x01, 0x02, 0x08-0x0b and 0x0f; every primitive entry handler writes 0x0c, 0x0d and 0x0e (CULL, CLIP_HOMO, CLIP_USER) and the clippers read 0x0d and 0x0e; only the cull loop writes 0x1c (CULL_ACCUM); `mGL_REGS_Initialize` sets 0x42, 0x43, 0x0b and 0x0f, the four flag words, in consecutive words (0xb26a-0xb26d).

Counted over the production listings: 77 reads and 232 writes reach the 17 numbers kpm names below 0x40, and 18 reads and 63 writes go through 0x1d. Five numbers are never reached: 0x03, 0x04, 0x05, 0x06 and 0x07 (VERTEX_COUNTT, CHIP_ID, UST_ACCESS, CHIP_REV, DIAG_PIN). The diagnostic version routine `geversion.s` loads plain 4 and 6 into register 0x1b (0x219e, 0x21bc), but without bit 17 those are data-memory addresses: `ge_inst.s` stores 0xbabebabe at address 4 and reads it back (0x0563, 0x0568, expected word 17).

The code also writes offsets kpm's table does not name: 0x10-0x1b and 0x20-0x2f from 0x1c (518 writes, 15 reads), and 0x20, 0x21, 0x23, 0x28 and 0x2b from 0x1d. What those numbers hold is **unknown**; kpm prints none of them. That a register offset counts four address units in this window, while production also loads odd data-memory addresses such as 0x73d5 into address registers, is also **unknown**: the evidence fixes where each special register is reached, not how the address unit scales offsets elsewhere.

## Immediates

**Established** (wiring, every word of the form): form 15 carries a 32-bit immediate in W31-0; form 14 an 18-bit immediate in W17-0, sign-extended from W17 into the record's 32-bit immediate; form 5 a 10-bit immediate in W40-31, landing in the low ten immediate bits. Form 15 immediates include IEEE single-precision constants (2.0, 255.0, 4096.0, 16777215.0 and others; [ge.md](ge.md#precision) lists some), so the 32-bit immediate feeds floating-point operations as well as addresses.

**Inferred** (one memory operation). The form-14 pattern C = 0x1e, R95-89 = 0x17 with an immediate reads a word of the engine's data memory at that address. In `mmo_CopyFifoLine` (0xab59-0xab65) five such words name 0xc00, 0xbfc, 0xbff, 0xbfd and 0xbfe. The ARM function `U_mCopyFifoLine` (arm1.u 0x0c030b4c) writes five words at 0xbfc with `WriteEram` just before it sends that handler ([arm1.md](arm1.md)). The addresses fit the 12-bit `e_aev` / `e_aod` buses.

## Transfers

The record group R88-72 (`seq` in the listings) and R209-199 (`cc`) control the program counter. **Established** properties of the data:

- R86-84 is a 3-bit code. It is 6 in the no-op record and in 45089 of the 47211 instructions, 4 in 1076, 5 in 908, 3 in 120, and 0 or 1 in 18. Codes 3-5 occur in forms 14 (1858 words), 3 (138), 1 (59) and 2 (49).
- When the code is 3, 4 or 5 and R87 is clear (1463 words), the immediate is the address of a real instruction in every word. When R87 is set (641 words), the immediate is a small signed number, and address + immediate lands on a real instruction in 630. Examples in `ctx_load.S`: 0x6647 has immediate -2 and 0x665b immediate -7, each pointing back to the start of the loop around it.
- With code 4 and R87 clear, 405 words carry the immediate 0, which the listings print as a transfer to `HereWeGo` (the reset entry). The others go to subroutine-like labels (`mWramToEram`, `mMatrixMultCCW`, ...).
- R88 is set in 844 transfer words and in no other word. 783 of them carry the immediate 0; in the other 61 the immediate is used by another field of the same word (a constant loaded into a register, or an engine address stored to). Every transfer whose immediate is 0 and whose R87 is clear has R88 set, and no transfer with R88 clear has a zero absolute target. Counted over the production listings (`ge.u`, 6.5.30m) by [scripts/ge_disasm.py](../scripts/ge_disasm.py)'s `seq` field.
- `mDispatchCentral` (0xe750-0xe755) is a run of code-5 words with immediates 0xe4d0, 0xe4d0, 0xe4b6, 0xe471, 0xe462 that differ in `cc` (0x60, 0x62, 0x64, 0x66, 0x68), ending with a code-4 word to 0xe450.
- `mgeb_Fogi` (0x6fa5) contains a code-4 word (0x6fa9) to `mgeb_Fogf` (0x6fb2).

**Inferred:** R86-84 is the sequencer operation: 6 = continue, 5 = conditional jump, 4 = jump, 3 = a loop form (its targets are the `mainloop` and `epilogue` labels of the pixel paths). R87 makes the target relative to the instruction's own address. `cc` selects the condition, as the dispatch chain tests one condition per word. R76-72 is a second condition or mode code (4 in the no-op and in most jumps). R83-77 is 0x7f or 0x7e in transfers; its role is **unknown**.

### Calls, returns and the end of a command

**Inferred: R88 marks an indirect transfer.** Its target does not come from the immediate: the immediate is 0 or belongs to another field (the count above). The jumps "to address 0" are therefore not jumps to `HereWeGo`; the listings print them that way only because the immediate is 0. Where the target comes from depends on the condition-group field R76-72:

- **Group 0 without R88 is a call.** The 112 code-4 words in group 0 all have R88 clear and all go to named routines (31 distinct targets, among them `mWramToEram`, `mSinCos`, `mEramToCram` and `mFeedbackVertex`). At all 112 call sites the caller's own code goes on: after the four delay slots and any zero words, the next instruction is in the same source file as the call (59 resume at call + 5, the rest after one to four zero words). **Established** by count from `ge.hex` and the listings.
- **Groups 4 and 5 with R88 are returns.** Of the 31 call targets, 28 end in an R88 transfer in group 4 or 5: `mSinCos`, `mSinCosAB`, `mMatrixAdjoint`, `mPrintf` and the memory-copy routines (`mWramToEram`, `mEramToFifo` and the rest of `mmemove.S` and `memove.S`) in group 5; `MemRegInit`, the multisample point routines, `mod` and the polygon-stipple routines in group 4. The other three end in a plain group-4 jump to a routine that returns for them: `mLoadFogTable` jumps to `mStartFogDownload` or `mLoadOneBigTable`, `mDefineCoarseMode` to `mDefineFineMode`, and `mSpriteRotateV0OntoV1` to `mMatrixMultCCWNoFetch`. That is a tail call, and it works only if the return address is held outside the instruction. Calls also nest: `mLoadFogTable` calls `mDefineCoarseMode` (0x7710), which calls `mStartGSS` twice (0x77b6, 0x77ed) before its tail jump. **Inferred:** the return addresses are kept on a hardware stack at least three deep; no decoded field of those routines saves or restores a return address. What separates a group-4 return from a group-5 return is **unknown: no shipped software or published source depends on it**; both occur at the ends of called routines. The same R88 transfers in groups 4 and 5 end `mmo_` modules that the ARM chains into a pixel or geometry path, so there the saved target is the next stage of the chain ([ge_handlers.md](ge_handlers.md#how-to-read-the-entries) counts them per class). Routes tried: the decoded fields of all 112 call words (they differ from a plain group-4 jump only in R76-72), the diagnostic program's listings (`areg.s` loads the address registers and no link register).
- **Group 31 with R88 ends the command.** 288 absolute R88 transfers (244 with code 4, 44 with the conditional code 5) and 288 relative ones sit in group 31, in handlers and modules (the end-of-command wait of [ge_ops.md](ge_ops.md#reading-a-handler-in-source-order) is the relative form, waiting on `cc` 0x11). **Inferred:** the target is the next command's handler, supplied by the dispatch hardware from the ARM or the distributor ([arm1.md](arm1.md)). `HereWeGo` holds two no-ops, one word with code 6 and a call to `MemRegInit` (0x27cc, `bootinit.s`), and no code anywhere in the program looks up a handler, so nothing else could supply it. How the address reaches the transfer is **unknown**: KONA's ARM sends its handlers through `geif.u` slots rather than raw addresses. Inside a vertex batch the same transfer instead goes to the successor word the routine last read with `r95` = 2, which is how the primitive entry handlers and the modules of the vertex path chain into each other ([ge_compute.md](ge_compute.md#how-the-vertex-path-is-chained-successor-words)); the reading above holds for the transfer that ends a command.

This replaces the earlier reading that every code-4 transfer to address 0 is the end of a command: that holds for group 31 only.

## Operations, conditions and FIFOs

- **ALU:** the operation codes of both arithmetic units, the seed unit and the output move are fixed by the IR diagnostic's instruction test and its expected results ([ge_ops.md](ge_ops.md), [ge_inst_results.tsv](ge_inst_results.tsv)). Ties the test cannot break are listed there.
- **Branch conditions:** `cc` 0-15 are read from the same test and from production use ([ge_ops.md](ge_ops.md#branch-conditions-and-the-flag-register)): two flag nibbles, the low one set by unit 1 and the high one by unit 2 (**inferred**); which condition each `cc` selects is **unknown** there. `cc` 0x10, 0x11, 0x14 and 0x15 test the address unit's result ([Address-unit conditions](ge_ops.md#address-unit-conditions)); in production 0x14/0x15 are the pixel-path loop's continue and exit, 0x10 an abort test, 0x11 the end-of-command wait or a loop count, depending on the condition-group field R76-72.
- **FIFO input:** a handler reads operand word k of its command as source A = 0x1f, D = k (ge_ops.md, [Input and output FIFO operations](ge_ops.md#input-and-output-fifo-operations)); the FIFO special registers 0x00-0x02 are written at start-up and by the context code, through address register 0x1c ([How code reaches the special registers](#how-code-reaches-the-special-registers)).

A reader can extend the decode without the `ge.u` record: every field in the tables above is a plain slice of W.
