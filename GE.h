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
 *










 * The GE11 revision program is gevers_ucode in the 6.5.30m kernel unix.
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
 * its map entry, command number (bits 15-23), count field (bits 6-8 in the
 * geometry form, bits 6-10 otherwise) and type, and the engine handler the
 * handler table binds to that number where one is bound (ucode/icu_map.tsv,
 * ucode/hw_route.tsv, ucode/arm1.md, ucode/ged.md). "libGLcore.so f stores
 * n words" is the fixed payload from libglcore/payloads.tsv. A separate
 * unlabelled paragraph above lists the engine handlers whose slots the ARM
 * handler's code loads; it names them and does not explain them. What each
 * engine handler computes is in ucode/ge_handlers.md by module. Tokens
 * that still lack a hand-read role show the routing facts under "Route:".
 */
enum kona_hp_token {
    /* Read at arm1.u arm_data 0x0c026590 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_DATA` (0x000). Inferred: The token map runs a one-instruction stub
     * at 0x0c026590 that branches to arm_badcmd; that prints the current and
     * previous token numbers, reads and prints 100 payload words, then spins
     * reading words, so the pipe would hang. A zero word stored at window
     * offset 0 is payload, so the token is reached only by a host error
     * (inferred). Payload none read by the stub (arm_badcmd drains 100):
     * nothing: the token is refused and no payload is defined. Established:
     * the token map runs `arm_data` at arm1.u 0x0c026590, a stub that ends in
     * `arm_badcmd`. No sender found as a command token in libGLcore, the X
     * module or the kernel commands table. tokens.tsv counts 20 kernel sites
     * for 0x000 (functions whose first stored constant is 0); not traced,
     * probably a leading zero payload word. */
    KONA_HP_DATA                         = 0x000,

    /* Engine handlers whose slots the code of `arm_buffer_config` loads, in
     * order: `mgesi_TbusRegWrite`, `mgeb_CI_Mode`, `mgeb_RGBA_Mode`. Read at
     * arm1.u arm_buffer_config 0x0c0131a0 (calls XferMask, XferMaskRpos,
     * init_multisample, late_state_init, resolve_banks,
     * SetFbState; engine handlers mgesi_TbusRegWrite, mgeb_CI_Mode slot 334,
     * mgeb_RGBA_Mode slot 333). */

    /* `HP_BUFFER_CONFIG` (0x001). Inferred: Stores the ten words as bytes in
     * the state shadow (depth size rounded up to a multiple of 8), recomputes
     * the distributor transfer masks, derives bank counts, writes the colour,
     * depth, stencil and address raster registers and multisample setup,
     * selects CI or RGBA engine mode, then rebuilds banks and framebuffer
     * state. Payload 10: Framebuffer layout: level, RGB component size,
     * colour-index size, double-buffer, stereo, multisample count, depth
     * size, stencil size, accumulation size, auxiliary buffer count (field
     * meanings from the emitter debug strings). Established: the token map
     * runs `arm_buffer_config` at arm1.u 0x0c0131a0. Sent by libGLcore.so
     * kona_writeconfig (kon_context.s); first example in
     * docs/inventory/tokens.tsv is __glKonCreateContext. */
    KONA_HP_BUFFER_CONFIG                = 0x001,

    /* Read at arm1.u arm_pack 0x0c03949c, table pack_cmd 0x0c039538 (16 pairs
     * of token number and bits, zero token ends). */

    /* `HP_PACK` (0x002). Established: Rewrites 16 hardware token-map entries
     * (the byte and short forms of colour, normal, texture coordinate and
     * vertex tokens) from a pair table: it clears bits 5-8 and 27-28 of each
     * current entry and ORs in the table value, with bit 0 of the register at
     * 0x200050 set during the edit. It then sends 0 through descriptor
     * 0x06400020 and sets bit 0x40 of r8+0xcf0. Payload 1 (always 0): One
     * zero word (kona_writeconfig sends token 2 with payload 0). Established:
     * the token map runs `arm_pack` at arm1.u 0x0c03949c. Sent by
     * libGLcore.so kona_writeconfig (kon_context.s), directly after
     * HP_BUFFER_CONFIG. */
    KONA_HP_PACK                         = 0x002,

    /* Read at icu_map.tsv 0x003 (kind 1, command 394, 1 word); ged_banks.tsv
     * k=10; ged_listing.txt quad.s:6-18; kon_rect.s
     * __glkonim_Rectf/Rectd/Rects. */

    /* `HP_BEGIN_RECT` (0x003). Inferred: Starts a rectangle. It carries
     * command 394, the same as BEGIN_QUADS, so the distributor runs the quad
     * stub at 0x1e5 (quad.s:6): class register r48 = 7, handler register r62
     * = mgesi_Quads, vertex state in r49. The four vertices and END follow as
     * ordinary tokens. Payload 1: the number of command words that follow
     * (the four VERTEX2 commands and the END): 14 for float and int, 22 for
     * double, 10 for short. Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xd8c50053: command 394, geometry
     * form, count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Rectd, Rectdv, Rectf, Rectfv, Recti, Rectiv, Rects, Rectsv
     * (kon_rect.s). */
    KONA_HP_BEGIN_RECT                   = 0x003,

    /* Read at arm1.u arm_readbuffer_config 0x0c013650 (stores to
     * r8+0x1e0..0x1e9; calls resolve_banks and SetFbReadState). */

    /* `HP_READBUFFER_CONFIG` (0x004). Inferred: Stores the ten words as bytes
     * in the read-side state shadow, derives the read colour, depth and
     * stencil bank bytes from them, then rebuilds the read bank selection and
     * the read framebuffer state. Payload 10: Read-framebuffer layout in the
     * same order as HP_BUFFER_CONFIG: level, RGB size, colour-index size,
     * double-buffer, stereo, multisample, depth, stencil, accumulation,
     * auxiliary count. Established: the token map runs
     * `arm_readbuffer_config` at arm1.u 0x0c013650. Sent by libGLcore.so
     * kona_readconfig (kon_context.s); docs/opengl.md names it. */
    KONA_HP_READBUFFER_CONFIG            = 0x004,

    /* Engine handlers whose slots the code of `arm_bitmap_dlist` loads, in
     * order: `mgeb_TransparentBitmapSetup`, `mgesi_FeedbackPixel`,
     * `mgesi_PixRasterPosSetup`, `mgesi_TransparentBitmap`,
     * `mgebi_PixEndTransparentBitmap`. Read at arm1.u arm_bitmap_dlist
     * 0x0c02b590 (reads r9+0 six times, r9+0x40 once; engine slots
     * mgeb_TransparentBitmapSetup, mgesi_PixRasterPosSetup,
     * mgesi_FeedbackPixel, mgesi_TransparentBitmap,
     * mgebi_PixEndTransparentBitmap). */

    /* `HP_BITMAP_DLIST` (0x005). Established: Keeps width and height in the
     * pixel descriptor, sends the origin to the transparent-bitmap setup
     * handler, then (in render mode) sets up the raster position or (in
     * feedback mode) the feedback pixel handler, moves the image words to the
     * engines with the pass-through counter, and ends with the move values
     * sent to the end-of-bitmap handler. Payload variable: 7 header words,
     * then the count in word 7 of further words: width rounded up to a
     * multiple of 8, height, x and y origin, x origin plus x move, y origin
     * plus y move, then the number of words that follow (image words plus
     * one), the image size in bytes and the packed bitmap. Established: the
     * token map runs `arm_bitmap_dlist` at arm1.u 0x0c02b590. Sent by
     * libGLcore.so __glkonim_Bitmap (display-list compile path, kon_pixel.s). */
    KONA_HP_BITMAP_DLIST                 = 0x005,

    /* Engine handlers whose slots the code of `arm_bitmap` loads, in order:
     * `mgeb_BitmapApplyMove`. Read at arm1.u arm_bitmap 0x0c02b4c0 (8 plain
     * reads plus r9+0x3c or r9+0x40), do_bitmap 0x0c02b39c,
     * mgeb_BitmapApplyMove (slot 2 via r8+0x4c). */

    /* `HP_BITMAP` (0x006). Established: Stores the header in the pixel
     * descriptor and the four floats at ARM 0xc4c-0xc58. For an empty bitmap
     * it only sends the four floats to the raster-position move handler;
     * otherwise it runs the bitmap path (parse the host image, set up the
     * engine bitmap stage, send the image rows) and ends with
     * BitmapEndStream. Payload 9 (5 integers, 4 floats): width, height, byte
     * offset of the image in its first word, data-by-DMA flag, row mode, then
     * four floats (x origin, y origin, x move, y move). Established: the
     * token map runs `arm_bitmap` at arm1.u 0x0c02b4c0. Sent by libGLcore.so
     * __glkonim_Bitmap (kon_pixel.s). */
    KONA_HP_BITMAP                       = 0x006,

    /* Read at arm1.u arm_lightf 0x0c016e94; light_amb 0x0c016f38 .. light_k2
     * 0x0c01747c; table lightfi 0x04041bdc. */

    /* `HP_LIGHTF` (0x007). Inferred: Checks light number and parameter name,
     * else drains the payload and raises invalid-enum. It jumps through a
     * ten-entry table by parameter: ambient, diffuse, specular, position,
     * spot direction, spot exponent, spot cutoff, and constant, linear,
     * quadratic attenuation. Each keeps the floats in a per-light shadow and
     * sends them to the engines. Payload 6: Light number (GL_LIGHT0 + n,
     * 0x4000-0x4007), parameter name (0x1200-0x1209), then four float values
     * (unused ones are read and dropped). Established: the token map runs
     * `arm_lightf` at arm1.u 0x0c016e94. Established: libGLcore.so
     * `__glkonim_Lightfv` stores 6 words after the token. Sent by
     * libGLcore.so __glkonim_Lightfv (kon_cfuncs.s). */
    KONA_HP_LIGHTF                       = 0x007,

    /* Read at arm1.u arm_lighti 0x0c016ee8; light_* routines read with r1=1
     * (convFixToFloat 0x0c017bf4). */

    /* `HP_LIGHTI` (0x008). Inferred: Same dispatch as the float form with a
     * flag set: the integer values are converted to floats first (colour
     * parameters scaled to the colour range, position, direction, exponent,
     * cutoff and attenuation converted without scaling), then kept and sent
     * exactly like HP_LIGHTF. Payload 6: Light number (0x4000-0x4007),
     * parameter name (0x1200-0x1209), then four integer values. Established:
     * the token map runs `arm_lighti` at arm1.u 0x0c016ee8. Established:
     * libGLcore.so `__glkonim_Lightiv` stores 6 words after the token. Sent
     * by libGLcore.so __glkonim_Lightiv (kon_cfuncs.s). */
    KONA_HP_LIGHTI                       = 0x008,

    /* Read at arm1.u arm_lightmodelf 0x0c016ae4; lightmodel_locv 0x0c016b5c,
     * lightmodel_2side 0x0c016b90, lightmodel_gamb 0x0c016bc4,
     * lightmodelf_gamb 0x0c016bf0. */

    /* `HP_LIGHTMODELF` (0x009). Inferred: Rejects other names with
     * invalid-enum after draining. Local-viewer and two-sided keep a boolean
     * byte in the shadow and send the raw value to the engines
     * (mgeb_LightModelLocV or LightModel2Side). Ambient keeps all four floats
     * and sends red, green and blue (alpha is shadowed, not sent) to
     * mgeb_LightModelGAmb. Payload 5: Parameter name (0xb51 local viewer,
     * 0xb52 two-sided, 0xb53 ambient) and four values. Established: the token
     * map runs `arm_lightmodelf` at arm1.u 0x0c016ae4. Established:
     * libGLcore.so `__glkonim_LightModelfv` stores 5 words after the token.
     * Sent by libGLcore.so __glkonim_LightModelfv (kon_cfuncs.s). */
    KONA_HP_LIGHTMODELF                  = 0x009,

    /* Read at arm1.u arm_lightmodeli 0x0c016b20; lightmodeli_gamb 0x0c016c04. */

    /* `HP_LIGHTMODELI` (0x00a). Inferred: Same dispatch as HP_LIGHTMODELF;
     * for the ambient case the four integers are first converted to floats
     * with the colour scaling. Payload 5: Parameter name (0xb51, 0xb52,
     * 0xb53) and four integer values. Established: the token map runs
     * `arm_lightmodeli` at arm1.u 0x0c016b20. Established: libGLcore.so
     * `__glkonim_LightModeliv` stores 5 words after the token. Sent by
     * libGLcore.so __glkonim_LightModeliv (kon_cfuncs.s). */
    KONA_HP_LIGHTMODELI                  = 0x00a,

    /* Read at arm1.u arm_polygonstipple 0x0c02c7bc (two plain reads, then
     * r9+0x40 or r9+0x3c by the DMA word; ParseHostImage,
     * SetupGE_PolygonStipple, SendPixelsToPipe, PixEndPolygonStipple). */

    /* `HP_POLYGONSTIPPLE` (0x00b). Established: Builds a fixed 32 by 32
     * one-bit image descriptor (format code 11, type code 7), then parses the
     * image, composes the index stream, sets up the engine polygon-stipple
     * stage and sends the pixels to the pipe, finishing with
     * PixEndPolygonStipple to load the pattern into the engines. Payload 3,
     * then the 32 x 32 stipple as an image: byte offset of the stipple data
     * in its first word, data-by-DMA flag, row mode. Established: the token
     * map runs `arm_polygonstipple` at arm1.u 0x0c02c7bc. Sent by
     * libGLcore.so __glkonim_PolygonStipple (kon_pixel.s, token 11, then
     * __glKonSendData). */
    KONA_HP_POLYGONSTIPPLE               = 0x00b,

    /* Read at arm1.u arm_scissor 0x0c018c90; resolve_scissor 0x0c018a00
     * (WriteEram 0xc04, registers 0x3fc2 and 0x3fc3,
     * resolve_viewport). */

    /* `HP_SCISSOR` (0x00c). Established: Raises invalid-value for a negative
     * width or height. Otherwise stores the box in the shadow and runs
     * resolve_scissor, which intersects it with the window clip and screen
     * limits (only when the scissor test is enabled), keeps the result,
     * writes an engine memory word and two scissor registers, then recomputes
     * the viewport. Payload 4: Scissor box: x, y, width, height as integers.
     * Established: the token map runs `arm_scissor` at arm1.u 0x0c018c90.
     * Sent by libGLcore.so __glkonim_Scissor (kon_cfuncs.s, IP27KONA32
     * variant per tokens.tsv). */
    KONA_HP_SCISSOR                      = 0x00c,

    /* Read at arm1.u arm_texparameterf 0x0c026594 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXPARAMETERF` (0x00d). Unused texture-parameter token, float form.
     * Established: the map word of 0x00d leads to a lone branch at 0x0c026594
     * into arm_badcmd (read in full), so a word with this number prints both
     * token numbers, drains 100 payload words and hangs the FIFO. Inferred
     * from kon_texture_api.s: __glkonim_TexParameterf (206 instructions, 24
     * error sites) compares the name against dozens of constants, all of
     * which end in the single call to __glKonTexParameter; that routine is
     * 1662 instructions long, makes ten direct FIFO stores and one of them is
     * token 471, HP_CHANGE_POST_TEX_SCALE_BIAS (0x1d7). Parameters therefore
     * update the host texture object and reach the pipe only through the bind
     * and scale-bias tokens. */
    KONA_HP_TEXPARAMETERF                = 0x00d,

    /* Read at arm1.u arm_texparameteri 0x0c026598 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXPARAMETERI` (0x00e). Unused texture-parameter token, integer
     * form. Established: token 0x00e is one more branch at 0x0c026598 into
     * arm_badcmd (read in full), the print-and-spin routine. Inferred from
     * kon_texture_api.s: __glkonim_TexParameteri has 213 instructions and 23
     * error sites and funnels every legal name into the same
     * __glKonTexParameter as the float entry, so the two forms differ only in
     * how the host converts the argument. The only parameter-related word the
     * pipe sees is the scale-and-bias token 0x1d7 stored from inside that
     * routine; this token itself is never sent. */
    KONA_HP_TEXPARAMETERI                = 0x00e,

    /* Read at arm1.u arm_teximage1d 0x0c02659c (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXIMAGE1D` (0x00f). Unused one-dimensional image-definition token.
     * Established: the map word of 0x00f is a branch at 0x0c02659c to
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_TexImage1D is 32 instructions that accept target 3552 (the 1D
     * target) or the proxy 0x8063, then call __glkonim_TexImage (254
     * instructions). That routine saves pixel-store state with
     * __glKonPushState, reads the unpack row-length, skip-rows and
     * skip-pixels names (3314-3316) through __glkonim_PixelStorei, queries
     * texture objects and restores state, and stores no token. Texels reach
     * the pipe in later load calls, so no image-definition word exists on the
     * wire. */
    KONA_HP_TEXIMAGE1D                   = 0x00f,

    /* Read at arm1.u arm_teximage2d 0x0c0265a0 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXIMAGE2D` (0x010). Unused two-dimensional image-definition token.
     * Established: token 0x010 resolves to a branch at 0x0c0265a0 into
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_TexImage2D is a 35-instruction wrapper accepting target 3553,
     * the proxy 0x8064 and the detail-texture target 0x8095, and it too
     * forwards to __glkonim_TexImage, whose 254 instructions manipulate host
     * texture-object state and pixel-store settings and contain no store to
     * the command window. The image bytes are sent separately by the
     * texture-load path. */
    KONA_HP_TEXIMAGE2D                   = 0x010,

    /* Engine handlers whose slots the code of `arm_texenvf` loads, in order:
     * `mgebi_TexEnv`. Read at arm1.u arm_texenvf 0x0c024ff4 (4 plain reads,
     * final r9+0x3c; slot 109 mgebi_TexEnv via r8+0x120);
     * ge_listing/texenv.S.lst mgebi_TexEnv. */

    /* `HP_TEXENVF` (0x011). Established: Forwards the parameter name to
     * engine port 0x47c and the four value words to port 0x840, then starts
     * the texture-environment handler, which validates the mode (modulate,
     * decal, blend, replace and one extension value) and updates the engines'
     * texture-environment state. Payload 5 (pname, float, three zero words):
     * texture-environment parameter name (only 0x2200, the environment mode,
     * is sent by libGLcore through this token), a float value, three zeros.
     * Established: the token map runs `arm_texenvf` at arm1.u 0x0c024ff4.
     * Sent by libGLcore.so __glkonim_TexEnvf (kon_cfuncs.s, token 17). */
    KONA_HP_TEXENVF                      = 0x011,

    /* Engine handlers whose slots the code of `arm_texenvi` loads, in order:
     * `mgebi_TexEnv`. Read at arm1.u arm_texenvi 0x0c025030 (4 plain reads,
     * final r9+0x3c; teq r0,#0x2200; slot 109 mgebi_TexEnv via
     * r8+0x120 to 0x4fc). */

    /* `HP_TEXENVI` (0x012). Inferred: For pname 0x2200 it sends the mode
     * through a register-write descriptor (0x58001000); for the other names
     * it sends four colour words through descriptor 0x59001000, then names
     * the texture-environment engine handler on port 0x4fc. It selects all
     * engines first. Payload 5 (pname, value, three words):
     * texture-environment parameter name, an integer value (mode or one
     * colour word), two or three further words (zeros from TexEnvi, colour
     * words from TexEnviv). Established: the token map runs `arm_texenvi` at
     * arm1.u 0x0c025030. Sent by libGLcore.so __glkonim_TexEnvi,
     * __glkonim_TexEnviv (kon_cfuncs.s, token 18). */
    KONA_HP_TEXENVI                      = 0x012,

    /* Read at arm1.u arm_texgend 0x0c024d50 (add r0,pc; b _printf: string
     * 'arm: error. arm_texgend NYI -- use arm_texgenf instead.'). */

    /* `HP_TEXGEND` (0x013). Established: Prints the message that
     * texture-generation with doubles is not implemented and tells the host
     * to use the float form, then returns without reading its payload or
     * touching the engines. Payload 0 (payload not read): nothing is read;
     * libGLcore never sends this token, TexGend and TexGendv send token 20
     * instead. Established: the token map runs `arm_texgend` at arm1.u
     * 0x0c024d50. No sender found (searched libglcore/asm for a store of 19
     * to the FIFO window; the only hit is an unrelated evaluator function). */
    KONA_HP_TEXGEND                      = 0x013,

    /* Engine handlers whose slots the code of `arm_texgenf` loads, in order:
     * `mgeb_TexGen`. Read at arm1.u arm_texgenf 0x0c024d9c (8 plain reads +
     * r9+0x3c; slot 82 mgeb_TexGen via r8+0xec). */

    /* `HP_TEXGENF` (0x014). Established: Checks the coordinate and parameter
     * name (raising an invalid-enum error otherwise), keeps a mode value in a
     * per-coordinate table at ARM 0x804, then sends the coordinate to port
     * 0x478 and the eight remaining words to port 0x840 and starts the
     * engines' texture-generation handler. Payload 9 (coord, pname, then 7
     * words): texture coordinate (0x2000-0x2003 for S, T, R, Q), parameter
     * name (mode 0x2500, object plane 0x2501, eye plane 0x2502, or the
     * point/line distance names 0x81f4-0x81f7), then either a mode value and
     * six zeros, four plane floats and three zeros, or seven floats.
     * Established: the token map runs `arm_texgenf` at arm1.u 0x0c024d9c.
     * Established: libGLcore.so `__glkonim_TexGend` stores 9 words after the
     * token. Sent by libGLcore.so __glkonim_TexGend, __glkonim_TexGenf,
     * __glkonim_TexGeni (kon_cfuncs.s), __glkonim_TexGenfv/dv/iv
     * (kon_modes.s), all token 20. */
    KONA_HP_TEXGENF                      = 0x014,

    /* Read at arm1.u arm_texgeni 0x0c024d94 (sub r0,pc; b _printf, same
     * string as arm_texgend). */

    /* `HP_TEXGENI` (0x015). Established: Prints the same not-implemented
     * message as the double form (branching into the shared printf) and
     * returns without reading its payload or touching the engines. Payload 0
     * (payload not read): nothing is read; libGLcore never sends this token,
     * TexGeni sends token 20 with an integer mode. Established: the token map
     * runs `arm_texgeni` at arm1.u 0x0c024d94. No sender found (searched
     * libglcore/asm for a store of 21 to the FIFO window). */
    KONA_HP_TEXGENI                      = 0x015,

    /* Read at arm1.u arm_texbind 0x0c036ae4, GetTexManageBindParam 0x0c036a10
     * (35 plain reads + r9+0x3c, 15 in a loop),
     * SetupRM_TextureBind 0x0c0367c8, tbus_write_word. */

    /* `HP_TEXBIND` (0x016). Inferred: Stores the incoming words into the
     * ARM's texture state, then writes six texture-bind raster registers
     * through the register-write descriptor 0x58404800 and a final
     * texture-address word; texState+0x98 is set while it runs. Payload 36:
     * texture width and height, a format code, then texture-object fields
     * (size, border and filter state, a table of addresses) and 15 further
     * words. Established: the token map runs `arm_texbind` at arm1.u
     * 0x0c036ae4. No sender found (searched libglcore/asm for a store of 22;
     * the only hits are Rect; also did not search the X modules or the
     * kernel). */
    KONA_HP_TEXBIND                      = 0x016,

    /* Read at arm1.u arm_feedback_type 0x0c038a6c; arm_rendermode 0x0c038a2c. */

    /* `HP_FEEDBACK_TYPE` (0x017). Established: Stores the word in ARM RAM
     * (r8+0x854) and does nothing else; no engine traffic. A later RENDERMODE
     * into feedback mode sends this stored word to the engines. Payload 1:
     * feedback type word from glFeedbackBuffer (the GL_2D/3D/4D style
     * constant). Established: the token map runs `arm_feedback_type` at
     * arm1.u 0x0c038a6c. Sent by libGLcore.so __glkonim_FeedbackBuffer
     * (kon_select.s) stores token 23 then the type word. */
    KONA_HP_FEEDBACK_TYPE                = 0x017,

    /* Read at arm1.u arm_selectbuffer 0x0c0265a4 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_SELECTBUFFER` (0x018). Unused selection-buffer token. Established:
     * the map word of 0x018 is a branch at 0x0c0265a4 into arm_badcmd (read
     * in full), so a word with this number would drain 100 words and hang.
     * Inferred from kon_select.s: __glkonim_SelectBuffer is 70 instructions
     * with five error sites and no calls; it rejects a negative size with
     * error 1281 and a call made in selection mode (7170) or inside glBegin
     * with 1282, releases the old internal buffer and allocates a new one of
     * (size + 256) entries through the context's memory callbacks, then keeps
     * the size and the caller's pointer in the context. The pipe is told only
     * about the mode change through HP_RENDERMODE (0x019), never about where
     * the host collects hit records. */
    KONA_HP_SELECTBUFFER                 = 0x018,

    /* Engine handlers whose slots the code of `arm_rendermode` loads, in
     * order: `mgeb_EndFeedbackMode`, `mgeb_BgnSelectMode`,
     * `mgeb_EndSelectMode`, `mgeb_BgnFeedbackMode`. Read at arm1.u
     * arm_rendermode 0x0c038964-0x0c038a68; ge.u
     * mgeb_BgnSelectMode/EndSelectMode/BgnFeedbackMode/EndFeedbackMode
     * (slots per ge_xref.tsv). */

    /* `HP_RENDERMODE` (0x019). Established: Compares the new mode with the
     * kept mode (r8+0x862). Leaving select or feedback sends EndSelectMode
     * (slot 139) or EndFeedbackMode (slot 138) to all engines (port 0x438);
     * entering select sends BgnSelectMode (126); entering feedback first
     * sends the stored feedback type then BgnFeedbackMode (125). Then stores
     * the mode and recomputes transfer mask, viewport, polygon, line and
     * point state. Payload 1: new render mode: 0x1c00 render, 0x1c01
     * feedback, 0x1c02 select. Established: the token map runs
     * `arm_rendermode` at arm1.u 0x0c038964. Sent by libGLcore.so
     * __glkonim_RenderMode (kon_select.s) stores token 25 then the mode. */
    KONA_HP_RENDERMODE                   = 0x019,

    /* Engine handlers whose slots the code of `arm_clear` loads, in order:
     * `mgesi_TbusRegWrite`, `mgesi_ClearIndex`, `mgesi_ClearLA16`,
     * `mgesi_ClearColor`. Read at arm1.u arm_clear 0x0c03bb60; masked_clear
     * 0x0c03b188, accum_clear 0x0c03b6a0, accum_clear32 0x0c03b82c,
     * overlay_clear 0x0c03b9e0, imp_clear 0x0c03aefc. */

    /* `HP_CLEAR` (0x01a). Inferred: Rejects other bits with invalid-value and
     * does nothing unless the stored render mode equals 0x1c00. Drops buffers
     * that are absent or masked, runs the masked clear when write masks are
     * partial, clears accumulation and overlay, sends the colour or index
     * clear through mgesi_ClearColor, ClearIndex or ClearLA16, writes the
     * clear controls and runs the fill. Payload 1: Clear mask: 0x4000 colour,
     * 0x100 depth, 0x400 stencil, 0x200 accumulation. Established: the token
     * map runs `arm_clear` at arm1.u 0x0c03bb60. Established: libGLcore.so
     * `__glkonim_Clear` stores 1 word after the token. Sent by libGLcore.so
     * __glkonim_Clear (kon_modes.s). */
    KONA_HP_CLEAR                        = 0x01a,

    /* Read at arm1.u arm_clearaccum 0x0c037d94 (stores r8+0x6ec..0x6fc). */

    /* `HP_CLEARACCUM` (0x01b). Established: Reads the four words and stores
     * them in the state shadow for the next clear; sends nothing to the
     * engines or boards now. Payload 4: Accumulation clear colour: red,
     * green, blue, alpha as floats. Established: the token map runs
     * `arm_clearaccum` at arm1.u 0x0c037d94. Sent by libGLcore.so
     * __glkonim_ClearAccum (kon_attrib.s). */
    KONA_HP_CLEARACCUM                   = 0x01b,

    /* Read at arm1.u arm_clearindex 0x0c012bf4 (r8+0x7d4). */

    /* `HP_CLEARINDEX` (0x01c). Established: Stores the word in the state
     * shadow; no hardware access until a clear command runs. Payload 1:
     * Colour-index clear value (one word; the emitter sends a float).
     * Established: the token map runs `arm_clearindex` at arm1.u 0x0c012bf4.
     * Established: libGLcore.so `__glkonim_ClearIndex` stores 1 word after
     * the token. Sent by libGLcore.so __glkonim_ClearIndex (kon_cfuncs.s). */
    KONA_HP_CLEARINDEX                   = 0x01c,

    /* Read at arm1.u arm_clearcolor 0x0c012c00 (r8+0x7c4..0x7d0). */

    /* `HP_CLEARCOLOR` (0x01d). Established: Reads the four words and stores
     * them in the state shadow for the next clear; nothing is sent to the
     * engines now. Payload 4: Colour clear value: red, green, blue, alpha as
     * floats. Established: the token map runs `arm_clearcolor` at arm1.u
     * 0x0c012c00. Sent by libGLcore.so __glkonim_ClearColor (kon_attrib.s). */
    KONA_HP_CLEARCOLOR                   = 0x01d,

    /* Read at arm1.u arm_clearstencil 0x0c0148b8 (descriptor 0x584fc800,
     * address word 0x013a1c09 = IMP_DEPTH_CLEAR). */

    /* `HP_CLEARSTENCIL` (0x01e). Inferred: Keeps the value in the shadow. If
     * a stencil buffer exists it also writes the depth-clear register with
     * the value shifted by 0 (32-bit depth) or 16 so that it sits in the
     * stencil part of the clear word. Payload 1: Stencil clear value
     * (integer). Established: the token map runs `arm_clearstencil` at arm1.u
     * 0x0c0148b8. Established: libGLcore.so `__glkonim_ClearStencil` stores 1
     * word after the token. Sent by libGLcore.so __glkonim_ClearStencil
     * (kon_cfuncs.s). */
    KONA_HP_CLEARSTENCIL                 = 0x01e,

    /* Engine handlers whose slots the code of `arm_cleardepth` loads, in
     * order: `mgesi_ClearDepth32`. Read at arm1.u arm_cleardepth 0x0c01465c
     * (slot 345 mgesi_ClearDepth32; register address word 0x013a1c09 =
     * IMP_DEPTH_CLEAR). */

    /* `HP_CLEARDEPTH` (0x01f). Inferred: Stores the double in the shadow.
     * With no depth buffer it stops. With 32-bit depth it sends both words
     * and a mask to mgesi_ClearDepth32. Otherwise it converts the double to
     * the board compressed depth format (exponent and mantissa) and writes
     * the depth-clear register. Payload 2 (one double): Depth clear value as
     * a double (high word first), clamped to 0..1 by the emitter.
     * Established: the token map runs `arm_cleardepth` at arm1.u 0x0c01465c.
     * Sent by libGLcore.so __glkonim_ClearDepth (kon_attrib.s): token 31, one
     * double. */
    KONA_HP_CLEARDEPTH                   = 0x01f,

    /* Read at arm1.u arm_stencilmask 0x0c014904 (descriptor 0x584fc800,
     * address word 0x01381c07 = IMP_SZ0, select 0x1fe00000). */

    /* `HP_STENCILMASK` (0x020). Established: Keeps the mask, writes it into
     * the stencil write-mask field (bits 21-28) of the stencil register, and
     * sets or clears bit 0x4 of the state flags according to whether the mask
     * covers every stencil bit, which arm_clear uses to choose the masked
     * clear path. Payload 1: Stencil write mask (integer). Established: the
     * token map runs `arm_stencilmask` at arm1.u 0x0c014904. Established:
     * libGLcore.so `__glkonim_StencilMask` stores 1 word after the token.
     * Sent by libGLcore.so __glkonim_StencilMask (kon_cfuncs.s). */
    KONA_HP_STENCILMASK                  = 0x020,

    /* Engine handlers whose slots the code of `arm_colormask` loads, in
     * order: `mgesi_TbusRegWrite`. Read at arm1.u arm_colormask 0x0c012c3c
     * (IMP_CONFIG bits 6-9 via select 0x3c0, address 0x01341c00; IMP_BL
     * 0x013c1c0d; IMP_MS 0x01361c03; register 0x1408 via mgesi_TbusRegWrite). */

    /* `HP_COLORMASK` (0x021). Inferred: Stores the four low bytes as shadow
     * flags, builds per-channel enable bits, updates the distributor mask
     * word in the context record, then writes the four channel write-enable
     * bits of the colour configuration register and rewrites the blend and
     * logic-op register according to the current blend and logic state.
     * Payload 4: Red, green, blue, alpha write enables (nonzero means
     * enabled). Established: the token map runs `arm_colormask` at arm1.u
     * 0x0c012c3c. Established: libGLcore.so `__glkonim_ColorMask` stores 4
     * words after the token. Sent by libGLcore.so __glkonim_ColorMask
     * (kon_cfuncs.s). */
    KONA_HP_COLORMASK                    = 0x021,

    /* Read at arm1.u arm_depthmask 0x0c0147d0 (descriptor 0x584fc800, address
     * word 0x01391c08 = IMP_SZ1, select 0x10000). */

    /* `HP_DEPTHMASK` (0x022). Established: Keeps the low byte in the shadow
     * and writes it to the depth write-mask bit (bit 16) of the depth
     * configuration register. Payload 1: Depth write enable (nonzero means
     * writes enabled). Established: the token map runs `arm_depthmask` at
     * arm1.u 0x0c0147d0. Established: libGLcore.so `__glkonim_DepthMask`
     * stores 1 word after the token. Sent by libGLcore.so __glkonim_DepthMask
     * (kon_cfuncs.s). */
    KONA_HP_DEPTHMASK                    = 0x022,

    /* Read at arm1.u arm_indexmask 0x0c012e1c (descriptor 0x584fc800, address
     * word 0x013d1c14 = IMP_WMASK_BIT). */

    /* `HP_INDEXMASK` (0x023). Inferred: Ands the mask with the colour-index
     * bit mask, stores it, flags whether it is partial in bit 0x2 of
     * r8+0xcf0, and in colour-index mode writes it shifted to the bit-plane
     * write mask register as two 12-bit copies. Does nothing more outside
     * index mode. Payload 1: Colour-index write mask. Established: the token
     * map runs `arm_indexmask` at arm1.u 0x0c012e1c. Established:
     * libGLcore.so `__glkonim_IndexMask` stores 1 word after the token. Sent
     * by libGLcore.so __glkonim_IndexMask (kon_cfuncs.s). */
    KONA_HP_INDEXMASK                    = 0x023,

    /* Read at arm1.u arm_enable 0x0c023380; tables e0 0x04046fe8, e0a
     * 0x04047b30, e1 0x04047b38, e2 0x04047b50, e3 0x04047b70,
     * e4 0x04048254; routines listed in ucode/arm1_functions.md. */

    /* `HP_ENABLE` (0x024). Established: Checks the number against six ranges
     * (0x0b10-0x0de1, 0x2a01-0x2a02,
     * 0x3000-0x3005, 0x4000-0x4007,
     * 0x8010-0x81c7, 0x6000) and jumps through one table per range to a
     * per-capability routine that stores 1 in its enable byte and applies the
     * change. Other numbers, or empty slots, raise invalid-enum. Payload 1:
     * GL capability number. Established: the token map runs `arm_enable` at
     * arm1.u 0x0c023380. Sent by libGLcore.so __glkonim_xEnable and
     * __glkonim_Enable (kon_modes.s). */
    KONA_HP_ENABLE                       = 0x024,

    /* Read at arm1.u arm_disable 0x0c023448; tables d0 0x04048258, d0a
     * 0x04048da0, d1 0x04048da8, d2 0x04048dc0, d3 0x04048de0,
     * d4 0x040494c4. */

    /* `HP_DISABLE` (0x025). Established: Same six-range dispatch as enable
     * through the d-tables; each routine stores 0 in the capability byte and
     * applies the matching disable action. Other numbers raise invalid-enum.
     * Payload 1: GL capability number. Established: the token map runs
     * `arm_disable` at arm1.u 0x0c023448. Sent by libGLcore.so
     * __glkonim_Disable (kon_modes.s, token 37). */
    KONA_HP_DISABLE                      = 0x025,

    /* Engine handlers whose slots the code of `arm_evalstrip1d` loads, in
     * order: `mgesi_EvalStrip1D`. Read at arm1.u arm_evalstrip1d
     * 0x0c03dd58-0x0c03ddb0; ge_handlers.md slot 103. */

    /* `HP_EVALSTRIP1D` (0x026). Established: Pops three words (last through
     * r9+0x3c) and sends them to the engines behind descriptor 0x58400000
     * (command number 128, pass form), then sends six filler zero words each
     * under descriptor 0xd80a4000 (command 20, geometry form), and writes the
     * slot of mgesi_EvalStrip1D (r8+0x114 low half = slot 103) to port 0x4f4.
     * Payload 3: glEvalMesh1D strip: mode minus GL_POINT (0 points, 1 lines),
     * first grid index, number of points in this strip (6 for a full strip,
     * the remainder for the last one). Established: the token map runs
     * `arm_evalstrip1d` at arm1.u 0x0c03dd58. Sent by libGLcore.so
     * __glKonEvalMesh1DGe11 (kon_eval.s 0x0d97d7b0-0x0d97d858): each strip,
     * the last one included, is four stores: token 38 and its three words.
     * Line strips step the first index by 5 so that strips share an end
     * point, point strips by 6. */
    KONA_HP_EVALSTRIP1D                  = 0x026,

    /* Engine handlers whose slots the code of `arm_evalstrip2d` loads, in
     * order: `mgesi_EvalStrip2D`. Read at arm1.u arm_evalstrip2d
     * 0x0c03dcd4-0x0c03dd54; ge_handlers.md slot 104. */

    /* `HP_EVALSTRIP2D` (0x027). Established: Pops six words (last through
     * r9+0x3c) and sends them behind descriptor 0x58400000 (command 128),
     * preceded by two constants 1 and 0, then twelve filler zero words each
     * under descriptor 0xd80a4000 (command 20), and writes the slot of
     * mgesi_EvalStrip2D (r8+0x118 high half = slot 104) to port 0x4f4.
     * Payload 6: glEvalMesh2D strip: mode minus GL_POINT, a strip-kind word
     * (16 to 19), first grid index in u, count in u (6), first grid index in
     * v, count in v (50 for a full strip, the remainder otherwise).
     * Established: the token map runs `arm_evalstrip2d` at arm1.u 0x0c03dcd4.
     * Sent by libGLcore.so __glKonEvalMesh2DGe11 (kon_eval.s, li 39 near line
     * 6440). */
    KONA_HP_EVALSTRIP2D                  = 0x027,

    /* Read at icu_map.tsv 0x028; ged_bound_table.tsv index 25; ge_handlers.md
     * ueval1D.s; ge_listing/ueval1D.s.lst mgeb_EvalGrid1D; kon_eval.s
     * __glKonUpdateEvalAttributes .L0d9801cc. */

    /* `HP_MAPGRID1D` (0x028). Inferred: Sets the 1D evaluator grid. Routed
     * pass token (command 153, 4 words, float). Command 153 selects handler
     * table index 25, mgeb_EvalGrid1D (ueval1D.s, 16 words), the grid handler
     * of the 1D evaluator module; its body was not traced beyond that.
     * Payload 4: grid divisions (integer) then three floats (domain start,
     * end and step, named from the GL call: the emitter reads them from the
     * context at +1932..+1944). Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x584cd101: command 153, count
     * field 4 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_EvalGrid1D` (index 25 of the handler table). Sent by libGLcore.so
     * __glKonUpdateEvalAttributes (kon_eval.s, token 40 then four words). */
    KONA_HP_MAPGRID1D                    = 0x028,

    /* Read at icu_map.tsv 0x029; ged_bound_table.tsv index 26; ge_handlers.md
     * ueval2D.s; ge_listing/ueval2D.s.lst mgeb_EvalGrid2D; kon_eval.s
     * __glKonUpdateEvalAttributes. */

    /* `HP_MAPGRID2D` (0x029). Inferred: Sets the 2D evaluator grid. Routed
     * pass token (command 154, 8 words, float). Command 154 selects handler
     * table index 26, mgeb_EvalGrid2D (ueval2D.s, 26 words), the grid handler
     * of the 2D evaluator module; its body was not traced beyond that.
     * Payload 8: two groups of four: grid divisions (integer) and three
     * floats for the u axis, then the same four for the v axis. Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0x584d5201: command 154, count field 8 (bits 6-10, 0 read as 32),
     * single floats; engine handler `mgeb_EvalGrid2D` (index 26 of the
     * handler table). Sent by libGLcore.so __glKonUpdateEvalAttributes
     * (kon_eval.s, token 41 then eight words). */
    KONA_HP_MAPGRID2D                    = 0x029,

    /* Engine handlers whose slots the code of `arm_mapdata1d` loads, in
     * order: `mgeb_EvalMapData1D`. Read at arm1.u arm_mapdata1d
     * 0x0c03dc68-0x0c03dc9c; waitForDH 0x0c022354. */

    /* `HP_MAPDATA1D` (0x02a). Established: Pops the count word, selects all
     * engines (0x438), loads the pass-through counter with the count (n |
     * 0x4000000), waits for the host-interface drain, then writes the slot of
     * mgeb_EvalMapData1D (r8+0x60 low half = slot 13) to port 0x8c0; the ARM
     * parses nothing else. Payload variable: first word gives the count n+5
     * of the words after it: glMap1 control data: n+5 (count word); map index
     * times 4; three floats (the map domain and order fields); n; then n
     * float control values. Established: the token map runs `arm_mapdata1d`
     * at arm1.u 0x0c03dc68. Sent by libGLcore.so __glKonSendMapData1D
     * (kon_eval.s 0x0d97dc10, li 42). */
    KONA_HP_MAPDATA1D                    = 0x02a,

    /* Engine handlers whose slots the code of `arm_mapdata2d` loads, in
     * order: `mgeb_EvalMapData2D`. Read at arm1.u arm_mapdata2d
     * 0x0c03dca0-0x0c03dcd0. */

    /* `HP_MAPDATA2D` (0x02b). Established: Same as the 1D form: pops the
     * count word, selects all engines, sets the pass-through counter, waits
     * for the drain, then writes the slot of mgeb_EvalMapData2D (r8+0x64 high
     * half = slot 14) to port 0x8c0. Payload variable: first word gives the
     * count n+8 of the words after it: glMap2 control data: n+8 (count word);
     * map index times 4; six floats (u and v domain and order fields); n;
     * then n float control values. Established: the token map runs
     * `arm_mapdata2d` at arm1.u 0x0c03dca0. Sent by libGLcore.so
     * __glKonSendMapData2D (kon_eval.s 0x0d97dcc0, li 43). */
    KONA_HP_MAPDATA2D                    = 0x02b,

    /* Read at icu_map.tsv 0x02c; ged_bound_table.tsv index 27;
     * ge_listing/ueval1D.s.lst mgeb_EvalMapSpec1D 0x0053-0x009e (A = 0x1f
     * reads); kon_eval.s __glKonCleanUp1D .L0d97e2dc (a1 = 1 for the first
     * call, 0 for the next three), __glKonSendMapSpec1D 0x0d97db6c. */

    /* `HP_MAPSPEC1D` (0x02c). Established: Describes the active 1D evaluator
     * maps. Routed pass token (command 155, count 12). Command 155 selects
     * handler table index 27, mgeb_EvalMapSpec1D (ueval1D.s, 73 words), which
     * reads command words 0 to 0xb (A = 0x1f, all but D = 4 and 7): the first
     * and third word of each three-word group, for all four maps. It also
     * calls uEvalSaveState2D. Payload 12: three words for each of the four 1D
     * maps, in the order of the context slots -29552, -29516, -29540, -29528:
     * the map record word at +8 (its order: __glKonCleanUp1D compares the
     * largest with 9 to choose this path), the word at +4, and the word at
     * +44 times 4 (the map data count, which __glKonCleanUp1D sums and
     * compares with 209); zeros for an absent map. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x584dd301:
     * command 155, count field 12 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgeb_EvalMapSpec1D` (index 27 of the handler table).
     * Sent by libGLcore.so __glKonCleanUp1D (kon_eval.s, token 44): the first
     * word itself, then __glKonSendMapSpec1D four times; that helper stores
     * two words when its second argument is set and three otherwise, so 1 + 2
     * + 3 + 3 + 3 = 12. */
    KONA_HP_MAPSPEC1D                    = 0x02c,

    /* Read at icu_map.tsv 0x02d; ged_bound_table.tsv index 28;
     * ge_listing/ueval2D.s.lst mgeb_EvalMapSpec2D; kon_eval.s
     * __glKonCleanUp2D .L0d97e6a0, __glKonSendMapSpec2D. */

    /* `HP_MAPSPEC2D` (0x02d). Inferred: Describes the active 2D evaluator
     * maps. Routed pass token (command 156, 17 words). Command 156 selects
     * handler table index 28, mgeb_EvalMapSpec2D (ueval2D.s, 122 words), the
     * 2D map-spec handler of the evaluator module (122 words); its body was
     * not traced. Payload 17: one leading word (a flag byte from the context
     * at -28500), then for each of four 2D maps four words: record words +8,
     * +12, +4 and +44 x 4, zeros when the map is absent. Established: routed
     * by the host interface with no ARM code, arm1.u token-map entry
     * 0x584e5441: command 156, count field 17 (bits 6-10, 0 read as 32),
     * single floats; engine handler `mgeb_EvalMapSpec2D` (index 28 of the
     * handler table). Sent by libGLcore.so __glKonCleanUp2D (kon_eval.s,
     * token 45) via __glKonSendMapSpec2D. */
    KONA_HP_MAPSPEC2D                    = 0x02d,

    /* Read at arm1.u arm_logicop 0x0c015c18 (descriptor 0x584fc800, address
     * word 0x013c1c0d = IMP_BL, select 0x1e). */

    /* `HP_LOGICOP` (0x02e). Established: Keeps the value in the shadow and
     * writes its low four bits into the logic-op field (bits 1-4) of the
     * blend and logic register. The enable bit is left to the enable and
     * disable routines. Payload 1: GL logic operation (0x1500-0x150f).
     * Established: the token map runs `arm_logicop` at arm1.u 0x0c015c18.
     * Sent by libGLcore.so __glkonim_LogicOp (kon_cfuncs.s): range check
     * 0x1500-0x150f. */
    KONA_HP_LOGICOP                      = 0x02e,

    /* Read at arm1.u arm_pixelzoom 0x0c02ad74 (r9+0, r9+0x3c; WriteEram with
     * r0=0xc01, r2=2). */

    /* `HP_PIXELZOOM` (0x02f). Established: Stores both factors in the ARM's
     * pixel state at ARM 0x2a8, marks the pixel state dirty and writes the
     * two words to engine memory (WriteEram) at address 0xc01 so the pixel
     * stages see the new zoom. Payload 2 floats: x zoom and y zoom.
     * Established: the token map runs `arm_pixelzoom` at arm1.u 0x0c02ad74.
     * Sent by libGLcore.so __glkonim_PixelZoom (kon_pixel.s, token 47; host
     * rejects zoom magnitude above 127 with GL_INVALID_VALUE). */
    KONA_HP_PIXELZOOM                    = 0x02f,

    /* Read at arm1.u arm_pixeltransferf 0x0c02b068 (r9+0, r9+0x3c; stores to
     * ARM 0x260 area and flag word at 0x900+0x388). */

    /* `HP_PIXELTRANSFERF` (0x030). Established: Keeps the value in the ARM's
     * transfer state and recomputes the pixel-mode flag word (any scale not
     * 1, any bias not 0, map-colour flag and so on) at pixel descriptor
     * +0x388; sends nothing to the engines now, the pixel pipeline is rebuilt
     * at the next pixel command. Payload 2 (parameter name, float):
     * pixel-transfer parameter name (map flags, index shift and offset,
     * red/green/blue/alpha/depth scale and bias, and the extension
     * colour-matrix, convolution and post-scale/bias names) and its float
     * value. Established: the token map runs `arm_pixeltransferf` at arm1.u
     * 0x0c02b068. Sent by libGLcore.so __glkonim_PixelTransferf (kon_pixel.s,
     * token 48; map flags are converted to 0 or 1). */
    KONA_HP_PIXELTRANSFERF               = 0x030,

    /* Read at arm1.u arm_pixeltransferi 0x0c0265a8 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_PIXELTRANSFERI` (0x031). Unused integer pixel-transfer token.
     * Established: token 0x031 maps to a branch at 0x0c0265a8 into arm_badcmd
     * (read in full). Established from kon_pixel.s (the whole routine read):
     * __glkonim_PixelTransferi is 13 instructions that convert its integer
     * argument with cvt.s.w and call __glkonim_PixelTransferf, which stores
     * 0x030 (HP_PIXELTRANSFERF), the parameter name and the float in several
     * parallel branches. The pipe receives every pixel-transfer setting as a
     * float word whatever the GL entry point used. */
    KONA_HP_PIXELTRANSFERI               = 0x031,

    /* Read at arm1.u arm_pixelstoref 0x0c0265ac (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_PIXELSTOREF` (0x032). Unused float pixel-store token. Established:
     * the map word of 0x032 is a branch at 0x0c0265ac to arm_badcmd (read in
     * full). Established from kon_pixel.s (routine read in full):
     * __glkonim_PixelStoref rejects calls made inside glBegin with error
     * 1282, treats the four boolean names 3312, 3313, 3328 and 3329 as
     * nonzero equals one, rounds every other value to the nearest integer by
     * adding plus or minus one half and truncating, and calls
     * __glkonim_PixelStorei, which stores 0x033 (HP_PIXELSTOREI), the name
     * and the value. The pipe sees the integer form only. */
    KONA_HP_PIXELSTOREF                  = 0x032,

    /* Read at arm1.u arm_pixelstorei 0x0c02adb0 (r9+0, r9+0x3c; jump table
     * over pnames 0x0cf0-0x0d03, extension names 0x8130-0x8133 and
     * 0x806b-0x806e). */

    /* `HP_PIXELSTOREI` (0x033). Established: Stores the value in the matching
     * slot of the ARM's pack or unpack state (alignment accepts only 1, 2, 4,
     * 8 on the host side), marks the pixel state dirty and sends nothing to
     * the engines; later image commands use these slots to size their data.
     * Payload 2 (parameter name, integer): pixel-store parameter name (swap
     * bytes, lsb first, row length, skip rows, skip pixels, alignment for
     * pack and unpack, plus image height and skip images) and its value.
     * Established: the token map runs `arm_pixelstorei` at arm1.u 0x0c02adb0.
     * Sent by libGLcore.so __glkonim_PixelStorei (kon_pixel.s, token 51). */
    KONA_HP_PIXELSTOREI                  = 0x033,

    /* Read at arm1.u arm_pixelmapfv 0x0c03e7ec -> do_pixelmap 0x0c03e420,
     * pixelmap_index 0x0c03df58, snarf_pixelmap 0x0c03e3f4 (descriptors
     * 0x58601000 here). */

    /* `HP_PIXELMAPFV` (0x034). Established: Looks up which of the four map
     * groups the map belongs to, records its size, sends header words to the
     * engines and moves the n values (in chunks of up to 1024) into the
     * engine pixel-map tables with a pass-through transfer; a map with no
     * valid index just swallows its values. Payload variable: 4 header words,
     * then n values: map enumerant (0x0c70-0x0c79), size n, n minus 1 as a
     * float, a fourth word from the caller's state, then n float values.
     * Established: the token map runs `arm_pixelmapfv` at arm1.u 0x0c03e7ec.
     * Sent by libGLcore.so do_pixelmap and __glkonle_ColorTableSGI
     * (kon_colortable.s, token 52). */
    KONA_HP_PIXELMAPFV                   = 0x034,

    /* Read at arm1.u arm_pixelmapuiv 0x0c03e7fc -> do_pixelmap 0x0c03e420
     * (constants 0x58801000 and 0x59801000). */

    /* `HP_PIXELMAPUIV` (0x035). Established: Runs the shared pixel-map loader
     * with the unsigned-integer descriptor constants: records the map's size
     * and moves the n words into the engine pixel-map tables in chunks.
     * Payload variable: 4 header words, then n values: map enumerant, size n,
     * n minus 1 as a float, a fourth word, then n unsigned 32-bit values.
     * Established: the token map runs `arm_pixelmapuiv` at arm1.u 0x0c03e7fc.
     * Sent by libGLcore.so do_pixelmap (kon_colortable.s, token 53). */
    KONA_HP_PIXELMAPUIV                  = 0x035,

    /* Read at arm1.u arm_pixelmapusv 0x0c03e810 -> do_pixelmap 0x0c03e420. */

    /* `HP_PIXELMAPUSV` (0x036). Established: Runs the shared pixel-map loader
     * with the unsigned-short constants (0x28801000, 0x29801000) and moves
     * the n words into the engine pixel-map tables in chunks. Payload
     * variable: 4 header words, then n values: map enumerant, size n, n minus
     * 1 as a float, a fourth word, then n values each a 16-bit value
     * zero-extended to a word. Established: the token map runs
     * `arm_pixelmapusv` at arm1.u 0x0c03e810. Sent by libGLcore.so
     * do_pixelmap (kon_colortable.s, token 54). */
    KONA_HP_PIXELMAPUSV                  = 0x036,

    /* Read at arm1.u arm_readbuffer 0x0c013bfc (stores r8+0x1f4 and r8+0x7e8;
     * calls resolve_banks 0x0c01392c). */

    /* `HP_READBUFFER` (0x037). Inferred: Rejects buffers the current
     * framebuffer lacks with invalid-operation (back needs double buffer,
     * right needs stereo, auxiliary needs enough aux buffers) and
     * unrecognised enums with invalid-enum. Otherwise it picks the read bank,
     * stores it in the shadow and re-resolves the banks. Payload 1: GL read
     * buffer enum (0x400-0x409 range: front, back, left, right, auxiliary).
     * Established: the token map runs `arm_readbuffer` at arm1.u 0x0c013bfc.
     * Established: libGLcore.so `__glkonim_ReadBuffer` stores 1 word after
     * the token. Sent by libGLcore.so __glkonim_ReadBuffer (kon_cfuncs.s). */
    KONA_HP_READBUFFER                   = 0x037,

    /* Read at arm1.u arm_copypixels 0x0c02bb34 (6 plain reads + r9+0x3c;
     * QueryOverlap, SetDB, ResolveCopyPath,
     * WaitOverlap, SetupReadback, SetupReadbackTF,
     * StartRbus, videoCopyPixels). */

    /* `HP_COPYPIXELS` (0x038). Established: Stores the rectangle and type in
     * the pixel descriptor, queries and waits for source/destination overlap
     * when asked, resolves the copy path, and sets up the raster-board
     * read-back (SetupReadback and its texture-format variant) and starts the
     * copy with StartRbus; a video-mapped display takes videoCopyPixels
     * instead. Payload 7: source x, source y, width, height, first column of
     * this piece (destination column offset), buffer type (0x1800 is colour,
     * others depth and so on), flags (bit 31 asks for an overlap query).
     * Established: the token map runs `arm_copypixels` at arm1.u 0x0c02bb34.
     * Sent by libGLcore.so __glkonim_CopyPixels (kon_pixel.s, token 56; large
     * copies are split into several commands). */
    KONA_HP_COPYPIXELS                   = 0x038,

    /* Engine handlers whose slots the code of `arm_readpixels` loads, in
     * order: `mgebi_Texture`. Read at arm1.u arm_readpixels 0x0c02c3ec (6
     * plain reads + r9+0x3c; ParseHostImage, ResolveReadPath,
     * SetupReadback, __glkonSetupPacker, __glkonSendPixelsToHost,
     * tbus_regwrite, mgebi_Texture). */

    /* `HP_READPIXELS` (0x039). Established: Stores the rectangle and format
     * in the pixel descriptor, resolves the read path, sets up the raster
     * read-back and a packer, and sends the pixels back to the host; a
     * video-mapped display uses videoReadPixels, and the single-component
     * path writes tbus registers directly. Payload 7: x, y, width, height,
     * two words of the read state (format and type codes, inferred), the byte
     * alignment of the host buffer (low two bits). Established: the token map
     * runs `arm_readpixels` at arm1.u 0x0c02c3ec. Sent by libGLcore.so
     * ReadPixels (kon_pixel.s, token 57), then waits for read-back with
     * __glkona_wait_rdata. */
    KONA_HP_READPIXELS                   = 0x039,

    /* Read at arm1.u arm_drawpixels 0x0c02b9ec (7 plain reads, then r9+0x40
     * or r9+0x3c; SetDB, ResolveDrawPath,
     * ParseHostImage, SendPixelsToPipe). */

    /* `HP_DRAWPIXELS` (0x03a). Established: Stores the header in the pixel
     * descriptor, resolves the draw buffer and path, parses the host image to
     * compute its length and sends it (inline or after a later DMA) to the
     * engines through the pixel stages with SendPixelsToPipe. Payload 8:
     * width, height, format code, type code, byte offset of the image in its
     * first word, data-by-DMA flag, row mode, first column of this piece; the
     * image follows when the DMA word is 0. Established: the token map runs
     * `arm_drawpixels` at arm1.u 0x0c02b9ec. Sent by libGLcore.so
     * DoDrawPixelsOrTexels (kon_pixel.s, token 58). */
    KONA_HP_DRAWPIXELS                   = 0x03a,

    /* Engine handlers whose slots the code of `arm_getcurrent` loads, in
     * order: `mgesi_StartRdata`, `mgesi_FinishRdata`. Read at arm1.u
     * arm_getcurrent 0x0c038460; getcurrent 0x0c0383dc; ge.u
     * mgesi_StartRdata/mgesi_FinishRdata
     * (hostio.S:346,409); kon_get.s __glkona_wait_rdata. */

    /* `HP_GETCURRENT` (0x03b). Inferred: Query: programs the read-back from
     * the address pair and length kept by RDATA_SETUP (engine StartRdata,
     * slot 413), writes reply count 13 to raster register 0x476, runs the
     * getcurrent helper (sets transfer mask, then engine GetCurrent, slot
     * 222) to push current colour, index, texture coordinate and normal
     * values, then FinishRdata (414). Payload 1 (zero, read and dropped):
     * dummy zero; libGLcore sends 0. Established: the token map runs
     * `arm_getcurrent` at arm1.u 0x0c038460. Sent by libGLcore.so
     * kona_get_current -> __glkon_get_special(59,
     * 0) (kon_get.s). */
    KONA_HP_GETCURRENT                   = 0x03b,

    /* Engine handlers whose slots the code of `arm_getclipplane` loads, in
     * order: `mgesi_StartRdata`, `mgesi_Eram2ODMA`, `mgesi_FinishRdata`. Read
     * at arm1.u arm_getclipplane 0x0c0385c8. */

    /* `HP_GETCLIPPLANE` (0x03c). Inferred: Query: StartRdata, reply count 4
     * to 0x476, then engine Eram2ODMA (slot 197) reads 4 words from engine
     * ERAM address 0x90a + 4*i, then FinishRdata. The ARM keeps no clip-plane
     * copy. Payload 1: clip plane enum GL_CLIP_PLANE0 + i (0x3000 + i).
     * Established: the token map runs `arm_getclipplane` at arm1.u
     * 0x0c0385c8. Sent by libGLcore.so __glkonim_GetClipPlane ->
     * __glkon_get_special(60, plane) (kon_get.s). */
    KONA_HP_GETCLIPPLANE                 = 0x03c,

    /* Engine handlers whose slots the code of `arm_getraster` loads, in
     * order: `mgesi_StartRdata`, `mgesi_GetRaster`, `mgesi_FinishRdata`. Read
     * at arm1.u arm_getraster 0x0c0384c4; ge.u mgesi_GetRaster (get.S). */

    /* `HP_GETRASTER` (0x03d). Inferred: Query: StartRdata, reply count 15 to
     * 0x476, deposits the GetRaster handler address (slot 200) in operand
     * port 0x4f4, FinishRdata. The engine handler delivers the current raster
     * position data. Payload 1 (zero, read and dropped): dummy zero.
     * Established: the token map runs `arm_getraster` at arm1.u 0x0c0384c4.
     * Sent by libGLcore.so kona_get_raster -> __glkon_get_special(61,
     * 0) (kon_get.s). */
    KONA_HP_GETRASTER                    = 0x03d,

    /* Engine handlers whose slots the code of `arm_geterror` loads, in order:
     * `mgesi_StartRdata`, `mgebi_ErrQuery`, `mgesi_FinishRdata`. Read at
     * arm1.u arm_geterror 0x0c03852c; ge.u mgebi_ErrQuery. */

    /* `HP_GETERROR` (0x03e). Inferred: Query: StartRdata, reply count 1 to
     * 0x476. If the ARM holds a pending error code (r8+0x860) it sends that
     * to 0x476 and clears it; otherwise it deposits ErrQuery (slot 339) in
     * port 0x4fc so the engine's own error is reported. Then FinishRdata.
     * Payload 1 (zero, read and dropped): dummy zero. Established: the token
     * map runs `arm_geterror` at arm1.u 0x0c03852c. Sent by libGLcore.so
     * __glkonim_GetError -> __glkon_get_special(62,
     * 0) (kon_get.s). */
    KONA_HP_GETERROR                     = 0x03e,

    /* Read at arm1.u arm_getfloatv 0x0c0265b0 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETFLOATV` (0x03f). Dead slot for the bulk float query: the map
     * word of token 0x03f ends at a lone branch at 0x0c0265b0 into
     * arm_badcmd. Established (read in full: the stub and arm_badcmd
     * 0x0c0017f4-0x0c001854): a word with this number would print both token
     * numbers and then read and print 100 words before spinning on the FIFO,
     * so the pipe would stall. Inferred from kon_get.s: __glkonim_GetFloatv
     * and its Double, Integer and Boolean siblings never store 0x03f; the
     * shared helper kona_get stores token 76, HP_GETV (0x04c), and one word
     * (the parameter name) and then waits in __glkona_wait_rdata for the
     * read-back, and the typed getters call that wait themselves; which of
     * them reaches kona_get was not followed. Conversion to the requested
     * type happens on the host, so no per-type query token is needed. */
    KONA_HP_GETFLOATV                    = 0x03f,

    /* Read at arm1.u arm_getintegerv 0x0c0265b4 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETINTEGERV` (0x040). Dead slot for the bulk integer query: token
     * 0x040 maps to a one-word branch at 0x0c0265b4 that lands in arm_badcmd,
     * which reports the offending and the previous token and then drains
     * words forever. Established (read in full: the stub and arm_badcmd
     * 0x0c0017f4-0x0c001854). Inferred from kon_get.s: glGetIntegerv is
     * __glkonim_GetIntegerv, the longest of the four typed getters (154
     * instructions against 144 for the float and double ones); its calls are
     * __glkona_wait_rdata and an indirect helper, and it stores no token
     * itself. The one query token in the library is kona_get's 76, HP_GETV
     * (0x04c), which carries only the parameter name. Integer conversion is
     * therefore done by the library after the read-back, not requested from
     * the pipe. */
    KONA_HP_GETINTEGERV                  = 0x040,

    /* Engine handlers whose slots the code of `arm_getlightfv` loads, in
     * order: `mgesi_LiGetLight`. Read at arm1.u arm_getlightfv 0x0c017874;
     * ge.u mgesi_LiGetLight. */

    /* `HP_GETLIGHTFV` (0x041). Inferred: Query: start_rdata, reply count 4
     * (pname below 0x1204), 3 (0x1204) or 1 (above), then sends the light's
     * ERAM address from table ADDR_LIGHT[light] and pname to engine
     * LiGetLight (slot 198), then finish_rdata. Payload 2: light number,
     * pname (GL_AMBIENT etc). Established: the token map runs
     * `arm_getlightfv` at arm1.u 0x0c017874. Sent by libGLcore.so
     * __glkonim_GetLightfv / GetLightiv -> __glkon_get_special2(65, light,
     * pname) (kon_get.s). */
    KONA_HP_GETLIGHTFV                   = 0x041,

    /* Read at arm1.u arm_getlightiv 0x0c0265b8 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETLIGHTIV` (0x042). Unused integer light query. Established: the
     * map word of 0x042 points at a one-instruction branch at 0x0c0265b8 into
     * arm_badcmd, so a word with this number would print token numbers, drain
     * 100 payload words and hang (arm_badcmd 0x0c0017f4-0x0c001854 read in
     * full). Inferred from kon_get.s: __glkonim_GetLightiv checks the light
     * index against the context's light count and the name against
     * 0x1200-0x1209, then calls __glkon_get_special2 with 65, the number of
     * HP_GETLIGHTFV (0x041), storing token, light and name and waiting for
     * the read-back. Colour-valued names are rescaled to the GL integer range
     * on the host (the code multiplies by 2^32 and halves), so the pipe only
     * ever sees the float form. */
    KONA_HP_GETLIGHTIV                   = 0x042,

    /* Read at arm1.u arm_getmapdv 0x0c0265bc (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETMAPDV` (0x043). Unused evaluator-map query, double form.
     * Established: the map word of token 0x043 resolves to a branch at
     * 0x0c0265bc that enters arm_badcmd (stub and arm_badcmd read in full),
     * so the pipe would stall if it ever saw one. Inferred from kon_eval.s
     * __glkonim_GetMapdv : it accepts map targets in 3472-3511 plus the two
     * deformation-map targets 0x8194 and 0x8195, returns coefficients, order
     * or domain according to the query name 0x0a00-0x0a02 (2560-2562), and
     * for the deformation targets calls __glkon_GetDeformationd. It contains
     * no store to the command window, so the control points come from the
     * host copy that glMap kept. */
    KONA_HP_GETMAPDV                     = 0x043,

    /* Read at arm1.u arm_getmapfv 0x0c0265c0 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETMAPFV` (0x044). Unused evaluator-map query, float form.
     * Established: token 0x044 reaches only a branch at 0x0c0265c0 into
     * arm_badcmd (read in full), which would print the token pair and then
     * block the FIFO. Inferred from kon_eval.s: __glkonim_GetMapfv is the
     * float twin of the double getter, with the same map-target range
     * 3472-3511, the same selectors 0x0a00-0x0a02 and a call to
     * __glkon_GetDeformationf for the two deformation-map targets. It makes
     * no write to the FIFO window and no read-back wait, so evaluator state
     * never has to be fetched from the pipe: the host keeps the authoritative
     * copy. */
    KONA_HP_GETMAPFV                     = 0x044,

    /* Read at arm1.u arm_getmapiv 0x0c0265c4 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETMAPIV` (0x045). Unused evaluator-map query, integer form.
     * Established: the map word of 0x045 is a branch at 0x0c0265c4 to
     * arm_badcmd (stub and routine read in full); a token reaching it hangs
     * the command stream after a diagnostic print. Inferred from kon_eval.s:
     * __glkonim_GetMapiv is the longest of the map getters I measured (446
     * instructions against 360 for the float form), as expected of a function
     * that has to convert coefficient, order and domain values to integers
     * from host memory, and it hands the deformation maps to
     * __glkon_GetDeformationi. No FIFO store appears in it. */
    KONA_HP_GETMAPIV                     = 0x045,

    /* Engine handlers whose slots the code of `arm_getmaterialfv` loads, in
     * order: `mgesi_LiGetMaterial`. Read at arm1.u arm_getmaterialfv
     * 0x0c0178e4; ge.u mgesi_LiGetMaterial. */

    /* `HP_GETMATERIALFV` (0x046). Inferred: Query: sets the transfer mask,
     * start_rdata, reply count 4 (0x1200-0x1202 and 0x1600), 1 (0x1601
     * shininess) or 3 (colour indexes), then sends face and pname to engine
     * LiGetMaterial (slot 199), restores the transfer mask, finish_rdata.
     * Payload 2: face selector, pname. Established: the token map runs
     * `arm_getmaterialfv` at arm1.u 0x0c0178e4. Sent by libGLcore.so
     * __glkonim_GetMaterialfv / GetMaterialiv -> __glkon_get_special2(70,
     * face, pname) (kon_get.s). */
    KONA_HP_GETMATERIALFV                = 0x046,

    /* Read at arm1.u arm_getmaterialiv 0x0c0265c8 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETMATERIALIV` (0x047). Unused integer material query. Established:
     * token 0x047 maps to a branch at 0x0c0265c8 that enters arm_badcmd,
     * whose loop reads and prints 100 words and then spins (read in full).
     * Inferred from kon_get.s: __glkonim_GetMaterialiv accepts face 1028 or
     * 1029 (front or back) and names 0x1200-0x1209 or 0x1600-0x1603, then
     * calls __glkon_get_special2 with 70, which is HP_GETMATERIALFV (0x046),
     * waits for the read-back and rescales colour names to the integer range
     * on the host (the code multiplies by 2^32 and halves). The integer
     * variant therefore costs one float round trip, not a token of its own. */
    KONA_HP_GETMATERIALIV                = 0x047,

    /* Read at arm1.u arm_getpixelmapfv 0x0c03f2a4; do_getcolortable
     * 0x0c03f00c; ge.u mgesi_LutUpload (colortable.S:1213). */

    /* `HP_GETPIXELMAPFV` (0x048). Inferred: Query: pixelmap_index maps the
     * enum to a table slot, then do_getcolortable (kind 5) bounds-checks,
     * rounds the count up to a multiple of 32, start_rdata, sends count x 4
     * to 0x476 (the reply length in words: each table or map entry comes back
     * as four words) and runs engine LutUpload (slot 210) to push the table
     * words; finish_rdata. Payload 3: pixel map enum, first element, element
     * count (host asks at most 512). Established: the token map runs
     * `arm_getpixelmapfv` at arm1.u 0x0c03f2a4. Sent by libGLcore.so
     * __glkonim_GetPixelMapfv/uiv/usv -> __glkon_get_special3(72, map, start,
     * count) (kon_colortable.s); __glkonim_GetPixelMapfv reads the reply at
     * rdata + 8 with a 16-byte stride, one component per entry. */
    KONA_HP_GETPIXELMAPFV                = 0x048,

    /* Read at arm1.u arm_getpixelmapuiv 0x0c0265cc (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETPIXELMAPUIV` (0x049). Unused unsigned-integer pixel-map query.
     * Established: the map word of 0x049 is a branch at 0x0c0265cc that falls
     * into arm_badcmd (read in full), which would drain 100 words and hang.
     * Inferred from kon_colortable.s: __glkonim_GetPixelMapuiv (about 135
     * instructions) compares against 3184 and 3185 and calls
     * __glkonim_GetColorTableSGI for one of the two paths, and calls
     * __glkon_get_special3 with 72, the number of HP_GETPIXELMAPFV (0x048).
     * That helper stores four words (the token and three arguments) and waits
     * for the read-back; narrowing to unsigned integers is done on the host. */
    KONA_HP_GETPIXELMAPUIV               = 0x049,

    /* Read at arm1.u arm_getpixelmapusv 0x0c0265d0 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETPIXELMAPUSV` (0x04a). Unused unsigned-short pixel-map query.
     * Established: token 0x04a lands on a branch at 0x0c0265d0 into
     * arm_badcmd (read in full), the print-and-spin diagnostic. Inferred from
     * kon_colortable.s: __glkonim_GetPixelMapusv is the sixteen-bit sibling
     * of the unsigned-integer getter, with the same 3184 and 3185 checks, the
     * same __glkonim_GetColorTableSGI branch and the same
     * __glkon_get_special3 call that stores token 72 (HP_GETPIXELMAPFV,
     * 0x048); only the final host-side narrowing of the returned floats
     * differs. The pipe never sees a separate token for the short form. */
    KONA_HP_GETPIXELMAPUSV               = 0x04a,

    /* Engine handlers whose slots the code of `arm_getpolygonstipple` loads,
     * in order: `mgeb_PolygonStippleRotate`, `mgesi_Eram2ODMA`,
     * `mgeb_LoadMatrix_Modelview`, `mgeb_LoadMatrix_Projection`. Read at
     * arm1.u arm_getpolygonstipple 0x0c02c890. */

    /* `HP_GETPOLYGONSTIPPLE` (0x04b). Inferred: Query: rotates the engine's
     * stipple pattern back to origin using the unpack row and skip offsets
     * (engine PolygonStippleRotate, ports 0x478/0x840), start_rdata, reply
     * count 32 to 0x476, Eram2ODMA reads 32 words from ERAM 0x26b,
     * finish_rdata, then rotates the pattern back by the complementary
     * offsets. Payload 1 (zero, read and dropped): dummy zero. Established:
     * the token map runs `arm_getpolygonstipple` at arm1.u 0x0c02c890. Sent
     * by libGLcore.so __glkonim_GetPolygonStipple -> __glkon_get_special(75,
     * 0) (kon_pixel.s). */
    KONA_HP_GETPOLYGONSTIPPLE            = 0x04b,

    /* Engine handlers whose slots the code of `arm_getv` loads, in order:
     * `mgesi_StartRdata`, `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`,
     * `mgesi_FinishRdata`. Read at arm1.u arm_getv 0x0c038058-0x0c0382c0;
     * table get_table 0x0404ebe4. */

    /* `HP_GETV` (0x04c). Inferred: Query: a lookup table (get_table at
     * 0x0404ebe4, 8-byte entries, indexed by pname) gives kind and value
     * count. Kinds: shadow words from ARM RAM (two bases), ERAM or CRAM dump
     * through Eram2ODMA/Cram2ODMA (slots 197/196), a function call, or
     * invalid (count 0 and invalid-enum error). Reply count is sent to 0x476
     * first. Payload 1: pname (GL state enum). Established: the token map
     * runs `arm_getv` at arm1.u 0x0c038058. Sent by libGLcore.so
     * kona_get(pname) -> token 76 (kon_get.s); __glkona_wait_rdata. */
    KONA_HP_GETV                         = 0x04c,

    /* Engine handlers whose slots the code of `arm_gettexenvfv` loads, in
     * order: `mgesi_Eram2ODMA`. Read at arm1.u arm_gettexenvfv 0x0c025098. */

    /* `HP_GETTEXENVFV` (0x04d). Inferred: Query: start_rdata, then Eram2ODMA
     * (slot 197): pname 0x2200 returns 1 word from ERAM 0x293, 0x2201 returns
     * 4 from 0x28b, any other returns 4 from 0x28f; count to 0x476 first;
     * finish_rdata. Payload 1: pname (0x2200 mode, 0x2201 colour, other).
     * Established: the token map runs `arm_gettexenvfv` at arm1.u 0x0c025098.
     * Sent by libGLcore.so do_gettexenv -> __glkon_get_special(77, pname)
     * (kon_get.s). */
    KONA_HP_GETTEXENVFV                  = 0x04d,

    /* Read at arm1.u arm_gettexenviv 0x0c0265d4 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXENVIV` (0x04e). Unused integer texture-environment query.
     * Established: the map word of 0x04e points at a branch at 0x0c0265d4 to
     * arm_badcmd (read in full). Inferred from kon_get.s:
     * __glkonim_GetTexEnviv shares the static helper do_gettexenv
     * (0x0d959d80) with the float getter; the helper insists on target
     * 0x2300, calls __glkon_get_special with 77, the number of HP_GETTEXENVFV
     * (0x04d), and the integer entry converts the floats afterwards (colour
     * values multiplied by 2^32 and halved, the rest truncated). The
     * disassembler labels the helper call as GetMaterialiv because the callee
     * is reached through a base-register offset. */
    KONA_HP_GETTEXENVIV                  = 0x04e,

    /* Read at arm1.u arm_gettexgendv 0x0c0265d8 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXGENDV` (0x04f). Unused double-precision texgen query.
     * Established: token 0x04f is a branch at 0x0c0265d8 into arm_badcmd
     * (read in full). Inferred from kon_get.s: __glkonim_GetTexGendv
     * validates the coordinate (0x2000-0x2003) and the name (0x2500-0x2502
     * plane values and the 0x81f4-0x81f7 SGIX range), then calls
     * __glkon_get_special2 with 80, the number of HP_GETTEXGENFV (0x050), and
     * widens each returned float to a double with cvt.d.s. The plane
     * equations therefore travel from the pipe as floats and are widened by
     * the host. */
    KONA_HP_GETTEXGENDV                  = 0x04f,

    /* Engine handlers whose slots the code of `arm_gettexgenfv` loads, in
     * order: `mgesi_StartRdata`, `mgesi_Eram2ODMA`, `mgesi_FinishRdata`. Read
     * at arm1.u arm_gettexgenfv 0x0c03864c. */

    /* `HP_GETTEXGENFV` (0x050). Inferred: Query: StartRdata. pname 0x2500
     * (mode) is answered from an ARM shadow (r8+0x804+4*coord) with count 1;
     * plane pnames (0x2501, 0x2502 and extension names 0x81f4-0x81f7) send
     * count 16 or 24 then Eram2ODMA from fixed ERAM addresses; any other
     * pname replies with nothing; FinishRdata. Payload 2: coord (0x2000 + i),
     * pname. Established: the token map runs `arm_gettexgenfv` at arm1.u
     * 0x0c03864c. Sent by libGLcore.so __glkonim_GetTexGeniv/dv/fv ->
     * __glkon_get_special2(80, coord, pname) (kon_get.s). */
    KONA_HP_GETTEXGENFV                  = 0x050,

    /* Read at arm1.u arm_gettexgeniv 0x0c0265dc (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXGENIV` (0x051). Unused integer texgen query. Established:
     * token 0x051 maps to a branch at 0x0c0265dc that lands in arm_badcmd
     * (read in full). Inferred from kon_get.s: __glkonim_GetTexGeniv follows
     * the same recipe as its double and float siblings, calling
     * __glkon_get_special2 with 80 (HP_GETTEXGENFV, 0x050) after storing the
     * coordinate and name, then narrowing the result: the plane names
     * 0x2501-0x2502 are truncated to integers with trunc.w.s, and the mode
     * name 0x2500 takes a separate path. Because all three getters share one
     * float token, the pipe needs no integer texgen opcode. */
    KONA_HP_GETTEXGENIV                  = 0x051,

    /* Read at arm1.u arm_getteximage 0x0c02c298; getteximage 0x0c02c358. */

    /* `HP_GETTEXIMAGE` (0x052). Inferred: Stores the 18 words into the image
     * descriptor block (r8+0x900), parses it, picks a read path, sets up the
     * texture read, packer and sends the image to the host with
     * __glkonSendPixelsToHost: the image returns as a pixel read-back, not as
     * a counted reply. Payload 18: target (1D 0x0de0, 2D 0x0de1) then the
     * host-image description words (format, type, pack state, sizes)
     * libGLcore copies from its context. Established: the token map runs
     * `arm_getteximage` at arm1.u 0x0c02c298. Sent by libGLcore.so ReadTexels
     * (kon_pixel.s) builds the 18-word block inside a KONA_DMAREAD (ioctl
     * 10000) command list, not via the FIFO store directly. */
    KONA_HP_GETTEXIMAGE                  = 0x052,

    /* Read at arm1.u arm_gettexparameterfv 0x0c0265e0 (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXPARAMETERFV` (0x053). Unused float texture-parameter query.
     * Established (read in full): the slot for 0x053 is the jump at
     * 0x0c0265e0 into arm_badcmd. Inferred from kon_texture_api.s:
     * __glkonim_GetTexParameterfv has about 60 instructions, no FIFO store
     * and one call, to __glKonGetTexParameter, a long host-side routine (464
     * instructions) that compares the name against dozens of constants, many
     * of them 0x80xx and 0x81xx extension names. Texture parameters live in
     * the host texture object, so queries never leave the host. */
    KONA_HP_GETTEXPARAMETERFV            = 0x053,

    /* Read at arm1.u arm_gettexparameteriv 0x0c0265e4 (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXPARAMETERIV` (0x054). Unused integer texture-parameter query.
     * Established: token 0x054 resolves to a branch at 0x0c0265e4 that enters
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_GetTexParameteriv, like its float twin, makes one call, to
     * __glKonGetTexParameter, and has no FIFO store; it differs in how it
     * hands the value back; both raise errors through __glSetError (6 call
     * sites in each). The query is answered from the texture object kept in
     * host memory. */
    KONA_HP_GETTEXPARAMETERIV            = 0x054,

    /* Read at arm1.u arm_gettexlevelparameterfv 0x0c0265e8 (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXLEVELPARAMETERFV` (0x055). Unused float per-level texture
     * query. Established: token 0x055 leads to a branch at 0x0c0265e8 into
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_GetTexLevelParameterfv is an 18-instruction wrapper whose
     * only action is a call to the integer entry
     * __glkonim_GetTexLevelParameteriv, so it adds nothing for the pipe and
     * has no FIFO store of its own. Per-level answers therefore come from
     * state the host keeps for each image. */
    KONA_HP_GETTEXLEVELPARAMETERFV       = 0x055,

    /* Read at arm1.u arm_gettexlevelparameteriv 0x0c0265ec (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_GETTEXLEVELPARAMETERIV` (0x056). Unused integer per-level texture
     * query. Established: the map word of 0x056 is a branch at 0x0c0265ec to
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_GetTexLevelParameteriv is a 353-word (1412-byte) host function
     * with sixteen error sites; it validates target and level, compares the
     * name against constants that include 4096 and 0x805c-0x8064 and
     * 0x8070-0x8071, and calls __glKonGetTexParameter from several branches.
     * It stores nothing to the FIFO window. */
    KONA_HP_GETTEXLEVELPARAMETERIV       = 0x056,

    /* Read at icu_map.tsv 0x057 (kind 1, command 388); ged_banks.tsv k=4;
     * ged_listing.txt points.s:6; ged.md How an entry is chosen; kon_modes.s
     * __glkonim_Begin. */

    /* `HP_BEGIN_POINTS` (0x057). Inferred: Starts the points primitive.
     * Routed begin token (kind 1, command 388, one payload word): the
     * distributor runs the entry-4 stub at 0x10e (points.s:6), setting class
     * register r48 = 1, handler register r62 = mgesi_Points , and the first
     * vertex state in r49. Payload 1 (libGLcore sends one zero word): a zero
     * placeholder word; the primitive is chosen by the token (libGLcore sends
     * token 87 + mode). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8c20053: command 388, geometry form,
     * count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_POINTS                 = 0x057,

    /* Read at icu_map.tsv 0x058 (kind 1, command 397); ged_banks.tsv k=13;
     * ged_listing.txt lines.s:6; ged.md How an entry is chosen; kon_modes.s
     * __glkonim_Begin. */

    /* `HP_BEGIN_LINES` (0x058). Inferred: Starts the lines primitive. Routed
     * begin token (kind 1, command 397, one payload word): the distributor
     * runs the entry-13 stub at 0x379 (lines.s:6), setting class register r48
     * = 2, handler register r62 = mgesi_LineStrip , and the first vertex
     * state in r49. Payload 1 (libGLcore sends one zero word): a zero
     * placeholder word; the primitive is chosen by the token (libGLcore sends
     * token 87 + mode). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8c68053: command 397, geometry form,
     * count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_LINES                  = 0x058,

    /* Read at icu_map.tsv 0x059 (kind 1, command 390); ged_banks.tsv k=6;
     * ged_listing.txt lineloop.s:6; ged.md How an entry is chosen;
     * kon_modes.s __glkonim_Begin. */

    /* `HP_BEGIN_LINELOOP` (0x059). Inferred: Starts the lineloop primitive.
     * Routed begin token (kind 1, command 390, one payload word): the
     * distributor runs the entry-6 stub at 0x130 (lineloop.s:6), setting
     * class register r48 = 6, handler register r62 = mgesi_LineStrip , and
     * the first vertex state in r49. Payload 1 (libGLcore sends one zero
     * word): a zero placeholder word; the primitive is chosen by the token
     * (libGLcore sends token 87 + mode). Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xd8c30053: command
     * 390, geometry form, count field 1 (bits 6-8), single floats. Sent by
     * libGLcore.so __glkonim_Begin (kon_modes.s), mode + 87, then sets the
     * in-begin flag at 4120($zero). */
    KONA_HP_BEGIN_LINELOOP               = 0x059,

    /* Read at icu_map.tsv 0x05a (kind 1, command 389); ged_banks.tsv k=5;
     * ged_listing.txt linestrip.s:6; ged.md How an entry is chosen;
     * kon_modes.s __glkonim_Begin. */

    /* `HP_BEGIN_LINESTRIP` (0x05a). Inferred: Starts the linestrip primitive.
     * Routed begin token (kind 1, command 389, one payload word): the
     * distributor runs the entry-5 stub at 0x1a2 (linestrip.s:6), setting
     * class register r48 = 5, handler register r62 = mgesi_LineStrip , and
     * the first vertex state in r49. Payload 1 (libGLcore sends one zero
     * word): a zero placeholder word; the primitive is chosen by the token
     * (libGLcore sends token 87 + mode). Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xd8c28053: command
     * 389, geometry form, count field 1 (bits 6-8), single floats. Sent by
     * libGLcore.so __glkonim_Begin (kon_modes.s), mode + 87, then sets the
     * in-begin flag at 4120($zero). */
    KONA_HP_BEGIN_LINESTRIP              = 0x05a,

    /* Read at icu_map.tsv 0x05b (kind 1, command 391); ged_banks.tsv k=7;
     * ged_listing.txt tri.s:6; ged.md How an entry is chosen; kon_modes.s
     * __glkonim_Begin. */

    /* `HP_BEGIN_TRIANGLES` (0x05b). Inferred: Starts the triangles primitive.
     * Routed begin token (kind 1, command 391, one payload word): the
     * distributor runs the entry-7 stub at 0x34b (tri.s:6), setting class
     * register r48 = 4, handler register r62 = mgesi_Triangles , and the
     * first vertex state in r49. Payload 1 (libGLcore sends one zero word): a
     * zero placeholder word; the primitive is chosen by the token (libGLcore
     * sends token 87 + mode). Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xd8c38053: command 391, geometry
     * form, count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_TRIANGLES              = 0x05b,

    /* Read at icu_map.tsv 0x05c (kind 1, command 392); ged_banks.tsv k=8;
     * ged_listing.txt tstrip.s:6; ged.md How an entry is chosen; kon_modes.s
     * __glkonim_Begin. */

    /* `HP_BEGIN_TSTRIP` (0x05c). Inferred: Starts the tstrip primitive.
     * Routed begin token (kind 1, command 392, one payload word): the
     * distributor runs the entry-8 stub at 0x040 (tstrip.s:6), setting class
     * register r48 = 9, handler register r62 = mgesi_TriangleStrip , and the
     * first vertex state in r49. Payload 1 (libGLcore sends one zero word): a
     * zero placeholder word; the primitive is chosen by the token (libGLcore
     * sends token 87 + mode). Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xd8c40053: command 392, geometry
     * form, count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_TSTRIP                 = 0x05c,

    /* Read at icu_map.tsv 0x05d (kind 1, command 393); ged_banks.tsv k=9;
     * ged_listing.txt tfanpoly.s:11; ged.md How an entry is chosen;
     * kon_modes.s __glkonim_Begin. */

    /* `HP_BEGIN_TFAN` (0x05d). Inferred: Starts the tfan primitive. Routed
     * begin token (kind 1, command 393, one payload word): the distributor
     * runs the entry-9 stub at 0x2a3 (tfanpoly.s:11), setting class register
     * r48 = 10, handler register r62 = mgesi_TfanPolyEnd and
     * mgeb_SetTfanPolyMode with r67=1 (tfanpoly.s:17-20), and the first
     * vertex state in r49. Payload 1 (libGLcore sends one zero word): a zero
     * placeholder word; the primitive is chosen by the token (libGLcore sends
     * token 87 + mode). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8c48053: command 393, geometry form,
     * count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_TFAN                   = 0x05d,

    /* Read at icu_map.tsv 0x05e (kind 1, command 394); ged_banks.tsv k=10;
     * ged_listing.txt quad.s:6; ged.md How an entry is chosen; kon_modes.s
     * __glkonim_Begin. */

    /* `HP_BEGIN_QUADS` (0x05e). Inferred: Starts the quads primitive. Routed
     * begin token (kind 1, command 394, one payload word): the distributor
     * runs the entry-10 stub at 0x1e5 (quad.s:6), setting class register r48
     * = 7, handler register r62 = mgesi_Quads , and the first vertex state in
     * r49. Payload 1 (libGLcore sends one zero word): a zero placeholder
     * word; the primitive is chosen by the token (libGLcore sends token 87 +
     * mode). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8c50053: command 394, geometry form, count
     * field 1 (bits 6-8), single floats. Sent by libGLcore.so __glkonim_Begin
     * (kon_modes.s), mode + 87, then sets the in-begin flag at 4120($zero). */
    KONA_HP_BEGIN_QUADS                  = 0x05e,

    /* Read at icu_map.tsv 0x05f (kind 1, command 395); ged_banks.tsv k=11;
     * ged_listing.txt qstrip.s:6; ged.md How an entry is chosen; kon_modes.s
     * __glkonim_Begin. */

    /* `HP_BEGIN_QSTRIP` (0x05f). Inferred: Starts the qstrip primitive.
     * Routed begin token (kind 1, command 395, one payload word): the
     * distributor runs the entry-11 stub at 0x21a (qstrip.s:6), setting class
     * register r48 = 8, handler register r62 = mgesi_QuadStrip , and the
     * first vertex state in r49. Payload 1 (libGLcore sends one zero word): a
     * zero placeholder word; the primitive is chosen by the token (libGLcore
     * sends token 87 + mode). Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xd8c58053: command 395, geometry
     * form, count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_QSTRIP                 = 0x05f,

    /* Read at icu_map.tsv 0x060 (kind 1, command 396); ged_banks.tsv k=12;
     * ged_listing.txt tfanpoly.s:32; ged.md How an entry is chosen;
     * kon_modes.s __glkonim_Begin. */

    /* `HP_BEGIN_POLYGON` (0x060). Inferred: Starts the polygon primitive.
     * Routed begin token (kind 1, command 396, one payload word): the
     * distributor runs the entry-12 stub at 0x2b3 (tfanpoly.s:32), setting
     * class register r48 = 10, handler register r62 = mgesi_TfanPolyEnd and
     * mgeb_SetTfanPolyMode with r67=0 (tfanpoly.s:38-41), and the first
     * vertex state in r49. Payload 1 (libGLcore sends one zero word): a zero
     * placeholder word; the primitive is chosen by the token (libGLcore sends
     * token 87 + mode). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8c60053: command 396, geometry form,
     * count field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glkonim_Begin (kon_modes.s), mode + 87, then sets the in-begin flag
     * at 4120($zero). */
    KONA_HP_BEGIN_POLYGON                = 0x060,

    /* Read at icu_map.tsv 0x061; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3b. */

    /* `HP_COLOR3B` (0x061). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 16, 3 data components, byte
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 1: red,
     * green, blue as byte normalised values; the first two components packed
     * into the upper bits of the token word itself, the rest in the following
     * word. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x930850c7: command 16, geometry form, count
     * field 3 (bits 6-8), untyped words. Sent by libGLcore.so
     * __glkonim_Color3b and Color3bv (kon_cfuncs.s; packs the token with the
     * data). */
    KONA_HP_COLOR3B                      = 0x061,

    /* Read at icu_map.tsv 0x062; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3d. */

    /* `HP_COLOR3D` (0x062). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 144, 6 data words, double). In the
     * idle class the program entry is the null loop (dist.s:13); the hardware
     * is inferred to convert the data and store it at vertex-record word 8,
     * filling missing components. Payload 6: 3 colour components (red, green,
     * blue) as double values. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xfa485187: command 144, geometry
     * form, count field 6 (bits 6-8), doubles. Established: libGLcore.so
     * `__glkonim_Color3d` stores 6 words after the token. Sent by
     * libGLcore.so __glkonim_Color3d and Color3dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR3D                      = 0x062,

    /* Read at icu_map.tsv 0x063; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3f. */

    /* `HP_COLOR3F` (0x063). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 144, 3 data words, float). In the
     * idle class the program entry is the null loop (dist.s:13); the hardware
     * is inferred to convert the data and store it at vertex-record word 8,
     * filling missing components. Payload 3: 3 colour components (red, green,
     * blue) as float values. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xda4850c7: command 144, geometry
     * form, count field 3 (bits 6-8), single floats. Established:
     * libGLcore.so `__glkonim_Color3f` stores 3 words after the token. Sent
     * by libGLcore.so __glkonim_Color3f and Color3fv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR3F                      = 0x063,

    /* Read at icu_map.tsv 0x064; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3i. */

    /* `HP_COLOR3I` (0x064). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 16, 3 data words, integer
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 3: 3
     * colour components (red, green, blue) as integer normalised values.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xdb0850c7: command 16, geometry form, count field 3
     * (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_Color3i` stores 3 words after the token. Sent by
     * libGLcore.so __glkonim_Color3i and Color3iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR3I                      = 0x064,

    /* Read at icu_map.tsv 0x065; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3s. */

    /* `HP_COLOR3S` (0x065). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 16, 3 data components, short
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 1: red,
     * green, blue as short normalised values; the first component packed into
     * the upper bits of the token word itself, the rest in the following
     * word. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xab0850c7: command 16, geometry form, count
     * field 3 (bits 6-8), type 1. Sent by libGLcore.so __glkonim_Color3s and
     * Color3sv (kon_cfuncs.s; packs the token with the data). */
    KONA_HP_COLOR3S                      = 0x065,

    /* Read at icu_map.tsv 0x066; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3ub. */

    /* `HP_COLOR3UB` (0x066). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 272, 3 data components, unsigned
     * byte normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 1: red,
     * green, blue as unsigned byte normalised values; the first two
     * components packed into the upper bits of the token word itself, the
     * rest in the following word. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x938850c7: command 272,
     * geometry form, count field 3 (bits 6-8), untyped words. Sent by
     * libGLcore.so __glkonim_Color3ub and Color3ubv (kon_cfuncs.s; packs the
     * token with the data). */
    KONA_HP_COLOR3UB                     = 0x066,

    /* Read at icu_map.tsv 0x067; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3ui. */

    /* `HP_COLOR3UI` (0x067). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 272, 3 data words, unsigned integer
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 3: 3
     * colour components (red, green, blue) as unsigned integer normalised
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xdb8850c7: command 272, geometry form, count
     * field 3 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_Color3ui` stores 3 words after the token. Sent by
     * libGLcore.so __glkonim_Color3ui and Color3uiv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR3UI                     = 0x067,

    /* Read at icu_map.tsv 0x068; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color3us. */

    /* `HP_COLOR3US` (0x068). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 272, 3 data components, unsigned
     * short normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 1: red,
     * green, blue as unsigned short normalised values; the first component
     * packed into the upper bits of the token word itself, the rest in the
     * following word. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xab8850c7: command 272, geometry form,
     * count field 3 (bits 6-8), type 1. Sent by libGLcore.so
     * __glkonim_Color3us and Color3usv (kon_cfuncs.s; packs the token with
     * the data). */
    KONA_HP_COLOR3US                     = 0x068,

    /* Read at icu_map.tsv 0x069; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4b. */

    /* `HP_COLOR4B` (0x069). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 16, 4 data components, byte
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 1: red,
     * green, blue, alpha as byte normalised values; the first two components
     * packed into the upper bits of the token word itself, the rest in the
     * following word. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x99085107: command 16, geometry form,
     * count field 4 (bits 6-8), untyped words. Sent by libGLcore.so
     * __glkonim_Color4b and Color4bv (kon_cfuncs.s; packs the token with the
     * data). */
    KONA_HP_COLOR4B                      = 0x069,

    /* Read at icu_map.tsv 0x06a; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4d. */

    /* `HP_COLOR4D` (0x06a). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 144, 8 data words, double). In the
     * idle class the program entry is the null loop (dist.s:13); the hardware
     * is inferred to convert the data and store it at vertex-record word 8,
     * filling missing components. Payload 8: 4 colour components (red, green,
     * blue, alpha) as double values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xf8485007: command
     * 144, geometry form, count field 0 (bits 6-8), doubles. Established:
     * libGLcore.so `__glkonim_Color4d` stores 8 words after the token. Sent
     * by libGLcore.so __glkonim_Color4d and Color4dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR4D                      = 0x06a,

    /* Read at icu_map.tsv 0x06b; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4f. */

    /* `HP_COLOR4F` (0x06b). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 144, 4 data words, float). In the
     * idle class the program entry is the null loop (dist.s:13); the hardware
     * is inferred to convert the data and store it at vertex-record word 8,
     * filling missing components. Payload 4: 4 colour components (red, green,
     * blue, alpha) as float values. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0xd8485107: command 144,
     * geometry form, count field 4 (bits 6-8), single floats. Established:
     * libGLcore.so `__glkonim_Color4f` stores 4 words after the token. Sent
     * by libGLcore.so __glkonim_Color4f and Color4fv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR4F                      = 0x06b,

    /* Read at icu_map.tsv 0x06c; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4i. */

    /* `HP_COLOR4I` (0x06c). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 16, 4 data words, integer
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 4: 4
     * colour components (red, green, blue, alpha) as integer normalised
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd9085107: command 16, geometry form, count
     * field 4 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_Color4i` stores 4 words after the token. Sent by
     * libGLcore.so __glkonim_Color4i and Color4iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR4I                      = 0x06c,

    /* Read at icu_map.tsv 0x06d; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4s. */

    /* `HP_COLOR4S` (0x06d). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 16, 4 data components, short
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 2: red,
     * green, blue, alpha as short normalised values; the first component
     * packed into the upper bits of the token word itself, the rest in the
     * following words. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xb9085107: command 16, geometry form,
     * count field 4 (bits 6-8), type 1. Sent by libGLcore.so
     * __glkonim_Color4s and Color4sv (kon_cfuncs.s; packs the token with the
     * data). */
    KONA_HP_COLOR4S                      = 0x06d,

    /* Read at icu_map.tsv 0x06e; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4ub. */

    /* `HP_COLOR4UB` (0x06e). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 272, 4 data components, unsigned
     * byte normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 1: red,
     * green, blue, alpha as unsigned byte normalised values; the first two
     * components packed into the upper bits of the token word itself, the
     * rest in the following word. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x99885107: command 272,
     * geometry form, count field 4 (bits 6-8), untyped words. Sent by
     * libGLcore.so __glkonim_Color4ub and Color4ubv (kon_cfuncs.s; packs the
     * token with the data). */
    KONA_HP_COLOR4UB                     = 0x06e,

    /* Read at icu_map.tsv 0x06f; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4ui. */

    /* `HP_COLOR4UI` (0x06f). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 272, 4 data words, unsigned integer
     * normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 4: 4
     * colour components (red, green, blue, alpha) as unsigned integer
     * normalised values. Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xd9885107: command 272, geometry
     * form, count field 4 (bits 6-8), single floats. Established:
     * libGLcore.so `__glkonim_Color4ui` stores 4 words after the token. Sent
     * by libGLcore.so __glkonim_Color4ui and Color4uiv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_COLOR4UI                     = 0x06f,

    /* Read at icu_map.tsv 0x070; ged.md geometry control fields (offset 8,
     * bits 22-30); ged_banks.tsv k=16; kon_cfuncs.s __glkonim_Color4us. */

    /* `HP_COLOR4US` (0x070). Inferred: Sets the current colour. Routed
     * geometry attribute (kind 3, command 272, 4 data components, unsigned
     * short normalised). In the idle class the program entry is the null loop
     * (dist.s:13); the hardware is inferred to convert the data and store it
     * at vertex-record word 8, filling missing components. Payload 2: red,
     * green, blue, alpha as unsigned short normalised values; the first
     * component packed into the upper bits of the token word itself, the rest
     * in the following words. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xb9885107: command 272, geometry
     * form, count field 4 (bits 6-8), type 1. Sent by libGLcore.so
     * __glkonim_Color4us and Color4usv (kon_cfuncs.s; packs the token with
     * the data). */
    KONA_HP_COLOR4US                     = 0x070,

    /* Read at icu_map.tsv 0x071 (kind 2, command 386); ged_banks.tsv k=2;
     * ged_listing.txt dist.s:13, tri.s:52-54, qstrip.s:202-204; ged.md How an
     * entry is chosen. */

    /* `HP_END` (0x071). Inferred: Ends the primitive. Routed end token (kind
     * 2, command 386, one payload word, entry 2): idle it hits the null loop
     * at 0x003 (dist.s:13); inside a primitive it runs the class end code
     * that resets r48 to 0, r49 to the idle state 0x1d and releases the
     * pending handler. Payload 1 (libGLcore sends one zero word): a zero
     * placeholder word. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8c10055: command 386, geometry form,
     * count field 1 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_End` stores 1 word after the token. Sent by libGLcore.so
     * __glkonim_End (kon_modes.s) clears the in-begin flag at 4120($zero)
     * then sends token 113; also sent after the four vertices by
     * __glkonim_Rect* (kon_rect.s). */
    KONA_HP_END                          = 0x071,

    /* Read at icu_map.tsv 0x072; ged.md geometry control fields (offset 12);
     * ged_banks.tsv k=17; kon_cfuncs.s __glkonim_Indexd. */

    /* `HP_INDEXD` (0x072). Inferred: Sets the current colour index. Routed
     * geometry attribute (kind 3, command 145, 2 data words, double). The
     * idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert and store it at vertex-record word 12. Payload 2:
     * colour index as one double. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0xf848d887: command 145,
     * geometry form, count field 2 (bits 6-8), doubles. Established:
     * libGLcore.so `__glkonim_Indexd` stores 2 words after the token. Sent by
     * libGLcore.so __glkonim_Indexd, __glkonim_Indexdv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_INDEXD                       = 0x072,

    /* Read at icu_map.tsv 0x073; ged.md geometry control fields (offset 12);
     * ged_banks.tsv k=17; kon_cfuncs.s __glkonim_Indexf. */

    /* `HP_INDEXF` (0x073). Inferred: Sets the current colour index. Routed
     * geometry attribute (kind 3, command 145, 1 data words, float). The idle
     * program entry is the null loop (dist.s:13); the hardware is inferred to
     * convert and store it at vertex-record word 12. Payload 1: colour index
     * as one float. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd848d847: command 145, geometry form,
     * count field 1 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_Indexf` stores 1 word after the token. Sent by libGLcore.so
     * __glkonim_Indexf, __glkonim_Indexfv (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_INDEXF                       = 0x073,

    /* Read at icu_map.tsv 0x074; ged.md geometry control fields (offset 12);
     * ged_banks.tsv k=17; kon_cfuncs.s __glkonim_Indexi. */

    /* `HP_INDEXI` (0x074). Inferred: Sets the current colour index. Routed
     * geometry attribute (kind 3, command 17, 1 data words, integer). The
     * idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert and store it at vertex-record word 12. Payload 1:
     * colour index as one integer. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0xd808d847: command 17,
     * geometry form, count field 1 (bits 6-8), single floats. Established:
     * libGLcore.so `__glkonim_Indexi` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_Indexi, __glkonim_Indexiv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_INDEXI                       = 0x074,

    /* Read at icu_map.tsv 0x075 (0xa808d847); ged.md geometry control fields
     * (offset 12); ged_banks.tsv k=17; arm1.u pack_cmd 0x0c039538 (16 pairs,
     * no 0x75); kon_cfuncs.s __glkonim_Indexs (sll 16), __glkonim_Indexub
     * (sll 24). */

    /* `HP_INDEXS` (0x075). Inferred: Sets the current colour index. Routed
     * geometry attribute (kind 3, command 17, 1 data word, signed short: map
     * bits 29-30 = 1, unsigned bit 23 clear, normalise bit 24 clear, two
     * valid bytes). The idle program entry is the null loop (dist.s:13); the
     * hardware is inferred to convert and store it at vertex-record word 12.
     * The pipe does not tell glIndexs from glIndexub: both use this token and
     * map entry, the map has no ARM code, and the pack table that HP_PACK
     * applies (pack_cmd) does not list 0x75. So glIndexub(v) reaches the pipe
     * as the short v x 256 (inferred from the map fields). Payload 1: the
     * colour index in the upper 16 bits of the data word. __glkonim_Indexs
     * shifts its short left by 16; __glkonim_Indexub shifts its byte left by
     * 24, so the same index arrives 256 times larger. Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0xa808d847:
     * command 17, geometry form, count field 1 (bits 6-8), type 1.
     * Established: libGLcore.so `__glkonim_Indexs` stores 1 word after the
     * token. Sent by libGLcore.so __glkonim_Indexs, __glkonim_Indexsv,
     * __glkonim_Indexub, __glkonim_Indexubv (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_INDEXS                       = 0x075,

    /* Read at icu_map.tsv 0x076; ged.md geometry control fields (offset 13);
     * ged_banks.tsv k=15; kon_cfuncs.s __glkonim_Normal3b. */

    /* `HP_NORMAL3B` (0x076). Inferred: Sets the current normal. Routed
     * geometry attribute (kind 3, command 15, 3 components, byte normalised).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, normalise integer data and store it at
     * vertex-record word 13. Payload 1: x, y, z of the normal as byte
     * normalised values; x and y packed into the upper bits of the token
     * word, z in the following word. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x9107dac7: command
     * 15, geometry form, count field 3 (bits 6-8), untyped words. Sent by
     * libGLcore.so __glkonim_Normal3b and Normal3bv (kon_cfuncs.s). */
    KONA_HP_NORMAL3B                     = 0x076,

    /* Read at icu_map.tsv 0x077; ged.md geometry control fields (offset 13);
     * ged_banks.tsv k=15; kon_cfuncs.s __glkonim_Normal3d. */

    /* `HP_NORMAL3D` (0x077). Inferred: Sets the current normal. Routed
     * geometry attribute (kind 3, command 143, 3 components, double). The
     * idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, normalise integer data and store it at
     * vertex-record word 13. Payload 6: x, y, z of the normal as double
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xf847db87: command 143, geometry form, count
     * field 6 (bits 6-8), doubles. Established: libGLcore.so
     * `__glkonim_Normal3d` stores 6 words after the token. Sent by
     * libGLcore.so __glkonim_Normal3d and Normal3dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_NORMAL3D                     = 0x077,

    /* Read at icu_map.tsv 0x078; ged.md geometry control fields (offset 13);
     * ged_banks.tsv k=15; kon_cfuncs.s __glkonim_Normal3f. */

    /* `HP_NORMAL3F` (0x078). Inferred: Sets the current normal. Routed
     * geometry attribute (kind 3, command 143, 3 components, float). The idle
     * program entry is the null loop (dist.s:13); the hardware is inferred to
     * convert, normalise integer data and store it at vertex-record word 13.
     * Payload 3: x, y, z of the normal as float values. Established: routed
     * by the host interface with no ARM code, arm1.u token-map entry
     * 0xd847dac7: command 143, geometry form, count field 3 (bits 6-8),
     * single floats. Established: libGLcore.so `__glkonim_Normal3f` stores 3
     * words after the token. Sent by libGLcore.so __glkonim_Normal3f and
     * Normal3fv (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_NORMAL3F                     = 0x078,

    /* Read at icu_map.tsv 0x079; ged.md geometry control fields (offset 13);
     * ged_banks.tsv k=15; kon_cfuncs.s __glkonim_Normal3i. */

    /* `HP_NORMAL3I` (0x079). Inferred: Sets the current normal. Routed
     * geometry attribute (kind 3, command 15, 3 components, integer
     * normalised). The idle program entry is the null loop (dist.s:13); the
     * hardware is inferred to convert, normalise integer data and store it at
     * vertex-record word 13. Payload 3: x, y, z of the normal as integer
     * normalised values. Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xd907dac7: command 15, geometry form,
     * count field 3 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_Normal3i` stores 3 words after the token. Sent by
     * libGLcore.so __glkonim_Normal3i and Normal3iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_NORMAL3I                     = 0x079,

    /* Read at icu_map.tsv 0x07a; ged.md geometry control fields (offset 13);
     * ged_banks.tsv k=15; kon_cfuncs.s __glkonim_Normal3s. */

    /* `HP_NORMAL3S` (0x07a). Inferred: Sets the current normal. Routed
     * geometry attribute (kind 3, command 15, 3 components, short
     * normalised). The idle program entry is the null loop (dist.s:13); the
     * hardware is inferred to convert, normalise integer data and store it at
     * vertex-record word 13. Payload 1: x, y, z of the normal as short
     * normalised values; x packed into the upper 16 bits of the token word, y
     * and z in the following word. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0xa907dac7: command 15,
     * geometry form, count field 3 (bits 6-8), type 1. Sent by libGLcore.so
     * __glkonim_Normal3s and Normal3sv (kon_cfuncs.s). */
    KONA_HP_NORMAL3S                     = 0x07a,

    /* Read at icu_map.tsv 0x07b; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord1d. */

    /* `HP_TEXCOORD1D` (0x07b). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 1 component, double).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 2: 1 component (s) as double values.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xfe496087: command 146, geometry form, count field 2
     * (bits 6-8), doubles. Established: libGLcore.so `__glkonim_TexCoord1d`
     * stores 2 words after the token. Sent by libGLcore.so
     * __glkonim_TexCoord1d and TexCoord1dv (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_TEXCOORD1D                   = 0x07b,

    /* Read at icu_map.tsv 0x07c; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord1f. */

    /* `HP_TEXCOORD1F` (0x07c). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 1 component, float).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 1: 1 component (s) as float values.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xde496047: command 146, geometry form, count field 1
     * (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord1f` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_TexCoord1f and TexCoord1fv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD1F                   = 0x07c,

    /* Read at icu_map.tsv 0x07d; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord1i. */

    /* `HP_TEXCOORD1I` (0x07d). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 1 component, integer).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 1: 1 component (s) as integer values.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xde096047: command 18, geometry form, count field 1
     * (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord1i` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_TexCoord1i and TexCoord1iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD1I                   = 0x07d,

    /* Read at icu_map.tsv 0x07e; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord1s. */

    /* `HP_TEXCOORD1S` (0x07e). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 1 component, short). The
     * idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 1: 1 component (s) as short values; the
     * first component packed into the upper 16 bits of the token word, the
     * rest in the following word. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0xae096047: command 18,
     * geometry form, count field 1 (bits 6-8), type 1. Established:
     * libGLcore.so `__glkonim_TexCoord1s` stores 1 word after the token. Sent
     * by libGLcore.so __glkonim_TexCoord1s and TexCoord1sv (kon_cfuncs.s). */
    KONA_HP_TEXCOORD1S                   = 0x07e,

    /* Read at icu_map.tsv 0x07f; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord2d. */

    /* `HP_TEXCOORD2D` (0x07f). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 2 components, double).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 4: 2 components (s, t) as double values.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xfc496107: command 146, geometry form, count field 4
     * (bits 6-8), doubles. Established: libGLcore.so `__glkonim_TexCoord2d`
     * stores 4 words after the token. Sent by libGLcore.so
     * __glkonim_TexCoord2d and TexCoord2dv (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_TEXCOORD2D                   = 0x07f,

    /* Read at icu_map.tsv 0x080; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord2f. */

    /* `HP_TEXCOORD2F` (0x080). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 2 components, float).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 2: 2 components (s, t) as float values.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xdc496087: command 146, geometry form, count field 2
     * (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord2f` stores 2 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord2f and TexCoord2fv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD2F                   = 0x080,

    /* Read at icu_map.tsv 0x081; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord2i. */

    /* `HP_TEXCOORD2I` (0x081). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 2 components, integer).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 2: 2 components (s, t) as integer
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xdc096087: command 18, geometry form, count
     * field 2 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord2i` stores 2 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord2i and TexCoord2iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD2I                   = 0x081,

    /* Read at icu_map.tsv 0x082; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord2s. */

    /* `HP_TEXCOORD2S` (0x082). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 2 components, short).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 1: 2 components (s, t) as short values;
     * the first component packed into the upper 16 bits of the token word,
     * the rest in the following word. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xbc096087: command
     * 18, geometry form, count field 2 (bits 6-8), type 1. Sent by
     * libGLcore.so __glkonim_TexCoord2s and TexCoord2sv (kon_cfuncs.s). */
    KONA_HP_TEXCOORD2S                   = 0x082,

    /* Read at icu_map.tsv 0x083; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord3d. */

    /* `HP_TEXCOORD3D` (0x083). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 3 components, double).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 6: 3 components (s, t, r) as double
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xfa496187: command 146, geometry form, count
     * field 6 (bits 6-8), doubles. Established: libGLcore.so
     * `__glkonim_TexCoord3d` stores 6 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord3d and TexCoord3dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD3D                   = 0x083,

    /* Read at icu_map.tsv 0x084; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord3f. */

    /* `HP_TEXCOORD3F` (0x084). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 3 components, float).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 3: 3 components (s, t, r) as float
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xda4960c7: command 146, geometry form, count
     * field 3 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord3f` stores 3 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord3f and TexCoord3fv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD3F                   = 0x084,

    /* Read at icu_map.tsv 0x085; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord3i. */

    /* `HP_TEXCOORD3I` (0x085). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 3 components, integer).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 3: 3 components (s, t, r) as integer
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xda0960c7: command 18, geometry form, count
     * field 3 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord3i` stores 3 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord3i and TexCoord3iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD3I                   = 0x085,

    /* Read at icu_map.tsv 0x086; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord3s. */

    /* `HP_TEXCOORD3S` (0x086). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 3 components, short).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 1: 3 components (s, t, r) as short
     * values; the first component packed into the upper 16 bits of the token
     * word, the rest in the following word. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xaa0960c7: command
     * 18, geometry form, count field 3 (bits 6-8), type 1. Sent by
     * libGLcore.so __glkonim_TexCoord3s and TexCoord3sv (kon_cfuncs.s). */
    KONA_HP_TEXCOORD3S                   = 0x086,

    /* Read at icu_map.tsv 0x087; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord4d. */

    /* `HP_TEXCOORD4D` (0x087). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 4 components, double).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 8: 4 components (s, t, r, q) as double
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xf8496007: command 146, geometry form, count
     * field 0 (bits 6-8), doubles. Established: libGLcore.so
     * `__glkonim_TexCoord4d` stores 8 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord4d and TexCoord4dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD4D                   = 0x087,

    /* Read at icu_map.tsv 0x088; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord4f. */

    /* `HP_TEXCOORD4F` (0x088). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 146, 4 components, float).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 4: 4 components (s, t, r, q) as float
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8496107: command 146, geometry form, count
     * field 4 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord4f` stores 4 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord4f and TexCoord4fv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD4F                   = 0x088,

    /* Read at icu_map.tsv 0x089; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord4i. */

    /* `HP_TEXCOORD4I` (0x089). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 4 components, integer).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 4: 4 components (s, t, r, q) as integer
     * values. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8096107: command 18, geometry form, count
     * field 4 (bits 6-8), single floats. Established: libGLcore.so
     * `__glkonim_TexCoord4i` stores 4 words after the token. Sent by
     * libGLcore.so __glkonim_TexCoord4i and TexCoord4iv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_TEXCOORD4I                   = 0x089,

    /* Read at icu_map.tsv 0x08a; ged.md geometry control fields (offset 16);
     * ged_banks.tsv k=18; kon_cfuncs.s __glkonim_TexCoord4s. */

    /* `HP_TEXCOORD4S` (0x08a). Inferred: Sets the current texture coordinate.
     * Routed geometry attribute (kind 3, command 18, 4 components, short).
     * The idle program entry is the null loop (dist.s:13); the hardware is
     * inferred to convert, fill missing components and store it at
     * vertex-record word 16. Payload 2: 4 components (s, t, r, q) as short
     * values; the first component packed into the upper 16 bits of the token
     * word, the rest in the following words. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xb8096107: command
     * 18, geometry form, count field 4 (bits 6-8), type 1. Sent by
     * libGLcore.so __glkonim_TexCoord4s and TexCoord4sv (kon_cfuncs.s). */
    KONA_HP_TEXCOORD4S                   = 0x08a,

    /* Read at icu_map.tsv 0x08b; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex2d. */

    /* `HP_VERTEX2D` (0x08b). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 206, 2 components, double, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 4: 2
     * components (x, y) as double values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xfc674107: command
     * 206, geometry form, count field 4 (bits 6-8), doubles. Established:
     * libGLcore.so `__glkonim_Vertex2d` stores 4 words after the token. Sent
     * by libGLcore.so __glkonim_Vertex2d and Vertex2dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_VERTEX2D                     = 0x08b,

    /* Read at icu_map.tsv 0x08c; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex2f. */

    /* `HP_VERTEX2F` (0x08c). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 206, 2 components, float, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 2: 2
     * components (x, y) as float values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xdc674087: command
     * 206, geometry form, count field 2 (bits 6-8), single floats.
     * Established: libGLcore.so `__glkonim_Vertex2f` stores 2 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex2f and Vertex2fv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX2F                     = 0x08c,

    /* Read at icu_map.tsv 0x08d; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex2i. */

    /* `HP_VERTEX2I` (0x08d). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 78, 2 components, integer, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 2: 2
     * components (x, y) as integer values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xdc274087: command
     * 78, geometry form, count field 2 (bits 6-8), single floats.
     * Established: libGLcore.so `__glkonim_Vertex2i` stores 2 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex2i and Vertex2iv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX2I                     = 0x08d,

    /* Read at icu_map.tsv 0x08e; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex2s. */

    /* `HP_VERTEX2S` (0x08e). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 78, 2 components, short, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 1: 2
     * components (x, y) as short values; the first component packed into the
     * upper 16 bits of the token word, the rest in the following word.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xbc274087: command 78, geometry form, count field 2
     * (bits 6-8), type 1. Sent by libGLcore.so __glkonim_Vertex2s and
     * Vertex2sv (kon_cfuncs.s). */
    KONA_HP_VERTEX2S                     = 0x08e,

    /* Read at icu_map.tsv 0x08f; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex3d. */

    /* `HP_VERTEX3D` (0x08f). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 206, 3 components, double, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 6: 3
     * components (x, y, z) as double values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xfa674187: command
     * 206, geometry form, count field 6 (bits 6-8), doubles. Established:
     * libGLcore.so `__glkonim_Vertex3d` stores 6 words after the token. Sent
     * by libGLcore.so __glkonim_Vertex3d and Vertex3dv (kon_cfuncs.s,
     * kon_sfuncs.s). */
    KONA_HP_VERTEX3D                     = 0x08f,

    /* Read at icu_map.tsv 0x090; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex3f. */

    /* `HP_VERTEX3F` (0x090). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 206, 3 components, float, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 3: 3
     * components (x, y, z) as float values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xda6740c7: command
     * 206, geometry form, count field 3 (bits 6-8), single floats.
     * Established: libGLcore.so `__glkonim_Vertex3f` stores 3 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex3f and Vertex3fv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX3F                     = 0x090,

    /* Read at icu_map.tsv 0x091; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex3i. */

    /* `HP_VERTEX3I` (0x091). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 78, 3 components, integer, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 3: 3
     * components (x, y, z) as integer values. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xda2740c7: command
     * 78, geometry form, count field 3 (bits 6-8), single floats.
     * Established: libGLcore.so `__glkonim_Vertex3i` stores 3 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex3i and Vertex3iv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX3I                     = 0x091,

    /* Read at icu_map.tsv 0x092; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex3s. */

    /* `HP_VERTEX3S` (0x092). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 78, 3 components, short, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 1: 3
     * components (x, y, z) as short values; the first component packed into
     * the upper 16 bits of the token word, the rest in the following word.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xaa2740c7: command 78, geometry form, count field 3
     * (bits 6-8), type 1. Sent by libGLcore.so __glkonim_Vertex3s and
     * Vertex3sv (kon_cfuncs.s). */
    KONA_HP_VERTEX3S                     = 0x092,

    /* Read at icu_map.tsv 0x093; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex4d. */

    /* `HP_VERTEX4D` (0x093). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 206, 4 components, double, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 8: 4
     * components (x, y, z, w) as double values. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0xf8674007:
     * command 206, geometry form, count field 0 (bits 6-8), doubles.
     * Established: libGLcore.so `__glkonim_Vertex4d` stores 8 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex4d and Vertex4dv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX4D                     = 0x093,

    /* Read at icu_map.tsv 0x094; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex4f. */

    /* `HP_VERTEX4F` (0x094). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 206, 4 components, float, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 4: 4
     * components (x, y, z, w) as float values. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0xd8674107:
     * command 206, geometry form, count field 4 (bits 6-8), single floats.
     * Established: libGLcore.so `__glkonim_Vertex4f` stores 4 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex4f and Vertex4fv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX4F                     = 0x094,

    /* Read at icu_map.tsv 0x095; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex4i. */

    /* `HP_VERTEX4I` (0x095). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 78, 4 components, integer, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 4: 4
     * components (x, y, z, w) as integer values. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0xd8274107:
     * command 78, geometry form, count field 4 (bits 6-8), single floats.
     * Established: libGLcore.so `__glkonim_Vertex4i` stores 4 words after the
     * token. Sent by libGLcore.so __glkonim_Vertex4i and Vertex4iv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_VERTEX4I                     = 0x095,

    /* Read at icu_map.tsv 0x096; ged.md How an entry is chosen (k=14, vertex
     * flag); ged_listing.txt trigger.s:7; ged_relocs.tsv; kon_cfuncs.s
     * __glkonim_Vertex4s. */

    /* `HP_VERTEX4S` (0x096). Inferred: Submits a vertex. Routed vertex token
     * (kind 3, command 78, 4 components, short, vertex flag set): outside
     * begin/end the idle code (trigger.s:7) leaves mges_NullCommand pending;
     * inside, it runs the active class's vertex code at the state in r49,
     * which queues the class handler (mgesi_*) for the engines. Payload 2: 4
     * components (x, y, z, w) as short values; the first component packed
     * into the upper 16 bits of the token word, the rest in the following
     * words. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xb8274107: command 78, geometry form, count
     * field 4 (bits 6-8), type 1. Sent by libGLcore.so __glkonim_Vertex4s and
     * Vertex4sv (kon_cfuncs.s). */
    KONA_HP_VERTEX4S                     = 0x096,

    /* Read at icu_map.tsv 0x097; ged_listing.txt material.s:6-8, 11-18 (r71 =
     * slot 158); ge_listing/material.S.lst mgeb_Material; kon_cfuncs.s
     * __glkonim_Materialfv. */

    /* `HP_MATERIALF` (0x097). Inferred: Sets a material parameter from
     * floats. Routed geometry token (kind 3, command 129, 6 words, entry 1):
     * the distributor loads slot mgeb_Material into r71 and releases, so that
     * engine handler (material.S) branches on face and parameter to update
     * ambient, diffuse, shininess or the pushed material, or flags an invalid
     * enum. Payload 6: face enum, parameter name enum, then four floats (the
     * parameter values). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xd8408187: command 129, geometry
     * form, count field 6 (bits 6-8), single floats. Established:
     * libGLcore.so `__glkonim_Materialfv` stores 6 words after the token.
     * Sent by libGLcore.so __glkonim_Materialfv (kon_cfuncs.s);
     * __glkonim_Materialiv and kon_materiali.s convert integer data to floats
     * and send this token too. */
    KONA_HP_MATERIALF                    = 0x097,

    /* Read at icu_map.tsv 0x098 (entry 0xd84f8507, bit 31 set, bits 6-8 = 4);
     * ged_banks.tsv k=31; ged.md count rule. */

    /* `HP_MATERIALF_cont` (0x098). Inferred: Continuation of a material
     * command. Routed geometry token (command 159, entry 31, 4 words, float,
     * chain bit clear). Command 159 is shared with MATERIALI, the first half
     * of the split form; its entry number k is 31, the material continuation
     * of ged.md (B[31] is the null loop in the idle class), and the data
     * words are taken in order. Payload 4: four values (the parameter values
     * of a split material command); the map count reads as 4 (geometry entry,
     * bits 6-8), not the 20 in icu_map.tsv. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0xd84f8507: command
     * 159, geometry form, count field 4 (bits 6-8), single floats. No sender
     * found: tokens.tsv lists 0 sites; searched libGLcore, ddx and kernel
     * listings for token 152 (0x98) stores and found none. */
    KONA_HP_MATERIALF_cont               = 0x098,

    /* Read at icu_map.tsv 0x099 (entry 0xd84f808f, chain bit 3 set, bits 6-8
     * = 2) and 0x09a; ged.md count rule. */

    /* `HP_MATERIALI` (0x099). Inferred: First half of an integer-material
     * command. Routed geometry token (command 159, entry 31, 2 words, chain
     * bit set): after these two words the chain bit moves to the next map
     * entry, MATERIALI_cont, which takes four more words and runs the
     * material code. Payload 2 (then 4 more from the chained entry): face
     * enum and parameter name enum; the four values follow in the chained
     * entry HP_MATERIALI_cont. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xd84f808f: command 159, geometry
     * form, count field 2 (bits 6-8), single floats. No sender found:
     * libGLcore __glkonim_Materialiv (kon_materiali.s) sends token 151
     * (MATERIALF) with six words instead. */
    KONA_HP_MATERIALI                    = 0x099,

    /* Read at icu_map.tsv 0x09a (entry 0xd8008507); ged_banks.tsv k=1;
     * ged_listing.txt material.s:11-18; ge_listing/material.S.lst
     * mgeb_Material. */

    /* `HP_MATERIALI_cont` (0x09a). Inferred: Second half of the
     * integer-material command. Routed geometry token (command 1, entry 1, 4
     * words): command 1 enters the shared material code (material.s:11) which
     * loads slot mgeb_Material into r71, so the engine handler applies the
     * two earlier words and these four values. Payload 4: the four parameter
     * values following face and parameter name; the map count is 4 (geometry
     * entry, bits 6-8), not the 20 in icu_map.tsv. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0xd8008507:
     * command 1, geometry form, count field 4 (bits 6-8), single floats. No
     * sender found: no listing stores token 154 (0x9a); Materialiv sends
     * token 151 instead. */
    KONA_HP_MATERIALI_cont               = 0x09a,

    /* Read at icu_map.tsv 0x09b (entry 0x51e0006f); ged.md register/pixel
     * entries (register 0x28f); ged_listing.txt dist.s:23-26 (r69 =
     * mges_EvalCoord); ge_handlers.md uevalcoord.s. */

    /* `HP_EVAL_COORD1D` (0x09b). Inferred: Starts an evaluator coordinate or
     * point command. Routed register-type token (command 448, count 1, chain
     * bit set): the word goes to distributor register 0x28f and the chained
     * _cont entry delivers the coordinates. Later vertex code is inferred to
     * call mges_EvalCoord (uevalcoord.s). Payload 1: a dimension or count
     * word (libGLcore sends 1 for a 1D call); the coordinates come in the
     * chained entry. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x51e0006f: command 448, count field 1
     * (bits 6-10, 0 read as 32), single floats. No sender found: tokens.tsv
     * lists 0 sites; libGLcore sends only the float forms (tokens 157 and
     * 161) and the EvalPoint host routines call the EvalCoord function
     * pointer. */
    KONA_HP_EVAL_COORD1D                 = 0x09b,

    /* Read at icu_map.tsv 0x09c; ged_bound_table.tsv index 14
     * (mges_NullCommand); ged_listing.txt dist.s:23-26; ge_handlers.md
     * uevalcoord.s. */

    /* `HP_EVAL_COORD1D_cont` (0x09c). Inferred: Carries the evaluator
     * coordinate. Routed geometry token (kind 3, command 142, entry 14, 2
     * words, double): the data sits where the vertex path expects a vertex,
     * and mges_EvalCoord, entered from the preceding register entry,
     * evaluates the map at this coordinate. Payload 2: the coordinate value
     * as double (2 words). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xf8474087: command 142, geometry
     * form, count field 2 (bits 6-8), doubles. No sender found: tokens.tsv
     * lists 0 sites; no libGLcore listing sends the double or point forms. */
    KONA_HP_EVAL_COORD1D_cont            = 0x09c,

    /* Read at icu_map.tsv 0x09d (entry 0x51e0006f); ged.md register/pixel
     * entries (register 0x28f); ged_listing.txt dist.s:23-26 (r69 =
     * mges_EvalCoord); ge_handlers.md uevalcoord.s. */

    /* `HP_EVAL_COORD1F` (0x09d). Inferred: Starts an evaluator coordinate or
     * point command. Routed register-type token (command 448, count 1, chain
     * bit set): the word goes to distributor register 0x28f and the chained
     * _cont entry delivers the coordinates. Later vertex code is inferred to
     * call mges_EvalCoord (uevalcoord.s). Payload 1: a dimension or count
     * word (libGLcore sends 1 for a 1D call); the coordinates come in the
     * chained entry. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x51e0006f: command 448, count field 1
     * (bits 6-10, 0 read as 32), single floats. Established: libGLcore.so
     * `__glKonEvalCoord1DGe11` stores 2 words after the token. Sent by
     * libGLcore.so __glKonEvalCoord1DGe11 (kon_eval.s, token 157, then the
     * count then one float). */
    KONA_HP_EVAL_COORD1F                 = 0x09d,

    /* Read at icu_map.tsv 0x09e; ged_bound_table.tsv index 14
     * (mges_NullCommand); ged_listing.txt dist.s:23-26; ge_handlers.md
     * uevalcoord.s. */

    /* `HP_EVAL_COORD1F_cont` (0x09e). Inferred: Carries the evaluator
     * coordinate. Routed geometry token (kind 3, command 142, entry 14, 1
     * word, float): the data sits where the vertex path expects a vertex, and
     * mges_EvalCoord, entered from the preceding register entry, evaluates
     * the map at this coordinate. Payload 1: the coordinate value as float (1
     * word). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8474047: command 142, geometry form, count
     * field 1 (bits 6-8), single floats. Sent by libGLcore.so
     * __glKonEvalCoord1DGe11 (kon_eval.s, the float stores after the count
     * word). */
    KONA_HP_EVAL_COORD1F_cont            = 0x09e,

    /* Read at icu_map.tsv 0x09f (entry 0x51e0006f); ged.md register/pixel
     * entries (register 0x28f); ged_listing.txt dist.s:23-26 (r69 =
     * mges_EvalCoord); ge_handlers.md uevalcoord.s. */

    /* `HP_EVAL_COORD2D` (0x09f). Inferred: Starts an evaluator coordinate or
     * point command. Routed register-type token (command 448, count 1, chain
     * bit set): the word goes to distributor register 0x28f and the chained
     * _cont entry delivers the coordinates. Later vertex code is inferred to
     * call mges_EvalCoord (uevalcoord.s). Payload 1: a dimension or count
     * word (libGLcore sends 2 for a 2D call); the coordinates come in the
     * chained entry. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x51e0006f: command 448, count field 1
     * (bits 6-10, 0 read as 32), single floats. No sender found: tokens.tsv
     * lists 0 sites; libGLcore sends only the float forms (tokens 157 and
     * 161) and the EvalPoint host routines call the EvalCoord function
     * pointer. */
    KONA_HP_EVAL_COORD2D                 = 0x09f,

    /* Read at icu_map.tsv 0x0a0; ged_bound_table.tsv index 14
     * (mges_NullCommand); ged_listing.txt dist.s:23-26; ge_handlers.md
     * uevalcoord.s. */

    /* `HP_EVAL_COORD2D_cont` (0x0a0). Inferred: Carries the evaluator
     * coordinate. Routed geometry token (kind 3, command 142, entry 14, 4
     * words, double): the data sits where the vertex path expects a vertex,
     * and mges_EvalCoord, entered from the preceding register entry,
     * evaluates the map at this coordinate. Payload 4: the coordinate values
     * as double (4 words). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xf8474107: command 142, geometry
     * form, count field 4 (bits 6-8), doubles. No sender found: tokens.tsv
     * lists 0 sites; no libGLcore listing sends the double or point forms. */
    KONA_HP_EVAL_COORD2D_cont            = 0x0a0,

    /* Read at icu_map.tsv 0x0a1 (entry 0x51e0006f); ged.md register/pixel
     * entries (register 0x28f); ged_listing.txt dist.s:23-26 (r69 =
     * mges_EvalCoord); ge_handlers.md uevalcoord.s. */

    /* `HP_EVAL_COORD2F` (0x0a1). Inferred: Starts an evaluator coordinate or
     * point command. Routed register-type token (command 448, count 1, chain
     * bit set): the word goes to distributor register 0x28f and the chained
     * _cont entry delivers the coordinates. Later vertex code is inferred to
     * call mges_EvalCoord (uevalcoord.s). Payload 1: a dimension or count
     * word (libGLcore sends 2 for a 2D call); the coordinates come in the
     * chained entry. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x51e0006f: command 448, count field 1
     * (bits 6-10, 0 read as 32), single floats. Established: libGLcore.so
     * `__glKonEvalCoord2DGe11` stores 3 words after the token. Sent by
     * libGLcore.so __glKonEvalCoord2DGe11 (kon_eval.s, token 161, then the
     * count then two floats). */
    KONA_HP_EVAL_COORD2F                 = 0x0a1,

    /* Read at icu_map.tsv 0x0a2; ged_bound_table.tsv index 14
     * (mges_NullCommand); ged_listing.txt dist.s:23-26; ge_handlers.md
     * uevalcoord.s. */

    /* `HP_EVAL_COORD2F_cont` (0x0a2). Inferred: Carries the evaluator
     * coordinate. Routed geometry token (kind 3, command 142, entry 14, 2
     * words, float): the data sits where the vertex path expects a vertex,
     * and mges_EvalCoord, entered from the preceding register entry,
     * evaluates the map at this coordinate. Payload 2: the coordinate values
     * as float (2 words). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xd8474087: command 142, geometry
     * form, count field 2 (bits 6-8), single floats. Sent by libGLcore.so
     * __glKonEvalCoord2DGe11 (kon_eval.s, the float stores after the count
     * word). */
    KONA_HP_EVAL_COORD2F_cont            = 0x0a2,

    /* Read at icu_map.tsv 0x0a3 (entry 0x51e0006f); ged.md register/pixel
     * entries (register 0x28f); ged_listing.txt dist.s:23-26 (r69 =
     * mges_EvalCoord); ge_handlers.md uevalcoord.s. */

    /* `HP_EVAL_POINT1` (0x0a3). Inferred: Starts an evaluator coordinate or
     * point command. Routed register-type token (command 448, count 1, chain
     * bit set): the word goes to distributor register 0x28f and the chained
     * _cont entry delivers the coordinates. Later vertex code is inferred to
     * call mges_EvalCoord (uevalcoord.s). Payload 1: a dimension or count
     * word (libGLcore sends 1 for a 1D call); the coordinates come in the
     * chained entry. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x51e0006f: command 448, count field 1
     * (bits 6-10, 0 read as 32), single floats. No sender found: tokens.tsv
     * lists 0 sites; libGLcore sends only the float forms (tokens 157 and
     * 161) and the EvalPoint host routines call the EvalCoord function
     * pointer. */
    KONA_HP_EVAL_POINT1                  = 0x0a3,

    /* Read at icu_map.tsv 0x0a4; ged_bound_table.tsv index 14
     * (mges_NullCommand); ged_listing.txt dist.s:23-26; ge_handlers.md
     * uevalcoord.s. */

    /* `HP_EVAL_POINT1_cont` (0x0a4). Inferred: Carries the evaluator
     * coordinate. Routed geometry token (kind 3, command 142, entry 14, 1
     * word, float): the data sits where the vertex path expects a vertex, and
     * mges_EvalCoord, entered from the preceding register entry, evaluates
     * the map at this coordinate. Payload 1: the coordinate value as float (1
     * word). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8474047: command 142, geometry form, count
     * field 1 (bits 6-8), single floats. No sender found: tokens.tsv lists 0
     * sites; no libGLcore listing sends the double or point forms. */
    KONA_HP_EVAL_POINT1_cont             = 0x0a4,

    /* Read at icu_map.tsv 0x0a5 (entry 0x51e0006f); ged.md register/pixel
     * entries (register 0x28f); ged_listing.txt dist.s:23-26 (r69 =
     * mges_EvalCoord); ge_handlers.md uevalcoord.s. */

    /* `HP_EVAL_POINT2` (0x0a5). Inferred: Starts an evaluator coordinate or
     * point command. Routed register-type token (command 448, count 1, chain
     * bit set): the word goes to distributor register 0x28f and the chained
     * _cont entry delivers the coordinates. Later vertex code is inferred to
     * call mges_EvalCoord (uevalcoord.s). Payload 1: a dimension or count
     * word (libGLcore sends 2 for a 2D call); the coordinates come in the
     * chained entry. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x51e0006f: command 448, count field 1
     * (bits 6-10, 0 read as 32), single floats. No sender found: tokens.tsv
     * lists 0 sites; libGLcore sends only the float forms (tokens 157 and
     * 161) and the EvalPoint host routines call the EvalCoord function
     * pointer. */
    KONA_HP_EVAL_POINT2                  = 0x0a5,

    /* Read at icu_map.tsv 0x0a6; ged_bound_table.tsv index 14
     * (mges_NullCommand); ged_listing.txt dist.s:23-26; ge_handlers.md
     * uevalcoord.s. */

    /* `HP_EVAL_POINT2_cont` (0x0a6). Inferred: Carries the evaluator
     * coordinate. Routed geometry token (kind 3, command 142, entry 14, 2
     * words, float): the data sits where the vertex path expects a vertex,
     * and mges_EvalCoord, entered from the preceding register entry,
     * evaluates the map at this coordinate. Payload 2: the coordinate values
     * as float (2 words). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0xd8474087: command 142, geometry
     * form, count field 2 (bits 6-8), single floats. No sender found:
     * tokens.tsv lists 0 sites; no libGLcore listing sends the double or
     * point forms. */
    KONA_HP_EVAL_POINT2_cont             = 0x0a6,

    /* Read at arm1.u arm_edgeflag 0x0c015c7c. */

    /* `HP_EDGEFLAG` (0x0a7). Inferred: Sends all ones for a nonzero flag and
     * zero otherwise through a routed-command descriptor (0x52000020),
     * setting the current edge flag. Payload 1: Edge flag (nonzero true).
     * Established: the token map runs `arm_edgeflag` at arm1.u 0x0c015c7c.
     * Established: libGLcore.so `__glkonim_EdgeFlag` stores 1 word after the
     * token. Sent by libGLcore.so __glkonim_EdgeFlag and __glkonim_EdgeFlagv
     * (kon_cfuncs.s, kon_sfuncs.s). */
    KONA_HP_EDGEFLAG                     = 0x0a7,

    /* Read at arm1.u arm_rasterpos2d 0x0c035cf4; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS2D` (0x0a8). Inferred: Pops 4 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 211 (geometry form, double), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 4: glRasterPos2d coordinates: 2 doubles (each double is two
     * words, high word first). Established: the token map runs
     * `arm_rasterpos2d` at arm1.u 0x0c035cf4. Established: libGLcore.so
     * `__glkonim_RasterPos2d` stores 4 words after the token. Sent by
     * libGLcore.so __glkonim_RasterPos2d (kon_cfuncs.s), 2dv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos2d(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS2D                  = 0x0a8,

    /* Read at arm1.u arm_rasterpos2f 0x0c035d74; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS2F` (0x0a9). Inferred: Pops 2 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 211 (geometry form, float), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 2: glRasterPos2f coordinates: 2 floats. Established: the token
     * map runs `arm_rasterpos2f` at arm1.u 0x0c035d74. Established:
     * libGLcore.so `__glkonim_RasterPos2f` stores 2 words after the token.
     * Sent by libGLcore.so __glkonim_RasterPos2f (kon_cfuncs.s), 2fv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos2f(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS2F                  = 0x0a9,

    /* Read at arm1.u arm_rasterpos2i 0x0c035de0; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS2I` (0x0aa). Inferred: Pops 2 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 83 (geometry form, int), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 2: glRasterPos2i coordinates: 2 ints. Established: the token
     * map runs `arm_rasterpos2i` at arm1.u 0x0c035de0. Established:
     * libGLcore.so `__glkonim_RasterPos2i` stores 2 words after the token.
     * Sent by libGLcore.so __glkonim_RasterPos2i (kon_cfuncs.s), 2iv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos2i(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS2I                  = 0x0aa,

    /* Read at arm1.u arm_rasterpos2s 0x0c035e4c; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS2S` (0x0ab). Inferred: Pops 2 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 83 (geometry form, short), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90). For
     * shorts it also writes 1 through descriptor 0x06400020 first, and 0
     * afterwards when bit 6 of the byte at r8+0xcf0 is set. Payload 2:
     * glRasterPos2s coordinates: 2 shorts as full words (shorts arrive
     * sign-extended). Established: the token map runs `arm_rasterpos2s` at
     * arm1.u 0x0c035e4c. Established: libGLcore.so `__glkonim_RasterPos2s`
     * stores 2 words after the token. Sent by libGLcore.so
     * __glkonim_RasterPos2s (kon_cfuncs.s), 2sv form in kon_sfuncs.s, list
     * compiler __glkonlc_RasterPos2s(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS2S                  = 0x0ab,

    /* Read at arm1.u arm_rasterpos3d 0x0c035ee0; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS3D` (0x0ac). Inferred: Pops 6 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 211 (geometry form, double), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 6: glRasterPos3d coordinates: 3 doubles (each double is two
     * words, high word first). Established: the token map runs
     * `arm_rasterpos3d` at arm1.u 0x0c035ee0. Established: libGLcore.so
     * `__glkonim_RasterPos3d` stores 6 words after the token. Sent by
     * libGLcore.so __glkonim_RasterPos3d (kon_cfuncs.s), 3dv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos3d(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS3D                  = 0x0ac,

    /* Read at arm1.u arm_rasterpos3f 0x0c035f78; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS3F` (0x0ad). Inferred: Pops 3 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 211 (geometry form, float), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 3: glRasterPos3f coordinates: 3 floats. Established: the token
     * map runs `arm_rasterpos3f` at arm1.u 0x0c035f78. Established:
     * libGLcore.so `__glkonim_RasterPos3f` stores 3 words after the token.
     * Sent by libGLcore.so __glkonim_RasterPos3f (kon_cfuncs.s), 3fv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos3f(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS3F                  = 0x0ad,

    /* Read at arm1.u arm_rasterpos3i 0x0c035fec; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS3I` (0x0ae). Inferred: Pops 3 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 83 (geometry form, int), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 3: glRasterPos3i coordinates: 3 ints. Established: the token
     * map runs `arm_rasterpos3i` at arm1.u 0x0c035fec. Established:
     * libGLcore.so `__glkonim_RasterPos3i` stores 3 words after the token.
     * Sent by libGLcore.so __glkonim_RasterPos3i (kon_cfuncs.s), 3iv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos3i(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS3I                  = 0x0ae,

    /* Read at arm1.u arm_rasterpos3s 0x0c036060; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS3S` (0x0af). Inferred: Pops 3 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 83 (geometry form, short), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90). For
     * shorts it also writes 1 through descriptor 0x06400020 first, and 0
     * afterwards when bit 6 of the byte at r8+0xcf0 is set. Payload 3:
     * glRasterPos3s coordinates: 3 shorts as full words (shorts arrive
     * sign-extended). Established: the token map runs `arm_rasterpos3s` at
     * arm1.u 0x0c036060. Established: libGLcore.so `__glkonim_RasterPos3s`
     * stores 3 words after the token. Sent by libGLcore.so
     * __glkonim_RasterPos3s (kon_cfuncs.s), 3sv form in kon_sfuncs.s, list
     * compiler __glkonlc_RasterPos3s(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS3S                  = 0x0af,

    /* Read at arm1.u arm_rasterpos4d 0x0c0360fc; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS4D` (0x0b0). Inferred: Pops 8 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 211 (geometry form, double), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 8: glRasterPos4d coordinates: 4 doubles (each double is two
     * words, high word first). Established: the token map runs
     * `arm_rasterpos4d` at arm1.u 0x0c0360fc. Established: libGLcore.so
     * `__glkonim_RasterPos4d` stores 8 words after the token. Sent by
     * libGLcore.so __glkonim_RasterPos4d (kon_cfuncs.s), 4dv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos4d(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS4D                  = 0x0b0,

    /* Read at arm1.u arm_rasterpos4f 0x0c0361b4; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS4F` (0x0b1). Inferred: Pops 4 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 211 (geometry form, float), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 4: glRasterPos4f coordinates: 4 floats. Established: the token
     * map runs `arm_rasterpos4f` at arm1.u 0x0c0361b4. Established:
     * libGLcore.so `__glkonim_RasterPos4f` stores 4 words after the token.
     * Sent by libGLcore.so __glkonim_RasterPos4f (kon_cfuncs.s), 4fv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos4f(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS4F                  = 0x0b1,

    /* Read at arm1.u arm_rasterpos4i 0x0c036230; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS4I` (0x0b2). Inferred: Pops 4 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 83 (geometry form, int), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90).
     * Payload 4: glRasterPos4i coordinates: 4 ints. Established: the token
     * map runs `arm_rasterpos4i` at arm1.u 0x0c036230. Established:
     * libGLcore.so `__glkonim_RasterPos4i` stores 4 words after the token.
     * Sent by libGLcore.so __glkonim_RasterPos4i (kon_cfuncs.s), 4iv form in
     * kon_sfuncs.s, list compiler __glkonlc_RasterPos4i(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS4I                  = 0x0b2,

    /* Read at arm1.u arm_rasterpos4s 0x0c0362ac; set_ged_xfer_mask
     * 0x0c012ba8; XferMaskRpos 0x0c01315c (arm1_functions.md). */

    /* `HP_RASTERPOS4S` (0x0b3). Inferred: Pops 4 words, sends a filler word
     * 0x12121212 in pass form, sets the distributor transfer mask to the
     * raster-position mask (r8+0xc94), injects the coordinates as hardware
     * command 83 (geometry form, short), brackets it with writes through
     * descriptor 0x4a000020, then restores the normal mask (r8+0xc90). For
     * shorts it also writes 1 through descriptor 0x06400020 first, and 0
     * afterwards when bit 6 of the byte at r8+0xcf0 is set. Payload 4:
     * glRasterPos4s coordinates: 4 shorts as full words (shorts arrive
     * sign-extended). Established: the token map runs `arm_rasterpos4s` at
     * arm1.u 0x0c0362ac. Established: libGLcore.so `__glkonim_RasterPos4s`
     * stores 4 words after the token. Sent by libGLcore.so
     * __glkonim_RasterPos4s (kon_cfuncs.s), 4sv form in kon_sfuncs.s, list
     * compiler __glkonlc_RasterPos4s(v) (kon_cdlfuncs.s). */
    KONA_HP_RASTERPOS4S                  = 0x0b3,

    /* Engine handlers whose slots the code of `arm_clipplane` loads, in
     * order: `mgeb_UserClipPlane`. Read at arm1.u arm_clipplane 0x0c018cc0
     * (slot 89 mgeb_UserClipPlane). */

    /* `HP_CLIPPLANE` (0x0b4). Established: Sends the plane number to the data
     * port on engine select 10, then the eight equation words through routed
     * descriptor 0x78601000, and finally starts mgeb_UserClipPlane on all
     * engines through port 0x4f8. Does no validation of its own. Payload 9:
     * Clip plane number (0x3000-0x3005) followed by the plane equation as
     * four doubles (eight words). Established: the token map runs
     * `arm_clipplane` at arm1.u 0x0c018cc0. Sent by libGLcore.so
     * __glkonim_ClipPlane (kon_cfuncs.s): token 180, plane enum, four
     * doubles; emitter range-checks 0x3000-0x3005. */
    KONA_HP_CLIPPLANE                    = 0x0b4,

    /* Read at arm1.u arm_colormaterial 0x0c016c70; colormaterial_front
     * 0x0c016ce4, colormaterial_back 0x0c016d7c, colormaterial_frontback
     * 0x0c016e08; set_ged_xfer_mask 0x0c012ba8. */

    /* `HP_COLORMATERIAL` (0x0b5). Inferred: Validates face and mode
     * (invalid-enum otherwise), stores both in the shadow, changes the
     * distributor transfer masks and writes two descriptor words, then starts
     * mgeb_LiClrMtrlFront, Back or FrontBack with the mode as operand.
     * Payload 2: Face (0x404 front, 0x405 back, 0x408 front and back) and
     * material mode (0x1200 ambient, 0x1201 diffuse, 0x1202 specular, 0x1600
     * emission, 0x1602 ambient and diffuse). Established: the token map runs
     * `arm_colormaterial` at arm1.u 0x0c016c70. Established: libGLcore.so
     * `__glkonim_ColorMaterial` stores 2 words after the token. Sent by
     * libGLcore.so __glkonim_ColorMaterial (kon_cfuncs.s). */
    KONA_HP_COLORMATERIAL                = 0x0b5,

    /* Engine handlers whose slots the code of `arm_cullface` loads, in order:
     * `mgeb_CullFace`. Read at arm1.u arm_cullface 0x0c015544 (slot 3
     * mgeb_CullFace, operand on port 0x478). */

    /* `HP_CULLFACE` (0x0b6). Established: Keeps the value at r8+0x258 and
     * starts mgeb_CullFace with the value as operand. The ARM does no
     * validation; whether culling is on is controlled by the enable routine.
     * Payload 1: Face to cull (GL enum). Established: the token map runs
     * `arm_cullface` at arm1.u 0x0c015544. Sent by libGLcore.so
     * __glkonim_CullFace (kon_cfuncs.s, token 182). */
    KONA_HP_CULLFACE                     = 0x0b6,

    /* Read at icu_map.tsv 0x0b7; ged_bound_table.tsv index 1;
     * ge_listing/fog.S.lst mgeb_Fogf (imm values 0xb61-0xb66,
     * 0x8199); kon_cfuncs.s __glkonim_Fogf .L0da65e88. */

    /* `HP_FOGF` (0x0b7). Inferred: Sets one fog parameter from a float.
     * Routed pass token (command 129, 5 words, float). Command 129 selects
     * handler table index 1, mgeb_Fogf (fog.S, 211 words), which checks the
     * name (index, density, start, end, mode, colour or offset), updates the
     * fog state and rebuilds the fog table. Payload 5: fog parameter name
     * (enum), one float value, then three zero words. Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0x5840d141:
     * command 129, count field 5 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgeb_Fogf` (index 1 of the handler table). Sent by
     * libGLcore.so __glkonim_Fogf and __glkonim_Fogfv (kon_cfuncs.s, token
     * 183; Fogfv sends the parameter name then four floats). */
    KONA_HP_FOGF                         = 0x0b7,

    /* Read at icu_map.tsv 0x0b8 (entry 0x58401049, chain bit set) and 0x0b9;
     * ged_bound_table.tsv index 0; kon_cfuncs.s __glkonim_Fogi. */

    /* `HP_FOGI` (0x0b8). Inferred: First part of an integer fog command.
     * Routed pass token (command 128, 1 word, chain bit set): the parameter
     * name enters through handler table index 0 (mgesi_BshRegisterWrite) and
     * the chained FOGI_cont entry then runs mgeb_Fogi with the value. Payload
     * 1 (plus 4 in the chained entry): fog parameter name (enum); the value
     * and padding follow in HP_FOGI_cont. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x58401049: command
     * 128, count field 1 (bits 6-10, 0 read as 32), single floats. Sent by
     * libGLcore.so __glkonim_Fogi and __glkonim_Fogiv (kon_cfuncs.s, token
     * 184). */
    KONA_HP_FOGI                         = 0x0b8,

    /* Read at icu_map.tsv 0x0b9; ged_bound_table.tsv index 2;
     * ge_listing/fog.S.lst mgeb_Fogi (transfer to mgeb_Fogf at 0x6fa9);
     * ge_isa.md Transfers. */

    /* `HP_FOGI_cont` (0x0b9). Inferred: Second part of the integer fog
     * command. Routed pass token (command 2, 4 words): handler table index 2
     * holds mgeb_Fogi, which converts the integer value and jumps to the
     * float handler mgeb_Fogf with the same state update and fog-table
     * rebuild. Payload 4: the integer value then three zero words (Fogiv:
     * four integer values). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0x58015101: command 2, count field 4
     * (bits 6-10, 0 read as 32), single floats; engine handler `mgeb_Fogi`
     * (index 2 of the handler table). Sent by libGLcore.so __glkonim_Fogi,
     * __glkonim_Fogiv (kon_cfuncs.s: the words after the parameter name). */
    KONA_HP_FOGI_cont                    = 0x0b9,

    /* Engine handlers whose slots the code of `arm_frontface` loads, in
     * order: `mgeb_FrontFace`. Read at arm1.u arm_frontface 0x0c015524 (slot
     * 15 mgeb_FrontFace, port 0x478). */

    /* `HP_FRONTFACE` (0x0ba). Established: Keeps the value at r8+0x25c and
     * starts mgeb_FrontFace with it as operand; no validation in the ARM.
     * Payload 1: Winding order enum (clockwise or counter-clockwise).
     * Established: the token map runs `arm_frontface` at arm1.u 0x0c015524.
     * Sent by libGLcore.so __glkonim_FrontFace (kon_cfuncs.s, token 186). */
    KONA_HP_FRONTFACE                    = 0x0ba,

    /* Read at arm1.u arm_hint 0x0c016468 (r8+0x7ec,
     * 0x7f0 with ResolvePoint, 0x7f4 with ResolveLine, 0x7f8,
     * 0x7fc). */

    /* `HP_HINT` (0x0bb). Established: Stores the mode in one of five shadow
     * words by target. Line and point smoothing hints also re-derive the line
     * or point drawing setup; other targets send nothing. Other targets raise
     * invalid-enum. Payload 2: Hint target (0xc50 perspective correction,
     * 0xc51 point smooth, 0xc52 line smooth, 0xc53 polygon smooth, 0xc54 fog)
     * and mode. Established: the token map runs `arm_hint` at arm1.u
     * 0x0c016468. Sent by libGLcore.so __glkonim_Hint (kon_cfuncs.s, token
     * 187). */
    KONA_HP_HINT                         = 0x0bb,

    /* Engine handlers whose slots the code of `arm_linestipple` loads, in
     * order: `mgeb_LineStipple`. Read at arm1.u arm_linestipple 0x0c015ca0
     * (slot 40 mgeb_LineStipple, select 0x438; ResolveLine 0x0c016024). */

    /* `HP_LINESTIPPLE` (0x0bc). Established: Keeps both, turns the pattern
     * into a run list of on and off lengths (up to eight pairs), sends factor
     * and runs to all engines and starts mgeb_LineStipple; a solid 0xffff
     * pattern skips the engine send. Always re-derives the line setup.
     * Payload 2: Repeat factor and 16-bit pattern. Established: the token map
     * runs `arm_linestipple` at arm1.u 0x0c015ca0. Established: libGLcore.so
     * `__glkonim_LineStipple` stores 2 words after the token. Sent by
     * libGLcore.so __glkonim_LineStipple (kon_cfuncs.s). */
    KONA_HP_LINESTIPPLE                  = 0x0bc,

    /* Read at arm1.u arm_linewidth 0x0c015a14 (r8+0x240 width, r8+0x244
     * second word; ResolveLine). */

    /* `HP_LINEWIDTH` (0x0bd). Established: Stores both words in the shadow
     * and re-derives line drawing with ResolveLine. Nothing is sent from the
     * handler itself. Payload 2: Line width as a float, then a constant 32.0
     * appended by the emitter. Established: the token map runs
     * `arm_linewidth` at arm1.u 0x0c015a14. Sent by libGLcore.so
     * __glkonim_LineWidth (kon_modes.s): token 189 then width then literal
     * 0x42000000. */
    KONA_HP_LINEWIDTH                    = 0x0bd,

    /* Read at arm1.u arm_pointsize 0x0c015a00 (r8+0x220, r8+0x224;
     * ResolvePoint 0x0c016240). */

    /* `HP_POINTSIZE` (0x0be). Established: Stores both words in the shadow
     * and re-derives point drawing with ResolvePoint. Nothing is sent by the
     * handler directly. Payload 2: Point size as a float, then a constant
     * 22.0 appended by the emitter. Established: the token map runs
     * `arm_pointsize` at arm1.u 0x0c015a00. Sent by libGLcore.so
     * __glkonim_PointSize (kon_modes.s): token 190, size, literal 0x41b00000. */
    KONA_HP_POINTSIZE                    = 0x0be,

    /* Read at arm1.u arm_polygonmode 0x0c015598 (r8+0x250 front, r8+0x254
     * back; descriptor 0x49a00020; ResolvePolygon 0x0c015e8c). */

    /* `HP_POLYGONMODE` (0x0bf). Inferred: Stores the mode in the front or
     * back shadow word, writes a flag to a routed descriptor (1 when the mode
     * is line, else 0), clears a second data word and re-derives polygon
     * drawing with ResolvePolygon. Payload 2: Face (0x404 front, 0x405 back,
     * 0x408 both) and mode (0x1b00 point, 0x1b01 line, 0x1b02 fill).
     * Established: the token map runs `arm_polygonmode` at arm1.u 0x0c015598.
     * Sent by libGLcore.so __glkonim_PolygonMode (kon_cfuncs.s, token 191). */
    KONA_HP_POLYGONMODE                  = 0x0bf,

    /* Engine handlers whose slots the code of `arm_shademodel` loads, in
     * order: `mgebi_ShadeModel`. Read at arm1.u arm_shademodel 0x0c016ab8
     * (slot 99, port 0x47c). */

    /* `HP_SHADEMODEL` (0x0c0). Established: Raises invalid-enum for other
     * values; otherwise keeps it at r8+0x378 and starts mgebi_ShadeModel with
     * the value as operand. Payload 1: Shading model (0x1d00 flat, 0x1d01
     * smooth). Established: the token map runs `arm_shademodel` at arm1.u
     * 0x0c016ab8. Established: libGLcore.so `__glkonim_ShadeModel` stores 1
     * word after the token. Sent by libGLcore.so __glkonim_ShadeModel
     * (kon_cfuncs.s). */
    KONA_HP_SHADEMODEL                   = 0x0c0,

    /* Engine handlers whose slots the code of `arm_passthrough` loads, in
     * order: `mgesi_PassThrough`. Read at arm1.u arm_passthrough 0x0c038930;
     * ge.u mgesi_PassThrough. */

    /* `HP_PASSTHROUGH` (0x0c1). Established: Only in feedback mode (0x1c01):
     * sends the word to the next engine (port 0x434) then engine PassThrough
     * (slot 211), which puts a pass-through token into the feedback stream.
     * In other modes the word is read and dropped. Payload 1: float marker
     * value from glPassThrough. Established: the token map runs
     * `arm_passthrough` at arm1.u 0x0c038930. Established: libGLcore.so
     * `__glkonim_PassThrough` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_PassThrough (kon_cfuncs.s) stores token 193 then
     * the float. */
    KONA_HP_PASSTHROUGH                  = 0x0c1,

    /* Engine handlers whose slots the code of `arm_popname` loads, in order:
     * `mgeb_PopName`. Read at arm1.u arm_popname 0x0c038900; ge.u
     * mgeb_PopName. */

    /* `HP_POPNAME` (0x0c2). Established: Only in select mode (0x1c02): sends
     * PopName (slot 167) to all engines (port 0x438). Otherwise nothing is
     * sent. Payload 1 (zero, read and dropped): dummy zero. Established: the
     * token map runs `arm_popname` at arm1.u 0x0c038900. Established:
     * libGLcore.so `__glkonim_PopName` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_PopName (kon_cfuncs.s) stores token 194 then a
     * word. */
    KONA_HP_POPNAME                      = 0x0c2,

    /* Engine handlers whose slots the code of `arm_pushname` loads, in order:
     * `mgeb_PushName`. Read at arm1.u arm_pushname 0x0c0388cc; ge.u
     * mgeb_PushName. */

    /* `HP_PUSHNAME` (0x0c3). Established: Only in select mode: sends the name
     * to all engines (port 0x438, data 0x840) and runs PushName (slot 168).
     * Otherwise it is dropped. Payload 1: name integer from glPushName.
     * Established: the token map runs `arm_pushname` at arm1.u 0x0c0388cc.
     * Established: libGLcore.so `__glkonim_PushName` stores 1 word after the
     * token. Sent by libGLcore.so __glkonim_PushName (kon_cfuncs.s). */
    KONA_HP_PUSHNAME                     = 0x0c3,

    /* Read at arm1.u arm_drawbuffer 0x0c013a60 (r8+0x7e4, r8+0x1f5; address
     * word 0x013b1c0b = IMP_ADDR, select 0x3f; resolve_banks). */

    /* `HP_DRAWBUFFER` (0x0c4). Inferred: Rejects buffers the framebuffer
     * lacks with invalid-operation (back needs double buffer, right needs
     * stereo, auxiliary needs enough aux buffers) and unrecognised values
     * with invalid-enum. Otherwise builds a bank bit mask, stores the enum
     * and mask, writes the colour base of the address register and
     * re-resolves banks. Payload 1: GL draw buffer enum (none, front/back
     * left/right, front, back, left, right, front and back, auxiliary).
     * Established: the token map runs `arm_drawbuffer` at arm1.u 0x0c013a60.
     * Established: libGLcore.so `__glkonim_DrawBuffer` stores 1 word after
     * the token. Sent by libGLcore.so __glkonim_DrawBuffer (kon_cfuncs.s). */
    KONA_HP_DRAWBUFFER                   = 0x0c4,

    /* Read at arm1.u arm_accum 0x0c037dd0 (slots 337 mgesi_Accum and 434
     * mgesi_Accum32 by accumulation size byte r8+0x1d4 == 0x20; generate_rect
     * 0x0c037fb8). */

    /* `HP_ACCUM` (0x0c5). Established: Raises invalid-operation without an
     * accumulation buffer and invalid-enum for other operations; skipped
     * unless render mode is 0x1c00. Sets up the raster registers and sends
     * mgesi_Accum (or the 32-bit variant) with operation and value, then
     * generates the covering rectangle. Payload 2: Operation (0x100
     * accumulate, 0x101 load, 0x102 return, 0x103 multiply, 0x104 add) and a
     * float value. Established: the token map runs `arm_accum` at arm1.u
     * 0x0c037dd0. Established: libGLcore.so `__glkonim_Accum` stores 2 words
     * after the token. Sent by libGLcore.so __glkonim_Accum (kon_cfuncs.s,
     * token 197). */
    KONA_HP_ACCUM                        = 0x0c5,

    /* Engine handlers whose slots the code of `arm_finish` loads, in order:
     * `mgesi_FlushRM`. Read at arm1.u arm_finish 0x0c014040 (slot 399
     * mgesi_FlushRM via port 0x4f4; start_rdata 0x0c0224d4, finish_rdata
     * 0x0c02255c). */

    /* `HP_FINISH` (0x0c6). Inferred: Starts mgesi_FlushRM on all engines. If
     * the flag is nonzero it then runs start_rdata and finish_rdata back to
     * back, which sets up and tears down the read-back path the emitter waits
     * on. Payload 1 (emitter sends 1): Wait flag, nonzero to request a
     * completion read-back. Established: the token map runs `arm_finish` at
     * arm1.u 0x0c014040. Sent by libGLcore.so __glkonim_Finish (kon_modes.s):
     * token 198, one word 1, then __glkona_wait_rdata. */
    KONA_HP_FINISH                       = 0x0c6,

    /* Read at icu_map.tsv 0x0c7; ged_banks.tsv k=2; ged_listing.txt
     * dist.s:13; kon_modes.s __glkonim_Flush; kon_context.s map_rtc and
     * MakeCurrentRead; root/unix gfxdd_mmap 0xc0000000001f159c; kona_attach.o
     * KONAattach. */

    /* `HP_FLUSH` (0x0c7). Inferred: Asks the pipe to flush. Routed pass token
     * (command 130, 1 word, entry 2): in the idle class entry 2 is the null
     * loop (dist.s:13), so no engine handler is named. Right after the token
     * and its word, libGLcore loads from user address 0x10100 and discards
     * the value. That address is the hub real-time counter, not the pipe:
     * map_rtc (IP27KONA32 libGLcore.so 0x0d948750, called from
     * MakeCurrentRead at 0x0d949498) asks syssgi(13) for the counter's
     * physical address, maps that page of /dev/mmem read-only at fixed user
     * address 0x10000, and prints an error and returns 0 unless the counter
     * lands at 0x10100 (the hub counter sits at page offset 0x100). The load
     * is uncached, so the processor issues it only after the FIFO stores
     * before it, which pushes the token out of the processor (inferred). The
     * graphics mapping itself ends at 0xffff for an ordinary client
     * (KONAattach passes 0xbfff bytes, rounded up to three 16 KB pages by
     * vgrowreg in the gfxdd_mmap worker at root/unix 0xc0000000001f1494), so
     * for an ordinary client 0x10100 lies outside the pipe mapping and only
     * the counter page answers it. Payload 1 (libGLcore sends one zero word):
     * a zero placeholder word. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0x58410051: command 130, count
     * field 1 (bits 6-10, 0 read as 32), single floats. Established:
     * libGLcore.so `__glkonim_Flush` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_Flush (kon_modes.s): token 199, a zero word,
     * then a load from the counter at 0x10100. */
    KONA_HP_FLUSH                        = 0x0c7,

    /* Read at arm1.u arm_popattrib 0x0c03a8dc-0x0c03ad00. */

    /* `HP_POPATTRIB` (0x0c8). Inferred: Pops the top attribute record of the
     * ARM-side stack (underflow sets a GL stack-underflow error), copies
     * shadow words back for every group bit saved in the mask, and calls the
     * per-group pop helpers (color, depth, enable, fog, light, line,
     * multisample, polygon, scissor, stencil, texture, transform, sprite)
     * which re-establish engine state. Payload 1 (zero): dummy zero;
     * libGLcore sends 0. Established: the token map runs `arm_popattrib` at
     * arm1.u 0x0c03a8dc. Sent by libGLcore.so __glkonim_PopAttrib
     * (kon_attrib.s) stores token 200 then 0. */
    KONA_HP_POPATTRIB                    = 0x0c8,

    /* Engine handlers whose slots the code of `arm_pushattrib` loads, in
     * order: `mgesi_StartRdata`, `mgesi_GetRaster`, `mgesi_Eram2ODMA`,
     * `mgesi_GetSpecial`, `mgesi_FinishRdata`. Read at arm1.u arm_pushattrib
     * 0x0c039c80-0x0c03a8d8. */

    /* `HP_PUSHATTRIB` (0x0c9). Inferred: Programs the read-back (StartRdata),
     * errors with stack overflow at depth 16, otherwise saves ARM shadows for
     * each group in the mask into a per-level record (1688 bytes a level) and
     * reads engine-held state back to the host through the output DMA:
     * current values, raster position, ERAM blocks, texture and transform
     * attributes and the deformation mask; then FinishRdata. Payload 1:
     * attribute mask (GL_*_BIT bits). Established: the token map runs
     * `arm_pushattrib` at arm1.u 0x0c039c80. Sent by libGLcore.so
     * __glkonim_PushAttrib (kon_attrib.s) stores token 201 and the mask, then
     * __glkona_wait_rdata and copies floats from buf+4 on. */
    KONA_HP_PUSHATTRIB                   = 0x0c9,

    /* Engine handlers whose slots the code of `arm_alphafunc` loads, in
     * order: `mgesi_AlphaFunc`. Read at arm1.u arm_alphafunc 0x0c012bbc (slot
     * 91; r8+0x798, 0x79c). */

    /* `HP_ALPHAFUNC` (0x0ca). Established: Raises invalid-enum for a function
     * outside 0x200-0x207. Otherwise keeps function and reference in the
     * shadow and starts mgesi_AlphaFunc with the function on port 0x474 and
     * the reference on 0x840. Payload 2: Comparison function (0x200-0x207)
     * and reference value as a float. Established: the token map runs
     * `arm_alphafunc` at arm1.u 0x0c012bbc. Sent by libGLcore.so
     * __glkonim_AlphaFunc (kon_modes.s, token 202). */
    KONA_HP_ALPHAFUNC                    = 0x0ca,

    /* Read at arm1.u arm_blendfunc 0x0c015768 (descriptor 0x584fc800, address
     * word 0x013c1c0d = IMP_BL, select 0x0ffff000; r8+0x7b0..0x7b9, equation
     * word r8+0x7bc). */

    /* `HP_BLENDFUNC` (0x0cb). Inferred: Converts each factor enum to a 4-bit
     * code (alpha source maps one special code to 1), keeps the enums and
     * codes in the shadow and, unless the blend equation is min or max,
     * writes the four factor fields of the blend register. Payload 2: Source
     * and destination blend factor enums. Established: the token map runs
     * `arm_blendfunc` at arm1.u 0x0c015768. Sent by libGLcore.so
     * __glkonim_BlendFunc (kon_cfuncs.s). */
    KONA_HP_BLENDFUNC                    = 0x0cb,

    /* Read at arm1.u arm_stencilfunc 0x0c014960 (descriptor 0x584fc800,
     * address word 0x01381c07 = IMP_SZ0, select 0x1ffffc). */

    /* `HP_STENCILFUNC` (0x0cc). Established: Keeps the three words in the
     * shadow and writes function, reference and mask into the function,
     * reference and read-mask fields (bits 2-20) of the stencil register.
     * Payload 3: Function (0x200-0x207), reference value, mask. Established:
     * the token map runs `arm_stencilfunc` at arm1.u 0x0c014960. Sent by
     * libGLcore.so __glkonim_StencilFunc (kon_cfuncs.s, token 204). */
    KONA_HP_STENCILFUNC                  = 0x0cc,

    /* Read at arm1.u arm_stencilop 0x0c0149b8 (descriptor 0x584fc800, address
     * word 0x01391c08 = IMP_SZ1, select 0x1ff). */

    /* `HP_STENCILOP` (0x0cd). Established: Keeps the three enums and writes a
     * 3-bit code for each into the stencil operation fields (bits 0-8) of the
     * depth register, mapping zero to 4 and invert (0x150a) to 5 and using
     * the low bits for the others. Payload 3: Stencil fail, depth fail and
     * depth pass operations (enums 0x1e00-0x1e03, 0x1e0a invert, 0 zero).
     * Established: the token map runs `arm_stencilop` at arm1.u 0x0c0149b8.
     * Sent by libGLcore.so __glkonim_StencilOp (kon_cfuncs.s, token 205). */
    KONA_HP_STENCILOP                    = 0x0cd,

    /* Read at arm1.u arm_depthfunc 0x0c0147a0 (descriptor 0x584fc800, address
     * word 0x01391c08 = IMP_SZ1, select 0xe000). */

    /* `HP_DEPTHFUNC` (0x0ce). Established: Keeps it in the shadow and writes
     * the low three bits into the depth function field (bits 13-15) of the
     * depth register. Payload 1: Depth comparison function (0x200-0x207).
     * Established: the token map runs `arm_depthfunc` at arm1.u 0x0c0147a0.
     * Sent by libGLcore.so __glkonim_DepthFunc (kon_cfuncs.s, token 206). */
    KONA_HP_DEPTHFUNC                    = 0x0ce,

    /* Engine handlers whose slots the code of `arm_depthrange` loads, in
     * order: `mgeb_DepthRange`. Read at arm1.u arm_depthrange 0x0c014800
     * (slot 335 mgeb_DepthRange; shadow r8+0x72c..0x738). */

    /* `HP_DEPTHRANGE` (0x0cf). Established: Sends the four words through
     * routed descriptor 0x78601000, starts mgeb_DepthRange on all engines
     * through port 0x4f8, and keeps the words in the shadow. Payload 4 (two
     * doubles): Near and far depth limits, each as a double (high word
     * first). Established: the token map runs `arm_depthrange` at arm1.u
     * 0x0c014800. Established: libGLcore.so `__glkonim_DepthRange` stores 4
     * words after the token. Sent by libGLcore.so __glkonim_DepthRange
     * (kon_cfuncs.s). */
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
     * `mgeb_Translate_Texture`. Read at arm1.u arm_matrixmode 0x0c01904c
     * (slot 51; r8+0x73c; matrix_vector 0x0c018f44 and matrix_passthru
     * 0x0c018ef0). */

    /* `HP_MATRIXMODE` (0x0d0). Established: Does nothing when the mode is
     * unchanged. Otherwise stores it, starts mgeb_MatrixMode, and for
     * modelview, projection and texture rewrites the engine handler table so
     * the matrix tokens (load identity, load, frustum, multiply, ortho, pop,
     * push, rotate, scale, translate) run that mode handlers. For colour it
     * switches the matrix tokens to ARM handlers. Payload 1: Matrix mode
     * (0x1700 modelview, 0x1701 projection, 0x1702 texture, 0x1800 colour).
     * Established: the token map runs `arm_matrixmode` at arm1.u 0x0c01904c.
     * Sent by libGLcore.so __glkonim_MatrixMode (kon_cfuncs.s, token 208);
     * emitter accepts 0x1700-0x1702 only. */
    KONA_HP_MATRIXMODE                   = 0x0d0,

    /* Read at icu_map.tsv 0x0d1; ged_bound_table.tsv index 5; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Frustum_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_FRUSTUM` (0x0d1). Inferred: Matrix command. Routed pass token
     * (command 133, 12 words, double). Command 133 selects handler table
     * index 5, mgeb_Frustum_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine mFrustum
     * (matrix.S, 67 words) builds the perspective matrix and multiplies it
     * into the current one. Payload 12 (6 doubles): six doubles: left, right,
     * bottom, top, near, far. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0x7842d301: command 133, count
     * field 12 (bits 6-10, 0 read as 32), doubles; engine handler
     * `mgeb_Frustum_Modelview` (index 5 of the handler table). Established:
     * libGLcore.so `__glkonim_Frustum` stores 12 words after the token. Sent
     * by libGLcore.so __glkonim_Frustum (kon_cfuncs.s, token 209). */
    KONA_HP_FRUSTUM                      = 0x0d1,

    /* Read at icu_map.tsv 0x0d2; ged_bound_table.tsv index 3; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_LoadIdentity_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_LOADIDENTITY` (0x0d2). Inferred: Matrix command. Routed pass token
     * (command 131, 1 words, float). Command 131 selects handler table index
     * 3, mgeb_LoadIdentity_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine resets the current
     * matrix to the identity. Payload 1 (libGLcore sends one zero word):
     * none. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x5841d041: command 131, count field 1 (bits
     * 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_LoadIdentity_Modelview` (index 3 of the handler table).
     * Established: libGLcore.so `__glkonim_LoadIdentity` stores 1 word after
     * the token. Sent by libGLcore.so __glkonim_LoadIdentity (kon_cfuncs.s,
     * token 210). */
    KONA_HP_LOADIDENTITY                 = 0x0d2,

    /* Read at icu_map.tsv 0x0d3; ged_bound_table.tsv index 4; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_LoadMatrix_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_LOADMATRIXF` (0x0d3). Inferred: Matrix command. Routed pass token
     * (command 196, 16 words, float). Command 196 selects handler table index
     * 4, mgeb_LoadMatrix_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine copies the 16
     * floats over the current matrix. Payload 16: sixteen floats (the matrix,
     * column-major as in GL). Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0x58625401: command 196, count
     * field 16 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_LoadMatrix_Modelview` (index 4 of the handler table).
     * Established: libGLcore.so `__glkonim_LoadMatrixf` stores 16 words after
     * the token. Sent by libGLcore.so __glkonim_LoadMatrixf (kon_cfuncs.s,
     * token 211). */
    KONA_HP_LOADMATRIXF                  = 0x0d3,

    /* Read at icu_map.tsv 0x0d4; ged_bound_table.tsv index 4; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_LoadMatrix_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_LOADMATRIXD` (0x0d4). Inferred: Matrix command. Routed pass token
     * (command 196, 32 words, double). Command 196 selects handler table
     * index 4, mgeb_LoadMatrix_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine copies the 16
     * values over the current matrix after conversion. Payload 32 (count
     * field 0 means 32): sixteen doubles (32 words). Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0x78625001:
     * command 196, count field 0 (bits 6-10, 0 read as 32), doubles; engine
     * handler `mgeb_LoadMatrix_Modelview` (index 4 of the handler table).
     * Established: libGLcore.so `__glkonim_LoadMatrixd` stores 32 words after
     * the token. Sent by libGLcore.so __glkonim_LoadMatrixd (kon_cfuncs.s,
     * token 212). */
    KONA_HP_LOADMATRIXD                  = 0x0d4,

    /* Read at icu_map.tsv 0x0d5; ged_bound_table.tsv index 6; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_MultMatrix_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_MULTMATRIXF` (0x0d5). Inferred: Matrix command. Routed pass token
     * (command 198, 16 words, float). Command 198 selects handler table index
     * 6, mgeb_MultMatrix_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine multiplies the
     * current matrix by the 16 floats through mMatrixMultCCW. Payload 16:
     * sixteen floats. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x58635401: command 198, count field 16
     * (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_MultMatrix_Modelview` (index 6 of the handler table).
     * Established: libGLcore.so `__glkonim_MultMatrixf` stores 16 words after
     * the token. Sent by libGLcore.so __glkonim_MultMatrixf (kon_cfuncs.s,
     * token 213). */
    KONA_HP_MULTMATRIXF                  = 0x0d5,

    /* Read at icu_map.tsv 0x0d6; ged_bound_table.tsv index 6; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_MultMatrix_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_MULTMATRIXD` (0x0d6). Inferred: Matrix command. Routed pass token
     * (command 198, 32 words, double). Command 198 selects handler table
     * index 6, mgeb_MultMatrix_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine multiplies the
     * current matrix by the 16 values through mMatrixMultCCW. Payload 32
     * (count field 0 means 32): sixteen doubles (32 words). Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0x78635001: command 198, count field 0 (bits 6-10, 0 read as 32),
     * doubles; engine handler `mgeb_MultMatrix_Modelview` (index 6 of the
     * handler table). Established: libGLcore.so `__glkonim_MultMatrixd`
     * stores 32 words after the token. Sent by libGLcore.so
     * __glkonim_MultMatrixd (kon_cfuncs.s, token 214). */
    KONA_HP_MULTMATRIXD                  = 0x0d6,

    /* Read at icu_map.tsv 0x0d7; ged_bound_table.tsv index 7; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Ortho_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_ORTHO` (0x0d7). Inferred: Matrix command. Routed pass token
     * (command 135, 12 words, double). Command 135 selects handler table
     * index 7, mgeb_Ortho_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine mOrtho (matrix.S,
     * 64 words) builds the orthographic matrix and multiplies it into the
     * current one. Payload 12 (6 doubles): six doubles: left, right, bottom,
     * top, near, far. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x7843d301: command 135, count field 12
     * (bits 6-10, 0 read as 32), doubles; engine handler
     * `mgeb_Ortho_Modelview` (index 7 of the handler table). Established:
     * libGLcore.so `__glkonim_Ortho` stores 12 words after the token. Sent by
     * libGLcore.so __glkonim_Ortho (kon_cfuncs.s, token 215). */
    KONA_HP_ORTHO                        = 0x0d7,

    /* Read at icu_map.tsv 0x0d8; ged_bound_table.tsv index 8; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_PopMatrix_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_POPMATRIX` (0x0d8). Inferred: Matrix command. Routed pass token
     * (command 8, 1 words, integer). Command 8 selects handler table index 8,
     * mgeb_PopMatrix_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine pops the matrix
     * stack, restoring the saved matrix. Payload 1 (libGLcore sends one zero
     * word): none. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x58045041: command 8, count field 1 (bits
     * 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_PopMatrix_Modelview` (index 8 of the handler table). Established:
     * libGLcore.so `__glkonim_PopMatrix` stores 1 word after the token. Sent
     * by libGLcore.so __glkonim_PopMatrix (kon_cfuncs.s, token 216). */
    KONA_HP_POPMATRIX                    = 0x0d8,

    /* Read at icu_map.tsv 0x0d9; ged_bound_table.tsv index 9; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_PushMatrix_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_PUSHMATRIX` (0x0d9). Inferred: Matrix command. Routed pass token
     * (command 9, 1 words, integer). Command 9 selects handler table index 9,
     * mgeb_PushMatrix_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine pushes a copy of
     * the current matrix onto the stack. Payload 1 (libGLcore sends one zero
     * word): none. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x5804d041: command 9, count field 1 (bits
     * 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_PushMatrix_Modelview` (index 9 of the handler table).
     * Established: libGLcore.so `__glkonim_PushMatrix` stores 1 word after
     * the token. Sent by libGLcore.so __glkonim_PushMatrix (kon_cfuncs.s,
     * token 217). */
    KONA_HP_PUSHMATRIX                   = 0x0d9,

    /* Read at icu_map.tsv 0x0da; ged_bound_table.tsv index 10; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Rotate_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_ROTATED` (0x0da). Inferred: Matrix command. Routed pass token
     * (command 202, 8 words, double). Command 202 selects handler table index
     * 10, mgeb_Rotate_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine calls mRotate to
     * build the rotation and multiply it into the current matrix. Payload 8
     * (4 doubles): four doubles: angle, axis x, y, z. Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0x78655201:
     * command 202, count field 8 (bits 6-10, 0 read as 32), doubles; engine
     * handler `mgeb_Rotate_Modelview` (index 10 of the handler table).
     * Established: libGLcore.so `__glkonim_Rotated` stores 8 words after the
     * token. Sent by libGLcore.so __glkonim_Rotated (kon_cfuncs.s, token
     * 218). */
    KONA_HP_ROTATED                      = 0x0da,

    /* Read at icu_map.tsv 0x0db; ged_bound_table.tsv index 10; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Rotate_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_ROTATEF` (0x0db). Inferred: Matrix command. Routed pass token
     * (command 202, 4 words, float). Command 202 selects handler table index
     * 10, mgeb_Rotate_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine calls mRotate to
     * build the rotation and multiply it into the current matrix. Payload 4:
     * four floats: angle, axis x, y, z. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x58655101: command
     * 202, count field 4 (bits 6-10, 0 read as 32), single floats; engine
     * handler `mgeb_Rotate_Modelview` (index 10 of the handler table).
     * Established: libGLcore.so `__glkonim_Rotatef` stores 4 words after the
     * token. Sent by libGLcore.so __glkonim_Rotatef (kon_cfuncs.s, token
     * 219). */
    KONA_HP_ROTATEF                      = 0x0db,

    /* Read at icu_map.tsv 0x0dc; ged_bound_table.tsv index 11; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Scale_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_SCALED` (0x0dc). Inferred: Matrix command. Routed pass token
     * (command 203, 6 words, double). Command 203 selects handler table index
     * 11, mgeb_Scale_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine multiplies the
     * matrix rows by the three factors. Payload 6 (3 doubles): three doubles:
     * x, y, z factors. Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x7865d181: command 203, count field 6
     * (bits 6-10, 0 read as 32), doubles; engine handler
     * `mgeb_Scale_Modelview` (index 11 of the handler table). Established:
     * libGLcore.so `__glkonim_Scaled` stores 6 words after the token. Sent by
     * libGLcore.so __glkonim_Scaled (kon_cfuncs.s, token 220). */
    KONA_HP_SCALED                       = 0x0dc,

    /* Read at icu_map.tsv 0x0dd; ged_bound_table.tsv index 11; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Scale_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_SCALEF` (0x0dd). Inferred: Matrix command. Routed pass token
     * (command 203, 3 words, float). Command 203 selects handler table index
     * 11, mgeb_Scale_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine multiplies the
     * matrix rows by the three factors. Payload 3: three floats: x, y, z
     * factors. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x5865d0c1: command 203, count field 3 (bits
     * 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_Scale_Modelview` (index 11 of the handler table). Established:
     * libGLcore.so `__glkonim_Scalef` stores 3 words after the token. Sent by
     * libGLcore.so __glkonim_Scalef (kon_cfuncs.s, token 221). */
    KONA_HP_SCALEF                       = 0x0dd,

    /* Read at icu_map.tsv 0x0de; ged_bound_table.tsv index 12; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Translate_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_TRANSLATED` (0x0de). Inferred: Matrix command. Routed pass token
     * (command 204, 6 words, double). Command 204 selects handler table index
     * 12, mgeb_Translate_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine adds the
     * translation into the current matrix. Payload 6 (3 doubles): three
     * doubles: x, y, z offsets. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x78665181: command 204, count
     * field 6 (bits 6-10, 0 read as 32), doubles; engine handler
     * `mgeb_Translate_Modelview` (index 12 of the handler table).
     * Established: libGLcore.so `__glkonim_Translated` stores 6 words after
     * the token. Sent by libGLcore.so __glkonim_Translated (kon_cfuncs.s,
     * token 222). */
    KONA_HP_TRANSLATED                   = 0x0de,

    /* Read at icu_map.tsv 0x0df; ged_bound_table.tsv index 12; ge_handlers.md
     * matrixfunc.S; ge_listing/matrixfunc.S.lst mgeb_Translate_Modelview;
     * arm1_firmware.md line 144 (matrix_vector, arm_matrixmode). */

    /* `HP_TRANSLATEF` (0x0df). Inferred: Matrix command. Routed pass token
     * (command 204, 3 words, float). Command 204 selects handler table index
     * 12, mgeb_Translate_Modelview while the matrix mode is modelview;
     * arm_matrixmode rebinds indexes 3-12 for projection and texture, and in
     * colour mode the ARM runs its own handler. The engine adds the
     * translation into the current matrix. Payload 3: three floats: x, y, z
     * offsets. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x586650c1: command 204, count field 3 (bits
     * 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_Translate_Modelview` (index 12 of the handler table).
     * Established: libGLcore.so `__glkonim_Translatef` stores 3 words after
     * the token. Sent by libGLcore.so __glkonim_Translatef (kon_cfuncs.s,
     * token 223). */
    KONA_HP_TRANSLATEF                   = 0x0df,

    /* Read at icu_map.tsv 0x0e0 (entry 0x5846d441); ged_bound_table.tsv (no
     * index 13); tokens.tsv sites 0. */

    /* `HP_WRAM2CRAM` (0x0e0). Inferred: Routed pass token (command 141, 17
     * words) whose handler table index 13 is not written by the firmware at
     * start-up, so no engine handler is bound to it; the name suggests a copy
     * from work memory to colour memory in the engines. Payload 17 by the map
     * entry: not determined; no sender found. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x5846d441: command
     * 141, count field 17 (bits 6-10, 0 read as 32), single floats. No sender
     * found: tokens.tsv lists 0 sites; searched libGLcore asm, ddx asm and
     * kernel disasm for token 224 stores (hits for 224 are unrelated
     * constants). */
    KONA_HP_WRAM2CRAM                    = 0x0e0,

    /* Read at icu_map.tsv 0x0e1 (entry 0x58474041); ged_bound_table.tsv index
     * 14; ge_handlers.md raster.S mges_NullCommand. */

    /* `HP_GEPASSCMD` (0x0e1). Inferred: Passes one word through. Routed pass
     * token (command 142, 1 word): handler table index 14 holds
     * mges_NullCommand, so the engine handler itself does nothing with it;
     * any effect would come from the pass-control bits of the map entry.
     * Payload 1 by the map entry: one command word to hand to the geometry
     * engines (inferred from the name); no sender found. Established: routed
     * by the host interface with no ARM code, arm1.u token-map entry
     * 0x58474041: command 142, count field 1 (bits 6-10, 0 read as 32),
     * single floats. No sender found: tokens.tsv lists 0 sites; no listing
     * stores token 225 as a command. */
    KONA_HP_GEPASSCMD                    = 0x0e1,

    /* Read at icu_map.tsv 0x0e2 (0x5847c8c1, count 3); ged_bound_table.tsv
     * index 15; ge_listing/raster.S.lst mgesi_TBUS_1 0x39ab-0x39b7; arm1.u
     * diag_tbus_1 0x0c037ce8 (three pops, three stores to port 0x840);
     * docs/rm.md Bus modes 2 and 3. */

    /* `HP_TBUS_1` (0x0e2). Established: Writes a word to the raster bus with
     * an explicit mode. Routed pass token (command 143, 3 words): handler
     * table index 15 holds mgesi_TBUS_1 (raster.S), which reads command words
     * 0, 1 and 2 (A = 0x1f, D = 0-2) and writes them to the engine bus-output
     * addresses 0x1f4-0x1f8. The ARM diagnostic path diag_tbus_1 also sends
     * three words to this handler. The kernel swap path sends only two
     * (0x478478 twice), so the third word the pipe takes there is the next
     * word written to the command port (inferred from the count; no shipped
     * program states what follows). Payload 3: three words: a bus-mode code,
     * then the 64-bit bus word as its low half and then its high half; the
     * high half carries the register number from bit 16 (irsaudit fcTbusWrite
     * 0x1013e81c: (mode XOR 1) << 1, then lw 4(sp) before lw 0(sp); arm1.u
     * tbus_write_word 0x0c036408: mode 0, data, then register << 16 ORed with
     * data bits 32 and up). Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0x5847c8c1: command 143, count field 3
     * (bits 6-10, 0 read as 32), single floats; engine handler `mgesi_TBUS_1`
     * (index 15 of the handler table). Sent by irsaudit fcTbusWrite
     * 0x1013e81c (token, then three words); kona.a kona_video
     * KONAschedswapbuf (kona_video.text.s 0xc80-0xca0, swap mode 2 only):
     * token 226, then 0x478478 twice, then rrmValidateBuffer and the
     * HH_GINTR_INFO kick, with no third word. */
    KONA_HP_TBUS_1                       = 0x0e2,

    /* Read at arm1.u arm_viewport 0x0c0186ec (r8+0x71c..0x728;
     * resolve_viewport 0x0c01872c; slots 90 mgeb_ViewPort and 117
     * mgebi_ReferencePlane_Enable). */

    /* `HP_VIEWPORT` (0x0e3). Established: Raises invalid-value for a negative
     * width or height, clamps both to 3840, stores the four values, then runs
     * resolve_viewport, which combines them with the window offset and clip
     * to compute the on-screen viewport and starts mgeb_ViewPort on all
     * engines (then enables the reference plane). Payload 4: Viewport x, y,
     * width, height as integers. Established: the token map runs
     * `arm_viewport` at arm1.u 0x0c0186ec. Sent by libGLcore.so
     * __glkonim_Viewport (kon_cfuncs.s, token 227). */
    KONA_HP_VIEWPORT                     = 0x0e3,

    /* Read at arm1.u arm_seterror 0x0c015500; arm1.u arm_geterror 0x0c038570
     * (reads and clears the pair). */

    /* `HP_SETERROR` (0x0e4). Established: Keeps only the first error: if the
     * two-byte sticky error at ARM RAM 0x860/0x861 is zero it stores the code
     * there, otherwise it drops the new code. glGetError later reads and
     * clears that pair. Payload 1: a GL error code (0x500 invalid enum, 0x501
     * invalid value). Established: the token map runs `arm_seterror` at
     * arm1.u 0x0c015500. Established: libGLcore.so `Error` stores 1 word
     * after the token. Sent by libGLcore.so Error (kon_context.s, error code
     * in the second store); libGLcore.so __invalid_enum (kon_sfuncs.s,
     * kon_sdlfuncs.s: stores 1280 and 1281 after the token). */
    KONA_HP_SETERROR                     = 0x0e4,

    /* Read at arm1.u arm_end_of_simulation 0x0c0152cc. */

    /* `HP_END_OF_SIMULATION` (0x0e5). Established: Prints 'end of ARM
     * simulation', scans ARM RAM from 0xd04 upward for the 0xdeadbeef
     * stack-fill marker to report the first unused stack entry, stops the
     * simulator trace helper, and writes 1 to raster-bus register 0x1c0f
     * twice. Payload 1: one value that is only handed to the
     * instruction-cache statistics report. Established: the token map runs
     * `arm_end_of_simulation` at arm1.u 0x0c0152cc. No sender found (searched
     * libGLcore asm for li 229 near a 16384($zero) store, the kernel command
     * table, X module stores at token x 32). */
    KONA_HP_END_OF_SIMULATION            = 0x0e5,

    /* Engine handlers whose slots the code of `arm_blendcolor` loads, in
     * order: `mgesi_TbusRegWrite`, `mgesi_UserColor`. Read at arm1.u
     * arm_blendcolor 0x0c012ee4 (slot 342 mgesi_UserColor; shadow r8+0x7a0;
     * skipped when colour-index size r8+0x1ce is nonzero). */

    /* `HP_BLENDCOLOR` (0x0e6). Established: Keeps the four floats in the
     * shadow. In RGBA mode it also sends them to the engines with
     * mgesi_UserColor, after writing register 0x1408. Payload 4: Constant
     * blend colour: red, green, blue, alpha as floats. Established: the token
     * map runs `arm_blendcolor` at arm1.u 0x0c012ee4. Established:
     * libGLcore.so `__glkonim_BlendColorEXT` stores 4 words after the token.
     * Sent by libGLcore.so __glkonim_BlendColorEXT (kon_cfuncs.s). */
    KONA_HP_BLENDCOLOR                   = 0x0e6,

    /* Read at arm1.u arm_blendequation 0x0c012f9c (descriptor 0x584fc800,
     * address word 0x013c1c0d = IMP_BL, select 0x0fffffe1). */

    /* `HP_BLENDEQUATION` (0x0e7). Established: Rejects other values with
     * invalid-enum. Maps the enum to an operation code (0, 3, 7,
     * 1, 2, 0), keeps the enum at
     * r8+0x7bc and rewrites the operation, factor and enable fields of the
     * blend register from the saved factors; min and max force all factors to
     * one. Payload 1: Blend equation enum (0x8006 add, 0x8007 min, 0x8008
     * max, 0x800a subtract, 0x800b reverse subtract, 0xbf1 logic op).
     * Established: the token map runs `arm_blendequation` at arm1.u
     * 0x0c012f9c. Established: libGLcore.so `__glkonim_BlendEquationEXT`
     * stores 1 word after the token. Sent by libGLcore.so
     * __glkonim_BlendEquationEXT (kon_cfuncs.s). */
    KONA_HP_BLENDEQUATION                = 0x0e7,

    /* Read at arm1.u arm_colortable 0x0c03e128 (8 plain reads, then r9+0x40
     * or r9+0x3c; lut_index, ParseHostImage,
     * CompCommonColorStream, SetupGE_ColorTable, SetupGED). */

    /* `HP_COLORTABLE` (0x0e8). Established: Maps the target to one of the ARM
     * colour tables, stores width and format, parses the host image, composes
     * the colour stream and the engine colour-table stage, and sends the
     * table entries to the pipe, filling that colour table in engine memory.
     * Payload 9, then the table as an image: GL target, internal format,
     * width, width minus 1 as a float, format code, type code, byte offset,
     * data-by-DMA flag, row mode. Established: the token map runs
     * `arm_colortable` at arm1.u 0x0c03e128. Sent by libGLcore.so
     * __glkonim_ColorTableSGI (kon_colortable.s, token 232). */
    KONA_HP_COLORTABLE                   = 0x0e8,

    /* Read at arm1.u arm_copycolortable 0x0c0265f0 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_COPYCOLORTABLE` (0x0e9). Unused colour-table copy token.
     * Established: token 0x0e9 maps to a branch at 0x0c0265f0 into arm_badcmd
     * (read in full). Inferred from kon_colortable.s:
     * __glkonim_CopyColorTableSGI (84 instructions) stores token 273,
     * HP_PIXEL_NOMODE (0x111), with the words 8 and 0x40000000, calls
     * __glKonPushState and __glKonDefaultState, reads the framebuffer with
     * __glkonim_ReadPixels (type 5123, format 6408) into a host buffer,
     * stores the same three words again and calls __glkonim_ColorTableSGI,
     * whose own 36 FIFO stores include token 232, HP_COLORTABLE (0x0e8). The
     * copy therefore reaches the pipe as an ordinary table load. */
    KONA_HP_COPYCOLORTABLE               = 0x0e9,

    /* Read at arm1.u arm_getcolortable 0x0c03f24c; do_getcolortable
     * 0x0c03f00c. */

    /* `HP_GETCOLORTABLE` (0x0ea). Inferred: Query: converts target and format
     * to table and format indices (format 0x1903-0x1905, the single-component
     * red, green and blue, gives index 1; every other format goes through
     * internalformat_index) and calls do_getcolortable: bounds check, count
     * rounded up to 32, start_rdata, count x 4 to 0x476 (the reply length in
     * words: each table or map entry comes back as four words), engine
     * LutUpload (slot 210), finish_rdata. Payload 4: table target, format,
     * first entry, entry count (host asks at most 512). Established: the
     * token map runs `arm_getcolortable` at arm1.u 0x0c03f24c. Sent by
     * libGLcore.so __glkonim_GetColorTableSGI -> __glkon_get_special4(234,
     * ...) (kon_colortable.s); __glkonim_GetColorTableSGI unpacks the reply
     * at rdata + 8 as count RGBA entries (__glInitMemGet, format 0x1908). */
    KONA_HP_GETCOLORTABLE                = 0x0ea,

    /* Read at arm1.u arm_colortableparameterfv 0x0c03edac (5 plain reads +
     * r9+0x3c; lut_index, set_invalid_enum). */

    /* `HP_COLORTABLEPARAMETERFV` (0x0eb). Established: Finds the colour table
     * for the target, stores the four floats as that table's scale (0x80d6)
     * or bias (0x80d7) in ARM memory, and raises an invalid-enum error for a
     * missing table or an unrecognised name; it sends nothing to the engines
     * at this time. Payload 6 (2 words, 4 floats): colour-table target,
     * parameter name (0x80d6 scale, 0x80d7 bias), four floats. Established:
     * the token map runs `arm_colortableparameterfv` at arm1.u 0x0c03edac.
     * Established: libGLcore.so `__glkonim_ColorTableParameterfvSGI` stores 6
     * words after the token. Sent by libGLcore.so
     * __glkonim_ColorTableParameterfvSGI, __glkonim_ColorTableParameterivSGI
     * (kon_cfuncs.s, token 235). */
    KONA_HP_COLORTABLEPARAMETERFV        = 0x0eb,

    /* Read at arm1.u arm_getcolortableparameterfv 0x0c03ee70. */

    /* `HP_GETCOLORTABLEPARAMETERFV` (0x0ec). Inferred: Query: start_rdata,
     * then answers from the ARM table record: 0x80d6 (scale) and 0x80d7
     * (bias) four words each; 0x80d8 (format) and 0x80d9 (width) one word;
     * 0x80da-0x80df (component sizes) one word, 0 for an empty table else 16
     * (12 for table 7); invalid target or pname replies count 0 and raises
     * invalid enum; finish_rdata. Payload 2: table target, pname (0x80d6 and
     * following). Established: the token map runs
     * `arm_getcolortableparameterfv` at arm1.u 0x0c03ee70. Sent by
     * libGLcore.so __glkonim_GetColorTableParameterfvSGI/ivSGI ->
     * __glkon_get_special2(236, target, pname) (kon_colortable.s). */
    KONA_HP_GETCOLORTABLEPARAMETERFV     = 0x0ec,

    /* Read at icu_map.tsv 0x0ed; ged_bound_table.tsv index 33;
     * ge_listing/texture.S.lst mgebi_TextureScaleBias; kon_texture_api.s
     * loadPostTextureScaleBias. */

    /* `HP_LOAD_POST_TEX_SCALE_BIAS` (0x0ed). Inferred: Loads the post-texture
     * scale and bias. Routed pass token (command 161, 4 words). Command 161
     * selects handler table index 33, mgebi_TextureScaleBias (texture.S,
     * 'texture binding, scale and bias'), which installs the scale and bias;
     * its body was not traced. Payload 4: a zero word, then three words read
     * from the texture object at offsets 496, 500 and 504 (post-texture scale
     * and bias values). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x5850d901: command 161, count field 4
     * (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgebi_TextureScaleBias` (index 33 of the handler table). Established:
     * libGLcore.so `loadPostTextureScaleBias` stores 4 words after the token.
     * Sent by libGLcore.so loadPostTextureScaleBias (kon_texture_api.s, token
     * 237). */
    KONA_HP_LOAD_POST_TEX_SCALE_BIAS     = 0x0ed,

    /* Read at arm1.u arm_getlinemodedist 0x0c02a7cc. */

    /* `HP_GETLINEMODEDIST` (0x0ee). Inferred: Query: start_rdata, count 32 to
     * 0x476, then eight groups of four words from the firmware tables
     * LMLimit48 and LMLimit (two words each): the line-mode distance limits;
     * finish_rdata. No engine involved. Payload 1 (zero, read and dropped):
     * dummy zero. Established: the token map runs `arm_getlinemodedist` at
     * arm1.u 0x0c02a7cc. Sent by libGLcore.so GetLineModeDist (kon_pixel.s)
     * -> __glkon_get_special(238, 0). */
    KONA_HP_GETLINEMODEDIST              = 0x0ee,

    /* Read at arm1.u arm_convolutionfilter1d 0x0c036c44 (6 plain reads then
     * r9+0x40 or r9+0x3c; ParseHostImage, CompCommonColorStream,
     * SetupGE_Convolution, SetupGED, SendPixelsToPipe). */

    /* `HP_CONVOLUTIONFILTER1D` (0x0ef). Established: Records the kernel's
     * size and format in the 1D convolution record (height forced to 1),
     * parses the host image, sets up the engine convolution stage and sends
     * the kernel values to the pipe (a default kernel is substituted by
     * __glkonSetDefaultKernel when needed). Payload 7, then the kernel as an
     * image: internal format, width, format code, type code, byte offset,
     * data-by-DMA flag, row mode. Established: the token map runs
     * `arm_convolutionfilter1d` at arm1.u 0x0c036c44. Sent by libGLcore.so
     * __glkonim_ConvolutionFilter1DEXT (kon_convolve.s, token 239; wrapped in
     * PIXEL_NOMODE commands). */
    KONA_HP_CONVOLUTIONFILTER1D          = 0x0ef,

    /* Read at arm1.u arm_convolutionfilter2d 0x0c036d78 (7 plain reads then
     * r9+0x40 or r9+0x3c; SetupGE_Convolution, SendPixelsToPipe). */

    /* `HP_CONVOLUTIONFILTER2D` (0x0f0). Established: Same as the 1D form for
     * a two-dimensional kernel: records width and height, parses the host
     * image and sends the kernel through the engine convolution stage.
     * Payload 8, then the kernel as an image: internal format, width, height,
     * format code, type code, byte offset, data-by-DMA flag, row mode.
     * Established: the token map runs `arm_convolutionfilter2d` at arm1.u
     * 0x0c036d78. Sent by libGLcore.so __glkonim_ConvolutionFilter2DEXT
     * (kon_convolve.s, token 240). */
    KONA_HP_CONVOLUTIONFILTER2D          = 0x0f0,

    /* Read at arm1.u arm_convolutionfilter3d 0x0c026648 (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_CONVOLUTIONFILTER3D` (0x0f1). Unused three-dimensional convolution
     * token. Established: the map word of 0x0f1 is a branch at 0x0c026648 to
     * arm_badcmd (read in full). Established from the symbol tables of
     * libGLcore.so: kon_convolve.s defines only
     * __glkonim_ConvolutionFilter1DEXT, __glkonim_ConvolutionFilter2DEXT and
     * __glkonim_SeparableFilter2DEXT among the filter loaders and no 3D entry
     * exists, so no sender can be written; no GL version this library exports
     * has a 3D convolution call. The slot is a reservation of the token
     * numbering, not a feature. */
    KONA_HP_CONVOLUTIONFILTER3D          = 0x0f1,

    /* Read at arm1.u arm_copyconvolutionfilter1d 0x0c036ee8 (3 plain reads +
     * r9+0x3c; SetupCopyConvolve, SetupReadback,
     * SetupGE_Convolution, StartRbus). */

    /* `HP_COPYCONVOLUTIONFILTER1D` (0x0f2). Established: Records the kernel
     * size and format in the 1D convolution record, resolves the copy, and
     * reads the kernel from the framebuffer through the raster read-back path
     * (SetupCopyConvolve, SetupReadback, StartRbus) into the engine
     * convolution stage. Payload 4: internal format, source x, source y,
     * width. Established: the token map runs `arm_copyconvolutionfilter1d` at
     * arm1.u 0x0c036ee8. Sent by libGLcore.so
     * __glkonim_CopyConvolutionFilter1DEXT (kon_convolve.s, token 242;
     * sandwiched between two PIXEL_NOMODE commands). */
    KONA_HP_COPYCONVOLUTIONFILTER1D      = 0x0f2,

    /* Read at arm1.u arm_copyconvolutionfilter2d 0x0c037018 (4 plain reads +
     * r9+0x3c; SetupCopyConvolve, SetupReadback,
     * StartRbus). */

    /* `HP_COPYCONVOLUTIONFILTER2D` (0x0f3). Established: Same as the 1D copy
     * for a two-dimensional kernel: records size and format and reads the
     * kernel from the framebuffer through the raster read-back path into the
     * engine convolution stage. Payload 5: internal format, source x, source
     * y, width, height. Established: the token map runs
     * `arm_copyconvolutionfilter2d` at arm1.u 0x0c037018. Sent by
     * libGLcore.so __glkonim_CopyConvolutionFilter2DEXT (kon_convolve.s,
     * token 243). */
    KONA_HP_COPYCONVOLUTIONFILTER2D      = 0x0f3,

    /* Engine handlers whose slots the code of `arm_getconvolutionfilter`
     * loads, in order: `mgebi_Texture`. Read at arm1.u
     * arm_getconvolutionfilter 0x0c0372d4. */

    /* `HP_GETCONVOLUTIONFILTER` (0x0f4). Inferred: Stores format and type,
     * selects the 1D or 2D filter record from context, parses a host-image
     * description, sets up the packer and the convolution stage in the
     * engines, writes descriptor 0x58404800 with data 0xffffffff, 0x011d3fcc
     * and 0x08000000 (meaning not determined) and calls
     * __glkonSendConvKernToHost: the filter kernel returns as a pixel
     * read-back. When r8+0x890 is nonzero it brackets this with a
     * mgebi_Texture handler send (port 0x47c). Payload 3: target (0x8010 1D,
     * else 2D), pixel format, pixel type. Established: the token map runs
     * `arm_getconvolutionfilter` at arm1.u 0x0c0372d4. Sent by libGLcore.so
     * __glkonim_GetConvolutionFilterEXT (kon_convolve.s) stores token 244,
     * target, format, type, then runs __glKonParseHostImage and
     * __glkona_wait_rdata. */
    KONA_HP_GETCONVOLUTIONFILTER         = 0x0f4,

    /* Read at arm1.u arm_separablefilter2d 0x0c037150 (8 plain reads then
     * r9+0x40 or r9+0x3c; SetupGE_Convolution, SendPixelsToPipe,
     * PixEndConvolve). */

    /* `HP_SEPARABLEFILTER2D` (0x0f5). Established: Records both separable
     * kernel sizes, parses the host image and sends the row or column kernel
     * through the engine convolution stage; PixEndConvolve closes the stage.
     * Payload 9, then row and column kernels as an image: internal format,
     * width, height, format code, type code, byte offset, which filter (1 is
     * the row filter, otherwise the column), data-by-DMA flag, row mode.
     * Established: the token map runs `arm_separablefilter2d` at arm1.u
     * 0x0c037150. Sent by libGLcore.so __glkonim_SeparableFilter2DEXT
     * (kon_convolve.s, token 245). */
    KONA_HP_SEPARABLEFILTER2D            = 0x0f5,

    /* Read at arm1.u arm_separablefilter3d 0x0c02664c (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_SEPARABLEFILTER3D` (0x0f6). Refused three-dimensional
     * separable-filter token. Established (read in full): slot 0x0f6 is a
     * bare jump at 0x0c02664c into arm_badcmd, which prints the token pair,
     * drains 100 words and then spins. Established from kon_convolve.s: the
     * only separable-filter loader is __glkonim_SeparableFilter2DEXT at line
     * 723, and libGLcore has no routine for a 3D separable filter, so the
     * library cannot build the word. The 1D and 2D loads use their own
     * tokens; the 3D slot is only a place in the numbering. */
    KONA_HP_SEPARABLEFILTER3D            = 0x0f6,

    /* Engine handlers whose slots the code of `arm_getseparablefilter` loads,
     * in order: `mgebi_Texture`. Read at arm1.u arm_getseparablefilter
     * 0x0c037410. */

    /* `HP_GETSEPARABLEFILTER` (0x0f7). Inferred: Same as GETCONVOLUTIONFILTER
     * but selects the separable-filter record (two kernels) and flags it as
     * separable; sends it to the host with __glkonSendConvKernToHost after
     * the same engine set-up. Payload 3: target (0x8012 separable), format,
     * type. Established: the token map runs `arm_getseparablefilter` at
     * arm1.u 0x0c037410. Sent by libGLcore.so __glkonim_GetSeparableFilterEXT
     * (kon_convolve.s) stores token 247. */
    KONA_HP_GETSEPARABLEFILTER           = 0x0f7,

    /* Read at arm1.u arm_pixel_transform_parameteriv 0x0c03784c (r9+0, r9+0,
     * then r9+0x3c in each branch). */

    /* `HP_PIXEL_TRANSFORM_PARAMETERIV` (0x0f8). Established: Selects the
     * record from the target, and for name 0x8013 (border mode) stores the
     * value there; for the pixel-transform target it stores the value for
     * names 0x81c9 and 0x81ca. It sends nothing to the engines. Payload 3:
     * target (0x8010, 0x8011, 0x8012 select the 1D, 2D or separable
     * convolution record; 0x81c6 selects a pixel-transform record), parameter
     * name, one integer value. Established: the token map runs
     * `arm_pixel_transform_parameteriv` at arm1.u 0x0c03784c. Sent by
     * libGLcore.so __glkonim_PixelTransformParameterfvSGI and the integer
     * variants (kon_pixel_transform.s, token 248). */
    KONA_HP_PIXEL_TRANSFORM_PARAMETERIV  = 0x0f8,

    /* Read at arm1.u arm_pixel_transform_parameterfv 0x0c03776c (2 plain
     * reads, then 3 plain + r9+0x3c in each branch; compare with 0x3f800000
     * for scale). */

    /* `HP_PIXEL_TRANSFORM_PARAMETERFV` (0x0f9). Established: Stores the four
     * floats as the record's filter scale (0x8014) or bias (0x8015) and sets
     * or clears the record's flag bit for 'scale is not one' or 'bias is not
     * zero'; it sends nothing to the engines. Payload 6 (2 words, 4 floats):
     * target (as for the integer form), parameter name (0x8014 or 0x8015),
     * four floats. Established: the token map runs
     * `arm_pixel_transform_parameterfv` at arm1.u 0x0c03776c. Sent by
     * libGLcore.so __glkonim_PixelTransformParameterfvSGI
     * (kon_pixel_transform.s, token 249). */
    KONA_HP_PIXEL_TRANSFORM_PARAMETERFV  = 0x0f9,

    /* Read at arm1.u arm_get_pixel_transform_parameteriv 0x0c0378d8. */

    /* `HP_GET_PIXEL_TRANSFORM_PARAMETERIV` (0x0fa). Inferred: Query:
     * start_rdata, then for the one supported target sends count 1 and the
     * shadow value (record+0x55c for 0x81c9, +0x560 for 0x81ca),
     * finish_rdata. Any other target or pname sends no count and no value.
     * Payload 2: transform target (0x81c6), pname (0x81c9 or 0x81ca).
     * Established: the token map runs `arm_get_pixel_transform_parameteriv`
     * at arm1.u 0x0c0378d8. Sent by libGLcore.so
     * GetPixelTransformParameterfvSGI (kon_pixel_transform.s) ->
     * __glkon_get_special2(250, target, pname). */
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERIV = 0x0fa,

    /* Read at arm1.u arm_get_pixel_transform_parameterfv 0x0c026650 (b
     * 0x0c0017f4); arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_GET_PIXEL_TRANSFORM_PARAMETERFV` (0x0fb). Unused float
     * pixel-transform query. Established: the map word of 0x0fb is a branch
     * at 0x0c026650, the last stub of the run, into arm_badcmd (read in
     * full). Established from kon_pixel_transform.s (N32 build, read in
     * full): __glkonim_GetPixelTransformParameterfvSGI is a 14-word
     * wrapper whose one call lands at 0x0d98d280, the static routine
     * GetPixelTransformParameterfvSGI (644 bytes); the disassembly labels
     * that call with the name of the integer setter because the target is
     * formed from a base register and an offset, not a table slot. That
     * routine validates target and name, then calls __glkon_get_special2 with
     * 250 (HP_GET_PIXEL_TRANSFORM_PARAMETERIV, 0x0fa), reads back the
     * integer the call stored and converts it with cvt.s.w. So the float
     * query does ask the pipe, through the integer query token; token 0x0fb
     * itself is never sent. */
    KONA_HP_GET_PIXEL_TRANSFORM_PARAMETERFV = 0x0fb,

    /* Read at arm1.u arm_copyteximage1d 0x0c0265f4 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_COPYTEXIMAGE1D` (0x0fc). Unused one-dimensional texture-copy token.
     * Established: token 0x0fc is a branch at 0x0c0265f4 into arm_badcmd
     * (read in full). Inferred from kon_texture_api.s and kon_pixel.s:
     * __glkonim_CopyTexImage1DEXT (21 instructions, target 3552) calls
     * __glkonim_CopyTexImage (141 instructions), and the library's real
     * sender is __glKonCopyTexImage in kon_pixel.s, which makes 180 direct
     * FIFO stores in its 686 instructions, among them token 253,
     * HP_COPYTEXIMAGE (0x0fd). The 1D case is folded into the generic copy
     * token rather than having its own. */
    KONA_HP_COPYTEXIMAGE1D               = 0x0fc,

    /* Read at arm1.u arm_copyteximage 0x0c02bf60 (16 plain reads + r9+0x3c,
     * stored at descriptor +0x34, +0x38, +0, +4, +0x78..+0xa4, +0x3c). */

    /* `HP_COPYTEXIMAGE` (0x0fd). Established: Copies a framebuffer rectangle
     * into texture memory: resolves the copy path, sets up the raster
     * read-back and the sub-texture load registers (SetupReadback,
     * SetupSubtexload, SetupSubtexloadPos) and starts the transfer with
     * StartRbus; a video-mapped display takes videoCopyTexImage. Payload 17:
     * source x, source y, width, height, first column (0), eleven texel-load
     * words as in the texel draw header (format id, load id, placement), and
     * the source buffer type. Established: the token map runs
     * `arm_copyteximage` at arm1.u 0x0c02bf60. Sent by libGLcore.so
     * __glKonCopyTexImage (kon_pixel.s, token 253). */
    KONA_HP_COPYTEXIMAGE                 = 0x0fd,

    /* Read at arm1.u arm_copytexsubimage1d 0x0c0265f8 (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_COPYTEXSUBIMAGE1D` (0x0fe). Unused one-dimensional sub-image copy
     * token. Established (read in full): the code at 0x0c0265f8 is one
     * unconditional jump to arm_badcmd, so slot 0x0fe refuses its token like
     * the other copy slots. Inferred from kon_texture_api.s:
     * __glkonim_CopyTexSubImage1DEXT is 27 instructions for target 3552
     * forwarding to __glkonim_CopyTexSubImage (443 instructions), which calls
     * __glkonim_CopyTexImage2DEXT, __glKonGetTexParameter and
     * __glKonSetNoModeState and stores no token itself. The pixel transfer is
     * carried by the generic copy token 0x0fd that __glKonCopyTexImage
     * stores. */
    KONA_HP_COPYTEXSUBIMAGE1D            = 0x0fe,

    /* Read at arm1.u arm_wg_flush_0 0x0c0265fc (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_WG_FLUSH_0` (0x0ff). Inferred: The token map runs a one-instruction
     * stub at 0x0c0265fc that branches to arm_badcmd; that prints the current
     * and previous token numbers, reads and prints 100 payload words, then
     * spins reading words, so the pipe would hang if the token arrived. Only
     * IP19-host paths ever address it: gfxinfo wg_flush (0x1000ec4c) stores
     * at window offset 0x1fe0 only when get_ven_iptype returns 19, so on IP27
     * and IP35 the pipe never receives it. Payload none read by the stub
     * (arm_badcmd drains 100): nothing: the token is refused and no payload
     * is defined. Established: the token map runs `arm_wg_flush_0` at arm1.u
     * 0x0c0265fc, a stub that ends in `arm_badcmd`. No sender found on IP27
     * or IP35: gfxinfo wg_flush 0x1000ec4c stores at 0x1fe0 only on IP type
     * 19; no store in libGLcore, the kernel or the four X modules. */
    KONA_HP_WG_FLUSH_0                   = 0x0ff,

    /* Read at arm1.u arm_data_1 0x0c026600 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_DATA_1` (0x100). Inferred: The token map runs a one-instruction
     * stub at 0x0c026600 that branches to arm_badcmd; that prints the current
     * and previous token numbers, reads and prints 100 payload words, then
     * spins reading words, so the pipe would hang. The slot is a placeholder
     * for the base of the window half, where a store is payload, so it is
     * never a command (inferred). Payload none read by the stub (arm_badcmd
     * drains 100): nothing: the token is refused and no payload is defined.
     * Established: the token map runs `arm_data_1` at arm1.u 0x0c026600, a
     * stub that ends in `arm_badcmd`. No sender found. Only li 256 near a
     * store is a context-struct field in __glKonCreateContext (not the FIFO).
     * The X module passes 8192 (= 0x100 x 32) to a helper in the konStereo*
     * functions as an argument; it looks like a buffer size and was not
     * traced. */
    KONA_HP_DATA_1                       = 0x100,

    /* Read at arm1.u arm_copytexsubimage2d 0x0c026604 (b 0x0c0017f4);
     * arm_badcmd 0x0c0017f4-0x0c001854. */

    /* `HP_COPYTEXSUBIMAGE2D` (0x101). Unused two-dimensional sub-image copy
     * token. Established: token 0x101 maps to a branch at 0x0c026604 into
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_CopyTexSubImage2DEXT (31 instructions, target 3553 and the
     * 0x8095 detail target) forwards to the same __glkonim_CopyTexSubImage as
     * the 1D entry, and that routine calls __glKonSetNoModeState around
     * __glKonGetTexParameter queries before delegating the transfer; the
     * token that actually carries it is HP_COPYTEXIMAGE (0x0fd). */
    KONA_HP_COPYTEXSUBIMAGE2D            = 0x101,

    /* Read at arm1.u arm_histogram 0x0c03f8c4 (4 plain reads + r9+0x3c;
     * real_format, reset_histogram 0x0c03f818). */

    /* `HP_HISTOGRAM` (0x102). Established: Stores the histogram's width,
     * format and sink flag in the histogram record (the proxy target only
     * records the values), turns the histogram bit in the pixel mode word on
     * or off, sizes the table (256, 1024 or 4096 entries) and clears it with
     * reset_histogram. Payload 5: target (0x8025 is the proxy), width, width
     * minus 1 as a float, internal format, sink flag. Established: the token
     * map runs `arm_histogram` at arm1.u 0x0c03f8c4. Sent by libGLcore.so
     * __glkonim_HistogramEXT (kon_histogram.s, token 258). */
    KONA_HP_HISTOGRAM                    = 0x102,

    /* Read at arm1.u arm_resethistogram 0x0c03fab0 (r9+0x3c; reset_histogram
     * 0x0c03f818, set_invalid_enum). */

    /* `HP_RESETHISTOGRAM` (0x103). Established: Clears the histogram table
     * through reset_histogram when the target is the histogram, otherwise
     * raises an invalid-enum error. Payload 1: target (must be 0x8024, the
     * histogram target). Established: the token map runs `arm_resethistogram`
     * at arm1.u 0x0c03fab0. Established: libGLcore.so
     * `__glkonim_ResetHistogramEXT` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_ResetHistogramEXT (kon_cfuncs.s, token 259),
     * also __glkonim_GetHistogramEXT. */
    KONA_HP_RESETHISTOGRAM               = 0x103,

    /* Read at arm1.u arm_gethistogram 0x0c03f9a4; ge.u mgesi_HistogramUpload
     * (histogram.S:175). */

    /* `HP_GETHISTOGRAM` (0x104). Inferred: Starts read-back if none is
     * active, then for each engine sends the histogram width, reset flag,
     * format words and runs HistogramUpload (slot 201) to push the histogram
     * bins, finally a trailing descriptor write, finish_rdata. If the
     * histogram is not enabled it just ends the read-back. Payload 1: reset
     * flag (passed through to the engine). Established: the token map runs
     * `arm_gethistogram` at arm1.u 0x0c03f9a4. Sent by libGLcore.so
     * __glkonim_GetHistogramEXT (kon_histogram.s) puts token 260 inside a
     * KONA_DMAREAD (ioctl 10000) command list. */
    KONA_HP_GETHISTOGRAM                 = 0x104,

    /* Read at arm1.u arm_gethistogramparameteriv 0x0c03fac4. */

    /* `HP_GETHISTOGRAMPARAMETERIV` (0x105). Inferred: Query: start_rdata,
     * then count 1 and one value from the ARM histogram record (width, format
     * or sink) or the constant 32 for the five component-size names; bad
     * target or pname raises invalid enum and replies count 0; finish_rdata.
     * Payload 2: target (0x8024 histogram, 0x8025 proxy), pname
     * (0x8026-0x802d). Established: the token map runs
     * `arm_gethistogramparameteriv` at arm1.u 0x0c03fac4. Sent by
     * libGLcore.so __glkonim_GetHistogramParameterivEXT/fvEXT
     * (kon_histogram.s, token constant 261). */
    KONA_HP_GETHISTOGRAMPARAMETERIV      = 0x105,

    /* Engine handlers whose slots the code of `arm_bind_linear_texture`
     * loads, in order: `mgesi_TbusRegWrite`, `mgesi_FillTMLoadFifo`,
     * `mgeb_SkipNextTextureAddr`, `mgebi_Texture`, `mgebi_TexEnvComps`,
     * `mgebi_UpdateTexturing`. Read at arm1.u arm_bind_linear_texture
     * 0x0c0259ac (4 plain reads + r9+0x3c; tbus_regwrite 0x1002/0x5003;
     * mgebi_Texture, mgebi_TexEnvComps, mgebi_UpdateTexturing,
     * mgesi_FillTMLoadFifo, mgeb_SkipNextTextureAddr). */

    /* `HP_BIND_LINEAR_TEXTURE` (0x106). Established: Retires and clears any
     * pending load id of that cache entry, switches the active dimension if
     * allowed, sends the component count and bind-start marker, records table
     * kind 3 (no table sent) and sends the dimension plus three words to the
     * engines' texture handler. Payload 5: texture-cache index (negative for
     * none), packed bind word (bits 28-31 texture dimension, bits 24-27 table
     * kind, forced to 3 by this token, bits 12-23 component-format index,
     * bits 0-11 index of the ARM texture table entry), three texture-object
     * words. Established: the token map runs `arm_bind_linear_texture` at
     * arm1.u 0x0c0259ac. Sent by libGLcore.so bind2DMipmapTexture
     * (texture/kon_texture_api.s: sends token 262 when the selector in bits
     * 24-27 is 3, else token 469). */
    KONA_HP_BIND_LINEAR_TEXTURE          = 0x106,

    /* Read at arm1.u arm_minmax 0x0c03fc74 (r9+0, r9+0x3c; real_format,
     * reset_minmax 0x0c03fbe8). */

    /* `HP_MINMAX` (0x107). Established: Stores the format and sink flag in
     * the min-max record, sets or clears the min-max bit in the pixel mode
     * word and resets the stored min and max with reset_minmax. Payload 2:
     * internal format, sink flag. Established: the token map runs
     * `arm_minmax` at arm1.u 0x0c03fc74. Sent by libGLcore.so
     * __glkonim_MinmaxEXT (kon_histogram.s, token 263; host accepts only
     * target 0x802e). */
    KONA_HP_MINMAX                       = 0x107,

    /* Read at arm1.u arm_resetminmax 0x0c03fce8 (r9+0x3c; reset_minmax,
     * set_invalid_enum). */

    /* `HP_RESETMINMAX` (0x108). Established: Resets the stored minimum and
     * maximum when the target is the min-max target, otherwise raises an
     * invalid-enum error. Payload 1: target (must be 0x802e). Established:
     * the token map runs `arm_resetminmax` at arm1.u 0x0c03fce8. Established:
     * libGLcore.so `__glkonim_ResetMinmaxEXT` stores 1 word after the token.
     * Sent by libGLcore.so __glkonim_ResetMinmaxEXT (kon_cfuncs.s, token
     * 264). */
    KONA_HP_RESETMINMAX                  = 0x108,

    /* Read at arm1.u arm_getminmax 0x0c03fcfc; ge.u mgesi_Cram2ODMA. */

    /* `HP_GETMINMAX` (0x109). Inferred: Query: start_rdata, sends the count
     * held in the min-max record, then for each engine runs Cram2ODMA (slot
     * 196) of 8 words from CRAM address 0x183, finish_rdata; if the flag is
     * nonzero it then calls reset_minmax. Payload 1: reset flag. Established:
     * the token map runs `arm_getminmax` at arm1.u 0x0c03fcfc. Sent by
     * libGLcore.so __glkonim_GetMinmaxEXT (kon_histogram.s) ->
     * __glkon_get_special(265, flag). */
    KONA_HP_GETMINMAX                    = 0x109,

    /* Read at arm1.u arm_getminmaxparameteriv 0x0c03fd98. */

    /* `HP_GETMINMAXPARAMETERIV` (0x10a). Inferred: Query: start_rdata, count
     * 1 and the record word at +4 (pname 0x802f) or +0 (0x8030); any other
     * pname raises invalid enum and replies count 0; finish_rdata. Payload 1:
     * pname (0x802f format, 0x8030 sink). Established: the token map runs
     * `arm_getminmaxparameteriv` at arm1.u 0x0c03fd98. Sent by libGLcore.so
     * __glkonim_GetMinmaxParameterivEXT/fvEXT (kon_histogram.s, token
     * constant 266). */
    KONA_HP_GETMINMAXPARAMETERIV         = 0x10a,

    /* Read at icu_map.tsv 0x10b; ged_bound_table.tsv idx 34; arm1.u
     * arm_pushattrib 0x0c039c80 (store of 0x58514800 at 0x0c03a150); ge.u
     * getlight.S mgesi_PushAttrLights 0xc255. */

    /* `HP_GET_LIGHT_ATTRIBS` (0x10b). Inferred: Map entry 0x58514841: pass
     * form, command 162, count 1, 32-bit words. Command 162 is handler-table
     * index 34, mgesi_PushAttrLights; the ARM itself injects the same command
     * (descriptor 0x58514800) in arm_pushattrib, so the engine handler saves
     * the current light attributes onto the engine-side attribute stack.
     * Payload 1: one word (value not shown by any emitter). Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0x58514841: command 162, count field 1 (bits 6-10, 0 read as 32),
     * single floats. No sender found: no store of token 267 to the command
     * FIFO in libGLcore (267 appears there only as a display-list opcode and
     * a glGet pname), the kernel, kona.so or irsaudit; the ARM uses the same
     * command number from arm_pushattrib. */
    KONA_HP_GET_LIGHT_ATTRIBS            = 0x10b,

    /* Engine handlers whose slots the code of `arm_initnames` loads, in
     * order: `mgeb_InitNames`. Read at arm1.u arm_initnames 0x0c038864; ge.u
     * mgeb_InitNames. */

    /* `HP_INITNAMES` (0x10c). Established: Only in select mode: sends
     * InitNames (slot 153) to all engines (port 0x438); otherwise nothing.
     * Payload 1 (zero, read and dropped): dummy zero. Established: the token
     * map runs `arm_initnames` at arm1.u 0x0c038864. Established:
     * libGLcore.so `__glkonim_InitNames` stores 1 word after the token. Sent
     * by libGLcore.so __glkonim_InitNames (kon_cfuncs.s). */
    KONA_HP_INITNAMES                    = 0x10c,

    /* Engine handlers whose slots the code of `arm_loadname` loads, in order:
     * `mgeb_LoadName`. Read at arm1.u arm_loadname 0x0c038898; ge.u
     * mgeb_LoadName. */

    /* `HP_LOADNAME` (0x10d). Established: Only in select mode: sends the name
     * (0x840) to all engines and runs LoadName (slot 155); otherwise dropped.
     * Payload 1: name integer. Established: the token map runs `arm_loadname`
     * at arm1.u 0x0c038898. Established: libGLcore.so `__glkonim_LoadName`
     * stores 1 word after the token. Sent by libGLcore.so __glkonim_LoadName
     * (kon_cfuncs.s). */
    KONA_HP_LOADNAME                     = 0x10d,

    /* Engine handlers whose slots the code of `arm_set_current_raster` loads,
     * in order: `mgeb_SetCurrentRaster`. Read at arm1.u
     * arm_set_current_raster 0x0c036350-0x0c036380; ge_handlers.md slot 366. */

    /* `HP_SET_CURRENT_RASTER` (0x10e). Established: Selects all engines
     * (0x438), copies 14 words from the host port and then the last word
     * (r9+0x3c) to engine port 0x840 unchanged, and starts slot 366 (gepc
     * word 0x16e) mgeb_SetCurrentRaster through port 0x8c0. Payload 15
     * floats: The raster-position record the driver keeps per context:
     * fifteen floats, taken from context offsets
     * +0x90,+0x94,+0x98,+0x9c,+0xa0, +0x30,+0x34,+0x38,+0x3c,
     * +0x80,+0x84,+0x88,+0x8c, +0x68, and the word at +4 converted to float.
     * Established: the token map runs `arm_set_current_raster` at arm1.u
     * 0x0c036350. Established: libGLcore.so `setCurrentRaster` stores 15
     * words after the token. Sent by libGLcore.so setCurrentRaster
     * (kon_attrib.s 0x0d9637f0). */
    KONA_HP_SET_CURRENT_RASTER           = 0x10e,

    /* Engine handlers whose slots the code of `arm_fogfunc` loads, in order:
     * `mgeb_FogFunc`. Read at arm1.u arm_fogfunc 0x0c03f628 (slot 114;
     * counter register 0x200058 value 2n with continue flag; waitForDH
     * 0x0c022354). */

    /* `HP_FOGFUNC` (0x10f). Inferred: Peeks the count without consuming it
     * and sends the bad-command path if it is outside 1..32. Otherwise it
     * sends the count to all engines, starts the pass-through counter for the
     * remaining words, waits, and starts mgeb_FogFunc. Payload variable: 1 +
     * 2n (n in 1..32): Count n of piecewise points, then n pairs of floats
     * describing the fog function. Established: the token map runs
     * `arm_fogfunc` at arm1.u 0x0c03f628. Sent by libGLcore.so
     * __glkonim_FogFuncSGIS (kon_fog.s): token 271, n, then 2n floats via
     * __glkon_datavn. */
    KONA_HP_FOGFUNC                      = 0x10f,

    /* Read at arm1.u arm_copyisoverlapped 0x0c02c94c (3 plain reads +
     * r9+0x3c; QueryOverlap, WaitOverlap,
     * start_rdata, tbus_regwrite 0x476, finish_rdata). */

    /* `HP_COPYISOVERLAPPED` (0x110). Established: Queries and waits for
     * source/destination overlap of a pending copy, then returns the answer
     * to the host by read-back: it writes a marker 1 and the result to the
     * read-back data register 0x476. Payload 4: source x, source y, width,
     * height-or-flags word (bit 31 asks the overlap query to run).
     * Established: the token map runs `arm_copyisoverlapped` at arm1.u
     * 0x0c02c94c. Sent by libGLcore.so CopyIsOverlapped (kon_pixel.s, token
     * 272), which then waits with __glkona_wait_rdata. */
    KONA_HP_COPYISOVERLAPPED             = 0x110,

    /* Read at arm1.u arm_pixel_nomode 0x0c02ca20 (r9+0, r9+0x3c; saved flag
     * word at ARM 0xcf4+0x714, pointers at descriptor +0xb4 and +0xb8;
     * DefUnpackState, DefPackState, DlistUnpackState). */

    /* `HP_PIXEL_NOMODE` (0x111). Inferred: With bit 30 set it saves the
     * pixel-mode flag word and a second state word and replaces them (mode
     * word cleared, second word 0x8421), so the next pixel command runs with
     * no transfer modes; otherwise it restores the saved words. It also
     * points the descriptor at the chosen pack and unpack state. Payload 2: a
     * pack/unpack state selector (2, 4, 0x20 or other), and a flag word whose
     * bit 30 turns the mode suppression on and bit 29 picks the pack and
     * unpack parameter sets. Established: the token map runs
     * `arm_pixel_nomode` at arm1.u 0x0c02ca20. Sent by libGLcore.so
     * __glKonSetNoModeState, __glkonim_ColorTableSGI,
     * __glkonim_CopyColorTableSGI, the convolution functions and
     * __glkon_OverlappedCopy (token 273). */
    KONA_HP_PIXEL_NOMODE                 = 0x111,

    /* Engine handlers whose slots the code of `arm_irisgl_mode` loads, in
     * order: `mgeb_SetLMCFlag`, `mgeb_ClearLMCFlag`. Read at arm1.u
     * arm_irisgl_mode 0x0c016770 (slots 405 and 406; context record at
     * r8+0xcf4 words +0x1114, +0x111c, +0x1120; XferMask). */

    /* `HP_IRISGL_MODE` (0x112). Established: Sets or clears two flag words
     * and a bit in the context record and starts mgeb_SetLMCFlag (nonzero) or
     * mgeb_ClearLMCFlag (zero) on all engines. Also sends the flag word
     * through descriptor 0x52800020 and re-derives the transfer masks.
     * Payload 1: Mode flag (nonzero on). Established: the token map runs
     * `arm_irisgl_mode` at arm1.u 0x0c016770. Sent by libGLcore.so
     * __glkonim_IglooInterfaceSGIX (kon_igloo.s): parameter 0x81a2 sends
     * token 274 plus the value. */
    KONA_HP_IRISGL_MODE                  = 0x112,

    /* Read at arm1.u arm_lmc_color 0x0c016898 (r8+0xcf4 record word +0x1120). */

    /* `HP_LMC_COLOR` (0x113). Established: Stores the word in the context
     * record word at +0x1120 and re-derives the transfer masks. Payload 1:
     * One word (value of the Igloo interface parameter 0x81a3). Established:
     * the token map runs `arm_lmc_color` at arm1.u 0x0c016898. Sent by
     * libGLcore.so __glkonim_IglooInterfaceSGIX (kon_igloo.s): token 275. */
    KONA_HP_LMC_COLOR                    = 0x113,

    /* Read at arm1.u arm_video_source 0x0c013924; SetVideoFormat 0x0c02bdfc;
     * SetGedVideoBoard 0x0c032ccc. */

    /* `HP_VIDEO_SOURCE` (0x114). Inferred: Hands the word to SetVideoFormat,
     * which writes a source-format description (a set of constants chosen by
     * 0/1, 2 or 3) into the firmware's video record and, if the record shows
     * a video board active, first resets the distributor video-board set-up
     * (SetGedVideoBoard). Payload 1: video source code 0-3 (libGLcore maps
     * the drawable video type 0x1001 to 0, 0x1000 to 1,
     * 0x1002 to 2, 0x1003 to 3, anything else to 0). Established: the token
     * map runs `arm_video_source` at arm1.u 0x0c013924. Sent by libGLcore.so
     * kona_readconfig (kon_context.s) stores token 276 then the code. */
    KONA_HP_VIDEO_SOURCE                 = 0x114,

    /* Engine handlers whose slots the code of `arm_copyconvisoverlapped`
     * loads, in order: `mgesi_GetRaster`. Read at arm1.u
     * arm_copyconvisoverlapped 0x0c02c9b0 (3 plain reads + r9+0x3c;
     * QueryOverlap, WaitOverlap, start_rdata,
     * tbus_regwrite 0x476 with 0x10, slot 200 mgesi_GetRaster via 0x4f4). */

    /* `HP_COPYCONVISOVERLAPPED` (0x115). Established: Same overlap query as
     * the plain copy, but replies through the read-back register 0x476 with a
     * marker of 16 instead of 1, then names the raster-read handler on port
     * 0x4f4 before finishing the read-back. Payload 4: source x, source y,
     * width, flags word (bit 31 asks the overlap query to run). Established:
     * the token map runs `arm_copyconvisoverlapped` at arm1.u 0x0c02c9b0.
     * Sent by libGLcore.so CopyConvIsOverlapped (kon_pixel.s, token 277). */
    KONA_HP_COPYCONVISOVERLAPPED         = 0x115,

    /* Read at arm1.u arm_resolveissinglecomp 0x0c027d68 (3 plain reads +
     * r9+0x3c; commonResolve 0x0c027714, start_rdata,
     * tbus_regwrite 0x476, finish_rdata). */

    /* `HP_RESOLVEISSINGLECOMP` (0x116). Inferred: Runs the path resolver on
     * the given source format and returns by read-back (register 0x476) a
     * one-component answer, telling the host whether the draw or copy path
     * reduces to a single component. Payload 4: a path flag word (bit 0
     * host-format, bit 1 framebuffer, bit 4 and others), and three format
     * words from the draw or copy state. Established: the token map runs
     * `arm_resolveissinglecomp` at arm1.u 0x0c027d68. Sent by libGLcore.so
     * GetSingleCompFromPipe (kon_pixel.s, token 278), called from DrawPixels
     * and CopyPixels; also __glKonUnsetLEModes. */
    KONA_HP_RESOLVEISSINGLECOMP          = 0x116,

    /* Engine handlers whose slots the code of `arm_samplepattern` loads, in
     * order: `mgeb_SetMSPointTables`. Read at arm1.u arm_samplepattern
     * 0x0c03c2a8 (table patterns 0x0c03c734; descriptor 0x584fc800 address
     * words 0x01253be0 and 0x01263be1; slot 423). */

    /* `HP_SAMPLEPATTERN` (0x117). Established: Rejects values outside
     * 0x80a1-0x80a7 with invalid-enum. Otherwise keeps it, picks two pattern
     * words from the table for the current sample count, writes them to the
     * two multisample location registers and starts mgeb_SetMSPointTables
     * with the pattern index. Payload 1: Sample pattern enum (0x80a1 single
     * pass, 0x80a2-0x80a3 two-pass, 0x80a4-0x80a7 four-pass). Established:
     * the token map runs `arm_samplepattern` at arm1.u 0x0c03c2a8.
     * Established: libGLcore.so `__glkonim_SamplePatternSGIS` stores 1 word
     * after the token. Sent by libGLcore.so __glkonim_SamplePatternSGIS
     * (kon_cfuncs.s). */
    KONA_HP_SAMPLEPATTERN                = 0x117,

    /* Read at arm1.u arm_samplemask 0x0c03c350 (tables masks4 0x0c03c7a4,
     * masks8 0x0c03c828; descriptor 0x58404800, address word 0x0161140b). */

    /* `HP_SAMPLEMASK` (0x118). Inferred: Keeps both, converts the float
     * coverage value into a bit mask for 4 or 8 samples through the masks4 or
     * masks8 table (inverting it when the flag is set) and writes it to a
     * texture-pipe register. Payload 2: Mask value as a float, and an invert
     * flag. Established: the token map runs `arm_samplemask` at arm1.u
     * 0x0c03c350. Sent by libGLcore.so __glkonim_SampleMaskSGIS (kon_modes.s,
     * token 280). */
    KONA_HP_SAMPLEMASK                   = 0x118,

    /* Engine handlers whose slots the code of `arm_poplights` loads, in
     * order: `mgeb_PopAttrLights`. Read at arm1.u arm_poplights 0x0c018134
     * (slot 166; count register r9-0x1a8; waitForDH). */

    /* `HP_POPLIGHTS` (0x119). Inferred: Peeks the count, starts the
     * pass-through of those words to all engines, waits for the transfer and
     * starts mgeb_PopAttrLights, which loads the restored light state.
     * Payload variable: 1 + count (12 floats per light): Restored light
     * parameter block: a word count, then twelve floats for each saved light.
     * Established: the token map runs `arm_poplights` at arm1.u 0x0c018134.
     * Sent by libGLcore.so __glkonim_PopAttrib and __glkonResolveContext
     * (kon_attrib.s): token 281, 12 x lights, then the floats. */
    KONA_HP_POPLIGHTS                    = 0x119,

    /* Read at arm1.u arm_pixeltexgen 0x0c026610 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_PIXELTEXGEN` (0x11a). Unused pixel-texgen token. Established: the
     * map word of 0x11a is a branch at 0x0c026610 to arm_badcmd (read in
     * full). Established from g_api.s and the list objects of libGLcore.so:
     * glPixelTexGenSGIX is a three-instruction jump through the dispatch slot
     * at 5164($zero), the display-list compiler and executor have cases for
     * it, and no __glkonim_ routine of that name exists, so nothing in the
     * library can build the word. Whether the dispatch slot is filled was not
     * traced. */
    KONA_HP_PIXELTEXGEN                  = 0x11a,

    /* Engine handlers whose slots the code of `arm_polygonoffsetext` loads,
     * in order: `mgeb_PolygonOffsetExt`. Read at arm1.u arm_polygonoffsetext
     * 0x0c016408 (slot 64). */

    /* `HP_POLYGONOFFSETEXT` (0x11b). Established: Sends the first word on
     * port 0x478 and the second on 0x840, then starts mgeb_PolygonOffsetExt.
     * No shadow is kept. Payload 2: Offset factor and bias as floats.
     * Established: the token map runs `arm_polygonoffsetext` at arm1.u
     * 0x0c016408. Established: libGLcore.so `__glkonim_PolygonOffsetEXT`
     * stores 2 words after the token. Sent by libGLcore.so
     * __glkonim_PolygonOffsetEXT (kon_cfuncs.s). */
    KONA_HP_POLYGONOFFSETEXT             = 0x11b,

    /* Read at arm1.u arm_texsubimage1d 0x0c026614 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXSUBIMAGE1D` (0x11c). Unused one-dimensional sub-image token.
     * Established: token 0x11c resolves to a branch at 0x0c026614 into
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_TexSubImage1DEXT is 31 instructions for target 3552 that hand
     * off to __glkonim_TexSubImage (386 instructions), a host routine that
     * queries texture-object state and calls __glKonSetNoModeState but stores
     * no token. Replacement texels go out through the load path, not through
     * a sub-image token. */
    KONA_HP_TEXSUBIMAGE1D                = 0x11c,

    /* Read at arm1.u arm_texsubimage2d 0x0c026618 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXSUBIMAGE2D` (0x11d). Unused two-dimensional sub-image token.
     * Established (read in full): slot 0x11d, the second of the sub-image
     * refusals, is the jump at 0x0c026618 straight into arm_badcmd. Inferred
     * from kon_texture_api.s: __glkonim_TexSubImage2DEXT is 34 instructions
     * (targets 3553 and 0x8095) ending in the same __glkonim_TexSubImage as
     * the 1D and 3D entries; that routine contains no FIFO store and prints
     * through fprintf on one internal error path, which shows it is host
     * bookkeeping around a separate pixel send. */
    KONA_HP_TEXSUBIMAGE2D                = 0x11d,

    /* Read at arm1.u arm_texsubimage3d 0x0c02661c (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXSUBIMAGE3D` (0x11e). Unused three-dimensional sub-image token.
     * Established: token 0x11e leads to a branch at 0x0c02661c into
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_TexSubImage3DEXT is only 25 instructions for target 0x806f
     * (the 3D target) and shares __glkonim_TexSubImage with the lower
     * dimensions, so the host treats the third dimension as a depth parameter
     * of the same routine; no store to the command window occurs anywhere on
     * that path. */
    KONA_HP_TEXSUBIMAGE3D                = 0x11e,

    /* Read at arm1.u arm_teximage3d 0x0c026620 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXIMAGE3D` (0x11f). Unused three-dimensional image-definition
     * token. Established (read in full): nothing executes for 0x11f except
     * the jump at 0x0c026620 into arm_badcmd. Inferred from
     * kon_texture_api.s: __glkonim_TexImage3DEXT is 27 instructions accepting
     * 0x806f and the proxy 0x8070, delegating to __glkonim_TexImage (254
     * instructions, no FIFO store). Three-dimensional textures are therefore
     * defined on the host exactly as 1D and 2D ones are, and the pipe learns
     * about them only when texels are loaded or the object is bound. */
    KONA_HP_TEXIMAGE3D                   = 0x11f,

    /* Read at arm1.u arm_teximage4d 0x0c026624 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXIMAGE4D` (0x120). Unused four-dimensional image token.
     * Established: token 0x120 is a branch at 0x0c026624 into arm_badcmd
     * (read in full). Established from g_api.s: glTexImage4DSGIS is a
     * three-instruction jump through the dispatch slot at 5156($zero); the
     * display-list objects have cases for it, but no __glkonim_ routine for
     * it exists in any KONA object, so this build cannot form the word.
     * Four-dimensional textures are the extension entry without a driver
     * behind it. */
    KONA_HP_TEXIMAGE4D                   = 0x120,

    /* Read at arm1.u arm_texsubimage4d 0x0c026628 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_TEXSUBIMAGE4D` (0x121). Unused four-dimensional sub-image token.
     * Established (read in full): the handler address for 0x121 holds only a
     * jump into arm_badcmd, at 0x0c026628. Established from g_api.s and the
     * list objects: glTexSubImage4DSGIS is the same kind of dispatch-slot
     * jump as glTexImage4DSGIS, with list compilers but no __glkonim_ body,
     * so no sender exists. Both 4D tokens are slots the firmware reserves but
     * this library never fills. */
    KONA_HP_TEXSUBIMAGE4D                = 0x121,

    /* Read at arm1.u arm_gentextures1d 0x0c02662c (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GENTEXTURES1D` (0x122). Unused one-dimensional texture-name token.
     * Established: token 0x122 maps to a branch at 0x0c02662c into arm_badcmd
     * (read in full). Inferred from kon_texture_api.s:
     * __glkonim_GenTexturesEXT (155 instructions, four error sites) clears a
     * 544-byte host name table with bzero and calls
     * __glkonim_GenTexturesEXT_Slow when the fast table is exhausted; it
     * contains no FIFO store. Names are allocated on the host and the pipe
     * first hears of one when it is bound. */
    KONA_HP_GENTEXTURES1D                = 0x122,

    /* Read at arm1.u arm_gentextures2d 0x0c026630 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GENTEXTURES2D` (0x123). Unused two-dimensional texture-name token.
     * Established (read in full): the middle one of three adjacent generate
     * slots, 0x123, is the same bare jump at 0x0c026630. Inferred from
     * kon_texture_api.s: the library has one name generator,
     * __glkonim_GenTexturesEXT, for every dimension, so there is no
     * per-dimension path that could pick this token; the routine keeps its
     * names in host tables and stores nothing to the command window. The 1D,
     * 2D and 3D generate tokens are three numbers for a call the host answers
     * alone. */
    KONA_HP_GENTEXTURES2D                = 0x123,

    /* Read at arm1.u arm_gentextures3d 0x0c026634 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_GENTEXTURES3D` (0x124). Unused three-dimensional texture-name
     * token. Established: token 0x124 resolves to a branch at 0x0c026634 into
     * arm_badcmd (read in full). Inferred from kon_texture_api.s:
     * __glkonim_GenTexturesEXT is shared by all three dimensions and carries
     * no dimension argument that could select a token, and its only callees
     * are bzero and the slow-path allocator, so the pipe is never asked to
     * generate a name. */
    KONA_HP_GENTEXTURES3D                = 0x124,

    /* Read at arm1.u arm_istexture 0x0c026638 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_ISTEXTURE` (0x125). Unused texture-name test token. Established
     * (read in full): the routine for 0x125 is the lone jump at 0x0c026638
     * into arm_badcmd; the delete and bind slots after it do the same.
     * Inferred from kon_texture_api.s: __glkonim_IsTextureEXT is a
     * 42-instruction lookup in the host name table with two error sites and
     * no call at all, so the answer is a pure host query and the token has no
     * use. */
    KONA_HP_ISTEXTURE                    = 0x125,

    /* Read at arm1.u arm_deletetextures 0x0c02663c (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_DELETETEXTURES` (0x126). Unused texture-delete token. Established:
     * token 0x126 maps to a branch at 0x0c02663c into arm_badcmd (read in
     * full). Inferred from kon_texture_api.s: __glkonim_DeleteTexturesEXT
     * (261 instructions) walks the names, frees objects with
     * __glKonFreeTextureObj and releases cached texture-memory use through
     * subtractTexTableUsage, whose FIFO token is
     * HP_TEX_ARM_CACHE_INDEX_INVALID (0x1e0). Deletion reaches the pipe as
     * that cache invalidation, never as a delete word. */
    KONA_HP_DELETETEXTURES               = 0x126,

    /* Read at arm1.u arm_bindtexture 0x0c026640 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_BINDTEXTURE` (0x127). Unused texture-bind token. Established (read
     * in full): 0x127 ends the texture-name run with a bare jump to
     * arm_badcmd at 0x0c026640. Inferred from kon_texture_api.s:
     * __glkonim_BindTextureEXT (235 instructions, five error sites) switches
     * on targets 0x8170 and 0x844d-0x844f among others, calls
     * __glKonDeleteTextureObj on two paths and stores nothing itself; the
     * pipe sees a bind through the texture-bind tokens (0x178, 0x179 and
     * siblings) that other routines send (their senders are covered in their
     * own entries). */
    KONA_HP_BINDTEXTURE                  = 0x127,

    /* Engine handlers whose slots the code of `arm_x_init` loads, in order:
     * `mgeb_XContextInitialize`, `mgeb_ContextLoadEram`. Read at arm1.u
     * arm_x_init 0x0c03d2c8; ge.u mgeb_XContextInitialize,
     * mgeb_ContextLoadEram. */

    /* `HP_X_INIT` (0x128). Inferred: On a real board the three words are read
     * and ignored and the geometry kept in ARM RAM 0x40-0x45 is used; the
     * handler resets the X state, clears the frame buffer once per depth step
     * (8, 16, 32 or
     * 64), sends mgeb_XContextInitialize with width-1 and height-1, replies
     * through the read-back registers with a count of 3 then width, height
     * and depth, and loads ERAM with a 12-word initial block. Payload 3:
     * screen width, screen height, pixel-depth code 0-3 (a code outside that
     * range makes the handler print a bad-depth message). Established: the
     * token map runs `arm_x_init` at arm1.u 0x0c03d2c8. No sender found: no
     * store at X module offset 0x2500, no li 296 near a FIFO store in
     * libGLcore, not in kernel commands.tsv. */
    KONA_HP_X_INIT                       = 0x128,

    /* Read at icu_map.tsv 0x129; ged_bound_table.tsv idx 51; ge.u xload.S
     * mgebi_XLoadGC 0x4cf4 (operand reads D=0..12 in ge_listing/xload.S.lst);
     * kona.so kon_loadGC; docs/opengl.md X module drawing commands. */

    /* `HP_X_LOADGC` (0x129). Inferred: Map entry 0x5859db41: pass form,
     * command 179, count 13, 32-bit words. Command 179 selects handler-table
     * index 51, mgebi_XLoadGC; the handler reads 13 operand words (operands
     * 0-12). It loads the X graphics-context state the later X drawing
     * commands use; the detail is not decoded. Payload 13: foreground colour
     * (high, low), background colour (high, low), two write-mask words,
     * config, raster op, framebuffer address, buffer selector, three format
     * words (names from the module debug print). Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x5859db41:
     * command 179, count field 13 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgebi_XLoadGC` (index 51 of the handler table). Sent by
     * kona.so (X module, ddx/asm/kona/kon/kon.s) kon_loadGC and 15 other
     * functions (kon_loadAccelGC, kon_loadNfbBitmapGC, kon_loadImgRectGC,
     * konPolyFillRectSolid, ...); the first payload word is stored at FIFO
     * pointer + 0x2520 (32 x token), the rest at +0. */
    KONA_HP_X_LOADGC                     = 0x129,

    /* Read at icu_map.tsv 0x12a; ged_bound_table.tsv idx 52; ge.u xload.S
     * mgebi_XLoadPosition 0x4d7c (operands 0-3); kona.so kon_loadGC. */

    /* `HP_X_LOADPOS` (0x12a). Inferred: Map entry 0x585a5901: pass form,
     * command 180, count 4, 32-bit words. Command 180 selects index 52,
     * mgebi_XLoadPosition; the handler reads 4 operand words. It sets the
     * drawable origin and size the following X drawing commands are relative
     * to; the engine-side storage is not decoded. Payload 4: drawable x, y,
     * width, height (from the DrawableRec halfwords +8,+10,+12,+14); 0, 0,
     * screen width, height for screen-wide work. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x585a5901:
     * command 180, count field 4 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgebi_XLoadPosition` (index 52 of the handler table).
     * Sent by kona.so (X module, ddx/asm/kona/kon/kon.s) kon_loadGC and 42
     * drawing functions (konPolyFillRect*, konFillSpans*, glyph routines,
     * kon_drawDid, konInit); the first payload word is stored at FIFO pointer
     * + 0x2540 (32 x token), the rest at +0. */
    KONA_HP_X_LOADPOS                    = 0x12a,

    /* Read at icu_map.tsv 0x12b; ged_bound_table.tsv idx 53; ge.u xload.S
     * mgeb_XLoadClip 0x4cc0; kona.so kon_loadClipRects, konValidateClip. */

    /* `HP_X_LOADCLIP` (0x12b). Inferred: Map entry 0x585ad141: pass form,
     * command 181, count 5, 32-bit words. Command 181 selects index 53,
     * mgeb_XLoadClip; it reads the count operand and loops over the rectangle
     * words. It installs the clip list that the clipped-draw routines
     * (mmo_XclipDraw*) test against. Payload 5: clip rectangle count n, then
     * the first rectangle x1, y1, x2,
     * y2; rectangles 2..n follow as X_BDATA4 commands, four words each; a
     * whole-screen clip is 1, 0, 0, width, height. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x585ad141:
     * command 181, count field 5 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgeb_XLoadClip` (index 53 of the handler table). Sent
     * by kona.so (X module, ddx/asm/kona/kon/kon.s) kon_loadClipRects and
     * about 39 drawing/glyph functions; the first payload word is stored at
     * FIFO pointer + 0x2560 (32 x token), the rest at +0. */
    KONA_HP_X_LOADCLIP                   = 0x12b,

    /* Engine handlers whose slots the code of `arm_x_loadclip_arm` loads, in
     * order: `mgeb_XLoadClip`. Read at arm1.u arm_x_loadclip_arm 0x0c03d5b0;
     * ucode/hw_route.tsv row 0x12b (command 181, index 53 = mgeb_XLoadClip). */

    /* `HP_X_LOADCLIP_ARM` (0x12c). Inferred: Reads the count n at the +0x40
     * port, sends it to all engines as data, starts the pass-through counter
     * with 4 x n (the rectangle coordinates), waits for the host interface to
     * finish, then runs mgeb_XLoadClip, the same handler the hardware-routed
     * HP_X_LOADCLIP (0x12b) reaches. Payload variable: first word n, then
     * clip rectangle data: a rectangle count n followed by the rectangle
     * words. Established: the token map runs `arm_x_loadclip_arm` at arm1.u
     * 0x0c03d5b0. No sender found: the 9600 (0x2580) constants in other.s are
     * a function address added to a pointer, not a store; no libGLcore or
     * kernel sender. */
    KONA_HP_X_LOADCLIP_ARM               = 0x12c,

    /* Read at icu_map.tsv 0x12d; ged_bound_table.tsv idx 54; ge.u xload.S
     * mgesi_XLoadScissor 0x4d43 (operands 0-3); kona.so kon*GlyphBlt*. */

    /* `HP_X_LOADSCISSOR` (0x12d). Inferred: Map entry 0x585b4901: pass form,
     * command 182, count 4, 32-bit words. Command 182 selects index 54,
     * mgesi_XLoadScissor; the handler reads 4 operand words. It sets the
     * scissor box used while drawing a glyph bitmap; the engine storage is
     * not decoded. Payload 4: glyph box x, y, then width and height (computed
     * as differences). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0x585b4901: command 182, count field 4
     * (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgesi_XLoadScissor` (index 54 of the handler table). Sent by kona.so
     * (X module, ddx/asm/kona/kon/kon.s) the 14 glyph routines
     * (konImageGlyphBlt*, konPolyGlyphBltSolid*); the first payload word is
     * stored at FIFO pointer + 0x25a0 (32 x token), the rest at +0. */
    KONA_HP_X_LOADSCISSOR                = 0x12d,

    /* Engine handlers whose slots the code of `arm_x_loadcmap` loads, in
     * order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. Read at arm1.u
     * arm_x_loadcmap 0x0c03d5e8; ge.u mgesi_VCbusWrite,
     * mgesi_VCbusWriteMultiple. */

    /* `HP_X_LOADCMAP` (0x12e). Established: Writes the address to display-bus
     * register 0x118, then pushes the n colour words to register 0x119
     * through the engines in pieces of at most 0x200 words, and ends with the
     * seven-write 0x11f/0x11e flush that closes every XMAP load. Payload 2 +
     * n: colour-map address, count n, then n colour words. Established: the
     * token map runs `arm_x_loadcmap` at arm1.u 0x0c03d5e8. Sent by kona.so
     * (X module) konStoreColors (4 stores), konInstallColormap; stores the
     * first payload word at the FIFO pointer + 32 x token and the rest at
     * offset 0. */
    KONA_HP_X_LOADCMAP                   = 0x12e,

    /* Engine handlers whose slots the code of `arm_x_loadgamma` loads, in
     * order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. Read at arm1.u
     * arm_x_loadgamma 0x0c03d6fc (compare with 0xdeadfeed at 0x0c03d70c; XMAP
     * branch 0x0c03d8c0). */

    /* `HP_X_LOADGAMMA` (0x12f). Established: XMAP form writes the address to
     * display-bus register 0x118 and streams the values to 0x11b, then the
     * 0x11f/0x11e flush; the 0xdeadfeed form clears bits 11-8 of bus word
     * 0xc104, sets bits 8-7 of 0xc006, copies the table straight into bus
     * window 0xf000 and restores the two registers. Payload XMAP form: 4
     * (address, count 2, two values); external form: 2 + count (0xdeadfeed,
     * count, count packed words): XMAP form: gamma RAM address, count, 12-bit
     * values; external form: marker 0xdeadfeed, word count, 10:10:10 packed
     * gamma entries. Established: the token map runs `arm_x_loadgamma` at
     * arm1.u 0x0c03d6fc. Sent by kona.so (X module) konStore24DCColors,
     * konInstall24DCColormap, unnamed function at 0x498ff0; setmon (per
     * docs/dg.md); stores the first payload word at the FIFO pointer + 32 x
     * token and the rest at offset 0. */
    KONA_HP_X_LOADGAMMA                  = 0x12f,

    /* Engine handlers whose slots the code of `arm_x_loadcursor` loads, in
     * order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. Read at arm1.u
     * arm_x_loadcursor 0x0c03d9c4; ge.u mgesi_VCbusWrite,
     * mgesi_VCbusWriteMultiple. */

    /* `HP_X_LOADCURSOR` (0x130). Established: Peeks the address, writes it to
     * display-bus register 0x118, then moves the image words to register
     * 0x119 through the engines with a pass-through count of 260, waits for
     * completion and ends with the 0x11f/0x11e flush. Payload 261 (address +
     * 260 image words): cursor slot address (slot x 260), then 260 cursor
     * image words. Established: the token map runs `arm_x_loadcursor` at
     * arm1.u 0x0c03d9c4. Sent by kona.so (X module) konInit (the 9728 site)
     * and the helper at 0x526140 named in docs/opengl.md:86-89; stores the
     * first payload word at the FIFO pointer + 32 x token and the rest at
     * offset 0. */
    KONA_HP_X_LOADCURSOR                 = 0x130,

    /* Engine handlers whose slots the code of `arm_x_loadcursorcolor` loads,
     * in order: `mgesi_VCbusWrite`, `mgesi_VCbusWriteMultiple`. Read at
     * arm1.u arm_x_loadcursorcolor 0x0c03daa0. */

    /* `HP_X_LOADCURSORCOLOR` (0x131). Established: Peeks the address, adds
     * 0x100 and writes it to display-bus register 0x118, moves the four
     * colour words to register 0x119 with a pass-through count of 4, then the
     * 0x11f/0x11e flush. Payload 5: cursor address (slot x 260 or 9884 for
     * the crosshair), then four colour words. Established: the token map runs
     * `arm_x_loadcursorcolor` at arm1.u 0x0c03daa0. Sent by kona.so (X
     * module) konRecolorCursor (2 stores); stores the first payload word at
     * the FIFO pointer + 32 x token and the rest at offset 0. */
    KONA_HP_X_LOADCURSORCOLOR            = 0x131,

    /* Engine handlers whose slots the code of `arm_x_loadxmap_did` loads, in
     * order: `mgesi_VCbusWrite`. Read at arm1.u arm_x_loadxmap_did
     * 0x0c03db80; ge.u mgesi_VCbusWrite. */

    /* `HP_X_LOADXMAP_DID` (0x132). Established: Writes the display id to
     * display-bus register 0x118 and the mode word to register 0x11c through
     * mgesi_VCbusWrite, then the 0x11f/0x11e flush writes, setting up how
     * that display id is shown. Payload 2: display id, then a mode word
     * (colour-map number, plane count, luminance and grey flags).
     * Established: the token map runs `arm_x_loadxmap_did` at arm1.u
     * 0x0c03db80. Sent by kona.so (X module) konValidateMode,
     * konChangeDIDCmap; stores the first payload word at the FIFO pointer +
     * 32 x token and the rest at offset 0. */
    KONA_HP_X_LOADXMAP_DID               = 0x132,

    /* Engine handlers whose slots the code of `arm_x_loadxmap_config` loads,
     * in order: `mgesi_VCbusWrite`. Read at arm1.u arm_x_loadxmap_config
     * 0x0c03dc44. */

    /* `HP_X_LOADXMAP_CONFIG` (0x133). Established: Writes the word to XMAP
     * register 9 (display-bus address 0x109) through mgesi_VCbusWrite and
     * does nothing else. Payload 1: a flag word (1 on window create, 0 on
     * destroy). Established: the token map runs `arm_x_loadxmap_config` at
     * arm1.u 0x0c03dc44. Sent by kona.so (X module) konCreateWindow,
     * konDestroyWindow; stores the first payload word at the FIFO pointer +
     * 32 x token and the rest at offset 0. */
    KONA_HP_X_LOADXMAP_CONFIG            = 0x133,

    /* Engine handlers whose slots the code of `arm_get_ge_texture_attrib`
     * loads, in order: `mgesi_StartRdata`, `mgesi_FinishRdata`. Read at
     * arm1.u arm_get_ge_texture_attrib 0x0c03aea8; ge_texture_attrib_to_host
     * 0x0c03ae34. */

    /* `HP_GET_GE_TEXTURE_ATTRIB` (0x134). Inferred: Query: StartRdata,
     * ge_texture_attrib_to_host sends four ERAM dumps through Eram2ODMA (1
     * word at 0x293, 4 at 0x28b,
     * 4 at 0x28f, 112 at 0x3e3: texture environment state and texgen planes),
     * then FinishRdata. 121 words in all. Payload 1 (zero, read and dropped):
     * dummy zero. Established: the token map runs `arm_get_ge_texture_attrib`
     * at arm1.u 0x0c03aea8. Sent by libGLcore.so __glkonCopyContext
     * (kon_attrib.s) -> __glkon_get_special(308, 0). */
    KONA_HP_GET_GE_TEXTURE_ATTRIB        = 0x134,

    /* Read at arm1.u arm_pixel_transform 0x0c0376c4 (r9+0x3c; mode word at
     * ARM 0xc88; enable bytes at ARM 0x784-0x786, master byte at 0x796). */

    /* `HP_PIXEL_TRANSFORM` (0x135). Established: Keeps the target at ARM
     * 0x36c and edits the pixel mode word at ARM 0xc88: 0x81c5 sets bits 5, 6
     * and 7 for the enabled transform bytes at ARM 0x784-0x786 and clears bit
     * 19, 0x81c6 clears bits 5-7 and sets bit 19; it sends nothing to the
     * engines. Payload 1: pixel-transform target (0x81c5 or 0x81c6).
     * Established: the token map runs `arm_pixel_transform` at arm1.u
     * 0x0c0376c4. Sent by libGLcore.so __glkonim_PixelTransformSGI
     * (kon_pixel_transform.s, token 309). */
    KONA_HP_PIXEL_TRANSFORM              = 0x135,

    /* Read at arm1.u arm_x_pix_setup 0x0c034ac4; X_PixSetupGE 0x0c035244;
     * CompGedReg 0x0c034bf0. */

    /* `HP_X_PIX_SETUP` (0x136). Established: Remembers words 4 and 5 (width
     * and height) and the bitmap flag in ARM RAM, programs the engines
     * through X_PixSetupGE, sets the distributor registers with CompGedReg,
     * sets up the texture-filter chip when the kind is nonzero (and the
     * packer when it is 2), then writes a register-path descriptor and 0.
     * Payload 7: word 0 transfer kind (bits 0-3) and bitmap-mode flag (bit
     * 4); word 1 engine output module; word 2 conversion/packer code; word 3
     * and 6 values passed to the distributor and engine setup; words 4 and 5
     * transfer width and height. Established: the token map runs
     * `arm_x_pix_setup` at arm1.u 0x0c034ac4. Sent by kona.so (X module)
     * kon_loadNfbBitmapGC, kon_loadNfbOpaqueBitmapGC, kon_loadPixmapGC,
     * konImageGlyphBlt*, konPolyGlyphBltSolid*, konWriteFBSubBlock,
     * konReadFBBlock; stores the first payload word at the FIFO pointer + 32
     * x token and the rest at offset 0. */
    KONA_HP_X_PIX_SETUP                  = 0x136,

    /* Engine handlers whose slots the code of `arm_x_pix_copy` loads, in
     * order: `mgeb_PixEndRGBStream`. Read at arm1.u arm_x_pix_copy
     * 0x0c034774; XSetupGedRead 0x0c035598, XPixSetupRM 0x0c035524, XSetTF
     * 0x0c03573c, XStartRbus 0x0c0358e0. */

    /* `HP_X_PIX_COPY` (0x137). Inferred: Compares source and destination to
     * pick the copy direction, using the width and height saved by
     * X_PIX_SETUP, sets up the engine read, the raster-board write and the
     * texture filter, starts the raster bus, then stores the pixel-end
     * handler (mgeb_PixEndRGBStream) to engine port 0x4f8, marks the cached
     * setup word invalid and writes a register-path descriptor and a status
     * byte. Payload 4: source x, source y, destination x, destination y of a
     * screen-to-screen copy. Established: the token map runs `arm_x_pix_copy`
     * at arm1.u 0x0c034774. Sent by kona.so (X module) konCopyRect; stores
     * the first payload word at the FIFO pointer + 32 x token and the rest at
     * offset 0. */
    KONA_HP_X_PIX_COPY                   = 0x137,

    /* Engine handlers whose slots the code of `arm_x_pix_read` loads, in
     * order: `mgeb_PixEndRGBStream`. Read at arm1.u arm_x_pix_read
     * 0x0c0349e4; SendXToHost 0x0c035874. */

    /* `HP_X_PIX_READ` (0x138). Inferred: Converts y against the screen
     * height, forms the block corners from the width and height saved by
     * X_PIX_SETUP, programs the engine read, sends the pixels back to the
     * host with SendXToHost, then stores the pixel-end handler
     * mgeb_PixEndRGBStream to engine port 0x4f8 and invalidates the cached
     * setup. Payload 2: x position and y position (measured from the bottom:
     * the handler subtracts it from the screen height). Established: the
     * token map runs `arm_x_pix_read` at arm1.u 0x0c0349e4. Sent by kona.so
     * (X module) konReadImage, konReadFBBlock; stores the first payload word
     * at the FIFO pointer + 32 x token and the rest at offset 0. */
    KONA_HP_X_PIX_READ                   = 0x138,

    /* Engine handlers whose slots the code of `arm_x_pix_write` loads, in
     * order: `mgesi_XPixRmSetup`, `mgebi_PixCurGEIDSetup`. Read at arm1.u
     * arm_x_pix_write 0x0c034914; ge.u mgesi_XPixRmSetup,
     * mgebi_PixCurGEIDSetup. */

    /* `HP_X_PIX_WRITE` (0x139). Inferred: Stores the header and the next
     * word, sends the saved size plus those words to the engines through
     * mgesi_XPixRmSetup and mgebi_PixCurGEIDSetup, and in bitmap mode counts
     * the data through with the pass-through counter and waits for it to
     * finish. Payload 1 + data (header word, then the bitmap words): a header
     * word, then pixel or bitmap data. Established: the token map runs
     * `arm_x_pix_write` at arm1.u 0x0c034914. Sent by kona.so (X module)
     * konDrawImage, konDrawMonoImage, konDrawOpaqueMonoImage, glyph routines,
     * konWriteFBSubBlock; stores the first payload word at the FIFO pointer +
     * 32 x token and the rest at offset 0. */
    KONA_HP_X_PIX_WRITE                  = 0x139,

    /* Engine handlers whose slots the code of `arm_x_pix_finish` loads, in
     * order: `mgeb_PixEndRGBStream`. Read at arm1.u arm_x_pix_finish
     * 0x0c034bb4. */

    /* `HP_X_PIX_FINISH` (0x13a). Established: Ends an X pixel operation:
     * clears the bitmap-mode flag, invalidates the cached setup word, stores
     * the pixel-end handler address (mgeb_PixEndRGBStream) to engine port
     * 0x4f8 and writes the register-path descriptor and a data byte that
     * return the pixel path to normal. Payload 1 (one word, not used): a zero
     * word. Established: the token map runs `arm_x_pix_finish` at arm1.u
     * 0x0c034bb4. Sent by kona.so (X module) konDrawImage, konDrawMonoImage,
     * konDrawOpaqueMonoImage, glyph routines, konWriteFBSubBlock; stores the
     * first payload word at the FIFO pointer + 32 x token and the rest at
     * offset 0. */
    KONA_HP_X_PIX_FINISH                 = 0x13a,

    /* Read at arm1.u static map record 0x0c000b3c, handler word 0x0c000b40;
     * arm_badcmd 0x0c0017f4-0x0c001854; kon.s addiu 10080 on _rodata before a
     * call; kpm name record 0x100bad24. */

    /* `HP_X_UNUSED3` (0x13b). Established: Refused by the firmware. The
     * static map record at 0x0c000b3c names `arm_badcmd` (0x0c0017f4) as its
     * handler, so init_hip stores 0xc0017f40 in hardware map word 0x4004ec;
     * that routine prints this token and the one before it, prints the next
     * 100 FIFO words as data and then reads the FIFO forever, so the pipe
     * stops. It lies between HP_X_PIX_FINISH and HP_X_LOADSTIPPLE. Nothing
     * sends it: the one constant in the X module equal to 32 x 0x13b (10080)
     * is an offset into its read-only strings handed to a call, not a FIFO
     * store, and libGLcore and the kernel have no store of the value. */
    KONA_HP_X_UNUSED3                    = 0x13b,

    /* Engine handlers whose slots the code of `arm_x_loadstipple` loads, in
     * order: `mgesi_XPolygonStippleDownload`. Read at arm1.u
     * arm_x_loadstipple 0x0c035bec; ge.u mgesi_XPolygonStippleDownload. */

    /* `HP_X_LOADSTIPPLE` (0x13c). Established: A slot of 32 or more prints
     * 'bogus index'; a nonnegative slot sends the saved size and the slot's
     * ERAM address (0x184 + 32 x slot) to mgesi_XPolygonStippleDownload and
     * enables stippling; a negative value only disables it. Payload 1:
     * stipple cache slot 0-31, or a negative number to turn stippling off.
     * Established: the token map runs `arm_x_loadstipple` at arm1.u
     * 0x0c035bec. Sent by kona.so (X module) kon_loadStipple,
     * kon_loadTilePlane, kon_unloadStipple (sends -1),
     * konPolyFillRectStippledC, konPolyFillRectTiledCAccel; stores the first
     * payload word at the FIFO pointer + 32 x token and the rest at offset 0. */
    KONA_HP_X_LOADSTIPPLE                = 0x13c,

    /* Engine handlers whose slots the code of `arm_x_storestipple` loads, in
     * order: `mgeb_LoadEram`. Read at arm1.u arm_x_storestipple 0x0c035adc;
     * ge.u mgeb_LoadEram. */

    /* `HP_X_STORESTIPPLE` (0x13d). Inferred: Rejects slots outside 0-31,
     * records half the width and half the height minus one for the slot, then
     * loads the 32 pattern words into ERAM at 0x184 + 32 x slot and a 12-word
     * slot descriptor at 12 x slot + 4 through mgeb_LoadEram. Payload 3 +
     * pattern words (slot, width, height-or-count, then that many pattern
     * words): stipple slot, pattern width, pattern word count, then the
     * pattern words. Established: the token map runs `arm_x_storestipple` at
     * arm1.u 0x0c035adc. Sent by kona.so (X module) kon_loadCachedStipple;
     * stores the first payload word at the FIFO pointer + 32 x token and the
     * rest at offset 0. */
    KONA_HP_X_STORESTIPPLE               = 0x13d,

    /* Engine handlers whose slots the code of `arm_x_rotatestipple` loads, in
     * order: `mgeb_XPolygonStippleRotate`. Read at arm1.u arm_x_rotatestipple
     * 0x0c035cb0; ge.u mgeb_XPolygonStippleRotate. */

    /* `HP_X_ROTATESTIPPLE` (0x13e). Established: Sends the two origin values,
     * the slot's 12-word descriptor address and its pattern address to
     * mgeb_XPolygonStippleRotate, which rotates the stored pattern in engine
     * memory. Payload 3: stipple slot, x origin, y origin. Established: the
     * token map runs `arm_x_rotatestipple` at arm1.u 0x0c035cb0. Sent by
     * kona.so (X module) kon_loadStipple, kon_loadTilePlane,
     * konPolyFillRectStippledC, konPolyFillRectTiledCAccel; stores the first
     * payload word at the FIFO pointer + 32 x token and the rest at offset 0. */
    KONA_HP_X_ROTATESTIPPLE              = 0x13e,

    /* Read at arm1.u static map record 0x0c000b5c; arm_badcmd 0x0c0017f4; kpm
     * name record 0x100bad34. */

    /* `HP_X_UNUSED4` (0x13f). Established: A hole after the stipple tokens.
     * Its two-word record in the arm1.u static map (0x0c000b5c, handler word
     * 0x0c000b60) points at `arm_badcmd`, so a pipe that receives it prints
     * the token pair and 100 following words and then hangs reading the FIFO;
     * init_hip writes the same 0xc0017f40 to hardware map word 0x4004fc. The
     * X module would store it at FIFO offset 0x27e0 (32 x token), and that
     * value appears nowhere in kon.s; libGLcore and the kernel never send it
     * either. */
    KONA_HP_X_UNUSED4                    = 0x13f,

    /* Read at arm1.u static map record 0x0c000b64; arm_badcmd 0x0c0017f4;
     * kon.s ori 0x2800 sites (three, each after and -14337); kpm name record
     * 0x100bad38. */

    /* `HP_X_UNUSED5` (0x140). Established: Unassigned, the last slot before
     * HP_X_DATA1. The static record at 0x0c000b64 (handler word 0x0c000b68)
     * routes it to `arm_badcmd`, whose error print and endless FIFO read
     * leave the pipe hung; hardware map word 0x400500 holds 0xc0017f40 after
     * init_hip. Its FIFO offset in the X module would be 0x2800; kon.s does
     * use 0x2800 three times, but each is an ori that sets bits 11 and 13
     * after an and with -14337 has cleared bits 11-13, a three-bit field
     * value stored back through the stack or a structure pointer, never
     * through the FIFO pointer. No sender exists in libGLcore or the kernel. */
    KONA_HP_X_UNUSED5                    = 0x140,

    /* Read at icu_map.tsv 0x141; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA1` (0x141). Inferred: Map entry 0x58400041: pass form,
     * command 128, count 1, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 1: 1 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400041: command 128, count field 1 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konBresD, konLineSS, konPolyPoint,
     * konBresS, konDrawPoints; the first payload word is stored at FIFO
     * pointer + 0x2820 (32 x token), the rest at +0. */
    KONA_HP_X_DATA1                      = 0x141,

    /* Read at icu_map.tsv 0x142; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA2` (0x142). Inferred: Map entry 0x58400081: pass form,
     * command 128, count 2, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 2: 2 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400081: command 128, count field 2 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konBresD, konLineSS, konPolyPoint,
     * konBresS, konDrawPoints, konValidateClip,
     * konDrawSolidRects, konSolidFillRects, konTiledCAccelFillRects,
     * konPolyFillRect* and others (14 functions); the first payload word is
     * stored at FIFO pointer + 0x2840 (32 x token), the rest at +0. */
    KONA_HP_X_DATA2                      = 0x142,

    /* Read at icu_map.tsv 0x143; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA3` (0x143). Inferred: Map entry 0x584000c1: pass form,
     * command 128, count 3, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 3: 3 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x584000c1: command 128, count field 3 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konBresD, konLineSS, konPolyPoint,
     * konBresS, konDrawPoints; the first payload word is stored at FIFO
     * pointer + 0x2860 (32 x token), the rest at +0. */
    KONA_HP_X_DATA3                      = 0x143,

    /* Read at icu_map.tsv 0x144; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA4` (0x144). Inferred: Map entry 0x58400101: pass form,
     * command 128, count 4, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 4: 4 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400101: command 128, count field 4 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) the same 14 functions as X_DATA2; the first
     * payload word is stored at FIFO pointer + 0x2880 (32 x token), the rest
     * at +0. */
    KONA_HP_X_DATA4                      = 0x144,

    /* Read at icu_map.tsv 0x145 vs 0x144; docs/opengl.md; kona.so
     * kon_loadClipRects. */

    /* `HP_X_BDATA4` (0x145). Inferred: Map entry 0x58401101: pass form,
     * command 128, count 4, 32-bit words. Same command (128) as X_DATA4; the
     * only difference in the map word is entry bit 12 (0x58401101 vs
     * 0x58400101). The words continue the clip list started by X_LOADCLIP.
     * Payload 4: four words: one clip rectangle x1, y1, x2,
     * y2 (rectangles 2..n of an X_LOADCLIP list). Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x58401101:
     * command 128, count field 4 (bits 6-10, 0 read as 32), single floats.
     * Sent by kona.so (X module, ddx/asm/kona/kon/kon.s) kon_loadClipRects,
     * konPolyFillRectSolid, konPolyFillRectStippledC,
     * konPolyFillRectTiledCAccel; the first payload word is stored at FIFO
     * pointer + 0x28a0 (32 x token), the rest at +0. */
    KONA_HP_X_BDATA4                     = 0x145,

    /* Read at icu_map.tsv 0x146; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA5` (0x146). Inferred: Map entry 0x58400141: pass form,
     * command 128, count 5, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 5: 5 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400141: command 128, count field 5 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konBresD, konLineSS, konPolyPoint,
     * konBresS, konDrawPoints; the first payload word is stored at FIFO
     * pointer + 0x28c0 (32 x token), the rest at +0. */
    KONA_HP_X_DATA5                      = 0x146,

    /* Read at icu_map.tsv 0x147; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA6` (0x147). Inferred: Map entry 0x58400181: pass form,
     * command 128, count 6, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 6: 6 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400181: command 128, count field 6 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) 13 functions: the point and line routines plus
     * the rectangle fill routines; the first payload word is stored at FIFO
     * pointer + 0x28e0 (32 x token), the rest at +0. */
    KONA_HP_X_DATA6                      = 0x147,

    /* Read at icu_map.tsv 0x148; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA7` (0x148). Inferred: Map entry 0x584001c1: pass form,
     * command 128, count 7, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 7: 7 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x584001c1: command 128, count field 7 (bits
     * 6-10, 0 read as 32), single floats. No sender found: no store at
     * pointer + 0x2900 in kona.so (ddx/asm/kona, all groups), libGLcore,
     * kernel objects or irsaudit. */
    KONA_HP_X_DATA7                      = 0x148,

    /* Read at icu_map.tsv 0x149; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA8` (0x149). Inferred: map entry 0x58400201 is a pass-form
     * word for command 128 (index 0, qualifier 2) with count field 8 and
     * 32-bit words. The eight payload words are four corner pairs, which only
     * the rectangle fill routines send: the X module's eight rectangle
     * routines (konDrawSolidRects, konSolidFillRects, konTiledCAccelFillRects,
     * konPolyFillRect*, konStippledCFillRects, konValidateClip) each store
     * their first word at FIFO pointer + 0x2920 (32 x 0x149) and the rest at
     * +0. The handler bound at index 0, mgesi_BshRegisterWrite, reads words
     * 0 to 2 only. B[128] at 0x226 (qstrip.s:22) is the quad-strip class
     * entry, not a program for this command. No table names the unit that
     * holds words 3 to 7. Routes tried: hw_route.tsv, ged_route.tsv, ged.md,
     * the handler listings and the X module senders. The map word and count
     * are read from the token table (arm1.u entry 0x58400201, bits 6-10 = 8,
     * with 0 read as 32). The store offset comes from the earlier X module
     * note; the stores were not re-read for this entry. */
    KONA_HP_X_DATA8                      = 0x149,

    /* Read at icu_map.tsv 0x14a; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA9` (0x14a). Inferred: Map entry 0x58400241: pass form,
     * command 128, count 9, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 9: 9 word(s) of the
     * first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400241: command 128, count field 9 (bits
     * 6-10, 0 read as 32), single floats. No sender found: no store at
     * pointer + 0x2940 in kona.so (ddx/asm/kona, all groups), libGLcore,
     * kernel objects or irsaudit. */
    KONA_HP_X_DATA9                      = 0x14a,

    /* Read at icu_map.tsv 0x14b; hw_route.tsv; ged.md how an entry is chosen;
     * ge_handlers.md mgesi_BshRegisterWrite (words 0-2); docs/opengl.md
     * remainder rule. */

    /* `HP_X_DATA10` (0x14b). Inferred: Map entry 0x58400281: pass form,
     * command 128, count 10, 32-bit words. Command 128 is index 0 (qualifier
     * 2). The words are held for the following X drawing command (the
     * remainder rule). Neither table names their consumer: the handler bound
     * at index 0, mgesi_BshRegisterWrite, reads only words 0-2; and B[128]
     * (0x226, qstrip.s:22) is the quad-strip class entry of ged.md's layout,
     * not a program for this command. Which unit holds the words is unknown:
     * no shipped software or published source depends on it beyond the count
     * and order; routes tried: hw_route.tsv, ged_route.tsv, ged.md, the
     * handler listings and the X module senders. Payload 10: 10 word(s) of
     * the first items of a remainder list: points (one word each) or
     * rectangle/box corners (two words each), preloading the next X drawing
     * command. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x58400281: command 128, count field 10 (bits
     * 6-10, 0 read as 32), single floats. Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) the same 8 rectangle routines as X_DATA8; the
     * first payload word is stored at FIFO pointer + 0x2960 (32 x token), the
     * rest at +0. */
    KONA_HP_X_DATA10                     = 0x14b,

    /* Read at icu_map.tsv 0x14c; ged_bound_table.tsv idx 42; ge.u xentry.S
     * mgesi_XPoint (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_POINT` (0x14c). Inferred: Map entry 0x58554841: pass form,
     * command 170, count 1, 32-bit words. Command 170 selects index 42,
     * mgesi_XPoint. Operands are absolute coordinates: the handler branches
     * to mAbsX, which dispatches to the clipped draw routine for points,
     * lines or rectangles (mmo_XclipDrawPoints/Lines/Rects) and draws inside
     * the clip list. Draws point(s) in the foreground colour. Payload 1: one
     * point: X DDXPointRec word, x in the high half, y in the low.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x58554841: command 170, count field 1 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XPoint` (index 42 of
     * the handler table). Sent by kona.so (X module, ddx/asm/kona/kon/kon.s)
     * konPolyPoint, konDrawPoints, konBresS,
     * konBresD, konSlowLineSS; the first payload word is stored at FIFO
     * pointer + 0x2980 (32 x token), the rest at +0. */
    KONA_HP_X_POINT                      = 0x14c,

    /* Read at icu_map.tsv 0x14d; ged_bound_table.tsv idx 42; ge.u xentry.S
     * mgesi_XPoint (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_POINT6` (0x14d). Inferred: Map entry 0x58554981: pass form,
     * command 170, count 6, 32-bit words. Command 170 selects index 42,
     * mgesi_XPoint. Operands are absolute coordinates: the handler branches
     * to mAbsX, which dispatches to the clipped draw routine for points,
     * lines or rectangles (mmo_XclipDrawPoints/Lines/Rects) and draws inside
     * the clip list. Payload 6: six point words. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x58554981:
     * command 170, count field 6 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgesi_XPoint` (index 42 of the handler table). Sent by
     * kona.so (X module, ddx/asm/kona/kon/kon.s) konPolyPoint, konDrawPoints,
     * konBresS, konBresD; the first payload word is stored at FIFO pointer +
     * 0x29a0 (32 x token), the rest at +0. */
    KONA_HP_X_POINT6                     = 0x14d,

    /* Read at icu_map.tsv 0x14e; ged_bound_table.tsv idx 42; ge.u xentry.S
     * mgesi_XPoint (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_POINT24` (0x14e). Inferred: Map entry 0x58554e01: pass form,
     * command 170, count 24, 32-bit words. Command 170 selects index 42,
     * mgesi_XPoint. Operands are absolute coordinates: the handler branches
     * to mAbsX, which dispatches to the clipped draw routine for points,
     * lines or rectangles (mmo_XclipDrawPoints/Lines/Rects) and draws inside
     * the clip list. Payload 24: 24 point words. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x58554e01:
     * command 170, count field 24 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgesi_XPoint` (index 42 of the handler table). Sent by
     * kona.so (X module, ddx/asm/kona/kon/kon.s) konPolyPoint, konDrawPoints,
     * konBresS, konBresD; the first payload word is stored at FIFO pointer +
     * 0x29c0 (32 x token), the rest at +0. */
    KONA_HP_X_POINT24                    = 0x14e,

    /* Read at icu_map.tsv 0x14f; ged_bound_table.tsv idx 43; ge.u xentry.S
     * mgesi_XPointRel (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_POINT_R` (0x14f). Inferred: Map entry 0x5855c841: pass form,
     * command 171, count 1, 32-bit words. Command 171 selects index 43,
     * mgesi_XPointRel. Operands are relative to the previous point: the
     * handler branches to mRelX, which accumulates the offsets and dispatches
     * to the clipped points or lines routine. Payload 1: one point word,
     * relative to the previous point. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x5855c841: command
     * 171, count field 1 (bits 6-10, 0 read as 32), single floats; engine
     * handler `mgesi_XPointRel` (index 43 of the handler table). Sent by
     * kona.so (X module, ddx/asm/kona/kon/kon.s) konPolyPoint
     * (CoordModePrevious); the first payload word is stored at FIFO pointer +
     * 0x29e0 (32 x token), the rest at +0. */
    KONA_HP_X_POINT_R                    = 0x14f,

    /* Read at icu_map.tsv 0x150; ged_bound_table.tsv idx 43; ge.u xentry.S
     * mgesi_XPointRel (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_POINT6_R` (0x150). Inferred: Map entry 0x5855c981: pass form,
     * command 171, count 6, 32-bit words. Command 171 selects index 43,
     * mgesi_XPointRel. Operands are relative to the previous point: the
     * handler branches to mRelX, which accumulates the offsets and dispatches
     * to the clipped points or lines routine. Payload 6: six point words,
     * each relative to the previous. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x5855c981: command
     * 171, count field 6 (bits 6-10, 0 read as 32), single floats; engine
     * handler `mgesi_XPointRel` (index 43 of the handler table). Sent by
     * kona.so (X module, ddx/asm/kona/kon/kon.s) konPolyPoint
     * (CoordModePrevious); the first payload word is stored at FIFO pointer +
     * 0x2a00 (32 x token), the rest at +0. */
    KONA_HP_X_POINT6_R                   = 0x150,

    /* Read at icu_map.tsv 0x151; ged_bound_table.tsv idx 43; ge.u xentry.S
     * mgesi_XPointRel (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_POINT24_R` (0x151). Inferred: Map entry 0x5855ce01: pass form,
     * command 171, count 24, 32-bit words. Command 171 selects index 43,
     * mgesi_XPointRel. Operands are relative to the previous point: the
     * handler branches to mRelX, which accumulates the offsets and dispatches
     * to the clipped points or lines routine. Payload 24: 24 point words,
     * each relative to the previous. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x5855ce01: command
     * 171, count field 24 (bits 6-10, 0 read as 32), single floats; engine
     * handler `mgesi_XPointRel` (index 43 of the handler table). No sender
     * found: no store at pointer + 0x2a20 in kona.so, libGLcore, kernel,
     * irsaudit. */
    KONA_HP_X_POINT24_R                  = 0x151,

    /* Read at icu_map.tsv 0x152; ged_bound_table.tsv idx 44; ge.u xentry.S
     * mgesi_XRect (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_RECT` (0x152). Inferred: Map entry 0x58564881: pass form, command
     * 172, count 2, 32-bit words. Command 172 selects index 44, mgesi_XRect.
     * Operands are rectangles (x, y then width, height): the handler branches
     * straight to mmo_XclipDrawRects, which fills them clipped to the clip
     * list. Payload 2: one rectangle: (x, y) then (width, height).
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x58564881: command 172, count field 2 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XRect` (index 44 of
     * the handler table). Sent by kona.so (X module, ddx/asm/kona/kon/kon.s)
     * konPolyFillRectSolid, konPolyFillRectStippledC,
     * konPolyFillRectTiledCAccel; the first payload word is stored at FIFO
     * pointer + 0x2a40 (32 x token), the rest at +0. */
    KONA_HP_X_RECT                       = 0x152,

    /* Read at icu_map.tsv 0x153; ged_bound_table.tsv idx 44; ge.u xentry.S
     * mgesi_XRect (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_RECT6` (0x153). Inferred: Map entry 0x58564b01: pass form,
     * command 172, count 12, 32-bit words. Command 172 selects index 44,
     * mgesi_XRect. Operands are rectangles (x, y then width, height): the
     * handler branches straight to mmo_XclipDrawRects, which fills them
     * clipped to the clip list. Payload 12: six rectangles, two words each.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x58564b01: command 172, count field 12 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XRect` (index 44 of
     * the handler table). Sent by kona.so (X module, ddx/asm/kona/kon/kon.s)
     * konPolyFillRectSolid, konPolyFillRectStippledC,
     * konPolyFillRectTiledCAccel; the first payload word is stored at FIFO
     * pointer + 0x2a60 (32 x token), the rest at +0. */
    KONA_HP_X_RECT6                      = 0x153,

    /* Read at icu_map.tsv 0x154; ged_bound_table.tsv idx 45; ge.u xentry.S
     * mgesi_XBox (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_BOX` (0x154). Inferred: Map entry 0x5856c881: pass form, command
     * 173, count 2, 32-bit words. Command 173 selects index 45, mgesi_XBox.
     * Operands are boxes given by two corners (x1, y1) and (x2,
     * y2); the handler branches to mAbsX, whose rectangle path draws the box
     * clipped to the clip list. Payload 2: one box: (x1, y1) then (x2,
     * y2) halfword pairs. Established: routed by the host interface with no
     * ARM code, arm1.u token-map entry 0x5856c881: command 173, count field 2
     * (bits 6-10, 0 read as 32), single floats; engine handler `mgesi_XBox`
     * (index 45 of the handler table). Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konDrawSolidRects, konSolidFillRects,
     * konTiledCAccelFillRects, konValidateClip, konStippledCFillRects, glyph
     * routines, konSlowSegmentSS, konSlowLineSS; the first payload word is
     * stored at FIFO pointer + 0x2a80 (32 x token), the rest at +0. */
    KONA_HP_X_BOX                        = 0x154,

    /* Read at icu_map.tsv 0x155; ged_bound_table.tsv idx 45; ge.u xentry.S
     * mgesi_XBox (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_BOX6` (0x155). Inferred: Map entry 0x5856cb01: pass form, command
     * 173, count 12, 32-bit words. Command 173 selects index 45, mgesi_XBox.
     * Operands are boxes given by two corners (x1, y1) and (x2,
     * y2); the handler branches to mAbsX, whose rectangle path draws the box
     * clipped to the clip list. Payload 12: six boxes, two words each.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x5856cb01: command 173, count field 12 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XBox` (index 45 of
     * the handler table). Sent by kona.so (X module, ddx/asm/kona/kon/kon.s)
     * konDrawSolidRects, konSolidFillRects, konTiledCAccelFillRects,
     * konValidateClip, konStippledCFillRects; the first payload word is
     * stored at FIFO pointer + 0x2aa0 (32 x token), the rest at +0. */
    KONA_HP_X_BOX6                       = 0x155,

    /* Read at icu_map.tsv 0x156; ged_bound_table.tsv idx 46; ge.u xentry.S
     * mgesi_XSpans (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_SPANS` (0x156). Inferred: Map entry 0x585748c1: pass form,
     * command 174, count 3, 32-bit words. Command 174 selects index 46,
     * mgesi_XSpans. Operands are a span count and then per span a start point
     * word and a width word; mgesi_XSpans converts each span to a rectangle
     * and calls mmo_XclipDrawRects. Payload 3: span count (1), then one start
     * point word and one width word. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x585748c1: command
     * 174, count field 3 (bits 6-10, 0 read as 32), single floats; engine
     * handler `mgesi_XSpans` (index 46 of the handler table). Sent by kona.so
     * (X module, ddx/asm/kona/kon/kon.s) konFillSpansSolid,
     * konFillSpansStippledC, konFillSpansTiledCAccel, konSolidFS,
     * konPolyGlyphBltSolidTE16; the first payload word is stored at FIFO
     * pointer + 0x2ac0 (32 x token), the rest at +0. */
    KONA_HP_X_SPANS                      = 0x156,

    /* Read at icu_map.tsv 0x157; ged_bound_table.tsv idx 46; ge.u xentry.S
     * mgesi_XSpans (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_SPANS2` (0x157). Inferred: Map entry 0x58574941: pass form,
     * command 174, count 5, 32-bit words. Command 174 selects index 46,
     * mgesi_XSpans. Operands are a span count and then per span a start point
     * word and a width word; mgesi_XSpans converts each span to a rectangle
     * and calls mmo_XclipDrawRects. Payload 5: span count (2), then two spans
     * of start point and width. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x58574941: command 174, count
     * field 5 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgesi_XSpans` (index 46 of the handler table). Sent by kona.so (X
     * module, ddx/asm/kona/kon/kon.s) konFillSpansSolid,
     * konFillSpansStippledC, konFillSpansTiledCAccel, konSolidFS; the first
     * payload word is stored at FIFO pointer + 0x2ae0 (32 x token), the rest
     * at +0. */
    KONA_HP_X_SPANS2                     = 0x157,

    /* Read at icu_map.tsv 0x158; ged_bound_table.tsv idx 46; ge.u xentry.S
     * mgesi_XSpans (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_SPANS6` (0x158). Inferred: Map entry 0x58574b41: pass form,
     * command 174, count 13, 32-bit words. Command 174 selects index 46,
     * mgesi_XSpans. Operands are a span count and then per span a start point
     * word and a width word; mgesi_XSpans converts each span to a rectangle
     * and calls mmo_XclipDrawRects. Payload 13: span count (6), then six
     * spans of start point and width. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x58574b41: command
     * 174, count field 13 (bits 6-10, 0 read as 32), single floats; engine
     * handler `mgesi_XSpans` (index 46 of the handler table). Sent by kona.so
     * (X module, ddx/asm/kona/kon/kon.s) konFillSpansSolid,
     * konFillSpansStippledC, konFillSpansTiledCAccel, konSolidFS; the first
     * payload word is stored at FIFO pointer + 0x2b00 (32 x token), the rest
     * at +0. */
    KONA_HP_X_SPANS6                     = 0x158,

    /* Read at icu_map.tsv 0x159; ged_bound_table.tsv idx 47; ge.u xentry.S
     * mgesi_XSegment (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_SEGMENT` (0x159). Inferred: Map entry 0x5857c881: pass form,
     * command 175, count 2, 32-bit words. Command 175 selects index 47,
     * mgesi_XSegment. Operands are line segments, two point words each; the
     * handler branches to mAbsX, whose line path (mmo_XclipDrawLines) draws
     * them clipped. Payload 2: one segment: two point words (start, end).
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x5857c881: command 175, count field 2 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XSegment` (index 47
     * of the handler table). Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konSegmentSS, konSolidZeroSeg (one X_SEGMENT
     * per segment); the first payload word is stored at FIFO pointer + 0x2b20
     * (32 x token), the rest at +0. */
    KONA_HP_X_SEGMENT                    = 0x159,

    /* Read at icu_map.tsv 0x15a; ged_bound_table.tsv idx 47; ge.u xentry.S
     * mgesi_XSegment (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_SEGMENT6` (0x15a). Inferred: Map entry 0x5857cb01: pass form,
     * command 175, count 12, 32-bit words. Command 175 selects index 47,
     * mgesi_XSegment. Operands are line segments, two point words each; the
     * handler branches to mAbsX, whose line path (mmo_XclipDrawLines) draws
     * them clipped. Payload 12: six segments, two point words each.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x5857cb01: command 175, count field 12 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XSegment` (index 47
     * of the handler table). No sender found: no store at pointer + 0x2b40 in
     * kona.so, libGLcore, kernel, irsaudit. */
    KONA_HP_X_SEGMENT6                   = 0x15a,

    /* Read at icu_map.tsv 0x15b; ged_bound_table.tsv idx 48; ge.u xentry.S
     * mgesi_XLine (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_LINE` (0x15b). Inferred: Map entry 0x58584881: pass form, command
     * 176, count 2, 32-bit words. Command 176 selects index 48, mgesi_XLine.
     * Operands are the points of a polyline; mgesi_XLine branches to mAbsX,
     * whose line path draws the connected segments clipped. Consecutive
     * commands share their end point. Payload 2: a two-point polyline: first
     * point at the token address, one more point word. Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0x58584881:
     * command 176, count field 2 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgesi_XLine` (index 48 of the handler table). Sent by
     * kona.so (X module, ddx/asm/kona/kon/kon.s) konLineSS; the first payload
     * word is stored at FIFO pointer + 0x2b60 (32 x token), the rest at +0. */
    KONA_HP_X_LINE                       = 0x15b,

    /* Read at icu_map.tsv 0x15c; ged_bound_table.tsv idx 48; ge.u xentry.S
     * mgesi_XLine (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_LINE6` (0x15c). Inferred: Map entry 0x58584b01: pass form,
     * command 176, count 12, 32-bit words. Command 176 selects index 48,
     * mgesi_XLine. Operands are the points of a polyline; mgesi_XLine
     * branches to mAbsX, whose line path draws the connected segments
     * clipped. Consecutive commands share their end point. Payload 7 sent
     * (map count 12): six segments as seven points: the first at the token
     * address, six more through the six-word copy helper. Established: routed
     * by the host interface with no ARM code, arm1.u token-map entry
     * 0x58584b01: command 176, count field 12 (bits 6-10, 0 read as 32),
     * single floats; engine handler `mgesi_XLine` (index 48 of the handler
     * table). Sent by kona.so (X module, ddx/asm/kona/kon/kon.s) konLineSS;
     * the first payload word is stored at FIFO pointer + 0x2b80 (32 x token),
     * the rest at +0. */
    KONA_HP_X_LINE6                      = 0x15c,

    /* Read at icu_map.tsv 0x15d; ged_bound_table.tsv idx 49; ge.u xentry.S
     * mgesi_XLineRel (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_LINE_R` (0x15d). Inferred: Map entry 0x5858c881: pass form,
     * command 177, count 2, 32-bit words. Command 177 selects index 49,
     * mgesi_XLineRel. Like X_LINE but each point is relative to the previous
     * one, so the handler branches to mRelX and draws via the lines routine.
     * Payload 2: a two-point relative polyline. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x5858c881:
     * command 177, count field 2 (bits 6-10, 0 read as 32), single floats;
     * engine handler `mgesi_XLineRel` (index 49 of the handler table). Sent
     * by kona.so (X module, ddx/asm/kona/kon/kon.s) konLineSS
     * (CoordModePrevious); the first payload word is stored at FIFO pointer +
     * 0x2ba0 (32 x token), the rest at +0. */
    KONA_HP_X_LINE_R                     = 0x15d,

    /* Read at icu_map.tsv 0x15e; ged_bound_table.tsv idx 49; ge.u xentry.S
     * mgesi_XLineRel (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_LINE6_R` (0x15e). Inferred: Map entry 0x5858cb01: pass form,
     * command 177, count 12, 32-bit words. Command 177 selects index 49,
     * mgesi_XLineRel. Like X_LINE but each point is relative to the previous
     * one, so the handler branches to mRelX and draws via the lines routine.
     * Payload 7 sent (map count 12): six relative segments as seven points.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x5858cb01: command 177, count field 12 (bits 6-10, 0
     * read as 32), single floats; engine handler `mgesi_XLineRel` (index 49
     * of the handler table). Sent by kona.so (X module,
     * ddx/asm/kona/kon/kon.s) konLineSS (CoordModePrevious); the first
     * payload word is stored at FIFO pointer + 0x2bc0 (32 x token), the rest
     * at +0. */
    KONA_HP_X_LINE6_R                    = 0x15e,

    /* Read at icu_map.tsv 0x15f; ged_bound_table.tsv idx 50; ge.u xentry.S
     * mgesi_XBgPoint (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_BGPOINT` (0x15f). Inferred: Map entry 0x58594841: pass form,
     * command 178, count 1, 32-bit words. Command 178 selects index 50,
     * mgesi_XBgPoint. Draws points in the background colour (the odd dashes
     * of a double-dashed line); the handler branches to mAbsX like X_POINT.
     * Payload 1: one point word. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x58594841: command 178, count
     * field 1 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgesi_XBgPoint` (index 50 of the handler table). Sent by kona.so (X
     * module, ddx/asm/kona/kon/kon.s) konBresD; the first payload word is
     * stored at FIFO pointer + 0x2be0 (32 x token), the rest at +0. */
    KONA_HP_X_BGPOINT                    = 0x15f,

    /* Read at icu_map.tsv 0x160; ged_bound_table.tsv idx 50; ge.u xentry.S
     * mgesi_XBgPoint (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_BGPOINT6` (0x160). Inferred: Map entry 0x58594981: pass form,
     * command 178, count 6, 32-bit words. Command 178 selects index 50,
     * mgesi_XBgPoint. Draws points in the background colour (the odd dashes
     * of a double-dashed line); the handler branches to mAbsX like X_POINT.
     * Payload 6: six point words. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x58594981: command 178, count
     * field 6 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgesi_XBgPoint` (index 50 of the handler table). Sent by kona.so (X
     * module, ddx/asm/kona/kon/kon.s) konBresD; the first payload word is
     * stored at FIFO pointer + 0x2c00 (32 x token), the rest at +0. */
    KONA_HP_X_BGPOINT6                   = 0x160,

    /* Read at icu_map.tsv 0x161; ged_bound_table.tsv idx 50; ge.u xentry.S
     * mgesi_XBgPoint (transfers in ge_listing/xentry.S.lst). */

    /* `HP_X_BGPOINT24` (0x161). Inferred: Map entry 0x58594e01: pass form,
     * command 178, count 24, 32-bit words. Command 178 selects index 50,
     * mgesi_XBgPoint. Draws points in the background colour (the odd dashes
     * of a double-dashed line); the handler branches to mAbsX like X_POINT.
     * Payload 24: 24 point words. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x58594e01: command 178, count
     * field 24 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgesi_XBgPoint` (index 50 of the handler table). Sent by kona.so (X
     * module, ddx/asm/kona/kon/kon.s) konBresD; the first payload word is
     * stored at FIFO pointer + 0x2c20 (32 x token), the rest at +0. */
    KONA_HP_X_BGPOINT24                  = 0x161,

    /* Read at arm1.u static map record 0x0c000bf0; arm_badcmd 0x0c0017f4; kpm
     * name record 0x100badc0. */

    /* `HP_X_UNUSED6` (0x162). Established: First of four unused numbers after
     * HP_X_BGPOINT24. The firmware's static record at 0x0c000bf0 gives
     * `arm_badcmd` as handler (word 0x0c000bf4), and init_hip copies
     * 0xc0017f40 into hardware map word 0x400588, so the pipe would report
     * the token and freeze in the error loop. No program stores 0x162: the X
     * module offset 0x2c40 that would carry it does not occur in kon.s, and
     * the libGLcore and kernel scans find no such store. */
    KONA_HP_X_UNUSED6                    = 0x162,

    /* Read at arm1.u static map record 0x0c000bf8, handler word 0x0c000bfc;
     * arm_badcmd 0x0c0017f4; kpm name record 0x100badc4. */

    /* `HP_X_UNUSED7` (0x163). Established: Second of the four unused numbers;
     * hardware map word 0x40058c gets 0xc0017f40 from the static record at
     * 0x0c000bf8, so `arm_badcmd` runs if it ever arrives: two lines of
     * diagnostics, a hundred data words, then a read loop that never returns.
     * The would-be X module FIFO offset 0x2c60 is absent from kon.s, and
     * neither the GL library nor the kernel issues it. */
    KONA_HP_X_UNUSED7                    = 0x163,

    /* Read at arm1.u static map record 0x0c000c00; arm_badcmd 0x0c0017f4;
     * kon.s addiu 11392 on _rodata before a call; kpm name record 0x100badc8. */

    /* `HP_X_UNUSED8` (0x164). Established: Third of the four, map word
     * 0x400590 and static record 0x0c000c00, whose handler word 0x0c000c04 is
     * `arm_badcmd`: the pipe would print an error and stall. The X module has
     * one constant equal to its FIFO offset, 11392 (0x2c80), but that is an
     * offset into read-only strings passed as the first argument of a call;
     * no store goes through the FIFO pointer at that offset, and libGLcore
     * and the kernel contain none. */
    KONA_HP_X_UNUSED8                    = 0x164,

    /* Read at arm1.u static map record 0x0c000c08; arm_badcmd 0x0c0017f4; kpm
     * name record 0x100badcc. */

    /* `HP_X_UNUSED9` (0x165). Established: Last unused X number, just below
     * HP_DPLEX_SWAP. Static record 0x0c000c08 binds it to `arm_badcmd`
     * through handler word 0x0c000c0c, so hardware map word 0x400594 holds
     * 0xc0017f40; the ARM would log the token and spin reading the FIFO.
     * kon.s never forms 0x2ca0, its FIFO offset, and the GL library and
     * kernel have no sender. */
    KONA_HP_X_UNUSED9                    = 0x165,

    /* Engine handlers whose slots the code of `arm_dplex_swap` loads, in
     * order: `mgesi_VCbusWrite`. Read at arm1.u arm_dplex_swap 0x0c013ef4;
     * ge.u mgesi_VCbusWrite. */

    /* `HP_DPLEX_SWAP` (0x166). Established: Requires the privileged stream
     * (bit 2 of 0x200060) else prints a violation and runs arm_badcmd. Writes
     * the word to display-bus address 0xe500 through engine VCbusWrite (slot
     * 251). Payload 1: swap value for the multi-pipe (DPLEX) display option.
     * Established: the token map runs `arm_dplex_swap` at arm1.u 0x0c013ef4.
     * Sent by kona.a(kona_video.o) KONAschedswapbuf (payload 1). */
    KONA_HP_DPLEX_SWAP                   = 0x166,

    /* Read at arm1.u arm_usercopylist_ldma 0x0c014ec4-0x0c014f84. */

    /* `HP_USERCOPYLIST_LDMA` (0x167). Established: Input DMA of the length
     * from the host pool (0x200010/14/18, start 0x20001c=0xbeefface) into the
     * FIFO while the list DMA (0x200030 = list base + address | 0x4000000,
     * count length rounded to 8) copies it into list memory; pass-through
     * counter 0x200058 = words | 0xc000000; sends a pad word 0xf001f001 to
     * port 0x840 when the length is an odd word count; waits for completion.
     * Payload 4: list address, pool offset (page<<12 | offset), byte length,
     * a fourth word read and dropped (libGLcore sends 0). Established: the
     * token map runs `arm_usercopylist_ldma` at arm1.u 0x0c014ec4.
     * Established: libGLcore.so `__glSdramPushIn` stores 4 words after the
     * token. Sent by libGLcore.so __glSdramPushIn (kon_dlist.s) stores token
     * 359, address, offset, length (words*4), 0. */
    KONA_HP_USERCOPYLIST_LDMA            = 0x167,

    /* Engine handlers whose slots the code of `arm_polygonoffset` loads, in
     * order: `mgeb_PolygonOffset`. Read at arm1.u arm_polygonoffset
     * 0x0c016428 (slot 435). */

    /* `HP_POLYGONOFFSET` (0x168). Established: Sends the first word on port
     * 0x478 and the second on 0x840, then starts mgeb_PolygonOffset. Payload
     * 2: Offset factor and units as floats. Established: the token map runs
     * `arm_polygonoffset` at arm1.u 0x0c016428. Established: libGLcore.so
     * `__glkonim_PolygonOffset` stores 2 words after the token. Sent by
     * libGLcore.so __glkonim_PolygonOffset (kon_cfuncs.s). */
    KONA_HP_POLYGONOFFSET                = 0x168,

    /* Read at arm1.u arm_diag_dispatch 0x0c037958 and its targets
     * diag_set_immediat .. diag_ged_deactivate_context
     * (0x0c0379f0-0x0c037d64). */

    /* `HP_DIAG_DISPATCH` (0x169). Inferred: Jumps by the first word to one of
     * twelve diagnostic routines: write or copy an ARM word, load or transfer
     * the distributor table, write a distributor register, set up distributor
     * pixels, send a TBUS_1 command to an engine, select the next engine or
     * deactivate a context; other values print 'Unrecognized diag command'.
     * Payload variable: sub-command 0-11, then its own words: a sub-command
     * number and its arguments. Established: the token map runs
     * `arm_diag_dispatch` at arm1.u 0x0c037958. No sender found: the string
     * table of irsaudit is the likely user (docs/arm1_functions.md) but no
     * call was located; libGLcore, kernel and X module do not send it. */
    KONA_HP_DIAG_DISPATCH                = 0x169,

    /* Read at icu_map.tsv 0x16a; hw_route.tsv; ucode/ged.md pass/register
     * forms. */

    /* `HP_DIAG_RESERVED0` (0x16a). Inferred: Map entry 0x00200061:
     * register/pixel form, command 64, count 1, untyped. Register/pixel form,
     * command 64 (index 0, qualifier 1), no ARM code. ged.md reads its
     * control word as distributor register 1. Payload 1: one word; no sender
     * found. Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0x00200061: command 64, count field 1 (bits
     * 6-10, 0 read as 32), untyped words. No sender found: searched libGLcore
     * asm, kona_kernel disasm, kona.so asm and irsaudit disassembly for token
     * 362 stores; irsaudit hits for 362 are JTAG field numbers. */
    KONA_HP_DIAG_RESERVED0               = 0x16a,

    /* Read at icu_map.tsv 0x16b; hw_route.tsv. */

    /* `HP_DIAG_RESERVED1` (0x16b). Inferred: Map entry 0x00200061:
     * register/pixel form, command 64, count 1, untyped. Identical map entry
     * to HP_DIAG_RESERVED0: register/pixel form, command 64. Payload 1: one
     * word; no sender found. Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0x00200061: command 64, count field
     * 1 (bits 6-10, 0 read as 32), untyped words. No sender found: same
     * search as HP_DIAG_RESERVED0 (token 363). */
    KONA_HP_DIAG_RESERVED1               = 0x16b,

    /* Read at arm1.u arm_copylist_ldma 0x0c014dd8-0x0c014e50. */

    /* `HP_COPYLIST_LDMA` (0x16c). Established: Reads the address, peeks L at
     * r9+0x40, sets list-DMA address 0x200030 = list base (r8+0xce8) +
     * address | 0x4000000, count 0x200034 (L, plus 4 if bit 2 set), source
     * select 0x200048 = 1, pass-through counter 0x200058 = L>>2, waits
     * (waitForDH), writes a zero pad word if bit 2 was set, starts via
     * 0x20004c and polls 0x200040 bit 2, then clears the source select.
     * Payload 2 + n: list address, byte length L, then L/4 words of list data
     * in the stream. Established: the token map runs `arm_copylist_ldma` at
     * arm1.u 0x0c014dd8. Sent by libGLcore.so: no stored constant 364 found
     * in libglcore/asm (searched li 364 in KONA, PIXMAP, kon, dlist); kernel
     * commands.tsv and ddx/asm not matched either. */
    KONA_HP_COPYLIST_LDMA                = 0x16c,

    /* Read at arm1.u arm_execlist_ldma 0x0c014f90. */

    /* `HP_EXECLIST_LDMA` (0x16d). Established: Sets list-DMA address 0x200030
     * = base + address with the top six bits cleared, count 0x200034 =
     * words*4, mode 0x200064 = 2 and clears 0x200038; the list is then played
     * from list memory into the command stream by the hardware, and the
     * handler fetches the next token. Payload 2: list address, length in
     * words. Established: the token map runs `arm_execlist_ldma` at arm1.u
     * 0x0c014f90. Established: libGLcore.so `__glKonExecuteLDMA` stores 2
     * words after the token. Sent by libGLcore.so __glKonExecuteLDMA
     * (kon_dlist.s) stores token 365 and two words. */
    KONA_HP_EXECLIST_LDMA                = 0x16d,

    /* Read at arm1.u arm_execlist_idma 0x0c015058. */

    /* `HP_EXECLIST_IDMA` (0x16e). Established: Prints an out-of-bounds
     * warning if offset + 4*words exceeds the pool length (r8+0xce4) but
     * continues; sets 0x200020 = 2, input-DMA page 0x200010 = pool page +
     * offset>>12, offset 0x200014 = (offset&0xfff) + pool low word, length
     * 0x200018 = bytes, mode 0x200064 = 1, start 0x20001c = 0. Payload 2:
     * pool offset in bytes, length in words. Established: the token map runs
     * `arm_execlist_idma` at arm1.u 0x0c015058. Sent by libGLcore.so
     * __glKonExecuteIDMA (kon_dlist.s) stores token 366. */
    KONA_HP_EXECLIST_IDMA                = 0x16e,

    /* Read at arm1.u arm_movelist_ldma 0x0c01503c; __memmove
     * 0x0c0400e4-0x0c040118 (words checked against the file at offset 0x80 +
     * 0x400e4). */

    /* `HP_MOVELIST_LDMA` (0x16f). Inferred: Adds the list base (r8+0xce8) to
     * both addresses and branches to __memmove (0x0c0400e4) with r0 = word 0,
     * r1 = word 1, r2 = the length. The routine loads with ldmia r0! and
     * stores with stmia r1!, so it copies from word 0 to word 1. Its 16-byte
     * loop (0x0c0400e8-0x0c0400f4) loads four words and subtracts 16 but
     * stores nothing; after the loop it stores two words (0x0c040104) and
     * returns at 0x0c040114, before the str at 0x0c040118. As shipped, then,
     * only 8 bytes reach the destination. Payload 3: word 0: the list address
     * the copy reads from; word 1: the list address it writes to; word 2: a
     * byte length. Established: the token map runs `arm_movelist_ldma` at
     * arm1.u 0x0c01503c. Established: libGLcore.so `__glSdramMemmove` stores
     * 3 words after the token. Sent by libGLcore.so __glSdramMemmove
     * (kon_dlist.s 0x0d94a600) stores token 367, a0, a1, a2 and returns a0
     * (memmove order: destination, source), the reverse of the firmware
     * order. The libGLcore listings (libglcore/asm) hold no call, branch or
     * GOT-resolved load of __glSdramMemmove, and its address appears in
     * libGLcore_n32.so only in debug sections, not as a data word; so no
     * shipped software was found to send the token. */
    KONA_HP_MOVELIST_LDMA                = 0x16f,

    /* Read at arm1.u arm_execlist_ldma_n 0x0c014fc0. */

    /* `HP_EXECLIST_LDMA_N` (0x170). Established: Reads the pairs into a stack
     * buffer, then for each writes list-DMA address 0x200030 (base + address,
     * top bits cleared) and count 0x200034 (words*4), finally sets mode
     * 0x200064 = 2. Payload 1 + 2k: k, then k pairs (address, length in
     * words); at most 8 pairs are buffered. Established: the token map runs
     * `arm_execlist_ldma_n` at arm1.u 0x0c014fc0. Sent by libGLcore.so
     * __glKonExecuteLDMAn (kon_dlist.s) stores token 368. */
    KONA_HP_EXECLIST_LDMA_N              = 0x170,

    /* Read at arm1.u arm_execlist_idma_n 0x0c015164. */

    /* `HP_EXECLIST_IDMA_N` (0x171). Established: Sets 0x200020 = 2, reads the
     * pairs, and for each writes input-DMA page, offset and byte length
     * (0x200010/14/18), then mode 0x200064 = 1 and start 0x20001c = 0. No
     * pool bounds warning here. Payload 1 + 2k: k, then k pairs (pool offset,
     * length in words); at most 4 buffered. Established: the token map runs
     * `arm_execlist_idma_n` at arm1.u 0x0c015164. Sent by libGLcore.so
     * __glKonExecuteIDMAn (kon_dlist.s) stores token 369. */
    KONA_HP_EXECLIST_IDMA_N              = 0x171,

    /* Read at icu_map.tsv 0x172; kona_kernel/commands.tsv; kona_kern.h
     * comment on kona_act_pcx; kona.a kona_context.o KONAvalidateclip. */

    /* `HP_GED_NOP` (0x172). Inferred: Map entry 0x00300071: register/pixel
     * form, command 96, count 1, untyped. Register/pixel form with the
     * data-invalid bit set, command 96, kind 0 (not legal inside begin/end).
     * The kernel puts it at the end of its context, memory and display
     * packets as padding that engines treat as a no-op. Payload 1 (always a
     * zero word): one zero pad word. Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x00300071: command
     * 96, count field 1 (bits 6-10, 0 read as 32), untyped words. Sent by
     * kona.a (kernel): KONAvalidateclip, kona_dmapool, kona_mem_alloc,
     * kona_mem_free, KONAschedswapbuf (kona_kernel/commands.tsv); libGLcore:
     * none found. */
    KONA_HP_GED_NOP                      = 0x172,

    /* Read at arm1.u arm_texsetup 0x0c0364e0 (10 plain reads + r9+0x3c;
     * ResolveTextureInternalFormat 0x0c036424, PixRM_TextureLoadSetup
     * 0x0c036570 with registers 0x7fc1-0x7fc5 and 0x5001). */

    /* `HP_TEXSETUP` (0x173). Inferred: Saves the descriptor fields, resolves
     * the texture internal format and writes the texture-load raster
     * registers (size, position, raster-state and global-offset words)
     * through the register-write descriptor 0x58404800. Payload 11: texture
     * width, height, three words kept on the stack, texture format fields
     * saved into the texture state (five words at texState+0, +8, +0xc,
     * +0x10, +0x14), and the final word. Established: the token map runs
     * `arm_texsetup` at arm1.u 0x0c0364e0. No sender found (searched
     * libGLcore asm in all three ABIs for a store of 371; the neighbouring
     * token 373 (TEXLOAD_SETUP) is likewise unsent). */
    KONA_HP_TEXSETUP                     = 0x173,

    /* Read at arm1.u arm_drawtexels 0x0c02b7a8 (19 plain reads then r9+0x40
     * or r9+0x3c; drawtexels 0x0c02b8cc, ResolveDrawPath, SetupSubtexload). */

    /* `HP_DRAWTEXELS` (0x174). Established: Stores the header in the pixel
     * descriptor and, when the texel format id changes, re-resolves the draw
     * path; sets up the sub-texture load (SetupSubtexload,
     * SetupSubtexloadPos) and sends the texel image to the engines with
     * SendPixelsToPipe, writing it into texture memory. Payload 20: GL target
     * (0xde0 1D, 0xde1 2D), width, height, format code, type code, byte
     * offset, data-by-DMA flag, row mode, first column (0), texel format id,
     * then ten words of load id and texture-memory placement; the image
     * follows when the DMA word is 0. Established: the token map runs
     * `arm_drawtexels` at arm1.u 0x0c02b7a8. Sent by libGLcore.so
     * DoDrawPixelsOrTexels (kon_pixel.s, token 372). */
    KONA_HP_DRAWTEXELS                   = 0x174,

    /* Read at arm1.u arm_texload_setup 0x0c025134. */

    /* `HP_TEXLOAD_SETUP` (0x175). Established: The handler is a single return
     * (mov pc, lr): it reads no payload word and sends nothing to the
     * engines. Payload 0 (hipwc table says 10): nothing read. Established:
     * the token map runs `arm_texload_setup` at arm1.u 0x0c025134. No sender
     * found: no libGLcore, X module or kernel store of 0x175; the sibling
     * TEXLOAD_ID 0x176 is sent by subloadLevel. */
    KONA_HP_TEXLOAD_SETUP                = 0x175,

    /* Read at arm1.u arm_texload_id 0x0c0251fc -> update_texload_id
     * 0x0c025168 (tbus writes 0x5003, 0x1002; tex_cache at 0x0409086c). */

    /* `HP_TEXLOAD_ID` (0x176). Established: Advances the 20-bit texture-load
     * generation number kept at ARM 0x8b8, stores it as the load id of that
     * cache entry and writes it to the raster load-id register 0x5003; on
     * wrap it flushes the old ids and also writes register 0x1002. Payload 1:
     * texture-cache index of the entry the preceding download filled.
     * Established: the token map runs `arm_texload_id` at arm1.u 0x0c0251fc.
     * Sent by libGLcore.so subloadLevel (texture/kon_texture_api.s, token
     * 374), at every exit after the DRAWTEXELS commands. */
    KONA_HP_TEXLOAD_ID                   = 0x176,

    /* Engine handlers whose slots the code of `arm_active_texture` loads, in
     * order: `mgebi_Texture`. Read at arm1.u arm_active_texture 0x0c025204
     * (r9+0x3c; slot 100 mgebi_Texture via r8+0x110;
     * XferMask 0x0c013098). */

    /* `HP_ACTIVE_TEXTURE` (0x177). Established: Keeps the dimension at ARM
     * 0x890, sends the engines a minus-one or zero enable word on port 0x47c,
     * starts the texture handler and then runs XferMask to refresh the
     * transfer mask; later bind commands compare their dimension with it.
     * Payload 1: active texture dimension (0 none, 1, 2 or 3), the highest
     * enabled dimension. Established: the token map runs `arm_active_texture`
     * at arm1.u 0x0c025204. Sent by libGLcore.so computeActiveTarget
     * (texture/kon_texture_api.s, token 375). */
    KONA_HP_ACTIVE_TEXTURE               = 0x177,

    /* Read at arm1.u arm_texbind_id 0x0c0252ec -> update_texbind_id
     * 0x0c025258 (tbus writes 0x1003, 0x5002). */

    /* `HP_TEXBIND_ID` (0x178). Established: Advances the 20-bit texture-bind
     * generation number at ARM 0x8bc, stores it as the draw id of that cache
     * entry and writes it to the raster draw-id register 0x1003; on wrap it
     * flushes the old ids and writes register 0x5002. Payload 1:
     * texture-cache index. Established: the token map runs `arm_texbind_id`
     * at arm1.u 0x0c0252ec. Established: libGLcore.so `updateTexBindID`
     * stores 1 word after the token. Sent by libGLcore.so updateTexBindID
     * (texture/kon_texture_api.s, token 376). */
    KONA_HP_TEXBIND_ID                   = 0x178,

    /* Read at icu_map.tsv 0x179; ged_bound_table.tsv idx 32; ge.u texture.S
     * mgebi_Bind2dMipmapTexture 0x42d3; libGLcore texture/kon_texture_api.s
     * bind2DMipmapTexture 0x0d96a268. */

    /* `HP_BIND_2D_MIPMAP_TEXTURE` (0x179). Inferred: Map entry 0x58505d81:
     * pass form, command 160, count 22, 32-bit words. Command 160 is index
     * 32, mgebi_Bind2dMipmapTexture, which reads exactly 22 operand words
     * (operands 0-21). It loads the 2D mip-map texture description (addresses
     * and sizes) into the engine texture state; the register details are not
     * decoded. Payload 22: a texture-binding record: six words from the
     * texture object (offsets +72,+76,+80,+84,+516,+524) followed by sixteen
     * words copied from the array the object points to at +252. Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0x58505d81: command 160, count field 22 (bits 6-10, 0 read as 32),
     * single floats; engine handler `mgebi_Bind2dMipmapTexture` (index 32 of
     * the handler table). Sent by libGLcore bind2DMipmapTexture
     * (libglcore/asm/texture/kon_texture_api.s): sends HP_BIND_LINEAR_TEXTURE
     * (262) or HP_BIND_TEXTURE (469 when the format nibble of the word at
     * +116 is 3) with five words, then this token and 22 words. */
    KONA_HP_BIND_2D_MIPMAP_TEXTURE       = 0x179,

    /* Engine handlers whose slots the code of `arm_bind_bicubic_texture`
     * loads, in order: `mgesi_BshRegisterWriteN`. Read at arm1.u
     * arm_bind_bicubic_texture 0x0c025da8 (3 plain reads, then get_addr
     * 0x0c025438 reads the rest; set_bicubic_or_3d_addr 0x0c025490; slot 102
     * mgesi_BshRegisterWriteN via r8+0x114). */

    /* `HP_BIND_BICUBIC_TEXTURE` (0x17a). Established: If the dimension
     * matches the active one it reads the address words and writes the
     * bicubic table address pair to the raster registers
     * (set_bicubic_or_3d_addr), then sends a mask and constants through port
     * 0x840 and starts the bind handler; otherwise it just consumes the rest.
     * Payload 5: texture dimension (compared with the active one), two words
     * kept for the register write, then two address words from the texture's
     * table pointer. Established: the token map runs
     * `arm_bind_bicubic_texture` at arm1.u 0x0c025da8. Sent by libGLcore.so
     * bindBicubicTexture (texture/kon_texture_api.s, token 378, always after
     * a BIND_TEXTURE command). */
    KONA_HP_BIND_BICUBIC_TEXTURE         = 0x17a,

    /* Engine handlers whose slots the code of `arm_bind_3d_mipmap_texture`
     * loads, in order: `mgesi_BshRegisterWriteN`. Read at arm1.u
     * arm_bind_3d_mipmap_texture 0x0c025ccc (4 plain reads, then get_addr
     * with 10 words; set_3d_mipmap_addr 0x0c0254bc; slot 102
     * mgesi_BshRegisterWriteN). */

    /* `HP_BIND_3D_MIPMAP_TEXTURE` (0x17b). Established: If the current
     * dimension is 3 (or 3D is enabled) it reads the ten table words and
     * writes them as a series of texture-address register pairs
     * (set_3d_mipmap_addr), then sends the bind words through port 0x840 and
     * starts the register-write handler; otherwise it discards the table.
     * Payload 14: four words (the first is stored in the register-write word,
     * the others are bind parameters), then ten words from the texture's
     * address table. Established: the token map runs
     * `arm_bind_3d_mipmap_texture` at arm1.u 0x0c025ccc. Sent by libGLcore.so
     * bind3DMipmapTexture (texture/kon_texture_api.s, token 379, after a
     * BIND_TEXTURE command). */
    KONA_HP_BIND_3D_MIPMAP_TEXTURE       = 0x17b,

    /* Engine handlers whose slots the code of `arm_bind_3d_texture` loads, in
     * order: `mgesi_BshRegisterWriteN`. Read at arm1.u arm_bind_3d_texture
     * 0x0c025e6c (2 plain reads, then get_addr with 2 words;
     * set_bicubic_or_3d_addr; slot 102 mgesi_BshRegisterWriteN). */

    /* `HP_BIND_3D_TEXTURE` (0x17c). Established: If the active dimension is 3
     * (or 3D is enabled) it takes the two address words (get_addr), writes
     * the 3D texture address pair (set_bicubic_or_3d_addr) and sends the bind
     * words to the register-write handler; otherwise it discards them.
     * Payload 4: texture-object word at +72, word at +84, and the two address
     * words from the texture's table pointer. Established: the token map runs
     * `arm_bind_3d_texture` at arm1.u 0x0c025e6c. Sent by libGLcore.so
     * bind3DTexture (texture/kon_texture_api.s, token 380, after a
     * BIND_TEXTURE command). */
    KONA_HP_BIND_3D_TEXTURE              = 0x17c,

    /* Engine handlers whose slots the code of `arm_bind_detail_texture`
     * loads, in order: `mgesi_FillTMLoadFifo`. Read at arm1.u
     * arm_bind_detail_texture 0x0c025efc (5 plain reads + r9+0x3c;
     * tbus_regwrite 0x1002 and 0x5003; descriptor 0x58404800 with register
     * word 0x014d3fd6; FillTMLoadFifo via 0x4f4). */

    /* `HP_BIND_DETAIL_TEXTURE` (0x17d). Established: Retires a pending load
     * id of that cache entry by writing the wait and id registers, writes a
     * detail-texture register built from words 2 and 3 and keeps words 4-6 in
     * ARM state, re-sending the detail table when it matches the current
     * binding. Payload 6: texture-cache index (negative for none), two words
     * combined (second shifted left 4) into a detail-texture register value,
     * and three words kept in ARM state (+0x8a4, +0x8a8, +0x8ac).
     * Established: the token map runs `arm_bind_detail_texture` at arm1.u
     * 0x0c025efc. Sent by libGLcore.so bindDetailTexture
     * (texture/kon_texture_api.s, token 381, six words: index, +332, +336,
     * +28, +276, +280). */
    KONA_HP_BIND_DETAIL_TEXTURE          = 0x17d,

    /* Read at arm1.u arm_tex_send_arm_table 0x0c026010 (index, then 31 words
     * in a loop, a store, and the final r9+0x3c word; sendTexTable
     * 0x0c02539c). */

    /* `HP_TEX_SEND_ARM_TABLE` (0x17e). Established: Stores the 33 table words
     * in the ARM's table entry for that index (0x84 bytes per entry);
     * sendTexTable later writes them to the raster registers when a bind
     * needs them. It sends nothing to the engines itself. Payload 34:
     * texture-table index, then the 33 words of that table entry.
     * Established: the token map runs `arm_tex_send_arm_table` at arm1.u
     * 0x0c026010. Sent by libGLcore.so bindTexTable
     * (texture/kon_texture_api.s, token 382: the index word then 33 words via
     * __glkon_datavn). */
    KONA_HP_TEX_SEND_ARM_TABLE           = 0x17e,

    /* Engine handlers whose slots the code of `arm_slop` loads, in order:
     * `mgesi_Cram2ODMA`, `mgesi_Eram2ODMA`, `mgesi_SR2ODMA`,
     * `mgesi_LastVertex2ODMA`, `mgeb_DebugDrain`, `mgeb_XContextInitialize`,
     * `mgeb_XSetupClip`, `mgesi_XPointRel`, `mgesi_XLine`,
     * `mgeb_LoadCram`, `mgeb_XSetupColors`, `mgebi_XSetupWindow`,
     * `mgesi_XPoint`, `mgesi_XRect`, `mgesi_XBox`,
     * `mgesi_XSpans`, `mgesi_XSegment`, `mgesi_XSegmentRel`,
     * `mgesi_XLineRel`. Read at arm1.u arm_slop 0x0c038a78 (dispatch
     * 0x0c038aa8-0x0c038bb8, readback cases 0x0c038afc-0x0c038ba8). */

    /* `HP_SLOP` (0x17f). Inferred: A diagnostic multiplexer keyed by the
     * first word: codes -1004 to -1000 start engine debug-drain and
     * memory-to-output-DMA handlers and return the result through the
     * read-back path, -1005 reads one word, and nonnegative codes (1 to 3,
     * 0x0deadded and the 0x0deb00xx group) run other test actions such as
     * video-format and X-engine setup. Payload 16: a command code followed by
     * up to fourteen arguments and a last word. Established: the token map
     * runs `arm_slop` at arm1.u 0x0c038a78. No sender found (not in
     * libGLcore, kernel command table or X module stores). */
    KONA_HP_SLOP                         = 0x17f,

    /* Read at arm1.u arm_varray_set_cmds 0x0c039950, varray_set_cmd_table
     * 0x0c039884, varray_build_command 0x0c0395fc, varray_lru 0x0c0395c0. */

    /* `HP_VARRAY_SET_CMDS` (0x180). Established: Pops the key, looks it up in
     * eight cached command sets (key at +0x74c, stride 36 bytes in the block
     * at r8+0xcf4); on a miss takes the least recently used set and builds
     * its token-map entries, then rewrites the hardware token-map entries
     * from 0x183 on so vertex data go to the right handlers. Payload 1: A key
     * word describing which client arrays are enabled: vertex, normal,
     * colour, texture-coordinate, index and edge-flag types and component
     * counts (docs/ge.md table). Established: the token map runs
     * `arm_varray_set_cmds` at arm1.u 0x0c039950. Established: libGLcore.so
     * `update_cmpnd_cmd` stores 1 word after the token. Sent by libGLcore.so
     * update_cmpnd_cmd (kon_vertarray.s 0x0d95af20, li 384). */
    KONA_HP_VARRAY_SET_CMDS              = 0x180,

    /* Read at arm1.u arm_varray_setup 0x0c039a78. */

    /* `HP_VARRAY_SETUP` (0x181). Established: Pops its single word and
     * ignores it, then writes 0 through descriptor 0x06400020 (command 128,
     * pass form, register write). Payload 1 (value ignored; libGLcore sends
     * 0): one word that the handler discards. Established: the token map runs
     * `arm_varray_setup` at arm1.u 0x0c039a78. Sent by libGLcore.so
     * __glkonim_DrawArraysEXT (kon_vertarray.s, li 385). */
    KONA_HP_VARRAY_SETUP                 = 0x181,

    /* Read at arm1.u arm_varray_bgn_loop 0x0c0399c4-0x0c039a74 (__rt_sdiv
     * 0x0c040194). */

    /* `HP_VARRAY_BGN_LOOP` (0x182). Established: Pops the count, increments
     * the use counter of the current command set, writes 0 through descriptor
     * 0x06400020, writes 0x183 (the first loop token) to 0x200070 and
     * ceil(count / (32 / attributes)) to 0x200074, and discards the other two
     * words. Payload 3: Vertex count, then two words libGLcore fills with
     * 0xdeadbeef. Established: the token map runs `arm_varray_bgn_loop` at
     * arm1.u 0x0c0399c4. Sent by libGLcore.so
     * __glkonDrawArrays{V,NV,CV,NCV,TV,NTV,CTV,NCTV}... (kon_gvertarray.s, li
     * 386, count, two 0xdeadbeef). */
    KONA_HP_VARRAY_BGN_LOOP              = 0x182,

    /* Read at arm1.u arm_varray_bgn_loop 0x0c0399c4 (0x183 to r9-0x190 at
     * 0x0c039a58); varray_set_cmd_table 0x0c039884 (store loop
     * 0x0c039900-0x0c039918 from 0x40060c); static map record 0x0c000ce8. */

    /* `HP_VARRAY_LOOP00` (0x183). Established: Where every pass of the
     * vertex-array walk starts. `arm_varray_bgn_loop` stores 0x183 to
     * host-interface register 0x200070 (the store at 0x0c039a58), so after
     * the last chained slot the hardware returns here for the next element
     * group (inferred). `varray_set_cmd_table` writes the first enabled
     * attribute's built map entry into this slot's hardware map word
     * 0x40060c, so whatever the attribute count, slot 0 carries element 0's
     * leading attribute, and with a single array it is the whole of vertex 0.
     * The start-up value from static record 0x0c000ce8, 0x80000051, is
     * overwritten before any loop runs. The host never sends 0x183 as a token
     * word; the data words that follow HP_VARRAY_BGN_LOOP are consumed
     * through it. */
    KONA_HP_VARRAY_LOOP00                = 0x183,

    /* Read at arm1.u varray_set_cmd_table store loop 0x0c039900-0x0c039918;
     * varray_build_command 0x0c0395fc (chain bit 3); static map record
     * 0x0c000cec. */

    /* `HP_VARRAY_LOOP01` (0x184). Established: Second loop slot, hardware map
     * word 0x400610 (static record 0x0c000cec, start-up 0x80000051). With one
     * array enabled it holds vertex 1; with two it carries element 0's second
     * attribute, which closes that element because the vertex comes last in
     * the attribute order; with three to six arrays it is still inside
     * element 0. No token word 0x184 is ever stored by the host: the slot is
     * entered by chaining from slot 0x183. */
    KONA_HP_VARRAY_LOOP01                = 0x184,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884 (writes from 0x40060c);
     * static map record 0x0c000cf0. */

    /* `HP_VARRAY_LOOP02` (0x185). Established: Map word 0x400614, static
     * record 0x0c000cf0. Slot 2 of the walk: it opens element 1 when two
     * arrays are enabled, ends element 0 when three are, and is vertex 2 of a
     * single-array walk. For four or more arrays it is the third attribute of
     * element 0. Reached only by the chain bit from the slot before; the host
     * sends its data, never its number. */
    KONA_HP_VARRAY_LOOP02                = 0x185,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000cf4. */

    /* `HP_VARRAY_LOOP03` (0x186). Established: Hardware map word 0x400618
     * (record 0x0c000cf4). The fourth chained slot ends an element for two
     * arrays (element 1) and for four (element 0), and begins element 1 of a
     * three-array walk. Like the other loop slots it begins as 0x80000051 and
     * is filled by `varray_set_cmd_table` before use; nothing writes 0x186
     * into the FIFO as a token. */
    KONA_HP_VARRAY_LOOP03                = 0x186,

    /* Read at arm1.u arm_varray_set_cmds 0x0c039950; varray_set_cmd_table
     * store at 0x0c039908; static map record 0x0c000cf8. */

    /* `HP_VARRAY_LOOP04` (0x187). Established: Slot 4, map word 0x40061c,
     * static record 0x0c000cf8. A five-array element ends here; with two or
     * four arrays it starts element 2 or element 1. Its start-up entry, a
     * one-word geometry entry with the data-invalid bit, never governs real
     * data because `arm_varray_set_cmds` rebuilds the slots whenever the key
     * changes. Not sent as a token. */
    KONA_HP_VARRAY_LOOP04                = 0x187,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; varray_build_command
     * attribute order 0x0c039618-0x0c039850; static map record 0x0c000cfc. */

    /* `HP_VARRAY_LOOP05` (0x188). Established: Map word 0x400620 (record
     * 0x0c000cfc). This is the earliest slot at which a six-attribute element
     * (normal, colour, texture coordinate, index, edge flag and vertex)
     * completes; it also ends element 1 of a three-array walk and element 2
     * of a two-array walk, and begins element 1 when five arrays are on.
     * Filled by `varray_set_cmd_table`, never sent by number. */
    KONA_HP_VARRAY_LOOP05                = 0x188,

    /* Read at arm1.u varray_set_cmd_table store loop; static map record
     * 0x0c000d00. */

    /* `HP_VARRAY_LOOP06` (0x189). Established: Slot 6 of 32, hardware map
     * word 0x400624. Element boundaries line up here for two, three and six
     * arrays, all of which begin a new element (3, 2 and 1) in this slot;
     * with one array it is vertex 6. Start-up 0x80000051 from static record
     * 0x0c000d00; the host never writes 0x189 as a token. */
    KONA_HP_VARRAY_LOOP06                = 0x189,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d04. */

    /* `HP_VARRAY_LOOP07` (0x18a). Established: Map word 0x400628, record
     * 0x0c000d04. Two- and four-array walks finish an element in this slot
     * (elements 3 and 1); for three, five or six arrays it falls inside an
     * element. Its entry is copied by the store at 0x0c039908 with the chain
     * bit set, so the host interface moves straight on to slot 0x18b. No
     * sender stores 0x18a. */
    KONA_HP_VARRAY_LOOP07                = 0x18a,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d08. */

    /* `HP_VARRAY_LOOP08` (0x18b). Established: Eighth slot, hardware map word
     * 0x40062c (static record 0x0c000d08, start-up 0x80000051). It begins
     * vertex 8 of a one-array walk and elements 4 and 2 of two- and
     * four-array walks, and closes element 2 of a three-array walk. Present
     * in the map only as a chained step; the token value itself is not used
     * by any shipped program. */
    KONA_HP_VARRAY_LOOP08                = 0x18b,

    /* Read at arm1.u varray_set_cmd_table store loop 0x0c039900-0x0c039918;
     * static map record 0x0c000d0c. */

    /* `HP_VARRAY_LOOP09` (0x18c). Established: Map word 0x400630, static
     * record 0x0c000d0c. Slot 9 closes element 4 for two arrays and element 1
     * for five, and opens element 3 for three. Like its neighbours it is
     * rewritten each time the enabled-array key changes and is never a token
     * on the FIFO. */
    KONA_HP_VARRAY_LOOP09                = 0x18c,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d10. */

    /* `HP_VARRAY_LOOP0A` (0x18d). Established: Hardware map word 0x400634
     * (record 0x0c000d10). Slot 10 begins element 5 of a two-array walk and
     * element 2 of a five-array walk; with one array it is vertex 10, and for
     * three, four or six arrays it is a middle attribute. Entered by the
     * chain bit, not by a token word. */
    KONA_HP_VARRAY_LOOP0A                = 0x18d,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d14. */

    /* `HP_VARRAY_LOOP0B` (0x18e). Established: Map word 0x400638, static
     * record 0x0c000d14. Eleven slots in, five array counts finish an element
     * at once: two (element 5), three (3), four (2), six (1) and one (vertex
     * 11); only a five-array walk is mid-element here. Start-up 0x80000051,
     * replaced by `varray_set_cmd_table`; no host stores 0x18e. */
    KONA_HP_VARRAY_LOOP0B                = 0x18e,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d18. */

    /* `HP_VARRAY_LOOP0C` (0x18f). Established: Slot 12, map word 0x40063c
     * (record 0x0c000d18). The mirror of the previous slot: a new element
     * starts here for one, two, three, four and six arrays, so this is the
     * first slot of element 12, 6, 4,
     * 3 or 2. It is reached by chaining and is not a host token. */
    KONA_HP_VARRAY_LOOP0C                = 0x18f,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d1c. */

    /* `HP_VARRAY_LOOP0D` (0x190). Established: Hardware map word 0x400640
     * (static record 0x0c000d1c). Slot 13 completes element 6 of a two-array
     * walk; for three to six arrays it is an inner attribute, for one array
     * vertex 13. Filled at 0x0c039908 and never sent by number. */
    KONA_HP_VARRAY_LOOP0D                = 0x190,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d20. */

    /* `HP_VARRAY_LOOP0E` (0x191). Established: Map word 0x400644, record
     * 0x0c000d20. Here three- and five-array walks close elements 4 and 2,
     * while a two-array walk opens element 7. Start-up entry 0x80000051;
     * rewritten before use; no FIFO store of 0x191 exists. */
    KONA_HP_VARRAY_LOOP0E                = 0x191,

    /* Read at arm1.u varray_set_cmd_table store loop; static map record
     * 0x0c000d24. */

    /* `HP_VARRAY_LOOP0F` (0x192). Established: Slot 15, hardware map word
     * 0x400648 (static record 0x0c000d24). It starts element 5 of a
     * three-array walk and element 3 of a five-array walk, and ends element 7
     * (two arrays) and element 3 (four arrays). A chained step of the loop,
     * not a token any program sends. */
    KONA_HP_VARRAY_LOOP0F                = 0x192,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d28. */

    /* `HP_VARRAY_LOOP10` (0x193). Established: The half-way slot: map word
     * 0x40064c, record 0x0c000d28. For one, two and four arrays it begins the
     * second half of the walk (vertex 16, element 8, element 4). Its entry is
     * copied in by `varray_set_cmd_table` with the chain bit set; the host
     * never names it. */
    KONA_HP_VARRAY_LOOP10                = 0x193,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d2c. */

    /* `HP_VARRAY_LOOP11` (0x194). Established: Map word 0x400650, static
     * record 0x0c000d2c. Slot 17 closes an element for two arrays (8), three
     * (5) and six (2), and is inside an element for four and five. Start-up
     * value 0x80000051; no sender. */
    KONA_HP_VARRAY_LOOP11                = 0x194,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d30. */

    /* `HP_VARRAY_LOOP12` (0x195). Established: Hardware map word 0x400654
     * (record 0x0c000d30). Slot 18 begins element 9, 6 and 3 for two, three
     * and six arrays; a four- or five-array element is in progress here.
     * Reached through the chain from slot 0x194, never written as a FIFO
     * token. */
    KONA_HP_VARRAY_LOOP12                = 0x195,

    /* Read at arm1.u varray_set_cmd_table store loop 0x0c039900-0x0c039918;
     * static map record 0x0c000d34. */

    /* `HP_VARRAY_LOOP13` (0x196). Established: Map word 0x400658, static
     * record 0x0c000d34. In slot 19 a two-array walk ends element 9, a
     * four-array walk element 4 and a five-array walk element 3; with three
     * or six arrays it is an inner attribute. The static start-up entry
     * 0x80000051 is replaced before any walk; no host program stores 0x196. */
    KONA_HP_VARRAY_LOOP13                = 0x196,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d38. */

    /* `HP_VARRAY_LOOP14` (0x197). Established: Slot 20, map word 0x40065c
     * (record 0x0c000d38). It opens element 10 (two arrays), 5 (four) and 4
     * (five), and closes element 6 of a three-array walk. Entered by
     * chaining, not by token. */
    KONA_HP_VARRAY_LOOP14                = 0x197,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d3c. */

    /* `HP_VARRAY_LOOP15` (0x198). Established: Hardware map word 0x400660,
     * static record 0x0c000d3c. Slot 21 is the first attribute of element 7
     * for three arrays and the last of element 10 for two; for four to six
     * arrays it falls mid-element. Start-up 0x80000051; never sent. */
    KONA_HP_VARRAY_LOOP15                = 0x198,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d40. */

    /* `HP_VARRAY_LOOP16` (0x199). Established: Map word 0x400664 (static
     * record 0x0c000d40). With one array this slot is vertex 22 and with two
     * it starts element 11; every larger count is inside an element here.
     * Rewritten by `varray_set_cmd_table` when the key changes; the host does
     * not send 0x199. */
    KONA_HP_VARRAY_LOOP16                = 0x199,

    /* Read at arm1.u varray_set_cmd_table store loop; static map record
     * 0x0c000d44. */

    /* `HP_VARRAY_LOOP17` (0x19a). Established: Slot 23, hardware map word
     * 0x400668, record 0x0c000d44. Like slot 11 it ends an element for one,
     * two, three, four and six arrays (vertex 23, elements 11, 7, 5 and
     * 3); only the five-array walk continues past it mid-element. A chained
     * step; no sender. */
    KONA_HP_VARRAY_LOOP17                = 0x19a,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d48. */

    /* `HP_VARRAY_LOOP18` (0x19b). Established: Map word 0x40066c (static
     * record 0x0c000d48). Slot 24 begins element 12, 8, 6 or
     * 4 for two, three, four or six arrays, and finishes element 4 of a
     * five-array walk. Its entry is set at 0x0c039908 from the cached
     * attribute list; no program stores the number. */
    KONA_HP_VARRAY_LOOP18                = 0x19b,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d4c. */

    /* `HP_VARRAY_LOOP19` (0x19c). Established: Hardware map word 0x400670,
     * record 0x0c000d4c. Slot 25 is the last attribute of element 12 when two
     * arrays are on and the first of element 5 when five are. Start-up
     * 0x80000051 from the static map; never a token. */
    KONA_HP_VARRAY_LOOP19                = 0x19c,

    /* Read at arm1.u varray_set_cmd_table store loop 0x0c039900-0x0c039918;
     * static map record 0x0c000d50. */

    /* `HP_VARRAY_LOOP1A` (0x19d). Established: Map word 0x400674 (static
     * record 0x0c000d50). At slot 26 a three-array walk closes element 8 and
     * a two-array walk opens element 13. Filled by the store loop of
     * `varray_set_cmd_table`; no host sends 0x19d. */
    KONA_HP_VARRAY_LOOP1A                = 0x19d,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884; static map record
     * 0x0c000d54. */

    /* `HP_VARRAY_LOOP1B` (0x19e). Established: Slot 27, hardware map word
     * 0x400678, static record 0x0c000d54. It opens element 9 of a three-array
     * walk and closes element 13 (two arrays) and element 6 (four arrays).
     * Reached by chaining only. */
    KONA_HP_VARRAY_LOOP1B                = 0x19e,

    /* Read at arm1.u varray_set_cmd_table store at 0x0c039908; static map
     * record 0x0c000d58. */

    /* `HP_VARRAY_LOOP1C` (0x19f). Established: Map word 0x40067c (record
     * 0x0c000d58). Slot 28 starts element 14 for two arrays and element 7 for
     * four, and is vertex 28 of a one-array walk. Start-up 0x80000051,
     * replaced before use; never sent by number. */
    KONA_HP_VARRAY_LOOP1C                = 0x19f,

    /* Read at arm1.u varray_set_cmd_table 0x0c039884 (bic of bit 3 and store
     * at 0x0c039930-0x0c039934); static map record 0x0c000d5c. */

    /* `HP_VARRAY_LOOP1D` (0x1a0). Established: Hardware map word 0x400680,
     * static record 0x0c000d5c. For three, five and six arrays this is the
     * walk's final slot: 32 / k elements fill 30 slots, so the closing store
     * at 0x0c039934 writes the last attribute's entry here with the chain bit
     * cleared, and the hardware goes back to slot 0x183 (inferred). For one,
     * two and four arrays it is an ordinary chained slot (it ends element 14
     * of a two-array walk). No host sends 0x1a0. */
    KONA_HP_VARRAY_LOOP1D                = 0x1a0,

    /* Read at arm1.u varray_set_cmd_table store loop 0x0c039900-0x0c039918 (k
     * x floor(32/k) slots); static map record 0x0c000d60. */

    /* `HP_VARRAY_LOOP1E` (0x1a1). Established: Map word 0x400684 (record
     * 0x0c000d60). Only walks with one, two or four arrays reach slot 30: for
     * three, five or six the walk ends at slot 0x1a0, so this word keeps
     * whatever an earlier key or start-up (0x80000051) left there and is not
     * read (inferred from the chain bit being clear at slot 0x1a0). With two
     * arrays it opens element 15. Never a token. */
    KONA_HP_VARRAY_LOOP1E                = 0x1a1,

    /* Read at arm1.u varray_set_cmd_table 0x0c039930-0x0c039934;
     * arm_varray_bgn_loop 0x0c0399c4 (count to r9-0x18c at 0x0c039a68);
     * static map record 0x0c000d64. */

    /* `HP_VARRAY_LOOP1F` (0x1a2). Established: The last loop slot, hardware
     * map word 0x400688, static record 0x0c000d64. For one, two and four
     * arrays the walk fills all 32 slots, so the closing store at 0x0c039934
     * puts the final attribute here with the chain bit cleared and the
     * hardware returns to slot 0x183 for the next group (inferred);
     * `arm_varray_bgn_loop` sets the number of groups at 0x200074. For three,
     * five or six arrays it is left unused. No program sends 0x1a2 as a
     * token. */
    KONA_HP_VARRAY_LOOP1F                = 0x1a2,

    /* Read at arm1.u arm_varray_unsetup 0x0c039a94. */

    /* `HP_VARRAY_UNSETUP` (0x1a3). Established: Pops its single word and
     * ignores it; unless bit 6 of the byte at r8+0xcf0 is set it writes 1
     * through descriptor 0x06400020, which undoes what HP_VARRAY_SETUP wrote.
     * Payload 1 (libGLcore sends 0): one word that the handler discards.
     * Established: the token map runs `arm_varray_unsetup` at arm1.u
     * 0x0c039a94. Sent by libGLcore.so __glkonim_DrawArraysEXT and
     * __glkonDrawArrays* (li 419, one zero word). */
    KONA_HP_VARRAY_UNSETUP               = 0x1a3,

    /* Read at arm1.u arm_spriteparameteri 0x0c03cbf0 (r8+0x820;
     * resolveSpriteMode 0x0c03cb64). */

    /* `HP_SPRITEPARAMETERI` (0x1a4). Established: Ignores the name word,
     * stores the value as the sprite mode in the sprite shadow and calls
     * resolveSpriteMode. Payload 2: Parameter name and integer value (sprite
     * mode). Established: the token map runs `arm_spriteparameteri` at arm1.u
     * 0x0c03cbf0. Sent by libGLcore.so __glkonim_SpriteParameteriSGIX
     * (kon_cfuncs.s): token 420. */
    KONA_HP_SPRITEPARAMETERI             = 0x1a4,

    /* Engine handlers whose slots the code of `arm_spriteparameterfv` loads,
     * in order: `mgeb_Sprite`. Read at arm1.u arm_spriteparameterfv
     * 0x0c03cc08 (slot 81 mgeb_Sprite; shadow r8+0x820 block). */

    /* `HP_SPRITEPARAMETERFV` (0x1a5). Inferred: For mode it stores the last
     * word and calls resolveSpriteMode. For axis and translation it stores
     * three floats (with 1.0 appended), sends them with a selector 0 or 4 to
     * mgeb_Sprite. Other names return without sending. Payload 4: Parameter
     * name (0x8149 mode, 0x814a axis, 0x814b translation) and three values.
     * Established: the token map runs `arm_spriteparameterfv` at arm1.u
     * 0x0c03cc08. Sent by libGLcore.so __glkonim_SpriteParameterfvSGIX
     * (kon_sprite.s). */
    KONA_HP_SPRITEPARAMETERFV            = 0x1a5,

    /* Read at arm1.u arm_video_cmd 0x0c006398; DGDispatchTable 0x040412c0. */

    /* `HP_VIDEO_CMD` (0x1a6). Established: Reads the command number, looks up
     * its word count and handler in DGDispatchTable, reads that many words
     * (stack buffer for up to 16, scratch SDRAM up to 0x8000), checks the sum
     * against the last word and, if it matches, calls the DoDGRqst handler
     * with the buffer. Bad number, overflow or bad checksum prints a message
     * and drops it. Payload variable: command number, the count the dispatch
     * table gives for it, then a checksum word: display-generator command
     * number (0-0x5c), its payload words, checksum = sum of command number
     * and payload. Established: the token map runs `arm_video_cmd` at arm1.u
     * 0x0c006398. Established: libGLcore.so `ChannelRect` stores 10 words
     * after the token. Sent by libGLcore.so ChannelRect (command 20, 8 words)
     * and ChannelRectSync (command 78, 2 words) in kon_context.s; X server
     * modules (dg.md). */
    KONA_HP_VIDEO_CMD                    = 0x1a6,

    /* Engine handlers whose slots the code of `arm_pointparameterf` loads, in
     * order: `mgeb_PointParameter`. Read at arm1.u arm_pointparameterf
     * 0x0c03cfc8 (slot 63; r8+0x234, 0x238,
     * 0x23c; ResolvePoint). */

    /* `HP_POINTPARAMETERF` (0x1a7). Inferred: Keeps the value in the point
     * shadow, sends name and value to the engines, starts mgeb_PointParameter
     * and re-derives point drawing. Other names raise invalid-enum. Payload
     * 2: Parameter name (0x8126 minimum size, 0x8127 maximum size, 0x8128
     * fade threshold) and a float value. Established: the token map runs
     * `arm_pointparameterf` at arm1.u 0x0c03cfc8. Sent by libGLcore.so
     * __glkonim_PointParameterfSGIS and __glkonim_PointParameterfvSGIS
     * (kon_point_parameters.s): token 423. */
    KONA_HP_POINTPARAMETERF              = 0x1a7,

    /* Engine handlers whose slots the code of `arm_pointparameterfv` loads,
     * in order: `mgeb_PointParameter`. Read at arm1.u arm_pointparameterfv
     * 0x0c03d020 (slot 63; r8+0x228..0x230). */

    /* `HP_POINTPARAMETERFV` (0x1a8). Inferred: Stores the three coefficients
     * in the point shadow, sends name and coefficients to the engines, starts
     * mgeb_PointParameter and re-derives point drawing. Also accepts the
     * three scalar names with one value. Payload 4: Parameter name (the
     * emitter sends 0x8129 distance attenuation) and three floats.
     * Established: the token map runs `arm_pointparameterfv` at arm1.u
     * 0x0c03d020. Sent by libGLcore.so __glkonim_PointParameterfvSGIS
     * (kon_point_parameters.s): token 424, name, three floats. */
    KONA_HP_POINTPARAMETERFV             = 0x1a8,

    /* Read at icu_map.tsv 0x1a9; ged_banks.tsv k=3; ged.md how an entry is
     * chosen; ged1b.u tstrip.s relocation to mgesi_TriangleStripWithSwapOdd
     * (slot 418); libGLcore kon_igloo.s __glkonim_IglooInterfaceSGIX. */

    /* `HP_SWAPTMESH` (0x1a9). Inferred: Map entry 0xd8c18057: geometry form,
     * command 387, count 1, 32-bit words. Geometry form, kind 3 (legal inside
     * begin/end), data-invalid bit, command 387, entry number k = 3 (387 &
     * 63), offset 3 of the current class group in ged.md: a plain fetch in
     * tri.s, its own swap code per state in tstrip.s, and B[3] (fetch and
     * release) when idle. It flips which previous vertex the next
     * triangle-strip vertex replaces; only the triangle-strip module has swap
     * code. Payload 1 (zero word): one zero word. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0xd8c18057:
     * command 387, geometry form, count field 1 (bits 6-8), single floats.
     * Sent by libGLcore __glkonim_IglooInterfaceSGIX (kon_igloo.s, parameter
     * value 0x81a0): stores token 425 then a zero word. */
    KONA_HP_SWAPTMESH                    = 0x1a9,

    /* Engine handlers whose slots the code of `arm_bind_2d_clipmap_texture`
     * loads, in order: `mgesi_BshRegisterWriteN`, `mgeb_ClipmapXform`. Read
     * at arm1.u arm_bind_2d_clipmap_texture 0x0c025b8c (7 plain reads +
     * r9+0x3c; tbus-register words 0x01501020, 0x01511021,
     * 0x01523fd7, 0x01533fd8, 0x014d3fd6; slot 427
     * mgeb_ClipmapXform via gepc+0x6ac). */

    /* `HP_BIND_2D_CLIPMAP_TEXTURE` (0x1aa). Established: Writes five clipmap
     * values to raster registers 0x1020, 0x1021 and 0x3fd6-0x3fd8 (the set
     * depends on bit 22 of the fifth word), then always starts the engines'
     * clipmap-transform handler, sending the three floats when the sixth word
     * is nonzero and 1.0, 0, 0 otherwise. Payload 8 (5 integers, 3 floats):
     * five clipmap integer words (the fifth carries a mode bit, 0x400000),
     * then three floats (the clip scale and bounds); words 1-5 are sent to
     * raster registers. Established: the token map runs
     * `arm_bind_2d_clipmap_texture` at arm1.u 0x0c025b8c. Established:
     * libGLcore.so `setClipmapRegisters` stores 8 words after the token. Sent
     * by libGLcore.so setClipmapRegisters (texture/kon_texture_api.s, token
     * 426). */
    KONA_HP_BIND_2D_CLIPMAP_TEXTURE      = 0x1aa,

    /* Read at icu_map.tsv 0x1ab; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F (li 427); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F` (0x1ab). Inferred: Map entry 0xd86740c7: geometry
     * form, command 206, count 3, 32-bit words. Geometry form, kind 3,
     * command 206, entry number k = 14 (206 & 63) with the vertex bit set, so
     * the distributor runs the vertex code of the current state (ged.md). It
     * is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 3: x,
     * y, z floats (one packed vertex taken from the interleaved arrays;
     * 64-bit stores pair two words, high word first). Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0xd86740c7:
     * command 206, geometry form, count field 3 (bits 6-8), single floats.
     * Sent by libGLcore __glkonSendPackedVertexV3F
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F                  = 0x1ab,

    /* Read at icu_map.tsv 0x1ac; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_C4UB (li 428); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_C4UB` (0x1ac). Inferred: Map entry 0xd8674107: geometry
     * form, command 206, count 4, 32-bit words. Geometry form, kind 3,
     * command 206, entry number k = 14 (206 & 63) with the vertex bit set, so
     * the distributor runs the vertex code of the current state (ged.md). It
     * is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 4: x,
     * y, z floats, then a word of four unsigned colour bytes (one packed
     * vertex taken from the interleaved arrays; 64-bit stores pair two words,
     * high word first). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8674107: command 206, geometry form,
     * count field 4 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_C4UB
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_C4UB             = 0x1ac,

    /* Read at icu_map.tsv 0x1ad; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_N3S (li 429); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_N3S` (0x1ad). Inferred: Map entry 0xd8674107: geometry
     * form, command 206, count 4, 32-bit words. Geometry form, kind 3,
     * command 206, entry number k = 14 (206 & 63) with the vertex bit set, so
     * the distributor runs the vertex code of the current state (ged.md). It
     * is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 4: x,
     * y, z floats, then one packed normal word (three signed shorts) (one
     * packed vertex taken from the interleaved arrays; 64-bit stores pair two
     * words, high word first). Established: routed by the host interface with
     * no ARM code, arm1.u token-map entry 0xd8674107: command 206, geometry
     * form, count field 4 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_N3S
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_N3S              = 0x1ad,

    /* Read at icu_map.tsv 0x1ae; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_C4UB_N3S (li 430); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_C4UB_N3S` (0x1ae). Inferred: Map entry 0xd8674147:
     * geometry form, command 206, count 5, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 5: x,
     * y, z, packed colour word, packed normal word (one packed vertex taken
     * from the interleaved arrays; 64-bit stores pair two words, high word
     * first). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8674147: command 206, geometry form, count
     * field 5 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_C4UB_N3S
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_C4UB_N3S         = 0x1ae,

    /* Read at icu_map.tsv 0x1af; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_T2F (li 431); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_T2F` (0x1af). Inferred: Map entry 0xd8674147: geometry
     * form, command 206, count 5, 32-bit words. Geometry form, kind 3,
     * command 206, entry number k = 14 (206 & 63) with the vertex bit set, so
     * the distributor runs the vertex code of the current state (ged.md). It
     * is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 5: x,
     * y, z, then s and t floats (one packed vertex taken from the interleaved
     * arrays; 64-bit stores pair two words, high word first). Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0xd8674147: command 206, geometry form, count field 5 (bits 6-8),
     * single floats. Sent by libGLcore __glkonSendPackedVertexV3F_T2F
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_T2F              = 0x1af,

    /* Read at icu_map.tsv 0x1b0; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_C4UB_T2F (li 432); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_C4UB_T2F` (0x1b0). Inferred: Map entry 0xd8674187:
     * geometry form, command 206, count 6, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 6: x,
     * y, z, colour word, s, t floats (one packed vertex taken from the
     * interleaved arrays; 64-bit stores pair two words, high word first).
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xd8674187: command 206, geometry form, count field 6
     * (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_C4UB_T2F
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_C4UB_T2F         = 0x1b0,

    /* Read at icu_map.tsv 0x1b1; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_N3S_T2F (li 433); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_N3S_T2F` (0x1b1). Inferred: Map entry 0xd8674187:
     * geometry form, command 206, count 6, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 6: x,
     * y, z, normal word, s, t floats (one packed vertex taken from the
     * interleaved arrays; 64-bit stores pair two words, high word first).
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0xd8674187: command 206, geometry form, count field 6
     * (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_N3S_T2F
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_N3S_T2F          = 0x1b1,

    /* Read at icu_map.tsv 0x1b2; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_C4UB_N3S_T2F (li 434);
     * arm1.u arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_C4UB_N3S_T2F` (0x1b2). Inferred: Map entry 0xd86741c7:
     * geometry form, command 206, count 7, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 7: x,
     * y, z, colour word, normal word, s, t floats (one packed vertex taken
     * from the interleaved arrays; 64-bit stores pair two words, high word
     * first). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd86741c7: command 206, geometry form, count
     * field 7 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_C4UB_N3S_T2F
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2F     = 0x1b2,

    /* Read at icu_map.tsv 0x1b3; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_T2S (li 435); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_T2S` (0x1b3). Inferred: Map entry 0xd8674107: geometry
     * form, command 206, count 4, 32-bit words. Geometry form, kind 3,
     * command 206, entry number k = 14 (206 & 63) with the vertex bit set, so
     * the distributor runs the vertex code of the current state (ged.md). It
     * is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 4: x,
     * y, z, then one word of two signed-short texture coordinates (one packed
     * vertex taken from the interleaved arrays; 64-bit stores pair two words,
     * high word first). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8674107: command 206, geometry form,
     * count field 4 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_T2S
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_T2S              = 0x1b3,

    /* Read at icu_map.tsv 0x1b4; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_C4UB_T2S (li 436); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_C4UB_T2S` (0x1b4). Inferred: Map entry 0xd8674147:
     * geometry form, command 206, count 5, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 5: x,
     * y, z, colour word, short-pair texture word (one packed vertex taken
     * from the interleaved arrays; 64-bit stores pair two words, high word
     * first). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8674147: command 206, geometry form, count
     * field 5 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_C4UB_T2S
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_C4UB_T2S         = 0x1b4,

    /* Read at icu_map.tsv 0x1b5; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_N3S_T2S (li 437); arm1.u
     * arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_N3S_T2S` (0x1b5). Inferred: Map entry 0xd8674147:
     * geometry form, command 206, count 5, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 5: x,
     * y, z, normal word, short-pair texture word (one packed vertex taken
     * from the interleaved arrays; 64-bit stores pair two words, high word
     * first). Established: routed by the host interface with no ARM code,
     * arm1.u token-map entry 0xd8674147: command 206, geometry form, count
     * field 5 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_N3S_T2S
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_N3S_T2S          = 0x1b5,

    /* Read at icu_map.tsv 0x1b6; ged.md how an entry is chosen; libGLcore
     * kon_spvertarray.s __glkonSendPackedVertexV3F_C4UB_N3S_T2S (li 438);
     * arm1.u arm_pvertex_setup 0x0c039ac8. */

    /* `HP_PVERTEX_V3F_C4UB_N3S_T2S` (0x1b6). Inferred: Map entry 0xd8674187:
     * geometry form, command 206, count 6, 32-bit words. Geometry form, kind
     * 3, command 206, entry number k = 14 (206 & 63) with the vertex bit set,
     * so the distributor runs the vertex code of the current state (ged.md).
     * It is a complete vertex with the listed attributes: the distributor
     * assembles it into the current primitive, so one token replaces separate
     * vertex, colour, normal and texture-coordinate commands. Payload 6: x,
     * y, z, colour word, normal word, short-pair texture word (one packed
     * vertex taken from the interleaved arrays; 64-bit stores pair two words,
     * high word first). Established: routed by the host interface with no ARM
     * code, arm1.u token-map entry 0xd8674187: command 206, geometry form,
     * count field 6 (bits 6-8), single floats. Sent by libGLcore
     * __glkonSendPackedVertexV3F_C4UB_N3S_T2S
     * (libglcore/asm/KONA.IP27/kon_spvertarray.s), per vertex inside a
     * glBegin set up by __glKonSendPackedVertex, which sends HP_PVERTEX_SETUP
     * (439) first and HP_PVERTEX_CLEANUP (463) after; also used by
     * __glkonim_SubdivPatchSGIX for the T2F forms. */
    KONA_HP_PVERTEX_V3F_C4UB_N3S_T2S     = 0x1b6,

    /* Read at arm1.u arm_pvertex_setup 0x0c039ac8-0x0c039b98. */

    /* `HP_PVERTEX_SETUP` (0x1b7). Established: Pops two words; injects the
     * second as command 188 payload (descriptor 0x585e5000); sets the
     * distributor transfer mask to the low 16 bits of the first (descriptor
     * 0x55c00020); if bit 30 of the first is set it also writes 0xf00 to the
     * mask descriptor and sends commands 84 and 190 with r8 as data, and if
     * bit 20 is set 0x1000e000 and commands 84 and 191. Payload 2: A
     * packed-vertex format word (bits 24-27 select the element function, bits
     * 16-23 a size byte, low bits carry the transfer mask) and the size byte
     * again. Established: the token map runs `arm_pvertex_setup` at arm1.u
     * 0x0c039ac8. Sent by libGLcore.so __glKonSendPackedVertex
     * (kon_pvertarray.s 0x0d95c960, li 439); list form
     * __glKonlSendPackedVertex. */
    KONA_HP_PVERTEX_SETUP                = 0x1b7,

    /* Read at arm1.u arm_instruments_buffer 0x0c03ce84. */

    /* `HP_INSTRUMENTS_BUFFER` (0x1b8). Established: Clears the
     * instruments-running flag and the sequence counter (ARM RAM r8+0x858,
     * +0x85c) and reads and discards the payload word. It does not keep any
     * buffer address. Payload 1: buffer address word from
     * glInstrumentsBufferSGIX; libGLcore sends a zero word. Established: the
     * token map runs `arm_instruments_buffer` at arm1.u 0x0c03ce84. Sent by
     * libGLcore.so __glkonim_InstrumentsBufferSGIX
     * (kon_pipeline_instruments.s) stores token 440 then 0. */
    KONA_HP_INSTRUMENTS_BUFFER           = 0x1b8,

    /* Engine handlers whose slots the code of `arm_start_instruments` loads,
     * in order: `mgesi_StartInstruments`. Read at arm1.u
     * arm_start_instruments 0x0c03cea0; ge.u mgesi_StartInstruments
     * (pi.S:37). */

    /* `HP_START_INSTRUMENTS` (0x1b9). Established: If instruments are enabled
     * (byte r8+0x78c): a second start while running raises invalid operation;
     * otherwise sets running, increments the sequence counter, sends the
     * counter to 0x474 and runs engine StartInstruments (slot 420). If
     * disabled it returns after reading the word. Payload 1 (zero): dummy
     * zero from libGLcore. Established: the token map runs
     * `arm_start_instruments` at arm1.u 0x0c03cea0. Established: libGLcore.so
     * `__glkonim_StartInstrumentsSGIX` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_StartInstrumentsSGIX (kon_cfuncs.s) stores token
     * 441 then 0. */
    KONA_HP_START_INSTRUMENTS            = 0x1b9,

    /* Engine handlers whose slots the code of `arm_stop_instruments` loads,
     * in order: `mgesi_StopInstruments`. Read at arm1.u arm_stop_instruments
     * 0x0c03cef4; ge.u mgesi_StopInstruments (pi.S:81). */

    /* `HP_STOP_INSTRUMENTS` (0x1ba). Inferred: If enabled and running, clears
     * running, sends the marker (0x474), the read-back address high word + 3
     * and the page base + 0xff8 (0x840) and runs engine StopInstruments (slot
     * 421), which writes the counters to host memory by output DMA; stopping
     * when not running raises invalid operation. Payload 1: marker value from
     * glStopInstrumentsSGIX. Established: the token map runs
     * `arm_stop_instruments` at arm1.u 0x0c03cef4. Established: libGLcore.so
     * `__glkonim_StopInstrumentsSGIX` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_StopInstrumentsSGIX (kon_cfuncs.s) stores token
     * 442 then the marker. */
    KONA_HP_STOP_INSTRUMENTS             = 0x1ba,

    /* Read at arm1.u arm_texelstorei 0x0c02af20 (r9+0, r9+0x3c; slots at
     * 0x260+0xc4..0x100). */

    /* `HP_TEXELSTOREI` (0x1bb). Established: Stores the value in the matching
     * slot of the ARM's texel pack state and marks the pixel state dirty; it
     * sends nothing to the engines. Payload 2 (parameter name, integer):
     * texel-store parameter name (swap bytes, lsb first, row length, skip
     * rows, skip pixels, alignment, image height, skip images and so on) and
     * its value. Established: the token map runs `arm_texelstorei` at arm1.u
     * 0x0c02af20. Sent by libGLcore.so __glkonim_TextureStorei (kon_pixel.s,
     * token 443). */
    KONA_HP_TEXELSTOREI                  = 0x1bb,

    /* Read at arm1.u arm_restart_selectfeed 0x0c022b8c. */

    /* `HP_RESTART_SELECTFEED` (0x1bc). Established: If a select-feedback
     * transfer is active it reloads output-DMA channel 0 (raster registers
     * 0x450-0x456) from the copy saved by START_SELECTFEED so the channel
     * starts again from the saved base; otherwise it does nothing. Payload 1
     * (libGLcore sends one zero word): a zero word, not used. Established:
     * the token map runs `arm_restart_selectfeed` at arm1.u 0x0c022b8c. Sent
     * by libGLcore.so __glkonim_InstrumentsBufferSGIX
     * (kon_pipeline_instruments.s lines 103-110: li 444, sw to 16384, sw
     * zero, then token 440 and zero). */
    KONA_HP_RESTART_SELECTFEED           = 0x1bc,

    /* Read at icu_map.tsv 0x1bd; ged_bound_table.tsv idx 16; ge.u refplane.S
     * mgebi_ReferencePlane 0x59a2 (operands 0-3, stores to 0x94b-0x94d seen);
     * libGLcore kon_cfuncs.s __glkonim_ReferencePlaneSGIX. */

    /* `HP_REFERENCE_PLANE` (0x1bd). Inferred: Map entry 0x78485a01: pass
     * form, command 144, count 8, doubles. Command 144 is index 16,
     * mgebi_ReferencePlane, which reads four 64-bit operands and writes them
     * into engine memory (0x94b upward) for the reference-plane feature; the
     * ARM enables or disables the plane separately (0x817d handlers). Payload
     * 8 (4 doubles): plane equation: four doubles, stored in the order
     * equation[0], [1], [2], [3]. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x78485a01: command 144, count
     * field 8 (bits 6-10, 0 read as 32), doubles; engine handler
     * `mgebi_ReferencePlane` (index 16 of the handler table). Established:
     * libGLcore.so `__glkonim_ReferencePlaneSGIX` stores 8 words after the
     * token. Sent by libGLcore __glkonim_ReferencePlaneSGIX
     * (libglcore/asm/kon/kon_cfuncs.s): token 445, four sdc1 stores. */
    KONA_HP_REFERENCE_PLANE              = 0x1bd,

    /* Read at icu_map.tsv 0x1be; ged.md pass/register forms; libGLcore
     * kon_igloo.s __glkonim_IglooInterfaceSGIX. */

    /* `HP_SETCOLORNORMAL` (0x1be). Inferred: Map entry 0x52600067:
     * register/pixel form, command 192, count 1, 32-bit words. Register/pixel
     * form, kind 3, command 192 (index 0, qualifier 3). ged.md reads the
     * control word as distributor register 0x293, so the word is a mode value
     * written there; its meaning (colour/normal selection) comes from the
     * name. Payload 1: one word taken from the parameter pointer of the
     * igloo-interface call (selector value 0x81a1). Established: routed by
     * the host interface with no ARM code, arm1.u token-map entry 0x52600067:
     * command 192, count field 1 (bits 6-10, 0 read as 32), single floats.
     * Sent by libGLcore __glkonim_IglooInterfaceSGIX (kon_igloo.s): selector
     * 0x81a1 stores token 446 then *params. */
    KONA_HP_SETCOLORNORMAL               = 0x1be,

    /* Read at icu_map.tsv 0x1bf; ged.md; libGLcore kon_deform.s
     * __glkonim_DeformSGIX. */

    /* `HP_DEFORM` (0x1bf). Inferred: Map entry 0x52400067: register/pixel
     * form, command 128, count 1, 32-bit words. Register/pixel form, kind 3,
     * command 128 (index 0 qualifier 2). ged.md reads its control word as
     * distributor register 0x292. It sets which deformations (coordinate and
     * texture) are applied. Payload 1: deformation enable mask (bits 0-1;
     * larger values raise GL_INVALID_VALUE in the library). Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0x52400067: command 128, count field 1 (bits 6-10, 0 read as 32),
     * single floats. Sent by libGLcore __glkonim_DeformSGIX (kon_deform.s):
     * token 447, then the mask; mask bits above 3 give error 1281. */
    KONA_HP_DEFORM                       = 0x1bf,

    /* Read at icu_map.tsv 0x1c0; ged_bound_table.tsv idx 29; ge.u deform.S
     * mgeb_DeformationMap3_1 0x482e; libGLcore kon_deform.s deformMapProlog,
     * __glkonim_DeformationMap3fSGIX. */

    /* `HP_DEFORMATION_MAP3_1F` (0x1c0). Inferred: Map entry 0x586ed7c1: pass
     * form, command 221, count 31, 32-bit words. Command 221 is index 29,
     * mgeb_DeformationMap3_1, which loads the deformation map into engine
     * memory and marks the deform modules dirty (mmo_DirtyDeformModule
     * address loaded by it). Payload 31 floats: 7 header words (the map
     * target 0x8194 geometry or 0x8195 texture, then six floats: the u, v and
     * w range ends) followed by 24 floats: a 2 x 2 x 2 grid of control
     * points, three floats each. Established: routed by the host interface
     * with no ARM code, arm1.u token-map entry 0x586ed7c1: command 221, count
     * field 31 (bits 6-10, 0 read as 32), single floats; engine handler
     * `mgeb_DeformationMap3_1` (index 29 of the handler table). Sent by
     * libGLcore __glkonim_DeformationMap3fSGIX (kon_deform.s, token 448):
     * prolog sends the header, then a loop sends the control points. */
    KONA_HP_DEFORMATION_MAP3_1F          = 0x1c0,

    /* Read at icu_map.tsv 0x1c1 (0x586fd1c9, bit 3 set) and 0x1c2;
     * ged_bound_table.tsv idx 31; ge_handlers.md mgesi_IMPbshRegisterWrite
     * (words 0-2); icu_map.tsv 0x1c0 (0x586ed7c1, command 221, count 31);
     * libGLcore kon_deform.s __glkonim_DeformationMap3dSGIX. */

    /* `HP_DEFORMATION_MAP3_1D` (0x1c1). Inferred: Map entry 0x586fd1c9: pass
     * form, command 223, count 7, 32-bit words. Entry bit 3 (chain) is set,
     * so the hardware takes the next entry (0x1c2, 24 doubles) for the words
     * that follow without another token. Command 223 is index 31, where
     * init_ged binds mgesi_IMPbshRegisterWrite, a raster register write that
     * reads command words 0-2; the float form sends the same 7 header words
     * with its 24 points as one 31-word command 221 (mgeb_DeformationMap3_1).
     * So the index-31 binding cannot be what consumes this 7-word header, and
     * how the distributor joins the header to the continuation is unknown: no
     * shipped software or published source depends on it beyond the word
     * order; routes tried: icu_map.tsv, hw_route.tsv, ged.md, the handler
     * listings, kon_deform.s. Payload 7 floats (header only): the same 7
     * header words as the float form (map target and range values); the
     * control points follow as continuation data. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0x586fd1c9:
     * command 223, count field 7 (bits 6-10, 0 read as 32), single floats.
     * Sent by libGLcore __glkonim_DeformationMap3dSGIX (kon_deform.s, token
     * 449): header, then 24 sdc1 double stores. */
    KONA_HP_DEFORMATION_MAP3_1D          = 0x1c1,

    /* Read at icu_map.tsv 0x1c2 (0x786ed601) and 0x1c1; ge.u deform.S
     * mgeb_DeformationMap3_1; libGLcore kon_deform.s
     * __glkonim_DeformationMap3dSGIX. */

    /* `HP_DEFORMATION_MAP3_1D_cont` (0x1c2). Inferred: Map entry 0x786ed601:
     * pass form, command 221, count 24, doubles. Command 221 as the float
     * form: index 29, mgeb_DeformationMap3_1. The token word is never sent;
     * the words follow HP_DEFORMATION_MAP3_1D through the chain bit set on
     * that entry. Payload 24 doubles (48 words): the 24 coordinates of the 2
     * x 2 x 2 control grid (8 points, three doubles each). Established:
     * routed by the host interface with no ARM code, arm1.u token-map entry
     * 0x786ed601: command 221, count field 24 (bits 6-10, 0 read as 32),
     * doubles; engine handler `mgeb_DeformationMap3_1` (index 29 of the
     * handler table). No sender found as a token (no store of 450 found in
     * libGLcore, kernel, kona.so or irsaudit); the data are the 24 doubles
     * __glkonim_DeformationMap3dSGIX sends after the header. */
    KONA_HP_DEFORMATION_MAP3_1D_cont     = 0x1c2,

    /* Read at icu_map.tsv 0x1c3; ged_bound_table.tsv idx 30; ge.u deform.S
     * mgeb_LoadIdentityDeformation 0x4806 (reads operand 0); libGLcore
     * kon_deform.s __glkonim_LoadIdentityDeformationMapSGIX. */

    /* `HP_LOAD_IDENTITY_DEFORMATION` (0x1c3). Inferred: Map entry 0x386f5041:
     * pass form, command 222, count 1, type 1. Command 222 is index 30,
     * mgeb_LoadIdentityDeformation (23 words), which resets the selected
     * deformation map to the identity map. Payload 1: mask of deformation
     * types to reset (low two bits). Established: routed by the host
     * interface with no ARM code, arm1.u token-map entry 0x386f5041: command
     * 222, count field 1 (bits 6-10, 0 read as 32), type 1; engine handler
     * `mgeb_LoadIdentityDeformation` (index 30 of the handler table).
     * Established: libGLcore.so `__glkonim_LoadIdentityDeformationMapSGIX`
     * stores 1 word after the token. Sent by libGLcore
     * __glkonim_LoadIdentityDeformationMapSGIX (kon_deform.s): token 451 then
     * mask & 3. */
    KONA_HP_LOAD_IDENTITY_DEFORMATION    = 0x1c3,

    /* Read at arm1.u arm_bind_arm_tex_cache 0x0c0252f4 (r9+0x3c; tex_cache
     * 0x0409086c, 8 bytes per entry). */

    /* `HP_BIND_ARM_TEX_CACHE` (0x1c4). Established: Marks that cache entry
     * free by writing minus one into both its load id and draw id words, so
     * later binds see no pending load or draw for it. Payload 1:
     * texture-cache index. Established: the token map runs
     * `arm_bind_arm_tex_cache` at arm1.u 0x0c0252f4. Sent by libGLcore.so
     * bindARMTexCache (texture/kon_texture_api.s, token 452). */
    KONA_HP_BIND_ARM_TEX_CACHE           = 0x1c4,

    /* Engine handlers whose slots the code of `arm_free_arm_tex_cache` loads,
     * in order: `mgesi_FillTMLoadFifo`. Read at arm1.u arm_free_arm_tex_cache
     * 0x0c025310 (tex_cache 0x0409086c; tbus_regwrite 0x0c015298; slot 123;
     * port 0x4f4). */

    /* `HP_FREE_ARM_TEX_CACHE` (0x1c5). Inferred: Looks up the two words of
     * that entry in the ARM texture cache. For each non-negative word it
     * writes two raster board registers and starts mgesi_FillTMLoadFifo,
     * releasing that texture-memory table entry. Payload 1: Index of a
     * texture-cache entry. Established: the token map runs
     * `arm_free_arm_tex_cache` at arm1.u 0x0c025310. Sent by libGLcore.so
     * freeARMTexCache (texture/kon_texture_api.s): token 453. */
    KONA_HP_FREE_ARM_TEX_CACHE           = 0x1c5,

    /* Engine handlers whose slots the code of `arm_get_deformation` loads, in
     * order: `mgesi_StartRdata`, `mgesi_GetDeformation`, `mgesi_FinishRdata`.
     * Read at arm1.u arm_get_deformation 0x0c0387dc; ge.u
     * mgesi_GetDeformation (deform.S). */

    /* `HP_GET_DEFORMATION` (0x1c6). Inferred: Query: StartRdata, sends the
     * index (0x474) and runs engine GetDeformation (slot 409), then
     * FinishRdata. Payload 1: deformation index. Established: the token map
     * runs `arm_get_deformation` at arm1.u 0x0c0387dc. Sent by libGLcore.so
     * getDeformationf (kon_deform.s) -> __glkon_get_special(454, index). */
    KONA_HP_GET_DEFORMATION              = 0x1c6,

    /* Engine handlers whose slots the code of `arm_shadow_texture` loads, in
     * order: `mgesi_BshRegisterWriteN`. Read at arm1.u arm_shadow_texture
     * 0x0c026218 (r9+0, r9+0, r9+0x3c; tbus-register words 0x0159101f,
     * 0x015a0c02, 0x0158101e; slot 102 mgesi_BshRegisterWriteN). */

    /* `HP_SHADOW_TEXTURE` (0x1c7). Inferred: Writes three shadow-texture
     * raster registers (0x1f, 0x2, 0x1e words) through the register-write
     * handler: the first word, a constant 2, the second word doubled with
     * 0x3f, then the third word. Payload 3: a texture-compare word, a value
     * doubled and sent as a count, and a third word. Established: the token
     * map runs `arm_shadow_texture` at arm1.u 0x0c026218. No sender found
     * (searched libglcore/asm for a store of 455; setShadowRegs in
     * texture/kon_texture_api.s only keeps state). */
    KONA_HP_SHADOW_TEXTURE               = 0x1c7,

    /* Read at arm1.u arm_idmacopylist_ldma 0x0c014e54. */

    /* `HP_IDMACOPYLIST_LDMA` (0x1c8). Established: Same list-DMA set-up as
     * COPYLIST_LDMA, but the list data arrive from a separate input DMA: the
     * handler jumps to the next token's handler (running that command while
     * the DMA is armed) and afterwards starts the list DMA, waits for
     * completion and clears the source select. Payload 2: list address, byte
     * length. Established: the token map runs `arm_idmacopylist_ldma` at
     * arm1.u 0x0c014e54. Sent by libGLcore.so __glSdramCopyIn (kon_dlist.s)
     * builds a KONA_DMAWRITE (ioctl 10001) block whose command list holds
     * token 456. */
    KONA_HP_IDMACOPYLIST_LDMA            = 0x1c8,

    /* Read at arm1.u arm_tmeshmode 0x0c016854 (r8+0xcf4 record word +0x1114;
     * descriptor 0x52800020). */

    /* `HP_TMESHMODE` (0x1c9). Inferred: Sets or clears bit 0x20 of a flag
     * word in the context record and sends the flag word through descriptor
     * 0x52800020. Payload 1: Triangle-mesh mode flag (value of Igloo
     * interface parameter 0x81a4). Established: the token map runs
     * `arm_tmeshmode` at arm1.u 0x0c016854. Sent by libGLcore.so
     * __glkonim_IglooInterfaceSGIX (kon_igloo.s): token 457. */
    KONA_HP_TMESHMODE                    = 0x1c9,

    /* Engine handlers whose slots the code of `arm_load_ge_xform_attrib`
     * loads, in order: `mgeb_InitFFTFactors`. Read at arm1.u
     * arm_load_ge_xform_attrib 0x0c03ad3c (slot 431; counter value
     * 0x0400003d; e_reference_plane 0x0c015a28, e_clip_plane0). */

    /* `HP_LOAD_GE_XFORM_ATTRIB` (0x1ca). Inferred: Peeks the first word,
     * passes the following 61 words through to all engines, waits, starts
     * mgeb_InitFFTFactors, then re-applies the reference-plane and
     * clip-plane-0 enable states from the enable bytes. Payload 62 (a zero
     * word then 61 floats): Saved transform attribute block restored by a pop
     * (leading zero word, then 61 values). Established: the token map runs
     * `arm_load_ge_xform_attrib` at arm1.u 0x0c03ad3c. Sent by libGLcore.so
     * __glkonim_PopAttrib and __glkonResolveContext (kon_attrib.s): token
     * 458, a zero word, 61 floats via __glkon_datavn. */
    KONA_HP_LOAD_GE_XFORM_ATTRIB         = 0x1ca,

    /* Engine handlers whose slots the code of `arm_get_ge_xform_attrib`
     * loads, in order: `mgesi_StartRdata`, `mgesi_FinishRdata`. Read at
     * arm1.u arm_get_ge_xform_attrib 0x0c03ade0; ge_xform_attrib_to_host
     * 0x0c03ada0. */

    /* `HP_GET_GE_XFORM_ATTRIB` (0x1cb). Inferred: Query: StartRdata,
     * ge_xform_attrib_to_host sends two Eram2ODMA dumps (48 words at ERAM
     * 0x90a, 13 words at 0x94b: transform state), FinishRdata. Payload 1
     * (zero, read and dropped): dummy zero. Established: the token map runs
     * `arm_get_ge_xform_attrib` at arm1.u 0x0c03ade0. Sent by libGLcore.so
     * __glkonCopyContext (kon_attrib.s) -> __glkon_get_special(459,
     * 0), then memcpy of the reply. */
    KONA_HP_GET_GE_XFORM_ATTRIB          = 0x1cb,

    /* Engine handlers whose slots the code of `arm_flush_raster` loads, in
     * order: `mgesi_FlushRM`. Read at arm1.u arm_flush_raster 0x0c014070
     * (slot 399; port 0x4f4). */

    /* `HP_FLUSH_RASTER` (0x1cc). Established: Starts mgesi_FlushRM on all
     * engines, asking the raster boards to flush; no reply is requested.
     * Payload 1: One word, read and ignored. Established: the token map runs
     * `arm_flush_raster` at arm1.u 0x0c014070. Established: libGLcore.so
     * `__glkonim_FlushRasterSGIX` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_FlushRasterSGIX (kon_cfuncs.s). */
    KONA_HP_FLUSH_RASTER                 = 0x1cc,

    /* Engine handlers whose slots the code of `arm_read_instruments` loads,
     * in order: `mgesi_StopInstruments`, `mgesi_StartInstruments`. Read at
     * arm1.u arm_read_instruments 0x0c03cf54. */

    /* `HP_READ_INSTRUMENTS` (0x1cd). Established: If enabled and running:
     * sends marker and read-back addresses as STOP does, runs StopInstruments
     * (421), then increments the counter and runs StartInstruments (420) so
     * counting resumes; not running raises invalid operation. Payload 1:
     * marker value. Established: the token map runs `arm_read_instruments` at
     * arm1.u 0x0c03cf54. Established: libGLcore.so
     * `__glkonim_ReadInstrumentsSGIX` stores 1 word after the token. Sent by
     * libGLcore.so __glkonim_ReadInstrumentsSGIX (kon_cfuncs.s) stores token
     * 461 then the marker. */
    KONA_HP_READ_INSTRUMENTS             = 0x1cd,

    /* Read at arm1.u arm_lazymode 0x0c027e14 (word at r8+0x90c). */

    /* `HP_LAZYMODE` (0x1ce). Inferred: Sets bit 0x200 of a pixel-state word
     * when the flag is zero and clears it when nonzero. Nothing is sent to
     * the engines. Payload 1: Lazy-mode flag (zero or nonzero). Established:
     * the token map runs `arm_lazymode` at arm1.u 0x0c027e14. Sent by
     * libGLcore.so __glKonInitPixelState (kon_pixel.s): token 462. */
    KONA_HP_LAZYMODE                     = 0x1ce,

    /* Read at arm1.u arm_pvertex_cleanup 0x0c039bac-0x0c039bd0. */

    /* `HP_PVERTEX_CLEANUP` (0x1cf). Established: Pops its single word, sends
     * command 189 (descriptor 0x585ed000) with r8 on the filler port 0x880,
     * then restores the distributor transfer mask from r8+0xc90 and the
     * matching descriptor. Payload 1 (libGLcore sends one zero word): one
     * word that the handler discards. Established: the token map runs
     * `arm_pvertex_cleanup` at arm1.u 0x0c039bac. Sent by libGLcore.so
     * __glKonSendPackedVertex (kon_pvertarray.s, li 463, then a zero word). */
    KONA_HP_PVERTEX_CLEANUP              = 0x1cf,

    /* Engine handlers whose slots the code of `arm_subdiv_patch` loads, in
     * order: `mges_SubdivTag`. Read at arm1.u arm_subdiv_patch
     * 0x0c03ffac-0x0c040004; ge_handlers.md slot 425. */

    /* `HP_SUBDIV_PATCH` (0x1d0). Established: Selects one engine (0x430),
     * forwards words 1 and 2 to port 0x840, then in the short form the last
     * word (r9+0x3c), in the long form a third word and 13 more words,
     * followed by the constant 0x20023c, and starts slot 425 mges_SubdivTag
     * through port 0x8c0. Payload variable: 3 words when bit 31 of the first
     * word is set, otherwise 16: Patch descriptor: a flags word (bit 31 set =
     * short form), then two words libGLcore fills with 0x00ffffff and
     * 0x1fffffff; in the long form 13 further words of per-patch vertex data.
     * Established: the token map runs `arm_subdiv_patch` at arm1.u
     * 0x0c03ffac. Sent by libGLcore.so __glkonim_SubdivPatchSGIX
     * (kon_subdiv.s, li 464). */
    KONA_HP_SUBDIV_PATCH                 = 0x1d0,

    /* Read at arm1.u arm_subdiv_patch_setup 0x0c03ff14-0x0c03ff74. */

    /* `HP_SUBDIV_PATCH_SETUP` (0x1d1). Established: Pops the enumerant and
     * maps it to a mask (0x2a21 gives 7, 0x2a23 and 0x2a27 give 0x1f,
     * 0x2a29 gives 0x7f, anything else 0); sends a pass-form filler
     * 0x12121212, then writes the mask as the distributor transfer mask
     * through descriptor 0x55c00020. Payload 1: The patch type enumerant that
     * glkonim_SubdivPatchSGIX keeps in the context (0x2a21, 0x2a23,
     * 0x2a27, 0x2a29 are the values it tests). Established: the token map
     * runs `arm_subdiv_patch_setup` at arm1.u 0x0c03ff14. Sent by
     * libGLcore.so __glkonim_SubdivPatchSGIX (kon_subdiv.s, li 465 with the
     * type word). */
    KONA_HP_SUBDIV_PATCH_SETUP           = 0x1d1,

    /* Read at arm1.u arm_subdiv_patch_cleanup 0x0c03ff7c-0x0c03ffa8. */

    /* `HP_SUBDIV_PATCH_CLEANUP` (0x1d2). Established: Pops its single word,
     * sends a pass-form filler 0x12121212, then restores the distributor
     * transfer mask from r8+0xc90 through descriptor 0x55c00020. Payload 1
     * (libGLcore sends one zero word): one word that the handler discards.
     * Established: the token map runs `arm_subdiv_patch_cleanup` at arm1.u
     * 0x0c03ff7c. Sent by libGLcore.so __glkonim_SubdivPatchSGIX
     * (kon_subdiv.s, li 466 after glEnd). */
    KONA_HP_SUBDIV_PATCH_CLEANUP         = 0x1d2,

    /* Engine handlers whose slots the code of `arm_subdiv_patch_parameter`
     * loads, in order: `mgeb_Subdiv`. Read at arm1.u
     * arm_subdiv_patch_parameter 0x0c03fef0-0x0c03ff0c; ge_handlers.md slot
     * 424. */

    /* `HP_SUBDIV_PATCH_PARAMETER` (0x1d3). Established: Pops two words: the
     * first goes to engine port 0x478, the second to port 0x840, and the
     * handler starts slot 424 mgeb_Subdiv through port 0x8c0. Payload 2:
     * Parameter name (the GL enumerant) and its value (a float for most
     * names, the float truncated to an integer for the others). Established:
     * the token map runs `arm_subdiv_patch_parameter` at arm1.u 0x0c03fef0.
     * Sent by libGLcore.so __glkonim_SubdivPatchParameterfSGIX (kon_subdiv.s,
     * li 467); the i form converts first. */
    KONA_HP_SUBDIV_PATCH_PARAMETER       = 0x1d3,

    /* Read at icu_map.tsv 0x1d4; ged_banks.tsv k=21; ged_listing.txt
     * trigger.s:30-37; ged.md class 12 (subdivision); libGLcore kon_subdiv.s
     * __glkonim_SubdivPatchSGIX. */

    /* `HP_BEGIN_SUBDIV_PATCH` (0x1d4). Inferred: Map entry 0xd8ca8053:
     * geometry form, command 405, count 1, 32-bit words. Geometry form, kind
     * 1 (begin), data-invalid bit, command 405, entry number k = 21 (405 &
     * 63): B[21] is 0x02a (trigger.s:30), which loads mgesi_SubdivEntry into
     * r62 and class 12 into r48. It opens a subdivision patch primitive like
     * the other begin tokens. Payload 1 (zero word): one zero word; the patch
     * vertices follow as packed-vertex commands. Established: routed by the
     * host interface with no ARM code, arm1.u token-map entry 0xd8ca8053:
     * command 405, geometry form, count field 1 (bits 6-8), single floats.
     * Sent by libGLcore __glkonim_SubdivPatchSGIX (kon_subdiv.s): token 468,
     * zero word, then vertices (the listing loads 431, HP_PVERTEX_V3F_T2F, as
     * one of its vertex tokens). */
    KONA_HP_BEGIN_SUBDIV_PATCH           = 0x1d4,

    /* Engine handlers whose slots the code of `arm_bind_texture` loads, in
     * order: `mgesi_TbusRegWrite`, `mgesi_FillTMLoadFifo`,
     * `mgeb_SkipNextTextureAddr`, `mgebi_Texture`, `mgebi_TexEnvComps`,
     * `mgebi_UpdateTexturing`. Read at arm1.u arm_bind_texture 0x0c0256c8 (4
     * plain reads + r9+0x3c; sendTexTable 0x0c02539c; mgebi_Texture,
     * mgebi_TexEnvComps, mgebi_UpdateTexturing, mgesi_FillTMLoadFifo,
     * mgeb_SkipNextTextureAddr). */

    /* `HP_BIND_TEXTURE` (0x1d5). Established: Retires any pending load id of
     * that cache entry (registers 0x1002 and 0x5003), switches or skips the
     * bind if the dimension is not the active one, sends the component count
     * and bind-start marker 0x1022, sends the texture table when it changed,
     * and sends the dimension plus three words to the engine texture handler.
     * Payload 5: texture-cache index (negative for none), packed bind word
     * (bits 28-31 texture dimension, bits 24-27 table kind 0-2, bits 12-23
     * component-format index into a components table, bits 0-11 index of the
     * ARM texture table entry), a third word kept in ARM state, then two more
     * words. Established: the token map runs `arm_bind_texture` at arm1.u
     * 0x0c0256c8. Sent by libGLcore.so bind2DMipmapTexture,
     * bindBicubicTexture, bind3DMipmapTexture, bind3DTexture
     * (texture/kon_texture_api.s, token 469). */
    KONA_HP_BIND_TEXTURE                 = 0x1d5,

    /* Engine handlers whose slots the code of `arm_texgen_pop` loads, in
     * order: `mgeb_LoadEram`. Read at arm1.u arm_texgen_pop 0x0c026554
     * (r9+0x40, counter 0x4000000+0x70, waitForDH; slot 42 mgeb_LoadEram via
     * r8+0x9c). */

    /* `HP_TEXGEN_POP` (0x1d6). Established: Peeks the first word, sets the
     * engine memory address 995, moves all 112 words to the engines with the
     * pass-through counter, waits for it to finish and starts the engines'
     * memory-load handler; this restores texture-generation state after an
     * attribute pop. Payload 112: a first word of zero, then 111 floats of
     * saved texture-generation state (plane and point parameters).
     * Established: the token map runs `arm_texgen_pop` at arm1.u 0x0c026554.
     * Sent by libGLcore.so __glkonim_PopAttrib and __glkonResolveContext
     * (kon_attrib.s, token 470). */
    KONA_HP_TEXGEN_POP                   = 0x1d6,

    /* Read at arm1.u arm_change_post_tex_scale_bias 0x0c025688 (3 plain reads
     * + r9+0x3c; compare with ARM 0x890; descriptor 0x5850d800 = command
     * number 161). */

    /* `HP_CHANGE_POST_TEX_SCALE_BIAS` (0x1d7). Established: If the dimension
     * equals the active one it writes the scale and bias to the engines
     * through descriptor 0x5850d800 (the texture scale-bias command) with a
     * constant 1; for any other dimension it only consumes the words. Payload
     * 4: texture dimension, three floats of post-texture scale and bias.
     * Established: the token map runs `arm_change_post_tex_scale_bias` at
     * arm1.u 0x0c025688. Sent by libGLcore.so __glKonTexParameter
     * (texture/kon_texture_api.s, token 471). */
    KONA_HP_CHANGE_POST_TEX_SCALE_BIAS   = 0x1d7,

    /* Read at icu_map.tsv 0x1d8; arm1.md data-invalid bit; libGLcore
     * kon_dlist.s __glkonPadBlocks. */

    /* `HP_SKIP2` (0x1d8). Inferred: Map entry 0x00600077: register/pixel
     * form, command 192, count 1, untyped. Register/pixel form with the
     * data-invalid bit, kind 3, command 192; the host interface takes the
     * counted words and no engine receives data. Payload 1 (to be skipped): 1
     * filler word(s) to discard; 2 words in all counting the token.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x00600077: command 192, count field 1 (bits 6-10, 0
     * read as 32), untyped words. Sent by libGLcore __glkonPadBlocks
     * (libglcore/asm/KONA/kon_dlist.s): pads the unused tail of display-list
     * blocks: stores of SKIP4 (473) in 4-word groups, with SKIP2 (472) and
     * SKIP5 (474) stores in the remainder paths. */
    KONA_HP_SKIP2                        = 0x1d8,

    /* Read at icu_map.tsv 0x1d9; arm1.md data-invalid bit; libGLcore
     * kon_dlist.s __glkonPadBlocks. */

    /* `HP_SKIP4` (0x1d9). Inferred: Map entry 0x006000f7: register/pixel
     * form, command 192, count 3, untyped. Register/pixel form with the
     * data-invalid bit, kind 3, command 192; the host interface takes the
     * counted words and no engine receives data. Payload 3 (to be skipped): 3
     * filler word(s) to discard; 4 words in all counting the token.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x006000f7: command 192, count field 3 (bits 6-10, 0
     * read as 32), untyped words. Sent by libGLcore __glkonPadBlocks
     * (libglcore/asm/KONA/kon_dlist.s): pads the unused tail of display-list
     * blocks: stores of SKIP4 (473) in 4-word groups, with SKIP2 (472) and
     * SKIP5 (474) stores in the remainder paths. */
    KONA_HP_SKIP4                        = 0x1d9,

    /* Read at icu_map.tsv 0x1da; arm1.md data-invalid bit; libGLcore
     * kon_dlist.s __glkonPadBlocks. */

    /* `HP_SKIP5` (0x1da). Inferred: Map entry 0x00600137: register/pixel
     * form, command 192, count 4, untyped. Register/pixel form with the
     * data-invalid bit, kind 3, command 192; the host interface takes the
     * counted words and no engine receives data. Payload 4 (to be skipped): 4
     * filler word(s) to discard; 5 words in all counting the token.
     * Established: routed by the host interface with no ARM code, arm1.u
     * token-map entry 0x00600137: command 192, count field 4 (bits 6-10, 0
     * read as 32), untyped words. Sent by libGLcore __glkonPadBlocks
     * (libglcore/asm/KONA/kon_dlist.s): pads the unused tail of display-list
     * blocks: stores of SKIP4 (473) in 4-word groups, with SKIP2 (472) and
     * SKIP5 (474) stores in the remainder paths. */
    KONA_HP_SKIP5                        = 0x1da,

    /* Engine handlers whose slots the code of `arm_swap_cntrl` loads, in
     * order: `mgesi_VCbusWrite`. Read at arm1.u arm_swap_cntrl 0x0c013e50;
     * ge.u mgesi_VCbusWrite. */

    /* `HP_SWAP_CNTRL` (0x1db). Established: Requires the privileged stream.
     * Writes the word to display-bus address 0x80 via VCbusWrite (251); if
     * bit 0 is set it also writes 1 to bus address 0x1920, or to 0x8001 when
     * the first word of the board configuration block is nonzero (DPLEX
     * board). Payload 1: swap control flags (bit 0 set for a swap).
     * Established: the token map runs `arm_swap_cntrl` at arm1.u 0x0c013e50.
     * Sent by kona.a(kona_video.o) KONAschedswapbuf (4 sites). */
    KONA_HP_SWAP_CNTRL                   = 0x1db,

    /* Read at arm1.u arm_f3_war 0x0c022380; arm_do_idma reads it at
     * 0x0c0230f8; init_arm sets it to 1 (0x0c001c50). */

    /* `HP_F3_WAR` (0x1dc). Established: Stores the word at the work-around
     * flag next to the engine-to-host record (0x04046fe4); arm_do_idma tests
     * that flag when chunking an input DMA and, per arm1_firmware.md:41,
     * waits for the queue to drain between chunks when it is set. Payload 1:
     * a flag word. Established: the token map runs `arm_f3_war` at arm1.u
     * 0x0c022380. No sender found (not in libGLcore, kernel command table or
     * X module stores). */
    KONA_HP_F3_WAR                       = 0x1dc,

    /* Read at arm1.u arm_ge_intr 0x0c022cfc; start_kcomm 0x0c022800,
     * finish_kcomm 0x0c022980. */

    /* `HP_GE_INTR` (0x1dd). Established: Requires the privileged stream, then
     * writes the event code into the engine-to-host event record through
     * start_kcomm and finish_kcomm so the host interrupt handler sees it;
     * used by the driver to prove the pipe still executes commands. Payload
     * 1: an event code (the driver sends 0x105, the check-pipe event).
     * Established: the token map runs `arm_ge_intr` at arm1.u 0x0c022cfc.
     * Sent by kona.a kona_crash.o kona_checkpipe (payload 0x105,
     * kona_kern.h). */
    KONA_HP_GE_INTR                      = 0x1dd,

    /* Read at arm1.u arm_mem_resume 0x0c024954; arm_mem_suspend 0x0c0248a0
     * (the matching read-back of 0x473, 0x474, 0x472,
     * 0x470, 0x471). */

    /* `HP_MEM_RESUME` (0x1de). Inferred: Requires the privileged stream, then
     * writes the five words back to output-DMA channel 0 so an interrupted
     * swap-out or read-back continues. Payload 5: five output-DMA channel 0
     * register values saved by an earlier suspend, in the order of raster
     * registers 0x453, 0x454, 0x452,
     * 0x450, 0x451. Established: the token map runs `arm_mem_resume` at
     * arm1.u 0x0c024954. Sent by kona.a kona_mem.o kona_mem_resume
     * (kona_mem_resume sends the words the suspend record held,
     * kernel.md:262). */
    KONA_HP_MEM_RESUME                   = 0x1de,

    /* Read at arm1.u arm_mem_suspend 0x0c0248a0. */

    /* `HP_MEM_SUSPEND` (0x1df). Inferred: Requires the privileged stream,
     * sends the event code to the host through the event record with a
     * five-word body, taken as the current output-DMA channel 0 state, and
     * ends the event. Payload 1: an event code (the driver sends 0x104).
     * Established: the token map runs `arm_mem_suspend` at arm1.u 0x0c0248a0.
     * Sent by kona.a kona_mem.o kona_mem_swapout_func (before MEM_SWAPOUT
     * when +5112 is 1). */
    KONA_HP_MEM_SUSPEND                  = 0x1df,

    /* Read at arm1.u arm_tex_arm_cache_index_invalid 0x0c02604c (r9+0,
     * r9+0x3c). */

    /* `HP_TEX_ARM_CACHE_INDEX_INVALID` (0x1e0). Established: Clears one of
     * three remembered texture-table indexes (ARM 0x8b4, 0x8a0 or 0x8b0,
     * chosen by the kind) to minus one when it equals the given index, so the
     * ARM forgets a table entry that was taken away from a texture. Payload
     * 2: slot kind (0, 1 or 2) and a texture-table index. Established: the
     * token map runs `arm_tex_arm_cache_index_invalid` at arm1.u 0x0c02604c.
     * Sent by libGLcore.so stealARMTableCacheCallback
     * (texture/kon_texture_api.s, token 480; sends kinds 0, 2, 1 in turn). */
    KONA_HP_TEX_ARM_CACHE_INDEX_INVALID  = 0x1e0,

    /* Read at arm1.u arm_mem_copydown 0x0c02481c (dispatch through the table
     * at 0x04049508). */

    /* `HP_MEM_COPYDOWN` (0x1e1). Established: Requires the privileged stream,
     * then calls the copy-down routine for that memory pool (ARM, second ARM
     * area, engine or texture memory) to slide a block to a lower offset.
     * Payload 4: pool number 0-3, old offset, new offset, size. Established:
     * the token map runs `arm_mem_copydown` at arm1.u 0x0c02481c. Sent by
     * kona.a kona_mem.o kona_mem_copydown_func (called from
     * kona_mem_compress). */
    KONA_HP_MEM_COPYDOWN                 = 0x1e1,

    /* Read at arm1.u arm_mem_swapin 0x0c024710; arm_mem_swapin_toobig
     * 0x0c024664; send_host_intr 0x0c022d50. */

    /* `HP_MEM_SWAPIN` (0x1e2). Established: Requires the privileged stream,
     * programs input DMA for the host buffer (in pieces above about 64 MB) or
     * accepts the data inline, restores the block into the chosen memory
     * pool, then raises the completion event to the host. Payload 8: pool,
     * offset, size, unit size, copy count, host address high word, host
     * address low word (-1 means the data follow in the command stream),
     * completion event code. Established: the token map runs `arm_mem_swapin`
     * at arm1.u 0x0c024710. Sent by kona.a kona_mem.o kona_mem_swapin_func
     * (called from kona_mem_swapin). */
    KONA_HP_MEM_SWAPIN                   = 0x1e2,

    /* Read at arm1.u arm_mem_swapout 0x0c024504; arm_mem_swapout_toobig
     * 0x0c024430. */

    /* `HP_MEM_SWAPOUT` (0x1e3). Established: Requires the privileged stream,
     * programs output DMA for the host buffer, copies the block out of the
     * chosen pool, then calls arm_mem_suspend with the event code to tell the
     * host it is done; a texture-pool block over 0x10000000 bytes takes the
     * chunking path. Payload 8: pool, offset, size, unit size, copy count,
     * host buffer address high and low words, completion event code.
     * Established: the token map runs `arm_mem_swapout` at arm1.u 0x0c024504.
     * Sent by kona.a kona_mem.o kona_mem_swapout_func (called from
     * kona_mem_swapout). */
    KONA_HP_MEM_SWAPOUT                  = 0x1e3,

    /* Read at arm1.u arm_mem_reserve 0x0c024378 (table at 0x040494d8;
     * routines mem_reserve_arm/sarm/ge/tex 0x0c023b3c-0x0c0241e0). */

    /* `HP_MEM_RESERVE` (0x1e4). Established: Requires the privileged stream,
     * then calls the reserve routine for the pool. That routine checks only
     * the key (0 for the first and second ARM areas and the texture pool, 0
     * to 10 for the engine-memory pool; any other key prints an invalid-key
     * message) and records the page number, plus the page count for the two
     * ARM areas; the engine-memory and texture routines read no size. The
     * kernel's free path sends offset 0 and size 0. Payload 4: pool, key
     * (a byte in the kernel's call, a whole word to the ARM), page number,
     * page count.
     * Established: the token map runs `arm_mem_reserve` at arm1.u 0x0c024378.
     * Sent by kona.a kona_mem.o kona_mem_reserve_func (called from
     * kona_mem_update_driver, kona_mem_free). */
    KONA_HP_MEM_RESERVE                  = 0x1e4,

    /* Engine handlers whose slots the code of `arm_gerollcall` loads, in
     * order: `mgesi_PrintNum`. Read at arm1.u arm_gerollcall 0x0c0042e0; ge.u
     * mgesi_PrintNum; check_pipe_sync 0x0c002f7c. */

    /* `HP_GEROLLCALL` (0x1e5). Established: Prints 'issuing GE Rollcall' with
     * the number and the engine count, then sends mgesi_PrintNum to each
     * engine in turn with the number as operand, and waits for the engine
     * mailbox handshake. Payload 2: a number to print, then an unused last
     * word. Established: the token map runs `arm_gerollcall` at arm1.u
     * 0x0c0042e0. No sender found (not in libGLcore, kernel command table or
     * X module stores). */
    KONA_HP_GEROLLCALL                   = 0x1e5,

    /* Engine handlers whose slots the code of `arm_dispmode` loads, in order:
     * `mgesi_VCbusWrite`. Read at arm1.u arm_dispmode 0x0c013dd4;
     * dgUpdateFMDidSwapTable 0x0c0101b4. */

    /* `HP_DISPMODE` (0x1e6). Established: Requires the privileged stream. If
     * the drawable word is nonzero records the display id in the swap-group
     * table (dgUpdateFMDidSwapTable), then writes the mode byte to
     * display-bus address = display id via VCbusWrite (251). Payload 3:
     * drawable word (buffer+20), display id, mode byte (hwd_mode).
     * Established: the token map runs `arm_dispmode` at arm1.u 0x0c013dd4.
     * Sent by kona.a(kona_video.o) KONAschedswapbuf, KONAschedmgrswapbuf,
     * KONAsetdisplaymode. */
    KONA_HP_DISPMODE                     = 0x1e6,

    /* Engine handlers whose slots the code of `arm_retrace_seqid` loads, in
     * order: `mgesi_VCbusWrite`. Read at arm1.u arm_retrace_seqid 0x0c013f5c;
     * tbus_regwrite 0x0c015298. */

    /* `HP_RETRACE_SEQID` (0x1e7). Established: Requires the privileged
     * stream. Sends six display-bus writes of values 1 to 6 to address 0x7f,
     * then writes the sequence number to raster register 0x420, so it passes
     * through behind earlier drawing; the kernel reads it back from the video
     * sequence register at the next retrace. Payload 1: retrace sequence
     * number. Established: the token map runs `arm_retrace_seqid` at arm1.u
     * 0x0c013f5c. Sent by kona.a(kona_video.o) kona_retrace_activate and
     * KONAschedmgrswapbuf. */
    KONA_HP_RETRACE_SEQID                = 0x1e7,

    /* Read at arm1.u arm_arm_nop 0x0c022d70. */

    /* `HP_ARM_NOP` (0x1e8). Established: Reads the count and checks each
     * following word against its index, printing 'got bogus data' with
     * received and expected values on a mismatch; it exists to test that the
     * command path delivers words in order. Payload 1 + N (count N, then N
     * words counting 0 to N-1): a word count N followed by the sequence 0, 1,
     * ... N-1. Established: the token map runs `arm_arm_nop` at arm1.u
     * 0x0c022d70. No sender found (not in libGLcore, kernel command table or
     * X module stores). */
    KONA_HP_ARM_NOP                      = 0x1e8,

    /* Read at arm1.u arm_getconfig 0x0c022474. */

    /* `HP_GETCONFIG` (0x1e9). Inferred: Query: start_rdata, sends count 478
     * (0x1de) then 478 words of the board-configuration block at 0x04067edc
     * to register 0x476, finish_rdata. Pure firmware data, no engine
     * involved. Payload 1 (read and dropped): none used. Established: the
     * token map runs `arm_getconfig` at arm1.u 0x0c022474. No sender found
     * (searched libglcore/asm for 489/0x1e9, ddx/asm, kona_kernel/disasm and
     * diags/kpm; only kpm's name table lists it). */
    KONA_HP_GETCONFIG                    = 0x1e9,

    /* Read at arm1.u arm_pipe_sync 0x0c0042c0; check_pipe_sync 0x0c002f7c. */

    /* `HP_PIPE_SYNC` (0x1ea). Established: Loops on check_pipe_sync until it
     * returns 0, which means an engine echoed a random time-stamp nonce
     * through the engine mailbox, so the command only completes after the
     * engines have caught up. Payload 1: a value passed to the sync check (0
     * prints the result messages). Established: the token map runs
     * `arm_pipe_sync` at arm1.u 0x0c0042c0. No sender found (not in
     * libGLcore, kernel command table or X module stores). */
    KONA_HP_PIPE_SYNC                    = 0x1ea,

    /* Read at arm1.u arm_do_idma 0x0c022df4-0x0c023294. */

    /* `HP_DO_IDMA` (0x1eb). Established: Requires the privileged stream.
     * Programs the input DMA (0x200010 page, 0x200014 offset, 0x200018
     * length) in pieces of up to 0x3fffff8 bytes, adjusting for line length
     * and stride when they differ from length, sets the pass-through counter
     * 0x200058 with bit 27, starts it (0x20001c = 1) and waits for the FIFO
     * status; a nonzero flags word is sent to the host as an interrupt event;
     * afterwards calls the pending end-of-image routine at context word
     * +0x73c. Payload 6: pool page number, offset, length, line length,
     * stride, flags. Established: the token map runs `arm_do_idma` at arm1.u
     * 0x0c022df4. Sent by kona.a(kona_dma.o) kona_idma; libGLcore
     * SendPixelsToPipe path (docs/ge.md). */
    KONA_HP_DO_IDMA                      = 0x1eb,

    /* Read at arm1.u arm_eeprom_op 0x0c01a0ec; eeprom_load 0x0c01a230. */

    /* `HP_EEPROM_OP` (0x1ec). Inferred: Dispatches on the first word to the
     * board EEPROM routines (load, read, setup, check, identify) and returns
     * the result or the data to the host through the read-back registers;
     * operation 6 zeroes four words in scratch and writes them to EEPROM
     * offset 0x20000. Payload variable: operation 1-6, then operation
     * arguments: operation number (1 load, 2 read, 3 setup, 4 check, 5
     * identify, 6 invalidate) and address and length. Established: the token
     * map runs `arm_eeprom_op` at arm1.u 0x0c01a0ec. No sender found; the
     * ireeprom tool (diags/KONA_bin/ireeprom) is the probable sender but it
     * was not read. */
    KONA_HP_EEPROM_OP                    = 0x1ec,

    /* Read at arm1.u arm_dmapool_setup 0x0c022398. */

    /* `HP_DMAPOOL_SETUP` (0x1ed). Established: Requires the privileged
     * stream, then keeps the high word, the low word with its page offset
     * cleared, and the length in the ARM data block that arm_execlist_idma
     * and the list-copy handlers read when they fetch display lists from the
     * host pool. Payload 3: pool address high word, pool address low word,
     * pool length in bytes. Established: the token map runs
     * `arm_dmapool_setup` at arm1.u 0x0c022398. Sent by kona.a kona_dma.o
     * kona_dmapool_update_pipe (followed by GED_NOP and a zero word). */
    KONA_HP_DMAPOOL_SETUP                = 0x1ed,

    /* Read at arm1.u arm_validate_readclip 0x0c018574 (stores
     * r8+0x886..0x889, 0x88a,
     * 0x88b, 0x1ea..0x1ef; _printf,
     * arm_badcmd). */

    /* `HP_VALIDATE_READCLIP` (0x1ee). Established: Refuses with the
     * bad-command path and a privilege message when the privileged-host bit
     * is clear. Otherwise stores the words as 16-bit shadow values for the
     * read clip and recomputes the read bank assignment bytes. Payload 3:
     * Read-drawable clip words: two clip words from the read drawable and its
     * resource word (R+8, R+12, R+60). Established: the token map runs
     * `arm_validate_readclip` at arm1.u 0x0c018574. Sent by
     * kona.a(kona_context.o) KONAvalidateclip and kona_act_pcx; payload
     * layout in kona_kernel/include/kona_kern.h. */
    KONA_HP_VALIDATE_READCLIP            = 0x1ee,

    /* Read at arm1.u arm_ged_verif_load 0x0c012ae4; compute_gedxfermask
     * 0x0c012a98. */

    /* `HP_GED_VERIF_LOAD` (0x1ef). Inferred: Calls load_ged, sets the
     * command-source register to the host FIFO, stores the three words into
     * the host-interface word-count, pass-through count and begin/end state
     * registers, then computes the distributor transfer masks with every
     * attribute enabled for the verification run. Payload 4: values for the
     * word-count register (0x20005c), the pass-through counter (0x200058) and
     * the begin/end state (0x200068), then an unused last word. Established:
     * the token map runs `arm_ged_verif_load` at arm1.u 0x0c012ae4. No sender
     * found (not in libGLcore, kernel command table or X module stores). */
    KONA_HP_GED_VERIF_LOAD               = 0x1ef,

    /* Engine handlers whose slots the code of `arm_ged_verif_dump` loads, in
     * order: `mges_DiagDeactivate`. Read at arm1.u arm_ged_verif_dump
     * 0x0c012b2c; ge.u mges_DiagDeactivate; deactivate_ged 0x0c021864. */

    /* `HP_GED_VERIF_DUMP` (0x1f0). Inferred: Sets the pass-through counter to
     * the no-transfer value, clears the word count and begin/end state, sends
     * the word and mges_DiagDeactivate to one engine, then deactivates the
     * distributor so its state can be read out for a verification run.
     * Payload 2: one data word sent to an engine, then an unused last word.
     * Established: the token map runs `arm_ged_verif_dump` at arm1.u
     * 0x0c012b2c. No sender found (not in libGLcore, kernel command table or
     * X module stores). */
    KONA_HP_GED_VERIF_DUMP               = 0x1f0,

    /* Engine handlers whose slots the code of `arm_pipe_setup` loads, in
     * order: `mgesi_PipeSetup`. Read at arm1.u arm_pipe_setup 0x0c023298;
     * ge.u mgesi_PipeSetup. */

    /* `HP_PIPE_SETUP` (0x1f1). Established: Stores the three words as the
     * event record location and then sends mgesi_PipeSetup, bracketed by a
     * register write of 1 then 0, to each engine, so the engines can post
     * events and text into host memory. Payload 3: page number, page offset
     * and length (16 KB) of the engine-to-host event record. Established: the
     * token map runs `arm_pipe_setup` at arm1.u 0x0c023298. Sent by kona.a
     * kona_setup.o KONAstart (pipe state +2592, +2596, 0x4000). */
    KONA_HP_PIPE_SETUP                   = 0x1f1,

    /* Read at arm1.u arm_rdata_setup 0x0c022448; start_rdata 0x0c0224d4. */

    /* `HP_RDATA_SETUP` (0x1f2). Established: Keeps the words at ARM RAM
     * 0xc98, 0xc9c (low word page-masked) and 0xca0 and clears the
     * select-feedback active flag; start_rdata later programs the output-DMA
     * registers from them for every reply to the host. Payload 3: read-back
     * buffer address high word, address low word, length (0x4000).
     * Established: the token map runs `arm_rdata_setup` at arm1.u 0x0c022448.
     * Sent by kona.a kona_context.o KONApcxswap (record +8, +12 and 0x4000). */
    KONA_HP_RDATA_SETUP                  = 0x1f2,

    /* Engine handlers whose slots the code of `arm_validate_clip` loads, in
     * order: `mgesi_TbusRegWrite`. Read at arm1.u arm_validate_clip
     * 0x0c018168 (registers IMP_ADDR 0x1c0b, PG_WIN_OFFSET_X 0x0807,
     * PG_WIN_OFFSET_Y 0x0808, IMP_CLIP 0x1c06, plus one mgesi_TbusRegWrite;
     * resolve_scissor). */

    /* `HP_VALIDATE_CLIP` (0x1f3). Inferred: Privilege-checked. Stores window
     * and clip size words into the shadow, adjusts the six bank bytes by the
     * change in the clip origin, writes the address, window offset x and y
     * and clip registers, then reruns resolve_scissor. Payload 11:
     * Draw-drawable clip description: four words from the drawable, four
     * words from the clip list, and three further words (R+8..R+20, list
     * +0..+12, R+60, R+40, R+44). Established: the token map runs
     * `arm_validate_clip` at arm1.u 0x0c018168. Sent by
     * kona.a(kona_context.o) KONAvalidateclip and kona_act_pcx;
     * kona_kernel/include/kona_kern.h lines 136-138. */
    KONA_HP_VALIDATE_CLIP                = 0x1f3,

    /* Read at arm1.u arm_validate_bank 0x0c013d30 (resolve_banks 0x0c01392c). */

    /* `HP_VALIDATE_BANK` (0x1f4). Established: Refuses with a privilege
     * message and the bad-command path when the privilege bit is clear.
     * Otherwise stores the first word at r8+0x1dc and the second at r8+0x1f0
     * and re-resolves the banks. Payload 2: Display bank numbers of the draw
     * and read drawables (halfwords at offset 18 of each, sign-extended).
     * Established: the token map runs `arm_validate_bank` at arm1.u
     * 0x0c013d30. Sent by kona.a(kona_context.o) kona_act_pcx and
     * KONAvalidateclip (kona_context.s lines near token 500); docs/dg.md line
     * 48; kona_kern.h lines 142-145. */
    KONA_HP_VALIDATE_BANK                = 0x1f4,

    /* Read at arm1.u arm_start_selectfeed 0x0c022a50. */

    /* `HP_START_SELECTFEED` (0x1f5). Established: Requires the privileged
     * stream, marks a feed active, programs output-DMA channel 0 through
     * raster registers 0x450-0x456, and with snapshot 1 keeps a copy for
     * HP_RESTART_SELECTFEED. Payload 6: buffer address high word, address low
     * word, length, line length, stride, snapshot flag. Established: the
     * token map runs `arm_start_selectfeed` at arm1.u 0x0c022a50. Sent by
     * kona.a kona_dma.o kona_start_selectfeed. */
    KONA_HP_START_SELECTFEED             = 0x1f5,

    /* Read at arm1.u arm_finish_selectfeed 0x0c022c40. */

    /* `HP_FINISH_SELECTFEED` (0x1f6). Established: Requires the privileged
     * stream, clears the feed flag, posts an event record with the code, the
     * slot index and two zero-valued status words through start_kcomm and
     * finish_kcomm, and restores channel 0 to its idle values. Payload 2:
     * event code (256) and the context slot index. Established: the token map
     * runs `arm_finish_selectfeed` at arm1.u 0x0c022c40. Sent by kona.a
     * kona_dma.o kona_finish_selectfeed. */
    KONA_HP_FINISH_SELECTFEED            = 0x1f6,

    /* Engine handlers whose slots the code of `arm_context_destroy` loads, in
     * order: `mgeb_ContextDestroy`. Read at arm1.u arm_context_destroy
     * 0x0c021650; ge.u mgeb_ContextDestroy. */

    /* `HP_CONTEXT_DESTROY` (0x1f7). Established: Requires the privileged
     * stream, overwrites the saved register areas, the ARM state block and
     * the texture record block with the fill value, then sends
     * mgeb_ContextDestroy to the engines with the same value. Payload 1: a
     * fill value (poison pattern). Established: the token map runs
     * `arm_context_destroy` at arm1.u 0x0c021650. No sender found (kernel
     * command table does not list it). */
    KONA_HP_CONTEXT_DESTROY              = 0x1f7,

    /* Engine handlers whose slots the code of `arm_context_mopup` loads, in
     * order: `mgebi_NullCommand`, `mgeb_ContextDeactReconfigureFifo`. Read at
     * arm1.u arm_context_mopup 0x0c02226c; ge.u mgebi_NullCommand,
     * mgeb_ContextDeactReconfigureFifo. */

    /* `HP_CONTEXT_MOPUP` (0x1f8). Established: Requires the privileged
     * stream, resets the host-interface registers and ARM context bookkeeping
     * to idle, loads the NullCommand and ReconfigureFifo handler addresses
     * into engine ports 0x4fc and 0x4f8, writes the numbers 1 to 9 to all
     * engines, then posts the event code with start_kcomm and finish_kcomm.
     * Payload 1: completion event code (the driver relies on 0x103).
     * Established: the token map runs `arm_context_mopup` at arm1.u
     * 0x0c02226c. Sent by kona.a kona_ddrn.o KONAdestroyddrn. */
    KONA_HP_CONTEXT_MOPUP                = 0x1f8,

    /* Engine handlers whose slots the code of `arm_context_load` loads, in
     * order: `mges_ContextLoadODMA`, `mges_ContextLoadBEF`,
     * `mgeb_ContextLoadCram`, `mgeb_ContextLoadWram`. Read at arm1.u
     * arm_context_load 0x0c02112c; ge.u mges_ContextLoadODMA,
     * mges_ContextLoadBEF, mgeb_ContextLoadCram, mgeb_ContextLoadWram. */

    /* `HP_CONTEXT_LOAD` (0x1f9). Established: Requires the privileged stream,
     * fetches the saved context image by input DMA or from the stream,
     * verifies its header, then dispatches each record to its engine or ARM
     * region, including the distributor registers and engine memories.
     * Payload 4: image length in bytes, host address high word, host address
     * low word (-1 means data follow in the stream), end marker 0xedededed.
     * Established: the token map runs `arm_context_load` at arm1.u
     * 0x0c02112c. Sent by kona.a kona_context.o KONApcxswap. */
    KONA_HP_CONTEXT_LOAD                 = 0x1f9,

    /* Engine handlers whose slots the code of `arm_context_activate` loads,
     * in order: `mgeb_ContextLoadFlagRegs`, `mgeb_DisableUserClipPlane`,
     * `mges_TBUS_1`, `mgeb_CullFace`. Read at arm1.u arm_context_activate
     * 0x0c0209dc; ge.u mgeb_ContextLoadFlagRegs. */

    /* `HP_CONTEXT_ACTIVATE` (0x1fa). Inferred: Requires the privileged
     * stream, restores engine registers, the X or GL pixel state, private ARM
     * state, the engine FIFO and the distributor from the loaded image, sends
     * the event to the host and re-enables the host interface. Payload 1 (the
     * event word); one more word is read in some saved states: a completion
     * event code (sent to the host interrupt when above 0x100). Established:
     * the token map runs `arm_context_activate` at arm1.u 0x0c0209dc. No
     * sender found in the driver: kona_kern.h says the activate token is a
     * word the pipe writes into the saved image header, not a constant in any
     * member. */
    KONA_HP_CONTEXT_ACTIVATE             = 0x1fa,

    /* Read at arm1.u arm_context_fifo_sync 0x0c021770. */

    /* `HP_CONTEXT_FIFO_SYNC` (0x1fb). Established: Checks the
     * privileged-stream flag and returns with no further effect; with the
     * flag clear it prints a privilege violation and treats the command as
     * bad. Payload 0: nothing. Established: the token map runs
     * `arm_context_fifo_sync` at arm1.u 0x0c021770. No sender found (kernel
     * command table does not list it). */
    KONA_HP_CONTEXT_FIFO_SYNC            = 0x1fb,

    /* Engine handlers whose slots the code of `arm_context_deactivate` loads,
     * in order: `mges_ContextDeactGED`, `mgeb_ContextDeactReconfigureFifo`,
     * `mges_ContextDeactFinish`. Read at arm1.u arm_context_deactivate
     * 0x0c022188; ge.u mges_ContextDeactGED,
     * mgeb_ContextDeactReconfigureFifo, mges_ContextDeactFinish. */

    /* `HP_CONTEXT_DEACTIVATE` (0x1fc). Established: Requires the privileged
     * stream, stops the host interface, distributor and engines, saves ARM
     * state, sends the slot index and mges_ContextDeactFinish to the engines
     * so the context image is written out, then clears a status register.
     * Payload 1: context slot index. Established: the token map runs
     * `arm_context_deactivate` at arm1.u 0x0c022188. Sent by kona.a
     * kona_context.o KONApcxswap. */
    KONA_HP_CONTEXT_DEACTIVATE           = 0x1fc,

    /* Engine handlers whose slots the code of `arm_context_init` loads, in
     * order: `mgeb_ContextLoadEram`. Read at arm1.u arm_context_init
     * 0x0c01fe04; context_init 0x0c01fd50; ge.u mgeb_ContextLoadEram. */

    /* `HP_CONTEXT_INIT` (0x1fd). Established: Requires the privileged stream,
     * builds the default GL state (first call only), keeps the three words in
     * ARM RAM, and sends them to the engines with mgeb_ContextLoadEram so the
     * engine memory knows where the context image lives. Payload 3: save-area
     * address high word, address low word, size (0x10000). Established: the
     * token map runs `arm_context_init` at arm1.u 0x0c01fe04. Sent by kona.a
     * kona_context.o KONApcxswap (KONA_ADDR_HI, KONA_ADDR_LO, 0x10000). */
    KONA_HP_CONTEXT_INIT                 = 0x1fd,

    /* Read at arm1.u arm_kernel_private 0x0c022394. */

    /* `HP_KERNEL_PRIVATE` (0x1fe). Established: The handler is a single
     * return (mov pc, lr): it reads no payload and sends nothing. Payload 0:
     * nothing read. Established: the token map runs `arm_kernel_private` at
     * arm1.u 0x0c022394. No sender found: no libGLcore, X module or kernel
     * constant store of 0x1fe (the kernel commands table has no 0x1fe; its
     * highest constants are 0x1fc and 0x1fd). */
    KONA_HP_KERNEL_PRIVATE               = 0x1fe,

    /* Read at arm1.u arm_wg_flush_1 0x0c026644 (b 0x0c0017f4); arm_badcmd
     * 0x0c0017f4-0x0c001854. */

    /* `HP_WG_FLUSH_1` (0x1ff). Inferred: The token map runs a one-instruction
     * stub at 0x0c026644 that branches to arm_badcmd; that prints the current
     * and previous token numbers, reads and prints 100 payload words, then
     * spins reading words, so the pipe would hang if the token arrived. Every
     * store of it is on an IP19-host path: setmon KonFlush (0x10032ef0) sends
     * it with 0xdeadbeef only on board type 19 and reads window offset 0x4200
     * instead on types 25 and 27; kona.so stores it, but the IP27 kernel
     * names the pipe KONAL and IP35 KONAD, so Xsgi loads konal.so or konad.so
     * (inferred), which read a word through screen private +16 at the same
     * eleven places. The pipe therefore never receives it on IP27 or IP35.
     * Payload none read by the stub (arm_badcmd drains 100): nothing: the
     * token is refused and no payload is defined. Established: the token map
     * runs `arm_wg_flush_1` at arm1.u 0x0c026644, a stub that ends in
     * `arm_badcmd`. No sender found on IP27 or IP35. setmon
     * KonFlush 0x10032ef0 (board type 19 only); kona.so konCreateWindow,
     * konDestroyWindow, konReadImage and konReadFBBlock store 0xdeadbeef at
     * window offset 0x3fe0 (kon.s: addiu 16352 then sw), a module the IP27
     * and IP35 kernels do not name. */
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
    /* kpm row 0x200, name record at 0x100bb038, printed "**** 0x0" because
     * kpm has no name for it. Inferred: it stands for raster-bus index 0x100,
     * slot 0 of the geometry board's register shadow RAM, not a host token:
     * kpm's rows past 0x1ff follow the address-word high half plus 0x100, and
     * the firmware token map built by init_hip (arm1.u 0x0c001c60) stops at
     * 0x1ff. Established: no production code writes index 0x100. Only the
     * debug loop in `arm_slop` (0x0c038ef0-0x0c038f14) does, on its first
     * pass, pairing it with raster register 0x441 from the befsh_addrs entry
     * at 0x04067c0c, the pack-mode register that normal writes reach through
     * slot 0x110. */
    KONA_HP_KPM_SPARE_0                  = 0x200,

    /* kpm row 0x201 (name record 0x100bb03c, printed "**** 0x1"). Inferred:
     * bus index 0x101, shadow RAM slot 1, by the same row-to-index rule as
     * row 0x200. Established: the `arm_slop` debug loop is its sole writer in
     * arm1.u; its second pass loads register 0x455, the output-DMA line
     * length, from befsh_addrs entry 0x04067c10 and sends it with high half
     * 0x101 (built by the add at 0x0c038efc). The shadow's own copy of 0x455
     * is word 1, index 0x111. */
    KONA_HP_KPM_SPARE_1                  = 0x201,

    /* Third unnamed kpm row, 0x202 at name record 0x100bb040. Inferred: it
     * labels bus index 0x102, shadow RAM slot 2. Established: in arm1.u only
     * the `arm_slop` debug loop reaches that index, carrying the output-DMA
     * stride register 0x456 read from befsh_addrs entry 0x04067c14; nothing
     * restores from slot 2, and the IR diagnostic's shadow test treats it as
     * plain RAM. */
    KONA_HP_KPM_SPARE_2                  = 0x202,

    /* kpm row 0x203 (name record 0x100bb044). Inferred: the label for bus
     * index 0x103, shadow RAM slot 3. Established: written only on the fourth
     * pass of the `arm_slop` debug loop, which pairs it with the first
     * scissor register 0x3fc2 (befsh_addrs entry 0x04067c18); ordinary
     * scissor writes from `resolve_scissor` go through high half 0x113. */
    KONA_HP_KPM_SPARE_3                  = 0x203,

    /* kpm row 0x204, printed "**** 0x4" from name record 0x100bb048.
     * Inferred: bus index 0x104, shadow slot 4. Established: its one writer
     * is the `arm_slop` debug loop (pass 5), with the y scissor register
     * 0x3fc3 taken from befsh_addrs entry 0x04067c1c. No production address
     * word has high half 0x104. */
    KONA_HP_KPM_SPARE_4                  = 0x204,

    /* kpm row 0x205 (record 0x100bb04c). Inferred: names bus index 0x105,
     * shadow RAM slot 5. Established: the sixth pass of the `arm_slop` loop
     * writes the first rectangle start register 0x3fc4 (befsh_addrs entry
     * 0x04067c20) through this index; the shadow keeps that register as word
     * 5 at index 0x115, and no production constant forms 0x105. */
    KONA_HP_KPM_SPARE_5                  = 0x205,

    /* Unnamed kpm row 0x206 (record 0x100bb050). Inferred: shadow slot 6, bus
     * index 0x106. Established: reached only by the `arm_slop` debug loop,
     * whose seventh pass sends register 0x3fc5 (befsh_addrs entry 0x04067c24)
     * with this high half. */
    KONA_HP_KPM_SPARE_6                  = 0x206,

    /* kpm row 0x207 at name record 0x100bb054, printed with a bare number.
     * Inferred: bus index 0x107, slot 7 of the shadow RAM. Established: no
     * arm1.u or ge.u constant carries high half 0x107; only the `arm_slop`
     * loop's eighth pass does, with rectangle register 0x3fc6 from
     * befsh_addrs entry 0x04067c28. */
    KONA_HP_KPM_SPARE_7                  = 0x207,

    /* kpm row 0x208 (name record 0x100bb058). Inferred: shadow slot 8, index
     * 0x108. Established: the ninth `arm_slop` pass writes register 0x3fc7
     * (befsh_addrs entry 0x04067c2c) through it, and no other code in the
     * firmware or the engine program names it. */
    KONA_HP_KPM_SPARE_8                  = 0x208,

    /* kpm row 0x209, record 0x100bb05c. Inferred: it is the name slot for bus
     * index 0x109, shadow RAM slot 9. Established: the tenth pass of the
     * debug loop in `arm_slop` is its only use, carrying register 0x3fc8
     * (befsh_addrs entry 0x04067c30). */
    KONA_HP_KPM_SPARE_9                  = 0x209,

    /* kpm row 0x20a (record 0x100bb060, printed "**** 0xa"). Inferred: index
     * 0x10a, slot 10. Established: written by pass 11 of the `arm_slop` loop
     * with register 0x3fc9 from befsh_addrs entry 0x04067c34; the shadow test
     * in irsaudit writes and reads it like every other slot, but no
     * production restore reads it. */
    KONA_HP_KPM_SPARE_A                  = 0x20a,

    /* kpm row 0x20b (record 0x100bb064). Inferred: index 0x10b, shadow slot
     * 11. Established: the `arm_slop` debug pass 12 sends register 0x3fca
     * (befsh_addrs entry 0x04067c38, start-up value 0x100000) with this high
     * half; the production copy of that register lives at slot 0x11b. */
    KONA_HP_KPM_SPARE_B                  = 0x20b,

    /* kpm row 0x20c, name record 0x100bb068. Inferred: shadow RAM slot 12 at
     * bus index 0x10c. Established: only pass 13 of the `arm_slop` debug loop
     * uses the index, with the last rectangle register 0x3fcb from
     * befsh_addrs entry 0x04067c3c. */
    KONA_HP_KPM_SPARE_C                  = 0x20c,

    /* kpm row 0x20d (record 0x100bb06c). Inferred: bus index 0x10d, slot 13.
     * Established: written once per run of the `arm_slop` debug case, on its
     * 14th pass, together with the draw-rectangle register 0x3fcc
     * (befsh_addrs entry 0x04067c40); production writes of 0x3fcc use slot
     * 0x11d. */
    KONA_HP_KPM_SPARE_D                  = 0x20d,

    /* The last of kpm's numbered spare rows, 0x20e at name record 0x100bb070.
     * Inferred: index 0x10e, shadow slot 14; the next row, 0x20f, is the one
     * spare row kpm names. Established: the `arm_slop` debug loop's 15th pass
     * sends register 0x3fcd from befsh_addrs entry 0x04067c44 with this high
     * half, and nothing else in arm1.u or ge.u forms it. */
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
 * The enum below has one enumerator per row (KONA_ plus kpm's name), each
 * with its own comment; the arm1.u functions that write the word sit in a
 * separate paragraph before it.
 */

/* ge_token_comments: shadow rows begin */

/* The 89 enumerators below are shadow words, not host tokens; docs/ge-shadow-words.md
 * tabulates each with its register, start-up value, writers and role. */

enum kona_kpm_shadow_row {
    /* Functions that load the slot 0x110 address word: `CommonPixEnd`
     * (0x0c026824), `PixEndReadConvolve` (0x0c026bec), `__glkonSetupPacker`
     * (0x0c028d84). */

    /* `HT_PACK_MODE` (kpm row 0x210, name record at 0x100bb078). Established:
     * shadow word 0; the befsh_addrs entry at 0x04067c0c names raster
     * register 0x0441 and befsh_init gives it start-up value 0x0. Inferred
     * (from the host interface's register of the same role, `HH_PACK_MODE`, 7
     * bits): the pack mode a pixel read-back uses to pack bytes for the host;
     * `__glkonSetupPacker` assembles the value from four small fields (bits
     * 0-1, 2, 3-5 and
     * 6) and writes it with mask 0x7f. Established: arm1.u code writes it
     * through slot 0x110, loading that address word at 3 places, first at
     * 0x0c026824. */
    KONA_HT_PACK_MODE                    = 0x210,

    /* `HT_ODMA_LLEN` (kpm row 0x211, name record at 0x100bb07c). Established:
     * shadow word 1; the befsh_addrs entry at 0x04067c10 names raster
     * register 0x0455 and befsh_init gives it start-up value 0x0. Inferred
     * (from the select-feedback payload order and the host register
     * `HH_ODMA_LLEN`): the output-DMA line length of a transfer to host
     * memory; `arm_start_selectfeed` loads it with its line-length word, and
     * the pixel read-back path `__glkonSendPixelsToHost` clears it.
     * Established: no arm1.u code loads its slot 0x111 address word; the ARM
     * reaches it only in its loops over all 89 words (start-up, context load
     * and one diagnostic case). */
    KONA_HT_ODMA_LLEN                    = 0x211,

    /* `HT_ODMA_STRIDE` (kpm row 0x212, name record at 0x100bb080).
     * Established: shadow word 2; the befsh_addrs entry at 0x04067c14 names
     * raster register 0x0456 and befsh_init gives it start-up value 0x0.
     * Inferred (same basis, `HH_ODMA_STRIDE`): the output-DMA stride from one
     * line to the next in host memory, set from the select-feedback stride
     * word and zeroed by the pixel read-back path; keeping it in the shadow
     * lets a context switch preserve a read in progress. Established: no
     * arm1.u code loads its slot 0x112 address word; the ARM reaches it only
     * in its loops over all 89 words (start-up, context load and one
     * diagnostic case). */
    KONA_HT_ODMA_STRIDE                  = 0x212,

    /* Functions that load the slot 0x113 address word: `resolve_scissor`
     * (0x0c018c14). */

    /* `PGTG_SCIS` (kpm row 0x213, name record at 0x100bb084). Established:
     * shadow word 3; the befsh_addrs entry at 0x04067c18 names raster
     * register 0x3fc2 and befsh_init gives it start-up value 0x3fff8000.
     * Inferred from the fields at kpm raster record 0x10147cb0: the x half of
     * the scissor box shared by the pixel and texture generators,
     * `PGTG_XSMIN` in bits 0-14 and `PGTG_XSMAX` in bits 15-29; the start-up
     * value opens it to the whole 15-bit range, and `resolve_scissor` writes
     * it through this slot (0x0c018c14). Established: arm1.u code writes it
     * through slot 0x113, loading that address word at 1 place, first at
     * 0x0c018c14. */
    KONA_PGTG_SCIS                       = 0x213,

    /* Functions that load the slot 0x114 address word: `resolve_scissor`
     * (0x0c018c38). */

    /* `PGTG_SCIS_1` (kpm row 0x214, name record at 0x100bb088). Established:
     * shadow word 4; the befsh_addrs entry at 0x04067c1c names raster
     * register 0x3fc3 and befsh_init gives it start-up value 0x3fff8000.
     * Inferred: the y half of that scissor box, the second field pair kpm
     * lists under `PGTG_SCIS` (`PGTG_YSMIN` bits 0-14, `PGTG_YSMAX` bits
     * 15-29); the suffix name comes from the irsaudit string pool, and the
     * start-up value again spans the full range. Established: arm1.u code
     * writes it through slot 0x114, loading that address word at 1 place,
     * first at 0x0c018c38. */
    KONA_PGTG_SCIS_1                     = 0x214,

    /* `PGTG_ZRECT` (kpm row 0x215, name record at 0x100bb08c). Established:
     * shadow word 5; the befsh_addrs entry at 0x04067c20 names raster
     * register 0x3fc4 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10147d00, which lists eight 32-bit or 28-bit
     * fields each starting at bit 0 (X0, X, Y, X0A, XA, YA, ZX, ZY), one per
     * word: this first word is X0, the starting x of the rectangle the pixel
     * generator walks. Established: no arm1.u code loads its slot 0x115
     * address word; the ARM reaches it only in its loops over all 89 words
     * (start-up, context load and one diagnostic case). */
    KONA_PGTG_ZRECT                      = 0x215,

    /* `PGTG_ZRECT_1` (kpm row 0x216, name record at 0x100bb090). Established:
     * shadow word 6; the befsh_addrs entry at 0x04067c24 names raster
     * register 0x3fc5 and befsh_init gives it start-up value 0x0. Inferred:
     * the second field of the rectangle set-up, X, the current x position;
     * base register 0x3fc4 plus one, named `_1` by irsaudit. Established: no
     * arm1.u code loads its slot 0x116 address word; the ARM reaches it only
     * in its loops over all 89 words (start-up, context load and one
     * diagnostic case). */
    KONA_PGTG_ZRECT_1                    = 0x216,

    /* `PGTG_ZRECT_2` (kpm row 0x217, name record at 0x100bb094). Established:
     * shadow word 7; the befsh_addrs entry at 0x04067c28 names raster
     * register 0x3fc6 and befsh_init gives it start-up value 0x0. Inferred:
     * Y, the rectangle's y position, third of the eight words under kpm's
     * `PGTG_ZRECT` record. Established: no arm1.u code loads its slot 0x117
     * address word; the ARM reaches it only in its loops over all 89 words
     * (start-up, context load and one diagnostic case). */
    KONA_PGTG_ZRECT_2                    = 0x217,

    /* `PGTG_ZRECT_3` (kpm row 0x218, name record at 0x100bb098). Established:
     * shadow word 8; the befsh_addrs entry at 0x04067c2c names raster
     * register 0x3fc7 and befsh_init gives it start-up value 0x0. Inferred:
     * X0A, the step added to the starting x per row, the fourth rectangle
     * word. Established: no arm1.u code loads its slot 0x118 address word;
     * the ARM reaches it only in its loops over all 89 words (start-up,
     * context load and one diagnostic case). */
    KONA_PGTG_ZRECT_3                    = 0x218,

    /* `PGTG_ZRECT_4` (kpm row 0x219, name record at 0x100bb09c). Established:
     * shadow word 9; the befsh_addrs entry at 0x04067c30 names raster
     * register 0x3fc8 and befsh_init gives it start-up value 0x0. Inferred:
     * XA, the x step within a row, fifth of the eight rectangle words.
     * Established: no arm1.u code loads its slot 0x119 address word; the ARM
     * reaches it only in its loops over all 89 words (start-up, context load
     * and one diagnostic case). */
    KONA_PGTG_ZRECT_4                    = 0x219,

    /* `PGTG_ZRECT_5` (kpm row 0x21a, name record at 0x100bb0a0). Established:
     * shadow word 10; the befsh_addrs entry at 0x04067c34 names raster
     * register 0x3fc9 and befsh_init gives it start-up value 0x0. Inferred:
     * YA, the y step, sixth rectangle word; zero at start-up like the
     * position words. Established: no arm1.u code loads its slot 0x11a
     * address word; the ARM reaches it only in its loops over all 89 words
     * (start-up, context load and one diagnostic case). */
    KONA_PGTG_ZRECT_5                    = 0x21a,

    /* `PGTG_ZRECT_6` (kpm row 0x21b, name record at 0x100bb0a4). Established:
     * shadow word 11; the befsh_addrs entry at 0x04067c38 names raster
     * register 0x3fca and befsh_init gives it start-up value 0x100000.
     * Inferred: ZX, a 28-bit depth slope in x for rectangle fills; its
     * start-up value 0x100000 is one of only two non-zero rectangle words.
     * Established: no arm1.u code loads its slot 0x11b address word; the ARM
     * reaches it only in its loops over all 89 words (start-up, context load
     * and one diagnostic case). */
    KONA_PGTG_ZRECT_6                    = 0x21b,

    /* `PGTG_ZRECT_7` (kpm row 0x21c, name record at 0x100bb0a8). Established:
     * shadow word 12; the befsh_addrs entry at 0x04067c3c names raster
     * register 0x3fcb and befsh_init gives it start-up value 0x100000.
     * Inferred: ZY, the 28-bit depth slope in y and the last rectangle word,
     * also 0x100000 after start-up. Established: no arm1.u code loads its
     * slot 0x11c address word; the ARM reaches it only in its loops over all
     * 89 words (start-up, context load and one diagnostic case). */
    KONA_PGTG_ZRECT_7                    = 0x21c,

    /* Functions that load the slot 0x11d address word: `CommonPixEnd`
     * (0x0c0266c0), `arm_readpixels` (0x0c02c63c), `videoReadPixels`
     * (0x0c02c784), `arm_copyconvolutionfilter1d` (0x0c036fe8),
     * `arm_copyconvolutionfilter2d` (0x0c037128), `arm_getconvolutionfilter`
     * (0x0c0373d8), `arm_getseparablefilter` (0x0c037510). */

    /* `PGTG_DRECT` (kpm row 0x21d, name record at 0x100bb0ac). Established:
     * shadow word 13; the befsh_addrs entry at 0x04067c40 names raster
     * register 0x3fcc and befsh_init gives it start-up value 0xc010010.
     * Inferred from kpm raster record 0x10147d90: the first draw-rectangle
     * word for pixel operations, with J in bits 0-11, I in 12-23, the scan
     * direction in 24-25 (bottom-left, bottom-right, upper-left,
     * upper-right), and enables for pixel zoom (26), the pixel cache (27) and
     * interlace (28); start-up turns zoom and the cache on. Established:
     * arm1.u code writes it through slot 0x11d, loading that address word at
     * 7 places, first at 0x0c0266c0. */
    KONA_PGTG_DRECT                      = 0x21d,

    /* Functions that load the slot 0x11e address word: `CommonPixEnd`
     * (0x0c0266d4). */

    /* `PGTG_DRECT_1` (kpm row 0x21e, name record at 0x100bb0b0). Established:
     * shadow word 14; the befsh_addrs entry at 0x04067c44 names raster
     * register 0x3fcd and befsh_init gives it start-up value 0x10. Inferred:
     * the second draw-rectangle word, width W in bits 0-11 and starting x X0
     * in 12-23 (the next fields of the `PGTG_DRECT` record, restarting at bit
     * 0); start-up width 16. Established: arm1.u code writes it through slot
     * 0x11e, loading that address word at 1 place, first at 0x0c0266d4. */
    KONA_PGTG_DRECT_1                    = 0x21e,

    /* Functions that load the slot 0x11f address word: `CommonPixEnd`
     * (0x0c0266e8). */

    /* `PGTG_DRECT_2` (kpm row 0x21f, name record at 0x100bb0b4). Established:
     * shadow word 15; the befsh_addrs entry at 0x04067c48 names raster
     * register 0x3fce and befsh_init gives it start-up value 0x0. Inferred:
     * the third draw-rectangle word, the current Y in bits 0-11 and X in
     * 12-23; cleared at start-up. Established: arm1.u code writes it through
     * slot 0x11f, loading that address word at 1 place, first at 0x0c0266e8. */
    KONA_PGTG_DRECT_2                    = 0x21f,

    /* Functions that load the slot 0x120 address word: `init_tg`
     * (0x0c003910), `prim_init` (0x0c0166b4), `x_initregs` (0x0c03d0c8). */

    /* `PGTG_SIZE` (kpm row 0x220, name record at 0x100bb0b8). Established:
     * shadow word 16; the befsh_addrs entry at 0x04067c4c names raster
     * register 0x3fcf and befsh_init gives it start-up value 0x10. Inferred
     * from kpm raster record 0x10147ee0 (fields `PGTG_PBSIZE`, `LBSIZE`,
     * `TBSIZE`, then the image buffer width and height): this word is the
     * point buffer size, 12 bits, 16 after start-up. Established: arm1.u code
     * writes it through slot 0x120, loading that address word at 3 places,
     * first at 0x0c003910. */
    KONA_PGTG_SIZE                       = 0x220,

    /* Functions that load the slot 0x121 address word: `init_tg`
     * (0x0c003928), `prim_init` (0x0c0166cc), `x_initregs` (0x0c03d0e0). */

    /* `PGTG_SIZE_1` (kpm row 0x221, name record at 0x100bb0bc). Established:
     * shadow word 17; the befsh_addrs entry at 0x04067c50 names raster
     * register 0x3fd0 and befsh_init gives it start-up value 0x10. Inferred:
     * the line buffer size of the generators, the second size word, 16 after
     * start-up. Established: arm1.u code writes it through slot 0x121,
     * loading that address word at 3 places, first at 0x0c003928. */
    KONA_PGTG_SIZE_1                     = 0x221,

    /* Functions that load the slot 0x122 address word: `init_tg`
     * (0x0c00393c), `prim_init` (0x0c0166e0), `x_initregs` (0x0c03d0f4). */

    /* `PGTG_SIZE_2` (kpm row 0x222, name record at 0x100bb0c0). Established:
     * shadow word 18; the befsh_addrs entry at 0x04067c54 names raster
     * register 0x3fd1 and befsh_init gives it start-up value 0xf. Inferred:
     * the triangle buffer size, third size word, start-up 15. Established:
     * arm1.u code writes it through slot 0x122, loading that address word at
     * 3 places, first at 0x0c00393c. */
    KONA_PGTG_SIZE_2                     = 0x222,

    /* Functions that load the slot 0x123 address word: `init_tg`
     * (0x0c003954), `prim_init` (0x0c0166f8), `x_initregs` (0x0c03d10c). */

    /* `PGTG_SIZE_3` (kpm row 0x223, name record at 0x100bb0c4). Established:
     * shadow word 19; the befsh_addrs entry at 0x04067c58 names raster
     * register 0x3fd2 and befsh_init gives it start-up value 0xf00f.
     * Inferred: the image buffer's width (bits 0-11) and height (12-23);
     * start-up 0xf00f makes it 15 by 15. Established: arm1.u code writes it
     * through slot 0x123, loading that address word at 3 places, first at
     * 0x0c003954. */
    KONA_PGTG_SIZE_3                     = 0x223,

    /* Functions that load the slot 0x124 address word: `init_tg`
     * (0x0c0038f8), `prim_init` (0x0c01669c), `CommonPixEnd` (0x0c0266fc),
     * `masked_clear` (0x0c03b618), `x_initregs` (0x0c03d128). */

    /* `PGTG_ENABLES` (kpm row 0x224, name record at 0x100bb0c8). Established:
     * shadow word 20; the befsh_addrs entry at 0x04067c5c names raster
     * register 0x3fd3 and befsh_init gives it start-up value 0xf. Inferred
     * from kpm raster record 0x10147f40: four one-bit switches, the texture
     * generator (bit 0), scan conversion (1), the ZPU (2) and the draw-pixels
     * path (3); all four are on after start-up. Established: arm1.u code
     * writes it through slot 0x124, loading that address word at 5 places,
     * first at 0x0c0038f8. */
    KONA_PGTG_ENABLES                    = 0x224,

    /* Functions that load the slot 0x125 address word: `init_pg`
     * (0x0c003810), `arm_samplepattern` (0x0c03c30c), `init_multisample`
     * (0x0c03c468), `multisample_pop` (0x0c03c700). */

    /* `PGTFPIMP_MSLOC` (kpm row 0x225, name record at 0x100bb0cc).
     * Established: shadow word 21; the befsh_addrs entry at 0x04067c60 names
     * raster register 0x3be0 and befsh_init gives it start-up value 0xc8b640.
     * Inferred from kpm raster record 0x10147ba0, named for the pixel
     * generator, texture filter and image processor together: the sub-pixel
     * positions of multisamples 0-3, a 3-bit x and y offset each in bits
     * 0-23. Established: arm1.u code writes it through slot 0x125, loading
     * that address word at 4 places, first at 0x0c003810. */
    KONA_PGTFPIMP_MSLOC                  = 0x225,

    /* Functions that load the slot 0x126 address word: `init_pg`
     * (0x0c003828), `arm_samplepattern` (0x0c03c320), `init_multisample`
     * (0x0c03c488), `multisample_pop` (0x0c03c714). */

    /* `PGTFPIMP_MSLOC_1` (kpm row 0x226, name record at 0x100bb0d0).
     * Established: shadow word 22; the befsh_addrs entry at 0x04067c64 names
     * raster register 0x3be1 and befsh_init gives it start-up value 0x916f6f.
     * Inferred: positions of multisamples 4-7 in the same layout (the second
     * half of the `PGTFPIMP_MSLOC` fields); init_pg writes both words with
     * descriptor 0x584fc800. Established: arm1.u code writes it through slot
     * 0x126, loading that address word at 4 places, first at 0x0c003828. */
    KONA_PGTFPIMP_MSLOC_1                = 0x226,

    /* `PG_GENERAL` (kpm row 0x227, name record at 0x100bb0d4). Established:
     * shadow word 23; the befsh_addrs entry at 0x04067c68 names raster
     * register 0x0800 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10148920: two mode bits, flat shading (bit 0,
     * where kpm calls 0 on and 1 off) and the direction mask source (bit 1,
     * packet or register); init_pg writes 1 here, turning flat shading off.
     * Established: no arm1.u code loads its slot 0x127 address word; the ARM
     * reaches it only in its loops over all 89 words (start-up, context load
     * and one diagnostic case). */
    KONA_PG_GENERAL                      = 0x227,

    /* Functions that load the slot 0x128 address word: `init_pg`
     * (0x0c0037d8). */

    /* `PG_PSPEC` (kpm row 0x228, name record at 0x100bb0d8). Established:
     * shadow word 24; the befsh_addrs entry at 0x04067c6c names raster
     * register 0x080f and befsh_init gives it start-up value 0x100100.
     * Inferred from kpm raster record 0x10148a60: the point size, width in
     * bits 0-11 and height in 12-23; start-up 0x100 in each. Established:
     * arm1.u code writes it through slot 0x128, loading that address word at
     * 1 place, first at 0x0c0037d8. */
    KONA_PG_PSPEC                        = 0x228,

    /* Functions that load the slot 0x129 address word: `prim_init`
     * (0x0c016714). */

    /* `PG_BLOAT` (kpm row 0x229, name record at 0x100bb0dc). Established:
     * shadow word 25; the befsh_addrs entry at 0x04067c70 names raster
     * register 0x0804 and befsh_init gives it start-up value 0x0. Inferred
     * from the name alone (record 0x10148a90 lists no fields): how far the
     * pixel generator widens a primitive, a whole-word value that is zero at
     * start-up. Established: arm1.u code writes it through slot 0x129,
     * loading that address word at 1 place, first at 0x0c016714. */
    KONA_PG_BLOAT                        = 0x229,

    /* Functions that load the slot 0x12a address word: `prim_init`
     * (0x0c01672c). */

    /* `PG_Z_OFF` (kpm row 0x22a, name record at 0x100bb0e0). Established:
     * shadow word 26; the befsh_addrs entry at 0x04067c74 names raster
     * register 0x0805 and befsh_init gives it start-up value 0x0. Inferred
     * from the name alone (record 0x10148aa0, no fields): a depth offset the
     * pixel generator adds, the polygon-offset value, zero at start-up.
     * Established: arm1.u code writes it through slot 0x12a, loading that
     * address word at 1 place, first at 0x0c01672c. */
    KONA_PG_Z_OFF                        = 0x22a,

    /* Functions that load the slot 0x12b address word: `init_pg`
     * (0x0c0037f4), `e_multisample` (0x0c0156b4), `d_multisample`
     * (0x0c015740), `ResolvePolygon` (0x0c015ec8), `ResolveLine`
     * (0x0c016094). */

    /* `PG_MSK` (kpm row 0x22b, name record at 0x100bb0e4). Established:
     * shadow word 27; the befsh_addrs entry at 0x04067c78 names raster
     * register 0x0806 and befsh_init gives it start-up value 0x55. Inferred
     * from kpm raster record 0x10148ab0: five two-bit selectors (`LMASK`
     * first) that pick which ends, edges or sides of a primitive class are
     * drawn, then four two-bit sampling choices, ordinary, multisample or
     * alpha, for points, lines, triangles and one more class (`PSAMPLE`
     * first), and an 8-bit line rule field at bit 18; start-up 0x55.
     * Established: arm1.u code writes it through slot 0x12b, loading that
     * address word at 5 places, first at 0x0c0037f4. */
    KONA_PG_MSK                          = 0x22b,

    /* Functions that load the slot 0x12c address word: `arm_validate_clip`
     * (0x0c018390). */

    /* `PG_WIN_OFFSET_X` (kpm row 0x22c, name record at 0x100bb0e8).
     * Established: shadow word 28; the befsh_addrs entry at 0x04067c7c names
     * raster register 0x0807 and befsh_init gives it start-up value 0x0.
     * Inferred from the name (record 0x10148d60, no fields): the x offset of
     * the window, added to screen x so drawing lands at the window's place in
     * the framebuffer. Established: arm1.u code writes it through slot 0x12c,
     * loading that address word at 1 place, first at 0x0c018390. */
    KONA_PG_WIN_OFFSET_X                 = 0x22c,

    /* Functions that load the slot 0x12d address word: `arm_validate_clip`
     * (0x0c0183bc). */

    /* `PG_WIN_OFFSET_Y` (kpm row 0x22d, name record at 0x100bb0ec).
     * Established: shadow word 29; the befsh_addrs entry at 0x04067c80 names
     * raster register 0x0808 and befsh_init gives it start-up value 0x0.
     * Inferred from the name (record 0x10148d70): the window's y offset, the
     * counterpart of the x word. Established: arm1.u code writes it through
     * slot 0x12d, loading that address word at 1 place, first at 0x0c0183bc. */
    KONA_PG_WIN_OFFSET_Y                 = 0x22d,

    /* Functions that load the slot 0x12e address word: `prim_init`
     * (0x0c016740). */

    /* `PG_SMASK` (kpm row 0x22e, name record at 0x100bb0f0). Established:
     * shadow word 30; the befsh_addrs entry at 0x04067c84 names raster
     * register 0x0809 and befsh_init gives it start-up value 0xffffffff.
     * Inferred (record 0x10148d80, a whole-word register): the multisample
     * coverage mask the pixel generator applies; all ones after start-up, so
     * every sample is written. Established: arm1.u code writes it through
     * slot 0x12e, loading that address word at 1 place, first at 0x0c016740. */
    KONA_PG_SMASK                        = 0x22e,

    /* Functions that load the slot 0x12f address word: `ResolvePolygon`
     * (0x0c015f88), `arm_x_loadstipple` (0x0c035c70), `masked_clear`
     * (0x0c03b604). */

    /* `PG_STIPPLE` (kpm row 0x22f, name record at 0x100bb0f4). Established:
     * shadow word 31; the befsh_addrs entry at 0x04067c88 names raster
     * register 0x080a and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10148d90: the first polygon-stipple word, an
     * enable in bits 0-1 (off, 2D, 1D or both), a 4-bit offset in bits 2-5
     * and an invert bit 6. Established: arm1.u code writes it through slot
     * 0x12f, loading that address word at 3 places, first at 0x0c015f88. */
    KONA_PG_STIPPLE                      = 0x22f,

    /* `PG_STIPPLE_1` (kpm row 0x230, name record at 0x100bb0f8). Established:
     * shadow word 32; the befsh_addrs entry at 0x04067c8c names raster
     * register 0x080b and befsh_init gives it start-up value 0x55. Inferred:
     * the first 8-bit stipple pattern byte, `PAT0` of the `PG_STIPPLE`
     * record; start-up 0x55. Established: no arm1.u code loads its slot 0x130
     * address word; the ARM reaches it only in its loops over all 89 words
     * (start-up, context load and one diagnostic case). */
    KONA_PG_STIPPLE_1                    = 0x230,

    /* `PG_STIPPLE_2` (kpm row 0x231, name record at 0x100bb0fc). Established:
     * shadow word 33; the befsh_addrs entry at 0x04067c90 names raster
     * register 0x080c and befsh_init gives it start-up value 0x55. Inferred:
     * the second pattern byte `PAT1`, also 0x55 at start-up. Established: no
     * arm1.u code loads its slot 0x131 address word; the ARM reaches it only
     * in its loops over all 89 words (start-up, context load and one
     * diagnostic case). */
    KONA_PG_STIPPLE_2                    = 0x231,

    /* Functions that load the slot 0x132 address word: `InitFbState`
     * (0x0c0273f8), `arm_x_loadstipple` (0x0c035c20). */

    /* `PG_STIPPLE_3` (kpm row 0x232, name record at 0x100bb100). Established:
     * shadow word 34; the befsh_addrs entry at 0x04067c94 names raster
     * register 0x080d and befsh_init gives it start-up value 0xff. Inferred:
     * the stipple repeat lengths, x modulus in bits 0-3 and y modulus in bits
     * 4-7; start-up 0xff sets both to 15. Established: arm1.u code writes it
     * through slot 0x132, loading that address word at 2 places, first at
     * 0x0c0273f8. */
    KONA_PG_STIPPLE_3                    = 0x232,

    /* Functions that load the slot 0x133 address word: `ResolveLine`
     * (0x0c01606c). */

    /* `PG_PRU` (kpm row 0x233, name record at 0x100bb104). Established:
     * shadow word 35; the befsh_addrs entry at 0x04067c98 names raster
     * register 0x0810 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10148e50: a single bit choosing the primitive
     * rule unit's mode, none or line. Established: arm1.u code writes it
     * through slot 0x133, loading that address word at 1 place, first at
     * 0x0c01606c. */
    KONA_PG_PRU                          = 0x233,

    /* `IMP_CONFIG` (kpm row 0x234, name record at 0x100bb108). Established:
     * shadow word 36; the befsh_addrs entry at 0x04067c9c names raster
     * register 0x1c00 and befsh_init gives it start-up value 0x3c2. Inferred
     * from kpm raster record 0x10146fa0: the image processor's framebuffer
     * configuration, with pixel size (bits 0-1), colour format (2-5: RGB10,
     * RGBA12, LA16, CI16 and others), per-channel write enables for red,
     * green, blue and alpha (6-9), a bit-mask enable (10), the read format
     * (11-13) and a double CI8 bit (14); start-up 0x3c2 is large pixels,
     * RGB10, all four channels writable. Established: no arm1.u code loads
     * its slot 0x134 address word; the ARM reaches it only in its loops over
     * all 89 words (start-up, context load and one diagnostic case). */
    KONA_IMP_CONFIG                      = 0x234,

    /* Functions that load the slot 0x135 address word: `init_imp`
     * (0x0c003b08), `resolve_banks` (0x0c013a1c), `e_calligraphic_fragment`
     * (0x0c015a7c), `d_calligraphic_fragment` (0x0c015aa8), `SetupReadbackTF`
     * (0x0c033cc8), `arm_accum` (0x0c037f20), `arm_slop` (0x0c038f90),
     * `slop_readword` (0x0c0391fc), `imp_clear` (0x0c03afdc), `masked_clear`
     * (0x0c03b2f8), `accum_clear` (0x0c03b734), `accum_clear32` (0x0c03b8d0),
     * `overlay_clear` (0x0c03bb24), `arm_clear` (0x0c03be64), `word_clear`
     * (0x0c03bf88), `x_initregs` (0x0c03d1ac). */

    /* `IMP_OP` (kpm row 0x235, name record at 0x100bb10c). Established:
     * shadow word 37; the befsh_addrs entry at 0x04067ca0 names raster
     * register 0x1c02 and befsh_init gives it start-up value 0x1. Inferred
     * from kpm raster record 0x101471b0: the image processor's operation,
     * with the draw buffer (bits 0-3), the address packet kind (clear, read,
     * accumulate or copy), clear repeat and clear enables for tag, colour,
     * depth, stencil and accumulation, the read-back format (14-17), the read
     * base, and several mode enables; start-up selects draw buffer 1.
     * Established: arm1.u code writes it through slot 0x135, loading that
     * address word at 16 places, first at 0x0c003b08. */
    KONA_IMP_OP                          = 0x235,

    /* Functions that load the slot 0x136 address word: `init_imp`
     * (0x0c003b20), `arm_colormask` (0x0c012d6c), `e_blend` (0x0c01596c),
     * `d_blend` (0x0c0159f0), `e_color_logic_op` (0x0c015b18),
     * `d_color_logic_op` (0x0c015b98), `masked_clear` (0x0c03b66c),
     * `word_clear` (0x0c03bfd0), `init_multisample` (0x0c03c534),
     * `x_initregs` (0x0c03d1c4). */

    /* `IMP_MS` (kpm row 0x236, name record at 0x100bb110). Established:
     * shadow word 38; the befsh_addrs entry at 0x04067ca4 names raster
     * register 0x1c03 and befsh_init gives it start-up value 0x17f8. Inferred
     * from kpm raster record 0x101473e0: multisample control, an enable, 4 or
     * 8 samples, whether the coverage mask is ANDed or replaced, an 8-bit
     * mask (bits 3-10), a keep-two bit and an optimisation field; start-up
     * sets the whole mask. Established: arm1.u code writes it through slot
     * 0x136, loading that address word at 10 places, first at 0x0c003b20. */
    KONA_IMP_MS                          = 0x236,

    /* Functions that load the slot 0x137 address word: `init_imp`
     * (0x0c003b3c), `arm_validate_clip` (0x0c0184a8), `x_initregs`
     * (0x0c03d1dc). */

    /* `IMP_CLIP` (kpm row 0x237, name record at 0x100bb114). Established:
     * shadow word 39; the befsh_addrs entry at 0x04067ca8 names raster
     * register 0x1c06 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x101474c0: the window-id clip test, an enable
     * bit with a 12-bit reference (bits 1-12) and mask (13-24); off at
     * start-up. Established: arm1.u code writes it through slot 0x137,
     * loading that address word at 3 places, first at 0x0c003b3c. */
    KONA_IMP_CLIP                        = 0x237,

    /* Functions that load the slot 0x138 address word: `init_imp`
     * (0x0c003b54), `arm_buffer_config` (0x0c01341c), `arm_stencilmask`
     * (0x0c014930), `arm_stencilfunc` (0x0c01499c), `e_stencil_test`
     * (0x0c014a60), `d_stencil_test` (0x0c014a88), `depth_init` (0x0c014b1c),
     * `stencil_pop` (0x0c014bb0), `CommonPixEnd` (0x0c0267bc), `SetupRM`
     * (0x0c034130), `masked_clear` (0x0c03b644), `arm_clear` (0x0c03bec0),
     * `x_initregs` (0x0c03d1f0). */

    /* `IMP_SZ0` (kpm row 0x238, name record at 0x100bb118). Established:
     * shadow word 40; the befsh_addrs entry at 0x04067cac names raster
     * register 0x1c07 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10147500: stencil set-up, enable, 1- or 8-bit
     * size, comparison (never to always), and the 8-bit reference, mask and
     * write mask (bits 5-12, 13-20,
     * 21-28). Established: arm1.u code writes it through slot 0x138, loading
     * that address word at 13 places, first at 0x0c003b54. */
    KONA_IMP_SZ0                         = 0x238,

    /* Functions that load the slot 0x139 address word: `init_imp`
     * (0x0c003b6c), `arm_buffer_config` (0x0c0133c0), `arm_depthfunc`
     * (0x0c0147b8), `arm_depthmask` (0x0c0147ec), `e_depth_test`
     * (0x0c01487c), `d_depth_test` (0x0c0148a4), `arm_stencilop`
     * (0x0c014a28), `depth_init` (0x0c014ae8), `stencil_pop` (0x0c014c30),
     * `depth_pop` (0x0c014cd8), `CommonPixEnd` (0x0c026800), `SetupRM`
     * (0x0c03414c), `masked_clear` (0x0c03b658), `word_clear` (0x0c03bfbc),
     * `x_initregs` (0x0c03d204). */

    /* `IMP_SZ1` (kpm row 0x239, name record at 0x100bb11c). Established:
     * shadow word 41; the befsh_addrs entry at 0x04067cb0 names raster
     * register 0x1c08 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10147610: the stencil fail, depth-fail and
     * depth-pass actions (3 bits each), then the depth test enable, depth
     * size (16, 20, 24 or
     * 32 bits), compression, depth function and depth write enable.
     * Established: arm1.u code writes it through slot 0x139, loading that
     * address word at 15 places, first at 0x0c003b6c. */
    KONA_IMP_SZ1                         = 0x239,

    /* Functions that load the slot 0x13a address word: `init_imp`
     * (0x0c003b84), `late_state_init` (0x0c0141ec), `arm_cleardepth`
     * (0x0c014788), `arm_clearstencil` (0x0c0148f0), `depth_pop`
     * (0x0c014dc8), `accum_clear` (0x0c03b818), `accum_clear32` (0x0c03b9d0),
     * `word_clear` (0x0c03bfec). */

    /* `IMP_DEPTH_CLEAR` (kpm row 0x23a, name record at 0x100bb120).
     * Established: shadow word 42; the befsh_addrs entry at 0x04067cb4 names
     * raster register 0x1c09 and befsh_init gives it start-up value 0x0.
     * Inferred from the name (record 0x10147760, a whole word): the value
     * written into the depth buffer by a depth clear. Established: arm1.u
     * code writes it through slot 0x13a, loading that address word at 8
     * places, first at 0x0c003b84. */
    KONA_IMP_DEPTH_CLEAR                 = 0x23a,

    /* Functions that load the slot 0x13b address word: `init_imp`
     * (0x0c003b98), `arm_buffer_config` (0x0c013470), `arm_drawbuffer`
     * (0x0c013bd0), `color_pop` (0x0c014614), `arm_validate_clip`
     * (0x0c018318), `word_clear` (0x0c03bfa4), `x_initregs` (0x0c03d218). */

    /* `IMP_ADDR` (kpm row 0x23b, name record at 0x100bb124). Established:
     * shadow word 43; the befsh_addrs entry at 0x04067cb8 names raster
     * register 0x1c0b and befsh_init gives it start-up value 0x32212301.
     * Inferred from kpm raster record 0x10147780: framebuffer base addresses
     * in 6-bit fields, colour (bits 0-5), multisample (6-11, with a buffer
     * tag at 12), stencil (13-18), depth (19-24) and accumulation (25-30);
     * start-up 0x32212301. Established: arm1.u code writes it through slot
     * 0x13b, loading that address word at 7 places, first at 0x0c003b98. */
    KONA_IMP_ADDR                        = 0x23b,

    /* Functions that load the slot 0x13c address word: `init_imp`
     * (0x0c003bb4), `arm_colormask` (0x0c012d84), `arm_blendequation`
     * (0x0c013064), `color_init` (0x0c01410c), `color_pop` (0x0c0142c4),
     * `arm_blendfunc` (0x0c0158d0), `e_blend` (0x0c015948), `d_blend`
     * (0x0c0159c0), `e_color_logic_op` (0x0c015af4), `d_color_logic_op`
     * (0x0c015b68), `e_logic_op` (0x0c015bd4), `d_logic_op` (0x0c015c08),
     * `arm_logicop` (0x0c015c30), `masked_clear` (0x0c03b5dc), `x_initregs`
     * (0x0c03d230). */

    /* `IMP_BL` (kpm row 0x23c, name record at 0x100bb128). Established:
     * shadow word 44; the befsh_addrs entry at 0x04067cbc names raster
     * register 0x1c0d and befsh_init gives it start-up value 0x11012.
     * Inferred from kpm raster record 0x10147810: blending and logic ops, a
     * logic-op enable and 4-bit op, a blend enable, RGB and alpha equations,
     * source and destination factors for RGB and alpha, and precision and
     * speed-up bits; start-up 0x11012 gives source factor one and destination
     * factor zero for both. Established: arm1.u code writes it through slot
     * 0x13c, loading that address word at 15 places, first at 0x0c003bb4. */
    KONA_IMP_BL                          = 0x23c,

    /* Functions that load the slot 0x13d address word: `init_imp`
     * (0x0c003cc8), `arm_indexmask` (0x0c012e78), `arm_buffer_config`
     * (0x0c013548), `color_init` (0x0c014128), `color_pop` (0x0c014328),
     * `accum_clear` (0x0c03b750), `accum_clear32` (0x0c03b8ec),
     * `overlay_clear` (0x0c03bb50), `arm_clear` (0x0c03be84),
     * `masked_word_clear` (0x0c03c0e4), `x_initregs` (0x0c03d248). */

    /* `IMP_WMASK_BIT` (kpm row 0x23d, name record at 0x100bb12c).
     * Established: shadow word 45; the befsh_addrs entry at 0x04067cc0 names
     * raster register 0x1c14 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10147a40: the per-bit colour write
     * mask for red (bits 0-11) and green (12-23). Established: arm1.u code
     * writes it through slot 0x13d, loading that address word at 11 places,
     * first at 0x0c003cc8. */
    KONA_IMP_WMASK_BIT                   = 0x23d,

    /* Functions that load the slot 0x13e address word: `init_imp`
     * (0x0c003cdc), `color_init` (0x0c01413c), `accum_clear` (0x0c03b764),
     * `accum_clear32` (0x0c03b900), `arm_clear` (0x0c03be98),
     * `masked_word_clear` (0x0c03c0f8), `x_initregs` (0x0c03d260). */

    /* `IMP_WMASK_BIT_1` (kpm row 0x23e, name record at 0x100bb130).
     * Established: shadow word 46; the befsh_addrs entry at 0x04067cc4 names
     * raster register 0x1c15 and befsh_init gives it start-up value 0x0.
     * Inferred: the per-bit write mask for blue (bits 0-11) and alpha
     * (12-23), the second word of `IMP_WMASK_BIT`. Established: arm1.u code
     * writes it through slot 0x13e, loading that address word at 7 places,
     * first at 0x0c003cdc. */
    KONA_IMP_WMASK_BIT_1                 = 0x23e,

    /* Functions that load the slot 0x13f address word: `arm_readpixels`
     * (0x0c02c654), `SetupSubtexload` (0x0c03435c), `SetupTexRead`
     * (0x0c0345dc). */

    /* `COMMON_IFMT` (kpm row 0x23f, name record at 0x100bb134). Established:
     * shadow word 47; the befsh_addrs entry at 0x04067cc8 names raster
     * register 0x3ff8 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10148670: a 5-bit pack code naming the pixel
     * layout on the bus (RGBA4, RGB5A1, R5G6B5,
     * LA8, L16, RGBA8,
     * RGB10A2, LA16, Z32,
     * RGBA16, RGBA12 and others) for the read and texture-read paths.
     * Established: arm1.u code writes it through slot 0x13f, loading that
     * address word at 3 places, first at 0x0c02c654. */
    KONA_COMMON_IFMT                     = 0x23f,

    /* Functions that load the slot 0x140 address word:
     * `PixRM_TextureLoadSetup` (0x0c0365c4). */

    /* `TGTML_TEXLD_MISC` (kpm row 0x240, name record at 0x100bb138).
     * Established: shadow word 48; the befsh_addrs entry at 0x04067ccc names
     * raster register 0x7fc5 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10148860: the texture-load mode, with
     * texel size, a load scissor enable, the target bank, the tiling (2D, 3D,
     * 3D mipmap or bicubic), s and t address widths and an
     * interlaced-download bit; its befsh_addrs entry has bit 30 set, the mark
     * of the texture-load registers. Established: arm1.u code writes it
     * through slot 0x140, loading that address word at 1 place, first at
     * 0x0c0365c4. */
    KONA_TGTML_TEXLD_MISC                = 0x240,

    /* Functions that load the slot 0x141 address word:
     * `PixRM_TextureLoadSetup` (0x0c036618). */

    /* `TGTML_TEXLD_S1ST_RSTART` (kpm row 0x241, name record at 0x100bb13c).
     * Established: shadow word 49; the befsh_addrs entry at 0x04067cd0 names
     * raster register 0x7fc3 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10148800: where a texture load
     * begins, the first s start (bits 0-15) and the r start (16-26).
     * Established: arm1.u code writes it through slot 0x141, loading that
     * address word at 1 place, first at 0x0c036618. */
    KONA_TGTML_TEXLD_S1ST_RSTART         = 0x241,

    /* Functions that load the slot 0x142 address word:
     * `PixRM_TextureLoadSetup` (0x0c036668). */

    /* `TGTML_TEXLD_STSTART` (kpm row 0x242, name record at 0x100bb140).
     * Established: shadow word 50; the befsh_addrs entry at 0x04067cd4 names
     * raster register 0x7fc2 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x101487d0: the s start (bits 0-15) and
     * t start (16-31) of a texture load. Established: arm1.u code writes it
     * through slot 0x142, loading that address word at 1 place, first at
     * 0x0c036668. */
    KONA_TGTML_TEXLD_STSTART             = 0x242,

    /* Functions that load the slot 0x143 address word:
     * `PixRM_TextureLoadSetup` (0x0c036708). */

    /* `TGTML_TEXLD_SIZE` (kpm row 0x243, name record at 0x100bb144).
     * Established: shadow word 51; the befsh_addrs entry at 0x04067cd8 names
     * raster register 0x7fc1 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10148790: the s, t and r sizes of a
     * texture load, four bits each. Established: arm1.u code writes it
     * through slot 0x143, loading that address word at 1 place, first at
     * 0x0c036708. */
    KONA_TGTML_TEXLD_SIZE                = 0x243,

    /* Functions that load the slot 0x144 address word:
     * `PixRM_TextureLoadSetup` (0x0c03675c). */

    /* `TGTML_TEXLD_STEND` (kpm row 0x244, name record at 0x100bb148).
     * Established: shadow word 52; the befsh_addrs entry at 0x04067cdc names
     * raster register 0x7fc4 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10148830: the s end (bits 0-15) and t
     * end (16-31) of a texture load. Established: arm1.u code writes it
     * through slot 0x144, loading that address word at 1 place, first at
     * 0x0c03675c. */
    KONA_TGTML_TEXLD_STEND               = 0x244,

    /* Functions that load the slot 0x145 address word:
     * `PixRM_TextureLoadSetup` (0x0c03677c). */

    /* `TML_TEXLD_GLOBALOFFSET` (kpm row 0x245, name record at 0x100bb14c).
     * Established: shadow word 53; the befsh_addrs entry at 0x04067ce0 names
     * raster register 0x5001 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146500: the texture-memory address
     * a load starts at, a 21-bit offset plus 3 high bits at bit 21.
     * Established: arm1.u code writes it through slot 0x145, loading that
     * address word at 1 place, first at 0x0c03677c. */
    KONA_TML_TEXLD_GLOBALOFFSET          = 0x245,

    /* Functions that load the slot 0x146 address word: `mem_reserve_tex`
     * (0x0c024200), `mem_swapout_tex` (0x0c0242d8), `mem_swapin_tex`
     * (0x0c024350), `SetupRM_TextureBind` (0x0c0368b4). */

    /* `TM_DRAW_GLOBALOFFSET` (kpm row 0x246, name record at 0x100bb150).
     * Established: shadow word 54; the befsh_addrs entry at 0x04067ce4 names
     * raster register 0x101a and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146260: the texture-memory offset
     * used while drawing, the same 21-plus-3-bit layout as the load offset.
     * Established: arm1.u code writes it through slot 0x146, loading that
     * address word at 4 places, first at 0x0c024200. */
    KONA_TM_DRAW_GLOBALOFFSET            = 0x246,

    /* `TM_MEMCONF` (kpm row 0x247, name record at 0x100bb154). Established:
     * shadow word 55; the befsh_addrs entry at 0x04067ce8 names raster
     * register 0x1000 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10145b10: the texture memory's geometry, the
     * number of s and t address bits (4 bits each). Established: no arm1.u
     * code loads its slot 0x147 address word; the ARM reaches it only in its
     * loops over all 89 words (start-up, context load and one diagnostic
     * case). */
    KONA_TM_MEMCONF                      = 0x247,

    /* Functions that load the slot 0x148 address word: `CommonPixEnd`
     * (0x0c026738), `SetupRM_TextureBind` (0x0c036894). */

    /* `TGTM_TEX_SIZE` (kpm row 0x248, name record at 0x100bb158).
     * Established: shadow word 56; the befsh_addrs entry at 0x04067cec names
     * raster register 0x3fd5 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x101484c0: the bound texture's s, t
     * and r sizes (4 bits each) and one address-control bit per axis (bits
     * 12-14) that the texture generator and texture memory share.
     * Established: arm1.u code writes it through slot 0x148, loading that
     * address word at 2 places, first at 0x0c026738. */
    KONA_TGTM_TEX_SIZE                   = 0x248,

    /* Functions that load the slot 0x149 address word:
     * `arm_bind_detail_texture` (0x0c025ffc), `CommonPixEnd` (0x0c026724),
     * `SetupRM_TextureBind` (0x0c036940). */

    /* `TGTMTFT` (kpm row 0x249, name record at 0x100bb15c). Established:
     * shadow word 57; the befsh_addrs entry at 0x04067cf0 names raster
     * register 0x3fd4 and befsh_init gives it start-up value 0x30. Inferred
     * from kpm raster record 0x10148010: the main texture mode,
     * dimensionality (2D, 3D, 3D mipmap or bicubic), minify and magnify
     * filters, shadow compare, clamp style, environment enable, texel format
     * (7 bits at 14) and more; start-up 0x30 selects nearest-mipmap-linear
     * minify and linear magnify, the GL defaults. Established: arm1.u code
     * writes it through slot 0x149, loading that address word at 3 places,
     * first at 0x0c025ffc. */
    KONA_TGTMTFT                         = 0x249,

    /* Functions that load the slot 0x14a address word:
     * `arm_bind_3d_mipmap_texture` (0x0c025d64), `CommonPixEnd` (0x0c026764),
     * `SetupRM_TextureBind` (0x0c0369c4). */

    /* `TG_MAP_LEVEL` (kpm row 0x24a, name record at 0x100bb160). Established:
     * shadow word 58; the befsh_addrs entry at 0x04067cf4 names raster
     * register 0x0c04 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10145a90: the lowest and highest mipmap levels
     * in use, 10 bits each. Established: arm1.u code writes it through slot
     * 0x14a, loading that address word at 3 places, first at 0x0c025d64. */
    KONA_TG_MAP_LEVEL                    = 0x24a,

    /* Functions that load the slot 0x14b address word:
     * `arm_bind_3d_mipmap_texture` (0x0c025d40), `SetupRM_TextureBind`
     * (0x0c036970). */

    /* `TG_LOD_SCALEST` (kpm row 0x24b, name record at 0x100bb164).
     * Established: shadow word 59; the befsh_addrs entry at 0x04067cf8 names
     * raster register 0x0c05 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10145ac0: level-of-detail scale
     * factors for s (bits 0-7) and t (8-15). Established: arm1.u code writes
     * it through slot 0x14b, loading that address word at 2 places, first at
     * 0x0c025d40. */
    KONA_TG_LOD_SCALEST                  = 0x24b,

    /* Functions that load the slot 0x14c address word:
     * `arm_bind_3d_mipmap_texture` (0x0c025d50), `SetupRM_TextureBind`
     * (0x0c03699c). */

    /* `TG_LOD_SCALER` (kpm row 0x24c, name record at 0x100bb168).
     * Established: shadow word 60; the befsh_addrs entry at 0x04067cfc names
     * raster register 0x0c06 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10145af0: the level-of-detail scale
     * for r, eight bits. Established: arm1.u code writes it through slot
     * 0x14c, loading that address word at 2 places, first at 0x0c025d50. */
    KONA_TG_LOD_SCALER                   = 0x24c,

    /* Functions that load the slot 0x14d address word:
     * `arm_bind_2d_clipmap_texture` (0x0c025c20), `arm_bind_detail_texture`
     * (0x0c025f68). */

    /* `TGTM_DCTEX_SIZE` (kpm row 0x24d, name record at 0x100bb16c).
     * Established: shadow word 61; the befsh_addrs entry at 0x04067d00 names
     * raster register 0x3fd6 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10148530: detail-texture s and t
     * sizes, the clip-map size, the clip-map level offset (bits 12-21) and
     * the clip-map enable (bit 22). Established: arm1.u code writes it
     * through slot 0x14d, loading that address word at 2 places, first at
     * 0x0c025c20. */
    KONA_TGTM_DCTEX_SIZE                 = 0x24d,

    /* Functions that load the slot 0x14e address word: `arm_bind_texture`
     * (0x0c025924), `arm_bind_detail_texture` (0x0c025fc4). */

    /* `TM_DRAW_DETAILMAP` (kpm row 0x24e, name record at 0x100bb170).
     * Established: shadow word 62; the befsh_addrs entry at 0x04067d04 names
     * raster register 0x1019 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146230: where the detail map sits
     * in texture memory, 21 bits plus 3 high bits. Established: arm1.u code
     * writes it through slot 0x14e, loading that address word at 2 places,
     * first at 0x0c025924. */
    KONA_TM_DRAW_DETAILMAP               = 0x24e,

    /* Functions that load the slot 0x14f address word:
     * `arm_bind_3d_mipmap_texture` (0x0c025d74), `arm_bind_bicubic_texture`
     * (0x0c025e50), `arm_bind_3d_texture` (0x0c025ed8). */

    /* `TM_TEX_SIZE` (kpm row 0x24f, name record at 0x100bb174). Established:
     * shadow word 63; the befsh_addrs entry at 0x04067d08 names raster
     * register 0x13d5 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146440: the texture-memory chip's own copy
     * of the s, t, r sizes and address-control bits, at index 0x13d5 rather
     * than the generator's 0x3fd5. Established: arm1.u code writes it through
     * slot 0x14f, loading that address word at 3 places, first at 0x0c025d74. */
    KONA_TM_TEX_SIZE                     = 0x24f,

    /* Functions that load the slot 0x150 address word:
     * `arm_bind_2d_clipmap_texture` (0x0c025bd0). */

    /* `TM_DRAW_CLIP_OFFSET` (kpm row 0x250, name record at 0x100bb178).
     * Established: shadow word 64; the befsh_addrs entry at 0x04067d0c names
     * raster register 0x1020 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x101463a0: the clip-map s offset (bits
     * 0-15) and t offset (16-31) in texture memory. Established: arm1.u code
     * writes it through slot 0x150, loading that address word at 1 place,
     * first at 0x0c025bd0. */
    KONA_TM_DRAW_CLIP_OFFSET             = 0x250,

    /* Functions that load the slot 0x151 address word:
     * `arm_bind_2d_clipmap_texture` (0x0c025bb8). */

    /* `TM_DRAW_CLIP_BKPT` (kpm row 0x251, name record at 0x100bb17c).
     * Established: shadow word 65; the befsh_addrs entry at 0x04067d10 names
     * raster register 0x1021 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x101463d0: a 4-bit clip-map break
     * point held by the texture memory chip. Established: arm1.u code writes
     * it through slot 0x151, loading that address word at 1 place, first at
     * 0x0c025bb8. */
    KONA_TM_DRAW_CLIP_BKPT               = 0x251,

    /* Functions that load the slot 0x152 address word:
     * `arm_bind_2d_clipmap_texture` (0x0c025bf4). */

    /* `TGTM_TEX_SCENTER` (kpm row 0x252, name record at 0x100bb180).
     * Established: shadow word 66; the befsh_addrs entry at 0x04067d14 names
     * raster register 0x3fd7 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10148590: the clip map's centre in s,
     * 15 bits. Established: arm1.u code writes it through slot 0x152, loading
     * that address word at 1 place, first at 0x0c025bf4. */
    KONA_TGTM_TEX_SCENTER                = 0x252,

    /* Functions that load the slot 0x153 address word:
     * `arm_bind_2d_clipmap_texture` (0x0c025c08). */

    /* `TGTM_TEX_TCENTER` (kpm row 0x253, name record at 0x100bb184).
     * Established: shadow word 67; the befsh_addrs entry at 0x04067d18 names
     * raster register 0x3fd8 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x101485b0: the clip map's centre in t,
     * 15 bits. Established: arm1.u code writes it through slot 0x153, loading
     * that address word at 1 place, first at 0x0c025c08. */
    KONA_TGTM_TEX_TCENTER                = 0x253,

    /* `TFT_SBIAS_EN` (kpm row 0x254, name record at 0x100bb188). Established:
     * shadow word 68; the befsh_addrs entry at 0x04067d1c names raster
     * register 0x1850 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146da0: one enable bit each for alpha, blue,
     * green and red texel scale-and-bias (bits 0-3). Established: no arm1.u
     * code loads its slot 0x154 address word; the ARM reaches it only in its
     * loops over all 89 words (start-up, context load and one diagnostic
     * case). */
    KONA_TFT_SBIAS_EN                    = 0x254,

    /* `TFT_SCALE` (kpm row 0x255, name record at 0x100bb18c). Established:
     * shadow word 69; the befsh_addrs entry at 0x04067d20 names raster
     * register 0x1851 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146df0: an 8-bit texel scale per component,
     * alpha in the low byte up to red in the high byte. Established: no
     * arm1.u code loads its slot 0x155 address word; the ARM reaches it only
     * in its loops over all 89 words (start-up, context load and one
     * diagnostic case). */
    KONA_TFT_SCALE                       = 0x255,

    /* `TFT_BIAS` (kpm row 0x256, name record at 0x100bb190). Established:
     * shadow word 70; the befsh_addrs entry at 0x04067d24 names raster
     * register 0x1852 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146e40: the matching 8-bit texel bias per
     * component, in the same byte order as the scale. Established: no arm1.u
     * code loads its slot 0x156 address word; the ARM reaches it only in its
     * loops over all 89 words (start-up, context load and one diagnostic
     * case). */
    KONA_TFT_BIAS                        = 0x256,

    /* Functions that load the slot 0x157 address word: `arm_colortable`
     * (0x0c03e260), `PixValidateTexColorTable` (0x0c03e980), `d_texcoltab`
     * (0x0c03f314). */

    /* `TFT_TLUT` (kpm row 0x257, name record at 0x100bb194). Established:
     * shadow word 71; the befsh_addrs entry at 0x04067d28 names raster
     * register 0x1853 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146e90: the texture colour lookup table, its
     * 10-bit address, its component count (one, two or three) and an enable
     * bit. Established: arm1.u code writes it through slot 0x157, loading
     * that address word at 3 places, first at 0x0c03e260. */
    KONA_TFT_TLUT                        = 0x257,

    /* Functions that load the slot 0x158 address word: `arm_shadow_texture`
     * (0x0c026260). */

    /* `TM_DRAW_SHA_AMBIENT` (kpm row 0x258, name record at 0x100bb198).
     * Established: shadow word 72; the befsh_addrs entry at 0x04067d2c names
     * raster register 0x101e and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146360: a 6-bit ambient level for
     * shadow textures, kept in the texture memory chip. Established: arm1.u
     * code writes it through slot 0x158, loading that address word at 1
     * place, first at 0x0c026260. */
    KONA_TM_DRAW_SHA_AMBIENT             = 0x258,

    /* Functions that load the slot 0x159 address word: `arm_shadow_texture`
     * (0x0c026234), `CommonPixEnd` (0x0c026710). */

    /* `TM_DRAW_REDUNDANCY` (kpm row 0x259, name record at 0x100bb19c).
     * Established: shadow word 73; the befsh_addrs entry at 0x04067d30 names
     * raster register 0x101f and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146380: a single redundancy bit in
     * the texture memory chip. Established: arm1.u code writes it through
     * slot 0x159, loading that address word at 2 places, first at 0x0c026234. */
    KONA_TM_DRAW_REDUNDANCY              = 0x259,

    /* Functions that load the slot 0x15a address word: `arm_shadow_texture`
     * (0x0c026248). */

    /* `TG_MISC` (kpm row 0x25a, name record at 0x100bb1a0). Established:
     * shadow word 74; the befsh_addrs entry at 0x04067d34 names raster
     * register 0x0c02 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10145a60: two texture-generator bits, priority
     * (bit 0) and compression (bit 1). Established: arm1.u code writes it
     * through slot 0x15a, loading that address word at 1 place, first at
     * 0x0c026248. */
    KONA_TG_MISC                         = 0x25a,

    /* Functions that load the slot 0x15b address word: `masked_clear`
     * (0x0c03b5c8). */

    /* `TFP_AFUNC` (kpm row 0x25b, name record at 0x100bb1a4). Established:
     * shadow word 75; the befsh_addrs entry at 0x04067d38 names raster
     * register 0x1407 and befsh_init gives it start-up value 0x7000. Inferred
     * from kpm raster record 0x10146900: the alpha test, a 12-bit reference,
     * a 3-bit comparison and an enable (bit 15); start-up 0x7000 is
     * compare-always with the test off. Established: arm1.u code writes it
     * through slot 0x15b, loading that address word at 1 place, first at
     * 0x0c03b5c8. */
    KONA_TFP_AFUNC                       = 0x25b,

    /* `TFP_TEX` (kpm row 0x25c, name record at 0x100bb1a8). Established:
     * shadow word 76; the befsh_addrs entry at 0x04067d3c names raster
     * register 0x1500 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x101465a0: the one-bit texturing enable of the
     * texture filter. Established: no arm1.u code loads its slot 0x15c
     * address word; the ARM reaches it only in its loops over all 89 words
     * (start-up, context load and one diagnostic case). */
    KONA_TFP_TEX                         = 0x25c,

    /* `TFP_TEV` (kpm row 0x25d, name record at 0x100bb1ac). Established:
     * shadow word 77; the befsh_addrs entry at 0x04067d40 names raster
     * register 0x1401 and befsh_init gives it start-up value 0x22. Inferred
     * from kpm raster record 0x10146640: the texture environment, separate
     * 4-bit alpha and colour functions (replace fragment, replace texture,
     * modulate, blend, decal, add, add minus a half); start-up 0x22 sets both
     * to modulate. Established: no arm1.u code loads its slot 0x15d address
     * word; the ARM reaches it only in its loops over all 89 words (start-up,
     * context load and one diagnostic case). */
    KONA_TFP_TEV                         = 0x25d,

    /* `TFP_TEV_CC` (kpm row 0x25e, name record at 0x100bb1b0). Established:
     * shadow word 78; the befsh_addrs entry at 0x04067d44 names raster
     * register 0x1402 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146750: the texture environment colour's
     * green (bits 0-11) and red (12-23). Established: no arm1.u code loads
     * its slot 0x15e address word; the ARM reaches it only in its loops over
     * all 89 words (start-up, context load and one diagnostic case). */
    KONA_TFP_TEV_CC                      = 0x25e,

    /* `TFP_TEV_CC1` (kpm row 0x25f, name record at 0x100bb1b4). Established:
     * shadow word 79; the befsh_addrs entry at 0x04067d48 names raster
     * register 0x1413 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146780: the environment colour's alpha (bits
     * 0-11) and blue (12-23). Established: no arm1.u code loads its slot
     * 0x15f address word; the ARM reaches it only in its loops over all 89
     * words (start-up, context load and one diagnostic case). */
    KONA_TFP_TEV_CC1                     = 0x25f,

    /* Functions that load the slot 0x160 address word: `init_tf`
     * (0x0c0038a0), `init_simulator_hacks` (0x0c003f4c). */

    /* `TFP_AC` (kpm row 0x260, name record at 0x100bb1b8). Established:
     * shadow word 80; the befsh_addrs entry at 0x04067d4c names raster
     * register 0x140e and befsh_init gives it start-up value 0x8000. Inferred
     * from the field names alone at kpm raster record 0x10146c10: a 12-bit
     * `DGBASE` and a 5-bit `DGTPL` field; start-up 0x8000 sets `DGTPL` to 8.
     * Established: arm1.u code writes it through slot 0x160, loading that
     * address word at 2 places, first at 0x0c0038a0. */
    KONA_TFP_AC                          = 0x260,

    /* Functions that load the slot 0x161 address word: `arm_samplemask`
     * (0x0c03c3b8), `init_multisample` (0x0c03c424), `multisample_pop`
     * (0x0c03c6b8). */

    /* `TFP_FADE_MASK_LUT` (kpm row 0x261, name record at 0x100bb1bc).
     * Established: shadow word 81; the befsh_addrs entry at 0x04067d50 names
     * raster register 0x140b and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146ab0: four 8-bit entries (`N0` to
     * `N3`) of the fade table used by alpha-to-mask. Established: arm1.u code
     * writes it through slot 0x161, loading that address word at 3 places,
     * first at 0x0c03c3b8. */
    KONA_TFP_FADE_MASK_LUT               = 0x261,

    /* Functions that load the slot 0x162 address word: `arm_buffer_config`
     * (0x0c0134a8), `masked_clear` (0x0c03b5f0). */

    /* `TFP_FOG` (kpm row 0x262, name record at 0x100bb1c0). Established:
     * shadow word 82; the befsh_addrs entry at 0x04067d54 names raster
     * register 0x1403 and befsh_init gives it start-up value 0x80000.
     * Inferred from kpm raster record 0x101467b0: fog control, colour and fog
     * modes (4 bits each), an 8-bit table address, a one-table bit, a
     * colour-index bit and enables for the offset, centring and fog itself;
     * start-up sets only the centring enable. Established: arm1.u code writes
     * it through slot 0x162, loading that address word at 2 places, first at
     * 0x0c0134a8. */
    KONA_TFP_FOG                         = 0x262,

    /* `TFP_FOG_CC` (kpm row 0x263, name record at 0x100bb1c4). Established:
     * shadow word 83; the befsh_addrs entry at 0x04067d58 names raster
     * register 0x1404 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146840: the fog colour's green (bits 0-11)
     * and red (12-23). Established: no arm1.u code loads its slot 0x163
     * address word; the ARM reaches it only in its loops over all 89 words
     * (start-up, context load and one diagnostic case). */
    KONA_TFP_FOG_CC                      = 0x263,

    /* `TFP_FOG_CC1` (kpm row 0x264, name record at 0x100bb1c8). Established:
     * shadow word 84; the befsh_addrs entry at 0x04067d5c names raster
     * register 0x1414 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146870: the fog colour's blue, 12 bits.
     * Established: no arm1.u code loads its slot 0x164 address word; the ARM
     * reaches it only in its loops over all 89 words (start-up, context load
     * and one diagnostic case). */
    KONA_TFP_FOG_CC1                     = 0x264,

    /* `TFP_FOG_OFFSET` (kpm row 0x265, name record at 0x100bb1cc).
     * Established: shadow word 85; the befsh_addrs entry at 0x04067d60 names
     * raster register 0x1406 and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x101468e0: a 32-bit depth value added
     * before fog is computed. Established: no arm1.u code loads its slot
     * 0x165 address word; the ARM reaches it only in its loops over all 89
     * words (start-up, context load and one diagnostic case). */
    KONA_TFP_FOG_OFFSET                  = 0x265,

    /* Functions that load the slot 0x166 address word: `init_tf`
     * (0x0c003888), `arm_buffer_config` (0x0c013590). */

    /* `TFP_PIX_FMT` (kpm row 0x266, name record at 0x100bb1d0). Established:
     * shadow word 86; the befsh_addrs entry at 0x04067d64 names raster
     * register 0x1410 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x10146c60: one bit marking the texture filter's
     * output pixels as luminance-alpha. Established: arm1.u code writes it
     * through slot 0x166, loading that address word at 2 places, first at
     * 0x0c003888. */
    KONA_TFP_PIX_FMT                     = 0x266,

    /* Functions that load the slot 0x167 address word: `arm_buffer_config`
     * (0x0c0135a8), `PixEndRGBStream` (0x0c0269fc), `SetupGE_StencilStream`
     * (0x0c02d484). */

    /* `TFP_COLOR_FMT` (kpm row 0x267, name record at 0x100bb1d4).
     * Established: shadow word 87; the befsh_addrs entry at 0x04067d68 names
     * raster register 0x140f and befsh_init gives it start-up value 0x0.
     * Inferred from kpm raster record 0x10146c40: one bit marking the
     * incoming colour as luminance-alpha. Established: arm1.u code writes it
     * through slot 0x167, loading that address word at 3 places, first at
     * 0x0c0135a8. */
    KONA_TFP_COLOR_FMT                   = 0x267,

    /* Functions that load the slot 0x168 address word: `init_imp`
     * (0x0c003cf0), `arm_colormask` (0x0c012e08), `arm_blendcolor`
     * (0x0c012f88), `arm_buffer_config` (0x0c013640), `resolve_banks`
     * (0x0c013a4c), `color_init` (0x0c014150), `color_pop` (0x0c01462c),
     * `stencil_pop` (0x0c014c88), `e_multisample` (0x0c0156e8),
     * `d_multisample` (0x0c015758), `SetupReadbackTF` (0x0c033e98),
     * `arm_clear` (0x0c03bd04), `masked_word_clear` (0x0c03c138),
     * `init_multisample` (0x0c03c43c), `e_alpha2mask` (0x0c03c57c),
     * `d_alpha2mask` (0x0c03c5a4), `e_alpha2one` (0x0c03c5cc), `d_alpha2one`
     * (0x0c03c5f4), `e_samplemask` (0x0c03c61c), `d_samplemask` (0x0c03c644),
     * `x_initregs` (0x0c03d274). */

    /* `TFP_AMASK` (kpm row 0x268, name record at 0x100bb1d8). Established:
     * shadow word 88; the befsh_addrs entry at 0x04067d6c names raster
     * register 0x1408 and befsh_init gives it start-up value 0x0. Inferred
     * from kpm raster record 0x101469c0: three enables, alpha-to-mask (bit
     * 0), the fade mask (1) and alpha-to-one (2). Established: arm1.u code
     * writes it through slot 0x168, loading that address word at 21 places,
     * first at 0x0c003cf0. */
    KONA_TFP_AMASK                       = 0x268,
};

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
 * Execution Control Register (0x40000), established from two writers. The ARM firmware's `init_ge`
 * in arm1.u stores the address at 0x0c00358c and the value 1 (GO) at 0x0c00359c, after the
 * microcode load, and kpm's `ge11LoadUcode` writes 0 at 0x1001bcc4 before a reload and 1 at
 * 0x1001be68 after it. So GO starts and stops the engine's microcode. The other bits (SSTEP, BPSET,
 * BPSTALL, UCLAT, INVAL, kpm table) are set by no program on either chip, so how the engine responds to
 * SSTEP, BPSET, BPSTALL and INVAL is unknown: no shipped software or published source depends on it. kpm reads the register
 * twice, at 0x1001e7f8 and 0x1001e804, as the first words of its register dump. What UCLAT selects is





#define KONA_GE11_REG_EXECUTION_CONTROL              0x40000  /* "Execution Control Register" */
#define KONA_GE11_EXEC_GO                       0x00000001  /* bits from 0 */
#define KONA_GE11_EXEC_SSTEP                    0x00000002  /* bits from 1 */
#define KONA_GE11_EXEC_BPSET                    0x00000004  /* bits from 2 */
#define KONA_GE11_EXEC_BPSTALL                  0x00000008  /* bits from 3 */
#define KONA_GE11_EXEC_UCLAT                    0x00000010  /* bits from 4 */
#define KONA_GE11_EXEC_INVAL                    0x00000020  /* bits from 5 */

/*
 * Breakpoint Address Register (0x40004): inferred from its 18-bit width (below) and from the BPSET
 * and BPSTALL control bits, the microcode address at which the engine stalls. Established reads in kpm:
 * `ge11ReadDiagRegisters` takes it at 0x1001e814 for the register dump, and the scan helper inside
 * `analyze_ge` reads it at 0x1001e638 as the first word of every RAM-scan transfer. No program
 * writes it, so no shipped tool sets a breakpoint. Width: inferred to be 18 bits, the

 * width of a microcode address, which matches the 18-bit microcode address port of KONA's

#define KONA_GE11_REG_BREAKPOINT_ADDRESS             0x40004  /* "Breakpoint Address Register" */

/*
 * RAMscan Control Register (0x40008), "trashed" in kpm's name because a scan destroys it.
 * Established in kpm: `ge11StateDrain` writes 0x60000 at 0x1001ba58 before it dumps an engine and 0
 * at 0x1001bacc afterwards, and `ge11RamScan` pulses 0x60001 then 0x60000 at 0x1001eb64 and
 * 0x1001eb74 between scan blocks. Inferred: bits 17-18 put the engine's internal RAMs on the scan
 * path and bit 0 advances the scan by one step. The firmware never writes it. */
#define KONA_GE11_REG_RAMSCAN_CONTROL                0x40008  /* "RAMscan Control Register (trashed)" */

/*
 * Write/Sync FIFO Register (0x4000c), fields DISABLE (bit 0) and WM (bits 1-5). Established:
 * kpm's `ge11StateDrain` writes 13 at 0x1001ba6c, that is DISABLE set and WM 6, just before it
 * reads the diagnostic registers of a stopped engine, and `ge11ReadDiagRegisters` reads it back
 * at 0x1001e834. Inferred from where the writers use it: bit 0 turns the write-sync FIFO off so a
 * drain or scan is not held up by it, and bits 1-5 are the FIFO's water mark. The ARM firmware leaves it at its reset value. */



#define KONA_GE11_REG_WRITE_SYNC_FIFO                0x4000c  /* "Write/Sync FIFO Register" */
#define KONA_GE11_SYNCFIFO_DISABLE              0x00000001  /* bits from 0 */
#define KONA_GE11_SYNCFIFO_WM                   0x0000003e  /* bits from 1 */

/*
 * Diag Sel Register (0x40010), established: `init_ge` in arm1.u writes the address at 0x0c003568
 * and 0x100 at 0x0c003584 just before setting GO, and kpm's `ge11LoadUcode` repeats the same
 * 0x100 at 0x1001be4c. 0x100 is the register's only named field, OUTPUT (bit 8). Inferred: the register picks which internal signals the engine drives

 * on its diagnostic pins and bit 8 turns that output on. kpm dumps it at 0x1001e844. Whether the bit




#define KONA_GE11_REG_DIAG_SEL                       0x40010  /* "Diag Sel Register" */
#define KONA_GE11_DIAGSEL_OUTPUT                0x00000100  /* bits from 8 */

/*
 * Enable Mask Register (0x40014), two three-bit fields ENABMSK_A (bits 0-2) and ENABMSK_B
 * (bits 4-6). kpm's `ge11ReadDiagRegisters` only reads it, at 0x1001e854, and nothing writes it,
 * so the engines run with the reset mask. Which units the bits enable is unknown: no shipped
 * software or published source depends on it. Routes tried: every engine-register address the
 * arm1.u firmware stores (only 0x40000, 0x40010, 0x40018 and 0x40038), every `ge_register_write`
 * call in kpm, irsaudit's strings and the IR netlists. */


#define KONA_GE11_REG_ENABLE_MASK                    0x40014  /* "Enable Mask Register" */
#define KONA_GE11_ENABMSK_A                     0x00000007  /* bits from 0 */
#define KONA_GE11_ENABMSK_B                     0x00000070  /* bits from 4 */

/*
 * CM/Ofifo TAG Register (0x40018), established: `init_ge` (arm1.u) sets the address at 0x0c003418
 * and writes 0x4930 for a Gray-decoded board id of 8 or more and 0x9b60 below that at 0x0c003444;
 * kpm's `ge11LoadUcode` clears it at 0x1001bcdc and writes the same two values at 0x1001bec4 and
 * 0x1001bed8. Fields CFG (bit 0), WTRIM_WD, WTRIM_DLY, CTRIM_WD, CTRIM_DLY (bits 4-15) and PULSE_EN
 * (bit 16): decoded, CFG and PULSE_EN are 0 and the trims are (3, 2, 2, 2) for 0x4930 and
 * (6, 6, 6, 4) for 0x9b60, so newer boards get shorter strobes. Inferred: the trims set width and
 * delay of the write and clock strobes of the command-memory and output-FIFO tag RAM. */


#define KONA_GE11_REG_CM_OFIFO_TAG                   0x40018  /* "CM/Ofifo TAG Register" */
#define KONA_GE11_CMTAG_CFG                     0x00000001  /* bits from 0 */
#define KONA_GE11_CMTAG_WTRIM_WD                0x00000070  /* bits from 4 */
#define KONA_GE11_CMTAG_WTRIM_DLY               0x00000380  /* bits from 7 */
#define KONA_GE11_CMTAG_CTRIM_WD                0x00001c00  /* bits from 10 */
#define KONA_GE11_CMTAG_CTRIM_DLY               0x0000e000  /* bits from 13 */
#define KONA_GE11_CMTAG_PULSE_EN                0x00010000  /* bits from 16 */

/*
 * Ucode Error register (0x4001c): twenty one-bit flags (bits 0-19), each named in kpm's table for
 * a microcode fault such as FPU_OP, INVAL_ADR, MSK_OVFL or AALU_WR. Inferred: the engine latches a
 * bit when its program commits that fault, which is why kpm's dump of a hung engine includes it.
 * Established: kpm reads it at 0x1001e874 in `ge11ReadDiagRegisters`, and no program writes it. */
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
 * OFIFO0 A Status Register (0x40020): established as a kpm table entry with a seven-bit write
 * pointer (bits 0-6) and read pointer (bits 7-13) for half A of the engine's first output FIFO;
 * kpm reads it at 0x1001e884. Inferred: seven-bit pointers mean 128 entries, and the pointer
 * difference is how many words wait to leave the engine on that path. */
#define KONA_GE11_REG_OFIFO0_A_STATUS                0x40020  /* "OFIFO0 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO0 B Status Register (0x40024) is the companion of the half A register for half B of output
 * FIFO 0, with the same pointer fields. Established: read by kpm's register dump at 0x1001e894 and
 * written by nothing. It is the eleventh of the sixteen reads `ge11ReadDiagRegisters` issues
 * (0x40000 twice, then 0x40004 to 0x40038 in steps of 4): each `ge_register_read` call passes the
 * address to `ged_register_write` as index 564 and writes 0x80000001 to index 566, the data comes
 * back in a 64-byte transfer, and `memcpy` at 0x1001e9a4 copies those 64 bytes to a kpm buffer with
 * no field split, so no kpm code decodes the pointers. Inferred: comparing it with


 * half A shows whether one thread's output stalled. Whether B is the engine's second thread is
#define KONA_GE11_REG_OFIFO0_B_STATUS                0x40024  /* "OFIFO0 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO1 A Status Register (0x40028) reports output FIFO 1, half A: write pointer low, read pointer
 * above it, seven bits each. Established as a kpm table entry, dumped at 0x1001e8a4 as the twelfth
 * of the sixteen reads of `ge11ReadDiagRegisters`, whose `memcpy` at 0x1001e9a4 moves the 64-byte
 * result on with no field split. Inferred: a
 * gap between the pointers in a hung pipe means the next stage stopped taking words from FIFO 1. */
#define KONA_GE11_REG_OFIFO1_A_STATUS                0x40028  /* "OFIFO1 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO1 B Status Register (0x4002c): the read and write pointers of the second half of output
 * FIFO 1, laid out like the other status words. kpm reads it at 0x1001e8b4 and nothing else in the
 * shipped software touches it (established); it is the thirteenth of the sixteen reads of
 * `ge11ReadDiagRegisters`, whose `memcpy` at 0x1001e9a4 moves the 64-byte result on with no field
 * split. Inferred, it is a read-only view of FIFO occupancy for

 
#define KONA_GE11_REG_OFIFO1_B_STATUS                0x4002c  /* "OFIFO1 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO2 A Status Register (0x40030) belongs to the third output FIFO, half A. Established: kpm's
 * table gives it the two seven-bit pointer fields and `ge11ReadDiagRegisters` reads it at
 * 0x1001e8c4. Inferred from the three FIFOs and two halves: each engine has six such queues
 * toward the rest of the pipe, and this word shows how full one of them is. */
#define KONA_GE11_REG_OFIFO2_A_STATUS                0x40030  /* "OFIFO2 A Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO2 B Status Register (0x40034), the last of the six pointer words: half B of output FIFO 2.
 * Established: dumped by kpm at 0x1001e8d4, never written. Inferred: equal pointers mean that half
 * is empty, and a dump taken after a hang shows from the six words which queue backed up. */


#define KONA_GE11_REG_OFIFO2_B_STATUS                0x40034  /* "OFIFO2 B Status Register" */
#define KONA_GE11_OFIFO_WR_PTR                  0x0000007f  /* bits from 0 */
#define KONA_GE11_OFIFO_RD_PTR                  0x00003f80  /* bits from 7 */

/*
 * OFIFO Control Register (0x40038), "trashed" by a RAM scan in kpm's name. Established writers:
 * `init_ge` (arm1.u) sets the address at 0x0c00339c and writes 0xce0 at 0x0c0033d8 when a
 * configuration flag allows it, otherwise 0x8e0 at 0x0c0033f4; kpm's `ge11LoadUcode` writes the same
 * pair (0xce0 at 0x1001bd08, 0x8e0 at 0x1001bfd0), and `ge11BypassEnable` writes 0x801 or 0xc01
 * to all eight engines at 0x1001b8bc. Inferred: bits 10-11 follow the board configuration and bit
 * 0 alone puts the output FIFOs in bypass for a diagnostic. The meaning of bits 1-9 is unknown: both





#define KONA_GE11_REG_OFIFO_CONTROL                  0x40038  /* "OFIFO Control Register (trashed)" */

/*
 * Geometry-engine special registers, ESTABLISHED: kpm's {number, name}
 * list at vaddr 0x100bb1e0 (diags/kpm/ge_special_registers.tsv), ended by
 * a -1 number. INFERRED: these are microcode-visible special registers
 * (identity, the input word FIFO pointers, FPU and lookup modes, flags,
 * cull and clip state, sort state), numbered as the microcode addresses them.
 * ESTABLISHED: the table's only reader is kpm's `show_ge_core` (0x1001c44c),
 * which skips every number below 0x40 (test at 0x1001c62c) and prints the
 * rest under the heading "Special (private) registers" from the per-core
 * state record kpm saves (word +10888 + 4 x number, record stride 796 bytes).
 * INFERRED from that heading: numbers 0x40 and up are per-core copies and the
 * lower numbers are shared by the cores of one engine. The record also holds 32
 * address and 32 data registers (words +10632 and +10760), a separate numbering from these.
 * INFERRED (production `ge.u`, 6.5.30m; ucode/ge_isa.md): engine code reaches special n at
 * engine address 0xfffe0000 + 4n. `HereWeGo` loads address register 0x1c with 0xfffe0000
 * (0x000c) and 0x1d with 0xfffe0100 (0x000d), and no later word reloads either, so source A =
 * 0x1c with offset D = n reads special n, B = 0x1c with E = n writes it, and 0x1d with offset k
 * reaches 0x40 + k. Each entry below names the handlers that do so.
 */
/* CHIP_ID (special register 0x04), kpm record 0x100bb1e0: no engine instruction reaches it. No
 * production or diagnostic `ge.u` word uses offset 4 from address register 0x1c, and none loads
 * 0xfffe0010, the window address of number 4. The diagnostic version routine `geversion.s` loads a
 * plain 4 into address register 0x1b at 0x219e and reads through it, but an address without bit 17
 * is data memory: `ge_inst.s` stores 0xbabebabe at address 4 (0x0563) and reads it back (0x0568,
 * expected word 17), so that routine reads a RAM word, not this register. No shipped software or
 * published source depends on its value. Routes tried: both listings by the special-window
 * selector, kpm's `show_ge_core`, which skips numbers below 0x40 at 0x1001c62c, and `init_ge` in
 * `arm1.u`. */
#define KONA_GE11_SR_CHIP_ID              0x04
/* CHIP_REV (special register 0x06), kpm record 0x100bb1e8, beside CHIP_ID in kpm's table. Neither
 * engine program touches it: offset 6 from address register 0x1c and the window address 0xfffe0018
 * occur in no word of the production or diagnostic `ge.u`. The 6 that `geversion.s` loads into
 * register 0x1b at 0x21bc is a data-memory address, as the 4 before it is. No shipped software or
 * published source depends on it; routes tried: the special-window selector over both listings,
 * kpm's dump routine and the strings of every shipped binary. */
#define KONA_GE11_SR_CHIP_REV             0x06
/* CORE_ID (special register 0x40): inferred, the number of the core within the engine, the first
 * private register; established, kpm's `show_ge_core` prints it from the saved core record at 0x1001c650. */
#define KONA_GE11_SR_CORE_ID              0x40
/* WRAM_WRPTR (special register 0x00), kpm record 0x100bb1f8: established, `HereWeGo` in the
 * production `ge.u` (6.5.30m) writes 0x380 to it at 0x0017 through address register 0x1c with
 * offset 0, and the diagnostic `ge.u` start-up does the same at 0x015b. No other engine word reads
 * or writes it. Inferred: the boot value of the working-RAM write pointer where command words
 * land; context save and restore carry the two FIFO bounds below but not this word, which fits a
 * pointer the input hardware advances itself. */
#define KONA_GE11_SR_WRAM_WRPTR           0x00
/* WRAM_FIFO_HI (special register 0x01), kpm record 0x100bb200: established in the production
 * `ge.u`, `HereWeGo` writes 0x43 at 0x0019 and `mgeb_ContextDeactReconfigureFifo` writes the same
 * 0x43 at 0x688b; `mgeb_ContextLoadRegs` reloads it at 0x66af, and `mges_ContextDeactivate` reads
 * it at 0x698a and sends it to control address 0x1f5 with the rest of the saved context. Inferred:
 * one bound of the input FIFO in working RAM, a constant the program restores whenever it rebuilds
 * that FIFO. */
#define KONA_GE11_SR_WRAM_FIFO_HI         0x01
/* WRAM_FIFO_LO (special register 0x02), kpm record 0x100bb208: established, the production `ge.u`
 * writes 0x435 to it in `HereWeGo` (0x001b) and in `mgeb_ContextDeactReconfigureFifo` (0x688c),
 * reloads it in `mgeb_ContextLoadRegs` (0x66b0), and `mges_ContextDeactivate` reads it at 0x698b
 * for the context save. Inferred: the second bound of the working-RAM input FIFO, written by every
 * routine that writes WRAM_FIFO_HI and always with it. */
#define KONA_GE11_SR_WRAM_FIFO_LO         0x02
/* VERTEX_COUNTT (special register 0x03), kpm record 0x100bb210 (the double T is kpm's spelling).
 * No engine word addresses it: offset 3 from address register 0x1c, and the window address
 * 0xfffe000c, are absent from the production and diagnostic `ge.u`. No shipped software or
 * published source depends on it. Routes tried: that selector over every listing, kpm's
 * `show_ge_core` (skips it), and the strings of `arm1.u` and `irsaudit`. */
#define KONA_GE11_SR_VERTEX_COUNTT        0x03
/* UST_ACCESS (special register 0x05), kpm record 0x100bb218: the engine programs never select it.
 * Neither `ge.u` has a word with address register 0x1c and offset 5 or an address register holding
 * 0xfffe0014, so no handler stamps anything with the engine's UST time. No shipped software or
 * published source depends on it; routes tried: the special-window selector, kpm's table (the only
 * text naming it) and the strings of `ge.u`, `arm1.u`, `irsaudit` and `ireeprom`. */
#define KONA_GE11_SR_UST_ACCESS           0x05
/* DIAG_PIN (special register 0x07), kpm record 0x100bb220: unreached by engine code. Offset 7 from
 * register 0x1c and address 0xfffe001c appear in no production or diagnostic `ge.u` word, and the
 * ARM's `init_ge` picks the diagnostic output through distributor register 0x40010 instead. No
 * shipped software or published source depends on it. Routes tried: the decoded selector over both
 * engine programs, `init_ge`, kpm's dump routine and every binary's strings. */
#define KONA_GE11_SR_DIAG_PIN             0x07
/* COMP_FORMAT (special register 0x08), kpm record 0x100bb228: established in the production
 * `ge.u`, pixel set-up handlers copy their first command operand word (A = 0x1f, D = 0) into it:
 * `mgeb_PixDrawColorSetup` at 0xa7c1 and `mgeb_ColorTableSetup` at 0x4235.
 * `mgeb_PixPolygonStippleSetup` (0xa766), `mgeb_TransparentBitmapSetup` (0xa751) and the
 * multisample table point module `mmo_DrawMSTablePntPrim` (0x7eb3) also write it.
 * `mges_ContextDeactivate` reads it at 0x68de and `mgeb_ContextLoadRegs` restores it at 0x66b1.
 * Inferred: a pixel-path format word the host picks per transfer, saved across context switches. */
#define KONA_GE11_SR_COMP_FORMAT          0x08
/* FPU_MODE (special register 0x09), kpm record 0x100bb230: established in the production `ge.u`,
 * `mgeb_PixDrawColorSetup` copies its second operand word into it (0xa7c6, D = 1) and
 * `mgeb_PixMapOutputRGBA` writes it at 0x3f9f; `mDispatchCentral` writes it at 0xe74f.
 * `mges_ContextDeactivate` reads it for the context save (0x698d) and `mgeb_ContextLoadRegs`
 * restores it (0x669c). Inferred: a mode word that each pixel transfer sets with COMP_FORMAT and
 * LUT_MODE, so per-command state rather than a rounding mode fixed at boot. */
#define KONA_GE11_SR_FPU_MODE             0x09
/* LUT_MODE (special register 0x0a), kpm record 0x100bb238: established in the production `ge.u`,
 * its resting value is 0x14, written by `HereWeGo` (0x001e), `mGL_REGS_Initialize` (0xb272) and
 * `mgeb_PixEndRGBStream` (0xa6eb). `mgeb_PixDrawColorSetup` loads its third operand word into it
 * (0xa7c5), the colour-table modules `mmo_LUT_I2I_16` (0x3acc) and `mmo_LUT_I2C_16` (0x3b9f) write
 * it, and `umo_LUT16` stores to it through address register 8 loaded with 0xfffe0028 (0x1ba2,
 * store at 0x1bb4). `umo_Histogram` writes control word 0x17b into it the same way (0x13bb), as
 * the diagnostic `ge_hist.S` does with offset 0xa (0x3057). Inferred: the mode of the lookup-table
 * step on the pixel path, changed by colour-table and histogram modules and reset at the end of an
 * RGB stream. */
#define KONA_GE11_SR_LUT_MODE             0x0a
/* FPU_COND_A (special register 0x41): inferred from the name, the floating-point condition bits
 * of thread A that branches test; established as one of the private words `show_ge_core` lists
 * (printf call at 0x1001c654) from the core's saved state. */
#define KONA_GE11_SR_FPU_COND_A           0x41
/* FPU_COND_B (special register 0x4c), the thread-B partner of FPU_COND_A, inferred from the name;
 * established as the last entry of kpm's table (record 0x100bb248) and the highest private number,
 * printed by `show_ge_core` from record word +10888 + 0x130. */
#define KONA_GE11_SR_FPU_COND_B           0x4c
/* FLAG_GLOB_LO (special register 0x0b), kpm record 0x100bb250: established in the production
 * `ge.u`, `mGL_REGS_Initialize` (0xb26c) and `mX_REGS_Initialize` (0xadfa) initialise it beside
 * FLAG_GLOB_HI and the per-thread words 0x42 and 0x43. `mDispatchCentral` loads control word 0x19
 * into it at 0xe742 and reads it back at 0xe74a; lighting (`mgeb_LiEnableLightS`, 0xdd55) and
 * feedback modules (`mmo_FeedbackTriangle`, 0xb780) read it; `mgeb_ContextLoadFlagRegs` restores
 * it from operand word 1 (0x66ef) and `mges_ContextDeactivate` saves it (0x6990). Inferred: a word
 * of mode bits shared by all handlers, set by state commands and tested by per-vertex code. */
#define KONA_GE11_SR_FLAG_GLOB_LO         0x0b
/* FLAG_GLOB_HI (special register 0x0f), kpm record 0x100bb258: established in the production
 * `ge.u`, `mGL_REGS_Initialize` sets it at 0xb26d and the lighting finish routines write it
 * (`mLiFinalLiEqu` 0xd799, `mLiPrimMtrlFinalLi` 0xd733). `mClipPolyToPlane` rewrites it in place
 * with an XOR (unit-1 code 0x56) at 0xf141. Feedback (`mmo_FeedbackPoint` 0xb822), evaluator
 * (`ugesi_EvalStrip1D` 0x0152) and context-save code (`mges_ContextDeactivate` 0x698f) read it.
 * Inferred: the second word of shared mode bits, paired with FLAG_GLOB_LO in every initialiser. */
#define KONA_GE11_SR_FLAG_GLOB_HI         0x0f
/* FLAG_THRD_A (special register 0x42): inferred, the per-thread flag word of thread A, beside
 * the shared FLAG_GLOB words; established, kpm's dump of a stopped core shows it among the private
 * registers (`show_ge_core` at 0x1001c64c loads it by number). */
#define KONA_GE11_SR_FLAG_THRD_A          0x42
/* FLAG_THRD_B (special register 0x43): the thread-B flag word, inferred to hold that thread's
 * condition results; established in kpm's table at 0x100bb268 and read by `show_ge_core` as
 * saved-record word +10888 + 0x10c. */
#define KONA_GE11_SR_FLAG_THRD_B          0x43
/* CULL (special register 0x0c), kpm record 0x100bb270: established in the production `ge.u`, each
 * primitive entry handler writes it as a primitive starts (`mgesi_Points` 0xb304,
 * `mgesi_TriangleStrip` 0xb6a3, `mgesi_Quads` 0xb537, and the strip and fan variants), as do
 * `mgeb_RasterPos` (0xb2e9) and `mdc_multipass` (0xe48d). The triangle modules read it
 * (`umo_DrawTri` 0x288c, `umo_DrawQuad` 0x28ca, `mmo_DrawTriPolymodePrim` 0xdc09), and the cull
 * loop `lCU1` in `ucull.s` rewrites it at 0x0cad and 0x0cb7 and reads it at 0x0cb4. Inferred: the
 * face-cull state of the current primitive, reset per primitive and consumed when its triangles
 * are drawn. */
#define KONA_GE11_SR_CULL                 0x0c
/* CULL_ACCUM (special register 0x1c), kpm record 0x100bb278: established in the production `ge.u`,
 * only the cull loop `lCU1` (`ucull.s`) touches it, storing the result of a flag-setting XOR
 * (unit-1 code 0x56) into it at 0x0caa and again at 0x0cab on each pass; no engine word reads it
 * back by number. Inferred: it gathers the cull loop's per-pass result for a reader outside the
 * instruction stream, since the program itself never loads it. */
#define KONA_GE11_SR_CULL_ACCUM           0x1c
/* CLIP_HOMO (special register 0x0d), kpm record 0x100bb280: established in the production `ge.u`,
 * the primitive entry handlers write it with CULL and CLIP_USER (`mgesi_Points` 0xb301,
 * `mgesi_LineStrip` 0xb38d). `mClipTriUserAndFrustum` reads it at six sites (0xee42-0xeeb5), as
 * `mClipLinUserAndFrustum` does (0xeb11-0xeb84); `mPerTriClipFlagsFrustum` ORs it into a result at
 * 0xefa1, the flush routines write it back (`mClipTriFlush` 0xf1e4), and the screen-space `uBack`
 * (0x10ce) reads it. Inferred: the view-volume clip codes of the primitive in progress. */
#define KONA_GE11_SR_CLIP_HOMO            0x0d
/* CLIP_USER (special register 0x0e), kpm record 0x100bb288: established in the production `ge.u`,
 * the same entry handlers write it (`mgesi_Points` 0xb303), as do `mClipPntUserAndFrustum`
 * (0xe766) and the flush routines (`mClipLinFlush` 0xed33). `mClipTriUserAndFrustum` tests it with
 * a flag-setting AND (unit-1 code 0x50) at 0xee14 and `mClipLinUserAndFrustum` reads it at 0xeae2.
 * Inferred: the user clip-plane codes, kept beside CLIP_HOMO and tested before user-plane
 * clipping. */
#define KONA_GE11_SR_CLIP_USER            0x0e
/* SORT_THRD_A (special register 0x44): inferred, primitive-sorting state of thread A, such as
 * the vertex order a triangle setup keeps; established only as a private register kpm names (table
 * entry at 0x100bb290) and prints in `show_ge_core`. */
#define KONA_GE11_SR_SORT_THRD_A          0x44
/* SORT_THRD_B (special register 0x45): the second thread's sorting state, by its name (inferred);
 * established as kpm's table entry at 0x100bb298, which `show_ge_core` prints from the saved
 * record word +10888 + 0x114 when a GE core is dumped. */
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



 * Which cc selects which condition (le/gt, eq/ne, lt/ge and the fourth



 * Address unit (r222 words): cc 0x10, 0x11, 0x14 and 0x15 are the


 * cc 0x14/0x15 continue and leave the pixel-path loops, 0x10 is the
 * abort or error test, and 0x11 is the end-of-command wait (condition
 * group 31) or the loop count not yet zero (group 7). ucode/ge_ops.md.
 */
#define KONA_GE_FLAG_LE0                0x8
#define KONA_GE_FLAG_ZERO               0x4
#define KONA_GE_FLAG_NEG                0x2
#define KONA_GE_FLAG_PASSB              0x1

#endif /* KONA_GE_H */
