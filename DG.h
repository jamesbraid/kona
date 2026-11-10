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
 * 0x800000 + register. The names below are ours except where a comment
 * cites kpm, irsaudit, the firmware's symbols or the .vof field list.
 * docs/dg.md has the narrative.
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
/*
 * KONA_DG_VC_ADDRESS: HH_VC_ADDRESS, the address half of the display bus's
 * indirect port, at host window offset 0x8003c0. Established: in
 * kona_video.o `kona_swap_complete` (at 0x26c) writes 128 here and
 * `kona_enable_dac_cursor` (at 0x1738) writes 0xb00 + 0x100 per channel,
 * each followed by a write to the data port; `kona_attach` in
 * kona_edtinit_hip2.o writes 0x8800 and 0xb00 here before reading data back.
 * Inferred: the 32-bit write latches which display-generator register the
 * next data access reaches, as `DoDGRqstVCWrite` does for the firmware. */
#define KONA_DG_VC_ADDRESS            0x8003c0
/*
 * KONA_DG_VC_DATA: HH_VC_DATA, the data half of the display bus's indirect
 * port, at host window offset 0x8003d0. Established: every data write in
 * kona_video.o follows an address write, and the only reads are in
 * `kona_attach` (kona_edtinit_hip2.o, near 0x1184), which reads the data
 * back after addresses 0x8800 and 0xb00. Established: one address can take
 * two data writes in a row (`kona_enable_dac_cursor` writes 4 then 2 to a
 * DAC index port). Inferred: it moves one 32-bit value to or from the
 * register chosen in the address port. */
#define KONA_DG_VC_DATA               0x8003d0

/*
 * Addresses the driver writes, ESTABLISHED as values; every role is
 * INFERRED from the function that writes it unless stated.
 */

/* Cursor control, written from kona_video_intr / kona_enable_dac_cursor. */
/*
 * KONA_DG_CURSOR_CHANNEL: XMAP register 0, the cursor channel id (irsaudit
 * table entry at 0x101ffdc0, mask 0x1f). Established: `kona_video_intr` in
 * kona_video.o (at 0x1b68) writes the owning channel byte kept at pipe-state
 * offset 3556, and `DoDGRqstCursorChannel` in arm1.u (at 0x0c006610) writes
 * the channel record's first word; `dgMakeXmapFetal` (at 0x0c00983c) and
 * `DoDGRqstLoadTextportGlyph` (at 0x0c010b94) write 0. Inferred: it names
 * the display channel on which the hardware cursor is drawn. */
#define KONA_DG_CURSOR_CHANNEL        0x100
/*
 * KONA_DG_CURSOR_GLYPH_ADDR: XMAP register 1, the cursor image base
 * (irsaudit table entry at 0x101ffdcc, mask 0x1ffff, 17 bits). Established:
 * `kona_video_intr` (kona_video.o, address 257 written at 0x18e0) sends the
 * word the driver stored at pipe-state offset 3560 when `kona_select_cursor`
 * ran, which is word 1 of the select ioctl; `DoDGRqstLoadTextportGlyph`
 * (arm1.u at 0x0c010b10) writes its own glyph address. Inferred: it points
 * at the 260-word block in colour-map RAM that holds the cursor bitmap and
 * colours. */
#define KONA_DG_CURSOR_GLYPH_ADDR     0x101
/*
 * KONA_DG_CURSOR_POSITION: XMAP register 2, the cursor position (irsaudit
 * table entry at 0x101ffdd8, mask 0x3ffffff, 26 bits). Established:
 * `DoDGRqstCursorPosition` (arm1.u at 0x0c0066e8) stores payload word 0 in
 * bits 0-12 and word 1 shifted left 13 in bits 13-25; `kona_video_intr`
 * (kona_video.o at 0x1940) builds the same packing for a cursor that is not
 * on the DAC. Inferred: the hardware places the cursor image with its top-
 * left at this x, y. */
#define KONA_DG_CURSOR_POSITION       0x102
/*
 * KONA_DG_CURSOR_MODE: XMAP register 3, the cursor enables (irsaudit table
 * entry at 0x101ffde4, mask 0x1ff). Established: the kernel writes the mode
 * byte at pipe-state offset 3555 (`kona_video_intr`, kona_video.o at 0x1bcc)
 * and writes 0 from `kona_enable_dac_cursor` (just before 0x16f0);
 * `DoDGRqstCursorType` (arm1.u at 0x0c00667c) maps request type 0 to 2, 1 to
 * 1 and anything else to 0, and the textport glyph load writes 2
 * (0x0c010b54). Inferred: 0 hides the cursor, 1 selects the crosshair, 2 the
 * glyph. */
#define KONA_DG_CURSOR_MODE           0x103

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
 * KONA_DG_SWAP_STROBE: Frame-manager register 0x80, the swap strobe.
 * Established: kona_video.o writes 2 here from `kona_swap_complete` (at
 * 0x26c, once per matching buffer) and from `kona_video_intr` (at 0x1bf4,
 * when no buffer is pending and the global channel word is -1); arm1.u
 * `DoDGRqstFetal` (at 0x0c00942c and 0x0c009458) reads it back and rewrites
 * it with bit 0 cleared and bit 1 set. Inferred: bit 1 pulses a swap-done
 * acknowledge to the frame manager when a buffer swap finishes or a video
 * interrupt finds nothing queued, and bit 0 is held clear from start-up.
 * What the frame manager does on the pulse, beyond the kernel moving on to
 * its next queued swap, is unknown: no shipped software or published source
 * depends on it. Routes tried: both kernel writers, and the ARM listing,
 * where the start-up defaults are the only load or store at display-bus
 * word 0x80 (ARM 0x600200) with a fixed offset. */
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
/*
 * KONA_RASTER_SEQID_INDEX: Raster-bus register index 0x420, the retrace
 * sequence number. Established: `arm_retrace_seqid` in arm1.u (at
 * 0x0c013f5c) sends six display-bus writes of 1 to 6 to address 0x7f and
 * then loads 0x420 as the index for the payload word at 0x0c01401c;
 * `init_dg_board` (at 0x0c003d3c) writes 0 to the same index. Inferred: it
 * is the register behind HH_SEQID, which the kernel reads in its video-
 * interrupt handler. Whether the hardware copies the number at the write or
 * at the next retrace is read by no shipped code. */
#define KONA_RASTER_SEQID_INDEX       0x420

/*
 * Per-channel register block, ESTABLISHED as addresses: eight blocks,
 * address 0x0b00 + 0x100 * channel + register, registers 0 and 2 written
 * by kona_enable_dac_cursor. kona_attach reads channel 0's register 0
 * (docs/xg.md step 7). The kernel treats channels 0-7 as the ones with a
 * hardware cursor (kona_determine_cursor_channel, branch on channel < 8).
 */
/*
 * KONA_DG_CHAN_BASE: Video DAC register blocks, one per channel at 0xb00 +
 * 0x100 n. Established: `kona_enable_dac_cursor` in kona_video.o (at 0x1738)
 * loops over channels 0 to 7 writing the block addresses, and
 * `dgVDacControlWrite` in arm1.u (at 0x0c00675c) reaches the same blocks as
 * ARM address 0x602c00 + n shifted left 10. Inferred: each block is the
 * video DAC of one output channel. */
#define KONA_DG_CHAN_BASE             0x0b00
#define KONA_DG_CHAN_STRIDE           0x100
#define KONA_DG_CHAN_COUNT            8
/*
 * KONA_DG_CHAN_REG0: Register 0 of a DAC block, the indirect index port.
 * Established: `kona_enable_dac_cursor` (kona_video.o at 0x1738) writes 4
 * then 2 after the block address, and `dgVDacControlWrite` (arm1.u at
 * 0x0c00675c and 0x0c0067a4) writes the index low byte and then the high
 * byte; `kona_attach` also reads the data once after addressing channel 0's
 * block (at 0x1184). Inferred: the pair (4, 2) selects indexed register
 * 0x204, the cursor control register. */
