# IRIX files needed for SGI InfiniteReality (KONA) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level binary directories
(`kona_kernel/`, `libglcore/`, `irisgl/`, `ddx/`, `ucode/`, `diags/`) hold
relative symlinks into `root/`.

Two releases are listed:

- **IRIX 6.5.30** is the primary release. Every path in section 1 was checked
  against an installed 6.5.30m Onyx2 with one InfiniteReality2 pipe. Its kernel
  objects, the N32 and 64-bit `libGLcore.so` and the IrisGL libraries carry
  DWARF (checked with `scripts/map_binaries.py`); the X modules and the o32
  `libGLcore.so` are stripped.
- **IRIX 6.5.0** ships unstripped binaries, but for this board they carry the
  same names-and-lines DWARF as 6.5.30. Section 5 has the survey.

## 1. IRIX 6.5.30 (primary)

Verified on `uname -R` = `6.5 6.5.30m`, Onyx2, graphics installed with
`eoe.sw.gfx`, `eoe.sw64.gfx` and `x_eoe.sw.Server`. The set below was copied
from that install with `cp -rp`.

```files
/unix
/usr/cpu/sysgen/IP27boot/kernel.o
/usr/cpu/sysgen/IP27boot/kona.a
/usr/cpu/sysgen/IP27boot/gfx.o
/usr/cpu/sysgen/IP27boot/gfxs.a
/usr/cpu/sysgen/IP27boot/gfxstubs.a
/usr/cpu/sysgen/IP27boot/rrm.o
/usr/cpu/sysgen/IP27boot/tport.a
/usr/cpu/sysgen/IP35boot/kona.a
/usr/cpu/sysgen/IP35boot/gfx.o
/usr/cpu/sysgen/IP35boot/gfxs.a
/usr/cpu/sysgen/IP35boot/gfxstubs.a
/usr/cpu/sysgen/IP35boot/rrm.o
/usr/cpu/sysgen/IP35boot/tport.a
/var/sysgen/system/gfx.sm
/var/sysgen/mtune/gfx
/var/sysgen/master.d/gfxs
/usr/gfx/gfxinit
/usr/gfx/gfxinfo
/usr/gfx/gfxtopology
/usr/gfx/hyperpipeinfo
/usr/gfx/ircombine
/usr/gfx/sgcombine
/usr/gfx/setmon
/usr/gfx/dmconf
/usr/gfx/startgfx
/usr/gfx/stopgfx
/usr/gfx/arch/GENERIC/Xsgi
/usr/gfx/arch/IP27KONA
/usr/gfx/arch/IP27KONA32
/usr/gfx/arch/IP27KONA64
/usr/gfx/arch/IP35KONA
/usr/gfx/arch/IP35KONA32
/usr/gfx/arch/IP35KONA64
/usr/gfx/arch/IGLOO/libgl.so
/usr/gfx/arch/IGLOO32/libgl.so
/usr/gfx/KONA
/usr/gfx/ucode/KONA
/usr/gfx/ucode/vfc/sdbutil
/usr/gfx/ucode/vfc/rules/dg4.def
/usr/gfx/ucode/vfc/rules/dg4_ddo_gvo.def
/usr/gfx/ucode/vfc/rules/dplex.def
/usr/gfx/ucode/vfc/rules/voc1.def
/usr/diags/IR
/usr/lib32/libfm.so
/usr/lib/X11/dyDDX/kona.so
/usr/lib/X11/dyDDX/konad.so
/usr/lib/X11/dyDDX/konal.so
/usr/lib/X11/dyDDX/konas.so
/usr/lib/X11/dyDDX/konavis.so
/usr/lib/X11/dyDDX/glx.so
/usr/bin/X11/xsetmon
/usr/lib/X11/app-defaults/Ircombine
/usr/lib/X11/app-defaults/Dmconf
/usr/lib/X11/app-defaults/XSetmon
```
(The block above is the machine-readable list; the tables below describe it.)

`scripts/inventory.py` walks every path above except these, which are too broad
to inventory (each line is a path and the reason):

```exclude
/unix the whole IP27 kernel; its KONA code is the same as kona.a, gfx.o and rrm.o hold
/usr/cpu/sysgen/IP27boot/kernel.o the generic kernel object, which holds no KONA driver code
```

### Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`kona_kernel/`) | `kona.a` (members extracted with `ar x`), `gfx.o`, `rrm.o`, `kernel.o`, `gfxs.a`, `gfxstubs.a` | `usr/cpu/sysgen/IP27boot/` (also reached as `var/sysgen/boot/`) |
| OpenGL core (`libglcore/`) | `libGLcore.so`, `libGL.so` | `usr/gfx/arch/IP27KONA64/` (also `IP27KONA/`, `IP27KONA32/`, and the `IP35KONA*` twins) |
| IrisGL (`irisgl/`) | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` |
| X server modules (`ddx/`) | `kona.so`, `konad.so`, `konal.so`, `konas.so`, `konavis.so`, `glx.so` | `usr/lib/X11/dyDDX/` |
| Microcode and tables (`ucode/`) | `ge.u`, `ge.hex`, `ge11.u`, `ged1b.u`, `geif.u`, `ge_kpm.hex`, `ge_symbols`, `arm1.u`, `arm1_kpm.u`, `tport.bin`, `dg4/`, `vof/` | `usr/gfx/ucode/KONA/` |
| Diagnostics and tools (`diags/`) | `irsaudit`, `ge_diag_init.*`, `arm1_nic.u`, `dgo.mcs`, `ireeprom`, `kpm`, `postmortem` | `usr/diags/IR/`, `usr/gfx/KONA/bin/` |
| Origin 350 kernel (`IP35boot`) | `kona.a`, `gfx.o`, `gfxs.a`, `gfxstubs.a`, `rrm.o`, `tport.a` | `usr/cpu/sysgen/IP35boot/` |
| Textport driver | `tport.a` (IP27 and IP35) | `usr/cpu/sysgen/IP27boot/`, `usr/cpu/sysgen/IP35boot/` |
| Graphics tools | `gfxinfo` (a link to `gfxinit`), `gfxtopology`, `hyperpipeinfo`, `ircombine`, `sgcombine`, `setmon`, `dmconf`, `startgfx`, `stopgfx`, `xsetmon` and the `Ircombine`, `Dmconf`, `XSetmon` resource files | `usr/gfx/`, `usr/bin/X11/`, `usr/lib/X11/app-defaults/` |
| Video-format compiler | `sdbutil` and the `dg4.def`, `dg4_ddo_gvo.def`, `dplex.def`, `voc1.def` rule files | `usr/gfx/ucode/vfc/` |
| IrisGL, o32 | `libgl.so` | `usr/gfx/arch/IGLOO/` |
| Driver configuration | `gfx.sm`, `gfx` (tunables), `gfxs` | `var/sysgen/system/`, `var/sysgen/mtune/`, `var/sysgen/master.d/` |

The rows from the Origin 350 kernel down were added from a listing of the 6.5.30 installation media
(`instigator extract` of the three 6.5.30 discs) and extracted from it; they were not checked on an
installed system, unlike the rest of section 1. The diagnostic directory `usr/diags/IR` also holds
`bin/hyper`, `ucode/arm1_nic.u`, `ucode/diag_arm_init.u` and the netlist and BIST data files.
Searched and left out because they name no InfiniteReality symbol: `usr/stand/ide`,
`stand/ideloader`, `usr/etc/videod` and the `libvl.so.1` builds. The 6.5.30 media carries no PROM image.

`usr/gfx/ucode/KONA/` also holds `dgo1`. `kona.so`, `konad.so`, `konal.so`,
`konas.so` and `konavis.so` are all present on 6.5.30; the earlier checklist
named only `kona.so`. The 6.5.30 Onyx2 install has no `odyssey.a`, only
`odysseystubs.a`.

Verify the install on your own system with `ls /usr/gfx/arch`, `ls
/usr/lib/X11/dyDDX` and `ls /usr/cpu/sysgen/IP27boot`. Missing paths are
normal: layouts differ by release and graphics option.

## 2. Copying the files

On the IRIX host, tar the paths in the block above (`tar -cvf /tmp/kona_root.tar
<paths>`) and unpack on your workstation with `mkdir -p root && cd root && tar
-xvf /path/to/kona_root.tar`. `scripts/populate-root` then creates the symlinks
in the binary directories from the second block below.

Reference image used for the 6.5.30 listing, for reproducibility:
`kona-installed-20261023.qcow2`, SHA-256
`d7b012a30d912b9f5474c185002063f7d3293f999e8ce78867a06e1acbffc8c7`.

## 3. IRIX 6.5.0

The 6.5 Foundation 1 disc carries the same KONA files under the paths in section 1
(IP27KONA, IP27KONA32, IP27KONA64 and the older IP19/IP25 variants). Section 5 gives the
debug level. It has no VPro.

## 4. Symlinks

`scripts/populate-root` reads these blocks. `archives` lines are `ARCHIVE LINKDIR`: the
archive's members are unpacked inside `root/` and linked into `LINKDIR`. `links`
lines are `LINK TARGET`, relative to the repository root. `libGLcore.so` exists once per ABI: `IP27KONA` is o32,
`IP27KONA32` N32 and `IP27KONA64` 64-bit.

```archives
root/usr/cpu/sysgen/IP27boot/kona.a kona_kernel
```

```links
kona_kernel/kona.a root/usr/cpu/sysgen/IP27boot/kona.a
kona_kernel/gfx.o root/usr/cpu/sysgen/IP27boot/gfx.o
kona_kernel/rrm.o root/usr/cpu/sysgen/IP27boot/rrm.o
kona_kernel/kernel.o root/usr/cpu/sysgen/IP27boot/kernel.o
kona_kernel/gfxs.a root/usr/cpu/sysgen/IP27boot/gfxs.a
kona_kernel/gfxstubs.a root/usr/cpu/sysgen/IP27boot/gfxstubs.a
libglcore/libGLcore.so root/usr/gfx/arch/IP27KONA64/libGLcore.so
libglcore/libGL.so root/usr/gfx/arch/IP27KONA64/libGL.so
libglcore/libGLcore_n32.so root/usr/gfx/arch/IP27KONA32/libGLcore.so
libglcore/libGLcore_o32.so root/usr/gfx/arch/IP27KONA/libGLcore.so
irisgl/libgl.so root/usr/gfx/arch/IGLOO32/libgl.so
irisgl/libfm.so root/usr/lib32/libfm.so
ddx/kona.so root/usr/lib/X11/dyDDX/kona.so
ddx/konad.so root/usr/lib/X11/dyDDX/konad.so
ddx/konal.so root/usr/lib/X11/dyDDX/konal.so
ddx/konas.so root/usr/lib/X11/dyDDX/konas.so
ddx/konavis.so root/usr/lib/X11/dyDDX/konavis.so
ddx/glx.so root/usr/lib/X11/dyDDX/glx.so
ddx/Xsgi root/usr/gfx/arch/GENERIC/Xsgi
ucode/KONA root/usr/gfx/ucode/KONA
diags/IR root/usr/diags/IR
diags/KONA_bin root/usr/gfx/KONA/bin
```

## 5. Debug information by release

Checked on the retail discs: IRIX 6.2, 6.3, 6.4 for Origin200/Origin2000/Onyx2IR, 6.5
Foundation 1 (6.5.0) and the overlay discs of every 6.5.x release from 6.5.2 to 6.5.30.
No release ships DWARF with types or struct members for this board. Every unstripped file
carries compile units, function and variable names and line tables only (`dwarfdump -i`
shows no structure, member or typedef entries), and the o32 `.mdebug` tables hold
procedures and line numbers with no member or typedef symbols. 6.5.0 is no richer than 6.5.30.

| Files | Debug level | Best release |
|---|---|---|
| `kona.a` members, `gfx.o`, `rrm.o` | DWARF with names and lines | 6.5.30 (IP27 since 6.4, IP35 since 6.5.8) |
| `libGLcore.so` N32 and 64-bit | DWARF with names and lines | 6.5.30 |
| `libGLcore.so` o32 | `.mdebug` names and lines | 6.5.30 |
| `kona.so`, `konad.so`, `konal.so`, `konas.so`, `konavis.so`, `glx.so`, `Xsgi` | stripped to `.dynsym` in every release | none |

Types have to come from headers, the ucode and the RE notes, not from any release's debug
sections. Pick 6.5.30 for the code that shipped last; older releases (6.4, 6.5.0) are
earlier builds of the same driver with a smaller line table and are only useful for diffing.
