/* generated from defs/dac.toml by defs-gen - do not edit, change the source */
/* video DAC and encoder ports on the display bus */
#ifndef DAC_GEN_H
#define DAC_GEN_H

#include <stdint.h>


/* index: w8, reset unknown */
#define DAC_INDEX_OFFSET                             0xb00u /* established */

/* cmap_data: w8, reset unknown */
#define DAC_CMAP_DATA_OFFSET                         0xb01u /* inferred */

/* reg_data: rw8, reset unknown */
#define DAC_REG_DATA_OFFSET                          0xb02u /* established */

/* mode: w8, reset unknown */
#define DAC_MODE_OFFSET                              0xb03u /* inferred */
#define DAC_MODE_STROBE_SHIFT                        0 /* inferred */
#define DAC_MODE_STROBE_MASK                         0x1u
#define DAC_MODE_STROBE_INPLACE                      (DAC_MODE_STROBE_MASK << DAC_MODE_STROBE_SHIFT)

/* enc_gain: w8, reset unknown */
#define DAC_ENC_GAIN_OFFSET                          0x1708u /* established */

/* enc_ctrl_addr: w8, reset unknown */
#define DAC_ENC_CTRL_ADDR_OFFSET                     0x1800u /* established */

/* enc_cmap_addr: w8, reset unknown */
#define DAC_ENC_CMAP_ADDR_OFFSET                     0x1801u /* inferred */

/* enc_ctrl_data: rw8, reset unknown */
#define DAC_ENC_CTRL_DATA_OFFSET                     0x1802u /* established */

/* enc_cmap_data: rw8, reset unknown */
#define DAC_ENC_CMAP_DATA_OFFSET                     0x1803u /* inferred */

#endif /* DAC_GEN_H */
