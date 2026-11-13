# voc

Video-output chip registers of channel id 0 on the display bus.

Source: back-end definitions table, formats/token/command-table.md section 6.5.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Used by

- [InfiniteReality (KONA) architecture overview](../../platforms/ir/architecture.md)
- [Diagnostic data, format files and installed tools](../../software/diags/data-files.md)
- [The IR diagnostic: `irsaudit` function reference](../../software/diags/irsaudit.md)
- [OpenGL driver: context, buffer configuration and display commands](../../software/opengl/opengl.md)
- [Setup and video-configuration tools: function reference](../../software/userland/setup-tools.md)
- [ARM firmware (arm1.u) functions and data, one entry per symbol](../../ucode/arm1_functions.md)
- [Boundary-scan chip types, element lists and chain records](../../ucode/arm1_scan_tables.md)
- [Display tables: video formats, combinations, VOF sources and the option-board image](../../ucode/dg.md)
- [Display-generator requests one by one](../../ucode/dg_requests.md)
- [tport.bin: a second ARM image with the display-generator code](../../ucode/tport.md)
