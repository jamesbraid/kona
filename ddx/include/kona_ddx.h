/*
 * kona_ddx.h - what the InfiniteReality X server module (kona.so, IRIX
 * 6.5.30m) keeps and sends for the cursor, display modes, clips and swaps.
 *
 * Labels: ESTABLISHED = read from the module's disassembly at the function
 * named; INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 * docs/opengl.md ("X server module: display emission") has the derivation.
 * Ioctl argument structures are the 6.5.5 installed headers' (sys/kona.h,
 * sys/rrm.h); only the values the module puts in them are described here.
 */
#ifndef KONA_DDX_H
#define KONA_DDX_H

#include <stdint.h>

/*
 * Command framing used by the module, ESTABLISHED (konValidateMode,
 * konRecolorCursor, konValidateClip, cursor helpers 0x526140 and others):
 * the first payload word is stored at fifo + 32 * token, every later word
 * at fifo + 0. fifo is the pointer at screen private +8.
 * INFERRED: the token is taken from bits 5-13 of the store's offset.
 */
#define KONA_DDX_TOKEN_OFFSET(tok)    ((uint32_t)(tok) << 5)
#define KONA_DDX_PAYLOAD_OFFSET       0x0u

/*
 * rrmWindowPrivateIndex record (76 bytes, allocRRMpriv), ESTABLISHED from
 * the ioctl arguments built from it.
 */
#define KONA_DDX_RRMWIN_RNID          12  /* rendering-node id (rnid)           */
#define KONA_DDX_RRMWIN_DID           20  /* display id: wid and swapbufid      */
#define KONA_DDX_RRMWIN_HWI_MODE      32  /* hardware-independent mode word     */
#define KONA_DDX_RRMWIN_HWD_MODE      36  /* hwd_mode built by konValidateMode  */
#define KONA_DDX_RRMWIN_SIZE          76

/*
 * Cursor memory block, ESTABLISHED (X_LOADCURSOR sends 260 words starting
 * at slot * 260; X_LOADCURSORCOLOR sends the 4 colour words). INFERRED
 * from arm_x_loadcursorcolor adding 0x100 to the address: the colours sit
 * at +0x100 of the block in the display board's cursor memory.
 */
#define KONA_DDX_CURSOR_BLOCK_WORDS   260
#define KONA_DDX_CURSOR_ADDR(slot)    ((uint32_t)(slot) * KONA_DDX_CURSOR_BLOCK_WORDS)
#define KONA_DDX_CURSOR_XHAIR_ADDR    9884   /* crosshair; UNKNOWN why this value */
#define KONA_DDX_CURSOR_ROWS          64
#define KONA_DDX_CURSOR_ROW_BYTES     16     /* source bits 0-7, mask bits 8-15 */
#define KONA_DDX_CURSOR_COLOUR_WORD   256    /* first of 4 colour words           */

struct kona_ddx_cursor_block {
    uint8_t  rows[KONA_DDX_CURSOR_ROWS][KONA_DDX_CURSOR_ROW_BYTES];
    uint32_t colour_third;   /* word 256: the extra colour, else foreground  */
    uint32_t colour_fore;    /* word 257                                      */
    uint32_t colour_back;    /* word 258                                      */
    uint32_t colour_unused;  /* word 259: not written by the module's helpers */
};

/* Colour word, ESTABLISHED (helper 0x531f50): top 10 bits of each 16-bit X colour. */
#define KONA_DDX_RGB10(r16, g16, b16) \
    ((((uint32_t)(r16) << 14) & 0x3ff00000u) | \
     (((uint32_t)(g16) << 4) & 0x000ffc00u) | \
     (((uint32_t)(b16) >> 6) & 0x000003ffu))

/*
 * X_LOADXMAP_DID (0x132), 2 words, ESTABLISHED (konValidateMode):
 * word 0 the display id, word 1 as below. Field names are the module's
 * debug string ("did, cmap, size, lum, grey"); size is the visual's plane
 * count minus 1, capped at 12 before the subtraction when screen private
 * +32 is set.
 */
#define KONA_DDX_XMAP_DID_WORD(cmap, size_m1, lum, grey) \
    ((((uint32_t)(cmap) << 7) & 0xffff80u) | (((uint32_t)(size_m1) << 3) & 0x78u) | \
     (((uint32_t)(lum) << 2) & 0x4u) | (((uint32_t)(grey) << 1) & 0x2u))

/*
 * hwd_mode bits for a main-buffer visual, ESTABLISHED as the bits
 * konValidateMode sets next to its debug strings; the names are the
 * module's. Overlay and underlay visuals use a different packing
 * (docs/opengl.md). The kernel sends this word as the third DISPMODE word.
 * UNKNOWN: what the display hardware does with each bit.
 */
#define KONA_DDX_HWD_BACKBUFFER       0x01  /* "starting in backbuffer"     */
#define KONA_DDX_HWD_STEREO           0x02  /* "Stereo"                     */
#define KONA_DDX_HWD_RGB              0x04  /* "RGB" and "DC RGB"; not RGB10 */
#define KONA_DDX_HWD_CI_LUMINANCE     0x08  /* "ColorIndex/Luminance"       */
#define KONA_DDX_HWD_DC_RGB           0x10  /* "DC RGB"                     */

#endif /* KONA_DDX_H */
