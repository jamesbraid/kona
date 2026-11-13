<!-- generated from devices/xmap/registers.toml by defs-gen - do not edit, change the source -->

# XMAP registers and the words written through them

XMAP direct registers, indirect-memory ports and the words written through them.

Unit `xmap`, macro prefix `XMAP`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| xmap_regs | register index |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `cursor_channel` | 0x100 | w | 32 |  | xmap_regs | unknown | established |  |
| `cursor_base` | 0x101 | w | 32 |  | xmap_regs | unknown | established |  |
| `cursor_pos` | 0x102 | w | 32 |  | xmap_regs | unknown | established |  |
| `cursor_mode` | 0x103 | w | 32 |  | xmap_regs | unknown | established |  |
| `copy_strobe` | 0x104 | w | 32 |  | xmap_regs | unknown | established |  |
| `subst_enable` | 0x105 | w | 32 |  | xmap_regs | unknown | inferred |  |
| `subst_low` | 0x106 | w | 32 |  | xmap_regs | unknown | established |  |
| `subst_high` | 0x107 | w | 32 |  | xmap_regs | unknown | established |  |
| `read_select` | 0x108 | w | 32 |  | xmap_regs | unknown | inferred |  |
| `unread_09` | 0x109 | w | 32 |  | xmap_regs | unknown | unknown |  |
| `crc_status` | 0x10a | r | 32 |  | xmap_regs | unknown | unknown |  |
| `board_count` | 0x10b | w | 32 |  | xmap_regs | unknown | established |  |
| `di_compare_addr` | 0x10c | w | 32 |  | xmap_regs | unknown | inferred |  |
| `imp_delay` | 0x10d | w | 32 |  | xmap_regs | unknown | inferred |  |
| `pipe_delay` | 0x10e | w | 32 |  | xmap_regs | unknown | inferred |  |
| `fastlist_config` | 0x10f | w | 32 |  | xmap_regs | unknown | inferred |  |
| `unread_10` | 0x110 | w | 32 |  | xmap_regs | unknown | unknown |  |
| `readback_addr` | 0x111 | w | 32 |  | xmap_regs | unknown | inferred |  |
| `readback_data` | 0x112 | r | 32 |  | xmap_regs | unknown | inferred |  |
| `ind_addr` | 0x118 | w | 32 |  | xmap_regs | unknown | established |  |
| `cmap_data` | 0x119 | w | 32 |  | xmap_regs | unknown | established |  |
| `unused_1a` | 0x11a | w | 32 |  | xmap_regs | unknown | unknown |  |
| `gamma_data` | 0x11b | w | 32 |  | xmap_regs | unknown | established |  |
| `did_data` | 0x11c | w | 32 |  | xmap_regs | unknown | established |  |
| `chan_setup` | 0x11d | w | 32 |  | xmap_regs | unknown | established |  |
| `table_close` | 0x11e | w | 32 |  | xmap_regs | unknown | inferred |  |
| `flush` | 0x11f | w | 32 |  | xmap_regs | unknown | inferred |  |

### Register `cursor_channel`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4:0 | `channel` | established |  |  |  |

### Register `cursor_base`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 16:0 | `base` | established |  |  |  |

### Register `cursor_pos`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 25:13 | `y` | established |  |  |  |
| 12:0 | `x` | established |  |  |  |

### Register `cursor_mode`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8:0 | `mode` | established | off=0, crosshair=1, glyph=2 |  |  |

### Register `copy_strobe`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2 | `force_cursor_pos` | inferred |  |  |  |
| 0 | `copy` | established |  |  |  |

### Register `subst_enable`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 0 | `enable` | inferred |  |  |  |

### Register `subst_low`

### Register `subst_high`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:10 | `mode` | established |  |  |  |
| 9:0 | `colour_high` | inferred |  |  |  |

### Register `read_select`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `chip` | inferred |  |  |  |

### Register `unread_09`

### Register `crc_status`

