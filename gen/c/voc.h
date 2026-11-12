/* generated from defs/voc.toml by defs-gen - do not edit, change the source */
/* video-output chip (VOC) registers */
#ifndef VOC_GEN_H
#define VOC_GEN_H

#include <stdint.h>


/* status: r32, space voc_regs, reset unknown */
#define VOC_STATUS_OFFSET                            0x200u /* established */
#define VOC_STATUS_INT_HOST_SHIFT                    24 /* established */
#define VOC_STATUS_INT_HOST_MASK                     0x1u
#define VOC_STATUS_INT_HOST_INPLACE                  (VOC_STATUS_INT_HOST_MASK << VOC_STATUS_INT_HOST_SHIFT)
#define VOC_STATUS_INT_VDRC_SHIFT                    23 /* established */
#define VOC_STATUS_INT_VDRC_MASK                     0x1u
#define VOC_STATUS_INT_VDRC_INPLACE                  (VOC_STATUS_INT_VDRC_MASK << VOC_STATUS_INT_VDRC_SHIFT)
#define VOC_STATUS_INT_EXT_FRAME_SHIFT               22 /* established */
#define VOC_STATUS_INT_EXT_FRAME_MASK                0x1u
#define VOC_STATUS_INT_EXT_FRAME_INPLACE             (VOC_STATUS_INT_EXT_FRAME_MASK << VOC_STATUS_INT_EXT_FRAME_SHIFT)
#define VOC_STATUS_INT_EXT_SYNC_DETECT_SHIFT         21 /* established */
#define VOC_STATUS_INT_EXT_SYNC_DETECT_MASK          0x1u
#define VOC_STATUS_INT_EXT_SYNC_DETECT_INPLACE       (VOC_STATUS_INT_EXT_SYNC_DETECT_MASK << VOC_STATUS_INT_EXT_SYNC_DETECT_SHIFT)
#define VOC_STATUS_INT_EXT_SYNC_LOSS_SHIFT           20 /* established */
#define VOC_STATUS_INT_EXT_SYNC_LOSS_MASK            0x1u
#define VOC_STATUS_INT_EXT_SYNC_LOSS_INPLACE         (VOC_STATUS_INT_EXT_SYNC_LOSS_MASK << VOC_STATUS_INT_EXT_SYNC_LOSS_SHIFT)
#define VOC_STATUS_INT_FIFO_UNDER_SHIFT              19 /* established */
#define VOC_STATUS_INT_FIFO_UNDER_MASK               0x1u
#define VOC_STATUS_INT_FIFO_UNDER_INPLACE            (VOC_STATUS_INT_FIFO_UNDER_MASK << VOC_STATUS_INT_FIFO_UNDER_SHIFT)
#define VOC_STATUS_INT_FIFO_OVER_SHIFT               18 /* established */
#define VOC_STATUS_INT_FIFO_OVER_MASK                0x1u
#define VOC_STATUS_INT_FIFO_OVER_INPLACE             (VOC_STATUS_INT_FIFO_OVER_MASK << VOC_STATUS_INT_FIFO_OVER_SHIFT)
#define VOC_STATUS_FS_COLOUR_FIELD_SHIFT             16 /* established */
#define VOC_STATUS_FS_COLOUR_FIELD_MASK              0x3u
#define VOC_STATUS_FS_COLOUR_FIELD_INPLACE           (VOC_STATUS_FS_COLOUR_FIELD_MASK << VOC_STATUS_FS_COLOUR_FIELD_SHIFT)
#define VOC_STATUS_VDRC_ENABLE_SHIFT                 13 /* established */
#define VOC_STATUS_VDRC_ENABLE_MASK                  0x1u
#define VOC_STATUS_VDRC_ENABLE_INPLACE               (VOC_STATUS_VDRC_ENABLE_MASK << VOC_STATUS_VDRC_ENABLE_SHIFT)
#define VOC_STATUS_XMAPREG_LOAD_SHIFT                12 /* established */
#define VOC_STATUS_XMAPREG_LOAD_MASK                 0x1u
#define VOC_STATUS_XMAPREG_LOAD_INPLACE              (VOC_STATUS_XMAPREG_LOAD_MASK << VOC_STATUS_XMAPREG_LOAD_SHIFT)
#define VOC_STATUS_IMPREG_LOAD_SHIFT                 11 /* established */
#define VOC_STATUS_IMPREG_LOAD_MASK                  0x1u
#define VOC_STATUS_IMPREG_LOAD_INPLACE               (VOC_STATUS_IMPREG_LOAD_MASK << VOC_STATUS_IMPREG_LOAD_SHIFT)
#define VOC_STATUS_STEREO_OUT_SHIFT                  10 /* established */
#define VOC_STATUS_STEREO_OUT_MASK                   0x1u
#define VOC_STATUS_STEREO_OUT_INPLACE                (VOC_STATUS_STEREO_OUT_MASK << VOC_STATUS_STEREO_OUT_SHIFT)
#define VOC_STATUS_LINE_START_SHIFT                  9 /* established */
#define VOC_STATUS_LINE_START_MASK                   0x1u
#define VOC_STATUS_LINE_START_INPLACE                (VOC_STATUS_LINE_START_MASK << VOC_STATUS_LINE_START_SHIFT)
#define VOC_STATUS_VIDEO_ACTIVE_SHIFT                8 /* established */
#define VOC_STATUS_VIDEO_ACTIVE_MASK                 0x1u
#define VOC_STATUS_VIDEO_ACTIVE_INPLACE              (VOC_STATUS_VIDEO_ACTIVE_MASK << VOC_STATUS_VIDEO_ACTIVE_SHIFT)
#define VOC_STATUS_FRAME_START_SHIFT                 7 /* established */
#define VOC_STATUS_FRAME_START_MASK                  0x1u
#define VOC_STATUS_FRAME_START_INPLACE               (VOC_STATUS_FRAME_START_MASK << VOC_STATUS_FRAME_START_SHIFT)
#define VOC_STATUS_FIELD_SHIFT                       6 /* established */
#define VOC_STATUS_FIELD_MASK                        0x1u
#define VOC_STATUS_FIELD_INPLACE                     (VOC_STATUS_FIELD_MASK << VOC_STATUS_FIELD_SHIFT)
#define VOC_STATUS_FIELD_START_SHIFT                 5 /* established */
#define VOC_STATUS_FIELD_START_MASK                  0x1u
#define VOC_STATUS_FIELD_START_INPLACE               (VOC_STATUS_FIELD_START_MASK << VOC_STATUS_FIELD_START_SHIFT)
#define VOC_STATUS_TRISYNC_SHIFT                     4 /* established */
#define VOC_STATUS_TRISYNC_MASK                      0x1u
#define VOC_STATUS_TRISYNC_INPLACE                   (VOC_STATUS_TRISYNC_MASK << VOC_STATUS_TRISYNC_SHIFT)
#define VOC_STATUS_CBLANK_SHIFT                      3 /* established */
#define VOC_STATUS_CBLANK_MASK                       0x1u
#define VOC_STATUS_CBLANK_INPLACE                    (VOC_STATUS_CBLANK_MASK << VOC_STATUS_CBLANK_SHIFT)
#define VOC_STATUS_CSYNC_SHIFT                       2 /* established */
#define VOC_STATUS_CSYNC_MASK                        0x1u
#define VOC_STATUS_CSYNC_INPLACE                     (VOC_STATUS_CSYNC_MASK << VOC_STATUS_CSYNC_SHIFT)
#define VOC_STATUS_VSYNC_SHIFT                       1 /* established */
#define VOC_STATUS_VSYNC_MASK                        0x1u
#define VOC_STATUS_VSYNC_INPLACE                     (VOC_STATUS_VSYNC_MASK << VOC_STATUS_VSYNC_SHIFT)
#define VOC_STATUS_HSYNC_SHIFT                       0 /* established */
#define VOC_STATUS_HSYNC_MASK                        0x1u
#define VOC_STATUS_HSYNC_INPLACE                     (VOC_STATUS_HSYNC_MASK << VOC_STATUS_HSYNC_SHIFT)

