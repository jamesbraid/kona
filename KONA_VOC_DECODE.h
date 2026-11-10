/*
 * KONA_VOC_DECODE.h - video-output chip (VOC) registers
 *
 * Each display channel has one video-output chip that sequences the output
 * format, requests pixels from the frame buffer, and handles genlock, scaling and
 * the pixel path to the video DAC. The chip's registers sit on the display bus
 * at a base address plus register index r, with the base advancing by a fixed
 * stride per channel id (ids 0 to 7 on the base board; option boards carry more).
 * The REG lines give the registers of channel id 0. A register of channel n is
 * at the same index with the base moved on by n strides. The master copy of the
 * status register is channel id 1's register 0, read as the master VOC status.
 *
 * Two chip layouts exist, called 1a (earlier) and 1b (later), told apart by the
 * chip's boundary-scan revision. Layout 1b adds the high four bits of the phase
 * detector line count, the frame-duration register, the frame-reference select
 * in the sync-detect control, the interlaced-cursor bit in the requester control
 * and the z-request register, and widens the back-porch clamp width to 8 bits.
 * Everything else is identical. Each such item is marked "1b" in its comment.
 *
 * Reading the header. Bus addresses appear only on REG lines; elsewhere a
 * register is named, because the same hex digits are command-token numbers in
 * KONA_TOKEN_DECODE.h. All registers are one 32-bit bus word.
 *
 * Derivation: roles, bit positions and grades are those of the back-end
 * definitions table (docs/command-table.md, section 6.5), which reads them from
 * the display firmware's programming of the chip, the shipped diagnostic's own
 * register tables and the shipped kernel module. A grade says how the layout was
 * derived, not that silicon was measured. scripts/kona_checks.py keeps this file
 * and the table in step.
 */
#ifndef KONA_VOC_DECODE_H
#define KONA_VOC_DECODE_H

#include <stdint.h>


/* ---- status and control ---- */

