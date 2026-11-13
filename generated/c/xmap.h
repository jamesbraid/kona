/* generated from devices/xmap/registers.toml by defs-gen - do not edit, change the source */
/* XMAP registers and the words written through them */
#ifndef XMAP_GEN_H
#define XMAP_GEN_H

#include <stdint.h>


/* cursor_channel: w32, space xmap_regs, reset unknown */
#define XMAP_CURSOR_CHANNEL_OFFSET                   0x100u /* established */
#define XMAP_CURSOR_CHANNEL_CHANNEL_SHIFT            0 /* established */
#define XMAP_CURSOR_CHANNEL_CHANNEL_MASK             0x1fu
#define XMAP_CURSOR_CHANNEL_CHANNEL_INPLACE          (XMAP_CURSOR_CHANNEL_CHANNEL_MASK << XMAP_CURSOR_CHANNEL_CHANNEL_SHIFT)

/* cursor_base: w32, space xmap_regs, reset unknown */
#define XMAP_CURSOR_BASE_OFFSET                      0x101u /* established */
#define XMAP_CURSOR_BASE_BASE_SHIFT                  0 /* established */
#define XMAP_CURSOR_BASE_BASE_MASK                   0x1ffffu
#define XMAP_CURSOR_BASE_BASE_INPLACE                (XMAP_CURSOR_BASE_BASE_MASK << XMAP_CURSOR_BASE_BASE_SHIFT)

/* cursor_pos: w32, space xmap_regs, reset unknown */
#define XMAP_CURSOR_POS_OFFSET                       0x102u /* established */
#define XMAP_CURSOR_POS_Y_SHIFT                      13 /* established */
#define XMAP_CURSOR_POS_Y_MASK                       0x1fffu
#define XMAP_CURSOR_POS_Y_INPLACE                    (XMAP_CURSOR_POS_Y_MASK << XMAP_CURSOR_POS_Y_SHIFT)
#define XMAP_CURSOR_POS_X_SHIFT                      0 /* established */
#define XMAP_CURSOR_POS_X_MASK                       0x1fffu
#define XMAP_CURSOR_POS_X_INPLACE                    (XMAP_CURSOR_POS_X_MASK << XMAP_CURSOR_POS_X_SHIFT)

/* cursor_mode: w32, space xmap_regs, reset unknown */
#define XMAP_CURSOR_MODE_OFFSET                      0x103u /* established */
#define XMAP_CURSOR_MODE_MODE_SHIFT                  0 /* established */
#define XMAP_CURSOR_MODE_MODE_MASK                   0x1ffu
#define XMAP_CURSOR_MODE_MODE_INPLACE                (XMAP_CURSOR_MODE_MODE_MASK << XMAP_CURSOR_MODE_MODE_SHIFT)
#define XMAP_CURSOR_MODE_MODE_OFF                    0 /* established */
#define XMAP_CURSOR_MODE_MODE_CROSSHAIR              1 /* established */
#define XMAP_CURSOR_MODE_MODE_GLYPH                  2 /* established */

/* copy_strobe: w32, space xmap_regs, reset unknown */
#define XMAP_COPY_STROBE_OFFSET                      0x104u /* established */
#define XMAP_COPY_STROBE_FORCE_CURSOR_POS_SHIFT      2 /* inferred */
#define XMAP_COPY_STROBE_FORCE_CURSOR_POS_MASK       0x1u
#define XMAP_COPY_STROBE_FORCE_CURSOR_POS_INPLACE    (XMAP_COPY_STROBE_FORCE_CURSOR_POS_MASK << XMAP_COPY_STROBE_FORCE_CURSOR_POS_SHIFT)
#define XMAP_COPY_STROBE_COPY_SHIFT                  0 /* established */
#define XMAP_COPY_STROBE_COPY_MASK                   0x1u
#define XMAP_COPY_STROBE_COPY_INPLACE                (XMAP_COPY_STROBE_COPY_MASK << XMAP_COPY_STROBE_COPY_SHIFT)