/* control: rw32, space voc_regs, reset unknown */
#define VOC_CONTROL_OFFSET                           0x201u /* established */
#define VOC_CONTROL_PIXEL_MUX_SHIFT                  9 /* established */
#define VOC_CONTROL_PIXEL_MUX_MASK                   0x7u
#define VOC_CONTROL_PIXEL_MUX_INPLACE                (VOC_CONTROL_PIXEL_MUX_MASK << VOC_CONTROL_PIXEL_MUX_SHIFT)
#define VOC_CONTROL_PIXEL_MUX_P4_4                   0 /* established */
#define VOC_CONTROL_PIXEL_MUX_P4_2                   1 /* established */
#define VOC_CONTROL_PIXEL_MUX_P4_1                   2 /* established */
#define VOC_CONTROL_PIXEL_MUX_P4_8                   3 /* established */
#define VOC_CONTROL_PIXEL_MUX_FS_4                   4 /* established */
#define VOC_CONTROL_PIXEL_MUX_FS_2                   5 /* established */
#define VOC_CONTROL_PIXEL_MUX_FS_1                   6 /* established */
#define VOC_CONTROL_PIXEL_MUX_FS_8                   7 /* established */
#define VOC_CONTROL_IE_HOST_SHIFT                    8 /* established */
#define VOC_CONTROL_IE_HOST_MASK                     0x1u
#define VOC_CONTROL_IE_HOST_INPLACE                  (VOC_CONTROL_IE_HOST_MASK << VOC_CONTROL_IE_HOST_SHIFT)
#define VOC_CONTROL_IE_VDRC_SHIFT                    7 /* established */
#define VOC_CONTROL_IE_VDRC_MASK                     0x1u
#define VOC_CONTROL_IE_VDRC_INPLACE                  (VOC_CONTROL_IE_VDRC_MASK << VOC_CONTROL_IE_VDRC_SHIFT)
#define VOC_CONTROL_IE_EXT_FRAME_SHIFT               6 /* established */
#define VOC_CONTROL_IE_EXT_FRAME_MASK                0x1u
#define VOC_CONTROL_IE_EXT_FRAME_INPLACE             (VOC_CONTROL_IE_EXT_FRAME_MASK << VOC_CONTROL_IE_EXT_FRAME_SHIFT)
#define VOC_CONTROL_IE_EXT_SYNC_DETECT_SHIFT         5 /* established */
#define VOC_CONTROL_IE_EXT_SYNC_DETECT_MASK          0x1u
#define VOC_CONTROL_IE_EXT_SYNC_DETECT_INPLACE       (VOC_CONTROL_IE_EXT_SYNC_DETECT_MASK << VOC_CONTROL_IE_EXT_SYNC_DETECT_SHIFT)
#define VOC_CONTROL_IE_EXT_SYNC_LOSS_SHIFT           4 /* established */
#define VOC_CONTROL_IE_EXT_SYNC_LOSS_MASK            0x1u
#define VOC_CONTROL_IE_EXT_SYNC_LOSS_INPLACE         (VOC_CONTROL_IE_EXT_SYNC_LOSS_MASK << VOC_CONTROL_IE_EXT_SYNC_LOSS_SHIFT)
#define VOC_CONTROL_IE_FIFO_UNDER_SHIFT              3 /* established */
#define VOC_CONTROL_IE_FIFO_UNDER_MASK               0x1u
#define VOC_CONTROL_IE_FIFO_UNDER_INPLACE            (VOC_CONTROL_IE_FIFO_UNDER_MASK << VOC_CONTROL_IE_FIFO_UNDER_SHIFT)
#define VOC_CONTROL_IE_FIFO_OVER_SHIFT               2 /* established */
#define VOC_CONTROL_IE_FIFO_OVER_MASK                0x1u
#define VOC_CONTROL_IE_FIFO_OVER_INPLACE             (VOC_CONTROL_IE_FIFO_OVER_MASK << VOC_CONTROL_IE_FIFO_OVER_SHIFT)
#define VOC_CONTROL_DBUF_MODE_SHIFT                  0 /* established */
#define VOC_CONTROL_DBUF_MODE_MASK                   0x3u
#define VOC_CONTROL_DBUF_MODE_INPLACE                (VOC_CONTROL_DBUF_MODE_MASK << VOC_CONTROL_DBUF_MODE_SHIFT)
#define VOC_CONTROL_DBUF_MODE_IMMEDIATE              0 /* established */
#define VOC_CONTROL_DBUF_MODE_COPY_IMPREG_LOAD       1 /* established */
#define VOC_CONTROL_DBUF_MODE_COPY_SWAP              2 /* established */
#define VOC_CONTROL_DBUF_MODE_COPY_FRAME             3 /* established */

/* dbuf_request: rw32, space voc_regs, reset unknown */
#define VOC_DBUF_REQUEST_OFFSET                      0x202u /* established */
#define VOC_DBUF_REQUEST_ENABLE_SHIFT                0 /* established */
#define VOC_DBUF_REQUEST_ENABLE_MASK                 0x1u
#define VOC_DBUF_REQUEST_ENABLE_INPLACE              (VOC_DBUF_REQUEST_ENABLE_MASK << VOC_DBUF_REQUEST_ENABLE_SHIFT)

/* req_window: rw32, space voc_regs, reset unknown */
#define VOC_REQ_WINDOW_OFFSET                        0x203u /* established */
#define VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_SHIFT      5 /* established */
#define VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_MASK       0x3ffu
#define VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_INPLACE    (VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_MASK << VOC_REQ_WINDOW_WIDTH_GROUPXELS_M1_SHIFT)
#define VOC_REQ_WINDOW_CHANNEL_SHIFT                 0 /* established */
#define VOC_REQ_WINDOW_CHANNEL_MASK                  0x1fu
#define VOC_REQ_WINDOW_CHANNEL_INPLACE               (VOC_REQ_WINDOW_CHANNEL_MASK << VOC_REQ_WINDOW_CHANNEL_SHIFT)

/* req_origin: rw32, space voc_regs, reset unknown */
#define VOC_REQ_ORIGIN_OFFSET                        0x204u /* unknown */

/* req_size: rw32, space voc_regs, reset unknown */
#define VOC_REQ_SIZE_OFFSET                          0x205u /* unknown */

/* seq_control: rw32, space voc_regs, reset unknown */
#define VOC_SEQ_CONTROL_OFFSET                       0x206u /* established */
#define VOC_SEQ_CONTROL_RESET_RATE_SHIFT             9 /* established */
#define VOC_SEQ_CONTROL_RESET_RATE_MASK              0xfu
#define VOC_SEQ_CONTROL_RESET_RATE_INPLACE           (VOC_SEQ_CONTROL_RESET_RATE_MASK << VOC_SEQ_CONTROL_RESET_RATE_SHIFT)
#define VOC_SEQ_CONTROL_LINE_EDGE_SELECT_SHIFT       4 /* established */
#define VOC_SEQ_CONTROL_LINE_EDGE_SELECT_MASK        0x1fu
#define VOC_SEQ_CONTROL_LINE_EDGE_SELECT_INPLACE     (VOC_SEQ_CONTROL_LINE_EDGE_SELECT_MASK << VOC_SEQ_CONTROL_LINE_EDGE_SELECT_SHIFT)
#define VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_SHIFT    3 /* established */
#define VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_MASK     0x1u
#define VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_INPLACE  (VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_MASK << VOC_SEQ_CONTROL_CLEAR_STATE_POINTER_SHIFT)
#define VOC_SEQ_CONTROL_RESET_SOURCE_SHIFT           1 /* established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_MASK            0x3u
#define VOC_SEQ_CONTROL_RESET_SOURCE_INPLACE         (VOC_SEQ_CONTROL_RESET_SOURCE_MASK << VOC_SEQ_CONTROL_RESET_SOURCE_SHIFT)
#define VOC_SEQ_CONTROL_RESET_SOURCE_NONE            0 /* established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_OUTPUT_FORMAT_A 1 /* established */
#define VOC_SEQ_CONTROL_RESET_SOURCE_PHASE_DETECTOR  3 /* established */
#define VOC_SEQ_CONTROL_ENABLE_SHIFT                 0 /* established */
#define VOC_SEQ_CONTROL_ENABLE_MASK                  0x1u
#define VOC_SEQ_CONTROL_ENABLE_INPLACE               (VOC_SEQ_CONTROL_ENABLE_MASK << VOC_SEQ_CONTROL_ENABLE_SHIFT)

/* seq_initial: rw32, space voc_regs, reset unknown */
#define VOC_SEQ_INITIAL_OFFSET                       0x207u /* established */
#define VOC_SEQ_INITIAL_VPHASE_COUNT_SHIFT           19 /* established */
#define VOC_SEQ_INITIAL_VPHASE_COUNT_MASK            0x1fffu
#define VOC_SEQ_INITIAL_VPHASE_COUNT_INPLACE         (VOC_SEQ_INITIAL_VPHASE_COUNT_MASK << VOC_SEQ_INITIAL_VPHASE_COUNT_SHIFT)
#define VOC_SEQ_INITIAL_TRISTATE_VSYNC_SHIFT         18 /* established */
#define VOC_SEQ_INITIAL_TRISTATE_VSYNC_MASK          0x1u
#define VOC_SEQ_INITIAL_TRISTATE_VSYNC_INPLACE       (VOC_SEQ_INITIAL_TRISTATE_VSYNC_MASK << VOC_SEQ_INITIAL_TRISTATE_VSYNC_SHIFT)
#define VOC_SEQ_INITIAL_TRISTATE_HSYNC_SHIFT         17 /* established */
#define VOC_SEQ_INITIAL_TRISTATE_HSYNC_MASK          0x1u
#define VOC_SEQ_INITIAL_TRISTATE_HSYNC_INPLACE       (VOC_SEQ_INITIAL_TRISTATE_HSYNC_MASK << VOC_SEQ_INITIAL_TRISTATE_HSYNC_SHIFT)
#define VOC_SEQ_INITIAL_TRISTATE_CSYNC_SHIFT         16 /* established */
#define VOC_SEQ_INITIAL_TRISTATE_CSYNC_MASK          0x1u
#define VOC_SEQ_INITIAL_TRISTATE_CSYNC_INPLACE       (VOC_SEQ_INITIAL_TRISTATE_CSYNC_MASK << VOC_SEQ_INITIAL_TRISTATE_CSYNC_SHIFT)
#define VOC_SEQ_INITIAL_INITIAL_LEVELS_SHIFT         0 /* established */
#define VOC_SEQ_INITIAL_INITIAL_LEVELS_MASK          0x3fffu
#define VOC_SEQ_INITIAL_INITIAL_LEVELS_INPLACE       (VOC_SEQ_INITIAL_INITIAL_LEVELS_MASK << VOC_SEQ_INITIAL_INITIAL_LEVELS_SHIFT)

