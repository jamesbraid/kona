# The IR diagnostic and microcode in IRIX 6.5.0, 6.5.2, 6.5.7, 6.5.8 and 6.5.30m

Sources: the IRIX 6.5 base media (June 1998, called 6.5.0 here) and the 6.5.30m reference tree; the 6.5.2, 6.5.7 and 6.5.8 builds are read in [their own section](#irix-652-657-and-658). `usr/diags/IR/bin/irsaudit` of 6.5.0 (2841344 bytes, sha256 `00f0ddea62b7f78bd99124ec2175a82fb35dbc83b5bb62b9fd0288408af2234b`, build tag dated 04/29/98) against the 6.5.30m one (2967860 bytes, `57830d1c...`, build tag 07/20/06), plus the microcode and data files that differ between the two. Both binaries are stripped and carry only dynamic symbols (1089 functions in 6.5.0, 1170 in 6.5.30m), so function addresses below are the 6.5.0 or 6.5.30m ones as stated. Grades: **established** (read in the file or the whole routine), **inferred** (reasoning stated), **unknown**.

What this page cannot settle: no GE16, RM9, RM10 or register dump of a running pipe is held, and none of the five builds contains the words "IR2" or "InfiniteReality2". The product names of [rm.md](../../devices/rm/README.md#board-sets-and-pipe-configurations) are therefore not mapped to boards by the software; only board-type words, group fields and texture sizes are.

## What the two builds share

**Established** (symbol tables compared by name): every function exported by the 6.5.0 build is exported by the 6.5.30m build. The 81 additions are listed below. Function sizes are not comparable between the builds: 832 of the 1089 common functions differ in size, which is the effect of a later compiler and not a change of behaviour, so a size difference alone proves nothing.

Both builds probe the pipe with the same chain probes (`probe_ge12_chain`, `probe_ge14_chain`, `probe_ge11_chain`, `probe_rm6_chain`, `probe_rm7_rm8_chain`, `probe_dg4_chain`, `probe_dg5_chain`), read the same board-identity layout, and pass the same GE count test for the microcode-load configuration value (the load routine picks the value 0x9b60 for fewer than eight engines and 0x4930 for eight in both: 6.5.0 at 0x1003ac30-0x1003acb8). They also select a golden CRC log by board set, one name per set (below).

## What 6.5.30m adds

**Established** (symbol and string comparison):

| Area | 6.5.30m addition | Evidence |
|---|---|---|
| Host | IP35 beside IP19, IP25 and IP27 ("Host type is IP35"); pipe board name `KONAD` beside `KONA`, `KONAT`, `KONAS` and `KONAL`; board set `BDSET_HILO_IR4` beside `BDSET_HILO` | strings |
| GE | board type GE16 and the NIC name `GE16-4`; `GE14` messages reworded "GE14/16"; the one chain path (`ge14.chain`, 96 bits) serves both | strings, `probe_ge14_chain` 0x1004de48 |
| RM, TM | RM10 and RM11 (`rm10.chain`, `rm11.chain`; "RM11 (RM10+TM9)"), TM8 and TM9, new chain-length list (1088, 640, 448, 473, 320, 768 or 793; 6.5.0 knew 1088, 640, 448 and 768) | `probe_rm7_rm8_chain` 0x10050834 |
| DG | NIC name `DG5B-8` | strings |
| Video options | DDO3, DPLEX and TVO tests (`TEST_ddo3_*`, `TEST_dplexconn`, `TEST_dplexlvds`, `TEST_tvo*`, `dplex_*`, `tvo_*`), options `-ddo3`, `-dplex`, `-tvo`, `FORCE_DPLEX`, `OPTVIDEO_MODE`, `TEX_MEM_STEP_SIZE`, `CLRCOLOR` now takes RGBA | option help |
| RM scan | 15 `TEST_rm_chainlen_*` tests, `TEST_texmem2`, `TEST_texmem3`, `TEST_txlut`, `TEST_fbfull`, `TEST_pixelcopy`, `TEST_copy_in_pixel`, `TEST_imp_ie`, `TEST_video3`, `TEST_video4` and the `TEST_video*` helpers | symbols |
| IR4 | waivers for known IR4 BIST, connectivity and CRC failures ("IR4 WARNING: Waiver granted", the `tgtfq_data[3:30]` and `tg2_tfq` notes), `imp8d`, `tm1c`, `pg2b`, `tf1c` and `tg2` scan registers and CRC tables | strings, symbols |

The exported test count (functions named `TEST_*`) is 160 in 6.5.0 and 206 in 6.5.30m, and none was removed. `TEST_video` and `TEST_video2` shrink from 1824 and 2788 bytes to 172 and 160 bytes while `run_video`, `run_video1`, `run_video2` and `run_video4` appear, which is **inferred** to be the same tests moved into shared helpers.

## Board-identity words

**Established** (`probe_rm7_rm8_chain` and `probe_rm6_chain`, both builds; `probe_ge*` for the GE word). The board identity read over the scan chain is one 32-bit word per board in the same layout in both builds: bit 0 must be zero, bits 1-4 revision, bit 5 "no ship", bits 6-8 group, bits 9-15 board type. 6.5.0 rejects a board type that is not the expected one (message "board is not RM7, board type = 0x%x, expected 0x%x" at 0x10054678) and rejects any non-zero group of an RM7 as unknown ("Get newer version of irsaudit and re-run", 0x100547e0-0x10054800).

| Board | Type | 6.5.0 | 6.5.30m | Where |
|---|---|---|---|---|
| GE12 | 0 | yes | yes | 0x1005bcc4 (6.5.0), 0x100583d0 (6.5.30m) |
| GE14 | 5 | yes | yes | 0x1005bccc (6.5.0), 0x100583d8 (6.5.30m) |
| GE16 | 0xc | no | yes | 0x100583e0-0x10058404 |
| RM6 | 1 | yes | yes | 0x10052a28 (6.5.0), 0x1004f778 (6.5.30m) |
| RM7 | 7 | yes | yes, shared with RM9 | 0x10054644 (6.5.0), 0x10051018 (6.5.30m) |
| RM8 | 9 | yes | yes | 0x10054d98 (6.5.0), 0x100518e8 (6.5.30m) |
| RM10 | 0xd | no | yes (absent from 6.5.7 and 6.5.8, [below](#irix-652-657-and-658)) | 0x10051024 |
| TM7 | 6 | yes | yes | 0x100548ac (6.5.0), 0x100511ac (6.5.30m) |
| TM8 | 0xb | no | yes | 0x100511bc |
| TM9 | 0xe | no | yes (absent from 6.5.7 and 6.5.8) | 0x100511c8 |
| DG4, DG5 | 2, 8 | yes | yes | DG4 at 0x10057af0 (6.5.0); the DG5 value is **inferred** from the argument of its "board type expected and found" message (0x10059624 in 6.5.0) |

**Established** (6.5.30m): the 6.5.30m probe accepts type 7 under the single heading "RM7/RM9", reads group and revision of the same word, and prints "RM #%d is an RM7" when the group is 0 (0x10053c70). After the TM7 (type 6) branch an RM of group 1 prints "RM #%d is an RM9" (0x100524a0-0x100524c0), and a TM8 (type 0xb) is accepted only when the RM group is 1: otherwise "Invalid RM/TM combo: Can only have RM9 (group exp %d, got %d) with TM8" (0x1005253c, expected group 1 from the constant loaded at 0x10050f88). Both RM7 and RM9 load the same chain file, `rm7.chain` ("RM #%d is only an RM", "NIC name field must be one of RM7 or RM9").

**Established** (the 6.5.2 build gives the same reading, [below](#irix-652-657-and-658)): an RM9 is an RM7 board-type word with group 1. The 6.5.0 build knows only group 0 of that type and calls any other group unknown, the 6.5.30m build gives group 1 a name and ties it to the 256 MB TM8. The two boards share one scan netlist, `rm7`, so they have the same image-processor chain; nothing in the diagnostic distinguishes them beyond the group field and the texture board they may pair with. Read in full: the type, group and combination checks; not read: the revision text paths and the idcode comparisons.

## Texture sizes

**Established** (strings, `text_ram_config` decode in both builds). 6.5.0 decodes 16 MB (256Kx16 parts), 64 MB (1Mx16), 128 MB (2Mx8), 256 MB and 512 MB (4Mx4) texture memory for an RM or TM7. 6.5.30m decodes 16, 64, 128, 256 (4Mx8), 512 (4Mx16) and 1 GB (16Mx16), and its NIC checks are `TM7-16`, `TM7-64`, `TM8-256` and `TM9-1024`: the 6.5.0 name `TM7-256` became `TM8-256`, and 256 MB "reported but TM board not a TM8" is an error ("bdtype exp 0xb", 0x100526bc). **Inferred:** a 256 MB texture board is the TM8 generation, not a TM7.

The golden CRC logs agree. **Established** (section tags in the decompressed files, one section per test and configuration; the tag is `g<engines>r<RMs>t<texture MB>`):

| File | 6.5.0 | 6.5.30m |
|---|---|---|
| `irsaudit.k.gold.Z` | 967 sections; g4 and g8, r1/r2/r4, t16 and t64 (plus 21 g8r0t0) | not replaced |
| `irsaudit.h.gold.Z` | 1550 sections; g2, g4, g8, r1/r2/r4, t16 and t64 (plus 21 g8r0t0) | 2402 sections; the same configurations plus a `t256` variant of each except g8r0t0 |
| `irsaudit.hl.gold.Z` | 732 sections; g2 and g4, r1 and r2, t16 and t64 | 764 sections, same configurations |
| `irsaudit.oh.gold.Z` | none | 416 sections; g4 only, r1/r2/r4, t1024 only |

**Established** (`irsaudit` code, the golden-file chooser at 0x1001c72c-0x1001c878 in 6.5.0, 0x1001c920-0x1001ca64 in 6.5.2 and 0x1001ce54-0x1001cf60 in 6.5.30m): the file name follows one global board-set value. 6.5.0 takes `h` for 1, `hl` for 2 and `k` for 0; 6.5.2 and 6.5.30m take `k` for 0, `hl` for 2, `oh` for 6 (6.5.30m only) and `h` for any other value. An earlier reading of the 6.5.30m chooser put `h` at 0 and `k` otherwise, which misread the branch delay slots at 0x1001cecc and 0x1001ced4; the mapping is the same in all three builds. The value is the same variable in every build read, so the chooser's order is a mapping and not a renumbering. How the value is set is in [the board-set value](#the-board-set-value): the host CPU type chooses 0 or 1, an RM8 chain sets 2.

**Inferred** from the configuration tags: `k` holds no RM-less g2 configuration (the GE14-2 board), `h` is the set the RM7 and later boards use on the other hosts, `hl` the RM8 set, `oh` the RM10/RM11 set with the 1 GB texture. This partly answers the open letter question of [data-files.md](data-files.md#gold-crc-logs): the letters stay unexpanded, but each file is tied to one board-set value, and that value follows the host type before it follows the boards. The tag fields are established, `t1024` is the IR4 texture figure, and the new `t256` rows in `h` are what a TM8 pair adds to the RM7/RM9 set.

## NIC part numbers

**Established** (string sets, not mapped to boards here). 6.5.30m accepts more part numbers than 6.5.0 in the GE, texture and DG checks: GE `030-1051`, `030-1052`, `030-1129`, `030-1398`, `030-1800` (two of these are checked for four "GE12" engines, the rest for two, four or eight "GE11" engines); a texture board `030-1650` and `030-1651` (1 GB); DG `030-1524`; the Ktown link `030-1067` and `030-1593` (KTOWN2); and `030-1402`, `030-1409`, `030-1511` and `030-1588`. 6.5.0 accepted the older sets only. **Unknown:** which board each number names.

## The microcode

**Established** (file bytes and headers).

- `usr/diags/IR/ucode/` of 6.5.0 holds `ge.u`, `ge.hex`, `ge_diag_init.u`, `ge_diag_init.hex`, `geif.u`, `dgo.mcs`, `arm1.u` and `arm1_nic.u`. `ge.u`, `ge.hex`, `ge_diag_init.*`, `geif.u` and `dgo.mcs` are byte-identical to the copies in the 6.5.30m tree, listed in [data-files.md](data-files.md#release-copies-of-the-microcode-and-video-format-images). Only `arm1.u` differs: 36204 bytes in 6.5.0, 40072 in 6.5.30m.
- The diagnostic `ge.u` (571281 bytes, magic 0x45900003) carries the build string "ge11 microcode file verion fantastic1" like the production `ge.u`, the source files `gefields.h` and `ge11spreg.h` of the same names, and a file list of 38 sources under a `ge11` tree of diagnostic modules: `cram.S`, `eram.S`, `wram.S`, `fib.S`, `mul.S`, `mul_ge.S`, `walk_tbus.S`, `geclock.S`, `ged_read.S`, `diagpixout.S`, `ge_hist.S`, `raster.S`, `glmodes.S`, `init_muse.S`, `debug.S`, `init_cmd_tab.S` and a few more. Its code is two segments of 32-byte records, 9844 and 4702 records, addresses 0x0000 and 0x2d00 (instruction numbers), which is the 14546 lines of its `ge.hex` (0x0000-0x3f5d). 1391 of its 3918 non-zero words also occur in the production program; the same instruction set, a different program.
- The microcode family is `ge11` everywhere. **Inferred:** there is no GE14- or GE16-specific microcode image in either release; one `ge11` program runs on all GE boards. No file in the 6.5.30m tree is named for GE16.

**Established** (6.5.0 production microcode against the 6.5.30m copy). The 6.5.0 `usr/gfx/ucode/KONA/` files below differ from the 6.5.30m ones. The 6.5.22 copies of `ge.hex`, `geif.u` and `ge_symbols` equal the 6.5.30m ones, so the 6.5.0 versions of those three differ from 6.5.22 too; `ge.u`, `ge11.u`, `ged1b.u`, `tport.bin` and `arm1.u` also change between 6.5.22 and 6.5.30m ([data-files.md](data-files.md#changed-in-irix-6522-reading-queue)):

| File | 6.5.0 sha256 (first 16) | 6.5.0 size | 6.5.30m size |
|---|---|---|---|
| `ge.hex` | `e4f9e90e3f0f6966` | 1563300 | 1563025 |
| `ge.u` | `21e522f630d660fe` | 2527045 | 2526129 |
| `ge11.u` | `dcf16db07af34a09` | 1276437 | 1275741 |
| `geif.u` | `01ac05aadab471cd` | 2048 | 2048 |
| `ge_symbols` | `cfde8fec53ad6ce3` | 67100 | 67100 |
| `ged1b.u` | `7aebf2371eea0962` | 14483 | 14411 |
| `arm1.u` | `21a21ded6c2a0610` | 447536 | 465452 |
| `tport.bin` | `257c15bc9c609668` | 118137 | 127889 |

`arm1_kpm.u` and `ge_kpm.hex` are byte-identical. The 6.5.0 geometry program has 62532 instructions and 6.5.30m has 62521: aligning the two word lists with the low 16 bits (jump and branch targets) masked leaves 44 differing blocks, all between instruction addresses 0xa634 and 0xab49: 98 words removed and 87 added. Before 0xa634 only target fields differ. The 1100 labels of `ge_symbols` are the same in both; 317 moved (the first at 0xa6ac, `mmo_PixLineNextGE`, onward), and 155 of the 1024 `geif.u` entries differ by the same shift. The file lists of the two `ge.u` are the same 143 sources apart from one header path. **Inferred:** the change is a small edit to the pixel-path handlers (the labels in the range begin `Pix`), with every other handler untouched; which words changed within the handlers is **unknown** (not read).

## What the RM7 data files settle

**Established.** The RM7 files of the 6.5.0 data directory (`rm7.netmap.Z`, `rm7.short.Z`, `rm7.stuck.Z`) have the same SHA-256 prefix, size and vector counts as the copies already read ([data-files.md](data-files.md#boundary-scan-netlists-and-test-vectors)): a chain of 6540 bits, 20 `imp` chips (`impsp`, `impsq`, `impsr`, `impss`, five each) and nothing else, 2 stuck-at vectors and 18 shorts vectors. The questions entry that said no RM7 data was held was wrong on that point. The 6.5.0 tree adds no RM7 file that the held tree lacks.

**Established** (pin names of the `imp` chips in `rm7.netmap` and `rm6.netmap`, identical per chip). Each first-generation image processor has four external memory ports `fb0`-`fb3`, each with 32 data lines, 10 address lines, 4 byte masks, row, column and write strobes and a clock. The `rm8` chip `imp9` has two ports of 16 data lines and 12 address lines, and the `rm10` and `rm11` chip `imp8dc` has eight ports of 32 data lines, 15 address lines and two strobe lines each. These port counts are what the `sdbist` files already implied ([rm.md](../../devices/rm/README.md#board-sets-and-pipe-configurations)); the memory capacity behind a port is still **inferred** from the part names, since no netlist or file states a part size. The RM7 data therefore settles the RM7 image-processor port count (four, as RM6) and does not settle bank counts of the texture memory: `rm7` has no texture chip, and `rmtm7` and `tm7` carry eight `tm` chips each with no per-bank pin split that names a bank.

## IRIX 6.5.2, 6.5.7 and 6.5.8

Sources: `usr/diags/IR/bin/irsaudit` from the discs "IRIX 6.5.2 Installation Tools and Overlays (1 of 2)" (product `eoe_652m`, 2871252 bytes, sha256 `43fcf153a1a4d39a74b518f41cc193d987344b2f51c18c40de16071007a11464`, build tag 10/23/98), "IRIX 6.5.7 Installation Tools and Overlays (1 of 2)" (`eoe_657m`, 2929324 bytes, `f13f62c59bf7599a5c9d63f2e3443cdbab3d1f232854de2698148526bfd6635e`, 01/19/00) and "IRIX 6.5.8 Installation Tools and Overlays (1 of 3)" (`eoe_658m`, 2937752 bytes, `7b465e64383cc280a28a9f6ba8c4b4ff67511762f0fd6bdf3a6dae41d2e0a44a`, 04/19/00). The 6.5.2 and 6.5.7 discs also hold an `eoe_652f` and an `eoe_657f` build of the same sizes; only the `m` builds were read. All three are stripped N32 position-independent executables with dynamic symbols, like the two builds above, and the addresses in this section belong to the build named. Grades are as above. "First" means first among the builds read (6.5.0, 6.5.2, 6.5.7, 6.5.8, 6.5.30m). A string scan of the 6.5.3 to 6.5.6 builds shows the same GE16 and RM9 mentions as 6.5.2 and no RM10 or TM8 string; those builds, and 6.5.9 to 6.5.29, were not read further.

### From 6.5.0 to 6.5.2: GE16 and RM9 arrive without a new test

**Established** (symbol lists compared). The disassembly of 6.5.0 has 1088 labelled functions and that of 6.5.2 has 1098; none was removed. The ten additions are the DDO3 video-option tests (`TEST_ddo3_ctrlreg`, `TEST_ddo3_voccpbuf`, `TEST_ddo3_vocdblbuf`, `TEST_ddo3_vocreg`, `TEST_ddo3_vocspreg`), `TEST_optdacreg`, `TEST_optvideo` and the helpers `run_optvideo`, `run_video` and `run_video2`. `TEST_` functions go from 160 to 167, and the option help gains `-ddo3`, `-dplex`, `OPTVIDEO_MODE` and an RGBA `CLRCOLOR`; `ddo3.chain` is a new chain file. No function is named for GE16 or RM9: their support is a change inside the board-identity code (`TEST_sysprobe` 0x1005ceac, `probe_rm7_rm8_chain` 0x10054f44) and the NIC checks in `main`. The microcode and the golden CRC file names are the ones of 6.5.0 (`irsaudit.k.gold`, `.h.gold`, `.hl.gold`); the 6.5.2 gold files were not extracted, so their sections are unread.

**GE16, established** (6.5.2m `TEST_sysprobe`):

- The board word is the same 32-bit word as in 6.5.0. Its type is bits 9-15 (0x1005d144-0x1005d14c). 6.5.2 accepts 0 (GE12), 5 (GE14) and 12 = 0xc (GE16, "GE board is a GE16." 0x1005df04); 6.5.0 accepted only 0 and 5.
- Group (bits 6-8) and revision (bits 1-4) are not read raw: both go through `de_gray_code` (0x1004fe30, calls at 0x1005d1a8 and 0x1005d1c8), a table lookup that is the binary-reflected Gray-code decode (table at 0x1022c858, 16 words: 0, 1, 3, 2, 7, 6, 4, 5, 15, 14, 12, 13, 8, 9, 11, 10). The GE, RM6, RM7/9, RM8, TM7, DG4 and DG5 words all use it (call sites 0x10053ba4, 0x100557a4, 0x100559c4, 0x10055f00, 0x10058e18, 0x1005a3c4, 0x1005d1a8). The `RAWgroup`/`group` message pair prints the raw and the decoded value. This is more than the field layout above says.
- A GE16 has group 0 like the other GE boards; any other group prints "unknown group" and "Get newer version of irsaudit and re-run." (0x1005d2bc-0x1005d30c). The decoded revision of a GE16 prints: 0 "GE16 P0 proto, DO NOT SHIP." (0x1005f060), 1 "GE16 Pilot build, DO NOT SHIP." (0x1005f0e0), 2 "GE16 is production build." (0x1005f10c), 3 "GE16 unknown revision, 3." (0x1005f17c). GE12 and GE14 share the revision switch (0x1005d238-0x1005d278) and print P0, P1, P2 proto and production at 0 to 3; revisions 8 and 9 print "GE%dC" proto and production with 14 or 16 filled in from the type (0x1005e738, 0x1005ef58, 0x1005f030), new in 6.5.2. What the "C" revisions are is **unknown**.
- Bits 16-17 are a GE-count code (table 1, 2, 4, 8 at 0x1005d110-0x1005d13c) compared with the GE chain length; a mismatch prints "GE11/12 count mismatch" (0x1005e154). Bits 18-19 are a BEF memory code (none, 4 MB, 16 MB); every value but 4 MB prints "BEF should have 4MB, DO NOT SHIP" (0x1005d32c-0x1005d388). Neither check depends on the type, and the BEF strings are the same in all five builds.
- Chain and NIC: GE14 and GE16 share `ge14.chain` (96 bits; the messages were reworded "GE14/16"). The NIC name check accepts `GE14-4`, `GE14-8` and `GE16-4` (6.5.0 accepted the first two): `GE14-8` requires eight GEs (0x1004440c), `GE16-4` requires four (0x10044618). The part-number checks name only GE11 (030-0681 four engines, 030-0682 eight) and GE12 (030-1052, 030-1129, 030-1398 four); no part number is checked for a GE14 or a GE16.
- The bits-9-15 mask occurs only in the identity probes (0x10053b28-0x1005effc: RM6, RM7/9, TM7, RM8, DG4, DG5 and GE) and in no `TEST_` function, so no later test branches on the GE type.

**RM9, established** (6.5.2m `probe_rm7_rm8_chain`):

- The chain is chosen by its length only (0x10055204-0x10055240): 1088 bits loads `rmtm7.chain` ("RM/TM combination"), 640 `rm7.chain` ("only an RM"), 448 `tm7.chain` ("only a TM7"), 768 `rm8.chain` (RM8, which sets the board-set value 2 at 0x10055c88). The four lengths and four files are the ones of 6.5.0. No `rm9.chain` string exists in any build read, so an RM9 loads the RM7 files.
- The board word must have type 7 (0x10055744-0x10055750; "board is not RM7/9 (board type 0x%x), board type = 0x%x", 0x1005577c; 6.5.0 said "not RM7"). The decoded group (call at 0x100557a4) is 0 for an RM7 (branch 0x1005608c) and 1 for an RM9 (branch 0x10055d4c); any other group prints the "HILO of unknown group" message (0x1005588c). The chain classifier reads the same group again at 0x10057454 and prints "RM #%d is an RM7" (0x10058310) for 0 and "RM #%d is an RM9" (0x10057828) for 1. This confirms "RM9 is the RM7 type word with group 1" for 6.5.2.
- Revisions: an RM9 prints 0 "P0 proto, DO NOT SHIP" (0x10057528), 1 "PILOT HILO production build" (0x10057558), 2 "HILO production build" (0x100562dc), anything else "unknown revision" (0x10055d98). An RM7 prints the same at 0 and 1, "HILO production build" at 2 and at 3 (0x100577fc, 0x100563f4), and "unknown revision" otherwise (0x100560e4). The "HILO" word is in the RM7, RM8 ("HILO LITE"), RM9, TM7 and DG5 messages, never in a GE or an RM6 message.
- The NIC name check accepts `RM7` or `RM9` (6.5.0 accepted `RM7`). Texture: the RM word decodes 16, 64, 128 and 256 MB (256 MB as "4Mx4 parts") and the TM7 word 16, 64, 128, 256 and 512 MB (0x100565d4 is the 256 MB message); the per-RM summary knows only 16 and 64 MB; the NIC check for 256 MB is `TM7-256`, not `TM8-256`. 6.5.2 has no pairing check for group 1: the RM9 and RM10 labels that depend on the texture board are in 6.5.7.
- **Unknown (not read):** whether the "below MR rev" chip-revision thresholds (IMP, TF, PG, TG, TM idcodes, 0x10056658-0x10057eb0) differ for group 1; the 6.5.0 and 6.5.2 builds share the messages, so a difference would be in constants.

**Tests and data files tied to GE16 or RM9:** none by name in any build read. A GE16 is checked by the same tests as a GE14, a group-1 RM by the same tests as an RM7. The files they load are the ones already listed: `ge14.chain` (the GE board scan chain) and `ge11_1`, `ge11_2`, `ge11_4`, `ge11_8` `.chain` (the GE ASIC chain, 1 to 8 engines), `rm7.chain`, `rmtm7.chain` and `tm7.chain`, the `h` golden file, and the `ge11` microcode ([above](#the-microcode)). **Inferred** from this: irsaudit does not distinguish the hardware of a GE16 from a GE14, or of an RM9 from an RM7, beyond the identity word and the NIC name.

### 6.5.7: TM8, RM10 as a pairing label, DPLEX

**Established** (6.5.7m):

- First TM8: the TM word check expects type 6 or 0xb ("board is not TM7 or TM8", 0x100561fc) and reads group and revision through `de_gray_code` (0x1005621c-0x10056258). A type-0xb texture board prints "TM #%d is a  TM8" (0x10056530), a type-6 one "TM #%d is a  TM7" (0x10056c84).
- The names RM9 and RM10 follow from the RM group and that texture board: RM group 1 with a TM7 prints "RM #%d is an RM9" (0x10056cbc), RM group 1 with a TM8 prints "RM #%d is an RM10" (0x10056c54), and any other RM group with a TM8 prints "Invalid RM/TM combo: Can only have RM9 (group exp 1, got %d) with TM8 (bdtype 0xb)" (0x1005656c). 6.5.30m keeps this pairing (0x10052500-0x10053560, "RM #%d is an RM10" at 0x10053560).
- **Correction to the table above:** in 6.5.7 and 6.5.8 the RM word accepts only type 7 (0x10055fa4; "RM7, RM9 or RM10 board type found"), and the constants 13 and 14 do not occur in the probe. Board types 0xd (RM10) and 0xe (TM9) and the chain files `rm10.chain`, `rm11.chain`, `tm9.chain` are 6.5.30m additions; the release that introduced them is **unknown** (6.5.9 to 6.5.29 not read). So the 6.5.7 name "RM10" is a pairing label of an RM9-group board with 256 MB of texture. Whether that label and the 6.5.30m board type 0xd name the same hardware is **unknown**.
- Texture words: the 256 MB figure is printed with "4Mx8 parts" for RM and TM boards and 512 MB with "4Mx16 parts" for TM boards (6.5.0 and 6.5.2: 256 MB "4Mx4 parts" for an RM and no part text for a TM7, 512 MB "4Mx4 parts"), and the per-RM summary gains a 256 MB class, and the NIC check is `TM8-256` (6.5.2: `TM7-256`) with part number 030-1409 and the error "256MB of texture reported but TM board not a TM8 (bdtype exp 0x%x, got 0x%x)". **Inferred:** the earlier part descriptions were a different TM generation's or were corrected; which is right is unknown.
- Added functions (1098 to 1106): `TEST_ddo3_autoconfig_loopback`, `TEST_dplexconn`, `TEST_dplexlvds`, `dplex_init`, `dplex_stop`, `dplex_test`, `dgopt_clock_setup` and `dgopt_clock_restore`; the NIC check accepts `DG5B-8`. No chain file was added. The golden-file names are unchanged.

### 6.5.8: IP35 host, KONAD

**Established** (6.5.8m strings; the 6.5.7 and 6.5.8 symbol lists are identical, 1106 functions): "Host type is IP35", the pipe board name `KONAD` beside `KONA`, `KONAT`, `KONAS` and `KONAL`, EventMon logging through `libeventmon.so` (`emapiIsDaemonStarted`, `emapiSendEvent`, "IRSAUDIT started") and the `mfg_mode` option; a texture mismatch among the RMs is a warning that continues with the detected size. **Inferred** (symbol lists and strings compared, the identity code not compared instruction by instruction): the GE16, RM9 and TM8 identification is unchanged from 6.5.7.

### The board-set value

**Established** (6.5.2m `TEST_sysprobe`; the same sites and messages are in 6.5.0 and 6.5.30m). `irsaudit` keeps a board-set value (`BDSET_*`, the first word of its pipe-information record). It is set to 0 ("Based on host CPU type, choose Kona.", 0x1005cfb4-0x1005cfe0) when the host-type globals `iam_ip19` or `iam_ip25` are set (the host probe `determineHostType` at 0x1002f2c4; "Found IP19 or IP25. Loading HIP1 JTAG regs.") and to 1 ("choose Hilo", 0x1005e790) for every other host; a 768-bit RM chain (RM8) then sets 2 (0x10055c88, "HILO LITE"). 6.5.30m adds the value `BDSET_HILO_IR4` (its string and the `oh` golden file). The NIC check for a TM7 asserts that the value is `BDSET_HILO` ("KONAINFO->bdset == BDSET_HILO", 0x10043be8).

**Inferred:** the first two values are the host-interface generation (an Onyx IP19 or IP25 host with the HIP1 interface against IP27 and later), not a board property, so `irsaudit` does not use "KONA" and "HILO" for IR1 and IR2 boards. The "HILO" wording on RM7, RM8, RM9, TM7 and DG5 messages says those boards are of the Onyx2 generation; it does not say which marketing name that generation carries.

## Open

- GE16, RM9 and RM10 register dumps, and the hinv or gfxinfo text of IR1 and IR2 pipes: not held. `irsaudit` supplies the identity words, the group and revision decode, the NIC names, the chain files and the pairing labels above; it has no GE16- or RM9-specific test, so it shows no register-level difference to compare.
- Whether a GE16 or RM9 changes a path in the kernel driver, the X modules or `libGLcore` (a branch on type 0xc or on RM group 1): not searched in this round; that is the next software route.
- The "C" revisions (8 and 9) of the GE14 and GE16 words, the chip-revision thresholds for group 1, the part-number table (which board each of 030-1054, 030-1402, 030-1130, 030-1131, 030-1154, 030-1053, 030-1153, 030-1588 and 013-1760 names), the release that introduced board types 0xd and 0xe, the 6.5.2 gold-file sections, and the pixel-path words that changed between 6.5.0 and 6.5.22 microcode: unknown, not read.