/* subst_enable: w32, space xmap_regs, reset unknown */
#define XMAP_SUBST_ENABLE_OFFSET                     0x105u /* inferred */
#define XMAP_SUBST_ENABLE_ENABLE_SHIFT               0 /* inferred */
#define XMAP_SUBST_ENABLE_ENABLE_MASK                0x1u
#define XMAP_SUBST_ENABLE_ENABLE_INPLACE             (XMAP_SUBST_ENABLE_ENABLE_MASK << XMAP_SUBST_ENABLE_ENABLE_SHIFT)

/* subst_low: w32, space xmap_regs, reset unknown */
#define XMAP_SUBST_LOW_OFFSET                        0x106u /* established */

/* subst_high: w32, space xmap_regs, reset unknown */
#define XMAP_SUBST_HIGH_OFFSET                       0x107u /* established */
#define XMAP_SUBST_HIGH_MODE_SHIFT                   10 /* established */
#define XMAP_SUBST_HIGH_MODE_MASK                    0x3u
#define XMAP_SUBST_HIGH_MODE_INPLACE                 (XMAP_SUBST_HIGH_MODE_MASK << XMAP_SUBST_HIGH_MODE_SHIFT)
#define XMAP_SUBST_HIGH_COLOUR_HIGH_SHIFT            0 /* inferred */
#define XMAP_SUBST_HIGH_COLOUR_HIGH_MASK             0x3ffu
#define XMAP_SUBST_HIGH_COLOUR_HIGH_INPLACE          (XMAP_SUBST_HIGH_COLOUR_HIGH_MASK << XMAP_SUBST_HIGH_COLOUR_HIGH_SHIFT)

/* read_select: w32, space xmap_regs, reset unknown */
#define XMAP_READ_SELECT_OFFSET                      0x108u /* inferred */
#define XMAP_READ_SELECT_CHIP_SHIFT                  0 /* inferred */
#define XMAP_READ_SELECT_CHIP_MASK                   0x3u
#define XMAP_READ_SELECT_CHIP_INPLACE                (XMAP_READ_SELECT_CHIP_MASK << XMAP_READ_SELECT_CHIP_SHIFT)

/* unread_09: w32, space xmap_regs, reset unknown */
#define XMAP_UNREAD_09_OFFSET                        0x109u /* unknown */

/* crc_status: r32, space xmap_regs, reset unknown */
#define XMAP_CRC_STATUS_OFFSET                       0x10au /* unknown */

/* board_count: w32, space xmap_regs, reset unknown */
#define XMAP_BOARD_COUNT_OFFSET                      0x10bu /* established */
#define XMAP_BOARD_COUNT_CODE_SHIFT                  0 /* established */
#define XMAP_BOARD_COUNT_CODE_MASK                   0x3u
#define XMAP_BOARD_COUNT_CODE_INPLACE                (XMAP_BOARD_COUNT_CODE_MASK << XMAP_BOARD_COUNT_CODE_SHIFT)
#define XMAP_BOARD_COUNT_CODE_ONE_BOARD              0 /* established */
#define XMAP_BOARD_COUNT_CODE_TWO_BOARDS             1 /* established */
#define XMAP_BOARD_COUNT_CODE_FOUR_BOARDS            2 /* established */

/* di_compare_addr: w32, space xmap_regs, reset unknown */
#define XMAP_DI_COMPARE_ADDR_OFFSET                  0x10cu /* inferred */
#define XMAP_DI_COMPARE_ADDR_ADDR_SHIFT              0 /* inferred */
#define XMAP_DI_COMPARE_ADDR_ADDR_MASK               0x3fu
#define XMAP_DI_COMPARE_ADDR_ADDR_INPLACE            (XMAP_DI_COMPARE_ADDR_ADDR_MASK << XMAP_DI_COMPARE_ADDR_ADDR_SHIFT)

