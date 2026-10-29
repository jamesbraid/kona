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

**Unknown:** the bit widths of per-pixel LOD, sub-texel position, filter weights and colour and depth iterators. No microcode computes them, and the netlists bound only the buses between chips. The host-visible precisions already found (filter4 weights in S1.7, the 4.4 LOD bias, sharpen and detail codes) are in [RM.h](../RM.h). A textured-span capture or a chip specification would settle the rest.

## How the ARM firmware writes raster registers

The ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) programs the raster boards at start-up (`init_pg`, `init_tg`, `init_tf`, `init_tm`, `init_imp` in `arm1.u`, IRIX 6.5.30m) and again whenever it sets up a pixel path. Facts are labelled **established** (read from the firmware), **inferred** (with the reasoning) or **unknown**.

**Established.** One register write is four stores to the host-interface window: the descriptor word 0x58404800 at r9 + 0x400, then three words at r9 + 0x840, r9 + 0x840 and r9 + 0x8c0. In `init_pg`: the first word is 0xffffffff, the second is 0x01270800, the third is the value 1. The descriptor decodes as routed command 128 ([ucode/arm1.md](../ucode/arm1.md)), whose engine handler is `mgesi_BshRegisterWrite`; the writes that go to the "IMP" chips ([RM.h](../RM.h) `IMP_` registers) use 0x584fc800, command 159, handler `mgesi_IMPbshRegisterWrite`.

**Established** (register indexes). The low 16 bits of the second word are register indexes in the kpm index space of [RM.h](../RM.h): `init_pg` writes 0x0800, 0x080f and 0x0806 (`PG_`), `init_tf` 0x140e and 0x1410 (`TFP_`), `init_imp` 0x1c00, 0x1c02, 0x1c03, 0x1c06-0x1c09, 0x1c0b, 0x1c0d, 0x1c14 and 0x1c15 (`IMP_`). `init_tg` writes 0x3fcf-0x3fd3, which are not in the `TG_` range of the table; **unknown** what they address. `init_pg` also writes 0x3be0 and 0x3be1 with descriptor 0x584fc800.

**Unknown.** The high half of the second word (0x0120-0x0128 for the `init_tg` writes, 0x0125-0x012b for `init_pg`, 0x0134-0x013e for `init_imp`, 0x0160 and 0x0166 for `init_tf`): a different small number per write that rises through each routine, so it looks like a slot or target number, not a field of the register. The meaning of the first word is also unknown: all ones in `init_pg`, a per-call value in `init_tg` and `init_imp`; **inferred** to be a chip or lane select, from the value changing between chips and the all-ones case being the broadcast.

A separate path writes the board-side registers numbered 0x400-0x477 (`tbus_regwrite`): `init_hip_tbus`, `start_rdata`, `finish_rdata`, `check_pipe_sync` and `init_tf`, `init_tm`. These are not in the `RM.h` index space. **Inferred:** they are registers of the host interface's own bus to the boards (`HH_TBUS_STATUS` and its neighbours in [HIP.h](../HIP.h)).

## Reset of the raster boards

From the ARM firmware ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md), IRIX 6.5.30m). Labels as above.

