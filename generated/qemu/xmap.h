/* generated from devices/xmap/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 7d1ca751b771a952bc1dac0ba700e24754bc6794c64469e56454755895a6ca9d */
/* XMAP registers and the words written through them */
/* Names are KONA_XMAP_*; name source: imported-unchecked. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_KONA_XMAP_REGS_H
#define HW_SGI_GPU_KONA_XMAP_REGS_H

#include "hw/core/registerfields.h"

REG32(KONA_XMAP_CURSOR_CHANNEL, 0x400) /* established */
FIELD(KONA_XMAP_CURSOR_CHANNEL, CHANNEL, 0, 5) /* established */

REG32(KONA_XMAP_CURSOR_BASE, 0x404) /* established */
FIELD(KONA_XMAP_CURSOR_BASE, BASE, 0, 17) /* established */

REG32(KONA_XMAP_CURSOR_POS, 0x408) /* established */
FIELD(KONA_XMAP_CURSOR_POS, Y, 13, 13) /* established */
FIELD(KONA_XMAP_CURSOR_POS, X, 0, 13) /* established */

REG32(KONA_XMAP_CURSOR_MODE, 0x40c) /* established */
FIELD(KONA_XMAP_CURSOR_MODE, MODE, 0, 9) /* established */

REG32(KONA_XMAP_COPY_STROBE, 0x410) /* established */
FIELD(KONA_XMAP_COPY_STROBE, FORCE_CURSOR_POS, 2, 1) /* inferred */
FIELD(KONA_XMAP_COPY_STROBE, COPY, 0, 1) /* established */

REG32(KONA_XMAP_SUBST_ENABLE, 0x414) /* inferred */
FIELD(KONA_XMAP_SUBST_ENABLE, ENABLE, 0, 1) /* inferred */

REG32(KONA_XMAP_SUBST_LOW, 0x418) /* established */

REG32(KONA_XMAP_SUBST_HIGH, 0x41c) /* established */
FIELD(KONA_XMAP_SUBST_HIGH, MODE, 10, 2) /* established */
FIELD(KONA_XMAP_SUBST_HIGH, COLOUR_HIGH, 0, 10) /* inferred */

REG32(KONA_XMAP_READ_SELECT, 0x420) /* inferred */
FIELD(KONA_XMAP_READ_SELECT, CHIP, 0, 2) /* inferred */

REG32(KONA_XMAP_UNREAD_09, 0x424) /* unknown */

REG32(KONA_XMAP_CRC_STATUS, 0x428) /* unknown */

REG32(KONA_XMAP_BOARD_COUNT, 0x42c) /* established */
FIELD(KONA_XMAP_BOARD_COUNT, CODE, 0, 2) /* established */

REG32(KONA_XMAP_DI_COMPARE_ADDR, 0x430) /* inferred */
FIELD(KONA_XMAP_DI_COMPARE_ADDR, ADDR, 0, 6) /* inferred */

REG32(KONA_XMAP_IMP_DELAY, 0x434) /* inferred */
FIELD(KONA_XMAP_IMP_DELAY, DELAY, 0, 9) /* inferred */

REG32(KONA_XMAP_PIPE_DELAY, 0x438) /* inferred */
FIELD(KONA_XMAP_PIPE_DELAY, DELAY, 0, 3) /* inferred */

REG32(KONA_XMAP_FASTLIST_CONFIG, 0x43c) /* inferred */
FIELD(KONA_XMAP_FASTLIST_CONFIG, FIXED, 5, 5) /* inferred */
FIELD(KONA_XMAP_FASTLIST_CONFIG, CHUNK_SIZE, 0, 5) /* inferred */

REG32(KONA_XMAP_UNREAD_10, 0x440) /* unknown */

REG32(KONA_XMAP_READBACK_ADDR, 0x444) /* inferred */
FIELD(KONA_XMAP_READBACK_ADDR, ADDR, 0, 19) /* inferred */

