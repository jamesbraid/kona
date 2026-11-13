/* generated from devices/dacidx/registers.toml by defs-gen - do not edit, change the source */
/* video DAC and encoder indexed registers */
#ifndef DACIDX_GEN_H
#define DACIDX_GEN_H

#include <stdint.h>


/*
 * Command register 1 (index 0x005 above), 8 bits. Start-up value 0x88: bits 7:6 = 2
 * (24-bit bypass colour), bit 3 = 1 (exposes the address register's high byte,
 * which the 0x200, 0x300 and 0x400 index spaces need), bits 5:4 = 0 (palette
 * select function), bit 0 = 0 (no per-sync calibration). The decode of the value
 * against the published description is established; the grade here is inferred
 * because the part's identity is: no shipped code reads the part's ID register
 * to confirm it.
 */
/* word COMMAND_1: 32 bits */
#define DACIDX_COMMAND_1_WIDTH                       32 /* inferred */
#define DACIDX_COMMAND_1_BYPASS_COLOUR_SHIFT         6 /* inferred */
#define DACIDX_COMMAND_1_BYPASS_COLOUR_MASK          0x3u
#define DACIDX_COMMAND_1_BYPASS_COLOUR_INPLACE       (DACIDX_COMMAND_1_BYPASS_COLOUR_MASK << DACIDX_COMMAND_1_BYPASS_COLOUR_SHIFT)
#define DACIDX_COMMAND_1_PALETTE_SELECT_SHIFT        4 /* inferred */
#define DACIDX_COMMAND_1_PALETTE_SELECT_MASK         0x3u
#define DACIDX_COMMAND_1_PALETTE_SELECT_INPLACE      (DACIDX_COMMAND_1_PALETTE_SELECT_MASK << DACIDX_COMMAND_1_PALETTE_SELECT_SHIFT)
#define DACIDX_COMMAND_1_ADDR_HIGH_SHIFT             3 /* inferred */
#define DACIDX_COMMAND_1_ADDR_HIGH_MASK              0x1u
#define DACIDX_COMMAND_1_ADDR_HIGH_INPLACE           (DACIDX_COMMAND_1_ADDR_HIGH_MASK << DACIDX_COMMAND_1_ADDR_HIGH_SHIFT)
#define DACIDX_COMMAND_1_CALIBRATE_SHIFT             0 /* inferred */
#define DACIDX_COMMAND_1_CALIBRATE_MASK              0x1u
#define DACIDX_COMMAND_1_CALIBRATE_INPLACE           (DACIDX_COMMAND_1_CALIBRATE_MASK << DACIDX_COMMAND_1_CALIBRATE_SHIFT)

/*
 * Command register 2 (index 0x006 above), 8 bits. Start-up value 0xe4: bits 7:4 =
 * 14 (24-bit true colour), bit 3 = 0 (no pedestal), bit 2 = 1 (sync on green).
 * The same start-up routine zeroes indexes 0x007, 0x008, 0x009 and 0x00d, which
 * leaves pixel multiplexing at 1:1 and the PLL off. Graded inferred for the same
 * reason as command register 1; only a read of the ID register on a real board
 * settles the part.
 */
/* word COMMAND_2: 32 bits */
#define DACIDX_COMMAND_2_WIDTH                       32 /* inferred */
#define DACIDX_COMMAND_2_COLOUR_MODE_SHIFT           4 /* inferred */
#define DACIDX_COMMAND_2_COLOUR_MODE_MASK            0xfu
#define DACIDX_COMMAND_2_COLOUR_MODE_INPLACE         (DACIDX_COMMAND_2_COLOUR_MODE_MASK << DACIDX_COMMAND_2_COLOUR_MODE_SHIFT)
#define DACIDX_COMMAND_2_PEDESTAL_SHIFT              3 /* inferred */
#define DACIDX_COMMAND_2_PEDESTAL_MASK               0x1u
#define DACIDX_COMMAND_2_PEDESTAL_INPLACE            (DACIDX_COMMAND_2_PEDESTAL_MASK << DACIDX_COMMAND_2_PEDESTAL_SHIFT)
#define DACIDX_COMMAND_2_SYNC_ON_GREEN_SHIFT         2 /* inferred */
#define DACIDX_COMMAND_2_SYNC_ON_GREEN_MASK          0x1u
#define DACIDX_COMMAND_2_SYNC_ON_GREEN_INPLACE       (DACIDX_COMMAND_2_SYNC_ON_GREEN_MASK << DACIDX_COMMAND_2_SYNC_ON_GREEN_SHIFT)

