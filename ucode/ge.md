# Geometry-engine microcode files

What the files in `usr/gfx/ucode/KONA/` (IRIX 6.5.30m, linked as `ucode/KONA/`) contain, how they relate, and how far the geometry-engine program has been read. Facts are labelled **established** (read from the file at the stated offset), **inferred** (with the reasoning) or **unknown**.

## One program, three encodings

**Established.** `ge.hex`, `ge11.u` and `ge.u` hold the same geometry-engine program of 62521 instructions.

- `ge.hex` is text, one instruction per line: a 16-bit hexadecimal address and an 18-digit (72-bit) word. Addresses run 0x0000-0x2e3b and 0x3000-0xf5fc, with one gap.
- `ge11.u` starts with eleven big-endian words: a magic number 0x45930003, then (offset, length) pairs for a build string (0x2c, 0x45), the code (0x71, 0xb72c4), a line table (0xb7335, 0x7e160), a file-offset table (0x135495, 0x11e) and a file-name table (0x1355b3, 0x21aa). The code is two segments. Each segment has an 8-byte header holding the byte address (instruction address × 12) and the byte length, followed by 12-byte records. A record stores a 72-bit word W as three big-endian 32-bit words: W bits 0-31, W bits 32-63, then W bits 64-71 zero-extended. Every record matches the `ge.hex` word at the same address.
- `ge.u` has the same container with magic 0x45900003 and the build string "ge11 microcode file verion fantastic1". Its line, file-offset and file-name tables are the same sizes as `ge11.u`'s. Its code is 32 bytes per instruction. The 16-bit immediate of `ge.hex` address 0x0003 (0x27cc) appears in the matching `ge.u` record, so **inferred**: `ge.u` stores each instruction with its fields expanded one per slot. The slot layout is **unknown**.

**Inferred:** the geometry-engine instruction is 72 bits wide, and the program counter is 16 bits wide.

`ge_kpm.hex` (186 lines) and `ged1b.u` are other programs in the same formats. `ged1b.u` has magic 0x45910003 and the build string "uasm 6.0" ("Thu Jul 20 17:33:26 2006"). Its code is two segments, 313 instructions at address 0 and 176 at 0x1000 (12-byte records, as in `ge11.u`). **Established:** its file-name table lists `dist.s`, `flush.s`, `material.s`, `trigger.s` and one source per primitive type (`tstrip.s`, `points.s`, `lineloop.s`, `linestrip.s`, `quad.s`, `qstrip.s`, `tfanpoly.s`, `tri.s`, `lines.s`), with headers `ged1seq.h`, `ged1if.h` and `ge11exports.h`. **Inferred:** it is the program of the geometry-engine distributor, the stage that assembles primitives from vertices and hands them to the geometry engines, built per primitive type. Nothing in the file names a command-token table, so the earlier expectation that the token-to-slot translation sits in `ged1b.u` is not supported.

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

## ge.u record layout, what is established

The method: pair each `ge.hex` word W with the record of the same address in `ge.u`, then look at W pairs that differ in exactly one bit and see which of the 32 record bytes change. [ge_u_bitmap.tsv](ge_u_bitmap.tsv) lists, per form and W bit, the record bytes that changed in the most pairs, how many pairs agreed, and how many pairs existed (421 rows; the data comes from `ucode/KONA/ge.u` and `ge.hex`, release 6.5.30m).

**Established:**

- Both files have 62521 instructions at the same 62521 addresses. A `ge.u` code segment is an 8-byte header (byte address = instruction address x 32, then byte length) followed by 32-byte records.
- Record byte 31 is 0 in every record. Byte 23 has two values.
- W bits 67-70, taken as a 4-bit value, split the program into forms: 0 (16888 words), 1 (143), 2 (618), 3 (1051), 5 (2854), 6 (79), 7 (1346), 8 (471), 9 (1135), 10 (825), 11 (1430), 12 (5242), 13 (10996), 14 (14833), 15 (4610). Form 4 does not occur. No two words in the program differ only in bits 67-70, so flipping those bits is not a field edit.
- Which record bytes a W bit reaches depends on the form. In form 15, the first 32-bit word of the record equals W[31:0] in all 4610 words. In form 14, record bytes 3 and 2 equal W[7:0] and W[15:8] in all 14833 words. Across forms, W[66:62] mostly changes record byte 8, W[60:56] byte 10, W[42:38] byte 12 and W[50:44] byte 9 (see the table for counts and exceptions).
- For most other bytes in most forms, no contiguous run of W bits up to 8 wide reproduces the byte value (for example record byte 12 versus W[42:38] matches 0 of 4610 form-15 words), although flipping a bit changes only that byte.

