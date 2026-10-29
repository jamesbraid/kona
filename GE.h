/*
 * GE.h - InfiniteReality (KONA) geometry-engine command stream.
 *
 * Scope: the host command tokens a client writes into the pipe and the
 * framing of a command, as seen from IRIX 6.5.30m. The geometry engines'
 * own microcode format is not covered yet (see docs/coverage.md).
 *
 * Labels: ESTABLISHED = read directly from a binary at the cited place;
 * INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 *
 * Sources (all IRIX 6.5.30m):
 *   kpm      /usr/gfx/KONA/bin/kpm, N32 executable. Its .data holds a
 *            table of string pointers naming every command token, indexed
 *            by token value, at vaddr 0x100ba838 (617 entries). Extracted
 *            by scripts/extract_kpm_tables.py into diags/kpm/hp_commands.tsv.
 *   libGLcore /usr/gfx/arch/IP27KONA32/libGLcore.so (N32), disassembled
 *            per compilation unit under libglcore/asm/.
 *   kernel   kona.a members under kona_kernel/disasm/.
 */
#ifndef KONA_GE_H
#define KONA_GE_H

/*
 * Command submission from user space.
 *
 * ESTABLISHED: libGLcore writes every command to the single process virtual
 * address 0x4000, in 32-bit (sw, swc1) and 64-bit (sd, sdc1) stores, and never
 * reads it. Example: __glkonim_Color3f (libglcore/asm/kon/kon_cfuncs.s,
 * 0x0da65200) is "sw 99 -> 0x4000; swc1 r,g,b -> 0x4000".
 *
 * INFERRED: 0x4000 is the start of the per-thread graphics region whose
 * first 16 KB is the FIFO (HIP.h, from the 6.5.5 kona.h).
 *
 * 64-bit stores, ESTABLISHED as the client's contract: an sd or sdc1 to
 * 0x4000 delivers two FIFO words, the high (first in memory) word first.
 * libGLcore relies on it in kon_sfuncs.s: __glkonim_RasterPos2sv
 * (0x0da79618) builds (x << 32) | y and sends token 0xab plus one sd,
 * where __glkonim_RasterPos2s sends token 0xab, sw x, sw y; the vector
 * forms of Color, Normal, TexCoord, Vertex and RasterPos likewise send
 * two components per sd straight from memory. Stores do not need to be
 * paired to 8-byte stream positions: Color3fv sends sw token, sd r|g, sw b.
 * So the FIFO is a stream of 32-bit words, and a 64-bit store is two
 * consecutive words in big-endian order. How the host interface widens or
 * narrows the Crosstalk write is UNKNOWN but invisible to the stream.
 */
#define KONA_USER_FIFO_VA         0x4000

/*
 * ESTABLISHED: the page at process VA 0x1000 also carries driver state the
 * client reads and writes with plain loads and stores: __glkonim_Begin
 * stores 1 to 0x1018 and __glkonim_End stores 0 there (kon_modes.s,
 * 0x0d94dbb0); subloadSimple loads a pointer from 0x1010. Its layout is
 * UNKNOWN beyond these two words.
 */
#define KONA_USER_STATE_VA        0x1000
#define KONA_USER_IN_BEGIN_VA     0x1018

/*
 * Command framing.
 *
 * ESTABLISHED: a command is one 32-bit token word with the token value in
 * bits 0-15, followed by its payload. Float, double and int forms send
 * native words: IEEE single floats from swc1, 64-bit doubles from sdc1,
 * integers as 32-bit words, and the token word's bits 16-31 are zero.
 * Byte and short forms pack their components into the upper halves of
 * words instead, starting in the token word (see "Packed forms" below). Checked against kpm's table for 225 of the 354
 * libGLcore functions whose first FIFO store is a constant; the names
 * agree (e.g. Color3f = 0x63 COLOR3F, Color4f = 0x6b COLOR4F,
 * EdgeFlag = 0xa7 EDGEFLAG, Indexd = 0x72 INDEXD followed by one sdc1,
 * LoadMatrixf = 0xd3 followed by 16 floats, Viewport = 0xe3 followed by
 * x, y, width, height). The other 129 first stores are error reports
 * (0xe4 SETERROR) or helpers whose names do not follow the GL entry point.
 *
 * ESTABLISHED (kon_modes.s, __glkonim_Begin and __glkonim_End):
 *   glBegin(mode)  -> token KONA_HP_BEGIN_POINTS + mode, then one 0 word,
 *                     for mode 0..9 (GL_POINTS..GL_POLYGON);
 *   bad mode       -> KONA_HP_SETERROR, 0x500 (GL_INVALID_ENUM);
 *   glEnd()        -> KONA_HP_END, then one 0 word.
 *
 * ESTABLISHED: a command with no arguments still sends one zero payload
 * word (End, PushMatrix 0xd9, LoadIdentity 0xd2, Flush 0xc7).
 *
 * Fixed payloads, ESTABLISHED: libglcore/payloads.tsv (written by
 * scripts/extract_payloads.py) lists 176 straight-line emitters covering 118
 * tokens with the word count and type of every payload item. Highlights:
 *   COLOR3F/NORMAL3F/VERTEX3F/TEXCOORD3F  3 floats; the 4-component forms 4
 *   *D forms                              the same count of doubles (2 words each)
 *   *I forms                              one word per component
 *   LOADMATRIXF/MULTMATRIXF               16 floats; *D: 16 doubles
 *   ROTATEF 4 floats, SCALEF and TRANSLATEF 3 floats
 *   ORTHO, FRUSTUM                        6 doubles; DEPTHRANGE 2 doubles
 *   LIGHTF, MATERIALF                     2 ints (light/face, pname) + 4 floats
 *   LIGHTMODELF                           1 int + 4 floats
 *   TEXGENF                               2 ints + 1 float + 6 ints
 *   COLORMASK 4 ints; BLENDCOLOR 4 floats; POLYGONOFFSET 2 floats
 *   ACCUM                                 1 int (op) + 1 float (value)
 *   SET_CURRENT_RASTER                    15 floats
 *   VIDEO_CMD                             4 or 10 ints
 * A vector GL entry point sends the same words as its scalar form.
 * GL calls that convert (TexGend, TexGeni, Materiali) send the float
 * token; Indexub sends INDEXS.
 *
 * Packed forms, ESTABLISHED (kon_cfuncs.s; the emitter ORs the token into
 * the low half of the first word):
 *   short components (Color3s 0x65, Color4s 0x6d, Color3us 0x68,
 *   Normal3s 0x7a, TexCoord2s 0x82, Vertex2s 0x8e, Vertex3s 0x92):
 *     word0 = c0 << 16 | token, word1 = c1 << 16 | (c2 & 0xffff),
 *     word2 = c3 << 16 when there is a fourth; a lone trailing component
 *     goes in bits 16-31 of its word (TexCoord2s, Vertex2s: word1 = c1 << 16).
 *   byte components (Color3b 0x61, Color3ub 0x66, Color4b 0x69,
 *   Color4ub 0x6e, Normal3b 0x76):
 *     word0 = c0 << 24 | (c1 & 0xff) << 16 | token,
 *     word1 = c2 << 24 | (c3 & 0xff) << 16  (bits 0-15 zero).
 *   Indexs 0x75 is the exception: token alone, then i << 16.
 * A signed component placed below another is masked to its width so its
 * sign bits cannot spill into the slot above.
 * INFERRED: the geometry engine reads a packed word as two 16-bit slots,
 * the low slot of word0 being the token; shorts fill whole slots and
 * bytes go two to the upper slot, leaving the lower slot zero.
 *
 * ESTABLISHED (libGLcore emitters and arm1.u handlers): variable-length
 * commands carry their own counts in a header word, or the firmware
 * computes the length from the header and the current pixel-unpack state
 * (pixel, texel and bitmap images). The grammars of the image, pixel-map,
 * evaluator, display-list and vertex-array commands are in docs/ge.md,
 * "Variable-length command grammars"; DRAWTEXELS's header is in RM.h.
 */
#define KONA_HP_BEGIN(glmode)     (KONA_HP_BEGIN_POINTS + (glmode))

/*
 * Host command tokens.
 *
 * ESTABLISHED: names and values from kpm's table (vaddr 0x100ba838 +
 * 4 * token). Entries 0x000-0x1ff are the token set; 0x200-0x20f are
 * placeholders printed as "**** 0xN". The meaning of a token is the name
 * only, unless a comment elsewhere in this repository states its payload.
 *
 * Tokens the kernel sends are confirmed against kona.a: 0x1dd GE_INTR
 * (kona_checkpipe), 0x1e6 DISPMODE (KONAsetdisplaymode), 0x1eb DO_IDMA
 * (kona_idma), 0x1ee VALIDATE_READCLIP, 0x1f3 VALIDATE_CLIP and
 * 0x1f4 VALIDATE_BANK (kona_act_pcx), 0x1f1 PIPE_SETUP (KONAstart),
 * 0x1f2 RDATA_SETUP, 0x1f9 CONTEXT_LOAD, 0x1fc CONTEXT_DEACTIVATE and
 * 0x1fd CONTEXT_INIT (KONApcxswap). See kona_kernel/include/kona_kern.h.
 *
 * Per token (comment paragraphs written by scripts/ge_token_comments.py,
 * which holds the hand-read role of each token): the kpm name and value,
 * a label, what the pipe does with the token and what its payload words
 * carry, read at the cited address of arm1.u, ge.u or ged1b.u and in the
 * sender. Then the routing facts from the tables beside the firmware: the
 * arm1.u handler the token map runs and its address, or for a routed token
 * its map entry, command number (bits 15-23), count field and type, and
 * the engine handler the handler table binds to that number or its entry
 * in the distributor program (ucode/icu_map.tsv, ucode/hw_route.tsv,
 * ucode/ged_route.tsv, ucode/arm1.md). "libGLcore.so f stores n words" is
 * the fixed payload from libglcore/payloads.tsv. A separate unlabelled
 * paragraph above lists the engine handlers the ARM handler's code loads,
 * or those in the distributor entry's span; it names them and does not
 * explain them. What each engine handler computes is in
 * ucode/ge_handlers.md by module.
 */
enum kona_hp_token {
    /* `HP_DATA` (0x000). Route: the token map runs `arm_data` at arm1.u
     * 0x0c026590, a stub that ends in `arm_badcmd`. */
    KONA_HP_DATA                         = 0x000,

    /* Engine handlers whose slots the code of `arm_buffer_config` loads, in
     * order: `mgesi_TbusRegWrite`, `mgeb_CI_Mode`, `mgeb_RGBA_Mode`. */

    /* `HP_BUFFER_CONFIG` (0x001). Route: the token map runs
     * `arm_buffer_config` at arm1.u 0x0c0131a0. */
    KONA_HP_BUFFER_CONFIG                = 0x001,

    /* `HP_PACK` (0x002). Route: the token map runs `arm_pack` at arm1.u
     * 0x0c03949c. */
    KONA_HP_PACK                         = 0x002,

    /* Engine handlers relocated into the span of distributor entry 0x363:
     * `mgesi_Triangles`. */

    /* `HP_BEGIN_RECT` (0x003). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c50053: command 394, count field 1, single
     * floats; distributor entry 0x363 at ged1b.u tri.s:45. */
    KONA_HP_BEGIN_RECT                   = 0x003,

    /* `HP_READBUFFER_CONFIG` (0x004). Route: the token map runs
     * `arm_readbuffer_config` at arm1.u 0x0c013650. */
    KONA_HP_READBUFFER_CONFIG            = 0x004,

    /* Engine handlers whose slots the code of `arm_bitmap_dlist` loads, in
     * order: `mgeb_TransparentBitmapSetup`, `mgesi_FeedbackPixel`,
     * `mgesi_PixRasterPosSetup`, `mgesi_TransparentBitmap`,
     * `mgebi_PixEndTransparentBitmap`. */

    /* `HP_BITMAP_DLIST` (0x005). Route: the token map runs `arm_bitmap_dlist`
     * at arm1.u 0x0c02b590. */
    KONA_HP_BITMAP_DLIST                 = 0x005,

    /* Engine handlers whose slots the code of `arm_bitmap` loads, in order:
     * `mgeb_BitmapApplyMove`. */

    /* `HP_BITMAP` (0x006). Route: the token map runs `arm_bitmap` at arm1.u
     * 0x0c02b4c0. */
    KONA_HP_BITMAP                       = 0x006,

    /* `HP_LIGHTF` (0x007). Route: the token map runs `arm_lightf` at arm1.u
     * 0x0c016e94. Route: libGLcore.so `__glkonim_Lightfv` stores 6 words
     * after the token. */
    KONA_HP_LIGHTF                       = 0x007,

    /* `HP_LIGHTI` (0x008). Route: the token map runs `arm_lighti` at arm1.u
     * 0x0c016ee8. Route: libGLcore.so `__glkonim_Lightiv` stores 6 words
     * after the token. */
    KONA_HP_LIGHTI                       = 0x008,

    /* `HP_LIGHTMODELF` (0x009). Route: the token map runs `arm_lightmodelf`
     * at arm1.u 0x0c016ae4. Route: libGLcore.so `__glkonim_LightModelfv`
     * stores 5 words after the token. */
    KONA_HP_LIGHTMODELF                  = 0x009,

    /* `HP_LIGHTMODELI` (0x00a). Route: the token map runs `arm_lightmodeli`
     * at arm1.u 0x0c016b20. Route: libGLcore.so `__glkonim_LightModeliv`
     * stores 5 words after the token. */
    KONA_HP_LIGHTMODELI                  = 0x00a,

    /* `HP_POLYGONSTIPPLE` (0x00b). Route: the token map runs
     * `arm_polygonstipple` at arm1.u 0x0c02c7bc. */
    KONA_HP_POLYGONSTIPPLE               = 0x00b,

    /* `HP_SCISSOR` (0x00c). Route: the token map runs `arm_scissor` at arm1.u
     * 0x0c018c90. */
    KONA_HP_SCISSOR                      = 0x00c,

    /* `HP_TEXPARAMETERF` (0x00d). Route: the token map runs
     * `arm_texparameterf` at arm1.u 0x0c026594, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_TEXPARAMETERF                = 0x00d,

    /* `HP_TEXPARAMETERI` (0x00e). Route: the token map runs
     * `arm_texparameteri` at arm1.u 0x0c026598, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_TEXPARAMETERI                = 0x00e,

    /* `HP_TEXIMAGE1D` (0x00f). Route: the token map runs `arm_teximage1d` at
     * arm1.u 0x0c02659c, a stub that ends in `arm_badcmd`. */
    KONA_HP_TEXIMAGE1D                   = 0x00f,

    /* `HP_TEXIMAGE2D` (0x010). Route: the token map runs `arm_teximage2d` at
     * arm1.u 0x0c0265a0, a stub that ends in `arm_badcmd`. */
    KONA_HP_TEXIMAGE2D                   = 0x010,

    /* Engine handlers whose slots the code of `arm_texenvf` loads, in order:
     * `mgebi_TexEnv`. */

    /* `HP_TEXENVF` (0x011). Route: the token map runs `arm_texenvf` at arm1.u
     * 0x0c024ff4. */
    KONA_HP_TEXENVF                      = 0x011,

    /* Engine handlers whose slots the code of `arm_texenvi` loads, in order:
     * `mgebi_TexEnv`. */

    /* `HP_TEXENVI` (0x012). Route: the token map runs `arm_texenvi` at arm1.u
     * 0x0c025030. */
    KONA_HP_TEXENVI                      = 0x012,

    /* `HP_TEXGEND` (0x013). Route: the token map runs `arm_texgend` at arm1.u
     * 0x0c024d50. */
    KONA_HP_TEXGEND                      = 0x013,

    /* Engine handlers whose slots the code of `arm_texgenf` loads, in order:
     * `mgeb_TexGen`. */

    /* `HP_TEXGENF` (0x014). Route: the token map runs `arm_texgenf` at arm1.u
     * 0x0c024d9c. Route: libGLcore.so `__glkonim_TexGend` stores 9 words
     * after the token. */
    KONA_HP_TEXGENF                      = 0x014,

    /* `HP_TEXGENI` (0x015). Route: the token map runs `arm_texgeni` at arm1.u
     * 0x0c024d94. */
    KONA_HP_TEXGENI                      = 0x015,

    /* `HP_TEXBIND` (0x016). Route: the token map runs `arm_texbind` at arm1.u
     * 0x0c036ae4. */
    KONA_HP_TEXBIND                      = 0x016,

    /* `HP_FEEDBACK_TYPE` (0x017). Route: the token map runs
     * `arm_feedback_type` at arm1.u 0x0c038a6c. */
    KONA_HP_FEEDBACK_TYPE                = 0x017,

    /* `HP_SELECTBUFFER` (0x018). Route: the token map runs `arm_selectbuffer`
     * at arm1.u 0x0c0265a4, a stub that ends in `arm_badcmd`. */
    KONA_HP_SELECTBUFFER                 = 0x018,

    /* Engine handlers whose slots the code of `arm_rendermode` loads, in
     * order: `mgeb_EndFeedbackMode`, `mgeb_BgnSelectMode`,
     * `mgeb_EndSelectMode`, `mgeb_BgnFeedbackMode`. */

    /* `HP_RENDERMODE` (0x019). Route: the token map runs `arm_rendermode` at
     * arm1.u 0x0c038964. */
    KONA_HP_RENDERMODE                   = 0x019,

    /* Engine handlers whose slots the code of `arm_clear` loads, in order:
     * `mgesi_TbusRegWrite`, `mgesi_ClearIndex`, `mgesi_ClearLA16`,
     * `mgesi_ClearColor`. */

    /* `HP_CLEAR` (0x01a). Route: the token map runs `arm_clear` at arm1.u
     * 0x0c03bb60. Route: libGLcore.so `__glkonim_Clear` stores 1 word after
     * the token. */
    KONA_HP_CLEAR                        = 0x01a,

    /* `HP_CLEARACCUM` (0x01b). Route: the token map runs `arm_clearaccum` at
     * arm1.u 0x0c037d94. */
    KONA_HP_CLEARACCUM                   = 0x01b,

    /* `HP_CLEARINDEX` (0x01c). Route: the token map runs `arm_clearindex` at
     * arm1.u 0x0c012bf4. Route: libGLcore.so `__glkonim_ClearIndex` stores 1
     * word after the token. */
    KONA_HP_CLEARINDEX                   = 0x01c,

    /* `HP_CLEARCOLOR` (0x01d). Route: the token map runs `arm_clearcolor` at
     * arm1.u 0x0c012c00. */
    KONA_HP_CLEARCOLOR                   = 0x01d,

    /* `HP_CLEARSTENCIL` (0x01e). Route: the token map runs `arm_clearstencil`
     * at arm1.u 0x0c0148b8. Route: libGLcore.so `__glkonim_ClearStencil`
     * stores 1 word after the token. */
    KONA_HP_CLEARSTENCIL                 = 0x01e,

    /* Engine handlers whose slots the code of `arm_cleardepth` loads, in
     * order: `mgesi_ClearDepth32`. */

    /* `HP_CLEARDEPTH` (0x01f). Route: the token map runs `arm_cleardepth` at
     * arm1.u 0x0c01465c. */
    KONA_HP_CLEARDEPTH                   = 0x01f,

    /* `HP_STENCILMASK` (0x020). Route: the token map runs `arm_stencilmask`
     * at arm1.u 0x0c014904. Route: libGLcore.so `__glkonim_StencilMask`
     * stores 1 word after the token. */
    KONA_HP_STENCILMASK                  = 0x020,

    /* Engine handlers whose slots the code of `arm_colormask` loads, in
     * order: `mgesi_TbusRegWrite`. */

    /* `HP_COLORMASK` (0x021). Route: the token map runs `arm_colormask` at
     * arm1.u 0x0c012c3c. Route: libGLcore.so `__glkonim_ColorMask` stores 4
     * words after the token. */
    KONA_HP_COLORMASK                    = 0x021,

    /* `HP_DEPTHMASK` (0x022). Route: the token map runs `arm_depthmask` at
     * arm1.u 0x0c0147d0. Route: libGLcore.so `__glkonim_DepthMask` stores 1
     * word after the token. */
    KONA_HP_DEPTHMASK                    = 0x022,

    /* `HP_INDEXMASK` (0x023). Route: the token map runs `arm_indexmask` at
     * arm1.u 0x0c012e1c. Route: libGLcore.so `__glkonim_IndexMask` stores 1
     * word after the token. */
    KONA_HP_INDEXMASK                    = 0x023,

    /* `HP_ENABLE` (0x024). Route: the token map runs `arm_enable` at arm1.u
     * 0x0c023380. */
    KONA_HP_ENABLE                       = 0x024,

    /* `HP_DISABLE` (0x025). Route: the token map runs `arm_disable` at arm1.u
     * 0x0c023448. */
    KONA_HP_DISABLE                      = 0x025,

    /* Engine handlers whose slots the code of `arm_evalstrip1d` loads, in
     * order: `mgesi_EvalStrip1D`. */

    /* `HP_EVALSTRIP1D` (0x026). Route: the token map runs `arm_evalstrip1d`
     * at arm1.u 0x0c03dd58. */
    KONA_HP_EVALSTRIP1D                  = 0x026,

    /* Engine handlers whose slots the code of `arm_evalstrip2d` loads, in
     * order: `mgesi_EvalStrip2D`. */

    /* `HP_EVALSTRIP2D` (0x027). Route: the token map runs `arm_evalstrip2d`
     * at arm1.u 0x0c03dcd4. */
    KONA_HP_EVALSTRIP2D                  = 0x027,

    /* `HP_MAPGRID1D` (0x028). Route: routed by the host interface with no ARM
     * code, map entry 0x584cd101: command 153, count field 4, single floats;
     * engine handler `mgeb_EvalGrid1D` (index 25 of the handler table). */
    KONA_HP_MAPGRID1D                    = 0x028,

    /* `HP_MAPGRID2D` (0x029). Route: routed by the host interface with no ARM
     * code, map entry 0x584d5201: command 154, count field 8, single floats;
     * engine handler `mgeb_EvalGrid2D` (index 26 of the handler table). */
    KONA_HP_MAPGRID2D                    = 0x029,

    /* Engine handlers whose slots the code of `arm_mapdata1d` loads, in
     * order: `mgeb_EvalMapData1D`. */

    /* `HP_MAPDATA1D` (0x02a). Route: the token map runs `arm_mapdata1d` at
     * arm1.u 0x0c03dc68. */
    KONA_HP_MAPDATA1D                    = 0x02a,

    /* Engine handlers whose slots the code of `arm_mapdata2d` loads, in
     * order: `mgeb_EvalMapData2D`. */

    /* `HP_MAPDATA2D` (0x02b). Route: the token map runs `arm_mapdata2d` at
     * arm1.u 0x0c03dca0. */
    KONA_HP_MAPDATA2D                    = 0x02b,

    /* `HP_MAPSPEC1D` (0x02c). Route: routed by the host interface with no ARM
     * code, map entry 0x584dd301: command 155, count field 12, single floats;
     * engine handler `mgeb_EvalMapSpec1D` (index 27 of the handler table). */
    KONA_HP_MAPSPEC1D                    = 0x02c,

    /* `HP_MAPSPEC2D` (0x02d). Route: routed by the host interface with no ARM
     * code, map entry 0x584e5441: command 156, count field 17, single floats;
     * engine handler `mgeb_EvalMapSpec2D` (index 28 of the handler table). */
    KONA_HP_MAPSPEC2D                    = 0x02d,

    /* `HP_LOGICOP` (0x02e). Route: the token map runs `arm_logicop` at arm1.u
     * 0x0c015c18. */
    KONA_HP_LOGICOP                      = 0x02e,

    /* `HP_PIXELZOOM` (0x02f). Route: the token map runs `arm_pixelzoom` at
     * arm1.u 0x0c02ad74. */
    KONA_HP_PIXELZOOM                    = 0x02f,

    /* `HP_PIXELTRANSFERF` (0x030). Route: the token map runs
     * `arm_pixeltransferf` at arm1.u 0x0c02b068. */
    KONA_HP_PIXELTRANSFERF               = 0x030,

    /* `HP_PIXELTRANSFERI` (0x031). Route: the token map runs
     * `arm_pixeltransferi` at arm1.u 0x0c0265a8, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_PIXELTRANSFERI               = 0x031,

    /* `HP_PIXELSTOREF` (0x032). Route: the token map runs `arm_pixelstoref`
     * at arm1.u 0x0c0265ac, a stub that ends in `arm_badcmd`. */
    KONA_HP_PIXELSTOREF                  = 0x032,

    /* `HP_PIXELSTOREI` (0x033). Route: the token map runs `arm_pixelstorei`
     * at arm1.u 0x0c02adb0. */
    KONA_HP_PIXELSTOREI                  = 0x033,

    /* `HP_PIXELMAPFV` (0x034). Route: the token map runs `arm_pixelmapfv` at
     * arm1.u 0x0c03e7ec. */
    KONA_HP_PIXELMAPFV                   = 0x034,

    /* `HP_PIXELMAPUIV` (0x035). Route: the token map runs `arm_pixelmapuiv`
     * at arm1.u 0x0c03e7fc. */
    KONA_HP_PIXELMAPUIV                  = 0x035,

    /* `HP_PIXELMAPUSV` (0x036). Route: the token map runs `arm_pixelmapusv`
     * at arm1.u 0x0c03e810. */
    KONA_HP_PIXELMAPUSV                  = 0x036,

    /* `HP_READBUFFER` (0x037). Route: the token map runs `arm_readbuffer` at
     * arm1.u 0x0c013bfc. Route: libGLcore.so `__glkonim_ReadBuffer` stores 1
     * word after the token. */
    KONA_HP_READBUFFER                   = 0x037,

    /* `HP_COPYPIXELS` (0x038). Route: the token map runs `arm_copypixels` at
     * arm1.u 0x0c02bb34. */
    KONA_HP_COPYPIXELS                   = 0x038,

    /* Engine handlers whose slots the code of `arm_readpixels` loads, in
     * order: `mgebi_Texture`. */

    /* `HP_READPIXELS` (0x039). Route: the token map runs `arm_readpixels` at
     * arm1.u 0x0c02c3ec. */
    KONA_HP_READPIXELS                   = 0x039,

    /* `HP_DRAWPIXELS` (0x03a). Route: the token map runs `arm_drawpixels` at
     * arm1.u 0x0c02b9ec. */
    KONA_HP_DRAWPIXELS                   = 0x03a,

    /* Engine handlers whose slots the code of `arm_getcurrent` loads, in
     * order: `mgesi_StartRdata`, `mgesi_FinishRdata`. */

    /* `HP_GETCURRENT` (0x03b). Route: the token map runs `arm_getcurrent` at
     * arm1.u 0x0c038460. */
    KONA_HP_GETCURRENT                   = 0x03b,

    /* Engine handlers whose slots the code of `arm_getclipplane` loads, in
     * order: `mgesi_StartRdata`, `mgesi_Eram2ODMA`, `mgesi_FinishRdata`. */

    /* `HP_GETCLIPPLANE` (0x03c). Route: the token map runs `arm_getclipplane`
     * at arm1.u 0x0c0385c8. */
    KONA_HP_GETCLIPPLANE                 = 0x03c,

    /* Engine handlers whose slots the code of `arm_getraster` loads, in
     * order: `mgesi_StartRdata`, `mgesi_GetRaster`, `mgesi_FinishRdata`. */

    /* `HP_GETRASTER` (0x03d). Route: the token map runs `arm_getraster` at
     * arm1.u 0x0c0384c4. */
    KONA_HP_GETRASTER                    = 0x03d,

    /* Engine handlers whose slots the code of `arm_geterror` loads, in order:
     * `mgesi_StartRdata`, `mgebi_ErrQuery`, `mgesi_FinishRdata`. */

    /* `HP_GETERROR` (0x03e). Route: the token map runs `arm_geterror` at
     * arm1.u 0x0c03852c. */
    KONA_HP_GETERROR                     = 0x03e,

    /* `HP_GETFLOATV` (0x03f). Route: the token map runs `arm_getfloatv` at
     * arm1.u 0x0c0265b0, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETFLOATV                    = 0x03f,

    /* `HP_GETINTEGERV` (0x040). Route: the token map runs `arm_getintegerv`
     * at arm1.u 0x0c0265b4, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETINTEGERV                  = 0x040,

    /* Engine handlers whose slots the code of `arm_getlightfv` loads, in
     * order: `mgesi_LiGetLight`. */

    /* `HP_GETLIGHTFV` (0x041). Route: the token map runs `arm_getlightfv` at
     * arm1.u 0x0c017874. */
    KONA_HP_GETLIGHTFV                   = 0x041,

