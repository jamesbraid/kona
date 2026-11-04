# Instruction readings from hostfacts

These readings summarize selected memory accesses, calls, branches and returns from each routine body. Every instruction claim cites its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped 10,005 located, 12,633 understood and 8 no-software-dependency rows because their status excludes them, plus 1,514 named-only rows with exact entries in existing docs; no undocumented rows were present, leaving 30,149 targets.

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f510 (n64).
  It occupies 164 bytes.
  The `lw` at 0x2e1f518 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x2efa800 via base gp (0x2f00798), including `ld` at 0x2e1f540, `ld` at 0x2e1f578.
  The `ld` at 0x2e1f548 loads 8 bytes from abs 0x2efb098 via base gp (0x2f00798).
  The `ld` at 0x2e1f55c loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e1f564 loads 8 bytes from [0x1020]:8 +0x1ad0 via base a0 ([0x1020]:8).
  The `jalr` at 0x2e1f560 calls `__glNamesGenRange [0x2e57910]` with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f57c calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f598 calls `__glSetError [0x2e315d0]` with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e1f534 goes to 0x2e1f578 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x2e1f53c goes to 0x2e1f598 when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x2e1f544 goes to 0x2e1f55c when a0 != 0 and falls through when a0 == 0.
  The return at 0x2e1f554 has v0 = 0x0.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f5c0 (n64).
  It occupies 108 bytes.
  The `lw` at 0x2e1f5c4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e1f5e8 loads 8 bytes from abs 0x2efb0a8 via base gp (0x2f00798).
  The `ld` at 0x2e1f5ec loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e1f5f4 loads 8 bytes from [0x1020]:8 +0x1ad0 via base a0 ([0x1020]:8).
  The `ld` at 0x2e1f60c loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `jalr` at 0x2e1f5f0 calls `__glNamesIsName [0x2e580d0]` with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f610 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e1f5e0 goes to 0x2e1f60c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x2e1f604 has v0 = ?.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f7d0 (n64).
  It occupies 128 bytes.
  The `lw` at 0x2e1f7d8 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x2efa800 via base gp (0x2f00798), including `ld` at 0x2e1f800, `ld` at 0x2e1f82c.
  The `ld` at 0x2e1f80c loads 8 bytes from abs 0x2efb0a0 via base gp (0x2f00798).
  The `ld` at 0x2e1f810 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e1f818 loads 8 bytes from [0x1020]:8 +0x1ad0 via base a0 ([0x1020]:8).
  The `jalr` at 0x2e1f814 calls `__glNamesDeleteRange [0x2e57c80]` with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x2e1f830 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x2e1f840 calls `__glSetError [0x2e315d0]` with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0x2e1f7f4 goes to 0x2e1f82c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x2e1f7fc goes to 0x2e1f840 when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x2e1f804 goes to 0x2e1f820 when a1 == 0 and falls through when a1 != 0.
  The return at 0x2e1f824 has v0 = ?.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e273f0 (n64).
  It occupies 184 bytes.
  The `lw` at 0x2e273f0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e273fc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e27490 loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `jalr` at 0x2e27498 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e2740c goes to 0x2e27490 when v0(=[0x1030]) == v1(=0x1) and falls through when v0(=[0x1030]) != v1(=0x1).
  The return at 0x2e2747c has v0 = [0x1030].

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e274b0 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2e274b0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e274bc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `sw` at 0x2e274e0 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x2.
  The `lw` at 0x2e274e4 loads 4 bytes from [0x1020]:8 +0x4714 via base a1 ([0x1020]:8).
  The `sw` at 0x2e274f8 stores 4 bytes to [0x1020]:8 +0x4714 via base a1 ([0x1020]:8) with value ([[0x1020]:8+18196] | 0x4).
  The `ld` at 0x2e27508 loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `jalr` at 0x2e27510 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e274cc goes to 0x2e27508 when v0(=[0x1030]) == v1(=0x1) and falls through when v0(=[0x1030]) != v1(=0x1).
  The return at 0x2e274f4 has v0 = ([[0x1020]:8+18196] | 0x4).

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f270 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2e2f27c loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e2f2a0 loads 8 bytes from abs 0x2ef87f8 via base gp (0x2f00798).
  The `ld` at 0x2e2f2b8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e2f2cc loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `bgezall` at 0x2e2f2b4 calls `__glColorTableParameterv [0x2e2f0e0]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f2d0 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f298 goes to 0x2e2f2cc when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x2e2f2c4 has v0 = ?.

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f2e0 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2e2f2ec loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e2f310 loads 8 bytes from abs 0x2ef87f8 via base gp (0x2f00798).
  The `ld` at 0x2e2f328 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e2f33c loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `bgezall` at 0x2e2f324 calls `__glColorTableParameterv [0x2e2f0e0]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f340 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f308 goes to 0x2e2f33c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x2e2f334 has v0 = ?.

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f4d0 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2e2f4dc loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e2f500 loads 8 bytes from abs 0x2ef87f8 via base gp (0x2f00798).
  The `ld` at 0x2e2f518 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e2f52c loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `bgezall` at 0x2e2f514 calls `__glGetColorTableParameterv [0x2e2f350]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f530 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f4f8 goes to 0x2e2f52c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x2e2f524 has v0 = ?.

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f540 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2e2f54c loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2e2f570 loads 8 bytes from abs 0x2ef87f8 via base gp (0x2f00798).
  The `ld` at 0x2e2f588 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2e2f59c loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `bgezall` at 0x2e2f584 calls `__glGetColorTableParameterv [0x2e2f350]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f5a0 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f568 goes to 0x2e2f59c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x2e2f594 has v0 = ?.

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33060 (n64).
  It occupies 88 bytes.
  The `ld` at 0x2e33084 loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `ld` at 0x2e330a0 loads 8 bytes from abs 0x2efa880 via base gp (0x2f00798).
  The `bgezall` at 0x2e33088 calls `__glSetError [0x2e315d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e330a8 calls `__GLconvolutionParameter [0x2e32e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0x2e3307c goes to 0x2e330a0 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The return at 0x2e33098 has v0 = ?.

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e330c0 (n64).
  It occupies 96 bytes.
  The `ld` at 0x2e330f0 loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `ld` at 0x2e3310c loads 8 bytes from abs 0x2efa880 via base gp (0x2f00798).
  The `bgezall` at 0x2e330f4 calls `__glSetError [0x2e315d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x2e33110 calls `__GLconvolutionParameter [0x2e32e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0x2e330d8 goes to 0x2e3310c when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2e330e4 goes to 0x2e3310c when a1 == v1(=0x8014) and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x2e330ec goes to 0x2e3310c when a1 == a3(=0x8015) and falls through when a1 != a3(=0x8015).
  The return at 0x2e33104 has v0 = ?.

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33120 (n64).
  It occupies 88 bytes.
  The `ld` at 0x2e33144 loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `ld` at 0x2e33160 loads 8 bytes from abs 0x2efa880 via base gp (0x2f00798).
  The `bgezall` at 0x2e33148 calls `__glSetError [0x2e315d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e33168 calls `__GLconvolutionParameter [0x2e32e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0x2e3313c goes to 0x2e33160 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The return at 0x2e33158 has v0 = ?.

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33180 (n64).
  It occupies 96 bytes.
  The `ld` at 0x2e331b0 loads 8 bytes from abs 0x2efa800 via base gp (0x2f00798).
  The `ld` at 0x2e331cc loads 8 bytes from abs 0x2efa880 via base gp (0x2f00798).
  The `bgezall` at 0x2e331b4 calls `__glSetError [0x2e315d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x2e331d0 calls `__GLconvolutionParameter [0x2e32e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0x2e33198 goes to 0x2e331cc when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2e331a4 goes to 0x2e331cc when a1 == v1(=0x8014) and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x2e331ac goes to 0x2e331cc when a1 == a3(=0x8015) and falls through when a1 != a3(=0x8015).
  The return at 0x2e331c4 has v0 = ?.

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e334c0 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2e334d4 loads 8 bytes from abs 0x2efa8a8 via base gp (0x2f00798).
  The `bgezall` at 0x2e334dc calls `__GLgetConvolutionParameter [0x2e331e0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2e334ec has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33500 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2e33514 loads 8 bytes from abs 0x2efa8a8 via base gp (0x2f00798).
  The `bgezall` at 0x2e3351c calls `__GLgetConvolutionParameter [0x2e331e0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2e3352c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39ae0 (n64).
  It occupies 196 bytes.
  The `ld` at 0x2e39af8 loads 8 bytes from abs 0x2ef8800 via base gp (0x2f00798).
  The `bgezall` at 0x2e39b14 calls `NurbsKnots1Common [0x2e398d0]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e39b28 goes to 0x2e39b94 when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2e39b30 goes to 0x2e39b94 when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2e39b40 goes to 0x2e39b5c when (s0(=a2) & 0x1) == 0 and falls through when (s0(=a2) & 0x1) != 0.
  The `beq` branch at 0x2e39b5c goes to 0x2e39b94 when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` branch at 0x2e39b8c goes to 0x2e39b70 when s0(=a2) != a4(?) and falls through when s0(=a2) == a4(?).
  The return at 0x2e39b9c has v0 = ret(NurbsKnots1Common).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39bb0 (n64).
  It occupies 236 bytes.
  The `ld` at 0x2e39bc8 loads 8 bytes from abs 0x2ef8800 via base gp (0x2f00798).
  The `bgezall` at 0x2e39be4 calls `NurbsKnots1Common [0x2e398d0]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e39bf4 goes to 0x2e39c8c when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2e39bfc goes to 0x2e39c8c when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2e39c10 goes to 0x2e39c38 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0x2e39c30 goes to 0x2e39c18 when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0x2e39c38 goes to 0x2e39c8c when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` branch at 0x2e39c84 goes to 0x2e39c40 when s0(=a2) != a3(?) and falls through when s0(=a2) == a3(?).
  The return at 0x2e39c94 has v0 = ret(NurbsKnots1Common).

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e44c30 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2e44c44 loads 8 bytes from abs 0x2efac48 via base gp (0x2f00798).
  The `bgezall` at 0x2e44c4c calls `__glGetHistogramParameters [0x2e44a80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2e44c5c has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e44c70 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2e44c84 loads 8 bytes from abs 0x2efac48 via base gp (0x2f00798).
  The `bgezall` at 0x2e44c8c calls `__glGetHistogramParameters [0x2e44a80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2e44c9c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e45220 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2e45224 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x2efa800 via base gp (0x2f00798), including `ld` at 0x2e4524c, `ld` at 0x2e4527c.
  The `ld` at 0x2e45268 loads 8 bytes from abs 0x2efac60 via base gp (0x2f00798).
  The `ld` at 0x2e45270 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `jalr` at 0x2e45250 calls `__glSetError [0x2e315d0]` with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e4526c calls `__glResetMinmax [0x2e44ff0]` with a0=[0x1020]:8, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e45280 calls `__glSetError [0x2e315d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e4523c goes to 0x2e4527c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e45248 goes to 0x2e45268 when a0 == a1(=0x802e) and falls through when a0 != a1(=0x802e).
  The return at 0x2e45260 has v0 = ?.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e45540 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2e45554 loads 8 bytes from abs 0x2efac80 via base gp (0x2f00798).
  The `bgezall` at 0x2e4555c calls `__glGetMinmaxParameters [0x2e45460]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2e4556c has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e45580 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2e45594 loads 8 bytes from abs 0x2efac80 via base gp (0x2f00798).
  The `bgezall` at 0x2e4559c calls `__glGetMinmaxParameters [0x2e45460]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2e455ac has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e533a0 (n64).
  It occupies 12 bytes.
  The return at 0x2e533a4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e533c0 (n64).
  It occupies 12 bytes.
  The return at 0x2e533c4 has v0 = ?.

- `__glim_NewList` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd991e00 (o32).
  It occupies 552 bytes.
  The `lw` at 0xd991e28 loads 4 bytes from abs 0x1018 via base a2 (0x1000).
  The `lw` at 0xd991e30 loads 4 bytes from abs 0x1010 via base a2 (0x1000).
  5 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd991e3c, `lw` at 0xd991e6c, `lw` at 0xd991e94.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x137c via base v1 ([0x1010]+4924), including `lw` at 0xd991e68, `lw` at 0xd991e84.
  The `lw` at 0xd991eb0 loads 4 bytes from [0x1010] +0x1360 via base v1 ([0x1010]+4924).
  3 such `lw` accesses load 4 bytes from abs 0x1048 via base a2 (0x1000), including `lw` at 0xd991ed4, `lw` at 0xd991ee0, `lw` at 0xd991f24.
  The `lw` at 0xd991ed8 loads 4 bytes from [0x1010] +0x1394 via base v1 ([0x1010]+4924).
  The `lw` at 0xd991ee8 loads 4 bytes from [0x1010] +0x318c via base s0 ([0x1010]).
  The `sw` at 0xd991f08 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value ret(unknown).
  3 such `lw` accesses load 4 bytes from abs 0xda86888 via base gp (0xda8bc00), including `lw` at 0xd991f40, `lw` at 0xd991f7c, `lw` at 0xd991f9c.
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xd991f70, `lw` at 0xd992000.
  The `lw` at 0xd991f80 loads 4 bytes from [0x1010] +0x1f58 via base s0 ([0x1010]).
  The `sw` at 0xd991fc0 stores 4 bytes to [0x1010] +0x17f4 via base s0 ([0x1010]) with value unknown.
  The `sw` at 0xd991fc8 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value a0.
  4 such `sw` accesses store 4 bytes to unknown (base unknown) via base v1 (unknown) with value 0x0, including `sw` at 0xd991fd0, `sw` at 0xd991fd4, `sw` at 0xd991fd8.
  The `sw` at 0xd991fe0 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value a1.
  The `lw` at 0xd991fe4 loads 4 bytes from [0x1010] +0x2e3c via base s0 ([0x1010]).
  The `jalr` at 0xd991e44 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991e74 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991e9c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991ebc calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991ef0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991f14 calls `__glSetError [0xd9d1af8]` with a0=0x505, a1=unknown, a2=0x1000, a3=unknown.
  The `jalr` at 0xd991f50 calls `__glMipsCopyDispatch [0xda6cb70]` with a0=unknown, a1=[0x1010]+9920, a2=unknown, a3=unknown.
  The `jalr` at 0xd991f88 calls `__glMipsCopyDispatch [0xda6cb70]` with a0=[[0x1010]+8024], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd991fa8 calls `__glMipsCopyDispatch [0xda6cb70]` with a0=[0x1010]+6136, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd991ff0 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd992008 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0xd991e34 goes to 0xd991e54 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd991e58 goes to 0xd991e84 when t7(=a1) == at(=0x1300) and falls through when t7(=a1) != at(=0x1300).
  The `beql` branch at 0xd991e64 goes to 0xd991e88 when t7(=a1) == at(=0x1301) and falls through when t7(=a1) != at(=0x1301).
  The `beq` branch at 0xd991e8c goes to 0xd991eac when t8(=[[0x1010]+4988]) == 0 and falls through when t8(=[[0x1010]+4988]) != 0.
  The `bnel` branch at 0xd991eac goes to 0xd991ed0 when t9(=a0) != 0 and falls through when t9(=a0) == 0.
  The `beql` branch at 0xd991ed0 goes to 0xd991f28 when t0(=[[0x1010]+4960]) == 0 and falls through when t0(=[[0x1010]+4960]) != 0.
  The `bnel` branch at 0xd991edc goes to 0xd991f28 when t1(=[[0x1010]+5012]) != 0 and falls through when t1(=[[0x1010]+5012]) == 0.
  The `bne` branch at 0xd991f04 goes to 0xd991f24 when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd991f30 goes to 0xd991f40 when t2(=[0x1048]) == 0 and falls through when t2(=[0x1048]) != 0.
  The `bne` branch at 0xd991f68 goes to 0xd991f9c when t3(=a1) != at(=0x1301) and falls through when t3(=a1) == at(=0x1301).
  The `bne` branch at 0xd991f74 goes to 0xd991f9c when t4(?) != 0 and falls through when t4(?) == 0.
  The `beq` branch at 0xd991fe8 goes to 0xd992000 when v0(=[[0x1010]+11836]) == 0 and falls through when v0(=[[0x1010]+11836]) != 0.
  The return at 0xd992020 has v0 = ?.

- `__gllc_CallList` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9922b4 (o32).
  It occupies 148 bytes.
  The `lw` at 0xd9922d4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9922d8 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xd9922f0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd992314 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x0.
  The `lw` at 0xd992320 loads 4 bytes from abs 0xda84318 via base gp (0xda8bc00).
  The `sw` at 0xd992324 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xd992328 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xd9922e0 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9922fc calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd99232c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xd992348, a3=unknown.
  The `bne` branch at 0xd9922d0 goes to 0xd9922f0 when a0 != 0 and falls through when a0 == 0.
  The `beq` branch at 0xd99230c goes to 0xd992338 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd992340 has v0 = ?.

- `__gllc_CallLists` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd992778 (o32).
  It occupies 300 bytes.
  The `lw` at 0xd9927a4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9927a8 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  The `lw` at 0xd9927d8 loads 4 bytes from abs 0xda872e4 via base gp (0xda8bc00).
  The `lbu` at 0xd9927e4 loads 1 byte from table(0xda75e10) +0x0 via base t8 (table(0xda77210)).
  The `lw` at 0xd992808 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xd992820 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd992844 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `sw` at 0xd992850 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd992858 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xd99285c loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xd99287c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd992880 loads 4 bytes from abs 0xda8432c via base gp (0xda8bc00).
  The `jalr` at 0xd9927b0 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xd992810 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xd99282c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=unknown, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xd992868 calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0xd992884 calls `__glDlistAppendOp [0xd992ec8]` with a0=[0x1010], a1=unknown, a2=0xd9928a4, a3=unknown.
  The `bgez` branch at 0xd9927a0 goes to 0xd9927c0 when a0 >= 0 (signed) and falls through when a0 < 0 (signed).
  The `bne` branch at 0xd9927c4 goes to 0xd9927e8 when a3(=a1) < 0x1400 (unsigned) and falls through when a3(=a1) >= 0x1400 (unsigned).
  The `beql` branch at 0xd9927d0 goes to 0xd9927ec when a3(=a1) >= 0x140a (unsigned) and falls through when a3(=a1) < 0x140a (unsigned).
  The `bgez` branch at 0xd992800 goes to 0xd992820 when a2(?) >= 0 (signed) and falls through when a2(?) < 0 (signed).
  The `beq` branch at 0xd992838 goes to 0xd992890 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd99289c has v0 = ?.

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c0934 (o32).
  It occupies 164 bytes.
  The `lw` at 0xd9c0950 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9c0960 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9c0964, `lw` at 0xd9c0988.
  The `lw` at 0xd9c0984 loads 4 bytes from [0x1010] +0x17f0 via base a3 ([0x1010]).
  The `lw` at 0xd9c09b4 loads 4 bytes from abs 0xda85080 via base gp (0xda8bc00).
  The `jalr` at 0xd9c096c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xd9c0990 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xd9c09bc calls `__glNamesGenRange [0xd9f5158]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=[0x1010].
  The `bne` branch at 0xd9c095c goes to 0xd9c0980 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bgez` branch at 0xd9c0980 goes to 0xd9c09a4 when a2(=a0) >= 0 (signed) and falls through when a2(=a0) < 0 (signed).
  The `bne` branch at 0xd9c09a4 goes to 0xd9c09b4 when a2(=a0) != 0 and falls through when a2(=a0) == 0.
  The return at 0xd9c09d0 has v0 = ?.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c09d8 (o32).
  It occupies 116 bytes.
  The `lw` at 0xd9c09f4 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9c0a04 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9c0a08 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9c0a24 loads 4 bytes from abs 0xda85088 via base gp (0xda8bc00).
  The `lw` at 0xd9c0a28 loads 4 bytes from [0x1010] +0x17f0 via base a3 ([0x1010]).
  The `jalr` at 0xd9c0a10 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xd9c0a30 calls `__glNamesIsName [0xd9f58d8]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=[0x1010].
  The `bne` branch at 0xd9c0a00 goes to 0xd9c0a24 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The return at 0xd9c0a44 has v0 = ?.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c0bec (o32).
  It occupies 164 bytes.
  The `lw` at 0xd9c0c08 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9c0c18 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9c0c2c, `lw` at 0xd9c0c4c.
  The `lw` at 0xd9c0c48 loads 4 bytes from [0x1010] +0x17f0 via base t8 ([0x1010]).
  The `lw` at 0xd9c0c6c loads 4 bytes from abs 0xda85084 via base gp (0xda8bc00).
  The `jalr` at 0xd9c0c34 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9c0c54 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9c0c74 calls `__glNamesDeleteRange [0xd9f54c0]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `bne` branch at 0xd9c0c24 goes to 0xd9c0c44 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `bgez` branch at 0xd9c0c44 goes to 0xd9c0c64 when a3(=a1) >= 0 (signed) and falls through when a3(=a1) < 0 (signed).
  The `beql` branch at 0xd9c0c64 goes to 0xd9c0c84 when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  The return at 0xd9c0c88 has v0 = ?.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c7e74 (o32).
  It occupies 300 bytes.
  The `lw` at 0xd9c7e98 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9c7ea0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9c7eac loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9c7eb4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9c7ea4 goes to 0xd9c7ec4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bc1fl` branch at 0xd9c7ed4 goes to 0xd9c7ee4 when not (f12 < f2 (c.lt.s at 0xd9c7ecc)) and falls through when f12 < f2 (c.lt.s at 0xd9c7ecc).
  The `bc1fl` branch at 0xd9c7ee8 goes to 0xd9c7ef8 when not (f0(=[[0x1010]+3544]) < f12 (c.lt.s at 0xd9c7ee0)) and falls through when f0(=[[0x1010]+3544]) < f12 (c.lt.s at 0xd9c7ee0).
  The `bc1fl` branch at 0xd9c7efc goes to 0xd9c7f0c when not (f14 < f2 (c.lt.s at 0xd9c7ef4)) and falls through when f14 < f2 (c.lt.s at 0xd9c7ef4).
  The `bc1fl` branch at 0xd9c7f10 goes to 0xd9c7f20 when not (f0 < f14 (c.lt.s at 0xd9c7f08)) and falls through when f0 < f14 (c.lt.s at 0xd9c7f08).
  The `bc1fl` branch at 0xd9c7f24 goes to 0xd9c7f34 when not (f4(=a2) < f2 (c.lt.s at 0xd9c7f1c)) and falls through when f4(=a2) < f2 (c.lt.s at 0xd9c7f1c).
  The `bc1fl` branch at 0xd9c7f3c goes to 0xd9c7f4c when not (f0 < f6 (c.lt.s at 0xd9c7f34)) and falls through when f0 < f6 (c.lt.s at 0xd9c7f34).
  The `bc1fl` branch at 0xd9c7f54 goes to 0xd9c7f64 when not (f8(=a3) < f2 (c.lt.s at 0xd9c7f4c)) and falls through when f8(=a3) < f2 (c.lt.s at 0xd9c7f4c).
  The `bc1fl` branch at 0xd9c7f6c goes to 0xd9c7f7c when not (f0 < f10 (c.lt.s at 0xd9c7f64)) and falls through when f0 < f10 (c.lt.s at 0xd9c7f64).
  The return at 0xd9c7f98 has v0 = ?.

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c7fa0 (o32).
  It occupies 112 bytes.
  The `lw` at 0xd9c7fbc loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9c7fc4 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9c7fd0 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `sw` at 0xd9c7ff0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9c7ff4 loads 4 bytes from [0x1010] +0x2e24 via base v0 ([0x1010]).
  The `sw` at 0xd9c7ffc stores 4 bytes to [0x1010] +0x2e24 via base v0 ([0x1010]) with value ([[0x1010]+11812] | 0x4).
  The `jalr` at 0xd9c7fd8 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9c7fc8 goes to 0xd9c7fe8 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The return at 0xd9c8008 has v0 = ?.

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf754 (o32).
  It occupies 136 bytes.
  The `lw` at 0xd9cf778 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cf788 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cf798 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cf7b0 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cf7a0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf7c0 calls `__glColorTableParameterv [0xd9cf650]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf790 goes to 0xd9cf7b0 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cf7d4 has v0 = ?.

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf7dc (o32).
  It occupies 144 bytes.
  The `lw` at 0xd9cf804 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cf814 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cf828 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cf840 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cf830 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf850 calls `__glColorTableParameterv [0xd9cf650]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cf820 goes to 0xd9cf840 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cf864 has v0 = ?.

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf974 (o32).
  It occupies 136 bytes.
  The `lw` at 0xd9cf998 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cf9a8 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cf9b8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cf9d0 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cf9c0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf9e0 calls `__glGetColorTableParameterv [0xd9cf86c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf9b0 goes to 0xd9cf9d0 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cf9f4 has v0 = ?.

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf9fc (o32).
  It occupies 144 bytes.
  The `lw` at 0xd9cfa24 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cfa34 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cfa48 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cfa60 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cfa50 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfa70 calls `__glGetColorTableParameterv [0xd9cf86c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cfa40 goes to 0xd9cfa60 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cfa84 has v0 = ?.

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d3364 (o32).
  It occupies 100 bytes.
  The `lw` at 0xd9d3388 loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d33a4 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3394 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1404.
  The `jalr` at 0xd9d33ac calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3380 goes to 0xd9d33a4 when a1 != at(=0x8013) and falls through when a1 == at(=0x8013).
  The return at 0xd9d33c0 has v0 = ?.

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d33c8 (o32).
  It occupies 112 bytes.
  The `lw` at 0xd9d33fc loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d3414 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3404 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `jalr` at 0xd9d341c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d33e0 goes to 0xd9d33fc when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d33ec goes to 0xd9d33fc when a1 == at(=0x8014) and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d33f4 goes to 0xd9d3414 when a1 != at(=0x8015) and falls through when a1 == at(=0x8015).
  The return at 0xd9d3430 has v0 = ?.

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d3438 (o32).
  It occupies 100 bytes.
  The `lw` at 0xd9d345c loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d3478 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3468 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1406.
  The `jalr` at 0xd9d3480 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3454 goes to 0xd9d3478 when a1 != at(=0x8013) and falls through when a1 == at(=0x8013).
  The return at 0xd9d3494 has v0 = ?.

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d349c (o32).
  It occupies 112 bytes.
  The `lw` at 0xd9d34d0 loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d34e8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d34d8 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `jalr` at 0xd9d34f0 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d34b4 goes to 0xd9d34d0 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d34c0 goes to 0xd9d34d0 when a1 == at(=0x8014) and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d34c8 goes to 0xd9d34e8 when a1 != at(=0x8015) and falls through when a1 == at(=0x8015).
  The return at 0xd9d3504 has v0 = ?.

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d3864 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9d3870 loads 4 bytes from abs 0xda84c88 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3880 calls `__GLgetConvolutionParameter [0xd9d350c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9d3894 has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d389c (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9d38a8 loads 4 bytes from abs 0xda84c88 via base gp (0xda8bc00).
  The `jalr` at 0xd9d38b8 calls `__GLgetConvolutionParameter [0xd9d350c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9d38cc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_Map1d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d5d14 (o32).
  It occupies 240 bytes.
  The `lw` at 0xd9d5d34 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9d5d44 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d5d58, `lw` at 0xd9d5db8.
  The `lw` at 0xd9d5d74 loads 4 bytes from abs 0xda84d48 via base gp (0xda8bc00).
  The `lw` at 0xd9d5da0 loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v0 (ret(__glSetUpMap1)).
  The `lw` at 0xd9d5dd4 loads 4 bytes from abs 0xda84d34 via base gp (0xda8bc00).
  The `lw` at 0xd9d5dd8 loads 4 bytes from unknown (base unknown) via base t2 (unknown).
  The `lw` at 0xd9d5ddc loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v1 (ret(__glSetUpMap1)).
  The `jalr` at 0xd9d5d60 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d5d88 calls `__glSetUpMap1 [0xd9d6e48]` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9d5dc0 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d5de8 calls `__glFillMap1d [0xd9d6ab0]` with a0=[ret(__glSetUpMap1)], a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0xd9d5d50 goes to 0xd9d5d70 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d5d94 goes to 0xd9d5df4 when v0(=ret(__glSetUpMap1)) == 0 and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d5db0 goes to 0xd9d5dd0 when a2(?) >= t8(=[ret(__glSetUpMap1)]) (signed) and falls through when a2(?) < t8(=[ret(__glSetUpMap1)]) (signed).
  The return at 0xd9d5dfc has v0 = ?.

- `__glim_Map1f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d5e04 (o32).
  It occupies 232 bytes.
  The `lw` at 0xd9d5e28 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9d5e38 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d5e4c, `lw` at 0xd9d5ea0.
  The `lw` at 0xd9d5e64 loads 4 bytes from abs 0xda84d48 via base gp (0xda8bc00).
  The `lw` at 0xd9d5e88 loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v0 (ret(__glSetUpMap1)).
  The `lw` at 0xd9d5ebc loads 4 bytes from abs 0xda84d30 via base gp (0xda8bc00).
  The `lw` at 0xd9d5ec0 loads 4 bytes from unknown (base unknown) via base t2 (unknown).
  The `lw` at 0xd9d5ec4 loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v1 (ret(__glSetUpMap1)).
  The `jalr` at 0xd9d5e54 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d5e70 calls `__glSetUpMap1 [0xd9d6e48]` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9d5ea8 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xd9d5ed0 calls `__glFillMap1f [0xd9d698c]` with a0=[ret(__glSetUpMap1)], a1=unknown, a2=a3 at entry (arg3), a3=unknown.
  The `bne` branch at 0xd9d5e44 goes to 0xd9d5e64 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d5e80 goes to 0xd9d5edc when v0(=ret(__glSetUpMap1)) == 0 and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d5e98 goes to 0xd9d5eb8 when a2(=a3) >= t8(=[ret(__glSetUpMap1)]) (signed) and falls through when a2(=a3) < t8(=[ret(__glSetUpMap1)]) (signed).
  The return at 0xd9d5ee4 has v0 = ?.

- `__glim_Map2d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d5eec (o32).
  It occupies 324 bytes.
  The `lw` at 0xd9d5f0c loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9d5f1c loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d5f30, `lw` at 0xd9d5fac, `lw` at 0xd9d5fd0.
  The `lw` at 0xd9d5f60 loads 4 bytes from abs 0xda84d4c via base gp (0xda8bc00).
  The `lw` at 0xd9d5f98 loads 4 bytes from ret(__glSetUpMap2) +0x0 via base v0 (ret(__glSetUpMap2)).
  The `lw` at 0xd9d5ff0 loads 4 bytes from ret(__glSetUpMap2) +0x0 via base t0 (ret(__glSetUpMap2)).
  The `lw` at 0xd9d5ff8 loads 4 bytes from abs 0xda84d40 via base gp (0xda8bc00).
  The `lw` at 0xd9d6000 loads 4 bytes from unknown (base unknown) via base t3 (unknown).
  The `jalr` at 0xd9d5f38 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d5f80 calls `__glSetUpMap2 [0xd9d6f8c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9d5fb4 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d5fd8 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d6014 calls `__glFillMap2d [0xd9d6d08]` with a0=[ret(__glSetUpMap2)], a1=unknown, a2=unknown, a3=unknown.
  The `bnel` branch at 0xd9d5f28 goes to 0xd9d5f4c when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d5f8c goes to 0xd9d6020 when v0(=ret(__glSetUpMap2)) == 0 and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `beql` branch at 0xd9d5fa4 goes to 0xd9d5fc8 when a3(?) >= v1(=[ret(__glSetUpMap2)]) (signed) and falls through when a3(?) < v1(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d5fc8 goes to 0xd9d5fe8 when at(?) == 0 and falls through when at(?) != 0.
  The return at 0xd9d6028 has v0 = ?.

- `__glim_Map2f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6030 (o32).
  It occupies 304 bytes.
  The `lw` at 0xd9d6054 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9d6064 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d6078, `lw` at 0xd9d60dc, `lw` at 0xd9d6100.
  The `lw` at 0xd9d6090 loads 4 bytes from abs 0xda84d4c via base gp (0xda8bc00).
  The `lw` at 0xd9d60c8 loads 4 bytes from ret(__glSetUpMap2) +0x0 via base v0 (ret(__glSetUpMap2)).
  The `lw` at 0xd9d6120 loads 4 bytes from ret(__glSetUpMap2) +0x0 via base t0 (ret(__glSetUpMap2)).
  The `lw` at 0xd9d6128 loads 4 bytes from abs 0xda84d3c via base gp (0xda8bc00).
  The `lw` at 0xd9d6130 loads 4 bytes from unknown (base unknown) via base t3 (unknown).
  The `jalr` at 0xd9d6080 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d60b0 calls `__glSetUpMap2 [0xd9d6f8c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9d60e4 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6108 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6144 calls `__glFillMap2f [0xd9d6b94]` with a0=[ret(__glSetUpMap2)], a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d6070 goes to 0xd9d6090 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d60c0 goes to 0xd9d6150 when v0(=ret(__glSetUpMap2)) == 0 and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `beql` branch at 0xd9d60d4 goes to 0xd9d60f8 when a3 >= v1(=[ret(__glSetUpMap2)]) (signed) and falls through when a3 < v1(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d60f8 goes to 0xd9d6118 when at(?) == 0 and falls through when at(?) != 0.
  The return at 0xd9d6158 has v0 = ?.

- `__glim_MapGrid1d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d63a4 (o32).
  It occupies 148 bytes.
  The `lw` at 0xd9d63c0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d63d4 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d63d8, `lw` at 0xd9d63f8.
  The `sw` at 0xd9d641c stores 4 bytes to [0x1010] +0x798 via base v0 ([0x1010]) with value a0.
  The `jalr` at 0xd9d63e0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6400 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d63d0 goes to 0xd9d63f0 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bgtzl` branch at 0xd9d63f0 goes to 0xd9d6414 when a0 > 0 (signed) and falls through when a0 <= 0 (signed).
  The return at 0xd9d6430 has v0 = ?.

- `__glim_MapGrid1f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6438 (o32).
  It occupies 136 bytes.
  The `lw` at 0xd9d6454 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d6468 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d646c, `lw` at 0xd9d648c.
  The `sw` at 0xd9d64ac stores 4 bytes to [0x1010] +0x798 via base v0 ([0x1010]) with value a0.
  The `jalr` at 0xd9d6474 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6494 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d6464 goes to 0xd9d6484 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bgtzl` branch at 0xd9d6484 goes to 0xd9d64a8 when a0 > 0 (signed) and falls through when a0 <= 0 (signed).
  The return at 0xd9d64b8 has v0 = ?.

- `__glim_MapGrid2d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d64c0 (o32).
  It occupies 184 bytes.
  The `lw` at 0xd9d64dc loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d64f0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d64f4, `lw` at 0xd9d651c.
  The `sw` at 0xd9d6540 stores 4 bytes to [0x1010] +0x7a8 via base v0 ([0x1010]) with value a0.
  The `sw` at 0xd9d655c stores 4 bytes to [0x1010] +0x7b8 via base v0 ([0x1010]) with value unknown.
  The `jalr` at 0xd9d64fc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6524 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d64ec goes to 0xd9d650c when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `blez` branch at 0xd9d650c goes to 0xd9d651c when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `bgtzl` branch at 0xd9d6514 goes to 0xd9d6538 when v1(?) > 0 (signed) and falls through when v1(?) <= 0 (signed).
  The return at 0xd9d6570 has v0 = ?.

- `__glim_MapGrid2f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6578 (o32).
  It occupies 164 bytes.
  The `lw` at 0xd9d6594 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d65a8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d65ac, `lw` at 0xd9d65d4.
  The `sw` at 0xd9d65f4 stores 4 bytes to [0x1010] +0x7a8 via base v0 ([0x1010]) with value a0.
  The `sw` at 0xd9d6604 stores 4 bytes to [0x1010] +0x7b8 via base v0 ([0x1010]) with value a3.
  The `jalr` at 0xd9d65b4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d65dc calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d65a4 goes to 0xd9d65c4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `blez` branch at 0xd9d65c4 goes to 0xd9d65d4 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `bgtzl` branch at 0xd9d65cc goes to 0xd9d65f0 when a3 > 0 (signed) and falls through when a3 <= 0 (signed).
  The return at 0xd9d6614 has v0 = ?.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d661c (o32).
  It occupies 244 bytes.
  The `lw` at 0xd9d663c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d6640 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d6664 loads 4 bytes from [0x1010] +0x2e40 via base a3 ([0x1010]).
  The `sw` at 0xd9d6688 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d668c, `lw` at 0xd9d66ec.
  The `lw` at 0xd9d66bc loads 4 bytes from abs 0xda84d58 via base gp (0xda8bc00).
  The `lw` at 0xd9d66d4 loads 4 bytes from abs 0xda84d5c via base gp (0xda8bc00).
  The `jalr` at 0xd9d666c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9d6694 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9d66c4 calls `__glEvalMesh1Line [0xd9d8c9c]` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `jalr` at 0xd9d66dc calls `__glEvalMesh1Point [0xd9d8ea4]` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `jalr` at 0xd9d66f4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `beql` branch at 0xd9d6648 goes to 0xd9d66a8 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d6650 goes to 0xd9d668c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d66ac goes to 0xd9d66d4 when t6(=a0) == at(=0x1b00) and falls through when t6(=a0) != at(=0x1b00).
  The `bne` branch at 0xd9d66b4 goes to 0xd9d66ec when t6(=a0) != at(=0x1b01) and falls through when t6(=a0) == at(=0x1b01).
  The return at 0xd9d6708 has v0 = ?.

- `__glim_EvalMesh2` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6790 (o32).
  It occupies 308 bytes.
  The `lw` at 0xd9d67bc loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d67c0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d67dc loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d67f8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d67fc, `lw` at 0xd9d689c.
  The `lw` at 0xd9d6840 loads 4 bytes from abs 0xda84d60 via base gp (0xda8bc00).
  The `lw` at 0xd9d6860 loads 4 bytes from abs 0xda84d68 via base gp (0xda8bc00).
  The `lw` at 0xd9d6880 loads 4 bytes from abs 0xda84d64 via base gp (0xda8bc00).
  The `jalr` at 0xd9d67e4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6804 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6850 calls `__glEvalMesh2Fill [0xd9d92b0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `jalr` at 0xd9d6870 calls `__glEvalMesh2Line [0xd9d997c]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `jalr` at 0xd9d688c calls `__glEvalMesh2Point [0xd9d96cc]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `jalr` at 0xd9d68a4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=unknown.
  The `beql` branch at 0xd9d67c8 goes to 0xd9d6818 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d67d0 goes to 0xd9d67fc when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d6820 goes to 0xd9d6880 when t6(=a0) == at(=0x1b00) and falls through when t6(=a0) != at(=0x1b00).
  The `beq` branch at 0xd9d682c goes to 0xd9d6860 when t6(=a0) == at(=0x1b01) and falls through when t6(=a0) != at(=0x1b01).
  The `bne` branch at 0xd9d6838 goes to 0xd9d689c when t6(=a0) != at(=0x1b02) and falls through when t6(=a0) == at(=0x1b02).
  The return at 0xd9d68bc has v0 = ?.

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9da26c (o32).
  It occupies 208 bytes.
  The `lw` at 0xd9da278 loads 4 bytes from abs 0xda83c3c via base gp (0xda8bc00).
  The `jalr` at 0xd9da298 calls `NurbsKnots1Common [0xd9d9fc8]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9da2b0 goes to 0xd9da32c when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9da2b8 goes to 0xd9da32c when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd9da2c4 goes to 0xd9da2ec when (a2 & 0x3) == 0 and falls through when (a2 & 0x3) != 0.
  The `bne` branch at 0xd9da2e0 goes to 0xd9da2d0 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da2e8 goes to 0xd9da32c when a0(?) == a2 and falls through when a0(?) != a2.
  The `bne` branch at 0xd9da324 goes to 0xd9da2f0 when a0(?) != a2 and falls through when a0(?) == a2.
  The return at 0xd9da334 has v0 = ?.

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9da33c (o32).
  It occupies 228 bytes.
  The `lw` at 0xd9da348 loads 4 bytes from abs 0xda83c3c via base gp (0xda8bc00).
  The `jalr` at 0xd9da368 calls `NurbsKnots1Common [0xd9d9fc8]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9da380 goes to 0xd9da410 when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9da388 goes to 0xd9da410 when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd9da394 goes to 0xd9da3c0 when (a2 & 0x3) == 0 and falls through when (a2 & 0x3) != 0.
  The `bne` branch at 0xd9da3b4 goes to 0xd9da3a0 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da3bc goes to 0xd9da410 when a0(?) == a2 and falls through when a0(?) != a2.
  The `bne` branch at 0xd9da408 goes to 0xd9da3c4 when a0(?) != a2 and falls through when a0(?) == a2.
  The return at 0xd9da418 has v0 = ?.

- `__glim_Finish` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9dbac0 (o32).
  It occupies 104 bytes.
  The `lw` at 0xd9dbadc loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9dbae4 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9dbaec loads 4 bytes from [0x1010] +0x2e34 via base a0 ([0x1010]).
  The `lw` at 0xd9dbaf0 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9dbaf8 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9dbb0c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9dbae8 goes to 0xd9dbb0c when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The return at 0xd9dbb20 has v0 = ?.

- `__glim_GetMaterialfv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9de2e0 (o32).
  It occupies 416 bytes.
  The `lw` at 0xd9de2fc loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9de30c loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9de318, `lw` at 0xd9de360, `lw` at 0xd9de45c.
  The `lw` at 0xd9de3d4 loads 4 bytes from abs 0xda84eac via base gp (0xda8bc00).
  The `jalr` at 0xd9de320 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9de368 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9de3e0 calls `__glUnScaleColorf [0xd9e5888]` with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=a2 at entry (arg2).
  The `jalr` at 0xd9de464 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `bnel` branch at 0xd9de310 goes to 0xd9de334 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9de334 goes to 0xd9de350 when a0 == at(=0x404) and falls through when a0 != at(=0x404).
  The `beq` branch at 0xd9de340 goes to 0xd9de358 when a0 == at(=0x405) and falls through when a0 != at(=0x405).
  The `beq` branch at 0xd9de37c goes to 0xd9de3f0 when a1 == at(=0x1200) and falls through when a1 != at(=0x1200).
  The `beq` branch at 0xd9de384 goes to 0xd9de414 when a1 == at(=0x1201) and falls through when a1 != at(=0x1201).
  The `beq` branch at 0xd9de38c goes to 0xd9de438 when a1 == at(=0x1202) and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xd9de394 goes to 0xd9de3d4 when a1 == at(=0x1600) and falls through when a1 != at(=0x1600).
  The `beq` branch at 0xd9de39c goes to 0xd9de3c8 when a1 == at(=0x1601) and falls through when a1 != at(=0x1601).
  The `bne` branch at 0xd9de3a4 goes to 0xd9de45c when a1 != at(=0x1603) and falls through when a1 == at(=0x1603).
  The return at 0xd9de478 has v0 = ?.

- `__glim_GetMaterialiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9de480 (o32).
  It occupies 936 bytes.
  The `lw` at 0xd9de4a8 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9de4b8 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9de4bc, `lw` at 0xd9de500, `lw` at 0xd9de7fc.
  2 such `lw` accesses load 4 bytes from abs 0xda84e14 via base gp (0xda8bc00), including `lw` at 0xd9de550, `lw` at 0xd9de578.
  The `lw` at 0xd9de5a0 loads 4 bytes from abs 0xda84eb0 via base gp (0xda8bc00).
  12 such `lw` accesses load 4 bytes from abs 0xda873c8 via base gp (0xda8bc00), including `lw` at 0xd9de5c4, `lw` at 0xd9de5f4, `lw` at 0xd9de624.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0 via base s2 (a2) with value unknown, including `sw` at 0xd9de5e8, `sw` at 0xd9de6a8, `sw` at 0xd9de768.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4 via base s2 (a2) with value unknown, including `sw` at 0xd9de618, `sw` at 0xd9de6d8, `sw` at 0xd9de798.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8 via base s2 (a2) with value unknown, including `sw` at 0xd9de648, `sw` at 0xd9de708, `sw` at 0xd9de7c8.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0xc via base s2 (a2) with value unknown, including `sw` at 0xd9de678, `sw` at 0xd9de738, `sw` at 0xd9de7f8.
  The `jalr` at 0xd9de4c4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de508 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de568 calls `__glConvertResult [0xd9df750]` with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d4, 0x624), a3=0x3.
  The `jalr` at 0xd9de590 calls `__glConvertResult [0xd9df750]` with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d0, 0x620), a3=0x3.
  The `jalr` at 0xd9de5ac calls `__glUnScaleColori [0xd9e58cc]` with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de5d0 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de600 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de630 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de660 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de690 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de6c0 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de6f0 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de720 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de750 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de780 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de7b0 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de7e0 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9de804 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9de4b4 goes to 0xd9de4d4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9de4d8 goes to 0xd9de4f0 when a0 == at(=0x404) and falls through when a0 != at(=0x404).
  The `beq` branch at 0xd9de4e0 goes to 0xd9de4f8 when a0 == at(=0x405) and falls through when a0 != at(=0x405).
  The `beq` branch at 0xd9de51c goes to 0xd9de5bc when a1 == at(=0x1200) and falls through when a1 != at(=0x1200).
  The `beq` branch at 0xd9de524 goes to 0xd9de67c when a1 == at(=0x1201) and falls through when a1 != at(=0x1201).
  The `beq` branch at 0xd9de52c goes to 0xd9de73c when a1 == at(=0x1202) and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xd9de534 goes to 0xd9de5a0 when a1 == at(=0x1600) and falls through when a1 != at(=0x1600).
  The `beq` branch at 0xd9de53c goes to 0xd9de578 when a1 == at(=0x1601) and falls through when a1 != at(=0x1601).
  The `bne` branch at 0xd9de548 goes to 0xd9de7fc when a1 != at(=0x1603) and falls through when a1 == at(=0x1603).
  The return at 0xd9de820 has v0 = ?.

- `__glim_GetMapiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9def80 (o32).
  It occupies 760 bytes.
  The `lw` at 0xd9defa8 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9defb0 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  4 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9defbc, `lw` at 0xd9df0fc, `lw` at 0xd9df238.
  The `lw` at 0xd9defe4 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `lw` at 0xd9deff0 loads 4 bytes from table(0xda795a0) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xd9df040, `lw` at 0xd9df044.
  4 such `lw` accesses load 4 bytes from abs 0xda84e14 via base gp (0xda8bc00), including `lw` at 0xd9df054, `lw` at 0xd9df09c, `lw` at 0xd9df168.
  The `lw` at 0xd9df05c loads 4 bytes from ([0x1010] + (a0-3472 << 0x2)) +0x70c4 via base t1 (([0x1010] + (a0-3472 << 0x2))).
  The `lw` at 0xd9df0ec loads 4 bytes from table(-0xd6f8) +0x0 via base t4 (table(0xffffffffffff0000)).
  The `sw` at 0xd9df0f8 stores 4 bytes to a2 (arg2 at entry) +0x0 via base t5 (a2) with value entry(-0xd6f8).
  The `lw` at 0xd9df154 loads 4 bytes from ([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3)) +0x6f64 via base v0 (([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3))).
  The `lw` at 0xd9df158 loads 4 bytes from ([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3)) +0x6f60 via base v0 (([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3))).
  The `lw` at 0xd9df15c loads 4 bytes from ([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3)) +0x6f5c via base v0 (([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3))).
  The `lw` at 0xd9df174 loads 4 bytes from ([0x1010] + (a0-3504 << 0x2)) +0x70e8 via base t7 (([0x1010] + (a0-3504 << 0x2))).
  The `lw` at 0xd9df218 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b420 via base v0 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-140160).
  The `sw` at 0xd9df220 stores 4 bytes to a2 (arg2 at entry) +0x0 via base t3 (a2) with value [([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111648].
  The `lw` at 0xd9df228 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b41c via base v0 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-140160).
  The `sw` at 0xd9df234 stores 4 bytes to a2 (arg2 at entry) +0x4 via base v1 (a2+4) with value [([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111644].
  The `jalr` at 0xd9defc4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9df07c calls `__glConvertResult [0xd9df750]` with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0-3472 << 0x2))+28868], a3=0x3.
  The `jalr` at 0xd9df0c4 calls `__glConvertResult [0xd9df750]` with a0=[0x1010], a1=0x0, a2=table(-0xd6f4), a3=0x3.
  The `jalr` at 0xd9df104 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9df1a4 calls `__glConvertResult [0xd9df750]` with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0-3504 << 0x2))+28904], a3=0x3.
  The `jalr` at 0xd9df1ec calls `__glConvertResult [0xd9df750]` with a0=[0x1010], a1=0x0, a2=([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111640, a3=0x3.
  The `jalr` at 0xd9df240 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9df258 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9defb4 goes to 0xd9defd4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9defdc goes to 0xd9df250 when t8(=a0-3472) >= 0x29 (unsigned) and falls through when t8(=a0-3472) < 0x29 (unsigned).
  The `beq` branch at 0xd9df004 goes to 0xd9df02c when a1 == at(=0xa00) and falls through when a1 != at(=0xa00).
  The `beq` branch at 0xd9df010 goes to 0xd9df0d4 when a1 == at(=0xa01) and falls through when a1 != at(=0xa01).
  The `beq` branch at 0xd9df01c goes to 0xd9df08c when a1 == at(=0xa02) and falls through when a1 != at(=0xa02).
  The `beq` branch at 0xd9df118 goes to 0xd9df140 when a1 == at(=0xa00) and falls through when a1 != at(=0xa00).
  The `beq` branch at 0xd9df124 goes to 0xd9df1fc when a1 == at(=0xa01) and falls through when a1 != at(=0xa01).
  The `beq` branch at 0xd9df130 goes to 0xd9df1b4 when a1 == at(=0xa02) and falls through when a1 != at(=0xa02).
  The return at 0xd9df270 has v0 = ?.

- `__glim_GetPixelMapfv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9df278 (o32).
  It occupies 320 bytes.
  The `lw` at 0xd9df294 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9df2a4 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9df2a8, `lw` at 0xd9df394.
  The `lw` at 0xd9df2d0 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `lw` at 0xd9df2dc loads 4 bytes from table(0xda79644) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0 via base a1 (table(-0x9140)), including `lw` at 0xd9df308, `lw` at 0xd9df360.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0 via base a1 (table(-0x9140)), including `lw` at 0xd9df30c, `lw` at 0xd9df364.
  The `lw` at 0xd9df31c loads 4 bytes from unknown (base unknown) via base v1 (unknown).
  The `jalr` at 0xd9df2b0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xd9df39c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `bne` branch at 0xd9df2a0 goes to 0xd9df2c0 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9df2c8 goes to 0xd9df394 when t7(=a0-3184) >= 0xa (unsigned) and falls through when t7(=a0-3184) < 0xa (unsigned).
  The `bltzl` branch at 0xd9df314 goes to 0xd9df3ac when v0(=entry(-0x9140)-1) < 0 (signed) and falls through when v0(=entry(-0x9140)-1) >= 0 (signed).
  The `bgez` branch at 0xd9df334 goes to 0xd9df31c when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bltzl` branch at 0xd9df36c goes to 0xd9df3ac when v0(=entry(-0x9140)-1) < 0 (signed) and falls through when v0(=entry(-0x9140)-1) >= 0 (signed).
  The `bgez` branch at 0xd9df384 goes to 0xd9df374 when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The return at 0xd9df3b0 has v0 = ?.

- `__glim_GetPixelMapuiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9df3b8 (o32).
  It occupies 460 bytes.
  The `lw` at 0xd9df3d4 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9df3e4 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9df3e8, `lw` at 0xd9df560.
  The `lw` at 0xd9df410 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `lw` at 0xd9df41c loads 4 bytes from table(0xda7966c) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0 via base a1 (table(-0x9140)), including `lw` at 0xd9df448, `lw` at 0xd9df498.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0 via base a1 (table(-0x9140)), including `lw` at 0xd9df44c, `lw` at 0xd9df49c.
  The `lw` at 0xd9df45c loads 4 bytes from unknown (base unknown) via base v1 (unknown).
  2 such `sw` accesses store 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown, including `sw` at 0xd9df470, `sw` at 0xd9df54c.
  The `jalr` at 0xd9df3f0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xd9df568 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `bne` branch at 0xd9df3e0 goes to 0xd9df400 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9df408 goes to 0xd9df560 when t7(=a0-3184) >= 0xa (unsigned) and falls through when t7(=a0-3184) < 0xa (unsigned).
  The `bltzl` branch at 0xd9df454 goes to 0xd9df578 when v0(=entry(-0x9140)-1) < 0 (signed) and falls through when v0(=entry(-0x9140)-1) >= 0 (signed).
  The `bgez` branch at 0xd9df46c goes to 0xd9df45c when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bltzl` branch at 0xd9df4a4 goes to 0xd9df578 when v0(=entry(-0x9140)-1) < 0 (signed) and falls through when v0(=entry(-0x9140)-1) >= 0 (signed).
  The `beql` branch at 0xd9df4ec goes to 0xd9df53c when (t2(?) & 0x78) == 0 and falls through when (t2(?) & 0x78) != 0.
  The `bne` branch at 0xd9df518 goes to 0xd9df530 when (t2(?) & 0x78) != 0 and falls through when (t2(?) & 0x78) == 0.
  The `bltz` branch at 0xd9df540 goes to 0xd9df530 when t2(?) < 0 (signed) and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xd9df550 goes to 0xd9df4ac when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The return at 0xd9df57c has v0 = ?.

- `__glim_GetPixelMapusv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9df584 (o32).
  It occupies 460 bytes.
  The `lw` at 0xd9df5a0 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9df5b0 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9df5b4, `lw` at 0xd9df72c.
  The `lw` at 0xd9df5dc loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `lw` at 0xd9df5e8 loads 4 bytes from table(0xda79694) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0 via base a1 (table(-0x9140)), including `lw` at 0xd9df614, `lw` at 0xd9df664.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0 via base a1 (table(-0x9140)), including `lw` at 0xd9df618, `lw` at 0xd9df668.
  The `lw` at 0xd9df628 loads 4 bytes from unknown (base unknown) via base v1 (unknown).
  2 such `sh` accesses store 2 bytes to unknown (base unknown) via base a0 (unknown) with value unknown, including `sh` at 0xd9df63c, `sh` at 0xd9df718.
  The `jalr` at 0xd9df5bc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xd9df734 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `bne` branch at 0xd9df5ac goes to 0xd9df5cc when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9df5d4 goes to 0xd9df72c when t7(=a0-3184) >= 0xa (unsigned) and falls through when t7(=a0-3184) < 0xa (unsigned).
  The `bltzl` branch at 0xd9df620 goes to 0xd9df744 when v0(=entry(-0x9140)-1) < 0 (signed) and falls through when v0(=entry(-0x9140)-1) >= 0 (signed).
  The `bgez` branch at 0xd9df638 goes to 0xd9df628 when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bltzl` branch at 0xd9df670 goes to 0xd9df744 when v0(=entry(-0x9140)-1) < 0 (signed) and falls through when v0(=entry(-0x9140)-1) >= 0 (signed).
  The `beql` branch at 0xd9df6b8 goes to 0xd9df708 when (t2(?) & 0x78) == 0 and falls through when (t2(?) & 0x78) != 0.
  The `bne` branch at 0xd9df6e4 goes to 0xd9df6fc when (t2(?) & 0x78) != 0 and falls through when (t2(?) & 0x78) == 0.
  The `bltz` branch at 0xd9df70c goes to 0xd9df6fc when t2(?) < 0 (signed) and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xd9df71c goes to 0xd9df678 when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The return at 0xd9df748 has v0 = ?.

- `__glim_GetDoublev` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e2260 (o32).
  It occupies 64 bytes.
  The `lw` at 0xd9e226c loads 4 bytes from abs 0xda84e18 via base gp (0xda8bc00).
  The `lw` at 0xd9e2270 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `jalr` at 0xd9e2284 calls `__glDoGet [0xd9e0a70]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0xda792b0.
  The return at 0xd9e2298 has v0 = ret(__glDoGet).

- `__glim_GetFloatv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e22a0 (o32).
  It occupies 64 bytes.
  The `lw` at 0xd9e22ac loads 4 bytes from abs 0xda84e18 via base gp (0xda8bc00).
  The `lw` at 0xd9e22b0 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `jalr` at 0xd9e22c4 calls `__glDoGet [0xd9e0a70]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0xda792c0.
  The return at 0xd9e22d8 has v0 = ret(__glDoGet).

- `__glim_GetIntegerv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e22e0 (o32).
  It occupies 64 bytes.
  The `lw` at 0xd9e22ec loads 4 bytes from abs 0xda84e18 via base gp (0xda8bc00).
  The `lw` at 0xd9e22f0 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `jalr` at 0xd9e2304 calls `__glDoGet [0xd9e0a70]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0xda792cc.
  The return at 0xd9e2318 has v0 = ret(__glDoGet).

- `__glim_GetBooleanv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e2320 (o32).
  It occupies 64 bytes.
  The `lw` at 0xd9e232c loads 4 bytes from abs 0xda84e18 via base gp (0xda8bc00).
  The `lw` at 0xd9e2330 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `jalr` at 0xd9e2344 calls `__glDoGet [0xd9e0a70]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0xda792dc.
  The return at 0xd9e2358 has v0 = ret(__glDoGet).

- `__glim_GetString` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e23c4 (o32).
  It occupies 192 bytes.
  The `lw` at 0xd9e23e0 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9e23e8 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e23f4, `lw` at 0xd9e245c.
  The `lw` at 0xd9e2440 loads 4 bytes from [0x1010] +0xdf4 via base v1 ([0x1010]).
  The `lw` at 0xd9e2448 loads 4 bytes from [0x1010] +0xdf8 via base v1 ([0x1010]).
  The `lw` at 0xd9e2450 loads 4 bytes from [0x1010] +0xdfc via base v1 ([0x1010]).
  The `lw` at 0xd9e2458 loads 4 bytes from [0x1010] +0xe00 via base v1 ([0x1010]).
  The `jalr` at 0xd9e23fc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e2464 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9e23ec goes to 0xd9e2414 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9e2414 goes to 0xd9e243c when a0 == at(=0x1f00) and falls through when a0 != at(=0x1f00).
  The `beq` branch at 0xd9e241c goes to 0xd9e2444 when a0 == at(=0x1f01) and falls through when a0 != at(=0x1f01).
  The `beq` branch at 0xd9e2424 goes to 0xd9e244c when a0 == at(=0x1f02) and falls through when a0 != at(=0x1f02).
  The `beq` branch at 0xd9e242c goes to 0xd9e2454 when a0 == at(=0x1f03) and falls through when a0 != at(=0x1f03).
  The return at 0xd9e247c has v0 = ?.

- `__glim_GetPointervEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e2484 (o32).
  It occupies 292 bytes.
  The `lw` at 0xd9e24a0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9e24a8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e24b4, `lw` at 0xd9e2584.
  The `lw` at 0xd9e24ec loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `lw` at 0xd9e24f8 loads 4 bytes from table(0xda7a348) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9e2518 loads 4 bytes from [0x1010] +0x1328 via base v0 ([0x1010]).
  The `lw` at 0xd9e2524 loads 4 bytes from [0x1010] +0x13e0 via base v0 ([0x1010]).
  The `sw` at 0xd9e252c stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5088].
  The `lw` at 0xd9e2530 loads 4 bytes from [0x1010] +0x13fc via base v0 ([0x1010]).
  The `sw` at 0xd9e2538 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5116].
  The `lw` at 0xd9e253c loads 4 bytes from [0x1010] +0x1414 via base v0 ([0x1010]).
  The `sw` at 0xd9e2544 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5140].
  The `lw` at 0xd9e2548 loads 4 bytes from [0x1010] +0x1430 via base v0 ([0x1010]).
  The `sw` at 0xd9e2550 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5168].
  The `lw` at 0xd9e2554 loads 4 bytes from [0x1010] +0x1448 via base v0 ([0x1010]).
  The `sw` at 0xd9e255c stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5192].
  The `lw` at 0xd9e2560 loads 4 bytes from [0x1010] +0x1464 via base v0 ([0x1010]).
  The `sw` at 0xd9e2568 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5220].
  The `lw` at 0xd9e256c loads 4 bytes from [0x1010] +0x1308 via base v0 ([0x1010]).
  The `sw` at 0xd9e2574 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+4872].
  The `sw` at 0xd9e2580 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+4904].
  The `jalr` at 0xd9e24bc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e258c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9e24ac goes to 0xd9e24d0 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bne` branch at 0xd9e24d0 goes to 0xd9e2508 when at(?) != 0 and falls through when at(?) == 0.
  The `beq` branch at 0xd9e24e4 goes to 0xd9e2584 when t7(=a0-32910) >= 0x6 (unsigned) and falls through when t7(=a0-32910) < 0x6 (unsigned).
  The `beq` branch at 0xd9e250c goes to 0xd9e256c when a0 == at(=0xdf0) and falls through when a0 != at(=0xdf0).
  The `beql` branch at 0xd9e2514 goes to 0xd9e257c when a0 == at(=0xdf3) and falls through when a0 != at(=0xdf3).
  The return at 0xd9e25a0 has v0 = ?.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e36bc (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e36c8 loads 4 bytes from abs 0xda84e58 via base gp (0xda8bc00).
  The `jalr` at 0xd9e36d8 calls `__glGetHistogramParameters [0xd9e3548]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e36ec has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e36f4 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e3700 loads 4 bytes from abs 0xda84e58 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3710 calls `__glGetHistogramParameters [0xd9e3548]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3724 has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e3a74 (o32).
  It occupies 144 bytes.
  The `lw` at 0xd9e3a90 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9e3a98 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e3aa4, `lw` at 0xd9e3ac8.
  The `lw` at 0xd9e3ae0 loads 4 bytes from abs 0xda84e64 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3aac calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3ad0 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3ae8 calls `__glResetMinmax [0xd9e3820]` with a0=[0x1010], a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9e3a9c goes to 0xd9e3ac0 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9e3ac0 goes to 0xd9e3ae0 when a0 == at(=0x802e) and falls through when a0 != at(=0x802e).
  The return at 0xd9e3afc has v0 = ?.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e3e18 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e3e24 loads 4 bytes from abs 0xda84e74 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3e34 calls `__glGetMinmaxParameters [0xd9e3d24]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e3e48 has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e3e50 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e3e5c loads 4 bytes from abs 0xda84e74 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3e6c calls `__glGetMinmaxParameters [0xd9e3d24]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3e80 has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f0738 (o32).
  It occupies 20 bytes.
  The return at 0xd9f0744 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f0754 (o32).
  It occupies 20 bytes.
  The return at 0xd9f0760 has v0 = ?.

- `__glim_Normal3dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5af4 (o32).
  It occupies 44 bytes.
  The `lw` at 0xd9f5b00 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The return at 0xd9f5b18 has v0 = [0x1010].

- `__glim_Normal3sv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5c78 (o32).
  It occupies 104 bytes.
  The `lh` at 0xd9f5c78 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0xd9f5c7c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lh` at 0xd9f5c9c loads 2 bytes from a0 (arg0 at entry) +0x2 via base a0 (a0).
  The `lh` at 0xd9f5cbc loads 2 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The return at 0xd9f5cd8 has v0 = [0x1010].

- `__glim_Normal3i` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5ce0 (o32).
  It occupies 112 bytes.
  The `lw` at 0xd9f5d04 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The return at 0xd9f5d48 has v0 = [0x1010].

- `__glim_Normal3iv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5d50 (o32).
  It occupies 132 bytes.
  The `lw` at 0xd9f5d5c loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0xd9f5d78 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9f5d90 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `lw` at 0xd9f5db0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The return at 0xd9f5dcc has v0 = [0x1010].

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda050f0 (o32).
  It occupies 188 bytes.
  The `lw` at 0xda0510c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda05114 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda05130 loads 4 bytes from [0x1010] +0x2e40 via base a2 ([0x1010]).
  The `sw` at 0xda05150 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda05154 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda0518c loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda05138 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda0515c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05190 calls `(unknown callee)` with a0=unknown, a1=sp-8, a2=unknown, a3=a0 at entry (arg0).
  The `beq` branch at 0xda05118 goes to 0xda0516c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda05120 goes to 0xda05154 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda051a4 has v0 = ?.

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda051ac (o32).
  It occupies 160 bytes.
  The `lw` at 0xda051cc loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda051d0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda051dc loads 4 bytes from [0x1010] +0x3180 via base a2 ([0x1010]).
  The `lw` at 0xda051ec loads 4 bytes from [0x1010] +0x2e40 via base a2 ([0x1010]).
  The `sw` at 0xda05208 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda0520c loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda05224 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda051f4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05214 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05230 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beql` branch at 0xda051d8 goes to 0xda05228 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda051e0 goes to 0xda0520c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda05244 has v0 = ?.

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda056cc (o32).
  It occupies 200 bytes.
  The `lw` at 0xda056e8 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda056f0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda0570c loads 4 bytes from [0x1010] +0x2e40 via base a2 ([0x1010]).
  The `sw` at 0xda0572c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda05730 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda05774 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda05714 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05738 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05778 calls `(unknown callee)` with a0=unknown, a1=sp-12, a2=unknown, a3=a0 at entry (arg0).
  The `beq` branch at 0xda056f4 goes to 0xda05748 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda056fc goes to 0xda05730 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda0578c has v0 = ?.

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda05794 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda057b4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda057b8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda057c4 loads 4 bytes from [0x1010] +0x3184 via base a2 ([0x1010]).
  The `lw` at 0xda057d4 loads 4 bytes from [0x1010] +0x2e40 via base a2 ([0x1010]).
  The `sw` at 0xda057f0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda057f4 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda0580c loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda057dc calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda057fc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05818 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beql` branch at 0xda057c0 goes to 0xda05810 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda057c8 goes to 0xda057f4 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda0582c has v0 = ?.

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda05d1c (o32).
  It occupies 212 bytes.
  The `lw` at 0xda05d38 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda05d40 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda05d5c loads 4 bytes from [0x1010] +0x2e40 via base a2 ([0x1010]).
  The `sw` at 0xda05d7c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda05d80 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda05dd0 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda05d64 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05d88 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05dd4 calls `(unknown callee)` with a0=unknown, a1=sp-16, a2=unknown, a3=a0 at entry (arg0).
  The `beq` branch at 0xda05d44 goes to 0xda05d98 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda05d4c goes to 0xda05d80 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda05de8 has v0 = ?.

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda05df0 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda05e10 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda05e14 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda05e20 loads 4 bytes from [0x1010] +0x3188 via base a2 ([0x1010]).
  The `lw` at 0xda05e30 loads 4 bytes from [0x1010] +0x2e40 via base a2 ([0x1010]).
  The `sw` at 0xda05e4c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda05e50 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda05e68 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda05e38 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05e58 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05e74 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beql` branch at 0xda05e1c goes to 0xda05e6c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda05e24 goes to 0xda05e50 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda05e88 has v0 = ?.

- `__glim_Rectd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda068a0 (o32).
  It occupies 200 bytes.
  The `lw` at 0xda068bc loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda068c0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda068e4 loads 4 bytes from [0x1010] +0x2e40 via base a0 ([0x1010]).
  The `sw` at 0xda06904 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06908 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda0693c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda068e8 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06910 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda0694c calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda068c8 goes to 0xda06924 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda068d0 goes to 0xda06908 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06960 has v0 = ?.

- `__glim_Rectdv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06968 (o32).
  It occupies 216 bytes.
  The `lw` at 0xda06990 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06994 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda069ac loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda069c4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda069c8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda06a18 loads 4 bytes from [0x1010] +0x2f7c via base s0 ([0x1010]).
  The `jalr` at 0xda069b4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda069d0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06a20 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda0699c goes to 0xda069e4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda069a4 goes to 0xda069c8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06a38 has v0 = ?.

- `__glim_Rectf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06a40 (o32).
  It occupies 180 bytes.
  The `lw` at 0xda06a6c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06a70 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda06a8c loads 4 bytes from [0x1010] +0x2e40 via base a0 ([0x1010]).
  The `sw` at 0xda06aa4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06aa8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda06ad0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda06a90 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06ab0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06ad8 calls `(unknown callee)` with a0=unknown, a1=f12 at entry, a2=f14 at entry, a3=a2 at entry (arg2).
  The `beql` branch at 0xda06a78 goes to 0xda06ac4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda06a80 goes to 0xda06aa8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06aec has v0 = ?.

- `__glim_Rectfv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06af4 (o32).
  It occupies 188 bytes.
  The `lw` at 0xda06b1c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06b20 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda06b38 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda06b50 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06b54 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda06b7c loads 4 bytes from a1 (arg1 at entry) +0x0 via base t7 (a1).
  The `lw` at 0xda06b80 loads 4 bytes from a0 (arg0 at entry) +0x0 via base t6 (a0).
  The `lw` at 0xda06b84 loads 4 bytes from a0 (arg0 at entry) +0x4 via base t6 (a0).
  The `lw` at 0xda06b8c loads 4 bytes from [0x1010] +0x2f7c via base s0 ([0x1010]).
  The `jalr` at 0xda06b40 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06b5c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06b90 calls `(unknown callee)` with a0=[0x1010], a1=[a0], a2=[a0+4], a3=[a1].
  The `beql` branch at 0xda06b28 goes to 0xda06b70 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda06b30 goes to 0xda06b54 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06ba8 has v0 = ?.

- `__glim_Recti` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06bb0 (o32).
  It occupies 232 bytes.
  The `lw` at 0xda06be0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06be4 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda06bfc loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda06c14 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06c18 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda06c60 loads 4 bytes from [0x1010] +0x2f7c via base s0 ([0x1010]).
  The `jalr` at 0xda06c04 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06c20 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06c78 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda06bec goes to 0xda06c34 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda06bf4 goes to 0xda06c18 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06c90 has v0 = ?.

- `__glim_Rectiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06c98 (o32).
  It occupies 232 bytes.
  The `lw` at 0xda06cc0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06cc4 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda06cdc loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda06cf4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06cf8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda06d1c loads 4 bytes from a1 (arg1 at entry) +0x4 via base t0 (a1).
  The `lw` at 0xda06d20 loads 4 bytes from a1 (arg1 at entry) +0x0 via base t0 (a1).
  The `lw` at 0xda06d24 loads 4 bytes from a0 (arg0 at entry) +0x0 via base t6 (a0).
  The `lw` at 0xda06d28 loads 4 bytes from a0 (arg0 at entry) +0x4 via base t6 (a0).
  The `lw` at 0xda06d48 loads 4 bytes from [0x1010] +0x2f7c via base s0 ([0x1010]).
  The `jalr` at 0xda06ce4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06d00 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06d60 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda06ccc goes to 0xda06d14 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda06cd4 goes to 0xda06cf8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06d78 has v0 = ?.

- `__glim_Rects` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06d80 (o32).
  It occupies 232 bytes.
  The `lw` at 0xda06db0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06db4 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda06dcc loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda06de4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06de8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda06e30 loads 4 bytes from [0x1010] +0x2f7c via base s0 ([0x1010]).
  The `jalr` at 0xda06dd4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06df0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06e48 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda06dbc goes to 0xda06e04 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda06dc4 goes to 0xda06de8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06e60 has v0 = ?.

- `__glim_Rectsv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06e68 (o32).
  It occupies 232 bytes.
  The `lw` at 0xda06e90 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda06e94 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda06eac loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda06ec4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda06ec8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lh` at 0xda06eec loads 2 bytes from a1 (arg1 at entry) +0x2 via base t0 (a1).
  The `lh` at 0xda06ef0 loads 2 bytes from a1 (arg1 at entry) +0x0 via base t0 (a1).
  The `lh` at 0xda06ef4 loads 2 bytes from a0 (arg0 at entry) +0x0 via base t6 (a0).
  The `lh` at 0xda06ef8 loads 2 bytes from a0 (arg0 at entry) +0x2 via base t6 (a0).
  The `lw` at 0xda06f18 loads 4 bytes from [0x1010] +0x2f7c via base s0 ([0x1010]).
  The `jalr` at 0xda06eb4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06ed0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06f30 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda06e9c goes to 0xda06ee4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda06ea4 goes to 0xda06ec8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda06f48 has v0 = ?.

- `__glim_SelectBuffer` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda07010 (o32).
  It occupies 176 bytes.
  The `lw` at 0xda0702c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda07034 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda07040, `lw` at 0xda07060, `lw` at 0xda07088.
  The `lw` at 0xda0705c loads 4 bytes from [0x1010] +0xc84 via base v0 ([0x1010]).
  The `sb` at 0xda07084 stores 1 byte to [0x1010] +0x1324 via base v0 ([0x1010]) with value 0x0.
  The `sw` at 0xda070a4 stores 4 bytes to [0x1010] +0x1328 via base v0 ([0x1010]) with value a1.
  The `sw` at 0xda070a8 stores 4 bytes to [0x1010] +0x1330 via base v0 ([0x1010]) with value a0.
  The `sw` at 0xda070ac stores 4 bytes to [0x1010] +0x132c via base v0 ([0x1010]) with value a1.
  The `jalr` at 0xda07048 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda07068 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda07090 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda07038 goes to 0xda07058 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bgezl` branch at 0xda07058 goes to 0xda0707c when a0 >= 0 (signed) and falls through when a0 < 0 (signed).
  The `bnel` branch at 0xda07080 goes to 0xda070a4 when t7(=[[0x1010]+3204]) != at(=0x1c02) and falls through when t7(=[[0x1010]+3204]) == at(=0x1c02).
  The return at 0xda070b8 has v0 = ?.

- `__glim_PopName` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda071cc (o32).
  It occupies 156 bytes.
  The `lw` at 0xda071e8 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda071f0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda071f8 loads 4 bytes from [0x1010] +0xc84 via base v0 ([0x1010]).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda071fc, `lw` at 0xda07238.
  The `lw` at 0xda07224 loads 4 bytes from [0x1010] +0x1320 via base v0 ([0x1010]).
  The `lw` at 0xda07228 loads 4 bytes from [0x1010] +0x131c via base v0 ([0x1010]).
  The `sw` at 0xda07234 stores 4 bytes to [0x1010] +0x1320 via base v0 ([0x1010]) with value [[0x1010]+4896]-4.
  The `sb` at 0xda07254 stores 1 byte to [0x1010] +0x1318 via base v0 ([0x1010]) with value 0x0.
  The `jalr` at 0xda07204 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda07240 calls `__glSetError [0xd9d1af8]` with a0=0x504, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda071f4 goes to 0xda07218 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bnel` branch at 0xda0721c goes to 0xda0725c when t7(=[[0x1010]+3204]) != at(=0x1c02) and falls through when t7(=[[0x1010]+3204]) == at(=0x1c02).
  The `bnel` branch at 0xda07230 goes to 0xda07254 when t8(=[[0x1010]+4892]) != v1(=[[0x1010]+4896]) and falls through when t8(=[[0x1010]+4892]) == v1(=[[0x1010]+4896]).
  The return at 0xda07260 has v0 = ?.

- `__glim_PushName` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda07268 (o32).
  It occupies 180 bytes.
  The `lw` at 0xda07284 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda0728c loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda07294 loads 4 bytes from [0x1010] +0xc84 via base v0 ([0x1010]).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda07298, `lw` at 0xda072e0.
  The `lw` at 0xda072c0 loads 4 bytes from [0x1010] +0xec8 via base v0 ([0x1010]).
  The `lw` at 0xda072c4 loads 4 bytes from [0x1010] +0x131c via base v0 ([0x1010]).
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1320 via base v0 ([0x1010]), including `lw` at 0xda072c8, `lw` at 0xda072fc.
  The `sw` at 0xda072dc stores 4 bytes to [[0x1010]+4896] +0x0 via base v1 ([[0x1010]+4896]) with value a0.
  The `sb` at 0xda07300 stores 1 byte to [0x1010] +0x1318 via base v0 ([0x1010]) with value 0x0.
  The `sw` at 0xda07308 stores 4 bytes to [0x1010] +0x1320 via base v0 ([0x1010]) with value [[0x1010]+4896]+4.
  The `jalr` at 0xda072a0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda072e8 calls `__glSetError [0xd9d1af8]` with a0=0x503, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda07290 goes to 0xda072b4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bnel` branch at 0xda072b8 goes to 0xda07310 when t7(=[[0x1010]+3204]) != at(=0x1c02) and falls through when t7(=[[0x1010]+3204]) == at(=0x1c02).
  The `bnel` branch at 0xda072d8 goes to 0xda072fc when v1(=[[0x1010]+4896]) < t1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned) and falls through when v1(=[[0x1010]+4896]) >= t1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned).
  The return at 0xda07314 has v0 = ?.

- `__glim_TexGenf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda18728 (o32).
  It occupies 96 bytes.
  The `lw` at 0xda1874c loads 4 bytes from abs 0xda85408 via base gp (0xda8bc00).
  The `lw` at 0xda18764 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xda18754 calls `__glim_TexGenfv [0xda18468]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda1876c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda18744 goes to 0xda18764 when a1 != at(=0x2500) and falls through when a1 == at(=0x2500).
  The return at 0xda18780 has v0 = ?.

- `__glim_TexGend` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda18a6c (o32).
  It occupies 100 bytes.
  The `lw` at 0xda18a94 loads 4 bytes from abs 0xda85410 via base gp (0xda8bc00).
  The `lw` at 0xda18aac loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xda18a9c calls `__glim_TexGendv [0xda18788]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda18ab4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda18a8c goes to 0xda18aac when a1 != at(=0x2500) and falls through when a1 == at(=0x2500).
  The return at 0xda18ac8 has v0 = ?.

- `__glim_TexGeni` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda18d70 (o32).
  It occupies 96 bytes.
  The `lw` at 0xda18d94 loads 4 bytes from abs 0xda85418 via base gp (0xda8bc00).
  The `lw` at 0xda18dac loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xda18d9c calls `__glim_TexGeniv [0xda18ad0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda18db4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda18d8c goes to 0xda18dac when a1 != at(=0x2500) and falls through when a1 == at(=0x2500).
  The return at 0xda18dc8 has v0 = ?.

- `__glim_TexEnvf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda19f60 (o32).
  It occupies 96 bytes.
  The `lw` at 0xda19f84 loads 4 bytes from abs 0xda85444 via base gp (0xda8bc00).
  The `lw` at 0xda19f9c loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xda19f8c calls `__glim_TexEnvfv [0xda19da4]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda19fa4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda19f7c goes to 0xda19f9c when a1 != at(=0x2200) and falls through when a1 == at(=0x2200).
  The return at 0xda19fb8 has v0 = ?.

- `__glim_TexEnvi` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda1a0fc (o32).
  It occupies 96 bytes.
  The `lw` at 0xda1a120 loads 4 bytes from abs 0xda8544c via base gp (0xda8bc00).
  The `lw` at 0xda1a138 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xda1a128 calls `__glim_TexEnviv [0xda19fc0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda1a140 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda1a118 goes to 0xda1a138 when a1 != at(=0x2200) and falls through when a1 == at(=0x2200).
  The return at 0xda1a154 has v0 = ?.

- `__glim_Vertex3s` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda38100 (o32).
  It occupies 136 bytes.
  The `lw` at 0xda3810c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda38150 loads 4 bytes from [0x1010] +0x17f4 via base v0 ([0x1010]).
  The `lw` at 0xda3815c loads 4 bytes from [[0x1010]+6132] +0x554 via base v1 ([[0x1010]+6132]).
  The `jalr` at 0xda3816c calls `(unknown callee)` with a0=sp-12, a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The return at 0xda38180 has v0 = ret(?).

- `__glim_Vertex4s` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda38440 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda38458 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda38478 loads 4 bytes from [0x1010] +0x17f4 via base v0 ([0x1010]).
  The `lw` at 0xda384a0 loads 4 bytes from [[0x1010]+6132] +0x574 via base v1 ([[0x1010]+6132]).
  The `jalr` at 0xda384c4 calls `(unknown callee)` with a0=sp-16, a1=unknown, a2=unknown, a3=unknown.
  The return at 0xda384d8 has v0 = ret(?).

- `__glim_LoadIdentity` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3aa0c (o32).
  It occupies 144 bytes.
  The `lw` at 0xda3aa28 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda3aa2c loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda3aa38 loads 4 bytes from [0x1010] +0x2eb0 via base a0 ([0x1010]).
  The `lw` at 0xda3aa48 loads 4 bytes from [0x1010] +0x2e40 via base a0 ([0x1010]).
  The `sw` at 0xda3aa60 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda3aa64 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda3aa7c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda3aa4c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3aa6c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3aa80 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda3aa34 goes to 0xda3aa80 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda3aa3c goes to 0xda3aa64 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda3aa94 has v0 = ?.

- `__glim_PushMatrix` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3b1e0 (o32).
  It occupies 144 bytes.
  The `lw` at 0xda3b1fc loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda3b200 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda3b20c loads 4 bytes from [0x1010] +0x2ea8 via base a0 ([0x1010]).
  The `lw` at 0xda3b21c loads 4 bytes from [0x1010] +0x2e40 via base a0 ([0x1010]).
  The `sw` at 0xda3b234 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda3b238 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda3b250 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda3b220 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b240 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b254 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda3b208 goes to 0xda3b254 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda3b210 goes to 0xda3b238 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda3b268 has v0 = ?.

- `__glim_PopMatrix` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3b270 (o32).
  It occupies 144 bytes.
  The `lw` at 0xda3b28c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda3b290 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda3b29c loads 4 bytes from [0x1010] +0x2eac via base a0 ([0x1010]).
  The `lw` at 0xda3b2ac loads 4 bytes from [0x1010] +0x2e40 via base a0 ([0x1010]).
  The `sw` at 0xda3b2c4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda3b2c8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda3b2e0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda3b2b0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b2d0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b2e4 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beql` branch at 0xda3b298 goes to 0xda3b2e4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda3b2a0 goes to 0xda3b2c8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The return at 0xda3b2f8 has v0 = ?.

- `__glim_NewList` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd98e690 (n32).
  It occupies 408 bytes.
  The `lw` at 0xd98e698 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd98e69c loads 4 bytes from abs 0x1018 via base zero (0x0).
  5 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd98e6d4, `lw` at 0xd98e6f0, `lw` at 0xd98e770.
  The `lw` at 0xd98e6e8 loads 4 bytes from [0x1010] +0x137c via base s0 ([0x1010]).
  4 such `lw` accesses load 4 bytes from abs 0xda8c3a0 via base gp (0xda90fd8), including `lw` at 0xd98e704, `lw` at 0xd98e790, `lw` at 0xd98e7b8.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x1390 via base s0 ([0x1010]) with value 0x0, including `sw` at 0xd98e714, `sw` at 0xd98e7d8.
  The `sw` at 0xd98e718 stores 4 bytes to [0x1010] +0x138c via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd98e71c stores 4 bytes to [0x1010] +0x1388 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd98e720 stores 4 bytes to [0x1010] +0x1384 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd98e724 stores 4 bytes to [0x1010] +0x1378 via base s0 ([0x1010]) with value a1.
  The `lw` at 0xd98e72c loads 4 bytes from [0x1010] +0x2e3c via base s0 ([0x1010]).
  The `sw` at 0xd98e734 stores 4 bytes to [0x1010] +0x137c via base s0 ([0x1010]) with value a0.
  The `sw` at 0xd98e73c stores 4 bytes to [0x1010] +0x17f4 via base s0 ([0x1010]) with value unknown.
  The `lw` at 0xd98e748 loads 4 bytes from [0x1010] +0x1358 via base s0 ([0x1010]).
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1360 via base s0 ([0x1010]), including `lw` at 0xd98e774, `lw` at 0xd98e7bc.
  The `lw` at 0xd98e780 loads 4 bytes from [0x1010] +0x1394 via base s0 ([0x1010]).
  The `lw` at 0xd98e78c loads 4 bytes from abs 0x1048 via base zero (0x0).
  The `lw` at 0xd98e7d0 loads 4 bytes from [0x1010] +0x1f58 via base s0 ([0x1010]).
  The `lw` at 0xd98e7dc loads 4 bytes from [0x1010] +0x318c via base s0 ([0x1010]).
  The `sw` at 0xd98e7ec stores 4 bytes to [0x1010] +0x1394 via base s0 ([0x1010]) with value ret(unknown).
  The `jalr` at 0xd98e6d8 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=0x1300, a2=0x1301, a3=a3 at entry (arg3).
  The `jalr` at 0xd98e6f4 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=0x1300, a2=0x1301, a3=[[0x1010]+4988].
  The `jalr` at 0xd98e70c calls `__glMipsCopyDispatch [0xda77b60]` with a0=[0x1010]+6136, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd98e740 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown, a5=a0 at entry (arg0).
  The `jalr` at 0xd98e74c calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd98e7a8 calls `__glMipsCopyDispatch [0xda77b60]` with a0=unknown, a1=[0x1010]+9920, a2=unknown, a3=unknown.
  The `jalr` at 0xd98e7cc calls `__glMipsCopyDispatch [0xda77b60]` with a0=[[0x1010]+8024], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd98e7e0 calls `(unknown callee)` with a0=[0x1010], a1=0x1300, a2=0x1301, a3=[[0x1010]+4988], a6=[[0x1010]+4960], a7=[[0x1010]+5012].
  The `jalr` at 0xd98e7f4 calls `__glSetError [0xd9cd900]` with a0=0x505, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd98e808 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd98e818 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=0x1300, a2=0x1301, a3=[[0x1010]+4988].
  The `beq` branch at 0xd98e6bc goes to 0xd98e804 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd98e6c8 goes to 0xd98e6e8 when s1(=a1) == a1(=0x1300) and falls through when s1(=a1) != a1(=0x1300).
  The `beq` branch at 0xd98e6d0 goes to 0xd98e6e8 when s1(=a1) == a2(=0x1301) and falls through when s1(=a1) != a2(=0x1301).
  The `beq` branch at 0xd98e6ec goes to 0xd98e76c when a3(=[[0x1010]+4988]) == 0 and falls through when a3(=[[0x1010]+4988]) != 0.
  The `beq` branch at 0xd98e738 goes to 0xd98e748 when t9(=[[0x1010]+11836]) == 0 and falls through when t9(=[[0x1010]+11836]) != 0.
  The `beq` branch at 0xd98e76c goes to 0xd98e818 when a0 == 0 and falls through when a0 != 0.
  The `beq` branch at 0xd98e778 goes to 0xd98e78c when a6(=[[0x1010]+4960]) == 0 and falls through when a6(=[[0x1010]+4960]) != 0.
  The `beq` branch at 0xd98e784 goes to 0xd98e7dc when a7(=[[0x1010]+5012]) == 0 and falls through when a7(=[[0x1010]+5012]) != 0.
  The `bne` branch at 0xd98e7b4 goes to 0xd98e708 when s1(=a1) != t2(=0x1301) and falls through when s1(=a1) == t2(=0x1301).
  The `bne` branch at 0xd98e7c0 goes to 0xd98e704 when t3(=[[0x1010]+4960]) != 0 and falls through when t3(=[[0x1010]+4960]) == 0.
  The `bne` branch at 0xd98e7e8 goes to 0xd98e78c when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The return at 0xd98e764 has v0 = ?.

- `__gllc_CallList` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd98ea50 (n32).
  It occupies 140 bytes.
  The `lw` at 0xd98ea5c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd98ea78 loads 4 bytes from abs 0xda89720 via base gp (0xda90fd8).
  The `lw` at 0xd98eaa0 loads 4 bytes from abs 0xda896f4 via base gp (0xda90fd8).
  The `lw` at 0xd98eaa4 loads 4 bytes from abs 0xda89728 via base gp (0xda90fd8).
  The `sh` at 0xd98eaa8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x0.
  The `sw` at 0xd98eabc stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xd98eac8 loads 4 bytes from abs 0xda89760 via base gp (0xda90fd8).
  The `bgezall` at 0xd98ea80 calls `__glDlistAllocOp2 [0xd98f5b0]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd98eab8 calls `__glDlistAppendOp [0xd98f640]` with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd98eae0, a3=unknown.
  The `bgezall` at 0xd98eacc calls `__gllc_InvalidEnum [0xd98fc20]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd98ea70 goes to 0xd98eac8 when a0 == 0 and falls through when a0 != 0.
  The `bne` branch at 0xd98ea88 goes to 0xd98eaa0 when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xd98ea98 has v0 = ?.

- `__gllc_CallLists` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd98eef0 (n32).
  It occupies 300 bytes.
  The `lw` at 0xd98eef8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd98ef38 loads 4 bytes from abs 0xda8c6c0 via base gp (0xda90fd8).
  The `lbu` at 0xd98ef4c loads 1 byte from table(0xda7e180) +0x0 via base a1 (table(0xda7f580)).
  2 such `lw` accesses load 4 bytes from abs 0xda89760 via base gp (0xda90fd8), including `lw` at 0xd98ef60, `lw` at 0xd98ef78.
  The `lw` at 0xd98ef80 loads 4 bytes from abs 0xda89720 via base gp (0xda90fd8).
  The `lw` at 0xd98efcc loads 4 bytes from abs 0xda8c78c via base gp (0xda90fd8).
  The `sw` at 0xd98efd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base a5 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd98efdc stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base a5 (ret(__glDlistAllocOp2)) with value a0.
  The `sh` at 0xd98efe8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base a5 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xd98efec loads 4 bytes from abs 0xda89728 via base gp (0xda90fd8).
  The `lw` at 0xd98effc loads 4 bytes from abs 0xda89708 via base gp (0xda90fd8).
  The `lw` at 0xd98f008 loads 4 bytes from abs 0xda8975c via base gp (0xda90fd8).
  The `bgezall` at 0xd98ef64 calls `__gllc_InvalidEnum [0xd98fc20]` with a0=[0x1010], a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd98ef94 calls `__glDlistAllocOp2 [0xd98f5b0]` with a0=[0x1010], a1=unknown, a2=-0x4, a3=a3 at entry (arg3).
  The `jalr` at 0xd98efe4 calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown, a4=0x1, a5=ret(__glDlistAllocOp2).
  The `bgezall` at 0xd98eff8 calls `__glDlistAppendOp [0xd98f640]` with a0=[0x1010], a1=unknown, a2=0xd98f020, a3=unknown.
  The `bgezall` at 0xd98f00c calls `__gllc_InvalidValue [0xd98fbc0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xd98ef28 goes to 0xd98f008 when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd98ef3c goes to 0xd98ef74 when a1 < 0x1400 (unsigned) and falls through when a1 >= 0x1400 (unsigned).
  The `beq` branch at 0xd98ef44 goes to 0xd98ef74 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bgez` branch at 0xd98ef58 goes to 0xd98ef80 when s3(?) >= 0 (signed) and falls through when s3(?) < 0 (signed).
  The `bltz` branch at 0xd98ef74 goes to 0xd98ef64 when s3(?) < 0 (signed) and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0xd98ef9c goes to 0xd98efc4 when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xd98efbc has v0 = ?.

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9bb770 (n32).
  It occupies 164 bytes.
  The `lw` at 0xd9bb778 loads 4 bytes from abs 0x1018 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9bb7a0, `lw` at 0xd9bb7d8.
  The `lw` at 0xd9bb7a8 loads 4 bytes from abs 0xda8a45c via base gp (0xda90fd8).
  The `lw` at 0xd9bb7bc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9bb7c4 loads 4 bytes from [0x1010] +0x17f0 via base a0 ([0x1010]).
  The `jalr` at 0xd9bb7c0 calls `__glNamesGenRange [0xd9f36e0]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd9bb7dc calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd9bb7f8 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9bb794 goes to 0xd9bb7d8 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xd9bb79c goes to 0xd9bb7f8 when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd9bb7a4 goes to 0xd9bb7bc when a0 != 0 and falls through when a0 == 0.
  The return at 0xd9bb7b4 has v0 = 0x0.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9bb820 (n32).
  It occupies 108 bytes.
  The `lw` at 0xd9bb824 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9bb848 loads 4 bytes from abs 0xda8a464 via base gp (0xda90fd8).
  The `lw` at 0xd9bb84c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9bb854 loads 4 bytes from [0x1010] +0x17f0 via base a0 ([0x1010]).
  The `lw` at 0xd9bb86c loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `jalr` at 0xd9bb850 calls `__glNamesIsName [0xd9f3e80]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd9bb870 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9bb840 goes to 0xd9bb86c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9bb864 has v0 = ?.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9bba30 (n32).
  It occupies 128 bytes.
  The `lw` at 0xd9bba38 loads 4 bytes from abs 0x1018 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9bba60, `lw` at 0xd9bba8c.
  The `lw` at 0xd9bba6c loads 4 bytes from abs 0xda8a460 via base gp (0xda90fd8).
  The `lw` at 0xd9bba70 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9bba78 loads 4 bytes from [0x1010] +0x17f0 via base a0 ([0x1010]).
  The `jalr` at 0xd9bba74 calls `__glNamesDeleteRange [0xd9f3a50]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9bba90 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9bbaa0 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0xd9bba54 goes to 0xd9bba8c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xd9bba5c goes to 0xd9bbaa0 when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xd9bba64 goes to 0xd9bba80 when a1 == 0 and falls through when a1 != 0.
  The return at 0xd9bba84 has v0 = ?.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9c37a0 (n32).
  It occupies 184 bytes.
  The `lw` at 0xd9c37a0 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9c37ac loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9c3840 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `jalr` at 0xd9c3848 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9c37bc goes to 0xd9c3840 when v0(=[0x1018]) == v1(=0x1) and falls through when v0(=[0x1018]) != v1(=0x1).
  The return at 0xd9c382c has v0 = [0x1018].

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9c3860 (n32).
  It occupies 112 bytes.
  The `lw` at 0xd9c3860 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9c386c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sw` at 0xd9c3890 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9c3894 loads 4 bytes from [0x1010] +0x2e24 via base a1 ([0x1010]).
  The `sw` at 0xd9c38a8 stores 4 bytes to [0x1010] +0x2e24 via base a1 ([0x1010]) with value ([[0x1010]+11812] | 0x4).
  The `lw` at 0xd9c38b8 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `jalr` at 0xd9c38c0 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9c387c goes to 0xd9c38b8 when v0(=[0x1018]) == v1(=0x1) and falls through when v0(=[0x1018]) != v1(=0x1).
  The return at 0xd9c38a4 has v0 = ([[0x1010]+11812] | 0x4).

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb5a0 (n32).
  It occupies 112 bytes.
  The `lw` at 0xd9cb5ac loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9cb5d0 loads 4 bytes from abs 0xda89010 via base gp (0xda90fd8).
  The `lw` at 0xd9cb5e8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9cb5fc loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cb5e4 calls `__glColorTableParameterv [0xd9cb410]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb600 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb5c8 goes to 0xd9cb5fc when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9cb5f4 has v0 = ?.

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb610 (n32).
  It occupies 112 bytes.
  The `lw` at 0xd9cb61c loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9cb640 loads 4 bytes from abs 0xda89010 via base gp (0xda90fd8).
  The `lw` at 0xd9cb658 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9cb66c loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cb654 calls `__glColorTableParameterv [0xd9cb410]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb670 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb638 goes to 0xd9cb66c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9cb664 has v0 = ?.

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb800 (n32).
  It occupies 112 bytes.
  The `lw` at 0xd9cb80c loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9cb830 loads 4 bytes from abs 0xda89010 via base gp (0xda90fd8).
  The `lw` at 0xd9cb848 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9cb85c loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cb844 calls `__glGetColorTableParameterv [0xd9cb680]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb860 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb828 goes to 0xd9cb85c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9cb854 has v0 = ?.

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb870 (n32).
  It occupies 112 bytes.
  The `lw` at 0xd9cb87c loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9cb8a0 loads 4 bytes from abs 0xda89010 via base gp (0xda90fd8).
  The `lw` at 0xd9cb8b8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9cb8cc loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cb8b4 calls `__glGetColorTableParameterv [0xd9cb680]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb8d0 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb898 goes to 0xd9cb8cc when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9cb8c4 has v0 = ?.

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf320 (n32).
  It occupies 88 bytes.
  The `lw` at 0xd9cf344 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xd9cf360 loads 4 bytes from abs 0xda8a050 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cf348 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9cf368 calls `__GLconvolutionParameter [0xd9cf100]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0xd9cf33c goes to 0xd9cf360 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The return at 0xd9cf358 has v0 = ?.

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf380 (n32).
  It occupies 96 bytes.
  The `lw` at 0xd9cf3b0 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xd9cf3cc loads 4 bytes from abs 0xda8a050 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cf3b4 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0xd9cf3d0 calls `__GLconvolutionParameter [0xd9cf100]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0xd9cf398 goes to 0xd9cf3cc when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf3a4 goes to 0xd9cf3cc when a1 == v1(=0x8014) and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0xd9cf3ac goes to 0xd9cf3cc when a1 == a3(=0x8015) and falls through when a1 != a3(=0x8015).
  The return at 0xd9cf3c4 has v0 = ?.

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf3e0 (n32).
  It occupies 88 bytes.
  The `lw` at 0xd9cf404 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xd9cf420 loads 4 bytes from abs 0xda8a050 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cf408 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9cf428 calls `__GLconvolutionParameter [0xd9cf100]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0xd9cf3fc goes to 0xd9cf420 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The return at 0xd9cf418 has v0 = ?.

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf440 (n32).
  It occupies 96 bytes.
  The `lw` at 0xd9cf470 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xd9cf48c loads 4 bytes from abs 0xda8a050 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cf474 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0xd9cf490 calls `__GLconvolutionParameter [0xd9cf100]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0xd9cf458 goes to 0xd9cf48c when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf464 goes to 0xd9cf48c when a1 == v1(=0x8014) and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0xd9cf46c goes to 0xd9cf48c when a1 == a3(=0x8015) and falls through when a1 != a3(=0x8015).
  The return at 0xd9cf484 has v0 = ?.

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf770 (n32).
  It occupies 52 bytes.
  The `lw` at 0xd9cf784 loads 4 bytes from abs 0xda8a064 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cf78c calls `__GLgetConvolutionParameter [0xd9cf4a0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9cf79c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf7b0 (n32).
  It occupies 52 bytes.
  The `lw` at 0xd9cf7c4 loads 4 bytes from abs 0xda8a064 via base gp (0xda90fd8).
  The `bgezall` at 0xd9cf7cc calls `__GLgetConvolutionParameter [0xd9cf4a0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9cf7dc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_Map1d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d1e50 (n32).
  It occupies 224 bytes.
  The `lw` at 0xd9d1e5c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d1e70 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d1e98 loads 4 bytes from abs 0xda8a124 via base gp (0xda90fd8).
  The `lw` at 0xd9d1ebc loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v0 (ret(__glSetUpMap1)).
  The `lw` at 0xd9d1ec8 loads 4 bytes from abs 0xda8a110 via base gp (0xda90fd8).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d1ecc, `lw` at 0xd9d1f1c.
  The `lw` at 0xd9d1ef8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84 via base a4 (([0x1010] + (a0 << 0x2))).
  The `bgezall` at 0xd9d1eac calls `__glSetUpMap1 [0xd9d2e30]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d1ed0 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d1ef4 calls `__glFillMap1d [0xd9d2ad0]` with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=[([0x1010] + (a0 << 0x2))+14980].
  The `bgezall` at 0xd9d1f20 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d1e90 goes to 0xd9d1f1c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d1eb4 goes to 0xd9d1efc when v0(=ret(__glSetUpMap1)) == 0 and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d1ec4 goes to 0xd9d1ee0 when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed) and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The return at 0xd9d1f14 has v0 = ?.

- `__glim_Map1f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d1f30 (n32).
  It occupies 224 bytes.
  The `lw` at 0xd9d1f3c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d1f50 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d1f78 loads 4 bytes from abs 0xda8a124 via base gp (0xda90fd8).
  The `lw` at 0xd9d1f9c loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v0 (ret(__glSetUpMap1)).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d1fa8, `lw` at 0xd9d1ffc.
  The `lw` at 0xd9d1fbc loads 4 bytes from abs 0xda8a10c via base gp (0xda90fd8).
  The `lw` at 0xd9d1fd8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84 via base a4 (([0x1010] + (a0 << 0x2))).
  The `bgezall` at 0xd9d1f8c calls `__glSetUpMap1 [0xd9d2e30]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3); fp f15=f13, f16=f14.
  The `bgezall` at 0xd9d1fac calls `__glSetError [0xd9cd900]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d1fd4 calls `__glFillMap1f [0xd9d29d0]` with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=[([0x1010] + (a0 << 0x2))+14980].
  The `bgezall` at 0xd9d2000 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d1f70 goes to 0xd9d1ffc when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d1f94 goes to 0xd9d1fdc when v0(=ret(__glSetUpMap1)) == 0 and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d1fa4 goes to 0xd9d1fbc when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed) and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The return at 0xd9d1ff4 has v0 = ?.

- `__glim_Map2d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2010 (n32).
  It occupies 284 bytes.
  The `lw` at 0xd9d201c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d2030 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d2064 loads 4 bytes from abs 0xda8a128 via base gp (0xda90fd8).
  The `lw` at 0xd9d2090 loads 4 bytes from ret(__glSetUpMap2) +0x0 via base v0 (ret(__glSetUpMap2)).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d20a8, `lw` at 0xd9d2104, `lw` at 0xd9d2118.
  The `lw` at 0xd9d20d8 loads 4 bytes from abs 0xda8a11c via base gp (0xda90fd8).
  The `lw` at 0xd9d20f8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28 via base a6 (([0x1010] + (a0 << 0x2))).
  The `bgezall` at 0xd9d2080 calls `__glSetUpMap2 [0xd9d2f50]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=unknown.
  The `bgezall` at 0xd9d20ac calls `__glSetError [0xd9cd900]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d20f4 calls `__glFillMap2d [0xd9d2cf0]` with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=unknown, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=[([0x1010] + (a0 << 0x2))+14888].
  The `bgezall` at 0xd9d2108 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=unknown, a2=a7 at entry (arg7), a3=unknown.
  The `bgezall` at 0xd9d211c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2058 goes to 0xd9d2118 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d2088 goes to 0xd9d20b4 when v0(=ret(__glSetUpMap2)) == 0 and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0xd9d2098 goes to 0xd9d2104 when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed) and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d20a4 goes to 0xd9d20d4 when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed) and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The return at 0xd9d20cc has v0 = ?.

- `__glim_Map2f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2130 (n32).
  It occupies 280 bytes.
  The `lw` at 0xd9d213c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d2150 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d2180 loads 4 bytes from abs 0xda8a128 via base gp (0xda90fd8).
  The `lw` at 0xd9d21ac loads 4 bytes from ret(__glSetUpMap2) +0x0 via base v0 (ret(__glSetUpMap2)).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d21b8, `lw` at 0xd9d21c8, `lw` at 0xd9d2234.
  The `lw` at 0xd9d21f8 loads 4 bytes from abs 0xda8a118 via base gp (0xda90fd8).
  The `lw` at 0xd9d2218 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28 via base a6 (([0x1010] + (a0 << 0x2))).
  The `bgezall` at 0xd9d219c calls `__glSetUpMap2 [0xd9d2f50]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=unknown; fp f16=f13, f17=f14, f18=f17, f19=f18.
  The `bgezall` at 0xd9d21cc calls `__glSetError [0xd9cd900]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d2214 calls `__glFillMap2f [0xd9d2bb0]` with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=unknown, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=[([0x1010] + (a0 << 0x2))+14888].
  The `bgezall` at 0xd9d2224 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d2238 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f19=f18.
  The `beq` branch at 0xd9d2178 goes to 0xd9d2234 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d21a4 goes to 0xd9d21d4 when v0(=ret(__glSetUpMap2)) == 0 and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0xd9d21b4 goes to 0xd9d2224 when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed) and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d21c4 goes to 0xd9d21f4 when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed) and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The return at 0xd9d21ec has v0 = ?.

- `__glim_MapGrid1d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2460 (n32).
  It occupies 132 bytes.
  The `lw` at 0xd9d2464 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d2468 loads 4 bytes from abs 0x1010 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d2490, `lw` at 0xd9d24d0.
  The `sw` at 0xd9d2494 stores 4 bytes to [0x1010] +0x798 via base a2 ([0x1010]) with value a0.
  The `bgezall` at 0xd9d24c0 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d24d4 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2484 goes to 0xd9d24d0 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d248c goes to 0xd9d24c0 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The return at 0xd9d24ac has v0 = 0x1.

- `__glim_MapGrid1f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d24f0 (n32).
  It occupies 124 bytes.
  The `lw` at 0xd9d24f4 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d24f8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d2520, `lw` at 0xd9d2558.
  The `sw` at 0xd9d2524 stores 4 bytes to [0x1010] +0x798 via base a2 ([0x1010]) with value a0.
  The `bgezall` at 0xd9d2548 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d255c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2514 goes to 0xd9d2558 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d251c goes to 0xd9d2548 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The return at 0xd9d2534 has v0 = 0x1.

- `__glim_MapGrid2d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2570 (n32).
  It occupies 164 bytes.
  The `lw` at 0xd9d2574 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d2578 loads 4 bytes from abs 0x1010 via base zero (0x0).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d25a0, `lw` at 0xd9d25a8, `lw` at 0xd9d2600.
  The `sw` at 0xd9d25ac stores 4 bytes to [0x1010] +0x7b8 via base a2 ([0x1010]) with value a3.
  The `sw` at 0xd9d25b0 stores 4 bytes to [0x1010] +0x7a8 via base a2 ([0x1010]) with value a0.
  The `bgezall` at 0xd9d25f0 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d2604 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2594 goes to 0xd9d2600 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d259c goes to 0xd9d25f0 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `blez` branch at 0xd9d25a4 goes to 0xd9d25f0 when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  The return at 0xd9d25d8 has v0 = 0x1.

- `__glim_MapGrid2f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2620 (n32).
  It occupies 148 bytes.
  The `lw` at 0xd9d2624 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d2628 loads 4 bytes from abs 0x1010 via base zero (0x0).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d2650, `lw` at 0xd9d2658, `lw` at 0xd9d26a0.
  The `sw` at 0xd9d265c stores 4 bytes to [0x1010] +0x7b8 via base a2 ([0x1010]) with value a3.
  The `sw` at 0xd9d2668 stores 4 bytes to [0x1010] +0x7a8 via base a2 ([0x1010]) with value a0.
  The `bgezall` at 0xd9d2690 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d26a4 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2644 goes to 0xd9d26a0 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d264c goes to 0xd9d2690 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `blez` branch at 0xd9d2654 goes to 0xd9d2690 when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  The return at 0xd9d2678 has v0 = 0x1.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d26c0 (n32).
  It occupies 208 bytes.
  The `lw` at 0xd9d26c0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d26d0 loads 4 bytes from abs 0x1018 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d26fc, `lw` at 0xd9d2744.
  The `lw` at 0xd9d2720 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xd9d2730 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xd9d2758 loads 4 bytes from abs 0xda8a138 via base gp (0xda90fd8).
  The `lw` at 0xd9d2774 loads 4 bytes from abs 0xda8a134 via base gp (0xda90fd8).
  The `bgezall` at 0xd9d2700 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1018].
  The `jalr` at 0xd9d2724 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1018].
  The `bgezall` at 0xd9d2748 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d2764 calls `__glEvalMesh1Point [0xd9d4be0]` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `bgezall` at 0xd9d2780 calls `__glEvalMesh1Line [0xd9d4a10]` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `beq` branch at 0xd9d26e8 goes to 0xd9d2734 when a4(=[0x1018]) == 0 and falls through when a4(=[0x1018]) != 0.
  The `beq` branch at 0xd9d26f4 goes to 0xd9d2718 when a4(=[0x1018]) == v0(=0x2) and falls through when a4(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xd9d2738 goes to 0xd9d2774 when a0 == ra(=0x1b01) and falls through when a0 != ra(=0x1b01).
  The `beq` branch at 0xd9d2740 goes to 0xd9d2758 when a0 == at(=0x1b00) and falls through when a0 != at(=0x1b00).
  The return at 0xd9d2710 has v0 = ?.

- `__glim_EvalMesh2` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2800 (n32).
  It occupies 280 bytes.
  The `lw` at 0xd9d2800 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d281c loads 4 bytes from abs 0x1018 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d284c, `lw` at 0xd9d28a0.
  The `lw` at 0xd9d2870 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xd9d287c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xd9d28b8 loads 4 bytes from abs 0xda8a140 via base gp (0xda90fd8).
  The `lw` at 0xd9d28dc loads 4 bytes from abs 0xda8a13c via base gp (0xda90fd8).
  The `lw` at 0xd9d28fc loads 4 bytes from abs 0xda8a144 via base gp (0xda90fd8).
  The `bgezall` at 0xd9d2850 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1018].
  The `jalr` at 0xd9d2874 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1018].
  The `bgezall` at 0xd9d28a4 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0xd9d28c4 calls `__glEvalMesh2Point [0xd9d52d0]` with a0=unknown, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0xd9d28e8 calls `__glEvalMesh2Fill [0xd9d4f50]` with a0=unknown, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0xd9d2908 calls `__glEvalMesh2Line [0xd9d5550]` with a0=unknown, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2838 goes to 0xd9d2880 when a6(=[0x1018]) == 0 and falls through when a6(=[0x1018]) != 0.
  The `beq` branch at 0xd9d2844 goes to 0xd9d286c when a6(=[0x1018]) == v0(=0x2) and falls through when a6(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xd9d2888 goes to 0xd9d28d4 when s0(=a0) == ra(=0x1b02) and falls through when s0(=a0) != ra(=0x1b02).
  The `beq` branch at 0xd9d2890 goes to 0xd9d28f8 when s0(=a0) == at(=0x1b01) and falls through when s0(=a0) != at(=0x1b01).
  The `beq` branch at 0xd9d2898 goes to 0xd9d28b4 when s0(=a0) == v0(=0x1b00) and falls through when s0(=a0) != v0(=0x1b00).
  The return at 0xd9d2864 has v0 = ?.

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d5d10 (n32).
  It occupies 196 bytes.
  The `lw` at 0xd9d5d28 loads 4 bytes from abs 0xda89010 via base gp (0xda90fd8).
  The `bgezall` at 0xd9d5d44 calls `NurbsKnots1Common [0xd9d5b10]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d5d58 goes to 0xd9d5dc4 when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9d5d60 goes to 0xd9d5dc4 when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9d5d70 goes to 0xd9d5d8c when (s0(=a2) & 0x1) == 0 and falls through when (s0(=a2) & 0x1) != 0.
  The `beq` branch at 0xd9d5d8c goes to 0xd9d5dc4 when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` branch at 0xd9d5dbc goes to 0xd9d5da0 when s0(=a2) != a4(?) and falls through when s0(=a2) == a4(?).
  The return at 0xd9d5dcc has v0 = ret(NurbsKnots1Common).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d5de0 (n32).
  It occupies 236 bytes.
  The `lw` at 0xd9d5df8 loads 4 bytes from abs 0xda89010 via base gp (0xda90fd8).
  The `bgezall` at 0xd9d5e14 calls `NurbsKnots1Common [0xd9d5b10]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d5e24 goes to 0xd9d5ebc when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9d5e2c goes to 0xd9d5ebc when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9d5e40 goes to 0xd9d5e68 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0xd9d5e60 goes to 0xd9d5e48 when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0xd9d5e68 goes to 0xd9d5ebc when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` branch at 0xd9d5eb4 goes to 0xd9d5e70 when s0(=a2) != a3(?) and falls through when s0(=a2) == a3(?).
  The return at 0xd9d5ec4 has v0 = ret(NurbsKnots1Common).

- `__glim_Finish` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d7160 (n32).
  It occupies 88 bytes.
  The `lw` at 0xd9d7164 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d7168 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9d7188 loads 4 bytes from [0x1010] +0x2e34 via base a0 ([0x1010]).
  The `lw` at 0xd9d71a4 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `jalr` at 0xd9d718c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d71a8 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d7180 goes to 0xd9d71a4 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9d719c has v0 = ?.

- `__glim_GetMaterialfv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d9aa0 (n32).
  It occupies 404 bytes.
  The `lw` at 0xd9d9aa8 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d9aac loads 4 bytes from abs 0x1010 via base zero (0x0).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d9ae8, `lw` at 0xd9d9b30, `lw` at 0xd9d9c08.
  The `lw` at 0xd9d9b14 loads 4 bytes from abs 0xda8a288 via base gp (0xda90fd8).
  The `jalr` at 0xd9d9aec calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1010], a5=a2 at entry (arg2), a6=[0x1010]+1504.
  The `jalr` at 0xd9d9b34 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1010], a5=a2 at entry (arg2), a6=([0x1010] + one of 0x590, 0x5e0), a7=0x1603.
  The `jalr` at 0xd9d9c0c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1010], a5=a2 at entry (arg2).
  The `jalr` at 0xd9d9c24 calls `__glUnScaleColorf [0xd9e3000]` with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=0x405, a4=[0x1010], a5=a2 at entry (arg2), a6=([0x1010] + one of 0x590, 0x5e0), a7=0x1603.
  The `beq` branch at 0xd9d9ac8 goes to 0xd9d9c08 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d9ad8 goes to 0xd9d9b78 when a0 == a2(=0x404) and falls through when a0 != a2(=0x404).
  The `beq` branch at 0xd9d9ae0 goes to 0xd9d9afc when a0 == a3(=0x405) and falls through when a0 != a3(=0x405).
  The `beq` branch at 0xd9d9b00 goes to 0xd9d9b80 when a1 == a7(=0x1603) and falls through when a1 != a7(=0x1603).
  The `beq` branch at 0xd9d9b08 goes to 0xd9d9ba8 when a1 == t0(=0x1601) and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0xd9d9b10 goes to 0xd9d9c1c when a1 == t1(=0x1600) and falls through when a1 != t1(=0x1600).
  The `beq` branch at 0xd9d9b1c goes to 0xd9d9bb4 when a1 == t2(=0x1200) and falls through when a1 != t2(=0x1200).
  The `beq` branch at 0xd9d9b24 goes to 0xd9d9be4 when a1 == t3(=0x1201) and falls through when a1 != t3(=0x1201).
  The `beq` branch at 0xd9d9b2c goes to 0xd9d9b4c when a1 == t8(=0x1202) and falls through when a1 != t8(=0x1202).
  The return at 0xd9d9b44 has v0 = ?.

- `__glim_GetMaterialiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d9c40 (n32).
  It occupies 912 bytes.
  The `lw` at 0xd9d9c48 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9d9c4c loads 4 bytes from abs 0x1010 via base zero (0x0).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9d9c88, `lw` at 0xd9d9cdc, `lw` at 0xd9d9dc8.
  2 such `lw` accesses load 4 bytes from abs 0xda8a1f0 via base gp (0xda90fd8), including `lw` at 0xd9d9ca8, `lw` at 0xd9d9e04.
  The `lw` at 0xd9d9cbc loads 4 bytes from abs 0xda8a28c via base gp (0xda90fd8).
  12 such `lw` accesses load 4 bytes from abs 0xda8c7a0 via base gp (0xda90fd8), including `lw` at 0xd9d9d14, `lw` at 0xd9d9d3c, `lw` at 0xd9d9d68.
  The `jalr` at 0xd9d9c8c calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a4=0x405, a5=[0x1010]+1504.
  The `jalr` at 0xd9d9ce0 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0xd9d9d1c calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9d48 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9d74 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9da0 calls `floorf` with a0=unknown, a1=a2 at entry (arg2), a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9dcc calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d9df4 calls `__glConvertResult [0xd9daea0]` with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d4, 0x624), a3=0x3, a4=a2 at entry (arg2), a5=0x3, a6=0x1603.
  The `bgezall` at 0xd9d9e20 calls `__glConvertResult [0xd9daea0]` with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d0, 0x620), a3=0x3, a4=a2 at entry (arg2), a5=0x1, a6=0x1603, a7=0x1601.
  The `jalr` at 0xd9d9e3c calls `__glUnScaleColori [0xd9e3050]` with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0xd9d9e64 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=([0x1010] + one of 0x590, 0x5e0), a6=0x1603, a7=0x1601; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9e90 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a5=a2 at entry (arg2); fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9ebc calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a7=a2 at entry (arg2); fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9ee8 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9f24 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9f50 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9f7c calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9fa8 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1010]+3564].
  The `beq` branch at 0xd9d9c64 goes to 0xd9d9dc8 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d9c74 goes to 0xd9d9cfc when a0 == a3(=0x404) and falls through when a0 != a3(=0x404).
  The `beq` branch at 0xd9d9c80 goes to 0xd9d9c9c when a0 == a4(=0x405) and falls through when a0 != a4(=0x405).
  The `beq` branch at 0xd9d9ca4 goes to 0xd9d9ddc when a1 == a6(=0x1603) and falls through when a1 != a6(=0x1603).
  The `beq` branch at 0xd9d9cb0 goes to 0xd9d9e04 when a1 == a7(=0x1601) and falls through when a1 != a7(=0x1601).
  The `beq` branch at 0xd9d9cb8 goes to 0xd9d9e30 when a1 == t0(=0x1600) and falls through when a1 != t0(=0x1600).
  The `beq` branch at 0xd9d9cc4 goes to 0xd9d9e4c when a1 == t1(=0x1200) and falls through when a1 != t1(=0x1200).
  The `beq` branch at 0xd9d9ccc goes to 0xd9d9f10 when a1 == t2(=0x1201) and falls through when a1 != t2(=0x1201).
  The `beq` branch at 0xd9d9cd8 goes to 0xd9d9d04 when a1 == t3(=0x1202) and falls through when a1 != t3(=0x1202).
  The return at 0xd9d9cf4 has v0 = ?.

- `__glim_GetMapiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9da660 (n32).
  It occupies 620 bytes.
  The `lw` at 0xd9da668 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9da66c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9da690 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `lw` at 0xd9da6ac loads 4 bytes from table(0xda80e08) +0x0 via base a5 (table(0xda80e08)).
  4 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9da6b8, `lw` at 0xd9da700, `lw` at 0xd9da738.
  The `lw` at 0xd9da760 loads 4 bytes from table(-0xd6f8) +0x0 via base at (table(-0xd6f8)).
  The `sw` at 0xd9da76c stores 4 bytes to a2 (arg2 at entry) +0x0 via base a2 (a2) with value entry(-0xd6f8).
  The `lw` at 0xd9da780 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b420 via base v1 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-131072).
  The `sw` at 0xd9da784 stores 4 bytes to a2 (arg2 at entry) +0x0 via base a2 (a2) with value [([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111648].
  The `lw` at 0xd9da788 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b41c via base v1 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-131072).
  The `sw` at 0xd9da794 stores 4 bytes to a2 (arg2 at entry) +0x4 via base a2 (a2) with value [([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111644].
  The `lw` at 0xd9da7c4 loads 4 bytes from table(-0xd6fc) +0x0 via base a5 (table(0xffffffffffff0000)).
  The `lw` at 0xd9da7c8 loads 4 bytes from table(-0xd6f8) +0x0 via base a5 (table(0xffffffffffff0000)).
  4 such `lw` accesses load 4 bytes from abs 0xda8a1f0 via base gp (0xda90fd8), including `lw` at 0xd9da7d0, `lw` at 0xd9da830, `lw` at 0xd9da868.
  The `lw` at 0xd9da7e4 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84 via base a2 (([0x1010] + (a0 << 0x2))).
  The `lw` at 0xd9da810 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b41c via base a3 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-131072).
  The `lw` at 0xd9da814 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b420 via base a3 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-131072).
  The `lw` at 0xd9da81c loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b424 via base a3 (([0x1010] + (((a0 << 0x2) + a0) << 0x3))-131072).
  The `lw` at 0xd9da844 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28 via base a2 (([0x1010] + (a0 << 0x2))).
  The `jalr` at 0xd9da6bc calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0xda80e08), a7=a0 at entry (arg0).
  The `jalr` at 0xd9da704 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0xda80e08), a6=entry(0xda80e08), a7=a0 at entry (arg0).
  The `jalr` at 0xd9da73c calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0xda80e08), a6=entry(0xda80e08), a7=a0 at entry (arg0).
  The `jalr` at 0xd9da79c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da7e8 calls `__glConvertResult [0xd9daea0]` with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0 << 0x2))+14980], a3=0x3, a4=a2 at entry (arg2), a6=0xffffffffffff0000, a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da848 calls `__glConvertResult [0xd9daea0]` with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0 << 0x2))+14888], a3=0x3, a4=a2 at entry (arg2), a6=[([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111644], a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da880 calls `__glConvertResult [0xd9daea0]` with a0=[0x1010], a1=0x0, a2=table(-0xd6f4), a3=0x3, a4=a2 at entry (arg2), a5=0x2, a6=-0xd6f4, a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da8bc calls `__glConvertResult [0xd9daea0]` with a0=[0x1010], a1=0x0, a2=([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111640, a3=0x3, a4=a2 at entry (arg2), a5=0x4, a6=0xfffffffffffe4be8, a7=a0 at entry (arg0).
  The `beq` branch at 0xd9da688 goes to 0xd9da798 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9da6a4 goes to 0xd9da6b8 when a6(=a0-3472) >= 0x29 (unsigned) and falls through when a6(=a0-3472) < 0x29 (unsigned).
  The `beq` branch at 0xd9da6e8 goes to 0xd9da7ac when a1 == t1(=0xa00) and falls through when a1 != t1(=0xa00).
  The `beq` branch at 0xd9da6f4 goes to 0xd9da858 when a1 == t2(=0xa02) and falls through when a1 != t2(=0xa02).
  The `beq` branch at 0xd9da6fc goes to 0xd9da74c when a1 == t3(=0xa01) and falls through when a1 != t3(=0xa01).
  The `beq` branch at 0xd9da718 goes to 0xd9da7f8 when a1 == t8(=0xa00) and falls through when a1 != t8(=0xa00).
  The `beq` branch at 0xd9da728 goes to 0xd9da890 when a1 == t9(=0xa02) and falls through when a1 != t9(=0xa02).
  The `beq` branch at 0xd9da730 goes to 0xd9da770 when a1 == ra(=0xa01) and falls through when a1 != ra(=0xa01).
  The return at 0xd9da6cc has v0 = ?.

- `__glim_GetPixelMapfv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9da8d0 (n32).
  It occupies 464 bytes.
  The `lw` at 0xd9da8d8 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9da8dc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9da904 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `lw` at 0xd9da918 loads 4 bytes from table(0xda80eac) +0x0 via base a3 (table(0xda80eac)).
  The `lw` at 0xd9da948 loads 4 bytes from table(-0x9140) +0x0 via base a5 (table(0xffffffffffff0000)).
  The `lw` at 0xd9da95c loads 4 bytes from table(-0x9138) +0x0 via base a5 (table(0xffffffffffff0000)).
  The `lw` at 0xd9da970 loads 4 bytes from unknown (base unknown) via base a5 (unknown).
  4 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0xd9da9a0, `lw` at 0xd9da9b0, `lw` at 0xd9da9c0.
  The `lw` at 0xd9daa08 loads 4 bytes from table(-0x9140) +0x0 via base a7 (table(0xffffffffffff0000)).
  The `lw` at 0xd9daa1c loads 4 bytes from table(-0x9138) +0x0 via base a7 (table(0xffffffffffff0000)).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9daa78, `lw` at 0xd9daa8c.
  The `jalr` at 0xd9daa7c calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=table(0xda80eac), a4=[0x1010], a5=a1 at entry (arg1), a6=(a0-3184 << 0x2).
  The `jalr` at 0xd9daa90 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1010], a5=a1 at entry (arg1), a6=a0-3184.
  The `beq` branch at 0xd9da8f8 goes to 0xd9daa8c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9da910 goes to 0xd9daa78 when a6(=a0-3184) >= 0xa (unsigned) and falls through when a6(=a0-3184) < 0xa (unsigned).
  The `bltz` branch at 0xd9da960 goes to 0xd9da9f0 when a7(=entry(-0x9140)-1) < 0 (signed) and falls through when a7(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9da968 goes to 0xd9da994 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xd9da98c goes to 0xd9da970 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xd9da994 goes to 0xd9da9f0 when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` branch at 0xd9da9e8 goes to 0xd9da9a0 when a3(?) != a4(=-0x1) and falls through when a3(?) == a4(=-0x1).
  The `bltz` branch at 0xd9daa20 goes to 0xd9da9f0 when t9(=entry(-0x9140)-1) < 0 (signed) and falls through when t9(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9daa28 goes to 0xd9daa44 when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` branch at 0xd9daa44 goes to 0xd9daa70 when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` branch at 0xd9daa68 goes to 0xd9daa50 when a3(?) != a4(=-0x1) and falls through when a3(?) == a4(=-0x1).
  The return at 0xd9da9f8 has v0 = ?.

- `__glim_GetPixelMapuiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9daaa0 (n32).
  It occupies 512 bytes.
  The `lw` at 0xd9daaa8 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9daaac loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9daad8 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `lw` at 0xd9daaf0 loads 4 bytes from table(0xda80ed4) +0x0 via base a1 (table(0xda80ed4)).
  The `lw` at 0xd9dab10 loads 4 bytes from table(-0x9140) +0x0 via base t0 (table(0xffffffffffff0000)).
  The `lw` at 0xd9dab20 loads 4 bytes from table(-0x9138) +0x0 via base t0 (table(0xffffffffffff0000)).
  The `lw` at 0xd9dab38 loads 4 bytes from entry(-0x9138) +0x0 via base t0 (entry(-0x9138)).
  The `sw` at 0xd9dab44 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a6 (a1) with value [entry(-0x9138)].
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0xd9dab50, `lw` at 0xd9dab60.
  7 such `sw` accesses store 4 bytes to unknown (base unknown) via base a3 (unknown) with value unknown, including `sw` at 0xd9dab58, `sw` at 0xd9dab6c, `sw` at 0xd9dabe4.
  The `lw` at 0xd9dab98 loads 4 bytes from table(-0x9140) +0x0 via base a6 (table(0xffffffffffff0000)).
  The `lw` at 0xd9daba4 loads 4 bytes from table(-0x9138) +0x0 via base a6 (table(0xffffffffffff0000)).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9dac78, `lw` at 0xd9dac8c.
  The `jalr` at 0xd9dac7c calls `__glSetError [0xd9cd900]` with a0=0x500, a1=table(0xda80ed4), a2=(a0-3184 << 0x2), a3=a1 at entry (arg1), a5=[0x1010], a6=a1 at entry (arg1).
  The `jalr` at 0xd9dac90 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010], a6=a1 at entry (arg1).
  The `beq` branch at 0xd9daac8 goes to 0xd9dac8c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9daae8 goes to 0xd9dac78 when a2(=a0-3184) >= 0xa (unsigned) and falls through when a2(=a0-3184) < 0xa (unsigned).
  The `bltz` branch at 0xd9dab24 goes to 0xd9dab70 when a4(=entry(-0x9140)-1) < 0 (signed) and falls through when a4(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dab2c goes to 0xd9dab48 when t1(?) == 0 and falls through when t1(?) != 0.
  The `beq` branch at 0xd9dab48 goes to 0xd9dab70 when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` branch at 0xd9dab68 goes to 0xd9dab50 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0xd9daba8 goes to 0xd9dab70 when ra(=entry(-0x9140)-1) < 0 (signed) and falls through when ra(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dabb0 goes to 0xd9dabe8 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xd9dabe0 goes to 0xd9dabb8 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xd9dabe8 goes to 0xd9dac70 when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` branch at 0xd9dac68 goes to 0xd9dabf0 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The return at 0xd9dab78 has v0 = ?.

- `__glim_GetPixelMapusv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9daca0 (n32).
  It occupies 512 bytes.
  The `lw` at 0xd9daca8 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9dacac loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9dacd8 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `lw` at 0xd9dacf0 loads 4 bytes from table(0xda80efc) +0x0 via base a1 (table(0xda80efc)).
  The `lw` at 0xd9dad10 loads 4 bytes from table(-0x9140) +0x0 via base t0 (table(0xffffffffffff0000)).
  The `lw` at 0xd9dad20 loads 4 bytes from table(-0x9138) +0x0 via base t0 (table(0xffffffffffff0000)).
  The `lw` at 0xd9dad38 loads 4 bytes from entry(-0x9138) +0x0 via base t0 (entry(-0x9138)).
  The `sh` at 0xd9dad44 stores 2 bytes to a1 (arg1 at entry) +0x0 via base a6 (a1) with value [entry(-0x9138)].
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0xd9dad50, `lw` at 0xd9dad60.
  7 such `sh` accesses store 2 bytes to unknown (base unknown) via base a3 (unknown) with value unknown, including `sh` at 0xd9dad58, `sh` at 0xd9dad6c, `sh` at 0xd9dade4.
  The `lw` at 0xd9dad98 loads 4 bytes from table(-0x9140) +0x0 via base a6 (table(0xffffffffffff0000)).
  The `lw` at 0xd9dada4 loads 4 bytes from table(-0x9138) +0x0 via base a6 (table(0xffffffffffff0000)).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9dae78, `lw` at 0xd9dae8c.
  The `jalr` at 0xd9dae7c calls `__glSetError [0xd9cd900]` with a0=0x500, a1=table(0xda80efc), a2=(a0-3184 << 0x2), a3=a1 at entry (arg1), a5=[0x1010], a6=a1 at entry (arg1).
  The `jalr` at 0xd9dae90 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010], a6=a1 at entry (arg1).
  The `beq` branch at 0xd9dacc8 goes to 0xd9dae8c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9dace8 goes to 0xd9dae78 when a2(=a0-3184) >= 0xa (unsigned) and falls through when a2(=a0-3184) < 0xa (unsigned).
  The `bltz` branch at 0xd9dad24 goes to 0xd9dad70 when a4(=entry(-0x9140)-1) < 0 (signed) and falls through when a4(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dad2c goes to 0xd9dad48 when t1(?) == 0 and falls through when t1(?) != 0.
  The `beq` branch at 0xd9dad48 goes to 0xd9dad70 when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` branch at 0xd9dad68 goes to 0xd9dad50 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0xd9dada8 goes to 0xd9dad70 when ra(=entry(-0x9140)-1) < 0 (signed) and falls through when ra(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dadb0 goes to 0xd9dade8 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xd9dade0 goes to 0xd9dadb8 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xd9dade8 goes to 0xd9dae70 when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` branch at 0xd9dae68 goes to 0xd9dadf0 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The return at 0xd9dad78 has v0 = ?.

- `__glim_GetDoublev` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df4b0 (n32).
  It occupies 60 bytes.
  The `lw` at 0xd9df4c4 loads 4 bytes from abs 0xda8a1f4 via base gp (0xda90fd8).
  The `lw` at 0xd9df4c8 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `bgezall` at 0xd9df4d4 calls `__glDoGet [0xd9dbab0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0xda80f28, a4=0xb1b28.
  The return at 0xd9df4e4 has v0 = ret(__glDoGet).

- `__glim_GetFloatv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df4f0 (n32).
  It occupies 60 bytes.
  The `lw` at 0xd9df504 loads 4 bytes from abs 0xda8a1f4 via base gp (0xda90fd8).
  The `lw` at 0xd9df508 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `bgezall` at 0xd9df514 calls `__glDoGet [0xd9dbab0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0xda80f38, a4=0xb1ae8.
  The return at 0xd9df524 has v0 = ret(__glDoGet).

- `__glim_GetIntegerv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df530 (n32).
  It occupies 60 bytes.
  The `lw` at 0xd9df544 loads 4 bytes from abs 0xda8a1f4 via base gp (0xda90fd8).
  The `lw` at 0xd9df548 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `bgezall` at 0xd9df554 calls `__glDoGet [0xd9dbab0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0xda80f48, a4=0xb1aa8.
  The return at 0xd9df564 has v0 = ret(__glDoGet).

- `__glim_GetBooleanv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df570 (n32).
  It occupies 60 bytes.
  The `lw` at 0xd9df584 loads 4 bytes from abs 0xda8a1f4 via base gp (0xda90fd8).
  The `lw` at 0xd9df588 loads 4 bytes from abs 0xda8906c via base gp (0xda90fd8).
  The `bgezall` at 0xd9df594 calls `__glDoGet [0xd9dbab0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0xda80f58, a4=0xb1a68.
  The return at 0xd9df5a4 has v0 = ret(__glDoGet).

- `__glim_GetString` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df610 (n32).
  It occupies 192 bytes.
  The `lw` at 0xd9df610 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9df61c loads 4 bytes from abs 0x1010 via base zero (0x0).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9df654, `lw` at 0xd9df6b4.
  The `lw` at 0xd9df684 loads 4 bytes from [0x1010] +0xe00 via base a3 ([0x1010]).
  The `lw` at 0xd9df694 loads 4 bytes from [0x1010] +0xdf4 via base a3 ([0x1010]).
  The `lw` at 0xd9df6a8 loads 4 bytes from [0x1010] +0xdf8 via base a3 ([0x1010]).
  The `lw` at 0xd9df6b0 loads 4 bytes from [0x1010] +0xdfc via base a3 ([0x1010]).
  The `jalr` at 0xd9df65c calls `__glSetError [0xd9cd900]` with a0=0x500, a1=0x1f02, a2=0x1f03, a3=[0x1010].
  The `jalr` at 0xd9df6bc calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `beq` branch at 0xd9df62c goes to 0xd9df6b4 when v0(=[0x1018]) == v1(=0x1) and falls through when v0(=[0x1018]) != v1(=0x1).
  The `beq` branch at 0xd9df638 goes to 0xd9df694 when a0 == v0(=0x1f00) and falls through when a0 != v0(=0x1f00).
  The `beq` branch at 0xd9df640 goes to 0xd9df6a4 when a0 == v1(=0x1f01) and falls through when a0 != v1(=0x1f01).
  The `beq` branch at 0xd9df648 goes to 0xd9df6ac when a0 == a1(=0x1f02) and falls through when a0 != a1(=0x1f02).
  The `beq` branch at 0xd9df650 goes to 0xd9df684 when a0 == a2(=0x1f03) and falls through when a0 != a2(=0x1f03).
  The return at 0xd9df670 has v0 = 0x0.

- `__glim_GetPointervEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df6d0 (n32).
  It occupies 376 bytes.
  The `lw` at 0xd9df6d8 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9df6dc loads 4 bytes from abs 0x1010 via base zero (0x0).
  5 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9df73c, `lw` at 0xd9df784, `lw` at 0xd9df7cc.
  The `lw` at 0xd9df740 loads 4 bytes from [0x1010] +0x1464 via base a3 ([0x1010]).
  The `sw` at 0xd9df748 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5220].
  The `lw` at 0xd9df774 loads 4 bytes from [0x1010] +0x13fc via base a3 ([0x1010]).
  The `sw` at 0xd9df780 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5116].
  The `lw` at 0xd9df7b8 loads 4 bytes from [0x1010] +0x1328 via base a3 ([0x1010]).
  The `sw` at 0xd9df7c4 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+4904].
  The `lw` at 0xd9df7d4 loads 4 bytes from [0x1010] +0x1430 via base a3 ([0x1010]).
  The `sw` at 0xd9df7e0 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5168].
  The `lw` at 0xd9df7ec loads 4 bytes from [0x1010] +0x1308 via base a3 ([0x1010]).
  The `sw` at 0xd9df7f4 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+4872].
  The `lw` at 0xd9df800 loads 4 bytes from [0x1010] +0x1414 via base a3 ([0x1010]).
  The `sw` at 0xd9df80c stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5140].
  The `lw` at 0xd9df818 loads 4 bytes from [0x1010] +0x13e0 via base a3 ([0x1010]).
  The `sw` at 0xd9df824 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5088].
  The `lw` at 0xd9df828 loads 4 bytes from [0x1010] +0x1448 via base a3 ([0x1010]).
  The `sw` at 0xd9df830 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1010]+5192].
  The `jalr` at 0xd9df788 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=unknown, a3=[0x1010], a4=one of 0x808e, 0x8092.
  The `jalr` at 0xd9df838 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010], a4=0x8090.
  The `beq` branch at 0xd9df6f8 goes to 0xd9df834 when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xd9df704 goes to 0xd9df74c when a0 < a4(=0x8090) (unsigned) and falls through when a0 >= a4(=0x8090) (unsigned).
  The `beq` branch at 0xd9df71c goes to 0xd9df7f8 when a4(=0x8090) >= a0 (unsigned) and falls through when a4(=0x8090) < a0 (unsigned).
  The `bne` branch at 0xd9df728 goes to 0xd9df7c8 when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` branch at 0xd9df730 goes to 0xd9df828 when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` branch at 0xd9df738 goes to 0xd9df788 when a0 != t0(=0x8093) and falls through when a0 == t0(=0x8093).
  The `bne` branch at 0xd9df758 goes to 0xd9df7a0 when a0 < a4(=0x808e) (unsigned) and falls through when a0 >= a4(=0x808e) (unsigned).
  The `beq` branch at 0xd9df760 goes to 0xd9df810 when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` branch at 0xd9df768 goes to 0xd9df784 when a0 != t8(=0x808f) and falls through when a0 == t8(=0x808f).
  The `bne` branch at 0xd9df7a4 goes to 0xd9df7e4 when a0 < 0xdf3 (unsigned) and falls through when a0 >= 0xdf3 (unsigned).
  The `beq` branch at 0xd9df7ac goes to 0xd9df784 when at(?) == 0 and falls through when at(?) != 0.
  The `bne` branch at 0xd9df7c8 goes to 0xd9df788 when a0 != v1(=0x8091) and falls through when a0 == v1(=0x8091).
  The `bne` branch at 0xd9df7e4 goes to 0xd9df788 when a0 != a2(=0xdf0) and falls through when a0 == a2(=0xdf0).
  The return at 0xd9df77c has v0 = 0x1.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e0da0 (n32).
  It occupies 52 bytes.
  The `lw` at 0xd9e0db4 loads 4 bytes from abs 0xda8a234 via base gp (0xda90fd8).
  The `bgezall` at 0xd9e0dbc calls `__glGetHistogramParameters [0xd9e0bf0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e0dcc has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e0de0 (n32).
  It occupies 52 bytes.
  The `lw` at 0xd9e0df4 loads 4 bytes from abs 0xda8a234 via base gp (0xda90fd8).
  The `bgezall` at 0xd9e0dfc calls `__glGetHistogramParameters [0xd9e0bf0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e0e0c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e1380 (n32).
  It occupies 112 bytes.
  The `lw` at 0xd9e1384 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xd9e13ac loads 4 bytes from abs 0xda8a240 via base gp (0xda90fd8).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xd9e13b0, `lw` at 0xd9e13dc.
  The `lw` at 0xd9e13d0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `jalr` at 0xd9e13b4 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9e13cc calls `__glResetMinmax [0xd9e1150]` with a0=[0x1010], a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e13e0 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9e139c goes to 0xd9e13dc when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9e13a8 goes to 0xd9e13cc when a0 == a1(=0x802e) and falls through when a0 != a1(=0x802e).
  The return at 0xd9e13c4 has v0 = ?.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e1690 (n32).
  It occupies 52 bytes.
  The `lw` at 0xd9e16a4 loads 4 bytes from abs 0xda8a250 via base gp (0xda90fd8).
  The `bgezall` at 0xd9e16ac calls `__glGetMinmaxParameters [0xd9e15b0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e16bc has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e16d0 (n32).
  It occupies 52 bytes.
  The `lw` at 0xd9e16e4 loads 4 bytes from abs 0xda8a250 via base gp (0xda90fd8).
  The `bgezall` at 0xd9e16ec calls `__glGetMinmaxParameters [0xd9e15b0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e16fc has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9ef2c0 (n32).
  It occupies 12 bytes.
  The return at 0xd9ef2c4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9ef2e0 (n32).
  It occupies 12 bytes.
  The return at 0xd9ef2e4 has v0 = ?.

- `__glim_Normal3dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f4110 (n32).
  It occupies 44 bytes.
  The `lw` at 0xd9f4110 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The return at 0xd9f4134 has v0 = ?.

- `__glim_Normal3sv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f4260 (n32).
  It occupies 96 bytes.
  The `lh` at 0xd9f4260 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0xd9f4270 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lh` at 0xd9f4284 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a0 (a0).
  The `lh` at 0xd9f42a0 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The return at 0xd9f42b8 has v0 = ([a0+4]:2 << 0x1)+1.

- `__glim_Normal3i` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f42c0 (n32).
  It occupies 92 bytes.
  The `lw` at 0xd9f42f0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The return at 0xd9f4314 has v0 = [0x1010].

- `__glim_Normal3iv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f4320 (n32).
  It occupies 104 bytes.
  The `lw` at 0xd9f4320 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0xd9f4344 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9f4354 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `lw` at 0xd9f436c loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The return at 0xd9f4380 has v0 = [0x1010].

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02220 (n32).
  It occupies 164 bytes.
  The `lw` at 0xda02224 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda02228 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda02258 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda0227c loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda02290 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda022ac loads 4 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0xda0225c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02280 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda022b4 calls `(unknown callee)` with a0=unknown, a1=sp-48, a2=unknown, a3=unknown, a4=a0 at entry (arg0).
  The `beq` branch at 0xda02244 goes to 0xda02294 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda02250 goes to 0xda02274 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda0226c has v0 = ?.

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda022d0 (n32).
  It occupies 136 bytes.
  The `lw` at 0xda022d4 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda022d8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda02308 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda02324 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda02338 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda0233c loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda0230c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02328 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02340 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0xda022f4 goes to 0xda0233c when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda02300 goes to 0xda0231c when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda02350 has v0 = ?.

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02770 (n32).
  It occupies 176 bytes.
  The `lw` at 0xda02774 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda02778 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda027a8 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda027cc loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda027e0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda02808 loads 4 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0xda027ac calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda027d0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02810 calls `(unknown callee)` with a0=unknown, a1=sp-48, a2=unknown, a3=unknown, a4=a0 at entry (arg0).
  The `beq` branch at 0xda02794 goes to 0xda027e4 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda027a0 goes to 0xda027c4 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda027bc has v0 = ?.

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02820 (n32).
  It occupies 136 bytes.
  The `lw` at 0xda02824 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda02828 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda02858 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda02874 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda02888 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda0288c loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda0285c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02878 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02890 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0xda02844 goes to 0xda0288c when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda02850 goes to 0xda0286c when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda028a0 has v0 = ?.

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02d40 (n32).
  It occupies 188 bytes.
  The `lw` at 0xda02d44 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda02d48 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda02d78 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda02d9c loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda02db0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda02de4 loads 4 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0xda02d7c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02da0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02dec calls `(unknown callee)` with a0=unknown, a1=sp-48, a2=unknown, a3=unknown, a4=a0 at entry (arg0).
  The `beq` branch at 0xda02d64 goes to 0xda02db4 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda02d70 goes to 0xda02d94 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda02d8c has v0 = ?.

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02e00 (n32).
  It occupies 136 bytes.
  The `lw` at 0xda02e04 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda02e08 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda02e38 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda02e54 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda02e68 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda02e6c loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda02e3c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02e58 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02e70 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0xda02e24 goes to 0xda02e6c when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda02e30 goes to 0xda02e4c when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda02e80 has v0 = ?.

- `__glim_Rectd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03800 (n32).
  It occupies 184 bytes.
  The `lw` at 0xda03804 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda0380c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda03850 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda0386c loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda0388c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03894 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda03854 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda03870 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda038a0 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0xda0382c goes to 0xda03890 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda03848 goes to 0xda03864 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda038b0 has v0 = ?.

- `__glim_Rectdv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda038c0 (n32).
  It occupies 176 bytes.
  The `lw` at 0xda038c4 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda038c8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda038fc loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda03918 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda03930 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03944 loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda03900 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda0391c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03958 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=a0 at entry (arg0).
  The `beq` branch at 0xda038e4 goes to 0xda03934 when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda038f4 goes to 0xda03910 when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda03968 has v0 = ?.

- `__glim_Rectf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03970 (n32).
  It occupies 184 bytes.
  The `lw` at 0xda03974 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda0397c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda039c0 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda039dc loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda039fc stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03a04 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda039c4 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda039e0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda03a10 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f13=f12, f14=f13, f15=f14, f16=f15.
  The `beq` branch at 0xda0399c goes to 0xda03a00 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda039b8 goes to 0xda039d4 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda03a20 has v0 = ?.

- `__glim_Rectfv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03a30 (n32).
  It occupies 160 bytes.
  The `lw` at 0xda03a34 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda03a38 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda03a6c loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda03a88 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda03aa0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03aa8 loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda03a70 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03a8c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03ab8 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=a0 at entry (arg0); fp f13=[a0], f14=[a0+4], f15=[a1], f16=[a1+4].
  The `beq` branch at 0xda03a54 goes to 0xda03aa4 when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda03a64 goes to 0xda03a80 when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda03ac8 has v0 = ?.

- `__glim_Recti` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03ad0 (n32).
  It occupies 192 bytes.
  The `lw` at 0xda03ad4 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda03ad8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda03b14 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda03b30 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda03b50 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03b64 loads 4 bytes from unknown (base unknown) via base a6 (unknown).
  The `jalr` at 0xda03b18 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03b34 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03b78 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=a0 at entry (arg0).
  The `beq` branch at 0xda03af4 goes to 0xda03b54 when a5(=[0x1018]) == 0 and falls through when a5(=[0x1018]) != 0.
  The `beq` branch at 0xda03b0c goes to 0xda03b28 when a5(=[0x1018]) == v0(=0x2) and falls through when a5(=[0x1018]) != v0(=0x2).
  The return at 0xda03b88 has v0 = ?.

- `__glim_Rectiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03b90 (n32).
  It occupies 192 bytes.
  The `lw` at 0xda03b94 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda03b98 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda03bcc loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda03be8 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda03c00 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03c04 loads 4 bytes from a1 (arg1 at entry) +0x4 via base a1 (a1).
  The `lw` at 0xda03c08 loads 4 bytes from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The `lw` at 0xda03c0c loads 4 bytes from a0 (arg0 at entry) +0x4 via base a5 (a0).
  The `lw` at 0xda03c14 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a5 (a0).
  The `lw` at 0xda03c20 loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda03bd0 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03bec calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03c38 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=a0 at entry (arg0).
  The `beq` branch at 0xda03bb4 goes to 0xda03c04 when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda03bc4 goes to 0xda03be0 when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda03c48 has v0 = ?.

- `__glim_Rects` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03c50 (n32).
  It occupies 192 bytes.
  The `lw` at 0xda03c54 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda03c58 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda03c94 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda03cb0 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda03cd0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda03ce4 loads 4 bytes from unknown (base unknown) via base a6 (unknown).
  The `jalr` at 0xda03c98 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03cb4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03cf8 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=a0 at entry (arg0).
  The `beq` branch at 0xda03c74 goes to 0xda03cd4 when a5(=[0x1018]) == 0 and falls through when a5(=[0x1018]) != 0.
  The `beq` branch at 0xda03c8c goes to 0xda03ca8 when a5(=[0x1018]) == v0(=0x2) and falls through when a5(=[0x1018]) != v0(=0x2).
  The return at 0xda03d08 has v0 = ?.

- `__glim_Rectsv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03d10 (n32).
  It occupies 192 bytes.
  The `lw` at 0xda03d14 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda03d18 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda03d4c loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda03d68 loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda03d80 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lh` at 0xda03d84 loads 2 bytes from a1 (arg1 at entry) +0x2 via base a1 (a1).
  The `lh` at 0xda03d88 loads 2 bytes from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The `lh` at 0xda03d8c loads 2 bytes from a0 (arg0 at entry) +0x2 via base a5 (a0).
  The `lh` at 0xda03d94 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a5 (a0).
  The `lw` at 0xda03da0 loads 4 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0xda03d50 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03d6c calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03db8 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=a0 at entry (arg0).
  The `beq` branch at 0xda03d34 goes to 0xda03d84 when a3(=[0x1018]) == 0 and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda03d44 goes to 0xda03d60 when a3(=[0x1018]) == v0(=0x2) and falls through when a3(=[0x1018]) != v0(=0x2).
  The return at 0xda03dc8 has v0 = ?.

- `__glim_SelectBuffer` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03ea0 (n32).
  It occupies 160 bytes.
  The `lw` at 0xda03ea8 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda03eac loads 4 bytes from abs 0x1010 via base zero (0x0).
  3 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xda03ed4, `lw` at 0xda03ee0, `lw` at 0xda03f1c.
  The `lw` at 0xda03ed8 loads 4 bytes from [0x1010] +0xc84 via base a3 ([0x1010]).
  The `sw` at 0xda03ee4 stores 4 bytes to [0x1010] +0x132c via base a3 ([0x1010]) with value a1.
  The `sw` at 0xda03ee8 stores 4 bytes to [0x1010] +0x1330 via base a3 ([0x1010]) with value a0.
  The `sw` at 0xda03eec stores 4 bytes to [0x1010] +0x1328 via base a3 ([0x1010]) with value a1.
  The `sb` at 0xda03ef0 stores 1 byte to [0x1010] +0x1324 via base a3 ([0x1010]) with value 0x0.
  The `jalr` at 0xda03f0c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[[0x1010]+3204], a3=[0x1010], a4=0x1c02.
  The `jalr` at 0xda03f20 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010], a4=0x1c02.
  The `jalr` at 0xda03f30 calls `__glSetError [0xd9cd900]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010], a4=0x1c02.
  The `beq` branch at 0xda03ec8 goes to 0xda03f1c when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xda03ed0 goes to 0xda03f30 when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xda03edc goes to 0xda03f0c when a2(=[[0x1010]+3204]) == a4(=0x1c02) and falls through when a2(=[[0x1010]+3204]) != a4(=0x1c02).
  The return at 0xda03ef8 has v0 = 0x1.

- `__glim_PopName` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda04040 (n32).
  It occupies 148 bytes.
  The `lw` at 0xda04040 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda0404c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda04064 loads 4 bytes from [0x1010] +0xc84 via base a1 ([0x1010]).
  The `lw` at 0xda04074 loads 4 bytes from [0x1010] +0x1320 via base a1 ([0x1010]).
  The `lw` at 0xda04078 loads 4 bytes from [0x1010] +0x131c via base a1 ([0x1010]).
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xda04080, `lw` at 0xda040bc.
  The `sb` at 0xda04084 stores 1 byte to [0x1010] +0x1318 via base a1 ([0x1010]) with value 0x0.
  The `sw` at 0xda0408c stores 4 bytes to [0x1010] +0x1320 via base a1 ([0x1010]) with value [[0x1010]+4896]-4.
  The `jalr` at 0xda040ac calls `__glSetError [0xd9cd900]` with a0=0x504, a1=[0x1010], a2=[[0x1010]+4896], a3=a3 at entry (arg3).
  The `jalr` at 0xda040c4 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda0405c goes to 0xda040bc when v0(=[0x1018]) == v1(=0x1) and falls through when v0(=[0x1018]) != v1(=0x1).
  The `bne` branch at 0xda0406c goes to 0xda0409c when v0(=[[0x1010]+3204]) != v1(=0x1c02) and falls through when v0(=[[0x1010]+3204]) == v1(=0x1c02).
  The `beq` branch at 0xda0407c goes to 0xda040a8 when a0(=[[0x1010]+4892]) == a2(=[[0x1010]+4896]) and falls through when a0(=[[0x1010]+4892]) != a2(=[[0x1010]+4896]).
  The return at 0xda04094 has v0 = [[0x1010]+3204].

- `__glim_PushName` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda040e0 (n32).
  It occupies 172 bytes.
  The `lw` at 0xda040e0 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda040ec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda04104 loads 4 bytes from [0x1010] +0xc84 via base a2 ([0x1010]).
  The `lw` at 0xda04114 loads 4 bytes from [0x1010] +0xec8 via base a2 ([0x1010]).
  The `lw` at 0xda04118 loads 4 bytes from [0x1010] +0x131c via base a2 ([0x1010]).
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1320 via base a2 ([0x1010]), including `lw` at 0xda0411c, `lw` at 0xda0413c.
  2 such `lw` accesses load 4 bytes from abs 0xda8a010 via base gp (0xda90fd8), including `lw` at 0xda04130, `lw` at 0xda04174.
  The `sw` at 0xda04134 stores 4 bytes to [[0x1010]+4896] +0x0 via base a3 ([[0x1010]+4896]) with value a0.
  The `sb` at 0xda04138 stores 1 byte to [0x1010] +0x1318 via base a2 ([0x1010]) with value 0x0.
  The `sw` at 0xda04150 stores 4 bytes to [0x1010] +0x1320 via base a2 ([0x1010]) with value [[0x1010]+4896]+4.
  The `jalr` at 0xda04164 calls `__glSetError [0xd9cd900]` with a0=0x503, a1=unknown, a2=[0x1010], a3=[[0x1010]+4896], a4=([[0x1010]+3784] << 0x2).
  The `jalr` at 0xda0417c calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xda040fc goes to 0xda04174 when v0(=[0x1018]) == v1(=0x1) and falls through when v0(=[0x1018]) != v1(=0x1).
  The `bne` branch at 0xda0410c goes to 0xda04154 when v0(=[[0x1010]+3204]) != v1(=0x1c02) and falls through when v0(=[[0x1010]+3204]) == v1(=0x1c02).
  The `beq` branch at 0xda0412c goes to 0xda04160 when a3(=[[0x1010]+4896]) >= a1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned) and falls through when a3(=[[0x1010]+4896]) < a1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned).
  The return at 0xda0414c has v0 = [[0x1010]+3204].

- `__glim_TexGenf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda14a60 (n32).
  It occupies 84 bytes.
  The `lw` at 0xda14a84 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda14aa0 loads 4 bytes from abs 0xda8a7e4 via base gp (0xda90fd8).
  The `jalr` at 0xda14a88 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda14aa4 calls `__glim_TexGenfv [0xda14850]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0xda14a7c goes to 0xda14aa0 when a1 == at(=0x2500) and falls through when a1 != at(=0x2500).
  The return at 0xda14a98 has v0 = ?.

- `__glim_TexGend` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda14cf0 (n32).
  It occupies 84 bytes.
  The `lw` at 0xda14d14 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda14d30 loads 4 bytes from abs 0xda8a7ec via base gp (0xda90fd8).
  The `jalr` at 0xda14d18 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda14d34 calls `__glim_TexGendv [0xda14ac0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0xda14d0c goes to 0xda14d30 when a1 == at(=0x2500) and falls through when a1 != at(=0x2500).
  The return at 0xda14d28 has v0 = ?.

- `__glim_TexGeni` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda14fa0 (n32).
  It occupies 84 bytes.
  The `lw` at 0xda14fc4 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda14fe0 loads 4 bytes from abs 0xda8a7f4 via base gp (0xda90fd8).
  The `jalr` at 0xda14fc8 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda14fe4 calls `__glim_TexGeniv [0xda14d50]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=a3 at entry (arg3).
  The `beq` branch at 0xda14fbc goes to 0xda14fe0 when a1 == at(=0x2500) and falls through when a1 != at(=0x2500).
  The return at 0xda14fd8 has v0 = ?.

- `__glim_TexEnvf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda160d0 (n32).
  It occupies 84 bytes.
  The `lw` at 0xda160f4 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda16110 loads 4 bytes from abs 0xda8a820 via base gp (0xda90fd8).
  The `jalr` at 0xda160f8 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda16114 calls `__glim_TexEnvfv [0xda15f80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0xda160ec goes to 0xda16110 when a1 == at(=0x2200) and falls through when a1 != at(=0x2200).
  The return at 0xda16108 has v0 = ?.

- `__glim_TexEnvi` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda16270 (n32).
  It occupies 84 bytes.
  The `lw` at 0xda16294 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda162b0 loads 4 bytes from abs 0xda8a828 via base gp (0xda90fd8).
  The `jalr` at 0xda16298 calls `__glSetError [0xd9cd900]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda162b4 calls `__glim_TexEnviv [0xda16130]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=a3 at entry (arg3).
  The `beq` branch at 0xda1628c goes to 0xda162b0 when a1 == at(=0x2200) and falls through when a1 != at(=0x2200).
  The return at 0xda162a8 has v0 = ?.

- `__glim_Vertex3s` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda32910 (n32).
  It occupies 100 bytes.
  The `lw` at 0xda32914 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda32924 loads 4 bytes from [0x1010] +0x17f4 via base at ([0x1010]).
  The `lw` at 0xda32938 loads 4 bytes from [[0x1010]+6132] +0x554 via base at ([[0x1010]+6132]).
  The `jalr` at 0xda3295c calls `(unknown callee)` with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda3296c has v0 = ret(?).

- `__glim_Vertex4s` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda32c00 (n32).
  It occupies 112 bytes.
  The `lw` at 0xda32c0c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda32c20 loads 4 bytes from [0x1010] +0x17f4 via base at ([0x1010]).
  The `lw` at 0xda32c34 loads 4 bytes from [[0x1010]+6132] +0x574 via base at ([[0x1010]+6132]).
  The `jalr` at 0xda32c58 calls `(unknown callee)` with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda32c68 has v0 = ret(?).

- `__glim_LoadIdentity` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda35040 (n32).
  It occupies 124 bytes.
  The `lw` at 0xda35040 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda35044 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda35070 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda3508c loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda3509c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda350a0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda35074 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35090 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda350a4 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0xda3505c goes to 0xda350a0 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda35068 goes to 0xda35084 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda350b4 has v0 = ?.

- `__glim_PushMatrix` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda357a0 (n32).
  It occupies 124 bytes.
  The `lw` at 0xda357a0 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda357a4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda357d0 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda357ec loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda357fc stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda35800 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda357d4 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda357f0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35804 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0xda357bc goes to 0xda35800 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda357c8 goes to 0xda357e4 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda35814 has v0 = ?.

- `__glim_PopMatrix` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda35820 (n32).
  It occupies 124 bytes.
  The `lw` at 0xda35820 loads 4 bytes from abs 0x1018 via base zero (0x0).
  The `lw` at 0xda35824 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda35850 loads 4 bytes from abs 0xda8a010 via base gp (0xda90fd8).
  The `lw` at 0xda3586c loads 4 bytes from [0x1010] +0x2e40 via base t9 ([0x1010]).
  The `sw` at 0xda3587c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda35880 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0xda35854 calls `__glSetError [0xd9cd900]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35870 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35884 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0xda3583c goes to 0xda35880 when a2(=[0x1018]) == 0 and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda35848 goes to 0xda35864 when a2(=[0x1018]) == v0(=0x2) and falls through when a2(=[0x1018]) != v0(=0x2).
  The return at 0xda35894 has v0 = ?.

- `__glim_NewList` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21d1aa0 (n64).
  It occupies 408 bytes.
  The `ld` at 0x21d1aa8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x21d1aac loads 4 bytes from abs 0x1030 via base zero (0x0).
  5 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x21d1ae4, `ld` at 0x21d1b00, `ld` at 0x21d1b80.
  The `lw` at 0x21d1af8 loads 4 bytes from [0x1020]:8 +0x1540 via base s0 ([0x1020]:8).
  4 such `ld` accesses load 8 bytes from abs 0x22def20 via base gp (0x22e0798), including `ld` at 0x21d1b14, `ld` at 0x21d1ba0, `ld` at 0x21d1bc8.
  2 such `sd` accesses store 8 bytes to [0x1020]:8 +0x1560 via base s0 ([0x1020]:8) with value 0x0, including `sd` at 0x21d1b24, `sd` at 0x21d1be8.
  The `sd` at 0x21d1b28 stores 8 bytes to [0x1020]:8 +0x1558 via base s0 ([0x1020]:8) with value 0x0.
  The `sw` at 0x21d1b2c stores 4 bytes to [0x1020]:8 +0x1550 via base s0 ([0x1020]:8) with value 0x0.
  The `sw` at 0x21d1b30 stores 4 bytes to [0x1020]:8 +0x154c via base s0 ([0x1020]:8) with value 0x0.
  The `sw` at 0x21d1b34 stores 4 bytes to [0x1020]:8 +0x153c via base s0 ([0x1020]:8) with value a1.
  The `ld` at 0x21d1b3c loads 8 bytes from [0x1020]:8 +0x4740 via base s0 ([0x1020]:8).
  The `sw` at 0x21d1b44 stores 4 bytes to [0x1020]:8 +0x1540 via base s0 ([0x1020]:8) with value a0.
  The `sd` at 0x21d1b4c stores 8 bytes to [0x1020]:8 +0x1ad8 via base s0 ([0x1020]:8) with value unknown.
  The `ld` at 0x21d1b58 loads 8 bytes from [0x1020]:8 +0x1500 via base s0 ([0x1020]:8).
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x1510 via base s0 ([0x1020]:8), including `ld` at 0x21d1b84, `ld` at 0x21d1bcc.
  The `ld` at 0x21d1b90 loads 8 bytes from [0x1020]:8 +0x1568 via base s0 ([0x1020]:8).
  The `ld` at 0x21d1b9c loads 8 bytes from abs 0x1088 via base zero (0x0).
  The `ld` at 0x21d1be0 loads 8 bytes from [0x1020]:8 +0x2998 via base s0 ([0x1020]:8).
  The `ld` at 0x21d1bec loads 8 bytes from [0x1020]:8 +0x4dd0 via base s0 ([0x1020]:8).
  The `sd` at 0x21d1bfc stores 8 bytes to [0x1020]:8 +0x1568 via base s0 ([0x1020]:8) with value ret(unknown).
  The `jalr` at 0x21d1ae8 calls `__glSetError [0x22115d0]` with a0=0x500, a1=0x1300, a2=0x1301, a3=a3 at entry (arg3).
  The `jalr` at 0x21d1b04 calls `__glSetError [0x22115d0]` with a0=0x502, a1=0x1300, a2=0x1301, a3=[[0x1020]:8+5440].
  The `jalr` at 0x21d1b1c calls `__glMipsCopyDispatch [0x22bd140]` with a0=[0x1020]:8+6880, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x21d1b50 calls `(unknown callee)` with a0=[0x1020]:8, a1=unknown, a2=unknown, a3=unknown, a5=a0 at entry (arg0).
  The `jalr` at 0x21d1b5c calls `(unknown callee)` with a0=[0x1020]:8, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x21d1bb8 calls `__glMipsCopyDispatch [0x22bd140]` with a0=unknown, a1=[0x1020]:8+14424, a2=unknown, a3=unknown.
  The `jalr` at 0x21d1bdc calls `__glMipsCopyDispatch [0x22bd140]` with a0=[[0x1020]:8+10648]:8, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x21d1bf0 calls `(unknown callee)` with a0=[0x1020]:8, a1=0x1300, a2=0x1301, a3=[[0x1020]:8+5440], a6=[[0x1020]:8+5392]:8, a7=[[0x1020]:8+5480]:8.
  The `jalr` at 0x21d1c04 calls `__glSetError [0x22115d0]` with a0=0x505, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x21d1c18 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21d1c28 calls `__glSetError [0x22115d0]` with a0=0x501, a1=0x1300, a2=0x1301, a3=[[0x1020]:8+5440].
  The `beq` branch at 0x21d1acc goes to 0x21d1c14 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x21d1ad8 goes to 0x21d1af8 when s1(=a1) == a1(=0x1300) and falls through when s1(=a1) != a1(=0x1300).
  The `beq` branch at 0x21d1ae0 goes to 0x21d1af8 when s1(=a1) == a2(=0x1301) and falls through when s1(=a1) != a2(=0x1301).
  The `beq` branch at 0x21d1afc goes to 0x21d1b7c when a3(=[[0x1020]:8+5440]) == 0 and falls through when a3(=[[0x1020]:8+5440]) != 0.
  The `beq` branch at 0x21d1b48 goes to 0x21d1b58 when t9(=[[0x1020]:8+18240]:8) == 0 and falls through when t9(=[[0x1020]:8+18240]:8) != 0.
  The `beq` branch at 0x21d1b7c goes to 0x21d1c28 when a0 == 0 and falls through when a0 != 0.
  The `beq` branch at 0x21d1b88 goes to 0x21d1b9c when a6(=[[0x1020]:8+5392]:8) == 0 and falls through when a6(=[[0x1020]:8+5392]:8) != 0.
  The `beq` branch at 0x21d1b94 goes to 0x21d1bec when a7(=[[0x1020]:8+5480]:8) == 0 and falls through when a7(=[[0x1020]:8+5480]:8) != 0.
  The `bne` branch at 0x21d1bc4 goes to 0x21d1b18 when s1(=a1) != t2(=0x1301) and falls through when s1(=a1) == t2(=0x1301).
  The `bne` branch at 0x21d1bd0 goes to 0x21d1b14 when t3(=[[0x1020]:8+5392]:8) != 0 and falls through when t3(=[[0x1020]:8+5392]:8) == 0.
  The `bne` branch at 0x21d1bf8 goes to 0x21d1b9c when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The return at 0x21d1b74 has v0 = ?.

- `__gllc_CallList` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21d1e60 (n64).
  It occupies 140 bytes.
  The `ld` at 0x21d1e6c loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x21d1e88 loads 8 bytes from abs 0x22d9620 via base gp (0x22e0798).
  The `ld` at 0x21d1eb0 loads 8 bytes from abs 0x22d95c8 via base gp (0x22e0798).
  The `ld` at 0x21d1eb4 loads 8 bytes from abs 0x22d9630 via base gp (0x22e0798).
  The `sh` at 0x21d1eb8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value 0x0.
  The `sw` at 0x21d1ecc stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `ld` at 0x21d1ed8 loads 8 bytes from abs 0x22d96a0 via base gp (0x22e0798).
  The `bgezall` at 0x21d1e90 calls `__glDlistAllocOp2 [0x21d29e0]` with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x21d1ec8 calls `__glDlistAppendOp [0x21d2a70]` with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x21d1ef0, a3=unknown.
  The `bgezall` at 0x21d1edc calls `__gllc_InvalidEnum [0x21d3050]` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21d1e80 goes to 0x21d1ed8 when a0 == 0 and falls through when a0 != 0.
  The `bne` branch at 0x21d1e98 goes to 0x21d1eb0 when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0x21d1ea8 has v0 = ?.

- `__gllc_CallLists` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21d2310 (n64).
  It occupies 304 bytes.
  The `ld` at 0x21d2318 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x21d2354 loads 8 bytes from abs 0x22df560 via base gp (0x22e0798).
  The `lbu` at 0x21d2374 loads 1 byte from table(0x22c4e90) +0x0 via base a1 (table(0x22c4e90)).
  2 such `ld` accesses load 8 bytes from abs 0x22d96a0 via base gp (0x22e0798), including `ld` at 0x21d2388, `ld` at 0x21d23a0.
  The `ld` at 0x21d23a8 loads 8 bytes from abs 0x22d9620 via base gp (0x22e0798).
  The `sw` at 0x21d23ec stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `ld` at 0x21d23f0 loads 8 bytes from abs 0x22df6f8 via base gp (0x22e0798).
  The `sw` at 0x21d2400 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sh` at 0x21d240c stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `ld` at 0x21d2410 loads 8 bytes from abs 0x22d9630 via base gp (0x22e0798).
  The `ld` at 0x21d2420 loads 8 bytes from abs 0x22d95f0 via base gp (0x22e0798).
  The `ld` at 0x21d242c loads 8 bytes from abs 0x22d9698 via base gp (0x22e0798).
  The `bgezall` at 0x21d238c calls `__gllc_InvalidEnum [0x21d3050]` with a0=[0x1020]:8, a1=unknown, a2=0x22c4e90, a3=a3 at entry (arg3).
  The `bgezall` at 0x21d23bc calls `__glDlistAllocOp2 [0x21d29e0]` with a0=[0x1020]:8, a1=unknown, a2=-0x8, a3=a3 at entry (arg3).
  The `jalr` at 0x21d2408 calls `memcpy` with a0=ret(__glDlistAllocOp2)+32, a1=a2 at entry (arg2), a2=unknown, a3=unknown, a4=0x1.
  The `bgezall` at 0x21d241c calls `__glDlistAppendOp [0x21d2a70]` with a0=[0x1020]:8, a1=unknown, a2=0x21d2440, a3=unknown.
  The `bgezall` at 0x21d2430 calls `__gllc_InvalidValue [0x21d2ff0]` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x21d2348 goes to 0x21d242c when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x21d2358 goes to 0x21d239c when a1 < 0x1400 (unsigned) and falls through when a1 >= 0x1400 (unsigned).
  The `beq` branch at 0x21d2360 goes to 0x21d239c when a0(?) == 0 and falls through when a0(?) != 0.
  The `bgez` branch at 0x21d2380 goes to 0x21d23a8 when s3(?) >= 0 (signed) and falls through when s3(?) < 0 (signed).
  The `bltz` branch at 0x21d239c goes to 0x21d238c when s3(?) < 0 (signed) and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0x21d23c4 goes to 0x21d23ec when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0x21d23e4 has v0 = ?.

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21ff510 (n64).
  It occupies 164 bytes.
  The `lw` at 0x21ff518 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x21ff540, `ld` at 0x21ff578.
  The `ld` at 0x21ff548 loads 8 bytes from abs 0x22db098 via base gp (0x22e0798).
  The `ld` at 0x21ff55c loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x21ff564 loads 8 bytes from [0x1020]:8 +0x1ad0 via base a0 ([0x1020]:8).
  The `jalr` at 0x21ff560 calls `__glNamesGenRange [0x2237910]` with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21ff57c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21ff598 calls `__glSetError [0x22115d0]` with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x21ff534 goes to 0x21ff578 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x21ff53c goes to 0x21ff598 when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x21ff544 goes to 0x21ff55c when a0 != 0 and falls through when a0 == 0.
  The return at 0x21ff554 has v0 = 0x0.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21ff5c0 (n64).
  It occupies 108 bytes.
  The `lw` at 0x21ff5c4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x21ff5e8 loads 8 bytes from abs 0x22db0a8 via base gp (0x22e0798).
  The `ld` at 0x21ff5ec loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x21ff5f4 loads 8 bytes from [0x1020]:8 +0x1ad0 via base a0 ([0x1020]:8).
  The `ld` at 0x21ff60c loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `jalr` at 0x21ff5f0 calls `__glNamesIsName [0x22380d0]` with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21ff610 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x21ff5e0 goes to 0x21ff60c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x21ff604 has v0 = ?.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21ff7d0 (n64).
  It occupies 128 bytes.
  The `lw` at 0x21ff7d8 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x21ff800, `ld` at 0x21ff82c.
  The `ld` at 0x21ff80c loads 8 bytes from abs 0x22db0a0 via base gp (0x22e0798).
  The `ld` at 0x21ff810 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x21ff818 loads 8 bytes from [0x1020]:8 +0x1ad0 via base a0 ([0x1020]:8).
  The `jalr` at 0x21ff814 calls `__glNamesDeleteRange [0x2237c80]` with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x21ff830 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x21ff840 calls `__glSetError [0x22115d0]` with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0x21ff7f4 goes to 0x21ff82c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x21ff7fc goes to 0x21ff840 when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x21ff804 goes to 0x21ff820 when a1 == 0 and falls through when a1 != 0.
  The return at 0x21ff824 has v0 = ?.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22073f0 (n64).
  It occupies 184 bytes.
  The `lw` at 0x22073f0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x22073fc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2207490 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `jalr` at 0x2207498 calls `__glSetError [0x22115d0]` with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x220740c goes to 0x2207490 when v0(=[0x1030]) == v1(=0x1) and falls through when v0(=[0x1030]) != v1(=0x1).
  The return at 0x220747c has v0 = [0x1030].

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22074b0 (n64).
  It occupies 112 bytes.
  The `lw` at 0x22074b0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x22074bc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `sw` at 0x22074e0 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x2.
  The `lw` at 0x22074e4 loads 4 bytes from [0x1020]:8 +0x4714 via base a1 ([0x1020]:8).
  The `sw` at 0x22074f8 stores 4 bytes to [0x1020]:8 +0x4714 via base a1 ([0x1020]:8) with value ([[0x1020]:8+18196] | 0x4).
  The `ld` at 0x2207508 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `jalr` at 0x2207510 calls `__glSetError [0x22115d0]` with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x22074cc goes to 0x2207508 when v0(=[0x1030]) == v1(=0x1) and falls through when v0(=[0x1030]) != v1(=0x1).
  The return at 0x22074f4 has v0 = ([[0x1020]:8+18196] | 0x4).

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f270 (n64).
  It occupies 112 bytes.
  The `lw` at 0x220f27c loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x220f2a0 loads 8 bytes from abs 0x22d87f8 via base gp (0x22e0798).
  The `ld` at 0x220f2b8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x220f2cc loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `bgezall` at 0x220f2b4 calls `__glColorTableParameterv [0x220f0e0]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f2d0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f298 goes to 0x220f2cc when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x220f2c4 has v0 = ?.

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f2e0 (n64).
  It occupies 112 bytes.
  The `lw` at 0x220f2ec loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x220f310 loads 8 bytes from abs 0x22d87f8 via base gp (0x22e0798).
  The `ld` at 0x220f328 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x220f33c loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `bgezall` at 0x220f324 calls `__glColorTableParameterv [0x220f0e0]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f340 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f308 goes to 0x220f33c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x220f334 has v0 = ?.

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f4d0 (n64).
  It occupies 112 bytes.
  The `lw` at 0x220f4dc loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x220f500 loads 8 bytes from abs 0x22d87f8 via base gp (0x22e0798).
  The `ld` at 0x220f518 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x220f52c loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `bgezall` at 0x220f514 calls `__glGetColorTableParameterv [0x220f350]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f530 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f4f8 goes to 0x220f52c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x220f524 has v0 = ?.

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f540 (n64).
  It occupies 112 bytes.
  The `lw` at 0x220f54c loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x220f570 loads 8 bytes from abs 0x22d87f8 via base gp (0x22e0798).
  The `ld` at 0x220f588 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x220f59c loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `bgezall` at 0x220f584 calls `__glGetColorTableParameterv [0x220f350]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f5a0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f568 goes to 0x220f59c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x220f594 has v0 = ?.

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213060 (n64).
  It occupies 88 bytes.
  The `ld` at 0x2213084 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x22130a0 loads 8 bytes from abs 0x22da880 via base gp (0x22e0798).
  The `bgezall` at 0x2213088 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x22130a8 calls `__GLconvolutionParameter [0x2212e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0x221307c goes to 0x22130a0 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The return at 0x2213098 has v0 = ?.

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22130c0 (n64).
  It occupies 96 bytes.
  The `ld` at 0x22130f0 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x221310c loads 8 bytes from abs 0x22da880 via base gp (0x22e0798).
  The `bgezall` at 0x22130f4 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x2213110 calls `__GLconvolutionParameter [0x2212e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0x22130d8 goes to 0x221310c when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x22130e4 goes to 0x221310c when a1 == v1(=0x8014) and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x22130ec goes to 0x221310c when a1 == a3(=0x8015) and falls through when a1 != a3(=0x8015).
  The return at 0x2213104 has v0 = ?.

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213120 (n64).
  It occupies 88 bytes.
  The `ld` at 0x2213144 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2213160 loads 8 bytes from abs 0x22da880 via base gp (0x22e0798).
  The `bgezall` at 0x2213148 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2213168 calls `__GLconvolutionParameter [0x2212e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0x221313c goes to 0x2213160 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The return at 0x2213158 has v0 = ?.

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213180 (n64).
  It occupies 96 bytes.
  The `ld` at 0x22131b0 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x22131cc loads 8 bytes from abs 0x22da880 via base gp (0x22e0798).
  The `bgezall` at 0x22131b4 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x22131d0 calls `__GLconvolutionParameter [0x2212e40]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0x2213198 goes to 0x22131cc when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x22131a4 goes to 0x22131cc when a1 == v1(=0x8014) and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x22131ac goes to 0x22131cc when a1 == a3(=0x8015) and falls through when a1 != a3(=0x8015).
  The return at 0x22131c4 has v0 = ?.

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22134c0 (n64).
  It occupies 52 bytes.
  The `ld` at 0x22134d4 loads 8 bytes from abs 0x22da8a8 via base gp (0x22e0798).
  The `bgezall` at 0x22134dc calls `__GLgetConvolutionParameter [0x22131e0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x22134ec has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213500 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2213514 loads 8 bytes from abs 0x22da8a8 via base gp (0x22e0798).
  The `bgezall` at 0x221351c calls `__GLgetConvolutionParameter [0x22131e0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x221352c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_Map1d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215bc0 (n64).
  It occupies 240 bytes.
  The `ld` at 0x2215bcc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x2215be0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2215c08 loads 8 bytes from abs 0x22daa28 via base gp (0x22e0798).
  The `lw` at 0x2215c2c loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v0 (ret(__glSetUpMap1)).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2215c3c, `ld` at 0x2215c9c.
  The `ld` at 0x2215c54 loads 8 bytes from abs 0x22daa00 via base gp (0x22e0798).
  The `ld` at 0x2215c78 loads 8 bytes from table(0x90b8) +0x0 via base a4 (table(0x90b8)).
  The `bgezall` at 0x2215c1c calls `__glSetUpMap1 [0x2216be0]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `bgezall` at 0x2215c40 calls `__glSetError [0x22115d0]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown, a5=a0-3472.
  The `bgezall` at 0x2215c74 calls `__glFillMap1d [0x2216880]` with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=entry(0x90b8).
  The `bgezall` at 0x2215ca0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2215c00 goes to 0x2215c9c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215c24 goes to 0x2215c7c when v0(=ret(__glSetUpMap1)) == 0 and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0x2215c34 goes to 0x2215c50 when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed) and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The return at 0x2215c94 has v0 = ?.

- `__glim_Map1f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215cb0 (n64).
  It occupies 240 bytes.
  The `ld` at 0x2215cbc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x2215cd0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2215cf8 loads 8 bytes from abs 0x22daa28 via base gp (0x22e0798).
  The `lw` at 0x2215d1c loads 4 bytes from ret(__glSetUpMap1) +0x0 via base v0 (ret(__glSetUpMap1)).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2215d28, `ld` at 0x2215d8c.
  The `ld` at 0x2215d44 loads 8 bytes from abs 0x22da9f8 via base gp (0x22e0798).
  The `ld` at 0x2215d68 loads 8 bytes from table(0x90b8) +0x0 via base a4 (table(0x90b8)).
  The `bgezall` at 0x2215d0c calls `__glSetUpMap1 [0x2216be0]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3); fp f15=f13, f16=f14.
  The `bgezall` at 0x2215d2c calls `__glSetError [0x22115d0]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2215d64 calls `__glFillMap1f [0x2216780]` with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=entry(0x90b8).
  The `bgezall` at 0x2215d90 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2215cf0 goes to 0x2215d8c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215d14 goes to 0x2215d6c when v0(=ret(__glSetUpMap1)) == 0 and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0x2215d24 goes to 0x2215d3c when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed) and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The return at 0x2215d84 has v0 = ?.

- `__glim_Map2d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215da0 (n64).
  It occupies 300 bytes.
  The `ld` at 0x2215dac loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x2215dc0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2215df4 loads 8 bytes from abs 0x22daa30 via base gp (0x22e0798).
  The `lw` at 0x2215e20 loads 4 bytes from ret(__glSetUpMap2) +0x0 via base v0 (ret(__glSetUpMap2)).
  3 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2215e38, `ld` at 0x2215ea4, `ld` at 0x2215eb8.
  The `ld` at 0x2215e70 loads 8 bytes from abs 0x22daa18 via base gp (0x22e0798).
  The `ld` at 0x2215e98 loads 8 bytes from table(0x9100) +0x0 via base a6 (table(0x9100)).
  The `bgezall` at 0x2215e10 calls `__glSetUpMap2 [0x2216d00]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=unknown.
  The `bgezall` at 0x2215e3c calls `__glSetError [0x22115d0]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2215e94 calls `__glFillMap2d [0x2216aa0]` with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=unknown, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=entry(0x9100).
  The `bgezall` at 0x2215ea8 calls `__glSetError [0x22115d0]` with a0=0x501, a1=unknown, a2=a7 at entry (arg7), a3=unknown.
  The `bgezall` at 0x2215ebc calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2215de8 goes to 0x2215eb8 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215e18 goes to 0x2215e44 when v0(=ret(__glSetUpMap2)) == 0 and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0x2215e28 goes to 0x2215ea4 when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed) and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0x2215e34 goes to 0x2215e64 when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed) and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The return at 0x2215e5c has v0 = ?.

- `__glim_Map2f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215ed0 (n64).
  It occupies 296 bytes.
  The `ld` at 0x2215edc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x2215ef0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2215f20 loads 8 bytes from abs 0x22daa30 via base gp (0x22e0798).
  The `lw` at 0x2215f4c loads 4 bytes from ret(__glSetUpMap2) +0x0 via base v0 (ret(__glSetUpMap2)).
  3 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2215f58, `ld` at 0x2215f68, `ld` at 0x2215fe4.
  The `ld` at 0x2215fa0 loads 8 bytes from abs 0x22daa10 via base gp (0x22e0798).
  The `ld` at 0x2215fc8 loads 8 bytes from table(0x9100) +0x0 via base a6 (table(0x9100)).
  The `bgezall` at 0x2215f3c calls `__glSetUpMap2 [0x2216d00]` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=unknown; fp f16=f13, f17=f14, f18=f17, f19=f18.
  The `bgezall` at 0x2215f6c calls `__glSetError [0x22115d0]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2215fc4 calls `__glFillMap2f [0x2216960]` with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=unknown, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=entry(0x9100).
  The `bgezall` at 0x2215fd4 calls `__glSetError [0x22115d0]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2215fe8 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f19=f18.
  The `beq` branch at 0x2215f18 goes to 0x2215fe4 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215f44 goes to 0x2215f74 when v0(=ret(__glSetUpMap2)) == 0 and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0x2215f54 goes to 0x2215fd4 when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed) and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0x2215f64 goes to 0x2215f94 when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed) and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The return at 0x2215f8c has v0 = ?.

- `__glim_MapGrid1d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2216210 (n64).
  It occupies 132 bytes.
  The `lw` at 0x2216214 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2216218 loads 8 bytes from abs 0x1020 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2216240, `ld` at 0x2216280.
  The `sw` at 0x2216244 stores 4 bytes to [0x1020]:8 +0x8a0 via base a2 ([0x1020]:8) with value a0.
  The `bgezall` at 0x2216270 calls `__glSetError [0x22115d0]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2216284 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2216234 goes to 0x2216280 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x221623c goes to 0x2216270 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The return at 0x221625c has v0 = 0x1.

- `__glim_MapGrid1f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22162a0 (n64).
  It occupies 124 bytes.
  The `lw` at 0x22162a4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x22162a8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x22162d0, `ld` at 0x2216308.
  The `sw` at 0x22162d4 stores 4 bytes to [0x1020]:8 +0x8a0 via base a2 ([0x1020]:8) with value a0.
  The `bgezall` at 0x22162f8 calls `__glSetError [0x22115d0]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x221630c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x22162c4 goes to 0x2216308 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x22162cc goes to 0x22162f8 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The return at 0x22162e4 has v0 = 0x1.

- `__glim_MapGrid2d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2216320 (n64).
  It occupies 164 bytes.
  The `lw` at 0x2216324 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2216328 loads 8 bytes from abs 0x1020 via base zero (0x0).
  3 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2216350, `ld` at 0x2216358, `ld` at 0x22163b0.
  The `sw` at 0x221635c stores 4 bytes to [0x1020]:8 +0x8c0 via base a2 ([0x1020]:8) with value a3.
  The `sw` at 0x2216360 stores 4 bytes to [0x1020]:8 +0x8b0 via base a2 ([0x1020]:8) with value a0.
  The `bgezall` at 0x22163a0 calls `__glSetError [0x22115d0]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x22163b4 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2216344 goes to 0x22163b0 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x221634c goes to 0x22163a0 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2216354 goes to 0x22163a0 when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  The return at 0x2216388 has v0 = 0x1.

- `__glim_MapGrid2f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22163d0 (n64).
  It occupies 148 bytes.
  The `lw` at 0x22163d4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x22163d8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  3 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x2216400, `ld` at 0x2216408, `ld` at 0x2216450.
  The `sw` at 0x221640c stores 4 bytes to [0x1020]:8 +0x8c0 via base a2 ([0x1020]:8) with value a3.
  The `sw` at 0x2216418 stores 4 bytes to [0x1020]:8 +0x8b0 via base a2 ([0x1020]:8) with value a0.
  The `bgezall` at 0x2216440 calls `__glSetError [0x22115d0]` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2216454 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x22163f4 goes to 0x2216450 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x22163fc goes to 0x2216440 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2216404 goes to 0x2216440 when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  The return at 0x2216428 has v0 = 0x1.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2216470 (n64).
  It occupies 208 bytes.
  The `ld` at 0x2216470 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x2216480 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x22164ac, `ld` at 0x22164f4.
  The `ld` at 0x22164d0 loads 8 bytes from [0x1020]:8 +0x4748 via base t9 ([0x1020]:8).
  The `sw` at 0x22164e0 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2216508 loads 8 bytes from abs 0x22daa50 via base gp (0x22e0798).
  The `ld` at 0x2216524 loads 8 bytes from abs 0x22daa48 via base gp (0x22e0798).
  The `bgezall` at 0x22164b0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1030].
  The `jalr` at 0x22164d4 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1030].
  The `bgezall` at 0x22164f8 calls `__glSetError [0x22115d0]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2216514 calls `__glEvalMesh1Point [0x22189a0]` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `bgezall` at 0x2216530 calls `__glEvalMesh1Line [0x22187d0]` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `beq` branch at 0x2216498 goes to 0x22164e4 when a4(=[0x1030]) == 0 and falls through when a4(=[0x1030]) != 0.
  The `beq` branch at 0x22164a4 goes to 0x22164c8 when a4(=[0x1030]) == v0(=0x2) and falls through when a4(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x22164e8 goes to 0x2216524 when a0 == ra(=0x1b01) and falls through when a0 != ra(=0x1b01).
  The `beq` branch at 0x22164f0 goes to 0x2216508 when a0 == at(=0x1b00) and falls through when a0 != at(=0x1b00).
  The return at 0x22164c0 has v0 = ?.

- `__glim_EvalMesh2` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22165b0 (n64).
  It occupies 280 bytes.
  The `ld` at 0x22165b0 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x22165cc loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x22165fc, `ld` at 0x2216650.
  The `ld` at 0x2216620 loads 8 bytes from [0x1020]:8 +0x4748 via base t9 ([0x1020]:8).
  The `sw` at 0x221662c stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2216668 loads 8 bytes from abs 0x22daa60 via base gp (0x22e0798).
  The `ld` at 0x221668c loads 8 bytes from abs 0x22daa58 via base gp (0x22e0798).
  The `ld` at 0x22166ac loads 8 bytes from abs 0x22daa68 via base gp (0x22e0798).
  The `bgezall` at 0x2216600 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1030].
  The `jalr` at 0x2216624 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1030].
  The `bgezall` at 0x2216654 calls `__glSetError [0x22115d0]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2216674 calls `__glEvalMesh2Point [0x2219090]` with a0=unknown, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0x2216698 calls `__glEvalMesh2Fill [0x2218d10]` with a0=unknown, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0x22166b8 calls `__glEvalMesh2Line [0x2219310]` with a0=unknown, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `beq` branch at 0x22165e8 goes to 0x2216630 when a6(=[0x1030]) == 0 and falls through when a6(=[0x1030]) != 0.
  The `beq` branch at 0x22165f4 goes to 0x221661c when a6(=[0x1030]) == v0(=0x2) and falls through when a6(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2216638 goes to 0x2216684 when s0(=a0) == ra(=0x1b02) and falls through when s0(=a0) != ra(=0x1b02).
  The `beq` branch at 0x2216640 goes to 0x22166a8 when s0(=a0) == at(=0x1b01) and falls through when s0(=a0) != at(=0x1b01).
  The `beq` branch at 0x2216648 goes to 0x2216664 when s0(=a0) == v0(=0x1b00) and falls through when s0(=a0) != v0(=0x1b00).
  The return at 0x2216614 has v0 = ?.

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2219ae0 (n64).
  It occupies 196 bytes.
  The `ld` at 0x2219af8 loads 8 bytes from abs 0x22d8800 via base gp (0x22e0798).
  The `bgezall` at 0x2219b14 calls `NurbsKnots1Common [0x22198d0]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2219b28 goes to 0x2219b94 when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2219b30 goes to 0x2219b94 when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2219b40 goes to 0x2219b5c when (s0(=a2) & 0x1) == 0 and falls through when (s0(=a2) & 0x1) != 0.
  The `beq` branch at 0x2219b5c goes to 0x2219b94 when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` branch at 0x2219b8c goes to 0x2219b70 when s0(=a2) != a4(?) and falls through when s0(=a2) == a4(?).
  The return at 0x2219b9c has v0 = ret(NurbsKnots1Common).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2219bb0 (n64).
  It occupies 236 bytes.
  The `ld` at 0x2219bc8 loads 8 bytes from abs 0x22d8800 via base gp (0x22e0798).
  The `bgezall` at 0x2219be4 calls `NurbsKnots1Common [0x22198d0]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2219bf4 goes to 0x2219c8c when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2219bfc goes to 0x2219c8c when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2219c10 goes to 0x2219c38 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0x2219c30 goes to 0x2219c18 when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0x2219c38 goes to 0x2219c8c when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` branch at 0x2219c84 goes to 0x2219c40 when s0(=a2) != a3(?) and falls through when s0(=a2) == a3(?).
  The return at 0x2219c94 has v0 = ret(NurbsKnots1Common).

- `__glim_Finish` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221af90 (n64).
  It occupies 88 bytes.
  The `lw` at 0x221af94 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221af98 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x221afb8 loads 8 bytes from [0x1020]:8 +0x4730 via base a0 ([0x1020]:8).
  The `ld` at 0x221afd4 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `jalr` at 0x221afbc calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x221afd8 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x221afb0 goes to 0x221afd4 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x221afcc has v0 = ?.

- `__glim_GetMaterialfv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221d8e0 (n64).
  It occupies 404 bytes.
  The `lw` at 0x221d8e8 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221d8ec loads 8 bytes from abs 0x1020 via base zero (0x0).
  3 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x221d928, `ld` at 0x221d970, `ld` at 0x221da48.
  The `ld` at 0x221d954 loads 8 bytes from abs 0x22dacf0 via base gp (0x22e0798).
  The `jalr` at 0x221d92c calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=[0x1020]:8+1760.
  The `jalr` at 0x221d974 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `jalr` at 0x221da4c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1020]:8, a5=a2 at entry (arg2).
  The `jalr` at 0x221da64 calls `__glUnScaleColorf [0x2226ec0]` with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=([0x1020]:8 + one of 0x6c0, 0x710), a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `beq` branch at 0x221d908 goes to 0x221da48 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221d918 goes to 0x221d9b8 when a0 == a2(=0x404) and falls through when a0 != a2(=0x404).
  The `beq` branch at 0x221d920 goes to 0x221d93c when a0 == a3(=0x405) and falls through when a0 != a3(=0x405).
  The `beq` branch at 0x221d940 goes to 0x221d9c0 when a1 == a7(=0x1603) and falls through when a1 != a7(=0x1603).
  The `beq` branch at 0x221d948 goes to 0x221d9e8 when a1 == t0(=0x1601) and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0x221d950 goes to 0x221da5c when a1 == t1(=0x1600) and falls through when a1 != t1(=0x1600).
  The `beq` branch at 0x221d95c goes to 0x221d9f4 when a1 == t2(=0x1200) and falls through when a1 != t2(=0x1200).
  The `beq` branch at 0x221d964 goes to 0x221da24 when a1 == t3(=0x1201) and falls through when a1 != t3(=0x1201).
  The `beq` branch at 0x221d96c goes to 0x221d98c when a1 == t8(=0x1202) and falls through when a1 != t8(=0x1202).
  The return at 0x221d984 has v0 = ?.

