/* generated from defs/words.toml by defs-gen - do not edit, change the source */
/* multi-field words of the host command stream */
#ifndef WORD_GEN_H
#define WORD_GEN_H

#include <stdint.h>


/* word BIND_CONTROL: 32 bits */
#define WORD_BIND_CONTROL_WIDTH                      32 /* established */
#define WORD_BIND_CONTROL_TARGET_SHIFT               28 /* established */
#define WORD_BIND_CONTROL_TARGET_MASK                0xfu
#define WORD_BIND_CONTROL_TARGET_INPLACE             (WORD_BIND_CONTROL_TARGET_MASK << WORD_BIND_CONTROL_TARGET_SHIFT)
#define WORD_BIND_CONTROL_TARGET_DETAIL              0 /* established */
#define WORD_BIND_CONTROL_TARGET_TEX1D               1 /* established */
#define WORD_BIND_CONTROL_TARGET_TEX2D               2 /* established */
#define WORD_BIND_CONTROL_TARGET_TEX3D               3 /* established */
#define WORD_BIND_CONTROL_MODE_SHIFT                 24 /* established */
#define WORD_BIND_CONTROL_MODE_MASK                  0xfu
#define WORD_BIND_CONTROL_MODE_INPLACE               (WORD_BIND_CONTROL_MODE_MASK << WORD_BIND_CONTROL_MODE_SHIFT)
#define WORD_BIND_CONTROL_MODE_BICUBIC_TABLE         0 /* established */
#define WORD_BIND_CONTROL_MODE_DETAIL_TABLE          1 /* established */
#define WORD_BIND_CONTROL_MODE_SHARPEN_TABLE         2 /* established */
#define WORD_BIND_CONTROL_MODE_NO_TABLE              3 /* established */
#define WORD_BIND_CONTROL_FORMAT_INDEX_SHIFT         12 /* established */
#define WORD_BIND_CONTROL_FORMAT_INDEX_MASK          0xfffu
#define WORD_BIND_CONTROL_FORMAT_INDEX_INPLACE       (WORD_BIND_CONTROL_FORMAT_INDEX_MASK << WORD_BIND_CONTROL_FORMAT_INDEX_SHIFT)
#define WORD_BIND_CONTROL_FILTER_SLOT_SHIFT          0 /* inferred */
#define WORD_BIND_CONTROL_FILTER_SLOT_MASK           0xfffu
#define WORD_BIND_CONTROL_FILTER_SLOT_INPLACE        (WORD_BIND_CONTROL_FILTER_SLOT_MASK << WORD_BIND_CONTROL_FILTER_SLOT_SHIFT)

/* word BIND_LOD_BOUNDS: 32 bits */
#define WORD_BIND_LOD_BOUNDS_WIDTH                   32 /* established */
#define WORD_BIND_LOD_BOUNDS_MAX_SHIFT               10 /* established */
#define WORD_BIND_LOD_BOUNDS_MAX_MASK                0x3ffu
#define WORD_BIND_LOD_BOUNDS_MAX_INPLACE             (WORD_BIND_LOD_BOUNDS_MAX_MASK << WORD_BIND_LOD_BOUNDS_MAX_SHIFT)
#define WORD_BIND_LOD_BOUNDS_MIN_SHIFT               0 /* established */
#define WORD_BIND_LOD_BOUNDS_MIN_MASK                0x3ffu
#define WORD_BIND_LOD_BOUNDS_MIN_INPLACE             (WORD_BIND_LOD_BOUNDS_MIN_MASK << WORD_BIND_LOD_BOUNDS_MIN_SHIFT)

/* word BIND_LOD_SCALE: 32 bits */
#define WORD_BIND_LOD_SCALE_WIDTH                    32 /* established */
#define WORD_BIND_LOD_SCALE_R_SCALE_SHIFT            16 /* established */
#define WORD_BIND_LOD_SCALE_R_SCALE_MASK             0xffu
#define WORD_BIND_LOD_SCALE_R_SCALE_INPLACE          (WORD_BIND_LOD_SCALE_R_SCALE_MASK << WORD_BIND_LOD_SCALE_R_SCALE_SHIFT)
#define WORD_BIND_LOD_SCALE_T_SCALE_SHIFT            8 /* established */
#define WORD_BIND_LOD_SCALE_T_SCALE_MASK             0xffu
#define WORD_BIND_LOD_SCALE_T_SCALE_INPLACE          (WORD_BIND_LOD_SCALE_T_SCALE_MASK << WORD_BIND_LOD_SCALE_T_SCALE_SHIFT)
#define WORD_BIND_LOD_SCALE_S_SCALE_SHIFT            0 /* established */
#define WORD_BIND_LOD_SCALE_S_SCALE_MASK             0xffu
#define WORD_BIND_LOD_SCALE_S_SCALE_INPLACE          (WORD_BIND_LOD_SCALE_S_SCALE_MASK << WORD_BIND_LOD_SCALE_S_SCALE_SHIFT)

