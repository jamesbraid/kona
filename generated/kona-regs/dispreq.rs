// generated from kona bf4e58d999c7 KONA_DISPREQ_DECODE.h - do not edit, regenerate in kona
//!
//! Display-generator request numbers: payload word counts and reply
//! types.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const LOOP_BACK_TEST: u32 = 0;
/// established.
pub const LOOP_BACK_TEST_WORDS: u32 = 1;
/// established.
pub const LOOP_BACK_TEST_REPLY_TYPE: u32 = 0;
/// established.
pub const LOOP_BACK_TEST_REPLY_BYTES: u32 = 4;
/// established.
pub const WRITE_A_DISPLAY_BUS_WORD: u32 = 1;
/// established.
pub const WRITE_A_DISPLAY_BUS_WORD_WORDS: u32 = 2;
/// established.
pub const READ_A_DISPLAY_BUS_WORD: u32 = 2;
/// established.
pub const READ_A_DISPLAY_BUS_WORD_WORDS: u32 = 1;
/// established.
pub const READ_A_DISPLAY_BUS_WORD_REPLY_TYPE: u32 = 1;
/// established.
pub const READ_A_DISPLAY_BUS_WORD_REPLY_BYTES: u32 = 4;
/// established.
pub const DIAGNOSTIC_SUBSTITUTE_COLOUR_SET: u32 = 3;
/// established.
pub const DIAGNOSTIC_SUBSTITUTE_COLOUR_SET_WORDS: u32 = 10;
/// established.
pub const DIAGNOSTIC_SUBSTITUTE_COLOUR_OFF: u32 = 4;
/// established.
pub const DIAGNOSTIC_SUBSTITUTE_COLOUR_OFF_WORDS: u32 = 1;
/// established.
pub const BUS_TRACE: u32 = 5;
/// established.
pub const BUS_TRACE_WORDS: u32 = 4;
/// established.
pub const DIAGNOSTIC_CURSOR_FROM_IMAGE: u32 = 6;
/// established.
pub const DIAGNOSTIC_CURSOR_FROM_IMAGE_WORDS: u32 = 0x100b;
/// established.
pub const FIRMWARE_DEBUG_PRINT_MASK_WORDS: u32 = 1;
/// established.
pub const FRAME_BUFFER_TILE_SET_UP: u32 = 8;
/// established.
pub const FRAME_BUFFER_TILE_SET_UP_WORDS: u32 = 3;
/// established.
pub const INPUT_SYNC_SOURCE_SELECT: u32 = 9;
/// established.
pub const INPUT_SYNC_SOURCE_SELECT_WORDS: u32 = 1;
/// established.
pub const INPUT_SYNC_SOURCE_READ: u32 = 10;
/// established.
pub const INPUT_SYNC_SOURCE_READ_WORDS: u32 = 1;
/// established.
pub const INPUT_SYNC_SOURCE_READ_REPLY_TYPE: u32 = 2;
/// established.
pub const INPUT_SYNC_SOURCE_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const HORIZONTAL_PHASE_SET: u32 = 11;
/// established.
pub const HORIZONTAL_PHASE_SET_WORDS: u32 = 2;
/// established.
pub const HORIZONTAL_PHASE_READ: u32 = 12;
/// established.
pub const HORIZONTAL_PHASE_READ_WORDS: u32 = 1;
/// established.
pub const HORIZONTAL_PHASE_READ_REPLY_TYPE: u32 = 3;
/// established.
pub const HORIZONTAL_PHASE_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const VERTICAL_PHASE_SET: u32 = 13;
/// established.
pub const VERTICAL_PHASE_SET_WORDS: u32 = 1;
/// established.
pub const VERTICAL_PHASE_READ: u32 = 14;
/// established.
pub const VERTICAL_PHASE_READ_WORDS: u32 = 1;
/// established.
pub const VERTICAL_PHASE_READ_REPLY_TYPE: u32 = 4;
/// established.
pub const VERTICAL_PHASE_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const CHANNEL_GAMMA_MAP_SELECT: u32 = 15;
/// established.
pub const CHANNEL_GAMMA_MAP_SELECT_WORDS: u32 = 2;
/// established.
pub const CHANNEL_GAMMA_MAP_READ: u32 = 16;
/// established.
pub const CHANNEL_GAMMA_MAP_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_GAMMA_MAP_READ_REPLY_TYPE: u32 = 5;
/// established.
pub const CHANNEL_GAMMA_MAP_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const REBUILD_DEFAULT_DISPLAY_STATE: u32 = 17;
/// established.
pub const REBUILD_DEFAULT_DISPLAY_STATE_WORDS: u32 = 1;
/// established.
pub const BOARD_CONFIGURATION_READ: u32 = 18;
/// established.
pub const BOARD_CONFIGURATION_READ_WORDS: u32 = 1;
/// established.
pub const BOARD_CONFIGURATION_READ_REPLY_TYPE: u32 = 6;
/// established.
pub const BOARD_CONFIGURATION_READ_REPLY_BYTES: u32 = 20;
/// established.
pub const CHANNEL_CONFIGURATION_READ: u32 = 19;
/// established.
pub const CHANNEL_CONFIGURATION_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_CONFIGURATION_READ_REPLY_TYPE: u32 = 7;
/// established.
pub const CHANNEL_CONFIGURATION_READ_REPLY_BYTES: u32 = 76;
/// established.
pub const CHANNEL_RESIZE: u32 = 20;
/// established.
pub const CHANNEL_RESIZE_WORDS: u32 = 8;
/// established.
pub const CHANNEL_RESIZE_READ: u32 = 21;
/// established.
pub const CHANNEL_RESIZE_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_RESIZE_READ_REPLY_TYPE: u32 = 8;
/// established.
pub const CHANNEL_RESIZE_READ_REPLY_BYTES: u32 = 72;
/// established.
pub const LOAD_A_VIDEO_FORMAT: u32 = 22;
/// established.
pub const LOAD_A_VIDEO_FORMAT_WORDS: u32 = 0x17f;
/// established.
pub const ENABLE_A_CHANNEL: u32 = 23;
/// established.
pub const ENABLE_A_CHANNEL_WORDS: u32 = 3;
/// established.
pub const DISABLE_A_CHANNEL: u32 = 24;
/// established.
pub const DISABLE_A_CHANNEL_WORDS: u32 = 1;
/// established.
pub const LOAD_GENLOCK_PARAMETERS: u32 = 25;
/// established.
pub const LOAD_GENLOCK_PARAMETERS_WORDS: u32 = 16;
/// established.
pub const ENABLE_GENLOCK: u32 = 26;
/// established.
pub const ENABLE_GENLOCK_WORDS: u32 = 1;
/// established.
pub const CURSOR_POSITION: u32 = 27;
/// established.
pub const CURSOR_POSITION_WORDS: u32 = 2;
/// established.
pub const CURSOR_CHANNEL_SELECT: u32 = 28;
/// established.
pub const CURSOR_CHANNEL_SELECT_WORDS: u32 = 1;
/// established.
pub const CURSOR_TYPE: u32 = 29;
/// established.
pub const CURSOR_TYPE_WORDS: u32 = 1;
/// established.
pub const CURSOR_PRIORITY: u32 = 30;
/// established.
pub const CURSOR_PRIORITY_WORDS: u32 = 2;
/// established.
pub const CHANNEL_BLANKING_SET: u32 = 31;
/// established.
pub const CHANNEL_BLANKING_SET_WORDS: u32 = 2;
/// established.
pub const CHANNEL_BLANKING_READ: u32 = 32;
/// established.
pub const CHANNEL_BLANKING_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_BLANKING_READ_REPLY_TYPE: u32 = 9;
/// established.
pub const CHANNEL_BLANKING_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const OUTPUT_GAIN_SET: u32 = 33;
/// established.
pub const OUTPUT_GAIN_SET_WORDS: u32 = 2;
/// established.
pub const OUTPUT_GAIN_READ: u32 = 34;
/// established.
pub const OUTPUT_GAIN_READ_WORDS: u32 = 1;
/// established.
pub const OUTPUT_GAIN_READ_REPLY_TYPE: u32 = 10;
/// established.
pub const OUTPUT_GAIN_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const SYNC_OUTPUT_SELECT: u32 = 35;
/// established.
pub const SYNC_OUTPUT_SELECT_WORDS: u32 = 4;
/// established.
pub const SYNC_OUTPUT_READ: u32 = 36;
/// established.
pub const SYNC_OUTPUT_READ_WORDS: u32 = 1;
/// established.
pub const SYNC_OUTPUT_READ_REPLY_TYPE: u32 = 11;
/// established.
pub const SYNC_OUTPUT_READ_REPLY_BYTES: u32 = 24;
/// established.
pub const OUTPUT_PEDESTAL_SET: u32 = 37;
/// established.
pub const OUTPUT_PEDESTAL_SET_WORDS: u32 = 2;
/// established.
pub const OUTPUT_PEDESTAL_READ: u32 = 38;
/// established.
pub const OUTPUT_PEDESTAL_READ_WORDS: u32 = 1;
/// established.
pub const OUTPUT_PEDESTAL_READ_REPLY_TYPE: u32 = 12;
/// established.
pub const OUTPUT_PEDESTAL_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const TEXT_PORT_ID_ENTRY_INITIALISE: u32 = 39;
/// established.
pub const TEXT_PORT_ID_ENTRY_INITIALISE_WORDS: u32 = 1;
/// established.
pub const TEXT_PORT_GLYPH_LOAD: u32 = 40;
/// established.
pub const TEXT_PORT_GLYPH_LOAD_WORDS: u32 = 1;
/// established.
pub const TEXT_PORT_COLOUR_INDEX_LOAD: u32 = 41;
/// established.
pub const TEXT_PORT_COLOUR_INDEX_LOAD_WORDS: u32 = 4;
/// established.
pub const VIDEO_OUTPUT_CHIP_READ_BACK_ENABLE: u32 = 42;
/// established.
pub const VIDEO_OUTPUT_CHIP_READ_BACK_ENABLE_WORDS: u32 = 1;
/// established.
pub const MASTER_CLOCK_SELECT: u32 = 43;
/// established.
pub const MASTER_CLOCK_SELECT_WORDS: u32 = 1;
/// established.
pub const MASTER_CLOCK_SELECT_READ: u32 = 44;
/// established.
pub const MASTER_CLOCK_SELECT_READ_WORDS: u32 = 1;
/// established.
pub const MASTER_CLOCK_SELECT_READ_REPLY_TYPE: u32 = 13;
/// established.
pub const MASTER_CLOCK_SELECT_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const AUTO_INITIALISE_FROM_STORED_COMBINATION: u32 = 45;
/// established.
pub const AUTO_INITIALISE_FROM_STORED_COMBINATION_WORDS: u32 = 1;
/// established.
pub const ENCODER_LOAD: u32 = 46;
/// established.
pub const ENCODER_LOAD_WORDS: u32 = 1;
/// established.
pub const ENCODER_OUTPUT_GAIN: u32 = 47;
/// established.
pub const ENCODER_OUTPUT_GAIN_WORDS: u32 = 1;
/// established.
pub const ENCODER_OUTPUT_GAIN_READ: u32 = 48;
/// established.
pub const ENCODER_OUTPUT_GAIN_READ_WORDS: u32 = 1;
/// established.
pub const ENCODER_OUTPUT_GAIN_READ_REPLY_TYPE: u32 = 14;
/// established.
pub const ENCODER_OUTPUT_GAIN_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const SUB_CARRIER_PHASE_SET: u32 = 49;
/// established.
pub const SUB_CARRIER_PHASE_SET_WORDS: u32 = 1;
/// established.
pub const SUB_CARRIER_PHASE_READ: u32 = 50;
/// established.
pub const SUB_CARRIER_PHASE_READ_WORDS: u32 = 1;
/// established.
pub const SUB_CARRIER_PHASE_READ_REPLY_TYPE: u32 = 15;
/// established.
pub const SUB_CARRIER_PHASE_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const ENCODER_TEST_PATTERN: u32 = 51;
/// established.
pub const ENCODER_TEST_PATTERN_WORDS: u32 = 1;
/// established.
pub const BIND_A_CHANNEL_TO_A_WINDOW_ID: u32 = 52;
/// established.
pub const BIND_A_CHANNEL_TO_A_WINDOW_ID_WORDS: u32 = 2;
/// established.
pub const LOAD_BOARD_LOGIC_SERIALLY: u32 = 53;
/// established.
pub const LOAD_BOARD_LOGIC_SERIALLY_WORDS: u32 = 0x530;
/// established.
pub const OPTION_BOARD_SIZE_REGISTERS: u32 = 54;
/// established.
pub const OPTION_BOARD_SIZE_REGISTERS_WORDS: u32 = 4;
/// established.
pub const OPTION_BOARD_CONTROL_REGISTERS: u32 = 55;
/// established.
pub const OPTION_BOARD_CONTROL_REGISTERS_WORDS: u32 = 2;
/// established.
pub const DAC_CURSOR_LOAD: u32 = 56;
/// established.
pub const DAC_CURSOR_LOAD_WORDS: u32 = 0x107;
/// established.
pub const FIELD_DOMINANCE_AND_COPY_FLAGS: u32 = 57;
/// established.
pub const FIELD_DOMINANCE_AND_COPY_FLAGS_WORDS: u32 = 7;
/// established.
pub const COPY_CHANNEL_INFORMATION_READ: u32 = 58;
/// established.
pub const COPY_CHANNEL_INFORMATION_READ_WORDS: u32 = 1;
/// established.
pub const COPY_CHANNEL_INFORMATION_READ_REPLY_TYPE: u32 = 16;
/// established.
pub const COPY_CHANNEL_INFORMATION_READ_REPLY_BYTES: u32 = 24;
/// established.
pub const FAST_LIST_CHUNK_SIZE: u32 = 59;
/// established.
pub const FAST_LIST_CHUNK_SIZE_WORDS: u32 = 1;
/// established.
pub const TEMPORARY_BLANK_ALL_CHANNELS: u32 = 60;
/// established.
pub const TEMPORARY_BLANK_ALL_CHANNELS_WORDS: u32 = 1;
/// established.
pub const DISPLAY_INTERRUPT_STATE_READ: u32 = 61;
/// established.
pub const DISPLAY_INTERRUPT_STATE_READ_WORDS: u32 = 1;
/// established.
pub const DISPLAY_INTERRUPT_STATE_READ_REPLY_TYPE: u32 = 17;
/// established.
pub const DISPLAY_INTERRUPT_STATE_READ_REPLY_BYTES: u32 = 12;
/// established.
pub const XMAP_CLOCK_SELECT: u32 = 62;
/// established.
pub const XMAP_CLOCK_SELECT_WORDS: u32 = 1;
/// established.
pub const XMAP_CLOCK_SELECT_READ: u32 = 63;
/// established.
pub const XMAP_CLOCK_SELECT_READ_WORDS: u32 = 1;
/// established.
pub const XMAP_CLOCK_SELECT_READ_REPLY_TYPE: u32 = 18;
/// established.
pub const XMAP_CLOCK_SELECT_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const CHANNEL_RESET_RATIOS: u32 = 64;
/// established.
pub const CHANNEL_RESET_RATIOS_WORDS: u32 = 3;
/// established.
pub const RESET_THE_RASTER_BOARDS: u32 = 65;
/// established.
pub const RESET_THE_RASTER_BOARDS_WORDS: u32 = 1;
/// established.
pub const CHANNEL_ENABLES_READ: u32 = 66;
/// established.
pub const CHANNEL_ENABLES_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_ENABLES_READ_REPLY_TYPE: u32 = 19;
/// established.
pub const CHANNEL_ENABLES_READ_REPLY_BYTES: u32 = 8;
/// established.
pub const PLACEMENT_RESOLUTION: u32 = 67;
/// established.
pub const PLACEMENT_RESOLUTION_WORDS: u32 = 9;
/// established.
pub const GENLOCK_SWITCHING_SET: u32 = 68;
/// established.
pub const GENLOCK_SWITCHING_SET_WORDS: u32 = 1;
/// established.
pub const GENLOCK_SWITCHING_READ: u32 = 69;
/// established.
pub const GENLOCK_SWITCHING_READ_WORDS: u32 = 1;
/// established.
pub const GENLOCK_SWITCHING_READ_REPLY_TYPE: u32 = 20;
/// established.
pub const GENLOCK_SWITCHING_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const CHANNEL_FIELD_DOMINANCE_SET: u32 = 70;
/// established.
pub const CHANNEL_FIELD_DOMINANCE_SET_WORDS: u32 = 2;
/// established.
pub const CHANNEL_FIELD_DOMINANCE_READ: u32 = 71;
/// established.
pub const CHANNEL_FIELD_DOMINANCE_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_FIELD_DOMINANCE_READ_REPLY_TYPE: u32 = 21;
/// established.
pub const CHANNEL_FIELD_DOMINANCE_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const BOARD_RESET_RATIO_SET: u32 = 72;
/// established.
pub const BOARD_RESET_RATIO_SET_WORDS: u32 = 1;
/// established.
pub const BOARD_RESET_RATIO_READ: u32 = 73;
/// established.
pub const BOARD_RESET_RATIO_READ_WORDS: u32 = 1;
/// established.
pub const BOARD_RESET_RATIO_READ_REPLY_TYPE: u32 = 22;
/// established.
pub const BOARD_RESET_RATIO_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const CHANNEL_FORMAT_INFORMATION_READ: u32 = 74;
/// established.
pub const CHANNEL_FORMAT_INFORMATION_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_FORMAT_INFORMATION_READ_REPLY_TYPE: u32 = 23;
/// established.
pub const CHANNEL_FORMAT_INFORMATION_READ_REPLY_BYTES: u32 = 20;
/// established.
pub const CHANNEL_GAMMA_MAP_STATE_SET: u32 = 75;
/// established.
pub const CHANNEL_GAMMA_MAP_STATE_SET_WORDS: u32 = 5;
/// established.
pub const CHANNEL_GAMMA_MAP_STATE_READ: u32 = 76;
/// established.
pub const CHANNEL_GAMMA_MAP_STATE_READ_WORDS: u32 = 1;
/// established.
pub const CHANNEL_GAMMA_MAP_STATE_READ_REPLY_TYPE: u32 = 24;
/// established.
pub const CHANNEL_GAMMA_MAP_STATE_READ_REPLY_BYTES: u32 = 16;
/// established.
pub const ENCODER_ENABLE: u32 = 77;
/// established.
pub const ENCODER_ENABLE_WORDS: u32 = 1;
/// established.
pub const RESIZE_SYNC_TYPE: u32 = 78;
/// established.
pub const RESIZE_SYNC_TYPE_WORDS: u32 = 2;
/// established.
pub const COPY_ANOTHER_CHANNEL_OUTPUT: u32 = 79;
/// established.
pub const COPY_ANOTHER_CHANNEL_OUTPUT_WORDS: u32 = 7;
/// established.
pub const MONITOR_IDENTITY_QUERY: u32 = 80;
/// established.
pub const MONITOR_IDENTITY_QUERY_WORDS: u32 = 1;
/// established.
pub const MONITOR_IDENTITY_QUERY_REPLY_TYPE: u32 = 25;
/// established.
pub const MONITOR_IDENTITY_QUERY_REPLY_BYTES: u32 = 68;
/// established.
pub const MONITOR_COMMAND: u32 = 81;
/// established.
pub const MONITOR_COMMAND_WORDS: u32 = 34;
/// established.
pub const OPTION_BOARD_LOGIC_IMAGE_LOAD: u32 = 82;
/// established.
pub const OPTION_BOARD_LOGIC_IMAGE_LOAD_WORDS: u32 = 6;
/// established.
pub const OPTION_BOARD_LOGIC_IMAGE_LOAD_REPLY_TYPE: u32 = 27;
/// established.
pub const OPTION_BOARD_LOGIC_IMAGE_LOAD_REPLY_BYTES: u32 = 4;
/// established.
pub const WINDOW_SYSTEM_VIDEO_INITIALISE: u32 = 83;
/// established.
pub const WINDOW_SYSTEM_VIDEO_INITIALISE_WORDS: u32 = 1;
/// established.
pub const INTERNAL_GENLOCK_SET: u32 = 84;
/// established.
pub const INTERNAL_GENLOCK_SET_WORDS: u32 = 1;
/// established.
pub const INTERNAL_GENLOCK_READ: u32 = 85;
/// established.
pub const INTERNAL_GENLOCK_READ_WORDS: u32 = 1;
/// established.
pub const INTERNAL_GENLOCK_READ_REPLY_TYPE: u32 = 28;
/// established.
pub const INTERNAL_GENLOCK_READ_REPLY_BYTES: u32 = 4;
/// established.
pub const BUFFER_PARAMETERS: u32 = 86;
/// established.
pub const BUFFER_PARAMETERS_WORDS: u32 = 3;
/// established.
pub const BUFFER_PARAMETERS_READ: u32 = 87;
/// established.
pub const BUFFER_PARAMETERS_READ_WORDS: u32 = 1;
/// established.
pub const BUFFER_PARAMETERS_READ_REPLY_TYPE: u32 = 29;
/// established.
pub const BUFFER_PARAMETERS_READ_REPLY_BYTES: u32 = 8;
/// established.
pub const DATA_FORMAT_SET: u32 = 88;
/// established.
pub const DATA_FORMAT_SET_WORDS: u32 = 3;
/// established.
pub const DATA_FORMAT_READ: u32 = 89;
/// established.
pub const DATA_FORMAT_READ_WORDS: u32 = 1;
/// established.
pub const DATA_FORMAT_READ_REPLY_TYPE: u32 = 30;
/// established.
pub const DATA_FORMAT_READ_REPLY_BYTES: u32 = 8;
/// established.
pub const DOUBLE_FREQUENCY_PIXEL_OPTION: u32 = 90;
/// established.
pub const DOUBLE_FREQUENCY_PIXEL_OPTION_WORDS: u32 = 1;
/// established.
pub const OPTION_BOARD_TWO_WIRE_PACKET: u32 = 91;
/// established.
pub const OPTION_BOARD_TWO_WIRE_PACKET_WORDS: u32 = 42;
/// established.
pub const OPTION_BOARD_REPLY_READ: u32 = 92;
/// established.
pub const OPTION_BOARD_REPLY_READ_WORDS: u32 = 1;
/// established.
pub const OPTION_BOARD_REPLY_READ_REPLY_TYPE: u32 = 31;
/// established.
pub const OPTION_BOARD_REPLY_READ_REPLY_BYTES: u32 = 164;
/// established.
pub const COUNT: u32 = 93;
