# multi-field words of the host command stream

<!-- generated from defs/words.toml by defs-gen - do not edit, change the source -->

Bit layouts of the multi-field words of the host command stream, and the engine command descriptor values.

Unit `words`, macro prefix `WORD`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `BIND_CONTROL` | 32 | established |  |
| `BIND_LOD_BOUNDS` | 32 | established |  |
| `BIND_LOD_SCALE` | 32 | established |  |
| `BIND_MODE` | 32 | established |  |
| `BIND_PHYS_SIZE` | 32 | established |  |
| `BIND_SIZE` | 32 | established |  |
| `DISPLAY_ID_RANGE` | 32 | established |  |
| `GC_LOAD_W4` | 32 | established |  |
| `GC_LOAD_W6` | 32 | established |  |
| `GC_LOAD_W7` | 32 | established |  |
| `ID_FG_LARGE_HI` | 32 | established |  |
| `ID_FG_SMALL_LO` | 32 | established |  |
| `ID_MASK_LARGE_HI` | 32 | established |  |
| `ID_MASK_SMALL_LO` | 32 | established |  |
| `MODE_BYTE` | 32 | established |  |
| `MODE_BYTE_OVERLAY` | 32 | established |  |
| `MS_CONTROL` | 32 | established |  |
| `MS_LOCATIONS` | 32 | established |  |
| `OVERLAY_RGB15` | 32 | established |  |
| `PIXEL_SETUP_W0` | 32 | established |  |
| `TEXLOAD_LAYOUT` | 32 | established |  |
| `TEXLOAD_SIZE` | 32 | established |  |
| `WINDOW_W2` | 32 | inferred |  |
| `WINDOW_W3` | 32 | inferred |  |

### Word `BIND_CONTROL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:28 | `target` | established | detail=0, tex1d=1, tex2d=2, tex3d=3 |  |  |
| 27:24 | `mode` | established | bicubic_table=0, detail_table=1, sharpen_table=2, no_table=3 |  |  |
| 23:12 | `format_index` | established |  |  |  |
| 11:0 | `filter_slot` | inferred |  |  |  |

### Word `BIND_LOD_BOUNDS`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:10 | `max` | established |  |  |  |
| 9:0 | `min` | established |  |  |  |

### Word `BIND_LOD_SCALE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:16 | `r_scale` | established |  |  |  |
| 15:8 | `t_scale` | established |  |  |  |
| 7:0 | `s_scale` | established |  |  |  |

### Word `BIND_MODE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28 | `first_bank` | established |  |  |  |
| 27:26 | `mag_channels` | established | all=0, colour=1, alpha=2, level0=3 |  |  |
| 25:24 | `channel_select` | inferred |  |  |  |
| 23:21 | `detail_level` | established |  |  |  |
| 20:14 | `texel_format` | established |  |  |  |
| 13 | `env_on` | inferred |  |  |  |
| 12 | `clamp_style` | inferred |  |  |  |
| 11:10 | `shadow_compare` | established | off=0, ref_at_least_texel=1, ref_at_most_texel=2 |  |  |
| 9:8 | `flags` | inferred |  |  |  |
| 7:5 | `mag_filter` | established | nearest=0, linear=1, bicubic=2, detail_add=3, detail_modulate=4, sharpen=5 |  |  |
| 4:2 | `min_filter` | inferred | nearest=0, linear=1, bicubic=2 |  |  |
| 1:0 | `sampling` | established | mode2d=0, mode3d=1, mode3d_mip=2, bicubic=3 |  |  |

### Word `BIND_PHYS_SIZE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:8 | `r_exp` | established |  |  |  |
| 7:4 | `t_exp` | established |  |  |  |
| 3:0 | `s_exp` | established |  |  |  |

### Word `BIND_SIZE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14 | `r_clamp` | established |  |  |  |
| 13 | `t_clamp` | established |  |  |  |
| 12 | `s_clamp` | established |  |  |  |
| 11:8 | `r_exp` | established |  |  |  |
| 7:4 | `t_exp` | established |  |  |  |
| 3:0 | `s_exp` | established |  |  |  |

