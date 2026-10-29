/*
 * DG.h - InfiniteReality (KONA) display generator, as far as the host
 * kernel driver reaches it.
 *
 * Labels: ESTABLISHED = read directly from a binary or a cited header;
 * INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 *
 * Sources:
 *   kernel   IRIX 6.5.30m kona.a, member kona_video.o (kona_kernel/disasm/
 *            kona_video/kona_video.text.s) and kona_intr_hip2.o. Functions
 *            are named in each comment.
 *   kona.h   IRIX 6.5.5 /usr/include/sys/kona.h (installed system header),
 *            for the ioctl structures the driver copies from.
 *
 * Scope: the first configuration only (one IP27 Onyx2, one pipe). The
 * driver never touches a display register directly. Every display access is
 * an address write to HH_VC_ADDRESS (HIP.h, 0x3c0) followed by one or more
 * data writes to HH_VC_DATA (0x3d0), both 32-bit at register-window offset
 * 0x800000 + register. The names below are ours; the hardware names are
 * UNKNOWN. docs/dg.md has the narrative.
 */
#ifndef KONA_DG_H
#define KONA_DG_H

/*
 * The video-controller indirect port.
 *
 * ESTABLISHED: kona_video.o and kona_edtinit_hip2.o write a 16-bit-looking
 * value to HH_VC_ADDRESS and then read or write HH_VC_DATA; nothing else in
 * the driver names a display register. HH_VC_DATA_INCR (0x3d8) and
 * HH_VC_FREADY (0x3c8) exist in the kpm table but this driver never
 * touches them.
 *
 * INFERRED: HH_VC_ADDRESS selects a register inside the display generator
 * and HH_VC_DATA moves its value. The "VC" name comes from kpm.
 */
#define KONA_DG_VC_ADDRESS            0x8003c0
#define KONA_DG_VC_DATA               0x8003d0

/*
 * Addresses the driver writes, ESTABLISHED as values; every role is
 * INFERRED from the function that writes it unless stated.
 */

/* Cursor control, written from kona_video_intr / kona_enable_dac_cursor. */
#define KONA_DG_CURSOR_CHANNEL        0x100   /* data = channel that owns the cursor (0-7) */
#define KONA_DG_CURSOR_GLYPH_ADDR     0x101   /* data = the glyph address from KONA_SELECT_CURSOR */
#define KONA_DG_CURSOR_POSITION       0x102   /* data = packed x,y (below); used when the cursor is not the DAC cursor */
#define KONA_DG_CURSOR_MODE           0x103   /* data = 0 off, 1 crosshair, 2 glyph (KONA_SELECT_CURSOR mode) */

/*
 * Packed position at KONA_DG_CURSOR_POSITION, ESTABLISHED (kona_video_intr
 * at .L00001940): bits 0-12 = x - hot_x - channel_x1 + 32, bits 13-25 =
 * y - hot_y - channel_y1 + 32, both truncated to 13 bits. On a display
 * generator whose identity word has top nibble zero (the "XMAP8A" test of
 * kona_if.h in 6.5.5) bits 0-1 are cleared, so x is a multiple of four.
 * The offset of 32 is a bias that lets the cursor sit partly off the
 * channel's top-left corner (INFERRED).
 */
#define KONA_DG_CURPOS_X_MASK         0x00001fff
#define KONA_DG_CURPOS_Y_SHIFT        13
#define KONA_DG_CURPOS_Y_MASK         0x03ffe000
#define KONA_DG_CURPOS_BIAS           32

/*
 * Frame-swap strobe, ESTABLISHED as written: 2 to address 0x80, from
 * kona_swap_complete (once per matching buffer) and from kona_video_intr
 * when no buffer is pending and the global channel word is -1. Role
 * UNKNOWN; the timing (after a retrace sequence completes, or at a video
 * interrupt with nothing queued) suggests an acknowledge or "swap done"
 * pulse.
 */
#define KONA_DG_SWAP_STROBE           0x080
#define KONA_DG_SWAP_STROBE_VALUE     2

/*
 * Per-channel register block, ESTABLISHED as addresses: eight blocks,
 * address 0x0b00 + 0x100 * channel + register, registers 0 and 2 written
 * by kona_enable_dac_cursor. kona_attach reads channel 0's register 0
 * (docs/xg.md step 7). The kernel treats channels 0-7 as the ones with a
 * hardware cursor (kona_determine_cursor_channel, branch on channel < 8).
 */
#define KONA_DG_CHAN_BASE             0x0b00
#define KONA_DG_CHAN_STRIDE           0x100
#define KONA_DG_CHAN_COUNT            8
#define KONA_DG_CHAN_REG0             0       /* written 4 then 2 (two data writes in a row) when the cursor is set up; written 0 then 2 before a DAC position update */
#define KONA_DG_CHAN_REG2             2       /* 5 on the channel that owns an active DAC cursor, else 0 */
#define KONA_DG_CHAN_CURSOR_ENABLE    5       /* INFERRED role: both low bits set while the DAC cursor is on */

/*
 * DAC cursor position, ESTABLISHED (kona_video_intr .L000019ec): the
 * driver writes address 0x22, then data, four times, for the bytes
 * x low, x high, y low, y high. x and y are scaled from screen space to
 * the channel's output resolution:
 *   x_out = dac_xout * (x - x1) / (x2 - x1) - dac_hotx
 *   y_out = dac_yout * (y - y1) / (y2 - y1) - dac_hoty
 * with x1..y2 the channel rectangle and dac_* from KONA_SET_CHANNEL_RECT.
 * The role of address 0x22 as the DAC's cursor position port is INFERRED
 * from the data it carries.
 */
#define KONA_DG_DAC_CURSOR_POS        0x22

/* Other addresses seen once, role UNKNOWN. */
#define KONA_DG_ATTACH_PROBE          0x8800  /* kona_attach writes it then reads data (docs/xg.md step 4) */

/*
 * The cursor-rectangle table the driver keeps per pipe, ESTABLISHED
 * (kona_set_channel_rect stores it, kona_determine_cursor_channel and
 * kona_get_xy_channel read it). 32 entries of 16 bytes at pipe-state
 * offset 0x1168 (4456). Offsets inside an entry:
 */
#define KONA_CHANRECT_TABLE           0x1168
#define KONA_CHANRECT_COUNT           32
#define KONA_CHANRECT_SIZE            16
#define KONA_CHANRECT_VALID           0       /* byte: 0 invalid, 1 xmap cursor, 2 DAC cursor */
#define KONA_CHANRECT_PRIORITY        1       /* signed byte; the SMALLER value wins (below) */
#define KONA_CHANRECT_X1              2       /* halfwords, in order x1, y1, x2, y2 */
#define KONA_CHANRECT_Y1              4
#define KONA_CHANRECT_X2              6
#define KONA_CHANRECT_Y2              8
#define KONA_CHANRECT_HOT_X           10      /* signed byte, DAC cursor only */
#define KONA_CHANRECT_HOT_Y           11
#define KONA_CHANRECT_XOUT            12      /* halfword, DAC cursor only: output resolution */
#define KONA_CHANRECT_YOUT            14
#define KONA_CHANNEL_NONE             32      /* the value kept when no channel owns the cursor */

#endif /* KONA_DG_H */
