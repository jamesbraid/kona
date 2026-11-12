/* generated from defs/hip.toml by defs-gen - do not edit, change the source */
/* host-interface registers */
#ifndef HIP_GEN_H
#define HIP_GEN_H

#include <stdint.h>


/* ha_arm_ctrl: rw32, space arm, reset unknown */
#define HIP_HA_ARM_CTRL_OFFSET                       0x0u /* established */
#define HIP_HA_ARM_CTRL_VALUE_SHIFT                  0 /* established */
#define HIP_HA_ARM_CTRL_VALUE_MASK                   0x3u
#define HIP_HA_ARM_CTRL_VALUE_INPLACE                (HIP_HA_ARM_CTRL_VALUE_MASK << HIP_HA_ARM_CTRL_VALUE_SHIFT)

/* ha_idma_pnum: rw32, space arm, reset unknown */
#define HIP_HA_IDMA_PNUM_OFFSET                      0x10u /* established */
#define HIP_HA_IDMA_PNUM_PAGE_SHIFT                  0 /* established */
#define HIP_HA_IDMA_PNUM_PAGE_MASK                   0x1fffffffu
#define HIP_HA_IDMA_PNUM_PAGE_INPLACE                (HIP_HA_IDMA_PNUM_PAGE_MASK << HIP_HA_IDMA_PNUM_PAGE_SHIFT)

/* ha_idma_poff: rw32, space arm, reset unknown */
#define HIP_HA_IDMA_POFF_OFFSET                      0x14u /* established */
#define HIP_HA_IDMA_POFF_OFFSET_SHIFT                2 /* established */
#define HIP_HA_IDMA_POFF_OFFSET_MASK                 0x3ffu
#define HIP_HA_IDMA_POFF_OFFSET_INPLACE              (HIP_HA_IDMA_POFF_OFFSET_MASK << HIP_HA_IDMA_POFF_OFFSET_SHIFT)

/* ha_idma_ctrl: rw32, space arm, reset unknown */
#define HIP_HA_IDMA_CTRL_OFFSET                      0x20u /* established */
#define HIP_HA_IDMA_CTRL_MODE_SHIFT                  0 /* established */
#define HIP_HA_IDMA_CTRL_MODE_MASK                   0x3u
#define HIP_HA_IDMA_CTRL_MODE_INPLACE                (HIP_HA_IDMA_CTRL_MODE_MASK << HIP_HA_IDMA_CTRL_MODE_SHIFT)

/* ha_ldma_addr: rw32, space arm, reset unknown */
#define HIP_HA_LDMA_ADDR_OFFSET                      0x30u /* established */
#define HIP_HA_LDMA_ADDR_ADDR_SHIFT                  3 /* established */
#define HIP_HA_LDMA_ADDR_ADDR_MASK                   0x7fffffu
#define HIP_HA_LDMA_ADDR_ADDR_INPLACE                (HIP_HA_LDMA_ADDR_ADDR_MASK << HIP_HA_LDMA_ADDR_ADDR_SHIFT)

/* ha_ldma_ctrl: rw32, space arm, reset unknown */
#define HIP_HA_LDMA_CTRL_OFFSET                      0x3cu /* established */
#define HIP_HA_LDMA_CTRL_VALUE_SHIFT                 0 /* established */
#define HIP_HA_LDMA_CTRL_VALUE_MASK                  0x1u
#define HIP_HA_LDMA_CTRL_VALUE_INPLACE               (HIP_HA_LDMA_CTRL_VALUE_MASK << HIP_HA_LDMA_CTRL_VALUE_SHIFT)

/* ha_ldma_src: rw32, space arm, reset unknown */
#define HIP_HA_LDMA_SRC_OFFSET                       0x48u /* established */
#define HIP_HA_LDMA_SRC_VALUE_SHIFT                  0 /* established */
#define HIP_HA_LDMA_SRC_VALUE_MASK                   0x1u
#define HIP_HA_LDMA_SRC_VALUE_INPLACE                (HIP_HA_LDMA_SRC_VALUE_MASK << HIP_HA_LDMA_SRC_VALUE_SHIFT)

