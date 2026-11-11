/*
 * KONA_WORDS_DECODE.h - multi-field words of the host command stream
 *
 * Bit layouts of the 32-bit words that the host packs several fields into: the
 * per-display-id mode byte, the pixel-id placement words, the window and clip
 * set-up words, the texture-load header words and bind words, and the multisample
 * control and sample-location words, words 4, 6 and 7 of the X graphics-context load,
 * the 15-bit RGB overlay pixel and its reserved mode bytes, and the engine command
 * descriptor values. Registers on the display bus (the XMAP's
 * display-id, channel and gamma words, and the cursor position) have their fields
 * on their own register in KONA_XMAP_DECODE.h and are not repeated.
 *
 * A word is named after what carries it; the table says which token and which
 * word number. A 32-bit word with a field that spans a halfword is the whole
 * word; a "half" is 16 bits. Where a hardware register is the image of the word,
 * the word's layout is the register's layout.
 *
 * Derivation: the layouts and grades are those of the back-end definitions table
 * (docs/command-table.md, sections 4.2, 7.4, 7.6, 7.7, 7.8, 7.10, 7.13 and 7.17), which
 * reads them from the shipped client library's senders, the shipped pipe firmware
 * and the shipped diagnostic's test vectors, and from recorded guest command
 * traces. Test vectors are values the table records. The grade on a field says how
 * its position was derived, not that silicon was measured. Whether a hardware
 * stage consumes a field is outside this header: the table's grade says so.
 * scripts/kona_checks.py keeps this file and the table in step.
 */
#ifndef KONA_WORDS_DECODE_H
#define KONA_WORDS_DECODE_H

#include <stdint.h>

/* ---- display-id mode byte (per display id) ---- */

/* Third payload word of the display-mode token; the firmware copies the byte */
/* unchanged to the mode table. Bits 1:0 are owned by the kernel. Bits 4:2 have an */
/* unknown hardware use; 30-bit RGB main windows send none of them. */
/* FIELD: MODE_BYTE.back_shown 0:0 established */
#define WORD_MODE_BYTE_BACK_SHOWN_SHIFT 0
#define WORD_MODE_BYTE_BACK_SHOWN_MASK 0x1u
/* FIELD: MODE_BYTE.stereo 1:1 established */
#define WORD_MODE_BYTE_STEREO_SHIFT 1
#define WORD_MODE_BYTE_STEREO_MASK 0x1u
/* FIELD: MODE_BYTE.rgb_below_24 2:2 established */
#define WORD_MODE_BYTE_RGB_BELOW_24_SHIFT 2
#define WORD_MODE_BYTE_RGB_BELOW_24_MASK 0x1u
/* FIELD: MODE_BYTE.ci_or_luminance 3:3 established */
#define WORD_MODE_BYTE_CI_OR_LUMINANCE_SHIFT 3
#define WORD_MODE_BYTE_CI_OR_LUMINANCE_MASK 0x1u
/* FIELD: MODE_BYTE.direct_or_opaque 4:4 established */
#define WORD_MODE_BYTE_DIRECT_OR_OPAQUE_SHIFT 4
#define WORD_MODE_BYTE_DIRECT_OR_OPAQUE_MASK 0x1u

/* The same byte for an overlay or underlay window: bits 3:1 become one */
/* overlay code, 2, or 3 when the window is double-buffered and starts in the back */
/* buffer, plus 4 for an underlay. */
/* FIELD: MODE_BYTE_OVERLAY.back_shown 0:0 established */
#define WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_SHIFT 0
#define WORD_MODE_BYTE_OVERLAY_BACK_SHOWN_MASK 0x1u
/* FIELD: MODE_BYTE_OVERLAY.code 3:1 established */
#define WORD_MODE_BYTE_OVERLAY_CODE_SHIFT 1
#define WORD_MODE_BYTE_OVERLAY_CODE_MASK 0x7u
/* ENUM: MODE_BYTE_OVERLAY.code 2 overlay established */
#define WORD_MODE_BYTE_OVERLAY_CODE_OVERLAY 2
/* ENUM: MODE_BYTE_OVERLAY.code 3 overlay_back_start established */
#define WORD_MODE_BYTE_OVERLAY_CODE_OVERLAY_BACK_START 3
/* ENUM: MODE_BYTE_OVERLAY.code 6 underlay established */
#define WORD_MODE_BYTE_OVERLAY_CODE_UNDERLAY 6
/* ENUM: MODE_BYTE_OVERLAY.code 7 underlay_back_start established */
#define WORD_MODE_BYTE_OVERLAY_CODE_UNDERLAY_BACK_START 7
/* The server sends code 1 for its reserved 15-bit RGB overlay ids; the dynamic */
/* per-window path never produces it. What the chip does with it is unknown. */
/* ENUM: MODE_BYTE_OVERLAY.code 1 reserved_rgb15 established */
#define WORD_MODE_BYTE_OVERLAY_CODE_RESERVED_RGB15 1
/* The four bytes the server sends for its reserved overlay ids: the two colour-index */
/* ids (transparent, opaque) and the two 15-bit RGB ids. Bit 4 is the opaque bit. */
#define WORD_MODE_BYTE_RESERVED_CI_TRANSPARENT 0x05 /* established */
#define WORD_MODE_BYTE_RESERVED_CI_OPAQUE 0x15 /* established */
#define WORD_MODE_BYTE_RESERVED_RGB_TRANSPARENT 0x02 /* established */
#define WORD_MODE_BYTE_RESERVED_RGB_OPAQUE 0x12 /* established */
/*
 * TESTVEC: 0x05 as MODE_BYTE_OVERLAY => back_shown=1, code=2
 */