- `__glim_GetMaterialiv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221da80 (n64).
  It occupies 912 bytes.
  The `lw` at 0x221da88 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221da8c loads 8 bytes from abs 0x1020 via base zero (0x0).
  3 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x221dac8, `ld` at 0x221db1c, `ld` at 0x221dc08.
  2 such `ld` accesses load 8 bytes from abs 0x22dabc0 via base gp (0x22e0798), including `ld` at 0x221dae8, `ld` at 0x221dc44.
  The `ld` at 0x221dafc loads 8 bytes from abs 0x22dacf8 via base gp (0x22e0798).
  12 such `ld` accesses load 8 bytes from abs 0x22df720 via base gp (0x22e0798), including `ld` at 0x221db54, `ld` at 0x221db7c, `ld` at 0x221dba8.
  The `jalr` at 0x221dacc calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a4=0x405, a5=[0x1020]:8+1760.
  The `jalr` at 0x221db20 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0x221db5c calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221db88 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dbb4 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dbe0 calls `floorf` with a0=unknown, a1=a2 at entry (arg2), a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dc0c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x221dc34 calls `__glConvertResult [0x221ecd0]` with a0=[0x1020]:8, a1=0x0, a2=([0x1020]:8 + one of 0x6d4, 0x724), a3=0x3, a4=a2 at entry (arg2), a5=0x3, a6=0x1603.
  The `bgezall` at 0x221dc60 calls `__glConvertResult [0x221ecd0]` with a0=[0x1020]:8, a1=0x0, a2=([0x1020]:8 + one of 0x6d0, 0x720), a3=0x3, a4=a2 at entry (arg2), a5=0x1, a6=0x1603, a7=0x1601.
  The `jalr` at 0x221dc7c calls `__glUnScaleColori [0x2226f10]` with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=([0x1020]:8 + one of 0x6c0, 0x710), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0x221dca4 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=([0x1020]:8 + one of 0x690, 0x6e0), a6=0x1603, a7=0x1601; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dcd0 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a5=a2 at entry (arg2); fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dcfc calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown, a7=a2 at entry (arg2); fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dd28 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dd64 calls `floorf` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dd90 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221ddbc calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dde8 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f14=[[0x1020]:8+3904].
  The `beq` branch at 0x221daa4 goes to 0x221dc08 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221dab4 goes to 0x221db3c when a0 == a3(=0x404) and falls through when a0 != a3(=0x404).
  The `beq` branch at 0x221dac0 goes to 0x221dadc when a0 == a4(=0x405) and falls through when a0 != a4(=0x405).
  The `beq` branch at 0x221dae4 goes to 0x221dc1c when a1 == a6(=0x1603) and falls through when a1 != a6(=0x1603).
  The `beq` branch at 0x221daf0 goes to 0x221dc44 when a1 == a7(=0x1601) and falls through when a1 != a7(=0x1601).
  The `beq` branch at 0x221daf8 goes to 0x221dc70 when a1 == t0(=0x1600) and falls through when a1 != t0(=0x1600).
  The `beq` branch at 0x221db04 goes to 0x221dc8c when a1 == t1(=0x1200) and falls through when a1 != t1(=0x1200).
  The `beq` branch at 0x221db0c goes to 0x221dd50 when a1 == t2(=0x1201) and falls through when a1 != t2(=0x1201).
  The `beq` branch at 0x221db18 goes to 0x221db44 when a1 == t3(=0x1202) and falls through when a1 != t3(=0x1202).
  The return at 0x221db34 has v0 = ?.

- `__glim_GetMapiv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221e4a0 (n64).
  It occupies 612 bytes.
  The `lw` at 0x221e4a8 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221e4ac loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x221e4d8 loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `ld` at 0x221e4f4 loads 8 bytes from table(0x22c98a8) +0x0 via base a5 (table(0x22c98a8)).
  4 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x221e500, `ld` at 0x221e548, `ld` at 0x221e580.
  The `lw` at 0x221e5a0 loads 4 bytes from ([0x1020]:8 + (a0 << 0x5)) -0x12414 via base v0 (([0x1020]:8 + (a0 << 0x5))-74772).
  The `sw` at 0x221e5ac stores 4 bytes to a2 (arg2 at entry) +0x0 via base a2 (a2) with value [([0x1020]:8 + (a0 << 0x5))-74772].
  The `lw` at 0x221e5c0 loads 4 bytes from table(0xfffffffffffdfe0c) +0x0 via base v1 (table(0xfffffffffffe0000)).
  The `sw` at 0x221e5c4 stores 4 bytes to a2 (arg2 at entry) +0x0 via base a2 (a2) with value entry(0xfffffffffffdfe0c).
  The `lw` at 0x221e5c8 loads 4 bytes from table(0xfffffffffffdfe10) +0x0 via base v1 (table(0xfffffffffffe0000)).
  The `sw` at 0x221e5d4 stores 4 bytes to a2 (arg2 at entry) +0x4 via base a2 (a2) with value entry(0xfffffffffffdfe10).
  The `lw` at 0x221e5fc loads 4 bytes from ([0x1020]:8 + (a0 << 0x5)) -0x12418 via base a5 (([0x1020]:8 + (a0 << 0x5))-65536).
  The `lw` at 0x221e600 loads 4 bytes from ([0x1020]:8 + (a0 << 0x5)) -0x12414 via base a5 (([0x1020]:8 + (a0 << 0x5))-65536).
  4 such `ld` accesses load 8 bytes from abs 0x22dabc0 via base gp (0x22e0798), including `ld` at 0x221e60c, `ld` at 0x221e670, `ld` at 0x221e6a4.
  The `ld` at 0x221e620 loads 8 bytes from ([0x1020]:8 + (a0 << 0x3)) +0x2438 via base a2 (([0x1020]:8 + (a0 << 0x3))).
  The `lw` at 0x221e64c loads 4 bytes from table(0xfffffffffffdfe10) +0x0 via base a3 (table(0xfffffffffffe0000)).
  The `lw` at 0x221e650 loads 4 bytes from table(0xfffffffffffdfe0c) +0x0 via base a3 (table(0xfffffffffffe0000)).
  The `lw` at 0x221e658 loads 4 bytes from table(0xfffffffffffdfe08) +0x0 via base a3 (table(0xfffffffffffe0000)).
  The `ld` at 0x221e684 loads 8 bytes from ([0x1020]:8 + (a0 << 0x3)) +0x2380 via base a2 (([0x1020]:8 + (a0 << 0x3))).
  The `jalr` at 0x221e504 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0x22c98a8), a7=a0 at entry (arg0).
  The `jalr` at 0x221e54c calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0x22c98a8), a7=a0 at entry (arg0).
  The `jalr` at 0x221e584 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0x22c98a8), a7=a0 at entry (arg0).
  The `jalr` at 0x221e5dc calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a7=a0 at entry (arg0).
  The `bgezall` at 0x221e624 calls `__glConvertResult [0x221ecd0]` with a0=[0x1020]:8, a1=0x0, a2=[([0x1020]:8 + (a0 << 0x3))+9272]:8, a3=0x3, a4=a2 at entry (arg2), a6=0xffffffffffff0000, a7=a0 at entry (arg0).
  The `bgezall` at 0x221e688 calls `__glConvertResult [0x221ecd0]` with a0=[0x1020]:8, a1=0x0, a2=[([0x1020]:8 + (a0 << 0x3))+9088]:8, a3=0x3, a4=a2 at entry (arg2), a6=entry(0xfffffffffffdfe10), a7=a0 at entry (arg0).
  The `bgezall` at 0x221e6b8 calls `__glConvertResult [0x221ecd0]` with a0=[0x1020]:8, a1=0x0, a2=([0x1020]:8 + (a0 << 0x5))-74768, a3=0x3, a4=a2 at entry (arg2), a5=0x2, a6=0xfffffffffffedbf0, a7=a0 at entry (arg0).
  The `bgezall` at 0x221e6f4 calls `__glConvertResult [0x221ecd0]` with a0=[0x1020]:8, a1=0x0, a2=table(0xfffffffffffdfe14), a3=0x3, a4=a2 at entry (arg2), a5=0x4, a6=0xfffffffffffdfe14, a7=a0 at entry (arg0).
  The `beq` branch at 0x221e4c8 goes to 0x221e5d8 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221e4ec goes to 0x221e500 when t1(?) >= 0x29 (unsigned) and falls through when t1(?) < 0x29 (unsigned).
  The `beq` branch at 0x221e52c goes to 0x221e5ec when a1 == t2(=0xa00) and falls through when a1 != t2(=0xa00).
  The `beq` branch at 0x221e538 goes to 0x221e698 when a1 == t3(=0xa02) and falls through when a1 != t3(=0xa02).
  The `beq` branch at 0x221e544 goes to 0x221e594 when a1 == t8(=0xa01) and falls through when a1 != t8(=0xa01).
  The `beq` branch at 0x221e560 goes to 0x221e634 when a1 == t9(=0xa00) and falls through when a1 != t9(=0xa00).
  The `beq` branch at 0x221e570 goes to 0x221e6c8 when a1 == ra(=0xa02) and falls through when a1 != ra(=0xa02).
  The `beq` branch at 0x221e578 goes to 0x221e5b0 when a1 == at(=0xa01) and falls through when a1 != at(=0xa01).
  The return at 0x221e514 has v0 = ?.

