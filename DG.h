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
 * Retrace sequence number on the pipe side, ESTABLISHED (arm1.u):
 * arm_retrace_seqid (0x0c013f5c) sends six engine display-bus writes of 1
 * to 6 to address 0x7f, then the payload word as a raster-bus register write
 * to index 0x420 (tbus_regwrite); init_dg_board (0x0c003d3c) ends by writing
 * 0 to the same index. The kernel reads the number back from HH_SEQID
 * (HIP.h). INFERRED: index 0x420 is the register behind HH_SEQID, reached in
 * stream order behind the drawing; address 0x7f is the last entry of the
 * display-id mode table (DISPMODE writes address = display id, 0-0x7f).
 * When the hardware copies the number into HH_SEQID (at the write, or at the
 * next vertical retrace) is UNKNOWN: no shipped software or published source
 * depends on it; the kernel only reads it in its video-interrupt handler.
 */
#define KONA_RASTER_SEQID_INDEX       0x420

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

/*
 * Video-generator interrupts in HH_INTR_STATUS, ESTABLISHED (irsaudit
 * vdEnableDgInterrupts 0x10130c98 and vdCheckDgInterrupts 0x10130d90):
 * the diagnostic writes HH_INTR_ENABLE = 0, clears HH_INTR_STATUS with
 * 0x3ff, sets HH_INTR_INFO = 0x8000 and HH_GINTR_INFO = 0x30000, then enables
 * 0x208; on an interrupt it reports bit 3 as "got video interrupt" and bit
 * 9 as "got voc interrupt", writes the status back and writes 0 to
 * HH_INTR_ACK. The netlists carry the two lines: fm0's int1/int2 to the host
 * interface's vint pins, and the VOCs' voc_int_out_l through fm0's
 * voc_intr_l. INFERRED: bit 9 is raised by an interrupt enabled in a VOC's
 * VOC_CONTROL (KONA_VOC_CTL_*), which only the genlock code turns on
 * (external sync loss and external frame), matching the kernel's VOC
 * handler, which calls the genlock notifier. The hardware condition behind
 * bit 3 (vertical retrace is the kernel's use of it) is UNKNOWN: no shipped
 * software or published source depends on more than its arrival once per
 * frame; routes tried: the kernel handlers, the firmware (no interrupt
 * set-up for fm0), irsaudit's video tests and the netlists.
 *
 * The VOC status register (0x00) bit 7, ESTABLISHED (dgSyncWithMasterVoc
 * 0x0c00b9a0): the firmware waits for bit 7 of the master VOC's status
 * (bus 0x300) to go high and then low, each wait bounded by 1000000 ticks of
 * its timer. INFERRED: a once-per-frame signal. dgGetInterruptState reads
 * fm0 0x90, the master VOC's status and the OR of the other present VOCs'
 * status; DoDGRqstGetDGInterruptState then writes 0 to fm0 0x8f.
 */
#define KONA_VOC_STATUS_FRAME         (1u << 7)

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
 * The numbers the table leaves out are below (KONA_XMAP_COPY_BUFFER on).
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

