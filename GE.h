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
 * ESTABLISHED, per token (comments written by scripts/ge_token_comments.py
 * from the firmware's token map, ucode/icu_map.tsv, and the tables beside
 * it): "ARM f (group)" runs arm1.u function f, grouped as in
 * ucode/arm1_firmware.md, and names the engine handlers its code loads;
 * "refused" runs a stub that ends in the firmware's error handler.
 * "routed" gives the map entry's command number (bits 15-23), payload word
 * count (bits 6-10, 0 read as 32; the HP_NORMAL3* entries are the known
 * exception, ucode/arm1.md) and type (bits 29-30), then the engine handler
 * the handler table binds to that number, or the distributor-program entry
 * and the primitive handlers in its span (ucode/ged_route.tsv). "libGLcore
 * f stores n words" is the fixed payload from libglcore/payloads.tsv.
 * Where a handler name or entry is given, which engine code runs is
 * established; what it computes is in ucode/ge_handlers.md by module.
 */
enum kona_hp_token {
    KONA_HP_DATA                         = 0x000,  /* ARM arm_data: refused, ends in the error handler */
    KONA_HP_BUFFER_CONFIG                = 0x001,  /* ARM arm_buffer_config (buffers and windows), sends mgesi_TbusRegWrite mgeb_CI_Mode mgeb_RGBA_Mode */
    KONA_HP_PACK                         = 0x002,  /* ARM arm_pack (raster and pipeline state) */
    KONA_HP_BEGIN_RECT                   = 0x003,  /* routed: command 394, 1 word, single, distributor entry 0x363 at tri.s:45 (mgesi_Triangles) */
    KONA_HP_READBUFFER_CONFIG            = 0x004,  /* ARM arm_readbuffer_config (buffers and windows) */
    KONA_HP_BITMAP_DLIST                 = 0x005,  /* ARM arm_bitmap_dlist (pixels, bitmaps and filters), sends mgeb_TransparentBitmapSetup mgesi_FeedbackPixel mgesi_PixRasterPosSetup +2 */
    KONA_HP_BITMAP                       = 0x006,  /* ARM arm_bitmap (pixels, bitmaps and filters), sends mgeb_BitmapApplyMove */
    KONA_HP_LIGHTF                       = 0x007,  /* ARM arm_lightf (lighting and material); libGLcore __glkonim_Lightfv stores 6 words */
    KONA_HP_LIGHTI                       = 0x008,  /* ARM arm_lighti (lighting and material); libGLcore __glkonim_Lightiv stores 6 words */
    KONA_HP_LIGHTMODELF                  = 0x009,  /* ARM arm_lightmodelf (lighting and material); libGLcore __glkonim_LightModelfv stores 5 words */
    KONA_HP_LIGHTMODELI                  = 0x00a,  /* ARM arm_lightmodeli (lighting and material); libGLcore __glkonim_LightModeliv stores 5 words */
    KONA_HP_POLYGONSTIPPLE               = 0x00b,  /* ARM arm_polygonstipple (pixels, bitmaps and filters) */
    KONA_HP_SCISSOR                      = 0x00c,  /* ARM arm_scissor (matrices, viewport and clipping) */
    KONA_HP_TEXPARAMETERF                = 0x00d,  /* ARM arm_texparameterf: refused, ends in the error handler */
    KONA_HP_TEXPARAMETERI                = 0x00e,  /* ARM arm_texparameteri: refused, ends in the error handler */
    KONA_HP_TEXIMAGE1D                   = 0x00f,  /* ARM arm_teximage1d: refused, ends in the error handler */
    KONA_HP_TEXIMAGE2D                   = 0x010,  /* ARM arm_teximage2d: refused, ends in the error handler */
    KONA_HP_TEXENVF                      = 0x011,  /* ARM arm_texenvf (texture), sends mgebi_TexEnv */
    KONA_HP_TEXENVI                      = 0x012,  /* ARM arm_texenvi (texture), sends mgebi_TexEnv */
    KONA_HP_TEXGEND                      = 0x013,  /* ARM arm_texgend (0x0c024d50) prints a not-implemented message and returns without reading the payload; libGLcore sends TEXGENF instead */
    KONA_HP_TEXGENF                      = 0x014,  /* ARM arm_texgenf (texture), sends mgeb_TexGen; libGLcore __glkonim_TexGend stores 9 words */
    KONA_HP_TEXGENI                      = 0x015,  /* ARM arm_texgeni (0x0c024d94) prints the same not-implemented message as TEXGEND and reads no payload */
    KONA_HP_TEXBIND                      = 0x016,  /* ARM arm_texbind (0x0c036ae4) collects the bind parameters (GetTexManageBindParam) and writes the six texture-bind raster registers (SetupRM_TextureBind); no libGLcore sender found */
    KONA_HP_FEEDBACK_TYPE                = 0x017,  /* ARM arm_feedback_type (selection, feedback and attributes) */
    KONA_HP_SELECTBUFFER                 = 0x018,  /* ARM arm_selectbuffer: refused, ends in the error handler */
    KONA_HP_RENDERMODE                   = 0x019,  /* ARM arm_rendermode (selection, feedback and attributes), sends mgeb_EndFeedbackMode mgeb_BgnSelectMode mgeb_EndSelectMode +1 */
    KONA_HP_CLEAR                        = 0x01a,  /* ARM arm_clear (clear and accumulate), sends mgesi_TbusRegWrite mgesi_ClearIndex mgesi_ClearLA16 +1; libGLcore __glkonim_Clear stores 1 word */
    KONA_HP_CLEARACCUM                   = 0x01b,  /* ARM arm_clearaccum (clear and accumulate) */
    KONA_HP_CLEARINDEX                   = 0x01c,  /* ARM arm_clearindex (clear and accumulate); libGLcore __glkonim_ClearIndex stores 1 word */
    KONA_HP_CLEARCOLOR                   = 0x01d,  /* ARM arm_clearcolor (clear and accumulate) */
    KONA_HP_CLEARSTENCIL                 = 0x01e,  /* ARM arm_clearstencil (clear and accumulate); libGLcore __glkonim_ClearStencil stores 1 word */
    KONA_HP_CLEARDEPTH                   = 0x01f,  /* ARM arm_cleardepth (clear and accumulate), sends mgesi_ClearDepth32 */
    KONA_HP_STENCILMASK                  = 0x020,  /* ARM arm_stencilmask (raster and pipeline state); libGLcore __glkonim_StencilMask stores 1 word */
    KONA_HP_COLORMASK                    = 0x021,  /* ARM arm_colormask (raster and pipeline state), sends mgesi_TbusRegWrite; libGLcore __glkonim_ColorMask stores 4 words */
    KONA_HP_DEPTHMASK                    = 0x022,  /* ARM arm_depthmask (raster and pipeline state); libGLcore __glkonim_DepthMask stores 1 word */
    KONA_HP_INDEXMASK                    = 0x023,  /* ARM arm_indexmask (raster and pipeline state); libGLcore __glkonim_IndexMask stores 1 word */
    KONA_HP_ENABLE                       = 0x024,  /* ARM arm_enable (enable and disable) */
    KONA_HP_DISABLE                      = 0x025,  /* ARM arm_disable (enable and disable) */
    KONA_HP_EVALSTRIP1D                  = 0x026,  /* ARM arm_evalstrip1d (vertex arrays, evaluators and patches), sends mgesi_EvalStrip1D */
    KONA_HP_EVALSTRIP2D                  = 0x027,  /* ARM arm_evalstrip2d (vertex arrays, evaluators and patches), sends mgesi_EvalStrip2D */
    KONA_HP_MAPGRID1D                    = 0x028,  /* routed: command 153, 4 words, single, engine handler mgeb_EvalGrid1D */
    KONA_HP_MAPGRID2D                    = 0x029,  /* routed: command 154, 8 words, single, engine handler mgeb_EvalGrid2D */
    KONA_HP_MAPDATA1D                    = 0x02a,  /* ARM arm_mapdata1d (vertex arrays, evaluators and patches), sends mgeb_EvalMapData1D */
    KONA_HP_MAPDATA2D                    = 0x02b,  /* ARM arm_mapdata2d (vertex arrays, evaluators and patches), sends mgeb_EvalMapData2D */
    KONA_HP_MAPSPEC1D                    = 0x02c,  /* routed: command 155, 12 words, single, engine handler mgeb_EvalMapSpec1D */
    KONA_HP_MAPSPEC2D                    = 0x02d,  /* routed: command 156, 17 words, single, engine handler mgeb_EvalMapSpec2D */
    KONA_HP_LOGICOP                      = 0x02e,  /* ARM arm_logicop (raster and pipeline state) */
    KONA_HP_PIXELZOOM                    = 0x02f,  /* ARM arm_pixelzoom (pixels, bitmaps and filters) */
    KONA_HP_PIXELTRANSFERF               = 0x030,  /* ARM arm_pixeltransferf (pixels, bitmaps and filters) */
    KONA_HP_PIXELTRANSFERI               = 0x031,  /* ARM arm_pixeltransferi: refused, ends in the error handler */
    KONA_HP_PIXELSTOREF                  = 0x032,  /* ARM arm_pixelstoref: refused, ends in the error handler */
    KONA_HP_PIXELSTOREI                  = 0x033,  /* ARM arm_pixelstorei (pixels, bitmaps and filters) */
    KONA_HP_PIXELMAPFV                   = 0x034,  /* ARM arm_pixelmapfv (pixels, bitmaps and filters) */
    KONA_HP_PIXELMAPUIV                  = 0x035,  /* ARM arm_pixelmapuiv (pixels, bitmaps and filters) */
    KONA_HP_PIXELMAPUSV                  = 0x036,  /* ARM arm_pixelmapusv (pixels, bitmaps and filters) */
    KONA_HP_READBUFFER                   = 0x037,  /* ARM arm_readbuffer (buffers and windows); libGLcore __glkonim_ReadBuffer stores 1 word */
    KONA_HP_COPYPIXELS                   = 0x038,  /* ARM arm_copypixels (pixels, bitmaps and filters) */
    KONA_HP_READPIXELS                   = 0x039,  /* ARM arm_readpixels (pixels, bitmaps and filters), sends mgebi_Texture */
    KONA_HP_DRAWPIXELS                   = 0x03a,  /* ARM arm_drawpixels (pixels, bitmaps and filters) */
    KONA_HP_GETCURRENT                   = 0x03b,  /* ARM arm_getcurrent (queries), sends mgesi_StartRdata mgesi_FinishRdata */
    KONA_HP_GETCLIPPLANE                 = 0x03c,  /* ARM arm_getclipplane (queries), sends mgesi_StartRdata mgesi_Eram2ODMA mgesi_FinishRdata */
    KONA_HP_GETRASTER                    = 0x03d,  /* ARM arm_getraster (queries), sends mgesi_StartRdata mgesi_GetRaster mgesi_FinishRdata */
    KONA_HP_GETERROR                     = 0x03e,  /* ARM arm_geterror (queries), sends mgesi_StartRdata mgebi_ErrQuery mgesi_FinishRdata */
    KONA_HP_GETFLOATV                    = 0x03f,  /* ARM arm_getfloatv: refused, ends in the error handler */
    KONA_HP_GETINTEGERV                  = 0x040,  /* ARM arm_getintegerv: refused, ends in the error handler */
    KONA_HP_GETLIGHTFV                   = 0x041,  /* ARM arm_getlightfv (queries), sends mgesi_LiGetLight */
    KONA_HP_GETLIGHTIV                   = 0x042,  /* ARM arm_getlightiv: refused, ends in the error handler */
    KONA_HP_GETMAPDV                     = 0x043,  /* ARM arm_getmapdv: refused, ends in the error handler */
    KONA_HP_GETMAPFV                     = 0x044,  /* ARM arm_getmapfv: refused, ends in the error handler */
    KONA_HP_GETMAPIV                     = 0x045,  /* ARM arm_getmapiv: refused, ends in the error handler */
    KONA_HP_GETMATERIALFV                = 0x046,  /* ARM arm_getmaterialfv (queries), sends mgesi_LiGetMaterial */
    KONA_HP_GETMATERIALIV                = 0x047,  /* ARM arm_getmaterialiv: refused, ends in the error handler */
    KONA_HP_GETPIXELMAPFV                = 0x048,  /* ARM arm_getpixelmapfv (0x0c03f2a4) reads three words (the map, then two passed on), then answers the pixel-map query through do_getcolortable and the read-back path */
    KONA_HP_GETPIXELMAPUIV               = 0x049,  /* ARM arm_getpixelmapuiv: refused, ends in the error handler */
    KONA_HP_GETPIXELMAPUSV               = 0x04a,  /* ARM arm_getpixelmapusv: refused, ends in the error handler */
    KONA_HP_GETPOLYGONSTIPPLE            = 0x04b,  /* ARM arm_getpolygonstipple (queries), sends mgeb_PolygonStippleRotate mgesi_Eram2ODMA mgeb_LoadMatrix_Modelview +1 */
    KONA_HP_GETV                         = 0x04c,  /* ARM arm_getv (queries), sends mgesi_StartRdata mgesi_Cram2ODMA mgesi_Eram2ODMA +1 */
    KONA_HP_GETTEXENVFV                  = 0x04d,  /* ARM arm_gettexenvfv (queries), sends mgesi_Eram2ODMA */
    KONA_HP_GETTEXENVIV                  = 0x04e,  /* ARM arm_gettexenviv: refused, ends in the error handler */
    KONA_HP_GETTEXGENDV                  = 0x04f,  /* ARM arm_gettexgendv: refused, ends in the error handler */
    KONA_HP_GETTEXGENFV                  = 0x050,  /* ARM arm_gettexgenfv (queries), sends mgesi_StartRdata mgesi_Eram2ODMA mgesi_FinishRdata */
    KONA_HP_GETTEXGENIV                  = 0x051,  /* ARM arm_gettexgeniv: refused, ends in the error handler */
    KONA_HP_GETTEXIMAGE                  = 0x052,  /* ARM arm_getteximage (0x0c02c298) reads 18 pack-state and image words into the pixel shadow at r8 + 0x900, then reads the texture back to the host (getteximage); libGLcore __glkonReadTexels3D sends it */
    KONA_HP_GETTEXPARAMETERFV            = 0x053,  /* ARM arm_gettexparameterfv: refused, ends in the error handler */
    KONA_HP_GETTEXPARAMETERIV            = 0x054,  /* ARM arm_gettexparameteriv: refused, ends in the error handler */
    KONA_HP_GETTEXLEVELPARAMETERFV       = 0x055,  /* ARM arm_gettexlevelparameterfv: refused, ends in the error handler */
    KONA_HP_GETTEXLEVELPARAMETERIV       = 0x056,  /* ARM arm_gettexlevelparameteriv: refused, ends in the error handler */
    KONA_HP_BEGIN_POINTS                 = 0x057,  /* routed: command 388, 1 word, single, distributor entry 0x357 at tri.s:23 */
    KONA_HP_BEGIN_LINES                  = 0x058,  /* routed: command 397, 1 word, single, distributor entry 0x375 at tri.s:77 */
    KONA_HP_BEGIN_LINELOOP               = 0x059,  /* routed: command 390, 1 word, single, distributor entry 0x361 at tri.s:39 */
    KONA_HP_BEGIN_LINESTRIP              = 0x05a,  /* routed: command 389, 1 word, single, distributor entry 0x371 at tri.s:69 */
    KONA_HP_BEGIN_TRIANGLES              = 0x05b,  /* routed: command 391, 1 word, single, distributor entry 0x377 at tri.s:84 */
    KONA_HP_BEGIN_TSTRIP                 = 0x05c,  /* routed: command 392, 1 word, single, distributor entry 0x35a at tri.s:28 */
    KONA_HP_BEGIN_TFAN                   = 0x05d,  /* routed: command 393, 1 word, single, distributor entry 0x373 at tri.s:73 */
    KONA_HP_BEGIN_QUADS                  = 0x05e,  /* routed: command 394, 1 word, single, distributor entry 0x363 at tri.s:45 (mgesi_Triangles) */
    KONA_HP_BEGIN_QSTRIP                 = 0x05f,  /* routed: command 395, 1 word, single, distributor entry 0x377 at tri.s:84 */
    KONA_HP_BEGIN_POLYGON                = 0x060,  /* routed: command 396, 1 word, single, distributor entry 0x35d at tri.s:33 */
    KONA_HP_COLOR3B                      = 0x061,  /* routed: command 16, 3 words, untyped, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_COLOR3D                      = 0x062,  /* routed: command 144, 6 words, double, distributor entry 0x242 at qstrip.s:68; libGLcore __glkonim_Color3d stores 6 words */
    KONA_HP_COLOR3F                      = 0x063,  /* routed: command 144, 3 words, single, distributor entry 0x242 at qstrip.s:68; libGLcore __glkonim_Color3f stores 3 words */
    KONA_HP_COLOR3I                      = 0x064,  /* routed: command 16, 3 words, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_Color3i stores 3 words */
    KONA_HP_COLOR3S                      = 0x065,  /* routed: command 16, 3 words, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_COLOR3UB                     = 0x066,  /* routed: command 272, 3 words, untyped, distributor entry 0x2dd at tfanpoly.s:94 */
    KONA_HP_COLOR3UI                     = 0x067,  /* routed: command 272, 3 words, single, distributor entry 0x2dd at tfanpoly.s:94; libGLcore __glkonim_Color3ui stores 3 words */
    KONA_HP_COLOR3US                     = 0x068,  /* routed: command 272, 3 words, type 1, distributor entry 0x2dd at tfanpoly.s:94 */
    KONA_HP_COLOR4B                      = 0x069,  /* routed: command 16, 4 words, untyped, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_COLOR4D                      = 0x06a,  /* routed: command 144, 32 words, double, distributor entry 0x242 at qstrip.s:68; libGLcore __glkonim_Color4d stores 8 words */
    KONA_HP_COLOR4F                      = 0x06b,  /* routed: command 144, 4 words, single, distributor entry 0x242 at qstrip.s:68; libGLcore __glkonim_Color4f stores 4 words */
    KONA_HP_COLOR4I                      = 0x06c,  /* routed: command 16, 4 words, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_Color4i stores 4 words */
    KONA_HP_COLOR4S                      = 0x06d,  /* routed: command 16, 4 words, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_COLOR4UB                     = 0x06e,  /* routed: command 272, 4 words, untyped, distributor entry 0x2dd at tfanpoly.s:94 */
    KONA_HP_COLOR4UI                     = 0x06f,  /* routed: command 272, 4 words, single, distributor entry 0x2dd at tfanpoly.s:94; libGLcore __glkonim_Color4ui stores 4 words */
    KONA_HP_COLOR4US                     = 0x070,  /* routed: command 272, 4 words, type 1, distributor entry 0x2dd at tfanpoly.s:94 */
    KONA_HP_END                          = 0x071,  /* routed: command 386, 1 word, single, distributor entry 0x366 at tri.s:52 (mgesi_Triangles); libGLcore __glkonim_End stores 1 word */
    KONA_HP_INDEXD                       = 0x072,  /* routed: command 145, 2 words, double, distributor entry 0x25e at qstrip.s:118; libGLcore __glkonim_Indexd stores 2 words */
    KONA_HP_INDEXF                       = 0x073,  /* routed: command 145, 1 word, single, distributor entry 0x25e at qstrip.s:118; libGLcore __glkonim_Indexf stores 1 word */
    KONA_HP_INDEXI                       = 0x074,  /* routed: command 17, 1 word, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_Indexi stores 1 word */
    KONA_HP_INDEXS                       = 0x075,  /* routed: command 17, 1 word, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_Indexs stores 1 word */
    KONA_HP_NORMAL3B                     = 0x076,  /* routed: command 15, 11 words, untyped, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_NORMAL3D                     = 0x077,  /* routed: command 143, 14 words, double, distributor entry 0x2a1 at qstrip.s:256; libGLcore __glkonim_Normal3d stores 6 words */
    KONA_HP_NORMAL3F                     = 0x078,  /* routed: command 143, 11 words, single, distributor entry 0x2a1 at qstrip.s:256; libGLcore __glkonim_Normal3f stores 3 words */
    KONA_HP_NORMAL3I                     = 0x079,  /* routed: command 15, 11 words, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_Normal3i stores 3 words */
    KONA_HP_NORMAL3S                     = 0x07a,  /* routed: command 15, 11 words, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_TEXCOORD1D                   = 0x07b,  /* routed: command 146, 2 words, double, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord1d stores 2 words */
    KONA_HP_TEXCOORD1F                   = 0x07c,  /* routed: command 146, 1 word, single, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord1f stores 1 word */
    KONA_HP_TEXCOORD1I                   = 0x07d,  /* routed: command 18, 1 word, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_TexCoord1i stores 1 word */
    KONA_HP_TEXCOORD1S                   = 0x07e,  /* routed: command 18, 1 word, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_TexCoord1s stores 1 word */
    KONA_HP_TEXCOORD2D                   = 0x07f,  /* routed: command 146, 4 words, double, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord2d stores 4 words */
    KONA_HP_TEXCOORD2F                   = 0x080,  /* routed: command 146, 2 words, single, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord2f stores 2 words */
    KONA_HP_TEXCOORD2I                   = 0x081,  /* routed: command 18, 2 words, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_TexCoord2i stores 2 words */
    KONA_HP_TEXCOORD2S                   = 0x082,  /* routed: command 18, 2 words, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_TEXCOORD3D                   = 0x083,  /* routed: command 146, 6 words, double, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord3d stores 6 words */
    KONA_HP_TEXCOORD3F                   = 0x084,  /* routed: command 146, 3 words, single, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord3f stores 3 words */
    KONA_HP_TEXCOORD3I                   = 0x085,  /* routed: command 18, 3 words, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_TexCoord3i stores 3 words */
    KONA_HP_TEXCOORD3S                   = 0x086,  /* routed: command 18, 3 words, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_TEXCOORD4D                   = 0x087,  /* routed: command 146, 32 words, double, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord4d stores 8 words */
    KONA_HP_TEXCOORD4F                   = 0x088,  /* routed: command 146, 4 words, single, distributor entry 0x27a at qstrip.s:174 (mgesi_QuadStrip); libGLcore __glkonim_TexCoord4f stores 4 words */
    KONA_HP_TEXCOORD4I                   = 0x089,  /* routed: command 18, 4 words, single, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand); libGLcore __glkonim_TexCoord4i stores 4 words */
    KONA_HP_TEXCOORD4S                   = 0x08a,  /* routed: command 18, 4 words, type 1, distributor entry 0x003 at dist.s:13 (mgebi_NullCommand) */
    KONA_HP_VERTEX2D                     = 0x08b,  /* routed: command 206, 4 words, double, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd); libGLcore __glkonim_Vertex2d stores 4 words */
    KONA_HP_VERTEX2F                     = 0x08c,  /* routed: command 206, 2 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd); libGLcore __glkonim_Vertex2f stores 2 words */
    KONA_HP_VERTEX2I                     = 0x08d,  /* routed: command 78, 2 words, single, distributor entry 0x193 at lineloop.s:193 (mgesi_LineStrip); libGLcore __glkonim_Vertex2i stores 2 words */
    KONA_HP_VERTEX2S                     = 0x08e,  /* routed: command 78, 2 words, type 1, distributor entry 0x193 at lineloop.s:193 (mgesi_LineStrip) */
    KONA_HP_VERTEX3D                     = 0x08f,  /* routed: command 206, 6 words, double, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd); libGLcore __glkonim_Vertex3d stores 6 words */
    KONA_HP_VERTEX3F                     = 0x090,  /* routed: command 206, 3 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd); libGLcore __glkonim_Vertex3f stores 3 words */
    KONA_HP_VERTEX3I                     = 0x091,  /* routed: command 78, 3 words, single, distributor entry 0x193 at lineloop.s:193 (mgesi_LineStrip); libGLcore __glkonim_Vertex3i stores 3 words */
    KONA_HP_VERTEX3S                     = 0x092,  /* routed: command 78, 3 words, type 1, distributor entry 0x193 at lineloop.s:193 (mgesi_LineStrip) */
    KONA_HP_VERTEX4D                     = 0x093,  /* routed: command 206, 32 words, double, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd); libGLcore __glkonim_Vertex4d stores 8 words */
    KONA_HP_VERTEX4F                     = 0x094,  /* routed: command 206, 4 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd); libGLcore __glkonim_Vertex4f stores 4 words */
    KONA_HP_VERTEX4I                     = 0x095,  /* routed: command 78, 4 words, single, distributor entry 0x193 at lineloop.s:193 (mgesi_LineStrip); libGLcore __glkonim_Vertex4i stores 4 words */
    KONA_HP_VERTEX4S                     = 0x096,  /* routed: command 78, 4 words, type 1, distributor entry 0x193 at lineloop.s:193 (mgesi_LineStrip) */
    KONA_HP_MATERIALF                    = 0x097,  /* routed: command 129, 6 words, single, distributor entry 0x254 at qstrip.s:98; libGLcore __glkonim_Materialfv stores 6 words */
    KONA_HP_MATERIALF_cont               = 0x098,  /* routed: command 159, 20 words, single, distributor entry 0x2a1 at qstrip.s:256 */
    KONA_HP_MATERIALI                    = 0x099,  /* routed: command 159, 2 words, single, distributor entry 0x2a1 at qstrip.s:256 */
    KONA_HP_MATERIALI_cont               = 0x09a,  /* routed: command 1, 20 words, single, distributor entry 0x016 at material.s:11 (mgeb_Material) */
    KONA_HP_EVAL_COORD1D                 = 0x09b,  /* routed: command 448, 1 word, single, distributor entry 0x1f1 at quad.s:22 */
    KONA_HP_EVAL_COORD1D_cont            = 0x09c,  /* routed: command 142, 2 words, double, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_EVAL_COORD1F                 = 0x09d,  /* routed: command 448, 1 word, single, distributor entry 0x1f1 at quad.s:22; libGLcore __glKonEvalCoord1DGe11 stores 2 words */
    KONA_HP_EVAL_COORD1F_cont            = 0x09e,  /* routed: command 142, 1 word, single, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_EVAL_COORD2D                 = 0x09f,  /* routed: command 448, 1 word, single, distributor entry 0x1f1 at quad.s:22 */
    KONA_HP_EVAL_COORD2D_cont            = 0x0a0,  /* routed: command 142, 4 words, double, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_EVAL_COORD2F                 = 0x0a1,  /* routed: command 448, 1 word, single, distributor entry 0x1f1 at quad.s:22; libGLcore __glKonEvalCoord2DGe11 stores 3 words */
    KONA_HP_EVAL_COORD2F_cont            = 0x0a2,  /* routed: command 142, 2 words, single, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_EVAL_POINT1                  = 0x0a3,  /* routed: command 448, 1 word, single, distributor entry 0x1f1 at quad.s:22 */
    KONA_HP_EVAL_POINT1_cont             = 0x0a4,  /* routed: command 142, 1 word, single, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_EVAL_POINT2                  = 0x0a5,  /* routed: command 448, 1 word, single, distributor entry 0x1f1 at quad.s:22 */
    KONA_HP_EVAL_POINT2_cont             = 0x0a6,  /* routed: command 142, 2 words, single, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_EDGEFLAG                     = 0x0a7,  /* ARM arm_edgeflag (raster and pipeline state); libGLcore __glkonim_EdgeFlag stores 1 word */
    KONA_HP_RASTERPOS2D                  = 0x0a8,  /* ARM arm_rasterpos2d (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos2d stores 4 words */
    KONA_HP_RASTERPOS2F                  = 0x0a9,  /* ARM arm_rasterpos2f (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos2f stores 2 words */
    KONA_HP_RASTERPOS2I                  = 0x0aa,  /* ARM arm_rasterpos2i (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos2i stores 2 words */
    KONA_HP_RASTERPOS2S                  = 0x0ab,  /* ARM arm_rasterpos2s (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos2s stores 2 words */
    KONA_HP_RASTERPOS3D                  = 0x0ac,  /* ARM arm_rasterpos3d (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos3d stores 6 words */
    KONA_HP_RASTERPOS3F                  = 0x0ad,  /* ARM arm_rasterpos3f (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos3f stores 3 words */
    KONA_HP_RASTERPOS3I                  = 0x0ae,  /* ARM arm_rasterpos3i (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos3i stores 3 words */
    KONA_HP_RASTERPOS3S                  = 0x0af,  /* ARM arm_rasterpos3s (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos3s stores 3 words */
    KONA_HP_RASTERPOS4D                  = 0x0b0,  /* ARM arm_rasterpos4d (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos4d stores 8 words */
    KONA_HP_RASTERPOS4F                  = 0x0b1,  /* ARM arm_rasterpos4f (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos4f stores 4 words */
    KONA_HP_RASTERPOS4I                  = 0x0b2,  /* ARM arm_rasterpos4i (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos4i stores 4 words */
    KONA_HP_RASTERPOS4S                  = 0x0b3,  /* ARM arm_rasterpos4s (vertex arrays, evaluators and patches); libGLcore __glkonim_RasterPos4s stores 4 words */
    KONA_HP_CLIPPLANE                    = 0x0b4,  /* ARM arm_clipplane (matrices, viewport and clipping), sends mgeb_UserClipPlane */
    KONA_HP_COLORMATERIAL                = 0x0b5,  /* ARM arm_colormaterial (lighting and material); libGLcore __glkonim_ColorMaterial stores 2 words */
    KONA_HP_CULLFACE                     = 0x0b6,  /* ARM arm_cullface (raster and pipeline state), sends mgeb_CullFace */
    KONA_HP_FOGF                         = 0x0b7,  /* routed: command 129, 5 words, single, engine handler mgeb_Fogf */
    KONA_HP_FOGI                         = 0x0b8,  /* routed: command 128, 1 word, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_FOGI_cont                    = 0x0b9,  /* routed: command 2, 4 words, single, engine handler mgeb_Fogi */
    KONA_HP_FRONTFACE                    = 0x0ba,  /* ARM arm_frontface (raster and pipeline state), sends mgeb_FrontFace */
    KONA_HP_HINT                         = 0x0bb,  /* ARM arm_hint (raster and pipeline state) */
    KONA_HP_LINESTIPPLE                  = 0x0bc,  /* ARM arm_linestipple (raster and pipeline state), sends mgeb_LineStipple; libGLcore __glkonim_LineStipple stores 2 words */
    KONA_HP_LINEWIDTH                    = 0x0bd,  /* ARM arm_linewidth (raster and pipeline state) */
    KONA_HP_POINTSIZE                    = 0x0be,  /* ARM arm_pointsize (raster and pipeline state) */
    KONA_HP_POLYGONMODE                  = 0x0bf,  /* ARM arm_polygonmode (raster and pipeline state) */
    KONA_HP_SHADEMODEL                   = 0x0c0,  /* ARM arm_shademodel (raster and pipeline state), sends mgebi_ShadeModel; libGLcore __glkonim_ShadeModel stores 1 word */
    KONA_HP_PASSTHROUGH                  = 0x0c1,  /* ARM arm_passthrough (selection, feedback and attributes), sends mgesi_PassThrough; libGLcore __glkonim_PassThrough stores 1 word */
    KONA_HP_POPNAME                      = 0x0c2,  /* ARM arm_popname (selection, feedback and attributes), sends mgeb_PopName; libGLcore __glkonim_PopName stores 1 word */
    KONA_HP_PUSHNAME                     = 0x0c3,  /* ARM arm_pushname (selection, feedback and attributes), sends mgeb_PushName; libGLcore __glkonim_PushName stores 1 word */
    KONA_HP_DRAWBUFFER                   = 0x0c4,  /* ARM arm_drawbuffer (buffers and windows); libGLcore __glkonim_DrawBuffer stores 1 word */
    KONA_HP_ACCUM                        = 0x0c5,  /* ARM arm_accum (clear and accumulate); libGLcore __glkonim_Accum stores 2 words */
    KONA_HP_FINISH                       = 0x0c6,  /* ARM arm_finish (buffers and windows), sends mgesi_FlushRM */
    KONA_HP_FLUSH                        = 0x0c7,  /* routed: command 130, 1 word, single, distributor entry 0x289 at qstrip.s:202 (mgesi_QuadStrip mgesi_QuadStripSave mgesi_QuadStripRestore mgesi_QuadStripRestoreSave); libGLcore __glkonim_Flush stores 1 word */
    KONA_HP_POPATTRIB                    = 0x0c8,  /* ARM arm_popattrib (selection, feedback and attributes) */
    KONA_HP_PUSHATTRIB                   = 0x0c9,  /* ARM arm_pushattrib (selection, feedback and attributes), sends mgesi_StartRdata mgesi_GetRaster mgesi_Eram2ODMA +2 */
    KONA_HP_ALPHAFUNC                    = 0x0ca,  /* ARM arm_alphafunc (raster and pipeline state), sends mgesi_AlphaFunc */
    KONA_HP_BLENDFUNC                    = 0x0cb,  /* ARM arm_blendfunc (raster and pipeline state) */
    KONA_HP_STENCILFUNC                  = 0x0cc,  /* ARM arm_stencilfunc (raster and pipeline state) */
    KONA_HP_STENCILOP                    = 0x0cd,  /* ARM arm_stencilop (raster and pipeline state) */
    KONA_HP_DEPTHFUNC                    = 0x0ce,  /* ARM arm_depthfunc (raster and pipeline state) */
    KONA_HP_DEPTHRANGE                   = 0x0cf,  /* ARM arm_depthrange (matrices, viewport and clipping), sends mgeb_DepthRange; libGLcore __glkonim_DepthRange stores 4 words */
    KONA_HP_MATRIXMODE                   = 0x0d0,  /* ARM arm_matrixmode (matrices, viewport and clipping), sends mgeb_MatrixMode mgeb_LoadIdentity_Modelview mgeb_LoadMatrix_Modelview +27 */
    KONA_HP_FRUSTUM                      = 0x0d1,  /* routed: command 133, 12 words, double, engine handler mgeb_Frustum_Modelview; libGLcore __glkonim_Frustum stores 12 words */
    KONA_HP_LOADIDENTITY                 = 0x0d2,  /* routed: command 131, 1 word, single, engine handler mgeb_LoadIdentity_Modelview; libGLcore __glkonim_LoadIdentity stores 1 word */
    KONA_HP_LOADMATRIXF                  = 0x0d3,  /* routed: command 196, 16 words, single, engine handler mgeb_LoadMatrix_Modelview; libGLcore __glkonim_LoadMatrixf stores 16 words */
    KONA_HP_LOADMATRIXD                  = 0x0d4,  /* routed: command 196, 32 words, double, engine handler mgeb_LoadMatrix_Modelview; libGLcore __glkonim_LoadMatrixd stores 32 words */
    KONA_HP_MULTMATRIXF                  = 0x0d5,  /* routed: command 198, 16 words, single, engine handler mgeb_MultMatrix_Modelview; libGLcore __glkonim_MultMatrixf stores 16 words */
    KONA_HP_MULTMATRIXD                  = 0x0d6,  /* routed: command 198, 32 words, double, engine handler mgeb_MultMatrix_Modelview; libGLcore __glkonim_MultMatrixd stores 32 words */
    KONA_HP_ORTHO                        = 0x0d7,  /* routed: command 135, 12 words, double, engine handler mgeb_Ortho_Modelview; libGLcore __glkonim_Ortho stores 12 words */
    KONA_HP_POPMATRIX                    = 0x0d8,  /* routed: command 8, 1 word, single, engine handler mgeb_PopMatrix_Modelview; libGLcore __glkonim_PopMatrix stores 1 word */
    KONA_HP_PUSHMATRIX                   = 0x0d9,  /* routed: command 9, 1 word, single, engine handler mgeb_PushMatrix_Modelview; libGLcore __glkonim_PushMatrix stores 1 word */
    KONA_HP_ROTATED                      = 0x0da,  /* routed: command 202, 8 words, double, engine handler mgeb_Rotate_Modelview; libGLcore __glkonim_Rotated stores 8 words */
    KONA_HP_ROTATEF                      = 0x0db,  /* routed: command 202, 4 words, single, engine handler mgeb_Rotate_Modelview; libGLcore __glkonim_Rotatef stores 4 words */
    KONA_HP_SCALED                       = 0x0dc,  /* routed: command 203, 6 words, double, engine handler mgeb_Scale_Modelview; libGLcore __glkonim_Scaled stores 6 words */
    KONA_HP_SCALEF                       = 0x0dd,  /* routed: command 203, 3 words, single, engine handler mgeb_Scale_Modelview; libGLcore __glkonim_Scalef stores 3 words */
    KONA_HP_TRANSLATED                   = 0x0de,  /* routed: command 204, 6 words, double, engine handler mgeb_Translate_Modelview; libGLcore __glkonim_Translated stores 6 words */
    KONA_HP_TRANSLATEF                   = 0x0df,  /* routed: command 204, 3 words, single, engine handler mgeb_Translate_Modelview; libGLcore __glkonim_Translatef stores 3 words */
    KONA_HP_WRAM2CRAM                    = 0x0e0,  /* routed: command 141, 17 words, single, distributor entry 0x25c at qstrip.s:114 */
    KONA_HP_GEPASSCMD                    = 0x0e1,  /* routed: command 142, 1 word, single, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_TBUS_1                       = 0x0e2,  /* routed: command 143, 3 words, single, engine handler mgesi_TBUS_1 */
    KONA_HP_VIEWPORT                     = 0x0e3,  /* ARM arm_viewport (matrices, viewport and clipping) */
    KONA_HP_SETERROR                     = 0x0e4,  /* ARM arm_seterror (context, memory and host interface); libGLcore Error stores 1 word */
    KONA_HP_END_OF_SIMULATION            = 0x0e5,  /* ARM arm_end_of_simulation (context, memory and host interface) */
    KONA_HP_BLENDCOLOR                   = 0x0e6,  /* ARM arm_blendcolor (raster and pipeline state), sends mgesi_TbusRegWrite mgesi_UserColor; libGLcore __glkonim_BlendColorEXT stores 4 words */
    KONA_HP_BLENDEQUATION                = 0x0e7,  /* ARM arm_blendequation (raster and pipeline state); libGLcore __glkonim_BlendEquationEXT stores 1 word */
    KONA_HP_COLORTABLE                   = 0x0e8,  /* ARM arm_colortable (pixels, bitmaps and filters) */
    KONA_HP_COPYCOLORTABLE               = 0x0e9,  /* ARM arm_copycolortable: refused, ends in the error handler */
    KONA_HP_GETCOLORTABLE                = 0x0ea,  /* ARM arm_getcolortable (0x0c03f24c) reads four words (target, format, then two passed on), maps the first two with internalformat_index and lut_index, and answers through do_getcolortable */
    KONA_HP_COLORTABLEPARAMETERFV        = 0x0eb,  /* ARM arm_colortableparameterfv (pixels, bitmaps and filters); libGLcore __glkonim_ColorTableParameterfvSGI stores 6 words */
    KONA_HP_GETCOLORTABLEPARAMETERFV     = 0x0ec,  /* ARM arm_getcolortableparameterfv (0x0c03ee70) answers a colour-table parameter query through the read-back path (start_rdata, register 0x476), or flags an invalid enum */
    KONA_HP_LOAD_POST_TEX_SCALE_BIAS     = 0x0ed,  /* routed: command 161, 4 words, single, engine handler mgebi_TextureScaleBias; libGLcore loadPostTextureScaleBias stores 4 words */
    KONA_HP_GETLINEMODEDIST              = 0x0ee,  /* ARM arm_getlinemodedist (0x0c02a7cc) answers by read-back: a count of 32 to raster register 0x476, then eight pairs of word pairs from the LMLimit48 and LMLimit tables */
    KONA_HP_CONVOLUTIONFILTER1D          = 0x0ef,  /* ARM arm_convolutionfilter1d (pixels, bitmaps and filters) */
    KONA_HP_CONVOLUTIONFILTER2D          = 0x0f0,  /* ARM arm_convolutionfilter2d (pixels, bitmaps and filters) */
    KONA_HP_CONVOLUTIONFILTER3D          = 0x0f1,  /* ARM arm_convolutionfilter3d: refused, ends in the error handler */
    KONA_HP_COPYCONVOLUTIONFILTER1D      = 0x0f2,  /* ARM arm_copyconvolutionfilter1d (pixels, bitmaps and filters) */
    KONA_HP_COPYCONVOLUTIONFILTER2D      = 0x0f3,  /* ARM arm_copyconvolutionfilter2d (pixels, bitmaps and filters) */
    KONA_HP_GETCONVOLUTIONFILTER         = 0x0f4,  /* ARM arm_getconvolutionfilter (queries), sends mgebi_Texture */
    KONA_HP_SEPARABLEFILTER2D            = 0x0f5,  /* ARM arm_separablefilter2d (pixels, bitmaps and filters) */
    KONA_HP_SEPARABLEFILTER3D            = 0x0f6,  /* ARM arm_separablefilter3d: refused, ends in the error handler */
    KONA_HP_GETSEPARABLEFILTER           = 0x0f7,  /* ARM arm_getseparablefilter (queries), sends mgebi_Texture */
    KONA_HP_PIXEL_TRANSFORM_PARAMETERIV  = 0x0f8,  /* ARM arm_pixel_transform_parameteriv (pixels, bitmaps and filters) */
    KONA_HP_PIXEL_TRANSFORM_PARAMETERFV  = 0x0f9,  /* ARM arm_pixel_transform_parameterfv (pixels, bitmaps and filters) */
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERIV = 0x0fa,  /* ARM arm_get_pixel_transform_parameteriv (0x0c0378d8) answers through the read-back path (start_rdata, register 0x476) */
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERFV = 0x0fb,  /* ARM arm_get_pixel_transform_parameterfv: refused, ends in the error handler */
    KONA_HP_COPYTEXIMAGE1D               = 0x0fc,  /* ARM arm_copyteximage1d: refused, ends in the error handler */
    KONA_HP_COPYTEXIMAGE                 = 0x0fd,  /* ARM arm_copyteximage (0x0c02bf60) copies framebuffer pixels into texture memory through the pixel path (ResolveCopyPath, SetupReadback, SetupSubtexload, StartRbus); libGLcore __glKonCopyTexImage sends it */
    KONA_HP_COPYTEXSUBIMAGE1D            = 0x0fe,  /* ARM arm_copytexsubimage1d: refused, ends in the error handler */
    KONA_HP_WG_FLUSH_0                   = 0x0ff,  /* ARM arm_wg_flush_0: refused, ends in the error handler */
    KONA_HP_DATA_1                       = 0x100,  /* ARM arm_data_1: refused, ends in the error handler */
    KONA_HP_COPYTEXSUBIMAGE2D            = 0x101,  /* ARM arm_copytexsubimage2d: refused, ends in the error handler */
    KONA_HP_HISTOGRAM                    = 0x102,  /* ARM arm_histogram (pixels, bitmaps and filters) */
    KONA_HP_RESETHISTOGRAM               = 0x103,  /* ARM arm_resethistogram (pixels, bitmaps and filters); libGLcore __glkonim_ResetHistogramEXT stores 1 word */
    KONA_HP_GETHISTOGRAM                 = 0x104,  /* ARM arm_gethistogram (0x0c03f9a4) asks the engines for the histogram and returns it through the read-back path (start_rdata) */
    KONA_HP_GETHISTOGRAMPARAMETERIV      = 0x105,  /* ARM arm_gethistogramparameteriv (0x0c03fac4) answers a histogram parameter query by read-back (start_rdata), or flags an invalid enum */
    KONA_HP_BIND_LINEAR_TEXTURE          = 0x106,  /* ARM arm_bind_linear_texture (texture), sends mgesi_TbusRegWrite mgesi_FillTMLoadFifo mgeb_SkipNextTextureAddr +3 */
    KONA_HP_MINMAX                       = 0x107,  /* ARM arm_minmax (pixels, bitmaps and filters) */
    KONA_HP_RESETMINMAX                  = 0x108,  /* ARM arm_resetminmax (pixels, bitmaps and filters); libGLcore __glkonim_ResetMinmaxEXT stores 1 word */
    KONA_HP_GETMINMAX                    = 0x109,  /* ARM arm_getminmax (queries) */
    KONA_HP_GETMINMAXPARAMETERIV         = 0x10a,  /* ARM arm_getminmaxparameteriv (0x0c03fd98) answers a min-max parameter query by read-back (start_rdata), or flags an invalid enum */
    KONA_HP_GET_LIGHT_ATTRIBS            = 0x10b,  /* routed: command 162, 1 word, single, distributor entry 0x27f at qstrip.s:185 (mgesi_QuadStrip) */
    KONA_HP_INITNAMES                    = 0x10c,  /* ARM arm_initnames (selection, feedback and attributes), sends mgeb_InitNames; libGLcore __glkonim_InitNames stores 1 word */
    KONA_HP_LOADNAME                     = 0x10d,  /* ARM arm_loadname (selection, feedback and attributes), sends mgeb_LoadName; libGLcore __glkonim_LoadName stores 1 word */
    KONA_HP_SET_CURRENT_RASTER           = 0x10e,  /* ARM arm_set_current_raster (vertex arrays, evaluators and patches), sends mgeb_SetCurrentRaster; libGLcore setCurrentRaster stores 15 words */
    KONA_HP_FOGFUNC                      = 0x10f,  /* ARM arm_fogfunc (raster and pipeline state), sends mgeb_FogFunc */
    KONA_HP_COPYISOVERLAPPED             = 0x110,  /* ARM arm_copyisoverlapped (pixels, bitmaps and filters) */
    KONA_HP_PIXEL_NOMODE                 = 0x111,  /* ARM arm_pixel_nomode (pixels, bitmaps and filters) */
    KONA_HP_IRISGL_MODE                  = 0x112,  /* ARM arm_irisgl_mode (raster and pipeline state), sends mgeb_SetLMCFlag mgeb_ClearLMCFlag */
    KONA_HP_LMC_COLOR                    = 0x113,  /* ARM arm_lmc_color (lighting and material) */
    KONA_HP_VIDEO_SOURCE                 = 0x114,  /* ARM arm_video_source (display generator and swap) */
    KONA_HP_COPYCONVISOVERLAPPED         = 0x115,  /* ARM arm_copyconvisoverlapped (pixels, bitmaps and filters), sends mgesi_GetRaster */
    KONA_HP_RESOLVEISSINGLECOMP          = 0x116,  /* ARM arm_resolveissinglecomp (pixels, bitmaps and filters) */
    KONA_HP_SAMPLEPATTERN                = 0x117,  /* ARM arm_samplepattern (raster and pipeline state), sends mgeb_SetMSPointTables; libGLcore __glkonim_SamplePatternSGIS stores 1 word */
    KONA_HP_SAMPLEMASK                   = 0x118,  /* ARM arm_samplemask (raster and pipeline state) */
    KONA_HP_POPLIGHTS                    = 0x119,  /* ARM arm_poplights (lighting and material), sends mgeb_PopAttrLights */
    KONA_HP_PIXELTEXGEN                  = 0x11a,  /* ARM arm_pixeltexgen: refused, ends in the error handler */
    KONA_HP_POLYGONOFFSETEXT             = 0x11b,  /* ARM arm_polygonoffsetext (raster and pipeline state), sends mgeb_PolygonOffsetExt; libGLcore __glkonim_PolygonOffsetEXT stores 2 words */
    KONA_HP_TEXSUBIMAGE1D                = 0x11c,  /* ARM arm_texsubimage1d: refused, ends in the error handler */
    KONA_HP_TEXSUBIMAGE2D                = 0x11d,  /* ARM arm_texsubimage2d: refused, ends in the error handler */
    KONA_HP_TEXSUBIMAGE3D                = 0x11e,  /* ARM arm_texsubimage3d: refused, ends in the error handler */
    KONA_HP_TEXIMAGE3D                   = 0x11f,  /* ARM arm_teximage3d: refused, ends in the error handler */
    KONA_HP_TEXIMAGE4D                   = 0x120,  /* ARM arm_teximage4d: refused, ends in the error handler */
    KONA_HP_TEXSUBIMAGE4D                = 0x121,  /* ARM arm_texsubimage4d: refused, ends in the error handler */
    KONA_HP_GENTEXTURES1D                = 0x122,  /* ARM arm_gentextures1d: refused, ends in the error handler */
    KONA_HP_GENTEXTURES2D                = 0x123,  /* ARM arm_gentextures2d: refused, ends in the error handler */
    KONA_HP_GENTEXTURES3D                = 0x124,  /* ARM arm_gentextures3d: refused, ends in the error handler */
    KONA_HP_ISTEXTURE                    = 0x125,  /* ARM arm_istexture: refused, ends in the error handler */
    KONA_HP_DELETETEXTURES               = 0x126,  /* ARM arm_deletetextures: refused, ends in the error handler */
    KONA_HP_BINDTEXTURE                  = 0x127,  /* ARM arm_bindtexture: refused, ends in the error handler */
    KONA_HP_X_INIT                       = 0x128,  /* ARM arm_x_init (X server), sends mgeb_XContextInitialize mgeb_ContextLoadEram */
    KONA_HP_X_LOADGC                     = 0x129,  /* routed: command 179, 13 words, single, engine handler mgebi_XLoadGC */
    KONA_HP_X_LOADPOS                    = 0x12a,  /* routed: command 180, 4 words, single, engine handler mgebi_XLoadPosition */
    KONA_HP_X_LOADCLIP                   = 0x12b,  /* routed: command 181, 5 words, single, engine handler mgeb_XLoadClip */
    KONA_HP_X_LOADCLIP_ARM               = 0x12c,  /* ARM arm_x_loadclip_arm (X server), sends mgeb_XLoadClip */
    KONA_HP_X_LOADSCISSOR                = 0x12d,  /* routed: command 182, 4 words, single, engine handler mgesi_XLoadScissor */
    KONA_HP_X_LOADCMAP                   = 0x12e,  /* ARM arm_x_loadcmap (X server), sends mgesi_VCbusWrite mgesi_VCbusWriteMultiple */
    KONA_HP_X_LOADGAMMA                  = 0x12f,  /* ARM arm_x_loadgamma (X server), sends mgesi_VCbusWrite mgesi_VCbusWriteMultiple */
    KONA_HP_X_LOADCURSOR                 = 0x130,  /* ARM arm_x_loadcursor (X server), sends mgesi_VCbusWrite mgesi_VCbusWriteMultiple */
    KONA_HP_X_LOADCURSORCOLOR            = 0x131,  /* ARM arm_x_loadcursorcolor (X server), sends mgesi_VCbusWrite mgesi_VCbusWriteMultiple */
    KONA_HP_X_LOADXMAP_DID               = 0x132,  /* ARM arm_x_loadxmap_did (X server), sends mgesi_VCbusWrite */
    KONA_HP_X_LOADXMAP_CONFIG            = 0x133,  /* ARM arm_x_loadxmap_config (X server), sends mgesi_VCbusWrite */
    KONA_HP_GET_GE_TEXTURE_ATTRIB        = 0x134,  /* ARM arm_get_ge_texture_attrib (queries), sends mgesi_StartRdata mgesi_FinishRdata */
    KONA_HP_PIXEL_TRANSFORM              = 0x135,  /* ARM arm_pixel_transform (pixels, bitmaps and filters) */
    KONA_HP_X_PIX_SETUP                  = 0x136,  /* ARM arm_x_pix_setup (0x0c034ac4) sets up the X server's pixel transfer: engine set-up, distributor and filter registers and the packer (X_PixSetupGE, CompGedReg, CompTF, XSetPacker); payload in docs/opengl.md */
    KONA_HP_X_PIX_COPY                   = 0x137,  /* ARM arm_x_pix_copy (X server), sends mgeb_PixEndRGBStream */
    KONA_HP_X_PIX_READ                   = 0x138,  /* ARM arm_x_pix_read (X server), sends mgeb_PixEndRGBStream */
    KONA_HP_X_PIX_WRITE                  = 0x139,  /* ARM arm_x_pix_write (X server), sends mgesi_XPixRmSetup mgebi_PixCurGEIDSetup */
    KONA_HP_X_PIX_FINISH                 = 0x13a,  /* ARM arm_x_pix_finish (X server), sends mgeb_PixEndRGBStream */
    KONA_HP_X_UNUSED3                    = 0x13b,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_X_LOADSTIPPLE                = 0x13c,  /* ARM arm_x_loadstipple (X server), sends mgesi_XPolygonStippleDownload */
    KONA_HP_X_STORESTIPPLE               = 0x13d,  /* ARM arm_x_storestipple (X server), sends mgeb_LoadEram */
    KONA_HP_X_ROTATESTIPPLE              = 0x13e,  /* ARM arm_x_rotatestipple (X server), sends mgeb_XPolygonStippleRotate */
    KONA_HP_X_UNUSED4                    = 0x13f,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_X_UNUSED5                    = 0x140,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_X_DATA1                      = 0x141,  /* routed: command 128, 1 word, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA2                      = 0x142,  /* routed: command 128, 2 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA3                      = 0x143,  /* routed: command 128, 3 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA4                      = 0x144,  /* routed: command 128, 4 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_BDATA4                     = 0x145,  /* routed: command 128, 4 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA5                      = 0x146,  /* routed: command 128, 5 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA6                      = 0x147,  /* routed: command 128, 6 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA7                      = 0x148,  /* routed: command 128, 7 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA8                      = 0x149,  /* routed: command 128, 8 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA9                      = 0x14a,  /* routed: command 128, 9 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_DATA10                     = 0x14b,  /* routed: command 128, 10 words, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_X_POINT                      = 0x14c,  /* routed: command 170, 1 word, single, engine handler mgesi_XPoint */
    KONA_HP_X_POINT6                     = 0x14d,  /* routed: command 170, 6 words, single, engine handler mgesi_XPoint */
    KONA_HP_X_POINT24                    = 0x14e,  /* routed: command 170, 24 words, single, engine handler mgesi_XPoint */
    KONA_HP_X_POINT_R                    = 0x14f,  /* routed: command 171, 1 word, single, engine handler mgesi_XPointRel */
    KONA_HP_X_POINT6_R                   = 0x150,  /* routed: command 171, 6 words, single, engine handler mgesi_XPointRel */
    KONA_HP_X_POINT24_R                  = 0x151,  /* routed: command 171, 24 words, single, engine handler mgesi_XPointRel */
    KONA_HP_X_RECT                       = 0x152,  /* routed: command 172, 2 words, single, engine handler mgesi_XRect */
    KONA_HP_X_RECT6                      = 0x153,  /* routed: command 172, 12 words, single, engine handler mgesi_XRect */
    KONA_HP_X_BOX                        = 0x154,  /* routed: command 173, 2 words, single, engine handler mgesi_XBox */
    KONA_HP_X_BOX6                       = 0x155,  /* routed: command 173, 12 words, single, engine handler mgesi_XBox */
    KONA_HP_X_SPANS                      = 0x156,  /* routed: command 174, 3 words, single, engine handler mgesi_XSpans */
    KONA_HP_X_SPANS2                     = 0x157,  /* routed: command 174, 5 words, single, engine handler mgesi_XSpans */
    KONA_HP_X_SPANS6                     = 0x158,  /* routed: command 174, 13 words, single, engine handler mgesi_XSpans */
    KONA_HP_X_SEGMENT                    = 0x159,  /* routed: command 175, 2 words, single, engine handler mgesi_XSegment */
    KONA_HP_X_SEGMENT6                   = 0x15a,  /* routed: command 175, 12 words, single, engine handler mgesi_XSegment */
    KONA_HP_X_LINE                       = 0x15b,  /* routed: command 176, 2 words, single, engine handler mgesi_XLine */
    KONA_HP_X_LINE6                      = 0x15c,  /* routed: command 176, 12 words, single, engine handler mgesi_XLine */
    KONA_HP_X_LINE_R                     = 0x15d,  /* routed: command 177, 2 words, single, engine handler mgesi_XLineRel */
    KONA_HP_X_LINE6_R                    = 0x15e,  /* routed: command 177, 12 words, single, engine handler mgesi_XLineRel */
    KONA_HP_X_BGPOINT                    = 0x15f,  /* routed: command 178, 1 word, single, engine handler mgesi_XBgPoint */
    KONA_HP_X_BGPOINT6                   = 0x160,  /* routed: command 178, 6 words, single, engine handler mgesi_XBgPoint */
    KONA_HP_X_BGPOINT24                  = 0x161,  /* routed: command 178, 24 words, single, engine handler mgesi_XBgPoint */
    KONA_HP_X_UNUSED6                    = 0x162,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_X_UNUSED7                    = 0x163,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_X_UNUSED8                    = 0x164,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_X_UNUSED9                    = 0x165,  /* ARM C$$code$$Base,arm_badcmd: refused, ends in the error handler */
    KONA_HP_DPLEX_SWAP                   = 0x166,  /* ARM arm_dplex_swap (display generator and swap), sends mgesi_VCbusWrite */
    KONA_HP_USERCOPYLIST_LDMA            = 0x167,  /* ARM arm_usercopylist_ldma (display lists and DMA); libGLcore __glSdramPushIn stores 4 words */
    KONA_HP_POLYGONOFFSET                = 0x168,  /* ARM arm_polygonoffset (raster and pipeline state), sends mgeb_PolygonOffset; libGLcore __glkonim_PolygonOffset stores 2 words */
    KONA_HP_DIAG_DISPATCH                = 0x169,  /* ARM arm_diag_dispatch (context, memory and host interface) */
    KONA_HP_DIAG_RESERVED0               = 0x16a,  /* routed: command 64, 1 word, untyped, distributor entry 0x13c at lineloop.s:22 */
    KONA_HP_DIAG_RESERVED1               = 0x16b,  /* routed: command 64, 1 word, untyped, distributor entry 0x13c at lineloop.s:22 */
    KONA_HP_COPYLIST_LDMA                = 0x16c,  /* ARM arm_copylist_ldma (display lists and DMA) */
    KONA_HP_EXECLIST_LDMA                = 0x16d,  /* ARM arm_execlist_ldma (display lists and DMA); libGLcore __glKonExecuteLDMA stores 2 words */
    KONA_HP_EXECLIST_IDMA                = 0x16e,  /* ARM arm_execlist_idma (display lists and DMA) */
    KONA_HP_MOVELIST_LDMA                = 0x16f,  /* ARM arm_movelist_ldma (display lists and DMA); libGLcore __glSdramMemmove stores 3 words */
    KONA_HP_EXECLIST_LDMA_N              = 0x170,  /* ARM arm_execlist_ldma_n (display lists and DMA) */
    KONA_HP_EXECLIST_IDMA_N              = 0x171,  /* ARM arm_execlist_idma_n (display lists and DMA) */
    KONA_HP_GED_NOP                      = 0x172,  /* routed: command 96, 1 word, untyped, distributor entry 0x14c at lineloop.s:48 */
    KONA_HP_TEXSETUP                     = 0x173,  /* ARM arm_texsetup (0x0c0364e0) reads eleven words (the last as the final word) into the pixel shadow and texState, resolves the texture internal format and writes the six texture-load raster registers (PixRM_TextureLoadSetup); no libGLcore sender found */
    KONA_HP_DRAWTEXELS                   = 0x174,  /* ARM arm_drawtexels (texture) */
    KONA_HP_TEXLOAD_SETUP                = 0x175,  /* ARM arm_texload_setup: accepted and ignored */
    KONA_HP_TEXLOAD_ID                   = 0x176,  /* ARM arm_texload_id (0x0c0251fc) reads its one word as the final word and advances the texture load generation number (update_texload_id), which it sends to the raster boards */
    KONA_HP_ACTIVE_TEXTURE               = 0x177,  /* ARM arm_active_texture (texture), sends mgebi_Texture */
    KONA_HP_TEXBIND_ID                   = 0x178,  /* ARM arm_texbind_id (texture); libGLcore updateTexBindID stores 1 word */
    KONA_HP_BIND_2D_MIPMAP_TEXTURE       = 0x179,  /* routed: command 160, 22 words, single, engine handler mgebi_Bind2dMipmapTexture */
    KONA_HP_BIND_BICUBIC_TEXTURE         = 0x17a,  /* ARM arm_bind_bicubic_texture (texture), sends mgesi_BshRegisterWriteN */
    KONA_HP_BIND_3D_MIPMAP_TEXTURE       = 0x17b,  /* ARM arm_bind_3d_mipmap_texture (texture), sends mgesi_BshRegisterWriteN */
    KONA_HP_BIND_3D_TEXTURE              = 0x17c,  /* ARM arm_bind_3d_texture (texture), sends mgesi_BshRegisterWriteN */
    KONA_HP_BIND_DETAIL_TEXTURE          = 0x17d,  /* ARM arm_bind_detail_texture (texture), sends mgesi_FillTMLoadFifo */
    KONA_HP_TEX_SEND_ARM_TABLE           = 0x17e,  /* ARM arm_tex_send_arm_table (texture) */
    KONA_HP_SLOP                         = 0x17f,  /* ARM arm_slop (context, memory and host interface), sends mgesi_Cram2ODMA mgesi_Eram2ODMA mgesi_SR2ODMA +16 */
    KONA_HP_VARRAY_SET_CMDS              = 0x180,  /* ARM arm_varray_set_cmds (vertex arrays, evaluators and patches); libGLcore update_cmpnd_cmd stores 1 word */
    KONA_HP_VARRAY_SETUP                 = 0x181,  /* ARM arm_varray_setup (vertex arrays, evaluators and patches) */
    KONA_HP_VARRAY_BGN_LOOP              = 0x182,  /* ARM arm_varray_bgn_loop (vertex arrays, evaluators and patches) */
    KONA_HP_VARRAY_LOOP00                = 0x183,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP01                = 0x184,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP02                = 0x185,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP03                = 0x186,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP04                = 0x187,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP05                = 0x188,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP06                = 0x189,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP07                = 0x18a,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP08                = 0x18b,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP09                = 0x18c,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP0A                = 0x18d,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP0B                = 0x18e,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP0C                = 0x18f,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP0D                = 0x190,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP0E                = 0x191,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP0F                = 0x192,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP10                = 0x193,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP11                = 0x194,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP12                = 0x195,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP13                = 0x196,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP14                = 0x197,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP15                = 0x198,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP16                = 0x199,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP17                = 0x19a,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP18                = 0x19b,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP19                = 0x19c,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP1A                = 0x19d,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP1B                = 0x19e,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP1C                = 0x19f,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP1D                = 0x1a0,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP1E                = 0x1a1,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_LOOP1F                = 0x1a2,  /* routed: command 0, 1 word, untyped, distributor entry 0x01d at trigger.s:7 (mges_NullCommand) */
    KONA_HP_VARRAY_UNSETUP               = 0x1a3,  /* ARM arm_varray_unsetup (vertex arrays, evaluators and patches) */
    KONA_HP_SPRITEPARAMETERI             = 0x1a4,  /* ARM arm_spriteparameteri (raster and pipeline state) */
    KONA_HP_SPRITEPARAMETERFV            = 0x1a5,  /* ARM arm_spriteparameterfv (raster and pipeline state), sends mgeb_Sprite */
    KONA_HP_VIDEO_CMD                    = 0x1a6,  /* ARM arm_video_cmd (display generator and swap); libGLcore ChannelRect stores 10 words */
    KONA_HP_POINTPARAMETERF              = 0x1a7,  /* ARM arm_pointparameterf (raster and pipeline state), sends mgeb_PointParameter */
    KONA_HP_POINTPARAMETERFV             = 0x1a8,  /* ARM arm_pointparameterfv (raster and pipeline state), sends mgeb_PointParameter */
    KONA_HP_SWAPTMESH                    = 0x1a9,  /* routed: command 387, 1 word, single, distributor entry 0x377 at tri.s:84 */
    KONA_HP_BIND_2D_CLIPMAP_TEXTURE      = 0x1aa,  /* ARM arm_bind_2d_clipmap_texture (texture), sends mgesi_BshRegisterWriteN mgeb_ClipmapXform; libGLcore setClipmapRegisters stores 8 words */
    KONA_HP_PVERTEX_V3F                  = 0x1ab,  /* routed: command 206, 3 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_C4UB             = 0x1ac,  /* routed: command 206, 4 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_N3S              = 0x1ad,  /* routed: command 206, 4 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_C4UB_N3S         = 0x1ae,  /* routed: command 206, 5 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_T2F              = 0x1af,  /* routed: command 206, 5 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_C4UB_T2F         = 0x1b0,  /* routed: command 206, 6 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_N3S_T2F          = 0x1b1,  /* routed: command 206, 6 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2F     = 0x1b2,  /* routed: command 206, 7 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_T2S              = 0x1b3,  /* routed: command 206, 4 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_C4UB_T2S         = 0x1b4,  /* routed: command 206, 5 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_N3S_T2S          = 0x1b5,  /* routed: command 206, 5 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2S     = 0x1b6,  /* routed: command 206, 6 words, single, distributor entry 0x0e3 at tstrip.s:304 (mgesi_TriangleStripWithSwapOdd) */
    KONA_HP_PVERTEX_SETUP                = 0x1b7,  /* ARM arm_pvertex_setup (vertex arrays, evaluators and patches) */
    KONA_HP_INSTRUMENTS_BUFFER           = 0x1b8,  /* ARM arm_instruments_buffer (0x0c03ce84) clears the two instrument buffer words at r8 + 0x858 and reads one final word */
    KONA_HP_START_INSTRUMENTS            = 0x1b9,  /* ARM arm_start_instruments (instruments), sends mgesi_StartInstruments; libGLcore __glkonim_StartInstrumentsSGIX stores 1 word */
    KONA_HP_STOP_INSTRUMENTS             = 0x1ba,  /* ARM arm_stop_instruments (instruments), sends mgesi_StopInstruments; libGLcore __glkonim_StopInstrumentsSGIX stores 1 word */
    KONA_HP_TEXELSTOREI                  = 0x1bb,  /* ARM arm_texelstorei (0x0c02af20) keeps a texel-store parameter in the pixel shadow and marks the pixel state dirty; libGLcore __glkonim_TextureStorei sends it */
    KONA_HP_RESTART_SELECTFEED           = 0x1bc,  /* ARM arm_restart_selectfeed (context, memory and host interface) */
    KONA_HP_REFERENCE_PLANE              = 0x1bd,  /* routed: command 144, 8 words, double, engine handler mgebi_ReferencePlane; libGLcore __glkonim_ReferencePlaneSGIX stores 8 words */
    KONA_HP_SETCOLORNORMAL               = 0x1be,  /* routed: command 192, 1 word, single, distributor entry 0x04c at tstrip.s:22 */
    KONA_HP_DEFORM                       = 0x1bf,  /* routed: command 128, 1 word, single, distributor entry 0x226 at qstrip.s:22 */
    KONA_HP_DEFORMATION_MAP3_1F          = 0x1c0,  /* routed: command 221, 31 words, single, engine handler mgeb_DeformationMap3_1 */
    KONA_HP_DEFORMATION_MAP3_1D          = 0x1c1,  /* routed: command 223, 7 words, single, distributor entry 0x0b1 at tstrip.s:193 */
    KONA_HP_DEFORMATION_MAP3_1D_cont     = 0x1c2,  /* routed: command 221, 24 words, double, engine handler mgeb_DeformationMap3_1 */
    KONA_HP_LOAD_IDENTITY_DEFORMATION    = 0x1c3,  /* routed: command 222, 1 word, type 1, engine handler mgeb_LoadIdentityDeformation; libGLcore __glkonim_LoadIdentityDeformationMapSGIX stores 1 word */
    KONA_HP_BIND_ARM_TEX_CACHE           = 0x1c4,  /* ARM arm_bind_arm_tex_cache (0x0c0252f4) reads one index and marks that tex_cache entry invalid (both words set to -1) */
    KONA_HP_FREE_ARM_TEX_CACHE           = 0x1c5,  /* ARM arm_free_arm_tex_cache (raster and pipeline state), sends mgesi_FillTMLoadFifo */
    KONA_HP_GET_DEFORMATION              = 0x1c6,  /* ARM arm_get_deformation (queries), sends mgesi_StartRdata mgesi_GetDeformation mgesi_FinishRdata */
    KONA_HP_SHADOW_TEXTURE               = 0x1c7,  /* ARM arm_shadow_texture (texture), sends mgesi_BshRegisterWriteN */
    KONA_HP_IDMACOPYLIST_LDMA            = 0x1c8,  /* ARM arm_idmacopylist_ldma (display lists and DMA) */
    KONA_HP_TMESHMODE                    = 0x1c9,  /* ARM arm_tmeshmode (raster and pipeline state) */
    KONA_HP_LOAD_GE_XFORM_ATTRIB         = 0x1ca,  /* ARM arm_load_ge_xform_attrib (raster and pipeline state), sends mgeb_InitFFTFactors */
    KONA_HP_GET_GE_XFORM_ATTRIB          = 0x1cb,  /* ARM arm_get_ge_xform_attrib (queries), sends mgesi_StartRdata mgesi_FinishRdata */
    KONA_HP_FLUSH_RASTER                 = 0x1cc,  /* ARM arm_flush_raster (buffers and windows), sends mgesi_FlushRM; libGLcore __glkonim_FlushRasterSGIX stores 1 word */
    KONA_HP_READ_INSTRUMENTS             = 0x1cd,  /* ARM arm_read_instruments (instruments), sends mgesi_StopInstruments mgesi_StartInstruments; libGLcore __glkonim_ReadInstrumentsSGIX stores 1 word */
    KONA_HP_LAZYMODE                     = 0x1ce,  /* ARM arm_lazymode (raster and pipeline state) */
    KONA_HP_PVERTEX_CLEANUP              = 0x1cf,  /* ARM arm_pvertex_cleanup (vertex arrays, evaluators and patches) */
    KONA_HP_SUBDIV_PATCH                 = 0x1d0,  /* ARM arm_subdiv_patch (vertex arrays, evaluators and patches), sends mges_SubdivTag */
    KONA_HP_SUBDIV_PATCH_SETUP           = 0x1d1,  /* ARM arm_subdiv_patch_setup (vertex arrays, evaluators and patches) */
    KONA_HP_SUBDIV_PATCH_CLEANUP         = 0x1d2,  /* ARM arm_subdiv_patch_cleanup (vertex arrays, evaluators and patches) */
    KONA_HP_SUBDIV_PATCH_PARAMETER       = 0x1d3,  /* ARM arm_subdiv_patch_parameter (vertex arrays, evaluators and patches), sends mgeb_Subdiv */
    KONA_HP_BEGIN_SUBDIV_PATCH           = 0x1d4,  /* routed: command 405, 1 word, single, distributor entry 0x39f at lines.s:81 */
    KONA_HP_BIND_TEXTURE                 = 0x1d5,  /* ARM arm_bind_texture (texture), sends mgesi_TbusRegWrite mgesi_FillTMLoadFifo mgeb_SkipNextTextureAddr +3 */
    KONA_HP_TEXGEN_POP                   = 0x1d6,  /* ARM arm_texgen_pop (texture), sends mgeb_LoadEram */
    KONA_HP_CHANGE_POST_TEX_SCALE_BIAS   = 0x1d7,  /* ARM arm_change_post_tex_scale_bias (0x0c025688) reads a texture id and three words and writes them through descriptor 0x5850d800 when that texture is bound; libGLcore __glKonTexParameter sends it */
    KONA_HP_SKIP2                        = 0x1d8,  /* routed: command 192, 1 word, untyped, distributor entry 0x04c at tstrip.s:22 */
    KONA_HP_SKIP4                        = 0x1d9,  /* routed: command 192, 3 words, untyped, distributor entry 0x04c at tstrip.s:22 */
    KONA_HP_SKIP5                        = 0x1da,  /* routed: command 192, 4 words, untyped, distributor entry 0x04c at tstrip.s:22 */
    KONA_HP_SWAP_CNTRL                   = 0x1db,  /* ARM arm_swap_cntrl (display generator and swap), sends mgesi_VCbusWrite */
    KONA_HP_F3_WAR                       = 0x1dc,  /* ARM arm_f3_war (context, memory and host interface) */
    KONA_HP_GE_INTR                      = 0x1dd,  /* ARM arm_ge_intr (context, memory and host interface) */
    KONA_HP_MEM_RESUME                   = 0x1de,  /* ARM arm_mem_resume (context, memory and host interface) */
    KONA_HP_MEM_SUSPEND                  = 0x1df,  /* ARM arm_mem_suspend (context, memory and host interface) */
    KONA_HP_TEX_ARM_CACHE_INDEX_INVALID  = 0x1e0,  /* ARM arm_tex_arm_cache_index_invalid (0x0c02604c) reads a kind (0, 1 or 2) and an index and forgets the remembered index of that kind when it matches; libGLcore subtractTexTableUsage sends it */
    KONA_HP_MEM_COPYDOWN                 = 0x1e1,  /* ARM arm_mem_copydown (context, memory and host interface) */
    KONA_HP_MEM_SWAPIN                   = 0x1e2,  /* ARM arm_mem_swapin (context, memory and host interface) */
    KONA_HP_MEM_SWAPOUT                  = 0x1e3,  /* ARM arm_mem_swapout (context, memory and host interface) */
    KONA_HP_MEM_RESERVE                  = 0x1e4,  /* ARM arm_mem_reserve (context, memory and host interface) */
    KONA_HP_GEROLLCALL                   = 0x1e5,  /* ARM arm_gerollcall (context, memory and host interface), sends mgesi_PrintNum */
    KONA_HP_DISPMODE                     = 0x1e6,  /* ARM arm_dispmode (display generator and swap), sends mgesi_VCbusWrite */
    KONA_HP_RETRACE_SEQID                = 0x1e7,  /* ARM arm_retrace_seqid (display generator and swap), sends mgesi_VCbusWrite */
    KONA_HP_ARM_NOP                      = 0x1e8,  /* ARM arm_arm_nop (context, memory and host interface) */
    KONA_HP_GETCONFIG                    = 0x1e9,  /* ARM arm_getconfig (0x0c022474) answers by read-back: a count of 0x1de to raster register 0x476, then 0x1de words of the board-configuration block at 0x04067edc */
    KONA_HP_PIPE_SYNC                    = 0x1ea,  /* ARM arm_pipe_sync (context, memory and host interface) */
    KONA_HP_DO_IDMA                      = 0x1eb,  /* ARM arm_do_idma (display lists and DMA) */
    KONA_HP_EEPROM_OP                    = 0x1ec,  /* ARM arm_eeprom_op (context, memory and host interface) */
    KONA_HP_DMAPOOL_SETUP                = 0x1ed,  /* ARM arm_dmapool_setup (context, memory and host interface) */
    KONA_HP_VALIDATE_READCLIP            = 0x1ee,  /* ARM arm_validate_readclip (buffers and windows) */
    KONA_HP_GED_VERIF_LOAD               = 0x1ef,  /* ARM arm_ged_verif_load (context, memory and host interface) */
    KONA_HP_GED_VERIF_DUMP               = 0x1f0,  /* ARM arm_ged_verif_dump (context, memory and host interface), sends mges_DiagDeactivate */
    KONA_HP_PIPE_SETUP                   = 0x1f1,  /* ARM arm_pipe_setup (context, memory and host interface), sends mgesi_PipeSetup */
    KONA_HP_RDATA_SETUP                  = 0x1f2,  /* ARM arm_rdata_setup (context, memory and host interface) */
    KONA_HP_VALIDATE_CLIP                = 0x1f3,  /* ARM arm_validate_clip (buffers and windows), sends mgesi_TbusRegWrite */
    KONA_HP_VALIDATE_BANK                = 0x1f4,  /* ARM arm_validate_bank (buffers and windows) */
    KONA_HP_START_SELECTFEED             = 0x1f5,  /* ARM arm_start_selectfeed (context, memory and host interface) */
    KONA_HP_FINISH_SELECTFEED            = 0x1f6,  /* ARM arm_finish_selectfeed (context, memory and host interface) */
    KONA_HP_CONTEXT_DESTROY              = 0x1f7,  /* ARM arm_context_destroy (context, memory and host interface), sends mgeb_ContextDestroy */
    KONA_HP_CONTEXT_MOPUP                = 0x1f8,  /* ARM arm_context_mopup (context, memory and host interface), sends mgebi_NullCommand mgeb_ContextDeactReconfigureFifo */
    KONA_HP_CONTEXT_LOAD                 = 0x1f9,  /* ARM arm_context_load (context, memory and host interface), sends mges_ContextLoadODMA mges_ContextLoadBEF mgeb_ContextLoadCram +1 */
    KONA_HP_CONTEXT_ACTIVATE             = 0x1fa,  /* ARM arm_context_activate (context, memory and host interface), sends mgeb_ContextLoadFlagRegs mgeb_DisableUserClipPlane mges_TBUS_1 +1 */
    KONA_HP_CONTEXT_FIFO_SYNC            = 0x1fb,  /* ARM arm_context_fifo_sync (context, memory and host interface) */
    KONA_HP_CONTEXT_DEACTIVATE           = 0x1fc,  /* ARM arm_context_deactivate (context, memory and host interface), sends mges_ContextDeactGED mgeb_ContextDeactReconfigureFifo mges_ContextDeactFinish */
    KONA_HP_CONTEXT_INIT                 = 0x1fd,  /* ARM arm_context_init (context, memory and host interface), sends mgeb_ContextLoadEram */
    KONA_HP_KERNEL_PRIVATE               = 0x1fe,  /* ARM arm_kernel_private: accepted and ignored */
    KONA_HP_WG_FLUSH_1                   = 0x1ff,  /* ARM arm_wg_flush_1: refused, ends in the error handler */
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
    KONA_HP_KPM_SPARE_0                  = 0x200,  /* kpm row "**** 0x0", no host token */
    KONA_HP_KPM_SPARE_1                  = 0x201,  /* kpm row "**** 0x1", no host token */
    KONA_HP_KPM_SPARE_2                  = 0x202,  /* kpm row "**** 0x2", no host token */
    KONA_HP_KPM_SPARE_3                  = 0x203,  /* kpm row "**** 0x3", no host token */
    KONA_HP_KPM_SPARE_4                  = 0x204,  /* kpm row "**** 0x4", no host token */
    KONA_HP_KPM_SPARE_5                  = 0x205,  /* kpm row "**** 0x5", no host token */
    KONA_HP_KPM_SPARE_6                  = 0x206,  /* kpm row "**** 0x6", no host token */
    KONA_HP_KPM_SPARE_7                  = 0x207,  /* kpm row "**** 0x7", no host token */
    KONA_HP_KPM_SPARE_8                  = 0x208,  /* kpm row "**** 0x8", no host token */
    KONA_HP_KPM_SPARE_9                  = 0x209,  /* kpm row "**** 0x9", no host token */
    KONA_HP_KPM_SPARE_A                  = 0x20a,  /* kpm row "**** 0xa", no host token */
    KONA_HP_KPM_SPARE_B                  = 0x20b,  /* kpm row "**** 0xb", no host token */
    KONA_HP_KPM_SPARE_C                  = 0x20c,  /* kpm row "**** 0xc", no host token */
    KONA_HP_KPM_SPARE_D                  = 0x20d,  /* kpm row "**** 0xd", no host token */
    KONA_HP_KPM_SPARE_E                  = 0x20e,  /* kpm row "**** 0xe", no host token */
    KONA_HP_KPM_PIXELS_STARTGEID         = 0x20f,  /* kpm row "**** PIXELS_STARTGEID", no host token */
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
 *
 *   HT_PACK_MODE=0x210 HT_ODMA_LLEN=0x211 HT_ODMA_STRIDE=0x212 PGTG_SCIS=0x213
 *   PGTG_SCIS_1=0x214 PGTG_ZRECT=0x215 PGTG_ZRECT_1=0x216 PGTG_ZRECT_2=0x217
 *   PGTG_ZRECT_3=0x218 PGTG_ZRECT_4=0x219 PGTG_ZRECT_5=0x21a
 *   PGTG_ZRECT_6=0x21b PGTG_ZRECT_7=0x21c PGTG_DRECT=0x21d PGTG_DRECT_1=0x21e
 *   PGTG_DRECT_2=0x21f PGTG_SIZE=0x220 PGTG_SIZE_1=0x221 PGTG_SIZE_2=0x222
 *   PGTG_SIZE_3=0x223 PGTG_ENABLES=0x224 PGTFPIMP_MSLOC=0x225
 *   PGTFPIMP_MSLOC_1=0x226 PG_GENERAL=0x227 PG_PSPEC=0x228 PG_BLOAT=0x229
 *   PG_Z_OFF=0x22a PG_MSK=0x22b PG_WIN_OFFSET_X=0x22c PG_WIN_OFFSET_Y=0x22d
 *   PG_SMASK=0x22e PG_STIPPLE=0x22f PG_STIPPLE_1=0x230 PG_STIPPLE_2=0x231
 *   PG_STIPPLE_3=0x232 PG_PRU=0x233 IMP_CONFIG=0x234 IMP_OP=0x235 IMP_MS=0x236
 *   IMP_CLIP=0x237 IMP_SZ0=0x238 IMP_SZ1=0x239 IMP_DEPTH_CLEAR=0x23a
 *   IMP_ADDR=0x23b IMP_BL=0x23c IMP_WMASK_BIT=0x23d IMP_WMASK_BIT_1=0x23e
 *   COMMON_IFMT=0x23f TGTML_TEXLD_MISC=0x240 TGTML_TEXLD_S1ST_RSTART=0x241
 *   TGTML_TEXLD_STSTART=0x242 TGTML_TEXLD_SIZE=0x243 TGTML_TEXLD_STEND=0x244
 *   TML_TEXLD_GLOBALOFFSET=0x245 TM_DRAW_GLOBALOFFSET=0x246 TM_MEMCONF=0x247
 *   TGTM_TEX_SIZE=0x248 TGTMTFT=0x249 TG_MAP_LEVEL=0x24a TG_LOD_SCALEST=0x24b
 *   TG_LOD_SCALER=0x24c TGTM_DCTEX_SIZE=0x24d TM_DRAW_DETAILMAP=0x24e
 *   TM_TEX_SIZE=0x24f TM_DRAW_CLIP_OFFSET=0x250 TM_DRAW_CLIP_BKPT=0x251
 *   TGTM_TEX_SCENTER=0x252 TGTM_TEX_TCENTER=0x253 TFT_SBIAS_EN=0x254
 *   TFT_SCALE=0x255 TFT_BIAS=0x256 TFT_TLUT=0x257 TM_DRAW_SHA_AMBIENT=0x258
 *   TM_DRAW_REDUNDANCY=0x259 TG_MISC=0x25a TFP_AFUNC=0x25b TFP_TEX=0x25c
 *   TFP_TEV=0x25d TFP_TEV_CC=0x25e TFP_TEV_CC1=0x25f TFP_AC=0x260
 *   TFP_FADE_MASK_LUT=0x261 TFP_FOG=0x262 TFP_FOG_CC=0x263 TFP_FOG_CC1=0x264
 *   TFP_FOG_OFFSET=0x265 TFP_PIX_FMT=0x266 TFP_COLOR_FMT=0x267 TFP_AMASK=0x268
 */

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

#define KONA_GE11_REG_EXECUTION_CONTROL              0x40000  /* "Execution Control Register" */
#define KONA_GE11_EXEC_GO                       0x00000001  /* bits from 0 */
#define KONA_GE11_EXEC_SSTEP                    0x00000002  /* bits from 1 */
#define KONA_GE11_EXEC_BPSET                    0x00000004  /* bits from 2 */
#define KONA_GE11_EXEC_BPSTALL                  0x00000008  /* bits from 3 */
#define KONA_GE11_EXEC_UCLAT                    0x00000010  /* bits from 4 */
#define KONA_GE11_EXEC_INVAL                    0x00000020  /* bits from 5 */

#define KONA_GE11_REG_BREAKPOINT_ADDRESS             0x40004  /* "Breakpoint Address Register" */

#define KONA_GE11_REG_RAMSCAN_CONTROL                0x40008  /* "RAMscan Control Register (trashed)" */

#define KONA_GE11_REG_WRITE_SYNC_FIFO                0x4000c  /* "Write/Sync FIFO Register" */
#define KONA_GE11_SYNCFIFO_DISABLE              0x00000001  /* bits from 0 */
#define KONA_GE11_SYNCFIFO_WM                   0x0000003e  /* bits from 1 */

#define KONA_GE11_REG_DIAG_SEL                       0x40010  /* "Diag Sel Register" */
#define KONA_GE11_DIAGSEL_OUTPUT                0x00000100  /* bits from 8 */

#define KONA_GE11_REG_ENABLE_MASK                    0x40014  /* "Enable Mask Register" */
#define KONA_GE11_ENABMSK_A                     0x00000007  /* bits from 0 */
#define KONA_GE11_ENABMSK_B                     0x00000070  /* bits from 4 */

#define KONA_GE11_REG_CM_OFIFO_TAG                   0x40018  /* "CM/Ofifo TAG Register" */
#define KONA_GE11_CMTAG_CFG                     0x00000001  /* bits from 0 */
#define KONA_GE11_CMTAG_WTRIM_WD                0x00000070  /* bits from 4 */
#define KONA_GE11_CMTAG_WTRIM_DLY               0x00000380  /* bits from 7 */
#define KONA_GE11_CMTAG_CTRIM_WD                0x00001c00  /* bits from 10 */
#define KONA_GE11_CMTAG_CTRIM_DLY               0x0000e000  /* bits from 13 */
#define KONA_GE11_CMTAG_PULSE_EN                0x00010000  /* bits from 16 */

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

/* Output FIFO 0, half A: write and read pointers. ESTABLISHED only as a
 * kpm table entry. No reader or writer in arm1.u (init_ge touches 0x40000,
 * 0x40010, 0x40018 and 0x40038), irsaudit (ge_host_reg_write reaches
 * distributor registers 0x233-0x236 only), the kernel or ge.u. unknown: no
 * shipped software or published source depends on it. */
#define KONA_GE11_REG_OFIFO0_A_STATUS                0x40020  /* "OFIFO0 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/* Output FIFO 0, half B: write and read pointers. ESTABLISHED only as a
 * kpm table entry. No reader or writer in arm1.u (init_ge touches 0x40000,
 * 0x40010, 0x40018 and 0x40038), irsaudit (ge_host_reg_write reaches
 * distributor registers 0x233-0x236 only), the kernel or ge.u. unknown: no
 * shipped software or published source depends on it. */
#define KONA_GE11_REG_OFIFO0_B_STATUS                0x40024  /* "OFIFO0 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/* Output FIFO 1, half A: write and read pointers. ESTABLISHED only as a
 * kpm table entry. No reader or writer in arm1.u (init_ge touches 0x40000,
 * 0x40010, 0x40018 and 0x40038), irsaudit (ge_host_reg_write reaches
 * distributor registers 0x233-0x236 only), the kernel or ge.u. unknown: no
 * shipped software or published source depends on it. */
#define KONA_GE11_REG_OFIFO1_A_STATUS                0x40028  /* "OFIFO1 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/* Output FIFO 1, half B: write and read pointers. ESTABLISHED only as a
 * kpm table entry. No reader or writer in arm1.u (init_ge touches 0x40000,
 * 0x40010, 0x40018 and 0x40038), irsaudit (ge_host_reg_write reaches
 * distributor registers 0x233-0x236 only), the kernel or ge.u. unknown: no
 * shipped software or published source depends on it. */
#define KONA_GE11_REG_OFIFO1_B_STATUS                0x4002c  /* "OFIFO1 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/* Output FIFO 2, half A: write and read pointers. ESTABLISHED only as a
 * kpm table entry. No reader or writer in arm1.u (init_ge touches 0x40000,
 * 0x40010, 0x40018 and 0x40038), irsaudit (ge_host_reg_write reaches
 * distributor registers 0x233-0x236 only), the kernel or ge.u. unknown: no
 * shipped software or published source depends on it. */
#define KONA_GE11_REG_OFIFO2_A_STATUS                0x40030  /* "OFIFO2 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/* Output FIFO 2, half B: write and read pointers. ESTABLISHED only as a
 * kpm table entry. No reader or writer in arm1.u (init_ge touches 0x40000,
 * 0x40010, 0x40018 and 0x40038), irsaudit (ge_host_reg_write reaches
 * distributor registers 0x233-0x236 only), the kernel or ge.u. unknown: no
 * shipped software or published source depends on it. */
#define KONA_GE11_REG_OFIFO2_B_STATUS                0x40034  /* "OFIFO2 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

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
 * takes its code in M[10:4] (M = code << 4 | 0x7f).
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
 * 0xcc, 0xac, 0xaa observed; layout INFERRED: low nibble integer flags,
 * high nibble float flags, each bit 3 = result <= 0, bit 2 = zero,
 * bit 1 = negative, bit 0 = a fourth condition (signed overflow, weakly).
 * A transfer's cc 0-7 tests the integer nibble, 8-15 the float nibble;
 * cc bits 2-1 choose the condition (0..3 = bit 3..0), cc bit 0 inverts.
 */
#define KONA_GE_FLAG_LE0                0x8
#define KONA_GE_FLAG_ZERO               0x4
#define KONA_GE_FLAG_NEG                0x2
#define KONA_GE_FLAG_FOURTH             0x1

#endif /* KONA_GE_H */