/* Status. Bits 15:0 are the live level of the sequencer signals in the */
/* output-format order (bits 14 and 15 are spares); the firmware waits on */
/* frame start, which pulses once per frame. */
/* REG: VOC.status 0x200 r32 reset=unknown established */
/* FIELD: VOC.status.hsync 0:0 established */
#define VOC_STATUS_HSYNC_SHIFT 0
#define VOC_STATUS_HSYNC_MASK 0x1u
/* FIELD: VOC.status.vsync 1:1 established */
#define VOC_STATUS_VSYNC_SHIFT 1
#define VOC_STATUS_VSYNC_MASK 0x1u
/* FIELD: VOC.status.csync 2:2 established */
#define VOC_STATUS_CSYNC_SHIFT 2
#define VOC_STATUS_CSYNC_MASK 0x1u
/* FIELD: VOC.status.cblank 3:3 established */
#define VOC_STATUS_CBLANK_SHIFT 3
#define VOC_STATUS_CBLANK_MASK 0x1u
/* FIELD: VOC.status.trisync 4:4 established */
#define VOC_STATUS_TRISYNC_SHIFT 4
#define VOC_STATUS_TRISYNC_MASK 0x1u
/* FIELD: VOC.status.field_start 5:5 established */
#define VOC_STATUS_FIELD_START_SHIFT 5
#define VOC_STATUS_FIELD_START_MASK 0x1u
/* FIELD: VOC.status.field 6:6 established */
#define VOC_STATUS_FIELD_SHIFT 6
#define VOC_STATUS_FIELD_MASK 0x1u
/* FIELD: VOC.status.frame_start 7:7 established */
#define VOC_STATUS_FRAME_START_SHIFT 7
#define VOC_STATUS_FRAME_START_MASK 0x1u
/* FIELD: VOC.status.video_active 8:8 established */
#define VOC_STATUS_VIDEO_ACTIVE_SHIFT 8
#define VOC_STATUS_VIDEO_ACTIVE_MASK 0x1u
/* FIELD: VOC.status.line_start 9:9 established */
#define VOC_STATUS_LINE_START_SHIFT 9
#define VOC_STATUS_LINE_START_MASK 0x1u
/* FIELD: VOC.status.stereo_out 10:10 established */
#define VOC_STATUS_STEREO_OUT_SHIFT 10
#define VOC_STATUS_STEREO_OUT_MASK 0x1u
/* FIELD: VOC.status.impreg_load 11:11 established */
#define VOC_STATUS_IMPREG_LOAD_SHIFT 11
#define VOC_STATUS_IMPREG_LOAD_MASK 0x1u
/* FIELD: VOC.status.xmapreg_load 12:12 established */
#define VOC_STATUS_XMAPREG_LOAD_SHIFT 12
#define VOC_STATUS_XMAPREG_LOAD_MASK 0x1u
/* FIELD: VOC.status.vdrc_enable 13:13 established */
#define VOC_STATUS_VDRC_ENABLE_SHIFT 13
#define VOC_STATUS_VDRC_ENABLE_MASK 0x1u
/* FIELD: VOC.status.fs_colour_field 17:16 established */
#define VOC_STATUS_FS_COLOUR_FIELD_SHIFT 16
#define VOC_STATUS_FS_COLOUR_FIELD_MASK 0x3u
/* FIELD: VOC.status.int_fifo_over 18:18 established */
#define VOC_STATUS_INT_FIFO_OVER_SHIFT 18
#define VOC_STATUS_INT_FIFO_OVER_MASK 0x1u
/* FIELD: VOC.status.int_fifo_under 19:19 established */
#define VOC_STATUS_INT_FIFO_UNDER_SHIFT 19
#define VOC_STATUS_INT_FIFO_UNDER_MASK 0x1u
/* FIELD: VOC.status.int_ext_sync_loss 20:20 established */
#define VOC_STATUS_INT_EXT_SYNC_LOSS_SHIFT 20
#define VOC_STATUS_INT_EXT_SYNC_LOSS_MASK 0x1u
/* FIELD: VOC.status.int_ext_sync_detect 21:21 established */
#define VOC_STATUS_INT_EXT_SYNC_DETECT_SHIFT 21
#define VOC_STATUS_INT_EXT_SYNC_DETECT_MASK 0x1u
/* FIELD: VOC.status.int_ext_frame 22:22 established */
#define VOC_STATUS_INT_EXT_FRAME_SHIFT 22
#define VOC_STATUS_INT_EXT_FRAME_MASK 0x1u
/* FIELD: VOC.status.int_vdrc 23:23 established */
#define VOC_STATUS_INT_VDRC_SHIFT 23
#define VOC_STATUS_INT_VDRC_MASK 0x1u
/* FIELD: VOC.status.int_host 24:24 established */
#define VOC_STATUS_INT_HOST_SHIFT 24
#define VOC_STATUS_INT_HOST_MASK 0x1u
/* Control. The firmware's values 1, 2 and 3 in bits 1:0 are copy modes, not a */
/* channel enable. Genlock set-up enables the sync-loss and sync-detect */
/* interrupts and disables the external-frame interrupt. */
/* REG: VOC.control 0x201 rw32 reset=unknown established */
/* FIELD: VOC.control.dbuf_mode 1:0 established */
#define VOC_CONTROL_DBUF_MODE_SHIFT 0
#define VOC_CONTROL_DBUF_MODE_MASK 0x3u
/* ENUM: VOC.control.dbuf_mode 0 immediate established */
#define VOC_CONTROL_DBUF_MODE_IMMEDIATE 0
/* ENUM: VOC.control.dbuf_mode 1 copy_impreg_load established */
#define VOC_CONTROL_DBUF_MODE_COPY_IMPREG_LOAD 1
/* ENUM: VOC.control.dbuf_mode 2 copy_swap established */
#define VOC_CONTROL_DBUF_MODE_COPY_SWAP 2
/* ENUM: VOC.control.dbuf_mode 3 copy_frame established */
#define VOC_CONTROL_DBUF_MODE_COPY_FRAME 3
/* FIELD: VOC.control.ie_fifo_over 2:2 established */
#define VOC_CONTROL_IE_FIFO_OVER_SHIFT 2
#define VOC_CONTROL_IE_FIFO_OVER_MASK 0x1u
/* FIELD: VOC.control.ie_fifo_under 3:3 established */
#define VOC_CONTROL_IE_FIFO_UNDER_SHIFT 3
#define VOC_CONTROL_IE_FIFO_UNDER_MASK 0x1u
/* FIELD: VOC.control.ie_ext_sync_loss 4:4 established */
#define VOC_CONTROL_IE_EXT_SYNC_LOSS_SHIFT 4
#define VOC_CONTROL_IE_EXT_SYNC_LOSS_MASK 0x1u
/* FIELD: VOC.control.ie_ext_sync_detect 5:5 established */
#define VOC_CONTROL_IE_EXT_SYNC_DETECT_SHIFT 5
#define VOC_CONTROL_IE_EXT_SYNC_DETECT_MASK 0x1u
/* FIELD: VOC.control.ie_ext_frame 6:6 established */
#define VOC_CONTROL_IE_EXT_FRAME_SHIFT 6
#define VOC_CONTROL_IE_EXT_FRAME_MASK 0x1u
/* FIELD: VOC.control.ie_vdrc 7:7 established */
#define VOC_CONTROL_IE_VDRC_SHIFT 7
#define VOC_CONTROL_IE_VDRC_MASK 0x1u
/* FIELD: VOC.control.ie_host 8:8 established */
#define VOC_CONTROL_IE_HOST_SHIFT 8
#define VOC_CONTROL_IE_HOST_MASK 0x1u
/* FIELD: VOC.control.pixel_mux 11:9 established */
#define VOC_CONTROL_PIXEL_MUX_SHIFT 9
#define VOC_CONTROL_PIXEL_MUX_MASK 0x7u
/* ENUM: VOC.control.pixel_mux 0 p4_4 established */
#define VOC_CONTROL_PIXEL_MUX_P4_4 0
/* ENUM: VOC.control.pixel_mux 1 p4_2 established */
#define VOC_CONTROL_PIXEL_MUX_P4_2 1
/* ENUM: VOC.control.pixel_mux 2 p4_1 established */
#define VOC_CONTROL_PIXEL_MUX_P4_1 2
/* ENUM: VOC.control.pixel_mux 3 p4_8 established */
#define VOC_CONTROL_PIXEL_MUX_P4_8 3
/* ENUM: VOC.control.pixel_mux 4 fs_4 established */
#define VOC_CONTROL_PIXEL_MUX_FS_4 4
/* ENUM: VOC.control.pixel_mux 5 fs_2 established */
#define VOC_CONTROL_PIXEL_MUX_FS_2 5
/* ENUM: VOC.control.pixel_mux 6 fs_1 established */
#define VOC_CONTROL_PIXEL_MUX_FS_1 6
/* ENUM: VOC.control.pixel_mux 7 fs_8 established */
#define VOC_CONTROL_PIXEL_MUX_FS_8 7
/* Double-buffer enable, bit 0: the firmware writes 0 then 1 around enabling a */
/* channel and the diagnostic polls it. That it is a request that clears itself is */
/* inferred. */
/* REG: VOC.dbuf_request 0x202 rw32 reset=unknown established */
/* FIELD: VOC.dbuf_request.enable 0:0 established */
#define VOC_DBUF_REQUEST_ENABLE_SHIFT 0
#define VOC_DBUF_REQUEST_ENABLE_MASK 0x1u
/* Video-requester input window. A groupxel is four pixels. */
/* REG: VOC.req_window 0x203 rw32 reset=unknown established */
/* FIELD: VOC.req_window.channel 4:0 established */
#define VOC_REQ_WINDOW_CHANNEL_SHIFT 0
#define VOC_REQ_WINDOW_CHANNEL_MASK 0x1fu
/* FIELD: VOC.req_window.width_groupxels_m1 14:5 established */
#define VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_SHIFT 5
#define VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_MASK 0x3ffu
/* Video-requester window origin: x / 4 and y, two fields. The positions are not */
/* recorded in the table; reading them from the firmware's origin store would */
/* settle them. */
/* REG: VOC.req_origin 0x204 rw32 reset=unknown unknown */
/* Video-requester window size in groupxels and lines, two fields. The positions */
/* are not recorded in the table. */
/* REG: VOC.req_size 0x205 rw32 reset=unknown unknown */
/* Sequencer control. */
/* REG: VOC.seq_control 0x206 rw32 reset=unknown established */
/* FIELD: VOC.seq_control.enable 0:0 established */
#define VOC_SEQ_CONTROL_ENABLE_SHIFT 0
#define VOC_SEQ_CONTROL_ENABLE_MASK 0x1u
/* FIELD: VOC.seq_control.reset_source 2:1 established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_SHIFT 1
#define VOC_SEQ_CONTROL_RESET_SOURCE_MASK 0x3u
/* ENUM: VOC.seq_control.reset_source 0 none established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_NONE 0
/* ENUM: VOC.seq_control.reset_source 1 output_format_a established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_OUTPUT_FORMAT_A 1
/* ENUM: VOC.seq_control.reset_source 3 phase_detector established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_PHASE_DETECTOR 3
/* FIELD: VOC.seq_control.clear_state_pointer 3:3 established */
#define VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_SHIFT 3
#define VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_MASK 0x1u
/* FIELD: VOC.seq_control.line_edge_select 8:4 established */
#define VOC_SEQ_CONTROL_LINE_EDGE_SELECT_SHIFT 4
#define VOC_SEQ_CONTROL_LINE_EDGE_SELECT_MASK 0x1fu
/* FIELD: VOC.seq_control.reset_rate 12:9 established */
#define VOC_SEQ_CONTROL_RESET_RATE_SHIFT 9
#define VOC_SEQ_CONTROL_RESET_RATE_MASK 0xfu
/* Sequencer initial signal levels. The firmware's tri-state value on an old chip */
/* revision comes with a 'disabled sync outputs' message. */
/* REG: VOC.seq_initial 0x207 rw32 reset=unknown established */
/* FIELD: VOC.seq_initial.initial_levels 13:0 established */
#define VOC_SEQ_INITIAL_INITIAL_LEVELS_SHIFT 0
#define VOC_SEQ_INITIAL_INITIAL_LEVELS_MASK 0x3fffu
/* FIELD: VOC.seq_initial.tristate_csync 16:16 established */
#define VOC_SEQ_INITIAL_TRISTATE_CSYNC_SHIFT 16
#define VOC_SEQ_INITIAL_TRISTATE_CSYNC_MASK 0x1u
/* FIELD: VOC.seq_initial.tristate_hsync 17:17 established */
#define VOC_SEQ_INITIAL_TRISTATE_HSYNC_SHIFT 17
#define VOC_SEQ_INITIAL_TRISTATE_HSYNC_MASK 0x1u
/* FIELD: VOC.seq_initial.tristate_vsync 18:18 established */
#define VOC_SEQ_INITIAL_TRISTATE_VSYNC_SHIFT 18
#define VOC_SEQ_INITIAL_TRISTATE_VSYNC_MASK 0x1u
/* FIELD: VOC.seq_initial.vphase_count 31:19 established */
#define VOC_SEQ_INITIAL_VPHASE_COUNT_SHIFT 19
#define VOC_SEQ_INITIAL_VPHASE_COUNT_MASK 0x1fffu
/* Genlock vertical phase and hysteresis. The load-format request's hysteresis */
/* words are always 0 from the host, so hysteresis stays off. */
/* REG: VOC.genlock_vphase 0x208 rw32 reset=unknown established */
/* FIELD: VOC.genlock_vphase.internal_vphase 12:0 established */
#define VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_SHIFT 0
#define VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_MASK 0x1fffu
/* FIELD: VOC.genlock_vphase.external_vphase 25:13 established */
#define VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_SHIFT 13
#define VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_MASK 0x1fffu
/* FIELD: VOC.genlock_vphase.hysteresis_width 28:26 established */
#define VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_SHIFT 26
#define VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_MASK 0x7u
/* FIELD: VOC.genlock_vphase.hysteresis_enable 29:29 established */
#define VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_SHIFT 29
#define VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_MASK 0x1u
/* Sequencer state-table port; auto-increments from the cleared pointer, two */
/* states per word. */
/* REG: VOC.state_table 0x209 rw32 reset=unknown established */
/* Selected line type, word A: the edge mask for edges 0 to 31 (32 bits). */
/* REG: VOC.line_type_a 0x20a rw32 reset=unknown established */
/* Selected line type, word B. */
/* REG: VOC.line_type_b 0x20b rw32 reset=unknown established */
/* FIELD: VOC.line_type_b.edge_mask_hi 17:0 established */
#define VOC_LINE_TYPE_B_EDGE_MASK_HI_SHIFT 0
#define VOC_LINE_TYPE_B_EDGE_MASK_HI_MASK 0x3ffffu
/* FIELD: VOC.line_type_b.length_m3 30:18 established */
#define VOC_LINE_TYPE_B_LENGTH_M3_SHIFT 18
#define VOC_LINE_TYPE_B_LENGTH_M3_MASK 0x1fffu
/* Edge slots of the selected signal; slot s is at index 12 + s. Edge position in */
/* 12:0, 8191 = unused. */
/* REG: VOC.edge_slot 0x20c rw32 count=8 reset=unknown established */
/* FIELD: VOC.edge_slot.position 12:0 established */
#define VOC_EDGE_SLOT_POSITION_SHIFT 0
#define VOC_EDGE_SLOT_POSITION_MASK 0x1fffu
/* Pixel blank, three format words. */
/* REG: VOC.pixel_blank 0x214 rw32 reset=unknown established */
/* FIELD: VOC.pixel_blank.first 7:0 established */
#define VOC_PIXEL_BLANK_FIRST_SHIFT 0
#define VOC_PIXEL_BLANK_FIRST_MASK 0xffu
/* FIELD: VOC.pixel_blank.last 15:8 established */
#define VOC_PIXEL_BLANK_LAST_SHIFT 8
#define VOC_PIXEL_BLANK_LAST_MASK 0xffu
/* FIELD: VOC.pixel_blank.enable 16:16 established */
#define VOC_PIXEL_BLANK_ENABLE_SHIFT 16
#define VOC_PIXEL_BLANK_ENABLE_MASK 0x1u