/* genlock_vphase: rw32, space voc_regs, reset unknown */
#define VOC_GENLOCK_VPHASE_OFFSET                    0x208u /* established */
#define VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_SHIFT   29 /* established */
#define VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_MASK    0x1u
#define VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_INPLACE (VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_MASK << VOC_GENLOCK_VPHASE_HYSTERESIS_ENABLE_SHIFT)
#define VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_SHIFT    26 /* established */
#define VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_MASK     0x7u
#define VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_INPLACE  (VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_MASK << VOC_GENLOCK_VPHASE_HYSTERESIS_WIDTH_SHIFT)
#define VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_SHIFT     13 /* established */
#define VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_MASK      0x1fffu
#define VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_INPLACE   (VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_MASK << VOC_GENLOCK_VPHASE_EXTERNAL_VPHASE_SHIFT)
#define VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_SHIFT     0 /* established */
#define VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_MASK      0x1fffu
#define VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_INPLACE   (VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_MASK << VOC_GENLOCK_VPHASE_INTERNAL_VPHASE_SHIFT)

/* state_table: rw32, space voc_regs, reset unknown */
#define VOC_STATE_TABLE_OFFSET                       0x209u /* established */

/* line_type_a: rw32, space voc_regs, reset unknown */
#define VOC_LINE_TYPE_A_OFFSET                       0x20au /* established */

/* line_type_b: rw32, space voc_regs, reset unknown */
#define VOC_LINE_TYPE_B_OFFSET                       0x20bu /* established */
#define VOC_LINE_TYPE_B_LENGTH_M3_SHIFT              18 /* established */
#define VOC_LINE_TYPE_B_LENGTH_M3_MASK               0x1fffu
#define VOC_LINE_TYPE_B_LENGTH_M3_INPLACE            (VOC_LINE_TYPE_B_LENGTH_M3_MASK << VOC_LINE_TYPE_B_LENGTH_M3_SHIFT)
#define VOC_LINE_TYPE_B_EDGE_MASK_HI_SHIFT           0 /* established */
#define VOC_LINE_TYPE_B_EDGE_MASK_HI_MASK            0x3ffffu
#define VOC_LINE_TYPE_B_EDGE_MASK_HI_INPLACE         (VOC_LINE_TYPE_B_EDGE_MASK_HI_MASK << VOC_LINE_TYPE_B_EDGE_MASK_HI_SHIFT)

/* edge_slot: rw32, space voc_regs, reset unknown */
#define VOC_EDGE_SLOT_OFFSET                         0x20cu /* established */
#define VOC_EDGE_SLOT_COUNT                          8
#define VOC_EDGE_SLOT_STRIDE                         1
#define VOC_EDGE_SLOT_POSITION_SHIFT                 0 /* established */
#define VOC_EDGE_SLOT_POSITION_MASK                  0x1fffu
#define VOC_EDGE_SLOT_POSITION_INPLACE               (VOC_EDGE_SLOT_POSITION_MASK << VOC_EDGE_SLOT_POSITION_SHIFT)

/* pixel_blank: rw32, space voc_regs, reset unknown */
#define VOC_PIXEL_BLANK_OFFSET                       0x214u /* established */
#define VOC_PIXEL_BLANK_ENABLE_SHIFT                 16 /* established */
#define VOC_PIXEL_BLANK_ENABLE_MASK                  0x1u
#define VOC_PIXEL_BLANK_ENABLE_INPLACE               (VOC_PIXEL_BLANK_ENABLE_MASK << VOC_PIXEL_BLANK_ENABLE_SHIFT)
#define VOC_PIXEL_BLANK_LAST_SHIFT                   8 /* established */
#define VOC_PIXEL_BLANK_LAST_MASK                    0xffu
#define VOC_PIXEL_BLANK_LAST_INPLACE                 (VOC_PIXEL_BLANK_LAST_MASK << VOC_PIXEL_BLANK_LAST_SHIFT)
#define VOC_PIXEL_BLANK_FIRST_SHIFT                  0 /* established */
#define VOC_PIXEL_BLANK_FIRST_MASK                   0xffu
#define VOC_PIXEL_BLANK_FIRST_INPLACE                (VOC_PIXEL_BLANK_FIRST_MASK << VOC_PIXEL_BLANK_FIRST_SHIFT)

/* pfd_control: rw32, space voc_regs, reset unknown */
#define VOC_PFD_CONTROL_OFFSET                       0x230u /* established */
#define VOC_PFD_CONTROL_LINE_COUNT_HI_SHIFT          26 /* established */
#define VOC_PFD_CONTROL_LINE_COUNT_HI_MASK           0xfu
#define VOC_PFD_CONTROL_LINE_COUNT_HI_INPLACE        (VOC_PFD_CONTROL_LINE_COUNT_HI_MASK << VOC_PFD_CONTROL_LINE_COUNT_HI_SHIFT)
#define VOC_PFD_CONTROL_CSYNC_SOURCE_SHIFT           24 /* established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_MASK            0x3u
#define VOC_PFD_CONTROL_CSYNC_SOURCE_INPLACE         (VOC_PFD_CONTROL_CSYNC_SOURCE_MASK << VOC_PFD_CONTROL_CSYNC_SOURCE_SHIFT)
#define VOC_PFD_CONTROL_CSYNC_SOURCE_INTERNAL        0 /* established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_EXTERNAL        1 /* established */
#define VOC_PFD_CONTROL_CSYNC_SOURCE_OUTPUT_FORMAT   2 /* established */
#define VOC_PFD_CONTROL_LINE_COUNT_SHIFT             16 /* established */
#define VOC_PFD_CONTROL_LINE_COUNT_MASK              0xffu
#define VOC_PFD_CONTROL_LINE_COUNT_INPLACE           (VOC_PFD_CONTROL_LINE_COUNT_MASK << VOC_PFD_CONTROL_LINE_COUNT_SHIFT)
#define VOC_PFD_CONTROL_PRECISION_SHIFT              5 /* established */
#define VOC_PFD_CONTROL_PRECISION_MASK               0x7ffu
#define VOC_PFD_CONTROL_PRECISION_INPLACE            (VOC_PFD_CONTROL_PRECISION_MASK << VOC_PFD_CONTROL_PRECISION_SHIFT)
#define VOC_PFD_CONTROL_FRAME_SELECT_SHIFT           4 /* established */
#define VOC_PFD_CONTROL_FRAME_SELECT_MASK            0x1u
#define VOC_PFD_CONTROL_FRAME_SELECT_INPLACE         (VOC_PFD_CONTROL_FRAME_SELECT_MASK << VOC_PFD_CONTROL_FRAME_SELECT_SHIFT)
#define VOC_PFD_CONTROL_CLOCK_SELECT_SHIFT           2 /* established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_MASK            0x3u
#define VOC_PFD_CONTROL_CLOCK_SELECT_INPLACE         (VOC_PFD_CONTROL_CLOCK_SELECT_MASK << VOC_PFD_CONTROL_CLOCK_SELECT_SHIFT)
#define VOC_PFD_CONTROL_CLOCK_SELECT_HOST            0 /* established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_HOST_DIV2       1 /* established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_HOST_DIV4       2 /* established */
#define VOC_PFD_CONTROL_CLOCK_SELECT_FOURTH          3 /* inferred */
#define VOC_PFD_CONTROL_FLIP_SHIFT                   1 /* established */
#define VOC_PFD_CONTROL_FLIP_MASK                    0x1u
#define VOC_PFD_CONTROL_FLIP_INPLACE                 (VOC_PFD_CONTROL_FLIP_MASK << VOC_PFD_CONTROL_FLIP_SHIFT)
#define VOC_PFD_CONTROL_ENABLE_SHIFT                 0 /* established */
#define VOC_PFD_CONTROL_ENABLE_MASK                  0x1u
#define VOC_PFD_CONTROL_ENABLE_INPLACE               (VOC_PFD_CONTROL_ENABLE_MASK << VOC_PFD_CONTROL_ENABLE_SHIFT)