/*
 * TESTVEC: 0x15 as MODE_BYTE_OVERLAY => back_shown=1, code=2
 */
/*
 * TESTVEC: 0x02 as MODE_BYTE_OVERLAY => back_shown=0, code=1
 */
/*
 * TESTVEC: 0x12 as MODE_BYTE_OVERLAY => back_shown=0, code=1
 */
/* The word the server passes with those ids' display-mode request: one value for */
/* the colour-index pair, one for the 15-bit RGB pair. Its layout is unknown; the */
/* values are what is established. */
#define WORD_OVERLAY_ID_WORD_COLOUR_INDEX 0x3c00 /* established */
#define WORD_OVERLAY_ID_WORD_RGB15 0x3c01 /* established */

/* 15-bit RGB overlay pixel, as advertised to clients in the visual's own format: */
/* red, green and blue in 5 bits each; one more bit is an alpha bit whose position */
/* the advertised masks do not give. Transparent value 0 for the transparent form. */
/* FIELD: OVERLAY_RGB15.red 14:10 established */
#define WORD_OVERLAY_RGB15_RED_SHIFT 10
#define WORD_OVERLAY_RGB15_RED_MASK 0x1fu
/* FIELD: OVERLAY_RGB15.green 9:5 established */
#define WORD_OVERLAY_RGB15_GREEN_SHIFT 5
#define WORD_OVERLAY_RGB15_GREEN_MASK 0x1fu
/* FIELD: OVERLAY_RGB15.blue 4:0 established */
#define WORD_OVERLAY_RGB15_BLUE_SHIFT 0
#define WORD_OVERLAY_RGB15_BLUE_MASK 0x1fu
#define WORD_OVERLAY_RGB15_RED_BITS 0x7c00 /* established: the advertised red mask, unshifted */
#define WORD_OVERLAY_RGB15_GREEN_BITS 0x3e0 /* established: the advertised green mask */
#define WORD_OVERLAY_RGB15_BLUE_BITS 0x1f /* established: the advertised blue mask */

/* ---- pixel-id placement (display id painted into pixels) ---- */

/* Larger pixel layout, high word of the 64-bit foreground: the 16-bit painted */
/* value's low nibble goes to bits 6:3 and its bits 15:4 to bits 19:8. The low word */
/* carries nothing of the id. */
/* FIELD: ID_FG_LARGE_HI.value_low_nibble 6:3 established */
#define WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_SHIFT 3
#define WORD_ID_FG_LARGE_HI_VALUE_LOW_NIBBLE_MASK 0xfu
/* FIELD: ID_FG_LARGE_HI.value_high12 19:8 established */
#define WORD_ID_FG_LARGE_HI_VALUE_HIGH12_SHIFT 8
#define WORD_ID_FG_LARGE_HI_VALUE_HIGH12_MASK 0xfffu

/* Larger pixel layout, high word of the write mask: the plane mask's bits */
/* 15:4 go to bits 11:0 and its low nibble to bits 23:20. The low word is 0. */
/* FIELD: ID_MASK_LARGE_HI.mask_high12 11:0 established */
#define WORD_ID_MASK_LARGE_HI_MASK_HIGH12_SHIFT 0
#define WORD_ID_MASK_LARGE_HI_MASK_HIGH12_MASK 0xfffu
/* FIELD: ID_MASK_LARGE_HI.mask_low_nibble 23:20 established */
#define WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_SHIFT 20
#define WORD_ID_MASK_LARGE_HI_MASK_LOW_NIBBLE_MASK 0xfu

/* Smaller pixel layout, low word of the foreground: the painted value's low */
/* nibble goes to bits 12:9 and its bits 15:4 to bits 25:14. The high word is 0. */
/* FIELD: ID_FG_SMALL_LO.value_low_nibble 12:9 established */
#define WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_SHIFT 9
#define WORD_ID_FG_SMALL_LO_VALUE_LOW_NIBBLE_MASK 0xfu
/* FIELD: ID_FG_SMALL_LO.value_high12 25:14 established */
#define WORD_ID_FG_SMALL_LO_VALUE_HIGH12_SHIFT 14
#define WORD_ID_FG_SMALL_LO_VALUE_HIGH12_MASK 0xfffu

/* Smaller pixel layout, low word of the write mask: the plane mask's bits */
/* 15:12 go to bits 3:0 and its bits 11:0 to bits 23:12. The high word is 0. */
/* FIELD: ID_MASK_SMALL_LO.mask_high_nibble 3:0 established */
#define WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_SHIFT 0
#define WORD_ID_MASK_SMALL_LO_MASK_HIGH_NIBBLE_MASK 0xfu
/* FIELD: ID_MASK_SMALL_LO.mask_low12 23:12 established */
#define WORD_ID_MASK_SMALL_LO_MASK_LOW12_SHIFT 12
#define WORD_ID_MASK_SMALL_LO_MASK_LOW12_MASK 0xfffu

/* Window-id ranges (decimal). */
#define WINDOW_ID_MAIN_FIRST 0 /* established: main-plane window ids run 0 to 62 */
#define WINDOW_ID_MAIN_LAST 62 /* established */
#define WINDOW_ID_POPUP 63 /* established: fixed popup window id; the popup's painted pattern is overlay group 31 */
#define WINDOW_ID_OVERLAY_FIRST 64 /* established: overlay and underlay ids 64 to 95 (7 bits in all) */
#define WINDOW_ID_OVERLAY_LAST 95 /* established */
#define WINDOW_ID_CI_OVERLAY_TRANSPARENT 64 /* established: 2-, 4- and 8-plane colour-index overlay, transparent */
#define WINDOW_ID_CI_OVERLAY_OPAQUE 65 /* established: colour-index overlay, opaque */
#define WINDOW_ID_RGB15_OVERLAY_TRANSPARENT 66 /* established: 15-bit RGB overlay, transparent */
#define WINDOW_ID_RGB15_OVERLAY_OPAQUE 67 /* established: 15-bit RGB overlay, opaque */
#define WINDOW_ID_DYNAMIC_FIRST 68 /* inferred: ids 68 to 95 are handed out dynamically to other overlay windows */
#define LAYER_MAIN 0 /* established: frame-buffer layer numbers */
#define LAYER_OVERLAY 1 /* established */
#define LAYER_POPUP 2 /* established */
#define ID_TABLE_NORMAL_ENTRIES 64 /* established: the display chips hold a 64-entry normal id table */
#define ID_TABLE_OVERLAY_ENTRIES 32 /* established: and a 32-entry overlay and underlay table */

