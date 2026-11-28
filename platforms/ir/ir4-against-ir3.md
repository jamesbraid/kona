# InfiniteReality4 against InfiniteReality3: what the shipped software does differently

Read 2026-11-28 against kona at fb7d66a5. Scope: beyond the kernel's read of display-bus selector 0x8800 (bits 1:0 = 2), where do the IRIX 6.5.30 kernel, the pipe firmware, `gfxinit`, the X server loadables and the GL libraries treat an InfiniteReality4 pipe (board set 6, RM11 with TM9) differently from an InfiniteReality3 pipe (board set 5, RM10)? Nothing here was run on a pipe.

Labels: **established** (read in a binary, with address), **inferred** (reasoned, reasoning given), **unknown**. Basis words: *binary* (a shipped file and address under `root/`), *capture* (published `gfxinfo` or `hinv` output), *RE note* (an existing page of this repository, named).

Binaries read (6.5.30m): `usr/cpu/sysgen/IP35boot/kona.a` (disassembled whole), `usr/gfx/ucode/KONA/arm1.u` through `software/ucode/arm1.s`, `usr/gfx/gfxinit` (string search), `usr/lib/X11/dyDDX/{kona,konad,konal,konas}.so` and `konavis.so`, `usr/gfx/arch/IP35KONA32/libGLcore.so` and `libGL.so`. The IRIX 6.5.5 `kona_if.h` header gives the record layout (own words below); it predates IR3 and IR4, so no source covers the board sets above 4. No 6.5.7 to 6.5.17 overlay is held.

## Answers in one table

| Item | IR3 | IR4 | Grade | Basis |
|---|---|---|---|---|
| board set stored in word 0 of the record | 5 | 6 | established | `arm1.u` 0x0c01acac-0x0c01ad48; `kona_attach` (object offsets 0x1360 and 0x1374) |
| kernel inventory type (`hinv` text) | 22 | 23 | established | `kona_attach` +0x1368, +0x1378; RE note `ir2e-ir3-products.md` |
| other kernel reads of the board set | none | none | established (negative) | scan of every load at pipe-state offsets 244 to 2155 in `IP35boot/kona.a`: nothing loads +244 |
| kernel reads of the texture size code | none | none | established (negative) | same scan: no load at +280 to +319 |
| X server class from board set | 1 | 3 | established | `konad.so` 0x4277f0 (`vfmtActualHWToKonaTarget`), tests at 0x427c20-0x427c48, class stores at 0x427c7c (3) and 0x427c90 (1) |
| raster-memory constant per RM, in 32-bit words | 5 x 2^22 = 20,971,520 | 5 x 2^27 = 671,088,640 | established (constant); inferred (word size) | `konad.so` 0x427040 shifts 0x16 and 0x1b; `arm1.u` 0x0c0112a4-0x0c0112b0 |
| X visual table chosen | `konVisualInfo_imp8c` | `konVisualInfo_imp8c` (the same) | established | `konad.so` `konInit` jump table at file 0x18e570 |
| texture size code in the record | 4 (256 MB) | 6 (1024 MB) | established | raster-slot id bits 18:16 read by `arm1.u` `init_config`; table at `libGLcore.so` 0xda81278 |
| image engines per RM | 20 (`imp8`, scan chip 0x34) | 10 (`imp8d`, scan chip 0x39) | established | `arm1.u` `init_config` 0x0c01daf4 and 0x0c01dc28 |
| pipe firmware | the same `arm1.u` | the same `arm1.u` | established | `gfxinit` names four `.u` files, no board-set choice |
| `GL_RENDERER` | `IRD/<d>/<r>/256/<g>` | `IRD/<d>/<r>/1024/<g>` | established (rule); inferred (digits) | `libGLcore.so` 0xd947f60 |
| host-visible register or range used only by IR4 | none found | one probe value (0x8800 bits 1:0 = 2) | established (negative) | all of the above |

## 1. The board-set number and who reads it

Two deciders write the number, as the existing product page grades. The pipe firmware classifies the raster-slot identity words (type = bits 15:9): any type 0xb gives 5, any type 0xe gives 6, and it prints an error for IR4 slots mixed with older ones (`arm1.u` `init_kona_jtag_chain`, 0x0c01acac-0x0c01ad48). The kernel decides from the two attach reads. Both are established there; this page adds the consumers.