REG32(KONA_XMAP_READBACK_DATA, 0x448) /* inferred */

REG32(KONA_XMAP_IND_ADDR, 0x460) /* established */
FIELD(KONA_XMAP_IND_ADDR, FLAG, 18, 1) /* unknown */
FIELD(KONA_XMAP_IND_ADDR, PAGE, 14, 4) /* established */
FIELD(KONA_XMAP_IND_ADDR, COLOUR, 12, 2) /* established */
FIELD(KONA_XMAP_IND_ADDR, ENTRY, 0, 12) /* established */

REG32(KONA_XMAP_CMAP_DATA, 0x464) /* established */
FIELD(KONA_XMAP_CMAP_DATA, RED, 20, 10) /* established */
FIELD(KONA_XMAP_CMAP_DATA, GREEN, 10, 10) /* established */
FIELD(KONA_XMAP_CMAP_DATA, BLUE, 0, 10) /* established */

REG32(KONA_XMAP_UNUSED_1A, 0x468) /* unknown */

REG32(KONA_XMAP_GAMMA_DATA, 0x46c) /* established */
FIELD(KONA_XMAP_GAMMA_DATA, ENTRY, 0, 12) /* established */

REG32(KONA_XMAP_DID_DATA, 0x470) /* established */
FIELD(KONA_XMAP_DID_DATA, CMAP_BASE, 7, 17) /* established */
FIELD(KONA_XMAP_DID_DATA, PLANES_MINUS_1, 3, 4) /* established */
FIELD(KONA_XMAP_DID_DATA, LUMINANCE, 2, 1) /* established */
FIELD(KONA_XMAP_DID_DATA, GREY, 1, 1) /* established */

REG32(KONA_XMAP_CHAN_SETUP, 0x474) /* established */
FIELD(KONA_XMAP_CHAN_SETUP, ALPHA_TO_BLUE, 6, 1) /* established */
FIELD(KONA_XMAP_CHAN_SETUP, NO_GAMMA, 5, 1) /* established */
FIELD(KONA_XMAP_CHAN_SETUP, EXT_GAMMA, 4, 1) /* established */
FIELD(KONA_XMAP_CHAN_SETUP, GAMMA_PAGE, 0, 4) /* established */

REG32(KONA_XMAP_TABLE_CLOSE, 0x478) /* inferred */

REG32(KONA_XMAP_FLUSH, 0x47c) /* inferred */

#define KONA_XMAP_CMAP_LOAD_PIECE_WORDS 0x200u /* established */
#define KONA_XMAP_COUNT 0x4u /* established */
#define KONA_XMAP_CURSOR_COLOUR_WORD 0x100u /* established */
#define KONA_XMAP_CURSOR_CROSSHAIR_BLOCK 0x269cu /* established */
#define KONA_XMAP_CURSOR_HOT_SPOT_CROSSHAIR 0x20u /* established */
#define KONA_XMAP_CURSOR_IMAGE_WORDS 0x100u /* established */
#define KONA_XMAP_CURSOR_POS_BIAS 0x20u /* inferred */
#define KONA_XMAP_CURSOR_PRIORITY_NONE 0x20u /* established */
#define KONA_XMAP_CURSOR_SLOTS 0x27u /* established */
#define KONA_XMAP_CURSOR_SLOT_WORDS 0x104u /* established */
#define KONA_XMAP_DID_ENTRIES 0x80u /* established */
#define KONA_XMAP_EXT_GAMMA_ENTRIES 0x400u /* established */
#define KONA_XMAP_EXT_GAMMA_MARKER 0xdeadfeedu /* established */
#define KONA_XMAP_GAMMA_ENTRIES_PER_PAGE 0x1000u /* established */
#define KONA_XMAP_GAMMA_PAGES 0x10u /* established */
#define KONA_XMAP_TRAILING_FLUSH_WRITES 0x3u /* established */

#endif /* HW_SGI_GPU_KONA_XMAP_REGS_H */
