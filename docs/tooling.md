# Decompilation tooling: what each tool is for

Two tools read the shipped IRIX binaries: the assembly-to-C pipeline in `scripts/` (`spimdisasm` objects and `m2c`, here "the pipeline") and Ghidra's headless analyzer with the decompiler. This chapter compares them on 20 functions whose behaviour the repository already documents, and says what to use each for. Nothing in it is specific to one graphics family: the method, the failure modes and the scripts in [scripts/ghidra/](../scripts/ghidra/) apply to any IRIX MIPS binary (o32, N32, 64-bit, relocatable kernel objects). Another workspace can copy this file and the scripts and repeat the table against its own functions.

## Recommendation

| Job | Use | Why |
|---|---|---|
| Read one named function as C, fast, in a build with symbols or DWARF | the pipeline | 0.1 to 0.7 s a function, structured output, floating-point and bit-field code is usually right, a one-struct context file turns offsets into field names |
| Read a function the pipeline cannot reach: static function in a stripped library, 64-bit or o32 library | Ghidra | it finds functions from code flow, needs no symbol, and loads o32, N32, N64 and relocatable objects natively |
| Switch statements through a table | Ghidra with `IrixJumpTables.java` | neither tool recovers an IRIX table unaided; with the script Ghidra gets the whole body and every case, the pipeline needs a hand-written table label per switch |
| Find every caller, every store into a register window, every data reference | Ghidra | constant folding follows an offset held in a register across calls; a text pattern on the assembly misses those |
| Call graph of an entry point | either | direct calls are identical in both; Ghidra adds callers and counts unresolved indirect calls |
| Name the fields of a state record | either | both take one struct definition and print the same field names |
| Float-heavy leaf code | the pipeline, then Ghidra as a check | the pipeline resolves float literals inline when it can; Ghidra shows them as data labels, not values |
| Bulk text for diffing or grepping | the pipeline | committed `asm/` and `decomp/` trees, deterministic, no project state |

Rules of thumb. Use the pipeline first for anything it can reach, and read its output against the assembly when the function has a jump table, a float literal or a call to a function in the same object. Use Ghidra when the pipeline fails or the question spans the whole binary. Always run both Ghidra scripts (`IrixGp.java`, `IrixJumpTables.java`) before trusting a Ghidra switch or a global reference in IRIX code. Neither tool names a static function in a stripped build; the name has to come from DWARF in a sibling build or from the documentation.

## Method

Functions. Twenty functions with a documented, labelled behaviour: 6 from the kernel objects (n64 relocatable), 6 from the N32 `libGLcore.so`, 4 from an X module (N32 shared object), 4 from the 64-bit and o32 `libGLcore.so` builds. Of the 20, 3 have jump tables and one more a compare-tree switch, 4 are over 300 instructions (517 to 641), and 18 reach data or callees through the global pointer or the GOT.

Ground truth. Each function's documented behaviour was split into checkable claims: constants, structure offsets, callee names, return values and control shape (266 claims in all, 2 to 61 per function). A claim counts as present when the output holds that value or name; small constants can match by accident, and a wrong operation that keeps the same tokens is not caught. Eleven functions (K1 to K4, N1 to N4, X3, X4, B1) were also read in full against the assembly for wrong operations that the token check cannot see; the rest (K5, K6, N5, N6, X1, X2, B2 to B4) got the token check and targeted reading of the calls and constants.

Tools. The pipeline as the repository ships it, on the committed per-object assembly (`kona_kernel/disasm`, `libglcore/asm`) and on assembly extracted with the same extractors for the o32, 64-bit and X-module builds. Ghidra 12.1 headless, default analysis, no types. Ghidra with the two scripts. Wall time per function for the pipeline; decompile time per function and analysis time per binary for Ghidra.

Readability rubric (1 to 5).

- 5: reads like the original C: structured control flow, named callees and globals, correct widths, no artifacts.
- 4: correct and structured; cosmetic artifacts only (raw offsets, spurious call arguments, an unresolved string literal, a `goto` for a plain loop).
- 3: correct but needs the assembly beside it: unresolved callees or globals, dropped call arguments, misleading data labels, or `goto` hiding a loop.
- 2: partly wrong or heavily distorted: lost operations, wrong callee names.
- 1: no output, or truncated to a fraction of the function.

## Results