/* ---- window and clip set-up request ---- */

/* Window set-up word 2: window width and screen-space x bias. */
/* FIELD: WINDOW_W2.width 15:0 inferred */
#define WORD_WINDOW_W2_WIDTH_SHIFT 0
#define WORD_WINDOW_W2_WIDTH_MASK 0xffffu
/* FIELD: WINDOW_W2.x_bias 31:16 inferred */
#define WORD_WINDOW_W2_X_BIAS_SHIFT 16
#define WORD_WINDOW_W2_X_BIAS_MASK 0xffffu

/* Window set-up word 3: window height and screen-space y bias. */
/* FIELD: WINDOW_W3.height 15:0 inferred */
#define WORD_WINDOW_W3_HEIGHT_SHIFT 0
#define WORD_WINDOW_W3_HEIGHT_MASK 0xffffu
/* FIELD: WINDOW_W3.y_bias 31:16 inferred */
#define WORD_WINDOW_W3_Y_BIAS_SHIFT 16
#define WORD_WINDOW_W3_Y_BIAS_MASK 0xffffu

/* ---- X pixel set-up ---- */

/* Pixel set-up word 0. Kind 0 is frame buffer only; a nonzero kind also sets */
/* up the texture-filter chip; kind 2 also loads the host-interface packer. The */
/* direct-write flag is kept until the finish. Other kinds are unknown. */
/* FIELD: PIXEL_SETUP_W0.kind 3:0 established */
#define WORD_PIXEL_SETUP_W0_KIND_SHIFT 0
#define WORD_PIXEL_SETUP_W0_KIND_MASK 0xfu
/* FIELD: PIXEL_SETUP_W0.direct_write 4:4 established */
#define WORD_PIXEL_SETUP_W0_DIRECT_WRITE_SHIFT 4
#define WORD_PIXEL_SETUP_W0_DIRECT_WRITE_MASK 0x1u

/* ---- texture load ---- */

/* Texel-draw word 16: physical size exponents of the level, the image of the */
/* texture-load size register. Each is a log2 size: the base exponent minus the */
/* level number, floored at zero, then raised to the layout mode's tile minimum. */
/* FIELD: TEXLOAD_SIZE.s_exp 3:0 established */
#define WORD_TEXLOAD_SIZE_S_EXP_SHIFT 0
#define WORD_TEXLOAD_SIZE_S_EXP_MASK 0xfu
/* FIELD: TEXLOAD_SIZE.t_exp 7:4 established */
#define WORD_TEXLOAD_SIZE_T_EXP_SHIFT 4
#define WORD_TEXLOAD_SIZE_T_EXP_MASK 0xfu
/* FIELD: TEXLOAD_SIZE.r_exp 11:8 established */
#define WORD_TEXLOAD_SIZE_R_EXP_SHIFT 8
#define WORD_TEXLOAD_SIZE_R_EXP_MASK 0xfu
/*
 * TESTVEC: 0x00000023 as TEXLOAD_SIZE => s_exp=3, t_exp=2, r_exp=0
 */
/*
 * TESTVEC: 0x00000677 as TEXLOAD_SIZE => s_exp=7, t_exp=7, r_exp=6
 */

/* Texel-draw word 17: layout and bank, the image of the texture-load */
/* miscellaneous register. The address-bit fields come from the client's table of */
/* address bits per page, indexed by layout mode and size code. The bank bit also */
/* says which of the two level-address words carries the address (0 selects the */
/* even word, 1 the odd word). The address-bit fields and the layout mode are */
/* established for the values the client builds. */
/* FIELD: TEXLOAD_LAYOUT.size_code 1:0 established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_SHIFT 0
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_MASK 0x3u
/* ENUM: TEXLOAD_LAYOUT.size_code 0 bits16 established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_BITS16 0
/* ENUM: TEXLOAD_LAYOUT.size_code 1 bits32 established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_BITS32 1
/* ENUM: TEXLOAD_LAYOUT.size_code 2 slot64 established */
#define WORD_TEXLOAD_LAYOUT_SIZE_CODE_SLOT64 2
/* FIELD: TEXLOAD_LAYOUT.dma 2:2 established */
#define WORD_TEXLOAD_LAYOUT_DMA_SHIFT 2
#define WORD_TEXLOAD_LAYOUT_DMA_MASK 0x1u
/* FIELD: TEXLOAD_LAYOUT.bank 3:3 established */
#define WORD_TEXLOAD_LAYOUT_BANK_SHIFT 3
#define WORD_TEXLOAD_LAYOUT_BANK_MASK 0x1u
/* FIELD: TEXLOAD_LAYOUT.layout_mode 6:5 established */
#define WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_SHIFT 5
#define WORD_TEXLOAD_LAYOUT_LAYOUT_MODE_MASK 0x3u
/* FIELD: TEXLOAD_LAYOUT.s_addr_bits 10:7 established */
#define WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_SHIFT 7
#define WORD_TEXLOAD_LAYOUT_S_ADDR_BITS_MASK 0xfu
/* FIELD: TEXLOAD_LAYOUT.t_addr_bits 14:11 established */
#define WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_SHIFT 11
#define WORD_TEXLOAD_LAYOUT_T_ADDR_BITS_MASK 0xfu
/* FIELD: TEXLOAD_LAYOUT.interlaced_download 15:15 established */
#define WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_SHIFT 15
#define WORD_TEXLOAD_LAYOUT_INTERLACED_DOWNLOAD_MASK 0x1u
/*
 * TESTVEC: 0x00002181 as TEXLOAD_LAYOUT => size_code=1, dma=0, bank=0, layout_mode=0, s_addr_bits=3, t_addr_bits=4
 */
