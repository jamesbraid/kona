# Ghidra against the pipeline: bake-off on 20 documented functions

Two tools read the shipped IRIX binaries: the assembly-to-C pipeline in `retools/tools/` (`spimdisasm` objects and `m2c`) and Ghidra's headless analyzer. This record compares them on 20 functions whose behaviour the repository already documents. What to use each for, the tools' failure modes and the scripts are in [retools/ghidra/scripts/README.md](../retools/ghidra/scripts/README.md), which is shared with the other graphics workspaces. The results below were measured with the scripts as first written; the last section records two gaps found then and their fixes.

## Method

Functions. Twenty functions with a documented, labelled behaviour: 6 from the kernel objects (n64 relocatable), 6 from the N32 `libGLcore.so`, 4 from an X module (N32 shared object), 4 from the 64-bit and o32 `libGLcore.so` builds. Of the 20, 3 have jump tables and one more a compare-tree switch, 4 are over 300 instructions (517 to 641), and 18 reach data or callees through the global pointer or the GOT.

Ground truth. Each function's documented behaviour was split into checkable claims: constants, structure offsets, callee names, return values and control shape (266 claims in all, 2 to 61 per function). A claim counts as present when the output holds that value or name; small constants can match by accident, and a wrong operation that keeps the same tokens is not caught. Eleven functions (K1 to K4, N1 to N4, X3, X4, B1) were also read in full against the assembly for wrong operations that the token check cannot see; the rest (K5, K6, N5, N6, X1, X2, B2 to B4) got the token check and targeted reading of the calls and constants. The jump-table function in the N32 library is documented from the public sample implementation, so its claims were taken from that source.

Tools. The pipeline as the repository ships it, on the committed per-object assembly (`software/kernel/disasm`, `software/opengl/asm`) and on assembly extracted with the same extractors for the o32, 64-bit and X-module builds. Ghidra 12.1 headless, default analysis, no types. Ghidra with the two scripts. Wall time per function for the pipeline; decompile time per function and analysis time per binary for Ghidra.

Readability rubric (1 to 5).

- 5: reads like the original C: structured control flow, named callees and globals, correct widths, no artifacts.
- 4: correct and structured; cosmetic artifacts only (raw offsets, spurious call arguments, an unresolved string literal, a `goto` for a plain loop).
- 3: correct but needs the assembly beside it: unresolved callees or globals, dropped call arguments, misleading data labels, or `goto` hiding a loop.
- 2: partly wrong or heavily distorted: lost operations, wrong callee names.
- 1: no output, or truncated to a fraction of the function.

## Results

Cells are: result, claims missing (including wrong operations) out of claims checked, readability, time. "fail" is no output. The pipeline rows for B1 to B4 are as shipped; the figure in brackets is after slicing the function out by hand, because the shipped extraction cannot produce them (see the pipeline limits in ../retools/ghidra/scripts/README.md).

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
| Global data through gp | kernel: `saved_reg_gp->unk-7800`; libraries: `&__rodata0 + off` | kernel: `unaff_gp + off`; libraries: `PTR_` label that can name the wrong string (N3, B3) | kernel: resolved for one object in four as first written, all four after the fix below |
| String literals | unresolved | unresolved | unresolved |
| Float literals | inline for single precision, lost for double ("second half of f64") | data labels (`DAT_addr`) | data labels |

## Measured with the scripts

Register-window stores. `FindWindowStores.java` listed each call of the store helper with the decompiler's folded offset, across all 27 kernel objects in one headless run (25 s). It found 187 stores into the host-interface window (offset 0x800000 and up) at 13 distinct offsets in 63 function/offset pairs, plus 177 calls whose address is not base plus a constant (command-FIFO writes). The text-pattern script (`retools/tools/kona/kernel_registers.py`) finds 173 stores in 64 pairs. Ghidra misses one store the pattern finds (a base held across a loop joins two values, so the offset does not fold); the pattern script undercounts by 14 where the offset register is set earlier than the call, for example 12 writes of one register in the video interrupt handler against 5. The union is 188 stores.

Call graph. The entry point of the private-ioctl dispatcher has 34 direct callees in both Ghidra and a `grep` of `jal` over the committed assembly, the same 34 names; the closures differ only because the Ghidra project lacked the kernel core object that the grep covered.

Structure type propagation. One struct definition (the flow-control fields of the pipe state, 14 fields, 8-byte fields explicit) applied to three functions in each tool gave the same field names and bodies.

Jump tables. `IrixJumpTables.java` recovered the three jump-table functions in full (the private-ioctl dispatcher with 103 entries and 26 targets, the type codec with 21, the name-list locker with 10) and tables in 36 N32, 37 64-bit and 55 X-module functions that were cut short before. It found none in the o32 build: 895 `jr` instructions were left alone. `IrixGp.java` was a no-op for shared objects, whose loader already sets gp, and fixed gp for one of four relocatable kernel objects.

## Two gaps and their fixes

Both fixes are in the scripts shared with the other workspaces. The proof is a rerun of the same objects.

o32 tables. The o32 dispatch is `lw at,slot(gp)` (the table page), `addu at,at,idx*4`, `lw t,disp(at)`, `addu t,t,gp`, `jr t`: the low half of the table address is the load's displacement and the entries are offsets from gp. The script ignored the displacement and the gp add, so it read the table from the page start and rejected it ("entry 0 is not code"). A second fault hid behind it: a function whose prologue gave its own gp had that value written over the next 4 KB, which changed gp in following functions that agreed with the object value. It now ends at the next code symbol. Rerun on the o32 library: 373 tables recovered, 0 rejected, 522 `jr` left alone (before: 0 recovered). N32 (36 tables, 559 left), 64-bit (37, 558) and X module (55, 110) are unchanged.

gp for kernel objects. The earlier guess (smallest gp-relative immediate is word 0 of the small-data block) failed whenever the smallest immediate belonged to a named small-data symbol or no access was to word 0. Ghidra's own relocation handler had in fact used a single gp for each object all along, so it is recoverable exactly from the GPREL16 records (symbol address, original addend, gp0 from the register-info option). All four objects now resolve, every relocation agreeing: the flow object (gp 0xfaff0, 8 of 8), the context object (0xfaff0, 6 of 6), the ioctl object (0xfaff0, 9 of 9) and the setup object (0xf9ff0, 1 of 1; its other three accesses are to undefined symbols). Decompiling the kernel functions of the bake-off (the flow-control functions, the start-up function and the context swap) leaves `unaff_gp` in none of them, where the old script left 8, 2 and 4 occurrences; the global reads print as the symbol or pointer slot they use, for example `kona_fifo_timeout_value` and `PTR_splhi_00101510`. The private-ioctl dispatcher still decompiles with its one switch (26 case labels, as before).