Cells are: result, claims missing (including wrong operations) out of claims checked, readability, time. "fail" is no output. The pipeline rows for B1 to B4 are as shipped; the figure in brackets is after slicing the function out by hand, because the shipped extraction cannot produce them (see the failure list).

| ID | Function (object, instructions) | Pipeline | Ghidra | Ghidra + scripts |
|---|---|---|---|---|
| K1 | `kona_flow_init` (kernel, 20) | ok, 0/10, 4, 0.16 s | ok, 0/10, 4, 25 ms | ok, 0/10, 4, 25 ms |
| K2 | `kona_delay_monitor_gfifo` (kernel, 41) | ok, 0/10, 3, 0.15 s | ok, 0/10, 4, 31 ms | ok, 0/10, 4, 31 ms |
| K3 | `KONAstart` (kernel, 195) | ok, 0/23, 4, 0.18 s | ok, 2/23, 3, 48 ms | ok, 2/23, 3, 48 ms |
| K4 | `kona_hiwater_intr` (kernel, 185) | ok, 0/16, 3, 0.19 s | ok, 3/16, 3, 25 ms | ok, 3/16, 3, 25 ms |
| K5 | `KONAprivate` (kernel, 591, switch) | fail, 61/61, 1 | truncated to 164 of 2364 bytes, 55/61, 1, 18 ms | ok, 1/61, 3, 134 ms |
| K6 | `KONApcxswap` (kernel, 517) | ok, 0/19, 3, 0.34 s | ok, 0/19, 3, 105 ms | ok, 0/19, 3, 105 ms |
| N1 | `getS2p7` (N32, 34) | ok, 3/8, 2, 0.66 s | ok, 2/8, 3, 20 ms | ok, 2/8, 3, 20 ms |
| N2 | `lodBias2Scale` (N32, 35) | ok, 1/4, 4, 0.65 s | ok, 1/4, 3, 3 ms | ok, 1/4, 3, 3 ms |
| N3 | `__glKonGetFormatIndex` (N32, 41) | ok, 0/10, 4, 0.36 s | ok, 0/10, 3, 4 ms | ok, 0/10, 3, 4 ms |
| N4 | `setSharpenFilter` (N32, 72, switch) | ok, 0/9, 4, 0.66 s | ok, 0/9, 4, 5 ms | ok, 0/9, 4, 5 ms |
| N5 | `__glKonTexAlloc` (N32, 556) | ok, 5/15, 2, 0.36 s | ok, 7/15, 3, 74 ms | ok, 7/15, 3, 74 ms |
| N6 | `__glNamesLockDataList` (N32, 641, switch) | fail, 13/13, 1 | truncated to 184 of 2564 bytes, 12/13, 1, 19 ms | ok, 1/13, 3, 53 ms |
| X1 | `mapTypeToXDRPROC` (X module, 131, switch) | fail, 12/12, 1 | truncated to 200 of 524 bytes, 10/12, 1, 70 ms | ok, 0/12, 3, 37 ms |
| X2 | `vfmtReadKonaVideoFormat` (X module, 193) | ok, 1/14, 3, 0.26 s | ok, 0/14, 4, 48 ms | ok, 0/14, 4, 48 ms |
| X3 | `xdr_SDBfileHeader` (X module, 80) | ok, 3/11, 2, 0.15 s | ok, 0/11, 4, 20 ms | ok, 0/11, 4, 20 ms |
| X4 | `vfmtFindKonaFormatFile` (X module, 19) | ok, 1/2, 3, 0.21 s | ok, 1/2, 3, 4 ms | ok, 1/2, 3, 4 ms |
| B1 | `__glKonGetTypeIndex` (o32, 47) | fail, 10/10, 1 (sliced: 1/10, 3) | ok, 0/10, 4, 19 ms | ok, 0/10, 4, 19 ms |
| B2 | `getS0p7` (o32, 22, static) | not extracted, 5/5, 1 (sliced: 0/5, 4) | ok, 0/5, 4, 2 ms | ok, 0/5, 4, 2 ms |
| B3 | `__glKonGetFormatIndex` (64-bit, 42) | fail, 10/10, 1 (sliced: 1/10, 3) | ok, 0/10, 3, 26 ms | ok, 0/10, 3, 26 ms |
| B4 | `lodBias2Scale` (64-bit, 35, static) | not extracted, 4/4, 1 (sliced: 1/4, 4) | ok, 1/4, 3, 5 ms | ok, 1/4, 3, 5 ms |

Totals over the 20 functions.

