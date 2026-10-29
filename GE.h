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
 * Signed components keep their sign in the top bits of their slot; the
 * low bits of a slot below a signed short are masked off.
 * INFERRED: the geometry engine reads a packed word as two 16-bit slots
 * (the low slot of word0 being the token), and bytes occupy the top byte
 * of each slot.
 *
 * INFERRED: variable-length commands carry their own counts in the
 * payload, since the token word has no room for one. Their grammars are
 * not in payloads.tsv because their emitters branch (UNKNOWN unless
 * stated elsewhere, e.g. DRAWTEXELS in RM.h).
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
 */
enum kona_hp_token {
    KONA_HP_DATA                         = 0x000,
    KONA_HP_BUFFER_CONFIG                = 0x001,
    KONA_HP_PACK                         = 0x002,
    KONA_HP_BEGIN_RECT                   = 0x003,
    KONA_HP_READBUFFER_CONFIG            = 0x004,
    KONA_HP_BITMAP_DLIST                 = 0x005,
    KONA_HP_BITMAP                       = 0x006,
    KONA_HP_LIGHTF                       = 0x007,
    KONA_HP_LIGHTI                       = 0x008,
    KONA_HP_LIGHTMODELF                  = 0x009,
    KONA_HP_LIGHTMODELI                  = 0x00a,
    KONA_HP_POLYGONSTIPPLE               = 0x00b,
    KONA_HP_SCISSOR                      = 0x00c,
    KONA_HP_TEXPARAMETERF                = 0x00d,
    KONA_HP_TEXPARAMETERI                = 0x00e,
    KONA_HP_TEXIMAGE1D                   = 0x00f,
    KONA_HP_TEXIMAGE2D                   = 0x010,
    KONA_HP_TEXENVF                      = 0x011,
    KONA_HP_TEXENVI                      = 0x012,
    KONA_HP_TEXGEND                      = 0x013,
    KONA_HP_TEXGENF                      = 0x014,
    KONA_HP_TEXGENI                      = 0x015,
    KONA_HP_TEXBIND                      = 0x016,
    KONA_HP_FEEDBACK_TYPE                = 0x017,
    KONA_HP_SELECTBUFFER                 = 0x018,
    KONA_HP_RENDERMODE                   = 0x019,
    KONA_HP_CLEAR                        = 0x01a,
    KONA_HP_CLEARACCUM                   = 0x01b,
    KONA_HP_CLEARINDEX                   = 0x01c,
    KONA_HP_CLEARCOLOR                   = 0x01d,
    KONA_HP_CLEARSTENCIL                 = 0x01e,
    KONA_HP_CLEARDEPTH                   = 0x01f,
    KONA_HP_STENCILMASK                  = 0x020,
    KONA_HP_COLORMASK                    = 0x021,
    KONA_HP_DEPTHMASK                    = 0x022,
    KONA_HP_INDEXMASK                    = 0x023,
    KONA_HP_ENABLE                       = 0x024,
    KONA_HP_DISABLE                      = 0x025,
    KONA_HP_EVALSTRIP1D                  = 0x026,
    KONA_HP_EVALSTRIP2D                  = 0x027,
    KONA_HP_MAPGRID1D                    = 0x028,
    KONA_HP_MAPGRID2D                    = 0x029,
    KONA_HP_MAPDATA1D                    = 0x02a,
    KONA_HP_MAPDATA2D                    = 0x02b,
    KONA_HP_MAPSPEC1D                    = 0x02c,
    KONA_HP_MAPSPEC2D                    = 0x02d,
    KONA_HP_LOGICOP                      = 0x02e,
    KONA_HP_PIXELZOOM                    = 0x02f,
    KONA_HP_PIXELTRANSFERF               = 0x030,
    KONA_HP_PIXELTRANSFERI               = 0x031,
    KONA_HP_PIXELSTOREF                  = 0x032,
    KONA_HP_PIXELSTOREI                  = 0x033,
    KONA_HP_PIXELMAPFV                   = 0x034,
    KONA_HP_PIXELMAPUIV                  = 0x035,
    KONA_HP_PIXELMAPUSV                  = 0x036,
    KONA_HP_READBUFFER                   = 0x037,
    KONA_HP_COPYPIXELS                   = 0x038,
    KONA_HP_READPIXELS                   = 0x039,
    KONA_HP_DRAWPIXELS                   = 0x03a,
    KONA_HP_GETCURRENT                   = 0x03b,
    KONA_HP_GETCLIPPLANE                 = 0x03c,
    KONA_HP_GETRASTER                    = 0x03d,
    KONA_HP_GETERROR                     = 0x03e,
    KONA_HP_GETFLOATV                    = 0x03f,
    KONA_HP_GETINTEGERV                  = 0x040,
    KONA_HP_GETLIGHTFV                   = 0x041,
    KONA_HP_GETLIGHTIV                   = 0x042,
    KONA_HP_GETMAPDV                     = 0x043,
    KONA_HP_GETMAPFV                     = 0x044,
    KONA_HP_GETMAPIV                     = 0x045,
    KONA_HP_GETMATERIALFV                = 0x046,
    KONA_HP_GETMATERIALIV                = 0x047,
    KONA_HP_GETPIXELMAPFV                = 0x048,
    KONA_HP_GETPIXELMAPUIV               = 0x049,
    KONA_HP_GETPIXELMAPUSV               = 0x04a,
    KONA_HP_GETPOLYGONSTIPPLE            = 0x04b,
    KONA_HP_GETV                         = 0x04c,
    KONA_HP_GETTEXENVFV                  = 0x04d,
    KONA_HP_GETTEXENVIV                  = 0x04e,
    KONA_HP_GETTEXGENDV                  = 0x04f,
    KONA_HP_GETTEXGENFV                  = 0x050,
    KONA_HP_GETTEXGENIV                  = 0x051,
    KONA_HP_GETTEXIMAGE                  = 0x052,
    KONA_HP_GETTEXPARAMETERFV            = 0x053,
    KONA_HP_GETTEXPARAMETERIV            = 0x054,
    KONA_HP_GETTEXLEVELPARAMETERFV       = 0x055,
    KONA_HP_GETTEXLEVELPARAMETERIV       = 0x056,
    KONA_HP_BEGIN_POINTS                 = 0x057,
    KONA_HP_BEGIN_LINES                  = 0x058,
    KONA_HP_BEGIN_LINELOOP               = 0x059,
    KONA_HP_BEGIN_LINESTRIP              = 0x05a,
    KONA_HP_BEGIN_TRIANGLES              = 0x05b,
    KONA_HP_BEGIN_TSTRIP                 = 0x05c,
    KONA_HP_BEGIN_TFAN                   = 0x05d,
    KONA_HP_BEGIN_QUADS                  = 0x05e,
    KONA_HP_BEGIN_QSTRIP                 = 0x05f,
    KONA_HP_BEGIN_POLYGON                = 0x060,
    KONA_HP_COLOR3B                      = 0x061,
    KONA_HP_COLOR3D                      = 0x062,
    KONA_HP_COLOR3F                      = 0x063,
    KONA_HP_COLOR3I                      = 0x064,
    KONA_HP_COLOR3S                      = 0x065,
    KONA_HP_COLOR3UB                     = 0x066,
    KONA_HP_COLOR3UI                     = 0x067,
    KONA_HP_COLOR3US                     = 0x068,
    KONA_HP_COLOR4B                      = 0x069,
    KONA_HP_COLOR4D                      = 0x06a,
    KONA_HP_COLOR4F                      = 0x06b,
    KONA_HP_COLOR4I                      = 0x06c,
    KONA_HP_COLOR4S                      = 0x06d,
    KONA_HP_COLOR4UB                     = 0x06e,
    KONA_HP_COLOR4UI                     = 0x06f,
    KONA_HP_COLOR4US                     = 0x070,
    KONA_HP_END                          = 0x071,
    KONA_HP_INDEXD                       = 0x072,
    KONA_HP_INDEXF                       = 0x073,
    KONA_HP_INDEXI                       = 0x074,
    KONA_HP_INDEXS                       = 0x075,
    KONA_HP_NORMAL3B                     = 0x076,
    KONA_HP_NORMAL3D                     = 0x077,
    KONA_HP_NORMAL3F                     = 0x078,
    KONA_HP_NORMAL3I                     = 0x079,
    KONA_HP_NORMAL3S                     = 0x07a,
    KONA_HP_TEXCOORD1D                   = 0x07b,
    KONA_HP_TEXCOORD1F                   = 0x07c,
    KONA_HP_TEXCOORD1I                   = 0x07d,
    KONA_HP_TEXCOORD1S                   = 0x07e,
    KONA_HP_TEXCOORD2D                   = 0x07f,
    KONA_HP_TEXCOORD2F                   = 0x080,
    KONA_HP_TEXCOORD2I                   = 0x081,
    KONA_HP_TEXCOORD2S                   = 0x082,
    KONA_HP_TEXCOORD3D                   = 0x083,
    KONA_HP_TEXCOORD3F                   = 0x084,
    KONA_HP_TEXCOORD3I                   = 0x085,
    KONA_HP_TEXCOORD3S                   = 0x086,
    KONA_HP_TEXCOORD4D                   = 0x087,
    KONA_HP_TEXCOORD4F                   = 0x088,
    KONA_HP_TEXCOORD4I                   = 0x089,
    KONA_HP_TEXCOORD4S                   = 0x08a,
    KONA_HP_VERTEX2D                     = 0x08b,
    KONA_HP_VERTEX2F                     = 0x08c,
    KONA_HP_VERTEX2I                     = 0x08d,
    KONA_HP_VERTEX2S                     = 0x08e,
    KONA_HP_VERTEX3D                     = 0x08f,
    KONA_HP_VERTEX3F                     = 0x090,
    KONA_HP_VERTEX3I                     = 0x091,
    KONA_HP_VERTEX3S                     = 0x092,
    KONA_HP_VERTEX4D                     = 0x093,
    KONA_HP_VERTEX4F                     = 0x094,
    KONA_HP_VERTEX4I                     = 0x095,
    KONA_HP_VERTEX4S                     = 0x096,
    KONA_HP_MATERIALF                    = 0x097,
    KONA_HP_MATERIALF_cont               = 0x098,
    KONA_HP_MATERIALI                    = 0x099,
    KONA_HP_MATERIALI_cont               = 0x09a,
    KONA_HP_EVAL_COORD1D                 = 0x09b,
    KONA_HP_EVAL_COORD1D_cont            = 0x09c,
    KONA_HP_EVAL_COORD1F                 = 0x09d,
    KONA_HP_EVAL_COORD1F_cont            = 0x09e,
    KONA_HP_EVAL_COORD2D                 = 0x09f,
    KONA_HP_EVAL_COORD2D_cont            = 0x0a0,
    KONA_HP_EVAL_COORD2F                 = 0x0a1,
    KONA_HP_EVAL_COORD2F_cont            = 0x0a2,
    KONA_HP_EVAL_POINT1                  = 0x0a3,
    KONA_HP_EVAL_POINT1_cont             = 0x0a4,
    KONA_HP_EVAL_POINT2                  = 0x0a5,
    KONA_HP_EVAL_POINT2_cont             = 0x0a6,
    KONA_HP_EDGEFLAG                     = 0x0a7,
    KONA_HP_RASTERPOS2D                  = 0x0a8,
    KONA_HP_RASTERPOS2F                  = 0x0a9,
    KONA_HP_RASTERPOS2I                  = 0x0aa,
    KONA_HP_RASTERPOS2S                  = 0x0ab,
    KONA_HP_RASTERPOS3D                  = 0x0ac,
    KONA_HP_RASTERPOS3F                  = 0x0ad,
    KONA_HP_RASTERPOS3I                  = 0x0ae,
    KONA_HP_RASTERPOS3S                  = 0x0af,
    KONA_HP_RASTERPOS4D                  = 0x0b0,
    KONA_HP_RASTERPOS4F                  = 0x0b1,
    KONA_HP_RASTERPOS4I                  = 0x0b2,
    KONA_HP_RASTERPOS4S                  = 0x0b3,
    KONA_HP_CLIPPLANE                    = 0x0b4,
    KONA_HP_COLORMATERIAL                = 0x0b5,
    KONA_HP_CULLFACE                     = 0x0b6,
    KONA_HP_FOGF                         = 0x0b7,
    KONA_HP_FOGI                         = 0x0b8,
    KONA_HP_FOGI_cont                    = 0x0b9,
    KONA_HP_FRONTFACE                    = 0x0ba,
    KONA_HP_HINT                         = 0x0bb,
    KONA_HP_LINESTIPPLE                  = 0x0bc,
    KONA_HP_LINEWIDTH                    = 0x0bd,
    KONA_HP_POINTSIZE                    = 0x0be,
    KONA_HP_POLYGONMODE                  = 0x0bf,
    KONA_HP_SHADEMODEL                   = 0x0c0,
    KONA_HP_PASSTHROUGH                  = 0x0c1,
    KONA_HP_POPNAME                      = 0x0c2,
    KONA_HP_PUSHNAME                     = 0x0c3,
    KONA_HP_DRAWBUFFER                   = 0x0c4,
    KONA_HP_ACCUM                        = 0x0c5,
    KONA_HP_FINISH                       = 0x0c6,
    KONA_HP_FLUSH                        = 0x0c7,
    KONA_HP_POPATTRIB                    = 0x0c8,
    KONA_HP_PUSHATTRIB                   = 0x0c9,
    KONA_HP_ALPHAFUNC                    = 0x0ca,
    KONA_HP_BLENDFUNC                    = 0x0cb,
    KONA_HP_STENCILFUNC                  = 0x0cc,
    KONA_HP_STENCILOP                    = 0x0cd,
    KONA_HP_DEPTHFUNC                    = 0x0ce,
    KONA_HP_DEPTHRANGE                   = 0x0cf,
    KONA_HP_MATRIXMODE                   = 0x0d0,
    KONA_HP_FRUSTUM                      = 0x0d1,
    KONA_HP_LOADIDENTITY                 = 0x0d2,
    KONA_HP_LOADMATRIXF                  = 0x0d3,
    KONA_HP_LOADMATRIXD                  = 0x0d4,
    KONA_HP_MULTMATRIXF                  = 0x0d5,
    KONA_HP_MULTMATRIXD                  = 0x0d6,
    KONA_HP_ORTHO                        = 0x0d7,
    KONA_HP_POPMATRIX                    = 0x0d8,
    KONA_HP_PUSHMATRIX                   = 0x0d9,
    KONA_HP_ROTATED                      = 0x0da,
    KONA_HP_ROTATEF                      = 0x0db,
    KONA_HP_SCALED                       = 0x0dc,
    KONA_HP_SCALEF                       = 0x0dd,
    KONA_HP_TRANSLATED                   = 0x0de,
    KONA_HP_TRANSLATEF                   = 0x0df,
    KONA_HP_WRAM2CRAM                    = 0x0e0,
    KONA_HP_GEPASSCMD                    = 0x0e1,
    KONA_HP_TBUS_1                       = 0x0e2,
    KONA_HP_VIEWPORT                     = 0x0e3,
    KONA_HP_SETERROR                     = 0x0e4,
    KONA_HP_END_OF_SIMULATION            = 0x0e5,
    KONA_HP_BLENDCOLOR                   = 0x0e6,
    KONA_HP_BLENDEQUATION                = 0x0e7,
    KONA_HP_COLORTABLE                   = 0x0e8,
    KONA_HP_COPYCOLORTABLE               = 0x0e9,
    KONA_HP_GETCOLORTABLE                = 0x0ea,
    KONA_HP_COLORTABLEPARAMETERFV        = 0x0eb,
    KONA_HP_GETCOLORTABLEPARAMETERFV     = 0x0ec,
    KONA_HP_LOAD_POST_TEX_SCALE_BIAS     = 0x0ed,
    KONA_HP_GETLINEMODEDIST              = 0x0ee,
    KONA_HP_CONVOLUTIONFILTER1D          = 0x0ef,
    KONA_HP_CONVOLUTIONFILTER2D          = 0x0f0,
    KONA_HP_CONVOLUTIONFILTER3D          = 0x0f1,
    KONA_HP_COPYCONVOLUTIONFILTER1D      = 0x0f2,
    KONA_HP_COPYCONVOLUTIONFILTER2D      = 0x0f3,
    KONA_HP_GETCONVOLUTIONFILTER         = 0x0f4,
    KONA_HP_SEPARABLEFILTER2D            = 0x0f5,
    KONA_HP_SEPARABLEFILTER3D            = 0x0f6,
    KONA_HP_GETSEPARABLEFILTER           = 0x0f7,
    KONA_HP_PIXEL_TRANSFORM_PARAMETERIV  = 0x0f8,
    KONA_HP_PIXEL_TRANSFORM_PARAMETERFV  = 0x0f9,
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERIV = 0x0fa,
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERFV = 0x0fb,
    KONA_HP_COPYTEXIMAGE1D               = 0x0fc,
    KONA_HP_COPYTEXIMAGE                 = 0x0fd,
    KONA_HP_COPYTEXSUBIMAGE1D            = 0x0fe,
    KONA_HP_WG_FLUSH_0                   = 0x0ff,
    KONA_HP_DATA_1                       = 0x100,
    KONA_HP_COPYTEXSUBIMAGE2D            = 0x101,
    KONA_HP_HISTOGRAM                    = 0x102,
    KONA_HP_RESETHISTOGRAM               = 0x103,
    KONA_HP_GETHISTOGRAM                 = 0x104,
    KONA_HP_GETHISTOGRAMPARAMETERIV      = 0x105,
    KONA_HP_BIND_LINEAR_TEXTURE          = 0x106,
    KONA_HP_MINMAX                       = 0x107,
    KONA_HP_RESETMINMAX                  = 0x108,
    KONA_HP_GETMINMAX                    = 0x109,
    KONA_HP_GETMINMAXPARAMETERIV         = 0x10a,
    KONA_HP_GET_LIGHT_ATTRIBS            = 0x10b,
    KONA_HP_INITNAMES                    = 0x10c,
    KONA_HP_LOADNAME                     = 0x10d,
    KONA_HP_SET_CURRENT_RASTER           = 0x10e,
    KONA_HP_FOGFUNC                      = 0x10f,
    KONA_HP_COPYISOVERLAPPED             = 0x110,
    KONA_HP_PIXEL_NOMODE                 = 0x111,
    KONA_HP_IRISGL_MODE                  = 0x112,
    KONA_HP_LMC_COLOR                    = 0x113,
    KONA_HP_VIDEO_SOURCE                 = 0x114,
    KONA_HP_COPYCONVISOVERLAPPED         = 0x115,
    KONA_HP_RESOLVEISSINGLECOMP          = 0x116,
    KONA_HP_SAMPLEPATTERN                = 0x117,
    KONA_HP_SAMPLEMASK                   = 0x118,
    KONA_HP_POPLIGHTS                    = 0x119,
    KONA_HP_PIXELTEXGEN                  = 0x11a,
    KONA_HP_POLYGONOFFSETEXT             = 0x11b,
    KONA_HP_TEXSUBIMAGE1D                = 0x11c,
    KONA_HP_TEXSUBIMAGE2D                = 0x11d,
    KONA_HP_TEXSUBIMAGE3D                = 0x11e,
    KONA_HP_TEXIMAGE3D                   = 0x11f,
    KONA_HP_TEXIMAGE4D                   = 0x120,
    KONA_HP_TEXSUBIMAGE4D                = 0x121,
    KONA_HP_GENTEXTURES1D                = 0x122,
    KONA_HP_GENTEXTURES2D                = 0x123,
    KONA_HP_GENTEXTURES3D                = 0x124,
    KONA_HP_ISTEXTURE                    = 0x125,
    KONA_HP_DELETETEXTURES               = 0x126,
    KONA_HP_BINDTEXTURE                  = 0x127,
    KONA_HP_X_INIT                       = 0x128,
    KONA_HP_X_LOADGC                     = 0x129,
    KONA_HP_X_LOADPOS                    = 0x12a,
    KONA_HP_X_LOADCLIP                   = 0x12b,
    KONA_HP_X_LOADCLIP_ARM               = 0x12c,
    KONA_HP_X_LOADSCISSOR                = 0x12d,
    KONA_HP_X_LOADCMAP                   = 0x12e,
    KONA_HP_X_LOADGAMMA                  = 0x12f,
    KONA_HP_X_LOADCURSOR                 = 0x130,
    KONA_HP_X_LOADCURSORCOLOR            = 0x131,
    KONA_HP_X_LOADXMAP_DID               = 0x132,
    KONA_HP_X_LOADXMAP_CONFIG            = 0x133,
    KONA_HP_GET_GE_TEXTURE_ATTRIB        = 0x134,
    KONA_HP_PIXEL_TRANSFORM              = 0x135,
    KONA_HP_X_PIX_SETUP                  = 0x136,
    KONA_HP_X_PIX_COPY                   = 0x137,
    KONA_HP_X_PIX_READ                   = 0x138,
    KONA_HP_X_PIX_WRITE                  = 0x139,
    KONA_HP_X_PIX_FINISH                 = 0x13a,
    KONA_HP_X_UNUSED3                    = 0x13b,
    KONA_HP_X_LOADSTIPPLE                = 0x13c,
    KONA_HP_X_STORESTIPPLE               = 0x13d,
    KONA_HP_X_ROTATESTIPPLE              = 0x13e,
    KONA_HP_X_UNUSED4                    = 0x13f,
    KONA_HP_X_UNUSED5                    = 0x140,
    KONA_HP_X_DATA1                      = 0x141,
    KONA_HP_X_DATA2                      = 0x142,
    KONA_HP_X_DATA3                      = 0x143,
    KONA_HP_X_DATA4                      = 0x144,
    KONA_HP_X_BDATA4                     = 0x145,
    KONA_HP_X_DATA5                      = 0x146,
    KONA_HP_X_DATA6                      = 0x147,
    KONA_HP_X_DATA7                      = 0x148,
    KONA_HP_X_DATA8                      = 0x149,
    KONA_HP_X_DATA9                      = 0x14a,
    KONA_HP_X_DATA10                     = 0x14b,
    KONA_HP_X_POINT                      = 0x14c,
    KONA_HP_X_POINT6                     = 0x14d,
    KONA_HP_X_POINT24                    = 0x14e,
    KONA_HP_X_POINT_R                    = 0x14f,
    KONA_HP_X_POINT6_R                   = 0x150,
    KONA_HP_X_POINT24_R                  = 0x151,
    KONA_HP_X_RECT                       = 0x152,
    KONA_HP_X_RECT6                      = 0x153,
    KONA_HP_X_BOX                        = 0x154,
    KONA_HP_X_BOX6                       = 0x155,
    KONA_HP_X_SPANS                      = 0x156,
    KONA_HP_X_SPANS2                     = 0x157,
    KONA_HP_X_SPANS6                     = 0x158,
    KONA_HP_X_SEGMENT                    = 0x159,
    KONA_HP_X_SEGMENT6                   = 0x15a,
    KONA_HP_X_LINE                       = 0x15b,
    KONA_HP_X_LINE6                      = 0x15c,
    KONA_HP_X_LINE_R                     = 0x15d,
    KONA_HP_X_LINE6_R                    = 0x15e,
    KONA_HP_X_BGPOINT                    = 0x15f,
    KONA_HP_X_BGPOINT6                   = 0x160,
    KONA_HP_X_BGPOINT24                  = 0x161,
    KONA_HP_X_UNUSED6                    = 0x162,
    KONA_HP_X_UNUSED7                    = 0x163,
    KONA_HP_X_UNUSED8                    = 0x164,
    KONA_HP_X_UNUSED9                    = 0x165,
    KONA_HP_DPLEX_SWAP                   = 0x166,
    KONA_HP_USERCOPYLIST_LDMA            = 0x167,
    KONA_HP_POLYGONOFFSET                = 0x168,
    KONA_HP_DIAG_DISPATCH                = 0x169,
    KONA_HP_DIAG_RESERVED0               = 0x16a,
    KONA_HP_DIAG_RESERVED1               = 0x16b,
    KONA_HP_COPYLIST_LDMA                = 0x16c,
    KONA_HP_EXECLIST_LDMA                = 0x16d,
    KONA_HP_EXECLIST_IDMA                = 0x16e,
    KONA_HP_MOVELIST_LDMA                = 0x16f,
    KONA_HP_EXECLIST_LDMA_N              = 0x170,
    KONA_HP_EXECLIST_IDMA_N              = 0x171,
    KONA_HP_GED_NOP                      = 0x172,
    KONA_HP_TEXSETUP                     = 0x173,
    KONA_HP_DRAWTEXELS                   = 0x174,
    KONA_HP_TEXLOAD_SETUP                = 0x175,
    KONA_HP_TEXLOAD_ID                   = 0x176,
    KONA_HP_ACTIVE_TEXTURE               = 0x177,
    KONA_HP_TEXBIND_ID                   = 0x178,
    KONA_HP_BIND_2D_MIPMAP_TEXTURE       = 0x179,
    KONA_HP_BIND_BICUBIC_TEXTURE         = 0x17a,
    KONA_HP_BIND_3D_MIPMAP_TEXTURE       = 0x17b,
    KONA_HP_BIND_3D_TEXTURE              = 0x17c,
    KONA_HP_BIND_DETAIL_TEXTURE          = 0x17d,
    KONA_HP_TEX_SEND_ARM_TABLE           = 0x17e,
    KONA_HP_SLOP                         = 0x17f,
    KONA_HP_VARRAY_SET_CMDS              = 0x180,
    KONA_HP_VARRAY_SETUP                 = 0x181,
    KONA_HP_VARRAY_BGN_LOOP              = 0x182,
    KONA_HP_VARRAY_LOOP00                = 0x183,
    KONA_HP_VARRAY_LOOP01                = 0x184,
    KONA_HP_VARRAY_LOOP02                = 0x185,
    KONA_HP_VARRAY_LOOP03                = 0x186,
    KONA_HP_VARRAY_LOOP04                = 0x187,
    KONA_HP_VARRAY_LOOP05                = 0x188,
    KONA_HP_VARRAY_LOOP06                = 0x189,
    KONA_HP_VARRAY_LOOP07                = 0x18a,
    KONA_HP_VARRAY_LOOP08                = 0x18b,
    KONA_HP_VARRAY_LOOP09                = 0x18c,
    KONA_HP_VARRAY_LOOP0A                = 0x18d,
    KONA_HP_VARRAY_LOOP0B                = 0x18e,
    KONA_HP_VARRAY_LOOP0C                = 0x18f,
    KONA_HP_VARRAY_LOOP0D                = 0x190,
    KONA_HP_VARRAY_LOOP0E                = 0x191,
    KONA_HP_VARRAY_LOOP0F                = 0x192,
    KONA_HP_VARRAY_LOOP10                = 0x193,
    KONA_HP_VARRAY_LOOP11                = 0x194,
    KONA_HP_VARRAY_LOOP12                = 0x195,
    KONA_HP_VARRAY_LOOP13                = 0x196,
    KONA_HP_VARRAY_LOOP14                = 0x197,
    KONA_HP_VARRAY_LOOP15                = 0x198,
    KONA_HP_VARRAY_LOOP16                = 0x199,
    KONA_HP_VARRAY_LOOP17                = 0x19a,
    KONA_HP_VARRAY_LOOP18                = 0x19b,
    KONA_HP_VARRAY_LOOP19                = 0x19c,
    KONA_HP_VARRAY_LOOP1A                = 0x19d,
    KONA_HP_VARRAY_LOOP1B                = 0x19e,
    KONA_HP_VARRAY_LOOP1C                = 0x19f,
    KONA_HP_VARRAY_LOOP1D                = 0x1a0,
    KONA_HP_VARRAY_LOOP1E                = 0x1a1,
    KONA_HP_VARRAY_LOOP1F                = 0x1a2,
    KONA_HP_VARRAY_UNSETUP               = 0x1a3,
    KONA_HP_SPRITEPARAMETERI             = 0x1a4,
    KONA_HP_SPRITEPARAMETERFV            = 0x1a5,
    KONA_HP_VIDEO_CMD                    = 0x1a6,
    KONA_HP_POINTPARAMETERF              = 0x1a7,
    KONA_HP_POINTPARAMETERFV             = 0x1a8,
    KONA_HP_SWAPTMESH                    = 0x1a9,
    KONA_HP_BIND_2D_CLIPMAP_TEXTURE      = 0x1aa,
    KONA_HP_PVERTEX_V3F                  = 0x1ab,
    KONA_HP_PVERTEX_V3F_C4UB             = 0x1ac,
    KONA_HP_PVERTEX_V3F_N3S              = 0x1ad,
    KONA_HP_PVERTEX_V3F_C4UB_N3S         = 0x1ae,
    KONA_HP_PVERTEX_V3F_T2F              = 0x1af,
    KONA_HP_PVERTEX_V3F_C4UB_T2F         = 0x1b0,
    KONA_HP_PVERTEX_V3F_N3S_T2F          = 0x1b1,
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2F     = 0x1b2,
    KONA_HP_PVERTEX_V3F_T2S              = 0x1b3,
    KONA_HP_PVERTEX_V3F_C4UB_T2S         = 0x1b4,
    KONA_HP_PVERTEX_V3F_N3S_T2S          = 0x1b5,
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2S     = 0x1b6,
    KONA_HP_PVERTEX_SETUP                = 0x1b7,
    KONA_HP_INSTRUMENTS_BUFFER           = 0x1b8,
    KONA_HP_START_INSTRUMENTS            = 0x1b9,
    KONA_HP_STOP_INSTRUMENTS             = 0x1ba,
    KONA_HP_TEXELSTOREI                  = 0x1bb,
    KONA_HP_RESTART_SELECTFEED           = 0x1bc,
    KONA_HP_REFERENCE_PLANE              = 0x1bd,
    KONA_HP_SETCOLORNORMAL               = 0x1be,
    KONA_HP_DEFORM                       = 0x1bf,
    KONA_HP_DEFORMATION_MAP3_1F          = 0x1c0,
    KONA_HP_DEFORMATION_MAP3_1D          = 0x1c1,
    KONA_HP_DEFORMATION_MAP3_1D_cont     = 0x1c2,
    KONA_HP_LOAD_IDENTITY_DEFORMATION    = 0x1c3,
    KONA_HP_BIND_ARM_TEX_CACHE           = 0x1c4,
    KONA_HP_FREE_ARM_TEX_CACHE           = 0x1c5,
    KONA_HP_GET_DEFORMATION              = 0x1c6,
    KONA_HP_SHADOW_TEXTURE               = 0x1c7,
    KONA_HP_IDMACOPYLIST_LDMA            = 0x1c8,
    KONA_HP_TMESHMODE                    = 0x1c9,
    KONA_HP_LOAD_GE_XFORM_ATTRIB         = 0x1ca,
    KONA_HP_GET_GE_XFORM_ATTRIB          = 0x1cb,
    KONA_HP_FLUSH_RASTER                 = 0x1cc,
    KONA_HP_READ_INSTRUMENTS             = 0x1cd,
    KONA_HP_LAZYMODE                     = 0x1ce,
    KONA_HP_PVERTEX_CLEANUP              = 0x1cf,
    KONA_HP_SUBDIV_PATCH                 = 0x1d0,
    KONA_HP_SUBDIV_PATCH_SETUP           = 0x1d1,
    KONA_HP_SUBDIV_PATCH_CLEANUP         = 0x1d2,
    KONA_HP_SUBDIV_PATCH_PARAMETER       = 0x1d3,
    KONA_HP_BEGIN_SUBDIV_PATCH           = 0x1d4,
    KONA_HP_BIND_TEXTURE                 = 0x1d5,
    KONA_HP_TEXGEN_POP                   = 0x1d6,
    KONA_HP_CHANGE_POST_TEX_SCALE_BIAS   = 0x1d7,
    KONA_HP_SKIP2                        = 0x1d8,
    KONA_HP_SKIP4                        = 0x1d9,
    KONA_HP_SKIP5                        = 0x1da,
    KONA_HP_SWAP_CNTRL                   = 0x1db,
    KONA_HP_F3_WAR                       = 0x1dc,
    KONA_HP_GE_INTR                      = 0x1dd,
    KONA_HP_MEM_RESUME                   = 0x1de,
    KONA_HP_MEM_SUSPEND                  = 0x1df,
    KONA_HP_TEX_ARM_CACHE_INDEX_INVALID  = 0x1e0,
    KONA_HP_MEM_COPYDOWN                 = 0x1e1,
    KONA_HP_MEM_SWAPIN                   = 0x1e2,
    KONA_HP_MEM_SWAPOUT                  = 0x1e3,
    KONA_HP_MEM_RESERVE                  = 0x1e4,
    KONA_HP_GEROLLCALL                   = 0x1e5,
    KONA_HP_DISPMODE                     = 0x1e6,
    KONA_HP_RETRACE_SEQID                = 0x1e7,
    KONA_HP_ARM_NOP                      = 0x1e8,
    KONA_HP_GETCONFIG                    = 0x1e9,
    KONA_HP_PIPE_SYNC                    = 0x1ea,
    KONA_HP_DO_IDMA                      = 0x1eb,
    KONA_HP_EEPROM_OP                    = 0x1ec,
    KONA_HP_DMAPOOL_SETUP                = 0x1ed,
    KONA_HP_VALIDATE_READCLIP            = 0x1ee,
    KONA_HP_GED_VERIF_LOAD               = 0x1ef,
    KONA_HP_GED_VERIF_DUMP               = 0x1f0,
    KONA_HP_PIPE_SETUP                   = 0x1f1,
    KONA_HP_RDATA_SETUP                  = 0x1f2,
    KONA_HP_VALIDATE_CLIP                = 0x1f3,
    KONA_HP_VALIDATE_BANK                = 0x1f4,
    KONA_HP_START_SELECTFEED             = 0x1f5,
    KONA_HP_FINISH_SELECTFEED            = 0x1f6,
    KONA_HP_CONTEXT_DESTROY              = 0x1f7,
    KONA_HP_CONTEXT_MOPUP                = 0x1f8,
    KONA_HP_CONTEXT_LOAD                 = 0x1f9,
    KONA_HP_CONTEXT_ACTIVATE             = 0x1fa,
    KONA_HP_CONTEXT_FIFO_SYNC            = 0x1fb,
    KONA_HP_CONTEXT_DEACTIVATE           = 0x1fc,
    KONA_HP_CONTEXT_INIT                 = 0x1fd,
    KONA_HP_KERNEL_PRIVATE               = 0x1fe,
    KONA_HP_WG_FLUSH_1                   = 0x1ff,
};

