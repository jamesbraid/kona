# InfiniteReality2E and InfiniteReality3 product facts for the KONA command table

Worked 2026-11-10 against a shallow kona clone. This file is the only change in its commit. All text below is in
the author's own words; citations are binary+offset, document+page, capture description or message id. No IRIX
source text was read for this pass, and no restricted archive item was opened.

Releases examined: 6.5.0 (6.5.0 base) and 6.5.30. No IR3-era (6.5.7 to 6.5.17) overlay was available, so "IR3-era
binaries" means 6.5.30, which is IR2E, IR3 and IR4 aware. 6.5.0 predates all of them and is useful as a negative
control (below).

Grades: E = established (read in a binary, or a verbatim published capture), I = inferred (reasoning given),
U = unknown (what would settle it is stated).

Binaries read this pass (6.5.30 unless noted): `kona.a(kona_edtinit_hip2.o)` `kona_attach` 0xed4 (and the 6.5.0
copy), `usr/gfx/ucode/KONA/arm1.u` `init_kona_jtag_chain` 0x0c01ac3c, `init_config` 0x0c01d8a0, `dg_board_id`
0x0c01d2d0, `dgGetBoardConfig` 0x0c00d200, `DoDGRqstQueryMonitorName` 0x0c00d5cc, `init_imp` region 0x0c003bcc;
the 6.5.0 `arm1.u` `init_kona_jtag_chain` 0x0c018c18; `tport.bin`; `sbin/hinv` (inventory-type to text
dispatch, jump table at 0x1000e400); `usr/diags/IR/bin/irsaudit` (`probe_rm7_rm8_chain` 0x10050834, NIC-check
strings 0x10188c30-0x10189760, TM/RM strings 0x1018da68-0x1018ddf0); `usr/gfx/gfxinit`;
`usr/gfx/arch/IP27KONA32/libGLcore.so` `GetBoardInfo` 0xd947f60; extension strings of 8 `libGLcore` builds
across 6.5.0 and 6.5.30.

Captures used: an IR3 rack capture (`gfxinfo -v` and `hinv -m`), an IR2 capture with a DG5-8 display board, an IR2
two-RM dump, and two IR4 captures. Usenet, message ids in brackets: [40C20497.1D26A44A@machtnix.net] IR2E
`hinv -m`; [38f35a0a.0402270839.392df64b@posting.google.com] and [403fd58a@derwent.nt.tas.gov.au] irsaudit part
numbers on an RM10 (IR3) pipe; [98rhjd$1g8a$1@fido.engr.sgi.com] SGI product table; [3AAE90E6.1E626857@sgi.com]
hinv versus marketing names; [3BD47C81.4B6AF6B7@mce.com] GE16-4 sold for "IR2"; [352BAB85.6A6E@neiddd.com] and 16
sibling copies, an IR2 `gfxinfo -v`. (The archive search service was unavailable for this pass, so I fetched the
same messages raw from a public mail archive. Message ids are the stable handle.)

One correction to what the kona architecture notes say today: `docs/architecture.md` section 7 lists
InfiniteReality3 with "RM10 (10 imp8dc, framebuffer only)". The IR3 capture's `rm0:` block lists twenty
image-processor revision digits, like IR2; the IR4 capture lists ten. The `rm10` netlist (ten imp8dc) belongs to
IR4's RM board, which is named RM10 on its NIC. See question 2 and the proposed rows.

---------------------------------------------------------------------------------------------------------

## Q1. Board-set value in block word 0: which value means which product

Two independent deciders write "board set" numbers, and they feed different readers.

**The pipe firmware** (`arm1.u` `init_kona_jtag_chain`, 6.5.30 0x0c01ac3c-0x0c01ae9c) writes the first word of
its configuration block (data base 0x04067edc, the block `gfxinit` reads and `gfxinfo` prints from). Rules in
order, where "GE type" and "RM type" are bits 15-9 of the geometry-board and each raster-slot identity word:

| Test | Stored |
|---|---|
| GE read fails or GE type 0 | 0 |
| any RM type 9 | 2 (message if types 0xb, 6 or 0xe also seen) |
| any RM type 0xe | 6 (message if 0xb or 6 also seen) |
| any RM type 0xb and no RM type 6 | 5 |
| else GE type 5 | 1 |
| else GE type 0xc | 4 |
| else | left as it was (0) |

**The kernel** (`kona_attach` 0xed4) writes the same word at pipe state +244 (the record is overwritten later by
the 1912-byte record `gfxinit` sends with ioctl 10006) and the inventory type at +2188 that `hinv` prints.
Tests in order, using the two reads it makes through the display-bus port, at 0x8800 and at 0x0b00 (addresses at
0x1100 and 0x1188; both reads are 32-bit loads):

