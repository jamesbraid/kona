/*
 * KONA_DISPREQ_DECODE.h - display-generator request numbers
 *
 * A display request travels in a carrier host token: the host sends the request
 * number, then the request's payload words, then a checksum word equal to the sum
 * of the request number and the payload words. The display firmware dispatches
 * through a 93-entry table of {payload word count, handler}. A request that
 * reads state back has a reply with a type number and a length in bytes; the
 * others reply with nothing. One define gives the request number, and three more
 * (suffixes _WORDS, _REPLY_TYPE and _REPLY_BYTES; the last two only for requests
 * that reply) give the table's other columns. The name is a plain-words role
 * label, not a vendor name. A word count is the number of payload words, not
 * counting the number or the checksum. All values are decimal except the reply
 * type, which is hex.
 *
 * Derivation: numbers, payload counts, reply types and lengths are those of the
 * back-end definitions table (docs/command-table.md, section 5), read from the
 * display firmware's dispatch table and handlers. Every row is established.
 * Reply type 26 (hex 1a) is not used by any request. scripts/kona_checks.py keeps
 * the table, this header and the generated Rust in step.
 */
#ifndef KONA_DISPREQ_DECODE_H
#define KONA_DISPREQ_DECODE_H

#include <stdint.h>

#define DISPREQ_LOOP_BACK_TEST 0 /* established */
#define DISPREQ_LOOP_BACK_TEST_WORDS 1 /* established */
#define DISPREQ_LOOP_BACK_TEST_REPLY_TYPE 0x00 /* established */
#define DISPREQ_LOOP_BACK_TEST_REPLY_BYTES 4 /* established */
#define DISPREQ_WRITE_A_DISPLAY_BUS_WORD 1 /* established */
#define DISPREQ_WRITE_A_DISPLAY_BUS_WORD_WORDS 2 /* established */
#define DISPREQ_READ_A_DISPLAY_BUS_WORD 2 /* established */
#define DISPREQ_READ_A_DISPLAY_BUS_WORD_WORDS 1 /* established */
#define DISPREQ_READ_A_DISPLAY_BUS_WORD_REPLY_TYPE 0x01 /* established */
#define DISPREQ_READ_A_DISPLAY_BUS_WORD_REPLY_BYTES 4 /* established */
#define DISPREQ_DIAGNOSTIC_SUBSTITUTE_COLOUR_SET 3 /* established */
#define DISPREQ_DIAGNOSTIC_SUBSTITUTE_COLOUR_SET_WORDS 10 /* established */
#define DISPREQ_DIAGNOSTIC_SUBSTITUTE_COLOUR_OFF 4 /* established */
#define DISPREQ_DIAGNOSTIC_SUBSTITUTE_COLOUR_OFF_WORDS 1 /* established */
#define DISPREQ_BUS_TRACE 5 /* established */
#define DISPREQ_BUS_TRACE_WORDS 4 /* established */
#define DISPREQ_DIAGNOSTIC_CURSOR_FROM_IMAGE 6 /* established */
#define DISPREQ_DIAGNOSTIC_CURSOR_FROM_IMAGE_WORDS 4107 /* established */
#define DISPREQ_FIRMWARE_DEBUG_PRINT_MASK 7 /* established */
#define DISPREQ_FIRMWARE_DEBUG_PRINT_MASK_WORDS 1 /* established */
#define DISPREQ_FRAME_BUFFER_TILE_SET_UP 8 /* established */
#define DISPREQ_FRAME_BUFFER_TILE_SET_UP_WORDS 3 /* established */
#define DISPREQ_INPUT_SYNC_SOURCE_SELECT 9 /* established */
#define DISPREQ_INPUT_SYNC_SOURCE_SELECT_WORDS 1 /* established */
#define DISPREQ_INPUT_SYNC_SOURCE_READ 10 /* established */
#define DISPREQ_INPUT_SYNC_SOURCE_READ_WORDS 1 /* established */
#define DISPREQ_INPUT_SYNC_SOURCE_READ_REPLY_TYPE 0x02 /* established */
#define DISPREQ_INPUT_SYNC_SOURCE_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_HORIZONTAL_PHASE_SET 11 /* established */
#define DISPREQ_HORIZONTAL_PHASE_SET_WORDS 2 /* established */
#define DISPREQ_HORIZONTAL_PHASE_READ 12 /* established */
#define DISPREQ_HORIZONTAL_PHASE_READ_WORDS 1 /* established */
#define DISPREQ_HORIZONTAL_PHASE_READ_REPLY_TYPE 0x03 /* established */
#define DISPREQ_HORIZONTAL_PHASE_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_VERTICAL_PHASE_SET 13 /* established */
#define DISPREQ_VERTICAL_PHASE_SET_WORDS 1 /* established */
#define DISPREQ_VERTICAL_PHASE_READ 14 /* established */
#define DISPREQ_VERTICAL_PHASE_READ_WORDS 1 /* established */
#define DISPREQ_VERTICAL_PHASE_READ_REPLY_TYPE 0x04 /* established */
#define DISPREQ_VERTICAL_PHASE_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_SELECT 15 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_SELECT_WORDS 2 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_READ 16 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_READ_REPLY_TYPE 0x05 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_REBUILD_DEFAULT_DISPLAY_STATE 17 /* established */
#define DISPREQ_REBUILD_DEFAULT_DISPLAY_STATE_WORDS 1 /* established */
#define DISPREQ_BOARD_CONFIGURATION_READ 18 /* established */
#define DISPREQ_BOARD_CONFIGURATION_READ_WORDS 1 /* established */
#define DISPREQ_BOARD_CONFIGURATION_READ_REPLY_TYPE 0x06 /* established */
#define DISPREQ_BOARD_CONFIGURATION_READ_REPLY_BYTES 20 /* established */
#define DISPREQ_CHANNEL_CONFIGURATION_READ 19 /* established */
#define DISPREQ_CHANNEL_CONFIGURATION_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_CONFIGURATION_READ_REPLY_TYPE 0x07 /* established */
#define DISPREQ_CHANNEL_CONFIGURATION_READ_REPLY_BYTES 76 /* established */
#define DISPREQ_CHANNEL_RESIZE 20 /* established */
#define DISPREQ_CHANNEL_RESIZE_WORDS 8 /* established */
#define DISPREQ_CHANNEL_RESIZE_READ 21 /* established */
#define DISPREQ_CHANNEL_RESIZE_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_RESIZE_READ_REPLY_TYPE 0x08 /* established */
#define DISPREQ_CHANNEL_RESIZE_READ_REPLY_BYTES 72 /* established */
#define DISPREQ_LOAD_A_VIDEO_FORMAT 22 /* established */
#define DISPREQ_LOAD_A_VIDEO_FORMAT_WORDS 383 /* established */
#define DISPREQ_ENABLE_A_CHANNEL 23 /* established */
#define DISPREQ_ENABLE_A_CHANNEL_WORDS 3 /* established */
#define DISPREQ_DISABLE_A_CHANNEL 24 /* established */
#define DISPREQ_DISABLE_A_CHANNEL_WORDS 1 /* established */
#define DISPREQ_LOAD_GENLOCK_PARAMETERS 25 /* established */
#define DISPREQ_LOAD_GENLOCK_PARAMETERS_WORDS 16 /* established */
#define DISPREQ_ENABLE_GENLOCK 26 /* established */
#define DISPREQ_ENABLE_GENLOCK_WORDS 1 /* established */
#define DISPREQ_CURSOR_POSITION 27 /* established */
#define DISPREQ_CURSOR_POSITION_WORDS 2 /* established */
#define DISPREQ_CURSOR_CHANNEL_SELECT 28 /* established */
#define DISPREQ_CURSOR_CHANNEL_SELECT_WORDS 1 /* established */
#define DISPREQ_CURSOR_TYPE 29 /* established */
#define DISPREQ_CURSOR_TYPE_WORDS 1 /* established */
#define DISPREQ_CURSOR_PRIORITY 30 /* established */
#define DISPREQ_CURSOR_PRIORITY_WORDS 2 /* established */
#define DISPREQ_CHANNEL_BLANKING_SET 31 /* established */
#define DISPREQ_CHANNEL_BLANKING_SET_WORDS 2 /* established */
#define DISPREQ_CHANNEL_BLANKING_READ 32 /* established */
#define DISPREQ_CHANNEL_BLANKING_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_BLANKING_READ_REPLY_TYPE 0x09 /* established */
#define DISPREQ_CHANNEL_BLANKING_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_OUTPUT_GAIN_SET 33 /* established */
#define DISPREQ_OUTPUT_GAIN_SET_WORDS 2 /* established */
#define DISPREQ_OUTPUT_GAIN_READ 34 /* established */
#define DISPREQ_OUTPUT_GAIN_READ_WORDS 1 /* established */
#define DISPREQ_OUTPUT_GAIN_READ_REPLY_TYPE 0x0a /* established */
#define DISPREQ_OUTPUT_GAIN_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_SYNC_OUTPUT_SELECT 35 /* established */
#define DISPREQ_SYNC_OUTPUT_SELECT_WORDS 4 /* established */
#define DISPREQ_SYNC_OUTPUT_READ 36 /* established */
#define DISPREQ_SYNC_OUTPUT_READ_WORDS 1 /* established */
#define DISPREQ_SYNC_OUTPUT_READ_REPLY_TYPE 0x0b /* established */
#define DISPREQ_SYNC_OUTPUT_READ_REPLY_BYTES 24 /* established */
#define DISPREQ_OUTPUT_PEDESTAL_SET 37 /* established */
#define DISPREQ_OUTPUT_PEDESTAL_SET_WORDS 2 /* established */
#define DISPREQ_OUTPUT_PEDESTAL_READ 38 /* established */
#define DISPREQ_OUTPUT_PEDESTAL_READ_WORDS 1 /* established */
#define DISPREQ_OUTPUT_PEDESTAL_READ_REPLY_TYPE 0x0c /* established */
#define DISPREQ_OUTPUT_PEDESTAL_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_TEXT_PORT_ID_ENTRY_INITIALISE 39 /* established */
#define DISPREQ_TEXT_PORT_ID_ENTRY_INITIALISE_WORDS 1 /* established */
#define DISPREQ_TEXT_PORT_GLYPH_LOAD 40 /* established */
#define DISPREQ_TEXT_PORT_GLYPH_LOAD_WORDS 1 /* established */
#define DISPREQ_TEXT_PORT_COLOUR_INDEX_LOAD 41 /* established */
#define DISPREQ_TEXT_PORT_COLOUR_INDEX_LOAD_WORDS 4 /* established */
#define DISPREQ_VIDEO_OUTPUT_CHIP_READ_BACK_ENABLE 42 /* established */
#define DISPREQ_VIDEO_OUTPUT_CHIP_READ_BACK_ENABLE_WORDS 1 /* established */
#define DISPREQ_MASTER_CLOCK_SELECT 43 /* established */
#define DISPREQ_MASTER_CLOCK_SELECT_WORDS 1 /* established */
#define DISPREQ_MASTER_CLOCK_SELECT_READ 44 /* established */
#define DISPREQ_MASTER_CLOCK_SELECT_READ_WORDS 1 /* established */
#define DISPREQ_MASTER_CLOCK_SELECT_READ_REPLY_TYPE 0x0d /* established */
#define DISPREQ_MASTER_CLOCK_SELECT_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_AUTO_INITIALISE_FROM_STORED_COMBINATION 45 /* established */
#define DISPREQ_AUTO_INITIALISE_FROM_STORED_COMBINATION_WORDS 1 /* established */
#define DISPREQ_ENCODER_LOAD 46 /* established */
#define DISPREQ_ENCODER_LOAD_WORDS 1 /* established */
#define DISPREQ_ENCODER_OUTPUT_GAIN 47 /* established */
#define DISPREQ_ENCODER_OUTPUT_GAIN_WORDS 1 /* established */
#define DISPREQ_ENCODER_OUTPUT_GAIN_READ 48 /* established */
#define DISPREQ_ENCODER_OUTPUT_GAIN_READ_WORDS 1 /* established */
#define DISPREQ_ENCODER_OUTPUT_GAIN_READ_REPLY_TYPE 0x0e /* established */
#define DISPREQ_ENCODER_OUTPUT_GAIN_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_SUB_CARRIER_PHASE_SET 49 /* established */
#define DISPREQ_SUB_CARRIER_PHASE_SET_WORDS 1 /* established */
#define DISPREQ_SUB_CARRIER_PHASE_READ 50 /* established */
#define DISPREQ_SUB_CARRIER_PHASE_READ_WORDS 1 /* established */
#define DISPREQ_SUB_CARRIER_PHASE_READ_REPLY_TYPE 0x0f /* established */
#define DISPREQ_SUB_CARRIER_PHASE_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_ENCODER_TEST_PATTERN 51 /* established */
#define DISPREQ_ENCODER_TEST_PATTERN_WORDS 1 /* established */
#define DISPREQ_BIND_A_CHANNEL_TO_A_WINDOW_ID 52 /* established */
#define DISPREQ_BIND_A_CHANNEL_TO_A_WINDOW_ID_WORDS 2 /* established */
#define DISPREQ_LOAD_BOARD_LOGIC_SERIALLY 53 /* established */
#define DISPREQ_LOAD_BOARD_LOGIC_SERIALLY_WORDS 1328 /* established */
#define DISPREQ_OPTION_BOARD_SIZE_REGISTERS 54 /* established */
#define DISPREQ_OPTION_BOARD_SIZE_REGISTERS_WORDS 4 /* established */
#define DISPREQ_OPTION_BOARD_CONTROL_REGISTERS 55 /* established */
#define DISPREQ_OPTION_BOARD_CONTROL_REGISTERS_WORDS 2 /* established */
#define DISPREQ_DAC_CURSOR_LOAD 56 /* established */
#define DISPREQ_DAC_CURSOR_LOAD_WORDS 263 /* established */
#define DISPREQ_FIELD_DOMINANCE_AND_COPY_FLAGS 57 /* established */
#define DISPREQ_FIELD_DOMINANCE_AND_COPY_FLAGS_WORDS 7 /* established */
#define DISPREQ_COPY_CHANNEL_INFORMATION_READ 58 /* established */
#define DISPREQ_COPY_CHANNEL_INFORMATION_READ_WORDS 1 /* established */
#define DISPREQ_COPY_CHANNEL_INFORMATION_READ_REPLY_TYPE 0x10 /* established */
#define DISPREQ_COPY_CHANNEL_INFORMATION_READ_REPLY_BYTES 24 /* established */
#define DISPREQ_FAST_LIST_CHUNK_SIZE 59 /* established */
#define DISPREQ_FAST_LIST_CHUNK_SIZE_WORDS 1 /* established */
#define DISPREQ_TEMPORARY_BLANK_ALL_CHANNELS 60 /* established */
#define DISPREQ_TEMPORARY_BLANK_ALL_CHANNELS_WORDS 1 /* established */
#define DISPREQ_DISPLAY_INTERRUPT_STATE_READ 61 /* established */
#define DISPREQ_DISPLAY_INTERRUPT_STATE_READ_WORDS 1 /* established */
#define DISPREQ_DISPLAY_INTERRUPT_STATE_READ_REPLY_TYPE 0x11 /* established */
#define DISPREQ_DISPLAY_INTERRUPT_STATE_READ_REPLY_BYTES 12 /* established */
#define DISPREQ_XMAP_CLOCK_SELECT 62 /* established */
#define DISPREQ_XMAP_CLOCK_SELECT_WORDS 1 /* established */
#define DISPREQ_XMAP_CLOCK_SELECT_READ 63 /* established */
#define DISPREQ_XMAP_CLOCK_SELECT_READ_WORDS 1 /* established */
#define DISPREQ_XMAP_CLOCK_SELECT_READ_REPLY_TYPE 0x12 /* established */
#define DISPREQ_XMAP_CLOCK_SELECT_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_CHANNEL_RESET_RATIOS 64 /* established */
#define DISPREQ_CHANNEL_RESET_RATIOS_WORDS 3 /* established */
#define DISPREQ_RESET_THE_RASTER_BOARDS 65 /* established */
#define DISPREQ_RESET_THE_RASTER_BOARDS_WORDS 1 /* established */
#define DISPREQ_CHANNEL_ENABLES_READ 66 /* established */
#define DISPREQ_CHANNEL_ENABLES_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_ENABLES_READ_REPLY_TYPE 0x13 /* established */
#define DISPREQ_CHANNEL_ENABLES_READ_REPLY_BYTES 8 /* established */
#define DISPREQ_PLACEMENT_RESOLUTION 67 /* established */
#define DISPREQ_PLACEMENT_RESOLUTION_WORDS 9 /* established */
#define DISPREQ_GENLOCK_SWITCHING_SET 68 /* established */
#define DISPREQ_GENLOCK_SWITCHING_SET_WORDS 1 /* established */
#define DISPREQ_GENLOCK_SWITCHING_READ 69 /* established */
#define DISPREQ_GENLOCK_SWITCHING_READ_WORDS 1 /* established */
#define DISPREQ_GENLOCK_SWITCHING_READ_REPLY_TYPE 0x14 /* established */
#define DISPREQ_GENLOCK_SWITCHING_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_CHANNEL_FIELD_DOMINANCE_SET 70 /* established */
#define DISPREQ_CHANNEL_FIELD_DOMINANCE_SET_WORDS 2 /* established */
#define DISPREQ_CHANNEL_FIELD_DOMINANCE_READ 71 /* established */
#define DISPREQ_CHANNEL_FIELD_DOMINANCE_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_FIELD_DOMINANCE_READ_REPLY_TYPE 0x15 /* established */
#define DISPREQ_CHANNEL_FIELD_DOMINANCE_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_BOARD_RESET_RATIO_SET 72 /* established */
#define DISPREQ_BOARD_RESET_RATIO_SET_WORDS 1 /* established */
#define DISPREQ_BOARD_RESET_RATIO_READ 73 /* established */
#define DISPREQ_BOARD_RESET_RATIO_READ_WORDS 1 /* established */
#define DISPREQ_BOARD_RESET_RATIO_READ_REPLY_TYPE 0x16 /* established */
#define DISPREQ_BOARD_RESET_RATIO_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_CHANNEL_FORMAT_INFORMATION_READ 74 /* established */
#define DISPREQ_CHANNEL_FORMAT_INFORMATION_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_FORMAT_INFORMATION_READ_REPLY_TYPE 0x17 /* established */
#define DISPREQ_CHANNEL_FORMAT_INFORMATION_READ_REPLY_BYTES 20 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_STATE_SET 75 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_STATE_SET_WORDS 5 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_STATE_READ 76 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_STATE_READ_WORDS 1 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_STATE_READ_REPLY_TYPE 0x18 /* established */
#define DISPREQ_CHANNEL_GAMMA_MAP_STATE_READ_REPLY_BYTES 16 /* established */
#define DISPREQ_ENCODER_ENABLE 77 /* established */
#define DISPREQ_ENCODER_ENABLE_WORDS 1 /* established */
#define DISPREQ_RESIZE_SYNC_TYPE 78 /* established */
#define DISPREQ_RESIZE_SYNC_TYPE_WORDS 2 /* established */
#define DISPREQ_COPY_ANOTHER_CHANNEL_OUTPUT 79 /* established */
#define DISPREQ_COPY_ANOTHER_CHANNEL_OUTPUT_WORDS 7 /* established */
#define DISPREQ_MONITOR_IDENTITY_QUERY 80 /* established */
#define DISPREQ_MONITOR_IDENTITY_QUERY_WORDS 1 /* established */
#define DISPREQ_MONITOR_IDENTITY_QUERY_REPLY_TYPE 0x19 /* established */
#define DISPREQ_MONITOR_IDENTITY_QUERY_REPLY_BYTES 68 /* established */
#define DISPREQ_MONITOR_COMMAND 81 /* established */
#define DISPREQ_MONITOR_COMMAND_WORDS 34 /* established */
#define DISPREQ_OPTION_BOARD_LOGIC_IMAGE_LOAD 82 /* established */
#define DISPREQ_OPTION_BOARD_LOGIC_IMAGE_LOAD_WORDS 6 /* established */
#define DISPREQ_OPTION_BOARD_LOGIC_IMAGE_LOAD_REPLY_TYPE 0x1b /* established */
#define DISPREQ_OPTION_BOARD_LOGIC_IMAGE_LOAD_REPLY_BYTES 4 /* established */
#define DISPREQ_WINDOW_SYSTEM_VIDEO_INITIALISE 83 /* established */
#define DISPREQ_WINDOW_SYSTEM_VIDEO_INITIALISE_WORDS 1 /* established */
#define DISPREQ_INTERNAL_GENLOCK_SET 84 /* established */
#define DISPREQ_INTERNAL_GENLOCK_SET_WORDS 1 /* established */
#define DISPREQ_INTERNAL_GENLOCK_READ 85 /* established */
#define DISPREQ_INTERNAL_GENLOCK_READ_WORDS 1 /* established */
#define DISPREQ_INTERNAL_GENLOCK_READ_REPLY_TYPE 0x1c /* established */
#define DISPREQ_INTERNAL_GENLOCK_READ_REPLY_BYTES 4 /* established */
#define DISPREQ_BUFFER_PARAMETERS 86 /* established */
#define DISPREQ_BUFFER_PARAMETERS_WORDS 3 /* established */
#define DISPREQ_BUFFER_PARAMETERS_READ 87 /* established */
#define DISPREQ_BUFFER_PARAMETERS_READ_WORDS 1 /* established */
#define DISPREQ_BUFFER_PARAMETERS_READ_REPLY_TYPE 0x1d /* established */
#define DISPREQ_BUFFER_PARAMETERS_READ_REPLY_BYTES 8 /* established */
#define DISPREQ_DATA_FORMAT_SET 88 /* established */
#define DISPREQ_DATA_FORMAT_SET_WORDS 3 /* established */
#define DISPREQ_DATA_FORMAT_READ 89 /* established */
#define DISPREQ_DATA_FORMAT_READ_WORDS 1 /* established */
#define DISPREQ_DATA_FORMAT_READ_REPLY_TYPE 0x1e /* established */
#define DISPREQ_DATA_FORMAT_READ_REPLY_BYTES 8 /* established */
#define DISPREQ_DOUBLE_FREQUENCY_PIXEL_OPTION 90 /* established */
#define DISPREQ_DOUBLE_FREQUENCY_PIXEL_OPTION_WORDS 1 /* established */
#define DISPREQ_OPTION_BOARD_TWO_WIRE_PACKET 91 /* established */
#define DISPREQ_OPTION_BOARD_TWO_WIRE_PACKET_WORDS 42 /* established */
#define DISPREQ_OPTION_BOARD_REPLY_READ 92 /* established */
#define DISPREQ_OPTION_BOARD_REPLY_READ_WORDS 1 /* established */
#define DISPREQ_OPTION_BOARD_REPLY_READ_REPLY_TYPE 0x1f /* established */
#define DISPREQ_OPTION_BOARD_REPLY_READ_REPLY_BYTES 164 /* established */

#define DISPREQ_COUNT 93 /* established */

#endif