#define KONA_DG_CHAN_REG0             0
/*
 * KONA_DG_CHAN_REG2: Register 2 of a DAC block, the indexed-register data
 * port. Established: `kona_enable_dac_cursor` (kona_video.o, loop at 0x1704)
 * writes 5 on the channel that owns an active DAC cursor and 0 on every
 * other channel, and `dgVDacControlWrite` (arm1.u at 0x0c0067e8) stores its
 * value argument here after the index. Inferred: it carries the value for
 * whichever indexed register the index port selected. */
#define KONA_DG_CHAN_REG2             2
/*
 * KONA_DG_CHAN_CURSOR_ENABLE: Value 5 written to a DAC's cursor control
 * register 0x204 (irsaudit table entry at 0x101fffcc, mask 0xf).
 * Established: `kona_enable_dac_cursor` (kona_video.o, loop at 0x1704) sends
 * 5 for the owning channel and 0 for the rest. It sets bits 0 and 2 of the
 * 4-bit register, not the two low bits as an earlier comment said. Inferred:
 * those bits switch the DAC's cursor on; no code reads which bit does what. */
#define KONA_DG_CHAN_CURSOR_ENABLE    5

/*
 * DAC cursor position, ESTABLISHED (kona_video_intr .L000019ec, kona_video.o at
 * 0x19ec). The driver never addresses display-bus address 0x22. For the channel
 * n that owns the cursor it writes block address 0xb00 + 0x100 n with data 0
 * then 2, which selects indexed DAC register 0x200, then block address
 * 0xb02 + 0x100 n followed by one data byte, four times (x low, x high, y low,
 * y high), re-sending the address before each byte. 0xb02 + 0x100 n is the
 * indexed-register data port of the channel's DAC block (KONA_DAC_DECODE.h);
 * indexed registers 0x200 to 0x203 hold the position, reached by the DAC's
 * index advancing after each access (the published ADV716x description says
 * so for that range; the part identity is INFERRED). x and y are scaled from screen space to
 * the channel's output resolution:
 *   x_out = dac_xout * (x - x1) / (x2 - x1) - dac_hotx
 *   y_out = dac_yout * (y - y1) / (y2 - y1) - dac_hoty
 * with x1..y2 the channel rectangle and dac_* from KONA_SET_CHANNEL_RECT. The
 * result is a signed 16-bit top-left position in output pixels with no bias.
 * `DoDGRqstLoadDacCursor` in arm1.u (at 0x0c007b84) sends ten data writes to
 * the same data port. There is no constant for the position port because it is
 * not an address of its own; see docs/findings/dac-cursor.md.
 */

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
/*
 * KONA_VOC_STATUS_FRAME: Bit 7 of a VOC's status register at offset 0.
 * Established: `dgSyncWithMasterVoc` in arm1.u reads the master VOC's status
 * (at 0x0c00b9c0), waits for bit 7 to be high and then, at 0x0c00b9f8, for
 * it to go low, each wait bounded by 1000000 timer ticks. Inferred: the bit
 * toggles once per frame, so the firmware uses it to line itself up with the
 * master's frame boundary. */
#define KONA_VOC_STATUS_FRAME         (1u << 7)

/* The board-set probe, read once at attach. */
/*
 * KONA_DG_ATTACH_PROBE: Display-bus address 0x8800, probed once at attach.
 * Established: `kona_attach` in IP27boot kona_edtinit_hip2.o writes 0x8800
 * to HH_VC_ADDRESS and reads HH_VC_DATA (before 0x1138), then writes 0xb00
 * (the first video DAC) and reads again. If bit 10 of the DAC word is set
 * it stores 2 in the configuration record's board-set word (pipe state
 * +244) and 19 as the inventory type (+2188, used by `kona_inventory_board`).
 * Otherwise the low two bits of the 0x8800 word decide: 1 stores board set
 * 5 with type 22, 2 stores board set 6 with type 23 (branch targets 0x1354
 * and 0x1368); other values leave both words alone. The 6.5.5 headers
 * `sys/kona_if.h` and `sys/invent.h` name board set 2 as the IP27 "lite"
 * set and type 19 as Onyx2 Reality graphics, and stop at board set 4 and
 * type 20. Established in arm1.u: 0x8800 is also the data word of the I2C
 * controller that `DoDGRqstQueryMonitorName` hands to `i2c_init` (at
 * 0x0c00d68c; `i2c_init` writes its control word, 0x8801, at 0x0c00d738)
 * after selecting a channel through bus address 0x8400. Inferred: the probe
 * tells apart the two later board sets of 6.5.30m, which the 6.5.5 headers
 * predate, by what answers at that address. Why the word reads 1 or 2 in
 * its low bits, and bits 2-31: unknown: no shipped software or published
 * source depends on them beyond this test. Routes tried: `kona_attach`, the
 * firmware's monitor-name and I2C routines, and the 6.5.5 headers. */
#define KONA_DG_ATTACH_PROBE          0x8800

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
#define KONA_CMB_TILE_W               160         /* INFERRED from allocatedSize rounding; the combiner manual 007-3279-003 gives 160 x 8 tiles */
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
/*
 * KONA_XMAP_CURSOR_CHAN_ID: XMAP register 0, cursor channel id (irsaudit
 * table entry at 0x101ffdc0, mask 0x1f), the same register the kernel
 * reaches as 0x100. Established: irsaudit `easy_xmap_cursor` (at 0x1013b68c)
 * writes it as address 256 after the glyph address, and `TEST_xmapreg` (at
 * 0x100b0094) writes and reads back bit patterns under the mask;
 * `dgMakeXmapFetal` (arm1.u at 0x0c00983c) clears it. Inferred: five bits
 * fit channel ids 0 to 31, so the kernel's 32 for no channel is a driver-
 * only value never sent. */
#define KONA_XMAP_CURSOR_CHAN_ID      0x00
/*
 * KONA_XMAP_CURSOR_GLYPH_BASE: XMAP register 1, cursor image base (irsaudit
 * table entry at 0x101ffdcc, mask 0x1ffff), the kernel's 0x101. Established:
 * irsaudit `easy_xmap_cursor` (at 0x1013b68c) writes it as address 257
 * before registers 0 and 3, and `DoDGRqstLoadTextportGlyph` (arm1.u at
 * 0x0c010b10) writes its glyph address; the start-up routine leaves it
 * alone. Inferred: 17 bits address the external colour-map RAM that also
 * holds the cursor block. */
#define KONA_XMAP_CURSOR_GLYPH_BASE   0x01
/*
 * KONA_XMAP_CURSOR_POS: XMAP register 2, cursor position (irsaudit table
 * entry at 0x101ffdd8, mask 0x3ffffff), the kernel's 0x102. Established:
 * irsaudit `load_cursor_cntrs` (at 0x1013b5b8) writes it as address 258 and
 * then calls `xmap_copybuffer`, and `load_cursor_pos` (at 0x1013b630) does
 * the same; `DoDGRqstCursorPosition` (arm1.u at 0x0c0066e8) packs two 13-bit
 * coordinates into it. Inferred: x sits in the low 13 bits and y above them,
 * matching the kernel's packing. */
#define KONA_XMAP_CURSOR_POS          0x02
/*
 * KONA_XMAP_CURSOR_ENABLES: XMAP register 3, cursor enables (irsaudit table
 * entry at 0x101ffde4, mask 0x1ff), the kernel's 0x103. Established:
 * irsaudit `easy_xmap_cursor` (at 0x1013b68c) writes address 259 last;
 * `dgMakeXmapFetal` (arm1.u at 0x0c0097fc) writes 0; the firmware and kernel
 * only ever send 0, 1 or 2. Inferred: bit 0 enables the crosshair and bit 1
 * the glyph; the register has nine bits but no shipped code sets the rest. */