| Test | Board set | Inventory type |
|---|---|---|
| bit 10 of the 0x0b00 read set | 2 | 19 |
| else bits 1:0 of the 0x8800 read == 1 | 5 | 22 |
| else bits 1:0 == 2 | 6 | 23 |
| else the one-wire text of the pipe contains `GE16-` (scan for 'G', `strncmp` 5 against .rodata 0x678 = "GE16-") | 4 | 20 |
| else | 1 | 18 |

Meaning of each value (E for every row; verified at the instruction level: stores at 0x1344/0x1354/0x1368/0x1394 and the default at 0x122c-0x1234):

| Value | Product (hinv text, `sbin/hinv` jump table 0x1000e400, index = type - 4) | Producer |
|---|---|---|
| 0 | InfiniteReality (Onyx, type 16) | firmware only |
| 1 | InfiniteReality2 (type 18) | firmware GE type 5; kernel default (GE14) |
| 2 | Reality (type 19) | firmware RM type 9; kernel 0x0b00 bit 10 |
| 3 | no producer found | none in 6.5.30 `kona.a`, `arm1.u`, `hinv`; none in 6.5.0 either |
| 4 | InfiniteReality2E (type 20) | firmware GE type 0xc without RM type 0xb/0xe/9; kernel GE16 text |
| 5 | InfiniteReality3 (type 22) | firmware any RM type 0xb; kernel 0x8800 bits = 1 |
| 6 | InfiniteReality4 (type 23) | firmware RM type 0xe; kernel 0x8800 bits = 2 |

Answer to the question: **4 is IR2E**, so the attach decode and the "GE16 in the geometry record" reading are
right. The "1, 3 and 4 under IR2" note in `architecture.md` and `setup-tools.md` is a naming-table artifact:
the start screen in `tport.bin` (0x0c0163a4 area) and `hinv` print "InfiniteReality2" for 1 and 3 and
"InfiniteReality2E" for 4, but 3 is never stored. Value 3 is a reserved alias: consumers treat it like 1 (names,
scan-chain layout `jtag_chain_hilo`, `dgGetBoardConfig` jump table) and like 4/5/6 for the image-processor class
byte in `init_imp` (0x0c003c34-0x0c003ca8: 3, 4, 5 and 6 all select class 3). Code that stores a board set should
emit 1 for IR2, 4 for IR2E and 5 for IR3, and never 3. 6.5.0 knows only 0, 1, 2 (and accepts 3 in its chain switch
at 0x0c018cdc-0x0c018ce8) with no `GE16-`, no 0x8800 probe and no names for 4/5/6 (`strings` of 6.5.0 `tport.bin`/
`arm1.u`/`hinv`).

Two cautions for an implementer: (a) the firmware's RM-type test beats GE type, so an IR2E pipe must not present an
RM slot word of type 0xb (see Q2); (b) hinv and gfxinfo can disagree if the two deciders do (hinv follows the kernel
type, the gfxinfo RM name and the GL renderer text follow the firmware word).

Grades: values 0,1,2,4,5,6 and both decision tables E. Value 3: E that nothing stores it; U what stored it in the field.
Settle value 3 with: the base-I/O or node PROM graphics install path (not held; the IP27 PROM image is only
string-read elsewhere), or an overlay's `arm1.u` of 6.5.2 to 6.5.17 (not held). Low priority; no capture shows it.

## Q2. IR2E boards: GE16, RM9, chip identification words, texture board

What is established for IR2E (hinv "InfiniteReality2E", internal board set 4):

* GE: GE16-4, part 030-1398-001. Rev E is E: [40C20497.1D26A44A@machtnix.net] `hinv -m`: "GE16-4 Board ... part
  030-1398-001 rev E" on a machine its owner states is InfiniteReality2E. Rev B appears in an earlier kona note; no
  source for it could be re-opened (the IRIXNet thread it cites shows no part numbers), so rev B is U-at-source.
  The MCE listing [3BD47C81.4B6AF6B7@mce.com] sells "GE16-4 for ONYX2 IR2" as 030-1398-001 (marketing IR2 = internal IR2E).
* GE identity word: type field 0xc is required for set 4 (Q1). `0x80f61806` (seen unchanged on the IR3 rack capture
  and, with a different part 030-1398-002, on both IR4 captures) is the right shape for IR2E (I, same GE16-4 board
  family; no IR2E `brd:` line is published).
