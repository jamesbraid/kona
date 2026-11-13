<!-- generated from devices/voc/registers.toml by defs-gen - do not edit, change the source -->

# video-output chip (VOC) registers

Video-output chip registers of channel id 0 on the display bus.

Unit `voc`, macro prefix `VOC`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| voc_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `status` | 0x200 | r | 32 |  | voc_regs | unknown | established |  |
| `control` | 0x201 | rw | 32 |  | voc_regs | unknown | established |  |
| `dbuf_request` | 0x202 | rw | 32 |  | voc_regs | unknown | established |  |
| `req_window` | 0x203 | rw | 32 |  | voc_regs | unknown | established |  |
| `req_origin` | 0x204 | rw | 32 |  | voc_regs | unknown | unknown |  |
| `req_size` | 0x205 | rw | 32 |  | voc_regs | unknown | unknown |  |
| `seq_control` | 0x206 | rw | 32 |  | voc_regs | unknown | established |  |
| `seq_initial` | 0x207 | rw | 32 |  | voc_regs | unknown | established |  |
| `genlock_vphase` | 0x208 | rw | 32 |  | voc_regs | unknown | established |  |
| `state_table` | 0x209 | rw | 32 |  | voc_regs | unknown | established |  |
| `line_type_a` | 0x20a | rw | 32 |  | voc_regs | unknown | established |  |
| `line_type_b` | 0x20b | rw | 32 |  | voc_regs | unknown | established |  |
| `edge_slot` | 0x20c | rw | 32 | 8 | voc_regs | unknown | established |  |
| `pixel_blank` | 0x214 | rw | 32 |  | voc_regs | unknown | established |  |
| `pfd_control` | 0x230 | rw | 32 |  | voc_regs | unknown | established |  |
| `seq_low` | 0x231 | rw | 32 |  | voc_regs | unknown | established |  |
| `seq_high` | 0x232 | rw | 32 |  | voc_regs | unknown | established |  |
| `pfd_diag` | 0x233 | rw | 32 |  | voc_regs | unknown | established |  |
| `frame_duration` | 0x234 | rw | 32 |  | voc_regs | unknown | established |  |
| `sync_detect_control` | 0x243 | rw | 32 |  | voc_regs | unknown | established |  |
| `req_control` | 0x244 | rw | 32 |  | voc_regs | unknown | established |  |
| `tiles_per_row` | 0x245 | rw | 32 |  | voc_regs | unknown | established |  |
| `line_start` | 0x247 | rw | 32 |  | voc_regs | unknown | established |  |
| `line_middle` | 0x248 | rw | 32 |  | voc_regs | unknown | established |  |
| `line_end` | 0x249 | rw | 32 |  | voc_regs | unknown | established |  |
| `pan` | 0x24a | rw | 32 |  | voc_regs | unknown | established |  |
| `z_request` | 0x24b | rw | 32 |  | voc_regs | unknown | established |  |
| `field_start0` | 0x250 | rw | 32 | 8 | voc_regs | unknown | inferred |  |
| `field_start1` | 0x258 | rw | 32 | 8 | voc_regs | unknown | inferred |  |
| `field_pattern` | 0x260 | rw | 32 | 8 | voc_regs | unknown | inferred |  |
| `pll_control` | 0x270 | rw | 32 |  | voc_regs | unknown | established |  |
| `pll_address` | 0x271 | rw | 32 |  | voc_regs | unknown | established |  |
| `pll_readback` | 0x272 | r | 32 |  | voc_regs | unknown | established |  |
| `pll_data` | 0x273 | rw | 32 |  | voc_regs | unknown | established |  |
| `genlock_hclock` | 0x281 | rw | 32 |  | voc_regs | unknown | established |  |
| `genlock_line_ratio` | 0x282 | rw | 32 |  | voc_regs | unknown | established |  |
| `hmask2` | 0x283 | rw | 32 |  | voc_regs | unknown | established |  |
| `backporch_clamp` | 0x284 | rw | 32 |  | voc_regs | unknown | established |  |
| `fifo_control` | 0x28a | rw | 32 |  | voc_regs | unknown | established |  |
| `fifo_pointer` | 0x28b | rw | 32 |  | voc_regs | unknown | established |  |
| `sac_control` | 0x28d | rw | 32 |  | voc_regs | unknown | established |  |
| `scaler_control` | 0x28f | rw | 32 |  | voc_regs | unknown | established |  |
| `x_coeff_max` | 0x290 | rw | 32 |  | voc_regs | unknown | established |  |
| `x_slope` | 0x291 | rw | 32 |  | voc_regs | unknown | established |  |
| `x_delta` | 0x292 | rw | 32 |  | voc_regs | unknown | established |  |
| `x_seg_start` | 0x293 | rw | 32 | 4 | voc_regs | unknown | established |  |
| `y_coeff_max` | 0x297 | rw | 32 |  | voc_regs | unknown | established |  |
| `y_slope` | 0x298 | rw | 32 |  | voc_regs | unknown | established |  |
| `y_delta` | 0x299 | rw | 32 |  | voc_regs | unknown | established |  |
| `y_seg_start` | 0x29a | rw | 32 | 4 | voc_regs | unknown | established |  |

