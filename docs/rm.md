# Raster manager boards

What the IR diagnostics say about the raster manager (RM) and texture memory (TM): which chips a board carries, how they connect and what bus widths bound the per-pixel arithmetic. Facts are labelled **established** (read from the file named), **inferred** (with the reasoning) or **unknown**. Register-level facts are in [RM.h](../RM.h).

The source is the diagnostic netlists in `usr/diags/IR/data/*.netmap.Z` (IRIX 6.5.30m). [scripts/netmap_summary.py](../scripts/netmap_summary.py) reduces them to [diags/netmap_chips.tsv](../diags/netmap_chips.tsv): per netlist, each chip type, its instance count and every pin group with its width. Pin names are SGI's; what each bus carries is inferred from the names and the connections.

## No raster microcode

**Established.** `usr/gfx/ucode/KONA/` holds programs for the geometry engines (`ge.u`, `ge11.u`, `ge.hex`), the distributor (`ged1b.u`), the ARM (`arm1.u`), the textport (`tport.bin`) and display tables (`dg4/`, `vof/`, `dgo1/`). `usr/diags/IR/ucode/` holds diagnostic versions of the geometry-engine, ARM and display programs. Neither has a raster-manager or texture program, and no RM or TM chip in the netlists has a microcode address or data bus (the geometry engine's is `u_a[18]`, `u_d[72]`). **Inferred:** the RM and TM chips are fixed-function, configured through the registers kpm lists ([RM.h](../RM.h)).

## Chips on each board

**Established** (chip type and instance count per netlist):

| Netlist | Chips |
|---|---|
| `rm6`, `rmtm7` | `imp` x20, `pg`, `tg`, `tfp`, `tfq`, `tfr`, `tfs`, `tm` x8 |
| `rm7` | `imp` x20 only |
| `rm8` | `imp9` x10, `pg`, `tg`, `tfp`-`tfs`, `tm1c` x8 |
| `rm10` | `imp8dc` x10 only |
| `rm11` | `imp8dc` x10, `pg`, `tg`, `tfp`-`tfs`, `tm1cc` x8 |
| `tm7` | `pg`, `tg`, `tfp`-`tfs`, `tm` x8 |
| `tm9` | `pg`, `tg`, `tfp`-`tfs`, `tm1cc` x8 |
| `ge12_*`, `ge14_*` | `hip`, `ged`, `bef`, `ge` (up to 8) |

**Inferred:** each RM revision has one `pg`, one `tg`, four `tf` chips (suffixes p, q, r, s) and eight texture-memory chips, plus image processors (`imp*`) that own the framebuffer. The `tm` netlists are the texture section alone and `rm7` and `rm10` the framebuffer section alone. The chip-name expansions (pixel generator, texture generator, texture filter) are not written anywhere in the files and stay **unknown**.

**Register prefixes and chips.** **Established** (firmware, [below](#how-the-arm-firmware-writes-raster-registers)): `init_pg` writes `PG_` indexes, `init_tf` writes `TFP_` indexes, `init_imp` writes `IMP_` indexes, and `init_tg` writes 0x3fcf-0x3fd3 in the combined range. **Inferred:** each register prefix of [RM.h](../RM.h) names the netlist chip type of the same letters: `PG_` the `pg`, `TG_` the `tg`, `TM_` and `TML_` the `tm` chips, `IMP_` the `imp` chips, `TFP_` and `TFT_` the four `tf` chips, and a combined prefix (`PGTG_`, `TGTM_`, `TGTMTFT`, `PGTFPIMP_`) reaches every chip type its letters name with one write. **Inferred** (which chips answer `TFP_` and `TFT_`): all four `tf` chips answer both, `TFP_` through the pixel generator and `TFT_` through the texture generator. The evidence:

- The `tf` chips have no raster-bus pins. In every netlist only `pg` and `tg` take `tbus_data[64]`, and each drives a separate bus to each of the four filters (`pgtfp_dat[80]` to `pgtfs_dat[80]` from `pg`, `tgtfp_data[31]` to `tgtfs_data[31]` from `tg`, `rm11.netmap`, [diags/netmap_chips.tsv](../diags/netmap_chips.tsv)). A filter register can only arrive over one of those buses.
- The filter's own BIST file splits the chip in two (`usr/diags/IR/data/tf1.tcbist`, 6.5.30m, RAM list): a `uib` half with the fog tables (`ufog.fog_lut.lut_01`, `lut_23`), the input FIFOs from the pixel generator (`upgfifo_ram_frag`, `upgfifo_ram_quad`) and the five image-processor interfaces, and a `utd` half with the texture lookup table (`utlut_ram` with R, G, B and A RAMs), the texture-generator FIFO (`utgfifo_ram`) and eight texture-memory FIFOs. The `TFP_` registers are the fog, texture-environment and alpha registers (`TFP_FOG*`, `TFP_TEV`, `TFP_AFUNC`) and the `TFT_` registers the lookup-table and filter registers (`TFT_TLUT_DATA_*`, `TFT_BICUBIC`, `TFT_EXTRAP`, `TFT_DETAILTEX`), so each prefix matches one half and the bus that feeds it.
- The combined names pair the same way: `PGTFPIMP_` is pixel generator, `TFP_` and image processor, the chain `pg` to `tf` to `imp`; `TGTMTFT` is texture generator, texture memory and `TFT_`.
- Each filter handles a fixed share of the pixels. `irsaudit`'s `pxid_to_tfnum` (0x100cf0ac) maps a pixel id to filter (id / 2) mod 4, called from `screenxy_to_all` (0x100cecdc). A fog or environment setting that reached only one filter would change one pixel pair in eight, and neither the firmware (`init_tf` writes 0x140e and 0x1410 once) nor the diagnostic (`init_tf` 0x100c06c8, `tbRegWrite` with no chip field) writes a filter register more than once per setting.

Which of the other combined indexes each chip answers follows the same letters; no shipped software writes one combined index and reads it back from one chip, so the per-chip decode beyond the names is **unknown: no shipped software or published source depends on it**. Routes tried: the netlists, the BIST RAM lists, the firmware's `init_*` writers, `irsaudit` `init_tf`, `tbRegWrite`, `tbuRegReset` and the scan-chain routines (`jt_extract_chip_register`, `jt_insert_chip_register`, the `jtcrc_*` readers), which move scan and CRC registers, not raster registers by index (no routine named `jt_reg_read` exists in this build), and the 6.5.5 `sys/kona*.h` headers (no raster register names).

## Data path

**Established** pin groups and widths (`rm11`; `rm6` and `rm8` agree except where noted):

- Geometry board to raster: `pg` and `tg` both take `tbus_data[64]` with `tbus_mode[2]`. The geometry board's `bef` and `hip` also carry `tbus_data[64]`.
- `pg` to `tg`: `pgtg_scx[11]`, `pgtg_scy[11]`, `pgtg_scvquad_l`, `pgtg_scvlast_l`.
- `pg` to each `tf`: `pgtf_dat[80]` with a valid strobe.
- `tg` to each `tf`: `tgtf_data[31]`, `tgtf_type[2]`.
- `tg` to the texture memories: two 73-bit buses `tgtm_b0data[73]`, `tgtm_b1data[73]` with 2-bit types.
- Each texture memory to each `tf`: `tmtf_data[16]` and `tmtf_mode[3]`. Each `tf` has eight such inputs (`tm0tf_data` to `tm7tf_data`).
- Texture-memory DRAM: four 16-bit banks (`drama` to `dramd`) per chip, with a 14-bit address on `tm` and `tm1c` and 15-bit on `tm1cc`.
- `tf` to image processors: five 16-bit outputs (`tfimp0_data` to `tfimp4_data`); a 20-bit return `imptf_data[20]`.
- Image processor framebuffer: `imp` has four 32-bit SDRAM ports with 10-bit addresses; `imp9` two 16-bit ports with 12-bit addresses; `imp8dc` eight 32-bit ports with 15-bit addresses. Each sends 8-bit video data to the display board (`impdg_data[8]`).

**Inferred** from the connections: `pg` walks primitives into fragments, giving their screen position to `tg` and per-fragment data to the filters; `tg` turns texture coordinates into texture-memory addresses; each filter receives 16 bits from every one of the eight texture memories, combines them and passes the result to the image processors that write the framebuffer.

## Precision bounds

**Inferred** from the widths above, as upper or lower bounds only:

- Screen position reaches the texture generator as 11-bit x and y, so one RM addresses at most 2048 x 2048 positions on that path.
- A texel arrives at a filter 16 bits at a time from each memory. A filtered colour leaves a filter 16 bits at a time.
- Everything the texture generator tells a filter about one fragment fits a 31-bit word plus a 2-bit type per transfer. The per-pixel level of detail, the sub-texel fractions and the filter weights are computed in `tg` or `tf` and travel on that bus or stay inside the chip.
- Colour and depth iteration happen in `pg`, whose per-fragment output to each filter is 80 bits wide.

The host-visible precisions already found (filter4 weights in S1.7, the 4.4 LOD bias, sharpen and detail codes) are in [RM.h](../RM.h). The bit widths of per-pixel LOD, sub-texel position, filter weights and colour and depth iterators inside `pg`, `tg` and `tf` are **unknown: no shipped software or published source depends on them**. No microcode computes them, and the netlists bound only the buses between chips. Routes tried: the netlists (bus widths above), the BIST files `tf1.tcbist`, `tg2.qtcbist` and `pg2.tcbist` (6.5.30m; they list RAMs by instance path and give no widths), and the `irsaudit` 6.5.30m texture and raster tests: `TEST_texmem`, `TEST_texread`, `TEST_rmcrctex`, `TEST_rmcrctex1` and `TEST_rmcrctri*` draw with `tbuGenPattern`, `tbuLoadBicubic` and `crc_tex1_draw` and then call `run_crc_testlist`, which compares chip CRC signatures with the gold files `irsaudit.*.gold`. No test computes an expected pixel in host code, so none carries the chips' arithmetic.

## How the ARM firmware writes raster registers

The ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) programs the raster boards at start-up (`init_pg`, `init_tg`, `init_tf`, `init_tm`, `init_imp` in `arm1.u`, IRIX 6.5.30m) and again whenever it sets up a pixel path. Facts are labelled **established** (read from the firmware), **inferred** (with the reasoning) or **unknown**.

**Established.** One register write is four stores to the host-interface window: the descriptor word 0x58404800 at r9 + 0x400, then three words at r9 + 0x840, r9 + 0x840 and r9 + 0x8c0. In `init_pg`: the first word is 0xffffffff, the second is 0x01270800, the third is the value 1. The descriptor decodes as routed command 128 ([ucode/arm1.md](../ucode/arm1.md)), whose engine handler is `mgesi_BshRegisterWrite`; the writes that go to the "IMP" chips ([RM.h](../RM.h) `IMP_` registers) use 0x584fc800, command 159, handler `mgesi_IMPbshRegisterWrite`.

**Established** (register indexes). The low 16 bits of the second word are register indexes in the kpm index space of [RM.h](../RM.h): `init_pg` writes 0x0800, 0x080f and 0x0806 (`PG_`), `init_tf` 0x140e and 0x1410 (`TFP_`), `init_imp` 0x1c00, 0x1c02, 0x1c03, 0x1c06-0x1c09, 0x1c0b, 0x1c0d, 0x1c14 and 0x1c15 (`IMP_`). `init_tg` writes 0x3fcf-0x3fd3, which are not in the `TG_` range of the table; **unknown** what they address. `init_pg` also writes 0x3be0 and 0x3be1 with descriptor 0x584fc800.

**Established** (the high half; [below](#the-register-write-word)). The high half of the address word is 0x110 + i, where i is the word of the 89-word register shadow that mirrors the register in the low half: all 64 address-word constants in the image whose low half is a shadow register satisfy it (`0x01270800` is `PG_GENERAL`, shadow word 23). The first word is the shadow's bit mask; [The shadow bit mask](#the-shadow-bit-mask) below gives the evidence.

A separate path writes the board-side registers numbered 0x400-0x477 (`tbus_regwrite`): `init_hip_tbus`, `start_rdata`, `finish_rdata`, `check_pipe_sync`, `init_tf`, `init_tm` and the select-feedback and pixel read-back handlers. They are not in the `RM.h` index space; [below](#host-interface-registers-on-the-raster-bus) identifies the ones the firmware's value flow names.

## The register-write word

Sources: `arm1.u` (IRIX 6.5.30m, [ucode/arm1.s](../ucode/arm1.s)), the IR diagnostic `usr/diags/IR/bin/irsaudit` (6.5.30m, N32, stripped, 1280 exported function names) and its raster-bus vector files `usr/diags/IR/data/aaspoke.tbus` and `tbusdata.Z` (260489 lines between them). Labels as above.

**Established (the vector files).** Each line of the vector files is `0 m W`, with m one of 1, 2 or 3 and W a 64-bit word in hex. The raster chips' input is `tbus_data[64]` with `tbus_mode[2]` ([above](#data-path)), so **inferred:** m is the bus mode and W the bus word. In mode-1 words the top 16 bits are a register index from the [RM.h](../RM.h) space or the 0x400-0x477 board range. For an ordinary register write the next 16 bits repeat the index and the low 32 bits are the value: `1c0d1c0d00011006` writes 0x00011006 to `IMP_BL`. Two groups break the repeat: words whose top half is `PG_PRAM` + n (0x880-0x8ff) carry a different register in the second half (`08c1140600000004`: `PG_PRAM` entry 0x41, `TFP_FOG_OFFSET`, value 4), and words with top half 0x0440, 0x0460 or 0x0477 carry 0x1408 or 0x3fc3 there.

**Established (the host diagnostic's writer).** `tbRegWrite` in `irsaudit` (0x1013eb3c) is the routine every register test calls with an index and a 64-bit value. It sends three words to the graphics FIFO: 5, then (index & 0x7fff) << 16 | (value >> 32) & 0xffff, then the low 32 bits of the value. The bus word is therefore the index in bits 62-48 and a 48-bit value in bits 47-0. The registers whose kpm fields reach above bit 31 use bits 47-32 as value: `TFP_FOG_DATA` words in `tbusdata.Z` read `1405ffaffaffaffa` (four 12-bit fog entries), `TFP_A2M_LUT1` reads `140a00ff7f773733` (five bytes). The engine program builds the same high word. `mGL_EX_Initialize` (ge.u 0xb0cf-0xb0e4) stores 0x10040000 to 0x100b0000 in engine memory as templates, and `mgebi_Bind2dMipmapTexture` (0x430b, 0x4328, 0x4343, 0x434c) ORs the high bits of the level addresses into them.

**Inferred (the second half).** For a 32-bit register, bits 47-32 carry no value bits; the vector files' writers fill them with the index again, or with 0 (`TM_TEXBIND_START`, `TM_DRAW_TEXMAP_*`). A word for the pixel generator's parameter RAM stores a register write for later, so its value's high bits hold that register's index. The read-back registers 0x440, 0x460 and 0x477 take a raster register number as the thing to return.

**Established (the diagnostic's restore values).** `tbuRegReset` (0x10154cb4) walks a per-register changed flag. For each register the diagnostic has written, it clears the flag and writes a fixed value. Most values are 0. The exceptions are `TFP_TEV` 0x22, `TFP_FOG` 0x80000, `TFP_AFUNC` 0x7000, `TFP_AC` 0x8000, `IMP_CONFIG` 0x3c2, `IMP_OP` 1, `IMP_MS` 0x17f8, `IMP_ADDR` 0x32212301, `IMP_BL` 0x11012, `IMP_FAKE_SIMPLE_FB_SIZE` 0x028001e0, `PGTFPIMP_MSLOC` 0xc8b640 and `_1` 0x916f6f, `PGTG_SCIS` and `_1` 0x3fff8000, `PGTG_ZRECT_6`/`_7` 0x100000, `PGTG_DRECT` 0xc010010, `PGTG_DRECT_1` 0x10, `PGTG_SIZE` and `_1` 0x10, `_2` 0xf, `_3` 0xf00f, `PGTG_ENABLES` 0xf, `TGTMTFT` 0x30, `PG_MSK` 0x55, `PG_SMASK` 0xffffffff, `PG_STIPPLE_1`-`_3` 0x55, 0x55, 0xff and `PG_PSPEC` 0x100100. Several match the firmware's start-up shadow values (`befsh_init`: `IMP_ADDR`, `TFP_AFUNC`, `TFP_FOG`, `PG_SMASK`). The routine skips `TM_TEXBIND_START`, the `TM_RDBK_*` registers, the `*_NOP` registers, `TFP_TEXRB_CLR`, `TFT_TEXRB`, `IMP_RAMSYNC` and `TML_RAMSYNC`. **Inferred:** those hold no state; a write is an action. These are the diagnostic's chosen values, not measured power-on contents.

**Established (the geometry-engine side).** The ARM does not write bus words directly. It sends routed command 128 or 159 (`mgesi_BshRegisterWrite` or `mgesi_IMPbshRegisterWrite`, [ucode/arm1.md](../ucode/arm1.md)) with a select word, an address word and the value. The address word is (0x110 + i) << 16 | register. Here i is the word of the 89-word shadow whose `befsh_addrs` entry is that register. This holds for all 64 address-word constants in the image whose low half is in `befsh_addrs` (0x01100441 to 0x01681408). One constant, 0x010f087f (`PG_NOP`), uses 0x10f, the slot below the shadow.

**Inferred.** The geometry board's back-end chip (`bef`, which carries `tbus_data[64]` in the `ge12`/`ge14` netlists) keeps the shadow at `BEF_REGSHADOW` (0x100) + slot. On a write it records the register and value in slot (high half - 0x100) and puts an ordinary register-write word (register, register, value) on the bus. The basis is the 64-for-64 match, the `BEF_REGSHADOW` index 0x100 in the kpm table, and the vector files, which hold bus-side words whose top half is the register itself. Whether the chip rewrites the top half to (register, register) or forwards the shadow index to the raster chips is **unknown: no shipped software or published source depends on it**: every raster chip ignores indexes outside its own block, so both readings give the same register contents. Routes tried: the firmware's writers (`init_pg`, `init_imp`, `arm_slop`), `mgesi_BshRegisterWrite` and `mges_ContextReloadFromBEF` in `ge.u` (they send the address word unchanged as the high half), `irsaudit` 6.5.30m `tbRegWrite` and `TEST_befshadow` (which address the shadow directly, below), and the two vector files (bus-side words only, no geometry-board input to compare).

### The shadow bit mask

**Established** (`ge.u` 6.5.30m, `mgesi_BshRegisterWrite` 0x3991-0x399d, [raster.S listing](../ucode/ge_listing/raster.S.lst)). The engine handler for the ARM's four-store write reads its three operand words by offset (source A = 0x1f, D = 0, 1, 2; [ucode/ge_ops.md](../ucode/ge_ops.md#input-and-output-fifo-operations)) and sends two bus words. First it puts the constant 0x00070000 on the bus-output address 0x1f8 and operand 0 (the first word) on 0x1f5; then operand 1 (the address word) on 0x1f8 and operand 2 (the value) on 0x1f5. The address word is the high half of a bus word ([above](#the-register-write-word)), so 0x1f8 takes the high half and 0x1f5 the low half. The first bus word is therefore a write of the first word to raster-bus index 7. kpm's raster table names index 7 `BEF_REGSHADOW_BMASK`. `mges_ContextReloadFromBEF` (0x6736-0x673b) also loads 0x00070000 and sends it through 0x1f8 before its 89-word loop.

**Inferred:** the first word is the bit mask the back-end chip applies when it updates the shadow slot, so a write of part of a register keeps the shadow's other bits. The values agree: `init_pg`, `init_tg` and most of `init_imp` send all ones with a whole-register value; `init_imp` (0x0c003c4c-0x0c003c58) sends mask 0x30000000 with value 0x30000000 to `IMP_BL` after an earlier full write of 0x11012, so only bits 28-29 change; the pixel paths send 0x7 with `IMP_` index 0x1c08 (0x0c034144) and `TFP_` 0x1408 (0x0c015750) and 0x7f with board register 0x441 (0x0c026be4, 0x0c028d7c). Whether the mask also limits which bits of the raster chip's own register change is **unknown: no shipped software or published source depends on it**; routes tried: the firmware writers above, the two engine handlers, `irsaudit` 6.5.30m (no routine writes index 7; its shadow test, below, writes slots directly), kpm's field table (no fields under `BEF_REGSHADOW_BMASK`) and the vector files (no index-7 words).

### Bus modes 2 and 3

**Established (the diagnostic's vector-file player).** `TEST_tbusfile` (0x1010a75c) reads a `.tbus` file line by line into (mode, word) pairs, skipping lines that start with `#`, and plays them through `fcTbusWrite` (0x1013e81c). That routine sends the routed token 0xe2 (`HP_TBUS_1`, three payload words, engine handler `mgesi_TBUS_1`, [GE.h](../GE.h)), then (mode XOR 1) << 1, then the word's high and low halves. So file mode 1 travels as code 0, mode 3 as 4 and mode 2 as 6. `mgesi_TBUS_1` (`ge.u` 0x39ab) writes that first operand to the engine's bus-output address 0x1f8, where `mgesi_TbusRegWrite`, the production register write, starts with 0x1f7 and sends no mode word. **Inferred:** the engine's bus interface takes an explicit mode through 0x1f8 and defaults to the register-write mode otherwise.

**Established (the files' structure).** In `tbusdata.Z` (100403 mode-1, 105362 mode-3 and 53599 mode-2 words) and `aaspoke.tbus` (500, 304, 304) every run of non-register words starts with mode 3 and alternates 3, 2, 3, 2. In `tbusdata.Z` 46746 of the runs follow a register write to index 0x001e and 4753 each follow `PG_QCOLOR_2` (0x0803) or `PG_MSK` (0x0806); a typical run is 3, 2, 3, 2, 3 after a 0x001e word, and paired 3 and 2 words often share their top 12 bits (`e74f3f77db500000`, `e7400077db500000`). **Inferred:** modes 2 and 3 carry primitive data to the pixel generator rather than register writes, as words of a multi-word packet. Which of the two marks the first, middle or last word of a packet is unknown: no shipped software or published source depends on it beyond replaying the files. Routes tried: `fcTbusWrite`, `TEST_tbusfile` and its line parser (0x1010b9b4), the two vector files, `mgesi_TBUS_1` and `mgesi_TbusRegWrite` in `ge.u`; the production engine program emits primitives through its own handlers, whose bus-output addresses (0x1f4-0x1f8) are read in the listings but whose mode per address is not.

### Host-interface registers on the raster bus

**Established (value flow).** `arm_start_selectfeed` (0x0c022a50) reads the six `START_SELECTFEED` payload words (`A_hi`, `A_lo`, `len`, `llen`, `stride`, `snapshot`, [hip.md](hip.md)). It writes 0x450 = `A_hi`, 0x451 = `A_lo`, 0x453 = `len`, 0x454 = 0, 0x452 = `llen`, 0x455 = `llen` and 0x456 = `stride`. `__glkonSendPixelsToHost` writes 0x450 and 0x451 from `mem_mgr_pnum` and `mem_mgr_poff`, sets 0x452 and 0x453 to the same byte count, and zeroes 0x454, 0x455 and 0x456. `start_rdata` (0x0c0224d4) writes 0x477 = 0, 0x440 = 1, 0x463 = length, 0x464 = 0x400, 0x460 = address high, 0x461 = address low, 0x462 = length, then 0x476 = 0. `__glkonSetupPacker` (0x0c028d20) writes 0x441 through shadow slot 0x110 with a value assembled from four small fields: bits 0-1, bit 2, bits 3-5 and bit 6.

**Inferred (the names).** These are the host interface's output-DMA registers ([HIP.h](../HIP.h), kpm `hip_registers.tsv`), reached by bus index rather than host offset:

| Bus index | Register | Basis |
|---|---|---|
| 0x440 | `HH_ODMA_CHANNEL` (1 bit) | set to 1 before a read-back that uses the second channel, cleared otherwise |
| 0x441 | `HH_PACK_MODE` (7 bits) | the packer setup routine writes a 7-bit value; the host register mask is 0x7f |
| 0x450-0x456 | `HH_ODMA_PNUM`, `_POFF`, `_LEN`, `_TOTAL`, `_OVER`, `_LLEN`, `_STRIDE` | the select-feedback payload lands in the order the host registers have the same fields; `OVER` is cleared |
| 0x460-0x464 | `HH_ODMA2_PNUM`, `_POFF`, `_LEN`, `_TOTAL`, `_OVER` | the read-back setup loads address, length and total, and the second channel has exactly these five registers |
| 0x476, 0x477 | **unknown** (0x476 is the port the reply words are written to, 0x477 is cleared first) | `start_rdata`, `arm_getconfig` |

The bus numbering is not the host offset divided by 8 (`HH_ODMA_PNUM` is at host offset 0x260). The order within each group follows the host order. So the first three shadow words are pack mode, output line length and output stride, which a context switch must keep for a pixel read in progress. **Established** since: kpm names shadow words 0-2 `HT_PACK_MODE`, `HT_ODMA_LLEN` and `HT_ODMA_STRIDE` ([Shadow word names](#shadow-word-names)).

### Names for the unnamed indexes

**Established.** `irsaudit` holds the raster register names as a string pool in index order (rodata around 0x101c3340). Next to each multi-word register it lists suffixed names that the kpm table lacks: `PGTFPIMP_MSLOC_1`, `PGTG_SCIS_1`, `PGTG_ZRECT_1` to `_7`, `PGTG_DRECT_1` and `_2`, `PGTG_SIZE_1` to `_3`, `PG_QCOLOR_1` and `_2`, `PG_STIPPLE_1` to `_3`, `IMP_USER_COLOR_1`, `IMP_CLEAR_COLOR_1` and `IMP_WMASK_BIT_1`. **Inferred:** suffix n is the base index + n. In seven of the ten cases the suffixed names exactly fill the gap between the base register and the next kpm-named register (`PGTG_ZRECT` 0x3fc4 plus seven reaches `PGTG_DRECT` 0x3fcc). In the other three (`PGTFPIMP_MSLOC`, `PG_STIPPLE`, `IMP_WMASK_BIT`) they stay inside the gap, which leaves 0x80e unnamed. That gives:

| Index | Name |
|---|---|
| 0x3be1 | `PGTFPIMP_MSLOC_1` |
| 0x3fc3 | `PGTG_SCIS_1` |
| 0x3fc5-0x3fcb | `PGTG_ZRECT_1`-`_7` |
| 0x3fcd, 0x3fce | `PGTG_DRECT_1`, `_2` |
| 0x3fd0-0x3fd2 | `PGTG_SIZE_1`-`_3` |
| 0x802, 0x803 | `PG_QCOLOR_1`, `_2` (0x803 is the most frequent register in the vector files, 4753 writes) |
| 0x80b-0x80d | `PG_STIPPLE_1`-`_3` (start-up values 0x55, 0x55, 0xff) |
| 0x1c11, 0x1c13, 0x1c15 | `IMP_USER_COLOR_1`, `IMP_CLEAR_COLOR_1`, `IMP_WMASK_BIT_1` |

The string pool is not referenced through absolute pointers in the file, so the index binding rests on order and gap counts, not on a table entry. The field layouts of the suffixed registers are **unknown**.

## The 89-word register shadow

Facts are labelled **established** (read from `arm1.u`, IRIX 6.5.30m, by [scripts/befshadow.py](../scripts/befshadow.py)), **inferred** (with the reasoning) or **unknown**. The full table is [ucode/befshadow.tsv](../ucode/befshadow.tsv).

**Established.** The ARM image holds two 89-word tables in its data, `befsh_addrs` (0x04067c0c) and `befsh_init` (0x04067d70). `init_geBefAddrs` (0x0c01fc38) sends `befsh_addrs` to the engines' data port (r9 + 0x840) one word at a time; `init_befshadow` (0x0c01fc80) does the same with `befsh_init`; both loop to count 0x59. **Inferred** from that pairing: shadow word i is shadow register `BEF_REGSHADOW` + i (0x100 + i), `befsh_addrs[i]` names the raster register it mirrors and `befsh_init[i]` is the value it holds after start-up.

**Established** (layout, word order; names where the kpm raster table has a register at that index).

| Words | Registers mirrored |
|---|---|
| 0-2 | 0x441, 0x455, 0x456: host-interface pack mode, output-DMA line length and stride (kpm names, [below](#shadow-word-names)) |
| 3-20 | 0x3fc2-0x3fd3, the combined pixel-generator and texture-generator range (`PGTG_SCIS` and `_1`, `PGTG_ZRECT` and `_1`-`_7`, `PGTG_DRECT` and `_1`-`_2`, `PGTG_SIZE` and `_1`-`_3`, `PGTG_ENABLES`; suffix names from the diagnostic, [below](#names-for-the-unnamed-indexes)) |
| 21-22 | 0x3be0, 0x3be1 (`PGTFPIMP_MSLOC`, `PGTFPIMP_MSLOC_1`) |
| 23-35 | `PG_GENERAL`, `PG_PSPEC`, `PG_BLOAT`, `PG_Z_OFF`, `PG_MSK`, `PG_WIN_OFFSET_X/Y`, `PG_SMASK`, `PG_STIPPLE`, `PG_STIPPLE_1`-`_3` (0x80b-0x80d), `PG_PRU` |
| 36-46 | `IMP_CONFIG`, `IMP_OP`, `IMP_MS`, `IMP_CLIP`, `IMP_SZ0`, `IMP_SZ1`, `IMP_DEPTH_CLEAR`, `IMP_ADDR`, `IMP_BL`, `IMP_WMASK_BIT`, `IMP_WMASK_BIT_1` (0x1c15) |
| 47 | `COMMON_IFMT` (0x3ff8) |
| 48-53 | `TGTML_TEXLD_*` and `TML_TEXLD_GLOBALOFFSET`, stored with bit 30 set (0x40007fc1-0x40007fc5, 0x40005001) |
| 54-74 | texture-memory draw registers (`TM_*`), `TGTM_*`, `TG_*` and `TFT_*` |
| 75-88 | `TFP_*`: alpha function, texture, texture environment, fog, pixel and colour format, alpha mask |

### Shadow word names

**Established** (kpm, IRIX 6.5.30m, `usr/gfx/KONA/bin/kpm`). kpm's command-name table (vaddr 0x100ba838, [diags/kpm/hp_commands.tsv](../diags/kpm/hp_commands.tsv)) runs past the 512 tokens. Its rows 0x210-0x268 name the shadow words: row 0x210 + i is the register `befsh_addrs[i]` holds. All 89 rows agree with the ARM table. 79 names carry exactly that raster index, the seven `PGTG_ZRECT_1` to `_7` rows are the base register plus one to seven, and rows 0x210-0x212 name the three host-interface registers of words 0-2. Those three names (`HT_PACK_MODE`, `HT_ODMA_LLEN`, `HT_ODMA_STRIDE`) settle the reading of bus indexes 0x441, 0x455 and 0x456 [above](#host-interface-registers-on-the-raster-bus). Row 0x210 + i is also 0x100 plus the address-word high half 0x110 + i. **Inferred:** kpm indexes this table by that high half plus 0x100, so its rows 0x200-0x20f name shadow slots 0x100-0x10f; it names only slot 0x10f, as `PIXELS_STARTGEID`, the slot the `PG_NOP` address constant 0x010f087f uses.

| Shadow word | Address-word high half | kpm row | Name in kpm | Raster index | Start-up value |
|---:|---|---|---|---|---|
| 0 | 0x110 | 0x210 | `HT_PACK_MODE` | 0x0441 | 0x0 |
| 1 | 0x111 | 0x211 | `HT_ODMA_LLEN` | 0x0455 | 0x0 |
| 2 | 0x112 | 0x212 | `HT_ODMA_STRIDE` | 0x0456 | 0x0 |
| 3 | 0x113 | 0x213 | `PGTG_SCIS` | 0x3fc2 | 0x3fff8000 |
| 4 | 0x114 | 0x214 | `PGTG_SCIS_1` | 0x3fc3 | 0x3fff8000 |
| 5 | 0x115 | 0x215 | `PGTG_ZRECT` | 0x3fc4 | 0x0 |
| 6 | 0x116 | 0x216 | `PGTG_ZRECT_1` | 0x3fc5 | 0x0 |
| 7 | 0x117 | 0x217 | `PGTG_ZRECT_2` | 0x3fc6 | 0x0 |
| 8 | 0x118 | 0x218 | `PGTG_ZRECT_3` | 0x3fc7 | 0x0 |
| 9 | 0x119 | 0x219 | `PGTG_ZRECT_4` | 0x3fc8 | 0x0 |
| 10 | 0x11a | 0x21a | `PGTG_ZRECT_5` | 0x3fc9 | 0x0 |
| 11 | 0x11b | 0x21b | `PGTG_ZRECT_6` | 0x3fca | 0x100000 |
| 12 | 0x11c | 0x21c | `PGTG_ZRECT_7` | 0x3fcb | 0x100000 |
| 13 | 0x11d | 0x21d | `PGTG_DRECT` | 0x3fcc | 0xc010010 |
| 14 | 0x11e | 0x21e | `PGTG_DRECT_1` | 0x3fcd | 0x10 |
| 15 | 0x11f | 0x21f | `PGTG_DRECT_2` | 0x3fce | 0x0 |
| 16 | 0x120 | 0x220 | `PGTG_SIZE` | 0x3fcf | 0x10 |
| 17 | 0x121 | 0x221 | `PGTG_SIZE_1` | 0x3fd0 | 0x10 |
| 18 | 0x122 | 0x222 | `PGTG_SIZE_2` | 0x3fd1 | 0xf |
| 19 | 0x123 | 0x223 | `PGTG_SIZE_3` | 0x3fd2 | 0xf00f |
| 20 | 0x124 | 0x224 | `PGTG_ENABLES` | 0x3fd3 | 0xf |
| 21 | 0x125 | 0x225 | `PGTFPIMP_MSLOC` | 0x3be0 | 0xc8b640 |
| 22 | 0x126 | 0x226 | `PGTFPIMP_MSLOC_1` | 0x3be1 | 0x916f6f |
| 23 | 0x127 | 0x227 | `PG_GENERAL` | 0x0800 | 0x0 |
| 24 | 0x128 | 0x228 | `PG_PSPEC` | 0x080f | 0x100100 |
| 25 | 0x129 | 0x229 | `PG_BLOAT` | 0x0804 | 0x0 |
| 26 | 0x12a | 0x22a | `PG_Z_OFF` | 0x0805 | 0x0 |
| 27 | 0x12b | 0x22b | `PG_MSK` | 0x0806 | 0x55 |
| 28 | 0x12c | 0x22c | `PG_WIN_OFFSET_X` | 0x0807 | 0x0 |
| 29 | 0x12d | 0x22d | `PG_WIN_OFFSET_Y` | 0x0808 | 0x0 |
| 30 | 0x12e | 0x22e | `PG_SMASK` | 0x0809 | 0xffffffff |
| 31 | 0x12f | 0x22f | `PG_STIPPLE` | 0x080a | 0x0 |
| 32 | 0x130 | 0x230 | `PG_STIPPLE_1` | 0x080b | 0x55 |
| 33 | 0x131 | 0x231 | `PG_STIPPLE_2` | 0x080c | 0x55 |
| 34 | 0x132 | 0x232 | `PG_STIPPLE_3` | 0x080d | 0xff |
| 35 | 0x133 | 0x233 | `PG_PRU` | 0x0810 | 0x0 |
| 36 | 0x134 | 0x234 | `IMP_CONFIG` | 0x1c00 | 0x3c2 |
| 37 | 0x135 | 0x235 | `IMP_OP` | 0x1c02 | 0x1 |
| 38 | 0x136 | 0x236 | `IMP_MS` | 0x1c03 | 0x17f8 |
| 39 | 0x137 | 0x237 | `IMP_CLIP` | 0x1c06 | 0x0 |
| 40 | 0x138 | 0x238 | `IMP_SZ0` | 0x1c07 | 0x0 |
| 41 | 0x139 | 0x239 | `IMP_SZ1` | 0x1c08 | 0x0 |
| 42 | 0x13a | 0x23a | `IMP_DEPTH_CLEAR` | 0x1c09 | 0x0 |
| 43 | 0x13b | 0x23b | `IMP_ADDR` | 0x1c0b | 0x32212301 |
| 44 | 0x13c | 0x23c | `IMP_BL` | 0x1c0d | 0x11012 |
| 45 | 0x13d | 0x23d | `IMP_WMASK_BIT` | 0x1c14 | 0x0 |
| 46 | 0x13e | 0x23e | `IMP_WMASK_BIT_1` | 0x1c15 | 0x0 |
| 47 | 0x13f | 0x23f | `COMMON_IFMT` | 0x3ff8 | 0x0 |
| 48 | 0x140 | 0x240 | `TGTML_TEXLD_MISC` | 0x7fc5 | 0x0 |
| 49 | 0x141 | 0x241 | `TGTML_TEXLD_S1ST_RSTART` | 0x7fc3 | 0x0 |
| 50 | 0x142 | 0x242 | `TGTML_TEXLD_STSTART` | 0x7fc2 | 0x0 |
| 51 | 0x143 | 0x243 | `TGTML_TEXLD_SIZE` | 0x7fc1 | 0x0 |
| 52 | 0x144 | 0x244 | `TGTML_TEXLD_STEND` | 0x7fc4 | 0x0 |
| 53 | 0x145 | 0x245 | `TML_TEXLD_GLOBALOFFSET` | 0x5001 | 0x0 |
| 54 | 0x146 | 0x246 | `TM_DRAW_GLOBALOFFSET` | 0x101a | 0x0 |
| 55 | 0x147 | 0x247 | `TM_MEMCONF` | 0x1000 | 0x0 |
| 56 | 0x148 | 0x248 | `TGTM_TEX_SIZE` | 0x3fd5 | 0x0 |
| 57 | 0x149 | 0x249 | `TGTMTFT` | 0x3fd4 | 0x30 |
| 58 | 0x14a | 0x24a | `TG_MAP_LEVEL` | 0x0c04 | 0x0 |
| 59 | 0x14b | 0x24b | `TG_LOD_SCALEST` | 0x0c05 | 0x0 |
| 60 | 0x14c | 0x24c | `TG_LOD_SCALER` | 0x0c06 | 0x0 |
| 61 | 0x14d | 0x24d | `TGTM_DCTEX_SIZE` | 0x3fd6 | 0x0 |
| 62 | 0x14e | 0x24e | `TM_DRAW_DETAILMAP` | 0x1019 | 0x0 |
| 63 | 0x14f | 0x24f | `TM_TEX_SIZE` | 0x13d5 | 0x0 |
| 64 | 0x150 | 0x250 | `TM_DRAW_CLIP_OFFSET` | 0x1020 | 0x0 |
| 65 | 0x151 | 0x251 | `TM_DRAW_CLIP_BKPT` | 0x1021 | 0x0 |
| 66 | 0x152 | 0x252 | `TGTM_TEX_SCENTER` | 0x3fd7 | 0x0 |
| 67 | 0x153 | 0x253 | `TGTM_TEX_TCENTER` | 0x3fd8 | 0x0 |
| 68 | 0x154 | 0x254 | `TFT_SBIAS_EN` | 0x1850 | 0x0 |
| 69 | 0x155 | 0x255 | `TFT_SCALE` | 0x1851 | 0x0 |
| 70 | 0x156 | 0x256 | `TFT_BIAS` | 0x1852 | 0x0 |
| 71 | 0x157 | 0x257 | `TFT_TLUT` | 0x1853 | 0x0 |
| 72 | 0x158 | 0x258 | `TM_DRAW_SHA_AMBIENT` | 0x101e | 0x0 |
| 73 | 0x159 | 0x259 | `TM_DRAW_REDUNDANCY` | 0x101f | 0x0 |
| 74 | 0x15a | 0x25a | `TG_MISC` | 0x0c02 | 0x0 |
| 75 | 0x15b | 0x25b | `TFP_AFUNC` | 0x1407 | 0x7000 |
| 76 | 0x15c | 0x25c | `TFP_TEX` | 0x1500 | 0x0 |
| 77 | 0x15d | 0x25d | `TFP_TEV` | 0x1401 | 0x22 |
| 78 | 0x15e | 0x25e | `TFP_TEV_CC` | 0x1402 | 0x0 |
| 79 | 0x15f | 0x25f | `TFP_TEV_CC1` | 0x1413 | 0x0 |
| 80 | 0x160 | 0x260 | `TFP_AC` | 0x140e | 0x8000 |
| 81 | 0x161 | 0x261 | `TFP_FADE_MASK_LUT` | 0x140b | 0x0 |
| 82 | 0x162 | 0x262 | `TFP_FOG` | 0x1403 | 0x80000 |
| 83 | 0x163 | 0x263 | `TFP_FOG_CC` | 0x1404 | 0x0 |
| 84 | 0x164 | 0x264 | `TFP_FOG_CC1` | 0x1414 | 0x0 |
| 85 | 0x165 | 0x265 | `TFP_FOG_OFFSET` | 0x1406 | 0x0 |
| 86 | 0x166 | 0x266 | `TFP_PIX_FMT` | 0x1410 | 0x0 |
| 87 | 0x167 | 0x267 | `TFP_COLOR_FMT` | 0x140f | 0x0 |
| 88 | 0x168 | 0x268 | `TFP_AMASK` | 0x1408 | 0x0 |

**Established** (start-up values, `befsh_init`). Non-zero for words 3-4 (0x3fff8000), 11-14, 16-22, 24, 27, 30, 32-34, 36-38, 43-44, 57, 75, 77, 80 and 82; all others are zero. Examples: `PG_SMASK` 0xffffffff, `IMP_ADDR` 0x32212301, `TFP_AFUNC` 0x7000, `TFP_FOG` 0x80000. **Inferred:** a context with no saved shadow keeps these values, because `init_befshadow` runs once in `init_bef` and the load handler (tag 0x20) replaces the same 89 words.

**Established** (a bulk write form). One case of `arm_slop` (the code at 0x0c038ee4, after the "slop[1].sync gembox" test) writes all 89 registers in a loop: descriptor 0x58404800, then through the data port a word (the same one sent as the final value), then an address word of `befsh_addrs[i]` with (0x100 + i) in the high half. This is the four-store raster register write [above](#how-the-arm-firmware-writes-raster-registers).

**Inferred.** Bit 30 on words 48-53 marks registers reached by the texture-load path; the kpm table has them at the low 15 bits. The saved image's word order equals table order because the load handler checks the length 0x59 and nothing in the loader reorders words.

**Settled since.** The high half of the address word and the registers behind the unnamed indexes are read in [The register-write word](#the-register-write-word), and the first word of the write is the shadow bit mask ([The shadow bit mask](#the-shadow-bit-mask)).

**Established** (the shadow RAM, `irsaudit` 6.5.30m `TEST_befshadow` 0x1005da64 and its helpers at 0x1005e444-0x1005f110). The diagnostic tests the shadow as a 256-word RAM, with no engine in the path. For each slot s from 0 to 255 it writes the bus word (index 0x300 + s, `BEF_REGSHADOW_WRITE`) with 0x0476 in bits 47-32 and a test pattern in bits 31-0, then (0x200 + s, `BEF_REGSHADOW_READ`) with 0x0476 in bits 47-32 and zero below. After the last slot it writes 1 to board register 0x477 and waits for the output DMA (`wait_for_odma`). It then compares each returned 64-bit word, both halves, with the pattern, printing the slot, the expected and the received value. Its patterns include all ones, 0x55555555, 0xaaaaaaaa, 0xcccccccc, 0x33333333 and 0xa5a5a5a5, and separate passes walk a one and a zero through all 32 bits; one write pass puts 0x0c00 rather than 0x0476 in bits 47-32. **Inferred:** a read of slot s sends the slot's 32-bit value as a write to the register named in bits 47-32 of the read word, here 0x476, the reply port the firmware's read-back uses (`start_rdata`, [above](#host-interface-registers-on-the-raster-bus)), and 0x477 flushes the replies to the host. All 256 slots hold 32 bits. The production shadow uses slots 0x10-0x68 (index 0x110 + i for the 89 words); the slots below are plain RAM to the diagnostic.

What production software keeps in slots 0x00-0x0e is **unknown: no shipped software or published source depends on it**: the only writer of an index in 0x100-0x10f is the address word 0x010f087f (`PG_NOP` through slot 0x0f, which kpm names `PIXELS_STARTGEID`) and the `arm_slop` loop, which writes all 89 registers through index 0x100 + i (slots 0-0x58) instead of 0x110 + i. Why that one loop uses the lower base is **unknown: no shipped software or published source depends on it**: it is a debug case of the firmware's `arm_slop` handler ("slop[1].sync gembox"), and no reader restores from those slots. Routes tried: every 32-bit constant of the form 0x010NXXXX in `arm1.u` 6.5.30m (one, 0x010f087f), the immediates of `ge.u` (one, 0x10f087f), kpm's raster table (names `BEF_REGSHADOW`, `_READ`, `_WRITE`, `_BMASK` and slot 0x10f only), `irsaudit` `TEST_befshadow` (tests the RAM, not its use) and `tbuRegReset`.

The engine side of a context reload (`mges_ContextReloadFromBEF`, `ge.u` 0x6730-0x675e, [ctx_load.S listing](../ucode/ge_listing/ctx_load.S.lst)) sends the mask word (index 7, 0x6736/0x673a) and `TFP_` 0x1408 (0x6737/0x6738), loads the loop count 0x59 (0x673c) and the base 0x01100000 (0x6735), and steps the address with the integer add 0x6c0 (0x6742, 0x6752) once per pass of the loop that ends at 0x6753; so it walks the 89 slots in table order. What each pass puts on the bus besides the stepped index is open ([open-questions.md](open-questions.md)).

## Reset of the raster boards

From the ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md), IRIX 6.5.30m). Labels as above.

**Established** (`init_rm_board` 0x0c003de8, `reset_imps` 0x0c01cba8, `DoDGRqstResetRMBoards` 0x0c006064). At start-up `init_rm_board` configures the boards through the boundary-scan chain (`init_rm_jtag`, 939 instructions, a long list of chip register writes), then sets up the five chip types in turn: `init_pg`, `init_tf`, `init_tg`, `init_tm`, `init_imp` ([register write format above](#how-the-arm-firmware-writes-raster-registers)). It skips all of this when running in a simulator, and prints "init_rm: WARNING: got _old_ TF's" if the texture-filter chips are an old revision.

`reset_imps` resets the pixel (IMP) chips and is the only chip reset in the firmware. It acts on 10 chips per scan chain when the board type word is 2 or 6, and on 20 otherwise, which matches the netlists (`imp9` x10 and `imp8dc` x10 on `rm8` and `rm10`; `imp` x20 on `rm6`, `rm7` and `rmtm7`, [above](#chips-on-each-board)). Sequence: send engine handler `gepc[399]` and set bus register 0x434 to 1 without incrementing the address; wait (a bounded poll) for the engine mailbox valid flag; then for each scan chain select it, send a scan-chain soft reset (`jt_soft_reset`; it writes 0x1f to a bit-bang register, **inferred** to be five clocks of the test-mode-select line), and for each chip write the value 7 and then 0xf into chip register 0x34 with a flush after each and a delay of 2000 units between chips; delay 1,000,000 units; then read each chip back. **Inferred:** 7 asserts and 0xf releases a reset field of the chip register, because the writes come in that order with the delay between them and the whole is named `reset_imps`; the unit of the delay is **unknown**. If the mailbox flag never rises it prints "reset_imps() NO acknowledge via HA_GE_MBOX_VALID, continuing...".

`DoDGRqstResetRMBoards` is the display-generator request (command number in [ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv)) that does this at run time: it blanks all channels, shuts down the video requesters on each present VOC, clears two low bits of a display register, waits, calls `reset_imps`, and restarts the master VOC. What a reset does to the contents of pixel memory and to the registers of `pg`, `tg`, `tf` and `tm` is **unknown: no shipped software or published source depends on it**; no firmware path resets those four chip types, and every reader writes the registers it uses before relying on them. Routes tried: `arm1.u` 6.5.30m (`init_rm_board`, `reset_imps`, `DoDGRqstResetRMBoards`), `irsaudit` 6.5.30m `tbuRegReset` (the diagnostic's own restore values, listed above, not a power-on state), and the BIST files in `usr/diags/IR/data/` (`pg2*.tcbist`, `tg*.tcbist`, `tf1*.tcbist`, `tm1c*.tcbist`, `*.sdbist`). The BIST files are scan-chain programs: RAM and pin lists, control words, hardware and software reset steps (`tcbist_hw_rst`, `tcbist_sw_rst`), polls and pass masks. They hold no register contents.

## Moving data in and out of the raster boards

Facts are labelled as above. The raster-board connections below are from the IR diagnostic netlists (`usr/diags/IR/data/*.netmap.Z`, IRIX 6.5.30m; the net names are SGI's), read with `gzip -dc`: each line names a net and the chip pin it reaches.

**Established, negative (DMA).** No register in the kpm raster table ([RM.h](../RM.h), 851 records) has "DMA" in its name, and no pin of `pg`, `tg`, `tf*`, `tm*` or `imp*` in any raster netlist is an address, a host-memory request or a bus master line. The raster chips take their commands and data from one 64-bit bus (`tbus_data[64]` with `tbus_mode[2]`) and answer on one 16-bit-per-filter readback bus; every host DMA is the host-interface chip's ([hip.md](hip.md)). **Inferred:** the raster boards have no DMA engine; "RM DMA" is the geometry side feeding the bus and draining the readback bus.

**Established (the readback path).** Each of the four filter chips (`tfp`..`tfs`) has `rbus_data[16]`, `rbus_sel[2]`, `rbus_req`, `rbus_rdy` and byte enables `rbus_enh_l`/`rbus_enl_l`. On `rm11` the nets are `rbrm_req` and `rbrm_sel[n]` into all four chips, and each chip's `rbus_data` lands on its own 16 bits of a 64-bit `rmrb_data` (tfs at bits 48-63, tfr 32-47, and so on). The image-processor results come back through the filters: `imptf_data[20]` carries them to each `tf` (`impa*tf_rdy`, `imp*tf_data`). The raster register that selects what is returned is `IMP_OP` bits 14-17, `READBACK` ([RM.h](../RM.h)): colour index 16, red, green, blue, alpha, stencil and depth as 16-bit planes, packed RGBA8, RGB10A2, luminance-alpha 16, depth 32 and RGBA12. `TFP_TEXRB` with `FMT_B16/B32/B48` (16-, 32- and 48-bit units) and `TM_RDBK_*` do the same for texture memory. The geometry-board register path that moves the answer to the host is the "rdata" path of [arm1_firmware.md](../ucode/arm1_firmware.md).

**Established (what the IR diagnostic does with a read-back).** `TEST_texread` (0x100c5d20), `TEST_readback` (0x10085fb4) and `TEST_rbstress` (0x1008459c) never unpack read-back words on the host. They set up the output DMA through the raster bus (`tbRegWrite`: `TEST_texread` writes 0x450 and 0x451 with the mapped address, 0x441 = 0x40, 0x440 = 0, 0x452 = 4096 bytes, `TFP_COLOR_FMT` = `TFP_PIX_FMT` = 0, and 0x477 = 1 to end), poll host-interface status with `fcPioRead32`, and judge the result by CRCs gathered over the raster chips' scan chains (`init_rm_jtag`, `set_decode_fcn`, `run_crc_testlist`). The host sees a read-back only as the image the host interface's packer writes, under `HT_PACK_MODE` (shadow word 0) and the line length and stride of shadow words 1 and 2.

The bytes of a reply on the internal read-back bus (`rbus_data`, 16 bits per filter chip, with `rbus_sel` and the byte enables) are unknown: no shipped software or published source depends on them, because every reader sees only the packed host image. Routes tried: the netlists (widths and byte enables only); the register names `IMP_OP`, `TFP_TEXRB`, `TM_RDBK_*`; the three `irsaudit` read-back tests above (CRC comparison, no host unpacking); the firmware's read-back paths `start_rdata`, `start_pixel_rdata` and `__glkonSendPixelsToHost` (they program the output DMA and the packer, [Host-interface registers on the raster bus](#host-interface-registers-on-the-raster-bus)); libGLcore's pixel-read path, which receives the packed image.

**Established (texture and pixel loads).** Downloads are register-driven writes on the same 64-bit bus, not transfers the raster chips pull: `TGTML_TEXLD_SIZE`, `_STSTART`, `_STEND`, `_S1ST_RSTART`, `_MISC` and `TML_TEXLD_BASEADDR` describe the rectangle and address; `COMMON_IFMT` selects the host-side packing (RGBA4, 1-bit bitmap, RGB5A1, R5G6B5, LA8, L16, I16, S16, Z16, RGBA8, RGB10A2, LA16, Z32, RGBA16, RGBA12). The host command that carries the header words is in [opengl.md](opengl.md#texel-download-header-word-7-and-the-load-scissor-bit).

## Interrupts

**Established, negative.** No pin on any raster chip in the six raster netlists (`rm6`, `rm7`, `rm8`, `rm10`, `rm11`, `tm9`) has a name containing `int`, `irq`, `err`, `fault`, `parity`, `alarm`, `ovf` or `trap`. Flow control between the chips is by ready and valid lines only: `tbus_rdy`, `tfpg_rdy` (filter to pixel generator), `tftg_rdy`, `tftm0_rdy`..`tftm7_rdy` (filter to the eight texture memories), `tgpg_scrdy_l`, `tbus_drdy`/`tbus_lrdy`, `imp*tf_rdy`, `rbus_rdy`. The kernel's raster-related events are its own: `HH_INTR_STATUS` has no raster bit ([hip.md](hip.md)), the GE event record covers select feedback and memory swap, and RM and kernel timeouts are software timers. **Inferred:** a raster board cannot raise an interrupt; an error (overflow, a lost token) is seen as a stall, a timeout, or in the geometry board's `BEF` counters (`BEF_PERF_COUNT*`, `BEF_DUMP`, [RM.h](../RM.h)). The display interrupts are on the display-generator board (below).

**How a raster fault shows to software.** **Established** from the readers: the kernel sees raster-bus progress only as `HH_TBUS_STATUS` bit 2 (`TBUS_ACTIVE`), which its half-second watchdog samples; with neither raster-bus nor ARM activity it reports "Pipe hung: no TBUS or ARM activity" and kills the pipe ([kernel.md](kernel.md), `HH_TBUS_STATUS`). The IR diagnostic finds raster faults by comparing scan-chain CRCs (`run_crc_testlist`) and through its BIST tests (`TEST_rm_intbist`, `TEST_rm_extbist`), never by a status bit the chips raise. A finer report of what went wrong inside a raster chip is unknown: no shipped software or published source depends on it. Routes tried: the six raster netlists (no error pin), the kernel interrupt and timeout code, `HH_INTR_STATUS` (no raster bit), the `irsaudit` read-back and CRC tests, the kpm register table (no raster status register).

## Context save and restore

**Established, negative.** The saved context image the ARM loads ([ge.md](ge.md#context-save-and-restore)) has records for the output-DMA registers, the `BEF` shadow, the engine code, external and work RAMs, ARM-side regions and the distributor registers. It has no record for the raster board: no tag stands for pixel-generator, texture or image-processor state, and the context packets the driver sends ([kona_kern.h](../kona_kernel/include/kona_kern.h)) carry no raster register. The raster side has one shadow facility, the `BEF` registers `BEF_REGSHADOW` (0x100), `_READ` (0x200), `_WRITE` (0x300) and the byte mask `BEF_REGSHADOW_BMASK` (0x7), which live on the geometry board's back-end chip, not on a raster chip; the context image holds that shadow as 89 words (tag 0x20). **Inferred:** a raster board's registers are restored from that shadow by writing it back through the register-write path ([How the ARM firmware writes raster registers](#how-the-arm-firmware-writes-raster-registers)), and the framebuffer and texture memory contents are not saved by the context switch but moved by the memory commands (`MEM_SWAPOUT`/`MEM_SWAPIN`, [kernel.md](kernel.md#commands-the-driver-sends)); the header's memory types are ARM, shared ARM (display lists), geometry-engine and texture memory, with no framebuffer type. The layout of the 89 words is in [the next section](#the-89-word-register-shadow).

## Display and scanout from the raster boards

**Established** (`fpln_rm11_2voc_2rm_0` netmap; the other `fpln_*` netlists are the same wiring with different board counts). The framebuffer chips feed the display-generator board over a backplane bus of 160 wires: each `imp8dc` has two 8-bit video outputs `impadg_data[8]` and `impbdg_data[8]`, ten chips per `rm11` make 160 bits, and the 160 wires split into four sets of 40 that land on the four XMAP chips' `pixin[40]` (xmap0 gets wires 0-39, xmap1 40-79, xmap2 80-119, xmap3 120-159; for example `impp0_v[0]` is IMP 0's output A bit 0 and the first wire of xmap0). Display-to-framebuffer control goes back on two nets: a video request (`dgvreq`, from the display-generator board's XMAP and `fm0` to every IMP's `dgimp_data` pin, 10 chips) and a shift-enable (`dg.sact`, from `xmap0:sact` to every IMP's `dgimp_shift`). The IMP also has a video clock input `vclk`.

**Inferred:** the framebuffer chips stream pixels to the display board on request: the board asks for a line or tile, the IMPs shift out 8 bits per wire pair per clock, and the XMAPs (40 bits of pixel in, [DG netlist](dg.md#the-far-side-of-the-video-controller-port)) do colour mapping and gamma. The `VOC_VDRC_*` registers of the VOC ([ucode/dg.md](../ucode/dg.md#vof-sources-vof)) and the `vidreq` net suggest the video output chip is what issues the request. **Established** (register list): `irsaudit` (6.5.30m) carries the register table its XMAP and DAC register tests walk, `xmap_regs` (0x101ffdc0, 12 entries) and `vdac_regs` (0x101fffc0, 3 entries), each entry {name, register number, mask}. The names, numbers and masks are in [DG.h](../DG.h); the four cursor registers among them match the kernel's video-controller addresses 0x100-0x103 one for one ([dg.md](dg.md)).

**Established** since, from the firmware's requester set-up and `irsaudit` ([dg.md](dg.md#the-video-requester)): the VOC reads its window in tiles of 160 pixels by 8 lines, counted in groupxels of four pixels. A line is asked for as up to three request words (START, a repeated MIDDLE, END), each holding a tile count, a groupxel count, a valid bit and, for MIDDLE, a repeat count. Each field also gets a first tile address (tile row x tiles per row + x / 160). The XMAP registers the diagnostic's table leaves out (4, 5, 8, 9, 0xa, 0x10 and the indirect ports 0x118-0x11f) are read in [dg.md](dg.md#xmap-registers-memories-and-the-fast-list). The transfer is 10 or 12 bits per component with optional alpha, and 12 only for RGB (`irsaudit`'s format checks). **Inferred:** each XMAP takes one 40-bit pixel per clock, a 10:10:10:10 or 12:12:12 pixel. **Unknown: no shipped software or published source depends on it:** the bit order on the 160 wires, and how a request word on the `vidreq` net is serialised to the IMPs. Routes tried: the netlists, the firmware's requester code (`dgConfigureVideoRequester`), `irsaudit`'s video tests (which check CRC signatures, not wire values), its requester messages and the `.vof` register list.
