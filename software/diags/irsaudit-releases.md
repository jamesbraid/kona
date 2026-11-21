# The IR diagnostic and microcode in IRIX 6.5.0 against 6.5.30m

Sources: the IRIX 6.5 base media (June 1998, called 6.5.0 here) and the 6.5.30m reference tree. `usr/diags/IR/bin/irsaudit` of 6.5.0 (2841344 bytes, sha256 `00f0ddea62b7f78bd99124ec2175a82fb35dbc83b5bb62b9fd0288408af2234b`, build tag dated 04/29/98) against the 6.5.30m one (2967860 bytes, `57830d1c...`, build tag 07/20/06), plus the microcode and data files that differ between the two. Both binaries are stripped and carry only dynamic symbols (1089 functions in 6.5.0, 1170 in 6.5.30m), so function addresses below are the 6.5.0 or 6.5.30m ones as stated. Grades: **established** (read in the file or the whole routine), **inferred** (reasoning stated), **unknown**.

What this page cannot settle: no GE16, RM9, RM10 or register dump of a running pipe is held, and neither build contains the words "IR2" or "InfiniteReality2". The product names of [rm.md](../../devices/rm/README.md#board-sets-and-pipe-configurations) are therefore not mapped to boards by the software; only board-type words, group fields and texture sizes are.

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
| RM10 | 0xd | no | yes | 0x10051024 |
| TM7 | 6 | yes | yes | 0x100548ac (6.5.0), 0x100511ac (6.5.30m) |
| TM8 | 0xb | no | yes | 0x100511bc |
| TM9 | 0xe | no | yes | 0x100511c8 |
| DG4, DG5 | 2, 8 | yes | yes | DG4 at 0x10057af0 (6.5.0); the DG5 value is **inferred** from the argument of its "board type expected and found" message (0x10059624 in 6.5.0) |

**Established** (6.5.30m): the 6.5.30m probe accepts type 7 under the single heading "RM7/RM9", reads group and revision of the same word, and prints "RM #%d is an RM7" when the group is 0 (0x10053c70). After the TM7 (type 6) branch an RM of group 1 prints "RM #%d is an RM9" (0x100524a0-0x100524c0), and a TM8 (type 0xb) is accepted only when the RM group is 1: otherwise "Invalid RM/TM combo: Can only have RM9 (group exp %d, got %d) with TM8" (0x1005253c, expected group 1 from the constant loaded at 0x10050f88). Both RM7 and RM9 load the same chain file, `rm7.chain` ("RM #%d is only an RM", "NIC name field must be one of RM7 or RM9").

**Inferred:** an RM9 is an RM7 board-type word with group 1. The 6.5.0 build knows only group 0 of that type and calls any other group unknown, the 6.5.30m build gives group 1 a name and ties it to the 256 MB TM8. The two boards share one scan netlist, `rm7`, so they have the same image-processor chain; nothing in the diagnostic distinguishes them beyond the group field and the texture board they may pair with. Read in full: the type, group and combination checks; not read: the revision text paths and the idcode comparisons.

## Texture sizes

**Established** (strings, `text_ram_config` decode in both builds). 6.5.0 decodes 16 MB (256Kx16 parts), 64 MB (1Mx16), 128 MB (2Mx8), 256 MB and 512 MB (4Mx4) texture memory for an RM or TM7. 6.5.30m decodes 16, 64, 128, 256 (4Mx8), 512 (4Mx16) and 1 GB (16Mx16), and its NIC checks are `TM7-16`, `TM7-64`, `TM8-256` and `TM9-1024`: the 6.5.0 name `TM7-256` became `TM8-256`, and 256 MB "reported but TM board not a TM8" is an error ("bdtype exp 0xb", 0x100526bc). **Inferred:** a 256 MB texture board is the TM8 generation, not a TM7.

The golden CRC logs agree. **Established** (section tags in the decompressed files, one section per test and configuration; the tag is `g<engines>r<RMs>t<texture MB>`):

| File | 6.5.0 | 6.5.30m |
|---|---|---|
| `irsaudit.k.gold.Z` | 967 sections; g4 and g8, r1/r2/r4, t16 and t64 (plus 21 g8r0t0) | not replaced |
| `irsaudit.h.gold.Z` | 1550 sections; g2, g4, g8, r1/r2/r4, t16 and t64 (plus 21 g8r0t0) | 2402 sections; the same configurations plus a `t256` variant of each except g8r0t0 |
| `irsaudit.hl.gold.Z` | 732 sections; g2 and g4, r1 and r2, t16 and t64 | 764 sections, same configurations |
| `irsaudit.oh.gold.Z` | none | 416 sections; g4 only, r1/r2/r4, t1024 only |

**Established** (`irsaudit` code, the golden-file chooser at 0x1001c72c-0x1001c878 in 6.5.0 and 0x1001ce00-0x1001cf60 in 6.5.30m): the file name follows a global board-set value: 6.5.0 takes `h` for 1, `hl` for 2 and `k` otherwise; 6.5.30m takes `h` for 0, `hl` for 2, `oh` for 6 and `k` otherwise. The value is read through two pointer loads in both builds; whether it is the same variable renumbered is **unknown**. **Inferred** from the configuration tags and the board strings ("HILO LITE" appears only on RM8 messages, whose pipes hold at most two RMs): `k` is the first board set (RM6, g4 or g8 only, no RM-less g2), `h` the RM7 and later set, `hl` the RM8 set, `oh` the RM10/RM11 set with the 1 GB texture. This partly answers the open letter question of [data-files.md](data-files.md#gold-crc-logs): the letters stay unexpanded, but each file is tied to one RM generation. The tag fields are established, `t1024` is the IR4 texture figure, and the new `t256` rows in `h` are what a TM8 pair adds to the RM7/RM9 set.

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

## Open

- GE16, RM9 and RM10 register dumps, and the hinv or gfxinfo text of IR1 and IR2 pipes: not held; the IR2-against-IR1 feature diff stays open, now with the board-identity and microcode sections above as its software baseline.
- The mapping of board-set value to RM type in the golden-file chooser, the part-number table, and the pixel-path words that changed between 6.5.0 and 6.5.22 microcode: unknown, not read.
