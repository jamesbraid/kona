/*
 * KONA_XMAP_DECODE.h - XMAP registers and the words written through them
 *
 * The XMAP is the display chip that maps window ids to colour maps, gamma pages
 * and the cursor. The host reaches it through the display-bus address and data
 * ports; the address given on each REG line is the display-bus address of the
 * register, and every register is one 32-bit bus word. The direct registers
 * come first, in index order, followed by eight indirect-memory ports. An
 * access to a data port is preceded by a write of the memory address, channel
 * number or display id to the indirect address register; a load is closed by
 * the write order the notes give.
 *
 * Reading the header. Numbers that name a bus address appear only on REG lines.
 * Everywhere else the register is named, because the same hex digits are host
 * command-token numbers in KONA_TOKEN_DECODE.h and a bare number would not say
 * which it is. Counts, slot sizes and geometry are decimal.
 *
 * Derivation: the register roles, widths and grades are those of the back-end
 * definitions table (docs/command-table.md, sections 6.3 and 6.4, and the word
 * layouts of sections 7.1 to 7.5), which reads them from the shipped
 * window-system kernel module and display firmware and from the shipped
 * diagnostic's register tables. Register widths are the 32-bit bus word, not
 * the number of bits the chip stores: the stored width is in the field ranges
 * and the notes. A grade says how the layout was derived, not that silicon was
 * measured. scripts/kona_checks.py keeps this file and the table in step.
 */
#ifndef KONA_XMAP_DECODE_H
#define KONA_XMAP_DECODE_H

#include <stdint.h>


/* ---- direct registers ---- */

