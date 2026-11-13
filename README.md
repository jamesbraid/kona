# kona

Reverse-engineering workspace for SGI InfiniteReality (KONA) graphics.

## Start here

- To use the findings in code (FPGA builders, driver writers, tool authors), take the generated C headers and Rust crate from [generated/c](generated/c) and [generated/rust](generated/rust).
- To understand one chip, board unit or engine, read its directory under [devices/](devices/): `README.md` says how the hardware works, `registers.toml` holds every graded register, and `registers.md` is the generated table.
- Software data structures with a definition (the host command tokens, display requests and command words) are under [formats/](formats/), and the boards and the pipe's topology are under [platforms/](platforms/).
- How IRIX drives the hardware (the kernel driver, the OpenGL and X server code, the diagnostics, the microcode and the tools) is under [software/](software/).
- What is covered, and what is still open, is in [evidence/coverage.md](evidence/coverage.md) and [questions/README.md](questions/README.md). The routine readings, the generated inventory and the findings are in [evidence/](evidence/), the published sources in [references/documents/](references/documents/), and the third-party source trees, as submodules, in [references/code/](references/code/).
- The repository's own scripts and configuration are in [tools/](tools/); the shared toolkit is the `retools/` submodule.

The layout and working style follow Dominik Behr's
[gr2](https://github.com/techomancer/gr2) and
[gr4](https://github.com/techomancer/gr4). Proprietary IRIX binaries are not
tracked. Copy them from your own IRIX install into the ignored `root/`
directory as [evidence/irix-files.md](evidence/irix-files.md) describes; the symlinks into it are
committed. [AGENTS.md](AGENTS.md) has the project goal, the
binaries and evidence, the toolchain and the working rules;
[evidence/coverage.md](evidence/coverage.md) is the map of what is covered and what is
next.

Public sources are submodules under `references/code/`. `linux` carries the IP27 crossbar and widget
code (no IP35 platform); no open driver for KONA is known, so the
register and command findings rest on the IRIX binaries. Initialise only what you need, for example
`git submodule update --init --depth 1 references/code/linux`.

## Documents

Every tracked chapter, grouped by topic. The six generated pages in `software/ucode/` and `software/video/display-formats.md` are
left out, and so are the per-batch instruction readings, which the last line covers.

### Project files

- [README.md](README.md): Reverse-engineering workspace overview and how to reproduce results
- [AGENTS.md](AGENTS.md): Project goal, evidence rules, toolchain and working rules
- [evidence/irix-files.md](evidence/irix-files.md): Proprietary SGI files a reader copies from their own IRIX install

### Hardware

- [platforms/ir/architecture.md](platforms/ir/architecture.md): Map of the whole pipe, its blocks and their connections
- [formats/token/command-table.md](formats/token/command-table.md): One canonical table of host tokens and display requests
- [evidence/coverage.md](evidence/coverage.md): Map of what the KONA workspace has covered, per block
- [questions/README.md](questions/README.md): Questions the binaries and sources do not yet answer
- [devices/hip/README.md](devices/hip/README.md): Host interface as the kernel driver shows it: DMA and interrupts
- [devices/dg/README.md](devices/dg/README.md): DG: how the kernel driver reaches the display generator
- [devices/xg/README.md](devices/xg/README.md): XG attach and reset sequence as the kernel driver runs it
- [platforms/ir/textport.md](platforms/ir/textport.md): The textport command port as the IO6 PROM speaks it, against the kernel driver's calls
- [devices/rm/README.md](devices/rm/README.md): Raster manager boards and texture memory, from the IR diagnostics
- [devices/ge/README.md](devices/ge/README.md): How the ARM firmware starts, feeds and saves the geometry engines
- [devices/ge/ge-arm-tokens.md](devices/ge/ge-arm-tokens.md): ARM-run host tokens, read one by one
- [devices/ge/ge-routed-tokens.md](devices/ge/ge-routed-tokens.md): Host tokens routed to the distributor and engines, not the ARM
- [devices/ge/ge-shadow-words.md](devices/ge/ge-shadow-words.md): Raster register shadow words named in the host command table
- [software/opengl/gl-command-map.md](software/opengl/gl-command-map.md): GL entry points mapped to their command words in libGLcore
- [evidence/hw-explanations-kona-p1.md](evidence/hw-explanations-kona-p1.md): What each hardware-facing routine does to the pipe, pilot 1

### Kernel driver

- [software/kernel/kernel.md](software/kernel/kernel.md): Kernel driver DMA ioctl structures, driver-side view
- [software/kernel/kernel-functions.md](software/kernel/kernel-functions.md): Kernel driver: one entry per function, read from disassembly
- [software/kernel/kernel-objects.md](software/kernel/kernel-objects.md): Kernel driver objects: one entry per archive member

### Client libraries

- [software/opengl/opengl.md](software/opengl/opengl.md): OpenGL driver: contexts, buffer configuration and display commands
- [software/opengl/libraries.md](software/opengl/libraries.md): Per-build libGL and libGLcore libraries of the Kona driver
- [software/opengl/libgl.md](software/opengl/libgl.md): The GLX client library libGL.so: function reference
- [software/opengl/libglcore.md](software/opengl/libglcore.md): libGLcore function reference, grouped by source file
- [software/opengl/libglcore-functions.md](software/opengl/libglcore-functions.md): libGLcore functions: immediate-mode senders and display-list compilers
- [software/opengl/libglcore-driver-functions.md](software/opengl/libglcore-driver-functions.md): Large routines of the Kona driver in libGLcore
- [software/opengl/libglcore-driver-builds.md](software/opengl/libglcore-driver-builds.md): Kona driver routines across the O32 and 64-bit builds
- [software/opengl/libglcore-get-functions.md](software/opengl/libglcore-get-functions.md): State-query functions of the Kona GL driver
- [software/opengl/libglcore-list-records.md](software/opengl/libglcore-list-records.md): libGLcore list records and dispatch wrappers, with build paths
- [software/irisgl/irisgl.md](software/irisgl/irisgl.md): IrisGL compatibility library libgl.so: function reference
- [software/irisgl/libfm.md](software/irisgl/libfm.md): The font-manager library libfm.so: function reference
- [software/userland/shared-libraries.md](software/userland/shared-libraries.md): Shared libraries and servers that carry the Kona pipe
- [software/opengl/sample-implementation.md](software/opengl/sample-implementation.md): Public OpenGL sample code that libGLcore descends from
- [software/opengl/capability-trees.md](software/opengl/capability-trees.md): Routine-level call trees for the N32 libGLcore build

### X server

- [software/xsgi/xserver.md](software/xsgi/xserver.md): The SGI X server Xsgi: function reference
- [software/xsgi/kona-ddx.md](software/xsgi/kona-ddx.md): The Kona X server module kona.so: function reference
- [software/xsgi/kona-so-functions.md](software/xsgi/kona-so-functions.md): The Kona X module: one entry per function
- [software/xsgi/x-server-glx.md](software/xsgi/x-server-glx.md): The server-side GLX module glx.so: function reference

### Diagnostics and setup tools

- [software/diags/irsaudit.md](software/diags/irsaudit.md): The irsaudit IR diagnostic: function reference
- [software/diags/kpm.md](software/diags/kpm.md): The kpm diagnostic and boundary-scan library
- [software/userland/setup-tools.md](software/userland/setup-tools.md): Setup and video-configuration tools: function reference
- [software/userland/setup-tool-functions.md](software/userland/setup-tool-functions.md): Setup tools: one entry per function
- [software/userland/pipe-tool-functions.md](software/userland/pipe-tool-functions.md): Pipe tools: one entry per function
- [software/userland/install-tools.md](software/userland/install-tools.md): Installed programs, scripts and config files and what they do
- [software/diags/data-files.md](software/diags/data-files.md): Diagnostic data files, format files and installed tools
- [software/kernel/diag-messages.md](software/kernel/diag-messages.md): Kernel driver messages and the calls that print them
- [software/video/display-file-format.md](software/video/display-file-format.md): Layout of the board's .vfo and .cmb display-format files

### Microcode

- [software/ucode/arm1.md](software/ucode/arm1.md): ARM firmware arm1.u and the host-token map
- [software/ucode/arm1_firmware.md](software/ucode/arm1_firmware.md): Structure of the ARM firmware: start-up, loop and handlers
- [software/ucode/arm1_functions.md](software/ucode/arm1_functions.md): Named functions and data of arm1.u, one row per symbol
- [software/ucode/dg.md](software/ucode/dg.md): Display tables: video formats, combinations, VOF sources and option images
- [software/ucode/ged.md](software/ucode/ged.md): The distributor: instruction set, registers and dispatch
- [software/ucode/ge.md](software/ucode/ge.md): Geometry-engine microcode files and how they relate
- [software/ucode/ge_isa.md](software/ucode/ge_isa.md): How the 72-bit geometry-engine instruction word is laid out
- [software/ucode/ge_ops.md](software/ucode/ge_ops.md): Operation codes of the geometry-engine program
- [software/ucode/ge_compute.md](software/ucode/ge_compute.md): What the geometry-engine routines compute, label by label
- [software/ucode/ge_handlers.md](software/ucode/ge_handlers.md): Geometry-engine labels: what each does and what reaches it
- [software/ucode/geif_commands.md](software/ucode/geif_commands.md): Geometry-engine commands read one by one from geif.u
- [software/ucode/tport.md](software/ucode/tport.md): tport.bin: a second ARM image with display-generator code

### Findings

- [evidence/findings/ir2e-ir3-products.md](evidence/findings/ir2e-ir3-products.md): InfiniteReality2E and InfiniteReality3 product facts for the command table
- [evidence/findings/verify-corrections.md](evidence/findings/verify-corrections.md): Independent check of the recent texture-load rows in the command table
- [evidence/findings/clip-texgen-doubles.md](evidence/findings/clip-texgen-doubles.md): User clip planes, texgen and double-precision colour
- [evidence/findings/curve-quantiser.md](evidence/findings/curve-quantiser.md): Curve quantiser getS2p7: the clamp and the halving
- [evidence/findings/dac-cursor.md](evidence/findings/dac-cursor.md): DAC cursor index advance, position port and pixel colours
- [evidence/findings/display-chain-rounding.md](evidence/findings/display-chain-rounding.md): Rounding in the display chain: colour map, gamma and cursor
- [evidence/findings/feedback-records-and-power-up-combination.md](evidence/findings/feedback-records-and-power-up-combination.md): Feedback records and who runs the power-up video combination
- [evidence/findings/fog-polymode-smoothing.md](evidence/findings/fog-polymode-smoothing.md): Fog, polygon mode, edge flags and smoothing coverage
- [evidence/findings/gc-word4-polylines.md](evidence/findings/gc-word4-polylines.md): X graphics-context word 4 bit 31 and four polyline rules
- [evidence/findings/push-attrib-rdata.md](evidence/findings/push-attrib-rdata.md): Why a GL client can wait forever after a push-attributes token
- [evidence/findings/volume-detail-sharpen.md](evidence/findings/volume-detail-sharpen.md): Volume textures, detail and sharpen: eight questions, answered from three sources

### Sources and tooling

- [references/documents/published-sources.md](references/documents/published-sources.md): Published papers, reports and patents on InfiniteReality, one entry each
- [references/documents/README.md](references/documents/README.md): Stored copies of the published sources, with SHA-256 hashes
- [evidence/tooling.md](evidence/tooling.md): Ghidra and the assembly-to-C pipeline in this workspace
- [evidence/tooling-bakeoff.md](evidence/tooling-bakeoff.md): Ghidra against the pipeline, bake-off on 20 functions
- [evidence/inventory/README.md](evidence/inventory/README.md): How the generated inventory tables are produced and read

### Instruction readings

- `evidence/instruction-readings-kona-g*.md` (42 batch files): per-instruction readings, one batch per file.

## Hardware definitions

The register, token and word layouts decoded so far are described once, in TOML: `devices/<unit>/registers.toml` for each chip or board unit and `formats/<name>/format.toml` for each software data structure, every item with a grade (established, inferred or unknown) and a source. `generated/` holds what is generated from them: C headers, a Rust crate, Python decode helpers, flat JSON and a genxml export, and `registers.md` (`format.md`) beside each source is the reference page for the unit. Do not edit `generated/`; edit the TOML and run `retools/tools/defs/defs-gen`. `retools/tools/defs/ci-check` runs the checks CI runs.

## Running the tools and reproducing a result

The host needs Podman, git and python3. Everything else runs in a container built from
[retools/tools/Containerfile](retools/tools/Containerfile): MIPS binutils, dwarfdump, pyelftools, capstone, unicorn,
numpy, pycparser and spimdisasm, at pinned versions on a pinned Debian base.

    tools/setup-clone.sh --root /path/to/filled/root   # siblings at their pins, submodules, root/
    retools/tools/re-run python3 retools/tools/inventory.py          # the first run builds the image

`retools/tools/re-run COMMAND` runs `COMMAND` in the image with this repository mounted at `/work`, `root/`
included; with no command it opens a shell. `root/` is your own copy of the IRIX 6.5.30 files listed in
[evidence/irix-files.md](evidence/irix-files.md); they are never committed. Fill it from your install or media; the committed symlinks into it then resolve.

To reproduce a cited result:

- Generated tables under `evidence/inventory/` come from `retools/tools/re-run python3 retools/tools/inventory.py`.
  `git status --short docs` shows nothing afterwards when your `root/` matches `tools/config/inventory-root.sha256`.
- A claim an entry marks as established by execution is reproduced by the script in `retools/tools/kona/` that
  the entry names; its docstring says what it reproduces and how to run it, always as
  `retools/tools/re-run python3 retools/tools/kona/NAME.py ...`.
- The shared tooling (container definitions, wrappers, Ghidra scripts, the inventory, fact sheet and claim checker, and the device extractors) is the `retools/` submodule (sgi-retools); tools are run by their `retools/tools/` path from this repository's root (they find the workspace from the current directory), so a change to them is made there and the pin here moves with a commit. `tools/` here holds only this repository's own scripts, config and data, and `tools/ghidra/{processors,import,types}/kona-*` are links into `retools/ghidra/` (the Ghidra tests run them by those workspace paths). The optional Ghidra image is built from `retools/tools/Containerfile.ghidra` by
  `retools/tools/re-run --ghidra COMMAND`, and `retools/tools/re-run --ghidra-export OBJECT` writes decompiled C and
  function-similarity output as JSON (see `tools/ghidra/README.md`); nothing else needs it. `retools/tools/README-analysis.md`
  describes the `.mdebug` importer and the kernel table extractors.

Licence: BSD-3-Clause, see [LICENSE](LICENSE). The scripts descend from gr4's
and keep its notice in [retools/tools/LICENSE-gr4](retools/tools/LICENSE-gr4).