/*
 * XMAP registers outside the diagnostic's list. Sources: irsaudit 6.5.30m
 * (xmap_copybuffer 0x1013b94c, load_cursor_cntrs 0x1013b5b8,
 * substitute_xmap_data 0x1013afe4, base_xmap_init 0x1013c3c8, the read-back
 * loop of TEST_xmapmem 0x100adbfc) and arm1.u (dgMakeXmapFetal 0x0c0097d4,
 * dgForceXmapCopyBuffer 0x0c010d24, arm_x_loadxmap_config 0x0c03dc44).
 *
 * 4: ESTABLISHED written 1 after every group of register writes by both
 *    programs; irsaudit also writes 4 after a cursor-position change.
 *    INFERRED: bit 0 copies the double-buffered registers into the active
 *    set (the irsaudit function's name), bit 2 forces the new cursor
 *    position (the XMAP pin xmap_force_curs_pos in the diagnostic's pin list).
 * 5: ESTABLISHED 1 turns on, 0 off, the substitute colour held in 6 and 7
 *    (DoDGRqstDiagXmapColor, irsaudit substitute_xmap_data).
 * 8: ESTABLISHED written with the XMAP number 0-3 before a diagnostic read
 *    (0x11 = address, 8 = chip, 4 = 1, then read 0x12); 0 at start-up.
 *    INFERRED: selects which of the four XMAPs answers a read.
 * 9: ESTABLISHED 0 in dgMakeXmapFetal, 2 in irsaudit's base_xmap_init, and
 *    the X module's X_LOADXMAP_CONFIG word (1 when a window is created, 0
 *    when one is destroyed) through arm_x_loadxmap_config. Meaning UNKNOWN:
 *    no shipped software or published source depends on it beyond those
 *    three values (routes: both programs, the X module, the pin list).
 * 0xa: no reader or writer in the firmware, the kernel, the X module or
 *    irsaudit; UNKNOWN: no shipped software or published source depends on
 *    it.
 * 0x10: ESTABLISHED written 0 at start-up by both programs and never
 *    otherwise; meaning UNKNOWN: no shipped software or published source
 *    depends on it (same routes).
 * 0x12: ESTABLISHED read after the sequence above; INFERRED the read-data
 *    register.
 *
 * Start-up values, ESTABLISHED (dgMakeXmapFetal, then copy buffer):
 * 0x00, 0x03, 0x05, 0x06, 0x07, 0x08, 0x09, 0x10 = 0; 0x0c = 2;
 * 0x0d = 0xa5 and 0x0e = 6 when the board-type word at 0x04067edc is 2,
 * else 0x64 and 3; 0x0f = 0x339. irsaudit's base_xmap_init differs in
 * 0x09 = 2 and 0x0d = 198 for board type 2.
 */
#define KONA_XMAP_COPY_BUFFER         0x04
#define KONA_XMAP_SUBSTITUTE_EN       0x05
#define KONA_XMAP_RD_SELECT           0x08
#define KONA_XMAP_09                  0x09
#define KONA_XMAP_RD_DATA             0x12

/*
 * Indirect memories (fast list). ESTABLISHED: irsaudit's vcWriteFastlist
 * (0x10140868) sends XMAP register writes either as HH_VC_ADDRESS =
 * register | 0x10000 then HH_VC_DATA, or as a raster-bus word with 0x041 in
 * bits 63-52, the bus address in bits 47-32 and the data in bits 31-0
 * (bloTbusWrite). The firmware reaches the same registers through the engine
 * (mgesi_VCbusWrite). Registers, from the users in both programs:
 *   0x18 address: memory address and select bits (below);
 *   0x19 colour-map and cursor data, one word per address, auto-increment
 *        (load_cmap streams n words after one address);
 *   0x1b gamma data (load_gamma_table, arm_x_loadgamma);
 *   0x1c display-id table data, address in 0x18 (arm_x_loadxmap_did);
 *   0x1d channel set-up, address in 0x18 = channel (irsaudit
 *        define_xmap_channel): bits 3-0 gamma page, bit 4 external gamma,
 *        bit 5 no gamma, bit 6 alpha to blue, from its debug line
 *        "for chan %d, no_gam=%d ext=%d page=%d alp to blue=%d";
 *   0x1e written once after a gamma load (irsaudit, data 0) and after every
 *        firmware load (data not set: a register value left over);
 *   0x1f written with 0 after a colour-map or cursor load (irsaudit, once;
 *        the firmware three times, then 0x1e, then three more) and three
 *        times before a new address. INFERRED: 0x1f carries no data and
 *        pushes earlier list entries through; 0x1e ends a load. UNKNOWN
 *        beyond that: no shipped software or published source depends on it.
 */