- **Kernel (`IP35boot/kona.a`).** `kona_attach` (starts at object offset 0xed4 in the `IP35boot/kona.a` member that holds it) is the only place that stores the number (pipe state +244; the 5 and 6 at 0x1360 and 0x1374) and the inventory type (+2188; 22 at 0x1368, 23 at 0x1378). `kona_inventory_board` reads +2188 for `add_to_inventory`. Established, binary. A scan of every load from pipe-state offsets 244 to 2155 (outside stack and global-pointer bases) finds none at +244 (board set) and none at +280 to +319 (the per-RM `present` and `texram` words). The kernel therefore never branches on board set or texture size after attach. The record it later gets from `gfxinit` (ioctl 10006, 1912 bytes copied to +244) overwrites its own number with the firmware's. Established (negative), binary.
- **Display-bus reads.** The 0x8800 selector is written to widget +0x8003c0 and the result read from +0x8003d0 at object offsets 0x1244-0x1264; the 0x0b00 read follows at 0xf94 (reached by a jump back, so it runs second). Same as the product page. The kernel also reads widget +0x64 at 0xf5c: a nonzero low three bits (the subsystem field) jump to the semaphore release at 0x1064 and no board is registered; bits 5:3 (map-RAM size) are read at 0xf88 and 0x12b8. None of this depends on IR3 against IR4. Established, binary.
- **Pipe firmware (`arm1.u`).** Every branch on the board-set word that differs for 6 is listed in section 7.
- **X server.** `vfmtActualHWToKonaTarget` (`konad.so` 0x4277f0, 0x520 bytes; same body in `kona.so` 0x428070 and `konal.so` 0x13a77f0) asks the kernel for the 1952-byte board record (ioctl 102), refuses a name other than `KONA`, copies the record's word at +40 and maps it to a class: 0 to 0, 2 to 2, 6 to 3, anything else to 1. IR3 is class 1, IR4 is class 3. Established, binary. The only other class tests in `vfmt` are for class 2 (Reality). The existing reading of `vfmtIsKonaCombinationValidForTarget` (`software/xsgi/kona-ddx.md`) names only class 2 as special; class 3 changes the budget below and nothing else I found.
- **`konInit`.** The X screen set-up switches on the same word (`konad.so` 0x57b130; seven-entry jump table at file offset 0x18e570, also in `kona.so` at 0x182508, `konal.so` and `konas.so` at 0x18e570). Sets 0 and 1 pick `konVisualInfo_imp8`, set 2 picks `_imp9`, sets 3, 5 and 6 pick `_imp8c`, and set 4 picks `_imp8c` only when all twenty image-processor ids of every RM have generation nibble 5, else `_imp8`. So IR3 and IR4 get the same visual tables; `konavis.so` has no table for the IR4 image processor. Established, binary.
- **GL.** `GetBoardInfo` reads the word only to test for 2 (letter E) and 4 (suffix P); 6 and 5 are treated alike (section 8). `libGL.so` (IP35KONA32) calls ioctl 102 twice, in `__glXCreateDirectContext` (0xd80ef24) and `__glx_GetString` (0xd83247c), both with a 40-byte buffer, which ends before the record's +40, so libGL never sees the board set. Established, binary.

## 2. Texture size code

Code 6 means 1024 MB and 4 means 256 MB, in the same ladder `gfxinfo` prints (0 none, 1 16, 2 64, 3 128, 4 256, 5 512, 6 1024). The firmware takes it from bits 18:16 of the raster-slot identity word (RM identity `0x03041606` on the IR3 capture is code 4, `0x03061c04` on the IR4 captures is code 6; type bits 15:9 are 0xb and 0xe). `libGLcore.so` `GetBoardInfo` indexes a seven-entry pointer table at 0xda81278 (IP35KONA32) with the word at reply +80, giving the strings "256" and "1024" for codes 4 and 6. The kernel and the X server never read it (section 1). Established, binary and capture. The low nine bits of the identity word (0x006 on IR3, 0x004 on IR4) have no reader; unknown, as in the product page.

## 3. The raster-memory budget (pixel-depth rule)

