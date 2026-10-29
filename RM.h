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
 * samples are doubled, for type 2 negated (which GL function each type is
 * is UNKNOWN). Each sample goes through getS2p7 (0x0d9650d0):
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
 *   bit 2      set on the single-image path (the load scissor enable)
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
 * BEF_DUMP (index 0x1), 6.5.30m. Unknown: no shipped software or published source
 * depends on it. The name sits in kpm's raster table beside the geometry-board counters that kpm
 * prints in its BEF dump. Routes tried: kpm's BEF dump functions (`befFIFOInspection`, `show_bef_fifo_section`),
 * irsaudit's raster-bus writes, the ARM firmware arm1.u and the engine program ge.u; none uses the index.
 */
#define KONA_RM_BEF_DUMP                                 0x0001

/* BEF_PERF_COUNTALL: geometry-board counter. ESTABLISHED: kpm's BEF dump
 * prints it as a 32-bit hex word (format string in kpm .rodata). UNKNOWN
 * what it counts and how kpm reads it; no tbus write in irsaudit, the vector
 * files, arm1.u or ge.u. unknown: no shipped software or published source
 * depends on its value beyond that dump. */
#define KONA_RM_BEF_PERF_COUNTALL                        0x0002

/* BEF_PERF_COUNTDRAW: geometry-board counter, as BEF_PERF_COUNTALL: printed
 * by kpm's BEF dump, written by nothing (same routes). unknown: no shipped
 * software or published source depends on what it counts. */
#define KONA_RM_BEF_PERF_COUNTDRAW                       0x0003

/* BEF_PERF_COUNTLOAD: geometry-board counter, as BEF_PERF_COUNTALL: printed
 * by kpm's BEF dump, written by nothing (same routes). unknown: no shipped
 * software or published source depends on what it counts. */
#define KONA_RM_BEF_PERF_COUNTLOAD                       0x0004

/* BEF_PERF_COUNTEMPTY: geometry-board counter, as BEF_PERF_COUNTALL: printed
 * by kpm's BEF dump, written by nothing (same routes). unknown: no shipped
 * software or published source depends on what it counts. */
#define KONA_RM_BEF_PERF_COUNTEMPTY                      0x0005

/* BEF_MAILBOX: geometry-board word printed by kpm's BEF dump next to the
 * counters; no writer in irsaudit, the vector files, arm1.u or ge.u.
 * unknown: no shipped software or published source depends on it. */
#define KONA_RM_BEF_MAILBOX                              0x0006

#define KONA_RM_BEF_REGSHADOW_BMASK                      0x0007

/*
 * BEF_REGSHADOW (index 0x100) is the base of the back-end chip's 89-word register shadow, inferred
 * from the table size. Established, 6.5.30m: `init_befshadow` (0x0c01fc80, arm1.u) streams the 89 words
 * of `befsh_init` to the engine data port, and the loop `arm_slop` writes all 89 registers through
 * index 0x100 plus the slot number. Inferred from docs/rm.md: a context switch keeps this shadow.
 */
#define KONA_RM_BEF_REGSHADOW                            0x0100

/*
 * BEF_REGSHADOW_READ (index 0x200) reads shadow slot n at index 0x200 + n. Established, 6.5.30m:
 * irsaudit `TEST_befshadow` (0x1005da64) loads the read and write index bases at 0x1005e0dc-0x1005e0f4
 * and calls `tbRegWrite` with an index of 0x200 plus the slot and the word 0x476 in bits 32-47,
 * to read the slot back after writing a test pattern through the write index (below).
 */
#define KONA_RM_BEF_REGSHADOW_READ                       0x0200

/*
 * BEF_REGSHADOW_WRITE (index 0x300) writes shadow slot n at index 0x300 + n. Established,
 * 6.5.30m: irsaudit `TEST_befshadow` (0x1005da64) loads the constant 768 at 0x1005e0dc and calls
 * `tbRegWrite` for each of 256 slots with 0x476 in bits 32-47 and a test pattern below, treating the
 * shadow as a 256-word RAM, then reads each slot back through the read index (0x200 + slot).
 */
#define KONA_RM_BEF_REGSHADOW_WRITE                      0x0300

/*
 * HTL_LOAD_STALL (index 0x44a8), 6.5.30m. Unknown: no shipped software or published source
 * depends on it. Only kpm's raster table names it. Routes tried: irsaudit (no constant of this index
 * reaches `tbRegWrite`), the ARM firmware arm1.u, the engine program ge.u and the vector files.
 */
#define KONA_RM_HTL_LOAD_STALL                           0x44a8

/*
 * TG_DNOP (index 0xc00), the no-op slot of the texture-generator block. Unknown: no shipped
 * software or published source depends on it. Routes tried: irsaudit (no write; the restore routine
 * `tbuRegReset`, 0x10154cb4, skips every action register), kpm, arm1.u, ge.u and the vector files.
 */
#define KONA_RM_TG_DNOP                                  0x0c00

/*
 * TG_FIFOLAT (index 0xc01), texture-generator FIFO latency, a 6-bit LATENCY field. Established,
 * 6.5.30m: irsaudit `tbuRegReset` (0x10154cb4) writes 0 to it. Inferred from the name: the field sets how
 * many cycles the unit's FIFO delays its output. No other program writes it; what non-zero values do is
 * not stated by any shipped software. Routes tried: irsaudit, arm1.u, ge.u and the vector files.
 */
#define KONA_RM_TG_FIFOLAT                               0x0c01
#define KONA_RM_TG_LATENCY                                0,  6  /* shift, width */

#define KONA_RM_TG_MISC                                  0x0c02
#define KONA_RM_TG_PRIORITY                               0,  1  /* shift, width */
#define KONA_RM_TG_COMPRESS                               1,  1  /* shift, width */

#define KONA_RM_TG_MAP_LEVEL                             0x0c04
#define KONA_RM_TG_MAP_LEVEL_TEX_MINLEVEL                 0, 10  /* shift, width */
#define KONA_RM_TG_MAP_LEVEL_TEX_MAXLEVEL                10, 10  /* shift, width */

#define KONA_RM_TG_LOD_SCALEST                           0x0c05
#define KONA_RM_TG_LOD_SCALEST_LOD_SCALES                 0,  8  /* shift, width */
#define KONA_RM_TG_LOD_SCALEST_LOD_SCALET                 8,  8  /* shift, width */