/*
 * TESTVEC: 0x00002204 as TEXLOAD_LAYOUT => size_code=0, dma=1, bank=0, layout_mode=0, s_addr_bits=4, t_addr_bits=4
 */
/*
 * TESTVEC: 0x0000218d as TEXLOAD_LAYOUT => size_code=1, dma=1, bank=1, layout_mode=0, s_addr_bits=3, t_addr_bits=4
 */
/*
 * TESTVEC: 0x000009ad as TEXLOAD_LAYOUT => size_code=1, dma=1, bank=1, layout_mode=1, s_addr_bits=3, t_addr_bits=1
 */

/* ---- texture bind ---- */

/* Short-bind word 1: bind control. The filter-table slot is inferred; the */
/* other fields are established. */
/* FIELD: BIND_CONTROL.filter_slot 11:0 inferred */
#define WORD_BIND_CONTROL_FILTER_SLOT_SHIFT 0
#define WORD_BIND_CONTROL_FILTER_SLOT_MASK 0xfffu
/* FIELD: BIND_CONTROL.format_index 23:12 established */
#define WORD_BIND_CONTROL_FORMAT_INDEX_SHIFT 12
#define WORD_BIND_CONTROL_FORMAT_INDEX_MASK 0xfffu
/* FIELD: BIND_CONTROL.mode 27:24 established */
#define WORD_BIND_CONTROL_MODE_SHIFT 24
#define WORD_BIND_CONTROL_MODE_MASK 0xfu
/* The mode names the filter table the bind sends: bicubic, detail, sharpen or none. */
/* ENUM: BIND_CONTROL.mode 0 bicubic_table established */
#define WORD_BIND_CONTROL_MODE_BICUBIC_TABLE 0
/* ENUM: BIND_CONTROL.mode 1 detail_table established */
#define WORD_BIND_CONTROL_MODE_DETAIL_TABLE 1
/* ENUM: BIND_CONTROL.mode 2 sharpen_table established */
#define WORD_BIND_CONTROL_MODE_SHARPEN_TABLE 2
/* ENUM: BIND_CONTROL.mode 3 no_table established */
#define WORD_BIND_CONTROL_MODE_NO_TABLE 3
/* FIELD: BIND_CONTROL.target 31:28 established */
#define WORD_BIND_CONTROL_TARGET_SHIFT 28
#define WORD_BIND_CONTROL_TARGET_MASK 0xfu
/* ENUM: BIND_CONTROL.target 0 detail established */
#define WORD_BIND_CONTROL_TARGET_DETAIL 0
/* ENUM: BIND_CONTROL.target 1 tex1d established */
#define WORD_BIND_CONTROL_TARGET_TEX1D 1
/* ENUM: BIND_CONTROL.target 2 tex2d established */
#define WORD_BIND_CONTROL_TARGET_TEX2D 2
/* ENUM: BIND_CONTROL.target 3 tex3d established */
#define WORD_BIND_CONTROL_TARGET_TEX3D 3