### Register `status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 24 | `int_host` | established |  |  |  |
| 23 | `int_vdrc` | established |  |  |  |
| 22 | `int_ext_frame` | established |  |  |  |
| 21 | `int_ext_sync_detect` | established |  |  |  |
| 20 | `int_ext_sync_loss` | established |  |  |  |
| 19 | `int_fifo_under` | established |  |  |  |
| 18 | `int_fifo_over` | established |  |  |  |
| 17:16 | `fs_colour_field` | established |  |  |  |
| 13 | `vdrc_enable` | established |  |  |  |
| 12 | `xmapreg_load` | established |  |  |  |
| 11 | `impreg_load` | established |  |  |  |
| 10 | `stereo_out` | established |  |  |  |
| 9 | `line_start` | established |  |  |  |
| 8 | `video_active` | established |  |  |  |
| 7 | `frame_start` | established |  |  |  |
| 6 | `field` | established |  |  |  |
| 5 | `field_start` | established |  |  |  |
| 4 | `trisync` | established |  |  |  |
| 3 | `cblank` | established |  |  |  |
| 2 | `csync` | established |  |  |  |
| 1 | `vsync` | established |  |  |  |
| 0 | `hsync` | established |  |  |  |

### Register `control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:9 | `pixel_mux` | established | p4_4=0, p4_2=1, p4_1=2, p4_8=3, fs_4=4, fs_2=5, fs_1=6, fs_8=7 |  |  |
| 8 | `ie_host` | established |  |  |  |
| 7 | `ie_vdrc` | established |  |  |  |
| 6 | `ie_ext_frame` | established |  |  |  |
| 5 | `ie_ext_sync_detect` | established |  |  |  |
| 4 | `ie_ext_sync_loss` | established |  |  |  |
| 3 | `ie_fifo_under` | established |  |  |  |
| 2 | `ie_fifo_over` | established |  |  |  |
| 1:0 | `dbuf_mode` | established | immediate=0, copy_impreg_load=1, copy_swap=2, copy_frame=3 |  |  |

### Register `dbuf_request`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `enable` | established |  |  |  |

### Register `req_window`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14:5 | `width_groupxels_m1` | established |  |  |  |
| 4:0 | `channel` | established |  |  |  |

### Register `req_origin`

### Register `req_size`

### Register `seq_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:9 | `reset_rate` | established |  |  |  |
| 8:4 | `line_edge_select` | established |  |  |  |
| 3 | `clear_state_pointer` | established |  |  |  |
| 2:1 | `reset_source` | established | none=0, output_format_a=1, phase_detector=3 |  |  |
| 0 | `enable` | established |  |  |  |

### Register `seq_initial`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:19 | `vphase_count` | established |  |  |  |
| 18 | `tristate_vsync` | established |  |  |  |
| 17 | `tristate_hsync` | established |  |  |  |
| 16 | `tristate_csync` | established |  |  |  |
| 13:0 | `initial_levels` | established |  |  |  |

### Register `genlock_vphase`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29 | `hysteresis_enable` | established |  |  |  |
| 28:26 | `hysteresis_width` | established |  |  |  |
| 25:13 | `external_vphase` | established |  |  |  |
| 12:0 | `internal_vphase` | established |  |  |  |