#define KONA_RM_TG_LOD_SCALER                            0x0c06
#define KONA_RM_TG_LOD_SCALER_LOD_SCALER                  0,  8  /* shift, width */

/* TM_MEMCONF: texture-memory geometry (S_BITS, T_BITS). ESTABLISHED:
 * irsaudit tbuBindTexture (0x1014c6a8) and tbuBindTextureCCT write it during
 * a bind; tbuRegReset (0x10154cb4) restores 0. The firmware and engine reach
 * it through engine memory slot 0x247 (GE.h). */
#define KONA_RM_TM_MEMCONF                               0x1000
#define KONA_RM_TM_S_BITS                                 0,  4  /* shift, width */
#define KONA_RM_TM_T_BITS                                 4,  4  /* shift, width */

/* TM_REFCTR: texture-memory DRAM refresh counter (10-bit value) with refresh
 * and page-miss disables. ESTABLISHED: only tbuRegReset (0x10154cb4) writes
 * it, value 0. Hardware refresh rate and the effect of the disables:
 * unknown: no shipped software or published source depends on them beyond
 * that write. */
#define KONA_RM_TM_REFCTR                                0x1001
#define KONA_RM_TM_REFCTRVALUE                            0, 10  /* shift, width */
#define KONA_RM_TM_REFDIS                                10,  1  /* shift, width */
#define KONA_RM_TM_PAGEMISSDIS                           11,  1  /* shift, width */

#define KONA_RM_TM_SYNC_WAITLOAD                         0x1002
#define KONA_RM_TM_WAIT_ON_LOAD_ID                        0, 20  /* shift, width */

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

/* TM_DRAW_TEXMAP_2_3: levels 2 and 3, same layout and writers as
 * TM_DRAW_TEXMAP_0_1 (ge.u template 0x10050000 at 0xb0d2). */
#define KONA_RM_TM_DRAW_TEXMAP_2_3                       0x1005
#define KONA_RM_TM_TEXMAP_2                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_2_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3_HIGH                         45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_4_5: levels 4 and 5, same layout and writers as
 * TM_DRAW_TEXMAP_0_1 (ge.u template 0x10060000). */
#define KONA_RM_TM_DRAW_TEXMAP_4_5                       0x1006
#define KONA_RM_TM_TEXMAP_4                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_4_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_5                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_5_HIGH                         45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_6_7: levels 6 and 7, same layout and writers as
 * TM_DRAW_TEXMAP_0_1 (ge.u template 0x10070000); tbusdata.Z writes
 * 0xffffffff here 87 times. */
#define KONA_RM_TM_DRAW_TEXMAP_6_7                       0x1007
#define KONA_RM_TM_TEXMAP_6                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_6_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_7                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_7_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_8_9 (index 0x1008): texture-memory base addresses of mip levels 8 and 9, one
 * 21-bit address and 3 high bits each. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8)
 * writes it with the other level registers, and `tbuRegReset` (0x10154cb4) restores 0.
 * Inferred from the field names and the order: the texture unit reads the base of a level from here.
 */
#define KONA_RM_TM_DRAW_TEXMAP_8_9                       0x1008
#define KONA_RM_TM_TEXMAP_8                               0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_8_HIGH                         21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_9                              24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_9_HIGH                         45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_10_11 (index 0x1009): texture-memory base addresses of mip levels 10 and 11, one
 * 21-bit address and 3 high bits each. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8)
 * writes it with the other level registers, and `tbuRegReset` (0x10154cb4) restores 0.
 * Inferred from the field names and the order: the texture unit reads the base of a level from here.
 */
#define KONA_RM_TM_DRAW_TEXMAP_10_11                     0x1009
#define KONA_RM_TM_TEXMAP_10                              0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_10_HIGH                        21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_11                             24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_11_HIGH                        45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_12_13 (index 0x100a): texture-memory base addresses of mip levels 12 and 13, one
 * 21-bit address and 3 high bits each. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8)
 * writes it with the other level registers, and `tbuRegReset` (0x10154cb4) restores 0.
 * Inferred from the field names and the order: the texture unit reads the base of a level from here.
 */
#define KONA_RM_TM_DRAW_TEXMAP_12_13                     0x100a
#define KONA_RM_TM_TEXMAP_12                              0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_12_HIGH                        21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_13                             24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_13_HIGH                        45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_14_15: levels 14 and 15, same layout and writers as
 * TM_DRAW_TEXMAP_0_1 (ge.u template 0x100b0000). */
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

/* TM_DRAW_TEXMAP_3DM_1: 3D level 1, as TM_DRAW_TEXMAP_3DM_0 (irsaudit
 * tbuBindTexture, restore value 0). */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_1                     0x100d
#define KONA_RM_TM_TEXMAP_3DM_1_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_1_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_1_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_1_B1_HIGH                  45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_3DM_2: 3D level 2, as TM_DRAW_TEXMAP_3DM_0 (irsaudit
 * tbuBindTexture, restore value 0). */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_2                     0x100e
#define KONA_RM_TM_TEXMAP_3DM_2_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_2_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_2_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_2_B1_HIGH                  45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_3DM_3: 3D level 3, as TM_DRAW_TEXMAP_3DM_0 (irsaudit
 * tbuBindTexture, restore value 0). */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_3                     0x100f
#define KONA_RM_TM_TEXMAP_3DM_3_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_3_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_3_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_3_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_4 (index 0x1010): addresses of 3D-texture level 4, two banks of 21 bits plus
 * 3 high bits. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8) writes it on its 3D path
 * and `tbuRegReset` (0x10154cb4) restores 0. Inferred: one register per 3D level, laid out as level 0.
 */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_4                     0x1010
#define KONA_RM_TM_TEXMAP_3DM_4_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_4_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_4_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_4_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_5 (index 0x1011): addresses of 3D-texture level 5, two banks of 21 bits plus
 * 3 high bits. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8) writes it on its 3D path
 * and `tbuRegReset` (0x10154cb4) restores 0. Inferred: one register per 3D level, laid out as level 0.
 */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_5                     0x1011
#define KONA_RM_TM_TEXMAP_3DM_5_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_5_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_5_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_5_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_6 (index 0x1012): addresses of 3D-texture level 6, two banks of 21 bits plus
 * 3 high bits. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8) writes it on its 3D path
 * and `tbuRegReset` (0x10154cb4) restores 0. Inferred: one register per 3D level, laid out as level 0.
 */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_6                     0x1012