/* seq_low: rw32, space voc_regs, reset unknown */
#define VOC_SEQ_LOW_OFFSET                           0x231u /* established */

/* seq_high: rw32, space voc_regs, reset unknown */
#define VOC_SEQ_HIGH_OFFSET                          0x232u /* established */

/* pfd_diag: rw32, space voc_regs, reset unknown */
#define VOC_PFD_DIAG_OFFSET                          0x233u /* established */
#define VOC_PFD_DIAG_PREVIOUS_SHIFT                  12 /* established */
#define VOC_PFD_DIAG_PREVIOUS_MASK                   0xfffu
#define VOC_PFD_DIAG_PREVIOUS_INPLACE                (VOC_PFD_DIAG_PREVIOUS_MASK << VOC_PFD_DIAG_PREVIOUS_SHIFT)
#define VOC_PFD_DIAG_DURATION_SHIFT                  0 /* established */
#define VOC_PFD_DIAG_DURATION_MASK                   0xfffu
#define VOC_PFD_DIAG_DURATION_INPLACE                (VOC_PFD_DIAG_DURATION_MASK << VOC_PFD_DIAG_DURATION_SHIFT)

/* frame_duration: rw32, space voc_regs, reset unknown */
#define VOC_FRAME_DURATION_OFFSET                    0x234u /* established */
#define VOC_FRAME_DURATION_DURATION_SHIFT            0 /* established */
#define VOC_FRAME_DURATION_DURATION_MASK             0xfffffu
#define VOC_FRAME_DURATION_DURATION_INPLACE          (VOC_FRAME_DURATION_DURATION_MASK << VOC_FRAME_DURATION_DURATION_SHIFT)

/* sync_detect_control: rw32, space voc_regs, reset unknown */
#define VOC_SYNC_DETECT_CONTROL_OFFSET               0x243u /* established */
#define VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_SHIFT 18 /* established */
#define VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_MASK 0x1u
#define VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_INPLACE (VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_MASK << VOC_SYNC_DETECT_CONTROL_FRAME_REF_SELECT_SHIFT)
#define VOC_SYNC_DETECT_CONTROL_FRAMES_ON_SHIFT      15 /* established */
#define VOC_SYNC_DETECT_CONTROL_FRAMES_ON_MASK       0x7u
#define VOC_SYNC_DETECT_CONTROL_FRAMES_ON_INPLACE    (VOC_SYNC_DETECT_CONTROL_FRAMES_ON_MASK << VOC_SYNC_DETECT_CONTROL_FRAMES_ON_SHIFT)
#define VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_SHIFT     12 /* established */
#define VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_MASK      0x7u
#define VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_INPLACE   (VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_MASK << VOC_SYNC_DETECT_CONTROL_FRAMES_OFF_SHIFT)
#define VOC_SYNC_DETECT_CONTROL_LINE_COUNT_SHIFT     1 /* established */
#define VOC_SYNC_DETECT_CONTROL_LINE_COUNT_MASK      0x7ffu
#define VOC_SYNC_DETECT_CONTROL_LINE_COUNT_INPLACE   (VOC_SYNC_DETECT_CONTROL_LINE_COUNT_MASK << VOC_SYNC_DETECT_CONTROL_LINE_COUNT_SHIFT)
#define VOC_SYNC_DETECT_CONTROL_ENABLE_SHIFT         0 /* established */
#define VOC_SYNC_DETECT_CONTROL_ENABLE_MASK          0x1u
#define VOC_SYNC_DETECT_CONTROL_ENABLE_INPLACE       (VOC_SYNC_DETECT_CONTROL_ENABLE_MASK << VOC_SYNC_DETECT_CONTROL_ENABLE_SHIFT)

/* req_control: rw32, space voc_regs, reset unknown */
#define VOC_REQ_CONTROL_OFFSET                       0x244u /* established */
#define VOC_REQ_CONTROL_INTERLACED_CURSOR_SHIFT      23 /* established */
#define VOC_REQ_CONTROL_INTERLACED_CURSOR_MASK       0x1u
#define VOC_REQ_CONTROL_INTERLACED_CURSOR_INPLACE    (VOC_REQ_CONTROL_INTERLACED_CURSOR_MASK << VOC_REQ_CONTROL_INTERLACED_CURSOR_SHIFT)
#define VOC_REQ_CONTROL_ARBITER_STATUS_SHIFT         22 /* established */
#define VOC_REQ_CONTROL_ARBITER_STATUS_MASK          0x1u
#define VOC_REQ_CONTROL_ARBITER_STATUS_INPLACE       (VOC_REQ_CONTROL_ARBITER_STATUS_MASK << VOC_REQ_CONTROL_ARBITER_STATUS_SHIFT)
#define VOC_REQ_CONTROL_FIFO_BALANCE_SHIFT           11 /* established */
#define VOC_REQ_CONTROL_FIFO_BALANCE_MASK            0x7ffu
#define VOC_REQ_CONTROL_FIFO_BALANCE_INPLACE         (VOC_REQ_CONTROL_FIFO_BALANCE_MASK << VOC_REQ_CONTROL_FIFO_BALANCE_SHIFT)
#define VOC_REQ_CONTROL_TRANSFER_Z_SHIFT             10 /* established */
#define VOC_REQ_CONTROL_TRANSFER_Z_MASK              0x1u
#define VOC_REQ_CONTROL_TRANSFER_Z_INPLACE           (VOC_REQ_CONTROL_TRANSFER_Z_MASK << VOC_REQ_CONTROL_TRANSFER_Z_SHIFT)
#define VOC_REQ_CONTROL_TRANSFER_ALPHA_SHIFT         9 /* established */
#define VOC_REQ_CONTROL_TRANSFER_ALPHA_MASK          0x1u
#define VOC_REQ_CONTROL_TRANSFER_ALPHA_INPLACE       (VOC_REQ_CONTROL_TRANSFER_ALPHA_MASK << VOC_REQ_CONTROL_TRANSFER_ALPHA_SHIFT)
#define VOC_REQ_CONTROL_TRANSFER_SIZE_SHIFT          8 /* inferred */
#define VOC_REQ_CONTROL_TRANSFER_SIZE_MASK           0x1u
#define VOC_REQ_CONTROL_TRANSFER_SIZE_INPLACE        (VOC_REQ_CONTROL_TRANSFER_SIZE_MASK << VOC_REQ_CONTROL_TRANSFER_SIZE_SHIFT)
#define VOC_REQ_CONTROL_DITHER_SHIFT                 7 /* established */
#define VOC_REQ_CONTROL_DITHER_MASK                  0x1u
#define VOC_REQ_CONTROL_DITHER_INPLACE               (VOC_REQ_CONTROL_DITHER_MASK << VOC_REQ_CONTROL_DITHER_SHIFT)
#define VOC_REQ_CONTROL_PIXEL_SIZE_SHIFT             5 /* established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_MASK              0x3u
#define VOC_REQ_CONTROL_PIXEL_SIZE_INPLACE           (VOC_REQ_CONTROL_PIXEL_SIZE_MASK << VOC_REQ_CONTROL_PIXEL_SIZE_SHIFT)
#define VOC_REQ_CONTROL_PIXEL_SIZE_SMALL             0 /* established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_MEDIUM            1 /* established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_LARGE             2 /* established */
#define VOC_REQ_CONTROL_PIXEL_SIZE_XLARGE            3 /* established */
#define VOC_REQ_CONTROL_REQUEST_DONE_SHIFT           4 /* established */
#define VOC_REQ_CONTROL_REQUEST_DONE_MASK            0x1u
#define VOC_REQ_CONTROL_REQUEST_DONE_INPLACE         (VOC_REQ_CONTROL_REQUEST_DONE_MASK << VOC_REQ_CONTROL_REQUEST_DONE_SHIFT)
#define VOC_REQ_CONTROL_EXT_REQUEST_SHIFT            3 /* established */
#define VOC_REQ_CONTROL_EXT_REQUEST_MASK             0x1u
#define VOC_REQ_CONTROL_EXT_REQUEST_INPLACE          (VOC_REQ_CONTROL_EXT_REQUEST_MASK << VOC_REQ_CONTROL_EXT_REQUEST_SHIFT)
#define VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_SHIFT     2 /* established */
#define VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_MASK      0x1u
#define VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_INPLACE   (VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_MASK << VOC_REQ_CONTROL_EXT_REQUEST_ENABLE_SHIFT)
#define VOC_REQ_CONTROL_READ_ENABLE_SHIFT            1 /* established */
#define VOC_REQ_CONTROL_READ_ENABLE_MASK             0x1u
#define VOC_REQ_CONTROL_READ_ENABLE_INPLACE          (VOC_REQ_CONTROL_READ_ENABLE_MASK << VOC_REQ_CONTROL_READ_ENABLE_SHIFT)
#define VOC_REQ_CONTROL_ENABLE_SHIFT                 0 /* established */
#define VOC_REQ_CONTROL_ENABLE_MASK                  0x1u
#define VOC_REQ_CONTROL_ENABLE_INPLACE               (VOC_REQ_CONTROL_ENABLE_MASK << VOC_REQ_CONTROL_ENABLE_SHIFT)