/* ---- phase-frequency detector and sync detect ---- */

/* Phase-frequency detector control. The fourth clock-select setting is printed */
/* as 75 in the diagnostic's table. */
/* REG: VOC.pfd_control 0x230 rw32 reset=unknown established */
/* FIELD: VOC.pfd_control.enable 0:0 established */
#define VOC_PFD_CONTROL_ENABLE_SHIFT 0
#define VOC_PFD_CONTROL_ENABLE_MASK 0x1u
/* FIELD: VOC.pfd_control.flip 1:1 established */
#define VOC_PFD_CONTROL_FLIP_SHIFT 1
#define VOC_PFD_CONTROL_FLIP_MASK 0x1u
/* FIELD: VOC.pfd_control.clock_select 3:2 established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_SHIFT 2
#define VOC_PFD_CONTROL_CLOCK_SELECT_MASK 0x3u
/* ENUM: VOC.pfd_control.clock_select 0 host established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_HOST 0
/* ENUM: VOC.pfd_control.clock_select 1 host_div2 established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_HOST_DIV2 1
/* ENUM: VOC.pfd_control.clock_select 2 host_div4 established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_HOST_DIV4 2
/* ENUM: VOC.pfd_control.clock_select 3 fourth inferred */
#define VOC_PFD_CONTROL_CLOCK_SELECT_FOURTH 3
/* FIELD: VOC.pfd_control.frame_select 4:4 established */
#define VOC_PFD_CONTROL_FRAME_SELECT_SHIFT 4
#define VOC_PFD_CONTROL_FRAME_SELECT_MASK 0x1u
/* FIELD: VOC.pfd_control.precision 15:5 established */
#define VOC_PFD_CONTROL_PRECISION_SHIFT 5
#define VOC_PFD_CONTROL_PRECISION_MASK 0x7ffu
/* FIELD: VOC.pfd_control.line_count 23:16 established */
#define VOC_PFD_CONTROL_LINE_COUNT_SHIFT 16
#define VOC_PFD_CONTROL_LINE_COUNT_MASK 0xffu
/* FIELD: VOC.pfd_control.csync_source 25:24 established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_SHIFT 24
#define VOC_PFD_CONTROL_CSYNC_SOURCE_MASK 0x3u
/* ENUM: VOC.pfd_control.csync_source 0 internal established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_INTERNAL 0
/* ENUM: VOC.pfd_control.csync_source 1 external established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_EXTERNAL 1
/* ENUM: VOC.pfd_control.csync_source 2 output_format established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_OUTPUT_FORMAT 2
/* FIELD: VOC.pfd_control.line_count_hi 29:26 established */
#define VOC_PFD_CONTROL_LINE_COUNT_HI_SHIFT 26
#define VOC_PFD_CONTROL_LINE_COUNT_HI_MASK 0xfu
/* Sequence low, 32 bits, from the genlock request's format words. */
/* REG: VOC.seq_low 0x231 rw32 reset=unknown established */
/* Sequence high, 32 bits, from the genlock request's format words. */
/* REG: VOC.seq_high 0x232 rw32 reset=unknown established */
/* Diagnostic counts. */
/* REG: VOC.pfd_diag 0x233 rw32 reset=unknown established */
/* FIELD: VOC.pfd_diag.duration 11:0 established */
#define VOC_PFD_DIAG_DURATION_SHIFT 0
#define VOC_PFD_DIAG_DURATION_MASK 0xfffu
/* FIELD: VOC.pfd_diag.previous 23:12 established */
#define VOC_PFD_DIAG_PREVIOUS_SHIFT 12
#define VOC_PFD_DIAG_PREVIOUS_MASK 0xfffu
/* Frame duration, 20 bits (1b only). */
/* REG: VOC.frame_duration 0x234 rw32 reset=unknown established */
/* FIELD: VOC.frame_duration.duration 19:0 established */
#define VOC_FRAME_DURATION_DURATION_SHIFT 0
#define VOC_FRAME_DURATION_DURATION_MASK 0xfffffu
/* Sync-detect control. The firmware's clear, sleep and set of bit 0 is this */
/* enable. That the block is the external sync detector is inferred from the */
/* paired external-sync-detect interrupt. The frame-reference select is 1b only. */
/* REG: VOC.sync_detect_control 0x243 rw32 reset=unknown established */
/* FIELD: VOC.sync_detect_control.enable 0:0 established */
#define VOC_SYNC_DETECT_CONTROL_ENABLE_SHIFT 0
#define VOC_SYNC_DETECT_CONTROL_ENABLE_MASK 0x1u
/* FIELD: VOC.sync_detect_control.line_count 11:1 established */
#define VOC_SYNC_DETECT_CONTROL_LINE_COUNT_SHIFT 1
#define VOC_SYNC_DETECT_CONTROL_LINE_COUNT_MASK 0x7ffu
/* FIELD: VOC.sync_detect_control.frames_off 14:12 established */
#define VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_SHIFT 12
#define VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_MASK 0x7u
/* FIELD: VOC.sync_detect_control.frames_on 17:15 established */
#define VOC_SYNC_DETECT_CONTROL_FRAMES_ON_SHIFT 15
#define VOC_SYNC_DETECT_CONTROL_FRAMES_ON_MASK 0x7u
/* FIELD: VOC.sync_detect_control.frame_ref_select 18:18 established */
#define VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_SHIFT 18
#define VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_MASK 0x1u