### Register `board_count`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1:0 | `code` | established | one_board=0, two_boards=1, four_boards=2 |  |  |

### Register `di_compare_addr`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `addr` | inferred |  |  |  |

### Register `imp_delay`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8:0 | `delay` | inferred |  |  |  |

### Register `pipe_delay`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2:0 | `delay` | inferred |  |  |  |

### Register `fastlist_config`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9:5 | `fixed` | inferred |  |  |  |
| 4:0 | `chunk_size` | inferred |  |  |  |

### Register `unread_10`

### Register `readback_addr`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18:0 | `addr` | inferred |  |  |  |

### Register `readback_data`

### Register `ind_addr`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 18 | `flag` | unknown |  |  |  |
| 17:14 | `page` | established |  |  |  |
| 13:12 | `colour` | established | red=0, green=1, blue=2 |  |  |
| 11:0 | `entry` | established |  |  |  |

### Register `cmap_data`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:20 | `red` | established |  |  |  |
| 19:10 | `green` | established |  |  |  |
| 9:0 | `blue` | established |  |  |  |

### Register `unused_1a`

### Register `gamma_data`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `entry` | established |  |  |  |

### Register `did_data`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 23:7 | `cmap_base` | established |  |  |  |
| 6:3 | `planes_minus_1` | established |  |  |  |
| 2 | `luminance` | established |  |  |  |
| 1 | `grey` | established |  |  |  |

### Register `chan_setup`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 6 | `alpha_to_blue` | established |  |  |  |
| 5 | `no_gamma` | established |  |  |  |
| 4 | `ext_gamma` | established |  |  |  |
| 3:0 | `gamma_page` | established |  |  |  |

### Register `table_close`

### Register `flush`

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CMAP_LOAD_PIECE_WORDS` | 0x200 | established |  | colour-map and cursor loads are sent in pieces of this many words |
| `COUNT` | 0x4 | established |  | XMAP chips selected by the read chip select |
| `CURSOR_COLOUR_WORD` | 0x100 | established |  | first colour word of a slot; four words, pixel values 3, 2, 1, 0 |
| `CURSOR_CROSSHAIR_BLOCK` | 0x269c | established |  | address of the crosshair slot; its colour block follows at +256 |
| `CURSOR_HOT_SPOT_CROSSHAIR` | 0x20 | established |  | crosshair mode hot spot, both axes |
| `CURSOR_IMAGE_WORDS` | 0x100 | established |  | 64 rows of four words |
| `CURSOR_POS_BIAS` | 0x20 | inferred |  | added to each coordinate so the cursor can sit partly off the top-left corner |
| `CURSOR_PRIORITY_NONE` | 0x20 | established |  | cursor owner value meaning no owner; the smallest priority wins |
| `CURSOR_SLOTS` | 0x27 | established |  | slot k is at address k x 260; 10140 words used |
| `CURSOR_SLOT_WORDS` | 0x104 | established |  | words per cursor slot: 256 image words, 4 colour words |
| `DID_ENTRIES` | 0x80 | established |  | per-display-id mode table entries; the last doubles as the sequence-number push slot |
| `EXT_GAMMA_ENTRIES` | 0x400 | established |  |  |
| `EXT_GAMMA_MARKER` | 0xdeadfeed | established |  | first word of an external gamma load, then the count 1024 |
| `GAMMA_ENTRIES_PER_PAGE` | 0x1000 | established |  | per colour; each colour-map index fills two consecutive entries |
| `GAMMA_PAGES` | 0x10 | established |  |  |
| `TRAILING_FLUSH_WRITES` | 0x3 | established |  | flush writes before the table-close write and again after it |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `cursor_pos` | 0x2001 | example | x=1, y=1 |
| `fastlist_config` | 0x339 | vector | chunk_size=25, fixed=25 |
| `ind_addr` | 0x40000 | example | entry=0, colour=0, page=0, flag=1 |
| `did_data` | 0x80050 | vector | grey=0, luminance=0, planes_minus_1=10, cmap_base=4096 |
