/*
 * RM.h - InfiniteReality (KONA) raster subsystem: raster manager, texture
 * memory and fragment blocks.
 *
 * Labels: ESTABLISHED = read directly from a binary at the cited place;
 * INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 *
 * Sources (all IRIX 6.5.30m):
 *   kpm      /usr/gfx/KONA/bin/kpm, N32 executable. Its .data holds a
 *            table of 16-byte records {kind, name, value, width} from
 *            vaddr 0x10145980 (851 records) describing raster registers:
 *            kind 1 = register (value = register index), kind 2 = field of
 *            the register before it (value = low bit, width = bits),
 *            kind 3 = named value of the field before it. Extracted by
 *            scripts/extract_kpm_tables.py into
 *            diags/kpm/raster_registers.tsv; the defines at the end of this
 *            file are that table, one line per record.
 *   libGLcore /usr/gfx/arch/IP27KONA32/libGLcore.so (N32):
 *            libglcore/asm/texture/kon_texture_api.s and
 *            libglcore/decomp/ (m2c output).
 */
#ifndef KONA_RM_H
#define KONA_RM_H

/*
 * Register index space.
 *
 * ESTABLISHED (kpm table): registers are named by a 15-bit index. Prefixes
 * group them: PG_ 0x800-0x880, TG_ 0xc00-0xc06, TM_ 0x1000-0x13d5,
 * TFP_ 0x1401-0x153f, TFT_ 0x1800-0x1858, IMP_ 0x1c00-0x1c3f,
 * TML_ 0x5000-0x53ff, and combined names (PGTG_, TGTM_, TGTMTFT,
 * PGTFPIMP_, TGTML_, COMMON_) at 0x3be0-0x3ff8 and 0x7fc0-0x7fc5.
 * BEF_ entries 0x1-0x300 and HTL_LOAD_STALL 0x44a8 are also in the table.
 *
 * INFERRED: a combined name addresses several blocks at once (one write
 * reaching e.g. both the TG and TM copies of the texture size), since its
 * fields repeat fields of the separate blocks (TGTM_TEX_SIZE has the same
 * layout as TM_TEX_SIZE). INFERRED: each prefix is the netlist chip type
 * of the same letters (pg, tg, tm, imp; TFP and TFT the four tf chips),
 * backed by the firmware's init_pg/init_tf/init_imp writing their own
 * prefixes (docs/rm.md, chips on each board). INFERRED (netlists, tf1.tcbist
 * RAM list, irsaudit pxid_to_tfnum): all four tf chips answer TFP (the
 * fog/environment half, fed by pg) and TFT (the lookup-table/filter half,
 * fed by tg); the per-chip decode of combined indexes beyond their letters
 * is UNKNOWN, no shipped software depends on it (docs/rm.md).
 *
 * INFERRED: registers are up to 48 bits wide. Fields reach bit 47
 * (TM_TEXMAP_1_HIGH at bits 45-47, TFP_FOG_DATA_N3 at 36-47,
 * TFT_TLUT_DATA_R at 36-47).
 *
 * INFERRED: some registers are several words long. In PG_QCOLOR,
 * PGTG_SCIS, PGTG_ZRECT, PGTG_DRECT, PGTG_SIZE, PG_STIPPLE,
 * PGTFPIMP_MSLOC and IMP_USER_COLOR / IMP_CLEAR_COLOR / IMP_WMASK_BIT the
 * field positions restart at bit 0 part-way through the list; kpm's command
 * table separately names extra words of the same registers with _1.._7
 * suffixes (GE.h). Each restart is read as the start of the next word.
 *
 * Raster-bus word. ESTABLISHED (irsaudit tbRegWrite, 0x1013eb3c): the IR
 * diagnostic writes one register as three FIFO words, a leading 5, then
 * (index & 0x7fff) << 16 | value bits 47-32, then value bits 31-0. So the
 * 64-bit bus word is index in bits 62-48 and a 48-bit value in bits 47-0.
 * The engine program builds the same high word: mGL_EX_Initialize stores
 * 0x10040000-0x100b0000 as templates whose low half takes value bits
 * 47-32 of TM_DRAW_TEXMAP_* (ucode/ge_listing/ge.S.lst). The vector files
 * agree: 48-bit registers (TFP_FOG_DATA, TFP_A2M_LUT1) carry value in bits
 * 47-32, and for 32-bit registers those bits are 0 or repeat the index
 * (docs/rm.md, "The register-write word"). Broadcast to several raster
 * managers is UNKNOWN.
 *
 * Writers cited per register below: ge.u handlers by name and address
 * (ucode/ge_listing/), irsaudit functions by name and address (IRIX
 * 6.5.30m, usr/diags/IR/bin/irsaudit), the vector files aaspoke.tbus and
 * tbusdata.Z, and tbuRegReset (0x10154cb4), the diagnostic routine that
 * puts every state register it has touched back to a fixed value. That
 * value is the diagnostic's restore value, not a measured reset value.
 * Registers the routine skips are the action registers (no-ops, read-back
 * triggers, bind start).
 */

/*
 * Texture mode word (TGTMTFT, 0x3fd4).
 *
 * ESTABLISHED (kpm): SM bits 0-1 = 2D/3D/3D_MIP/BICUBIC; MIN bits 2-4 =
 * NEAREST, LINEAR, BICUBIC, and the four mipmap modes N_MIP_N, N_MIP_L,
 * L_MIP_N, L_MIP_L; MAG bits 5-7 = NEAREST, LINEAR, BICUBIC, DETAIL_ADD,
 * DETAIL_MOD, SHARPEN; SHA bits 10-11 shadow compare (GEQUAL_R,
 * LEQUAL_R); TFMT bits 14-20 the texel format; MC bits 26-27 which
 * components the magnification filter applies to (ALL, COLOR, ALPHA, LOD0).
 *
 * ESTABLISHED (cross-check): libGLcore keeps this word in the texture
 * object at offset +64 and builds it on the host. setSharpenFilter
 * (kon_texture_api.s, 0x0d966290) clears bits 5-7 and writes 5 (SHARPEN)
 * for GL_LINEAR_SHARPEN_SGIS (0x80ad), adding MC = 1 (COLOR) for
 * GL_LINEAR_SHARPEN_COLOR_SGIS (0x80af) and MC = 2 (ALPHA) for
 * GL_LINEAR_SHARPEN_ALPHA_SGIS (0x80ae); it falls back to MAG = 1 (LINEAR)
 * when no filter table slot is free. The bit positions agree with kpm.
 */

/*
 * Filter-table precision (SGIS_texture_filter4, sharpen and detail).
 *
 * ESTABLISHED: bindTexTable (kon_texture_api.s, 0x0d9651c0) sends a
 * filter table as token 0x17e (KONA_HP_TEX_SEND_ARM_TABLE), one word naming
 * the table, then 33 data words (__glkon_datavn with count 33).
 *
 * Bicubic (filter4) weights, ESTABLISHED: each of the 129 user samples goes
 * through getS0p7 (0x0d9650a0): v = trunc_toward_zero(w * 128), clamped to
 * [-128, 127], kept as an 8-bit two's-complement value. That is a signed
 * 1.7 fixed-point weight with range [-1, 127/128] and no rounding. The
 * bytes are packed four to a word. INFERRED: these are the 8-bit
 * K0K4..K3K7 fields of TFT_BICUBIC (0x1820).
 *
 * Sharpen and detail functions, ESTABLISHED: the user's control points are
 * fitted with __glKonTexGetCubicSpline and evaluated at 64 points by
 * __glKonTexEvaluateCubicSpline over __glKonLogOver64. For table type 1 the
 * samples are doubled, for type 2 negated. The types are the detail function (type 1,
 * __glkonim_DetailTexFuncSGIS) and the sharpen function (type 2,
 * __glkonim_SharpenTexFuncSGIS). INFERRED from the published patents on both features
 * (docs/published-sources.md): detail applies K x (texel - 1/2), so K is twice the GL
 * function F; sharpen applies A + K x (B - A) with K = -f, so the function is negated.
 * Each sample goes through getS2p7 (0x0d9650d0):
 *   v = trunc(w * 512 + 2.0) >> 2         (about the nearest 1/128)
 *   v = clamp(v, -1024, 1023)
 *   e = 0; while (v > 127 || v < -128) { v >>= 1; e++; }   (e <= 3)
 *   code = ((v & 0xff) << 2) | e          (10 bits)
 * so a sample is an 8-bit signed mantissa in 1/128 units with a 2-bit
 * left-shift exponent: value = v * 2^e / 128, range about [-8, 8).
 * Four codes are packed into 40 bits as two words:
 *   word0 = c0 | c1 << 10 | c2 << 20 | c3 << 30,  word1 = c3 >> 2.
 * ESTABLISHED (arm1.u 6.5.30m): arm_tex_send_arm_table (0x0c026010) keeps the
 * 33 words as one table record; sendTexTable (0x0c02539c) sends a curve record
 * as 16 word pairs to 16 consecutive registers, 0x1810-0x181f for kind 1
 * (TFT_DETAILTEX) and 0x1800-0x180f otherwise (TFT_EXTRAP), the first word of
 * the pair as bits 0-31 and the second ORed into the bus address word as bits
 * 32-39. So each register holds four 10-bit codes N0..N3, 64 samples in all,
 * and the 33rd word of a curve record is never sent.
 */

/*
 * LOD bias precision.
 *
 * ESTABLISHED: lodBias2Scale (kon_texture_api.s, 0x0d967fe0) turns a GL
 * LOD bias b into an unsigned 8-bit scale where 16 means 1.0:
 *   b >= 0: i = trunc(b), s = (16 << i) * (1 + (b - i))
 *   b <  0: i = trunc(1 - b), s = (16 >> i) * (1 + (b + i))
 *   scale = trunc(s), clamped to [1, 255]
 * That is 2^b approximated linearly between integer powers, in 4.4 fixed
 * point. __glKonTexParameter stores it at bits 16-23 of the texture
 * object's word +76. INFERRED: it feeds the 8-bit LOD_SCALES, LOD_SCALET
 * and LOD_SCALER fields of TG_LOD_SCALEST / TG_LOD_SCALER (0xc05, 0xc06).
 *
 * ESTABLISHED (kpm): TEX_MINLEVEL and TEX_MAXLEVEL are 10 bits each
 * (TG_MAP_LEVEL, 0xc04). UNKNOWN: the precision of the per-pixel LOD and of
 * the sub-texel position the bilinear weights come from. Neither libGLcore
 * nor kpm states it; the TG microcode or a capture would.
 */

/*
 * Texture download.
 *
 * ESTABLISHED (kpm): the load side has its own registers, TGTML_TEXLD_SIZE
 * (log2 sizes, 4 bits each), TGTML_TEXLD_STSTART / _STEND /
 * _S1ST_RSTART (16-bit s and t, 11-bit r), TGTML_TEXLD_MISC (2-bit
 * TEXELSIZE, load scissor, 2-bit target bank, tiling 2D / 3D / 3D_MIP /
 * BICUBIC, S_BITS, T_BITS, interlaced download) and TML_TEXLD_BASEADDR
 * (two 24-bit texture-memory addresses, even and odd, each a 21-bit low
 * and 3-bit high part). Load and draw are ordered with 20-bit ids:
 * TML_SYNC_IDLOAD / TM_SYNC_WAITLOAD and TM_SYNC_IDDRAW /
 * TML_SYNC_WAITDRAW.
 *
 * ESTABLISHED (libGLcore_n32.so 6.5.30m, DoDrawPixelsOrTexels, asm
 * libglcore/asm/KONA/kon_pixel.s line 3015): texel downloads go out as
 * token 0x174 (KONA_HP_DRAWTEXELS) followed by 20 header words, then the image
 * through __glKonSendData; pixel draws use token 0x3a (KONA_HP_DRAWPIXELS)
 * followed by 8 header words. The 20 is a count of the stores to the 0x4000
 * FIFO address in the direct path (the argument-passing path to
 * __glKonSendData carries the same words in the same order). Both are built
 * from one pixel-transfer descriptor (desc below) plus three arguments a1, a2,
 * a3. The descriptor is a plain struct of 32-bit words filled by
 * __glKonParseInput, __glKonParseHostImage, DrawSubTexels and subloadSimple.
 *
 *   DRAWTEXELS word  DRAWPIXELS word  source
 *    1  target                         desc+0x20: GL target; the code tests
 *                                      it against 0x0de0 / 0x0de1
 *                                      (GL_TEXTURE_1D / GL_TEXTURE_2D)
 *    2  a1             1               width of the piece being sent
 *                                      (INFERRED: DrawSubTexels splits the
 *                                      image across its width, in pieces
 *                                      whose width is a power of two, and
 *                                      passes the piece width here)
 *    3  a2             2               height, desc+0x4 (INFERRED)
 *    4  format code    3               desc+0x90 (see below)
 *    5  type code      4               desc+0x94 (see below)
 *    6  address & 3    5               desc+0x14 & 3: byte offset of the
 *                                      host image pointer within a word
 *    7  flag           6               desc+0xb4: 0 or 1, copied from a
 *                                      context bit (+0x7b5c bit 2)
 *    8  split flag     7               desc+0xb8: set to 1 when the image is
 *                                      sent in several pieces
 *    9  a3             8               the fourth argument of
 *                                      DoDrawPixelsOrTexels. ESTABLISHED:
 *                                      every DrawSubTexels call (all the
 *                                      texel senders found) passes 0 in the
 *                                      branch delay slot, so the texel word
 *                                      is 0; DrawPixels passes the number of
 *                                      columns already sent (0 for the first
 *                                      piece), so the pixel word is that
 *                                      column offset. Hardware use of the
 *                                      texel word UNKNOWN
 *   10  desc+0x64                      texel format id (ESTABLISHED, see
 *                                      "Texel format id" below). Set in
 *                                      subloadLevel (the local descriptor's
 *                                      +0x64) from the 16-byte internal-
 *                                      format table (see "Texel format id"
 *                                      below)
 *   11  desc+0x68                      the texture-table entry index, the
 *                                      same word TEXLOAD_ID carries (see
 *                                      "Texture load and bind commands").
 *                                      ESTABLISHED source (subloadSimple:
 *                                      word at the +4 of the entry that
 *                                      ctx+0x110 points to). INFERRED role:
 *                                      the load id the pipe writes to
 *                                      TML_SYNC_IDLOAD
 *   12  desc+0x6c                      s start (INFERRED)
 *   13  desc+0x70                      t start (INFERRED)
 *   14  desc+0x74                      s end, inclusive (INFERRED)
 *   15  desc+0x78                      t end, inclusive (INFERRED)
 *   16  desc+0x7c                      r start; __glKonDrawTexels3D adds 1
 *                                      per slice (INFERRED)
 *   17  desc+0x80                      packed log2 sizes, the image of
 *                                      TGTML_TEXLD_SIZE: bits 0-3 s, 4-7 t,
 *                                      8-11 r. ESTABLISHED: subloadLevel
 *                                      builds it as (t << 4) | s | (r << 8)
 *                                      and passes it as subloadSimple's
 *                                      eighth argument. INFERRED that s, t
 *                                      and r are log2 sizes: each is the
 *                                      level's log2 size raised to at least
 *                                      the tile size tileinfo gives for the
 *                                      tiling kind, and the field layout
 *                                      equals the register's
 *   18  flags         (desc+0x84)      the image of TGTML_TEXLD_MISC, see
 *                                      below
 *   19  desc+0x88                      even texture-memory base address
 *                                      word, one of the two addresses of
 *                                      TML_TEXLD_BASEADDR. ESTABLISHED:
 *                                      the pair is built in subloadLevel at
 *                                      local +64/+68 from the per-level
 *                                      table the context points to at
 *                                      +252 (or, for tiling kind 4, from
 *                                      context +276/+280) and passed to
 *                                      subloadSimple by pointer; for tiling
 *                                      kind 0 one slot of the pair holds the
 *                                      level's word, chosen by even/odd
 *                                      level parity, and the other is 0.
 *                                      INFERRED role from the register's
 *                                      even/odd pair
 *   20  desc+0x8c                      odd base address word, same source
 *
 * Flags word (word 18), ESTABLISHED as to source and INFERRED as to
 * meaning. subloadLevel builds it and subloadSimple stores it to desc+0x84:
 *   bits 0-1   texel size code, table entry +8 of the internal format
 *   bit 2      the load scissor enable; subloadLevel never sets it (no OR
 *              of 4 on any of its paths, kon_texture_api.s 0x0d96be7c on);
 *              DoDrawPixelsOrTexels ORs it in for a texel download when
 *              header word 7, the image-by-DMA flag, is nonzero, so it
 *              equals word 7 on every path (docs/opengl.md, "Texel
 *              download: header word 7 and the load-scissor bit")
 *   bits 3-4   target bank: 1 when the level's even/odd parity equals the
 *              context word at +284, else 0
 *   bits 5-6   tiling kind of the texture, (gc+12) & 3
 *   bits 7-10  S bits, st_bits_per_page[(tiling & 3) * 3 + size code][0]
 *   bits 11-14 T bits, same table, second word
 *   bit 15     interlaced download, set from context bit +0x704 bit 5
 * These are exactly the fields and positions of TGTML_TEXLD_MISC in the kpm
 * table (TEXELSIZE, LDSCISSOREN, TARGETBANK, TILING, S_BITS, T_BITS,
 * INTERLACE_DWNLD at shifts 0, 2, 3, 5, 7, 11, 15), so header word 18 is
 * that register's value. st_bits_per_page (libGLcore_n32.so 0x0da7ec80,
 * eight bytes per row, read from the file), rows 0-11: (4,4) (3,4) (2,4)
 * (3,2) (3,1) (3,1) (3,2) (2,2) (2,1) (5,3) (4,3) (3,3).
 *
 * Words 12-16, the header's start and end values, follow the register
 * layouts of TGTML_TEXLD_STSTART (s, t), _STEND (s, t) and _S1ST_RSTART
 * (the r start); the header order is s start, t start, s end, t end,
 * r start.
 *
 * Texel format id (word 10), ESTABLISHED for the table, INFERRED for its
 * role. intern_format_arr3 (libGLcore_n32.so 0x0da7e6f0, 67 entries of four
 * big-endian words: GL internal format, id, texel size code, group) was read
 * from the file. subloadLevel sets desc+0x64 to the entry's id when the
 * group is 1, to 8 when it is 2 and to 16 when it is 3 or 4. Group 1 is
 * every ordinary format, group 2 the dual formats 0x8110-0x811b, group 3
 * 0x811c-0x811d and group 4 the quad formats 0x811e-0x8123 (the GL
 * texture-select extension names for those enums are GL_DUAL_* and
 * GL_QUAD_*). Ids seen, with the formats that use them (GL names from the
 * public registry): 13 LUMINANCE and its sized forms, and also
 * DEPTH_COMPONENT and its 16/24/32 forms; 14 ALPHA; 15 INTENSITY; 8
 * LUMINANCE_ALPHA up to 8/8 and 6/2; 12 LUMINANCE12_ALPHA4; 16 RGB2,
 * RGBA2, R3_G3_B2, RGB4 and RGBA4; 20 RGB5 and RGB5_A1; 40
 * LUMINANCE12_ALPHA12 and LUMINANCE16_ALPHA16; 48 RGB8, RGBA8 and the
 * unsized RGB, RGBA, 3 and 4; 56 RGB10 and RGB10_A2; 80 RGB12, RGB16,
 * RGBA12 and RGBA16. Ids 5, 4 and 6 belong to group 2, 3 to group 3 and 1,
 * 0 and 2 to group 4. The texel size code is 0 for ids 13, 14, 15, 8, 12,
 * 16 and 20 and the groups 2-4, 1 for 40, 48 and 56, and 2 for 80; that
 * these are 16, 32 and 64 bits per texel is INFERRED from the format
 * widths. ESTABLISHED (arm1.u commonResolve 0x0c027a30-0x0c027a78): the
 * firmware uses the id as a row number, row id of its 17-row A format
 * tables below 20 and row id / 4 of its 21-row B tables from 20 up; each
 * row gives the destination component signature and the raster-bus format
 * codes. Luminance and depth share id 13 because both load as one
 * component with bus code 0x9. Full table: docs/ge.md, "The texel format
 * id".
 *
 * The INFERRED rows 12-16: subloadSimple stores its third and fourth
 * arguments to desc+0x6c and desc+0x70 and the sums (third + width - 1) and
 * (fourth + height - 1) to desc+0x74 and desc+0x78, which is a start and an
 * inclusive end in two dimensions; DrawSubTexels moves the width piece with
 * desc+0x6c = desc+0x74 + 1 and advances the host pointer (desc+0x14) by
 * bytes-per-pixel * (desc+0x6c - original desc+0x6c), which makes desc+0x6c the
 * pixel column. UNKNOWN: whether the hardware sees these as texel
 * coordinates of the target level; no register write was traced.
 *
 * The descriptor flag desc+0x18 bit 7 selects the texel header (0x174) over
 * the pixel header (0x3a); __glKonDrawTexels3D sets desc+0x18 to 0x81.
 *
 * Format code, ESTABLISHED (__glKonParseInput, __glKonGetFormatIndex): the GL
 * format becomes an index (GL_COLOR_INDEX 0x1900 .. GL_LUMINANCE_ALPHA
 * 0x190a -> 0..10, GL_ABGR_EXT 0x8000 -> 11, GL_CMYK_EXT 0x800c -> 12,
 * GL_CMYKA_EXT 0x800d -> 13) and that index is looked up in a 14-entry table
 * of 32-bit words at libGLcore_n32.so .data page 0x0da80000 + 0x29f8 (file
 * offset 0x1829f8), read from the file:
 *
 *   index   0 1 2 3 4 5 6 7 8 9 10 11 12 13
 *   code   11 12 13 0 1 2 3 4 5 6  7  8  9 10
 *
 * so the code on the wire is: RED 0, GREEN 1, BLUE 2, ALPHA 3, RGB 4,
 * RGBA 5, LUMINANCE 6, LUMINANCE_ALPHA 7, ABGR_EXT 8, CMYK_EXT 9,
 * CMYKA_EXT 10, COLOR_INDEX 11, STENCIL_INDEX 12, DEPTH_COMPONENT 13.
 * __glKonParseInput also stores 1 << code at desc+0x98; the draw path tests
 * mask 0x3000 (codes 12 and 13, stencil and depth) there.
 *
 * Components per format, ESTABLISHED (same page, table at +0x28e0, indexed by
 * wire code): 1 1 1 1 3 4 1 2 4 4 5 1 1 1 (CMYK 4, CMYKA 5).
 *
 * Type code, ESTABLISHED (__glKonGetTypeIndex): GL_BYTE 0x1400 .. GL_FLOAT
 * 0x1406 -> 0..6, GL_BITMAP 0x1a00 -> 7, packed types 0x8032 .. 0x8036 -> 8..12,
 * 0x81bd .. 0x81c3 -> 14..20; sent without remapping. Code 13 is unused by
 * the tested ranges. 1 << code is stored at desc+0x9c: bit 7 is bitmap,
 * mask 0x1f00 packed types. Bytes per element, ESTABLISHED (table at
 * +0x2920, indexed by type code): 1 1 2 2 4 4 4 0 | 1 2 2 4 4 | 0 | 2 2 4 4 8 8 8
 * (BITMAP 0; the packed types 0x8032..0x8036 are 1, 2, 2, 4, 4).
 * Bytes per pixel is components * element size, stored at desc+0xac
 * (__glKonParseHostImage).
 */