### Word `DISPLAY_ID_RANGE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:19 | `arg2` | established |  |  |  |
| 18:13 | `arg0` | established |  |  |  |
| 12:7 | `arg3` | established |  |  |  |
| 6:0 | `arg1` | established |  |  |  |

### Word `GC_LOAD_W4`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `opaque_fill` | established |  |  |  |
| 23:0 | `plane_mask_rg` | established |  |  |  |

### Word `GC_LOAD_W6`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13:11 | `read_format` | established |  |  |  |
| 5:2 | `colour_format` | established |  |  |  |

### Word `GC_LOAD_W7`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:18 | `read_base` | established |  |  |  |
| 17:14 | `readback_format` | established |  |  |  |
| 3:0 | `draw_buffer` | established |  |  |  |

### Word `ID_FG_LARGE_HI`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:8 | `value_high12` | established |  |  |  |
| 6:3 | `value_low_nibble` | established |  |  |  |

### Word `ID_FG_SMALL_LO`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:14 | `value_high12` | established |  |  |  |
| 12:9 | `value_low_nibble` | established |  |  |  |

### Word `ID_MASK_LARGE_HI`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:20 | `mask_low_nibble` | established |  |  |  |
| 11:0 | `mask_high12` | established |  |  |  |

### Word `ID_MASK_SMALL_LO`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `mask_low12` | established |  |  |  |
| 3:0 | `mask_high_nibble` | established |  |  |  |

### Word `MODE_BYTE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `direct_or_opaque` | established |  |  |  |
| 3 | `ci_or_luminance` | established |  |  |  |
| 2 | `rgb_below_24` | established |  |  |  |
| 1 | `stereo` | established |  |  |  |
| 0 | `back_shown` | established |  |  |  |

### Word `MODE_BYTE_OVERLAY`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:1 | `code` | established | reserved_rgb15=1, overlay=2, overlay_back_start=3, underlay=6, underlay_back_start=7 |  |  |
| 0 | `back_shown` | established |  |  |  |

### Word `MS_CONTROL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 13:12 | `optimisation` | established | none=0, disable=2, enable=3 |  |  |
| 11 | `maintain_two` | established |  |  |  |
| 10:3 | `mask` | established |  |  |  |
| 2 | `mask_op` | established | and_op=0, replace=1 |  |  |
| 1 | `sample_count` | established | four=0, eight=1 |  |  |
| 0 | `enable` | established |  |  |  |

### Word `MS_LOCATIONS`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:21 | `s3_y` | established |  |  |  |
| 20:18 | `s3_x` | established |  |  |  |
| 17:15 | `s2_y` | established |  |  |  |
| 14:12 | `s2_x` | established |  |  |  |
| 11:9 | `s1_y` | established |  |  |  |
| 8:6 | `s1_x` | established |  |  |  |
| 5:3 | `s0_y` | established |  |  |  |
| 2:0 | `s0_x` | established |  |  |  |

### Word `OVERLAY_RGB15`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:10 | `red` | established |  |  |  |
| 9:5 | `green` | established |  |  |  |
| 4:0 | `blue` | established |  |  |  |

### Word `PIXEL_SETUP_W0`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `direct_write` | established |  |  |  |
| 3:0 | `kind` | established |  |  |  |

### Word `TEXLOAD_LAYOUT`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `interlaced_download` | established |  |  |  |
| 14:11 | `t_addr_bits` | established |  |  |  |
| 10:7 | `s_addr_bits` | established |  |  |  |
| 6:5 | `layout_mode` | established |  |  |  |
| 3 | `bank` | established |  |  |  |
| 2 | `dma` | established |  |  |  |
| 1:0 | `size_code` | established | bits16=0, bits32=1, slot64=2 |  |  |

### Word `TEXLOAD_SIZE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:8 | `r_exp` | established |  |  |  |
| 7:4 | `t_exp` | established |  |  |  |
| 3:0 | `s_exp` | established |  |  |  |

### Word `WINDOW_W2`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `x_bias` | inferred |  |  |  |
| 15:0 | `width` | inferred |  |  |  |