#define KONA_RM_TM_TEXMAP_3DM_6_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_6_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_6_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_6_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_7 (index 0x1013): addresses of 3D-texture level 7, two banks of 21 bits plus
 * 3 high bits. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8) writes it on its 3D path
 * and `tbuRegReset` (0x10154cb4) restores 0. Inferred: one register per 3D level, laid out as level 0.
 */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_7                     0x1013
#define KONA_RM_TM_TEXMAP_3DM_7_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_7_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_7_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_7_B1_HIGH                  45,  3  /* shift, width */

/*
 * TM_DRAW_TEXMAP_3DM_8 (index 0x1014): addresses of 3D-texture level 8, two banks of 21 bits plus
 * 3 high bits. Established, 6.5.30m: irsaudit `tbuBindTexture` (0x1014c6a8) writes it on its 3D path
 * and `tbuRegReset` (0x10154cb4) restores 0. Inferred: one register per 3D level, laid out as level 0.
 */
#define KONA_RM_TM_DRAW_TEXMAP_3DM_8                     0x1014
#define KONA_RM_TM_TEXMAP_3DM_8_B0                        0, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_8_B0_HIGH                  21,  3  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_8_B1                       24, 21  /* shift, width */
#define KONA_RM_TM_TEXMAP_3DM_8_B1_HIGH                  45,  3  /* shift, width */

/* TM_DRAW_TEXMAP_3DM_9: 3D level 9, as TM_DRAW_TEXMAP_3DM_0 (irsaudit
 * tbuBindTexture, restore value 0). */
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

/* TM_DRAW_CUBEMAP_LFTRGHT: left and right cube faces, same writers as
 * TM_DRAW_CUBEMAP_FAR. */
#define KONA_RM_TM_DRAW_CUBEMAP_LFTRGHT                  0x1017
#define KONA_RM_TM_CUBEMAP_LEFT                           0, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_LEFT_HIGH                     21,  3  /* shift, width */
#define KONA_RM_TM_CUBEMAP_RIGHT                         24, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_RIGHT_HIGH                    45,  3  /* shift, width */

/* TM_DRAW_CUBEMAP_TOPBOT: top and bottom cube faces, same writers as
 * TM_DRAW_CUBEMAP_FAR. */
#define KONA_RM_TM_DRAW_CUBEMAP_TOPBOT                   0x1018
#define KONA_RM_TM_CUBEMAP_TOP                            0, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_TOP_HIGH                      21,  3  /* shift, width */
#define KONA_RM_TM_CUBEMAP_BOT                           24, 21  /* shift, width */
#define KONA_RM_TM_CUBEMAP_BOT_HIGH                      45,  3  /* shift, width */

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

/* TM_RDBK_STRSTART: texture read-back start position (s, t, r). ESTABLISHED:
 * irsaudit tbuStartTMReadback (0x1014344c), TEST_texread and TestTex write
 * STEND, then STRSTART (0), then TM_RDBK_END; never in the restore list. */
#define KONA_RM_TM_RDBK_STRSTART                         0x101b
#define KONA_RM_TM_RDBK_S_START                           0, 12  /* shift, width */
#define KONA_RM_TM_RDBK_S_START_HIGH                     12,  4  /* shift, width */
#define KONA_RM_TM_RDBK_T_START                          16, 15  /* shift, width */
#define KONA_RM_TM_RDBK_T_START_HIGH                     31,  1  /* shift, width */
#define KONA_RM_TM_RDBK_R_START                          32, 10  /* shift, width */
#define KONA_RM_TM_RDBK_R_START_HIGH                     42,  6  /* shift, width */

/* TM_RDBK_STEND: texture read-back end position (s, t). ESTABLISHED:
 * TEST_texread writes 0x1f0003 (S_END 3, T_END 0x1f), TestTex 0x70001;
 * written before TM_RDBK_STRSTART. */
#define KONA_RM_TM_RDBK_STEND                            0x101c
#define KONA_RM_TM_RDBK_S_END                             0, 12  /* shift, width */
#define KONA_RM_TM_RDBK_S_END_HIGH                       12,  4  /* shift, width */
#define KONA_RM_TM_RDBK_T_END                            16, 15  /* shift, width */
#define KONA_RM_TM_RDBK_T_END_HIGH                       31,  1  /* shift, width */

/* TM_RDBK_END: starts the texture read-back. ESTABLISHED: the last write of
 * every read-back set-up (TEST_texread, TestTex, tbuStartTMReadback), value
 * 1; no fields. INFERRED from that order to be the trigger. */
#define KONA_RM_TM_RDBK_END                              0x101d

#define KONA_RM_TM_DRAW_SHA_AMBIENT                      0x101e
#define KONA_RM_TM_SHA_AMBIENT                            0,  6  /* shift, width */

#define KONA_RM_TM_DRAW_REDUNDANCY                       0x101f
#define KONA_RM_TM_REDUNDANCY                             0,  1  /* shift, width */

#define KONA_RM_TM_DRAW_CLIP_OFFSET                      0x1020
#define KONA_RM_TM_CLIP_S_OFFSET                          0, 16  /* shift, width */
#define KONA_RM_TM_CLIP_T_OFFSET                         16, 16  /* shift, width */

#define KONA_RM_TM_DRAW_CLIP_BKPT                        0x1021
#define KONA_RM_TM_CLIP_BKPT                              0,  4  /* shift, width */

/* TM_TEXBIND_START: marks the start of a texture bind. ESTABLISHED: the
 * first register irsaudit tbuBindTexture and tbuBindTextureCCT write;
 * tbusdata.Z writes 0 here 87 times; never restored. INFERRED (order and
 * name) to delimit a bind; no fields. */
#define KONA_RM_TM_TEXBIND_START                         0x1022

/* TM_TM1A_COMPAT: tm1a compatibility bits (HWMK, SFIFO). ESTABLISHED: only
 * tbuRegReset (0x10154cb4) writes it, value 0. Effect of the bits: unknown:
 * no shipped software or published source depends on it. */
#define KONA_RM_TM_TM1A_COMPAT                           0x1023
#define KONA_RM_TM_TM1A_COMPAT_TM1A_COMPAT_HWMK           0,  1  /* shift, width */
#define KONA_RM_TM_TM1A_COMPAT_TM1A_COMPAT_SFIFO          1,  1  /* shift, width */

/*
 * TM_DNOP (index 0x102f), the texture-memory no-op. Established, 6.5.30m: irsaudit `TEST_texread`
 * loads 4143 twice, between the read-back start and end registers, and writes 1 to it. Inferred: the
 * two writes pad the stream so the earlier register writes finish before the read-back ends.
 */