/*
 * Texture load and bind commands, ESTABLISHED (libGLcore_n32.so 6.5.30m;
 * the 64-bit libGLcore has the same four TEXLOAD_ID sites, found by the
 * instruction pattern at file offsets 0x7e44c, 0x7e5a0, 0x7e880, 0x7e8d0).
 *
 * Every texture object has a pointer at +272 to a cache entry; the word at
 * entry +4 is the entry's index. bindARMTexCache (kon_texture_api.s)
 * obtains an entry from an allocator reached through the function pointer
 * at +20 of the structure at +0xc03c from a global base, re-links the
 * entry in a list, stores it in the texture at +272, and sends
 * BIND_ARM_TEX_CACHE (0x1c4, token 452) with one payload word, the index. freeARMTexCache sends FREE_ARM_TEX_CACHE
 * (0x1c5, token 453) with the entry's +4 word and clears +272 (the token and word were read; the clear is the zero store at +272). stealARMTableCacheCallback, when the
 * table takes an entry back from a texture, sends three
 * TEX_ARM_CACHE_INDEX_INVALID (0x1e0, token 480) commands in a row, each
 * with two payload words, (0, index), (2, index), (1, index), and resets
 * the previous owner's bindings.
 *
 *   TEXLOAD_ID (0x176), one payload word: the index word at the +272 entry's
 *   +4 of the texture being loaded. Sent at every exit of subloadLevel
 *   (kon_texture_api.s), after the DRAWTEXELS commands of that level.
 *   TEXBIND_ID (0x178), updateTexBindID, one payload word: the same index.
 *
 * INFERRED: TEXLOAD_ID tells the pipe which table entry the preceding
 * download filled, so that draws can wait on it (the TML_SYNC_IDLOAD /
 * TM_SYNC_WAITLOAD ids above are 20 bits wide and the entry index is far
 * smaller). That the index is a texture-memory table index follows from
 * the names and from BIND_ARM_TEX_CACHE sending the same word. DRAWTEXELS
 * header word 11 is the same word (desc+0x68 is loaded from ctx+0x110 +4).
 *
 * ESTABLISHED: the pipe ignores TEXLOAD_SETUP (0x175). Its token-map
 * entry runs arm_texload_setup (arm1.u 0x0c025134), whose whole body is a
 * return: it reads no payload word and touches no register.
 * No libGLcore emitter exists either: no
 * instruction loads 373 or 0x175 as the first store to the FIFO window in
 * any of the three libGLcore ABIs, the kernel objects or the X modules (a
 * byte-pattern search of each binary for "li/ori rt,0x175" found none in
 * them). The only binary that loads 0x175 is IrisGL libgl.so (file offset
 * 0x51840), which writes the token and then copies three words from an
 * argument block into a pointer-addressed buffer, not the 0x4000 window.
 * Its 0x176 sibling (file offset 0x518c0) copies three halfwords where
 * libGLcore sends one word, so the IrisGL emitters do not match the
 * libGLcore command layout and are not taken as evidence for it.
 */

/* Register table (kpm vaddr 0x10145980). Field defines are "shift, width". */

/*
 * BEF_DUMP (index 0x1): back-end chip dump trigger, inferred from the engine program. The engine
 * handler `mges_ContextDeactivate` loads the bus high word 0x10000 (index 1, no upper value bits)
 * at address 0x6957 of ge.u, right after the word that reads a shadow slot back through port 0x476
 * (0x6956), so the save sequence addresses index 1 to make the back end return state. kpm prints a
 * BEF dump from its raster table, but no tbus write of index 1 exists in irsaudit, arm1.u or the
 * vector files. What the dump contains stays at the level of kpm's counter names. */
#define KONA_RM_BEF_DUMP                                 0x0001

/*
 * BEF_PERF_COUNTALL (index 0x2): the first of four event counters of the back-end FIFO that kpm's
 * BEF dump prints, saved at a context switch and never restored. Established in ge.u:
 * `mges_ContextDeactivate` sends the bus high word 0x20000 at address 0x695b as the last of the
 * four words it queues after the shadow read word 0x2100476 (0x6956: 0x10000, 0x30000, 0x60000,
 * then this one), and `mges_ContextLoadBEF` sends only 0x30000 and 0x60000 at 0x676a and 0x676b,
 * so index 2 is read out at a switch-out and no load handler writes it back. kpm prints it as one
 * 32-bit hex word; irsaudit, arm1.u and the vector files never write it. Inferred: the back-end
 * FIFO is the 4 MB FIFO with separate draw and load queues of the published OpenGL implementation
 * paper (section 3.3), and the SIGGRAPH 1997 InfiniteReality paper (section 3.3.1) says counters
 * kept in the Geometry-Raster FIFO record vertex-bus stalls and upstream waits for load
 * management. That paper does not use the name back-end FIFO; reading its FIFO as the same one is
 * inferred, so this is one of those counters only if the two are the same. Unknown: which of those conditions it counts. */
#define KONA_RM_BEF_PERF_COUNTALL                        0x0002

/*
 * BEF_PERF_COUNTDRAW (index 0x3): the second back-end FIFO event counter in kpm's BEF dump, the
 * only counter that goes out at a switch-out and comes back at a switch-in. Established in ge.u:
 * `mges_ContextDeactivate` sends the bus high word 0x30000 at address 0x6958 as the second word
 * after its shadow read, and `mges_ContextLoadBEF` sends the same word at 0x676a, so the saved
 * value is written back. kpm prints it as a 32-bit hex word; irsaudit, arm1.u and the vector files
 * never write index 3. Inferred: the counter that belongs to the FIFO's draw queue, since the
 * published design keeps separate draw and load queues in that FIFO (OpenGL implementation paper,
 * section 3.3) and kpm names a load counter beside it. Unknown: whether it counts words, packets
 * or stall cycles. */
#define KONA_RM_BEF_PERF_COUNTDRAW                       0x0003

/*
 * BEF_PERF_COUNTLOAD (index 4, 6.5.30m): the third back-end FIFO counter that kpm's BEF dump
 * prints as a 32-bit hex word. Established: nothing writes it. `mges_ContextDeactivate` queues
 * bus words for indices 1, 3, 6 and 2 only and `mges_ContextLoadBEF` sends 0x30000 and 0x60000
 * only, so those handlers never send the word 0x40000; irsaudit, arm1.u and the vector files never
 * address the index. Unknown: no shipped software or published source depends on what it
 * counts. Routes tried: the context save and load handlers of ge.u, irsaudit, arm1.u, the
 * vector files, kpm and libGLcore. */
#define KONA_RM_BEF_PERF_COUNTLOAD                       0x0004

/*
 * BEF_PERF_COUNTEMPTY (index 5, 6.5.30m): the fourth back-end FIFO counter that kpm's BEF dump
 * prints as a 32-bit hex word. Established: nothing writes it. `mges_ContextDeactivate` queues
 * bus words for indices 1, 3, 6 and 2 only and `mges_ContextLoadBEF` sends 0x30000 and 0x60000
 * only, so those handlers never send the word 0x50000; irsaudit, arm1.u and the vector files never
 * address the index. Unknown: no shipped software or published source depends on what it
 * counts. Routes tried: the context save and load handlers of ge.u, irsaudit, arm1.u, the
 * vector files, kpm and libGLcore. */
#define KONA_RM_BEF_PERF_COUNTEMPTY                      0x0005

/*
 * BEF_MAILBOX (index 0x6): back-end mailbox word saved with the context, inferred. Established in
 * ge.u: `mges_ContextDeactivate` sends the bus high word 0x60000 at address 0x695a and
 * `mges_ContextLoadBEF` sends the same word at address 0x676b, so unlike the counters the mailbox
 * goes out at a switch-out and comes back at a switch-in. kpm prints it next to the counters in
 * its BEF dump. What software places in the mailbox is not visible in arm1.u, irsaudit or the
 * vector files, none of which writes index 6. */
#define KONA_RM_BEF_MAILBOX                              0x0006

/*
 * BEF_REGSHADOW_BMASK (index 0x7): bit mask applied when a raster register write also updates its
 * shadow slot, inferred. Established: the engine handler `mgesi_BshRegisterWrite` sends the first
 * of its two bus words as 0x00070000 followed by the caller's mask word (ge.u 0x3991-0x399d), and
 * `mges_ContextReloadFromBEF` sends 0x00070000 at address 0x6736 before replaying the shadow.
 * irsaudit `TEST_befintram` writes index 7 with a random pattern from a ten-entry table at address
 * 0x1005ce68, mixed in with pixel and texel packets, as a back-end internal RAM stress. */
#define KONA_RM_BEF_REGSHADOW_BMASK                      0x0007

/*
 * BEF_REGSHADOW (index 0x100): base of the 89 shadow slots, which address words reach as 0x110
 * plus the word number, inferred. Established in arm1.u: `init_befshadow` (0x0c01fc80) streams the
 * 89 start-up values to the engine and the `arm_slop` loop writes the whole shadow through this
 * base. The engine side `mges_ContextReloadFromBEF` starts from the address word 0x01100000 at
 * ge.u address 0x6735, so a write at this base records the register in the slot and places an
 * ordinary register write on the bus. */
#define KONA_RM_BEF_REGSHADOW                            0x0100

/*
 * BEF_REGSHADOW_READ (index 0x200): read port for one shadow slot, index 0x200 plus the slot
 * number, established. irsaudit `TEST_befshadow` (0x1005da64) loads the read base at 0x1005e0dc
 * and sends each slot with 0x476 in bits 32-47, then compares the answer with the pattern it
 * wrote. The engine handler `mges_ContextDeactivate` uses the same form: it loads 0x02100476 (slot
 * 0x10, answer to port 0x476) at ge.u address 0x6956, which is how a context save collects the
 * first shadow word. */
#define KONA_RM_BEF_REGSHADOW_READ                       0x0200

/*
 * BEF_REGSHADOW_WRITE (index 0x300): write port for one shadow slot, index 0x300 plus the slot
 * number, established. irsaudit `TEST_befshadow` (0x1005da64) writes each of 256 slots here with
 * 0x476 in bits 32-47 and a test pattern below, treating the shadow as a plain RAM. The engine
 * handler `mges_ContextLoadBEF` loads 0x03100000, 0x03110000 and 0x03120000 at ge.u addresses
 * 0x676c, 0x676e and 0x6770 and then runs a loop from base 0x03100000, which suggests a context
 * load refills the slots without rewriting the raster registers behind them. */
#define KONA_RM_BEF_REGSHADOW_WRITE                      0x0300

/*
 * HTL_LOAD_STALL (index 0x44a8): a stall control that only kpm's raster table names. Unknown: no
 * shipped software or published source depends on what a write to this index stalls, because
 * nothing sends one. Routes tried: irsaudit (no constant of this index reaches `tbRegWrite`),
 * arm1.u (no address word 0x01xx44a8 and no immediate of this value in a `tbus_regwrite` call),
 * ge.u (no listing loads it), the vector files (no mode-1 word), libGLcore (no use). */
#define KONA_RM_HTL_LOAD_STALL                           0x44a8

/*
 * TG_DNOP (index 0xc00): a no-op slot of the texture generator block. Unknown: no shipped software
 * or published source depends on what a write to this slot does, since no program sends it. Routes
 * tried: irsaudit (no constant of this index reaches `tbRegWrite`; the restore routine
 * `tbuRegReset` at 0x10154cb4 skips action registers), the vector files (no mode-1 word of this
 * index), arm1.u (no address word 0x01xx0c00), ge.u (the 0xc00 in an immediate such as 0x400c0c00
 * or 0x20c0c00 at 0x91b7 and 0x3eb9 is part of a larger word, not a select), kpm and libGLcore
 * (the name appears only in kpm's raster table). */
#define KONA_RM_TG_DNOP                                  0x0c00

/*
 * TG_FIFOLAT (index 0xc01): texture generator output FIFO latency, a six-bit count, inferred from
 * kpm's LATENCY field. Established that only irsaudit `tbuRegReset` (0x10154cb4) writes it, at
 * address 0x10154d24 with zero, and that arm1.u, ge.u and the vector files never address it.
 * Non-zero values are never sent by any shipped program, so what a longer latency does to the unit
 * is read only from the field name. */
#define KONA_RM_TG_FIFOLAT                               0x0c01
#define KONA_RM_TG_LATENCY                                0,  6  /* shift, width */

/*
 * TG_MISC (index 0xc02): texture generator miscellaneous bits, a priority bit and a compress bit
 * in kpm. Established in arm1.u: `arm_shadow_texture` writes the host's shadow flag shifted left
 * one into bit 1 under mask 2 at address 0x0c026248 (address word 0x015a0c02), so bit 1 is driven
 * together with the shadow ambient and redundancy registers. irsaudit `tbuEnablePassR`
 * (0x101438c4) and `tbuDoShadow` (0x10144ae8) write it too. */
#define KONA_RM_TG_MISC                                  0x0c02
#define KONA_RM_TG_PRIORITY                               0,  1  /* shift, width */
#define KONA_RM_TG_COMPRESS                               1,  1  /* shift, width */

/*
 * TG_MAP_LEVEL (index 0xc04): lowest and highest mipmap level the generator may select, two
 * ten-bit fields. Established in arm1.u: `SetupRM_TextureBind` combines the texture object's level
 * words at offsets 0x2c and 0x30, the second shifted left by ten, and writes the result at address
 * 0x0c0369c4, and `CommonPixEnd` (0x0c026764) clears it after a pixel operation, and
 * `SetupTexRead` writes 0x10040 at 0x0c0344a4 before a texture read. irsaudit `tbuBindTexture`
 * stores its saved copy at 0x1014ce5c, and `TEST_texdetail` writes 1024, which is a maximum level
 * of one. */
#define KONA_RM_TG_MAP_LEVEL                             0x0c04
#define KONA_RM_TG_MAP_LEVEL_TEX_MINLEVEL                 0, 10  /* shift, width */
#define KONA_RM_TG_MAP_LEVEL_TEX_MAXLEVEL                10, 10  /* shift, width */

/*
 * TG_LOD_SCALEST (index 0xc05): level-of-detail scale for s and t, two eight-bit fields.
 * Established in arm1.u: `SetupRM_TextureBind` takes bytes 0 and 1 of the texture object word at
 * offset 0x28 and writes them as a 16-bit pair under mask 0xffff at address 0x0c036970, and
 * `arm_bind_3d_mipmap_texture` (0x0c025d40) writes a payload word it was sent. irsaudit
 * `tbuBindTexture` writes its saved copy at 0x1014cf10, and `tbuRegReset` (0x10154cb4) clears it. */
#define KONA_RM_TG_LOD_SCALEST                           0x0c05
#define KONA_RM_TG_LOD_SCALEST_LOD_SCALES                 0,  8  /* shift, width */
#define KONA_RM_TG_LOD_SCALEST_LOD_SCALET                 8,  8  /* shift, width */

/*
 * TG_LOD_SCALER (index 0xc06): level-of-detail scale for the r texture coordinate, one eight-bit
 * field. Established in arm1.u: `SetupRM_TextureBind` shifts the same texture object word at
 * offset 0x28 right by 16 and writes eight bits at address 0x0c03699c, only on one texture kind
 * that it tests first, and `arm_bind_3d_mipmap_texture` (0x0c025d50) writes the payload word
 * shifted right by 16. irsaudit `tbuBindTexture` stores its saved copy at 0x1014cf68. */
#define KONA_RM_TG_LOD_SCALER                            0x0c06
#define KONA_RM_TG_LOD_SCALER_LOD_SCALER                  0,  8  /* shift, width */

/* TM_MEMCONF: texture-memory geometry (S_BITS, T_BITS). ESTABLISHED:
 * irsaudit tbuBindTexture (0x1014c6a8) and tbuBindTextureCCT write it during
 * a bind; tbuRegReset (0x10154cb4) restores 0. The firmware and engine reach
 * it through engine memory slot 0x247 (GE.h). */
#define KONA_RM_TM_MEMCONF                               0x1000
#define KONA_RM_TM_S_BITS                                 0,  4  /* shift, width */
#define KONA_RM_TM_T_BITS                                 4,  4  /* shift, width */

/*
 * TM_REFCTR (index 0x1001): texture memory DRAM refresh interval, a ten-bit count with
 * refresh-disable and page-miss-disable bits, inferred from the kpm fields. Established that the
 * only writer in any shipped program is irsaudit `tbuRegReset` (0x10154cb4), which writes zero at
 * address 0x10154f7c, and that arm1.u, ge.u and the vector files never address it. A non-zero
 * count is not sent by any program, so the refresh rate that a given value gives stays unrecorded. */
#define KONA_RM_TM_REFCTR                                0x1001
#define KONA_RM_TM_REFCTRVALUE                            0, 10  /* shift, width */
#define KONA_RM_TM_REFDIS                                10,  1  /* shift, width */
#define KONA_RM_TM_PAGEMISSDIS                           11,  1  /* shift, width */

/*
 * TM_SYNC_WAITLOAD (index 0x1002): the texture load identifier that drawing must wait for, a
 * 20-bit field. Established: irsaudit `tbuDrawWaitOnLoadID` (0x1014688c) merges its argument into
 * the low 20 bits of the saved copy and writes it at 0x101468dc, `tbuBindTexture` writes the saved
 * copy at 0x1014d3dc, and arm1.u `activate_texture` writes it at 0x0c02637c,
 * `arm_bind_detail_texture` at 0x0c025f30 and `arm_free_arm_tex_cache` at 0x0c02533c. Inferred:
 * the load side announces completion through its own id register, so a draw naming a load id waits
 * for that load. */
#define KONA_RM_TM_SYNC_WAITLOAD                         0x1002
#define KONA_RM_TM_WAIT_ON_LOAD_ID                        0, 20  /* shift, width */

/*
 * TM_SYNC_IDDRAW (index 0x1003): the identifier of the draw that has just been issued, a 20-bit
 * field. Established: irsaudit `tbuSendDrawID` (0x10146714) merges its argument into the low 20
 * bits of the saved copy and writes it at address 0x10146764, and arm1.u writes it from
 * `activate_texture` (0x0c02636c), `SetupSubtexload` (0x0c0342dc, value from state word 0x8bc) and
 * `arm_free_arm_tex_cache` (0x0c025398). Inferred: the load side waits on this value through its
 * wait register, so a load cannot overwrite texture memory before the draw reading it. */
#define KONA_RM_TM_SYNC_IDDRAW                           0x1003
#define KONA_RM_TM_DRAW_ID                                0, 20  /* shift, width */

/* TM_DRAW_TEXMAP_0_1: texture-memory base addresses of mip levels 0 and 1,
 * 21+3 bits each. ESTABLISHED writers: ge.u mGL_EX_Initialize (0xb0cf)
 * stores the bus high word 0x10040000 as a template,
 * mgebi_Bind2dMipmapTexture (0x430b) ORs level addresses into it; irsaudit
 * tbuBindTexture (0x1014c6a8) writes 0x1004-0x100b in a row; tbuRegReset
 * (0x10154cb4) restores 0; tbusdata.Z writes it 87 times. INFERRED level
 * pairing from the field names and the order. */
#define KONA_RM_TM_DRAW_TEXMAP_0_1                       0x1004
#define KONA_RM_TM_TEXMAP_0                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_0_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_1                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_1_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_2_3 (index 0x1005): base addresses for mip levels 2 and 3, two 21-bit addresses
 * with three high bits each. Established: engine template 0x10050000 is stored by
 * `mGL_EX_Initialize` at address 0xb0d2 of ge.u and completed by `mgebi_Bind2dMipmapTexture` at
 * 0x4328, and irsaudit `tbuBindTexture` writes it at 0x1014d580 from the texture descriptor words
 * at offsets 212 and 252. Inferred: the texture unit takes the level 2 and level 3 base from this
 * word. */
#define KONA_RM_TM_DRAW_TEXMAP_2_3                       0x1005
#define KONA_RM_TM_TEXMAP_2                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_2_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_4_5 (index 0x1006): this register covers mip levels 4 and 5, laid out like the
 * first pair. Established in ge.u: the template 0x10060000 is stored at address 0xb0d5 in
 * `mGL_EX_Initialize` and filled at 0x4343 in `mgebi_Bind2dMipmapTexture`. irsaudit
 * `tbuBindTexture` writes it at 0x1014d63c, reading the descriptor words at offsets 292 and 332,
 * and `tbuBindTextureCCT` writes it at 0x1014b930 with the same layout. */
#define KONA_RM_TM_DRAW_TEXMAP_4_5                       0x1006
#define KONA_RM_TM_TEXMAP_4                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_4_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_5                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_5_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_6_7 (index 0x1007): base addresses of levels 6 and 7 in one 48-bit word.
 * Established: ge.u stores its template 0x10070000 at address 0xb0d8 and fills it at 0x434c,
 * irsaudit `tbuBindTexture` writes it at 0x1014d6f8 from descriptor offsets 372 and 412, and the
 * vector file tbusdata.Z writes 0xffffffff to it 86 times and 0 once. Inferred from the unchanged
 * value that the replay never binds a texture using these levels. */
#define KONA_RM_TM_DRAW_TEXMAP_6_7                       0x1007
#define KONA_RM_TM_TEXMAP_6                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_6_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_7                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_7_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_8_9 (index 0x1008): levels 8 and 9 sit in this word, two 21-bit addresses plus
 * three high bits each. Established in ge.u: template 0x10080000 is stored at address 0xb0db and
 * the level addresses are added at 0x4367. irsaudit `tbuBindTexture` writes it at 0x1014d7b4 from
 * descriptor offsets 452 and 492, and `tbuBindTextureCCT` writes it at 0x1014baa0. Inferred from
 * the field names and order that the unit reads level bases here. */