/* ha_icu_ctrl: rw32, space arm, reset unknown */
#define HIP_HA_ICU_CTRL_OFFSET                       0x50u /* established */
#define HIP_HA_ICU_CTRL_VALUE_SHIFT                  0 /* established */
#define HIP_HA_ICU_CTRL_VALUE_MASK                   0x3u
#define HIP_HA_ICU_CTRL_VALUE_INPLACE                (HIP_HA_ICU_CTRL_VALUE_MASK << HIP_HA_ICU_CTRL_VALUE_SHIFT)

/* ha_icu_divert_pc: rw32, space arm, reset unknown */
#define HIP_HA_ICU_DIVERT_PC_OFFSET                  0x54u /* established */
#define HIP_HA_ICU_DIVERT_PC_VECTOR_SHIFT            2 /* established */
#define HIP_HA_ICU_DIVERT_PC_VECTOR_MASK             0x3ffffffu
#define HIP_HA_ICU_DIVERT_PC_VECTOR_INPLACE          (HIP_HA_ICU_DIVERT_PC_VECTOR_MASK << HIP_HA_ICU_DIVERT_PC_VECTOR_SHIFT)

/* ha_icu_wc: rw32, space arm, reset unknown */
#define HIP_HA_ICU_WC_OFFSET                         0x5cu /* established */

/* ha_icu_state: rw32, space arm, reset unknown */
#define HIP_HA_ICU_STATE_OFFSET                      0x68u /* established */
#define HIP_HA_ICU_STATE_VALUE_SHIFT                 0 /* established */
#define HIP_HA_ICU_STATE_VALUE_MASK                  0x3u
#define HIP_HA_ICU_STATE_VALUE_INPLACE               (HIP_HA_ICU_STATE_VALUE_MASK << HIP_HA_ICU_STATE_VALUE_SHIFT)

/* ha_icu_error_pc: rw32, space arm, reset unknown */
#define HIP_HA_ICU_ERROR_PC_OFFSET                   0x6cu /* established */
#define HIP_HA_ICU_ERROR_PC_VECTOR_SHIFT             2 /* established */
#define HIP_HA_ICU_ERROR_PC_VECTOR_MASK              0x3ffffffu
#define HIP_HA_ICU_ERROR_PC_VECTOR_INPLACE           (HIP_HA_ICU_ERROR_PC_VECTOR_MASK << HIP_HA_ICU_ERROR_PC_VECTOR_SHIFT)

/* ha_icu_loop_addr: rw32, space arm, reset unknown */
#define HIP_HA_ICU_LOOP_ADDR_OFFSET                  0x70u /* established */
#define HIP_HA_ICU_LOOP_ADDR_VALUE_SHIFT             0 /* established */
#define HIP_HA_ICU_LOOP_ADDR_VALUE_MASK              0x1ffu
#define HIP_HA_ICU_LOOP_ADDR_VALUE_INPLACE           (HIP_HA_ICU_LOOP_ADDR_VALUE_MASK << HIP_HA_ICU_LOOP_ADDR_VALUE_SHIFT)

/* ha_icu_arrcnt: rw32, space arm, reset unknown */
#define HIP_HA_ICU_ARRCNT_OFFSET                     0x74u /* established */
#define HIP_HA_ICU_ARRCNT_COUNT_SHIFT                0 /* established */
#define HIP_HA_ICU_ARRCNT_COUNT_MASK                 0xffffu
#define HIP_HA_ICU_ARRCNT_COUNT_INPLACE              (HIP_HA_ICU_ARRCNT_COUNT_MASK << HIP_HA_ICU_ARRCNT_COUNT_SHIFT)

/* ha_host_mbox: rw32, space arm, reset unknown */
#define HIP_HA_HOST_MBOX_OFFSET                      0x90u /* established */

/* hh_switch: rw32, space hip_regs, reset unknown */
#define HIP_HH_SWITCH_OFFSET                         0x100u /* established */
#define HIP_HH_SWITCH_SWITCH_SHIFT                   0 /* inferred */
#define HIP_HH_SWITCH_SWITCH_MASK                    0x1ffu
#define HIP_HH_SWITCH_SWITCH_INPLACE                 (HIP_HH_SWITCH_SWITCH_MASK << HIP_HH_SWITCH_SWITCH_SHIFT)

