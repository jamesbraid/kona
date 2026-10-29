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