/*
 * kpm's table continues past the token set with 89 more names, at
 * indices 0x210-0x268 (the same vaddr arithmetic). They name raster and
 * host-interface registers rather than commands. ESTABLISHED: 68 of them are
 * register names in kpm's raster register table (RM.h); 18 more are the
 * same names with a _1.._7 suffix (PGTG_ZRECT_1..7 after PGTG_ZRECT, whose
 * table entry has eight full-word fields), which INFERS that a suffix names
 * an extra word of a multi-word register. Three (HT_PACK_MODE, HT_ODMA_LLEN,
 * HT_ODMA_STRIDE) are in neither table. Why the list sits after the
 * command tokens (perhaps as register shadow slots the geometry engine
 * keeps for context save) is UNKNOWN.
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
 *  - ucode/KONA/ge_symbols lists 1100 geometry-engine microcode labels with
 *    addresses (e.g. mgeb_EvalMapSpec1D 0x53); the token -> handler dispatch
 *    in ge.u / ge.hex has not been located, so no label is tied to a token.
 *  - ge.hex lines are a 16-bit address and a 72-bit (18 hex digit) word, so
 *    the geometry-engine instruction is INFERRED to be 72 bits wide.
 */

/*
 * Geometry-engine (GE11) diagnostic registers.
 *
 * ESTABLISHED: kpm's table of 24-byte records {kind, address, name, value,
 * mask, shift} from vaddr 0x100bb2a8 (64 records, 15 registers at
 * 0x40000-0x40038), extracted to diags/kpm/ge_registers.tsv. The defines
 * below give each register's address with kpm's description, and each
 * field's mask. The record's value column equals the mask for one-bit
 * fields and the shift for wider ones; its use is UNKNOWN.
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

#define KONA_GE11_REG_OFIFO0_A_STATUS                0x40020  /* "OFIFO0 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

#define KONA_GE11_REG_OFIFO0_B_STATUS                0x40024  /* "OFIFO0 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

#define KONA_GE11_REG_OFIFO1_A_STATUS                0x40028  /* "OFIFO1 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

#define KONA_GE11_REG_OFIFO1_B_STATUS                0x4002c  /* "OFIFO1 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

#define KONA_GE11_REG_OFIFO2_A_STATUS                0x40030  /* "OFIFO2 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

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


#endif /* KONA_GE_H */