/* hh_rtc: r32, space hip_regs, reset unknown */
#define HIP_HH_RTC_OFFSET                            0x200u /* established */
#define HIP_HH_RTC_COUNT_SHIFT                       0 /* inferred */
#define HIP_HH_RTC_COUNT_MASK                        0xffffffffu
#define HIP_HH_RTC_COUNT_INPLACE                     (HIP_HH_RTC_COUNT_MASK << HIP_HH_RTC_COUNT_SHIFT)

/* hh_gfifo_level: r32, space hip_regs, reset unknown */
#define HIP_HH_GFIFO_LEVEL_OFFSET                    0x208u /* established */
#define HIP_HH_GFIFO_LEVEL_LEVEL_SHIFT               1 /* established */
#define HIP_HH_GFIFO_LEVEL_LEVEL_MASK                0x3ffu
#define HIP_HH_GFIFO_LEVEL_LEVEL_INPLACE             (HIP_HH_GFIFO_LEVEL_LEVEL_MASK << HIP_HH_GFIFO_LEVEL_LEVEL_SHIFT)

/* hh_gfifo_hi: rw32, space hip_regs, reset unknown */
#define HIP_HH_GFIFO_HI_OFFSET                       0x210u /* established */
#define HIP_HH_GFIFO_HI_THRESHOLD_SHIFT              1 /* established */
#define HIP_HH_GFIFO_HI_THRESHOLD_MASK               0x3ffu
#define HIP_HH_GFIFO_HI_THRESHOLD_INPLACE            (HIP_HH_GFIFO_HI_THRESHOLD_MASK << HIP_HH_GFIFO_HI_THRESHOLD_SHIFT)

/* hh_gfifo_lo: rw32, space hip_regs, reset unknown */
#define HIP_HH_GFIFO_LO_OFFSET                       0x218u /* established */
#define HIP_HH_GFIFO_LO_THRESHOLD_SHIFT              1 /* established */
#define HIP_HH_GFIFO_LO_THRESHOLD_MASK               0x3ffu
#define HIP_HH_GFIFO_LO_THRESHOLD_INPLACE            (HIP_HH_GFIFO_LO_THRESHOLD_MASK << HIP_HH_GFIFO_LO_THRESHOLD_SHIFT)

/* hh_intr_info: rw32, space hip_regs, reset unknown */
#define HIP_HH_INTR_INFO_OFFSET                      0x220u /* established */
#define HIP_HH_INTR_INFO_GLOBAL_ENABLE_SHIFT         15 /* established */
#define HIP_HH_INTR_INFO_GLOBAL_ENABLE_MASK          0x1u
#define HIP_HH_INTR_INFO_GLOBAL_ENABLE_INPLACE       (HIP_HH_INTR_INFO_GLOBAL_ENABLE_MASK << HIP_HH_INTR_INFO_GLOBAL_ENABLE_SHIFT)
#define HIP_HH_INTR_INFO_VECTOR_CPU_SHIFT            0 /* inferred */
#define HIP_HH_INTR_INFO_VECTOR_CPU_MASK             0x7fffu
#define HIP_HH_INTR_INFO_VECTOR_CPU_INPLACE          (HIP_HH_INTR_INFO_VECTOR_CPU_MASK << HIP_HH_INTR_INFO_VECTOR_CPU_SHIFT)

/* hh_intr_ack: w32, space hip_regs, reset unknown */
#define HIP_HH_INTR_ACK_OFFSET                       0x228u /* established */

/* hh_intr_enable: rw32, space hip_regs, reset unknown */
#define HIP_HH_INTR_ENABLE_OFFSET                    0x230u /* established */
#define HIP_HH_INTR_ENABLE_MASK_SHIFT                0 /* established */
#define HIP_HH_INTR_ENABLE_MASK_MASK                 0xfffu
#define HIP_HH_INTR_ENABLE_MASK_INPLACE              (HIP_HH_INTR_ENABLE_MASK_MASK << HIP_HH_INTR_ENABLE_MASK_SHIFT)

