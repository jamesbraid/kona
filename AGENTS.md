# SGI InfiniteReality (KONA) reverse engineering

This project reverse-engineers the SGI InfiniteReality graphics subsystem (internal name KONA) and publishes the result as register maps, generated headers and chapters, so that FPGA builders, driver writers and the vintage SGI community can work from findings instead of binaries.

The layout and working style follow [gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4) by Dominik Behr. Where this file is silent, do what gr4 does.

## Scope

InfiniteReality (IR, IR2, IR3, IR4) is the high-end pipe of Onyx2 and Onyx 3000. Software calls it KONA (`kona.a`, `konal.so`). The first configuration read is one IP27 Onyx2 with one InfiniteReality2 pipe on IRIX 6.5.30m. IR3, IR4, other hosts, multiple pipes and genlock are separate configurations: a fact from one does not fill a gap in another.

The reference install holds a kernel driver, three `libGLcore.so` ABIs (o32, N32, 64-bit), IrisGL libraries, six X server modules and a microcode directory. [platforms/ir/architecture.md](platforms/ir/architecture.md) maps the whole pipe.

Every fact is labelled **established** (read in full from a binary, the IRIX source or a published document, with function, offset or path), **inferred** (a reasoned reading, with the reasoning) or **unknown**. Anything unlabelled is unknown. Do not fill gaps from memory, from other SGI graphics families or from other reimplementations. The block names XG, HIP, GE, RM/TM, DG and ARM are names from the software, not findings: each role stays unknown until a labelled description replaces it.

## Binaries

Proprietary SGI binaries are not committed (`root/` is gitignored). Copy them from an authentic IRIX distribution into `root/` as [evidence/irix-files.md](evidence/irix-files.md) lists. The committed relative symlinks under `software/` resolve into it. Disassembly, decompiled C, headers and notes derived from the binaries are committed. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.

- `software/kernel/`: `kona.a` members, `gfx.o`, `rrm.o`, `kernel.o` (from `usr/cpu/sysgen/IP27boot/`). DWARF in all 31 objects.
- `software/opengl/`: `libGLcore.so` in three ABIs, `libGL.so`. DWARF in the 64-bit and N32 libGLcore and libGL; o32 is stripped.
- `software/irisgl/`: `libgl.so`, `libfm.so`. DWARF.
- `software/xsgi/`: `kona.so`, `konad.so`, `konal.so`, `konas.so`, `konavis.so`, `glx.so`, `Xsgi`. Stripped, dynamic symbols only. `konavis.so` has no code section.
- `software/ucode/`: microcode, tables and listings under `usr/gfx/ucode/KONA/`. Data.
- `software/diags/`: `IR/` diagnostics and `KONA_bin/` tools. Stripped.

[evidence/irix-files.md](evidence/irix-files.md) also lists files with no symlink directory: the Origin 350 (IP35) kernel twins, `tport.a`, the `gfxinfo`, `gfxtopology`, `hyperpipeinfo`, `ircombine`, `sgcombine`, `setmon`, `dmconf`, `startgfx` and `stopgfx` tools, `xsetmon`, the `sdbutil` compiler with its rule files, and the driver tuning files. `retools/tools/inventory.py` reads them from `root/`. Files on the 6.5.30 media that name no InfiniteReality symbol (`usr/stand/ide`, `stand/ideloader`, `videod`, `libvl.so.1`) are out of scope. No PROM image is on that media.

The 6.5.30 DWARF is thin: function names, source file names, line numbers and address ranges, with no types, members or parameters. Recover driver structures from the code. Types need a release built with full debug info, so fill in the 6.5.0 column when you have a 6.5.0 install. `pyelftools` cannot read the 64-bit DWARF header, so the extractor uses the symbol table there; `dwarfdump` reads both.

## Other public sources