| | Pipeline | Ghidra | Ghidra + scripts |
|---|---|---|---|
| Decompiled at all | 13 of 20 (17 with hand slices) | 20 of 20 | 20 of 20 |
| Whole function recovered | 13 of 20 | 17 of 20 | 20 of 20 |
| Claims recovered | 137 of 266 (51%); 163 (61%) with slices | 172 of 266 (65%) | 247 of 266 (93%) |
| Claims recovered where it produced a whole function | 91% of 151 | 90% of 180 | 93% of 266 |
| Mean readability | 2.4 (2.95 with slices) | 3.05 | 3.35 |
| Time | 0.12 to 0.66 s a function, plus 3 to 4 s once per binary for the extractor | 2 to 105 ms a function; analysis of the whole binary 10 to 15 s for one kernel object, 47 to 54 s for a user-space library, paid once per binary | same, plus 1 to 2 s for the scripts |

Where the claims go missing differs. The pipeline loses whole functions (jump tables, extraction) and mis-states a few operations: it dropped the multiply and both constants in `getS2p7`, named four calls in `__glKonTexAlloc` after a neighbouring symbol instead of their targets, and passed the wrong value for an array count in `xdr_SDBfileHeader`. Ghidra's misses are mostly unresolved data: float constants as data labels, calls to a static function as `FUN_` addresses, and call arguments dropped when it infers a prototype for an external (the value written to a register in `KONAstart` and `kona_hiwater_intr` is missing from five calls).

Switch tables, loops and names.

| Feature | Pipeline | Ghidra | Ghidra + scripts |
|---|---|---|---|
| Jump-table switch (K5 103 slots, X1 21, N6 10) | fails on all three: no table label in the shipped assembly | none recovered; the function is cut at the jump (164 of 2364, 200 of 524, 184 of 2564 bytes) | all three recovered with full bodies; case labels are the table entries (target addresses), not the selector values |
| Compare-tree switch (N4, `__glim_Enable`) | prints a `switch` for N4 | prints nested `if` | same |
| Loops | `goto` labels for most loops (K2, K4, N5 has 25 gotos) | `while`/`do` | same |
| Callees from relocations (kernel) | named | named | named |
| Callees through the GOT (libraries, X modules) | libraries named; X modules unresolved (`unk-NNNN(...)`, "read from unset register") | named inside a pointer label (`PTR_name_addr`) | same |
| Calls to static functions in the same object | named by DWARF, but a call can take a neighbouring symbol's name (N5) | `FUN_addr`; correct target, no name | same |
| Global data through gp | kernel: `saved_reg_gp->unk-7800`; libraries: `&__rodata0 + off` | kernel: `unaff_gp + off`; libraries: `PTR_` label that can name the wrong string (N3, B3) | kernel: resolved for one object in four (see limits) |
| String literals | unresolved | unresolved | unresolved |
| Float literals | inline for single precision, lost for double ("second half of f64") | data labels (`DAT_addr`) | data labels |

## What only Ghidra offers

Cross-references to a register window. The kernel stores every board register through one helper whose address argument is a per-pipe base word plus a constant. `FindWindowStores.java` lists each call of that helper with the decompiler's folded offset, across all 27 kernel objects in one headless run (25 s). It found 187 stores into the host-interface window (offset 0x800000 and up) at 13 distinct offsets in 63 function/offset pairs, plus 177 calls whose address is not base plus a constant (command-FIFO writes). The existing text-pattern script (`scripts/kernel_registers.py`) finds 173 stores in 64 pairs. Ghidra misses one store the pattern finds (a base held across a loop joins two values, so the offset does not fold); the pattern script undercounts by 14 where the offset register is set earlier than the call, for example 12 writes of one register in the video interrupt handler against 5. Neither is complete alone; the union is 188 stores. Use Ghidra to find them and the pattern script to cross-check.

Call graph. `DumpCallEdges.java` dumps caller and callee per function and indirect calls it could not resolve. The entry point of the private-ioctl dispatcher has 34 direct callees in both Ghidra and a `grep` of `jal` over the committed assembly, the same 34 names. The closures differ only because the Ghidra project lacked the kernel core object that the grep covered. For direct calls Ghidra adds nothing over the text; what it adds is callers, unresolved indirect-call counts per function and, with `IrixJumpTables.java`, the destinations of switch tables.