/* word BIND_MODE: 32 bits */
#define WORD_BIND_MODE_WIDTH                         32 /* established */
#define WORD_BIND_MODE_FIRST_BANK_SHIFT              28 /* established */
#define WORD_BIND_MODE_FIRST_BANK_MASK               0x1u
#define WORD_BIND_MODE_FIRST_BANK_INPLACE            (WORD_BIND_MODE_FIRST_BANK_MASK << WORD_BIND_MODE_FIRST_BANK_SHIFT)
#define WORD_BIND_MODE_MAG_CHANNELS_SHIFT            26 /* established */
#define WORD_BIND_MODE_MAG_CHANNELS_MASK             0x3u
#define WORD_BIND_MODE_MAG_CHANNELS_INPLACE          (WORD_BIND_MODE_MAG_CHANNELS_MASK << WORD_BIND_MODE_MAG_CHANNELS_SHIFT)
#define WORD_BIND_MODE_MAG_CHANNELS_ALL              0 /* established */
#define WORD_BIND_MODE_MAG_CHANNELS_COLOUR           1 /* established */
#define WORD_BIND_MODE_MAG_CHANNELS_ALPHA            2 /* established */
#define WORD_BIND_MODE_MAG_CHANNELS_LEVEL0           3 /* established */
#define WORD_BIND_MODE_CHANNEL_SELECT_SHIFT          24 /* inferred */
#define WORD_BIND_MODE_CHANNEL_SELECT_MASK           0x3u
#define WORD_BIND_MODE_CHANNEL_SELECT_INPLACE        (WORD_BIND_MODE_CHANNEL_SELECT_MASK << WORD_BIND_MODE_CHANNEL_SELECT_SHIFT)
#define WORD_BIND_MODE_DETAIL_LEVEL_SHIFT            21 /* established */
#define WORD_BIND_MODE_DETAIL_LEVEL_MASK             0x7u
#define WORD_BIND_MODE_DETAIL_LEVEL_INPLACE          (WORD_BIND_MODE_DETAIL_LEVEL_MASK << WORD_BIND_MODE_DETAIL_LEVEL_SHIFT)
#define WORD_BIND_MODE_TEXEL_FORMAT_SHIFT            14 /* established */
#define WORD_BIND_MODE_TEXEL_FORMAT_MASK             0x7fu
#define WORD_BIND_MODE_TEXEL_FORMAT_INPLACE          (WORD_BIND_MODE_TEXEL_FORMAT_MASK << WORD_BIND_MODE_TEXEL_FORMAT_SHIFT)
#define WORD_BIND_MODE_ENV_ON_SHIFT                  13 /* inferred */
#define WORD_BIND_MODE_ENV_ON_MASK                   0x1u
#define WORD_BIND_MODE_ENV_ON_INPLACE                (WORD_BIND_MODE_ENV_ON_MASK << WORD_BIND_MODE_ENV_ON_SHIFT)
#define WORD_BIND_MODE_CLAMP_STYLE_SHIFT             12 /* inferred */
#define WORD_BIND_MODE_CLAMP_STYLE_MASK              0x1u
#define WORD_BIND_MODE_CLAMP_STYLE_INPLACE           (WORD_BIND_MODE_CLAMP_STYLE_MASK << WORD_BIND_MODE_CLAMP_STYLE_SHIFT)
#define WORD_BIND_MODE_SHADOW_COMPARE_SHIFT          10 /* established */
#define WORD_BIND_MODE_SHADOW_COMPARE_MASK           0x3u
#define WORD_BIND_MODE_SHADOW_COMPARE_INPLACE        (WORD_BIND_MODE_SHADOW_COMPARE_MASK << WORD_BIND_MODE_SHADOW_COMPARE_SHIFT)
#define WORD_BIND_MODE_SHADOW_COMPARE_OFF            0 /* established */
#define WORD_BIND_MODE_SHADOW_COMPARE_REF_AT_LEAST_TEXEL 1 /* established */
#define WORD_BIND_MODE_SHADOW_COMPARE_REF_AT_MOST_TEXEL 2 /* established */
#define WORD_BIND_MODE_FLAGS_SHIFT                   8 /* inferred */
#define WORD_BIND_MODE_FLAGS_MASK                    0x3u
#define WORD_BIND_MODE_FLAGS_INPLACE                 (WORD_BIND_MODE_FLAGS_MASK << WORD_BIND_MODE_FLAGS_SHIFT)
#define WORD_BIND_MODE_MAG_FILTER_SHIFT              5 /* established */
#define WORD_BIND_MODE_MAG_FILTER_MASK               0x7u
#define WORD_BIND_MODE_MAG_FILTER_INPLACE            (WORD_BIND_MODE_MAG_FILTER_MASK << WORD_BIND_MODE_MAG_FILTER_SHIFT)
#define WORD_BIND_MODE_MAG_FILTER_NEAREST            0 /* established */
#define WORD_BIND_MODE_MAG_FILTER_LINEAR             1 /* established */
#define WORD_BIND_MODE_MAG_FILTER_BICUBIC            2 /* established */
#define WORD_BIND_MODE_MAG_FILTER_DETAIL_ADD         3 /* established */
#define WORD_BIND_MODE_MAG_FILTER_DETAIL_MODULATE    4 /* established */
#define WORD_BIND_MODE_MAG_FILTER_SHARPEN            5 /* established */
#define WORD_BIND_MODE_MIN_FILTER_SHIFT              2 /* inferred */
#define WORD_BIND_MODE_MIN_FILTER_MASK               0x7u
#define WORD_BIND_MODE_MIN_FILTER_INPLACE            (WORD_BIND_MODE_MIN_FILTER_MASK << WORD_BIND_MODE_MIN_FILTER_SHIFT)
#define WORD_BIND_MODE_MIN_FILTER_NEAREST            0 /* established */
#define WORD_BIND_MODE_MIN_FILTER_LINEAR             1 /* established */
#define WORD_BIND_MODE_MIN_FILTER_BICUBIC            2 /* established */
#define WORD_BIND_MODE_SAMPLING_SHIFT                0 /* established */
#define WORD_BIND_MODE_SAMPLING_MASK                 0x3u
#define WORD_BIND_MODE_SAMPLING_INPLACE              (WORD_BIND_MODE_SAMPLING_MASK << WORD_BIND_MODE_SAMPLING_SHIFT)
#define WORD_BIND_MODE_SAMPLING_MODE2D               0 /* established */
#define WORD_BIND_MODE_SAMPLING_MODE3D               1 /* established */
#define WORD_BIND_MODE_SAMPLING_MODE3D_MIP           2 /* established */
#define WORD_BIND_MODE_SAMPLING_BICUBIC              3 /* established */

/* word BIND_PHYS_SIZE: 32 bits */
#define WORD_BIND_PHYS_SIZE_WIDTH                    32 /* established */
#define WORD_BIND_PHYS_SIZE_R_EXP_SHIFT              8 /* established */
#define WORD_BIND_PHYS_SIZE_R_EXP_MASK               0xfu
#define WORD_BIND_PHYS_SIZE_R_EXP_INPLACE            (WORD_BIND_PHYS_SIZE_R_EXP_MASK << WORD_BIND_PHYS_SIZE_R_EXP_SHIFT)
#define WORD_BIND_PHYS_SIZE_T_EXP_SHIFT              4 /* established */
#define WORD_BIND_PHYS_SIZE_T_EXP_MASK               0xfu
#define WORD_BIND_PHYS_SIZE_T_EXP_INPLACE            (WORD_BIND_PHYS_SIZE_T_EXP_MASK << WORD_BIND_PHYS_SIZE_T_EXP_SHIFT)
#define WORD_BIND_PHYS_SIZE_S_EXP_SHIFT              0 /* established */
#define WORD_BIND_PHYS_SIZE_S_EXP_MASK               0xfu
#define WORD_BIND_PHYS_SIZE_S_EXP_INPLACE            (WORD_BIND_PHYS_SIZE_S_EXP_MASK << WORD_BIND_PHYS_SIZE_S_EXP_SHIFT)

