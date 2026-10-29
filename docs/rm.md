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
