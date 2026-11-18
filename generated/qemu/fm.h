/* generated from devices/fm/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 242f0ec1d27be8f3875a641072b4d620014e652a4d74b13f5f6eba8cdf2f6ecd */
/* frame-manager registers on the display bus */
/* Names are KONA_FM_*; name source: imported-unchecked. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_KONA_FM_REGS_H
#define HW_SGI_GPU_KONA_FM_REGS_H

#include "hw/core/registerfields.h"

REG32(KONA_FM_SWAP_STROBE, 0x200) /* established */
FIELD(KONA_FM_SWAP_STROBE, STROBE, 0, 2) /* established */

REG32(KONA_FM_VOC_DID, 0x204) /* established */
#define KONA_FM_VOC_DID_COUNT 8
#define KONA_FM_VOC_DID_STRIDE 0x4
FIELD(KONA_FM_VOC_DID, DID, 0, 6) /* established */

REG32(KONA_FM_XWINDOW, 0x22c) /* established */
FIELD(KONA_FM_XWINDOW, RESET_RATIO, 22, 1) /* established */
FIELD(KONA_FM_XWINDOW, SYNC_SOURCE, 20, 2) /* established */
FIELD(KONA_FM_XWINDOW, X1_INV, 10, 10) /* established */
FIELD(KONA_FM_XWINDOW, X0_INV, 0, 10) /* established */

REG32(KONA_FM_DID_RANGE, 0x230) /* inferred */
FIELD(KONA_FM_DID_RANGE, ARG_D, 19, 5) /* unknown */
FIELD(KONA_FM_DID_RANGE, ARG_C, 13, 6) /* unknown */
FIELD(KONA_FM_DID_RANGE, SIZE_B, 7, 6) /* inferred */
FIELD(KONA_FM_DID_RANGE, SIZE_A, 0, 7) /* inferred */

REG32(KONA_FM_DID_STATUS, 0x234) /* established */
FIELD(KONA_FM_DID_STATUS, SHIFTING, 3, 1) /* established */

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