/* word BIND_SIZE: 32 bits */
#define WORD_BIND_SIZE_WIDTH                         32 /* established */
#define WORD_BIND_SIZE_R_CLAMP_SHIFT                 14 /* established */
#define WORD_BIND_SIZE_R_CLAMP_MASK                  0x1u
#define WORD_BIND_SIZE_R_CLAMP_INPLACE               (WORD_BIND_SIZE_R_CLAMP_MASK << WORD_BIND_SIZE_R_CLAMP_SHIFT)
#define WORD_BIND_SIZE_T_CLAMP_SHIFT                 13 /* established */
#define WORD_BIND_SIZE_T_CLAMP_MASK                  0x1u
#define WORD_BIND_SIZE_T_CLAMP_INPLACE               (WORD_BIND_SIZE_T_CLAMP_MASK << WORD_BIND_SIZE_T_CLAMP_SHIFT)
#define WORD_BIND_SIZE_S_CLAMP_SHIFT                 12 /* established */
#define WORD_BIND_SIZE_S_CLAMP_MASK                  0x1u
#define WORD_BIND_SIZE_S_CLAMP_INPLACE               (WORD_BIND_SIZE_S_CLAMP_MASK << WORD_BIND_SIZE_S_CLAMP_SHIFT)
#define WORD_BIND_SIZE_R_EXP_SHIFT                   8 /* established */
#define WORD_BIND_SIZE_R_EXP_MASK                    0xfu
#define WORD_BIND_SIZE_R_EXP_INPLACE                 (WORD_BIND_SIZE_R_EXP_MASK << WORD_BIND_SIZE_R_EXP_SHIFT)
#define WORD_BIND_SIZE_T_EXP_SHIFT                   4 /* established */
#define WORD_BIND_SIZE_T_EXP_MASK                    0xfu
#define WORD_BIND_SIZE_T_EXP_INPLACE                 (WORD_BIND_SIZE_T_EXP_MASK << WORD_BIND_SIZE_T_EXP_SHIFT)
#define WORD_BIND_SIZE_S_EXP_SHIFT                   0 /* established */
#define WORD_BIND_SIZE_S_EXP_MASK                    0xfu
#define WORD_BIND_SIZE_S_EXP_INPLACE                 (WORD_BIND_SIZE_S_EXP_MASK << WORD_BIND_SIZE_S_EXP_SHIFT)

/* word DISPLAY_ID_RANGE: 32 bits */
#define WORD_DISPLAY_ID_RANGE_WIDTH                  32 /* established */
#define WORD_DISPLAY_ID_RANGE_ARG2_SHIFT             19 /* established */
#define WORD_DISPLAY_ID_RANGE_ARG2_MASK              0x1fu
#define WORD_DISPLAY_ID_RANGE_ARG2_INPLACE           (WORD_DISPLAY_ID_RANGE_ARG2_MASK << WORD_DISPLAY_ID_RANGE_ARG2_SHIFT)
#define WORD_DISPLAY_ID_RANGE_ARG0_SHIFT             13 /* established */
#define WORD_DISPLAY_ID_RANGE_ARG0_MASK              0x3fu
#define WORD_DISPLAY_ID_RANGE_ARG0_INPLACE           (WORD_DISPLAY_ID_RANGE_ARG0_MASK << WORD_DISPLAY_ID_RANGE_ARG0_SHIFT)
#define WORD_DISPLAY_ID_RANGE_ARG3_SHIFT             7 /* established */
#define WORD_DISPLAY_ID_RANGE_ARG3_MASK              0x3fu
#define WORD_DISPLAY_ID_RANGE_ARG3_INPLACE           (WORD_DISPLAY_ID_RANGE_ARG3_MASK << WORD_DISPLAY_ID_RANGE_ARG3_SHIFT)
#define WORD_DISPLAY_ID_RANGE_ARG1_SHIFT             0 /* established */
#define WORD_DISPLAY_ID_RANGE_ARG1_MASK              0x7fu
#define WORD_DISPLAY_ID_RANGE_ARG1_INPLACE           (WORD_DISPLAY_ID_RANGE_ARG1_MASK << WORD_DISPLAY_ID_RANGE_ARG1_SHIFT)

/* word GC_LOAD_W4: 32 bits */
#define WORD_GC_LOAD_W4_WIDTH                        32 /* established */
#define WORD_GC_LOAD_W4_OPAQUE_FILL_SHIFT            31 /* established */
#define WORD_GC_LOAD_W4_OPAQUE_FILL_MASK             0x1u
#define WORD_GC_LOAD_W4_OPAQUE_FILL_INPLACE          (WORD_GC_LOAD_W4_OPAQUE_FILL_MASK << WORD_GC_LOAD_W4_OPAQUE_FILL_SHIFT)
#define WORD_GC_LOAD_W4_PLANE_MASK_RG_SHIFT          0 /* established */
#define WORD_GC_LOAD_W4_PLANE_MASK_RG_MASK           0xffffffu
#define WORD_GC_LOAD_W4_PLANE_MASK_RG_INPLACE        (WORD_GC_LOAD_W4_PLANE_MASK_RG_MASK << WORD_GC_LOAD_W4_PLANE_MASK_RG_SHIFT)

/* word GC_LOAD_W6: 32 bits */
#define WORD_GC_LOAD_W6_WIDTH                        32 /* established */
#define WORD_GC_LOAD_W6_READ_FORMAT_SHIFT            11 /* established */
#define WORD_GC_LOAD_W6_READ_FORMAT_MASK             0x7u
#define WORD_GC_LOAD_W6_READ_FORMAT_INPLACE          (WORD_GC_LOAD_W6_READ_FORMAT_MASK << WORD_GC_LOAD_W6_READ_FORMAT_SHIFT)
#define WORD_GC_LOAD_W6_COLOUR_FORMAT_SHIFT          2 /* established */
#define WORD_GC_LOAD_W6_COLOUR_FORMAT_MASK           0xfu
#define WORD_GC_LOAD_W6_COLOUR_FORMAT_INPLACE        (WORD_GC_LOAD_W6_COLOUR_FORMAT_MASK << WORD_GC_LOAD_W6_COLOUR_FORMAT_SHIFT)

