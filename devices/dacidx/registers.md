<!-- generated from devices/dacidx/registers.toml by defs-gen - do not edit, change the source -->

# video DAC and encoder indexed registers

Indexed registers behind the video DAC and encoder ports, and the DAC cursor control word.

Unit `dacidx`, macro prefix `DACIDX`.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `COMMAND_1` | 32 | inferred |  |
| `COMMAND_2` | 32 | inferred |  |
| `CURSOR_CONTROL` | 32 | established |  |

### Word `COMMAND_1`

Command register 1 (index 0x005 above), 8 bits. Start-up value 0x88: bits 7:6 = 2
(24-bit bypass colour), bit 3 = 1 (exposes the address register's high byte,
which the 0x200, 0x300 and 0x400 index spaces need), bits 5:4 = 0 (palette
select function), bit 0 = 0 (no per-sync calibration). The decode of the value
against the published description is established; the grade here is inferred
because the part's identity is: no shipped code reads the part's ID register
to confirm it.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:6 | `bypass_colour` | inferred |  |  |  |
| 5:4 | `palette_select` | inferred |  |  |  |
| 3 | `addr_high` | inferred |  |  |  |
| 0 | `calibrate` | inferred |  |  |  |

### Word `COMMAND_2`

Command register 2 (index 0x006 above), 8 bits. Start-up value 0xe4: bits 7:4 =
14 (24-bit true colour), bit 3 = 0 (no pedestal), bit 2 = 1 (sync on green).
The same start-up routine zeroes indexes 0x007, 0x008, 0x009 and 0x00d, which
leaves pixel multiplexing at 1:1 and the PLL off. Graded inferred for the same
reason as command register 1; only a read of the ID register on a real board
settles the part.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7:4 | `colour_mode` | inferred |  |  |  |
| 3 | `pedestal` | inferred |  |  |  |
| 2 | `sync_on_green` | inferred |  |  |  |

### Word `CURSOR_CONTROL`

Cursor control (index 0x204 above). The kernel writes 5 (X11 mode, enabled) for
the channel that owns the cursor and 0 for the rest; start-up value 0. Bits
7:4 are zero.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3 | `interlace` | established |  |  |  |
| 2 | `enable` | established |  |  |  |
| 1:0 | `mode` | established | x11=1, xga=2 |  |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `CURSOR_COLOUR_2` | 0x304 | established |  | the diagnostic names this one: it belongs to colour 2 |
| `CURSOR_COLOUR_BASE` | 0x303 | inferred |  | six 10-bit colour values stream from here; the assignment of the six to colours is inferred |
| `CURSOR_CONTROL` | 0x204 | established |  | layout below |
| `CURSOR_IMAGE_RAM` | 0x400 | established |  | image RAM select; 256 words streamed low byte first |
| `CURSOR_X_HIGH` | 0x201 | established |  | cursor x, high byte |
| `CURSOR_X_LOW` | 0x200 | established |  | cursor x, low byte; scaled to the channel output size |
| `CURSOR_Y_HIGH` | 0x203 | established |  | cursor y, high byte |
| `CURSOR_Y_LOW` | 0x202 | established |  | cursor y, low byte |
| `ENCIDX_ACTIVE` | 0x15 | established |  |  |
| `ENCIDX_ACTIVE_END` | 0x17 | established |  |  |
| `ENCIDX_ACTIVE_START` | 0x16 | established |  |  |
| `ENCIDX_BREEZEWAY` | 0x11 | established |  |  |
| `ENCIDX_BURST_LENGTH` | 0x12 | established |  |  |
| `ENCIDX_BURST_PHASE_LSB` | 0x26 | established |  |  |
| `ENCIDX_BURST_PHASE_MSB` | 0x27 | established |  |  |
| `ENCIDX_COLOUR_BACK_PORCH` | 0x13 | established |  |  |
| `ENCIDX_COLOUR_BAR_LENGTH` | 0x1e | established |  |  |
| `ENCIDX_EQUALIZE_HIGH` | 0x1b | established |  |  |
| `ENCIDX_EQUALIZE_LOW` | 0x1a | established |  |  |
| `ENCIDX_EXT_COLOUR_BACK_PORCH` | 0x14 | established |  |  |
| `ENCIDX_FORMAT_CONTROL` | 0x1 | established |  | 7 bits |
| `ENCIDX_FRONT_PORCH` | 0x19 | established |  |  |
| `ENCIDX_GLOBAL_CONTROL` | 0x0 | established |  | 5 bits |
| `ENCIDX_HSYNC_TIP` | 0x10 | established |  |  |
| `ENCIDX_INTERFACE_CONTROL` | 0x2 | established |  |  |
| `ENCIDX_KEY_CONTROL` | 0x4 | established |  |  |
| `ENCIDX_KEY_D` | 0x5 | established |  |  |
| `ENCIDX_KEY_E` | 0x6 | established |  |  |
| `ENCIDX_KEY_F` | 0x7 | established |  |  |
| `ENCIDX_SUBCARRIER_FREQ_BYTE1` | 0x23 | established |  | frequency byte 1 (least significant) |
| `ENCIDX_SUBCARRIER_FREQ_BYTE2` | 0x22 | established |  |  |
| `ENCIDX_SUBCARRIER_FREQ_BYTE3` | 0x21 | established |  |  |
| `ENCIDX_SUBCARRIER_FREQ_BYTE4` | 0x20 | established |  | frequency byte 4 (most significant) |
| `ENCIDX_VIDEO_PHASE_LSB` | 0x24 | established |  |  |
| `ENCIDX_VIDEO_PHASE_MSB` | 0x25 | established |  |  |
| `ENCIDX_VSYNC_HIGH` | 0x1d | established |  |  |
| `ENCIDX_VSYNC_LOW` | 0x1c | established |  |  |
| `PIXEL_MASK` | 0x4 | inferred |  | 8 bits per the published description (the diagnostic's table mask is 0x3ff but its read-back compares 8 bits); start-up 0xff |
| `START_UP_A` | 0x5 | inferred |  | command register 1 of the part the DAC matches; start-up value 0x88, layout below |
| `START_UP_B` | 0x6 | inferred |  | command register 2 of the part the DAC matches; start-up value 0xe4, layout below |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `COMMAND_1` | 0x88 | vector | calibrate=0, addr_high=1, palette_select=0, bypass_colour=2 |
| `COMMAND_2` | 0xe4 | vector | sync_on_green=1, pedestal=0, colour_mode=14 |
| `CURSOR_CONTROL` | 0x5 | vector | mode=1, enable=1, interlace=0 |