    /* `HP_GETLIGHTIV` (0x042). Route: the token map runs `arm_getlightiv` at
     * arm1.u 0x0c0265b8, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETLIGHTIV                   = 0x042,

    /* `HP_GETMAPDV` (0x043). Route: the token map runs `arm_getmapdv` at
     * arm1.u 0x0c0265bc, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETMAPDV                     = 0x043,

    /* `HP_GETMAPFV` (0x044). Route: the token map runs `arm_getmapfv` at
     * arm1.u 0x0c0265c0, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETMAPFV                     = 0x044,

    /* `HP_GETMAPIV` (0x045). Route: the token map runs `arm_getmapiv` at
     * arm1.u 0x0c0265c4, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETMAPIV                     = 0x045,

    /* Engine handlers whose slots the code of `arm_getmaterialfv` loads, in
     * order: `mgesi_LiGetMaterial`. */

    /* `HP_GETMATERIALFV` (0x046). Route: the token map runs
     * `arm_getmaterialfv` at arm1.u 0x0c0178e4. */
    KONA_HP_GETMATERIALFV                = 0x046,

    /* `HP_GETMATERIALIV` (0x047). Route: the token map runs
     * `arm_getmaterialiv` at arm1.u 0x0c0265c8, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETMATERIALIV                = 0x047,

    /* `HP_GETPIXELMAPFV` (0x048). Route: the token map runs
     * `arm_getpixelmapfv` at arm1.u 0x0c03f2a4. */
    KONA_HP_GETPIXELMAPFV                = 0x048,

    /* `HP_GETPIXELMAPUIV` (0x049). Route: the token map runs
     * `arm_getpixelmapuiv` at arm1.u 0x0c0265cc, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETPIXELMAPUIV               = 0x049,

    /* `HP_GETPIXELMAPUSV` (0x04a). Route: the token map runs
     * `arm_getpixelmapusv` at arm1.u 0x0c0265d0, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETPIXELMAPUSV               = 0x04a,

    /* Engine handlers whose slots the code of `arm_getpolygonstipple` loads,
     * in order: `mgeb_PolygonStippleRotate`, `mgesi_Eram2ODMA`,
     * `mgeb_LoadMatrix_Modelview`, `mgeb_LoadMatrix_Projection`. */

    /* `HP_GETPOLYGONSTIPPLE` (0x04b). Route: the token map runs
     * `arm_getpolygonstipple` at arm1.u 0x0c02c890. */
    KONA_HP_GETPOLYGONSTIPPLE            = 0x04b,

    /* Engine handlers whose slots the code of `arm_getv` loads, in order:
     * `mgesi_StartRdata`, `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`,
     * `mgesi_FinishRdata`. */

    /* `HP_GETV` (0x04c). Route: the token map runs `arm_getv` at arm1.u
     * 0x0c038058. */
    KONA_HP_GETV                         = 0x04c,

    /* Engine handlers whose slots the code of `arm_gettexenvfv` loads, in
     * order: `mgesi_Eram2ODMA`. */

    /* `HP_GETTEXENVFV` (0x04d). Route: the token map runs `arm_gettexenvfv`
     * at arm1.u 0x0c025098. */
    KONA_HP_GETTEXENVFV                  = 0x04d,

    /* `HP_GETTEXENVIV` (0x04e). Route: the token map runs `arm_gettexenviv`
     * at arm1.u 0x0c0265d4, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETTEXENVIV                  = 0x04e,

    /* `HP_GETTEXGENDV` (0x04f). Route: the token map runs `arm_gettexgendv`
     * at arm1.u 0x0c0265d8, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETTEXGENDV                  = 0x04f,

    /* Engine handlers whose slots the code of `arm_gettexgenfv` loads, in
     * order: `mgesi_StartRdata`, `mgesi_Eram2ODMA`, `mgesi_FinishRdata`. */

    /* `HP_GETTEXGENFV` (0x050). Route: the token map runs `arm_gettexgenfv`
     * at arm1.u 0x0c03864c. */
    KONA_HP_GETTEXGENFV                  = 0x050,

    /* `HP_GETTEXGENIV` (0x051). Route: the token map runs `arm_gettexgeniv`
     * at arm1.u 0x0c0265dc, a stub that ends in `arm_badcmd`. */
    KONA_HP_GETTEXGENIV                  = 0x051,

    /* `HP_GETTEXIMAGE` (0x052). Route: the token map runs `arm_getteximage`
     * at arm1.u 0x0c02c298. */
    KONA_HP_GETTEXIMAGE                  = 0x052,

    /* `HP_GETTEXPARAMETERFV` (0x053). Route: the token map runs
     * `arm_gettexparameterfv` at arm1.u 0x0c0265e0, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETTEXPARAMETERFV            = 0x053,

    /* `HP_GETTEXPARAMETERIV` (0x054). Route: the token map runs
     * `arm_gettexparameteriv` at arm1.u 0x0c0265e4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETTEXPARAMETERIV            = 0x054,

    /* `HP_GETTEXLEVELPARAMETERFV` (0x055). Route: the token map runs
     * `arm_gettexlevelparameterfv` at arm1.u 0x0c0265e8, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETTEXLEVELPARAMETERFV       = 0x055,

    /* `HP_GETTEXLEVELPARAMETERIV` (0x056). Route: the token map runs
     * `arm_gettexlevelparameteriv` at arm1.u 0x0c0265ec, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GETTEXLEVELPARAMETERIV       = 0x056,

    /* `HP_BEGIN_POINTS` (0x057). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c20053: command 388, count field 1, single
     * floats; distributor entry 0x357 at ged1b.u tri.s:23. */
    KONA_HP_BEGIN_POINTS                 = 0x057,

    /* `HP_BEGIN_LINES` (0x058). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c68053: command 397, count field 1, single
     * floats; distributor entry 0x375 at ged1b.u tri.s:77. */
    KONA_HP_BEGIN_LINES                  = 0x058,

    /* `HP_BEGIN_LINELOOP` (0x059). Route: routed by the host interface with
     * no ARM code, map entry 0xd8c30053: command 390, count field 1, single
     * floats; distributor entry 0x361 at ged1b.u tri.s:39. */
    KONA_HP_BEGIN_LINELOOP               = 0x059,

    /* `HP_BEGIN_LINESTRIP` (0x05a). Route: routed by the host interface with
     * no ARM code, map entry 0xd8c28053: command 389, count field 1, single
     * floats; distributor entry 0x371 at ged1b.u tri.s:69. */
    KONA_HP_BEGIN_LINESTRIP              = 0x05a,

    /* `HP_BEGIN_TRIANGLES` (0x05b). Route: routed by the host interface with
     * no ARM code, map entry 0xd8c38053: command 391, count field 1, single
     * floats; distributor entry 0x377 at ged1b.u tri.s:84. */
    KONA_HP_BEGIN_TRIANGLES              = 0x05b,

    /* `HP_BEGIN_TSTRIP` (0x05c). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c40053: command 392, count field 1, single
     * floats; distributor entry 0x35a at ged1b.u tri.s:28. */
    KONA_HP_BEGIN_TSTRIP                 = 0x05c,

    /* `HP_BEGIN_TFAN` (0x05d). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c48053: command 393, count field 1, single
     * floats; distributor entry 0x373 at ged1b.u tri.s:73. */
    KONA_HP_BEGIN_TFAN                   = 0x05d,

    /* Engine handlers relocated into the span of distributor entry 0x363:
     * `mgesi_Triangles`. */

    /* `HP_BEGIN_QUADS` (0x05e). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c50053: command 394, count field 1, single
     * floats; distributor entry 0x363 at ged1b.u tri.s:45. */
    KONA_HP_BEGIN_QUADS                  = 0x05e,

    /* `HP_BEGIN_QSTRIP` (0x05f). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c58053: command 395, count field 1, single
     * floats; distributor entry 0x377 at ged1b.u tri.s:84. */
    KONA_HP_BEGIN_QSTRIP                 = 0x05f,

    /* `HP_BEGIN_POLYGON` (0x060). Route: routed by the host interface with no
     * ARM code, map entry 0xd8c60053: command 396, count field 1, single
     * floats; distributor entry 0x35d at ged1b.u tri.s:33. */
    KONA_HP_BEGIN_POLYGON                = 0x060,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_COLOR3B` (0x061). Route: routed by the host interface with no ARM
     * code, map entry 0x930850c7: command 16, count field 3, untyped words;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_COLOR3B                      = 0x061,

    /* `HP_COLOR3D` (0x062). Route: routed by the host interface with no ARM
     * code, map entry 0xfa485187: command 144, count field 6, doubles;
     * distributor entry 0x242 at ged1b.u qstrip.s:68. Route: libGLcore.so
     * `__glkonim_Color3d` stores 6 words after the token. */
    KONA_HP_COLOR3D                      = 0x062,

    /* `HP_COLOR3F` (0x063). Route: routed by the host interface with no ARM
     * code, map entry 0xda4850c7: command 144, count field 3, single floats;
     * distributor entry 0x242 at ged1b.u qstrip.s:68. Route: libGLcore.so
     * `__glkonim_Color3f` stores 3 words after the token. */
    KONA_HP_COLOR3F                      = 0x063,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_COLOR3I` (0x064). Route: routed by the host interface with no ARM
     * code, map entry 0xdb0850c7: command 16, count field 3, single floats;
     * distributor entry 0x003 at ged1b.u dist.s:13. Route: libGLcore.so
     * `__glkonim_Color3i` stores 3 words after the token. */
    KONA_HP_COLOR3I                      = 0x064,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_COLOR3S` (0x065). Route: routed by the host interface with no ARM
     * code, map entry 0xab0850c7: command 16, count field 3, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_COLOR3S                      = 0x065,

    /* `HP_COLOR3UB` (0x066). Route: routed by the host interface with no ARM
     * code, map entry 0x938850c7: command 272, count field 3, untyped words;
     * distributor entry 0x2dd at ged1b.u tfanpoly.s:94. */
    KONA_HP_COLOR3UB                     = 0x066,

    /* `HP_COLOR3UI` (0x067). Route: routed by the host interface with no ARM
     * code, map entry 0xdb8850c7: command 272, count field 3, single floats;
     * distributor entry 0x2dd at ged1b.u tfanpoly.s:94. Route: libGLcore.so
     * `__glkonim_Color3ui` stores 3 words after the token. */
    KONA_HP_COLOR3UI                     = 0x067,

    /* `HP_COLOR3US` (0x068). Route: routed by the host interface with no ARM
     * code, map entry 0xab8850c7: command 272, count field 3, type 1;
     * distributor entry 0x2dd at ged1b.u tfanpoly.s:94. */
    KONA_HP_COLOR3US                     = 0x068,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_COLOR4B` (0x069). Route: routed by the host interface with no ARM
     * code, map entry 0x99085107: command 16, count field 4, untyped words;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_COLOR4B                      = 0x069,

    /* `HP_COLOR4D` (0x06a). Route: routed by the host interface with no ARM
     * code, map entry 0xf8485007: command 144, count field 32, doubles;
     * distributor entry 0x242 at ged1b.u qstrip.s:68. Route: libGLcore.so
     * `__glkonim_Color4d` stores 8 words after the token. */
    KONA_HP_COLOR4D                      = 0x06a,

    /* `HP_COLOR4F` (0x06b). Route: routed by the host interface with no ARM
     * code, map entry 0xd8485107: command 144, count field 4, single floats;
     * distributor entry 0x242 at ged1b.u qstrip.s:68. Route: libGLcore.so
     * `__glkonim_Color4f` stores 4 words after the token. */
    KONA_HP_COLOR4F                      = 0x06b,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_COLOR4I` (0x06c). Route: routed by the host interface with no ARM
     * code, map entry 0xd9085107: command 16, count field 4, single floats;
     * distributor entry 0x003 at ged1b.u dist.s:13. Route: libGLcore.so
     * `__glkonim_Color4i` stores 4 words after the token. */
    KONA_HP_COLOR4I                      = 0x06c,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_COLOR4S` (0x06d). Route: routed by the host interface with no ARM
     * code, map entry 0xb9085107: command 16, count field 4, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_COLOR4S                      = 0x06d,

    /* `HP_COLOR4UB` (0x06e). Route: routed by the host interface with no ARM
     * code, map entry 0x99885107: command 272, count field 4, untyped words;
     * distributor entry 0x2dd at ged1b.u tfanpoly.s:94. */
    KONA_HP_COLOR4UB                     = 0x06e,

    /* `HP_COLOR4UI` (0x06f). Route: routed by the host interface with no ARM
     * code, map entry 0xd9885107: command 272, count field 4, single floats;
     * distributor entry 0x2dd at ged1b.u tfanpoly.s:94. Route: libGLcore.so
     * `__glkonim_Color4ui` stores 4 words after the token. */
    KONA_HP_COLOR4UI                     = 0x06f,

    /* `HP_COLOR4US` (0x070). Route: routed by the host interface with no ARM
     * code, map entry 0xb9885107: command 272, count field 4, type 1;
     * distributor entry 0x2dd at ged1b.u tfanpoly.s:94. */
    KONA_HP_COLOR4US                     = 0x070,

    /* Engine handlers relocated into the span of distributor entry 0x366:
     * `mgesi_Triangles`. */

    /* `HP_END` (0x071). Route: routed by the host interface with no ARM code,
     * map entry 0xd8c10055: command 386, count field 1, single floats;
     * distributor entry 0x366 at ged1b.u tri.s:52. Route: libGLcore.so
     * `__glkonim_End` stores 1 word after the token. */
    KONA_HP_END                          = 0x071,

    /* `HP_INDEXD` (0x072). Route: routed by the host interface with no ARM
     * code, map entry 0xf848d887: command 145, count field 2, doubles;
     * distributor entry 0x25e at ged1b.u qstrip.s:118. Route: libGLcore.so
     * `__glkonim_Indexd` stores 2 words after the token. */
    KONA_HP_INDEXD                       = 0x072,

    /* `HP_INDEXF` (0x073). Route: routed by the host interface with no ARM
     * code, map entry 0xd848d847: command 145, count field 1, single floats;
     * distributor entry 0x25e at ged1b.u qstrip.s:118. Route: libGLcore.so
     * `__glkonim_Indexf` stores 1 word after the token. */
    KONA_HP_INDEXF                       = 0x073,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_INDEXI` (0x074). Route: routed by the host interface with no ARM
     * code, map entry 0xd808d847: command 17, count field 1, single floats;
     * distributor entry 0x003 at ged1b.u dist.s:13. Route: libGLcore.so
     * `__glkonim_Indexi` stores 1 word after the token. */
    KONA_HP_INDEXI                       = 0x074,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_INDEXS` (0x075). Route: routed by the host interface with no ARM
     * code, map entry 0xa808d847: command 17, count field 1, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. Route: libGLcore.so
     * `__glkonim_Indexs` stores 1 word after the token. */
    KONA_HP_INDEXS                       = 0x075,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_NORMAL3B` (0x076). Route: routed by the host interface with no ARM
     * code, map entry 0x9107dac7: command 15, count field 11, untyped words;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_NORMAL3B                     = 0x076,

    /* `HP_NORMAL3D` (0x077). Route: routed by the host interface with no ARM
     * code, map entry 0xf847db87: command 143, count field 14, doubles;
     * distributor entry 0x2a1 at ged1b.u qstrip.s:256. Route: libGLcore.so
     * `__glkonim_Normal3d` stores 6 words after the token. */
    KONA_HP_NORMAL3D                     = 0x077,

    /* `HP_NORMAL3F` (0x078). Route: routed by the host interface with no ARM
     * code, map entry 0xd847dac7: command 143, count field 11, single floats;
     * distributor entry 0x2a1 at ged1b.u qstrip.s:256. Route: libGLcore.so
     * `__glkonim_Normal3f` stores 3 words after the token. */
    KONA_HP_NORMAL3F                     = 0x078,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_NORMAL3I` (0x079). Route: routed by the host interface with no ARM
     * code, map entry 0xd907dac7: command 15, count field 11, single floats;
     * distributor entry 0x003 at ged1b.u dist.s:13. Route: libGLcore.so
     * `__glkonim_Normal3i` stores 3 words after the token. */
    KONA_HP_NORMAL3I                     = 0x079,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_NORMAL3S` (0x07a). Route: routed by the host interface with no ARM
     * code, map entry 0xa907dac7: command 15, count field 11, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_NORMAL3S                     = 0x07a,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD1D` (0x07b). Route: routed by the host interface with no
     * ARM code, map entry 0xfe496087: command 146, count field 2, doubles;
     * distributor entry 0x27a at ged1b.u qstrip.s:174. Route: libGLcore.so
     * `__glkonim_TexCoord1d` stores 2 words after the token. */
    KONA_HP_TEXCOORD1D                   = 0x07b,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD1F` (0x07c). Route: routed by the host interface with no
     * ARM code, map entry 0xde496047: command 146, count field 1, single
     * floats; distributor entry 0x27a at ged1b.u qstrip.s:174. Route:
     * libGLcore.so `__glkonim_TexCoord1f` stores 1 word after the token. */
    KONA_HP_TEXCOORD1F                   = 0x07c,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD1I` (0x07d). Route: routed by the host interface with no
     * ARM code, map entry 0xde096047: command 18, count field 1, single
     * floats; distributor entry 0x003 at ged1b.u dist.s:13. Route:
     * libGLcore.so `__glkonim_TexCoord1i` stores 1 word after the token. */
    KONA_HP_TEXCOORD1I                   = 0x07d,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD1S` (0x07e). Route: routed by the host interface with no
     * ARM code, map entry 0xae096047: command 18, count field 1, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. Route: libGLcore.so
     * `__glkonim_TexCoord1s` stores 1 word after the token. */
    KONA_HP_TEXCOORD1S                   = 0x07e,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD2D` (0x07f). Route: routed by the host interface with no
     * ARM code, map entry 0xfc496107: command 146, count field 4, doubles;
     * distributor entry 0x27a at ged1b.u qstrip.s:174. Route: libGLcore.so
     * `__glkonim_TexCoord2d` stores 4 words after the token. */
    KONA_HP_TEXCOORD2D                   = 0x07f,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD2F` (0x080). Route: routed by the host interface with no
     * ARM code, map entry 0xdc496087: command 146, count field 2, single
     * floats; distributor entry 0x27a at ged1b.u qstrip.s:174. Route:
     * libGLcore.so `__glkonim_TexCoord2f` stores 2 words after the token. */
    KONA_HP_TEXCOORD2F                   = 0x080,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD2I` (0x081). Route: routed by the host interface with no
     * ARM code, map entry 0xdc096087: command 18, count field 2, single
     * floats; distributor entry 0x003 at ged1b.u dist.s:13. Route:
     * libGLcore.so `__glkonim_TexCoord2i` stores 2 words after the token. */
    KONA_HP_TEXCOORD2I                   = 0x081,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD2S` (0x082). Route: routed by the host interface with no
     * ARM code, map entry 0xbc096087: command 18, count field 2, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_TEXCOORD2S                   = 0x082,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD3D` (0x083). Route: routed by the host interface with no
     * ARM code, map entry 0xfa496187: command 146, count field 6, doubles;
     * distributor entry 0x27a at ged1b.u qstrip.s:174. Route: libGLcore.so
     * `__glkonim_TexCoord3d` stores 6 words after the token. */
    KONA_HP_TEXCOORD3D                   = 0x083,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD3F` (0x084). Route: routed by the host interface with no
     * ARM code, map entry 0xda4960c7: command 146, count field 3, single
     * floats; distributor entry 0x27a at ged1b.u qstrip.s:174. Route:
     * libGLcore.so `__glkonim_TexCoord3f` stores 3 words after the token. */
    KONA_HP_TEXCOORD3F                   = 0x084,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD3I` (0x085). Route: routed by the host interface with no
     * ARM code, map entry 0xda0960c7: command 18, count field 3, single
     * floats; distributor entry 0x003 at ged1b.u dist.s:13. Route:
     * libGLcore.so `__glkonim_TexCoord3i` stores 3 words after the token. */
    KONA_HP_TEXCOORD3I                   = 0x085,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD3S` (0x086). Route: routed by the host interface with no
     * ARM code, map entry 0xaa0960c7: command 18, count field 3, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_TEXCOORD3S                   = 0x086,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD4D` (0x087). Route: routed by the host interface with no
     * ARM code, map entry 0xf8496007: command 146, count field 32, doubles;
     * distributor entry 0x27a at ged1b.u qstrip.s:174. Route: libGLcore.so
     * `__glkonim_TexCoord4d` stores 8 words after the token. */
    KONA_HP_TEXCOORD4D                   = 0x087,

    /* Engine handlers relocated into the span of distributor entry 0x27a:
     * `mgesi_QuadStrip`. */

    /* `HP_TEXCOORD4F` (0x088). Route: routed by the host interface with no
     * ARM code, map entry 0xd8496107: command 146, count field 4, single
     * floats; distributor entry 0x27a at ged1b.u qstrip.s:174. Route:
     * libGLcore.so `__glkonim_TexCoord4f` stores 4 words after the token. */
    KONA_HP_TEXCOORD4F                   = 0x088,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD4I` (0x089). Route: routed by the host interface with no
     * ARM code, map entry 0xd8096107: command 18, count field 4, single
     * floats; distributor entry 0x003 at ged1b.u dist.s:13. Route:
     * libGLcore.so `__glkonim_TexCoord4i` stores 4 words after the token. */
    KONA_HP_TEXCOORD4I                   = 0x089,

    /* Engine handlers relocated into the span of distributor entry 0x003:
     * `mgebi_NullCommand`. */

    /* `HP_TEXCOORD4S` (0x08a). Route: routed by the host interface with no
     * ARM code, map entry 0xb8096107: command 18, count field 4, type 1;
     * distributor entry 0x003 at ged1b.u dist.s:13. */
    KONA_HP_TEXCOORD4S                   = 0x08a,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_VERTEX2D` (0x08b). Route: routed by the host interface with no ARM
     * code, map entry 0xfc674107: command 206, count field 4, doubles;
     * distributor entry 0x0e3 at ged1b.u tstrip.s:304. Route: libGLcore.so
     * `__glkonim_Vertex2d` stores 4 words after the token. */
    KONA_HP_VERTEX2D                     = 0x08b,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_VERTEX2F` (0x08c). Route: routed by the host interface with no ARM
     * code, map entry 0xdc674087: command 206, count field 2, single floats;
     * distributor entry 0x0e3 at ged1b.u tstrip.s:304. Route: libGLcore.so
     * `__glkonim_Vertex2f` stores 2 words after the token. */
    KONA_HP_VERTEX2F                     = 0x08c,

    /* Engine handlers relocated into the span of distributor entry 0x193:
     * `mgesi_LineStrip`. */

    /* `HP_VERTEX2I` (0x08d). Route: routed by the host interface with no ARM
     * code, map entry 0xdc274087: command 78, count field 2, single floats;
     * distributor entry 0x193 at ged1b.u lineloop.s:193. Route: libGLcore.so
     * `__glkonim_Vertex2i` stores 2 words after the token. */
    KONA_HP_VERTEX2I                     = 0x08d,

    /* Engine handlers relocated into the span of distributor entry 0x193:
     * `mgesi_LineStrip`. */

    /* `HP_VERTEX2S` (0x08e). Route: routed by the host interface with no ARM
     * code, map entry 0xbc274087: command 78, count field 2, type 1;
     * distributor entry 0x193 at ged1b.u lineloop.s:193. */
    KONA_HP_VERTEX2S                     = 0x08e,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_VERTEX3D` (0x08f). Route: routed by the host interface with no ARM
     * code, map entry 0xfa674187: command 206, count field 6, doubles;
     * distributor entry 0x0e3 at ged1b.u tstrip.s:304. Route: libGLcore.so
     * `__glkonim_Vertex3d` stores 6 words after the token. */
    KONA_HP_VERTEX3D                     = 0x08f,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_VERTEX3F` (0x090). Route: routed by the host interface with no ARM
     * code, map entry 0xda6740c7: command 206, count field 3, single floats;
     * distributor entry 0x0e3 at ged1b.u tstrip.s:304. Route: libGLcore.so
     * `__glkonim_Vertex3f` stores 3 words after the token. */
    KONA_HP_VERTEX3F                     = 0x090,

    /* Engine handlers relocated into the span of distributor entry 0x193:
     * `mgesi_LineStrip`. */

    /* `HP_VERTEX3I` (0x091). Route: routed by the host interface with no ARM
     * code, map entry 0xda2740c7: command 78, count field 3, single floats;
     * distributor entry 0x193 at ged1b.u lineloop.s:193. Route: libGLcore.so
     * `__glkonim_Vertex3i` stores 3 words after the token. */
    KONA_HP_VERTEX3I                     = 0x091,

    /* Engine handlers relocated into the span of distributor entry 0x193:
     * `mgesi_LineStrip`. */

    /* `HP_VERTEX3S` (0x092). Route: routed by the host interface with no ARM
     * code, map entry 0xaa2740c7: command 78, count field 3, type 1;
     * distributor entry 0x193 at ged1b.u lineloop.s:193. */
    KONA_HP_VERTEX3S                     = 0x092,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_VERTEX4D` (0x093). Route: routed by the host interface with no ARM
     * code, map entry 0xf8674007: command 206, count field 32, doubles;
     * distributor entry 0x0e3 at ged1b.u tstrip.s:304. Route: libGLcore.so
     * `__glkonim_Vertex4d` stores 8 words after the token. */
    KONA_HP_VERTEX4D                     = 0x093,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_VERTEX4F` (0x094). Route: routed by the host interface with no ARM
     * code, map entry 0xd8674107: command 206, count field 4, single floats;
     * distributor entry 0x0e3 at ged1b.u tstrip.s:304. Route: libGLcore.so
     * `__glkonim_Vertex4f` stores 4 words after the token. */
    KONA_HP_VERTEX4F                     = 0x094,

    /* Engine handlers relocated into the span of distributor entry 0x193:
     * `mgesi_LineStrip`. */

    /* `HP_VERTEX4I` (0x095). Route: routed by the host interface with no ARM
     * code, map entry 0xd8274107: command 78, count field 4, single floats;
     * distributor entry 0x193 at ged1b.u lineloop.s:193. Route: libGLcore.so
     * `__glkonim_Vertex4i` stores 4 words after the token. */
    KONA_HP_VERTEX4I                     = 0x095,

    /* Engine handlers relocated into the span of distributor entry 0x193:
     * `mgesi_LineStrip`. */

    /* `HP_VERTEX4S` (0x096). Route: routed by the host interface with no ARM
     * code, map entry 0xb8274107: command 78, count field 4, type 1;
     * distributor entry 0x193 at ged1b.u lineloop.s:193. */
    KONA_HP_VERTEX4S                     = 0x096,

    /* `HP_MATERIALF` (0x097). Route: routed by the host interface with no ARM
     * code, map entry 0xd8408187: command 129, count field 6, single floats;
     * distributor entry 0x254 at ged1b.u qstrip.s:98. Route: libGLcore.so
     * `__glkonim_Materialfv` stores 6 words after the token. */
    KONA_HP_MATERIALF                    = 0x097,

    /* `HP_MATERIALF_cont` (0x098). Route: routed by the host interface with
     * no ARM code, map entry 0xd84f8507: command 159, count field 20, single
     * floats; distributor entry 0x2a1 at ged1b.u qstrip.s:256. */
    KONA_HP_MATERIALF_cont               = 0x098,

    /* `HP_MATERIALI` (0x099). Route: routed by the host interface with no ARM
     * code, map entry 0xd84f808f: command 159, count field 2, single floats;
     * distributor entry 0x2a1 at ged1b.u qstrip.s:256. */
    KONA_HP_MATERIALI                    = 0x099,

    /* Engine handlers relocated into the span of distributor entry 0x016:
     * `mgeb_Material`. */

    /* `HP_MATERIALI_cont` (0x09a). Route: routed by the host interface with
     * no ARM code, map entry 0xd8008507: command 1, count field 20, single
     * floats; distributor entry 0x016 at ged1b.u material.s:11. */
    KONA_HP_MATERIALI_cont               = 0x09a,

    /* `HP_EVAL_COORD1D` (0x09b). Route: routed by the host interface with no
     * ARM code, map entry 0x51e0006f: command 448, count field 1, single
     * floats; distributor entry 0x1f1 at ged1b.u quad.s:22. */
    KONA_HP_EVAL_COORD1D                 = 0x09b,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_EVAL_COORD1D_cont` (0x09c). Route: routed by the host interface
     * with no ARM code, map entry 0xf8474087: command 142, count field 2,
     * doubles; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_EVAL_COORD1D_cont            = 0x09c,

