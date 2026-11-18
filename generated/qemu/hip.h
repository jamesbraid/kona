/* generated from devices/hip/registers.toml by defs-gen - do not edit, change the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 2 */
/* input sha256 a0deff38dbd64c58a49a141323a20c301046fe146b6e74ad7530d4b80a7ce107 */
/* host-interface registers */
/* Names are KONA_HIP_*; name source: imported-unchecked. */
/* Offsets are bytes; registers of a register-indexed space are written as index * size. */
#ifndef HW_SGI_GPU_KONA_HIP_REGS_H
#define HW_SGI_GPU_KONA_HIP_REGS_H

#include "hw/core/registerfields.h"

REG32(KONA_HIP_HA_ARM_CTRL, 0x0) /* established */
FIELD(KONA_HIP_HA_ARM_CTRL, VALUE, 0, 2) /* established */

REG32(KONA_HIP_HA_IDMA_PNUM, 0x10) /* established */
FIELD(KONA_HIP_HA_IDMA_PNUM, PAGE, 0, 29) /* established */

REG32(KONA_HIP_HA_IDMA_POFF, 0x14) /* established */
FIELD(KONA_HIP_HA_IDMA_POFF, OFFSET, 2, 10) /* established */

REG32(KONA_HIP_HA_IDMA_CTRL, 0x20) /* established */
FIELD(KONA_HIP_HA_IDMA_CTRL, MODE, 0, 2) /* established */

REG32(KONA_HIP_HA_LDMA_ADDR, 0x30) /* established */
FIELD(KONA_HIP_HA_LDMA_ADDR, ADDR, 3, 23) /* established */

REG32(KONA_HIP_HA_LDMA_CTRL, 0x3c) /* established */
FIELD(KONA_HIP_HA_LDMA_CTRL, VALUE, 0, 1) /* established */

REG32(KONA_HIP_HA_LDMA_SRC, 0x48) /* established */
FIELD(KONA_HIP_HA_LDMA_SRC, VALUE, 0, 1) /* established */

REG32(KONA_HIP_HA_ICU_CTRL, 0x50) /* established */
FIELD(KONA_HIP_HA_ICU_CTRL, VALUE, 0, 2) /* established */

REG32(KONA_HIP_HA_ICU_DIVERT_PC, 0x54) /* established */
FIELD(KONA_HIP_HA_ICU_DIVERT_PC, VECTOR, 2, 26) /* established */

REG32(KONA_HIP_HA_ICU_WC, 0x5c) /* established */

REG32(KONA_HIP_HA_ICU_STATE, 0x68) /* established */
FIELD(KONA_HIP_HA_ICU_STATE, VALUE, 0, 2) /* established */

REG32(KONA_HIP_HA_ICU_ERROR_PC, 0x6c) /* established */
FIELD(KONA_HIP_HA_ICU_ERROR_PC, VECTOR, 2, 26) /* established */

REG32(KONA_HIP_HA_ICU_LOOP_ADDR, 0x70) /* established */
FIELD(KONA_HIP_HA_ICU_LOOP_ADDR, VALUE, 0, 9) /* established */

REG32(KONA_HIP_HA_ICU_ARRCNT, 0x74) /* established */
FIELD(KONA_HIP_HA_ICU_ARRCNT, COUNT, 0, 16) /* established */

REG32(KONA_HIP_HA_HOST_MBOX, 0x90) /* established */

REG32(KONA_HIP_HH_RTC, 0x200) /* established */
FIELD(KONA_HIP_HH_RTC, COUNT, 0, 32) /* inferred */

REG32(KONA_HIP_HH_GFIFO_LEVEL, 0x208) /* established */
FIELD(KONA_HIP_HH_GFIFO_LEVEL, LEVEL, 1, 10) /* established */

REG32(KONA_HIP_HH_GFIFO_HI, 0x210) /* established */
FIELD(KONA_HIP_HH_GFIFO_HI, THRESHOLD, 1, 10) /* established */

REG32(KONA_HIP_HH_GFIFO_LO, 0x218) /* established */
FIELD(KONA_HIP_HH_GFIFO_LO, THRESHOLD, 1, 10) /* established */

REG32(KONA_HIP_HH_INTR_INFO, 0x220) /* established */
FIELD(KONA_HIP_HH_INTR_INFO, GLOBAL_ENABLE, 15, 1) /* established */
FIELD(KONA_HIP_HH_INTR_INFO, VECTOR_CPU, 0, 15) /* inferred */

REG32(KONA_HIP_HH_INTR_ACK, 0x228) /* established */

REG32(KONA_HIP_HH_INTR_ENABLE, 0x230) /* established */
FIELD(KONA_HIP_HH_INTR_ENABLE, MASK, 0, 12) /* established */

