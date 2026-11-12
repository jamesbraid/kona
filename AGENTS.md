# SGI InfiniteReality (KONA) Reverse Engineering Project

This project reverse-engineers the SGI **InfiniteReality** graphics subsystem (internal name **KONA**).
The goal is to document its architecture as C headers and notes, so that emulator authors, FPGA builders and the vintage SGI community can work from published findings.

The layout and working style follow [gr2](https://github.com/techomancer/gr2) and [gr4](https://github.com/techomancer/gr4) by Dominik Behr. Where this file is silent, do what gr4 does.

---

## 1. Board Overview

InfiniteReality (IR, IR2, IR3, IR4) is SGI's high-end graphics pipeline for Onyx2 and Onyx 3000 systems. The internal name in the software is KONA (`kona.a`, `konal.so`). The first configuration this project reads is one IP27 Onyx2 with one InfiniteReality2 pipe; IR3, IR4, other hosts, multiple pipes and genlock are separate configurations, and a fact from one does not fill a gap in another.

The software on the reference install (IRIX 6.5.30m) spans a kernel driver, three `libGLcore.so` ABIs (o32, N32, 64-bit), IrisGL libraries, six X server modules and a microcode directory.

Facts in this file are labelled **established** (read directly from a binary, with the function or offset), **inferred** (a reasoned reading, with the reasoning) or **unknown**. Anything unlabelled is unknown. Do not fill gaps from memory, from other SGI graphics families or from other emulators.

### Major ASIC and block roles

- **XG**: Xtalk widget and XIO attachment. Role: unknown.
- **HIP**: host interface (PIO FIFO, DMA, flow control). Role: unknown.
- **GE**: geometry engines, run from microcode (`ge.u`, `ge11.u`, `geif.u`). Role: unknown.
- **RM / TM**: raster manager and texture memory. Role: unknown.
- **DG**: display generator (`dg4/`, `vof/` tables, `dgo`). Role: unknown.
- **ARM**: the ARM-named microcode (`arm1.u`). Role: unknown.

Every role above is a name from the software, not a finding. Replace each with a labelled description as headers land.

---

## 2. Project Binaries & Evidence

For licensing reasons proprietary SGI binaries are **not checked into source control** (the local `root/` tree is gitignored). Copy them from an authentic IRIX distribution into `root/` following [IRIX_FILES.md](IRIX_FILES.md). Disassembly, decompiled C, headers and notes derived from them are committed.

The subdirectories below contain relative symbolic links resolving into `root/` (they are committed; the `links` block in IRIX_FILES.md lists them):

| Directory | Symlinked files | Target in `root/` | DWARF status (6.5.30m) |
|---|---|---|---|
| `kona_kernel/` | `kona.a` members (28 `kona_*.o`), `gfx.o`, `rrm.o`, `kernel.o`, `gfxs.a`, `gfxstubs.a` | `usr/cpu/sysgen/IP27boot/` | **DWARF** in all 31 objects |
| `libglcore/` | `libGLcore.so` (64-bit), `libGLcore_n32.so`, `libGLcore_o32.so`, `libGL.so` | `usr/gfx/arch/IP27KONA64/`, `IP27KONA32/`, `IP27KONA/` | **DWARF** in the 64-bit and N32 libGLcore (N32: 163 compilation units) and libGL; o32 stripped. `pyelftools` cannot read the 64-bit DWARF header, so the extractor uses its symbol table; `dwarfdump` reads both |
| `irisgl/` | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` | **DWARF** (160 and 61 compilation units) |
| `ddx/` | `kona.so`, `konad.so`, `konal.so`, `konas.so`, `konavis.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | Stripped; dynamic symbols only (`kona.so`: 819 functions). `konavis.so` has no code section |
| `ucode/` | `KONA/` microcode, tables and listings (`ge.u`, `ge11.u`, `geif.u`, `arm1.u`, `tport.bin`, `dg4/`, `vof/`) | `usr/gfx/ucode/KONA/` | Data |
| `diags/` | `IR/` diagnostics (`irsaudit`, microcode, test vectors), `KONA_bin/` (`ireeprom`, `kpm`, `postmortem`) | `usr/diags/IR/`, `usr/gfx/KONA/bin/` | Stripped |

The scope is wider than the six directories: IRIX_FILES.md also lists the Origin 350 (IP35) twins of the kernel objects, the textport driver `tport.a`, the `gfxinfo`, `gfxtopology`, `hyperpipeinfo`, `ircombine`, `sgcombine`, `setmon`, `dmconf`, `startgfx` and `stopgfx` tools, the o32 IrisGL library, the `xsetmon` client and its resource files, the video-format compiler `sdbutil` with the `dg4`, `dg4_ddo_gvo`, `dplex` and `voc1` rule files, and the driver's tuning files. They have no symlink directory; `retools/tools/inventory.py` reads them from `root/`. Files on the 6.5.30 media that name no InfiniteReality symbol (`usr/stand/ide`, `stand/ideloader`, `videod`, `libvl.so.1`) are out of scope, and no PROM image is on that media.

DWARF status is what `retools/tools/kona/map_binaries.py` reported on the primary release (IRIX 6.5.30). The 6.5.30 DWARF is thin: `dwarfdump -i` finds only compilation units, subprograms with address ranges, global variables and line tables. It has no types, structure members or parameters, in the kernel objects, both libGLcore ABIs, `libGL.so`, `libgl.so` or `libfm.so`. It gives function names, source file names and source line numbers (the `# Line` comments in the assembly), so driver structures must be recovered from the code. Types need a release built with full debug info; fill in the 6.5.0 column when you have a 6.5.0 install, since 6.5.0 binaries carry debug info.


Other public sources in this repository:

- `linux/`: the IP27 platform code for the crossbar and widget side only, with no KONA driver. `arch/mips/include/asm/xtalk/xwidget.h` (widget header offsets and the widget identity table, which names part 0xc102 as KONA and has IP35 chip entries), `arch/mips/include/asm/sn/klconfig.h` (`KLTYPE_GFX_KONA`, `KLSTRUCT_GFX`, `lboard_t` and `klinfo_t` layouts), `arch/mips/include/asm/sn/addrs.h` and `arch/mips/include/asm/mach-ip27/spaces.h` (node and widget window addresses, 16 MB per widget), `arch/mips/sgi-ip27/ip27-xtalk.c` and `ip27-klconfig.c` (widget probe and configuration walk), and `arch/mips/pci/pci-xtalk-bridge.c`. Linux has no Origin 350 (IP35) platform; its IP35 names are widget identity entries only. Fetch it shallow: `git submodule update --init --depth 1 linux`.
- No open KONA driver exists that we know of: the Linux, OpenBSD and GXemul trees checked here have no code that drives InfiniteReality beyond widget identity and board-type constants, so every register and command finding rests on the shipped IRIX binaries, published documents and captures.
- `docs/sources/`: full copies of the published patents, papers, technical reports, manuals, datasheets and web pages that [docs/published-sources.md](docs/published-sources.md) cites for InfiniteReality and InfiniteReality2, one entry each with its SHA-256 in [docs/sources/README.md](docs/sources/README.md). These are published designers' statements (labelled "established (published)" or "inferred" as that file says), not vendor source. The `sgi-docs/` submodule holds only IRIS GL manuals and no InfiniteReality hardware document, so nothing is skipped on its account.

---

## 3. Deliverables: The Hardware Headers

Our primary output is a set of C header files at the repository root, one per chip or block, in the style of gr2 and gr4. **The code is the document.** Each header holds register offsets and fields, packet and token formats, state machines and constants, with a comment on every definition saying how it was derived and whether it is established, inferred or unknown.

The register, token and word layouts that already exist as decode headers (the display-bus chips, the host interface interrupt register, the host query and command tokens, the display requests and the multi-field words) are the exception: their facts live in `defs/`, as TOML sources with one file per unit, each item carrying a grade (established, inferred or unknown) and a source. `gen/` is generated from `defs/` and is never edited by hand: `gen/c`, `gen/rust`, `gen/py`, `gen/json` and `gen/genxml` are the machine outputs and `gen/docs/` holds the published reference page for each unit. The `KONA_*_DECODE.h` files at the root are forwarding headers that `defs-gen` writes, so existing includes keep building; do not edit them. To change a fact, edit the TOML, run `retools/tools/defs/defs-gen`, and commit both. `scripts/kona_checks.py` is the repository's own check over those definitions: it compares them with `docs/command-table.md`.

Planned headers (none written yet; `docs/coverage.md` tracks each):

1. **`KONA.h`**: overall address map, topology, board identification and common types.
2. **`XG.h`**: the Xtalk widget identity, apertures and link state.
3. **`HIP.h`**: host interface registers, FIFOs, flow control, DMA, interrupts.
4. **`GE.h`**: geometry engine instruction formats, microcode layout, command tokens.
5. **`RM.h`**: raster manager and texture memory registers, formats and filtering.
6. **`DG.h`**: display generator registers, timing tables, cursor and palette.

[docs/coverage.md](docs/coverage.md) is the map of what is written and what is missing, with the open problems in priority order. Prose that does not fit a header goes in `docs/` chapters.

---

## 4. Software Driver Headers

Local headers capture internal driver structures:

- `kona_kernel/include/kona_kern.h`: kernel driver structures (attach state, ioctl arguments, DMA buffers, context and swap state).
- `libglcore/include/glcore_kona.h`: OpenGL driver context and hardware state shadowing.
- `ddx/include/kona_ddx.h`: X server module structures (screen, window and GC private data).
- `irisgl/include/igloo.h`: IrisGL layer structures and dispatch.

---

## 5. Reverse Engineering Toolchain & Pipeline

Install these on your workstation:

- **`dwarfdump`**: build `libdwarf-code` (submodule) so that `libdwarf-code/build/src/bin/dwarfdump/dwarfdump` exists. It parses SGI MIPS DWARF-2.
- **MIPS cross binutils**: `objdump`, `readelf`, `nm`, `gcc` for a big-endian MIPS target, normally `mips-unknown-linux-gnu-`. The scripts also accept `mips64-linux-gnuabi64-` and `mips-linux-gnu-`; set `MIPS_OBJDUMP` or `MIPS_READELF` to name another.
- **`m2c`**: the assembly-to-C decompiler in the `m2c` submodule, run as `m2c/m2c.py -t mipsn32` (N32) or `-t mips` (o32, 64-bit objects).
- **`spimdisasm`**: the `spimdisasm` submodule, for object-file disassembly and symbol recovery.
- **Python 3** with `pyelftools` (the scripts import `elftools`).

Initialise only the submodules you need: `git submodule update --init m2c spimdisasm libdwarf-code`.

Tools (from the `retools` submodule: `retools/tools/` shared, `retools/tools/kona/` for this device; run from the repository root, where they find this workspace by the current directory). The files left in `scripts/` are this repository's own data and config:

- `map_binaries.py`: catalogue every linked binary (sections, functions, DWARF compilation units) into `binaries_manifest.json`.
- `disasm_kernel.py`: disassemble the kernel `.o` objects into m2c-ready assembly under `kona_kernel/disasm/`. Unpack archives (`.a`) with `ar x` first.
- `resolve_got.py`, `clean_asm.py`: resolve `$gp`-relative GOT loads to symbol names.
- `extract_libglcore_kona.py`: extract compilation units, types and functions from `libGLcore.so` into `libglcore/asm/` and `manifest.json`, and write `libglcore/decompile_libglcore.sh`. A binary without DWARF falls back to its symbol table.
- `extract_kona_ddx.py`: the same for an X server module, grouped by function-name prefix or by your own `ddx/groups.json`.
- `inventory.py`: measure coverage from the binaries. It lists every binary, function, MMIO offset, command token, ioctl, microcode routine and listed register in scope into [docs/inventory/](docs/inventory/README.md), gives each a status (documented, no-software-dependency, named-only or undocumented, with the doc and section that explains it) and rewrites the totals at the top of `docs/coverage.md`. Run it inside the build image with this workspace mounted; it needs the MIPS binutils and `pyelftools`.
- `analyze_fifo.py`, `extract_gl_tokens.py`: find accesses to a hardware address window in the assembly, and map the first FIFO word each decompiled GL function stores to that function. Both take the address window or FIFO address you found as arguments; none is built in.
- `retools/ghidra/scripts/`: Ghidra headless scripts for IRIX code (gp and jump-table recovery, register-window stores, call edges, struct typing, bulk decompile), with the rules for choosing between Ghidra and the pipeline in [retools/ghidra/scripts/README.md](retools/ghidra/scripts/README.md). Shared, byte for byte, with the other graphics workspaces.

The scripts descend from gr4's and carry its BSD-3 notice ([retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4)).

---

## 6. Evidence: software only, any source

No hardware is available for this work. Do not plan, request or wait for
measurements on a real machine. Every question is answered from software and
published material, and a row is not finished while either still has
something to read.

Readers may open anything:

- every shipped binary on every IRIX release, and any disassembly or
  decompilation of it;
- the IRIX source tree linked from this repository (hint only, never evidence);
- vendor specifications, including any embedded source code or HDL pages;
- public drivers and emulators: Linux, NetBSD, OpenBSD, MAME and others;
- manuals, release notes and man pages;
- published output from real machines: `hinv`, `gfxinfo`, `irsaudit`, ide
  diagnostic transcripts, X server logs and screenshots in newsgroup and
  mailing-list posts, web pages, archives and forums.

Running the shipped software under an emulator, to watch which registers it
touches and what it expects back, is also software evidence. Label what it
shows as the driver's expectation, not as proof of hardware behaviour.

Write findings in your own words. Never paste vendor source, HDL or
proprietary binaries into the repository.

Source trees are hints only. The linked IRIX source tree may suggest where to
look in a binary or a published document, but a hint is never evidence. Do not
cite it by path, release or file name, and do not compare a routine with it in
committed text. Every fact must be confirmed at an address in a shipped 6.5.30
binary or in a published document or capture; otherwise it is graded inferred
or unknown. No source text, comments, macro bodies, file layout, source paths or
internal identifiers from the source tree go into the repository. Symbol names
in a shipped binary's own symbol table or debug information, and names in
published headers and manuals, are fine.

Before you call a fact unknown, search the shipped binaries and the published
documents and captures for the device, its diagnostics and its PROM code, and
list those routes among the routes tried. Searches of the source tree may
suggest where to look; they are not among the routes tried.

Label honestly. Use "established" only for what you read in full: the whole
function body or table in a shipped binary, or the passage in a published document or capture. A reading built from call lists,
register-store summaries, a sibling build or a name is "inferred". Never
reword or reformat an entry to change its grade. Independent audits sample
entries against the binaries, and their measured rates are published beside
the coverage figures.

An entry that was written quickly and not yet checked against the binary, its
document or public open-source code (cited by project, revision and file) ends with "Unverified." in place of "Inferred." or "Established.".
It grades at most `located`, whatever else it says, so the understood figure
counts only what has been read. When you re-read it, correct it and change the
label to established or inferred.

Some facts no software reveals, such as the reset value of a register no
driver reads. When every route is exhausted, label the fact "unknown: no
shipped software or published source depends on it" and list the routes you
tried. An emulator author then chooses a value and documents the choice. Never
write "needs capture".

An open question is not a stopping point. Record it in
`docs/open-questions.md` with every route already tried and the next one to
try, then carry on with other work. When a question is answered, move it into
the owning chip header or chapter and delete the entry.

## 7. When work is finished

A coverage row is done when every inventory entry in its area
(`docs/inventory/`) is `understood` or `no-software-dependency`. `understood`
means the entry for that item carries a label (established or inferred), a role
and hardware effect, and a derivation citation (release, binary and its install path under `root/`,
offset, callee) in the same entry. Naming an item, or listing it
with others, is not enough. `no-software-dependency` is the section 6 label
"unknown: no shipped software or published source depends on it", with the
routes tried. `located` (identity, address or size, and callers or sites cited,
behaviour labelled unknown) and `named-only` are partial. The repository is
finished when every inventory table reaches done, not when the rows look full.

When you finish a task, regenerate the inventory, then pick the next entries
below `understood` and carry on. Hand off only when your assigned area meets
the definition above, or when the session ends. In that case, say in
`docs/open-questions.md` where you stopped and what comes next.

---

## 8. Working on this repository

Workflow: populate `root/` (IRIX_FILES.md), run the tools above, then read, write headers and docs, and update `docs/coverage.md`.

Roles:

- **Readers** pick work from the rows below `understood` in the tables in `docs/inventory/`, which are measured from the binaries and so list what is really missing. Take a cluster of related rows (one function family, one register block, one token group, one ioctl) and take each row to `understood`: a role and hardware effect, a label, and a derivation in the same entry. **Opus readers** start with the Priority list in `docs/coverage.md` and use the inventory to find the rows behind each item; **Sonnet readers** work through `undocumented`, then `named-only` and `located` rows by block.
- The areas table in `docs/coverage.md` stays as the by-hand view of each block. Keep its rows true when you change them.

Regenerate the inventory in the same commit as any doc or header change that explains an item (`retools/tools/inventory.py`, then commit `docs/inventory/` and the totals in `docs/coverage.md` with it). A row becomes `understood` only through an entry whose subject it is: a table row whose first column is the item, a list item or heading that starts with it, or a header comment on it. That entry carries a label, a role and hardware effect, and a citation specific to the item (its offset, address, callee, archive member, not just a release). Other names in the entry count as mentions. A function is understood only in the binary the entry cites, plus any build with identical code. When more than five entries share one sentence pattern, they count at most as `located`, so read each item and write its own sentence. [docs/inventory/README.md](docs/inventory/README.md) gives the exact rule. Write the name exactly as the binary spells it, and put the explanation under a heading, so the row cites the right section. If the script mis-detects a row, fix `scripts/inventory-config.json` and say why in the commit. `retools/tools/inventory.py` is shared, byte for byte, with the other graphics workspaces; what belongs to this family is in `scripts/inventory-config.json`.

Output rules:

- Findings go in `defs/` (layouts, tokens and constants that have a unit there), chip headers at the repository root and `docs/` chapters, written in your own words. Never edit `gen/` or a forwarding `KONA_*_DECODE.h` by hand.
- After a change under `defs/`, run `retools/tools/defs/defs-gen`, then `retools/tools/defs/ci-check` (the check CI runs); `defs-check --build` must print `build: ok`.
- Label every fact established, inferred or unknown, with its derivation: binary and release, function or offset, or the published document or capture.
- Update `docs/coverage.md` and regenerate `docs/inventory/` in the same commit as the finding.
- Commit disassembly, decompiled C and traces you produce as data; keep the proprietary binaries in `root/`. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.
- Commit what you cite: findings may rest on IRIX binaries, published documents, captures or public open-source code (cited by project, revision and file) only.

Downstream emulator projects consume the headers and docs; they should not need to read the binaries.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`kona_kernel: label the flow-control register`); bodies say why. Do not wait to batch work.