/* ---- video requester ---- */

/* Video-requester control. Firmware pixel-format word: 0 (RGB10) sets nothing, 1 */
/* (alpha) sets the transfer-size and alpha bits, 2 (RGB12) sets the transfer-size */
/* bit, 3 sets the Z bit; the three bits are not a single format code. The reading */
/* of the transfer-size bit as 32-bit and 10-bit versus 42-bit and 12-bit */
/* components is inferred. The interlaced cursor bit is 1b only. */
/* REG: VOC.req_control 0x244 rw32 reset=unknown established */
/* FIELD: VOC.req_control.enable 0:0 established */
#define VOC_REQ_CONTROL_ENABLE_SHIFT 0
#define VOC_REQ_CONTROL_ENABLE_MASK 0x1u
/* FIELD: VOC.req_control.read_enable 1:1 established */
#define VOC_REQ_CONTROL_READ_ENABLE_SHIFT 1
#define VOC_REQ_CONTROL_READ_ENABLE_MASK 0x1u
/* FIELD: VOC.req_control.ext_request_enable 2:2 established */
#define VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_SHIFT 2
#define VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_MASK 0x1u
/* FIELD: VOC.req_control.ext_request 3:3 established */
#define VOC_REQ_CONTROL_EXT_REQUEST_SHIFT 3
#define VOC_REQ_CONTROL_EXT_REQUEST_MASK 0x1u
/* FIELD: VOC.req_control.request_done 4:4 established */
#define VOC_REQ_CONTROL_REQUEST_DONE_SHIFT 4
#define VOC_REQ_CONTROL_REQUEST_DONE_MASK 0x1u
/* FIELD: VOC.req_control.pixel_size 6:5 established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_SHIFT 5
#define VOC_REQ_CONTROL_PIXEL_SIZE_MASK 0x3u
/* ENUM: VOC.req_control.pixel_size 0 small established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_SMALL 0
/* ENUM: VOC.req_control.pixel_size 1 medium established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_MEDIUM 1
/* ENUM: VOC.req_control.pixel_size 2 large established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_LARGE 2
/* ENUM: VOC.req_control.pixel_size 3 xlarge established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_XLARGE 3
/* FIELD: VOC.req_control.dither 7:7 established */
#define VOC_REQ_CONTROL_DITHER_SHIFT 7
#define VOC_REQ_CONTROL_DITHER_MASK 0x1u
/* FIELD: VOC.req_control.transfer_size 8:8 inferred */
#define VOC_REQ_CONTROL_TRANSFER_SIZE_SHIFT 8
#define VOC_REQ_CONTROL_TRANSFER_SIZE_MASK 0x1u
/* FIELD: VOC.req_control.transfer_alpha 9:9 established */
#define VOC_REQ_CONTROL_TRANSFER_ALPHA_SHIFT 9
#define VOC_REQ_CONTROL_TRANSFER_ALPHA_MASK 0x1u
/* FIELD: VOC.req_control.transfer_z 10:10 established */
#define VOC_REQ_CONTROL_TRANSFER_Z_SHIFT 10
#define VOC_REQ_CONTROL_TRANSFER_Z_MASK 0x1u
/* FIELD: VOC.req_control.fifo_balance 21:11 established */
#define VOC_REQ_CONTROL_FIFO_BALANCE_SHIFT 11
#define VOC_REQ_CONTROL_FIFO_BALANCE_MASK 0x7ffu
/* FIELD: VOC.req_control.arbiter_status 22:22 established */
#define VOC_REQ_CONTROL_ARBITER_STATUS_SHIFT 22
#define VOC_REQ_CONTROL_ARBITER_STATUS_MASK 0x1u
/* FIELD: VOC.req_control.interlaced_cursor 23:23 established */
#define VOC_REQ_CONTROL_INTERLACED_CURSOR_SHIFT 23
#define VOC_REQ_CONTROL_INTERLACED_CURSOR_MASK 0x1u
/* Tiles per frame-buffer row. */
/* REG: VOC.tiles_per_row 0x245 rw32 reset=unknown established */
/* FIELD: VOC.tiles_per_row.tiles 4:0 established */
#define VOC_TILES_PER_ROW_TILES_SHIFT 0
#define VOC_TILES_PER_ROW_TILES_MASK 0x1fu
/* Start line request word.  */
/* REG: VOC.line_start 0x247 rw32 reset=unknown established */
/* FIELD: VOC.line_start.tiles_m1 2:0 established */
#define VOC_LINE_START_TILES_M1_SHIFT 0
#define VOC_LINE_START_TILES_M1_MASK 0x7u
/* FIELD: VOC.line_start.groupxels_m1 13:3 established */
#define VOC_LINE_START_GROUPXELS_M1_SHIFT 3
#define VOC_LINE_START_GROUPXELS_M1_MASK 0x7ffu
/* FIELD: VOC.line_start.valid 14:14 established */
#define VOC_LINE_START_VALID_SHIFT 14
#define VOC_LINE_START_VALID_MASK 0x1u
/* Middle line request word. Same fields as the start word plus a repeat count. */
/* REG: VOC.line_middle 0x248 rw32 reset=unknown established */
/* FIELD: VOC.line_middle.tiles_m1 2:0 established */
#define VOC_LINE_MIDDLE_TILES_M1_SHIFT 0
#define VOC_LINE_MIDDLE_TILES_M1_MASK 0x7u
/* FIELD: VOC.line_middle.groupxels_m1 13:3 established */
#define VOC_LINE_MIDDLE_GROUPXELS_M1_SHIFT 3
#define VOC_LINE_MIDDLE_GROUPXELS_M1_MASK 0x7ffu
/* FIELD: VOC.line_middle.valid 14:14 established */
#define VOC_LINE_MIDDLE_VALID_SHIFT 14
#define VOC_LINE_MIDDLE_VALID_MASK 0x1u
/* FIELD: VOC.line_middle.repeat_count 22:15 established */
#define VOC_LINE_MIDDLE_REPEAT_COUNT_SHIFT 15
#define VOC_LINE_MIDDLE_REPEAT_COUNT_MASK 0xffu
/* End line request word. Same fields as the start word; the valid bit is never set. */
/* REG: VOC.line_end 0x249 rw32 reset=unknown established */
/* FIELD: VOC.line_end.tiles_m1 2:0 established */
#define VOC_LINE_END_TILES_M1_SHIFT 0
#define VOC_LINE_END_TILES_M1_MASK 0x7u
/* FIELD: VOC.line_end.groupxels_m1 13:3 established */
#define VOC_LINE_END_GROUPXELS_M1_SHIFT 3
#define VOC_LINE_END_GROUPXELS_M1_MASK 0x7ffu
/* FIELD: VOC.line_end.valid 14:14 established */
#define VOC_LINE_END_VALID_SHIFT 14
#define VOC_LINE_END_VALID_MASK 0x1u
/* Pan: groupxel offset = (x mod 160) / 4, pixel offset = x mod 4. */
/* REG: VOC.pan 0x24a rw32 reset=unknown established */
/* FIELD: VOC.pan.groupxel_offset 5:0 established */
#define VOC_PAN_GROUPXEL_OFFSET_SHIFT 0
#define VOC_PAN_GROUPXEL_OFFSET_MASK 0x3fu
/* FIELD: VOC.pan.pixel_offset 7:6 established */
#define VOC_PAN_PIXEL_OFFSET_SHIFT 6
#define VOC_PAN_PIXEL_OFFSET_MASK 0x3u
/* Z request (1b only); unused by the firmware. */
/* REG: VOC.z_request 0x24b rw32 reset=unknown established */
/* FIELD: VOC.z_request.field_count 3:0 established */
#define VOC_Z_REQUEST_FIELD_COUNT_SHIFT 0
#define VOC_Z_REQUEST_FIELD_COUNT_MASK 0xfu
/* FIELD: VOC.z_request.enable 4:4 established */
#define VOC_Z_REQUEST_ENABLE_SHIFT 4
#define VOC_Z_REQUEST_ENABLE_MASK 0x1u
/* Per-field start, first bank; field f is at index 80 + f. The field-layout code */
/* is the skip count. The count of eight fields is inferred from the bank spacing. */
/* REG: VOC.field_start0 0x250 rw32 count=8 reset=unknown inferred */
/* FIELD: VOC.field_start0.start_line 6:0 established */
#define VOC_FIELD_START0_START_LINE_SHIFT 0
#define VOC_FIELD_START0_START_LINE_MASK 0x7fu
/* FIELD: VOC.field_start0.first_tile 19:7 established */
#define VOC_FIELD_START0_FIRST_TILE_SHIFT 7
#define VOC_FIELD_START0_FIRST_TILE_MASK 0x1fffu
/* FIELD: VOC.field_start0.skip 23:20 established */
#define VOC_FIELD_START0_SKIP_SHIFT 20
#define VOC_FIELD_START0_SKIP_MASK 0xfu
/* Per-field start, second bank; same fields as the first bank. */
/* REG: VOC.field_start1 0x258 rw32 count=8 reset=unknown inferred */
/* FIELD: VOC.field_start1.start_line 6:0 established */
#define VOC_FIELD_START1_START_LINE_SHIFT 0
#define VOC_FIELD_START1_START_LINE_MASK 0x7fu
/* FIELD: VOC.field_start1.first_tile 19:7 established */
#define VOC_FIELD_START1_FIRST_TILE_SHIFT 7
#define VOC_FIELD_START1_FIRST_TILE_MASK 0x1fffu
/* FIELD: VOC.field_start1.skip 23:20 established */
#define VOC_FIELD_START1_SKIP_SHIFT 20
#define VOC_FIELD_START1_SKIP_MASK 0xfu
/* Field request pattern of field f, at index 96 + f. Four request slots: each has */
/* a stereo eye bit (0 left, 1 right) and a 2-bit colour (0 RGB, 1 R, 2 G, 3 B). */
/* The count of eight fields is inferred (the same field index as the start banks). */
/* REG: VOC.field_pattern 0x260 rw32 count=8 reset=unknown inferred */
/* FIELD: VOC.field_pattern.eye0 0:0 established */
#define VOC_FIELD_PATTERN_EYE0_SHIFT 0
#define VOC_FIELD_PATTERN_EYE0_MASK 0x1u
/* FIELD: VOC.field_pattern.colour0 2:1 established */
#define VOC_FIELD_PATTERN_COLOUR0_SHIFT 1
#define VOC_FIELD_PATTERN_COLOUR0_MASK 0x3u
/* FIELD: VOC.field_pattern.eye1 3:3 established */
#define VOC_FIELD_PATTERN_EYE1_SHIFT 3
#define VOC_FIELD_PATTERN_EYE1_MASK 0x1u
/* FIELD: VOC.field_pattern.colour1 5:4 established */
#define VOC_FIELD_PATTERN_COLOUR1_SHIFT 4
#define VOC_FIELD_PATTERN_COLOUR1_MASK 0x3u
/* FIELD: VOC.field_pattern.eye2 6:6 established */
#define VOC_FIELD_PATTERN_EYE2_SHIFT 6
#define VOC_FIELD_PATTERN_EYE2_MASK 0x1u
/* FIELD: VOC.field_pattern.colour2 8:7 established */
#define VOC_FIELD_PATTERN_COLOUR2_SHIFT 7
#define VOC_FIELD_PATTERN_COLOUR2_MASK 0x3u
/* FIELD: VOC.field_pattern.eye3 9:9 established */
#define VOC_FIELD_PATTERN_EYE3_SHIFT 9
#define VOC_FIELD_PATTERN_EYE3_MASK 0x1u
/* FIELD: VOC.field_pattern.colour3 11:10 established */
#define VOC_FIELD_PATTERN_COLOUR3_SHIFT 10
#define VOC_FIELD_PATTERN_COLOUR3_MASK 0x3u
/* FIELD: VOC.field_pattern.active_lines 23:12 established */
#define VOC_FIELD_PATTERN_ACTIVE_LINES_SHIFT 12
#define VOC_FIELD_PATTERN_ACTIVE_LINES_MASK 0xfffu
/* FIELD: VOC.field_pattern.next_cursor_offset 27:24 established */
#define VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_SHIFT 24
#define VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_MASK 0xfu

