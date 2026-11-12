# kona

Reverse-engineering workspace for SGI InfiniteReality (KONA) graphics.

The layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and
[gr4](https://github.com/techomancer/gr4). Proprietary IRIX binaries are not
tracked. Copy them from your own IRIX install into the ignored `root/`
directory as [IRIX_FILES.md](IRIX_FILES.md) describes; the symlinks into it are
committed. [AGENTS.md](AGENTS.md) has the project goal, the
binaries and evidence, the toolchain and the working rules;
[docs/coverage.md](docs/coverage.md) is the map of what is covered and what is
next.

Public sources are submodules. `linux` carries the IP27 crossbar and widget
code (no IP35 platform); no open driver for KONA is known, so the
register and command findings rest on the IRIX binaries. Initialise only what you need, for example
`git submodule update --init --depth 1 linux`.

## Documents

Every tracked chapter, grouped by topic. The six generated pages in `ucode/` and `docs/display-formats.md` are
left out, and so are the per-batch instruction readings, which the last line covers.

### Start here

- [README.md](README.md): Reverse-engineering workspace overview and how to reproduce results
- [AGENTS.md](AGENTS.md): Project goal, evidence rules, toolchain and working rules
- [IRIX_FILES.md](IRIX_FILES.md): Proprietary SGI files a reader copies from their own IRIX install

### Hardware

- [docs/architecture.md](docs/architecture.md): Map of the whole pipe, its blocks and their connections
- [docs/command-table.md](docs/command-table.md): One canonical table of host tokens and display requests
- [docs/coverage.md](docs/coverage.md): Map of what the KONA workspace has covered, per block
- [docs/open-questions.md](docs/open-questions.md): Questions the binaries and sources do not yet answer
- [docs/hip.md](docs/hip.md): Host interface as the kernel driver shows it: DMA and interrupts
- [docs/dg.md](docs/dg.md): DG: how the kernel driver reaches the display generator
- [docs/xg.md](docs/xg.md): XG attach and reset sequence as the kernel driver runs it
- [docs/textport.md](docs/textport.md): The textport command port as the IO6 PROM speaks it, against the kernel driver's calls
- [docs/rm.md](docs/rm.md): Raster manager boards and texture memory, from the IR diagnostics
- [docs/ge.md](docs/ge.md): How the ARM firmware starts, feeds and saves the geometry engines
- [docs/ge-arm-tokens.md](docs/ge-arm-tokens.md): ARM-run host tokens, read one by one
- [docs/ge-routed-tokens.md](docs/ge-routed-tokens.md): Host tokens routed to the distributor and engines, not the ARM
- [docs/ge-shadow-words.md](docs/ge-shadow-words.md): Raster register shadow words named in the host command table
- [docs/gl-command-map.md](docs/gl-command-map.md): GL entry points mapped to their command words in libGLcore
- [docs/hw-explanations-kona-p1.md](docs/hw-explanations-kona-p1.md): What each hardware-facing routine does to the pipe, pilot 1

### Kernel driver

- [docs/kernel.md](docs/kernel.md): Kernel driver DMA ioctl structures, driver-side view
- [docs/kernel-functions.md](docs/kernel-functions.md): Kernel driver: one entry per function, read from disassembly
- [docs/kernel-objects.md](docs/kernel-objects.md): Kernel driver objects: one entry per archive member

### Client libraries

- [docs/opengl.md](docs/opengl.md): OpenGL driver: contexts, buffer configuration and display commands
- [docs/libraries.md](docs/libraries.md): Per-build libGL and libGLcore libraries of the Kona driver
- [docs/libgl.md](docs/libgl.md): The GLX client library libGL.so: function reference
- [docs/libglcore.md](docs/libglcore.md): libGLcore function reference, grouped by source file
- [docs/libglcore-functions.md](docs/libglcore-functions.md): libGLcore functions: immediate-mode senders and display-list compilers
- [docs/libglcore-driver-functions.md](docs/libglcore-driver-functions.md): Large routines of the Kona driver in libGLcore
- [docs/libglcore-driver-builds.md](docs/libglcore-driver-builds.md): Kona driver routines across the O32 and 64-bit builds
- [docs/libglcore-get-functions.md](docs/libglcore-get-functions.md): State-query functions of the Kona GL driver
- [docs/libglcore-list-records.md](docs/libglcore-list-records.md): libGLcore list records and dispatch wrappers, with build paths
- [docs/irisgl.md](docs/irisgl.md): IrisGL compatibility library libgl.so: function reference
- [docs/libfm.md](docs/libfm.md): The font-manager library libfm.so: function reference
- [docs/shared-libraries.md](docs/shared-libraries.md): Shared libraries and servers that carry the Kona pipe
- [docs/sample-implementation.md](docs/sample-implementation.md): Public OpenGL sample code that libGLcore descends from
- [docs/capability-trees.md](docs/capability-trees.md): Routine-level call trees for the N32 libGLcore build

### X server

- [docs/xserver.md](docs/xserver.md): The SGI X server Xsgi: function reference
- [docs/kona-ddx.md](docs/kona-ddx.md): The Kona X server module kona.so: function reference
- [docs/kona-so-functions.md](docs/kona-so-functions.md): The Kona X module: one entry per function
- [docs/x-server-glx.md](docs/x-server-glx.md): The server-side GLX module glx.so: function reference

### Diagnostics and setup tools

- [docs/irsaudit.md](docs/irsaudit.md): The irsaudit IR diagnostic: function reference
- [docs/kpm.md](docs/kpm.md): The kpm diagnostic and boundary-scan library
- [docs/setup-tools.md](docs/setup-tools.md): Setup and video-configuration tools: function reference
- [docs/setup-tool-functions.md](docs/setup-tool-functions.md): Setup tools: one entry per function
- [docs/pipe-tool-functions.md](docs/pipe-tool-functions.md): Pipe tools: one entry per function
- [docs/install-tools.md](docs/install-tools.md): Installed programs, scripts and config files and what they do
- [docs/data-files.md](docs/data-files.md): Diagnostic data files, format files and installed tools
- [docs/diag-messages.md](docs/diag-messages.md): Kernel driver messages and the calls that print them
- [docs/display-file-format.md](docs/display-file-format.md): Layout of the board's .vfo and .cmb display-format files

### Microcode

- [ucode/arm1.md](ucode/arm1.md): ARM firmware arm1.u and the host-token map
- [ucode/arm1_firmware.md](ucode/arm1_firmware.md): Structure of the ARM firmware: start-up, loop and handlers
- [ucode/arm1_functions.md](ucode/arm1_functions.md): Named functions and data of arm1.u, one row per symbol
- [ucode/dg.md](ucode/dg.md): Display tables: video formats, combinations, VOF sources and option images
- [ucode/ged.md](ucode/ged.md): The distributor: instruction set, registers and dispatch
- [ucode/ge.md](ucode/ge.md): Geometry-engine microcode files and how they relate
- [ucode/ge_isa.md](ucode/ge_isa.md): How the 72-bit geometry-engine instruction word is laid out
- [ucode/ge_ops.md](ucode/ge_ops.md): Operation codes of the geometry-engine program
- [ucode/ge_compute.md](ucode/ge_compute.md): What the geometry-engine routines compute, label by label
- [ucode/ge_handlers.md](ucode/ge_handlers.md): Geometry-engine labels: what each does and what reaches it
- [ucode/geif_commands.md](ucode/geif_commands.md): Geometry-engine commands read one by one from geif.u
- [ucode/tport.md](ucode/tport.md): tport.bin: a second ARM image with display-generator code

### Findings

- [docs/findings/ir2e-ir3-products.md](docs/findings/ir2e-ir3-products.md): InfiniteReality2E and InfiniteReality3 product facts for the command table
- [docs/findings/verify-corrections.md](docs/findings/verify-corrections.md): Independent check of the recent texture-load rows in the command table
- [docs/findings/clip-texgen-doubles.md](docs/findings/clip-texgen-doubles.md): User clip planes, texgen and double-precision colour
- [docs/findings/curve-quantiser.md](docs/findings/curve-quantiser.md): Curve quantiser getS2p7: the clamp and the halving
- [docs/findings/dac-cursor.md](docs/findings/dac-cursor.md): DAC cursor index advance, position port and pixel colours
- [docs/findings/display-chain-rounding.md](docs/findings/display-chain-rounding.md): Rounding in the display chain: colour map, gamma and cursor
- [docs/findings/feedback-records-and-power-up-combination.md](docs/findings/feedback-records-and-power-up-combination.md): Feedback records and who runs the power-up video combination
- [docs/findings/fog-polymode-smoothing.md](docs/findings/fog-polymode-smoothing.md): Fog, polygon mode, edge flags and smoothing coverage
- [docs/findings/gc-word4-polylines.md](docs/findings/gc-word4-polylines.md): X graphics-context word 4 bit 31 and four polyline rules
- [docs/findings/push-attrib-rdata.md](docs/findings/push-attrib-rdata.md): Why a GL client can wait forever after a push-attributes token
- [docs/findings/volume-detail-sharpen.md](docs/findings/volume-detail-sharpen.md): Volume textures, detail and sharpen: eight questions, answered from three sources

### Sources and tooling

- [docs/published-sources.md](docs/published-sources.md): Published papers, reports and patents on InfiniteReality, one entry each
- [docs/sources/README.md](docs/sources/README.md): Stored copies of the published sources, with SHA-256 hashes
- [docs/tooling.md](docs/tooling.md): Ghidra and the assembly-to-C pipeline in this workspace
- [docs/tooling-bakeoff.md](docs/tooling-bakeoff.md): Ghidra against the pipeline, bake-off on 20 functions
- [docs/inventory/README.md](docs/inventory/README.md): How the generated inventory tables are produced and read

### Instruction readings

- `docs/instruction-readings-kona-g*.md` (42 batch files): per-instruction readings, one batch per file.

## Hardware definitions

The register, token and word layouts decoded so far are described once, in TOML under `defs/`: one file per unit, each item with a grade (established, inferred or unknown) and a source. `gen/` holds what is generated from them: C headers, a Rust crate, Python decode helpers, flat JSON, a genxml export and one reference page per unit under `gen/docs/`. Do not edit `gen/`; edit the TOML and run `retools/tools/defs/defs-gen`. The `KONA_*_DECODE.h` files at the root are forwarding headers for the old include paths. `retools/tools/defs/ci-check` runs the checks CI runs.

## Running the tools and reproducing a result

The host needs Podman, git and python3. Everything else runs in a container built from
[retools/tools/Containerfile](retools/tools/Containerfile): MIPS binutils, dwarfdump, pyelftools, capstone, unicorn,
numpy, pycparser and spimdisasm, at pinned versions on a pinned Debian base.

    tools/setup-clone.sh --root /path/to/filled/root   # siblings at their pins, submodules, root/
    retools/tools/re-run python3 retools/tools/inventory.py          # the first run builds the image

`retools/tools/re-run COMMAND` runs `COMMAND` in the image with this repository mounted at `/work`, `root/`
included; with no command it opens a shell. `root/` is your own copy of the IRIX 6.5.30 files listed in
[IRIX_FILES.md](IRIX_FILES.md); they are never committed. Fill it from your install or media; the committed symlinks into it then resolve.

To reproduce a cited result:

- Generated tables under `docs/inventory/` come from `retools/tools/re-run python3 retools/tools/inventory.py`.
  `git status --short docs` shows nothing afterwards when your `root/` matches `scripts/inventory-root.sha256`.
- A claim an entry marks as established by execution is reproduced by the script in `retools/tools/kona/` that
  the entry names; its docstring says what it reproduces and how to run it, always as
  `retools/tools/re-run python3 retools/tools/kona/NAME.py ...`.
- The shared tooling (container definitions, wrappers, Ghidra scripts, the inventory, fact sheet and claim checker, and the device extractors) is the `retools/` submodule (sgi-retools); tools are run by their `retools/tools/` path from this repository's root (they find the workspace from the current directory), so a change to them is made there and the pin here moves with a commit. `scripts/` and `tools/` here hold only this repository's own config and data, and `ghidra/{processors,import,types}/kona-*` are links into `retools/ghidra/` (the Ghidra tests run them by those workspace paths). The optional Ghidra image is built from `retools/tools/Containerfile.ghidra` by
  `retools/tools/re-run --ghidra COMMAND`, and `retools/tools/re-run --ghidra-export OBJECT` writes decompiled C and
  function-similarity output as JSON (see `ghidra/README.md`); nothing else needs it. `retools/tools/README-analysis.md`
  describes the `.mdebug` importer and the kernel table extractors.

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4).