/* word GC_LOAD_W7: 32 bits */
#define WORD_GC_LOAD_W7_WIDTH                        32 /* established */
#define WORD_GC_LOAD_W7_READ_BASE_SHIFT              18 /* established */
#define WORD_GC_LOAD_W7_READ_BASE_MASK               0x3fu
#define WORD_GC_LOAD_W7_READ_BASE_INPLACE            (WORD_GC_LOAD_W7_READ_BASE_MASK << WORD_GC_LOAD_W7_READ_BASE_SHIFT)
#define WORD_GC_LOAD_W7_READBACK_FORMAT_SHIFT        14 /* established */
#define WORD_GC_LOAD_W7_READBACK_FORMAT_MASK         0xfu
#define WORD_GC_LOAD_W7_READBACK_FORMAT_INPLACE      (WORD_GC_LOAD_W7_READBACK_FORMAT_MASK << WORD_GC_LOAD_W7_READBACK_FORMAT_SHIFT)
#define WORD_GC_LOAD_W7_DRAW_BUFFER_SHIFT            0 /* established */
#define WORD_GC_LOAD_W7_DRAW_BUFFER_MASK             0xfu
#define WORD_GC_LOAD_W7_DRAW_BUFFER_INPLACE          (WORD_GC_LOAD_W7_DRAW_BUFFER_MASK << WORD_GC_LOAD_W7_DRAW_BUFFER_SHIFT)

/* word ID_FG_LARGE_HI: 32 bits */
#define WORD_ID_FG_LARGE_HI_WIDTH                    32 /* established */
#define WORD_ID_FG_LARGE_HI_VALUE_HIGH12_SHIFT       8 /* established */
#define WORD_ID_FG_LARGE_HI_VALUE_HIGH12_MASK        0xfffu
#define WORD_ID_FG_LARGE_HI_VALUE_HIGH12_INPLACE     (WORD_ID_FG_LARGE_HI_VALUE_HIGH12_MASK << WORD_ID_FG_LARGE_HI_VALUE_HIGH12_SHIFT)
#define WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_SHIFT   3 /* established */
#define WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_MASK    0xfu
#define WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_INPLACE (WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_MASK << WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_SHIFT)

/* word ID_FG_SMALL_LO: 32 bits */
#define WORD_ID_FG_SMALL_LO_WIDTH                    32 /* established */
#define WORD_ID_FG_SMALL_LO_VALUE_HIGH12_SHIFT       14 /* established */
#define WORD_ID_FG_SMALL_LO_VALUE_HIGH12_MASK        0xfffu
#define WORD_ID_FG_SMALL_LO_VALUE_HIGH12_INPLACE     (WORD_ID_FG_SMALL_LO_VALUE_HIGH12_MASK << WORD_ID_FG_SMALL_LO_VALUE_HIGH12_SHIFT)
#define WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_SHIFT   9 /* established */
#define WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_MASK    0xfu
#define WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_INPLACE (WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_MASK << WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_SHIFT)

/* word ID_MASK_LARGE_HI: 32 bits */
#define WORD_ID_MASK_LARGE_HI_WIDTH                  32 /* established */
#define WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_SHIFT  20 /* established */
#define WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_MASK   0xfu
#define WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_INPLACE (WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_MASK << WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_SHIFT)
#define WORD_ID_MASK_LARGE_HI_MASK_HIGH12_SHIFT      0 /* established */
#define WORD_ID_MASK_LARGE_HI_MASK_HIGH12_MASK       0xfffu
#define WORD_ID_MASK_LARGE_HI_MASK_HIGH12_INPLACE    (WORD_ID_MASK_LARGE_HI_MASK_HIGH12_MASK << WORD_ID_MASK_LARGE_HI_MASK_HIGH12_SHIFT)

/* word ID_MASK_SMALL_LO: 32 bits */
#define WORD_ID_MASK_SMALL_LO_WIDTH                  32 /* established */
#define WORD_ID_MASK_SMALL_LO_MASK_LOW12_SHIFT       12 /* established */
#define WORD_ID_MASK_SMALL_LO_MASK_LOW12_MASK        0xfffu
#define WORD_ID_MASK_SMALL_LO_MASK_LOW12_INPLACE     (WORD_ID_MASK_SMALL_LO_MASK_LOW12_MASK << WORD_ID_MASK_SMALL_LO_MASK_LOW12_SHIFT)
#define WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_SHIFT 0 /* established */
#define WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_MASK  0xfu
#define WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_INPLACE (WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_MASK << WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_SHIFT)

/* word MODE_BYTE: 32 bits */
#define WORD_MODE_BYTE_WIDTH                         32 /* established */
#define WORD_MODE_BYTE_DIRECT_OR_OPAQUE_SHIFT        4 /* established */
#define WORD_MODE_BYTE_DIRECT_OR_OPAQUE_MASK         0x1u
#define WORD_MODE_BYTE_DIRECT_OR_OPAQUE_INPLACE      (WORD_MODE_BYTE_DIRECT_OR_OPAQUE_MASK << WORD_MODE_BYTE_DIRECT_OR_OPAQUE_SHIFT)
#define WORD_MODE_BYTE_CI_OR_LUMINANCE_SHIFT         3 /* established */
#define WORD_MODE_BYTE_CI_OR_LUMINANCE_MASK          0x1u
#define WORD_MODE_BYTE_CI_OR_LUMINANCE_INPLACE       (WORD_MODE_BYTE_CI_OR_LUMINANCE_MASK << WORD_MODE_BYTE_CI_OR_LUMINANCE_SHIFT)
#define WORD_MODE_BYTE_RGB_BELOW_24_SHIFT            2 /* established */
#define WORD_MODE_BYTE_RGB_BELOW_24_MASK             0x1u
#define WORD_MODE_BYTE_RGB_BELOW_24_INPLACE          (WORD_MODE_BYTE_RGB_BELOW_24_MASK << WORD_MODE_BYTE_RGB_BELOW_24_SHIFT)
#define WORD_MODE_BYTE_STEREO_SHIFT                  1 /* established */
#define WORD_MODE_BYTE_STEREO_MASK                   0x1u
#define WORD_MODE_BYTE_STEREO_INPLACE                (WORD_MODE_BYTE_STEREO_MASK << WORD_MODE_BYTE_STEREO_SHIFT)
#define WORD_MODE_BYTE_BACK_SHOWN_SHIFT              0 /* established */
#define WORD_MODE_BYTE_BACK_SHOWN_MASK               0x1u
#define WORD_MODE_BYTE_BACK_SHOWN_INPLACE            (WORD_MODE_BYTE_BACK_SHOWN_MASK << WORD_MODE_BYTE_BACK_SHOWN_SHIFT)