/* Cursor channel id; the kernel writes the owning channel (5 bits stored). */
/* REG: XMAP.cursor_channel 0x100 w32 reset=unknown established */
/* FIELD: XMAP.cursor_channel.channel 4:0 established */
#define XMAP_CURSOR_CHANNEL_CHANNEL_SHIFT 0
#define XMAP_CURSOR_CHANNEL_CHANNEL_MASK 0x1fu
/* Cursor image base: the address of the 260-word block (17 bits stored). */
/* REG: XMAP.cursor_base 0x101 w32 reset=unknown established */
/* FIELD: XMAP.cursor_base.base 16:0 established */
#define XMAP_CURSOR_BASE_BASE_SHIFT 0
#define XMAP_CURSOR_BASE_BASE_MASK 0x1ffffu
/* Cursor position (26 bits stored). x = pointer x - hot x - rectangle x1 + bias; */
/* y likewise. The bias lets the cursor sit partly off the top-left corner. */
/* REG: XMAP.cursor_pos 0x102 w32 reset=unknown established */
/* FIELD: XMAP.cursor_pos.x 12:0 established */
#define XMAP_CURSOR_POS_X_SHIFT 0
#define XMAP_CURSOR_POS_X_MASK 0x1fffu
/* FIELD: XMAP.cursor_pos.y 25:13 established */
#define XMAP_CURSOR_POS_Y_SHIFT 13
#define XMAP_CURSOR_POS_Y_MASK 0x1fffu
/* Cursor mode (9 bits stored); the written values are 0, 1 and 2. */
/* REG: XMAP.cursor_mode 0x103 w32 reset=unknown established */
/* FIELD: XMAP.cursor_mode.mode 8:0 established */
#define XMAP_CURSOR_MODE_MODE_SHIFT 0
#define XMAP_CURSOR_MODE_MODE_MASK 0x1ffu
/* ENUM: XMAP.cursor_mode.mode 0 off established */
#define XMAP_CURSOR_MODE_MODE_OFF 0
/* ENUM: XMAP.cursor_mode.mode 1 crosshair established */
#define XMAP_CURSOR_MODE_MODE_CROSSHAIR 1
/* ENUM: XMAP.cursor_mode.mode 2 glyph established */
#define XMAP_CURSOR_MODE_MODE_GLYPH 2
/* Copy-buffer strobe: written with bit 0 set after every group of writes. */
/* Bit 2 forces the cursor position (the diagnostic writes 4 after a position */
/* change); that bit is known by name match only. */
/* REG: XMAP.copy_strobe 0x104 w32 reset=unknown established */
/* FIELD: XMAP.copy_strobe.copy 0:0 established */
#define XMAP_COPY_STROBE_COPY_SHIFT 0
#define XMAP_COPY_STROBE_COPY_MASK 0x1u
/* FIELD: XMAP.copy_strobe.force_cursor_pos 2:2 inferred */
#define XMAP_COPY_STROBE_FORCE_CURSOR_POS_SHIFT 2
#define XMAP_COPY_STROBE_FORCE_CURSOR_POS_MASK 0x1u
/* Diagnostic substitute-colour enable; 0 is off. */
/* REG: XMAP.subst_enable 0x105 w32 reset=unknown inferred */
/* FIELD: XMAP.subst_enable.enable 0:0 inferred */
#define XMAP_SUBST_ENABLE_ENABLE_SHIFT 0
#define XMAP_SUBST_ENABLE_ENABLE_MASK 0x1u
/* Substitute colour, low word (32 bits). */
/* REG: XMAP.subst_low 0x106 w32 reset=unknown established */
/* Substitute colour, high bits, plus a 2-bit mode shifted left 10 (13 bits */
/* stored). Only the mode position is read; the low ten bits are the colour. */
/* REG: XMAP.subst_high 0x107 w32 reset=unknown established */
/* FIELD: XMAP.subst_high.colour_high 9:0 inferred */
#define XMAP_SUBST_HIGH_COLOUR_HIGH_SHIFT 0
#define XMAP_SUBST_HIGH_COLOUR_HIGH_MASK 0x3ffu
/* FIELD: XMAP.subst_high.mode 11:10 established */
#define XMAP_SUBST_HIGH_MODE_SHIFT 10
#define XMAP_SUBST_HIGH_MODE_MASK 0x3u
/* Read chip select: the XMAP number 0 to 3 before a read. The diagnostic's */
/* observe pins fit a chip-id compare, which is the inference. */
/* REG: XMAP.read_select 0x108 w32 reset=unknown inferred */
/* FIELD: XMAP.read_select.chip 1:0 inferred */
#define XMAP_READ_SELECT_CHIP_SHIFT 0
#define XMAP_READ_SELECT_CHIP_MASK 0x3u
/* Role not read: 0 at start-up, 2 after the diagnostic, and the */
/* window-created (1) / window-destroyed (0) notice. What would settle it: a */
/* reading of what the XMAP does with the value, which no shipped program shows. */
/* REG: XMAP.unread_09 0x109 w32 reset=unknown unknown */
/* Read by the diagnostic's CRC routines, which poll it for a done status. */
/* The use is established; the bit layout is unknown (it would be settled by */
/* the diagnostic's mask on the polled value, which was not found). */
/* REG: XMAP.crc_status 0x10a r32 reset=unknown unknown */
/* Raster-board count code (2 bits stored). */
/* REG: XMAP.board_count 0x10b w32 reset=unknown established */
/* FIELD: XMAP.board_count.code 1:0 established */
#define XMAP_BOARD_COUNT_CODE_SHIFT 0
#define XMAP_BOARD_COUNT_CODE_MASK 0x3u
/* ENUM: XMAP.board_count.code 0 one_board established */
#define XMAP_BOARD_COUNT_CODE_ONE_BOARD 0
/* ENUM: XMAP.board_count.code 1 two_boards established */
#define XMAP_BOARD_COUNT_CODE_TWO_BOARDS 1
/* ENUM: XMAP.board_count.code 2 four_boards established */
#define XMAP_BOARD_COUNT_CODE_FOUR_BOARDS 2
/* Display-id compare address (6 bits stored); start-up value 2. The name and */
/* width are established, the role is inferred. */
/* REG: XMAP.di_compare_addr 0x10c w32 reset=unknown inferred */
/* FIELD: XMAP.di_compare_addr.addr 5:0 inferred */
#define XMAP_DI_COMPARE_ADDR_ADDR_SHIFT 0
#define XMAP_DI_COMPARE_ADDR_ADDR_MASK 0x3fu
/* Image-processor pixel-stream delay (9 bits stored): 165 on board type 2, */
/* else 100. The name and width are established, the role is inferred. */
/* REG: XMAP.imp_delay 0x10d w32 reset=unknown inferred */
/* FIELD: XMAP.imp_delay.delay 8:0 inferred */
#define XMAP_IMP_DELAY_DELAY_SHIFT 0
#define XMAP_IMP_DELAY_DELAY_MASK 0x1ffu
/* Pipeline delay (3 bits stored): 6 on board type 2, else 3. The name and */
/* width are established, the role is inferred. */
/* REG: XMAP.pipe_delay 0x10e w32 reset=unknown inferred */
/* FIELD: XMAP.pipe_delay.delay 2:0 inferred */
#define XMAP_PIPE_DELAY_DELAY_SHIFT 0
#define XMAP_PIPE_DELAY_DELAY_MASK 0x7u
/* Fast-list configuration (10 bits stored): the low five bits are the chunk */
/* size and the upper bits are a fixed value; the layout is read from the */
/* firmware's chunk-size request. Start-up value 825 (chunk 25). */
/* REG: XMAP.fastlist_config 0x10f w32 reset=unknown inferred */
/* FIELD: XMAP.fastlist_config.chunk_size 4:0 inferred */
#define XMAP_FASTLIST_CONFIG_CHUNK_SIZE_SHIFT 0
#define XMAP_FASTLIST_CONFIG_CHUNK_SIZE_MASK 0x1fu
/* FIELD: XMAP.fastlist_config.fixed 9:5 inferred */
#define XMAP_FASTLIST_CONFIG_FIXED_SHIFT 5
#define XMAP_FASTLIST_CONFIG_FIXED_MASK 0x1fu
/* Written 0 at start-up and nothing else; role unknown. */
/* REG: XMAP.unread_10 0x110 w32 reset=unknown unknown */
/* Read-back address (19 bits stored, which fits the 17-bit cursor address */
/* plus select bits). */
/* REG: XMAP.readback_addr 0x111 w32 reset=unknown inferred */
/* FIELD: XMAP.readback_addr.addr 18:0 inferred */
#define XMAP_READBACK_ADDR_ADDR_SHIFT 0
#define XMAP_READBACK_ADDR_ADDR_MASK 0x7ffffu
/* Read-back data (32 bits). */
/* REG: XMAP.readback_data 0x112 r32 reset=unknown inferred */