* RM: SGI engineer table [98rhjd$1g8a$1@fido.engr.sgi.com]: IR2E = GE16, RM 7 or 9, DG5. RM9 sells as "RM9-64"
  (64 MB texture). The RM9 board part is 030-1402-001: `irsaudit` accepts NIC part 030-1054-xxx or 030-1402-xxx
  with a name that must be RM7 or RM9 (strings 0x189150 and 0x1896a8), and the IR3 capture's RM0 is
  030-1402-001 named RM9 by configmon (rev E). RM9 revision for an IR2E pipe: U (the earlier kona note's "rev B"
  has no source that can be re-opened).
* TM (the 2E texture board): TM7-64, part 030-1053-001. E that this part is TM7-64 (IR2 captures, 17 copies, TM0
  030-1053-001; `irsaudit` name list "TM7-16, TM7-64, TM8-256 or TM9-1024"). I that IR2E uses it: "RM9-64" means 64 MB,
  and 030-1053 is the only 64 MB TM part in `irsaudit`'s list (parts 030-1154 / 030-1053 / 030-1588 for 16 / 64 / 256 MB).
  Rev: U (earlier kona notes list revisions; no source re-opened).
* DG: DG5-2 030-1055-001 (IR2 captures, rev F/N/P in notes) is the plain 2-channel board; `irsaudit` also accepts
  030-1524 and 030-1242 "(2 VOCs with GVO/DDO2/DPLEX/TVO)" and 030-1087 for the 8-VOC board. Which DG an IR2E pipe
  carries is not constrained by software (Q8).

IR3 values that an IR2E description would otherwise reuse, graded for IR2E:

| IR3 value | Right for IR2E? |
|---|---|
| GE16-4 030-1398-001 rev E | yes (E, hinv -m on a stated 2E; same part on the IR3 pipe) |
| RM 030-1402-001 rev E | part yes; rev E is the IR3 capture's. IR2E rev U. |
| GE word 0x80f61806 | plausible (I) |
| **RM slot word 0x03041606** | **no.** Type bits 15-9 = 0xb. The firmware maps any RM type 0xb (with no type 6) to board set 5, so the pipe becomes IR3: gfxinfo prints "RM10", GL says 256MB (bits 18-16 = 4). `irsaudit` `probe_rm7_rm8_chain` (compares at 0x100511a8-0x100511cc) reads this word's type as the TM board type: 6 = TM7, 0xb = TM8, 0xe = TM9, message "expected 0x6 or 0xb or 0xe". IR2E has a TM7, so type 6, texture code 2 (64 MB): `0x03020c02` or `0x03020c06` as on IR2 (low nibble varies: 0x2 on 17 single-RM dumps, 0x6 on the two-RM dump; meaning of the low bits U). I. |
| TM7 030-1053-001 | yes (E for the part being TM7-64; I for IR2E) |

So: GE16 and RM9 part numbers are right; the RM identity word is IR3's and must change; revisions B/E/G/H are not
established for IR2E except GE16 rev E.

Chip identification words (`rm0:` lines of `gfxinfo -v`): no IR2E capture exists. IR2 and IR3 captures share the
first line `15032057 15431057` (PG, TG) and the chip-type words `4631057` (TF), `4d31057` (TM), `4938057` (IMP);
only revision digits differ: IR2 (17 copies) TF 1/1/1/1, TM 2s, IMP twenty 4s; IR2 two-RM dump rm0 TF 2s IMP 4s,
rm1 TF 1s IMP 4s with one 5; IR3 TF 2/2/2/2, TM 2s, IMP twenty 5s; IR4 (two captures) `05032057 35431057`, TF 3s,
TM 3s, IMP **ten** 5s. So the digits are board-instance revisions, not generation constants. For IR2E: U. Settle
with a published `gfxinfo -v` from an IR2E pipe (a `hinv -m`/`gfxinfo -v` pair with `brd:`, `ge:`, `rm0:`).

## Q3. IR3 texture board 030-1588-001: name and revision

Name: **TM8, 256 MB (TM8-256)**. E by two independent routes: (1) `irsaudit` checks NIC names "TM7-16, TM7-64,
TM8-256 or TM9-1024" (0x1894a8-0x1895f0) against size messages "not 16/64/256 MB / 1 GB texture" and part lists
`030-1154 | 030-1053 | 030-1588` for 16/64/256 MB and `030-1650` for 1 GB, so the 256 MB part is 030-1588 (order match;
030-1053 and 030-1650 are separately known as TM7-64 and TM9-1024 from captures); (2) the IR3 pipe's board-id word
`3041606` has type 0xb, which `irsaudit` names TM8 ("TM #%d is a  TM8", 0x1018dad8, with "bdtype" 0xb in the call
at the 256 MB check, "256MB of texture reported but TM board not a TM8", 0x1018ddf0). The literal NIC `name:` string
is I (no `gfxinfo -vv` of an IR3 pipe is published; the IR3 capture is `-v`, which omits names).