#define KONA_RM_TM_DRAW_TEXMAP_8_9                       0x1008
#define KONA_RM_TM_TEXMAP_8                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_8_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_9                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_9_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_10_11 (index 0x1009): the pair for levels 10 and 11, filled by ge.u at address
 * 0x4373 of `mgebi_Bind2dMipmapTexture`. Established: its template 0x10090000 is stored at 0xb0de,
 * and irsaudit `tbuBindTexture` writes it at 0x1014d870 using descriptor offsets 532 and 572.
 * `tbuRegReset` (0x10154cb4) writes zero at 0x1015526c. Inferred: it uses the same 21+3 bit layout
 * as every level pair. */
#define KONA_RM_TM_DRAW_TEXMAP_10_11                     0x1009
#define KONA_RM_TM_TEXMAP_10                              0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_10_HIGH                        21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_11                             24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_11_HIGH                        45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_12_13 (index 0x100a): levels 12 and 13 in one word, laid out as the other pairs.
 * Established: ge.u keeps its template 0x100a0000 at address 0xb0e1 and
 * `mgebi_Bind2dMipmapTexture` completes it at 0x438c, while irsaudit `tbuBindTexture` writes it at
 * 0x1014d92c from descriptor offsets 612 and 652. The CCT bind variant `tbuBindTextureCCT` has its
 * own write at 0x1014bc10. */
#define KONA_RM_TM_DRAW_TEXMAP_12_13                     0x100a
#define KONA_RM_TM_TEXMAP_12                              0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_12_HIGH                        21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_13                             24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_13_HIGH                        45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_14_15 (index 0x100b): the last 2D level pair, levels 14 and 15. Established: ge.u
 * stores the template 0x100b0000 at address 0xb0e4 and fills it at 0x4395, irsaudit
 * `tbuBindTexture` writes it at 0x1014d9e8 from descriptor offsets 692 and 732, and
 * `tbuBindTextureCCT` at 0x1014bcc8. Inferred: sixteen level slots spread over eight such words
 * make this the last of them. */
#define KONA_RM_TM_DRAW_TEXMAP_14_15                     0x100b
#define KONA_RM_TM_TEXMAP_14                              0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_14_HIGH                        21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_15                             24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_15_HIGH                        45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_3DM_0: 3D-texture level addresses, two banks (B0, B1) per
 * register. ESTABLISHED: irsaudit tbuBindTexture writes 0x100c-0x1015 in a
 * row on its 3D path instead of 0x1004-0x100b; tbuRegReset (0x10154cb4)
 * restores 0. No ge.u constant: the shipped engine program builds no 3D
 * bind. INFERRED: one register per 3D level. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_0                     0x100c
#define KONA_RM_TM_TEXMAP_3DM_0_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_0_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_0_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_0_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_1 (index 0x100d): 3D texture level 1, two banks of address. Established:
 * irsaudit `tbuBindTexture` writes it at 0x1014dd50 on the 3D path, taking the descriptor word at
 * offset 172 into both banks, the second shifted left by 24, and `tbuBindTextureCCT` writes it at
 * 0x1014c024. Inferred: the two banks of a 3D level are loaded from one descriptor word. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_1                     0x100d
#define KONA_RM_TM_TEXMAP_3DM_1_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_1_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_1_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_1_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_2 (index 0x100e): level 2 of a 3D texture, written in the same pass as its
 * neighbours. Established in irsaudit: `tbuBindTexture` fills it at address 0x1014de0c from the
 * descriptor word at offset 212, and `tbuBindTextureCCT` has the matching write at 0x1014c0dc.
 * `tbuRegReset` writes zero at 0x10155448. No ge.u constant builds a 3D bind. Inferred: this is
 * the 3D counterpart of the 2D level 2 base. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_2                     0x100e
#define KONA_RM_TM_TEXMAP_3DM_2_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_2_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_2_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_2_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_3 (index 0x100f): third level above the base in a 3D texture bind.
 * Established: irsaudit `tbuBindTexture` writes it at 0x1014dec0, with descriptor offset 252
 * feeding both banks, and `tbuBindTextureCCT` writes it at 0x1014c18c. The register is restored to
 * zero by `tbuRegReset` at 0x101554a8. Inferred from the field names that its banks mean the same
 * as the first 3D register's. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_3                     0x100f
#define KONA_RM_TM_TEXMAP_3DM_3_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_3_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_3_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_3_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_4 (index 0x1010): level 4 on the 3D path of the bind routines. Established:
 * `tbuBindTexture` in irsaudit writes it at 0x1014df7c using the descriptor word at offset 292 and
 * `tbuBindTextureCCT` writes it at 0x1014c244, and the shipped engine program has no 3D bind.
 * Inferred: banks B0 and B1 are loaded from one word, as for the lower levels, and the diagnostic
 * restores zero at 0x10155504. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_4                     0x1010
#define KONA_RM_TM_TEXMAP_3DM_4_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_4_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_4_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_4_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_5 (index 0x1011): 3D level 5. Established: irsaudit `tbuBindTexture` stores
 * it at address 0x1014e030 with descriptor offset 332 as the source and `tbuBindTextureCCT` stores
 * it at 0x1014c2f4, while the restore at 0x10155564 puts back zero. Inferred, because only the
 * diagnostic touches this register, that the texture unit takes the fifth 3D level base from it
 * when a 3D mipmap is sampled. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_5                     0x1011
#define KONA_RM_TM_TEXMAP_3DM_5_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_5_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_5_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_5_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_6 (index 0x1012): level 6 in the 3D set. Established in irsaudit: the bind
 * routine `tbuBindTexture` writes it at 0x1014e0ec from descriptor offset 372, the
 * compressed-texture variant `tbuBindTextureCCT` at 0x1014c3ac, and `tbuRegReset` zeroes it at
 * 0x101555c4. Inferred: the descriptor offsets advance by 40 per level, as they do for the 2D
 * registers. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_6                     0x1012
#define KONA_RM_TM_TEXMAP_3DM_6_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_6_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_6_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_6_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_7 (index 0x1013): 3D level 7. Established: `tbuBindTexture` writes it at
 * 0x1014e19c from descriptor word offset 412, `tbuBindTextureCCT` writes it at 0x1014c458, and the
 * zero restore is at 0x10155620 in `tbuRegReset`. Inferred: the two banks carry the even and odd
 * slice addresses of that level, and nothing in arm1.u or ge.u writes the register. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_7                     0x1013
#define KONA_RM_TM_TEXMAP_3DM_7_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_7_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_7_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_7_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_8 (index 0x1014): 3D level 8, the register just before the last. Established
 * in irsaudit: address 0x1014e258 in `tbuBindTexture` writes it from descriptor offset 452,
 * address 0x1014c510 in `tbuBindTextureCCT` does the same, and `tbuRegReset` clears it at
 * 0x1015567c. Inferred from the match between level number and offset that each register is one
 * level. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_8                     0x1014
#define KONA_RM_TM_TEXMAP_3DM_8_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_8_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_8_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_8_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_9 (index 0x1015): 3D level 9, the final register of the 3D bank. Established:
 * irsaudit `tbuBindTexture` writes it at 0x1014e30c using descriptor offset 492 and
 * `tbuBindTextureCCT` writes it at 0x1014c5c0, with the matching zero restore at 0x101556dc.
 * Inferred: the bind loop for 3D textures ends here, so a 3D mipmap names at most ten levels,
 * against sixteen for the 2D chain. */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_9                     0x1015
#define KONA_RM_TM_TEXMAP_3DM_9_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_9_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_9_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_9_B1_HIGH                  45,  3  /* shift, width */

/* TM_DRAW_CUBEMAP_FAR: cube-map face base address (the far face).
 * ESTABLISHED: irsaudit tbuBindCubeMap (0x1014a5fc) writes 0x1016, then
 * 0x1017 and 0x1018 twice each; tbuRegReset (0x10154cb4) restores 0. No ge.u
 * or arm1.u writer. */
#define KONA_RM_TM_DRAW_CUBEMAP_FAR                      0x1016
#define KONA_RM_TM_CUBEMAP_FAR                            0, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_FAR_HIGH                      21,  3  /* shift, width */

/*
 * TM_DRAW_CUBEMAP_LFTRGHT (index 0x1017): base addresses of the left and right cube faces, one in
 * each half of the word. Established: irsaudit `tbuBindCubeMap` (0x1014a5fc) writes it at
 * 0x1014a748 and again at 0x1014a7b4, and `tbuRegReset` zeroes it at 0x10155794. Inferred: each
 * write places one face, the left or the right. The far face has its own register, and no ge.u or
 * arm1.u routine writes this one. */
#define KONA_RM_TM_DRAW_CUBEMAP_LFTRGHT                  0x1017
#define KONA_RM_TM_CUBEMAP_LEFT                           0, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_LEFT_HIGH                     21,  3  /* shift, width */
#define KONA_RM_TM_CUBEMAP_RIGHT                         24, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_RIGHT_HIGH                    45,  3  /* shift, width */

/*
 * TM_DRAW_CUBEMAP_TOPBOT (index 0x1018): base addresses of the top and bottom cube faces, one in
 * each half of the word. Established in irsaudit: `tbuBindCubeMap` writes it at 0x1014a834 and
 * again at 0x1014a894, and `tbuRegReset` puts zero back at 0x101557f4. Inferred from the symmetry
 * with the left and right register that each write places one face. Together with the far face
 * register this completes the six faces of a cube map, and the near face is not named here. */
#define KONA_RM_TM_DRAW_CUBEMAP_TOPBOT                   0x1018
#define KONA_RM_TM_CUBEMAP_TOP                            0, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_TOP_HIGH                      21,  3  /* shift, width */
#define KONA_RM_TM_CUBEMAP_BOT                           24, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_BOT_HIGH                      45,  3  /* shift, width */

/*
 * TM_DRAW_DETAILMAP (index 0x1019): base address of the detail texture, 21 bits plus three high
 * bits. Established: irsaudit `tbuBindTexture` writes it at 0x1014c7bc just after the bind start
 * marker, `tbuBindTextureCCT` at 0x1014abc0, and arm1.u `arm_bind_texture` (address word loaded at
 * 0x0c025924) and `arm_bind_detail_texture` (0x0c025fc4) write it with one of two address words
 * picked by bit 28 of a flag word. Shadow start-up value 0. */
#define KONA_RM_TM_DRAW_DETAILMAP                        0x1019
#define KONA_RM_TM_DETAILMAP                              0, 21  /* shift, width */
#define KONA_RM_TM_DETAILMAP_HIGH                        21,  3  /* shift, width */

/* TM_DRAW_GLOBALOFFSET: global texture-memory offset added to the level
 * addresses (21+3 bits). ESTABLISHED: arm1.u address word 0x0146101a (shadow
 * word 54); irsaudit tbuBindTexture, TEST_texmem*, TEST_texdetail write it;
 * restore value 0. */
#define KONA_RM_TM_DRAW_GLOBALOFFSET                     0x101a
#define KONA_RM_TM_GLOBALOFFSET                           0, 21  /* shift, width */
#define KONA_RM_TM_GLOBALOFFSET_HIGH                     21,  3  /* shift, width */

/*
 * TM_RDBK_STRSTART (index 0x101b): start position of a texture read-back in s, t and r.
 * Established: irsaudit `tbuStartTMReadback` (0x1014344c) writes it at 0x10143654 after the end
 * register, `TEST_texread` writes 0 at 0x100c6874, and arm1.u `StartTexRead` writes it with
 * `tbus_write_word` at 0x0c03471c from its texture state word at offset 0x38. The routine
 * `tbuRegReset` skips it as an action register. Inferred: the position is only taken when the
 * end-of-read-back write that follows it arrives. */
#define KONA_RM_TM_RDBK_STRSTART                         0x101b
#define KONA_RM_TM_RDBK_S_START                           0, 12  /* shift, width */
#define KONA_RM_TM_RDBK_S_START_HIGH                     12,  4  /* shift, width */
#define KONA_RM_TM_RDBK_T_START                          16, 15  /* shift, width */
#define KONA_RM_TM_RDBK_T_START_HIGH                     31,  1  /* shift, width */
#define KONA_RM_TM_RDBK_R_START                          32, 10  /* shift, width */
#define KONA_RM_TM_RDBK_R_START_HIGH                     42,  6  /* shift, width */

/*
 * TM_RDBK_STEND (index 0x101c): end position of a texture read-back in s and t, each a low field
 * with high bits above it. Established: irsaudit `tbuStartTMReadback` writes it at 0x10143550,
 * before the start register, `TEST_texread` ORs in 3 at 0x100c6864, and arm1.u `StartTexRead`
 * (0x0c034630) writes the end position shifted right by 3 with the t end in the upper half at
 * 0x0c0346f8. The restore routine leaves it alone. Inferred: its s end is the last texel column
 * read back and the t end the last row. */
#define KONA_RM_TM_RDBK_STEND                            0x101c
#define KONA_RM_TM_RDBK_S_END                             0, 12  /* shift, width */
#define KONA_RM_TM_RDBK_S_END_HIGH                       12,  4  /* shift, width */
#define KONA_RM_TM_RDBK_T_END                            16, 15  /* shift, width */
#define KONA_RM_TM_RDBK_T_END_HIGH                       31,  1  /* shift, width */

/*
 * TM_RDBK_END (index 0x101d): triggers a texture read-back, no fields. Established: it is the last
 * write of every read-back set-up, with value 1, by irsaudit `tbuStartTMReadback` at 0x101436b8
 * and `TEST_texread` at 0x100c68a8, and by arm1.u `StartTexRead`, whose final tail call at
 * 0x0c03474c sends it; `tbuRegReset` skips it. Inferred from that ordering and from the later
 * `TFP_TEXRB_CLR` write that the write itself starts the read, since all position registers are
 * loaded before it. */
#define KONA_RM_TM_RDBK_END                              0x101d

/*
 * TM_DRAW_SHA_AMBIENT (index 0x101e): ambient level used by shadow texturing, a six-bit field.
 * Established in arm1.u: `arm_shadow_texture` writes the last operand it is sent under mask 0x3f
 * at address 0x0c026260, after setting the redundancy and compress bits. irsaudit `tbuDoShadow`
 * (0x10144a8c) writes the saved copy and `tbuRegReset` clears it at 0x10155910. Inferred from the
 * routine name and the kpm field name that it is the lit level inside a shadow. */
#define KONA_RM_TM_DRAW_SHA_AMBIENT                      0x101e
#define KONA_RM_TM_SHA_AMBIENT                            0,  6  /* shift, width */

/*
 * TM_DRAW_REDUNDANCY (index 0x101f): one-bit redundancy flag for the texture memory draw path,
 * inferred from the field name. Established: arm1.u `arm_shadow_texture` writes the first operand
 * it receives under mask 1 at address 0x0c026234, `StartTexRead` writes 1 at 0x0c034664 before a
 * texture read-back, `CommonPixEnd` clears it at 0x0c026710, and irsaudit `TEST_texread` sets it
 * to 1 at 0x100c6820 while `tbuEnablePassR` (0x10143914) writes a saved copy. The shadow word
 * start-up value is 0. */
#define KONA_RM_TM_DRAW_REDUNDANCY                       0x101f
#define KONA_RM_TM_REDUNDANCY                             0,  1  /* shift, width */

/*
 * TM_DRAW_CLIP_OFFSET (index 0x1020): clip-map centre offset in s and t, sixteen bits each.
 * Established in arm1.u: `arm_bind_2d_clipmap_texture` writes the first operand it is sent, with a
 * full mask, after loading address word 0x01501020 at 0x0c025bd0. irsaudit `tbuBindTexture` writes
 * its saved copy at 0x1014cc68, and `levelizeMipmap` (0x10121a40) and `my_glKonTexParameter`
 * (0x1012a8ec) write it from the texture object. Inferred from the routine name and kpm names that
 * it positions a clip-mapped level. */
#define KONA_RM_TM_DRAW_CLIP_OFFSET                      0x1020
#define KONA_RM_TM_CLIP_S_OFFSET                          0, 16  /* shift, width */
#define KONA_RM_TM_CLIP_T_OFFSET                         16, 16  /* shift, width */

/*
 * TM_DRAW_CLIP_BKPT (index 0x1021): clip-map break point, a four-bit level number, inferred from
 * the field name. Established in arm1.u: `arm_bind_2d_clipmap_texture` writes the second operand
 * it is sent (value store at 0x0c025be8), the address word 0x01511021 having been loaded at
 * 0x0c025bb8. irsaudit writes it from `tbuBindTexture` (0x1014cfc0), `tbuBindCubeMap` (0x1014aa4c)
 * and `tbuDoShadow` (0x10144cbc), and `tbuRegReset` restores 0. */
#define KONA_RM_TM_DRAW_CLIP_BKPT                        0x1021
#define KONA_RM_TM_CLIP_BKPT                              0,  4  /* shift, width */

/*
 * TM_TEXBIND_START (index 0x1022): marks the start of a texture bind, no fields. Established: it
 * is the first register written by irsaudit `tbuBindTexture` at 0x1014c6fc and by
 * `tbuBindTextureCCT` at 0x1014ab00, with the value taken from the saved copy, and `tbuRegReset`
 * never restores it. The vector file tbusdata.Z writes 0 to it 87 times, once before each bind
 * block. Inferred from that position that it opens a group of texture memory register updates. */
#define KONA_RM_TM_TEXBIND_START                         0x1022

/*
 * TM_TM1A_COMPAT (index 0x1023): compatibility bits for the older texture memory chip, hardware
 * mask and shallow FIFO, one bit each in kpm. Established in arm1.u: `init_tm` (0x0c003980) writes
 * 1 at address 0x0c003a24 on board types 1, 3, 4 and 5 when all eight chips of every board report
 * the same type code in the top nibble of their descriptor words, and otherwise prints a warning
 * about down-rev chips. irsaudit `tbuRegReset` writes 0 at 0x10155a80. */
#define KONA_RM_TM_TM1A_COMPAT                           0x1023
#define KONA_RM_TM_TM1A_COMPAT_TM1A_COMPAT_HWMK           0,  1  /* shift, width */
#define KONA_RM_TM_TM1A_COMPAT_TM1A_COMPAT_SFIFO          1,  1  /* shift, width */

/*
 * TM_DNOP (index 0x102f): texture memory no-op, a padding write. Established: irsaudit
 * `TEST_texread` loads 4143 twice, between the read-back start and end registers, and writes 1
 * each time, at addresses 0x100c6884 and 0x100c6894, and arm1.u `StartTexRead` does the same at
 * 0x0c03472c and 0x0c03473c. `tbuRegReset` skips it. Inferred: the two writes pad the stream so
 * the position writes settle before the read-back end arrives, and no other program writes it. */
#define KONA_RM_TM_DNOP                                  0x102f

/*
 * TM_TEX_SIZE (index 0x13d5): texture size for texture memory alone, with a four-bit size for each
 * of s, t and r and a one-bit flag for each, inferred from the kpm fields. Established: the
 * combined register 0x3fd5 has the same layout, and arm1.u `arm_bind_bicubic_texture` (address
 * word loaded at 0x0c025e50), `arm_bind_3d_texture` (0x0c025ed8) and `arm_bind_3d_mipmap_texture`
 * (0x0c025d74) write this one. irsaudit `TestTex` writes 29747 at 0x10104540. */
#define KONA_RM_TM_TEX_SIZE                              0x13d5
#define KONA_RM_TM_SSIZE                                  0,  4  /* shift, width */
#define KONA_RM_TM_TSIZE                                  4,  4  /* shift, width */
#define KONA_RM_TM_RSIZE                                  8,  4  /* shift, width */
#define KONA_RM_TM_SAC                                   12,  1  /* shift, width */
#define KONA_RM_TM_TAC                                   13,  1  /* shift, width */
#define KONA_RM_TM_RAC                                   14,  1  /* shift, width */

/*
 * TML_TEXLD_BASEADDR (index 0x5000): texture memory address a load writes to, an even and an odd
 * 21-bit address with three high bits each. Established: irsaudit `tbuLoadMipmap` (0x10147088),
 * `tbuLoadBicubic` (0x10147bcc), `tbuLoadTexture` (0x101486b8) and `tbuLoad3D` (0x10149c54) write
 * it before each load, `tbuSubLoadMap` writes it twice, and `tbuRegReset` zeroes it at 0x10155b40.
 * Inferred: the two addresses place rows in the even and odd memory banks. No arm1.u address word
 * carries it. */
#define KONA_RM_TML_TEXLD_BASEADDR                       0x5000
#define KONA_RM_TML_BASEADDR_EVEN                         0, 21  /* shift, width */
#define KONA_RM_TML_BASEADDR_EVEN_HIGH                   21,  3  /* shift, width */
#define KONA_RM_TML_BASEADDR_ODD                         24, 21  /* shift, width */
#define KONA_RM_TML_BASEADDR_ODD_HIGH                    45,  3  /* shift, width */

/*
 * TML_TEXLD_GLOBALOFFSET (index 0x5001): global offset added to load addresses, 21 bits plus three
 * high bits, the load-side twin of the draw offset. Established in arm1.u:
 * `PixRM_TextureLoadSetup` writes the word at [r2] at address 0x0c03677c (address word
 * 0x01455001), and `mem_swapout_tex` and `mem_swapin_tex` write it at 0x0c0242b8 and 0x0c024330.
 * irsaudit tests write 0 and `tbuLoadMipmap` (0x10146be4) writes a saved copy. Shadow slot 53
 * starts at 0. */
#define KONA_RM_TML_TEXLD_GLOBALOFFSET                   0x5001
#define KONA_RM_TML_GLOBALOFFSET                          0, 21  /* shift, width */
#define KONA_RM_TML_GLOBALOFFSET_HIGH                    21,  3  /* shift, width */

/*
 * TML_SYNC_WAITDRAW (index 0x5002): the draw identifier a texture load must wait for, a 20-bit
 * field. Established: irsaudit `tbuLoadWaitOnDrawID` (0x1014665c) merges its argument into the low
 * 20 bits and writes the saved copy at 0x101466ac, and arm1.u writes the register from
 * `activate_texture` (0x0c02639c), `SetupSubtexload` (0x0c0342bc) and `arm_free_arm_tex_cache`
 * (0x0c025374). Inferred: the load holds until the draw with that id has been issued. */
#define KONA_RM_TML_SYNC_WAITDRAW                        0x5002
#define KONA_RM_TML_WAIT_ON_DRAW_ID                       0, 20  /* shift, width */