/* imp_delay: w32, space xmap_regs, reset unknown */
#define XMAP_IMP_DELAY_OFFSET                        0x10du /* inferred */
#define XMAP_IMP_DELAY_DELAY_SHIFT                   0 /* inferred */
#define XMAP_IMP_DELAY_DELAY_MASK                    0x1ffu
#define XMAP_IMP_DELAY_DELAY_INPLACE                 (XMAP_IMP_DELAY_DELAY_MASK << XMAP_IMP_DELAY_DELAY_SHIFT)

/* pipe_delay: w32, space xmap_regs, reset unknown */
#define XMAP_PIPE_DELAY_OFFSET                       0x10eu /* inferred */
#define XMAP_PIPE_DELAY_DELAY_SHIFT                  0 /* inferred */
#define XMAP_PIPE_DELAY_DELAY_MASK                   0x7u
#define XMAP_PIPE_DELAY_DELAY_INPLACE                (XMAP_PIPE_DELAY_DELAY_MASK << XMAP_PIPE_DELAY_DELAY_SHIFT)

/* fastlist_config: w32, space xmap_regs, reset unknown */
#define XMAP_FASTLIST_CONFIG_OFFSET                  0x10fu /* inferred */
#define XMAP_FASTLIST_CONFIG_FIXED_SHIFT             5 /* inferred */
#define XMAP_FASTLIST_CONFIG_FIXED_MASK              0x1fu
#define XMAP_FASTLIST_CONFIG_FIXED_INPLACE           (XMAP_FASTLIST_CONFIG_FIXED_MASK << XMAP_FASTLIST_CONFIG_FIXED_SHIFT)
#define XMAP_FASTLIST_CONFIG_CHUNK_SIZE_SHIFT        0 /* inferred */
#define XMAP_FASTLIST_CONFIG_CHUNK_SIZE_MASK         0x1fu
#define XMAP_FASTLIST_CONFIG_CHUNK_SIZE_INPLACE      (XMAP_FASTLIST_CONFIG_CHUNK_SIZE_MASK << XMAP_FASTLIST_CONFIG_CHUNK_SIZE_SHIFT)

/* unread_10: w32, space xmap_regs, reset unknown */
#define XMAP_UNREAD_10_OFFSET                        0x110u /* unknown */

/* readback_addr: w32, space xmap_regs, reset unknown */
#define XMAP_READBACK_ADDR_OFFSET                    0x111u /* inferred */
#define XMAP_READBACK_ADDR_ADDR_SHIFT                0 /* inferred */
#define XMAP_READBACK_ADDR_ADDR_MASK                 0x7ffffu
#define XMAP_READBACK_ADDR_ADDR_INPLACE              (XMAP_READBACK_ADDR_ADDR_MASK << XMAP_READBACK_ADDR_ADDR_SHIFT)

/* readback_data: r32, space xmap_regs, reset unknown */
#define XMAP_READBACK_DATA_OFFSET                    0x112u /* inferred */

/* ind_addr: w32, space xmap_regs, reset unknown */
#define XMAP_IND_ADDR_OFFSET                         0x118u /* established */
#define XMAP_IND_ADDR_FLAG_SHIFT                     18 /* unknown */
#define XMAP_IND_ADDR_FLAG_MASK                      0x1u
#define XMAP_IND_ADDR_FLAG_INPLACE                   (XMAP_IND_ADDR_FLAG_MASK << XMAP_IND_ADDR_FLAG_SHIFT)
#define XMAP_IND_ADDR_PAGE_SHIFT                     14 /* established */
#define XMAP_IND_ADDR_PAGE_MASK                      0xfu
#define XMAP_IND_ADDR_PAGE_INPLACE                   (XMAP_IND_ADDR_PAGE_MASK << XMAP_IND_ADDR_PAGE_SHIFT)
#define XMAP_IND_ADDR_COLOUR_SHIFT                   12 /* established */
#define XMAP_IND_ADDR_COLOUR_MASK                    0x3u
#define XMAP_IND_ADDR_COLOUR_INPLACE                 (XMAP_IND_ADDR_COLOUR_MASK << XMAP_IND_ADDR_COLOUR_SHIFT)
#define XMAP_IND_ADDR_COLOUR_RED                     0 /* established */
#define XMAP_IND_ADDR_COLOUR_GREEN                   1 /* established */
#define XMAP_IND_ADDR_COLOUR_BLUE                    2 /* established */
#define XMAP_IND_ADDR_ENTRY_SHIFT                    0 /* established */
#define XMAP_IND_ADDR_ENTRY_MASK                     0xfffu
#define XMAP_IND_ADDR_ENTRY_INPLACE                  (XMAP_IND_ADDR_ENTRY_MASK << XMAP_IND_ADDR_ENTRY_SHIFT)