- `__glim_GetPixelMapfv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221e710 (n64).
  It occupies 448 bytes.
  The `lw` at 0x221e718 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221e71c loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x221e748 loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `ld` at 0x221e764 loads 8 bytes from table(0x22c99f0) +0x0 via base a3 (table(0x22c99f0)).
  The `lw` at 0x221e77c loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238 via base a5 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `ld` at 0x221e78c loads 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230 via base a5 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `lw` at 0x221e7a0 loads 4 bytes from unknown (base unknown) via base a5 (unknown).
  4 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0x221e7d0, `lw` at 0x221e7e0, `lw` at 0x221e7f0.
  The `lw` at 0x221e83c loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238 via base a7 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `ld` at 0x221e850 loads 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230 via base a7 (([0x1020]:8 + (a0 << 0x4))-65536).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x221e8a8, `ld` at 0x221e8bc.
  The `jalr` at 0x221e8ac calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=table(0x22c99f0), a4=[0x1020]:8, a5=a1 at entry (arg1).
  The `jalr` at 0x221e8c0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1020]:8, a5=a1 at entry (arg1).
  The `beq` branch at 0x221e738 goes to 0x221e8bc when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221e75c goes to 0x221e8a8 when a7(?) >= 0xa (unsigned) and falls through when a7(?) < 0xa (unsigned).
  The `bltz` branch at 0x221e790 goes to 0x221e820 when t0(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed) and falls through when t0(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e798 goes to 0x221e7c4 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0x221e7bc goes to 0x221e7a0 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0x221e7c4 goes to 0x221e820 when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` branch at 0x221e818 goes to 0x221e7d0 when a3(?) != a4(=-0x1) and falls through when a3(?) == a4(=-0x1).
  The `bltz` branch at 0x221e854 goes to 0x221e820 when t9(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed) and falls through when t9(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e85c goes to 0x221e878 when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` branch at 0x221e878 goes to 0x221e8a0 when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` branch at 0x221e898 goes to 0x221e880 when a3(?) != a4(=-0x1) and falls through when a3(?) == a4(=-0x1).
  The return at 0x221e828 has v0 = ?.

- `__glim_GetPixelMapuiv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221e8d0 (n64).
  It occupies 512 bytes.
  The `lw` at 0x221e8d8 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221e8dc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x221e90c loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `ld` at 0x221e928 loads 8 bytes from table(0x22c9a40) +0x0 via base a1 (table(0x22c9a40)).
  The `lw` at 0x221e93c loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238 via base t0 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `ld` at 0x221e94c loads 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230 via base t0 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `lw` at 0x221e968 loads 4 bytes from [([0x1020]:8 + (a0 << 0x4))-49712]:8 +0x0 via base t0 ([([0x1020]:8 + (a0 << 0x4))-49712]:8).
  The `sw` at 0x221e974 stores 4 bytes to a1 (arg1 at entry) +0x0 via base a6 (a1) with value [[([0x1020]:8 + (a0 << 0x4))-49712]:8].
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0x221e980, `lw` at 0x221e990.
  7 such `sw` accesses store 4 bytes to unknown (base unknown) via base a3 (unknown) with value unknown, including `sw` at 0x221e988, `sw` at 0x221e99c, `sw` at 0x221ea10.
  The `lw` at 0x221e9c0 loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238 via base a6 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `ld` at 0x221e9d0 loads 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230 via base a6 (([0x1020]:8 + (a0 << 0x4))-65536).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x221eaa8, `ld` at 0x221eabc.
  The `jalr` at 0x221eaac calls `__glSetError [0x22115d0]` with a0=0x500, a1=table(0x22c9a40), a2=unknown, a3=a1 at entry (arg1), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `jalr` at 0x221eac0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `beq` branch at 0x221e8f8 goes to 0x221eabc when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221e920 goes to 0x221eaa8 when a4(?) >= 0xa (unsigned) and falls through when a4(?) < 0xa (unsigned).
  The `bltz` branch at 0x221e950 goes to 0x221e9a0 when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed) and falls through when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e95c goes to 0x221e978 when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) == 0 and falls through when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) != 0.
  The `beq` branch at 0x221e978 goes to 0x221e9a0 when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` branch at 0x221e998 goes to 0x221e980 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0x221e9d4 goes to 0x221e9a0 when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed) and falls through when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e9dc goes to 0x221ea14 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0x221ea0c goes to 0x221e9e4 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0x221ea14 goes to 0x221eaa0 when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` branch at 0x221ea98 goes to 0x221ea20 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The return at 0x221e9a8 has v0 = ?.

- `__glim_GetPixelMapusv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221ead0 (n64).
  It occupies 512 bytes.
  The `lw` at 0x221ead8 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x221eadc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x221eb0c loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `ld` at 0x221eb28 loads 8 bytes from table(0x22c9a90) +0x0 via base a1 (table(0x22c9a90)).
  The `lw` at 0x221eb3c loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238 via base t0 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `ld` at 0x221eb4c loads 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230 via base t0 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `lw` at 0x221eb68 loads 4 bytes from [([0x1020]:8 + (a0 << 0x4))-49712]:8 +0x0 via base t0 ([([0x1020]:8 + (a0 << 0x4))-49712]:8).
  The `sh` at 0x221eb74 stores 2 bytes to a1 (arg1 at entry) +0x0 via base a6 (a1) with value [[([0x1020]:8 + (a0 << 0x4))-49712]:8].
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0x221eb80, `lw` at 0x221eb90.
  7 such `sh` accesses store 2 bytes to unknown (base unknown) via base a3 (unknown) with value unknown, including `sh` at 0x221eb88, `sh` at 0x221eb9c, `sh` at 0x221ec10.
  The `lw` at 0x221ebc0 loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238 via base a6 (([0x1020]:8 + (a0 << 0x4))-65536).
  The `ld` at 0x221ebd0 loads 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230 via base a6 (([0x1020]:8 + (a0 << 0x4))-65536).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x221eca8, `ld` at 0x221ecbc.
  The `jalr` at 0x221ecac calls `__glSetError [0x22115d0]` with a0=0x500, a1=table(0x22c9a90), a2=unknown, a3=a1 at entry (arg1), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `jalr` at 0x221ecc0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `beq` branch at 0x221eaf8 goes to 0x221ecbc when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221eb20 goes to 0x221eca8 when a4(?) >= 0xa (unsigned) and falls through when a4(?) < 0xa (unsigned).
  The `bltz` branch at 0x221eb50 goes to 0x221eba0 when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed) and falls through when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221eb5c goes to 0x221eb78 when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) == 0 and falls through when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) != 0.
  The `beq` branch at 0x221eb78 goes to 0x221eba0 when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` branch at 0x221eb98 goes to 0x221eb80 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0x221ebd4 goes to 0x221eba0 when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed) and falls through when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221ebdc goes to 0x221ec14 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0x221ec0c goes to 0x221ebe4 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0x221ec14 goes to 0x221eca0 when t1(?) == 0 and falls through when t1(?) != 0.
  The `bne` branch at 0x221ec98 goes to 0x221ec20 when a1(?) != a4(=-0x1) and falls through when a1(?) == a4(=-0x1).
  The return at 0x221eba8 has v0 = ?.

- `__glim_GetDoublev` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223340 (n64).
  It occupies 60 bytes.
  The `ld` at 0x2223354 loads 8 bytes from abs 0x22dabc8 via base gp (0x22e0798).
  The `ld` at 0x2223358 loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `bgezall` at 0x2223364 calls `__glDoGet [0x221f910]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0x22c9ae0, a4=0xbd458.
  The return at 0x2223374 has v0 = ret(__glDoGet).