#define KONA_RM_TM_DNOP                                  0x102f

#define KONA_RM_TM_TEX_SIZE                              0x13d5
#define KONA_RM_TM_SSIZE                                  0,  4  /* shift, width */
#define KONA_RM_TM_TSIZE                                  4,  4  /* shift, width */
#define KONA_RM_TM_RSIZE                                  8,  4  /* shift, width */
#define KONA_RM_TM_SAC                                   12,  1  /* shift, width */
#define KONA_RM_TM_TAC                                   13,  1  /* shift, width */
#define KONA_RM_TM_RAC                                   14,  1  /* shift, width */

/*
 * TML_TEXLD_BASEADDR (index 0x5000): the texture-memory load address, an even and an odd 24-bit
 * address of 21 low and 3 high bits. Established, 6.5.30m: irsaudit `tbuLoadTexture`, `tbuLoadMipmap`
 * and `tbuLoadBicubic` write it before each load and `tbuRegReset` (0x10154cb4) restores 0.
 * Inferred from the field names: the two addresses say where loaded texel rows land in the even
 * and odd memory banks.
 */
#define KONA_RM_TML_TEXLD_BASEADDR                       0x5000
#define KONA_RM_TML_BASEADDR_EVEN                         0, 21  /* shift, width */
#define KONA_RM_TML_BASEADDR_EVEN_HIGH                   21,  3  /* shift, width */
#define KONA_RM_TML_BASEADDR_ODD                         24, 21  /* shift, width */
#define KONA_RM_TML_BASEADDR_ODD_HIGH                    45,  3  /* shift, width */

#define KONA_RM_TML_TEXLD_GLOBALOFFSET                   0x5001
#define KONA_RM_TML_GLOBALOFFSET                          0, 21  /* shift, width */
#define KONA_RM_TML_GLOBALOFFSET_HIGH                    21,  3  /* shift, width */

#define KONA_RM_TML_SYNC_WAITDRAW                        0x5002
#define KONA_RM_TML_WAIT_ON_DRAW_ID                       0, 20  /* shift, width */

#define KONA_RM_TML_SYNC_IDLOAD                          0x5003
#define KONA_RM_TML_LOAD_ID                               0, 20  /* shift, width */

/* TML_TM1A_COMPAT: load-side twin of TM_TM1A_COMPAT. ESTABLISHED: only
 * tbuRegReset (0x10154cb4) writes it (0). unknown: no shipped software or
 * published source depends on it. */
#define KONA_RM_TML_TM1A_COMPAT                          0x5004
#define KONA_RM_TML_COMPAT                                0,  1  /* shift, width */

/*
 * TML_RAMSYNC (index 0x53ff), load-side RAM synchronisation by name. Unknown: no shipped software
 * or published source depends on it. Routes tried: irsaudit, kpm, arm1.u, ge.u and the vector files;
 * none writes the index.
 */
#define KONA_RM_TML_RAMSYNC                              0x53ff

/* TFP_TEX: texture enable in the filter (TEX_EN). ESTABLISHED: irsaudit
 * tbuTexOnOff, TEST_texread (1, then 0 after the read-back) and TEST_texmem*
 * write it; tbuRegReset (0x10154cb4) restores 0; in the BEF shadow (GE.h). */
#define KONA_RM_TFP_TEX                                  0x1500
#define KONA_RM_TFP_TEX_EN                                0,  1  /* shift, width */

/*
 * TFP_PASSR (index 0x153e): one PASSR_EN bit that passes the r texture coordinate through the filter.
 * Established, 6.5.30m: irsaudit `tbuEnablePassR` (0x10143714) writes it beside the redundancy and
 * texture-generator registers, `tbuEnablePassRCCT` (0x10143cd8) too, and `tbuRegReset` (0x10154cb4) restores 0.
 * The meaning is inferred from the name.
 */
#define KONA_RM_TFP_PASSR                                0x153e
#define KONA_RM_TFP_PASSR_EN                              0,  1  /* shift, width */

/*
 * TFP_TEXRB (index 0x153f): texture read-back format, a 2-bit FMT field with 16-bit and 32-bit
 * codes. Established, 6.5.30m: irsaudit `TEST_texread` and `TestTex` write it around texture read-back. Inferred: the format sets the width of each texel word returned to the host.
 */
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

#define KONA_RM_TFP_TEV_CC                               0x1402
#define KONA_RM_TFP_TEV_CC_G                              0, 12  /* shift, width */
#define KONA_RM_TFP_TEV_CC_R                             12, 12  /* shift, width */

#define KONA_RM_TFP_TEV_CC1                              0x1413
#define KONA_RM_TFP_TEV_CC1_A                             0, 12  /* shift, width */
#define KONA_RM_TFP_TEV_CC1_B                            12, 12  /* shift, width */

#define KONA_RM_TFP_FOG                                  0x1403
#define KONA_RM_TFP_FOG_CMODE                             0,  4  /* shift, width */
#define KONA_RM_TFP_FOG_FMODE                             4,  4  /* shift, width */
#define KONA_RM_TFP_FOG_ADDR                              8,  8  /* shift, width */
#define KONA_RM_TFP_FOG_ONE_LUT                          16,  1  /* shift, width */
#define KONA_RM_TFP_FOG_CI                               17,  1  /* shift, width */
#define KONA_RM_TFP_FOG_EN_OFFSET                        18,  1  /* shift, width */
#define KONA_RM_TFP_FOG_EN_CENT                          19,  1  /* shift, width */
#define KONA_RM_TFP_FOG_EN                               20,  1  /* shift, width */

#define KONA_RM_TFP_FOG_CC                               0x1404
#define KONA_RM_TFP_FOG_CC_G                              0, 12  /* shift, width */
#define KONA_RM_TFP_FOG_CC_R                             12, 12  /* shift, width */

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

#define KONA_RM_TFP_FOG_OFFSET                           0x1406
#define KONA_RM_TFP_FOG_OFFSET_Z                          0, 32  /* shift, width */

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

#define KONA_RM_TFP_AMASK                                0x1408
#define KONA_RM_TFP_AMASK_A2M_EN                          0,  1  /* shift, width */
#define KONA_RM_TFP_AMASK_FADE_MASK_EN                    1,  1  /* shift, width */
#define KONA_RM_TFP_AMASK_A2ONE_EN                        2,  1  /* shift, width */