#define KONA_XMAP_CURSOR_ENABLES      0x03
/*
 * KONA_XMAP_SUBSTITUTE_LOW: XMAP register 6, low word of the substitute
 * colour (irsaudit table entry at 0x101ffdf0, mask 0xffffffff). Established:
 * irsaudit `substitute_xmap_data` (at 0x1013afe4) writes it as address 262
 * with the packed red, green and blue fields built from its first arguments;
 * `dgMakeXmapFetal` (arm1.u at 0x0c0098fc) zeroes it. Inferred: it carries
 * the colour that replaces the displayed pixel while the substitute enable
 * in register 5 is set. */
#define KONA_XMAP_SUBSTITUTE_LOW      0x06
/*
 * KONA_XMAP_SUBSTITUTE_HIGH: XMAP register 7, high bits of the substitute
 * colour (irsaudit table entry at 0x101ffdfc, mask 0x1fff). Established:
 * irsaudit `substitute_xmap_data` (at 0x1013afe4) writes address 263 with
 * the top field plus a two-bit mode shifted left 10, ahead of a
 * `xmap_copybuffer` call; `dgMakeXmapFetal` (arm1.u at 0x0c00993c) zeroes
 * it. Inferred: 13 bits complete the 45-bit colour whose low 32 bits are in
 * register 6. */
#define KONA_XMAP_SUBSTITUTE_HIGH     0x07
/*
 * KONA_XMAP_RM_CONFIG: XMAP register 0xb, raster-board count code (irsaudit
 * table entry at 0x101ffe08, mask 0x3). Established in both programs:
 * irsaudit `set_num_rms` (at 0x1013b98c) writes 0, 1 or 2 for one, two or
 * four raster-memory boards, and `dgSetNumRMs` (arm1.u at 0x0c010e6c) writes
 * the same 0, 1 or 2 for one, two or four; `dgMakeXmapFetal` does not touch
 * it. Inferred: the XMAP uses it to size the pixel stream it receives from
 * the raster boards. */
#define KONA_XMAP_RM_CONFIG           0x0b
/*
 * KONA_XMAP_DI_COMPARE_ADDR: XMAP register 0xc, display-id compare address
 * (irsaudit table entry at 0x101ffe14, mask 0x3f). Established:
 * `dgMakeXmapFetal` (arm1.u at 0x0c0099c0) writes 2, and irsaudit
 * `base_xmap_init` (at 0x1013c3c8) writes address 268. Inferred: the name
 * and the six-bit mask indicate a display-id table index the XMAP compares
 * incoming ids against; no shipped code changes it from the start-up value. */
#define KONA_XMAP_DI_COMPARE_ADDR     0x0c
/*
 * KONA_XMAP_IMP_DELAY: XMAP register 0xd, delay for the pixel stream from
 * the image processors (irsaudit table entry at 0x101ffe20, mask 0x1ff).
 * Established: `dgMakeXmapFetal` (arm1.u at 0x0c009a18 and 0x0c009aa4)
 * writes 0xa5 when the board-type word at 0x04067edc is 2 and 0x64
 * otherwise; irsaudit `base_xmap_init` (at 0x1013c3c8) writes 198 for type
 * 2. Inferred: it is a clock-count delay matching the data path of that
 * board type, set once at start-up. */
#define KONA_XMAP_IMP_DELAY           0x0d
/*
 * KONA_XMAP_PIPE_DELAY: XMAP register 0xe, pipeline delay (irsaudit table
 * entry at 0x101ffe2c, mask 0x7). Established: `dgMakeXmapFetal` (arm1.u at
 * 0x0c009a5c and 0x0c009ae8) writes 6 for board type 2 and 3 otherwise, and
 * irsaudit `base_xmap_init` (at 0x1013c3c8) writes address 270. Inferred: a
 * three-bit count of pipeline stages the XMAP waits before using the data,
 * chosen by board type at start-up only. */
#define KONA_XMAP_PIPE_DELAY          0x0e
/*
 * KONA_XMAP_FASTLIST_CONFIG: XMAP register 0xf, fast-list configuration
 * (irsaudit table entry at 0x101ffe38, mask 0x3ff). Established:
 * `dgMakeXmapFetal` (arm1.u at 0x0c009b30) writes 0x339, and
 * `DoDGRqstFastlistChunksize` (at 0x0c012168) writes the request word's low
 * five bits ORed with 0x320. Inferred: the low five bits are the number of
 * fast-list entries per chunk (start-up value 25) and the 0x320 above them
 * stays fixed. */
#define KONA_XMAP_FASTLIST_CONFIG     0x0f
/*
 * KONA_XMAP_RD_ADDR: XMAP register 0x11, read-back address (irsaudit table
 * entry at 0x101ffe44, mask 0x7ffff). Established: irsaudit `TEST_xmapmem`
 * (at 0x100adbfc) writes address 273 (at 0x100ad124) after selecting the
 * chip in register 8 and setting register 4, then reads register 0x12; the
 * firmware never writes it. Inferred: it holds the memory address whose
 * contents the next read of register 0x12 returns. */
#define KONA_XMAP_RD_ADDR             0x11

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
 * 0xa: unknown: no shipped software or published source depends on it.
 *    Routes tried: the firmware, the kernel, the X module and irsaudit, none
 *    of which reads or writes it.
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
/*
 * KONA_XMAP_COPY_BUFFER: XMAP register 4, copy-buffer strobe. Established:
 * irsaudit `xmap_copybuffer` (at 0x1013b94c) writes 1 to address 260 after
 * each group of register writes, `dgForceXmapCopyBuffer` (arm1.u at
 * 0x0c010d4c) does the same, and irsaudit `load_cursor_cntrs` (at
 * 0x1013b610) writes 4 after a position change. Inferred: bit 0 copies the
 * double-buffered registers into the live set and bit 2 forces the new
 * cursor position, matching the pin names in the diagnostic. */
#define KONA_XMAP_COPY_BUFFER         0x04
/*
 * KONA_XMAP_SUBSTITUTE_EN: XMAP register 5, substitute-colour enable.
 * Established: `DoDGRqstDiagXmapColor` (arm1.u at 0x0c007f94) writes 1,
 * `DoDGRqstDisableDiagXmapColor` (at 0x0c008148) and `dgMakeXmapFetal` (at
 * 0x0c00987c) write 0, and irsaudit `turn_off_substitute_xmap_data` (at
 * 0x1013b0f4) writes 0 to address 261. Inferred: 1 makes the XMAP output the
 * colour held in registers 6 and 7 in place of the pixel; 0 returns to
 * normal output. */
#define KONA_XMAP_SUBSTITUTE_EN       0x05
/*
 * KONA_XMAP_RD_SELECT: XMAP register 8, selects which of the four XMAP chips
 * answers a diagnostic read. Established: `dgMakeXmapFetal` (arm1.u at
 * 0x0c0098bc) writes 0, and irsaudit writes the chip number 0 to 3 to
 * address 264 (at 0x100ad0c0 in `TEST_xmapmem`) before setting the read
 * address in register 0x11. Inferred: the number picks one chip, so the same
 * read-data register serves all four. */
#define KONA_XMAP_RD_SELECT           0x08
/*
 * KONA_XMAP_09: XMAP register 9, role not read from any code. Established
 * values: `dgMakeXmapFetal` (arm1.u at 0x0c00997c) writes 0, irsaudit
 * `base_xmap_init` (at 0x1013c3c8) writes 2, and `arm_x_loadxmap_config` (at
 * 0x0c03dc44) writes the X module's X_LOADXMAP_CONFIG word, 1 when a window
 * is created and 0 when one is destroyed. Inferred: a flag the X module
 * raises while it has a window on the display; its bit meanings are not
 * given by any shipped code or published source. */