- `__glim_GetFloatv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223380 (n64).
  It occupies 60 bytes.
  The `ld` at 0x2223394 loads 8 bytes from abs 0x22dabc8 via base gp (0x22e0798).
  The `ld` at 0x2223398 loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `bgezall` at 0x22233a4 calls `__glDoGet [0x221f910]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x22c9af0, a4=0xbd418.
  The return at 0x22233b4 has v0 = ret(__glDoGet).

- `__glim_GetIntegerv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22233c0 (n64).
  It occupies 60 bytes.
  The `ld` at 0x22233d4 loads 8 bytes from abs 0x22dabc8 via base gp (0x22e0798).
  The `ld` at 0x22233d8 loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `bgezall` at 0x22233e4 calls `__glDoGet [0x221f910]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x22c9b00, a4=0xbd3d8.
  The return at 0x22233f4 has v0 = ret(__glDoGet).

- `__glim_GetBooleanv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223400 (n64).
  It occupies 60 bytes.
  The `ld` at 0x2223414 loads 8 bytes from abs 0x22dabc8 via base gp (0x22e0798).
  The `ld` at 0x2223418 loads 8 bytes from abs 0x22d88b8 via base gp (0x22e0798).
  The `bgezall` at 0x2223424 calls `__glDoGet [0x221f910]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0x22c9b10, a4=0xbd398.
  The return at 0x2223434 has v0 = ret(__glDoGet).

