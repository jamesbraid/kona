# Instruction readings from hostfacts

These entries record instruction facts from the cited routine bodies. They describe software behavior, not hardware measurements. Hostfacts supplies each access, call, branch and return from that routine. The inventory supplies its address and size.

Skipped routines: 23,060 are already located, understood, or have no software dependency; 960 named-only routines already have an exact binary and routine entry; 30,039 eligible routines remain outside this 250-routine slice.

- `ApplyViewport` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa330 (n64).
  It occupies 56 bytes.
  The `bgezall` at 0x2daa350 calls `FindWindowSize` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2daa360 has v0 = ret(FindWindowSize).
- `LoseCurrent` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa570 (n64).
  It occupies 184 bytes.
  The `sd` at 0x2daa5d0 stores 8 bytes to abs 0x1020 (value 0x0).
  The `sw` at 0x2daa5e4 stores 4 bytes to a0 (arg0 at entry) +0xdd0 (value [0x1030]).
  The `sw` at 0x2daa5ec stores 4 bytes to a0 (arg0 at entry) +0x15b8 (value [0x1048]).
  The `sd` at 0x2daa5f4 stores 8 bytes to a0 (arg0 at entry) +0x15c0 (value [0x1050]:8).
  The `sd` at 0x2daa5fc stores 8 bytes to a0 (arg0 at entry) +0x15c8 (value [0x1058]:8).
  The `sw` at 0x2daa604 stores 4 bytes to a0 (arg0 at entry) +0x15d0 (value [0x1060]).
  The `jalr` at 0x2daa5c0 calls `__glLoseCurrentBuffers` with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2daa590 targets 0x2daa614, is taken when v0(=[a0+3540]) != v1(=0x1c00), and falls through when v0(=[a0+3540]) == v1(=0x1c00).
  The `beq` branch at 0x2daa5a0 targets 0x2daa618, is taken when a0(=[0x1030]) == v0(=0x1), and falls through when a0(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2daa5b0 targets 0x2daa5d0, is taken when (v1(=[a0+336]) & 0x4) == 0, and falls through when (v1(=[a0+336]) & 0x4) != 0.
  The `beq` branch at 0x2daa5e0 targets 0x2daa608, is taken when a1(=[a0+5440]) == 0, and falls through when a1(=[a0+5440]) != 0.
  The return at 0x2daa60c has v0 = 0x1.
  The return at 0x2daa620 has v0 = 0x0.
- `MakeCurrent` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dab8f0 (n64).
  It occupies 108 bytes.
  The `jalr` at 0x2dab918 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2dab928 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
- `EramAlloc` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de3cc0 (n64).
  It occupies 180 bytes.
  The `jalr` at 0x2de3cec calls `__glkon_mem_free` with a0=0x2, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=a3 at entry (arg3).
  The `jalr` at 0x2de3d2c calls `__glkon_mem_alloc` with a0=0x2, a1=a0 at entry (arg0), a2=0x0, a3=(a3 << 0x2), a4=(a4 << 0x2), a7=a3 at entry (arg3).
  The `jalr` at 0x2de3d3c calls `__glSetError` with a0=0x505, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2de3ccc targets 0x2de3d64, is taken when a2 == a3, and falls through when a2 != a3.
  The `beq` branch at 0x2de3cd8 targets 0x2de3d0c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x2de3cf4 targets 0x2de3d0c, is taken when v0(=ret(__glkon_mem_free)) == 0, and falls through when v0(=ret(__glkon_mem_free)) != 0.
  The `beq` branch at 0x2de3d0c targets 0x2de3d58, is taken when a7(=a3) == 0, and falls through when a7(=a3) != 0.
  The `beq` branch at 0x2de3d34 targets 0x2de3d54, is taken when v0(=ret(__glkon_mem_alloc)) == 0, and falls through when v0(=ret(__glkon_mem_alloc)) != 0.
  The return at 0x2de3d04 has v0 = 0x1.
  The return at 0x2de3d4c has v0 = 0x1.
  The return at 0x2de3d5c has v0 = 0x0.
  The return at 0x2de3d6c has v0 = 0x0.
- `CopyVertex` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2debb10 (n64).
  It occupies 100 bytes.
  The `swc1` at 0x2debb40 stores 4 bytes to a2 (arg2 at entry) +0x0 (value [a1]).
  The `blez` branch at 0x2debb18 targets 0x2debb6c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2debb2c targets 0x2debb44, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `beq` branch at 0x2debb48 targets 0x2debb6c, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `bne` branch at 0x2debb64 targets 0x2debb50, is taken when a0(unknown) != a4(=((a0 << 0x2) + a1)), and falls through when a0(unknown) == a4(=((a0 << 0x2) + a1)).
  The return at 0x2debb6c has v0 = unknown.
- `__glDlistBlockStateInit` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df09f0 (n64).
  It occupies 148 bytes.
  The `sw` at 0x2df09f0 stores 4 bytes to a5 (arg5 at entry) +0x4 (value 0x0).
  The `sd` at 0x2df09f8 stores 8 bytes to a5 (arg5 at entry) +0x8 (value -0x1).
  The `sd` at 0x2df09fc stores 8 bytes to a5 (arg5 at entry) +0x20 (value a4).
  The `sd` at 0x2df0a00 stores 8 bytes to a5 (arg5 at entry) +0x18 (value a3).
  The `sd` at 0x2df0a04 stores 8 bytes to a5 (arg5 at entry) +0x10 (value a2).
  The `sw` at 0x2df0a08 stores 4 bytes to a5 (arg5 at entry) +0x0 (value a1).
  The `sd` at 0x2df0a40 stores 8 bytes to a5 (arg5 at entry) +0x28 (value ret(unknown)).
  The `sw` at 0x2df0a60 stores 4 bytes to ret(unknown) +0x0 (value 0x0).
  The `sw` at 0x2df0a64 stores 4 bytes to a5 (arg5 at entry) +0x48 (value 0x0).
  The `sd` at 0x2df0a6c stores 8 bytes to a5 (arg5 at entry) +0x40 (value 0x0).
  The `sw` at 0x2df0a74 stores 4 bytes to a5 (arg5 at entry) +0x30 (value 0x0).
  The `jalr` at 0x2df0a30 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2df0a3c targets 0x2df0a5c, is taken when v0(=ret(unknown)) != 0, and falls through when v0(=ret(unknown)) == 0.
  The return at 0x2df0a54 has v0 = 0x0.
  The return at 0x2df0a7c has v0 = 0x1.
- `block_grow_region` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df0b40 (n64).
  It occupies 488 bytes.
  The `sd` at 0x2df0bb8 stores 8 bytes to a1 (arg1 at entry) +0x28 (value ret(unknown)).
  The `sd` at 0x2df0bf4 stores 8 bytes to a1 (arg1 at entry) +0x40 (value ret(unknown)).
  The `sw` at 0x2df0c24 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c3c stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c58 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c64 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c74 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c80 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c90 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0c9c stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0cac stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0cc0 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df0cd4 stores 4 bytes to a1 (arg1 at entry) +0x4 (value a0).
  The `jalr` at 0x2df0b74 calls `(unknown callee)` with a0=unknown, a1=[a1+32]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df0bac calls `(unknown callee)` with a0=unknown, a1=[a1+40]:8, a2=unknown, a3=-0x1.
  The `jalr` at 0x2df0be4 calls `(unknown callee)` with a0=unknown, a1=[a1+64]:8, a2=unknown, a3=unknown.
  The `beq` branch at 0x2df0b80 targets 0x2df0d0c, is taken when a3(=-0x1) == v0(=ret(unknown)), and falls through when a3(=-0x1) != v0(=ret(unknown)).
  The `bne` branch at 0x2df0bb4 targets 0x2df0bd4, is taken when v0(=ret(unknown)) != 0, and falls through when v0(=ret(unknown)) == 0.
  The `beq` branch at 0x2df0bf0 targets 0x2df0d18, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `beq` branch at 0x2df0c0c targets 0x2df0cc8, is taken when a5(unknown) >= a2(unknown) (unsigned), and falls through when a5(unknown) < a2(unknown) (unsigned).
  The `beq` branch at 0x2df0c14 targets 0x2df0c40, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x2df0c38 targets 0x2df0c1c, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `beq` branch at 0x2df0c44 targets 0x2df0cc4, is taken when t1(unknown) == 0, and falls through when t1(unknown) != 0.
  The `bne` branch at 0x2df0cbc targets 0x2df0c50, is taken when a0(unknown) != s1(unknown), and falls through when a0(unknown) == s1(unknown).
  The `bne` branch at 0x2df0cf0 targets 0x2df0d00, is taken when a5(=-0x1) != a6(=[a1+8]:8), and falls through when a5(=-0x1) == a6(=[a1+8]:8).
  The return at 0x2df0bcc has v0 = 0x0.
  The return at 0x2df0d04 has v0 = 0x1.
- `__glDlistFreeBlock` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df0f30 (n64).
  It occupies 84 bytes.
  The `sw` at 0x2df0f80 stores 4 bytes to a0 (arg0 at entry) +0x30 (value [a0+48]+1).
  The return at 0x2df0f7c has v0 = [a0].
- `__glDlistTransientBlock` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df1290 (n64).
  It occupies 80 bytes.
  The `sw` at 0x2df12dc stores 4 bytes to a0 (arg0 at entry) +0x48 (value [a0+72]+1).
  The return at 0x2df12d8 has v0 = [a0].
- `__glDlistFreeTransient` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df12e0 (n64).
  It occupies 132 bytes.
  The `sw` at 0x2df132c stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df1354 stores 4 bytes to a0 (arg0 at entry) +0x48 (value 0x0).
  The `sw` at 0x2df1360 stores 4 bytes to a0 (arg0 at entry) +0x30 (value ([a0+48] + [a0+72])).
  The `beq` branch at 0x2df12ec targets 0x2df134c, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2df1344 targets 0x2df1300, is taken when a3(unknown) < v0(unknown) (unsigned), and falls through when a3(unknown) >= v0(unknown) (unsigned).
  The return at 0x2df135c has v0 = unknown.
- `__glDlistHeapInit` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df1370 (n64).
  It occupies 88 bytes.
  The `sd` at 0x2df1370 stores 8 bytes to a0 (arg0 at entry) +0x8 (value 0x0).
  The `sd` at 0x2df1374 stores 8 bytes to a0 (arg0 at entry) +0x0 (value 0x0).
  The `sd` at 0x2df139c stores 8 bytes to abs 0x2f01740 (value 0x0).
  The `swc1` at 0x2df13a0 stores 4 bytes to abs 0x2f01740 (value 0xffffffffbf800000).
  The `sd` at 0x2df13b0 stores 8 bytes to abs 0x2f01748 (value 0x0).
  The `bgezall` at 0x2df13ac calls `__glDlistHeapInsert` with a0=a0 at entry (arg0), a1=0x2f01740, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df13c0 has v0 = 0x1.
- `__glDlistPrintHeap` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df16c0 (n64).
  It occupies 160 bytes.
  The `jalr` at 0x2df171c calls `printf` with a0=0x2ee4e80, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2df1748 calls `printf` with a0=0x2f00752, a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x2df16e8 targets 0x2df1740, is taken when at(=[a0]) < 0x2 (unsigned), and falls through when at(=[a0]) >= 0x2 (unsigned).
  The `bne` branch at 0x2df1730 targets 0x2df1700, is taken when s1(unknown) < a1(=[a0]) (unsigned), and falls through when s1(unknown) >= a1(=[a0]) (unsigned).
  The return at 0x2df1758 has v0 = ret(printf).
- `__glsplc_InvalidValue` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df42e0 (n64).
  It occupies 56 bytes.
  The `jalr` at 0x2df4300 calls `(unknown callee)` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df4310 has v0 = ret(unknown).
- `__glsplc_InvalidEnum` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4320 (n64).
  It occupies 56 bytes.
  The `jalr` at 0x2df4340 calls `(unknown callee)` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df4350 has v0 = ret(unknown).
- `__glsplc_Error` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df43a0 (n64).
  It occupies 56 bytes.
  The `jalr` at 0x2df43c0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df43d0 has v0 = ret(unknown).
- `__glsplc_UnimplementedExtension` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df43e0 (n64).
  It occupies 56 bytes.
  The `jalr` at 0x2df4400 calls `(unknown callee)` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df4410 has v0 = ret(unknown).
- `__glsplc_DeformationMap3fSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4cf0 (n64).
  It occupies 368 bytes.
  The `sw` at 0x2df4e04 stores 4 bytes to ret(__glSPDlalloc) +0xc (value a4).
  The `swc1` at 0x2df4e08 stores 4 bytes to ret(__glSPDlalloc) +0x10 (value f17).
  The `swc1` at 0x2df4e0c stores 4 bytes to ret(__glSPDlalloc) +0x14 (value f18).
  The `swc1` at 0x2df4e18 stores 4 bytes to ret(__glSPDlalloc) +0x8 (value f14).
  The `swc1` at 0x2df4e20 stores 4 bytes to ret(__glSPDlalloc) +0x4 (value f13).
  The `sw` at 0x2df4e2c stores 4 bytes to ret(__glSPDlalloc) +0x0 (value a0).
  The `jalr` at 0x2df4d54 calls `__glCheckMap3Params` with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df4da4 calls `__glSPDlalloc` with a0=unknown, a1=0xf8, a2=unknown, a3=unknown.
  The `jalr` at 0x2df4e28 calls `__glFillDeformationMap3f` with a0=a4 at entry (arg4), a1=a3 at entry (arg3), a2=unknown, a3=a7 at entry (arg7), a7=ret(__glSPDlalloc)+40.
  The `bgezall` at 0x2df4e3c calls `__glsplc_InvalidEnum` with a0=unknown, a1=unknown, a2=0x501, a3=0x500.
  The `bgezall` at 0x2df4e50 calls `__glsplc_InvalidValue` with a0=unknown, a1=unknown, a2=0x501, a3=0x500.
  The `beq` branch at 0x2df4d60 targets 0x2df4e4c, is taken when v0(=ret(__glCheckMap3Params)) == a2(=0x501), and falls through when v0(=ret(__glCheckMap3Params)) != a2(=0x501).
  The `beq` branch at 0x2df4d68 targets 0x2df4e38, is taken when v0(=ret(__glCheckMap3Params)) == a3(=0x500), and falls through when v0(=ret(__glCheckMap3Params)) != a3(=0x500).
  The `bne` branch at 0x2df4dac targets 0x2df4dc4, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0x2df4dbc has v0 = unknown.
- `__glsplc_DeformationMap3dSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4e60 (n64).
  It occupies 400 bytes.
  The `sw` at 0x2df4f90 stores 4 bytes to ret(__glSPDlalloc) +0xc (value a4).
  The `sw` at 0x2df4fbc stores 4 bytes to ret(__glSPDlalloc) +0x0 (value a0).
  The `jalr` at 0x2df4ee4 calls `__glCheckMap3Params` with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df4f34 calls `__glSPDlalloc` with a0=unknown, a1=0xf7, a2=unknown, a3=unknown.
  The `jalr` at 0x2df4fb8 calls `__glFillDeformationMap3d` with a0=a4 at entry (arg4), a1=a3 at entry (arg3), a2=unknown, a3=a7 at entry (arg7), a7=ret(__glSPDlalloc)+40.
  The `bgezall` at 0x2df4fcc calls `__glsplc_InvalidEnum` with a0=unknown, a1=unknown, a2=0x501, a3=0x500.
  The `bgezall` at 0x2df4fe0 calls `__glsplc_InvalidValue` with a0=unknown, a1=unknown, a2=0x501, a3=0x500.
  The `beq` branch at 0x2df4ef0 targets 0x2df4fdc, is taken when v0(=ret(__glCheckMap3Params)) == a2(=0x501), and falls through when v0(=ret(__glCheckMap3Params)) != a2(=0x501).
  The `beq` branch at 0x2df4ef8 targets 0x2df4fc8, is taken when v0(=ret(__glCheckMap3Params)) == a3(=0x500), and falls through when v0(=ret(__glCheckMap3Params)) != a3(=0x500).
  The `bne` branch at 0x2df4f3c targets 0x2df4f54, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0x2df4f4c has v0 = unknown.
- `FormatAndType` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4ff0 (n64).
  It occupies 948 bytes.
  The `bgezall` at 0x2df50bc calls `__glsplc_InvalidEnum` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2df5158 calls `__glsplc_InvalidEnum` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=0x8034.
  The `bgezall` at 0x2df51cc calls `__glsplc_InvalidOperation` with a0=a0 at entry (arg0), a1=0x1908, a2=0x8000, a3=0x80e1.
  The `bgezall` at 0x2df5250 calls `__glsplc_InvalidOperation` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=one of 0x8032, 0x8362, 0x8364.
  The `bgezall` at 0x2df5364 calls `__glsplc_InvalidEnum` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=0x8032.
  The `bne` branch at 0x2df4ff4 targets 0x2df5040, is taken when a0 < 0x1908 (unsigned), and falls through when a0 >= 0x1908 (unsigned).
  The `bne` branch at 0x2df5000 targets 0x2df506c, is taken when a0 < 0x1909 (unsigned), and falls through when a0 >= 0x1909 (unsigned).
  The `bne` branch at 0x2df5010 targets 0x2df5268, is taken when a0 < a3(=0x8000) (unsigned), and falls through when a0 >= a3(=0x8000) (unsigned).
  The `beq` branch at 0x2df5018 targets 0x2df506c, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x2df5028 targets 0x2df5318, is taken when a0 < a3(=0x80e1) (unsigned), and falls through when a0 >= a3(=0x80e1) (unsigned).
  The `beq` branch at 0x2df5030 targets 0x2df506c, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `bne` branch at 0x2df5044 targets 0x2df5130, is taken when a0 < 0x1905 (unsigned), and falls through when a0 >= 0x1905 (unsigned).
  The `bne` branch at 0x2df504c targets 0x2df506c, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2df5058 targets 0x2df52c4, is taken when a0 < 0x1907 (unsigned), and falls through when a0 >= 0x1907 (unsigned).
  The `beq` branch at 0x2df5060 targets 0x2df5154, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `beq` branch at 0x2df5070 targets 0x2df50ec, is taken when a1 >= a3(=0x8034) (unsigned), and falls through when a1 < a3(=0x8034) (unsigned).
  The `bne` branch at 0x2df507c targets 0x2df51e8, is taken when a1 < 0x1405 (unsigned), and falls through when a1 >= 0x1405 (unsigned).
  The `bne` branch at 0x2df5088 targets 0x2df5184, is taken when a1 < 0x1406 (unsigned), and falls through when a1 >= 0x1406 (unsigned).
  The `beq` branch at 0x2df5094 targets 0x2df5238, is taken when a1 >= a3(=0x8032) (unsigned), and falls through when a1 < a3(=0x8032) (unsigned).
  The `bne` branch at 0x2df50a0 targets 0x2df5308, is taken when a1 < 0x1a00 (unsigned), and falls through when a1 >= 0x1a00 (unsigned).
  The `bne` branch at 0x2df50ac targets 0x2df5360, is taken when a1 < 0x1a01 (unsigned), and falls through when a1 >= 0x1a01 (unsigned).
  The `bne` branch at 0x2df50d4 targets 0x2df5150, is taken when a0 != v1(=0x1900), and falls through when a0 == v1(=0x1900).
  The `bne` branch at 0x2df50e0 targets 0x2df5218, is taken when a1 < a3(=0x8034) (unsigned), and falls through when a1 >= a3(=0x8034) (unsigned).
  The `beq` branch at 0x2df50ec targets 0x2df51ac, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x2df50f8 targets 0x2df5288, is taken when a1 < a3(=0x8364) (unsigned), and falls through when a1 >= a3(=0x8364) (unsigned).
  The `beq` branch at 0x2df5100 targets 0x2df5244, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2df5110 targets 0x2df532c, is taken when a1 < a3(=0x8367) (unsigned), and falls through when a1 >= a3(=0x8367) (unsigned).
  The `beq` branch at 0x2df5118 targets 0x2df51ac, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `beq` branch at 0x2df5120 targets 0x2df51b0, is taken when a1 == t1(=0x8368), and falls through when a1 != t1(=0x8368).
  The `bne` branch at 0x2df5134 targets 0x2df50d4, is taken when a0 < 0x1903 (unsigned), and falls through when a0 >= 0x1903 (unsigned).
  The `bne` branch at 0x2df5140 targets 0x2df506c, is taken when a0 < 0x1904 (unsigned), and falls through when a0 >= 0x1904 (unsigned).
  The `beq` branch at 0x2df514c targets 0x2df5068, is taken when a0 == t8(=0x1904), and falls through when a0 != t8(=0x1904).
  The `bne` branch at 0x2df5170 targets 0x2df52d4, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `beq` branch at 0x2df517c targets 0x2df50b8, is taken when a1 >= 0x1402 (unsigned), and falls through when a1 < 0x1402 (unsigned).
  The `bne` branch at 0x2df5198 targets 0x2df5350, is taken when a1 < a3(=0x8036) (unsigned), and falls through when a1 >= a3(=0x8036) (unsigned).
  The `bne` branch at 0x2df51a4 targets 0x2df50b8, is taken when a3(=0x8036) < a1 (unsigned), and falls through when a3(=0x8036) >= a1 (unsigned).
  The `beq` branch at 0x2df51b0 targets 0x2df5184, is taken when a0 == a1(=0x1908), and falls through when a0 != a1(=0x1908).
  The `beq` branch at 0x2df51b8 targets 0x2df5184, is taken when a0 == a2(=0x8000), and falls through when a0 != a2(=0x8000).
  The `beq` branch at 0x2df51c0 targets 0x2df5184, is taken when a0 == a3(=0x80e1), and falls through when a0 != a3(=0x80e1).
  The `bne` branch at 0x2df51e8 targets 0x2df5170, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `bne` branch at 0x2df51f4 targets 0x2df5184, is taken when a1 < 0x1403 (unsigned), and falls through when a1 >= 0x1403 (unsigned).
  The `bne` branch at 0x2df51fc targets 0x2df52e4, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2df5208 targets 0x2df5188, is taken when a1 < 0x1405 (unsigned), and falls through when a1 >= 0x1405 (unsigned).
  The `bne` branch at 0x2df5218 targets 0x2df51e4, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2df5220 targets 0x2df5184, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2df522c targets 0x2df538c, is taken when a1 < a3(=0x8032) (unsigned), and falls through when a1 >= a3(=0x8032) (unsigned).
  The `bne` branch at 0x2df5238 targets 0x2df52f4, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `beq` branch at 0x2df5244 targets 0x2df5184, is taken when a0 == t8(=0x1907), and falls through when a0 != t8(=0x1907).
  The `bne` branch at 0x2df526c targets 0x2df52b4, is taken when a0 < 0x190a (unsigned), and falls through when a0 >= 0x190a (unsigned).
  The `bne` branch at 0x2df5278 targets 0x2df506c, is taken when a0 < 0x190b (unsigned), and falls through when a0 >= 0x190b (unsigned).
  The `bne` branch at 0x2df5290 targets 0x2df5190, is taken when a1 < a3(=0x8362) (unsigned), and falls through when a1 >= a3(=0x8362) (unsigned).
  The `beq` branch at 0x2df5298 targets 0x2df5244, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `beq` branch at 0x2df52a4 targets 0x2df5244, is taken when a1 == a2(=0x8363), and falls through when a1 != a2(=0x8363).
  The `beq` branch at 0x2df52b4 targets 0x2df506c, is taken when a0 == a3(=0x1909), and falls through when a0 != a3(=0x1909).
  The `beq` branch at 0x2df52c4 targets 0x2df506c, is taken when a0 == a4(=0x1906), and falls through when a0 != a4(=0x1906).
  The `beq` branch at 0x2df52d4 targets 0x2df5188, is taken when a1 == a5(=0x1400), and falls through when a1 != a5(=0x1400).
  The `beq` branch at 0x2df52e4 targets 0x2df5188, is taken when a1 == a6(=0x1403), and falls through when a1 != a6(=0x1403).
  The `beq` branch at 0x2df52f4 targets 0x2df51b0, is taken when a1 == a7(=0x8033), and falls through when a1 != a7(=0x8033).
  The `bne` branch at 0x2df5308 targets 0x2df50b8, is taken when a1 != t0(=0x1406), and falls through when a1 == t0(=0x1406).
  The `beq` branch at 0x2df531c targets 0x2df506c, is taken when a0 == t1(=0x80e0), and falls through when a0 != t1(=0x80e0).
  The `bne` branch at 0x2df5334 targets 0x2df537c, is taken when a1 < a3(=0x8366) (unsigned), and falls through when a1 >= a3(=0x8366) (unsigned).
  The `beq` branch at 0x2df5340 targets 0x2df51b0, is taken when a3(=0x8366) >= a1 (unsigned), and falls through when a3(=0x8366) < a1 (unsigned).
  The `beq` branch at 0x2df5350 targets 0x2df51b0, is taken when a1 == t8(=0x8035), and falls through when a1 != t8(=0x8035).
  The `beq` branch at 0x2df537c targets 0x2df51b0, is taken when a1 == t9(=0x8365), and falls through when a1 != t9(=0x8365).
  The `bne` branch at 0x2df538c targets 0x2df5304, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2df5394 targets 0x2df5188, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The return at 0x2df50cc has v0 = 0x0.
  The return at 0x2df5168 has v0 = 0x0.
  The return at 0x2df5188 has v0 = 0x1.
  The return at 0x2df51dc has v0 = 0x0.
  The return at 0x2df5260 has v0 = 0x0.
  The return at 0x2df5374 has v0 = 0x0.
- `__glsplc_SeparableFilter2DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df60a0 (n64).
  It occupies 472 bytes.
  The `sw` at 0x2df61a0 stores 4 bytes to ret(__glSPDlalloc) +0x14 (value a5).
  The `sw` at 0x2df61a4 stores 4 bytes to ret(__glSPDlalloc) +0x10 (value a4).
  The `sw` at 0x2df61a8 stores 4 bytes to ret(__glSPDlalloc) +0xc (value a3).
  The `sw` at 0x2df61ac stores 4 bytes to ret(__glSPDlalloc) +0x8 (value a2).
  The `sw` at 0x2df61b0 stores 4 bytes to ret(__glSPDlalloc) +0x0 (value a0).
  The `sw` at 0x2df61c8 stores 4 bytes to ret(__glSPDlalloc) +0x4 (value a1).
  The `bgezall` at 0x2df60fc calls `__glsplc_InvalidEnum` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2df6120 calls `FormatAndType` with a0=a4 at entry (arg4), a1=a5 at entry (arg5), a2=unknown, a3=unknown.
  The `jalr` at 0x2df613c calls `__glImageSize` with a0=a2 at entry (arg2), a1=0x1, a2=a4 at entry (arg4), a3=a5 at entry (arg5).
  The `jalr` at 0x2df6158 calls `__glImageSize` with a0=0x1, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a5 at entry (arg5).
  The `jalr` at 0x2df618c calls `__glSPDlalloc` with a0=unknown, a1=0xcb, a2=unknown, a3=-0x8.
  The `jalr` at 0x2df622c calls `__glFillImage` with a0=unknown, a1=0x1, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a7 at entry (arg7).
  The `jalr` at 0x2df6254 calls `__glFillImage` with a0=unknown, a1=a2 at entry (arg2), a2=0x1, a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6), a6=ret(__glSPDlalloc)+32.
  The `bgezall` at 0x2df6268 calls `__glsplc_InvalidValue` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2df60f0 targets 0x2df6104, is taken when a0 == at(=0x8012), and falls through when a0 != at(=0x8012).
  The `bltz` branch at 0x2df6104 targets 0x2df6268, is taken when s3(=a2) < 0 (signed), and falls through when s3(=a2) >= 0 (signed).
  The `bltz` branch at 0x2df610c targets 0x2df6268, is taken when s2(=a3) < 0 (signed), and falls through when s2(=a3) >= 0 (signed).
  The `beq` branch at 0x2df6128 targets 0x2df61ec, is taken when v0(=ret(FormatAndType)) == 0, and falls through when v0(=ret(FormatAndType)) != 0.
  The `beq` branch at 0x2df6194 targets 0x2df61ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The `blez` branch at 0x2df61c4 targets 0x2df61d8, is taken when a2(unknown) <= 0 (signed), and falls through when a2(unknown) > 0 (signed).
  The `bne` branch at 0x2df61d0 targets 0x2df623c, is taken when a5(=a6) != 0, and falls through when a5(=a6) == 0.
  The `blez` branch at 0x2df61dc targets 0x2df61ec, is taken when a6(unknown) <= 0 (signed), and falls through when a6(unknown) > 0 (signed).
  The `bne` branch at 0x2df61e4 targets 0x2df620c, is taken when a7 != 0, and falls through when a7 == 0.
  The return at 0x2df6204 has v0 = unknown.
- `__glsplc_TexImage3DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df6280 (n64).
  It occupies 444 bytes.
  The `sw` at 0x2df6368 stores 4 bytes to ret(__glSPDlalloc) +0x1c (value a7).
  The `sw` at 0x2df636c stores 4 bytes to ret(__glSPDlalloc) +0x18 (value a6).
  The `sw` at 0x2df6370 stores 4 bytes to ret(__glSPDlalloc) +0x14 (value a5).
  The `sw` at 0x2df6374 stores 4 bytes to ret(__glSPDlalloc) +0x10 (value a4).
  The `sw` at 0x2df6378 stores 4 bytes to ret(__glSPDlalloc) +0xc (value a3).
  The `sw` at 0x2df6390 stores 4 bytes to ret(__glSPDlalloc) +0x8 (value a2).
  The `sw` at 0x2df6394 stores 4 bytes to ret(__glSPDlalloc) +0x4 (value a1).
  The `sw` at 0x2df639c stores 4 bytes to ret(__glSPDlalloc) +0x0 (value a0).
  The `bgezall` at 0x2df6314 calls `FormatAndType` with a0=a7 at entry (arg7), a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0x2df6334 calls `__glImageSize3D` with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=a5 at entry (arg5), a3=a7 at entry (arg7).
  The `jalr` at 0x2df6354 calls `__glSPDlalloc` with a0=unknown, a1=0xd0, a2=-0x8, a3=unknown.
  The `jalr` at 0x2df63c0 calls `__glFillImage3D` with a0=unknown, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a5 at entry (arg5), a4=a7 at entry (arg7), a7=ret(__glSPDlalloc)+40.
  The `bgezall` at 0x2df63f0 calls `__glsplc_InvalidValue` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `bgezall` at 0x2df6404 calls `__glsplc_InvalidValue` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0x2df642c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2df62c8 targets 0x2df6414, is taken when a0 == at(=0x8070), and falls through when a0 != at(=0x8070).
  The `bltz` branch at 0x2df62d0 targets 0x2df63f0, is taken when a6 < 0 (signed), and falls through when a6 >= 0 (signed).
  The `beq` branch at 0x2df62dc targets 0x2df63f0, is taken when a6 >= 0x2 (signed), and falls through when a6 < 0x2 (signed).
  The `bltz` branch at 0x2df62e4 targets 0x2df6404, is taken when a3 < 0 (signed), and falls through when a3 >= 0 (signed).
  The `bltz` branch at 0x2df62ec targets 0x2df6404, is taken when a4 < 0 (signed), and falls through when a4 >= 0 (signed).
  The `bltz` branch at 0x2df6300 targets 0x2df6400, is taken when a5 < 0 (signed), and falls through when a5 >= 0 (signed).
  The `beq` branch at 0x2df631c targets 0x2df63c8, is taken when v0(=ret(FormatAndType)) == 0, and falls through when v0(=ret(FormatAndType)) != 0.
  The `beq` branch at 0x2df635c targets 0x2df63c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The `blez` branch at 0x2df6398 targets 0x2df63c8, is taken when a4(unknown) <= 0 (signed), and falls through when a4(unknown) > 0 (signed).
  The `beq` branch at 0x2df63a4 targets 0x2df63c8, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The return at 0x2df63e4 has v0 = unknown.
- `__glsplc_ColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df6a50 (n64).
  It occupies 360 bytes.
  The `sw` at 0x2df6b50 stores 4 bytes to ret(__glSPDlalloc) +0x8 (value a2).
  The `sw` at 0x2df6b58 stores 4 bytes to ret(__glSPDlalloc) +0x0 (value a0).
  The `sw` at 0x2df6b74 stores 4 bytes to ret(__glSPDlalloc) +0x10 (value a4).
  The `sw` at 0x2df6b80 stores 4 bytes to ret(__glSPDlalloc) +0xc (value a3).
  The `sw` at 0x2df6b8c stores 4 bytes to ret(__glSPDlalloc) +0x4 (value a1).
  The `bgezall` at 0x2df6ad0 calls `__glsplc_InvalidValue` with a0=0x80d4, a1=a1 at entry (arg1), a2=0x80d5, a3=a3 at entry (arg3), a4=0x80bd.
  The `bgezall` at 0x2df6afc calls `FormatAndType` with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=0x80d5, a3=a3 at entry (arg3), a4=0x80bd.
  The `jalr` at 0x2df6b18 calls `__glImageSize` with a0=a2 at entry (arg2), a1=0x1, a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `jalr` at 0x2df6b3c calls `__glSPDlalloc` with a0=unknown, a1=0xe3, a2=-0x8, a3=unknown.
  The `jalr` at 0x2df6b88 calls `__glFillImage` with a0=unknown, a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3), a6=ret(__glSPDlalloc)+24, a7=a1 at entry (arg1).
  The `jalr` at 0x2df6ba8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2-1.
  The `beq` branch at 0x2df6a84 targets 0x2df6b98, is taken when a0 == at(=0x80d3), and falls through when a0 != at(=0x80d3).
  The `beq` branch at 0x2df6a90 targets 0x2df6b98, is taken when s0(=a0) == a0(=0x80d4), and falls through when s0(=a0) != a0(=0x80d4).
  The `beq` branch at 0x2df6a98 targets 0x2df6b98, is taken when s0(=a0) == a2(=0x80d5), and falls through when s0(=a0) != a2(=0x80d5).
  The `beq` branch at 0x2df6aa0 targets 0x2df6b98, is taken when s0(=a0) == a4(=0x80bd), and falls through when s0(=a0) != a4(=0x80bd).
  The `bltz` branch at 0x2df6aa8 targets 0x2df6ad0, is taken when s1(=a2) < 0 (signed), and falls through when s1(=a2) >= 0 (signed).
  The `beq` branch at 0x2df6ac4 targets 0x2df6af0, is taken when (s1(=a2) & a6(=a2-1)) == 0, and falls through when (s1(=a2) & a6(=a2-1)) != 0.
  The `beq` branch at 0x2df6b04 targets 0x2df6ad8, is taken when v0(=ret(FormatAndType)) == 0, and falls through when v0(=ret(FormatAndType)) != 0.
  The `beq` branch at 0x2df6b44 targets 0x2df6adc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0x2df6ae8 has v0 = unknown.
- `__glsplc_DrawArraysEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df6d30 (n64).
  It occupies 492 bytes.
  The `jalr` at 0x2df6d90 calls `glBegin` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1020]:8+6080].
  The `jalr` at 0x2df6dec calls `(unknown callee)` with a0=unknown, a1=unknown, a2=[[0x1020]:8+5676], a3=unknown.
  The `jalr` at 0x2df6e10 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=[[0x1020]:8+5712], a3=unknown.
  The `jalr` at 0x2df6e34 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=[[0x1020]:8+5784], a3=unknown.
  The `jalr` at 0x2df6e58 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=[[0x1020]:8+5748], a3=unknown.
  The `jalr` at 0x2df6e7c calls `(unknown callee)` with a0=unknown, a1=unknown, a2=[[0x1020]:8+5816], a3=unknown.
  The `jalr` at 0x2df6ea0 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=[[0x1020]:8+5640], a3=unknown.
  The `jalr` at 0x2df6eb8 calls `glEnd` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2df6ef8 calls `__glsplc_InvalidEnum` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1020]:8+6080].
  The `bgezall` at 0x2df6f0c calls `__glsplc_InvalidValue` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1020]:8+6080].
  The `beq` branch at 0x2df6d78 targets 0x2df6ef4, is taken when a0 >= 0xa (unsigned), and falls through when a0 < 0xa (unsigned).
  The `bltz` branch at 0x2df6d84 targets 0x2df6f08, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x2df6da0 targets 0x2df6eb4, is taken when s0(=a1) >= s3(=(a2 + a1)) (signed), and falls through when s0(=a1) < s3(=(a2 + a1)) (signed).
  The `beq` branch at 0x2df6dd0 targets 0x2df6df4, is taken when s2(unknown) == 0, and falls through when s2(unknown) != 0.
  The `beq` branch at 0x2df6df4 targets 0x2df6e18, is taken when s5(unknown) == 0, and falls through when s5(unknown) != 0.
  The `beq` branch at 0x2df6e18 targets 0x2df6e3c, is taken when s6(unknown) == 0, and falls through when s6(unknown) != 0.
  The `beq` branch at 0x2df6e3c targets 0x2df6e60, is taken when s7(unknown) == 0, and falls through when s7(unknown) != 0.
  The `beq` branch at 0x2df6e60 targets 0x2df6e84, is taken when s4(unknown) == 0, and falls through when s4(unknown) != 0.
  The `beq` branch at 0x2df6e84 targets 0x2df6ea8, is taken when s8(unknown) == 0, and falls through when s8(unknown) != 0.
  The `bne` branch at 0x2df6eac targets 0x2df6dd0, is taken when s3(=(a2 + a1)) != s0(unknown), and falls through when s3(=(a2 + a1)) == s0(unknown).
  The return at 0x2df6eec has v0 = unknown.
- `__glSPExecuteDlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7110 (n64).
  It occupies 52 bytes.
  The `jalr` at 0x2df712c calls `__glSPInterpret` with a0=[a1+32]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df713c has v0 = ret(__glSPInterpret).
- `__glSPDlistAddFree` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7150 (n64).
  It occupies 148 bytes.
  The `sd` at 0x2df71bc stores 8 bytes to unknown (base unknown) (value a1).
  The `sd` at 0x2df71c0 stores 8 bytes to unknown (base unknown) (value a2).
  The `sd` at 0x2df71d4 stores 8 bytes to a0 (arg0 at entry) +0x15d8 (value ret(unknown)).
  The `jalr` at 0x2df7190 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+5592]:8, a2=([a0+5600] << 0x4)+16, a3=a3 at entry (arg3).
  The `beq` branch at 0x2df7198 targets 0x2df71d8, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The return at 0x2df71d0 has v0 = ret(unknown).
  The return at 0x2df71dc has v0 = ret(unknown).
- `__glSPFreeDlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df71f0 (n64).
  It occupies 240 bytes.
  The `bgezall` at 0x2df7238 calls `__glSPDlistFreeSegments` with a0=a0 at entry (arg0), a1=[a1+24]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df7268 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2df7290 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a1+64]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2df72a0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a1+32]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2df72b0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a1+40]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2df72c0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `beq` branch at 0x2df7228 targets 0x2df7244, is taken when s1(=[a1+60]) == 0, and falls through when s1(=[a1+60]) != 0.
  The `beq` branch at 0x2df724c targets 0x2df727c, is taken when s3(=-0x1) == s1(unknown), and falls through when s3(=-0x1) != s1(unknown).
  The `bne` branch at 0x2df7274 targets 0x2df7260, is taken when s3(=-0x1) != s1(unknown), and falls through when s3(=-0x1) == s1(unknown).
  The return at 0x2df72d8 has v0 = ret(unknown).
- `__glSPDlistCompiler` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df72e0 (n64).
  It occupies 316 bytes.
  The `sw` at 0x2df7338 stores 4 bytes to ret(unknown) +0x0 (value 0x1).
  The `sd` at 0x2df7340 stores 8 bytes to ret(unknown) +0x8 (value [a0+5408]:8).
  The `sw` at 0x2df734c stores 4 bytes to ret(unknown) +0x38 (value [a0+5604]).
  The `sd` at 0x2df7364 stores 8 bytes to ret(unknown) +0x10 (value [a0+5424]:8).
  The `sw` at 0x2df736c stores 4 bytes to ret(unknown) +0x38 (value [a0+5604]).
  The `sd` at 0x2df737c stores 8 bytes to ret(unknown) +0x18 (value [a1+16]:8).
  The `sd` at 0x2df7384 stores 8 bytes to ret(unknown) +0x10 (value 0x2df3fb0).
  The `sw` at 0x2df7390 stores 4 bytes to ret(unknown) +0x38 (value [a0+5604]).
  The `sd` at 0x2df7398 stores 8 bytes to ret(unknown) +0x18 (value [a1+16]:8).
  The `sd` at 0x2df73a8 stores 8 bytes to ret(unknown) +0x40 (value [a0+5592]:8).
  The `sd` at 0x2df73b0 stores 8 bytes to ret(unknown) +0x20 (value [a0+5608]:8).
  The `swc1` at 0x2df73b8 stores 4 bytes to ret(unknown) +0x48 (value 0x3f800000).
  The `sd` at 0x2df73bc stores 8 bytes to ret(unknown) +0x28 (value 0x0).
  The `sw` at 0x2df73c0 stores 4 bytes to ret(unknown) +0x30 (value [a0+5616]).
  The `sw` at 0x2df73c4 stores 4 bytes to ret(unknown) +0x34 (value [a0+5616]).
  The `jalr` at 0x2df7320 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df7354 calls `__glsplc_AddSentinel` with a0=unknown, a1=[a0+5408]:8, a2=0x1, a3=unknown.
  The `jalr` at 0x2df73d4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=ret(unknown), a2=unknown, a3=unknown.
  The `beq` branch at 0x2df732c targets 0x2df73fc, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `beq` branch at 0x2df7348 targets 0x2df7380, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `beq` branch at 0x2df73cc targets 0x2df73dc, is taken when t9(=[a0+5528]:8) == 0, and falls through when t9(=[a0+5528]:8) != 0.
  The return at 0x2df73f4 has v0 = ret(unknown).
  The return at 0x2df7414 has v0 = 0x0.
- `__glSPDlistSpace` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7420 (n64).
  It occupies 344 bytes.
  The `sd` at 0x2df7488 stores 8 bytes to abs 0x1050 (value ret(unknown)).
  The `sd` at 0x2df7490 stores 8 bytes to [0x1050]:8 +0x0 (value ret(unknown)).
  The `sd` at 0x2df7498 stores 8 bytes to [0x1050]:8 +0x0 (value 0x0).
  The `sw` at 0x2df74a0 stores 4 bytes to abs 0x1060 (value 0x0).
  The `sd` at 0x2df74b8 stores 8 bytes to abs 0x1058 (value [0x1050]:8+12).
  The `sd` at 0x2df74d8 stores 8 bytes to [0x1020]:8 +0x1558 (value ret(unknown)).
  The `sd` at 0x2df74e0 stores 8 bytes to [0x1050]:8 +0x0 (value 0x0).
  The `sw` at 0x2df74e8 stores 4 bytes to abs 0x1060 (value 0x0).
  The `sd` at 0x2df7500 stores 8 bytes to abs 0x1058 (value [0x1050]:8+8).
  The `sw` at 0x2df753c stores 4 bytes to unknown (base unknown) (value [0x1060]).
  The `jalr` at 0x2df7470 calls `(unknown callee)` with a0=[0x1020]:8, a1=sp-48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2df7544 calls `__glsplc_AddIlist` with a0=[[0x1020]:8+5552]:8, a1=unknown, a2=([0x1060] << 0x2), a3=unknown.
  The `jalr` at 0x2df7554 calls `__glSetError` with a0=0x505, a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x2df7448 targets 0x2df7460, is taken when a0 < 0x2 (unsigned), and falls through when a0 >= 0x2 (unsigned).
  The `beq` branch at 0x2df7478 targets 0x2df7554, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `beq` branch at 0x2df7484 targets 0x2df74d8, is taken when a0(=[0x1050]:8) == 0, and falls through when a0(=[0x1050]:8) != 0.
  The `beq` branch at 0x2df748c targets 0x2df7520, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0x2df749c targets 0x2df74ec, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x2df74e4 targets 0x2df74a4, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x2df7524 targets 0x2df7494, is taken when v0(=[0x1060]) == 0, and falls through when v0(=[0x1060]) != 0.
  The return at 0x2df74d0 has v0 = unknown.
  The return at 0x2df7518 has v0 = unknown.
  The return at 0x2df7570 has v0 = 0x0.
- `__glsplc_AddIlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7580 (n64).
  It occupies 140 bytes.
  The `sd` at 0x2df75ec stores 8 bytes to unknown (base unknown) (value a1).
  The `sd` at 0x2df75f0 stores 8 bytes to unknown (base unknown) (value a0).
  The `sd` at 0x2df75fc stores 8 bytes to unknown (base unknown) (value ret(unknown)).
  The `jalr` at 0x2df75c8 calls `(unknown callee)` with a0=[0x1020]:8, a1=[[0x1020]:8+5608]:8, a2=([[0x1020]:8+5616] << 0x4)+16, a3=[0x1020]:8, a4=0x109218.
  The return at 0x2df7604 has v0 = ret(unknown).
- `__glSPDlistFreeSegments` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7610 (n64).
  It occupies 76 bytes.
  The `jalr` at 0x2df7638 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x2df7640 targets 0x2df7630, is taken when s0(unknown) != 0, and falls through when s0(unknown) == 0.
  The return at 0x2df7654 has v0 = ret(unknown).
- `__glSPCreatePlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7660 (n64).
  It occupies 164 bytes.
  The `sd` at 0x2df76f4 stores 8 bytes to a1 (arg1 at entry) +0x28 (value ret(unknown)).
  The `jalr` at 0x2df7694 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=([a1+48] << 0x4)-16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2df76ec targets 0x2df76c0, is taken when a3(unknown) < v1(=[a1+48]-1) (signed), and falls through when a3(unknown) >= v1(=[a1+48]-1) (signed).
  The return at 0x2df76fc has v0 = ret(unknown).
- `__glSPValidateDlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7710 (n64).
  It occupies 56 bytes.
  The `sd` at 0x2df772c stores 8 bytes to a1 (arg1 at entry) +0x10 (value 0x2df7110).
  The `jalr` at 0x2df7730 calls `__glSPExecuteDlist` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df7740 has v0 = ret(__glSPExecuteDlist).
- `grow_region` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7750 (n64).
  It occupies 524 bytes.
  The `sd` at 0x2df77dc stores 8 bytes to a0 (arg0 at entry) +0x20 (value ret(unknown)).
  The `sw` at 0x2df7828 stores 4 bytes to unknown (base unknown) (value -0x1).
  The `sw` at 0x2df7834 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df7858 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df786c stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2df78bc stores 4 bytes to unknown (base unknown) (value [a0+28]).
  The `sw` at 0x2df78d8 stores 4 bytes to unknown (base unknown) (value ([a0+4] + a1)-1).
  The `sw` at 0x2df78e4 stores 4 bytes to unknown (base unknown) (value ([a0+4] + a1)).
  The `sw` at 0x2df78f8 stores 4 bytes to a0 (arg0 at entry) +0x4 (value ([a0+4] + a1)).
  The `sw` at 0x2df7918 stores 4 bytes to a0 (arg0 at entry) +0x1c (value [a0+4]).
  The `sw` at 0x2df7924 stores 4 bytes to a0 (arg0 at entry) +0x14 (value ([a0+20] + a1)).
  The `jalr` at 0x2df7778 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df77cc calls `(unknown callee)` with a0=unknown, a1=[a0+32]:8, a2=unknown, a3=unknown.
  The `beq` branch at 0x2df7780 targets 0x2df7940, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `beq` branch at 0x2df77d8 targets 0x2df794c, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `bne` branch at 0x2df7808 targets 0x2df7890, is taken when s1(=([a0+4] + a1)) < t0(=[a0+4]) (signed), and falls through when s1(=([a0+4] + a1)) >= t0(=[a0+4]) (signed).
  The `beq` branch at 0x2df7818 targets 0x2df7838, is taken when (t2(unknown) & 0x1) == 0, and falls through when (t2(unknown) & 0x1) != 0.
  The `beq` branch at 0x2df783c targets 0x2df7890, is taken when t3(unknown) == 0, and falls through when t3(unknown) != 0.
  The `bltz` branch at 0x2df7854 targets 0x2df7860, is taken when a6(unknown) < 0 (signed), and falls through when a6(unknown) >= 0 (signed).
  The `bltz` branch at 0x2df7870 targets 0x2df787c, is taken when a0(unknown) < 0 (signed), and falls through when a0(unknown) >= 0 (signed).
  The `bne` branch at 0x2df7888 targets 0x2df7850, is taken when a7(=([a0+4] + a1)+1) != a0(unknown), and falls through when a7(=([a0+4] + a1)+1) == a0(unknown).
  The `beq` branch at 0x2df78ac targets 0x2df78f4, is taken when t9(=[a0+24]) == 0, and falls through when t9(=[a0+24]) != 0.
  The return at 0x2df792c has v0 = 0x0.
  The return at 0x2df7938 has v0 = -0x1.
- `__glDlistInitPageState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7960 (n64).
  It occupies 140 bytes.
  The `sd` at 0x2df79ac stores 8 bytes to ret(unknown) +0x20 (value 0x0).
  The `sw` at 0x2df79b0 stores 4 bytes to ret(unknown) +0x1c (value 0x0).
  The `sw` at 0x2df79b4 stores 4 bytes to ret(unknown) +0x10 (value 0x0).
  The `sd` at 0x2df79b8 stores 8 bytes to ret(unknown) +0x8 (value 0x0).
  The `sw` at 0x2df79bc stores 4 bytes to ret(unknown) +0x18 (value 0x0).
  The `sw` at 0x2df79c0 stores 4 bytes to ret(unknown) +0x14 (value 0x0).
  The `sw` at 0x2df79c4 stores 4 bytes to ret(unknown) +0x4 (value 0x0).
  The `sd` at 0x2df79d8 stores 8 bytes to ret(unknown) +0x30 (value a3).
  The `sd` at 0x2df79dc stores 8 bytes to ret(unknown) +0x28 (value a2).
  The `sw` at 0x2df79e8 stores 4 bytes to ret(unknown) +0x0 (value a1).
  The `jalr` at 0x2df7988 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=0x38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2df7990 targets 0x2df79ac, is taken when v0(=ret(unknown)) != 0, and falls through when v0(=ret(unknown)) == 0.
  The return at 0x2df79a4 has v0 = 0x0.
  The return at 0x2df79e4 has v0 = ret(unknown).
- `__glDlistFreePageState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df79f0 (n64).
  It occupies 112 bytes.
  The `jalr` at 0x2df7a20 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df7a30 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a1+32]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2df7a40 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The return at 0x2df7a58 has v0 = ret(unknown).
- `__glDlistAllocPage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7a60 (n64).
  It occupies 484 bytes.
  The `sw` at 0x2df7ad4 stores 4 bytes to unknown (base unknown) (value -0x1).
  The `sw` at 0x2df7af0 stores 4 bytes to a0 (arg0 at entry) +0x14 (value [a0+20]-1).
  The `sw` at 0x2df7be4 stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x0).
  The `sw` at 0x2df7bf0 stores 4 bytes to a0 (arg0 at entry) +0x14 (value ([a0+20] + [a0+24])).
  The `bgezall` at 0x2df7b18 calls `grow_region` with a0=a0 at entry (arg0), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x2df7750.
  The `jalr` at 0x2df7b50 calls `(unknown callee)` with a0=[a0+32]:8, a1=unknown, a2=unknown, a3=[a0+28].
  The `bgezall` at 0x2df7c04 calls `grow_region` with a0=a0 at entry (arg0), a1=0x20, a2=unknown, a3=[a0+28], a7=0x2df7750.
  The `beq` branch at 0x2df7a7c targets 0x2df7b08, is taken when v0(=[a0+8]:8) == 0, and falls through when v0(=[a0+8]:8) != 0.
  The `blez` branch at 0x2df7a8c targets 0x2df7b3c, is taken when v0(=[a0+20]) <= 0 (signed), and falls through when v0(=[a0+20]) > 0 (signed).
  The `bgez` branch at 0x2df7b20 targets 0x2df7a84, is taken when v0(=ret(grow_region)) >= 0 (signed), and falls through when v0(=ret(grow_region)) < 0 (signed).
  The `bne` branch at 0x2df7b44 targets 0x2df7bf4, is taken when a7(=[a0+24]) < 0x41 (signed), and falls through when a7(=[a0+24]) >= 0x41 (signed).
  The `bltz` branch at 0x2df7b7c targets 0x2df7c20, is taken when a2(unknown) < 0 (signed), and falls through when a2(unknown) >= 0 (signed).
  The `beq` branch at 0x2df7b94 targets 0x2df7c3c, is taken when (a5(unknown) & 0x2) == 0, and falls through when (a5(unknown) & 0x2) != 0.
  The `bltz` branch at 0x2df7bb8 targets 0x2df7bd8, is taken when a2(unknown) < 0 (signed), and falls through when a2(unknown) >= 0 (signed).
  The `bne` branch at 0x2df7bd0 targets 0x2df7ba0, is taken when (a5(unknown) & 0x2) != 0, and falls through when (a5(unknown) & 0x2) == 0.
  The `bltz` branch at 0x2df7c0c targets 0x2df7c28, is taken when v0(=ret(grow_region)) < 0 (signed), and falls through when v0(=ret(grow_region)) >= 0 (signed).
  The return at 0x2df7b00 has v0 = unknown.
  The return at 0x2df7b34 has v0 = 0x0.
  The return at 0x2df7c34 has v0 = 0x0.
- `__glDlistFreePage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7c50 (n64).
  It occupies 208 bytes.
  The `sw` at 0x2df7cb0 stores 4 bytes to unknown (base unknown) (value [a0+4]).
  The `sw` at 0x2df7d08 stores 4 bytes to a0 (arg0 at entry) +0x18 (value [a0+24]+1).
  The `sw` at 0x2df7d1c stores 4 bytes to a0 (arg0 at entry) +0x18 (value [a0+24]+1).
  The `bltz` branch at 0x2df7cdc targets 0x2df7d0c, is taken when a4(unknown) < 0 (signed), and falls through when a4(unknown) >= 0 (signed).
  The return at 0x2df7d04 has v0 = unknown.
  The return at 0x2df7d18 has v0 = unknown.
- `__glDlistIsPage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7d20 (n64).
  It occupies 68 bytes.
  The `bne` branch at 0x2df7d34 targets 0x2df7d54, is taken when a1 < a3(=[a0+8]:8) (unsigned), and falls through when a1 >= a3(=[a0+8]:8) (unsigned).
  The `beq` branch at 0x2df7d44 targets 0x2df7d54, is taken when a1 >= v0(=([a0+16] + [a0+8]:8)) (unsigned), and falls through when a1 < v0(=([a0+16] + [a0+8]:8)) (unsigned).
  The `beq` branch at 0x2df7d4c targets 0x2df7d5c, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The return at 0x2df7d54 has v0 = 0x0.
  The return at 0x2df7d5c has v0 = 0x1.
- `__glSpanApplyRGBAColorTable` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dfda70 (n64).
  It occupies 1776 bytes.
  The `beq` branch at 0x2dfda8c targets 0x2dfe11c, is taken when (a5(=[a0+39260]) & 0x1) == 0, and falls through when (a5(=[a0+39260]) & 0x1) != 0.
  The `blez` branch at 0x2dfdab8 targets 0x2dfe108, is taken when t0(unknown) <= 0 (signed), and falls through when t0(unknown) > 0 (signed).
  The `beq` branch at 0x2dfdbc0 targets 0x2dfe108, is taken when a6(unknown) == t0(unknown), and falls through when a6(unknown) != t0(unknown).
  The `beq` branch at 0x2dfdbe4 targets 0x2dfdd4c, is taken when t2(=0x1906) == a1(unknown), and falls through when t2(=0x1906) != a1(unknown).
  The `beq` branch at 0x2dfdbec targets 0x2dfdae0, is taken when t3(=0x1909) == a1(unknown), and falls through when t3(=0x1909) != a1(unknown).
  The `beq` branch at 0x2dfdbf4 targets 0x2dfddac, is taken when ra(=0x190a) == a1(unknown), and falls through when ra(=0x190a) != a1(unknown).
  The `beq` branch at 0x2dfdbfc targets 0x2dfdee4, is taken when t1(=0x8049) == a1(unknown), and falls through when t1(=0x8049) != a1(unknown).
  The `beq` branch at 0x2dfdc04 targets 0x2dfe00c, is taken when s0(=0x1907) == a1(unknown), and falls through when s0(=0x1907) != a1(unknown).
  The `bne` branch at 0x2dfdc0c targets 0x2dfdbc0, is taken when s1(=0x1908) != a1(unknown), and falls through when s1(=0x1908) == a1(unknown).
  The `beq` branch at 0x2dfe128 targets 0x2dfe13c, is taken when (a5(=[a0+39260]) & 0x2) == 0, and falls through when (a5(=[a0+39260]) & 0x2) != 0.
  The return at 0x2dfe114 has v0 = unknown.
- `__glInitPacker3D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dfe340 (n64).
  It occupies 112 bytes.
  The `bgezall` at 0x2dfe360 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2dfe3a8 has v0 = unknown.
- `__glSpanRGBAScaleBias` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e02140 (n64).
  It occupies 360 bytes.
  The `blez` branch at 0x2e02168 targets 0x2e022a0, is taken when a4(=[a1+200]) <= 0 (signed), and falls through when a4(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e02178 targets 0x2e021c4, is taken when (a4(=[a1+200]) & 0x3) == 0, and falls through when (a4(=[a1+200]) & 0x3) != 0.
  The `madd.s` at 0x2e02190, 0x2e021e0, 0x2e02210, 0x2e02240, 0x2e02270 is not a branch.
  The `bne` branch at 0x2e021bc targets 0x2e02180, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e021c8 targets 0x2e022a0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e02298 targets 0x2e021d0, is taken when a4(=[a1+200]) != a1(unknown), and falls through when a4(=[a1+200]) == a1(unknown).
  The return at 0x2e022a0 has v0 = unknown.
- `__glSpanRGBAScaleBiasReduce` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e022b0 (n64).
  It occupies 1008 bytes.
  The `beq` branch at 0x2e02334 targets 0x2e02668, is taken when a6(=[a1+88]) == at(=0x80e1), and falls through when a6(=[a1+88]) != at(=0x80e1).
  The `beq` branch at 0x2e02340 targets 0x2e02684, is taken when a6(=[a1+88]) == v1(=0x8000), and falls through when a6(=[a1+88]) != v1(=0x8000).
  The `beq` branch at 0x2e02348 targets 0x2e02500, is taken when a7(=0x1) == a6(=[a1+88]), and falls through when a7(=0x1) != a6(=[a1+88]).
  The `beq` branch at 0x2e02350 targets 0x2e02500, is taken when a6(=[a1+88]) == a0(=0x190a), and falls through when a6(=[a1+88]) != a0(=0x190a).
  The `beq` branch at 0x2e02370 targets 0x2e02518, is taken when a4(=[a1+540]:1) == 0, and falls through when a4(=[a1+540]:1) != 0.
  The `blez` branch at 0x2e02378 targets 0x2e024f8, is taken when t3(=[a1+200]) <= 0 (signed), and falls through when t3(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e023dc targets 0x2e023a0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e023e8 targets 0x2e024d0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e024c4 targets 0x2e023f0, is taken when a2(unknown) != a3(=(sp-16 + ([a1+124] << 0x2))), and falls through when a2(unknown) == a3(=(sp-16 + ([a1+124] << 0x2))).
  The `beq` branch at 0x2e024d0 targets 0x2e024f8, is taken when t3(=[a1+200]) == t1(unknown), and falls through when t3(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e024d8 targets 0x2e024d0, is taken when t2(=[a1+124]) <= 0 (signed), and falls through when t2(=[a1+124]) > 0 (signed).
  The `bne` branch at 0x2e024e8 targets 0x2e023a0, is taken when (t2(=[a1+124]) & 0x3) != 0, and falls through when (t2(=[a1+124]) & 0x3) == 0.
  The `blez` branch at 0x2e02518 targets 0x2e024f8, is taken when t3(=[a1+200]) <= 0 (signed), and falls through when t3(=[a1+200]) > 0 (signed).
  The `madd.s` at 0x2e02560 is not a branch.
  The `bne` branch at 0x2e02570 targets 0x2e02540, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e0257c targets 0x2e02640, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e02634 targets 0x2e02590, is taken when a2(unknown) != a3(=(sp-16 + ([a1+124] << 0x2))), and falls through when a2(unknown) == a3(=(sp-16 + ([a1+124] << 0x2))).
  The `beq` branch at 0x2e02640 targets 0x2e024f8, is taken when t3(=[a1+200]) == t1(unknown), and falls through when t3(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e02648 targets 0x2e02640, is taken when t2(=[a1+124]) <= 0 (signed), and falls through when t2(=[a1+124]) > 0 (signed).
  The `bne` branch at 0x2e02658 targets 0x2e02540, is taken when (t2(=[a1+124]) & 0x3) != 0, and falls through when (t2(=[a1+124]) & 0x3) == 0.
  The return at 0x2e024f8 has v0 = unknown.
- `__glDrawPixelSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e06980 (n64).
  It occupies 656 bytes.
  The `sd` at 0x2e06ae4 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `swc1` at 0x2e06c0c stores 4 bytes to a1 (arg1 at entry) +0xd8 (value [a1+216]).
  The `bgezall` at 0x2e06a34 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x10, a3=unknown, a4=[a1+396].
  The `jalr` at 0x2e06ac0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e06b00 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e06b24 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `blez` branch at 0x2e06a50 targets 0x2e06bd8, is taken when v1(=[a1+188]) <= 0 (signed), and falls through when v1(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e06ae0 targets 0x2e06b18, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e06b10 targets 0x2e06af0, is taken when s1(unknown) != s5(unknown), and falls through when s1(unknown) == s5(unknown).
  The `beq` branch at 0x2e06b48 targets 0x2e06bc0, is taken when s6(unknown) >= a0(unknown) (signed), and falls through when s6(unknown) < a0(unknown) (signed).
  The `bne` branch at 0x2e06b64 targets 0x2e06ab0, is taken when s7(unknown) != a0(unknown), and falls through when s7(unknown) == a0(unknown).
  The `beq` branch at 0x2e06b6c targets 0x2e06bb8, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `beq` branch at 0x2e06b80 targets 0x2e06ab4, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `beq` branch at 0x2e06ba8 targets 0x2e06b80, is taken when s7(unknown) == a0(unknown), and falls through when s7(unknown) != a0(unknown).
  The return at 0x2e06bf8 has v0 = unknown.
- `__glLateScissorRender` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e071f0 (n64).
  It occupies 308 bytes.
  The `sw` at 0x2e07218 stores 4 bytes to a1 (arg1 at entry) +0x268 (value [a1+616]-1).
  The `sd` at 0x2e0725c stores 8 bytes to a1 (arg1 at entry) +0x160 (value 0x2f017a8).
  The `sw` at 0x2e0726c stores 4 bytes to a1 (arg1 at entry) +0xc8 (value ([a1+200] + [a1+576])).
  The `sd` at 0x2e07284 stores 8 bytes to a1 (arg1 at entry) +0x160 (value [0x2f00910]:8).
  The `sw` at 0x2e072a0 stores 4 bytes to a1 (arg1 at entry) +0x268 (value [a1+616]-1).
  The `sd` at 0x2e072b8 stores 8 bytes to abs 0x2f00910 (value [a1+352]:8).
  The `sw` at 0x2e072bc stores 4 bytes to a1 (arg1 at entry) +0xec (value [a1+604]).
  The `sw` at 0x2e072c0 stores 4 bytes to a1 (arg1 at entry) +0xe8 (value [a1+600]).
  The `sw` at 0x2e072c4 stores 4 bytes to a1 (arg1 at entry) +0xdc (value [a1+588]).
  The `sw` at 0x2e072c8 stores 4 bytes to a1 (arg1 at entry) +0xe0 (value [a1+592]).
  The `sw` at 0x2e072e0 stores 4 bytes to a1 (arg1 at entry) +0xe4 (value [a1+596]).
  The `sw` at 0x2e072ec stores 4 bytes to a1 (arg1 at entry) +0xc4 (value ([a1+196] + [a1+576])).
  The `swc1` at 0x2e072f0 stores 4 bytes to a1 (arg1 at entry) +0xd4 (value [a1+580]).
  The `sd` at 0x2e072fc stores 8 bytes to a1 (arg1 at entry) +0x160 (value 0x2f017a8).
  The `jalr` at 0x2e07268 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=([a1+620] + a2), a3=unknown, a4=a2 at entry (arg2), a5=[a1+576], a6=0x2f017a8, a7=([a1+200] + [a1+576]).
  The `bgezall` at 0x2e072f8 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a1+616], a6=0x2f017a8, a7=([a1+196] + [a1+576]).
  The `blez` branch at 0x2e07210 targets 0x2e0722c, is taken when a4(=[a1+616]) <= 0 (signed), and falls through when a4(=[a1+616]) > 0 (signed).
  The `beq` branch at 0x2e07234 targets 0x2e0729c, is taken when a4(=[a1+616]) == 0, and falls through when a4(=[a1+616]) != 0.
  The return at 0x2e07224 has v0 = [a1+616]-1.
  The return at 0x2e07294 has v0 = ret(unknown).
- `__glInitLateScissor` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e07330 (n64).
  It occupies 808 bytes.
  The `sw` at 0x2e074a0 stores 4 bytes to a0 (arg0 at entry) +0x808 (value ([a0+2056] | 0x4000)).
  The `sb` at 0x2e074b8 stores 1 bytes to a1 (arg1 at entry) +0x230 (value ret(__glClipDrawPixels)).
  The `sw` at 0x2e07634 stores 4 bytes to a0 (arg0 at entry) +0x808 (value ([a0+2056] | 0x4000)).
  The `jalr` at 0x2e0746c calls `__glComputeClipBox` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=-0x4001.
  The `bgezall` at 0x2e0747c calls `__glClipDrawPixels` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e0749c calls `__glComputeClipBox` with a0=a0 at entry (arg0), a1=([a0+2056] | 0x4000), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e074ac calls `__glClipDrawPixels` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e07608 calls `__glClipDrawPixels` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0x2e07630 calls `__glComputeClipBox` with a0=a0 at entry (arg0), a1=([a0+2056] | 0x4000), a2=unknown, a3=unknown.
  The `beq` branch at 0x2e0735c targets 0x2e07600, is taken when (at(=[a0+2056]) & 0x4000) == 0, and falls through when (at(=[a0+2056]) & 0x4000) != 0.
  The `beq` branch at 0x2e0736c targets 0x2e075e8, is taken when v0(=[a0+944]:8) == v1(=0x2f01750), and falls through when v0(=[a0+944]:8) != v1(=0x2f01750).
  The `beq` branch at 0x2e07378 targets 0x2e075e8, is taken when a0(=[[a0+944]:8]) == a1(=0x8010), and falls through when a0(=[[a0+944]:8]) != a1(=0x8010).
  The `bne` branch at 0x2e073a8 targets 0x2e07390, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bgtz` branch at 0x2e07450 targets 0x2e073b0, is taken when a4(unknown) > 0 (signed), and falls through when a4(unknown) <= 0 (signed).
  The `beq` branch at 0x2e0748c targets 0x2e07628, is taken when v0(=ret(__glClipDrawPixels)) == 0, and falls through when v0(=ret(__glClipDrawPixels)) != 0.
  The `bc1f` branch at 0x2e0754c targets 0x2e07578, is taken when not (f4(=[a1+176]) < f5(=0x3f800000) (c.lt.s at 0x2e07524)), and falls through when f4(=[a1+176]) < f5(=0x3f800000) (c.lt.s at 0x2e07524).
  The `bc1f` branch at 0x2e07558 targets 0x2e07578, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e0759c targets 0x2e075cc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e075a8 targets 0x2e075cc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bgez` branch at 0x2e075bc targets 0x2e075d0, is taken when v0(unknown) >= 0 (signed), and falls through when v0(unknown) < 0 (signed).
  The `bne` branch at 0x2e075ec targets 0x2e07380, is taken when a1(=[a0+1496]) != 0, and falls through when a1(=[a0+1496]) == 0.
  The `bne` branch at 0x2e075f8 targets 0x2e07380, is taken when a2(=[a0+1616]:1) != 0, and falls through when a2(=[a0+1616]:1) == 0.
  The return at 0x2e075e0 has v0 = 0x1.
  The return at 0x2e07620 has v0 = ret(__glClipDrawPixels).
  The return at 0x2e07650 has v0 = unknown.
- `__glReadPixelSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e07c10 (n64).
  It occupies 464 bytes.
  The `sd` at 0x2e07d58 stores 8 bytes to a1 (arg1 at entry) +0x68 (value ([a1+112] + [a1+104]:8)).
  The `jalr` at 0x2e07d00 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e07d30 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+104]:8.
  The `jalr` at 0x2e07d7c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `blez` branch at 0x2e07ca4 targets 0x2e07dc0, is taken when at(=[a1+188]) <= 0 (signed), and falls through when at(=[a1+188]) > 0 (signed).
  The `bne` branch at 0x2e07d10 targets 0x2e07cf0, is taken when s1(unknown) != s5(=(([a1+396]-1 << 0x3) + a1)), and falls through when s1(unknown) == s5(=(([a1+396]-1 << 0x3) + a1)).
  The `beq` branch at 0x2e07d64 targets 0x2e07da4, is taken when v0(unknown) == s7(unknown), and falls through when v0(unknown) != s7(unknown).
  The `bgtz` branch at 0x2e07d94 targets 0x2e07cf0, is taken when a4(unknown) > 0 (signed), and falls through when a4(unknown) <= 0 (signed).
  The return at 0x2e07dd8 has v0 = unknown.
- `__glCopyPixelSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e08b20 (n64).
  It occupies 700 bytes.
  The `bgezall` at 0x2e08bf4 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x10, a3=unknown, a4=[a1+396].
  The `bgezall` at 0x2e08c10 calls `__glCopyPixelsOverlapping` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e08d1c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e08d50 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e08d74 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `beq` branch at 0x2e08c00 targets 0x2e08c5c, is taken when v1(=[a1+240]:1) == 0, and falls through when v1(=[a1+240]:1) != 0.
  The `blez` branch at 0x2e08c7c targets 0x2e08c18, is taken when a1(=[a1+188]) <= 0 (signed), and falls through when a1(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e08cb0 targets 0x2e08d0c, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e08cd8 targets 0x2e08d0c, is taken when s7(unknown) != a0(unknown), and falls through when s7(unknown) == a0(unknown).
  The `beq` branch at 0x2e08ce0 targets 0x2e08d0c, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `beq` branch at 0x2e08d04 targets 0x2e08cb0, is taken when s7(unknown) == a0(unknown), and falls through when s7(unknown) != a0(unknown).
  The `blez` branch at 0x2e08d30 targets 0x2e08d68, is taken when v0(unknown) <= 0 (signed), and falls through when v0(unknown) > 0 (signed).
  The `bne` branch at 0x2e08d60 targets 0x2e08d40, is taken when s1(unknown) != s5(unknown), and falls through when s1(unknown) == s5(unknown).
  The `beq` branch at 0x2e08d9c targets 0x2e08c18, is taken when s6(unknown) >= a2(unknown) (signed), and falls through when s6(unknown) < a2(unknown) (signed).
  The `bne` branch at 0x2e08dc4 targets 0x2e08d0c, is taken when s7(unknown) != a0(unknown), and falls through when s7(unknown) == a0(unknown).
  The `beq` branch at 0x2e08dcc targets 0x2e08d10, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The return at 0x2e08c54 has v0 = unknown.
- `__glCopyImageSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0a310 (n64).
  It occupies 472 bytes.
  The `sd` at 0x2e0a428 stores 8 bytes to a1 (arg1 at entry) +0x68 (value ([a1+112] + [a1+104]:8)).
  The `sd` at 0x2e0a468 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `jalr` at 0x2e0a404 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+104]:8.
  The `jalr` at 0x2e0a444 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e0a490 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `blez` branch at 0x2e0a398 targets 0x2e0a4c8, is taken when at(=[a1+188]) <= 0 (signed), and falls through when at(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e0a42c targets 0x2e0a4b0, is taken when v0(unknown) == s7(unknown), and falls through when v0(unknown) != s7(unknown).
  The `beq` branch at 0x2e0a46c targets 0x2e0a3f0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e0a4a0 targets 0x2e0a480, is taken when s1(unknown) != s5(=(([a1+396]-1 << 0x3) + a1)), and falls through when s1(unknown) == s5(=(([a1+396]-1 << 0x3) + a1)).
  The return at 0x2e0a4e0 has v0 = unknown.
- `__glGenericPickCopyImageSpan` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0a4f0 (n64).
  It occupies 204 bytes.
  The `sw` at 0x2e0a594 stores 4 bytes to a1 (arg1 at entry) +0xc8 (value 0x0).
  The `sd` at 0x2e0a5b8 stores 8 bytes to (a1 + (ret(PickSpanModifiers)+1 << 0x3)) +0x190 (value 0x2e01990).
  The `bgezall` at 0x2e0a530 calls `PickSpanModifiers` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-64, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e0a53c targets 0x2e0a5a4, is taken when v0(=ret(PickSpanModifiers)) == 0, and falls through when v0(=ret(PickSpanModifiers)) != 0.
  The `beq` branch at 0x2e0a548 targets 0x2e0a564, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `beq` branch at 0x2e0a55c targets 0x2e0a574, is taken when v1(=[[a1+552]:8+4]) == a0(=0x8016), and falls through when v1(=[[a1+552]:8+4]) != a0(=0x8016).
  The `bgez` branch at 0x2e0a584 targets 0x2e0a564, is taken when a1(unknown) >= 0 (signed), and falls through when a1(unknown) < 0 (signed).
  The return at 0x2e0a56c has v0 = unknown.
  The return at 0x2e0a59c has v0 = unknown.
- `__glSpanReadDepthUint1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0b280 (n64).
  It occupies 248 bytes.
  The `jalr` at 0x2e0b320 calls `(unknown callee)` with a0=a0+40184, a1=unknown, a2=unknown, a3=unknown.
  The `blez` branch at 0x2e0b2ec targets 0x2e0b350, is taken when s4(=[a1+196]) <= 0 (signed), and falls through when s4(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e0b33c targets 0x2e0b310, is taken when s4(=[a1+196]) != s3(unknown), and falls through when s4(=[a1+196]) == s3(unknown).
  The return at 0x2e0b370 has v0 = unknown.
- `__glSpanRenderDepthUint1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0c430 (n64).
  It occupies 368 bytes.
  The `jalr` at 0x2e0c538 calls `(unknown callee)` with a0=[a0+18200]:8, a1=sp-192, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e0c4e0 targets 0x2e0c56c, is taken when at(=[a1+224]) == v0(unknown), and falls through when at(=[a1+224]) != v0(unknown).
  The `beq` branch at 0x2e0c500 targets 0x2e0c55c, is taken when s7(unknown) == 0, and falls through when s7(unknown) != 0.
  The `bnel` branch at 0x2e0c544 targets 0x2e0c520, is taken when s6(=[a1+228]) != s0(unknown), and falls through when s6(=[a1+228]) == s0(unknown).
  The `bne` branch at 0x2e0c558 targets 0x2e0c500, is taken when a0(unknown) != s8(unknown), and falls through when a0(unknown) == s8(unknown).
  The return at 0x2e0c598 has v0 = unknown.
- `__glSpecElementsPerGroup` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0e3f0 (n64).
  It occupies 452 bytes.
  The `bne` branch at 0x2e0e3f8 targets 0x2e0e43c, is taken when a1 < a3(=0x8363) (unsigned), and falls through when a1 >= a3(=0x8363) (unsigned).
  The `beq` branch at 0x2e0e400 targets 0x2e0e46c, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e0e40c targets 0x2e0e514, is taken when a1 < a3(=0x8366) (unsigned), and falls through when a1 >= a3(=0x8366) (unsigned).
  The `beq` branch at 0x2e0e414 targets 0x2e0e46c, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x2e0e424 targets 0x2e0e59c, is taken when a1 < a3(=0x8368) (unsigned), and falls through when a1 >= a3(=0x8368) (unsigned).
  The `bne` branch at 0x2e0e42c targets 0x2e0e4ac, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e0e444 targets 0x2e0e474, is taken when a1 < a3(=0x8035) (unsigned), and falls through when a1 >= a3(=0x8035) (unsigned).
  The `beq` branch at 0x2e0e44c targets 0x2e0e46c, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e0e45c targets 0x2e0e57c, is taken when a1 < a3(=0x8362) (unsigned), and falls through when a1 >= a3(=0x8362) (unsigned).
  The `bne` branch at 0x2e0e464 targets 0x2e0e4ac, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e0e480 targets 0x2e0e4a0, is taken when a1 < a3(=0x8033) (unsigned), and falls through when a1 >= a3(=0x8033) (unsigned).
  The `beq` branch at 0x2e0e488 targets 0x2e0e46c, is taken when t3(unknown) == 0, and falls through when t3(unknown) != 0.
  The `bne` branch at 0x2e0e490 targets 0x2e0e4ac, is taken when a1 != t8(=0x8034), and falls through when a1 == t8(=0x8034).
  The `beq` branch at 0x2e0e4a4 targets 0x2e0e46c, is taken when a1 == t9(=0x8032), and falls through when a1 != t9(=0x8032).
  The `bne` branch at 0x2e0e4b0 targets 0x2e0e4ec, is taken when a0 < a1(=0x8000) (unsigned), and falls through when a0 >= a1(=0x8000) (unsigned).
  The `beq` branch at 0x2e0e4b8 targets 0x2e0e538, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e0e4cc targets 0x2e0e55c, is taken when a0 < a1(=0x80e1) (unsigned), and falls through when a0 >= a1(=0x80e1) (unsigned).
  The `beq` branch at 0x2e0e4d4 targets 0x2e0e538, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x2e0e4dc targets 0x2e0e50c, is taken when a0 != a3(=0x81bb), and falls through when a0 == a3(=0x81bb).
  The `bne` branch at 0x2e0e4f0 targets 0x2e0e540, is taken when a0 < 0x1908 (unsigned), and falls through when a0 >= 0x1908 (unsigned).
  The `bne` branch at 0x2e0e4fc targets 0x2e0e538, is taken when a0 < 0x1909 (unsigned), and falls through when a0 >= 0x1909 (unsigned).
  The `beq` branch at 0x2e0e504 targets 0x2e0e5ac, is taken when a0 == a5(=0x190a), and falls through when a0 != a5(=0x190a).
  The `bne` branch at 0x2e0e520 targets 0x2e0e56c, is taken when a1 < a3(=0x8365) (unsigned), and falls through when a1 >= a3(=0x8365) (unsigned).
  The `bne` branch at 0x2e0e528 targets 0x2e0e4ac, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2e0e544 targets 0x2e0e58c, is taken when a0 < 0x1907 (unsigned), and falls through when a0 >= 0x1907 (unsigned).
  The `beq` branch at 0x2e0e54c targets 0x2e0e50c, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e0e55c targets 0x2e0e50c, is taken when a0 != t1(=0x80e0), and falls through when a0 == t1(=0x80e0).
  The `bne` branch at 0x2e0e56c targets 0x2e0e4ac, is taken when a1 != t2(=0x8364), and falls through when a1 == t2(=0x8364).
  The `bne` branch at 0x2e0e57c targets 0x2e0e4ac, is taken when a1 != t3(=0x8036), and falls through when a1 == t3(=0x8036).
  The `bne` branch at 0x2e0e58c targets 0x2e0e50c, is taken when a0 != t8(=0x1), and falls through when a0 == t8(=0x1).
  The `bne` branch at 0x2e0e59c targets 0x2e0e4ac, is taken when a1 != t9(=0x8367), and falls through when a1 == t9(=0x8367).
  The return at 0x2e0e46c has v0 = 0x1.
  The return at 0x2e0e4e4 has v0 = 0x2.
  The return at 0x2e0e50c has v0 = 0x1.
  The return at 0x2e0e538 has v0 = 0x4.
  The return at 0x2e0e554 has v0 = 0x3.
  The return at 0x2e0e594 has v0 = 0x2.
  The return at 0x2e0e5ac has v0 = 0x2.
- `__glSpecBytesPerElement` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0e5c0 (n64).
  It occupies 452 bytes.
  The `bne` branch at 0x2e0e5c8 targets 0x2e0e618, is taken when a0 < a2(=0x8034) (unsigned), and falls through when a0 >= a2(=0x8034) (unsigned).
  The `beq` branch at 0x2e0e5d0 targets 0x2e0e674, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e0e5dc targets 0x2e0e6b8, is taken when a0 < a2(=0x8364) (unsigned), and falls through when a0 >= a2(=0x8364) (unsigned).
  The `beq` branch at 0x2e0e5e4 targets 0x2e0e674, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e0e5f8 targets 0x2e0e658, is taken when a0 < a2(=0x8367) (unsigned), and falls through when a0 >= a2(=0x8367) (unsigned).
  The `beq` branch at 0x2e0e600 targets 0x2e0e700, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x2e0e608 targets 0x2e0e684, is taken when a0 != a5(=0x8368), and falls through when a0 == a5(=0x8368).
  The `bne` branch at 0x2e0e61c targets 0x2e0e68c, is taken when a0 < 0x1405 (unsigned), and falls through when a0 >= 0x1405 (unsigned).
  The `bne` branch at 0x2e0e628 targets 0x2e0e700, is taken when a0 < 0x1406 (unsigned), and falls through when a0 >= 0x1406 (unsigned).
  The `bne` branch at 0x2e0e634 targets 0x2e0e724, is taken when a0 < a2(=0x8032) (unsigned), and falls through when a0 >= a2(=0x8032) (unsigned).
  The `beq` branch at 0x2e0e640 targets 0x2e0e71c, is taken when a2(=0x8032) >= a0 (unsigned), and falls through when a2(=0x8032) < a0 (unsigned).
  The `bne` branch at 0x2e0e648 targets 0x2e0e684, is taken when a0 != t1(=0x8033), and falls through when a0 == t1(=0x8033).
  The `bne` branch at 0x2e0e660 targets 0x2e0e774, is taken when a0 < a2(=0x8366) (unsigned), and falls through when a0 >= a2(=0x8366) (unsigned).
  The `bne` branch at 0x2e0e66c targets 0x2e0e684, is taken when a2(=0x8366) < a0 (unsigned), and falls through when a2(=0x8366) >= a0 (unsigned).
  The `beq` branch at 0x2e0e67c targets 0x2e0e71c, is taken when a0 == t8(=0x1400), and falls through when a0 != t8(=0x1400).
  The `bne` branch at 0x2e0e68c targets 0x2e0e708, is taken when a3(unknown) != 0, and falls through when a3(unknown) == 0.
  The `bne` branch at 0x2e0e698 targets 0x2e0e674, is taken when a0 < 0x1403 (unsigned), and falls through when a0 >= 0x1403 (unsigned).
  The `bne` branch at 0x2e0e6a0 targets 0x2e0e764, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `beq` branch at 0x2e0e6a8 targets 0x2e0e684, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x2e0e6c0 targets 0x2e0e6e4, is taken when a0 < a2(=0x8362) (unsigned), and falls through when a0 >= a2(=0x8362) (unsigned).
  The `beq` branch at 0x2e0e6cc targets 0x2e0e71c, is taken when a2(=0x8362) >= a0 (unsigned), and falls through when a2(=0x8362) < a0 (unsigned).
  The `bne` branch at 0x2e0e6d4 targets 0x2e0e684, is taken when a0 != a1(=0x8363), and falls through when a0 == a1(=0x8363).
  The `bne` branch at 0x2e0e6f0 targets 0x2e0e744, is taken when a0 < a2(=0x8036) (unsigned), and falls through when a0 >= a2(=0x8036) (unsigned).
  The `bne` branch at 0x2e0e6f8 targets 0x2e0e684, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `bne` branch at 0x2e0e70c targets 0x2e0e67c, is taken when a0 < 0x1401 (unsigned), and falls through when a0 >= 0x1401 (unsigned).
  The `beq` branch at 0x2e0e714 targets 0x2e0e684, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `bne` branch at 0x2e0e72c targets 0x2e0e754, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e0e734 targets 0x2e0e684, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e0e744 targets 0x2e0e684, is taken when a0 != t0(=0x8035), and falls through when a0 == t0(=0x8035).
  The `bne` branch at 0x2e0e754 targets 0x2e0e684, is taken when a0 != t1(=0x1406), and falls through when a0 == t1(=0x1406).
  The `bne` branch at 0x2e0e764 targets 0x2e0e684, is taken when a0 != t2(=0x1403), and falls through when a0 == t2(=0x1403).
  The `bne` branch at 0x2e0e774 targets 0x2e0e684, is taken when a0 != t3(=0x8365), and falls through when a0 == t3(=0x8365).
  The return at 0x2e0e674 has v0 = 0x2.
  The return at 0x2e0e684 has v0 = 0x0.
  The return at 0x2e0e700 has v0 = 0x4.
  The return at 0x2e0e71c has v0 = 0x1.
  The return at 0x2e0e73c has v0 = 0x1.
- `__glInitUnpacker3D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0e980 (n64).
  It occupies 112 bytes.
  The `bgezall` at 0x2e0e9a0 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e0e9e8 has v0 = unknown.
- `__glSpanSwapBytes4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10680 (n64).
  It occupies 88 bytes.
  The `blez` branch at 0x2e10698 targets 0x2e106d0, is taken when a6(unknown) <= 0 (signed), and falls through when a6(unknown) > 0 (signed).
  The `bne` branch at 0x2e106c8 targets 0x2e106a0, is taken when a6(unknown) != a1(unknown), and falls through when a6(unknown) == a1(unknown).
  The return at 0x2e106d0 has v0 = [a1+40].
- `__glSpanSwapBytes4Dst` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e106e0 (n64).
  It occupies 88 bytes.
  The `blez` branch at 0x2e106f8 targets 0x2e10730, is taken when a6(unknown) <= 0 (signed), and falls through when a6(unknown) > 0 (signed).
  The `bne` branch at 0x2e10728 targets 0x2e10700, is taken when a6(unknown) != a1(unknown), and falls through when a6(unknown) == a1(unknown).
  The return at 0x2e10730 has v0 = [a1+128].
- `__glSpanSwapAndSkipBytes4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10740 (n64).
  It occupies 136 bytes.
  The `blez` branch at 0x2e10754 targets 0x2e107c0, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `blez` branch at 0x2e10760 targets 0x2e107a0, is taken when a6(=[a1+40]) <= 0 (signed), and falls through when a6(=[a1+40]) > 0 (signed).
  The `bne` branch at 0x2e10798 targets 0x2e10770, is taken when a6(=[a1+40]) != a1(unknown), and falls through when a6(=[a1+40]) == a1(unknown).
  The `bne` branch at 0x2e107b8 targets 0x2e10760, is taken when t1(=[a1+196]) != a2(unknown), and falls through when t1(=[a1+196]) == a2(unknown).
  The return at 0x2e107c0 has v0 = unknown.
- `__glSpanSkipPixels1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e107d0 (n64).
  It occupies 188 bytes.
  The `blez` branch at 0x2e107e4 targets 0x2e10884, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e10804 targets 0x2e10838, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e10828 targets 0x2e10810, is taken when a4(=[a1+40]) != a3(unknown), and falls through when a4(=[a1+40]) == a3(unknown).
  The `beq` branch at 0x2e1084c targets 0x2e10884, is taken when t1(=[a1+196]) == t0(unknown), and falls through when t1(=[a1+196]) != t0(unknown).
  The `blez` branch at 0x2e10854 targets 0x2e10838, is taken when a4(=[a1+40]) <= 0 (signed), and falls through when a4(=[a1+40]) > 0 (signed).
  The `beq` branch at 0x2e10864 targets 0x2e10800, is taken when (a4(=[a1+40]) & 0x1) == 0, and falls through when (a4(=[a1+40]) & 0x1) != 0.
  The return at 0x2e10884 has v0 = unknown.
- `__glSpanSkipPixels2` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10890 (n64).
  It occupies 188 bytes.
  The `blez` branch at 0x2e108a4 targets 0x2e10944, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e108c4 targets 0x2e108f8, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e108e8 targets 0x2e108d0, is taken when a4(=[a1+40]) != a3(unknown), and falls through when a4(=[a1+40]) == a3(unknown).
  The `beq` branch at 0x2e1090c targets 0x2e10944, is taken when t1(=[a1+196]) == t0(unknown), and falls through when t1(=[a1+196]) != t0(unknown).
  The `blez` branch at 0x2e10914 targets 0x2e108f8, is taken when a4(=[a1+40]) <= 0 (signed), and falls through when a4(=[a1+40]) > 0 (signed).
  The `beq` branch at 0x2e10924 targets 0x2e108c0, is taken when (a4(=[a1+40]) & 0x1) == 0, and falls through when (a4(=[a1+40]) & 0x1) != 0.
  The return at 0x2e10944 has v0 = unknown.
- `__glSpanSkipPixels4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10950 (n64).
  It occupies 188 bytes.
  The `blez` branch at 0x2e10964 targets 0x2e10a04, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e10984 targets 0x2e109b8, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e109a8 targets 0x2e10990, is taken when a4(=[a1+40]) != a3(unknown), and falls through when a4(=[a1+40]) == a3(unknown).
  The `beq` branch at 0x2e109cc targets 0x2e10a04, is taken when t1(=[a1+196]) == t0(unknown), and falls through when t1(=[a1+196]) != t0(unknown).
  The `blez` branch at 0x2e109d4 targets 0x2e109b8, is taken when a4(=[a1+40]) <= 0 (signed), and falls through when a4(=[a1+40]) > 0 (signed).
  The `beq` branch at 0x2e109e4 targets 0x2e10980, is taken when (a4(=[a1+40]) & 0x1) == 0, and falls through when (a4(=[a1+40]) & 0x1) != 0.
  The return at 0x2e10a04 has v0 = unknown.
- `__glSpanSlowSkipPixels4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10a90 (n64).
  It occupies 136 bytes.
  The `blez` branch at 0x2e10aa4 targets 0x2e10b10, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `blez` branch at 0x2e10ab0 targets 0x2e10af0, is taken when a6(=[a1+40]) <= 0 (signed), and falls through when a6(=[a1+40]) > 0 (signed).
  The `bne` branch at 0x2e10ae8 targets 0x2e10ac0, is taken when a6(=[a1+40]) != a1(unknown), and falls through when a6(=[a1+40]) == a1(unknown).
  The `bne` branch at 0x2e10b08 targets 0x2e10ab0, is taken when t1(=[a1+196]) != a2(unknown), and falls through when t1(=[a1+196]) == a2(unknown).
  The return at 0x2e10b10 has v0 = unknown.
- `__glSpanAlignPixels4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10bc0 (n64).
  It occupies 88 bytes.
  The `blez` branch at 0x2e10bd8 targets 0x2e10c10, is taken when a6(unknown) <= 0 (signed), and falls through when a6(unknown) > 0 (signed).
  The `bne` branch at 0x2e10c08 targets 0x2e10be0, is taken when a6(unknown) != a1(unknown), and falls through when a6(unknown) == a1(unknown).
  The return at 0x2e10c10 has v0 = [a1+40].
- `__glSpanAlignPixels4Dst` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10c20 (n64).
  It occupies 88 bytes.
  The `blez` branch at 0x2e10c38 targets 0x2e10c70, is taken when a6(unknown) <= 0 (signed), and falls through when a6(unknown) > 0 (signed).
  The `bne` branch at 0x2e10c68 targets 0x2e10c40, is taken when a6(unknown) != a1(unknown), and falls through when a6(unknown) == a1(unknown).
  The return at 0x2e10c70 has v0 = [a1+128].
- `__glSpanClampPreFloat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e12ce0 (n64).
  It occupies 192 bytes.
  The `blez` branch at 0x2e12cf8 targets 0x2e12d48, is taken when a7(unknown) <= 0 (signed), and falls through when a7(unknown) > 0 (signed).
  The `beq` branch at 0x2e12d0c targets 0x2e12d40, is taken when (a7(unknown) & 0x1) == 0, and falls through when (a7(unknown) & 0x1) != 0.
  The `bc1f` branch at 0x2e12d20 targets 0x2e12d30, is taken when not (f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12d18)), and falls through when f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12d18).
  The `bnel` branch at 0x2e12d40 targets 0x2e12d68, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e12d5c targets 0x2e12d48, is taken when a7(unknown) == a1(unknown), and falls through when a7(unknown) != a1(unknown).
  The `bc1f` branch at 0x2e12d6c targets 0x2e12d7c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e12d90 targets 0x2e12d50, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e12d48 has v0 = [a1+36].
- `__glSpanClampNegPreFloat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e12da0 (n64).
  It occupies 192 bytes.
  The `blez` branch at 0x2e12dbc targets 0x2e12e08, is taken when a7(unknown) <= 0 (signed), and falls through when a7(unknown) > 0 (signed).
  The `beq` branch at 0x2e12dcc targets 0x2e12e00, is taken when (a7(unknown) & 0x1) == 0, and falls through when (a7(unknown) & 0x1) != 0.
  The `bc1f` branch at 0x2e12de0 targets 0x2e12df0, is taken when not (f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12dd8)), and falls through when f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12dd8).
  The `bnel` branch at 0x2e12e00 targets 0x2e12e28, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e12e1c targets 0x2e12e08, is taken when a7(unknown) == a1(unknown), and falls through when a7(unknown) != a1(unknown).
  The `bc1f` branch at 0x2e12e2c targets 0x2e12e3c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e12e50 targets 0x2e12e10, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e12e08 has v0 = [a1+36].
- `__glSpanClampPostFloat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e12e60 (n64).
  It occupies 192 bytes.
  The `blez` branch at 0x2e12e78 targets 0x2e12ec8, is taken when a7(unknown) <= 0 (signed), and falls through when a7(unknown) > 0 (signed).
  The `beq` branch at 0x2e12e8c targets 0x2e12ec0, is taken when (a7(unknown) & 0x1) == 0, and falls through when (a7(unknown) & 0x1) != 0.
  The `bc1f` branch at 0x2e12ea0 targets 0x2e12eb0, is taken when not (f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12e98)), and falls through when f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12e98).
  The `bnel` branch at 0x2e12ec0 targets 0x2e12ee8, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e12edc targets 0x2e12ec8, is taken when a7(unknown) == a1(unknown), and falls through when a7(unknown) != a1(unknown).
  The `bc1f` branch at 0x2e12eec targets 0x2e12efc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e12f10 targets 0x2e12ed0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e12ec8 has v0 = [a1+124].
- `__glSpanClampSigned` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e13630 (n64).
  It occupies 184 bytes.
  The `blez` branch at 0x2e13648 targets 0x2e136e0, is taken when a4(unknown) <= 0 (signed), and falls through when a4(unknown) > 0 (signed).
  The `beq` branch at 0x2e13658 targets 0x2e13684, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x2e1367c targets 0x2e13660, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e13688 targets 0x2e136e0, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `bne` branch at 0x2e136d8 targets 0x2e13690, is taken when a4(unknown) != a1(unknown), and falls through when a4(unknown) == a1(unknown).
  The return at 0x2e136e0 has v0 = [a1+124].
- `__glSpanZeroFillAlpha` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e142b0 (n64).
  It occupies 232 bytes.
  The `blez` branch at 0x2e142b8 targets 0x2e14390, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e142cc targets 0x2e14304, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e142fc targets 0x2e142d4, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e14308 targets 0x2e14390, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e14388 targets 0x2e14310, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e14390 has v0 = unknown.
- `__glSpanGetMemRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e14fb0 (n64).
  It occupies 248 bytes.
  The `blez` branch at 0x2e14fb8 targets 0x2e150a0, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e14fc8 targets 0x2e15004, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e14ffc targets 0x2e14fd0, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e15008 targets 0x2e150a0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15098 targets 0x2e15010, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e150a0 has v0 = unknown.
- `__glSpanGetMemRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e150b0 (n64).
  It occupies 232 bytes.
  The `blez` branch at 0x2e150b8 targets 0x2e15190, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e150cc targets 0x2e15104, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e150fc targets 0x2e150d4, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e15108 targets 0x2e15190, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15188 targets 0x2e15110, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e15190 has v0 = unknown.
- `__glSpanGetMemL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e151a0 (n64).
  It occupies 76 bytes.
  The `blez` branch at 0x2e151a8 targets 0x2e151e4, is taken when a6(=[a1+196]) <= 0 (signed), and falls through when a6(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e151dc targets 0x2e151c0, is taken when a6(=[a1+196]) != a1(unknown), and falls through when a6(=[a1+196]) == a1(unknown).
  The return at 0x2e151e4 has v0 = unknown.
- `__glSpanGetMemLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e151f0 (n64).
  It occupies 80 bytes.
  The `blez` branch at 0x2e151f8 targets 0x2e15238, is taken when a6(=[a1+196]) <= 0 (signed), and falls through when a6(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e15230 targets 0x2e15210, is taken when a6(=[a1+196]) != a1(unknown), and falls through when a6(=[a1+196]) == a1(unknown).
  The return at 0x2e15238 has v0 = unknown.
- `__glSpanGetMemI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15240 (n64).
  It occupies 76 bytes.
  The `blez` branch at 0x2e15248 targets 0x2e15284, is taken when a6(=[a1+196]) <= 0 (signed), and falls through when a6(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e1527c targets 0x2e15260, is taken when a6(=[a1+196]) != a1(unknown), and falls through when a6(=[a1+196]) == a1(unknown).
  The return at 0x2e15284 has v0 = unknown.
- `__glSpanMemPutRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15290 (n64).
  It occupies 248 bytes.
  The `blez` branch at 0x2e15298 targets 0x2e15380, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e152a8 targets 0x2e152e4, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e152dc targets 0x2e152b0, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e152e8 targets 0x2e15380, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15378 targets 0x2e152f0, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e15380 has v0 = unknown.
- `__glSpanMemPutRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15390 (n64).
  It occupies 216 bytes.
  The `blez` branch at 0x2e15398 targets 0x2e15460, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e153a8 targets 0x2e153dc, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e153d4 targets 0x2e153b0, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e153e0 targets 0x2e15460, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15458 targets 0x2e153f0, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e15460 has v0 = unknown.
- `__glSpanMemPutL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15470 (n64).
  It occupies 136 bytes.
  The `blez` branch at 0x2e15478 targets 0x2e154f0, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e15488 targets 0x2e154ac, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e154a4 targets 0x2e15490, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e154b0 targets 0x2e154f0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e154e8 targets 0x2e154c0, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e154f0 has v0 = unknown.
- `__glSpanMemPutLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15500 (n64).
  It occupies 168 bytes.
  The `blez` branch at 0x2e15508 targets 0x2e155a0, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e15518 targets 0x2e15544, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e1553c targets 0x2e15520, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e15548 targets 0x2e155a0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15598 targets 0x2e15550, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e155a0 has v0 = unknown.
- `__glSpanMemPutI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e155b0 (n64).
  It occupies 136 bytes.
  The `blez` branch at 0x2e155b8 targets 0x2e15630, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e155c8 targets 0x2e155ec, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e155e4 targets 0x2e155d0, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e155f0 targets 0x2e15630, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15628 targets 0x2e15600, is taken when a4(=[a1+196]) != a1(unknown), and falls through when a4(=[a1+196]) == a1(unknown).
  The return at 0x2e15630 has v0 = unknown.
- `__glRowScaleSumRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15640 (n64).
  It occupies 328 bytes.
  The `blez` branch at 0x2e15648 targets 0x2e15780, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15658 targets 0x2e156bc, is taken when (a5(=[a1+200]) & 0x1) == 0, and falls through when (a5(=[a1+200]) & 0x1) != 0.
  The `beq` branch at 0x2e156c0 targets 0x2e15780, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e15778 targets 0x2e156d0, is taken when a5(=[a1+200]) != a4(unknown), and falls through when a5(=[a1+200]) == a4(unknown).
  The return at 0x2e15780 has v0 = unknown.
- `__glRowScaleSumRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15790 (n64).
  It occupies 392 bytes.
  The `blez` branch at 0x2e15798 targets 0x2e15910, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e157a8 targets 0x2e15800, is taken when (a5(=[a1+200]) & 0x3) == 0, and falls through when (a5(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e157f8 targets 0x2e157b0, is taken when a3(unknown) != 0, and falls through when a3(unknown) == 0.
  The `beq` branch at 0x2e15804 targets 0x2e15910, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15908 targets 0x2e15810, is taken when a5(=[a1+200]) != a1(unknown), and falls through when a5(=[a1+200]) == a1(unknown).
  The return at 0x2e15910 has v0 = unknown.
- `__glRowScaleSumL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15920 (n64).
  It occupies 392 bytes.
  The `blez` branch at 0x2e15928 targets 0x2e15aa0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15938 targets 0x2e15990, is taken when (a5(=[a1+200]) & 0x3) == 0, and falls through when (a5(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e15988 targets 0x2e15940, is taken when a3(unknown) != 0, and falls through when a3(unknown) == 0.
  The `beq` branch at 0x2e15994 targets 0x2e15aa0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15a98 targets 0x2e159a0, is taken when a5(=[a1+200]) != a1(unknown), and falls through when a5(=[a1+200]) == a1(unknown).
  The return at 0x2e15aa0 has v0 = unknown.
- `__glRowScaleSumLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15ab0 (n64).
  It occupies 328 bytes.
  The `blez` branch at 0x2e15ab8 targets 0x2e15bf0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15ac8 targets 0x2e15b2c, is taken when (a5(=[a1+200]) & 0x1) == 0, and falls through when (a5(=[a1+200]) & 0x1) != 0.
  The `beq` branch at 0x2e15b30 targets 0x2e15bf0, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e15be8 targets 0x2e15b40, is taken when a5(=[a1+200]) != a4(unknown), and falls through when a5(=[a1+200]) == a4(unknown).
  The return at 0x2e15bf0 has v0 = unknown.
- `__glRowScaleSumI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15c00 (n64).
  It occupies 328 bytes.
  The `blez` branch at 0x2e15c08 targets 0x2e15d40, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15c18 targets 0x2e15c7c, is taken when (a5(=[a1+200]) & 0x1) == 0, and falls through when (a5(=[a1+200]) & 0x1) != 0.
  The `beq` branch at 0x2e15c80 targets 0x2e15d40, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e15d38 targets 0x2e15c90, is taken when a5(=[a1+200]) != a4(unknown), and falls through when a5(=[a1+200]) == a4(unknown).
  The return at 0x2e15d40 has v0 = unknown.
- `__glSpanPostConvScaleBiasRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15d50 (n64).
  It occupies 408 bytes.
  The `blez` branch at 0x2e15da8 targets 0x2e15ee0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15db0 targets 0x2e15dfc, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `madd.s` at 0x2e15dc8, 0x2e15e20, 0x2e15e50, 0x2e15e80, 0x2e15eb0 is not a branch.
  The `bne` branch at 0x2e15df4 targets 0x2e15db8, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e15e00 targets 0x2e15ee0, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e15ed8 targets 0x2e15e10, is taken when a5(=[a1+200]) != a1(unknown), and falls through when a5(=[a1+200]) == a1(unknown).
  The return at 0x2e15ee0 has v0 = unknown.
- `__glRowSetNoAlpha` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15ef0 (n64).
  It occupies 200 bytes.
  The `blez` branch at 0x2e15ef8 targets 0x2e15fb0, is taken when a4(=[a1+200]) <= 0 (signed), and falls through when a4(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15f0c targets 0x2e15f3c, is taken when (a4(=[a1+200]) & 0x3) == 0, and falls through when (a4(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e15f34 targets 0x2e15f14, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e15f40 targets 0x2e15fb0, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e15fa8 targets 0x2e15f50, is taken when a4(=[a1+200]) != a1(unknown), and falls through when a4(=[a1+200]) == a1(unknown).
  The return at 0x2e15fb0 has v0 = unknown.
- `__glRowSetAll` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15fc0 (n64).
  It occupies 68 bytes.
  The `blez` branch at 0x2e15fc8 targets 0x2e15ffc, is taken when a4(=[a1+200]) <= 0 (signed), and falls through when a4(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e15ff4 targets 0x2e15fe0, is taken when a4(=[a1+200]) != a1(unknown), and falls through when a4(=[a1+200]) == a1(unknown).
  The return at 0x2e15ffc has v0 = unknown.
- `__glSpanConvolveReduceRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16010 (n64).
  It occupies 400 bytes.
  The `blez` branch at 0x2e16020 targets 0x2e1618c, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e1606c targets 0x2e16030, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e16078 targets 0x2e16150, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e16148 targets 0x2e16080, is taken when a6(=[[a1+552]:8+64]) != a3(unknown), and falls through when a6(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e16158 targets 0x2e1618c, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e16164 targets 0x2e16150, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e1617c targets 0x2e16030, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The return at 0x2e1618c has v0 = unknown.
- `__glSpanConvolveReduceRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e161a0 (n64).
  It occupies 484 bytes.
  The `blez` branch at 0x2e161b0 targets 0x2e16370, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e1620c targets 0x2e161c0, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e16218 targets 0x2e16330, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e16328 targets 0x2e16220, is taken when a6(=[[a1+552]:8+64]) != a3(unknown), and falls through when a6(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e16338 targets 0x2e16370, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e16344 targets 0x2e16330, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e16360 targets 0x2e161c0, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The return at 0x2e16370 has v0 = unknown.
- `__glSpanConvolveReduceL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16390 (n64).
  It occupies 400 bytes.
  The `blez` branch at 0x2e163a0 targets 0x2e1650c, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e163ec targets 0x2e163b0, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e163f8 targets 0x2e164d0, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e164c8 targets 0x2e16400, is taken when a6(=[[a1+552]:8+64]) != a3(unknown), and falls through when a6(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e164d8 targets 0x2e1650c, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e164e4 targets 0x2e164d0, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e164fc targets 0x2e163b0, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The return at 0x2e1650c has v0 = unknown.
- `__glSpanConvolveReduceLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16520 (n64).
  It occupies 484 bytes.
  The `blez` branch at 0x2e16530 targets 0x2e166f0, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e1658c targets 0x2e16540, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e16598 targets 0x2e166b0, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e166a8 targets 0x2e165a0, is taken when a6(=[[a1+552]:8+64]) != a3(unknown), and falls through when a6(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e166b8 targets 0x2e166f0, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e166c4 targets 0x2e166b0, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e166e0 targets 0x2e16540, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The return at 0x2e166f0 has v0 = unknown.
- `__glSpanConvolveReduceI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16710 (n64).
  It occupies 484 bytes.
  The `blez` branch at 0x2e16720 targets 0x2e168e0, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e1677c targets 0x2e16730, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e16788 targets 0x2e168a0, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e16898 targets 0x2e16790, is taken when a6(=[[a1+552]:8+64]) != a3(unknown), and falls through when a6(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e168a8 targets 0x2e168e0, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `blez` branch at 0x2e168b4 targets 0x2e168a0, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e168d0 targets 0x2e16730, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The return at 0x2e168e0 has v0 = unknown.
- `__glSpanConvolve1DReduceRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16900 (n64).
  It occupies 388 bytes.
  The `blez` branch at 0x2e16910 targets 0x2e16a68, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16928 targets 0x2e16968, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e16960 targets 0x2e16930, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e1696c targets 0x2e16a20, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e16a18 targets 0x2e16980, is taken when a5(=[[a1+552]:8+64]) != a3(unknown), and falls through when a5(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e16a44 targets 0x2e16a68, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `bgtz` branch at 0x2e16a50 targets 0x2e16920, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The return at 0x2e16a68 has v0 = unknown.
- `__glSpanConvolve1DReduceRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16a90 (n64).
  It occupies 436 bytes.
  The `blez` branch at 0x2e16aa0 targets 0x2e16c30, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16ac4 targets 0x2e16b10, is taken when (a5(=[[a1+552]:8+64]) & 0x3) == 0, and falls through when (a5(=[[a1+552]:8+64]) & 0x3) != 0.
  The `bne` branch at 0x2e16b08 targets 0x2e16acc, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e16b14 targets 0x2e16bf0, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e16be8 targets 0x2e16b20, is taken when a5(=[[a1+552]:8+64]) != a3(unknown), and falls through when a5(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e16c0c targets 0x2e16c30, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `bgtz` branch at 0x2e16c14 targets 0x2e16ab0, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The return at 0x2e16c30 has v0 = unknown.
- `__glSpanConvolve1DReduceL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16c50 (n64).
  It occupies 340 bytes.
  The `blez` branch at 0x2e16c60 targets 0x2e16d88, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16c78 targets 0x2e16cb0, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e16ca8 targets 0x2e16c80, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e16cb4 targets 0x2e16d40, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e16d38 targets 0x2e16cc0, is taken when a5(=[[a1+552]:8+64]) != a3(unknown), and falls through when a5(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e16d64 targets 0x2e16d88, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `bgtz` branch at 0x2e16d70 targets 0x2e16c70, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The return at 0x2e16d88 has v0 = unknown.
- `__glSpanConvolve1DReduceLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16db0 (n64).
  It occupies 404 bytes.
  The `blez` branch at 0x2e16dc0 targets 0x2e16f30, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16de4 targets 0x2e16e28, is taken when (a5(=[[a1+552]:8+64]) & 0x3) == 0, and falls through when (a5(=[[a1+552]:8+64]) & 0x3) != 0.
  The `bne` branch at 0x2e16e20 targets 0x2e16dec, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e16e2c targets 0x2e16ef0, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e16ee8 targets 0x2e16e40, is taken when a5(=[[a1+552]:8+64]) != a3(unknown), and falls through when a5(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e16f0c targets 0x2e16f30, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `bgtz` branch at 0x2e16f14 targets 0x2e16dd0, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The return at 0x2e16f30 has v0 = unknown.
- `__glSpanConvolve1DReduceI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16f50 (n64).
  It occupies 372 bytes.
  The `blez` branch at 0x2e16f60 targets 0x2e170b0, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16f84 targets 0x2e16fc4, is taken when (a5(=[[a1+552]:8+64]) & 0x3) == 0, and falls through when (a5(=[[a1+552]:8+64]) & 0x3) != 0.
  The `bne` branch at 0x2e16fbc targets 0x2e16f8c, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e16fc8 targets 0x2e17070, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e17068 targets 0x2e16fd0, is taken when a5(=[[a1+552]:8+64]) != a3(unknown), and falls through when a5(=[[a1+552]:8+64]) == a3(unknown).
  The `beq` branch at 0x2e1708c targets 0x2e170b0, is taken when t2(=[a1+200]) == t1(unknown), and falls through when t2(=[a1+200]) != t1(unknown).
  The `bgtz` branch at 0x2e17094 targets 0x2e16f70, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The return at 0x2e170b0 has v0 = unknown.
- `__glSlowPickConvolutionFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e170d0 (n64).
  It occupies 512 bytes.
  The `jalr` at 0x2e17150 calls `__glInitMemUnpack` with a0=a0 at entry (arg0), a1=sp-696, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a5 at entry (arg5).
  The `jalr` at 0x2e17168 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-696, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17260 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-696, a2=0x1, a3=unknown.
  The `jalr` at 0x2e17270 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-696, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17298 calls `__glGenericPickCopyImage` with a0=a0 at entry (arg0), a1=sp-696, a2=0x0, a3=unknown.
  The `beq` branch at 0x2e17108 targets 0x2e172b4, is taken when a6 == at(=0x8010), and falls through when a6 != at(=0x8010).
  The `bc1f` branch at 0x2e17198 targets 0x2e17214, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17188)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17188).
  The `bc1f` branch at 0x2e171a8 targets 0x2e17214, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e171b8 targets 0x2e17214, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e171c8 targets 0x2e17214, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e171d8 targets 0x2e17214, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e171d4)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e171d4).
  The `bc1f` branch at 0x2e171e8 targets 0x2e17214, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e171f8 targets 0x2e17214, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e1720c targets 0x2e172c8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The return at 0x2e172ac has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickSeparableFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e172d0 (n64).
  It occupies 708 bytes.
  The `jalr` at 0x2e17338 calls `__glInitMemUnpack` with a0=a0 at entry (arg0), a1=sp-768, a2=a1 at entry (arg1), a3=0x1, a4=0x0, a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a5 at entry (arg5).
  The `jalr` at 0x2e17350 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-768, a2=[a0+1136], a3=[a0+1208]:8.
  The `jalr` at 0x2e17444 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-768, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17454 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-768, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17478 calls `__glGenericPickCopyImage` with a0=a0 at entry (arg0), a1=sp-768, a2=0x0, a3=unknown.
  The `jalr` at 0x2e174a8 calls `__glInitMemUnpack` with a0=a0 at entry (arg0), a1=sp-768, a2=a2 at entry (arg2), a3=0x1, a4=0x0, a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a6 at entry (arg6).
  The `jalr` at 0x2e174b4 calls `__glElementsPerGroup` with a0=[a0+1136], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e174e0 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-768, a2=[a0+1136], a3=unknown, a5=a1 at entry (arg1).
  The `jalr` at 0x2e17538 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-768, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17548 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-768, a2=unknown, a3=unknown.
  The `jalr` at 0x2e1756c calls `__glGenericPickCopyImage` with a0=a0 at entry (arg0), a1=sp-768, a2=0x0, a3=unknown.
  The `bc1f` branch at 0x2e17380 targets 0x2e173fc, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17374)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17374).
  The `bc1f` branch at 0x2e17390 targets 0x2e173fc, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e173a0 targets 0x2e173fc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e173b0 targets 0x2e173fc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e173c0 targets 0x2e173fc, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e173bc)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e173bc).
  The `bc1f` branch at 0x2e173d0 targets 0x2e173fc, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e173e0 targets 0x2e173fc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e173f4 targets 0x2e1758c, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e174e8 targets 0x2e17534, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The return at 0x2e17584 has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickGetConvolutionFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e175a0 (n64).
  It occupies 276 bytes.
  The `jalr` at 0x2e17608 calls `__glInitMemGet` with a0=a0 at entry (arg0), a1=sp-696, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17630 calls `__glInitMemPack` with a0=a0 at entry (arg0), a1=sp-696, a2=unknown, a3=unknown, a4=0x0, a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a4 at entry (arg4).
  The `jalr` at 0x2e17644 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-696, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17654 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-696, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17680 calls `__glGenericPickCopyImage` with a0=a0 at entry (arg0), a1=sp-696, a2=0x0, a3=0x1.
  The `beq` branch at 0x2e175c8 targets 0x2e176a0, is taken when a1 == at(=0x8010), and falls through when a1 != at(=0x8010).
  The return at 0x2e17698 has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickGetSeparableFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e176c0 (n64).
  It occupies 400 bytes.
  The `jalr` at 0x2e17710 calls `__glInitMemGet` with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1192], a3=0x1, a4=[a0+1136], a5=[a0+1208]:8.
  The `jalr` at 0x2e17738 calls `__glInitMemPack` with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1192], a3=0x1, a4=0x0, a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a4 at entry (arg4).
  The `jalr` at 0x2e17748 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-688, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17758 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-688, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17784 calls `__glGenericPickCopyImage` with a0=a0 at entry (arg0), a1=sp-688, a2=0x0, a3=unknown.
  The `jalr` at 0x2e177bc calls `__glInitMemGet` with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1196], a3=0x1, a4=[a0+1136], a7=[a0+1140].
  The `jalr` at 0x2e177e4 calls `__glInitMemPack` with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1196], a3=0x1, a4=0x0, a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a5 at entry (arg5).
  The `jalr` at 0x2e177fc calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-688, a2=unknown, a3=unknown.
  The `jalr` at 0x2e1780c calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-688, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17834 calls `__glGenericPickCopyImage` with a0=a0 at entry (arg0), a1=sp-688, a2=0x0, a3=unknown.
  The return at 0x2e17848 has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickCopyConvolutionFilter1D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e17850 (n64).
  It occupies 444 bytes.
  The `jalr` at 0x2e1789c calls `__glInitReadImageSrcInfo` with a0=a0 at entry (arg0), a1=sp-672, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=0x1, a6=0xe8f48.
  The `jalr` at 0x2e178b4 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-672, a2=a2 at entry (arg2), a3=[a0+1032]:8.
  The `jalr` at 0x2e179a4 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `jalr` at 0x2e179b4 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `jalr` at 0x2e179cc calls `__glClipReadPixels` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `jalr` at 0x2e179e4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `bc1f` branch at 0x2e178e4 targets 0x2e17960, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e178d4)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e178d4).
  The `bc1f` branch at 0x2e178f4 targets 0x2e17960, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17904 targets 0x2e17960, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e17914 targets 0x2e17960, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e17924 targets 0x2e17960, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17920)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17920).
  The `bc1f` branch at 0x2e17934 targets 0x2e17960, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17944 targets 0x2e17960, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e17958 targets 0x2e17a04, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e179d4 targets 0x2e179f0, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0x2e179fc has v0 = unknown.
- `__glSlowPickCopyConvolutionFilter2D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e17a10 (n64).
  It occupies 448 bytes.
  The `jalr` at 0x2e17a60 calls `__glInitReadImageSrcInfo` with a0=a0 at entry (arg0), a1=sp-672, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6), a6=0xe8d88, a7=a6 at entry (arg6).
  The `jalr` at 0x2e17a78 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-672, a2=a2 at entry (arg2), a3=[a0+1120]:8.
  The `jalr` at 0x2e17b68 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17b78 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17b90 calls `__glClipReadPixels` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `jalr` at 0x2e17ba8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-672, a2=unknown, a3=unknown.
  The `bc1f` branch at 0x2e17aa8 targets 0x2e17b24, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17a98)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17a98).
  The `bc1f` branch at 0x2e17ab8 targets 0x2e17b24, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17ac8 targets 0x2e17b24, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e17ad8 targets 0x2e17b24, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e17ae8 targets 0x2e17b24, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17ae4)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17ae4).
  The `bc1f` branch at 0x2e17af8 targets 0x2e17b24, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17b08 targets 0x2e17b24, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e17b1c targets 0x2e17bc8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e17b98 targets 0x2e17bb4, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0x2e17bc0 has v0 = unknown.
- `__glSep2dZoomDrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e17bd0 (n64).
  It occupies 1292 bytes.
  The `sd` at 0x2e17c60 stores 8 bytes to a1 (arg1 at entry) +0x160 (value sp-4112).
  The `sd` at 0x2e17de0 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `jalr` at 0x2e17c5c calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xe8bc8, a3=s8 at entry.
  The `jalr` at 0x2e17d98 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e17dc8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown, a4=sp-102416.
  The `jalr` at 0x2e17e3c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e17eac calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e17efc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=sp-102416.
  The `jalr` at 0x2e17f54 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-102416, a3=((one of 0x0, 0x1 << 0xf) + sp-69648), a6=[a1+280].
  The `jalr` at 0x2e17f94 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e17fc0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e17fe8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-102416, a3=unknown, a6=[a1+280].
  The `jalr` at 0x2e18048 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=sp-102416, a6=one of 0x0, 0x1.
  The `bne` branch at 0x2e17ca4 targets 0x2e1809c, is taken when a5(=[a1+188]) < a7(unknown) (signed), and falls through when a5(=[a1+188]) >= a7(unknown) (signed).
  The `blez` branch at 0x2e17cd0 targets 0x2e1809c, is taken when t2(unknown) <= 0 (signed), and falls through when t2(unknown) > 0 (signed).
  The `beq` branch at 0x2e17d34 targets 0x2e1809c, is taken when a0(unknown) >= t9(unknown) (signed), and falls through when a0(unknown) < t9(unknown) (signed).
  The `blez` branch at 0x2e17d50 targets 0x2e17f0c, is taken when ra(unknown) <= 0 (signed), and falls through when ra(unknown) > 0 (signed).
  The `beq` branch at 0x2e17d78 targets 0x2e17ee4, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `beq` branch at 0x2e17e18 targets 0x2e17f0c, is taken when a0(unknown) >= a5(unknown) (signed), and falls through when a0(unknown) < a5(unknown) (signed).
  The `beq` branch at 0x2e17e54 targets 0x2e17ed0, is taken when t8(=[a1+280]) == 0, and falls through when t8(=[a1+280]) != 0.
  The `bne` branch at 0x2e17e6c targets 0x2e17d70, is taken when t9(=[a1+280]) < 0x2 (signed), and falls through when t9(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e17ec0 targets 0x2e17e80, is taken when s3(unknown) < a4(=[a1+280]) (signed), and falls through when s3(unknown) >= a4(=[a1+280]) (signed).
  The `beq` branch at 0x2e17ed0 targets 0x2e18030, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `beq` branch at 0x2e17f20 targets 0x2e17fd0, is taken when a6(=[a1+280]) >= a4(=[a1+284]) (signed), and falls through when a6(=[a1+280]) < a4(=[a1+284]) (signed).
  The `bne` branch at 0x2e17f64 targets 0x2e17fb4, is taken when t8(=[a1+284]) < s3(=[a1+280]+2) (signed), and falls through when t8(=[a1+284]) >= s3(=[a1+280]+2) (signed).
  The `beq` branch at 0x2e17fa8 targets 0x2e17f6c, is taken when t8(=[a1+284]) >= s3(unknown) (signed), and falls through when t8(=[a1+284]) < s3(unknown) (signed).
  The `bne` branch at 0x2e18004 targets 0x2e17d00, is taken when a6(unknown) != a3(unknown), and falls through when a6(unknown) == a3(unknown).
  The `beq` branch at 0x2e18018 targets 0x2e1808c, is taken when a4(unknown) >= a7(=[a1+188]) (signed), and falls through when a4(unknown) < a7(=[a1+188]) (signed).
  The `beq` branch at 0x2e18058 targets 0x2e17d0c, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `beq` branch at 0x2e18078 targets 0x2e18058, is taken when a6(unknown) == a5(unknown), and falls through when a6(unknown) != a5(unknown).
  The return at 0x2e180d4 has v0 = unknown.
- `__glConv2dDrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e180e0 (n64).
  It occupies 1228 bytes.
  The `sd` at 0x2e1815c stores 8 bytes to a1 (arg1 at entry) +0x160 (value sp-4112).
  The `sd` at 0x2e18298 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `jalr` at 0x2e18164 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+39260], a3=0xe86b8, a4=[[a1+552]:8+12], a5=[[a1+552]:8+64], a6=s8 at entry.
  The `jalr` at 0x2e18270 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=sp-36880.
  The `jalr` at 0x2e182f0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e18334 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18388 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=sp-36880.
  The `jalr` at 0x2e183b0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=sp-36880.
  The `jalr` at 0x2e183d8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=sp-36880.
  The `jalr` at 0x2e18444 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18484 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=unknown, a5=[a1+280].
  The `jalr` at 0x2e184a4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=unknown, a5=[a1+280].
  The `jalr` at 0x2e1854c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `blez` branch at 0x2e181b4 targets 0x2e1856c, is taken when a7(unknown) <= 0 (signed), and falls through when a7(unknown) > 0 (signed).
  The `beq` branch at 0x2e18224 targets 0x2e1856c, is taken when a0(unknown) >= t9(unknown) (signed), and falls through when a0(unknown) < t9(unknown) (signed).
  The `blez` branch at 0x2e18238 targets 0x2e183e8, is taken when at(unknown) <= 0 (signed), and falls through when at(unknown) > 0 (signed).
  The `beq` branch at 0x2e18250 targets 0x2e183c0, is taken when s7(unknown) == 0, and falls through when s7(unknown) != 0.
  The `beq` branch at 0x2e182b8 targets 0x2e183e8, is taken when a4(unknown) == s7(unknown), and falls through when a4(unknown) != s7(unknown).
  The `beq` branch at 0x2e182c4 targets 0x2e18250, is taken when t2(=[a1+280]) == 0, and falls through when t2(=[a1+280]) != 0.
  The `bne` branch at 0x2e18304 targets 0x2e18358, is taken when a6(=[a1+280]) < 0x2 (signed), and falls through when a6(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e18348 targets 0x2e1830c, is taken when s3(unknown) < a4(=[a1+280]) (signed), and falls through when s3(unknown) >= a4(=[a1+280]) (signed).
  The `beq` branch at 0x2e18358 targets 0x2e18398, is taken when s7(unknown) == 0, and falls through when s7(unknown) != 0.
  The `bne` branch at 0x2e183fc targets 0x2e18524, is taken when a5(=[a1+280]) < a0(=[a1+284]) (signed), and falls through when a5(=[a1+280]) >= a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e18408 targets 0x2e18460, is taken when a0(=[a1+284]) < s3(unknown) (signed), and falls through when a0(=[a1+284]) >= s3(unknown) (signed).
  The `beq` branch at 0x2e18458 targets 0x2e18420, is taken when a0(=[a1+284]) >= s3(unknown) (signed), and falls through when a0(=[a1+284]) < s3(unknown) (signed).
  The `bne` branch at 0x2e18464 targets 0x2e18494, is taken when a5(=[a1+280]) != a0(=[a1+284]), and falls through when a5(=[a1+280]) == a0(=[a1+284]).
  The `bne` branch at 0x2e184c0 targets 0x2e181f0, is taken when a6(unknown) != a3(unknown), and falls through when a6(unknown) == a3(unknown).
  The `beq` branch at 0x2e184d4 targets 0x2e1855c, is taken when a4(unknown) >= a7(=[a1+188]) (signed), and falls through when a4(unknown) < a7(=[a1+188]) (signed).
  The `beq` branch at 0x2e184ec targets 0x2e181fc, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `beq` branch at 0x2e18510 targets 0x2e184ec, is taken when a6(unknown) == t1(unknown), and falls through when a6(unknown) != t1(unknown).
  The return at 0x2e185a4 has v0 = unknown.
- `__glSep2dDrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e185b0 (n64).
  It occupies 1700 bytes.
  The `sd` at 0x2e1862c stores 8 bytes to a1 (arg1 at entry) +0x160 (value sp-4112).
  The `sd` at 0x2e18664 stores 8 bytes to a1 (arg1 at entry) +0x110 (value [[a1+552]:8+80]:8).
  The `sd` at 0x2e1872c stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `sd` at 0x2e18a54 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `jalr` at 0x2e18638 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xe81e8, a3=[[a1+552]:8+12], a4=[[a1+552]:8+64], a5=s8 at entry.
  The `jalr` at 0x2e186d8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18700 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18764 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e187bc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e187fc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e18818 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e18884 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e188b0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e188d0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18964 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e189d0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18a04 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18aec calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown, a4=[a1+16]:8.
  The `jalr` at 0x2e18b48 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18b90 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown, a4=[a1+16]:8.
  The `jalr` at 0x2e18bac calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `bne` branch at 0x2e18670 targets 0x2e18c04, is taken when a7(=[a1+188]) < s5(=[[a1+552]:8+68]) (signed), and falls through when a7(=[a1+188]) >= s5(=[[a1+552]:8+68]) (signed).
  The `blez` branch at 0x2e18678 targets 0x2e18c30, is taken when a0(=[[a1+552]:8+68]-1) <= 0 (signed), and falls through when a0(=[[a1+552]:8+68]-1) > 0 (signed).
  The `beq` branch at 0x2e18728 targets 0x2e18828, is taken when at(=table(0x8000)) == v0(unknown), and falls through when at(=table(0x8000)) != v0(unknown).
  The `beq` branch at 0x2e18734 targets 0x2e187ec, is taken when a0(=[a1+280]) == 0, and falls through when a0(=[a1+280]) != 0.
  The `bne` branch at 0x2e1877c targets 0x2e186c0, is taken when ra(=[a1+280]) < 0x2 (signed), and falls through when ra(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e187d8 targets 0x2e18790, is taken when a5(unknown) < a6(=[a1+280]) (signed), and falls through when a5(unknown) >= a6(=[a1+280]) (signed).
  The `blez` branch at 0x2e1883c targets 0x2e18bc0, is taken when a2(unknown) <= 0 (signed), and falls through when a2(unknown) > 0 (signed).
  The `blez` branch at 0x2e188e0 targets 0x2e18984, is taken when s5(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s5(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e18970 targets 0x2e18900, is taken when s0(unknown) != s7(unknown), and falls through when s0(unknown) == s7(unknown).
  The `bne` branch at 0x2e18994 targets 0x2e189f4, is taken when t8(=[a1+284]) < s0(unknown) (signed), and falls through when t8(=[a1+284]) >= s0(unknown) (signed).
  The `beq` branch at 0x2e189e4 targets 0x2e189a0, is taken when a3(=[a1+284]) >= s0(unknown) (signed), and falls through when a3(=[a1+284]) < s0(unknown) (signed).
  The `beq` branch at 0x2e18aa4 targets 0x2e18bc0, is taken when a7(unknown) == a3(unknown), and falls through when a7(unknown) != a3(unknown).
  The `beq` branch at 0x2e18ad0 targets 0x2e18b80, is taken when at(=[a1+280]) == 0, and falls through when at(=[a1+280]) != 0.
  The `bne` branch at 0x2e18b04 targets 0x2e18870, is taken when v0(=[a1+280]) < 0x2 (signed), and falls through when v0(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e18b64 targets 0x2e18b20, is taken when a4(unknown) < a5(=[a1+280]) (signed), and falls through when a4(unknown) >= a5(=[a1+280]) (signed).
  The return at 0x2e18bfc has v0 = unknown.
  The return at 0x2e18c28 has v0 = ret(__glComputeSpanPixelArray).
- `__glConv2dReadPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e18c60 (n64).
  It occupies 940 bytes.
  The `sd` at 0x2e18da4 stores 8 bytes to a1 (arg1 at entry) +0x68 (value ([a1+112] + [a1+104]:8)).
  The `jalr` at 0x2e18d7c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=[a1+104]:8.
  The `jalr` at 0x2e18e00 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18e44 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18e98 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18ed0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e18f24 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18f74 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=[a1+104]:8.
  The `jalr` at 0x2e18fac calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `bne` branch at 0x2e18d14 targets 0x2e18d28, is taken when at(=[a1+280]) != v0(=[a1+284]), and falls through when at(=[a1+280]) == v0(=[a1+284]).
  The `blez` branch at 0x2e18d3c targets 0x2e18fc0, is taken when t2(unknown) <= 0 (signed), and falls through when t2(unknown) > 0 (signed).
  The `beq` branch at 0x2e18dac targets 0x2e18fc0, is taken when a3(unknown) == a4(unknown), and falls through when a3(unknown) != a4(unknown).
  The `blez` branch at 0x2e18dc0 targets 0x2e18ee4, is taken when t0(unknown) <= 0 (signed), and falls through when t0(unknown) > 0 (signed).
  The `beq` branch at 0x2e18e2c targets 0x2e18ee0, is taken when ra(unknown) == s0(unknown), and falls through when ra(unknown) != s0(unknown).
  The `blez` branch at 0x2e18e60 targets 0x2e18eb4, is taken when a0(=[a1+280]) <= 0 (signed), and falls through when a0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e18eac targets 0x2e18e70, is taken when s3(unknown) < t8(=[a1+280]) (signed), and falls through when s3(unknown) >= t8(=[a1+280]) (signed).
  The `bne` branch at 0x2e18eb8 targets 0x2e18de0, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `bne` branch at 0x2e18eec targets 0x2e18f84, is taken when s3(unknown) < a0(=[a1+284]) (signed), and falls through when s3(unknown) >= a0(=[a1+284]) (signed).
  The `beq` branch at 0x2e18ef4 targets 0x2e18f40, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e18f38 targets 0x2e18f00, is taken when s3(unknown) < a0(=[a1+284]) (signed), and falls through when s3(unknown) >= a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e18f40 targets 0x2e18d84, is taken when a0(=[a1+284]) != s3(unknown), and falls through when a0(=[a1+284]) == s3(unknown).
  The `bne` branch at 0x2e18f5c targets 0x2e18d70, is taken when ra(=[a1+280]) != at(=[a1+284]-1), and falls through when ra(=[a1+280]) == at(=[a1+284]-1).
  The return at 0x2e19004 has v0 = unknown.
- `__glSep2dReadPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e19010 (n64).
  It occupies 1552 bytes.
  The `sd` at 0x2e190a8 stores 8 bytes to a1 (arg1 at entry) +0x110 (value [[a1+552]:8+80]:8).
  The `sd` at 0x2e19434 stores 8 bytes to a1 (arg1 at entry) +0x68 (value ([a1+112] + [a1+104]:8)).
  The `jalr` at 0x2e19150 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e191bc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e191fc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e19228 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e19354 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e193a4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e193e8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1940c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1945c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e194e4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e19560 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1959c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+104]:8.
  The `bne` branch at 0x2e190b4 targets 0x2e195f8, is taken when at(unknown) < s4(=[[a1+552]:8+68]) (signed), and falls through when at(unknown) >= s4(=[[a1+552]:8+68]) (signed).
  The `bne` branch at 0x2e190dc targets 0x2e190ec, is taken when a5(=[a1+280]) != a6(=[a1+284]), and falls through when a5(=[a1+280]) == a6(=[a1+284]).
  The `blez` branch at 0x2e190f8 targets 0x2e1925c, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `blez` branch at 0x2e1916c targets 0x2e191e8, is taken when v1(=[a1+280]) <= 0 (signed), and falls through when v1(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e191d8 targets 0x2e19180, is taken when a3(unknown) < a4(=[a1+280]) (signed), and falls through when a3(unknown) >= a4(=[a1+280]) (signed).
  The `bne` branch at 0x2e19248 targets 0x2e19140, is taken when s1(=table(0x8000)) != ra(unknown), and falls through when s1(=table(0x8000)) == ra(unknown).
  The `blez` branch at 0x2e19278 targets 0x2e195b0, is taken when t8(unknown) <= 0 (signed), and falls through when t8(unknown) > 0 (signed).
  The `beq` branch at 0x2e192c0 targets 0x2e19584, is taken when a0(=[a1+284]) == s0(unknown), and falls through when a0(=[a1+284]) != s0(unknown).
  The `blez` branch at 0x2e19364 targets 0x2e193c8, is taken when v0(=[a1+280]) <= 0 (signed), and falls through when v0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e193b8 targets 0x2e19370, is taken when s0(unknown) < a5(=[a1+280]) (signed), and falls through when s0(unknown) >= a5(=[a1+280]) (signed).
  The `beq` branch at 0x2e1943c targets 0x2e195ac, is taken when ra(unknown) == at(unknown), and falls through when ra(unknown) != at(unknown).
  The `blez` branch at 0x2e19464 targets 0x2e19508, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e194f0 targets 0x2e19480, is taken when s0(unknown) != s7(unknown), and falls through when s0(unknown) == s7(unknown).
  The `beq` branch at 0x2e19514 targets 0x2e192b0, is taken when s0(unknown) >= a0(=[a1+284]) (signed), and falls through when s0(unknown) < a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e19574 targets 0x2e19530, is taken when s0(unknown) < a0(=[a1+284]) (signed), and falls through when s0(unknown) >= a0(=[a1+284]) (signed).
  The return at 0x2e195f0 has v0 = unknown.
  The return at 0x2e19618 has v0 = [[a1+552]:8+68]-1.
- `__glGetCurrentSetDefaultPixelXferState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e19620 (n64).
  It occupies 620 bytes.
  The `sw` at 0x2e196cc stores 4 bytes to ret(unknown) +0x8 (value [a0+39257]:1).
  The `swc1` at 0x2e196d4 stores 4 bytes to ret(unknown) +0xc (value [a0+888]).
  The `swc1` at 0x2e196dc stores 4 bytes to ret(unknown) +0x10 (value [a0+892]).
  The `swc1` at 0x2e196e4 stores 4 bytes to ret(unknown) +0x14 (value [a0+896]).
  The `swc1` at 0x2e196ec stores 4 bytes to ret(unknown) +0x18 (value [a0+900]).
  The `swc1` at 0x2e196f4 stores 4 bytes to ret(unknown) +0x1c (value [a0+904]).
  The `swc1` at 0x2e196fc stores 4 bytes to ret(unknown) +0x20 (value [a0+908]).
  The `swc1` at 0x2e19704 stores 4 bytes to ret(unknown) +0x24 (value [a0+912]).
  The `swc1` at 0x2e1970c stores 4 bytes to ret(unknown) +0x28 (value [a0+916]).
  The `swc1` at 0x2e19710 stores 4 bytes to a0 (arg0 at entry) +0x378 (value 0x3f800000).
  The `swc1` at 0x2e19714 stores 4 bytes to a0 (arg0 at entry) +0x37c (value 0x3f800000).
  The `swc1` at 0x2e19718 stores 4 bytes to a0 (arg0 at entry) +0x380 (value 0x3f800000).
  The `swc1` at 0x2e1971c stores 4 bytes to a0 (arg0 at entry) +0x384 (value 0x3f800000).
  The `swc1` at 0x2e19720 stores 4 bytes to a0 (arg0 at entry) +0x388 (value ret(unknown)).
  The `swc1` at 0x2e19724 stores 4 bytes to a0 (arg0 at entry) +0x38c (value ret(unknown)).
  The `swc1` at 0x2e19728 stores 4 bytes to a0 (arg0 at entry) +0x390 (value ret(unknown)).
  The `swc1` at 0x2e1972c stores 4 bytes to a0 (arg0 at entry) +0x394 (value ret(unknown)).
  The `sb` at 0x2e19738 stores 1 bytes to a0 (arg0 at entry) +0x9959 (value 0x0).
  The `sw` at 0x2e19750 stores 4 bytes to (ret(unknown) + one of 0xc, 0x2c) +0x0 (value [a0+39248]).
  The `sw` at 0x2e197b0 stores 4 bytes to a0 (arg0 at entry) +0x9950 (value 0x8421).
  The `sw` at 0x2e197bc stores 4 bytes to unknown (base unknown) (value [a0+39048]:1).
  The `sw` at 0x2e197cc stores 4 bytes to unknown (base unknown) (value [a0+936]:1).
  The `sb` at 0x2e197d0 stores 1 bytes to a0 (arg0 at entry) +0x3a8 (value 0x0).
  The `swc1` at 0x2e197d8 stores 4 bytes to unknown (base unknown) (value [a0+816]).
  The `swc1` at 0x2e197e0 stores 4 bytes to unknown (base unknown) (value [a0+820]).
  The `swc1` at 0x2e197e8 stores 4 bytes to unknown (base unknown) (value [a0+824]).
  The `swc1` at 0x2e197f0 stores 4 bytes to unknown (base unknown) (value [a0+828]).
  The `swc1` at 0x2e197f8 stores 4 bytes to unknown (base unknown) (value [a0+836]).
  The `swc1` at 0x2e19800 stores 4 bytes to unknown (base unknown) (value [a0+840]).
  The `swc1` at 0x2e19808 stores 4 bytes to unknown (base unknown) (value [a0+844]).
  The `swc1` at 0x2e19810 stores 4 bytes to unknown (base unknown) (value [a0+848]).
  The `swc1` at 0x2e19824 stores 4 bytes to a0 (arg0 at entry) +0x33c (value 0x3f800000).
  The `swc1` at 0x2e19828 stores 4 bytes to a0 (arg0 at entry) +0x338 (value 0x3f800000).
  The `swc1` at 0x2e1982c stores 4 bytes to a0 (arg0 at entry) +0x334 (value 0x3f800000).
  The `swc1` at 0x2e19830 stores 4 bytes to a0 (arg0 at entry) +0x330 (value 0x3f800000).
  The `sb` at 0x2e19834 stores 1 bytes to a0 (arg0 at entry) +0x9888 (value 0x0).
  The `sw` at 0x2e19840 stores 4 bytes to abs 0x1030 (value 0x2).
  The `sw` at 0x2e19858 stores 4 bytes to a0 (arg0 at entry) +0x4714 (value ([a0+18196] | 0x10)).
  The `jalr` at 0x2e1964c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=0x26, a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x2e1986c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=ret(unknown), a2=unknown, a3=unknown, a4=0x2, a7=0x5; fp f13=0x3f800000.
  The `beq` branch at 0x2e196c8 targets 0x2e1973c, is taken when v1(=[a0+39257]:1) == 0, and falls through when v1(=[a0+39257]:1) != 0.
  The `beq` branch at 0x2e1974c targets 0x2e197b4, is taken when t9(=[a0+39248]) == a0(=0x8421), and falls through when t9(=[a0+39248]) != a0(=0x8421).
  The `bne` branch at 0x2e197a4 targets 0x2e19760, is taken when t0(=0x10) != a5(unknown), and falls through when t0(=0x10) == a5(unknown).
  The `beq` branch at 0x2e197b8 targets 0x2e19838, is taken when a0(=[a0+39048]:1) == 0, and falls through when a0(=[a0+39048]:1) != 0.
  The `beq` branch at 0x2e197c8 targets 0x2e197d4, is taken when a2(=[a0+936]:1) == 0, and falls through when a2(=[a0+936]:1) != 0.
  The `beq` branch at 0x2e19838 targets 0x2e19868, is taken when t1(unknown) == 0, and falls through when t1(unknown) != 0.
  The return at 0x2e19860 has v0 = ret(unknown).
  The return at 0x2e19884 has v0 = 0x0.
- `__glRestoreCurrentPixelXferState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e19890 (n64).
  It occupies 352 bytes.
  The `sw` at 0x2e198c0 stores 4 bytes to a0 (arg0 at entry) +0x808 (value ([a1] | [a0+2056])).
  The `sw` at 0x2e198cc stores 4 bytes to a0 (arg0 at entry) +0x80c (value ([a1+4] | [a0+2060])).
  The `sb` at 0x2e198e8 stores 1 bytes to a0 (arg0 at entry) +0x9959 (value [a1+11]:1).
  The `swc1` at 0x2e198f0 stores 4 bytes to a0 (arg0 at entry) +0x378 (value [a1+12]).
  The `swc1` at 0x2e198f8 stores 4 bytes to a0 (arg0 at entry) +0x37c (value [a1+16]).
  The `swc1` at 0x2e19900 stores 4 bytes to a0 (arg0 at entry) +0x380 (value [a1+20]).
  The `swc1` at 0x2e19908 stores 4 bytes to a0 (arg0 at entry) +0x384 (value [a1+24]).
  The `swc1` at 0x2e19910 stores 4 bytes to a0 (arg0 at entry) +0x388 (value [a1+28]).
  The `swc1` at 0x2e19918 stores 4 bytes to a0 (arg0 at entry) +0x38c (value [a1+32]).
  The `swc1` at 0x2e19920 stores 4 bytes to a0 (arg0 at entry) +0x390 (value [a1+36]).
  The `swc1` at 0x2e1992c stores 4 bytes to a0 (arg0 at entry) +0x394 (value [a1+40]).
  The `sw` at 0x2e19934 stores 4 bytes to a0 (arg0 at entry) +0x9950 (value [(a1 + one of 0xc, 0x2c)]).
  The `sw` at 0x2e199c8 stores 4 bytes to abs 0x1030 (value 0x2).
  The `sw` at 0x2e199dc stores 4 bytes to a0 (arg0 at entry) +0x4714 (value ([a0+18196] | 0x10)).
  The `jalr` at 0x2e199d8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=unknown, a6=0x10, a7=a0+65536.
  The `beq` branch at 0x2e198a8 targets 0x2e199e0, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2e198e4 targets 0x2e19930, is taken when v0(=[a1+11]:1) == 0, and falls through when v0(=[a1+11]:1) != 0.
  The `beq` branch at 0x2e1993c targets 0x2e19970, is taken when t8(=[(a1 + one of 0xc, 0x2c)]) == t9(=0x8421), and falls through when t8(=[(a1 + one of 0xc, 0x2c)]) != t9(=0x8421).
  The `bne` branch at 0x2e19968 targets 0x2e19950, is taken when a6(=0x10) != a5(unknown), and falls through when a6(=0x10) == a5(unknown).
  The `beq` branch at 0x2e19974 targets 0x2e199c4, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The return at 0x2e199e8 has v0 = unknown.
- `__glConv2dCopyPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e199f0 (n64).
  It occupies 1976 bytes.
  The `sw` at 0x2e19b04 stores 4 bytes to a0 (arg0 at entry) +0x590 (value 0x0).
  The `sd` at 0x2e19b0c stores 8 bytes to a0 (arg0 at entry) +0x588 (value 0x0).
  The `sd` at 0x2e19b14 stores 8 bytes to a0 (arg0 at entry) +0x580 (value 0x0).
  The `sd` at 0x2e19b1c stores 8 bytes to a0 (arg0 at entry) +0x570 (value 0x0).
  The `sd` at 0x2e19b24 stores 8 bytes to a0 (arg0 at entry) +0x568 (value 0x0).
  The `sd` at 0x2e19b2c stores 8 bytes to a0 (arg0 at entry) +0x578 (value 0x0).
  The `sw` at 0x2e19b34 stores 4 bytes to a0 (arg0 at entry) +0x578 (value 0x4).
  The `sw` at 0x2e19c9c stores 4 bytes to a0 (arg0 at entry) +0x5a4 (value 0x4).
  The `sw` at 0x2e19ca0 stores 4 bytes to a0 (arg0 at entry) +0x598 (value [a1+184]).
  The `sw` at 0x2e19ca4 stores 4 bytes to a0 (arg0 at entry) +0x5bc (value 0x0).
  The `sw` at 0x2e19ca8 stores 4 bytes to a0 (arg0 at entry) +0x5b8 (value 0x0).
  The `sw` at 0x2e19cac stores 4 bytes to a0 (arg0 at entry) +0x5b4 (value 0x0).
  The `sw` at 0x2e19cb0 stores 4 bytes to a0 (arg0 at entry) +0x5b0 (value 0x0).
  The `sw` at 0x2e19cb4 stores 4 bytes to a0 (arg0 at entry) +0x5ac (value 0x0).
  The `sw` at 0x2e19cb8 stores 4 bytes to a0 (arg0 at entry) +0x5a8 (value 0x0).
  The `sw` at 0x2e19cbc stores 4 bytes to a0 (arg0 at entry) +0x5a0 (value 0x0).
  The `sw` at 0x2e19cc0 stores 4 bytes to a0 (arg0 at entry) +0x59c (value 0x0).
  The `sw` at 0x2e19cc8 stores 4 bytes to a0 (arg0 at entry) +0x594 (value 0x0).
  The `sd` at 0x2e19dbc stores 8 bytes to a1 (arg1 at entry) +0x160 (value sp-4112).
  The `jalr` at 0x2e19a68 calls `__glElementsPerGroup` with a0=[a1+88], a1=[a1+552]:8, a2=s8 at entry, a3=a3 at entry (arg3).
  The `jalr` at 0x2e19a94 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e19b68 calls `__glim_ReadPixels` with a0=unknown, a1=unknown, a2=[a1+184], a3=[a1+188], a5=0x1406, a6=ret(unknown), a7=[a0+1392]:8.
  The `jalr` at 0x2e19bf0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=ret(unknown), a2=unknown, a3=unknown, a6=([a0+2056] << 0x23).
  The `bgezall` at 0x2e19c28 calls `__glGetCurrentSetDefaultPixelXferState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a6=([a0+2056] << 0x23).
  The `jalr` at 0x2e19cec calls `__glim_DrawPixels` with a0=unknown, a1=unknown, a2=unknown, a3=0x1406, a4=ret(unknown), a5=[a0+1464], a6=a0+1428, a7=[a0+1468].
  The `bgezall` at 0x2e19d60 calls `__glRestoreCurrentPixelXferState` with a0=a0 at entry (arg0), a1=unknown, a2=sp-102712, a3=unknown.
  The `jalr` at 0x2e19d70 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=ret(unknown), a2=unknown, a3=unknown.
  The `jalr` at 0x2e19dc8 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s8 at entry, a3=a3 at entry (arg3).
  The `jalr` at 0x2e19ef8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=sp-36880.
  The `jalr` at 0x2e19f3c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e19f88 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e19fc8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=sp-36880.
  The `jalr` at 0x2e1a014 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1a054 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1a094 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=unknown, a5=[a1+280].
  The `jalr` at 0x2e1a0b4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=unknown, a5=[a1+280].
  The `jalr` at 0x2e1a198 calls `__glSetError` with a0=0x505, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e19a50 targets 0x2e19d94, is taken when at(=[a1+240]:1) == 0, and falls through when at(=[a1+240]:1) != 0.
  The `beq` branch at 0x2e19a9c targets 0x2e1a194, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `beq` branch at 0x2e19ad0 targets 0x2e19d80, is taken when a3(=[a0+5204]:1) == 0, and falls through when a3(=[a0+5204]:1) != 0.
  The `bgez` branch at 0x2e19ba8 targets 0x2e19bc4, is taken when v1(=([a0+2056] << 0x22)) >= 0 (signed), and falls through when v1(=([a0+2056] << 0x22)) < 0 (signed).
  The `beq` branch at 0x2e19bb4 targets 0x2e19bc8, is taken when a4(=[a0+1616]:1) == 0, and falls through when a4(=[a0+1616]:1) != 0.
  The `bne` branch at 0x2e19bc0 targets 0x2e19be8, is taken when a5(=[a0+1628]:1) != 0, and falls through when a5(=[a0+1628]:1) == 0.
  The `bgez` branch at 0x2e19bc8 targets 0x2e19c28, is taken when a6(=([a0+2056] << 0x23)) >= 0 (signed), and falls through when a6(=([a0+2056] << 0x23)) < 0 (signed).
  The `beq` branch at 0x2e19bd4 targets 0x2e19c28, is taken when a7(=[a0+1496]) == 0, and falls through when a7(=[a0+1496]) != 0.
  The `beq` branch at 0x2e19be0 targets 0x2e19c28, is taken when t0(=[a0+1528]:1) == 0, and falls through when t0(=[a0+1528]:1) != 0.
  The `blez` branch at 0x2e19e14 targets 0x2e1a140, is taken when a1(unknown) <= 0 (signed), and falls through when a1(unknown) > 0 (signed).
  The `beq` branch at 0x2e19e90 targets 0x2e1a140, is taken when v0(unknown) >= t8(unknown) (signed), and falls through when v0(unknown) < t8(unknown) (signed).
  The `blez` branch at 0x2e19ea8 targets 0x2e19fdc, is taken when ra(unknown) <= 0 (signed), and falls through when ra(unknown) > 0 (signed).
  The `beq` branch at 0x2e19f24 targets 0x2e19fd8, is taken when ra(unknown) == s0(unknown), and falls through when ra(unknown) != s0(unknown).
  The `blez` branch at 0x2e19f58 targets 0x2e19fa4, is taken when a0(=[a1+280]) <= 0 (signed), and falls through when a0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e19f9c targets 0x2e19f60, is taken when s3(unknown) < t8(=[a1+280]) (signed), and falls through when s3(unknown) >= t8(=[a1+280]) (signed).
  The `bne` branch at 0x2e19fa8 targets 0x2e19ed0, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `bne` branch at 0x2e19fe4 targets 0x2e1a070, is taken when v0(=[a1+284]) < s3(unknown) (signed), and falls through when v0(=[a1+284]) >= s3(unknown) (signed).
  The `bne` branch at 0x2e1a024 targets 0x2e1a070, is taken when v0(=[a1+284]) < s3(unknown) (signed), and falls through when v0(=[a1+284]) >= s3(unknown) (signed).
  The `beq` branch at 0x2e1a068 targets 0x2e1a030, is taken when v0(=[a1+284]) >= s3(unknown) (signed), and falls through when v0(=[a1+284]) < s3(unknown) (signed).
  The `bne` branch at 0x2e1a074 targets 0x2e1a0a4, is taken when a5(=[a1+280]) != v0(=[a1+284]), and falls through when a5(=[a1+280]) == v0(=[a1+284]).
  The `bne` branch at 0x2e1a0d0 targets 0x2e19e70, is taken when a3(unknown) != a0(unknown), and falls through when a3(unknown) == a0(unknown).
  The `beq` branch at 0x2e1a0e4 targets 0x2e1a134, is taken when a4(unknown) >= a1(=[a1+188]) (signed), and falls through when a4(unknown) < a1(=[a1+188]) (signed).
  The `beq` branch at 0x2e1a0fc targets 0x2e19e7c, is taken when v0(unknown) >= a1(=[a1+188]) (signed), and falls through when v0(unknown) < a1(=[a1+188]) (signed).
  The `beq` branch at 0x2e1a120 targets 0x2e1a0f8, is taken when a6(unknown) == a0(unknown), and falls through when a6(unknown) != a0(unknown).
  The return at 0x2e19c1c has v0 = unknown.
  The return at 0x2e1a18c has v0 = unknown.
- `__glSep2dCopyPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1a1b0 (n64).
  It occupies 2320 bytes.
  The `sw` at 0x2e1a2e8 stores 4 bytes to a0 (arg0 at entry) +0x590 (value 0x0).
  The `sd` at 0x2e1a2f0 stores 8 bytes to a0 (arg0 at entry) +0x588 (value 0x0).
  The `sd` at 0x2e1a2f8 stores 8 bytes to a0 (arg0 at entry) +0x580 (value 0x0).
  The `sd` at 0x2e1a300 stores 8 bytes to a0 (arg0 at entry) +0x570 (value 0x0).
  The `sd` at 0x2e1a308 stores 8 bytes to a0 (arg0 at entry) +0x568 (value 0x0).
  The `sd` at 0x2e1a314 stores 8 bytes to a0 (arg0 at entry) +0x578 (value 0x0).
  The `sw` at 0x2e1a31c stores 4 bytes to a0 (arg0 at entry) +0x578 (value 0x4).
  The `sw` at 0x2e1a484 stores 4 bytes to a0 (arg0 at entry) +0x5a4 (value 0x4).
  The `sw` at 0x2e1a488 stores 4 bytes to a0 (arg0 at entry) +0x598 (value [a1+184]).
  The `sw` at 0x2e1a48c stores 4 bytes to a0 (arg0 at entry) +0x5bc (value 0x0).
  The `sw` at 0x2e1a490 stores 4 bytes to a0 (arg0 at entry) +0x5b8 (value 0x0).
  The `sw` at 0x2e1a494 stores 4 bytes to a0 (arg0 at entry) +0x5b4 (value 0x0).
  The `sw` at 0x2e1a498 stores 4 bytes to a0 (arg0 at entry) +0x5b0 (value 0x0).
  The `sw` at 0x2e1a49c stores 4 bytes to a0 (arg0 at entry) +0x5ac (value 0x0).
  The `sw` at 0x2e1a4a0 stores 4 bytes to a0 (arg0 at entry) +0x5a8 (value 0x0).
  The `sw` at 0x2e1a4a4 stores 4 bytes to a0 (arg0 at entry) +0x5a0 (value 0x0).
  The `sw` at 0x2e1a4a8 stores 4 bytes to a0 (arg0 at entry) +0x59c (value 0x0).
  The `sw` at 0x2e1a4ac stores 4 bytes to a0 (arg0 at entry) +0x594 (value 0x0).
  The `sd` at 0x2e1a580 stores 8 bytes to a1 (arg1 at entry) +0x160 (value sp-4112).
  The `sd` at 0x2e1a5b8 stores 8 bytes to a1 (arg1 at entry) +0x110 (value [[a1+552]:8+80]:8).
  The `jalr` at 0x2e1a24c calls `__glElementsPerGroup` with a0=[a1+88], a1=a1 at entry (arg1), a2=s8 at entry, a3=[a1+240]:1.
  The `jalr` at 0x2e1a274 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a34c calls `__glim_ReadPixels` with a0=unknown, a1=unknown, a2=[a1+184], a3=[a1+188], a5=0x1406, a6=ret(unknown), a7=[a0+1392]:8.
  The `jalr` at 0x2e1a3d4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a5=([a0+2056] << 0x23).
  The `bgezall` at 0x2e1a40c calls `__glGetCurrentSetDefaultPixelXferState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a5=([a0+2056] << 0x23).
  The `jalr` at 0x2e1a4d0 calls `__glim_DrawPixels` with a0=unknown, a1=unknown, a2=unknown, a3=0x1406, a5=[a0+1464], a6=[a0+1468].
  The `bgezall` at 0x2e1a544 calls `__glRestoreCurrentPixelXferState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=sp-70000.
  The `jalr` at 0x2e1a554 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a588 calls `__glComputeSpanPixelArray` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[[a1+552]:8+12], a4=[[a1+552]:8+64].
  The `jalr` at 0x2e1a620 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a67c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a6bc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a6e8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a7ac calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a7e4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a870 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a8c0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a900 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a924 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a96c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1a9f4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1aab0 calls `__glSetError` with a0=0x505, a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0x2e1a214 targets 0x2e1a3e0, is taken when s1(=[a1+188]) < s5(=[[a1+552]:8+68]) (signed), and falls through when s1(=[a1+188]) >= s5(=[[a1+552]:8+68]) (signed).
  The `bne` branch at 0x2e1a220 targets 0x2e1a240, is taken when a3(=[a1+240]:1) != 0, and falls through when a3(=[a1+240]:1) == 0.
  The `bc1t` branch at 0x2e1a23c targets 0x2e1a564, is taken when f0 == f1(=[a1+180]) (c.eq.s at 0x2e1a238), and falls through when not (f0 == f1(=[a1+180]) (c.eq.s at 0x2e1a238)).
  The `beq` branch at 0x2e1a27c targets 0x2e1aab0, is taken when v0(=ret(unknown)) == 0, and falls through when v0(=ret(unknown)) != 0.
  The `beq` branch at 0x2e1a2b4 targets 0x2e1aa80, is taken when a3(=[a0+5204]:1) == 0, and falls through when a3(=[a0+5204]:1) != 0.
  The `bgez` branch at 0x2e1a38c targets 0x2e1a3a8, is taken when v0(=([a0+2056] << 0x22)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x22)) < 0 (signed).
  The `beq` branch at 0x2e1a398 targets 0x2e1a3ac, is taken when a3(=[a0+1616]:1) == 0, and falls through when a3(=[a0+1616]:1) != 0.
  The `bne` branch at 0x2e1a3a4 targets 0x2e1a3cc, is taken when a4(=[a0+1628]:1) != 0, and falls through when a4(=[a0+1628]:1) == 0.
  The `bgez` branch at 0x2e1a3ac targets 0x2e1a40c, is taken when a5(=([a0+2056] << 0x23)) >= 0 (signed), and falls through when a5(=([a0+2056] << 0x23)) < 0 (signed).
  The `beq` branch at 0x2e1a3b8 targets 0x2e1a40c, is taken when a6(=[a0+1496]) == 0, and falls through when a6(=[a0+1496]) != 0.
  The `beq` branch at 0x2e1a3c4 targets 0x2e1a40c, is taken when a7(=[a0+1528]:1) == 0, and falls through when a7(=[a0+1528]:1) != 0.
  The `blez` branch at 0x2e1a5c4 targets 0x2e1aa94, is taken when s5(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s5(=[[a1+552]:8+68]) > 0 (signed).
  The `blez` branch at 0x2e1a63c targets 0x2e1a6a8, is taken when v0(=[a1+280]) <= 0 (signed), and falls through when v0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e1a698 targets 0x2e1a650, is taken when a5(unknown) < a6(=[a1+280]) (signed), and falls through when a5(unknown) >= a6(=[a1+280]) (signed).
  The `bne` branch at 0x2e1a708 targets 0x2e1a610, is taken when s1(=table(0x8000)) != ra(unknown), and falls through when s1(=table(0x8000)) == ra(unknown).
  The `blez` branch at 0x2e1a738 targets 0x2e1aa40, is taken when a1(unknown) <= 0 (signed), and falls through when a1(unknown) > 0 (signed).
  The `beq` branch at 0x2e1a7c0 targets 0x2e1a780, is taken when a5(=[a1+284]) >= s0(unknown) (signed), and falls through when a5(=[a1+284]) < s0(unknown) (signed).
  The `blez` branch at 0x2e1a880 targets 0x2e1a8e4, is taken when a1(=[a1+280]) <= 0 (signed), and falls through when a1(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e1a8d4 targets 0x2e1a890, is taken when s0(unknown) < a3(=[a1+280]) (signed), and falls through when s0(unknown) >= a3(=[a1+280]) (signed).
  The `beq` branch at 0x2e1a94c targets 0x2e1aa34, is taken when ra(unknown) == s1(unknown), and falls through when ra(unknown) != s1(unknown).
  The `blez` branch at 0x2e1a974 targets 0x2e1aa18, is taken when s5(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s5(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e1aa00 targets 0x2e1a990, is taken when s0(unknown) != s7(unknown), and falls through when s0(unknown) == s7(unknown).
  The `bne` branch at 0x2e1aa24 targets 0x2e1a7d0, is taken when t8(=[a1+284]) < s0(unknown) (signed), and falls through when t8(=[a1+284]) >= s0(unknown) (signed).
  The return at 0x2e1a400 has v0 = unknown.
  The return at 0x2e1aa78 has v0 = unknown.
- `__glConv2dCopyImage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1aac0 (n64).
  It occupies 1036 bytes.
  The `sd` at 0x2e1ac18 stores 8 bytes to a1 (arg1 at entry) +0x68 (value ([a1+112] + [a1+104]:8)).
  The `sd` at 0x2e1ac98 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `jalr` at 0x2e1abe8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=[a1+104]:8, a5=[a1+280], a6=[a1+284]-1.
  The `jalr` at 0x2e1ac68 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e1acdc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e1ad20 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1ad64 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1ad84 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1ada4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e1adf4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1ae48 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=[a1+104]:8, a5=[a1+280], a6=[a1+284]-1.
  The `jalr` at 0x2e1ae80 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `bne` branch at 0x2e1ab5c targets 0x2e1ab70, is taken when at(=[a1+280]) != v0(=[a1+284]), and falls through when at(=[a1+280]) == v0(=[a1+284]).
  The `blez` branch at 0x2e1ab90 targets 0x2e1ae94, is taken when t2(unknown) <= 0 (signed), and falls through when t2(unknown) > 0 (signed).
  The `beq` branch at 0x2e1ac2c targets 0x2e1ae94, is taken when ra(unknown) == at(unknown), and falls through when ra(unknown) != at(unknown).
  The `blez` branch at 0x2e1ac40 targets 0x2e1adb4, is taken when a1(unknown) <= 0 (signed), and falls through when a1(unknown) > 0 (signed).
  The `beq` branch at 0x2e1ac50 targets 0x2e1ad94, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `beq` branch at 0x2e1ac9c targets 0x2e1adb4, is taken when a6(unknown) == a7(unknown), and falls through when a6(unknown) != a7(unknown).
  The `beq` branch at 0x2e1acac targets 0x2e1ac50, is taken when t2(=[a1+280]) == 0, and falls through when t2(=[a1+280]) != 0.
  The `bne` branch at 0x2e1acf0 targets 0x2e1ad3c, is taken when ra(=[a1+280]) < 0x2 (signed), and falls through when ra(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e1ad34 targets 0x2e1acf8, is taken when s3(unknown) < t8(=[a1+280]) (signed), and falls through when s3(unknown) >= t8(=[a1+280]) (signed).
  The `beq` branch at 0x2e1ad40 targets 0x2e1ad74, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e1adbc targets 0x2e1ae58, is taken when s3(unknown) < a0(=[a1+284]) (signed), and falls through when s3(unknown) >= a0(=[a1+284]) (signed).
  The `beq` branch at 0x2e1adc4 targets 0x2e1ae10, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e1ae08 targets 0x2e1add0, is taken when s3(unknown) < a0(=[a1+284]) (signed), and falls through when s3(unknown) >= a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e1ae10 targets 0x2e1abf0, is taken when a0(=[a1+284]) != s3(unknown), and falls through when a0(=[a1+284]) == s3(unknown).
  The `bne` branch at 0x2e1ae20 targets 0x2e1abd0, is taken when a5(=[a1+280]) != a6(=[a1+284]-1), and falls through when a5(=[a1+280]) == a6(=[a1+284]-1).
  The return at 0x2e1aec4 has v0 = unknown.
- `__glSep2dCopyImage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1aed0 (n64).
  It occupies 1612 bytes.
  The `sd` at 0x2e1af60 stores 8 bytes to a1 (arg1 at entry) +0x110 (value [[a1+552]:8+80]:8).
  The `sd` at 0x2e1b104 stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `sd` at 0x2e1b334 stores 8 bytes to a1 (arg1 at entry) +0x68 (value ([a1+112] + [a1+104]:8)).
  The `sd` at 0x2e1b33c stores 8 bytes to a1 (arg1 at entry) +0x10 (value ([a1+24] + [a1+16]:8)).
  The `jalr` at 0x2e1b010 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e1b06c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b0ac calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b0d8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b134 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown, a4=0x1.
  The `jalr` at 0x2e1b150 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e1b268 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=unknown.
  The `jalr` at 0x2e1b2c4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b308 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b358 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b3e4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b460 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e1b49c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+104]:8.
  The `bne` branch at 0x2e1af70 targets 0x2e1b4f4, is taken when at(unknown) < s4(=[[a1+552]:8+68]) (signed), and falls through when at(unknown) >= s4(=[[a1+552]:8+68]) (signed).
  The `bne` branch at 0x2e1af90 targets 0x2e1afa0, is taken when a5(=[a1+280]) != a6(=[a1+284]), and falls through when a5(=[a1+280]) == a6(=[a1+284]).
  The `blez` branch at 0x2e1afac targets 0x2e1b170, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e1b028 targets 0x2e1b098, is taken when ra(=[a1+280]) < 0x2 (signed), and falls through when ra(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e1b088 targets 0x2e1b030, is taken when a3(unknown) < a4(=[a1+280]) (signed), and falls through when a3(unknown) >= a4(=[a1+280]) (signed).
  The `beq` branch at 0x2e1b100 targets 0x2e1b160, is taken when at(=table(0x8000)) == v0(unknown), and falls through when at(=table(0x8000)) != v0(unknown).
  The `bne` branch at 0x2e1b114 targets 0x2e1afe0, is taken when a0(=[a1+280]) != 0, and falls through when a0(=[a1+280]) == 0.
  The `blez` branch at 0x2e1b188 targets 0x2e1b4b0, is taken when t8(unknown) <= 0 (signed), and falls through when t8(unknown) > 0 (signed).
  The `beq` branch at 0x2e1b1d0 targets 0x2e1b484, is taken when a0(=[a1+284]) == s0(unknown), and falls through when a0(=[a1+284]) != s0(unknown).
  The `bne` branch at 0x2e1b280 targets 0x2e1b2e4, is taken when v0(=[a1+280]) < 0x2 (signed), and falls through when v0(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e1b2d8 targets 0x2e1b290, is taken when s0(unknown) < a5(=[a1+280]) (signed), and falls through when s0(unknown) >= a5(=[a1+280]) (signed).
  The `beq` branch at 0x2e1b338 targets 0x2e1b4ac, is taken when at(unknown) == s1(unknown), and falls through when at(unknown) != s1(unknown).
  The `blez` branch at 0x2e1b360 targets 0x2e1b408, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e1b3f0 targets 0x2e1b380, is taken when s0(unknown) != s7(unknown), and falls through when s0(unknown) == s7(unknown).
  The `beq` branch at 0x2e1b414 targets 0x2e1b1c0, is taken when s0(unknown) >= a0(=[a1+284]) (signed), and falls through when s0(unknown) < a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e1b474 targets 0x2e1b430, is taken when s0(unknown) < a0(=[a1+284]) (signed), and falls through when s0(unknown) >= a0(=[a1+284]) (signed).
  The return at 0x2e1b4ec has v0 = unknown.
  The return at 0x2e1b514 has v0 = [[a1+552]:8+68]-1.
- `__glFClamp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1b520 (n64).
  It occupies 44 bytes.
  The `bc1t` branch at 0x2e1b52c targets 0x2e1b544, is taken when f12 < f5 (c.lt.s at 0x2e1b524), and falls through when not (f12 < f5 (c.lt.s at 0x2e1b524)).
  The return at 0x2e1b53c has v0 = unknown.
  The return at 0x2e1b544 has v0 = unknown.
- `__glGenMatrixSignature` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d2e0 (n64).
  It occupies 296 bytes.
  The `sb` at 0x2e1d2ec stores 1 bytes to a0 (arg0 at entry) +0x9958 (value 0x0).
  The `sw` at 0x2e1d2f8 stores 4 bytes to a0 (arg0 at entry) +0x9950 (value 0x0).
  The `sw` at 0x2e1d304 stores 4 bytes to abs 0x1030 (value 0x2).
  The `sw` at 0x2e1d328 stores 4 bytes to a0 (arg0 at entry) +0x4714 (value ([a0+18196] | 0x10)).
  The `sb` at 0x2e1d334 stores 1 bytes to unknown (base unknown) (value 0x1).
  The `sb` at 0x2e1d340 stores 1 bytes to unknown (base unknown) (value -0x1).
  The `sb` at 0x2e1d360 stores 1 bytes to unknown (base unknown) (value -0x1).
  The `sb` at 0x2e1d364 stores 1 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e1d3d8 stores 4 bytes to a0 (arg0 at entry) +0x9950 (value -0x1).
  The `sb` at 0x2e1d3dc stores 1 bytes to a0 (arg0 at entry) +0x9958 (value 0x0).
  The `sb` at 0x2e1d3fc stores 1 bytes to a0 (arg0 at entry) +0x9958 (value one of 0x0, 0x1).
  The `beq` branch at 0x2e1d348 targets 0x2e1d378, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x2e1d350 targets 0x2e1d3d4, is taken when a7(=0x3f800000) != a4(unknown), and falls through when a7(=0x3f800000) == a4(unknown).
  The `beq` branch at 0x2e1d358 targets 0x2e1d3e8, is taken when t1(=one of 0x0, 0x1) == 0, and falls through when t1(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2e1d37c targets 0x2e1d344, is taken when a3(unknown) != ra(=0x4), and falls through when a3(unknown) == ra(=0x4).
  The `bne` branch at 0x2e1d394 targets 0x2e1d330, is taken when t2(unknown) != ra(=0x4), and falls through when t2(unknown) == ra(=0x4).
  The `beq` branch at 0x2e1d3a0 targets 0x2e1d3f8, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `beq` branch at 0x2e1d3ac targets 0x2e1d3f8, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `beq` branch at 0x2e1d3b8 targets 0x2e1d3f8, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `beq` branch at 0x2e1d3c4 targets 0x2e1d3f8, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The return at 0x2e1d3e0 has v0 = unknown.
  The return at 0x2e1d400 has v0 = unknown.
- `__glSpanColorMatrixSwizzleRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d410 (n64).
  It occupies 340 bytes.
  The `blez` branch at 0x2e1d438 targets 0x2e1d55c, is taken when a6(=[a1+200]) <= 0 (signed), and falls through when a6(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d464 targets 0x2e1d4ac, is taken when (t9(unknown) & 0x3) == 0, and falls through when (t9(unknown) & 0x3) != 0.
  The `bne` branch at 0x2e1d4a4 targets 0x2e1d46c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e1d4b0 targets 0x2e1d55c, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `bgtz` branch at 0x2e1d554 targets 0x2e1d4c0, is taken when a6(unknown) > 0 (signed), and falls through when a6(unknown) <= 0 (signed).
  The return at 0x2e1d55c has v0 = unknown.
- `__glSpanColorMatrixSwizzWithDropRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d570 (n64).
  It occupies 520 bytes.
  The `swc1` at 0x2e1d5e0 stores 4 bytes to a3 (arg3 at entry) +0x0 (value [(([a0+39252]:1 << 0x2) + a2)]).
  The `swc1` at 0x2e1d5f0 stores 4 bytes to a3 (arg3 at entry) +0x4 (value [(([a0+39253]:1 << 0x2) + a2)]).
  The `swc1` at 0x2e1d600 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [(([a0+39254]:1 << 0x2) + a2)]).
  The `swc1` at 0x2e1d60c stores 4 bytes to a3 (arg3 at entry) +0xc (value [(([a0+39255]:1 << 0x2) + a2)]).
  The `blez` branch at 0x2e1d598 targets 0x2e1d62c, is taken when t8(=[a1+200]) <= 0 (signed), and falls through when t8(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d5c8 targets 0x2e1d620, is taken when (t9(unknown) & 0x1) == 0, and falls through when (t9(unknown) & 0x1) != 0.
  The `bltz` branch at 0x2e1d5d0 targets 0x2e1d748, is taken when t3(=[a0+39252]:1) < 0 (signed), and falls through when t3(=[a0+39252]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d5dc targets 0x2e1d754, is taken when t0(=[a0+39253]:1) < 0 (signed), and falls through when t0(=[a0+39253]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d5ec targets 0x2e1d760, is taken when t2(=[a0+39254]:1) < 0 (signed), and falls through when t2(=[a0+39254]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d5fc targets 0x2e1d76c, is taken when t1(=[a0+39255]:1) < 0 (signed), and falls through when t1(=[a0+39255]:1) >= 0 (signed).
  The `bne` branch at 0x2e1d624 targets 0x2e1d6c8, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bgez` branch at 0x2e1d644 targets 0x2e1d6dc, is taken when t0(=[a0+39253]:1) >= 0 (signed), and falls through when t0(=[a0+39253]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d650 targets 0x2e1d6ec, is taken when t2(=[a0+39254]:1) >= 0 (signed), and falls through when t2(=[a0+39254]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d65c targets 0x2e1d6fc, is taken when t1(=[a0+39255]:1) >= 0 (signed), and falls through when t1(=[a0+39255]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d668 targets 0x2e1d70c, is taken when t3(=[a0+39252]:1) >= 0 (signed), and falls through when t3(=[a0+39252]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d674 targets 0x2e1d71c, is taken when t0(=[a0+39253]:1) >= 0 (signed), and falls through when t0(=[a0+39253]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d680 targets 0x2e1d72c, is taken when t2(=[a0+39254]:1) >= 0 (signed), and falls through when t2(=[a0+39254]:1) < 0 (signed).
  The `bltz` branch at 0x2e1d68c targets 0x2e1d73c, is taken when t1(=[a0+39255]:1) < 0 (signed), and falls through when t1(=[a0+39255]:1) >= 0 (signed).
  The `blez` branch at 0x2e1d6bc targets 0x2e1d62c, is taken when t8(unknown) <= 0 (signed), and falls through when t8(unknown) > 0 (signed).
  The `bltz` branch at 0x2e1d6c8 targets 0x2e1d640, is taken when t3(=[a0+39252]:1) < 0 (signed), and falls through when t3(=[a0+39252]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d6d4 targets 0x2e1d64c, is taken when t0(=[a0+39253]:1) < 0 (signed), and falls through when t0(=[a0+39253]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d6e4 targets 0x2e1d658, is taken when t2(=[a0+39254]:1) < 0 (signed), and falls through when t2(=[a0+39254]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d6f4 targets 0x2e1d664, is taken when t1(=[a0+39255]:1) < 0 (signed), and falls through when t1(=[a0+39255]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d704 targets 0x2e1d670, is taken when t3(=[a0+39252]:1) < 0 (signed), and falls through when t3(=[a0+39252]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d714 targets 0x2e1d67c, is taken when t0(=[a0+39253]:1) < 0 (signed), and falls through when t0(=[a0+39253]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d724 targets 0x2e1d688, is taken when t2(=[a0+39254]:1) < 0 (signed), and falls through when t2(=[a0+39254]:1) >= 0 (signed).
  The `bgez` branch at 0x2e1d734 targets 0x2e1d6a0, is taken when t1(=[a0+39255]:1) >= 0 (signed), and falls through when t1(=[a0+39255]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d74c targets 0x2e1d5e4, is taken when t0(=[a0+39253]:1) >= 0 (signed), and falls through when t0(=[a0+39253]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d758 targets 0x2e1d5f4, is taken when t2(=[a0+39254]:1) >= 0 (signed), and falls through when t2(=[a0+39254]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d764 targets 0x2e1d604, is taken when t1(=[a0+39255]:1) >= 0 (signed), and falls through when t1(=[a0+39255]:1) < 0 (signed).
  The return at 0x2e1d62c has v0 = unknown.
- `__glSpanColorMatrixGeneralRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d780 (n64).
  It occupies 472 bytes.
  The `blez` branch at 0x2e1d7d8 targets 0x2e1d950, is taken when t0(=[a1+200]) <= 0 (signed), and falls through when t0(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d7f0 targets 0x2e1d864, is taken when (a4(unknown) & 0x1) == 0, and falls through when (a4(unknown) & 0x1) != 0.
  The `beq` branch at 0x2e1d86c targets 0x2e1d950, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `bgtz` branch at 0x2e1d948 targets 0x2e1d880, is taken when a2(unknown) > 0 (signed), and falls through when a2(unknown) <= 0 (signed).
  The return at 0x2e1d950 has v0 = unknown.
- `__glSpanPostColorMatrixScaleBiasRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d960 (n64).
  It occupies 408 bytes.
  The `blez` branch at 0x2e1d9b8 targets 0x2e1daf0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d9c0 targets 0x2e1da0c, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `madd.s` at 0x2e1d9d8, 0x2e1da30, 0x2e1da60, 0x2e1da90, 0x2e1dac0 is not a branch.
  The `bne` branch at 0x2e1da04 targets 0x2e1d9c8, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e1da10 targets 0x2e1daf0, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e1dae8 targets 0x2e1da20, is taken when a5(=[a1+200]) != a1(unknown), and falls through when a5(=[a1+200]) == a1(unknown).
  The return at 0x2e1daf0 has v0 = unknown.
- `__glValidateAlphaTest` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f2a0 (n64).
  It occupies 368 bytes.
  The `sb` at 0x2e1f354 stores 1 bytes to unknown (base unknown) (value 0x0).
  The `sb` at 0x2e1f360 stores 1 bytes to unknown (base unknown) (value 0x1).
  The `sd` at 0x2e1f3fc stores 8 bytes to unknown (base unknown) (value ret(unknown)).
  The `jalr` at 0x2e1f3e0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+4072], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a0+2084].
  The `beq` branch at 0x2e1f2ec targets 0x2e1f3d4, is taken when a1(=[a0+39424]:8) == 0, and falls through when a1(=[a0+39424]:8) != 0.
  The `blez` branch at 0x2e1f2f4 targets 0x2e1f3c0, is taken when s0(=[a0+4072]) <= 0 (signed), and falls through when s0(=[a0+4072]) > 0 (signed).
  The `beq` branch at 0x2e1f328 targets 0x2e1f3c0, is taken when s0(=[a0+4072]) == a0(unknown), and falls through when s0(=[a0+4072]) != a0(unknown).
  The `beq` branch at 0x2e1f338 targets 0x2e1f320, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The return at 0x2e1f3cc has v0 = unknown.
- `__glInitAsyncState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f410 (n64).
  It occupies 188 bytes.
  The `sd` at 0x2e1f450 stores 8 bytes to a0 (arg0 at entry) +0x1ad0 (value ret(__glNamesNewArray)).
  The `sd` at 0x2e1f484 stores 8 bytes to ret(unknown) +0x8 (value 0x2e1f910).
  The `sd` at 0x2e1f488 stores 8 bytes to a0 (arg0 at entry) +0x1ac8 (value ret(unknown)).
  The `sw` at 0x2e1f48c stores 4 bytes to a0 (arg0 at entry) +0x1ac0 (value 0x0).
  The `sw` at 0x2e1f4ac stores 4 bytes to ret(unknown) +0x0 (value [ret(unknown)]+1).
  The `jalr` at 0x2e1f438 calls `__glNamesNewArray` with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f458 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=0x1, a2=0x10, a3=unknown.
  The `jalr` at 0x2e1f474 calls `__glNamesNewData` with a0=a0 at entry (arg0), a1=ret(__glNamesNewArray), a2=0x0, a3=ret(unknown).
  The `jalr` at 0x2e1f4a8 calls `__glNamesDeleteRange` with a0=a0 at entry (arg0), a1=ret(__glNamesNewArray), a2=0x0, a3=0x1.
  The return at 0x2e1f4c4 has v0 = ret(__glNamesDeleteRange).
- `__glFreeAsyncState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f4d0 (n64).
  It occupies 52 bytes.
  The `jalr` at 0x2e1f4ec calls `__glNamesFreeArray` with a0=a0 at entry (arg0), a1=[a0+6864]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e1f4fc has v0 = ret(__glNamesFreeArray).
- `__glFreeAsyncMarker` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f910 (n64).
  It occupies 52 bytes.
  The `jalr` at 0x2e1f92c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e1f93c has v0 = ret(unknown).
- `__glDisposeAsyncMarker` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f950 (n64).
  It occupies 52 bytes.
  The `jalr` at 0x2e1f96c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e1f97c has v0 = ret(unknown).
- `RoundWidth` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e21ae0 (n64).
  It occupies 44 bytes.
  The `bc1f` branch at 0x2e21aec targets 0x2e21afc, is taken when not (f12 < f0(=0x3f800000) (c.lt.s at 0x2e21ae4)), and falls through when f12 < f0(=0x3f800000) (c.lt.s at 0x2e21ae4).
  The return at 0x2e21af4 has v0 = 0x1.
  The return at 0x2e21b04 has v0 = unknown.
- `ClampWidth` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e21b10 (n64).
  It occupies 80 bytes.
  The `bc1t` branch at 0x2e21b1c targets 0x2e21b58, is taken when f13 <= f5(=[a0+4112]) (c.le.s at 0x2e21b14), and falls through when not (f13 <= f5(=[a0+4112]) (c.le.s at 0x2e21b14)).
  The `bc1f` branch at 0x2e21b28 targets 0x2e21b38, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e21b30 has v0 = unknown.
  The return at 0x2e21b50 has v0 = unknown.
  The return at 0x2e21b58 has v0 = unknown.
- `RoundSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e22630 (n64).
  It occupies 44 bytes.
  The `bc1f` branch at 0x2e2263c targets 0x2e2264c, is taken when not (f12 < f0(=0x3f800000) (c.lt.s at 0x2e22634)), and falls through when f12 < f0(=0x3f800000) (c.lt.s at 0x2e22634).
  The return at 0x2e22644 has v0 = 0x1.
  The return at 0x2e22654 has v0 = unknown.
- `ClampSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e22660 (n64).
  It occupies 80 bytes.
  The `bc1t` branch at 0x2e2266c targets 0x2e226a8, is taken when f13 <= f5(=[a0+4100]) (c.le.s at 0x2e22664), and falls through when not (f13 <= f5(=[a0+4100]) (c.le.s at 0x2e22664)).
  The `bc1f` branch at 0x2e22678 targets 0x2e22688, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e22680 has v0 = unknown.
  The return at 0x2e226a0 has v0 = unknown.
  The return at 0x2e226a8 has v0 = unknown.
- `__glFastDrawBitmap` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28150 (n64).
  It occupies 336 bytes.
  The `jalr` at 0x2e281e0 calls `__glImageSize` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x1900, a3=0x1a00, a5=a7 at entry (arg7).
  The `jalr` at 0x2e281f4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=ret(__glImageSize), a2=unknown, a3=unknown.
  The `jalr` at 0x2e2821c calls `__glFillImage` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1900, a4=0x1a00, a5=a7 at entry (arg7), a6=ret(unknown).
  The `jalr` at 0x2e28230 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-96, a2=ret(unknown), a3=unknown.
  The `jalr` at 0x2e28240 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=ret(unknown), a2=unknown, a3=unknown.
  The `jalr` at 0x2e28274 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=a3 at entry (arg3), a5=a7 at entry (arg7).
  The `jalr` at 0x2e28290 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-96, a2=a7 at entry (arg7), a3=a3 at entry (arg3), a5=a7 at entry (arg7).
  The `beq` branch at 0x2e281a0 targets 0x2e28284, is taken when v0(=[a0+1444]) == at(=0x1), and falls through when v0(=[a0+1444]) != at(=0x1).
  The `beq` branch at 0x2e281b8 targets 0x2e28284, is taken when (a0(unknown) & a1(=[a0+1444]-1)) == 0, and falls through when (a0(unknown) & a1(=[a0+1444]-1)) != 0.
  The `blez` branch at 0x2e281c0 targets 0x2e28268, is taken when s0(=a1) <= 0 (signed), and falls through when s0(=a1) > 0 (signed).
  The `blez` branch at 0x2e281c8 targets 0x2e28268, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The return at 0x2e28260 has v0 = ret(unknown).
- `__glDoBlendAdd` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e286e0 (n64).
  It occupies 68 bytes.
  The return at 0x2e2871c has v0 = unknown.
- `__glDoBlendMin` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28730 (n64).
  It occupies 108 bytes.
  The `swc1` at 0x2e2875c stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a2+4]).
  The `swc1` at 0x2e28774 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a2+8]).
  The `swc1` at 0x2e28790 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a2+12]).
  The `bc1f` branch at 0x2e2873c targets 0x2e28748, is taken when not (f4(=[a2]) < f0(=[a3]) (c.lt.s at 0x2e28738)), and falls through when f4(=[a2]) < f0(=[a3]) (c.lt.s at 0x2e28738).
  The `bc1f` branch at 0x2e28754 targets 0x2e28760, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2876c targets 0x2e28778, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e28784 targets 0x2e28794, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x2e2878c has v0 = unknown.
  The return at 0x2e28794 has v0 = unknown.
- `__glDoBlendSubtract` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28810 (n64).
  It occupies 68 bytes.
  The return at 0x2e2884c has v0 = unknown.
- `__glDoBlendReverseSubtract` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28860 (n64).
  It occupies 68 bytes.
  The return at 0x2e2889c has v0 = unknown.
- `__glDoBlendAlphaMin` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e288b0 (n64).
  It occupies 60 bytes.
  The `swc1` at 0x2e288c4 stores 4 bytes to a3 (arg3 at entry) +0x0 (value [a2]).
  The `swc1` at 0x2e288cc stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a2+4]).
  The `swc1` at 0x2e288d4 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a2+8]).
  The `swc1` at 0x2e288e0 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a2+12]).
  The `bc1f` branch at 0x2e288bc targets 0x2e288e4, is taken when not (f0(=[a2+12]) <= f1(=[a3+12]) (c.le.s at 0x2e288b8)), and falls through when f0(=[a2+12]) <= f1(=[a3+12]) (c.le.s at 0x2e288b8).
  The return at 0x2e288dc has v0 = unknown.
  The return at 0x2e288e4 has v0 = unknown.
- `__glDoBlendAlphaMax` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e288f0 (n64).
  It occupies 60 bytes.
  The `swc1` at 0x2e28904 stores 4 bytes to a3 (arg3 at entry) +0x0 (value [a2]).
  The `swc1` at 0x2e2890c stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a2+4]).
  The `swc1` at 0x2e28914 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a2+8]).
  The `swc1` at 0x2e28920 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a2+12]).
  The `bc1f` branch at 0x2e288fc targets 0x2e28924, is taken when not (f0(=[a3+12]) <= f1(=[a2+12]) (c.le.s at 0x2e288f8)), and falls through when f0(=[a3+12]) <= f1(=[a2+12]) (c.le.s at 0x2e288f8).
  The return at 0x2e2891c has v0 = unknown.
  The return at 0x2e28924 has v0 = unknown.
- `__glDoBlendLogicOp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28930 (n64).
  It occupies 1528 bytes.
  The `swc1` at 0x2e28c98 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a0+39472]).
  The `swc1` at 0x2e28ca0 stores 4 bytes to a3 (arg3 at entry) +0x0 (value [a2]).
  The `swc1` at 0x2e28ca8 stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a2+4]).
  The `swc1` at 0x2e28cb0 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a2+8]).
  The `swc1` at 0x2e28cc0 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a2+12]).
  The `beq` branch at 0x2e28948 targets 0x2e28c38, is taken when a5(=[a0+2120]) == v1(=0x1500), and falls through when a5(=[a0+2120]) != v1(=0x1500).
  The `beq` branch at 0x2e2895c targets 0x2e28c54, is taken when a5(=[a0+2120]) == v1(=0x150f), and falls through when a5(=[a0+2120]) != v1(=0x150f).
  The `beq` branch at 0x2e28968 targets 0x2e28c30, is taken when a5(=[a0+2120]) == a1(=0x1503), and falls through when a5(=[a0+2120]) != a1(=0x1503).
  The `beq` branch at 0x2e28970 targets 0x2e28c9c, is taken when a5(=[a0+2120]) == a4(=0x1505), and falls through when a5(=[a0+2120]) != a4(=0x1505).
  The `beq` branch at 0x2e28ae8 targets 0x2e28cc4, is taken when a5(=[a0+2120]) == t0(=0x150c), and falls through when a5(=[a0+2120]) != t0(=0x150c).
  The `beq` branch at 0x2e28b70 targets 0x2e28ba4, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `beq` branch at 0x2e28d80 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28db0 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28de4 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28e18 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28e3c targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28e70 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28e94 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28eb8 targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28eec targets 0x2e28ba4; its condition is not analyzed.
  The `beq` branch at 0x2e28f20 targets 0x2e28ba4; its condition is not analyzed.
  The return at 0x2e28c28 has v0 = unknown.
  The return at 0x2e28c30 has v0 = 0x1.
  The return at 0x2e28c4c has v0 = 0xd7e68.
  The return at 0x2e28c94 has v0 = a0+65536.
  The return at 0x2e28cbc has v0 = 0x1.
  The return at 0x2e28d5c has v0 = unknown.
- `__glDoBlendSourceZERO` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28f30 (n64).
  It occupies 24 bytes.
  The return at 0x2e28f40 has v0 = unknown.
- `__glDoBlendDestZERO` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28f50 (n64).
  It occupies 72 bytes.
  The `jalr` at 0x2e28f80 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e28f90 has v0 = ret(unknown).
- `__glDoBlendSourceONE` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28fa0 (n64).
  It occupies 36 bytes.
  The `swc1` at 0x2e28fb0 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a1+12]).
  The `swc1` at 0x2e28fb4 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a1+8]).
  The `swc1` at 0x2e28fb8 stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a1+4]).
  The `swc1` at 0x2e28fc0 stores 4 bytes to a3 (arg3 at entry) +0x0 (value [a1]).
  The return at 0x2e28fbc has v0 = unknown.
- `__glDoBlendDestONE` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28fd0 (n64).
  It occupies 52 bytes.
  The `jalr` at 0x2e28fec calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e28ffc has v0 = ret(unknown).
- `__glDoBlendDestSC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29010 (n64).
  It occupies 156 bytes.
  The `jalr` at 0x2e29094 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e290a4 has v0 = ret(unknown).
- `__glDoBlendDestMSC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e290b0 (n64).
  It occupies 160 bytes.
  The `jalr` at 0x2e29138 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3); fp f12=[a0+39480].
  The return at 0x2e29148 has v0 = ret(unknown).
- `__glDoBlendSourceDC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29150 (n64).
  It occupies 108 bytes.
  The return at 0x2e291b4 has v0 = unknown.
- `__glDoBlendSourceMDC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e291c0 (n64).
  It occupies 112 bytes.
  The return at 0x2e29228 has v0 = unknown.
- `__glDoBlendSourceSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29230 (n64).
  It occupies 68 bytes.
  The return at 0x2e2926c has v0 = unknown.
- `__glDoBlendDestSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29280 (n64).
  It occupies 120 bytes.
  The `jalr` at 0x2e292e0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e292f0 has v0 = ret(unknown).
- `__glDoBlendSourceMSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29300 (n64).
  It occupies 72 bytes.
  The return at 0x2e29340 has v0 = unknown.
- `__glDoBlendDestMSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29350 (n64).
  It occupies 124 bytes.
  The `jalr` at 0x2e293b4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e293c4 has v0 = ret(unknown).
- `__glDoBlendSourceDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e293d0 (n64).
  It occupies 72 bytes.
  The return at 0x2e29410 has v0 = unknown.
- `__glDoBlendDestDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29420 (n64).
  It occupies 120 bytes.
  The `jalr` at 0x2e29480 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29490 has v0 = ret(unknown).
- `__glDoBlendSourceMDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e294a0 (n64).
  It occupies 76 bytes.
  The return at 0x2e294e4 has v0 = unknown.
- `__glDoBlendDestMDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e294f0 (n64).
  It occupies 124 bytes.
  The `jalr` at 0x2e29554 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29564 has v0 = ret(unknown).
- `__glDoBlendSourceSAT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29570 (n64).
  It occupies 116 bytes.
  The `swc1` at 0x2e295a4 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a1+12]).
  The `swc1` at 0x2e295c4 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a1+12]).
  The `bc1f` branch at 0x2e2959c targets 0x2e295c4, is taken when not (f8 < f9 (c.lt.s at 0x2e29590)), and falls through when f8 < f9 (c.lt.s at 0x2e29590).
  The return at 0x2e295bc has v0 = unknown.
  The return at 0x2e295dc has v0 = unknown.
- `__glDoBlendSourceCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e295f0 (n64).
  It occupies 92 bytes.
  The return at 0x2e29644 has v0 = [a0+2104]:8.
- `__glDoBlendDestCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29650 (n64).
  It occupies 132 bytes.
  The `jalr` at 0x2e296bc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e296cc has v0 = ret(unknown).
- `__glDoBlendSourceCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e296e0 (n64).
  It occupies 56 bytes.
  The return at 0x2e29710 has v0 = unknown.
- `__glDoBlendDestCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29720 (n64).
  It occupies 104 bytes.
  The `jalr` at 0x2e29770 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29780 has v0 = ret(unknown).
- `__glDoBlendSourceMCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29790 (n64).
  It occupies 112 bytes.
  The return at 0x2e297f8 has v0 = [a0+2104]:8.
- `__glDoBlendDestMCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29800 (n64).
  It occupies 164 bytes.
  The `jalr` at 0x2e2988c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e2989c has v0 = ret(unknown).
- `__glDoBlendSourceMCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e298b0 (n64).
  It occupies 64 bytes.
  The return at 0x2e298e8 has v0 = unknown.
- `__glDoBlendDestMCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e298f0 (n64).
  It occupies 112 bytes.
  The `jalr` at 0x2e29948 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29958 has v0 = ret(unknown).
- `__glDoNoFetchBlend` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29970 (n64).
  It occupies 56 bytes.
  The `jalr` at 0x2e29990 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a2+12, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x2e299a0 has v0 = ret(unknown).
- `__glDoFetchBlend` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e299b0 (n64).
  It occupies 116 bytes.
  The `jalr` at 0x2e299ec calls `(unknown callee)` with a0=a1 at entry (arg1), a1=[a2], a2=[a2+4], a3=sp-64.
  The `jalr` at 0x2e29a08 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a2+12, a2=sp-64, a3=a3 at entry (arg3).
  The return at 0x2e29a1c has v0 = ret(unknown).
- `__glDoBlend` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29a30 (n64).
  It occupies 224 bytes.
  The `swc1` at 0x2e29abc stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a0+39436]).
  The `swc1` at 0x2e29ad4 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a0+39440]).
  The `swc1` at 0x2e29aec stores 4 bytes to a3 (arg3 at entry) +0xc (value [a0+39472]).
  The `jalr` at 0x2e29a64 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e29a7c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1f` branch at 0x2e29a98 targets 0x2e29aa4, is taken when not (f4(=[a0+39432]) < f0(=[a3]) (c.lt.s at 0x2e29a94)), and falls through when f4(=[a0+39432]) < f0(=[a3]) (c.lt.s at 0x2e29a94).
  The `bc1f` branch at 0x2e29ab4 targets 0x2e29ac0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e29acc targets 0x2e29ad8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e29ae4 targets 0x2e29afc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x2e29af4 has v0 = ret(unknown).
  The return at 0x2e29b08 has v0 = ret(unknown).
- `__glDoBlendZeroClamp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29b10 (n64).
  It occupies 192 bytes.
  The `jalr` at 0x2e29b3c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e29b58 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1f` branch at 0x2e29b6c targets 0x2e29b78, is taken when not (f0(=[a3]) < f4 (c.lt.s at 0x2e29b68)), and falls through when f0(=[a3]) < f4 (c.lt.s at 0x2e29b68).
  The `bc1f` branch at 0x2e29b80 targets 0x2e29b8c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e29b94 targets 0x2e29ba0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e29ba8 targets 0x2e29bc0, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x2e29bb8 has v0 = ret(unknown).
  The return at 0x2e29bc8 has v0 = ret(unknown).
- `__glDoBlendNoClamp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29bd0 (n64).
  It occupies 100 bytes.
  The `jalr` at 0x2e29c00 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e29c18 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e29c2c has v0 = ret(unknown).
- `__glDoBlend_SA_ZERO` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29c40 (n64).
  It occupies 72 bytes.
  The return at 0x2e29c80 has v0 = unknown.
- `__glDoBlend_SA_ONE` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29c90 (n64).
  It occupies 132 bytes.
  The return at 0x2e29d0c has v0 = unknown.
- `__glDoBlend_SA_MSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29d20 (n64).
  It occupies 108 bytes.
  The return at 0x2e29d84 has v0 = unknown.
- `__glDoBlend_MSA_SA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29d90 (n64).
  It occupies 108 bytes.
  The return at 0x2e29df4 has v0 = unknown.
- `__glResizeBuffer` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2ac40 (n64).
  It occupies 268 bytes.
  The `sd` at 0x2e2acd0 stores 8 bytes to a0 (arg0 at entry) +0x18 (value ret(unknown)).
  The `sw` at 0x2e2acd8 stores 4 bytes to a0 (arg0 at entry) +0xc (value a2).
  The `sw` at 0x2e2acdc stores 4 bytes to a0 (arg0 at entry) +0x28 (value a1).
  The `sw` at 0x2e2ace0 stores 4 bytes to a0 (arg0 at entry) +0x8 (value a1).
  The `sw` at 0x2e2acf4 stores 4 bytes to a0 (arg0 at entry) +0xc (value a2).
  The `sw` at 0x2e2acf8 stores 4 bytes to a0 (arg0 at entry) +0x28 (value a1).
  The `sw` at 0x2e2acfc stores 4 bytes to a0 (arg0 at entry) +0x8 (value a1).
  The `sd` at 0x2e2ad48 stores 8 bytes to a0 (arg0 at entry) +0x18 (value ret(unknown)).
  The `jalr` at 0x2e2acb8 calls `(unknown callee)` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+24]:8, a6=[[a0]:8+40608]:8.
  The `jalr` at 0x2e2ad2c calls `(unknown callee)` with a0=[a0+24]:8, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+24]:8, a6=[[a0]:8+40608]:8.
  The `bne` branch at 0x2e2ac98 targets 0x2e2ad10, is taken when a7(=[a0+32]) < a5(unknown) (unsigned), and falls through when a7(=[a0+32]) >= a5(unknown) (unsigned).
  The `bne` branch at 0x2e2aca0 targets 0x2e2acf4, is taken when a4(=[a0+24]:8) != 0, and falls through when a4(=[a0+24]:8) == 0.
  The `beq` branch at 0x2e2ad1c targets 0x2e2aca8, is taken when a4(=[a0+24]:8) == 0, and falls through when a4(=[a0+24]:8) != 0.
  The return at 0x2e2acec has v0 = ret(unknown).
  The return at 0x2e2ad08 has v0 = unknown.
- `__glMoveBuffer` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2ad50 (n64).
  It occupies 12 bytes.
  The `sw` at 0x2e2ad50 stores 4 bytes to a0 (arg0 at entry) +0x30 (value a2).
  The `sw` at 0x2e2ad58 stores 4 bytes to a0 (arg0 at entry) +0x2c (value a1).
  The return at 0x2e2ad54 has v0 = unknown.
- `__glFreeBuffer` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2ad60 (n64).
  It occupies 72 bytes.
  The `sd` at 0x2e2ad98 stores 8 bytes to a0 (arg0 at entry) +0x0 (value 0x0).
  The `jalr` at 0x2e2ad88 calls `(unknown callee)` with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0]:8.
  The `beq` branch at 0x2e2ad78 targets 0x2e2ad94, is taken when a3(=[a0]:8) == 0, and falls through when a3(=[a0]:8) != 0.
  The return at 0x2e2ada0 has v0 = unknown.
- `__glLoadColorTableParams` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2e000 (n64).
  It occupies 1184 bytes.
  The `sw` at 0x2e2e004 stores 4 bytes to a0 (arg0 at entry) +0x14 (value a3).
  The `sw` at 0x2e2e00c stores 4 bytes to a0 (arg0 at entry) +0x10 (value a2).
  The `sw` at 0x2e2e014 stores 4 bytes to a0 (arg0 at entry) +0x0 (value a1).
  The `sw` at 0x2e2e098 stores 4 bytes to a0 (arg0 at entry) +0x54 (value 0x1).
  The `sw` at 0x2e2e09c stores 4 bytes to a0 (arg0 at entry) +0x50 (value 0x1906).
  The `sw` at 0x2e2e0a0 stores 4 bytes to a0 (arg0 at entry) +0x2c (value 0x0).
  The `sw` at 0x2e2e0a4 stores 4 bytes to a0 (arg0 at entry) +0x28 (value 0x0).
  The `sw` at 0x2e2e0ac stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x18).
  The `sw` at 0x2e2e0b0 stores 4 bytes to a0 (arg0 at entry) +0x20 (value 0x0).
  The `sw` at 0x2e2e0b4 stores 4 bytes to a0 (arg0 at entry) +0x1c (value 0x0).
  The `sw` at 0x2e2e0bc stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x0).
  The `sw` at 0x2e2e0dc stores 4 bytes to a0 (arg0 at entry) +0x54 (value 0x2).
  The `sw` at 0x2e2e0e4 stores 4 bytes to a0 (arg0 at entry) +0x50 (value 0x190a).
  The `sw` at 0x2e2e0e8 stores 4 bytes to a0 (arg0 at entry) +0x2c (value 0x0).
  The `sw` at 0x2e2e0f0 stores 4 bytes to a0 (arg0 at entry) +0x28 (value 0x18).
  The `sw` at 0x2e2e0f4 stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x18).
  The `sw` at 0x2e2e0f8 stores 4 bytes to a0 (arg0 at entry) +0x20 (value 0x0).
  The `sw` at 0x2e2e0fc stores 4 bytes to a0 (arg0 at entry) +0x1c (value 0x0).
  The `sw` at 0x2e2e104 stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x0).
  The `sw` at 0x2e2e160 stores 4 bytes to a0 (arg0 at entry) +0x54 (value 0x1).
  The `sw` at 0x2e2e164 stores 4 bytes to a0 (arg0 at entry) +0x50 (value 0x8049).
  The `sw` at 0x2e2e16c stores 4 bytes to a0 (arg0 at entry) +0x2c (value 0x18).
  The `sw` at 0x2e2e170 stores 4 bytes to a0 (arg0 at entry) +0x28 (value 0x0).
  The `sw` at 0x2e2e174 stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x0).
  The `sw` at 0x2e2e178 stores 4 bytes to a0 (arg0 at entry) +0x20 (value 0x0).
  The `sw` at 0x2e2e17c stores 4 bytes to a0 (arg0 at entry) +0x1c (value 0x0).
  The `sw` at 0x2e2e184 stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x0).
  The `sw` at 0x2e2e208 stores 4 bytes to a0 (arg0 at entry) +0x54 (value 0x3).
  The `sw` at 0x2e2e210 stores 4 bytes to a0 (arg0 at entry) +0x50 (value 0x1907).
  The `sw` at 0x2e2e214 stores 4 bytes to a0 (arg0 at entry) +0x2c (value 0x0).
  The `sw` at 0x2e2e218 stores 4 bytes to a0 (arg0 at entry) +0x28 (value 0x0).
  The `sw` at 0x2e2e21c stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x0).
  The `sw` at 0x2e2e224 stores 4 bytes to a0 (arg0 at entry) +0x20 (value 0x18).
  The `sw` at 0x2e2e228 stores 4 bytes to a0 (arg0 at entry) +0x1c (value 0x18).
  The `sw` at 0x2e2e230 stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x18).
  The `sw` at 0x2e2e26c stores 4 bytes to a0 (arg0 at entry) +0x54 (value 0x4).
  The `sw` at 0x2e2e274 stores 4 bytes to a0 (arg0 at entry) +0x50 (value 0x1908).
  The `sw` at 0x2e2e278 stores 4 bytes to a0 (arg0 at entry) +0x2c (value 0x0).
  The `sw` at 0x2e2e27c stores 4 bytes to a0 (arg0 at entry) +0x28 (value 0x0).
  The `sw` at 0x2e2e284 stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x18).
  The `sw` at 0x2e2e288 stores 4 bytes to a0 (arg0 at entry) +0x20 (value 0x18).
  The `sw` at 0x2e2e28c stores 4 bytes to a0 (arg0 at entry) +0x1c (value 0x18).
  The `sw` at 0x2e2e294 stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x18).
  The `sw` at 0x2e2e2dc stores 4 bytes to a0 (arg0 at entry) +0x54 (value 0x1).
  The `sw` at 0x2e2e2e0 stores 4 bytes to a0 (arg0 at entry) +0x50 (value 0x1909).
  The `sw` at 0x2e2e2e4 stores 4 bytes to a0 (arg0 at entry) +0x2c (value 0x0).
  The `sw` at 0x2e2e2ec stores 4 bytes to a0 (arg0 at entry) +0x28 (value 0x18).
  The `sw` at 0x2e2e2f0 stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x0).
  The `sw` at 0x2e2e2f4 stores 4 bytes to a0 (arg0 at entry) +0x20 (value 0x0).
  The `sw` at 0x2e2e2f8 stores 4 bytes to a0 (arg0 at entry) +0x1c (value 0x0).
  The `sw` at 0x2e2e300 stores 4 bytes to a0 (arg0 at entry) +0x18 (value 0x0).
  The `bne` branch at 0x2e2e010 targets 0x2e2e07c, is taken when a2 < a5(=0x8048) (unsigned), and falls through when a2 >= a5(=0x8048) (unsigned).
  The `beq` branch at 0x2e2e01c targets 0x2e2e0dc, is taken when a5(=0x8048) >= a2 (unsigned), and falls through when a5(=0x8048) < a2 (unsigned).
  The `bne` branch at 0x2e2e02c targets 0x2e2e144, is taken when a2 < a3(=0x8052) (unsigned), and falls through when a2 >= a3(=0x8052) (unsigned).
  The `beq` branch at 0x2e2e034 targets 0x2e2e204, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e2e040 targets 0x2e2e298, is taken when a2 < a3(=0x8057) (unsigned), and falls through when a2 >= a3(=0x8057) (unsigned).
  The `beq` branch at 0x2e2e048 targets 0x2e2e26c, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `bne` branch at 0x2e2e058 targets 0x2e2e254, is taken when a2 < a3(=0x805a) (unsigned), and falls through when a2 >= a3(=0x805a) (unsigned).
  The `beq` branch at 0x2e2e060 targets 0x2e2e26c, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e2e06c targets 0x2e2e108, is taken when a2 != t0(=0x805b), and falls through when a2 == t0(=0x805b).
  The `bne` branch at 0x2e2e084 targets 0x2e2e110, is taken when a2 < a3(=0x803e) (unsigned), and falls through when a2 >= a3(=0x803e) (unsigned).
  The `bne` branch at 0x2e2e08c targets 0x2e2e188, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e2e0c8 targets 0x2e2e490, is taken when a2 < a3(=0x8045) (unsigned), and falls through when a2 >= a3(=0x8045) (unsigned).
  The `bne` branch at 0x2e2e0d4 targets 0x2e2e108, is taken when a3(=0x8045) < a2 (unsigned), and falls through when a3(=0x8045) >= a2 (unsigned).
  The `bne` branch at 0x2e2e114 targets 0x2e2e1cc, is taken when a2 < 0x190a (unsigned), and falls through when a2 >= 0x190a (unsigned).
  The `bne` branch at 0x2e2e11c targets 0x2e2e0dc, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `bne` branch at 0x2e2e12c targets 0x2e2e350, is taken when a2 < a3(=0x803c) (unsigned), and falls through when a2 >= a3(=0x803c) (unsigned).
  The `bne` branch at 0x2e2e134 targets 0x2e2e40c, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e2e14c targets 0x2e2e234, is taken when a2 < a3(=0x804d) (unsigned), and falls through when a2 >= a3(=0x804d) (unsigned).
  The `bne` branch at 0x2e2e154 targets 0x2e2e304, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2e2e190 targets 0x2e2e2c0, is taken when a2 < a3(=0x8043) (unsigned), and falls through when a2 >= a3(=0x8043) (unsigned).
  The `beq` branch at 0x2e2e198 targets 0x2e2e0dc, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e2e1a8 targets 0x2e2e0c0, is taken when a2 < a3(=0x8046) (unsigned), and falls through when a2 >= a3(=0x8046) (unsigned).
  The `beq` branch at 0x2e2e1b0 targets 0x2e2e0dc, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e2e1bc targets 0x2e2e108, is taken when a2 != v0(=0x8047), and falls through when a2 == v0(=0x8047).
  The `bne` branch at 0x2e2e1d0 targets 0x2e2e1f8, is taken when a2 < 0x1908 (unsigned), and falls through when a2 >= 0x1908 (unsigned).
  The `bne` branch at 0x2e2e1dc targets 0x2e2e26c, is taken when a2 < 0x1909 (unsigned), and falls through when a2 >= 0x1909 (unsigned).
  The `bne` branch at 0x2e2e1e8 targets 0x2e2e108, is taken when a3(=0x1909) != a2, and falls through when a3(=0x1909) == a2.
  The `bne` branch at 0x2e2e1f8 targets 0x2e2e3b4, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e2e200 targets 0x2e2e108, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `bne` branch at 0x2e2e23c targets 0x2e2e330, is taken when a2 < a3(=0x804b) (unsigned), and falls through when a2 >= a3(=0x804b) (unsigned).
  The `bne` branch at 0x2e2e244 targets 0x2e2e3e8, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e2e25c targets 0x2e2e468, is taken when a2 < a3(=0x8059) (unsigned), and falls through when a2 >= a3(=0x8059) (unsigned).
  The `bne` branch at 0x2e2e264 targets 0x2e2e108, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2e2e2a0 targets 0x2e2e370, is taken when a2 < a3(=0x8055) (unsigned), and falls through when a2 >= a3(=0x8055) (unsigned).
  The `beq` branch at 0x2e2e2a8 targets 0x2e2e268, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e2e2b0 targets 0x2e2e108, is taken when a2 != at(=0x8056), and falls through when a2 == at(=0x8056).
  The `bne` branch at 0x2e2e2c8 targets 0x2e2e390, is taken when a2 < a3(=0x8041) (unsigned), and falls through when a2 >= a3(=0x8041) (unsigned).
  The `bne` branch at 0x2e2e2d0 targets 0x2e2e444, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `bne` branch at 0x2e2e30c targets 0x2e2e3c8, is taken when a2 < a3(=0x8050) (unsigned), and falls through when a2 >= a3(=0x8050) (unsigned).
  The `beq` branch at 0x2e2e314 targets 0x2e2e208, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `bne` branch at 0x2e2e320 targets 0x2e2e108, is taken when a2 != a6(=0x8051), and falls through when a2 == a6(=0x8051).
  The `bne` branch at 0x2e2e338 targets 0x2e2e3f8, is taken when a2 < a3(=0x804a) (unsigned), and falls through when a2 >= a3(=0x804a) (unsigned).
  The `bne` branch at 0x2e2e340 targets 0x2e2e108, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2e2e358 targets 0x2e2e41c, is taken when a2 < a3(=0x803b) (unsigned), and falls through when a2 >= a3(=0x803b) (unsigned).
  The `bne` branch at 0x2e2e360 targets 0x2e2e108, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e2e378 targets 0x2e2e430, is taken when a2 < a3(=0x8054) (unsigned), and falls through when a2 >= a3(=0x8054) (unsigned).
  The `beq` branch at 0x2e2e380 targets 0x2e2e208, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e2e398 targets 0x2e2e458, is taken when a2 < a3(=0x8040) (unsigned), and falls through when a2 >= a3(=0x8040) (unsigned).
  The `bne` branch at 0x2e2e3a4 targets 0x2e2e108, is taken when a3(=0x8040) < a2 (unsigned), and falls through when a3(=0x8040) >= a2 (unsigned).
  The `bne` branch at 0x2e2e3b8 targets 0x2e2e108, is taken when a3(=0x1906) != a2, and falls through when a3(=0x1906) == a2.
  The `bne` branch at 0x2e2e3d0 targets 0x2e2e47c, is taken when a2 < a3(=0x804f) (unsigned), and falls through when a2 >= a3(=0x804f) (unsigned).
  The `beq` branch at 0x2e2e3d8 targets 0x2e2e208, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `bne` branch at 0x2e2e3e8 targets 0x2e2e108, is taken when a2 != a1(=0x804c), and falls through when a2 == a1(=0x804c).
  The `bne` branch at 0x2e2e3fc targets 0x2e2e108, is taken when a3(=0x8049) != a2, and falls through when a3(=0x8049) == a2.
  The `bne` branch at 0x2e2e40c targets 0x2e2e108, is taken when a2 != a3(=0x803d), and falls through when a2 == a3(=0x803d).
  The `bne` branch at 0x2e2e420 targets 0x2e2e108, is taken when a2 != a4(=0x2a10), and falls through when a2 == a4(=0x2a10).
  The `bne` branch at 0x2e2e434 targets 0x2e2e108, is taken when a2 != a5(=0x8053), and falls through when a2 == a5(=0x8053).
  The `bne` branch at 0x2e2e448 targets 0x2e2e108, is taken when a2 != a6(=0x8042), and falls through when a2 == a6(=0x8042).
  The `bne` branch at 0x2e2e458 targets 0x2e2e108, is taken when a2 != a7(=0x803f), and falls through when a2 == a7(=0x803f).
  The `bne` branch at 0x2e2e46c targets 0x2e2e108, is taken when a2 != t0(=0x8058), and falls through when a2 == t0(=0x8058).
  The `bne` branch at 0x2e2e480 targets 0x2e2e108, is taken when a2 != t1(=0x804e), and falls through when a2 == t1(=0x804e).
  The `bne` branch at 0x2e2e490 targets 0x2e2e108, is taken when a2 != t2(=0x8044), and falls through when a2 == t2(=0x8044).
  The return at 0x2e2e0b8 has v0 = unknown.
  The return at 0x2e2e100 has v0 = 0x18.
  The return at 0x2e2e108 has v0 = unknown.
  The return at 0x2e2e180 has v0 = unknown.
  The return at 0x2e2e22c has v0 = unknown.
  The return at 0x2e2e290 has v0 = unknown.
  The return at 0x2e2e2fc has v0 = unknown.
- `__glColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2e4a0 (n64).
  It occupies 908 bytes.
  The `sw` at 0x2e2e5a4 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5a8 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5ac stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5b0 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5b4 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5b8 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5bc stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sw` at 0x2e2e5c0 stores 4 bytes to unknown (base unknown) (value 0x0).
  The `sd` at 0x2e2e820 stores 8 bytes to unknown (base unknown) (value ret(unknown)).
  The `jalr` at 0x2e2e528 calls `__glElementsPerGroup` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e2e550 calls `__glLoadColorTableParams` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e2e5d8 calls `__glElementsPerGroup` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2e63c calls `__glInitMemUnpack` with a0=a0 at entry (arg0), a1=sp-744, a2=a3 at entry (arg3), a3=0x1, a4=0x0, a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jalr` at 0x2e2e654 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-744, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2e750 calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-744, a2=0x1, a3=unknown.
  The `jalr` at 0x2e2e760 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-744, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2e77c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-744, a2=0x0, a3=unknown.
  The `jalr` at 0x2e2e7ec calls `__glElementsPerGroup` with a0=unknown, a1=unknown, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0x2e2e810 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e2e4e4 targets 0x2e2e4f8, is taken when at(unknown) >= 0x1a (unsigned), and falls through when at(unknown) < 0x1a (unsigned).
  The `beq` branch at 0x2e2e518 targets 0x2e2e5a0, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x2e2e55c targets 0x2e2e5d4, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `bne` branch at 0x2e2e598 targets 0x2e2e520, is taken when a2 != 0, and falls through when a2 == 0.
  The `bne` branch at 0x2e2e5f4 targets 0x2e2e7ec, is taken when at(unknown) < v0(unknown) (signed), and falls through when at(unknown) >= v0(unknown) (signed).
  The `beq` branch at 0x2e2e5fc targets 0x2e2e568, is taken when a2(=a3) == 0, and falls through when a2(=a3) != 0.
  The `beq` branch at 0x2e2e608 targets 0x2e2e568, is taken when v1(=a6) == 0, and falls through when v1(=a6) != 0.
  The `beq` branch at 0x2e2e614 targets 0x2e2e564, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `bc1f` branch at 0x2e2e66c targets 0x2e2e704, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e668)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e668).
  The `bc1f` branch at 0x2e2e680 targets 0x2e2e704, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2e694 targets 0x2e2e704, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e2e6a8 targets 0x2e2e704, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e2e6c0 targets 0x2e2e704, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e6bc)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e6bc).
  The `bc1f` branch at 0x2e2e6d4 targets 0x2e2e704, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2e6e8 targets 0x2e2e704, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e2e6fc targets 0x2e2e824, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The return at 0x2e2e570 has v0 = unknown.
  The return at 0x2e2e5cc has v0 = unknown.
- `__glColorSubTable` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2e990 (n64).
  It occupies 544 bytes.
  The `jalr` at 0x2e2ea2c calls `__glInitMemUnpack` with a0=a0 at entry (arg0), a1=sp-680, a2=a3 at entry (arg3), a3=0x1, a4=0x0, a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jalr` at 0x2e2ea44 calls `__glInitMemLoad` with a0=a0 at entry (arg0), a1=sp-680, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2eb3c calls `__glInitUnpacker` with a0=a0 at entry (arg0), a1=sp-680, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2eb50 calls `__glInitPacker` with a0=a0 at entry (arg0), a1=sp-680, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2eb6c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=sp-680, a2=0x0, a3=unknown.
  The `beq` branch at 0x2e2e9d4 targets 0x2e2eb8c, is taken when a1 == at(=0x80d0), and falls through when a1 != at(=0x80d0).
  The `beq` branch at 0x2e2e9e0 targets 0x2e2eb94, is taken when a1 == v1(=0x80d1), and falls through when a1 != v1(=0x80d1).
  The `beq` branch at 0x2e2e9ec targets 0x2e2eba0, is taken when a1 == a0(=0x80d2), and falls through when a1 != a0(=0x80d2).
  The `bc1f` branch at 0x2e2ea74 targets 0x2e2eaf0, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2ea64)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2ea64).
  The `bc1f` branch at 0x2e2ea84 targets 0x2e2eaf0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2ea94 targets 0x2e2eaf0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e2eaa4 targets 0x2e2eaf0, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e2eab4 targets 0x2e2eaf0, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2eab0)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2eab0).
  The `bc1f` branch at 0x2e2eac4 targets 0x2e2eaf0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2ead4 targets 0x2e2eaf0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e2eae8 targets 0x2e2eba8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The return at 0x2e2eb84 has v0 = ret(unknown).
- `__glColorTableModifiers` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2eed0 (n64).
  It occupies 524 bytes.
  The `sw` at 0x2e2f010 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f020 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f030 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f040 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f050 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f060 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f07c stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f088 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1).
  The `sw` at 0x2e2f0c8 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x4).
  The `sw` at 0x2e2f0d8 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x4).
  The `bgezall` at 0x2e2ef28 calls `__glSetError` with a0=0x500, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8.
  The `bgezall` at 0x2e2efe8 calls `__glSetError` with a0=0x500, a1=entry(0x2ee91f0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8, a6=one of 0x0, 0x1.
  The `bgezall` at 0x2e2f094 calls `__glSetError` with a0=0x500, a1=entry(0x2ee91f0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8, a6=one of 0x0, 0x1.
  The `bgezall` at 0x2e2f0ac calls `__glSetError` with a0=0x500, a1=entry(0x2ee91f0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8, a6=one of 0x0, 0x1.
  The `beq` branch at 0x2e2ef0c targets 0x2e2ef24, is taken when at(unknown) >= 0x1a (unsigned), and falls through when at(unknown) < 0x1a (unsigned).
  The `beq` branch at 0x2e2ef8c targets 0x2e2efe4, is taken when a0(unknown) >= 0xa (unsigned), and falls through when a0(unknown) < 0xa (unsigned).
  The `beq` branch at 0x2e2f08c targets 0x2e2f0bc, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2e2f0a4 targets 0x2e2f0cc, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The return at 0x2e2ef3c has v0 = 0x0.
  The return at 0x2e2ef4c has v0 = unknown.
  The return at 0x2e2effc has v0 = 0x0.
  The return at 0x2e2f068 has v0 = unknown.
- `__glColorTableParameterv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f0e0 (n64).
  It occupies 388 bytes.
  The `sw` at 0x2e2f260 stores 4 bytes to ret(__glColorTableModifiers) +0x0 (value [a3]).
  The `bgezall` at 0x2e2f0fc calls `__glColorTableModifiers` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32.
  The `beq` branch at 0x2e2f108 targets 0x2e2f214, is taken when v0(=ret(__glColorTableModifiers)) == 0, and falls through when v0(=ret(__glColorTableModifiers)) != 0.
  The `beq` branch at 0x2e2f118 targets 0x2e2f224, is taken when a3(unknown) == at(=0x1), and falls through when a3(unknown) != at(=0x1).
  The `beq` branch at 0x2e2f120 targets 0x2e2f170, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `blez` branch at 0x2e2f128 targets 0x2e2f170, is taken when a3(unknown) <= 0 (signed), and falls through when a3(unknown) > 0 (signed).
  The `beq` branch at 0x2e2f148 targets 0x2e2f170, is taken when a2(unknown) >= a3(unknown) (signed), and falls through when a2(unknown) < a3(unknown) (signed).
  The `bne` branch at 0x2e2f168 targets 0x2e2f130, is taken when a2(unknown) < a3(unknown) (signed), and falls through when a2(unknown) >= a3(unknown) (signed).
  The `beq` branch at 0x2e2f170 targets 0x2e2f214, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `blez` branch at 0x2e2f178 targets 0x2e2f214, is taken when a3(unknown) <= 0 (signed), and falls through when a3(unknown) > 0 (signed).
  The `beq` branch at 0x2e2f19c targets 0x2e2f214, is taken when a2(unknown) >= a1(unknown) (signed), and falls through when a2(unknown) < a1(unknown) (signed).
  The `beq` branch at 0x2e2f1c0 targets 0x2e2f214, is taken when a2(unknown) >= a4(unknown) (signed), and falls through when a2(unknown) < a4(unknown) (signed).
  The `beq` branch at 0x2e2f1e4 targets 0x2e2f214, is taken when a2(unknown) >= a6(unknown) (signed), and falls through when a2(unknown) < a6(unknown) (signed).
  The `bne` branch at 0x2e2f20c targets 0x2e2f180, is taken when a2(unknown) < t0(unknown) (signed), and falls through when a2(unknown) >= t0(unknown) (signed).
  The `beq` branch at 0x2e2f224 targets 0x2e2f244, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `bne` branch at 0x2e2f234 targets 0x2e2f24c, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0x2e2f244 targets 0x2e2f214, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The return at 0x2e2f21c has v0 = unknown.
  The return at 0x2e2f25c has v0 = ret(__glColorTableModifiers).
- `__glGetColorTableParameterv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f350 (n64).
  It occupies 372 bytes.
  The `sw` at 0x2e2f4b4 stores 4 bytes to a3 (arg3 at entry) +0x0 (value [ret(__glColorTableModifiers)]).
  The `bgezall` at 0x2e2f36c calls `__glColorTableModifiers` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32.
  The `beq` branch at 0x2e2f378 targets 0x2e2f474, is taken when v0(=ret(__glColorTableModifiers)) == 0, and falls through when v0(=ret(__glColorTableModifiers)) != 0.
  The `beq` branch at 0x2e2f388 targets 0x2e2f484, is taken when a3(unknown) == at(=0x1), and falls through when a3(unknown) != at(=0x1).
  The `beq` branch at 0x2e2f390 targets 0x2e2f3e0, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `blez` branch at 0x2e2f398 targets 0x2e2f3e0, is taken when a3(unknown) <= 0 (signed), and falls through when a3(unknown) > 0 (signed).
  The `beq` branch at 0x2e2f3b8 targets 0x2e2f3e0, is taken when a2(unknown) >= a3(unknown) (signed), and falls through when a2(unknown) < a3(unknown) (signed).
  The `bne` branch at 0x2e2f3d8 targets 0x2e2f3a0, is taken when a2(unknown) < a3(unknown) (signed), and falls through when a2(unknown) >= a3(unknown) (signed).
  The `beq` branch at 0x2e2f3e0 targets 0x2e2f474, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `blez` branch at 0x2e2f3e8 targets 0x2e2f474, is taken when a3(unknown) <= 0 (signed), and falls through when a3(unknown) > 0 (signed).
  The `beq` branch at 0x2e2f408 targets 0x2e2f474, is taken when a2(unknown) >= a1(unknown) (signed), and falls through when a2(unknown) < a1(unknown) (signed).
  The `beq` branch at 0x2e2f428 targets 0x2e2f474, is taken when a2(unknown) >= a3(unknown) (signed), and falls through when a2(unknown) < a3(unknown) (signed).
  The `beq` branch at 0x2e2f448 targets 0x2e2f474, is taken when a2(unknown) >= a4(unknown) (signed), and falls through when a2(unknown) < a4(unknown) (signed).
  The `bne` branch at 0x2e2f46c targets 0x2e2f3f0, is taken when a2(unknown) < a5(unknown) (signed), and falls through when a2(unknown) >= a5(unknown) (signed).
  The `beq` branch at 0x2e2f484 targets 0x2e2f4a8, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `bne` branch at 0x2e2f498 targets 0x2e2f4ac, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0x2e2f4a8 targets 0x2e2f474, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The return at 0x2e2f47c has v0 = unknown.
  The return at 0x2e2f4bc has v0 = ret(__glColorTableModifiers).
- `__glInitColorTables` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fc70 (n64).
  It occupies 236 bytes.
  The `sw` at 0x2e2fc74 stores 4 bytes to a0 (arg0 at entry) +0x1a48 (value 0x1908).
  The `sw` at 0x2e2fc7c stores 4 bytes to a0 (arg0 at entry) +0x1a38 (value 0x80bd).
  The `sw` at 0x2e2fc80 stores 4 bytes to a0 (arg0 at entry) +0x19f0 (value 0x1908).
  The `sw` at 0x2e2fc88 stores 4 bytes to a0 (arg0 at entry) +0x19e0 (value 0x80bc).
  The `sw` at 0x2e2fc8c stores 4 bytes to a0 (arg0 at entry) +0x1998 (value 0x1908).
  The `sw` at 0x2e2fc94 stores 4 bytes to a0 (arg0 at entry) +0x1988 (value 0x80d5).
  The `sw` at 0x2e2fc98 stores 4 bytes to a0 (arg0 at entry) +0x1940 (value 0x1908).
  The `sw` at 0x2e2fca0 stores 4 bytes to a0 (arg0 at entry) +0x1930 (value 0x80d2).
  The `sw` at 0x2e2fca4 stores 4 bytes to a0 (arg0 at entry) +0x18e8 (value 0x1908).
  The `sw` at 0x2e2fcac stores 4 bytes to a0 (arg0 at entry) +0x18d8 (value 0x80d4).
  The `sw` at 0x2e2fcb0 stores 4 bytes to a0 (arg0 at entry) +0x1890 (value 0x1908).
  The `sw` at 0x2e2fcb8 stores 4 bytes to a0 (arg0 at entry) +0x1880 (value 0x80d1).
  The `sw` at 0x2e2fcbc stores 4 bytes to a0 (arg0 at entry) +0x1838 (value 0x1908).
  The `sw` at 0x2e2fcc4 stores 4 bytes to a0 (arg0 at entry) +0x1828 (value 0x80d3).
  The `sw` at 0x2e2fcc8 stores 4 bytes to a0 (arg0 at entry) +0x17e0 (value 0x1908).
  The `sw` at 0x2e2fcd4 stores 4 bytes to a0 (arg0 at entry) +0x17d0 (value 0x80d0).
  The `swc1` at 0x2e2fcd8 stores 4 bytes to a0 (arg0 at entry) +0x1a74 (value [a0+3884]).
  The `swc1` at 0x2e2fcdc stores 4 bytes to a0 (arg0 at entry) +0x1a70 (value [a0+3884]).
  The `swc1` at 0x2e2fce0 stores 4 bytes to a0 (arg0 at entry) +0x1a6c (value [a0+3884]).
  The `swc1` at 0x2e2fce4 stores 4 bytes to a0 (arg0 at entry) +0x1a68 (value [a0+3884]).
  The `swc1` at 0x2e2fce8 stores 4 bytes to a0 (arg0 at entry) +0x1a1c (value [a0+3884]).
  The `swc1` at 0x2e2fcec stores 4 bytes to a0 (arg0 at entry) +0x1a18 (value [a0+3884]).
  The `swc1` at 0x2e2fcf0 stores 4 bytes to a0 (arg0 at entry) +0x1a14 (value [a0+3884]).
  The `swc1` at 0x2e2fcf4 stores 4 bytes to a0 (arg0 at entry) +0x1a10 (value [a0+3884]).
  The `swc1` at 0x2e2fcf8 stores 4 bytes to a0 (arg0 at entry) +0x19c4 (value [a0+3884]).
  The `swc1` at 0x2e2fcfc stores 4 bytes to a0 (arg0 at entry) +0x19c0 (value [a0+3884]).
  The `swc1` at 0x2e2fd00 stores 4 bytes to a0 (arg0 at entry) +0x19bc (value [a0+3884]).
  The `swc1` at 0x2e2fd04 stores 4 bytes to a0 (arg0 at entry) +0x19b8 (value [a0+3884]).
  The `swc1` at 0x2e2fd08 stores 4 bytes to a0 (arg0 at entry) +0x196c (value [a0+3884]).
  The `swc1` at 0x2e2fd0c stores 4 bytes to a0 (arg0 at entry) +0x1968 (value [a0+3884]).
  The `swc1` at 0x2e2fd10 stores 4 bytes to a0 (arg0 at entry) +0x1964 (value [a0+3884]).
  The `swc1` at 0x2e2fd14 stores 4 bytes to a0 (arg0 at entry) +0x1960 (value [a0+3884]).
  The `swc1` at 0x2e2fd18 stores 4 bytes to a0 (arg0 at entry) +0x1914 (value [a0+3884]).
  The `swc1` at 0x2e2fd1c stores 4 bytes to a0 (arg0 at entry) +0x1910 (value [a0+3884]).
  The `swc1` at 0x2e2fd20 stores 4 bytes to a0 (arg0 at entry) +0x190c (value [a0+3884]).
  The `swc1` at 0x2e2fd24 stores 4 bytes to a0 (arg0 at entry) +0x1908 (value [a0+3884]).
  The `swc1` at 0x2e2fd28 stores 4 bytes to a0 (arg0 at entry) +0x18bc (value [a0+3884]).
  The `swc1` at 0x2e2fd2c stores 4 bytes to a0 (arg0 at entry) +0x18b8 (value [a0+3884]).
  The `swc1` at 0x2e2fd30 stores 4 bytes to a0 (arg0 at entry) +0x18b4 (value [a0+3884]).
  The `swc1` at 0x2e2fd34 stores 4 bytes to a0 (arg0 at entry) +0x18b0 (value [a0+3884]).
  The `swc1` at 0x2e2fd38 stores 4 bytes to a0 (arg0 at entry) +0x1864 (value [a0+3884]).
  The `swc1` at 0x2e2fd3c stores 4 bytes to a0 (arg0 at entry) +0x1860 (value [a0+3884]).
  The `swc1` at 0x2e2fd40 stores 4 bytes to a0 (arg0 at entry) +0x185c (value [a0+3884]).
  The `swc1` at 0x2e2fd44 stores 4 bytes to a0 (arg0 at entry) +0x1858 (value [a0+3884]).
  The `swc1` at 0x2e2fd48 stores 4 bytes to a0 (arg0 at entry) +0x180c (value [a0+3884]).
  The `swc1` at 0x2e2fd4c stores 4 bytes to a0 (arg0 at entry) +0x1808 (value [a0+3884]).
  The `swc1` at 0x2e2fd50 stores 4 bytes to a0 (arg0 at entry) +0x1804 (value [a0+3884]).
  The `swc1` at 0x2e2fd58 stores 4 bytes to a0 (arg0 at entry) +0x1800 (value [a0+3884]).
  The return at 0x2e2fd54 has v0 = 0x1908.
- `__glFreeColorTables` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fd60 (n64).
  It occupies 116 bytes.
  The `jalr` at 0x2e2fd88 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+6104]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e2fd98 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+6280]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2fda8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+6456]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e2fdb8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+6632]:8, a2=unknown, a3=unknown.
  The return at 0x2e2fdcc has v0 = ret(unknown).
- `__glCopyColorTableScaleBias` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fde0 (n64).
  It occupies 516 bytes.
  The `swc1` at 0x2e2fde4 stores 4 bytes to a1 (arg1 at entry) +0x30 (value [a0+48]).
  The `swc1` at 0x2e2fdec stores 4 bytes to a1 (arg1 at entry) +0x34 (value [a0+52]).
  The `swc1` at 0x2e2fdf4 stores 4 bytes to a1 (arg1 at entry) +0x38 (value [a0+56]).
  The `swc1` at 0x2e2fdfc stores 4 bytes to a1 (arg1 at entry) +0x3c (value [a0+60]).
  The `swc1` at 0x2e2fe04 stores 4 bytes to a1 (arg1 at entry) +0x40 (value [a0+64]).
  The `swc1` at 0x2e2fe0c stores 4 bytes to a1 (arg1 at entry) +0x44 (value [a0+68]).
  The `swc1` at 0x2e2fe14 stores 4 bytes to a1 (arg1 at entry) +0x48 (value [a0+72]).
  The `swc1` at 0x2e2fe1c stores 4 bytes to a1 (arg1 at entry) +0x4c (value [a0+76]).
  The `swc1` at 0x2e2fe24 stores 4 bytes to a1 (arg1 at entry) +0x88 (value [a0+136]).
  The `swc1` at 0x2e2fe2c stores 4 bytes to a1 (arg1 at entry) +0x8c (value [a0+140]).
  The `swc1` at 0x2e2fe34 stores 4 bytes to a1 (arg1 at entry) +0x90 (value [a0+144]).
  The `swc1` at 0x2e2fe3c stores 4 bytes to a1 (arg1 at entry) +0x94 (value [a0+148]).
  The `swc1` at 0x2e2fe44 stores 4 bytes to a1 (arg1 at entry) +0x98 (value [a0+152]).
  The `swc1` at 0x2e2fe4c stores 4 bytes to a1 (arg1 at entry) +0x9c (value [a0+156]).
  The `swc1` at 0x2e2fe54 stores 4 bytes to a1 (arg1 at entry) +0xa0 (value [a0+160]).
  The `swc1` at 0x2e2fe5c stores 4 bytes to a1 (arg1 at entry) +0xa4 (value [a0+164]).
  The `swc1` at 0x2e2fe64 stores 4 bytes to a1 (arg1 at entry) +0xe0 (value [a0+224]).
  The `swc1` at 0x2e2fe6c stores 4 bytes to a1 (arg1 at entry) +0xe4 (value [a0+228]).
  The `swc1` at 0x2e2fe74 stores 4 bytes to a1 (arg1 at entry) +0xe8 (value [a0+232]).
  The `swc1` at 0x2e2fe7c stores 4 bytes to a1 (arg1 at entry) +0xec (value [a0+236]).
  The `swc1` at 0x2e2fe84 stores 4 bytes to a1 (arg1 at entry) +0xf0 (value [a0+240]).
  The `swc1` at 0x2e2fe8c stores 4 bytes to a1 (arg1 at entry) +0xf4 (value [a0+244]).
  The `swc1` at 0x2e2fe94 stores 4 bytes to a1 (arg1 at entry) +0xf8 (value [a0+248]).
  The `swc1` at 0x2e2fe9c stores 4 bytes to a1 (arg1 at entry) +0xfc (value [a0+252]).
  The `swc1` at 0x2e2fea4 stores 4 bytes to a1 (arg1 at entry) +0x138 (value [a0+312]).
  The `swc1` at 0x2e2feac stores 4 bytes to a1 (arg1 at entry) +0x13c (value [a0+316]).
  The `swc1` at 0x2e2feb4 stores 4 bytes to a1 (arg1 at entry) +0x140 (value [a0+320]).
  The `swc1` at 0x2e2febc stores 4 bytes to a1 (arg1 at entry) +0x144 (value [a0+324]).
  The `swc1` at 0x2e2fec4 stores 4 bytes to a1 (arg1 at entry) +0x148 (value [a0+328]).
  The `swc1` at 0x2e2fecc stores 4 bytes to a1 (arg1 at entry) +0x14c (value [a0+332]).
  The `swc1` at 0x2e2fed4 stores 4 bytes to a1 (arg1 at entry) +0x150 (value [a0+336]).
  The `swc1` at 0x2e2fedc stores 4 bytes to a1 (arg1 at entry) +0x154 (value [a0+340]).
  The `swc1` at 0x2e2fee4 stores 4 bytes to a1 (arg1 at entry) +0x190 (value [a0+400]).
  The `swc1` at 0x2e2feec stores 4 bytes to a1 (arg1 at entry) +0x194 (value [a0+404]).
  The `swc1` at 0x2e2fef4 stores 4 bytes to a1 (arg1 at entry) +0x198 (value [a0+408]).
  The `swc1` at 0x2e2fefc stores 4 bytes to a1 (arg1 at entry) +0x19c (value [a0+412]).
  The `swc1` at 0x2e2ff04 stores 4 bytes to a1 (arg1 at entry) +0x1a0 (value [a0+416]).
  The `swc1` at 0x2e2ff0c stores 4 bytes to a1 (arg1 at entry) +0x1a4 (value [a0+420]).
  The `swc1` at 0x2e2ff14 stores 4 bytes to a1 (arg1 at entry) +0x1a8 (value [a0+424]).
  The `swc1` at 0x2e2ff1c stores 4 bytes to a1 (arg1 at entry) +0x1ac (value [a0+428]).
  The `swc1` at 0x2e2ff24 stores 4 bytes to a1 (arg1 at entry) +0x1e8 (value [a0+488]).
  The `swc1` at 0x2e2ff2c stores 4 bytes to a1 (arg1 at entry) +0x1ec (value [a0+492]).
  The `swc1` at 0x2e2ff34 stores 4 bytes to a1 (arg1 at entry) +0x1f0 (value [a0+496]).
  The `swc1` at 0x2e2ff3c stores 4 bytes to a1 (arg1 at entry) +0x1f4 (value [a0+500]).
  The `swc1` at 0x2e2ff44 stores 4 bytes to a1 (arg1 at entry) +0x1f8 (value [a0+504]).
  The `swc1` at 0x2e2ff4c stores 4 bytes to a1 (arg1 at entry) +0x1fc (value [a0+508]).
  The `swc1` at 0x2e2ff54 stores 4 bytes to a1 (arg1 at entry) +0x200 (value [a0+512]).
  The `swc1` at 0x2e2ff5c stores 4 bytes to a1 (arg1 at entry) +0x204 (value [a0+516]).
  The `swc1` at 0x2e2ff64 stores 4 bytes to a1 (arg1 at entry) +0x240 (value [a0+576]).
  The `swc1` at 0x2e2ff6c stores 4 bytes to a1 (arg1 at entry) +0x244 (value [a0+580]).
  The `swc1` at 0x2e2ff74 stores 4 bytes to a1 (arg1 at entry) +0x248 (value [a0+584]).
  The `swc1` at 0x2e2ff7c stores 4 bytes to a1 (arg1 at entry) +0x24c (value [a0+588]).
  The `swc1` at 0x2e2ff84 stores 4 bytes to a1 (arg1 at entry) +0x250 (value [a0+592]).
  The `swc1` at 0x2e2ff8c stores 4 bytes to a1 (arg1 at entry) +0x254 (value [a0+596]).
  The `swc1` at 0x2e2ff94 stores 4 bytes to a1 (arg1 at entry) +0x258 (value [a0+600]).
  The `swc1` at 0x2e2ff9c stores 4 bytes to a1 (arg1 at entry) +0x25c (value [a0+604]).
  The `swc1` at 0x2e2ffa4 stores 4 bytes to a1 (arg1 at entry) +0x298 (value [a0+664]).
  The `swc1` at 0x2e2ffac stores 4 bytes to a1 (arg1 at entry) +0x29c (value [a0+668]).
  The `swc1` at 0x2e2ffb4 stores 4 bytes to a1 (arg1 at entry) +0x2a0 (value [a0+672]).
  The `swc1` at 0x2e2ffbc stores 4 bytes to a1 (arg1 at entry) +0x2a4 (value [a0+676]).
  The `swc1` at 0x2e2ffc4 stores 4 bytes to a1 (arg1 at entry) +0x2a8 (value [a0+680]).
  The `swc1` at 0x2e2ffcc stores 4 bytes to a1 (arg1 at entry) +0x2ac (value [a0+684]).
  The `swc1` at 0x2e2ffd4 stores 4 bytes to a1 (arg1 at entry) +0x2b0 (value [a0+688]).
  The `swc1` at 0x2e2ffe0 stores 4 bytes to a1 (arg1 at entry) +0x2b4 (value [a0+692]).
  The return at 0x2e2ffdc has v0 = unknown.
- `__glDispatchExec` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fff0 (n64).
  It occupies 8 bytes.
  The return at 0x2e2fff0 has v0 = a0+10656.
- `__glBeginDispatchOverride` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e30000 (n64).
  It occupies 260 bytes.
  The `sd` at 0x2e30100 stores 8 bytes to a0 (arg0 at entry) +0x1ad8 (value a0+10656).
  The `bne` branch at 0x2e30038 targets 0x2e30020, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bgtz` branch at 0x2e300e0 targets 0x2e30040, is taken when a2(unknown) > 0 (signed), and falls through when a2(unknown) <= 0 (signed).
  The `beq` branch at 0x2e300ec targets 0x2e300fc, is taken when a2(=[a0+5440]) == 0, and falls through when a2(=[a0+5440]) != 0.
  The return at 0x2e300f4 has v0 = unknown.
  The return at 0x2e300fc has v0 = unknown.
- `__glEndDispatchOverride` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e30110 (n64).
  It occupies 28 bytes.
  The `sd` at 0x2e30128 stores 8 bytes to a0 (arg0 at entry) +0x1ad8 (value 0x1090).
  The `beq` branch at 0x2e30114 targets 0x2e30124, is taken when at(=[a0+5440]) == 0, and falls through when at(=[a0+5440]) != 0.
  The return at 0x2e3011c has v0 = 0x1090.
  The return at 0x2e30124 has v0 = 0x1090.
- `__glDestroySoftContext` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e312d0 (n64).
  It occupies 552 bytes.
  The `sd` at 0x2e312e4 stores 8 bytes to abs 0x1020 (value a0).
  The `jalr` at 0x2e31314 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+39424]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e31320 calls `__glFreeColorTables` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3132c calls `__glFreeEvaluatorState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e31338 calls `__glFreePixelState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e3137c calls `__glFreeSpecLUT` with a0=a0 at entry (arg0), a1=[a0+36152]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e31390 calls `__glFreeSpecLUT` with a0=a0 at entry (arg0), a1=[a0+36208]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e313b4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+1840]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e313cc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+36104]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e313e4 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+5264]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e313fc calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+2008]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e31414 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+38072]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e3142c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+38088]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e31444 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+38112]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e3145c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+38128]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e31474 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+38144]:8, a2=unknown, a3=unknown.
  The `jalr` at 0x2e314a8 calls `__glFreeAsyncState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e314b8 calls `__glFreeDlistState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e314c8 calls `__glFreeAttributeState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e314d8 calls `__glFreeTextureState` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e314e8 calls `__glFreeLUTCache` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e31308 targets 0x2e3131c, is taken when a1(=[a0+39424]:8) == 0, and falls through when a1(=[a0+39424]:8) != 0.
  The `bne` branch at 0x2e31344 targets 0x2e314a8, is taken when t9(=[a0+6864]:8) != 0, and falls through when t9(=[a0+6864]:8) == 0.
  The `bne` branch at 0x2e31350 targets 0x2e314b8, is taken when ra(=[a0+5320]:8) != 0, and falls through when ra(=[a0+5320]:8) == 0.
  The `bne` branch at 0x2e3135c targets 0x2e314c8, is taken when at(=[a0+20008]:8) != 0, and falls through when at(=[a0+20008]:8) == 0.
  The `bne` branch at 0x2e31368 targets 0x2e314d8, is taken when v0(=[a0+36256]:8) != 0, and falls through when v0(=[a0+36256]:8) == 0.
  The `beq` branch at 0x2e31374 targets 0x2e31384, is taken when a1(=[a0+36152]:8) == 0, and falls through when a1(=[a0+36152]:8) != 0.
  The `beq` branch at 0x2e31388 targets 0x2e31398, is taken when a1(=[a0+36208]:8) == 0, and falls through when a1(=[a0+36208]:8) != 0.
  The `bne` branch at 0x2e3139c targets 0x2e314e8, is taken when v1(=[a0+36248]:8) != 0, and falls through when v1(=[a0+36248]:8) == 0.
  The `beq` branch at 0x2e313a8 targets 0x2e313bc, is taken when a1(=[a0+1840]:8) == 0, and falls through when a1(=[a0+1840]:8) != 0.
  The `beq` branch at 0x2e313c0 targets 0x2e313d4, is taken when a1(=[a0+36104]:8) == 0, and falls through when a1(=[a0+36104]:8) != 0.
  The `beq` branch at 0x2e313d8 targets 0x2e313ec, is taken when a1(=[a0+5264]:8) == 0, and falls through when a1(=[a0+5264]:8) != 0.
  The `beq` branch at 0x2e313f0 targets 0x2e31404, is taken when a1(=[a0+2008]:8) == 0, and falls through when a1(=[a0+2008]:8) != 0.
  The `beq` branch at 0x2e31408 targets 0x2e3141c, is taken when a1(=[a0+38072]:8) == 0, and falls through when a1(=[a0+38072]:8) != 0.
  The `beq` branch at 0x2e31420 targets 0x2e31434, is taken when a1(=[a0+38088]:8) == 0, and falls through when a1(=[a0+38088]:8) != 0.
  The `beq` branch at 0x2e31438 targets 0x2e3144c, is taken when a1(=[a0+38112]:8) == 0, and falls through when a1(=[a0+38112]:8) != 0.
  The `beq` branch at 0x2e31450 targets 0x2e31464, is taken when a1(=[a0+38128]:8) == 0, and falls through when a1(=[a0+38128]:8) != 0.
  The `beq` branch at 0x2e31468 targets 0x2e31480, is taken when a1(=[a0+38144]:8) == 0, and falls through when a1(=[a0+38144]:8) != 0.
  The return at 0x2e314a0 has v0 = unknown.
- `__glFreePrivate` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31500 (n64).
  It occupies 208 bytes.
  The `sd` at 0x2e315a8 stores 8 bytes to a0 (arg0 at entry) +0x30 (value 0x0).
  The `sd` at 0x2e315ac stores 8 bytes to a0 (arg0 at entry) +0x38 (value 0x0).
  The `jalr` at 0x2e31538 calls `(unknown callee)` with a0=[a0+56]:8+8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e3154c calls `(unknown callee)` with a0=[a0+56]:8+40, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31560 calls `(unknown callee)` with a0=[a0+56]:8+176, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31574 calls `(unknown callee)` with a0=[a0+56]:8+112, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31588 calls `(unknown callee)` with a0=[a0+56]:8+80, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31594 calls `(unknown callee)` with a0=[a0+56]:8, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e31520 targets 0x2e315bc, is taken when s0(=[a0+56]:8) == 0, and falls through when s0(=[a0+56]:8) != 0.
  The `beq` branch at 0x2e3152c targets 0x2e31540, is taken when t9(=[[a0+56]:8+32]:8) == 0, and falls through when t9(=[[a0+56]:8+32]:8) != 0.
  The `beq` branch at 0x2e31544 targets 0x2e31554, is taken when t9(=[[a0+56]:8+64]:8) == 0, and falls through when t9(=[[a0+56]:8+64]:8) != 0.
  The `beq` branch at 0x2e31558 targets 0x2e31568, is taken when t9(=[[a0+56]:8+200]:8) == 0, and falls through when t9(=[[a0+56]:8+200]:8) != 0.
  The `beq` branch at 0x2e3156c targets 0x2e3157c, is taken when t9(=[[a0+56]:8+136]:8) == 0, and falls through when t9(=[[a0+56]:8+136]:8) != 0.
  The `beq` branch at 0x2e31580 targets 0x2e31590, is taken when t9(=[[a0+56]:8+104]:8) == 0, and falls through when t9(=[[a0+56]:8+104]:8) != 0.
  The return at 0x2e315b4 has v0 = ret(unknown).
  The return at 0x2e315c8 has v0 = unknown.
- `FillBufferInfo` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31a50 (n64).
  It occupies 80 bytes.
  The `sd` at 0x2e31a78 stores 8 bytes to ret(unknown) +0x68 (value 0x2e2ad60).
  The `sd` at 0x2e31a7c stores 8 bytes to ret(unknown) +0x88 (value 0x2e2ad60).
  The `sd` at 0x2e31a80 stores 8 bytes to ret(unknown) +0xc8 (value 0x2e2ad60).
  The `sd` at 0x2e31a84 stores 8 bytes to ret(unknown) +0x40 (value 0x2e2ad60).
  The `sd` at 0x2e31a8c stores 8 bytes to ret(unknown) +0x20 (value 0x2e2ad60).
  The `sd` at 0x2e31a90 stores 8 bytes to a1 (arg1 at entry) +0x30 (value 0x2e31500).
  The `jalr` at 0x2e31a68 calls `(unknown callee)` with a0=0x1, a1=0xd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e31a98 has v0 = ret(unknown).
- `__glMakeCurrentBuffers` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31aa0 (n64).
  It occupies 368 bytes.
  The `sd` at 0x2e31ae0 stores 8 bytes to a0 (arg0 at entry) +0x9ea0 (value ret(unknown)).
  The `sw` at 0x2e31b04 stores 4 bytes to a1 (arg1 at entry) +0x0 (value [[ret(unknown)+56]:8+72]).
  The `sw` at 0x2e31b0c stores 4 bytes to a0 (arg0 at entry) +0xfd8 (value [[ret(unknown)+56]:8]).
  The `sw` at 0x2e31b14 stores 4 bytes to a0 (arg0 at entry) +0xfdc (value [[ret(unknown)+56]:8+4]).
  The `sd` at 0x2e31bf4 stores 8 bytes to ret(unknown) +0x38 (value ret(FillBufferInfo)).
  The `sw` at 0x2e31bf8 stores 4 bytes to a0 (arg0 at entry) +0xfdc (value 0x0).
  The `sw` at 0x2e31c04 stores 4 bytes to a0 (arg0 at entry) +0xfd8 (value 0x0).
  The `jalr` at 0x2e31ad0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e31b28 calls `(unknown callee)` with a0=a0+39288, a1=[ret(unknown)+56]:8+8, a2=a0 at entry (arg0), a3=[[ret(unknown)+56]:8+72].
  The `jalr` at 0x2e31b4c calls `(unknown callee)` with a0=a0+39624, a1=[ret(unknown)+56]:8+40, a2=a0 at entry (arg0), a3=unknown, a4=[a0+3558]:1.
  The `jalr` at 0x2e31b74 calls `(unknown callee)` with a0=a0+40392, a1=[ret(unknown)+56]:8+176, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x2e31b98 calls `(unknown callee)` with a0=a0+40184, a1=[ret(unknown)+56]:8+112, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0x2e31bbc calls `(unknown callee)` with a0=a0+39968, a1=[ret(unknown)+56]:8+80, a2=a0 at entry (arg0), a3=unknown.
  The `bgezall` at 0x2e31bec calls `FillBufferInfo` with a0=a0 at entry (arg0), a1=ret(unknown), a2=unknown, a3=unknown.
  The `beq` branch at 0x2e31aec targets 0x2e31be4, is taken when v0(=[ret(unknown)+56]:8) == 0, and falls through when v0(=[ret(unknown)+56]:8) != 0.
  The `beq` branch at 0x2e31b34 targets 0x2e31b54, is taken when a4(=[a0+3558]:1) == 0, and falls through when a4(=[a0+3558]:1) != 0.
  The `beq` branch at 0x2e31b5c targets 0x2e31b7c, is taken when a1(=[a0+3560]:1) == 0, and falls through when a1(=[a0+3560]:1) != 0.
  The `beq` branch at 0x2e31b80 targets 0x2e31ba0, is taken when a1(=[a0+3561]:1) == 0, and falls through when a1(=[a0+3561]:1) != 0.
  The `beq` branch at 0x2e31ba4 targets 0x2e31bc4, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The return at 0x2e31bdc has v0 = unknown.
- `__glLoseCurrentBuffers` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31c10 (n64).
  It occupies 248 bytes.
  The `sw` at 0x2e31c2c stores 4 bytes to [[a0+40608]:8+56]:8 +0x48 (value a1).
  The `sw` at 0x2e31c34 stores 4 bytes to [[a0+40608]:8+56]:8 +0x0 (value [a0+4056]).
  The `sw` at 0x2e31c44 stores 4 bytes to [[a0+40608]:8+56]:8 +0x4 (value [a0+4060]).
  The `jalr` at 0x2e31c64 calls `(unknown callee)` with a0=a0+39288, a1=a0 at entry (arg0), a2=[[a0+40608]:8+56]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x2e31c84 calls `(unknown callee)` with a0=a0+39624, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31ca4 calls `(unknown callee)` with a0=a0+40392, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31cc4 calls `(unknown callee)` with a0=a0+40184, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31ce4 calls `(unknown callee)` with a0=a0+39968, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0x2e31c70 targets 0x2e31c8c, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x2e31c90 targets 0x2e31cac, is taken when a1(=[a0+3560]:1) == 0, and falls through when a1(=[a0+3560]:1) != 0.
  The `beq` branch at 0x2e31cb0 targets 0x2e31ccc, is taken when a1(=[a0+3561]:1) == 0, and falls through when a1(=[a0+3561]:1) != 0.
  The `beq` branch at 0x2e31cd0 targets 0x2e31cf0, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The return at 0x2e31d00 has v0 = 0x1.
- `__glFreeBufData` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31d10 (n64).
  It occupies 208 bytes.
  The `jalr` at 0x2e31d50 calls `(unknown callee)` with a0=a0+39288, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[a0+39392]:8.
  The `jalr` at 0x2e31d74 calls `(unknown callee)` with a0=a0+39968, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31d8c calls `(unknown callee)` with a0=a0+40184, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31da4 calls `(unknown callee)` with a0=a0+40392, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0x2e31dd0 calls `(unknown callee)` with a0=a0+39624, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `beq` branch at 0x2e31d3c targets 0x2e31d58, is taken when a3(=[a0+39392]:8) == 0, and falls through when a3(=[a0+39392]:8) != 0.
  The `bne` branch at 0x2e31d5c targets 0x2e31dc4, is taken when a1(=[a0+39728]:8) != 0, and falls through when a1(=[a0+39728]:8) == 0.
  The `beq` branch at 0x2e31d68 targets 0x2e31d7c, is taken when t9(=[a0+40072]:8) == 0, and falls through when t9(=[a0+40072]:8) != 0.
  The `beq` branch at 0x2e31d80 targets 0x2e31d94, is taken when t9(=[a0+40288]:8) == 0, and falls through when t9(=[a0+40288]:8) != 0.
  The `beq` branch at 0x2e31d98 targets 0x2e31dac, is taken when t9(=[a0+40496]:8) == 0, and falls through when t9(=[a0+40496]:8) != 0.
  The return at 0x2e31dbc has v0 = unknown.
- `__glCheckConvolutionFilterArgs` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31de0 (n64).
  It occupies 2104 bytes.
  The `sw` at 0x2e31f28 stores 4 bytes to a5 (arg5 at entry) +0x0 (value 0x1906).
  The `sw` at 0x2e31f44 stores 4 bytes to a5 (arg5 at entry) +0x0 (value 0x190a).
  The `sw` at 0x2e32150 stores 4 bytes to a5 (arg5 at entry) +0x0 (value 0x1908).
  The `sw` at 0x2e32190 stores 4 bytes to a5 (arg5 at entry) +0x0 (value 0x8049).
  The `sw` at 0x2e321ec stores 4 bytes to a5 (arg5 at entry) +0x0 (value 0x1907).
  The `sw` at 0x2e32368 stores 4 bytes to a5 (arg5 at entry) +0x0 (value 0x1909).
  The `bgezall` at 0x2e31fec calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x1907, a7=0x80e0.
  The `bgezall` at 0x2e3204c calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32090 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32118 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32228 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e3224c calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e3228c calls `__glSetError` with a0=0x501, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e322a4 calls `__glSetError` with a0=0x501, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32378 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32398 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x2e31df4 targets 0x2e32394, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x2e31dfc targets 0x2e32394, is taken when a3 < 0 (signed), and falls through when a3 >= 0 (signed).
  The `bne` branch at 0x2e31e04 targets 0x2e31e50, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `bne` branch at 0x2e31e10 targets 0x2e31e8c, is taken when a4 < 0x1909 (unsigned), and falls through when a4 >= 0x1909 (unsigned).
  The `bne` branch at 0x2e31e1c targets 0x2e32154, is taken when a4 < v0(=0x8000) (unsigned), and falls through when a4 >= v0(=0x8000) (unsigned).
  The `beq` branch at 0x2e31e28 targets 0x2e31e8c, is taken when v0(=0x8000) >= a4 (unsigned), and falls through when v0(=0x8000) < a4 (unsigned).
  The `bne` branch at 0x2e31e34 targets 0x2e323e0, is taken when a4 < v0(=0x80e1) (unsigned), and falls through when a4 >= v0(=0x80e1) (unsigned).
  The `beq` branch at 0x2e31e40 targets 0x2e31e8c, is taken when v0(=0x80e1) >= a4 (unsigned), and falls through when v0(=0x80e1) < a4 (unsigned).
  The `bne` branch at 0x2e31e50 targets 0x2e31e7c, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e31e5c targets 0x2e31e8c, is taken when a4 < 0x1906 (unsigned), and falls through when a4 >= 0x1906 (unsigned).
  The `bne` branch at 0x2e31e64 targets 0x2e322d0, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `bne` branch at 0x2e31e6c targets 0x2e31e8c, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `bne` branch at 0x2e31e7c targets 0x2e32110, is taken when t8(unknown) != 0, and falls through when t8(unknown) == 0.
  The `beq` branch at 0x2e31e84 targets 0x2e32118, is taken when t1(unknown) == 0, and falls through when t1(unknown) != 0.
  The `bne` branch at 0x2e31e98 targets 0x2e31f04, is taken when v0(=[a5]) < t1(=0x8048) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8048) (unsigned).
  The `beq` branch at 0x2e31ea0 targets 0x2e31f44, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `bne` branch at 0x2e31eb0 targets 0x2e32170, is taken when v0(=[a5]) < t1(=0x8052) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8052) (unsigned).
  The `beq` branch at 0x2e31eb8 targets 0x2e321e8, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `bne` branch at 0x2e31ec8 targets 0x2e323b4, is taken when v0(=[a5]) < t1(=0x8057) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8057) (unsigned).
  The `beq` branch at 0x2e31ed0 targets 0x2e3214c, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `bne` branch at 0x2e31ee0 targets 0x2e325b4, is taken when v0(=[a5]) < t1(=0x805a) (unsigned), and falls through when v0(=[a5]) >= t1(=0x805a) (unsigned).
  The `beq` branch at 0x2e31ee8 targets 0x2e3214c, is taken when t3(unknown) == 0, and falls through when t3(unknown) != 0.
  The `beq` branch at 0x2e31ef4 targets 0x2e3214c, is taken when v0(=[a5]) == t8(=0x805b), and falls through when v0(=[a5]) != t8(=0x805b).
  The `bne` branch at 0x2e31f0c targets 0x2e31f2c, is taken when v0(=[a5]) < t1(=0x803e) (unsigned), and falls through when v0(=[a5]) >= t1(=0x803e) (unsigned).
  The `bne` branch at 0x2e31f18 targets 0x2e32194, is taken when t1(=0x803e) < v0(=[a5]) (unsigned), and falls through when t1(=0x803e) >= v0(=[a5]) (unsigned).
  The `bne` branch at 0x2e31f2c targets 0x2e32134, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `beq` branch at 0x2e31f38 targets 0x2e322e0, is taken when v0(=[a5]) >= 0x190b (unsigned), and falls through when v0(=[a5]) < 0x190b (unsigned).
  The `bne` branch at 0x2e31f50 targets 0x2e31fa4, is taken when a6 < v0(=0x8034) (unsigned), and falls through when a6 >= v0(=0x8034) (unsigned).
  The `beq` branch at 0x2e31f5c targets 0x2e32028, is taken when v0(=0x8034) >= a6 (unsigned), and falls through when v0(=0x8034) < a6 (unsigned).
  The `bne` branch at 0x2e31f6c targets 0x2e321f0, is taken when a6 < v0(=0x8364) (unsigned), and falls through when a6 >= v0(=0x8364) (unsigned).
  The `beq` branch at 0x2e31f74 targets 0x2e31fd0, is taken when t3(unknown) == 0, and falls through when t3(unknown) != 0.
  The `bne` branch at 0x2e31f80 targets 0x2e32480, is taken when a6 < v0(=0x8367) (unsigned), and falls through when a6 >= v0(=0x8367) (unsigned).
  The `beq` branch at 0x2e31f88 targets 0x2e32028, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `beq` branch at 0x2e31f94 targets 0x2e32028, is taken when a6 == ra(=0x8368), and falls through when a6 != ra(=0x8368).
  The `bne` branch at 0x2e31fa4 targets 0x2e320e8, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e31fb0 targets 0x2e32078, is taken when a6 < 0x1405 (unsigned), and falls through when a6 >= 0x1405 (unsigned).
  The `bne` branch at 0x2e31fc0 targets 0x2e3233c, is taken when a6 < v0(=0x8032) (unsigned), and falls through when a6 >= v0(=0x8032) (unsigned).
  The `bne` branch at 0x2e31fc8 targets 0x2e324b4, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `beq` branch at 0x2e31fd4 targets 0x2e32078, is taken when a4 == a6(=0x1907), and falls through when a4 != a6(=0x1907).
  The `beq` branch at 0x2e31fe0 targets 0x2e32078, is taken when a4 == a7(=0x80e0), and falls through when a4 != a7(=0x80e0).
  The `bne` branch at 0x2e32010 targets 0x2e324a4, is taken when a6 < v0(=0x8036) (unsigned), and falls through when a6 >= v0(=0x8036) (unsigned).
  The `bne` branch at 0x2e3201c targets 0x2e3224c, is taken when v0(=0x8036) < a6 (unsigned), and falls through when v0(=0x8036) >= a6 (unsigned).
  The `beq` branch at 0x2e32028 targets 0x2e32078, is taken when a4 == t2(=0x1908), and falls through when a4 != t2(=0x1908).
  The `beq` branch at 0x2e32034 targets 0x2e32078, is taken when a4 == t3(=0x8000), and falls through when a4 != t3(=0x8000).
  The `beq` branch at 0x2e32040 targets 0x2e32078, is taken when a4 == t8(=0x80e1), and falls through when a4 != t8(=0x80e1).
  The `bne` branch at 0x2e32068 targets 0x2e3223c, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `beq` branch at 0x2e32070 targets 0x2e32248, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `beq` branch at 0x2e32078 targets 0x2e32218, is taken when a1 == ra(=0x8010), and falls through when a1 != ra(=0x8010).
  The `beq` branch at 0x2e32080 targets 0x2e32268, is taken when a1 == at(=0x8011), and falls through when a1 != at(=0x8011).
  The `beq` branch at 0x2e32088 targets 0x2e320ac, is taken when a1 == v0(=0x8012), and falls through when a1 != v0(=0x8012).
  The `bne` branch at 0x2e320b4 targets 0x2e322a4, is taken when v1(=[a0+1200]) < a2 (signed), and falls through when v1(=[a0+1200]) >= a2 (signed).
  The `bne` branch at 0x2e320c4 targets 0x2e322a0, is taken when a1(=[a0+1204]) < a3 (signed), and falls through when a1(=[a0+1204]) >= a3 (signed).
  The `bne` branch at 0x2e320e8 targets 0x2e32068, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `bne` branch at 0x2e320f4 targets 0x2e32078, is taken when a6 < 0x1403 (unsigned), and falls through when a6 >= 0x1403 (unsigned).
  The `beq` branch at 0x2e32100 targets 0x2e32078, is taken when a6 == a5(=0x1403), and falls through when a6 != a5(=0x1403).
  The `beq` branch at 0x2e32110 targets 0x2e31e8c, is taken when a4 == a7(=0x1903), and falls through when a4 != a7(=0x1903).
  The `bne` branch at 0x2e32134 targets 0x2e321d4, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e32140 targets 0x2e3235c, is taken when v0(=[a5]) >= 0x1909 (unsigned), and falls through when v0(=[a5]) < 0x1909 (unsigned).
  The `bne` branch at 0x2e32154 targets 0x2e322c0, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e32160 targets 0x2e31e8c, is taken when a4 < 0x190b (unsigned), and falls through when a4 >= 0x190b (unsigned).
  The `bne` branch at 0x2e32178 targets 0x2e322fc, is taken when v0(=[a5]) < t1(=0x804d) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804d) (unsigned).
  The `bne` branch at 0x2e32180 targets 0x2e323f0, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `bne` branch at 0x2e32198 targets 0x2e3231c, is taken when v0(=[a5]) < t1(=0x8043) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8043) (unsigned).
  The `beq` branch at 0x2e321a0 targets 0x2e31f44, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e321b0 targets 0x2e32540, is taken when v0(=[a5]) < t1(=0x8046) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8046) (unsigned).
  The `beq` branch at 0x2e321b8 targets 0x2e31f44, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `beq` branch at 0x2e321c4 targets 0x2e31f44, is taken when v0(=[a5]) == t0(=0x8047), and falls through when v0(=[a5]) != t0(=0x8047).
  The `bne` branch at 0x2e321d4 targets 0x2e3236c, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `beq` branch at 0x2e321dc targets 0x2e32378, is taken when t1(unknown) == 0, and falls through when t1(unknown) != 0.
  The `bne` branch at 0x2e321f8 targets 0x2e32008, is taken when a6 < v0(=0x8362) (unsigned), and falls through when a6 >= v0(=0x8362) (unsigned).
  The `beq` branch at 0x2e32200 targets 0x2e31fd0, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `beq` branch at 0x2e32208 targets 0x2e31fd4, is taken when a6 == ra(=0x8363), and falls through when a6 != ra(=0x8363).
  The `beq` branch at 0x2e32220 targets 0x2e320c8, is taken when at(=[a0+1024]) >= a2 (signed), and falls through when at(=[a0+1024]) < a2 (signed).
  The `beq` branch at 0x2e32240 targets 0x2e32078, is taken when a6 == v0(=0x1400), and falls through when a6 != v0(=0x1400).
  The `bne` branch at 0x2e32270 targets 0x2e3228c, is taken when v1(=[a0+1112]) < a2 (signed), and falls through when v1(=[a0+1112]) >= a2 (signed).
  The `beq` branch at 0x2e32280 targets 0x2e320cc, is taken when a1(=[a0+1116]) >= a3 (signed), and falls through when a1(=[a0+1116]) < a3 (signed).
  The `beq` branch at 0x2e322c0 targets 0x2e31e8c, is taken when a4 == a7(=0x1909), and falls through when a4 != a7(=0x1909).
  The `beq` branch at 0x2e322d0 targets 0x2e31e8c, is taken when a4 == t0(=0x1906), and falls through when a4 != t0(=0x1906).
  The `bne` branch at 0x2e322e4 targets 0x2e32438, is taken when v0(=[a5]) < t1(=0x803c) (unsigned), and falls through when v0(=[a5]) >= t1(=0x803c) (unsigned).
  The `bne` branch at 0x2e322ec targets 0x2e32564, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `bne` branch at 0x2e32304 targets 0x2e32418, is taken when v0(=[a5]) < t1(=0x804b) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804b) (unsigned).
  The `bne` branch at 0x2e3230c targets 0x2e3251c, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `bne` branch at 0x2e32324 targets 0x2e3245c, is taken when v0(=[a5]) < t1(=0x8041) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8041) (unsigned).
  The `bne` branch at 0x2e3232c targets 0x2e32584, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e32340 targets 0x2e324c4, is taken when a6 < 0x1406 (unsigned), and falls through when a6 >= 0x1406 (unsigned).
  The `bne` branch at 0x2e3234c targets 0x2e32078, is taken when a6 < 0x1407 (unsigned), and falls through when a6 >= 0x1407 (unsigned).
  The `bne` branch at 0x2e3235c targets 0x2e32378, is taken when t1(=0x1909) != v0(=[a5]), and falls through when t1(=0x1909) == v0(=[a5]).
  The `beq` branch at 0x2e32370 targets 0x2e31f24, is taken when t1(=0x1906) == v0(=[a5]), and falls through when t1(=0x1906) != v0(=[a5]).
  The `bne` branch at 0x2e323bc targets 0x2e324d4, is taken when v0(=[a5]) < t1(=0x8055) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8055) (unsigned).
  The `beq` branch at 0x2e323c4 targets 0x2e3214c, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `beq` branch at 0x2e323d0 targets 0x2e3214c, is taken when v0(=[a5]) == t1(=0x8056), and falls through when v0(=[a5]) != t1(=0x8056).
  The `beq` branch at 0x2e323e0 targets 0x2e31e8c, is taken when a4 == t2(=0x80e0), and falls through when a4 != t2(=0x80e0).
  The `bne` branch at 0x2e323f4 targets 0x2e324f8, is taken when v0(=[a5]) < t1(=0x8050) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8050) (unsigned).
  The `beq` branch at 0x2e323fc targets 0x2e321e8, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `beq` branch at 0x2e32408 targets 0x2e321e8, is taken when v0(=[a5]) == t9(=0x8051), and falls through when v0(=[a5]) != t9(=0x8051).
  The `bne` branch at 0x2e32420 targets 0x2e3252c, is taken when v0(=[a5]) < t1(=0x804a) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804a) (unsigned).
  The `bne` branch at 0x2e32428 targets 0x2e32378, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e32440 targets 0x2e32574, is taken when v0(=[a5]) < t1(=0x803b) (unsigned), and falls through when v0(=[a5]) >= t1(=0x803b) (unsigned).
  The `bne` branch at 0x2e3244c targets 0x2e32378, is taken when t1(=0x803b) < v0(=[a5]) (unsigned), and falls through when t1(=0x803b) >= v0(=[a5]) (unsigned).
  The `bne` branch at 0x2e32464 targets 0x2e32594, is taken when v0(=[a5]) < t1(=0x8040) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8040) (unsigned).
  The `bne` branch at 0x2e32470 targets 0x2e32378, is taken when t1(=0x8040) < v0(=[a5]) (unsigned), and falls through when t1(=0x8040) >= v0(=[a5]) (unsigned).
  The `bne` branch at 0x2e32488 targets 0x2e325a4, is taken when a6 < v0(=0x8366) (unsigned), and falls through when a6 >= v0(=0x8366) (unsigned).
  The `beq` branch at 0x2e32494 targets 0x2e32028, is taken when v0(=0x8366) >= a6 (unsigned), and falls through when v0(=0x8366) < a6 (unsigned).
  The `beq` branch at 0x2e324a4 targets 0x2e32028, is taken when a6 == t9(=0x8035), and falls through when a6 != t9(=0x8035).
  The `beq` branch at 0x2e324b4 targets 0x2e32028, is taken when a6 == ra(=0x8033), and falls through when a6 != ra(=0x8033).
  The `beq` branch at 0x2e324c4 targets 0x2e32078, is taken when a6 == at(=0x1405), and falls through when a6 != at(=0x1405).
  The `bne` branch at 0x2e324dc targets 0x2e325d8, is taken when v0(=[a5]) < t1(=0x8054) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8054) (unsigned).
  The `beq` branch at 0x2e324e8 targets 0x2e321e8, is taken when t1(=0x8054) >= v0(=[a5]) (unsigned), and falls through when t1(=0x8054) < v0(=[a5]) (unsigned).
  The `bne` branch at 0x2e32500 targets 0x2e325e8, is taken when v0(=[a5]) < t1(=0x804f) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804f) (unsigned).
  The `beq` branch at 0x2e3250c targets 0x2e321e8, is taken when t1(=0x804f) >= v0(=[a5]) (unsigned), and falls through when t1(=0x804f) < v0(=[a5]) (unsigned).
  The `bne` branch at 0x2e3251c targets 0x2e32378, is taken when v0(=[a5]) != t3(=0x804c), and falls through when v0(=[a5]) == t3(=0x804c).
  The `beq` branch at 0x2e32530 targets 0x2e3218c, is taken when t1(=0x8049) == v0(=[a5]), and falls through when t1(=0x8049) != v0(=[a5]).
  The `bne` branch at 0x2e32548 targets 0x2e325f8, is taken when v0(=[a5]) < t1(=0x8045) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8045) (unsigned).
  The `beq` branch at 0x2e32554 targets 0x2e31f44, is taken when t1(=0x8045) >= v0(=[a5]) (unsigned), and falls through when t1(=0x8045) < v0(=[a5]) (unsigned).
  The `bne` branch at 0x2e32564 targets 0x2e32378, is taken when v0(=[a5]) != ra(=0x803d), and falls through when v0(=[a5]) == ra(=0x803d).
  The `beq` branch at 0x2e32574 targets 0x2e321e8, is taken when v0(=[a5]) == at(=0x2a10), and falls through when v0(=[a5]) != at(=0x2a10).
  The `bne` branch at 0x2e32584 targets 0x2e32378, is taken when v0(=[a5]) != v1(=0x8042), and falls through when v0(=[a5]) == v1(=0x8042).
  The `bne` branch at 0x2e32594 targets 0x2e32378, is taken when v0(=[a5]) != a7(=0x803f), and falls through when v0(=[a5]) == a7(=0x803f).
  The `beq` branch at 0x2e325a4 targets 0x2e32028, is taken when a6 == t0(=0x8365), and falls through when a6 != t0(=0x8365).
  The `bne` branch at 0x2e325bc targets 0x2e32608, is taken when v0(=[a5]) < t1(=0x8059) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8059) (unsigned).
  The `beq` branch at 0x2e325c8 targets 0x2e3214c, is taken when t1(=0x8059) >= v0(=[a5]) (unsigned), and falls through when t1(=0x8059) < v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e325d8 targets 0x2e321e8, is taken when v0(=[a5]) == t8(=0x8053), and falls through when v0(=[a5]) != t8(=0x8053).
  The `beq` branch at 0x2e325e8 targets 0x2e321e8, is taken when v0(=[a5]) == t9(=0x804e), and falls through when v0(=[a5]) != t9(=0x804e).
  The `beq` branch at 0x2e325f8 targets 0x2e31f44, is taken when v0(=[a5]) == ra(=0x8044), and falls through when v0(=[a5]) != ra(=0x8044).
  The `beq` branch at 0x2e32608 targets 0x2e3214c, is taken when v0(=[a5]) == at(=0x8058), and falls through when v0(=[a5]) != at(=0x8058).
  The return at 0x2e32000 has v0 = 0x0.
  The return at 0x2e32060 has v0 = 0x0.
  The return at 0x2e320a4 has v0 = 0x0.
  The return at 0x2e320d4 has v0 = 0x1.
  The return at 0x2e320e0 has v0 = 0x0.
  The return at 0x2e3212c has v0 = 0x0.
  The return at 0x2e32260 has v0 = 0x0.
  The return at 0x2e322b8 has v0 = 0x0.
  The return at 0x2e3238c has v0 = 0x0.
  The return at 0x2e323ac has v0 = 0x0.
- `__GLconvolutionParameter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e32e40 (n64).
  It occupies 544 bytes.
  The `swc1` at 0x2e32edc stores 4 bytes to ([0x1020]:8 + one of 0x3d8, 0x430, 0x488) +0x0 (value [a2]).
  The `swc1` at 0x2e32ee4 stores 4 bytes to ([0x1020]:8 + one of 0x3dc, 0x434, 0x48c) +0x0 (value [a2+4]).
  The `swc1` at 0x2e32eec stores 4 bytes to ([0x1020]:8 + one of 0x3e0, 0x438, 0x490) +0x0 (value [a2+8]).
  The `swc1` at 0x2e32efc stores 4 bytes to ([0x1020]:8 + one of 0x3e4, 0x43c, 0x494) +0x0 (value [a2+12]).
  The `swc1` at 0x2e32f60 stores 4 bytes to ([0x1020]:8 + one of 0x3c8, 0x420, 0x478) +0x0 (value [a2]).
  The `swc1` at 0x2e32f68 stores 4 bytes to ([0x1020]:8 + one of 0x3cc, 0x424, 0x47c) +0x0 (value [a2+4]).
  The `swc1` at 0x2e32f74 stores 4 bytes to ([0x1020]:8 + one of 0x3d0, 0x428, 0x480) +0x0 (value [a2+8]).
  The `swc1` at 0x2e32f84 stores 4 bytes to ([0x1020]:8 + one of 0x3d4, 0x42c, 0x484) +0x0 (value [a2+12]).
  The `sw` at 0x2e32fd8 stores 4 bytes to ([0x1020]:8 + one of 0x3bc, 0x414, 0x46c) +0x0 (value 0x8016).
  The `bgezall` at 0x2e32e8c calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011, a7=0x8012.
  The `bgezall` at 0x2e32ec0 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011.
  The `bgezall` at 0x2e32f44 calls `__glSetError` with a0=0x500, a1=unknown, a2=0x8016, a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011.
  The `bgezall` at 0x2e32fec calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8.
  The `beq` branch at 0x2e32e64 targets 0x2e32fe8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e32e70 targets 0x2e32f0c, is taken when a0 == a4(=0x8010), and falls through when a0 != a4(=0x8010).
  The `beq` branch at 0x2e32e78 targets 0x2e32f14, is taken when a0 == a6(=0x8011), and falls through when a0 != a6(=0x8011).
  The `beq` branch at 0x2e32e80 targets 0x2e32e9c, is taken when a0 == a7(=0x8012), and falls through when a0 != a7(=0x8012).
  The `beq` branch at 0x2e32ea0 targets 0x2e32f1c, is taken when a1 == t0(=0x8013), and falls through when a1 != t0(=0x8013).
  The `beq` branch at 0x2e32eac targets 0x2e32f54, is taken when a1 == t1(=0x8014), and falls through when a1 != t1(=0x8014).
  The `beq` branch at 0x2e32eb4 targets 0x2e32ed0, is taken when a1 == t2(=0x8015), and falls through when a1 != t2(=0x8015).
  The `beq` branch at 0x2e32ed0 targets 0x2e32f88, is taken when a3 == t3(=0x1404), and falls through when a3 != t3(=0x1404).
  The `beq` branch at 0x2e32f28 targets 0x2e32ffc, is taken when a3 == t8(=0x1404), and falls through when a3 != t8(=0x1404).
  The `beq` branch at 0x2e32f30 targets 0x2e33004, is taken when a3 == t9(=0x1406), and falls through when a3 != t9(=0x1406).
  The `beq` branch at 0x2e32f3c targets 0x2e32fd8, is taken when a2(=0x8016) == a1(unknown), and falls through when a2(=0x8016) != a1(unknown).
  The `beq` branch at 0x2e32f54 targets 0x2e33018, is taken when a3 == ra(=0x1404), and falls through when a3 != ra(=0x1404).
  The return at 0x2e32ef8 has v0 = 0x1.
  The return at 0x2e32f04 has v0 = unknown.
  The return at 0x2e32f80 has v0 = 0x1.
  The return at 0x2e32fd0 has v0 = [a2+8].
  The return at 0x2e32fe0 has v0 = 0x1.
- `__GLgetConvolutionParameter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e331e0 (n64).
  It occupies 724 bytes.
  The `bgezall` at 0x2e33228 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011, a7=0x8012.
  The `bgezall` at 0x2e332a4 calls `__glSetError` with a0=0x500, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=table(0x2ee9310).
  The `bgezall` at 0x2e33400 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8.
  The `bgezall` at 0x2e334a4 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8.
  The `beq` branch at 0x2e33200 targets 0x2e333fc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e3320c targets 0x2e33284, is taken when a0 == a4(=0x8010), and falls through when a0 != a4(=0x8010).
  The `beq` branch at 0x2e33218 targets 0x2e332b4, is taken when a0 == a6(=0x8011), and falls through when a0 != a6(=0x8011).
  The `beq` branch at 0x2e33220 targets 0x2e33240, is taken when a0 == a7(=0x8012), and falls through when a0 != a7(=0x8012).
  The `beq` branch at 0x2e33268 targets 0x2e332a0, is taken when a7(unknown) >= 0x9 (unsigned), and falls through when a7(unknown) < 0x9 (unsigned).
  The `beq` branch at 0x2e33284 targets 0x2e334a4, is taken when a1 == t0(=0x8019), and falls through when a1 != t0(=0x8019).
  The `beq` branch at 0x2e33290 targets 0x2e334a4, is taken when a1 == t1(=0x801b), and falls through when a1 != t1(=0x801b).
  The `beq` branch at 0x2e332c8 targets 0x2e33410, is taken when a3 == t2(=0x1404), and falls through when a3 != t2(=0x1404).
  The `beq` branch at 0x2e332f8 targets 0x2e33418, is taken when a3 == t8(=0x1404), and falls through when a3 != t8(=0x1404).
  The `beq` branch at 0x2e33320 targets 0x2e33420, is taken when a3 == t9(=0x1404), and falls through when a3 != t9(=0x1404).
  The `beq` branch at 0x2e33344 targets 0x2e33428, is taken when a3 == ra(=0x1404), and falls through when a3 != ra(=0x1404).
  The `beq` branch at 0x2e33370 targets 0x2e33430, is taken when a3 == at(=0x1404), and falls through when a3 != at(=0x1404).
  The `beq` branch at 0x2e3338c targets 0x2e33438, is taken when a3 == v0(=0x1404), and falls through when a3 != v0(=0x1404).
  The `beq` branch at 0x2e333b4 targets 0x2e33468, is taken when a3 == v1(=0x1404), and falls through when a3 != v1(=0x1404).
  The `beq` branch at 0x2e333dc targets 0x2e33498, is taken when a3 == a1(=0x1404), and falls through when a3 != a1(=0x1404).
  The return at 0x2e33238 has v0 = unknown.
  The return at 0x2e332e4 has v0 = 0x1404.
  The return at 0x2e3330c has v0 = 0x1404.
  The return at 0x2e33334 has v0 = 0x1404.
  The return at 0x2e3335c has v0 = 0x1404.
  The return at 0x2e33384 has v0 = 0x1404.
- `__glConvolutionParameterfvEXT_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33540 (n64).
  It occupies 60 bytes.
  The `beq` branch at 0x2e33548 targets 0x2e3356c, is taken when a0 == at(=0x8013), and falls through when a0 != at(=0x8013).
  The `beq` branch at 0x2e33554 targets 0x2e33574, is taken when a0 == v0(=0x8014), and falls through when a0 != v0(=0x8014).
  The return at 0x2e33564 has v0 = one of -0x1, 0x10.
  The return at 0x2e3356c has v0 = 0x4.
  The return at 0x2e33574 has v0 = 0x10.
- `__glConvolutionParameterivEXT_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33580 (n64).
  It occupies 60 bytes.
  The `beq` branch at 0x2e33588 targets 0x2e335ac, is taken when a0 == at(=0x8013), and falls through when a0 != at(=0x8013).
  The `beq` branch at 0x2e33594 targets 0x2e335b4, is taken when a0 == v0(=0x8014), and falls through when a0 != v0(=0x8014).
  The return at 0x2e335a4 has v0 = one of -0x1, 0x10.
  The return at 0x2e335ac has v0 = 0x4.
  The return at 0x2e335b4 has v0 = 0x10.
- `__glCopyConvolutionPixelModeState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e335c0 (n64).
  It occupies 316 bytes.
  The `sw` at 0x2e335c4 stores 4 bytes to a1 (arg1 at entry) +0x8c (value [a0+140]).
  The `swc1` at 0x2e335cc stores 4 bytes to a1 (arg1 at entry) +0x98 (value [a0+152]).
  The `swc1` at 0x2e335d4 stores 4 bytes to a1 (arg1 at entry) +0x9c (value [a0+156]).
  The `swc1` at 0x2e335dc stores 4 bytes to a1 (arg1 at entry) +0xa0 (value [a0+160]).
  The `swc1` at 0x2e335e4 stores 4 bytes to a1 (arg1 at entry) +0xa4 (value [a0+164]).
  The `swc1` at 0x2e335ec stores 4 bytes to a1 (arg1 at entry) +0xa8 (value [a0+168]).
  The `swc1` at 0x2e335f4 stores 4 bytes to a1 (arg1 at entry) +0xac (value [a0+172]).
  The `swc1` at 0x2e335fc stores 4 bytes to a1 (arg1 at entry) +0xb0 (value [a0+176]).
  The `swc1` at 0x2e33604 stores 4 bytes to a1 (arg1 at entry) +0xb4 (value [a0+180]).
  The `swc1` at 0x2e3360c stores 4 bytes to a1 (arg1 at entry) +0xb8 (value [a0+184]).
  The `swc1` at 0x2e33614 stores 4 bytes to a1 (arg1 at entry) +0xbc (value [a0+188]).
  The `swc1` at 0x2e3361c stores 4 bytes to a1 (arg1 at entry) +0xc0 (value [a0+192]).
  The `swc1` at 0x2e33624 stores 4 bytes to a1 (arg1 at entry) +0xc4 (value [a0+196]).
  The `sw` at 0x2e3362c stores 4 bytes to a1 (arg1 at entry) +0xe4 (value [a0+228]).
  The `swc1` at 0x2e33634 stores 4 bytes to a1 (arg1 at entry) +0xf0 (value [a0+240]).
  The `swc1` at 0x2e3363c stores 4 bytes to a1 (arg1 at entry) +0xf4 (value [a0+244]).
  The `swc1` at 0x2e33644 stores 4 bytes to a1 (arg1 at entry) +0xf8 (value [a0+248]).
  The `swc1` at 0x2e3364c stores 4 bytes to a1 (arg1 at entry) +0xfc (value [a0+252]).
  The `swc1` at 0x2e33654 stores 4 bytes to a1 (arg1 at entry) +0x100 (value [a0+256]).
  The `swc1` at 0x2e3365c stores 4 bytes to a1 (arg1 at entry) +0x104 (value [a0+260]).
  The `swc1` at 0x2e33664 stores 4 bytes to a1 (arg1 at entry) +0x108 (value [a0+264]).
  The `swc1` at 0x2e3366c stores 4 bytes to a1 (arg1 at entry) +0x10c (value [a0+268]).
  The `swc1` at 0x2e33674 stores 4 bytes to a1 (arg1 at entry) +0x110 (value [a0+272]).
  The `swc1` at 0x2e3367c stores 4 bytes to a1 (arg1 at entry) +0x114 (value [a0+276]).
  The `swc1` at 0x2e33684 stores 4 bytes to a1 (arg1 at entry) +0x118 (value [a0+280]).
  The `swc1` at 0x2e3368c stores 4 bytes to a1 (arg1 at entry) +0x11c (value [a0+284]).
  The `sw` at 0x2e33694 stores 4 bytes to a1 (arg1 at entry) +0x13c (value [a0+316]).
  The `swc1` at 0x2e3369c stores 4 bytes to a1 (arg1 at entry) +0x148 (value [a0+328]).
  The `swc1` at 0x2e336a4 stores 4 bytes to a1 (arg1 at entry) +0x14c (value [a0+332]).
  The `swc1` at 0x2e336ac stores 4 bytes to a1 (arg1 at entry) +0x150 (value [a0+336]).
  The `swc1` at 0x2e336b4 stores 4 bytes to a1 (arg1 at entry) +0x154 (value [a0+340]).
  The `swc1` at 0x2e336bc stores 4 bytes to a1 (arg1 at entry) +0x158 (value [a0+344]).
  The `swc1` at 0x2e336c4 stores 4 bytes to a1 (arg1 at entry) +0x15c (value [a0+348]).
  The `swc1` at 0x2e336cc stores 4 bytes to a1 (arg1 at entry) +0x160 (value [a0+352]).
  The `swc1` at 0x2e336d4 stores 4 bytes to a1 (arg1 at entry) +0x164 (value [a0+356]).
  The `swc1` at 0x2e336dc stores 4 bytes to a1 (arg1 at entry) +0x168 (value [a0+360]).
  The `swc1` at 0x2e336e4 stores 4 bytes to a1 (arg1 at entry) +0x16c (value [a0+364]).
  The `swc1` at 0x2e336ec stores 4 bytes to a1 (arg1 at entry) +0x170 (value [a0+368]).
  The `swc1` at 0x2e336f8 stores 4 bytes to a1 (arg1 at entry) +0x174 (value [a0+372]).
  The return at 0x2e336f4 has v0 = [a0+228].
- `__glFillDeformationMap3f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33700 (n64).
  It occupies 132 bytes.
  The `blez` branch at 0x2e33700 targets 0x2e3377c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2e33720 targets 0x2e33770, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `blez` branch at 0x2e33734 targets 0x2e33768, is taken when a4 <= 0 (signed), and falls through when a4 > 0 (signed).
  The `bne` branch at 0x2e33760 targets 0x2e33740, is taken when a4 != a3(unknown), and falls through when a4 == a3(unknown).
  The `bne` branch at 0x2e33768 targets 0x2e33730, is taken when a2 != t2(unknown), and falls through when a2 == t2(unknown).
  The `bne` branch at 0x2e33774 targets 0x2e33720, is taken when a0 != t8(unknown), and falls through when a0 == t8(unknown).
  The return at 0x2e3377c has v0 = unknown.
- `__glFillDeformationMap3d` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33790 (n64).
  It occupies 360 bytes.
  The `blez` branch at 0x2e33794 targets 0x2e338ec, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2e337b4 targets 0x2e338ec, is taken when a0 == t9(unknown), and falls through when a0 != t9(unknown).
  The `blez` branch at 0x2e337bc targets 0x2e337b0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x2e33800 targets 0x2e337d0, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `beq` branch at 0x2e33808 targets 0x2e338bc, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e338b4 targets 0x2e33810, is taken when a4 != a1(unknown), and falls through when a4 == a1(unknown).
  The `beq` branch at 0x2e338bc targets 0x2e337b0, is taken when a2 == t3(unknown), and falls through when a2 != t3(unknown).
  The `blez` branch at 0x2e338c8 targets 0x2e338bc, is taken when a4 <= 0 (signed), and falls through when a4 > 0 (signed).
  The `bne` branch at 0x2e338dc targets 0x2e337d0, is taken when (a4 & 0x3) != 0, and falls through when (a4 & 0x3) == 0.
  The return at 0x2e338f0 has v0 = unknown.
- `__glCheckMap3Params` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33900 (n64).
  It occupies 196 bytes.
  The `beq` branch at 0x2e3390c targets 0x2e33928, is taken when a0 == at(=0x8194), and falls through when a0 != at(=0x8194).
  The `beq` branch at 0x2e33918 targets 0x2e33928, is taken when a0 == v0(=0x8195), and falls through when a0 != v0(=0x8195).
  The `blez` branch at 0x2e33928 targets 0x2e339b0, is taken when a4 <= 0 (signed), and falls through when a4 > 0 (signed).
  The `bne` branch at 0x2e33940 targets 0x2e339b0, is taken when a0(=[[0x1020]:8+4160]) < a4 (signed), and falls through when a0(=[[0x1020]:8+4160]) >= a4 (signed).
  The `bne` branch at 0x2e33954 targets 0x2e339b0, is taken when a3 < 0x3 (signed), and falls through when a3 >= 0x3 (signed).
  The `bc1t` branch at 0x2e33960 targets 0x2e339b0, is taken when f13 == f14 (c.eq.s at 0x2e3395c), and falls through when not (f13 == f14 (c.eq.s at 0x2e3395c)).
  The `blez` branch at 0x2e33968 targets 0x2e339b0, is taken when a2(unknown) <= 0 (signed), and falls through when a2(unknown) > 0 (signed).
  The `bne` branch at 0x2e33970 targets 0x2e339b0, is taken when a3(unknown) != 0, and falls through when a3(unknown) == 0.
  The `bne` branch at 0x2e33978 targets 0x2e339b0, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `bc1t` branch at 0x2e33984 targets 0x2e339b0, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `blez` branch at 0x2e3398c targets 0x2e339b0, is taken when a2(unknown) <= 0 (signed), and falls through when a2(unknown) > 0 (signed).
  The `bne` branch at 0x2e33994 targets 0x2e339b0, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e3399c targets 0x2e339b0, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bc1f` branch at 0x2e339a8 targets 0x2e339b8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The return at 0x2e33920 has v0 = 0x500.
  The return at 0x2e339b0 has v0 = 0x501.
  The return at 0x2e339bc has v0 = 0x0.
- `FetchNon32` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e339d0 (n64).
  It occupies 188 bytes.
  The `beq` branch at 0x2e33a2c targets 0x2e33a74, is taken when v1(=[a0+128]) == a1(unknown), and falls through when v1(=[a0+128]) != a1(unknown).
  The `bne` branch at 0x2e33a3c targets 0x2e33a54, is taken when a5(=[a0+148]) != t9(=0xffffffffff000000), and falls through when a5(=[a0+148]) == t9(=0xffffffffff000000).
  The `bc1t` branch at 0x2e33a4c targets 0x2e33a84, is taken when f0(=[[a0]:8+1896]:8) == f1(=0x3ff0000000000000) (c.eq.d at 0x2e33a48), and falls through when not (f0(=[[a0]:8+1896]:8) == f1(=0x3ff0000000000000) (c.eq.d at 0x2e33a48)).
  The `bne` branch at 0x2e33a54 targets 0x2e33a74, is taken when a5(=[a0+148]) != v0(=0x1000000), and falls through when a5(=[a0+148]) == v0(=0x1000000).
  The `bc1f` branch at 0x2e33a64 targets 0x2e33a74, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e33a6c has v0 = 0x0.
  The return at 0x2e33a7c has v0 = unknown.
  The return at 0x2e33a84 has v0 = [a0+124].
- `Fetch32` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33a90 (n64).
  It occupies 64 bytes.
  The return at 0x2e33ac8 has v0 = unknown.
- `StoreLESS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33ae0 (n64).
  It occupies 112 bytes.
  The `beq` branch at 0x2e33b38 targets 0x2e33b48, is taken when a5(unknown) >= at(unknown) (unsigned), and falls through when a5(unknown) < at(unknown) (unsigned).
  The return at 0x2e33b40 has v0 = 0x1.
  The return at 0x2e33b48 has v0 = 0x0.
- `StoreLESS_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33b50 (n64).
  It occupies 112 bytes.
  The `beq` branch at 0x2e33ba8 targets 0x2e33bb8, is taken when a5(unknown) >= at(unknown) (signed), and falls through when a5(unknown) < at(unknown) (signed).
  The return at 0x2e33bb0 has v0 = 0x1.
  The return at 0x2e33bb8 has v0 = 0x0.
- `StoreEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33bc0 (n64).
  It occupies 108 bytes.
  The `bne` branch at 0x2e33c14 targets 0x2e33c24, is taken when at(unknown) != a5(unknown), and falls through when at(unknown) == a5(unknown).
  The return at 0x2e33c1c has v0 = 0x1.
  The return at 0x2e33c24 has v0 = 0x0.
- `StoreLEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33c30 (n64).
  It occupies 112 bytes.
  The `bne` branch at 0x2e33c88 targets 0x2e33c98, is taken when at(unknown) < a5(unknown) (unsigned), and falls through when at(unknown) >= a5(unknown) (unsigned).
  The return at 0x2e33c90 has v0 = 0x1.
  The return at 0x2e33c98 has v0 = 0x0.
- `StoreLEQUAL_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33ca0 (n64).
  It occupies 112 bytes.
  The `bne` branch at 0x2e33cf8 targets 0x2e33d08, is taken when at(unknown) < a5(unknown) (signed), and falls through when at(unknown) >= a5(unknown) (signed).
  The return at 0x2e33d00 has v0 = 0x1.
  The return at 0x2e33d08 has v0 = 0x0.
- `StoreGREATER` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33d10 (n64).
  It occupies 112 bytes.
  The `beq` branch at 0x2e33d68 targets 0x2e33d78, is taken when at(unknown) >= a5(unknown) (unsigned), and falls through when at(unknown) < a5(unknown) (unsigned).
  The return at 0x2e33d70 has v0 = 0x1.
  The return at 0x2e33d78 has v0 = 0x0.
- `StoreGREATER_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33d80 (n64).
  It occupies 112 bytes.
  The `beq` branch at 0x2e33dd8 targets 0x2e33de8, is taken when at(unknown) >= a5(unknown) (signed), and falls through when at(unknown) < a5(unknown) (signed).
  The return at 0x2e33de0 has v0 = 0x1.
  The return at 0x2e33de8 has v0 = 0x0.
- `StoreNOTEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33df0 (n64).
  It occupies 108 bytes.
  The `beq` branch at 0x2e33e44 targets 0x2e33e54, is taken when at(unknown) == a5(unknown), and falls through when at(unknown) != a5(unknown).
  The return at 0x2e33e4c has v0 = 0x1.
  The return at 0x2e33e54 has v0 = 0x0.
- `StoreGEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33e60 (n64).
  It occupies 112 bytes.
  The `bne` branch at 0x2e33eb8 targets 0x2e33ec8, is taken when a5(unknown) < at(unknown) (unsigned), and falls through when a5(unknown) >= at(unknown) (unsigned).
  The return at 0x2e33ec0 has v0 = 0x1.
  The return at 0x2e33ec8 has v0 = 0x0.
- `StoreGEQUAL_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33ed0 (n64).
  It occupies 112 bytes.
  The `bne` branch at 0x2e33f28 targets 0x2e33f38, is taken when a5(unknown) < at(unknown) (signed), and falls through when a5(unknown) >= at(unknown) (signed).
  The return at 0x2e33f30 has v0 = 0x1.
  The return at 0x2e33f38 has v0 = 0x0.
- `StoreALWAYS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33f40 (n64).
  It occupies 92 bytes.
  The return at 0x2e33f94 has v0 = 0x1.
- `StoreLESS_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33fa0 (n64).
  It occupies 92 bytes.
  The return at 0x2e33ff4 has v0 = unknown.
- `StoreLESS_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34000 (n64).
  It occupies 92 bytes.
  The return at 0x2e34054 has v0 = unknown.
- `StoreEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34060 (n64).
  It occupies 96 bytes.
  The return at 0x2e340b8 has v0 = unknown.
- `StoreLEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e340c0 (n64).
  It occupies 96 bytes.
  The return at 0x2e34118 has v0 = unknown.
- `StoreLEQUAL_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34120 (n64).
  It occupies 96 bytes.
  The return at 0x2e34178 has v0 = unknown.
- `StoreGREATER_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34180 (n64).
  It occupies 92 bytes.
  The return at 0x2e341d4 has v0 = unknown.
- `StoreGREATER_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e341e0 (n64).
  It occupies 92 bytes.
  The return at 0x2e34234 has v0 = unknown.
- `StoreNOTEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34240 (n64).
  It occupies 96 bytes.
  The return at 0x2e34298 has v0 = unknown.
- `StoreGEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e342a0 (n64).
  It occupies 96 bytes.
  The return at 0x2e342f8 has v0 = unknown.
- `StoreGEQUAL_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34300 (n64).
  It occupies 96 bytes.
  The return at 0x2e34358 has v0 = unknown.
- `__glInitDepth24` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34e90 (n64).
  It occupies 232 bytes.
  The `sw` at 0x2e34ee4 stores 4 bytes to a0 (arg0 at entry) +0x78 (value -0x1).
  The `sb` at 0x2e34ee8 stores 1 bytes to a0 (arg0 at entry) +0x90 (value 0x0).
  The `sw` at 0x2e34ef0 stores 4 bytes to a0 (arg0 at entry) +0x94 (value 0xffffffffff000000).
  The `sw` at 0x2e34ef4 stores 4 bytes to a0 (arg0 at entry) +0x80 (value 0xffffffffff000000).
  The `sw` at 0x2e34efc stores 4 bytes to a0 (arg0 at entry) +0x88 (value 0x7).
  The `sw` at 0x2e34f04 stores 4 bytes to a0 (arg0 at entry) +0x10 (value 0x18).
  The `sw` at 0x2e34f0c stores 4 bytes to a0 (arg0 at entry) +0x24 (value 0x4).
  The `sw` at 0x2e34f1c stores 4 bytes to a0 (arg0 at entry) +0x8c (value 0xffffff).
  The `sw` at 0x2e34f24 stores 4 bytes to a0 (arg0 at entry) +0x7c (value 0x7fffff80).
  The `sd` at 0x2e34f2c stores 8 bytes to a0 (arg0 at entry) +0xc8 (value 0x2e339d0).
  The `sd` at 0x2e34f34 stores 8 bytes to a0 (arg0 at entry) +0xc0 (value 0x2e33f40).
  The `sd` at 0x2e34f3c stores 8 bytes to a0 (arg0 at entry) +0xb8 (value 0x2e34370).
  The `sd` at 0x2e34f44 stores 8 bytes to a0 (arg0 at entry) +0xa8 (value 0x2e34c70).
  The `sd` at 0x2e34f4c stores 8 bytes to a0 (arg0 at entry) +0xa0 (value 0x2e34ad0).
  The `sd` at 0x2e34f54 stores 8 bytes to a0 (arg0 at entry) +0x48 (value 0x2e34dc0).
  The `sd` at 0x2e34f60 stores 8 bytes to a0 (arg0 at entry) +0x40 (value 0x2e34cf0).
  The `sd` at 0x2e34f68 stores 8 bytes to a0 (arg0 at entry) +0x58 (value 0x2e34ca0).
  The `jalr` at 0x2e34eb4 calls `__glInitBuffer` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e34f70 has v0 = 0x2e34ca0.
- `__glim_MapGrid1d` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e36210 (n64).
  It occupies 132 bytes.
  The `sw` at 0x2e36244 stores 4 bytes to [0x1020]:8 +0x8a0 (value a0).
  The `bgezall` at 0x2e36270 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2e36284 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e36234 targets 0x2e36280, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x2e3623c targets 0x2e36270, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The return at 0x2e3625c has v0 = 0x1.
  The return at 0x2e36268 has v0 = ret(__glSetError).
- `__glim_MapGrid1f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e362a0 (n64).
  It occupies 124 bytes.
  The `sw` at 0x2e362d4 stores 4 bytes to [0x1020]:8 +0x8a0 (value a0).
  The `swc1` at 0x2e362d8 stores 4 bytes to [0x1020]:8 +0x898 (value f14).
  The `swc1` at 0x2e362dc stores 4 bytes to [0x1020]:8 +0x894 (value f13).
  The `bgezall` at 0x2e362f8 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2e3630c calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e362c4 targets 0x2e36308, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x2e362cc targets 0x2e362f8, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The return at 0x2e362e4 has v0 = 0x1.
  The return at 0x2e362f0 has v0 = ret(__glSetError).
- `__glim_MapGrid2f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e363d0 (n64).
  It occupies 148 bytes.
  The `sw` at 0x2e3640c stores 4 bytes to [0x1020]:8 +0x8c0 (value a3).
  The `swc1` at 0x2e36410 stores 4 bytes to [0x1020]:8 +0x8b8 (value f17).
  The `swc1` at 0x2e36414 stores 4 bytes to [0x1020]:8 +0x8b4 (value f16).
  The `sw` at 0x2e36418 stores 4 bytes to [0x1020]:8 +0x8b0 (value a0).
  The `swc1` at 0x2e3641c stores 4 bytes to [0x1020]:8 +0x8a8 (value f14).
  The `swc1` at 0x2e36420 stores 4 bytes to [0x1020]:8 +0x8a4 (value f13).
  The `bgezall` at 0x2e36440 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2e36454 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e363f4 targets 0x2e36450, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x2e363fc targets 0x2e36440, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2e36404 targets 0x2e36440, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The return at 0x2e36428 has v0 = 0x1.
  The return at 0x2e36434 has v0 = ret(__glSetError).
- `__glSetUpMap2` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e36d00 (n64).
  It occupies 340 bytes.
  The `swc1` at 0x2e36dc0 stores 4 bytes to table(0x8f20) +0x0 (value f19).
  The `swc1` at 0x2e36dc4 stores 4 bytes to table(0x8f1c) +0x0 (value f18).
  The `swc1` at 0x2e36dc8 stores 4 bytes to table(0x8f18) +0x0 (value f17).
  The `sw` at 0x2e36dd4 stores 4 bytes to table(0x8f10) +0x0 (value a3).
  The `sw` at 0x2e36de0 stores 4 bytes to table(0x8f0c) +0x0 (value a2).
  The `sd` at 0x2e36e1c stores 8 bytes to unknown (base unknown) (value ret(unknown)).
  The `bgezall` at 0x2e36d80 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a1-3504 << 0x20).
  The `bgezall` at 0x2e36ddc calls `__glMap2_size` with a0=entry(0x8f08), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a3 at entry (arg3), a7=(a1-3504 << 0x20).
  The `jalr` at 0x2e36e08 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=entry(0x9100), a2=(ret(__glMap2_size) << 0x2), a3=unknown.
  The `bgezall` at 0x2e36e40 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a1-3504 << 0x20).
  The `beq` branch at 0x2e36d30 targets 0x2e36e38, is taken when a6(unknown) >= 0x9 (unsigned), and falls through when a6(unknown) < 0x9 (unsigned).
  The `blez` branch at 0x2e36d38 targets 0x2e36d7c, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `bne` branch at 0x2e36d48 targets 0x2e36d78, is taken when a0(=[a0+4124]) < a3 (signed), and falls through when a0(=[a0+4124]) >= a3 (signed).
  The `blez` branch at 0x2e36d50 targets 0x2e36d7c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x2e36d58 targets 0x2e36d7c, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bc1t` branch at 0x2e36d64 targets 0x2e36d7c, is taken when f16 == f17 (c.eq.s at 0x2e36d60), and falls through when not (f16 == f17 (c.eq.s at 0x2e36d60)).
  The `bc1f` branch at 0x2e36d70 targets 0x2e36d9c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e36d94 has v0 = 0x0.
  The return at 0x2e36e30 has v0 = table(0x8f08).
- `PreEvaluateWithDeriv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e36f80 (n64).
  It occupies 676 bytes.
  The `swc1` at 0x2e36f9c stores 4 bytes to a2 (arg2 at entry) +0x4 (value f13).
  The `swc1` at 0x2e37200 stores 4 bytes to a3 (arg3 at entry) +0x4 (value 0x3f800000).
  The `swc1` at 0x2e37204 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0xffffffffbf800000).
  The `swc1` at 0x2e37208 stores 4 bytes to a2 (arg2 at entry) +0x4 (value f13).
  The `swc1` at 0x2e37218 stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x3f800000).
  The `swc1` at 0x2e37220 stores 4 bytes to a3 (arg3 at entry) +0x0 (value f16).
  The `beq` branch at 0x2e36f84 targets 0x2e37214, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x2e36f90 targets 0x2e371fc, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `bne` branch at 0x2e36fa8 targets 0x2e371f4, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0x2e36fc0 targets 0x2e36fe4, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e36fdc targets 0x2e36fc8, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e36fe4 targets 0x2e37038, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `madd.s` at 0x2e37000 is not a branch.
  The `bne` branch at 0x2e37030 targets 0x2e36ff0, is taken when a4(unknown) != a5(unknown), and falls through when a4(unknown) == a5(unknown).
  The `beq` branch at 0x2e3704c targets 0x2e37080, is taken when t1(=a0-1) == a6(unknown), and falls through when t1(=a0-1) != a6(unknown).
  The `beq` branch at 0x2e37070 targets 0x2e36fc0, is taken when a6(unknown) >= 0x2 (signed), and falls through when a6(unknown) < 0x2 (signed).
  The `beq` branch at 0x2e370b4 targets 0x2e370d4, is taken when (t0(unknown) & 0x1) == 0, and falls through when (t0(unknown) & 0x1) != 0.
  The `beq` branch at 0x2e370d8 targets 0x2e37124, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e37118 targets 0x2e370f0, is taken when a4(unknown) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a4(unknown) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0x2e37144 targets 0x2e371ec, is taken when a6(unknown) < 0x2 (signed), and falls through when a6(unknown) >= 0x2 (signed).
  The `beq` branch at 0x2e3715c targets 0x2e37180, is taken when (a3(unknown) & 0x3) == 0, and falls through when (a3(unknown) & 0x3) != 0.
  The `bne` branch at 0x2e37178 targets 0x2e37164, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e37184 targets 0x2e371d8, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e371d0 targets 0x2e37190, is taken when a4(unknown) != a5(unknown), and falls through when a4(unknown) == a5(unknown).
  The return at 0x2e371e4 has v0 = unknown.
  The return at 0x2e3720c has v0 = unknown.
  The return at 0x2e3721c has v0 = unknown.
- `DoEvalCoord1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e37370 (n64).
  It occupies 1000 bytes.
  The `swc1` at 0x2e37620 stores 4 bytes to a0 (arg0 at entry) +0x194 (value [a0+3884]).
  The `swc1` at 0x2e37694 stores 4 bytes to a0 (arg0 at entry) +0x194 (value [a0+3884]).
  The `swc1` at 0x2e37728 stores 4 bytes to a0 (arg0 at entry) +0x194 (value [a0+3884]).
  The `bgezall` at 0x2e374c8 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36360, a3=a0+360, a4=[a0+37056]:8, a5=0x2e37230.
  The `bgezall` at 0x2e37504 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36520, a3=a0+392, a4=[a0+37096]:8.
  The `bgezall` at 0x2e37530 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36392, a3=a0+376, a4=[a0+37064]:8.
  The `bgezall` at 0x2e37560 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36584, a3=sp-80, a4=[a0+37112]:8.
  The `jalr` at 0x2e37570 calls `(unknown callee)` with a0=sp-80, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e3759c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e375c8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3760c calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36488, a3=a0+392, a4=[a0+37088]:8.
  The `bgezall` at 0x2e37644 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36552, a3=sp-64, a4=[a0+37104]:8.
  The `jalr` at 0x2e37654 calls `(unknown callee)` with a0=sp-64, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e37680 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36456, a3=a0+392, a4=[a0+37080]:8.
  The `bgezall` at 0x2e376c4 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36328, a3=a0+608, a4=[a0+37048]:8, a5=0x2e37230.
  The `jalr` at 0x2e376d0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e37714 calls `DoDomain1` with a0=sp-1824, a1=unknown, a2=a0+36424, a3=a0+392, a4=[a0+37072]:8.
  The `bne` branch at 0x2e373cc targets 0x2e373b4, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bgtz` branch at 0x2e37480 targets 0x2e373e0, is taken when a2(unknown) > 0 (signed), and falls through when a2(unknown) <= 0 (signed).
  The `beq` branch at 0x2e37498 targets 0x2e376a0, is taken when v1(=[a0+3557]:1) == 0, and falls through when v1(=[a0+3557]:1) != 0.
  The `beq` branch at 0x2e374a4 targets 0x2e374d4, is taken when (a0(=[a0+2072]) & 0x2) == 0, and falls through when (a0(=[a0+2072]) & 0x2) != 0.
  The `beq` branch at 0x2e374e4 targets 0x2e375ec, is taken when (a0(=[a0+2072]) & 0x40) == 0, and falls through when (a0(=[a0+2072]) & 0x40) != 0.
  The `beq` branch at 0x2e37514 targets 0x2e3753c, is taken when (a0(=[a0+2072]) & 0x4) == 0, and falls through when (a0(=[a0+2072]) & 0x4) != 0.
  The `beq` branch at 0x2e37540 targets 0x2e37624, is taken when (a0(=[a0+2072]) & 0x100) == 0, and falls through when (a0(=[a0+2072]) & 0x100) != 0.
  The `beq` branch at 0x2e37580 targets 0x2e375d4, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `beq` branch at 0x2e37590 targets 0x2e375d4, is taken when (at(=[a0+2056]) & 0x80) == 0, and falls through when (at(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e375ec targets 0x2e37664, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `beq` branch at 0x2e37624 targets 0x2e37580, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `beq` branch at 0x2e37664 targets 0x2e376f8, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `beq` branch at 0x2e376a0 targets 0x2e376ec, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `beq` branch at 0x2e376e0 targets 0x2e37738, is taken when (a3(=[a0+2056]) & 0x80) == 0, and falls through when (a3(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e376f8 targets 0x2e37510, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The return at 0x2e375e4 has v0 = unknown.
- `DoEvalCoord2` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e37ec0 (n64).
  It occupies 2040 bytes.
  The `sw` at 0x2e37ff4 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x0).
  The `sw` at 0x2e38084 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x12)).
  The `swc1` at 0x2e3808c stores 4 bytes to a3 (arg3 at entry) +0x14 (value [a0+376]).
  The `swc1` at 0x2e38094 stores 4 bytes to a3 (arg3 at entry) +0x18 (value [a0+380]).
  The `swc1` at 0x2e3809c stores 4 bytes to a3 (arg3 at entry) +0x1c (value [a0+384]).
  The `swc1` at 0x2e380a4 stores 4 bytes to a3 (arg3 at entry) +0x20 (value [a0+388]).
  The `sw` at 0x2e38120 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x1)).
  The `swc1` at 0x2e38128 stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a0+360]).
  The `swc1` at 0x2e38130 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a0+364]).
  The `swc1` at 0x2e38138 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a0+368]).
  The `swc1` at 0x2e38140 stores 4 bytes to a3 (arg3 at entry) +0x10 (value [a0+372]).
  The `sw` at 0x2e38188 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x4)).
  The `swc1` at 0x2e38190 stores 4 bytes to a3 (arg3 at entry) +0x24 (value [a0+392]).
  The `swc1` at 0x2e38198 stores 4 bytes to a3 (arg3 at entry) +0x28 (value [a0+396]).
  The `swc1` at 0x2e381a0 stores 4 bytes to a3 (arg3 at entry) +0x2c (value [a0+400]).
  The `swc1` at 0x2e381b0 stores 4 bytes to a3 (arg3 at entry) +0x30 (value [a0+404]).
  The `swc1` at 0x2e38200 stores 4 bytes to a0 (arg0 at entry) +0x194 (value [a0+3884]).
  The `sw` at 0x2e3820c stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x4)).
  The `swc1` at 0x2e38214 stores 4 bytes to a3 (arg3 at entry) +0x24 (value [a0+392]).
  The `swc1` at 0x2e3821c stores 4 bytes to a3 (arg3 at entry) +0x28 (value [a0+396]).
  The `swc1` at 0x2e38224 stores 4 bytes to a3 (arg3 at entry) +0x2c (value [a0+400]).
  The `swc1` at 0x2e3822c stores 4 bytes to a3 (arg3 at entry) +0x30 (value [a0+404]).
  The `sw` at 0x2e38328 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0xa)).
  The `swc1` at 0x2e38330 stores 4 bytes to a3 (arg3 at entry) +0x14 (value [a0+376]).
  The `swc1` at 0x2e38338 stores 4 bytes to a3 (arg3 at entry) +0x18 (value [a0+380]).
  The `swc1` at 0x2e38340 stores 4 bytes to a3 (arg3 at entry) +0x1c (value [a0+384]).
  The `swc1` at 0x2e38348 stores 4 bytes to a3 (arg3 at entry) +0x20 (value [a0+388]).
  The `swc1` at 0x2e383b0 stores 4 bytes to a0 (arg0 at entry) +0x194 (value [a0+3884]).
  The `sw` at 0x2e383c4 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x4)).
  The `swc1` at 0x2e383cc stores 4 bytes to a3 (arg3 at entry) +0x24 (value [a0+392]).
  The `swc1` at 0x2e383d4 stores 4 bytes to a3 (arg3 at entry) +0x28 (value [a0+396]).
  The `swc1` at 0x2e383dc stores 4 bytes to a3 (arg3 at entry) +0x2c (value [a0+400]).
  The `swc1` at 0x2e383e8 stores 4 bytes to a3 (arg3 at entry) +0x30 (value [a0+404]).
  The `sw` at 0x2e38434 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x2)).
  The `swc1` at 0x2e3843c stores 4 bytes to a3 (arg3 at entry) +0x14 (value [a0+376]).
  The `swc1` at 0x2e38444 stores 4 bytes to a3 (arg3 at entry) +0x18 (value [a0+380]).
  The `swc1` at 0x2e3844c stores 4 bytes to a3 (arg3 at entry) +0x1c (value [a0+384]).
  The `swc1` at 0x2e38454 stores 4 bytes to a3 (arg3 at entry) +0x20 (value [a0+388]).
  The `sw` at 0x2e384a8 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x10)).
  The `sw` at 0x2e38520 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x1)).
  The `swc1` at 0x2e38538 stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a0+608]).
  The `swc1` at 0x2e38540 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a0+612]).
  The `swc1` at 0x2e38548 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a0+616]).
  The `swc1` at 0x2e38550 stores 4 bytes to a3 (arg3 at entry) +0x10 (value [a0+620]).
  The `swc1` at 0x2e385ac stores 4 bytes to a0 (arg0 at entry) +0x194 (value [a0+3884]).
  The `sw` at 0x2e385c4 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x4)).
  The `swc1` at 0x2e385cc stores 4 bytes to a3 (arg3 at entry) +0x24 (value [a0+392]).
  The `swc1` at 0x2e385d4 stores 4 bytes to a3 (arg3 at entry) +0x28 (value [a0+396]).
  The `swc1` at 0x2e385dc stores 4 bytes to a3 (arg3 at entry) +0x2c (value [a0+400]).
  The `swc1` at 0x2e385e8 stores 4 bytes to a3 (arg3 at entry) +0x30 (value [a0+404]).
  The `sw` at 0x2e38624 stores 4 bytes to a3 (arg3 at entry) +0x0 (value ([a3] | 0x8)).
  The `swc1` at 0x2e38698 stores 4 bytes to a3 (arg3 at entry) +0x4 (value [a0+360]).
  The `swc1` at 0x2e386a0 stores 4 bytes to a3 (arg3 at entry) +0x8 (value [a0+364]).
  The `swc1` at 0x2e386a8 stores 4 bytes to a3 (arg3 at entry) +0xc (value [a0+368]).
  The `swc1` at 0x2e386b4 stores 4 bytes to a3 (arg3 at entry) +0x10 (value [a0+372]).
  The `bgezall` at 0x2e38038 calls `DoDomain2WithDerivs` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+37000, a4=sp-144, a5=sp-128, a6=sp-112, a7=[a0+37184]:8.
  The `bgezall` at 0x2e38050 calls `ComputeFirstPartials` with a0=sp-144, a1=sp-128, a2=sp-112, a3=unknown.
  The `bgezall` at 0x2e3806c calls `ComputeNormal2` with a0=a0 at entry (arg0), a1=a0+376, a2=sp-128, a3=sp-112.
  The `bgezall` at 0x2e38108 calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36664, a4=a0+360, a5=[a0+37128]:8.
  The `bgezall` at 0x2e38170 calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36904, a4=a0+392, a5=[a0+37168]:8.
  The `jalr` at 0x2e381bc calls `(unknown callee)` with a0=sp-144, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e381f0 calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36856, a4=a0+392, a5=[a0+37160]:8.
  The `jalr` at 0x2e38268 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e38294 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e382f4 calls `DoDomain2WithDerivs` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36952, a4=sp-144, a5=sp-96, a6=sp-80, a7=[a0+37176]:8.
  The `bgezall` at 0x2e38310 calls `ComputeNormal2` with a0=a0 at entry (arg0), a1=a0+376, a2=sp-96, a3=sp-80.
  The `bgezall` at 0x2e383a0 calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36808, a4=a0+392, a5=[a0+37152]:8.
  The `bgezall` at 0x2e3841c calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36712, a4=a0+376, a5=[a0+37136]:8, a6=0x2e37970.
  The `bgezall` at 0x2e38490 calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+37000, a4=sp-144, a5=[a0+37184]:8.
  The `bgezall` at 0x2e384fc calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36616, a4=a0+608, a5=[a0+37120]:8.
  The `jalr` at 0x2e38508 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3859c calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36760, a4=a0+392, a5=[a0+37144]:8.
  The `bgezall` at 0x2e3860c calls `DoDomain2` with a0=sp-1888, a1=unknown, a2=unknown, a3=a0+36952, a4=sp-144, a5=[a0+37176]:8.
  The `jalr` at 0x2e3865c calls `(unknown callee)` with a0=sp-144, a1=unknown, a2=unknown, a3=unknown, a6=0x4.
  The `bne` branch at 0x2e37f2c targets 0x2e37f14, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bgtz` branch at 0x2e37fe0 targets 0x2e37f40, is taken when a2(unknown) > 0 (signed), and falls through when a2(unknown) <= 0 (signed).
  The `beq` branch at 0x2e37fec targets 0x2e37ff8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bgez` branch at 0x2e38000 targets 0x2e383ec, is taken when v1(=([a0+2056] << 0x28)) >= 0 (signed), and falls through when v1(=([a0+2056] << 0x28)) < 0 (signed).
  The `beq` branch at 0x2e3800c targets 0x2e382c4, is taken when (a0(=[a0+2076]) & 0x100) == 0, and falls through when (a0(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x2e38074 targets 0x2e380c8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e380e0 targets 0x2e384d8, is taken when t8(=[a0+3557]:1) == 0, and falls through when t8(=[a0+3557]:1) != 0.
  The `beq` branch at 0x2e380e8 targets 0x2e38148, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `beq` branch at 0x2e38110 targets 0x2e38144, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3814c targets 0x2e381cc, is taken when (a0(=[a0+2076]) & 0x40) == 0, and falls through when (a0(=[a0+2076]) & 0x40) != 0.
  The `beq` branch at 0x2e38178 targets 0x2e38234, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bne` branch at 0x2e381ac targets 0x2e38238, is taken when s3(=one of -0x1, 0x3, 0x4) != a4(=0x3), and falls through when s3(=one of -0x1, 0x3, 0x4) == a4(=0x3).
  The `beq` branch at 0x2e381cc targets 0x2e3837c, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `beq` branch at 0x2e381fc targets 0x2e38230, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e38234 targets 0x2e381b4, is taken when s3(=one of -0x1, 0x3, 0x4) == a5(=0x3), and falls through when s3(=one of -0x1, 0x3, 0x4) != a5(=0x3).
  The `beq` branch at 0x2e3823c targets 0x2e38654, is taken when s3(=one of -0x1, 0x3, 0x4) == a6(=0x4), and falls through when s3(=one of -0x1, 0x3, 0x4) != a6(=0x4).
  The `beq` branch at 0x2e3824c targets 0x2e382a0, is taken when (a7(=[a0+2076]) & 0x1) == 0, and falls through when (a7(=[a0+2076]) & 0x1) != 0.
  The `beq` branch at 0x2e3825c targets 0x2e382a0, is taken when (t0(=[a0+2056]) & 0x80) == 0, and falls through when (t0(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e382c8 targets 0x2e3856c, is taken when (a0(=[a0+2076]) & 0x80) == 0, and falls through when (a0(=[a0+2076]) & 0x80) != 0.
  The `beq` branch at 0x2e38318 targets 0x2e3836c, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3837c targets 0x2e38578, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `beq` branch at 0x2e383b4 targets 0x2e38230, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e383f0 targets 0x2e3845c, is taken when (a0(=[a0+2076]) & 0x4) == 0, and falls through when (a0(=[a0+2076]) & 0x4) != 0.
  The `beq` branch at 0x2e38424 targets 0x2e38458, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3846c targets 0x2e385ec, is taken when (a0(=[a0+2076]) & 0x100) == 0, and falls through when (a0(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x2e38498 targets 0x2e384d0, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e384dc targets 0x2e38148, is taken when (a0(=[a0+2076]) & 0x1) == 0, and falls through when (a0(=[a0+2076]) & 0x1) != 0.
  The `beq` branch at 0x2e38510 targets 0x2e38554, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3852c targets 0x2e38694, is taken when (a4(=[a0+2056]) & 0x80) == 0, and falls through when (a4(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e3855c targets 0x2e38674, is taken when (a6(=[a0+2056]) & 0x80) == 0, and falls through when (a6(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e38578 targets 0x2e38234, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `beq` branch at 0x2e385b4 targets 0x2e38230, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e385ec targets 0x2e3866c, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `beq` branch at 0x2e38614 targets 0x2e3864c, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The return at 0x2e382bc has v0 = unknown.
- `__glEvalMesh2Fill` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e38d10 (n64).
  It occupies 896 bytes.
  The `jalr` at 0x2e38e88 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e38edc calls `(unknown callee)` with a0=0x8, a1=unknown, a2=unknown, a3=unknown, a6=[a0+2224].
  The `bgezall` at 0x2e38f1c calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `bgezall` at 0x2e38f34 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e38f88 calls `sendChange` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e38fa4 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `bgezall` at 0x2e38fbc calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `beq` branch at 0x2e38d50 targets 0x2e39074, is taken when a6(=[a0+2224]) == 0, and falls through when a6(=[a0+2224]) != 0.
  The `beq` branch at 0x2e38d5c targets 0x2e39074, is taken when a0(=[a0+2240]) == 0, and falls through when a0(=[a0+2240]) != 0.
  The `beq` branch at 0x2e38dd8 targets 0x2e39038, is taken when a1 >= v1(=a3) (signed), and falls through when a1 < v1(=a3) (signed).
  The `beq` branch at 0x2e38e9c targets 0x2e38fe4, is taken when ra(=a3) == s5(unknown), and falls through when ra(=a3) != s5(unknown).
  The `bne` branch at 0x2e38eb4 targets 0x2e38fcc, is taken when a6(=[a0+2224]) != s5(unknown), and falls through when a6(=[a0+2224]) == s5(unknown).
  The `beq` branch at 0x2e38ec4 targets 0x2e38fdc, is taken when a6(=[a0+2224]) == at(unknown), and falls through when a6(=[a0+2224]) != at(unknown).
  The `beq` branch at 0x2e38ef8 targets 0x2e38e80, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `beq` branch at 0x2e38f48 targets 0x2e38e80, is taken when t8(unknown) == s1(unknown), and falls through when t8(unknown) != s1(unknown).
  The `beq` branch at 0x2e38f5c targets 0x2e38f70, is taken when t9(=[a0+2240]) == s1(unknown), and falls through when t9(=[a0+2240]) != s1(unknown).
  The `beq` branch at 0x2e38f70 targets 0x2e38f98, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `beq` branch at 0x2e38f78 targets 0x2e38f10, is taken when s6(=a1) == s5(unknown), and falls through when s6(=a1) != s5(unknown).
  The `bne` branch at 0x2e38fd4 targets 0x2e38ec8, is taken when a6(=[a0+2224]) != at(unknown), and falls through when a6(=[a0+2224]) == at(unknown).
  The return at 0x2e39088 has v0 = s8.
- `__glEvalMesh2Line` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39310 (n64).
  It occupies 1464 bytes.
  The `bgezall` at 0x2e39520 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `bgezall` at 0x2e39538 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e39548 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e395a4 calls `(unknown callee)` with a0=0x3, a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e395d8 calls `sendChange` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e395f4 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e39624 calls `sendChange` with a0=a0 at entry (arg0), a1=unknown, a2=0x2e38b70, a3=unknown.
  The `bgezall` at 0x2e3965c calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `bgezall` at 0x2e39674 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `bgezall` at 0x2e39690 calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `jalr` at 0x2e396ec calls `(unknown callee)` with a0=0x3, a1=unknown, a2=unknown, a3=unknown, a6=[a0+2224].
  The `bgezall` at 0x2e3973c calls `DoEvalCoord2` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=0x0.
  The `bgezall` at 0x2e3979c calls `sendChange` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e397e0 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e39354 targets 0x2e39868, is taken when a6(=[a0+2224]) == 0, and falls through when a6(=[a0+2224]) != 0.
  The `beq` branch at 0x2e39360 targets 0x2e39868, is taken when a0(=[a0+2240]) == 0, and falls through when a0(=[a0+2240]) != 0.
  The `beq` branch at 0x2e39414 targets 0x2e39884, is taken when a1 >= v1(=a3) (signed), and falls through when a1 < v1(=a3) (signed).
  The `beq` branch at 0x2e394b8 targets 0x2e396c0, is taken when a1(=a3) == s6(unknown), and falls through when a1(=a3) != s6(unknown).
  The `bne` branch at 0x2e394d8 targets 0x2e396a0, is taken when a6(=[a0+2224]) != a3(unknown), and falls through when a6(=[a0+2224]) == a3(unknown).
  The `beq` branch at 0x2e394e0 targets 0x2e396b8, is taken when a6(=[a0+2224]) == s6(unknown), and falls through when a6(=[a0+2224]) != s6(unknown).
  The `beq` branch at 0x2e394f8 targets 0x2e394a8, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `beq` branch at 0x2e3956c targets 0x2e394a0, is taken when ra(unknown) == s1(unknown), and falls through when ra(unknown) != s1(unknown).
  The `bne` branch at 0x2e3957c targets 0x2e39634, is taken when a0(=[a0+2240]) != s1(unknown), and falls through when a0(=[a0+2240]) == s1(unknown).
  The `beq` branch at 0x2e39584 targets 0x2e39640, is taken when a0(=[a0+2240]) == s3(unknown), and falls through when a0(=[a0+2240]) != s3(unknown).
  The `beq` branch at 0x2e395b0 targets 0x2e395fc, is taken when ra(=a4) == s1(unknown), and falls through when ra(=a4) != s1(unknown).
  The `beq` branch at 0x2e395b8 targets 0x2e39684, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `beq` branch at 0x2e395c0 targets 0x2e395e8, is taken when s7(=a1) == s6(unknown), and falls through when s7(=a1) != s6(unknown).
  The `beq` branch at 0x2e39600 targets 0x2e3964c, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `beq` branch at 0x2e39608 targets 0x2e39510, is taken when s7(=a1) == s6(unknown), and falls through when s7(=a1) != s6(unknown).
  The `beq` branch at 0x2e39610 targets 0x2e39510, is taken when a0(=a2) == s1(unknown), and falls through when a0(=a2) != s1(unknown).
  The `bne` branch at 0x2e39638 targets 0x2e3958c, is taken when a0(=[a0+2240]) != s3(unknown), and falls through when a0(=[a0+2240]) == s3(unknown).
  The `bne` branch at 0x2e396b0 targets 0x2e394e8, is taken when a6(=[a0+2224]) != s6(unknown), and falls through when a6(=[a0+2224]) == s6(unknown).
  The `bne` branch at 0x2e396c4 targets 0x2e396d4, is taken when a6(=[a0+2224]) != s6(unknown), and falls through when a6(=[a0+2224]) == s6(unknown).
  The `beq` branch at 0x2e396f8 targets 0x2e397ac, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `beq` branch at 0x2e3974c targets 0x2e397ac, is taken when s6(=a2-1) == s1(unknown), and falls through when s6(=a2-1) != s1(unknown).
  The `bne` branch at 0x2e3975c targets 0x2e39780, is taken when t8(=[a0+2240]) != s1(unknown), and falls through when t8(=[a0+2240]) == s1(unknown).
  The `bgez` branch at 0x2e39764 targets 0x2e3978c, is taken when s4(unknown) >= 0 (signed), and falls through when s4(unknown) < 0 (signed).
  The `bltz` branch at 0x2e39784 targets 0x2e39730, is taken when s4(unknown) < 0 (signed), and falls through when s4(unknown) >= 0 (signed).
  The `beq` branch at 0x2e39790 targets 0x2e39730, is taken when s4(unknown) >= 0x400 (signed), and falls through when s4(unknown) < 0x400 (signed).
  The return at 0x2e39860 has v0 = ret(unknown).
  The return at 0x2e3987c has v0 = s8.
- `NurbsKnots1Common` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e398d0 (n64).
  It occupies 232 bytes.
  The `sw` at 0x2e39950 stores 4 bytes to table(0x8df8) +0x0 (value a1).
  The `sd` at 0x2e39984 stores 8 bytes to unknown (base unknown) (value ret(unknown)).
  The `jalr` at 0x2e39920 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3), a5=[0x1020]:8, a7=(a0-3472 << 0x20).
  The `jalr` at 0x2e3996c calls `(unknown callee)` with a0=[0x1020]:8, a1=entry(0x9148), a2=(a1 << 0x3), a3=unknown, a4=table(0x10000), a5=[0x1020]:8, a7=(a0-3472 << 0x20).
  The `jalr` at 0x2e3998c calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3), a5=[0x1020]:8, a7=(a0-3472 << 0x20).
  The `jalr` at 0x2e399a4 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8, a7=a0-3472.
  The `beq` branch at 0x2e398e8 targets 0x2e399a0, is taken when at(=[0x1030]) == v1(=0x1), and falls through when at(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e39900 targets 0x2e39988, is taken when t0(unknown) >= 0x9 (unsigned), and falls through when t0(unknown) < 0x9 (unsigned).
  The `bltz` branch at 0x2e39908 targets 0x2e39920, is taken when v0(=a1) < 0 (signed), and falls through when v0(=a1) >= 0 (signed).
  The `bne` branch at 0x2e39918 targets 0x2e39940, is taken when v0(=a1) < t1(=[[0x1020]:8+4124]) (signed), and falls through when v0(=a1) >= t1(=[[0x1020]:8+4124]) (signed).
  The return at 0x2e39930 has v0 = 0x0.
  The return at 0x2e39938 has v0 = 0x0.
  The return at 0x2e39980 has v0 = ret(unknown).
- `NurbsKnots2Common` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e399c0 (n64).
  It occupies 284 bytes.
  The `sw` at 0x2e39a40 stores 4 bytes to table(0x8f28) +0x0 (value a1).
  The `sd` at 0x2e39a60 stores 8 bytes to unknown (base unknown) (value ret(unknown)).
  The `sw` at 0x2e39a84 stores 4 bytes to table(0x8f24) +0x0 (value a1).
  The `jalr` at 0x2e39a54 calls `(unknown callee)` with a0=[0x1020]:8, a1=unknown, a2=unknown, a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `jalr` at 0x2e39a94 calls `__glSetError` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `jalr` at 0x2e39aac calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `jalr` at 0x2e39ac8 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `beq` branch at 0x2e399d8 targets 0x2e39ac4, is taken when at(=[0x1030]) == v1(=0x1), and falls through when at(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e399ec targets 0x2e39aac, is taken when a6(unknown) >= 0x9 (unsigned), and falls through when a6(unknown) < 0x9 (unsigned).
  The `bltz` branch at 0x2e399f4 targets 0x2e39a94, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x2e39a04 targets 0x2e39a94, is taken when a1 >= t0(=[[0x1020]:8+4124]) (signed), and falls through when a1 < t0(=[[0x1020]:8+4124]) (signed).
  The `beq` branch at 0x2e39a30 targets 0x2e39a78, is taken when a2 == 0, and falls through when a2 != 0.
  The return at 0x2e39a70 has v0 = unknown.
  The return at 0x2e39aa4 has v0 = 0x0.
  The return at 0x2e39abc has v0 = 0x0.
- `feedback` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3a4c0 (n64).
  It occupies 904 bytes.
  The `bgezall` at 0x2e3a54c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=[a1+56].
  The `bgezall` at 0x2e3a55c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=[a1+60].
  The `bgezall` at 0x2e3a56c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=[a1+64].
  The `bgezall` at 0x2e3a57c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=[a1+68].
  The `bgezall` at 0x2e3a5cc calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=[a1+8]:8, a4=[a0+3556]:1, a5=a0+65536.
  The `bgezall` at 0x2e3a5ec calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a60c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a62c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a650 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=[a0+4024].
  The `bgezall` at 0x2e3a688 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f14=[a0+4032].
  The `bgezall` at 0x2e3a6b8 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a6d4 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=[a1+8]:8, a4=[a0+3556]:1; fp f13=[[a1+8]:8].
  The `bgezall` at 0x2e3a6f0 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=[a0+4024].
  The `bgezall` at 0x2e3a72c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f14=[a0+4032].
  The `bgezall` at 0x2e3a748 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a768 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=[a0+4024].
  The `bgezall` at 0x2e3a7a0 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=[a0+4060], a2=unknown, a3=unknown; fp f14=[a0+4032].
  The `bgezall` at 0x2e3a7d0 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a7e0 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=[a1+132].
  The `jalr` at 0x2e3a808 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=([a0+36088] | 0x4), a3=unknown.
  The `bgezall` at 0x2e3a820 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3a838 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0x2e3a4e0 targets 0x2e3a6e4, is taken when s0(=[a0+5252]) == at(=0x600), and falls through when s0(=[a0+5252]) != at(=0x600).
  The `beq` branch at 0x2e3a4f0 targets 0x2e3a63c, is taken when s0(=[a0+5252]) == v0(=0x601), and falls through when s0(=[a0+5252]) != v0(=0x601).
  The `beq` branch at 0x2e3a4f8 targets 0x2e3a640, is taken when a0(=0x602) == s0(=[a0+5252]), and falls through when a0(=0x602) != s0(=[a0+5252]).
  The `beq` branch at 0x2e3a500 targets 0x2e3a640, is taken when s3(=0x603) == s0(=[a0+5252]), and falls through when s3(=0x603) != s0(=[a0+5252]).
  The `beq` branch at 0x2e3a508 targets 0x2e3a758, is taken when s0(=[a0+5252]) == v1(=0x604), and falls through when s0(=[a0+5252]) != v1(=0x604).
  The `beq` branch at 0x2e3a510 targets 0x2e3a5a0, is taken when a0(=0x602) == s0(=[a0+5252]), and falls through when a0(=0x602) != s0(=[a0+5252]).
  The `beq` branch at 0x2e3a518 targets 0x2e3a5a0, is taken when s3(=0x603) == s0(=[a0+5252]), and falls through when s3(=0x603) != s0(=[a0+5252]).
  The `beq` branch at 0x2e3a520 targets 0x2e3a5a0, is taken when s0(=[a0+5252]) == a0(=0x604), and falls through when s0(=[a0+5252]) != a0(=0x604).
  The `beq` branch at 0x2e3a528 targets 0x2e3a538, is taken when s3(=0x603) == s0(=[a0+5252]), and falls through when s3(=0x603) != s0(=[a0+5252]).
  The `bne` branch at 0x2e3a530 targets 0x2e3a584, is taken when s0(=[a0+5252]) != a1(=0x604), and falls through when s0(=[a0+5252]) == a1(=0x604).
  The `beq` branch at 0x2e3a540 targets 0x2e3a7f0, is taken when (a2(=[a1]) & 0x4) == 0, and falls through when (a2(=[a1]) & 0x4) != 0.
  The `beq` branch at 0x2e3a5ac targets 0x2e3a6cc, is taken when a4(=[a0+3556]:1) == 0, and falls through when a4(=[a0+3556]:1) != 0.
  The `beq` branch at 0x2e3a664 targets 0x2e3a740, is taken when t8(=[a0+5204]:1) == 0, and falls through when t8(=[a0+5204]:1) != 0.
  The `beq` branch at 0x2e3a708 targets 0x2e3a818, is taken when at(=[a0+5204]:1) == 0, and falls through when at(=[a0+5204]:1) != 0.
  The `beq` branch at 0x2e3a77c targets 0x2e3a830, is taken when v1(=[a0+5204]:1) == 0, and falls through when v1(=[a0+5204]:1) != 0.
  The return at 0x2e3a598 has v0 = unknown.
- `__glFeedbackTriangle` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3aab0 (n64).
  It occupies 1248 bytes.
  The `sd` at 0x2e3ac54 stores 8 bytes to a1 (arg1 at entry) +0x8 (value a1+152).
  The `sd` at 0x2e3ac5c stores 8 bytes to a2 (arg2 at entry) +0x8 (value a2+152).
  The `sd` at 0x2e3ac64 stores 8 bytes to a3 (arg3 at entry) +0x8 (value a3+152).
  The `sd` at 0x2e3acd8 stores 8 bytes to a2 (arg2 at entry) +0x8 (value [[a0+36080]:8+8]:8).
  The `sd` at 0x2e3ace0 stores 8 bytes to a3 (arg3 at entry) +0x8 (value [[a0+36080]:8+8]:8).
  The `sd` at 0x2e3add4 stores 8 bytes to [a0+36080]:8 +0x8 (value [a0+36080]:8+152).
  The `sb` at 0x2e3af44 stores 1 bytes to a0 (arg0 at entry) +0x95b8 (value 0x1).
  The `sb` at 0x2e3af64 stores 1 bytes to a0 (arg0 at entry) +0x95b8 (value 0x1).
  The `sb` at 0x2e3af84 stores 1 bytes to a0 (arg0 at entry) +0x95b8 (value 0x1).
  The `jalr` at 0x2e3abd0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e3abf8 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0x2e3ac20 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `jalr` at 0x2e3ad04 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=[a0+36080]:8, a2=unknown, a3=unknown, a6=[[a0+36080]:8+8]:8, a7=[[a0+36080]:8+8]:8.
  The `bgezall` at 0x2e3ad24 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=0x44e02000.
  The `bgezall` at 0x2e3ad3c calls `feedback` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ad5c calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=0x44e02000.
  The `bgezall` at 0x2e3ad6c calls `feedback` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ad88 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a7=a1+152; fp f13=0x44e02000.
  The `bgezall` at 0x2e3ad98 calls `feedback` with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ae04 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=[a0+38328]:1, a2=0x2, a3=unknown; fp f13=0x44e04000.
  The `bgezall` at 0x2e3ae1c calls `feedback` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ae2c calls `feedback` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ae54 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=0x44e04000.
  The `bgezall` at 0x2e3ae64 calls `feedback` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ae74 calls `feedback` with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3ae98 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a7=a1+152; fp f13=0x44e04000.
  The `bgezall` at 0x2e3aea8 calls `feedback` with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3aeb8 calls `feedback` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3aed0 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=0x2, a3=unknown, a7=a1+152; fp f13=0x44e06000.
  The `bgezall` at 0x2e3aee0 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=0x40400000.
  The `bgezall` at 0x2e3aef8 calls `feedback` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3af08 calls `feedback` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3af18 calls `feedback` with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `bgezall` at 0x2e3af40 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=[a0+38328]:1, a2=0x2, a3=unknown; fp f13=0x44e0e000.
  The `bgezall` at 0x2e3af60 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown; fp f13=0x44e0e000.
  The `bgezall` at 0x2e3af80 calls `__glFeedbackTag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a7=a1+152; fp f13=0x44e0e000.
  The `beq` branch at 0x2e3ab44 targets 0x2e3ac78, is taken when a5(=entry(0x9880)) == at(=[a0+39045]:1), and falls through when a5(=entry(0x9880)) != at(=[a0+39045]:1).
  The `beq` branch at 0x2e3ab60 targets 0x2e3aca0, is taken when a7(=0x1d00) == t0(=[a0+1648]), and falls through when a7(=0x1d00) != t0(=[a0+1648]).
  The `beq` branch at 0x2e3ab68 targets 0x2e3add8, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `beq` branch at 0x2e3abbc targets 0x2e3abd8, is taken when (s1(unknown) & a5(unknown)) == 0, and falls through when (s1(unknown) & a5(unknown)) != 0.
  The `beq` branch at 0x2e3abe4 targets 0x2e3ac00, is taken when (s1(unknown) & a6(unknown)) == 0, and falls through when (s1(unknown) & a6(unknown)) != 0.
  The `beq` branch at 0x2e3ac0c targets 0x2e3ac2c, is taken when (s1(unknown) & a7(unknown)) == 0, and falls through when (s1(unknown) & a7(unknown)) != 0.
  The `beq` branch at 0x2e3ac3c targets 0x2e3ad14, is taken when a0(=entry(0x9882)) == 0, and falls through when a0(=entry(0x9882)) != 0.
  The `beq` branch at 0x2e3ac44 targets 0x2e3ade8, is taken when a0(=entry(0x9882)) == s1(=0x1), and falls through when a0(=entry(0x9882)) != s1(=0x1).
  The `beq` branch at 0x2e3ac4c targets 0x2e3aec8, is taken when a0(=entry(0x9882)) == a2(=0x2), and falls through when a0(=entry(0x9882)) != a2(=0x2).
  The `beq` branch at 0x2e3ac70 targets 0x2e3ada8, is taken when a3(=0x1d00) == a4(=[a0+1648]), and falls through when a3(=0x1d00) != a4(=[a0+1648]).
  The `beq` branch at 0x2e3aca0 targets 0x2e3af28, is taken when a0(unknown) == 0, and falls through when a0(unknown) != 0.
  The `beq` branch at 0x2e3acf4 targets 0x2e3abb0, is taken when (a5(unknown) & 0x1b) == 0, and falls through when (a5(unknown) & 0x1b) != 0.
  The `beq` branch at 0x2e3ad18 targets 0x2e3ad44, is taken when t1(=[a1+192]:1) == 0, and falls through when t1(=[a1+192]:1) != 0.
  The `beq` branch at 0x2e3ad4c targets 0x2e3ad74, is taken when t8(=[a2+192]:1) == 0, and falls through when t8(=[a2+192]:1) != 0.
  The `beq` branch at 0x2e3ad78 targets 0x2e3ac54, is taken when t9(=[a3+192]:1) == 0, and falls through when t9(=[a3+192]:1) != 0.
  The `beq` branch at 0x2e3adec targets 0x2e3ae34, is taken when a0(=[a1+192]:1) == 0, and falls through when a0(=[a1+192]:1) != 0.
  The `beq` branch at 0x2e3adf8 targets 0x2e3af34, is taken when a1(=[a0+38328]:1) == 0, and falls through when a1(=[a0+38328]:1) != 0.
  The `beq` branch at 0x2e3ae3c targets 0x2e3ae7c, is taken when t8(=[a2+192]:1) == 0, and falls through when t8(=[a2+192]:1) != 0.
  The `beq` branch at 0x2e3ae48 targets 0x2e3af50, is taken when t9(=[a0+38328]:1) == 0, and falls through when t9(=[a0+38328]:1) != 0.
  The `beq` branch at 0x2e3ae80 targets 0x2e3ac54, is taken when ra(=[a3+192]:1) == 0, and falls through when ra(=[a3+192]:1) != 0.
  The `beq` branch at 0x2e3ae8c targets 0x2e3af70, is taken when at(=[a0+38328]:1) == 0, and falls through when at(=[a0+38328]:1) != 0.
  The return at 0x2e3ac98 has v0 = unknown.
  The return at 0x2e3add0 has v0 = [a0+36080]:8.
- `__glim_GetMaterialfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3d8e0 (n64).
  It occupies 404 bytes.
  The `jalr` at 0x2e3d92c calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=[0x1020]:8+1760.
  The `jalr` at 0x2e3d974 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `jalr` at 0x2e3da4c calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1020]:8, a5=a2 at entry (arg2).
  The `jalr` at 0x2e3da64 calls `__glUnScaleColorf` with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=([0x1020]:8 + one of 0x6c0, 0x710), a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `beq` branch at 0x2e3d908 targets 0x2e3da48, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e3d918 targets 0x2e3d9b8, is taken when a0 == a2(=0x404), and falls through when a0 != a2(=0x404).
  The `beq` branch at 0x2e3d920 targets 0x2e3d93c, is taken when a0 == a3(=0x405), and falls through when a0 != a3(=0x405).
  The `beq` branch at 0x2e3d940 targets 0x2e3d9c0, is taken when a1 == a7(=0x1603), and falls through when a1 != a7(=0x1603).
  The `beq` branch at 0x2e3d948 targets 0x2e3d9e8, is taken when a1 == t0(=0x1601), and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0x2e3d950 targets 0x2e3da5c, is taken when a1 == t1(=0x1600), and falls through when a1 != t1(=0x1600).
  The `beq` branch at 0x2e3d95c targets 0x2e3d9f4, is taken when a1 == t2(=0x1200), and falls through when a1 != t2(=0x1200).
  The `beq` branch at 0x2e3d964 targets 0x2e3da24, is taken when a1 == t3(=0x1201), and falls through when a1 != t3(=0x1201).
  The `beq` branch at 0x2e3d96c targets 0x2e3d98c, is taken when a1 == t8(=0x1202), and falls through when a1 != t8(=0x1202).
  The return at 0x2e3d984 has v0 = unknown.
  The return at 0x2e3d9b0 has v0 = 0x1.
  The return at 0x2e3d9e0 has v0 = 0x1.
  The return at 0x2e3da1c has v0 = 0x1.
- `__glConvertResult` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3ecd0 (n64).
  It occupies 3128 bytes.
  The `swc1` at 0x2e3f1dc stores 4 bytes to a4 (arg4 at entry) +0x0 (value [a2]).
  The `swc1` at 0x2e3f2dc stores 4 bytes to a4 (arg4 at entry) +0x0 (value [a2]).
  The `sw` at 0x2e3f3c4 stores 4 bytes to a4 (arg4 at entry) +0x0 (value [a2]:1).
  The `sw` at 0x2e3f6fc stores 4 bytes to a4 (arg4 at entry) +0x0 (value [a2]).
  The `jalr` at 0x2e3f614 calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0x2e3f84c calls `floorf` with a0=a0 at entry (arg0), a1=a0+65536, a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f15=[a2].
  The `jalr` at 0x2e3f87c calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f15=[a2+4].
  The `jalr` at 0x2e3f8ac calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f15=[a2+8].
  The `jalr` at 0x2e3f8dc calls `floorf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f15=[a2+12].
  The `beq` branch at 0x2e3ecf8 targets 0x2e3eeb8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2e3ed04 targets 0x2e3ef94, is taken when a1 == v0(=0x5), and falls through when a1 != v0(=0x5).
  The `beq` branch at 0x2e3ed0c targets 0x2e3edcc, is taken when a1 == v1(=0x6), and falls through when a1 != v1(=0x6).
  The `beq` branch at 0x2e3ed18 targets 0x2e3f06c, is taken when a1 == a0(=0x3), and falls through when a1 != a0(=0x3).
  The `bne` branch at 0x2e3ed20 targets 0x2e3ee98, is taken when a1 != a7(=0x4), and falls through when a1 == a7(=0x4).
  The `beq` branch at 0x2e3ed28 targets 0x2e3f118, is taken when a3 == a1(=0x1), and falls through when a3 != a1(=0x1).
  The `beq` branch at 0x2e3ed30 targets 0x2e3f214, is taken when a3 == a6(=0x2), and falls through when a3 != a6(=0x2).
  The `beq` branch at 0x2e3ed38 targets 0x2e3f39c, is taken when a3 == a0(=0x3), and falls through when a3 != a0(=0x3).
  The `bne` branch at 0x2e3ed40 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3ed48 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3ed58 targets 0x2e3ed7c, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e3ed74 targets 0x2e3ed60, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e3ed80 targets 0x2e3edc4, is taken when t1(unknown) == 0, and falls through when t1(unknown) != 0.
  The `bne` branch at 0x2e3edbc targets 0x2e3ed88, is taken when a4(unknown) != a3(=(a5 + a4)), and falls through when a4(unknown) == a3(=(a5 + a4)).
  The `beq` branch at 0x2e3edcc targets 0x2e3f730, is taken when a3 == ra(=0x1), and falls through when a3 != ra(=0x1).
  The `beq` branch at 0x2e3edd4 targets 0x2e3f798, is taken when a3 == at(=0x2), and falls through when a3 != at(=0x2).
  The `beq` branch at 0x2e3eddc targets 0x2e3f810, is taken when a3 == v0(=0x3), and falls through when a3 != v0(=0x3).
  The `bne` branch at 0x2e3ede4 targets 0x2e3ee9c, is taken when a3 != v1(=0x4), and falls through when a3 == v1(=0x4).
  The `blez` branch at 0x2e3edec targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3ee04 targets 0x2e3ee30, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3ee28 targets 0x2e3ee0c, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3ee34 targets 0x2e3ee98, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3ee90 targets 0x2e3ee3c, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3eebc targets 0x2e3f1b4, is taken when a3 == a0(=0x1), and falls through when a3 != a0(=0x1).
  The `beq` branch at 0x2e3eec4 targets 0x2e3f314, is taken when a3 == a1(=0x2), and falls through when a3 != a1(=0x2).
  The `beq` branch at 0x2e3eecc targets 0x2e3f484, is taken when a3 == a6(=0x3), and falls through when a3 != a6(=0x3).
  The `bne` branch at 0x2e3eed4 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3eedc targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3eef8 targets 0x2e3ef24, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3ef1c targets 0x2e3ef00, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3ef28 targets 0x2e3ef8c, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3ef84 targets 0x2e3ef30, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3ef98 targets 0x2e3f2b0, is taken when a3 == a0(=0x1), and falls through when a3 != a0(=0x1).
  The `beq` branch at 0x2e3efa0 targets 0x2e3f3f8, is taken when a3 == a1(=0x2), and falls through when a3 != a1(=0x2).
  The `beq` branch at 0x2e3efa8 targets 0x2e3f5e4, is taken when a3 == a6(=0x3), and falls through when a3 != a6(=0x3).
  The `bne` branch at 0x2e3efb0 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3efb8 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3efd0 targets 0x2e3effc, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3eff4 targets 0x2e3efd8, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3f000 targets 0x2e3f064, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3f05c targets 0x2e3f008, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f070 targets 0x2e3f548, is taken when a3 == a1(=0x1), and falls through when a3 != a1(=0x1).
  The `beq` branch at 0x2e3f078 targets 0x2e3f638, is taken when a3 == a6(=0x2), and falls through when a3 != a6(=0x2).
  The `beq` branch at 0x2e3f080 targets 0x2e3f6d4, is taken when a3 == a0(=0x3), and falls through when a3 != a0(=0x3).
  The `bne` branch at 0x2e3f088 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3f090 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f0a4 targets 0x2e3f0c8, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f0c0 targets 0x2e3f0ac, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3f0cc targets 0x2e3f110, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3f108 targets 0x2e3f0d4, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f118 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f12c targets 0x2e3f154, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f14c targets 0x2e3f134, is taken when a3(unknown) != 0, and falls through when a3(unknown) == 0.
  The `beq` branch at 0x2e3f158 targets 0x2e3f1ac, is taken when a3(unknown) == 0, and falls through when a3(unknown) != 0.
  The `bne` branch at 0x2e3f1a4 targets 0x2e3f160, is taken when s2(unknown) != a1(=((a5 << 0x2) + a4)), and falls through when s2(unknown) == a1(=((a5 << 0x2) + a4)).
  The `blez` branch at 0x2e3f1b4 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f1c8 targets 0x2e3f1e0, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f1e4 targets 0x2e3f20c, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3f204 targets 0x2e3f1f0, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f214 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f228 targets 0x2e3f250, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f248 targets 0x2e3f230, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e3f254 targets 0x2e3f2a8, is taken when a6(unknown) == 0, and falls through when a6(unknown) != 0.
  The `bne` branch at 0x2e3f2a0 targets 0x2e3f25c, is taken when s1(unknown) != a3(=((a5 << 0x3) + a4)), and falls through when s1(unknown) == a3(=((a5 << 0x3) + a4)).
  The `blez` branch at 0x2e3f2b0 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f2c8 targets 0x2e3f2e0, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f2e4 targets 0x2e3f30c, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3f304 targets 0x2e3f2f0, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f314 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f328 targets 0x2e3f34c, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f344 targets 0x2e3f330, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3f350 targets 0x2e3f394, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e3f38c targets 0x2e3f358, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f39c targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f3b0 targets 0x2e3f3c8, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f3cc targets 0x2e3f3f0, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e3f3e8 targets 0x2e3f3d4, is taken when s2(unknown) != a1(=((a5 << 0x2) + a4)), and falls through when s2(unknown) == a1(=((a5 << 0x2) + a4)).
  The `blez` branch at 0x2e3f3f8 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f410 targets 0x2e3f434, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f42c targets 0x2e3f418, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3f438 targets 0x2e3f47c, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e3f474 targets 0x2e3f440, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f484 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f4a0 targets 0x2e3f4d8, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `bc1f` branch at 0x2e3f4b4 targets 0x2e3f4c4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bnel` branch at 0x2e3f4dc targets 0x2e3f500, is taken when t9(unknown) != 0, and falls through when t9(unknown) == 0.
  The `beq` branch at 0x2e3f4f4 targets 0x2e3f4e4, is taken when s1(unknown) == s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) != s0(=((a5 << 0x2) + a2)).
  The `bc1f` branch at 0x2e3f508 targets 0x2e3f518, is taken when not (f7 <= f21 (c.le.d at 0x2e3f504)), and falls through when f7 <= f21 (c.le.d at 0x2e3f504).
  The `bc1f` branch at 0x2e3f538 targets 0x2e3f4ec, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `blez` branch at 0x2e3f548 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f55c targets 0x2e3f584, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f57c targets 0x2e3f564, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3f588 targets 0x2e3f5dc, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3f5d4 targets 0x2e3f590, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f5e4 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `bne` branch at 0x2e3f628 targets 0x2e3f600, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f638 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f64c targets 0x2e3f674, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f66c targets 0x2e3f654, is taken when a0(unknown) != 0, and falls through when a0(unknown) == 0.
  The `beq` branch at 0x2e3f678 targets 0x2e3f6cc, is taken when t9(unknown) == 0, and falls through when t9(unknown) != 0.
  The `bne` branch at 0x2e3f6c4 targets 0x2e3f680, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The `blez` branch at 0x2e3f6d4 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f6e8 targets 0x2e3f700, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f704 targets 0x2e3f728, is taken when ra(unknown) == 0, and falls through when ra(unknown) != 0.
  The `bne` branch at 0x2e3f720 targets 0x2e3f70c, is taken when s1(unknown) != s0(=((a5 << 0x2) + a2)), and falls through when s1(unknown) == s0(=((a5 << 0x2) + a2)).
  The return at 0x2e3eeb0 has v0 = unknown.
  The return at 0x2e3f790 has v0 = 0x5.
  The return at 0x2e3f808 has v0 = 0x3.
  The return at 0x2e3f900 has v0 = ret(floorf).
- `__glDoGet` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3f910 (n64).
  It occupies 14888 bytes.
  The `bgezall` at 0x2e3fab8 calls `__glConvertResult` with a0=[0x1020]:8, a1=0x6, a2=sp-1256, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `bgezall` at 0x2e3fb60 calls `__glConvertResult` with a0=[0x1020]:8, a1=0x3, a2=sp-1760, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `bgezall` at 0x2e3fc04 calls `__glConvertResult` with a0=[0x1020]:8, a1=0x0, a2=sp-456, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `bgezall` at 0x2e3fc68 calls `__glConvertResult` with a0=[0x1020]:8, a1=0x4, a2=sp-1360, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `jalr` at 0x2e3fca0 calls `__glim_IsEnabled` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a7=sp-1359.
  The `bgezall` at 0x2e3fce4 calls `__glConvertResult` with a0=[0x1020]:8, a1=0x5, a2=sp-856, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `jalr` at 0x2e400a8 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e409e0 calls `__glSetError` with a0=0x500, a1=unknown, a2=unknown, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `bgezall` at 0x2e41960 calls `__glUnScaleColorf` with a0=[0x1020]:8, a1=sp-856, a2=[0x1020]:8+1652, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e41eac calls `__glLookUpTextureTexobjs` with a0=[0x1020]:8, a1=0xde1, a2=unknown, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e42880 calls `__glLookUpTextureTexobjs` with a0=[0x1020]:8, a1=0xde0, a2=unknown, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e42998 calls `__glLookUpTextureTexobjs` with a0=[0x1020]:8, a1=0x806f, a2=unknown, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `beq` branch at 0x2e3f93c targets 0x2e400a4, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bne` branch at 0x2e3f948 targets 0x2e3f9c0, is taken when a0 < 0xd33 (unsigned), and falls through when a0 >= 0xd33 (unsigned).
  The `beq` branch at 0x2e3f954 targets 0x2e3fa2c, is taken when a0 >= 0xd34 (unsigned), and falls through when a0 < 0xd34 (unsigned).
  The `bne` branch at 0x2e3f988 targets 0x2e3fb48, is taken when a7(=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0)) != t8(=sp-1760), and falls through when a7(=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0)) == t8(=sp-1760).
  The `bne` branch at 0x2e3f990 targets 0x2e3fbf4, is taken when t0(unknown) != a2(=sp-456), and falls through when t0(unknown) == a2(=sp-456).
  The `bne` branch at 0x2e3f998 targets 0x2e3fc54, is taken when t1(unknown) != a0(=sp-1360), and falls through when t1(unknown) == a0(=sp-1360).
  The `bne` branch at 0x2e3f9a0 targets 0x2e3fcd0, is taken when t2(unknown) != a1(=sp-856), and falls through when t2(unknown) == a1(=sp-856).
  The `bne` branch at 0x2e3f9a8 targets 0x2e3faa0, is taken when t3(=(sp + one of -0x4e8, -0x4d8)) != a6(=sp-1256), and falls through when t3(=(sp + one of -0x4e8, -0x4d8)) == a6(=sp-1256).
  The `bne` branch at 0x2e3f9c0 targets 0x2e3fa68, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e3f9cc targets 0x2e3fc90, is taken when a0 < 0xbc1 (unsigned), and falls through when a0 >= 0xbc1 (unsigned).
  The `bne` branch at 0x2e3f9d8 targets 0x2e3fc14, is taken when a0 < 0xcb4 (unsigned), and falls through when a0 >= 0xcb4 (unsigned).
  The `bne` branch at 0x2e3f9e4 targets 0x2e3fe28, is taken when a0 < 0xcb5 (unsigned), and falls through when a0 >= 0xcb5 (unsigned).
  The `bne` branch at 0x2e3f9f0 targets 0x2e3ff88, is taken when a0 < 0xd11 (unsigned), and falls through when a0 >= 0xd11 (unsigned).
  The `beq` branch at 0x2e3f9fc targets 0x2e40308, is taken when a0 >= 0xd12 (unsigned), and falls through when a0 < 0xd12 (unsigned).
  The `bne` branch at 0x2e3fa30 targets 0x2e3fac8, is taken when a0 < a1(=0x8020) (unsigned), and falls through when a0 >= a1(=0x8020) (unsigned).
  The `bne` branch at 0x2e3fa3c targets 0x2e3fcf4, is taken when a1(=0x8020) < a0 (unsigned), and falls through when a1(=0x8020) >= a0 (unsigned).
  The `bne` branch at 0x2e3fa68 targets 0x2e3fb70, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e3fa74 targets 0x2e3fd30, is taken when a0 >= 0xb55 (unsigned), and falls through when a0 < 0xb55 (unsigned).
  The `bne` branch at 0x2e3fac8 targets 0x2e3fd68, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e3fad4 targets 0x2e3fc90, is taken when a0 < 0xdb6 (unsigned), and falls through when a0 >= 0xdb6 (unsigned).
  The `bne` branch at 0x2e3fae0 targets 0x2e3fff8, is taken when a0 < 0x3005 (unsigned), and falls through when a0 >= 0x3005 (unsigned).
  The `bne` branch at 0x2e3fae8 targets 0x2e3fc90, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e3faf8 targets 0x2e404bc, is taken when a0 < a1(=0x8005) (unsigned), and falls through when a0 >= a1(=0x8005) (unsigned).
  The `bne` branch at 0x2e3fb00 targets 0x2e40bac, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `bne` branch at 0x2e3fb70 targets 0x2e3fda0, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e3fb7c targets 0x2e3fc90, is taken when a0 < 0xb25 (unsigned), and falls through when a0 >= 0xb25 (unsigned).
  The `bne` branch at 0x2e3fb88 targets 0x2e4006c, is taken when a0 < 0xb42 (unsigned), and falls through when a0 >= 0xb42 (unsigned).
  The `bne` branch at 0x2e3fb94 targets 0x2e3fc90, is taken when a0 < 0xb43 (unsigned), and falls through when a0 >= 0xb43 (unsigned).
  The `bne` branch at 0x2e3fba0 targets 0x2e40578, is taken when a0 < 0xb50 (unsigned), and falls through when a0 >= 0xb50 (unsigned).
  The `bne` branch at 0x2e3fbac targets 0x2e3fc90, is taken when a0 < 0xb51 (unsigned), and falls through when a0 >= 0xb51 (unsigned).
  The `bne` branch at 0x2e3fbb8 targets 0x2e41050, is taken when a0 < 0xb52 (unsigned), and falls through when a0 >= 0xb52 (unsigned).
  The `beq` branch at 0x2e3fbc4 targets 0x2e41948, is taken when a0 >= 0xb53 (unsigned), and falls through when a0 < 0xb53 (unsigned).
  The `bne` branch at 0x2e3fc14 targets 0x2e3fddc, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e3fc20 targets 0x2e3ffc0, is taken when a0 >= 0xc31 (unsigned), and falls through when a0 < 0xc31 (unsigned).
  The `bne` branch at 0x2e3fc78 targets 0x2e4173c, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e3fc84 targets 0x2e409dc, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e3fcfc targets 0x2e3fe5c, is taken when a0 < a1(=0x8087) (unsigned), and falls through when a0 >= a1(=0x8087) (unsigned).
  The `bne` branch at 0x2e3fd04 targets 0x2e400b8, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2e3fd30 targets 0x2e3fee4, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e3fd3c targets 0x2e4019c, is taken when a0 >= 0xb93 (unsigned), and falls through when a0 < 0xb93 (unsigned).
  The `bne` branch at 0x2e3fd68 targets 0x2e3feac, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `beq` branch at 0x2e3fd74 targets 0x2e40140, is taken when a0 >= 0xd5b (unsigned), and falls through when a0 < 0xd5b (unsigned).
  The `bne` branch at 0x2e3fda0 targets 0x2e3ff38, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `beq` branch at 0x2e3fdac targets 0x2e401ec, is taken when a0 >= 0xb0a (unsigned), and falls through when a0 < 0xb0a (unsigned).
  The `bne` branch at 0x2e3fddc targets 0x2e40034, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e3fde8 targets 0x2e403cc, is taken when a0 >= 0xc01 (unsigned), and falls through when a0 < 0xc01 (unsigned).
  The `bne` branch at 0x2e3fe14 targets 0x2e41ee0, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e3fe1c targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e3fe64 targets 0x2e400f0, is taken when a0 < a1(=0x8075) (unsigned), and falls through when a0 >= a1(=0x8075) (unsigned).
  The `beq` branch at 0x2e3fe6c targets 0x2e3fc90, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `bne` branch at 0x2e3fe7c targets 0x2e40928, is taken when a0 < a1(=0x807e) (unsigned), and falls through when a0 >= a1(=0x807e) (unsigned).
  The `bne` branch at 0x2e3fe84 targets 0x2e41014, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e3feac targets 0x2e40248, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e3feb8 targets 0x2e40648, is taken when a0 >= 0xd52 (unsigned), and falls through when a0 < 0xd52 (unsigned).
  The `bne` branch at 0x2e3fee4 targets 0x2e40280, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e3fef0 targets 0x2e406b8, is taken when a0 >= 0xb67 (unsigned), and falls through when a0 < 0xb67 (unsigned).
  The `bne` branch at 0x2e3ff38 targets 0x2e402bc, is taken when t8(unknown) != 0, and falls through when t8(unknown) == 0.
  The `beq` branch at 0x2e3ff44 targets 0x2e40798, is taken when a0 >= 0xb05 (unsigned), and falls through when a0 < 0xb05 (unsigned).
  The `beq` branch at 0x2e3ff50 targets 0x2e4241c, is taken when ra(=[[0x1020]:8+3557]:1) == 0, and falls through when ra(=[[0x1020]:8+3557]:1) != 0.
  The `bne` branch at 0x2e3ff88 targets 0x2e40344, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e3ff94 targets 0x2e408b0, is taken when a0 >= 0xcf5 (unsigned), and falls through when a0 < 0xcf5 (unsigned).
  The `bne` branch at 0x2e3ffc0 targets 0x2e40394, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e3ffcc targets 0x2e408e8, is taken when a0 >= 0xc55 (unsigned), and falls through when a0 < 0xc55 (unsigned).
  The `bne` branch at 0x2e3fffc targets 0x2e40408, is taken when a0 < 0xdf1 (unsigned), and falls through when a0 >= 0xdf1 (unsigned).
  The `beq` branch at 0x2e40008 targets 0x2e40964, is taken when a0 >= 0xdf2 (unsigned), and falls through when a0 < 0xdf2 (unsigned).
  The `bne` branch at 0x2e40034 targets 0x2e40440, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `beq` branch at 0x2e40040 targets 0x2e40a7c, is taken when a0 >= 0xbe2 (unsigned), and falls through when a0 < 0xbe2 (unsigned).
  The `bne` branch at 0x2e4006c targets 0x2e40484, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `beq` branch at 0x2e40078 targets 0x2e40aa8, is taken when a0 >= 0xb33 (unsigned), and falls through when a0 < 0xb33 (unsigned).
  The `bne` branch at 0x2e400bc targets 0x2e40504, is taken when a0 < a1(=0x80bb) (unsigned), and falls through when a0 >= a1(=0x80bb) (unsigned).
  The `bne` branch at 0x2e400c4 targets 0x2e40be8, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e400f8 targets 0x2e405b0, is taken when a0 < a1(=0x8069) (unsigned), and falls through when a0 >= a1(=0x8069) (unsigned).
  The `beq` branch at 0x2e40100 targets 0x2e41e9c, is taken when t2(unknown) == 0, and falls through when t2(unknown) != 0.
  The `bne` branch at 0x2e4010c targets 0x2e41278, is taken when a0 < a1(=0x806e) (unsigned), and falls through when a0 >= a1(=0x806e) (unsigned).
  The `bne` branch at 0x2e40114 targets 0x2e41b4c, is taken when t8(unknown) != 0, and falls through when t8(unknown) == 0.
  The `bne` branch at 0x2e40140 targets 0x2e40604, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `bne` branch at 0x2e4014c targets 0x2e3fc90, is taken when a0 < 0xd96 (unsigned), and falls through when a0 >= 0xd96 (unsigned).
  The `bne` branch at 0x2e40158 targets 0x2e41320, is taken when a0 < 0xdb1 (unsigned), and falls through when a0 >= 0xdb1 (unsigned).
  The `bne` branch at 0x2e40164 targets 0x2e3fc90, is taken when a0 < 0xdb2 (unsigned), and falls through when a0 >= 0xdb2 (unsigned).
  The `bne` branch at 0x2e40170 targets 0x2e42004, is taken when a0 < 0xdb3 (unsigned), and falls through when a0 >= 0xdb3 (unsigned).
  The `bne` branch at 0x2e4017c targets 0x2e3fc90, is taken when a0 < 0xdb4 (unsigned), and falls through when a0 >= 0xdb4 (unsigned).
  The `beq` branch at 0x2e4018c targets 0x2e3fc8c, is taken when a0 == a5(=0xdb4), and falls through when a0 != a5(=0xdb4).
  The `bne` branch at 0x2e4019c targets 0x2e40680, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e401a8 targets 0x2e40ca8, is taken when a0 >= 0xba3 (unsigned), and falls through when a0 < 0xba3 (unsigned).
  The `bne` branch at 0x2e401ec targets 0x2e40754, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `bne` branch at 0x2e401f8 targets 0x2e3fc90, is taken when a0 < 0xb21 (unsigned), and falls through when a0 >= 0xb21 (unsigned).
  The `bne` branch at 0x2e40204 targets 0x2e41468, is taken when a0 < 0xb22 (unsigned), and falls through when a0 >= 0xb22 (unsigned).
  The `beq` branch at 0x2e40210 targets 0x2e41e6c, is taken when a0 >= 0xb23 (unsigned), and falls through when a0 < 0xb23 (unsigned).
  The `bne` branch at 0x2e40248 targets 0x2e406f0, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40254 targets 0x2e40e08, is taken when a0 >= 0xd39 (unsigned), and falls through when a0 < 0xd39 (unsigned).
  The `bne` branch at 0x2e40280 targets 0x2e40728, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e4028c targets 0x2e40eb4, is taken when a0 >= 0xb62 (unsigned), and falls through when a0 < 0xb62 (unsigned).
  The `bne` branch at 0x2e402bc targets 0x2e4083c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e402c8 targets 0x2e40ef0, is taken when a0 >= 0xb03 (unsigned), and falls through when a0 < 0xb03 (unsigned).
  The `bne` branch at 0x2e40308 targets 0x2e40874, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `beq` branch at 0x2e40314 targets 0x2e40fd8, is taken when a0 >= 0xd1b (unsigned), and falls through when a0 < 0xd1b (unsigned).
  The `bne` branch at 0x2e40344 targets 0x2e409a8, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e40350 targets 0x2e3fe28, is taken when a0 < 0xcba (unsigned), and falls through when a0 >= 0xcba (unsigned).
  The `bne` branch at 0x2e4035c targets 0x2e41c24, is taken when a0 < 0xcf2 (unsigned), and falls through when a0 >= 0xcf2 (unsigned).
  The `beq` branch at 0x2e40368 targets 0x2e42700, is taken when a0 >= 0xcf3 (unsigned), and falls through when a0 < 0xcf3 (unsigned).
  The `bne` branch at 0x2e40394 targets 0x2e409f0, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e403a0 targets 0x2e411bc, is taken when a0 >= 0xc51 (unsigned), and falls through when a0 < 0xc51 (unsigned).
  The `bne` branch at 0x2e403cc targets 0x2e40a2c, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `beq` branch at 0x2e403d8 targets 0x2e411f4, is taken when a0 >= 0xc21 (unsigned), and falls through when a0 < 0xc21 (unsigned).
  The `bne` branch at 0x2e40408 targets 0x2e40ae8, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40414 targets 0x2e412f4, is taken when a0 >= 0xdd2 (unsigned), and falls through when a0 < 0xdd2 (unsigned).
  The `bne` branch at 0x2e40440 targets 0x2e40b38, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `bne` branch at 0x2e4044c targets 0x2e3fc90, is taken when a0 < 0xbd1 (unsigned), and falls through when a0 >= 0xbd1 (unsigned).
  The `bne` branch at 0x2e40458 targets 0x2e409e0, is taken when a0 != v0(=0xbe0), and falls through when a0 == v0(=0xbe0).
  The `bne` branch at 0x2e40484 targets 0x2e40b74, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40490 targets 0x2e41420, is taken when a0 >= 0xb31 (unsigned), and falls through when a0 < 0xb31 (unsigned).
  The `bne` branch at 0x2e404c0 targets 0x2e40c40, is taken when a0 < 0x4004 (unsigned), and falls through when a0 >= 0x4004 (unsigned).
  The `bne` branch at 0x2e404cc targets 0x2e3fc90, is taken when a0 < 0x4005 (unsigned), and falls through when a0 >= 0x4005 (unsigned).
  The `bne` branch at 0x2e404d8 targets 0x2e41990, is taken when a0 < 0x4006 (unsigned), and falls through when a0 >= 0x4006 (unsigned).
  The `bne` branch at 0x2e404e4 targets 0x2e3fc90, is taken when a0 < 0x4007 (unsigned), and falls through when a0 >= 0x4007 (unsigned).
  The `beq` branch at 0x2e404f4 targets 0x2e3fc8c, is taken when a0 == t2(=0x4007), and falls through when a0 != t2(=0x4007).
  The `bne` branch at 0x2e4050c targets 0x2e40c6c, is taken when a0 < a1(=0x80b2) (unsigned), and falls through when a0 >= a1(=0x80b2) (unsigned).
  The `bne` branch at 0x2e40514 targets 0x2e4155c, is taken when t8(unknown) != 0, and falls through when t8(unknown) == 0.
  The `bne` branch at 0x2e40578 targets 0x2e3fc78, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40584 targets 0x2e41594, is taken when a0 >= 0xb46 (unsigned), and falls through when a0 < 0xb46 (unsigned).
  The `bne` branch at 0x2e405b8 targets 0x2e40d68, is taken when a0 < a1(=0x802e) (unsigned), and falls through when a0 >= a1(=0x802e) (unsigned).
  The `beq` branch at 0x2e405c0 targets 0x2e3fc90, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e405d0 targets 0x2e41d84, is taken when a0 < a1(=0x8039) (unsigned), and falls through when a0 >= a1(=0x8039) (unsigned).
  The `bne` branch at 0x2e405d8 targets 0x2e42868, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e40604 targets 0x2e40da4, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e40610 targets 0x2e3fc90, is taken when a0 < 0xd92 (unsigned), and falls through when a0 >= 0xd92 (unsigned).
  The `bne` branch at 0x2e4061c targets 0x2e41e58, is taken when a0 < 0xd93 (unsigned), and falls through when a0 >= 0xd93 (unsigned).
  The `bne` branch at 0x2e40628 targets 0x2e3fc90, is taken when a0 < 0xd94 (unsigned), and falls through when a0 >= 0xd94 (unsigned).
  The `beq` branch at 0x2e40638 targets 0x2e3fc8c, is taken when a0 == t9(=0xd94), and falls through when a0 != t9(=0xd94).
  The `bne` branch at 0x2e40648 targets 0x2e40dd0, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e40654 targets 0x2e41618, is taken when a0 >= 0xd57 (unsigned), and falls through when a0 < 0xd57 (unsigned).
  The `bne` branch at 0x2e40680 targets 0x2e40e40, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `beq` branch at 0x2e4068c targets 0x2e416c0, is taken when a0 >= 0xb98 (unsigned), and falls through when a0 < 0xb98 (unsigned).
  The `bne` branch at 0x2e406b8 targets 0x2e40e78, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `beq` branch at 0x2e406c4 targets 0x2e416f8, is taken when a0 >= 0xb75 (unsigned), and falls through when a0 < 0xb75 (unsigned).
  The `bne` branch at 0x2e406f0 targets 0x2e40f38, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e406fc targets 0x2e41864, is taken when a0 >= 0xd37 (unsigned), and falls through when a0 < 0xd37 (unsigned).
  The `bne` branch at 0x2e40728 targets 0x2e40f6c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e40734 targets 0x2e3fc90, is taken when a0 < 0xb58 (unsigned), and falls through when a0 >= 0xb58 (unsigned).
  The `beq` branch at 0x2e40744 targets 0x2e3fc8c, is taken when a0 == at(=0xb60), and falls through when a0 != at(=0xb60).
  The `bne` branch at 0x2e40754 targets 0x2e40fa0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40760 targets 0x2e41918, is taken when a0 >= 0xb13 (unsigned), and falls through when a0 < 0xb13 (unsigned).
  The `bne` branch at 0x2e40798 targets 0x2e41080, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e407a4 targets 0x2e419a4, is taken when a0 >= 0xb08 (unsigned), and falls through when a0 < 0xb08 (unsigned).
  The `beq` branch at 0x2e407c8 targets 0x2e43250, is taken when t2(=[[0x1020]:8+5204]:1) == 0, and falls through when t2(=[[0x1020]:8+5204]:1) != 0.
  The `bne` branch at 0x2e4083c targets 0x2e410d0, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `beq` branch at 0x2e40844 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e40874 targets 0x2e41118, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40880 targets 0x2e41a68, is taken when a0 >= 0xd17 (unsigned), and falls through when a0 < 0xd17 (unsigned).
  The `bne` branch at 0x2e408b0 targets 0x2e41154, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e408bc targets 0x2e41aa4, is taken when a0 >= 0xd04 (unsigned), and falls through when a0 < 0xd04 (unsigned).
  The `bne` branch at 0x2e408e8 targets 0x2e41190, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `bne` branch at 0x2e408f4 targets 0x2e3fe28, is taken when a0 < 0xcb1 (unsigned), and falls through when a0 >= 0xcb1 (unsigned).
  The `bne` branch at 0x2e40900 targets 0x2e4272c, is taken when a0 < 0xcb2 (unsigned), and falls through when a0 >= 0xcb2 (unsigned).
  The `bne` branch at 0x2e4090c targets 0x2e3fe28, is taken when a0 < 0xcb3 (unsigned), and falls through when a0 >= 0xcb3 (unsigned).
  The `beq` branch at 0x2e40918 targets 0x2e3fe28, is taken when a0 == a1(=0xcb3), and falls through when a0 != a1(=0xcb3).
  The `bne` branch at 0x2e40930 targets 0x2e41248, is taken when a0 < a1(=0x807a) (unsigned), and falls through when a0 >= a1(=0x807a) (unsigned).
  The `bne` branch at 0x2e40938 targets 0x2e41b14, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e40964 targets 0x2e412b0, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2e40970 targets 0x2e3fc90, is taken when a0 < 0x3002 (unsigned), and falls through when a0 >= 0x3002 (unsigned).
  The `bne` branch at 0x2e4097c targets 0x2e41ff0, is taken when a0 < 0x3003 (unsigned), and falls through when a0 >= 0x3003 (unsigned).
  The `bne` branch at 0x2e40988 targets 0x2e3fc90, is taken when a0 < 0x3004 (unsigned), and falls through when a0 >= 0x3004 (unsigned).
  The `beq` branch at 0x2e40998 targets 0x2e3fc8c, is taken when a0 == t3(=0x3004), and falls through when a0 != t3(=0x3004).
  The `bne` branch at 0x2e409a8 targets 0x2e3fe14, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e409b4 targets 0x2e3fe28, is taken when a0 < 0xcb8 (unsigned), and falls through when a0 >= 0xcb8 (unsigned).
  The `beq` branch at 0x2e409c0 targets 0x2e3fe28, is taken when a0 == t9(=0xcb8), and falls through when a0 != t9(=0xcb8).
  The `beq` branch at 0x2e409d4 targets 0x2e3fc8c, is taken when a0 == ra(=0xb10), and falls through when a0 != ra(=0xb10).
  The `bne` branch at 0x2e409f0 targets 0x2e4134c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e409fc targets 0x2e41ca4, is taken when a0 >= 0xc34 (unsigned), and falls through when a0 < 0xc34 (unsigned).
  The `bne` branch at 0x2e40a2c targets 0x2e41388, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e40a38 targets 0x2e41cfc, is taken when a0 >= 0xc11 (unsigned), and falls through when a0 < 0xc11 (unsigned).
  The `bne` branch at 0x2e40a7c targets 0x2e413c0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e40a88 targets 0x2e3fc90, is taken when a0 < 0xbf2 (unsigned), and falls through when a0 >= 0xbf2 (unsigned).
  The `beq` branch at 0x2e40a98 targets 0x2e3fc8c, is taken when a0 == a5(=0xbf2), and falls through when a0 != a5(=0xbf2).
  The `bne` branch at 0x2e40aa8 targets 0x2e413f4, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e40ab4 targets 0x2e41d10, is taken when a0 >= 0xb41 (unsigned), and falls through when a0 < 0xb41 (unsigned).
  The `bne` branch at 0x2e40ae8 targets 0x2e4144c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e40af4 targets 0x2e3fc90, is taken when a0 < 0xdb9 (unsigned), and falls through when a0 >= 0xdb9 (unsigned).
  The `bne` branch at 0x2e40b00 targets 0x2e409e0, is taken when a0 != v0(=0xdd0), and falls through when a0 == v0(=0xdd0).
  The `bne` branch at 0x2e40b38 targets 0x2e41498, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40b44 targets 0x2e409e0, is taken when a0 >= 0xbc3 (unsigned), and falls through when a0 < 0xbc3 (unsigned).
  The `bne` branch at 0x2e40b74 targets 0x2e414c4, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40b80 targets 0x2e409e0, is taken when a0 >= 0xb27 (unsigned), and falls through when a0 < 0xb27 (unsigned).
  The `bne` branch at 0x2e40bb0 targets 0x2e414f0, is taken when a0 < a1(=0x801c) (unsigned), and falls through when a0 >= a1(=0x801c) (unsigned).
  The `bne` branch at 0x2e40bb8 targets 0x2e41f78, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e40bf0 targets 0x2e41520, is taken when a0 < a1(=0x81ef) (unsigned), and falls through when a0 >= a1(=0x81ef) (unsigned).
  The `bne` branch at 0x2e40bf8 targets 0x2e41fb8, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e40c40 targets 0x2e415c0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e40c4c targets 0x2e3fc90, is taken when a0 < 0x4003 (unsigned), and falls through when a0 >= 0x4003 (unsigned).
  The `beq` branch at 0x2e40c5c targets 0x2e3fc8c, is taken when a0 == v1(=0x4003), and falls through when a0 != v1(=0x4003).
  The `bne` branch at 0x2e40c74 targets 0x2e415dc, is taken when a0 < a1(=0x808c) (unsigned), and falls through when a0 >= a1(=0x808c) (unsigned).
  The `bne` branch at 0x2e40c7c targets 0x2e420ac, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e40ca8 targets 0x2e41650, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `beq` branch at 0x2e40cb4 targets 0x2e4217c, is taken when a0 >= 0xba8 (unsigned), and falls through when a0 < 0xba8 (unsigned).
  The `bne` branch at 0x2e40d70 targets 0x2e4176c, is taken when a0 < a1(=0x8023) (unsigned), and falls through when a0 >= a1(=0x8023) (unsigned).
  The `bne` branch at 0x2e40d78 targets 0x2e42214, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `bne` branch at 0x2e40da4 targets 0x2e417b0, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e40db0 targets 0x2e3fc90, is taken when a0 < 0xd81 (unsigned), and falls through when a0 >= 0xd81 (unsigned).
  The `beq` branch at 0x2e40dc0 targets 0x2e3fc8c, is taken when a0 == t3(=0xd90), and falls through when a0 != t3(=0xd90).
  The `bne` branch at 0x2e40dd0 targets 0x2e417f4, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40ddc targets 0x2e42258, is taken when a0 >= 0xd55 (unsigned), and falls through when a0 < 0xd55 (unsigned).
  The `bne` branch at 0x2e40e08 targets 0x2e41828, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40e14 targets 0x2e42284, is taken when a0 >= 0xd3c (unsigned), and falls through when a0 < 0xd3c (unsigned).
  The `bne` branch at 0x2e40e40 targets 0x2e41890, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40e4c targets 0x2e42348, is taken when a0 >= 0xb96 (unsigned), and falls through when a0 < 0xb96 (unsigned).
  The `bne` branch at 0x2e40e78 targets 0x2e418c4, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40e84 targets 0x2e423bc, is taken when a0 >= 0xb73 (unsigned), and falls through when a0 < 0xb73 (unsigned).
  The `bne` branch at 0x2e40eb4 targets 0x2e418e0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e40ec0 targets 0x2e423f0, is taken when a0 >= 0xb65 (unsigned), and falls through when a0 < 0xb65 (unsigned).
  The `bne` branch at 0x2e40ef0 targets 0x2e409e0, is taken when a0 != t1(=0xb03), and falls through when a0 == t1(=0xb03).
  The `bne` branch at 0x2e40f38 targets 0x2e419d4, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40f40 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e40f6c targets 0x2e41a00, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e40f74 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e40fa0 targets 0x2e409d0, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `beq` branch at 0x2e40fa8 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e40fd8 targets 0x2e41a2c, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e40fe4 targets 0x2e425a0, is taken when a0 >= 0xd20 (unsigned), and falls through when a0 < 0xd20 (unsigned).
  The `bne` branch at 0x2e4101c targets 0x2e41adc, is taken when a0 < a1(=0x8083) (unsigned), and falls through when a0 >= a1(=0x8083) (unsigned).
  The `bne` branch at 0x2e41024 targets 0x2e425d8, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e41050 targets 0x2e409e0, is taken when a0 != ra(=0xb51), and falls through when a0 == ra(=0xb51).
  The `bne` branch at 0x2e41080 targets 0x2e41b80, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e41088 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e410d0 targets 0x2e409e0, is taken when a0 != t1(=0xb00), and falls through when a0 == t1(=0xb00).
  The `bne` branch at 0x2e41118 targets 0x2e41bb8, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e41124 targets 0x2e42678, is taken when a0 >= 0xd15 (unsigned), and falls through when a0 < 0xd15 (unsigned).
  The `bne` branch at 0x2e41154 targets 0x2e41bec, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e41160 targets 0x2e426d4, is taken when a0 >= 0xd02 (unsigned), and falls through when a0 < 0xd02 (unsigned).
  The `bne` branch at 0x2e41190 targets 0x2e41c5c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e4119c targets 0x2e3fc90, is taken when a0 < 0xc63 (unsigned), and falls through when a0 >= 0xc63 (unsigned).
  The `beq` branch at 0x2e411ac targets 0x2e3fc8c, is taken when a0 == at(=0xc63), and falls through when a0 != at(=0xc63).
  The `bne` branch at 0x2e411bc targets 0x2e41c78, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `beq` branch at 0x2e411c8 targets 0x2e4273c, is taken when a0 >= 0xc53 (unsigned), and falls through when a0 < 0xc53 (unsigned).
  The `bne` branch at 0x2e411f4 targets 0x2e41cd0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e41200 targets 0x2e42768, is taken when a0 >= 0xc23 (unsigned), and falls through when a0 < 0xc23 (unsigned).
  The `bne` branch at 0x2e41250 targets 0x2e41d24, is taken when a0 < a1(=0x8078) (unsigned), and falls through when a0 >= a1(=0x8078) (unsigned).
  The `beq` branch at 0x2e41258 targets 0x2e3fc90, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `beq` branch at 0x2e41268 targets 0x2e3fc8c, is taken when a0 == t9(=0x8079), and falls through when a0 != t9(=0x8079).
  The `bne` branch at 0x2e41280 targets 0x2e41d48, is taken when a0 < a1(=0x806c) (unsigned), and falls through when a0 >= a1(=0x806c) (unsigned).
  The `bne` branch at 0x2e41288 targets 0x2e42838, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e412b0 targets 0x2e41dc4, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `beq` branch at 0x2e412bc targets 0x2e428b4, is taken when a0 >= 0x2a01 (unsigned), and falls through when a0 < 0x2a01 (unsigned).
  The `bne` branch at 0x2e412f4 targets 0x2e41dfc, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e41300 targets 0x2e3fc90, is taken when a0 < 0xde1 (unsigned), and falls through when a0 >= 0xde1 (unsigned).
  The `beq` branch at 0x2e41310 targets 0x2e3fc8c, is taken when a0 == t3(=0xde1), and falls through when a0 != t3(=0xde1).
  The `bne` branch at 0x2e41320 targets 0x2e41e3c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e4132c targets 0x2e3fc90, is taken when a0 < 0xd99 (unsigned), and falls through when a0 >= 0xd99 (unsigned).
  The `beq` branch at 0x2e4133c targets 0x2e3fc8c, is taken when a0 == t9(=0xdb0), and falls through when a0 != t9(=0xdb0).
  The `bne` branch at 0x2e4134c targets 0x2e41ef0, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e41354 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41388 targets 0x2e41f24, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `beq` branch at 0x2e41394 targets 0x2e409e0, is taken when a0 >= 0xc03 (unsigned), and falls through when a0 < 0xc03 (unsigned).
  The `bne` branch at 0x2e413c0 targets 0x2e41f50, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e413c8 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e413f4 targets 0x2e409e0, is taken when a0 != v0(=0xb33), and falls through when a0 == v0(=0xb33).
  The `bne` branch at 0x2e41420 targets 0x2e409e0, is taken when a0 != a1(=0xb31), and falls through when a0 == a1(=0xb31).
  The `bne` branch at 0x2e4144c targets 0x2e41f64, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e41458 targets 0x2e3fc8c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e41468 targets 0x2e409e0, is taken when a0 != a6(=0xb21), and falls through when a0 == a6(=0xb21).
  The `bne` branch at 0x2e41498 targets 0x2e409e0, is taken when a0 != t1(=0xbc1), and falls through when a0 == t1(=0xbc1).
  The `bne` branch at 0x2e414c4 targets 0x2e409e0, is taken when a0 != ra(=0xb25), and falls through when a0 == ra(=0xb25).
  The `bne` branch at 0x2e414f8 targets 0x2e42018, is taken when a0 < a1(=0x8011) (unsigned), and falls through when a0 >= a1(=0x8011) (unsigned).
  The `beq` branch at 0x2e41500 targets 0x2e3fc90, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `beq` branch at 0x2e41510 targets 0x2e3fc8c, is taken when a0 == a1(=0x8012), and falls through when a0 != a1(=0x8012).
  The `bne` branch at 0x2e41528 targets 0x2e42040, is taken when a0 < a1(=0x80e8) (unsigned), and falls through when a0 >= a1(=0x80e8) (unsigned).
  The `bne` branch at 0x2e41530 targets 0x2e42a9c, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e41560 targets 0x2e42070, is taken when a0 < a1(=0x80b7) (unsigned), and falls through when a0 >= a1(=0x80b7) (unsigned).
  The `bne` branch at 0x2e41568 targets 0x2e42ae8, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2e41594 targets 0x2e409e0, is taken when a0 != t1(=0xb46), and falls through when a0 == t1(=0xb46).
  The `bne` branch at 0x2e415c0 targets 0x2e421c0, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `bne` branch at 0x2e415cc targets 0x2e3fc8c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e415e4 targets 0x2e421d4, is taken when a0 < a1(=0x808a) (unsigned), and falls through when a0 >= a1(=0x808a) (unsigned).
  The `bne` branch at 0x2e415ec targets 0x2e42c1c, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `bne` branch at 0x2e41618 targets 0x2e4222c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e41624 targets 0x2e42c48, is taken when a0 >= 0xd59 (unsigned), and falls through when a0 < 0xd59 (unsigned).
  The `bne` branch at 0x2e41650 targets 0x2e422b0, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e4165c targets 0x2e42d28, is taken when a0 >= 0xba6 (unsigned), and falls through when a0 < 0xba6 (unsigned).
  The `bne` branch at 0x2e416c0 targets 0x2e4231c, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `beq` branch at 0x2e416cc targets 0x2e42ddc, is taken when a0 >= 0xba1 (unsigned), and falls through when a0 < 0xba1 (unsigned).
  The `bne` branch at 0x2e416f8 targets 0x2e42374, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2e41704 targets 0x2e3fc90, is taken when a0 < 0xb91 (unsigned), and falls through when a0 >= 0xb91 (unsigned).
  The `bne` branch at 0x2e41710 targets 0x2e409e0, is taken when a0 != t1(=0xb91), and falls through when a0 == t1(=0xb91).
  The `bne` branch at 0x2e4173c targets 0x2e409e0, is taken when a0 != ra(=0xb43), and falls through when a0 == ra(=0xb43).
  The `bne` branch at 0x2e41774 targets 0x2e4244c, is taken when a0 < a1(=0x8022) (unsigned), and falls through when a0 >= a1(=0x8022) (unsigned).
  The `bne` branch at 0x2e41780 targets 0x2e409e0, is taken when a1(=0x8022) < a0 (unsigned), and falls through when a1(=0x8022) >= a0 (unsigned).
  The `bne` branch at 0x2e417b0 targets 0x2e4247c, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e417bc targets 0x2e409e0, is taken when a0 >= 0xd71 (unsigned), and falls through when a0 < 0xd71 (unsigned).
  The `bne` branch at 0x2e417f4 targets 0x2e424a8, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `beq` branch at 0x2e417fc targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41828 targets 0x2e424d4, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `beq` branch at 0x2e41830 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41864 targets 0x2e409e0, is taken when a0 != a2(=0xd37), and falls through when a0 == a2(=0xd37).
  The `bne` branch at 0x2e41890 targets 0x2e42500, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e41898 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e418c4 targets 0x2e42530, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2e418d0 targets 0x2e3fc8c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e418e0 targets 0x2e42570, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e418e8 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41918 targets 0x2e409e0, is taken when a0 != t1(=0xb13), and falls through when a0 == t1(=0xb13).
  The `bne` branch at 0x2e4194c targets 0x2e409dc, is taken when a0 != t1(=0xb53), and falls through when a0 == t1(=0xb53).
  The `beq` branch at 0x2e41994 targets 0x2e3fc8c, is taken when a0 == t3(=0x4005), and falls through when a0 != t3(=0x4005).
  The `bne` branch at 0x2e419a4 targets 0x2e409e0, is taken when a0 != t8(=0xb08), and falls through when a0 == t8(=0xb08).
  The `bne` branch at 0x2e419d4 targets 0x2e409e0, is taken when a0 != ra(=0xd34), and falls through when a0 == ra(=0xd34).
  The `bne` branch at 0x2e41a00 targets 0x2e409e0, is taken when a0 != v0(=0xb55), and falls through when a0 == v0(=0xb55).
  The `bne` branch at 0x2e41a2c targets 0x2e42610, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e41a38 targets 0x2e42eac, is taken when a0 >= 0xd1e (unsigned), and falls through when a0 < 0xd1e (unsigned).
  The `bne` branch at 0x2e41a68 targets 0x2e42648, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e41a74 targets 0x2e42edc, is taken when a0 >= 0xd19 (unsigned), and falls through when a0 < 0xd19 (unsigned).
  The `bne` branch at 0x2e41aa4 targets 0x2e426a8, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e41ab0 targets 0x2e42f0c, is taken when a0 >= 0xd06 (unsigned), and falls through when a0 < 0xd06 (unsigned).
  The `bne` branch at 0x2e41ae4 targets 0x2e427b0, is taken when a0 < a1(=0x8081) (unsigned), and falls through when a0 >= a1(=0x8081) (unsigned).
  The `bne` branch at 0x2e41aec targets 0x2e42f6c, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e41b18 targets 0x2e427f0, is taken when a0 < a1(=0x807c) (unsigned), and falls through when a0 >= a1(=0x807c) (unsigned).
  The `bne` branch at 0x2e41b20 targets 0x2e42f9c, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `bne` branch at 0x2e41b50 targets 0x2e42820, is taken when a0 < a1(=0x8073) (unsigned), and falls through when a0 >= a1(=0x8073) (unsigned).
  The `bne` branch at 0x2e41b58 targets 0x2e42fc8, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2e41b80 targets 0x2e409e0, is taken when a0 != ra(=0xb05), and falls through when a0 == ra(=0xb05).
  The `beq` branch at 0x2e41b8c targets 0x2e432d0, is taken when at(=[[0x1020]:8+3556]:1) == 0, and falls through when at(=[[0x1020]:8+3556]:1) != 0.
  The `bne` branch at 0x2e41bb8 targets 0x2e428c8, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e41bc0 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41bec targets 0x2e428f4, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e41bf4 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41c24 targets 0x2e42920, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e41c2c targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e41c5c targets 0x2e42954, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `bne` branch at 0x2e41c68 targets 0x2e3fc8c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e41c78 targets 0x2e409e0, is taken when a0 != at(=0xc51), and falls through when a0 == at(=0xc51).
  The `bne` branch at 0x2e41ca4 targets 0x2e409e0, is taken when a0 != v1(=0xc40), and falls through when a0 == v1(=0xc40).
  The `bne` branch at 0x2e41cd0 targets 0x2e409e0, is taken when a0 != a1(=0xc21), and falls through when a0 == a1(=0xc21).
  The `beq` branch at 0x2e41d00 targets 0x2e3fc8c, is taken when a0 == a5(=0xc11), and falls through when a0 != a5(=0xc11).
  The `beq` branch at 0x2e41d14 targets 0x2e3fc8c, is taken when a0 == a6(=0xb41), and falls through when a0 != a6(=0xb41).
  The `bne` branch at 0x2e41d2c targets 0x2e42968, is taken when a0 < a1(=0x8077) (unsigned), and falls through when a0 >= a1(=0x8077) (unsigned).
  The `beq` branch at 0x2e41d38 targets 0x2e3fc8c, is taken when t0(unknown) == 0, and falls through when t0(unknown) != 0.
  The `bne` branch at 0x2e41d50 targets 0x2e42980, is taken when a0 < a1(=0x806b) (unsigned), and falls through when a0 >= a1(=0x806b) (unsigned).
  The `bne` branch at 0x2e41d58 targets 0x2e409e0, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e41d8c targets 0x2e429cc, is taken when a0 < a1(=0x8038) (unsigned), and falls through when a0 >= a1(=0x8038) (unsigned).
  The `bne` branch at 0x2e41d94 targets 0x2e409e0, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e41dc4 targets 0x2e429e4, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e41dd0 targets 0x2e409e0, is taken when a0 >= 0xdf5 (unsigned), and falls through when a0 < 0xdf5 (unsigned).
  The `bne` branch at 0x2e41dfc targets 0x2e42a10, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e41e08 targets 0x2e409e0, is taken when a0 >= 0xdd4 (unsigned), and falls through when a0 < 0xdd4 (unsigned).
  The `bne` branch at 0x2e41e3c targets 0x2e42a58, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `bne` branch at 0x2e41e48 targets 0x2e3fc8c, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `beq` branch at 0x2e41e5c targets 0x2e3fc8c, is taken when a0 == a5(=0xd92), and falls through when a0 != a5(=0xd92).
  The `bne` branch at 0x2e41e6c targets 0x2e409e0, is taken when a0 != a6(=0xb23), and falls through when a0 == a6(=0xb23).
  The `beq` branch at 0x2e41ee0 targets 0x2e3fe28, is taken when a0 == ra(=0xcb5), and falls through when a0 != ra(=0xcb5).
  The `bne` branch at 0x2e41ef0 targets 0x2e409e0, is taken when a0 != at(=0xc31), and falls through when a0 == at(=0xc31).
  The `bne` branch at 0x2e41f24 targets 0x2e409e0, is taken when a0 != t2(=0xc01), and falls through when a0 == t2(=0xc01).
  The `beq` branch at 0x2e41f54 targets 0x2e3fc8c, is taken when a0 == ra(=0xbe2), and falls through when a0 != ra(=0xbe2).
  The `beq` branch at 0x2e41f68 targets 0x2e3fc8c, is taken when a0 == at(=0xdb6), and falls through when a0 != at(=0xdb6).
  The `bne` branch at 0x2e41f7c targets 0x2e42a6c, is taken when a0 < a1(=0x801e) (unsigned), and falls through when a0 >= a1(=0x801e) (unsigned).
  The `bne` branch at 0x2e41f88 targets 0x2e4303c, is taken when a1(=0x801e) < a0 (unsigned), and falls through when a1(=0x801e) >= a0 (unsigned).
  The `bne` branch at 0x2e41fbc targets 0x2e42b28, is taken when a0 < a1(=0x842d) (unsigned), and falls through when a0 >= a1(=0x842d) (unsigned).
  The `bne` branch at 0x2e41fc4 targets 0x2e4306c, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `beq` branch at 0x2e41ff4 targets 0x2e3fc8c, is taken when a0 == ra(=0x3002), and falls through when a0 != ra(=0x3002).
  The `beq` branch at 0x2e42008 targets 0x2e3fc8c, is taken when a0 == at(=0xdb2), and falls through when a0 != at(=0xdb2).
  The `bne` branch at 0x2e42020 targets 0x2e42b60, is taken when a0 < a1(=0x8010) (unsigned), and falls through when a0 >= a1(=0x8010) (unsigned).
  The `beq` branch at 0x2e42030 targets 0x2e3fc8c, is taken when a1(=0x8010) >= a0 (unsigned), and falls through when a1(=0x8010) < a0 (unsigned).
  The `bne` branch at 0x2e42048 targets 0x2e42b8c, is taken when a0 < a1(=0x80d1) (unsigned), and falls through when a0 >= a1(=0x80d1) (unsigned).
  The `beq` branch at 0x2e42050 targets 0x2e3fc90, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `beq` branch at 0x2e42060 targets 0x2e3fc8c, is taken when a0 == a6(=0x80d2), and falls through when a0 != a6(=0x80d2).
  The `bne` branch at 0x2e42078 targets 0x2e42bb0, is taken when a0 < a1(=0x80b5) (unsigned), and falls through when a0 >= a1(=0x80b5) (unsigned).
  The `bne` branch at 0x2e42080 targets 0x2e430a4, is taken when t0(unknown) != 0, and falls through when t0(unknown) == 0.
  The `bne` branch at 0x2e420b0 targets 0x2e42bf0, is taken when a0 < a1(=0x8094) (unsigned), and falls through when a0 >= a1(=0x8094) (unsigned).
  The `beq` branch at 0x2e420bc targets 0x2e3fc90, is taken when a1(=0x8094) >= a0 (unsigned), and falls through when a1(=0x8094) < a0 (unsigned).
  The `bne` branch at 0x2e420c8 targets 0x2e409e0, is taken when a0 != t3(=0x80b1), and falls through when a0 == t3(=0x80b1).
  The `bne` branch at 0x2e4217c targets 0x2e42c74, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `beq` branch at 0x2e42188 targets 0x2e430d8, is taken when a0 >= 0xbb1 (unsigned), and falls through when a0 < 0xbb1 (unsigned).
  The `beq` branch at 0x2e421c4 targets 0x2e3fc8c, is taken when a0 == at(=0x4000), and falls through when a0 != at(=0x4000).
  The `bne` branch at 0x2e421dc targets 0x2e42df0, is taken when a0 < a1(=0x8089) (unsigned), and falls through when a0 >= a1(=0x8089) (unsigned).
  The `bne` branch at 0x2e421e8 targets 0x2e409e0, is taken when a1(=0x8089) < a0 (unsigned), and falls through when a1(=0x8089) >= a0 (unsigned).
  The `beq` branch at 0x2e4221c targets 0x2e3fc8c, is taken when a0 == a1(=0x8024), and falls through when a0 != a1(=0x8024).
  The `bne` branch at 0x2e4222c targets 0x2e409e0, is taken when a0 != a2(=0xd57), and falls through when a0 == a2(=0xd57).
  The `bne` branch at 0x2e42258 targets 0x2e409e0, is taken when a0 != a6(=0xd55), and falls through when a0 == a6(=0xd55).
  The `bne` branch at 0x2e42284 targets 0x2e409e0, is taken when a0 != t0(=0xd50), and falls through when a0 == t0(=0xd50).
  The `bne` branch at 0x2e422b0 targets 0x2e42e1c, is taken when ra(unknown) != 0, and falls through when ra(unknown) == 0.
  The `beq` branch at 0x2e422b8 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e4231c targets 0x2e409e0, is taken when a0 != a6(=0xb98), and falls through when a0 == a6(=0xb98).
  The `bne` branch at 0x2e42348 targets 0x2e409e0, is taken when a0 != t0(=0xb96), and falls through when a0 == t0(=0xb96).
  The `bne` branch at 0x2e42374 targets 0x2e409e0, is taken when a0 != ra(=0xb80), and falls through when a0 == ra(=0xb80).
  The `bne` branch at 0x2e423bc targets 0x2e409e0, is taken when a0 != t3(=0xb73), and falls through when a0 == t3(=0xb73).
  The `bne` branch at 0x2e423f0 targets 0x2e409e0, is taken when a0 != t3(=0xb65), and falls through when a0 == t3(=0xb65).
  The `bne` branch at 0x2e4244c targets 0x2e409e0, is taken when a0 != t8(=0x8021), and falls through when a0 == t8(=0x8021).
  The `bne` branch at 0x2e4247c targets 0x2e409e0, is taken when a0 != t1(=0xd5b), and falls through when a0 == t1(=0xd5b).
  The `bne` branch at 0x2e424a8 targets 0x2e409e0, is taken when a0 != ra(=0xd52), and falls through when a0 == ra(=0xd52).
  The `bne` branch at 0x2e424d4 targets 0x2e409e0, is taken when a0 != v0(=0xd39), and falls through when a0 == v0(=0xd39).
  The `bne` branch at 0x2e42504 targets 0x2e409e0, is taken when a0 != a1(=0xb93), and falls through when a0 == a1(=0xb93).
  The `bne` branch at 0x2e42530 targets 0x2e409e0, is taken when a0 != a5(=0xb70), and falls through when a0 == a5(=0xb70).
  The `bne` branch at 0x2e42570 targets 0x2e409e0, is taken when a0 != t3(=0xb62), and falls through when a0 == t3(=0xb62).
  The `bne` branch at 0x2e425a0 targets 0x2e42e80, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e425ac targets 0x2e431f8, is taken when a0 >= 0xd32 (unsigned), and falls through when a0 < 0xd32 (unsigned).
  The `bne` branch at 0x2e425dc targets 0x2e42f3c, is taken when a0 < a1(=0x8085) (unsigned), and falls through when a0 >= a1(=0x8085) (unsigned).
  The `bne` branch at 0x2e425e4 targets 0x2e43224, is taken when at(unknown) != 0, and falls through when at(unknown) == 0.
  The `bne` branch at 0x2e42610 targets 0x2e42fe0, is taken when v1(unknown) != 0, and falls through when v1(unknown) == 0.
  The `beq` branch at 0x2e42618 targets 0x2e409e0, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e42648 targets 0x2e409e0, is taken when a0 != t1(=0xd17), and falls through when a0 == t1(=0xd17).
  The `bne` branch at 0x2e42678 targets 0x2e409e0, is taken when a0 != t1(=0xd15), and falls through when a0 == t1(=0xd15).
  The `bne` branch at 0x2e426a8 targets 0x2e409e0, is taken when a0 != t1(=0xd04), and falls through when a0 == t1(=0xd04).
  The `bne` branch at 0x2e426d4 targets 0x2e409e0, is taken when a0 != ra(=0xd02), and falls through when a0 == ra(=0xd02).
  The `bne` branch at 0x2e42700 targets 0x2e409e0, is taken when a0 != v0(=0xcf3), and falls through when a0 == v0(=0xcf3).
  The `beq` branch at 0x2e4272c targets 0x2e3fe28, is taken when a0 == a1(=0xcb1), and falls through when a0 != a1(=0xcb1).
  The `bne` branch at 0x2e4273c targets 0x2e409e0, is taken when a0 != a2(=0xc53), and falls through when a0 == a2(=0xc53).
  The `bne` branch at 0x2e42768 targets 0x2e409e0, is taken when a0 != a6(=0xc23), and falls through when a0 == a6(=0xc23).
  The `bne` branch at 0x2e427b8 targets 0x2e43010, is taken when a0 < a1(=0x8080) (unsigned), and falls through when a0 >= a1(=0x8080) (unsigned).
  The `bne` branch at 0x2e427c4 targets 0x2e409e0, is taken when a1(=0x8080) < a0 (unsigned), and falls through when a1(=0x8080) >= a0 (unsigned).
  The `bne` branch at 0x2e427f4 targets 0x2e409e0, is taken when a0 != a1(=0x807b), and falls through when a0 == a1(=0x807b).
  The `beq` branch at 0x2e42828 targets 0x2e3fc8c, is taken when a0 == a5(=0x806f), and falls through when a0 != a5(=0x806f).
  The `bne` branch at 0x2e4283c targets 0x2e409e0, is taken when a0 != a6(=0x806d), and falls through when a0 == a6(=0x806d).
  The `bne` branch at 0x2e42870 targets 0x2e409dc, is taken when a0 != t0(=0x8068), and falls through when a0 == t0(=0x8068).
  The `beq` branch at 0x2e428b8 targets 0x2e3fc8c, is taken when a0 == ra(=0x3000), and falls through when a0 != ra(=0x3000).
  The `bne` branch at 0x2e428c8 targets 0x2e409e0, is taken when a0 != at(=0xd12), and falls through when a0 == at(=0xd12).
  The `bne` branch at 0x2e428f4 targets 0x2e409e0, is taken when a0 != v1(=0xcf5), and falls through when a0 == v1(=0xcf5).
  The `bne` branch at 0x2e42924 targets 0x2e409e0, is taken when a0 != a1(=0xcf0), and falls through when a0 == a1(=0xcf0).
  The `beq` branch at 0x2e42958 targets 0x2e3fc8c, is taken when a0 == ra(=0xc60), and falls through when a0 != ra(=0xc60).
  The `beq` branch at 0x2e42970 targets 0x2e3fc8c, is taken when a0 == at(=0x8076), and falls through when a0 != at(=0x8076).
  The `bne` branch at 0x2e42988 targets 0x2e409dc, is taken when a0 != v0(=0x806a), and falls through when a0 == v0(=0x806a).
  The `beq` branch at 0x2e429d4 targets 0x2e3fc8c, is taken when a0 == a1(=0x8037), and falls through when a0 != a1(=0x8037).
  The `bne` branch at 0x2e429e4 targets 0x2e409e0, is taken when a0 != a2(=0xdf2), and falls through when a0 == a2(=0xdf2).
  The `bne` branch at 0x2e42a10 targets 0x2e409e0, is taken when a0 != a6(=0xdd2), and falls through when a0 == a6(=0xdd2).
  The `beq` branch at 0x2e42a5c targets 0x2e3fc8c, is taken when a0 == t1(=0xd96), and falls through when a0 != t1(=0xd96).
  The `bne` branch at 0x2e42a6c targets 0x2e409e0, is taken when a0 != t2(=0x801d), and falls through when a0 == t2(=0x801d).
  The `bne` branch at 0x2e42aa0 targets 0x2e43150, is taken when a0 < a1(=0x817b) (unsigned), and falls through when a0 >= a1(=0x817b) (unsigned).
  The `beq` branch at 0x2e42aa8 targets 0x2e42ab8, is taken when t2(unknown) == 0, and falls through when t2(unknown) != 0.
  The `bne` branch at 0x2e42ab0 targets 0x2e409e0, is taken when a0 != t3(=0x817c), and falls through when a0 == t3(=0x817c).
  The `bne` branch at 0x2e42af0 targets 0x2e43180, is taken when a0 < a1(=0x80b9) (unsigned), and falls through when a0 >= a1(=0x80b9) (unsigned).
  The `bne` branch at 0x2e42afc targets 0x2e43288, is taken when a1(=0x80b9) < a0 (unsigned), and falls through when a1(=0x80b9) >= a0 (unsigned).
  The `bne` branch at 0x2e42b30 targets 0x2e43110, is taken when a0 < a1(=0x8322) (unsigned), and falls through when a0 >= a1(=0x8322) (unsigned).
  The `bne` branch at 0x2e42b38 targets 0x2e43258, is taken when t2(unknown) != 0, and falls through when t2(unknown) == 0.
  The `bne` branch at 0x2e42b60 targets 0x2e409e0, is taken when a0 != ra(=0x8009), and falls through when a0 == ra(=0x8009).
  The `bne` branch at 0x2e42b94 targets 0x2e431b0, is taken when a0 < a1(=0x80d0) (unsigned), and falls through when a0 >= a1(=0x80d0) (unsigned).
  The `beq` branch at 0x2e42ba0 targets 0x2e3fc8c, is taken when v1(unknown) == 0, and falls through when v1(unknown) != 0.
  The `bne` branch at 0x2e42bb8 targets 0x2e431c8, is taken when a0 < a1(=0x80b4) (unsigned), and falls through when a0 >= a1(=0x80b4) (unsigned).
  The `bne` branch at 0x2e42bc0 targets 0x2e409e0, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e42bf0 targets 0x2e409e0, is taken when a0 != t1(=0x808d), and falls through when a0 == t1(=0x808d).
  The `bne` branch at 0x2e42c1c targets 0x2e409e0, is taken when a0 != ra(=0x808b), and falls through when a0 == ra(=0x808b).
  The `bne` branch at 0x2e42c48 targets 0x2e409e0, is taken when a0 != v0(=0xd59), and falls through when a0 == v0(=0xd59).
  The `bne` branch at 0x2e42c74 targets 0x2e409e0, is taken when a0 != a1(=0xba8), and falls through when a0 == a1(=0xba8).
  The `bne` branch at 0x2e42d28 targets 0x2e409e0, is taken when a0 != t2(=0xba6), and falls through when a0 == t2(=0xba6).
  The `beq` branch at 0x2e42de0 targets 0x2e3fc8c, is taken when a0 == t2(=0xba1), and falls through when a0 != t2(=0xba1).
  The `bne` branch at 0x2e42df0 targets 0x2e409e0, is taken when a0 != t3(=0x8088), and falls through when a0 == t3(=0x8088).
  The `bne` branch at 0x2e42e1c targets 0x2e409e0, is taken when a0 != ra(=0xba3), and falls through when a0 == ra(=0xba3).
  The `bne` branch at 0x2e42e80 targets 0x2e409e0, is taken when a0 != a6(=0xd30), and falls through when a0 == a6(=0xd30).
  The `bne` branch at 0x2e42eac targets 0x2e409e0, is taken when a0 != t0(=0xd1e), and falls through when a0 == t0(=0xd1e).
  The `bne` branch at 0x2e42edc targets 0x2e409e0, is taken when a0 != t1(=0xd19), and falls through when a0 == t1(=0xd19).
  The `bne` branch at 0x2e42f0c targets 0x2e409e0, is taken when a0 != t1(=0xd10), and falls through when a0 == t1(=0xd10).
  The `bne` branch at 0x2e42f40 targets 0x2e409e0, is taken when a0 != ra(=0x8084), and falls through when a0 == ra(=0x8084).
  The `bne` branch at 0x2e42f70 targets 0x2e409e0, is taken when a0 != v0(=0x8082), and falls through when a0 == v0(=0x8082).
  The `bne` branch at 0x2e42f9c targets 0x2e409e0, is taken when a0 != a1(=0x807d), and falls through when a0 == a1(=0x807d).
  The `beq` branch at 0x2e42fd0 targets 0x2e3fc8c, is taken when a0 == a5(=0x8074), and falls through when a0 != a5(=0x8074).
  The `bne` branch at 0x2e42fe0 targets 0x2e409e0, is taken when a0 != a6(=0xd1b), and falls through when a0 == a6(=0xd1b).
  The `bne` branch at 0x2e43010 targets 0x2e409e0, is taken when a0 != t1(=0x807f), and falls through when a0 == t1(=0x807f).
  The `bne` branch at 0x2e4303c targets 0x2e409e0, is taken when a0 != ra(=0x801f), and falls through when a0 == ra(=0x801f).
  The `bne` branch at 0x2e43070 targets 0x2e432bc, is taken when a0 < a1(=0x85a0) (unsigned), and falls through when a0 >= a1(=0x85a0) (unsigned).
  The `bne` branch at 0x2e4307c targets 0x2e43308, is taken when a1(=0x85a0) < a0 (unsigned), and falls through when a1(=0x85a0) >= a0 (unsigned).
  The `bne` branch at 0x2e430a8 targets 0x2e409e0, is taken when a0 != ra(=0x80b6), and falls through when a0 == ra(=0x80b6).
  The `bne` branch at 0x2e430d8 targets 0x2e409e0, is taken when a0 != t1(=0xbb1), and falls through when a0 == t1(=0xbb1).
  The `bne` branch at 0x2e43118 targets 0x2e432dc, is taken when a0 < a1(=0x8316) (unsigned), and falls through when a0 >= a1(=0x8316) (unsigned).
  The `bne` branch at 0x2e43124 targets 0x2e409e0, is taken when a1(=0x8316) < a0 (unsigned), and falls through when a1(=0x8316) >= a0 (unsigned).
  The `bne` branch at 0x2e43154 targets 0x2e409e0, is taken when a0 != a1(=0x80e9), and falls through when a0 == a1(=0x80e9).
  The `bne` branch at 0x2e43180 targets 0x2e409e0, is taken when a0 != a5(=0x80b8), and falls through when a0 == a5(=0x80b8).
  The `beq` branch at 0x2e431b8 targets 0x2e3fc8c, is taken when a0 == t1(=0x80bc), and falls through when a0 != t1(=0x80bc).
  The `bne` branch at 0x2e431cc targets 0x2e409e0, is taken when a0 != t2(=0x80b3), and falls through when a0 == t2(=0x80b3).
  The `bne` branch at 0x2e431f8 targets 0x2e409e0, is taken when a0 != ra(=0xd32), and falls through when a0 == ra(=0xd32).
  The `bne` branch at 0x2e43224 targets 0x2e409e0, is taken when a0 != v0(=0x8086), and falls through when a0 == v0(=0x8086).
  The `bne` branch at 0x2e4325c targets 0x2e409e0, is taken when a0 != a1(=0x842c), and falls through when a0 == a1(=0x842c).
  The `bne` branch at 0x2e4328c targets 0x2e409e0, is taken when a0 != a5(=0x80ba), and falls through when a0 == a5(=0x80ba).
  The `beq` branch at 0x2e432c0 targets 0x2e3fc8c, is taken when a0 == t1(=0x8568), and falls through when a0 != t1(=0x8568).
  The `bne` branch at 0x2e432dc targets 0x2e409e0, is taken when a0 != t2(=0x81f8), and falls through when a0 == t2(=0x81f8).
  The `bne` branch at 0x2e4330c targets 0x2e409e0, is taken when a0 != ra(=0x85a1), and falls through when a0 == ra(=0x85a1).
  The return at 0x2e3f9b8 has v0 = unknown.
- `__glim_GetDoublev` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43340 (n64).
  It occupies 60 bytes.
  The `bgezall` at 0x2e43364 calls `__glDoGet` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0x2ee9ae0, a4=0xbd458.
  The return at 0x2e43374 has v0 = ret(__glDoGet).
- `__glim_GetFloatv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43380 (n64).
  It occupies 60 bytes.
  The `bgezall` at 0x2e433a4 calls `__glDoGet` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x2ee9af0, a4=0xbd418.
  The return at 0x2e433b4 has v0 = ret(__glDoGet).
- `__glim_GetIntegerv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e433c0 (n64).
  It occupies 60 bytes.
  The `bgezall` at 0x2e433e4 calls `__glDoGet` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x2ee9b00, a4=0xbd3d8.
  The return at 0x2e433f4 has v0 = ret(__glDoGet).
- `__glim_GetBooleanv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43400 (n64).
  It occupies 60 bytes.
  The `bgezall` at 0x2e43424 calls `__glDoGet` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0x2ee9b10, a4=0xbd398.
  The return at 0x2e43434 has v0 = ret(__glDoGet).
- `__glim_GetString` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e434a0 (n64).
  It occupies 192 bytes.
  The `jalr` at 0x2e434ec calls `__glSetError` with a0=0x500, a1=0x1f02, a2=0x1f03, a3=[0x1020]:8.
  The `jalr` at 0x2e4354c calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1020]:8.
  The `beq` branch at 0x2e434bc targets 0x2e43544, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e434c8 targets 0x2e43524, is taken when a0 == v0(=0x1f00), and falls through when a0 != v0(=0x1f00).
  The `beq` branch at 0x2e434d0 targets 0x2e43534, is taken when a0 == v1(=0x1f01), and falls through when a0 != v1(=0x1f01).
  The `beq` branch at 0x2e434d8 targets 0x2e4353c, is taken when a0 == a1(=0x1f02), and falls through when a0 != a1(=0x1f02).
  The `beq` branch at 0x2e434e0 targets 0x2e43514, is taken when a0 == a2(=0x1f03), and falls through when a0 != a2(=0x1f03).
  The return at 0x2e43500 has v0 = 0x0.
  The return at 0x2e4350c has v0 = unknown.
  The return at 0x2e4351c has v0 = [[0x1020]:8+3936]:8.
  The return at 0x2e4352c has v0 = [[0x1020]:8+3912]:8.
- `__glProcessHistogramArguments` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e436e0 (n64).
  It occupies 1084 bytes.
  The `sw` at 0x2e43774 stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x0).
  The `sw` at 0x2e43778 stores 4 bytes to a2 (arg2 at entry) +0x4 (value 0x0).
  The `sw` at 0x2e4377c stores 4 bytes to a2 (arg2 at entry) +0x8 (value 0x0).
  The `sw` at 0x2e43784 stores 4 bytes to a2 (arg2 at entry) +0xc (value 0x20).
  The `sw` at 0x2e43788 stores 4 bytes to a2 (arg2 at entry) +0x10 (value 0x0).
  The `sw` at 0x2e43790 stores 4 bytes to a2 (arg2 at entry) +0x14 (value 0x1).
  The `sw` at 0x2e43794 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1906).
  The `sw` at 0x2e43808 stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x0).
  The `sw` at 0x2e4380c stores 4 bytes to a2 (arg2 at entry) +0x4 (value 0x0).
  The `sw` at 0x2e43810 stores 4 bytes to a2 (arg2 at entry) +0x8 (value 0x0).
  The `sw` at 0x2e43818 stores 4 bytes to a2 (arg2 at entry) +0xc (value 0x20).
  The `sw` at 0x2e4381c stores 4 bytes to a2 (arg2 at entry) +0x10 (value 0x20).
  The `sw` at 0x2e43824 stores 4 bytes to a2 (arg2 at entry) +0x14 (value 0x2).
  The `sw` at 0x2e43830 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x190a).
  The `sw` at 0x2e4385c stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x20).
  The `sw` at 0x2e43860 stores 4 bytes to a2 (arg2 at entry) +0x4 (value 0x20).
  The `sw` at 0x2e43864 stores 4 bytes to a2 (arg2 at entry) +0x8 (value 0x20).
  The `sw` at 0x2e43868 stores 4 bytes to a2 (arg2 at entry) +0xc (value 0x20).
  The `sw` at 0x2e4386c stores 4 bytes to a2 (arg2 at entry) +0x10 (value 0x0).
  The `sw` at 0x2e43874 stores 4 bytes to a2 (arg2 at entry) +0x14 (value 0x4).
  The `sw` at 0x2e43880 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1908).
  The `sw` at 0x2e438dc stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x20).
  The `sw` at 0x2e438e0 stores 4 bytes to a2 (arg2 at entry) +0x4 (value 0x20).
  The `sw` at 0x2e438e4 stores 4 bytes to a2 (arg2 at entry) +0x8 (value 0x20).
  The `sw` at 0x2e438e8 stores 4 bytes to a2 (arg2 at entry) +0xc (value 0x0).
  The `sw` at 0x2e438ec stores 4 bytes to a2 (arg2 at entry) +0x10 (value 0x0).
  The `sw` at 0x2e438f4 stores 4 bytes to a2 (arg2 at entry) +0x14 (value 0x3).
  The `sw` at 0x2e43900 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1907).
  The `sw` at 0x2e4391c stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x0).
  The `sw` at 0x2e43920 stores 4 bytes to a2 (arg2 at entry) +0x4 (value 0x0).
  The `sw` at 0x2e43924 stores 4 bytes to a2 (arg2 at entry) +0x8 (value 0x0).
  The `sw` at 0x2e43928 stores 4 bytes to a2 (arg2 at entry) +0xc (value 0x0).
  The `sw` at 0x2e43930 stores 4 bytes to a2 (arg2 at entry) +0x10 (value 0x20).
  The `sw` at 0x2e43938 stores 4 bytes to a2 (arg2 at entry) +0x14 (value 0x1).
  The `sw` at 0x2e43940 stores 4 bytes to a3 (arg3 at entry) +0x0 (value 0x1909).
  The `sw` at 0x2e43a4c stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x0).
  The `sw` at 0x2e43a84 stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x0).
  The `sw` at 0x2e43ac8 stores 4 bytes to a2 (arg2 at entry) +0x0 (value 0x0).
  The `bne` branch at 0x2e436e8 targets 0x2e43754, is taken when a1 < a5(=0x8045) (unsigned), and falls through when a1 >= a5(=0x8045) (unsigned).
  The `beq` branch at 0x2e436f0 targets 0x2e43808, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e436fc targets 0x2e43884, is taken when a1 < a5(=0x8053) (unsigned), and falls through when a1 >= a5(=0x8053) (unsigned).
  The `beq` branch at 0x2e43704 targets 0x2e438dc, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x2e43714 targets 0x2e439c8, is taken when a1 < a5(=0x8058) (unsigned), and falls through when a1 >= a5(=0x8058) (unsigned).
  The `beq` branch at 0x2e4371c targets 0x2e4385c, is taken when a7(unknown) == 0, and falls through when a7(unknown) != 0.
  The `bne` branch at 0x2e4372c targets 0x2e43afc, is taken when a1 < a5(=0x805a) (unsigned), and falls through when a1 >= a5(=0x805a) (unsigned).
  The `beq` branch at 0x2e43738 targets 0x2e4385c, is taken when a5(=0x805a) >= a1 (unsigned), and falls through when a5(=0x805a) < a1 (unsigned).
  The `bne` branch at 0x2e43744 targets 0x2e439a0, is taken when a1 != t2(=0x805b), and falls through when a1 == t2(=0x805b).
  The `bne` branch at 0x2e4375c targets 0x2e437f4, is taken when a1 < a5(=0x803c) (unsigned), and falls through when a1 >= a5(=0x803c) (unsigned).
  The `bne` branch at 0x2e43768 targets 0x2e43904, is taken when a5(=0x803c) < a1 (unsigned), and falls through when a5(=0x803c) >= a1 (unsigned).
  The `bltz` branch at 0x2e43798 targets 0x2e43834, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x2e437b8 targets 0x2e4383c, is taken when v1(unknown) < a0 (unsigned), and falls through when v1(unknown) >= a0 (unsigned).
  The `beq` branch at 0x2e437c0 targets 0x2e437ec, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x2e437cc targets 0x2e437e4, is taken when (a0(unknown) & 0x1) == 0, and falls through when (a0(unknown) & 0x1) != 0.
  The `beq` branch at 0x2e437d4 targets 0x2e437e4, is taken when a1(unknown) == 0, and falls through when a1(unknown) != 0.
  The `bne` branch at 0x2e437e4 targets 0x2e437c8, is taken when a1(unknown) != 0, and falls through when a1(unknown) == 0.
  The `bne` branch at 0x2e437f4 targets 0x2e43844, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `beq` branch at 0x2e43800 targets 0x2e4396c, is taken when a1 >= 0x190b (unsigned), and falls through when a1 < 0x190b (unsigned).
  The `bgez` branch at 0x2e4382c targets 0x2e437a0, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `bne` branch at 0x2e43844 targets 0x2e438cc, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `beq` branch at 0x2e43850 targets 0x2e43998, is taken when a1 >= 0x1909 (unsigned), and falls through when a1 < 0x1909 (unsigned).
  The `bne` branch at 0x2e4388c targets 0x2e43944, is taken when a1 < a5(=0x804f) (unsigned), and falls through when a1 >= a5(=0x804f) (unsigned).
  The `beq` branch at 0x2e43894 targets 0x2e438dc, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `bne` branch at 0x2e438a4 targets 0x2e43aac, is taken when a1 < a5(=0x8051) (unsigned), and falls through when a1 >= a5(=0x8051) (unsigned).
  The `beq` branch at 0x2e438b0 targets 0x2e438dc, is taken when a5(=0x8051) >= a1 (unsigned), and falls through when a5(=0x8051) < a1 (unsigned).
  The `bne` branch at 0x2e438bc targets 0x2e439a0, is taken when a1 != a4(=0x8052), and falls through when a1 == a4(=0x8052).
  The `bne` branch at 0x2e438cc targets 0x2e43a74, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `beq` branch at 0x2e438d4 targets 0x2e439a0, is taken when a5(unknown) == 0, and falls through when a5(unknown) != 0.
  The `bne` branch at 0x2e43908 targets 0x2e439a8, is taken when a1 < a5(=0x8041) (unsigned), and falls through when a1 >= a5(=0x8041) (unsigned).
  The `bne` branch at 0x2e43910 targets 0x2e43a28, is taken when t3(unknown) != 0, and falls through when t3(unknown) == 0.
  The `bne` branch at 0x2e4394c targets 0x2e439f4, is taken when a1 < a5(=0x8048) (unsigned), and falls through when a1 >= a5(=0x8048) (unsigned).
  The `beq` branch at 0x2e43954 targets 0x2e43808, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e4395c targets 0x2e439a0, is taken when a1 != v1(=0x804e), and falls through when a1 == v1(=0x804e).
  The `bne` branch at 0x2e43970 targets 0x2e43a18, is taken when a1 < a5(=0x8000) (unsigned), and falls through when a1 >= a5(=0x8000) (unsigned).
  The `beq` branch at 0x2e4397c targets 0x2e4385c, is taken when a5(=0x8000) >= a1 (unsigned), and falls through when a5(=0x8000) < a1 (unsigned).
  The `bne` branch at 0x2e43988 targets 0x2e439a0, is taken when a1 != a7(=0x803b), and falls through when a1 == a7(=0x803b).
  The `beq` branch at 0x2e43998 targets 0x2e4391c, is taken when a5(=0x1909) == a1, and falls through when a5(=0x1909) != a1.
  The `bne` branch at 0x2e439b0 targets 0x2e43a50, is taken when a1 < a5(=0x803f) (unsigned), and falls through when a1 >= a5(=0x803f) (unsigned).
  The `bne` branch at 0x2e439b8 targets 0x2e43adc, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `bne` branch at 0x2e439d0 targets 0x2e43a88, is taken when a1 < a5(=0x8056) (unsigned), and falls through when a1 >= a5(=0x8056) (unsigned).
  The `beq` branch at 0x2e439d8 targets 0x2e4385c, is taken when t3(unknown) == 0, and falls through when t3(unknown) != 0.
  The `bne` branch at 0x2e439e4 targets 0x2e439a0, is taken when a1 != t8(=0x8057), and falls through when a1 == t8(=0x8057).
  The `bne` branch at 0x2e439fc targets 0x2e43abc, is taken when a1 < a5(=0x8047) (unsigned), and falls through when a1 >= a5(=0x8047) (unsigned).
  The `beq` branch at 0x2e43a08 targets 0x2e43808, is taken when a5(=0x8047) >= a1 (unsigned), and falls through when a5(=0x8047) < a1 (unsigned).
  The `bne` branch at 0x2e43a18 targets 0x2e439a0, is taken when a1 != v0(=0x2a10), and falls through when a1 == v0(=0x2a10).
  The `bne` branch at 0x2e43a2c targets 0x2e43acc, is taken when a1 < a5(=0x8043) (unsigned), and falls through when a1 >= a5(=0x8043) (unsigned).
  The `beq` branch at 0x2e43a38 targets 0x2e43808, is taken when a5(=0x8043) >= a1 (unsigned), and falls through when a5(=0x8043) < a1 (unsigned).
  The `bne` branch at 0x2e43a40 targets 0x2e439a0, is taken when a1 != a5(=0x8044), and falls through when a1 == a5(=0x8044).
  The `bne` branch at 0x2e43a58 targets 0x2e43aec, is taken when a1 < a5(=0x803e) (unsigned), and falls through when a1 >= a5(=0x803e) (unsigned).
  The `bne` branch at 0x2e43a64 targets 0x2e439a0, is taken when a5(=0x803e) < a1 (unsigned), and falls through when a5(=0x803e) >= a1 (unsigned).
  The `bne` branch at 0x2e43a78 targets 0x2e439a0, is taken when a5(=0x1906) != a1, and falls through when a5(=0x1906) == a1.
  The `bne` branch at 0x2e43a90 targets 0x2e43b0c, is taken when a1 < a5(=0x8055) (unsigned), and falls through when a1 >= a5(=0x8055) (unsigned).
  The `beq` branch at 0x2e43a9c targets 0x2e4385c, is taken when a5(=0x8055) >= a1 (unsigned), and falls through when a5(=0x8055) < a1 (unsigned).
  The `bne` branch at 0x2e43aac targets 0x2e439a0, is taken when a1 != t2(=0x8050), and falls through when a1 == t2(=0x8050).
  The `bne` branch at 0x2e43abc targets 0x2e439a0, is taken when a1 != t3(=0x8046), and falls through when a1 == t3(=0x8046).
  The `bne` branch at 0x2e43acc targets 0x2e439a0, is taken when a1 != t8(=0x8042), and falls through when a1 == t8(=0x8042).
  The `bne` branch at 0x2e43adc targets 0x2e439a0, is taken when a1 != t9(=0x8040), and falls through when a1 == t9(=0x8040).
  The `bne` branch at 0x2e43aec targets 0x2e439a0, is taken when a1 != at(=0x803d), and falls through when a1 == at(=0x803d).
  The `bne` branch at 0x2e43afc targets 0x2e439a0, is taken when a1 != v0(=0x8059), and falls through when a1 == v0(=0x8059).
  The `bne` branch at 0x2e43b0c targets 0x2e439a0, is taken when a1 != v1(=0x8054), and falls through when a1 == v1(=0x8054).
  The return at 0x2e437dc has v0 = 0x501.
  The return at 0x2e437ec has v0 = 0x0.
  The return at 0x2e43834 has v0 = 0x501.
  The return at 0x2e4383c has v0 = 0x8031.
  The return at 0x2e439a0 has v0 = 0x500.
- `__glInitHistogramStore` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43b20 (n64).
  It occupies 196 bytes.
  The `sw` at 0x2e43b24 stores 4 bytes to a1 (arg1 at entry) +0x8c (value 0x1).
  The `sw` at 0x2e43b28 stores 4 bytes to a1 (arg1 at entry) +0x88 (value 0x0).
  The `sw` at 0x2e43b2c stores 4 bytes to a1 (arg1 at entry) +0x94 (value 0x0).
  The `sw` at 0x2e43b30 stores 4 bytes to a1 (arg1 at entry) +0x90 (value 0x0).
  The `sw` at 0x2e43b38 stores 4 bytes to a1 (arg1 at entry) +0xa4 (value 0x4).
  The `sw` at 0x2e43b4c stores 4 bytes to a1 (arg1 at entry) +0x9c (value [a1+184]).
  The `sw` at 0x2e43b90 stores 4 bytes to a1 (arg1 at entry) +0x5c (value 0x1406).
  The `sw` at 0x2e43b9c stores 4 bytes to a1 (arg1 at entry) +0x58 (value 0x1903).
  The `sw` at 0x2e43ba4 stores 4 bytes to a1 (arg1 at entry) +0x5c (value 0x1406).
  The `sw` at 0x2e43bb0 stores 4 bytes to a1 (arg1 at entry) +0x58 (value 0x1903).
  The `sw` at 0x2e43bb4 stores 4 bytes to a1 (arg1 at entry) +0x5c (value 0x1406).
  The `sw` at 0x2e43bbc stores 4 bytes to a1 (arg1 at entry) +0x58 (value 0x1).
  The `sw` at 0x2e43bc0 stores 4 bytes to a1 (arg1 at entry) +0x5c (value 0x1406).
  The `sw` at 0x2e43bc8 stores 4 bytes to a1 (arg1 at entry) +0x58 (value 0x1907).
  The `sw` at 0x2e43bcc stores 4 bytes to a1 (arg1 at entry) +0x5c (value 0x1406).
  The `sw` at 0x2e43bd4 stores 4 bytes to a1 (arg1 at entry) +0x58 (value 0x1908).
  The `sw` at 0x2e43bd8 stores 4 bytes to a1 (arg1 at entry) +0x5c (value 0x1406).
  The `sw` at 0x2e43be0 stores 4 bytes to a1 (arg1 at entry) +0x58 (value 0x1906).
  The `beq` branch at 0x2e43b48 targets 0x2e43ba0, is taken when a2 == v0(=0x1909), and falls through when a2 != v0(=0x1909).
  The `beq` branch at 0x2e43b50 targets 0x2e43bb4, is taken when a2 == a0(=0x190a), and falls through when a2 != a0(=0x190a).
  The `beq` branch at 0x2e43b5c targets 0x2e43bc0, is taken when a3(=0x1907) == a2, and falls through when a3(=0x1907) != a2.
  The `beq` branch at 0x2e43b68 targets 0x2e43bcc, is taken when a3(=0x1908) == a2, and falls through when a3(=0x1908) != a2.
  The `beq` branch at 0x2e43b74 targets 0x2e43bd8, is taken when a3(=0x1906) == a2, and falls through when a3(=0x1906) != a2.
  The `beq` branch at 0x2e43b80 targets 0x2e43b90, is taken when a2 == a3(=0x8049), and falls through when a2 != a3(=0x8049).
  The return at 0x2e43b88 has v0 = 0x1909.
  The return at 0x2e43b98 has v0 = 0x1909.
  The return at 0x2e43bac has v0 = 0x1909.
  The return at 0x2e43bb8 has v0 = 0x1909.
  The return at 0x2e43bc4 has v0 = 0x1909.
  The return at 0x2e43bd0 has v0 = 0x1909.
  The return at 0x2e43bdc has v0 = 0x1909.
- `__glInitHistogramUnpack` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43bf0 (n64).
  It occupies 136 bytes.
  The `sd` at 0x2e43c0c stores 8 bytes to a1 (arg1 at entry) +0x8 (value a6).
  The `sw` at 0x2e43c10 stores 4 bytes to a1 (arg1 at entry) +0x4 (value a5).
  The `sw` at 0x2e43c14 stores 4 bytes to a1 (arg1 at entry) +0x0 (value a4).
  The `sw` at 0x2e43c18 stores 4 bytes to a1 (arg1 at entry) +0xbc (value a3).
  The `sw` at 0x2e43c20 stores 4 bytes to a1 (arg1 at entry) +0xc4 (value a2).
  The `sw` at 0x2e43c34 stores 4 bytes to a1 (arg1 at entry) +0xc8 (value a2).
  The `sw` at 0x2e43c3c stores 4 bytes to a1 (arg1 at entry) +0xb8 (value a2).
  The `swc1` at 0x2e43c4c stores 4 bytes to a1 (arg1 at entry) +0xb0 (value [a0+3884]).
  The `bgezall` at 0x2e43c48 calls `__glInitHistogramStore` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a7 at entry (arg7), a3=a3 at entry (arg3).
  The `jalr` at 0x2e43c5c calls `__glLoadUnpackModes` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The return at 0x2e43c70 has v0 = ret(__glLoadUnpackModes).
- `__glCheckGetArguments` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43ef0 (n64).
  It occupies 808 bytes.
  The `jalr` at 0x2e44018 calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=0x1907.
  The `jalr` at 0x2e4408c calls `__glSetError` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e440b4 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0x2e44140 calls `__glSetError` with a0=0x500, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `bne` branch at 0x2e43f04 targets 0x2e43f4c, is taken when a0 < 0x1908 (unsigned), and falls through when a0 >= 0x1908 (unsigned).
  The `bne` branch at 0x2e43f10 targets 0x2e43f8c, is taken when a0 < 0x1909 (unsigned), and falls through when a0 >= 0x1909 (unsigned).
  The `bne` branch at 0x2e43f1c targets 0x2e440d0, is taken when a0 < v0(=0x8000) (unsigned), and falls through when a0 >= v0(=0x8000) (unsigned).
  The `beq` branch at 0x2e43f24 targets 0x2e43f8c, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `bne` branch at 0x2e43f34 targets 0x2e441c0, is taken when a0 < v0(=0x80e1) (unsigned), and falls through when a0 >= v0(=0x80e1) (unsigned).
  The `beq` branch at 0x2e43f3c targets 0x2e43f90, is taken when a4(unknown) == 0, and falls through when a4(unknown) != 0.
  The `bne` branch at 0x2e43f50 targets 0x2e43f78, is taken when a0 < 0x1905 (unsigned), and falls through when a0 >= 0x1905 (unsigned).
  The `bne` branch at 0x2e43f58 targets 0x2e43f8c, is taken when a5(unknown) != 0, and falls through when a5(unknown) == 0.
  The `bne` branch at 0x2e43f60 targets 0x2e4418c, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e43f68 targets 0x2e43f90, is taken when a7(unknown) != 0, and falls through when a7(unknown) == 0.
  The `bne` branch at 0x2e43f7c targets 0x2e440a8, is taken when a0 < 0x1904 (unsigned), and falls through when a0 >= 0x1904 (unsigned).
  The `beq` branch at 0x2e43f84 targets 0x2e440b0, is taken when v0(unknown) == 0, and falls through when v0(unknown) != 0.
  The `bne` branch at 0x2e43f94 targets 0x2e43fe0, is taken when a1 < v0(=0x8034) (unsigned), and falls through when a1 >= v0(=0x8034) (unsigned).
  The `beq` branch at 0x2e43f9c targets 0x2e4406c, is taken when t2(unknown) == 0, and falls through when t2(unknown) != 0.
  The `bne` branch at 0x2e43fa8 targets 0x2e440f0, is taken when a1 < v0(=0x8364) (unsigned), and falls through when a1 >= v0(=0x8364) (unsigned).
  The `beq` branch at 0x2e43fb0 targets 0x2e4400c, is taken when t8(unknown) == 0, and falls through when t8(unknown) != 0.
  The `bne` branch at 0x2e43fc0 targets 0x2e441d0, is taken when a1 < v0(=0x8367) (unsigned), and falls through when a1 >= v0(=0x8367) (unsigned).
  The `beq` branch at 0x2e43fc8 targets 0x2e4406c, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `beq` branch at 0x2e43fd0 targets 0x2e44070, is taken when a1 == v0(=0x8368), and falls through when a1 != v0(=0x8368).
  The `bne` branch at 0x2e43fe4 targets 0x2e4402c, is taken when a1 < 0x1404 (unsigned), and falls through when a1 >= 0x1404 (unsigned).
  The `bne` branch at 0x2e43fec targets 0x2e44048, is taken when a2(unknown) != 0, and falls through when a2(unknown) == 0.
  The `bne` branch at 0x2e43ff8 targets 0x2e4415c, is taken when a1 < v0(=0x8032) (unsigned), and falls through when a1 >= v0(=0x8032) (unsigned).
  The `bne` branch at 0x2e44000 targets 0x2e441a0, is taken when a4(unknown) != 0, and falls through when a4(unknown) == 0.
  The `beq` branch at 0x2e4400c targets 0x2e44048, is taken when a0 == a5(=0x1907), and falls through when a0 != a5(=0x1907).
  The `bne` branch at 0x2e44030 targets 0x2e44118, is taken when a1 < 0x1402 (unsigned), and falls through when a1 >= 0x1402 (unsigned).
  The `bne` branch at 0x2e44038 targets 0x2e44048, is taken when a6(unknown) != 0, and falls through when a6(unknown) == 0.
  The `bne` branch at 0x2e44040 targets 0x2e4413c, is taken when a1 != a7(=0x1403), and falls through when a1 == a7(=0x1403).
  The `bne` branch at 0x2e44060 targets 0x2e441f0, is taken when a1 < v0(=0x8036) (unsigned), and falls through when a1 >= v0(=0x8036) (unsigned).
  The `bne` branch at 0x2e44068 targets 0x2e44138, is taken when t1(unknown) != 0, and falls through when t1(unknown) == 0.
  The `beq` branch at 0x2e44070 targets 0x2e44048, is taken when a0 == t2(=0x1908), and falls through when a0 != t2(=0x1908).
  The `beq` branch at 0x2e44078 targets 0x2e44048, is taken when a0 == t3(=0x8000), and falls through when a0 != t3(=0x8000).
  The `beq` branch at 0x2e44080 targets 0x2e44048, is taken when a0 == t8(=0x80e1), and falls through when a0 != t8(=0x80e1).
  The `beq` branch at 0x2e440a8 targets 0x2e43f8c, is taken when a0 == t9(=0x1903), and falls through when a0 != t9(=0x1903).
  The `bne` branch at 0x2e440d4 targets 0x2e4417c, is taken when a0 < 0x190a (unsigned), and falls through when a0 >= 0x190a (unsigned).
  The `bne` branch at 0x2e440e0 targets 0x2e43f90, is taken when a0 < 0x190b (unsigned), and falls through when a0 >= 0x190b (unsigned).
  The `bne` branch at 0x2e440f8 targets 0x2e44058, is taken when a1 < v0(=0x8362) (unsigned), and falls through when a1 >= v0(=0x8362) (unsigned).
  The `beq` branch at 0x2e44100 targets 0x2e44008, is taken when a2(unknown) == 0, and falls through when a2(unknown) != 0.
  The `beq` branch at 0x2e44108 targets 0x2e4400c, is taken when a1 == a3(=0x8363), and falls through when a1 != a3(=0x8363).
  The `bne` branch at 0x2e4411c targets 0x2e44134, is taken when a1 < 0x1401 (unsigned), and falls through when a1 >= 0x1401 (unsigned).
  The `bne` branch at 0x2e44124 targets 0x2e4404c, is taken when v0(unknown) != 0, and falls through when v0(unknown) == 0.
  The `beq` branch at 0x2e44134 targets 0x2e44048, is taken when a1 == a5(=0x1400), and falls through when a1 != a5(=0x1400).
  The `bne` branch at 0x2e44160 targets 0x2e441b0, is taken when a1 < 0x1406 (unsigned), and falls through when a1 >= 0x1406 (unsigned).
  The `bne` branch at 0x2e4416c targets 0x2e4404c, is taken when a1 < 0x1407 (unsigned), and falls through when a1 >= 0x1407 (unsigned).
  The `beq` branch at 0x2e4417c targets 0x2e43f90, is taken when a0 == t0(=0x1909), and falls through when a0 != t0(=0x1909).
  The `beq` branch at 0x2e44190 targets 0x2e43f90, is taken when a0 == t1(=0x1906), and falls through when a0 != t1(=0x1906).
  The `beq` branch at 0x2e441a0 targets 0x2e44070, is taken when a1 == t2(=0x8033), and falls through when a1 != t2(=0x8033).
  The `beq` branch at 0x2e441b0 targets 0x2e4404c, is taken when a1 == t3(=0x1405), and falls through when a1 != t3(=0x1405).
  The `beq` branch at 0x2e441c0 targets 0x2e43f90, is taken when a0 == t8(=0x80e0), and falls through when a0 != t8(=0x80e0).
  The `bne` branch at 0x2e441d8 targets 0x2e44204, is taken when a1 < v0(=0x8366) (unsigned), and falls through when a1 >= v0(=0x8366) (unsigned).
  The `beq` branch at 0x2e441e0 targets 0x2e44070, is taken when at(unknown) == 0, and falls through when at(unknown) != 0.
  The `beq` branch at 0x2e441f4 targets 0x2e44070, is taken when a1 == v0(=0x8035), and falls through when a1 != v0(=0x8035).
  The `beq` branch at 0x2e44208 targets 0x2e44070, is taken when a1 == v1(=0x8365), and falls through when a1 != v1(=0x8365).
  The return at 0x2e44050 has v0 = one of 0x0, 0x1.
  The return at 0x2e440a0 has v0 = 0x1.
  The return at 0x2e440c8 has v0 = 0x1.
  The return at 0x2e44154 has v0 = 0x1.
