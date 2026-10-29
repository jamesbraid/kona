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

/*
 * XMAP and video DAC registers, ESTABLISHED as a list (irsaudit 6.5.30m,
 * tables xmap_regs at 0x101ffdc0 and vdac_regs at 0x101fffc0, entries
 * {name, register number, mask}, walked by TEST_xmapreg and TEST_dacreg).
 * INFERRED: the mask is the set of bits the register test can write and
 * read back, so it bounds each register's width. INFERRED: XMAP register
 * n is the kernel's video-controller address 0x100 + n; the four cursor
 * registers above carry exactly the values these names describe.
 * Numbers 4, 5, 8-10 and 0x10 are not in the table: UNKNOWN.
 */
#define KONA_XMAP_CURSOR_CHAN_ID      0x00    /* mask 0x1f */
#define KONA_XMAP_CURSOR_GLYPH_BASE   0x01    /* mask 0x1ffff */
#define KONA_XMAP_CURSOR_POS          0x02    /* mask 0x3ffffff */
#define KONA_XMAP_CURSOR_ENABLES      0x03    /* mask 0x1ff */
#define KONA_XMAP_SUBSTITUTE_LOW      0x06    /* mask 0xffffffff */
#define KONA_XMAP_SUBSTITUTE_HIGH     0x07    /* mask 0x1fff */
#define KONA_XMAP_RM_CONFIG           0x0b    /* mask 0x3 */
#define KONA_XMAP_DI_COMPARE_ADDR     0x0c    /* mask 0x3f */
#define KONA_XMAP_IMP_DELAY           0x0d    /* mask 0x1ff */
#define KONA_XMAP_PIPE_DELAY          0x0e    /* mask 0x7 */
#define KONA_XMAP_FASTLIST_CONFIG     0x0f    /* mask 0x3ff */
#define KONA_XMAP_RD_ADDR             0x11    /* mask 0x7ffff */

#define KONA_VDAC_PIXEL_MASK          0x004   /* mask 0x3ff */
#define KONA_VDAC_CURSOR_CTRL         0x204   /* mask 0xf */
#define KONA_VDAC_CURSOR_CLR_2        0x304   /* mask 0x3ff */

/*
 * The display bus as the ARM firmware addresses it.
 *
 * Source: arm1.u (IRIX 6.5.30m). Every load and store whose address the
 * code builds from constants is listed in ucode/dg_access.tsv
 * (scripts/dg_access.py); docs/dg.md ("The firmware's display-bus window")
 * has the narrative.
 *
 * ESTABLISHED: bus address A is ARM address 0x00600000 + 4 * A, one 32-bit
 * word per address (DoDGRqstVCWrite 0x0c012200 stores payload word 1 at
 * 0x600000 + (word 0 << 2); DoDGRqstVCRead 0x0c012250 loads it). Every
 * firmware access sits between two three-iteration delay loops.
 * INFERRED: it is the space the kernel reaches through HH_VC_ADDRESS and
 * HH_VC_DATA; the cursor registers 0x100-0x103, the swap strobe 0x80 and
 * the video-DAC blocks 0xb00 + 0x100n are written by both with the same
 * values. ESTABLISHED: the engine path (mgesi_VCbusWrite, from
 * arm_dispmode, arm_swap_cntrl, arm_dplex_swap and arm_x_loadxmap_did)
 * sends an address and a data word in the same space (0x80, 0x118, 0x11c,
 * 0x11e, 0x11f, 0x1920, 0x8001, 0xe500 appear on both paths).
 */
#define KONA_DG_ARM_WINDOW            0x00600000  /* ARM address of bus address 0 */

/*
 * Block map. ESTABLISHED: the addresses each function family uses. The
 * chip behind each block is INFERRED from the function names and from the
 * chip selects of the bridge chip fm0 (docs/dg.md, netlist dg4_2voc).
 */
#define KONA_DG_DISPMODE_DID(i)       (i)     /* arm_dispmode sends the DISPMODE mode byte to
                                               * address = its index word (display id); the
                                               * kernel sets mode bit 0 for indexes below 64
                                               * and bit 1 for the rest */
