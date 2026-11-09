# KONA kernel message catalogue

[diag-messages.tsv](diag-messages.tsv) lists every call that prints a message in the KONA
kernel objects of the IP27 build: one row per call site, with the routine, the call address,
the print routine, the level or tag the call shows, the format string, and the nearest branch
that jumps over the call. It is written by [scripts/diag_messages.py](../scripts/diag_messages.py).
The hand readings that the table carries are in [diag-messages-reads.tsv](diag-messages-reads.tsv).

## Scope

- The members of `usr/cpu/sysgen/IP27boot/kona.a` (28 objects), plus `gfx.o` and `rrm.o` from
  the same directory. These are the board driver and the generic graphics layer they call.
- Not yet covered: the diagnostic programs under `usr/diags/IR/bin` (`irsaudit`, `hyper`) and
  `usr/gfx/KONA/bin` (`ireeprom`, `kpm`). They are stripped and call the C library through
  stubs, so the print routines need the stub-to-name mapping that the kernel objects do not
  need. `kernel.o` (the whole kernel link) and the IP35 copies are also outside this table.

## Method

1. Each routine is read in instruction order. A branch and its delay slot are applied together,
   because the delay slot runs before the branch takes effect.
2. A string is reached through a `$gp`-relative pointer slot in `.srdata`, which the
   relocation names. `retools/tools/kona/kernel_annotate.py` reads those slots and the strings.
3. At each print call the level (cmn_err: a0), the tag (cmn_err_tag: a0, level in a1) and the
   format argument (cmn_err: a1, cmn_err_tag: a2, sprintf: a1) are taken from the register
   state at the call.
4. A register that the code sets on two paths is kept only where both paths agree. A label
   reached through a jump table is not followed, so its registers are unknown, except that a
   callee-saved register the routine loads only from one `$gp` slot (the string base most
   routines keep in `s7` or `s8`) keeps that pointer everywhere.
5. The skip branch is the nearest conditional branch before the call whose target lies past
   it, with no jump or return in between. It is a candidate only. A call after a jump or
   return is entered by a taken branch from elsewhere and gets no candidate, and even with
   one a call can also be reached by a taken branch, so only a hand reading gives the
   condition (the `runs_when` column).

Grades: **mechanical** rows have the fields above and nothing else. **read** rows were checked
against the disassembly of the routine by hand; their `runs_when` and `note` say what that
reading established.

Board-facing rows (`board` = yes) are sorted first. A row is board-facing when its routine calls
a board register accessor or wait, or when the message names board hardware (FIFO, interrupt,
DMA, timeout, parity and similar words).

## Board interrupt word (kona_intr_handler)

In `kona_intr_hip2.o`, `kona_intr_handler` builds the word that its bit tests read (called `s1`
in the listings). It is the word at +2368 of the board structure ANDed with the value read
from the board offset 0x800238 through `gfx_pio_read_32`, then with `~0x20`. The tests after it:

| Bit | Message | Die reason | Source |
| --- | --- | --- | --- |
| 0x1 | unexpected hi-water interrupt, ignored | none | established (0xec-0xf0, 0x1f0-0x208) |
| 0x4 | graphics FIFO overflow, resetting pipe | 10 | established (0x108-0x10c, 0x210-0x230) |
| 0x40 | ODMA overflow (tag 2120), no die | none | established (0x138-0x13c, 0x140-0x164) |
| 0x100 | parity error, resetting pipe | 22 | established (0x164-0x168, 0x23c-0x25c) |
| 0x400 | PIO overflow, resetting pipe | 13 | established (0x180-0x184, 0x268-0x288) |
| 0x800 | IDMA overflow, resetting pipe | 14 | established (0x188-0x18c, 0x294-0x2b0) |

## Hi-water and low-water routines (kona_flow.o)

`kona_hiwater_timeout` prints tag 2102 while the FIFO level is still above the threshold at
+2332 (the level is read at board offset 0x800208). When the level has fallen it prints a
banner that names `kona_lowater_intr`, and it then calls `kona_lowater_intr`. The banner is
the string at `.rodata` offset 0 (the same base pointer the other messages of the routine are
taken from). The text names `kona_lowater_intr` while the code is in `kona_hiwater_timeout`.

## Summary

<!-- diag-messages:begin -->
| Measure | Count |
| --- | ---: |
| Print-call sites in scope | 141 |
| Sites whose format string was traced | 141 |
| Sites with no traced format string | 0 |
| Board-facing sites (sorted first) | 88 |
| Sites read by hand (grade read) | 12 |
| Calls to cmn_err | 89 |
| Calls to cmn_err_tag | 27 |
| Calls to printf | 1 |
| Calls to qprintf | 1 |
| Calls to sprintf | 23 |
<!-- diag-messages:end -->

## Open items

- The diagnostic programs and the IP35 copies are not catalogued (see Scope).
- A row with status `unresolved` has a print call whose format argument could not be traced.
  None remain: the DPLEX messages in `kona_nclops_discover` and the `kona_geprint` formats are
  reached through an `s8` or `s7` string base that the scan now takes from its one `$gp` slot
  load, and each format was checked against the string in the object's `.rodata`.
- `kona_geprint` prints through `sprintf` into a buffer; its rows give the format, not the
  value printed.