/* word MODE_BYTE_OVERLAY: 32 bits */
#define WORD_MODE_BYTE_OVERLAY_WIDTH                 32 /* established */
#define WORD_MODE_BYTE_OVERLAY_CODE_SHIFT            1 /* established */
#define WORD_MODE_BYTE_OVERLAY_CODE_MASK             0x7u
#define WORD_MODE_BYTE_OVERLAY_CODE_INPLACE          (WORD_MODE_BYTE_OVERLAY_CODE_MASK << WORD_MODE_BYTE_OVERLAY_CODE_SHIFT)
#define WORD_MODE_BYTE_OVERLAY_CODE_RESERVED_RGB15   1 /* established */
#define WORD_MODE_BYTE_OVERLAY_CODE_OVERLAY          2 /* established */
#define WORD_MODE_BYTE_OVERLAY_CODE_OVERLAY_BACK_START 3 /* established */
#define WORD_MODE_BYTE_OVERLAY_CODE_UNDERLAY         6 /* established */
#define WORD_MODE_BYTE_OVERLAY_CODE_UNDERLAY_BACK_START 7 /* established */
#define WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_SHIFT      0 /* established */
#define WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_MASK       0x1u
#define WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_INPLACE    (WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_MASK << WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_SHIFT)

/* word MS_CONTROL: 32 bits */
#define WORD_MS_CONTROL_WIDTH                        32 /* established */
#define WORD_MS_CONTROL_OPTIMISATION_SHIFT           12 /* established */
#define WORD_MS_CONTROL_OPTIMISATION_MASK            0x3u
#define WORD_MS_CONTROL_OPTIMISATION_INPLACE         (WORD_MS_CONTROL_OPTIMISATION_MASK << WORD_MS_CONTROL_OPTIMISATION_SHIFT)
#define WORD_MS_CONTROL_OPTIMISATION_NONE            0 /* established */
#define WORD_MS_CONTROL_OPTIMISATION_DISABLE         2 /* established */
#define WORD_MS_CONTROL_OPTIMISATION_ENABLE          3 /* established */
#define WORD_MS_CONTROL_MAINTAIN_TWO_SHIFT           11 /* established */
#define WORD_MS_CONTROL_MAINTAIN_TWO_MASK            0x1u
#define WORD_MS_CONTROL_MAINTAIN_TWO_INPLACE         (WORD_MS_CONTROL_MAINTAIN_TWO_MASK << WORD_MS_CONTROL_MAINTAIN_TWO_SHIFT)
#define WORD_MS_CONTROL_MASK_SHIFT                   3 /* established */
#define WORD_MS_CONTROL_MASK_MASK                    0xffu
#define WORD_MS_CONTROL_MASK_INPLACE                 (WORD_MS_CONTROL_MASK_MASK << WORD_MS_CONTROL_MASK_SHIFT)
#define WORD_MS_CONTROL_MASK_OP_SHIFT                2 /* established */
#define WORD_MS_CONTROL_MASK_OP_MASK                 0x1u
#define WORD_MS_CONTROL_MASK_OP_INPLACE              (WORD_MS_CONTROL_MASK_OP_MASK << WORD_MS_CONTROL_MASK_OP_SHIFT)
#define WORD_MS_CONTROL_MASK_OP_AND_OP               0 /* established */
#define WORD_MS_CONTROL_MASK_OP_REPLACE              1 /* established */
#define WORD_MS_CONTROL_SAMPLE_COUNT_SHIFT           1 /* established */
#define WORD_MS_CONTROL_SAMPLE_COUNT_MASK            0x1u
#define WORD_MS_CONTROL_SAMPLE_COUNT_INPLACE         (WORD_MS_CONTROL_SAMPLE_COUNT_MASK << WORD_MS_CONTROL_SAMPLE_COUNT_SHIFT)
#define WORD_MS_CONTROL_SAMPLE_COUNT_FOUR            0 /* established */
#define WORD_MS_CONTROL_SAMPLE_COUNT_EIGHT           1 /* established */
#define WORD_MS_CONTROL_ENABLE_SHIFT                 0 /* established */
#define WORD_MS_CONTROL_ENABLE_MASK                  0x1u
#define WORD_MS_CONTROL_ENABLE_INPLACE               (WORD_MS_CONTROL_ENABLE_MASK << WORD_MS_CONTROL_ENABLE_SHIFT)

/* word MS_LOCATIONS: 32 bits */
#define WORD_MS_LOCATIONS_WIDTH                      32 /* established */
#define WORD_MS_LOCATIONS_S3_Y_SHIFT                 21 /* established */
#define WORD_MS_LOCATIONS_S3_Y_MASK                  0x7u
#define WORD_MS_LOCATIONS_S3_Y_INPLACE               (WORD_MS_LOCATIONS_S3_Y_MASK << WORD_MS_LOCATIONS_S3_Y_SHIFT)
#define WORD_MS_LOCATIONS_S3_X_SHIFT                 18 /* established */
#define WORD_MS_LOCATIONS_S3_X_MASK                  0x7u
#define WORD_MS_LOCATIONS_S3_X_INPLACE               (WORD_MS_LOCATIONS_S3_X_MASK << WORD_MS_LOCATIONS_S3_X_SHIFT)
#define WORD_MS_LOCATIONS_S2_Y_SHIFT                 15 /* established */
#define WORD_MS_LOCATIONS_S2_Y_MASK                  0x7u
#define WORD_MS_LOCATIONS_S2_Y_INPLACE               (WORD_MS_LOCATIONS_S2_Y_MASK << WORD_MS_LOCATIONS_S2_Y_SHIFT)
#define WORD_MS_LOCATIONS_S2_X_SHIFT                 12 /* established */
#define WORD_MS_LOCATIONS_S2_X_MASK                  0x7u
#define WORD_MS_LOCATIONS_S2_X_INPLACE               (WORD_MS_LOCATIONS_S2_X_MASK << WORD_MS_LOCATIONS_S2_X_SHIFT)
#define WORD_MS_LOCATIONS_S1_Y_SHIFT                 9 /* established */
#define WORD_MS_LOCATIONS_S1_Y_MASK                  0x7u
#define WORD_MS_LOCATIONS_S1_Y_INPLACE               (WORD_MS_LOCATIONS_S1_Y_MASK << WORD_MS_LOCATIONS_S1_Y_SHIFT)
#define WORD_MS_LOCATIONS_S1_X_SHIFT                 6 /* established */
#define WORD_MS_LOCATIONS_S1_X_MASK                  0x7u
#define WORD_MS_LOCATIONS_S1_X_INPLACE               (WORD_MS_LOCATIONS_S1_X_MASK << WORD_MS_LOCATIONS_S1_X_SHIFT)
#define WORD_MS_LOCATIONS_S0_Y_SHIFT                 3 /* established */
#define WORD_MS_LOCATIONS_S0_Y_MASK                  0x7u
#define WORD_MS_LOCATIONS_S0_Y_INPLACE               (WORD_MS_LOCATIONS_S0_Y_MASK << WORD_MS_LOCATIONS_S0_Y_SHIFT)
#define WORD_MS_LOCATIONS_S0_X_SHIFT                 0 /* established */
#define WORD_MS_LOCATIONS_S0_X_MASK                  0x7u
#define WORD_MS_LOCATIONS_S0_X_INPLACE               (WORD_MS_LOCATIONS_S0_X_MASK << WORD_MS_LOCATIONS_S0_X_SHIFT)