#define KONA_DG_FM_SWAP_STROBE        0x0080  /* written by arm_swap_cntrl and the kernel */
#define KONA_DG_FM_DID_SWAP(n)        (0x0081 + (n)) /* n = 0-9: dgUpdateFMDidSwapTable 0x0c0101b4
                                               * writes the DISPMODE index to slot n when the
                                               * slot's recorded drawable word matches; ten
                                               * slots, as fm0 has ten do_swap pins */
#define KONA_DG_FM_8B                 0x008b  /* input sync, board reset ratio (DoDGRqstInputSync,
                                               * DoDGRqstBoardResetRatio), encoder letterbox */
#define KONA_DG_FM_8E                 0x008e  /* master clock select (DoDGRqstMasterClockSelect) */
#define KONA_DG_FM_8F                 0x008f  /* written 0 by DoDGRqstGetDGInterruptState */
#define KONA_DG_FM_90                 0x0090  /* raster-board count (dgGetNumRMs, dgSetNumRMs) and
                                               * interrupt state (dgGetInterruptState) */
#define KONA_DG_XMAP_BASE             0x0100  /* XMAP register n at 0x100 + n (list above);
                                               * 0x118, 0x119, 0x11b, 0x11c, 0x11e and 0x11f are
                                               * written by the cursor-image, textport and
                                               * X_LOADXMAP_DID paths and are not in the
                                               * diagnostic's register list */
#define KONA_DG_VOC_BASE              0x0200  /* VOC id v: block 0x200 + 0x100 * v */
#define KONA_DG_VOC_STRIDE            0x0100
#define KONA_DG_VDAC_BASE             0x0b00  /* video DAC of channel n: 0xb00 + 0x100 * n */
#define KONA_DG_VDAC_INDEX            0       /* two writes: index low byte, then high byte */
#define KONA_DG_VDAC_CLUT             1       /* colour-map data (dgVDacClutWrite/Read) */
#define KONA_DG_VDAC_CONTROL          2       /* indexed register data (dgVDacControlWrite/Read);
                                               * so the kernel's "4 then 2" on register 0 selects
                                               * KONA_VDAC_CURSOR_CTRL (0x204) and its 5 or 0 on
                                               * register 2 is that register's value */
#define KONA_DG_VDAC_MODE             3       /* dgVDacModeWrite/Read */
#define KONA_DG_GDAC_BASE             0x1300  /* channel n: 0x1300 + 0x100 * n; dgGDacChannelWrite
                                               * writes registers 2-5, 0xf and 0x17 */
#define KONA_DG_GAIN_1708             0x1708  /* DoDGRqstOutputGain, DoDGRqstEncoderOutputGain */
#define KONA_DG_ENC_BASE              0x1800  /* video encoder: 0 and 2 control address and data,
                                               * 1 and 3 colour-map address and data
                                               * (dgEncoderControl*, dgEncoderClut*) */
#define KONA_DG_XMAP_CLOCK            0x1900  /* DoDGRqstXMapClockSelect */
/*
 * 0x2000 and up: option boards and their VOCs. ESTABLISHED as users: PAB
 * 0x2300-0x2304 and its loader 0x2400-0x2600 (pgmclr, databit, chkdone);
 * sync selects 0x3400 and 0xcd00; 0x6300 (LoadFormat); dplex 0x8001, 0x8400,
 * 0xe300, 0xe500; DGO 0xc100-0xc104 and its encoder 0xc400-0xc401
 * (dgWriteDgoTMC22071a); HDGVO 0xc200-0xc216 (DoDGRqstDataFormat); genlock
 * 0xc801, 0xc806, 0xe801, 0xe806; gamma and blanking 0xc006, 0xc104, 0xf000
 * (dgBlankChannel, arm_x_loadgamma).
 */