### Word `WINDOW_W3`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `y_bias` | inferred |  |  |  |
| 15:0 | `height` | inferred |  |  |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `DESC_DISTRIBUTOR_PROGRAM` | 0x48200020 | established |  | write one word of the 1024-word distributor program |
| `DESC_DISTRIBUTOR_STEP` | 0x44200020 | inferred |  | distributor step register on, at pipe set-up |
| `DESC_ENGINE_REG_ADDRESS` | 0x46a00020 | established |  | engine register address port (distributor register number 565) |
| `DESC_ENGINE_REG_DATA` | 0x46600020 | established |  | engine register data port (distributor register number 563) |
| `DESC_ENGINE_TABLE_ENTRY` | 0x46200020 | established |  | write one handler table entry and advance the index |
| `DESC_ENGINE_TABLE_INDEX` | 0x46000020 | established |  | set the engine handler table index |
| `DESC_ENTRY_TABLE` | 0x42600020 | established |  | load the 512-word entry table |
| `DESC_IMAGE_PROCESSOR_WRITE` | 0x584fc800 | established |  | image-processor register write, same three words |
| `DESC_PRIMITIVE_CLASS_TABLE` | 0x42200020 | established |  | load the 16-word primitive-class table |
| `DESC_RASTER_BUS_WRITE` | 0x58404800 | established |  | raster-bus register write, three payload words: bit mask, address word, value |
| `FOG_PARAMETER_COLOUR` | 0xb66 | established |  |  |
| `FOG_PARAMETER_DENSITY` | 0xb62 | established |  |  |
| `FOG_PARAMETER_END` | 0xb64 | established |  |  |
| `FOG_PARAMETER_INDEX` | 0xb61 | established |  |  |
| `FOG_PARAMETER_MODE` | 0xb65 | established |  |  |
| `FOG_PARAMETER_OFFSET` | 0x8199 | established |  |  |
| `FOG_PARAMETER_START` | 0xb63 | established |  |  |
| `GC_LOAD_W4_BUS_ENABLE` | 0xffffff | established |  | the bus mask the load applies; bit 31 is outside it |
| `GC_LOAD_W6_BUS_ENABLE` | 0x383c | established |  | the bus mask the load applies, exactly the two fields above |
| `GC_LOAD_W7_BUS_ENABLE` | 0xffc00f | established |  | the bus mask the load applies, exactly the three fields above |
| `ID_TABLE_NORMAL_ENTRIES` | 0x40 | established |  | established: the display chips hold a 64-entry normal id table |
| `ID_TABLE_OVERLAY_ENTRIES` | 0x20 | established |  | established: and a 32-entry overlay and underlay table |
| `LAYER_MAIN` | 0x0 | established |  | established: frame-buffer layer numbers |
| `LAYER_OVERLAY` | 0x1 | established |  |  |
| `LAYER_POPUP` | 0x2 | established |  |  |
| `LIGHT_BLOCK_COUNT` | 0x8 | established |  |  |
| `LIGHT_BLOCK_FIRST_ADDRESS` | 0x2c7 | established |  |  |
| `LIGHT_BLOCK_WORDS` | 0x23 | established |  |  |
| `MODE_BYTE_RESERVED_CI_OPAQUE` | 0x15 | established |  |  |
| `MODE_BYTE_RESERVED_CI_TRANSPARENT` | 0x5 | established |  |  |
| `MODE_BYTE_RESERVED_RGB_OPAQUE` | 0x12 | established |  |  |
| `MODE_BYTE_RESERVED_RGB_TRANSPARENT` | 0x2 | established |  |  |
| `OVERLAY_ID_WORD_COLOUR_INDEX` | 0x3c00 | established |  |  |
| `OVERLAY_ID_WORD_RGB15` | 0x3c01 | established |  |  |
| `OVERLAY_RGB15_BLUE_BITS` | 0x1f | established |  | the advertised blue mask |
| `OVERLAY_RGB15_GREEN_BITS` | 0x3e0 | established |  | the advertised green mask |
| `OVERLAY_RGB15_RED_BITS` | 0x7c00 | established |  | the advertised red mask, unshifted |
| `PIXEL_FORMAT_ALPHA` | 0x3 | established |  |  |
| `PIXEL_FORMAT_BLUE` | 0x2 | established |  |  |
| `PIXEL_FORMAT_COLOUR_INDEX` | 0xb | established |  |  |
| `PIXEL_FORMAT_DEPTH` | 0xd | established |  |  |
| `PIXEL_FORMAT_EXT_ABGR` | 0x8 | established |  |  |
| `PIXEL_FORMAT_EXT_CMYK` | 0x9 | established |  |  |
| `PIXEL_FORMAT_EXT_CMYKA` | 0xa | established |  |  |
| `PIXEL_FORMAT_GREEN` | 0x1 | established |  |  |
| `PIXEL_FORMAT_LUMINANCE` | 0x6 | established |  |  |
| `PIXEL_FORMAT_LUMINANCE_ALPHA` | 0x7 | established |  |  |
| `PIXEL_FORMAT_RED` | 0x0 | established |  |  |
| `PIXEL_FORMAT_RGB` | 0x4 | established |  |  |
| `PIXEL_FORMAT_RGBA` | 0x5 | established |  |  |
| `PIXEL_FORMAT_STENCIL` | 0xc | established |  |  |
| `PIXEL_MAP_ALPHA_TO_ALPHA` | 0xc79 | established |  | record 3, component 3 |
| `PIXEL_MAP_BLUE_TO_BLUE` | 0xc78 | established |  | record 3, component 2 |
| `PIXEL_MAP_GREEN_TO_GREEN` | 0xc77 | established |  | record 3, component 1 |
| `PIXEL_MAP_INDEX_TO_ALPHA` | 0xc75 | established |  | record 2, component 3 |
| `PIXEL_MAP_INDEX_TO_BLUE` | 0xc74 | established |  | record 2, component 2 |
| `PIXEL_MAP_INDEX_TO_GREEN` | 0xc73 | established |  | record 2, component 1 |
| `PIXEL_MAP_INDEX_TO_INDEX` | 0xc70 | established |  | record 0 |
| `PIXEL_MAP_INDEX_TO_RED` | 0xc72 | established |  | record 2, component 0 |
| `PIXEL_MAP_RED_TO_RED` | 0xc76 | established |  | record 3, component 0 |
| `PIXEL_MAP_STENCIL_TO_STENCIL` | 0xc71 | established |  | record 1 |
| `PIXEL_PACK_ALIGNMENT` | 0xd05 | established |  |  |
| `PIXEL_PACK_IMAGE_DEPTH` | 0x8131 | established |  |  |
| `PIXEL_PACK_IMAGE_HEIGHT` | 0x806c | established |  |  |
| `PIXEL_PACK_LSB_FIRST` | 0xd01 | established |  |  |
| `PIXEL_PACK_ROW_LENGTH` | 0xd02 | established |  |  |
| `PIXEL_PACK_SKIP_IMAGES` | 0x806b | established |  |  |
| `PIXEL_PACK_SKIP_PIXELS` | 0xd04 | established |  |  |
| `PIXEL_PACK_SKIP_ROWS` | 0xd03 | established |  |  |
| `PIXEL_PACK_SKIP_VOLUMES` | 0x8130 | established |  |  |
| `PIXEL_PACK_SWAP_BYTES` | 0xd00 | established |  |  |
| `PIXEL_TRANSFER_ALPHA_BIAS` | 0xd1d | established |  |  |
| `PIXEL_TRANSFER_ALPHA_SCALE` | 0xd1c | established |  |  |
| `PIXEL_TRANSFER_BLUE_BIAS` | 0xd1b | established |  |  |
| `PIXEL_TRANSFER_BLUE_SCALE` | 0xd1a | established |  |  |
| `PIXEL_TRANSFER_DEPTH_BIAS` | 0xd1f | established |  |  |
| `PIXEL_TRANSFER_DEPTH_SCALE` | 0xd1e | established |  |  |
| `PIXEL_TRANSFER_GREEN_BIAS` | 0xd19 | established |  |  |
| `PIXEL_TRANSFER_GREEN_SCALE` | 0xd18 | established |  |  |
| `PIXEL_TRANSFER_INDEX_OFFSET` | 0xd13 | established |  |  |
| `PIXEL_TRANSFER_INDEX_SHIFT` | 0xd12 | established |  |  |
| `PIXEL_TRANSFER_MAP_COLOUR` | 0xd10 | established |  |  |
| `PIXEL_TRANSFER_MAP_STENCIL` | 0xd11 | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_ALPHA_BIAS` | 0x8023 | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_ALPHA_SCALE` | 0x801f | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_BLUE_BIAS` | 0x8022 | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_BLUE_SCALE` | 0x801e | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_GREEN_BIAS` | 0x8021 | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_GREEN_SCALE` | 0x801d | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_RED_BIAS` | 0x8020 | established |  |  |
| `PIXEL_TRANSFER_POST_CONVOLUTION_RED_SCALE` | 0x801c | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_ALPHA_BIAS` | 0x80bb | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_ALPHA_SCALE` | 0x80b7 | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_BLUE_BIAS` | 0x80ba | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_BLUE_SCALE` | 0x80b6 | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_GREEN_BIAS` | 0x80b9 | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_GREEN_SCALE` | 0x80b5 | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_RED_BIAS` | 0x80b8 | established |  |  |
| `PIXEL_TRANSFER_POST_MATRIX_RED_SCALE` | 0x80b4 | established |  |  |
| `PIXEL_TRANSFER_RED_BIAS` | 0xd15 | established |  |  |
| `PIXEL_TRANSFER_RED_SCALE` | 0xd14 | established |  |  |
| `PIXEL_TYPE_BITMAP` | 0x7 | established |  |  |
| `PIXEL_TYPE_BYTE` | 0x0 | established |  |  |
| `PIXEL_TYPE_FLOAT` | 0x6 | established |  |  |
| `PIXEL_TYPE_INT` | 0x4 | established |  |  |
| `PIXEL_TYPE_PACKED_10_10_10_2` | 0xc | established |  |  |
| `PIXEL_TYPE_PACKED_332` | 0x8 | established |  |  |
| `PIXEL_TYPE_PACKED_4444` | 0x9 | established |  |  |
| `PIXEL_TYPE_PACKED_5551` | 0xa | established |  |  |
| `PIXEL_TYPE_PACKED_8888` | 0xb | established |  |  |
| `PIXEL_TYPE_SHORT` | 0x2 | established |  |  |
| `PIXEL_TYPE_UNSIGNED_BYTE` | 0x1 | established |  |  |
| `PIXEL_TYPE_UNSIGNED_INT` | 0x5 | established |  |  |
| `PIXEL_TYPE_UNSIGNED_SHORT` | 0x3 | established |  |  |
| `PIXEL_UNPACK_ALIGNMENT` | 0xcf5 | established |  |  |
| `PIXEL_UNPACK_IMAGE_DEPTH` | 0x8133 | established |  |  |
| `PIXEL_UNPACK_IMAGE_HEIGHT` | 0x806e | established |  |  |
| `PIXEL_UNPACK_LSB_FIRST` | 0xcf1 | established |  |  |
| `PIXEL_UNPACK_ROW_LENGTH` | 0xcf2 | established |  |  |
| `PIXEL_UNPACK_SKIP_IMAGES` | 0x806d | established |  |  |
| `PIXEL_UNPACK_SKIP_PIXELS` | 0xcf4 | established |  |  |
| `PIXEL_UNPACK_SKIP_ROWS` | 0xcf3 | established |  |  |
| `PIXEL_UNPACK_SKIP_VOLUMES` | 0x8132 | established |  |  |
| `PIXEL_UNPACK_SWAP_BYTES` | 0xcf0 | established |  |  |
| `POLYGON_FACE_BACK` | 0x405 | established |  |  |
| `POLYGON_FACE_BOTH` | 0x408 | established |  |  |
| `POLYGON_FACE_FRONT` | 0x404 | established |  |  |
| `POLYGON_MODE_FILL` | 0x1b02 | established |  |  |
| `POLYGON_MODE_LINE` | 0x1b01 | established |  |  |
| `POLYGON_MODE_POINT` | 0x1b00 | established |  |  |
| `TEXENV_COLOUR1_IMAGE` | 0x15f1413 | established |  |  |
| `TEXENV_COLOUR_IMAGE` | 0x15e1402 | established |  |  |
| `WINDOW_ID_CI_OVERLAY_OPAQUE` | 0x41 | established |  | established: colour-index overlay, opaque |
| `WINDOW_ID_CI_OVERLAY_TRANSPARENT` | 0x40 | established |  | established: 2-, 4- and 8-plane colour-index overlay, transparent |
| `WINDOW_ID_DYNAMIC_FIRST` | 0x44 | inferred |  | inferred: ids 68 to 95 are handed out dynamically to other overlay windows |
| `WINDOW_ID_MAIN_FIRST` | 0x0 | established |  | established: main-plane window ids run 0 to 62 |
| `WINDOW_ID_MAIN_LAST` | 0x3e | established |  |  |
| `WINDOW_ID_OVERLAY_FIRST` | 0x40 | established |  | established: overlay and underlay ids 64 to 95 (7 bits in all) |
| `WINDOW_ID_OVERLAY_LAST` | 0x5f | established |  |  |
| `WINDOW_ID_POPUP` | 0x3f | established |  | established: fixed popup window id; the popup's painted pattern is overlay group 31 |
| `WINDOW_ID_RGB15_OVERLAY_OPAQUE` | 0x43 | established |  | established: 15-bit RGB overlay, opaque |
| `WINDOW_ID_RGB15_OVERLAY_TRANSPARENT` | 0x42 | established |  | established: 15-bit RGB overlay, transparent |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `BIND_SIZE` | 0x677 | vector | s_exp=7, t_exp=7, r_exp=6, s_clamp=0, t_clamp=0, r_clamp=0 |
| `BIND_SIZE` | 0x3077 | vector | s_exp=7, t_exp=7, r_exp=0, s_clamp=1, t_clamp=1, r_clamp=0 |
| `DISPLAY_ID_RANGE` | 0x1040 | vector | arg1=64, arg3=32, arg0=0, arg2=0 |
| `GC_LOAD_W6` | 0x2804 | vector | colour_format=1, read_format=5 |
| `GC_LOAD_W6` | 0x3804 | vector | colour_format=1, read_format=7 |
| `MODE_BYTE_OVERLAY` | 0x2 | vector | back_shown=0, code=1 |
| `MODE_BYTE_OVERLAY` | 0x5 | vector | back_shown=1, code=2 |
| `MODE_BYTE_OVERLAY` | 0x12 | vector | back_shown=0, code=1 |
| `MODE_BYTE_OVERLAY` | 0x15 | vector | back_shown=1, code=2 |
| `MS_LOCATIONS` | 0x7f6280 | vector | s0_x=0, s0_y=0, s1_x=2, s1_y=1, s2_x=6, s2_y=6, s3_x=7, s3_y=3 |
| `MS_LOCATIONS` | 0xc8b640 | vector | s0_x=0, s0_y=0, s1_x=1, s1_y=3, s2_x=3, s2_y=1, s3_x=2, s3_y=6 |
| `MS_LOCATIONS` | 0xd94880 | vector | s0_x=0, s0_y=0, s1_x=2, s1_y=4, s2_x=4, s2_y=2, s3_x=6, s3_y=6 |
| `TEXLOAD_LAYOUT` | 0x9ad | vector | size_code=1, dma=1, bank=1, layout_mode=1, s_addr_bits=3, t_addr_bits=1 |
| `TEXLOAD_LAYOUT` | 0x2181 | vector | size_code=1, dma=0, bank=0, layout_mode=0, s_addr_bits=3, t_addr_bits=4 |
| `TEXLOAD_LAYOUT` | 0x218d | vector | size_code=1, dma=1, bank=1, layout_mode=0, s_addr_bits=3, t_addr_bits=4 |
| `TEXLOAD_LAYOUT` | 0x2204 | vector | size_code=0, dma=1, bank=0, layout_mode=0, s_addr_bits=4, t_addr_bits=4 |
| `TEXLOAD_SIZE` | 0x23 | vector | s_exp=3, t_exp=2, r_exp=0 |
| `TEXLOAD_SIZE` | 0x677 | vector | s_exp=7, t_exp=7, r_exp=6 |