/* Short-bind word 2: the texture-mode word, the image of the texture-mode */
/* register. The minification order for settings 3 to 6 and the flag bits 8 and 9, */
/* 12, 13 and 25:24 are not fully traced. The detail level is stored negated: the */
/* public value is -4 to 0 and the code 0 to 4. Bit 28 is the bank bit of level 0: */
/* level k lives in bank bit 28 XOR (k and 1). */
/* FIELD: BIND_MODE.sampling 1:0 established */
#define WORD_BIND_MODE_SAMPLING_SHIFT 0
#define WORD_BIND_MODE_SAMPLING_MASK 0x3u
/* ENUM: BIND_MODE.sampling 0 mode2d established */
#define WORD_BIND_MODE_SAMPLING_MODE2D 0
/* ENUM: BIND_MODE.sampling 1 mode3d established */
#define WORD_BIND_MODE_SAMPLING_MODE3D 1
/* ENUM: BIND_MODE.sampling 2 mode3d_mip established */
#define WORD_BIND_MODE_SAMPLING_MODE3D_MIP 2
/* ENUM: BIND_MODE.sampling 3 bicubic established */
#define WORD_BIND_MODE_SAMPLING_BICUBIC 3
/* FIELD: BIND_MODE.min_filter 4:2 inferred */
#define WORD_BIND_MODE_MIN_FILTER_SHIFT 2
#define WORD_BIND_MODE_MIN_FILTER_MASK 0x7u
/* ENUM: BIND_MODE.min_filter 0 nearest established */
#define WORD_BIND_MODE_MIN_FILTER_NEAREST 0
/* ENUM: BIND_MODE.min_filter 1 linear established */
#define WORD_BIND_MODE_MIN_FILTER_LINEAR 1
/* ENUM: BIND_MODE.min_filter 2 bicubic established */
#define WORD_BIND_MODE_MIN_FILTER_BICUBIC 2
/* FIELD: BIND_MODE.mag_filter 7:5 established */
#define WORD_BIND_MODE_MAG_FILTER_SHIFT 5
#define WORD_BIND_MODE_MAG_FILTER_MASK 0x7u
/* ENUM: BIND_MODE.mag_filter 0 nearest established */
#define WORD_BIND_MODE_MAG_FILTER_NEAREST 0
/* ENUM: BIND_MODE.mag_filter 1 linear established */
#define WORD_BIND_MODE_MAG_FILTER_LINEAR 1
/* ENUM: BIND_MODE.mag_filter 2 bicubic established */
#define WORD_BIND_MODE_MAG_FILTER_BICUBIC 2
/* ENUM: BIND_MODE.mag_filter 3 detail_add established */
#define WORD_BIND_MODE_MAG_FILTER_DETAIL_ADD 3
/* ENUM: BIND_MODE.mag_filter 4 detail_modulate established */
#define WORD_BIND_MODE_MAG_FILTER_DETAIL_MODULATE 4
/* ENUM: BIND_MODE.mag_filter 5 sharpen established */
#define WORD_BIND_MODE_MAG_FILTER_SHARPEN 5
/* FIELD: BIND_MODE.flags 9:8 inferred */
#define WORD_BIND_MODE_FLAGS_SHIFT 8
#define WORD_BIND_MODE_FLAGS_MASK 0x3u
/* FIELD: BIND_MODE.shadow_compare 11:10 established */
#define WORD_BIND_MODE_SHADOW_COMPARE_SHIFT 10
#define WORD_BIND_MODE_SHADOW_COMPARE_MASK 0x3u
/* ENUM: BIND_MODE.shadow_compare 0 off established */
#define WORD_BIND_MODE_SHADOW_COMPARE_OFF 0
/* ENUM: BIND_MODE.shadow_compare 1 ref_at_least_texel established */
#define WORD_BIND_MODE_SHADOW_COMPARE_REF_AT_LEAST_TEXEL 1
/* ENUM: BIND_MODE.shadow_compare 2 ref_at_most_texel established */
#define WORD_BIND_MODE_SHADOW_COMPARE_REF_AT_MOST_TEXEL 2
/* FIELD: BIND_MODE.clamp_style 12:12 inferred */
#define WORD_BIND_MODE_CLAMP_STYLE_SHIFT 12
#define WORD_BIND_MODE_CLAMP_STYLE_MASK 0x1u
/* FIELD: BIND_MODE.env_on 13:13 inferred */
#define WORD_BIND_MODE_ENV_ON_SHIFT 13
#define WORD_BIND_MODE_ENV_ON_MASK 0x1u
/* FIELD: BIND_MODE.texel_format 20:14 established */
#define WORD_BIND_MODE_TEXEL_FORMAT_SHIFT 14
#define WORD_BIND_MODE_TEXEL_FORMAT_MASK 0x7fu
/* FIELD: BIND_MODE.detail_level 23:21 established */
#define WORD_BIND_MODE_DETAIL_LEVEL_SHIFT 21
#define WORD_BIND_MODE_DETAIL_LEVEL_MASK 0x7u
/* FIELD: BIND_MODE.channel_select 25:24 inferred */
#define WORD_BIND_MODE_CHANNEL_SELECT_SHIFT 24
#define WORD_BIND_MODE_CHANNEL_SELECT_MASK 0x3u
/* FIELD: BIND_MODE.mag_channels 27:26 established */
#define WORD_BIND_MODE_MAG_CHANNELS_SHIFT 26
#define WORD_BIND_MODE_MAG_CHANNELS_MASK 0x3u
/* ENUM: BIND_MODE.mag_channels 0 all established */
#define WORD_BIND_MODE_MAG_CHANNELS_ALL 0
/* ENUM: BIND_MODE.mag_channels 1 colour established */
#define WORD_BIND_MODE_MAG_CHANNELS_COLOUR 1
/* ENUM: BIND_MODE.mag_channels 2 alpha established */
#define WORD_BIND_MODE_MAG_CHANNELS_ALPHA 2
/* ENUM: BIND_MODE.mag_channels 3 level0 established */
#define WORD_BIND_MODE_MAG_CHANNELS_LEVEL0 3
/* FIELD: BIND_MODE.first_bank 28:28 established */
#define WORD_BIND_MODE_FIRST_BANK_SHIFT 28
#define WORD_BIND_MODE_FIRST_BANK_MASK 0x1u

/* Short-bind word 3: the texture-size word. The size fields are the log2 of the */
/* level-0 logical size. Each clamp bit is set when the client's wrap code is 1, 2 */
/* or 3 and clear for 0, so a bit cannot tell the three non-repeat modes apart. */
/* FIELD: BIND_SIZE.s_exp 3:0 established */
#define WORD_BIND_SIZE_S_EXP_SHIFT 0
#define WORD_BIND_SIZE_S_EXP_MASK 0xfu
/* FIELD: BIND_SIZE.t_exp 7:4 established */
#define WORD_BIND_SIZE_T_EXP_SHIFT 4
#define WORD_BIND_SIZE_T_EXP_MASK 0xfu
/* FIELD: BIND_SIZE.r_exp 11:8 established */
#define WORD_BIND_SIZE_R_EXP_SHIFT 8
#define WORD_BIND_SIZE_R_EXP_MASK 0xfu
/* FIELD: BIND_SIZE.s_clamp 12:12 established */
#define WORD_BIND_SIZE_S_CLAMP_SHIFT 12
#define WORD_BIND_SIZE_S_CLAMP_MASK 0x1u
/* FIELD: BIND_SIZE.t_clamp 13:13 established */
#define WORD_BIND_SIZE_T_CLAMP_SHIFT 13
#define WORD_BIND_SIZE_T_CLAMP_MASK 0x1u
/* FIELD: BIND_SIZE.r_clamp 14:14 established */
#define WORD_BIND_SIZE_R_CLAMP_SHIFT 14
#define WORD_BIND_SIZE_R_CLAMP_MASK 0x1u
/*
 * TESTVEC: 0x00003077 as BIND_SIZE => s_exp=7, t_exp=7, r_exp=0, s_clamp=1, t_clamp=1, r_clamp=0
 */
