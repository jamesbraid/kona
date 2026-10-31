# Diagnostic data, format files and installed tools

Sources: the files of `usr/diags/IR/data/`, `usr/diags/IR/ucode/`, `usr/gfx/ucode/KONA/` and the installed tools, scripts and kernel configuration files of the graphics packages (6.5.30m). Each file is read by the program named in the row; roles are **established** from the file contents where a header or first lines say what they hold, and **inferred** from the names otherwise.

## Boundary-scan netlists and test vectors

**Established** (first lines of the files; `irsaudit` and `kpm` read them through the scan library, [kpm.md](kpm.md#boundary-scan-library-jt_)). Every board configuration has three files that share a stem and come in a plain and a compressed (`.Z`, `compress(1)`) copy, the compressed copy being what the diagnostic opens first:

| Kind | What it holds |
|---|---|
| `*.netmap` | the net map of one scan chain: one line per boundary-scan bit giving the bit index, the nets it drives or senses and the chip pin (`rm100.im1.imp.imp8dc:impbdg_data[0]` and the like); the connection tables of [rm.md](rm.md) and [dg.md](dg.md) are read from these |
| `*.stuck` | stuck-at test vectors for the chain: a header naming the virtual chain file and the net map, the chain length in bits (6600 for the raster board `rm10`) and the vector count, then two lines of bits per vector |
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

**Established** (`usr/gfx/ucode/KONA/dg4/vfo/README` and the file headers). A `.vfo` file is a compiled video format in the symbol-database binary format whose header names the `dVideoFormatCompiler` program; the `README` beside them is a generated listing of every format with its timing (total and active lines and pixels, frame rate, fields per frame, pixel clock, sync and porch lengths, the line analysis), so the numbers need not be repeated here. A `.cmb` file is a "Kona video format combination": which format each channel of the pipe drives, named by the formats' `.vfo` files (`1280x1024+NTSC_60.cmb` combines a 1280x1024 channel with an NTSC channel; a leading `2@`, `3@` or `8@` is a channel count). The `.monitor` and `.vof` files under `vof/` describe the video output format in the older text syntax (`default.monitor` is a fake display with field and porch counts).

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

## Per-file register of the diagnostic data

One row per file in `usr/diags/IR/data/` and the listings beside it. A script read the first lines of each file to fill the figures, so every row is labelled inferred until a reader has opened that file; the family descriptions are established from the file contents.

### Listings of the diagnostic program

**Established** (file headers and first lines). The two files in `usr/diags/IR/` are text dumps of `irsaudit`, not inputs it reads. The first is an objdump disassembly of that binary (its first line names the ELF32 big-endian MIPS file it came from); the second is its dynamic symbol table in readelf layout.

| File | Holds | Lines | Content | Label |
|---|---|---|---|---|
| `usr/diags/IR/irsaudit_disasm.txt` | objdump text listing | 358272 | objdump of `usr/diags/IR/bin/irsaudit`, sections `.MIPS.stubs`, `.text` and `.init`, 1171 labelled routines | inferred |
| `usr/diags/IR/irsaudit_dynsym_disasm.txt` | readelf symbol table listing | 1805 | readelf dynamic symbol table of `usr/diags/IR/bin/irsaudit`, 1802 numbered entries | inferred |

### Gold CRC logs

**Established** (file contents). Each `irsaudit.*.gold` file is the golden log of CRC words that `irsaudit -goldfile` compares against. Sections begin with `#` and name a test and a configuration tag such as `g2r1t64` or `g4r4t16`; the tag's fields are not spelled out in the files, so their meaning is **unknown**. The `.Z` copy of a log has the same contents as the plain file where both exist.

| File | Holds | Lines | Sections | First section | Last section | Read by | Label |
|---|---|---|---|---|---|---|---|
| `usr/diags/IR/data/irsaudit.h.gold` | golden CRC words of the test sections of the `irsaudit` run | 203015 | 2402 | `#clearfb.g2r1t64` | `#SetupChTVO.g4r4t16` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/irsaudit.h.gold.Z` | golden CRC words of the test sections of the `irsaudit` run | 203015 | 2402 | `#clearfb.g2r1t64` | `#SetupChTVO.g4r4t16` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/irsaudit.hl.gold` | golden CRC words of the test sections of the `irsaudit` run | 39774 | 764 | `#clearfb.g2r1t64` | `#SetupChTVO.g4r2t16` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/irsaudit.hl.gold.Z` | golden CRC words of the test sections of the `irsaudit` run | 39774 | 764 | `#clearfb.g2r1t64` | `#SetupChTVO.g4r2t16` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/irsaudit.k.gold.Z` | golden CRC words of the test sections of the `irsaudit` run | 79327 | 967 | `#clearfb.g4r1t64` | `#texfmt3d_draw.g4r4t16` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/irsaudit.oh.gold` | golden CRC words of the test sections of the `irsaudit` run | 29932 | 416 | `#clearfb.g4r1t1024` | `#rm_crc_imptest1.g4r4t1024` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/irsaudit.oh.gold.Z` | golden CRC words of the test sections of the `irsaudit` run | 29932 | 416 | `#clearfb.g4r1t1024` | `#rm_crc_imptest1.g4r4t1024` | `usr/diags/IR/bin/irsaudit` | inferred |

### Built-in self-test lists

**Established** (file contents). Each `*.tcbist` (and `*.qtcbist`, the shorter list) names the RAM instances one chip's test-control self test covers, one `tcbist_ram` line per instance, followed by the reset and control lines the test sequence uses. Chip and memory names are the ones the file's own instance names give.

| File | Holds | Lines | RAM instances | First instance | Last instance | Read by | Label |
|---|---|---|---|---|---|---|---|
| `usr/diags/IR/data/bef1.qtcbist` | RAM instances in the built-in self test of the `bef1` chip | 190 | 39 | `tcbist_ram 1 core.in.idu0.ififo.dpr0` | `tcbist_ram 4 core.in.idu7.ififo.dpr3` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/bef1.tcbist` | RAM instances in the built-in self test of the `bef1` chip | 1090 | 39 | `tcbist_ram 1 core.in.idu0.ififo.dpr0` | `tcbist_ram 4 core.in.idu7.ififo.dpr3` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fm2.qtcbist` | RAM instances in the built-in self test of the `fm2` chip | 24 | 1 | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fm2.tcbist` | RAM instances in the built-in self test of the `fm2` chip | 124 | 1 | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fm2null.qtcbist` | RAM instances in the built-in self test of the `fm2null` chip | 24 | 1 | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fm2null.tcbist` | RAM instances in the built-in self test of the `fm2null` chip | 124 | 1 | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `tcbist_ram 1 fm2_core1.imp_sm1.imp_ram1.impram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/ged1.qtcbist` | RAM instances in the built-in self test of the `ged1` chip | 138 | 51 | `tcbist_ram 1 back.pix.dprb0` | `tcbist_ram 51 front.hip.data_ram0` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/ged1.tcbist` | RAM instances in the built-in self test of the `ged1` chip | 638 | 51 | `tcbist_ram 1 back.pix.dprb0` | `tcbist_ram 51 front.hip.data_ram0` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/ged1b.qtcbist` | RAM instances in the built-in self test of the `ged1b` chip | 132 | 45 | `tcbist_ram 1 back.hqa.hq.gf0.frC` | `tcbist_ram 45 front.hip.data_ram0` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/ged1b.tcbist` | RAM instances in the built-in self test of the `ged1b` chip | 632 | 45 | `tcbist_ram 1 back.hqa.hq.gf0.frC` | `tcbist_ram 45 front.hip.data_ram0` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/hip1.qtcbist` | RAM instances in the built-in self test of the `hip1` chip | 63 | 24 | `tcbist_ram 1 core.pipe.in.icu.ram.dpr0` | `tcbist_ram 35 core.tbus.dma.odma.ram.dpr7` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/hip1.tcbist` | RAM instances in the built-in self test of the `hip1` chip | 263 | 24 | `tcbist_ram 1 core.pipe.in.icu.ram.dpr0` | `tcbist_ram 35 core.tbus.dma.odma.ram.dpr7` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/hip1b.qtcbist` | RAM instances in the built-in self test of the `hip1b` chip | 41 | 18 | `tcbist_ram 1 core.pipe.in.icu.ram.dpr0` | `tcbist_ram 35 core.tbus.dma.odma.ram.dpr7` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/hip1b.tcbist` | RAM instances in the built-in self test of the `hip1b` chip | 141 | 18 | `tcbist_ram 1 core.pipe.in.icu.ram.dpr0` | `tcbist_ram 35 core.tbus.dma.odma.ram.dpr7` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/pg2.qtcbist` | RAM instances in the built-in self test of the `pg2` chip | 95 | 8 | `tcbist_ram 0 i_2.i_2.i_16.i_2` | `tcbist_ram 7 i_2.i_34` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/pg2b.qtcbist` | RAM instances in the built-in self test of the `pg2b` chip | 95 | 8 | `tcbist_ram 0 i_2.i_2.i_16.i_2` | `tcbist_ram 7 i_2.i_34` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/pg2b.tcbist` | RAM instances in the built-in self test of the `pg2b` chip | 595 | 8 | `tcbist_ram 0 i_2.i_2.i_16.i_2` | `tcbist_ram 7 i_2.i_34` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tf1.qtcbist` | RAM instances in the built-in self test of the `tf1` chip | 87 | 32 | `tcbist_ram 1 utop.uib.urbusinf.rbus_fifo` | `tcbist_ram 32 utop.utd.utexinf.utminf_all.utminf0.utmfifo.utmfifo_ram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tf1c.qtcbist` | RAM instances in the built-in self test of the `tf1c` chip | 87 | 32 | `tcbist_ram 1 utop.uib.urbusinf.urbusinf.rbus_fifo` | `tcbist_ram 32 utop.utd.utexinf.utminf_all.utminf0.utmfifo.utmfifo_ram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tf1c.tcbist` | RAM instances in the built-in self test of the `tf1c` chip | 387 | 32 | `tcbist_ram 1 utop.uib.urbusinf.urbusinf.rbus_fifo` | `tcbist_ram 32 utop.utd.utexinf.utminf_all.utminf0.utmfifo.utmfifo_ram` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tg1.qtcbist` | RAM instances in the built-in self test of the `tg1` chip | 44 | 5 | `tcbist_ram 1 tg_fend.sfifo_n_bist.fifo0` | `tcbist_ram 5 tg_fend.regfifo` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tg1.tcbist` | RAM instances in the built-in self test of the `tg1` chip | 244 | 5 | `tcbist_ram 1 tg_fend.sfifo_n_bist.fifo0` | `tcbist_ram 5 tg_fend.regfifo` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tg2.tcbist` | RAM instances in the built-in self test of the `tg2` chip | 244 | 5 | `tcbist_ram 1 tg_fend.sfifo_n_bist.fifo0` | `tcbist_ram 5 tg_fend.regfifo` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tm1c.qtcbist` | RAM instances in the built-in self test of the `tm1c` chip | 7 | 0 | `` | `` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/voc1.qtcbist` | RAM instances in the built-in self test of the `voc1` chip | 150 | 15 | `tcbist_ram 1 voc1_core.resizing1.resizing_sch1.vert_rgb3.memory.dpr0` | `tcbist_ram 15 voc1_core.vof1.vsd_lut` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/voc1.tcbist` | RAM instances in the built-in self test of the `voc1` chip | 950 | 15 | `tcbist_ram 1 voc1_core.resizing1.resizing_sch1.vert_rgb3.memory.dpr0` | `tcbist_ram 15 voc1_core.vof1.vsd_lut` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/voc1b.qtcbist` | RAM instances in the built-in self test of the `voc1b` chip | 188 | 37 | `tcbist_ram 13 voc1_core.resizing1.odd_mem` | `tcbist_ram 13 voc1_core.resizing1.odd_mem-7` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/voc1b.tcbist` | RAM instances in the built-in self test of the `voc1b` chip | 1071 | 20 | `tcbist_ram 13 voc1_core.resizing1.odd_mem` | `tcbist_ram 13 voc1_core.resizing1.odd_mem-7` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/xmap8.qtcbist` | RAM instances in the built-in self test of the `xmap8` chip | 77 | 22 | `tcbist_ram 1 core.pix_interp.glyph_ram` | `tcbist_ram 22 core.fastlist.FL_DATA` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/xmap8.tcbist` | RAM instances in the built-in self test of the `xmap8` chip | 377 | 22 | `tcbist_ram 1 core.pix_interp.glyph_ram` | `tcbist_ram 22 core.fastlist.FL_DATA` | `usr/diags/IR/bin/irsaudit` | inferred |

### SDRAM bit lists

**Established** (file contents). Each `*.sdbist` gives one `sdbist_bit` line per SDRAM data or address bit that the external memory test checks, with the bit index and the net name. One file exists per memory organisation (the file name gives depth and width).

| File | Holds | Lines | Bits | First bit | Last bit | Read by | Label |
|---|---|---|---|---|---|---|---|
| `usr/diags/IR/data/bef1_256Kx16.sdbist` | SDRAM bits checked for the `bef1_256Kx16` memory | 187 | 174 | `sdbist_bit 96 sdram8_data[0]` | `sdbist_bit 287 sdram0_addr[8]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/hip1_2Mx8.sdbist` | SDRAM bits checked for the `hip1_2Mx8` memory | 101 | 88 | `sdbist_bit 49 sd_addr1[11]` | `sdbist_bit 147 sd_addr0[10]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/imp8_256Kx16.sdbist` | SDRAM bits checked for the `imp8_256Kx16` memory | 181 | 168 | `sdbist_bit 11 fb3_data[0]` | `sdbist_bit 254 fb0_addr[8]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/imp8d_16Mx16.sdbist` | SDRAM bits checked for the `imp8d_16Mx16` memory | 391 | 376 | `sdbist_bit 19 fb7_data[0]` | `sdbist_bit 525 fb0_addr[13]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tm1_1Mx16.sdbist` | SDRAM bits checked for the `tm1_1Mx16` memory | 125 | 112 | `sdbist_bit 0 dramd_data[0]` | `sdbist_bit 141 drama_addr[10]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tm1_256Kx16.sdbist` | SDRAM bits checked for the `tm1_256Kx16` memory | 117 | 104 | `sdbist_bit 0 dramd_data[0]` | `sdbist_bit 139 drama_addr[8]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tm1_2Mx8.sdbist` | SDRAM bits checked for the `tm1_2Mx8` memory | 125 | 112 | `sdbist_bit 0 dramd_data[0]` | `sdbist_bit 141 drama_addr[10]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tm1_4Mx8.sdbist` | SDRAM bits checked for the `tm1_4Mx8` memory | 125 | 112 | `sdbist_bit 0 dramd_data[0]` | `sdbist_bit 141 drama_addr[10]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/tm1c_16Mx16.sdbist` | SDRAM bits checked for the `tm1c_16Mx16` memory | 138 | 124 | `sdbist_bit 0 dramd_data[0]` | `sdbist_bit 151 drama_addr[13]` | `usr/diags/IR/bin/irsaudit` | inferred |

### Scan-chain net maps

**Established** (file contents, all 99 net map files). Each `*.netmap` has one line per boundary-scan bit: the bit index, the net names that bit drives or senses (`-` when it has none), then the chip pin, separated by tabs. Indices run from 0 to the bit count minus one in every file. The `irsaudit` binary holds the `read_netmap`, `print_netmap` and `dispose_netmap` routines, so it reads these files. Each row gives the bit count, the number of unnamed bits and the first and last lines.

| File | Holds | Bits | Unnamed bits | First bit | Last bit | Read by | Label |
|---|---|---|---|---|---|---|---|
| `usr/diags/IR/data/bpln.netmap.Z` | compressed net map of the `bpln` scan chain, one line per boundary-scan bit. | 12682 | 9486 | `0 rm.tgpg_scrdy_l rm.pg:tgpg_scrdy_l` | `12681 - gebrd.hip:fci_db_l[31]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/bpln_hilo.netmap.Z` | compressed net map of the `bpln_hilo` scan chain, one line per boundary-scan bit. | 12726 | 9530 | `0 - rm0.tmm0.tm:Zdramd_data[0]` | `12725 - gebrd.hip:EXTRA_CRC_0[7]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/bpln_hilolite.netmap.Z` | compressed net map of the `bpln_hilolite` scan chain, one line per boundary-scan bit. | 8296 | 5100 | `0 rm0.tgpg_scrdy_l rm0.pg:tgpg_scrdy_l` | `8295 - gebrd.hip:EXTRA_CRC_0[7]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/bpln_oheo.netmap` | uncompressed net map of the `bpln_oheo` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 12870 | 9424 | `0 - tm90.tmm0.tm1c.tm1cc:Zdramd_data[0]` | `12869 - gebrd.hip:EXTRA_CRC_0[7]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/bpln_oheo.netmap.Z` | compressed net map of the `bpln_oheo` scan chain, one line per boundary-scan bit. The plain copy holds the same content. | 12870 | 9424 | `0 - tm90.tmm0.tm1c.tm1cc:Zdramd_data[0]` | `12869 - gebrd.hip:EXTRA_CRC_0[7]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc.netmap.Z` | compressed net map of the `dg4_2voc` scan chain, one line per boundary-scan bit. | 2166 | 952 | `0 fb_rd_fld voc00:fb_rd_fld` | `2165 loc_clk fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_dacsamp.netmap.Z` | compressed net map of the `dg4_2voc_dacsamp` scan chain, one line per boundary-scan bit. | 2166 | 757 | `0 fb_rd_fld voc00:fb_rd_fld` | `2165 loc_clk fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_dplex_dacsamp.netmap` | uncompressed net map of the `dg4_2voc_dplex_dacsamp` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 4461 | 2585 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `4460 - ddo3.voc:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_dplex_dacsamp.netmap.Z` | compressed net map of the `dg4_2voc_dplex_dacsamp` scan chain, one line per boundary-scan bit. The plain copy holds the same content. | 4461 | 2585 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `4460 - ddo3.voc:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_dplex_dacsamp_lvds.netmap` | uncompressed net map of the `dg4_2voc_dplex_dacsamp_lvds` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 4461 | 2524 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `4460 - ddo3.voc:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_dplex_dacsamp_lvds.netmap.Z` | compressed net map of the `dg4_2voc_dplex_dacsamp_lvds` scan chain, one line per boundary-scan bit. The plain copy holds the same content. | 4461 | 2524 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `4460 - ddo3.voc:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_dvp.netmap.Z` | compressed net map of the `dg4_2voc_dvp` scan chain, one line per boundary-scan bit. | 2774 | 1283 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `2773 - dvp1.voc1e:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_hdgvo.netmap` | uncompressed net map of the `dg4_2voc_hdgvo` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 2774 | 1397 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `2773 hdgvo.hdgvo_bid_[11] hdgvo.voc5e:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_2voc_hdgvo.netmap.Z` | compressed net map of the `dg4_2voc_hdgvo` scan chain, one line per boundary-scan bit. The plain copy holds the same content. | 2774 | 1397 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `2773 hdgvo.hdgvo_bid_[11] hdgvo.voc5e:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_8voc.netmap.Z` | compressed net map of the `dg4_8voc` scan chain, one line per boundary-scan bit. | 4776 | 2087 | `0 fb_rd_fld voc00:fb_rd_fld` | `4775 loc_clk fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_8voc_dacsamp.netmap.Z` | compressed net map of the `dg4_8voc_dacsamp` scan chain, one line per boundary-scan bit. | 4776 | 1310 | `0 fb_rd_fld voc00:fb_rd_fld` | `4775 loc_clk fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/dg4_8voc_dvp.netmap.Z` | compressed net map of the `dg4_8voc_dvp` scan chain, one line per boundary-scan bit. | 5384 | 2496 | `0 dg.fb_rd_fld dg.voc00:fb_rd_fld` | `5383 - dvp1.voc1e:bd_id[11]` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc.netmap.Z` | compressed net map of the `fpln_2voc` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc_2rm_0.netmap.Z` | compressed net map of the `fpln_2voc_2rm_0` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc_2rm_1.netmap.Z` | compressed net map of the `fpln_2voc_2rm_1` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc_4rm_0.netmap.Z` | compressed net map of the `fpln_2voc_4rm_0` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc_4rm_1.netmap.Z` | compressed net map of the `fpln_2voc_4rm_1` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc_4rm_2.netmap.Z` | compressed net map of the `fpln_2voc_4rm_2` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_2voc_4rm_3.netmap.Z` | compressed net map of the `fpln_2voc_4rm_3` scan chain, one line per boundary-scan bit. | 13613 | 7276 | `0 - rm.pg:Ztgpg_scrdy_l` | `13612 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc.netmap.Z` | compressed net map of the `fpln_8voc` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc_2rm_0.netmap.Z` | compressed net map of the `fpln_8voc_2rm_0` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc_2rm_1.netmap.Z` | compressed net map of the `fpln_8voc_2rm_1` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc_4rm_0.netmap.Z` | compressed net map of the `fpln_8voc_4rm_0` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc_4rm_1.netmap.Z` | compressed net map of the `fpln_8voc_4rm_1` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc_4rm_2.netmap.Z` | compressed net map of the `fpln_8voc_4rm_2` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_8voc_4rm_3.netmap.Z` | compressed net map of the `fpln_8voc_4rm_3` scan chain, one line per boundary-scan bit. | 16223 | 9886 | `0 - rm.pg:Ztgpg_scrdy_l` | `16222 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_rm11_2voc.netmap` | uncompressed net map of the `fpln_rm11_2voc` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 13757 | 4535 | `0 tm90.tmm0.ram3_d[0] tm90.tmm0.tm1c.tm1cc:dramd_data[0]` | `13756 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_rm11_2voc.netmap.Z` | compressed net map of the `fpln_rm11_2voc` scan chain, one line per boundary-scan bit. The plain copy holds the same content. | 13757 | 4535 | `0 tm90.tmm0.ram3_d[0] tm90.tmm0.tm1c.tm1cc:dramd_data[0]` | `13756 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_rm11_2voc_2rm_0.netmap` | uncompressed net map of the `fpln_rm11_2voc_2rm_0` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 13757 | 4535 | `0 tm90.tmm0.ram3_d[0] tm90.tmm0.tm1c.tm1cc:dramd_data[0]` | `13756 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_rm11_2voc_2rm_0.netmap.Z` | compressed net map of the `fpln_rm11_2voc_2rm_0` scan chain, one line per boundary-scan bit. The plain copy holds the same content. | 13757 | 4535 | `0 tm90.tmm0.ram3_d[0] tm90.tmm0.tm1c.tm1cc:dramd_data[0]` | `13756 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
| `usr/diags/IR/data/fpln_rm11_2voc_2rm_1.netmap` | uncompressed net map of the `fpln_rm11_2voc_2rm_1` scan chain, one line per boundary-scan bit. The compressed copy holds the same content once decompressed. | 13757 | 4535 | `0 tm90.tmm0.ram3_d[0] tm90.tmm0.tm1c.tm1cc:dramd_data[0]` | `13756 loc_clk dg.fm0:loc_clk` | `usr/diags/IR/bin/irsaudit` | inferred |