Combination rule E (`irsaudit` string 0x1018daf0): "Can only have RM9 ... with TM8". An IR3 RM slot is therefore
an RM9 board (030-1402) plus a TM8, printed "RM10" by gfxinfo/`irsaudit` ("RM #%d is an RM10", 0x1018db48), and
IR4 is an RM10 board (030-1651) plus a TM9, printed RM11 (0x18cee0 "RM11 (RM10+TM9)").
Revision of 030-1588-001: **U.** Not printed by `-v`; the IR3 capture lists the TM only by part and serial. Settle
with `gfxinfo -vv` (prints `rev_code`) or `hinv -m` from an IR3 pipe.

## Q4. Trailing word at block +0x344

It is the display-generator board's identity word. E: `init_config` stores the scan-chain id that `dg_board_id`
(0x0c01d2d0) returns at configuration +836 = 0x344 (the display-board id in the kernel notes), and `gfxinfo -v`
prints it as the last hex word of the `brd:` line. Decode (E, `init_config` 0x0c01dd28-0x0c01dd7c, checked on captures):

| Bits | Meaning | Checks |
|---|---|---|
| 18-16 | channel count minus one | f9391002: 2 ch; 51bf1002: 8 ch |
| 21-19 | option board: 3 TVO, 4 DPLEX, 5 DVP, 6 GVO, 7 none | f9191002 = 3 (IR4 TVO), f9311002 = 6 (IR3 GVO), f9391002 and 51bf1002 = 7 |
| 22 | colour-map size field | |
| 23 | external-gamma field | 51bf1002 only (prints ", 64K external gamma") |
| 4-1 | stored at +72, meaning U | |

It does not change per capture for the same hardware: 17 IR2 dumps all show `f9391002`. Across products the
published values are `f9391002` (IR2, DG5-2 030-1055), `f9311002` (IR3, DG5-2 030-1242 + GVO), `f9191002` (IR4,
030-1242 + TVO), `51bf1002` (IR2, DG5-8 030-1087), and `f911040c` (Onyx IR1, DG4). The low half-word is 0x1002 on
every DG5 and 0x040c on the DG4 (I: family marker). If a block of yours shows a different value on every capture
it is not coming from this register (a DG probe that reads bit 0 set retries once, `dg_board_id`): it should be a
constant per DG option. Settle: the capture in question next to its `gfxinfo -v`.

## Q5. What the pipe returns for the 0x8800 and 0xb00 selectors

Only `kona_attach` reads them (once each: write the selector to the address port, then read the data port, 32-bit).
The values the kernel needs, which is the only contract the shipped software states (E):

| Product | 0xb00 read bit 10 | 0x8800 read bits 1:0 | one-wire text |
|---|---|---|---|
| IR2 | 0 | 0 or 3 | no `GE16-` (GE14-x) |
| IR2E | 0 | 0 or 3 | contains `GE16-` |
| IR3 | 0 | 1 | GE16 (irrelevant) |
| IR4 | 0 | 2 | GE16 (irrelevant) |
| Reality | 1 | anything | GE14-2 |

What the registers are: **U.** 0x8800 is also the data word of the DG5's I2C controller (the DDC/EDID reader
`i2c_init`, control word 0x8801, in `DoDGRqstQueryMonitorName`; see the DG header in this repository) and 0xb00 is
video-DAC 0's index register (`docs/dg.md`, table 6.2). Neither explains a generation code: a DAC register is 8 bits,
but the test is bit 10; and IR3 and IR4 carry the same DG5-2 part (030-1242-001) with identical low bits in the DG id
word (0x1002), so the two-bit code is not a DG part number. Bit 10 for Reality could be a stuffing-code alias of the
frame-manager status register, bits 10:8 (display-bus 0x90), but nothing shows it. Settle with a trace of the two
reads on real hardware, or the frame-manager chip's decode table (bridge ASIC, not available). Settling this needs a
hardware trace, which this pass did not make: this is two reads at attach.

## Q6. IR3 texture memory: per-RM layout and how loads spread across RMs at 256 MB per slot