/*
 * TESTVEC: 0x00000677 as BIND_SIZE => s_exp=7, t_exp=7, r_exp=6, s_clamp=0, t_clamp=0, r_clamp=0
 */

/* Level record word 1: level-of-detail scales. Each byte is 16 x 2^b for the */
/* public bias b, truncated, interpolated linearly between integer powers and */
/* clamped to 1 to 255. */
/* FIELD: BIND_LOD_SCALE.s_scale 7:0 established */
#define WORD_BIND_LOD_SCALE_S_SCALE_SHIFT 0
#define WORD_BIND_LOD_SCALE_S_SCALE_MASK 0xffu
/* FIELD: BIND_LOD_SCALE.t_scale 15:8 established */
#define WORD_BIND_LOD_SCALE_T_SCALE_SHIFT 8
#define WORD_BIND_LOD_SCALE_T_SCALE_MASK 0xffu
/* FIELD: BIND_LOD_SCALE.r_scale 23:16 established */
#define WORD_BIND_LOD_SCALE_R_SCALE_SHIFT 16
#define WORD_BIND_LOD_SCALE_R_SCALE_MASK 0xffu

/* Level record word 2: level-of-detail bounds, each 64 x (level + 1) for a */
/* non-negative level; zero is the finite floor. It carries neither the base nor the */
/* last level. */
/* FIELD: BIND_LOD_BOUNDS.min 9:0 established */
#define WORD_BIND_LOD_BOUNDS_MIN_SHIFT 0
#define WORD_BIND_LOD_BOUNDS_MIN_MASK 0x3ffu
/* FIELD: BIND_LOD_BOUNDS.max 19:10 established */
#define WORD_BIND_LOD_BOUNDS_MAX_SHIFT 10
#define WORD_BIND_LOD_BOUNDS_MAX_MASK 0x3ffu

/* Level record word 3: physical size exponents (the r exponent is carried */
/* in the volume forms only). */
/* FIELD: BIND_PHYS_SIZE.s_exp 3:0 established */
#define WORD_BIND_PHYS_SIZE_S_EXP_SHIFT 0
#define WORD_BIND_PHYS_SIZE_S_EXP_MASK 0xfu
/* FIELD: BIND_PHYS_SIZE.t_exp 7:4 established */
#define WORD_BIND_PHYS_SIZE_T_EXP_SHIFT 4
#define WORD_BIND_PHYS_SIZE_T_EXP_MASK 0xfu
/* FIELD: BIND_PHYS_SIZE.r_exp 11:8 established */
#define WORD_BIND_PHYS_SIZE_R_EXP_SHIFT 8
#define WORD_BIND_PHYS_SIZE_R_EXP_MASK 0xfu

/* ---- multisample ---- */

/* Image-processor multisample control word. The field names are established; */
/* their effects are inferred. The optimisation field is written by the blend */
/* enable and disable routines and the colour-mask handler. */
/* FIELD: MS_CONTROL.enable 0:0 established */
#define WORD_MS_CONTROL_ENABLE_SHIFT 0
#define WORD_MS_CONTROL_ENABLE_MASK 0x1u
/* FIELD: MS_CONTROL.sample_count 1:1 established */
#define WORD_MS_CONTROL_SAMPLE_COUNT_SHIFT 1
#define WORD_MS_CONTROL_SAMPLE_COUNT_MASK 0x1u
/* ENUM: MS_CONTROL.sample_count 0 four established */
#define WORD_MS_CONTROL_SAMPLE_COUNT_FOUR 0
/* ENUM: MS_CONTROL.sample_count 1 eight established */
#define WORD_MS_CONTROL_SAMPLE_COUNT_EIGHT 1
/* FIELD: MS_CONTROL.mask_op 2:2 established */
#define WORD_MS_CONTROL_MASK_OP_SHIFT 2
#define WORD_MS_CONTROL_MASK_OP_MASK 0x1u
/* ENUM: MS_CONTROL.mask_op 0 and_op established */
#define WORD_MS_CONTROL_MASK_OP_AND_OP 0
/* ENUM: MS_CONTROL.mask_op 1 replace established */
#define WORD_MS_CONTROL_MASK_OP_REPLACE 1
/* FIELD: MS_CONTROL.mask 10:3 established */
#define WORD_MS_CONTROL_MASK_SHIFT 3
#define WORD_MS_CONTROL_MASK_MASK 0xffu
/* FIELD: MS_CONTROL.maintain_two 11:11 established */
#define WORD_MS_CONTROL_MAINTAIN_TWO_SHIFT 11
#define WORD_MS_CONTROL_MAINTAIN_TWO_MASK 0x1u
/* FIELD: MS_CONTROL.optimisation 13:12 established */
#define WORD_MS_CONTROL_OPTIMISATION_SHIFT 12
#define WORD_MS_CONTROL_OPTIMISATION_MASK 0x3u
/* ENUM: MS_CONTROL.optimisation 0 none established */
#define WORD_MS_CONTROL_OPTIMISATION_NONE 0
/* ENUM: MS_CONTROL.optimisation 2 disable established */
#define WORD_MS_CONTROL_OPTIMISATION_DISABLE 2
/* ENUM: MS_CONTROL.optimisation 3 enable established */
#define WORD_MS_CONTROL_OPTIMISATION_ENABLE 3