`vfmtResolvePixelDepth` (`konad.so` 0x427040, 0x41c bytes; `kona.so` 0x4278c0; `konal.so` 0x13a7040; the same function in `usr/gfx/ircombine` 0x100828e0 and `usr/gfx/setmon` 0x10018df0) counts allocated pixels as the width rounded up to a multiple of 160, times the height. The budget is the RM count times 5 times 2^22 for classes 0 and 1, halved for class 2, and 5 times 2^27 for class 3 (`sll 0x16` at 0x4270cc, `sll 0x1b` at 0x427128). The quotient (budget divided by pixels, integer) is compared with 64, 32, 16, 8 and 4 to give the depth code. Established, binary.

The pipe firmware keeps its own copy of the rule for the frame-buffer set-up request: `DoDGRqstSetupFrameBuffer` branches on board set 6 at 0x0c0111a0, then computes RM count shifted left 23, divided by the pixel count, times 80 (0x0c0112a4-0x0c0112b0). That is RM count x 5 x 2^27 / pixels, the same constant. For other sets it uses RM count x 5 x 2^22. Established, binary.

Worked case (1920 x 1200, two RMs; 1920 is already a multiple of 160, so 2,304,000 pixels): IR3 budget 41,943,040, quotient 18, which sits between thresholds 16 and 32; IR4 budget 1,342,177,280, quotient 582, above the top threshold 64. Arithmetic, established. The mapping from the quotient bands to the names `gfxinfo` prints (Medium, Extra-Large) is not re-derived here; the captures agree with it.

The unit is **inferred** to be a 32-bit word, from 5 x 2^22 words = 80 MiB matching the published 80 MB per RM, which makes 5 x 2^27 words exactly 2.5 GiB per RM, the published IR4 figure (RE note `devices/rm/README.md`, "What the published manuals add").

## 4. The 0x778-byte (1912-byte) board record

The layout is the 6.5.5 `kona_config` (RE note `software/kernel/kernel.md`, "The configuration record and its identity words"; the ARM replies with count 0x1de and 478 words). In the 1952-byte ioctl-102 reply it starts at +40. What an IR4 pipe puts in each field, against IR3:

| Record offset | Field | IR3 | IR4 | Grade, basis |
|---|---|---|---|---|
| 0 | `bdset` | 5 | 6 | established, `arm1.u` 0x0c01ad24-0x0c01ad48 |
| 4, 8 | `gecnt`, `rmcnt` | engines and boards found | same fields | established, `init_config` |
| 36, 40, 44... | `rm[i].present`, `rm[i].texram` | 1, 4 | 1, 6 | established, section 2 |
| 88 | `numrms` (software state) | RMs in use | RMs in use | established, `init_jtag` ("numrms") |
| 84 | `numges` | GEs in use | GEs in use | established |
| 140 | pixel depth | loaded combination | loaded combination | established, `GetBoardInfo` +180 |
| 256 | `id.ge.board` | GE16-4 word `0x80f61806` | the same word | capture (IR3 rack and both IR4 dumps show it unchanged) |
| 276 + 140 r | `id.rm[r].board` | `0x03041606` (type 0xb) | `0x03061c04` (type 0xe) | capture; type test `arm1.u` 0x0c01acac-0x0c01acd4 |
| +4 | `pg` | chip type 0x30 word (`15032057`) | chip type 0x35 word (`05032057`) | established, `init_config` 0x0c01da50 against 0x0c01db64 |
| +8 | `tg` | chip type 0x31 (`15431057`) | chip type 0x36 (`35431057`) | established, 0x0c01da68 against 0x0c01db90 |
| +12..+27 | `tf[4]` | chip type 0x33 | chip type 0x38 | established, 0x0c01da80 against 0x0c01dbb8 |
| +28..+59 | `tm[8]` | chip type 0x32 | chip type 0x37 | established, 0x0c01dabc against 0x0c01dbf4 |
| +60..+139 | `imp[20]` | twenty words, chip type 0x34 | ten words (`imp[0]` to `imp[9]`), chip type 0x39; the other ten are not written | established, 0x0c01db14-0x0c01db44 against 0x0c01dc28-0x0c01dc60 |
| 924 and up | 13 NIC records | RM, TM, GE, DG names and parts | the same slots | unknown for IR4 contents beyond the captures: the kernel parser matches labels only (RE note `devices/xg/README.md`, one-wire records) |