- `references/code/linux/` has IP27 crossbar and widget code only, and no KONA driver: widget identity (part 0xc102 is KONA), `klconfig.h`, node and widget window addresses and the Xtalk probe. Its IP35 names are widget identity entries only. Fetch it shallow: `git submodule update --init --depth 1 references/code/linux`.
- No open KONA driver is known. Linux, OpenBSD and GXemul have nothing that drives InfiniteReality beyond widget identity and board-type constants, so every register and command finding rests on shipped IRIX binaries, published documents and captures.
- `references/documents/` holds full copies of the published patents, papers, manuals, datasheets and web pages cited in [references/documents/published-sources.md](references/documents/published-sources.md), each with its SHA-256 in [references/documents/README.md](references/documents/README.md). They are published designers' statements, graded "established (published)" or "inferred" as that file says. The `references/code/sgi-docs/` submodule has only IRIS GL manuals.

## Evidence order

Take each fact from the highest source that states it and grade it by that source. The order, the reset-value grading, the hardware-read limit and the checks that enforce them are in `retools/tools/README-analysis.md#evidence-order`. In short: IRIX source, shipped binaries, public OS drivers, published manuals, then other projects' notes, which may confirm or contradict but never supply a fact. A physical hardware read is a last resort and needs the repository owner's approval. Emulator runs are model behaviour, never hardware evidence.

## Evidence: software only

No hardware is available. Do not plan, request or wait for measurements on a real machine. A row is not finished while shipped software or published material still has something to read. Readers may open every shipped binary on every IRIX release, the linked IRIX source tree, vendor specifications (including embedded source or HDL pages), public drivers and emulators, manuals, release notes, man pages and published output from real machines (`hinv`, `gfxinfo`, `irsaudit`, ide transcripts, X logs, screenshots in posts, archives and forums).

- What the software touches and expects back is the driver's expectation, not proof of hardware behaviour. A fact resting only on a simulated run is `inferred` or `unknown`.
- Write findings in your own words. Never paste vendor source, HDL or proprietary binaries. Never copy source text, comments, macro bodies or internal identifiers from the IRIX source tree, and do not compare a routine with it in committed text. Symbol names from a shipped binary's own tables or debug info, and names in published headers and manuals, are fine.
- Before calling a fact unknown, search the shipped binaries, documents, captures and source tree for the device, its diagnostics and its PROM code, and list the routes tried.
- `established` only for what you read in full: the whole function body or table, or the whole passage of source or document. A reading built from call lists, register-store summaries, a sibling build or a name is `inferred`. Never reword or reformat an entry to change its grade. Independent audits sample entries against the binaries and publish their measured rates beside the coverage figures.
- An entry written quickly and not yet checked against its binary, document or public code (cited by project, revision and file) ends with "Unverified." and grades at most `located`. When you re-read it, correct it and relabel it established or inferred.
- When every route is exhausted, write "unknown: no shipped software or published source depends on it" with the routes tried. Never write "needs capture".
- Record an open question in `questions/README.md` with every route tried and the next one, then carry on with other work. When it is answered, move the answer into the owning chapter or header and delete the entry.

## Output

- Register, token and word layouts live in TOML: `devices/<unit>/registers.toml` for a chip or board unit and `formats/<name>/format.toml` for a software data structure, each item graded and sourced. `generated/` (`c`, `rust`, `python`, `json`, `xml`) is built from them and never edited by hand. `registers.md` (`format.md`) beside each source is the reference page.
- To change a fact, edit the TOML, run `retools/tools/defs/defs-gen`, then `retools/tools/defs/ci-check` (the check CI runs; `defs-check --build` must print `build: ok`), and commit both. `tools/kona_checks.py` compares the definitions with `formats/token/command-table.md`.
- Prose that does not fit a map goes in a chapter beside the unit it describes, under `devices/`, `formats/`, `platforms/` or `software/`.
- Driver structure headers are `software/kernel/include/kona_kern.h` and `software/xsgi/include/kona_ddx.h`. The OpenGL and IrisGL include directories are still empty.
- [evidence/coverage.md](evidence/coverage.md) maps what is written and what is missing, with open problems in priority order. Keep its rows true when you change them.
- Commit what you cite, and only what rests on shipped binaries, the IRIX source tree, published documents, captures or public code (cited by project, revision and file). Downstream projects consume the headers and docs and should not need to read the binaries.