/* tiles_per_row: rw32, space voc_regs, reset unknown */
#define VOC_TILES_PER_ROW_OFFSET                     0x245u /* established */
#define VOC_TILES_PER_ROW_TILES_SHIFT                0 /* established */
#define VOC_TILES_PER_ROW_TILES_MASK                 0x1fu
#define VOC_TILES_PER_ROW_TILES_INPLACE              (VOC_TILES_PER_ROW_TILES_MASK << VOC_TILES_PER_ROW_TILES_SHIFT)

/* line_start: rw32, space voc_regs, reset unknown */
#define VOC_LINE_START_OFFSET                        0x247u /* established */
#define VOC_LINE_START_VALID_SHIFT                   14 /* established */
#define VOC_LINE_START_VALID_MASK                    0x1u
#define VOC_LINE_START_VALID_INPLACE                 (VOC_LINE_START_VALID_MASK << VOC_LINE_START_VALID_SHIFT)
#define VOC_LINE_START_GROUPXELS_M1_SHIFT            3 /* established */
#define VOC_LINE_START_GROUPXELS_M1_MASK             0x7ffu
#define VOC_LINE_START_GROUPXELS_M1_INPLACE          (VOC_LINE_START_GROUPXELS_M1_MASK << VOC_LINE_START_GROUPXELS_M1_SHIFT)
#define VOC_LINE_START_TILES_M1_SHIFT                0 /* established */
#define VOC_LINE_START_TILES_M1_MASK                 0x7u
#define VOC_LINE_START_TILES_M1_INPLACE              (VOC_LINE_START_TILES_M1_MASK << VOC_LINE_START_TILES_M1_SHIFT)

/* line_middle: rw32, space voc_regs, reset unknown */
#define VOC_LINE_MIDDLE_OFFSET                       0x248u /* established */
#define VOC_LINE_MIDDLE_REPEAT_COUNT_SHIFT           15 /* established */
#define VOC_LINE_MIDDLE_REPEAT_COUNT_MASK            0xffu
#define VOC_LINE_MIDDLE_REPEAT_COUNT_INPLACE         (VOC_LINE_MIDDLE_REPEAT_COUNT_MASK << VOC_LINE_MIDDLE_REPEAT_COUNT_SHIFT)
#define VOC_LINE_MIDDLE_VALID_SHIFT                  14 /* established */
#define VOC_LINE_MIDDLE_VALID_MASK                   0x1u
#define VOC_LINE_MIDDLE_VALID_INPLACE                (VOC_LINE_MIDDLE_VALID_MASK << VOC_LINE_MIDDLE_VALID_SHIFT)
#define VOC_LINE_MIDDLE_GROUPXELS_M1_SHIFT           3 /* established */
#define VOC_LINE_MIDDLE_GROUPXELS_M1_MASK            0x7ffu
#define VOC_LINE_MIDDLE_GROUPXELS_M1_INPLACE         (VOC_LINE_MIDDLE_GROUPXELS_M1_MASK << VOC_LINE_MIDDLE_GROUPXELS_M1_SHIFT)
#define VOC_LINE_MIDDLE_TILES_M1_SHIFT               0 /* established */
#define VOC_LINE_MIDDLE_TILES_M1_MASK                0x7u
#define VOC_LINE_MIDDLE_TILES_M1_INPLACE             (VOC_LINE_MIDDLE_TILES_M1_MASK << VOC_LINE_MIDDLE_TILES_M1_SHIFT)

/* line_end: rw32, space voc_regs, reset unknown */
#define VOC_LINE_END_OFFSET                          0x249u /* established */
#define VOC_LINE_END_VALID_SHIFT                     14 /* established */
#define VOC_LINE_END_VALID_MASK                      0x1u
#define VOC_LINE_END_VALID_INPLACE                   (VOC_LINE_END_VALID_MASK << VOC_LINE_END_VALID_SHIFT)
#define VOC_LINE_END_GROUPXELS_M1_SHIFT              3 /* established */
#define VOC_LINE_END_GROUPXELS_M1_MASK               0x7ffu
#define VOC_LINE_END_GROUPXELS_M1_INPLACE            (VOC_LINE_END_GROUPXELS_M1_MASK << VOC_LINE_END_GROUPXELS_M1_SHIFT)
#define VOC_LINE_END_TILES_M1_SHIFT                  0 /* established */
#define VOC_LINE_END_TILES_M1_MASK                   0x7u
#define VOC_LINE_END_TILES_M1_INPLACE                (VOC_LINE_END_TILES_M1_MASK << VOC_LINE_END_TILES_M1_SHIFT)

/* pan: rw32, space voc_regs, reset unknown */
#define VOC_PAN_OFFSET                               0x24au /* established */
#define VOC_PAN_PIXEL_OFFSET_SHIFT                   6 /* established */
#define VOC_PAN_PIXEL_OFFSET_MASK                    0x3u
#define VOC_PAN_PIXEL_OFFSET_INPLACE                 (VOC_PAN_PIXEL_OFFSET_MASK << VOC_PAN_PIXEL_OFFSET_SHIFT)
#define VOC_PAN_GROUPXEL_OFFSET_SHIFT                0 /* established */
#define VOC_PAN_GROUPXEL_OFFSET_MASK                 0x3fu
#define VOC_PAN_GROUPXEL_OFFSET_INPLACE              (VOC_PAN_GROUPXEL_OFFSET_MASK << VOC_PAN_GROUPXEL_OFFSET_SHIFT)

/* z_request: rw32, space voc_regs, reset unknown */
#define VOC_Z_REQUEST_OFFSET                         0x24bu /* established */
#define VOC_Z_REQUEST_ENABLE_SHIFT                   4 /* established */
#define VOC_Z_REQUEST_ENABLE_MASK                    0x1u
#define VOC_Z_REQUEST_ENABLE_INPLACE                 (VOC_Z_REQUEST_ENABLE_MASK << VOC_Z_REQUEST_ENABLE_SHIFT)
#define VOC_Z_REQUEST_FIELD_COUNT_SHIFT              0 /* established */
#define VOC_Z_REQUEST_FIELD_COUNT_MASK               0xfu
#define VOC_Z_REQUEST_FIELD_COUNT_INPLACE            (VOC_Z_REQUEST_FIELD_COUNT_MASK << VOC_Z_REQUEST_FIELD_COUNT_SHIFT)

/* field_start0: rw32, space voc_regs, reset unknown */
#define VOC_FIELD_START0_OFFSET                      0x250u /* inferred */
#define VOC_FIELD_START0_COUNT                       8
#define VOC_FIELD_START0_STRIDE                      1
#define VOC_FIELD_START0_SKIP_SHIFT                  20 /* established */
#define VOC_FIELD_START0_SKIP_MASK                   0xfu
#define VOC_FIELD_START0_SKIP_INPLACE                (VOC_FIELD_START0_SKIP_MASK << VOC_FIELD_START0_SKIP_SHIFT)
#define VOC_FIELD_START0_FIRST_TILE_SHIFT            7 /* established */
#define VOC_FIELD_START0_FIRST_TILE_MASK             0x1fffu
#define VOC_FIELD_START0_FIRST_TILE_INPLACE          (VOC_FIELD_START0_FIRST_TILE_MASK << VOC_FIELD_START0_FIRST_TILE_SHIFT)
#define VOC_FIELD_START0_START_LINE_SHIFT            0 /* established */
#define VOC_FIELD_START0_START_LINE_MASK             0x7fu
#define VOC_FIELD_START0_START_LINE_INPLACE          (VOC_FIELD_START0_START_LINE_MASK << VOC_FIELD_START0_START_LINE_SHIFT)

/* field_start1: rw32, space voc_regs, reset unknown */
#define VOC_FIELD_START1_OFFSET                      0x258u /* inferred */
#define VOC_FIELD_START1_COUNT                       8
#define VOC_FIELD_START1_STRIDE                      1
#define VOC_FIELD_START1_SKIP_SHIFT                  20 /* established */
#define VOC_FIELD_START1_SKIP_MASK                   0xfu
#define VOC_FIELD_START1_SKIP_INPLACE                (VOC_FIELD_START1_SKIP_MASK << VOC_FIELD_START1_SKIP_SHIFT)
#define VOC_FIELD_START1_FIRST_TILE_SHIFT            7 /* established */
#define VOC_FIELD_START1_FIRST_TILE_MASK             0x1fffu
#define VOC_FIELD_START1_FIRST_TILE_INPLACE          (VOC_FIELD_START1_FIRST_TILE_MASK << VOC_FIELD_START1_FIRST_TILE_SHIFT)
#define VOC_FIELD_START1_START_LINE_SHIFT            0 /* established */
#define VOC_FIELD_START1_START_LINE_MASK             0x7fu
#define VOC_FIELD_START1_START_LINE_INPLACE          (VOC_FIELD_START1_START_LINE_MASK << VOC_FIELD_START1_START_LINE_SHIFT)