/* TFP_A2M_LUT0: alpha-to-mask table, entries 0-3 (8-bit masks). ESTABLISHED:
 * tbusdata.Z writes 0x13110100 after TFP_AC; restore value 0 (tbuRegReset
 * (0x10154cb4)). */
#define KONA_RM_TFP_A2M_LUT0                             0x1409
#define KONA_RM_TFP_A2M_LUT0_N0                           0,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT0_N1                           8,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT0_N2                          16,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT0_N3                          24,  8  /* shift, width */

/* TFP_A2M_LUT1: alpha-to-mask table, entries 4-8. ESTABLISHED: tbusdata.Z
 * writes 0xff7f773733. INFERRED: with LUT0 the nine bytes 00 01 11 13 33 37
 * 77 7f ff set 0..8 of 8 sample bits, so alpha selects a coverage mask
 * (enabled by TFP_AMASK A2M_EN). */
#define KONA_RM_TFP_A2M_LUT1                             0x140a
#define KONA_RM_TFP_A2M_LUT1_N0                           0,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N1                           8,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N2                          16,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N3                          24,  8  /* shift, width */
#define KONA_RM_TFP_A2M_LUT1_N4                          32,  8  /* shift, width */

#define KONA_RM_TFP_FADE_MASK_LUT                        0x140b
#define KONA_RM_TFP_FADE_MASK_LUT_N0                      0,  8  /* shift, width */
#define KONA_RM_TFP_FADE_MASK_LUT_N1                      8,  8  /* shift, width */
#define KONA_RM_TFP_FADE_MASK_LUT_N2                     16,  8  /* shift, width */
#define KONA_RM_TFP_FADE_MASK_LUT_N3                     24,  8  /* shift, width */

/*
 * TFP_AE (index 0x150c): read-back mode for the TFP_AE_RANGE rectangle, a mode field and a format
 * field. Established, 6.5.30m: irsaudit `TEST_readback` writes mode 2 with each of three formats, and
 * `TEST_rbstress` and `TEST_framebuf` write mode 2 with format 1, so the register chooses
 * how pixels inside the rectangle come back to the host.
 */
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

/* TFP_AE_RANGE: pixel read-back rectangle (x and y start and end, 12 bits
 * each). ESTABLISHED: irsaudit TEST_readback, TEST_rbstress (0x1ff1ff: x and
 * y 0-511), TEST_framebuf, crc_tex1_load and levelizeMipmap write it just
 * before TFP_AE; restore value 0. */
#define KONA_RM_TFP_AE_RANGE                             0x140d
#define KONA_RM_TFP_AE_RANGE_YEND                         0, 12  /* shift, width */
#define KONA_RM_TFP_AE_RANGE_XEND                        12, 12  /* shift, width */
#define KONA_RM_TFP_AE_RANGE_YSTART                      24, 12  /* shift, width */
#define KONA_RM_TFP_AE_RANGE_XSTART                      36, 12  /* shift, width */

#define KONA_RM_TFP_AC                                   0x140e
#define KONA_RM_TFP_AC_DGBASE                             0, 12  /* shift, width */
#define KONA_RM_TFP_AC_DGTPL                             12,  5  /* shift, width */

#define KONA_RM_TFP_COLOR_FMT                            0x140f
#define KONA_RM_TFP_COLOR_FMT_LA                          0,  1  /* shift, width */

#define KONA_RM_TFP_PIX_FMT                              0x1410
#define KONA_RM_TFP_PIX_FMT_LA                            0,  1  /* shift, width */

/* TFP_NOP: tf no-op. ESTABLISHED: ge.u mgesi_FlushRM (0x3824) loads 0x1411
 * after IMP_NOP. INFERRED: the flush pushes no-ops through the filter; no
 * field, never restored. */
#define KONA_RM_TFP_NOP                                  0x1411

/* TFP_FAKE: test register with a 12-bit TEST_ID. ESTABLISHED: only
 * tbuRegReset (0x10154cb4) writes it (0). unknown: no shipped software or
 * published source depends on its effect. */
#define KONA_RM_TFP_FAKE                                 0x1412
#define KONA_RM_TFP_FAKE_TEST_ID                          0, 12  /* shift, width */

/*
 * TFT_EXTRAP (index 0x1800, a block of 16 registers to 0x180f): the sharpen (extrapolation)
 * curve, four 10-bit codes N0-N3 in 40 bits per register. Established, 6.5.30m: irsaudit
 * `tbuRegReset` (0x10154cb4) writes 0 to it; arm1.u `sendTexTable` (0x0c02539c) writes all 16 from
 * a table record that libGLcore `bindTexTable` sent with token 0x17e, bits 32-39 travelling in the
 * low byte of the raster-bus address word (`tbus_write_word`). libGLcore's getS2p7 codes (an 8-bit
 * mantissa and a 2-bit exponent, packed c0 | c1 << 10 | c2 << 20 | c3 << 30 and c3 >> 2) fill
 * exactly these fields. `arm_bind_texture` (0x0c0258cc) and `activate_texture` send kind 2 here.
 */
#define KONA_RM_TFT_EXTRAP                               0x1800
#define KONA_RM_TFT_EXTRAP_N0                             0, 10  /* shift, width */
#define KONA_RM_TFT_EXTRAP_N1                            10, 10  /* shift, width */
#define KONA_RM_TFT_EXTRAP_N2                            20, 10  /* shift, width */
#define KONA_RM_TFT_EXTRAP_N3                            30, 10  /* shift, width */

/*
 * TFT_DETAILTEX (index 0x1810, a block of 16 registers to 0x181f): the detail-texture curve,
 * packed like TFT_EXTRAP. Established, 6.5.30m: irsaudit `tbuRegReset` (0x10154cb4) writes 0 to it;
 * arm1.u `sendTexTable` (0x0c02539c) writes the 16 registers for table kind 1 from the same
 * record form, which libGLcore fills from the same spline routine as the sharpen curve.
 */
#define KONA_RM_TFT_DETAILTEX                            0x1810
#define KONA_RM_TFT_DETAILTEX_N0                          0, 10  /* shift, width */
#define KONA_RM_TFT_DETAILTEX_N1                         10, 10  /* shift, width */
#define KONA_RM_TFT_DETAILTEX_N2                         20, 10  /* shift, width */
#define KONA_RM_TFT_DETAILTEX_N3                         30, 10  /* shift, width */