    /* `HP_EVAL_COORD1F` (0x09d). Route: routed by the host interface with no
     * ARM code, map entry 0x51e0006f: command 448, count field 1, single
     * floats; distributor entry 0x1f1 at ged1b.u quad.s:22. Route:
     * libGLcore.so `__glKonEvalCoord1DGe11` stores 2 words after the token. */
    KONA_HP_EVAL_COORD1F                 = 0x09d,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_EVAL_COORD1F_cont` (0x09e). Route: routed by the host interface
     * with no ARM code, map entry 0xd8474047: command 142, count field 1,
     * single floats; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_EVAL_COORD1F_cont            = 0x09e,

    /* `HP_EVAL_COORD2D` (0x09f). Route: routed by the host interface with no
     * ARM code, map entry 0x51e0006f: command 448, count field 1, single
     * floats; distributor entry 0x1f1 at ged1b.u quad.s:22. */
    KONA_HP_EVAL_COORD2D                 = 0x09f,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_EVAL_COORD2D_cont` (0x0a0). Route: routed by the host interface
     * with no ARM code, map entry 0xf8474107: command 142, count field 4,
     * doubles; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_EVAL_COORD2D_cont            = 0x0a0,

    /* `HP_EVAL_COORD2F` (0x0a1). Route: routed by the host interface with no
     * ARM code, map entry 0x51e0006f: command 448, count field 1, single
     * floats; distributor entry 0x1f1 at ged1b.u quad.s:22. Route:
     * libGLcore.so `__glKonEvalCoord2DGe11` stores 3 words after the token. */
    KONA_HP_EVAL_COORD2F                 = 0x0a1,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_EVAL_COORD2F_cont` (0x0a2). Route: routed by the host interface
     * with no ARM code, map entry 0xd8474087: command 142, count field 2,
     * single floats; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_EVAL_COORD2F_cont            = 0x0a2,

    /* `HP_EVAL_POINT1` (0x0a3). Route: routed by the host interface with no
     * ARM code, map entry 0x51e0006f: command 448, count field 1, single
     * floats; distributor entry 0x1f1 at ged1b.u quad.s:22. */
    KONA_HP_EVAL_POINT1                  = 0x0a3,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_EVAL_POINT1_cont` (0x0a4). Route: routed by the host interface with
     * no ARM code, map entry 0xd8474047: command 142, count field 1, single
     * floats; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_EVAL_POINT1_cont             = 0x0a4,

    /* `HP_EVAL_POINT2` (0x0a5). Route: routed by the host interface with no
     * ARM code, map entry 0x51e0006f: command 448, count field 1, single
     * floats; distributor entry 0x1f1 at ged1b.u quad.s:22. */
    KONA_HP_EVAL_POINT2                  = 0x0a5,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_EVAL_POINT2_cont` (0x0a6). Route: routed by the host interface with
     * no ARM code, map entry 0xd8474087: command 142, count field 2, single
     * floats; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_EVAL_POINT2_cont             = 0x0a6,

    /* `HP_EDGEFLAG` (0x0a7). Route: the token map runs `arm_edgeflag` at
     * arm1.u 0x0c015c7c. Route: libGLcore.so `__glkonim_EdgeFlag` stores 1
     * word after the token. */
    KONA_HP_EDGEFLAG                     = 0x0a7,

    /* `HP_RASTERPOS2D` (0x0a8). Route: the token map runs `arm_rasterpos2d`
     * at arm1.u 0x0c035cf4. Route: libGLcore.so `__glkonim_RasterPos2d`
     * stores 4 words after the token. */
    KONA_HP_RASTERPOS2D                  = 0x0a8,

    /* `HP_RASTERPOS2F` (0x0a9). Route: the token map runs `arm_rasterpos2f`
     * at arm1.u 0x0c035d74. Route: libGLcore.so `__glkonim_RasterPos2f`
     * stores 2 words after the token. */
    KONA_HP_RASTERPOS2F                  = 0x0a9,

    /* `HP_RASTERPOS2I` (0x0aa). Route: the token map runs `arm_rasterpos2i`
     * at arm1.u 0x0c035de0. Route: libGLcore.so `__glkonim_RasterPos2i`
     * stores 2 words after the token. */
    KONA_HP_RASTERPOS2I                  = 0x0aa,

    /* `HP_RASTERPOS2S` (0x0ab). Route: the token map runs `arm_rasterpos2s`
     * at arm1.u 0x0c035e4c. Route: libGLcore.so `__glkonim_RasterPos2s`
     * stores 2 words after the token. */
    KONA_HP_RASTERPOS2S                  = 0x0ab,

    /* `HP_RASTERPOS3D` (0x0ac). Route: the token map runs `arm_rasterpos3d`
     * at arm1.u 0x0c035ee0. Route: libGLcore.so `__glkonim_RasterPos3d`
     * stores 6 words after the token. */
    KONA_HP_RASTERPOS3D                  = 0x0ac,

    /* `HP_RASTERPOS3F` (0x0ad). Route: the token map runs `arm_rasterpos3f`
     * at arm1.u 0x0c035f78. Route: libGLcore.so `__glkonim_RasterPos3f`
     * stores 3 words after the token. */
    KONA_HP_RASTERPOS3F                  = 0x0ad,

    /* `HP_RASTERPOS3I` (0x0ae). Route: the token map runs `arm_rasterpos3i`
     * at arm1.u 0x0c035fec. Route: libGLcore.so `__glkonim_RasterPos3i`
     * stores 3 words after the token. */
    KONA_HP_RASTERPOS3I                  = 0x0ae,

    /* `HP_RASTERPOS3S` (0x0af). Route: the token map runs `arm_rasterpos3s`
     * at arm1.u 0x0c036060. Route: libGLcore.so `__glkonim_RasterPos3s`
     * stores 3 words after the token. */
    KONA_HP_RASTERPOS3S                  = 0x0af,

    /* `HP_RASTERPOS4D` (0x0b0). Route: the token map runs `arm_rasterpos4d`
     * at arm1.u 0x0c0360fc. Route: libGLcore.so `__glkonim_RasterPos4d`
     * stores 8 words after the token. */
    KONA_HP_RASTERPOS4D                  = 0x0b0,

    /* `HP_RASTERPOS4F` (0x0b1). Route: the token map runs `arm_rasterpos4f`
     * at arm1.u 0x0c0361b4. Route: libGLcore.so `__glkonim_RasterPos4f`
     * stores 4 words after the token. */
    KONA_HP_RASTERPOS4F                  = 0x0b1,

    /* `HP_RASTERPOS4I` (0x0b2). Route: the token map runs `arm_rasterpos4i`
     * at arm1.u 0x0c036230. Route: libGLcore.so `__glkonim_RasterPos4i`
     * stores 4 words after the token. */
    KONA_HP_RASTERPOS4I                  = 0x0b2,

    /* `HP_RASTERPOS4S` (0x0b3). Route: the token map runs `arm_rasterpos4s`
     * at arm1.u 0x0c0362ac. Route: libGLcore.so `__glkonim_RasterPos4s`
     * stores 4 words after the token. */
    KONA_HP_RASTERPOS4S                  = 0x0b3,

    /* Engine handlers whose slots the code of `arm_clipplane` loads, in
     * order: `mgeb_UserClipPlane`. */

    /* `HP_CLIPPLANE` (0x0b4). Route: the token map runs `arm_clipplane` at
     * arm1.u 0x0c018cc0. */
    KONA_HP_CLIPPLANE                    = 0x0b4,

    /* `HP_COLORMATERIAL` (0x0b5). Route: the token map runs
     * `arm_colormaterial` at arm1.u 0x0c016c70. Route: libGLcore.so
     * `__glkonim_ColorMaterial` stores 2 words after the token. */
    KONA_HP_COLORMATERIAL                = 0x0b5,

    /* Engine handlers whose slots the code of `arm_cullface` loads, in order:
     * `mgeb_CullFace`. */

    /* `HP_CULLFACE` (0x0b6). Route: the token map runs `arm_cullface` at
     * arm1.u 0x0c015544. */
    KONA_HP_CULLFACE                     = 0x0b6,

    /* `HP_FOGF` (0x0b7). Route: routed by the host interface with no ARM
     * code, map entry 0x5840d141: command 129, count field 5, single floats;
     * engine handler `mgeb_Fogf` (index 1 of the handler table). */
    KONA_HP_FOGF                         = 0x0b7,

    /* `HP_FOGI` (0x0b8). Route: routed by the host interface with no ARM
     * code, map entry 0x58401049: command 128, count field 1, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_FOGI                         = 0x0b8,

    /* `HP_FOGI_cont` (0x0b9). Route: routed by the host interface with no ARM
     * code, map entry 0x58015101: command 2, count field 4, single floats;
     * engine handler `mgeb_Fogi` (index 2 of the handler table). */
    KONA_HP_FOGI_cont                    = 0x0b9,

    /* Engine handlers whose slots the code of `arm_frontface` loads, in
     * order: `mgeb_FrontFace`. */

    /* `HP_FRONTFACE` (0x0ba). Route: the token map runs `arm_frontface` at
     * arm1.u 0x0c015524. */
    KONA_HP_FRONTFACE                    = 0x0ba,

    /* `HP_HINT` (0x0bb). Route: the token map runs `arm_hint` at arm1.u
     * 0x0c016468. */
    KONA_HP_HINT                         = 0x0bb,

    /* Engine handlers whose slots the code of `arm_linestipple` loads, in
     * order: `mgeb_LineStipple`. */

    /* `HP_LINESTIPPLE` (0x0bc). Route: the token map runs `arm_linestipple`
     * at arm1.u 0x0c015ca0. Route: libGLcore.so `__glkonim_LineStipple`
     * stores 2 words after the token. */
    KONA_HP_LINESTIPPLE                  = 0x0bc,

    /* `HP_LINEWIDTH` (0x0bd). Route: the token map runs `arm_linewidth` at
     * arm1.u 0x0c015a14. */
    KONA_HP_LINEWIDTH                    = 0x0bd,

    /* `HP_POINTSIZE` (0x0be). Route: the token map runs `arm_pointsize` at
     * arm1.u 0x0c015a00. */
    KONA_HP_POINTSIZE                    = 0x0be,

    /* `HP_POLYGONMODE` (0x0bf). Route: the token map runs `arm_polygonmode`
     * at arm1.u 0x0c015598. */
    KONA_HP_POLYGONMODE                  = 0x0bf,

    /* Engine handlers whose slots the code of `arm_shademodel` loads, in
     * order: `mgebi_ShadeModel`. */

    /* `HP_SHADEMODEL` (0x0c0). Route: the token map runs `arm_shademodel` at
     * arm1.u 0x0c016ab8. Route: libGLcore.so `__glkonim_ShadeModel` stores 1
     * word after the token. */
    KONA_HP_SHADEMODEL                   = 0x0c0,

    /* Engine handlers whose slots the code of `arm_passthrough` loads, in
     * order: `mgesi_PassThrough`. */

    /* `HP_PASSTHROUGH` (0x0c1). Route: the token map runs `arm_passthrough`
     * at arm1.u 0x0c038930. Route: libGLcore.so `__glkonim_PassThrough`
     * stores 1 word after the token. */
    KONA_HP_PASSTHROUGH                  = 0x0c1,

    /* Engine handlers whose slots the code of `arm_popname` loads, in order:
     * `mgeb_PopName`. */

    /* `HP_POPNAME` (0x0c2). Route: the token map runs `arm_popname` at arm1.u
     * 0x0c038900. Route: libGLcore.so `__glkonim_PopName` stores 1 word after
     * the token. */
    KONA_HP_POPNAME                      = 0x0c2,

    /* Engine handlers whose slots the code of `arm_pushname` loads, in order:
     * `mgeb_PushName`. */

    /* `HP_PUSHNAME` (0x0c3). Route: the token map runs `arm_pushname` at
     * arm1.u 0x0c0388cc. Route: libGLcore.so `__glkonim_PushName` stores 1
     * word after the token. */
    KONA_HP_PUSHNAME                     = 0x0c3,

    /* `HP_DRAWBUFFER` (0x0c4). Route: the token map runs `arm_drawbuffer` at
     * arm1.u 0x0c013a60. Route: libGLcore.so `__glkonim_DrawBuffer` stores 1
     * word after the token. */
    KONA_HP_DRAWBUFFER                   = 0x0c4,

    /* `HP_ACCUM` (0x0c5). Route: the token map runs `arm_accum` at arm1.u
     * 0x0c037dd0. Route: libGLcore.so `__glkonim_Accum` stores 2 words after
     * the token. */
    KONA_HP_ACCUM                        = 0x0c5,

    /* Engine handlers whose slots the code of `arm_finish` loads, in order:
     * `mgesi_FlushRM`. */

    /* `HP_FINISH` (0x0c6). Route: the token map runs `arm_finish` at arm1.u
     * 0x0c014040. */
    KONA_HP_FINISH                       = 0x0c6,

    /* Engine handlers relocated into the span of distributor entry 0x289:
     * `mgesi_QuadStrip`, `mgesi_QuadStripSave`, `mgesi_QuadStripRestore`,
     * `mgesi_QuadStripRestoreSave`. */

    /* `HP_FLUSH` (0x0c7). Route: routed by the host interface with no ARM
     * code, map entry 0x58410051: command 130, count field 1, single floats;
     * distributor entry 0x289 at ged1b.u qstrip.s:202. Route: libGLcore.so
     * `__glkonim_Flush` stores 1 word after the token. */
    KONA_HP_FLUSH                        = 0x0c7,

    /* `HP_POPATTRIB` (0x0c8). Route: the token map runs `arm_popattrib` at
     * arm1.u 0x0c03a8dc. */
    KONA_HP_POPATTRIB                    = 0x0c8,

    /* Engine handlers whose slots the code of `arm_pushattrib` loads, in
     * order: `mgesi_StartRdata`, `mgesi_GetRaster`, `mgesi_Eram2ODMA`,
     * `mgesi_GetSpecial`, `mgesi_FinishRdata`. */

    /* `HP_PUSHATTRIB` (0x0c9). Route: the token map runs `arm_pushattrib` at
     * arm1.u 0x0c039c80. */
    KONA_HP_PUSHATTRIB                   = 0x0c9,

    /* Engine handlers whose slots the code of `arm_alphafunc` loads, in
     * order: `mgesi_AlphaFunc`. */

    /* `HP_ALPHAFUNC` (0x0ca). Route: the token map runs `arm_alphafunc` at
     * arm1.u 0x0c012bbc. */
    KONA_HP_ALPHAFUNC                    = 0x0ca,

    /* `HP_BLENDFUNC` (0x0cb). Route: the token map runs `arm_blendfunc` at
     * arm1.u 0x0c015768. */
    KONA_HP_BLENDFUNC                    = 0x0cb,

    /* `HP_STENCILFUNC` (0x0cc). Route: the token map runs `arm_stencilfunc`
     * at arm1.u 0x0c014960. */
    KONA_HP_STENCILFUNC                  = 0x0cc,

    /* `HP_STENCILOP` (0x0cd). Route: the token map runs `arm_stencilop` at
     * arm1.u 0x0c0149b8. */
    KONA_HP_STENCILOP                    = 0x0cd,

    /* `HP_DEPTHFUNC` (0x0ce). Route: the token map runs `arm_depthfunc` at
     * arm1.u 0x0c0147a0. */
    KONA_HP_DEPTHFUNC                    = 0x0ce,

    /* Engine handlers whose slots the code of `arm_depthrange` loads, in
     * order: `mgeb_DepthRange`. */

    /* `HP_DEPTHRANGE` (0x0cf). Route: the token map runs `arm_depthrange` at
     * arm1.u 0x0c014800. Route: libGLcore.so `__glkonim_DepthRange` stores 4
     * words after the token. */
    KONA_HP_DEPTHRANGE                   = 0x0cf,

    /* Engine handlers whose slots the code of `arm_matrixmode` loads, in
     * order: `mgeb_MatrixMode`, `mgeb_LoadIdentity_Modelview`,
     * `mgeb_LoadMatrix_Modelview`, `mgeb_Frustum_Modelview`,
     * `mgeb_MultMatrix_Modelview`, `mgeb_Ortho_Modelview`,
     * `mgeb_PopMatrix_Modelview`, `mgeb_PushMatrix_Modelview`,
     * `mgeb_Rotate_Modelview`, `mgeb_Scale_Modelview`,
     * `mgeb_LoadIdentity_Projection`, `mgeb_LoadMatrix_Projection`,
     * `mgeb_Frustum_Projection`, `mgeb_MultMatrix_Projection`,
     * `mgeb_Ortho_Projection`, `mgeb_PopMatrix_Projection`,
     * `mgeb_PushMatrix_Projection`, `mgeb_Rotate_Projection`,
     * `mgeb_Scale_Projection`, `mgeb_Translate_Projection`,
     * `mgeb_LoadIdentity_Texture`, `mgeb_LoadMatrix_Texture`,
     * `mgeb_Frustum_Texture`, `mgeb_MultMatrix_Texture`,
     * `mgeb_Ortho_Texture`, `mgeb_PopMatrix_Texture`,
     * `mgeb_PushMatrix_Texture`, `mgeb_Rotate_Texture`, `mgeb_Scale_Texture`,
     * `mgeb_Translate_Texture`. */

    /* `HP_MATRIXMODE` (0x0d0). Route: the token map runs `arm_matrixmode` at
     * arm1.u 0x0c01904c. */
    KONA_HP_MATRIXMODE                   = 0x0d0,

    /* `HP_FRUSTUM` (0x0d1). Route: routed by the host interface with no ARM
     * code, map entry 0x7842d301: command 133, count field 12, doubles;
     * engine handler `mgeb_Frustum_Modelview` (index 5 of the handler table).
     * Route: libGLcore.so `__glkonim_Frustum` stores 12 words after the
     * token. */
    KONA_HP_FRUSTUM                      = 0x0d1,

    /* `HP_LOADIDENTITY` (0x0d2). Route: routed by the host interface with no
     * ARM code, map entry 0x5841d041: command 131, count field 1, single
     * floats; engine handler `mgeb_LoadIdentity_Modelview` (index 3 of the
     * handler table). Route: libGLcore.so `__glkonim_LoadIdentity` stores 1
     * word after the token. */
    KONA_HP_LOADIDENTITY                 = 0x0d2,

    /* `HP_LOADMATRIXF` (0x0d3). Route: routed by the host interface with no
     * ARM code, map entry 0x58625401: command 196, count field 16, single
     * floats; engine handler `mgeb_LoadMatrix_Modelview` (index 4 of the
     * handler table). Route: libGLcore.so `__glkonim_LoadMatrixf` stores 16
     * words after the token. */
    KONA_HP_LOADMATRIXF                  = 0x0d3,

    /* `HP_LOADMATRIXD` (0x0d4). Route: routed by the host interface with no
     * ARM code, map entry 0x78625001: command 196, count field 32, doubles;
     * engine handler `mgeb_LoadMatrix_Modelview` (index 4 of the handler
     * table). Route: libGLcore.so `__glkonim_LoadMatrixd` stores 32 words
     * after the token. */
    KONA_HP_LOADMATRIXD                  = 0x0d4,

    /* `HP_MULTMATRIXF` (0x0d5). Route: routed by the host interface with no
     * ARM code, map entry 0x58635401: command 198, count field 16, single
     * floats; engine handler `mgeb_MultMatrix_Modelview` (index 6 of the
     * handler table). Route: libGLcore.so `__glkonim_MultMatrixf` stores 16
     * words after the token. */
    KONA_HP_MULTMATRIXF                  = 0x0d5,

    /* `HP_MULTMATRIXD` (0x0d6). Route: routed by the host interface with no
     * ARM code, map entry 0x78635001: command 198, count field 32, doubles;
     * engine handler `mgeb_MultMatrix_Modelview` (index 6 of the handler
     * table). Route: libGLcore.so `__glkonim_MultMatrixd` stores 32 words
     * after the token. */
    KONA_HP_MULTMATRIXD                  = 0x0d6,

    /* `HP_ORTHO` (0x0d7). Route: routed by the host interface with no ARM
     * code, map entry 0x7843d301: command 135, count field 12, doubles;
     * engine handler `mgeb_Ortho_Modelview` (index 7 of the handler table).
     * Route: libGLcore.so `__glkonim_Ortho` stores 12 words after the token. */
    KONA_HP_ORTHO                        = 0x0d7,

    /* `HP_POPMATRIX` (0x0d8). Route: routed by the host interface with no ARM
     * code, map entry 0x58045041: command 8, count field 1, single floats;
     * engine handler `mgeb_PopMatrix_Modelview` (index 8 of the handler
     * table). Route: libGLcore.so `__glkonim_PopMatrix` stores 1 word after
     * the token. */
    KONA_HP_POPMATRIX                    = 0x0d8,

    /* `HP_PUSHMATRIX` (0x0d9). Route: routed by the host interface with no
     * ARM code, map entry 0x5804d041: command 9, count field 1, single
     * floats; engine handler `mgeb_PushMatrix_Modelview` (index 9 of the
     * handler table). Route: libGLcore.so `__glkonim_PushMatrix` stores 1
     * word after the token. */
    KONA_HP_PUSHMATRIX                   = 0x0d9,

    /* `HP_ROTATED` (0x0da). Route: routed by the host interface with no ARM
     * code, map entry 0x78655201: command 202, count field 8, doubles; engine
     * handler `mgeb_Rotate_Modelview` (index 10 of the handler table). Route:
     * libGLcore.so `__glkonim_Rotated` stores 8 words after the token. */
    KONA_HP_ROTATED                      = 0x0da,

    /* `HP_ROTATEF` (0x0db). Route: routed by the host interface with no ARM
     * code, map entry 0x58655101: command 202, count field 4, single floats;
     * engine handler `mgeb_Rotate_Modelview` (index 10 of the handler table).
     * Route: libGLcore.so `__glkonim_Rotatef` stores 4 words after the token. */
    KONA_HP_ROTATEF                      = 0x0db,

    /* `HP_SCALED` (0x0dc). Route: routed by the host interface with no ARM
     * code, map entry 0x7865d181: command 203, count field 6, doubles; engine
     * handler `mgeb_Scale_Modelview` (index 11 of the handler table). Route:
     * libGLcore.so `__glkonim_Scaled` stores 6 words after the token. */
    KONA_HP_SCALED                       = 0x0dc,

    /* `HP_SCALEF` (0x0dd). Route: routed by the host interface with no ARM
     * code, map entry 0x5865d0c1: command 203, count field 3, single floats;
     * engine handler `mgeb_Scale_Modelview` (index 11 of the handler table).
     * Route: libGLcore.so `__glkonim_Scalef` stores 3 words after the token. */
    KONA_HP_SCALEF                       = 0x0dd,

    /* `HP_TRANSLATED` (0x0de). Route: routed by the host interface with no
     * ARM code, map entry 0x78665181: command 204, count field 6, doubles;
     * engine handler `mgeb_Translate_Modelview` (index 12 of the handler
     * table). Route: libGLcore.so `__glkonim_Translated` stores 6 words after
     * the token. */
    KONA_HP_TRANSLATED                   = 0x0de,

    /* `HP_TRANSLATEF` (0x0df). Route: routed by the host interface with no
     * ARM code, map entry 0x586650c1: command 204, count field 3, single
     * floats; engine handler `mgeb_Translate_Modelview` (index 12 of the
     * handler table). Route: libGLcore.so `__glkonim_Translatef` stores 3
     * words after the token. */
    KONA_HP_TRANSLATEF                   = 0x0df,

    /* `HP_WRAM2CRAM` (0x0e0). Route: routed by the host interface with no ARM
     * code, map entry 0x5846d441: command 141, count field 17, single floats;
     * distributor entry 0x25c at ged1b.u qstrip.s:114. */
    KONA_HP_WRAM2CRAM                    = 0x0e0,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_GEPASSCMD` (0x0e1). Route: routed by the host interface with no ARM
     * code, map entry 0x58474041: command 142, count field 1, single floats;
     * distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_GEPASSCMD                    = 0x0e1,

    /* `HP_TBUS_1` (0x0e2). Route: routed by the host interface with no ARM
     * code, map entry 0x5847c8c1: command 143, count field 3, single floats;
     * engine handler `mgesi_TBUS_1` (index 15 of the handler table). */
    KONA_HP_TBUS_1                       = 0x0e2,

    /* `HP_VIEWPORT` (0x0e3). Route: the token map runs `arm_viewport` at
     * arm1.u 0x0c0186ec. */
    KONA_HP_VIEWPORT                     = 0x0e3,

    /* `HP_SETERROR` (0x0e4). Route: the token map runs `arm_seterror` at
     * arm1.u 0x0c015500. Route: libGLcore.so `Error` stores 1 word after the
     * token. */
    KONA_HP_SETERROR                     = 0x0e4,

    /* `HP_END_OF_SIMULATION` (0x0e5). Route: the token map runs
     * `arm_end_of_simulation` at arm1.u 0x0c0152cc. */
    KONA_HP_END_OF_SIMULATION            = 0x0e5,

    /* Engine handlers whose slots the code of `arm_blendcolor` loads, in
     * order: `mgesi_TbusRegWrite`, `mgesi_UserColor`. */

    /* `HP_BLENDCOLOR` (0x0e6). Route: the token map runs `arm_blendcolor` at
     * arm1.u 0x0c012ee4. Route: libGLcore.so `__glkonim_BlendColorEXT` stores
     * 4 words after the token. */
    KONA_HP_BLENDCOLOR                   = 0x0e6,

    /* `HP_BLENDEQUATION` (0x0e7). Route: the token map runs
     * `arm_blendequation` at arm1.u 0x0c012f9c. Route: libGLcore.so
     * `__glkonim_BlendEquationEXT` stores 1 word after the token. */
    KONA_HP_BLENDEQUATION                = 0x0e7,

    /* `HP_COLORTABLE` (0x0e8). Route: the token map runs `arm_colortable` at
     * arm1.u 0x0c03e128. */
    KONA_HP_COLORTABLE                   = 0x0e8,

    /* `HP_COPYCOLORTABLE` (0x0e9). Route: the token map runs
     * `arm_copycolortable` at arm1.u 0x0c0265f0, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_COPYCOLORTABLE               = 0x0e9,

    /* `HP_GETCOLORTABLE` (0x0ea). Route: the token map runs
     * `arm_getcolortable` at arm1.u 0x0c03f24c. */
    KONA_HP_GETCOLORTABLE                = 0x0ea,

    /* `HP_COLORTABLEPARAMETERFV` (0x0eb). Route: the token map runs
     * `arm_colortableparameterfv` at arm1.u 0x0c03edac. Route: libGLcore.so
     * `__glkonim_ColorTableParameterfvSGI` stores 6 words after the token. */
    KONA_HP_COLORTABLEPARAMETERFV        = 0x0eb,

    /* `HP_GETCOLORTABLEPARAMETERFV` (0x0ec). Route: the token map runs
     * `arm_getcolortableparameterfv` at arm1.u 0x0c03ee70. */
    KONA_HP_GETCOLORTABLEPARAMETERFV     = 0x0ec,

    /* `HP_LOAD_POST_TEX_SCALE_BIAS` (0x0ed). Route: routed by the host
     * interface with no ARM code, map entry 0x5850d901: command 161, count
     * field 4, single floats; engine handler `mgebi_TextureScaleBias` (index
     * 33 of the handler table). Route: libGLcore.so
     * `loadPostTextureScaleBias` stores 4 words after the token. */
    KONA_HP_LOAD_POST_TEX_SCALE_BIAS     = 0x0ed,

    /* `HP_GETLINEMODEDIST` (0x0ee). Route: the token map runs
     * `arm_getlinemodedist` at arm1.u 0x0c02a7cc. */
    KONA_HP_GETLINEMODEDIST              = 0x0ee,

    /* `HP_CONVOLUTIONFILTER1D` (0x0ef). Route: the token map runs
     * `arm_convolutionfilter1d` at arm1.u 0x0c036c44. */
    KONA_HP_CONVOLUTIONFILTER1D          = 0x0ef,

    /* `HP_CONVOLUTIONFILTER2D` (0x0f0). Route: the token map runs
     * `arm_convolutionfilter2d` at arm1.u 0x0c036d78. */
    KONA_HP_CONVOLUTIONFILTER2D          = 0x0f0,

    /* `HP_CONVOLUTIONFILTER3D` (0x0f1). Route: the token map runs
     * `arm_convolutionfilter3d` at arm1.u 0x0c026648, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_CONVOLUTIONFILTER3D          = 0x0f1,

    /* `HP_COPYCONVOLUTIONFILTER1D` (0x0f2). Route: the token map runs
     * `arm_copyconvolutionfilter1d` at arm1.u 0x0c036ee8. */
    KONA_HP_COPYCONVOLUTIONFILTER1D      = 0x0f2,

    /* `HP_COPYCONVOLUTIONFILTER2D` (0x0f3). Route: the token map runs
     * `arm_copyconvolutionfilter2d` at arm1.u 0x0c037018. */
    KONA_HP_COPYCONVOLUTIONFILTER2D      = 0x0f3,

