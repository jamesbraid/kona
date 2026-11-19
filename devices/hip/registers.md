<!-- generated from devices/hip/registers.toml by defs-gen - do not edit, change the source -->
<!-- SPDX-License-Identifier: BSD-3-Clause -->
<!-- defs-gen 2 -->
<!-- input sha256 dcce6a52f9cfe35eb46b1d30b314bef85e1228becc0c56750a4ccf9b965e5a7d -->

# host-interface registers

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
| `armspace_arm_ctrl` | 0x0 | rw | 32 |  | arm | unknown | established |  |
| `armspace_idma_pnum` | 0x10 | rw | 32 |  | arm | unknown | established |  |
| `armspace_idma_poff` | 0x14 | rw | 32 |  | arm | unknown | established |  |
| `armspace_idma_ctrl` | 0x20 | rw | 32 |  | arm | unknown | established |  |
| `armspace_ldma_addr` | 0x30 | rw | 32 |  | arm | unknown | established |  |
| `armspace_ldma_ctrl` | 0x3c | rw | 32 |  | arm | unknown | established |  |
| `armspace_ldma_src` | 0x48 | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_ctrl` | 0x50 | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_divert_pc` | 0x54 | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_wc` | 0x5c | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_state` | 0x68 | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_error_pc` | 0x6c | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_loop_addr` | 0x70 | rw | 32 |  | arm | unknown | established |  |
| `armspace_icu_arrcnt` | 0x74 | rw | 32 |  | arm | unknown | established |  |
| `armspace_host_mbox` | 0x90 | rw | 32 |  | arm | unknown | established |  |
| `host_rtc` | 0x200 | r | 32 |  | hip_regs | unknown | established |  |
| `host_gfifo_level` | 0x208 | r | 32 |  | hip_regs | unknown | established |  |
| `host_gfifo_hi` | 0x210 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_gfifo_lo` | 0x218 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_intr_info` | 0x220 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_intr_ack` | 0x228 | w | 32 |  | hip_regs | unknown | established |  |
| `host_intr_enable` | 0x230 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_intr_status` | 0x238 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_arm_mbox` | 0x240 | r | 32 |  | hip_regs | unknown | established |  |
| `host_seqid` | 0x248 | r | 32 |  | hip_regs | unknown | established |  |
| `host_odma_flush` | 0x298 | w | 32 |  | hip_regs | unknown | established |  |
| `host_reset` | 0x300 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_arm_ctrl` | 0x308 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_arm_status` | 0x310 | r | 32 |  | hip_regs | unknown | established |  |
| `host_arm_stall` | 0x320 | w | 32 |  | hip_regs | unknown | established |  |
| `host_arm_unstall` | 0x328 | w | 32 |  | hip_regs | unknown | established |  |
| `host_tbus_status` | 0x3a8 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_tfifo_hi` | 0x3b0 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_vc_address` | 0x3c0 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_vc_ready` | 0x3c8 | r | 32 |  | hip_regs | unknown | inferred |  |
| `host_vc_data` | 0x3d0 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_vc_data_incr` | 0x3d8 | rw | 32 |  | hip_regs | unknown | inferred |  |
| `host_arm_address` | 0x3e8 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_arm_data` | 0x3f0 | rw | 32 |  | hip_regs | unknown | established |  |
| `host_arm_data_incr` | 0x3f8 | rw | 32 |  | hip_regs | unknown | inferred |  |
| `cmd_descriptor` | 0x400 | w | 32 |  | hip_regs | unknown | established |  |
| `cmd_operand` | 0x840 | w | 32 |  | hip_regs | unknown | established |  |
| `cmd_data` | 0x8c0 | w | 32 |  | hip_regs | unknown | established |  |
| `rbus_odma2_data` | 0x476 | w | 32 |  | rbus | unknown | established |  |
| `rbus_odma2_flush` | 0x477 | w | 32 |  | rbus | unknown | inferred |  |
| `widget_config` | 0x64 | r | 32 |  | xg | unknown | established |  |
| `widget_err_status` | 0x6c | rw | 32 |  | xg | unknown | established |  |

### Register `armspace_arm_ctrl`

formerly ha_arm_ctrl

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `value` | established |  |  |  |

### Register `armspace_idma_pnum`

formerly ha_idma_pnum

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28:0 | `page` | established |  |  |  |

### Register `armspace_idma_poff`

formerly ha_idma_poff

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:2 | `offset` | established |  |  |  |

### Register `armspace_idma_ctrl`

formerly ha_idma_ctrl

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `mode` | established |  |  |  |

### Register `armspace_ldma_addr`

formerly ha_ldma_addr

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:3 | `addr` | established |  |  |  |

### Register `armspace_ldma_ctrl`

formerly ha_ldma_ctrl

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `value` | established |  |  |  |

### Register `armspace_ldma_src`

formerly ha_ldma_src

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `value` | established |  |  |  |