/* hh_intr_status: rw32, space hip_regs, reset unknown */
#define HIP_HH_INTR_STATUS_OFFSET                    0x238u /* established */
#define HIP_HH_INTR_STATUS_IDMA_OV_SHIFT             11 /* established */
#define HIP_HH_INTR_STATUS_IDMA_OV_MASK              0x1u
#define HIP_HH_INTR_STATUS_IDMA_OV_INPLACE           (HIP_HH_INTR_STATUS_IDMA_OV_MASK << HIP_HH_INTR_STATUS_IDMA_OV_SHIFT)
#define HIP_HH_INTR_STATUS_PIO_OV_SHIFT              10 /* established */
#define HIP_HH_INTR_STATUS_PIO_OV_MASK               0x1u
#define HIP_HH_INTR_STATUS_PIO_OV_INPLACE            (HIP_HH_INTR_STATUS_PIO_OV_MASK << HIP_HH_INTR_STATUS_PIO_OV_SHIFT)
#define HIP_HH_INTR_STATUS_VOC_SHIFT                 9 /* established */
#define HIP_HH_INTR_STATUS_VOC_MASK                  0x1u
#define HIP_HH_INTR_STATUS_VOC_INPLACE               (HIP_HH_INTR_STATUS_VOC_MASK << HIP_HH_INTR_STATUS_VOC_SHIFT)
#define HIP_HH_INTR_STATUS_PARITY_SHIFT              8 /* established */
#define HIP_HH_INTR_STATUS_PARITY_MASK               0x1u
#define HIP_HH_INTR_STATUS_PARITY_INPLACE            (HIP_HH_INTR_STATUS_PARITY_MASK << HIP_HH_INTR_STATUS_PARITY_SHIFT)
#define HIP_HH_INTR_STATUS_UNUSED_SHIFT              7 /* established */
#define HIP_HH_INTR_STATUS_UNUSED_MASK               0x1u
#define HIP_HH_INTR_STATUS_UNUSED_INPLACE            (HIP_HH_INTR_STATUS_UNUSED_MASK << HIP_HH_INTR_STATUS_UNUSED_SHIFT)
#define HIP_HH_INTR_STATUS_ODMA_SHIFT                6 /* established */
#define HIP_HH_INTR_STATUS_ODMA_MASK                 0x1u
#define HIP_HH_INTR_STATUS_ODMA_INPLACE              (HIP_HH_INTR_STATUS_ODMA_MASK << HIP_HH_INTR_STATUS_ODMA_SHIFT)
#define HIP_HH_INTR_STATUS_GE_SHIFT                  5 /* established */
#define HIP_HH_INTR_STATUS_GE_MASK                   0x1u
#define HIP_HH_INTR_STATUS_GE_INPLACE                (HIP_HH_INTR_STATUS_GE_MASK << HIP_HH_INTR_STATUS_GE_SHIFT)
#define HIP_HH_INTR_STATUS_ARM_SHIFT                 4 /* established */
#define HIP_HH_INTR_STATUS_ARM_MASK                  0x1u
#define HIP_HH_INTR_STATUS_ARM_INPLACE               (HIP_HH_INTR_STATUS_ARM_MASK << HIP_HH_INTR_STATUS_ARM_SHIFT)
#define HIP_HH_INTR_STATUS_VIDEO_SHIFT               3 /* established */
#define HIP_HH_INTR_STATUS_VIDEO_MASK                0x1u
#define HIP_HH_INTR_STATUS_VIDEO_INPLACE             (HIP_HH_INTR_STATUS_VIDEO_MASK << HIP_HH_INTR_STATUS_VIDEO_SHIFT)
#define HIP_HH_INTR_STATUS_FIFO_OV_SHIFT             2 /* established */
#define HIP_HH_INTR_STATUS_FIFO_OV_MASK              0x1u
#define HIP_HH_INTR_STATUS_FIFO_OV_INPLACE           (HIP_HH_INTR_STATUS_FIFO_OV_MASK << HIP_HH_INTR_STATUS_FIFO_OV_SHIFT)
#define HIP_HH_INTR_STATUS_FIFO_LO_SHIFT             1 /* established */
#define HIP_HH_INTR_STATUS_FIFO_LO_MASK              0x1u
#define HIP_HH_INTR_STATUS_FIFO_LO_INPLACE           (HIP_HH_INTR_STATUS_FIFO_LO_MASK << HIP_HH_INTR_STATUS_FIFO_LO_SHIFT)
#define HIP_HH_INTR_STATUS_FIFO_HI_SHIFT             0 /* established */
#define HIP_HH_INTR_STATUS_FIFO_HI_MASK              0x1u
#define HIP_HH_INTR_STATUS_FIFO_HI_INPLACE           (HIP_HH_INTR_STATUS_FIFO_HI_MASK << HIP_HH_INTR_STATUS_FIFO_HI_SHIFT)