**Established** (`init_rm_board` 0x0c003de8, `reset_imps` 0x0c01cba8, `DoDGRqstResetRMBoards` 0x0c006064). At start-up `init_rm_board` configures the boards through the boundary-scan chain (`init_rm_jtag`, 939 instructions, a long list of chip register writes), then sets up the five chip types in turn: `init_pg`, `init_tf`, `init_tg`, `init_tm`, `init_imp` ([register write format above](#how-the-arm-firmware-writes-raster-registers)). It skips all of this when running in a simulator, and prints "init_rm: WARNING: got _old_ TF's" if the texture-filter chips are an old revision.

`reset_imps` resets the pixel (IMP) chips and is the only chip reset in the firmware. It acts on 10 chips per scan chain when the board type word is 2 or 6, and on 20 otherwise, which matches the netlists (`imp9` x10 and `imp8dc` x10 on `rm8` and `rm10`; `imp` x20 on `rm6`, `rm7` and `rmtm7`, [above](#chips-on-each-board)). Sequence: send engine handler `gepc[399]` and set bus register 0x434 to 1 without incrementing the address; wait (a bounded poll) for the engine mailbox valid flag; then for each scan chain select it, send a scan-chain soft reset (`jt_soft_reset`; it writes 0x1f to a bit-bang register, **inferred** to be five clocks of the test-mode-select line), and for each chip write the value 7 and then 0xf into chip register 0x34 with a flush after each and a delay of 2000 units between chips; delay 1,000,000 units; then read each chip back. **Inferred:** 7 asserts and 0xf releases a reset field of the chip register, because the writes come in that order with the delay between them and the whole is named `reset_imps`; the unit of the delay is **unknown**. If the mailbox flag never rises it prints "reset_imps() NO acknowledge via HA_GE_MBOX_VALID, continuing...".

`DoDGRqstResetRMBoards` is the display-generator request (command number in [ucode/dg_dispatch.tsv](../ucode/dg_dispatch.tsv)) that does this at run time: it blanks all channels, shuts down the video requesters on each present VOC, clears two low bits of a display register, waits, calls `reset_imps`, and restarts the master VOC. **Unknown:** what a reset does to the contents of pixel memory and to the registers of `pg`, `tg`, `tf` and `tm`; no firmware path resets those four chip types.

## Moving data in and out of the raster boards

Facts are labelled as above. The raster-board connections below are from the IR diagnostic netlists (`usr/diags/IR/data/*.netmap.Z`, IRIX 6.5.30m; the net names are SGI's), read with `gzip -dc`: each line names a net and the chip pin it reaches.

**Established, negative (DMA).** No register in the kpm raster table ([RM.h](../RM.h), 851 records) has "DMA" in its name, and no pin of `pg`, `tg`, `tf*`, `tm*` or `imp*` in any raster netlist is an address, a host-memory request or a bus master line. The raster chips take their commands and data from one 64-bit bus (`tbus_data[64]` with `tbus_mode[2]`) and answer on one 16-bit-per-filter readback bus; every host DMA is the host-interface chip's ([hip.md](hip.md)). **Inferred:** the raster boards have no DMA engine; "RM DMA" is the geometry side feeding the bus and draining the readback bus.

**Established (the readback path).** Each of the four filter chips (`tfp`..`tfs`) has `rbus_data[16]`, `rbus_sel[2]`, `rbus_req`, `rbus_rdy` and byte enables `rbus_enh_l`/`rbus_enl_l`. On `rm11` the nets are `rbrm_req` and `rbrm_sel[n]` into all four chips, and each chip's `rbus_data` lands on its own 16 bits of a 64-bit `rmrb_data` (tfs at bits 48-63, tfr 32-47, and so on). The image-processor results come back through the filters: `imptf_data[20]` carries them to each `tf` (`impa*tf_rdy`, `imp*tf_data`). The raster register that selects what is returned is `IMP_OP` bits 14-17, `READBACK` ([RM.h](../RM.h)): colour index 16, red, green, blue, alpha, stencil and depth as 16-bit planes, packed RGBA8, RGB10A2, luminance-alpha 16, depth 32 and RGBA12. `TFP_TEXRB` with `FMT_B16/B32/B48` (16-, 32- and 48-bit units) and `TM_RDBK_*` do the same for texture memory. The geometry-board register path that moves the answer to the host is the "rdata" path of [arm1_firmware.md](../ucode/arm1_firmware.md).

**Established (texture and pixel loads).** Downloads are register-driven writes on the same 64-bit bus, not transfers the raster chips pull: `TGTML_TEXLD_SIZE`, `_STSTART`, `_STEND`, `_S1ST_RSTART`, `_MISC` and `TML_TEXLD_BASEADDR` describe the rectangle and address; `COMMON_IFMT` selects the host-side packing (RGBA4, 1-bit bitmap, RGB5A1, R5G6B5, LA8, L16, I16, S16, Z16, RGBA8, RGB10A2, LA16, Z32, RGBA16, RGBA12). The host command that carries the header words is in [opengl.md](opengl.md#texel-download-header-word-7-and-the-load-scissor-bit).

## Interrupts

**Established, negative.** No pin on any raster chip in the six raster netlists (`rm6`, `rm7`, `rm8`, `rm10`, `rm11`, `tm9`) has a name containing `int`, `irq`, `err`, `fault`, `parity`, `alarm`, `ovf` or `trap`. Flow control between the chips is by ready and valid lines only: `tbus_rdy`, `tfpg_rdy` (filter to pixel generator), `tftg_rdy`, `tftm0_rdy`..`tftm7_rdy` (filter to the eight texture memories), `tgpg_scrdy_l`, `tbus_drdy`/`tbus_lrdy`, `imp*tf_rdy`, `rbus_rdy`. The kernel's raster-related events are its own: `HH_INTR_STATUS` has no raster bit ([hip.md](hip.md)), the GE event record covers select feedback and memory swap, and RM and kernel timeouts are software timers. **Inferred:** a raster board cannot raise an interrupt; an error (overflow, a lost token) is seen as a stall, a timeout, or in the geometry board's `BEF` counters (`BEF_PERF_COUNT*`, `BEF_DUMP`, [RM.h](../RM.h)). The display interrupts are on the display-generator board (below).

## Context save and restore

**Established, negative.** The saved context image the ARM loads ([ge.md](ge.md#context-save-and-restore)) has records for the output-DMA registers, the `BEF` shadow, the engine code, external and work RAMs, ARM-side regions and the distributor registers. It has no record for the raster board: no tag stands for pixel-generator, texture or image-processor state, and the context packets the driver sends ([kona_kern.h](../kona_kernel/include/kona_kern.h)) carry no raster register. The raster side has one shadow facility, the `BEF` registers `BEF_REGSHADOW` (0x100), `_READ` (0x200), `_WRITE` (0x300) and the byte mask `BEF_REGSHADOW_BMASK` (0x7), which live on the geometry board's back-end chip, not on a raster chip; the context image holds that shadow as 89 words (tag 0x20). **Inferred:** a raster board's registers are restored from that shadow by writing it back through the register-write path ([How the ARM firmware writes raster registers](#how-the-arm-firmware-writes-raster-registers)), and the framebuffer and texture memory contents are not saved by the context switch but moved by the memory commands (`MEM_SWAPOUT`/`MEM_SWAPIN`, [kernel.md](kernel.md#commands-the-driver-sends)); the header's memory types are ARM, shared ARM (display lists), geometry-engine and texture memory, with no framebuffer type. **Unknown:** the layout of the 89 shadow words, and what is written back for a context with no shadow.

## Display and scanout from the raster boards

**Established** (`fpln_rm11_2voc_2rm_0` netmap; the other `fpln_*` netlists are the same wiring with different board counts). The framebuffer chips feed the display-generator board over a backplane bus of 160 wires: each `imp8dc` has two 8-bit video outputs `impadg_data[8]` and `impbdg_data[8]`, ten chips per `rm11` make 160 bits, and the 160 wires split into four sets of 40 that land on the four XMAP chips' `pixin[40]` (xmap0 gets wires 0-39, xmap1 40-79, xmap2 80-119, xmap3 120-159; for example `impp0_v[0]` is IMP 0's output A bit 0 and the first wire of xmap0). Display-to-framebuffer control goes back on two nets: a video request (`dgvreq`, from the display-generator board's XMAP and `fm0` to every IMP's `dgimp_data` pin, 10 chips) and a shift-enable (`dg.sact`, from `xmap0:sact` to every IMP's `dgimp_shift`). The IMP also has a video clock input `vclk`.

**Inferred:** the framebuffer chips stream pixels to the display board on request: the board asks for a line or tile, the IMPs shift out 8 bits per wire pair per clock, and the XMAPs (40 bits of pixel in, [DG netlist](dg.md#the-far-side-of-the-video-controller-port)) do colour mapping and gamma. The `VOC_VDRC_*` registers of the VOC ([ucode/dg.md](../ucode/dg.md#vof-sources-vof)) and the `vidreq` net suggest the video output chip is what issues the request. **Unknown:** the pixel format on the wires (which of the framebuffer's colour formats the 8-bit lanes carry per clock), the tile request format, and the XMAP and DAC register map.