Structure type propagation. One struct definition (the flow-control fields of the pipe state, 14 fields, 8-byte fields explicit) was applied to three functions in each tool: `ApplyStruct.java` for Ghidra, `--context` for the pipeline. Both print the same field names and the same bodies. The pipeline needs the N32 target (`-t mipsn32`) for the 64-bit kernel objects once a context file declares 8-byte fields: with `-t mips` a 64-bit pointer takes two argument slots and the output has "read from unset register" errors. Ghidra needs the parameter list set (it has no stored signature for these functions) and a calling convention warning appears; otherwise equal. Ghidra keeps the type in the project, so one definition applies to later functions; the pipeline takes the context on every call.

## Failures and limits found

Pipeline (as shipped):

- A jump table is not usable: the extractors emit the table words but leave the load unreferenced unless a base address is passed (`JTBL_BASE`) for N32/64-bit libraries, and the kernel and X-module extractors have no such option. m2c stops with "unable to determine jump table".
- The o32 and 64-bit library extractions are one large file. A single branch the parser rejects (`bnel t7,$at,sym-0xa18`) fails the whole file, so every function in it fails.
- Static functions have no symbol in the stripped builds and are not extracted at all.
- Calls to a same-object function that has no symbol of its own take the nearest preceding symbol's name.
- X-module assembly keeps GOT loads raw, so global and call targets are unresolved.
- The generated library and module runner scripts use the N32 target for every build.

Ghidra (default import):

- The DWARF analyzer fails with an end-of-file error on these DWARF-2 objects, so no statics are named.
- For the shared objects the loader applies the REL32 relocations to jump-table entries that already hold final addresses, so every entry is wrong (a constant added to each) and switch analysis gives up with "could not emulate address calculation".
- Relocatable kernel objects have no global pointer value. The loader rewrites each gp-relative immediate for a pointer it does not keep, so `unaff_gp + off` stays unresolved and the table base of a kernel switch cannot be found.
- The decompiler infers call prototypes: a call to an external whose callee has no definition can lose its last argument.
- A pointer to a table in `.rodata` that has no symbol of its own is named after the nearest string.

## Scripts

All in [scripts/ghidra/](../scripts/ghidra/), each with its use in the opening comment. Run inside an image that has Ghidra's `analyzeHeadless`; create the project directory first (`mkdir -p /tmp/gp`) and pass `-deleteProject` to leave nothing behind.

| Script | Run as | Does |
|---|---|---|
| `DecompileFunctions.java` | post-script | decompiles named functions (or `@0xADDR` for static ones) to a file with size and time per function |
| `IrixGp.java` | pre-script for shared objects, post-script for relocatable objects | sets gp from the function prologues (agreed with `.got + 0x7ff0` in all four shared objects tested, 2 to 9 distinct values, nearly all functions identical), marks `.got`, `.rodata` and small-data blocks read-only; for a relocatable object recovers gp from the small-data block and its smallest gp-relative immediate and says when the check fails |
| `IrixJumpTables.java` | post-script, after `IrixGp.java` | finds the table base and case count behind each `jr`, reads the entries from the file's original bytes (shared objects) or the relocated image (relocatable objects), registers a jump-table override so the decompiler prints a `switch`, and re-flows the function body |
| `FindWindowStores.java` | post-script | lists calls of a store helper with the folded base-plus-offset address |
| `DumpCallEdges.java` | post-script | dumps call edges and unresolved indirect calls |
| `ApplyStruct.java` | post-script, before the decompile script | gives functions a typed first parameter from a C header |

Measured effect of the two IRIX scripts. `IrixJumpTables.java` recovered the three jump-table functions in full (KONAprivate with 103 entries and 26 targets, the type codec with 21, the name-list locker with 10) and also tables in 36 N32, 37 64-bit and 55 X-module functions that were cut short before (none in the o32 build). `IrixGp.java` was a no-op for shared objects, whose loader already sets gp (the values agree), and fixed gp for one of four relocatable kernel objects tested.

Limits of the scripts, found in use:

- Jump-table case labels print as the table entry (a target address), because the selector is the loaded entry rather than the index. Map labels to indices by the entry order in the script's log line.
- Tables are recognised by one dispatch shape: a bound check with `sltiu`, a base from a GOT or small-data slot plus a low half, base plus scaled index, a load, `jr`. Other shapes are reported and left alone: 559 (N32), 558 (64-bit), 110 (X module) and 895 (o32) `jr` instructions were left alone, most of them tail calls through a register and some real switches. The o32 build produced no table at all; its tables are probably gp-relative offsets, which the script does not handle.
- Relocatable kernel objects: the gp recovery assumes the smallest gp-relative immediate is slot 0 of the small-data block. It held for one object in four; the other three are left unset and print `unaff_gp` as before. A better recovery would use the relocation addends.
- Float literals stay as data labels (`DAT_addr`): marking the literal blocks read-only did not make the decompiler fold them.
- Case counts above 255 and entries that are gp-relative offsets are not handled.

## Ghidra processor module for the geometry-engine microcode

The sections above cover the MIPS binaries. The geometry-engine microcode is not MIPS code, and no stock Ghidra processor reads it. `sleigh/kona-ge/` is a Ghidra extension that disassembles and decompiles the geometry-engine microcode: KONA's `ge.u`, `ge11.u` and `ge.hex`, the IR diagnostic programs, and the `gevers_ucode` program in the instruction set ([ucode/ge_isa.md](../ucode/ge_isa.md#engine-facts-read-from-konas-own-binaries)). Built and tested with Ghidra 12.1.3.

| Path | What it is |
|---|---|
| `data/languages/kona_ge.slaspec` | The SLEIGH spec, generated by `tools/gen_slaspec.py`; edit the generator |
| `data/languages/kona_ge.{ldefs,pspec,cspec}` | Language `KONA-GE:BE:32:default` |
| `ghidra_scripts/KonaGEImport.java` | The import recipe, run as a pre-script on a raw import |
| `tests/run-ghidra.sh`, `tests/*.java` | Imports the programs and dumps listings, functions and decompiled routines |
| `tests/check.py` | Compares those dumps with the Python disassembler and the documents |

### How the decode works

The chip stores a 72-bit word W, but the decode from W to its control fields is not known as logic: `ge.u` holds each word's 256-bit decoded record, 205 of whose bits vary and most of which are not slices of W ([ucode/ge_isa.md](../ucode/ge_isa.md#two-encodings-one-program)). So the module decodes the record, which `scripts/ge_disasm.py` also reads:

- code space `code` has an 8-byte address unit, one microcode word each, holding W[63:0]; Ghidra addresses are word addresses, as in the listings;
- the import script writes every record group, W[71:64] and the form into the context register at each word;
- the SLEIGH constructors match on those context fields.

A lone `.hex` or `ge11.u` therefore needs its `.u` beside it. The script pairs `X.u` with `X.hex`, `X.hex` with `X.u`, and `ge11.u` with `ge.u`. A program with no `.u` does not load.

Address spaces: `wram`, `cram` and `eram` are the engine's three memories. `dmem` is the engine address space that address registers reach; which memory an address there selects is unknown. Registers: `R0`-`R31` (r148, P, Q), `AR0`-`AR31` (A, B, C, G), `SEED`, the condition word `FL` with its twelve-word history, and each unit's result history for forwarding.

### What the semantics cover

Each operation carries its label from [ucode/ge_ops.md](../ucode/ge_ops.md) in the spec, as established or inferred. Unit-1 codes 0x20, 0x22, 0x40, 0x42, 0x4a, 0x4b, 0x50, 0x54, 0x56, 0x58, 0x5b, 0x5d, 0x5f, 0x60, 0x62, 0x66, 0x68, 0x71, 0x73 and 0x7c are covered. So are unit-2 codes 0x07, 0x0f, 0x27, 0x37, 0x47, 0x4f and 0x57, and the two seeds. Several operations are named pcodeops because a detail is unknown: saturation of the integer add and subtract, double precision (its two-word pairing is unmapped), rounding of 0x71, NaN in the clamp, and the seed table. Codes with no reading, among them unit-1 0x51 and unit-2 0x2f and 0x3f, become `u1_op(code, …)` or `u2_op(code, …)`.

Unit 1's operand ports follow [ucode/ge_isa.md](../ucode/ge_isa.md#operand-ports-and-result-forwarding): register, forwarded result four to seven words back, the word read through A and D, or the loaded word. Transfers take effect after four delay slots, and returns after eight. Conditions read the condition word twelve words back and address conditions two words back. Ghidra cannot nest delay slots, so the import gives a transfer only the words before the next transfer as delay slots.

Not modelled:

- the operand ports of unit 2 and the seed unit, whose layout the ISA notes call unknown;
- the fields r176, r162, r198, r217, r71, r62 and r25, and most of r95;
- the latency of register writes.