/* ---- clock PLL ---- */

/* PLL access control. The two clock parameter sets are not two registers: each is */
/* eight words written through the address and data registers, set 0 with */
/* exec-write-internal and set 1 with exec-write-external (inferred from the */
/* firmware's clock routine). */
/* REG: VOC.pll_control 0x270 rw32 reset=unknown established */
/* FIELD: VOC.pll_control.ready 0:0 established */
#define VOC_PLL_CONTROL_READY_SHIFT 0
#define VOC_PLL_CONTROL_READY_MASK 0x1u
/* FIELD: VOC.pll_control.auto_update 1:1 established */
#define VOC_PLL_CONTROL_AUTO_UPDATE_SHIFT 1
#define VOC_PLL_CONTROL_AUTO_UPDATE_MASK 0x1u
/* FIELD: VOC.pll_control.exec_read 2:2 established */
#define VOC_PLL_CONTROL_EXEC_READ_SHIFT 2
#define VOC_PLL_CONTROL_EXEC_READ_MASK 0x1u
/* FIELD: VOC.pll_control.exec_write_internal 3:3 established */
#define VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_SHIFT 3
#define VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_MASK 0x1u
/* FIELD: VOC.pll_control.exec_write_external 4:4 established */
#define VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_SHIFT 4
#define VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_MASK 0x1u
/* PLL parameter address. */
/* REG: VOC.pll_address 0x271 rw32 reset=unknown established */
/* FIELD: VOC.pll_address.address 3:0 established */
#define VOC_PLL_ADDRESS_ADDRESS_SHIFT 0
#define VOC_PLL_ADDRESS_ADDRESS_MASK 0xfu
/* PLL read-back. */
/* REG: VOC.pll_readback 0x272 r32 reset=unknown established */
/* FIELD: VOC.pll_readback.value 10:0 established */
#define VOC_PLL_READBACK_VALUE_SHIFT 0
#define VOC_PLL_READBACK_VALUE_MASK 0x7ffu
/* PLL data. */
/* REG: VOC.pll_data 0x273 rw32 reset=unknown established */
/* FIELD: VOC.pll_data.value 10:0 established */
#define VOC_PLL_DATA_VALUE_SHIFT 0
#define VOC_PLL_DATA_VALUE_MASK 0x7ffu

