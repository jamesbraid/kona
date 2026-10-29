# IRIX files needed for SGI InfiniteReality (KONA) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX 6.5
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level directories (`kernel/`,
`libglcore/`, `ddx/`, `ucode/`) hold relative symlinks into `root/`.

## 1. Layout under `root/`

```
root/
├── usr/
│   ├── cpu/sysgen/IP27boot/
│   │   ├── kernel.o                      <- IP27 kernel object
│   │   ├── kona.a                        <- KONA kernel driver archive
│   │   ├── gfx.o                         <- core graphics kernel module
│   │   ├── gfxs.a
│   │   ├── gfxstubs.a
│   │   └── rrm.o                         <- rendering resource manager
│   ├── gfx/
│   │   ├── gfxinit                       <- graphics initialisation program
│   │   ├── arch/
│   │   │   ├── IP27KONA/                 <- also IP27KONA32/ and IP27KONA64/
│   │   │   │   ├── libGLcore.so          <- OpenGL core driver
│   │   │   │   └── libGL.so
│   │   │   └── GENERIC/Xsgi              <- X server
│   │   ├── KONA/bin/
│   │   │   ├── ireeprom
│   │   │   ├── kpm
│   │   │   └── postmortem
│   │   └── ucode/KONA/
│   │       ├── ge.u  ge.hex  ge11.u  ged1b.u  geif.u  ge_kpm.hex  ge_symbols
│   │       ├── arm1.u  arm1_kpm.u
│   │       ├── tport.bin
│   │       ├── dg4/vfo/*.vfo  dg4/cmb/*.cmb   <- display tables
│   │       └── vof/*                          <- video output formats
│   ├── diags/IR/
│   │   ├── bin/irsaudit
│   │   └── ucode/                        <- ge.u ge.hex ge_diag_init.u ge_diag_init.hex
│   │                                        geif.u arm1.u arm1_nic.u diag_arm_init.u
│   └── lib/X11/dyDDX/
│       ├── kona.so                       <- X server KONA module
│       └── glx.so                        <- GLX module
└── unix                                  <- running kernel (optional)
```

## 2. Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`kernel/`) | `kona.a` (members extracted with `ar x`), `gfx.o`, `rrm.o`, `kernel.o` | `root/usr/cpu/sysgen/IP27boot/` |
| OpenGL core (`libglcore/`) | `libGLcore.so`, `libGL.so` | `root/usr/gfx/arch/IP27KONA64/` (also `IP27KONA/`, `IP27KONA32/`) |
| X server module (`ddx/`) | `kona.so`, `glx.so` | `root/usr/lib/X11/dyDDX/` |
| Microcode and tables (`ucode/`) | `ge11.u`, `ge.u`, `geif.u`, `arm1.u`, `tport.bin`, `dg4/vfo/`, `dg4/cmb/`, `vof/` | `root/usr/gfx/ucode/KONA/` |

The paths above come from an IRIX 6.4 Origin/Onyx2/Octane media listing, a 6.5 listing of `kona.so` and `glx.so` consumers, and Origami's published graphics datasheets. A 6.5.x install may place the same files under a differently named `arch/` directory. Check your own install with `ls /usr/gfx/arch` and `inst`'s file list for the `eoe.sw64.gfx` and `kona` subsystems.

## 3. Copying the files from an IRIX 6.5 system

Run on the IRIX host with the InfiniteReality graphics software installed:

```sh
tar -cvf /tmp/kona_root.tar \
    /unix \
    /usr/cpu/sysgen/IP27boot/kernel.o \
    /usr/cpu/sysgen/IP27boot/kona.a \
    /usr/cpu/sysgen/IP27boot/gfx.o \
    /usr/cpu/sysgen/IP27boot/gfxs.a \
    /usr/cpu/sysgen/IP27boot/gfxstubs.a \
    /usr/cpu/sysgen/IP27boot/rrm.o \
    /usr/gfx/gfxinit \
    /usr/gfx/arch/GENERIC/Xsgi \
    /usr/gfx/arch/IP27KONA \
    /usr/gfx/arch/IP27KONA32 \
    /usr/gfx/arch/IP27KONA64 \
    /usr/gfx/KONA \
    /usr/gfx/ucode/KONA \
    /usr/diags/IR \
    /usr/lib/X11/dyDDX/kona.so \
    /usr/lib/X11/dyDDX/glx.so
```

Unpack it on your workstation into the ignored `root/` directory:

```sh
mkdir -p root && cd root && tar -xvf /path/to/kona_root.tar
```

Missing paths are normal: install layouts differ by IRIX release and by
graphics option. Edit this list to match what your system has.