Established:
* The configuration record carries a (present, texram) pair per RM slot (`docs/kernel.md`, offsets 36-67); `gfxinfo`
  prints one size per slot from code 0-6 (0 none, 1 16, 2 64, 3 128, 4 256, 5 512, 6 1024 MB). The six-entry ladder in
  `irsaudit` "Pretending RM #0 has 1024/256/128/64/16MB" has no 512 MB entry, so code 5 is never a shipped board (I).
* The firmware's slot word encodes the TM board type and the texture code (Q2): IR3 slot = type 0xb, code 4.
* Every populated slot of every IR3 pipe prints 256MB (8 of 8 dumps) and no dump sums: with 1, 2 or 4 RMs the per-slot
  size is identical (IR4: 1024MB in 7 of 7).
* Published (SGI engineer, Usenet `<amuuh9$s2etn$1@fido.engr.sgi.com>` 2002-09-26, restated in kona published-sources):
  each RM holds its own full copy of the pipe's texture; more RMs add framebuffer and fill rate, not texture. E for the
  statement, I that it describes the mechanism; the firmware never partitions texture by RM (there is one
  texture pool and one set of texture tokens per context; `libGLcore` `GetBoardInfo` reads only slot 0's code and sizes
  the pool from it, opengl notes line 60; the kernel pools are four memory-type records, not four RMs).
* Two equal banks per RM, adjacent MIP levels in opposite banks (Performer guide p. 657, `docs/rm.md`).
* Texture and pixel traffic reach all RMs on one raster bus; the pixel-to-IMP split is by pixel id, (id/2) mod 4
  across the four filters (irsaudit 0x100cf0ac) and by RM count in the pixel budget (`vfmtResolvePixelDepth` budget
  = RM count x 5 x 2^22 for classes 0/1).

Unknown: which RM owns which pixels at 2 and 4 RMs; how a texture download reaches several RMs (a broadcast on the
bus or one write per RM); the address map inside a TM8. Both need the raster-board address decode, which is chip
hardware with no program; no TM8 or RM9 netlist is held (the repository's netlist data has tm7, tm9, rm10, rm11 only).
Do not infer an interleave. A texture allocation should fail at one slot's 256 MB, not at the sum (E consequence of the
statements above; no failing-allocation capture).

## Q7. Register or rendering differences between IR2, IR2E and IR3

Nothing in the held binaries shows a register-contract difference between sets 1, 4 and 5.
* One `libGLcore` per ABI and one microcode set, loaded by fixed names for every set (gfxinit `kona_loaducode`, E).
  The 46-name extension string is byte-identical in all eight `libGLcore` builds diffed (IP19/IP25/IP27 KONA,
  o32/N32/64, 6.5.0 and 6.5.30; md5 of the string 0fd23c4f everywhere), so no extension appears between IR and IR3 (E).