/* ---- genlock ---- */

/* Genlock horizontal clock. */
/* REG: VOC.genlock_hclock 0x281 rw32 reset=unknown established */
/* FIELD: VOC.genlock_hclock.source 0:0 established */
#define VOC_GENLOCK_HCLOCK_SOURCE_SHIFT 0
#define VOC_GENLOCK_HCLOCK_SOURCE_MASK 0x1u
/* ENUM: VOC.genlock_hclock.source 0 external established */
#define VOC_GENLOCK_HCLOCK_SOURCE_EXTERNAL 0
/* ENUM: VOC.genlock_hclock.source 1 internal established */
#define VOC_GENLOCK_HCLOCK_SOURCE_INTERNAL 1
/* FIELD: VOC.genlock_hclock.auto_clock 1:1 established */
#define VOC_GENLOCK_HCLOCK_AUTO_CLOCK_SHIFT 1
#define VOC_GENLOCK_HCLOCK_AUTO_CLOCK_MASK 0x1u
/* FIELD: VOC.genlock_hclock.h_divider 11:2 established */
#define VOC_GENLOCK_HCLOCK_H_DIVIDER_SHIFT 2
#define VOC_GENLOCK_HCLOCK_H_DIVIDER_MASK 0x3ffu
/* Genlock line ratio. */
/* REG: VOC.genlock_line_ratio 0x282 rw32 reset=unknown established */
/* FIELD: VOC.genlock_line_ratio.edge 0:0 established */
#define VOC_GENLOCK_LINE_RATIO_EDGE_SHIFT 0
#define VOC_GENLOCK_LINE_RATIO_EDGE_MASK 0x1u
/* ENUM: VOC.genlock_line_ratio.edge 0 falling established */
#define VOC_GENLOCK_LINE_RATIO_EDGE_FALLING 0
/* ENUM: VOC.genlock_line_ratio.edge 1 rising established */
#define VOC_GENLOCK_LINE_RATIO_EDGE_RISING 1
/* FIELD: VOC.genlock_line_ratio.line_length 13:1 established */
#define VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_SHIFT 1
#define VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_MASK 0x1fffu
/* FIELD: VOC.genlock_line_ratio.divider 21:14 established */
#define VOC_GENLOCK_LINE_RATIO_DIVIDER_SHIFT 14
#define VOC_GENLOCK_LINE_RATIO_DIVIDER_MASK 0xffu
/* Horizontal mask 2. */
/* REG: VOC.hmask2 0x283 rw32 reset=unknown established */
/* FIELD: VOC.hmask2.start 12:0 established */
#define VOC_HMASK2_START_SHIFT 0
#define VOC_HMASK2_START_MASK 0x1fffu
/* FIELD: VOC.hmask2.width 25:13 established */
#define VOC_HMASK2_WIDTH_SHIFT 13
#define VOC_HMASK2_WIDTH_MASK 0x1fffu
/* Back-porch clamp. The width is 8 bits at 21:14 in layout 1b; the earlier layout's */
/* width is narrower and not recorded. */
/* REG: VOC.backporch_clamp 0x284 rw32 reset=unknown established */
/* FIELD: VOC.backporch_clamp.edge 0:0 established */
#define VOC_BACKPORCH_CLAMP_EDGE_SHIFT 0
#define VOC_BACKPORCH_CLAMP_EDGE_MASK 0x1u
/* FIELD: VOC.backporch_clamp.delay 13:1 established */
#define VOC_BACKPORCH_CLAMP_DELAY_SHIFT 1
#define VOC_BACKPORCH_CLAMP_DELAY_MASK 0x1fffu
/* FIELD: VOC.backporch_clamp.width 21:14 established */
#define VOC_BACKPORCH_CLAMP_WIDTH_SHIFT 14
#define VOC_BACKPORCH_CLAMP_WIDTH_MASK 0xffu