#define KONA_XMAP_09                  0x09
/*
 * KONA_XMAP_RD_DATA: XMAP register 0x12, read-back data. Established:
 * irsaudit `TEST_xmapmem` (at 0x100adbfc) reads it after programming
 * registers 8, 0x11 and 4; no code writes it. Inferred: it returns the word
 * at the address in register 0x11 on the chip chosen in register 8; the read
 * follows a copy-buffer write, so the address is latched before the value is
 * returned. */
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
 *        pushes earlier list entries through; 0x1e ends a load. Unknown
 *        beyond that: no shipped software or published source depends on it.
 *        Routes tried: irsaudit's colour-map, cursor and gamma loaders, the
 *        firmware's loaders.
 */
/*
 * KONA_XMAP_FL_ADDR: XMAP indirect-memory address register 0x18, bus address
 * 0x118. Established: `arm_x_loadxmap_did` (arm1.u at 0x0c03db8c) writes
 * payload word 0 here and the data in word 1 to 0x11c,
 * `DoDGRqstLoadTextportGlyph` (at 0x0c010bdc) and
 * `DoDGRqstDiagCursorFromImage` (at 0x0c0081cc) write it before streaming
 * cursor data, and irsaudit `vcWriteFastlist` (at 0x10140868) ORs 0x10000
 * into its address. Inferred: it chooses the entry the next data-port write
 * lands in. */
#define KONA_XMAP_FL_ADDR             0x18
/*
 * KONA_XMAP_FL_CMAP_DATA: XMAP register 0x19, colour-map and cursor data
 * port. Established: `DoDGRqstDiagCursorFromImage` (arm1.u at 0x0c008284 and
 * four later stores) and `DoDGRqstLoadTextportGlyph` (at 0x0c010c2c) write
 * consecutive words here after one address write, and irsaudit `load_cmap`
 * (at 0x1013b1f8) streams n words after one address. Inferred: the address
 * in register 0x18 advances after every write, which is why one address
 * write suffices. */
#define KONA_XMAP_FL_CMAP_DATA        0x19
/*
 * KONA_XMAP_FL_GAMMA_DATA: XMAP register 0x1b, gamma data port. Established:
 * `arm_x_loadgamma` (arm1.u at 0x0c03d8dc) selects 0x1b for its stream of
 * gamma entries, irsaudit `load_gamma_table` (at 0x1013bbd4) writes the
 * table here after an address in register 0x18, and `DoDGRqstFetal` (at
 * 0x0c008e90) writes 0. Inferred: each write stores one 12-bit entry at the
 * address built from page, colour and entry index. */
#define KONA_XMAP_FL_GAMMA_DATA       0x1b
/*
 * KONA_XMAP_FL_DID_DATA: XMAP register 0x1c, display-id table data.
 * Established: `arm_x_loadxmap_did` (arm1.u at 0x0c03dba4) writes payload
 * word 1 here after payload word 0 went to the address register 0x18, and
 * `DoDGRqstInitTextport` (at 0x0c010ac0) writes 0x80050 for the textport id
 * entry. Inferred: the word is the XMAP's per-id mode entry, so one write
 * defines how pixels tagged with that display id are mapped. */
#define KONA_XMAP_FL_DID_DATA         0x1c
/*
 * KONA_XMAP_FL_CHANNEL: XMAP register 0x1d, channel set-up word, with the
 * channel number in register 0x18. Established: irsaudit
 * `define_xmap_channel` (at 0x1013c2e4) writes it, and its debug line names
 * the fields no_gam, ext, page and alp to blue. Inferred: bits 3-0 are the
 * gamma page, bit 4 external gamma, bit 5 no gamma and bit 6 alpha to blue,
 * each in the order that line prints them. */
#define KONA_XMAP_FL_CHANNEL          0x1d
/*
 * KONA_XMAP_FL_END: XMAP register 0x1e, end-of-load marker. Established:
 * `arm_x_loadxmap_did` (arm1.u at 0x0c03dc00) writes 0x11e once, after three
 * writes to register 0x1f and before three more, with a data register the
 * routine never sets; `DoDGRqstDiagCursorFromImage` (at 0x0c008504) writes
 * 3. Inferred: it closes a table load; the data's meaning is not shown by
 * any shipped code. */
#define KONA_XMAP_FL_END              0x1e
/*
 * KONA_XMAP_FL_FLUSH: XMAP register 0x1f, flush writes. Established:
 * `arm_x_loadxmap_did` (arm1.u at 0x0c03dbc0) writes it three times with an
 * unset data register around the 0x1e write, `DoDGRqstDiagCursorFromImage`
 * (at 0x0c008440, 0x0c008480, 0x0c0084c4) writes 0, 1 and 2, so an earlier
 * comment that called these all zero was wrong; irsaudit writes 0 once.
 * Inferred: the writes push earlier list entries through the XMAP's
 * pipeline. */
#define KONA_XMAP_FL_FLUSH            0x1f
/*
 * KONA_DG_VC_FASTLIST: Fast-list flag, bit 16 of the address written to the
 * video-controller address port. Established: irsaudit `vcWriteFastlist` (at
 * 0x10140868) writes address 960 with the register number ORed with 0x10000,
 * then the data to 976, or alternatively sends a raster-bus word carrying
 * 0x41 in its top bits through `bloTbusWrite`. Inferred: the flag marks the
 * access as a fast-list entry for the XMAP rather than a direct register
 * write. */
#define KONA_DG_VC_FASTLIST           0x10000
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

/*
 * KONA_VDAC_PIXEL_MASK: Video DAC indexed register 0x004, pixel mask
 * (irsaudit table entry at 0x101fffc0, mask 0x3ff). Established:
 * `dgMakeVDacFetal` (arm1.u at 0x0c00a390) sets it to 0xff through
 * `dgVDacControlWrite` with index 4. Inferred: the register is 8 bits wide.
 * The published ADV716x description gives an 8-bit pixel mask ANDed with the
 * red, green and blue pixel inputs, and the diagnostic's register walk
 * compares only the low 8 bits on read-back although its table mask is
 * 0x3ff; the part identity is inferred. */
#define KONA_VDAC_PIXEL_MASK          0x004
/*
 * KONA_VDAC_CURSOR_CTRL: Video DAC indexed register 0x204, cursor control
 * (irsaudit table entry at 0x101fffcc, mask 0xf). Established:
 * `dgMakeVDacFetal` (arm1.u at 0x0c00a3e0) clears it, and the kernel's
 * `kona_enable_dac_cursor` (kona_video.o at 0x1738) selects it with the
 * index pair 4, 2 and then writes 5 or 0. Inferred: the register turns the
 * DAC's own cursor on and off per channel. */
#define KONA_VDAC_CURSOR_CTRL         0x204
/*
 * KONA_VDAC_CURSOR_CLR_2: Video DAC indexed register 0x304, second cursor
 * colour (irsaudit table entry at 0x101fffd8, mask 0x3ff). Established:
 * `DoDGRqstLoadDacCursor` (arm1.u at 0x0c007bcc) writes payload word 2 as
 * the second of six values streamed after an index of 0x303, so this
 * register receives that word. Inferred: the index advances after each data
 * write, and 10 bits fit one colour component. */
#define KONA_VDAC_CURSOR_CLR_2        0x304

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
/*
 * KONA_DG_ARM_WINDOW: ARM-side window onto the display bus, bus address a at
 * 0x00600000 + 4 a. Established: `DoDGRqstVCWrite` (arm1.u at 0x0c012228)
 * stores payload word 1 at 0x600000 plus word 0 shifted left 2, and
 * `DoDGRqstVCRead` (at 0x0c012264) loads from the same place. Inferred: it
 * is the firmware's equivalent of the kernel's address and data ports, a
 * memory-mapped alias of the same register space. */