    /* Engine handlers whose slots the code of `arm_getconvolutionfilter`
     * loads, in order: `mgebi_Texture`. */

    /* `HP_GETCONVOLUTIONFILTER` (0x0f4). Route: the token map runs
     * `arm_getconvolutionfilter` at arm1.u 0x0c0372d4. */
    KONA_HP_GETCONVOLUTIONFILTER         = 0x0f4,

    /* `HP_SEPARABLEFILTER2D` (0x0f5). Route: the token map runs
     * `arm_separablefilter2d` at arm1.u 0x0c037150. */
    KONA_HP_SEPARABLEFILTER2D            = 0x0f5,

    /* `HP_SEPARABLEFILTER3D` (0x0f6). Route: the token map runs
     * `arm_separablefilter3d` at arm1.u 0x0c02664c, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_SEPARABLEFILTER3D            = 0x0f6,

    /* Engine handlers whose slots the code of `arm_getseparablefilter` loads,
     * in order: `mgebi_Texture`. */

    /* `HP_GETSEPARABLEFILTER` (0x0f7). Route: the token map runs
     * `arm_getseparablefilter` at arm1.u 0x0c037410. */
    KONA_HP_GETSEPARABLEFILTER           = 0x0f7,

    /* `HP_PIXEL_TRANSFORM_PARAMETERIV` (0x0f8). Route: the token map runs
     * `arm_pixel_transform_parameteriv` at arm1.u 0x0c03784c. */
    KONA_HP_PIXEL_TRANSFORM_PARAMETERIV  = 0x0f8,

    /* `HP_PIXEL_TRANSFORM_PARAMETERFV` (0x0f9). Route: the token map runs
     * `arm_pixel_transform_parameterfv` at arm1.u 0x0c03776c. */
    KONA_HP_PIXEL_TRANSFORM_PARAMETERFV  = 0x0f9,

    /* `HP_GET_PIXEL_TRANSFORM_PARAMETERIV` (0x0fa). Route: the token map runs
     * `arm_get_pixel_transform_parameteriv` at arm1.u 0x0c0378d8. */
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERIV = 0x0fa,

    /* `HP_GET_PIXEL_TRANSFORM_PARAMETERFV` (0x0fb). Route: the token map runs
     * `arm_get_pixel_transform_parameterfv` at arm1.u 0x0c026650, a stub that
     * ends in `arm_badcmd`. */
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERFV = 0x0fb,

    /* `HP_COPYTEXIMAGE1D` (0x0fc). Route: the token map runs
     * `arm_copyteximage1d` at arm1.u 0x0c0265f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_COPYTEXIMAGE1D               = 0x0fc,

    /* `HP_COPYTEXIMAGE` (0x0fd). Route: the token map runs `arm_copyteximage`
     * at arm1.u 0x0c02bf60. */
    KONA_HP_COPYTEXIMAGE                 = 0x0fd,

    /* `HP_COPYTEXSUBIMAGE1D` (0x0fe). Route: the token map runs
     * `arm_copytexsubimage1d` at arm1.u 0x0c0265f8, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_COPYTEXSUBIMAGE1D            = 0x0fe,

    /* `HP_WG_FLUSH_0` (0x0ff). Route: the token map runs `arm_wg_flush_0` at
     * arm1.u 0x0c0265fc, a stub that ends in `arm_badcmd`. */
    KONA_HP_WG_FLUSH_0                   = 0x0ff,

    /* `HP_DATA_1` (0x100). Route: the token map runs `arm_data_1` at arm1.u
     * 0x0c026600, a stub that ends in `arm_badcmd`. */
    KONA_HP_DATA_1                       = 0x100,

    /* `HP_COPYTEXSUBIMAGE2D` (0x101). Route: the token map runs
     * `arm_copytexsubimage2d` at arm1.u 0x0c026604, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_COPYTEXSUBIMAGE2D            = 0x101,

    /* `HP_HISTOGRAM` (0x102). Route: the token map runs `arm_histogram` at
     * arm1.u 0x0c03f8c4. */
    KONA_HP_HISTOGRAM                    = 0x102,

    /* `HP_RESETHISTOGRAM` (0x103). Route: the token map runs
     * `arm_resethistogram` at arm1.u 0x0c03fab0. Route: libGLcore.so
     * `__glkonim_ResetHistogramEXT` stores 1 word after the token. */
    KONA_HP_RESETHISTOGRAM               = 0x103,

    /* `HP_GETHISTOGRAM` (0x104). Route: the token map runs `arm_gethistogram`
     * at arm1.u 0x0c03f9a4. */
    KONA_HP_GETHISTOGRAM                 = 0x104,

    /* `HP_GETHISTOGRAMPARAMETERIV` (0x105). Route: the token map runs
     * `arm_gethistogramparameteriv` at arm1.u 0x0c03fac4. */
    KONA_HP_GETHISTOGRAMPARAMETERIV      = 0x105,

    /* Engine handlers whose slots the code of `arm_bind_linear_texture`
     * loads, in order: `mgesi_TbusRegWrite`, `mgesi_FillTMLoadFifo`,
     * `mgeb_SkipNextTextureAddr`, `mgebi_Texture`, `mgebi_TexEnvComps`,
     * `mgebi_UpdateTexturing`. */

    /* `HP_BIND_LINEAR_TEXTURE` (0x106). Route: the token map runs
     * `arm_bind_linear_texture` at arm1.u 0x0c0259ac. */
    KONA_HP_BIND_LINEAR_TEXTURE          = 0x106,

    /* `HP_MINMAX` (0x107). Route: the token map runs `arm_minmax` at arm1.u
     * 0x0c03fc74. */
    KONA_HP_MINMAX                       = 0x107,

    /* `HP_RESETMINMAX` (0x108). Route: the token map runs `arm_resetminmax`
     * at arm1.u 0x0c03fce8. Route: libGLcore.so `__glkonim_ResetMinmaxEXT`
     * stores 1 word after the token. */
    KONA_HP_RESETMINMAX                  = 0x108,

    /* `HP_GETMINMAX` (0x109). Route: the token map runs `arm_getminmax` at
     * arm1.u 0x0c03fcfc. */
    KONA_HP_GETMINMAX                    = 0x109,

    /* `HP_GETMINMAXPARAMETERIV` (0x10a). Route: the token map runs
     * `arm_getminmaxparameteriv` at arm1.u 0x0c03fd98. */
    KONA_HP_GETMINMAXPARAMETERIV         = 0x10a,

    /* Engine handlers relocated into the span of distributor entry 0x27f:
     * `mgesi_QuadStrip`. */

    /* `HP_GET_LIGHT_ATTRIBS` (0x10b). Route: routed by the host interface
     * with no ARM code, map entry 0x58514841: command 162, count field 1,
     * single floats; distributor entry 0x27f at ged1b.u qstrip.s:185. */
    KONA_HP_GET_LIGHT_ATTRIBS            = 0x10b,

    /* Engine handlers whose slots the code of `arm_initnames` loads, in
     * order: `mgeb_InitNames`. */

    /* `HP_INITNAMES` (0x10c). Route: the token map runs `arm_initnames` at
     * arm1.u 0x0c038864. Route: libGLcore.so `__glkonim_InitNames` stores 1
     * word after the token. */
    KONA_HP_INITNAMES                    = 0x10c,

    /* Engine handlers whose slots the code of `arm_loadname` loads, in order:
     * `mgeb_LoadName`. */

    /* `HP_LOADNAME` (0x10d). Route: the token map runs `arm_loadname` at
     * arm1.u 0x0c038898. Route: libGLcore.so `__glkonim_LoadName` stores 1
     * word after the token. */
    KONA_HP_LOADNAME                     = 0x10d,

    /* Engine handlers whose slots the code of `arm_set_current_raster` loads,
     * in order: `mgeb_SetCurrentRaster`. */

    /* `HP_SET_CURRENT_RASTER` (0x10e). Route: the token map runs
     * `arm_set_current_raster` at arm1.u 0x0c036350. Route: libGLcore.so
     * `setCurrentRaster` stores 15 words after the token. */
    KONA_HP_SET_CURRENT_RASTER           = 0x10e,

    /* Engine handlers whose slots the code of `arm_fogfunc` loads, in order:
     * `mgeb_FogFunc`. */

    /* `HP_FOGFUNC` (0x10f). Route: the token map runs `arm_fogfunc` at arm1.u
     * 0x0c03f628. */
    KONA_HP_FOGFUNC                      = 0x10f,

    /* `HP_COPYISOVERLAPPED` (0x110). Route: the token map runs
     * `arm_copyisoverlapped` at arm1.u 0x0c02c94c. */
    KONA_HP_COPYISOVERLAPPED             = 0x110,

    /* `HP_PIXEL_NOMODE` (0x111). Route: the token map runs `arm_pixel_nomode`
     * at arm1.u 0x0c02ca20. */
    KONA_HP_PIXEL_NOMODE                 = 0x111,

    /* Engine handlers whose slots the code of `arm_irisgl_mode` loads, in
     * order: `mgeb_SetLMCFlag`, `mgeb_ClearLMCFlag`. */

    /* `HP_IRISGL_MODE` (0x112). Route: the token map runs `arm_irisgl_mode`
     * at arm1.u 0x0c016770. */
    KONA_HP_IRISGL_MODE                  = 0x112,

    /* `HP_LMC_COLOR` (0x113). Route: the token map runs `arm_lmc_color` at
     * arm1.u 0x0c016898. */
    KONA_HP_LMC_COLOR                    = 0x113,

    /* `HP_VIDEO_SOURCE` (0x114). Route: the token map runs `arm_video_source`
     * at arm1.u 0x0c013924. */
    KONA_HP_VIDEO_SOURCE                 = 0x114,

    /* Engine handlers whose slots the code of `arm_copyconvisoverlapped`
     * loads, in order: `mgesi_GetRaster`. */

    /* `HP_COPYCONVISOVERLAPPED` (0x115). Route: the token map runs
     * `arm_copyconvisoverlapped` at arm1.u 0x0c02c9b0. */
    KONA_HP_COPYCONVISOVERLAPPED         = 0x115,

    /* `HP_RESOLVEISSINGLECOMP` (0x116). Route: the token map runs
     * `arm_resolveissinglecomp` at arm1.u 0x0c027d68. */
    KONA_HP_RESOLVEISSINGLECOMP          = 0x116,

    /* Engine handlers whose slots the code of `arm_samplepattern` loads, in
     * order: `mgeb_SetMSPointTables`. */

    /* `HP_SAMPLEPATTERN` (0x117). Route: the token map runs
     * `arm_samplepattern` at arm1.u 0x0c03c2a8. Route: libGLcore.so
     * `__glkonim_SamplePatternSGIS` stores 1 word after the token. */
    KONA_HP_SAMPLEPATTERN                = 0x117,

    /* `HP_SAMPLEMASK` (0x118). Route: the token map runs `arm_samplemask` at
     * arm1.u 0x0c03c350. */
    KONA_HP_SAMPLEMASK                   = 0x118,

    /* Engine handlers whose slots the code of `arm_poplights` loads, in
     * order: `mgeb_PopAttrLights`. */

    /* `HP_POPLIGHTS` (0x119). Route: the token map runs `arm_poplights` at
     * arm1.u 0x0c018134. */
    KONA_HP_POPLIGHTS                    = 0x119,

    /* `HP_PIXELTEXGEN` (0x11a). Route: the token map runs `arm_pixeltexgen`
     * at arm1.u 0x0c026610, a stub that ends in `arm_badcmd`. */
    KONA_HP_PIXELTEXGEN                  = 0x11a,

    /* Engine handlers whose slots the code of `arm_polygonoffsetext` loads,
     * in order: `mgeb_PolygonOffsetExt`. */

    /* `HP_POLYGONOFFSETEXT` (0x11b). Route: the token map runs
     * `arm_polygonoffsetext` at arm1.u 0x0c016408. Route: libGLcore.so
     * `__glkonim_PolygonOffsetEXT` stores 2 words after the token. */
    KONA_HP_POLYGONOFFSETEXT             = 0x11b,

    /* `HP_TEXSUBIMAGE1D` (0x11c). Route: the token map runs
     * `arm_texsubimage1d` at arm1.u 0x0c026614, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_TEXSUBIMAGE1D                = 0x11c,

    /* `HP_TEXSUBIMAGE2D` (0x11d). Route: the token map runs
     * `arm_texsubimage2d` at arm1.u 0x0c026618, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_TEXSUBIMAGE2D                = 0x11d,

    /* `HP_TEXSUBIMAGE3D` (0x11e). Route: the token map runs
     * `arm_texsubimage3d` at arm1.u 0x0c02661c, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_TEXSUBIMAGE3D                = 0x11e,

    /* `HP_TEXIMAGE3D` (0x11f). Route: the token map runs `arm_teximage3d` at
     * arm1.u 0x0c026620, a stub that ends in `arm_badcmd`. */
    KONA_HP_TEXIMAGE3D                   = 0x11f,

    /* `HP_TEXIMAGE4D` (0x120). Route: the token map runs `arm_teximage4d` at
     * arm1.u 0x0c026624, a stub that ends in `arm_badcmd`. */
    KONA_HP_TEXIMAGE4D                   = 0x120,

    /* `HP_TEXSUBIMAGE4D` (0x121). Route: the token map runs
     * `arm_texsubimage4d` at arm1.u 0x0c026628, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_TEXSUBIMAGE4D                = 0x121,

    /* `HP_GENTEXTURES1D` (0x122). Route: the token map runs
     * `arm_gentextures1d` at arm1.u 0x0c02662c, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GENTEXTURES1D                = 0x122,

    /* `HP_GENTEXTURES2D` (0x123). Route: the token map runs
     * `arm_gentextures2d` at arm1.u 0x0c026630, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GENTEXTURES2D                = 0x123,

    /* `HP_GENTEXTURES3D` (0x124). Route: the token map runs
     * `arm_gentextures3d` at arm1.u 0x0c026634, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_GENTEXTURES3D                = 0x124,

    /* `HP_ISTEXTURE` (0x125). Route: the token map runs `arm_istexture` at
     * arm1.u 0x0c026638, a stub that ends in `arm_badcmd`. */
    KONA_HP_ISTEXTURE                    = 0x125,

    /* `HP_DELETETEXTURES` (0x126). Route: the token map runs
     * `arm_deletetextures` at arm1.u 0x0c02663c, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_DELETETEXTURES               = 0x126,

    /* `HP_BINDTEXTURE` (0x127). Route: the token map runs `arm_bindtexture`
     * at arm1.u 0x0c026640, a stub that ends in `arm_badcmd`. */
    KONA_HP_BINDTEXTURE                  = 0x127,

    /* Engine handlers whose slots the code of `arm_x_init` loads, in order:
     * `mgeb_XContextInitialize`, `mgeb_ContextLoadEram`. */

    /* `HP_X_INIT` (0x128). Route: the token map runs `arm_x_init` at arm1.u
     * 0x0c03d2c8. */
    KONA_HP_X_INIT                       = 0x128,

    /* `HP_X_LOADGC` (0x129). Route: routed by the host interface with no ARM
     * code, map entry 0x5859db41: command 179, count field 13, single floats;
     * engine handler `mgebi_XLoadGC` (index 51 of the handler table). */
    KONA_HP_X_LOADGC                     = 0x129,

    /* `HP_X_LOADPOS` (0x12a). Route: routed by the host interface with no ARM
     * code, map entry 0x585a5901: command 180, count field 4, single floats;
     * engine handler `mgebi_XLoadPosition` (index 52 of the handler table). */
    KONA_HP_X_LOADPOS                    = 0x12a,

    /* `HP_X_LOADCLIP` (0x12b). Route: routed by the host interface with no
     * ARM code, map entry 0x585ad141: command 181, count field 5, single
     * floats; engine handler `mgeb_XLoadClip` (index 53 of the handler
     * table). */
    KONA_HP_X_LOADCLIP                   = 0x12b,

    /* Engine handlers whose slots the code of `arm_x_loadclip_arm` loads, in
     * order: `mgeb_XLoadClip`. */

    /* `HP_X_LOADCLIP_ARM` (0x12c). Route: the token map runs
     * `arm_x_loadclip_arm` at arm1.u 0x0c03d5b0. */
    KONA_HP_X_LOADCLIP_ARM               = 0x12c,

    /* `HP_X_LOADSCISSOR` (0x12d). Route: routed by the host interface with no
     * ARM code, map entry 0x585b4901: command 182, count field 4, single
     * floats; engine handler `mgesi_XLoadScissor` (index 54 of the handler
     * table). */
    KONA_HP_X_LOADSCISSOR                = 0x12d,

    /* Engine handlers whose slots the code of `arm_x_loadcmap` loads, in
     * order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. */

    /* `HP_X_LOADCMAP` (0x12e). Route: the token map runs `arm_x_loadcmap` at
     * arm1.u 0x0c03d5e8. */
    KONA_HP_X_LOADCMAP                   = 0x12e,

    /* Engine handlers whose slots the code of `arm_x_loadgamma` loads, in
     * order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. */

    /* `HP_X_LOADGAMMA` (0x12f). Route: the token map runs `arm_x_loadgamma`
     * at arm1.u 0x0c03d6fc. */
    KONA_HP_X_LOADGAMMA                  = 0x12f,

    /* Engine handlers whose slots the code of `arm_x_loadcursor` loads, in
     * order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. */

    /* `HP_X_LOADCURSOR` (0x130). Route: the token map runs `arm_x_loadcursor`
     * at arm1.u 0x0c03d9c4. */
    KONA_HP_X_LOADCURSOR                 = 0x130,

    /* Engine handlers whose slots the code of `arm_x_loadcursorcolor` loads,
     * in order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. */

    /* `HP_X_LOADCURSORCOLOR` (0x131). Route: the token map runs
     * `arm_x_loadcursorcolor` at arm1.u 0x0c03daa0. */
    KONA_HP_X_LOADCURSORCOLOR            = 0x131,

    /* Engine handlers whose slots the code of `arm_x_loadxmap_did` loads, in
     * order: `mgesi_VCbusWrite`. */

    /* `HP_X_LOADXMAP_DID` (0x132). Route: the token map runs
     * `arm_x_loadxmap_did` at arm1.u 0x0c03db80. */
    KONA_HP_X_LOADXMAP_DID               = 0x132,

    /* Engine handlers whose slots the code of `arm_x_loadxmap_config` loads,
     * in order: `mgesi_VCbusWrite`. */

    /* `HP_X_LOADXMAP_CONFIG` (0x133). Route: the token map runs
     * `arm_x_loadxmap_config` at arm1.u 0x0c03dc44. */
    KONA_HP_X_LOADXMAP_CONFIG            = 0x133,

    /* Engine handlers whose slots the code of `arm_get_ge_texture_attrib`
     * loads, in order: `mgesi_StartRdata`, `mgesi_FinishRdata`. */

    /* `HP_GET_GE_TEXTURE_ATTRIB` (0x134). Route: the token map runs
     * `arm_get_ge_texture_attrib` at arm1.u 0x0c03aea8. */
    KONA_HP_GET_GE_TEXTURE_ATTRIB        = 0x134,

    /* `HP_PIXEL_TRANSFORM` (0x135). Route: the token map runs
     * `arm_pixel_transform` at arm1.u 0x0c0376c4. */
    KONA_HP_PIXEL_TRANSFORM              = 0x135,

    /* `HP_X_PIX_SETUP` (0x136). Route: the token map runs `arm_x_pix_setup`
     * at arm1.u 0x0c034ac4. */
    KONA_HP_X_PIX_SETUP                  = 0x136,

    /* Engine handlers whose slots the code of `arm_x_pix_copy` loads, in
     * order: `mgeb_PixEndRGBStream`. */

    /* `HP_X_PIX_COPY` (0x137). Route: the token map runs `arm_x_pix_copy` at
     * arm1.u 0x0c034774. */
    KONA_HP_X_PIX_COPY                   = 0x137,

    /* Engine handlers whose slots the code of `arm_x_pix_read` loads, in
     * order: `mgeb_PixEndRGBStream`. */

    /* `HP_X_PIX_READ` (0x138). Route: the token map runs `arm_x_pix_read` at
     * arm1.u 0x0c0349e4. */
    KONA_HP_X_PIX_READ                   = 0x138,

    /* Engine handlers whose slots the code of `arm_x_pix_write` loads, in
     * order: `mgesi_XPixRmSetup`, `mgebi_PixCurGEIDSetup`. */

    /* `HP_X_PIX_WRITE` (0x139). Route: the token map runs `arm_x_pix_write`
     * at arm1.u 0x0c034914. */
    KONA_HP_X_PIX_WRITE                  = 0x139,

    /* Engine handlers whose slots the code of `arm_x_pix_finish` loads, in
     * order: `mgeb_PixEndRGBStream`. */

    /* `HP_X_PIX_FINISH` (0x13a). Route: the token map runs `arm_x_pix_finish`
     * at arm1.u 0x0c034bb4. */
    KONA_HP_X_PIX_FINISH                 = 0x13a,

    /* `HP_X_UNUSED3` (0x13b). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED3                    = 0x13b,

    /* Engine handlers whose slots the code of `arm_x_loadstipple` loads, in
     * order: `mgesi_XPolygonStippleDownload`. */

    /* `HP_X_LOADSTIPPLE` (0x13c). Route: the token map runs
     * `arm_x_loadstipple` at arm1.u 0x0c035bec. */
    KONA_HP_X_LOADSTIPPLE                = 0x13c,

    /* Engine handlers whose slots the code of `arm_x_storestipple` loads, in
     * order: `mgeb_LoadEram`. */

    /* `HP_X_STORESTIPPLE` (0x13d). Route: the token map runs
     * `arm_x_storestipple` at arm1.u 0x0c035adc. */
    KONA_HP_X_STORESTIPPLE               = 0x13d,

    /* Engine handlers whose slots the code of `arm_x_rotatestipple` loads, in
     * order: `mgeb_XPolygonStippleRotate`. */

    /* `HP_X_ROTATESTIPPLE` (0x13e). Route: the token map runs
     * `arm_x_rotatestipple` at arm1.u 0x0c035cb0. */
    KONA_HP_X_ROTATESTIPPLE              = 0x13e,

    /* `HP_X_UNUSED4` (0x13f). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED4                    = 0x13f,

    /* `HP_X_UNUSED5` (0x140). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED5                    = 0x140,

    /* `HP_X_DATA1` (0x141). Route: routed by the host interface with no ARM
     * code, map entry 0x58400041: command 128, count field 1, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA1                      = 0x141,

    /* `HP_X_DATA2` (0x142). Route: routed by the host interface with no ARM
     * code, map entry 0x58400081: command 128, count field 2, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA2                      = 0x142,

    /* `HP_X_DATA3` (0x143). Route: routed by the host interface with no ARM
     * code, map entry 0x584000c1: command 128, count field 3, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA3                      = 0x143,

    /* `HP_X_DATA4` (0x144). Route: routed by the host interface with no ARM
     * code, map entry 0x58400101: command 128, count field 4, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA4                      = 0x144,

    /* `HP_X_BDATA4` (0x145). Route: routed by the host interface with no ARM
     * code, map entry 0x58401101: command 128, count field 4, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_BDATA4                     = 0x145,

    /* `HP_X_DATA5` (0x146). Route: routed by the host interface with no ARM
     * code, map entry 0x58400141: command 128, count field 5, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA5                      = 0x146,

    /* `HP_X_DATA6` (0x147). Route: routed by the host interface with no ARM
     * code, map entry 0x58400181: command 128, count field 6, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA6                      = 0x147,

    /* `HP_X_DATA7` (0x148). Route: routed by the host interface with no ARM
     * code, map entry 0x584001c1: command 128, count field 7, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA7                      = 0x148,

    /* `HP_X_DATA8` (0x149). Route: routed by the host interface with no ARM
     * code, map entry 0x58400201: command 128, count field 8, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA8                      = 0x149,

    /* `HP_X_DATA9` (0x14a). Route: routed by the host interface with no ARM
     * code, map entry 0x58400241: command 128, count field 9, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA9                      = 0x14a,

    /* `HP_X_DATA10` (0x14b). Route: routed by the host interface with no ARM
     * code, map entry 0x58400281: command 128, count field 10, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_X_DATA10                     = 0x14b,

    /* `HP_X_POINT` (0x14c). Route: routed by the host interface with no ARM
     * code, map entry 0x58554841: command 170, count field 1, single floats;
     * engine handler `mgesi_XPoint` (index 42 of the handler table). */
    KONA_HP_X_POINT                      = 0x14c,

    /* `HP_X_POINT6` (0x14d). Route: routed by the host interface with no ARM
     * code, map entry 0x58554981: command 170, count field 6, single floats;
     * engine handler `mgesi_XPoint` (index 42 of the handler table). */
    KONA_HP_X_POINT6                     = 0x14d,

    /* `HP_X_POINT24` (0x14e). Route: routed by the host interface with no ARM
     * code, map entry 0x58554e01: command 170, count field 24, single floats;
     * engine handler `mgesi_XPoint` (index 42 of the handler table). */
    KONA_HP_X_POINT24                    = 0x14e,

    /* `HP_X_POINT_R` (0x14f). Route: routed by the host interface with no ARM
     * code, map entry 0x5855c841: command 171, count field 1, single floats;
     * engine handler `mgesi_XPointRel` (index 43 of the handler table). */
    KONA_HP_X_POINT_R                    = 0x14f,

    /* `HP_X_POINT6_R` (0x150). Route: routed by the host interface with no
     * ARM code, map entry 0x5855c981: command 171, count field 6, single
     * floats; engine handler `mgesi_XPointRel` (index 43 of the handler
     * table). */
    KONA_HP_X_POINT6_R                   = 0x150,

    /* `HP_X_POINT24_R` (0x151). Route: routed by the host interface with no
     * ARM code, map entry 0x5855ce01: command 171, count field 24, single
     * floats; engine handler `mgesi_XPointRel` (index 43 of the handler
     * table). */
    KONA_HP_X_POINT24_R                  = 0x151,

    /* `HP_X_RECT` (0x152). Route: routed by the host interface with no ARM
     * code, map entry 0x58564881: command 172, count field 2, single floats;
     * engine handler `mgesi_XRect` (index 44 of the handler table). */
    KONA_HP_X_RECT                       = 0x152,

    /* `HP_X_RECT6` (0x153). Route: routed by the host interface with no ARM
     * code, map entry 0x58564b01: command 172, count field 12, single floats;
     * engine handler `mgesi_XRect` (index 44 of the handler table). */
    KONA_HP_X_RECT6                      = 0x153,

    /* `HP_X_BOX` (0x154). Route: routed by the host interface with no ARM
     * code, map entry 0x5856c881: command 173, count field 2, single floats;
     * engine handler `mgesi_XBox` (index 45 of the handler table). */
    KONA_HP_X_BOX                        = 0x154,

    /* `HP_X_BOX6` (0x155). Route: routed by the host interface with no ARM
     * code, map entry 0x5856cb01: command 173, count field 12, single floats;
     * engine handler `mgesi_XBox` (index 45 of the handler table). */
    KONA_HP_X_BOX6                       = 0x155,

    /* `HP_X_SPANS` (0x156). Route: routed by the host interface with no ARM
     * code, map entry 0x585748c1: command 174, count field 3, single floats;
     * engine handler `mgesi_XSpans` (index 46 of the handler table). */
    KONA_HP_X_SPANS                      = 0x156,

    /* `HP_X_SPANS2` (0x157). Route: routed by the host interface with no ARM
     * code, map entry 0x58574941: command 174, count field 5, single floats;
     * engine handler `mgesi_XSpans` (index 46 of the handler table). */
    KONA_HP_X_SPANS2                     = 0x157,

    /* `HP_X_SPANS6` (0x158). Route: routed by the host interface with no ARM
     * code, map entry 0x58574b41: command 174, count field 13, single floats;
     * engine handler `mgesi_XSpans` (index 46 of the handler table). */
    KONA_HP_X_SPANS6                     = 0x158,

    /* `HP_X_SEGMENT` (0x159). Route: routed by the host interface with no ARM
     * code, map entry 0x5857c881: command 175, count field 2, single floats;
     * engine handler `mgesi_XSegment` (index 47 of the handler table). */
    KONA_HP_X_SEGMENT                    = 0x159,

    /* `HP_X_SEGMENT6` (0x15a). Route: routed by the host interface with no
     * ARM code, map entry 0x5857cb01: command 175, count field 12, single
     * floats; engine handler `mgesi_XSegment` (index 47 of the handler
     * table). */
    KONA_HP_X_SEGMENT6                   = 0x15a,