- `__glim_GetString` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22234a0 (n64).
  It occupies 192 bytes.
  The `lw` at 0x22234a0 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x22234ac loads 8 bytes from abs 0x1020 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x22234e4, `ld` at 0x2223544.
  The `ld` at 0x2223514 loads 8 bytes from [0x1020]:8 +0xf60 via base a3 ([0x1020]:8).
  The `ld` at 0x2223524 loads 8 bytes from [0x1020]:8 +0xf48 via base a3 ([0x1020]:8).
  The `ld` at 0x2223538 loads 8 bytes from [0x1020]:8 +0xf50 via base a3 ([0x1020]:8).
  The `ld` at 0x2223540 loads 8 bytes from [0x1020]:8 +0xf58 via base a3 ([0x1020]:8).
  The `jalr` at 0x22234ec calls `__glSetError [0x22115d0]` with a0=0x500, a1=0x1f02, a2=0x1f03, a3=[0x1020]:8.
  The `jalr` at 0x222354c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1020]:8.
  The `beq` branch at 0x22234bc goes to 0x2223544 when v0(=[0x1030]) == v1(=0x1) and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x22234c8 goes to 0x2223524 when a0 == v0(=0x1f00) and falls through when a0 != v0(=0x1f00).
  The `beq` branch at 0x22234d0 goes to 0x2223534 when a0 == v1(=0x1f01) and falls through when a0 != v1(=0x1f01).
  The `beq` branch at 0x22234d8 goes to 0x222353c when a0 == a1(=0x1f02) and falls through when a0 != a1(=0x1f02).
  The `beq` branch at 0x22234e0 goes to 0x2223514 when a0 == a2(=0x1f03) and falls through when a0 != a2(=0x1f03).
  The return at 0x2223500 has v0 = 0x0.