/* field_pattern: rw32, space voc_regs, reset unknown */
#define VOC_FIELD_PATTERN_OFFSET                     0x260u /* inferred */
#define VOC_FIELD_PATTERN_COUNT                      8
#define VOC_FIELD_PATTERN_STRIDE                     1
#define VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_SHIFT   24 /* established */
#define VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_MASK    0xfu
#define VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_INPLACE (VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_MASK << VOC_FIELD_PATTERN_NEXT_CURSOR_OFFSET_SHIFT)
#define VOC_FIELD_PATTERN_ACTIVE_LINES_SHIFT         12 /* established */
#define VOC_FIELD_PATTERN_ACTIVE_LINES_MASK          0xfffu
#define VOC_FIELD_PATTERN_ACTIVE_LINES_INPLACE       (VOC_FIELD_PATTERN_ACTIVE_LINES_MASK << VOC_FIELD_PATTERN_ACTIVE_LINES_SHIFT)
#define VOC_FIELD_PATTERN_COLOUR3_SHIFT              10 /* established */
#define VOC_FIELD_PATTERN_COLOUR3_MASK               0x3u
#define VOC_FIELD_PATTERN_COLOUR3_INPLACE            (VOC_FIELD_PATTERN_COLOUR3_MASK << VOC_FIELD_PATTERN_COLOUR3_SHIFT)
#define VOC_FIELD_PATTERN_EYE3_SHIFT                 9 /* established */
#define VOC_FIELD_PATTERN_EYE3_MASK                  0x1u
#define VOC_FIELD_PATTERN_EYE3_INPLACE               (VOC_FIELD_PATTERN_EYE3_MASK << VOC_FIELD_PATTERN_EYE3_SHIFT)
#define VOC_FIELD_PATTERN_COLOUR2_SHIFT              7 /* established */
#define VOC_FIELD_PATTERN_COLOUR2_MASK               0x3u
#define VOC_FIELD_PATTERN_COLOUR2_INPLACE            (VOC_FIELD_PATTERN_COLOUR2_MASK << VOC_FIELD_PATTERN_COLOUR2_SHIFT)
#define VOC_FIELD_PATTERN_EYE2_SHIFT                 6 /* established */
#define VOC_FIELD_PATTERN_EYE2_MASK                  0x1u
#define VOC_FIELD_PATTERN_EYE2_INPLACE               (VOC_FIELD_PATTERN_EYE2_MASK << VOC_FIELD_PATTERN_EYE2_SHIFT)
#define VOC_FIELD_PATTERN_COLOUR1_SHIFT              4 /* established */
#define VOC_FIELD_PATTERN_COLOUR1_MASK               0x3u
#define VOC_FIELD_PATTERN_COLOUR1_INPLACE            (VOC_FIELD_PATTERN_COLOUR1_MASK << VOC_FIELD_PATTERN_COLOUR1_SHIFT)
#define VOC_FIELD_PATTERN_EYE1_SHIFT                 3 /* established */
#define VOC_FIELD_PATTERN_EYE1_MASK                  0x1u
#define VOC_FIELD_PATTERN_EYE1_INPLACE               (VOC_FIELD_PATTERN_EYE1_MASK << VOC_FIELD_PATTERN_EYE1_SHIFT)
#define VOC_FIELD_PATTERN_COLOUR0_SHIFT              1 /* established */
#define VOC_FIELD_PATTERN_COLOUR0_MASK               0x3u
#define VOC_FIELD_PATTERN_COLOUR0_INPLACE            (VOC_FIELD_PATTERN_COLOUR0_MASK << VOC_FIELD_PATTERN_COLOUR0_SHIFT)
#define VOC_FIELD_PATTERN_EYE0_SHIFT                 0 /* established */
#define VOC_FIELD_PATTERN_EYE0_MASK                  0x1u
#define VOC_FIELD_PATTERN_EYE0_INPLACE               (VOC_FIELD_PATTERN_EYE0_MASK << VOC_FIELD_PATTERN_EYE0_SHIFT)

/* pll_control: rw32, space voc_regs, reset unknown */
#define VOC_PLL_CONTROL_OFFSET                       0x270u /* established */
#define VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_SHIFT    4 /* established */
#define VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_MASK     0x1u
#define VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_INPLACE  (VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_MASK << VOC_PLL_CONTROL_EXEC_WRITE_EXTERNAL_SHIFT)
#define VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_SHIFT    3 /* established */
#define VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_MASK     0x1u
#define VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_INPLACE  (VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_MASK << VOC_PLL_CONTROL_EXEC_WRITE_INTERNAL_SHIFT)
#define VOC_PLL_CONTROL_EXEC_READ_SHIFT              2 /* established */
#define VOC_PLL_CONTROL_EXEC_READ_MASK               0x1u
#define VOC_PLL_CONTROL_EXEC_READ_INPLACE            (VOC_PLL_CONTROL_EXEC_READ_MASK << VOC_PLL_CONTROL_EXEC_READ_SHIFT)
#define VOC_PLL_CONTROL_AUTO_UPDATE_SHIFT            1 /* established */
#define VOC_PLL_CONTROL_AUTO_UPDATE_MASK             0x1u
#define VOC_PLL_CONTROL_AUTO_UPDATE_INPLACE          (VOC_PLL_CONTROL_AUTO_UPDATE_MASK << VOC_PLL_CONTROL_AUTO_UPDATE_SHIFT)
#define VOC_PLL_CONTROL_READY_SHIFT                  0 /* established */
#define VOC_PLL_CONTROL_READY_MASK                   0x1u
#define VOC_PLL_CONTROL_READY_INPLACE                (VOC_PLL_CONTROL_READY_MASK << VOC_PLL_CONTROL_READY_SHIFT)

/* pll_address: rw32, space voc_regs, reset unknown */
#define VOC_PLL_ADDRESS_OFFSET                       0x271u /* established */
#define VOC_PLL_ADDRESS_ADDRESS_SHIFT                0 /* established */
#define VOC_PLL_ADDRESS_ADDRESS_MASK                 0xfu
#define VOC_PLL_ADDRESS_ADDRESS_INPLACE              (VOC_PLL_ADDRESS_ADDRESS_MASK << VOC_PLL_ADDRESS_ADDRESS_SHIFT)

/* pll_readback: r32, space voc_regs, reset unknown */
#define VOC_PLL_READBACK_OFFSET                      0x272u /* established */
#define VOC_PLL_READBACK_VALUE_SHIFT                 0 /* established */
#define VOC_PLL_READBACK_VALUE_MASK                  0x7ffu
#define VOC_PLL_READBACK_VALUE_INPLACE               (VOC_PLL_READBACK_VALUE_MASK << VOC_PLL_READBACK_VALUE_SHIFT)

/* pll_data: rw32, space voc_regs, reset unknown */
#define VOC_PLL_DATA_OFFSET                          0x273u /* established */
#define VOC_PLL_DATA_VALUE_SHIFT                     0 /* established */
#define VOC_PLL_DATA_VALUE_MASK                      0x7ffu
#define VOC_PLL_DATA_VALUE_INPLACE                   (VOC_PLL_DATA_VALUE_MASK << VOC_PLL_DATA_VALUE_SHIFT)

/* genlock_hclock: rw32, space voc_regs, reset unknown */
#define VOC_GENLOCK_HCLOCK_OFFSET                    0x281u /* established */
#define VOC_GENLOCK_HCLOCK_H_DIVIDER_SHIFT           2 /* established */
#define VOC_GENLOCK_HCLOCK_H_DIVIDER_MASK            0x3ffu
#define VOC_GENLOCK_HCLOCK_H_DIVIDER_INPLACE         (VOC_GENLOCK_HCLOCK_H_DIVIDER_MASK << VOC_GENLOCK_HCLOCK_H_DIVIDER_SHIFT)
#define VOC_GENLOCK_HCLOCK_AUTO_CLOCK_SHIFT          1 /* established */
#define VOC_GENLOCK_HCLOCK_AUTO_CLOCK_MASK           0x1u
#define VOC_GENLOCK_HCLOCK_AUTO_CLOCK_INPLACE        (VOC_GENLOCK_HCLOCK_AUTO_CLOCK_MASK << VOC_GENLOCK_HCLOCK_AUTO_CLOCK_SHIFT)
#define VOC_GENLOCK_HCLOCK_SOURCE_SHIFT              0 /* established */
#define VOC_GENLOCK_HCLOCK_SOURCE_MASK               0x1u
#define VOC_GENLOCK_HCLOCK_SOURCE_INPLACE            (VOC_GENLOCK_HCLOCK_SOURCE_MASK << VOC_GENLOCK_HCLOCK_SOURCE_SHIFT)
#define VOC_GENLOCK_HCLOCK_SOURCE_EXTERNAL           0 /* established */
#define VOC_GENLOCK_HCLOCK_SOURCE_INTERNAL           1 /* established */