#define KONA_XMAP_FL_ADDR             0x18
#define KONA_XMAP_FL_CMAP_DATA        0x19
#define KONA_XMAP_FL_GAMMA_DATA       0x1b
#define KONA_XMAP_FL_DID_DATA         0x1c
#define KONA_XMAP_FL_CHANNEL          0x1d
#define KONA_XMAP_FL_END              0x1e
#define KONA_XMAP_FL_FLUSH            0x1f
#define KONA_DG_VC_FASTLIST           0x10000 /* or-ed into HH_VC_ADDRESS by vcWriteFastlist */
#define KONA_XMAP_CHAN_GAMMA_PAGE     0x0f
#define KONA_XMAP_CHAN_EXT_GAMMA      0x10
#define KONA_XMAP_CHAN_NO_GAMMA       0x20
#define KONA_XMAP_CHAN_ALPHA_TO_BLUE  0x40

/*
 * Gamma address in 0x18, ESTABLISHED (irsaudit load_gamma_table 0x1013bbd4,
 * load_full_gamma 0x1013bf80, make_gamma_addr_legal 0x1013c214; kona.so
 * konStore24DCColors): bits 11-0 entry (load_full_gamma loads 4 x 1024),
 * bits 13-12 colour (0 red, 1 green, 2 blue; 3 is turned into 2), bits
 * 17-14 page, bit 18 a flag the irsaudit callers pass as 0. Page and entry
 * make 16 bits, the width of each of the XMAP's three gamma-RAM address buses
 * (xmap_gam_ad_red/green/blue). An entry is a 12-bit value: the X module
 * stores the top 12 bits of the 16-bit X colour, and writes each colour index
 * to two consecutive entries (address base + 2 x index + 0x1000 x colour).
 */
#define KONA_XMAP_GAMMA_ENTRY         0x00000fff
#define KONA_XMAP_GAMMA_COLOUR        0x00003000
#define KONA_XMAP_GAMMA_PAGE          0x0003c000
#define KONA_XMAP_GAMMA_FLAG18        0x00040000

/*
 * Cursor memory. ESTABLISHED: the cursor image is loaded through 0x18/0x19
 * like a colour map (irsaudit load_cursor calls load_cmap with 260 words);
 * the X module keeps 39 slots (kon_initCursorCaches: 39 cache entries of 16
 * bytes) at slot x 260, and the crosshair address 9884 is 39 x 260 - 256, so
 * the crosshair's colour block (address + 0x100) is the 4 words just past the
 * last slot, 10140-10143. INFERRED: the cursor shares the XMAP's external
 * colour-map RAM, whose address bus is 17 bits (xmap_cmap_addr), the width of
 * KONA_XMAP_CURSOR_GLYPH_BASE's mask.
 * Block layout, ESTABLISHED from the X module and from
 * DoDGRqstDiagCursorFromImage (0x0c0081a0): 64 rows of 4 words, plane A
 * (64 bits, left pixel in bit 31 of the first word) then plane B; a pixel's
 * value is A << 1 | B; words 256-259 are the colours of pixel values 3, 2, 1
 * and 0, each 10:10:10 (red bits 29-20). The X module puts the source bitmap
 * in plane A and the mask in plane B, so 256 is the foreground (or the
 * third colour), 258 the background, and 259 belongs to value 0, which the X
 * module and the firmware never set (the firmware sends an uninitialised
 * stack word there). INFERRED: value 0 is transparent and 259 is never
 * shown. The crosshair loads one colour into all four words, so which word
 * it uses is UNKNOWN: no shipped software or published source depends on it.
 */