/*
 * TML_SYNC_IDLOAD (index 0x5003): the identifier of the load that has just finished, a 20-bit
 * field. Established: irsaudit `tbuSendLoadID` (0x101467d0) writes it at 0x10146820 and the load
 * routines `tbuLoadMipmap` (0x101474f0), `tbuLoadBicubic` (0x10148014) and `tbuLoadTexture`
 * (0x10148b10) write it after their data. arm1.u `activate_texture` (0x0c02635c) and
 * `arm_bind_detail_texture` (0x0c025f50) write it too. Inferred: draws that wait on this id see
 * the load complete. */
#define KONA_RM_TML_SYNC_IDLOAD                          0x5003
#define KONA_RM_TML_LOAD_ID                               0, 20  /* shift, width */

/*
 * TML_TM1A_COMPAT (index 0x5004): load-side compatibility bit for the older texture memory chip,
 * one field named COMPAT in kpm. Established in arm1.u: `init_tm` writes 0 at address 0x0c003a38,
 * right after it writes 1 to the draw-side twin, when every chip of a board reports one type code.
 * irsaudit `tbuRegReset` zeroes it at 0x10155cbc. Inferred from the pairing and names that the bit
 * is cleared where the draw side is set. */
#define KONA_RM_TML_TM1A_COMPAT                          0x5004
#define KONA_RM_TML_COMPAT                                0,  1  /* shift, width */

/*
 * TML_RAMSYNC (index 0x53ff): a slot that only kpm's raster table names, grouped with the texture-
 * load registers. Unknown: no shipped software or published source depends on what RAM state a
 * write to this index synchronises, because nothing sends one. Routes tried: irsaudit (no constant
 * of this index reaches `tbRegWrite`), arm1.u (no address word 0x01xx53ff, no immediate in a
 * `tbus_regwrite` call), ge.u (no listing loads it), the vector files (no mode-1 word), libGLcore
 * (no use). */
#define KONA_RM_TML_RAMSYNC                              0x53ff

/*
 * TFP_TEX (index 0x1500): the one-bit texture enable of the filter, field EN at bit 0 in kpm's
 * table. Established: ge.u `mgebi_Texture` (0x43f3) loads select 0x015c1500 at 0x43f7 with the
 * value 1 (0x43fa) behind the mask word 0x70000, and its callers are the texture bind and active-
 * texture handlers; arm1.u `PixEnd_FFT` (0x0c026a14) and `PixEndConvolve` (0x0c026c1c) write 0 to
 * the same select at the end of a pixel path, so texturing is off after pixel work; irsaudit
 * `tbuRegReset` restores 0, and the vector files carry 67 words, 58 with value 0 and 9 with value
 * 1. Inferred: setting it turns texture lookup on in the filter, because the texture handler sets
 * it and every pixel path clears it. */
#define KONA_RM_TFP_TEX                                  0x1500
#define KONA_RM_TFP_TEX_EN                                0,  1  /* shift, width */

/*
 * TFP_PASSR (index 0x153e): one bit that passes the r texture coordinate through the filter chips.
 * Established: irsaudit `tbuEnablePassR` (0x10143714) writes it at 0x101437a0 and
 * `tbuEnablePassRCCT` (0x10143cd8) at 0x10143d64, each beside a redundancy and texture generator
 * write, and `tbuRegReset` restores 0 at 0x101560a0. No arm1.u or ge.u routine writes it. The
 * meaning is inferred from the field name PASSR_EN. */
#define KONA_RM_TFP_PASSR                                0x153e
#define KONA_RM_TFP_PASSR_EN                              0,  1  /* shift, width */

/*
 * TFP_TEXRB (index 0x153f): data format of a texture read-back, 16-bit, 32-bit or 48-bit words in
 * a two-bit field. Established: irsaudit `TEST_texread` writes 1 at 0x100c6830, which selects
 * 32-bit words, ahead of the read-back start, and arm1.u `StartTexRead` writes a format argument
 * it was passed at 0x0c034688. `tbuRegReset` never restores it. Inferred: the field gives the
 * width of each texel word the filter returns. */
#define KONA_RM_TFP_TEXRB                                0x153f
#define KONA_RM_TFP_TEXRB_FMT                             0,  2  /* shift, width */
#define KONA_RM_TFP_TEXRB_FMT_B16                        0x0
#define KONA_RM_TFP_TEXRB_FMT_B32                        0x1
#define KONA_RM_TFP_TEXRB_FMT_B48                        0x2

/* TFP_TEXRB_CLR: ends a texture read-back. ESTABLISHED: irsaudit writes 1
 * here as the last action of its read-back paths (0x100c6a4c after
 * TEST_texread, 0x1010473c in TestTex), after clearing 0x441; never
 * restored. No ge.u or arm1.u writer. */
#define KONA_RM_TFP_TEXRB_CLR                            0x1415

/*
 * TFP_TEV (index 0x1401): texture environment function, a four-bit alpha function and a four-bit
 * colour function (replace fragment, replace texture, modulate, blend, decal, add, add with a
 * half, sign not established). Established: irsaudit `tbuTexEnv` writes the saved copy at 0x10154b00, `tbuRegReset`
 * restores 0x22, which is modulate for both, and the shadow start-up value in befsh_init is the
 * same 0x22. No arm1.u routine carries this index as an address word. */
#define KONA_RM_TFP_TEV                                  0x1401
#define KONA_RM_TFP_TEV_AFUNC                             0,  4  /* shift, width */
#define KONA_RM_TFP_TEV_AFUNC_REP_FRAG                   0x0
#define KONA_RM_TFP_TEV_AFUNC_REP_TEX                    0x1
#define KONA_RM_TFP_TEV_AFUNC_MODULATE                   0x2
#define KONA_RM_TFP_TEV_AFUNC_BLEND                      0x3
#define KONA_RM_TFP_TEV_AFUNC_DECAL                      0x4
#define KONA_RM_TFP_TEV_AFUNC_ADD                        0x5
#define KONA_RM_TFP_TEV_AFUNC_ADD_05                     0x6
#define KONA_RM_TFP_TEV_CFUNC                             4,  4  /* shift, width */
#define KONA_RM_TFP_TEV_CFUNC_REP_FRAG                   0x0
#define KONA_RM_TFP_TEV_CFUNC_REP_TEX                    0x1
#define KONA_RM_TFP_TEV_CFUNC_MODULATE                   0x2
#define KONA_RM_TFP_TEV_CFUNC_BLEND                      0x3
#define KONA_RM_TFP_TEV_CFUNC_DECAL                      0x4
#define KONA_RM_TFP_TEV_CFUNC_ADD                        0x5
#define KONA_RM_TFP_TEV_CFUNC_ADD_05                     0x6

/*
 * TFP_TEV_CC (index 0x1402): texture environment constant colour, green in the low twelve bits and
 * red above them, inferred from kpm's G and R field names. Established that only irsaudit
 * `tbuRegReset` (0x10154cb4) writes it, with zero at address 0x10156164, and that arm1.u, ge.u and
 * the vector files carry no write; alpha and blue are in `TFP_TEV_CC1`. The firmware's shadow slot
 * 78 starts at zero and no program loads a colour. */
#define KONA_RM_TFP_TEV_CC                               0x1402
#define KONA_RM_TFP_TEV_CC_G                              0, 12  /* shift, width */
#define KONA_RM_TFP_TEV_CC_R                             12, 12  /* shift, width */

/*
 * TFP_TEV_CC1 (index 0x1413): second half of the texture environment constant colour, blue and
 * alpha as twelve-bit fields. Inferred from kpm's field names and from its place after the first
 * word in the shadow (slot 79). Established that only irsaudit `tbuRegReset` writes it, with zero
 * at address 0x101561c4, and that arm1.u, ge.u and the vector files never address it. Its fields
 * are named A and B, so together the two words hold one RGBA constant. */
#define KONA_RM_TFP_TEV_CC1                              0x1413
#define KONA_RM_TFP_TEV_CC1_A                             0, 12  /* shift, width */
#define KONA_RM_TFP_TEV_CC1_B                            12, 12  /* shift, width */

/*
 * TFP_FOG (index 0x1403): fog control, a colour mode and fog mode nibble, a table address byte and
 * single-bit flags for one-table, colour index, offset, centroid and enable. Established: irsaudit
 * `fog` (0x1010cf70, 36 call sites) and `tbuEnableFog` (0x10144358) write it, `tbuRegReset`
 * restores 0x80000, which has only the centroid bit, and arm1.u `arm_buffer_config` clears the
 * colour-index bit at 0x0c0134a8 under mask 0x20000. The shadow start-up value is also 0x80000. */
#define KONA_RM_TFP_FOG                                  0x1403
#define KONA_RM_TFP_FOG_CMODE                             0,  4  /* shift, width */
#define KONA_RM_TFP_FOG_FMODE                             4,  4  /* shift, width */
#define KONA_RM_TFP_FOG_ADDR                              8,  8  /* shift, width */
#define KONA_RM_TFP_FOG_ONE_LUT                          16,  1  /* shift, width */
#define KONA_RM_TFP_FOG_CI                               17,  1  /* shift, width */
#define KONA_RM_TFP_FOG_EN_OFFSET                        18,  1  /* shift, width */
#define KONA_RM_TFP_FOG_EN_CENT                          19,  1  /* shift, width */
#define KONA_RM_TFP_FOG_EN                               20,  1  /* shift, width */

/*
 * TFP_FOG_CC (index 0x1404): fog colour, green and red in twelve bits each, with blue in the next
 * word, inferred from kpm's field names. Established: irsaudit `fog` has 15 call sites for it
 * (first at 0x1010d1a0) and `tbuEnableFog` at 0x10144678, `test_prims` at 0x10100620 writes its
 * saved copy, and `tbuRegReset` zeroes it at 0x10156288. No firmware or engine routine writes the
 * fog colour. */
#define KONA_RM_TFP_FOG_CC                               0x1404
#define KONA_RM_TFP_FOG_CC_G                              0, 12  /* shift, width */
#define KONA_RM_TFP_FOG_CC_R                             12, 12  /* shift, width */

/*
 * TFP_FOG_CC1 (index 0x1414): second fog colour word, holding the blue component in its low twelve
 * bits. Inferred from the single kpm field B and its slot next to the first colour word.
 * Established: irsaudit `fog` writes it at 0x1010d150 and at fourteen later sites, `tbuEnableFog`
 * at 0x101445e4 and `test_prims` at 0x1010068c, and `tbuRegReset` restores zero at 0x101562e8.
 * arm1.u and ge.u never address this index. */
#define KONA_RM_TFP_FOG_CC1                              0x1414
#define KONA_RM_TFP_FOG_CC1_B                             0, 12  /* shift, width */

/* TFP_FOG_DATA: fog table data, four 12-bit entries per write (48-bit
 * register). ESTABLISHED: ge.u mStartFogDownload (0x71b3) loads 0x1405;
 * irsaudit fog (0x1010c994) and tbuEnableFog write it; tbusdata.Z writes it
 * 128 times in a row after TFP_FOG; restore value 0. */
#define KONA_RM_TFP_FOG_DATA                             0x1405
#define KONA_RM_TFP_FOG_DATA_N0                           0, 12  /* shift, width */
#define KONA_RM_TFP_FOG_DATA_N1                          12, 12  /* shift, width */
#define KONA_RM_TFP_FOG_DATA_N2                          24, 12  /* shift, width */
#define KONA_RM_TFP_FOG_DATA_N3                          36, 12  /* shift, width */

/*
 * TFP_FOG_OFFSET (index 0x1406): depth offset added before the fog table lookup, a 32-bit field
 * named Z in kpm. Established: irsaudit `fog` has seven call sites for it, the first at
 * 0x1010d3e0, `tbuRegReset` zeroes it at 0x101563a8, and a vector-file word shows entry 0x41 of
 * the parameter RAM replaying a write of 4 to it. Inferred from the field name that fog depth is
 * biased by this amount, and no firmware routine ever loads it. */
#define KONA_RM_TFP_FOG_OFFSET                           0x1406
#define KONA_RM_TFP_FOG_OFFSET_Z                          0, 32  /* shift, width */

/*
 * TFP_AFUNC (index 0x1407): alpha test, a twelve-bit reference, a three-bit compare function
 * (never to always) and an enable bit. Established: the start-up value is 0x7000, compare always
 * with the test off, as `tbuRegReset` restores at 0x1015640c, irsaudit `TEST_texdetail` writes its
 * saved copy at 0x10126968, and arm1.u `masked_clear` loads the address word 0x015b1407 at
 * 0x0c03b5c8 in a run of state writes. */
#define KONA_RM_TFP_AFUNC                                0x1407
#define KONA_RM_TFP_AFUNC_REF                             0, 12  /* shift, width */
#define KONA_RM_TFP_AFUNC_CMP                            12,  3  /* shift, width */
#define KONA_RM_TFP_AFUNC_CMP_NEVER                      0x0
#define KONA_RM_TFP_AFUNC_CMP_LESS                       0x1
#define KONA_RM_TFP_AFUNC_CMP_EQUAL                      0x2
#define KONA_RM_TFP_AFUNC_CMP_LEQUAL                     0x3
#define KONA_RM_TFP_AFUNC_CMP_GREATER                    0x4
#define KONA_RM_TFP_AFUNC_CMP_NOTEQUAL                   0x5
#define KONA_RM_TFP_AFUNC_CMP_GEQUAL                     0x6
#define KONA_RM_TFP_AFUNC_CMP_ALWAYS                     0x7
#define KONA_RM_TFP_AFUNC_EN                             15,  1  /* shift, width */

/*
 * TFP_AMASK (index 0x1408): alpha-to-coverage controls, one bit each for alpha to mask, fade mask
 * and alpha to one. Established in arm1.u: `e_multisample` and `d_multisample` write it under mask
 * 7 at address word 0x0c0156e8, bit 0 and bit 2 taken from two state flags, and `init_multisample`
 * clears it at 0x0c03c43c. `init_imp`, `arm_colormask` (0x0c012e08), `arm_blendcolor` (0x0c012f88)
 * and `arm_buffer_config` also rewrite it. irsaudit `test_prims` writes a saved copy. */
#define KONA_RM_TFP_AMASK                                0x1408
#define KONA_RM_TFP_AMASK_A2M_EN                          0,  1  /* shift, width */
#define KONA_RM_TFP_AMASK_FADE_MASK_EN                    1,  1  /* shift, width */
#define KONA_RM_TFP_AMASK_A2ONE_EN                        2,  1  /* shift, width */

/*
 * TFP_A2M_LUT0 (index 0x1409): alpha-to-mask table, entries 0 to 3 in eight-bit fields.
 * Established in arm1.u: `init_tf` calls `tbus_regwrite` with 0x13110100 at address 0x0c0038bc,
 * and the vector file tbusdata.Z writes the same word after `TFP_AC`. irsaudit `tbuRegReset`
 * zeroes it at 0x101564cc. Inferred with the second table word: the nine bytes 00 01 11 13 33 37
 * 77 7f ff map alpha to a coverage mask of zero to eight set bits. */
#define KONA_RM_TFP_A2M_LUT0                             0x1409
#define KONA_RM_TFP_A2M_LUT0_N0                           0,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT0_N1                           8,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT0_N2                          16,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT0_N3                          24,  8  /* shift, width */

/*
 * TFP_A2M_LUT1 (index 0x140a): alpha-to-mask table, entries 4 to 8, five eight-bit fields.
 * Established in arm1.u: `init_tf` writes it through `tbus_write_word` with 0x140a00ff and
 * 0x7f773733 at address 0x0c0038d0, which makes the 40-bit value 0xff7f773733. irsaudit
 * `tbuRegReset` zeroes it at 0x1015652c. The upper entries are the denser masks, 33, 37, 77, 7f
 * and ff, so higher alpha selects more samples. */
#define KONA_RM_TFP_A2M_LUT1                             0x140a
#define KONA_RM_TFP_A2M_LUT1_N0                           0,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N1                           8,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N2                          16,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N3                          24,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N4                          32,  8  /* shift, width */

/*
 * TFP_FADE_MASK_LUT (index 0x140b): fade mask table, four eight-bit fields chosen by sample index.
 * Established in arm1.u: `arm_samplemask` (address word at 0x0c03c3b8) writes an entry from the
 * `masks4` or `masks8` table at 0x0c03c7a4 and 0x0c03c828, inverted for one polarity,
 * `init_multisample` writes all ones at 0x0c03c424, and `multisample_pop` writes the saved mask at
 * 0x0c03c6b8. irsaudit `tbuRegReset` zeroes it at 0x1015658c. */
#define KONA_RM_TFP_FADE_MASK_LUT                        0x140b
#define KONA_RM_TFP_FADE_MASK_LUT_N0                      0,  8  /* shift, width */
#define KONA_RM_TFP_FADE_MASK_LUT_N1                      8,  8  /* shift, width */
#define KONA_RM_TFP_FADE_MASK_LUT_N2                     16,  8  /* shift, width */
#define KONA_RM_TFP_FADE_MASK_LUT_N3                     24,  8  /* shift, width */

/*
 * TFP_AE (index 0x150c): read-back mode for the TFP_AE_RANGE rectangle, vertical and horizontal
 * flags, a mode and a data format. Established: irsaudit `TEST_readback` writes 8, pixel-block
 * mode with 16-bit data, at 0x10087168 and `TEST_framebuf` writes 24, the same mode with 32-bit
 * data, at 0x1006abf4; `TEST_framebuf1` writes 40 (48-bit data) at 0x1010a514. arm1.u `imp_clear`
 * clears it at 0x0c03b040. Inferred: the register chooses how pixels in the rectangle return to
 * the host, the write following the rectangle write. */
#define KONA_RM_TFP_AE                                   0x150c
#define KONA_RM_TFP_AE_V                                  0,  1  /* shift, width */
#define KONA_RM_TFP_AE_H                                  1,  1  /* shift, width */
#define KONA_RM_TFP_AE_MODE                               2,  2  /* shift, width */
#define KONA_RM_TFP_AE_MODE_SINGLE                       0x0
#define KONA_RM_TFP_AE_MODE_BRDCAST                      0x1
#define KONA_RM_TFP_AE_MODE_PXL_BLK                      0x2
#define KONA_RM_TFP_AE_MODE_PXL_NOT_BLK                  0x3
#define KONA_RM_TFP_AE_FMT                                4,  2  /* shift, width */
#define KONA_RM_TFP_AE_FMT_B16                           0x0
#define KONA_RM_TFP_AE_FMT_B32                           0x1
#define KONA_RM_TFP_AE_FMT_B48                           0x2

/*
 * TFP_AE_RANGE (index 0x140d): rectangle for pixel read-back, y end, x end, y start and x start as
 * twelve-bit fields. Established: arm1.u `generate_rect` (0x0c038040) and `imp_clear` (0x0c03b030)
 * build the bus word 0x140d0000 plus the four coordinates and send it with `tbus_write_word`, each
 * followed by a zero write to the mode register. irsaudit `TEST_framebuf` (0x1006abe4),
 * `TEST_rbstress` (0x10085024, using 0xf1ff) and `FrameBufferInit` (0x100cb060) write it just
 * before that register. */
#define KONA_RM_TFP_AE_RANGE                             0x140d
#define KONA_RM_TFP_AE_RANGE_YEND                         0, 12  /* shift, width */
#define KONA_RM_TFP_AE_RANGE_XEND                        12, 12  /* shift, width */
#define KONA_RM_TFP_AE_RANGE_YSTART                      24, 12  /* shift, width */
#define KONA_RM_TFP_AE_RANGE_XSTART                      36, 12  /* shift, width */

/*
 * TFP_AC (index 0x140e): a twelve-bit base and a five-bit template, named DGBASE and DGTPL in kpm,
 * whose purpose the sources do not give. Established in arm1.u: `init_tf` writes 0x4000, template
 * 4, at address word 0x0160140e (loaded at 0x0c0038a0), and `init_simulator_hacks` rewrites the
 * template field under mask 0x1f000 at 0x0c003f4c. irsaudit `init_tf` repeats 16384 at 0x100c081c,
 * and `tbuRegReset` restores 0x8000, as the shadow start-up value. */
#define KONA_RM_TFP_AC                                   0x140e
#define KONA_RM_TFP_AC_DGBASE                             0, 12  /* shift, width */
#define KONA_RM_TFP_AC_DGTPL                             12,  5  /* shift, width */

/*
 * TFP_COLOR_FMT (index 0x140f): one-bit flag marking luminance-alpha colour format in the filter
 * chips. Established in arm1.u: `arm_buffer_config` writes 1 when its colour format code equals 2,
 * else 0, at address word 0x0167140f (loaded at 0x0c0135a8), `PixEndRGBStream` writes 1 at
 * 0x0c0269fc and `SetupGE_StencilStream` writes 0 at 0x0c02d484. irsaudit tests clear it to 0 in
 * most set-ups and set 1 in `TEST_video2`. */
#define KONA_RM_TFP_COLOR_FMT                            0x140f
#define KONA_RM_TFP_COLOR_FMT_LA                          0,  1  /* shift, width */

/*
 * TFP_PIX_FMT (index 0x1410): one-bit pixel format flag in the filter chips, luminance-alpha by
 * kpm's field name. Established in arm1.u: `init_tf` clears it at address word 0x01661410 (loaded
 * at 0x0c003888) and `arm_buffer_config` clears it again at 0x0c013590, both with value 0.
 * irsaudit sets it with the colour format register, 0 in most tests and 1 in `TEST_video2`
 * (0x1009d71c), `TEST_fbread` and `TEST_video3_read`. */
#define KONA_RM_TFP_PIX_FMT                              0x1410
#define KONA_RM_TFP_PIX_FMT_LA                            0,  1  /* shift, width */

/*
 * TFP_NOP (index 0x1411): the filter's no-op index, one of the three that the geometry engine's
 * raster flush writes. Established in ge.u: `mgesi_FlushRM` (0x380b) loads 0x1411 at 0x3824 as its
 * second no-op word, between `IMP_NOP` (0x1c3a at 0x3810) and `PG_NOP` (0x87f at 0x3837), sends it
 * to bus address 0x1f7 (0x3825), and counts down a wait of 0xb0 (loaded at 0x3823, loop
 * 0x3827-0x3829), against 8 after the image processor word and 0x56 after the pixel generator
 * word. No arm1.u select, irsaudit constant or vector-file word carries it, and `tbuRegReset` has
 * no entry. Inferred: the flush pushes a word through the filter chip and waits long enough for
 * the words ahead of it to leave, so the filter is drained between the image processors and the
 * pixel generator. */
#define KONA_RM_TFP_NOP                                  0x1411

