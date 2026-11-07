# Instruction readings from hostfacts

These readings summarize selected memory accesses, calls, branches and returns from each routine body. Every instruction claim cites its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped 10,005 located, 12,633 understood and 8 no-software-dependency rows because their status excludes them, plus 1,514 named-only rows with exact entries in existing docs; no undocumented rows were present, leaving 30,149 targets.

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f510 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f510-0x2e1f5b4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x2e1f518 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e1f55c loads 8 bytes from abs 0x1020.
  The `ld` at 0x2e1f564 loads 8 bytes from [0x1020]:8 +0x1ad0.
  The `jalr` at 0x2e1f560 calls __glNamesGenRange [0x2e57910] with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f57c calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f598 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e1f534 targets 0x2e1f578, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x2e1f53c targets 0x2e1f598, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x2e1f544 targets 0x2e1f55c, is taken when a0 != 0, and falls through when a0 == 0.
  The return at 0x2e1f554 has v0 = 0x0.
  The return at 0x2e1f570 has v0 = ret(__glNamesGenRange).
  The return at 0x2e1f590 has v0 = 0x0.
  The return at 0x2e1f5ac has v0 = 0x0.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f5c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f5c0-0x2e1f62c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x2e1f5c4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e1f5ec loads 8 bytes from abs 0x1020.
  The `ld` at 0x2e1f5f4 loads 8 bytes from [0x1020]:8 +0x1ad0.
  The `jalr` at 0x2e1f5f0 calls __glNamesIsName [0x2e580d0] with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f610 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e1f5e0 targets 0x2e1f60c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x2e1f604 has v0 = ?.
  The return at 0x2e1f624 has v0 = 0x0.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f7d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f7d0-0x2e1f850 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x2e1f7d8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e1f810 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2e1f818 loads 8 bytes from [0x1020]:8 +0x1ad0.
  The `jalr` at 0x2e1f814 calls __glNamesDeleteRange [0x2e57c80] with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x2e1f830 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x2e1f840 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0x2e1f7f4 targets 0x2e1f82c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x2e1f7fc targets 0x2e1f840, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x2e1f804 targets 0x2e1f820, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2e1f838 targets 0x2e1f820 and is always taken.
  The `beq` branch at 0x2e1f848 targets 0x2e1f820 and is always taken.
  The return at 0x2e1f824 has v0 = one of 0x1, ret(__glNamesDeleteRange), ret(__glSetError).

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e273f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e273f0-0x2e274a8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x2e273f0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e273fc loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x2e27430 loads 4 bytes from [0x1020]:8 +0xf2c.
  The `swc1` at 0x2e2746c stores 4 bytes to [0x1020]:8 +0x844.
  The `swc1` at 0x2e27470 stores 4 bytes to [0x1020]:8 +0x840.
  The `swc1` at 0x2e27474 stores 4 bytes to [0x1020]:8 +0x83c.
  The `swc1` at 0x2e27480 stores 4 bytes to [0x1020]:8 +0x838.
  The `jalr` at 0x2e27498 calls __glSetError [0x2e315d0] with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e2740c targets 0x2e27490, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e274a0 targets 0x2e27484 and is always taken.
  The return at 0x2e2747c has v0 = [0x1030].
  The return at 0x2e27488 has v0 = ret(__glSetError).

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e274b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e274b0-0x2e27520 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e274b0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e274bc loads 8 bytes from abs 0x1020.
  The `swc1` at 0x2e274d4 stores 4 bytes to [0x1020]:8 +0x2a8.
  The `swc1` at 0x2e274d8 stores 4 bytes to [0x1020]:8 +0x2a4.
  The `sw` at 0x2e274e0 stores 4 bytes to abs 0x1030.
  The `lw` at 0x2e274e4 loads 4 bytes from [0x1020]:8 +0x4714.
  The `sw` at 0x2e274f8 stores 4 bytes to [0x1020]:8 +0x4714.
  The `jalr` at 0x2e27510 calls __glSetError [0x2e315d0] with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e274cc targets 0x2e27508, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e27518 targets 0x2e274fc and is always taken.
  The return at 0x2e274f4 has v0 = ([[0x1020]:8+18196] | 0x4).
  The return at 0x2e27500 has v0 = ret(__glSetError).

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f270 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2f270-0x2e2f2e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e2f27c loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e2f2b8 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x2e2f2b4 calls __glColorTableParameterv [0x2e2f0e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f2d0 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f298 targets 0x2e2f2cc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e2f2d8 targets 0x2e2f2c0 and is always taken.
  The return at 0x2e2f2c4 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2f2e0-0x2e2f350 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e2f2ec loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e2f328 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x2e2f324 calls __glColorTableParameterv [0x2e2f0e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f340 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f308 targets 0x2e2f33c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e2f348 targets 0x2e2f330 and is always taken.
  The return at 0x2e2f334 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f4d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2f4d0-0x2e2f540 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e2f4dc loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e2f518 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x2e2f514 calls __glGetColorTableParameterv [0x2e2f350] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f530 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f4f8 targets 0x2e2f52c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e2f538 targets 0x2e2f520 and is always taken.
  The return at 0x2e2f524 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f540 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2f540-0x2e2f5b0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e2f54c loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e2f588 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x2e2f584 calls __glGetColorTableParameterv [0x2e2f350] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x2e2f5a0 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x2e2f568 targets 0x2e2f59c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e2f5a8 targets 0x2e2f590 and is always taken.
  The return at 0x2e2f594 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33060 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33060-0x2e330b8 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0x2e33088 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e330a8 calls __GLconvolutionParameter [0x2e32e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0x2e3307c targets 0x2e330a0, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2e330b0 targets 0x2e33094 and is always taken.
  The return at 0x2e33098 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e330c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e330c0-0x2e33120 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0x2e330f4 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x2e33110 calls __GLconvolutionParameter [0x2e32e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0x2e330d8 targets 0x2e3310c, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2e330e4 targets 0x2e3310c, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x2e330ec targets 0x2e3310c, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0x2e33118 targets 0x2e33100 and is always taken.
  The return at 0x2e33104 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33120 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33120-0x2e33178 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0x2e33148 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e33168 calls __GLconvolutionParameter [0x2e32e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0x2e3313c targets 0x2e33160, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2e33170 targets 0x2e33154 and is always taken.
  The return at 0x2e33158 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33180-0x2e331e0 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0x2e331b4 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x2e331d0 calls __GLconvolutionParameter [0x2e32e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0x2e33198 targets 0x2e331cc, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2e331a4 targets 0x2e331cc, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x2e331ac targets 0x2e331cc, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0x2e331d8 targets 0x2e331c0 and is always taken.
  The return at 0x2e331c4 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e334c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e334c0-0x2e334f4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2e334dc calls __GLgetConvolutionParameter [0x2e331e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2e334ec has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33500-0x2e33534 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2e3351c calls __GLgetConvolutionParameter [0x2e331e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2e3352c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e39ae0-0x2e39ba4 (196 bytes).
  It occupies 196 bytes.
  The `ldc1` at 0x2e39b48 loads 8 bytes from a3 (arg3 at entry) +0x0.
  The `sdc1` at 0x2e39b58 stores 8 bytes to ret(NurbsKnots1Common) +0x0.
  2 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x2e39b70, `ldc1` at 0x2e39b80.
  2 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0x2e39b78, `sdc1` at 0x2e39b90.
  The `bgezall` at 0x2e39b14 calls NurbsKnots1Common [0x2e398d0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e39b28 targets 0x2e39b94, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2e39b30 targets 0x2e39b94, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2e39b40 targets 0x2e39b5c, is taken when (s0(=a2) & 0x1) == 0, and falls through when (s0(=a2) & 0x1) != 0.
  The `beq` branch at 0x2e39b5c targets 0x2e39b94, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e39b8c targets 0x2e39b70, is taken when s0(=a2) != a4(?), and falls through when s0(=a2) == a4(?).
  The return at 0x2e39b9c has v0 = ret(NurbsKnots1Common).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39bb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e39bb0-0x2e39c9c (236 bytes).
  It occupies 236 bytes.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e39c18, `lwc1` at 0x2e39c40, `lwc1` at 0x2e39c50.
  5 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0x2e39c34, `sdc1` at 0x2e39c4c, `sdc1` at 0x2e39c5c.
  The `bgezall` at 0x2e39be4 calls NurbsKnots1Common [0x2e398d0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e39bf4 targets 0x2e39c8c, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2e39bfc targets 0x2e39c8c, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2e39c10 targets 0x2e39c38, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e39c30 targets 0x2e39c18, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e39c38 targets 0x2e39c8c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e39c84 targets 0x2e39c40, is taken when s0(=a2) != a3(?), and falls through when s0(=a2) == a3(?).
  The return at 0x2e39c94 has v0 = ret(NurbsKnots1Common).

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e44c30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e44c30-0x2e44c64 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2e44c4c calls __glGetHistogramParameters [0x2e44a80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2e44c5c has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e44c70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e44c70-0x2e44ca4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2e44c8c calls __glGetHistogramParameters [0x2e44a80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2e44c9c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e45220 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e45220-0x2e45290 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e45224 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e45270 loads 8 bytes from abs 0x1020.
  The `jalr` at 0x2e45250 calls __glSetError [0x2e315d0] with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e4526c calls __glResetMinmax [0x2e44ff0] with a0=[0x1020]:8, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e45280 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2e4523c targets 0x2e4527c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e45248 targets 0x2e45268, is taken when a0 == a1(=0x802e), and falls through when a0 != a1(=0x802e).
  The `beq` branch at 0x2e45274 targets 0x2e4525c and is always taken.
  The `beq` branch at 0x2e45288 targets 0x2e4525c and is always taken.
  The return at 0x2e45260 has v0 = one of ret(__glSetError), ret(__glResetMinmax).

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e45540 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e45540-0x2e45574 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2e4555c calls __glGetMinmaxParameters [0x2e45460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2e4556c has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e45580 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e45580-0x2e455b4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2e4559c calls __glGetMinmaxParameters [0x2e45460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2e455ac has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e533a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e533a0-0x2e533ac (12 bytes).
  It occupies 12 bytes.
  The return at 0x2e533a4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e533c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e533c0-0x2e533cc (12 bytes).
  It occupies 12 bytes.
  The return at 0x2e533c4 has v0 = ?.

- `__glim_NewList` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd991e00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd991e00-0xd992028 (552 bytes).
  It occupies 552 bytes.
  The `lw` at 0xd991e28 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd991e30 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x137c, including `lw` at 0xd991e68, `lw` at 0xd991e84.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1360, including `lw` at 0xd991eb0, `lw` at 0xd991f70.
  3 such `lw` accesses load 4 bytes from abs 0x1048, including `lw` at 0xd991ed4, `lw` at 0xd991ee0, `lw` at 0xd991f24.
  The `lw` at 0xd991ed8 loads 4 bytes from [0x1010] +0x1394.
  The `lw` at 0xd991ee8 loads 4 bytes from [0x1010] +0x318c.
  The `sw` at 0xd991f08 stores 4 bytes to [0x1010] +0x1394.
  The `lw` at 0xd991f80 loads 4 bytes from [0x1010] +0x1f58.
  The `sw` at 0xd991fc0 stores 4 bytes to [0x1010] +0x17f4.
  The `sw` at 0xd991fc8 stores 4 bytes to [0x1010] +0x137c.
  The `sw` at 0xd991fd0 stores 4 bytes to [0x1010] +0x1384.
  The `sw` at 0xd991fd4 stores 4 bytes to [0x1010] +0x1388.
  The `sw` at 0xd991fd8 stores 4 bytes to [0x1010] +0x138c.
  The `sw` at 0xd991fdc stores 4 bytes to [0x1010] +0x1390.
  The `sw` at 0xd991fe0 stores 4 bytes to [0x1010] +0x1378.
  The `lw` at 0xd991fe4 loads 4 bytes from [0x1010] +0x2e3c.
  The `lw` at 0xd992000 loads 4 bytes from [0x1010] +0x1358.
  The `jalr` at 0xd991e44 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991e74 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991e9c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991ebc calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991ef0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=0x1000, a3=a3 at entry (arg3).
  The `jalr` at 0xd991f14 calls __glSetError [0xd9d1af8] with a0=0x505, a1=?, a2=0x1000, a3=?.
  The `jalr` at 0xd991f50 calls __glMipsCopyDispatch [0xda6cb70] with a0=?, a1=[0x1010]+9920, a2=?, a3=?.
  The `jalr` at 0xd991f88 calls __glMipsCopyDispatch [0xda6cb70] with a0=[[0x1010]+8024], a1=?, a2=?, a3=?.
  The `jalr` at 0xd991fa8 calls __glMipsCopyDispatch [0xda6cb70] with a0=[0x1010]+6136, a1=?, a2=?, a3=?.
  The `jalr` at 0xd991ff0 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd992008 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd991e34 targets 0xd991e54, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd991e4c targets 0xd992014 and is always taken.
  The `beq` branch at 0xd991e58 targets 0xd991e84, is taken when t7(=a1) == at(=0x1300), and falls through when t7(=a1) != at(=0x1300).
  The `beql` branch at 0xd991e64 targets 0xd991e88, is taken when t7(=a1) == at(=0x1301), and falls through when t7(=a1) != at(=0x1301); its branch-likely delay slot `lw t8,64(v1)` at 0xd991e68 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd991e7c targets 0xd992014 and is always taken.
  The `beq` branch at 0xd991e8c targets 0xd991eac, is taken when t8(=[[0x1010]+4988]) == 0, and falls through when t8(=[[0x1010]+4988]) != 0.
  The `beq` branch at 0xd991ea4 targets 0xd992014 and is always taken.
  The `bnel` branch at 0xd991eac targets 0xd991ed0, is taken when t9(=a0) != 0, and falls through when t9(=a0) == 0; its branch-likely delay slot `lw t0,36(v1)` at 0xd991eb0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd991ec4 targets 0xd992014 and is always taken.
  The `beql` branch at 0xd991ed0 targets 0xd991f28, is taken when t0(=[[0x1010]+4960]) == 0, and falls through when t0(=[[0x1010]+4960]) != 0; its branch-likely delay slot `lw t2,72(a2)` at 0xd991ed4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd991edc targets 0xd991f28, is taken when t1(=[[0x1010]+5012]) != 0, and falls through when t1(=[[0x1010]+5012]) == 0; its branch-likely delay slot `lw t2,72(a2)` at 0xd991ee0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd991f04 targets 0xd991f24, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd991f1c targets 0xd992014 and is always taken.
  The `beq` branch at 0xd991f30 targets 0xd991f40, is taken when t2(=[0x1048]) == 0, and falls through when t2(=[0x1048]) != 0.
  The `beq` branch at 0xd991f38 targets 0xd991f40 and is always taken.
  The `bne` branch at 0xd991f68 targets 0xd991f9c, is taken when t3(=a1) != at(=0x1301), and falls through when t3(=a1) == at(=0x1301).
  The `bne` branch at 0xd991f74 targets 0xd991f9c, is taken when t4(=[[0x1010]+4960]) != 0, and falls through when t4(=[[0x1010]+4960]) == 0.
  The `beq` branch at 0xd991f94 targets 0xd991fb8 and is always taken.
  The `beq` branch at 0xd991fe8 targets 0xd992000, is taken when v0(=[[0x1010]+11836]) == 0, and falls through when v0(=[[0x1010]+11836]) != 0.
  The return at 0xd992020 has v0 = one of ret(__glSetError), ret(?).
  The instructions from 0xd991ecc to 0xd991ecc are not reached by any path from the entry, and their branches are not listed.

- `__gllc_CallList` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9922b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9922b4-0xd992348 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd9922d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xd992314 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd992324 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xd9922e0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9922fc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd99232c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd992348, a3=[0x1010].
  The `bne` branch at 0xd9922d0 targets 0xd9922f0, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xd9922e8 targets 0xd992338 and is always taken.
  The `beq` branch at 0xd99230c targets 0xd992338, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd992340 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CallLists` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd992778 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd992778-0xd9928a4 (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0xd9927a4 loads 4 bytes from abs 0x1010.
  The `lbu` at 0xd9927e4 loads 1 byte from table(0xda75e10) +0x0.
  The `sh` at 0xd992844 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd992850 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd992858 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xd9927b0 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xd992810 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd99282c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd992868 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd992884 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9928a4, a3=?.
  The `bgez` branch at 0xd9927a0 targets 0xd9927c0, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `beq` branch at 0xd9927b8 targets 0xd992890 and is always taken.
  The `bne` branch at 0xd9927c4 targets 0xd9927e8, is taken when a3(=a1) < 0x1400 (unsigned), and falls through when a3(=a1) >= 0x1400 (unsigned).
  The `beql` branch at 0xd9927d0 targets 0xd9927ec, is taken when a3(=a1) >= 0x140a (unsigned), and falls through when a3(=a1) < 0x140a (unsigned); its branch-likely delay slot `addiu v0,zero,-1` at 0xd9927d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9927e0 targets 0xd9927ec and is always taken.
  The `bgez` branch at 0xd992800 targets 0xd992820, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `beq` branch at 0xd992818 targets 0xd992890 and is always taken.
  The `beq` branch at 0xd992838 targets 0xd992890, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd99289c has v0 = one of ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c0934 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9c0934-0xd9c09d8 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd9c0950 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c0960 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9c0984 loads 4 bytes from [0x1010] +0x17f0.
  The `jalr` at 0xd9c096c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xd9c0990 calls __glSetError [0xd9d1af8] with a0=0x501, a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xd9c09bc calls __glNamesGenRange [0xd9f5158] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=[0x1010].
  The `bne` branch at 0xd9c095c targets 0xd9c0980, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9c0978 targets 0xd9c09c8 and is always taken.
  The `bgez` branch at 0xd9c0980 targets 0xd9c09a4, is taken when a2(=a0) >= 0 (signed), and falls through when a2(=a0) < 0 (signed).
  The `beq` branch at 0xd9c099c targets 0xd9c09c8 and is always taken.
  The `bne` branch at 0xd9c09a4 targets 0xd9c09b4, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0xd9c09ac targets 0xd9c09c8 and is always taken.
  The return at 0xd9c09d0 has v0 = one of 0x0, ret(__glNamesGenRange).

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c09d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9c09d8-0xd9c0a4c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd9c09f4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c0a04 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9c0a28 loads 4 bytes from [0x1010] +0x17f0.
  The `jalr` at 0xd9c0a10 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xd9c0a30 calls __glNamesIsName [0xd9f58d8] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=[0x1010].
  The `bne` branch at 0xd9c0a00 targets 0xd9c0a24, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9c0a1c targets 0xd9c0a3c and is always taken.
  The return at 0xd9c0a44 has v0 = one of 0x0, ret(__glNamesIsName).

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c0bec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9c0bec-0xd9c0c90 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd9c0c08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9c0c18 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c0c48 loads 4 bytes from [0x1010] +0x17f0.
  The `jalr` at 0xd9c0c34 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9c0c54 calls __glSetError [0xd9d1af8] with a0=0x501, a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9c0c74 calls __glNamesDeleteRange [0xd9f54c0] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `bne` branch at 0xd9c0c24 targets 0xd9c0c44, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9c0c3c targets 0xd9c0c80 and is always taken.
  The `bgez` branch at 0xd9c0c44 targets 0xd9c0c64, is taken when a3(=a1) >= 0 (signed), and falls through when a3(=a1) < 0 (signed).
  The `beq` branch at 0xd9c0c5c targets 0xd9c0c80 and is always taken.
  The `beql` branch at 0xd9c0c64 targets 0xd9c0c84, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9c0c68 runs only when taken and is annulled on fall-through.
  The return at 0xd9c0c88 has v0 = one of 0x1000, ?.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c7e74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9c7e74-0xd9c7fa0 (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0xd9c7e98 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c7ea0 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9c7ec8 loads 4 bytes from [0x1010] +0xdd8.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x730, including `swc1` at 0xd9c7f70, `swc1` at 0xd9c7f78.
  The `swc1` at 0xd9c7f7c stores 4 bytes to [0x1010] +0x734.
  The `swc1` at 0xd9c7f84 stores 4 bytes to [0x1010] +0x738.
  The `swc1` at 0xd9c7f8c stores 4 bytes to [0x1010] +0x73c.
  The `jalr` at 0xd9c7eb4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9c7ea4 targets 0xd9c7ec4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9c7ebc targets 0xd9c7f90 and is always taken.
  The `bc1fl` branch at 0xd9c7ed4 targets 0xd9c7ee4, is taken when not (f12 < f2 (c.lt.s at 0xd9c7ecc)), and falls through when f12 < f2 (c.lt.s at 0xd9c7ecc); its branch-likely delay slot `c.lt.s $f0,$f12` at 0xd9c7ed8 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7ee8 targets 0xd9c7ef8, is taken when not (f0(=[[0x1010]+3544]) < f12 (c.lt.s at 0xd9c7ee0)), and falls through when f0(=[[0x1010]+3544]) < f12 (c.lt.s at 0xd9c7ee0); its branch-likely delay slot `c.lt.s $f14,$f2` at 0xd9c7eec runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7efc targets 0xd9c7f0c, is taken when not (f14 < f2 (c.lt.s at 0xd9c7ef4)), and falls through when f14 < f2 (c.lt.s at 0xd9c7ef4); its branch-likely delay slot `c.lt.s $f0,$f14` at 0xd9c7f00 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7f10 targets 0xd9c7f20, is taken when not (f0 < f14 (c.lt.s at 0xd9c7f08)), and falls through when f0 < f14 (c.lt.s at 0xd9c7f08); its branch-likely delay slot `c.lt.s $f4,$f2` at 0xd9c7f14 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7f24 targets 0xd9c7f34, is taken when not (f4(=a2) < f2 (c.lt.s at 0xd9c7f1c)), and falls through when f4(=a2) < f2 (c.lt.s at 0xd9c7f1c); its branch-likely delay slot `lwc1 $f6,40(sp)` at 0xd9c7f28 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7f3c targets 0xd9c7f4c, is taken when not (f0 < f6 (c.lt.s at 0xd9c7f34)), and falls through when f0 < f6 (c.lt.s at 0xd9c7f34); its branch-likely delay slot `lwc1 $f8,44(sp)` at 0xd9c7f40 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7f54 targets 0xd9c7f64, is taken when not (f8(=a3) < f2 (c.lt.s at 0xd9c7f4c)), and falls through when f8(=a3) < f2 (c.lt.s at 0xd9c7f4c); its branch-likely delay slot `lwc1 $f10,44(sp)` at 0xd9c7f58 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c7f6c targets 0xd9c7f7c, is taken when not (f0 < f10 (c.lt.s at 0xd9c7f64)), and falls through when f0 < f10 (c.lt.s at 0xd9c7f64); its branch-likely delay slot `swc1 $f12,1840(v0)` at 0xd9c7f70 runs only when taken and is annulled on fall-through.
  The return at 0xd9c7f98 has v0 = one of ret(__glSetError), [0x1010].

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c7fa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9c7fa0-0xd9c8010 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9c7fbc loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c7fc4 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9c7fe8 stores 4 bytes to [0x1010] +0x1f4.
  The `swc1` at 0xd9c7fec stores 4 bytes to [0x1010] +0x1f8.
  The `sw` at 0xd9c7ff0 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9c7ff4 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9c7ffc stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9c7fd8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9c7fc8 targets 0xd9c7fe8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9c7fe0 targets 0xd9c8000 and is always taken.
  The return at 0xd9c8008 has v0 = one of ret(__glSetError), [0x1010].

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf754 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9cf754-0xd9cf7dc (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd9cf778 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf788 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cf7a0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf7c0 calls __glColorTableParameterv [0xd9cf650] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf790 targets 0xd9cf7b0, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cf7a8 targets 0xd9cf7cc and is always taken.
  The return at 0xd9cf7d4 has v0 = one of ret(__glSetError), ret(__glColorTableParameterv).

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf7dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9cf7dc-0xd9cf86c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd9cf804 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf814 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cf830 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf850 calls __glColorTableParameterv [0xd9cf650] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cf820 targets 0xd9cf840, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cf838 targets 0xd9cf85c and is always taken.
  The return at 0xd9cf864 has v0 = one of ret(__glSetError), ret(__glColorTableParameterv).

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf974 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9cf974-0xd9cf9fc (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd9cf998 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf9a8 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cf9c0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf9e0 calls __glGetColorTableParameterv [0xd9cf86c] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf9b0 targets 0xd9cf9d0, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cf9c8 targets 0xd9cf9ec and is always taken.
  The return at 0xd9cf9f4 has v0 = one of ret(__glSetError), ret(__glGetColorTableParameterv).

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9cf9fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9cf9fc-0xd9cfa8c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd9cfa24 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cfa34 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cfa50 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfa70 calls __glGetColorTableParameterv [0xd9cf86c] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cfa40 targets 0xd9cfa60, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cfa58 targets 0xd9cfa7c and is always taken.
  The return at 0xd9cfa84 has v0 = one of ret(__glSetError), ret(__glGetColorTableParameterv).

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d3364 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d3364-0xd9d33c8 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xd9d3394 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1404.
  The `jalr` at 0xd9d33ac calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3380 targets 0xd9d33a4, is taken when a1 != at(=0x8013), and falls through when a1 == at(=0x8013).
  The `beq` branch at 0xd9d339c targets 0xd9d33b8 and is always taken.
  The return at 0xd9d33c0 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d33c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d33c8-0xd9d3438 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xd9d3404 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `jalr` at 0xd9d341c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d33e0 targets 0xd9d33fc, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d33ec targets 0xd9d33fc, is taken when a1 == at(=0x8014), and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d33f4 targets 0xd9d3414, is taken when a1 != at(=0x8015), and falls through when a1 == at(=0x8015).
  The `beq` branch at 0xd9d340c targets 0xd9d3428 and is always taken.
  The return at 0xd9d3430 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d3438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d3438-0xd9d349c (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xd9d3468 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1406.
  The `jalr` at 0xd9d3480 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3454 targets 0xd9d3478, is taken when a1 != at(=0x8013), and falls through when a1 == at(=0x8013).
  The `beq` branch at 0xd9d3470 targets 0xd9d348c and is always taken.
  The return at 0xd9d3494 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d349c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d349c-0xd9d350c (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xd9d34d8 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `jalr` at 0xd9d34f0 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d34b4 targets 0xd9d34d0, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d34c0 targets 0xd9d34d0, is taken when a1 == at(=0x8014), and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d34c8 targets 0xd9d34e8, is taken when a1 != at(=0x8015), and falls through when a1 == at(=0x8015).
  The `beq` branch at 0xd9d34e0 targets 0xd9d34fc and is always taken.
  The return at 0xd9d3504 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d3864 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d3864-0xd9d389c (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9d3880 calls __GLgetConvolutionParameter [0xd9d350c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9d3894 has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d389c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d389c-0xd9d38d4 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9d38b8 calls __GLgetConvolutionParameter [0xd9d350c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9d38cc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_Map1d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d5d14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d5d14-0xd9d5e04 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0xd9d5d34 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d5d44 loads 4 bytes from abs 0x1018.
  2 such `lw` accesses load 4 bytes from ret(__glSetUpMap1) +0x0, including `lw` at 0xd9d5da0, `lw` at 0xd9d5ddc.
  The `lw` at 0xd9d5dd8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84.
  The `jalr` at 0xd9d5d60 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d5d88 calls __glSetUpMap1 [0xd9d6e48] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9d5dc0 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d5de8 calls __glFillMap1d [0xd9d6ab0] with a0=[ret(__glSetUpMap1)], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd9d5d50 targets 0xd9d5d70, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d5d68 targets 0xd9d5df4 and is always taken.
  The `beq` branch at 0xd9d5d94 targets 0xd9d5df4, is taken when v0(=ret(__glSetUpMap1)) == 0, and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d5db0 targets 0xd9d5dd0, is taken when a2(?) >= t8(=[ret(__glSetUpMap1)]) (signed), and falls through when a2(?) < t8(=[ret(__glSetUpMap1)]) (signed).
  The `beq` branch at 0xd9d5dc8 targets 0xd9d5df4 and is always taken.
  The return at 0xd9d5dfc has v0 = one of ret(__glSetError), ret(__glSetUpMap1), ret(__glFillMap1d).

- `__glim_Map1f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d5e04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d5e04-0xd9d5eec (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xd9d5e28 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d5e38 loads 4 bytes from abs 0x1018.
  2 such `lw` accesses load 4 bytes from ret(__glSetUpMap1) +0x0, including `lw` at 0xd9d5e88, `lw` at 0xd9d5ec4.
  The `lw` at 0xd9d5ec0 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84.
  The `jalr` at 0xd9d5e54 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d5e70 calls __glSetUpMap1 [0xd9d6e48] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9d5ea8 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd9d5ed0 calls __glFillMap1f [0xd9d698c] with a0=[ret(__glSetUpMap1)], a1=?, a2=a3 at entry (arg3), a3=?.
  The `bne` branch at 0xd9d5e44 targets 0xd9d5e64, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d5e5c targets 0xd9d5edc and is always taken.
  The `beq` branch at 0xd9d5e80 targets 0xd9d5edc, is taken when v0(=ret(__glSetUpMap1)) == 0, and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d5e98 targets 0xd9d5eb8, is taken when a2(=a3) >= t8(=[ret(__glSetUpMap1)]) (signed), and falls through when a2(=a3) < t8(=[ret(__glSetUpMap1)]) (signed).
  The `beq` branch at 0xd9d5eb0 targets 0xd9d5edc and is always taken.
  The return at 0xd9d5ee4 has v0 = one of ret(__glSetError), ret(__glSetUpMap1), ret(__glFillMap1f).

- `__glim_Map2d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d5eec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d5eec-0xd9d6030 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd9d5f0c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d5f1c loads 4 bytes from abs 0x1018.
  2 such `lw` accesses load 4 bytes from ret(__glSetUpMap2) +0x0, including `lw` at 0xd9d5f98, `lw` at 0xd9d5ff0.
  The `lw` at 0xd9d6000 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28.
  The `jalr` at 0xd9d5f38 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d5f80 calls __glSetUpMap2 [0xd9d6f8c] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9d5fb4 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d5fd8 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d6014 calls __glFillMap2d [0xd9d6d08] with a0=[ret(__glSetUpMap2)], a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd9d5f28 targets 0xd9d5f4c, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1); its branch-likely delay slot `the Kona stack assembly unit 7.d $f4,$f12` at 0xd9d5f2c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d5f40 targets 0xd9d6020 and is always taken.
  The `beq` branch at 0xd9d5f8c targets 0xd9d6020, is taken when v0(=ret(__glSetUpMap2)) == 0, and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `beql` branch at 0xd9d5fa4 targets 0xd9d5fc8, is taken when a3(?) >= v1(=[ret(__glSetUpMap2)]) (signed), and falls through when a3(?) < v1(=[ret(__glSetUpMap2)]) (signed); its branch-likely delay slot `slt at,t1,v1` at 0xd9d5fa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d5fbc targets 0xd9d6020 and is always taken.
  The `beq` branch at 0xd9d5fc8 targets 0xd9d5fe8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd9d5fe0 targets 0xd9d6020 and is always taken.
  The return at 0xd9d6028 has v0 = one of ret(__glSetError), ret(__glSetUpMap2), ret(__glFillMap2d).
  The instructions from 0xd9d5f48 to 0xd9d5f48 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd9d5fc4 to 0xd9d5fc4 are not reached by any path from the entry, and their branches are not listed.

- `__glim_Map2f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6030 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d6030-0xd9d6160 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xd9d6054 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d6064 loads 4 bytes from abs 0x1018.
  2 such `lw` accesses load 4 bytes from ret(__glSetUpMap2) +0x0, including `lw` at 0xd9d60c8, `lw` at 0xd9d6120.
  The `lw` at 0xd9d6130 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28.
  The `jalr` at 0xd9d6080 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d60b0 calls __glSetUpMap2 [0xd9d6f8c] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9d60e4 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6108 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6144 calls __glFillMap2f [0xd9d6b94] with a0=[ret(__glSetUpMap2)], a1=?, a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d6070 targets 0xd9d6090, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d6088 targets 0xd9d6150 and is always taken.
  The `beq` branch at 0xd9d60c0 targets 0xd9d6150, is taken when v0(=ret(__glSetUpMap2)) == 0, and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `beql` branch at 0xd9d60d4 targets 0xd9d60f8, is taken when a3 >= v1(=[ret(__glSetUpMap2)]) (signed), and falls through when a3 < v1(=[ret(__glSetUpMap2)]) (signed); its branch-likely delay slot `slt at,t1,v1` at 0xd9d60d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d60ec targets 0xd9d6150 and is always taken.
  The `beq` branch at 0xd9d60f8 targets 0xd9d6118, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd9d6110 targets 0xd9d6150 and is always taken.
  The return at 0xd9d6158 has v0 = one of ret(__glSetError), ret(__glSetUpMap2), ret(__glFillMap2f).
  The instructions from 0xd9d60f4 to 0xd9d60f4 are not reached by any path from the entry, and their branches are not listed.

- `__glim_MapGrid1d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d63a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d63a4-0xd9d6438 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd9d63c0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d63d4 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9d6414 stores 4 bytes to [0x1010] +0x78c.
  The `sw` at 0xd9d641c stores 4 bytes to [0x1010] +0x798.
  The `swc1` at 0xd9d6424 stores 4 bytes to [0x1010] +0x790.
  The `jalr` at 0xd9d63e0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6400 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d63d0 targets 0xd9d63f0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d63e8 targets 0xd9d6428 and is always taken.
  The `bgtzl` branch at 0xd9d63f0 targets 0xd9d6414, is taken when a0 > 0 (signed), and falls through when a0 <= 0 (signed); its branch-likely delay slot `the Kona stack assembly unit 7.d $f4,$f12` at 0xd9d63f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d6408 targets 0xd9d6428 and is always taken.
  The return at 0xd9d6430 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xd9d6410 to 0xd9d6410 are not reached by any path from the entry, and their branches are not listed.

- `__glim_MapGrid1f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d6438-0xd9d64c0 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd9d6454 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d6468 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9d6488 stores 4 bytes to [0x1010] +0x78c.
  The `swc1` at 0xd9d64a8 stores 4 bytes to [0x1010] +0x790.
  The `sw` at 0xd9d64ac stores 4 bytes to [0x1010] +0x798.
  The `jalr` at 0xd9d6474 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6494 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d6464 targets 0xd9d6484, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d647c targets 0xd9d64b0 and is always taken.
  The `bgtzl` branch at 0xd9d6484 targets 0xd9d64a8, is taken when a0 > 0 (signed), and falls through when a0 <= 0 (signed); its branch-likely delay slot `swc1 $f12,1932(v0)` at 0xd9d6488 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d649c targets 0xd9d64b0 and is always taken.
  The return at 0xd9d64b8 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xd9d64a4 to 0xd9d64a4 are not reached by any path from the entry, and their branches are not listed.

- `__glim_MapGrid2d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d64c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d64c0-0xd9d6578 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd9d64dc loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d64f0 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9d6538 stores 4 bytes to [0x1010] +0x79c.
  The `sw` at 0xd9d6540 stores 4 bytes to [0x1010] +0x7a8.
  The `swc1` at 0xd9d6548 stores 4 bytes to [0x1010] +0x7a0.
  The `swc1` at 0xd9d6554 stores 4 bytes to [0x1010] +0x7ac.
  The `sw` at 0xd9d655c stores 4 bytes to [0x1010] +0x7b8.
  The `swc1` at 0xd9d6564 stores 4 bytes to [0x1010] +0x7b0.
  The `jalr` at 0xd9d64fc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6524 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d64ec targets 0xd9d650c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d6504 targets 0xd9d6568 and is always taken.
  The `blez` branch at 0xd9d650c targets 0xd9d651c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bgtzl` branch at 0xd9d6514 targets 0xd9d6538, is taken when v1(?) > 0 (signed), and falls through when v1(?) <= 0 (signed); its branch-likely delay slot `the Kona stack assembly unit 7.d $f4,$f12` at 0xd9d6518 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d652c targets 0xd9d6568 and is always taken.
  The return at 0xd9d6570 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xd9d6534 to 0xd9d6534 are not reached by any path from the entry, and their branches are not listed.

- `__glim_MapGrid2f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d6578-0xd9d661c (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd9d6594 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d65a8 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9d65d0 stores 4 bytes to [0x1010] +0x79c.
  The `swc1` at 0xd9d65f0 stores 4 bytes to [0x1010] +0x7a0.
  The `sw` at 0xd9d65f4 stores 4 bytes to [0x1010] +0x7a8.
  The `swc1` at 0xd9d65fc stores 4 bytes to [0x1010] +0x7ac.
  The `sw` at 0xd9d6604 stores 4 bytes to [0x1010] +0x7b8.
  The `swc1` at 0xd9d6608 stores 4 bytes to [0x1010] +0x7b0.
  The `jalr` at 0xd9d65b4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d65dc calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d65a4 targets 0xd9d65c4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9d65bc targets 0xd9d660c and is always taken.
  The `blez` branch at 0xd9d65c4 targets 0xd9d65d4, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bgtzl` branch at 0xd9d65cc targets 0xd9d65f0, is taken when a3 > 0 (signed), and falls through when a3 <= 0 (signed); its branch-likely delay slot `swc1 $f12,1948(v0)` at 0xd9d65d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d65e4 targets 0xd9d660c and is always taken.
  The return at 0xd9d6614 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xd9d65ec to 0xd9d65ec are not reached by any path from the entry, and their branches are not listed.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d661c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d661c-0xd9d6710 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd9d663c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d6640 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d6664 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9d6688 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xd9d666c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9d6694 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9d66c4 calls __glEvalMesh1Line [0xd9d8c9c] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9d66dc calls __glEvalMesh1Point [0xd9d8ea4] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9d66f4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `beql` branch at 0xd9d6648 targets 0xd9d66a8, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t6,40(sp)` at 0xd9d664c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9d6650 targets 0xd9d668c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d6684 targets 0xd9d66a4 and is always taken.
  The `beq` branch at 0xd9d669c targets 0xd9d6700 and is always taken.
  The `beq` branch at 0xd9d66ac targets 0xd9d66d4, is taken when t6(=a0) == at(=0x1b00), and falls through when t6(=a0) != at(=0x1b00).
  The `bne` branch at 0xd9d66b4 targets 0xd9d66ec, is taken when t6(=a0) != at(=0x1b01), and falls through when t6(=a0) == at(=0x1b01).
  The `beq` branch at 0xd9d66cc targets 0xd9d6700 and is always taken.
  The `beq` branch at 0xd9d66e4 targets 0xd9d6700 and is always taken.
  The return at 0xd9d6708 has v0 = one of ret(__glSetError), ret(__glEvalMesh1Line), ret(__glEvalMesh1Point).

- `__glim_EvalMesh2` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d6790 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d6790-0xd9d68c4 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0xd9d67bc loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d67c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d67dc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9d67f8 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xd9d67e4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6804 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d6850 calls __glEvalMesh2Fill [0xd9d92b0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `jalr` at 0xd9d6870 calls __glEvalMesh2Line [0xd9d997c] with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `jalr` at 0xd9d688c calls __glEvalMesh2Point [0xd9d96cc] with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `jalr` at 0xd9d68a4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=?.
  The `beql` branch at 0xd9d67c8 targets 0xd9d6818, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t6,40(sp)` at 0xd9d67cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9d67d0 targets 0xd9d67fc, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d67f4 targets 0xd9d6814 and is always taken.
  The `beq` branch at 0xd9d680c targets 0xd9d68b0 and is always taken.
  The `beq` branch at 0xd9d6820 targets 0xd9d6880, is taken when t6(=a0) == at(=0x1b00), and falls through when t6(=a0) != at(=0x1b00).
  The `beq` branch at 0xd9d682c targets 0xd9d6860, is taken when t6(=a0) == at(=0x1b01), and falls through when t6(=a0) != at(=0x1b01).
  The `bne` branch at 0xd9d6838 targets 0xd9d689c, is taken when t6(=a0) != at(=0x1b02), and falls through when t6(=a0) == at(=0x1b02).
  The `beq` branch at 0xd9d6858 targets 0xd9d68b0 and is always taken.
  The `beq` branch at 0xd9d6878 targets 0xd9d68b0 and is always taken.
  The `beq` branch at 0xd9d6894 targets 0xd9d68b0 and is always taken.
  The return at 0xd9d68bc has v0 = one of ret(__glSetError), ret(__glEvalMesh2Fill), ret(__glEvalMesh2Line), ret(__glEvalMesh2Point).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9da26c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9da26c-0xd9da33c (208 bytes).
  It occupies 208 bytes.
  5 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd9da2d0, `ldc1` at 0xd9da2f0, `ldc1` at 0xd9da300.
  5 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9da2e4, `sdc1` at 0xd9da2fc, `sdc1` at 0xd9da30c.
  The `jalr` at 0xd9da298 calls NurbsKnots1Common [0xd9d9fc8] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9da2b0 targets 0xd9da32c, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9da2b8 targets 0xd9da32c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd9da2c4 targets 0xd9da2ec, is taken when (a2 & 0x3) == 0, and falls through when (a2 & 0x3) != 0.
  The `bne` branch at 0xd9da2e0 targets 0xd9da2d0, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da2e8 targets 0xd9da32c, is taken when a0(?) == a2, and falls through when a0(?) != a2.
  The `bne` branch at 0xd9da324 targets 0xd9da2f0, is taken when a0(?) != a2, and falls through when a0(?) == a2.
  The return at 0xd9da334 has v0 = one of ret(NurbsKnots1Common), (a1 << 0x3).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9da33c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9da33c-0xd9da420 (228 bytes).
  It occupies 228 bytes.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9da3a0, `lwc1` at 0xd9da3c4, `lwc1` at 0xd9da3dc.
  5 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9da3b8, `sdc1` at 0xd9da3d8, `sdc1` at 0xd9da3e8.
  The `jalr` at 0xd9da368 calls NurbsKnots1Common [0xd9d9fc8] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9da380 targets 0xd9da410, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9da388 targets 0xd9da410, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd9da394 targets 0xd9da3c0, is taken when (a2 & 0x3) == 0, and falls through when (a2 & 0x3) != 0.
  The `bne` branch at 0xd9da3b4 targets 0xd9da3a0, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da3bc targets 0xd9da410, is taken when a0(?) == a2, and falls through when a0(?) != a2.
  The `bne` branch at 0xd9da408 targets 0xd9da3c4, is taken when a0(?) != a2, and falls through when a0(?) == a2.
  The return at 0xd9da418 has v0 = one of ret(NurbsKnots1Common), (a1 << 0x2).

- `__glim_Finish` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9dbac0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9dbac0-0xd9dbb28 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xd9dbadc loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9dbae4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9dbaec loads 4 bytes from [0x1010] +0x2e34.
  The `jalr` at 0xd9dbaf8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9dbb0c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9dbae8 targets 0xd9dbb0c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t9,11828(a0)` at 0xd9dbaec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9dbb00 targets 0xd9dbb18 and is always taken.
  The return at 0xd9dbb20 has v0 = one of ret(__glSetError), ret(?).
  The instructions from 0xd9dbb08 to 0xd9dbb08 are not reached by any path from the entry, and their branches are not listed.

- `__glim_GetMaterialfv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9de2e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9de2e0-0xd9de480 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd9de2fc loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9de30c loads 4 bytes from abs 0x1018.
  The `lwc1` at 0xd9de3ac loads 4 bytes from ([0x1010] + one of 0x5d4, 0x624) +0x0.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xd9de3b0, `swc1` at 0xd9de3d0, `swc1` at 0xd9de3f4.
  The `lwc1` at 0xd9de3b4 loads 4 bytes from ([0x1010] + one of 0x5dc, 0x62c) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xd9de3b8, `swc1` at 0xd9de3fc, `swc1` at 0xd9de420.
  The `lwc1` at 0xd9de3bc loads 4 bytes from ([0x1010] + one of 0x5d8, 0x628) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xd9de3c4, `swc1` at 0xd9de404, `swc1` at 0xd9de428.
  The `lwc1` at 0xd9de3c8 loads 4 bytes from ([0x1010] + one of 0x5d0, 0x620) +0x0.
  The `lwc1` at 0xd9de3f0 loads 4 bytes from ([0x1010] + one of 0x590, 0x5e0) +0x0.
  The `lwc1` at 0xd9de3f8 loads 4 bytes from ([0x1010] + one of 0x594, 0x5e4) +0x0.
  The `lwc1` at 0xd9de400 loads 4 bytes from ([0x1010] + one of 0x598, 0x5e8) +0x0.
  The `lwc1` at 0xd9de408 loads 4 bytes from ([0x1010] + one of 0x59c, 0x5ec) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0xd9de410, `swc1` at 0xd9de434, `swc1` at 0xd9de458.
  The `lwc1` at 0xd9de414 loads 4 bytes from ([0x1010] + one of 0x5a0, 0x5f0) +0x0.
  The `lwc1` at 0xd9de41c loads 4 bytes from ([0x1010] + one of 0x5a4, 0x5f4) +0x0.
  The `lwc1` at 0xd9de424 loads 4 bytes from ([0x1010] + one of 0x5a8, 0x5f8) +0x0.
  The `lwc1` at 0xd9de42c loads 4 bytes from ([0x1010] + one of 0x5ac, 0x5fc) +0x0.
  The `lwc1` at 0xd9de438 loads 4 bytes from ([0x1010] + one of 0x5b0, 0x600) +0x0.
  The `lwc1` at 0xd9de440 loads 4 bytes from ([0x1010] + one of 0x5b4, 0x604) +0x0.
  The `lwc1` at 0xd9de448 loads 4 bytes from ([0x1010] + one of 0x5b8, 0x608) +0x0.
  The `lwc1` at 0xd9de450 loads 4 bytes from ([0x1010] + one of 0x5bc, 0x60c) +0x0.
  The `jalr` at 0xd9de320 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9de368 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9de3e0 calls __glUnScaleColorf [0xd9e5888] with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=a2 at entry (arg2).
  The `jalr` at 0xd9de464 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `bnel` branch at 0xd9de310 targets 0xd9de334, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1); its branch-likely delay slot `addiu at,zero,1028` at 0xd9de314 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9de328 targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de334 targets 0xd9de350, is taken when a0 == at(=0x404), and falls through when a0 != at(=0x404).
  The `beq` branch at 0xd9de340 targets 0xd9de358, is taken when a0 == at(=0x405), and falls through when a0 != at(=0x405).
  The `beq` branch at 0xd9de348 targets 0xd9de360 and is always taken.
  The `beq` branch at 0xd9de350 targets 0xd9de378 and is always taken.
  The `beq` branch at 0xd9de358 targets 0xd9de378 and is always taken.
  The `beq` branch at 0xd9de370 targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de37c targets 0xd9de3f0, is taken when a1 == at(=0x1200), and falls through when a1 != at(=0x1200).
  The `beq` branch at 0xd9de384 targets 0xd9de414, is taken when a1 == at(=0x1201), and falls through when a1 != at(=0x1201).
  The `beq` branch at 0xd9de38c targets 0xd9de438, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xd9de394 targets 0xd9de3d4, is taken when a1 == at(=0x1600), and falls through when a1 != at(=0x1600).
  The `beq` branch at 0xd9de39c targets 0xd9de3c8, is taken when a1 == at(=0x1601), and falls through when a1 != at(=0x1601).
  The `bne` branch at 0xd9de3a4 targets 0xd9de45c, is taken when a1 != at(=0x1603), and falls through when a1 == at(=0x1603).
  The `beq` branch at 0xd9de3c0 targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de3cc targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de3e8 targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de40c targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de430 targets 0xd9de470 and is always taken.
  The `beq` branch at 0xd9de454 targets 0xd9de470 and is always taken.
  The return at 0xd9de478 has v0 = one of ret(__glSetError), ([0x1010] + one of 0x590, 0x5e0), ret(__glUnScaleColorf).
  The instructions from 0xd9de330 to 0xd9de330 are not reached by any path from the entry, and their branches are not listed.

- `__glim_GetMaterialiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9de480 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9de480-0xd9de828 (936 bytes).
  It occupies 936 bytes.
  The `lw` at 0xd9de4a8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9de4b8 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9de5bc loads 4 bytes from ([0x1010] + one of 0x590, 0x5e0) +0x0.
  12 such `lwc1` accesses load 4 bytes from [0x1010] +0xdec, including `lwc1` at 0xd9de5c0, `lwc1` at 0xd9de5ec, `lwc1` at 0xd9de61c.
  12 such `lwc1` accesses load 4 bytes from [0x1010] +0xdd4, including `lwc1` at 0xd9de5c8, `lwc1` at 0xd9de5f8, `lwc1` at 0xd9de628.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd9de5e8, `sw` at 0xd9de6a8, `sw` at 0xd9de768.
  The `lwc1` at 0xd9de5f0 loads 4 bytes from ([0x1010] + one of 0x594, 0x5e4) +0x0.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0xd9de618, `sw` at 0xd9de6d8, `sw` at 0xd9de798.
  The `lwc1` at 0xd9de620 loads 4 bytes from ([0x1010] + one of 0x598, 0x5e8) +0x0.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0xd9de648, `sw` at 0xd9de708, `sw` at 0xd9de7c8.
  The `lwc1` at 0xd9de650 loads 4 bytes from ([0x1010] + one of 0x59c, 0x5ec) +0x0.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `sw` at 0xd9de678, `sw` at 0xd9de738, `sw` at 0xd9de7f8.
  The `lwc1` at 0xd9de67c loads 4 bytes from ([0x1010] + one of 0x5a0, 0x5f0) +0x0.
  The `lwc1` at 0xd9de6b0 loads 4 bytes from ([0x1010] + one of 0x5a4, 0x5f4) +0x0.
  The `lwc1` at 0xd9de6e0 loads 4 bytes from ([0x1010] + one of 0x5a8, 0x5f8) +0x0.
  The `lwc1` at 0xd9de710 loads 4 bytes from ([0x1010] + one of 0x5ac, 0x5fc) +0x0.
  The `lwc1` at 0xd9de73c loads 4 bytes from ([0x1010] + one of 0x5b0, 0x600) +0x0.
  The `lwc1` at 0xd9de770 loads 4 bytes from ([0x1010] + one of 0x5b4, 0x604) +0x0.
  The `lwc1` at 0xd9de7a0 loads 4 bytes from ([0x1010] + one of 0x5b8, 0x608) +0x0.
  The `lwc1` at 0xd9de7d0 loads 4 bytes from ([0x1010] + one of 0x5bc, 0x60c) +0x0.
  The `jalr` at 0xd9de4c4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de508 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de568 calls __glConvertResult [0xd9df750] with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d4, 0x624), a3=0x3.
  The `jalr` at 0xd9de590 calls __glConvertResult [0xd9df750] with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d0, 0x620), a3=0x3.
  The `jalr` at 0xd9de5ac calls __glUnScaleColori [0xd9e58cc] with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de5d0 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de600 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de630 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de660 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de690 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de6c0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de6f0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de720 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de750 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9de780 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de7b0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de7e0 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9de804 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9de4b4 targets 0xd9de4d4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9de4cc targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de4d8 targets 0xd9de4f0, is taken when a0 == at(=0x404), and falls through when a0 != at(=0x404).
  The `beq` branch at 0xd9de4e0 targets 0xd9de4f8, is taken when a0 == at(=0x405), and falls through when a0 != at(=0x405).
  The `beq` branch at 0xd9de4e8 targets 0xd9de500 and is always taken.
  The `beq` branch at 0xd9de4f0 targets 0xd9de518 and is always taken.
  The `beq` branch at 0xd9de4f8 targets 0xd9de518 and is always taken.
  The `beq` branch at 0xd9de510 targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de51c targets 0xd9de5bc, is taken when a1 == at(=0x1200), and falls through when a1 != at(=0x1200).
  The `beq` branch at 0xd9de524 targets 0xd9de67c, is taken when a1 == at(=0x1201), and falls through when a1 != at(=0x1201).
  The `beq` branch at 0xd9de52c targets 0xd9de73c, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xd9de534 targets 0xd9de5a0, is taken when a1 == at(=0x1600), and falls through when a1 != at(=0x1600).
  The `beq` branch at 0xd9de53c targets 0xd9de578, is taken when a1 == at(=0x1601), and falls through when a1 != at(=0x1601).
  The `bne` branch at 0xd9de548 targets 0xd9de7fc, is taken when a1 != at(=0x1603), and falls through when a1 == at(=0x1603).
  The `beq` branch at 0xd9de570 targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de598 targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de5b4 targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de674 targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de734 targets 0xd9de810 and is always taken.
  The `beq` branch at 0xd9de7f4 targets 0xd9de810 and is always taken.
  The return at 0xd9de820 has v0 = one of ret(__glSetError), ret(__glConvertResult), ret(__glUnScaleColori), ret(floorf).

- `__glim_GetMapiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9def80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9def80-0xd9df278 (760 bytes).
  It occupies 760 bytes.
  The `lw` at 0xd9defa8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9defb0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9deff0 loads 4 bytes from table(0xda795a0) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9df040, `lw` at 0xd9df044.
  The `lw` at 0xd9df05c loads 4 bytes from ([0x1010] + (a0-3472 << 0x2)) +0x70c4.
  The `lw` at 0xd9df0ec loads 4 bytes from table(-0xd6f8) +0x0.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd9df0f8, `sw` at 0xd9df220.
  The `lw` at 0xd9df154 loads 4 bytes from ([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3)) +0x6f64.
  The `lw` at 0xd9df158 loads 4 bytes from ([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3)) +0x6f60.
  The `lw` at 0xd9df15c loads 4 bytes from ([0x1010] + (((a0-3504 << 0x2) + a0-3504) << 0x3)) +0x6f5c.
  The `lw` at 0xd9df174 loads 4 bytes from ([0x1010] + (a0-3504 << 0x2)) +0x70e8.
  The `lw` at 0xd9df218 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b420.
  The `lw` at 0xd9df228 loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b41c.
  The `sw` at 0xd9df234 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `jalr` at 0xd9defc4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9df07c calls __glConvertResult [0xd9df750] with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0-3472 << 0x2))+28868], a3=0x3.
  The `jalr` at 0xd9df0c4 calls __glConvertResult [0xd9df750] with a0=[0x1010], a1=0x0, a2=table(-0xd6f4), a3=0x3.
  The `jalr` at 0xd9df104 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9df1a4 calls __glConvertResult [0xd9df750] with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0-3504 << 0x2))+28904], a3=0x3.
  The `jalr` at 0xd9df1ec calls __glConvertResult [0xd9df750] with a0=[0x1010], a1=0x0, a2=([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111640, a3=0x3.
  The `jalr` at 0xd9df240 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9df258 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9defb4 targets 0xd9defd4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9defcc targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9defdc targets 0xd9df250, is taken when t8(=a0-3472) >= 0x29 (unsigned), and falls through when t8(=a0-3472) < 0x29 (unsigned).
  The `beq` branch at 0xd9df004 targets 0xd9df02c, is taken when a1 == at(=0xa00), and falls through when a1 != at(=0xa00).
  The `beq` branch at 0xd9df010 targets 0xd9df0d4, is taken when a1 == at(=0xa01), and falls through when a1 != at(=0xa01).
  The `beq` branch at 0xd9df01c targets 0xd9df08c, is taken when a1 == at(=0xa02), and falls through when a1 != at(=0xa02).
  The `beq` branch at 0xd9df024 targets 0xd9df0fc and is always taken.
  The `beq` branch at 0xd9df084 targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df0cc targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df0f4 targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df10c targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df118 targets 0xd9df140, is taken when a1 == at(=0xa00), and falls through when a1 != at(=0xa00).
  The `beq` branch at 0xd9df124 targets 0xd9df1fc, is taken when a1 == at(=0xa01), and falls through when a1 != at(=0xa01).
  The `beq` branch at 0xd9df130 targets 0xd9df1b4, is taken when a1 == at(=0xa02), and falls through when a1 != at(=0xa02).
  The `beq` branch at 0xd9df138 targets 0xd9df238 and is always taken.
  The `beq` branch at 0xd9df1ac targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df1f4 targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df230 targets 0xd9df264 and is always taken.
  The `beq` branch at 0xd9df248 targets 0xd9df264 and is always taken.
  The return at 0xd9df270 has v0 = one of ret(__glSetError), ret(__glConvertResult), a0, ([0x1010] + (((a0 << 0x2) + a0) << 0x3))-140160.
  The indirect jump at 0xd9deff8 uses the jump table at 0xda795a0 with targets 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df000, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df250, 0xd9df114, 0xd9df114, 0xd9df114, 0xd9df114, 0xd9df114, 0xd9df114, 0xd9df114, 0xd9df114, 0xd9df114.

- `__glim_GetPixelMapfv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9df278 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9df278-0xd9df3b8 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd9df294 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9df2a4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9df2dc loads 4 bytes from table(0xda79644) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0, including `lw` at 0xd9df308, `lw` at 0xd9df360.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0, including `lw` at 0xd9df30c, `lw` at 0xd9df364.
  The `lw` at 0xd9df31c loads 4 bytes from ?.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd9df338, `swc1` at 0xd9df388.
  The `lwc1` at 0xd9df374 loads 4 bytes from ?.
  The `jalr` at 0xd9df2b0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xd9df39c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `bne` branch at 0xd9df2a0 targets 0xd9df2c0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9df2b8 targets 0xd9df3a8 and is always taken.
  The `beq` branch at 0xd9df2c8 targets 0xd9df394, is taken when t7(=a0-3184) >= 0xa (unsigned), and falls through when t7(=a0-3184) < 0xa (unsigned).
  The `bltzl` branch at 0xd9df314 targets 0xd9df3ac, is taken when v0(=entry(-0x9140)-1) < 0 (signed), and falls through when v0(=entry(-0x9140)-1) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd9df318 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd9df334 targets 0xd9df31c, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd9df33c targets 0xd9df3ac and is always taken.
  The `bltzl` branch at 0xd9df36c targets 0xd9df3ac, is taken when v0(=entry(-0x9140)-1) < 0 (signed), and falls through when v0(=entry(-0x9140)-1) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd9df370 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd9df384 targets 0xd9df374, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd9df38c targets 0xd9df3ac and is always taken.
  The return at 0xd9df3b0 has v0 = one of entry(-0x9140)-1, ?, ret(__glSetError).
  The indirect jump at 0xd9df2e4 uses the jump table at 0xda79644 with targets 0xd9df2ec, 0xd9df2ec, 0xd9df344, 0xd9df344, 0xd9df344, 0xd9df344, 0xd9df344, 0xd9df344, 0xd9df344, 0xd9df344.

- `__glim_GetPixelMapuiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9df3b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9df3b8-0xd9df584 (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0xd9df3d4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9df3e4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9df41c loads 4 bytes from table(0xda7966c) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0, including `lw` at 0xd9df448, `lw` at 0xd9df498.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0, including `lw` at 0xd9df44c, `lw` at 0xd9df49c.
  The `lw` at 0xd9df45c loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9df470, `sw` at 0xd9df54c.
  The `lwc1` at 0xd9df4ac loads 4 bytes from ?.
  The `lwc1` at 0xd9df4b0 loads 4 bytes from [0x1010] +0xdec.
  The `lwc1` at 0xd9df4b4 loads 4 bytes from [0x1010] +0xdd4.
  The `jalr` at 0xd9df3f0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xd9df568 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `bne` branch at 0xd9df3e0 targets 0xd9df400, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9df3f8 targets 0xd9df574 and is always taken.
  The `beq` branch at 0xd9df408 targets 0xd9df560, is taken when t7(=a0-3184) >= 0xa (unsigned), and falls through when t7(=a0-3184) < 0xa (unsigned).
  The `bltzl` branch at 0xd9df454 targets 0xd9df578, is taken when v0(=entry(-0x9140)-1) < 0 (signed), and falls through when v0(=entry(-0x9140)-1) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd9df458 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd9df46c targets 0xd9df45c, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd9df474 targets 0xd9df578 and is always taken.
  The `bltzl` branch at 0xd9df4a4 targets 0xd9df578, is taken when v0(=entry(-0x9140)-1) < 0 (signed), and falls through when v0(=entry(-0x9140)-1) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd9df4a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9df4ec targets 0xd9df53c, is taken when (t2(?) & 0x78) == 0, and falls through when (t2(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t2,$f18` at 0xd9df4f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9df518 targets 0xd9df530, is taken when (t2(?) & 0x78) != 0, and falls through when (t2(?) & 0x78) == 0.
  The `beq` branch at 0xd9df528 targets 0xd9df548 and is always taken.
  The `beq` branch at 0xd9df530 targets 0xd9df548 and is always taken.
  The `bltz` branch at 0xd9df540 targets 0xd9df530, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xd9df550 targets 0xd9df4ac, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd9df558 targets 0xd9df578 and is always taken.
  The return at 0xd9df57c has v0 = one of entry(-0x9140)-1, ?, ret(__glSetError).
  The instructions from 0xd9df538 to 0xd9df538 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd9df424 uses the jump table at 0xda7966c with targets 0xd9df42c, 0xd9df42c, 0xd9df47c, 0xd9df47c, 0xd9df47c, 0xd9df47c, 0xd9df47c, 0xd9df47c, 0xd9df47c, 0xd9df47c.

- `__glim_GetPixelMapusv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9df584 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9df584-0xd9df750 (460 bytes).
  It occupies 460 bytes.
  The `lw` at 0xd9df5a0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9df5b0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9df5e8 loads 4 bytes from table(0xda79694) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0, including `lw` at 0xd9df614, `lw` at 0xd9df664.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0, including `lw` at 0xd9df618, `lw` at 0xd9df668.
  The `lw` at 0xd9df628 loads 4 bytes from ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd9df63c, `sh` at 0xd9df718.
  The `lwc1` at 0xd9df678 loads 4 bytes from ?.
  The `lwc1` at 0xd9df67c loads 4 bytes from [0x1010] +0xde4.
  The `lwc1` at 0xd9df680 loads 4 bytes from [0x1010] +0xdd4.
  The `jalr` at 0xd9df5bc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xd9df734 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `bne` branch at 0xd9df5ac targets 0xd9df5cc, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9df5c4 targets 0xd9df740 and is always taken.
  The `beq` branch at 0xd9df5d4 targets 0xd9df72c, is taken when t7(=a0-3184) >= 0xa (unsigned), and falls through when t7(=a0-3184) < 0xa (unsigned).
  The `bltzl` branch at 0xd9df620 targets 0xd9df744, is taken when v0(=entry(-0x9140)-1) < 0 (signed), and falls through when v0(=entry(-0x9140)-1) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd9df624 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd9df638 targets 0xd9df628, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd9df640 targets 0xd9df744 and is always taken.
  The `bltzl` branch at 0xd9df670 targets 0xd9df744, is taken when v0(=entry(-0x9140)-1) < 0 (signed), and falls through when v0(=entry(-0x9140)-1) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xd9df674 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9df6b8 targets 0xd9df708, is taken when (t2(?) & 0x78) == 0, and falls through when (t2(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t2,$f18` at 0xd9df6bc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9df6e4 targets 0xd9df6fc, is taken when (t2(?) & 0x78) != 0, and falls through when (t2(?) & 0x78) == 0.
  The `beq` branch at 0xd9df6f4 targets 0xd9df714 and is always taken.
  The `beq` branch at 0xd9df6fc targets 0xd9df714 and is always taken.
  The `bltz` branch at 0xd9df70c targets 0xd9df6fc, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xd9df71c targets 0xd9df678, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0xd9df724 targets 0xd9df744 and is always taken.
  The return at 0xd9df748 has v0 = one of entry(-0x9140)-1, ?, ret(__glSetError).
  The instructions from 0xd9df704 to 0xd9df704 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd9df5f0 uses the jump table at 0xda79694 with targets 0xd9df5f8, 0xd9df5f8, 0xd9df648, 0xd9df648, 0xd9df648, 0xd9df648, 0xd9df648, 0xd9df648, 0xd9df648, 0xd9df648.

- `__glim_GetDoublev` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e2260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e2260-0xd9e22a0 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xd9e2284 calls __glDoGet [0xd9e0a70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0xda792b0.
  The return at 0xd9e2298 has v0 = ret(__glDoGet).

- `__glim_GetFloatv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e22a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e22a0-0xd9e22e0 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xd9e22c4 calls __glDoGet [0xd9e0a70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0xda792c0.
  The return at 0xd9e22d8 has v0 = ret(__glDoGet).

- `__glim_GetIntegerv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e22e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e22e0-0xd9e2320 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xd9e2304 calls __glDoGet [0xd9e0a70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0xda792cc.
  The return at 0xd9e2318 has v0 = ret(__glDoGet).

- `__glim_GetBooleanv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e2320 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e2320-0xd9e2360 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xd9e2344 calls __glDoGet [0xd9e0a70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0xda792dc.
  The return at 0xd9e2358 has v0 = ret(__glDoGet).

- `__glim_GetString` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e23c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e23c4-0xd9e2484 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd9e23e0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e23e8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9e2440 loads 4 bytes from [0x1010] +0xdf4.
  The `lw` at 0xd9e2448 loads 4 bytes from [0x1010] +0xdf8.
  The `lw` at 0xd9e2450 loads 4 bytes from [0x1010] +0xdfc.
  The `lw` at 0xd9e2458 loads 4 bytes from [0x1010] +0xe00.
  The `jalr` at 0xd9e23fc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e2464 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9e23ec targets 0xd9e2414, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `addiu at,zero,7936` at 0xd9e23f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e2408 targets 0xd9e2474 and is always taken.
  The `beq` branch at 0xd9e2414 targets 0xd9e243c, is taken when a0 == at(=0x1f00), and falls through when a0 != at(=0x1f00).
  The `beq` branch at 0xd9e241c targets 0xd9e2444, is taken when a0 == at(=0x1f01), and falls through when a0 != at(=0x1f01).
  The `beq` branch at 0xd9e2424 targets 0xd9e244c, is taken when a0 == at(=0x1f02), and falls through when a0 != at(=0x1f02).
  The `beq` branch at 0xd9e242c targets 0xd9e2454, is taken when a0 == at(=0x1f03), and falls through when a0 != at(=0x1f03).
  The `beq` branch at 0xd9e2434 targets 0xd9e245c and is always taken.
  The `beq` branch at 0xd9e243c targets 0xd9e2474 and is always taken.
  The `beq` branch at 0xd9e2444 targets 0xd9e2474 and is always taken.
  The `beq` branch at 0xd9e244c targets 0xd9e2474 and is always taken.
  The `beq` branch at 0xd9e2454 targets 0xd9e2474 and is always taken.
  The return at 0xd9e247c has v0 = one of 0x0, [[0x1010]+3572], [[0x1010]+3576], [[0x1010]+3580], [[0x1010]+3584].
  The instructions from 0xd9e2410 to 0xd9e2410 are not reached by any path from the entry, and their branches are not listed.

- `__glim_GetPointervEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e2484 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e2484-0xd9e25a8 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xd9e24a0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e24a8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9e24f8 loads 4 bytes from table(0xda7a348) +0x0.
  The `lw` at 0xd9e2518 loads 4 bytes from [0x1010] +0x1328.
  The `lw` at 0xd9e2524 loads 4 bytes from [0x1010] +0x13e0.
  8 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd9e252c, `sw` at 0xd9e2538, `sw` at 0xd9e2544.
  The `lw` at 0xd9e2530 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xd9e253c loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xd9e2548 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xd9e2554 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xd9e2560 loads 4 bytes from [0x1010] +0x1464.
  The `lw` at 0xd9e256c loads 4 bytes from [0x1010] +0x1308.
  The `jalr` at 0xd9e24bc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e258c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9e24ac targets 0xd9e24d0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `sltiu at,a0,3572` at 0xd9e24b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e24c4 targets 0xd9e2598 and is always taken.
  The `bne` branch at 0xd9e24d0 targets 0xd9e2508, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd9e24e4 targets 0xd9e2584, is taken when t7(=a0-32910) >= 0x6 (unsigned), and falls through when t7(=a0-32910) < 0x6 (unsigned).
  The `beq` branch at 0xd9e250c targets 0xd9e256c, is taken when a0 == at(=0xdf0), and falls through when a0 != at(=0xdf0).
  The `beql` branch at 0xd9e2514 targets 0xd9e257c, is taken when a0 == at(=0xdf3), and falls through when a0 != at(=0xdf3); its branch-likely delay slot `lw t5,4904(v0)` at 0xd9e2518 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e251c targets 0xd9e2584 and is always taken.
  The `beq` branch at 0xd9e2528 targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e2534 targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e2540 targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e254c targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e2558 targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e2564 targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e2570 targets 0xd9e2598 and is always taken.
  The `beq` branch at 0xd9e257c targets 0xd9e2598 and is always taken.
  The return at 0xd9e25a0 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xd9e24cc to 0xd9e24cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd9e2578 to 0xd9e2578 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd9e2500 uses the jump table at 0xda7a348 with targets 0xd9e2524, 0xd9e2530, 0xd9e253c, 0xd9e2548, 0xd9e2554, 0xd9e2560.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e36bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e36bc-0xd9e36f4 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e36d8 calls __glGetHistogramParameters [0xd9e3548] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e36ec has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e36f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e36f4-0xd9e372c (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e3710 calls __glGetHistogramParameters [0xd9e3548] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3724 has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e3a74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e3a74-0xd9e3b04 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd9e3a90 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e3a98 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xd9e3aac calls __glSetError [0xd9d1af8] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3ad0 calls __glSetError [0xd9d1af8] with a0=0x500, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3ae8 calls __glResetMinmax [0xd9e3820] with a0=[0x1010], a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9e3a9c targets 0xd9e3ac0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x802e` at 0xd9e3aa0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e3ab4 targets 0xd9e3af4 and is always taken.
  The `beq` branch at 0xd9e3ac0 targets 0xd9e3ae0, is taken when a0 == at(=0x802e), and falls through when a0 != at(=0x802e).
  The `beq` branch at 0xd9e3ad8 targets 0xd9e3af4 and is always taken.
  The return at 0xd9e3afc has v0 = one of ret(__glSetError), ret(__glResetMinmax).
  The instructions from 0xd9e3abc to 0xd9e3abc are not reached by any path from the entry, and their branches are not listed.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e3e18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e3e18-0xd9e3e50 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e3e34 calls __glGetMinmaxParameters [0xd9e3d24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e3e48 has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9e3e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9e3e50-0xd9e3e88 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e3e6c calls __glGetMinmaxParameters [0xd9e3d24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3e80 has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f0738 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9f0738-0xd9f074c (20 bytes).
  It occupies 20 bytes.
  The return at 0xd9f0744 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f0754 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9f0754-0xd9f0768 (20 bytes).
  It occupies 20 bytes.
  The return at 0xd9f0760 has v0 = ?.

- `__glim_Normal3dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5af4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9f5af4-0xd9f5b20 (44 bytes).
  It occupies 44 bytes.
  The `ldc1` at 0xd9f5af4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xd9f5af8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xd9f5afc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xd9f5b00 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9f5b0c stores 4 bytes to [0x1010] +0xd0.
  The `swc1` at 0xd9f5b14 stores 4 bytes to [0x1010] +0xd4.
  The `swc1` at 0xd9f5b1c stores 4 bytes to [0x1010] +0xd8.
  The return at 0xd9f5b18 has v0 = [0x1010].

- `__glim_Normal3sv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5c78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9f5c78-0xd9f5ce0 (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0xd9f5c78 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xd9f5c7c loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9f5c8c loads 4 bytes from [0x1010] +0xde8.
  The `swc1` at 0xd9f5c98 stores 4 bytes to [0x1010] +0xd0.
  The `lh` at 0xd9f5c9c loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `swc1` at 0xd9f5cb8 stores 4 bytes to [0x1010] +0xd4.
  The `lh` at 0xd9f5cbc loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd9f5cdc stores 4 bytes to [0x1010] +0xd8.
  The return at 0xd9f5cd8 has v0 = [0x1010].

- `__glim_Normal3i` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5ce0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9f5ce0-0xd9f5d50 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9f5d04 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9f5d10 loads 4 bytes from [0x1010] +0xdf0.
  The `swc1` at 0xd9f5d24 stores 4 bytes to [0x1010] +0xd0.
  The `swc1` at 0xd9f5d3c stores 4 bytes to [0x1010] +0xd4.
  The `swc1` at 0xd9f5d4c stores 4 bytes to [0x1010] +0xd8.
  The return at 0xd9f5d48 has v0 = [0x1010].

- `__glim_Normal3iv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9f5d50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9f5d50-0xd9f5dd4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd9f5d5c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xd9f5d78 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9f5d7c loads 4 bytes from [0x1010] +0xdf0.
  The `swc1` at 0xd9f5d8c stores 4 bytes to [0x1010] +0xd0.
  The `lw` at 0xd9f5d90 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd9f5dac stores 4 bytes to [0x1010] +0xd4.
  The `lw` at 0xd9f5db0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd9f5dd0 stores 4 bytes to [0x1010] +0xd8.
  The return at 0xd9f5dcc has v0 = [0x1010].

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda050f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda050f0-0xda051ac (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xda0510c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda05114 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda05130 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda05150 stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda0516c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda05180 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda0518c loads 4 bytes from [0x1010] +0x3180.
  The `jalr` at 0xda05138 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda0515c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05190 calls (unknown callee) with a0=[0x1010], a1=sp-8, a2=[0x1010], a3=a0 at entry (arg0).
  The `beq` branch at 0xda05118 targets 0xda0516c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda05120 targets 0xda05154, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda0514c targets 0xda0516c and is always taken.
  The `beq` branch at 0xda05164 targets 0xda0519c and is always taken.
  The return at 0xda051a4 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda051ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda051ac-0xda0524c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda051cc loads 4 bytes from abs 0x1018.
  The `lw` at 0xda051d0 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x3180, including `lw` at 0xda051dc, `lw` at 0xda05224.
  The `lw` at 0xda051ec loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda05208 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xda051f4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05214 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05230 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=[0x1010], a3=?.
  The `beql` branch at 0xda051d8 targets 0xda05228, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t9,12672(a2)` at 0xda051dc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda051e0 targets 0xda0520c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda05204 targets 0xda05224 and is always taken.
  The `beq` branch at 0xda0521c targets 0xda0523c and is always taken.
  The return at 0xda05244 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda056cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda056cc-0xda05794 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda056e8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda056f0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda0570c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda0572c stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda05748 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda0575c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda05768 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda05774 loads 4 bytes from [0x1010] +0x3184.
  The `jalr` at 0xda05714 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05738 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05778 calls (unknown callee) with a0=[0x1010], a1=sp-12, a2=[0x1010], a3=a0 at entry (arg0).
  The `beq` branch at 0xda056f4 targets 0xda05748, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda056fc targets 0xda05730, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda05728 targets 0xda05748 and is always taken.
  The `beq` branch at 0xda05740 targets 0xda05784 and is always taken.
  The return at 0xda0578c has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda05794 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda05794-0xda05834 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda057b4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda057b8 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x3184, including `lw` at 0xda057c4, `lw` at 0xda0580c.
  The `lw` at 0xda057d4 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda057f0 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xda057dc calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda057fc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05818 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=[0x1010], a3=?.
  The `beql` branch at 0xda057c0 targets 0xda05810, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t9,12676(a2)` at 0xda057c4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda057c8 targets 0xda057f4, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda057ec targets 0xda0580c and is always taken.
  The `beq` branch at 0xda05804 targets 0xda05824 and is always taken.
  The return at 0xda0582c has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda05d1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda05d1c-0xda05df0 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda05d38 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda05d40 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda05d5c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda05d7c stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda05d98 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda05dac loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda05db8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda05dc4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda05dd0 loads 4 bytes from [0x1010] +0x3188.
  The `jalr` at 0xda05d64 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05d88 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a0 at entry (arg0).
  The `jalr` at 0xda05dd4 calls (unknown callee) with a0=[0x1010], a1=sp-16, a2=[0x1010], a3=a0 at entry (arg0).
  The `beq` branch at 0xda05d44 targets 0xda05d98, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda05d4c targets 0xda05d80, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda05d78 targets 0xda05d98 and is always taken.
  The `beq` branch at 0xda05d90 targets 0xda05de0 and is always taken.
  The return at 0xda05de8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda05df0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda05df0-0xda05e90 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda05e10 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda05e14 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x3188, including `lw` at 0xda05e20, `lw` at 0xda05e68.
  The `lw` at 0xda05e30 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda05e4c stores 4 bytes to abs 0x1018.
  The `jalr` at 0xda05e38 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05e58 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda05e74 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=[0x1010], a3=?.
  The `beql` branch at 0xda05e1c targets 0xda05e6c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t9,12680(a2)` at 0xda05e20 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda05e24 targets 0xda05e50, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda05e48 targets 0xda05e68 and is always taken.
  The `beq` branch at 0xda05e60 targets 0xda05e80 and is always taken.
  The return at 0xda05e88 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda068a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda068a0-0xda06968 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda068bc loads 4 bytes from abs 0x1018.
  The `lw` at 0xda068c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda068e4 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06904 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda0693c loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda068e8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06910 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda0694c calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda068c8 targets 0xda06924, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `ldc1 $f16,72(sp)` at 0xda068cc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda068d0 targets 0xda06908, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06900 targets 0xda06920 and is always taken.
  The `beq` branch at 0xda06918 targets 0xda06958 and is always taken.
  The return at 0xda06960 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectdv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06968 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06968-0xda06a40 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xda06990 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06994 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda069ac loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda069c4 stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda069ec loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda069f0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda069f4 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ldc1` at 0xda069fc loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xda06a18 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda069b4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda069d0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06a20 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda0699c targets 0xda069e4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t6,40(sp)` at 0xda069a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda069a4 targets 0xda069c8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda069c0 targets 0xda069e0 and is always taken.
  The `beq` branch at 0xda069d8 targets 0xda06a2c and is always taken.
  The return at 0xda06a38 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06a40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06a40-0xda06af4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xda06a6c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06a70 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda06a8c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06aa4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda06ad0 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda06a90 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06ab0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06ad8 calls (unknown callee) with a0=[0x1010], a1=f12 at entry, a2=f14 at entry, a3=a2 at entry (arg2).
  The `beql` branch at 0xda06a78 targets 0xda06ac4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lwc1 $f4,60(sp)` at 0xda06a7c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda06a80 targets 0xda06aa8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06aa0 targets 0xda06ac0 and is always taken.
  The `beq` branch at 0xda06ab8 targets 0xda06ae4 and is always taken.
  The return at 0xda06aec has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectfv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06af4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06af4-0xda06bb0 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xda06b1c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06b20 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda06b38 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06b50 stores 4 bytes to abs 0x1018.
  The `lwc1` at 0xda06b78 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda06b7c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda06b80 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda06b84 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda06b8c loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda06b40 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06b5c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06b90 calls (unknown callee) with a0=[0x1010], a1=[a0], a2=[a0+4], a3=[a1].
  The `beql` branch at 0xda06b28 targets 0xda06b70, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t7,44(sp)` at 0xda06b2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda06b30 targets 0xda06b54, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06b4c targets 0xda06b6c and is always taken.
  The `beq` branch at 0xda06b64 targets 0xda06b9c and is always taken.
  The return at 0xda06ba8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Recti` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06bb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06bb0-0xda06c98 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xda06be0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06be4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda06bfc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06c14 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda06c60 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda06c04 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06c20 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06c78 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda06bec targets 0xda06c34, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t0,52(sp)` at 0xda06bf0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda06bf4 targets 0xda06c18, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06c10 targets 0xda06c30 and is always taken.
  The `beq` branch at 0xda06c28 targets 0xda06c84 and is always taken.
  The return at 0xda06c90 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectiv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06c98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06c98-0xda06d80 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xda06cc0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06cc4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda06cdc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06cf4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda06d1c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda06d20 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda06d24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda06d28 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda06d48 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda06ce4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06d00 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06d60 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda06ccc targets 0xda06d14, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t0,44(sp)` at 0xda06cd0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda06cd4 targets 0xda06cf8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06cf0 targets 0xda06d10 and is always taken.
  The `beq` branch at 0xda06d08 targets 0xda06d6c and is always taken.
  The return at 0xda06d78 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rects` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06d80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06d80-0xda06e68 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xda06db0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06db4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda06dcc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06de4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda06e30 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda06dd4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06df0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06e48 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda06dbc targets 0xda06e04, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lh t0,54(sp)` at 0xda06dc0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda06dc4 targets 0xda06de8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06de0 targets 0xda06e00 and is always taken.
  The `beq` branch at 0xda06df8 targets 0xda06e54 and is always taken.
  The return at 0xda06e60 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectsv` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda06e68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda06e68-0xda06f50 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xda06e90 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda06e94 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda06eac loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda06ec4 stores 4 bytes to abs 0x1018.
  The `lh` at 0xda06eec loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0xda06ef0 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `lh` at 0xda06ef4 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lh` at 0xda06ef8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `lw` at 0xda06f18 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda06eb4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06ed0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda06f30 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda06e9c targets 0xda06ee4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t0,44(sp)` at 0xda06ea0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda06ea4 targets 0xda06ec8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda06ec0 targets 0xda06ee0 and is always taken.
  The `beq` branch at 0xda06ed8 targets 0xda06f3c and is always taken.
  The return at 0xda06f48 has v0 = one of ret(__glSetError), ret(?).

- `__glim_SelectBuffer` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda07010 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda07010-0xda070c0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xda0702c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda07034 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda0705c loads 4 bytes from [0x1010] +0xc84.
  The `sb` at 0xda07084 stores 1 byte to [0x1010] +0x1324.
  The `sw` at 0xda070a4 stores 4 bytes to [0x1010] +0x1328.
  The `sw` at 0xda070a8 stores 4 bytes to [0x1010] +0x1330.
  The `sw` at 0xda070ac stores 4 bytes to [0x1010] +0x132c.
  The `jalr` at 0xda07048 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda07068 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda07090 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda07038 targets 0xda07058, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda07050 targets 0xda070b0 and is always taken.
  The `bgezl` branch at 0xda07058 targets 0xda0707c, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed); its branch-likely delay slot `lw t7,3204(v0)` at 0xda0705c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda07070 targets 0xda070b0 and is always taken.
  The `bnel` branch at 0xda07080 targets 0xda070a4, is taken when t7(=[[0x1010]+3204]) != at(=0x1c02), and falls through when t7(=[[0x1010]+3204]) == at(=0x1c02); its branch-likely delay slot `sb zero,4900(v0)` at 0xda07084 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda07098 targets 0xda070b0 and is always taken.
  The return at 0xda070b8 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xda07078 to 0xda07078 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda070a0 to 0xda070a0 are not reached by any path from the entry, and their branches are not listed.

- `__glim_PopName` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda071cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda071cc-0xda07268 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda071e8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda071f0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda071f8 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xda07224 loads 4 bytes from [0x1010] +0x1320.
  The `lw` at 0xda07228 loads 4 bytes from [0x1010] +0x131c.
  The `sw` at 0xda07234 stores 4 bytes to [0x1010] +0x1320.
  The `sb` at 0xda07254 stores 1 byte to [0x1010] +0x1318.
  The `jalr` at 0xda07204 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda07240 calls __glSetError [0xd9d1af8] with a0=0x504, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda071f4 targets 0xda07218, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t7,3204(v0)` at 0xda071f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0720c targets 0xda07258 and is always taken.
  The `bnel` branch at 0xda0721c targets 0xda0725c, is taken when t7(=[[0x1010]+3204]) != at(=0x1c02), and falls through when t7(=[[0x1010]+3204]) == at(=0x1c02); its branch-likely delay slot `lw ra,28(sp)` at 0xda07220 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda07230 targets 0xda07254, is taken when t8(=[[0x1010]+4892]) != v1(=[[0x1010]+4896]), and falls through when t8(=[[0x1010]+4892]) == v1(=[[0x1010]+4896]); its branch-likely delay slot `sw t9,4896(v0)` at 0xda07234 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda07248 targets 0xda07258 and is always taken.
  The return at 0xda07260 has v0 = one of [0x1010], ?.
  The instructions from 0xda07214 to 0xda07214 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda07250 to 0xda07250 are not reached by any path from the entry, and their branches are not listed.

- `__glim_PushName` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda07268 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda07268-0xda0731c (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xda07284 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda0728c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda07294 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xda072c0 loads 4 bytes from [0x1010] +0xec8.
  The `lw` at 0xda072c4 loads 4 bytes from [0x1010] +0x131c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1320, including `lw` at 0xda072c8, `lw` at 0xda072fc.
  The `sw` at 0xda072dc stores 4 bytes to [[0x1010]+4896] +0x0.
  The `sb` at 0xda07300 stores 1 byte to [0x1010] +0x1318.
  The `sw` at 0xda07308 stores 4 bytes to [0x1010] +0x1320.
  The `jalr` at 0xda072a0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda072e8 calls __glSetError [0xd9d1af8] with a0=0x503, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda07290 targets 0xda072b4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t7,3204(v0)` at 0xda07294 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda072a8 targets 0xda0730c and is always taken.
  The `bnel` branch at 0xda072b8 targets 0xda07310, is taken when t7(=[[0x1010]+3204]) != at(=0x1c02), and falls through when t7(=[[0x1010]+3204]) == at(=0x1c02); its branch-likely delay slot `lw ra,28(sp)` at 0xda072bc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda072d8 targets 0xda072fc, is taken when v1(=[[0x1010]+4896]) < t1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned), and falls through when v1(=[[0x1010]+4896]) >= t1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned); its branch-likely delay slot `sw a0,0(v1)` at 0xda072dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda072f0 targets 0xda0730c and is always taken.
  The return at 0xda07314 has v0 = one of [0x1010], ?.
  The instructions from 0xda072b0 to 0xda072b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda072f8 to 0xda072f8 are not reached by any path from the entry, and their branches are not listed.

- `__glim_TexGenf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda18728 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda18728-0xda18788 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda18754 calls __glim_TexGenfv [0xda18468] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda1876c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda18744 targets 0xda18764, is taken when a1 != at(=0x2500), and falls through when a1 == at(=0x2500).
  The `beq` branch at 0xda1875c targets 0xda18778 and is always taken.
  The return at 0xda18780 has v0 = one of ret(__glim_TexGenfv), ret(__glSetError).

- `__glim_TexGend` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda18a6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda18a6c-0xda18ad0 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xda18a9c calls __glim_TexGendv [0xda18788] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda18ab4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda18a8c targets 0xda18aac, is taken when a1 != at(=0x2500), and falls through when a1 == at(=0x2500).
  The `beq` branch at 0xda18aa4 targets 0xda18ac0 and is always taken.
  The return at 0xda18ac8 has v0 = one of ret(__glim_TexGendv), ret(__glSetError).

- `__glim_TexGeni` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda18d70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda18d70-0xda18dd0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda18d9c calls __glim_TexGeniv [0xda18ad0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda18db4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda18d8c targets 0xda18dac, is taken when a1 != at(=0x2500), and falls through when a1 == at(=0x2500).
  The `beq` branch at 0xda18da4 targets 0xda18dc0 and is always taken.
  The return at 0xda18dc8 has v0 = one of ret(__glim_TexGeniv), ret(__glSetError).

- `__glim_TexEnvf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda19f60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda19f60-0xda19fc0 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda19f8c calls __glim_TexEnvfv [0xda19da4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda19fa4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda19f7c targets 0xda19f9c, is taken when a1 != at(=0x2200), and falls through when a1 == at(=0x2200).
  The `beq` branch at 0xda19f94 targets 0xda19fb0 and is always taken.
  The return at 0xda19fb8 has v0 = one of ret(__glim_TexEnvfv), ret(__glSetError).

- `__glim_TexEnvi` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda1a0fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda1a0fc-0xda1a15c (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda1a128 calls __glim_TexEnviv [0xda19fc0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda1a140 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda1a118 targets 0xda1a138, is taken when a1 != at(=0x2200), and falls through when a1 == at(=0x2200).
  The `beq` branch at 0xda1a130 targets 0xda1a14c and is always taken.
  The return at 0xda1a154 has v0 = one of ret(__glim_TexEnviv), ret(__glSetError).

- `__glim_Vertex3s` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda38100 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda38100-0xda38188 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda3810c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda38150 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda3815c loads 4 bytes from [[0x1010]+6132] +0x554.
  The `jalr` at 0xda3816c calls (unknown callee) with a0=sp-12, a1=?, a2=?, a3=a3 at entry (arg3).
  The return at 0xda38180 has v0 = ret(?).

- `__glim_Vertex4s` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda38440 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda38440-0xda384e0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda38458 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda38478 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda384a0 loads 4 bytes from [[0x1010]+6132] +0x574.
  The `jalr` at 0xda384c4 calls (unknown callee) with a0=sp-16, a1=?, a2=?, a3=?.
  The return at 0xda384d8 has v0 = ret(?).

- `__glim_LoadIdentity` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3aa0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda3aa0c-0xda3aa9c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda3aa28 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda3aa2c loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2eb0, including `lw` at 0xda3aa38, `lw` at 0xda3aa7c.
  The `lw` at 0xda3aa48 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda3aa60 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xda3aa4c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3aa6c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3aa80 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda3aa34 targets 0xda3aa80, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t9,11952(a0)` at 0xda3aa38 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3aa3c targets 0xda3aa64, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda3aa5c targets 0xda3aa7c and is always taken.
  The `beq` branch at 0xda3aa74 targets 0xda3aa8c and is always taken.
  The return at 0xda3aa94 has v0 = one of ret(__glSetError), ret(?).

- `__glim_PushMatrix` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3b1e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda3b1e0-0xda3b270 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda3b1fc loads 4 bytes from abs 0x1018.
  The `lw` at 0xda3b200 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2ea8, including `lw` at 0xda3b20c, `lw` at 0xda3b250.
  The `lw` at 0xda3b21c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda3b234 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xda3b220 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b240 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b254 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda3b208 targets 0xda3b254, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t9,11944(a0)` at 0xda3b20c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3b210 targets 0xda3b238, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda3b230 targets 0xda3b250 and is always taken.
  The `beq` branch at 0xda3b248 targets 0xda3b260 and is always taken.
  The return at 0xda3b268 has v0 = one of ret(__glSetError), ret(?).

- `__glim_PopMatrix` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3b270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda3b270-0xda3b300 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda3b28c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda3b290 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2eac, including `lw` at 0xda3b29c, `lw` at 0xda3b2e0.
  The `lw` at 0xda3b2ac loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda3b2c4 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xda3b2b0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b2d0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda3b2e4 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beql` branch at 0xda3b298 targets 0xda3b2e4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t9,11948(a0)` at 0xda3b29c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3b2a0 targets 0xda3b2c8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda3b2c0 targets 0xda3b2e0 and is always taken.
  The `beq` branch at 0xda3b2d8 targets 0xda3b2f0 and is always taken.
  The return at 0xda3b2f8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_NewList` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd98e690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd98e690-0xd98e828 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xd98e698 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd98e69c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd98e6e8 loads 4 bytes from [0x1010] +0x137c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x1390, including `sw` at 0xd98e714, `sw` at 0xd98e7d8.
  The `sw` at 0xd98e718 stores 4 bytes to [0x1010] +0x138c.
  The `sw` at 0xd98e71c stores 4 bytes to [0x1010] +0x1388.
  The `sw` at 0xd98e720 stores 4 bytes to [0x1010] +0x1384.
  The `sw` at 0xd98e724 stores 4 bytes to [0x1010] +0x1378.
  The `lw` at 0xd98e72c loads 4 bytes from [0x1010] +0x2e3c.
  The `sw` at 0xd98e734 stores 4 bytes to [0x1010] +0x137c.
  The `sw` at 0xd98e73c stores 4 bytes to [0x1010] +0x17f4.
  The `lw` at 0xd98e748 loads 4 bytes from [0x1010] +0x1358.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1360, including `lw` at 0xd98e774, `lw` at 0xd98e7bc.
  The `lw` at 0xd98e780 loads 4 bytes from [0x1010] +0x1394.
  The `lw` at 0xd98e78c loads 4 bytes from abs 0x1048.
  The `lw` at 0xd98e7d0 loads 4 bytes from [0x1010] +0x1f58.
  The `lw` at 0xd98e7dc loads 4 bytes from [0x1010] +0x318c.
  The `sw` at 0xd98e7ec stores 4 bytes to [0x1010] +0x1394.
  The `jalr` at 0xd98e6d8 calls __glSetError [0xd9cd900] with a0=0x500, a1=0x1300, a2=0x1301, a3=a3 at entry (arg3).
  The `jalr` at 0xd98e6f4 calls __glSetError [0xd9cd900] with a0=0x502, a1=0x1300, a2=0x1301, a3=[[0x1010]+4988].
  The `jalr` at 0xd98e70c calls __glMipsCopyDispatch [0xda77b60] with a0=[0x1010]+6136, a1=?, a2=?, a3=?.
  The `jalr` at 0xd98e740 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?, a4=[0x1010]+9920, a5=a0 at entry (arg0).
  The `jalr` at 0xd98e74c calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd98e7a8 calls __glMipsCopyDispatch [0xda77b60] with a0=?, a1=[0x1010]+9920, a2=?, a3=?.
  The `jalr` at 0xd98e7cc calls __glMipsCopyDispatch [0xda77b60] with a0=[[0x1010]+8024], a1=?, a2=?, a3=?.
  The `jalr` at 0xd98e7e0 calls (unknown callee) with a0=[0x1010], a1=0x1300, a2=0x1301, a3=[[0x1010]+4988], a6=[[0x1010]+4960], a7=[[0x1010]+5012].
  The `jalr` at 0xd98e7f4 calls __glSetError [0xd9cd900] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xd98e808 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd98e818 calls __glSetError [0xd9cd900] with a0=0x501, a1=0x1300, a2=0x1301, a3=[[0x1010]+4988].
  The `beq` branch at 0xd98e6bc targets 0xd98e804, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd98e6c8 targets 0xd98e6e8, is taken when s1(=a1) == a1(=0x1300), and falls through when s1(=a1) != a1(=0x1300).
  The `beq` branch at 0xd98e6d0 targets 0xd98e6e8, is taken when s1(=a1) == a2(=0x1301), and falls through when s1(=a1) != a2(=0x1301).
  The `beq` branch at 0xd98e6e0 targets 0xd98e758 and is always taken.
  The `beq` branch at 0xd98e6ec targets 0xd98e76c, is taken when a3(=[[0x1010]+4988]) == 0, and falls through when a3(=[[0x1010]+4988]) != 0.
  The `beq` branch at 0xd98e6fc targets 0xd98e758 and is always taken.
  The `beq` branch at 0xd98e738 targets 0xd98e748, is taken when t9(=[[0x1010]+11836]) == 0, and falls through when t9(=[[0x1010]+11836]) != 0.
  The `beq` branch at 0xd98e76c targets 0xd98e818, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xd98e778 targets 0xd98e78c, is taken when a6(=[[0x1010]+4960]) == 0, and falls through when a6(=[[0x1010]+4960]) != 0.
  The `beq` branch at 0xd98e784 targets 0xd98e7dc, is taken when a7(=[[0x1010]+5012]) == 0, and falls through when a7(=[[0x1010]+5012]) != 0.
  The `bne` branch at 0xd98e7b4 targets 0xd98e708, is taken when s1(=a1) != t2(=0x1301), and falls through when s1(=a1) == t2(=0x1301).
  The `bne` branch at 0xd98e7c0 targets 0xd98e704, is taken when t3(=[[0x1010]+4960]) != 0, and falls through when t3(=[[0x1010]+4960]) == 0.
  The `beq` branch at 0xd98e7d4 targets 0xd98e718 and is always taken.
  The `bne` branch at 0xd98e7e8 targets 0xd98e78c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xd98e7fc targets 0xd98e758 and is always taken.
  The `beq` branch at 0xd98e810 targets 0xd98e758 and is always taken.
  The `beq` branch at 0xd98e820 targets 0xd98e758 and is always taken.
  The return at 0xd98e764 has v0 = one of ret(__glSetError), ret(?).

- `__gllc_CallList` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd98ea50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd98ea50-0xd98eadc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd98ea5c loads 4 bytes from abs 0x1010.
  The `sh` at 0xd98eaa8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd98eabc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `bgezall` at 0xd98ea80 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd98eab8 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd98eae0, a3=?.
  The `bgezall` at 0xd98eacc calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd98ea70 targets 0xd98eac8, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xd98ea88 targets 0xd98eaa0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xd98eac0 targets 0xd98ea90 and is always taken.
  The `beq` branch at 0xd98ead4 targets 0xd98ea90 and is always taken.
  The return at 0xd98ea98 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidEnum).

- `__gllc_CallLists` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd98eef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd98eef0-0xd98f01c (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0xd98eef8 loads 4 bytes from abs 0x1010.
  The `lbu` at 0xd98ef4c loads 1 byte from table(0xda7e180) +0x0.
  The `sw` at 0xd98efd0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd98efdc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xd98efe8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `bgezall` at 0xd98ef64 calls __gllc_InvalidEnum [0xd98fc20] with a0=[0x1010], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd98ef94 calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=?, a2=-0x4, a3=a3 at entry (arg3).
  The `jalr` at 0xd98efe4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=?, a3=?, a4=0x1, a5=ret(__glDlistAllocOp2).
  The `bgezall` at 0xd98eff8 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd98f020, a3=?.
  The `bgezall` at 0xd98f00c calls __gllc_InvalidValue [0xd98fbc0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xd98ef28 targets 0xd98f008, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd98ef3c targets 0xd98ef74, is taken when a1 < 0x1400 (unsigned), and falls through when a1 >= 0x1400 (unsigned).
  The `beq` branch at 0xd98ef44 targets 0xd98ef74, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bgez` branch at 0xd98ef58 targets 0xd98ef80, is taken when s3(?) >= 0 (signed), and falls through when s3(?) < 0 (signed).
  The `beq` branch at 0xd98ef6c targets 0xd98efa8 and is always taken.
  The `bltz` branch at 0xd98ef74 targets 0xd98ef64, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0xd98ef9c targets 0xd98efc4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xd98f000 targets 0xd98efa8 and is always taken.
  The `beq` branch at 0xd98f014 targets 0xd98efa8 and is always taken.
  The return at 0xd98efbc has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidValue).

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9bb770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9bb770-0xd9bb814 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd9bb778 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9bb7bc loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9bb7c4 loads 4 bytes from [0x1010] +0x17f0.
  The `jalr` at 0xd9bb7c0 calls __glNamesGenRange [0xd9f36e0] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd9bb7dc calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd9bb7f8 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9bb794 targets 0xd9bb7d8, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xd9bb79c targets 0xd9bb7f8, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xd9bb7a4 targets 0xd9bb7bc, is taken when a0 != 0, and falls through when a0 == 0.
  The return at 0xd9bb7b4 has v0 = 0x0.
  The return at 0xd9bb7d0 has v0 = ret(__glNamesGenRange).
  The return at 0xd9bb7f0 has v0 = 0x0.
  The return at 0xd9bb80c has v0 = 0x0.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9bb820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9bb820-0xd9bb88c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd9bb824 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9bb84c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9bb854 loads 4 bytes from [0x1010] +0x17f0.
  The `jalr` at 0xd9bb850 calls __glNamesIsName [0xd9f3e80] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd9bb870 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9bb840 targets 0xd9bb86c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xd9bb864 has v0 = ?.
  The return at 0xd9bb884 has v0 = 0x0.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9bba30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9bba30-0xd9bbab0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd9bba38 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9bba70 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9bba78 loads 4 bytes from [0x1010] +0x17f0.
  The `jalr` at 0xd9bba74 calls __glNamesDeleteRange [0xd9f3a50] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9bba90 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xd9bbaa0 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0xd9bba54 targets 0xd9bba8c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xd9bba5c targets 0xd9bbaa0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xd9bba64 targets 0xd9bba80, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xd9bba98 targets 0xd9bba80 and is always taken.
  The `beq` branch at 0xd9bbaa8 targets 0xd9bba80 and is always taken.
  The return at 0xd9bba84 has v0 = one of 0x1, ret(__glNamesDeleteRange), ret(__glSetError).

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9c37a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9c37a0-0xd9c3858 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd9c37a0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c37ac loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9c37e0 loads 4 bytes from [0x1010] +0xdd8.
  The `swc1` at 0xd9c381c stores 4 bytes to [0x1010] +0x73c.
  The `swc1` at 0xd9c3820 stores 4 bytes to [0x1010] +0x738.
  The `swc1` at 0xd9c3824 stores 4 bytes to [0x1010] +0x734.
  The `swc1` at 0xd9c3830 stores 4 bytes to [0x1010] +0x730.
  The `jalr` at 0xd9c3848 calls __glSetError [0xd9cd900] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9c37bc targets 0xd9c3840, is taken when v0(=[0x1018]) == v1(=0x1), and falls through when v0(=[0x1018]) != v1(=0x1).
  The `beq` branch at 0xd9c3850 targets 0xd9c3834 and is always taken.
  The return at 0xd9c382c has v0 = [0x1018].
  The return at 0xd9c3838 has v0 = ret(__glSetError).

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9c3860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9c3860-0xd9c38d0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9c3860 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c386c loads 4 bytes from abs 0x1010.
  The `swc1` at 0xd9c3884 stores 4 bytes to [0x1010] +0x1f8.
  The `swc1` at 0xd9c3888 stores 4 bytes to [0x1010] +0x1f4.
  The `sw` at 0xd9c3890 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9c3894 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9c38a8 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9c38c0 calls __glSetError [0xd9cd900] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9c387c targets 0xd9c38b8, is taken when v0(=[0x1018]) == v1(=0x1), and falls through when v0(=[0x1018]) != v1(=0x1).
  The `beq` branch at 0xd9c38c8 targets 0xd9c38ac and is always taken.
  The return at 0xd9c38a4 has v0 = ([[0x1010]+11812] | 0x4).
  The return at 0xd9c38b0 has v0 = ret(__glSetError).

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb5a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cb5a0-0xd9cb610 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb5ac loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb5e8 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb5e4 calls __glColorTableParameterv [0xd9cb410] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb600 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb5c8 targets 0xd9cb5fc, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb608 targets 0xd9cb5f0 and is always taken.
  The return at 0xd9cb5f4 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cb610-0xd9cb680 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb61c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb658 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb654 calls __glColorTableParameterv [0xd9cb410] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb670 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb638 targets 0xd9cb66c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb678 targets 0xd9cb660 and is always taken.
  The return at 0xd9cb664 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cb800-0xd9cb870 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb80c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb848 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb844 calls __glGetColorTableParameterv [0xd9cb680] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb860 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb828 targets 0xd9cb85c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb868 targets 0xd9cb850 and is always taken.
  The return at 0xd9cb854 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cb870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cb870-0xd9cb8e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9cb87c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cb8b8 loads 4 bytes from abs 0x1010.
  The `bgezall` at 0xd9cb8b4 calls __glGetColorTableParameterv [0xd9cb680] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9cb8d0 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0xd9cb898 targets 0xd9cb8cc, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9cb8d8 targets 0xd9cb8c0 and is always taken.
  The return at 0xd9cb8c4 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cf320-0xd9cf378 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0xd9cf348 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9cf368 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0xd9cf33c targets 0xd9cf360, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf370 targets 0xd9cf354 and is always taken.
  The return at 0xd9cf358 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cf380-0xd9cf3e0 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0xd9cf3b4 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0xd9cf3d0 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0xd9cf398 targets 0xd9cf3cc, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf3a4 targets 0xd9cf3cc, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0xd9cf3ac targets 0xd9cf3cc, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0xd9cf3d8 targets 0xd9cf3c0 and is always taken.
  The return at 0xd9cf3c4 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf3e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cf3e0-0xd9cf438 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0xd9cf408 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9cf428 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0xd9cf3fc targets 0xd9cf420, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf430 targets 0xd9cf414 and is always taken.
  The return at 0xd9cf418 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf440 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cf440-0xd9cf4a0 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0xd9cf474 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0xd9cf490 calls __GLconvolutionParameter [0xd9cf100] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0xd9cf458 targets 0xd9cf48c, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9cf464 targets 0xd9cf48c, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0xd9cf46c targets 0xd9cf48c, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0xd9cf498 targets 0xd9cf480 and is always taken.
  The return at 0xd9cf484 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cf770-0xd9cf7a4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9cf78c calls __GLgetConvolutionParameter [0xd9cf4a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9cf79c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cf7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cf7b0-0xd9cf7e4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9cf7cc calls __GLgetConvolutionParameter [0xd9cf4a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9cf7dc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_Map1d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d1e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d1e50-0xd9d1f30 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd9d1e5c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d1e70 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d1ebc loads 4 bytes from ret(__glSetUpMap1) +0x0.
  The `lw` at 0xd9d1ef8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84.
  The `bgezall` at 0xd9d1eac calls __glSetUpMap1 [0xd9d2e30] with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d1ed0 calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d1ef4 calls __glFillMap1d [0xd9d2ad0] with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=[([0x1010] + (a0 << 0x2))+14980].
  The `bgezall` at 0xd9d1f20 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d1e90 targets 0xd9d1f1c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d1eb4 targets 0xd9d1efc, is taken when v0(=ret(__glSetUpMap1)) == 0, and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d1ec4 targets 0xd9d1ee0, is taken when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed), and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The `beq` branch at 0xd9d1ed8 targets 0xd9d1f00 and is always taken.
  The `beq` branch at 0xd9d1f28 targets 0xd9d1f00 and is always taken.
  The return at 0xd9d1f14 has v0 = one of ret(__glSetError), ?.

- `__glim_Map1f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d1f30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d1f30-0xd9d2010 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xd9d1f3c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d1f50 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d1f9c loads 4 bytes from ret(__glSetUpMap1) +0x0.
  The `lw` at 0xd9d1fd8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84.
  The `bgezall` at 0xd9d1f8c calls __glSetUpMap1 [0xd9d2e30] with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3); fp f15=f13, f16=f14.
  The `bgezall` at 0xd9d1fac calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d1fd4 calls __glFillMap1f [0xd9d29d0] with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=[([0x1010] + (a0 << 0x2))+14980].
  The `bgezall` at 0xd9d2000 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d1f70 targets 0xd9d1ffc, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d1f94 targets 0xd9d1fdc, is taken when v0(=ret(__glSetUpMap1)) == 0, and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0xd9d1fa4 targets 0xd9d1fbc, is taken when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed), and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The `beq` branch at 0xd9d1fb4 targets 0xd9d1fe0 and is always taken.
  The `beq` branch at 0xd9d2008 targets 0xd9d1fe0 and is always taken.
  The return at 0xd9d1ff4 has v0 = one of ret(__glSetError), ?.

- `__glim_Map2d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2010 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d2010-0xd9d212c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0xd9d201c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2030 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2090 loads 4 bytes from ret(__glSetUpMap2) +0x0.
  The `lw` at 0xd9d20f8 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28.
  The `bgezall` at 0xd9d2080 calls __glSetUpMap2 [0xd9d2f50] with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=?.
  The `bgezall` at 0xd9d20ac calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d20f4 calls __glFillMap2d [0xd9d2cf0] with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=?, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=[([0x1010] + (a0 << 0x2))+14888].
  The `bgezall` at 0xd9d2108 calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=a7 at entry (arg7), a3=?.
  The `bgezall` at 0xd9d211c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2058 targets 0xd9d2118, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d2088 targets 0xd9d20b4, is taken when v0(=ret(__glSetUpMap2)) == 0, and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0xd9d2098 targets 0xd9d2104, is taken when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed), and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d20a4 targets 0xd9d20d4, is taken when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed), and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d20fc targets 0xd9d20b8 and is always taken.
  The `beq` branch at 0xd9d2110 targets 0xd9d20b8 and is always taken.
  The `beq` branch at 0xd9d2124 targets 0xd9d20b8 and is always taken.
  The return at 0xd9d20cc has v0 = one of ?, ret(__glFillMap2d), ret(__glSetError).

- `__glim_Map2f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d2130-0xd9d2248 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xd9d213c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2150 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d21ac loads 4 bytes from ret(__glSetUpMap2) +0x0.
  The `lw` at 0xd9d2218 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28.
  The `bgezall` at 0xd9d219c calls __glSetUpMap2 [0xd9d2f50] with a0=[0x1010], a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=?; fp f16=f13, f17=f14, f18=f17, f19=f18.
  The `bgezall` at 0xd9d21cc calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d2214 calls __glFillMap2f [0xd9d2bb0] with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=?, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=[([0x1010] + (a0 << 0x2))+14888].
  The `bgezall` at 0xd9d2224 calls __glSetError [0xd9cd900] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d2238 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f19=f18.
  The `beq` branch at 0xd9d2178 targets 0xd9d2234, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d21a4 targets 0xd9d21d4, is taken when v0(=ret(__glSetUpMap2)) == 0, and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0xd9d21b4 targets 0xd9d2224, is taken when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed), and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d21c4 targets 0xd9d21f4, is taken when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed), and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0xd9d221c targets 0xd9d21d8 and is always taken.
  The `beq` branch at 0xd9d222c targets 0xd9d21d8 and is always taken.
  The `beq` branch at 0xd9d2240 targets 0xd9d21d8 and is always taken.
  The return at 0xd9d21ec has v0 = one of ?, ret(__glFillMap2f), ret(__glSetError).

- `__glim_MapGrid1d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d2460-0xd9d24e4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xd9d2464 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2468 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9d2494 stores 4 bytes to [0x1010] +0x798.
  The `swc1` at 0xd9d24a4 stores 4 bytes to [0x1010] +0x790.
  The `swc1` at 0xd9d24b0 stores 4 bytes to [0x1010] +0x78c.
  The `bgezall` at 0xd9d24c0 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d24d4 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2484 targets 0xd9d24d0, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d248c targets 0xd9d24c0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xd9d24c8 targets 0xd9d24b4 and is always taken.
  The `beq` branch at 0xd9d24dc targets 0xd9d24b4 and is always taken.
  The return at 0xd9d24ac has v0 = 0x1.
  The return at 0xd9d24b8 has v0 = ret(__glSetError).

- `__glim_MapGrid1f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d24f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d24f0-0xd9d256c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd9d24f4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d24f8 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9d2524 stores 4 bytes to [0x1010] +0x798.
  The `swc1` at 0xd9d2528 stores 4 bytes to [0x1010] +0x790.
  The `swc1` at 0xd9d252c stores 4 bytes to [0x1010] +0x78c.
  The `bgezall` at 0xd9d2548 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d255c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2514 targets 0xd9d2558, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d251c targets 0xd9d2548, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xd9d2550 targets 0xd9d253c and is always taken.
  The `beq` branch at 0xd9d2564 targets 0xd9d253c and is always taken.
  The return at 0xd9d2534 has v0 = 0x1.
  The return at 0xd9d2540 has v0 = ret(__glSetError).

- `__glim_MapGrid2d` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d2570-0xd9d2614 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd9d2574 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2578 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9d25ac stores 4 bytes to [0x1010] +0x7b8.
  The `sw` at 0xd9d25b0 stores 4 bytes to [0x1010] +0x7a8.
  The `swc1` at 0xd9d25c0 stores 4 bytes to [0x1010] +0x7b0.
  The `swc1` at 0xd9d25c8 stores 4 bytes to [0x1010] +0x7ac.
  The `swc1` at 0xd9d25d0 stores 4 bytes to [0x1010] +0x7a0.
  The `swc1` at 0xd9d25dc stores 4 bytes to [0x1010] +0x79c.
  The `bgezall` at 0xd9d25f0 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d2604 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2594 targets 0xd9d2600, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d259c targets 0xd9d25f0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0xd9d25a4 targets 0xd9d25f0, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0xd9d25f8 targets 0xd9d25e0 and is always taken.
  The `beq` branch at 0xd9d260c targets 0xd9d25e0 and is always taken.
  The return at 0xd9d25d8 has v0 = 0x1.
  The return at 0xd9d25e4 has v0 = ret(__glSetError).
  The instructions from 0xd9d25ec to 0xd9d25ec are not reached by any path from the entry, and their branches are not listed.

- `__glim_MapGrid2f` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2620 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d2620-0xd9d26b4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd9d2624 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2628 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9d265c stores 4 bytes to [0x1010] +0x7b8.
  The `swc1` at 0xd9d2660 stores 4 bytes to [0x1010] +0x7b0.
  The `swc1` at 0xd9d2664 stores 4 bytes to [0x1010] +0x7ac.
  The `sw` at 0xd9d2668 stores 4 bytes to [0x1010] +0x7a8.
  The `swc1` at 0xd9d266c stores 4 bytes to [0x1010] +0x7a0.
  The `swc1` at 0xd9d2670 stores 4 bytes to [0x1010] +0x79c.
  The `bgezall` at 0xd9d2690 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d26a4 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2644 targets 0xd9d26a0, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xd9d264c targets 0xd9d2690, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0xd9d2654 targets 0xd9d2690, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0xd9d2698 targets 0xd9d2680 and is always taken.
  The `beq` branch at 0xd9d26ac targets 0xd9d2680 and is always taken.
  The return at 0xd9d2678 has v0 = 0x1.
  The return at 0xd9d2684 has v0 = ret(__glSetError).
  The instructions from 0xd9d268c to 0xd9d268c are not reached by any path from the entry, and their branches are not listed.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d26c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d26c0-0xd9d2790 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xd9d26c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d26d0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2720 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9d2730 stores 4 bytes to abs 0x1018.
  The `bgezall` at 0xd9d2700 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1018].
  The `jalr` at 0xd9d2724 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1018].
  The `bgezall` at 0xd9d2748 calls __glSetError [0xd9cd900] with a0=0x500, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d2764 calls __glEvalMesh1Point [0xd9d4be0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `bgezall` at 0xd9d2780 calls __glEvalMesh1Line [0xd9d4a10] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xd9d26e8 targets 0xd9d2734, is taken when a4(=[0x1018]) == 0, and falls through when a4(=[0x1018]) != 0.
  The `beq` branch at 0xd9d26f4 targets 0xd9d2718, is taken when a4(=[0x1018]) == v0(=0x2), and falls through when a4(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xd9d2738 targets 0xd9d2774, is taken when a0 == ra(=0x1b01), and falls through when a0 != ra(=0x1b01).
  The `beq` branch at 0xd9d2740 targets 0xd9d2758, is taken when a0 == at(=0x1b00), and falls through when a0 != at(=0x1b00).
  The `beq` branch at 0xd9d2750 targets 0xd9d270c and is always taken.
  The `beq` branch at 0xd9d276c targets 0xd9d270c and is always taken.
  The `beq` branch at 0xd9d2788 targets 0xd9d270c and is always taken.
  The return at 0xd9d2710 has v0 = one of ret(__glSetError), ret(__glEvalMesh1Point), ret(__glEvalMesh1Line).

- `__glim_EvalMesh2` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d2800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d2800-0xd9d2918 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xd9d2800 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d281c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2870 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9d287c stores 4 bytes to abs 0x1018.
  The `bgezall` at 0xd9d2850 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1018].
  The `jalr` at 0xd9d2874 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1018].
  The `bgezall` at 0xd9d28a4 calls __glSetError [0xd9cd900] with a0=0x500, a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9d28c4 calls __glEvalMesh2Point [0xd9d52d0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0xd9d28e8 calls __glEvalMesh2Fill [0xd9d4f50] with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0xd9d2908 calls __glEvalMesh2Line [0xd9d5550] with a0=[0x1010], a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2838 targets 0xd9d2880, is taken when a6(=[0x1018]) == 0, and falls through when a6(=[0x1018]) != 0.
  The `beq` branch at 0xd9d2844 targets 0xd9d286c, is taken when a6(=[0x1018]) == v0(=0x2), and falls through when a6(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xd9d2888 targets 0xd9d28d4, is taken when s0(=a0) == ra(=0x1b02), and falls through when s0(=a0) != ra(=0x1b02).
  The `beq` branch at 0xd9d2890 targets 0xd9d28f8, is taken when s0(=a0) == at(=0x1b01), and falls through when s0(=a0) != at(=0x1b01).
  The `beq` branch at 0xd9d2898 targets 0xd9d28b4, is taken when s0(=a0) == v0(=0x1b00), and falls through when s0(=a0) != v0(=0x1b00).
  The `beq` branch at 0xd9d28ac targets 0xd9d285c and is always taken.
  The `beq` branch at 0xd9d28cc targets 0xd9d285c and is always taken.
  The `beq` branch at 0xd9d28f0 targets 0xd9d285c and is always taken.
  The `beq` branch at 0xd9d2910 targets 0xd9d285c and is always taken.
  The return at 0xd9d2864 has v0 = one of ret(__glSetError), ret(__glEvalMesh2Point), ret(__glEvalMesh2Fill), ret(__glEvalMesh2Line).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d5d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d5d10-0xd9d5dd4 (196 bytes).
  It occupies 196 bytes.
  The `ldc1` at 0xd9d5d78 loads 8 bytes from a3 (arg3 at entry) +0x0.
  The `sdc1` at 0xd9d5d88 stores 8 bytes to ret(NurbsKnots1Common) +0x0.
  2 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd9d5da0, `ldc1` at 0xd9d5db0.
  2 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9d5da8, `sdc1` at 0xd9d5dc0.
  The `bgezall` at 0xd9d5d44 calls NurbsKnots1Common [0xd9d5b10] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d5d58 targets 0xd9d5dc4, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9d5d60 targets 0xd9d5dc4, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9d5d70 targets 0xd9d5d8c, is taken when (s0(=a2) & 0x1) == 0, and falls through when (s0(=a2) & 0x1) != 0.
  The `beq` branch at 0xd9d5d8c targets 0xd9d5dc4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xd9d5dbc targets 0xd9d5da0, is taken when s0(=a2) != a4(?), and falls through when s0(=a2) == a4(?).
  The return at 0xd9d5dcc has v0 = ret(NurbsKnots1Common).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d5de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d5de0-0xd9d5ecc (236 bytes).
  It occupies 236 bytes.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9d5e48, `lwc1` at 0xd9d5e70, `lwc1` at 0xd9d5e80.
  5 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9d5e64, `sdc1` at 0xd9d5e7c, `sdc1` at 0xd9d5e8c.
  The `bgezall` at 0xd9d5e14 calls NurbsKnots1Common [0xd9d5b10] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d5e24 targets 0xd9d5ebc, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9d5e2c targets 0xd9d5ebc, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9d5e40 targets 0xd9d5e68, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd9d5e60 targets 0xd9d5e48, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xd9d5e68 targets 0xd9d5ebc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xd9d5eb4 targets 0xd9d5e70, is taken when s0(=a2) != a3(?), and falls through when s0(=a2) == a3(?).
  The return at 0xd9d5ec4 has v0 = ret(NurbsKnots1Common).

- `__glim_Finish` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d7160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d7160-0xd9d71b8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xd9d7164 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d7168 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d7188 loads 4 bytes from [0x1010] +0x2e34.
  The `jalr` at 0xd9d718c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d71a8 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d7180 targets 0xd9d71a4, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d71b0 targets 0xd9d7198 and is always taken.
  The return at 0xd9d719c has v0 = one of ret(?), ret(__glSetError).

- `__glim_GetMaterialfv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d9aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d9aa0-0xd9d9c34 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xd9d9aa8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d9aac loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9d9b4c loads 4 bytes from ([0x1010] + one of 0x5b0, 0x600) +0x0.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xd9d9b50, `swc1` at 0xd9d9b84, `swc1` at 0xd9d9bb0.
  The `lwc1` at 0xd9d9b54 loads 4 bytes from ([0x1010] + one of 0x5b4, 0x604) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xd9d9b58, `swc1` at 0xd9d9b90, `swc1` at 0xd9d9bc0.
  The `lwc1` at 0xd9d9b5c loads 4 bytes from ([0x1010] + one of 0x5b8, 0x608) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xd9d9b60, `swc1` at 0xd9d9ba4, `swc1` at 0xd9d9bcc.
  The `lwc1` at 0xd9d9b64 loads 4 bytes from ([0x1010] + one of 0x5bc, 0x60c) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0xd9d9b74, `swc1` at 0xd9d9be0, `swc1` at 0xd9d9c04.
  The `lwc1` at 0xd9d9b80 loads 4 bytes from ([0x1010] + one of 0x5d4, 0x624) +0x0.
  The `lwc1` at 0xd9d9b88 loads 4 bytes from ([0x1010] + one of 0x5dc, 0x62c) +0x0.
  The `lwc1` at 0xd9d9b94 loads 4 bytes from ([0x1010] + one of 0x5d8, 0x628) +0x0.
  The `lwc1` at 0xd9d9ba8 loads 4 bytes from ([0x1010] + one of 0x5d0, 0x620) +0x0.
  The `lwc1` at 0xd9d9bb4 loads 4 bytes from ([0x1010] + one of 0x590, 0x5e0) +0x0.
  The `lwc1` at 0xd9d9bbc loads 4 bytes from ([0x1010] + one of 0x594, 0x5e4) +0x0.
  The `lwc1` at 0xd9d9bc4 loads 4 bytes from ([0x1010] + one of 0x598, 0x5e8) +0x0.
  The `lwc1` at 0xd9d9bd0 loads 4 bytes from ([0x1010] + one of 0x59c, 0x5ec) +0x0.
  The `lwc1` at 0xd9d9be4 loads 4 bytes from ([0x1010] + one of 0x5a0, 0x5f0) +0x0.
  The `lwc1` at 0xd9d9bec loads 4 bytes from ([0x1010] + one of 0x5a4, 0x5f4) +0x0.
  The `lwc1` at 0xd9d9bf4 loads 4 bytes from ([0x1010] + one of 0x5a8, 0x5f8) +0x0.
  The `lwc1` at 0xd9d9bfc loads 4 bytes from ([0x1010] + one of 0x5ac, 0x5fc) +0x0.
  The `jalr` at 0xd9d9aec calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1010], a5=a2 at entry (arg2), a6=[0x1010]+1504.
  The `jalr` at 0xd9d9b34 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1010], a5=a2 at entry (arg2), a6=([0x1010] + one of 0x590, 0x5e0), a7=0x1603.
  The `jalr` at 0xd9d9c0c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1010], a5=a2 at entry (arg2).
  The `jalr` at 0xd9d9c24 calls __glUnScaleColorf [0xd9e3000] with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=0x405, a4=[0x1010], a5=a2 at entry (arg2), a6=([0x1010] + one of 0x590, 0x5e0), a7=0x1603.
  The `beq` branch at 0xd9d9ac8 targets 0xd9d9c08, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d9ad8 targets 0xd9d9b78, is taken when a0 == a2(=0x404), and falls through when a0 != a2(=0x404).
  The `beq` branch at 0xd9d9ae0 targets 0xd9d9afc, is taken when a0 == a3(=0x405), and falls through when a0 != a3(=0x405).
  The `beq` branch at 0xd9d9af4 targets 0xd9d9b40 and is always taken.
  The `beq` branch at 0xd9d9b00 targets 0xd9d9b80, is taken when a1 == a7(=0x1603), and falls through when a1 != a7(=0x1603).
  The `beq` branch at 0xd9d9b08 targets 0xd9d9ba8, is taken when a1 == t0(=0x1601), and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0xd9d9b10 targets 0xd9d9c1c, is taken when a1 == t1(=0x1600), and falls through when a1 != t1(=0x1600).
  The `beq` branch at 0xd9d9b1c targets 0xd9d9bb4, is taken when a1 == t2(=0x1200), and falls through when a1 != t2(=0x1200).
  The `beq` branch at 0xd9d9b24 targets 0xd9d9be4, is taken when a1 == t3(=0x1201), and falls through when a1 != t3(=0x1201).
  The `beq` branch at 0xd9d9b2c targets 0xd9d9b4c, is taken when a1 == t8(=0x1202), and falls through when a1 != t8(=0x1202).
  The `beq` branch at 0xd9d9b78 targets 0xd9d9b00 and is always taken.
  The `beq` branch at 0xd9d9bac targets 0xd9d9b3c and is always taken.
  The `beq` branch at 0xd9d9c00 targets 0xd9d9b3c and is always taken.
  The `beq` branch at 0xd9d9c14 targets 0xd9d9b40 and is always taken.
  The `beq` branch at 0xd9d9c2c targets 0xd9d9b40 and is always taken.
  The return at 0xd9d9b44 has v0 = one of ret(__glSetError), ?, ret(__glUnScaleColorf).
  The return at 0xd9d9b70 has v0 = 0x1.
  The return at 0xd9d9ba0 has v0 = 0x1.
  The return at 0xd9d9bdc has v0 = 0x1.

- `__glim_GetMaterialiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d9c40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d9c40-0xd9d9fd0 (912 bytes).
  It occupies 912 bytes.
  The `lw` at 0xd9d9c48 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d9c4c loads 4 bytes from abs 0x1010.
  12 such `lwc1` accesses load 4 bytes from [0x1010] +0xdec, including `lwc1` at 0xd9d9d08, `lwc1` at 0xd9d9d34, `lwc1` at 0xd9d9d60.
  The `lwc1` at 0xd9d9d0c loads 4 bytes from ([0x1010] + one of 0x5b0, 0x600) +0x0.
  12 such `lwc1` accesses load 4 bytes from [0x1010] +0xdd4, including `lwc1` at 0xd9d9d10, `lwc1` at 0xd9d9d40, `lwc1` at 0xd9d9d6c.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xd9d9d30, `swc1` at 0xd9d9e78, `swc1` at 0xd9d9f38.
  The `lwc1` at 0xd9d9d38 loads 4 bytes from ([0x1010] + one of 0x5b4, 0x604) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xd9d9d5c, `swc1` at 0xd9d9ea4, `swc1` at 0xd9d9f64.
  The `lwc1` at 0xd9d9d64 loads 4 bytes from ([0x1010] + one of 0x5b8, 0x608) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xd9d9d88, `swc1` at 0xd9d9ed0, `swc1` at 0xd9d9f90.
  The `lwc1` at 0xd9d9d90 loads 4 bytes from ([0x1010] + one of 0x5bc, 0x60c) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0xd9d9dc4, `swc1` at 0xd9d9f0c, `swc1` at 0xd9d9fcc.
  The `lwc1` at 0xd9d9e54 loads 4 bytes from ([0x1010] + one of 0x590, 0x5e0) +0x0.
  The `lwc1` at 0xd9d9e80 loads 4 bytes from ([0x1010] + one of 0x594, 0x5e4) +0x0.
  The `lwc1` at 0xd9d9eac loads 4 bytes from ([0x1010] + one of 0x598, 0x5e8) +0x0.
  The `lwc1` at 0xd9d9ed8 loads 4 bytes from ([0x1010] + one of 0x59c, 0x5ec) +0x0.
  The `lwc1` at 0xd9d9f14 loads 4 bytes from ([0x1010] + one of 0x5a0, 0x5f0) +0x0.
  The `lwc1` at 0xd9d9f40 loads 4 bytes from ([0x1010] + one of 0x5a4, 0x5f4) +0x0.
  The `lwc1` at 0xd9d9f6c loads 4 bytes from ([0x1010] + one of 0x5a8, 0x5f8) +0x0.
  The `lwc1` at 0xd9d9f98 loads 4 bytes from ([0x1010] + one of 0x5ac, 0x5fc) +0x0.
  The `jalr` at 0xd9d9c8c calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a4=0x405, a5=[0x1010]+1504.
  The `jalr` at 0xd9d9ce0 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0xd9d9d1c calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9d48 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9d74 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9da0 calls floorf with a0=([0x1010] + one of 0x590, 0x5e0), a1=a2 at entry (arg2), a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9dcc calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9d9df4 calls __glConvertResult [0xd9daea0] with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d4, 0x624), a3=0x3, a4=a2 at entry (arg2), a5=0x3, a6=0x1603.
  The `bgezall` at 0xd9d9e20 calls __glConvertResult [0xd9daea0] with a0=[0x1010], a1=0x0, a2=([0x1010] + one of 0x5d0, 0x620), a3=0x3, a4=a2 at entry (arg2), a5=0x1, a6=0x1603, a7=0x1601.
  The `jalr` at 0xd9d9e3c calls __glUnScaleColori [0xd9e3050] with a0=[0x1010], a1=a2 at entry (arg2), a2=([0x1010] + one of 0x5c0, 0x610), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0xd9d9e64 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=([0x1010] + one of 0x590, 0x5e0), a6=0x1603, a7=0x1601; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9e90 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=([0x1010] + one of 0x590, 0x5e0), a5=a2 at entry (arg2); fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9ebc calls floorf with a0=?, a1=?, a2=?, a3=?, a6=([0x1010] + one of 0x590, 0x5e0), a7=a2 at entry (arg2); fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9ee8 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9f24 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9f50 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9f7c calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `jalr` at 0xd9d9fa8 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1010]+3564].
  The `beq` branch at 0xd9d9c64 targets 0xd9d9dc8, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d9c74 targets 0xd9d9cfc, is taken when a0 == a3(=0x404), and falls through when a0 != a3(=0x404).
  The `beq` branch at 0xd9d9c80 targets 0xd9d9c9c, is taken when a0 == a4(=0x405), and falls through when a0 != a4(=0x405).
  The `beq` branch at 0xd9d9c94 targets 0xd9d9cec and is always taken.
  The `beq` branch at 0xd9d9ca4 targets 0xd9d9ddc, is taken when a1 == a6(=0x1603), and falls through when a1 != a6(=0x1603).
  The `beq` branch at 0xd9d9cb0 targets 0xd9d9e04, is taken when a1 == a7(=0x1601), and falls through when a1 != a7(=0x1601).
  The `beq` branch at 0xd9d9cb8 targets 0xd9d9e30, is taken when a1 == t0(=0x1600), and falls through when a1 != t0(=0x1600).
  The `beq` branch at 0xd9d9cc4 targets 0xd9d9e4c, is taken when a1 == t1(=0x1200), and falls through when a1 != t1(=0x1200).
  The `beq` branch at 0xd9d9ccc targets 0xd9d9f10, is taken when a1 == t2(=0x1201), and falls through when a1 != t2(=0x1201).
  The `beq` branch at 0xd9d9cd8 targets 0xd9d9d04, is taken when a1 == t3(=0x1202), and falls through when a1 != t3(=0x1202).
  The `beq` branch at 0xd9d9cfc targets 0xd9d9ca0 and is always taken.
  The `beq` branch at 0xd9d9dd4 targets 0xd9d9cec and is always taken.
  The `beq` branch at 0xd9d9dfc targets 0xd9d9cec and is always taken.
  The `beq` branch at 0xd9d9e28 targets 0xd9d9cec and is always taken.
  The `beq` branch at 0xd9d9e44 targets 0xd9d9cec and is always taken.
  The return at 0xd9d9cf4 has v0 = one of ret(__glSetError), ret(__glConvertResult), ret(__glUnScaleColori).
  The return at 0xd9d9dc0 has v0 = ret(floorf).
  The return at 0xd9d9f08 has v0 = ret(floorf).
  The return at 0xd9d9fc8 has v0 = ret(floorf).

- `__glim_GetMapiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9da660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9da660-0xd9da8cc (620 bytes).
  It occupies 620 bytes.
  The `lw` at 0xd9da668 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9da66c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9da6ac loads 4 bytes from table(0xda80e08) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0xd6f8) +0x0, including `lw` at 0xd9da760, `lw` at 0xd9da7c8.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xd9da76c, `sw` at 0xd9da784.
  2 such `lw` accesses load 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b420, including `lw` at 0xd9da780, `lw` at 0xd9da814.
  2 such `lw` accesses load 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b41c, including `lw` at 0xd9da788, `lw` at 0xd9da810.
  The `sw` at 0xd9da794 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lw` at 0xd9da7c4 loads 4 bytes from table(-0xd6fc) +0x0.
  The `lw` at 0xd9da7e4 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a84.
  The `lw` at 0xd9da81c loads 4 bytes from ([0x1010] + (((a0 << 0x2) + a0) << 0x3)) -0x1b424.
  The `lw` at 0xd9da844 loads 4 bytes from ([0x1010] + (a0 << 0x2)) +0x3a28.
  The `jalr` at 0xd9da6bc calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0xda80e08), a7=a0 at entry (arg0).
  The `jalr` at 0xd9da704 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0xda80e08), a6=entry(0xda80e08), a7=a0 at entry (arg0).
  The `jalr` at 0xd9da73c calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0xda80e08), a6=entry(0xda80e08), a7=a0 at entry (arg0).
  The `jalr` at 0xd9da79c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da7e8 calls __glConvertResult [0xd9daea0] with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0 << 0x2))+14980], a3=0x3, a4=a2 at entry (arg2), a6=0xffffffffffff0000, a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da848 calls __glConvertResult [0xd9daea0] with a0=[0x1010], a1=0x0, a2=[([0x1010] + (a0 << 0x2))+14888], a3=0x3, a4=a2 at entry (arg2), a6=[([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111644], a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da880 calls __glConvertResult [0xd9daea0] with a0=[0x1010], a1=0x0, a2=table(-0xd6f4), a3=0x3, a4=a2 at entry (arg2), a5=0x2, a6=-0xd6f4, a7=a0 at entry (arg0).
  The `bgezall` at 0xd9da8bc calls __glConvertResult [0xd9daea0] with a0=[0x1010], a1=0x0, a2=([0x1010] + (((a0 << 0x2) + a0) << 0x3))-111640, a3=0x3, a4=a2 at entry (arg2), a5=0x4, a6=0xfffffffffffe4be8, a7=a0 at entry (arg0).
  The `beq` branch at 0xd9da688 targets 0xd9da798, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9da6a4 targets 0xd9da6b8, is taken when a6(=a0-3472) >= 0x29 (unsigned), and falls through when a6(=a0-3472) < 0x29 (unsigned).
  The `beq` branch at 0xd9da6e8 targets 0xd9da7ac, is taken when a1 == t1(=0xa00), and falls through when a1 != t1(=0xa00).
  The `beq` branch at 0xd9da6f4 targets 0xd9da858, is taken when a1 == t2(=0xa02), and falls through when a1 != t2(=0xa02).
  The `beq` branch at 0xd9da6fc targets 0xd9da74c, is taken when a1 == t3(=0xa01), and falls through when a1 != t3(=0xa01).
  The `beq` branch at 0xd9da70c targets 0xd9da6c8 and is always taken.
  The `beq` branch at 0xd9da718 targets 0xd9da7f8, is taken when a1 == t8(=0xa00), and falls through when a1 != t8(=0xa00).
  The `beq` branch at 0xd9da728 targets 0xd9da890, is taken when a1 == t9(=0xa02), and falls through when a1 != t9(=0xa02).
  The `beq` branch at 0xd9da730 targets 0xd9da770, is taken when a1 == ra(=0xa01), and falls through when a1 != ra(=0xa01).
  The `beq` branch at 0xd9da744 targets 0xd9da6c8 and is always taken.
  The `beq` branch at 0xd9da7a4 targets 0xd9da6c8 and is always taken.
  The `beq` branch at 0xd9da7f0 targets 0xd9da6c8 and is always taken.
  The `beq` branch at 0xd9da850 targets 0xd9da6c8 and is always taken.
  The `beq` branch at 0xd9da888 targets 0xd9da6c8 and is always taken.
  The `beq` branch at 0xd9da8c4 targets 0xd9da6c8 and is always taken.
  The return at 0xd9da6cc has v0 = one of ret(__glSetError), ret(__glConvertResult).
  The return at 0xd9da768 has v0 = ?.
  The return at 0xd9da790 has v0 = 0x1.
  The indirect jump at 0xd9da6b0 uses the jump table at 0xda80e08 with targets 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6d4, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da6b8, 0xd9da714, 0xd9da714, 0xd9da714, 0xd9da714, 0xd9da714, 0xd9da714, 0xd9da714, 0xd9da714, 0xd9da714.

- `__glim_GetPixelMapfv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9da8d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9da8d0-0xd9daaa0 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0xd9da8d8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9da8dc loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9da918 loads 4 bytes from table(0xda80eac) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0, including `lw` at 0xd9da948, `lw` at 0xd9daa08.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0, including `lw` at 0xd9da95c, `lw` at 0xd9daa1c.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9da970, `lw` at 0xd9da9a0, `lw` at 0xd9da9b0.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd9da990, `swc1` at 0xd9da9ac, `swc1` at 0xd9da9bc.
  The `lwc1` at 0xd9daa30 loads 4 bytes from entry(-0x9138) +0x0.
  The `swc1` at 0xd9daa40 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9daa50, `lwc1` at 0xd9daa5c.
  The `jalr` at 0xd9daa7c calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=table(0xda80eac), a4=[0x1010], a5=a1 at entry (arg1), a6=(a0-3184 << 0x2).
  The `jalr` at 0xd9daa90 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1010], a5=a1 at entry (arg1), a6=a0-3184.
  The `beq` branch at 0xd9da8f8 targets 0xd9daa8c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9da910 targets 0xd9daa78, is taken when a6(=a0-3184) >= 0xa (unsigned), and falls through when a6(=a0-3184) < 0xa (unsigned).
  The `bltz` branch at 0xd9da960 targets 0xd9da9f0, is taken when a7(=entry(-0x9140)-1) < 0 (signed), and falls through when a7(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9da968 targets 0xd9da994, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd9da98c targets 0xd9da970, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd9da994 targets 0xd9da9f0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xd9da9e8 targets 0xd9da9a0, is taken when a3(?) != a4(=-0x1), and falls through when a3(?) == a4(=-0x1).
  The `bltz` branch at 0xd9daa20 targets 0xd9da9f0, is taken when t9(=entry(-0x9140)-1) < 0 (signed), and falls through when t9(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9daa28 targets 0xd9daa44, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xd9daa44 targets 0xd9daa70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xd9daa68 targets 0xd9daa50, is taken when a3(?) != a4(=-0x1), and falls through when a3(?) == a4(=-0x1).
  The `beq` branch at 0xd9daa70 targets 0xd9da9f4 and is always taken.
  The `beq` branch at 0xd9daa84 targets 0xd9da9f4 and is always taken.
  The `beq` branch at 0xd9daa98 targets 0xd9da9f4 and is always taken.
  The return at 0xd9da9f8 has v0 = one of 0x1, ret(__glSetError).
  The indirect jump at 0xd9da928 uses the jump table at 0xda80eac with targets 0xd9da930, 0xd9da930, 0xd9daa00, 0xd9daa00, 0xd9daa00, 0xd9daa00, 0xd9daa00, 0xd9daa00, 0xd9daa00, 0xd9daa00.

- `__glim_GetPixelMapuiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9daaa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9daaa0-0xd9daca0 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0xd9daaa8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9daaac loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9daaf0 loads 4 bytes from table(0xda80ed4) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0, including `lw` at 0xd9dab10, `lw` at 0xd9dab98.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0, including `lw` at 0xd9dab20, `lw` at 0xd9daba4.
  The `lw` at 0xd9dab38 loads 4 bytes from entry(-0x9138) +0x0.
  The `sw` at 0xd9dab44 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9dab50, `lw` at 0xd9dab60.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9dab58, `sw` at 0xd9dab6c, `sw` at 0xd9dabe4.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9dabb8, `lwc1` at 0xd9dabf0, `lwc1` at 0xd9dac0c.
  5 such `lwc1` accesses load 4 bytes from [0x1010] +0xdec, including `lwc1` at 0xd9dabbc, `lwc1` at 0xd9dabf4, `lwc1` at 0xd9dac10.
  5 such `lwc1` accesses load 4 bytes from [0x1010] +0xdd4, including `lwc1` at 0xd9dabc0, `lwc1` at 0xd9dabf8, `lwc1` at 0xd9dac14.
  The `jalr` at 0xd9dac7c calls __glSetError [0xd9cd900] with a0=0x500, a1=table(0xda80ed4), a2=(a0-3184 << 0x2), a3=a1 at entry (arg1), a5=[0x1010], a6=a1 at entry (arg1).
  The `jalr` at 0xd9dac90 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010], a6=a1 at entry (arg1).
  The `beq` branch at 0xd9daac8 targets 0xd9dac8c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9daae8 targets 0xd9dac78, is taken when a2(=a0-3184) >= 0xa (unsigned), and falls through when a2(=a0-3184) < 0xa (unsigned).
  The `bltz` branch at 0xd9dab24 targets 0xd9dab70, is taken when a4(=entry(-0x9140)-1) < 0 (signed), and falls through when a4(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dab2c targets 0xd9dab48, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xd9dab48 targets 0xd9dab70, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xd9dab68 targets 0xd9dab50, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0xd9daba8 targets 0xd9dab70, is taken when ra(=entry(-0x9140)-1) < 0 (signed), and falls through when ra(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dabb0 targets 0xd9dabe8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd9dabe0 targets 0xd9dabb8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd9dabe8 targets 0xd9dac70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xd9dac68 targets 0xd9dabf0, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `beq` branch at 0xd9dac70 targets 0xd9dab74 and is always taken.
  The `beq` branch at 0xd9dac84 targets 0xd9dab74 and is always taken.
  The `beq` branch at 0xd9dac98 targets 0xd9dab74 and is always taken.
  The return at 0xd9dab78 has v0 = one of 0x1, ret(__glSetError).
  The indirect jump at 0xd9daaf4 uses the jump table at 0xda80ed4 with targets 0xd9daafc, 0xd9daafc, 0xd9dab80, 0xd9dab80, 0xd9dab80, 0xd9dab80, 0xd9dab80, 0xd9dab80, 0xd9dab80, 0xd9dab80.

- `__glim_GetPixelMapusv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9daca0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9daca0-0xd9daea0 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0xd9daca8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9dacac loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9dacf0 loads 4 bytes from table(0xda80efc) +0x0.
  2 such `lw` accesses load 4 bytes from table(-0x9140) +0x0, including `lw` at 0xd9dad10, `lw` at 0xd9dad98.
  2 such `lw` accesses load 4 bytes from table(-0x9138) +0x0, including `lw` at 0xd9dad20, `lw` at 0xd9dada4.
  The `lw` at 0xd9dad38 loads 4 bytes from entry(-0x9138) +0x0.
  The `sh` at 0xd9dad44 stores 2 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9dad50, `lw` at 0xd9dad60.
  7 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd9dad58, `sh` at 0xd9dad6c, `sh` at 0xd9dade4.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9dadb8, `lwc1` at 0xd9dadf0, `lwc1` at 0xd9dae0c.
  5 such `lwc1` accesses load 4 bytes from [0x1010] +0xde4, including `lwc1` at 0xd9dadbc, `lwc1` at 0xd9dadf4, `lwc1` at 0xd9dae10.
  5 such `lwc1` accesses load 4 bytes from [0x1010] +0xdd4, including `lwc1` at 0xd9dadc0, `lwc1` at 0xd9dadf8, `lwc1` at 0xd9dae14.
  The `jalr` at 0xd9dae7c calls __glSetError [0xd9cd900] with a0=0x500, a1=table(0xda80efc), a2=(a0-3184 << 0x2), a3=a1 at entry (arg1), a5=[0x1010], a6=a1 at entry (arg1).
  The `jalr` at 0xd9dae90 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010], a6=a1 at entry (arg1).
  The `beq` branch at 0xd9dacc8 targets 0xd9dae8c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9dace8 targets 0xd9dae78, is taken when a2(=a0-3184) >= 0xa (unsigned), and falls through when a2(=a0-3184) < 0xa (unsigned).
  The `bltz` branch at 0xd9dad24 targets 0xd9dad70, is taken when a4(=entry(-0x9140)-1) < 0 (signed), and falls through when a4(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dad2c targets 0xd9dad48, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xd9dad48 targets 0xd9dad70, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xd9dad68 targets 0xd9dad50, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0xd9dada8 targets 0xd9dad70, is taken when ra(=entry(-0x9140)-1) < 0 (signed), and falls through when ra(=entry(-0x9140)-1) >= 0 (signed).
  The `beq` branch at 0xd9dadb0 targets 0xd9dade8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd9dade0 targets 0xd9dadb8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xd9dade8 targets 0xd9dae70, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xd9dae68 targets 0xd9dadf0, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `beq` branch at 0xd9dae70 targets 0xd9dad74 and is always taken.
  The `beq` branch at 0xd9dae84 targets 0xd9dad74 and is always taken.
  The `beq` branch at 0xd9dae98 targets 0xd9dad74 and is always taken.
  The return at 0xd9dad78 has v0 = one of 0x1, ret(__glSetError).
  The indirect jump at 0xd9dacf4 uses the jump table at 0xda80efc with targets 0xd9dacfc, 0xd9dacfc, 0xd9dad80, 0xd9dad80, 0xd9dad80, 0xd9dad80, 0xd9dad80, 0xd9dad80, 0xd9dad80, 0xd9dad80.

- `__glim_GetDoublev` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9df4b0-0xd9df4ec (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xd9df4d4 calls __glDoGet [0xd9dbab0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0xda80f28, a4=0xb1b28.
  The return at 0xd9df4e4 has v0 = ret(__glDoGet).

- `__glim_GetFloatv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9df4f0-0xd9df52c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xd9df514 calls __glDoGet [0xd9dbab0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0xda80f38, a4=0xb1ae8.
  The return at 0xd9df524 has v0 = ret(__glDoGet).

- `__glim_GetIntegerv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9df530-0xd9df56c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xd9df554 calls __glDoGet [0xd9dbab0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0xda80f48, a4=0xb1aa8.
  The return at 0xd9df564 has v0 = ret(__glDoGet).

- `__glim_GetBooleanv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9df570-0xd9df5ac (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0xd9df594 calls __glDoGet [0xd9dbab0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0xda80f58, a4=0xb1a68.
  The return at 0xd9df5a4 has v0 = ret(__glDoGet).

- `__glim_GetString` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9df610-0xd9df6d0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd9df610 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9df61c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9df684 loads 4 bytes from [0x1010] +0xe00.
  The `lw` at 0xd9df694 loads 4 bytes from [0x1010] +0xdf4.
  The `lw` at 0xd9df6a8 loads 4 bytes from [0x1010] +0xdf8.
  The `lw` at 0xd9df6b0 loads 4 bytes from [0x1010] +0xdfc.
  The `jalr` at 0xd9df65c calls __glSetError [0xd9cd900] with a0=0x500, a1=0x1f02, a2=0x1f03, a3=[0x1010].
  The `jalr` at 0xd9df6bc calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `beq` branch at 0xd9df62c targets 0xd9df6b4, is taken when v0(=[0x1018]) == v1(=0x1), and falls through when v0(=[0x1018]) != v1(=0x1).
  The `beq` branch at 0xd9df638 targets 0xd9df694, is taken when a0 == v0(=0x1f00), and falls through when a0 != v0(=0x1f00).
  The `beq` branch at 0xd9df640 targets 0xd9df6a4, is taken when a0 == v1(=0x1f01), and falls through when a0 != v1(=0x1f01).
  The `beq` branch at 0xd9df648 targets 0xd9df6ac, is taken when a0 == a1(=0x1f02), and falls through when a0 != a1(=0x1f02).
  The `beq` branch at 0xd9df650 targets 0xd9df684, is taken when a0 == a2(=0x1f03), and falls through when a0 != a2(=0x1f03).
  The `beq` branch at 0xd9df6a4 targets 0xd9df678 and is always taken.
  The `beq` branch at 0xd9df6ac targets 0xd9df678 and is always taken.
  The `beq` branch at 0xd9df6c8 targets 0xd9df678 and is always taken.
  The return at 0xd9df670 has v0 = 0x0.
  The return at 0xd9df67c has v0 = one of [[0x1010]+3576], [[0x1010]+3580], 0x0.
  The return at 0xd9df68c has v0 = [[0x1010]+3584].
  The return at 0xd9df69c has v0 = [[0x1010]+3572].

- `__glim_GetPointervEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9df6d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9df6d0-0xd9df848 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0xd9df6d8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9df6dc loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9df740 loads 4 bytes from [0x1010] +0x1464.
  8 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd9df748, `sw` at 0xd9df780, `sw` at 0xd9df7c4.
  The `lw` at 0xd9df774 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xd9df7b8 loads 4 bytes from [0x1010] +0x1328.
  The `lw` at 0xd9df7d4 loads 4 bytes from [0x1010] +0x1430.
  The `lw` at 0xd9df7ec loads 4 bytes from [0x1010] +0x1308.
  The `lw` at 0xd9df800 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xd9df818 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xd9df828 loads 4 bytes from [0x1010] +0x1448.
  The `jalr` at 0xd9df788 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=?, a3=[0x1010], a4=one of 0x808e, 0x8092.
  The `jalr` at 0xd9df838 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010], a4=0x8090.
  The `beq` branch at 0xd9df6f8 targets 0xd9df834, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xd9df704 targets 0xd9df74c, is taken when a0 < a4(=0x8090) (unsigned), and falls through when a0 >= a4(=0x8090) (unsigned).
  The `beq` branch at 0xd9df71c targets 0xd9df7f8, is taken when a4(=0x8090) >= a0 (unsigned), and falls through when a4(=0x8090) < a0 (unsigned).
  The `bne` branch at 0xd9df728 targets 0xd9df7c8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xd9df730 targets 0xd9df828, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0xd9df738 targets 0xd9df788, is taken when a0 != t0(=0x8093), and falls through when a0 == t0(=0x8093).
  The `beq` branch at 0xd9df744 targets 0xd9df790 and is always taken.
  The `bne` branch at 0xd9df758 targets 0xd9df7a0, is taken when a0 < a4(=0x808e) (unsigned), and falls through when a0 >= a4(=0x808e) (unsigned).
  The `beq` branch at 0xd9df760 targets 0xd9df810, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xd9df768 targets 0xd9df784, is taken when a0 != t8(=0x808f), and falls through when a0 == t8(=0x808f).
  The `bne` branch at 0xd9df7a4 targets 0xd9df7e4, is taken when a0 < 0xdf3 (unsigned), and falls through when a0 >= 0xdf3 (unsigned).
  The `beq` branch at 0xd9df7ac targets 0xd9df784, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xd9df7c8 targets 0xd9df788, is taken when a0 != v1(=0x8091), and falls through when a0 == v1(=0x8091).
  The `bne` branch at 0xd9df7e4 targets 0xd9df788, is taken when a0 != a2(=0xdf0), and falls through when a0 == a2(=0xdf0).
  The `beq` branch at 0xd9df7f0 targets 0xd9df790 and is always taken.
  The `beq` branch at 0xd9df82c targets 0xd9df790 and is always taken.
  The `beq` branch at 0xd9df840 targets 0xd9df794 and is always taken.
  The return at 0xd9df77c has v0 = 0x1.
  The return at 0xd9df798 has v0 = one of ?, ret(__glSetError).
  The return at 0xd9df7c0 has v0 = [[0x1010]+4904].
  The return at 0xd9df7dc has v0 = 0x1.
  The return at 0xd9df808 has v0 = 0x1.
  The return at 0xd9df820 has v0 = 0x1.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e0da0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9e0da0-0xd9e0dd4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e0dbc calls __glGetHistogramParameters [0xd9e0bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e0dcc has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e0de0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9e0de0-0xd9e0e14 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e0dfc calls __glGetHistogramParameters [0xd9e0bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e0e0c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e1380 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9e1380-0xd9e13f0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd9e1384 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e13d0 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xd9e13b4 calls __glSetError [0xd9cd900] with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd9e13cc calls __glResetMinmax [0xd9e1150] with a0=[0x1010], a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e13e0 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9e139c targets 0xd9e13dc, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9e13a8 targets 0xd9e13cc, is taken when a0 == a1(=0x802e), and falls through when a0 != a1(=0x802e).
  The `beq` branch at 0xd9e13d4 targets 0xd9e13c0 and is always taken.
  The `beq` branch at 0xd9e13e8 targets 0xd9e13c0 and is always taken.
  The return at 0xd9e13c4 has v0 = one of ret(__glSetError), ret(__glResetMinmax).

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e1690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9e1690-0xd9e16c4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e16ac calls __glGetMinmaxParameters [0xd9e15b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e16bc has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9e16d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9e16d0-0xd9e1704 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0xd9e16ec calls __glGetMinmaxParameters [0xd9e15b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e16fc has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9ef2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9ef2c0-0xd9ef2cc (12 bytes).
  It occupies 12 bytes.
  The return at 0xd9ef2c4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9ef2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9ef2e0-0xd9ef2ec (12 bytes).
  It occupies 12 bytes.
  The return at 0xd9ef2e4 has v0 = ?.

- `__glim_Normal3dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f4110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9f4110-0xd9f413c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xd9f4110 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xd9f4114 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xd9f4118 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xd9f411c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd9f4128 stores 4 bytes to [0x1010] +0xd8.
  The `swc1` at 0xd9f4130 stores 4 bytes to [0x1010] +0xd4.
  The `swc1` at 0xd9f4138 stores 4 bytes to [0x1010] +0xd0.
  The return at 0xd9f4134 has v0 = ?.

- `__glim_Normal3sv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f4260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9f4260-0xd9f42c0 (96 bytes).
  It occupies 96 bytes.
  The `lh` at 0xd9f4260 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xd9f4270 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9f4278 loads 4 bytes from [0x1010] +0xde8.
  The `swc1` at 0xd9f4280 stores 4 bytes to [0x1010] +0xd0.
  The `lh` at 0xd9f4284 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `swc1` at 0xd9f429c stores 4 bytes to [0x1010] +0xd4.
  The `lh` at 0xd9f42a0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd9f42bc stores 4 bytes to [0x1010] +0xd8.
  The return at 0xd9f42b8 has v0 = ([a0+4]:2 << 0x1)+1.

- `__glim_Normal3i` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f42c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9f42c0-0xd9f431c (92 bytes).
  It occupies 92 bytes.
  The `lwc1` at 0xd9f42dc loads 4 bytes from abs 0xda8d058.
  The `lwc1` at 0xd9f42e8 loads 4 bytes from abs 0xda8d028.
  The `lw` at 0xd9f42f0 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9f42fc loads 4 bytes from [0x1010] +0xdf0.
  The `swc1` at 0xd9f4308 stores 4 bytes to [0x1010] +0xd8.
  The `swc1` at 0xd9f4310 stores 4 bytes to [0x1010] +0xd4.
  The `swc1` at 0xd9f4318 stores 4 bytes to [0x1010] +0xd0.
  The return at 0xd9f4314 has v0 = [0x1010].

- `__glim_Normal3iv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9f4320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9f4320-0xd9f4388 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xd9f4320 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xd9f4338 loads 4 bytes from abs 0xda8d058.
  The `lwc1` at 0xd9f433c loads 4 bytes from abs 0xda8d028.
  The `lw` at 0xd9f4344 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xd9f4348 loads 4 bytes from [0x1010] +0xdf0.
  The `swc1` at 0xd9f4350 stores 4 bytes to [0x1010] +0xd0.
  The `lw` at 0xd9f4354 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd9f4368 stores 4 bytes to [0x1010] +0xd4.
  The `lw` at 0xd9f436c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xd9f4384 stores 4 bytes to [0x1010] +0xd8.
  The return at 0xd9f4380 has v0 = [0x1010].

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda02220-0xda022c4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda02224 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda02228 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda0227c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda02290 stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda02294 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda022a0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda022ac loads 4 bytes from ?.
  The `jalr` at 0xda0225c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02280 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda022b4 calls (unknown callee) with a0=?, a1=sp-48, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0xda02244 targets 0xda02294, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda02250 targets 0xda02274, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda022bc targets 0xda02268 and is always taken.
  The return at 0xda0226c has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda022d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda022d0-0xda02358 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda022d4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda022d8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda02324 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda02338 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda0233c loads 4 bytes from [0x1010] +0x3180.
  The `jalr` at 0xda0230c calls __glSetError [0xd9cd900] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02328 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02340 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?, a4=[0x1010].
  The `beq` branch at 0xda022f4 targets 0xda0233c, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda02300 targets 0xda0231c, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda02314 targets 0xda02348 and is always taken.
  The return at 0xda02350 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda02770-0xda02820 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xda02774 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda02778 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda027cc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda027e0 stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda027e4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda027f0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda027fc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda02808 loads 4 bytes from ?.
  The `jalr` at 0xda027ac calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda027d0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02810 calls (unknown callee) with a0=?, a1=sp-48, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0xda02794 targets 0xda027e4, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda027a0 targets 0xda027c4, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda02818 targets 0xda027b8 and is always taken.
  The return at 0xda027bc has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda02820-0xda028a8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda02824 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda02828 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda02874 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda02888 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda0288c loads 4 bytes from [0x1010] +0x3184.
  The `jalr` at 0xda0285c calls __glSetError [0xd9cd900] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02878 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02890 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?, a4=[0x1010].
  The `beq` branch at 0xda02844 targets 0xda0288c, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda02850 targets 0xda0286c, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda02864 targets 0xda02898 and is always taken.
  The return at 0xda028a0 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda02d40-0xda02dfc (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xda02d44 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda02d48 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda02d9c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda02db0 stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda02db4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda02dc0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda02dcc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda02dd8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda02de4 loads 4 bytes from ?.
  The `jalr` at 0xda02d7c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02da0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=[0x1010], a4=a0 at entry (arg0).
  The `jalr` at 0xda02dec calls (unknown callee) with a0=?, a1=sp-48, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0xda02d64 targets 0xda02db4, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda02d70 targets 0xda02d94, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda02df4 targets 0xda02d88 and is always taken.
  The return at 0xda02d8c has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda02e00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda02e00-0xda02e88 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda02e04 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda02e08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda02e54 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda02e68 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda02e6c loads 4 bytes from [0x1010] +0x3188.
  The `jalr` at 0xda02e3c calls __glSetError [0xd9cd900] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02e58 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010].
  The `jalr` at 0xda02e70 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?, a4=[0x1010].
  The `beq` branch at 0xda02e24 targets 0xda02e6c, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda02e30 targets 0xda02e4c, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda02e44 targets 0xda02e78 and is always taken.
  The return at 0xda02e80 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03800-0xda038b8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda03804 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda0380c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda0386c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda0388c stores 4 bytes to abs 0x1018.
  The `lw` at 0xda03894 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda03854 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda03870 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda038a0 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beq` branch at 0xda0382c targets 0xda03890, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda03848 targets 0xda03864, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda0385c targets 0xda038a8 and is always taken.
  The return at 0xda038b0 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectdv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda038c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda038c0-0xda03970 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xda038c4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda038c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03918 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda03930 stores 4 bytes to abs 0x1018.
  The `ldc1` at 0xda03934 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda03938 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ldc1` at 0xda0393c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ldc1` at 0xda03940 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda03944 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda03900 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda0391c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03958 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?, a4=[0x1010], a5=a0 at entry (arg0).
  The `beq` branch at 0xda038e4 targets 0xda03934, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda038f4 targets 0xda03910, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda03908 targets 0xda03960 and is always taken.
  The return at 0xda03968 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03970-0xda03a28 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xda03974 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda0397c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda039dc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda039fc stores 4 bytes to abs 0x1018.
  The `lw` at 0xda03a04 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda039c4 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda039e0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda03a10 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?; fp f13=f12, f14=f13, f15=f14, f16=f15.
  The `beq` branch at 0xda0399c targets 0xda03a00, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda039b8 targets 0xda039d4, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda039cc targets 0xda03a18 and is always taken.
  The return at 0xda03a20 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectfv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03a30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03a30-0xda03ad0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda03a34 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda03a38 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03a88 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda03aa0 stores 4 bytes to abs 0x1018.
  The `lwc1` at 0xda03aa4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda03aa8 loads 4 bytes from [0x1010] +0x2f7c.
  The `lwc1` at 0xda03aac loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda03ab0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda03abc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xda03a70 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03a8c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03ab8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?, a4=[0x1010], a5=a0 at entry (arg0); fp f13=[a0], f14=[a0+4], f15=[a1], f16=[a1+4].
  The `beq` branch at 0xda03a54 targets 0xda03aa4, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda03a64 targets 0xda03a80, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda03a78 targets 0xda03ac0 and is always taken.
  The return at 0xda03ac8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Recti` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03ad0-0xda03b90 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xda03ad4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda03ad8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03b30 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda03b50 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda03b64 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda03b18 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03b34 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03b78 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1010], a7=a0 at entry (arg0).
  The `beq` branch at 0xda03af4 targets 0xda03b54, is taken when a5(=[0x1018]) == 0, and falls through when a5(=[0x1018]) != 0.
  The `beq` branch at 0xda03b0c targets 0xda03b28, is taken when a5(=[0x1018]) == v0(=0x2), and falls through when a5(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda03b20 targets 0xda03b80 and is always taken.
  The return at 0xda03b88 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectiv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03b90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03b90-0xda03c50 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xda03b94 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda03b98 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03be8 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda03c00 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda03c04 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda03c08 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda03c0c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda03c14 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda03c20 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda03bd0 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03bec calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03c38 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?, a4=[0x1010], a5=a0 at entry (arg0).
  The `beq` branch at 0xda03bb4 targets 0xda03c04, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda03bc4 targets 0xda03be0, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda03bd8 targets 0xda03c40 and is always taken.
  The return at 0xda03c48 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rects` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03c50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03c50-0xda03d10 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xda03c54 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda03c58 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03cb0 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda03cd0 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda03ce4 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda03c98 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03cb4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1018], a6=[0x1010], a7=a0 at entry (arg0).
  The `jalr` at 0xda03cf8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1010], a7=a0 at entry (arg0).
  The `beq` branch at 0xda03c74 targets 0xda03cd4, is taken when a5(=[0x1018]) == 0, and falls through when a5(=[0x1018]) != 0.
  The `beq` branch at 0xda03c8c targets 0xda03ca8, is taken when a5(=[0x1018]) == v0(=0x2), and falls through when a5(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda03ca0 targets 0xda03d00 and is always taken.
  The return at 0xda03d08 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectsv` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03d10-0xda03dd0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xda03d14 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda03d18 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03d68 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda03d80 stores 4 bytes to abs 0x1018.
  The `lh` at 0xda03d84 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lh` at 0xda03d88 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `lh` at 0xda03d8c loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `lh` at 0xda03d94 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda03da0 loads 4 bytes from [0x1010] +0x2f7c.
  The `jalr` at 0xda03d50 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03d6c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1018], a4=[0x1010], a5=a0 at entry (arg0).
  The `jalr` at 0xda03db8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?, a4=[0x1010], a5=a0 at entry (arg0).
  The `beq` branch at 0xda03d34 targets 0xda03d84, is taken when a3(=[0x1018]) == 0, and falls through when a3(=[0x1018]) != 0.
  The `beq` branch at 0xda03d44 targets 0xda03d60, is taken when a3(=[0x1018]) == v0(=0x2), and falls through when a3(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda03d58 targets 0xda03dc0 and is always taken.
  The return at 0xda03dc8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_SelectBuffer` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda03ea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda03ea0-0xda03f40 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda03ea8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda03eac loads 4 bytes from abs 0x1010.
  The `lw` at 0xda03ed8 loads 4 bytes from [0x1010] +0xc84.
  The `sw` at 0xda03ee4 stores 4 bytes to [0x1010] +0x132c.
  The `sw` at 0xda03ee8 stores 4 bytes to [0x1010] +0x1330.
  The `sw` at 0xda03eec stores 4 bytes to [0x1010] +0x1328.
  The `sb` at 0xda03ef0 stores 1 byte to [0x1010] +0x1324.
  The `jalr` at 0xda03f0c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[[0x1010]+3204], a3=[0x1010], a4=0x1c02.
  The `jalr` at 0xda03f20 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010], a4=0x1c02.
  The `jalr` at 0xda03f30 calls __glSetError [0xd9cd900] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010], a4=0x1c02.
  The `beq` branch at 0xda03ec8 targets 0xda03f1c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xda03ed0 targets 0xda03f30, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0xda03edc targets 0xda03f0c, is taken when a2(=[[0x1010]+3204]) == a4(=0x1c02), and falls through when a2(=[[0x1010]+3204]) != a4(=0x1c02).
  The `beq` branch at 0xda03f14 targets 0xda03f00 and is always taken.
  The `beq` branch at 0xda03f28 targets 0xda03f00 and is always taken.
  The `beq` branch at 0xda03f38 targets 0xda03f00 and is always taken.
  The return at 0xda03ef8 has v0 = 0x1.
  The return at 0xda03f04 has v0 = ret(__glSetError).

- `__glim_PopName` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda04040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda04040-0xda040d4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda04040 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda0404c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda04064 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xda04074 loads 4 bytes from [0x1010] +0x1320.
  The `lw` at 0xda04078 loads 4 bytes from [0x1010] +0x131c.
  The `sb` at 0xda04084 stores 1 byte to [0x1010] +0x1318.
  The `sw` at 0xda0408c stores 4 bytes to [0x1010] +0x1320.
  The `jalr` at 0xda040ac calls __glSetError [0xd9cd900] with a0=0x504, a1=[0x1010], a2=[[0x1010]+4896], a3=a3 at entry (arg3).
  The `jalr` at 0xda040c4 calls __glSetError [0xd9cd900] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda0405c targets 0xda040bc, is taken when v0(=[0x1018]) == v1(=0x1), and falls through when v0(=[0x1018]) != v1(=0x1).
  The `bne` branch at 0xda0406c targets 0xda0409c, is taken when v0(=[[0x1010]+3204]) != v1(=0x1c02), and falls through when v0(=[[0x1010]+3204]) == v1(=0x1c02).
  The `beq` branch at 0xda0407c targets 0xda040a8, is taken when a0(=[[0x1010]+4892]) == a2(=[[0x1010]+4896]), and falls through when a0(=[[0x1010]+4892]) != a2(=[[0x1010]+4896]).
  The `beq` branch at 0xda040b4 targets 0xda0409c and is always taken.
  The `beq` branch at 0xda040cc targets 0xda0409c and is always taken.
  The return at 0xda04094 has v0 = [[0x1010]+3204].
  The return at 0xda040a0 has v0 = one of [[0x1010]+3204], ret(__glSetError).

- `__glim_PushName` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda040e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda040e0-0xda0418c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xda040e0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda040ec loads 4 bytes from abs 0x1010.
  The `lw` at 0xda04104 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xda04114 loads 4 bytes from [0x1010] +0xec8.
  The `lw` at 0xda04118 loads 4 bytes from [0x1010] +0x131c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1320, including `lw` at 0xda0411c, `lw` at 0xda0413c.
  The `sw` at 0xda04134 stores 4 bytes to [[0x1010]+4896] +0x0.
  The `sb` at 0xda04138 stores 1 byte to [0x1010] +0x1318.
  The `sw` at 0xda04150 stores 4 bytes to [0x1010] +0x1320.
  The `jalr` at 0xda04164 calls __glSetError [0xd9cd900] with a0=0x503, a1=?, a2=[0x1010], a3=[[0x1010]+4896], a4=([[0x1010]+3784] << 0x2).
  The `jalr` at 0xda0417c calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xda040fc targets 0xda04174, is taken when v0(=[0x1018]) == v1(=0x1), and falls through when v0(=[0x1018]) != v1(=0x1).
  The `bne` branch at 0xda0410c targets 0xda04154, is taken when v0(=[[0x1010]+3204]) != v1(=0x1c02), and falls through when v0(=[[0x1010]+3204]) == v1(=0x1c02).
  The `beq` branch at 0xda0412c targets 0xda04160, is taken when a3(=[[0x1010]+4896]) >= a1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned), and falls through when a3(=[[0x1010]+4896]) < a1(=([[0x1010]+4892] + ([[0x1010]+3784] << 0x2))) (unsigned).
  The `beq` branch at 0xda0416c targets 0xda04154 and is always taken.
  The `beq` branch at 0xda04184 targets 0xda04154 and is always taken.
  The return at 0xda0414c has v0 = [[0x1010]+3204].
  The return at 0xda04158 has v0 = one of [[0x1010]+3204], ret(__glSetError).

- `__glim_TexGenf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda14a60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda14a60-0xda14ab4 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xda14a88 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda14aa4 calls __glim_TexGenfv [0xda14850] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0xda14a7c targets 0xda14aa0, is taken when a1 == at(=0x2500), and falls through when a1 != at(=0x2500).
  The `beq` branch at 0xda14aac targets 0xda14a94 and is always taken.
  The return at 0xda14a98 has v0 = one of ret(__glSetError), ret(__glim_TexGenfv).

- `__glim_TexGend` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda14cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda14cf0-0xda14d44 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xda14d18 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda14d34 calls __glim_TexGendv [0xda14ac0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0xda14d0c targets 0xda14d30, is taken when a1 == at(=0x2500), and falls through when a1 != at(=0x2500).
  The `beq` branch at 0xda14d3c targets 0xda14d24 and is always taken.
  The return at 0xda14d28 has v0 = one of ret(__glSetError), ret(__glim_TexGendv).

- `__glim_TexGeni` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda14fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda14fa0-0xda14ff4 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xda14fc8 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda14fe4 calls __glim_TexGeniv [0xda14d50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=a3 at entry (arg3).
  The `beq` branch at 0xda14fbc targets 0xda14fe0, is taken when a1 == at(=0x2500), and falls through when a1 != at(=0x2500).
  The `beq` branch at 0xda14fec targets 0xda14fd4 and is always taken.
  The return at 0xda14fd8 has v0 = one of ret(__glSetError), ret(__glim_TexGeniv).

- `__glim_TexEnvf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda160d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda160d0-0xda16124 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xda160f8 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda16114 calls __glim_TexEnvfv [0xda15f80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0xda160ec targets 0xda16110, is taken when a1 == at(=0x2200), and falls through when a1 != at(=0x2200).
  The `beq` branch at 0xda1611c targets 0xda16104 and is always taken.
  The return at 0xda16108 has v0 = one of ret(__glSetError), ret(__glim_TexEnvfv).

- `__glim_TexEnvi` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda16270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda16270-0xda162c4 (84 bytes).
  It occupies 84 bytes.
  The `jalr` at 0xda16298 calls __glSetError [0xd9cd900] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda162b4 calls __glim_TexEnviv [0xda16130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=a3 at entry (arg3).
  The `beq` branch at 0xda1628c targets 0xda162b0, is taken when a1 == at(=0x2200), and falls through when a1 != at(=0x2200).
  The `beq` branch at 0xda162bc targets 0xda162a4 and is always taken.
  The return at 0xda162a8 has v0 = one of ret(__glSetError), ret(__glim_TexEnviv).

- `__glim_Vertex3s` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda32910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda32910-0xda32974 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda32914 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda32924 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda32938 loads 4 bytes from [[0x1010]+6132] +0x554.
  The `jalr` at 0xda3295c calls (unknown callee) with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda3296c has v0 = ret(?).

- `__glim_Vertex4s` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda32c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda32c00-0xda32c70 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xda32c0c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda32c20 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda32c34 loads 4 bytes from [[0x1010]+6132] +0x574.
  The `jalr` at 0xda32c58 calls (unknown callee) with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda32c68 has v0 = ret(?).

- `__glim_LoadIdentity` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda35040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda35040-0xda350bc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda35040 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda35044 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda3508c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda3509c stores 4 bytes to abs 0x1018.
  The `lw` at 0xda350a0 loads 4 bytes from [0x1010] +0x2eb0.
  The `jalr` at 0xda35074 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35090 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda350a4 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beq` branch at 0xda3505c targets 0xda350a0, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda35068 targets 0xda35084, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda3507c targets 0xda350ac and is always taken.
  The return at 0xda350b4 has v0 = one of ret(__glSetError), ret(?).

- `__glim_PushMatrix` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda357a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda357a0-0xda3581c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda357a0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda357a4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda357ec loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda357fc stores 4 bytes to abs 0x1018.
  The `lw` at 0xda35800 loads 4 bytes from [0x1010] +0x2ea8.
  The `jalr` at 0xda357d4 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda357f0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35804 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beq` branch at 0xda357bc targets 0xda35800, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda357c8 targets 0xda357e4, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda357dc targets 0xda3580c and is always taken.
  The return at 0xda35814 has v0 = one of ret(__glSetError), ret(?).

- `__glim_PopMatrix` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda35820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda35820-0xda3589c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda35820 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda35824 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda3586c loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda3587c stores 4 bytes to abs 0x1018.
  The `lw` at 0xda35880 loads 4 bytes from [0x1010] +0x2eac.
  The `jalr` at 0xda35854 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35870 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=[0x1018], a3=a3 at entry (arg3).
  The `jalr` at 0xda35884 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `beq` branch at 0xda3583c targets 0xda35880, is taken when a2(=[0x1018]) == 0, and falls through when a2(=[0x1018]) != 0.
  The `beq` branch at 0xda35848 targets 0xda35864, is taken when a2(=[0x1018]) == v0(=0x2), and falls through when a2(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda3585c targets 0xda3588c and is always taken.
  The return at 0xda35894 has v0 = one of ret(__glSetError), ret(?).

- `__glim_NewList` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21d1aa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21d1aa0-0x21d1c38 (408 bytes).
  It occupies 408 bytes.
  The `ld` at 0x21d1aa8 loads 8 bytes from abs 0x1020.
  The `lw` at 0x21d1aac loads 4 bytes from abs 0x1030.
  The `lw` at 0x21d1af8 loads 4 bytes from [0x1020]:8 +0x1540.
  2 such `sd` accesses store 8 bytes to [0x1020]:8 +0x1560, including `sd` at 0x21d1b24, `sd` at 0x21d1be8.
  The `sd` at 0x21d1b28 stores 8 bytes to [0x1020]:8 +0x1558.
  The `sw` at 0x21d1b2c stores 4 bytes to [0x1020]:8 +0x1550.
  The `sw` at 0x21d1b30 stores 4 bytes to [0x1020]:8 +0x154c.
  The `sw` at 0x21d1b34 stores 4 bytes to [0x1020]:8 +0x153c.
  The `ld` at 0x21d1b3c loads 8 bytes from [0x1020]:8 +0x4740.
  The `sw` at 0x21d1b44 stores 4 bytes to [0x1020]:8 +0x1540.
  The `sd` at 0x21d1b4c stores 8 bytes to [0x1020]:8 +0x1ad8.
  The `ld` at 0x21d1b58 loads 8 bytes from [0x1020]:8 +0x1500.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x1510, including `ld` at 0x21d1b84, `ld` at 0x21d1bcc.
  The `ld` at 0x21d1b90 loads 8 bytes from [0x1020]:8 +0x1568.
  The `ld` at 0x21d1b9c loads 8 bytes from abs 0x1088.
  The `ld` at 0x21d1be0 loads 8 bytes from [0x1020]:8 +0x2998.
  The `ld` at 0x21d1bec loads 8 bytes from [0x1020]:8 +0x4dd0.
  The `sd` at 0x21d1bfc stores 8 bytes to [0x1020]:8 +0x1568.
  The `jalr` at 0x21d1ae8 calls __glSetError [0x22115d0] with a0=0x500, a1=0x1300, a2=0x1301, a3=a3 at entry (arg3).
  The `jalr` at 0x21d1b04 calls __glSetError [0x22115d0] with a0=0x502, a1=0x1300, a2=0x1301, a3=[[0x1020]:8+5440].
  The `jalr` at 0x21d1b1c calls __glMipsCopyDispatch [0x22bd140] with a0=[0x1020]:8+6880, a1=?, a2=?, a3=?.
  The `jalr` at 0x21d1b50 calls (unknown callee) with a0=[0x1020]:8, a1=?, a2=?, a3=?, a4=[0x1020]:8+14424, a5=a0 at entry (arg0).
  The `jalr` at 0x21d1b5c calls (unknown callee) with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21d1bb8 calls __glMipsCopyDispatch [0x22bd140] with a0=?, a1=[0x1020]:8+14424, a2=?, a3=?.
  The `jalr` at 0x21d1bdc calls __glMipsCopyDispatch [0x22bd140] with a0=[[0x1020]:8+10648]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x21d1bf0 calls (unknown callee) with a0=[0x1020]:8, a1=0x1300, a2=0x1301, a3=[[0x1020]:8+5440], a6=[[0x1020]:8+5392]:8, a7=[[0x1020]:8+5480]:8.
  The `jalr` at 0x21d1c04 calls __glSetError [0x22115d0] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0x21d1c18 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21d1c28 calls __glSetError [0x22115d0] with a0=0x501, a1=0x1300, a2=0x1301, a3=[[0x1020]:8+5440].
  The `beq` branch at 0x21d1acc targets 0x21d1c14, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x21d1ad8 targets 0x21d1af8, is taken when s1(=a1) == a1(=0x1300), and falls through when s1(=a1) != a1(=0x1300).
  The `beq` branch at 0x21d1ae0 targets 0x21d1af8, is taken when s1(=a1) == a2(=0x1301), and falls through when s1(=a1) != a2(=0x1301).
  The `beq` branch at 0x21d1af0 targets 0x21d1b68 and is always taken.
  The `beq` branch at 0x21d1afc targets 0x21d1b7c, is taken when a3(=[[0x1020]:8+5440]) == 0, and falls through when a3(=[[0x1020]:8+5440]) != 0.
  The `beq` branch at 0x21d1b0c targets 0x21d1b68 and is always taken.
  The `beq` branch at 0x21d1b48 targets 0x21d1b58, is taken when t9(=[[0x1020]:8+18240]:8) == 0, and falls through when t9(=[[0x1020]:8+18240]:8) != 0.
  The `beq` branch at 0x21d1b7c targets 0x21d1c28, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x21d1b88 targets 0x21d1b9c, is taken when a6(=[[0x1020]:8+5392]:8) == 0, and falls through when a6(=[[0x1020]:8+5392]:8) != 0.
  The `beq` branch at 0x21d1b94 targets 0x21d1bec, is taken when a7(=[[0x1020]:8+5480]:8) == 0, and falls through when a7(=[[0x1020]:8+5480]:8) != 0.
  The `bne` branch at 0x21d1bc4 targets 0x21d1b18, is taken when s1(=a1) != t2(=0x1301), and falls through when s1(=a1) == t2(=0x1301).
  The `bne` branch at 0x21d1bd0 targets 0x21d1b14, is taken when t3(=[[0x1020]:8+5392]:8) != 0, and falls through when t3(=[[0x1020]:8+5392]:8) == 0.
  The `beq` branch at 0x21d1be4 targets 0x21d1b28 and is always taken.
  The `bne` branch at 0x21d1bf8 targets 0x21d1b9c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x21d1c0c targets 0x21d1b68 and is always taken.
  The `beq` branch at 0x21d1c20 targets 0x21d1b68 and is always taken.
  The `beq` branch at 0x21d1c30 targets 0x21d1b68 and is always taken.
  The return at 0x21d1b74 has v0 = one of ret(__glSetError), ret(?).

- `__gllc_CallList` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21d1e60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21d1e60-0x21d1eec (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x21d1e6c loads 8 bytes from abs 0x1020.
  The `sh` at 0x21d1eb8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0x21d1ecc stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `bgezall` at 0x21d1e90 calls __glDlistAllocOp2 [0x21d29e0] with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x21d1ec8 calls __glDlistAppendOp [0x21d2a70] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x21d1ef0, a3=?.
  The `bgezall` at 0x21d1edc calls __gllc_InvalidEnum [0x21d3050] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21d1e80 targets 0x21d1ed8, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x21d1e98 targets 0x21d1eb0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x21d1ed0 targets 0x21d1ea0 and is always taken.
  The `beq` branch at 0x21d1ee4 targets 0x21d1ea0 and is always taken.
  The return at 0x21d1ea8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidEnum).

- `__gllc_CallLists` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21d2310 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21d2310-0x21d2440 (304 bytes).
  It occupies 304 bytes.
  The `ld` at 0x21d2318 loads 8 bytes from abs 0x1020.
  The `lbu` at 0x21d2374 loads 1 byte from table(0x22c4e90) +0x0.
  The `sw` at 0x21d23ec stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0x21d2400 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sh` at 0x21d240c stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `bgezall` at 0x21d238c calls __gllc_InvalidEnum [0x21d3050] with a0=[0x1020]:8, a1=?, a2=0x22c4e90, a3=a3 at entry (arg3).
  The `bgezall` at 0x21d23bc calls __glDlistAllocOp2 [0x21d29e0] with a0=[0x1020]:8, a1=?, a2=-0x8, a3=a3 at entry (arg3).
  The `jalr` at 0x21d2408 calls memcpy with a0=ret(__glDlistAllocOp2)+32, a1=a2 at entry (arg2), a2=?, a3=?, a4=0x1.
  The `bgezall` at 0x21d241c calls __glDlistAppendOp [0x21d2a70] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x21d2440, a3=?.
  The `bgezall` at 0x21d2430 calls __gllc_InvalidValue [0x21d2ff0] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x21d2348 targets 0x21d242c, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x21d2358 targets 0x21d239c, is taken when a1 < 0x1400 (unsigned), and falls through when a1 >= 0x1400 (unsigned).
  The `beq` branch at 0x21d2360 targets 0x21d239c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bgez` branch at 0x21d2380 targets 0x21d23a8, is taken when s3(?) >= 0 (signed), and falls through when s3(?) < 0 (signed).
  The `beq` branch at 0x21d2394 targets 0x21d23d0 and is always taken.
  The `bltz` branch at 0x21d239c targets 0x21d238c, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `bne` branch at 0x21d23c4 targets 0x21d23ec, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x21d2424 targets 0x21d23d0 and is always taken.
  The `beq` branch at 0x21d2438 targets 0x21d23d0 and is always taken.
  The return at 0x21d23e4 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp), ret(__gllc_InvalidValue).

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21ff510 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21ff510-0x21ff5b4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x21ff518 loads 4 bytes from abs 0x1030.
  The `ld` at 0x21ff55c loads 8 bytes from abs 0x1020.
  The `ld` at 0x21ff564 loads 8 bytes from [0x1020]:8 +0x1ad0.
  The `jalr` at 0x21ff560 calls __glNamesGenRange [0x2237910] with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21ff57c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21ff598 calls __glSetError [0x22115d0] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x21ff534 targets 0x21ff578, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x21ff53c targets 0x21ff598, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x21ff544 targets 0x21ff55c, is taken when a0 != 0, and falls through when a0 == 0.
  The return at 0x21ff554 has v0 = 0x0.
  The return at 0x21ff570 has v0 = ret(__glNamesGenRange).
  The return at 0x21ff590 has v0 = 0x0.
  The return at 0x21ff5ac has v0 = 0x0.

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21ff5c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21ff5c0-0x21ff62c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x21ff5c4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x21ff5ec loads 8 bytes from abs 0x1020.
  The `ld` at 0x21ff5f4 loads 8 bytes from [0x1020]:8 +0x1ad0.
  The `jalr` at 0x21ff5f0 calls __glNamesIsName [0x22380d0] with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21ff610 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0x21ff5e0 targets 0x21ff60c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The return at 0x21ff604 has v0 = ?.
  The return at 0x21ff624 has v0 = 0x0.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21ff7d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21ff7d0-0x21ff850 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x21ff7d8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x21ff810 loads 8 bytes from abs 0x1020.
  The `ld` at 0x21ff818 loads 8 bytes from [0x1020]:8 +0x1ad0.
  The `jalr` at 0x21ff814 calls __glNamesDeleteRange [0x2237c80] with a0=[0x1020]:8, a1=[[0x1020]:8+6864]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x21ff830 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0x21ff840 calls __glSetError [0x22115d0] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0x21ff7f4 targets 0x21ff82c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0x21ff7fc targets 0x21ff840, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x21ff804 targets 0x21ff820, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x21ff838 targets 0x21ff820 and is always taken.
  The `beq` branch at 0x21ff848 targets 0x21ff820 and is always taken.
  The return at 0x21ff824 has v0 = one of 0x1, ret(__glNamesDeleteRange), ret(__glSetError).

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22073f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22073f0-0x22074a8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x22073f0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22073fc loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x2207430 loads 4 bytes from [0x1020]:8 +0xf2c.
  The `swc1` at 0x220746c stores 4 bytes to [0x1020]:8 +0x844.
  The `swc1` at 0x2207470 stores 4 bytes to [0x1020]:8 +0x840.
  The `swc1` at 0x2207474 stores 4 bytes to [0x1020]:8 +0x83c.
  The `swc1` at 0x2207480 stores 4 bytes to [0x1020]:8 +0x838.
  The `jalr` at 0x2207498 calls __glSetError [0x22115d0] with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x220740c targets 0x2207490, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x22074a0 targets 0x2207484 and is always taken.
  The return at 0x220747c has v0 = [0x1030].
  The return at 0x2207488 has v0 = ret(__glSetError).

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22074b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22074b0-0x2207520 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x22074b0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22074bc loads 8 bytes from abs 0x1020.
  The `swc1` at 0x22074d4 stores 4 bytes to [0x1020]:8 +0x2a8.
  The `swc1` at 0x22074d8 stores 4 bytes to [0x1020]:8 +0x2a4.
  The `sw` at 0x22074e0 stores 4 bytes to abs 0x1030.
  The `lw` at 0x22074e4 loads 4 bytes from [0x1020]:8 +0x4714.
  The `sw` at 0x22074f8 stores 4 bytes to [0x1020]:8 +0x4714.
  The `jalr` at 0x2207510 calls __glSetError [0x22115d0] with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x22074cc targets 0x2207508, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2207518 targets 0x22074fc and is always taken.
  The return at 0x22074f4 has v0 = ([[0x1020]:8+18196] | 0x4).
  The return at 0x2207500 has v0 = ret(__glSetError).

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f270 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x220f270-0x220f2e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x220f27c loads 4 bytes from abs 0x1030.
  The `ld` at 0x220f2b8 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x220f2b4 calls __glColorTableParameterv [0x220f0e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f2d0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f298 targets 0x220f2cc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x220f2d8 targets 0x220f2c0 and is always taken.
  The return at 0x220f2c4 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x220f2e0-0x220f350 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x220f2ec loads 4 bytes from abs 0x1030.
  The `ld` at 0x220f328 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x220f324 calls __glColorTableParameterv [0x220f0e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f340 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f308 targets 0x220f33c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x220f348 targets 0x220f330 and is always taken.
  The return at 0x220f334 has v0 = one of ret(__glColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f4d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x220f4d0-0x220f540 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x220f4dc loads 4 bytes from abs 0x1030.
  The `ld` at 0x220f518 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x220f514 calls __glGetColorTableParameterv [0x220f350] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f530 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f4f8 targets 0x220f52c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x220f538 targets 0x220f520 and is always taken.
  The return at 0x220f524 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x220f540 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x220f540-0x220f5b0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x220f54c loads 4 bytes from abs 0x1030.
  The `ld` at 0x220f588 loads 8 bytes from abs 0x1020.
  The `bgezall` at 0x220f584 calls __glGetColorTableParameterv [0x220f350] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0, a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `bgezall` at 0x220f5a0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x220f568 targets 0x220f59c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x220f5a8 targets 0x220f590 and is always taken.
  The return at 0x220f594 has v0 = one of ret(__glGetColorTableParameterv), ret(__glSetError).

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213060 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2213060-0x22130b8 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0x2213088 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x22130a8 calls __GLconvolutionParameter [0x2212e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-12, a3=0x1404.
  The `beq` branch at 0x221307c targets 0x22130a0, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x22130b0 targets 0x2213094 and is always taken.
  The return at 0x2213098 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22130c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22130c0-0x2213120 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0x22130f4 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x2213110 calls __GLconvolutionParameter [0x2212e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `beq` branch at 0x22130d8 targets 0x221310c, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x22130e4 targets 0x221310c, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x22130ec targets 0x221310c, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0x2213118 targets 0x2213100 and is always taken.
  The return at 0x2213104 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213120 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2213120-0x2213178 (88 bytes).
  It occupies 88 bytes.
  The `bgezall` at 0x2213148 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2213168 calls __GLconvolutionParameter [0x2212e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-16, a3=0x1406.
  The `beq` branch at 0x221313c targets 0x2213160, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x2213170 targets 0x2213154 and is always taken.
  The return at 0x2213158 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2213180-0x22131e0 (96 bytes).
  It occupies 96 bytes.
  The `bgezall` at 0x22131b4 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x8015.
  The `bgezall` at 0x22131d0 calls __GLconvolutionParameter [0x2212e40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `beq` branch at 0x2213198 targets 0x22131cc, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0x22131a4 targets 0x22131cc, is taken when a1 == v1(=0x8014), and falls through when a1 != v1(=0x8014).
  The `beq` branch at 0x22131ac targets 0x22131cc, is taken when a1 == a3(=0x8015), and falls through when a1 != a3(=0x8015).
  The `beq` branch at 0x22131d8 targets 0x22131c0 and is always taken.
  The return at 0x22131c4 has v0 = one of ret(__glSetError), ret(__GLconvolutionParameter).

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22134c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22134c0-0x22134f4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x22134dc calls __GLgetConvolutionParameter [0x22131e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x22134ec has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2213500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2213500-0x2213534 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x221351c calls __GLgetConvolutionParameter [0x22131e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x221352c has v0 = ret(__GLgetConvolutionParameter).

- `__glim_Map1d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2215bc0-0x2215cb0 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x2215bcc loads 8 bytes from abs 0x1020.
  The `lw` at 0x2215be0 loads 4 bytes from abs 0x1030.
  The `lw` at 0x2215c2c loads 4 bytes from ret(__glSetUpMap1) +0x0.
  The `ld` at 0x2215c78 loads 8 bytes from table(0x90b8) +0x0.
  The `bgezall` at 0x2215c1c calls __glSetUpMap1 [0x2216be0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `bgezall` at 0x2215c40 calls __glSetError [0x22115d0] with a0=0x501, a1=?, a2=?, a3=?, a5=a0-3472.
  The `bgezall` at 0x2215c74 calls __glFillMap1d [0x2216880] with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=entry(0x90b8).
  The `bgezall` at 0x2215ca0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2215c00 targets 0x2215c9c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215c24 targets 0x2215c7c, is taken when v0(=ret(__glSetUpMap1)) == 0, and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0x2215c34 targets 0x2215c50, is taken when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed), and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The `beq` branch at 0x2215c48 targets 0x2215c80 and is always taken.
  The `beq` branch at 0x2215ca8 targets 0x2215c80 and is always taken.
  The return at 0x2215c94 has v0 = one of ret(__glSetError), ?.

- `__glim_Map1f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215cb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2215cb0-0x2215da0 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x2215cbc loads 8 bytes from abs 0x1020.
  The `lw` at 0x2215cd0 loads 4 bytes from abs 0x1030.
  The `lw` at 0x2215d1c loads 4 bytes from ret(__glSetUpMap1) +0x0.
  The `ld` at 0x2215d68 loads 8 bytes from table(0x90b8) +0x0.
  The `bgezall` at 0x2215d0c calls __glSetUpMap1 [0x2216be0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3); fp f15=f13, f16=f14.
  The `bgezall` at 0x2215d2c calls __glSetError [0x22115d0] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2215d64 calls __glFillMap1f [0x2216780] with a0=[ret(__glSetUpMap1)], a1=a4 at entry (arg4), a2=a3 at entry (arg3), a3=a5 at entry (arg5), a4=entry(0x90b8).
  The `bgezall` at 0x2215d90 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2215cf0 targets 0x2215d8c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215d14 targets 0x2215d6c, is taken when v0(=ret(__glSetUpMap1)) == 0, and falls through when v0(=ret(__glSetUpMap1)) != 0.
  The `beq` branch at 0x2215d24 targets 0x2215d3c, is taken when s3(=a3) >= a0(=[ret(__glSetUpMap1)]) (signed), and falls through when s3(=a3) < a0(=[ret(__glSetUpMap1)]) (signed).
  The `beq` branch at 0x2215d34 targets 0x2215d70 and is always taken.
  The `beq` branch at 0x2215d98 targets 0x2215d70 and is always taken.
  The return at 0x2215d84 has v0 = one of ret(__glSetError), ?.

- `__glim_Map2d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215da0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2215da0-0x2215ecc (300 bytes).
  It occupies 300 bytes.
  The `ld` at 0x2215dac loads 8 bytes from abs 0x1020.
  The `lw` at 0x2215dc0 loads 4 bytes from abs 0x1030.
  The `lw` at 0x2215e20 loads 4 bytes from ret(__glSetUpMap2) +0x0.
  The `ld` at 0x2215e98 loads 8 bytes from table(0x9100) +0x0.
  The `bgezall` at 0x2215e10 calls __glSetUpMap2 [0x2216d00] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=?.
  The `bgezall` at 0x2215e3c calls __glSetError [0x22115d0] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2215e94 calls __glFillMap2d [0x2216aa0] with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=?, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=entry(0x9100).
  The `bgezall` at 0x2215ea8 calls __glSetError [0x22115d0] with a0=0x501, a1=?, a2=a7 at entry (arg7), a3=?.
  The `bgezall` at 0x2215ebc calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2215de8 targets 0x2215eb8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215e18 targets 0x2215e44, is taken when v0(=ret(__glSetUpMap2)) == 0, and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0x2215e28 targets 0x2215ea4, is taken when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed), and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0x2215e34 targets 0x2215e64, is taken when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed), and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0x2215e9c targets 0x2215e48 and is always taken.
  The `beq` branch at 0x2215eb0 targets 0x2215e48 and is always taken.
  The `beq` branch at 0x2215ec4 targets 0x2215e48 and is always taken.
  The return at 0x2215e5c has v0 = one of ?, ret(__glFillMap2d), ret(__glSetError).

- `__glim_Map2f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2215ed0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2215ed0-0x2215ff8 (296 bytes).
  It occupies 296 bytes.
  The `ld` at 0x2215edc loads 8 bytes from abs 0x1020.
  The `lw` at 0x2215ef0 loads 4 bytes from abs 0x1030.
  The `lw` at 0x2215f4c loads 4 bytes from ret(__glSetUpMap2) +0x0.
  The `ld` at 0x2215fc8 loads 8 bytes from table(0x9100) +0x0.
  The `bgezall` at 0x2215f3c calls __glSetUpMap2 [0x2216d00] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=?; fp f16=f13, f17=f14, f18=f17, f19=f18.
  The `bgezall` at 0x2215f6c calls __glSetError [0x22115d0] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2215fc4 calls __glFillMap2f [0x2216960] with a0=[ret(__glSetUpMap2)], a1=a4 at entry (arg4), a2=?, a3=a3 at entry (arg3), a4=a7 at entry (arg7), a6=entry(0x9100).
  The `bgezall` at 0x2215fd4 calls __glSetError [0x22115d0] with a0=0x501, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2215fe8 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f19=f18.
  The `beq` branch at 0x2215f18 targets 0x2215fe4, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2215f44 targets 0x2215f74, is taken when v0(=ret(__glSetUpMap2)) == 0, and falls through when v0(=ret(__glSetUpMap2)) != 0.
  The `bne` branch at 0x2215f54 targets 0x2215fd4, is taken when s3(=a3) < a0(=[ret(__glSetUpMap2)]) (signed), and falls through when s3(=a3) >= a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0x2215f64 targets 0x2215f94, is taken when a2(=a7) >= a0(=[ret(__glSetUpMap2)]) (signed), and falls through when a2(=a7) < a0(=[ret(__glSetUpMap2)]) (signed).
  The `beq` branch at 0x2215fcc targets 0x2215f78 and is always taken.
  The `beq` branch at 0x2215fdc targets 0x2215f78 and is always taken.
  The `beq` branch at 0x2215ff0 targets 0x2215f78 and is always taken.
  The return at 0x2215f8c has v0 = one of ?, ret(__glFillMap2f), ret(__glSetError).

- `__glim_MapGrid1d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2216210 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2216210-0x2216294 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x2216214 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2216218 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2216244 stores 4 bytes to [0x1020]:8 +0x8a0.
  The `swc1` at 0x2216254 stores 4 bytes to [0x1020]:8 +0x898.
  The `swc1` at 0x2216260 stores 4 bytes to [0x1020]:8 +0x894.
  The `bgezall` at 0x2216270 calls __glSetError [0x22115d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2216284 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2216234 targets 0x2216280, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x221623c targets 0x2216270, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2216278 targets 0x2216264 and is always taken.
  The `beq` branch at 0x221628c targets 0x2216264 and is always taken.
  The return at 0x221625c has v0 = 0x1.
  The return at 0x2216268 has v0 = ret(__glSetError).

- `__glim_MapGrid1f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22162a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22162a0-0x221631c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x22162a4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22162a8 loads 8 bytes from abs 0x1020.
  The `sw` at 0x22162d4 stores 4 bytes to [0x1020]:8 +0x8a0.
  The `swc1` at 0x22162d8 stores 4 bytes to [0x1020]:8 +0x898.
  The `swc1` at 0x22162dc stores 4 bytes to [0x1020]:8 +0x894.
  The `bgezall` at 0x22162f8 calls __glSetError [0x22115d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x221630c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x22162c4 targets 0x2216308, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x22162cc targets 0x22162f8, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2216300 targets 0x22162ec and is always taken.
  The `beq` branch at 0x2216314 targets 0x22162ec and is always taken.
  The return at 0x22162e4 has v0 = 0x1.
  The return at 0x22162f0 has v0 = ret(__glSetError).

- `__glim_MapGrid2d` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2216320 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2216320-0x22163c4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x2216324 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2216328 loads 8 bytes from abs 0x1020.
  The `sw` at 0x221635c stores 4 bytes to [0x1020]:8 +0x8c0.
  The `sw` at 0x2216360 stores 4 bytes to [0x1020]:8 +0x8b0.
  The `swc1` at 0x2216370 stores 4 bytes to [0x1020]:8 +0x8b8.
  The `swc1` at 0x2216378 stores 4 bytes to [0x1020]:8 +0x8b4.
  The `swc1` at 0x2216380 stores 4 bytes to [0x1020]:8 +0x8a8.
  The `swc1` at 0x221638c stores 4 bytes to [0x1020]:8 +0x8a4.
  The `bgezall` at 0x22163a0 calls __glSetError [0x22115d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x22163b4 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2216344 targets 0x22163b0, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x221634c targets 0x22163a0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2216354 targets 0x22163a0, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0x22163a8 targets 0x2216390 and is always taken.
  The `beq` branch at 0x22163bc targets 0x2216390 and is always taken.
  The return at 0x2216388 has v0 = 0x1.
  The return at 0x2216394 has v0 = ret(__glSetError).
  The instructions from 0x221639c to 0x221639c are not reached by any path from the entry, and their branches are not listed.

- `__glim_MapGrid2f` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22163d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22163d0-0x2216464 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x22163d4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22163d8 loads 8 bytes from abs 0x1020.
  The `sw` at 0x221640c stores 4 bytes to [0x1020]:8 +0x8c0.
  The `swc1` at 0x2216410 stores 4 bytes to [0x1020]:8 +0x8b8.
  The `swc1` at 0x2216414 stores 4 bytes to [0x1020]:8 +0x8b4.
  The `sw` at 0x2216418 stores 4 bytes to [0x1020]:8 +0x8b0.
  The `swc1` at 0x221641c stores 4 bytes to [0x1020]:8 +0x8a8.
  The `swc1` at 0x2216420 stores 4 bytes to [0x1020]:8 +0x8a4.
  The `bgezall` at 0x2216440 calls __glSetError [0x22115d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2216454 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x22163f4 targets 0x2216450, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x22163fc targets 0x2216440, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2216404 targets 0x2216440, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0x2216448 targets 0x2216430 and is always taken.
  The `beq` branch at 0x221645c targets 0x2216430 and is always taken.
  The return at 0x2216428 has v0 = 0x1.
  The return at 0x2216434 has v0 = ret(__glSetError).
  The instructions from 0x221643c to 0x221643c are not reached by any path from the entry, and their branches are not listed.

- `__glim_EvalMesh1` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2216470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2216470-0x2216540 (208 bytes).
  It occupies 208 bytes.
  The `ld` at 0x2216470 loads 8 bytes from abs 0x1020.
  The `lw` at 0x2216480 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22164d0 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x22164e0 stores 4 bytes to abs 0x1030.
  The `bgezall` at 0x22164b0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1030].
  The `jalr` at 0x22164d4 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1030].
  The `bgezall` at 0x22164f8 calls __glSetError [0x22115d0] with a0=0x500, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2216514 calls __glEvalMesh1Point [0x22189a0] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `bgezall` at 0x2216530 calls __glEvalMesh1Line [0x22187d0] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x2216498 targets 0x22164e4, is taken when a4(=[0x1030]) == 0, and falls through when a4(=[0x1030]) != 0.
  The `beq` branch at 0x22164a4 targets 0x22164c8, is taken when a4(=[0x1030]) == v0(=0x2), and falls through when a4(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x22164e8 targets 0x2216524, is taken when a0 == ra(=0x1b01), and falls through when a0 != ra(=0x1b01).
  The `beq` branch at 0x22164f0 targets 0x2216508, is taken when a0 == at(=0x1b00), and falls through when a0 != at(=0x1b00).
  The `beq` branch at 0x2216500 targets 0x22164bc and is always taken.
  The `beq` branch at 0x221651c targets 0x22164bc and is always taken.
  The `beq` branch at 0x2216538 targets 0x22164bc and is always taken.
  The return at 0x22164c0 has v0 = one of ret(__glSetError), ret(__glEvalMesh1Point), ret(__glEvalMesh1Line).

- `__glim_EvalMesh2` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22165b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22165b0-0x22166c8 (280 bytes).
  It occupies 280 bytes.
  The `ld` at 0x22165b0 loads 8 bytes from abs 0x1020.
  The `lw` at 0x22165cc loads 4 bytes from abs 0x1030.
  The `ld` at 0x2216620 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x221662c stores 4 bytes to abs 0x1030.
  The `bgezall` at 0x2216600 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1030].
  The `jalr` at 0x2216624 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[0x1030].
  The `bgezall` at 0x2216654 calls __glSetError [0x22115d0] with a0=0x500, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2216674 calls __glEvalMesh2Point [0x2219090] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0x2216698 calls __glEvalMesh2Fill [0x2218d10] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `bgezall` at 0x22166b8 calls __glEvalMesh2Line [0x2219310] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a3 at entry (arg3), a3=a2 at entry (arg2).
  The `beq` branch at 0x22165e8 targets 0x2216630, is taken when a6(=[0x1030]) == 0, and falls through when a6(=[0x1030]) != 0.
  The `beq` branch at 0x22165f4 targets 0x221661c, is taken when a6(=[0x1030]) == v0(=0x2), and falls through when a6(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2216638 targets 0x2216684, is taken when s0(=a0) == ra(=0x1b02), and falls through when s0(=a0) != ra(=0x1b02).
  The `beq` branch at 0x2216640 targets 0x22166a8, is taken when s0(=a0) == at(=0x1b01), and falls through when s0(=a0) != at(=0x1b01).
  The `beq` branch at 0x2216648 targets 0x2216664, is taken when s0(=a0) == v0(=0x1b00), and falls through when s0(=a0) != v0(=0x1b00).
  The `beq` branch at 0x221665c targets 0x221660c and is always taken.
  The `beq` branch at 0x221667c targets 0x221660c and is always taken.
  The `beq` branch at 0x22166a0 targets 0x221660c and is always taken.
  The `beq` branch at 0x22166c0 targets 0x221660c and is always taken.
  The return at 0x2216614 has v0 = one of ret(__glSetError), ret(__glEvalMesh2Point), ret(__glEvalMesh2Fill), ret(__glEvalMesh2Line).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2219ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2219ae0-0x2219ba4 (196 bytes).
  It occupies 196 bytes.
  The `ldc1` at 0x2219b48 loads 8 bytes from a3 (arg3 at entry) +0x0.
  The `sdc1` at 0x2219b58 stores 8 bytes to ret(NurbsKnots1Common) +0x0.
  2 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x2219b70, `ldc1` at 0x2219b80.
  2 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0x2219b78, `sdc1` at 0x2219b90.
  The `bgezall` at 0x2219b14 calls NurbsKnots1Common [0x22198d0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2219b28 targets 0x2219b94, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2219b30 targets 0x2219b94, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2219b40 targets 0x2219b5c, is taken when (s0(=a2) & 0x1) == 0, and falls through when (s0(=a2) & 0x1) != 0.
  The `beq` branch at 0x2219b5c targets 0x2219b94, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2219b8c targets 0x2219b70, is taken when s0(=a2) != a4(?), and falls through when s0(=a2) == a4(?).
  The return at 0x2219b9c has v0 = ret(NurbsKnots1Common).

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2219bb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2219bb0-0x2219c9c (236 bytes).
  It occupies 236 bytes.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2219c18, `lwc1` at 0x2219c40, `lwc1` at 0x2219c50.
  5 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0x2219c34, `sdc1` at 0x2219c4c, `sdc1` at 0x2219c5c.
  The `bgezall` at 0x2219be4 calls NurbsKnots1Common [0x22198d0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2219bf4 targets 0x2219c8c, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0x2219bfc targets 0x2219c8c, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0x2219c10 targets 0x2219c38, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2219c30 targets 0x2219c18, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2219c38 targets 0x2219c8c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2219c84 targets 0x2219c40, is taken when s0(=a2) != a3(?), and falls through when s0(=a2) == a3(?).
  The return at 0x2219c94 has v0 = ret(NurbsKnots1Common).

- `__glim_Finish` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221af90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221af90-0x221afe8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x221af94 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221af98 loads 8 bytes from abs 0x1020.
  The `ld` at 0x221afb8 loads 8 bytes from [0x1020]:8 +0x4730.
  The `jalr` at 0x221afbc calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x221afd8 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x221afb0 targets 0x221afd4, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221afe0 targets 0x221afc8 and is always taken.
  The return at 0x221afcc has v0 = one of ret(?), ret(__glSetError).

- `__glim_GetMaterialfv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221d8e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221d8e0-0x221da74 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0x221d8e8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221d8ec loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x221d98c loads 4 bytes from ([0x1020]:8 + one of 0x6b0, 0x700) +0x0.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x221d990, `swc1` at 0x221d9c4, `swc1` at 0x221d9f0.
  The `lwc1` at 0x221d994 loads 4 bytes from ([0x1020]:8 + one of 0x6b4, 0x704) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x221d998, `swc1` at 0x221d9d0, `swc1` at 0x221da00.
  The `lwc1` at 0x221d99c loads 4 bytes from ([0x1020]:8 + one of 0x6b8, 0x708) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x221d9a0, `swc1` at 0x221d9e4, `swc1` at 0x221da0c.
  The `lwc1` at 0x221d9a4 loads 4 bytes from ([0x1020]:8 + one of 0x6bc, 0x70c) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0x221d9b4, `swc1` at 0x221da20, `swc1` at 0x221da44.
  The `lwc1` at 0x221d9c0 loads 4 bytes from ([0x1020]:8 + one of 0x6d4, 0x724) +0x0.
  The `lwc1` at 0x221d9c8 loads 4 bytes from ([0x1020]:8 + one of 0x6dc, 0x72c) +0x0.
  The `lwc1` at 0x221d9d4 loads 4 bytes from ([0x1020]:8 + one of 0x6d8, 0x728) +0x0.
  The `lwc1` at 0x221d9e8 loads 4 bytes from ([0x1020]:8 + one of 0x6d0, 0x720) +0x0.
  The `lwc1` at 0x221d9f4 loads 4 bytes from ([0x1020]:8 + one of 0x690, 0x6e0) +0x0.
  The `lwc1` at 0x221d9fc loads 4 bytes from ([0x1020]:8 + one of 0x694, 0x6e4) +0x0.
  The `lwc1` at 0x221da04 loads 4 bytes from ([0x1020]:8 + one of 0x698, 0x6e8) +0x0.
  The `lwc1` at 0x221da10 loads 4 bytes from ([0x1020]:8 + one of 0x69c, 0x6ec) +0x0.
  The `lwc1` at 0x221da24 loads 4 bytes from ([0x1020]:8 + one of 0x6a0, 0x6f0) +0x0.
  The `lwc1` at 0x221da2c loads 4 bytes from ([0x1020]:8 + one of 0x6a4, 0x6f4) +0x0.
  The `lwc1` at 0x221da34 loads 4 bytes from ([0x1020]:8 + one of 0x6a8, 0x6f8) +0x0.
  The `lwc1` at 0x221da3c loads 4 bytes from ([0x1020]:8 + one of 0x6ac, 0x6fc) +0x0.
  The `jalr` at 0x221d92c calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=[0x1020]:8+1760.
  The `jalr` at 0x221d974 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `jalr` at 0x221da4c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1020]:8, a5=a2 at entry (arg2).
  The `jalr` at 0x221da64 calls __glUnScaleColorf [0x2226ec0] with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=([0x1020]:8 + one of 0x6c0, 0x710), a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `beq` branch at 0x221d908 targets 0x221da48, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221d918 targets 0x221d9b8, is taken when a0 == a2(=0x404), and falls through when a0 != a2(=0x404).
  The `beq` branch at 0x221d920 targets 0x221d93c, is taken when a0 == a3(=0x405), and falls through when a0 != a3(=0x405).
  The `beq` branch at 0x221d934 targets 0x221d980 and is always taken.
  The `beq` branch at 0x221d940 targets 0x221d9c0, is taken when a1 == a7(=0x1603), and falls through when a1 != a7(=0x1603).
  The `beq` branch at 0x221d948 targets 0x221d9e8, is taken when a1 == t0(=0x1601), and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0x221d950 targets 0x221da5c, is taken when a1 == t1(=0x1600), and falls through when a1 != t1(=0x1600).
  The `beq` branch at 0x221d95c targets 0x221d9f4, is taken when a1 == t2(=0x1200), and falls through when a1 != t2(=0x1200).
  The `beq` branch at 0x221d964 targets 0x221da24, is taken when a1 == t3(=0x1201), and falls through when a1 != t3(=0x1201).
  The `beq` branch at 0x221d96c targets 0x221d98c, is taken when a1 == t8(=0x1202), and falls through when a1 != t8(=0x1202).
  The `beq` branch at 0x221d9b8 targets 0x221d940 and is always taken.
  The `beq` branch at 0x221d9ec targets 0x221d97c and is always taken.
  The `beq` branch at 0x221da40 targets 0x221d97c and is always taken.
  The `beq` branch at 0x221da54 targets 0x221d980 and is always taken.
  The `beq` branch at 0x221da6c targets 0x221d980 and is always taken.
  The return at 0x221d984 has v0 = one of ret(__glSetError), ?, ret(__glUnScaleColorf).
  The return at 0x221d9b0 has v0 = 0x1.
  The return at 0x221d9e0 has v0 = 0x1.
  The return at 0x221da1c has v0 = 0x1.

- `__glim_GetMaterialiv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221da80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221da80-0x221de10 (912 bytes).
  It occupies 912 bytes.
  The `lw` at 0x221da88 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221da8c loads 8 bytes from abs 0x1020.
  12 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf40, including `lwc1` at 0x221db48, `lwc1` at 0x221db74, `lwc1` at 0x221dba0.
  The `lwc1` at 0x221db4c loads 4 bytes from ([0x1020]:8 + one of 0x6b0, 0x700) +0x0.
  12 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf28, including `lwc1` at 0x221db50, `lwc1` at 0x221db80, `lwc1` at 0x221dbac.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x221db70, `swc1` at 0x221dcb8, `swc1` at 0x221dd78.
  The `lwc1` at 0x221db78 loads 4 bytes from ([0x1020]:8 + one of 0x6b4, 0x704) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x221db9c, `swc1` at 0x221dce4, `swc1` at 0x221dda4.
  The `lwc1` at 0x221dba4 loads 4 bytes from ([0x1020]:8 + one of 0x6b8, 0x708) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x221dbc8, `swc1` at 0x221dd10, `swc1` at 0x221ddd0.
  The `lwc1` at 0x221dbd0 loads 4 bytes from ([0x1020]:8 + one of 0x6bc, 0x70c) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0x221dc04, `swc1` at 0x221dd4c, `swc1` at 0x221de0c.
  The `lwc1` at 0x221dc94 loads 4 bytes from ([0x1020]:8 + one of 0x690, 0x6e0) +0x0.
  The `lwc1` at 0x221dcc0 loads 4 bytes from ([0x1020]:8 + one of 0x694, 0x6e4) +0x0.
  The `lwc1` at 0x221dcec loads 4 bytes from ([0x1020]:8 + one of 0x698, 0x6e8) +0x0.
  The `lwc1` at 0x221dd18 loads 4 bytes from ([0x1020]:8 + one of 0x69c, 0x6ec) +0x0.
  The `lwc1` at 0x221dd54 loads 4 bytes from ([0x1020]:8 + one of 0x6a0, 0x6f0) +0x0.
  The `lwc1` at 0x221dd80 loads 4 bytes from ([0x1020]:8 + one of 0x6a4, 0x6f4) +0x0.
  The `lwc1` at 0x221ddac loads 4 bytes from ([0x1020]:8 + one of 0x6a8, 0x6f8) +0x0.
  The `lwc1` at 0x221ddd8 loads 4 bytes from ([0x1020]:8 + one of 0x6ac, 0x6fc) +0x0.
  The `jalr` at 0x221dacc calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a4=0x405, a5=[0x1020]:8+1760.
  The `jalr` at 0x221db20 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0x221db5c calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221db88 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dbb4 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dbe0 calls floorf with a0=([0x1020]:8 + one of 0x690, 0x6e0), a1=a2 at entry (arg2), a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dc0c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x221dc34 calls __glConvertResult [0x221ecd0] with a0=[0x1020]:8, a1=0x0, a2=([0x1020]:8 + one of 0x6d4, 0x724), a3=0x3, a4=a2 at entry (arg2), a5=0x3, a6=0x1603.
  The `bgezall` at 0x221dc60 calls __glConvertResult [0x221ecd0] with a0=[0x1020]:8, a1=0x0, a2=([0x1020]:8 + one of 0x6d0, 0x720), a3=0x3, a4=a2 at entry (arg2), a5=0x1, a6=0x1603, a7=0x1601.
  The `jalr` at 0x221dc7c calls __glUnScaleColori [0x2226f10] with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=([0x1020]:8 + one of 0x6c0, 0x710), a3=0x404, a6=0x1603, a7=0x1601.
  The `jalr` at 0x221dca4 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=([0x1020]:8 + one of 0x690, 0x6e0), a6=0x1603, a7=0x1601; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dcd0 calls floorf with a0=?, a1=?, a2=?, a3=?, a4=([0x1020]:8 + one of 0x690, 0x6e0), a5=a2 at entry (arg2); fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dcfc calls floorf with a0=?, a1=?, a2=?, a3=?, a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=a2 at entry (arg2); fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dd28 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dd64 calls floorf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x404, a6=0x1603, a7=0x1601; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dd90 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221ddbc calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `jalr` at 0x221dde8 calls floorf with a0=?, a1=?, a2=?, a3=?; fp f14=[[0x1020]:8+3904].
  The `beq` branch at 0x221daa4 targets 0x221dc08, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221dab4 targets 0x221db3c, is taken when a0 == a3(=0x404), and falls through when a0 != a3(=0x404).
  The `beq` branch at 0x221dac0 targets 0x221dadc, is taken when a0 == a4(=0x405), and falls through when a0 != a4(=0x405).
  The `beq` branch at 0x221dad4 targets 0x221db2c and is always taken.
  The `beq` branch at 0x221dae4 targets 0x221dc1c, is taken when a1 == a6(=0x1603), and falls through when a1 != a6(=0x1603).
  The `beq` branch at 0x221daf0 targets 0x221dc44, is taken when a1 == a7(=0x1601), and falls through when a1 != a7(=0x1601).
  The `beq` branch at 0x221daf8 targets 0x221dc70, is taken when a1 == t0(=0x1600), and falls through when a1 != t0(=0x1600).
  The `beq` branch at 0x221db04 targets 0x221dc8c, is taken when a1 == t1(=0x1200), and falls through when a1 != t1(=0x1200).
  The `beq` branch at 0x221db0c targets 0x221dd50, is taken when a1 == t2(=0x1201), and falls through when a1 != t2(=0x1201).
  The `beq` branch at 0x221db18 targets 0x221db44, is taken when a1 == t3(=0x1202), and falls through when a1 != t3(=0x1202).
  The `beq` branch at 0x221db3c targets 0x221dae0 and is always taken.
  The `beq` branch at 0x221dc14 targets 0x221db2c and is always taken.
  The `beq` branch at 0x221dc3c targets 0x221db2c and is always taken.
  The `beq` branch at 0x221dc68 targets 0x221db2c and is always taken.
  The `beq` branch at 0x221dc84 targets 0x221db2c and is always taken.
  The return at 0x221db34 has v0 = one of ret(__glSetError), ret(__glConvertResult), ret(__glUnScaleColori).
  The return at 0x221dc00 has v0 = ret(floorf).
  The return at 0x221dd48 has v0 = ret(floorf).
  The return at 0x221de08 has v0 = ret(floorf).

- `__glim_GetMapiv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221e4a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221e4a0-0x221e704 (612 bytes).
  It occupies 612 bytes.
  The `lw` at 0x221e4a8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221e4ac loads 8 bytes from abs 0x1020.
  The `ld` at 0x221e4f4 loads 8 bytes from table(0x22c98a8) +0x0.
  2 such `lw` accesses load 4 bytes from ([0x1020]:8 + (a0 << 0x5)) -0x12414, including `lw` at 0x221e5a0, `lw` at 0x221e600.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x221e5ac, `sw` at 0x221e5c4.
  2 such `lw` accesses load 4 bytes from table(0xfffffffffffdfe0c) +0x0, including `lw` at 0x221e5c0, `lw` at 0x221e650.
  2 such `lw` accesses load 4 bytes from table(0xfffffffffffdfe10) +0x0, including `lw` at 0x221e5c8, `lw` at 0x221e64c.
  The `sw` at 0x221e5d4 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lw` at 0x221e5fc loads 4 bytes from ([0x1020]:8 + (a0 << 0x5)) -0x12418.
  The `ld` at 0x221e620 loads 8 bytes from ([0x1020]:8 + (a0 << 0x3)) +0x2438.
  The `lw` at 0x221e658 loads 4 bytes from table(0xfffffffffffdfe08) +0x0.
  The `ld` at 0x221e684 loads 8 bytes from ([0x1020]:8 + (a0 << 0x3)) +0x2380.
  The `jalr` at 0x221e504 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0x22c98a8), a7=a0 at entry (arg0).
  The `jalr` at 0x221e54c calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0x22c98a8), a7=a0 at entry (arg0).
  The `jalr` at 0x221e584 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=table(0x22c98a8), a7=a0 at entry (arg0).
  The `jalr` at 0x221e5dc calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a2 at entry (arg2), a7=a0 at entry (arg0).
  The `bgezall` at 0x221e624 calls __glConvertResult [0x221ecd0] with a0=[0x1020]:8, a1=0x0, a2=[([0x1020]:8 + (a0 << 0x3))+9272]:8, a3=0x3, a4=a2 at entry (arg2), a6=0xffffffffffff0000, a7=a0 at entry (arg0).
  The `bgezall` at 0x221e688 calls __glConvertResult [0x221ecd0] with a0=[0x1020]:8, a1=0x0, a2=[([0x1020]:8 + (a0 << 0x3))+9088]:8, a3=0x3, a4=a2 at entry (arg2), a6=entry(0xfffffffffffdfe10), a7=a0 at entry (arg0).
  The `bgezall` at 0x221e6b8 calls __glConvertResult [0x221ecd0] with a0=[0x1020]:8, a1=0x0, a2=([0x1020]:8 + (a0 << 0x5))-74768, a3=0x3, a4=a2 at entry (arg2), a5=0x2, a6=0xfffffffffffedbf0, a7=a0 at entry (arg0).
  The `bgezall` at 0x221e6f4 calls __glConvertResult [0x221ecd0] with a0=[0x1020]:8, a1=0x0, a2=table(0xfffffffffffdfe14), a3=0x3, a4=a2 at entry (arg2), a5=0x4, a6=0xfffffffffffdfe14, a7=a0 at entry (arg0).
  The `beq` branch at 0x221e4c8 targets 0x221e5d8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221e4ec targets 0x221e500, is taken when t1(?) >= 0x29 (unsigned), and falls through when t1(?) < 0x29 (unsigned).
  The `beq` branch at 0x221e52c targets 0x221e5ec, is taken when a1 == t2(=0xa00), and falls through when a1 != t2(=0xa00).
  The `beq` branch at 0x221e538 targets 0x221e698, is taken when a1 == t3(=0xa02), and falls through when a1 != t3(=0xa02).
  The `beq` branch at 0x221e544 targets 0x221e594, is taken when a1 == t8(=0xa01), and falls through when a1 != t8(=0xa01).
  The `beq` branch at 0x221e554 targets 0x221e510 and is always taken.
  The `beq` branch at 0x221e560 targets 0x221e634, is taken when a1 == t9(=0xa00), and falls through when a1 != t9(=0xa00).
  The `beq` branch at 0x221e570 targets 0x221e6c8, is taken when a1 == ra(=0xa02), and falls through when a1 != ra(=0xa02).
  The `beq` branch at 0x221e578 targets 0x221e5b0, is taken when a1 == at(=0xa01), and falls through when a1 != at(=0xa01).
  The `beq` branch at 0x221e58c targets 0x221e510 and is always taken.
  The `beq` branch at 0x221e5e4 targets 0x221e510 and is always taken.
  The `beq` branch at 0x221e62c targets 0x221e510 and is always taken.
  The `beq` branch at 0x221e690 targets 0x221e510 and is always taken.
  The `beq` branch at 0x221e6c0 targets 0x221e510 and is always taken.
  The `beq` branch at 0x221e6fc targets 0x221e510 and is always taken.
  The return at 0x221e514 has v0 = one of ret(__glSetError), ret(__glConvertResult).
  The return at 0x221e5a8 has v0 = [([0x1020]:8 + (a0 << 0x5))-74772].
  The return at 0x221e5d0 has v0 = 0x1.
  The indirect jump at 0x221e4f8 uses the jump table at 0x22c98a8 with targets 0x221e51c, 0x221e51c, 0x221e51c, 0x221e51c, 0x221e51c, 0x221e51c, 0x221e51c, 0x221e51c, 0x221e51c, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e500, 0x221e55c, 0x221e55c, 0x221e55c, 0x221e55c, 0x221e55c, 0x221e55c, 0x221e55c, 0x221e55c, 0x221e55c.

- `__glim_GetPixelMapfv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221e710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221e710-0x221e8d0 (448 bytes).
  It occupies 448 bytes.
  The `lw` at 0x221e718 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221e71c loads 8 bytes from abs 0x1020.
  The `ld` at 0x221e764 loads 8 bytes from table(0x22c99f0) +0x0.
  2 such `lw` accesses load 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238, including `lw` at 0x221e77c, `lw` at 0x221e83c.
  2 such `ld` accesses load 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230, including `ld` at 0x221e78c, `ld` at 0x221e850.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x221e7a0, `lw` at 0x221e7d0, `lw` at 0x221e7e0.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x221e7c0, `swc1` at 0x221e7dc, `swc1` at 0x221e7ec.
  The `lwc1` at 0x221e864 loads 4 bytes from [([0x1020]:8 + (a0 << 0x4))-49712]:8 +0x0.
  The `swc1` at 0x221e874 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x221e880, `lwc1` at 0x221e88c.
  The `jalr` at 0x221e8ac calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=table(0x22c99f0), a4=[0x1020]:8, a5=a1 at entry (arg1).
  The `jalr` at 0x221e8c0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1020]:8, a5=a1 at entry (arg1).
  The `beq` branch at 0x221e738 targets 0x221e8bc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221e75c targets 0x221e8a8, is taken when a7(?) >= 0xa (unsigned), and falls through when a7(?) < 0xa (unsigned).
  The `bltz` branch at 0x221e790 targets 0x221e820, is taken when t0(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed), and falls through when t0(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e798 targets 0x221e7c4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x221e7bc targets 0x221e7a0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x221e7c4 targets 0x221e820, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x221e818 targets 0x221e7d0, is taken when a3(?) != a4(=-0x1), and falls through when a3(?) == a4(=-0x1).
  The `bltz` branch at 0x221e854 targets 0x221e820, is taken when t9(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed), and falls through when t9(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e85c targets 0x221e878, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x221e878 targets 0x221e8a0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x221e898 targets 0x221e880, is taken when a3(?) != a4(=-0x1), and falls through when a3(?) == a4(=-0x1).
  The `beq` branch at 0x221e8a0 targets 0x221e824 and is always taken.
  The `beq` branch at 0x221e8b4 targets 0x221e824 and is always taken.
  The `beq` branch at 0x221e8c8 targets 0x221e824 and is always taken.
  The return at 0x221e828 has v0 = one of 0x1, ret(__glSetError).
  The indirect jump at 0x221e768 uses the jump table at 0x22c99f0 with targets 0x221e770, 0x221e770, 0x221e830, 0x221e830, 0x221e830, 0x221e830, 0x221e830, 0x221e830, 0x221e830, 0x221e830.

- `__glim_GetPixelMapuiv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221e8d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221e8d0-0x221ead0 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x221e8d8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221e8dc loads 8 bytes from abs 0x1020.
  The `ld` at 0x221e928 loads 8 bytes from table(0x22c9a40) +0x0.
  2 such `lw` accesses load 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238, including `lw` at 0x221e93c, `lw` at 0x221e9c0.
  2 such `ld` accesses load 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230, including `ld` at 0x221e94c, `ld` at 0x221e9d0.
  The `lw` at 0x221e968 loads 4 bytes from [([0x1020]:8 + (a0 << 0x4))-49712]:8 +0x0.
  The `sw` at 0x221e974 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x221e980, `lw` at 0x221e990.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x221e988, `sw` at 0x221e99c, `sw` at 0x221ea10.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x221e9e4, `lwc1` at 0x221ea20, `lwc1` at 0x221ea3c.
  5 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf40, including `lwc1` at 0x221e9e8, `lwc1` at 0x221ea24, `lwc1` at 0x221ea40.
  5 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf28, including `lwc1` at 0x221e9ec, `lwc1` at 0x221ea28, `lwc1` at 0x221ea44.
  The `jalr` at 0x221eaac calls __glSetError [0x22115d0] with a0=0x500, a1=table(0x22c9a40), a2=?, a3=a1 at entry (arg1), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `jalr` at 0x221eac0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `beq` branch at 0x221e8f8 targets 0x221eabc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221e920 targets 0x221eaa8, is taken when a4(?) >= 0xa (unsigned), and falls through when a4(?) < 0xa (unsigned).
  The `bltz` branch at 0x221e950 targets 0x221e9a0, is taken when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed), and falls through when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e95c targets 0x221e978, is taken when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) == 0, and falls through when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) != 0.
  The `beq` branch at 0x221e978 targets 0x221e9a0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x221e998 targets 0x221e980, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0x221e9d4 targets 0x221e9a0, is taken when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed), and falls through when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221e9dc targets 0x221ea14, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x221ea0c targets 0x221e9e4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x221ea14 targets 0x221eaa0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x221ea98 targets 0x221ea20, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `beq` branch at 0x221eaa0 targets 0x221e9a4 and is always taken.
  The `beq` branch at 0x221eab4 targets 0x221e9a4 and is always taken.
  The `beq` branch at 0x221eac8 targets 0x221e9a4 and is always taken.
  The return at 0x221e9a8 has v0 = one of 0x1, ret(__glSetError).
  The indirect jump at 0x221e92c uses the jump table at 0x22c9a40 with targets 0x221e934, 0x221e934, 0x221e9b0, 0x221e9b0, 0x221e9b0, 0x221e9b0, 0x221e9b0, 0x221e9b0, 0x221e9b0, 0x221e9b0.

- `__glim_GetPixelMapusv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221ead0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221ead0-0x221ecd0 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x221ead8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221eadc loads 8 bytes from abs 0x1020.
  The `ld` at 0x221eb28 loads 8 bytes from table(0x22c9a90) +0x0.
  2 such `lw` accesses load 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc238, including `lw` at 0x221eb3c, `lw` at 0x221ebc0.
  2 such `ld` accesses load 8 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc230, including `ld` at 0x221eb4c, `ld` at 0x221ebd0.
  The `lw` at 0x221eb68 loads 4 bytes from [([0x1020]:8 + (a0 << 0x4))-49712]:8 +0x0.
  The `sh` at 0x221eb74 stores 2 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x221eb80, `lw` at 0x221eb90.
  7 such `sh` accesses store 2 bytes to ?, including `sh` at 0x221eb88, `sh` at 0x221eb9c, `sh` at 0x221ec10.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x221ebe4, `lwc1` at 0x221ec20, `lwc1` at 0x221ec3c.
  5 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf38, including `lwc1` at 0x221ebe8, `lwc1` at 0x221ec24, `lwc1` at 0x221ec40.
  5 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf28, including `lwc1` at 0x221ebec, `lwc1` at 0x221ec28, `lwc1` at 0x221ec44.
  The `jalr` at 0x221ecac calls __glSetError [0x22115d0] with a0=0x500, a1=table(0x22c9a90), a2=?, a3=a1 at entry (arg1), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `jalr` at 0x221ecc0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8, a6=a1 at entry (arg1).
  The `beq` branch at 0x221eaf8 targets 0x221ecbc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221eb20 targets 0x221eca8, is taken when a4(?) >= 0xa (unsigned), and falls through when a4(?) < 0xa (unsigned).
  The `bltz` branch at 0x221eb50 targets 0x221eba0, is taken when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed), and falls through when t1(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221eb5c targets 0x221eb78, is taken when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) == 0, and falls through when (a7(=[([0x1020]:8 + (a0 << 0x4))-49720]) & 0x1) != 0.
  The `beq` branch at 0x221eb78 targets 0x221eba0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x221eb98 targets 0x221eb80, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `bltz` branch at 0x221ebd4 targets 0x221eba0, is taken when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) < 0 (signed), and falls through when ra(=[([0x1020]:8 + (a0 << 0x4))-49720]-1) >= 0 (signed).
  The `beq` branch at 0x221ebdc targets 0x221ec14, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x221ec0c targets 0x221ebe4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x221ec14 targets 0x221eca0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x221ec98 targets 0x221ec20, is taken when a1(?) != a4(=-0x1), and falls through when a1(?) == a4(=-0x1).
  The `beq` branch at 0x221eca0 targets 0x221eba4 and is always taken.
  The `beq` branch at 0x221ecb4 targets 0x221eba4 and is always taken.
  The `beq` branch at 0x221ecc8 targets 0x221eba4 and is always taken.
  The return at 0x221eba8 has v0 = one of 0x1, ret(__glSetError).
  The indirect jump at 0x221eb2c uses the jump table at 0x22c9a90 with targets 0x221eb34, 0x221eb34, 0x221ebb0, 0x221ebb0, 0x221ebb0, 0x221ebb0, 0x221ebb0, 0x221ebb0, 0x221ebb0, 0x221ebb0.

- `__glim_GetDoublev` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223340 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2223340-0x222337c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x2223364 calls __glDoGet [0x221f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0x22c9ae0, a4=0xbd458.
  The return at 0x2223374 has v0 = ret(__glDoGet).

- `__glim_GetFloatv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2223380-0x22233bc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x22233a4 calls __glDoGet [0x221f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x22c9af0, a4=0xbd418.
  The return at 0x22233b4 has v0 = ret(__glDoGet).

- `__glim_GetIntegerv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22233c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22233c0-0x22233fc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x22233e4 calls __glDoGet [0x221f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x22c9b00, a4=0xbd3d8.
  The return at 0x22233f4 has v0 = ret(__glDoGet).

- `__glim_GetBooleanv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2223400-0x222343c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x2223424 calls __glDoGet [0x221f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0x22c9b10, a4=0xbd398.
  The return at 0x2223434 has v0 = ret(__glDoGet).

- `__glim_GetString` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22234a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22234a0-0x2223560 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x22234a0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22234ac loads 8 bytes from abs 0x1020.
  The `ld` at 0x2223514 loads 8 bytes from [0x1020]:8 +0xf60.
  The `ld` at 0x2223524 loads 8 bytes from [0x1020]:8 +0xf48.
  The `ld` at 0x2223538 loads 8 bytes from [0x1020]:8 +0xf50.
  The `ld` at 0x2223540 loads 8 bytes from [0x1020]:8 +0xf58.
  The `jalr` at 0x22234ec calls __glSetError [0x22115d0] with a0=0x500, a1=0x1f02, a2=0x1f03, a3=[0x1020]:8.
  The `jalr` at 0x222354c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1020]:8.
  The `beq` branch at 0x22234bc targets 0x2223544, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x22234c8 targets 0x2223524, is taken when a0 == v0(=0x1f00), and falls through when a0 != v0(=0x1f00).
  The `beq` branch at 0x22234d0 targets 0x2223534, is taken when a0 == v1(=0x1f01), and falls through when a0 != v1(=0x1f01).
  The `beq` branch at 0x22234d8 targets 0x222353c, is taken when a0 == a1(=0x1f02), and falls through when a0 != a1(=0x1f02).
  The `beq` branch at 0x22234e0 targets 0x2223514, is taken when a0 == a2(=0x1f03), and falls through when a0 != a2(=0x1f03).
  The `beq` branch at 0x2223534 targets 0x2223508 and is always taken.
  The `beq` branch at 0x222353c targets 0x2223508 and is always taken.
  The `beq` branch at 0x2223558 targets 0x2223508 and is always taken.
  The return at 0x2223500 has v0 = 0x0.
  The return at 0x222350c has v0 = one of [[0x1020]:8+3920]:8, [[0x1020]:8+3928]:8, 0x0.
  The return at 0x222351c has v0 = [[0x1020]:8+3936]:8.
  The return at 0x222352c has v0 = [[0x1020]:8+3912]:8.

- `__glim_GetPointervEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2223560 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2223560-0x22236d8 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0x2223568 loads 4 bytes from abs 0x1030.
  The `ld` at 0x222356c loads 8 bytes from abs 0x1020.
  The `ld` at 0x22235d0 loads 8 bytes from [0x1020]:8 +0x16b0.
  8 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x22235d8, `sd` at 0x2223610, `sd` at 0x2223654.
  The `ld` at 0x2223604 loads 8 bytes from [0x1020]:8 +0x1620.
  The `ld` at 0x2223648 loads 8 bytes from [0x1020]:8 +0x14a8.
  The `ld` at 0x2223664 loads 8 bytes from [0x1020]:8 +0x1668.
  The `ld` at 0x222367c loads 8 bytes from [0x1020]:8 +0x1470.
  The `ld` at 0x2223690 loads 8 bytes from [0x1020]:8 +0x1640.
  The `ld` at 0x22236a8 loads 8 bytes from [0x1020]:8 +0x15f8.
  The `ld` at 0x22236b8 loads 8 bytes from [0x1020]:8 +0x1688.
  The `jalr` at 0x2223618 calls __glSetError [0x22115d0] with a0=0x500, a1=a1 at entry (arg1), a2=?, a3=[0x1020]:8, a4=one of 0x808e, 0x8092.
  The `jalr` at 0x22236c8 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1020]:8, a4=0x8090.
  The `beq` branch at 0x2223588 targets 0x22236c4, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bne` branch at 0x2223594 targets 0x22235dc, is taken when a0 < a4(=0x8090) (unsigned), and falls through when a0 >= a4(=0x8090) (unsigned).
  The `beq` branch at 0x22235ac targets 0x2223688, is taken when a4(=0x8090) >= a0 (unsigned), and falls through when a4(=0x8090) < a0 (unsigned).
  The `bne` branch at 0x22235b8 targets 0x2223658, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x22235c0 targets 0x22236b8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x22235c8 targets 0x2223618, is taken when a0 != t0(=0x8093), and falls through when a0 == t0(=0x8093).
  The `beq` branch at 0x22235d4 targets 0x2223620 and is always taken.
  The `bne` branch at 0x22235e8 targets 0x2223630, is taken when a0 < a4(=0x808e) (unsigned), and falls through when a0 >= a4(=0x808e) (unsigned).
  The `beq` branch at 0x22235f0 targets 0x22236a0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x22235f8 targets 0x2223614, is taken when a0 != t8(=0x808f), and falls through when a0 == t8(=0x808f).
  The `bne` branch at 0x2223634 targets 0x2223674, is taken when a0 < 0xdf3 (unsigned), and falls through when a0 >= 0xdf3 (unsigned).
  The `beq` branch at 0x222363c targets 0x2223614, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2223658 targets 0x2223618, is taken when a0 != v1(=0x8091), and falls through when a0 == v1(=0x8091).
  The `bne` branch at 0x2223674 targets 0x2223618, is taken when a0 != a2(=0xdf0), and falls through when a0 == a2(=0xdf0).
  The `beq` branch at 0x2223680 targets 0x2223620 and is always taken.
  The `beq` branch at 0x22236bc targets 0x2223620 and is always taken.
  The `beq` branch at 0x22236d0 targets 0x2223624 and is always taken.
  The return at 0x222360c has v0 = 0x1.
  The return at 0x2223628 has v0 = one of ?, ret(__glSetError).
  The return at 0x2223650 has v0 = [[0x1020]:8+5288]:8.
  The return at 0x222366c has v0 = 0x1.
  The return at 0x2223698 has v0 = 0x1.
  The return at 0x22236b0 has v0 = 0x1.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2224c30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2224c30-0x2224c64 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2224c4c calls __glGetHistogramParameters [0x2224a80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x2224c5c has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2224c70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2224c70-0x2224ca4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x2224c8c calls __glGetHistogramParameters [0x2224a80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x2224c9c has v0 = ret(__glGetHistogramParameters).

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2225220 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2225220-0x2225290 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2225224 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2225270 loads 8 bytes from abs 0x1020.
  The `jalr` at 0x2225250 calls __glSetError [0x22115d0] with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x222526c calls __glResetMinmax [0x2224ff0] with a0=[0x1020]:8, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2225280 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x222523c targets 0x222527c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2225248 targets 0x2225268, is taken when a0 == a1(=0x802e), and falls through when a0 != a1(=0x802e).
  The `beq` branch at 0x2225274 targets 0x222525c and is always taken.
  The `beq` branch at 0x2225288 targets 0x222525c and is always taken.
  The return at 0x2225260 has v0 = one of ret(__glSetError), ret(__glResetMinmax).

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2225540 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2225540-0x2225574 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x222555c calls __glGetMinmaxParameters [0x2225460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0x222556c has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2225580 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2225580-0x22255b4 (52 bytes).
  It occupies 52 bytes.
  The `bgezall` at 0x222559c calls __glGetMinmaxParameters [0x2225460] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0x22255ac has v0 = ret(__glGetMinmaxParameters).

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22333a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22333a0-0x22333ac (12 bytes).
  It occupies 12 bytes.
  The return at 0x22333a4 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22333c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22333c0-0x22333cc (12 bytes).
  It occupies 12 bytes.
  The return at 0x22333c4 has v0 = ?.

- `__glim_Normal3dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2238360 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2238360-0x223838c (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x2238360 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0x2238364 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0x2238368 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0x223836c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0x2238378 stores 4 bytes to [0x1020]:8 +0x180.
  The `swc1` at 0x2238380 stores 4 bytes to [0x1020]:8 +0x17c.
  The `swc1` at 0x2238388 stores 4 bytes to [0x1020]:8 +0x178.
  The return at 0x2238384 has v0 = ?.

- `__glim_Normal3sv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22384b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22384b0-0x2238510 (96 bytes).
  It occupies 96 bytes.
  The `lh` at 0x22384b0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x22384c0 loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x22384c8 loads 4 bytes from [0x1020]:8 +0xf3c.
  The `swc1` at 0x22384d0 stores 4 bytes to [0x1020]:8 +0x178.
  The `lh` at 0x22384d4 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `swc1` at 0x22384ec stores 4 bytes to [0x1020]:8 +0x17c.
  The `lh` at 0x22384f0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0x223850c stores 4 bytes to [0x1020]:8 +0x180.
  The return at 0x2238508 has v0 = ([a0+4]:2 << 0x1)+1.

- `__glim_Normal3i` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2238510 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2238510-0x223856c (92 bytes).
  It occupies 92 bytes.
  The `lwc1` at 0x223852c loads 4 bytes from abs 0x22e07a8.
  The `lwc1` at 0x2238538 loads 4 bytes from abs 0x22e0778.
  The `ld` at 0x2238540 loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x223854c loads 4 bytes from [0x1020]:8 +0xf44.
  The `swc1` at 0x2238558 stores 4 bytes to [0x1020]:8 +0x180.
  The `swc1` at 0x2238560 stores 4 bytes to [0x1020]:8 +0x17c.
  The `swc1` at 0x2238568 stores 4 bytes to [0x1020]:8 +0x178.
  The return at 0x2238564 has v0 = [0x1020]:8.

- `__glim_Normal3iv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2238570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2238570-0x22385d8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x2238570 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x2238588 loads 4 bytes from abs 0x22e07a8.
  The `lwc1` at 0x223858c loads 4 bytes from abs 0x22e0778.
  The `ld` at 0x2238594 loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x2238598 loads 4 bytes from [0x1020]:8 +0xf44.
  The `swc1` at 0x22385a0 stores 4 bytes to [0x1020]:8 +0x178.
  The `lw` at 0x22385a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0x22385b8 stores 4 bytes to [0x1020]:8 +0x17c.
  The `lw` at 0x22385bc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0x22385d4 stores 4 bytes to [0x1020]:8 +0x180.
  The return at 0x22385d0 has v0 = [0x1020]:8.

- `__glim_RasterPos2dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22466d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22466d0-0x224676c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x22466d4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x22466d8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2246724 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2246738 stores 4 bytes to abs 0x1030.
  The `ldc1` at 0x224673c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0x2246748 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x2246754 loads 8 bytes from ?.
  The `jalr` at 0x224670c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2246728 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x224675c calls (unknown callee) with a0=?, a1=sp-48, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x22466f4 targets 0x224673c, is taken when a2(=[0x1030]) == 0, and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2246700 targets 0x2246724, is taken when a2(=[0x1030]) == v0(=0x2), and falls through when a2(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2246764 targets 0x2246718 and is always taken.
  The return at 0x224671c has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos2fv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2246770 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2246770-0x22467f0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x2246774 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2246778 loads 8 bytes from abs 0x1020.
  The `ld` at 0x22467bc loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x22467d0 stores 4 bytes to abs 0x1030.
  The `ld` at 0x22467d4 loads 8 bytes from [0x1020]:8 +0x4db8.
  The `jalr` at 0x22467ac calls __glSetError [0x22115d0] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22467c0 calls (unknown callee) with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22467d8 calls (unknown callee) with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[0x1020]:8.
  The `beq` branch at 0x2246794 targets 0x22467d4, is taken when a3(=[0x1030]) == 0, and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x22467a0 targets 0x22467bc, is taken when a3(=[0x1030]) == v0(=0x2), and falls through when a3(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x22467b4 targets 0x22467e0 and is always taken.
  The return at 0x22467e8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos3dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2246bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2246bf0-0x2246c98 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x2246bf4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2246bf8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2246c44 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2246c58 stores 4 bytes to abs 0x1030.
  The `ldc1` at 0x2246c5c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0x2246c68 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0x2246c74 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x2246c80 loads 8 bytes from ?.
  The `jalr` at 0x2246c2c calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2246c48 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2246c88 calls (unknown callee) with a0=?, a1=sp-48, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x2246c14 targets 0x2246c5c, is taken when a2(=[0x1030]) == 0, and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2246c20 targets 0x2246c44, is taken when a2(=[0x1030]) == v0(=0x2), and falls through when a2(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2246c90 targets 0x2246c38 and is always taken.
  The return at 0x2246c3c has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos3fv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2246ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2246ca0-0x2246d20 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x2246ca4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2246ca8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2246cec loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2246d00 stores 4 bytes to abs 0x1030.
  The `ld` at 0x2246d04 loads 8 bytes from [0x1020]:8 +0x4dc0.
  The `jalr` at 0x2246cdc calls __glSetError [0x22115d0] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x2246cf0 calls (unknown callee) with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x2246d08 calls (unknown callee) with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[0x1020]:8.
  The `beq` branch at 0x2246cc4 targets 0x2246d04, is taken when a3(=[0x1030]) == 0, and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2246cd0 targets 0x2246cec, is taken when a3(=[0x1030]) == v0(=0x2), and falls through when a3(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2246ce4 targets 0x2246d10 and is always taken.
  The return at 0x2246d18 has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos4dv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247190 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2247190-0x2247244 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x2247194 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2247198 loads 8 bytes from abs 0x1020.
  The `ld` at 0x22471e4 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x22471f8 stores 4 bytes to abs 0x1030.
  The `ldc1` at 0x22471fc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0x2247208 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0x2247214 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0x2247220 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x224722c loads 8 bytes from ?.
  The `jalr` at 0x22471cc calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x22471e8 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=[0x1020]:8, a4=a0 at entry (arg0).
  The `jalr` at 0x2247234 calls (unknown callee) with a0=?, a1=sp-48, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x22471b4 targets 0x22471fc, is taken when a2(=[0x1030]) == 0, and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x22471c0 targets 0x22471e4, is taken when a2(=[0x1030]) == v0(=0x2), and falls through when a2(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x224723c targets 0x22471d8 and is always taken.
  The return at 0x22471dc has v0 = one of ret(__glSetError), ret(?).

- `__glim_RasterPos4fv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247250 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2247250-0x22472d0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x2247254 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2247258 loads 8 bytes from abs 0x1020.
  The `ld` at 0x224729c loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x22472b0 stores 4 bytes to abs 0x1030.
  The `ld` at 0x22472b4 loads 8 bytes from [0x1020]:8 +0x4dc8.
  The `jalr` at 0x224728c calls __glSetError [0x22115d0] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22472a0 calls (unknown callee) with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8.
  The `jalr` at 0x22472b8 calls (unknown callee) with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[0x1020]:8.
  The `beq` branch at 0x2247274 targets 0x22472b4, is taken when a3(=[0x1030]) == 0, and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2247280 targets 0x224729c, is taken when a3(=[0x1030]) == v0(=0x2), and falls through when a3(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2247294 targets 0x22472c0 and is always taken.
  The return at 0x22472c8 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247c50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2247c50-0x2247d04 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x2247c54 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2247c5c loads 8 bytes from abs 0x1020.
  The `ld` at 0x2247cb8 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2247cd8 stores 4 bytes to abs 0x1030.
  The `ld` at 0x2247ce0 loads 8 bytes from [0x1020]:8 +0x49c0.
  The `jalr` at 0x2247ca4 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247cbc calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247cec calls (unknown callee) with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2247c7c targets 0x2247cdc, is taken when a2(=[0x1030]) == 0, and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2247c98 targets 0x2247cb4, is taken when a2(=[0x1030]) == v0(=0x2), and falls through when a2(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2247cac targets 0x2247cf4 and is always taken.
  The return at 0x2247cfc has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectdv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2247d10-0x2247db8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x2247d14 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2247d18 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2247d60 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2247d78 stores 4 bytes to abs 0x1030.
  The `ldc1` at 0x2247d7c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0x2247d80 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ldc1` at 0x2247d84 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ldc1` at 0x2247d88 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x2247d8c loads 8 bytes from [0x1020]:8 +0x49c0.
  The `jalr` at 0x2247d50 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247d64 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247da0 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `beq` branch at 0x2247d34 targets 0x2247d7c, is taken when a3(=[0x1030]) == 0, and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2247d44 targets 0x2247d60, is taken when a3(=[0x1030]) == v0(=0x2), and falls through when a3(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2247d58 targets 0x2247da8 and is always taken.
  The return at 0x2247db0 has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247dc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2247dc0-0x2247e74 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x2247dc4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2247dcc loads 8 bytes from abs 0x1020.
  The `ld` at 0x2247e28 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2247e48 stores 4 bytes to abs 0x1030.
  The `ld` at 0x2247e50 loads 8 bytes from [0x1020]:8 +0x49c0.
  The `jalr` at 0x2247e14 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247e2c calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1030], a3=a3 at entry (arg3).
  The `jalr` at 0x2247e5c calls (unknown callee) with a0=[0x1020]:8, a1=?, a2=?, a3=?; fp f13=f12, f14=f13, f15=f14, f16=f15.
  The `beq` branch at 0x2247dec targets 0x2247e4c, is taken when a2(=[0x1030]) == 0, and falls through when a2(=[0x1030]) != 0.
  The `beq` branch at 0x2247e08 targets 0x2247e24, is taken when a2(=[0x1030]) == v0(=0x2), and falls through when a2(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2247e1c targets 0x2247e64 and is always taken.
  The return at 0x2247e6c has v0 = one of ret(__glSetError), ret(?).

- `__glim_Rectfv` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2247e80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2247e80-0x2247f18 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x2247e84 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2247e88 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2247ed0 loads 8 bytes from [0x1020]:8 +0x4748.
  The `sw` at 0x2247ee8 stores 4 bytes to abs 0x1030.
  The `lwc1` at 0x2247eec loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ld` at 0x2247ef0 loads 8 bytes from [0x1020]:8 +0x49c0.
  The `lwc1` at 0x2247ef4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2247ef8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x2247f04 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x2247ec0 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247ed4 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1030], a4=[0x1020]:8, a5=a0 at entry (arg0).
  The `jalr` at 0x2247f00 calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[0x1020]:8, a5=a0 at entry (arg0); fp f13=[a0], f14=[a0+4], f15=[a1], f16=[a1+4].
  The `beq` branch at 0x2247ea4 targets 0x2247eec, is taken when a3(=[0x1030]) == 0, and falls through when a3(=[0x1030]) != 0.
  The `beq` branch at 0x2247eb4 targets 0x2247ed0, is taken when a3(=[0x1030]) == v0(=0x2), and falls through when a3(=[0x1030]) != v0(=0x2).
  The `beq` branch at 0x2247ec8 targets 0x2247f08 and is always taken.
  The return at 0x2247f10 has v0 = one of ret(__glSetError), ret(?).