/* word OVERLAY_RGB15: 32 bits */
#define WORD_OVERLAY_RGB15_WIDTH                     32 /* established */
#define WORD_OVERLAY_RGB15_RED_SHIFT                 10 /* established */
#define WORD_OVERLAY_RGB15_RED_MASK                  0x1fu
#define WORD_OVERLAY_RGB15_RED_INPLACE               (WORD_OVERLAY_RGB15_RED_MASK << WORD_OVERLAY_RGB15_RED_SHIFT)
#define WORD_OVERLAY_RGB15_GREEN_SHIFT               5 /* established */
#define WORD_OVERLAY_RGB15_GREEN_MASK                0x1fu
#define WORD_OVERLAY_RGB15_GREEN_INPLACE             (WORD_OVERLAY_RGB15_GREEN_MASK << WORD_OVERLAY_RGB15_GREEN_SHIFT)
#define WORD_OVERLAY_RGB15_BLUE_SHIFT                0 /* established */
#define WORD_OVERLAY_RGB15_BLUE_MASK                 0x1fu
#define WORD_OVERLAY_RGB15_BLUE_INPLACE              (WORD_OVERLAY_RGB15_BLUE_MASK << WORD_OVERLAY_RGB15_BLUE_SHIFT)

/* word PIXEL_SETUP_W0: 32 bits */
#define WORD_PIXEL_SETUP_W0_WIDTH                    32 /* established */
#define WORD_PIXEL_SETUP_W0_DIRECT_WRITE_SHIFT       4 /* established */
#define WORD_PIXEL_SETUP_W0_DIRECT_WRITE_MASK        0x1u
#define WORD_PIXEL_SETUP_W0_DIRECT_WRITE_INPLACE     (WORD_PIXEL_SETUP_W0_DIRECT_WRITE_MASK << WORD_PIXEL_SETUP_W0_DIRECT_WRITE_SHIFT)
#define WORD_PIXEL_SETUP_W0_KIND_SHIFT               0 /* established */
#define WORD_PIXEL_SETUP_W0_KIND_MASK                0xfu
#define WORD_PIXEL_SETUP_W0_KIND_INPLACE             (WORD_PIXEL_SETUP_W0_KIND_MASK << WORD_PIXEL_SETUP_W0_KIND_SHIFT)

/* word TEXLOAD_LAYOUT: 32 bits */
#define WORD_TEXLOAD_LAYOUT_WIDTH                    32 /* established */
#define WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_SHIFT 15 /* established */
#define WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_MASK 0x1u
#define WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_INPLACE (WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_MASK << WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_SHIFT)
#define WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_SHIFT        11 /* established */
#define WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_MASK         0xfu
#define WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_INPLACE      (WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_MASK << WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_SHIFT)
#define WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_SHIFT        7 /* established */
#define WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_MASK         0xfu
#define WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_INPLACE      (WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_MASK << WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_SHIFT)
#define WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_SHIFT        5 /* established */
#define WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_MASK         0x3u
#define WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_INPLACE      (WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_MASK << WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_SHIFT)
#define WORD_TEXLOAD_LAYOUT_BANK_SHIFT               3 /* established */
#define WORD_TEXLOAD_LAYOUT_BANK_MASK                0x1u
#define WORD_TEXLOAD_LAYOUT_BANK_INPLACE             (WORD_TEXLOAD_LAYOUT_BANK_MASK << WORD_TEXLOAD_LAYOUT_BANK_SHIFT)
#define WORD_TEXLOAD_LAYOUT_DMA_SHIFT                2 /* established */
#define WORD_TEXLOAD_LAYOUT_DMA_MASK                 0x1u
#define WORD_TEXLOAD_LAYOUT_DMA_INPLACE              (WORD_TEXLOAD_LAYOUT_DMA_MASK << WORD_TEXLOAD_LAYOUT_DMA_SHIFT)
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_SHIFT          0 /* established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_MASK           0x3u
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_INPLACE        (WORD_TEXLOAD_LAYOUT_SIZE_CODE_MASK << WORD_TEXLOAD_LAYOUT_SIZE_CODE_SHIFT)
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_BITS16         0 /* established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_BITS32         1 /* established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_SLOT64         2 /* established */

/* word TEXLOAD_SIZE: 32 bits */
#define WORD_TEXLOAD_SIZE_WIDTH                      32 /* established */
#define WORD_TEXLOAD_SIZE_R_EXP_SHIFT                8 /* established */
#define WORD_TEXLOAD_SIZE_R_EXP_MASK                 0xfu
#define WORD_TEXLOAD_SIZE_R_EXP_INPLACE              (WORD_TEXLOAD_SIZE_R_EXP_MASK << WORD_TEXLOAD_SIZE_R_EXP_SHIFT)
#define WORD_TEXLOAD_SIZE_T_EXP_SHIFT                4 /* established */
#define WORD_TEXLOAD_SIZE_T_EXP_MASK                 0xfu
#define WORD_TEXLOAD_SIZE_T_EXP_INPLACE              (WORD_TEXLOAD_SIZE_T_EXP_MASK << WORD_TEXLOAD_SIZE_T_EXP_SHIFT)
#define WORD_TEXLOAD_SIZE_S_EXP_SHIFT                0 /* established */
#define WORD_TEXLOAD_SIZE_S_EXP_MASK                 0xfu
#define WORD_TEXLOAD_SIZE_S_EXP_INPLACE              (WORD_TEXLOAD_SIZE_S_EXP_MASK << WORD_TEXLOAD_SIZE_S_EXP_SHIFT)

/* word WINDOW_W2: 32 bits */
#define WORD_WINDOW_W2_WIDTH                         32 /* inferred */
#define WORD_WINDOW_W2_X_BIAS_SHIFT                  16 /* inferred */
#define WORD_WINDOW_W2_X_BIAS_MASK                   0xffffu
#define WORD_WINDOW_W2_X_BIAS_INPLACE                (WORD_WINDOW_W2_X_BIAS_MASK << WORD_WINDOW_W2_X_BIAS_SHIFT)
#define WORD_WINDOW_W2_WIDTH_SHIFT                   0 /* inferred */
#define WORD_WINDOW_W2_WIDTH_MASK                    0xffffu
#define WORD_WINDOW_W2_WIDTH_INPLACE                 (WORD_WINDOW_W2_WIDTH_MASK << WORD_WINDOW_W2_WIDTH_SHIFT)

