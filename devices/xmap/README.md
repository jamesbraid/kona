# xmap

XMAP direct registers, indirect-memory ports and the words written through them.

Source: back-end definitions table, formats/token/command-table.md sections 6.3, 6.4 and 7.1 to 7.5.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

## Used by

- [InfiniteReality (KONA) architecture overview](../../platforms/ir/architecture.md)
- [Diagnostic data, format files and installed tools](../../software/diags/data-files.md)
- [The IR diagnostic: `irsaudit` function reference](../../software/diags/irsaudit.md)
- [Diagnostic tools: `kpm` and the boundary-scan library](../../software/diags/kpm.md)
- [Kernel driver: one entry per function](../../software/kernel/kernel-functions.md)
- [Kernel driver: DMA ioctl structures](../../software/kernel/kernel.md)
- [OpenGL driver: context, buffer configuration and display commands](../../software/opengl/opengl.md)
- [The Kona X server module (`kona.so`): function reference](../../software/xsgi/kona-ddx.md)
- [How the ARM firmware (arm1.u) is built and what each token handler does](../../software/ucode/arm1_firmware.md)
- [ARM firmware (arm1.u) functions and data, one entry per symbol](../../software/ucode/arm1_functions.md)
- [Boundary-scan chip types, element lists and chain records](../../software/ucode/arm1_scan_tables.md)
- [Display-generator requests one by one](../../software/ucode/dg_requests.md)
- [tport.bin: a second ARM image with the display-generator code](../../software/ucode/tport.md)