REG32(KONA_HIP_HH_INTR_STATUS, 0x238) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, IDMA_OV, 11, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, PIO_OV, 10, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, VOC, 9, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, PARITY, 8, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, UNUSED, 7, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, ODMA, 6, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, GE, 5, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, ARM, 4, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, VIDEO, 3, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, FIFO_OV, 2, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, FIFO_LO, 1, 1) /* established */
FIELD(KONA_HIP_HH_INTR_STATUS, FIFO_HI, 0, 1) /* established */

REG32(KONA_HIP_HH_ARM_MBOX, 0x240) /* established */

REG32(KONA_HIP_HH_SEQID, 0x248) /* established */

REG32(KONA_HIP_HH_ODMA_FLUSH, 0x298) /* established */

REG32(KONA_HIP_HH_RESET, 0x300) /* established */
FIELD(KONA_HIP_HH_RESET, ARM_START, 1, 1) /* inferred */
FIELD(KONA_HIP_HH_RESET, HIP_RESET, 0, 1) /* established */

REG32(KONA_HIP_HH_ARM_CTRL, 0x308) /* established */
FIELD(KONA_HIP_HH_ARM_CTRL, HOST_ACCESS, 0, 1) /* established */

REG32(KONA_HIP_HH_ARM_STATUS, 0x310) /* established */
FIELD(KONA_HIP_HH_ARM_STATUS, MODE, 11, 5) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, NOPC, 10, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, ABORT, 9, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, NBW, 8, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, NRW, 7, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, SEQ, 6, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, MREQ, 5, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, GE_CNT, 2, 3) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, REMAP, 1, 1) /* inferred */
FIELD(KONA_HIP_HH_ARM_STATUS, STALL, 0, 1) /* inferred */

REG32(KONA_HIP_HH_ARM_STALL, 0x320) /* established */

REG32(KONA_HIP_HH_ARM_UNSTALL, 0x328) /* established */

REG32(KONA_HIP_HH_TBUS_STATUS, 0x3a8) /* established */
FIELD(KONA_HIP_HH_TBUS_STATUS, STALL, 3, 1) /* inferred */
FIELD(KONA_HIP_HH_TBUS_STATUS, ACTIVE, 2, 1) /* inferred */
FIELD(KONA_HIP_HH_TBUS_STATUS, LOAD, 1, 1) /* inferred */
FIELD(KONA_HIP_HH_TBUS_STATUS, DRAW, 0, 1) /* inferred */

REG32(KONA_HIP_HH_TFIFO_HI, 0x3b0) /* established */
FIELD(KONA_HIP_HH_TFIFO_HI, THRESHOLD, 0, 4) /* established */

REG32(KONA_HIP_HH_VC_ADDRESS, 0x3c0) /* established */
FIELD(KONA_HIP_HH_VC_ADDRESS, VALUE, 0, 16) /* established */

REG32(KONA_HIP_HH_VC_READY, 0x3c8) /* inferred */
FIELD(KONA_HIP_HH_VC_READY, READY, 0, 1) /* inferred */

REG32(KONA_HIP_HH_VC_DATA, 0x3d0) /* established */

REG32(KONA_HIP_HH_VC_DATA_INCR, 0x3d8) /* inferred */

REG32(KONA_HIP_HH_ARM_ADDRESS, 0x3e8) /* established */
FIELD(KONA_HIP_HH_ARM_ADDRESS, WORD_ADDRESS, 2, 26) /* established */

REG32(KONA_HIP_HH_ARM_DATA, 0x3f0) /* established */

REG32(KONA_HIP_HH_ARM_DATA_INCR, 0x3f8) /* inferred */

REG32(KONA_HIP_CMD_DESCRIPTOR, 0x400) /* established */

REG32(KONA_HIP_CMD_OPERAND, 0x840) /* established */

REG32(KONA_HIP_CMD_DATA, 0x8c0) /* established */

REG32(KONA_HIP_RBUS_ODMA2_DATA, 0x11d8) /* established */

REG32(KONA_HIP_RBUS_ODMA2_FLUSH, 0x11dc) /* inferred */

REG32(KONA_HIP_XG_CONFIG, 0x64) /* established */
FIELD(KONA_HIP_XG_CONFIG, MAPRAM_TYPE, 6, 2) /* established */
FIELD(KONA_HIP_XG_CONFIG, MAPRAM_SIZE, 3, 3) /* established */
FIELD(KONA_HIP_XG_CONFIG, SUBSYSTEM, 0, 3) /* established */

REG32(KONA_HIP_XG_ERR_STATUS, 0x6c) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, IDMA_RESPONSE_BAD_TNUM, 28, 1) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, IDMA_RESPONSE_SIZE, 27, 1) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, ODMA_FIFO_OVERFLOW, 26, 1) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, MAPRAM_INVALID, 13, 1) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, MAPRAM_PARITY, 12, 1) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, RESPONSE, 9, 1) /* established */
FIELD(KONA_HIP_XG_ERR_STATUS, READ_REQ_TIMEOUT, 8, 1) /* established */

#endif /* HW_SGI_GPU_KONA_HIP_REGS_H */