/* word WINDOW_W3: 32 bits */
#define WORD_WINDOW_W3_WIDTH                         32 /* inferred */
#define WORD_WINDOW_W3_Y_BIAS_SHIFT                  16 /* inferred */
#define WORD_WINDOW_W3_Y_BIAS_MASK                   0xffffu
#define WORD_WINDOW_W3_Y_BIAS_INPLACE                (WORD_WINDOW_W3_Y_BIAS_MASK << WORD_WINDOW_W3_Y_BIAS_SHIFT)
#define WORD_WINDOW_W3_HEIGHT_SHIFT                  0 /* inferred */
#define WORD_WINDOW_W3_HEIGHT_MASK                   0xffffu
#define WORD_WINDOW_W3_HEIGHT_INPLACE                (WORD_WINDOW_W3_HEIGHT_MASK << WORD_WINDOW_W3_HEIGHT_SHIFT)

#define WORD_DESC_DISTRIBUTOR_PROGRAM                0x48200020u /* established */
#define WORD_DESC_DISTRIBUTOR_STEP                   0x44200020u /* inferred */
#define WORD_DESC_ENGINE_REG_ADDRESS                 0x46a00020u /* established */
#define WORD_DESC_ENGINE_REG_DATA                    0x46600020u /* established */
#define WORD_DESC_ENGINE_TABLE_ENTRY                 0x46200020u /* established */
#define WORD_DESC_ENGINE_TABLE_INDEX                 0x46000020u /* established */
#define WORD_DESC_ENTRY_TABLE                        0x42600020u /* established */
#define WORD_DESC_IMAGE_PROCESSOR_WRITE              0x584fc800u /* established */
#define WORD_DESC_PRIMITIVE_CLASS_TABLE              0x42200020u /* established */
#define WORD_DESC_RASTER_BUS_WRITE                   0x58404800u /* established */
#define WORD_FOG_PARAMETER_COLOUR                    0xb66u /* established */
#define WORD_FOG_PARAMETER_DENSITY                   0xb62u /* established */
#define WORD_FOG_PARAMETER_END                       0xb64u /* established */
#define WORD_FOG_PARAMETER_INDEX                     0xb61u /* established */
#define WORD_FOG_PARAMETER_MODE                      0xb65u /* established */
#define WORD_FOG_PARAMETER_OFFSET                    0x8199u /* established */
#define WORD_FOG_PARAMETER_START                     0xb63u /* established */
#define WORD_GC_LOAD_W4_BUS_ENABLE                   0xffffffu /* established */
#define WORD_GC_LOAD_W6_BUS_ENABLE                   0x383cu /* established */
#define WORD_GC_LOAD_W7_BUS_ENABLE                   0xffc00fu /* established */
#define ID_TABLE_NORMAL_ENTRIES                      0x40u /* established */
#define ID_TABLE_OVERLAY_ENTRIES                     0x20u /* established */
#define LAYER_MAIN                                   0x0u /* established */
#define LAYER_OVERLAY                                0x1u /* established */
#define LAYER_POPUP                                  0x2u /* established */
#define WORD_LIGHT_BLOCK_COUNT                       0x8u /* established */
#define WORD_LIGHT_BLOCK_FIRST_ADDRESS               0x2c7u /* established */
#define WORD_LIGHT_BLOCK_WORDS                       0x23u /* established */
#define WORD_MODE_BYTE_RESERVED_CI_OPAQUE            0x15u /* established */
#define WORD_MODE_BYTE_RESERVED_CI_TRANSPARENT       0x5u /* established */
#define WORD_MODE_BYTE_RESERVED_RGB_OPAQUE           0x12u /* established */
#define WORD_MODE_BYTE_RESERVED_RGB_TRANSPARENT      0x2u /* established */
#define WORD_OVERLAY_ID_WORD_COLOUR_INDEX            0x3c00u /* established */
#define WORD_OVERLAY_ID_WORD_RGB15                   0x3c01u /* established */
#define WORD_OVERLAY_RGB15_BLUE_BITS                 0x1fu /* established */
#define WORD_OVERLAY_RGB15_GREEN_BITS                0x3e0u /* established */
#define WORD_OVERLAY_RGB15_RED_BITS                  0x7c00u /* established */
#define WORD_PIXEL_FORMAT_ALPHA                      0x3u /* established */
#define WORD_PIXEL_FORMAT_BLUE                       0x2u /* established */
#define WORD_PIXEL_FORMAT_COLOUR_INDEX               0xbu /* established */
#define WORD_PIXEL_FORMAT_DEPTH                      0xdu /* established */
#define WORD_PIXEL_FORMAT_EXT_ABGR                   0x8u /* established */
#define WORD_PIXEL_FORMAT_EXT_CMYK                   0x9u /* established */
#define WORD_PIXEL_FORMAT_EXT_CMYKA                  0xau /* established */
#define WORD_PIXEL_FORMAT_GREEN                      0x1u /* established */
#define WORD_PIXEL_FORMAT_LUMINANCE                  0x6u /* established */
#define WORD_PIXEL_FORMAT_LUMINANCE_ALPHA            0x7u /* established */
#define WORD_PIXEL_FORMAT_RED                        0x0u /* established */
#define WORD_PIXEL_FORMAT_RGB                        0x4u /* established */
#define WORD_PIXEL_FORMAT_RGBA                       0x5u /* established */
#define WORD_PIXEL_FORMAT_STENCIL                    0xcu /* established */
#define WORD_PIXEL_MAP_ALPHA_TO_ALPHA                0xc79u /* established */
#define WORD_PIXEL_MAP_BLUE_TO_BLUE                  0xc78u /* established */
#define WORD_PIXEL_MAP_GREEN_TO_GREEN                0xc77u /* established */
#define WORD_PIXEL_MAP_INDEX_TO_ALPHA                0xc75u /* established */
#define WORD_PIXEL_MAP_INDEX_TO_BLUE                 0xc74u /* established */
#define WORD_PIXEL_MAP_INDEX_TO_GREEN                0xc73u /* established */
#define WORD_PIXEL_MAP_INDEX_TO_INDEX                0xc70u /* established */
#define WORD_PIXEL_MAP_INDEX_TO_RED                  0xc72u /* established */
#define WORD_PIXEL_MAP_RED_TO_RED                    0xc76u /* established */
#define WORD_PIXEL_MAP_STENCIL_TO_STENCIL            0xc71u /* established */
#define WORD_PIXEL_PACK_ALIGNMENT                    0xd05u /* established */
#define WORD_PIXEL_PACK_IMAGE_DEPTH                  0x8131u /* established */
#define WORD_PIXEL_PACK_IMAGE_HEIGHT                 0x806cu /* established */
#define WORD_PIXEL_PACK_LSB_FIRST                    0xd01u /* established */
#define WORD_PIXEL_PACK_ROW_LENGTH                   0xd02u /* established */
#define WORD_PIXEL_PACK_SKIP_IMAGES                  0x806bu /* established */
#define WORD_PIXEL_PACK_SKIP_PIXELS                  0xd04u /* established */
#define WORD_PIXEL_PACK_SKIP_ROWS                    0xd03u /* established */
#define WORD_PIXEL_PACK_SKIP_VOLUMES                 0x8130u /* established */
#define WORD_PIXEL_PACK_SWAP_BYTES                   0xd00u /* established */
#define WORD_PIXEL_TRANSFER_ALPHA_BIAS               0xd1du /* established */
#define WORD_PIXEL_TRANSFER_ALPHA_SCALE              0xd1cu /* established */
#define WORD_PIXEL_TRANSFER_BLUE_BIAS                0xd1bu /* established */
#define WORD_PIXEL_TRANSFER_BLUE_SCALE               0xd1au /* established */
#define WORD_PIXEL_TRANSFER_DEPTH_BIAS               0xd1fu /* established */
#define WORD_PIXEL_TRANSFER_DEPTH_SCALE              0xd1eu /* established */
#define WORD_PIXEL_TRANSFER_GREEN_BIAS               0xd19u /* established */
#define WORD_PIXEL_TRANSFER_GREEN_SCALE              0xd18u /* established */
#define WORD_PIXEL_TRANSFER_INDEX_OFFSET             0xd13u /* established */
#define WORD_PIXEL_TRANSFER_INDEX_SHIFT              0xd12u /* established */
#define WORD_PIXEL_TRANSFER_MAP_COLOUR               0xd10u /* established */
#define WORD_PIXEL_TRANSFER_MAP_STENCIL              0xd11u /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_ALPHA_BIAS 0x8023u /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_ALPHA_SCALE 0x801fu /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_BLUE_BIAS 0x8022u /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_BLUE_SCALE 0x801eu /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_GREEN_BIAS 0x8021u /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_GREEN_SCALE 0x801du /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_RED_BIAS 0x8020u /* established */
#define WORD_PIXEL_TRANSFER_POST_CONVOLUTION_RED_SCALE 0x801cu /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_ALPHA_BIAS   0x80bbu /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_ALPHA_SCALE  0x80b7u /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_BLUE_BIAS    0x80bau /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_BLUE_SCALE   0x80b6u /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_GREEN_BIAS   0x80b9u /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_GREEN_SCALE  0x80b5u /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_RED_BIAS     0x80b8u /* established */
#define WORD_PIXEL_TRANSFER_POST_MATRIX_RED_SCALE    0x80b4u /* established */
#define WORD_PIXEL_TRANSFER_RED_BIAS                 0xd15u /* established */
#define WORD_PIXEL_TRANSFER_RED_SCALE                0xd14u /* established */
#define WORD_PIXEL_TYPE_BITMAP                       0x7u /* established */
#define WORD_PIXEL_TYPE_BYTE                         0x0u /* established */
#define WORD_PIXEL_TYPE_FLOAT                        0x6u /* established */
#define WORD_PIXEL_TYPE_INT                          0x4u /* established */
#define WORD_PIXEL_TYPE_PACKED_10_10_10_2            0xcu /* established */
#define WORD_PIXEL_TYPE_PACKED_332                   0x8u /* established */
#define WORD_PIXEL_TYPE_PACKED_4444                  0x9u /* established */
#define WORD_PIXEL_TYPE_PACKED_5551                  0xau /* established */
#define WORD_PIXEL_TYPE_PACKED_8888                  0xbu /* established */
#define WORD_PIXEL_TYPE_SHORT                        0x2u /* established */
#define WORD_PIXEL_TYPE_UNSIGNED_BYTE                0x1u /* established */
#define WORD_PIXEL_TYPE_UNSIGNED_INT                 0x5u /* established */
#define WORD_PIXEL_TYPE_UNSIGNED_SHORT               0x3u /* established */
#define WORD_PIXEL_UNPACK_ALIGNMENT                  0xcf5u /* established */
#define WORD_PIXEL_UNPACK_IMAGE_DEPTH                0x8133u /* established */
#define WORD_PIXEL_UNPACK_IMAGE_HEIGHT               0x806eu /* established */
#define WORD_PIXEL_UNPACK_LSB_FIRST                  0xcf1u /* established */
#define WORD_PIXEL_UNPACK_ROW_LENGTH                 0xcf2u /* established */
#define WORD_PIXEL_UNPACK_SKIP_IMAGES                0x806du /* established */
#define WORD_PIXEL_UNPACK_SKIP_PIXELS                0xcf4u /* established */
#define WORD_PIXEL_UNPACK_SKIP_ROWS                  0xcf3u /* established */
#define WORD_PIXEL_UNPACK_SKIP_VOLUMES               0x8132u /* established */
#define WORD_PIXEL_UNPACK_SWAP_BYTES                 0xcf0u /* established */
#define WORD_POLYGON_FACE_BACK                       0x405u /* established */
#define WORD_POLYGON_FACE_BOTH                       0x408u /* established */
#define WORD_POLYGON_FACE_FRONT                      0x404u /* established */
#define WORD_POLYGON_MODE_FILL                       0x1b02u /* established */
#define WORD_POLYGON_MODE_LINE                       0x1b01u /* established */
#define WORD_POLYGON_MODE_POINT                      0x1b00u /* established */
#define WORD_TEXENV_COLOUR1_IMAGE                    0x15f1413u /* established */
#define WORD_TEXENV_COLOUR_IMAGE                     0x15e1402u /* established */
#define WINDOW_ID_CI_OVERLAY_OPAQUE                  0x41u /* established */
#define WINDOW_ID_CI_OVERLAY_TRANSPARENT             0x40u /* established */
#define WINDOW_ID_DYNAMIC_FIRST                      0x44u /* inferred */
#define WINDOW_ID_MAIN_FIRST                         0x0u /* established */
#define WINDOW_ID_MAIN_LAST                          0x3eu /* established */
#define WINDOW_ID_OVERLAY_FIRST                      0x40u /* established */
#define WINDOW_ID_OVERLAY_LAST                       0x5fu /* established */
#define WINDOW_ID_POPUP                              0x3fu /* established */
#define WINDOW_ID_RGB15_OVERLAY_OPAQUE               0x43u /* established */
#define WINDOW_ID_RGB15_OVERLAY_TRANSPARENT          0x42u /* established */

#endif /* WORD_GEN_H */