/* genlock_line_ratio: rw32, space voc_regs, reset unknown */
#define VOC_GENLOCK_LINE_RATIO_OFFSET                0x282u /* established */
#define VOC_GENLOCK_LINE_RATIO_DIVIDER_SHIFT         14 /* established */
#define VOC_GENLOCK_LINE_RATIO_DIVIDER_MASK          0xffu
#define VOC_GENLOCK_LINE_RATIO_DIVIDER_INPLACE       (VOC_GENLOCK_LINE_RATIO_DIVIDER_MASK << VOC_GENLOCK_LINE_RATIO_DIVIDER_SHIFT)
#define VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_SHIFT     1 /* established */
#define VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_MASK      0x1fffu
#define VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_INPLACE   (VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_MASK << VOC_GENLOCK_LINE_RATIO_LINE_LENGTH_SHIFT)
#define VOC_GENLOCK_LINE_RATIO_EDGE_SHIFT            0 /* established */
#define VOC_GENLOCK_LINE_RATIO_EDGE_MASK             0x1u
#define VOC_GENLOCK_LINE_RATIO_EDGE_INPLACE          (VOC_GENLOCK_LINE_RATIO_EDGE_MASK << VOC_GENLOCK_LINE_RATIO_EDGE_SHIFT)
#define VOC_GENLOCK_LINE_RATIO_EDGE_FALLING          0 /* established */
#define VOC_GENLOCK_LINE_RATIO_EDGE_RISING           1 /* established */

/* hmask2: rw32, space voc_regs, reset unknown */
#define VOC_HMASK2_OFFSET                            0x283u /* established */
#define VOC_HMASK2_WIDTH_SHIFT                       13 /* established */
#define VOC_HMASK2_WIDTH_MASK                        0x1fffu
#define VOC_HMASK2_WIDTH_INPLACE                     (VOC_HMASK2_WIDTH_MASK << VOC_HMASK2_WIDTH_SHIFT)
#define VOC_HMASK2_START_SHIFT                       0 /* established */
#define VOC_HMASK2_START_MASK                        0x1fffu
#define VOC_HMASK2_START_INPLACE                     (VOC_HMASK2_START_MASK << VOC_HMASK2_START_SHIFT)

/* backporch_clamp: rw32, space voc_regs, reset unknown */
#define VOC_BACKPORCH_CLAMP_OFFSET                   0x284u /* established */
#define VOC_BACKPORCH_CLAMP_WIDTH_SHIFT              14 /* established */
#define VOC_BACKPORCH_CLAMP_WIDTH_MASK               0xffu
#define VOC_BACKPORCH_CLAMP_WIDTH_INPLACE            (VOC_BACKPORCH_CLAMP_WIDTH_MASK << VOC_BACKPORCH_CLAMP_WIDTH_SHIFT)
#define VOC_BACKPORCH_CLAMP_DELAY_SHIFT              1 /* established */
#define VOC_BACKPORCH_CLAMP_DELAY_MASK               0x1fffu
#define VOC_BACKPORCH_CLAMP_DELAY_INPLACE            (VOC_BACKPORCH_CLAMP_DELAY_MASK << VOC_BACKPORCH_CLAMP_DELAY_SHIFT)
#define VOC_BACKPORCH_CLAMP_EDGE_SHIFT               0 /* established */
#define VOC_BACKPORCH_CLAMP_EDGE_MASK                0x1u
#define VOC_BACKPORCH_CLAMP_EDGE_INPLACE             (VOC_BACKPORCH_CLAMP_EDGE_MASK << VOC_BACKPORCH_CLAMP_EDGE_SHIFT)

/* fifo_control: rw32, space voc_regs, reset unknown */
#define VOC_FIFO_CONTROL_OFFSET                      0x28au /* established */
#define VOC_FIFO_CONTROL_INT_SOURCE_ODD_SHIFT        15 /* established */
#define VOC_FIFO_CONTROL_INT_SOURCE_ODD_MASK         0x1u
#define VOC_FIFO_CONTROL_INT_SOURCE_ODD_INPLACE      (VOC_FIFO_CONTROL_INT_SOURCE_ODD_MASK << VOC_FIFO_CONTROL_INT_SOURCE_ODD_SHIFT)
#define VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_SHIFT    14 /* established */
#define VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_MASK     0x1u
#define VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_INPLACE  (VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_MASK << VOC_FIFO_CONTROL_EXT_CONTROL_ENABLE_SHIFT)
#define VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_SHIFT    13 /* established */
#define VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_MASK     0x1u
#define VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_INPLACE  (VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_MASK << VOC_FIFO_CONTROL_FIELD_RESET_ENABLE_SHIFT)
#define VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_SHIFT    12 /* established */
#define VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_MASK     0x1u
#define VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_INPLACE  (VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_MASK << VOC_FIFO_CONTROL_FRAME_RESET_ENABLE_SHIFT)
#define VOC_FIFO_CONTROL_HIGH_WATER_SHIFT            0 /* established */
#define VOC_FIFO_CONTROL_HIGH_WATER_MASK             0xfffu
#define VOC_FIFO_CONTROL_HIGH_WATER_INPLACE          (VOC_FIFO_CONTROL_HIGH_WATER_MASK << VOC_FIFO_CONTROL_HIGH_WATER_SHIFT)

/* fifo_pointer: rw32, space voc_regs, reset unknown */
#define VOC_FIFO_POINTER_OFFSET                      0x28bu /* established */
#define VOC_FIFO_POINTER_READ_PTR_SHIFT              11 /* established */
#define VOC_FIFO_POINTER_READ_PTR_MASK               0x7ffu
#define VOC_FIFO_POINTER_READ_PTR_INPLACE            (VOC_FIFO_POINTER_READ_PTR_MASK << VOC_FIFO_POINTER_READ_PTR_SHIFT)
#define VOC_FIFO_POINTER_WRITE_PTR_SHIFT             0 /* established */
#define VOC_FIFO_POINTER_WRITE_PTR_MASK              0x7ffu
#define VOC_FIFO_POINTER_WRITE_PTR_INPLACE           (VOC_FIFO_POINTER_WRITE_PTR_MASK << VOC_FIFO_POINTER_WRITE_PTR_SHIFT)

/* sac_control: rw32, space voc_regs, reset unknown */
#define VOC_SAC_CONTROL_OFFSET                       0x28du /* established */
#define VOC_SAC_CONTROL_OUTPUT_ENABLE_SHIFT          1 /* established */
#define VOC_SAC_CONTROL_OUTPUT_ENABLE_MASK           0x1u
#define VOC_SAC_CONTROL_OUTPUT_ENABLE_INPLACE        (VOC_SAC_CONTROL_OUTPUT_ENABLE_MASK << VOC_SAC_CONTROL_OUTPUT_ENABLE_SHIFT)
#define VOC_SAC_CONTROL_INPUT_ENABLE_SHIFT           0 /* established */
#define VOC_SAC_CONTROL_INPUT_ENABLE_MASK            0x1u
#define VOC_SAC_CONTROL_INPUT_ENABLE_INPLACE         (VOC_SAC_CONTROL_INPUT_ENABLE_MASK << VOC_SAC_CONTROL_INPUT_ENABLE_SHIFT)