### Register `state_table`

### Register `line_type_a`

### Register `line_type_b`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 30:18 | `length_m3` | established |  |  |  |
| 17:0 | `edge_mask_hi` | established |  |  |  |

### Register `edge_slot`

Array of 8 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 12:0 | `position` | established |  |  |  |

### Register `pixel_blank`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16 | `enable` | established |  |  |  |
| 15:8 | `last` | established |  |  |  |
| 7:0 | `first` | established |  |  |  |

### Register `pfd_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:26 | `line_count_hi` | established |  |  |  |
| 25:24 | `csync_source` | established | internal=0, external=1, output_format=2 |  |  |
| 23:16 | `line_count` | established |  |  |  |
| 15:5 | `precision` | established |  |  |  |
| 4 | `frame_select` | established |  |  |  |
| 3:2 | `clock_select` | established | host=0, host_div2=1, host_div4=2, fourth=3 |  |  |
| 1 | `flip` | established |  |  |  |
| 0 | `enable` | established |  |  |  |

### Register `seq_low`

### Register `seq_high`

### Register `pfd_diag`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:12 | `previous` | established |  |  |  |
| 11:0 | `duration` | established |  |  |  |

### Register `frame_duration`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:0 | `duration` | established |  |  |  |

### Register `sync_detect_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18 | `frame_ref_select` | established |  |  |  |
| 17:15 | `frames_on` | established |  |  |  |
| 14:12 | `frames_off` | established |  |  |  |
| 11:1 | `line_count` | established |  |  |  |
| 0 | `enable` | established |  |  |  |

### Register `req_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23 | `interlaced_cursor` | established |  |  |  |
| 22 | `arbiter_status` | established |  |  |  |
| 21:11 | `fifo_balance` | established |  |  |  |
| 10 | `transfer_z` | established |  |  |  |
| 9 | `transfer_alpha` | established |  |  |  |
| 8 | `transfer_size` | inferred |  |  |  |
| 7 | `dither` | established |  |  |  |
| 6:5 | `pixel_size` | established | small=0, medium=1, large=2, xlarge=3 |  |  |
| 4 | `request_done` | established |  |  |  |
| 3 | `ext_request` | established |  |  |  |
| 2 | `ext_request_enable` | established |  |  |  |
| 1 | `read_enable` | established |  |  |  |
| 0 | `enable` | established |  |  |  |

### Register `tiles_per_row`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4:0 | `tiles` | established |  |  |  |

### Register `line_start`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14 | `valid` | established |  |  |  |
| 13:3 | `groupxels_m1` | established |  |  |  |
| 2:0 | `tiles_m1` | established |  |  |  |

### Register `line_middle`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 22:15 | `repeat_count` | established |  |  |  |
| 14 | `valid` | established |  |  |  |
| 13:3 | `groupxels_m1` | established |  |  |  |
| 2:0 | `tiles_m1` | established |  |  |  |

### Register `line_end`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 14 | `valid` | established |  |  |  |
| 13:3 | `groupxels_m1` | established |  |  |  |
| 2:0 | `tiles_m1` | established |  |  |  |

### Register `pan`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:6 | `pixel_offset` | established |  |  |  |
| 5:0 | `groupxel_offset` | established |  |  |  |

### Register `z_request`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `enable` | established |  |  |  |
| 3:0 | `field_count` | established |  |  |  |

### Register `field_start0`

Array of 8 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:20 | `skip` | established |  |  |  |
| 19:7 | `first_tile` | established |  |  |  |
| 6:0 | `start_line` | established |  |  |  |

### Register `field_start1`

Array of 8 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:20 | `skip` | established |  |  |  |
| 19:7 | `first_tile` | established |  |  |  |
| 6:0 | `start_line` | established |  |  |  |

### Register `field_pattern`

Array of 8 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:24 | `next_cursor_offset` | established |  |  |  |
| 23:12 | `active_lines` | established |  |  |  |
| 11:10 | `colour3` | established |  |  |  |
| 9 | `eye3` | established |  |  |  |
| 8:7 | `colour2` | established |  |  |  |
| 6 | `eye2` | established |  |  |  |
| 5:4 | `colour1` | established |  |  |  |
| 3 | `eye1` | established |  |  |  |
| 2:1 | `colour0` | established |  |  |  |
| 0 | `eye0` | established |  |  |  |