/*
 * TFT_BICUBIC (index 0x1820, a block of 33 registers to 0x1840): the bicubic filter weights,
 * four signed 8-bit values K0K4..K3K7 per register. Established, 6.5.30m: irsaudit `tbuRegReset`
 * (0x10154cb4) writes 0 to it; arm1.u `sendTexTable` (0x0c02539c) writes all 33 words of a kind-0
 * table record, one per register. libGLcore's getS0p7 packs its 129 weights four to a word as 1.7
 * fixed-point bytes, which is 33 words with the last three bytes unused.
 */
#define KONA_RM_TFT_BICUBIC                              0x1820
#define KONA_RM_TFT_BICUBIC_K0K4                          0,  8  /* shift, width */
#define KONA_RM_TFT_BICUBIC_K1K5                          8,  8  /* shift, width */
#define KONA_RM_TFT_BICUBIC_K2K6                         16,  8  /* shift, width */
#define KONA_RM_TFT_BICUBIC_K3K7                         24,  8  /* shift, width */

/* TFT_SBIAS_EN: per-component scale-and-bias enables (A, B, G, R).
 * ESTABLISHED: irsaudit my_glKonTexParameter writes it with TFT_SCALE and
 * TFT_BIAS; tbuRegReset (0x10154cb4) restores 0; in the BEF shadow (GE.h). */
#define KONA_RM_TFT_SBIAS_EN                             0x1850
#define KONA_RM_TFT_SBIAS_EN_A                            0,  1  /* shift, width */
#define KONA_RM_TFT_SBIAS_EN_B                            1,  1  /* shift, width */
#define KONA_RM_TFT_SBIAS_EN_G                            2,  1  /* shift, width */
#define KONA_RM_TFT_SBIAS_EN_R                            3,  1  /* shift, width */

/* TFT_SCALE: per-component 8-bit texel scale, enabled by TFT_SBIAS_EN.
 * ESTABLISHED: irsaudit my_glKonTexParameter writes it; tbuRegReset
 * (0x10154cb4) restores 0. */
#define KONA_RM_TFT_SCALE                                0x1851
#define KONA_RM_TFT_SCALE_A                               0,  8  /* shift, width */
#define KONA_RM_TFT_SCALE_B                               8,  8  /* shift, width */
#define KONA_RM_TFT_SCALE_G                              16,  8  /* shift, width */
#define KONA_RM_TFT_SCALE_R                              24,  8  /* shift, width */

/* TFT_BIAS: per-component 8-bit texel bias, enabled by TFT_SBIAS_EN.
 * ESTABLISHED: irsaudit my_glKonTexParameter writes it; tbuRegReset
 * (0x10154cb4) restores 0; tbusdata.Z writes it 50 times right before
 * TM_TEXBIND_START. */
#define KONA_RM_TFT_BIAS                                 0x1852
#define KONA_RM_TFT_BIAS_A                                0,  8  /* shift, width */
#define KONA_RM_TFT_BIAS_B                                8,  8  /* shift, width */
#define KONA_RM_TFT_BIAS_G                               16,  8  /* shift, width */
#define KONA_RM_TFT_BIAS_R                               24,  8  /* shift, width */

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

/* TFT_TEXRB: tft side of a texture read-back. ESTABLISHED: TEST_texread and
 * TestTex write 1 right after TFP_TEXRB (0x153f), before the TM_RDBK_ set-
 * up; never restored. */
#define KONA_RM_TFT_TEXRB                                0x1855

/* TFT_NOP: tft no-op by name. No writer in irsaudit, kpm, arm1.u, ge.u or
 * the vectors (vector hits are data words). unknown: no shipped software or
 * published source depends on it. */
#define KONA_RM_TFT_NOP                                  0x1856

/* TFT_FAKE: test register, as TFP_FAKE. ESTABLISHED: only tbuRegReset
 * (0x10154cb4) writes it (0). unknown: no shipped software or published
 * source depends on it. */
#define KONA_RM_TFT_FAKE                                 0x1857
#define KONA_RM_TFT_FAKE_TEST_ID                          0, 12  /* shift, width */

/*
 * TFT_EOR (index 0x1858), the end marker of the texture-filter block by name. Unknown: no shipped
 * software or published source depends on it. Routes tried: irsaudit, kpm, arm1.u (including
 * `sendTexTable`, whose writes stop at 0x1840), ge.u, libGLcore's table senders and the vector
 * files; no program writes or reads it.
 */
#define KONA_RM_TFT_EOR                                  0x1858

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

#define KONA_RM_IMP_CLIP                                 0x1c06
#define KONA_RM_IMP_CLIP_ENABLE                           0,  1  /* shift, width */
#define KONA_RM_IMP_CLIP_REF                              1, 12  /* shift, width */
#define KONA_RM_IMP_CLIP_MASK                            13, 12  /* shift, width */

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

#define KONA_RM_IMP_DEPTH_CLEAR                          0x1c09

/* IMP_TAG_CLEAR: imp tag-clear value. ESTABLISHED: only tbuRegReset
 * (0x10154cb4) writes it (0). unknown: no shipped software or published
 * source depends on the field layout. */
#define KONA_RM_IMP_TAG_CLEAR                            0x1c0a

#define KONA_RM_IMP_ADDR                                 0x1c0b
#define KONA_RM_IMP_ADDR_CBASE                            0,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_MBASE                            6,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_MTAG                            12,  1  /* shift, width */
#define KONA_RM_IMP_ADDR_MTAG_A                          0x0
#define KONA_RM_IMP_ADDR_MTAG_B                          0x1
#define KONA_RM_IMP_ADDR_SBASE                           13,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_ZBASE                           19,  6  /* shift, width */
#define KONA_RM_IMP_ADDR_ABASE                           25,  6  /* shift, width */

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

#define KONA_RM_IMP_FLAG                                 0x1c0f

#define KONA_RM_IMP_USER_COLOR                           0x1c10
#define KONA_RM_IMP_USER_COLOR_RED                        0, 12  /* shift, width */
#define KONA_RM_IMP_USER_COLOR_GREEN                     12, 12  /* shift, width */
#define KONA_RM_IMP_USER_COLOR_BLUE                       0, 12  /* shift, width */
#define KONA_RM_IMP_USER_COLOR_ALPHA                     12, 12  /* shift, width */

/*
 * IMP_CLEAR_COLOR (index 0x1c12): the clear colour, two words of 12-bit components (red and
 * green, then blue and alpha). Established, 6.5.30m: irsaudit `init_clear_color` writes it before
 * clears and `tbuRegReset` (0x10154cb4) restores 0. Inferred from the name: the image processor
 * writes this colour into the framebuffer when it clears.
 */