#define KONA_CURSOR_SLOT_WORDS        260
#define KONA_CURSOR_SLOTS             39
#define KONA_CURSOR_COLOURS           0x100   /* offset of the colour words in a block */
#define KONA_CURSOR_XHAIR_ADDR        9884

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
/*
 * VOC_CONTROL low bits. ESTABLISHED as written: bits 1-0 take 1 when a
 * channel is enabled (DoDGRqstEnableChannel, dgStartupRequesters), 2 in
 * dgResize when channel flag bit 24 is set, 3 while genlock is shut down
 * (dgShutdownChannelGenlockNicely) and 0 when disabled;
 * dgLoadChannelGenlockParams sets bits 5-4 and clears bit 6; dgMakeVocFetal
 * writes 0. INFERRED names: the .vof comment list gives the fields in the
 * order DBL_BUF_EN, DBL_BUF_CNTRL, FIFO_OVER_INT, FIFO_UNDER_INT,
 * EXT_SYNC_LOSS_INT, EXT_FRAME_INT, VDRC_INT, HOST_INT, and one bit each from
 * bit 0 fits every write above: the genlock code enables the two
 * external-sync interrupts and turns the VDRC one off. No firmware path sets
 * bits 2, 3 or 7.
 */
#define KONA_VOC_CTL_DBL_BUF_EN       (1u << 0)
#define KONA_VOC_CTL_DBL_BUF_CNTRL    (1u << 1)
#define KONA_VOC_CTL_FIFO_OVER_INT    (1u << 2)
#define KONA_VOC_CTL_FIFO_UNDER_INT   (1u << 3)
#define KONA_VOC_CTL_EXT_SYNC_LOSS_INT (1u << 4)
#define KONA_VOC_CTL_EXT_FRAME_INT    (1u << 5)
#define KONA_VOC_CTL_VDRC_INT         (1u << 6)
#define KONA_VOC_CTL_HOST_INT         (1u << 7)
#define KONA_VOC_02                   0x02    /* written 0 then 1 around enabling (dgStartupRequesters,
                                               * DoDGRqstEnableChannel, dgResize) */
/*
 * Input window, ESTABLISHED (dgLoadVocIwsc 0x0c00e104). A groupxel is four
 * pixels: the function divides x by 4 and rounds the width up to 4.
 *   0x03 bits 4-0 = word 0 of the channel record & 0x1f, bits 14-5 = screen
 *        width in groupxels - 1 ("Warning: setting screen X to %d
 *        groupxels!" below 4) [VOC_IWSC_SCREEN];
 *   0x04 bits 21-12 = x / 4, bits 11-0 = y; 0 when the VOC is its own write
 *        VOC [VOC_IWSC_ORIGIN];
 *   0x05 bits 21-12 = (width + 3) / 4, bits 11-0 = height [VOC_IWSC_SIZE].
 * Bracketed names matched by content (INFERRED); the .vof list's order
 * (origin, size, screen) is not the register order.
 */