/* ---- indirect-memory ports ---- */

/* Address for the data ports: a memory address with select bits, or a */
/* channel number, or a display id. The fields below are the gamma form, */
/* written before gamma data. */
/* REG: XMAP.ind_addr 0x118 w32 reset=unknown established */
/* FIELD: XMAP.ind_addr.entry 11:0 established */
#define XMAP_IND_ADDR_ENTRY_SHIFT 0
#define XMAP_IND_ADDR_ENTRY_MASK 0xfffu
/* FIELD: XMAP.ind_addr.colour 13:12 established */
#define XMAP_IND_ADDR_COLOUR_SHIFT 12
#define XMAP_IND_ADDR_COLOUR_MASK 0x3u
/* ENUM: XMAP.ind_addr.colour 0 red established */
#define XMAP_IND_ADDR_COLOUR_RED 0
/* ENUM: XMAP.ind_addr.colour 1 green established */
#define XMAP_IND_ADDR_COLOUR_GREEN 1
/* ENUM: XMAP.ind_addr.colour 2 blue established */
#define XMAP_IND_ADDR_COLOUR_BLUE 2
/* FIELD: XMAP.ind_addr.page 17:14 established */
#define XMAP_IND_ADDR_PAGE_SHIFT 14
#define XMAP_IND_ADDR_PAGE_MASK 0xfu
/* FIELD: XMAP.ind_addr.flag 18:18 unknown */
#define XMAP_IND_ADDR_FLAG_SHIFT 18
#define XMAP_IND_ADDR_FLAG_MASK 0x1u
/* Colour-map and cursor data; consecutive words go to consecutive */
/* addresses. Colour words are 10:10:10; the cursor colour words use the same */
/* layout. */
/* REG: XMAP.cmap_data 0x119 w32 reset=unknown established */
/* FIELD: XMAP.cmap_data.blue 9:0 established */
#define XMAP_CMAP_DATA_BLUE_SHIFT 0
#define XMAP_CMAP_DATA_BLUE_MASK 0x3ffu
/* FIELD: XMAP.cmap_data.green 19:10 established */
#define XMAP_CMAP_DATA_GREEN_SHIFT 10
#define XMAP_CMAP_DATA_GREEN_MASK 0x3ffu
/* FIELD: XMAP.cmap_data.red 29:20 established */
#define XMAP_CMAP_DATA_RED_SHIFT 20
#define XMAP_CMAP_DATA_RED_MASK 0x3ffu
/* Not used by any code read. */
/* REG: XMAP.unused_1a 0x11a w32 reset=unknown unknown */
/* Gamma data port: a 12-bit entry (the top 12 bits of the 16-bit client */
/* colour). */
/* REG: XMAP.gamma_data 0x11b w32 reset=unknown established */
/* FIELD: XMAP.gamma_data.entry 11:0 established */
#define XMAP_GAMMA_DATA_ENTRY_SHIFT 0
#define XMAP_GAMMA_DATA_ENTRY_MASK 0xfffu
/* Display-id table data; the id is in the indirect address register. Bit 0 */
/* is always 0. What the XMAP does with the luminance and grey bits is unknown. */
/* REG: XMAP.did_data 0x11c w32 reset=unknown established */
/* FIELD: XMAP.did_data.grey 1:1 established */
#define XMAP_DID_DATA_GREY_SHIFT 1
#define XMAP_DID_DATA_GREY_MASK 0x1u
/* FIELD: XMAP.did_data.luminance 2:2 established */
#define XMAP_DID_DATA_LUMINANCE_SHIFT 2
#define XMAP_DID_DATA_LUMINANCE_MASK 0x1u
/* FIELD: XMAP.did_data.planes_minus_1 6:3 established */
#define XMAP_DID_DATA_PLANES_MINUS_1_SHIFT 3
#define XMAP_DID_DATA_PLANES_MINUS_1_MASK 0xfu
/* FIELD: XMAP.did_data.cmap_base 23:7 established */
#define XMAP_DID_DATA_CMAP_BASE_SHIFT 7
#define XMAP_DID_DATA_CMAP_BASE_MASK 0x1ffffu
/* Channel set-up word; the channel number is in the indirect address */
/* register. The gamma page is stored from the gamma-map request (-2 there */
/* means no gamma). */
/* REG: XMAP.chan_setup 0x11d w32 reset=unknown established */
/* FIELD: XMAP.chan_setup.gamma_page 3:0 established */
#define XMAP_CHAN_SETUP_GAMMA_PAGE_SHIFT 0
#define XMAP_CHAN_SETUP_GAMMA_PAGE_MASK 0xfu
/* FIELD: XMAP.chan_setup.ext_gamma 4:4 established */
#define XMAP_CHAN_SETUP_EXT_GAMMA_SHIFT 4
#define XMAP_CHAN_SETUP_EXT_GAMMA_MASK 0x1u
/* FIELD: XMAP.chan_setup.no_gamma 5:5 established */
#define XMAP_CHAN_SETUP_NO_GAMMA_SHIFT 5
#define XMAP_CHAN_SETUP_NO_GAMMA_MASK 0x1u
/* FIELD: XMAP.chan_setup.alpha_to_blue 6:6 established */
#define XMAP_CHAN_SETUP_ALPHA_TO_BLUE_SHIFT 6
#define XMAP_CHAN_SETUP_ALPHA_TO_BLUE_MASK 0x1u
/* Written once after a load to close a table load; the data is not */
/* meaningful in any code read. */
/* REG: XMAP.table_close 0x11e w32 reset=unknown inferred */
/* Flush write, three times before a new address and three after the */
/* table-close write; pushes earlier entries through. The data is not */
/* meaningful in any code read. */
/* REG: XMAP.flush 0x11f w32 reset=unknown inferred */