/* Sample-location word: sample n of four in bits 6n+2:6n (x) and 6n+5:6n+3 (y), */
/* on an eighth-of-a-pixel grid. The first register holds samples 0 to 3, the */
/* second samples 4 to 7. Layout established; the positions the notes derive from */
/* it are inferred, and whether they are measured from a pixel corner or centre is */
/* unknown. */
/* FIELD: MS_LOCATIONS.s0_x 2:0 established */
#define WORD_MS_LOCATIONS_S0_X_SHIFT 0
#define WORD_MS_LOCATIONS_S0_X_MASK 0x7u
/* FIELD: MS_LOCATIONS.s0_y 5:3 established */
#define WORD_MS_LOCATIONS_S0_Y_SHIFT 3
#define WORD_MS_LOCATIONS_S0_Y_MASK 0x7u
/* FIELD: MS_LOCATIONS.s1_x 8:6 established */
#define WORD_MS_LOCATIONS_S1_X_SHIFT 6
#define WORD_MS_LOCATIONS_S1_X_MASK 0x7u
/* FIELD: MS_LOCATIONS.s1_y 11:9 established */
#define WORD_MS_LOCATIONS_S1_Y_SHIFT 9
#define WORD_MS_LOCATIONS_S1_Y_MASK 0x7u
/* FIELD: MS_LOCATIONS.s2_x 14:12 established */
#define WORD_MS_LOCATIONS_S2_X_SHIFT 12
#define WORD_MS_LOCATIONS_S2_X_MASK 0x7u
/* FIELD: MS_LOCATIONS.s2_y 17:15 established */
#define WORD_MS_LOCATIONS_S2_Y_SHIFT 15
#define WORD_MS_LOCATIONS_S2_Y_MASK 0x7u
/* FIELD: MS_LOCATIONS.s3_x 20:18 established */
#define WORD_MS_LOCATIONS_S3_X_SHIFT 18
#define WORD_MS_LOCATIONS_S3_X_MASK 0x7u
/* FIELD: MS_LOCATIONS.s3_y 23:21 established */
#define WORD_MS_LOCATIONS_S3_Y_SHIFT 21
#define WORD_MS_LOCATIONS_S3_Y_MASK 0x7u
/*
 * TESTVEC: 0x007f6280 as MS_LOCATIONS => s0_x=0, s0_y=0, s1_x=2, s1_y=1, s2_x=6, s2_y=6, s3_x=7, s3_y=3
 */
/*
 * TESTVEC: 0x00c8b640 as MS_LOCATIONS => s0_x=0, s0_y=0, s1_x=1, s1_y=3, s2_x=3, s2_y=1, s3_x=2, s3_y=6
 */
/*
 * TESTVEC: 0x00d94880 as MS_LOCATIONS => s0_x=0, s0_y=0, s1_x=2, s1_y=4, s2_x=4, s2_y=2, s3_x=6, s3_y=6
 */

/* ---- X graphics-context load (words 4, 6 and 7) ---- */

/* Word 4: the plane write mask, red and green 12-bit fields, in bits 23:0. The */
/* engine program passes it on under the bus mask 0xffffff, so bit 31 is not part */
/* of the mask. The X module sets bit 31 when the fill is an opaque stipple, or a */
/* tile held in the pipe, and clears it in the loads that mask the word to 24 bits. */
/* Established: the position, and the sender setting it for those two fills. */
/* Inferred: that it means "clear stipple bits paint the background colour". */
/* Unknown: whether the engine or the raster side reads it at all. */
/* FIELD: GC_LOAD_W4.plane_mask_rg 23:0 established */
#define WORD_GC_LOAD_W4_PLANE_MASK_RG_SHIFT 0
#define WORD_GC_LOAD_W4_PLANE_MASK_RG_MASK 0xffffffu
/* FIELD: GC_LOAD_W4.opaque_fill 31:31 established */
#define WORD_GC_LOAD_W4_OPAQUE_FILL_SHIFT 31
#define WORD_GC_LOAD_W4_OPAQUE_FILL_MASK 0x1u
#define WORD_GC_LOAD_W4_BUS_ENABLE 0xffffff /* established: the bus mask the load applies; bit 31 is outside it */

/* Word 6: the frame-buffer configuration the load programs into the raster bus. */
/* Only the colour format and the read format are written; the pixel size and the */
/* four write enables of the same register are not. */
/* FIELD: GC_LOAD_W6.colour_format 5:2 established */
#define WORD_GC_LOAD_W6_COLOUR_FORMAT_SHIFT 2
#define WORD_GC_LOAD_W6_COLOUR_FORMAT_MASK 0xfu
/* FIELD: GC_LOAD_W6.read_format 13:11 established */
#define WORD_GC_LOAD_W6_READ_FORMAT_SHIFT 11
#define WORD_GC_LOAD_W6_READ_FORMAT_MASK 0x7u
#define WORD_GC_LOAD_W6_BUS_ENABLE 0x383c /* established: the bus mask the load applies, exactly the two fields above */

/* Word 7: the operation word. Only the draw buffer, the read-back format and the */
/* read base are written. */
/* FIELD: GC_LOAD_W7.draw_buffer 3:0 established */
#define WORD_GC_LOAD_W7_DRAW_BUFFER_SHIFT 0
#define WORD_GC_LOAD_W7_DRAW_BUFFER_MASK 0xfu
/* FIELD: GC_LOAD_W7.readback_format 17:14 established */
#define WORD_GC_LOAD_W7_READBACK_FORMAT_SHIFT 14
#define WORD_GC_LOAD_W7_READBACK_FORMAT_MASK 0xfu
/* FIELD: GC_LOAD_W7.read_base 23:18 established */
#define WORD_GC_LOAD_W7_READ_BASE_SHIFT 18
#define WORD_GC_LOAD_W7_READ_BASE_MASK 0x3fu
#define WORD_GC_LOAD_W7_BUS_ENABLE 0xffc00f /* established: the bus mask the load applies, exactly the three fields above */