#define KONA_VOC_IWSC_SCREEN          0x03
#define KONA_VOC_IWSC_ORIGIN          0x04
#define KONA_VOC_IWSC_SIZE            0x05
#define KONA_GROUPXEL_PIXELS          4
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
/*
 * Video requester, ESTABLISHED as built by dgConfigureVideoRequester
 * (0x0c00e324). Bracketed names are the .vof list's VOC_VDRC_* names, matched
 * by field content and by the list's offsets from VDRC_CONTROL (START_LINE
 * +3, MIDDLE_LINE +4, END_LINE +5, PAN +6) (INFERRED). The framebuffer is
 * read in tiles of 160 pixels by 8 lines (the code divides x by 160 and the
 * line by 8; the .vof comment says the same); a tile line is 40 groupxels.
 * One request covers at most 8 tiles (4 when the board-type word at
 * 0x04067edc is 2), the combination files' MaxTilesPerRequest.
 *   0x44 [VDRC_CONTROL] read-modify-write: bits 6-5 = DGGlobalState+0x36b8
 *        & 3, bit 7 = channel flag bit 30 (LoadFormat word 27 bit 0), bits
 *        10-8 from LoadFormat word 26: 1 sets bits 8 and 9, 2 bit 8, 3 bit 10,
 *        any other value none. Which of PIXEL_SIZE, DITHER, XFER_SIZE and
 *        XFER_ALPHA each bit is: UNKNOWN: no shipped software or published
 *        source depends on it (routes: the firmware, the .vof list, irsaudit's
 *        messages "XferSize 12 on non-RGB" and "XferSize 10 && XferAlpha",
 *        which name the fields but not their bits).
 *   0x45 [VDRC_MAW] = DGGlobalState+0x36b4 (tiles per framebuffer row; the
 *        .vof value 4 is commented "640 x 480").
 *   0x47, 0x48, 0x49 [START_LINE, MIDDLE_LINE, END_LINE]: request words,
 *        below. A window inside one request writes 0 to 0x47 and 0x48 and
 *        fills only 0x49; a wider one is a START request, a MIDDLE request
 *        repeated, and an END request.
 *   0x4a [VDRC_PAN] bits 5-0 = (x mod 160) / 4, the first groupxel inside the
 *        first tile; bits 7-6 a second value taken mod 4 (role UNKNOWN).
 *   0x50 + f and 0x58 + f, f = field: one word written to both: bits 6-0 =
 *        (y - o) mod 80, bits 19-7 = the field's first tile address, (y - o)
 *        / 8 times the tiles per row plus x / 160, bits 23-20 = a field-layout
 *        code; o is the field's line offset times a per-layout factor.
 *   0x60 + f: the channel record's word at +0xe8 + 16f with bits 23-12 = the
 *        window height and bits 27-24 = a field line offset.
 */
#define KONA_VDRC_CONTROL             0x44
#define KONA_VDRC_MAW                 0x45
#define KONA_VDRC_START_LINE          0x47
#define KONA_VDRC_MIDDLE_LINE         0x48
#define KONA_VDRC_END_LINE            0x49
#define KONA_VDRC_PAN                 0x4a
#define KONA_VDRC_FIELD_A(f)          (0x50 + (f))
#define KONA_VDRC_FIELD_B(f)          (0x58 + (f))
#define KONA_VDRC_REQ_PATTERN(f)      (0x60 + (f))
#define KONA_TILE_WIDTH               160
#define KONA_TILE_HEIGHT              8
#define KONA_VDRC_MAX_TILES_PER_REQ   8
/* Request word at 0x47-0x49, ESTABLISHED bit positions. */
#define KONA_VDRC_REQ_TILES_M1        0x00000007  /* tiles in the request - 1 */
#define KONA_VDRC_REQ_GROUPXELS_M1    0x00003ff8  /* bits 13-3: groupxels in the line - 1 */
#define KONA_VDRC_REQ_VALID           0x00004000  /* set in START and MIDDLE, never in END */
#define KONA_VDRC_REQ_REPEAT          0x007f8000  /* bits 22-15, MIDDLE only: repeat count */
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
#define KONA_LF_ONE                   1       /* ESTABLISHED: the channel loader (kona.so
                                               * 0x4dc610) always stores 1 here; the
                                               * firmware never reads it */
#define KONA_LF_NAME                  2       /* 16 words: format name, NUL padded */
#define KONA_LF_DATESTAMP             18      /* modification time of the .vfo file */
#define KONA_LF_FRAME_RATE            19      /* FramesPerSecond * 65536; when the channel is
                                               * genlocked, 0x4fcfd0 rounds it to a whole
                                               * multiple or fraction of the sync format's rate */
#define KONA_LF_FIELDS                20      /* FieldsPerFrame (1-8) */
#define KONA_LF_TOTAL_LINES           21
#define KONA_LF_TOTAL_PIXELS          22
#define KONA_LF_ACTIVE_LINES          23
#define KONA_LF_ACTIVE_PIXELS         24
#define KONA_LF_PIXELS_PER_CLOCK      25      /* VideoClockRatioDenominator: 1, 2 or 4; the
                                               * channel loader zeroes it for a field-sequential
                                               * channel that copies another channel */