### Register `pll_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `exec_write_external` | established |  |  |  |
| 3 | `exec_write_internal` | established |  |  |  |
| 2 | `exec_read` | established |  |  |  |
| 1 | `auto_update` | established |  |  |  |
| 0 | `ready` | established |  |  |  |

### Register `pll_address`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:0 | `address` | established |  |  |  |

### Register `pll_readback`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10:0 | `value` | established |  |  |  |

### Register `pll_data`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10:0 | `value` | established |  |  |  |

### Register `genlock_hclock`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:2 | `h_divider` | established |  |  |  |
| 1 | `auto_clock` | established |  |  |  |
| 0 | `source` | established | external=0, internal=1 |  |  |

### Register `genlock_line_ratio`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:14 | `divider` | established |  |  |  |
| 13:1 | `line_length` | established |  |  |  |
| 0 | `edge` | established | falling=0, rising=1 |  |  |

### Register `hmask2`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:13 | `width` | established |  |  |  |
| 12:0 | `start` | established |  |  |  |

### Register `backporch_clamp`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:14 | `width` | established |  |  |  |
| 13:1 | `delay` | established |  |  |  |
| 0 | `edge` | established |  |  |  |

### Register `fifo_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `int_source_odd` | established |  |  |  |
| 14 | `ext_control_enable` | established |  |  |  |
| 13 | `field_reset_enable` | established |  |  |  |
| 12 | `frame_reset_enable` | established |  |  |  |
| 11:0 | `high_water` | established |  |  |  |

### Register `fifo_pointer`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:11 | `read_ptr` | established |  |  |  |
| 10:0 | `write_ptr` | established |  |  |  |

### Register `sac_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `output_enable` | established |  |  |  |
| 0 | `input_enable` | established |  |  |  |

### Register `scaler_control`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 20:19 | `first_field_inhibit` | established |  |  |  |
| 18:15 | `vminify_kick` | established |  |  |  |
| 14 | `enc_stereo_mode` | established |  |  |  |
| 13:12 | `enc_frame_mode` | established | no_drop=0, field_drop=1, frame_drop=2, low_latency=3 |  |  |
| 11 | `fifo_read_clock` | established |  |  |  |
| 10 | `enc_fb_write_clock_enable` | established |  |  |  |
| 9 | `enc_field_dominance` | established |  |  |  |
| 8 | `field_out_select` | established |  |  |  |
| 7 | `interlace` | established |  |  |  |
| 6:5 | `seg_preload` | established |  |  |  |
| 4 | `x_magnify_start_pair` | established |  |  |  |
| 3:2 | `y_filter` | established |  |  |  |
| 1:0 | `x_filter` | established | none=0, minify=1, magnify=2 |  |  |

### Register `x_coeff_max`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:0 | `value` | established |  |  |  |

### Register `x_slope`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 20:0 | `value` | established |  |  |  |

### Register `x_delta`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:0 | `value` | established |  |  |  |

### Register `x_seg_start`

Array of 4 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:0 | `value` | established |  |  |  |

### Register `y_coeff_max`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 19:0 | `value` | established |  |  |  |

### Register `y_slope`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 20:0 | `value` | established |  |  |  |

### Register `y_delta`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:0 | `value` | established |  |  |  |

### Register `y_seg_start`

Array of 4 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:0 | `value` | established |  |  |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `BASE_ADDRESS` | 0x200 | established |  | bus address of register 0 of channel id 0 |
| `BASE_IDS` | 0x8 | established |  | channel ids on the base board |
| `EDGE_SLOTS` | 0x8 | established |  | edge slots of the selected signal |
| `EDGE_SLOT_UNUSED` | 0x1fff | established |  | edge position meaning the slot is unused |
| `GROUPXEL_PIXELS` | 0x4 | established |  | pixels in a groupxel |
| `ID_STRIDE` | 0x100 | established |  | bus-address step per channel id |
| `PAN_GROUPXELS` | 0xa0 | established |  | pan wraps every 160 pixels |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `pan` | 0xc3 | example | groupxel_offset=3, pixel_offset=3 |