/* ---- engine command descriptors ---- */

/* Entry-shaped descriptor words the pipe firmware, and the diagnostic through the */
/* same ports, write to the descriptor port before a payload. Each is one value; */
/* the notes' table says what each does. */
#define WORD_DESC_ENGINE_REG_ADDRESS 0x46a00020 /* established: engine register address port (distributor register number 565) */
#define WORD_DESC_ENGINE_REG_DATA 0x46600020 /* established: engine register data port (distributor register number 563) */
#define WORD_DESC_ENGINE_TABLE_INDEX 0x46000020 /* established: set the engine handler table index */
#define WORD_DESC_ENGINE_TABLE_ENTRY 0x46200020 /* established: write one handler table entry and advance the index */
#define WORD_DESC_DISTRIBUTOR_PROGRAM 0x48200020 /* established: write one word of the 1024-word distributor program */
#define WORD_DESC_PRIMITIVE_CLASS_TABLE 0x42200020 /* established: load the 16-word primitive-class table */
#define WORD_DESC_ENTRY_TABLE 0x42600020 /* established: load the 512-word entry table */
#define WORD_DESC_DISTRIBUTOR_STEP 0x44200020 /* inferred: distributor step register on, at pipe set-up */
#define WORD_DESC_RASTER_BUS_WRITE 0x58404800 /* established: raster-bus register write, three payload words: bit mask, address word, value */
#define WORD_DESC_IMAGE_PROCESSOR_WRITE 0x584fc800 /* established: image-processor register write, same three words */

/* ---- fog parameter names ---- */

/* First payload word of the fog-parameter tokens (float and integer forms): the */
/* parameter being set. The values are the public enumerants of the fog */
/* parameters; the pipe accepts exactly these seven and raises invalid-enum for */
/* any other. */
#define WORD_FOG_PARAMETER_INDEX 0xb61 /* established */
#define WORD_FOG_PARAMETER_DENSITY 0xb62 /* established */
#define WORD_FOG_PARAMETER_START 0xb63 /* established */
#define WORD_FOG_PARAMETER_END 0xb64 /* established */
#define WORD_FOG_PARAMETER_MODE 0xb65 /* established */
#define WORD_FOG_PARAMETER_COLOUR 0xb66 /* established */
#define WORD_FOG_PARAMETER_OFFSET 0x8199 /* established */

/* ---- engine memory: light parameter blocks ---- */

/* The firmware keeps one engine-memory address per light: the first block is at */
/* 0x2c7 and each later block follows 0x23 words further on, eight lights in all */
/* (the last block at 0x3bc). The per-light handlers send the chosen entry to */
/* the engine's operand port as the address of the block. */
#define WORD_LIGHT_BLOCK_FIRST_ADDRESS 0x2c7 /* established */
#define WORD_LIGHT_BLOCK_WORDS 0x23 /* established */
#define WORD_LIGHT_BLOCK_COUNT 8 /* established */

/* ---- display-id range word ---- */

/* The diagnostic's single packed writer for the frame manager's display-id */
/* range register packs four arguments into one word. The fields are named by */
/* argument position because what each one counts is not settled: the only */
/* caller passes 64 in argument 1 and 32 in argument 3, the sizes of the normal */
/* and the overlay/underlay display-id tables (inferred from those two values); */
/* the other two fields are unread. */
/* FIELD: DISPLAY_ID_RANGE.arg1 6:0 established */
#define WORD_DISPLAY_ID_RANGE_ARG1_SHIFT 0
#define WORD_DISPLAY_ID_RANGE_ARG1_MASK 0x7fu
/* FIELD: DISPLAY_ID_RANGE.arg3 12:7 established */
#define WORD_DISPLAY_ID_RANGE_ARG3_SHIFT 7
#define WORD_DISPLAY_ID_RANGE_ARG3_MASK 0x3fu
/* FIELD: DISPLAY_ID_RANGE.arg0 18:13 established */
#define WORD_DISPLAY_ID_RANGE_ARG0_SHIFT 13
#define WORD_DISPLAY_ID_RANGE_ARG0_MASK 0x3fu
/* FIELD: DISPLAY_ID_RANGE.arg2 23:19 established */
#define WORD_DISPLAY_ID_RANGE_ARG2_SHIFT 19
#define WORD_DISPLAY_ID_RANGE_ARG2_MASK 0x1fu
/*
 * TESTVEC: 0x1040 as DISPLAY_ID_RANGE => arg1=64, arg3=32, arg0=0, arg2=0
 */

/* ---- window-copy load: word 6 values ---- */

/* Word 6 of the window-copy load takes one of two values, chosen by a flag in */
/* the loader's second argument: colour format 1 with read format 5 or 7. */
/*
 * TESTVEC: 0x2804 as GC_LOAD_W6 => colour_format=1, read_format=5
 * TESTVEC: 0x3804 as GC_LOAD_W6 => colour_format=1, read_format=7
 */

/* ---- texture-environment colour register images ---- */

/* The words the texture-environment routine loads for the environment colour: */
/* the shadow slot of the register in the high half (0x15e, 0x15f) and the */
/* register index in the low half (the two halves of the texture-environment */
/* constant colour). */
#define WORD_TEXENV_COLOUR_IMAGE 0x015e1402 /* established */
#define WORD_TEXENV_COLOUR1_IMAGE 0x015f1413 /* established */

#endif