/* hh_arm_mbox: r32, space hip_regs, reset unknown */
#define HIP_HH_ARM_MBOX_OFFSET                       0x240u /* established */

/* hh_seqid: r32, space hip_regs, reset unknown */
#define HIP_HH_SEQID_OFFSET                          0x248u /* established */

/* hh_odma_flush: w32, space hip_regs, reset unknown */
#define HIP_HH_ODMA_FLUSH_OFFSET                     0x298u /* established */

/* hh_pio_hi: rw32, space hip_regs, reset unknown */
#define HIP_HH_PIO_HI_OFFSET                         0x2c8u /* established */
#define HIP_HH_PIO_HI_THRESHOLD_SHIFT                0 /* established */
#define HIP_HH_PIO_HI_THRESHOLD_MASK                 0x1fu
#define HIP_HH_PIO_HI_THRESHOLD_INPLACE              (HIP_HH_PIO_HI_THRESHOLD_MASK << HIP_HH_PIO_HI_THRESHOLD_SHIFT)

/* hh_reset: rw32, space hip_regs, reset unknown */
#define HIP_HH_RESET_OFFSET                          0x300u /* established */
#define HIP_HH_RESET_ARM_START_SHIFT                 1 /* inferred */
#define HIP_HH_RESET_ARM_START_MASK                  0x1u
#define HIP_HH_RESET_ARM_START_INPLACE               (HIP_HH_RESET_ARM_START_MASK << HIP_HH_RESET_ARM_START_SHIFT)
#define HIP_HH_RESET_HIP_RESET_SHIFT                 0 /* established */
#define HIP_HH_RESET_HIP_RESET_MASK                  0x1u
#define HIP_HH_RESET_HIP_RESET_INPLACE               (HIP_HH_RESET_HIP_RESET_MASK << HIP_HH_RESET_HIP_RESET_SHIFT)

/* hh_arm_ctrl: rw32, space hip_regs, reset unknown */
#define HIP_HH_ARM_CTRL_OFFSET                       0x308u /* established */
#define HIP_HH_ARM_CTRL_HOST_ACCESS_SHIFT            0 /* established */
#define HIP_HH_ARM_CTRL_HOST_ACCESS_MASK             0x1u
#define HIP_HH_ARM_CTRL_HOST_ACCESS_INPLACE          (HIP_HH_ARM_CTRL_HOST_ACCESS_MASK << HIP_HH_ARM_CTRL_HOST_ACCESS_SHIFT)

