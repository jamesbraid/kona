# token

Host command tokens of the InfiniteReality2 pipe (all but queries).

Source: back-end definitions table, formats/token/command-table.md sections 2 and 3.

The values are in [format.toml](format.toml), each graded and sourced, and the generated reference page is [format.md](format.md).

## Used by

- [InfiniteReality (KONA) architecture overview](../../platforms/ir/architecture.md)
- [The IR diagnostic: `irsaudit` function reference](../../software/diags/irsaudit.md)
- [Kernel driver: DMA ioctl structures](../../software/kernel/kernel.md)
- [GL entry point to command word map](../../software/opengl/gl-command-map.md)
- [libGLcore: the Kona driver in the O32 and 64-bit builds](../../software/opengl/libglcore-driver-builds.md)
- [libGLcore: the large routines of the Kona driver](../../software/opengl/libglcore-driver-functions.md)
- [libGLcore: one entry per function (immediate-mode senders and display-list compilers)](../../software/opengl/libglcore-functions.md)
- [OpenGL driver: context, buffer configuration and display commands](../../software/opengl/opengl.md)
- [The Kona X server module (`kona.so`): function reference](../../software/xsgi/kona-ddx.md)
- [ARM firmware (arm1.u) and the host-token map](../../ucode/arm1.md)
- [How the ARM firmware (arm1.u) is built and what each token handler does](../../ucode/arm1_firmware.md)
- [ARM firmware (arm1.u) functions and data, one entry per symbol](../../ucode/arm1_functions.md)
- [ARM handlers that differ only in their constants](../../ucode/arm1_param_handlers.md)
- [Geometry-engine microcode files](../../ucode/ge.md)
- [What the geometry-engine routines compute](../../ucode/ge_compute.md)
- [Geometry-engine labels: what each one does and what reaches it](../../ucode/ge_handlers.md)
- [Operation codes of the geometry-engine program](../../ucode/ge_ops.md)
- [The distributor: instruction set, registers and dispatch](../../ucode/ged.md)
- [Distributor table B entries that hold a null loop](../../ucode/ged_null_entries.md)