#define KONA_RM_IMP_CLEAR_COLOR                          0x1c12
#define KONA_RM_IMP_CLEAR_COLOR_RED                       0, 12  /* shift, width */
#define KONA_RM_IMP_CLEAR_COLOR_GREEN                    12, 12  /* shift, width */
#define KONA_RM_IMP_CLEAR_COLOR_BLUE                      0, 12  /* shift, width */
#define KONA_RM_IMP_CLEAR_COLOR_ALPHA                    12, 12  /* shift, width */

#define KONA_RM_IMP_WMASK_BIT                            0x1c14
#define KONA_RM_IMP_WMASK_BIT_RED                         0, 12  /* shift, width */
#define KONA_RM_IMP_WMASK_BIT_GREEN                      12, 12  /* shift, width */
#define KONA_RM_IMP_WMASK_BIT_BLUE                        0, 12  /* shift, width */
#define KONA_RM_IMP_WMASK_BIT_ALPHA                      12, 12  /* shift, width */

/*
 * IMP_RAMSYNC (index 0x1c3f), RAM synchronisation of the image processor by name. Unknown: no
 * shipped software or published source depends on it beyond the vector file aaspoke.tbus, which
 * writes 1 twice. Routes tried: irsaudit code, arm1.u, ge.u and the restore routine, none of which
 * writes it.
 */
#define KONA_RM_IMP_RAMSYNC                              0x1c3f

/*
 * IMP_FAKE_DRAW_OFFSET (index 0x1c3e): a test-mode draw offset of 12-bit x and y. Established,
 * 6.5.30m: only irsaudit `tbuRegReset` (0x10154cb4) writes it, with 0. Inferred from the name: a
 * non-zero value would shift where drawing lands, for tests. No other program writes it.
 */
#define KONA_RM_IMP_FAKE_DRAW_OFFSET                     0x1c3e
#define KONA_RM_IMP_FAKE_DRAW_OFFSET_X                    0, 12  /* shift, width */
#define KONA_RM_IMP_FAKE_DRAW_OFFSET_Y                   12, 12  /* shift, width */

/* IMP_FAKE_DRAWMODE: test-mode draw mode (SRGBA, RGBA, MSK, Z). ESTABLISHED:
 * only tbuRegReset (0x10154cb4) writes it (0). unknown: no shipped software
 * or published source depends on it. */
#define KONA_RM_IMP_FAKE_DRAWMODE                        0x1c3d
#define KONA_RM_IMP_FAKE_DRAWMODE_DM                      0,  2  /* shift, width */
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_SRGBA               0x0
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_RGBA                0x1
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_MSK                 0x2
#define KONA_RM_IMP_FAKE_DRAWMODE_DM_Z                   0x3

/* IMP_FAKE_SIMPLE_FB_ORIGIN: test-mode framebuffer origin, x high and y low.
 * ESTABLISHED: restore value 0; aaspoke.tbus and tbusdata.Z write 0x3ff (0,
 * 1023) and 0x01400100 (320, 256). */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_ORIGIN                0x1c3c
#define KONA_RM_IMP_FAKE_SIMPLE_FB_ORIGIN_YORG            0, 16  /* shift, width */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_ORIGIN_XORG           16, 16  /* shift, width */

/* IMP_FAKE_SIMPLE_FB_SIZE: test-mode framebuffer size, width high and height
 * low. ESTABLISHED: tbuRegReset (0x10154cb4) restores 0x028001e0 (640 x
 * 480); tbusdata.Z writes 0x05000400 (1280 x 1024). */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_SIZE                  0x1c3b
#define KONA_RM_IMP_FAKE_SIMPLE_FB_SIZE_YSIZE             0, 16  /* shift, width */
#define KONA_RM_IMP_FAKE_SIMPLE_FB_SIZE_XSIZE            16, 16  /* shift, width */

/* IMP_NOP: imp no-op. ESTABLISHED: ge.u mgesi_FlushRM (0x3810) and
 * mgeb_ComputeMSPointTables (0x5c50) load 0x1c3a; irsaudit crc_pgtest
 * (0x100d47d4) writes it in runs of eight between runs of PG_NOP. INFERRED:
 * padding that drains the pipe; never restored. */
#define KONA_RM_IMP_NOP                                  0x1c3a

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

#define KONA_RM_PGTG_SCIS                                0x3fc2
#define KONA_RM_PGTG_XSMIN                                0, 15  /* shift, width */
#define KONA_RM_PGTG_XSMAX                               15, 15  /* shift, width */
#define KONA_RM_PGTG_YSMIN                                0, 15  /* shift, width */
#define KONA_RM_PGTG_YSMAX                               15, 15  /* shift, width */

#define KONA_RM_PGTG_ZRECT                               0x3fc4
#define KONA_RM_PGTG_ZRECT_X0                             0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_X                              0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_Y                              0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_X0A                            0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_XA                             0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_YA                             0, 32  /* shift, width */
#define KONA_RM_PGTG_ZRECT_ZX                             0, 28  /* shift, width */
#define KONA_RM_PGTG_ZRECT_ZY                             0, 28  /* shift, width */

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

#define KONA_RM_PGTG_SIZE                                0x3fcf
#define KONA_RM_PGTG_PBSIZE                               0, 12  /* shift, width */
#define KONA_RM_PGTG_LBSIZE                               0, 12  /* shift, width */
#define KONA_RM_PGTG_TBSIZE                               0, 12  /* shift, width */
#define KONA_RM_PGTG_IBWIDTH                              0, 12  /* shift, width */
#define KONA_RM_PGTG_IBHEIGHT                            12, 12  /* shift, width */

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

#define KONA_RM_TGTM_TEX_SIZE                            0x3fd5
#define KONA_RM_TGTM_TEX_SIZE_TEX_SSIZE                   0,  4  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_TSIZE                   4,  4  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_RSIZE                   8,  4  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_SAC                    12,  1  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_TAC                    13,  1  /* shift, width */
#define KONA_RM_TGTM_TEX_SIZE_TEX_RAC                    14,  1  /* shift, width */

#define KONA_RM_TGTM_DCTEX_SIZE                          0x3fd6
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_DET_SSIZE             0,  4  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_DET_TSIZE             4,  4  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_CLIP_SIZE             8,  4  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_CLIP_LOD_OFFSET      12, 10  /* shift, width */
#define KONA_RM_TGTM_DCTEX_SIZE_TEX_CLIP_ON              22,  1  /* shift, width */