/*
 * VOC ids. ESTABLISHED: the per-channel requests take the id from payload
 * word 0 and address VOC register r at 0x200 + 0x100 * id + r. Ids 0-7 are
 * the base board's channels (the eight-iteration loops of the enable and
 * blanking code). DoDGRqstLoadFormat loads one format into the partner
 * ids of 0x1e/0x1f, 0x2e/0x2f/0x30, 0x5e/0x5f/0x60, 0xc6/0xc7 and 0xc9/0xca
 * by calling itself, and DoDGRqstEnableChannel writes register 0x8a of ids
 * 0x1f, 0x2f, 0x30, 0x5f, 0xc7 and 0xca. INFERRED: VOCs on option boards.
 * Address 0x300 (register 0 of id 1) is read by dgGetInterruptState and
 * dgSyncWithMasterVoc.
 */
#define KONA_DG_VOC_REG(id, r)        (0x200 + 0x100 * (id) + (r))

/*
 * VOC registers by offset in the block. ESTABLISHED: the functions that
 * access each and the fields the code builds. Bracketed names are the
 * VOC register names of the vof/*.vof comment list matched by role
 * (INFERRED); that list gives no numbers.
 */
#define KONA_VOC_STATUS               0x00    /* read by dgFlushStatus, dgMakeVocFetal */
#define KONA_VOC_CONTROL              0x01    /* [VOC_CONTROL] read-modify-written by the requester
                                               * start and stop and the genlock code; bits 11-9 =
                                               * output pixel mux, from the pixels-per-clock word
                                               * through the table at 0x040416c4 (LoadFormat) */
#define KONA_VOC_02                   0x02    /* written 0 then 1 around enabling (dgStartupRequesters,
                                               * DoDGRqstEnableChannel, dgResize) */
#define KONA_VOC_IWSC_ORIGIN          0x03    /* [VOC_IWSC_*] dgLoadVocIwsc 0x0c00e104 */
#define KONA_VOC_IWSC_SIZE            0x04
#define KONA_VOC_IWSC_SCREEN          0x05
#define KONA_VOC_VOF_CONTROL          0x06    /* [VOC_VOF_CONTROL] bit 3 set then cleared before the
                                               * state table is streamed (clear state pointer); bits
                                               * 8-4 select line type 0-31 before 0x0a/0x0b and
                                               * signal 0-13 before its edge slots */
#define KONA_VOF_CLR_STATE_PTR        (1u << 3)
#define KONA_VOF_SELECT_MASK          0x1f0
#define KONA_VOC_VOF_INITIAL          0x07    /* bits 13-0 = initial level of the 14 sequencer
                                               * signals, 1 = high, in kona_vfo_signal order; bits
                                               * 17-18 or-ed in when the DG4 revision decodes below
                                               * 1 ("rev %d DG4 disables H & V sync outputs") */
#define KONA_VOF_DISABLE_HV_SYNC      0x60000
#define KONA_VOC_08                   0x08    /* LoadFormat words 297-300 into bits 12-0, 25-13,
                                               * 28-26 and 29; read by dgAdjustVPhase */
#define KONA_VOC_STATE_PORT           0x09    /* state table, LoadFormat words 33 onward written
                                               * one after another to this one address
                                               * (INFERRED: an auto-incrementing port) */
#define KONA_VOC_LINE_A               0x0a    /* selected line type: edge mask, edges 0-31 */
#define KONA_VOC_LINE_B               0x0b    /* selected line type: bits 30-18 length - 3,
                                               * bits 17-0 edge mask, edges 32-49 */
#define KONA_VOC_EDGE(n)              (0x0c + (n)) /* edge slot n (0-7) of the selected signal:
                                               * bits 12-0 position, 0x1fff = slot unused */
#define KONA_VOC_BLANK                0x14    /* [VOC_VOF_PIXEL_BLANK_FIRST/LAST] bits 7-0 and 15-8
                                               * from LoadFormat words 29 and 30, bit 16 word 28 */
#define KONA_VOC_PFD                  0x30    /* 0x30-0x32: genlock frame detection
                                               * (dgLoadChannelGenlockParams) */
#define KONA_VOC_VDRC                 0x43    /* 0x43-0x4a, 0x50, 0x58, 0x60: video requester
                                               * (dgConfigureVideoRequester); 0x44 holds the enable
                                               * the start and stop code tests [VOC_VDRC_CONTROL];
                                               * 0x60 is also the field-sequential and stereo table
                                               * (dgLoadFieldSequentialAndStereo) */