#define KONA_DG_ARM_WINDOW            0x00600000

/*
 * Block map. ESTABLISHED: the addresses each function family uses. The
 * chip behind each block is INFERRED from the function names and from the
 * chip selects of the bridge chip fm0 (docs/dg.md, netlist dg4_2voc).
 */
/*
 * KONA_DG_DISPMODE_DID: Display-id mode table, one bus address per display
 * id from 0x00 to 0x7f. Established: `arm_dispmode` (arm1.u at 0x0c013e28)
 * writes the request's mode byte to the address given by its first word and
 * calls `dgUpdateFMDidSwapTable` when an id is named; `DoDGRqstFetal` writes
 * 0x20 to addresses 0x00-0x3f (at 0x0c008d8c) and 0 to 0x40-0x5f (at
 * 0x0c008dec). Inferred: each entry steers pixels carrying that display id. */
#define KONA_DG_DISPMODE_DID(i)       (i)
/*
 * KONA_DG_FM_SWAP_STROBE: Frame-manager register 0x80, the swap control
 * word. Established: `arm_swap_cntrl` (arm1.u at 0x0c013e90) writes the
 * request word here and, when its bit 0 is set, also writes 1 to 0x1920 on
 * board type 0 or to 0x8001 otherwise (at 0x0c013ecc); `DoDGRqstFetal` (at
 * 0x0c009458) leaves bit 0 clear and bit 1 set. Inferred: bit 1 is the pulse
 * the kernel sends with its value 2; the request word the firmware passes
 * through can carry other bits. */
#define KONA_DG_FM_SWAP_STROBE        0x0080
/*
 * KONA_DG_FM_DID_SWAP: Frame-manager do-swap slots, ten consecutive bus
 * addresses from 0x81. Established: `dgUpdateFMDidSwapTable` (arm1.u at
 * 0x0c0101fc) stores the display-mode index into slot n when the n-th
 * recorded drawable word equals its argument, looping over ten slots.
 * Inferred: each slot holds the display-id mode that a pending swap applies
 * to that drawable. */
#define KONA_DG_FM_DID_SWAP(n)        (0x0081 + (n))
/*
 * KONA_DG_FM_8B: Frame-manager register 0x8b, input sync and encoder window.
 * Established: `DoDGRqstInputSync` (arm1.u at 0x0c0114cc) replaces bits
 * 21-20 with the request word, `DoDGRqstBoardResetRatio` (at 0x0c011564)
 * replaces bit 22, and `dgEncoderOutputLetterbox` (at 0x0c010300) rewrites
 * bits 9-0 and 19-10 from two size words at +0x80 and +0x84 of the channel
 * record. Inferred: bits 21-20 pick the input sync source, bit 22 the board
 * reset ratio, and the two ten-bit fields place the letterboxed picture for
 * the encoder. */
#define KONA_DG_FM_8B                 0x008b
/*
 * KONA_DG_FM_8E: Frame-manager register 0x8e, master clock select and a
 * second encoder window. Established: `DoDGRqstMasterClockSelect` (arm1.u at
 * 0x0c004d30) sets bit 23 when the request word is 1 and clears it
 * otherwise, and `dgEncoderOutputLetterbox` (at 0x0c010384) rewrites bits
 * 9-0 and 19-10 and sets bits 22-20 to 2. Inferred: bit 23 chooses between
 * two master clocks, and the letterbox fields come from the second size
 * word, as the window in register 0x8b comes from the first. */
#define KONA_DG_FM_8E                 0x008e
/*
 * KONA_DG_FM_8F: Frame-manager register 0x8f, interrupt acknowledge.
 * Established: `DoDGRqstGetDGInterruptState` (arm1.u at 0x0c006008) writes 0
 * after it has sent its reply, which carries the words `dgGetInterruptState`
 * read from register 0x90 and the VOC status registers; nothing reads it.
 * Inferred: the zero write clears the interrupt state just reported. */
#define KONA_DG_FM_8F                 0x008f
/*
 * KONA_DG_FM_90: Frame-manager register 0x90, raster-board and option
 * status. Established: `dgGetNumRMs` (arm1.u at 0x0c010d78) reads bits 10-8
 * and maps code 0 to four boards, 1 to two, 3 and 5 to one and 7 to none;
 * `dgSetNumRMs` (at 0x0c010eb4) writes a code in bits 7-5; `DoDGRqstFetal`
 * (at 0x0c00940c) replaces bits 4-0 with 0, 1 or 2 from the JTAG-detected
 * DG4 option. Inferred: it mixes software-written configuration with read-
 * only board-detect bits. */
#define KONA_DG_FM_90                 0x0090
/*
 * KONA_DG_XMAP_BASE: Start of the XMAP register window, XMAP register n at
 * bus address 0x100 + n. Established: the kernel writes cursor values at
 * 0x100-0x103 and irsaudit's table walks registers 0 to 0x12 (entries at
 * 0x101ffdc0 onward), and the firmware's `dgMakeXmapFetal` (arm1.u at
 * 0x0c0097d4) initialises 0x100-0x110. Inferred: the window is the XMAP
 * chips' register file; 0x118 and above are the indirect-memory ports. */
#define KONA_DG_XMAP_BASE             0x0100
/*
 * KONA_DG_VOC_BASE: Start of the video-output-chip register blocks, VOC id v
 * at 0x200 + 0x100 v. Established: `dgLoadVocIwsc` (arm1.u at 0x0c00e1a8)
 * writes registers 3 to 5 of the block named by the id in its payload, and
 * `dgSyncWithMasterVoc` (at 0x0c00b9c0) reads address 0x300, register 0 of
 * id 1. Inferred: ids 0 to 7 are the base board's channels and larger ids
 * are option-board VOCs. */
#define KONA_DG_VOC_BASE              0x0200
/*
 * KONA_DG_VOC_STRIDE: Spacing of the VOC register blocks, 0x100 bus
 * addresses per id. Established: every per-channel routine in arm1.u builds
 * ARM address 0x600800 plus the id shifted left 10 (for example
 * `dgFlushStatus` at 0x0c005f78), and a bus address is four ARM bytes.
 * Inferred: each VOC decodes an 8-bit register number. */
#define KONA_DG_VOC_STRIDE            0x0100
/*
 * KONA_DG_VDAC_BASE: Video DAC register file, channel n at 0xb00 + 0x100 n.
 * Established: `dgVDacClutWrite` (arm1.u at 0x0c0068e4) and
 * `dgVDacControlWrite` (at 0x0c00675c) use ARM address 0x602c00 plus the
 * channel shifted left 10, which is the same space the kernel reaches with
 * address writes of 0xb00 + 0x100 n. Inferred: it is one DAC per output
 * channel; `dgMakeVDacFetal` (at 0x0c00a108) initialises all of them. */
#define KONA_DG_VDAC_BASE             0x0b00
/*
 * KONA_DG_VDAC_INDEX: DAC block register 0, index. Established:
 * `dgVDacClutWrite` (arm1.u at 0x0c0068e4 and 0x0c00692c) and
 * `dgVDacClutRead` (at 0x0c0069c8) write the colour-map index low byte then
 * high byte here, as `dgVDacControlWrite` does for an indexed register.
 * Inferred: two writes form a 16-bit index into either the colour map or the
 * indexed register space, depending on which data register follows. */