### Register `armspace_icu_ctrl`

formerly ha_icu_ctrl

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `value` | established |  |  |  |

### Register `armspace_icu_divert_pc`

formerly ha_icu_divert_pc

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:2 | `vector` | established |  |  |  |

### Register `armspace_icu_wc`

formerly ha_icu_wc

### Register `armspace_icu_state`

formerly ha_icu_state

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `value` | established |  |  |  |

### Register `armspace_icu_error_pc`

formerly ha_icu_error_pc

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:2 | `vector` | established |  |  |  |

### Register `armspace_icu_loop_addr`

formerly ha_icu_loop_addr

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8:0 | `value` | established |  |  |  |

### Register `armspace_icu_arrcnt`

formerly ha_icu_arrcnt

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `count` | established |  |  |  |

### Register `armspace_host_mbox`

formerly ha_host_mbox

### Register `host_rtc`

formerly hh_rtc

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `count` | inferred |  |  |  |

### Register `host_gfifo_level`

formerly hh_gfifo_level

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10:1 | `level` | established |  |  |  |

### Register `host_gfifo_hi`

formerly hh_gfifo_hi

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10:1 | `threshold` | established |  |  |  |

### Register `host_gfifo_lo`

formerly hh_gfifo_lo

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 10:1 | `threshold` | established |  |  |  |

### Register `host_intr_info`

formerly hh_intr_info

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `global_enable` | established |  |  |  |
| 14:0 | `vector_cpu` | inferred |  |  |  |

### Register `host_intr_ack`

formerly hh_intr_ack

### Register `host_intr_enable`

formerly hh_intr_enable

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `mask` | established |  |  |  |

### Register `host_intr_status`

formerly hh_intr_status

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

### Register `host_arm_mbox`

formerly hh_arm_mbox

### Register `host_seqid`

formerly hh_seqid

### Register `host_odma_flush`

formerly hh_odma_flush

### Register `host_reset`

formerly hh_reset

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `arm_start` | inferred |  |  |  |
| 0 | `hip_reset` | established |  |  |  |

### Register `host_arm_ctrl`

formerly hh_arm_ctrl

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `host_access` | established |  |  |  |

### Register `host_arm_status`

formerly hh_arm_status

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:11 | `mode` | inferred |  |  |  |
| 10 | `nopc` | inferred |  |  |  |
| 9 | `abort` | inferred |  |  |  |
| 8 | `nbw` | inferred |  |  |  |
| 7 | `nrw` | inferred |  |  |  |
| 6 | `seq` | inferred |  |  |  |
| 5 | `mreq` | inferred |  |  |  |
| 4:2 | `ge_cnt` | inferred |  |  |  |
| 1 | `remap` | inferred |  |  |  |
| 0 | `stall` | inferred |  |  |  |

### Register `host_arm_stall`

formerly hh_arm_stall

### Register `host_arm_unstall`

formerly hh_arm_unstall

### Register `host_tbus_status`

formerly hh_tbus_status

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3 | `stall` | inferred |  |  |  |
| 2 | `active` | inferred |  |  |  |
| 1 | `load` | inferred |  |  |  |
| 0 | `draw` | inferred |  |  |  |

### Register `host_tfifo_hi`

formerly hh_tfifo_hi

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:0 | `threshold` | established |  |  |  |

### Register `host_vc_address`

formerly hh_vc_address

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:0 | `value` | established |  |  |  |

### Register `host_vc_ready`

formerly hh_vc_ready

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `ready` | inferred |  |  |  |

### Register `host_vc_data`

formerly hh_vc_data

### Register `host_vc_data_incr`

formerly hh_vc_data_incr

### Register `host_arm_address`

formerly hh_arm_address

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 27:2 | `word_address` | established |  |  |  |

### Register `host_arm_data`

formerly hh_arm_data

### Register `host_arm_data_incr`

formerly hh_arm_data_incr

### Register `cmd_descriptor`

### Register `cmd_operand`

### Register `cmd_data`

### Register `rbus_odma2_data`

### Register `rbus_odma2_flush`

### Register `widget_config`

Widget configuration word. The attach code reads the map RAM size code from it; the entry count is that code shifted left by 15, and code 0 means 8; formerly xg_config

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:6 | `mapram_type` | established |  |  |  |
| 5:3 | `mapram_size` | established |  |  |  |
| 2:0 | `subsystem` | established |  |  |  |

### Register `widget_err_status`

formerly xg_err_status

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 28 | `idma_response_bad_tnum` | established |  |  |  |
| 27 | `idma_response_size` | established |  |  |  |
| 26 | `odma_fifo_overflow` | established |  |  |  |
| 13 | `mapram_invalid` | established |  |  |  |
| 12 | `mapram_parity` | established |  |  |  |
| 9 | `response` | established |  |  |  |
| 8 | `read_req_timeout` | established |  |  |  |
