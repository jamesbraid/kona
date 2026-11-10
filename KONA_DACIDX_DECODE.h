/*
 * KONA_DACIDX_DECODE.h - video DAC and encoder indexed registers
 *
 * Index values of the registers behind the video DAC's index port and the video
 * encoder's control index port (the ports are in KONA_DAC_DECODE.h), and the
 * words the cursor load request carries. The values are indexes, not bus
 * addresses, so they are plain defines here.
 *
 * Derivation: the index lists and cursor-load layout are those of the back-end
 * definitions table (docs/command-table.md, section 6.6). The DAC cursor-control
 * bit meanings are established from the published description of the part the
 * DAC matches; that the part is that DAC is inferred from the scan-chain names
 * and a matching register map. The encoder's index list and widths are read
 * from the diagnostic's table; a value's effect is inferred from its name.
 * scripts/kona_checks.py keeps this file and the table in step.
 */
#ifndef KONA_DACIDX_DECODE_H
#define KONA_DACIDX_DECODE_H

#include <stdint.h>

/* DAC indexed registers (16-bit index). */

#define DACIDX_PIXEL_MASK 0x004 /* inferred: 8 bits per the published description (the diagnostic's table mask is 0x3ff but its read-back compares 8 bits); start-up 0xff */
#define DACIDX_START_UP_A 0x005 /* unknown: written 0x88 at start-up; role unknown */
#define DACIDX_START_UP_B 0x006 /* unknown: written 0xe4 at start-up; role unknown */
#define DACIDX_CURSOR_X_LOW 0x200 /* established: cursor x, low byte; scaled to the channel output size */
#define DACIDX_CURSOR_X_HIGH 0x201 /* established: cursor x, high byte */
#define DACIDX_CURSOR_Y_LOW 0x202 /* established: cursor y, low byte */
#define DACIDX_CURSOR_Y_HIGH 0x203 /* established: cursor y, high byte */
#define DACIDX_CURSOR_CONTROL 0x204 /* established: layout below */
#define DACIDX_CURSOR_COLOUR_BASE 0x303 /* inferred: six 10-bit colour values stream from here; the assignment of the six to colours is inferred */
#define DACIDX_CURSOR_COLOUR_2 0x304 /* established: the diagnostic names this one: it belongs to colour 2 */
#define DACIDX_CURSOR_IMAGE_RAM 0x400 /* established: image RAM select; 256 words streamed low byte first */

/*
 * Cursor control (index 0x204 above). The kernel writes 5 (X11 mode, enabled) for
 * the channel that owns the cursor and 0 for the rest; start-up value 0. Bits
 * 7:4 are zero.
 */
/* FIELD: CURSOR_CONTROL.mode 1:0 established */
#define DACIDX_CURSOR_CONTROL_MODE_SHIFT 0
#define DACIDX_CURSOR_CONTROL_MODE_MASK 0x3u
/* ENUM: CURSOR_CONTROL.mode 1 x11 established */
#define DACIDX_CURSOR_CONTROL_MODE_X11 1
/* ENUM: CURSOR_CONTROL.mode 2 xga established */
#define DACIDX_CURSOR_CONTROL_MODE_XGA 2
/* FIELD: CURSOR_CONTROL.enable 2:2 established */
#define DACIDX_CURSOR_CONTROL_ENABLE_SHIFT 2
#define DACIDX_CURSOR_CONTROL_ENABLE_MASK 0x1u
/* FIELD: CURSOR_CONTROL.interlace 3:3 established */
#define DACIDX_CURSOR_CONTROL_INTERLACE_SHIFT 3
#define DACIDX_CURSOR_CONTROL_INTERLACE_MASK 0x1u
/*
 * TESTVEC: 0x00000005 as CURSOR_CONTROL => mode=1, enable=1, interlace=0
 */

/* Encoder control indexes (8-bit values unless noted). */
#define ENCIDX_GLOBAL_CONTROL 0x000 /* established: 5 bits */
#define ENCIDX_FORMAT_CONTROL 0x001 /* established: 7 bits */
#define ENCIDX_INTERFACE_CONTROL 0x002 /* established */
#define ENCIDX_KEY_CONTROL 0x004 /* established */
#define ENCIDX_KEY_D 0x005 /* established */
#define ENCIDX_KEY_E 0x006 /* established */
#define ENCIDX_KEY_F 0x007 /* established */
#define ENCIDX_HSYNC_TIP 0x010 /* established */
#define ENCIDX_BREEZEWAY 0x011 /* established */
#define ENCIDX_BURST_LENGTH 0x012 /* established */
#define ENCIDX_COLOUR_BACK_PORCH 0x013 /* established */
#define ENCIDX_EXT_COLOUR_BACK_PORCH 0x014 /* established */
#define ENCIDX_ACTIVE 0x015 /* established */
#define ENCIDX_ACTIVE_START 0x016 /* established */
#define ENCIDX_ACTIVE_END 0x017 /* established */
#define ENCIDX_FRONT_PORCH 0x019 /* established */
#define ENCIDX_EQUALIZE_LOW 0x01a /* established */
#define ENCIDX_EQUALIZE_HIGH 0x01b /* established */
#define ENCIDX_VSYNC_LOW 0x01c /* established */
#define ENCIDX_VSYNC_HIGH 0x01d /* established */
#define ENCIDX_COLOUR_BAR_LENGTH 0x01e /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE4 0x020 /* established: frequency byte 4 (most significant) */
#define ENCIDX_SUBCARRIER_FREQ_BYTE3 0x021 /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE2 0x022 /* established */
#define ENCIDX_SUBCARRIER_FREQ_BYTE1 0x023 /* established: frequency byte 1 (least significant) */
#define ENCIDX_VIDEO_PHASE_LSB 0x024 /* established */
#define ENCIDX_VIDEO_PHASE_MSB 0x025 /* established */
#define ENCIDX_BURST_PHASE_LSB 0x026 /* established */
#define ENCIDX_BURST_PHASE_MSB 0x027 /* established */

#endif