* The only product-dependent text in the GL core is the renderer string (`GetBoardInfo` 0xd947f60): "IR", then "E" when
  the board-set word is 2, else the kernel name byte; then **"P" when it is 4**, then depth letter from "SMLX" ("T" for
  set 2 depth 3), "/", RM count digit, "/", texture size, "/", engine count. So an IR2E renderer string carries "P"
  after "IRL" (e.g. `IRLP/...`), IR2 and IR3 do not. E (compares at the 4 and 2 constants), the tail of the string
  is already in the opengl notes. (6.5.0's `GetBoardInfo` could not be located by name; whether it lacks the "P" is U.)
* X video validation classes `bdset` as 0 to 0, 2 to 2, 6 to 3, all others (1, 3, 4, 5) to 1 (`vfmtActualHWToKonaTarget`):
  IR2, IR2E and IR3 are the same class 1 (pixel budget RM count x 5 x 2^22).
* Firmware branches on the board-set word (arm1.u, a cross-reference of loads of the block base): sets 3-6 share the
  image-processor class in `init_imp`; set 2 gets lite paths (`dgMakeXmapFetal`, `dgConfigureVideoRequester`, `reset_imps`
  and `PixelRestore`); set 6 gets its own chain, frame-buffer set-up and `init_config` branch. `DoDGRqstQueryMonitorName`
  reads the monitor over DDC only when the word is 1: **IR2 reads EDID; IR2E (4) and IR3 (5) return no monitor name.**
  That is a real, testable software difference. `dgGetBoardConfig` reply word 3 maps option type to a mask: TVO 0x40,
  DPLEX 0x20, GVO 0x10, DVP 0x08, none 0 (E, same for sets 1-6).
* The image-processor and filter revisions differ per board (Q2 table): IR3 captures show TF rev 2 and IMP rev 5, IR2
  TF rev 1 or 2 and IMP rev 4; behaviour tied to those revisions is U (no software branches on them that I found).
* GE microcode and ARM image are shared; no `ge.u` split by GE14 vs GE16 (the files are loaded by name only).

Corrections for the kona notes: `architecture.md` section 7 row "InfiniteReality3 ... RM10 (10 imp8dc)" should read RM9
board plus TM8 with twenty image processors; the row "InfiniteReality3 ... IR3 and IR4 register differences are
unknown (binaries not held)" should say 6.5.30 is held and shows none. `setup-tools.md` line 21 "sets 1, 3 and 4 print
RM7, or RM9" is right but should add "3 is never stored".
Settle remaining: an IR3-era overlay's binaries (6.5.7, 6.5.17) for first appearance of sets 4/5/6; a hardware
register dump of an IR2E pipe next to IR2 (needs a hardware trace).

## Q8. DG5-2 with GVO versus DG5-8

Software tells them apart by the display identity word (Q4), the DG NIC page and the option NIC page. They are
different boards, not a board choice that shares one id.

| | DG5-2 + GVO | DG5-8 |
|---|---|---|
| DG part (irsaudit list 0x188fc8) | 030-1055 (plain), 030-1524 or 030-1242 "2 VOCs with GVO/DDO2/DPLEX/TVO" | 030-1087 ("8 VOCs") |
| NIC name | DG5-2 | DG5-8 (or DG5B-8) |
| display id bits 18-16 | 1 (2 channels) | 7 (8 channels) |
| display id bits 21-19 | 6 on the DG5-2 carrying GVO; 7 if no option | 7 (no option) |
| bit 23 external gamma | 0 | 1 (51bf1002) |
| option NIC (`DGOPT`) | GVO 030-1184-xxx, name GVO | absent ("No NIC serial number available") |
| gfxinfo | "Display has 2 channels", "GVO option detected", "32K cmap" | "Display has 8 channels", "32K cmap, 64K external gamma", no option line |
| scan chain | 2-VOC DG5 layout | 8-VOC DG5 layout (arm1 tables) |

Constraints E: `irsaudit` "Invalid configuration: DG5-8 + TVO"; "DG NIC reports DG w/ option board but no option
board detected". Published captures: IR3 rack capture (DG 030-1242-001 rev D, GVO 030-1184-002 rev B, word f9311002),
IR2 two-RM dump (DG 030-1087-001, word 51bf1002), IR2 neiddd dumps (030-1055-001, f9391002). Whether a DG5-8 can carry
a GVO in the field is U (the combination is neither refused by `irsaudit` except TVO, nor seen in a capture). Settle
with a published inventory of a DG5-8 pipe with a DGOPT record. `ircombine` adds the option channel to the displayed
channel count; `gfxinfo` does not (IR3 GVO capture prints 2).

---------------------------------------------------------------------------------------------------------

# Proposed command-table.md additions

There is no product/board section in `docs/command-table.md` today (sections run 1 to 11). Proposed: a new
**section 12** placed after section 11, plus new evidence keys S70 to S75 appended to the key table in section 1.
The row format below matches section 6 (Constant | Role | Grade | Evidence). The first line of the document and the
"Totals" count change when the owner of `docs/command-table.md` lands these rows (they add the rows' grades).

### New evidence keys (append after S69)

```
| S70 | the kernel attach decode: `kona_attach` (`usr/cpu/sysgen/IP27boot/kona.a`, member `kona_edtinit_hip2.o`, 6.5.30 offset 0xed4, the 0x8800 read at 0x1100-0x111c and the 0x0b00 read at 0x1188-0x11a4, stores at 0x122c, 0x1344, 0x1354, 0x1368, 0x1394; 6.5.0 build for the earlier two-way decode) and `kona_extract_nic_info` (offset 0x69c) |
| S71 | the pipe firmware's board-set classifier and identity readers in arm1.u (6.5.30): `init_kona_jtag_chain` (0x0c01ac3c), `ge_board_id`, `rm_board_id`, `init_config` (0x0c01d8a0), `dg_board_id` (0x0c01d2d0), `dgGetBoardConfig` (0x0c00d200), `DoDGRqstQueryMonitorName` (0x0c00d5cc); the 6.5.0 classifier (0x0c018c18) |
| S72 | the product-name tables: `tport.bin` start screen (0x0c0163a4 area) and `sbin/hinv` (6.5.30; inventory type to text jump table at 0x1000e400, strings 0x1000e4e8-0x1000e5f0) |
| S73 | the IR diagnostic's board-record checks: `usr/diags/IR/bin/irsaudit` `probe_rm7_rm8_chain` (0x10050834; board-type compares at 0x100511a8-0x100511cc), NIC part and name checks (strings 0x188c38-0x1897a0) and the RM/TM combination messages (0x1018da68-0x1018ddf0) |
| S74 | published captures: an IR3 rack `gfxinfo -v` and `hinv -m` with configmon output, an IR2 two-RM dump with a DG5-8, two IR4 captures, and Usenet `<40C20497.1D26A44A@machtnix.net>` (IR2E `hinv -m`), `<98rhjd$1g8a$1@fido.engr.sgi.com>` (SGI product table), `<38f35a0a.0402270839.392df64b@posting.google.com>` (irsaudit part numbers on an IR3 pipe) |
| S75 | the client side: `libGLcore` N32 `GetBoardInfo` (0xd947f60, board-set compares for "E" and "P"); `vfmtActualHWToKonaTarget` in `kona.so` and `konal.so` (class mapping) |
```

### 12. Product and board identity

```
## 12. Product and board identity

Which numbers a pipe presents to make `hinv`, `gfxinfo`, the GL renderer string and the video-format checks name
one product rather than another. The board-set number is the first word of the 1912-byte configuration record
(section 9 references the record's transport). Values are decimal unless marked.

### 12.1 Board-set number (configuration word 0)

| Value | Role | Grade | Evidence |
|---|---|---|---|
| 0 | first-generation InfiniteReality (Onyx); also what the firmware keeps when no rule matches | established | S71 |
| 1 | InfiniteReality2 (the Onyx2 pipe marketed as InfiniteReality): firmware stores it for geometry-board type 5; kernel default | established | S70, S71 |
| 2 | Reality (Onyx2): firmware stores it for any raster-slot type 9; kernel stores it when bit 10 of the 0x0b00 read is set | established | S70, S71 |
| 3 | treated like 1 by every reader but stored by no shipped code; no implementation should emit it | established (no producer); who stored it in the field unknown | S70, S71 |
| 4 | InfiniteReality2E: firmware stores it for geometry-board type 0xc when no raster slot is type 0xb, 0xe or 9; kernel stores it when the one-wire text contains "GE16-" | established | S70, S71 |
| 5 | InfiniteReality3: any raster-slot type 0xb with no type 6; kernel when bits 1:0 of the 0x8800 read are 1 | established | S70, S71 |
| 6 | InfiniteReality4: any raster-slot type 0xe; kernel when bits 1:0 of the 0x8800 read are 2 | established | S70, S71 |
| kernel inventory type | 18 InfiniteReality2, 19 Reality, 20 InfiniteReality2E, 22 InfiniteReality3, 23 InfiniteReality4 (16 InfiniteReality, set by a host this table does not model); 21 is never stored | established (kernel store); type to hinv text established from the jump table | S70, S72 |
| mixing | an error is printed for Reality with InfiniteReality raster slots (type 9 with 6, 0xb or 0xe) and for IR4 slots with older slots (type 0xe with 0xb or 6) | established | S71 |

### 12.2 Attach probe reads (kernel, once, through the display-bus port)

| Selector written to the address port | Role | Grade | Evidence |
|---|---|---|---|
| 0x8800 | 32-bit read; the kernel uses bits 1:0 only: 1 selects set 5, 2 selects set 6, 0 and 3 fall through to the one-wire text test. Required values: IR2 and IR2E 0 or 3, IR3 1, IR4 2. What register answers (also the DG5 I2C controller's data word) and why the value differs between IR3 and IR4 is unknown | established (consumption); unknown (source) | S70, S71 |
| 0x0b00 | 32-bit read; bit 10 set selects Reality. Required clear for every InfiniteReality product. Source of bit 10 unknown (video DAC 0 index register is 8 bits wide) | established (consumption); unknown (source) | S70 |
| order | 0x8800 is written and read first, the adaptor reset and error report follow, then 0x0b00 is written and read; the test order is 0x0b00 bit 10, 0x8800 bits 1:0, GE16 text | established | S70 |

### 12.3 Board-identity words (scan-chain ids, printed on the `brd:` line)

| Word | Role | Grade | Evidence |
|---|---|---|---|
| geometry board (config +256): bits 15-9 | type: 0 first generation; 5 GE14 (IR2, Reality); 0xc GE16 (IR2E, IR3, IR4) | established | S71, S74 |
| geometry board bits 17-16, 19-18 | engine count index (1, 2, 4, 8) and back-end RAM code | established | S71 |
| raster slot word: bits 15-9 | board type of the slot's texture board: 6 TM7 (IR, IR2, IR2E), 9 Reality's RM8, 0xb TM8 (IR3), 0xe TM9 (IR4); drives the board-set rule above | established | S71, S73 |
| raster slot word: bits 18-16 | texture code: 1 16 MB, 2 64 MB, 3 128 MB, 4 256 MB, 6 1024 MB (5 is accepted by `gfxinfo` but no board or diagnostic path uses it) | established | S71, S73, S74 |
| raster slot word: bits 8-0 | low bits vary by board (0x002, 0x006 seen on IR2; 0x006 on IR3; 0x004 on IR4); meaning unknown | unknown | S74 |
| display board (config +836 = 0x344): the `brd:` line's last word | channel count - 1 (18-16), option 21-19 (3 TVO, 4 DPLEX, 5 DVP, 6 GVO, 7 none), colour-map size bit 22, external gamma bit 23; low half-word 0x1002 on DG5, 0x040c on DG4 | established (fields); inferred (family marker) | S71, S74 |
| slot present | word neither 0 nor all ones | established | S71 |

### 12.4 Product rows

| Product (hinv text) | Board set | GE board | RM board (name, part) | TM board (name, part) | DG board | Texture per RM | Grade | Evidence |
|---|---|---|---|---|---|---|---|---|
| InfiniteReality2 | 1 | GE14-4, 030-1129-001 or -002 (rev F seen); identity words 0x5c160a04, 0x80160a04, 0x80150a04 | RM7, 030-1054-001; slot id type 6, code 2 (0x03020c02 single RM, 0x03020c06 two RMs); 20 image processors (rev 4, some 5) | TM7-64, 030-1053-001 | DG5-2 030-1055-001 (word 0xf9391002) or DG5-8 030-1087-001 (0x51bf1002); options GVO 030-1184, DPLEX 030-1409, DVP 030-1123 | 64 MB (code 2) | established (captures) | S70-S74 |
| InfiniteReality2E | 4 | GE16-4, 030-1398-001 (rev E seen); identity word 0x80f61806 (inferred) | RM9, 030-1402-001 (revision unknown); slot id type 6, code 2 (not 0x03041606), 20 image processors | TM7-64, 030-1053-001 (inferred: the 64 MB part); revision unknown | DG5-2 030-1055-001 expected; not constrained by software | 64 MB (code 2) | established for set, GE part and hinv name; inferred for RM/TM identity words; unknown for revisions and chip words (no published IR2E `brd:` or `gfxinfo -v`) | S70-S74 |
| InfiniteReality3 | 5 | GE16-4, 030-1398-001 rev E; identity word 0x80f61806 | RM9 board, 030-1402-001 rev E (NIC name RM9; `gfxinfo` and `irsaudit` print RM10 for the RM9+TM8 pair); slot id 0x03041606 (type 0xb, code 4); `rm0:` chip words 15032057 15431057, TF rev 2, TM rev 2, 20 image processors rev 5 | TM8-256, 030-1588-001 (revision unknown) | DG5-2 030-1242-001 rev D with GVO 030-1184-002 rev B (word 0xf9311002); 030-1067-001 rev F also listed on the same rack | 256 MB (code 4) per RM, not summed | established (one IR3 rack pipe, plus irsaudit); texture-board name TM8 established, literal NIC name inferred | S70-S75 |

### 12.5 Per-product software differences

| Constant | Role | Grade | Evidence |
|---|---|---|---|
| renderer text | 1 and 5: no letter after "IRL"; 4: "P" after "IRL"; 2: "E" in place of "L" | established | S75 |
| X video class | 1, 3, 4, 5: class 1 (budget RM count x 5 x 2^22); 2: class 2; 6: class 3; 0: class 0 | established | S75 |
| monitor query | DDC/EDID read only when the word is 1; sets 4 and 5 return no monitor name | established | S71 |
| display-option reply mask | TVO 0x40, DPLEX 0x20, GVO 0x10, DVP 0x08, none 0 (sets 1-6) | established | S71 |
| IR3 and IR4 against IR2 | register contract: no difference found in 6.5.30; extension string identical in all builds of 6.5.0 and 6.5.30 | established (negative, 6.5.30 only) | S75 |
```

### Entries for section 11's unknown list (append)

```
**12. Product and board identity**

- what stored board set 3 in the field (no shipped producer)
- the source of bits 1:0 of the 0x8800 read and of bit 10 of the 0x0b00 read
- low bits 8:0 of a raster-slot identity word
- RM9 and TM revisions on an IR2E pipe; revision of 030-1588-001; the IR2E `rm0:` chip words
- how a texture download reaches several RMs and which RM owns which pixels
- whether a DG5-8 can carry a GVO in the field
```
