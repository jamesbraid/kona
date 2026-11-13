<!-- generated from devices/fm/registers.toml by defs-gen - do not edit, change the source -->

# frame-manager registers on the display bus

Frame-manager registers on the display bus: the swap strobe, the per-channel display ids and the board-level control words.

Unit `fm`, macro prefix `FM`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| fm_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `swap_strobe` | 0x80 | w | 32 |  | fm_regs | unknown | established |  |
| `voc_did` | 0x81 | w | 32 | 8 | fm_regs | unknown | established |  |
| `xwindow` | 0x8b | w | 32 |  | fm_regs | unknown | established |  |
| `did_range` | 0x8c | w | 32 |  | fm_regs | unknown | inferred |  |
| `did_status` | 0x8d | r | 32 |  | fm_regs | unknown | established |  |
| `clock_select` | 0x8e | w | 32 |  | fm_regs | unknown | established |  |
| `intr_state` | 0x8f | w | 32 |  | fm_regs | unknown | inferred |  |
| `raster_config` | 0x90 | rw | 32 |  | fm_regs | unknown | established |  |

### Register `swap_strobe`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `strobe` | established |  |  |  |

### Register `voc_did`

Array of 8 registers, stride 1.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `did` | established |  |  |  |

### Register `xwindow`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 22 | `reset_ratio` | established |  |  |  |
| 21:20 | `sync_source` | established |  |  |  |
| 19:10 | `x1_inv` | established |  |  |  |
| 9:0 | `x0_inv` | established |  |  |  |

### Register `did_range`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:19 | `arg_d` | unknown |  |  |  |
| 18:13 | `arg_c` | unknown |  |  |  |
| 12:7 | `size_b` | inferred |  |  |  |
| 6:0 | `size_a` | inferred |  |  |  |

### Register `did_status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3 | `shifting` | established |  |  |  |

### Register `clock_select`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23 | `internal` | established |  |  |  |
| 22:20 | `arg_22_20` | unknown |  |  |  |
| 19:10 | `y1_inv` | established |  |  |  |
| 9:0 | `y0_inv` | established |  |  |  |

### Register `intr_state`

### Register `raster_config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10:8 | `stuffing` | established |  |  |  |
| 7:5 | `boards` | established |  |  |  |