/* cmap_data: w32, space xmap_regs, reset unknown */
#define XMAP_CMAP_DATA_OFFSET                        0x119u /* established */
#define XMAP_CMAP_DATA_RED_SHIFT                     20 /* established */
#define XMAP_CMAP_DATA_RED_MASK                      0x3ffu
#define XMAP_CMAP_DATA_RED_INPLACE                   (XMAP_CMAP_DATA_RED_MASK << XMAP_CMAP_DATA_RED_SHIFT)
#define XMAP_CMAP_DATA_GREEN_SHIFT                   10 /* established */
#define XMAP_CMAP_DATA_GREEN_MASK                    0x3ffu
#define XMAP_CMAP_DATA_GREEN_INPLACE                 (XMAP_CMAP_DATA_GREEN_MASK << XMAP_CMAP_DATA_GREEN_SHIFT)
#define XMAP_CMAP_DATA_BLUE_SHIFT                    0 /* established */
#define XMAP_CMAP_DATA_BLUE_MASK                     0x3ffu
#define XMAP_CMAP_DATA_BLUE_INPLACE                  (XMAP_CMAP_DATA_BLUE_MASK << XMAP_CMAP_DATA_BLUE_SHIFT)

/* unused_1a: w32, space xmap_regs, reset unknown */
#define XMAP_UNUSED_1A_OFFSET                        0x11au /* unknown */

/* gamma_data: w32, space xmap_regs, reset unknown */
#define XMAP_GAMMA_DATA_OFFSET                       0x11bu /* established */
#define XMAP_GAMMA_DATA_ENTRY_SHIFT                  0 /* established */
#define XMAP_GAMMA_DATA_ENTRY_MASK                   0xfffu
#define XMAP_GAMMA_DATA_ENTRY_INPLACE                (XMAP_GAMMA_DATA_ENTRY_MASK << XMAP_GAMMA_DATA_ENTRY_SHIFT)

/* did_data: w32, space xmap_regs, reset unknown */
#define XMAP_DID_DATA_OFFSET                         0x11cu /* established */
#define XMAP_DID_DATA_CMAP_BASE_SHIFT                7 /* established */
#define XMAP_DID_DATA_CMAP_BASE_MASK                 0x1ffffu
#define XMAP_DID_DATA_CMAP_BASE_INPLACE              (XMAP_DID_DATA_CMAP_BASE_MASK << XMAP_DID_DATA_CMAP_BASE_SHIFT)
#define XMAP_DID_DATA_PLANES_MINUS_1_SHIFT           3 /* established */
#define XMAP_DID_DATA_PLANES_MINUS_1_MASK            0xfu
#define XMAP_DID_DATA_PLANES_MINUS_1_INPLACE         (XMAP_DID_DATA_PLANES_MINUS_1_MASK << XMAP_DID_DATA_PLANES_MINUS_1_SHIFT)
#define XMAP_DID_DATA_LUMINANCE_SHIFT                2 /* established */
#define XMAP_DID_DATA_LUMINANCE_MASK                 0x1u
#define XMAP_DID_DATA_LUMINANCE_INPLACE              (XMAP_DID_DATA_LUMINANCE_MASK << XMAP_DID_DATA_LUMINANCE_SHIFT)
#define XMAP_DID_DATA_GREY_SHIFT                     1 /* established */
#define XMAP_DID_DATA_GREY_MASK                      0x1u
#define XMAP_DID_DATA_GREY_INPLACE                   (XMAP_DID_DATA_GREY_MASK << XMAP_DID_DATA_GREY_SHIFT)

