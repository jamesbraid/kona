/*
 * kona_ddx.h - what the InfiniteReality X server module (kona.so, IRIX
 * 6.5.30m) keeps and sends for the cursor, display modes, clips and swaps.
 *
 * Labels: ESTABLISHED = read from the module's disassembly at the function
 * named; INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 * software/opengl/opengl.md ("X server module: display emission") has the derivation.
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
 * (software/opengl/opengl.md). The kernel sends this word as the third DISPMODE word.
 * UNKNOWN: what the display hardware does with each bit.
 */
#define KONA_DDX_HWD_BACKBUFFER       0x01  /* "starting in backbuffer"     */
#define KONA_DDX_HWD_STEREO           0x02  /* "Stereo"                     */
#define KONA_DDX_HWD_RGB              0x04  /* "RGB" and "DC RGB"; not RGB10 */
#define KONA_DDX_HWD_CI_LUMINANCE     0x08  /* "ColorIndex/Luminance"       */
#define KONA_DDX_HWD_DC_RGB           0x10  /* "DC RGB"                     */

/*
 * Display-id table, ESTABLISHED (SetDIDMode, FreeID, SetReservedID,
 * konInitDIDState): 36-byte entries from screen private (rrmScreenPrivateIndex)
 * +152, indexed by display id; offsets below are inside an entry.
 * software/opengl/opengl.md ("Frame-buffer layer") has the derivation.
 */
#define KONA_DDX_DIDENT_SIZE          36
#define KONA_DDX_DIDENT_FIRST_HOLDER  0   /* head of the window list    */
#define KONA_DDX_DIDENT_LAST_HOLDER   4   /* tail of the window list    */
#define KONA_DDX_DIDENT_HWI_MODE      8   /* mode words SetDIDMode records */
#define KONA_DDX_DIDENT_HWD_MODE      12
#define KONA_DDX_DIDENT_FLAGS         16  /* halfword                   */
#define KONA_DDX_DIDENT_KIND          18  /* halfword; 0 main, 1 overlay, 3 reserved, 0xffff unusable */
#define KONA_DDX_DIDENT_HOLDERS       20  /* number of windows holding the id */
#define KONA_DDX_DIDENT_PEND_HWI      24  /* mode words SetReservedID copies to +8, +12 */
#define KONA_DDX_DIDENT_PEND_HWD      28
#define KONA_DDX_DIDF_FIXED           0x01  /* tested by the free-id, steal and share functions; no store found */
#define KONA_DDX_DIDF_OCCUPIED        0x02  /* has a holder or is reserved (SetReservedID sets, UnsetReservedID clears) */
#define KONA_DDX_DIDF_SHARED          0x04  /* more than one holder */
#define KONA_DDX_DIDF_MODE_SET        0x08  /* SetDIDMode has recorded the mode words */
#define KONA_DDX_DIDF_SWAP_PENDING    0x10  /* set by the buffer-swap start, cleared by the swap-done callback */
#define KONA_DDX_DIDF_NO_STEAL        0x20  /* SetNoStealID */
/* UNKNOWN: what sets bit 0x01. */

/*
 * Hardware colour-map tables behind nfbInstallHWColormap and relatives,
 * ESTABLISHED (nfbHWColormapScreenInit, read by nfbInstallHWColormap,
 * nfbUninstallHWColormap, nfbListInstalledHWColormaps, cmapDID): the pipe's
 * record at ScreenRec +116 holds the slot table (+112 count, +116 pointer)
 * and the group table (+120 count, +124 pointer). The module's own tables
 * have 18 slots in 11 groups.
 */
#define KONA_DDX_HWCMAP_SLOT_SIZE     28
#define KONA_DDX_HWCMAP_SLOT_INSTALLED 0  /* colormap now installed, 0 none */
#define KONA_DDX_HWCMAP_SLOT_NSHARED  4   /* slots sharing storage (none in the module's table) */
#define KONA_DDX_HWCMAP_SLOT_SHARED   8   /* pointer to that many slot numbers */
#define KONA_DDX_HWCMAP_SLOT_NUMBER   16  /* what cmapDID returns */
#define KONA_DDX_HWCMAP_SLOT_RESERVED 20  /* number reserved with SetReservedID */
#define KONA_DDX_HWCMAP_GROUP_SIZE    24
#define KONA_DDX_HWCMAP_GROUP_COUNT   0   /* slots in the group          */
#define KONA_DDX_HWCMAP_GROUP_RING    4   /* {slot, next index} records  */
#define KONA_DDX_HWCMAP_GROUP_HEAD    8   /* most recently installed record */
#define KONA_DDX_HWCMAP_GROUP_INSTALL 12  /* hook(colormap)              */
#define KONA_DDX_HWCMAP_GROUP_LOST    20  /* hook(colormap), null in the module's table */

#endif /* KONA_DDX_H */