/* hh_arm_status: r32, space hip_regs, reset unknown */
#define HIP_HH_ARM_STATUS_OFFSET                     0x310u /* established */
#define HIP_HH_ARM_STATUS_MODE_SHIFT                 11 /* inferred */
#define HIP_HH_ARM_STATUS_MODE_MASK                  0x1fu
#define HIP_HH_ARM_STATUS_MODE_INPLACE               (HIP_HH_ARM_STATUS_MODE_MASK << HIP_HH_ARM_STATUS_MODE_SHIFT)
#define HIP_HH_ARM_STATUS_NOPC_SHIFT                 10 /* inferred */
#define HIP_HH_ARM_STATUS_NOPC_MASK                  0x1u
#define HIP_HH_ARM_STATUS_NOPC_INPLACE               (HIP_HH_ARM_STATUS_NOPC_MASK << HIP_HH_ARM_STATUS_NOPC_SHIFT)
#define HIP_HH_ARM_STATUS_ABORT_SHIFT                9 /* inferred */
#define HIP_HH_ARM_STATUS_ABORT_MASK                 0x1u
#define HIP_HH_ARM_STATUS_ABORT_INPLACE              (HIP_HH_ARM_STATUS_ABORT_MASK << HIP_HH_ARM_STATUS_ABORT_SHIFT)
#define HIP_HH_ARM_STATUS_NBW_SHIFT                  8 /* inferred */
#define HIP_HH_ARM_STATUS_NBW_MASK                   0x1u
#define HIP_HH_ARM_STATUS_NBW_INPLACE                (HIP_HH_ARM_STATUS_NBW_MASK << HIP_HH_ARM_STATUS_NBW_SHIFT)
#define HIP_HH_ARM_STATUS_NRW_SHIFT                  7 /* inferred */
#define HIP_HH_ARM_STATUS_NRW_MASK                   0x1u
#define HIP_HH_ARM_STATUS_NRW_INPLACE                (HIP_HH_ARM_STATUS_NRW_MASK << HIP_HH_ARM_STATUS_NRW_SHIFT)
#define HIP_HH_ARM_STATUS_SEQ_SHIFT                  6 /* inferred */
#define HIP_HH_ARM_STATUS_SEQ_MASK                   0x1u
#define HIP_HH_ARM_STATUS_SEQ_INPLACE                (HIP_HH_ARM_STATUS_SEQ_MASK << HIP_HH_ARM_STATUS_SEQ_SHIFT)
#define HIP_HH_ARM_STATUS_MREQ_SHIFT                 5 /* inferred */
#define HIP_HH_ARM_STATUS_MREQ_MASK                  0x1u
#define HIP_HH_ARM_STATUS_MREQ_INPLACE               (HIP_HH_ARM_STATUS_MREQ_MASK << HIP_HH_ARM_STATUS_MREQ_SHIFT)
#define HIP_HH_ARM_STATUS_GE_CNT_SHIFT               2 /* inferred */
#define HIP_HH_ARM_STATUS_GE_CNT_MASK                0x7u
#define HIP_HH_ARM_STATUS_GE_CNT_INPLACE             (HIP_HH_ARM_STATUS_GE_CNT_MASK << HIP_HH_ARM_STATUS_GE_CNT_SHIFT)
#define HIP_HH_ARM_STATUS_REMAP_SHIFT                1 /* inferred */
#define HIP_HH_ARM_STATUS_REMAP_MASK                 0x1u
#define HIP_HH_ARM_STATUS_REMAP_INPLACE              (HIP_HH_ARM_STATUS_REMAP_MASK << HIP_HH_ARM_STATUS_REMAP_SHIFT)
#define HIP_HH_ARM_STATUS_STALL_SHIFT                0 /* inferred */
#define HIP_HH_ARM_STATUS_STALL_MASK                 0x1u
#define HIP_HH_ARM_STATUS_STALL_INPLACE              (HIP_HH_ARM_STATUS_STALL_MASK << HIP_HH_ARM_STATUS_STALL_SHIFT)

/* hh_arm_stall: w32, space hip_regs, reset unknown */
#define HIP_HH_ARM_STALL_OFFSET                      0x320u /* established */

/* hh_arm_unstall: w32, space hip_regs, reset unknown */
#define HIP_HH_ARM_UNSTALL_OFFSET                    0x328u /* established */