/* ---- FIFO, scaler and encoder path ---- */

/* FIFO control, written on option-board VOCs. The firmware's eye-mask bits are the */
/* two reset enables. */
/* REG: VOC.fifo_control 0x28a rw32 reset=unknown established */
/* FIELD: VOC.fifo_control.high_water 11:0 established */
#define VOC_FIFO_CONTROL_HIGH_WATER_SHIFT 0
#define VOC_FIFO_CONTROL_HIGH_WATER_MASK 0xfffu
/* FIELD: VOC.fifo_control.frame_reset_enable 12:12 established */
#define VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_SHIFT 12
#define VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_MASK 0x1u
/* FIELD: VOC.fifo_control.field_reset_enable 13:13 established */
#define VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_SHIFT 13
#define VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_MASK 0x1u
/* FIELD: VOC.fifo_control.ext_control_enable 14:14 established */
#define VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_SHIFT 14
#define VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_MASK 0x1u
/* FIELD: VOC.fifo_control.int_source_odd 15:15 established */
#define VOC_FIFO_CONTROL_INT_SOURCE_ODD_SHIFT 15
#define VOC_FIFO_CONTROL_INT_SOURCE_ODD_MASK 0x1u
/* FIFO pointers. */
/* REG: VOC.fifo_pointer 0x28b rw32 reset=unknown established */
/* FIELD: VOC.fifo_pointer.write_ptr 10:0 established */
#define VOC_FIFO_POINTER_WRITE_PTR_SHIFT 0
#define VOC_FIFO_POINTER_WRITE_PTR_MASK 0x7ffu
/* FIELD: VOC.fifo_pointer.read_ptr 21:11 established */
#define VOC_FIFO_POINTER_READ_PTR_SHIFT 11
#define VOC_FIFO_POINTER_READ_PTR_MASK 0x7ffu
/* SAC control. */
/* REG: VOC.sac_control 0x28d rw32 reset=unknown established */
/* FIELD: VOC.sac_control.input_enable 0:0 established */
#define VOC_SAC_CONTROL_INPUT_ENABLE_SHIFT 0
#define VOC_SAC_CONTROL_INPUT_ENABLE_MASK 0x1u
/* FIELD: VOC.sac_control.output_enable 1:1 established */
#define VOC_SAC_CONTROL_OUTPUT_ENABLE_SHIFT 1
#define VOC_SAC_CONTROL_OUTPUT_ENABLE_MASK 0x1u
/* Scaler control. The Y filter field adds a pass-through setting; field dominance */
/* is bit 9. */
/* REG: VOC.scaler_control 0x28f rw32 reset=unknown established */
/* FIELD: VOC.scaler_control.x_filter 1:0 established */
#define VOC_SCALER_CONTROL_X_FILTER_SHIFT 0
#define VOC_SCALER_CONTROL_X_FILTER_MASK 0x3u
/* ENUM: VOC.scaler_control.x_filter 0 none established */
#define VOC_SCALER_CONTROL_X_FILTER_NONE 0
/* ENUM: VOC.scaler_control.x_filter 1 minify established */
#define VOC_SCALER_CONTROL_X_FILTER_MINIFY 1
/* ENUM: VOC.scaler_control.x_filter 2 magnify established */
#define VOC_SCALER_CONTROL_X_FILTER_MAGNIFY 2
/* FIELD: VOC.scaler_control.y_filter 3:2 established */
#define VOC_SCALER_CONTROL_Y_FILTER_SHIFT 2
#define VOC_SCALER_CONTROL_Y_FILTER_MASK 0x3u
/* FIELD: VOC.scaler_control.x_magnify_start_pair 4:4 established */
#define VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_SHIFT 4
#define VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_MASK 0x1u
/* FIELD: VOC.scaler_control.seg_preload 6:5 established */
#define VOC_SCALER_CONTROL_SEG_PRELOAD_SHIFT 5
#define VOC_SCALER_CONTROL_SEG_PRELOAD_MASK 0x3u
/* FIELD: VOC.scaler_control.interlace 7:7 established */
#define VOC_SCALER_CONTROL_INTERLACE_SHIFT 7
#define VOC_SCALER_CONTROL_INTERLACE_MASK 0x1u
/* FIELD: VOC.scaler_control.field_out_select 8:8 established */
#define VOC_SCALER_CONTROL_FIELD_OUT_SELECT_SHIFT 8
#define VOC_SCALER_CONTROL_FIELD_OUT_SELECT_MASK 0x1u
/* FIELD: VOC.scaler_control.enc_field_dominance 9:9 established */
#define VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_SHIFT 9
#define VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_MASK 0x1u
/* FIELD: VOC.scaler_control.enc_fb_write_clock_enable 10:10 established */
#define VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_SHIFT 10
#define VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_MASK 0x1u
/* FIELD: VOC.scaler_control.fifo_read_clock 11:11 established */
#define VOC_SCALER_CONTROL_FIFO_READ_CLOCK_SHIFT 11
#define VOC_SCALER_CONTROL_FIFO_READ_CLOCK_MASK 0x1u
/* FIELD: VOC.scaler_control.enc_frame_mode 13:12 established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_SHIFT 12
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_MASK 0x3u
/* ENUM: VOC.scaler_control.enc_frame_mode 0 no_drop established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_NO_DROP 0
/* ENUM: VOC.scaler_control.enc_frame_mode 1 field_drop established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_FIELD_DROP 1
/* ENUM: VOC.scaler_control.enc_frame_mode 2 frame_drop established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_FRAME_DROP 2
/* ENUM: VOC.scaler_control.enc_frame_mode 3 low_latency established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_LOW_LATENCY 3
/* FIELD: VOC.scaler_control.enc_stereo_mode 14:14 established */
#define VOC_SCALER_CONTROL_ENC_STEREO_MODE_SHIFT 14
#define VOC_SCALER_CONTROL_ENC_STEREO_MODE_MASK 0x1u
/* FIELD: VOC.scaler_control.vminify_kick 18:15 established */
#define VOC_SCALER_CONTROL_VMINIFY_KICK_SHIFT 15
#define VOC_SCALER_CONTROL_VMINIFY_KICK_MASK 0xfu
/* FIELD: VOC.scaler_control.first_field_inhibit 20:19 established */
#define VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_SHIFT 19
#define VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_MASK 0x3u
/* X coefficient max (20 bits). Names and widths are read; value semantics are inferred from the names. */
/* REG: VOC.x_coeff_max 0x290 rw32 reset=unknown established */
/* FIELD: VOC.x_coeff_max.value 19:0 established */
#define VOC_X_COEFF_MAX_VALUE_SHIFT 0
#define VOC_X_COEFF_MAX_VALUE_MASK 0xfffffu
/* X filter slope (21 bits). */
/* REG: VOC.x_slope 0x291 rw32 reset=unknown established */
/* FIELD: VOC.x_slope.value 20:0 established */
#define VOC_X_SLOPE_VALUE_SHIFT 0
#define VOC_X_SLOPE_VALUE_MASK 0x1fffffu
/* X delta (24 bits). */
/* REG: VOC.x_delta 0x292 rw32 reset=unknown established */
/* FIELD: VOC.x_delta.value 23:0 established */
#define VOC_X_DELTA_VALUE_SHIFT 0
#define VOC_X_DELTA_VALUE_MASK 0xffffffu
/* X segment starts 0 to 3 (24 bits each). */
/* REG: VOC.x_seg_start 0x293 rw32 count=4 reset=unknown established */
/* FIELD: VOC.x_seg_start.value 23:0 established */
#define VOC_X_SEG_START_VALUE_SHIFT 0
#define VOC_X_SEG_START_VALUE_MASK 0xffffffu
/* Y coefficient max (20 bits). */
/* REG: VOC.y_coeff_max 0x297 rw32 reset=unknown established */
/* FIELD: VOC.y_coeff_max.value 19:0 established */
#define VOC_Y_COEFF_MAX_VALUE_SHIFT 0
#define VOC_Y_COEFF_MAX_VALUE_MASK 0xfffffu
/* Y filter slope (21 bits). */
/* REG: VOC.y_slope 0x298 rw32 reset=unknown established */
/* FIELD: VOC.y_slope.value 20:0 established */
#define VOC_Y_SLOPE_VALUE_SHIFT 0
#define VOC_Y_SLOPE_VALUE_MASK 0x1fffffu
/* Y delta (24 bits). */
/* REG: VOC.y_delta 0x299 rw32 reset=unknown established */
/* FIELD: VOC.y_delta.value 23:0 established */
#define VOC_Y_DELTA_VALUE_SHIFT 0
#define VOC_Y_DELTA_VALUE_MASK 0xffffffu
/* Y segment starts (segments 0 and 1 of fields 0 and 1), 24 bits each. */
/* REG: VOC.y_seg_start 0x29a rw32 count=4 reset=unknown established */
/* FIELD: VOC.y_seg_start.value 23:0 established */
#define VOC_Y_SEG_START_VALUE_SHIFT 0
#define VOC_Y_SEG_START_VALUE_MASK 0xffffffu

/* Constants. Decimal. */
#define VOC_BASE_ADDRESS 512 /* established: bus address of register 0 of channel id 0 */
#define VOC_ID_STRIDE 256 /* established: bus-address step per channel id */
#define VOC_BASE_IDS 8 /* established: channel ids on the base board */
#define VOC_EDGE_SLOTS 8 /* established: edge slots of the selected signal */
#define VOC_EDGE_SLOT_UNUSED 8191 /* established: edge position meaning the slot is unused */
#define VOC_GROUPXEL_PIXELS 4 /* established: pixels in a groupxel */
#define VOC_PAN_GROUPXELS 160 /* established: pan wraps every 160 pixels */

/*
 * EXAMPLE (unverified): 0x000000c3 as VOC.pan => groupxel_offset=3, pixel_offset=3
 */
#endif
