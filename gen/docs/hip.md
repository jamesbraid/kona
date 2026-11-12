# host-interface registers

<!-- generated from defs/hip.toml by defs-gen - do not edit, change the source -->

Host-interface chip registers: the interrupt status register and its cause bits.

Unit `hip`, macro prefix `HIP`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| arm | byte |  |
| rbus | register index |  |
| xg | byte |  |
| hip_regs | byte |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `ha_arm_ctrl` | 0x0 | rw | 32 |  | arm | unknown | established |  |
| `ha_idma_pnum` | 0x10 | rw | 32 |  | arm | unknown | established |  |
| `ha_idma_poff` | 0x14 | rw | 32 |  | arm | unknown | established |  |
| `ha_idma_ctrl` | 0x20 | rw | 32 |  | arm | unknown | established |  |
| `ha_ldma_addr` | 0x30 | rw | 32 |  | arm | unknown | established |  |
| `ha_ldma_ctrl` | 0x3c | rw | 32 |  | arm | unknown | established |  |
| `ha_ldma_src` | 0x48 | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_ctrl` | 0x50 | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_divert_pc` | 0x54 | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_wc` | 0x5c | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_state` | 0x68 | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_error_pc` | 0x6c | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_loop_addr` | 0x70 | rw | 32 |  | arm | unknown | established |  |
| `ha_icu_arrcnt` | 0x74 | rw | 32 |  | arm | unknown | established |  |
| `ha_host_mbox` | 0x90 | rw | 32 |  | arm | unknown | established |  |
| `hh_intr_status` | 0x238 | rw | 32 |  | hip_regs | unknown | established |  |
| `hh_arm_mbox` | 0x240 | r | 32 |  | hip_regs | unknown | established |  |
| `hh_arm_ctrl` | 0x308 | rw | 32 |  | hip_regs | unknown | established |  |
| `hh_vc_address` | 0x3c0 | rw | 32 |  | hip_regs | unknown | established |  |
| `hh_vc_ready` | 0x3c8 | r | 32 |  | hip_regs | unknown | inferred |  |
| `hh_vc_data` | 0x3d0 | rw | 32 |  | hip_regs | unknown | established |  |
| `hh_vc_data_incr` | 0x3d8 | rw | 32 |  | hip_regs | unknown | inferred |  |
| `hh_arm_address` | 0x3e8 | rw | 32 |  | hip_regs | unknown | established |  |
| `hh_arm_data` | 0x3f0 | rw | 32 |  | hip_regs | unknown | established |  |
| `hh_arm_data_incr` | 0x3f8 | rw | 32 |  | hip_regs | unknown | inferred |  |
| `cmd_descriptor` | 0x400 | w | 32 |  | hip_regs | unknown | established |  |
| `cmd_operand` | 0x840 | w | 32 |  | hip_regs | unknown | established |  |
| `cmd_data` | 0x8c0 | w | 32 |  | hip_regs | unknown | established |  |
| `rbus_odma2_data` | 0x476 | w | 32 |  | rbus | unknown | established |  |
| `rbus_odma2_flush` | 0x477 | w | 32 |  | rbus | unknown | inferred |  |
| `xg_err_status` | 0x6c | rw | 32 |  | xg | unknown | established |  |

### Register `ha_arm_ctrl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `value` | established |  |  |  |

### Register `ha_idma_pnum`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28:0 | `page` | established |  |  |  |

### Register `ha_idma_poff`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:2 | `offset` | established |  |  |  |

### Register `ha_idma_ctrl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `mode` | established |  |  |  |

### Register `ha_ldma_addr`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:3 | `addr` | established |  |  |  |

### Register `ha_ldma_ctrl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `value` | established |  |  |  |

### Register `ha_ldma_src`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `value` | established |  |  |  |

### Register `ha_icu_ctrl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `value` | established |  |  |  |

### Register `ha_icu_divert_pc`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:2 | `vector` | established |  |  |  |

### Register `ha_icu_wc`

### Register `ha_icu_state`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `value` | established |  |  |  |

### Register `ha_icu_error_pc`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:2 | `vector` | established |  |  |  |

### Register `ha_icu_loop_addr`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8:0 | `value` | established |  |  |  |

### Register `ha_icu_arrcnt`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `count` | established |  |  |  |

### Register `ha_host_mbox`

### Register `hh_intr_status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11 | `idma_ov` | established |  |  |  |
| 10 | `pio_ov` | established |  |  |  |
| 9 | `voc` | established |  |  |  |
| 8 | `parity` | established |  |  |  |
| 7 | `unused` | established |  |  |  |
| 6 | `odma` | established |  |  |  |
| 5 | `ge` | established |  |  |  |
| 4 | `arm` | established |  |  |  |
| 3 | `video` | established |  |  |  |
| 2 | `fifo_ov` | established |  |  |  |
| 1 | `fifo_lo` | established |  |  |  |
| 0 | `fifo_hi` | established |  |  |  |

### Register `hh_arm_mbox`

### Register `hh_arm_ctrl`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `host_access` | established |  |  |  |

### Register `hh_vc_address`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `value` | established |  |  |  |

### Register `hh_vc_ready`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `ready` | inferred |  |  |  |

### Register `hh_vc_data`

### Register `hh_vc_data_incr`

### Register `hh_arm_address`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:2 | `word_address` | established |  |  |  |

### Register `hh_arm_data`

### Register `hh_arm_data_incr`

### Register `cmd_descriptor`

### Register `cmd_operand`

### Register `cmd_data`

### Register `rbus_odma2_data`

### Register `rbus_odma2_flush`

### Register `xg_err_status`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28 | `idma_response_bad_tnum` | established |  |  |  |
| 27 | `idma_response_size` | established |  |  |  |
| 26 | `odma_fifo_overflow` | established |  |  |  |
| 13 | `mapram_invalid` | established |  |  |  |
| 12 | `mapram_parity` | established |  |  |  |
| 9 | `response` | established |  |  |  |
| 8 | `read_req_timeout` | established |  |  |  |
