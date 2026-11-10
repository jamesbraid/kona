/*
 * KONA_DAC_DECODE.h - video DAC and encoder ports on the display bus
 *
 * Each channel's video DAC has four bus registers; the DAC's own registers sit
 * behind an index (see KONA_DACIDX_DECODE.h). The video encoder has two address
 * and two data ports. The REG lines give the ports of DAC channel 0; a DAC of
 * channel n is at the same register number with the base advanced by n strides
 * (n = 0 to 7, stride 256 bus addresses). One encoder serves the board.
 *
 * Reading the header. Bus addresses appear only on REG lines; elsewhere a port
 * is named, because the same hex digits are command-token numbers in
 * KONA_TOKEN_DECODE.h.
 *
 * Derivation: roles and grades are those of the back-end definitions table
 * (docs/command-table.md, section 6.6 and the address map in 6.2), read from the
 * shipped kernel module, display firmware and diagnostic. A grade says how the
 * layout was derived, not that silicon was measured. Which address bits pick
 * the chip behind a port is described in the table's access-path section and is
 * not encoded here. scripts/kona_checks.py keeps this
 * file and the table in step.
 */
#ifndef KONA_DAC_DECODE_H
#define KONA_DAC_DECODE_H

#include <stdint.h>

/* DAC index: two byte writes, low then high, form a 16-bit index. The high byte */
/* selects the space of the indexed registers (KONA_DACIDX_DECODE.h). */
/* REG: DAC.index 0xb00 w8 reset=unknown established */
/* Colour-map data: three consecutive writes of red, green and blue per entry, */
/* the index advancing; 10-bit components. Inferred (not read directly). */
/* REG: DAC.cmap_data 0xb01 w8 reset=unknown inferred */
/* Indexed-register data. */
/* REG: DAC.reg_data 0xb02 rw8 reset=unknown established */
/* Mode: start-up writes 6, waits, then writes 7. Bit 0 is a strobe (inferred). */
/* REG: DAC.mode 0xb03 w8 reset=unknown inferred */
/* FIELD: DAC.mode.strobe 0:0 inferred */
#define DAC_MODE_STROBE_SHIFT 0
#define DAC_MODE_STROBE_MASK 0x1u
/* Encoder control address port (address pins 0 and 2 select this and the control */
/* data port; the encoder has two address pins). */
/* REG: DAC.enc_ctrl_addr 0x1800 w8 reset=unknown established */
/* Encoder colour-map address. */
/* REG: DAC.enc_cmap_addr 0x1801 w8 reset=unknown inferred */
/* Encoder control data; every control index is 8 bits unless the notes say less. */
/* REG: DAC.enc_ctrl_data 0x1802 rw8 reset=unknown established */
/* Encoder colour-map data. */
/* REG: DAC.enc_cmap_data 0x1803 rw8 reset=unknown inferred */
/* Encoder output gain, written as 255 minus the gain. */
/* REG: DAC.enc_gain 0x1708 w8 reset=unknown established */

#endif
