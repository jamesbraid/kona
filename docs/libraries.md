# Per-build libraries of the Kona driver

The six directories under `usr/gfx/arch/` hold a `libGL.so` and a `libGLcore.so` each (IRIX 6.5.30m): `IP27KONA` is the O32 pair, `IP27KONA32` the N32 pair, `IP27KONA64` the 64-bit pair, and the `IP35KONA*` directories repeat the three for the IP35 build of the driver. Each entry says what the file is for, how it reaches the pipe and where its key entry points are. **Established** means the byte comparison or section read named was made over the whole file; **inferred** says what the reading rested on. Function-level references are [libgl.md](libgl.md), [libglcore.md](libglcore.md) and [libglcore-driver-builds.md](libglcore-driver-builds.md).

## How an IP35 build differs from its IP27 twin

**Established** (a byte-by-byte comparison of the two files of each pair and the section tables read with `readelf`). Every pair has the same length and byte-identical `.text`; the inventory's function code hashes agree for every routine of the O32 and N32 pairs, and the 64-bit pairs are linked at different base addresses, so every routine sits at a fixed distance from its IP27 address (0x500000 lower in libGL and 0xc20000 lower in libGLcore) with the same code.
Three kinds of difference account for the O32 and N32 pairs:

- the dynamic-link records (`.dynamic` and `.liblist`: the time stamps and checksums that name the libraries linked against) and `.got` slots that hold the addresses libc and libX11 had when the library was linked;
- the text `KONAL` in the IP27 libGLcore and `KONAD` in the IP35 one (O32 `.rodata`, file offset 0x174760; N32 `.srdata`, near file offset 0x18cfec), a board name string the driver keeps in a read-only table;
- two data words, which the IP27 libGLcore holds as 0x9000 and 0x280 and the IP35 one as 0x12000 and 0x500 (O32 `.data` file offsets 0x17d7c0 and 0x17d7c4, N32 `.sdata` file offsets 0x18cf54 and 0x18cf58).
  The IP35 values are exactly double; what quantity they size is **unknown**, and the next route is the code that reads the table that holds them.

In the N32 libGLcore the debug records carry the compile line `-D__GL_USEASMCODE -DKONA -DIP27 -DR10000` and `-DIP35` respectively (630 bytes of `.debug_info`, 44 of `.debug_line`), so the two builds are one source compiled with a different platform macro; no routine in the compiled code uses it differently.

## The libGL builds

- `usr/gfx/arch/IP27KONA/libGL.so`: **established** for the structure, **inferred** for the roles.
  The O32 GLX client library for the Kona pipe: 486700 bytes, ELF32 with the MIPS-II `noreorder` flag, 671 functions from `.dynsym` and the debugging tables.
  It needs `libGLcore.so`, `libXsgivc.so`, `libXext.so`, `libX11.so.1` and libc, and holds the strings `dlopen`, `libGLcore.so`, `/dev/zero` and `/dev/opengl` ("can't connect to /dev/opengl"), so a direct context loads the driver library at run time and talks to the kernel through the device node.
  `__glXOpenGraphicsDevice` is at 0xd8104b0 (388 bytes), `__glXHWAttach` at 0xd811524, `__glXAllocHWContext` at 0xd8119dc, `__glXBindHWContextToWindow` at 0xd810634 (748 bytes), `glXSwapBuffers` at 0xd811aa4 and `glXQueryHyperpipeNetworkSGIX` at 0xd83a484.
  The two routines `_init` and `_stub` that the N32 file has are absent here.
- `usr/gfx/arch/IP35KONA/libGL.so`: **established.**
  The same O32 library built for the IP35 driver: the code and every routine address equal the IP27 file's, and only 68 bytes differ (6 in `.dynamic`, 16 in `.liblist`, 46 in `.got`).
  It holds no board-name string (`KONAL` and `KONAD` occur only in libGLcore).
- `usr/gfx/arch/IP27KONA32/libGL.so`: **established** for the structure, **inferred** for the roles.
  The N32 GLX client library: 516508 bytes, 673 functions (the O32 list plus `_init` and `_stub`), MIPS-IV with the N32 `abi2` flag.
  Its DWARF addresses are stale against the dynamic symbol table (the function table uses the dynamic addresses), and it carries the same imports and device strings as the O32 file.
  `__glXOpenGraphicsDevice` is at 0xd80e4e4 (396 bytes), `__glXOpenGraphics` at 0xd80e778 (124 bytes, against 508 bytes in the O32 build), `glXCreateContext` at 0xd832f24, `glXSwapBuffers` at 0xd833d30 and `glXBindSwapBarrierSGIX` at 0xd83c110.
- `usr/gfx/arch/IP35KONA32/libGL.so`: **established.**
  Differs from the IP27 N32 file in 151 bytes: 21 in `.liblist`, 6 in `.dynamic` and 124 `.got` slots, and nowhere else; the text is the same.
  Like the O32 pair it holds no platform macro or board name, so the IP35 N32 client is a re-link of the same objects.
- `usr/gfx/arch/IP27KONA64/libGL.so`: **established** for the structure, **inferred** for the roles.
  The 64-bit GLX client library: 567424 bytes, ELF64, 673 functions with 8-byte pointers, so structures it shares with the kernel are laid out differently from the N32 library.
  Routine addresses start at 0x2643198 (`__glXHWAttach`, 264 bytes), `__glXOpenGraphicsDevice` is at 0x264300c (396 bytes), `__glXBindHWContextToWindow` at 0x2643464 (696 bytes), `glXCreateContext` at 0x2667ac4 and `glXQueryHyperpipeNetworkSGIX` at 0x267187c.
