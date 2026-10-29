# Inventory

Measured counts of what the InfiniteReality (KONA) binaries contain and how much of it the repository explains. Regenerate everything with `scripts/inventory.py` from the repository root (inside the build image: `tools/build-env/re-run` with this workspace). The script reads `root/` and the docs, writes the five tables below and rewrites the totals block in [../coverage.md](../coverage.md). Do not edit the tables by hand.

Scope is the `files` block of [../../IRIX_FILES.md](../../IRIX_FILES.md) minus its `exclude` block: every ELF file and archive member under those paths, IRIX 6.5.30m. The Origin 350 (IP35) kernel objects and libraries sit beside the Onyx2 (IP27) ones; byte-identical copies are read once.

| Table | One row per | Found by |
|---|---|---|
| [functions.tsv](functions.tsv) | function symbol in each binary: binary, ABI, section, address, size, name | `.symtab`, `.dynsym` and the o32 `.mdebug` procedure table; a missing size runs to the next symbol |
| [mmio.tsv](mmio.tsv) | distinct device offset, per window | kernel calls to `gfx_pio_read_32` / `gfx_pio_write_32` whose offset the code builds from constants, loads and stores off the pipe base pointer, and the register tables of the `kpm` diagnostic ([../../diags/kpm/](../../diags/kpm/)) |
| [tokens.tsv](tokens.tsv) | host command token | the `kpm` name table, the ARM firmware's token map and the names in `GE.h` |
| [ioctls.tsv](ioctls.tsv) | private ioctl slot the kernel dispatcher serves, and each command constant user code passes to an ioctl wrapper | the dispatcher's jump table in `kona_ioctl.o`; a constant replay before calls to `ioctl` and `__glKon_ioctl` |
| [ucode.tsv](ucode.tsv) | microcode routine or entry point | `arm1.u` debug-table symbols and its display-command table, `ge_symbols` labels, `geif.u` dispatch slots |

## Status

- **documented**: a markdown page names the item in backticks or a code block, or a header comment names it or sits on its definition. The `doc` column holds `file#anchor` for a page and `file:line` for a header.
- **named-only**: the item appears only as a bare name or value: a header definition without a comment, or a committed table that is not a dump of the binary's own names.
- **undocumented**: nothing in the docs, headers or tables mentions it.

A short lower-case name (`window`, `main`) counts only when written as a call, `name()`, because it is also an ordinary word. Disassembly, decompiled C, generated listings, and verbatim dumps of a binary's own tables (`ucode/arm1_symbols.tsv`, `ucode/icu_map.tsv`, `diags/kpm/`) restate the binary and are not evidence. Status says a name or number is explained somewhere, not that the explanation is right or complete; read the cited section.

## What the scan does not see

- Kernel PIO calls whose address is computed (the command port, mapped windows, pipe-space addresses) have no constant offset. `inventory.py` prints how many it skipped.
- Register accesses by user code are not recovered from instructions. The diagnostics reach the pipe through ioctls; the `kpm` register tables stand in for them.
- Calls through function pointers and PLT-less indirect calls are not followed, so an ioctl issued that way is missed.
- Functions the `.mdebug` or symbol tables do not name (stripped local functions) have no row.
- The ioctl `class` column groups command numbers by range only: 10000-10199 `kona private`, 1000-1999 `graphics manager`, 100-199 `graphics init`, the rest `other` (shared X server and tool code that serves other boards).
- Binaries the media carries that name no InfiniteReality symbol were left out of scope: `usr/stand/ide`, `stand/ideloader`, `usr/etc/videod` and the `libvl.so.1` video-library builds. No PROM image is on the 6.5.30 media.
