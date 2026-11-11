/*
 * KONA_FM_DECODE.h - frame-manager registers on the display bus
 *
 * The frame-manager chip decodes the 16-bit display-bus address into the chip
 * selects for the XMAP, the video-output chips, the DACs and the encoder, and
 * has a few registers of its own below the first of those blocks. The offsets
 * on the REG lines are display-bus addresses. Addresses 0x00 to 0x7f hold a
 * per-display-id mode byte and are not registers.
 *
 * Derivation: the layouts are those of docs/command-table.md (section 6.2),
 * read from the shipped display firmware and the shipped diagnostic's
 * register tests. A grade says how the layout was derived, not that silicon
 * was measured. Widths of the coordinate fields are those of the diagnostic's
 * packing code. Access (read or write) is given where a read-back or a write
 * was seen; a register seen written only is declared write-only here, which
 * says what software does, not that a read is refused.
 */
#ifndef KONA_FM_DECODE_H
#define KONA_FM_DECODE_H

#include <stdint.h>

/* Swap strobe, two bits wide. The kernel and the firmware write 2 after a */
/* swap; the firmware treats bit 0 as the trigger for the XMAP clock write. */
/* Which bit means what beyond that is not derived. */
/* REG: FM.swap_strobe 0x080 w32 reset=unknown established */
/* FIELD: FM.swap_strobe.strobe 1:0 established */
#define FM_SWAP_STROBE_STROBE_SHIFT 0
#define FM_SWAP_STROBE_STROBE_MASK 0x3u

/* Display id of video-output chip n, 6 bits each, n = 0 to 7 at these eight */
/* consecutive addresses. Two more addresses after them (n = 8, 9) are the */
/* option-board slots: inferred from the firmware ten-slot swap loop, so not */
/* declared here. */
/* REG: FM.voc_did 0x081 w32 count=8 reset=unknown established */
/* FIELD: FM.voc_did.did 5:0 established */
#define FM_VOC_DID_DID_SHIFT 0
#define FM_VOC_DID_DID_MASK 0x3fu

/* Frame-manager control, 23 bits. Bits 21:20 pick the input sync source, bit */
/* 22 is the reset ratio, and bits 9:0 and 19:10 hold two 10-bit coordinates */
/* stored as 1023 minus the value (the read-back window x0 and x1), written */
/* together with the master clock select register. */
/* REG: FM.xwindow 0x08b w32 reset=unknown established */
/* FIELD: FM.xwindow.x0_inv 9:0 established */
#define FM_XWINDOW_X0_INV_SHIFT 0
#define FM_XWINDOW_X0_INV_MASK 0x3ffu
/* FIELD: FM.xwindow.x1_inv 19:10 established */
#define FM_XWINDOW_X1_INV_SHIFT 10
#define FM_XWINDOW_X1_INV_MASK 0x3ffu
/* FIELD: FM.xwindow.sync_source 21:20 established */
#define FM_XWINDOW_SYNC_SOURCE_SHIFT 20
#define FM_XWINDOW_SYNC_SOURCE_MASK 0x3u
/* FIELD: FM.xwindow.reset_ratio 22:22 established */
#define FM_XWINDOW_RESET_RATIO_SHIFT 22
#define FM_XWINDOW_RESET_RATIO_MASK 0x1u

/* Image-processor display-id range word, written by one packed writer in the */
/* diagnostic: four arguments in bits 6:0, 12:7, 18:13 and 23:19. The packed */
/* layout is established from the instructions. Reading the first two as the */
/* sizes of the normal and the overlay/underlay display-id tables (64 and 32) */
/* is inferred from the two argument values alone; the other two fields and the */
/* framing writes of 1 and 0 around table fills are unknown. Nothing reads it */
/* back. */
/* REG: FM.did_range 0x08c w32 reset=unknown inferred */
/* FIELD: FM.did_range.size_a 6:0 inferred */
#define FM_DID_RANGE_SIZE_A_SHIFT 0
#define FM_DID_RANGE_SIZE_A_MASK 0x7fu
/* FIELD: FM.did_range.size_b 12:7 inferred */
#define FM_DID_RANGE_SIZE_B_SHIFT 7
#define FM_DID_RANGE_SIZE_B_MASK 0x3fu
/* FIELD: FM.did_range.arg_c 18:13 unknown */
#define FM_DID_RANGE_ARG_C_SHIFT 13
#define FM_DID_RANGE_ARG_C_MASK 0x3fu
/* FIELD: FM.did_range.arg_d 23:19 unknown */
#define FM_DID_RANGE_ARG_D_SHIFT 19
#define FM_DID_RANGE_ARG_D_MASK 0x1fu

/* Read by the diagnostic display-id shift check, which tests bit 3 and treats */
/* it as set while the display-id table is still loading. The status bit is */
/* established by name and use; the other bits are unknown. The table tests */
/* also write the register. */
/* REG: FM.did_status 0x08d r32 reset=unknown established */
/* FIELD: FM.did_status.shifting 3:3 established */
#define FM_DID_STATUS_SHIFTING_SHIFT 3
#define FM_DID_STATUS_SHIFTING_MASK 0x1u

/* Master clock select. Bit 23 selects the clock; bits 9:0 and 19:10 hold two */
/* 10-bit coordinates stored as 1023 minus the value (y0 and y1, the other half */
/* of the window written with the control register above); bits 22:20 are a */
/* 3-bit field the diagnostic passes whose meaning is not recoverable. */
/* REG: FM.clock_select 0x08e w32 reset=unknown established */
/* FIELD: FM.clock_select.y0_inv 9:0 established */
#define FM_CLOCK_SELECT_Y0_INV_SHIFT 0
#define FM_CLOCK_SELECT_Y0_INV_MASK 0x3ffu
/* FIELD: FM.clock_select.y1_inv 19:10 established */
#define FM_CLOCK_SELECT_Y1_INV_SHIFT 10
#define FM_CLOCK_SELECT_Y1_INV_MASK 0x3ffu
/* FIELD: FM.clock_select.arg_22_20 22:20 unknown */
#define FM_CLOCK_SELECT_ARG_22_20_SHIFT 20
#define FM_CLOCK_SELECT_ARG_22_20_MASK 0x7u
/* FIELD: FM.clock_select.internal 23:23 established */
#define FM_CLOCK_SELECT_INTERNAL_SHIFT 23
#define FM_CLOCK_SELECT_INTERNAL_MASK 0x1u

/* Interrupt state: the firmware answer to a get-interrupt-state request writes */
/* 0 here to acknowledge. The diagnostic never touches it. */
/* REG: FM.intr_state 0x08f w32 reset=unknown inferred */

/* Raster-board configuration. A write sets bits 7:5 to 0 for four boards, 1 */
/* for two and 3 for one (the diagnostic writes 0x00, 0x20 and 0x60 together */
/* with XMAP register 0xb = 2, 1, 0). A read returns the board-stuffing code in */
/* bits 10:8 (firmware). The pin-to-bit binding of the chip groups is inferred. */
/* REG: FM.raster_config 0x090 rw32 reset=unknown established */
/* FIELD: FM.raster_config.boards 7:5 established */
#define FM_RASTER_CONFIG_BOARDS_SHIFT 5
#define FM_RASTER_CONFIG_BOARDS_MASK 0x7u
/* FIELD: FM.raster_config.stuffing 10:8 established */
#define FM_RASTER_CONFIG_STUFFING_SHIFT 8
#define FM_RASTER_CONFIG_STUFFING_MASK 0x7u

#endif