    /* `HP_X_LINE` (0x15b). Route: routed by the host interface with no ARM
     * code, map entry 0x58584881: command 176, count field 2, single floats;
     * engine handler `mgesi_XLine` (index 48 of the handler table). */
    KONA_HP_X_LINE                       = 0x15b,

    /* `HP_X_LINE6` (0x15c). Route: routed by the host interface with no ARM
     * code, map entry 0x58584b01: command 176, count field 12, single floats;
     * engine handler `mgesi_XLine` (index 48 of the handler table). */
    KONA_HP_X_LINE6                      = 0x15c,

    /* `HP_X_LINE_R` (0x15d). Route: routed by the host interface with no ARM
     * code, map entry 0x5858c881: command 177, count field 2, single floats;
     * engine handler `mgesi_XLineRel` (index 49 of the handler table). */
    KONA_HP_X_LINE_R                     = 0x15d,

    /* `HP_X_LINE6_R` (0x15e). Route: routed by the host interface with no ARM
     * code, map entry 0x5858cb01: command 177, count field 12, single floats;
     * engine handler `mgesi_XLineRel` (index 49 of the handler table). */
    KONA_HP_X_LINE6_R                    = 0x15e,

    /* `HP_X_BGPOINT` (0x15f). Route: routed by the host interface with no ARM
     * code, map entry 0x58594841: command 178, count field 1, single floats;
     * engine handler `mgesi_XBgPoint` (index 50 of the handler table). */
    KONA_HP_X_BGPOINT                    = 0x15f,

    /* `HP_X_BGPOINT6` (0x160). Route: routed by the host interface with no
     * ARM code, map entry 0x58594981: command 178, count field 6, single
     * floats; engine handler `mgesi_XBgPoint` (index 50 of the handler
     * table). */
    KONA_HP_X_BGPOINT6                   = 0x160,

    /* `HP_X_BGPOINT24` (0x161). Route: routed by the host interface with no
     * ARM code, map entry 0x58594e01: command 178, count field 24, single
     * floats; engine handler `mgesi_XBgPoint` (index 50 of the handler
     * table). */
    KONA_HP_X_BGPOINT24                  = 0x161,

    /* `HP_X_UNUSED6` (0x162). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED6                    = 0x162,

    /* `HP_X_UNUSED7` (0x163). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED7                    = 0x163,

    /* `HP_X_UNUSED8` (0x164). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED8                    = 0x164,

    /* `HP_X_UNUSED9` (0x165). Route: the token map runs
     * `C$$code$$Base,arm_badcmd` at arm1.u 0x0c0017f4, a stub that ends in
     * `arm_badcmd`. */
    KONA_HP_X_UNUSED9                    = 0x165,

    /* Engine handlers whose slots the code of `arm_dplex_swap` loads, in
     * order: `mgesi_VCbusWrite`. */

    /* `HP_DPLEX_SWAP` (0x166). Route: the token map runs `arm_dplex_swap` at
     * arm1.u 0x0c013ef4. */
    KONA_HP_DPLEX_SWAP                   = 0x166,

    /* `HP_USERCOPYLIST_LDMA` (0x167). Route: the token map runs
     * `arm_usercopylist_ldma` at arm1.u 0x0c014ec4. Route: libGLcore.so
     * `__glSdramPushIn` stores 4 words after the token. */
    KONA_HP_USERCOPYLIST_LDMA            = 0x167,

    /* Engine handlers whose slots the code of `arm_polygonoffset` loads, in
     * order: `mgeb_PolygonOffset`. */

    /* `HP_POLYGONOFFSET` (0x168). Route: the token map runs
     * `arm_polygonoffset` at arm1.u 0x0c016428. Route: libGLcore.so
     * `__glkonim_PolygonOffset` stores 2 words after the token. */
    KONA_HP_POLYGONOFFSET                = 0x168,

    /* `HP_DIAG_DISPATCH` (0x169). Route: the token map runs
     * `arm_diag_dispatch` at arm1.u 0x0c037958. */
    KONA_HP_DIAG_DISPATCH                = 0x169,

    /* `HP_DIAG_RESERVED0` (0x16a). Route: routed by the host interface with
     * no ARM code, map entry 0x00200061: command 64, count field 1, untyped
     * words; distributor entry 0x13c at ged1b.u lineloop.s:22. */
    KONA_HP_DIAG_RESERVED0               = 0x16a,

    /* `HP_DIAG_RESERVED1` (0x16b). Route: routed by the host interface with
     * no ARM code, map entry 0x00200061: command 64, count field 1, untyped
     * words; distributor entry 0x13c at ged1b.u lineloop.s:22. */
    KONA_HP_DIAG_RESERVED1               = 0x16b,

    /* `HP_COPYLIST_LDMA` (0x16c). Route: the token map runs
     * `arm_copylist_ldma` at arm1.u 0x0c014dd8. */
    KONA_HP_COPYLIST_LDMA                = 0x16c,

    /* `HP_EXECLIST_LDMA` (0x16d). Route: the token map runs
     * `arm_execlist_ldma` at arm1.u 0x0c014f90. Route: libGLcore.so
     * `__glKonExecuteLDMA` stores 2 words after the token. */
    KONA_HP_EXECLIST_LDMA                = 0x16d,

    /* `HP_EXECLIST_IDMA` (0x16e). Route: the token map runs
     * `arm_execlist_idma` at arm1.u 0x0c015058. */
    KONA_HP_EXECLIST_IDMA                = 0x16e,

    /* `HP_MOVELIST_LDMA` (0x16f). Route: the token map runs
     * `arm_movelist_ldma` at arm1.u 0x0c01503c. Route: libGLcore.so
     * `__glSdramMemmove` stores 3 words after the token. */
    KONA_HP_MOVELIST_LDMA                = 0x16f,

    /* `HP_EXECLIST_LDMA_N` (0x170). Route: the token map runs
     * `arm_execlist_ldma_n` at arm1.u 0x0c014fc0. */
    KONA_HP_EXECLIST_LDMA_N              = 0x170,

    /* `HP_EXECLIST_IDMA_N` (0x171). Route: the token map runs
     * `arm_execlist_idma_n` at arm1.u 0x0c015164. */
    KONA_HP_EXECLIST_IDMA_N              = 0x171,

    /* `HP_GED_NOP` (0x172). Route: routed by the host interface with no ARM
     * code, map entry 0x00300071: command 96, count field 1, untyped words;
     * distributor entry 0x14c at ged1b.u lineloop.s:48. */
    KONA_HP_GED_NOP                      = 0x172,

    /* `HP_TEXSETUP` (0x173). Route: the token map runs `arm_texsetup` at
     * arm1.u 0x0c0364e0. */
    KONA_HP_TEXSETUP                     = 0x173,

    /* `HP_DRAWTEXELS` (0x174). Route: the token map runs `arm_drawtexels` at
     * arm1.u 0x0c02b7a8. */
    KONA_HP_DRAWTEXELS                   = 0x174,

    /* `HP_TEXLOAD_SETUP` (0x175). Route: the token map runs
     * `arm_texload_setup` at arm1.u 0x0c025134. */
    KONA_HP_TEXLOAD_SETUP                = 0x175,

    /* `HP_TEXLOAD_ID` (0x176). Route: the token map runs `arm_texload_id` at
     * arm1.u 0x0c0251fc. */
    KONA_HP_TEXLOAD_ID                   = 0x176,

    /* Engine handlers whose slots the code of `arm_active_texture` loads, in
     * order: `mgebi_Texture`. */

    /* `HP_ACTIVE_TEXTURE` (0x177). Route: the token map runs
     * `arm_active_texture` at arm1.u 0x0c025204. */
    KONA_HP_ACTIVE_TEXTURE               = 0x177,

    /* `HP_TEXBIND_ID` (0x178). Route: the token map runs `arm_texbind_id` at
     * arm1.u 0x0c0252ec. Route: libGLcore.so `updateTexBindID` stores 1 word
     * after the token. */
    KONA_HP_TEXBIND_ID                   = 0x178,

    /* `HP_BIND_2D_MIPMAP_TEXTURE` (0x179). Route: routed by the host
     * interface with no ARM code, map entry 0x58505d81: command 160, count
     * field 22, single floats; engine handler `mgebi_Bind2dMipmapTexture`
     * (index 32 of the handler table). */
    KONA_HP_BIND_2D_MIPMAP_TEXTURE       = 0x179,

    /* Engine handlers whose slots the code of `arm_bind_bicubic_texture`
     * loads, in order: `mgesi_BshRegisterWriteN`. */

    /* `HP_BIND_BICUBIC_TEXTURE` (0x17a). Route: the token map runs
     * `arm_bind_bicubic_texture` at arm1.u 0x0c025da8. */
    KONA_HP_BIND_BICUBIC_TEXTURE         = 0x17a,

    /* Engine handlers whose slots the code of `arm_bind_3d_mipmap_texture`
     * loads, in order: `mgesi_BshRegisterWriteN`. */

    /* `HP_BIND_3D_MIPMAP_TEXTURE` (0x17b). Route: the token map runs
     * `arm_bind_3d_mipmap_texture` at arm1.u 0x0c025ccc. */
    KONA_HP_BIND_3D_MIPMAP_TEXTURE       = 0x17b,

    /* Engine handlers whose slots the code of `arm_bind_3d_texture` loads, in
     * order: `mgesi_BshRegisterWriteN`. */

    /* `HP_BIND_3D_TEXTURE` (0x17c). Route: the token map runs
     * `arm_bind_3d_texture` at arm1.u 0x0c025e6c. */
    KONA_HP_BIND_3D_TEXTURE              = 0x17c,

    /* Engine handlers whose slots the code of `arm_bind_detail_texture`
     * loads, in order: `mgesi_FillTMLoadFifo`. */

    /* `HP_BIND_DETAIL_TEXTURE` (0x17d). Route: the token map runs
     * `arm_bind_detail_texture` at arm1.u 0x0c025efc. */
    KONA_HP_BIND_DETAIL_TEXTURE          = 0x17d,

    /* `HP_TEX_SEND_ARM_TABLE` (0x17e). Route: the token map runs
     * `arm_tex_send_arm_table` at arm1.u 0x0c026010. */
    KONA_HP_TEX_SEND_ARM_TABLE           = 0x17e,

    /* Engine handlers whose slots the code of `arm_slop` loads, in order:
     * `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`, `mgesi_SR2ODMA`,
     * `mgesi_LastVertex2ODMA`, `mgeb_DebugDrain`, `mgeb_XContextInitialize`,
     * `mgeb_XSetupClip`, `mgesi_XPointRel`, `mgesi_XLine`,
     * `mgeb_LoadCram`, `mgeb_XSetupColors`, `mgebi_XSetupWindow`,
     * `mgesi_XPoint`, `mgesi_XRect`, `mgesi_XBox`,
     * `mgesi_XSpans`, `mgesi_XSegment`, `mgesi_XSegmentRel`,
     * `mgesi_XLineRel`. */

    /* `HP_SLOP` (0x17f). Route: the token map runs `arm_slop` at arm1.u
     * 0x0c038a78. */
    KONA_HP_SLOP                         = 0x17f,

    /* `HP_VARRAY_SET_CMDS` (0x180). Route: the token map runs
     * `arm_varray_set_cmds` at arm1.u 0x0c039950. Route: libGLcore.so
     * `update_cmpnd_cmd` stores 1 word after the token. */
    KONA_HP_VARRAY_SET_CMDS              = 0x180,

    /* `HP_VARRAY_SETUP` (0x181). Route: the token map runs `arm_varray_setup`
     * at arm1.u 0x0c039a78. */
    KONA_HP_VARRAY_SETUP                 = 0x181,

    /* `HP_VARRAY_BGN_LOOP` (0x182). Route: the token map runs
     * `arm_varray_bgn_loop` at arm1.u 0x0c0399c4. */
    KONA_HP_VARRAY_BGN_LOOP              = 0x182,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP00` (0x183). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP00                = 0x183,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP01` (0x184). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP01                = 0x184,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP02` (0x185). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP02                = 0x185,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP03` (0x186). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP03                = 0x186,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP04` (0x187). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP04                = 0x187,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP05` (0x188). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP05                = 0x188,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP06` (0x189). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP06                = 0x189,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP07` (0x18a). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP07                = 0x18a,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP08` (0x18b). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP08                = 0x18b,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP09` (0x18c). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP09                = 0x18c,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP0A` (0x18d). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP0A                = 0x18d,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP0B` (0x18e). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP0B                = 0x18e,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP0C` (0x18f). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP0C                = 0x18f,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP0D` (0x190). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP0D                = 0x190,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP0E` (0x191). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP0E                = 0x191,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP0F` (0x192). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP0F                = 0x192,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP10` (0x193). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP10                = 0x193,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP11` (0x194). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP11                = 0x194,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP12` (0x195). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP12                = 0x195,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP13` (0x196). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP13                = 0x196,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP14` (0x197). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP14                = 0x197,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP15` (0x198). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP15                = 0x198,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP16` (0x199). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP16                = 0x199,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP17` (0x19a). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP17                = 0x19a,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP18` (0x19b). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP18                = 0x19b,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP19` (0x19c). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP19                = 0x19c,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP1A` (0x19d). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP1A                = 0x19d,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP1B` (0x19e). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP1B                = 0x19e,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP1C` (0x19f). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP1C                = 0x19f,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP1D` (0x1a0). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP1D                = 0x1a0,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP1E` (0x1a1). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP1E                = 0x1a1,

    /* Engine handlers relocated into the span of distributor entry 0x01d:
     * `mges_NullCommand`. */

    /* `HP_VARRAY_LOOP1F` (0x1a2). Route: routed by the host interface with no
     * ARM code, map entry 0x80000051: command 0, count field 1, untyped
     * words; distributor entry 0x01d at ged1b.u trigger.s:7. */
    KONA_HP_VARRAY_LOOP1F                = 0x1a2,

    /* `HP_VARRAY_UNSETUP` (0x1a3). Route: the token map runs
     * `arm_varray_unsetup` at arm1.u 0x0c039a94. */
    KONA_HP_VARRAY_UNSETUP               = 0x1a3,

    /* `HP_SPRITEPARAMETERI` (0x1a4). Route: the token map runs
     * `arm_spriteparameteri` at arm1.u 0x0c03cbf0. */
    KONA_HP_SPRITEPARAMETERI             = 0x1a4,

    /* Engine handlers whose slots the code of `arm_spriteparameterfv` loads,
     * in order: `mgeb_Sprite`. */

    /* `HP_SPRITEPARAMETERFV` (0x1a5). Route: the token map runs
     * `arm_spriteparameterfv` at arm1.u 0x0c03cc08. */
    KONA_HP_SPRITEPARAMETERFV            = 0x1a5,

    /* `HP_VIDEO_CMD` (0x1a6). Route: the token map runs `arm_video_cmd` at
     * arm1.u 0x0c006398. Route: libGLcore.so `ChannelRect` stores 10 words
     * after the token. */
    KONA_HP_VIDEO_CMD                    = 0x1a6,

    /* Engine handlers whose slots the code of `arm_pointparameterf` loads, in
     * order: `mgeb_PointParameter`. */

    /* `HP_POINTPARAMETERF` (0x1a7). Route: the token map runs
     * `arm_pointparameterf` at arm1.u 0x0c03cfc8. */
    KONA_HP_POINTPARAMETERF              = 0x1a7,

    /* Engine handlers whose slots the code of `arm_pointparameterfv` loads,
     * in order: `mgeb_PointParameter`. */

    /* `HP_POINTPARAMETERFV` (0x1a8). Route: the token map runs
     * `arm_pointparameterfv` at arm1.u 0x0c03d020. */
    KONA_HP_POINTPARAMETERFV             = 0x1a8,

    /* `HP_SWAPTMESH` (0x1a9). Route: routed by the host interface with no ARM
     * code, map entry 0xd8c18057: command 387, count field 1, single floats;
     * distributor entry 0x377 at ged1b.u tri.s:84. */
    KONA_HP_SWAPTMESH                    = 0x1a9,

    /* Engine handlers whose slots the code of `arm_bind_2d_clipmap_texture`
     * loads, in order: `mgesi_BshRegisterWriteN`, `mgeb_ClipmapXform`. */

    /* `HP_BIND_2D_CLIPMAP_TEXTURE` (0x1aa). Route: the token map runs
     * `arm_bind_2d_clipmap_texture` at arm1.u 0x0c025b8c. Route: libGLcore.so
     * `setClipmapRegisters` stores 8 words after the token. */
    KONA_HP_BIND_2D_CLIPMAP_TEXTURE      = 0x1aa,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F` (0x1ab). Route: routed by the host interface with no
     * ARM code, map entry 0xd86740c7: command 206, count field 3, single
     * floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F                  = 0x1ab,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_C4UB` (0x1ac). Route: routed by the host interface with
     * no ARM code, map entry 0xd8674107: command 206, count field 4, single
     * floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_C4UB             = 0x1ac,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_N3S` (0x1ad). Route: routed by the host interface with
     * no ARM code, map entry 0xd8674107: command 206, count field 4, single
     * floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_N3S              = 0x1ad,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_C4UB_N3S` (0x1ae). Route: routed by the host interface
     * with no ARM code, map entry 0xd8674147: command 206, count field 5,
     * single floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_C4UB_N3S         = 0x1ae,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_T2F` (0x1af). Route: routed by the host interface with
     * no ARM code, map entry 0xd8674147: command 206, count field 5, single
     * floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_T2F              = 0x1af,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_C4UB_T2F` (0x1b0). Route: routed by the host interface
     * with no ARM code, map entry 0xd8674187: command 206, count field 6,
     * single floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_C4UB_T2F         = 0x1b0,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_N3S_T2F` (0x1b1). Route: routed by the host interface
     * with no ARM code, map entry 0xd8674187: command 206, count field 6,
     * single floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_N3S_T2F          = 0x1b1,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_C4UB_N3S_T2F` (0x1b2). Route: routed by the host
     * interface with no ARM code, map entry 0xd86741c7: command 206, count
     * field 7, single floats; distributor entry 0x0e3 at ged1b.u
     * tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2F     = 0x1b2,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_T2S` (0x1b3). Route: routed by the host interface with
     * no ARM code, map entry 0xd8674107: command 206, count field 4, single
     * floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_T2S              = 0x1b3,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_C4UB_T2S` (0x1b4). Route: routed by the host interface
     * with no ARM code, map entry 0xd8674147: command 206, count field 5,
     * single floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_C4UB_T2S         = 0x1b4,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_N3S_T2S` (0x1b5). Route: routed by the host interface
     * with no ARM code, map entry 0xd8674147: command 206, count field 5,
     * single floats; distributor entry 0x0e3 at ged1b.u tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_N3S_T2S          = 0x1b5,

    /* Engine handlers relocated into the span of distributor entry 0x0e3:
     * `mgesi_TriangleStripWithSwapOdd`. */

    /* `HP_PVERTEX_V3F_C4UB_N3S_T2S` (0x1b6). Route: routed by the host
     * interface with no ARM code, map entry 0xd8674187: command 206, count
     * field 6, single floats; distributor entry 0x0e3 at ged1b.u
     * tstrip.s:304. */
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2S     = 0x1b6,

    /* `HP_PVERTEX_SETUP` (0x1b7). Route: the token map runs
     * `arm_pvertex_setup` at arm1.u 0x0c039ac8. */
    KONA_HP_PVERTEX_SETUP                = 0x1b7,

    /* `HP_INSTRUMENTS_BUFFER` (0x1b8). Route: the token map runs
     * `arm_instruments_buffer` at arm1.u 0x0c03ce84. */
    KONA_HP_INSTRUMENTS_BUFFER           = 0x1b8,

    /* Engine handlers whose slots the code of `arm_start_instruments` loads,
     * in order: `mgesi_StartInstruments`. */

    /* `HP_START_INSTRUMENTS` (0x1b9). Route: the token map runs
     * `arm_start_instruments` at arm1.u 0x0c03cea0. Route: libGLcore.so
     * `__glkonim_StartInstrumentsSGIX` stores 1 word after the token. */
    KONA_HP_START_INSTRUMENTS            = 0x1b9,

    /* Engine handlers whose slots the code of `arm_stop_instruments` loads,
     * in order: `mgesi_StopInstruments`. */

    /* `HP_STOP_INSTRUMENTS` (0x1ba). Route: the token map runs
     * `arm_stop_instruments` at arm1.u 0x0c03cef4. Route: libGLcore.so
     * `__glkonim_StopInstrumentsSGIX` stores 1 word after the token. */
    KONA_HP_STOP_INSTRUMENTS             = 0x1ba,

    /* `HP_TEXELSTOREI` (0x1bb). Route: the token map runs `arm_texelstorei`
     * at arm1.u 0x0c02af20. */
    KONA_HP_TEXELSTOREI                  = 0x1bb,

    /* `HP_RESTART_SELECTFEED` (0x1bc). Route: the token map runs
     * `arm_restart_selectfeed` at arm1.u 0x0c022b8c. */
    KONA_HP_RESTART_SELECTFEED           = 0x1bc,

    /* `HP_REFERENCE_PLANE` (0x1bd). Route: routed by the host interface with
     * no ARM code, map entry 0x78485a01: command 144, count field 8, doubles;
     * engine handler `mgebi_ReferencePlane` (index 16 of the handler table).
     * Route: libGLcore.so `__glkonim_ReferencePlaneSGIX` stores 8 words after
     * the token. */
    KONA_HP_REFERENCE_PLANE              = 0x1bd,

    /* `HP_SETCOLORNORMAL` (0x1be). Route: routed by the host interface with
     * no ARM code, map entry 0x52600067: command 192, count field 1, single
     * floats; distributor entry 0x04c at ged1b.u tstrip.s:22. */
    KONA_HP_SETCOLORNORMAL               = 0x1be,

    /* `HP_DEFORM` (0x1bf). Route: routed by the host interface with no ARM
     * code, map entry 0x52400067: command 128, count field 1, single floats;
     * distributor entry 0x226 at ged1b.u qstrip.s:22. */
    KONA_HP_DEFORM                       = 0x1bf,

    /* `HP_DEFORMATION_MAP3_1F` (0x1c0). Route: routed by the host interface
     * with no ARM code, map entry 0x586ed7c1: command 221, count field 31,
     * single floats; engine handler `mgeb_DeformationMap3_1` (index 29 of the
     * handler table). */
    KONA_HP_DEFORMATION_MAP3_1F          = 0x1c0,

    /* `HP_DEFORMATION_MAP3_1D` (0x1c1). Route: routed by the host interface
     * with no ARM code, map entry 0x586fd1c9: command 223, count field 7,
     * single floats; distributor entry 0x0b1 at ged1b.u tstrip.s:193. */
    KONA_HP_DEFORMATION_MAP3_1D          = 0x1c1,

    /* `HP_DEFORMATION_MAP3_1D_cont` (0x1c2). Route: routed by the host
     * interface with no ARM code, map entry 0x786ed601: command 221, count
     * field 24, doubles; engine handler `mgeb_DeformationMap3_1` (index 29 of
     * the handler table). */
    KONA_HP_DEFORMATION_MAP3_1D_cont     = 0x1c2,

    /* `HP_LOAD_IDENTITY_DEFORMATION` (0x1c3). Route: routed by the host
     * interface with no ARM code, map entry 0x386f5041: command 222, count
     * field 1, type 1; engine handler `mgeb_LoadIdentityDeformation` (index
     * 30 of the handler table). Route: libGLcore.so
     * `__glkonim_LoadIdentityDeformationMapSGIX` stores 1 word after the
     * token. */
    KONA_HP_LOAD_IDENTITY_DEFORMATION    = 0x1c3,

    /* `HP_BIND_ARM_TEX_CACHE` (0x1c4). Route: the token map runs
     * `arm_bind_arm_tex_cache` at arm1.u 0x0c0252f4. */
    KONA_HP_BIND_ARM_TEX_CACHE           = 0x1c4,

    /* Engine handlers whose slots the code of `arm_free_arm_tex_cache` loads,
     * in order: `mgesi_FillTMLoadFifo`. */

    /* `HP_FREE_ARM_TEX_CACHE` (0x1c5). Route: the token map runs
     * `arm_free_arm_tex_cache` at arm1.u 0x0c025310. */
    KONA_HP_FREE_ARM_TEX_CACHE           = 0x1c5,

    /* Engine handlers whose slots the code of `arm_get_deformation` loads, in
     * order: `mgesi_StartRdata`, `mgesi_GetDeformation`, `mgesi_FinishRdata`. */

    /* `HP_GET_DEFORMATION` (0x1c6). Route: the token map runs
     * `arm_get_deformation` at arm1.u 0x0c0387dc. */
    KONA_HP_GET_DEFORMATION              = 0x1c6,

    /* Engine handlers whose slots the code of `arm_shadow_texture` loads, in
     * order: `mgesi_BshRegisterWriteN`. */

    /* `HP_SHADOW_TEXTURE` (0x1c7). Route: the token map runs
     * `arm_shadow_texture` at arm1.u 0x0c026218. */
    KONA_HP_SHADOW_TEXTURE               = 0x1c7,

    /* `HP_IDMACOPYLIST_LDMA` (0x1c8). Route: the token map runs
     * `arm_idmacopylist_ldma` at arm1.u 0x0c014e54. */
    KONA_HP_IDMACOPYLIST_LDMA            = 0x1c8,

    /* `HP_TMESHMODE` (0x1c9). Route: the token map runs `arm_tmeshmode` at
     * arm1.u 0x0c016854. */
    KONA_HP_TMESHMODE                    = 0x1c9,

    /* Engine handlers whose slots the code of `arm_load_ge_xform_attrib`
     * loads, in order: `mgeb_InitFFTFactors`. */

    /* `HP_LOAD_GE_XFORM_ATTRIB` (0x1ca). Route: the token map runs
     * `arm_load_ge_xform_attrib` at arm1.u 0x0c03ad3c. */
    KONA_HP_LOAD_GE_XFORM_ATTRIB         = 0x1ca,

    /* Engine handlers whose slots the code of `arm_get_ge_xform_attrib`
     * loads, in order: `mgesi_StartRdata`, `mgesi_FinishRdata`. */

    /* `HP_GET_GE_XFORM_ATTRIB` (0x1cb). Route: the token map runs
     * `arm_get_ge_xform_attrib` at arm1.u 0x0c03ade0. */
    KONA_HP_GET_GE_XFORM_ATTRIB          = 0x1cb,

    /* Engine handlers whose slots the code of `arm_flush_raster` loads, in
     * order: `mgesi_FlushRM`. */

    /* `HP_FLUSH_RASTER` (0x1cc). Route: the token map runs `arm_flush_raster`
     * at arm1.u 0x0c014070. Route: libGLcore.so `__glkonim_FlushRasterSGIX`
     * stores 1 word after the token. */
    KONA_HP_FLUSH_RASTER                 = 0x1cc,

    /* Engine handlers whose slots the code of `arm_read_instruments` loads,
     * in order: `mgesi_StopInstruments`, `mgesi_StartInstruments`. */

    /* `HP_READ_INSTRUMENTS` (0x1cd). Route: the token map runs
     * `arm_read_instruments` at arm1.u 0x0c03cf54. Route: libGLcore.so
     * `__glkonim_ReadInstrumentsSGIX` stores 1 word after the token. */
    KONA_HP_READ_INSTRUMENTS             = 0x1cd,

    /* `HP_LAZYMODE` (0x1ce). Route: the token map runs `arm_lazymode` at
     * arm1.u 0x0c027e14. */
    KONA_HP_LAZYMODE                     = 0x1ce,

    /* `HP_PVERTEX_CLEANUP` (0x1cf). Route: the token map runs
     * `arm_pvertex_cleanup` at arm1.u 0x0c039bac. */
    KONA_HP_PVERTEX_CLEANUP              = 0x1cf,

    /* Engine handlers whose slots the code of `arm_subdiv_patch` loads, in
     * order: `mges_SubdivTag`. */

    /* `HP_SUBDIV_PATCH` (0x1d0). Route: the token map runs `arm_subdiv_patch`
     * at arm1.u 0x0c03ffac. */
    KONA_HP_SUBDIV_PATCH                 = 0x1d0,

    /* `HP_SUBDIV_PATCH_SETUP` (0x1d1). Route: the token map runs
     * `arm_subdiv_patch_setup` at arm1.u 0x0c03ff14. */
    KONA_HP_SUBDIV_PATCH_SETUP           = 0x1d1,

    /* `HP_SUBDIV_PATCH_CLEANUP` (0x1d2). Route: the token map runs
     * `arm_subdiv_patch_cleanup` at arm1.u 0x0c03ff7c. */
    KONA_HP_SUBDIV_PATCH_CLEANUP         = 0x1d2,

    /* Engine handlers whose slots the code of `arm_subdiv_patch_parameter`
     * loads, in order: `mgeb_Subdiv`. */