#define KONA_DG_VDAC_INDEX            0
/*
 * KONA_DG_VDAC_CLUT: DAC block register 1, colour-map data. Established:
 * `dgVDacClutWrite` (arm1.u at 0x0c006970) stores a value and
 * `dgVDacClutRead` (at 0x0c006a38) loads one; `dgMakeVDacFetal` (at
 * 0x0c00a2d0, 0x0c00a310 and 0x0c00a350) writes three values per entry for
 * 256 entries, a ramp made of each byte shifted left 2 ORed with the byte
 * shifted right 6. Inferred: each entry takes three consecutive writes, red,
 * green and blue, with the index advancing after the third. */
#define KONA_DG_VDAC_CLUT             1
/*
 * KONA_DG_VDAC_CONTROL: DAC block register 2, indexed-register data.
 * Established: `dgVDacControlWrite` (arm1.u at 0x0c0067e8) and
 * `dgVDacControlRead` (at 0x0c0068b0) pass data here after the index in
 * register 0; `dgMakeVDacFetal` (at 0x0c00a1e4) writes 0x88 to index 5 and
 * 0xe4 to index 6. Inferred: the index selects among registers such as
 * 0x004, 0x204 and 0x304, and `DoDGRqstLoadDacCursor` streams many values
 * after one index. */
#define KONA_DG_VDAC_CONTROL          2
/*
 * KONA_DG_VDAC_MODE: DAC block register 3, mode. Established:
 * `dgVDacModeWrite` (arm1.u at 0x0c006a64) and `dgVDacModeRead` (at
 * 0x0c006a94) access it, and `dgMakeVDacFetal` (at 0x0c00a124 and
 * 0x0c00a14c) writes 6, waits 1000 loop passes, and writes 7. Inferred: bit
 * 0 is a reset or load strobe that start-up pulses; no other bit's role is
 * shown by the code. */
#define KONA_DG_VDAC_MODE             3
/*
 * KONA_DG_GDAC_BASE: Gain DAC register file, pair n of channels at 0x1300 +
 * 0x100 n. Established: `dgGDacChannelWrite` (arm1.u at 0x0c006bf4) picks
 * registers 0xf, 4 and 5 for colour index 0, 1 and 2 of an even channel and
 * 0x17, 2 and 3 for an odd one (at 0x0c006cf0 and 0x0c006d40), with the pair
 * number shifted left 10 into the ARM address. Inferred: one chip carries
 * the gains of two channels. */
#define KONA_DG_GDAC_BASE             0x1300
/*
 * KONA_DG_GAIN_1708: Output gain register at bus address 0x1708.
 * Established: `DoDGRqstOutputGain` (arm1.u at 0x0c007224) writes 255 minus
 * the gain byte when the request names channel 1 and the channel record's
 * flag at +0x184 has bit 26 set, and `DoDGRqstEncoderOutputGain` (at
 * 0x0c0087c0) writes 255 minus its gain byte; other channels use
 * `dgGDacChannelWrite`. Inferred: it is the gain control of the encoder
 * output path, inverted so that 255 means no gain. */
#define KONA_DG_GAIN_1708             0x1708
/*
 * KONA_DG_ENC_BASE: Video encoder register window at 0x1800. Established:
 * `dgEncoderControlWrite` (arm1.u at 0x0c008554 and 0x0c008594) writes
 * 0x1800 as an address and 0x1802 as data, `dgEncoderClutWrite` (at
 * 0x0c00863c and 0x0c00867c) uses 0x1801 and 0x1803, and
 * `dgMakeEncoderFetal` (at 0x0c00a44c) zeroes the colour-map address and
 * then data words in a 256-pass loop. Inferred: the encoder has a control
 * register file and a colour map, each with an address and a data port. */
#define KONA_DG_ENC_BASE              0x1800
/*
 * KONA_DG_XMAP_CLOCK: XMAP clock select. Established:
 * `DoDGRqstXMapClockSelect` (arm1.u at 0x0c004dfc) writes the request word,
 * 0 or 1, to 0x1900 when the board-type word at 0x04067edc is zero and to
 * 0x8000 (at 0x0c004e64) otherwise; any other value prints an error message.
 * Inferred: the value picks one of two XMAP clock sources, and the board
 * type decides which bus address holds the control. */
#define KONA_DG_XMAP_CLOCK            0x1900
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
/*
 * KONA_DG_VOC_REG: Address of VOC register r in the block of VOC id: 0x200 +
 * 0x100 id + r. Established: `DoDGRqstEnableChannel` (arm1.u at 0x0c00bad4)
 * writes register 1 of the VOC named by its payload, and writes register
 * 0x8a of ids 0x1f, 0x2f, 0x30, 0x5f, 0xc7 and 0xca (0x0c00bcd4 and later);
 * the kernel never forms these. Inferred: it is the one formula for every
 * VOC register below. */
#define KONA_DG_VOC_REG(id, r)        (0x200 + 0x100 * (id) + (r))

/*
 * VOC registers by offset in the block. ESTABLISHED: the functions that
 * access each and the fields the code builds. Bracketed names are the
 * VOC register names of the vof/*.vof comment list matched by role
 * (INFERRED); that list gives no numbers.
 */
/*
 * KONA_VOC_STATUS: VOC register 0, status. Established: arm1.u
 * `dgFlushStatus` (at 0x0c005f78) reads it and ORs it into an accumulating
 * word, `dgMakeVocFetal` (at 0x0c00a0e0) reads it once at start-up, and
 * `dgGetInterruptState` (at 0x0c005f98) reads the master VOC's copy at
 * 0x300; no firmware path writes it. Inferred: it latches events such as the
 * frame toggle in bit 7, and reading it is how the firmware collects them. */
#define KONA_VOC_STATUS               0x00
/*
 * KONA_VOC_CONTROL: VOC register 1, control. Established: arm1.u
 * `DoDGRqstEnableChannel` (at 0x0c00bad4), `dgStartupRequesters` (at
 * 0x0c005b20), `dgShutdownChannelGenlockNicely` (at 0x0c005d44) and
 * `dgLoadChannelGenlockParams` (at 0x0c005368) read-modify-write it, and
 * `dgMakeVocFetal` (at 0x0c009cc0) writes 0; `DoDGRqstLoadFormat` (at
 * 0x0c00b550) sets bits 11-9 from the pixels-per-clock word through the
 * table at 0x040416c4. Inferred: bits 1-0 enable the channel and the upper
 * bits carry interrupt enables and the output pixel mux. */
#define KONA_VOC_CONTROL              0x01
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
/*
 * KONA_VOC_02: VOC register 2, written 0 and then 1 around channel enable.
 * Established: arm1.u `dgStartupRequesters` writes 0 (at 0x0c005ad4) and
 * later 1 (at 0x0c005bb4); `DoDGRqstEnableChannel` (at 0x0c00ba80 and
 * 0x0c00bdd8) and `dgResize` (at 0x0c00f5f0 and 0x0c00fcc8) write the same
 * pair, and `dgShutdownChannelGenlockNicely` (at 0x0c005cf8) writes the 0.
 * Inferred: it holds the channel in a reset or hold state while the
 * registers around it change, then releases it. */
#define KONA_VOC_02                   0x02
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
/*
 * KONA_VOC_IWSC_SCREEN: VOC register 3, input-window screen word.
 * Established: `dgLoadVocIwsc` (arm1.u at 0x0c00e1a8) stores the channel
 * record's first word masked to its low five bits, with the screen width in
 * four-pixel groups minus one in bits 14-5, and warns when the width falls
 * under 4 groups. Inferred: it tells the VOC how wide the framebuffer line
 * is that the input window sits in. */
#define KONA_VOC_IWSC_SCREEN          0x03
/*
 * KONA_VOC_IWSC_ORIGIN: VOC register 4, input-window origin. Established:
 * `dgLoadVocIwsc` (arm1.u at 0x0c00e24c) stores the window's x divided by 4
 * in bits 21-12 and y in bits 11-0, or 0 for both when the VOC is its own
 * write VOC. Inferred: it positions the input window's top-left corner
 * within the screen defined by register 3, in groups of four pixels
 * horizontally. */