#define KONA_RM_TGTM_TEX_SCENTER                         0x3fd7
#define KONA_RM_TGTM_TEX_SCENTER_TEX_SCENTER              0, 15  /* shift, width */

#define KONA_RM_TGTM_TEX_TCENTER                         0x3fd8
#define KONA_RM_TGTM_TEX_TCENTER_TEX_TCENTER              0, 15  /* shift, width */

/*
 * COMMON_VERBOSE (index 0x3ff0), a broadcast register named for verbosity. Established, 6.5.30m:
 * only irsaudit `tbuRegReset` (0x10154cb4) writes it, with 0, so the diagnostic leaves any debug
 * reporting of the raster chips off. What the chips report when it is set is inferred from the name only.
 */
#define KONA_RM_COMMON_VERBOSE                           0x3ff0

/* COMMON_PFLUSH: flushes the pixel-generator path. ESTABLISHED: ge.u
 * DoFlushPGPCache (0xa722) writes it between TFP_PIX_FMT and PGTG_ENABLES
 * with high half 0 (unshadowed); mges_ContextDeactivate (0x690e) writes it;
 * tbusdata.Z 6 times right after 0x1410; restore value 0. */
#define KONA_RM_COMMON_PFLUSH                            0x3ff1

/* COMMON_PSTART: broadcast register by name a start mark. ESTABLISHED: only
 * tbuRegReset (0x10154cb4) writes it (0). unknown: no shipped software or
 * published source depends on it. */
#define KONA_RM_COMMON_PSTART                            0x3ff3

/* COMMON_PSTOP: broadcast register by name a stop mark. ESTABLISHED: only
 * tbuRegReset (0x10154cb4) writes it (0). unknown: no shipped software or
 * published source depends on it. */
#define KONA_RM_COMMON_PSTOP                             0x3ff4

/*
 * COMMON_FB (index 0x3ff5): broadcast depth and alpha enables, the ZE and AE bits. Established,
 * 6.5.30m: only irsaudit `tbuRegReset` (0x10154cb4) writes it, with 0, which clears both enables
 * in every chip that listens to the broadcast.
 */
#define KONA_RM_COMMON_FB                                0x3ff5
#define KONA_RM_COMMON_FB_ZE                              0,  1  /* shift, width */
#define KONA_RM_COMMON_FB_AE                              1,  1  /* shift, width */

/*
 * COMMON_PRIMID (index 0x3ff6): the broadcast primitive id. Established, 6.5.30m: irsaudit
 * `ReqVideo` (0x10098d2c) and the framebuffer and read-back tests write a per-test value before drawing,
 * and `tbuRegReset` (0x10154cb4) restores 0. Inferred from the name: every chip tags the following
 * primitives with this id.
 */
#define KONA_RM_COMMON_PRIMID                            0x3ff6

/*
 * COMMON_STALL (index 0x3ff7): the broadcast stall count, a 4-bit COUNT_P field. Established,
 * 6.5.30m: only irsaudit `tbuRegReset` (0x10154cb4) writes it, with 0, so no artificial stall remains.
 * Inferred from the name: a non-zero count would hold the chips for that many cycles.
 */
#define KONA_RM_COMMON_STALL                             0x3ff7
#define KONA_RM_COMMON_STALL_COUNT_P                      0,  4  /* shift, width */

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

#define KONA_RM_TGTML_TEXLD_SIZE                         0x7fc1
#define KONA_RM_TGTML_TEXLD_SIZE_TEXLD_SSIZE              0,  4  /* shift, width */
#define KONA_RM_TGTML_TEXLD_SIZE_TEXLD_TSIZE              4,  4  /* shift, width */
#define KONA_RM_TGTML_TEXLD_SIZE_TEXLD_RSIZE              8,  4  /* shift, width */

#define KONA_RM_TGTML_TEXLD_STSTART                      0x7fc2
#define KONA_RM_TGTML_TEXLD_STSTART_TEXLD_SSTART          0, 16  /* shift, width */
#define KONA_RM_TGTML_TEXLD_STSTART_TEXLD_TSTART         16, 16  /* shift, width */

#define KONA_RM_TGTML_TEXLD_S1ST_RSTART                  0x7fc3
#define KONA_RM_TGTML_TEXLD_S1ST_RSTART_TEXLD_SSTART_1ST  0, 16  /* shift, width */
#define KONA_RM_TGTML_TEXLD_S1ST_RSTART_TEXLD_RSTART     16, 11  /* shift, width */

#define KONA_RM_TGTML_TEXLD_STEND                        0x7fc4
#define KONA_RM_TGTML_TEXLD_STEND_TEXLD_SEND              0, 16  /* shift, width */
#define KONA_RM_TGTML_TEXLD_STEND_TEXLD_TEND             16, 16  /* shift, width */

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

#define KONA_RM_PG_GENERAL                               0x0800
#define KONA_RM_PG_FLAT_ENABLE                            0,  1  /* shift, width */
#define KONA_RM_PG_FLAT_ENABLE_ON                        0x0
#define KONA_RM_PG_FLAT_ENABLE_OFF                       0x1
#define KONA_RM_PG_DIR_MASK                               1,  1  /* shift, width */
#define KONA_RM_PG_DIR_MASK_PKT                          0x0
#define KONA_RM_PG_DIR_MASK_REF                          0x1

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

#define KONA_RM_PG_PSPEC                                 0x080f
#define KONA_RM_PG_PSPEC_WIDTH                            0, 12  /* shift, width */
#define KONA_RM_PG_PSPEC_HEIGHT                          12, 12  /* shift, width */

#define KONA_RM_PG_BLOAT                                 0x0804

#define KONA_RM_PG_Z_OFF                                 0x0805

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

#define KONA_RM_PG_WIN_OFFSET_X                          0x0807

#define KONA_RM_PG_WIN_OFFSET_Y                          0x0808

#define KONA_RM_PG_SMASK                                 0x0809

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

#define KONA_RM_PG_PRU                                   0x0810
#define KONA_RM_PG_PRU_PRU                                0,  1  /* shift, width */
#define KONA_RM_PG_PRU_PRU_NONE                          0x0
#define KONA_RM_PG_PRU_PRU_LINE                          0x1

#define KONA_RM_PG_PRAM                                  0x0880

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