/*
 * TFP_FAKE (index 0x1412): the twelve-bit test identifier (TEST_ID) of a simulation-only block on
 * the filter's fog half, in kpm's table. Established: irsaudit `tbuRegReset` writes zero to it at
 * address 0x10156770 (the call to `tbRegWrite` with index 5138 at 0x1015676c-0x10156770), and no
 * vector-file word, arm1.u routine or ge.u select addresses it; the 0x1411 and 0x1412 in ge.u at
 * 0x6d4c-0x6d50 and 0x76d6 are address immediates of other loads. Unknown: no shipped software or
 * published source depends on what a non-zero identifier changes in the chip, because zero is the
 * only value ever sent. Routes tried: irsaudit,
 * arm1.u, ge.u, the vector files, kpm and libGLcore, the published papers and patents (no mention
 * of a test identifier). */
#define KONA_RM_TFP_FAKE                                 0x1412
#define KONA_RM_TFP_FAKE_TEST_ID                          0, 12  /* shift, width */

/*
 * TFT_EXTRAP (index 0x1800): first of sixteen consecutive entries, four ten-bit values each, that
 * hold the sharpen texture function. Established in arm1.u: `sendTexTable` (0x0c02539c) writes
 * sixteen word pairs from index 0x1800 with `tbus_write_word` (call at 0x0c02541c, loop bound 0x10
 * at 0x0c02542c) for every table kind other than 0 and 1, and from 0x1810 for kind 1; irsaudit
 * `tbuRegReset` zeroes the first entry at 0x10156940. The host call `__glkonim_SharpenTexFuncSGIS`
 * (libGLcore) negates the samples before packing, which matches the published sharpen-texture
 * patent's weight K that is zero or negative (US 5,438,654). Inferred: the table is the sharpen
 * curve that the filter indexes by level of detail and scales the difference of the two finest
 * levels with. */
#define KONA_RM_TFT_EXTRAP                               0x1800
#define KONA_RM_TFT_EXTRAP_N0                             0, 10  /* shift, width */
#define KONA_RM_TFT_EXTRAP_N1                            10, 10  /* shift, width */
#define KONA_RM_TFT_EXTRAP_N2                            20, 10  /* shift, width */
#define KONA_RM_TFT_EXTRAP_N3                            30, 10  /* shift, width */

/*
 * TFT_DETAILTEX (index 0x1810): first of sixteen consecutive entries, four ten-bit values each,
 * that hold the detail texture function. Established in arm1.u: `sendTexTable` (0x0c02539c) writes
 * sixteen word pairs from index 0x1810 for table kind 1 with `tbus_write_word` (0x0c02541c),
 * irsaudit `tbuRegReset` zeroes the first entry at 0x101569a0, and the vector files send the index
 * 31 times. The host call `__glkonim_DetailTexFuncSGIS` (libGLcore) doubles the samples before
 * packing, which fits the published detail-texture patent (US 5,471,572) and the
 * SGIS_detail_texture definition. Inferred: the entries are the detail blend curve, indexed by
 * level of detail, that scales the signed detail texel added to the base level. */
#define KONA_RM_TFT_DETAILTEX                            0x1810
#define KONA_RM_TFT_DETAILTEX_N0                          0, 10  /* shift, width */
#define KONA_RM_TFT_DETAILTEX_N1                         10, 10  /* shift, width */
#define KONA_RM_TFT_DETAILTEX_N2                         20, 10  /* shift, width */
#define KONA_RM_TFT_DETAILTEX_N3                         30, 10  /* shift, width */

/*
 * TFT_BICUBIC (index 0x1820): first of 33 consecutive indexes, 0x1820 to 0x1840, that take the
 * bicubic filter table, four eight-bit weights per word. Established: arm1.u `sendTexTable`
 * (0x0c02539c) writes 33 words from this index with `tbus_write_word` at address 0x0c0253dc, and
 * libGLcore `bindTexTable` (kon_texture_api.s) sends 33 words packed four to a word by `getS0p7`.
 * irsaudit `tbuRegReset` zeroes the first entry at 0x10156a00. */
#define KONA_RM_TFT_BICUBIC                              0x1820
#define KONA_RM_TFT_BICUBIC_K0K4                          0,  8  /* shift, width */
#define KONA_RM_TFT_BICUBIC_K1K5                          8,  8  /* shift, width */
#define KONA_RM_TFT_BICUBIC_K2K6                         16,  8  /* shift, width */
#define KONA_RM_TFT_BICUBIC_K3K7                         24,  8  /* shift, width */

/*
 * TFT_SBIAS_EN (index 0x1850): four enable bits for the filter's per-component texel scale and
 * bias, A at bit 0, B at 1, G at 2 and R at 3 in kpm's table. Established: ge.u
 * `mgebi_TextureScaleBias` (0x424e) loads select 0x01541850 at 0x4255 together with the selects
 * 0x01551851 and 0x01561852 of the scale and bias registers (0x425b, 0x425d) and the masks
 * 0x1000000 and 0xffffffff, from four command words; `init_ged` in arm1.u is its caller. irsaudit
 * `my_glKonTexParameter` writes it with `TFT_SCALE` and `TFT_BIAS`, `tbuRegReset` restores 0, and
 * all 131 vector-file words for the index carry 0. Inferred: each bit applies the scale and bias
 * of one colour component to the filtered texel, as the registers written with it hold per-
 * component fields. */
#define KONA_RM_TFT_SBIAS_EN                             0x1850
#define KONA_RM_TFT_SBIAS_EN_A                            0,  1  /* shift, width */
#define KONA_RM_TFT_SBIAS_EN_B                            1,  1  /* shift, width */
#define KONA_RM_TFT_SBIAS_EN_G                            2,  1  /* shift, width */
#define KONA_RM_TFT_SBIAS_EN_R                            3,  1  /* shift, width */

/*
 * TFT_SCALE (index 0x1851): per-component scale applied to a filtered texel, four eight-bit fields
 * A, B, G and R. Established: irsaudit `my_glKonTexParameter` loads it from the texture object at
 * 0x1012aa5c, `tbuRegReset` zeroes it at 0x10156ac0, and the BEF shadow slot 69 starts at zero.
 * Inferred from the field names and from the texture parameter call that writes it that it
 * implements the colour scale of the texture. No arm1.u address word carries it. */
#define KONA_RM_TFT_SCALE                                0x1851
#define KONA_RM_TFT_SCALE_A                               0,  8  /* shift, width */
#define KONA_RM_TFT_SCALE_B                               8,  8  /* shift, width */
#define KONA_RM_TFT_SCALE_G                              16,  8  /* shift, width */
#define KONA_RM_TFT_SCALE_R                              24,  8  /* shift, width */

/*
 * TFT_BIAS (index 0x1852): per-component bias added to a filtered texel, four eight-bit fields A,
 * B, G and R. Established: irsaudit `my_glKonTexParameter` loads it from the texture object at
 * address 0x1012a578, right after the enable register at 0x1012a568, and `tbuRegReset` zeroes it
 * at 0x10156b20. Shadow slot 70 starts at zero. Inferred from the field names that this is the
 * additive partner of the scale register. */
#define KONA_RM_TFT_BIAS                                 0x1852
#define KONA_RM_TFT_BIAS_A                                0,  8  /* shift, width */
#define KONA_RM_TFT_BIAS_B                                8,  8  /* shift, width */
#define KONA_RM_TFT_BIAS_G                               16,  8  /* shift, width */
#define KONA_RM_TFT_BIAS_R                               24,  8  /* shift, width */

/*
 * TFT_TLUT (index 0x1853): texture colour lookup table control, a ten-bit address, a component
 * count and an enable bit. Established in arm1.u: `d_texcoltab` (0x0c03f314) and
 * `PixValidateTexColorTable` (0x0c03e980) write the enable under mask 0x1000, and `arm_colortable`
 * (0x0c03e260) clears the word. irsaudit `tbuLoadTLut` (0x101547d0) and `TEST_txlut` (0x101282ec)
 * write it before loading entries, and `tbuRegReset` zeroes it at 0x10156b80. */
#define KONA_RM_TFT_TLUT                                 0x1853
#define KONA_RM_TFT_TLUT_ADDR                             0, 10  /* shift, width */
#define KONA_RM_TFT_TLUT_NC                              10,  2  /* shift, width */
#define KONA_RM_TFT_TLUT_NC_ONE                          0x0
#define KONA_RM_TFT_TLUT_NC_TWO                          0x1
#define KONA_RM_TFT_TLUT_NC_THREE                        0x2
#define KONA_RM_TFT_TLUT_EN                              12,  1  /* shift, width */

/* TFT_TLUT_DATA: texture lookup table data, A, B, G, R as 12 bits each.
 * ESTABLISHED: ge.u mgesi_TLutDownload (0x3f84) loads 0x1854; irsaudit
 * tbuLoadTLut (0x10154768) and TEST_txlut write it after TFT_TLUT; restore
 * value 0. */
#define KONA_RM_TFT_TLUT_DATA                            0x1854
#define KONA_RM_TFT_TLUT_DATA_A                           0, 12  /* shift, width */
#define KONA_RM_TFT_TLUT_DATA_B                          12, 12  /* shift, width */
#define KONA_RM_TFT_TLUT_DATA_G                          24, 12  /* shift, width */
#define KONA_RM_TFT_TLUT_DATA_R                          36, 12  /* shift, width */

/*
 * TFT_TEXRB (index 0x1855): filter-table half of the texture read-back control, no fields.
 * Established: irsaudit `TEST_texread` writes 1 at 0x100c6840, next to the format write of the
 * other half, arm1.u `StartTexRead` writes 1 at 0x0c034698, and `tbuRegReset` does not restore it.
 * Inferred: it takes the read-back request on the lookup side of the filter, as the TFP index
 * 0x153f does on the fog side. */
#define KONA_RM_TFT_TEXRB                                0x1855

/*
 * TFT_NOP (index 0x1856): a no-op slot of the filter's lookup half. Unknown: no shipped software
 * or published source depends on what a write to this slot does, because nothing sends one; only
 * kpm's raster table names it. Routes tried: irsaudit (no constant of this index reaches
 * `tbRegWrite`), arm1.u (no address word 0x01xx1856), ge.u (no listing loads 0x1856 as a select or
 * bus high word), the vector files (no mode-1 word), libGLcore (no use). */
#define KONA_RM_TFT_NOP                                  0x1856

/*
 * TFT_FAKE (index 0x1857): the twelve-bit test identifier (TEST_ID) of the simulation-only block
 * on the filter's lookup half, in kpm's table. Established: irsaudit `tbuRegReset` writes zero to
 * it at address 0x10156c40 (index 6231 passed to `tbRegWrite` at 0x10156c3c-0x10156c40), and no
 * vector-file word, arm1.u routine or ge.u select addresses it. Unknown: no shipped software or
 * published source depends on what a non-zero identifier changes here, because the restore
 * routine's zero is the only value sent. Routes tried: irsaudit, arm1.u, ge.u, the vector files, kpm and libGLcore, and the published papers
 * and patents (no mention). */
#define KONA_RM_TFT_FAKE                                 0x1857
#define KONA_RM_TFT_FAKE_TEST_ID                          0, 12  /* shift, width */

/*
 * TFT_EOR (index 0x1858): a slot of the filter's lookup half that kpm's raster table names and
 * nothing else touches. Unknown: no shipped software or published source depends on what a write
 * to this slot marks, because nothing sends one. Routes tried: irsaudit (no constant of this index
 * reaches `tbRegWrite`), arm1.u (no address word 0x01xx1858), ge.u (no listing loads it), the
 * vector files (no mode-1 word), libGLcore (no use). */
#define KONA_RM_TFT_EOR                                  0x1858

/*
 * IMP_CONFIG (index 0x1c00): pixel memory configuration, a pixel size code, a colour format code
 * and write-mask bits for red, green, blue, alpha and index. Established in arm1.u: `init_imp`
 * stores 0x3c6, large pixels with 12-bit RGBA and all four write-mask bits set (address word
 * 0x01341c00), `arm_colormask` rewrites the mask bits under mask 0x3c0 (mask store at 0x0c012cfc),
 * and `arm_buffer_config` writes the colour format code shifted left 2 under mask 0x7fc, building
 * the address word at 0x0c0135cc. irsaudit `tbuRegReset` restores 0x3c2. */
#define KONA_RM_IMP_CONFIG                               0x1c00
#define KONA_RM_IMP_CONFIG_PIXEL_SIZE                     0,  2  /* shift, width */
#define KONA_RM_IMP_CONFIG_PIXEL_SIZE_SMALL              0x0
#define KONA_RM_IMP_CONFIG_PIXEL_SIZE_MEDIUM             0x1
#define KONA_RM_IMP_CONFIG_PIXEL_SIZE_LARGE              0x2
#define KONA_RM_IMP_CONFIG_PIXEL_SIZE_XLARGE             0x3
#define KONA_RM_IMP_CONFIG_PIXEL_SIZE_XSMALL             0x3
#define KONA_RM_IMP_CONFIG_COLOR                          2,  4  /* shift, width */
#define KONA_RM_IMP_CONFIG_COLOR_RGB10                   0x0
#define KONA_RM_IMP_CONFIG_COLOR_RGBA12                  0x1
#define KONA_RM_IMP_CONFIG_COLOR_LA16                    0x2
#define KONA_RM_IMP_CONFIG_COLOR_CI16                    0x3
#define KONA_RM_IMP_CONFIG_COLOR_CI2                     0x8
#define KONA_RM_IMP_CONFIG_COLOR_RGB5A1                  0x9
#define KONA_RM_IMP_CONFIG_COLOR_CI16_A                  0xa
#define KONA_RM_IMP_CONFIG_COLOR_CI8_A                   0xb
#define KONA_RM_IMP_CONFIG_COLOR_CI8_B                   0xc
#define KONA_RM_IMP_CONFIG_WMASK_RED                      6,  1  /* shift, width */
#define KONA_RM_IMP_CONFIG_WMASK_GREEN                    7,  1  /* shift, width */
#define KONA_RM_IMP_CONFIG_WMASK_BLUE                     8,  1  /* shift, width */
#define KONA_RM_IMP_CONFIG_WMASK_ALPHA                    9,  1  /* shift, width */
#define KONA_RM_IMP_CONFIG_WMASK_BIT                     10,  1  /* shift, width */
#define KONA_RM_IMP_CONFIG_READ_FORMAT                   11,  3  /* shift, width */
#define KONA_RM_IMP_CONFIG_READ_FORMAT_RGB10             0x0
#define KONA_RM_IMP_CONFIG_READ_FORMAT_RGBA12_EVEN       0x5
#define KONA_RM_IMP_CONFIG_READ_FORMAT_RGBA12_ODD        0x7
#define KONA_RM_IMP_CONFIG_READ_FORMAT_LA16              0x2
#define KONA_RM_IMP_CONFIG_READ_FORMAT_CI16              0x3
#define KONA_RM_IMP_CONFIG_READ_FORMAT_S1_Z15            0x0
#define KONA_RM_IMP_CONFIG_READ_FORMAT_S8_Z16            0x1
#define KONA_RM_IMP_CONFIG_READ_FORMAT_S1_Z31            0x2
#define KONA_RM_IMP_CONFIG_READ_FORMAT_S8_Z32            0x3
#define KONA_RM_IMP_CONFIG_DOUBLE_CI8                    14,  1  /* shift, width */

/*
 * IMP_OP (index 0x1c02): pixel memory operation word, a draw buffer number, a packet kind (clear,
 * read, accumulate, copy), clear flags for tag, colour, depth, stencil and accumulation, and a
 * read-back format. Established in arm1.u: `init_imp` stores 1 at address word 0x01351c02 (loaded
 * at 0x0c003b08), `resolve_banks` (0x0c013a1c) rewrites the buffer field and bits 18 and up, and
 * `e_calligraphic_fragment` (0x0c015a7c) sets bit 24 under mask 0x1000000. irsaudit writes 1 in
 * `TEST_rbstress`. */
#define KONA_RM_IMP_OP                                   0x1c02
#define KONA_RM_IMP_OP_DRAW_BUFFER                        0,  4  /* shift, width */
#define KONA_RM_IMP_OP_ADDR_PKT                           4,  2  /* shift, width */
#define KONA_RM_IMP_OP_ADDR_PKT_CLEAR                    0x0
#define KONA_RM_IMP_OP_ADDR_PKT_READ                     0x1
#define KONA_RM_IMP_OP_ADDR_PKT_ACCUM                    0x2
#define KONA_RM_IMP_OP_ADDR_PKT_COPY                     0x3
#define KONA_RM_IMP_OP_CLEAR_PKT_REPEAT                   6,  3  /* shift, width */
#define KONA_RM_IMP_OP_CLEAR_TAG                          9,  1  /* shift, width */
#define KONA_RM_IMP_OP_CLEAR_COLOR                       10,  1  /* shift, width */
#define KONA_RM_IMP_OP_CLEAR_DEPTH                       11,  1  /* shift, width */
#define KONA_RM_IMP_OP_CLEAR_STENCIL                     12,  1  /* shift, width */
#define KONA_RM_IMP_OP_CLEAR_ACCUM                       13,  1  /* shift, width */
#define KONA_RM_IMP_OP_READBACK                          14,  4  /* shift, width */
#define KONA_RM_IMP_OP_READBACK_CI16                     0x0
#define KONA_RM_IMP_OP_READBACK_RED16                    0x1
#define KONA_RM_IMP_OP_READBACK_GREEN16                  0x2
#define KONA_RM_IMP_OP_READBACK_BLUE16                   0x3
#define KONA_RM_IMP_OP_READBACK_ALPHA16                  0x4
#define KONA_RM_IMP_OP_READBACK_STENCIL16                0x5
#define KONA_RM_IMP_OP_READBACK_DEPTH16                  0x6
#define KONA_RM_IMP_OP_READBACK_RGBA8                    0x8
#define KONA_RM_IMP_OP_READBACK_RGB10A2                  0x9
#define KONA_RM_IMP_OP_READBACK_LA16                     0xa
#define KONA_RM_IMP_OP_READBACK_DEPTH32                  0xb
#define KONA_RM_IMP_OP_READBACK_RGBA12                   0xf
#define KONA_RM_IMP_OP_RBASE                             18,  6  /* shift, width */
#define KONA_RM_IMP_OP_CALLIG_ENABLE                     24,  1  /* shift, width */
#define KONA_RM_IMP_OP_DOUBLE_DEPTH                      25,  1  /* shift, width */
#define KONA_RM_IMP_OP_DEPTH_B                           26,  1  /* shift, width */
#define KONA_RM_IMP_OP_ACTIVATE_ONLY_ENABLE              27,  1  /* shift, width */
#define KONA_RM_IMP_OP_IU_FIFO                           28,  1  /* shift, width */
#define KONA_RM_IMP_OP_WAFER_PROBE_EN                    29,  1  /* shift, width */
#define KONA_RM_IMP_OP_WAFER_PROBE_ALLOW_FB              30,  1  /* shift, width */
#define KONA_RM_IMP_OP_DQM_MASK                          31,  1  /* shift, width */

/*
 * IMP_MS (index 0x1c03): multisample control, an enable bit, a sample count of 4 or 8, a mask
 * operation, an eight-bit mask and an optimisation level. Established in arm1.u: `init_imp` stores
 * 0x7f8, enable off with the full mask, at address word 0x01361c03, `e_blend` (address word at
 * 0x0c01596c) writes the optimisation field as 2, disable, under mask 0x3000, `d_blend`
 * (0x0c0159f0) writes 3, enable, and `arm_colormask` writes either value at 0x0c012d6c. irsaudit
 * restores 0x17f8 and `TEST_rbstress` writes 2040. */
#define KONA_RM_IMP_MS                                   0x1c03
#define KONA_RM_IMP_MS_ENABLE                             0,  1  /* shift, width */
#define KONA_RM_IMP_MS_SAMPLES                            1,  1  /* shift, width */
#define KONA_RM_IMP_MS_SAMPLES_4                         0x0
#define KONA_RM_IMP_MS_SAMPLES_8                         0x1
#define KONA_RM_IMP_MS_MASK_OP                            2,  1  /* shift, width */
#define KONA_RM_IMP_MS_MASK_OP_AND                       0x0
#define KONA_RM_IMP_MS_MASK_OP_REPLACE                   0x1
#define KONA_RM_IMP_MS_MASK_MASK                          3,  8  /* shift, width */
#define KONA_RM_IMP_MS_MAINTAIN_TWO                      11,  1  /* shift, width */
#define KONA_RM_IMP_MS_OPTIMIZE                          12,  2  /* shift, width */
#define KONA_RM_IMP_MS_OPTIMIZE_NONE                     0x0
#define KONA_RM_IMP_MS_OPTIMIZE_DISABLE                  0x2
#define KONA_RM_IMP_MS_OPTIMIZE_ENABLE                   0x3

/*
 * IMP_CLIP (index 0x1c06): pixel clip test, an enable bit with a twelve-bit reference and a
 * twelve-bit mask. Established in arm1.u: `init_imp` stores 0 at address word 0x01371c06 (loaded
 * at 0x0c003b3c), `x_initregs` clears it at 0x0c03d1dc, and `arm_validate_clip` (0x0c0184a8)
 * builds a value from the clip window bytes at state offsets 0x878 and 0x879. irsaudit
 * `TEST_rbstress` writes zero at 0x10084e68 and `ReqVideo` writes a saved copy at 0x10099394. */
#define KONA_RM_IMP_CLIP                                 0x1c06
#define KONA_RM_IMP_CLIP_ENABLE                           0,  1  /* shift, width */
#define KONA_RM_IMP_CLIP_REF                              1, 12  /* shift, width */
#define KONA_RM_IMP_CLIP_MASK                            13, 12  /* shift, width */

/*
 * IMP_SZ0 (index 0x1c07): stencil state, an enable bit, a one-bit or eight-bit size, a compare
 * function, an eight-bit reference, an eight-bit test mask and an eight-bit write mask.
 * Established in arm1.u: `init_imp` stores 6, eight-bit stencil, disabled, with a less-than
 * compare (address word 0x01381c07), `arm_stencilmask` (0x0c014930) and `arm_stencilfunc`
 * (0x0c01499c) update it, and `arm_buffer_config` writes it at 0x0c01341c. irsaudit
 * `TEST_rbstress` writes zero at 0x10084e78. */