#define KONA_VOC_PLL_CONTROL          0x70    /* [VOC_PLL_CONTROL] polled by dgWaitForVocPllInterface,
                                               * written by dgProgramClock; 0x71 and 0x73 written
                                               * by dgLoadVocClockParams */
#define KONA_VOC_GEN                  0x81    /* 0x81-0x84 [VOC_GEN_*]: clock source
                                               * (dgSelectVocClockSrc) and genlock; LoadFormat puts
                                               * word 295 in 0x81 bits 11-2 and word 296 in 0x82
                                               * bits 21-14 */
#define KONA_VOC_FIFO                 0x8a    /* [VOC_FIFO_CONTROL] dgResetVocFifo writes 0x2301;
                                               * LoadFormat sets bit 12 = word 278, bit 13 = !word 278 */
#define KONA_VOC_FIELD_DOMINANCE      0x8f    /* DoDGRqstChannelFieldDominance, dgResize */
#define KONA_VOC_SIZ                  0x90    /* 0x90-0x9d [VOC_SIZ_*] scaler, written by dgResize */

/*
 * The LoadFormat request (display command 22, 383 payload words).
 * ESTABLISHED on both sides: the X module builds it (kona.so 6.5.30m: the
 * format readers at 0x42f280-0x4314d0, called by vfmtReadKonaVideoFormat,
 * fill it from a .vfo file; the unnamed function at 0x4fcfd0 adds the clock
 * words and sends it through the display-command sender at 0x5341a0) and
 * DoDGRqstLoadFormat (0x0c00a9b0-0x0c00b998) consumes it. Word numbers;
 * docs/dg.md gives each word's source and destination.
 */
#define KONA_LF_VOC_ID                0
#define KONA_LF_NAME                  2       /* 16 words: format name, NUL padded */
#define KONA_LF_DATESTAMP             18      /* modification time of the .vfo file */
#define KONA_LF_FRAME_RATE            19      /* FramesPerSecond * 65536 */
#define KONA_LF_FIELDS                20      /* FieldsPerFrame (1-8) */
#define KONA_LF_TOTAL_LINES           21
#define KONA_LF_TOTAL_PIXELS          22
#define KONA_LF_ACTIVE_LINES          23
#define KONA_LF_ACTIVE_PIXELS         24
#define KONA_LF_PIXELS_PER_CLOCK      25      /* VideoClockRatioDenominator: 1, 2 or 4 */
#define KONA_LF_BLANK                 28      /* 28-30 -> KONA_VOC_BLANK */
#define KONA_LF_STATE_COUNT           31      /* StateTableValidStates */
#define KONA_LF_INITIAL_LEVELS        32      /* -> KONA_VOC_VOF_INITIAL */
#define KONA_LF_STATES                33      /* 128 words, two states each: even state bits
                                               * 10-0 repeat count, 15-11 line type; odd state
                                               * bits 26-16 and 31-27 */
#define KONA_LF_LINE_A                161     /* 32 words -> KONA_VOC_LINE_A */
#define KONA_LF_LINE_B                193     /* 32 words -> KONA_VOC_LINE_B */
#define KONA_LF_EDGES                 225     /* 50 words -> KONA_VOC_EDGE, signal by signal */
#define KONA_LF_CLOCK0                279     /* 8 words, dgLoadVocClockParams(id, ., 0) */
#define KONA_LF_CLOCK1                287     /* 8 words, dgLoadVocClockParams(id, ., 1) */
#define KONA_LF_FIELD_LINES           303     /* 16 words each: FieldLineCount, */
#define KONA_LF_FIELD_OFFSET          319     /* FieldLineOffset, */
#define KONA_LF_FIELD_SKIP            335     /* FieldLineSkip, */
#define KONA_LF_FIELD_COLOR           351     /* FieldColor, re-coded by the module, */
#define KONA_LF_FIELD_EYE             367     /* FieldEye, re-coded by the module */
#define KONA_LF_WORDS                 383

#endif /* KONA_DG_H */