- `__glim_GetPointervEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223560 (n64).
  It occupies 376 bytes.
  The `lw` at 0x2223568 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x222356c loads 8 bytes from abs 0x1020 via base zero (0x0).
  5 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x22235cc, `ld` at 0x2223614, `ld` at 0x222365c.
  The `ld` at 0x22235d0 loads 8 bytes from [0x1020]:8 +0x16b0 via base a3 ([0x1020]:8).
  The `sd` at 0x22235d8 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5808]:8.
  The `ld` at 0x2223604 loads 8 bytes from [0x1020]:8 +0x1620 via base a3 ([0x1020]:8).
  The `sd` at 0x2223610 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5664]:8.
  The `ld` at 0x2223648 loads 8 bytes from [0x1020]:8 +0x14a8 via base a3 ([0x1020]:8).
  The `sd` at 0x2223654 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5288]:8.
  The `ld` at 0x2223664 loads 8 bytes from [0x1020]:8 +0x1668 via base a3 ([0x1020]:8).
  The `sd` at 0x2223670 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5736]:8.
  The `ld` at 0x222367c loads 8 bytes from [0x1020]:8 +0x1470 via base a3 ([0x1020]:8).
  The `sd` at 0x2223684 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5232]:8.
  The `ld` at 0x2223690 loads 8 bytes from [0x1020]:8 +0x1640 via base a3 ([0x1020]:8).
  The `sd` at 0x222369c stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5696]:8.
  The `ld` at 0x22236a8 loads 8 bytes from [0x1020]:8 +0x15f8 via base a3 ([0x1020]:8).
  The `sd` at 0x22236b4 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5624]:8.
  The `ld` at 0x22236b8 loads 8 bytes from [0x1020]:8 +0x1688 via base a3 ([0x1020]:8).
  The `sd` at 0x22236c0 stores 8 bytes to a1 (arg1 at entry) +0x0 via base a1 (a1) with value [[0x1020]:8+5768]:8.
  The `jalr` at 0x2223618 calls `__glSetError [0x22115d0]` with a0=0x500, a1=a1 at entry (arg1), a2=unknown, a3=[0x1020]:8, a4=one of 0x808e, 0x8092.
  The `jalr` at 0x22236c8 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1020]:8, a4=0x8090.
  The `beq` branch at 0x2223588 goes to 0x22236c4 when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `bne` branch at 0x2223594 goes to 0x22235dc when a0 < a4(=0x8090) (unsigned) and falls through when a0 >= a4(=0x8090) (unsigned).
  The `beq` branch at 0x22235ac goes to 0x2223688 when a4(=0x8090) >= a0 (unsigned) and falls through when a4(=0x8090) < a0 (unsigned).
  The `bne` branch at 0x22235b8 goes to 0x2223658 when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` branch at 0x22235c0 goes to 0x22236b8 when a7(?) == 0 and falls through when a7(?) != 0.
  The `bne` branch at 0x22235c8 goes to 0x2223618 when a0 != t0(=0x8093) and falls through when a0 == t0(=0x8093).
  The `bne` branch at 0x22235e8 goes to 0x2223630 when a0 < a4(=0x808e) (unsigned) and falls through when a0 >= a4(=0x808e) (unsigned).
  The `beq` branch at 0x22235f0 goes to 0x22236a0 when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` branch at 0x22235f8 goes to 0x2223614 when a0 != t8(=0x808f) and falls through when a0 == t8(=0x808f).
  The `bne` branch at 0x2223634 goes to 0x2223674 when a0 < 0xdf3 (unsigned) and falls through when a0 >= 0xdf3 (unsigned).
  The `beq` branch at 0x222363c goes to 0x2223614 when at(?) == 0 and falls through when at(?) != 0.
  The `bne` branch at 0x2223658 goes to 0x2223618 when a0 != v1(=0x8091) and falls through when a0 == v1(=0x8091).
  The `bne` branch at 0x2223674 goes to 0x2223618 when a0 != a2(=0xdf0) and falls through when a0 == a2(=0xdf0).
  The return at 0x222360c has v0 = 0x1.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2224c30 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2224c44 loads 8 bytes from abs 0x22dac48 via base gp (0x22e0798).
  The `bgezall` at 0x2224c4c calls `__glGetHistogramParameters [0x2224a80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2224c5c has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2224c70 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2224c84 loads 8 bytes from abs 0x22dac48 via base gp (0x22e0798).
  The `bgezall` at 0x2224c8c calls `__glGetHistogramParameters [0x2224a80]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2224c9c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2225220 (n64).
  It occupies 112 bytes.
  The `lw` at 0x2225224 loads 4 bytes from abs 0x1030 via base zero (0x0).
  2 such `ld` accesses load 8 bytes from abs 0x22da800 via base gp (0x22e0798), including `ld` at 0x222524c, `ld` at 0x222527c.
  The `ld` at 0x2225268 loads 8 bytes from abs 0x22dac60 via base gp (0x22e0798).
  The `ld` at 0x2225270 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `jalr` at 0x2225250 calls `__glSetError [0x22115d0]` with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x222526c calls `__glResetMinmax [0x2224ff0]` with a0=[0x1020]:8, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2225280 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x222523c goes to 0x222527c when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2225248 goes to 0x2225268 when a0 == a1(=0x802e) and falls through when a0 != a1(=0x802e).
  The return at 0x2225260 has v0 = ?.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2225540 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2225554 loads 8 bytes from abs 0x22dac80 via base gp (0x22e0798).
  The `bgezall` at 0x222555c calls `__glGetMinmaxParameters [0x2225460]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x222556c has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2225580 (n64).
  It occupies 52 bytes.
  The `ld` at 0x2225594 loads 8 bytes from abs 0x22dac80 via base gp (0x22e0798).
  The `bgezall` at 0x222559c calls `__glGetMinmaxParameters [0x2225460]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x22255ac has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22333a0 (n64).
  It occupies 12 bytes.
  The return at 0x22333a4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22333c0 (n64).
  It occupies 12 bytes.
  The return at 0x22333c4 has v0 = ?.

- `__glim_Normal3dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2238360 (n64).
  It occupies 44 bytes.
  The `ld` at 0x2238360 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The return at 0x2238384 has v0 = ?.

- `__glim_Normal3sv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22384b0 (n64).
  It occupies 96 bytes.
  The `lh` at 0x22384b0 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `ld` at 0x22384c0 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lh` at 0x22384d4 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a0 (a0).
  The `lh` at 0x22384f0 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The return at 0x2238508 has v0 = ([a0+4]:2 << 0x1)+1.

- `__glim_Normal3i` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2238510 (n64).
  It occupies 92 bytes.
  The `ld` at 0x2238540 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The return at 0x2238564 has v0 = [0x1020]:8.

- `__glim_Normal3iv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2238570 (n64).
  It occupies 104 bytes.
  The `lw` at 0x2238570 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `ld` at 0x2238594 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `lw` at 0x22385a4 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `lw` at 0x22385bc loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The return at 0x22385d0 has v0 = [0x1020]:8.

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22466d0 (n64).
  It occupies 156 bytes.
  The `lw` at 0x22466d4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x22466d8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2246708 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2246724 loads 8 bytes from [0x1020]:8 +0x4748 via base a3 ([0x1020]:8).
  The `sw` at 0x2246738 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2246754 loads 8 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0x224670c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2246728 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x224675c calls `(unknown callee)` with a0=unknown, a1=sp-48, a2=unknown, a3=unknown, a4=a0 at entry (arg0).
  The `beq` branch at 0x22466f4 goes to 0x224673c when a2(=[0x1030]) == 0 and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2246700 goes to 0x2246724 when a2(=[0x1030]) == v0(=0x2) and falls through when a2(=[0x1030]) != v0(=0x2).
  The return at 0x224671c has v0 = ?.

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2246770 (n64).
  It occupies 128 bytes.
  The `lw` at 0x2246774 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2246778 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x22467a8 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x22467bc loads 8 bytes from [0x1020]:8 +0x4748 via base a4 ([0x1020]:8).
  The `sw` at 0x22467d0 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x22467d4 loads 8 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0x22467ac calls `__glSetError [0x22115d0]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22467c0 calls `(unknown callee)` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22467d8 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0x2246794 goes to 0x22467d4 when a3(=[0x1030]) == 0 and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x22467a0 goes to 0x22467bc when a3(=[0x1030]) == v0(=0x2) and falls through when a3(=[0x1030]) != v0(=0x2).
  The return at 0x22467e8 has v0 = ?.

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2246bf0 (n64).
  It occupies 168 bytes.
  The `lw` at 0x2246bf4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2246bf8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2246c28 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2246c44 loads 8 bytes from [0x1020]:8 +0x4748 via base a3 ([0x1020]:8).
  The `sw` at 0x2246c58 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2246c80 loads 8 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0x2246c2c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2246c48 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2246c88 calls `(unknown callee)` with a0=unknown, a1=sp-48, a2=unknown, a3=unknown, a4=a0 at entry (arg0).
  The `beq` branch at 0x2246c14 goes to 0x2246c5c when a2(=[0x1030]) == 0 and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2246c20 goes to 0x2246c44 when a2(=[0x1030]) == v0(=0x2) and falls through when a2(=[0x1030]) != v0(=0x2).
  The return at 0x2246c3c has v0 = ?.

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2246ca0 (n64).
  It occupies 128 bytes.
  The `lw` at 0x2246ca4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2246ca8 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2246cd8 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2246cec loads 8 bytes from [0x1020]:8 +0x4748 via base a4 ([0x1020]:8).
  The `sw` at 0x2246d00 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2246d04 loads 8 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0x2246cdc calls `__glSetError [0x22115d0]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x2246cf0 calls `(unknown callee)` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x2246d08 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0x2246cc4 goes to 0x2246d04 when a3(=[0x1030]) == 0 and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2246cd0 goes to 0x2246cec when a3(=[0x1030]) == v0(=0x2) and falls through when a3(=[0x1030]) != v0(=0x2).
  The return at 0x2246d18 has v0 = ?.

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247190 (n64).
  It occupies 180 bytes.
  The `lw` at 0x2247194 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2247198 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x22471c8 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x22471e4 loads 8 bytes from [0x1020]:8 +0x4748 via base a3 ([0x1020]:8).
  The `sw` at 0x22471f8 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x224722c loads 8 bytes from unknown (base unknown) via base a3 (unknown).
  The `jalr` at 0x22471cc calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x22471e8 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2247234 calls `(unknown callee)` with a0=unknown, a1=sp-48, a2=unknown, a3=unknown, a4=a0 at entry (arg0).
  The `beq` branch at 0x22471b4 goes to 0x22471fc when a2(=[0x1030]) == 0 and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x22471c0 goes to 0x22471e4 when a2(=[0x1030]) == v0(=0x2) and falls through when a2(=[0x1030]) != v0(=0x2).
  The return at 0x22471dc has v0 = ?.

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247250 (n64).
  It occupies 128 bytes.
  The `lw` at 0x2247254 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2247258 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2247288 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x224729c loads 8 bytes from [0x1020]:8 +0x4748 via base a4 ([0x1020]:8).
  The `sw` at 0x22472b0 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x22472b4 loads 8 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0x224728c calls `__glSetError [0x22115d0]` with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22472a0 calls `(unknown callee)` with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22472b8 calls `(unknown callee)` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0x2247274 goes to 0x22472b4 when a3(=[0x1030]) == 0 and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2247280 goes to 0x224729c when a3(=[0x1030]) == v0(=0x2) and falls through when a3(=[0x1030]) != v0(=0x2).
  The return at 0x22472c8 has v0 = ?.

- `__glim_Rectd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247c50 (n64).
  It occupies 180 bytes.
  The `lw` at 0x2247c54 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2247c5c loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2247ca0 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2247cb8 loads 8 bytes from [0x1020]:8 +0x4748 via base t9 ([0x1020]:8).
  The `sw` at 0x2247cd8 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2247ce0 loads 8 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0x2247ca4 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247cbc calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247cec calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2247c7c goes to 0x2247cdc when a2(=[0x1030]) == 0 and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2247c98 goes to 0x2247cb4 when a2(=[0x1030]) == v0(=0x2) and falls through when a2(=[0x1030]) != v0(=0x2).
  The return at 0x2247cfc has v0 = ?.

- `__glim_Rectdv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247d10 (n64).
  It occupies 168 bytes.
  The `lw` at 0x2247d14 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2247d18 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2247d4c loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2247d60 loads 8 bytes from [0x1020]:8 +0x4748 via base a4 ([0x1020]:8).
  The `sw` at 0x2247d78 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2247d8c loads 8 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0x2247d50 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247d64 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247da0 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=a0 at entry (arg0).
  The `beq` branch at 0x2247d34 goes to 0x2247d7c when a3(=[0x1030]) == 0 and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2247d44 goes to 0x2247d60 when a3(=[0x1030]) == v0(=0x2) and falls through when a3(=[0x1030]) != v0(=0x2).
  The return at 0x2247db0 has v0 = ?.

- `__glim_Rectf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247dc0 (n64).
  It occupies 180 bytes.
  The `lw` at 0x2247dc4 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2247dcc loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2247e10 loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2247e28 loads 8 bytes from [0x1020]:8 +0x4748 via base t9 ([0x1020]:8).
  The `sw` at 0x2247e48 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2247e50 loads 8 bytes from unknown (base unknown) via base a0 (unknown).
  The `jalr` at 0x2247e14 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247e2c calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247e5c calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f13=f12, f14=f13, f15=f14, f16=f15.
  The `beq` branch at 0x2247dec goes to 0x2247e4c when a2(=[0x1030]) == 0 and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2247e08 goes to 0x2247e24 when a2(=[0x1030]) == v0(=0x2) and falls through when a2(=[0x1030]) != v0(=0x2).
  The return at 0x2247e6c has v0 = ?.

- `__glim_Rectfv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247e80 (n64).
  It occupies 152 bytes.
  The `lw` at 0x2247e84 loads 4 bytes from abs 0x1030 via base zero (0x0).
  The `ld` at 0x2247e88 loads 8 bytes from abs 0x1020 via base zero (0x0).
  The `ld` at 0x2247ebc loads 8 bytes from abs 0x22da800 via base gp (0x22e0798).
  The `ld` at 0x2247ed0 loads 8 bytes from [0x1020]:8 +0x4748 via base a4 ([0x1020]:8).
  The `sw` at 0x2247ee8 stores 4 bytes to abs 0x1030 via base zero (0x0) with value 0x0.
  The `ld` at 0x2247ef0 loads 8 bytes from unknown (base unknown) via base a4 (unknown).
  The `jalr` at 0x2247ec0 calls `__glSetError [0x22115d0]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247ed4 calls `(unknown callee)` with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247f00 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=a0 at entry (arg0); fp f13=[a0], f14=[a0+4], f15=[a1], f16=[a1+4].
  The `beq` branch at 0x2247ea4 goes to 0x2247eec when a3(=[0x1030]) == 0 and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2247eb4 goes to 0x2247ed0 when a3(=[0x1030]) == v0(=0x2) and falls through when a3(=[0x1030]) != v0(=0x2).
  The return at 0x2247f10 has v0 = ?.