- `usr/gfx/arch/IP35KONA64/libGL.so`: **established.**
  The 64-bit IP35 client: the same size as the IP27 file and linked 0x500000 lower (its `.text` starts at 0x2142b00 where the IP27 file's starts at 0x2642b00), with the same section sizes.
  The 6788 differing bytes are the address-bearing records that follow the base: `.dynsym` (732), `.rel.dyn` (1613), `.data` (1445), `.got` (668), `.debug_info` (1371) and `.debug_frame` (673); the code hash of all 673 routines matches the IP27 file.

## The libGLcore builds

- `usr/gfx/arch/IP27KONA/libGLcore.so`: **established** for the structure, **inferred** for the roles.
  The O32 Kona driver library: 2892600 bytes, 4868 functions, needs only `libm.so` and libc, and opens `/dev/mmem` for the real-time-clock page ("gl: Can't open /dev/mmem for RTC") and `/dev/zero` for anonymous memory.
  It holds no `/dev/opengl` string, so the pipe window is **inferred** to arrive from the client library; `__glKonInitTextureMemory` (0xd979034, 120 bytes) and `__glKonInitARMTexCache` (0xd979ff0, 84 bytes) initialise the texture-memory bookkeeping that `bindTexTable` (0xd965290, 1184 bytes) and `findFreeBank` (0xd976d6c, 240 bytes) then use.
  `__glKonInitializeEnables` is at 0xd94c124, `__glkon_InitDlistState` at 0xd94a334, `__glKonInitPixelState` at 0xd94dd8c, `__glKonInitEvaluators` at 0xd981ad0 and the one-line `__glkon_InitHyperpipeState` at 0xd98b888 (8 bytes, a bare return).
  The depth-test routines `__glDTP_*` and `__glDTS_*` of the N32 build do not exist in this file, and it has eight routines the N32 file lacks (`__glce_common_listable`, `__glce_common_not_listable` and six terminal-attribute functions, `cfgetispeed`, `cfgetospeed`, `cfsetispeed`, `cfsetospeed`, `tcgetattr` and `tcsetattr`).
- `usr/gfx/arch/IP35KONA/libGLcore.so`: **established.**
  The O32 driver built for IP35: 38 bytes differ from the IP27 file (6 in `.dynamic`, 4 in `.liblist`, 19 in `.got`, 4 in `.data`, 4 in `.mdebug` and one in `.rodata`), every routine has the same code hash, and the changes that matter are the board-name text `KONAD` at 0x174760 against `KONAL` and the two doubled data words at 0x17d7c4 and 0x17d7c8.
  The four `.mdebug` bytes are the platform directory in a recorded source path (`IP27` becomes `IP35`).
- `usr/gfx/arch/IP27KONA32/libGLcore.so`: **established** for the structure, **inferred** for the roles.
  The N32 driver library, the one the function-level chapters were read in: 3105592 bytes, 4907 functions, MIPS-IV, with DWARF for 163 compilation units whose addresses agree with `.dynsym`.
  It adds 39 depth-compare routines to the O32 list (`__glDTP_LESS`, `__glDTP_GEQUAL_M_s`, `__glDTS_EQUAL_M` and the rest, one per compare function, mask variant and stencil variant) and keeps the Kona entries at `__glKonInitializeEnables` 0xd94de90 (168 bytes), `__glKonInitTextureMemory` 0xd977fc0 (136 bytes), `bindTexTable` 0xd9651c0 (944 bytes), `findFreeBank` 0xd975bf0 (308 bytes) and `stealNoGreaterPriorityBank` 0xd976650 (1512 bytes).
  The same compile line, with `-DKONA -DIP27 -DR10000`, is recorded in its debug information.
- `usr/gfx/arch/IP35KONA32/libGLcore.so`: **established.**
  Differs from the IP27 N32 file in 801 bytes: 630 in `.debug_info` and 44 in `.debug_line` (the recorded compile line and path, `-DIP35`), 103 `.got` slots, 13 in `.liblist`, 6 in `.dynamic`, 4 in `.sdata` (the doubled words), one in `.srdata` (`KONAD`) and the rest header bytes.
  No byte of `.text` differs.
- `usr/gfx/arch/IP27KONA64/libGLcore.so`: **established** for the structure, **inferred** for the roles.
  The 64-bit driver library: 3434096 bytes, 4907 functions with the N32 names, ELF64 with 8-byte pointers, so every context structure offset in its code differs from the N32 file.
  Entries are at `__glKonInitializeEnables` 0x2daff90 (168 bytes), `__glKonInitTextureMemory` 0x2dda880 (140 bytes), `__glKonInitARMTexCache` 0x2ddb610 (80 bytes), `bindTexTable` 0x2dc75c0 (944 bytes), `findFreeBank` 0x2dd8320 (320 bytes), `__glKonInitPixelState` 0x2db1cf0 (460 bytes) and `__glKonInitEvaluators` 0x2de1080 (740 bytes).
- `usr/gfx/arch/IP35KONA64/libGLcore.so`: **established.**
  The IP35 64-bit driver: it holds the board name `KONAD`, where the IP27 file holds `KONAL`, and the file is linked 0xc20000 below the IP27 one.
  Most of the other 33600 differing bytes are the address-bearing records that follow the base (`.dynsym` 4529, `.rel.dyn` 4659, `.data` 3708, `.got` 4021, `.debug_info` 10466, `.debug_frame` 4854); the code hash of all 4907 routines equals the IP27 file's.
