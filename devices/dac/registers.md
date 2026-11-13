<!-- generated from devices/dac/registers.toml by defs-gen - do not edit, change the source -->

# video DAC and encoder ports on the display bus

Video DAC and encoder ports of the display bus.

Unit `dac`, macro prefix `DAC`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `index` | 0xb00 | w | 8 |  |  | unknown | established |  |
| `cmap_data` | 0xb01 | w | 8 |  |  | unknown | inferred |  |
| `reg_data` | 0xb02 | rw | 8 |  |  | unknown | established |  |
| `mode` | 0xb03 | w | 8 |  |  | unknown | inferred |  |
| `enc_gain` | 0x1708 | w | 8 |  |  | unknown | established |  |
| `enc_ctrl_addr` | 0x1800 | w | 8 |  |  | unknown | established |  |
| `enc_cmap_addr` | 0x1801 | w | 8 |  |  | unknown | inferred |  |
| `enc_ctrl_data` | 0x1802 | rw | 8 |  |  | unknown | established |  |
| `enc_cmap_data` | 0x1803 | rw | 8 |  |  | unknown | inferred |  |

### Register `index`

### Register `cmap_data`

### Register `reg_data`

### Register `mode`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `strobe` | inferred |  |  |  |

### Register `enc_gain`

### Register `enc_ctrl_addr`

### Register `enc_cmap_addr`

### Register `enc_ctrl_data`

### Register `enc_cmap_data`