Code that feeds a unit-2 operation from a forward or a load therefore decompiles with wrong operands.

### Build and run

From the repository root, with `root/` populated and Ghidra's `support/` directory (`sleigh`, `analyzeHeadless`) on `PATH`:

```sh
python3 sleigh/kona-ge/tools/gen_slaspec.py      # after editing the generator
sleigh/kona-ge/tests/run-ghidra.sh .cache/kona-ge  # needs Ghidra
python3 sleigh/kona-ge/tests/check.py .cache/kona-ge  # needs Python 3 only
```

`run-ghidra.sh` installs the module as a user extension in a temporary settings directory and compiles the spec. It then imports each program. To use the module interactively, copy or link `sleigh/kona-ge` into Ghidra's `Extensions` directory, run `sleigh` on the spec, and import a program with the recipe:

```sh
analyzeHeadless PROJDIR PROJ -import ucode/KONA/ge.u -loader BinaryLoader \
  -processor KONA-GE:BE:32:default \
  -scriptPath sleigh/kona-ge/ghidra_scripts -preScript KonaGEImport.java
```

The script also does the following:

- names words from `ge_symbols`;
- puts the `ge.u` line table in end-of-line comments as `file:line`;
- marks entry points at word 0 and at every `geif.u` handler;
- adds a function at every code address the program stores as a constant (form-15 constant stores, 0x100 or above, naming a `ge_symbols` label), the way modules are chained ([ucode/ge_handlers.md](../ucode/ge_handlers.md#how-to-read-the-entries)).

Ghidra's analysis finds the call targets.

### Acceptance results

From `check.py` against IRIX 6.5.30m `usr/gfx/ucode/KONA/` and `usr/diags/IR/ucode/`:

- **(a) passes.** All 47211 listed words of `ge.u` match `scripts/ge_disasm.py` field for field. Each instruction prints a mnemonic, then the transfer and every record group that differs from the no-op record, as that script does. r62 is printed as `high:low`.
- **(b) passes.** All 172 output words of `irsaudit`'s instruction test decode as the output store. The 41 rows of the operation table each decode to the documented operation, found by walking back from the output word to the word that wrote its register.
- **(c) passes.** All 452 routine entries among the `ge_compute.md` subjects are function entries; 729 functions are found in all. A routine entry here is a label reached by a slot, an ARM load, the distributor table, an address constant or a call word. The 228 loop heads and branch targets among the subjects are left out.
- **(d) fails.** The decompiler output is readable C with typed memory references, but the documented chains are broken where unit 2 takes a forwarded or loaded operand:
  - `mmo_Clamp`: the parameter block is loaded into scale variables, and the 24-input loop clamps every input and multiplies by those scales. The multiply takes the unclamped input, though.
  - `uMatrixMultCCC`: it reads the projection and stores the 0.5 constant, but the four subtracts feed unit-2 multiplies and drop out.
  - `mMatrixMultCCW`: only 7 of its 64 multiplies and 7 of its adds survive.
- **Imports pass.** `ge11.u` and `ge.hex` import to the same listing as `ge.u`, and `ge_diag_init.hex` decodes all 283 words.

## ARM firmware import

The host-interface ARM runs its own firmware, a big-endian ARMv4 image in AIF layout ([ucode/arm1.md](../ucode/arm1.md)). Ghidra's stock ARM processor reads the code, but a raw import puts the AIF header at the load address, has no address map and no names. `ghidra/kona-arm/` holds an import script that fixes that for every ARM image on the media: `arm1.u`, `arm1_kpm.u` and `tport.bin` from `usr/gfx/ucode/KONA/`, and `arm1.u`, `arm1_nic.u` and `diag_arm_init.u` from `usr/diags/IR/ucode/`.

| Path | What it is |
|---|---|
| `ghidra_scripts/KonaArmImport.java` | The import recipe, run as a pre-script on a raw import |
| `tables.tsv` | The documented data tables the script lays, per image, with the page that documents each |
| `tests/run-ghidra.sh`, `tests/DumpArm.java` | Imports all six images, analyses them and dumps functions, the token list, data and references |
| `tests/check.py` | Compares the dumps with `ucode/arm1.s`, `ucode/tport.s`, `ucode/icu_map.tsv` and `ucode/arm1_handlers.tsv` |

Import recipe, from the repository root (the script's argument is the repository root; it reads `ucode/` and `ghidra/kona-arm/tables.tsv` from there):

```sh
analyzeHeadless PROJDIR PROJ -import ucode/KONA/arm1.u -loader BinaryLoader \
  -processor ARM:BE:32:v4 \
  -scriptPath ghidra/kona-arm/ghidra_scripts -preScript KonaArmImport.java "$(pwd)"
```

The processor is `ARM:BE:32:v4`: the images use the ARMv4 halfword transfers and no Thumb or `bx`. What the script does:

- Memory. The read-only part goes at the image base (0x0c000000, or 0 for `diag_arm_init.u`), the read-write part at the data base and the zero-initialised part after it, all read from the AIF header; `tport.bin`'s 20-byte EEPROM file header is skipped. Around them it adds the ARM address map kpm names ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md#control-and-status-registers)): SRAM at 0 (the state block, r8 + offset; mapped to 0x1000, the stack top), the host-interface registers at 0x200000, the payload ports and next-handler fetch at 0x200200, the engine descriptor and data ports at 0x200600, the token map at 0x400000, the display bus at 0x600000, the EEPROM at 0x800000 and the cache tags at 0xa00000. The register and port blocks are volatile. The display-bus, EEPROM and SDRAM sizes are the distance to the next region, not a documented size.
- Base registers. r8 = 0 and r9 = 0x200200 are set over the code after the start-up sequence that loads them, so every r9-relative store resolves to a named register or port.
- Names. `arm1.u` takes its 1682 debug-table symbols; a symbol with flags 2 or 3 in the read-only part starts a function unless it is a linker mark, the area name `ucode` or one of the documented tables. An image without symbols gets names for its call targets by matching their words against `arm1.u` with branch and pc-relative offsets masked (the rule of `scripts/arm1_disasm.py --tport`), `DoDGRqst<name>` for its display-request handlers, and, for `tport.bin`, the labels of [ucode/tport.md](../ucode/tport.md#unnamed-functions).
- Registers. Every ARM-side register of [ucode/arm1_registers.tsv](../ucode/arm1_registers.tsv) is labelled and typed as a 32-bit structure of its kpm fields; the layouts (`HA_ICU_MAP_A`, `_G`, `_N`, `HA_GED_CTRL_ADDR`) become types only. The descriptor and data ports are labelled by their decoded select and tag (`HA_GED_CTRL_T1_S12` is 0x200670).
- Token table. In `arm1.u` the static list at `vector_end` is typed entry by entry: an ARM entry as {flags, handler pointer}, a routed entry as `HA_ICU_MAP_G` (geometry form) or `HA_ICU_MAP_N`. Each entry, its slot in `icu_map` and its slot in the hardware map at 0x400000 are labelled with the token number and kpm name, and each handler gets a plate comment listing its tokens and group.
- Data tables. `hipwc`, `vector_start`, the `x$constdata` tables, `DGDispatchTable`, the three vertex-array tables, `gepc`, `icu_map` and `tport.bin`'s request table, as listed in `tables.tsv`.

Test, from the repository root:

```sh
ghidra/kona-arm/tests/run-ghidra.sh .cache/kona-arm      # needs Ghidra, about 80 s
python3 ghidra/kona-arm/tests/check.py .cache/kona-arm   # needs Python 3 only
```

Results against IRIX 6.5.30m:

- `arm1.u`: all 1189 function symbols of `ucode/arm1.s` are Ghidra functions with an `arm1.s` name. Analysis adds one function, 0x0c040168, the shared divide loop inside `__rt_divtest` that has no symbol of its own. All 512 tokens sit in the typed list with the entry of `icu_map.tsv`, and all 306 ARM-run handlers resolve to the address and name in `arm1_handlers.tsv`. Code references reach the host-interface registers (662), the payload ports (993) and the engine ports (5111).
- `tport.bin`: all 225 call targets that `ucode/tport.s` labels as code are functions named as `tport.s` names them, or as `tport.md` labels a `fn_` target; the two labels `tport.md` marks as strings stay data. Analysis adds 13 functions no call reaches.
- `arm1_kpm.u`, `arm1_nic.u`, the diagnostic `arm1.u` and `diag_arm_init.u` import with their host-interface references resolved; they have no listing to compare names against.

Limits: the diagnostic images' functions that match nothing in `arm1.u` stay `fn_<address>`, and `tport.bin`'s own token map (built at +0x3b0 with 8-byte entries) is not typed.