Chip-type numbers are the scan-chip codes of the firmware's chip tables (`software/ucode/arm1_scan_tables.md`). The IR4 chips are `pg2b`, `tg2`, `tf1c`, `tm1c` and `imp8d`; the IR3 board reads `pg2`, `tg1`, `tf1`, `tm1` and `imp8`. Established, binary. `gfxinfo` names the RM as RM10 or RM11 by board set (RE note `software/userland/setup-tools.md`).

## 5. Image engines per RM

IR3's RM has twenty first-generation-family image processors (scan chip 0x34, generation nibble 5 on the capture). IR4's RM has ten `imp8d` (scan chip 0x39). `init_config` loops twenty times unless the board set is 2 (ten `imp9`) and ten times for set 6 (`mov r10,#0xa` at 0x0c01dc28). The netlist `rm11` carries ten `imp8dc` (RE note `devices/rm/README.md`). Established, binary. The netlists `rm10` and `rm11` both carry ten `imp8dc`; the product page's opening correction ties the `rm10` netlist to the IR4 RM board, so the netlist name `rm10` is not the IR3 pipe's RM10.

## 6. Loaded firmware and microcode

The kernel loads nothing: `KONAdownload` returns 0 (RE note `platforms/ir/non-irix-driver.md`). `gfxinit` `kona_loaducode` names `arm1.u`, `geif.u`, `ged1b.u` and `ge11.u`; a search of `usr/gfx`, both kernel archives, the X modules and the libraries finds those names only in `gfxinit`, and `arm1_kpm.u` and `ge_kpm.hex` only in the `kpm` tool. So no file differs between IR3 and IR4. Established, binary (string search). All IR4 behaviour is inside `arm1.u`:

## 7. Where `arm1.u` treats board set 6 differently

All established, binary (6.5.30m `arm1.u`, addresses are image addresses in `software/ucode/arm1.s`):

- `init_kona_jtag_chain` 0x0c01ac3c: sets word 0 to 6 for any type-0xe raster slot; at 0x0c01ada8 it selects the scan-chain map `jtag_chain_hilo_ir4` (raster chains use `HILO_RM11_chain`, 24 chips, 192 instruction bits) instead of the `jtag_chain_hilo` template.
- `init_rm_jtag` 0x0c01bd4c: for 6 it installs `config_imp8d_jtag` (0x0c01b974) as the per-image-processor set-up, with ten processors per board; sets 5 and below install `config_imp8_jtag` (0x0c01afd8). `config_imp8d_jtag` selects chip 0x39 and writes 24 scan registers, numbered 0x6af to 0x6c6; the IR3 routine writes 47 numbered 0x528 to 0x556 on chip 0x34.
- `reset_imps` 0x0c01cbd0: ten chips per board for sets 2 and 6, twenty for others.
- `init_config` 0x0c01da24: reads the IR4 chip types (section 4).
- `DoDGRqstSetupFrameBuffer` 0x0c011194: the budget in section 3.
- `init_tm` 0x0c003980: counts the eight texture-chip id words per RM by generation nibble. If all are generation 2 it writes raster registers 0x1023 (value 1) and 0x5004 (value 0) only for sets 1, 3, 4 and 5 (jump table at 0x0c0039fc; sets 0, 2 and 6 return). If all are generation 3 it writes them for any set (0x0c003a3c-0x0c003a64, no set test). The captures show generation 2 on the IR3 pipe and generation 3 on the IR4 pipes, so both pipes get the two writes, by different paths. Established (code); the generations are from the captures.
- `init_imp` 0x0c003aac stores a mode byte at state-block offset 0xcf1 from the image-processor id words (twenty per RM, generation nibble 5 counted). Value 1 when all twenty per RM are generation 5 and the set is 3, 4 or 5 (0x0c003c2c-0x0c003c48: the IR3 case); value 3 when more than ten per RM are generation 5 and the set is 3, 4, 5 or 6 (0x0c003c84-0x0c003ca4); value 2 for set 2 (0x0c003cac). An IR4 pipe writes ten image-processor words, so by the capture (ten generation-5 words) neither count test passes and the byte is left as it was. **Inferred** from the capture and from the other ten words not being written. The five readers I sampled (0x0c013314, 0x0c028608, 0x0c032a08, 0x0c0391c0, 0x0c03b864) compare it with 2 only, so the difference is likely to be harmless; I did not read the other twelve of seventeen. The product page's "3, 4, 5 and 6 all select class 3" holds only when more than ten words per RM read generation 5.