#define KONA_RM_IMP_SZ0                                  0x1c07
#define KONA_RM_IMP_SZ0_STENCIL_ENABLE                    0,  1  /* shift, width */
#define KONA_RM_IMP_SZ0_STENCIL_SIZE                      1,  1  /* shift, width */
#define KONA_RM_IMP_SZ0_STENCIL_SIZE_1                   0x0
#define KONA_RM_IMP_SZ0_STENCIL_SIZE_8                   0x1
#define KONA_RM_IMP_SZ0_STENCIL_FUNC                      2,  3  /* shift, width */
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_NEVER               0x0
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_LESS                0x1
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_EQUAL               0x2
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_LEQUAL              0x3
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_GREATER             0x4
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_NOTEQUAL            0x5
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_GEQUAL              0x6
#define KONA_RM_IMP_SZ0_STENCIL_FUNC_ALWAYS              0x7
#define KONA_RM_IMP_SZ0_STENCIL_REF                       5,  8  /* shift, width */
#define KONA_RM_IMP_SZ0_STENCIL_MASK                     13,  8  /* shift, width */
#define KONA_RM_IMP_SZ0_STENCIL_WMASK                    21,  8  /* shift, width */

/*
 * IMP_SZ1 (index 0x1c08): stencil operations and depth state, three three-bit stencil outcomes, a
 * depth enable, a depth size of 16 to 32 bits, a compress bit, a compare function and a depth
 * write mask. Established in arm1.u: `init_imp` stores 0x12c00, 32-bit depth, test off, with a
 * less-than compare and writes enabled (address word 0x01391c08), `arm_depthfunc` (0x0c0147b8) and
 * `arm_depthmask` (0x0c0147ec) update it, and `arm_buffer_config` writes it at 0x0c0133c0.
 * irsaudit writes it in `TEST_texmem` (0x1008ee70). */
#define KONA_RM_IMP_SZ1                                  0x1c08
#define KONA_RM_IMP_SZ1_STENCIL_SFAIL                     0,  3  /* shift, width */
#define KONA_RM_IMP_SZ1_STENCIL_ZFAIL                     3,  3  /* shift, width */
#define KONA_RM_IMP_SZ1_STENCIL_ZPASS                     6,  3  /* shift, width */
#define KONA_RM_IMP_SZ1_DEPTH_ENABLE                      9,  1  /* shift, width */
#define KONA_RM_IMP_SZ1_DEPTH_SIZE                       10,  2  /* shift, width */
#define KONA_RM_IMP_SZ1_DEPTH_SIZE_16                    0x0
#define KONA_RM_IMP_SZ1_DEPTH_SIZE_20                    0x1
#define KONA_RM_IMP_SZ1_DEPTH_SIZE_24                    0x2
#define KONA_RM_IMP_SZ1_DEPTH_SIZE_32                    0x3
#define KONA_RM_IMP_SZ1_DEPTH_COMPRESS                   12,  1  /* shift, width */
#define KONA_RM_IMP_SZ1_DEPTH_FUNC                       13,  3  /* shift, width */
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_NEVER                 0x0
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_LESS                  0x1
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_EQUAL                 0x2
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_LEQUAL                0x3
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_GREATER               0x4
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_NOTEQUAL              0x5
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_GEQUAL                0x6
#define KONA_RM_IMP_SZ1_DEPTH_FUNC_ALWAYS                0x7
#define KONA_RM_IMP_SZ1_DEPTH_WMASK                      16,  1  /* shift, width */

/*
 * IMP_DEPTH_CLEAR (index 0x1c09): the depth and stencil value used by a clear, with no fields in
 * kpm. Established in arm1.u: `init_imp` stores 0 at address word 0x013a1c09 (loaded at
 * 0x0c003b84), `arm_cleardepth` (address word at 0x0c014788) writes a value assembled from the
 * clear argument, `arm_clearstencil` (0x0c0148f0) shifts the stencil value into its field under a
 * one-field mask, and `late_state_init` (0x0c0141ec) writes a full word. irsaudit writes a saved
 * copy in `TEST_framebuf` (0x1006a734) and `ReqVideo` (0x100994e4). */
#define KONA_RM_IMP_DEPTH_CLEAR                          0x1c09

/*
 * IMP_TAG_CLEAR (index 0x1c0a): a whole-word image processor register that kpm lists without
 * fields; its name suggests the value that clears the pixel tag memory. Established: the only
 * writer is irsaudit `tbuRegReset` (0x10154cb4), which writes zero at address 0x10156f4c (index
 * 7178 passed to `tbRegWrite` at 0x10156f48-0x10156f4c); arm1.u, ge.u and the vector files never
 * address it. Unknown: no shipped software or published source depends on what tag value a non-
 * zero write would load, because no program sends one. Routes tried: irsaudit, arm1.u, ge.u, the vector files, kpm, libGLcore, and the published
 * papers and patents (no tag memory register). */
#define KONA_RM_IMP_TAG_CLEAR                            0x1c0a

/*
 * IMP_ADDR (index 0x1c0b): pixel memory bank bases, six-bit base fields for colour, mask, stencil,
 * depth and accumulation and a mask tag select. Established in arm1.u: `init_imp` stores
 * 0x0c20a281 at address word 0x013b1c0b (loaded at 0x0c003b98), `arm_drawbuffer` (0x0c013bd0) and
 * `color_pop` (0x0c014614) write the colour base field under mask 0x3f, and `arm_buffer_config`
 * writes it at 0x0c013470. irsaudit `TEST_rbstress` ORs in 0x2481 and `tbuRegReset` restores
 * 0x32212301. */
#define KONA_RM_IMP_ADDR                                 0x1c0b
#define KONA_RM_IMP_ADDR_CBASE                            0,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_MBASE                            6,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_MTAG                            12,  1  /* shift, width */
#define KONA_RM_IMP_ADDR_MTAG_A                          0x0
#define KONA_RM_IMP_ADDR_MTAG_B                          0x1
#define KONA_RM_IMP_ADDR_SBASE                           13,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_ZBASE                           19,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_ABASE                           25,  6  /* shift, width */

/*
 * IMP_BL (index 0x1c0d): blend and logic op word, a logic op enable and four-bit op, a blend
 * enable, three-bit operations and four-bit factors for colour and alpha, and precision and
 * speedup bits. Established in arm1.u: `init_imp` stores 0x11012 (address word 0x013c1c0d, loaded
 * at 0x0c003bb4), `arm_blendequation` (0x0c013064) and `color_init` (0x0c01410c) rewrite it, and
 * `arm_colormask` writes it at 0x0c012d84. irsaudit ORs in 0x1012 in several tests and
 * `tbuRegReset` restores 0x11012. */
#define KONA_RM_IMP_BL                                   0x1c0d
#define KONA_RM_IMP_BL_LOGIC_OP_ENABLE                    0,  1  /* shift, width */
#define KONA_RM_IMP_BL_LOGIC_OP                           1,  4  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_OP_ENABLE                    5,  1  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_OP_RGB                       6,  3  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_OP_A                         9,  3  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_SFACTOR_RGB                 12,  4  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_SFACTOR_A                   16,  4  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_DFACTOR_RGB                 20,  4  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_DFACTOR_A                   24,  4  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_PRECISION                   28,  1  /* shift, width */
#define KONA_RM_IMP_BL_BLEND_SPEEDUP                     29,  1  /* shift, width */

/*
 * IMP_ACCUM (index 0x1c0e): accumulation buffer operation, a 13-bit value, a three-bit operation
 * (accumulate, load, return, multiply, add) and precision, speedup and return-times-four bits.
 * Established: irsaudit `init_accum` (0x100bfdc0) builds the word from its arguments and the
 * diagnostic writes zero before each framebuffer test, `tbuRegReset` zeroes it at 0x1015707c, and
 * no arm1.u routine writes it with a literal address word. The vector files carry no mode-1 word
 * for it. */
#define KONA_RM_IMP_ACCUM                                0x1c0e
#define KONA_RM_IMP_ACCUM_VALUE                           0, 13  /* shift, width */
#define KONA_RM_IMP_ACCUM_OP                             13,  3  /* shift, width */
#define KONA_RM_IMP_ACCUM_OP_ACCUM                       0x0
#define KONA_RM_IMP_ACCUM_OP_LOAD                        0x1
#define KONA_RM_IMP_ACCUM_OP_RETURN                      0x2
#define KONA_RM_IMP_ACCUM_OP_MULT                        0x3
#define KONA_RM_IMP_ACCUM_OP_ADD                         0x4
#define KONA_RM_IMP_ACCUM_RETURN_4X                      16,  1  /* shift, width */
#define KONA_RM_IMP_ACCUM_PRECISION                      17,  1  /* shift, width */
#define KONA_RM_IMP_ACCUM_SPEEDUP                        18,  1  /* shift, width */
#define KONA_RM_IMP_ACCUM_VALUE_LSB                      19,  3  /* shift, width */

/*
 * IMP_FLAG (index 0x1c0f): pixel memory completion flag, no fields. Established: arm1.u
 * `arm_end_of_simulation` writes 1 at 0x0c015398 and again at 0x0c0153ac after its end-of-run
 * report, and irsaudit `waitDrawLoadDone` (0x1002c1d0) and `tbuWaitDone` (0x1015a8cc) write 1 at
 * 0x1002c230 and 0x1015ac38 while waiting for a draw to finish. Inferred: the write asks the pixel
 * chips to raise a done indication, and the vector files carry five such words. */
#define KONA_RM_IMP_FLAG                                 0x1c0f

/*
 * IMP_USER_COLOR (index 0x1c10): user-defined colour of the pixel chips, red and green as
 * twelve-bit fields in this word and blue and alpha in the next. Established: irsaudit
 * `init_user_color` (0x100c0034) ORs the components together and writes it, `crc_imptest1` writes
 * a saved copy at 0x100d9e94, `FrameBufferInit` clears it at 0x100ca878, and `tbuRegReset` zeroes
 * it at 0x101570dc. No arm1.u or ge.u routine writes it, and the vector files carry no mode-1
 * word. */
#define KONA_RM_IMP_USER_COLOR                           0x1c10
#define KONA_RM_IMP_USER_COLOR_RED                        0, 12  /* shift, width */
#define KONA_RM_IMP_USER_COLOR_GREEN                     12, 12  /* shift, width */
#define KONA_RM_IMP_USER_COLOR_BLUE                       0, 12  /* shift, width */
#define KONA_RM_IMP_USER_COLOR_ALPHA                     12, 12  /* shift, width */

/*
 * IMP_CLEAR_COLOR (index 0x1c12): colour used by a clear, red and green as twelve-bit fields with
 * blue and alpha in the next word. Established: irsaudit `init_clear_color` (0x100c02d8) ORs the
 * components together and writes the word, `tbuRegReset` zeroes it at 0x1015719c, and the vector
 * files carry two mode-1 words for it. No arm1.u routine loads a clear colour with a literal
 * address word. ge.u writes it from the engine: the clear.S handlers stage 0x1c12 and send it to
 * bus address 0x1f7 before the value (mgesi_ClearColor 0x91d3-0x91d4, mgesi_ClearAccum 0x911c). */
#define KONA_RM_IMP_CLEAR_COLOR                          0x1c12
#define KONA_RM_IMP_CLEAR_COLOR_RED                       0, 12  /* shift, width */
#define KONA_RM_IMP_CLEAR_COLOR_GREEN                    12, 12  /* shift, width */
#define KONA_RM_IMP_CLEAR_COLOR_BLUE                      0, 12  /* shift, width */
#define KONA_RM_IMP_CLEAR_COLOR_ALPHA                    12, 12  /* shift, width */

/*
 * IMP_WMASK_BIT (index 0x1c14): per-bit colour write mask, red and green in twelve-bit fields with
 * blue and alpha in the next word. Established in arm1.u: `init_imp` writes zero at address word
 * 0x013d1c14 (loaded at 0x0c003cc8), `arm_indexmask` (0x0c012e78) and `color_init` (0x0c014128)
 * rewrite it, and `arm_buffer_config` writes it at 0x0c013548. irsaudit `init_mask_color`
 * (0x100c0574) writes the diagnostic's mask, and the vector files carry 27 words. */
#define KONA_RM_IMP_WMASK_BIT                            0x1c14
#define KONA_RM_IMP_WMASK_BIT_RED                         0, 12  /* shift, width */
#define KONA_RM_IMP_WMASK_BIT_GREEN                      12, 12  /* shift, width */
#define KONA_RM_IMP_WMASK_BIT_BLUE                        0, 12  /* shift, width */
#define KONA_RM_IMP_WMASK_BIT_ALPHA                      12, 12  /* shift, width */

/*
 * IMP_RAMSYNC (index 0x1c3f): an image processor index that carries no fields and sits among the
 * completion writes of a test. Established: the last four mode-1 words of `aaspoke.tbus` (lines
 * 1105-1108) are `IMP_FLAG` (0x1c0f) with 1, this index with 1 twice, then `IMP_FLAG` with 1
 * again; `tbuRegReset` skips it as an action register, and no irsaudit, arm1.u or ge.u routine
 * writes it with a literal. Inferred: the two writes are a barrier between two completion flags,
 * since nothing else in the shipped vectors separates them. Unknown: no shipped software or
 * published source depends on what RAM state the write synchronises. Routes tried: irsaudit, arm1.u (no address word 0x01xx1c3f), ge.u (no select),
 * the other 260,000 vector lines (no other use), kpm and libGLcore. */
#define KONA_RM_IMP_RAMSYNC                              0x1c3f

/*
 * IMP_FAKE_DRAW_OFFSET (index 0x1c3e): the simulation block's draw offset, a twelve-bit x field at
 * bit 0 and a twelve-bit y field at bit 12 in kpm's table. Established: irsaudit `tbuRegReset`
 * writes zero at address 0x1015731c (index 7230 passed to `tbRegWrite` at 0x10157318-0x1015731c),
 * and no vector-file word, arm1.u routine or ge.u select addresses it. Unknown: no shipped
 * software or published source depends on what a non-zero offset does to a simulated draw, because
 * only zero is ever written. Routes tried: irsaudit,
 * arm1.u, ge.u, the vector files, kpm, libGLcore, and the published papers and patents. */
#define KONA_RM_IMP_FAKE_DRAW_OFFSET                     0x1c3e
#define KONA_RM_IMP_FAKE_DRAW_OFFSET_X                    0, 12  /* shift, width */
#define KONA_RM_IMP_FAKE_DRAW_OFFSET_Y                   12, 12  /* shift, width */

/*
 * IMP_FAKE_DRAWMODE (index 0x1c3d): draw mode of the simulation block, a two-bit field with the
 * values sRGBA, RGBA, mask and Z in kpm. Established that irsaudit `tbuRegReset` writes zero at
 * address 0x1015737c and that no other irsaudit, arm1.u or ge.u routine and no vector-file word
 * carries it. Inferred from the value names that it selects which plane a simulated draw writes. */
#define KONA_RM_IMP_FAKE_DRAWMODE                        0x1c3d
#define KONA_RM_IMP_FAKE_DRAWMODE_DM                      0,  2  /* shift, width */
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_SRGBA               0x0
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_RGBA                0x1
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_MSK                 0x2
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_Z                   0x3

/*
 * IMP_FAKE_SIMPLE_FB_ORIGIN (index 0x1c3c): the x and y origin of the image processors' simple
 * framebuffer, a 16-bit y field at bit 0 and a 16-bit x field at bit 16 in kpm's table.
 * Established in arm1.u: `arm_validate_clip` selects index 0x1c3c through port 0x474
 * (0x0c018548-0x0c018550), sends the first payload word in the high half and the second in the low
 * half (`orr r0, r5, r6, lsl #16`, 0x0c018554) through port 0x840, and then the low half of state
 * word 0x11c through port 0x8c0, so every window validation rewrites it. irsaudit `tbuRegReset`
 * writes zero at 0x101573dc, and the vector files carry 13 words: 0x3ff six times, 0x01400100 six
 * times and 0 once. Inferred: the window origin that the image processors take for addressing,
 * since the high half is the same first payload word that feeds the x offset of `PG_WIN_OFFSET_X`;
 * the FAKE in kpm's block name marks a simulation block, yet the production window path writes it. */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_ORIGIN                0x1c3c
#define KONA_RM_IMP_FAKE_SIMPLE_FB_ORIGIN_YORG            0, 16  /* shift, width */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_ORIGIN_XORG           16, 16  /* shift, width */

/*
 * IMP_FAKE_SIMPLE_FB_SIZE (index 0x1c3b): width and height of a simple framebuffer for the pixel
 * chips, two sixteen-bit fields, in a block that kpm names FAKE. Established: irsaudit
 * `tbuRegReset` restores it at address 0x10157444 from a saved register, and the vector files
 * carry six words for the index. No arm1.u or ge.u routine writes it, and the role is inferred
 * from the field names only. */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_SIZE                  0x1c3b
#define KONA_RM_IMP_FAKE_SIMPLE_FB_SIZE_YSIZE             0, 16  /* shift, width */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_SIZE_XSIZE            16, 16  /* shift, width */

/* IMP_NOP: imp no-op. ESTABLISHED: ge.u mgesi_FlushRM (0x3810) and
 * mgeb_ComputeMSPointTables (0x5c50) load 0x1c3a; irsaudit crc_pgtest
 * (0x100d47d4) writes it in runs of eight between runs of PG_NOP. INFERRED:
 * padding that drains the pipe; never restored. */
#define KONA_RM_IMP_NOP                                  0x1c3a

/*
 * PGTFPIMP_MSLOC (index 0x3be0): multisample sample locations for samples 0 to 3, a three-bit x
 * and a three-bit y each; the next index holds samples 4 to 7. Established in arm1.u:
 * `arm_samplepattern` (0x0c03c30c) and `init_multisample` (0x0c03c468) write 24-bit words from the
 * `patterns` table at 0x0c03c734 chosen by sample count, `multisample_pop` (0x0c03c700) restores
 * one, and `init_pg` stores 0x007f6280 (address word loaded at 0x0c003810). irsaudit `init_ms_loc`
 * (0x100c0680) sets 0xc8b640, which `tbuRegReset` restores. */
#define KONA_RM_PGTFPIMP_MSLOC                           0x3be0
#define KONA_RM_PGTFPIMP_MSLOC_X0                         0,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y0                         3,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X1                         6,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y1                         9,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X2                        12,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y2                        15,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X3                        18,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y3                        21,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X4                         0,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y4                         3,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X5                         6,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y5                         9,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X6                        12,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y6                        15,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_X7                        18,  3  /* shift, width */
#define KONA_RM_PGTFPIMP_MSLOC_Y7                        21,  3  /* shift, width */

/*
 * PGTG_SCIS (index 0x3fc2): scissor rectangle, x minimum and maximum, as fifteen-bit fields; the
 * next index holds the y range. Established in arm1.u: `resolve_scissor` writes the minimum
 * shifted left by 3 and the maximum shifted left by 18 under mask 0x3fffffff at address 0x0c018c14
 * (address word 0x01133fc3 follows for y), so kpm's fields hold pixel numbers with three fraction
 * bits. irsaudit has 68 call sites for it, the first in `TEST_framebuf` (0x1006a42c), and the
 * start-up shadow value is 0x3fff8000. */
#define KONA_RM_PGTG_SCIS                                0x3fc2
#define KONA_RM_PGTG_XSMIN                                0, 15  /* shift, width */
#define KONA_RM_PGTG_XSMAX                               15, 15  /* shift, width */
#define KONA_RM_PGTG_YSMIN                                0, 15  /* shift, width */
#define KONA_RM_PGTG_YSMAX                               15, 15  /* shift, width */

/*
 * PGTG_ZRECT (index 0x3fc4): first of eight words of rectangle step values, 32-bit x and y terms
 * and 28-bit depth terms in kpm. Inferred from those field names, with start-up zero in the shadow
 * and the last two words at 0x100000. Established that no arm1.u routine writes it. irsaudit
 * `crc_pgtest1` (0x100d6d84) writes a saved copy and the texture tests such as `TEST_texmem`
 * (0x1008fb6c) and `TEST_rmstress` (0x10088a1c) write zero, as `tbuRegReset` (0x10154cb4) does at
 * 0x10157640. */
#define KONA_RM_PGTG_ZRECT                               0x3fc4
#define KONA_RM_PGTG_ZRECT_X0                             0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_X                              0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_Y                              0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_X0A                            0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_XA                             0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_YA                             0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_ZX                             0, 28  /* shift, width */
#define KONA_RM_PGTG_ZRECT_ZY                             0, 28  /* shift, width */

/*
 * PGTG_DRECT (index 0x3fcc): destination rectangle of a pixel operation, j and i start of twelve
 * bits each, a corner direction, and zoom, pixel-cache and interlace bits. Established in arm1.u:
 * `arm_readpixels` (0x0c02c63c) and `videoReadPixels` (0x0c02c784) write the rectangle for a read,
 * `arm_copyconvolutionfilter1d` (0x0c036fe8) writes 0x8000000, the pixel-cache bit alone, and
 * `CommonPixEnd` (0x0c0266c0) zeroes it, and `SetupTexRead` writes the zoom bit at 0x0c034598 for
 * a texture read. The shadow start-up value 0xc010010 has the zoom and cache bits on. */
#define KONA_RM_PGTG_DRECT                               0x3fcc
#define KONA_RM_PGTG_DRECT_J                              0, 12  /* shift, width */
#define KONA_RM_PGTG_DRECT_I                             12, 12  /* shift, width */
#define KONA_RM_PGTG_DRECT_DIR                           24,  2  /* shift, width */
#define KONA_RM_PGTG_DRECT_DIR_BL                        0x0
#define KONA_RM_PGTG_DRECT_DIR_BR                        0x1
#define KONA_RM_PGTG_DRECT_DIR_UL                        0x2
#define KONA_RM_PGTG_DRECT_DIR_UR                        0x3
#define KONA_RM_PGTG_ZOOM_ENABLE                         26,  1  /* shift, width */
#define KONA_RM_PGTG_ZOOM_ENABLE_OFF                     0x0
#define KONA_RM_PGTG_ZOOM_ENABLE_ON                      0x1
#define KONA_RM_PGTG_PCACHE                              27,  1  /* shift, width */
#define KONA_RM_PGTG_PCACHE_OFF                          0x0
#define KONA_RM_PGTG_PCACHE_ON                           0x1
#define KONA_RM_PGTG_PIXEL_INTERLACE                     28,  1  /* shift, width */
#define KONA_RM_PGTG_PIXEL_INTERLACE_OFF                 0x0
#define KONA_RM_PGTG_PIXEL_INTERLACE_ON                  0x1
#define KONA_RM_PGTG_DRECT_W                              0, 12  /* shift, width */
#define KONA_RM_PGTG_DRECT_X0                            12, 12  /* shift, width */
#define KONA_RM_PGTG_DRECT_Y                              0, 12  /* shift, width */
#define KONA_RM_PGTG_DRECT_X                             12, 12  /* shift, width */