/*
 * Constants. Counts, ids and geometry; all decimal.
 */
#define XMAP_CURSOR_SLOT_WORDS 260 /* established: words per cursor slot: 256 image words, 4 colour words */
#define XMAP_CURSOR_SLOTS 39 /* established: slot k is at address k x 260; 10140 words used */
#define XMAP_CURSOR_IMAGE_WORDS 256 /* established: 64 rows of four words */
#define XMAP_CURSOR_COLOUR_WORD 256 /* established: first colour word of a slot; four words, pixel values 3, 2, 1, 0 */
#define XMAP_CURSOR_POS_BIAS 32 /* inferred: added to each coordinate so the cursor can sit partly off the top-left corner */
#define XMAP_CURSOR_HOT_SPOT_CROSSHAIR 32 /* established: crosshair mode hot spot, both axes */
#define XMAP_CURSOR_CROSSHAIR_BLOCK 9884 /* established: address of the crosshair slot; its colour block follows at +256 */
#define XMAP_CURSOR_PRIORITY_NONE 32 /* established: cursor owner value meaning no owner; the smallest priority wins */
#define XMAP_GAMMA_ENTRIES_PER_PAGE 4096 /* established: per colour; each colour-map index fills two consecutive entries */
#define XMAP_GAMMA_PAGES 16 /* established */
#define XMAP_EXT_GAMMA_ENTRIES 1024 /* established */
#define XMAP_CMAP_LOAD_PIECE_WORDS 512 /* established: colour-map and cursor loads are sent in pieces of this many words */
#define XMAP_DID_ENTRIES 128 /* established: per-display-id mode table entries; the last doubles as the sequence-number push slot */
#define XMAP_TRAILING_FLUSH_WRITES 3 /* established: flush writes before the table-close write and again after it */
#define XMAP_EXT_GAMMA_MARKER 0xdeadfeed /* established: first word of an external gamma load, then the count 1024 */
#define XMAP_COUNT 4 /* established: XMAP chips selected by the read chip select */

/*
 * Test vectors: values the notes record for words in this header.
 *
 * TESTVEC: 0x00080050 as XMAP.did_data => grey=0, luminance=0, planes_minus_1=10, cmap_base=4096
 */
/*
 * TESTVEC: 0x00000339 as XMAP.fastlist_config => chunk_size=25, fixed=25
 */
/*
 * EXAMPLE (unverified): 0x00040000 as XMAP.ind_addr => entry=0, colour=0, page=0, flag=1
 */
/*
 * EXAMPLE (unverified): 0x00002001 as XMAP.cursor_pos => x=1, y=1
 */

#endif