/* chan_setup: w32, space xmap_regs, reset unknown */
#define XMAP_CHAN_SETUP_OFFSET                       0x11du /* established */
#define XMAP_CHAN_SETUP_ALPHA_TO_BLUE_SHIFT          6 /* established */
#define XMAP_CHAN_SETUP_ALPHA_TO_BLUE_MASK           0x1u
#define XMAP_CHAN_SETUP_ALPHA_TO_BLUE_INPLACE        (XMAP_CHAN_SETUP_ALPHA_TO_BLUE_MASK << XMAP_CHAN_SETUP_ALPHA_TO_BLUE_SHIFT)
#define XMAP_CHAN_SETUP_NO_GAMMA_SHIFT               5 /* established */
#define XMAP_CHAN_SETUP_NO_GAMMA_MASK                0x1u
#define XMAP_CHAN_SETUP_NO_GAMMA_INPLACE             (XMAP_CHAN_SETUP_NO_GAMMA_MASK << XMAP_CHAN_SETUP_NO_GAMMA_SHIFT)
#define XMAP_CHAN_SETUP_EXT_GAMMA_SHIFT              4 /* established */
#define XMAP_CHAN_SETUP_EXT_GAMMA_MASK               0x1u
#define XMAP_CHAN_SETUP_EXT_GAMMA_INPLACE            (XMAP_CHAN_SETUP_EXT_GAMMA_MASK << XMAP_CHAN_SETUP_EXT_GAMMA_SHIFT)
#define XMAP_CHAN_SETUP_GAMMA_PAGE_SHIFT             0 /* established */
#define XMAP_CHAN_SETUP_GAMMA_PAGE_MASK              0xfu
#define XMAP_CHAN_SETUP_GAMMA_PAGE_INPLACE           (XMAP_CHAN_SETUP_GAMMA_PAGE_MASK << XMAP_CHAN_SETUP_GAMMA_PAGE_SHIFT)

/* table_close: w32, space xmap_regs, reset unknown */
#define XMAP_TABLE_CLOSE_OFFSET                      0x11eu /* inferred */

/* flush: w32, space xmap_regs, reset unknown */
#define XMAP_FLUSH_OFFSET                            0x11fu /* inferred */

#define XMAP_CMAP_LOAD_PIECE_WORDS                   0x200u /* established */
#define XMAP_COUNT                                   0x4u /* established */
#define XMAP_CURSOR_COLOUR_WORD                      0x100u /* established */
#define XMAP_CURSOR_CROSSHAIR_BLOCK                  0x269cu /* established */
#define XMAP_CURSOR_HOT_SPOT_CROSSHAIR               0x20u /* established */
#define XMAP_CURSOR_IMAGE_WORDS                      0x100u /* established */
#define XMAP_CURSOR_POS_BIAS                         0x20u /* inferred */
#define XMAP_CURSOR_PRIORITY_NONE                    0x20u /* established */
#define XMAP_CURSOR_SLOTS                            0x27u /* established */
#define XMAP_CURSOR_SLOT_WORDS                       0x104u /* established */
#define XMAP_DID_ENTRIES                             0x80u /* established */
#define XMAP_EXT_GAMMA_ENTRIES                       0x400u /* established */
#define XMAP_EXT_GAMMA_MARKER                        0xdeadfeedu /* established */
#define XMAP_GAMMA_ENTRIES_PER_PAGE                  0x1000u /* established */
#define XMAP_GAMMA_PAGES                             0x10u /* established */
#define XMAP_TRAILING_FLUSH_WRITES                   0x3u /* established */

#endif /* XMAP_GEN_H */