/*
 * Cursor control (index 0x204 above). The kernel writes 5 (X11 mode, enabled) for
 * the channel that owns the cursor and 0 for the rest; start-up value 0. Bits
 * 7:4 are zero.
 */
/* word CURSOR_CONTROL: 32 bits */
#define DACIDX_CURSOR_CONTROL_WIDTH                  32 /* established */
#define DACIDX_CURSOR_CONTROL_INTERLACE_SHIFT        3 /* established */
#define DACIDX_CURSOR_CONTROL_INTERLACE_MASK         0x1u
#define DACIDX_CURSOR_CONTROL_INTERLACE_INPLACE      (DACIDX_CURSOR_CONTROL_INTERLACE_MASK << DACIDX_CURSOR_CONTROL_INTERLACE_SHIFT)
#define DACIDX_CURSOR_CONTROL_ENABLE_SHIFT           2 /* established */
#define DACIDX_CURSOR_CONTROL_ENABLE_MASK            0x1u
#define DACIDX_CURSOR_CONTROL_ENABLE_INPLACE         (DACIDX_CURSOR_CONTROL_ENABLE_MASK << DACIDX_CURSOR_CONTROL_ENABLE_SHIFT)
#define DACIDX_CURSOR_CONTROL_MODE_SHIFT             0 /* established */
#define DACIDX_CURSOR_CONTROL_MODE_MASK              0x3u
#define DACIDX_CURSOR_CONTROL_MODE_INPLACE           (DACIDX_CURSOR_CONTROL_MODE_MASK << DACIDX_CURSOR_CONTROL_MODE_SHIFT)
#define DACIDX_CURSOR_CONTROL_MODE_X11               1 /* established */
#define DACIDX_CURSOR_CONTROL_MODE_XGA               2 /* established */

#define DACIDX_CURSOR_COLOUR_2                       0x304u /* established */
#define DACIDX_CURSOR_COLOUR_BASE                    0x303u /* inferred */
#define DACIDX_CURSOR_CONTROL                        0x204u /* established */
#define DACIDX_CURSOR_IMAGE_RAM                      0x400u /* established */
#define DACIDX_CURSOR_X_HIGH                         0x201u /* established */
#define DACIDX_CURSOR_X_LOW                          0x200u /* established */
#define DACIDX_CURSOR_Y_HIGH                         0x203u /* established */
#define DACIDX_CURSOR_Y_LOW                          0x202u /* established */
#define ENCIDX_ACTIVE                                0x15u /* established */
#define ENCIDX_ACTIVE_END                            0x17u /* established */
#define ENCIDX_ACTIVE_START                          0x16u /* established */
#define ENCIDX_BREEZEWAY                             0x11u /* established */
#define ENCIDX_BURST_LENGTH                          0x12u /* established */
#define ENCIDX_BURST_PHASE_LSB                       0x26u /* established */
#define ENCIDX_BURST_PHASE_MSB                       0x27u /* established */
#define ENCIDX_COLOUR_BACK_PORCH                     0x13u /* established */
#define ENCIDX_COLOUR_BAR_LENGTH                     0x1eu /* established */
#define ENCIDX_EQUALIZE_HIGH                         0x1bu /* established */
#define ENCIDX_EQUALIZE_LOW                          0x1au /* established */
#define ENCIDX_EXT_COLOUR_BACK_PORCH                 0x14u /* established */
#define ENCIDX_FORMAT_CONTROL                        0x1u /* established */
#define ENCIDX_FRONT_PORCH                           0x19u /* established */
#define ENCIDX_GLOBAL_CONTROL                        0x0u /* established */
#define ENCIDX_HSYNC_TIP                             0x10u /* established */
#define ENCIDX_INTERFACE_CONTROL                     0x2u /* established */
#define ENCIDX_KEY_CONTROL                           0x4u /* established */
#define ENCIDX_KEY_D                                 0x5u /* established */
#define ENCIDX_KEY_E                                 0x6u /* established */
#define ENCIDX_KEY_F                                 0x7u /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE1                 0x23u /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE2                 0x22u /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE3                 0x21u /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE4                 0x20u /* established */
#define ENCIDX_VIDEO_PHASE_LSB                       0x24u /* established */
#define ENCIDX_VIDEO_PHASE_MSB                       0x25u /* established */
#define ENCIDX_VSYNC_HIGH                            0x1du /* established */
#define ENCIDX_VSYNC_LOW                             0x1cu /* established */
#define DACIDX_PIXEL_MASK                            0x4u /* inferred */
#define DACIDX_START_UP_A                            0x5u /* inferred */
#define DACIDX_START_UP_B                            0x6u /* inferred */

#endif /* DACIDX_GEN_H */