#define KONA_VOC_IWSC_ORIGIN          0x04
/*
 * KONA_VOC_IWSC_SIZE: VOC register 5, input-window size. Established:
 * `dgLoadVocIwsc` (arm1.u at 0x0c00e2c8) stores the width rounded up to
 * four-pixel groups in bits 21-12 and the height in bits 11-0. Inferred:
 * with registers 3 and 4 it bounds the rectangle the VOC lets through from
 * the framebuffer stream. */
#define KONA_VOC_IWSC_SIZE            0x05
#define KONA_GROUPXEL_PIXELS          4
/*
 * KONA_VOC_VOF_CONTROL: VOC register 6, output-format control. Established:
 * `DoDGRqstLoadFormat` (arm1.u at 0x0c00ac6c, 0x0c00acb4 and 0x0c00af24)
 * sets and clears bit 3 around streaming the state table and puts a line-
 * type or signal number in bits 8-4 before registers 0xa, 0xb and 0xc onward
 * are written; `dgMakeVocFetal` (at 0x0c009da4 and 0x0c009d64) writes 0 and
 * 0x10. Inferred: bit 3 clears the state pointer and bits 8-4 are a select
 * index for the sequencer's tables. */
#define KONA_VOC_VOF_CONTROL          0x06
#define KONA_VOF_CLR_STATE_PTR        (1u << 3)
#define KONA_VOF_SELECT_MASK          0x1f0
/*
 * KONA_VOC_VOF_INITIAL: VOC register 7, initial signal levels of the timing
 * sequencer. Established: `DoDGRqstLoadFormat` (arm1.u at 0x0c00ac18,
 * 0x0c00b108 and 0x0c00b2fc) writes bits 13-0 as the initial level of the 14
 * signals and ORs 0x60000 in when the DG4 revision decodes below 1, with a
 * message about disabled sync outputs; `dgMakeVocFetal` (at 0x0c009de8)
 * writes 0. Inferred: a 1 starts that signal high. */
#define KONA_VOC_VOF_INITIAL          0x07
#define KONA_VOF_DISABLE_HV_SYNC      0x60000
/*
 * KONA_VOC_08: VOC register 8, line-length limits. Established:
 * `DoDGRqstLoadFormat` (arm1.u at 0x0c00b974) writes request words 297 to
 * 300 into bits 12-0, 25-13, 28-26 and 29, and `dgAdjustVPhase` (at
 * 0x0c01197c) reads it. Inferred: the 13-bit fields are the maximum line
 * count and the genlock line position, which the vertical-phase adjustment
 * reads back and edits. */
#define KONA_VOC_08                   0x08
/*
 * KONA_VOC_STATE_PORT: VOC register 9, state-table port. Established:
 * `DoDGRqstLoadFormat` (arm1.u at 0x0c00ad20) writes the state words from
 * request word 33 onward one after another to this single address after
 * clearing the state pointer in register 6. Inferred: the VOC advances its
 * internal state pointer on every write, so the whole sequencer table loads
 * through this one register. */
#define KONA_VOC_STATE_PORT           0x09
/*
 * KONA_VOC_LINE_A: VOC register 0xa, line-type edge mask, low part.
 * Established: `DoDGRqstLoadFormat` (arm1.u at 0x0c00ade8) writes one word
 * per line type, 32 of them, after the line type is selected in register 6.
 * Inferred: the word holds the mask of which of edge slots 0 to 31 fire on
 * that line type. */
#define KONA_VOC_LINE_A               0x0a
/*
 * KONA_VOC_LINE_B: VOC register 0xb, line-type length and edge mask, high
 * part. Established: `DoDGRqstLoadFormat` (arm1.u at 0x0c00ae30) writes one
 * word per line type with the length minus 3 in bits 30-18 and the mask for
 * edges 32 to 49 in bits 17-0. Inferred: together with register 0xa it
 * defines each line type's duration and which of the 50 edge slots it
 * triggers. */
#define KONA_VOC_LINE_B               0x0b
/*
 * KONA_VOC_EDGE: VOC registers 0xc to 0x13, edge slots 0 to 7 of the
 * selected signal. Established: `DoDGRqstLoadFormat` (arm1.u at 0x0c00af78)
 * writes the position in bits 12-0, with 0x1fff meaning unused, after a
 * signal number goes into register 6; `DoDGRqstHPhase` (at 0x0c011894 and
 * 0x0c0118dc) rewrites slots 0 and 1. Inferred: the horizontal phase
 * adjustment moves the first two edges of a signal to shift the picture
 * sideways. */
#define KONA_VOC_EDGE(n)              (0x0c + (n))
/*
 * KONA_VOC_BLANK: VOC register 0x14, blanking pixel positions. Established:
 * `DoDGRqstLoadFormat` (arm1.u at 0x0c00b4a0) sets bits 7-0 and 15-8 from
 * request words 29 and 30 and bit 16 from word 28; `dgMakeVocFetal` (at
 * 0x0c00a01c) writes 0x10000. Inferred: the two bytes are the first and last
 * visible pixel of a line and bit 16 enables the blanking. */
#define KONA_VOC_BLANK                0x14
/*
 * KONA_VOC_PFD: VOC registers 0x30 to 0x32, genlock phase-frequency
 * detector. Established: `dgLoadChannelGenlockParams` (arm1.u at 0x0c00528c,
 * 0x0c005198 and 0x0c0051e0) writes all three; `dgEnableChannelGenlock` (at
 * 0x0c005724) writes register 0x30, and `dgIsVocPresent` (at 0x0c010fbc)
 * probes register 0x31 by writing 1000 and 0 to 0x31 and 0x32 and reading
 * 0x31 back. Inferred: they hold the detector's sequence and phase limits. */
#define KONA_VOC_PFD                  0x30
/*
 * KONA_VOC_VDRC: VOC register 0x43, the genlock enable bit. Established:
 * arm1.u `dgLoadChannelGenlockParams` (at 0x0c00531c, 0x0c0053b8 and
 * 0x0c005418) and `dgEnableChannelGenlock` (at 0x0c0055b0 and 0x0c005788)
 * clear bit 0, call `sleep` with 0x32 and set it again; `dgMakeVocFetal` (at
 * 0x0c009e74) writes 0. It is not a video-requester register, as an earlier
 * comment that grouped it with 0x44 to 0x4a said; the requester code writes
 * 0x45 first. Inferred: bit 0 resets the genlock logic. */
#define KONA_VOC_VDRC                 0x43
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
 *        first tile; bits 7-6 = x mod 4, the same window x (0x0c00e45c
 *        reloads it after the divide by 160 at 0x0c00e440, the word goes
 *        out at 0x0c00e4a4). INFERRED: the first pixel inside that
 *        groupxel, so together the two fields pan to any pixel.
 *   0x50 + f and 0x58 + f, f = field: one word written to both: bits 6-0 =
 *        (y - o) mod 80, bits 19-7 = the field's first tile address, (y - o)
 *        / 8 times the tiles per row plus x / 160, bits 23-20 = a field-layout
 *        code; o is the field's line offset times a per-layout factor.
 *   0x60 + f: the channel record's word at +0xe8 + 16f with bits 23-12 = the
 *        window height and bits 27-24 = a field line offset.
 */
/*
 * KONA_VDRC_CONTROL: VOC register 0x44, video-requester control.
 * Established: arm1.u `dgConfigureVideoRequester` (at 0x0c00ef14) read-
 * modify-writes bits 6-5, 7 and 10-8, `dgEnableRequester` (at 0x0c00a968)
 * replaces bit 0 with its argument, and `dgStartupRequesters` (at
 * 0x0c005b70) sets bit 0. Inferred: bit 0 starts and stops the requester;
 * which of the remaining bits is pixel size, dither, transfer size or alpha
 * transfer is not shown by any code. */
