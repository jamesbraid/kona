// generated from kona af9af6299188 KONA_TOKEN_DECODE.h - do not edit, regenerate in kona
//!
//! Host command tokens of the InfiniteReality2 pipe other than the
//! queries: processor-run and hardware-routed tokens.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const RAW_DATA_WORD: u32 = 0;
/// established.
pub const TEXTURE_PARAMETER: u32 = 13;
/// established.
pub const TEXTURE_PARAMETER_00E: u32 = 14;
/// established.
pub const 1D_TEXTURE_IMAGE_LOAD: u32 = 15;
/// established.
pub const 2D_TEXTURE_IMAGE_LOAD: u32 = 16;
/// established.
pub const SELECT_BUFFER_REGISTRATION: u32 = 24;
/// established.
pub const SET_PIXEL_TRANSFER_PARAMETER: u32 = 49;
/// established.
pub const SET_PIXEL_STORE_PARAMETER: u32 = 50;
/// established.
pub const STATE: u32 = 63;
/// established.
pub const STATE_040: u32 = 64;
/// established.
pub const LIGHT: u32 = 66;
/// established.
pub const EVALUATOR_MAP: u32 = 67;
/// established.
pub const EVALUATOR_MAP_044: u32 = 68;
/// established.
pub const EVALUATOR_MAP_045: u32 = 69;
/// established.
pub const MATERIAL: u32 = 71;
/// established.
pub const PIXEL_MAP: u32 = 73;
/// established.
pub const PIXEL_MAP_04A: u32 = 74;
/// established.
pub const TEXTURE_ENVIRONMENT: u32 = 78;
/// established.
pub const TEXTURE_GENERATION: u32 = 79;
/// established.
pub const TEXTURE_GENERATION_051: u32 = 81;
/// established.
pub const TEXTURE_PARAMETER_053: u32 = 83;
/// established.
pub const TEXTURE_PARAMETER_054: u32 = 84;
/// established.
pub const TEXTURE_LEVEL_PARAMETER: u32 = 85;
/// established.
pub const TEXTURE_LEVEL_PARAMETER_056: u32 = 86;
/// established.
pub const COPY_COLOUR_TABLE_FRAME_BUFFER: u32 = 233;
/// established.
pub const 3D_CONVOLUTION_FILTER: u32 = 241;
/// established.
pub const 3D_SEPARABLE_FILTER: u32 = 246;
/// established.
pub const PIXEL_TRANSFORM_PARAMETERS: u32 = 251;
/// established.
pub const COPY_1D_TEXTURE_IMAGE_FRAME_BUFFER: u32 = 252;
/// established.
pub const COPY_1D_TEXTURE_SUB_IMAGE_FRAME: u32 = 254;
/// established.
pub const WRITE_GATHER_FLUSH: u32 = 255;
/// established.
pub const RAW_DATA_WORD_100: u32 = 0x100;
/// established.
pub const COPY_2D_TEXTURE_SUB_IMAGE_FRAME: u32 = 0x101;
/// established.
pub const SET_PIXEL_TEXTURE_GENERATION: u32 = 0x11a;
/// established.
pub const LOAD_1D_TEXTURE_SUB_IMAGE: u32 = 0x11c;
/// established.
pub const LOAD_2D_TEXTURE_SUB_IMAGE: u32 = 0x11d;
/// established.
pub const LOAD_3D_TEXTURE_SUB_IMAGE: u32 = 0x11e;
/// established.
pub const LOAD_3D_TEXTURE_IMAGE: u32 = 0x11f;
/// established.
pub const 4D_TEXTURE_IMAGE: u32 = 0x120;
/// established.
pub const 4D_TEXTURE_SUB_IMAGE: u32 = 0x121;
/// established.
pub const ALLOCATE_1D_TEXTURE_NAMES: u32 = 0x122;
/// established.
pub const ALLOCATE_2D_TEXTURE_NAMES: u32 = 0x123;
/// established.
pub const ALLOCATE_3D_TEXTURE_NAMES: u32 = 0x124;
/// established.
pub const WHETHER_NAME_TEXTURE: u32 = 0x125;
/// established.
pub const DELETE_TEXTURE_NAMES: u32 = 0x126;
/// established.
pub const BIND_TEXTURE_NAME: u32 = 0x127;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_3: u32 = 0x13b;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_4: u32 = 0x13f;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_5: u32 = 0x140;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_6: u32 = 0x162;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_7: u32 = 0x163;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_8: u32 = 0x164;
/// established.
pub const UNUSED_WINDOW_SYSTEM_SLOT_9: u32 = 0x165;
/// established.
pub const WRITE_GATHER_FLUSH_1FF: u32 = 0x1ff;
/// inferred.
pub const RECORD_ERROR_CODE: u32 = 228;
/// inferred.
pub const END_SIMULATION_REPORT: u32 = 229;
/// inferred.
pub const DIAGNOSTIC_SUB_COMMAND_DISPATCH: u32 = 0x169;
/// inferred.
pub const MULTI_PURPOSE_DIAGNOSTIC_ENTRY: u32 = 0x17f;
/// established.
pub const RESTART_SELECT_FEEDBACK: u32 = 0x1bc;
/// inferred.
pub const SET_INPUT_DMA_WAIT_MODE_FLAG: u32 = 0x1dc;
/// inferred.
pub const RAISE_HOST_INTERRUPT_EVENT_CODE: u32 = 0x1dd;
/// inferred.
pub const PIPE_MEMORY_RESUME: u32 = 0x1de;
/// inferred.
pub const PIPE_MEMORY_SUSPEND_EVENT_CODE: u32 = 0x1df;
/// inferred.
pub const PIPE_MEMORY_COPY_DOWN: u32 = 0x1e1;
/// inferred.
pub const PIPE_MEMORY_SWAP: u32 = 0x1e2;
/// inferred.
pub const PIPE_MEMORY_SWAP_OUT: u32 = 0x1e3;
/// inferred.
pub const PIPE_MEMORY_RESERVE: u32 = 0x1e4;
/// inferred.
pub const ROLL_CALL_EVERY_ENGINE: u32 = 0x1e5;
/// inferred.
pub const PAYLOAD_PATH_SELF_TEST: u32 = 0x1e8;
/// inferred.
pub const SYNCHRONISE_PIPE: u32 = 0x1ea;
/// inferred.
pub const EEPROM_OPERATION: u32 = 0x1ec;
/// inferred.
pub const DESCRIBE_DMA_PAGE_POOL: u32 = 0x1ed;
/// inferred.
pub const LOAD_DISTRIBUTOR_VERIFICATION_PROGRAM: u32 = 0x1ef;
/// inferred.
pub const DUMP_DISTRIBUTOR_VERIFICATION_STATE: u32 = 0x1f0;
/// inferred.
pub const PIPE_SET_UP: u32 = 0x1f1;
/// inferred.
pub const SET_UP_OUTPUT_DMA_HOST_READ: u32 = 0x1f2;
/// inferred.
pub const START_SELECT_FEEDBACK_RETURN_DMA: u32 = 0x1f5;
/// inferred.
pub const FINISH_SELECT_FEEDBACK_EVENT_CODE: u32 = 0x1f6;
/// inferred.
pub const CONTEXT_DESTROY: u32 = 0x1f7;
/// inferred.
pub const CONTEXT_CLEAN_UP_EVENT_CODE: u32 = 0x1f8;
/// inferred.
pub const CONTEXT_IMAGE_LOAD: u32 = 0x1f9;
/// inferred.
pub const CONTEXT_ACTIVATE: u32 = 0x1fa;
/// inferred.
pub const CONTEXT_FIFO_SYNCHRONISE: u32 = 0x1fb;
/// inferred.
pub const CONTEXT_DEACTIVATE: u32 = 0x1fc;
/// inferred.
pub const CONTEXT_INITIALISE: u32 = 0x1fd;
/// inferred.
pub const SELECT_VIDEO_SOURCE: u32 = 0x114;
/// inferred.
pub const SWAP_REQUEST_MULTI_PIPE_DISPLAY_OPTION: u32 = 0x166;
/// inferred.
pub const DISPLAY_GENERATOR_REQUEST_CARRIER: u32 = 0x1a6;
/// inferred.
pub const SWAP_CONTROL: u32 = 0x1db;
/// inferred.
pub const SET_PER_DISPLAY_ID_MODE_BYTE: u32 = 0x1e6;
/// inferred.
pub const PUBLISH_RETRACE_SEQUENCE_NUMBER: u32 = 0x1e7;
/// inferred.
pub const CONFIGURE_FRAME_BUFFER_LAYOUT: u32 = 1;
/// inferred.
pub const CONFIGURE_READ_SIDE_FRAME_BUFFER_LAYOUT: u32 = 4;
/// inferred.
pub const SELECT_READ_BUFFER: u32 = 55;
/// inferred.
pub const SELECT_DRAW_BUFFER: u32 = 196;
/// inferred.
pub const FINISH: u32 = 198;
/// inferred.
pub const FLUSH_RASTER_BOARDS: u32 = 0x1cc;
/// inferred.
pub const WINDOW_READ_CLIP_SET_UP: u32 = 0x1ee;
/// inferred.
pub const WINDOW_CLIP_SET_UP: u32 = 0x1f3;
/// inferred.
pub const DISPLAY_BANK_SET_UP: u32 = 0x1f4;
/// inferred.
pub const WINDOW_SYSTEM_CONTEXT_INITIALISE: u32 = 0x128;
/// inferred.
pub const WINDOW_SYSTEM_CLIP_LIST_LOAD: u32 = 0x12c;
/// inferred.
pub const LOAD_COLOUR_MAP_ENTRIES: u32 = 0x12e;
/// inferred.
pub const LOAD_GAMMA_TABLE_ENTRIES: u32 = 0x12f;
/// inferred.
pub const LOAD_CURSOR_IMAGE_BLOCK: u32 = 0x130;
/// inferred.
pub const LOAD_CURSOR_COLOUR_WORDS: u32 = 0x131;
/// inferred.
pub const LOAD_ONE_ENTRY_DISPLAY_ID_TABLE: u32 = 0x132;
/// inferred.
pub const WINDOW_CREATED_DESTROYED_NOTICE_COLOUR_MAP: u32 = 0x133;
/// inferred.
pub const WINDOW_SYSTEM_PIXEL_PATH_SET_UP: u32 = 0x136;
/// inferred.
pub const WINDOW_SYSTEM_PIXEL_COPY: u32 = 0x137;
/// inferred.
pub const WINDOW_SYSTEM_PIXEL_READ: u32 = 0x138;
/// inferred.
pub const WINDOW_SYSTEM_PIXEL_WRITE: u32 = 0x139;
/// inferred.
pub const WINDOW_SYSTEM_PIXEL_PATH_FINISH: u32 = 0x13a;
/// inferred.
pub const LOAD_WINDOW_SYSTEM_STIPPLE: u32 = 0x13c;
/// inferred.
pub const STORE_WINDOW_SYSTEM_STIPPLE: u32 = 0x13d;
/// inferred.
pub const ROTATE_WINDOW_SYSTEM_STIPPLE: u32 = 0x13e;
/// inferred.
pub const FLUSH_REBUILD_HARDWARE_TOKEN_MAP_PACKED: u32 = 2;
/// inferred.
pub const SET_STENCIL_WRITE_MASK_TOKEN: u32 = 32;
/// inferred.
pub const SET_COLOUR_WRITE_MASK_TOKEN: u32 = 33;
/// inferred.
pub const SET_DEPTH_WRITE_MASK_TOKEN: u32 = 34;
/// inferred.
pub const SET_COLOUR_INDEX_WRITE_MASK_TOKEN: u32 = 35;
/// inferred.
pub const SET_LOGIC_OPERATION: u32 = 46;
/// inferred.
pub const SET_CURRENT_EDGE_FLAG: u32 = 167;
/// inferred.
pub const SET_FACE_CULLING: u32 = 182;
/// inferred.
pub const SET_FRONT_FACE_WINDING: u32 = 186;
/// inferred.
pub const SET_QUALITY_HINT: u32 = 187;
/// inferred.
pub const SET_LINE_STIPPLE: u32 = 188;
/// inferred.
pub const SET_LINE_WIDTH: u32 = 189;
/// inferred.
pub const SET_POINT_SIZE: u32 = 190;
/// established.
pub const SET_POLYGON_FILL_MODE: u32 = 191;
/// inferred.
pub const SET_FLAT_SMOOTH_SHADING: u32 = 192;
/// inferred.
pub const SET_ALPHA_TEST: u32 = 202;
/// inferred.
pub const SET_BLEND_FACTORS: u32 = 203;
/// inferred.
pub const SET_STENCIL_TEST: u32 = 204;
/// inferred.
pub const SET_STENCIL_OPERATIONS: u32 = 205;
/// inferred.
pub const SET_DEPTH_TEST: u32 = 206;
/// inferred.
pub const SET_CONSTANT_BLEND_COLOUR: u32 = 230;
/// inferred.
pub const SET_BLEND_EQUATION: u32 = 231;
/// established.
pub const SET_FOG_FUNCTION_TABLE: u32 = 0x10f;
/// inferred.
pub const SWITCH_LEGACY_API_COMPATIBILITY_MODE: u32 = 0x112;
/// inferred.
pub const SET_MULTISAMPLE_PATTERN: u32 = 0x117;
/// inferred.
pub const SET_MULTISAMPLE_COVERAGE_MASK_TOKEN: u32 = 0x118;
/// inferred.
pub const SET_POLYGON_OFFSET: u32 = 0x11b;
/// inferred.
pub const SET_POLYGON_OFFSET_168: u32 = 0x168;
/// inferred.
pub const SET_SPRITE_PARAMETER: u32 = 0x1a4;
/// inferred.
pub const SET_SPRITE_PARAMETERS: u32 = 0x1a5;
/// inferred.
pub const SET_POINT_PARAMETER: u32 = 0x1a7;
/// inferred.
pub const SET_POINT_PARAMETERS: u32 = 0x1a8;
/// inferred.
pub const FREE_ARM_TEXTURE_CACHE_ENTRY: u32 = 0x1c5;
/// inferred.
pub const SET_TRIANGLE_MESH_MODE: u32 = 0x1c9;
/// inferred.
pub const LOAD_ENGINE_TRANSFORM_ATTRIBUTES: u32 = 0x1ca;
/// inferred.
pub const SET_LAZY_VALIDATION_MODE: u32 = 0x1ce;
/// inferred.
pub const CLEAR_SELECTED_BUFFERS: u32 = 26;
/// inferred.
pub const SET_ACCUMULATION_BUFFER_CLEAR_VALUE: u32 = 27;
/// inferred.
pub const SET_COLOUR_INDEX_CLEAR_VALUE: u32 = 28;
/// inferred.
pub const SET_COLOUR_CLEAR_VALUE: u32 = 29;
/// inferred.
pub const SET_STENCIL_CLEAR_VALUE: u32 = 30;
/// inferred.
pub const SET_DEPTH_CLEAR_VALUE: u32 = 31;
/// inferred.
pub const ACCUMULATION_BUFFER_OPERATION: u32 = 197;
/// inferred.
pub const ENABLE_CAPABILITY: u32 = 36;
/// inferred.
pub const DISABLE_CAPABILITY: u32 = 37;
/// inferred.
pub const SET_LIGHT_PARAMETER: u32 = 7;
/// inferred.
pub const SET_LIGHT_PARAMETER_008: u32 = 8;
/// inferred.
pub const SET_LIGHTING_MODEL_PARAMETER: u32 = 9;
/// inferred.
pub const SET_LIGHTING_MODEL_PARAMETER_00A: u32 = 10;
/// inferred.
pub const SET_COLOUR_MATERIAL_TRACKING: u32 = 181;
/// inferred.
pub const SET_COLOUR_MATERIAL_VALUE: u32 = 0x113;
/// inferred.
pub const POP_SAVED_LIGHT_STATE: u32 = 0x119;
/// inferred.
pub const SET_SCISSOR_BOX: u32 = 12;
/// inferred.
pub const SET_USER_CLIP_PLANE: u32 = 180;
/// inferred.
pub const SET_DEPTH_RANGE: u32 = 207;
/// inferred.
pub const SELECT_CURRENT_MATRIX_STACK: u32 = 208;
/// inferred.
pub const SET_VIEWPORT: u32 = 227;
/// established.
pub const SET_TEXTURE_ENVIRONMENT_PARAMETER: u32 = 17;
/// established.
pub const SET_TEXTURE_ENVIRONMENT_PARAMETER_012: u32 = 18;
/// established.
pub const TEXTURE_COORDINATE_GENERATION: u32 = 19;
/// inferred.
pub const TEXTURE_COORDINATE_GENERATION_014: u32 = 20;
/// established.
pub const TEXTURE_COORDINATE_GENERATION_015: u32 = 21;
/// established.
pub const OLD_STYLE_TEXTURE_BIND: u32 = 22;
/// established.
pub const COPY_2D_TEXTURE_IMAGE_FRAME_BUFFER: u32 = 253;
/// established.
pub const BIND_LINEAR_TEXTURE: u32 = 0x106;
/// established.
pub const TEXTURE_LOAD_SET_UP: u32 = 0x173;
/// established.
pub const DRAW_TEXELS_INTO_TEXTURE_MEMORY: u32 = 0x174;
/// established.
pub const TEXTURE_LOAD_FINISH: u32 = 0x176;
/// established.
pub const SELECT_ACTIVE_TEXTURE_TARGET: u32 = 0x177;
/// established.
pub const BIND_TEXTURE_CACHE_ENTRY_NUMBER: u32 = 0x178;
/// established.
pub const BIND_BICUBIC_TEXTURE: u32 = 0x17a;
/// established.
pub const BIND_3D_MIP_MAPPED_TEXTURE: u32 = 0x17b;
/// established.
pub const BIND_3D_TEXTURE: u32 = 0x17c;
/// established.
pub const BIND_DETAIL_TEXTURE: u32 = 0x17d;
/// established.
pub const LOAD_ONE_FILTER_TABLE_SLOT: u32 = 0x17e;
/// established.
pub const BIND_2D_CLIP_MAP_TEXTURE: u32 = 0x1aa;
/// established.
pub const SET_TEXEL_STORE_PARAMETER: u32 = 0x1bb;
/// established.
pub const BIND: u32 = 0x1c4;
/// inferred.
pub const SET_SHADOW_TEXTURE_STATE: u32 = 0x1c7;
/// established.
pub const BIND_TEXTURE: u32 = 0x1d5;
/// inferred.
pub const POP_TEXTURE_GENERATION_STATE: u32 = 0x1d6;
/// established.
pub const CHANGE_POST_TEXTURE_SCALE_BIAS: u32 = 0x1d7;
/// established.
pub const INVALIDATE_ARM_TEXTURE_CACHE_INDEX: u32 = 0x1e0;
/// inferred.
pub const DRAW_BITMAP_DISPLAY_LIST: u32 = 5;
/// established.
pub const DRAW_BITMAP: u32 = 6;
/// inferred.
pub const LOAD_POLYGON_STIPPLE_PATTERN: u32 = 11;
/// inferred.
pub const SET_PIXEL_ZOOM_FACTORS: u32 = 47;
/// inferred.
pub const SET_PIXEL_TRANSFER_PARAMETER_030: u32 = 48;
/// inferred.
pub const SET_PIXEL_STORE_PARAMETER_033: u32 = 51;
/// established.
pub const LOAD_PIXEL_MAP: u32 = 52;
/// established.
pub const LOAD_PIXEL_MAP_035: u32 = 53;
/// established.
pub const LOAD_PIXEL_MAP_036: u32 = 54;
/// inferred.
pub const COPY_PIXEL_RECTANGLE_WITHIN_FRAME_BUFFER: u32 = 56;
/// inferred.
pub const READ_PIXEL_RECTANGLE_BACK_HOST: u32 = 57;
/// established.
pub const DRAW_PIXEL_RECTANGLE_HOST_DATA: u32 = 58;
/// inferred.
pub const LOAD_COLOUR_TABLE: u32 = 232;
/// inferred.
pub const SET_COLOUR_TABLE_PARAMETERS: u32 = 235;
/// inferred.
pub const LOAD_1D_CONVOLUTION_FILTER: u32 = 239;
/// inferred.
pub const LOAD_2D_CONVOLUTION_FILTER: u32 = 240;
/// inferred.
pub const COPY_1D_CONVOLUTION_FILTER_FRAME_BUFFER: u32 = 242;
/// inferred.
pub const COPY_2D_CONVOLUTION_FILTER_FRAME_BUFFER: u32 = 243;
/// inferred.
pub const LOAD_SEPARABLE_2D_FILTER: u32 = 245;
/// inferred.
pub const SET_PIXEL_TRANSFORM_PARAMETERS: u32 = 248;
/// inferred.
pub const SET_PIXEL_TRANSFORM_PARAMETERS_0F9: u32 = 249;
/// inferred.
pub const SET_UP_HISTOGRAM: u32 = 0x102;
/// inferred.
pub const RESET_HISTOGRAM: u32 = 0x103;
/// inferred.
pub const SET_UP_MIN_MAX_TRACKING: u32 = 0x107;
/// inferred.
pub const RESET_MIN_MAX_TRACKING: u32 = 0x108;
/// inferred.
pub const ASK_WHETHER_COPY_SOURCE_OVERLAPS_DESTINATION: u32 = 0x110;
/// established.
pub const SUSPEND_PIXEL_MODE_STATE_AROUND_TRANSFER: u32 = 0x111;
/// inferred.
pub const ASK_WHETHER_CONVOLUTION_COPY_OVERLAPS: u32 = 0x115;
/// inferred.
pub const RESOLVE_WHETHER_PIXEL_FORMAT_SINGLE_COMPONENT: u32 = 0x116;
/// inferred.
pub const SET_PIXEL_TRANSFORM_MODE: u32 = 0x135;
/// inferred.
pub const SELECT_FEEDBACK_RECORD_TYPE: u32 = 23;
/// inferred.
pub const SWITCH_BETWEEN_RENDER: u32 = 25;
/// inferred.
pub const INSERT_FEEDBACK_PASS_THROUGH_MARKER: u32 = 193;
/// inferred.
pub const POP_SELECTION_NAME: u32 = 194;
/// inferred.
pub const PUSH_SELECTION_NAME: u32 = 195;
/// inferred.
pub const POP_ATTRIBUTE_STACK: u32 = 200;
/// inferred.
pub const PUSH_ATTRIBUTE_STACK: u32 = 201;
/// inferred.
pub const CLEAR_SELECTION_NAME_STACK: u32 = 0x10c;
/// inferred.
pub const REPLACE_TOP_SELECTION_NAME: u32 = 0x10d;
/// inferred.
pub const COPY_USER_LIST_LIST_DMA: u32 = 0x167;
/// inferred.
pub const COPY_LIST_LIST_DMA: u32 = 0x16c;
/// inferred.
pub const EXECUTE_LIST_LIST_DMA: u32 = 0x16d;
/// inferred.
pub const EXECUTE_LIST_INPUT_DMA: u32 = 0x16e;
/// inferred.
pub const MOVE_LIST_LIST_DMA: u32 = 0x16f;
/// inferred.
pub const EXECUTE_LIST_LIST_DMA_170: u32 = 0x170;
/// inferred.
pub const EXECUTE_LIST_INPUT_DMA_171: u32 = 0x171;
/// inferred.
pub const COPY_LIST_INPUT_DMA_THEN_LIST: u32 = 0x1c8;
/// inferred.
pub const START_INPUT_DMA: u32 = 0x1eb;
/// inferred.
pub const EVALUATE_1D_GRID_STRIP: u32 = 38;
/// inferred.
pub const EVALUATE_2D_GRID_STRIP: u32 = 39;
/// inferred.
pub const LOAD_1D_EVALUATOR_CONTROL_POINTS: u32 = 42;
/// inferred.
pub const LOAD_2D_EVALUATOR_CONTROL_POINTS: u32 = 43;
/// inferred.
pub const SET_RASTER_POSITION: u32 = 168;
/// inferred.
pub const SET_RASTER_POSITION_0A9: u32 = 169;
/// inferred.
pub const SET_RASTER_POSITION_0AA: u32 = 170;
/// inferred.
pub const SET_RASTER_POSITION_0AB: u32 = 171;
/// inferred.
pub const SET_RASTER_POSITION_0AC: u32 = 172;
/// inferred.
pub const SET_RASTER_POSITION_0AD: u32 = 173;
/// inferred.
pub const SET_RASTER_POSITION_0AE: u32 = 174;
/// inferred.
pub const SET_RASTER_POSITION_0AF: u32 = 175;
/// inferred.
pub const SET_RASTER_POSITION_0B0: u32 = 176;
/// inferred.
pub const SET_RASTER_POSITION_0B1: u32 = 177;
/// inferred.
pub const SET_RASTER_POSITION_0B2: u32 = 178;
/// inferred.
pub const SET_RASTER_POSITION_0B3: u32 = 179;
/// inferred.
pub const SET_CURRENT_RASTER_POSITION: u32 = 0x10e;
/// inferred.
pub const SET_VERTEX_ARRAY_COMMAND_TABLE: u32 = 0x180;
/// inferred.
pub const VERTEX_ARRAY_SET_UP: u32 = 0x181;
/// inferred.
pub const BEGIN_VERTEX_ARRAY_LOOP: u32 = 0x182;
/// inferred.
pub const VERTEX_ARRAY_TEAR_DOWN: u32 = 0x1a3;
/// inferred.
pub const PACKED_VERTEX_SET_UP: u32 = 0x1b7;
/// inferred.
pub const PACKED_VERTEX_CLEAN_UP: u32 = 0x1cf;
/// inferred.
pub const SUBDIVISION_PATCH: u32 = 0x1d0;
/// inferred.
pub const SUBDIVISION_PATCH_SET_UP: u32 = 0x1d1;
/// inferred.
pub const SUBDIVISION_PATCH_CLEAN_UP: u32 = 0x1d2;
/// inferred.
pub const SUBDIVISION_PATCH_PARAMETER: u32 = 0x1d3;
/// inferred.
pub const SET_INSTRUMENTATION_BUFFER: u32 = 0x1b8;
/// inferred.
pub const START_INSTRUMENTATION: u32 = 0x1b9;
/// inferred.
pub const STOP_INSTRUMENTATION: u32 = 0x1ba;
/// inferred.
pub const READ_INSTRUMENTATION_COUNTERS: u32 = 0x1cd;
/// inferred.
pub const TEXTURE_LOAD_SET_UP_175: u32 = 0x175;
/// inferred.
pub const KERNEL_PRIVATE_COMMAND: u32 = 0x1fe;
/// established.
pub const BEGIN_PRIMITIVE: u32 = 3;
/// established.
pub const BEGIN_PRIMITIVE_057: u32 = 87;
/// established.
pub const BEGIN_PRIMITIVE_058: u32 = 88;
/// established.
pub const BEGIN_PRIMITIVE_059: u32 = 89;
/// established.
pub const BEGIN_PRIMITIVE_05A: u32 = 90;
/// established.
pub const BEGIN_PRIMITIVE_05B: u32 = 91;
/// established.
pub const BEGIN_PRIMITIVE_05C: u32 = 92;
/// established.
pub const BEGIN_PRIMITIVE_05D: u32 = 93;
/// established.
pub const BEGIN_PRIMITIVE_05E: u32 = 94;
/// established.
pub const BEGIN_PRIMITIVE_05F: u32 = 95;
/// established.
pub const BEGIN_PRIMITIVE_060: u32 = 96;
/// established.
pub const END_OPEN_PRIMITIVE: u32 = 113;
/// inferred.
pub const SWAP_TRIANGLE_MESH_VERTEX: u32 = 0x1a9;
/// inferred.
pub const BEGIN_PRIMITIVE_1D4: u32 = 0x1d4;
/// inferred.
pub const SET_CURRENT_COLOUR: u32 = 97;
/// inferred.
pub const SET_CURRENT_COLOUR_062: u32 = 98;
/// inferred.
pub const SET_CURRENT_COLOUR_063: u32 = 99;
/// inferred.
pub const SET_CURRENT_COLOUR_064: u32 = 100;
/// inferred.
pub const SET_CURRENT_COLOUR_065: u32 = 101;
/// inferred.
pub const SET_CURRENT_COLOUR_066: u32 = 102;
/// inferred.
pub const SET_CURRENT_COLOUR_067: u32 = 103;
/// inferred.
pub const SET_CURRENT_COLOUR_068: u32 = 104;
/// inferred.
pub const SET_CURRENT_COLOUR_069: u32 = 105;
/// inferred.
pub const SET_CURRENT_COLOUR_06A: u32 = 106;
/// inferred.
pub const SET_CURRENT_COLOUR_06B: u32 = 107;
/// inferred.
pub const SET_CURRENT_COLOUR_06C: u32 = 108;
/// inferred.
pub const SET_CURRENT_COLOUR_06D: u32 = 109;
/// inferred.
pub const SET_CURRENT_COLOUR_06E: u32 = 110;
/// inferred.
pub const SET_CURRENT_COLOUR_06F: u32 = 111;
/// inferred.
pub const SET_CURRENT_COLOUR_070: u32 = 112;
/// inferred.
pub const SET_CURRENT_COLOUR_INDEX: u32 = 114;
/// inferred.
pub const SET_CURRENT_COLOUR_INDEX_073: u32 = 115;
/// inferred.
pub const SET_CURRENT_COLOUR_INDEX_074: u32 = 116;
/// inferred.
pub const SET_CURRENT_COLOUR_INDEX_075: u32 = 117;
/// inferred.
pub const SET_CURRENT_NORMAL: u32 = 118;
/// inferred.
pub const SET_CURRENT_NORMAL_077: u32 = 119;
/// inferred.
pub const SET_CURRENT_NORMAL_078: u32 = 120;
/// inferred.
pub const SET_CURRENT_NORMAL_079: u32 = 121;
/// inferred.
pub const SET_CURRENT_NORMAL_07A: u32 = 122;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE: u32 = 123;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_07C: u32 = 124;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_07D: u32 = 125;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_07E: u32 = 126;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_07F: u32 = 127;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_080: u32 = 128;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_081: u32 = 129;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_082: u32 = 130;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_083: u32 = 131;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_084: u32 = 132;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_085: u32 = 133;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_086: u32 = 134;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_087: u32 = 135;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_088: u32 = 136;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_089: u32 = 137;
/// established.
pub const SET_CURRENT_TEXTURE_COORDINATE_08A: u32 = 138;
/// inferred.
pub const SUBMIT_VERTEX: u32 = 139;
/// inferred.
pub const SUBMIT_VERTEX_08C: u32 = 140;
/// inferred.
pub const SUBMIT_VERTEX_08D: u32 = 141;
/// inferred.
pub const SUBMIT_VERTEX_08E: u32 = 142;
/// inferred.
pub const SUBMIT_VERTEX_08F: u32 = 143;
/// inferred.
pub const SUBMIT_VERTEX_090: u32 = 144;
/// inferred.
pub const SUBMIT_VERTEX_091: u32 = 145;
/// inferred.
pub const SUBMIT_VERTEX_092: u32 = 146;
/// inferred.
pub const SUBMIT_VERTEX_093: u32 = 147;
/// inferred.
pub const SUBMIT_VERTEX_094: u32 = 148;
/// inferred.
pub const SUBMIT_VERTEX_095: u32 = 149;
/// inferred.
pub const SUBMIT_VERTEX_096: u32 = 150;
/// inferred.
pub const PACKED_VERTEX: u32 = 0x1ab;
/// inferred.
pub const PACKED_VERTEX_1AC: u32 = 0x1ac;
/// inferred.
pub const PACKED_VERTEX_1AD: u32 = 0x1ad;
/// inferred.
pub const PACKED_VERTEX_1AE: u32 = 0x1ae;
/// inferred.
pub const PACKED_VERTEX_1AF: u32 = 0x1af;
/// inferred.
pub const PACKED_VERTEX_1B0: u32 = 0x1b0;
/// inferred.
pub const PACKED_VERTEX_1B1: u32 = 0x1b1;
/// inferred.
pub const PACKED_VERTEX_1B2: u32 = 0x1b2;
/// inferred.
pub const PACKED_VERTEX_1B3: u32 = 0x1b3;
/// inferred.
pub const PACKED_VERTEX_1B4: u32 = 0x1b4;
/// inferred.
pub const PACKED_VERTEX_1B5: u32 = 0x1b5;
/// inferred.
pub const PACKED_VERTEX_1B6: u32 = 0x1b6;
/// established.
pub const SET_UP_1D_EVALUATOR_GRID: u32 = 40;
/// established.
pub const SET_UP_2D_EVALUATOR_GRID: u32 = 41;
/// inferred.
pub const SET_UP_1D_EVALUATOR_MAP_SPECIFICATION: u32 = 44;
/// inferred.
pub const SET_UP_2D_EVALUATOR_MAP_SPECIFICATION: u32 = 45;
/// inferred.
pub const SET_MATERIAL_PARAMETER: u32 = 151;
/// inferred.
pub const CONTINUATION_ENTRY_FLOAT_MATERIAL_PARAMETER: u32 = 152;
/// inferred.
pub const SET_MATERIAL_PARAMETER_099: u32 = 153;
/// inferred.
pub const CONTINUATION_ENTRY_INTEGER_MATERIAL_PARAMETER: u32 = 154;
/// inferred.
pub const EVALUATOR_COORDINATE: u32 = 155;
/// inferred.
pub const CONTINUATION_ENTRY_EVALUATOR_EVAL_COORD1D: u32 = 156;
/// inferred.
pub const EVALUATOR_COORDINATE_09D: u32 = 157;
/// inferred.
pub const CONTINUATION_ENTRY_EVALUATOR_EVAL_COORD1F: u32 = 158;
/// inferred.
pub const EVALUATOR_COORDINATE_09F: u32 = 159;
/// inferred.
pub const CONTINUATION_ENTRY_EVALUATOR_EVAL_COORD2D: u32 = 160;
/// inferred.
pub const EVALUATOR_COORDINATE_0A1: u32 = 161;
/// inferred.
pub const CONTINUATION_ENTRY_EVALUATOR_EVAL_COORD2F: u32 = 162;
/// inferred.
pub const EVALUATOR_GRID_POINT: u32 = 163;
/// inferred.
pub const CONTINUATION_ENTRY_EVALUATOR_EVAL_POINT1: u32 = 164;
/// inferred.
pub const EVALUATOR_GRID_POINT_0A5: u32 = 165;
/// inferred.
pub const CONTINUATION_ENTRY_EVALUATOR_EVAL_POINT2: u32 = 166;
/// inferred.
pub const SET_COLOUR_NORMAL_MODE_VALUE: u32 = 0x1be;
/// inferred.
pub const DEFORMATION_CONTROL: u32 = 0x1bf;
/// inferred.
pub const DEFORMATION_MAP: u32 = 0x1c0;
/// inferred.
pub const DEFORMATION_MAP_1C1: u32 = 0x1c1;
/// inferred.
pub const CONTINUATION_ENTRY_DOUBLE_DEFORMATION_MAP: u32 = 0x1c2;
/// inferred.
pub const LOAD_IDENTITY_DEFORMATION: u32 = 0x1c3;
/// established.
pub const MULTIPLY_CURRENT_MATRIX_FRUSTUM: u32 = 209;
/// established.
pub const LOAD_IDENTITY_MATRIX: u32 = 210;
/// established.
pub const LOAD_MATRIX: u32 = 211;
/// established.
pub const LOAD_MATRIX_0D4: u32 = 212;
/// established.
pub const MULTIPLY_MATRIX: u32 = 213;
/// established.
pub const MULTIPLY_MATRIX_0D6: u32 = 214;
/// established.
pub const MULTIPLY_CURRENT_MATRIX_ORTHOGRAPHIC_PROJECTION: u32 = 215;
/// established.
pub const POP_MATRIX_STACK: u32 = 216;
/// established.
pub const PUSH_MATRIX_STACK: u32 = 217;
/// established.
pub const ROTATE: u32 = 218;
/// established.
pub const ROTATE_0DB: u32 = 219;
/// established.
pub const SCALE: u32 = 220;
/// established.
pub const SCALE_0DD: u32 = 221;
/// established.
pub const TRANSLATE: u32 = 222;
/// established.
pub const TRANSLATE_0DF: u32 = 223;
/// established.
pub const WINDOW_SYSTEM_GRAPHICS_CONTEXT_LOAD: u32 = 0x129;
/// established.
pub const WINDOW_SYSTEM_DRAWABLE_ORIGIN_SIZE_LOAD: u32 = 0x12a;
/// established.
pub const WINDOW_SYSTEM_CLIP_LOAD: u32 = 0x12b;
/// established.
pub const WINDOW_SYSTEM_SCISSOR_LOAD: u32 = 0x12d;
/// inferred.
pub const WINDOW_SYSTEM_1_WORD_DATA_PRELOAD: u32 = 0x141;
/// inferred.
pub const WINDOW_SYSTEM_2_WORD_DATA_PRELOAD: u32 = 0x142;
/// inferred.
pub const WINDOW_SYSTEM_3_WORD_DATA_PRELOAD: u32 = 0x143;
/// inferred.
pub const WINDOW_SYSTEM_4_WORD_DATA_PRELOAD: u32 = 0x144;
/// inferred.
pub const WINDOW_SYSTEM_FOUR_WORD_DATA_PRELOAD: u32 = 0x145;
/// inferred.
pub const WINDOW_SYSTEM_5_WORD_DATA_PRELOAD: u32 = 0x146;
/// inferred.
pub const WINDOW_SYSTEM_6_WORD_DATA_PRELOAD: u32 = 0x147;
/// inferred.
pub const WINDOW_SYSTEM_7_WORD_DATA_PRELOAD: u32 = 0x148;
/// inferred.
pub const WINDOW_SYSTEM_8_WORD_DATA_PRELOAD: u32 = 0x149;
/// inferred.
pub const WINDOW_SYSTEM_9_WORD_DATA_PRELOAD: u32 = 0x14a;
/// inferred.
pub const WINDOW_SYSTEM_10_WORD_DATA_PRELOAD: u32 = 0x14b;
/// established.
pub const DRAW_ABSOLUTE_POINTS: u32 = 0x14c;
/// established.
pub const DRAW_ABSOLUTE_POINTS_14D: u32 = 0x14d;
/// established.
pub const DRAW_ABSOLUTE_POINTS_14E: u32 = 0x14e;
/// inferred.
pub const DRAW_RELATIVE_POINTS: u32 = 0x14f;
/// inferred.
pub const DRAW_RELATIVE_POINTS_150: u32 = 0x150;
/// inferred.
pub const DRAW_RELATIVE_POINTS_151: u32 = 0x151;
/// established.
pub const FILL_RECTANGLES: u32 = 0x152;
/// established.
pub const FILL_RECTANGLES_153: u32 = 0x153;
/// established.
pub const FILL_BOXES: u32 = 0x154;
/// established.
pub const FILL_BOXES_155: u32 = 0x155;
/// established.
pub const FILL_SPANS: u32 = 0x156;
/// established.
pub const FILL_SPANS_157: u32 = 0x157;
/// established.
pub const FILL_SPANS_158: u32 = 0x158;
/// unknown.
pub const DRAW_LINE_SEGMENTS: u32 = 0x159;
/// inferred.
pub const DRAW_LINE_SEGMENTS_15A: u32 = 0x15a;
/// inferred.
pub const DRAW_CONNECTED_POLYLINE: u32 = 0x15b;
/// inferred.
pub const DRAW_CONNECTED_POLYLINE_15C: u32 = 0x15c;
/// inferred.
pub const DRAW_CONNECTED_POLYLINE_15D: u32 = 0x15d;
/// inferred.
pub const DRAW_CONNECTED_POLYLINE_15E: u32 = 0x15e;
/// inferred.
pub const DRAW_POINTS_BACKGROUND_COLOUR: u32 = 0x15f;
/// inferred.
pub const DRAW_POINTS_BACKGROUND_COLOUR_160: u32 = 0x160;
/// inferred.
pub const DRAW_POINTS_BACKGROUND_COLOUR_161: u32 = 0x161;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_0: u32 = 0x183;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_1: u32 = 0x184;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_2: u32 = 0x185;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_3: u32 = 0x186;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_4: u32 = 0x187;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_5: u32 = 0x188;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_6: u32 = 0x189;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_7: u32 = 0x18a;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_8: u32 = 0x18b;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_9: u32 = 0x18c;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_10: u32 = 0x18d;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_11: u32 = 0x18e;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_12: u32 = 0x18f;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_13: u32 = 0x190;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_14: u32 = 0x191;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_15: u32 = 0x192;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_16: u32 = 0x193;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_17: u32 = 0x194;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_18: u32 = 0x195;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_19: u32 = 0x196;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_20: u32 = 0x197;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_21: u32 = 0x198;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_22: u32 = 0x199;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_23: u32 = 0x19a;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_24: u32 = 0x19b;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_25: u32 = 0x19c;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_26: u32 = 0x19d;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_27: u32 = 0x19e;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_28: u32 = 0x19f;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_29: u32 = 0x1a0;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_30: u32 = 0x1a1;
/// inferred.
pub const VERTEX_ARRAY_LOOP_ENTRY_31: u32 = 0x1a2;
/// established.
pub const SET_FOG_PARAMETER: u32 = 183;
/// unknown.
pub const SET_FOG_PARAMETER_0B8: u32 = 184;
/// established.
pub const CONTINUATION_ENTRY_INTEGER_FOG_PARAMETER: u32 = 185;
/// inferred.
pub const FLUSH_VERTEX_PIPELINE: u32 = 199;
/// inferred.
pub const COPY_ENGINE_WORK_MEMORY_CONTROL_MEMORY: u32 = 224;
/// inferred.
pub const PASS_ONE_COMMAND_WORD_THROUGH: u32 = 225;
/// established.
pub const WRITE_ONE_RASTER_BUS_WORD: u32 = 226;
/// established.
pub const LOAD_POST_TEXTURE_SCALE_BIAS: u32 = 237;
/// inferred.
pub const SAVE_LIGHT_ATTRIBUTES_ENGINE_ATTRIBUTE_STACK: u32 = 0x10b;
/// inferred.
pub const RESERVED_DIAGNOSTIC_TOKEN_0: u32 = 0x16a;
/// inferred.
pub const RESERVED_DIAGNOSTIC_TOKEN_1: u32 = 0x16b;
/// inferred.
pub const DISTRIBUTOR_NO_OP_PADDING_WORD: u32 = 0x172;
/// established.
pub const BIND_2D_MIP_MAPPED_TEXTURE: u32 = 0x179;
/// established.
pub const SET_REFERENCE_PLANE: u32 = 0x1bd;
/// inferred.
pub const SKIP_2_WORDS: u32 = 0x1d8;
/// inferred.
pub const SKIP_4_WORDS: u32 = 0x1d9;
/// inferred.
pub const SKIP_5_WORDS: u32 = 0x1da;