#define KONA_LF_PIXEL_FORMAT          26      /* ESTABLISHED (channel loader): the source
                                               * channel's PixelFormat, 0 RGB10, 1 RGBA10,
                                               * 2 RGB12 (ircombine's buttons), 3 and 4 also
                                               * legal to vfmtIsKonaCombinationValidForTarget;
                                               * 5 when the channel's OutputAlpha (alpha on
                                               * blue) is set */
#define KONA_LF_DITHER                27      /* ESTABLISHED: channel record +324, the word
                                               * ircombine's Dither toggle sets; no .cmb field
                                               * fills it, so a loaded file sends 0. INFERRED:
                                               * its bit 0, VOC 0x44 bit 7, is the dither bit */
#define KONA_LF_BLANK                 28      /* 28-30 -> KONA_VOC_BLANK */
#define KONA_LF_STATE_COUNT           31      /* StateTableValidStates */
#define KONA_LF_INITIAL_LEVELS        32      /* -> KONA_VOC_VOF_INITIAL */
#define KONA_LF_STATES                33      /* 128 words, two states each: even state bits
                                               * 10-0 repeat count, 15-11 line type; odd state
                                               * bits 26-16 and 31-27 */
#define KONA_LF_LINE_A                161     /* 32 words -> KONA_VOC_LINE_A */
#define KONA_LF_LINE_B                193     /* 32 words -> KONA_VOC_LINE_B */
#define KONA_LF_EDGES                 225     /* 50 words -> KONA_VOC_EDGE, signal by signal */
#define KONA_LF_OPTION_A              275     /* ESTABLISHED (channel loader), by channel kind:
                                               * the combination's usingEncoderOutput on an
                                               * encoder-capable channel; 1 on a GVO channel
                                               * that copies another channel; 1 on the VBOB
                                               * channel 14 after its command 91 */
#define KONA_LF_OPTION_B              276     /* 1 when an encoder or GVO channel copies
                                               * another channel's pixels, else 0 */
#define KONA_LF_FLAT                  277     /* 0 for field-sequential colour, for an
                                               * interlaced format (FieldLineSkip[0] > 0) or on
                                               * a PAB channel; otherwise 1 */
#define KONA_LF_EYES                  278     /* union of the fields' re-coded eye codes as a
                                               * 2-bit mask (1, 2 or 3); 1 for a record the
                                               * module marks non-stereo */
#define KONA_LF_CLOCK0                279     /* 8 words, dgLoadVocClockParams(id, ., 0) */
#define KONA_LF_CLOCK1                287     /* 8 words, dgLoadVocClockParams(id, ., 1) */
/*
 * Clock parameter set (8 words). ESTABLISHED as computed by the X module's
 * PLL solver at kona.so 0x4adfc0 (konCalcVocClockParams is among the
 * module's section-name strings; the match is INFERRED). Inputs: a reference
 * frequency and the pixel clock. Set 0 uses the crystal, 14.75 MHz or
 * 12.2727 MHz by a flag of the loaded combination; set 1 uses the external
 * sync format's line rate when the channel is genlocked, else it equals
 * set 0. Names are INFERRED from the solver's arithmetic, which is a
 * charge-pump PLL model:
 *   word 0  control: 0x80 always; 0x85 for an output below 12 MHz and 0x87
 *           otherwise when the reference is a crystal, 0x80 when it is a line
 *           rate. Bit 1 picks the loop constants the solver uses (120000,
 *           1.1e-10, 1.1e-11, else 56000, 1e-8, 1e-9: INFERRED ohms and farads).
 *   word 1  feedback divider N
 *   word 2  reference divider M: 1 in line-rate mode; 64, with N = 64 x the
 *           post-divider ratio, when the output is within 100 Hz of
 *           12.2727 MHz; otherwise from the search at 0x542cf0 (bounds 2048
 *           and 1024)
 *   word 3  1 in line-rate mode, else 0
 *   word 4  VCO range index 0-7 into 10, 15, 20, 25, 45, 60, 75, 90 MHz
 *           (first entry whose 85 percent exceeds VCO / 3.5)
 *   word 5  charge-pump index 0-7 into 0.2344, 0.9375, 3.75, 15, 1.875, 7.5,
 *           30, 120 uA (table at 0x586f58), chosen for the loop's damping
 *   word 6  post-divider code: 0 = /8, 1 = /4, 2 = /2, 3 = /1, the largest
 *           ratio that keeps the VCO at or below 230 MHz; above that the
 *           module prints "output frequency ... is greater than PLL max"
 *   word 7  3, constant
 * What the clock chip does with each code beyond the solver's model:
 * UNKNOWN: no shipped software or published source depends on it. Routes
 * tried: the solver; dgLoadVocClockParams, which copies the words to VOC
 * 0x71 and 0x73 unchanged; the .vfo and vfc/rules files, which carry no PLL
 * field; setmon, which carries its own copy of the solver (the same
 * section name and "PLL max" message).
 */