/*
 * PGTG_SIZE (index 0x3fcf): point buffer size, the first of four words that continue with line
 * buffer size, triangle buffer size and image buffer width and height, twelve bits each.
 * Established in arm1.u: `init_tg` stores 0x10 (address word 0x01203fcf, loaded at 0x0c003910),
 * `prim_init` repeats it at 0x0c0166b4 and `x_initregs` at 0x0c03d0c8; the four start-up values
 * are 0x10, 0x10, 0xf and 0xf00f. The irsaudit tests (`TEST_rmstress` at 0x10088ad4) write 16 as
 * well and `tbuRegReset` restores 16, so 16 is the working size throughout. */
#define KONA_RM_PGTG_SIZE                                0x3fcf
#define KONA_RM_PGTG_PBSIZE                               0, 12  /* shift, width */
#define KONA_RM_PGTG_LBSIZE                               0, 12  /* shift, width */
#define KONA_RM_PGTG_TBSIZE                               0, 12  /* shift, width */
#define KONA_RM_PGTG_IBWIDTH                              0, 12  /* shift, width */
#define KONA_RM_PGTG_IBHEIGHT                            12, 12  /* shift, width */

/*
 * PGTG_ENABLES (index 0x3fd3): unit enable bits for the texture generator, scan converter, depth
 * unit and pixel drawing, one bit each in kpm. Established in arm1.u: `init_tg` writes 14 at
 * 0x0c0038f8, which leaves the first bit off, `prim_init` writes 14 at 0x0c01669c and
 * `CommonPixEnd` writes 0 at 0x0c0266fc, and `SetupTexRead` writes 3, the generator and scan bits,
 * at 0x0c034484. irsaudit writes 8 in `TEST_framebuf` (0x1006a9f8) and 15 in `TEST_rmstress`
 * (0x10088b14), and the vector files send it 9586 times. */
#define KONA_RM_PGTG_ENABLES                             0x3fd3
#define KONA_RM_PGTG_TG_ENABLE                            0,  1  /* shift, width */
#define KONA_RM_PGTG_TG_ENABLE_OFF                       0x0
#define KONA_RM_PGTG_TG_ENABLE_ON                        0x1
#define KONA_RM_PGTG_SCAN_ENABLE                          1,  1  /* shift, width */
#define KONA_RM_PGTG_SCAN_ENABLE_OFF                     0x0
#define KONA_RM_PGTG_SCAN_ENABLE_ON                      0x1
#define KONA_RM_PGTG_ZPU_ENABLE                           2,  1  /* shift, width */
#define KONA_RM_PGTG_ZPU_ENABLE_OFF                      0x0
#define KONA_RM_PGTG_ZPU_ENABLE_ON                       0x1
#define KONA_RM_PGTG_DRAWPIX_ENABLE                       3,  1  /* shift, width */
#define KONA_RM_PGTG_DRAWPIX_ENABLE_OFF                  0x0
#define KONA_RM_PGTG_DRAWPIX_ENABLE_ON                   0x1

/*
 * TGTMTFT (index 0x3fd4): texture mode word seen by the generator, memory and filter chips
 * together, with sample mode, minification, magnification and shadow compare fields; its field
 * layout is given in the texture mode word block earlier in this header. Established: arm1.u
 * `SetupRM_TextureBind` writes it at 0x0c036940, `StartTexRead` writes it with the shadow bits
 * cleared at 0x0c034678, and `CommonPixEnd` clears it at 0x0c026724. irsaudit `TEST_texmem` writes
 * 0x4b, all three bicubic, and `tbuRegReset` restores 0x30. */
#define KONA_RM_TGTMTFT                                  0x3fd4
#define KONA_RM_TGTMTFT_SM                                0,  2  /* shift, width */
#define KONA_RM_TGTMTFT_SM_2D                            0x0
#define KONA_RM_TGTMTFT_SM_3D                            0x1
#define KONA_RM_TGTMTFT_SM_3D_MIP                        0x2
#define KONA_RM_TGTMTFT_SM_BICUBIC                       0x3
#define KONA_RM_TGTMTFT_MIN                               2,  3  /* shift, width */
#define KONA_RM_TGTMTFT_MIN_NEAREST                      0x0
#define KONA_RM_TGTMTFT_MIN_LINEAR                       0x1
#define KONA_RM_TGTMTFT_MIN_BICUBIC                      0x2
#define KONA_RM_TGTMTFT_MIN_N_MIP_N                      0x3
#define KONA_RM_TGTMTFT_MIN_N_MIP_L                      0x4
#define KONA_RM_TGTMTFT_MIN_L_MIP_N                      0x5
#define KONA_RM_TGTMTFT_MIN_L_MIP_L                      0x6
#define KONA_RM_TGTMTFT_MAG                               5,  3  /* shift, width */
#define KONA_RM_TGTMTFT_MAG_NEAREST                      0x0
#define KONA_RM_TGTMTFT_MAG_LINEAR                       0x1
#define KONA_RM_TGTMTFT_MAG_BICUBIC                      0x2
#define KONA_RM_TGTMTFT_MAG_DETAIL_ADD                   0x3
#define KONA_RM_TGTMTFT_MAG_DETAIL_MOD                   0x4
#define KONA_RM_TGTMTFT_MAG_SHARPEN                      0x5
#define KONA_RM_TGTMTFT_V                                 8,  1  /* shift, width */
#define KONA_RM_TGTMTFT_R                                 9,  1  /* shift, width */
#define KONA_RM_TGTMTFT_SHA                              10,  2  /* shift, width */
#define KONA_RM_TGTMTFT_SHA_DISABLE                      0x0
#define KONA_RM_TGTMTFT_SHA_GEQUAL_R                     0x1
#define KONA_RM_TGTMTFT_SHA_LEQUAL_R                     0x2
#define KONA_RM_TGTMTFT_CLP                              12,  1  /* shift, width */
#define KONA_RM_TGTMTFT_CLP_IRIS                         0x0
#define KONA_RM_TGTMTFT_CLP_OGL                          0x1
#define KONA_RM_TGTMTFT_ENV                              13,  1  /* shift, width */
#define KONA_RM_TGTMTFT_ENV_OFF                          0x0
#define KONA_RM_TGTMTFT_ENV_ON                           0x1
#define KONA_RM_TGTMTFT_TFMT                             14,  7  /* shift, width */
#define KONA_RM_TGTMTFT_TFMT_L4                          0x0
#define KONA_RM_TGTMTFT_TFMT_A4                          0x1
#define KONA_RM_TGTMTFT_TFMT_I4                          0x2
#define KONA_RM_TGTMTFT_TFMT_LA4                         0x3
#define KONA_RM_TGTMTFT_TFMT_L8                          0x4
#define KONA_RM_TGTMTFT_TFMT_A8                          0x5
#define KONA_RM_TGTMTFT_TFMT_I8                          0x6
#define KONA_RM_TGTMTFT_TFMT_LA8                         0x8
#define KONA_RM_TGTMTFT_TFMT_L12                         0x9
#define KONA_RM_TGTMTFT_TFMT_A12                         0xa
#define KONA_RM_TGTMTFT_TFMT_I12                         0xb
#define KONA_RM_TGTMTFT_TFMT_L12A4                       0xc
#define KONA_RM_TGTMTFT_TFMT_L16                         0xd
#define KONA_RM_TGTMTFT_TFMT_A16                         0xe
#define KONA_RM_TGTMTFT_TFMT_I16                         0xf
#define KONA_RM_TGTMTFT_TFMT_RGBA4                       0x10
#define KONA_RM_TGTMTFT_TFMT_RGB5A1                      0x14
#define KONA_RM_TGTMTFT_TFMT_RGB565                      0x18
#define KONA_RM_TGTMTFT_TFMT_LA12                        0x20
#define KONA_RM_TGTMTFT_TFMT_LA16                        0x28
#define KONA_RM_TGTMTFT_TFMT_RGBA8                       0x30
#define KONA_RM_TGTMTFT_TFMT_RGB10A2                     0x38
#define KONA_RM_TGTMTFT_TFMT_RGB12                       0x40
#define KONA_RM_TGTMTFT_TFMT_RGBA12                      0x50
#define KONA_RM_TGTMTFT_DEG                              21,  3  /* shift, width */
#define KONA_RM_TGTMTFT_DEG_0                            0x0
#define KONA_RM_TGTMTFT_DEG_1                            0x1
#define KONA_RM_TGTMTFT_DEG_2                            0x2
#define KONA_RM_TGTMTFT_DEG_3                            0x3
#define KONA_RM_TGTMTFT_DEG_4                            0x4
#define KONA_RM_TGTMTFT_CS                               24,  2  /* shift, width */
#define KONA_RM_TGTMTFT_CS_0                             0x0
#define KONA_RM_TGTMTFT_CS_4                             0x1
#define KONA_RM_TGTMTFT_CS_8                             0x2
#define KONA_RM_TGTMTFT_CS_12                            0x3
#define KONA_RM_TGTMTFT_MC                               26,  2  /* shift, width */
#define KONA_RM_TGTMTFT_MC_ALL                           0x0
#define KONA_RM_TGTMTFT_MC_COLOR                         0x1
#define KONA_RM_TGTMTFT_MC_ALPHA                         0x2
#define KONA_RM_TGTMTFT_MC_LOD0                          0x3
#define KONA_RM_TGTMTFT_BS                               28,  1  /* shift, width */

/*
 * TGTM_TEX_SIZE (index 0x3fd5): texture size seen by the generator and texture memory together, a
 * four-bit size for each of s, t and r and one flag bit for each axis. Established in arm1.u:
 * `SetupRM_TextureBind` writes the packed size at address 0x0c036894, `StartTexRead` writes a size
 * word at 0x0c0346a8, and `CommonPixEnd` clears it at 0x0c026738. irsaudit `TEST_texmem` writes
 * 170 at 0x1008fb3c, size 10 on s and t, and `tbuRegReset` returns zero at 0x10157cbc. */
#define KONA_RM_TGTM_TEX_SIZE                            0x3fd5
#define KONA_RM_TGTM_TEX_SIZE_TEX_SSIZE                   0,  4  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_TSIZE                   4,  4  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_RSIZE                   8,  4  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_SAC                    12,  1  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_TAC                    13,  1  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_RAC                    14,  1  /* shift, width */

/*
 * TGTM_DCTEX_SIZE (index 0x3fd6): detail and clip-map texture sizes, four bits each for detail s
 * and t and clip size, a ten-bit clip level offset and a clip enable bit. Established in arm1.u:
 * `arm_bind_2d_clipmap_texture` writes its fifth operand under mask 0x7fff00 at address word
 * 0x014d3fd6 (loaded at 0x0c025c20), and `arm_bind_detail_texture` (0x0c025f68) writes the detail
 * sizes. irsaudit `tbuClipBorder` (0x1014e62c) and `tbuBindTexture` (0x1014c8d0) write it. */
#define KONA_RM_TGTM_DCTEX_SIZE                          0x3fd6
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_DET_SSIZE             0,  4  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_DET_TSIZE             4,  4  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_CLIP_SIZE             8,  4  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_CLIP_LOD_OFFSET      12, 10  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_CLIP_ON              22,  1  /* shift, width */

/*
 * TGTM_TEX_SCENTER (index 0x3fd7): clip-map centre in s, one fifteen-bit field. Established in
 * arm1.u: `arm_bind_2d_clipmap_texture` writes its third operand here with a full mask, loading
 * the address word 0x01523fd7 at 0x0c025bf4. irsaudit `levelizeMipmap` (0x10121958) and
 * `my_glKonTexParameter` (0x1012a324) write it from the texture object, `tbuBindTexture` writes
 * the saved copy at 0x1014cb54, and the shadow start-up value is 0. */
#define KONA_RM_TGTM_TEX_SCENTER                         0x3fd7
#define KONA_RM_TGTM_TEX_SCENTER_TEX_SCENTER              0, 15  /* shift, width */

/*
 * TGTM_TEX_TCENTER (index 0x3fd8): clip-map centre in t, one fifteen-bit field that follows the s
 * centre. Established in arm1.u: `arm_bind_2d_clipmap_texture` writes its fourth operand here,
 * address word 0x01533fd8 loaded at 0x0c025c08. irsaudit `levelizeMipmap` (0x10121994) and
 * `my_glKonTexParameter` (0x1012a360) write it from the texture object, `tbuBindTexture` writes
 * its saved copy at 0x1014cbac, and `tbuRegReset` zeroes it at 0x10157ddc. */
#define KONA_RM_TGTM_TEX_TCENTER                         0x3fd8
#define KONA_RM_TGTM_TEX_TCENTER_TEX_TCENTER              0, 15  /* shift, width */

/*
 * COMMON_VERBOSE (index 0x3ff0): a whole-word register of the common block that kpm lists without
 * fields; its name suggests a verbosity switch. Established: the only writer in any shipped
 * program is irsaudit `tbuRegReset` (0x10154cb4), which writes zero at address 0x10157e3c (index
 * 16368 passed to `tbRegWrite` at 0x10157e38-0x10157e3c); arm1.u, ge.u and the vector files never
 * address it. Unknown: no shipped software or published source depends on what a non-zero value
 * prints or traces, because only zero is sent. Routes tried: irsaudit, arm1.u, ge.u, the vector files, kpm, libGLcore, and the published papers and
 * patents. */
#define KONA_RM_COMMON_VERBOSE                           0x3ff0

/* COMMON_PFLUSH: flushes the pixel-generator path. ESTABLISHED: ge.u
 * DoFlushPGPCache (0xa722) writes it between TFP_PIX_FMT and PGTG_ENABLES
 * with high half 0 (unshadowed); mges_ContextDeactivate (0x690e) writes it;
 * tbusdata.Z 6 times right after 0x1410; restore value 0. */
#define KONA_RM_COMMON_PFLUSH                            0x3ff1

/*
 * COMMON_PSTART (index 0x3ff3): a whole-word register of the common block that sits one index
 * below COMMON_PSTOP in kpm's table. Established: only irsaudit `tbuRegReset` writes it, with zero
 * at address 0x10157efc (index 16371 passed to `tbRegWrite` at 0x10157ef8-0x10157efc), and arm1.u,
 * ge.u and the vector files carry no write. Unknown: no shipped software or published source
 * depends on what a non-zero value of this register starts, because only the restore routine's
 * zero is ever sent. Routes tried: irsaudit, arm1.u,
 * ge.u, the vector files, kpm, libGLcore, and the published papers and patents. */
#define KONA_RM_COMMON_PSTART                            0x3ff3

/*
 * COMMON_PSTOP (index 0x3ff4): a whole-word register of the common block that sits one index above
 * COMMON_PSTART in kpm's table. Established: irsaudit `tbuRegReset` writes zero to it at address
 * 0x10157f5c (index 16372 passed to `tbRegWrite` at 0x10157f58-0x10157f5c), and nothing else in
 * irsaudit, arm1.u, ge.u or the vector files addresses it. Unknown: no shipped software or
 * published source depends on what a non-zero value of this register stops or brackets, because no
 * program sends one. Routes tried: irsaudit, arm1.u,
 * ge.u, the vector files, kpm, libGLcore, and the published papers and patents. */
#define KONA_RM_COMMON_PSTOP                             0x3ff4

/*
 * COMMON_FB (index 0x3ff5): framebuffer enables of the common block, a z enable bit and an a
 * enable bit in kpm. Established that irsaudit `tbuRegReset` is the only writer, with zero at
 * address 0x10157fbc, and that arm1.u, ge.u and the vector files never carry this index. Inferred
 * from the field names that the two bits switch depth and alpha planes in the framebuffer and that
 * zero leaves both off. */
#define KONA_RM_COMMON_FB                                0x3ff5
#define KONA_RM_COMMON_FB_ZE                              0,  1  /* shift, width */
#define KONA_RM_COMMON_FB_AE                              1,  1  /* shift, width */

/*
 * COMMON_PRIMID (index 0x3ff6): a whole-word register of the common block, written at the start of
 * a pixel generator setup and by the diagnostic. Established in arm1.u: `init_pg` ends its
 * register run with a write of 1 through `tbus_regwrite` (call at 0x0c003844, value 1 loaded at
 * 0x0c003838); irsaudit writes a saved copy at 34 call sites, the first in `TEST_framebuf`
 * (0x1006a4f8); the vector files carry six words and all have the value 1. Unknown: no shipped
 * software or published source depends on what the chips do with this identifier, because every
 * writer sends the one value 1 (the diagnostic restores what it saved). Routes tried: arm1.u, ge.u (no select), the vector files, kpm's raster
 * table (a bare record), libGLcore, and the published papers and patents. */
#define KONA_RM_COMMON_PRIMID                            0x3ff6

/*
 * COMMON_STALL (index 0x3ff7): a register of the common block with one four-bit field, COUNT_P
 * (bit 0), in kpm's table. Established: irsaudit `tbuRegReset` writes zero at address 0x1015807c
 * (index 16375 passed to `tbRegWrite` at 0x10158078-0x1015807c), and no other irsaudit, arm1.u,
 * ge.u or vector-file word carries the index. Unknown: no shipped software or published source
 * depends on what a non-zero COUNT_P holds back, because only zero is sent. Routes tried: irsaudit, arm1.u, ge.u, the vector files, kpm,
 * libGLcore, and the published papers and patents. */
#define KONA_RM_COMMON_STALL                             0x3ff7
#define KONA_RM_COMMON_STALL_COUNT_P                      0,  4  /* shift, width */

/*
 * COMMON_IFMT (index 0x3ff8): input pixel format, a five-bit pack code for the data format coming
 * from the host or memory (RGBA4 to RGBA16 and RGBA12 at 0x11). Established in arm1.u:
 * `arm_readpixels` writes 0x11 under mask 0x1f at address word 0x013f3ff8 (loaded at 0x0c02c654),
 * `SetupTexRead` writes the same at 0x0c0345dc, and `SetupSubtexload` writes a caller-supplied
 * code at 0x0c03435c. irsaudit uses 10 or 17 in its tests. */
#define KONA_RM_COMMON_IFMT                              0x3ff8
#define KONA_RM_COMMON_IFMT_PACK                          0,  5  /* shift, width */
#define KONA_RM_COMMON_IFMT_PACK_RGBA4                   0x0
#define KONA_RM_COMMON_IFMT_PACK_BITMAP8                 0x0
#define KONA_RM_COMMON_IFMT_PACK_RGB5A1                  0x1
#define KONA_RM_COMMON_IFMT_PACK_R5G6B5                  0x2
#define KONA_RM_COMMON_IFMT_PACK_LA8                     0x3
#define KONA_RM_COMMON_IFMT_PACK_L16                     0x4
#define KONA_RM_COMMON_IFMT_PACK_I16                     0x5
#define KONA_RM_COMMON_IFMT_PACK_S16                     0x6
#define KONA_RM_COMMON_IFMT_PACK_ZC16                    0x7
#define KONA_RM_COMMON_IFMT_PACK_RGBA8                   0x8
#define KONA_RM_COMMON_IFMT_PACK_RGB10A2                 0x9
#define KONA_RM_COMMON_IFMT_PACK_LA16                    0xa
#define KONA_RM_COMMON_IFMT_PACK_Z32                     0xb
#define KONA_RM_COMMON_IFMT_PACK_RGBA16                  0x10
#define KONA_RM_COMMON_IFMT_PACK_RGBA12                  0x11

/* TGTML_NOP: no-op on the texture-load path (tg and tm load side).
 * ESTABLISHED: ge.u mgesi_FillTMLoadFifo (0x427d) loads 0x7fc0; tbusdata.Z
 * writes it 195 times, mostly back to back. INFERRED: filler words for the
 * texture-load FIFO; never restored by tbuRegReset. */
#define KONA_RM_TGTML_NOP                                0x7fc0

/*
 * TGTML_TEXLD_SIZE (index 0x7fc1): size of the texture being loaded, four-bit s, t and r sizes.
 * Established in arm1.u: `PixRM_TextureLoadSetup` packs the three sizes and writes the result at
 * address 0x0c036708 (address word 0x01437fc1). irsaudit `tbuLoadMipmap` (0x10146f14),
 * `tbuLoadTexture` (0x1014842c) and `tbuLoad3D` (0x10149acc) write a saved copy, the tests write
 * 170, and `tbuRegReset` zeroes it at 0x10158140. */
#define KONA_RM_TGTML_TEXLD_SIZE                         0x7fc1
#define KONA_RM_TGTML_TEXLD_SIZE_TEXLD_SSIZE              0,  4  /* shift, width */
#define KONA_RM_TGTML_TEXLD_SIZE_TEXLD_TSIZE              4,  4  /* shift, width */
#define KONA_RM_TGTML_TEXLD_SIZE_TEXLD_RSIZE              8,  4  /* shift, width */

/*
 * TGTML_TEXLD_STSTART (index 0x7fc2): first texel of a load in s and t, two sixteen-bit fields.
 * Established in arm1.u: `PixRM_TextureLoadSetup` writes zero here at address 0x0c036668 under a
 * full mask, and `SetupSubtexloadPos` (0x0c034410) writes the start of a sub-image. irsaudit
 * `tbuLoadMipmap` writes it three times (first at 0x10146d98) and tests write zero. Inferred from
 * the field names that the load covers the rectangle from here to the end register. */
#define KONA_RM_TGTML_TEXLD_STSTART                      0x7fc2
#define KONA_RM_TGTML_TEXLD_STSTART_TEXLD_SSTART          0, 16  /* shift, width */
#define KONA_RM_TGTML_TEXLD_STSTART_TEXLD_TSTART         16, 16  /* shift, width */

/*
 * TGTML_TEXLD_S1ST_RSTART (index 0x7fc3): s start of the first row, sixteen bits, and the r start,
 * eleven bits above it. Established in arm1.u: `PixRM_TextureLoadSetup` writes zero at address
 * 0x0c036618, and `SetupSubtexload` (0x0c034300) and `SetupSubtexloadPos` (0x0c034450) write a
 * sub-image offset. irsaudit `tbuLoadMipmap` writes it at 0x10146e28 and `tbuRegReset` zeroes it
 * at 0x10158200. Inferred that the first row of a load may start off the left edge. */
