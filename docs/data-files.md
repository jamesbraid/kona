# Diagnostic data, format files and installed tools

Sources: the files of `usr/diags/IR/data/`, `usr/diags/IR/ucode/`, `usr/gfx/ucode/KONA/` and the installed tools, scripts and kernel configuration files of the graphics packages (6.5.30m). Each file is read by the program named in the row; roles are **established** from the file contents where a header or first lines say what they hold, and **inferred** from the names otherwise.

## Boundary-scan netlists and test vectors

**Established** (first lines of the files; `irsaudit` and `kpm` read them through the scan library, [kpm.md](kpm.md#boundary-scan-library-jt_)). Every board configuration has three files that share a stem and come in a plain and a compressed (`.Z`, `compress(1)`) copy, the compressed copy being what the diagnostic opens first:

| Kind | What it holds |
|---|---|
| `*.netmap` | the net map of one scan chain: one line per boundary-scan bit giving the bit index, the nets it drives or senses and the chip pin (`rm100.im1.imp.imp8dc:impbdg_data[0]` and the like); the connection tables of [rm.md](rm.md) and [dg.md](dg.md) are read from these |
| `*.stuck` | stuck-at test vectors for the chain: a header naming the virtual chain file and the net map, the chain length in bits (6600 for the raster board `rm10`) and the vector count, then one line of bits per vector |
| `*.short` | shorts test vectors in the same format (more vectors per chain than the stuck-at set: 14 against 2 for `rm10`) |

| Family | Role | Files |
|---|---|---|

## Built-in self-test descriptions

**Established** (file contents). `*.tcbist` and `*.qtcbist` list the memory instances of one chip that its test-control built-in self test covers, one line per instance (`tcbist_ram 1 core.in.idu0.ififo.dpr0`); the `q` files are **inferred** to be the quick variant of the same list. `*.sdbist` list the data bits of the SDRAM a chip attaches (`sdbist_bit 96 sdram8_data[0]`), one file per memory organisation (the name gives the depth and width, for example `tm1_256Kx16.sdbist`). They are loaded by the `jt_load_internal_bist` and `jt_load_external_bist` calls of the scan library ([irsaudit.md](irsaudit.md)).

| Chip or memory | Files |
|---|---|
| Group | Role | Files |
|---|---|---|
| gold CRC files | the CRC logs `irsaudit` compares against with `-goldfile`; each is named for the hardware generation it was taken for |  |
| video formats in the data directory | `.vfo` video-format files the diagnostic loads by name for its video tests, in the binary symbol-database format ([dg.md](dg.md)) |  |

**Unknown: no shipped software or published source depends on it:** what the gold-file suffix letters `h`, `hl`, `k` and `oh` stand for. Routes tried: the `irsaudit` option text, strings and the file contents.

## Video format, combination and monitor files

**Established** (`usr/gfx/ucode/KONA/dg4/vfo/README` and the file headers). A `.vfo` file is a compiled video format in the symbol-database binary format whose header reads "dKona video format"; the `README` beside them is a generated listing of every format with its timing (total and active lines and pixels, frame rate, fields per frame, pixel clock, sync and porch lengths, the line analysis), so the numbers need not be repeated here. A `.cmb` file is a "Kona video format combination": which format each channel of the pipe drives, named by the formats' `.vfo` files (`1280x1024+NTSC_60.cmb` combines a 1280x1024 channel with an NTSC channel; a leading `2@`, `3@` or `8@` is a channel count). The `.monitor` and `.vof` files under `vof/` describe the video output format in the older text syntax (`default.monitor` is a fake display with field and porch counts).

| Group | Role | Files |
|---|---|---|
| video formats | one format per file; the name is width x height, then the field rate and an optional scan suffix (`i` interlaced, `if` interlaced with a field flag, `p` progressive, `psf` progressive segmented frame, `s` and `q` the stereo and quad-buffer rates) |  |
| combinations | channel combinations of those formats | `1280x1024+4@640x480_60.cmb`, `1280x907+5@640x453_60.cmb`, `2@1280x1024_60.cmb`, `2@1280x1024_72.cmb`, `3@1024x768_60+1280x959_30i.cmb`, `3@1280x1024_60.cmb`, `7@800x600_60+NTSC.cmb`, `8@640x480_60.cmb`, `8@800x600_60.cmb` |
| monitor and output format files | the older text-format display descriptions |  |
| listing and symbols | the format listing and the symbol table of the geometry-engine microcode | `README`, `ge_symbols` |

## Installed tools, scripts and configuration

**Established** (file type and the first lines of each file). The graphics packages install these beside the drivers; the function-level descriptions are in [kpm.md](kpm.md), [irsaudit.md](irsaudit.md), [setup-tools.md](setup-tools.md) and [xserver.md](xserver.md).

| File | What it is |
|---|---|
| `kpm`, `ireeprom`, `postmortem` | `usr/gfx/KONA/bin/`: the pipe post-mortem and viewer ([kpm.md](kpm.md)), the display EEPROM utility ([setup-tools.md](setup-tools.md#ireeprom)), and a shell script that collects a post-mortem dump into the crash directory and passes it to the availability monitor |
| `availmon` | `usr/diags/IR/bin/`: a shell wrapper that runs `irsaudit` and manages its summary and result files in the crash directory (usage: name, summary file, result file) |
| `irsaudit`, `hyper` | the IR diagnostic and the hyperpipe test program ([irsaudit.md](irsaudit.md)) |
| `irsaudit_disasm.txt`, `irsaudit_dynsym_disasm.txt` | disassembly listings of the diagnostic and of its dynamic-symbol stubs; generated from the binary, not shipped |
| `arm1_nic.u`, `diag_arm_init.u`, `ge_diag_init.u`, `ge_diag_init.hex` | the diagnostic's own microcode images in `usr/diags/IR/ucode/`: the ARM firmware variant for the network-interface (serial-number) boards, a short ARM start-up program, and the geometry-engine initialisation program (the `.hex` form is the same program as hexadecimal words); they sit beside the full firmware images of [ucode/arm1.md](../ucode/arm1.md) |
| `gfxinfo`, `gfxtopology`, `setmon`, `dmconf`, `ircombine`, `sgcombine`, `sdbutil`, `hyperpipeinfo`, `xsetmon` | the setup and video-configuration tools ([setup-tools.md](setup-tools.md)); `gfxtopology` is a Perl script and `hyperpipeinfo` prints the hyperpipe configuration of a display (usage `-d <displayname>`) |
| `startgfx`, `stopgfx` | shell scripts that start and stop the window system |
| `Xsgi` | the X server ([xserver.md](xserver.md)) |
| `konavis.so` | the X module that holds the visual tables of the Kona screen: sets of small, medium and large visuals per image-processor revision (`konSmVisuals_imp8`, `konMedVisuals_imp8`, `konLgVisuals_imp8` and the `_imp8c` forms) with their private records |
| `tport.o` | the kernel textport STREAMS driver, a member of `tport.a` ([setup-tools.md](setup-tools.md#kernel-textport-tporta)) |
| `Dmconf`, `Ircombine`, `XSetmon` | the X resource files of the three graphical tools; each starts with the RapidApp generator banner and turns on the SGI look and feel schemes |
| `gfx.sm`, `gfxs` and the tuning file `gfx` | the kernel configuration: `gfx.sm` is the system file that lists the graphics drivers autoconfig links (the Kona driver among them, "KONA graphics w/ HIP2 via Xtalk bus"), `gfxs` is the master file of the graphics streams device and sets the board limit (128 heads on IP27 and IP35, 8 elsewhere), and `gfx` holds the tunable parameters |