    /* `HP_SUBDIV_PATCH_PARAMETER` (0x1d3). Route: the token map runs
     * `arm_subdiv_patch_parameter` at arm1.u 0x0c03fef0. */
    KONA_HP_SUBDIV_PATCH_PARAMETER       = 0x1d3,

    /* `HP_BEGIN_SUBDIV_PATCH` (0x1d4). Route: routed by the host interface
     * with no ARM code, map entry 0xd8ca8053: command 405, count field 1,
     * single floats; distributor entry 0x39f at ged1b.u lines.s:81. */
    KONA_HP_BEGIN_SUBDIV_PATCH           = 0x1d4,

    /* Engine handlers whose slots the code of `arm_bind_texture` loads, in
     * order: `mgesi_TbusRegWrite`, `mgesi_FillTMLoadFifo`,
     * `mgeb_SkipNextTextureAddr`, `mgebi_Texture`, `mgebi_TexEnvComps`,
     * `mgebi_UpdateTexturing`. */

    /* `HP_BIND_TEXTURE` (0x1d5). Route: the token map runs `arm_bind_texture`
     * at arm1.u 0x0c0256c8. */
    KONA_HP_BIND_TEXTURE                 = 0x1d5,

    /* Engine handlers whose slots the code of `arm_texgen_pop` loads, in
     * order: `mgeb_LoadEram`. */

    /* `HP_TEXGEN_POP` (0x1d6). Route: the token map runs `arm_texgen_pop` at
     * arm1.u 0x0c026554. */
    KONA_HP_TEXGEN_POP                   = 0x1d6,

    /* `HP_CHANGE_POST_TEX_SCALE_BIAS` (0x1d7). Route: the token map runs
     * `arm_change_post_tex_scale_bias` at arm1.u 0x0c025688. */
    KONA_HP_CHANGE_POST_TEX_SCALE_BIAS   = 0x1d7,

    /* `HP_SKIP2` (0x1d8). Route: routed by the host interface with no ARM
     * code, map entry 0x00600077: command 192, count field 1, untyped words;
     * distributor entry 0x04c at ged1b.u tstrip.s:22. */
    KONA_HP_SKIP2                        = 0x1d8,

    /* `HP_SKIP4` (0x1d9). Route: routed by the host interface with no ARM
     * code, map entry 0x006000f7: command 192, count field 3, untyped words;
     * distributor entry 0x04c at ged1b.u tstrip.s:22. */
    KONA_HP_SKIP4                        = 0x1d9,

    /* `HP_SKIP5` (0x1da). Route: routed by the host interface with no ARM
     * code, map entry 0x00600137: command 192, count field 4, untyped words;
     * distributor entry 0x04c at ged1b.u tstrip.s:22. */
    KONA_HP_SKIP5                        = 0x1da,

    /* Engine handlers whose slots the code of `arm_swap_cntrl` loads, in
     * order: `mgesi_VCbusWrite`. */

    /* `HP_SWAP_CNTRL` (0x1db). Route: the token map runs `arm_swap_cntrl` at
     * arm1.u 0x0c013e50. */
    KONA_HP_SWAP_CNTRL                   = 0x1db,

    /* `HP_F3_WAR` (0x1dc). Route: the token map runs `arm_f3_war` at arm1.u
     * 0x0c022380. */
    KONA_HP_F3_WAR                       = 0x1dc,

    /* `HP_GE_INTR` (0x1dd). Route: the token map runs `arm_ge_intr` at arm1.u
     * 0x0c022cfc. */
    KONA_HP_GE_INTR                      = 0x1dd,

    /* `HP_MEM_RESUME` (0x1de). Route: the token map runs `arm_mem_resume` at
     * arm1.u 0x0c024954. */
    KONA_HP_MEM_RESUME                   = 0x1de,

    /* `HP_MEM_SUSPEND` (0x1df). Route: the token map runs `arm_mem_suspend`
     * at arm1.u 0x0c0248a0. */
    KONA_HP_MEM_SUSPEND                  = 0x1df,

    /* `HP_TEX_ARM_CACHE_INDEX_INVALID` (0x1e0). Route: the token map runs
     * `arm_tex_arm_cache_index_invalid` at arm1.u 0x0c02604c. */
    KONA_HP_TEX_ARM_CACHE_INDEX_INVALID  = 0x1e0,

    /* `HP_MEM_COPYDOWN` (0x1e1). Route: the token map runs `arm_mem_copydown`
     * at arm1.u 0x0c02481c. */
    KONA_HP_MEM_COPYDOWN                 = 0x1e1,

    /* `HP_MEM_SWAPIN` (0x1e2). Route: the token map runs `arm_mem_swapin` at
     * arm1.u 0x0c024710. */
    KONA_HP_MEM_SWAPIN                   = 0x1e2,

    /* `HP_MEM_SWAPOUT` (0x1e3). Route: the token map runs `arm_mem_swapout`
     * at arm1.u 0x0c024504. */
    KONA_HP_MEM_SWAPOUT                  = 0x1e3,

    /* `HP_MEM_RESERVE` (0x1e4). Route: the token map runs `arm_mem_reserve`
     * at arm1.u 0x0c024378. */
    KONA_HP_MEM_RESERVE                  = 0x1e4,

    /* Engine handlers whose slots the code of `arm_gerollcall` loads, in
     * order: `mgesi_PrintNum`. */

    /* `HP_GEROLLCALL` (0x1e5). Route: the token map runs `arm_gerollcall` at
     * arm1.u 0x0c0042e0. */
    KONA_HP_GEROLLCALL                   = 0x1e5,

    /* Engine handlers whose slots the code of `arm_dispmode` loads, in order:
     * `mgesi_VCbusWrite`. */

    /* `HP_DISPMODE` (0x1e6). Route: the token map runs `arm_dispmode` at
     * arm1.u 0x0c013dd4. */
    KONA_HP_DISPMODE                     = 0x1e6,

    /* Engine handlers whose slots the code of `arm_retrace_seqid` loads, in
     * order: `mgesi_VCbusWrite`. */

    /* `HP_RETRACE_SEQID` (0x1e7). Route: the token map runs
     * `arm_retrace_seqid` at arm1.u 0x0c013f5c. */
    KONA_HP_RETRACE_SEQID                = 0x1e7,

    /* `HP_ARM_NOP` (0x1e8). Route: the token map runs `arm_arm_nop` at arm1.u
     * 0x0c022d70. */
    KONA_HP_ARM_NOP                      = 0x1e8,

    /* `HP_GETCONFIG` (0x1e9). Route: the token map runs `arm_getconfig` at
     * arm1.u 0x0c022474. */
    KONA_HP_GETCONFIG                    = 0x1e9,

    /* `HP_PIPE_SYNC` (0x1ea). Route: the token map runs `arm_pipe_sync` at
     * arm1.u 0x0c0042c0. */
    KONA_HP_PIPE_SYNC                    = 0x1ea,

    /* `HP_DO_IDMA` (0x1eb). Route: the token map runs `arm_do_idma` at arm1.u
     * 0x0c022df4. */
    KONA_HP_DO_IDMA                      = 0x1eb,

    /* `HP_EEPROM_OP` (0x1ec). Route: the token map runs `arm_eeprom_op` at
     * arm1.u 0x0c01a0ec. */
    KONA_HP_EEPROM_OP                    = 0x1ec,

    /* `HP_DMAPOOL_SETUP` (0x1ed). Route: the token map runs
     * `arm_dmapool_setup` at arm1.u 0x0c022398. */
    KONA_HP_DMAPOOL_SETUP                = 0x1ed,

    /* `HP_VALIDATE_READCLIP` (0x1ee). Route: the token map runs
     * `arm_validate_readclip` at arm1.u 0x0c018574. */
    KONA_HP_VALIDATE_READCLIP            = 0x1ee,

    /* `HP_GED_VERIF_LOAD` (0x1ef). Route: the token map runs
     * `arm_ged_verif_load` at arm1.u 0x0c012ae4. */
    KONA_HP_GED_VERIF_LOAD               = 0x1ef,

    /* Engine handlers whose slots the code of `arm_ged_verif_dump` loads, in
     * order: `mges_DiagDeactivate`. */

    /* `HP_GED_VERIF_DUMP` (0x1f0). Route: the token map runs
     * `arm_ged_verif_dump` at arm1.u 0x0c012b2c. */
    KONA_HP_GED_VERIF_DUMP               = 0x1f0,

    /* Engine handlers whose slots the code of `arm_pipe_setup` loads, in
     * order: `mgesi_PipeSetup`. */

    /* `HP_PIPE_SETUP` (0x1f1). Route: the token map runs `arm_pipe_setup` at
     * arm1.u 0x0c023298. */
    KONA_HP_PIPE_SETUP                   = 0x1f1,

    /* `HP_RDATA_SETUP` (0x1f2). Route: the token map runs `arm_rdata_setup`
     * at arm1.u 0x0c022448. */
    KONA_HP_RDATA_SETUP                  = 0x1f2,

    /* Engine handlers whose slots the code of `arm_validate_clip` loads, in
     * order: `mgesi_TbusRegWrite`. */

    /* `HP_VALIDATE_CLIP` (0x1f3). Route: the token map runs
     * `arm_validate_clip` at arm1.u 0x0c018168. */
    KONA_HP_VALIDATE_CLIP                = 0x1f3,

    /* `HP_VALIDATE_BANK` (0x1f4). Route: the token map runs
     * `arm_validate_bank` at arm1.u 0x0c013d30. */
    KONA_HP_VALIDATE_BANK                = 0x1f4,

    /* `HP_START_SELECTFEED` (0x1f5). Route: the token map runs
     * `arm_start_selectfeed` at arm1.u 0x0c022a50. */
    KONA_HP_START_SELECTFEED             = 0x1f5,

    /* `HP_FINISH_SELECTFEED` (0x1f6). Route: the token map runs
     * `arm_finish_selectfeed` at arm1.u 0x0c022c40. */
    KONA_HP_FINISH_SELECTFEED            = 0x1f6,

    /* Engine handlers whose slots the code of `arm_context_destroy` loads, in
     * order: `mgeb_ContextDestroy`. */

    /* `HP_CONTEXT_DESTROY` (0x1f7). Route: the token map runs
     * `arm_context_destroy` at arm1.u 0x0c021650. */
    KONA_HP_CONTEXT_DESTROY              = 0x1f7,

    /* Engine handlers whose slots the code of `arm_context_mopup` loads, in
     * order: `mgebi_NullCommand`, `mgeb_ContextDeactReconfigureFifo`. */

    /* `HP_CONTEXT_MOPUP` (0x1f8). Route: the token map runs
     * `arm_context_mopup` at arm1.u 0x0c02226c. */
    KONA_HP_CONTEXT_MOPUP                = 0x1f8,

    /* Engine handlers whose slots the code of `arm_context_load` loads, in
     * order: `mges_ContextLoadODMA`, `mges_ContextLoadBEF`,
     * `mgeb_ContextLoadCram`, `mgeb_ContextLoadWram`. */

    /* `HP_CONTEXT_LOAD` (0x1f9). Route: the token map runs `arm_context_load`
     * at arm1.u 0x0c02112c. */
    KONA_HP_CONTEXT_LOAD                 = 0x1f9,

    /* Engine handlers whose slots the code of `arm_context_activate` loads,
     * in order: `mgeb_ContextLoadFlagRegs`, `mgeb_DisableUserClipPlane`,
     * `mges_TBUS_1`, `mgeb_CullFace`. */

    /* `HP_CONTEXT_ACTIVATE` (0x1fa). Route: the token map runs
     * `arm_context_activate` at arm1.u 0x0c0209dc. */
    KONA_HP_CONTEXT_ACTIVATE             = 0x1fa,

    /* `HP_CONTEXT_FIFO_SYNC` (0x1fb). Route: the token map runs
     * `arm_context_fifo_sync` at arm1.u 0x0c021770. */
    KONA_HP_CONTEXT_FIFO_SYNC            = 0x1fb,

    /* Engine handlers whose slots the code of `arm_context_deactivate` loads,
     * in order: `mges_ContextDeactGED`, `mgeb_ContextDeactReconfigureFifo`,
     * `mges_ContextDeactFinish`. */

    /* `HP_CONTEXT_DEACTIVATE` (0x1fc). Route: the token map runs
     * `arm_context_deactivate` at arm1.u 0x0c022188. */
    KONA_HP_CONTEXT_DEACTIVATE           = 0x1fc,

    /* Engine handlers whose slots the code of `arm_context_init` loads, in
     * order: `mgeb_ContextLoadEram`. */

    /* `HP_CONTEXT_INIT` (0x1fd). Route: the token map runs `arm_context_init`
     * at arm1.u 0x0c01fe04. */
    KONA_HP_CONTEXT_INIT                 = 0x1fd,

    /* `HP_KERNEL_PRIVATE` (0x1fe). Route: the token map runs
     * `arm_kernel_private` at arm1.u 0x0c022394. */
    KONA_HP_KERNEL_PRIVATE               = 0x1fe,

    /* `HP_WG_FLUSH_1` (0x1ff). Route: the token map runs `arm_wg_flush_1` at
     * arm1.u 0x0c026644, a stub that ends in `arm_badcmd`. */
    KONA_HP_WG_FLUSH_1                   = 0x1ff,
};

/*
 * kpm's name table continues for 16 entries past 0x1ff. ESTABLISHED: entries
 * 0x200-0x20e print as "**** 0x0" to "**** 0xe" and 0x20f as
 * "**** PIXELS_STARTGEID". The firmware token map has 512 entries
 * (ucode/icu_map.tsv) and the host-interface table is indexed by a 9-bit
 * token, so these numbers are not host tokens. INFERRED: spare rows of
 * kpm's printing table. The names below are this header's, not kpm's.
 */
enum kona_kpm_spare_token {
    /* kpm row 0x200, printed as "**** 0x0". Inferred: the row names shadow
     * slot 0x100 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_0                  = 0x200,

    /* kpm row 0x201, printed as "**** 0x1". Inferred: the row names shadow
     * slot 0x101 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_1                  = 0x201,

    /* kpm row 0x202, printed as "**** 0x2". Inferred: the row names shadow
     * slot 0x102 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_2                  = 0x202,

    /* kpm row 0x203, printed as "**** 0x3". Inferred: the row names shadow
     * slot 0x103 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_3                  = 0x203,

    /* kpm row 0x204, printed as "**** 0x4". Inferred: the row names shadow
     * slot 0x104 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_4                  = 0x204,

    /* kpm row 0x205, printed as "**** 0x5". Inferred: the row names shadow
     * slot 0x105 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_5                  = 0x205,

    /* kpm row 0x206, printed as "**** 0x6". Inferred: the row names shadow
     * slot 0x106 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_6                  = 0x206,

    /* kpm row 0x207, printed as "**** 0x7". Inferred: the row names shadow
     * slot 0x107 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_7                  = 0x207,

    /* kpm row 0x208, printed as "**** 0x8". Inferred: the row names shadow
     * slot 0x108 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_8                  = 0x208,

    /* kpm row 0x209, printed as "**** 0x9". Inferred: the row names shadow
     * slot 0x109 and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_9                  = 0x209,

    /* kpm row 0x20a, printed as "**** 0xa". Inferred: the row names shadow
     * slot 0x10a and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_A                  = 0x20a,

    /* kpm row 0x20b, printed as "**** 0xb". Inferred: the row names shadow
     * slot 0x10b and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_B                  = 0x20b,

    /* kpm row 0x20c, printed as "**** 0xc". Inferred: the row names shadow
     * slot 0x10c and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_C                  = 0x20c,

    /* kpm row 0x20d, printed as "**** 0xd". Inferred: the row names shadow
     * slot 0x10d and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_D                  = 0x20d,

    /* kpm row 0x20e, printed as "**** 0xe". Inferred: the row names shadow
     * slot 0x10e and no host token, because the firmware token map (built by
     * arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff. */
    KONA_HP_KPM_SPARE_E                  = 0x20e,

    /* The two loads of 0x010f087f sit in `PixelRestore` and `XPixelRestore`. */

    /* kpm row 0x20f, printed as "**** PIXELS_STARTGEID". Inferred: the row
     * names shadow slot 0x10f and no host token, because the firmware token
     * map (built by arm1.u at 0x0c001c60) has 512 entries and ends at 0x1ff.
     * Established: slot 0x10f is the high half of the address word
     * 0x010f087f, a write to raster register 0x87f that the shadow does not
     * keep, loaded at arm1.u 0x0c02926c and 0x0c035a90. */
    KONA_HP_KPM_PIXELS_STARTGEID         = 0x20f,
};

/*
 * kpm's table continues past the token set with 89 more names, at
 * indices 0x210-0x268 (the same vaddr arithmetic). They name raster and
 * host-interface registers rather than commands. ESTABLISHED: entry 0x210 + i
 * names the raster register that word i of the geometry board's 89-word
 * register shadow mirrors (befsh_addrs[i] in arm1.u, ucode/befshadow.tsv).
 * All 89 agree: 79 names carry exactly the kpm raster index the shadow word
 * holds, the seven PGTG_ZRECT_1.._7 entries are the base register plus one to
 * seven (the suffix rule of docs/rm.md), and the three host-interface names
 * HT_PACK_MODE, HT_ODMA_LLEN and HT_ODMA_STRIDE sit on shadow words 0-2, the
 * raster-bus indexes 0x441, 0x455 and 0x456. So 0x210 + i is 0x100 plus the
 * address word's high half 0x110 + i that the ARM sends for that shadow word
 * (docs/rm.md, "The register-write word"). INFERRED: kpm's printing table is
 * indexed by that high half plus 0x100, which also makes the sixteen spare
 * rows above the names of shadow slots 0x100-0x10f; kpm names only slot 0x10f
 * (PIXELS_STARTGEID). The full table is in docs/rm.md ("Shadow word names").
 * One paragraph per row follows, with the arm1.u functions that write the
 * word in a separate paragraph after it.
 */

/* ge_token_comments: shadow rows begin */

/* `HT_PACK_MODE` (kpm row 0x210). Established: names word 0 of the geometry
 * board register shadow, which mirrors raster register 0x0441 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * host-interface pack mode, the 7-bit byte-packing setting of a pixel
 * read-back. Established: arm1.u code writes it through slot 0x110, loading
 * that address word at 3 places, first at 0x0c026824. */

/* Functions that load the slot 0x110 address word: `CommonPixEnd`
 * (0x0c026824), `PixEndReadConvolve` (0x0c026bec), `__glkonSetupPacker`
 * (0x0c028d84). */

/* `HT_ODMA_LLEN` (kpm row 0x211). Established: names word 1 of the geometry
 * board register shadow, which mirrors raster register 0x0455 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: host
 * output-DMA line length of a pixel read-back. Established: no arm1.u code
 * loads its slot 0x111 address word; the ARM reaches it only in its loops
 * over all 89 words (start-up, context load and one diagnostic case). */

/* `HT_ODMA_STRIDE` (kpm row 0x212). Established: names word 2 of the geometry
 * board register shadow, which mirrors raster register 0x0456 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: host
 * output-DMA line stride of a pixel read-back. Established: no arm1.u code
 * loads its slot 0x112 address word; the ARM reaches it only in its loops
 * over all 89 words (start-up, context load and one diagnostic case). */

/* `PGTG_SCIS` (kpm row 0x213). Established: names word 3 of the geometry
 * board register shadow, which mirrors raster register 0x3fc2 (arm1.u table
 * at 0x04067c0c, start-up value 0x3fff8000). Inferred from its kpm field
 * names: first scissor word, the x minimum and maximum the pixel and texture
 * generators clip to. Established: arm1.u code writes it through slot 0x113,
 * loading that address word at 1 place, first at 0x0c018c14. */

/* Functions that load the slot 0x113 address word: `resolve_scissor`
 * (0x0c018c14). */

/* `PGTG_SCIS_1` (kpm row 0x214). Established: names word 4 of the geometry
 * board register shadow, which mirrors raster register 0x3fc3 (arm1.u table
 * at 0x04067c0c, start-up value 0x3fff8000). Inferred from its kpm field
 * names: second scissor word, the y minimum and maximum. Established: arm1.u
 * code writes it through slot 0x114, loading that address word at 1 place,
 * first at 0x0c018c38. */

/* Functions that load the slot 0x114 address word: `resolve_scissor`
 * (0x0c018c38). */

/* `PGTG_ZRECT` (kpm row 0x215). Established: names word 5 of the geometry
 * board register shadow, which mirrors raster register 0x3fc4 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * first of eight words with start and step fields in x and y and two ZX and
 * ZY fields. Established: no arm1.u code loads its slot 0x115 address word;
 * the ARM reaches it only in its loops over all 89 words (start-up, context
 * load and one diagnostic case). */

/* `PGTG_ZRECT_1` (kpm row 0x216). Established: names word 6 of the geometry
 * board register shadow, which mirrors raster register 0x3fc5 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * second of the eight start-and-step words that begin at 0x3fc4. Established:
 * no arm1.u code loads its slot 0x116 address word; the ARM reaches it only
 * in its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `PGTG_ZRECT_2` (kpm row 0x217). Established: names word 7 of the geometry
 * board register shadow, which mirrors raster register 0x3fc6 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * third of the eight start-and-step words that begin at 0x3fc4. Established:
 * no arm1.u code loads its slot 0x117 address word; the ARM reaches it only
 * in its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `PGTG_ZRECT_3` (kpm row 0x218). Established: names word 8 of the geometry
 * board register shadow, which mirrors raster register 0x3fc7 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * fourth of the eight start-and-step words that begin at 0x3fc4. Established:
 * no arm1.u code loads its slot 0x118 address word; the ARM reaches it only
 * in its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `PGTG_ZRECT_4` (kpm row 0x219). Established: names word 9 of the geometry
 * board register shadow, which mirrors raster register 0x3fc8 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * fifth of the eight start-and-step words that begin at 0x3fc4. Established:
 * no arm1.u code loads its slot 0x119 address word; the ARM reaches it only
 * in its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `PGTG_ZRECT_5` (kpm row 0x21a). Established: names word 10 of the geometry
 * board register shadow, which mirrors raster register 0x3fc9 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * sixth of the eight start-and-step words that begin at 0x3fc4. Established:
 * no arm1.u code loads its slot 0x11a address word; the ARM reaches it only
 * in its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `PGTG_ZRECT_6` (kpm row 0x21b). Established: names word 11 of the geometry
 * board register shadow, which mirrors raster register 0x3fca (arm1.u table
 * at 0x04067c0c, start-up value 0x100000). Inferred from its kpm field names:
 * seventh of the eight start-and-step words that begin at 0x3fc4.
 * Established: no arm1.u code loads its slot 0x11b address word; the ARM
 * reaches it only in its loops over all 89 words (start-up, context load and
 * one diagnostic case). */

/* `PGTG_ZRECT_7` (kpm row 0x21c). Established: names word 12 of the geometry
 * board register shadow, which mirrors raster register 0x3fcb (arm1.u table
 * at 0x04067c0c, start-up value 0x100000). Inferred from its kpm field names:
 * eighth of the eight start-and-step words that begin at 0x3fc4. Established:
 * no arm1.u code loads its slot 0x11c address word; the ARM reaches it only
 * in its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `PGTG_DRECT` (kpm row 0x21d). Established: names word 13 of the geometry
 * board register shadow, which mirrors raster register 0x3fcc (arm1.u table
 * at 0x04067c0c, start-up value 0xc010010). Inferred from its kpm field
 * names: first word of the pixel draw rectangle (origin, width, scan
 * direction, zoom and cache enables). Established: arm1.u code writes it
 * through slot 0x11d, loading that address word at 7 places, first at
 * 0x0c0266c0. */

/* Functions that load the slot 0x11d address word: `CommonPixEnd`
 * (0x0c0266c0), `arm_readpixels` (0x0c02c63c), `videoReadPixels`
 * (0x0c02c784), `arm_copyconvolutionfilter1d` (0x0c036fe8),
 * `arm_copyconvolutionfilter2d` (0x0c037128), `arm_getconvolutionfilter`
 * (0x0c0373d8), `arm_getseparablefilter` (0x0c037510). */

/* `PGTG_DRECT_1` (kpm row 0x21e). Established: names word 14 of the geometry
 * board register shadow, which mirrors raster register 0x3fcd (arm1.u table
 * at 0x04067c0c, start-up value 0x10). Inferred from its kpm field names:
 * second word of the pixel draw rectangle. Established: arm1.u code writes it
 * through slot 0x11e, loading that address word at 1 place, first at
 * 0x0c0266d4. */

/* Functions that load the slot 0x11e address word: `CommonPixEnd`
 * (0x0c0266d4). */

/* `PGTG_DRECT_2` (kpm row 0x21f). Established: names word 15 of the geometry
 * board register shadow, which mirrors raster register 0x3fce (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * third word of the pixel draw rectangle. Established: arm1.u code writes it
 * through slot 0x11f, loading that address word at 1 place, first at
 * 0x0c0266e8. */

/* Functions that load the slot 0x11f address word: `CommonPixEnd`
 * (0x0c0266e8). */

/* `PGTG_SIZE` (kpm row 0x220). Established: names word 16 of the geometry
 * board register shadow, which mirrors raster register 0x3fcf (arm1.u table
 * at 0x04067c0c, start-up value 0x10). Inferred from its kpm field names:
 * first word of the generator buffer sizes (point, line and triangle buffer
 * sizes, image width and height). Established: arm1.u code writes it through
 * slot 0x120, loading that address word at 3 places, first at 0x0c003910. */

/* Functions that load the slot 0x120 address word: `init_tg` (0x0c003910),
 * `prim_init` (0x0c0166b4), `x_initregs` (0x0c03d0c8). */

/* `PGTG_SIZE_1` (kpm row 0x221). Established: names word 17 of the geometry
 * board register shadow, which mirrors raster register 0x3fd0 (arm1.u table
 * at 0x04067c0c, start-up value 0x10). Inferred from its kpm field names:
 * second word of the generator buffer sizes. Established: arm1.u code writes
 * it through slot 0x121, loading that address word at 3 places, first at
 * 0x0c003928. */

/* Functions that load the slot 0x121 address word: `init_tg` (0x0c003928),
 * `prim_init` (0x0c0166cc), `x_initregs` (0x0c03d0e0). */

/* `PGTG_SIZE_2` (kpm row 0x222). Established: names word 18 of the geometry
 * board register shadow, which mirrors raster register 0x3fd1 (arm1.u table
 * at 0x04067c0c, start-up value 0xf). Inferred from its kpm field names:
 * third word of the generator buffer sizes. Established: arm1.u code writes
 * it through slot 0x122, loading that address word at 3 places, first at
 * 0x0c00393c. */

/* Functions that load the slot 0x122 address word: `init_tg` (0x0c00393c),
 * `prim_init` (0x0c0166e0), `x_initregs` (0x0c03d0f4). */

/* `PGTG_SIZE_3` (kpm row 0x223). Established: names word 19 of the geometry
 * board register shadow, which mirrors raster register 0x3fd2 (arm1.u table
 * at 0x04067c0c, start-up value 0xf00f). Inferred from its kpm field names:
 * fourth word of the generator buffer sizes. Established: arm1.u code writes
 * it through slot 0x123, loading that address word at 3 places, first at
 * 0x0c003954. */

/* Functions that load the slot 0x123 address word: `init_tg` (0x0c003954),
 * `prim_init` (0x0c0166f8), `x_initregs` (0x0c03d10c). */

/* `PGTG_ENABLES` (kpm row 0x224). Established: names word 20 of the geometry
 * board register shadow, which mirrors raster register 0x3fd3 (arm1.u table
 * at 0x04067c0c, start-up value 0xf). Inferred from its kpm field names:
 * generator enables: texture generator, scan, ZPU and draw-pixels path.
 * Established: arm1.u code writes it through slot 0x124, loading that address
 * word at 5 places, first at 0x0c0038f8. */

/* Functions that load the slot 0x124 address word: `init_tg` (0x0c0038f8),
 * `prim_init` (0x0c01669c), `CommonPixEnd` (0x0c0266fc), `masked_clear`
 * (0x0c03b618), `x_initregs` (0x0c03d128). */

/* `PGTFPIMP_MSLOC` (kpm row 0x225). Established: names word 21 of the
 * geometry board register shadow, which mirrors raster register 0x3be0
 * (arm1.u table at 0x04067c0c, start-up value 0xc8b640). Inferred from its
 * kpm field names: first multisample location word, the x and y offsets of
 * sample positions 0 to 7. Established: arm1.u code writes it through slot
 * 0x125, loading that address word at 4 places, first at 0x0c003810. */

/* Functions that load the slot 0x125 address word: `init_pg` (0x0c003810),
 * `arm_samplepattern` (0x0c03c30c), `init_multisample` (0x0c03c468),
 * `multisample_pop` (0x0c03c700). */