#define KONA_RM_TGTML_TEXLD_S1ST_RSTART                  0x7fc3
#define KONA_RM_TGTML_TEXLD_S1ST_RSTART_TEXLD_SSTART_1ST  0, 16  /* shift, width */
#define KONA_RM_TGTML_TEXLD_S1ST_RSTART_TEXLD_RSTART     16, 11  /* shift, width */

/*
 * TGTML_TEXLD_STEND (index 0x7fc4): last texel of a load in s and t, sixteen bits each.
 * Established in arm1.u: `PixRM_TextureLoadSetup` packs the end s with the end t in the upper
 * half, the t end being start plus length minus one, and writes it at address 0x0c03675c. irsaudit
 * tests write 0x3ff, a ten-bit end, at `TEST_texmem` (0x1008faac), and `tbuLoadTexture`
 * (0x101484f0) writes three times. */
#define KONA_RM_TGTML_TEXLD_STEND                        0x7fc4
#define KONA_RM_TGTML_TEXLD_STEND_TEXLD_SEND              0, 16  /* shift, width */
#define KONA_RM_TGTML_TEXLD_STEND_TEXLD_TEND             16, 16  /* shift, width */

/*
 * TGTML_TEXLD_MISC (index 0x7fc5): load mode word with texel size, load scissor enable, target
 * bank, tiling kind (2D, 3D, 3D mipmap, bicubic), s and t bit counts and an interlace flag.
 * Established in arm1.u: `PixRM_TextureLoadSetup` assembles it from texture state and writes it at
 * address 0x0c0365c4. irsaudit tests write 637, which is bicubic tiling, and
 * `tbuInterlaceDownLoads` (0x10141bec) sets the interlace bit. */
#define KONA_RM_TGTML_TEXLD_MISC                         0x7fc5
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TEXELSIZE          0,  2  /* shift, width */
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_LDSCISSOREN        2,  1  /* shift, width */
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TARGETBANK         3,  2  /* shift, width */
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TILING             5,  2  /* shift, width */
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TILING_TML_TILING_2D 0x0
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TILING_TML_TILING_3D 0x1
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TILING_TML_TILING_3D_MIP 0x2
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_TILING_TML_TILING_BICUBIC 0x3
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_S_BITS             7,  4  /* shift, width */
#define KONA_RM_TGTML_TEXLD_MISC_TEXLD_T_BITS            11,  4  /* shift, width */
#define KONA_RM_TGTML_TEXLD_MISC_TGTM_INTERLACE_DWNLD    15,  1  /* shift, width */

/*
 * PG_GENERAL (index 0x800): general pixel-generator control, a flat-shading bit that kpm names
 * with 0 as ON and 1 as OFF, and a direction-mask source bit, packet or reference. Established in
 * arm1.u: `init_pg` stores 1 (address word 0x01270800, value store at 0x0c0037cc) as its first
 * register write, so flat shading starts off with the packet's direction mask. irsaudit
 * `TEST_texmem` writes 0 at 0x1008fc60 and 1 at 0x1008fcd4 around a texture memory pass, and
 * `tbuRegReset` (0x10154cb4) puts 0 back. The shadow start-up value is 0. */
#define KONA_RM_PG_GENERAL                               0x0800
#define KONA_RM_PG_FLAT_ENABLE                            0,  1  /* shift, width */
#define KONA_RM_PG_FLAT_ENABLE_ON                        0x0
#define KONA_RM_PG_FLAT_ENABLE_OFF                       0x1
#define KONA_RM_PG_DIR_MASK                               1,  1  /* shift, width */
#define KONA_RM_PG_DIR_MASK_PKT                          0x0
#define KONA_RM_PG_DIR_MASK_REF                          0x1

/*
 * PG_QCOLOR (index 0x801): first of three 48-bit words holding quad colours, four 12-bit
 * components each, inferred from kpm's RED0..ALPHA0 field names. Established: irsaudit
 * `TEST_dquad` writes it 22 times from its saved copy (first at 0x100b924c), `impvid` at
 * 0x1007858c and `fog` at 0x1010eecc write it before drawing, and `tbuRegReset` (0x10154cb4)
 * clears it. The vector files send the third word, index 0x803, 4753 times. */
#define KONA_RM_PG_QCOLOR                                0x0801
#define KONA_RM_PG_QCOLOR_RED0                            0, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_GREEN0                         12, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_BLUE0                          24, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_ALPHA0                         36, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_RED1                            0, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_GREEN1                         12, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_BLUE1                          24, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_ALPHA1                         36, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_RED2                            0, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_GREEN2                         12, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_BLUE2                          24, 12  /* shift, width */
#define KONA_RM_PG_QCOLOR_ALPHA2                         36, 12  /* shift, width */

/*
 * PG_PSPEC (index 0x80f): pixel-generator primitive specification, a 12-bit width and 12-bit
 * height, inferred from kpm's WIDTH and HEIGHT fields. Established in arm1.u: `init_pg` stores
 * 0x8008, width 8 and height 8, at address 0x0c0037d8 (address word 0x0128080f). `tbuRegReset`
 * (0x10154cb4) restores the shadow start-up value 0x100100 instead, which is 256 by 256, so the
 * diagnostic and the firmware disagree about the quiet state. irsaudit `TEST_rmstress` ORs 0x100
 * into it at 0x10088b60. */
#define KONA_RM_PG_PSPEC                                 0x080f
#define KONA_RM_PG_PSPEC_WIDTH                            0, 12  /* shift, width */
#define KONA_RM_PG_PSPEC_HEIGHT                          12, 12  /* shift, width */

/*
 * PG_BLOAT (index 0x804): a pixel generator register whose name suggests primitive growth; kpm
 * lists it as one whole word with no fields. Established in arm1.u: `prim_init` loads address word
 * 0x01290804 at 0x0c016714 and sends value 0 at 0x0c016720 behind an all-ones mask word, irsaudit
 * `crc_pgtest` writes its saved copy at 0x100d53b0, and all 13 vector-file words for the index
 * carry 0, as does the shadow slot's start-up value. Unknown: no shipped software or published
 * source depends on what a non-zero growth value does to a primitive, because every program that
 * writes this register sends zero. Routes tried: the geometry engine listings (no select word 0x01290804; the immediate 0x804 in
 * `xsetup.S` is not a select), the published papers, technical reports and patents (none describes
 * a growth amount), kpm's raster table (a bare record) and libGLcore (no use). */
#define KONA_RM_PG_BLOAT                                 0x0804

/*
 * PG_Z_OFF (index 0x805): a pixel generator register whose name suggests a depth offset; kpm lists
 * it as one whole word with no fields. Established in arm1.u: `prim_init` loads address word
 * 0x012a0805 at 0x0c01672c and sends value 0 at 0x0c016734, and all 13 vector-file words for the
 * index carry 0. The glPolygonOffset handlers do not write it: `arm_polygonoffset` (0x0c016428)
 * and `arm_polygonoffsetext` (0x0c016408) forward their operands to the geometry engine through
 * ports 0x840 and 0x8c0, where `mgeb_PolygonOffset` (0xb2ab) stores them in external words 0xa43
 * and 0xa44 (0xb2bb, 0xb2bf) and `mmo_DrawTriPrimOffset` (0x8dc0) reads both back (0x8dd8, 0x8ddd)
 * for its vertex arithmetic, so the engine applies the offset to vertex depth. Unknown: no shipped
 * software or published source depends on what a non-zero value of this register adds to depth,
 * because only zero is ever written. Routes tried: the geometry engine listings (the bare 0x805 in `drawtri.S` and `polymode.S` is a command
 * word sent to bus address 0x1f7, not the select form 0x012a0805), irsaudit (zero only), the
 * vector files (0 in all 13 words), the published papers and patents (none gives a depth-offset
 * register) and libGLcore (no use). */
#define KONA_RM_PG_Z_OFF                                 0x0805

/*
 * PG_MSK (index 0x806): primitive mask and sample-mode word, nine two-bit selects and an eight-bit
 * rule field in kpm. Established in arm1.u: `init_pg` stores 0x01380156 (address word loaded at
 * 0x0c0037f4), `e_multisample` (address word at 0x0c0156b4) writes 0x10000 under mask 0x30000 to
 * set the x-sample field to multisample, and `ResolvePolygon` (0x0c015ec8) writes 4 under mask 0xc
 * to give the triangle mask its first edge. irsaudit sets 0x55 in `TEST_rmstress` and it is the
 * second busiest index in the vector files, 9728 writes. */
#define KONA_RM_PG_MSK                                   0x0806
#define KONA_RM_PG_MSK_LMASK                              0,  2  /* shift, width */
#define KONA_RM_PG_MSK_LMASK_NONE                        0x0
#define KONA_RM_PG_MSK_LMASK_ENDS                        0x1
#define KONA_RM_PG_MSK_LMASK_SIDE0                       0x2
#define KONA_RM_PG_MSK_LMASK_SIDE1                       0x3
#define KONA_RM_PG_MSK_TMASK                              2,  2  /* shift, width */
#define KONA_RM_PG_MSK_TMASK_NONE                        0x0
#define KONA_RM_PG_MSK_TMASK_EDGE0                       0x1
#define KONA_RM_PG_MSK_TMASK_EDGE2                       0x2
#define KONA_RM_PG_MSK_TMASK_EDGE3                       0x3
#define KONA_RM_PG_MSK_SPMASK                             4,  2  /* shift, width */
#define KONA_RM_PG_MSK_SPMASK_NONE                       0x0
#define KONA_RM_PG_MSK_SPMASK_SIDE0                      0x1
#define KONA_RM_PG_MSK_SPMASK_SIDE1                      0x2
#define KONA_RM_PG_MSK_SPMASK_SIDE2                      0x3
#define KONA_RM_PG_MSK_SXMASK                             6,  2  /* shift, width */
#define KONA_RM_PG_MSK_SXMASK_NONE                       0x0
#define KONA_RM_PG_MSK_SXMASK_SIDE0                      0x1
#define KONA_RM_PG_MSK_SXMASK_SIDE1                      0x2
#define KONA_RM_PG_MSK_SXMASK_SIDE2                      0x3
#define KONA_RM_PG_MSK_SLMASK                             8,  2  /* shift, width */
#define KONA_RM_PG_MSK_SLMASK_NONE                       0x0
#define KONA_RM_PG_MSK_SLMASK_END0                       0x1
#define KONA_RM_PG_MSK_SLMASK_END1                       0x2
#define KONA_RM_PG_MSK_SLMASK_END2                       0x3
#define KONA_RM_PG_MSK_PSAMPLE                           10,  2  /* shift, width */
#define KONA_RM_PG_MSK_PSAMPLE_NONMS                     0x0
#define KONA_RM_PG_MSK_PSAMPLE_MS                        0x1
#define KONA_RM_PG_MSK_PSAMPLE_ALPHA                     0x2
#define KONA_RM_PG_MSK_LSAMPLE                           12,  2  /* shift, width */
#define KONA_RM_PG_MSK_LSAMPLE_NONMS                     0x0
#define KONA_RM_PG_MSK_LSAMPLE_MS                        0x1
#define KONA_RM_PG_MSK_LSAMPLE_ALPHA                     0x2
#define KONA_RM_PG_MSK_TSAMPLE                           14,  2  /* shift, width */
#define KONA_RM_PG_MSK_TSAMPLE_NONMS                     0x0
#define KONA_RM_PG_MSK_TSAMPLE_MS                        0x1
#define KONA_RM_PG_MSK_TSAMPLE_ALPHA                     0x2
#define KONA_RM_PG_MSK_XSAMPLE                           16,  2  /* shift, width */
#define KONA_RM_PG_MSK_XSAMPLE_NONMS                     0x0
#define KONA_RM_PG_MSK_XSAMPLE_MS                        0x1
#define KONA_RM_PG_MSK_XSAMPLE_ALPHA                     0x2
#define KONA_RM_PG_MSK_LRULES                            18,  8  /* shift, width */

/*
 * PG_WIN_OFFSET_X (index 0x807): the pixel generator's horizontal window offset, an 11-bit signed
 * value. Established in arm1.u: `arm_validate_clip` (token 0x1f3) forms the first payload word
 * plus half the low 16 bits of the third, subtracts that sum from 0xf, adds 0x800 and clears the
 * low five bits, keeps the 16-bit result in state bytes 0x882 (high) and 0x883 (low), then sends
 * mask 0x7ff, address word 0x012c0807 (loaded at 0x0c018390) and the negated half of the sign-
 * extended result. The geometry engine's `mgebi_XSetupWindow` (0x4e30, word 0x4e9f) and
 * `mgebi_XLoadPosition` (word 0x4ddd) load the same select 0x012c0807 behind the mask 0x7ff. The
 * vector files carry 19 words for the index: 0 six times, 0x400 six times, 0x540 six times and
 * 0x4a0 once. Inferred: a window translation, because the value follows the window's x origin and
 * width and moves in steps of 16 pixels (a multiple of 32, halved). */
#define KONA_RM_PG_WIN_OFFSET_X                          0x0807

/*
 * PG_WIN_OFFSET_Y (index 0x808): the pixel generator's vertical window offset, an 11-bit signed
 * value. Established in arm1.u: right after the x offset `arm_validate_clip` forms the second
 * payload word plus half the low 16 bits of the fourth, subtracts that sum from 3, adds 0x800 and
 * clears the low three bits, keeps the 16-bit result in state bytes 0x884 (high) and 0x885 (low),
 * then sends mask 0x7ff, address word 0x012d0808 (loaded at 0x0c0183bc) and the negated half of
 * the sign-extended result. The geometry engine's `mgebi_XSetupWindow` (word 0x4ea2) and
 * `mgebi_XLoadPosition` (word 0x4de0) load the same select 0x012d0808. The vector files carry 19
 * words: 0 six times, 0x600 six times, 0x500 six times and 0x478 once. Inferred: the vertical
 * counterpart of the x offset, moving in steps of 4 lines (a multiple of 8, halved). */
#define KONA_RM_PG_WIN_OFFSET_Y                          0x0808

/*
 * PG_SMASK (index 0x809): a 32-bit pixel generator register that the name and the start-up value
 * suggest is a sample mask; kpm lists it as one whole word. Established in arm1.u: `prim_init`
 * loads address word 0x012e0809 at 0x0c016740 and sends value 0xffffffff, the same all-ones word
 * it uses as the mask word of every write, and all 13 vector-file words for the index carry
 * 0xffffffff. `arm_samplemask` (0x0c03c350), the handler of glSampleMaskSGIS, does not reach it:
 * it builds a table word from the mask and sends it to index 0x140b (`TFP_FADE_MASK_LUT`, address
 * word 0x0161140b). Unknown: no shipped software or published source depends on which samples a
 * bit of this mask selects, because the only value ever written is all ones. Routes tried: the geometry engine listings (no select
 * 0x012e0809), irsaudit (writes back the saved copy only), the vector files (all ones in 13 of
 * 13), the published papers (they give a coverage mask per fragment but no register) and libGLcore
 * (no use). */
#define KONA_RM_PG_SMASK                                 0x0809

/*
 * PG_STIPPLE (index 0x80a): polygon stipple control, a two-bit enable (off, 2D, 1D, both), offset
 * and invert bits in kpm, with three more words at the next indexes. Established in arm1.u:
 * `ResolvePolygon` writes the enable under mask 3 at address 0x0c015f88, `arm_x_loadstipple`
 * writes 0 for a negative index at 0x0c035c70, and `masked_clear` rewrites it at 0x0c03b604 in a
 * run of state writes. irsaudit `crc_pgtest` (0x100d5ea0) writes four saved words in a row. */
#define KONA_RM_PG_STIPPLE                               0x080a
#define KONA_RM_PG_STIPPLE_ENABLE                         0,  2  /* shift, width */
#define KONA_RM_PG_STIPPLE_ENABLE_OFF                    0x0
#define KONA_RM_PG_STIPPLE_ENABLE_2D                     0x1
#define KONA_RM_PG_STIPPLE_ENABLE_1D                     0x2
#define KONA_RM_PG_STIPPLE_ENABLE_BOTH                   0x3
#define KONA_RM_PG_STIPPLE_OFF                            2,  4  /* shift, width */
#define KONA_RM_PG_STIPPLE_INV                            6,  1  /* shift, width */
#define KONA_RM_PG_STIPPLE_PAT0                           0,  8  /* shift, width */
#define KONA_RM_PG_STIPPLE_PAT1                           0,  8  /* shift, width */
#define KONA_RM_PG_STIPPLE_MODX                           0,  4  /* shift, width */
#define KONA_RM_PG_STIPPLE_MODY                           4,  4  /* shift, width */

/*
 * PG_PRU (index 0x810): one-bit pixel-rule unit mode, none or line, from kpm's PRU values.
 * Established in arm1.u: `ResolveLine` (0x0c01606c) loads address word 0x01330810 and writes it
 * with value 1 when line state is on, with the same word as mask. irsaudit `tbuLineStyle`
 * (0x1015ae94) stores to it three times, `crc_pgtest` (0x100d4f74) writes its saved copy, and the
 * vector files write it 44 times. Inferred role: the pixel generator treats a primitive as a line
 * while it is set. */
#define KONA_RM_PG_PRU                                   0x0810
#define KONA_RM_PG_PRU_PRU                                0,  1  /* shift, width */
#define KONA_RM_PG_PRU_PRU_NONE                          0x0
#define KONA_RM_PG_PRU_PRU_LINE                          0x1

/*
 * PG_PRAM (index 0x880): first of 128 parameter RAM entries at indexes 0x880 to 0x8ff, inferred
 * from the vector files. Established: those files hold mode-1 words whose top half is an entry
 * number and whose second half names another register, for example entry 0x41 holding a fog offset
 * write, so an entry stores a register write for later replay. irsaudit `tbuRegReset` (0x10154cb4)
 * writes 0 to index 0x880 at 0x101588f0, and arm1.u uses the `PramContentsType` record in
 * `arm_x_loadstipple`. */
#define KONA_RM_PG_PRAM                                  0x0880

/*
 * PG_NOP (index 0x87f): a pixel generator index that updates no register, used as a carrier.
 * Established: ge.u `mgesi_FlushRM` loads 0x87f at 0x3837 as the third of its no-op words, after
 * `IMP_NOP` and `TFP_NOP`, sends it to bus address 0x1f7 and counts down a wait of 0x56 (loaded at
 * 0x3836); arm1.u `PixelRestore` (0x0c02926c) and `XPixelRestore` (0x0c035a90) send the all-ones
 * mask word, address word 0x010f087f and a value of r7 shifted left by 18, so the write lands in
 * shadow slot 0x0f, below the table of 89 slots that start at 0x10; kpm's command-name table row
 * 0x20f (0x100bb074) names that slot PIXELS_STARTGEID. The vector files carry six words, all with
 * value 1. Inferred: the write records the position at which an interrupted pixel transfer resumes
 * and the pixel generator itself changes nothing. */
#define KONA_RM_PG_NOP                                   0x087f

/*
 * Register-write word on the raster bus and the extra indexes
 * (docs/rm.md, "The register-write word").
 *
 * ESTABLISHED (irsaudit vector files aaspoke.tbus, tbusdata.Z, 6.5.30m):
 * a mode-1 bus word is {index:16, register:16, value:32}; an ordinary
 * write repeats the index in both halves. INFERRED: the top half is where
 * the word is delivered, the second half the register the value is for
 * (they differ for PG_PRAM entries and the read-back registers).
 *
 * ESTABLISHED (arm1.u, 64 of 64 constants): the address word the ARM
 * hands to the engines' register-write handler is
 * (KONA_RM_BEF_SHADOW_SLOT0 + i) << 16 | register, i = word of the
 * 89-word shadow (ucode/befshadow.tsv). 0x10f marks a write not shadowed.
 */
#define KONA_RM_BUSWORD_INDEX(w)            (((w) >> 48) & 0xffff)
#define KONA_RM_BUSWORD_REG(w)              (((w) >> 32) & 0xffff)
#define KONA_RM_BUSWORD_VALUE(w)            ((w) & 0xffffffff)
#define KONA_RM_BEF_SHADOW_SLOT0            0x0110

/*
 * Board-side indexes that reach host-interface output registers.
 * INFERRED from value flow in arm_start_selectfeed, start_rdata,
 * __glkonSendPixelsToHost and __glkonSetupPacker (arm1.u); the host
 * names are HIP.h's.
 */
#define KONA_RM_HIP_ODMA_CHANNEL            0x0440
#define KONA_RM_HIP_PACK_MODE               0x0441
#define KONA_RM_HIP_ODMA_PNUM               0x0450
#define KONA_RM_HIP_ODMA_POFF               0x0451
#define KONA_RM_HIP_ODMA_LEN                0x0452
#define KONA_RM_HIP_ODMA_TOTAL              0x0453
#define KONA_RM_HIP_ODMA_OVER               0x0454
#define KONA_RM_HIP_ODMA_LLEN               0x0455
#define KONA_RM_HIP_ODMA_STRIDE             0x0456
#define KONA_RM_HIP_ODMA2_PNUM              0x0460
#define KONA_RM_HIP_ODMA2_POFF              0x0461
#define KONA_RM_HIP_ODMA2_LEN               0x0462
#define KONA_RM_HIP_ODMA2_TOTAL             0x0463
#define KONA_RM_HIP_ODMA2_OVER              0x0464

/*
 * Second and later words of multi-word registers. Names ESTABLISHED in
 * irsaudit's register-name pool; index = base + n INFERRED from pool order
 * and gap counts. Field layouts UNKNOWN.
 */
#define KONA_RM_PG_QCOLOR_1                 0x0802
#define KONA_RM_PG_QCOLOR_2                 0x0803
#define KONA_RM_PG_STIPPLE_1                0x080b
#define KONA_RM_PG_STIPPLE_2                0x080c
#define KONA_RM_PG_STIPPLE_3                0x080d
#define KONA_RM_IMP_USER_COLOR_1            0x1c11
#define KONA_RM_IMP_CLEAR_COLOR_1           0x1c13
#define KONA_RM_IMP_WMASK_BIT_1             0x1c15
#define KONA_RM_PGTFPIMP_MSLOC_1            0x3be1
#define KONA_RM_PGTG_SCIS_1                 0x3fc3
#define KONA_RM_PGTG_ZRECT_1                0x3fc5  /* _2.._7 = 0x3fc6..0x3fcb */
#define KONA_RM_PGTG_DRECT_1                0x3fcd
#define KONA_RM_PGTG_DRECT_2                0x3fce
#define KONA_RM_PGTG_SIZE_1                 0x3fd0
#define KONA_RM_PGTG_SIZE_2                 0x3fd1
#define KONA_RM_PGTG_SIZE_3                 0x3fd2

#endif /* KONA_RM_H */
