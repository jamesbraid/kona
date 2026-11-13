/* generated from devices/fm/registers.toml by defs-gen - do not edit, change the source */
/* frame-manager registers on the display bus */
#ifndef FM_GEN_H
#define FM_GEN_H

#include <stdint.h>


/* swap_strobe: w32, space fm_regs, reset unknown */
#define FM_SWAP_STROBE_OFFSET                        0x80u /* established */
#define FM_SWAP_STROBE_STROBE_SHIFT                  0 /* established */
#define FM_SWAP_STROBE_STROBE_MASK                   0x3u
#define FM_SWAP_STROBE_STROBE_INPLACE                (FM_SWAP_STROBE_STROBE_MASK << FM_SWAP_STROBE_STROBE_SHIFT)

/* voc_did: w32, space fm_regs, reset unknown */
#define FM_VOC_DID_OFFSET                            0x81u /* established */
#define FM_VOC_DID_COUNT                             8
#define FM_VOC_DID_STRIDE                            1
#define FM_VOC_DID_DID_SHIFT                         0 /* established */
#define FM_VOC_DID_DID_MASK                          0x3fu
#define FM_VOC_DID_DID_INPLACE                       (FM_VOC_DID_DID_MASK << FM_VOC_DID_DID_SHIFT)

/* xwindow: w32, space fm_regs, reset unknown */
#define FM_XWINDOW_OFFSET                            0x8bu /* established */
#define FM_XWINDOW_RESET_RATIO_SHIFT                 22 /* established */
#define FM_XWINDOW_RESET_RATIO_MASK                  0x1u
#define FM_XWINDOW_RESET_RATIO_INPLACE               (FM_XWINDOW_RESET_RATIO_MASK << FM_XWINDOW_RESET_RATIO_SHIFT)
#define FM_XWINDOW_SYNC_SOURCE_SHIFT                 20 /* established */
#define FM_XWINDOW_SYNC_SOURCE_MASK                  0x3u
#define FM_XWINDOW_SYNC_SOURCE_INPLACE               (FM_XWINDOW_SYNC_SOURCE_MASK << FM_XWINDOW_SYNC_SOURCE_SHIFT)
#define FM_XWINDOW_X1_INV_SHIFT                      10 /* established */
#define FM_XWINDOW_X1_INV_MASK                       0x3ffu
#define FM_XWINDOW_X1_INV_INPLACE                    (FM_XWINDOW_X1_INV_MASK << FM_XWINDOW_X1_INV_SHIFT)
#define FM_XWINDOW_X0_INV_SHIFT                      0 /* established */
#define FM_XWINDOW_X0_INV_MASK                       0x3ffu
#define FM_XWINDOW_X0_INV_INPLACE                    (FM_XWINDOW_X0_INV_MASK << FM_XWINDOW_X0_INV_SHIFT)

/* did_range: w32, space fm_regs, reset unknown */
#define FM_DID_RANGE_OFFSET                          0x8cu /* inferred */
#define FM_DID_RANGE_ARG_D_SHIFT                     19 /* unknown */
#define FM_DID_RANGE_ARG_D_MASK                      0x1fu
#define FM_DID_RANGE_ARG_D_INPLACE                   (FM_DID_RANGE_ARG_D_MASK << FM_DID_RANGE_ARG_D_SHIFT)
#define FM_DID_RANGE_ARG_C_SHIFT                     13 /* unknown */
#define FM_DID_RANGE_ARG_C_MASK                      0x3fu
#define FM_DID_RANGE_ARG_C_INPLACE                   (FM_DID_RANGE_ARG_C_MASK << FM_DID_RANGE_ARG_C_SHIFT)
#define FM_DID_RANGE_SIZE_B_SHIFT                    7 /* inferred */
#define FM_DID_RANGE_SIZE_B_MASK                     0x3fu
#define FM_DID_RANGE_SIZE_B_INPLACE                  (FM_DID_RANGE_SIZE_B_MASK << FM_DID_RANGE_SIZE_B_SHIFT)
#define FM_DID_RANGE_SIZE_A_SHIFT                    0 /* inferred */
#define FM_DID_RANGE_SIZE_A_MASK                     0x7fu
#define FM_DID_RANGE_SIZE_A_INPLACE                  (FM_DID_RANGE_SIZE_A_MASK << FM_DID_RANGE_SIZE_A_SHIFT)

/* did_status: r32, space fm_regs, reset unknown */
#define FM_DID_STATUS_OFFSET                         0x8du /* established */
#define FM_DID_STATUS_SHIFTING_SHIFT                 3 /* established */
#define FM_DID_STATUS_SHIFTING_MASK                  0x1u
#define FM_DID_STATUS_SHIFTING_INPLACE               (FM_DID_STATUS_SHIFTING_MASK << FM_DID_STATUS_SHIFTING_SHIFT)

/* clock_select: w32, space fm_regs, reset unknown */
#define FM_CLOCK_SELECT_OFFSET                       0x8eu /* established */
#define FM_CLOCK_SELECT_INTERNAL_SHIFT               23 /* established */
#define FM_CLOCK_SELECT_INTERNAL_MASK                0x1u
#define FM_CLOCK_SELECT_INTERNAL_INPLACE             (FM_CLOCK_SELECT_INTERNAL_MASK << FM_CLOCK_SELECT_INTERNAL_SHIFT)
#define FM_CLOCK_SELECT_ARG_22_20_SHIFT              20 /* unknown */
#define FM_CLOCK_SELECT_ARG_22_20_MASK               0x7u
#define FM_CLOCK_SELECT_ARG_22_20_INPLACE            (FM_CLOCK_SELECT_ARG_22_20_MASK << FM_CLOCK_SELECT_ARG_22_20_SHIFT)
#define FM_CLOCK_SELECT_Y1_INV_SHIFT                 10 /* established */
#define FM_CLOCK_SELECT_Y1_INV_MASK                  0x3ffu
#define FM_CLOCK_SELECT_Y1_INV_INPLACE               (FM_CLOCK_SELECT_Y1_INV_MASK << FM_CLOCK_SELECT_Y1_INV_SHIFT)
#define FM_CLOCK_SELECT_Y0_INV_SHIFT                 0 /* established */
#define FM_CLOCK_SELECT_Y0_INV_MASK                  0x3ffu
#define FM_CLOCK_SELECT_Y0_INV_INPLACE               (FM_CLOCK_SELECT_Y0_INV_MASK << FM_CLOCK_SELECT_Y0_INV_SHIFT)

/* intr_state: w32, space fm_regs, reset unknown */
#define FM_INTR_STATE_OFFSET                         0x8fu /* inferred */

/* raster_config: rw32, space fm_regs, reset unknown */
#define FM_RASTER_CONFIG_OFFSET                      0x90u /* established */
#define FM_RASTER_CONFIG_STUFFING_SHIFT              8 /* established */
#define FM_RASTER_CONFIG_STUFFING_MASK               0x7u
#define FM_RASTER_CONFIG_STUFFING_INPLACE            (FM_RASTER_CONFIG_STUFFING_MASK << FM_RASTER_CONFIG_STUFFING_SHIFT)
#define FM_RASTER_CONFIG_BOARDS_SHIFT                5 /* established */
#define FM_RASTER_CONFIG_BOARDS_MASK                 0x7u
#define FM_RASTER_CONFIG_BOARDS_INPLACE              (FM_RASTER_CONFIG_BOARDS_MASK << FM_RASTER_CONFIG_BOARDS_SHIFT)

#endif /* FM_GEN_H */