#define KONA_VDRC_CONTROL             0x44
/*
 * KONA_VDRC_MAW: VOC register 0x45, memory-access width. Established:
 * `dgConfigureVideoRequester` (arm1.u at 0x0c00e3ac) stores
 * DGGlobalState+0x36b4, the number of tiles per framebuffer row; the .vof
 * sample comments it as 640 by 480. Inferred: it tells the requester how
 * many tiles make up one framebuffer row. */
#define KONA_VDRC_MAW                 0x45
/*
 * KONA_VDRC_START_LINE: VOC register 0x47, first request of a window line.
 * Established: `dgConfigureVideoRequester` (arm1.u at 0x0c00e7b4) stores the
 * START request word; a window inside one request writes 0 here (at
 * 0x0c00e9c4). Inferred: a window wider than one request begins with this
 * word, whose tile and groupxel fields the requester uses for the first
 * span. */
#define KONA_VDRC_START_LINE          0x47
/*
 * KONA_VDRC_MIDDLE_LINE: VOC register 0x48, repeated middle request of a
 * window line. Established: `dgConfigureVideoRequester` (arm1.u at
 * 0x0c00e868) stores the MIDDLE request word with a repeat count in bits
 * 22-15, and writes 0 (at 0x0c00e8d0) for a narrow window. Inferred: the
 * requester repeats this word the stated number of times between the first
 * and last spans. */
#define KONA_VDRC_MIDDLE_LINE         0x48
/*
 * KONA_VDRC_END_LINE: VOC register 0x49, last request of a window line.
 * Established: `dgConfigureVideoRequester` (arm1.u at 0x0c00e970 and
 * 0x0c00ea9c) stores the END request word, never with the valid bit; a
 * narrow window fills only this register. Inferred: it ends each line with
 * the remaining tiles. */
#define KONA_VDRC_END_LINE            0x49
/*
 * KONA_VDRC_PAN: VOC register 0x4a, horizontal pan. Established:
 * `dgConfigureVideoRequester` (arm1.u at 0x0c00e4a4) stores (x mod 160)
 * divided by 4 in bits 5-0 and a second value mod 4 in bits 7-6. Inferred:
 * bits 5-0 start the first tile partway in, in groups of four pixels; what
 * the bit 7-6 field adjusts is not shown by any code. */
#define KONA_VDRC_PAN                 0x4a
/*
 * KONA_VDRC_FIELD_A: VOC registers 0x50 to 0x57, per-field start word A.
 * Established: `dgConfigureVideoRequester` (arm1.u at 0x0c00ecb8) stores,
 * for field f, the line within the 80-line period in bits 6-0, the first
 * tile address in bits 19-7 and a layout code in bits 23-20. Inferred: it
 * tells the requester where field f begins in the framebuffer; register 0x58
 * + f receives the same word. */
#define KONA_VDRC_FIELD_A(f)          (0x50 + (f))
/*
 * KONA_VDRC_FIELD_B: VOC registers 0x58 to 0x5f, per-field start word B.
 * Established: `dgConfigureVideoRequester` (arm1.u at 0x0c00ed00) writes the
 * same word it sent to register 0x50 + f. Inferred: a second copy, perhaps
 * for another buffer or eye, which this firmware always sends the same word. */
#define KONA_VDRC_FIELD_B(f)          (0x58 + (f))
/*
 * KONA_VDRC_REQ_PATTERN: VOC registers from 0x60, field window pattern.
 * Established: `dgConfigureVideoRequester` (arm1.u at 0x0c00edc8) stores the
 * channel record's word at +0xe8 plus 16 per field with bits 23-12 set to
 * the window height and bits 27-24 to a field line offset;
 * `dgLoadFieldSequentialAndStereo` (at 0x0c00a8b8) writes the same address
 * range with colour and eye flag bits, and no code reconciles the two
 * writers. */
#define KONA_VDRC_REQ_PATTERN(f)      (0x60 + (f))
#define KONA_TILE_WIDTH               160
#define KONA_TILE_HEIGHT              8
#define KONA_VDRC_MAX_TILES_PER_REQ   8
/* Request word at 0x47-0x49, ESTABLISHED bit positions. */
#define KONA_VDRC_REQ_TILES_M1        0x00000007  /* tiles in the request - 1 */
#define KONA_VDRC_REQ_GROUPXELS_M1    0x00003ff8  /* bits 13-3: groupxels in the line - 1 */
#define KONA_VDRC_REQ_VALID           0x00004000  /* set in START and MIDDLE, never in END */
#define KONA_VDRC_REQ_REPEAT          0x007f8000  /* bits 22-15, MIDDLE only: repeat count */
/*
 * KONA_VOC_PLL_CONTROL: VOC register 0x70, clock PLL control and handshake.
 * Established: `dgWaitForVocPllInterface` (arm1.u at 0x0c004840) polls bit 0
 * up to 99 times and prints a timeout if it never rises; `dgProgramClock`
 * (at 0x0c004ad4) then writes bit 1 from its third argument, bit 4 from its
 * second and bit 3 when that second argument is 0. Inferred: bit 0 says the
 * PLL interface is ready; the written bits select the programming mode. */
#define KONA_VOC_PLL_CONTROL          0x70
/*
 * KONA_VOC_GEN: VOC registers 0x81 to 0x84, clock source and genlock
 * settings. Established: `dgSelectVocClockSrc` (arm1.u at 0x0c004b94)
 * rewrites register 0x81, `dgLoadChannelGenlockParams` (at 0x0c004fb0,
 * 0x0c005078, 0x0c0050dc and 0x0c005150) writes 0x81 to 0x84, and
 * `DoDGRqstLoadFormat` (at 0x0c00b864 and 0x0c00b7f8) puts request word 295
 * in 0x81 bits 11-2 and word 296 in 0x82 bits 21-14. Inferred: they program
 * the genlock multiplier and divider and pick the clock input. */
#define KONA_VOC_GEN                  0x81
/*
 * KONA_VOC_FIFO: VOC register 0x8a, output FIFO control. Established:
 * `dgResetVocFifo` (arm1.u at 0x0c0110c8) writes 0x2301,
 * `DoDGRqstLoadFormat` (at 0x0c00b404) sets bit 12 from request word 278 and
 * bit 13 from its inverse, and `DoDGRqstEnableChannel` writes register 0x8a
 * of option-board ids (at 0x0c00bcd4). Inferred: 0x2301 puts the FIFO in its
 * reset state and the two LoadFormat bits select the eye or buffer mode. */
#define KONA_VOC_FIFO                 0x8a
/*
 * KONA_VOC_FIELD_DOMINANCE: VOC register 0x8f, field dominance. Established:
 * `DoDGRqstChannelFieldDominance` (arm1.u at 0x0c0107c8 and 0x0c01083c)
 * read-modify-writes it, `dgResize` (at 0x0c00f808) writes it, and
 * `dgMakeVocFetal` (at 0x0c009fd0) clears it. Inferred: it chooses which
 * field of an interlaced pair the VOC treats as first. */
#define KONA_VOC_FIELD_DOMINANCE      0x8f
/*
 * KONA_VOC_SIZ: VOC registers 0x90 to 0x9d, output scaler. Established:
 * `dgResize` (arm1.u at 0x0c00f864 through 0x0c00fc74) writes all fourteen
 * in order, each from the channel's source and destination sizes. Inferred:
 * they program the scale factors and offsets of the resize hardware that
 * maps the framebuffer window to the output raster. */
#define KONA_VOC_SIZ                  0x90

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
