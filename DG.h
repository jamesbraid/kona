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

/*
 * Video-format table files (ucode/KONA/dg4/vfo/*.vfo, dg4/cmb/*.cmb).
 *
 * These are host-side files, not registers; they are here because they set
 * the numbers the display generator's timing sequencer is loaded with.
 * ESTABLISHED from the 74 .vfo and 26 .cmb files (scripts/sdb_dump.py
 * --check); the container layout is in ucode/dg.md. Roles marked INFERRED
 * rest on the value patterns and on the register names in vof/*.vof.
 */

/* Container, big-endian. */
#define KONA_SDB_VERSION              4
#define KONA_SDB_MAGIC                0x73646220  /* "sdb " at offset 4 */
#define KONA_SDB_TABLE_DESC           128         /* count, 0, name-table offset, 0 */
#define KONA_SDB_FIRST_VALUE          144
#define KONA_SDB_TYPE_INT             2           /* int32; 7 also int32 (cmb versions) */
#define KONA_SDB_TYPE_BOOL            10          /* int32 holding 0 or 1 */
#define KONA_SDB_TYPE_STRING          15          /* u32 length, bytes padded to 4 */
#define KONA_SDB_TYPE_FLOAT           16          /* IEEE single */
#define KONA_SDB_TYPE_DOUBLE          17          /* IEEE double */

/* Sequencer capacity every .vfo states (TotalSignalCount etc.). */
#define KONA_VFO_SIGNALS              14
#define KONA_VFO_EDGE_SLOTS           50
#define KONA_VFO_LINE_TYPES           32
#define KONA_VFO_STATES               256
#define KONA_VFO_LINE_LENGTH_MAX      8191        /* INFERRED 13-bit field */
#define KONA_VFO_REPEAT_MAX           2047        /* INFERRED 11-bit field */
#define KONA_VFO_FIELDS_MAX           16          /* FieldCountMaximum */

/* Signal order (EdgeSignalAssignmentValue, SignalInitialState*), with the
 * number of consecutive edge slots each owns. */
enum kona_vfo_signal {
    KONA_SIG_HSYNC = 0,       /* 4 slots */
    KONA_SIG_VSYNC,           /* 4 */
    KONA_SIG_CSYNC,           /* 8 */
    KONA_SIG_CBLANK,          /* 6 */
    KONA_SIG_TRISYNC,         /* 6 */
    KONA_SIG_FIELD_START,     /* 2 */
    KONA_SIG_FIELD,           /* 2 */
    KONA_SIG_FRAME_START,     /* 2 */
    KONA_SIG_VIDEO_ACTIVE,    /* 6 */
    KONA_SIG_LINE_START,      /* 2 */
    KONA_SIG_STEREO_OUT,      /* 2 */
    KONA_SIG_IMPREG_LD,       /* 2 */
    KONA_SIG_XMAPREG_LD,      /* 2 */
    KONA_SIG_VOF_VDRC_EN,     /* 2 */
};

/* Level encoding of SignalInitialStateValue and TransitionDirection. */
#define KONA_VFO_LEVEL_LOW            1
#define KONA_VFO_LEVEL_HIGH           2

/*
 * Edge position (TransitionValue) and line-type length (LineTypeLength) are
 * in video clocks: pixels * VideoClockRatio, with the ratio 1/1, 1/2 or 1/4.
 * The sum of StateTableRepetitions over the valid states is the frame's
 * line count.
 */

/* PFDTable entry codes (PFDEQ, PFDLT, PFDGT, PFDTrigger in every file);
 * 32 entries, INFERRED to be the 2-bit codes of VOC_PFD_SEQUENCE_LO/HI. */
#define KONA_PFD_EQ                   0
#define KONA_PFD_LT                   1
#define KONA_PFD_GT                   2
#define KONA_PFD_TRIGGER              3
#define KONA_PFD_TABLE_SIZE           32

/* Combination files: 20 global fields, then 38 per channel. */
#define KONA_CMB_GLOBAL_FIELDS        20
#define KONA_CMB_CHANNEL_FIELDS       38
#define KONA_CMB_ENCODER_CHANNEL      8           /* ch8, used by the +NTSC combinations */
#define KONA_CMB_TILE_W               160         /* INFERRED from allocatedSize rounding */
#define KONA_CMB_TILE_H               8

#endif /* KONA_DG_H */
