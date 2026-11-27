/* generated from devices/fm/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 4 */
/* input sha256 523ceaa5f3ddaab09ea0cfad0cf267ceb1b592ee7342fb0b09e48b67883e033b */
/* frame-manager registers on the display bus */
/* Names are KONA_FM_*; name source: ours. */
/* Offsets are bytes; registers of a register-indexed space are written as index
 * * size. */
#ifndef HW_SGI_GPU_KONA_FM_REGS_H
#define HW_SGI_GPU_KONA_FM_REGS_H

#include "hw/core/registerfields.h"

REG32(KONA_FM_SWAP_STROBE, 0x200) /* established */
FIELD(KONA_FM_SWAP_STROBE, STROBE, 0, 2) /* established */

REG32(KONA_FM_VIDEO_OUTPUT_DISPLAY_ID, 0x204) /* established */
#define KONA_FM_VIDEO_OUTPUT_DISPLAY_ID_COUNT 8
#define KONA_FM_VIDEO_OUTPUT_DISPLAY_ID_STRIDE 0x4
FIELD(KONA_FM_VIDEO_OUTPUT_DISPLAY_ID, DID, 0, 6) /* established */

REG32(KONA_FM_FRAME_WINDOW_CONTROL, 0x22c) /* established */
FIELD(KONA_FM_FRAME_WINDOW_CONTROL, RESET_RATIO, 22, 1) /* established */
FIELD(KONA_FM_FRAME_WINDOW_CONTROL, SYNC_SOURCE, 20, 2) /* established */
FIELD(KONA_FM_FRAME_WINDOW_CONTROL, X1_INV, 10, 10) /* established */
FIELD(KONA_FM_FRAME_WINDOW_CONTROL, X0_INV, 0, 10) /* established */

REG32(KONA_FM_DISPLAY_ID_RANGE, 0x230) /* inferred */
FIELD(KONA_FM_DISPLAY_ID_RANGE, ARG_D, 19, 5) /* unknown */
FIELD(KONA_FM_DISPLAY_ID_RANGE, ARG_C, 13, 6) /* unknown */
FIELD(KONA_FM_DISPLAY_ID_RANGE, SIZE_B, 7, 6) /* inferred */
FIELD(KONA_FM_DISPLAY_ID_RANGE, SIZE_A, 0, 7) /* inferred */

REG32(KONA_FM_DISPLAY_ID_STATUS, 0x234) /* established */
FIELD(KONA_FM_DISPLAY_ID_STATUS, SHIFTING, 3, 1) /* established */

REG32(KONA_FM_CLOCK_SELECT, 0x238) /* established */
FIELD(KONA_FM_CLOCK_SELECT, INTERNAL, 23, 1) /* established */
FIELD(KONA_FM_CLOCK_SELECT, ARG_22_20, 20, 3) /* unknown */
FIELD(KONA_FM_CLOCK_SELECT, Y1_INV, 10, 10) /* established */
FIELD(KONA_FM_CLOCK_SELECT, Y0_INV, 0, 10) /* established */

REG32(KONA_FM_INTR_STATE, 0x23c) /* inferred */

REG32(KONA_FM_RASTER_CONFIG, 0x240) /* established */
FIELD(KONA_FM_RASTER_CONFIG, STUFFING, 8, 3) /* established */
FIELD(KONA_FM_RASTER_CONFIG, BOARDS, 5, 3) /* established */

#endif /* HW_SGI_GPU_KONA_FM_REGS_H */