/* scaler_control: rw32, space voc_regs, reset unknown */
#define VOC_SCALER_CONTROL_OFFSET                    0x28fu /* established */
#define VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_SHIFT 19 /* established */
#define VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_MASK  0x3u
#define VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_INPLACE (VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_MASK << VOC_SCALER_CONTROL_FIRST_FIELD_INHIBIT_SHIFT)
#define VOC_SCALER_CONTROL_VMINIFY_KICK_SHIFT        15 /* established */
#define VOC_SCALER_CONTROL_VMINIFY_KICK_MASK         0xfu
#define VOC_SCALER_CONTROL_VMINIFY_KICK_INPLACE      (VOC_SCALER_CONTROL_VMINIFY_KICK_MASK << VOC_SCALER_CONTROL_VMINIFY_KICK_SHIFT)
#define VOC_SCALER_CONTROL_ENC_STEREO_MODE_SHIFT     14 /* established */
#define VOC_SCALER_CONTROL_ENC_STEREO_MODE_MASK      0x1u
#define VOC_SCALER_CONTROL_ENC_STEREO_MODE_INPLACE   (VOC_SCALER_CONTROL_ENC_STEREO_MODE_MASK << VOC_SCALER_CONTROL_ENC_STEREO_MODE_SHIFT)
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_SHIFT      12 /* established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_MASK       0x3u
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_INPLACE    (VOC_SCALER_CONTROL_ENC_FRAME_MODE_MASK << VOC_SCALER_CONTROL_ENC_FRAME_MODE_SHIFT)
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_NO_DROP    0 /* established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_FIELD_DROP 1 /* established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_FRAME_DROP 2 /* established */
#define VOC_SCALER_CONTROL_ENC_FRAME_MODE_LOW_LATENCY 3 /* established */
#define VOC_SCALER_CONTROL_FIFO_READ_CLOCK_SHIFT     11 /* established */
#define VOC_SCALER_CONTROL_FIFO_READ_CLOCK_MASK      0x1u
#define VOC_SCALER_CONTROL_FIFO_READ_CLOCK_INPLACE   (VOC_SCALER_CONTROL_FIFO_READ_CLOCK_MASK << VOC_SCALER_CONTROL_FIFO_READ_CLOCK_SHIFT)
#define VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_SHIFT 10 /* established */
#define VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_MASK 0x1u
#define VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_INPLACE (VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_MASK << VOC_SCALER_CONTROL_ENC_FB_WRITE_CLOCK_ENABLE_SHIFT)
#define VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_SHIFT 9 /* established */
#define VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_MASK  0x1u
#define VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_INPLACE (VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_MASK << VOC_SCALER_CONTROL_ENC_FIELD_DOMINANCE_SHIFT)
#define VOC_SCALER_CONTROL_FIELD_OUT_SELECT_SHIFT    8 /* established */
#define VOC_SCALER_CONTROL_FIELD_OUT_SELECT_MASK     0x1u
#define VOC_SCALER_CONTROL_FIELD_OUT_SELECT_INPLACE  (VOC_SCALER_CONTROL_FIELD_OUT_SELECT_MASK << VOC_SCALER_CONTROL_FIELD_OUT_SELECT_SHIFT)
#define VOC_SCALER_CONTROL_INTERLACE_SHIFT           7 /* established */
#define VOC_SCALER_CONTROL_INTERLACE_MASK            0x1u
#define VOC_SCALER_CONTROL_INTERLACE_INPLACE         (VOC_SCALER_CONTROL_INTERLACE_MASK << VOC_SCALER_CONTROL_INTERLACE_SHIFT)
#define VOC_SCALER_CONTROL_SEG_PRELOAD_SHIFT         5 /* established */
#define VOC_SCALER_CONTROL_SEG_PRELOAD_MASK          0x3u
#define VOC_SCALER_CONTROL_SEG_PRELOAD_INPLACE       (VOC_SCALER_CONTROL_SEG_PRELOAD_MASK << VOC_SCALER_CONTROL_SEG_PRELOAD_SHIFT)
#define VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_SHIFT 4 /* established */
#define VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_MASK 0x1u
#define VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_INPLACE (VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_MASK << VOC_SCALER_CONTROL_X_MAGNIFY_START_PAIR_SHIFT)
#define VOC_SCALER_CONTROL_Y_FILTER_SHIFT            2 /* established */
#define VOC_SCALER_CONTROL_Y_FILTER_MASK             0x3u
#define VOC_SCALER_CONTROL_Y_FILTER_INPLACE          (VOC_SCALER_CONTROL_Y_FILTER_MASK << VOC_SCALER_CONTROL_Y_FILTER_SHIFT)
#define VOC_SCALER_CONTROL_X_FILTER_SHIFT            0 /* established */
#define VOC_SCALER_CONTROL_X_FILTER_MASK             0x3u
#define VOC_SCALER_CONTROL_X_FILTER_INPLACE          (VOC_SCALER_CONTROL_X_FILTER_MASK << VOC_SCALER_CONTROL_X_FILTER_SHIFT)
#define VOC_SCALER_CONTROL_X_FILTER_NONE             0 /* established */
#define VOC_SCALER_CONTROL_X_FILTER_MINIFY           1 /* established */
#define VOC_SCALER_CONTROL_X_FILTER_MAGNIFY          2 /* established */

/* x_coeff_max: rw32, space voc_regs, reset unknown */
#define VOC_X_COEFF_MAX_OFFSET                       0x290u /* established */
#define VOC_X_COEFF_MAX_VALUE_SHIFT                  0 /* established */
#define VOC_X_COEFF_MAX_VALUE_MASK                   0xfffffu
#define VOC_X_COEFF_MAX_VALUE_INPLACE                (VOC_X_COEFF_MAX_VALUE_MASK << VOC_X_COEFF_MAX_VALUE_SHIFT)

/* x_slope: rw32, space voc_regs, reset unknown */
#define VOC_X_SLOPE_OFFSET                           0x291u /* established */
#define VOC_X_SLOPE_VALUE_SHIFT                      0 /* established */
#define VOC_X_SLOPE_VALUE_MASK                       0x1fffffu
#define VOC_X_SLOPE_VALUE_INPLACE                    (VOC_X_SLOPE_VALUE_MASK << VOC_X_SLOPE_VALUE_SHIFT)

/* x_delta: rw32, space voc_regs, reset unknown */
#define VOC_X_DELTA_OFFSET                           0x292u /* established */
#define VOC_X_DELTA_VALUE_SHIFT                      0 /* established */
#define VOC_X_DELTA_VALUE_MASK                       0xffffffu
#define VOC_X_DELTA_VALUE_INPLACE                    (VOC_X_DELTA_VALUE_MASK << VOC_X_DELTA_VALUE_SHIFT)

/* x_seg_start: rw32, space voc_regs, reset unknown */
#define VOC_X_SEG_START_OFFSET                       0x293u /* established */
#define VOC_X_SEG_START_COUNT                        4
#define VOC_X_SEG_START_STRIDE                       1
#define VOC_X_SEG_START_VALUE_SHIFT                  0 /* established */
#define VOC_X_SEG_START_VALUE_MASK                   0xffffffu
#define VOC_X_SEG_START_VALUE_INPLACE                (VOC_X_SEG_START_VALUE_MASK << VOC_X_SEG_START_VALUE_SHIFT)

/* y_coeff_max: rw32, space voc_regs, reset unknown */
#define VOC_Y_COEFF_MAX_OFFSET                       0x297u /* established */
#define VOC_Y_COEFF_MAX_VALUE_SHIFT                  0 /* established */
#define VOC_Y_COEFF_MAX_VALUE_MASK                   0xfffffu
#define VOC_Y_COEFF_MAX_VALUE_INPLACE                (VOC_Y_COEFF_MAX_VALUE_MASK << VOC_Y_COEFF_MAX_VALUE_SHIFT)

/* y_slope: rw32, space voc_regs, reset unknown */
#define VOC_Y_SLOPE_OFFSET                           0x298u /* established */
#define VOC_Y_SLOPE_VALUE_SHIFT                      0 /* established */
#define VOC_Y_SLOPE_VALUE_MASK                       0x1fffffu
#define VOC_Y_SLOPE_VALUE_INPLACE                    (VOC_Y_SLOPE_VALUE_MASK << VOC_Y_SLOPE_VALUE_SHIFT)

/* y_delta: rw32, space voc_regs, reset unknown */
#define VOC_Y_DELTA_OFFSET                           0x299u /* established */
#define VOC_Y_DELTA_VALUE_SHIFT                      0 /* established */
#define VOC_Y_DELTA_VALUE_MASK                       0xffffffu
#define VOC_Y_DELTA_VALUE_INPLACE                    (VOC_Y_DELTA_VALUE_MASK << VOC_Y_DELTA_VALUE_SHIFT)

/* y_seg_start: rw32, space voc_regs, reset unknown */
#define VOC_Y_SEG_START_OFFSET                       0x29au /* established */
#define VOC_Y_SEG_START_COUNT                        4
#define VOC_Y_SEG_START_STRIDE                       1
#define VOC_Y_SEG_START_VALUE_SHIFT                  0 /* established */
#define VOC_Y_SEG_START_VALUE_MASK                   0xffffffu
#define VOC_Y_SEG_START_VALUE_INPLACE                (VOC_Y_SEG_START_VALUE_MASK << VOC_Y_SEG_START_VALUE_SHIFT)

#define VOC_BASE_ADDRESS                             0x200u /* established */
#define VOC_BASE_IDS                                 0x8u /* established */
#define VOC_EDGE_SLOTS                               0x8u /* established */
#define VOC_EDGE_SLOT_UNUSED                         0x1fffu /* established */
#define VOC_GROUPXEL_PIXELS                          0x4u /* established */
#define VOC_ID_STRIDE                                0x100u /* established */
#define VOC_PAN_GROUPXELS                            0xa0u /* established */

#endif /* VOC_GEN_H */
