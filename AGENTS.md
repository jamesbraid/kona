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

The subdirectories below contain relative symbolic links resolving into `root/` (`scripts/populate-root` creates them from the `links` block in IRIX_FILES.md):

| Directory | Symlinked files | Target in `root/` | DWARF status (6.5.30m) |
|---|---|---|---|
| `kona_kernel/` | `kona.a` members (28 `kona_*.o`), `gfx.o`, `rrm.o`, `kernel.o`, `gfxs.a`, `gfxstubs.a` | `usr/cpu/sysgen/IP27boot/` | **DWARF** in all 31 objects |
| `libglcore/` | `libGLcore.so` (64-bit), `libGLcore_n32.so`, `libGLcore_o32.so`, `libGL.so` | `usr/gfx/arch/IP27KONA64/`, `IP27KONA32/`, `IP27KONA/` | **DWARF** in the 64-bit and N32 libGLcore (N32: 163 compilation units) and libGL; o32 stripped. `pyelftools` cannot read the 64-bit DWARF header, so the extractor uses its symbol table; use `dwarfdump` for the types |
| `irisgl/` | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` | **DWARF** (160 and 61 compilation units) |
| `ddx/` | `kona.so`, `konad.so`, `konal.so`, `konas.so`, `konavis.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` | Stripped; dynamic symbols only (`kona.so`: 819 functions). `konavis.so` has no code section |
| `ucode/` | `KONA/` microcode, tables and listings (`ge.u`, `ge11.u`, `geif.u`, `arm1.u`, `tport.bin`, `dg4/`, `vof/`) | `usr/gfx/ucode/KONA/` | Data |
| `diags/` | `IR/` diagnostics (`irsaudit`, microcode, test vectors), `KONA_bin/` (`ireeprom`, `kpm`, `postmortem`) | `usr/diags/IR/`, `usr/gfx/KONA/bin/` | Stripped |

DWARF status is what `scripts/map_binaries.py` reported on the primary release (IRIX 6.5.30); fill in the 6.5.0 column when you have a 6.5.0 install, since 6.5.0 binaries carry debug info.

---

## 3. Deliverables: The Hardware Headers

Our primary output is a set of C header files at the repository root, one per chip or block, in the style of gr2 and gr4. **The code is the document.** Each header holds register offsets and fields, packet and token formats, state machines and constants, with a comment on every definition saying how it was derived and whether it is established, inferred or unknown.

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

Scripts (`scripts/`, run from the repository root):

- `populate-root`: create the symlinks listed in IRIX_FILES.md once `root/` is filled.
- `map_binaries.py`: catalogue every linked binary (sections, functions, DWARF compilation units) into `binaries_manifest.json`.
- `disasm_kernel.py`: disassemble the kernel `.o` objects into m2c-ready assembly under `kona_kernel/disasm/`. Unpack archives (`.a`) with `ar x` first.
- `resolve_got.py`, `clean_asm.py`: resolve `$gp`-relative GOT loads to symbol names.
- `extract_libglcore_kona.py`: extract compilation units, types and functions from `libGLcore.so` into `libglcore/asm/` and `manifest.json`, and write `libglcore/decompile_libglcore.sh`. A binary without DWARF falls back to its symbol table.
- `extract_kona_ddx.py`: the same for an X server module, grouped by function-name prefix or by your own `ddx/groups.json`.
- `analyze_fifo.py`, `extract_gl_tokens.py`: find accesses to a hardware address window in the assembly, and map the first FIFO word each decompiled GL function stores to that function. Both take the address window or FIFO address you found as arguments; none is built in.

The scripts descend from gr4's and carry its BSD-3 notice ([scripts/LICENSE-gr4](scripts/LICENSE-gr4)).

---

## 6. Working on this repository

Workflow: populate `root/` (IRIX_FILES.md), run `scripts/populate-root`, run the scripts above, then read, write headers and docs, and update `docs/coverage.md`.

Roles:

- **Opus readers** take the Priority list in `docs/coverage.md`, in order.
- **Sonnet readers** backfill `docs/coverage.md` rows one block at a time.

Output rules:

- Findings go in chip headers at the repository root plus `docs/` chapters, written in your own words.
- Label every fact established, inferred or unknown, with its derivation: binary and release, function or offset, or the public source path.
- Update `docs/coverage.md` in the same commit as the finding.
- Commit disassembly, decompiled C and traces you produce as data; keep the proprietary binaries in `root/`. Flat `*_disasm.txt` and `*_dwarfdump.txt` dumps are gitignored.
- Commit what you cite: findings may rest on IRIX binaries or public sources only.

Downstream emulator projects consume the headers and docs; they should not need to read the binaries.

Commit small and often, straight to `main`. Subjects are lowercase, component-prefixed imperatives (`kona_kernel: label the flow-control register`); bodies say why. Do not wait to batch work.