**Inferred:** the `ge.u` record is a decoded form of the instruction, with one byte per control field, and the decoding is not an identity for most fields. It may be a lookup (for example a one-hot or encoded-to-index conversion by the assembler), which the single-bit method cannot invert. The record bytes' value ranges (byte 8 has up to 133 distinct values in form 7, byte 5 only 2) fit that reading.

**Unknown:** the value mapping of each byte and the meaning of the forms. A decoder of `ge.hex` fields from the instruction-set text in the build string table, or the `gefields.h` field names referenced by the line table, would settle it; the line table names the file but not its contents.

## Command dispatch table (`geif.u`)

**Established:** `geif.u` is 2048 bytes, 1024 big-endian 16-bit entries, and every entry is the address of a `ge_symbols` label.

- Even entries are all 0, the address of the label `HereWeGo` at the start of the program.
- Odd entries 2k+1 for k = 0..452 are handlers, except k = 124, which is `HereWeGo`. For k = 453..511 they are `HereWeGo` too.

So the table has 452 handler slots, and 60 odd entries in all point at `HereWeGo`.

Slots are grouped by handler class, not by host token:

- slot 0: `mges_TBUS_1`;
- slots 1-90: `mgeb_` handlers in roughly alphabetical order (`BitmapApplyOrig`, `BitmapApplyMove`, `CullFace`, ...);
- slots 253-307, 309-332, 367-370, 379-396 and 436-450: `mmo_` modules.

**Inferred:** this is the geometry engine's own command-index table, loaded into a lookup memory. kpm's GE11 error register names `ELUT_ADR` (`GE.h`), which suggests an entry lookup table.

**Unknown:** how a host token (`GE.h`) becomes a slot number. For 47 handlers whose names match a token name (for example `HP_CULLFACE` 0xb6 to `mgeb_CullFace` in slot 3), a GF(2) fit found no single linear map from token bits to slot bits. A search of `arm1.u`, `ged1b.u`, `tport.bin`, kpm and libGLcore found no 512-entry token-to-slot table either. A wider search, also negative: using the 47 name matches below as (token, slot) pairs, every file under `root/` (479 regular files) was scanned for a table indexed by token, in 8-, 16- and 32-bit entries of either byte order, whose entry for each token equals the slot, 2 x slot, 2 x slot + 1 or the handler address; no location agreed with even 9 of the 47 pairs. This only rules out a plain array for those pairings, which are themselves inferred from names. The pairs are weakly ordered: of all 1081 pairs of matches, 700 have token and slot in the same order (65%; 155 of 231 inside the `mgesi_` group, 110 of 171 inside `mgeb_`), and the X-server tokens 0x14c-0x15f land in slots 240-249 in near token order. That fits a table sorted by handler class, with the order within a class partly following the token numbers, but it does not give a rule. The translation is therefore expected in the distributor program or the main dispatch code of `ge.hex`, which need the instruction fields decoded first.

The 47 name matches are written to [ge_name_matches.tsv](ge_name_matches.tsv) as leads, labelled **inferred**.

## ARM program

**Established:** `arm1.u` and `arm1_kpm.u` are ARM machine code. In big-endian word order, both begin with 0xe1a00000 (mov r0, r0) twice and a BL (0xeb00000c); the fourth word is the data value 0x2c and the fifth an SWI (0xef000011). So the block the software calls "ARM" runs a real ARM-architecture processor. Its load address and role are **unknown**. The 6.5.5 headers say the host reaches it through a mailbox register (`HIP.h`).

## Precision

**Unknown:** the per-pixel LOD and sub-texel position precision. They are fixed in the raster and texture hardware, which has no microcode in this directory. The host-side precision found so far is in `RM.h` (filter weights, sharpen and detail codes, LOD-bias scale), and the register widths there bound some values: 16-bit texture-load start and end, 15-bit clipmap centre, 10-bit minimum and maximum level. A capture of a textured span, or the raster-chip documentation, would settle them.

## Next steps for a reader

1. Finish the `ge.u` record decode: the byte-to-W-bit map is in ge_u_bitmap.tsv, the value mapping of most bytes is open.
2. With fields known, find the main loop (`mainloop*` labels) and the read of the token word, to recover the token-to-slot translation.
3. Decode `ged1b.u` once the record layout is known; it is a primitive distributor, so expect it to explain vertex flow rather than command dispatch.