/* `PGTFPIMP_MSLOC_1` (kpm row 0x226). Established: names word 22 of the
 * geometry board register shadow, which mirrors raster register 0x3be1
 * (arm1.u table at 0x04067c0c, start-up value 0x916f6f). Inferred from its
 * kpm field names: second multisample location word. Established: arm1.u code
 * writes it through slot 0x126, loading that address word at 4 places, first
 * at 0x0c003828. */

/* Functions that load the slot 0x126 address word: `init_pg` (0x0c003828),
 * `arm_samplepattern` (0x0c03c320), `init_multisample` (0x0c03c488),
 * `multisample_pop` (0x0c03c714). */

/* `PG_GENERAL` (kpm row 0x227). Established: names word 23 of the geometry
 * board register shadow, which mirrors raster register 0x0800 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * pixel generator general mode (flat shading enable, direction mask).
 * Established: no arm1.u code loads its slot 0x127 address word; the ARM
 * reaches it only in its loops over all 89 words (start-up, context load and
 * one diagnostic case). */

/* `PG_PSPEC` (kpm row 0x228). Established: names word 24 of the geometry
 * board register shadow, which mirrors raster register 0x080f (arm1.u table
 * at 0x04067c0c, start-up value 0x100100). Inferred from its kpm field names:
 * pixel generator point specification (point width and height). Established:
 * arm1.u code writes it through slot 0x128, loading that address word at 1
 * place, first at 0x0c0037d8. */

/* Functions that load the slot 0x128 address word: `init_pg` (0x0c0037d8). */

/* `PG_BLOAT` (kpm row 0x229). Established: names word 25 of the geometry
 * board register shadow, which mirrors raster register 0x0804 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * pixel generator bloat value used for wide primitives. Established: arm1.u
 * code writes it through slot 0x129, loading that address word at 1 place,
 * first at 0x0c016714. */

/* Functions that load the slot 0x129 address word: `prim_init` (0x0c016714). */

/* `PG_Z_OFF` (kpm row 0x22a). Established: names word 26 of the geometry
 * board register shadow, which mirrors raster register 0x0805 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * pixel generator depth offset. Established: arm1.u code writes it through
 * slot 0x12a, loading that address word at 1 place, first at 0x0c01672c. */

/* Functions that load the slot 0x12a address word: `prim_init` (0x0c01672c). */

/* `PG_MSK` (kpm row 0x22b). Established: names word 27 of the geometry board
 * register shadow, which mirrors raster register 0x0806 (arm1.u table at
 * 0x04067c0c, start-up value 0x55). Inferred from its kpm field names: pixel
 * generator sample-mask and rasterisation-rule controls for lines, triangles
 * and points. Established: arm1.u code writes it through slot 0x12b, loading
 * that address word at 5 places, first at 0x0c0037f4. */

/* Functions that load the slot 0x12b address word: `init_pg` (0x0c0037f4),
 * `e_multisample` (0x0c0156b4), `d_multisample` (0x0c015740),
 * `ResolvePolygon` (0x0c015ec8), `ResolveLine` (0x0c016094). */

/* `PG_WIN_OFFSET_X` (kpm row 0x22c). Established: names word 28 of the
 * geometry board register shadow, which mirrors raster register 0x0807
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: window x offset added to screen coordinates. Established:
 * arm1.u code writes it through slot 0x12c, loading that address word at 1
 * place, first at 0x0c018390. */

/* Functions that load the slot 0x12c address word: `arm_validate_clip`
 * (0x0c018390). */

/* `PG_WIN_OFFSET_Y` (kpm row 0x22d). Established: names word 29 of the
 * geometry board register shadow, which mirrors raster register 0x0808
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: window y offset added to screen coordinates. Established:
 * arm1.u code writes it through slot 0x12d, loading that address word at 1
 * place, first at 0x0c0183bc. */

/* Functions that load the slot 0x12d address word: `arm_validate_clip`
 * (0x0c0183bc). */

/* `PG_SMASK` (kpm row 0x22e). Established: names word 30 of the geometry
 * board register shadow, which mirrors raster register 0x0809 (arm1.u table
 * at 0x04067c0c, start-up value 0xffffffff). Inferred from its kpm field
 * names: pixel generator sample mask. Established: arm1.u code writes it
 * through slot 0x12e, loading that address word at 1 place, first at
 * 0x0c016740. */

/* Functions that load the slot 0x12e address word: `prim_init` (0x0c016740). */

/* `PG_STIPPLE` (kpm row 0x22f). Established: names word 31 of the geometry
 * board register shadow, which mirrors raster register 0x080a (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * first stipple word (enable, offset, invert, two pattern halves, x and y
 * modulus). Established: arm1.u code writes it through slot 0x12f, loading
 * that address word at 3 places, first at 0x0c015f88. */

/* Functions that load the slot 0x12f address word: `ResolvePolygon`
 * (0x0c015f88), `arm_x_loadstipple` (0x0c035c70), `masked_clear`
 * (0x0c03b604). */

/* `PG_STIPPLE_1` (kpm row 0x230). Established: names word 32 of the geometry
 * board register shadow, which mirrors raster register 0x080b (arm1.u table
 * at 0x04067c0c, start-up value 0x55). Inferred from its kpm field names:
 * second stipple word. Established: no arm1.u code loads its slot 0x130
 * address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `PG_STIPPLE_2` (kpm row 0x231). Established: names word 33 of the geometry
 * board register shadow, which mirrors raster register 0x080c (arm1.u table
 * at 0x04067c0c, start-up value 0x55). Inferred from its kpm field names:
 * third stipple word. Established: no arm1.u code loads its slot 0x131
 * address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `PG_STIPPLE_3` (kpm row 0x232). Established: names word 34 of the geometry
 * board register shadow, which mirrors raster register 0x080d (arm1.u table
 * at 0x04067c0c, start-up value 0xff). Inferred from its kpm field names:
 * fourth stipple word. Established: arm1.u code writes it through slot 0x132,
 * loading that address word at 2 places, first at 0x0c0273f8. */

/* Functions that load the slot 0x132 address word: `InitFbState`
 * (0x0c0273f8), `arm_x_loadstipple` (0x0c035c20). */

/* `PG_PRU` (kpm row 0x233). Established: names word 35 of the geometry board
 * register shadow, which mirrors raster register 0x0810 (arm1.u table at
 * 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: pixel
 * generator PRU field. Established: arm1.u code writes it through slot 0x133,
 * loading that address word at 1 place, first at 0x0c01606c. */

/* Functions that load the slot 0x133 address word: `ResolveLine`
 * (0x0c01606c). */

/* `IMP_CONFIG` (kpm row 0x234). Established: names word 36 of the geometry
 * board register shadow, which mirrors raster register 0x1c00 (arm1.u table
 * at 0x04067c0c, start-up value 0x3c2). Inferred from its kpm field names:
 * image-processor configuration: pixel size, colour format, per-channel write
 * masks, read format. Established: no arm1.u code loads its slot 0x134
 * address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `IMP_OP` (kpm row 0x235). Established: names word 37 of the geometry board
 * register shadow, which mirrors raster register 0x1c02 (arm1.u table at
 * 0x04067c0c, start-up value 0x1). Inferred from its kpm field names:
 * image-processor operation: draw buffer, clear packet controls, read-back
 * and depth options. Established: arm1.u code writes it through slot 0x135,
 * loading that address word at 16 places, first at 0x0c003b08. */

/* Functions that load the slot 0x135 address word: `init_imp` (0x0c003b08),
 * `resolve_banks` (0x0c013a1c), `e_calligraphic_fragment` (0x0c015a7c),
 * `d_calligraphic_fragment` (0x0c015aa8), `SetupReadbackTF` (0x0c033cc8),
 * `arm_accum` (0x0c037f20), `arm_slop` (0x0c038f90), `slop_readword`
 * (0x0c0391fc), `imp_clear` (0x0c03afdc), `masked_clear` (0x0c03b2f8),
 * `accum_clear` (0x0c03b734), `accum_clear32` (0x0c03b8d0), `overlay_clear`
 * (0x0c03bb24), `arm_clear` (0x0c03be64), `word_clear` (0x0c03bf88),
 * `x_initregs` (0x0c03d1ac). */

/* `IMP_MS` (kpm row 0x236). Established: names word 38 of the geometry board
 * register shadow, which mirrors raster register 0x1c03 (arm1.u table at
 * 0x04067c0c, start-up value 0x17f8). Inferred from its kpm field names:
 * image-processor multisample control: enable, sample count and mask
 * operation. Established: arm1.u code writes it through slot 0x136, loading
 * that address word at 10 places, first at 0x0c003b20. */

/* Functions that load the slot 0x136 address word: `init_imp` (0x0c003b20),
 * `arm_colormask` (0x0c012d6c), `e_blend` (0x0c01596c), `d_blend`
 * (0x0c0159f0), `e_color_logic_op` (0x0c015b18), `d_color_logic_op`
 * (0x0c015b98), `masked_clear` (0x0c03b66c), `word_clear` (0x0c03bfd0),
 * `init_multisample` (0x0c03c534), `x_initregs` (0x0c03d1c4). */

/* `IMP_CLIP` (kpm row 0x237). Established: names word 39 of the geometry
 * board register shadow, which mirrors raster register 0x1c06 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * image-processor window clip: enable, reference and mask of the window-id
 * test. Established: arm1.u code writes it through slot 0x137, loading that
 * address word at 3 places, first at 0x0c003b3c. */

/* Functions that load the slot 0x137 address word: `init_imp` (0x0c003b3c),
 * `arm_validate_clip` (0x0c0184a8), `x_initregs` (0x0c03d1dc). */

/* `IMP_SZ0` (kpm row 0x238). Established: names word 40 of the geometry board
 * register shadow, which mirrors raster register 0x1c07 (arm1.u table at
 * 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * image-processor stencil set-up: enable, size, function, reference, mask and
 * write mask. Established: arm1.u code writes it through slot 0x138, loading
 * that address word at 13 places, first at 0x0c003b54. */

/* Functions that load the slot 0x138 address word: `init_imp` (0x0c003b54),
 * `arm_buffer_config` (0x0c01341c), `arm_stencilmask` (0x0c014930),
 * `arm_stencilfunc` (0x0c01499c), `e_stencil_test` (0x0c014a60),
 * `d_stencil_test` (0x0c014a88), `depth_init` (0x0c014b1c), `stencil_pop`
 * (0x0c014bb0), `CommonPixEnd` (0x0c0267bc), `SetupRM` (0x0c034130),
 * `masked_clear` (0x0c03b644), `arm_clear` (0x0c03bec0), `x_initregs`
 * (0x0c03d1f0). */

/* `IMP_SZ1` (kpm row 0x239). Established: names word 41 of the geometry board
 * register shadow, which mirrors raster register 0x1c08 (arm1.u table at
 * 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * image-processor stencil operations and depth test: fail and pass actions,
 * depth enable, size, function and write mask. Established: arm1.u code
 * writes it through slot 0x139, loading that address word at 15 places, first
 * at 0x0c003b6c. */

/* Functions that load the slot 0x139 address word: `init_imp` (0x0c003b6c),
 * `arm_buffer_config` (0x0c0133c0), `arm_depthfunc` (0x0c0147b8),
 * `arm_depthmask` (0x0c0147ec), `e_depth_test` (0x0c01487c), `d_depth_test`
 * (0x0c0148a4), `arm_stencilop` (0x0c014a28), `depth_init` (0x0c014ae8),
 * `stencil_pop` (0x0c014c30), `depth_pop` (0x0c014cd8), `CommonPixEnd`
 * (0x0c026800), `SetupRM` (0x0c03414c), `masked_clear` (0x0c03b658),
 * `word_clear` (0x0c03bfbc), `x_initregs` (0x0c03d204). */

/* `IMP_DEPTH_CLEAR` (kpm row 0x23a). Established: names word 42 of the
 * geometry board register shadow, which mirrors raster register 0x1c09
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: image-processor depth clear value. Established: arm1.u code
 * writes it through slot 0x13a, loading that address word at 8 places, first
 * at 0x0c003b84. */

/* Functions that load the slot 0x13a address word: `init_imp` (0x0c003b84),
 * `late_state_init` (0x0c0141ec), `arm_cleardepth` (0x0c014788),
 * `arm_clearstencil` (0x0c0148f0), `depth_pop` (0x0c014dc8), `accum_clear`
 * (0x0c03b818), `accum_clear32` (0x0c03b9d0), `word_clear` (0x0c03bfec). */

/* `IMP_ADDR` (kpm row 0x23b). Established: names word 43 of the geometry
 * board register shadow, which mirrors raster register 0x1c0b (arm1.u table
 * at 0x04067c0c, start-up value 0x32212301). Inferred from its kpm field
 * names: image-processor framebuffer layout: colour, multisample, stencil,
 * depth and accumulation base addresses. Established: arm1.u code writes it
 * through slot 0x13b, loading that address word at 7 places, first at
 * 0x0c003b98. */

/* Functions that load the slot 0x13b address word: `init_imp` (0x0c003b98),
 * `arm_buffer_config` (0x0c013470), `arm_drawbuffer` (0x0c013bd0),
 * `color_pop` (0x0c014614), `arm_validate_clip` (0x0c018318), `word_clear`
 * (0x0c03bfa4), `x_initregs` (0x0c03d218). */

/* `IMP_BL` (kpm row 0x23c). Established: names word 44 of the geometry board
 * register shadow, which mirrors raster register 0x1c0d (arm1.u table at
 * 0x04067c0c, start-up value 0x11012). Inferred from its kpm field names:
 * image-processor blend and logic-op control: enables, equations and source
 * and destination factors. Established: arm1.u code writes it through slot
 * 0x13c, loading that address word at 15 places, first at 0x0c003bb4. */

/* Functions that load the slot 0x13c address word: `init_imp` (0x0c003bb4),
 * `arm_colormask` (0x0c012d84), `arm_blendequation` (0x0c013064),
 * `color_init` (0x0c01410c), `color_pop` (0x0c0142c4), `arm_blendfunc`
 * (0x0c0158d0), `e_blend` (0x0c015948), `d_blend` (0x0c0159c0),
 * `e_color_logic_op` (0x0c015af4), `d_color_logic_op` (0x0c015b68),
 * `e_logic_op` (0x0c015bd4), `d_logic_op` (0x0c015c08), `arm_logicop`
 * (0x0c015c30), `masked_clear` (0x0c03b5dc), `x_initregs` (0x0c03d230). */

/* `IMP_WMASK_BIT` (kpm row 0x23d). Established: names word 45 of the geometry
 * board register shadow, which mirrors raster register 0x1c14 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * first image-processor per-bit write mask word (red, green, blue, alpha).
 * Established: arm1.u code writes it through slot 0x13d, loading that address
 * word at 11 places, first at 0x0c003cc8. */

/* Functions that load the slot 0x13d address word: `init_imp` (0x0c003cc8),
 * `arm_indexmask` (0x0c012e78), `arm_buffer_config` (0x0c013548),
 * `color_init` (0x0c014128), `color_pop` (0x0c014328), `accum_clear`
 * (0x0c03b750), `accum_clear32` (0x0c03b8ec), `overlay_clear` (0x0c03bb50),
 * `arm_clear` (0x0c03be84), `masked_word_clear` (0x0c03c0e4), `x_initregs`
 * (0x0c03d248). */

/* `IMP_WMASK_BIT_1` (kpm row 0x23e). Established: names word 46 of the
 * geometry board register shadow, which mirrors raster register 0x1c15
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: second image-processor per-bit write mask word. Established:
 * arm1.u code writes it through slot 0x13e, loading that address word at 7
 * places, first at 0x0c003cdc. */

/* Functions that load the slot 0x13e address word: `init_imp` (0x0c003cdc),
 * `color_init` (0x0c01413c), `accum_clear` (0x0c03b764), `accum_clear32`
 * (0x0c03b900), `arm_clear` (0x0c03be98), `masked_word_clear` (0x0c03c0f8),
 * `x_initregs` (0x0c03d260). */

/* `COMMON_IFMT` (kpm row 0x23f). Established: names word 47 of the geometry
 * board register shadow, which mirrors raster register 0x3ff8 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * common input pixel format (pack field) used by read and texture-read paths.
 * Established: arm1.u code writes it through slot 0x13f, loading that address
 * word at 3 places, first at 0x0c02c654. */

/* Functions that load the slot 0x13f address word: `arm_readpixels`
 * (0x0c02c654), `SetupSubtexload` (0x0c03435c), `SetupTexRead` (0x0c0345dc). */

/* `TGTML_TEXLD_MISC` (kpm row 0x240). Established: names word 48 of the
 * geometry board register shadow, which mirrors raster register 0x7fc5
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-load mode: texel size, scissor enable, target bank,
 * tiling and s and t widths. Established: arm1.u code writes it through slot
 * 0x140, loading that address word at 1 place, first at 0x0c0365c4. */

/* Functions that load the slot 0x140 address word: `PixRM_TextureLoadSetup`
 * (0x0c0365c4). */

/* `TGTML_TEXLD_S1ST_RSTART` (kpm row 0x241). Established: names word 49 of
 * the geometry board register shadow, which mirrors raster register 0x7fc3
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-load first s start and r start. Established: arm1.u
 * code writes it through slot 0x141, loading that address word at 1 place,
 * first at 0x0c036618. */

/* Functions that load the slot 0x141 address word: `PixRM_TextureLoadSetup`
 * (0x0c036618). */

/* `TGTML_TEXLD_STSTART` (kpm row 0x242). Established: names word 50 of the
 * geometry board register shadow, which mirrors raster register 0x7fc2
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-load s and t start. Established: arm1.u code writes it
 * through slot 0x142, loading that address word at 1 place, first at
 * 0x0c036668. */

/* Functions that load the slot 0x142 address word: `PixRM_TextureLoadSetup`
 * (0x0c036668). */

/* `TGTML_TEXLD_SIZE` (kpm row 0x243). Established: names word 51 of the
 * geometry board register shadow, which mirrors raster register 0x7fc1
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-load s, t and r sizes. Established: arm1.u code writes
 * it through slot 0x143, loading that address word at 1 place, first at
 * 0x0c036708. */

/* Functions that load the slot 0x143 address word: `PixRM_TextureLoadSetup`
 * (0x0c036708). */

/* `TGTML_TEXLD_STEND` (kpm row 0x244). Established: names word 52 of the
 * geometry board register shadow, which mirrors raster register 0x7fc4
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-load s and t end. Established: arm1.u code writes it
 * through slot 0x144, loading that address word at 1 place, first at
 * 0x0c03675c. */

/* Functions that load the slot 0x144 address word: `PixRM_TextureLoadSetup`
 * (0x0c03675c). */

/* `TML_TEXLD_GLOBALOFFSET` (kpm row 0x245). Established: names word 53 of the
 * geometry board register shadow, which mirrors raster register 0x5001
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-load global offset in texture memory. Established:
 * arm1.u code writes it through slot 0x145, loading that address word at 1
 * place, first at 0x0c03677c. */

/* Functions that load the slot 0x145 address word: `PixRM_TextureLoadSetup`
 * (0x0c03677c). */

/* `TM_DRAW_GLOBALOFFSET` (kpm row 0x246). Established: names word 54 of the
 * geometry board register shadow, which mirrors raster register 0x101a
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-draw global offset in texture memory. Established:
 * arm1.u code writes it through slot 0x146, loading that address word at 4
 * places, first at 0x0c024200. */

/* Functions that load the slot 0x146 address word: `mem_reserve_tex`
 * (0x0c024200), `mem_swapout_tex` (0x0c0242d8), `mem_swapin_tex`
 * (0x0c024350), `SetupRM_TextureBind` (0x0c0368b4). */

/* `TM_MEMCONF` (kpm row 0x247). Established: names word 55 of the geometry
 * board register shadow, which mirrors raster register 0x1000 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture-memory geometry (s and t address bits). Established: no arm1.u code
 * loads its slot 0x147 address word; the ARM reaches it only in its loops
 * over all 89 words (start-up, context load and one diagnostic case). */

/* `TGTM_TEX_SIZE` (kpm row 0x248). Established: names word 56 of the geometry
 * board register shadow, which mirrors raster register 0x3fd5 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture-generator and texture-memory texture size and address-control
 * (wrap) fields for s, t and r. Established: arm1.u code writes it through
 * slot 0x148, loading that address word at 2 places, first at 0x0c026738. */

/* Functions that load the slot 0x148 address word: `CommonPixEnd`
 * (0x0c026738), `SetupRM_TextureBind` (0x0c036894). */

/* `TGTMTFT` (kpm row 0x249). Established: names word 57 of the geometry board
 * register shadow, which mirrors raster register 0x3fd4 (arm1.u table at
 * 0x04067c0c, start-up value 0x30). Inferred from its kpm field names:
 * texture mode word: minify and magnify filters, environment, texel format
 * and related enables. Established: arm1.u code writes it through slot 0x149,
 * loading that address word at 3 places, first at 0x0c025ffc. */

/* Functions that load the slot 0x149 address word: `arm_bind_detail_texture`
 * (0x0c025ffc), `CommonPixEnd` (0x0c026724), `SetupRM_TextureBind`
 * (0x0c036940). */

/* `TG_MAP_LEVEL` (kpm row 0x24a). Established: names word 58 of the geometry
 * board register shadow, which mirrors raster register 0x0c04 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * minimum and maximum mipmap level. Established: arm1.u code writes it
 * through slot 0x14a, loading that address word at 3 places, first at
 * 0x0c025d64. */

/* Functions that load the slot 0x14a address word:
 * `arm_bind_3d_mipmap_texture` (0x0c025d64), `CommonPixEnd` (0x0c026764),
 * `SetupRM_TextureBind` (0x0c0369c4). */

/* `TG_LOD_SCALEST` (kpm row 0x24b). Established: names word 59 of the
 * geometry board register shadow, which mirrors raster register 0x0c05
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: level-of-detail scale in s and t. Established: arm1.u code
 * writes it through slot 0x14b, loading that address word at 2 places, first
 * at 0x0c025d40. */

/* Functions that load the slot 0x14b address word:
 * `arm_bind_3d_mipmap_texture` (0x0c025d40), `SetupRM_TextureBind`
 * (0x0c036970). */

/* `TG_LOD_SCALER` (kpm row 0x24c). Established: names word 60 of the geometry
 * board register shadow, which mirrors raster register 0x0c06 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * level-of-detail scale in r. Established: arm1.u code writes it through slot
 * 0x14c, loading that address word at 2 places, first at 0x0c025d50. */

/* Functions that load the slot 0x14c address word:
 * `arm_bind_3d_mipmap_texture` (0x0c025d50), `SetupRM_TextureBind`
 * (0x0c03699c). */

/* `TGTM_DCTEX_SIZE` (kpm row 0x24d). Established: names word 61 of the
 * geometry board register shadow, which mirrors raster register 0x3fd6
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: detail and clip-map texture sizes, clip level offset and clip
 * enable. Established: arm1.u code writes it through slot 0x14d, loading that
 * address word at 2 places, first at 0x0c025c20. */

/* Functions that load the slot 0x14d address word:
 * `arm_bind_2d_clipmap_texture` (0x0c025c20), `arm_bind_detail_texture`
 * (0x0c025f68). */

/* `TM_DRAW_DETAILMAP` (kpm row 0x24e). Established: names word 62 of the
 * geometry board register shadow, which mirrors raster register 0x1019
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-memory detail-map address. Established: arm1.u code
 * writes it through slot 0x14e, loading that address word at 2 places, first
 * at 0x0c025924. */

/* Functions that load the slot 0x14e address word: `arm_bind_texture`
 * (0x0c025924), `arm_bind_detail_texture` (0x0c025fc4). */

/* `TM_TEX_SIZE` (kpm row 0x24f). Established: names word 63 of the geometry
 * board register shadow, which mirrors raster register 0x13d5 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture-memory texture size and address-control fields. Established: arm1.u
 * code writes it through slot 0x14f, loading that address word at 3 places,
 * first at 0x0c025d74. */

/* Functions that load the slot 0x14f address word:
 * `arm_bind_3d_mipmap_texture` (0x0c025d74), `arm_bind_bicubic_texture`
 * (0x0c025e50), `arm_bind_3d_texture` (0x0c025ed8). */

/* `TM_DRAW_CLIP_OFFSET` (kpm row 0x250). Established: names word 64 of the
 * geometry board register shadow, which mirrors raster register 0x1020
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: clip-map s and t offsets in texture memory. Established:
 * arm1.u code writes it through slot 0x150, loading that address word at 1
 * place, first at 0x0c025bd0. */

/* Functions that load the slot 0x150 address word:
 * `arm_bind_2d_clipmap_texture` (0x0c025bd0). */

/* `TM_DRAW_CLIP_BKPT` (kpm row 0x251). Established: names word 65 of the
 * geometry board register shadow, which mirrors raster register 0x1021
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: clip-map break point. Established: arm1.u code writes it
 * through slot 0x151, loading that address word at 1 place, first at
 * 0x0c025bb8. */

/* Functions that load the slot 0x151 address word:
 * `arm_bind_2d_clipmap_texture` (0x0c025bb8). */

/* `TGTM_TEX_SCENTER` (kpm row 0x252). Established: names word 66 of the
 * geometry board register shadow, which mirrors raster register 0x3fd7
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: clip-map s centre. Established: arm1.u code writes it through
 * slot 0x152, loading that address word at 1 place, first at 0x0c025bf4. */

/* Functions that load the slot 0x152 address word:
 * `arm_bind_2d_clipmap_texture` (0x0c025bf4). */

/* `TGTM_TEX_TCENTER` (kpm row 0x253). Established: names word 67 of the
 * geometry board register shadow, which mirrors raster register 0x3fd8
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: clip-map t centre. Established: arm1.u code writes it through
 * slot 0x153, loading that address word at 1 place, first at 0x0c025c08. */

/* Functions that load the slot 0x153 address word:
 * `arm_bind_2d_clipmap_texture` (0x0c025c08). */

/* `TFT_SBIAS_EN` (kpm row 0x254). Established: names word 68 of the geometry
 * board register shadow, which mirrors raster register 0x1850 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texel scale-and-bias enables per component. Established: no arm1.u code
 * loads its slot 0x154 address word; the ARM reaches it only in its loops
 * over all 89 words (start-up, context load and one diagnostic case). */

/* `TFT_SCALE` (kpm row 0x255). Established: names word 69 of the geometry
 * board register shadow, which mirrors raster register 0x1851 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * per-component texel scale. Established: no arm1.u code loads its slot 0x155
 * address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `TFT_BIAS` (kpm row 0x256). Established: names word 70 of the geometry
 * board register shadow, which mirrors raster register 0x1852 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * per-component texel bias. Established: no arm1.u code loads its slot 0x156
 * address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `TFT_TLUT` (kpm row 0x257). Established: names word 71 of the geometry
 * board register shadow, which mirrors raster register 0x1853 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture colour lookup table: address, component count and enable.
 * Established: arm1.u code writes it through slot 0x157, loading that address
 * word at 3 places, first at 0x0c03e260. */

/* Functions that load the slot 0x157 address word: `arm_colortable`
 * (0x0c03e260), `PixValidateTexColorTable` (0x0c03e980), `d_texcoltab`
 * (0x0c03f314). */

/* `TM_DRAW_SHA_AMBIENT` (kpm row 0x258). Established: names word 72 of the
 * geometry board register shadow, which mirrors raster register 0x101e
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: shadow-texture ambient value. Established: arm1.u code writes
 * it through slot 0x158, loading that address word at 1 place, first at
 * 0x0c026260. */

/* Functions that load the slot 0x158 address word: `arm_shadow_texture`
 * (0x0c026260). */

/* `TM_DRAW_REDUNDANCY` (kpm row 0x259). Established: names word 73 of the
 * geometry board register shadow, which mirrors raster register 0x101f
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: texture-memory redundancy setting. Established: arm1.u code
 * writes it through slot 0x159, loading that address word at 2 places, first
 * at 0x0c026234. */

/* Functions that load the slot 0x159 address word: `arm_shadow_texture`
 * (0x0c026234), `CommonPixEnd` (0x0c026710). */

/* `TG_MISC` (kpm row 0x25a). Established: names word 74 of the geometry board
 * register shadow, which mirrors raster register 0x0c02 (arm1.u table at
 * 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: texture
 * generator priority and compression. Established: arm1.u code writes it
 * through slot 0x15a, loading that address word at 1 place, first at
 * 0x0c026248. */

/* Functions that load the slot 0x15a address word: `arm_shadow_texture`
 * (0x0c026248). */