/* hh_tbus_status: rw32, space hip_regs, reset unknown */
#define HIP_HH_TBUS_STATUS_OFFSET                    0x3a8u /* established */
#define HIP_HH_TBUS_STATUS_STALL_SHIFT               3 /* inferred */
#define HIP_HH_TBUS_STATUS_STALL_MASK                0x1u
#define HIP_HH_TBUS_STATUS_STALL_INPLACE             (HIP_HH_TBUS_STATUS_STALL_MASK << HIP_HH_TBUS_STATUS_STALL_SHIFT)
#define HIP_HH_TBUS_STATUS_ACTIVE_SHIFT              2 /* inferred */
#define HIP_HH_TBUS_STATUS_ACTIVE_MASK               0x1u
#define HIP_HH_TBUS_STATUS_ACTIVE_INPLACE            (HIP_HH_TBUS_STATUS_ACTIVE_MASK << HIP_HH_TBUS_STATUS_ACTIVE_SHIFT)
#define HIP_HH_TBUS_STATUS_LOAD_SHIFT                1 /* inferred */
#define HIP_HH_TBUS_STATUS_LOAD_MASK                 0x1u
#define HIP_HH_TBUS_STATUS_LOAD_INPLACE              (HIP_HH_TBUS_STATUS_LOAD_MASK << HIP_HH_TBUS_STATUS_LOAD_SHIFT)
#define HIP_HH_TBUS_STATUS_DRAW_SHIFT                0 /* inferred */
#define HIP_HH_TBUS_STATUS_DRAW_MASK                 0x1u
#define HIP_HH_TBUS_STATUS_DRAW_INPLACE              (HIP_HH_TBUS_STATUS_DRAW_MASK << HIP_HH_TBUS_STATUS_DRAW_SHIFT)

/* hh_tfifo_hi: rw32, space hip_regs, reset unknown */
#define HIP_HH_TFIFO_HI_OFFSET                       0x3b0u /* established */
#define HIP_HH_TFIFO_HI_THRESHOLD_SHIFT              0 /* established */
#define HIP_HH_TFIFO_HI_THRESHOLD_MASK               0xfu
#define HIP_HH_TFIFO_HI_THRESHOLD_INPLACE            (HIP_HH_TFIFO_HI_THRESHOLD_MASK << HIP_HH_TFIFO_HI_THRESHOLD_SHIFT)

/* hh_vc_address: rw32, space hip_regs, reset unknown */
#define HIP_HH_VC_ADDRESS_OFFSET                     0x3c0u /* established */
#define HIP_HH_VC_ADDRESS_VALUE_SHIFT                0 /* established */
#define HIP_HH_VC_ADDRESS_VALUE_MASK                 0xffffu
#define HIP_HH_VC_ADDRESS_VALUE_INPLACE              (HIP_HH_VC_ADDRESS_VALUE_MASK << HIP_HH_VC_ADDRESS_VALUE_SHIFT)

/* hh_vc_ready: r32, space hip_regs, reset unknown */
#define HIP_HH_VC_READY_OFFSET                       0x3c8u /* inferred */
#define HIP_HH_VC_READY_READY_SHIFT                  0 /* inferred */
#define HIP_HH_VC_READY_READY_MASK                   0x1u
#define HIP_HH_VC_READY_READY_INPLACE                (HIP_HH_VC_READY_READY_MASK << HIP_HH_VC_READY_READY_SHIFT)

/* hh_vc_data: rw32, space hip_regs, reset unknown */
#define HIP_HH_VC_DATA_OFFSET                        0x3d0u /* established */

/* hh_vc_data_incr: rw32, space hip_regs, reset unknown */
#define HIP_HH_VC_DATA_INCR_OFFSET                   0x3d8u /* inferred */

/* hh_arm_address: rw32, space hip_regs, reset unknown */
#define HIP_HH_ARM_ADDRESS_OFFSET                    0x3e8u /* established */
#define HIP_HH_ARM_ADDRESS_WORD_ADDRESS_SHIFT        2 /* established */
#define HIP_HH_ARM_ADDRESS_WORD_ADDRESS_MASK         0x3ffffffu
#define HIP_HH_ARM_ADDRESS_WORD_ADDRESS_INPLACE      (HIP_HH_ARM_ADDRESS_WORD_ADDRESS_MASK << HIP_HH_ARM_ADDRESS_WORD_ADDRESS_SHIFT)

/* hh_arm_data: rw32, space hip_regs, reset unknown */
#define HIP_HH_ARM_DATA_OFFSET                       0x3f0u /* established */

/* hh_arm_data_incr: rw32, space hip_regs, reset unknown */
#define HIP_HH_ARM_DATA_INCR_OFFSET                  0x3f8u /* inferred */

/* cmd_descriptor: w32, space hip_regs, reset unknown */
#define HIP_CMD_DESCRIPTOR_OFFSET                    0x400u /* established */

/* cmd_operand: w32, space hip_regs, reset unknown */
#define HIP_CMD_OPERAND_OFFSET                       0x840u /* established */