#define KONA_LF_LOCK_MUL              295     /* ESTABLISHED (0x4fcfd0): genlocked to a sync
                                               * format with another line count, this format's
                                               * lines / gcd(lines, sync lines); 1 when the
                                               * counts match; 0 when not genlocked */
#define KONA_LF_LOCK_DIV              296     /* sync lines / gcd - 1 for a ratio, else 0 */
#define KONA_LF_LINE_MAX              297     /* always 8191 from the X module */
#define KONA_LF_LOCK_LINE             298     /* the sync format's PFDVOFVerticalPhase when
                                               * the line counts match; lines x that phase /
                                               * sync lines - 2 for a ratio; 8191 when not
                                               * genlocked */
#define KONA_LF_VOC08_HI              299     /* 299 and 300: the X module stores neither, so
                                               * both are 0; the firmware puts them in VOC 0x08
                                               * bits 28-26 and 29. Their meaning: UNKNOWN: no
                                               * shipped software or published source depends
                                               * on it (routes: every store into the request
                                               * in kona.so, setmon, ircombine, the firmware) */
#define KONA_LF_TILES_PER_REQUEST     301     /* the source channel's MaxTilesPerRequest */
#define KONA_LF_TILES_PER_LINE        302     /* the source channel's MaxTilesPerLine */
#define KONA_LF_FIELD_LINES           303     /* 16 words each: FieldLineCount, */
#define KONA_LF_FIELD_OFFSET          319     /* FieldLineOffset, */
#define KONA_LF_FIELD_SKIP            335     /* FieldLineSkip, */
#define KONA_LF_FIELD_COLOR           351     /* FieldColor, re-coded by the module, */
#define KONA_LF_FIELD_EYE             367     /* FieldEye, re-coded by the module */
#define KONA_LF_WORDS                 383

/*
 * Sync selection (display command 35, DoDGRqstSyncSelects, 4 words).
 * ESTABLISHED from the X module's sender at kona.so 0x555cf0 (section name
 * konSetOutputSync, INFERRED match): word 0 the VOC id, word 1 the port,
 * word 2 the select code, word 3 the tri-level flag. Ports: 0 red, 1 green,
 * 2 blue, 3 the auxiliary H/C sync connector. The module's sync types map
 * to select codes as below and refuse the rest with its own messages.
 */
#define KONA_SYNC_PORT_RED            0
#define KONA_SYNC_PORT_GREEN          1
#define KONA_SYNC_PORT_BLUE           2
#define KONA_SYNC_PORT_AUX            3
#define KONA_SYNC_SEL_NONE            0       /* type 0: refused on the aux port */
#define KONA_SYNC_SEL_COMPOSITE       1       /* type 3 composite on a colour port; type 6
                                               * composite TTL on the aux port; type 9
                                               * composite tri-level on a colour port, with
                                               * word 3 = 1 */
#define KONA_SYNC_SEL_HORIZONTAL      2       /* type 4 horizontal TTL, aux port only */

#endif /* KONA_DG_H */
