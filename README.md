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