/* cmd_data: w32, space hip_regs, reset unknown */
#define HIP_CMD_DATA_OFFSET                          0x8c0u /* established */

/* rbus_odma2_data: w32, space rbus, reset unknown */
#define HIP_RBUS_ODMA2_DATA_OFFSET                   0x476u /* established */

/* rbus_odma2_flush: w32, space rbus, reset unknown */
#define HIP_RBUS_ODMA2_FLUSH_OFFSET                  0x477u /* inferred */

/*
 * Widget configuration word. The attach code reads the map RAM size code from it; the entry count is that code shifted left by 15, and code 0 means 8.
 */
/* xg_config: r32, space xg, reset unknown */
#define HIP_XG_CONFIG_OFFSET                         0x64u /* established */
#define HIP_XG_CONFIG_MAPRAM_TYPE_SHIFT              6 /* established */
#define HIP_XG_CONFIG_MAPRAM_TYPE_MASK               0x3u
#define HIP_XG_CONFIG_MAPRAM_TYPE_INPLACE            (HIP_XG_CONFIG_MAPRAM_TYPE_MASK << HIP_XG_CONFIG_MAPRAM_TYPE_SHIFT)
#define HIP_XG_CONFIG_MAPRAM_SIZE_SHIFT              3 /* established */
#define HIP_XG_CONFIG_MAPRAM_SIZE_MASK               0x7u
#define HIP_XG_CONFIG_MAPRAM_SIZE_INPLACE            (HIP_XG_CONFIG_MAPRAM_SIZE_MASK << HIP_XG_CONFIG_MAPRAM_SIZE_SHIFT)
#define HIP_XG_CONFIG_SUBSYSTEM_SHIFT                0 /* established */
#define HIP_XG_CONFIG_SUBSYSTEM_MASK                 0x7u
#define HIP_XG_CONFIG_SUBSYSTEM_INPLACE              (HIP_XG_CONFIG_SUBSYSTEM_MASK << HIP_XG_CONFIG_SUBSYSTEM_SHIFT)

/* xg_err_status: rw32, space xg, reset unknown */
#define HIP_XG_ERR_STATUS_OFFSET                     0x6cu /* established */
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_SHIFT 28 /* established */
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_MASK 0x1u
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_INPLACE (HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_MASK << HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_SHIFT)
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_SHIFT   27 /* established */
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_MASK    0x1u
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_INPLACE (HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_MASK << HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_SHIFT)
#define HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_SHIFT   26 /* established */
#define HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_MASK    0x1u
#define HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_INPLACE (HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_MASK << HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_SHIFT)
#define HIP_XG_ERR_STATUS_MAPRAM_INVALID_SHIFT       13 /* established */
#define HIP_XG_ERR_STATUS_MAPRAM_INVALID_MASK        0x1u
#define HIP_XG_ERR_STATUS_MAPRAM_INVALID_INPLACE     (HIP_XG_ERR_STATUS_MAPRAM_INVALID_MASK << HIP_XG_ERR_STATUS_MAPRAM_INVALID_SHIFT)
#define HIP_XG_ERR_STATUS_MAPRAM_PARITY_SHIFT        12 /* established */
#define HIP_XG_ERR_STATUS_MAPRAM_PARITY_MASK         0x1u
#define HIP_XG_ERR_STATUS_MAPRAM_PARITY_INPLACE      (HIP_XG_ERR_STATUS_MAPRAM_PARITY_MASK << HIP_XG_ERR_STATUS_MAPRAM_PARITY_SHIFT)
#define HIP_XG_ERR_STATUS_RESPONSE_SHIFT             9 /* established */
#define HIP_XG_ERR_STATUS_RESPONSE_MASK              0x1u
#define HIP_XG_ERR_STATUS_RESPONSE_INPLACE           (HIP_XG_ERR_STATUS_RESPONSE_MASK << HIP_XG_ERR_STATUS_RESPONSE_SHIFT)
#define HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_SHIFT     8 /* established */
#define HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_MASK      0x1u
#define HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_INPLACE   (HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_MASK << HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_SHIFT)

#endif /* HIP_GEN_H */
