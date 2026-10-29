# Geometry-engine microcode files

What the files in `usr/gfx/ucode/KONA/` (IRIX 6.5.30m, linked as `ucode/KONA/`) contain, how they relate, and how far the geometry-engine program has been read. Facts are labelled **established** (read from the file at the stated offset), **inferred** (with the reasoning) or **unknown**.

## One program, three encodings

**Established.** `ge.hex`, `ge11.u` and `ge.u` hold the same geometry-engine program of 62521 instructions.

- `ge.hex` is text, one instruction per line: a 16-bit hexadecimal address and an 18-digit (72-bit) word. Addresses run 0x0000-0x2e3b and 0x3000-0xf5fc, with one gap.
- `ge11.u` starts with eleven big-endian words: a magic number 0x45930003, then (offset, length) pairs for a build string (0x2c, 0x45), the code (0x71, 0xb72c4), a line table (0xb7335, 0x7e160), a file-offset table (0x135495, 0x11e) and a file-name table (0x1355b3, 0x21aa). The code is two segments. Each segment has an 8-byte header holding the byte address (instruction address × 12) and the byte length, followed by 12-byte records. A record stores a 72-bit word W as three big-endian 32-bit words: W bits 0-31, W bits 32-63, then W bits 64-71 zero-extended. Every record matches the `ge.hex` word at the same address.
- `ge.u` has the same container with magic 0x45900003 and the build string "ge11 microcode file verion fantastic1". Its line, file-offset and file-name tables are the same sizes as `ge11.u`'s. Its code is 32 bytes per instruction. The 16-bit immediate of `ge.hex` address 0x0003 (0x27cc) appears in the matching `ge.u` record, so **inferred**: `ge.u` stores each instruction with its fields expanded one per slot. The slot layout is **unknown**.

**Inferred:** the geometry-engine instruction is 72 bits wide, and the program counter is 16 bits wide.

`ge_kpm.hex` (186 lines) and `ged1b.u` are other programs in the same formats. `ged1b.u` has magic 0x45910003 and the build string "uasm 6.0". **Inferred** from its name: it is the program of the geometry-engine distributor, the stage that feeds the geometry engines.

## Debug tables in the .u files

**Established** (`ge.u`):

- Line table: 64556 records of 8 bytes, each an instruction index (32 bits), a source line (16 bits) and a file index (16 bits).
- File-offset table: 143 16-bit offsets into the file-name table.
- File-name table: 143 NUL-terminated paths under a `gfx/KM/ucode/ge11/` build tree.

The file names give the program's structure:

- a field-definition header (`gefields.h`), register and special-register headers (`regs.h`, `ge11spreg.h`, `tbusregs.h`, `befshadow.h`);
- modules for evaluators, lighting, clipping, matrices, texture generation, pixel paths and convolution, the X server primitives (`xentry.S`, `xsetup.S`, `xload.S`, `xclipdraw.S`) and context switching (`ctx_load.S`, `ctx_deact.S`);
- `init_cmd_tab.S`.

**Established:** no line-table record names `init_cmd_tab.S`, so it contributes no instructions. **Inferred:** it assembles the command table below as data.

`ge_symbols` lists 1100 labels with instruction addresses in the `ge.hex` range. **Inferred:** label prefixes mark the handler class. Examples are `mgeb_`, `mges_`, `mgesi_` and `mgebi_` for command handlers and `mmo_`/`umo_` for internal modules; the `m`/`u` pairs often share an address.

## Command dispatch table (`geif.u`)

**Established:** `geif.u` is 2048 bytes, 1024 big-endian 16-bit entries, and every entry is the address of a `ge_symbols` label.

- Even entries are all 0, the address of the label `HereWeGo` at the start of the program.
- Odd entries 2k+1 for k = 0..452 are handlers. For k = 453..511 they are `HereWeGo` too.

So the table has 453 used slots.

Slots are grouped by handler class, not by host token:

- slot 0: `mges_TBUS_1`;
- slots 1-90: `mgeb_` handlers in roughly alphabetical order (`BitmapApplyOrig`, `BitmapApplyMove`, `CullFace`, ...);
- slots 253-307, 309-332, 367-370, 379-396 and 436-450: `mmo_` modules.

**Inferred:** this is the geometry engine's own command-index table, loaded into a lookup memory. kpm's GE11 error register names `ELUT_ADR` (`GE.h`), which suggests an entry lookup table.

**Unknown:** how a host token (`GE.h`) becomes a slot number. For 47 handlers whose names match a token name (for example `HP_CULLFACE` 0xb6 to `mgeb_CullFace` in slot 3), a GF(2) fit found no single linear map from token bits to slot bits. A search of `arm1.u`, `ged1b.u`, `tport.bin`, kpm and libGLcore found no 512-entry token-to-slot table either. The translation is therefore expected in the distributor program or the main dispatch code of `ge.hex`, which need the instruction fields decoded first.

The 47 name matches are written to [ge_name_matches.tsv](ge_name_matches.tsv) as leads, labelled **inferred**.

## ARM program

**Established:** `arm1.u` and `arm1_kpm.u` are ARM machine code. Both begin with 0xe1a00000 (mov r0, r0) twice, a BL (0xeb00000c) and an SWI (0xef000011), in big-endian word order. So the block the software calls "ARM" runs a real ARM-architecture processor. Its load address and role are **unknown**. The 6.5.5 headers say the host reaches it through a mailbox register (`HIP.h`).

## Precision

**Unknown:** the per-pixel LOD and sub-texel position precision. They are fixed in the raster and texture hardware, which has no microcode in this directory. The host-side precision found so far is in `RM.h` (filter weights, sharpen and detail codes, LOD-bias scale), and the register widths there bound some values: 16-bit texture-load start and end, 15-bit clipmap centre, 10-bit minimum and maximum level. A capture of a textured span, or the raster-chip documentation, would settle them.

## Next steps for a reader

1. Decode the `ge.u` 32-byte record against the `ge.hex` 72-bit word. Pair records whose `ge.hex` words differ in one field, to recover the field layout.
2. With fields known, find the main loop (`mainloop*` labels) and the read of the token word, to recover the token-to-slot translation.
3. Read the distributor program `ged1b.u` the same way.