## Tools

Shared tooling is the `retools/` submodule: `retools/tools/` is shared and `retools/tools/kona/` is for this device. Change it there and move the pin here. `tools/` holds only this repository's scripts, and `tools/config/` its data and config. Run tools from the repository root.

- Install `dwarfdump` (build `references/code/libdwarf`), big-endian MIPS binutils (`mips-unknown-linux-gnu-`, or `mips64-linux-gnuabi64-` or `mips-linux-gnu-`; override with `MIPS_OBJDUMP` or `MIPS_READELF`), Python 3 with `pyelftools`, `m2c` (`references/code/m2c/m2c.py -t mipsn32` for N32, `-t mips` for o32 and 64-bit) and `spimdisasm`. Initialise only the submodules you need: `git submodule update --init references/code/m2c references/code/spimdisasm references/code/libdwarf`.
- `map_binaries.py` catalogues every linked binary into `tools/config/binaries_manifest.json`. `disasm_kernel.py` disassembles the kernel objects (unpack `.a` with `ar x` first). `resolve_got.py` and `clean_asm.py` resolve `$gp`-relative GOT loads.
- `extract_libglcore_kona.py` and `extract_kona_ddx.py` extract compilation units and functions from `libGLcore.so` and the X modules, falling back to the symbol table when DWARF is missing. `analyze_fifo.py` and `extract_gl_tokens.py` take the address window or FIFO address you found as arguments; none is built in.
- `retools/ghidra/scripts/` holds the Ghidra headless scripts, with the rules for choosing between Ghidra and the pipeline in [retools/ghidra/scripts/README.md](retools/ghidra/scripts/README.md).
- The scripts descend from gr4's and carry its BSD-3 notice ([retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4)).

## Done

A coverage row is done when every inventory entry in its area (`evidence/inventory/`) is `understood` or `no-software-dependency`. `understood` needs a label (established or inferred), a role and hardware effect, and a derivation (release, binary and install path under `root/`, offset, callee) in the same entry; naming or listing an item is not enough. `no-software-dependency` is the "unknown: no shipped software or published source depends on it" label with the routes tried. `located` (identity, address or size, and callers or sites cited, behaviour unknown) and `named-only` are partial. The repository is finished when every inventory table is done.

## Working rules

- Readers pick work from the rows below `understood` in `evidence/inventory/`, starting from the Priority list in `evidence/coverage.md`. Take a cluster of related rows (a function family, register block, token group or ioctl) to `understood`, then work through `undocumented`, `named-only` and `located` rows by block. Hand off only when your area meets the definition above or you must stop; then say in `questions/README.md` where you stopped and what comes next.
- In the same commit as a finding, regenerate the inventory (`retools/tools/re-run python3 retools/tools/inventory.py`; it needs the MIPS binutils and `pyelftools`) and commit `evidence/inventory/` and the totals in `evidence/coverage.md`.
- A row becomes `understood` only through an entry whose subject it is: a table row whose first column is the item, a list item or heading that starts with it, or a header comment on it. The citation must be specific to the item (offset, address, callee, archive member), not just a release. A function is understood only in the binary the entry cites, plus builds with identical code. When more than five entries share one sentence pattern they count as `located`, so write each item's own sentence. [evidence/inventory/README.md](evidence/inventory/README.md) gives the exact rule.
- Write names exactly as the binary spells them and put the explanation under a heading, so the row cites the right section. If the script mis-detects a row, fix `tools/config/inventory-config.json` and say why in the commit. `retools/tools/inventory.py` is shared byte for byte with the other graphics workspaces; what belongs to this family is in that config.
- Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`kernel: label the flow-control register`); bodies say why. Do not wait to batch work.