## 8. `GL_RENDERER` for IR3 and IR4

`GetBoardInfo` (`libGLcore.so` N32, 0xd947f60 to 0xd9481ac) is instruction-for-instruction the same in the IP35KONA32 and IP27KONA32 builds (checked by comparing the disassembly). It asks ioctl 102 for 1952 bytes and builds, with `strcat` and one-character `strncat` calls:

`IR` + platform letter + (`P` only if board set 4) + `/` + depth letter + `/` + RM digit + `/` + texture size + `/` + engine digit.

- Platform letter: reply byte 4, which is `D` for an IP35 kernel (`kona.a` carries "KONAD"), `L` on IP27; `E` replaces it for board set 2.
- Depth letter: "SMLX" indexed by reply +180 (record +140, the pixel depth word).
- RM digit: "01234" indexed by reply +128 (record +88, `numrms`).
- Texture size: string table indexed by reply +80 (record +40, `rm[0].texram`).
- Engine digit: "012345678" indexed by reply +124 (record +84, `numges`).

So IR3 and IR4 differ only in the texture field and in whatever the loaded combination puts in the depth and RM fields. On an IP35 host with two RMs, four GEs and a Medium or Extra-Large pixel depth: IR3 at Medium reads `IRD/M/2/256/4`; IR4 at Extra-Large reads `IRD/X/2/1024/4`. The rule is established (binary); the digit values 2 and 4 follow from the counts in the captures and are **inferred**. No string "IR3", "IR4", "RM10" or "RM11" is in any KONA `libGLcore.so`, and `GL_VERSION` is the fixed "1.1 Irix 6.5" (RE note `software/opengl/opengl.md`).

## 9. Registers or ranges only IR4 needs

Host-visible: none found. The 6.5.30 kernel, `gfxinit`, the X modules and the GL libraries use one register set for every board set; the one IR4-specific host-visible fact is the 0x8800 probe value 2 at attach. Established (negative, over the files listed above); that is not a proof about the RM11 chips themselves.

Behind the ARM (reachable only through its scan chains and the raster bus, not by the host):

- scan-chain registers of chip types 0x35 (`pg2b`), 0x36 (`tg2`), 0x37 (`tm1c`), 0x38 (`tf1c`) and 0x39 (`imp8d`): code lists and lengths are in `software/ucode/arm1_scan_tables.md` (`imp8d_chip_type` 660-bit data register, `HILO_RM11_chain` 192 instruction bits). The `imp8d` set-up registers are 0x6af to 0x6c6 (section 7). Established, binary.
- no raster-bus register is written for IR4 alone: `init_tm` writes 0x1023 and 0x5004 on both pipes (section 7). Established, binary.
- diagnostics carry IR4 scan registers and CRC tables for the same chips (`software/diags/irsaudit-releases.md`, `devices/rm/raster-rules.md`). RE notes.

## Unknowns

- What answers the 0x8800 and 0x0b00 reads, and why the value differs between IR3 and IR4 (carried over from the product page).
- The contents and meaning of the `imp8d`, `tm1c`, `pg2b`, `tf1c` and `tg2` scan registers: only names, lengths and set-up register numbers are known. Settled by the IR diagnostic's data files, which hold them as bit lists; not read here.
- The physical memory map of the RM11 (2.5 GiB from ten chips) and which `imp8d` memory groups are populated. The driver fixes only the budget.
- Whether any difference shows in 6.5.7 to 6.5.17 binaries, the first releases that knew IR3 and IR4 (not held).
- NIC record contents for an IR4 pipe (RM 030-1651, TM9): the kernel does not interpret them.
- The `libGL.so` code beyond its two ioctl-102 calls was not read in full; the claim that it has no IR4 branch rests on the buffer size and on no board or product string in the library.
