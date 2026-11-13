# dac

Video DAC and encoder ports of the display bus.

Source: back-end definitions table, formats/token/command-table.md sections 6.2 and 6.6.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Used by

- [ARM firmware (arm1.u) functions and data, one entry per symbol](../../software/ucode/arm1_functions.md)
- [Boundary-scan chip types, element lists and chain records](../../software/ucode/arm1_scan_tables.md)
- [Display-generator requests one by one](../../software/ucode/dg_requests.md)
- [tport.bin: a second ARM image with the display-generator code](../../software/ucode/tport.md)