/* `TFP_AFUNC` (kpm row 0x25b). Established: names word 75 of the geometry
 * board register shadow, which mirrors raster register 0x1407 (arm1.u table
 * at 0x04067c0c, start-up value 0x7000). Inferred from its kpm field names:
 * alpha test: reference value, comparison and enable. Established: arm1.u
 * code writes it through slot 0x15b, loading that address word at 1 place,
 * first at 0x0c03b5c8. */

/* Functions that load the slot 0x15b address word: `masked_clear`
 * (0x0c03b5c8). */

/* `TFP_TEX` (kpm row 0x25c). Established: names word 76 of the geometry board
 * register shadow, which mirrors raster register 0x1500 (arm1.u table at
 * 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: texture
 * enable in the texture filter. Established: no arm1.u code loads its slot
 * 0x15c address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `TFP_TEV` (kpm row 0x25d). Established: names word 77 of the geometry board
 * register shadow, which mirrors raster register 0x1401 (arm1.u table at
 * 0x04067c0c, start-up value 0x22). Inferred from its kpm field names:
 * texture environment: colour and alpha combine functions. Established: no
 * arm1.u code loads its slot 0x15d address word; the ARM reaches it only in
 * its loops over all 89 words (start-up, context load and one diagnostic
 * case). */

/* `TFP_TEV_CC` (kpm row 0x25e). Established: names word 78 of the geometry
 * board register shadow, which mirrors raster register 0x1402 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture environment constant colour, red and green. Established: no arm1.u
 * code loads its slot 0x15e address word; the ARM reaches it only in its
 * loops over all 89 words (start-up, context load and one diagnostic case). */

/* `TFP_TEV_CC1` (kpm row 0x25f). Established: names word 79 of the geometry
 * board register shadow, which mirrors raster register 0x1413 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture environment constant colour, blue and alpha. Established: no arm1.u
 * code loads its slot 0x15f address word; the ARM reaches it only in its
 * loops over all 89 words (start-up, context load and one diagnostic case). */

/* `TFP_AC` (kpm row 0x260). Established: names word 80 of the geometry board
 * register shadow, which mirrors raster register 0x140e (arm1.u table at
 * 0x04067c0c, start-up value 0x8000). Inferred from its kpm field names:
 * texture filter base and template controls (DGBASE, DGTPL fields).
 * Established: arm1.u code writes it through slot 0x160, loading that address
 * word at 2 places, first at 0x0c0038a0. */

/* Functions that load the slot 0x160 address word: `init_tf` (0x0c0038a0),
 * `init_simulator_hacks` (0x0c003f4c). */

/* `TFP_FADE_MASK_LUT` (kpm row 0x261). Established: names word 81 of the
 * geometry board register shadow, which mirrors raster register 0x140b
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: alpha-to-mask fade lookup entries. Established: arm1.u code
 * writes it through slot 0x161, loading that address word at 3 places, first
 * at 0x0c03c3b8. */

/* Functions that load the slot 0x161 address word: `arm_samplemask`
 * (0x0c03c3b8), `init_multisample` (0x0c03c424), `multisample_pop`
 * (0x0c03c6b8). */

/* `TFP_FOG` (kpm row 0x262). Established: names word 82 of the geometry board
 * register shadow, which mirrors raster register 0x1403 (arm1.u table at
 * 0x04067c0c, start-up value 0x80000). Inferred from its kpm field names: fog
 * mode: colour and fog modes, table address, offset and enable bits.
 * Established: arm1.u code writes it through slot 0x162, loading that address
 * word at 2 places, first at 0x0c0134a8. */

/* Functions that load the slot 0x162 address word: `arm_buffer_config`
 * (0x0c0134a8), `masked_clear` (0x0c03b5f0). */

/* `TFP_FOG_CC` (kpm row 0x263). Established: names word 83 of the geometry
 * board register shadow, which mirrors raster register 0x1404 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: fog
 * colour, red and green. Established: no arm1.u code loads its slot 0x163
 * address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `TFP_FOG_CC1` (kpm row 0x264). Established: names word 84 of the geometry
 * board register shadow, which mirrors raster register 0x1414 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names: fog
 * colour, blue. Established: no arm1.u code loads its slot 0x164 address
 * word; the ARM reaches it only in its loops over all 89 words (start-up,
 * context load and one diagnostic case). */

/* `TFP_FOG_OFFSET` (kpm row 0x265). Established: names word 85 of the
 * geometry board register shadow, which mirrors raster register 0x1406
 * (arm1.u table at 0x04067c0c, start-up value 0x0). Inferred from its kpm
 * field names: fog depth offset. Established: no arm1.u code loads its slot
 * 0x165 address word; the ARM reaches it only in its loops over all 89 words
 * (start-up, context load and one diagnostic case). */

/* `TFP_PIX_FMT` (kpm row 0x266). Established: names word 86 of the geometry
 * board register shadow, which mirrors raster register 0x1410 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture filter output pixel format. Established: arm1.u code writes it
 * through slot 0x166, loading that address word at 2 places, first at
 * 0x0c003888. */

/* Functions that load the slot 0x166 address word: `init_tf` (0x0c003888),
 * `arm_buffer_config` (0x0c013590). */

/* `TFP_COLOR_FMT` (kpm row 0x267). Established: names word 87 of the geometry
 * board register shadow, which mirrors raster register 0x140f (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * texture filter colour format. Established: arm1.u code writes it through
 * slot 0x167, loading that address word at 3 places, first at 0x0c0135a8. */

/* Functions that load the slot 0x167 address word: `arm_buffer_config`
 * (0x0c0135a8), `PixEndRGBStream` (0x0c0269fc), `SetupGE_StencilStream`
 * (0x0c02d484). */

/* `TFP_AMASK` (kpm row 0x268). Established: names word 88 of the geometry
 * board register shadow, which mirrors raster register 0x1408 (arm1.u table
 * at 0x04067c0c, start-up value 0x0). Inferred from its kpm field names:
 * alpha mask controls: alpha-to-mask, fade mask and alpha-to-one enables.
 * Established: arm1.u code writes it through slot 0x168, loading that address
 * word at 21 places, first at 0x0c003cf0. */

/* Functions that load the slot 0x168 address word: `init_imp` (0x0c003cf0),
 * `arm_colormask` (0x0c012e08), `arm_blendcolor` (0x0c012f88),
 * `arm_buffer_config` (0x0c013640), `resolve_banks` (0x0c013a4c),
 * `color_init` (0x0c014150), `color_pop` (0x0c01462c), `stencil_pop`
 * (0x0c014c88), `e_multisample` (0x0c0156e8), `d_multisample` (0x0c015758),
 * `SetupReadbackTF` (0x0c033e98), `arm_clear` (0x0c03bd04),
 * `masked_word_clear` (0x0c03c138), `init_multisample` (0x0c03c43c),
 * `e_alpha2mask` (0x0c03c57c), `d_alpha2mask` (0x0c03c5a4), `e_alpha2one`
 * (0x0c03c5cc), `d_alpha2one` (0x0c03c5f4), `e_samplemask` (0x0c03c61c),
 * `d_samplemask` (0x0c03c644), `x_initregs` (0x0c03d274). */

/* ge_token_comments: shadow rows end */

/*
 * Leads not yet read (UNKNOWN until they are):
 *  - Microcode: ucode/ge.md describes the program files (one 62521-word
 *    program of 72-bit instructions in three encodings) and geif.u, a
 *    1024-entry table whose odd entries are the handlers for 452 geometry-
 *    engine command slots. The instruction fields are mapped in
 *    ucode/ge_isa.md.
 *  - Token routing, ESTABLISHED (ucode/arm1.md, ucode/icu_map.tsv): the ARM
 *    firmware builds a 512-entry map indexed by token. 306 tokens run an
 *    ARM handler, which sends a geif.u slot's handler address to the
 *    engine (CULLFACE slot 3, FRONTFACE 15, MATRIXMODE 51); 206 are routed
 *    by hardware with a 9-bit command number in bits 15-23 of the entry
 *    and, INFERRED, a payload word count in bits 6-10 and a component
 *    type in bits 29-30 (2 single, 3 double). For 54 of them, ESTABLISHED,
 *    the handler is entry (number & 63) of a 64-entry handler table the ARM
 *    loads at start-up (ucode/hw_route.tsv, ucode/ged_bound_table.tsv); for
 *    the other 152 (vertex, primitive, begin/end) it is UNKNOWN. 47 name
 *    matches are in ucode/ge_name_matches.tsv.
 */

/*
 * Geometry-engine (GE11) diagnostic registers.
 *
 * ESTABLISHED: kpm's table of 24-byte records {kind, address, name, value,
 * mask, shift} from vaddr 0x100bb2a8 (64 records, 15 registers at
 * 0x40000-0x40038), extracted to diags/kpm/ge_registers.tsv. The defines
 * below give each register's address with kpm's description, and each
 * field's mask. The record's value column restates the field's position,
 * not a reset or test value: of the 49 field records it equals the mask in
 * 29 (one-bit fields) and the shift in 19 (wider fields, and the one-bit
 * CMTAG_PULSE_EN); ENABMSK_B alone has 0 against shift 4. Register records
 * carry 0. ESTABLISHED by comparing the columns. Whether kpm reads the
 * column: unknown: no shipped software or published source depends on it.
 *
 * UNKNOWN: which bus the 0x40000 addresses are on (the geometry engine's
 * own register space as reached by a diagnostic, by INFERENCE from kpm
 * being the pipe monitor) and how the host reaches them.
 *
 * OFIFO0-2 A/B status registers carry 7-bit write and read pointers, so
 * each geometry-engine output FIFO is INFERRED to hold 128 entries.
 */

/*
 * Execution Control Register (0x40000), established, 6.5.30m.
 * `init_ge` (0x0c0032e4, arm1.u) writes 1 (GO) to it at 0x0c003594, after the microcode load.
 * Bits 0-5 are the fields GO, SSTEP, BPSET, BPSTALL, UCLAT and INVAL (kpm table).
 * Inferred from the names only: GO lets the microcode run, SSTEP makes it
 * single-step, and BPSET with BPSTALL arm the stall at the breakpoint address.
 * kpm 6.5.30m reads it: `ge11ReadDiagRegisters` (0x1001e748) calls
 * `ge_register_read` for the 16 words from 0x40000 and takes them by DMA.
 */
#define KONA_GE11_REG_EXECUTION_CONTROL              0x40000  /* "Execution Control Register" */
#define KONA_GE11_EXEC_GO                       0x00000001  /* bits from 0 */
#define KONA_GE11_EXEC_SSTEP                    0x00000002  /* bits from 1 */
#define KONA_GE11_EXEC_BPSET                    0x00000004  /* bits from 2 */
#define KONA_GE11_EXEC_BPSTALL                  0x00000008  /* bits from 3 */
#define KONA_GE11_EXEC_UCLAT                    0x00000010  /* bits from 4 */
#define KONA_GE11_EXEC_INVAL                    0x00000020  /* bits from 5 */

/*
 * Breakpoint Address Register (0x40004), established as a kpm table entry
 * (kpm 6.5.30m, vaddr 0x100bb2a8). Inferred from its name and from the
 * BPSET and BPSTALL bits of the control register: it holds the microcode
 * address at which the engine stalls. kpm 6.5.30m reads it with the other 15 words in
 * `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_BREAKPOINT_ADDRESS             0x40004  /* "Breakpoint Address Register" */

/*
 * RAMscan Control Register, "trashed" (0x40008), established as a kpm table entry.
 * The kpm name says the value is destroyed by a RAM scan, so a dump taken after
 * `ge11RamScan` (kpm 6.5.30m) does not hold the earlier state. Inferred: the
 * register selects the memory a scan reads. kpm 6.5.30m reads it in
 * `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_RAMSCAN_CONTROL                0x40008  /* "RAMscan Control Register (trashed)" */

/*
 * Write/Sync FIFO Register (0x4000c), established as a kpm table entry with two
 * fields: DISABLE (bit 0) and WM (bits 1-5). Inferred from the names: DISABLE
 * turns the write-sync FIFO off and WM is its water mark, a five-bit level.
 * kpm 6.5.30m reads it in `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_WRITE_SYNC_FIFO                0x4000c  /* "Write/Sync FIFO Register" */
#define KONA_GE11_SYNCFIFO_DISABLE              0x00000001  /* bits from 0 */
#define KONA_GE11_SYNCFIFO_WM                   0x0000003e  /* bits from 1 */

/*
 * Diag Sel Register (0x40010), established, 6.5.30m: `init_ge` (0x0c0032e4, arm1.u)
 * writes 0x100, which is the OUTPUT field (bit 8), at 0x0c003574 before it sets GO.
 * Inferred from the name: the register selects which internal signals the
 * engine presents on its diagnostic output, and OUTPUT enables that output.
 * kpm 6.5.30m reads it in `ge11ReadDiagRegisters` (0x1001e748).
 */
#define KONA_GE11_REG_DIAG_SEL                       0x40010  /* "Diag Sel Register" */
#define KONA_GE11_DIAGSEL_OUTPUT                0x00000100  /* bits from 8 */

/*
 * Enable Mask Register (0x40014), established as a kpm table entry with two
 * three-bit fields, ENABMSK_A (bits 0-2) and ENABMSK_B (bits 4-6). Inferred from
 * the name: each field masks one group of engine units on or off. kpm 6.5.30m reads it
 * in `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_ENABLE_MASK                    0x40014  /* "Enable Mask Register" */
#define KONA_GE11_ENABMSK_A                     0x00000007  /* bits from 0 */
#define KONA_GE11_ENABMSK_B                     0x00000070  /* bits from 4 */

/*
 * CM/Ofifo TAG Register (0x40018), established, 6.5.30m: `init_ge` (0x0c0032e4,
 * arm1.u) writes 0x4930 when the Gray-decoded board id is 8 or more and 0x9b60 below that (0x0c00340c-0x0c003444). The fields are CFG
 * (bit 0), WTRIM_WD, WTRIM_DLY, CTRIM_WD, CTRIM_DLY (bits 4-15) and PULSE_EN
 * (bit 16). Inferred from the names: the trim fields set the width and delay of
 * the write and clock strobes of the command-memory and output-FIFO tag RAM.
 * kpm 6.5.30m reads it in `ge11ReadDiagRegisters` (0x1001e748).
 */
#define KONA_GE11_REG_CM_OFIFO_TAG                   0x40018  /* "CM/Ofifo TAG Register" */
#define KONA_GE11_CMTAG_CFG                     0x00000001  /* bits from 0 */
#define KONA_GE11_CMTAG_WTRIM_WD                0x00000070  /* bits from 4 */
#define KONA_GE11_CMTAG_WTRIM_DLY               0x00000380  /* bits from 7 */
#define KONA_GE11_CMTAG_CTRIM_WD                0x00001c00  /* bits from 10 */
#define KONA_GE11_CMTAG_CTRIM_DLY               0x0000e000  /* bits from 13 */
#define KONA_GE11_CMTAG_PULSE_EN                0x00010000  /* bits from 16 */

/*
 * Ucode Error register (0x4001c), established as a kpm table entry with 20
 * one-bit fields (bits 0-19), each named for a microcode fault: for example
 * FPU_OP, INVAL_ADR, MSK_OVFL and AALU_WR. Inferred: the engine sets a bit when
 * the microcode performs the named illegal action, and kpm shows the set bits.
 * kpm 6.5.30m reads it in `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_UCODE_ERROR_REGISTER           0x4001c  /* "Ucode Error register" */
#define KONA_GE11_UERROR_ECDATA_CNFL            0x00000001  /* bits from 0 */
#define KONA_GE11_UERROR_WSC_CNFL               0x00000002  /* bits from 1 */
#define KONA_GE11_UERROR_FPU_OP                 0x00000004  /* bits from 2 */
#define KONA_GE11_UERROR_CRD_CNFL               0x00000008  /* bits from 3 */
#define KONA_GE11_UERROR_CMD_TAG                0x00000010  /* bits from 4 */
#define KONA_GE11_UERROR_FPU_OPR                0x00000020  /* bits from 5 */
#define KONA_GE11_UERROR_RD_OFIFO               0x00000040  /* bits from 6 */
#define KONA_GE11_UERROR_ELUT_ADR               0x00000080  /* bits from 7 */
#define KONA_GE11_UERROR_ERAM_LUT               0x00000100  /* bits from 8 */
#define KONA_GE11_UERROR_ERAM_HIST              0x00000200  /* bits from 9 */
#define KONA_GE11_UERROR_ERAM_RD                0x00000400  /* bits from 10 */
#define KONA_GE11_UERROR_ERAM_WR                0x00000800  /* bits from 11 */
#define KONA_GE11_UERROR_ERAM_SWITCH            0x00001000  /* bits from 12 */
#define KONA_GE11_UERROR_INVAL_ADR              0x00002000  /* bits from 13 */
#define KONA_GE11_UERROR_WR_SPREG               0x00004000  /* bits from 14 */
#define KONA_GE11_UERROR_RD_SPREG               0x00008000  /* bits from 15 */
#define KONA_GE11_UERROR_MSK_OVFL               0x00010000  /* bits from 16 */
#define KONA_GE11_UERROR_PCC_CNFL               0x00020000  /* bits from 17 */
#define KONA_GE11_UERROR_CMD_UC_TAG             0x00040000  /* bits from 18 */
#define KONA_GE11_UERROR_AALU_WR                0x00080000  /* bits from 19 */

/*
 * OFIFO0 A Status Register (0x40020), established as a kpm table entry: write
 * pointer in bits 0-6 and read pointer in bits 7-13 of output FIFO 0, half A.
 * Inferred: the seven-bit pointers show the FIFO holds 128 entries and the
 * difference is its fill level. kpm 6.5.30m reads it in `ge11ReadDiagRegisters`
 * (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_OFIFO0_A_STATUS                0x40020  /* "OFIFO0 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO0 B Status Register (0x40024), established as a kpm table entry: the same
 * write and read pointer fields as the half A register, for half B of output
 * FIFO 0. Inferred: it tells how full that half is. kpm 6.5.30m reads it in
 * `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_OFIFO0_B_STATUS                0x40024  /* "OFIFO0 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO1 A Status Register (0x40028), established as a kpm table entry: write
 * pointer in bits 0-6 and read pointer in bits 7-13 of output FIFO 1, half A.
 * Inferred: the difference of the pointers is the fill level. kpm 6.5.30m reads it in
 * `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_OFIFO1_A_STATUS                0x40028  /* "OFIFO1 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO1 B Status Register (0x4002c), established as a kpm table entry: the same
 * pointer fields for half B of output FIFO 1. Inferred: it tells how full that
 * half is. kpm 6.5.30m reads it in `ge11ReadDiagRegisters` (0x1001e748); no shipped
 * program writes it.
 */
#define KONA_GE11_REG_OFIFO1_B_STATUS                0x4002c  /* "OFIFO1 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO2 A Status Register (0x40030), established as a kpm table entry: write
 * pointer in bits 0-6 and read pointer in bits 7-13 of output FIFO 2, half A.
 * Inferred: the difference of the pointers is the fill level. kpm 6.5.30m reads it in
 * `ge11ReadDiagRegisters` (0x1001e748); no shipped program writes it.
 */
#define KONA_GE11_REG_OFIFO2_A_STATUS                0x40030  /* "OFIFO2 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO2 B Status Register (0x40034), established as a kpm table entry: the same
 * pointer fields for half B of output FIFO 2. Inferred: it tells how full that
 * half is. kpm 6.5.30m reads it in `ge11ReadDiagRegisters` (0x1001e748); no shipped
 * program writes it.
 */
#define KONA_GE11_REG_OFIFO2_B_STATUS                0x40034  /* "OFIFO2 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO Control Register, "trashed" (0x40038), established, 6.5.30m: `init_ge`
 * (0x0c0032e4, arm1.u) writes 0x8e0 at 0x0c0033f4, or 0xce0 the first time a configuration flag allows it. The kpm name says
 * a RAM scan destroys the value. Inferred: it configures the output FIFOs
 * (thresholds and enables); no field is named. kpm 6.5.30m reads it in
 * `ge11ReadDiagRegisters` (0x1001e748).
 */
#define KONA_GE11_REG_OFIFO_CONTROL                  0x40038  /* "OFIFO Control Register (trashed)" */

/*
 * Geometry-engine special registers, ESTABLISHED: kpm's {number, name}
 * list at vaddr 0x100bb1e0 (diags/kpm/ge_special_registers.tsv). INFERRED:
 * these are microcode-visible special registers (identity, the input word
 * FIFO pointers, FPU and lookup modes, flags, cull and clip state, sort
 * state), numbered as the microcode addresses them.
 */
#define KONA_GE11_SR_CHIP_ID              0x04
#define KONA_GE11_SR_CHIP_REV             0x06
#define KONA_GE11_SR_CORE_ID              0x40
#define KONA_GE11_SR_WRAM_WRPTR           0x00
#define KONA_GE11_SR_WRAM_FIFO_HI         0x01
#define KONA_GE11_SR_WRAM_FIFO_LO         0x02
#define KONA_GE11_SR_VERTEX_COUNTT        0x03
#define KONA_GE11_SR_UST_ACCESS           0x05
#define KONA_GE11_SR_DIAG_PIN             0x07
#define KONA_GE11_SR_COMP_FORMAT          0x08
#define KONA_GE11_SR_FPU_MODE             0x09
#define KONA_GE11_SR_LUT_MODE             0x0a
#define KONA_GE11_SR_FPU_COND_A           0x41
#define KONA_GE11_SR_FPU_COND_B           0x4c
#define KONA_GE11_SR_FLAG_GLOB_LO         0x0b
#define KONA_GE11_SR_FLAG_GLOB_HI         0x0f
#define KONA_GE11_SR_FLAG_THRD_A          0x42
#define KONA_GE11_SR_FLAG_THRD_B          0x43
#define KONA_GE11_SR_CULL                 0x0c
#define KONA_GE11_SR_CULL_ACCUM           0x1c
#define KONA_GE11_SR_CLIP_HOMO            0x0d
#define KONA_GE11_SR_CLIP_USER            0x0e
#define KONA_GE11_SR_SORT_THRD_A          0x44
#define KONA_GE11_SR_SORT_THRD_B          0x45


/*
 * Routed token-map entries are distributor control words (ucode/ged.md).
 *
 * ESTABLISHED (irsaudit Compact_HIP_*_Control / Compact_GED_*_Control,
 * 6.5.30m; checked against all 206 routed entries of arm1.u's map):
 * bit 0 = routed, bit 31 = geometry form; otherwise bit 5 = register/pixel
 * form, clear = pass form. Geometry: entry bits 9-30 = control bits 1-22,
 * count in bits 6-8. Pass and register/pixel: entry bits 11-30 = control
 * bits 3-22, count in bits 6-10. Register/pixel control: bit 0 = 1,
 * bits 13-22 = distributor register (entry bits 21-30).
 *
 * Geometry control fields, positions ESTABLISHED, meanings INFERRED from
 * which tokens carry them (shown as token-map entry bits):
 */
#define KONA_ENTRY_GEOM                 0x80000000u
#define KONA_ENTRY_REGPIX               0x00000020u
#define KONA_GEOM_OFFSET(e)             (((e) >> 9) & 0x1f)   /* word in vertex record */
#define KONA_GEOM_VDATA(e)              (((e) >> 14) & 1)     /* payload is vertex data */
#define KONA_GEOM_K(e)                  (((e) >> 15) & 0x3f)  /* entry number */
#define KONA_GEOM_VERTEX(e)             (((e) >> 21) & 1)     /* completes a vertex */
#define KONA_GEOM_FLOAT(e)              (((e) >> 22) & 1)
#define KONA_GEOM_UNSIGNED(e)           (((e) >> 23) & 1)
#define KONA_GEOM_NORMALIZE(e)          (((e) >> 24) & 1)
#define KONA_GEOM_MISSING(e)            (((e) >> 25) & 3)     /* 4 - components */
#define KONA_GEOM_LASTBYTES(e)          (((e) >> 27) & 3)     /* valid bytes - 1 */
#define KONA_GEOM_SIZE(e)               (((e) >> 29) & 3)     /* 0 B, 1 S, 2 32-bit, 3 D */
#define KONA_REGPIX_REG(e)              (((e) >> 21) & 0x3ff)

/*
 * Geometry-engine operation ids (ucode/ge_ops.md, ucode/ge_inst_results.tsv).
 *
 * ESTABLISHED: the IR diagnostic's engine test (ge_inst.s in
 * usr/diags/IR/ucode/ge.u, 6.5.30m) produces 172 words that irsaudit
 * compares with its array expected_token; each code below is fixed by the
 * expected result for known constant operands. Unit 1 writes register Q
 * and takes its code in M[6:0] (M = 0x680 | code); unit 2 writes P and
 * takes its code in M[10:4] (M = code << 4 | 0x7f). INFERRED (counted
 * over every ge.u word, ucode/ge_ops.md "How one M names two operations"):
 * M[10:7] = k selects unit 2's code k << 3 | 7 (k = 0xd idle) and M[6:0]
 * unit 1's (0x7f idle), so one word drives both units; form 11 nearly
 * always does (M = 0x460: multiply and add). Unit-2 code 0x0f occurs only
 * in production and is UNKNOWN.
 * INFERRED readings are marked; ge_ops.md, "Settling the ties", gives
 * the functional argument for each and the routes tried.
 */
#define KONA_GE_U1_DADD                 0x20  /* double add, two words */
#define KONA_GE_U1_DSUB                 0x22  /* double subtract */
#define KONA_GE_U1_IADD                 0x40
#define KONA_GE_U1_ISUB                 0x42  /* signed, 0xaaaaaaaa - 0x55555555 = 0x80000000 */
#define KONA_GE_U1_MOVA                 0x4a  /* first operand */
#define KONA_GE_U1_MOVB                 0x4b  /* second operand */
#define KONA_GE_U1_AND                  0x50  /* AND or NOR in the test; AND INFERRED by intent */
#define KONA_GE_U1_OR                   0x54  /* OR INFERRED: folds XOR equality tests */
#define KONA_GE_U1_XOR                  0x56  /* XOR INFERRED: zero for equal operands */
#define KONA_GE_U1_NOT                  0x58  /* one operand */
#define KONA_GE_U1_FADD                 0x60
#define KONA_GE_U1_FSUB                 0x62
#define KONA_GE_U1_FMIN                 0x66  /* min INFERRED: mmo_Minmax accumulator */
#define KONA_GE_U1_FMAX                 0x68  /* max INFERRED: mmo_Minmax accumulator */
#define KONA_GE_U1_ITOF                 0x73  /* integer to single */
#define KONA_GE_U1_CLAMP0               0x7c  /* negative to 0, positive unchanged */
#define KONA_GE_U2_DMUL                 0x07  /* double multiply, two words */
#define KONA_GE_U2_MOVA                 0x27  /* also the output move */
#define KONA_GE_U2_MOVB                 0x2f  /* move B or min: unknown, no software separates */
#define KONA_GE_U2_DMOVA                0x37
#define KONA_GE_U2_DMOVB                0x3f  /* move B pair or min: unknown, unused in production */
#define KONA_GE_U2_FMUL                 0x47  /* bit-exact IEEE single product */
#define KONA_GE_U2_RCP_STEP             0x4f  /* 2 - a * b */
#define KONA_GE_U2_RSQ_STEP             0x57  /* (3 - a * b) / 2 */
#define KONA_GE_SEED_RCP_R110           0x6bf /* r110 code: 1/x, 7 fraction bits */
#define KONA_GE_SEED_RSQ_R110           0x2bf /* r110 code: 1/sqrt(x), 7 fraction bits */

/*
 * Flag register (source 0x1b) and branch conditions, ESTABLISHED values
 * 0xcc, 0xac, 0xaa observed; layout INFERRED: low nibble set by a unit-1
 * word (r220), high nibble by a unit-2 word (r221), each bit 3 = result
 * <= 0, bit 2 = zero, bit 1 = negative, bit 0 = a fourth condition.
 * A transfer's cc 0-7 tests the low nibble, 8-15 the high nibble;
 * cc bits 2-1 choose the condition (0..3 = bit 3..0), cc bit 0 inverts.
 * Production branches test only the low nibble, after unit-1 integer and
 * float results alike (161 of 161 transfers with a nearby flag setter).
 * The fourth condition is UNKNOWN: no shipped software or published
 * source depends on it (no production use of cc 6, 7, 0xe, 0xf; routes in
 * ucode/ge_ops.md); signed overflow fits the two test cases.
 * cc 0x14/0x15: pixel-path loop continue/exit; 0x10: abort or error test;
 * 0x11: end-of-command wait (condition group 31) or loop counter (group 7).
 */
#define KONA_GE_FLAG_LE0                0x8
#define KONA_GE_FLAG_ZERO               0x4
#define KONA_GE_FLAG_NEG                0x2
#define KONA_GE_FLAG_FOURTH             0x1

#endif /* KONA_GE_H */
