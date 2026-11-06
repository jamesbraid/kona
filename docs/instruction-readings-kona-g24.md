# Instruction readings from hostfacts

These entries record instruction facts from the cited routine bodies. They describe software behavior, not hardware measurements. Hostfacts supplies each access, call, branch and return from that routine. The inventory supplies its address and size.

Skipped routines: 23,060 are already located, understood, or have no software dependency; 960 named-only routines already have an exact binary and routine entry; 30,039 eligible routines remain outside this 250-routine slice.

- `ApplyViewport` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa330 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2daa330-0x2daa368 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x2daa350 calls FindWindowSize [0x2daa2c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2daa360 has v0 = ret(FindWindowSize).
- `LoseCurrent` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2daa570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2daa570-0x2daa628 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x2daa574 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0x2daa598, `lw` at 0x2daa5cc.
  The `lw` at 0x2daa5a8 loads 4 bytes from a0 (arg0 at entry) +0x150.
  The `sd` at 0x2daa5d0 stores 8 bytes to abs 0x1020.
  The `lw` at 0x2daa5d4 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `sw` at 0x2daa5e4 stores 4 bytes to a0 (arg0 at entry) +0xdd0.
  The `lw` at 0x2daa5e8 loads 4 bytes from abs 0x1048.
  The `sw` at 0x2daa5ec stores 4 bytes to a0 (arg0 at entry) +0x15b8.
  The `ld` at 0x2daa5f0 loads 8 bytes from abs 0x1050.
  The `sd` at 0x2daa5f4 stores 8 bytes to a0 (arg0 at entry) +0x15c0.
  The `ld` at 0x2daa5f8 loads 8 bytes from abs 0x1058.
  The `sd` at 0x2daa5fc stores 8 bytes to a0 (arg0 at entry) +0x15c8.
  The `lw` at 0x2daa600 loads 4 bytes from abs 0x1060.
  The `sw` at 0x2daa604 stores 4 bytes to a0 (arg0 at entry) +0x15d0.
  The `jalr` at 0x2daa5c0 calls __glLoseCurrentBuffers [0x2e31c10] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2daa590 targets 0x2daa614, is taken when v0(=[a0+3540]) != v1(=0x1c00), and falls through when v0(=[a0+3540]) == v1(=0x1c00).
  The `beq` branch at 0x2daa5a0 targets 0x2daa618, is taken when a0(=[0x1030]) == v0(=0x1), and falls through when a0(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2daa5b0 targets 0x2daa5d0, is taken when (v1(=[a0+336]) & 0x4) == 0, and falls through when (v1(=[a0+336]) & 0x4) != 0.
  The `beq` branch at 0x2daa5e0 targets 0x2daa608, is taken when a1(=[a0+5440]) == 0, and falls through when a1(=[a0+5440]) != 0.
  The return at 0x2daa60c has v0 = 0x1.
  The return at 0x2daa620 has v0 = 0x0.
- `MakeCurrent` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dab8f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2dab8f0-0x2dab95c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2dab904 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x2dab920 loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `jalr` at 0x2dab918 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2dab928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezl` branch at 0x2dab954 targets 0x2daa910 and is always taken.
- `EramAlloc` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2de3cc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2de3cc0-0x2de3d74 (180 bytes).
  It occupies 180 bytes.
  The `jalr` at 0x2de3cec calls __glkon_mem_free [0x2daf9e0] with a0=0x2, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=a3 at entry (arg3).
  The `jalr` at 0x2de3d2c calls __glkon_mem_alloc [0x2daf920] with a0=0x2, a1=a0 at entry (arg0), a2=0x0, a3=(a3 << 0x2), a4=(a4 << 0x2), a7=a3 at entry (arg3).
  The `jalr` at 0x2de3d3c calls __glSetError [0x2e315d0] with a0=0x505, a1=?, a2=?, a3=?.
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
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2debb10-0x2debb74 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0x2debb34 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2debb40 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2debb50, `lwc1` at 0x2debb5c.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2debb58, `swc1` at 0x2debb68.
  The `blez` branch at 0x2debb18 targets 0x2debb6c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2debb2c targets 0x2debb44, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2debb48 targets 0x2debb6c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x2debb64 targets 0x2debb50, is taken when a0(?) != a4(=((a0 << 0x2) + a1)), and falls through when a0(?) == a4(=((a0 << 0x2) + a1)).
  The return at 0x2debb6c has v0 = ?.
- `__glDlistBlockStateInit` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df09f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df09f0-0x2df0a84 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x2df09f0 stores 4 bytes to a5 (arg5 at entry) +0x4.
  The `sd` at 0x2df09f8 stores 8 bytes to a5 (arg5 at entry) +0x8.
  The `sd` at 0x2df09fc stores 8 bytes to a5 (arg5 at entry) +0x20.
  The `sd` at 0x2df0a00 stores 8 bytes to a5 (arg5 at entry) +0x18.
  The `sd` at 0x2df0a04 stores 8 bytes to a5 (arg5 at entry) +0x10.
  The `sw` at 0x2df0a08 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `ld` at 0x2df0a20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2df0a40 stores 8 bytes to a5 (arg5 at entry) +0x28.
  The `sw` at 0x2df0a60 stores 4 bytes to ret(?) +0x0.
  The `sw` at 0x2df0a64 stores 4 bytes to a5 (arg5 at entry) +0x48.
  The `sd` at 0x2df0a6c stores 8 bytes to a5 (arg5 at entry) +0x40.
  The `sw` at 0x2df0a74 stores 4 bytes to a5 (arg5 at entry) +0x30.
  The `jalr` at 0x2df0a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2df0a3c targets 0x2df0a5c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The return at 0x2df0a54 has v0 = 0x0.
  The return at 0x2df0a7c has v0 = 0x1.
- `block_grow_region` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df0b40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df0b40-0x2df0d28 (488 bytes).
  It occupies 488 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x2df0b40, `lw` at 0x2df0bf8, `lw` at 0x2df0cc4.
  The `lw` at 0x2df0b44 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x2df0b50 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df0b5c loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `ld` at 0x2df0b64 loads 8 bytes from a1 (arg1 at entry) +0x20.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x10, including `ld` at 0x2df0b94, `ld` at 0x2df0bdc.
  6 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x28, including `ld` at 0x2df0ba8, `ld` at 0x2df0c28, `ld` at 0x2df0c5c.
  The `sd` at 0x2df0bb8 stores 8 bytes to a1 (arg1 at entry) +0x28.
  6 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x40, including `ld` at 0x2df0be8, `ld` at 0x2df0c1c, `ld` at 0x2df0c50.
  The `sd` at 0x2df0bf4 stores 8 bytes to a1 (arg1 at entry) +0x40.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2df0c24, `sw` at 0x2df0c3c, `sw` at 0x2df0c58.
  The `ld` at 0x2df0cc8 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x2df0cd0 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `sw` at 0x2df0cd4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x2df0cf4 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `sd` at 0x2df0cfc stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `jalr` at 0x2df0b74 calls (unknown callee) with a0=?, a1=[a1+32]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df0bac calls (unknown callee) with a0=[0x1020]:8, a1=[a1+40]:8, a2=?, a3=-0x1.
  The `jalr` at 0x2df0be4 calls (unknown callee) with a0=[0x1020]:8, a1=[a1+64]:8, a2=?, a3=?.
  The `beq` branch at 0x2df0b80 targets 0x2df0d0c, is taken when a3(=-0x1) == v0(=ret(?)), and falls through when a3(=-0x1) != v0(=ret(?)).
  The `bne` branch at 0x2df0bb4 targets 0x2df0bd4, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x2df0bf0 targets 0x2df0d18, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2df0c0c targets 0x2df0cc8, is taken when a5(?) >= a2(?) (unsigned), and falls through when a5(?) < a2(?) (unsigned).
  The `beq` branch at 0x2df0c14 targets 0x2df0c40, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2df0c38 targets 0x2df0c1c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2df0c44 targets 0x2df0cc4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x2df0cbc targets 0x2df0c50, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `bne` branch at 0x2df0cf0 targets 0x2df0d00, is taken when a5(=-0x1) != a6(=[a1+8]:8), and falls through when a5(=-0x1) == a6(=[a1+8]:8).
  The `beq` branch at 0x2df0d10 targets 0x2df0bc8 and is always taken.
  The `beq` branch at 0x2df0d20 targets 0x2df0bc8 and is always taken.
  The return at 0x2df0bcc has v0 = 0x0.
  The return at 0x2df0d04 has v0 = 0x1.
- `__glDlistFreeBlock` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df0f30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df0f30-0x2df0f84 (84 bytes).
  It occupies 84 bytes.
  The `ld` at 0x2df0f30 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2df0f34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x2df0f48 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x2df0f60 loads 4 bytes from ?.
  The `sw` at 0x2df0f6c stores 4 bytes to ?.
  The `lw` at 0x2df0f70 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0x2df0f80 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The return at 0x2df0f7c has v0 = [a0].
- `__glDlistTransientBlock` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df1290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df1290-0x2df12e0 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x2df1290 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2df1294 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x2df12a8 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x2df12bc loads 4 bytes from ?.
  The `sw` at 0x2df12c8 stores 4 bytes to ?.
  The `lw` at 0x2df12cc loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x2df12dc stores 4 bytes to a0 (arg0 at entry) +0x48.
  The return at 0x2df12d8 has v0 = [a0].
- `__glDlistFreeTransient` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df12e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df12e0-0x2df1364 (132 bytes).
  It occupies 132 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x2df12e0, `lw` at 0x2df1330.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x40, including `ld` at 0x2df1300, `ld` at 0x2df1324.
  The `ld` at 0x2df1304 loads 8 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2df1310, `lw` at 0x2df1314.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2df1320, `sw` at 0x2df132c.
  The `lw` at 0x2df134c loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x2df1350 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x2df1354 stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0x2df1360 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `beq` branch at 0x2df12ec targets 0x2df134c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2df1344 targets 0x2df1300, is taken when a3(?) < v0(?) (unsigned), and falls through when a3(?) >= v0(?) (unsigned).
  The return at 0x2df135c has v0 = ?.
- `__glDlistHeapInit` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df1370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df1370-0x2df13c8 (88 bytes).
  It occupies 88 bytes.
  The `sd` at 0x2df1370 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x2df1374 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x2df139c stores 8 bytes to abs 0x2f01740.
  The `swc1` at 0x2df13a0 stores 4 bytes to abs 0x2f01740.
  The `sd` at 0x2df13b0 stores 8 bytes to abs 0x2f01748.
  The `bgezall` at 0x2df13ac calls __glDlistHeapInsert [0x2df14b0] with a0=a0 at entry (arg0), a1=0x2f01740, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df13c0 has v0 = 0x1.
- `__glDlistPrintHeap` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df16c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df16c0-0x2df1760 (160 bytes).
  It occupies 160 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x2df16c0, `lw` at 0x2df1724.
  The `ld` at 0x2df16c4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x2df1700 loads 8 bytes from ?.
  The `lwc1` at 0x2df1704 loads 4 bytes from ?.
  The `jalr` at 0x2df171c calls printf with a0=0x2ee4e80, a1=?, a2=?, a3=?.
  The `jalr` at 0x2df1748 calls printf with a0=0x2f00752, a1=?, a2=?, a3=?.
  The `bne` branch at 0x2df16e8 targets 0x2df1740, is taken when at(=[a0]) < 0x2 (unsigned), and falls through when at(=[a0]) >= 0x2 (unsigned).
  The `bne` branch at 0x2df1730 targets 0x2df1700, is taken when s1(?) < a1(=[a0]) (unsigned), and falls through when s1(?) >= a1(=[a0]) (unsigned).
  The return at 0x2df1758 has v0 = ret(printf).
- `__glsplc_InvalidValue` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df42e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df42e0-0x2df4318 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x2df42e4 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df42f8 loads 8 bytes from [0x1020]:8 +0x15a0.
  The `jalr` at 0x2df4300 calls (unknown callee) with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df4310 has v0 = ret(?).
- `__glsplc_InvalidEnum` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4320 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df4320-0x2df4358 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x2df4324 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df4338 loads 8 bytes from [0x1020]:8 +0x15a0.
  The `jalr` at 0x2df4340 calls (unknown callee) with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df4350 has v0 = ret(?).
- `__glsplc_Error` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df43a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df43a0-0x2df43d8 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x2df43a4 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df43b8 loads 8 bytes from [0x1020]:8 +0x15a0.
  The `jalr` at 0x2df43c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df43d0 has v0 = ret(?).
- `__glsplc_UnimplementedExtension` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df43e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df43e0-0x2df4418 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x2df43e4 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df43f8 loads 8 bytes from [0x1020]:8 +0x15a0.
  The `jalr` at 0x2df4400 calls (unknown callee) with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df4410 has v0 = ret(?).
- `__glsplc_DeformationMap3fSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df4cf0-0x2df4e60 (368 bytes).
  It occupies 368 bytes.
  The `sw` at 0x2df4de4 stores 4 bytes to ret(__glSPDlalloc) +0x24.
  The `swc1` at 0x2df4df0 stores 4 bytes to ret(__glSPDlalloc) +0x20.
  The `swc1` at 0x2df4dfc stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `sw` at 0x2df4e04 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `swc1` at 0x2df4e08 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `swc1` at 0x2df4e0c stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0x2df4e10 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `swc1` at 0x2df4e18 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0x2df4e20 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0x2df4e2c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0x2df4d54 calls __glCheckMap3Params [0x2e33900] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df4da4 calls __glSPDlalloc [0x2dae980] with a0=?, a1=0xf8, a2=?, a3=?.
  The `jalr` at 0x2df4e28 calls __glFillDeformationMap3f [0x2e33700] with a0=a4 at entry (arg4), a1=a3 at entry (arg3), a2=?, a3=a7 at entry (arg7), a7=ret(__glSPDlalloc)+40.
  The `bgezall` at 0x2df4e3c calls __glsplc_InvalidEnum [0x2df4320] with a0=?, a1=?, a2=0x501, a3=0x500.
  The `bgezall` at 0x2df4e50 calls __glsplc_InvalidValue [0x2df42e0] with a0=?, a1=?, a2=0x501, a3=0x500.
  The `beq` branch at 0x2df4d60 targets 0x2df4e4c, is taken when v0(=ret(__glCheckMap3Params)) == a2(=0x501), and falls through when v0(=ret(__glCheckMap3Params)) != a2(=0x501).
  The `beq` branch at 0x2df4d68 targets 0x2df4e38, is taken when v0(=ret(__glCheckMap3Params)) == a3(=0x500), and falls through when v0(=ret(__glCheckMap3Params)) != a3(=0x500).
  The `bne` branch at 0x2df4dac targets 0x2df4dc4, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `beq` branch at 0x2df4e30 targets 0x2df4db4 and is always taken.
  The `beq` branch at 0x2df4e44 targets 0x2df4db4 and is always taken.
  The `beq` branch at 0x2df4e58 targets 0x2df4db4 and is always taken.
  The return at 0x2df4dbc has v0 = one of ret(__glSPDlalloc), ret(__glFillDeformationMap3f), ret(__glsplc_InvalidEnum), ret(__glsplc_InvalidValue).
- `__glsplc_DeformationMap3dSGIX` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4e60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df4e60-0x2df4ff0 (400 bytes).
  It occupies 400 bytes.
  The `sw` at 0x2df4f78 stores 4 bytes to ret(__glSPDlalloc) +0x24.
  The `swc1` at 0x2df4f84 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `swc1` at 0x2df4f88 stores 4 bytes to ret(__glSPDlalloc) +0x20.
  The `sw` at 0x2df4f90 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `swc1` at 0x2df4f94 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `swc1` at 0x2df4f98 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0x2df4fa0 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `swc1` at 0x2df4fa8 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `swc1` at 0x2df4fb0 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0x2df4fbc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0x2df4ee4 calls __glCheckMap3Params [0x2e33900] with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df4f34 calls __glSPDlalloc [0x2dae980] with a0=?, a1=0xf7, a2=?, a3=?.
  The `jalr` at 0x2df4fb8 calls __glFillDeformationMap3d [0x2e33790] with a0=a4 at entry (arg4), a1=a3 at entry (arg3), a2=?, a3=a7 at entry (arg7), a7=ret(__glSPDlalloc)+40.
  The `bgezall` at 0x2df4fcc calls __glsplc_InvalidEnum [0x2df4320] with a0=?, a1=?, a2=0x501, a3=0x500.
  The `bgezall` at 0x2df4fe0 calls __glsplc_InvalidValue [0x2df42e0] with a0=?, a1=?, a2=0x501, a3=0x500.
  The `beq` branch at 0x2df4ef0 targets 0x2df4fdc, is taken when v0(=ret(__glCheckMap3Params)) == a2(=0x501), and falls through when v0(=ret(__glCheckMap3Params)) != a2(=0x501).
  The `beq` branch at 0x2df4ef8 targets 0x2df4fc8, is taken when v0(=ret(__glCheckMap3Params)) == a3(=0x500), and falls through when v0(=ret(__glCheckMap3Params)) != a3(=0x500).
  The `bne` branch at 0x2df4f3c targets 0x2df4f54, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `beq` branch at 0x2df4fc0 targets 0x2df4f44 and is always taken.
  The `beq` branch at 0x2df4fd4 targets 0x2df4f44 and is always taken.
  The `beq` branch at 0x2df4fe8 targets 0x2df4f44 and is always taken.
  The return at 0x2df4f4c has v0 = one of ret(__glSPDlalloc), ret(__glFillDeformationMap3d), ret(__glsplc_InvalidEnum), ret(__glsplc_InvalidValue).
- `FormatAndType` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df4ff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df4ff0-0x2df53a4 (948 bytes).
  It occupies 948 bytes.
  The `bgezall` at 0x2df50bc calls __glsplc_InvalidEnum [0x2df4320] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2df5158 calls __glsplc_InvalidEnum [0x2df4320] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=0x8034.
  The `bgezall` at 0x2df51cc calls __glsplc_InvalidOperation [0x2df4360] with a0=a0 at entry (arg0), a1=0x1908, a2=0x8000, a3=0x80e1.
  The `bgezall` at 0x2df5250 calls __glsplc_InvalidOperation [0x2df4360] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=one of 0x8032, 0x8362, 0x8364.
  The `bgezall` at 0x2df5364 calls __glsplc_InvalidEnum [0x2df4320] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=0x8032.
  The `bne` branch at 0x2df4ff4 targets 0x2df5040, is taken when a0 < 0x1908 (unsigned), and falls through when a0 >= 0x1908 (unsigned).
  The `bne` branch at 0x2df5000 targets 0x2df506c, is taken when a0 < 0x1909 (unsigned), and falls through when a0 >= 0x1909 (unsigned).
  The `bne` branch at 0x2df5010 targets 0x2df5268, is taken when a0 < a3(=0x8000) (unsigned), and falls through when a0 >= a3(=0x8000) (unsigned).
  The `beq` branch at 0x2df5018 targets 0x2df506c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2df5028 targets 0x2df5318, is taken when a0 < a3(=0x80e1) (unsigned), and falls through when a0 >= a3(=0x80e1) (unsigned).
  The `beq` branch at 0x2df5030 targets 0x2df506c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2df5038 targets 0x2df5150 and is always taken.
  The `bne` branch at 0x2df5044 targets 0x2df5130, is taken when a0 < 0x1905 (unsigned), and falls through when a0 >= 0x1905 (unsigned).
  The `bne` branch at 0x2df504c targets 0x2df506c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x2df5058 targets 0x2df52c4, is taken when a0 < 0x1907 (unsigned), and falls through when a0 >= 0x1907 (unsigned).
  The `beq` branch at 0x2df5060 targets 0x2df5154, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2df5070 targets 0x2df50ec, is taken when a1 >= a3(=0x8034) (unsigned), and falls through when a1 < a3(=0x8034) (unsigned).
  The `bne` branch at 0x2df507c targets 0x2df51e8, is taken when a1 < 0x1405 (unsigned), and falls through when a1 >= 0x1405 (unsigned).
  The `bne` branch at 0x2df5088 targets 0x2df5184, is taken when a1 < 0x1406 (unsigned), and falls through when a1 >= 0x1406 (unsigned).
  The `beq` branch at 0x2df5094 targets 0x2df5238, is taken when a1 >= a3(=0x8032) (unsigned), and falls through when a1 < a3(=0x8032) (unsigned).
  The `bne` branch at 0x2df50a0 targets 0x2df5308, is taken when a1 < 0x1a00 (unsigned), and falls through when a1 >= 0x1a00 (unsigned).
  The `bne` branch at 0x2df50ac targets 0x2df5360, is taken when a1 < 0x1a01 (unsigned), and falls through when a1 >= 0x1a01 (unsigned).
  The `bne` branch at 0x2df50d4 targets 0x2df5150, is taken when a0 != v1(=0x1900), and falls through when a0 == v1(=0x1900).
  The `bne` branch at 0x2df50e0 targets 0x2df5218, is taken when a1 < a3(=0x8034) (unsigned), and falls through when a1 >= a3(=0x8034) (unsigned).
  The `beq` branch at 0x2df50ec targets 0x2df51ac, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2df50f8 targets 0x2df5288, is taken when a1 < a3(=0x8364) (unsigned), and falls through when a1 >= a3(=0x8364) (unsigned).
  The `beq` branch at 0x2df5100 targets 0x2df5244, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2df5110 targets 0x2df532c, is taken when a1 < a3(=0x8367) (unsigned), and falls through when a1 >= a3(=0x8367) (unsigned).
  The `beq` branch at 0x2df5118 targets 0x2df51ac, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2df5120 targets 0x2df51b0, is taken when a1 == t1(=0x8368), and falls through when a1 != t1(=0x8368).
  The `beq` branch at 0x2df5128 targets 0x2df50b4 and is always taken.
  The `bne` branch at 0x2df5134 targets 0x2df50d4, is taken when a0 < 0x1903 (unsigned), and falls through when a0 >= 0x1903 (unsigned).
  The `bne` branch at 0x2df5140 targets 0x2df506c, is taken when a0 < 0x1904 (unsigned), and falls through when a0 >= 0x1904 (unsigned).
  The `beq` branch at 0x2df514c targets 0x2df5068, is taken when a0 == t8(=0x1904), and falls through when a0 != t8(=0x1904).
  The `bne` branch at 0x2df5170 targets 0x2df52d4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x2df517c targets 0x2df50b8, is taken when a1 >= 0x1402 (unsigned), and falls through when a1 < 0x1402 (unsigned).
  The `bne` branch at 0x2df5198 targets 0x2df5350, is taken when a1 < a3(=0x8036) (unsigned), and falls through when a1 >= a3(=0x8036) (unsigned).
  The `bne` branch at 0x2df51a4 targets 0x2df50b8, is taken when a3(=0x8036) < a1 (unsigned), and falls through when a3(=0x8036) >= a1 (unsigned).
  The `beq` branch at 0x2df51b0 targets 0x2df5184, is taken when a0 == a1(=0x1908), and falls through when a0 != a1(=0x1908).
  The `beq` branch at 0x2df51b8 targets 0x2df5184, is taken when a0 == a2(=0x8000), and falls through when a0 != a2(=0x8000).
  The `beq` branch at 0x2df51c0 targets 0x2df5184, is taken when a0 == a3(=0x80e1), and falls through when a0 != a3(=0x80e1).
  The `bne` branch at 0x2df51e8 targets 0x2df5170, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x2df51f4 targets 0x2df5184, is taken when a1 < 0x1403 (unsigned), and falls through when a1 >= 0x1403 (unsigned).
  The `bne` branch at 0x2df51fc targets 0x2df52e4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2df5208 targets 0x2df5188, is taken when a1 < 0x1405 (unsigned), and falls through when a1 >= 0x1405 (unsigned).
  The `beq` branch at 0x2df5210 targets 0x2df50b4 and is always taken.
  The `bne` branch at 0x2df5218 targets 0x2df51e4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x2df5220 targets 0x2df5184, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2df522c targets 0x2df538c, is taken when a1 < a3(=0x8032) (unsigned), and falls through when a1 >= a3(=0x8032) (unsigned).
  The `bne` branch at 0x2df5238 targets 0x2df52f4, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2df5244 targets 0x2df5184, is taken when a0 == t8(=0x1907), and falls through when a0 != t8(=0x1907).
  The `bne` branch at 0x2df526c targets 0x2df52b4, is taken when a0 < 0x190a (unsigned), and falls through when a0 >= 0x190a (unsigned).
  The `bne` branch at 0x2df5278 targets 0x2df506c, is taken when a0 < 0x190b (unsigned), and falls through when a0 >= 0x190b (unsigned).
  The `beq` branch at 0x2df5280 targets 0x2df5150 and is always taken.
  The `bne` branch at 0x2df5290 targets 0x2df5190, is taken when a1 < a3(=0x8362) (unsigned), and falls through when a1 >= a3(=0x8362) (unsigned).
  The `beq` branch at 0x2df5298 targets 0x2df5244, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2df52a4 targets 0x2df5244, is taken when a1 == a2(=0x8363), and falls through when a1 != a2(=0x8363).
  The `beq` branch at 0x2df52ac targets 0x2df50b4 and is always taken.
  The `beq` branch at 0x2df52b4 targets 0x2df506c, is taken when a0 == a3(=0x1909), and falls through when a0 != a3(=0x1909).
  The `beq` branch at 0x2df52bc targets 0x2df5150 and is always taken.
  The `beq` branch at 0x2df52c4 targets 0x2df506c, is taken when a0 == a4(=0x1906), and falls through when a0 != a4(=0x1906).
  The `beq` branch at 0x2df52cc targets 0x2df5150 and is always taken.
  The `beq` branch at 0x2df52d4 targets 0x2df5188, is taken when a1 == a5(=0x1400), and falls through when a1 != a5(=0x1400).
  The `beq` branch at 0x2df52dc targets 0x2df50b4 and is always taken.
  The `beq` branch at 0x2df52e4 targets 0x2df5188, is taken when a1 == a6(=0x1403), and falls through when a1 != a6(=0x1403).
  The `beq` branch at 0x2df52ec targets 0x2df50b4 and is always taken.
  The `beq` branch at 0x2df52f4 targets 0x2df51b0, is taken when a1 == a7(=0x8033), and falls through when a1 != a7(=0x8033).
  The `beq` branch at 0x2df52fc targets 0x2df50b4 and is always taken.
  The `bne` branch at 0x2df5308 targets 0x2df50b8, is taken when a1 != t0(=0x1406), and falls through when a1 == t0(=0x1406).
  The `beq` branch at 0x2df5310 targets 0x2df5188 and is always taken.
  The `beq` branch at 0x2df531c targets 0x2df506c, is taken when a0 == t1(=0x80e0), and falls through when a0 != t1(=0x80e0).
  The `beq` branch at 0x2df5324 targets 0x2df5150 and is always taken.
  The `bne` branch at 0x2df5334 targets 0x2df537c, is taken when a1 < a3(=0x8366) (unsigned), and falls through when a1 >= a3(=0x8366) (unsigned).
  The `beq` branch at 0x2df5340 targets 0x2df51b0, is taken when a3(=0x8366) >= a1 (unsigned), and falls through when a3(=0x8366) < a1 (unsigned).
  The `beq` branch at 0x2df5348 targets 0x2df50b4 and is always taken.
  The `beq` branch at 0x2df5350 targets 0x2df51b0, is taken when a1 == t8(=0x8035), and falls through when a1 != t8(=0x8035).
  The `beq` branch at 0x2df5358 targets 0x2df50b4 and is always taken.
  The `beq` branch at 0x2df537c targets 0x2df51b0, is taken when a1 == t9(=0x8365), and falls through when a1 != t9(=0x8365).
  The `beq` branch at 0x2df5384 targets 0x2df50b4 and is always taken.
  The `bne` branch at 0x2df538c targets 0x2df5304, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x2df5394 targets 0x2df5188, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2df539c targets 0x2df50b4 and is always taken.
  The return at 0x2df50cc has v0 = 0x0.
  The return at 0x2df5168 has v0 = 0x0.
  The return at 0x2df5188 has v0 = 0x1.
  The return at 0x2df51dc has v0 = 0x0.
  The return at 0x2df5260 has v0 = 0x0.
  The return at 0x2df5374 has v0 = 0x0.
- `__glsplc_SeparableFilter2DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df60a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df60a0-0x2df6278 (472 bytes).
  It occupies 472 bytes.
  The `ld` at 0x2df60a0 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2df61a0 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0x2df61a4 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0x2df61a8 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0x2df61ac stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0x2df61b0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0x2df61b4 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `sw` at 0x2df61c0 stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0x2df61c8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `bgezall` at 0x2df60fc calls __glsplc_InvalidEnum [0x2df4320] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2df6120 calls FormatAndType [0x2df4ff0] with a0=a4 at entry (arg4), a1=a5 at entry (arg5), a2=?, a3=?.
  The `jalr` at 0x2df613c calls __glImageSize [0x2e45650] with a0=a2 at entry (arg2), a1=0x1, a2=a4 at entry (arg4), a3=a5 at entry (arg5).
  The `jalr` at 0x2df6158 calls __glImageSize [0x2e45650] with a0=0x1, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a5 at entry (arg5).
  The `jalr` at 0x2df618c calls __glSPDlalloc [0x2dae980] with a0=?, a1=0xcb, a2=?, a3=-0x8.
  The `jalr` at 0x2df622c calls __glFillImage [0x2e46480] with a0=[0x1020]:8, a1=0x1, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a7 at entry (arg7).
  The `jalr` at 0x2df6254 calls __glFillImage [0x2e46480] with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=0x1, a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6), a6=ret(__glSPDlalloc)+32.
  The `bgezall` at 0x2df6268 calls __glsplc_InvalidValue [0x2df42e0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2df60f0 targets 0x2df6104, is taken when a0 == at(=0x8012), and falls through when a0 != at(=0x8012).
  The `bltz` branch at 0x2df6104 targets 0x2df6268, is taken when s3(=a2) < 0 (signed), and falls through when s3(=a2) >= 0 (signed).
  The `bltz` branch at 0x2df610c targets 0x2df6268, is taken when s2(=a3) < 0 (signed), and falls through when s2(=a3) >= 0 (signed).
  The `beq` branch at 0x2df6128 targets 0x2df61ec, is taken when v0(=ret(FormatAndType)) == 0, and falls through when v0(=ret(FormatAndType)) != 0.
  The `beq` branch at 0x2df6194 targets 0x2df61ec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The `blez` branch at 0x2df61c4 targets 0x2df61d8, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x2df61d0 targets 0x2df623c, is taken when a5(=a6) != 0, and falls through when a5(=a6) == 0.
  The `blez` branch at 0x2df61dc targets 0x2df61ec, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x2df61e4 targets 0x2df620c, is taken when a7 != 0, and falls through when a7 == 0.
  The `beq` branch at 0x2df6234 targets 0x2df61f0 and is always taken.
  The `beq` branch at 0x2df625c targets 0x2df61d8 and is always taken.
  The `beq` branch at 0x2df6270 targets 0x2df61f0 and is always taken.
  The return at 0x2df6204 has v0 = one of ?, ret(__glFillImage), ret(__glsplc_InvalidValue).
  The instructions from 0x2df6264 to 0x2df6264 are not reached by any path from the entry, and their branches are not listed.
- `__glsplc_TexImage3DEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df6280 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df6280-0x2df643c (444 bytes).
  It occupies 444 bytes.
  The `ld` at 0x2df6280 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2df6364 stores 4 bytes to ret(__glSPDlalloc) +0x20.
  The `sw` at 0x2df6368 stores 4 bytes to ret(__glSPDlalloc) +0x1c.
  The `sw` at 0x2df636c stores 4 bytes to ret(__glSPDlalloc) +0x18.
  The `sw` at 0x2df6370 stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0x2df6374 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0x2df6378 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0x2df638c stores 4 bytes to ret(__glSPDlalloc) +0x24.
  The `sw` at 0x2df6390 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0x2df6394 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0x2df639c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `ld` at 0x2df6424 loads 8 bytes from [0x1020]:8 +0x1ad8.
  The `ld` at 0x2df6428 loads 8 bytes from [[0x1020]:8+6872]:8 +0x620.
  The `bgezall` at 0x2df6314 calls FormatAndType [0x2df4ff0] with a0=a7 at entry (arg7), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x2df6334 calls __glImageSize3D [0x2e45730] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=a5 at entry (arg5), a3=a7 at entry (arg7).
  The `jalr` at 0x2df6354 calls __glSPDlalloc [0x2dae980] with a0=?, a1=0xd0, a2=-0x8, a3=?.
  The `jalr` at 0x2df63c0 calls __glFillImage3D [0x2e45790] with a0=[0x1020]:8, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a5 at entry (arg5), a4=a7 at entry (arg7), a7=ret(__glSPDlalloc)+40.
  The `bgezall` at 0x2df63f0 calls __glsplc_InvalidValue [0x2df42e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `bgezall` at 0x2df6404 calls __glsplc_InvalidValue [0x2df42e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x2df642c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2df62c8 targets 0x2df6414, is taken when a0 == at(=0x8070), and falls through when a0 != at(=0x8070).
  The `bltz` branch at 0x2df62d0 targets 0x2df63f0, is taken when a6 < 0 (signed), and falls through when a6 >= 0 (signed).
  The `beq` branch at 0x2df62dc targets 0x2df63f0, is taken when a6 >= 0x2 (signed), and falls through when a6 < 0x2 (signed).
  The `bltz` branch at 0x2df62e4 targets 0x2df6404, is taken when a3 < 0 (signed), and falls through when a3 >= 0 (signed).
  The `bltz` branch at 0x2df62ec targets 0x2df6404, is taken when a4 < 0 (signed), and falls through when a4 >= 0 (signed).
  The `bltz` branch at 0x2df6300 targets 0x2df6400, is taken when a5 < 0 (signed), and falls through when a5 >= 0 (signed).
  The `beq` branch at 0x2df631c targets 0x2df63c8, is taken when v0(=ret(FormatAndType)) == 0, and falls through when v0(=ret(FormatAndType)) != 0.
  The `beq` branch at 0x2df635c targets 0x2df63c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The `blez` branch at 0x2df6398 targets 0x2df63c8, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x2df63a4 targets 0x2df63c8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2df63f8 targets 0x2df63cc and is always taken.
  The `beq` branch at 0x2df640c targets 0x2df63cc and is always taken.
  The `beq` branch at 0x2df6434 targets 0x2df63cc and is always taken.
  The return at 0x2df63e4 has v0 = one of ?, ret(__glsplc_InvalidValue), ret(?).
  The instructions from 0x2df63ec to 0x2df63ec are not reached by any path from the entry, and their branches are not listed.
- `__glsplc_ColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df6a50-0x2df6bb8 (360 bytes).
  It occupies 360 bytes.
  The `ld` at 0x2df6a54 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2df6b50 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `sw` at 0x2df6b58 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0x2df6b6c stores 4 bytes to ret(__glSPDlalloc) +0x14.
  The `sw` at 0x2df6b74 stores 4 bytes to ret(__glSPDlalloc) +0x10.
  The `sw` at 0x2df6b80 stores 4 bytes to ret(__glSPDlalloc) +0xc.
  The `sw` at 0x2df6b8c stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `ld` at 0x2df6b98 loads 8 bytes from [0x1020]:8 +0x1ad8.
  The `ld` at 0x2df6b9c loads 8 bytes from [[0x1020]:8+6872]:8 +0x770.
  The `bgezall` at 0x2df6ad0 calls __glsplc_InvalidValue [0x2df42e0] with a0=0x80d4, a1=a1 at entry (arg1), a2=0x80d5, a3=a3 at entry (arg3), a4=0x80bd.
  The `bgezall` at 0x2df6afc calls FormatAndType [0x2df4ff0] with a0=a3 at entry (arg3), a1=a4 at entry (arg4), a2=0x80d5, a3=a3 at entry (arg3), a4=0x80bd.
  The `jalr` at 0x2df6b18 calls __glImageSize [0x2e45650] with a0=a2 at entry (arg2), a1=0x1, a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `jalr` at 0x2df6b3c calls __glSPDlalloc [0x2dae980] with a0=?, a1=0xe3, a2=-0x8, a3=?.
  The `jalr` at 0x2df6b88 calls __glFillImage [0x2e46480] with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3), a6=ret(__glSPDlalloc)+24, a7=a1 at entry (arg1).
  The `jalr` at 0x2df6ba8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2-1.
  The `beq` branch at 0x2df6a84 targets 0x2df6b98, is taken when a0 == at(=0x80d3), and falls through when a0 != at(=0x80d3).
  The `beq` branch at 0x2df6a90 targets 0x2df6b98, is taken when s0(=a0) == a0(=0x80d4), and falls through when s0(=a0) != a0(=0x80d4).
  The `beq` branch at 0x2df6a98 targets 0x2df6b98, is taken when s0(=a0) == a2(=0x80d5), and falls through when s0(=a0) != a2(=0x80d5).
  The `beq` branch at 0x2df6aa0 targets 0x2df6b98, is taken when s0(=a0) == a4(=0x80bd), and falls through when s0(=a0) != a4(=0x80bd).
  The `bltz` branch at 0x2df6aa8 targets 0x2df6ad0, is taken when s1(=a2) < 0 (signed), and falls through when s1(=a2) >= 0 (signed).
  The `beq` branch at 0x2df6ac4 targets 0x2df6af0, is taken when (s1(=a2) & a6(=a2-1)) == 0, and falls through when (s1(=a2) & a6(=a2-1)) != 0.
  The `beq` branch at 0x2df6b04 targets 0x2df6ad8, is taken when v0(=ret(FormatAndType)) == 0, and falls through when v0(=ret(FormatAndType)) != 0.
  The `beq` branch at 0x2df6b44 targets 0x2df6adc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The `beq` branch at 0x2df6b90 targets 0x2df6adc and is always taken.
  The `beq` branch at 0x2df6bb0 targets 0x2df6adc and is always taken.
  The return at 0x2df6ae8 has v0 = one of ?, ret(__glSPDlalloc), ret(__glFillImage), ret(?).
- `__glsplc_DrawArraysEXT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df6d30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df6d30-0x2df6f1c (492 bytes).
  It occupies 492 bytes.
  The `ld` at 0x2df6d64 loads 8 bytes from abs 0x1020.
  The `lw` at 0x2df6d7c loads 4 bytes from [0x1020]:8 +0x17c0.
  The `lw` at 0x2df6dd8 loads 4 bytes from [0x1020]:8 +0x162c.
  The `ld` at 0x2df6de0 loads 8 bytes from [0x1020]:8 +0x1638.
  The `ld` at 0x2df6de4 loads 8 bytes from [0x1020]:8 +0x1620.
  The `lw` at 0x2df6dfc loads 4 bytes from [0x1020]:8 +0x1650.
  The `ld` at 0x2df6e04 loads 8 bytes from [0x1020]:8 +0x1660.
  The `ld` at 0x2df6e08 loads 8 bytes from [0x1020]:8 +0x1640.
  The `lw` at 0x2df6e20 loads 4 bytes from [0x1020]:8 +0x1698.
  The `ld` at 0x2df6e28 loads 8 bytes from [0x1020]:8 +0x16a8.
  The `ld` at 0x2df6e2c loads 8 bytes from [0x1020]:8 +0x1688.
  The `lw` at 0x2df6e44 loads 4 bytes from [0x1020]:8 +0x1674.
  The `ld` at 0x2df6e4c loads 8 bytes from [0x1020]:8 +0x1680.
  The `ld` at 0x2df6e50 loads 8 bytes from [0x1020]:8 +0x1668.
  The `lw` at 0x2df6e68 loads 4 bytes from [0x1020]:8 +0x16b8.
  The `ld` at 0x2df6e70 loads 8 bytes from [0x1020]:8 +0x16c8.
  The `ld` at 0x2df6e74 loads 8 bytes from [0x1020]:8 +0x16b0.
  The `lw` at 0x2df6e8c loads 4 bytes from [0x1020]:8 +0x1608.
  The `ld` at 0x2df6e94 loads 8 bytes from [0x1020]:8 +0x1618.
  The `ld` at 0x2df6e98 loads 8 bytes from [0x1020]:8 +0x15f8.
  The `jalr` at 0x2df6d90 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1020]:8+6080].
  The `jalr` at 0x2df6dec calls (unknown callee) with a0=?, a1=?, a2=[[0x1020]:8+5676], a3=?.
  The `jalr` at 0x2df6e10 calls (unknown callee) with a0=?, a1=?, a2=[[0x1020]:8+5712], a3=?.
  The `jalr` at 0x2df6e34 calls (unknown callee) with a0=?, a1=?, a2=[[0x1020]:8+5784], a3=?.
  The `jalr` at 0x2df6e58 calls (unknown callee) with a0=?, a1=?, a2=[[0x1020]:8+5748], a3=?.
  The `jalr` at 0x2df6e7c calls (unknown callee) with a0=?, a1=?, a2=[[0x1020]:8+5816], a3=?.
  The `jalr` at 0x2df6ea0 calls (unknown callee) with a0=?, a1=?, a2=[[0x1020]:8+5640], a3=?.
  The `jalr` at 0x2df6eb8 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2df6ef8 calls __glsplc_InvalidEnum [0x2df4320] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1020]:8+6080].
  The `bgezall` at 0x2df6f0c calls __glsplc_InvalidValue [0x2df42e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1020]:8+6080].
  The `beq` branch at 0x2df6d78 targets 0x2df6ef4, is taken when a0 >= 0xa (unsigned), and falls through when a0 < 0xa (unsigned).
  The `bltz` branch at 0x2df6d84 targets 0x2df6f08, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x2df6da0 targets 0x2df6eb4, is taken when s0(=a1) >= s3(=(a2 + a1)) (signed), and falls through when s0(=a1) < s3(=(a2 + a1)) (signed).
  The `beq` branch at 0x2df6dd0 targets 0x2df6df4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x2df6df4 targets 0x2df6e18, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x2df6e18 targets 0x2df6e3c, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x2df6e3c targets 0x2df6e60, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x2df6e60 targets 0x2df6e84, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x2df6e84 targets 0x2df6ea8, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x2df6eac targets 0x2df6dd0, is taken when s3(=(a2 + a1)) != s0(?), and falls through when s3(=(a2 + a1)) == s0(?).
  The `beq` branch at 0x2df6f00 targets 0x2df6ec4 and is always taken.
  The `beq` branch at 0x2df6f14 targets 0x2df6ec4 and is always taken.
  The return at 0x2df6eec has v0 = one of ret(glEnd), ret(__glsplc_InvalidEnum), ret(__glsplc_InvalidValue).
- `__glSPExecuteDlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7110 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7110-0x2df7144 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x2df7130 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `jalr` at 0x2df712c calls __glSPInterpret [0x2edd084] with a0=[a1+32]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df713c has v0 = ret(__glSPInterpret).
- `__glSPDlistAddFree` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7150 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7150-0x2df71e4 (148 bytes).
  It occupies 148 bytes.
  The `ld` at 0x2df7160 loads 8 bytes from a0 (arg0 at entry) +0x15d8.
  The `lw` at 0x2df7168 loads 4 bytes from a0 (arg0 at entry) +0x15e0.
  The `ld` at 0x2df717c loads 8 bytes from a0 (arg0 at entry) +0x1578.
  The `sd` at 0x2df71bc stores 8 bytes to (ret(?) + ([a0+5600] << 0x4)) +0x0.
  The `sd` at 0x2df71c0 stores 8 bytes to (ret(?) + ([a0+5600] << 0x4)) +0x8.
  The `sw` at 0x2df71c8 stores 4 bytes to a0 (arg0 at entry) +0x15e0.
  The `sd` at 0x2df71d4 stores 8 bytes to a0 (arg0 at entry) +0x15d8.
  The `jalr` at 0x2df7190 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+5592]:8, a2=([a0+5600] << 0x4)+16, a3=a3 at entry (arg3).
  The `beq` branch at 0x2df7198 targets 0x2df71d8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The return at 0x2df71d0 has v0 = ret(?).
  The return at 0x2df71dc has v0 = ret(?).
- `__glSPFreeDlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df71f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df71f0-0x2df72e0 (240 bytes).
  It occupies 240 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x40, including `ld` at 0x2df71f8, `ld` at 0x2df7294.
  The `lw` at 0x2df7208 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `ld` at 0x2df723c loads 8 bytes from a1 (arg1 at entry) +0x18.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2df7260, `ld` at 0x2df726c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1580, including `ld` at 0x2df7280, `ld` at 0x2df7298, `ld` at 0x2df72a8.
  The `ld` at 0x2df72a4 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0x2df72b4 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `bgezall` at 0x2df7238 calls __glSPDlistFreeSegments [0x2df7610] with a0=a0 at entry (arg0), a1=[a1+24]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df7268 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2df7290 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+64]:8, a2=?, a3=?.
  The `jalr` at 0x2df72a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+32]:8, a2=?, a3=?.
  The `jalr` at 0x2df72b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+40]:8, a2=?, a3=?.
  The `jalr` at 0x2df72c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x2df7228 targets 0x2df7244, is taken when s1(=[a1+60]) == 0, and falls through when s1(=[a1+60]) != 0.
  The `beq` branch at 0x2df724c targets 0x2df727c, is taken when s3(=-0x1) == s1(?), and falls through when s3(=-0x1) != s1(?).
  The `bne` branch at 0x2df7274 targets 0x2df7260, is taken when s3(=-0x1) != s1(?), and falls through when s3(=-0x1) == s1(?).
  The return at 0x2df72d8 has v0 = ret(?).
- `__glSPDlistCompiler` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df72e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df72e0-0x2df741c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x2df72e8 loads 4 bytes from a0 (arg0 at entry) +0x15e0.
  The `ld` at 0x2df7308 loads 8 bytes from a0 (arg0 at entry) +0x1570.
  The `ld` at 0x2df730c loads 8 bytes from abs 0x1050.
  The `sw` at 0x2df7338 stores 4 bytes to ret(?) +0x0.
  The `ld` at 0x2df733c loads 8 bytes from a0 (arg0 at entry) +0x1520.
  The `sd` at 0x2df7340 stores 8 bytes to ret(?) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x15e4, including `lw` at 0x2df7344, `lw` at 0x2df7368, `lw` at 0x2df7388.
  3 such `sw` accesses store 4 bytes to ret(?) +0x38, including `sw` at 0x2df734c, `sw` at 0x2df736c, `sw` at 0x2df7390.
  The `ld` at 0x2df7360 loads 8 bytes from a0 (arg0 at entry) +0x1530.
  2 such `sd` accesses store 8 bytes to ret(?) +0x10, including `sd` at 0x2df7364, `sd` at 0x2df7384.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2df7370, `ld` at 0x2df7394.
  2 such `sd` accesses store 8 bytes to ret(?) +0x18, including `sd` at 0x2df737c, `sd` at 0x2df7398.
  The `sw` at 0x2df73a0 stores 4 bytes to ret(?) +0x3c.
  The `ld` at 0x2df73a4 loads 8 bytes from a0 (arg0 at entry) +0x15d8.
  The `sd` at 0x2df73a8 stores 8 bytes to ret(?) +0x40.
  The `ld` at 0x2df73ac loads 8 bytes from a0 (arg0 at entry) +0x15e8.
  The `sd` at 0x2df73b0 stores 8 bytes to ret(?) +0x20.
  The `lw` at 0x2df73b4 loads 4 bytes from a0 (arg0 at entry) +0x15f0.
  The `swc1` at 0x2df73b8 stores 4 bytes to ret(?) +0x48.
  The `sd` at 0x2df73bc stores 8 bytes to ret(?) +0x28.
  The `sw` at 0x2df73c0 stores 4 bytes to ret(?) +0x30.
  The `sw` at 0x2df73c4 stores 4 bytes to ret(?) +0x34.
  The `ld` at 0x2df73c8 loads 8 bytes from a0 (arg0 at entry) +0x1598.
  The `jalr` at 0x2df7320 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x70, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df7354 calls __glsplc_AddSentinel [0x2daedf0] with a0=?, a1=[a0+5408]:8, a2=0x1, a3=?.
  The `jalr` at 0x2df73d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?.
  The `beq` branch at 0x2df732c targets 0x2df73fc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2df7348 targets 0x2df7380, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2df7378 targets 0x2df739c and is always taken.
  The `beq` branch at 0x2df73cc targets 0x2df73dc, is taken when t9(=[a0+5528]:8) == 0, and falls through when t9(=[a0+5528]:8) != 0.
  The return at 0x2df73f4 has v0 = ret(?).
  The return at 0x2df7414 has v0 = 0x0.
- `__glSPDlistSpace` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7420 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7420-0x2df7578 (344 bytes).
  It occupies 344 bytes.
  The `ld` at 0x2df743c loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df7468 loads 8 bytes from [0x1020]:8 +0x1588.
  6 such `ld` accesses load 8 bytes from abs 0x1050, including `ld` at 0x2df7480, `ld` at 0x2df7494, `ld` at 0x2df74ac.
  The `sd` at 0x2df7488 stores 8 bytes to abs 0x1050.
  3 such `sd` accesses store 8 bytes to [0x1050]:8 +0x0, including `sd` at 0x2df7490, `sd` at 0x2df7498, `sd` at 0x2df74e0.
  2 such `sw` accesses store 4 bytes to abs 0x1060, including `sw` at 0x2df74a0, `sw` at 0x2df74e8.
  2 such `sd` accesses store 8 bytes to abs 0x1058, including `sd` at 0x2df74b8, `sd` at 0x2df7500.
  2 such `sw` accesses store 4 bytes to abs 0x1048, including `sw` at 0x2df74cc, `sw` at 0x2df7514.
  The `sd` at 0x2df74d8 stores 8 bytes to [0x1020]:8 +0x1558.
  The `lw` at 0x2df7520 loads 4 bytes from abs 0x1060.
  The `ld` at 0x2df752c loads 8 bytes from abs 0x1058.
  The `sw` at 0x2df753c stores 4 bytes to ?.
  The `ld` at 0x2df7548 loads 8 bytes from [0x1020]:8 +0x15b0.
  The `jalr` at 0x2df7470 calls (unknown callee) with a0=[0x1020]:8, a1=sp-48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2df7544 calls __glsplc_AddIlist [0x2df7580] with a0=[[0x1020]:8+5552]:8, a1=?, a2=([0x1060] << 0x2), a3=?.
  The `jalr` at 0x2df7554 calls __glSetError [0x2e315d0] with a0=0x505, a1=?, a2=?, a3=?.
  The `bne` branch at 0x2df7448 targets 0x2df7460, is taken when a0 < 0x2 (unsigned), and falls through when a0 >= 0x2 (unsigned).
  The `beq` branch at 0x2df7458 targets 0x2df7468 and is always taken.
  The `beq` branch at 0x2df7478 targets 0x2df7554, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2df7484 targets 0x2df74d8, is taken when a0(=[0x1050]:8) == 0, and falls through when a0(=[0x1050]:8) != 0.
  The `beq` branch at 0x2df748c targets 0x2df7520, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0x2df749c targets 0x2df74ec, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x2df74e4 targets 0x2df74a4, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x2df7524 targets 0x2df7494, is taken when v0(=[0x1060]) == 0, and falls through when v0(=[0x1060]) != 0.
  The `beq` branch at 0x2df754c targets 0x2df7498 and is always taken.
  The return at 0x2df74d0 has v0 = ?.
  The return at 0x2df7518 has v0 = ?.
  The return at 0x2df7570 has v0 = 0x0.
- `__glsplc_AddIlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7580 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7580-0x2df760c (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x2df7584 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df75a8 loads 8 bytes from [0x1020]:8 +0x10.
  The `lw` at 0x2df75ac loads 4 bytes from [0x1020]:8 +0x15f0.
  The `ld` at 0x2df75b4 loads 8 bytes from [0x1020]:8 +0x15e8.
  The `sd` at 0x2df75ec stores 8 bytes to (ret(?) + ([[0x1020]:8+5616] << 0x4)) +0x8.
  The `sd` at 0x2df75f0 stores 8 bytes to (ret(?) + ([[0x1020]:8+5616] << 0x4)) +0x0.
  The `sw` at 0x2df75f8 stores 4 bytes to [0x1020]:8 +0x15f0.
  The `sd` at 0x2df75fc stores 8 bytes to [0x1020]:8 +0x15e8.
  The `jalr` at 0x2df75c8 calls (unknown callee) with a0=[0x1020]:8, a1=[[0x1020]:8+5608]:8, a2=([[0x1020]:8+5616] << 0x4)+16, a3=[0x1020]:8, a4=0x109218.
  The return at 0x2df7604 has v0 = ret(?).
- `__glSPDlistFreeSegments` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7610 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7610-0x2df765c (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x2df7630 loads 8 bytes from a0 (arg0 at entry) +0x1590.
  The `ld` at 0x2df763c loads 8 bytes from ?.
  The `jalr` at 0x2df7638 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x2df7640 targets 0x2df7630, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The return at 0x2df7654 has v0 = ret(?).
- `__glSPCreatePlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7660 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7660-0x2df7704 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lw` at 0x2df7668, `lw` at 0x2df76d8.
  The `ld` at 0x2df767c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x2df7688 loads 8 bytes from a1 (arg1 at entry) +0x20.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2df76c0, `ld` at 0x2df76cc.
  The `lw` at 0x2df76c4 loads 4 bytes from ?.
  The `sw` at 0x2df76c8 stores 4 bytes to ?.
  The `sd` at 0x2df76d4 stores 8 bytes to ?.
  The `sd` at 0x2df76f4 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `jalr` at 0x2df7694 calls (unknown callee) with a0=a0 at entry (arg0), a1=([a1+48] << 0x4)-16, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2df76ec targets 0x2df76c0, is taken when a3(?) < v1(=[a1+48]-1) (signed), and falls through when a3(?) >= v1(=[a1+48]-1) (signed).
  The return at 0x2df76fc has v0 = ret(?).
- `__glSPValidateDlist` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7710-0x2df7748 (56 bytes).
  It occupies 56 bytes.
  The `sd` at 0x2df772c stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `jalr` at 0x2df7730 calls __glSPExecuteDlist [0x2df7110] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2df7740 has v0 = ret(__glSPExecuteDlist).
- `grow_region` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7750 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7750-0x2df795c (524 bytes).
  It occupies 524 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x2df7750, `lw` at 0x2df778c.
  The `ld` at 0x2df7758 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2df7764 loads 8 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x2df7794, `lw` at 0x2df77e0, `lw` at 0x2df78f4.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x2df77a4, `ld` at 0x2df78a4, `ld` at 0x2df78c8.
  The `ld` at 0x2df77ac loads 8 bytes from [0x1020]:8 +0x10.
  The `lw` at 0x2df77b4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sd` at 0x2df77dc stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0x2df780c loads 4 bytes from ?.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2df7828, `sw` at 0x2df7834, `sw` at 0x2df7850.
  The `lw` at 0x2df7890 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x2df7894, `lw` at 0x2df78c0.
  The `sw` at 0x2df78f8 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0x2df7900 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x2df7908 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0x2df7910 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x2df7918 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0x2df7924 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0x2df7778 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df77cc calls (unknown callee) with a0=[0x1020]:8, a1=[a0+32]:8, a2=?, a3=?.
  The `beq` branch at 0x2df7780 targets 0x2df7940, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2df77d8 targets 0x2df794c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0x2df7808 targets 0x2df7890, is taken when s1(=([a0+4] + a1)) < t0(=[a0+4]) (signed), and falls through when s1(=([a0+4] + a1)) >= t0(=[a0+4]) (signed).
  The `beq` branch at 0x2df7818 targets 0x2df7838, is taken when (t2(?) & 0x1) == 0, and falls through when (t2(?) & 0x1) != 0.
  The `beq` branch at 0x2df783c targets 0x2df7890, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bltz` branch at 0x2df7854 targets 0x2df7860, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bltz` branch at 0x2df7870 targets 0x2df787c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x2df7888 targets 0x2df7850, is taken when a7(=([a0+4] + a1)+1) != a0(?), and falls through when a7(=([a0+4] + a1)+1) == a0(?).
  The `beq` branch at 0x2df78ac targets 0x2df78f4, is taken when t9(=[a0+24]) == 0, and falls through when t9(=[a0+24]) != 0.
  The `beq` branch at 0x2df7944 targets 0x2df7934 and is always taken.
  The `beq` branch at 0x2df7954 targets 0x2df7934 and is always taken.
  The return at 0x2df792c has v0 = 0x0.
  The return at 0x2df7938 has v0 = -0x1.
- `__glDlistInitPageState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7960-0x2df79ec (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x2df7978 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2df79ac stores 8 bytes to ret(?) +0x20.
  The `sw` at 0x2df79b0 stores 4 bytes to ret(?) +0x1c.
  The `sw` at 0x2df79b4 stores 4 bytes to ret(?) +0x10.
  The `sd` at 0x2df79b8 stores 8 bytes to ret(?) +0x8.
  The `sw` at 0x2df79bc stores 4 bytes to ret(?) +0x18.
  The `sw` at 0x2df79c0 stores 4 bytes to ret(?) +0x14.
  The `sw` at 0x2df79c4 stores 4 bytes to ret(?) +0x4.
  The `sd` at 0x2df79d8 stores 8 bytes to ret(?) +0x30.
  The `sd` at 0x2df79dc stores 8 bytes to ret(?) +0x28.
  The `sw` at 0x2df79e8 stores 4 bytes to ret(?) +0x0.
  The `jalr` at 0x2df7988 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x2df7990 targets 0x2df79ac, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The return at 0x2df79a4 has v0 = 0x0.
  The return at 0x2df79e4 has v0 = ret(?).
- `__glDlistFreePageState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df79f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df79f0-0x2df7a60 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2df7a08 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x2df7a0c loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x2df7a28, `ld` at 0x2df7a38.
  The `ld` at 0x2df7a34 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `jalr` at 0x2df7a20 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2df7a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+32]:8, a2=?, a3=?.
  The `jalr` at 0x2df7a40 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x2df7a58 has v0 = ret(?).
- `__glDlistAllocPage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7a60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7a60-0x2df7c44 (484 bytes).
  It occupies 484 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x2df7a60, `ld` at 0x2df7ae8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x2df7a84, `lw` at 0x2df7ae4, `lw` at 0x2df7bdc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0x2df7a88, `lw` at 0x2df7c1c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x2df7a90, `ld` at 0x2df7ab0, `ld` at 0x2df7b60.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2df7aa4, `lw` at 0x2df7ab8, `lw` at 0x2df7b70.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2df7aac, `sw` at 0x2df7ad4, `sw` at 0x2df7ba0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0x2df7ac8, `sw` at 0x2df7bd8.
  The `lw` at 0x2df7ad8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x2df7af0, `sw` at 0x2df7bf0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x2df7b3c, `lw` at 0x2df7be0.
  The `ld` at 0x2df7b4c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x2df7b58 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x2df7be4 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `bgezall` at 0x2df7b18 calls grow_region [0x2df7750] with a0=a0 at entry (arg0), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x2df7750.
  The `jalr` at 0x2df7b50 calls (unknown callee) with a0=[a0+32]:8, a1=?, a2=?, a3=[a0+28].
  The `bgezall` at 0x2df7c04 calls grow_region [0x2df7750] with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=[a0+28], a7=0x2df7750.
  The `beq` branch at 0x2df7a7c targets 0x2df7b08, is taken when v0(=[a0+8]:8) == 0, and falls through when v0(=[a0+8]:8) != 0.
  The `blez` branch at 0x2df7a8c targets 0x2df7b3c, is taken when v0(=[a0+20]) <= 0 (signed), and falls through when v0(=[a0+20]) > 0 (signed).
  The `bgez` branch at 0x2df7b20 targets 0x2df7a84, is taken when v0(=ret(grow_region)) >= 0 (signed), and falls through when v0(=ret(grow_region)) < 0 (signed).
  The `bne` branch at 0x2df7b44 targets 0x2df7bf4, is taken when a7(=[a0+24]) < 0x41 (signed), and falls through when a7(=[a0+24]) >= 0x41 (signed).
  The `bltz` branch at 0x2df7b7c targets 0x2df7c20, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x2df7b94 targets 0x2df7c3c, is taken when (a5(?) & 0x2) == 0, and falls through when (a5(?) & 0x2) != 0.
  The `bltz` branch at 0x2df7bb8 targets 0x2df7bd8, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x2df7bd0 targets 0x2df7ba0, is taken when (a5(?) & 0x2) != 0, and falls through when (a5(?) & 0x2) == 0.
  The `beq` branch at 0x2df7bec targets 0x2df7a94 and is always taken.
  The `bltz` branch at 0x2df7c0c targets 0x2df7c28, is taken when v0(=ret(grow_region)) < 0 (signed), and falls through when v0(=ret(grow_region)) >= 0 (signed).
  The `beq` branch at 0x2df7c18 targets 0x2df7a94 and is always taken.
  The `beq` branch at 0x2df7c20 targets 0x2df7bd8 and is always taken.
  The `beq` branch at 0x2df7c3c targets 0x2df7bd8 and is always taken.
  The return at 0x2df7b00 has v0 = ?.
  The return at 0x2df7b34 has v0 = 0x0.
  The return at 0x2df7c34 has v0 = 0x0.
- `__glDlistFreePage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7c50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7c50-0x2df7d20 (208 bytes).
  It occupies 208 bytes.
  The `ld` at 0x2df7c50 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2df7c54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x2df7c6c, `ld` at 0x2df7c90, `ld` at 0x2df7ca4.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2df7c7c, `lw` at 0x2df7c98, `lw` at 0x2df7cc8.
  The `lw` at 0x2df7c84 loads 4 bytes from a0 (arg0 at entry) +0x4.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2df7c8c, `sw` at 0x2df7ca0, `sw` at 0x2df7cb0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x2df7cfc, `lw` at 0x2df7d0c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x2df7d08, `sw` at 0x2df7d1c.
  The `sw` at 0x2df7d10 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `bltz` branch at 0x2df7cdc targets 0x2df7d0c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The return at 0x2df7d04 has v0 = ?.
  The return at 0x2df7d18 has v0 = ?.
- `__glDlistIsPage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2df7d20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2df7d20-0x2df7d64 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x2df7d20 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2df7d24 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2df7d30 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `bne` branch at 0x2df7d34 targets 0x2df7d54, is taken when a1 < a3(=[a0+8]:8) (unsigned), and falls through when a1 >= a3(=[a0+8]:8) (unsigned).
  The `beq` branch at 0x2df7d44 targets 0x2df7d54, is taken when a1 >= v0(=([a0+16] + [a0+8]:8)) (unsigned), and falls through when a1 < v0(=([a0+16] + [a0+8]:8)) (unsigned).
  The `beq` branch at 0x2df7d4c targets 0x2df7d5c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x2df7d54 has v0 = 0x0.
  The return at 0x2df7d5c has v0 = 0x1.
- `__glSpanApplyRGBAColorTable` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dfda70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2dfda70-0x2dfe160 (1776 bytes).
  It occupies 1776 bytes.
  The `lw` at 0x2dfda78 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2dfda9c, `sw` at 0x2dfe130, `sw` at 0x2dfe144.
  The `lw` at 0x2dfdaa4 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lw` at 0x2dfdaac loads 4 bytes from (a0 + one of 0x17e4, 0x1894, 0x1944) +0x0.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a38, including `lwc1` at 0x2dfdae4, `lwc1` at 0x2dfdc18, `lwc1` at 0x2dfddb0.
  19 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf28, including `lwc1` at 0x2dfdaec, `lwc1` at 0x2dfdb34, `lwc1` at 0x2dfdb7c.
  19 such `ld` accesses load 8 bytes from (a0 + one of 0x17d8, 0x1888, 0x1938) +0x0, including `ld` at 0x2dfdb0c, `ld` at 0x2dfdb54, `ld` at 0x2dfdb9c.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a08, including `lwc1` at 0x2dfdb18, `lwc1` at 0x2dfdc50, `lwc1` at 0x2dfdde8.
  23 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2dfdb20, `lwc1` at 0x2dfdb68, `lwc1` at 0x2dfdbb0.
  24 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2dfdb28, `swc1` at 0x2dfdb70, `swc1` at 0x2dfdbb8.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a3c, including `lwc1` at 0x2dfdb2c, `lwc1` at 0x2dfdc64, `lwc1` at 0x2dfddfc.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a0c, including `lwc1` at 0x2dfdb60, `lwc1` at 0x2dfdc9c, `lwc1` at 0x2dfde34.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a40, including `lwc1` at 0x2dfdb74, `lwc1` at 0x2dfdcb0, `lwc1` at 0x2dfde48.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a10, including `lwc1` at 0x2dfdba8, `lwc1` at 0x2dfdce8, `lwc1` at 0x2dfde80.
  The `lw` at 0x2dfdbd4 loads 4 bytes from (a0 + one of 0x1820, 0x18d0, 0x1980) +0x0.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a44, including `lwc1` at 0x2dfdcfc, `lwc1` at 0x2dfdd60, `lwc1` at 0x2dfde94.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a30, including `lwc1` at 0x2dfdd34, `lwc1` at 0x2dfdd94, `lwc1` at 0x2dfdecc.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc8, including `lw` at 0x2dfe138, `lw` at 0x2dfe150.
  The `beq` branch at 0x2dfda8c targets 0x2dfe11c, is taken when (a5(=[a0+39260]) & 0x1) == 0, and falls through when (a5(=[a0+39260]) & 0x1) != 0.
  The `blez` branch at 0x2dfdab8 targets 0x2dfe108, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x2dfdad0 targets 0x2dfe154 and is always taken.
  The `beq` branch at 0x2dfdbc0 targets 0x2dfe108, is taken when a6(?) == t0(?), and falls through when a6(?) != t0(?).
  The `beq` branch at 0x2dfdbe4 targets 0x2dfdd4c, is taken when t2(=0x1906) == a1(?), and falls through when t2(=0x1906) != a1(?).
  The `beq` branch at 0x2dfdbec targets 0x2dfdae0, is taken when t3(=0x1909) == a1(?), and falls through when t3(=0x1909) != a1(?).
  The `beq` branch at 0x2dfdbf4 targets 0x2dfddac, is taken when ra(=0x190a) == a1(?), and falls through when ra(=0x190a) != a1(?).
  The `beq` branch at 0x2dfdbfc targets 0x2dfdee4, is taken when t1(=0x8049) == a1(?), and falls through when t1(=0x8049) != a1(?).
  The `beq` branch at 0x2dfdc04 targets 0x2dfe00c, is taken when s0(=0x1907) == a1(?), and falls through when s0(=0x1907) != a1(?).
  The `bne` branch at 0x2dfdc0c targets 0x2dfdbc0, is taken when s1(=0x1908) != a1(?), and falls through when s1(=0x1908) == a1(?).
  The `beq` branch at 0x2dfdd44 targets 0x2dfdbc0 and is always taken.
  The `beq` branch at 0x2dfdda4 targets 0x2dfdbc0 and is always taken.
  The `beq` branch at 0x2dfdedc targets 0x2dfdbc0 and is always taken.
  The `beq` branch at 0x2dfe004 targets 0x2dfdbc0 and is always taken.
  The `beq` branch at 0x2dfe100 targets 0x2dfdbc0 and is always taken.
  The `beq` branch at 0x2dfe128 targets 0x2dfe13c, is taken when (a5(=[a0+39260]) & 0x2) == 0, and falls through when (a5(=[a0+39260]) & 0x2) != 0.
  The `beq` branch at 0x2dfe134 targets 0x2dfdaa8 and is always taken.
  The `beq` branch at 0x2dfe14c targets 0x2dfdaa8 and is always taken.
  The `beq` branch at 0x2dfe158 targets 0x2dfdbcc and is always taken.
  The return at 0x2dfe114 has v0 = ?.
  The instructions from 0x2dfdad8 to 0x2dfdadc are not reached by any path from the entry, and their branches are not listed.
- `__glInitPacker3D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2dfe340 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2dfe340-0x2dfe3b0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2dfe368 loads 4 bytes from a1 (arg1 at entry) +0xa0.
  The `lw` at 0x2dfe36c loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lw` at 0x2dfe374 loads 4 bytes from a1 (arg1 at entry) +0x98.
  The `ld` at 0x2dfe38c loads 8 bytes from a1 (arg1 at entry) +0x68.
  The `sw` at 0x2dfe394 stores 4 bytes to a1 (arg1 at entry) +0x78.
  The `sd` at 0x2dfe3a0 stores 8 bytes to a1 (arg1 at entry) +0x68.
  The `bgezall` at 0x2dfe360 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2dfe3a8 has v0 = ?.
- `__glSpanRGBAScaleBias` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e02140 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e02140-0x2e022a8 (360 bytes).
  It occupies 360 bytes.
  The `lwc1` at 0x2e02140 loads 4 bytes from a1 (arg1 at entry) +0x184.
  The `lwc1` at 0x2e02144 loads 4 bytes from a1 (arg1 at entry) +0x180.
  The `lwc1` at 0x2e02148 loads 4 bytes from a1 (arg1 at entry) +0x17c.
  The `lwc1` at 0x2e0214c loads 4 bytes from a1 (arg1 at entry) +0x178.
  The `lwc1` at 0x2e02150 loads 4 bytes from a1 (arg1 at entry) +0x174.
  The `lw` at 0x2e02154 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e02158 loads 4 bytes from a1 (arg1 at entry) +0x170.
  The `lwc1` at 0x2e0215c loads 4 bytes from a1 (arg1 at entry) +0x16c.
  The `lwc1` at 0x2e0216c loads 4 bytes from a1 (arg1 at entry) +0x168.
  20 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e02180, `lwc1` at 0x2e0218c, `lwc1` at 0x2e02198.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e02188, `swc1` at 0x2e02194, `swc1` at 0x2e021a0.
  The `blez` branch at 0x2e02168 targets 0x2e022a0, is taken when a4(=[a1+200]) <= 0 (signed), and falls through when a4(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e02178 targets 0x2e021c4, is taken when (a4(=[a1+200]) & 0x3) == 0, and falls through when (a4(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e021bc targets 0x2e02180, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e021c8 targets 0x2e022a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e02298 targets 0x2e021d0, is taken when a4(=[a1+200]) != a1(?), and falls through when a4(=[a1+200]) == a1(?).
  The return at 0x2e022a0 has v0 = ?.
- `__glSpanRGBAScaleBiasReduce` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e022b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e022b0-0x2e026a0 (1008 bytes).
  It occupies 1008 bytes.
  The `lw` at 0x2e022b0 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0x2e022b4 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e022b8 loads 4 bytes from a1 (arg1 at entry) +0x168.
  The `lwc1` at 0x2e022bc loads 4 bytes from a1 (arg1 at entry) +0x16c.
  The `lwc1` at 0x2e022c0 loads 4 bytes from a1 (arg1 at entry) +0x170.
  The `lwc1` at 0x2e022c4 loads 4 bytes from a1 (arg1 at entry) +0x174.
  The `lwc1` at 0x2e022c8 loads 4 bytes from a1 (arg1 at entry) +0x178.
  The `lwc1` at 0x2e022cc loads 4 bytes from a1 (arg1 at entry) +0x17c.
  The `lwc1` at 0x2e022d0 loads 4 bytes from a1 (arg1 at entry) +0x184.
  The `lwc1` at 0x2e022d8 loads 4 bytes from a1 (arg1 at entry) +0x180.
  The `lw` at 0x2e02300 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `lwc1` at 0x2e02308 loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `lwc1` at 0x2e0230c loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lwc1` at 0x2e02310 loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e02314 loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lbu` at 0x2e0236c loads 1 byte from a1 (arg1 at entry) +0x21c.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e023a0, `lw` at 0x2e023f0, `lw` at 0x2e02414.
  35 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e023ac, `lwc1` at 0x2e023b4, `lwc1` at 0x2e023bc.
  10 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e023e0, `swc1` at 0x2e02434, `swc1` at 0x2e02468.
  The `beq` branch at 0x2e02334 targets 0x2e02668, is taken when a6(=[a1+88]) == at(=0x80e1), and falls through when a6(=[a1+88]) != at(=0x80e1).
  The `beq` branch at 0x2e02340 targets 0x2e02684, is taken when a6(=[a1+88]) == v1(=0x8000), and falls through when a6(=[a1+88]) != v1(=0x8000).
  The `beq` branch at 0x2e02348 targets 0x2e02500, is taken when a7(=0x1) == a6(=[a1+88]), and falls through when a7(=0x1) != a6(=[a1+88]).
  The `beq` branch at 0x2e02350 targets 0x2e02500, is taken when a6(=[a1+88]) == a0(=0x190a), and falls through when a6(=[a1+88]) != a0(=0x190a).
  The `beq` branch at 0x2e02370 targets 0x2e02518, is taken when a4(=[a1+540]:1) == 0, and falls through when a4(=[a1+540]:1) != 0.
  The `blez` branch at 0x2e02378 targets 0x2e024f8, is taken when t3(=[a1+200]) <= 0 (signed), and falls through when t3(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e02394 targets 0x2e024d8 and is always taken.
  The `bne` branch at 0x2e023dc targets 0x2e023a0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e023e8 targets 0x2e024d0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e024c4 targets 0x2e023f0, is taken when a2(?) != a3(=(sp-16 + ([a1+124] << 0x2))), and falls through when a2(?) == a3(=(sp-16 + ([a1+124] << 0x2))).
  The `beq` branch at 0x2e024d0 targets 0x2e024f8, is taken when t3(=[a1+200]) == t1(?), and falls through when t3(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e024d8 targets 0x2e024d0, is taken when t2(=[a1+124]) <= 0 (signed), and falls through when t2(=[a1+124]) > 0 (signed).
  The `bne` branch at 0x2e024e8 targets 0x2e023a0, is taken when (t2(=[a1+124]) & 0x3) != 0, and falls through when (t2(=[a1+124]) & 0x3) == 0.
  The `beq` branch at 0x2e024f0 targets 0x2e023e4 and is always taken.
  The `beq` branch at 0x2e02510 targets 0x2e0236c and is always taken.
  The `blez` branch at 0x2e02518 targets 0x2e024f8, is taken when t3(=[a1+200]) <= 0 (signed), and falls through when t3(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e02530 targets 0x2e02648 and is always taken.
  The `bne` branch at 0x2e02570 targets 0x2e02540, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e0257c targets 0x2e02640, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e02634 targets 0x2e02590, is taken when a2(?) != a3(=(sp-16 + ([a1+124] << 0x2))), and falls through when a2(?) == a3(=(sp-16 + ([a1+124] << 0x2))).
  The `beq` branch at 0x2e02640 targets 0x2e024f8, is taken when t3(=[a1+200]) == t1(?), and falls through when t3(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e02648 targets 0x2e02640, is taken when t2(=[a1+124]) <= 0 (signed), and falls through when t2(=[a1+124]) > 0 (signed).
  The `bne` branch at 0x2e02658 targets 0x2e02540, is taken when (t2(=[a1+124]) & 0x3) != 0, and falls through when (t2(=[a1+124]) & 0x3) == 0.
  The `beq` branch at 0x2e02660 targets 0x2e02578 and is always taken.
  The `beq` branch at 0x2e0267c targets 0x2e0236c and is always taken.
  The `beq` branch at 0x2e02698 targets 0x2e0236c and is always taken.
  The return at 0x2e024f8 has v0 = one of a0+65536, ?.
  The instructions from 0x2e0239c to 0x2e0239c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e02538 to 0x2e0253c are not reached by any path from the entry, and their branches are not listed.
- `__glDrawPixelSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e06980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e06980-0x2e06c10 (656 bytes).
  It occupies 656 bytes.
  The `lw` at 0x2e0699c loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x2e069d0 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lw` at 0x2e069f8 loads 4 bytes from a1 (arg1 at entry) +0x18c.
  The `sd` at 0x2e06a38 stores 8 bytes to a1 (arg1 at entry) +0x160.
  The `lwc1` at 0x2e06a3c loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `lwc1` at 0x2e06a40 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `lw` at 0x2e06a44 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  The `ld` at 0x2e06a48 loads 8 bytes from a1 (arg1 at entry) +0x200.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e06ab0, `ld` at 0x2e06acc, `ld` at 0x2e06b7c.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x198, including `ld` at 0x2e06ab4, `ld` at 0x2e06bb4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x2e06ad4, `lw` at 0x2e06b74.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x2e06ae4, `sd` at 0x2e06ba4.
  The `ld` at 0x2e06af0 loads 8 bytes from ?.
  The `sw` at 0x2e06b4c stores 4 bytes to a0 (arg0 at entry) +0x995c.
  3 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd8, including `swc1` at 0x2e06b50, `swc1` at 0x2e06b88, `swc1` at 0x2e06c0c.
  The `bgezall` at 0x2e06a34 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x10, a3=?, a4=[a1+396].
  The `jalr` at 0x2e06ac0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e06b00 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e06b24 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `blez` branch at 0x2e06a50 targets 0x2e06bd8, is taken when v1(=[a1+188]) <= 0 (signed), and falls through when v1(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e06aa0 targets 0x2e06c00 and is always taken.
  The `beq` branch at 0x2e06ae0 targets 0x2e06b18, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e06b10 targets 0x2e06af0, is taken when s1(?) != s5(=(([a1+396] << 0x3) + a1)), and falls through when s1(?) == s5(=(([a1+396] << 0x3) + a1)).
  The `beq` branch at 0x2e06b48 targets 0x2e06bc0, is taken when s6(?) >= a0(=[a1+188]) (signed), and falls through when s6(?) < a0(=[a1+188]) (signed).
  The `bne` branch at 0x2e06b64 targets 0x2e06ab0, is taken when s7(?) != a0(?), and falls through when s7(?) == a0(?).
  The `beq` branch at 0x2e06b6c targets 0x2e06bb8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e06b78 targets 0x2e06b88 and is always taken.
  The `beq` branch at 0x2e06b80 targets 0x2e06ab4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2e06ba8 targets 0x2e06b80, is taken when s7(?) == a0(?), and falls through when s7(?) != a0(?).
  The `beq` branch at 0x2e06bb0 targets 0x2e06ab8 and is always taken.
  The `beq` branch at 0x2e06bb8 targets 0x2e06ab4 and is always taken.
  The `beq` branch at 0x2e06c08 targets 0x2e06b54 and is always taken.
  The return at 0x2e06bf8 has v0 = one of ret(__glComputeSpanPixelArray), [a0+39260].
  The instructions from 0x2e06aa8 to 0x2e06aac are not reached by any path from the entry, and their branches are not listed.
- `__glLateScissorRender` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e071f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e071f0-0x2e07324 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x2e071f4 loads 4 bytes from a1 (arg1 at entry) +0x268.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x268, including `sw` at 0x2e07218, `sw` at 0x2e072a0.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x240, including `lw` at 0x2e07244, `lw` at 0x2e07278, `lw` at 0x2e072d4.
  The `lw` at 0x2e0724c loads 4 bytes from a1 (arg1 at entry) +0x26c.
  The `ld` at 0x2e07250 loads 8 bytes from a1 (arg1 at entry) +0x238.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc8, including `lw` at 0x2e07254, `lw` at 0x2e0727c.
  3 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x160, including `sd` at 0x2e0725c, `sd` at 0x2e07284, `sd` at 0x2e072fc.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc8, including `sw` at 0x2e0726c, `sw` at 0x2e0728c.
  The `lw` at 0x2e072a4 loads 4 bytes from a1 (arg1 at entry) +0x250.
  The `lw` at 0x2e072a8 loads 4 bytes from a1 (arg1 at entry) +0x24c.
  The `lw` at 0x2e072ac loads 4 bytes from a1 (arg1 at entry) +0x258.
  The `lw` at 0x2e072b0 loads 4 bytes from a1 (arg1 at entry) +0x25c.
  The `ld` at 0x2e072b4 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `sw` at 0x2e072bc stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `sw` at 0x2e072c0 stores 4 bytes to a1 (arg1 at entry) +0xe8.
  The `sw` at 0x2e072c4 stores 4 bytes to a1 (arg1 at entry) +0xdc.
  The `sw` at 0x2e072c8 stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `lwc1` at 0x2e072d0 loads 4 bytes from a1 (arg1 at entry) +0x244.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc4, including `lw` at 0x2e072d8, `lw` at 0x2e0730c.
  The `lw` at 0x2e072dc loads 4 bytes from a1 (arg1 at entry) +0x254.
  The `sw` at 0x2e072e0 stores 4 bytes to a1 (arg1 at entry) +0xe4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc4, including `sw` at 0x2e072ec, `sw` at 0x2e07320.
  The `swc1` at 0x2e072f0 stores 4 bytes to a1 (arg1 at entry) +0xd4.
  The `jalr` at 0x2e07268 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=([a1+620] + a2), a3=?, a4=a2 at entry (arg2), a5=[a1+576], a6=0x2f017a8, a7=([a1+200] + [a1+576]).
  The `bgezall` at 0x2e072f8 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a1+616], a6=0x2f017a8, a7=([a1+196] + [a1+576]).
  The `blez` branch at 0x2e07210 targets 0x2e0722c, is taken when a4(=[a1+616]) <= 0 (signed), and falls through when a4(=[a1+616]) > 0 (signed).
  The `beq` branch at 0x2e07234 targets 0x2e0729c, is taken when a4(=[a1+616]) == 0, and falls through when a4(=[a1+616]) != 0.
  The `beq` branch at 0x2e0731c targets 0x2e0724c and is always taken.
  The return at 0x2e07224 has v0 = [a1+616]-1.
  The return at 0x2e07294 has v0 = ret(?).
- `__glInitLateScissor` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e07330 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e07330-0x2e07658 (808 bytes).
  It occupies 808 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x2e07334, `lw` at 0x2e0745c, `lw` at 0x2e07484.
  The `ld` at 0x2e07368 loads 8 bytes from a0 (arg0 at entry) +0x3b0.
  The `lw` at 0x2e07374 loads 4 bytes from [a0+944]:8 +0x0.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e073a0, `ld` at 0x2e073bc, `ld` at 0x2e073d0.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2e073ac, `sd` at 0x2e073c4, `sd` at 0x2e073d8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x808, including `sw` at 0x2e07470, `sw` at 0x2e074a0, `sw` at 0x2e07634.
  The `lw` at 0x2e074b4 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `sb` at 0x2e074b8 stores 1 byte to a1 (arg1 at entry) +0x230.
  The `lw` at 0x2e074c0 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `sw` at 0x2e074c8 stores 4 bytes to a1 (arg1 at entry) +0x240.
  The `lwc1` at 0x2e074d0 loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `swc1` at 0x2e074d4 stores 4 bytes to a1 (arg1 at entry) +0x244.
  The `lw` at 0x2e074dc loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwc1` at 0x2e074e4 loads 4 bytes from a1 (arg1 at entry) +0xb0.
  The `swc1` at 0x2e074ec stores 4 bytes to a1 (arg1 at entry) +0x248.
  The `sw` at 0x2e074f4 stores 4 bytes to a1 (arg1 at entry) +0x250.
  The `sw` at 0x2e074fc stores 4 bytes to a1 (arg1 at entry) +0x254.
  The `sw` at 0x2e07504 stores 4 bytes to a1 (arg1 at entry) +0x258.
  The `sw` at 0x2e0750c stores 4 bytes to a1 (arg1 at entry) +0x24c.
  The `sw` at 0x2e07518 stores 4 bytes to a1 (arg1 at entry) +0x25c.
  The `lw` at 0x2e07520 loads 4 bytes from a1 (arg1 at entry) +0xdc.
  The `sw` at 0x2e0752c stores 4 bytes to a1 (arg1 at entry) +0x260.
  The `sw` at 0x2e07550 stores 4 bytes to a1 (arg1 at entry) +0x264.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x84, including `lw` at 0x2e07560, `lw` at 0x2e07578.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x26c, including `sw` at 0x2e07574, `sw` at 0x2e07588.
  The `lwc1` at 0x2e0758c loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `lw` at 0x2e075b0 loads 4 bytes from a1 (arg1 at entry) +0xe0.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x268, including `sw` at 0x2e075b8, `sw` at 0x2e075c8, `sw` at 0x2e075cc.
  The `lw` at 0x2e075e8 loads 4 bytes from a0 (arg0 at entry) +0x5d8.
  The `lbu` at 0x2e075f4 loads 1 byte from a0 (arg0 at entry) +0x650.
  The `jalr` at 0x2e0746c calls __glComputeClipBox [0x2e9c3b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=-0x4001.
  The `bgezall` at 0x2e0747c calls __glClipDrawPixels [0x2e060a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e0749c calls __glComputeClipBox [0x2e9c3b0] with a0=a0 at entry (arg0), a1=([a0+2056] | 0x4000), a2=?, a3=?.
  The `bgezall` at 0x2e074ac calls __glClipDrawPixels [0x2e060a0] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `bgezall` at 0x2e07608 calls __glClipDrawPixels [0x2e060a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x2e07630 calls __glComputeClipBox [0x2e9c3b0] with a0=a0 at entry (arg0), a1=([a0+2056] | 0x4000), a2=?, a3=?.
  The `beq` branch at 0x2e0735c targets 0x2e07600, is taken when (at(=[a0+2056]) & 0x4000) == 0, and falls through when (at(=[a0+2056]) & 0x4000) != 0.
  The `beq` branch at 0x2e0736c targets 0x2e075e8, is taken when v0(=[a0+944]:8) == v1(=0x2f01750), and falls through when v0(=[a0+944]:8) != v1(=0x2f01750).
  The `beq` branch at 0x2e07378 targets 0x2e075e8, is taken when a0(=[[a0+944]:8]) == a1(=0x8010), and falls through when a0(=[[a0+944]:8]) != a1(=0x8010).
  The `bne` branch at 0x2e073a8 targets 0x2e07390, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x2e07450 targets 0x2e073b0, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `beq` branch at 0x2e0748c targets 0x2e07628, is taken when v0(=ret(__glClipDrawPixels)) == 0, and falls through when v0(=ret(__glClipDrawPixels)) != 0.
  The `bc1f` branch at 0x2e0754c targets 0x2e07578, is taken when not (f4(=[a1+176]) < f5(=0x3f800000) (c.lt.s at 0x2e07524)), and falls through when f4(=[a1+176]) < f5(=0x3f800000) (c.lt.s at 0x2e07524).
  The `bc1f` branch at 0x2e07558 targets 0x2e07578, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x2e07570 targets 0x2e0758c and is always taken.
  The `bc1f` branch at 0x2e0759c targets 0x2e075cc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e075a8 targets 0x2e075cc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bgez` branch at 0x2e075bc targets 0x2e075d0, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0x2e075c4 targets 0x2e075d0 and is always taken.
  The `bne` branch at 0x2e075ec targets 0x2e07380, is taken when a1(=[a0+1496]) != 0, and falls through when a1(=[a0+1496]) == 0.
  The `bne` branch at 0x2e075f8 targets 0x2e07380, is taken when a2(=[a0+1616]:1) != 0, and falls through when a2(=[a0+1616]:1) == 0.
  The return at 0x2e075e0 has v0 = 0x1.
  The return at 0x2e07620 has v0 = ret(__glClipDrawPixels).
  The return at 0x2e07650 has v0 = ?.
- `__glReadPixelSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e07c10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e07c10-0x2e07de0 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0x2e07c20 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x2e07c48 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lw` at 0x2e07c68 loads 4 bytes from a1 (arg1 at entry) +0x18c.
  The `lw` at 0x2e07c88 loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `lw` at 0x2e07c90 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  The `ld` at 0x2e07c94 loads 8 bytes from a1 (arg1 at entry) +0x190.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e07cf0, `ld` at 0x2e07d24.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x68, including `ld` at 0x2e07d34, `ld` at 0x2e07d40.
  The `lwc1` at 0x2e07d44 loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x2e07d48 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `sd` at 0x2e07d58 stores 8 bytes to a1 (arg1 at entry) +0x68.
  The `swc1` at 0x2e07d60 stores 4 bytes to a1 (arg1 at entry) +0xd0.
  The `sw` at 0x2e07d68 stores 4 bytes to a0 (arg0 at entry) +0x995c.
  The `jalr` at 0x2e07d00 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e07d30 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+104]:8.
  The `jalr` at 0x2e07d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+400]:8.
  The `blez` branch at 0x2e07ca4 targets 0x2e07dc0, is taken when at(=[a1+188]) <= 0 (signed), and falls through when at(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e07ce0 targets 0x2e07d6c and is always taken.
  The `bne` branch at 0x2e07d10 targets 0x2e07cf0, is taken when s1(?) != s5(=(([a1+396]-1 << 0x3) + a1)), and falls through when s1(?) == s5(=(([a1+396]-1 << 0x3) + a1)).
  The `beq` branch at 0x2e07d64 targets 0x2e07da4, is taken when v0(=[a1+188]) == s7(?), and falls through when v0(=[a1+188]) != s7(?).
  The `bgtz` branch at 0x2e07d94 targets 0x2e07cf0, is taken when a4(=[a1+396]-1) > 0 (signed), and falls through when a4(=[a1+396]-1) <= 0 (signed).
  The `beq` branch at 0x2e07d9c targets 0x2e07d1c and is always taken.
  The return at 0x2e07dd8 has v0 = one of ?, [a1+188].
  The instructions from 0x2e07ce8 to 0x2e07cec are not reached by any path from the entry, and their branches are not listed.
- `__glCopyPixelSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e08b20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e08b20-0x2e08ddc (700 bytes).
  It occupies 700 bytes.
  The `lw` at 0x2e08b58 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x2e08b8c loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lw` at 0x2e08bb4 loads 4 bytes from a1 (arg1 at entry) +0x18c.
  The `sd` at 0x2e08bf8 stores 8 bytes to a1 (arg1 at entry) +0x160.
  The `lbu` at 0x2e08bfc loads 1 byte from a1 (arg1 at entry) +0xf0.
  The `lwc1` at 0x2e08c5c loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `lwc1` at 0x2e08c60 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `lw` at 0x2e08c64 loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x2e08c68 loads 8 bytes from a1 (arg1 at entry) +0x190.
  The `ld` at 0x2e08c6c loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0x2e08c70 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  4 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd8, including `swc1` at 0x2e08cb8, `swc1` at 0x2e08ce8, `swc1` at 0x2e08da4.
  3 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd0, including `swc1` at 0x2e08cdc, `swc1` at 0x2e08d08, `swc1` at 0x2e08d98.
  The `ld` at 0x2e08d40 loads 8 bytes from ?.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd0, including `lwc1` at 0x2e08d7c, `lwc1` at 0x2e08dc8.
  The `sw` at 0x2e08da0 stores 4 bytes to a0 (arg0 at entry) +0x995c.
  The `bgezall` at 0x2e08bf4 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=-0x10, a3=?, a4=[a1+396].
  The `bgezall` at 0x2e08c10 calls __glCopyPixelsOverlapping [0x2e09530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+396], a3=?.
  The `jalr` at 0x2e08d1c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e08d50 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e08d74 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x2e08c00 targets 0x2e08c5c, is taken when v1(=[a1+240]:1) == 0, and falls through when v1(=[a1+240]:1) != 0.
  The `blez` branch at 0x2e08c7c targets 0x2e08c18, is taken when a1(=[a1+188]) <= 0 (signed), and falls through when a1(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e08ca0 targets 0x2e08da4 and is always taken.
  The `beq` branch at 0x2e08cb0 targets 0x2e08d0c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e08cd8 targets 0x2e08d0c, is taken when s7(?) != a0(?), and falls through when s7(?) == a0(?).
  The `beq` branch at 0x2e08ce0 targets 0x2e08d0c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2e08d04 targets 0x2e08cb0, is taken when s7(?) == a0(?), and falls through when s7(?) != a0(?).
  The `blez` branch at 0x2e08d30 targets 0x2e08d68, is taken when v0(=[a1+396]) <= 0 (signed), and falls through when v0(=[a1+396]) > 0 (signed).
  The `bne` branch at 0x2e08d60 targets 0x2e08d40, is taken when s1(?) != s5(=(a1 + ([a1+396] << 0x3))), and falls through when s1(?) == s5(=(a1 + ([a1+396] << 0x3))).
  The `beq` branch at 0x2e08d9c targets 0x2e08c18, is taken when s6(?) >= a2(=[a1+188]) (signed), and falls through when s6(?) < a2(=[a1+188]) (signed).
  The `bne` branch at 0x2e08dc4 targets 0x2e08d0c, is taken when s7(?) != a0(?), and falls through when s7(?) == a0(?).
  The `beq` branch at 0x2e08dcc targets 0x2e08d10, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2e08dd4 targets 0x2e08cbc and is always taken.
  The return at 0x2e08c54 has v0 = one of ret(__glCopyPixelsOverlapping), ret(__glComputeSpanPixelArray), ret(?).
  The instructions from 0x2e08ca8 to 0x2e08cac are not reached by any path from the entry, and their branches are not listed.
- `__glCopyImageSpans` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0a310 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0a310-0x2e0a4e8 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0x2e0a31c loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x2e0a338 loads 4 bytes from a1 (arg1 at entry) +0x18c.
  The `lw` at 0x2e0a368 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lw` at 0x2e0a37c loads 4 bytes from a1 (arg1 at entry) +0xbc.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e0a3f8, `ld` at 0x2e0a480.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x68, including `ld` at 0x2e0a408, `ld` at 0x2e0a410.
  The `lw` at 0x2e0a414 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `sd` at 0x2e0a428 stores 8 bytes to a1 (arg1 at entry) +0x68.
  The `sw` at 0x2e0a430 stores 4 bytes to a0 (arg0 at entry) +0x995c.
  The `ld` at 0x2e0a434 loads 8 bytes from a1 (arg1 at entry) +0x198.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e0a448, `ld` at 0x2e0a44c.
  The `lw` at 0x2e0a450 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `sd` at 0x2e0a468 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `jalr` at 0x2e0a404 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+104]:8.
  The `jalr` at 0x2e0a444 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?.
  The `jalr` at 0x2e0a490 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `blez` branch at 0x2e0a398 targets 0x2e0a4c8, is taken when at(=[a1+188]) <= 0 (signed), and falls through when at(=[a1+188]) > 0 (signed).
  The `beq` branch at 0x2e0a3e4 targets 0x2e0a434 and is always taken.
  The `beq` branch at 0x2e0a42c targets 0x2e0a4b0, is taken when v0(=[a1+188]) == s7(?), and falls through when v0(=[a1+188]) != s7(?).
  The `beq` branch at 0x2e0a46c targets 0x2e0a3f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e0a4a0 targets 0x2e0a480, is taken when s1(?) != s5(=(([a1+396]-1 << 0x3) + a1)), and falls through when s1(?) == s5(=(([a1+396]-1 << 0x3) + a1)).
  The `beq` branch at 0x2e0a4a8 targets 0x2e0a3f0 and is always taken.
  The return at 0x2e0a4e0 has v0 = one of ?, [a1+188].
  The instructions from 0x2e0a3ec to 0x2e0a3ec are not reached by any path from the entry, and their branches are not listed.
- `__glGenericPickCopyImageSpan` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0a4f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0a4f0-0x2e0a5bc (204 bytes).
  It occupies 204 bytes.
  The `ld` at 0x2e0a554 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e0a558 loads 4 bytes from [a1+552]:8 +0x4.
  The `lw` at 0x2e0a574 loads 4 bytes from [a1+552]:8 +0x40.
  The `lw` at 0x2e0a578 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc8, including `sw` at 0x2e0a588, `sw` at 0x2e0a594.
  The `sd` at 0x2e0a5b8 stores 8 bytes to (a1 + (ret(PickSpanModifiers)+1 << 0x3)) +0x190.
  The `bgezall` at 0x2e0a530 calls PickSpanModifiers [0x2e026a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-64, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e0a53c targets 0x2e0a5a4, is taken when v0(=ret(PickSpanModifiers)) == 0, and falls through when v0(=ret(PickSpanModifiers)) != 0.
  The `beq` branch at 0x2e0a548 targets 0x2e0a564, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2e0a55c targets 0x2e0a574, is taken when v1(=[[a1+552]:8+4]) == a0(=0x8016), and falls through when v1(=[[a1+552]:8+4]) != a0(=0x8016).
  The `bgez` branch at 0x2e0a584 targets 0x2e0a564, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The `beq` branch at 0x2e0a5b4 targets 0x2e0a544 and is always taken.
  The return at 0x2e0a56c has v0 = ?.
  The return at 0x2e0a59c has v0 = ?.
- `__glSpanReadDepthUint1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0b280 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0b280-0x2e0b378 (248 bytes).
  It occupies 248 bytes.
  The `ld` at 0x2e0b288 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0x2e0b298 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lwc1` at 0x2e0b29c loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `lwc1` at 0x2e0b2a8 loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x2e0b2b0 loads 4 bytes from a0 (arg0 at entry) +0x9d80.
  The `lw` at 0x2e0b2c0 loads 4 bytes from a0 (arg0 at entry) +0x9d08.
  The `ld` at 0x2e0b310 loads 8 bytes from a0 (arg0 at entry) +0x9dc0.
  The `sw` at 0x2e0b32c stores 4 bytes to ?.
  The `lh` at 0x2e0b330 loads 2 bytes from ?.
  The `jalr` at 0x2e0b320 calls (unknown callee) with a0=a0+40184, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2e0b2ec targets 0x2e0b350, is taken when s4(=[a1+196]) <= 0 (signed), and falls through when s4(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e0b33c targets 0x2e0b310, is taken when s4(=[a1+196]) != s3(?), and falls through when s4(=[a1+196]) == s3(?).
  The return at 0x2e0b370 has v0 = one of 0xf5518, ret(?).
- `__glSpanRenderDepthUint1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0c430 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0c430-0x2e0c5a0 (368 bytes).
  It occupies 368 bytes.
  The `lwc1` at 0x2e0c448 loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `lwc1` at 0x2e0c44c loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `lw` at 0x2e0c450 loads 4 bytes from a1 (arg1 at entry) +0xfc.
  The `lw` at 0x2e0c458 loads 4 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0x2e0c460 loads 4 bytes from a1 (arg1 at entry) +0x100.
  The `lwc1` at 0x2e0c468 loads 4 bytes from a0 (arg0 at entry) +0x230.
  The `lw` at 0x2e0c470 loads 4 bytes from a0 (arg0 at entry) +0x9d08.
  The `lw` at 0x2e0c474 loads 4 bytes from a0 (arg0 at entry) +0x9d80.
  The `lwc1` at 0x2e0c47c loads 4 bytes from a0 (arg0 at entry) +0x234.
  The `lwc1` at 0x2e0c488 loads 4 bytes from a0 (arg0 at entry) +0x238.
  The `lwc1` at 0x2e0c494 loads 4 bytes from a0 (arg0 at entry) +0x23c.
  The `lw` at 0x2e0c4a4 loads 4 bytes from a1 (arg1 at entry) +0xec.
  The `lw` at 0x2e0c4b0 loads 4 bytes from a1 (arg1 at entry) +0xdc.
  The `lw` at 0x2e0c4cc loads 4 bytes from a1 (arg1 at entry) +0xe4.
  The `ld` at 0x2e0c4d8 loads 8 bytes from a0 (arg0 at entry) +0x4d70.
  The `lw` at 0x2e0c51c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x2e0c53c loads 8 bytes from a0 (arg0 at entry) +0x4718.
  The `lw` at 0x2e0c548 loads 4 bytes from ?.
  The `sw` at 0x2e0c588 stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `sw` at 0x2e0c59c stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `jalr` at 0x2e0c538 calls (unknown callee) with a0=[a0+18200]:8, a1=sp-192, a2=?, a3=?.
  The `beq` branch at 0x2e0c4e0 targets 0x2e0c56c, is taken when at(=[a1+224]) == v0(?), and falls through when at(=[a1+224]) != v0(?).
  The `beq` branch at 0x2e0c500 targets 0x2e0c55c, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bnel` branch at 0x2e0c544 targets 0x2e0c520, is taken when s6(=[a1+228]) != s0(?), and falls through when s6(=[a1+228]) == s0(?); its branch-likely delay slot `lw v1,0(s1)` at 0x2e0c548 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x2e0c558 targets 0x2e0c500, is taken when a0(?) != s8(?), and falls through when a0(?) == s8(?).
  The return at 0x2e0c598 has v0 = ?.
- `__glSpecElementsPerGroup` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0e3f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0e3f0-0x2e0e5b4 (452 bytes).
  It occupies 452 bytes.
  The `bne` branch at 0x2e0e3f8 targets 0x2e0e43c, is taken when a1 < a3(=0x8363) (unsigned), and falls through when a1 >= a3(=0x8363) (unsigned).
  The `beq` branch at 0x2e0e400 targets 0x2e0e46c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e0e40c targets 0x2e0e514, is taken when a1 < a3(=0x8366) (unsigned), and falls through when a1 >= a3(=0x8366) (unsigned).
  The `beq` branch at 0x2e0e414 targets 0x2e0e46c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2e0e424 targets 0x2e0e59c, is taken when a1 < a3(=0x8368) (unsigned), and falls through when a1 >= a3(=0x8368) (unsigned).
  The `bne` branch at 0x2e0e42c targets 0x2e0e4ac, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e0e434 targets 0x2e0e46c and is always taken.
  The `bne` branch at 0x2e0e444 targets 0x2e0e474, is taken when a1 < a3(=0x8035) (unsigned), and falls through when a1 >= a3(=0x8035) (unsigned).
  The `beq` branch at 0x2e0e44c targets 0x2e0e46c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e0e45c targets 0x2e0e57c, is taken when a1 < a3(=0x8362) (unsigned), and falls through when a1 >= a3(=0x8362) (unsigned).
  The `bne` branch at 0x2e0e464 targets 0x2e0e4ac, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e0e480 targets 0x2e0e4a0, is taken when a1 < a3(=0x8033) (unsigned), and falls through when a1 >= a3(=0x8033) (unsigned).
  The `beq` branch at 0x2e0e488 targets 0x2e0e46c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x2e0e490 targets 0x2e0e4ac, is taken when a1 != t8(=0x8034), and falls through when a1 == t8(=0x8034).
  The `beq` branch at 0x2e0e498 targets 0x2e0e46c and is always taken.
  The `beq` branch at 0x2e0e4a4 targets 0x2e0e46c, is taken when a1 == t9(=0x8032), and falls through when a1 != t9(=0x8032).
  The `bne` branch at 0x2e0e4b0 targets 0x2e0e4ec, is taken when a0 < a1(=0x8000) (unsigned), and falls through when a0 >= a1(=0x8000) (unsigned).
  The `beq` branch at 0x2e0e4b8 targets 0x2e0e538, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e0e4cc targets 0x2e0e55c, is taken when a0 < a1(=0x80e1) (unsigned), and falls through when a0 >= a1(=0x80e1) (unsigned).
  The `beq` branch at 0x2e0e4d4 targets 0x2e0e538, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2e0e4dc targets 0x2e0e50c, is taken when a0 != a3(=0x81bb), and falls through when a0 == a3(=0x81bb).
  The `bne` branch at 0x2e0e4f0 targets 0x2e0e540, is taken when a0 < 0x1908 (unsigned), and falls through when a0 >= 0x1908 (unsigned).
  The `bne` branch at 0x2e0e4fc targets 0x2e0e538, is taken when a0 < 0x1909 (unsigned), and falls through when a0 >= 0x1909 (unsigned).
  The `beq` branch at 0x2e0e504 targets 0x2e0e5ac, is taken when a0 == a5(=0x190a), and falls through when a0 != a5(=0x190a).
  The `bne` branch at 0x2e0e520 targets 0x2e0e56c, is taken when a1 < a3(=0x8365) (unsigned), and falls through when a1 >= a3(=0x8365) (unsigned).
  The `bne` branch at 0x2e0e528 targets 0x2e0e4ac, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e0e530 targets 0x2e0e46c and is always taken.
  The `bne` branch at 0x2e0e544 targets 0x2e0e58c, is taken when a0 < 0x1907 (unsigned), and falls through when a0 >= 0x1907 (unsigned).
  The `beq` branch at 0x2e0e54c targets 0x2e0e50c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e0e55c targets 0x2e0e50c, is taken when a0 != t1(=0x80e0), and falls through when a0 == t1(=0x80e0).
  The `beq` branch at 0x2e0e564 targets 0x2e0e554 and is always taken.
  The `bne` branch at 0x2e0e56c targets 0x2e0e4ac, is taken when a1 != t2(=0x8364), and falls through when a1 == t2(=0x8364).
  The `beq` branch at 0x2e0e574 targets 0x2e0e46c and is always taken.
  The `bne` branch at 0x2e0e57c targets 0x2e0e4ac, is taken when a1 != t3(=0x8036), and falls through when a1 == t3(=0x8036).
  The `beq` branch at 0x2e0e584 targets 0x2e0e46c and is always taken.
  The `bne` branch at 0x2e0e58c targets 0x2e0e50c, is taken when a0 != t8(=0x1), and falls through when a0 == t8(=0x1).
  The `bne` branch at 0x2e0e59c targets 0x2e0e4ac, is taken when a1 != t9(=0x8367), and falls through when a1 == t9(=0x8367).
  The `beq` branch at 0x2e0e5a4 targets 0x2e0e46c and is always taken.
  The return at 0x2e0e46c has v0 = 0x1.
  The return at 0x2e0e4e4 has v0 = 0x2.
  The return at 0x2e0e50c has v0 = 0x1.
  The return at 0x2e0e538 has v0 = 0x4.
  The return at 0x2e0e554 has v0 = 0x3.
  The return at 0x2e0e594 has v0 = 0x2.
  The return at 0x2e0e5ac has v0 = 0x2.
- `__glSpecBytesPerElement` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0e5c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0e5c0-0x2e0e784 (452 bytes).
  It occupies 452 bytes.
  The `bne` branch at 0x2e0e5c8 targets 0x2e0e618, is taken when a0 < a2(=0x8034) (unsigned), and falls through when a0 >= a2(=0x8034) (unsigned).
  The `beq` branch at 0x2e0e5d0 targets 0x2e0e674, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e0e5dc targets 0x2e0e6b8, is taken when a0 < a2(=0x8364) (unsigned), and falls through when a0 >= a2(=0x8364) (unsigned).
  The `beq` branch at 0x2e0e5e4 targets 0x2e0e674, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e0e5f8 targets 0x2e0e658, is taken when a0 < a2(=0x8367) (unsigned), and falls through when a0 >= a2(=0x8367) (unsigned).
  The `beq` branch at 0x2e0e600 targets 0x2e0e700, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2e0e608 targets 0x2e0e684, is taken when a0 != a5(=0x8368), and falls through when a0 == a5(=0x8368).
  The `beq` branch at 0x2e0e610 targets 0x2e0e700 and is always taken.
  The `bne` branch at 0x2e0e61c targets 0x2e0e68c, is taken when a0 < 0x1405 (unsigned), and falls through when a0 >= 0x1405 (unsigned).
  The `bne` branch at 0x2e0e628 targets 0x2e0e700, is taken when a0 < 0x1406 (unsigned), and falls through when a0 >= 0x1406 (unsigned).
  The `bne` branch at 0x2e0e634 targets 0x2e0e724, is taken when a0 < a2(=0x8032) (unsigned), and falls through when a0 >= a2(=0x8032) (unsigned).
  The `beq` branch at 0x2e0e640 targets 0x2e0e71c, is taken when a2(=0x8032) >= a0 (unsigned), and falls through when a2(=0x8032) < a0 (unsigned).
  The `bne` branch at 0x2e0e648 targets 0x2e0e684, is taken when a0 != t1(=0x8033), and falls through when a0 == t1(=0x8033).
  The `beq` branch at 0x2e0e650 targets 0x2e0e674 and is always taken.
  The `bne` branch at 0x2e0e660 targets 0x2e0e774, is taken when a0 < a2(=0x8366) (unsigned), and falls through when a0 >= a2(=0x8366) (unsigned).
  The `bne` branch at 0x2e0e66c targets 0x2e0e684, is taken when a2(=0x8366) < a0 (unsigned), and falls through when a2(=0x8366) >= a0 (unsigned).
  The `beq` branch at 0x2e0e67c targets 0x2e0e71c, is taken when a0 == t8(=0x1400), and falls through when a0 != t8(=0x1400).
  The `bne` branch at 0x2e0e68c targets 0x2e0e708, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x2e0e698 targets 0x2e0e674, is taken when a0 < 0x1403 (unsigned), and falls through when a0 >= 0x1403 (unsigned).
  The `bne` branch at 0x2e0e6a0 targets 0x2e0e764, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e0e6a8 targets 0x2e0e684, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2e0e6b0 targets 0x2e0e700 and is always taken.
  The `bne` branch at 0x2e0e6c0 targets 0x2e0e6e4, is taken when a0 < a2(=0x8362) (unsigned), and falls through when a0 >= a2(=0x8362) (unsigned).
  The `beq` branch at 0x2e0e6cc targets 0x2e0e71c, is taken when a2(=0x8362) >= a0 (unsigned), and falls through when a2(=0x8362) < a0 (unsigned).
  The `bne` branch at 0x2e0e6d4 targets 0x2e0e684, is taken when a0 != a1(=0x8363), and falls through when a0 == a1(=0x8363).
  The `beq` branch at 0x2e0e6dc targets 0x2e0e674 and is always taken.
  The `bne` branch at 0x2e0e6f0 targets 0x2e0e744, is taken when a0 < a2(=0x8036) (unsigned), and falls through when a0 >= a2(=0x8036) (unsigned).
  The `bne` branch at 0x2e0e6f8 targets 0x2e0e684, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x2e0e70c targets 0x2e0e67c, is taken when a0 < 0x1401 (unsigned), and falls through when a0 >= 0x1401 (unsigned).
  The `beq` branch at 0x2e0e714 targets 0x2e0e684, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2e0e72c targets 0x2e0e754, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e0e734 targets 0x2e0e684, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e0e744 targets 0x2e0e684, is taken when a0 != t0(=0x8035), and falls through when a0 == t0(=0x8035).
  The `beq` branch at 0x2e0e74c targets 0x2e0e700 and is always taken.
  The `bne` branch at 0x2e0e754 targets 0x2e0e684, is taken when a0 != t1(=0x1406), and falls through when a0 == t1(=0x1406).
  The `beq` branch at 0x2e0e75c targets 0x2e0e700 and is always taken.
  The `bne` branch at 0x2e0e764 targets 0x2e0e684, is taken when a0 != t2(=0x1403), and falls through when a0 == t2(=0x1403).
  The `beq` branch at 0x2e0e76c targets 0x2e0e674 and is always taken.
  The `bne` branch at 0x2e0e774 targets 0x2e0e684, is taken when a0 != t3(=0x8365), and falls through when a0 == t3(=0x8365).
  The `beq` branch at 0x2e0e77c targets 0x2e0e674 and is always taken.
  The return at 0x2e0e674 has v0 = 0x2.
  The return at 0x2e0e684 has v0 = 0x0.
  The return at 0x2e0e700 has v0 = 0x4.
  The return at 0x2e0e71c has v0 = 0x1.
  The return at 0x2e0e73c has v0 = 0x1.
- `__glInitUnpacker3D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e0e980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e0e980-0x2e0e9f0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x2e0e9a8 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0x2e0e9ac loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0x2e0e9b4 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `ld` at 0x2e0e9cc loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sw` at 0x2e0e9d4 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x2e0e9e0 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `bgezall` at 0x2e0e9a0 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e0e9e8 has v0 = ?.
- `__glSpanSwapBytes4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10680 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10680-0x2e106d8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x2e10680 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x2e10684 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e106a0, `lbu` at 0x2e106a4, `lbu` at 0x2e106a8.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e106b4, `sb` at 0x2e106b8, `sb` at 0x2e106c0.
  The `blez` branch at 0x2e10698 targets 0x2e106d0, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x2e106c8 targets 0x2e106a0, is taken when a6(?) != a1(?), and falls through when a6(?) == a1(?).
  The return at 0x2e106d0 has v0 = [a1+40].
- `__glSpanSwapBytes4Dst` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e106e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e106e0-0x2e10738 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x2e106e0 loads 4 bytes from a1 (arg1 at entry) +0x80.
  The `lw` at 0x2e106e4 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e10700, `lbu` at 0x2e10704, `lbu` at 0x2e10708.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e10714, `sb` at 0x2e10718, `sb` at 0x2e10720.
  The `blez` branch at 0x2e106f8 targets 0x2e10730, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x2e10728 targets 0x2e10700, is taken when a6(?) != a1(?), and falls through when a6(?) == a1(?).
  The return at 0x2e10730 has v0 = [a1+128].
- `__glSpanSwapAndSkipBytes4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10740 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10740-0x2e107c8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x2e10740 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `ld` at 0x2e10744 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0x2e1074c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2e10758 loads 4 bytes from a1 (arg1 at entry) +0x28.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e10770, `lbu` at 0x2e10774, `lbu` at 0x2e10780.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e10778, `sb` at 0x2e1077c, `sb` at 0x2e10790.
  The `lh` at 0x2e107a0 loads 2 bytes from ?.
  The `blez` branch at 0x2e10754 targets 0x2e107c0, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `blez` branch at 0x2e10760 targets 0x2e107a0, is taken when a6(=[a1+40]) <= 0 (signed), and falls through when a6(=[a1+40]) > 0 (signed).
  The `bne` branch at 0x2e10798 targets 0x2e10770, is taken when a6(=[a1+40]) != a1(?), and falls through when a6(=[a1+40]) == a1(?).
  The `bne` branch at 0x2e107b8 targets 0x2e10760, is taken when t1(=[a1+196]) != a2(?), and falls through when t1(=[a1+196]) == a2(?).
  The return at 0x2e107c0 has v0 = ?.
- `__glSpanSkipPixels1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e107d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e107d0-0x2e1088c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x2e107d0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `ld` at 0x2e107d4 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0x2e107dc loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2e107e8 loads 4 bytes from a1 (arg1 at entry) +0x28.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e10810, `lbu` at 0x2e10820, `lbu` at 0x2e10874.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e10818, `sb` at 0x2e1082c, `sb` at 0x2e10880.
  The `lh` at 0x2e10838 loads 2 bytes from ?.
  The `blez` branch at 0x2e107e4 targets 0x2e10884, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e107ec targets 0x2e10854 and is always taken.
  The `beq` branch at 0x2e10804 targets 0x2e10838, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e10828 targets 0x2e10810, is taken when a4(=[a1+40]) != a3(?), and falls through when a4(=[a1+40]) == a3(?).
  The `beq` branch at 0x2e1084c targets 0x2e10884, is taken when t1(=[a1+196]) == t0(?), and falls through when t1(=[a1+196]) != t0(?).
  The `blez` branch at 0x2e10854 targets 0x2e10838, is taken when a4(=[a1+40]) <= 0 (signed), and falls through when a4(=[a1+40]) > 0 (signed).
  The `beq` branch at 0x2e10864 targets 0x2e10800, is taken when (a4(=[a1+40]) & 0x1) == 0, and falls through when (a4(=[a1+40]) & 0x1) != 0.
  The `beq` branch at 0x2e1087c targets 0x2e10800 and is always taken.
  The return at 0x2e10884 has v0 = ?.
  The instructions from 0x2e107f4 to 0x2e107fc are not reached by any path from the entry, and their branches are not listed.
- `__glSpanSkipPixels2` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10890-0x2e1094c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x2e10890 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `ld` at 0x2e10894 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0x2e1089c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2e108a8 loads 4 bytes from a1 (arg1 at entry) +0x28.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x2e108d0, `lhu` at 0x2e108e0, `lhu` at 0x2e10934.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x2e108d8, `sh` at 0x2e108ec, `sh` at 0x2e10940.
  The `lh` at 0x2e108f8 loads 2 bytes from ?.
  The `blez` branch at 0x2e108a4 targets 0x2e10944, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e108ac targets 0x2e10914 and is always taken.
  The `beq` branch at 0x2e108c4 targets 0x2e108f8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e108e8 targets 0x2e108d0, is taken when a4(=[a1+40]) != a3(?), and falls through when a4(=[a1+40]) == a3(?).
  The `beq` branch at 0x2e1090c targets 0x2e10944, is taken when t1(=[a1+196]) == t0(?), and falls through when t1(=[a1+196]) != t0(?).
  The `blez` branch at 0x2e10914 targets 0x2e108f8, is taken when a4(=[a1+40]) <= 0 (signed), and falls through when a4(=[a1+40]) > 0 (signed).
  The `beq` branch at 0x2e10924 targets 0x2e108c0, is taken when (a4(=[a1+40]) & 0x1) == 0, and falls through when (a4(=[a1+40]) & 0x1) != 0.
  The `beq` branch at 0x2e1093c targets 0x2e108c0 and is always taken.
  The return at 0x2e10944 has v0 = ?.
  The instructions from 0x2e108b4 to 0x2e108bc are not reached by any path from the entry, and their branches are not listed.
- `__glSpanSkipPixels4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10950-0x2e10a0c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x2e10950 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `ld` at 0x2e10954 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0x2e1095c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2e10968 loads 4 bytes from a1 (arg1 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e10990, `lw` at 0x2e109a0, `lw` at 0x2e109f4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2e10998, `sw` at 0x2e109ac, `sw` at 0x2e10a00.
  The `lh` at 0x2e109b8 loads 2 bytes from ?.
  The `blez` branch at 0x2e10964 targets 0x2e10a04, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e1096c targets 0x2e109d4 and is always taken.
  The `beq` branch at 0x2e10984 targets 0x2e109b8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e109a8 targets 0x2e10990, is taken when a4(=[a1+40]) != a3(?), and falls through when a4(=[a1+40]) == a3(?).
  The `beq` branch at 0x2e109cc targets 0x2e10a04, is taken when t1(=[a1+196]) == t0(?), and falls through when t1(=[a1+196]) != t0(?).
  The `blez` branch at 0x2e109d4 targets 0x2e109b8, is taken when a4(=[a1+40]) <= 0 (signed), and falls through when a4(=[a1+40]) > 0 (signed).
  The `beq` branch at 0x2e109e4 targets 0x2e10980, is taken when (a4(=[a1+40]) & 0x1) == 0, and falls through when (a4(=[a1+40]) & 0x1) != 0.
  The `beq` branch at 0x2e109fc targets 0x2e10980 and is always taken.
  The return at 0x2e10a04 has v0 = ?.
  The instructions from 0x2e10974 to 0x2e1097c are not reached by any path from the entry, and their branches are not listed.
- `__glSpanSlowSkipPixels4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10a90-0x2e10b18 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x2e10a90 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `ld` at 0x2e10a94 loads 8 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0x2e10a9c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2e10aa8 loads 4 bytes from a1 (arg1 at entry) +0x28.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e10ac0, `lbu` at 0x2e10ac4, `lbu` at 0x2e10ac8.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e10ad4, `sb` at 0x2e10ad8, `sb` at 0x2e10ae0.
  The `lh` at 0x2e10af0 loads 2 bytes from ?.
  The `blez` branch at 0x2e10aa4 targets 0x2e10b10, is taken when t1(=[a1+196]) <= 0 (signed), and falls through when t1(=[a1+196]) > 0 (signed).
  The `blez` branch at 0x2e10ab0 targets 0x2e10af0, is taken when a6(=[a1+40]) <= 0 (signed), and falls through when a6(=[a1+40]) > 0 (signed).
  The `bne` branch at 0x2e10ae8 targets 0x2e10ac0, is taken when a6(=[a1+40]) != a1(?), and falls through when a6(=[a1+40]) == a1(?).
  The `bne` branch at 0x2e10b08 targets 0x2e10ab0, is taken when t1(=[a1+196]) != a2(?), and falls through when t1(=[a1+196]) == a2(?).
  The return at 0x2e10b10 has v0 = ?.
- `__glSpanAlignPixels4` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10bc0-0x2e10c18 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x2e10bc0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x2e10bc4 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e10be0, `lbu` at 0x2e10be4, `lbu` at 0x2e10be8.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e10bf4, `sb` at 0x2e10bf8, `sb` at 0x2e10c00.
  The `blez` branch at 0x2e10bd8 targets 0x2e10c10, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x2e10c08 targets 0x2e10be0, is taken when a6(?) != a1(?), and falls through when a6(?) == a1(?).
  The return at 0x2e10c10 has v0 = [a1+40].
- `__glSpanAlignPixels4Dst` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e10c20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e10c20-0x2e10c78 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x2e10c20 loads 4 bytes from a1 (arg1 at entry) +0x80.
  The `lw` at 0x2e10c24 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e10c40, `lbu` at 0x2e10c44, `lbu` at 0x2e10c48.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e10c54, `sb` at 0x2e10c58, `sb` at 0x2e10c60.
  The `blez` branch at 0x2e10c38 targets 0x2e10c70, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bne` branch at 0x2e10c68 targets 0x2e10c40, is taken when a6(?) != a1(?), and falls through when a6(?) == a1(?).
  The return at 0x2e10c70 has v0 = [a1+128].
- `__glSpanClampPreFloat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e12ce0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e12ce0-0x2e12da0 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x2e12ce0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x2e12ce4 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lwc1` at 0x2e12cfc loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e12d14 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x2e12d38 stores 4 bytes to a3 (arg3 at entry) +0x0.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e12d44, `lwc1` at 0x2e12d64, `lwc1` at 0x2e12d88.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e12d58, `swc1` at 0x2e12d84.
  The `blez` branch at 0x2e12cf8 targets 0x2e12d48, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2e12d0c targets 0x2e12d40, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `bc1f` branch at 0x2e12d20 targets 0x2e12d30, is taken when not (f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12d18)), and falls through when f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12d18).
  The `beq` branch at 0x2e12d28 targets 0x2e12d38 and is always taken.
  The `bnel` branch at 0x2e12d40 targets 0x2e12d68, is taken when a0(?) != 0, and falls through when a0(?) == 0; its branch-likely delay slot `lwc1 $f4,0(a6)` at 0x2e12d44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2e12d5c targets 0x2e12d48, is taken when a7(?) == a1(?), and falls through when a7(?) != a1(?).
  The `bc1f` branch at 0x2e12d6c targets 0x2e12d7c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x2e12d74 targets 0x2e12d84 and is always taken.
  The `bc1f` branch at 0x2e12d90 targets 0x2e12d50, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x2e12d98 targets 0x2e12d58 and is always taken.
  The return at 0x2e12d48 has v0 = [a1+36].
- `__glSpanClampNegPreFloat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e12da0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e12da0-0x2e12e60 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x2e12da0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0x2e12da4 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lwc1` at 0x2e12dac loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e12dd4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x2e12df8 stores 4 bytes to a3 (arg3 at entry) +0x0.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e12e04, `lwc1` at 0x2e12e24, `lwc1` at 0x2e12e48.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e12e18, `swc1` at 0x2e12e44.
  The `blez` branch at 0x2e12dbc targets 0x2e12e08, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2e12dcc targets 0x2e12e00, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `bc1f` branch at 0x2e12de0 targets 0x2e12df0, is taken when not (f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12dd8)), and falls through when f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12dd8).
  The `beq` branch at 0x2e12de8 targets 0x2e12df8 and is always taken.
  The `bnel` branch at 0x2e12e00 targets 0x2e12e28, is taken when a0(?) != 0, and falls through when a0(?) == 0; its branch-likely delay slot `lwc1 $f4,0(a6)` at 0x2e12e04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2e12e1c targets 0x2e12e08, is taken when a7(?) == a1(?), and falls through when a7(?) != a1(?).
  The `bc1f` branch at 0x2e12e2c targets 0x2e12e3c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x2e12e34 targets 0x2e12e44 and is always taken.
  The `bc1f` branch at 0x2e12e50 targets 0x2e12e10, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x2e12e58 targets 0x2e12e18 and is always taken.
  The return at 0x2e12e08 has v0 = [a1+36].
- `__glSpanClampPostFloat` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e12e60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e12e60-0x2e12f20 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x2e12e60 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0x2e12e64 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e12e7c loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e12e94 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x2e12eb8 stores 4 bytes to a3 (arg3 at entry) +0x0.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e12ec4, `lwc1` at 0x2e12ee4, `lwc1` at 0x2e12f08.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e12ed8, `swc1` at 0x2e12f04.
  The `blez` branch at 0x2e12e78 targets 0x2e12ec8, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2e12e8c targets 0x2e12ec0, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `bc1f` branch at 0x2e12ea0 targets 0x2e12eb0, is taken when not (f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12e98)), and falls through when f5(=[a0+3884]) < f4(=[a2]) (c.lt.s at 0x2e12e98).
  The `beq` branch at 0x2e12ea8 targets 0x2e12eb8 and is always taken.
  The `bnel` branch at 0x2e12ec0 targets 0x2e12ee8, is taken when a0(?) != 0, and falls through when a0(?) == 0; its branch-likely delay slot `lwc1 $f4,0(a6)` at 0x2e12ec4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2e12edc targets 0x2e12ec8, is taken when a7(?) == a1(?), and falls through when a7(?) != a1(?).
  The `bc1f` branch at 0x2e12eec targets 0x2e12efc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x2e12ef4 targets 0x2e12f04 and is always taken.
  The `bc1f` branch at 0x2e12f10 targets 0x2e12ed0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x2e12f18 targets 0x2e12ed8 and is always taken.
  The return at 0x2e12ec8 has v0 = [a1+124].
- `__glSpanClampSigned` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e13630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e13630-0x2e136e8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x2e13630 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lw` at 0x2e13634 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e13660, `lwc1` at 0x2e13690, `lwc1` at 0x2e136a0.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e13680, `swc1` at 0x2e1369c, `swc1` at 0x2e136ac.
  The `blez` branch at 0x2e13648 targets 0x2e136e0, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x2e13658 targets 0x2e13684, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2e1367c targets 0x2e13660, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e13688 targets 0x2e136e0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2e136d8 targets 0x2e13690, is taken when a4(?) != a1(?), and falls through when a4(?) == a1(?).
  The return at 0x2e136e0 has v0 = [a1+124].
- `__glSpanZeroFillAlpha` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e142b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e142b0-0x2e14398 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x2e142b0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e142d4, `lwc1` at 0x2e142dc, `lwc1` at 0x2e142ec.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e142d8, `swc1` at 0x2e142e0, `swc1` at 0x2e142f4.
  The `blez` branch at 0x2e142b8 targets 0x2e14390, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e142cc targets 0x2e14304, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e142fc targets 0x2e142d4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e14308 targets 0x2e14390, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e14388 targets 0x2e14310, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e14390 has v0 = ?.
- `__glSpanGetMemRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e14fb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e14fb0-0x2e150a8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x2e14fb0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  20 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e14fd0, `lwc1` at 0x2e14fd8, `lwc1` at 0x2e14fe0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e14fd4, `swc1` at 0x2e14fdc, `swc1` at 0x2e14fe4.
  The `blez` branch at 0x2e14fb8 targets 0x2e150a0, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e14fc8 targets 0x2e15004, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e14ffc targets 0x2e14fd0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e15008 targets 0x2e150a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15098 targets 0x2e15010, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e150a0 has v0 = ?.
- `__glSpanGetMemRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e150b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e150b0-0x2e15198 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x2e150b0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e150d4, `lwc1` at 0x2e150dc, `lwc1` at 0x2e150ec.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e150d8, `swc1` at 0x2e150e0, `swc1` at 0x2e150f4.
  The `blez` branch at 0x2e150b8 targets 0x2e15190, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e150cc targets 0x2e15104, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e150fc targets 0x2e150d4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e15108 targets 0x2e15190, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15188 targets 0x2e15110, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e15190 has v0 = ?.
- `__glSpanGetMemL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e151a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e151a0-0x2e151ec (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x2e151a0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lwc1` at 0x2e151c4 loads 4 bytes from ?.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e151c8, `swc1` at 0x2e151cc, `swc1` at 0x2e151d4.
  The `blez` branch at 0x2e151a8 targets 0x2e151e4, is taken when a6(=[a1+196]) <= 0 (signed), and falls through when a6(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e151dc targets 0x2e151c0, is taken when a6(=[a1+196]) != a1(?), and falls through when a6(=[a1+196]) == a1(?).
  The return at 0x2e151e4 has v0 = ?.
- `__glSpanGetMemLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e151f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e151f0-0x2e15240 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2e151f0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15210, `lwc1` at 0x2e15224.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15214, `swc1` at 0x2e15218, `swc1` at 0x2e1521c.
  The `blez` branch at 0x2e151f8 targets 0x2e15238, is taken when a6(=[a1+196]) <= 0 (signed), and falls through when a6(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e15230 targets 0x2e15210, is taken when a6(=[a1+196]) != a1(?), and falls through when a6(=[a1+196]) == a1(?).
  The return at 0x2e15238 has v0 = ?.
- `__glSpanGetMemI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15240-0x2e1528c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x2e15240 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `lwc1` at 0x2e15264 loads 4 bytes from ?.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15268, `swc1` at 0x2e1526c, `swc1` at 0x2e15274.
  The `blez` branch at 0x2e15248 targets 0x2e15284, is taken when a6(=[a1+196]) <= 0 (signed), and falls through when a6(=[a1+196]) > 0 (signed).
  The `bne` branch at 0x2e1527c targets 0x2e15260, is taken when a6(=[a1+196]) != a1(?), and falls through when a6(=[a1+196]) == a1(?).
  The return at 0x2e15284 has v0 = ?.
- `__glSpanMemPutRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15290-0x2e15388 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x2e15290 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  20 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e152b0, `lwc1` at 0x2e152b8, `lwc1` at 0x2e152c0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e152b4, `swc1` at 0x2e152bc, `swc1` at 0x2e152c4.
  The `blez` branch at 0x2e15298 targets 0x2e15380, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e152a8 targets 0x2e152e4, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e152dc targets 0x2e152b0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e152e8 targets 0x2e15380, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15378 targets 0x2e152f0, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e15380 has v0 = ?.
- `__glSpanMemPutRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15390 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15390-0x2e15468 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x2e15390 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e153b0, `lwc1` at 0x2e153b8, `lwc1` at 0x2e153c4.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e153b4, `swc1` at 0x2e153bc, `swc1` at 0x2e153d8.
  The `blez` branch at 0x2e15398 targets 0x2e15460, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e153a8 targets 0x2e153dc, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e153d4 targets 0x2e153b0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e153e0 targets 0x2e15460, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15458 targets 0x2e153f0, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e15460 has v0 = ?.
- `__glSpanMemPutL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15470-0x2e154f8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x2e15470 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15494, `lwc1` at 0x2e154c0, `lwc1` at 0x2e154c8.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e154a8, `swc1` at 0x2e154c4, `swc1` at 0x2e154cc.
  The `blez` branch at 0x2e15478 targets 0x2e154f0, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e15488 targets 0x2e154ac, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e154a4 targets 0x2e15490, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e154b0 targets 0x2e154f0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e154e8 targets 0x2e154c0, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e154f0 has v0 = ?.
- `__glSpanMemPutLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15500-0x2e155a8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x2e15500 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15520, `lwc1` at 0x2e1552c, `lwc1` at 0x2e15550.
  10 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15524, `swc1` at 0x2e15540, `swc1` at 0x2e15554.
  The `blez` branch at 0x2e15508 targets 0x2e155a0, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e15518 targets 0x2e15544, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e1553c targets 0x2e15520, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e15548 targets 0x2e155a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15598 targets 0x2e15550, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e155a0 has v0 = ?.
- `__glSpanMemPutI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e155b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e155b0-0x2e15638 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x2e155b0 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e155d4, `lwc1` at 0x2e15600, `lwc1` at 0x2e15608.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e155e8, `swc1` at 0x2e15604, `swc1` at 0x2e1560c.
  The `blez` branch at 0x2e155b8 targets 0x2e15630, is taken when a4(=[a1+196]) <= 0 (signed), and falls through when a4(=[a1+196]) > 0 (signed).
  The `beq` branch at 0x2e155c8 targets 0x2e155ec, is taken when (a4(=[a1+196]) & 0x3) == 0, and falls through when (a4(=[a1+196]) & 0x3) != 0.
  The `bne` branch at 0x2e155e4 targets 0x2e155d0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e155f0 targets 0x2e15630, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15628 targets 0x2e15600, is taken when a4(=[a1+196]) != a1(?), and falls through when a4(=[a1+196]) == a1(?).
  The return at 0x2e15630 has v0 = ?.
- `__glRowScaleSumRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15640 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15640-0x2e15788 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x2e15640 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e15660 loads 4 bytes from a3 (arg3 at entry) +0x0.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e15664, `lwc1` at 0x2e156d0, `lwc1` at 0x2e15720.
  The `lwc1` at 0x2e15668 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0x2e15670 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `lwc1` at 0x2e15674 loads 4 bytes from a3 (arg3 at entry) +0x4.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x2e15678, `lwc1` at 0x2e156e4, `lwc1` at 0x2e15734.
  The `lwc1` at 0x2e1567c loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `swc1` at 0x2e15684 stores 4 bytes to a4 (arg4 at entry) +0x4.
  The `lwc1` at 0x2e15688 loads 4 bytes from a3 (arg3 at entry) +0x8.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x2e1568c, `lwc1` at 0x2e156f8, `lwc1` at 0x2e15748.
  The `lwc1` at 0x2e15690 loads 4 bytes from a4 (arg4 at entry) +0x8.
  The `swc1` at 0x2e15698 stores 4 bytes to a4 (arg4 at entry) +0x8.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e1569c, `lwc1` at 0x2e15710, `lwc1` at 0x2e15760.
  The `lwc1` at 0x2e156a0 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e156a4 loads 4 bytes from a4 (arg4 at entry) +0xc.
  The `swc1` at 0x2e156b8 stores 4 bytes to a4 (arg4 at entry) +0xc.
  16 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e156d4, `lwc1` at 0x2e156d8, `lwc1` at 0x2e156e8.
  8 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e156e0, `swc1` at 0x2e156f4, `swc1` at 0x2e15708.
  The `blez` branch at 0x2e15648 targets 0x2e15780, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15658 targets 0x2e156bc, is taken when (a5(=[a1+200]) & 0x1) == 0, and falls through when (a5(=[a1+200]) & 0x1) != 0.
  The `beq` branch at 0x2e156c0 targets 0x2e15780, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e15778 targets 0x2e156d0, is taken when a5(=[a1+200]) != a4(?), and falls through when a5(=[a1+200]) == a4(?).
  The return at 0x2e15780 has v0 = ?.
- `__glRowScaleSumRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15790-0x2e15918 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0x2e15790 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e157b0, `lwc1` at 0x2e15810, `lwc1` at 0x2e1584c.
  30 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e157b4, `lwc1` at 0x2e157b8, `lwc1` at 0x2e157c8.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e157c0, `swc1` at 0x2e157d4, `swc1` at 0x2e157fc.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x2e157c4, `lwc1` at 0x2e15824, `lwc1` at 0x2e15860.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x2e157d8, `lwc1` at 0x2e15838, `lwc1` at 0x2e15874.
  The `blez` branch at 0x2e15798 targets 0x2e15910, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e157a8 targets 0x2e15800, is taken when (a5(=[a1+200]) & 0x3) == 0, and falls through when (a5(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e157f8 targets 0x2e157b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2e15804 targets 0x2e15910, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15908 targets 0x2e15810, is taken when a5(=[a1+200]) != a1(?), and falls through when a5(=[a1+200]) == a1(?).
  The return at 0x2e15910 has v0 = ?.
- `__glRowScaleSumL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15920 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15920-0x2e15aa8 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0x2e15920 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  15 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e15940, `lwc1` at 0x2e15954, `lwc1` at 0x2e15968.
  30 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15944, `lwc1` at 0x2e15948, `lwc1` at 0x2e15958.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15950, `swc1` at 0x2e15964, `swc1` at 0x2e1598c.
  The `blez` branch at 0x2e15928 targets 0x2e15aa0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15938 targets 0x2e15990, is taken when (a5(=[a1+200]) & 0x3) == 0, and falls through when (a5(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e15988 targets 0x2e15940, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2e15994 targets 0x2e15aa0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15a98 targets 0x2e159a0, is taken when a5(=[a1+200]) != a1(?), and falls through when a5(=[a1+200]) == a1(?).
  The return at 0x2e15aa0 has v0 = ?.
- `__glRowScaleSumLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15ab0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15ab0-0x2e15bf8 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x2e15ab0 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e15ad0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  9 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e15ad4, `lwc1` at 0x2e15ae8, `lwc1` at 0x2e15afc.
  The `lwc1` at 0x2e15ad8 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0x2e15ae0 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `lwc1` at 0x2e15ae4 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e15aec loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `swc1` at 0x2e15af4 stores 4 bytes to a4 (arg4 at entry) +0x4.
  The `lwc1` at 0x2e15af8 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e15b00 loads 4 bytes from a4 (arg4 at entry) +0x8.
  The `swc1` at 0x2e15b08 stores 4 bytes to a4 (arg4 at entry) +0x8.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x2e15b0c, `lwc1` at 0x2e15b80, `lwc1` at 0x2e15bd0.
  The `lwc1` at 0x2e15b10 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e15b14 loads 4 bytes from a4 (arg4 at entry) +0xc.
  The `swc1` at 0x2e15b28 stores 4 bytes to a4 (arg4 at entry) +0xc.
  16 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15b44, `lwc1` at 0x2e15b48, `lwc1` at 0x2e15b58.
  8 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15b50, `swc1` at 0x2e15b64, `swc1` at 0x2e15b78.
  The `blez` branch at 0x2e15ab8 targets 0x2e15bf0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15ac8 targets 0x2e15b2c, is taken when (a5(=[a1+200]) & 0x1) == 0, and falls through when (a5(=[a1+200]) & 0x1) != 0.
  The `beq` branch at 0x2e15b30 targets 0x2e15bf0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e15be8 targets 0x2e15b40, is taken when a5(=[a1+200]) != a4(?), and falls through when a5(=[a1+200]) == a4(?).
  The return at 0x2e15bf0 has v0 = ?.
- `__glRowScaleSumI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15c00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15c00-0x2e15d48 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x2e15c00 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e15c20 loads 4 bytes from a3 (arg3 at entry) +0x0.
  12 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e15c24, `lwc1` at 0x2e15c38, `lwc1` at 0x2e15c4c.
  The `lwc1` at 0x2e15c28 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0x2e15c30 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `lwc1` at 0x2e15c34 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e15c3c loads 4 bytes from a4 (arg4 at entry) +0x4.
  The `swc1` at 0x2e15c44 stores 4 bytes to a4 (arg4 at entry) +0x4.
  The `lwc1` at 0x2e15c48 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e15c50 loads 4 bytes from a4 (arg4 at entry) +0x8.
  The `swc1` at 0x2e15c58 stores 4 bytes to a4 (arg4 at entry) +0x8.
  The `lwc1` at 0x2e15c60 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e15c64 loads 4 bytes from a4 (arg4 at entry) +0xc.
  The `swc1` at 0x2e15c78 stores 4 bytes to a4 (arg4 at entry) +0xc.
  16 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15c94, `lwc1` at 0x2e15c98, `lwc1` at 0x2e15ca8.
  8 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15ca0, `swc1` at 0x2e15cb4, `swc1` at 0x2e15cc8.
  The `blez` branch at 0x2e15c08 targets 0x2e15d40, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15c18 targets 0x2e15c7c, is taken when (a5(=[a1+200]) & 0x1) == 0, and falls through when (a5(=[a1+200]) & 0x1) != 0.
  The `beq` branch at 0x2e15c80 targets 0x2e15d40, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e15d38 targets 0x2e15c90, is taken when a5(=[a1+200]) != a4(?), and falls through when a5(=[a1+200]) == a4(?).
  The return at 0x2e15d40 has v0 = ?.
- `__glSpanPostConvScaleBiasRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15d50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15d50-0x2e15ee8 (408 bytes).
  It occupies 408 bytes.
  The `lwc1` at 0x2e15d50 loads 4 bytes from a0 (arg0 at entry) +0x364.
  The `lwc1` at 0x2e15d54 loads 4 bytes from a0 (arg0 at entry) +0x370.
  The `lw` at 0x2e15d58 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e15d60 loads 4 bytes from a0 (arg0 at entry) +0x36c.
  The `lwc1` at 0x2e15d68 loads 4 bytes from a0 (arg0 at entry) +0x9a08.
  The `lwc1` at 0x2e15d6c loads 4 bytes from a0 (arg0 at entry) +0x374.
  The `lwc1` at 0x2e15d70 loads 4 bytes from a0 (arg0 at entry) +0x9a30.
  The `lwc1` at 0x2e15d74 loads 4 bytes from a0 (arg0 at entry) +0x9a0c.
  The `lwc1` at 0x2e15d78 loads 4 bytes from a0 (arg0 at entry) +0x9a10.
  The `lwc1` at 0x2e15d80 loads 4 bytes from a0 (arg0 at entry) +0x368.
  The `lwc1` at 0x2e15d84 loads 4 bytes from a0 (arg0 at entry) +0x360.
  The `lwc1` at 0x2e15d90 loads 4 bytes from a0 (arg0 at entry) +0x358.
  The `lwc1` at 0x2e15da4 loads 4 bytes from a0 (arg0 at entry) +0x35c.
  20 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15db8, `lwc1` at 0x2e15dc4, `lwc1` at 0x2e15dd0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15dc0, `swc1` at 0x2e15dcc, `swc1` at 0x2e15dd8.
  The `blez` branch at 0x2e15da8 targets 0x2e15ee0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15db0 targets 0x2e15dfc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2e15df4 targets 0x2e15db8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e15e00 targets 0x2e15ee0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e15ed8 targets 0x2e15e10, is taken when a5(=[a1+200]) != a1(?), and falls through when a5(=[a1+200]) == a1(?).
  The return at 0x2e15ee0 has v0 = ?.
- `__glRowSetNoAlpha` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15ef0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15ef0-0x2e15fb8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x2e15ef0 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15f14, `swc1` at 0x2e15f18, `swc1` at 0x2e15f1c.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e15f24, `lwc1` at 0x2e15f5c, `lwc1` at 0x2e15f70.
  The `blez` branch at 0x2e15ef8 targets 0x2e15fb0, is taken when a4(=[a1+200]) <= 0 (signed), and falls through when a4(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e15f0c targets 0x2e15f3c, is taken when (a4(=[a1+200]) & 0x3) == 0, and falls through when (a4(=[a1+200]) & 0x3) != 0.
  The `bne` branch at 0x2e15f34 targets 0x2e15f14, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e15f40 targets 0x2e15fb0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e15fa8 targets 0x2e15f50, is taken when a4(=[a1+200]) != a1(?), and falls through when a4(=[a1+200]) == a1(?).
  The return at 0x2e15fb0 has v0 = ?.
- `__glRowSetAll` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e15fc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e15fc0-0x2e16004 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x2e15fc0 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e15fe0, `swc1` at 0x2e15fe4, `swc1` at 0x2e15fec.
  The `blez` branch at 0x2e15fc8 targets 0x2e15ffc, is taken when a4(=[a1+200]) <= 0 (signed), and falls through when a4(=[a1+200]) > 0 (signed).
  The `bne` branch at 0x2e15ff4 targets 0x2e15fe0, is taken when a4(=[a1+200]) != a1(?), and falls through when a4(=[a1+200]) == a1(?).
  The return at 0x2e15ffc has v0 = ?.
- `__glSpanConvolveReduceRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16010 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16010-0x2e161a0 (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0x2e16010 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16014 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16024 loads 4 bytes from [a1+552]:8 +0x40.
  33 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16030, `lwc1` at 0x2e16034, `lwc1` at 0x2e16040.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1603c, `swc1` at 0x2e1604c, `swc1` at 0x2e16070.
  The `ld` at 0x2e16168 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e16020 targets 0x2e1618c, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16028 targets 0x2e16194 and is always taken.
  The `bne` branch at 0x2e1606c targets 0x2e16030, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e16078 targets 0x2e16150, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e16148 targets 0x2e16080, is taken when a6(=[[a1+552]:8+64]) != a3(?), and falls through when a6(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e16158 targets 0x2e1618c, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e16164 targets 0x2e16150, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e1617c targets 0x2e16030, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The `beq` branch at 0x2e16184 targets 0x2e16074 and is always taken.
  The `beq` branch at 0x2e16198 targets 0x2e16164 and is always taken.
  The return at 0x2e1618c has v0 = ?.
- `__glSpanConvolveReduceRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e161a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e161a0-0x2e16384 (484 bytes).
  It occupies 484 bytes.
  The `lw` at 0x2e161a0 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e161a4 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e161b4 loads 4 bytes from [a1+552]:8 +0x40.
  44 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e161c0, `lwc1` at 0x2e161c4, `lwc1` at 0x2e161d0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e161cc, `swc1` at 0x2e161dc, `swc1` at 0x2e161ec.
  The `ld` at 0x2e16348 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e161b0 targets 0x2e16370, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e161b8 targets 0x2e16378 and is always taken.
  The `bne` branch at 0x2e1620c targets 0x2e161c0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e16218 targets 0x2e16330, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e16328 targets 0x2e16220, is taken when a6(=[[a1+552]:8+64]) != a3(?), and falls through when a6(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e16338 targets 0x2e16370, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e16344 targets 0x2e16330, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e16360 targets 0x2e161c0, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The `beq` branch at 0x2e16368 targets 0x2e16214 and is always taken.
  The `beq` branch at 0x2e1637c targets 0x2e16344 and is always taken.
  The return at 0x2e16370 has v0 = ?.
- `__glSpanConvolveReduceL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16390 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16390-0x2e16520 (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0x2e16390 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16394 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e163a4 loads 4 bytes from [a1+552]:8 +0x40.
  33 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e163b0, `lwc1` at 0x2e163b4, `lwc1` at 0x2e163c0.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e163bc, `swc1` at 0x2e163cc, `swc1` at 0x2e163f0.
  The `ld` at 0x2e164e8 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e163a0 targets 0x2e1650c, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e163a8 targets 0x2e16514 and is always taken.
  The `bne` branch at 0x2e163ec targets 0x2e163b0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e163f8 targets 0x2e164d0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e164c8 targets 0x2e16400, is taken when a6(=[[a1+552]:8+64]) != a3(?), and falls through when a6(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e164d8 targets 0x2e1650c, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e164e4 targets 0x2e164d0, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e164fc targets 0x2e163b0, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The `beq` branch at 0x2e16504 targets 0x2e163f4 and is always taken.
  The `beq` branch at 0x2e16518 targets 0x2e164e4 and is always taken.
  The return at 0x2e1650c has v0 = ?.
- `__glSpanConvolveReduceLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16520-0x2e16704 (484 bytes).
  It occupies 484 bytes.
  The `lw` at 0x2e16520 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16524 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16534 loads 4 bytes from [a1+552]:8 +0x40.
  44 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16540, `lwc1` at 0x2e16544, `lwc1` at 0x2e16550.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1654c, `swc1` at 0x2e1655c, `swc1` at 0x2e1656c.
  The `ld` at 0x2e166c8 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e16530 targets 0x2e166f0, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16538 targets 0x2e166f8 and is always taken.
  The `bne` branch at 0x2e1658c targets 0x2e16540, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e16598 targets 0x2e166b0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e166a8 targets 0x2e165a0, is taken when a6(=[[a1+552]:8+64]) != a3(?), and falls through when a6(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e166b8 targets 0x2e166f0, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e166c4 targets 0x2e166b0, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e166e0 targets 0x2e16540, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The `beq` branch at 0x2e166e8 targets 0x2e16594 and is always taken.
  The `beq` branch at 0x2e166fc targets 0x2e166c4 and is always taken.
  The return at 0x2e166f0 has v0 = ?.
- `__glSpanConvolveReduceI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16710-0x2e168f4 (484 bytes).
  It occupies 484 bytes.
  The `lw` at 0x2e16710 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16714 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16724 loads 4 bytes from [a1+552]:8 +0x40.
  44 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16730, `lwc1` at 0x2e16734, `lwc1` at 0x2e16740.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1673c, `swc1` at 0x2e1674c, `swc1` at 0x2e1675c.
  The `ld` at 0x2e168b8 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e16720 targets 0x2e168e0, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16728 targets 0x2e168e8 and is always taken.
  The `bne` branch at 0x2e1677c targets 0x2e16730, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e16788 targets 0x2e168a0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e16898 targets 0x2e16790, is taken when a6(=[[a1+552]:8+64]) != a3(?), and falls through when a6(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e168a8 targets 0x2e168e0, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `blez` branch at 0x2e168b4 targets 0x2e168a0, is taken when a6(=[[a1+552]:8+64]) <= 0 (signed), and falls through when a6(=[[a1+552]:8+64]) > 0 (signed).
  The `bne` branch at 0x2e168d0 targets 0x2e16730, is taken when (a6(=[[a1+552]:8+64]) & 0x3) != 0, and falls through when (a6(=[[a1+552]:8+64]) & 0x3) == 0.
  The `beq` branch at 0x2e168d8 targets 0x2e16784 and is always taken.
  The `beq` branch at 0x2e168ec targets 0x2e168b4 and is always taken.
  The return at 0x2e168e0 has v0 = ?.
- `__glSpanConvolve1DReduceRGB` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16900-0x2e16a84 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0x2e16900 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16904 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16914 loads 4 bytes from [a1+552]:8 +0x40.
  31 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16930, `lwc1` at 0x2e16934, `lwc1` at 0x2e16938.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e16a20, `swc1` at 0x2e16a28, `swc1` at 0x2e16a34.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x110, including `ld` at 0x2e16a4c, `ld` at 0x2e16a80.
  The `blez` branch at 0x2e16910 targets 0x2e16a68, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16918 targets 0x2e16a70 and is always taken.
  The `beq` branch at 0x2e16928 targets 0x2e16968, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e16960 targets 0x2e16930, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e1696c targets 0x2e16a20, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e16a18 targets 0x2e16980, is taken when a5(=[[a1+552]:8+64]) != a3(?), and falls through when a5(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e16a44 targets 0x2e16a68, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `bgtz` branch at 0x2e16a50 targets 0x2e16920, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The `beq` branch at 0x2e16a60 targets 0x2e16a20 and is always taken.
  The `beq` branch at 0x2e16a7c targets 0x2e16a50 and is always taken.
  The return at 0x2e16a68 has v0 = ?.
- `__glSpanConvolve1DReduceRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16a90-0x2e16c44 (436 bytes).
  It occupies 436 bytes.
  The `lw` at 0x2e16a90 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16a94 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16aa4 loads 4 bytes from [a1+552]:8 +0x40.
  40 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16acc, `lwc1` at 0x2e16ad0, `lwc1` at 0x2e16ad4.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e16bf0, `swc1` at 0x2e16bf4, `swc1` at 0x2e16bfc.
  The `ld` at 0x2e16c18 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e16aa0 targets 0x2e16c30, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16aa8 targets 0x2e16c38 and is always taken.
  The `beq` branch at 0x2e16ac4 targets 0x2e16b10, is taken when (a5(=[[a1+552]:8+64]) & 0x3) == 0, and falls through when (a5(=[[a1+552]:8+64]) & 0x3) != 0.
  The `bne` branch at 0x2e16b08 targets 0x2e16acc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e16b14 targets 0x2e16bf0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e16be8 targets 0x2e16b20, is taken when a5(=[[a1+552]:8+64]) != a3(?), and falls through when a5(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e16c0c targets 0x2e16c30, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `bgtz` branch at 0x2e16c14 targets 0x2e16ab0, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The `beq` branch at 0x2e16c28 targets 0x2e16bf0 and is always taken.
  The `beq` branch at 0x2e16c3c targets 0x2e16c14 and is always taken.
  The return at 0x2e16c30 has v0 = ?.
- `__glSpanConvolve1DReduceL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16c50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16c50-0x2e16da4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x2e16c50 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16c54 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16c64 loads 4 bytes from [a1+552]:8 +0x40.
  21 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16c80, `lwc1` at 0x2e16c84, `lwc1` at 0x2e16c88.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e16d40, `swc1` at 0x2e16d48, `swc1` at 0x2e16d54.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x110, including `ld` at 0x2e16d6c, `ld` at 0x2e16da0.
  The `blez` branch at 0x2e16c60 targets 0x2e16d88, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16c68 targets 0x2e16d90 and is always taken.
  The `beq` branch at 0x2e16c78 targets 0x2e16cb0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e16ca8 targets 0x2e16c80, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e16cb4 targets 0x2e16d40, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e16d38 targets 0x2e16cc0, is taken when a5(=[[a1+552]:8+64]) != a3(?), and falls through when a5(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e16d64 targets 0x2e16d88, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `bgtz` branch at 0x2e16d70 targets 0x2e16c70, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The `beq` branch at 0x2e16d80 targets 0x2e16d40 and is always taken.
  The `beq` branch at 0x2e16d9c targets 0x2e16d70 and is always taken.
  The return at 0x2e16d88 has v0 = ?.
- `__glSpanConvolve1DReduceLA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16db0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16db0-0x2e16f44 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0x2e16db0 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16db4 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16dc4 loads 4 bytes from [a1+552]:8 +0x40.
  30 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16dec, `lwc1` at 0x2e16df0, `lwc1` at 0x2e16df4.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e16ef0, `swc1` at 0x2e16ef4, `swc1` at 0x2e16efc.
  The `ld` at 0x2e16f18 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e16dc0 targets 0x2e16f30, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16dc8 targets 0x2e16f38 and is always taken.
  The `beq` branch at 0x2e16de4 targets 0x2e16e28, is taken when (a5(=[[a1+552]:8+64]) & 0x3) == 0, and falls through when (a5(=[[a1+552]:8+64]) & 0x3) != 0.
  The `bne` branch at 0x2e16e20 targets 0x2e16dec, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e16e2c targets 0x2e16ef0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e16ee8 targets 0x2e16e40, is taken when a5(=[[a1+552]:8+64]) != a3(?), and falls through when a5(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e16f0c targets 0x2e16f30, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `bgtz` branch at 0x2e16f14 targets 0x2e16dd0, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The `beq` branch at 0x2e16f28 targets 0x2e16ef0 and is always taken.
  The `beq` branch at 0x2e16f3c targets 0x2e16f14 and is always taken.
  The return at 0x2e16f30 has v0 = ?.
- `__glSpanConvolve1DReduceI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e16f50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e16f50-0x2e170c4 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0x2e16f50 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `ld` at 0x2e16f54 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e16f64 loads 4 bytes from [a1+552]:8 +0x40.
  25 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e16f8c, `lwc1` at 0x2e16f90, `lwc1` at 0x2e16f94.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e17070, `swc1` at 0x2e17074, `swc1` at 0x2e1707c.
  The `ld` at 0x2e17098 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `blez` branch at 0x2e16f60 targets 0x2e170b0, is taken when t2(=[a1+200]) <= 0 (signed), and falls through when t2(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e16f68 targets 0x2e170b8 and is always taken.
  The `beq` branch at 0x2e16f84 targets 0x2e16fc4, is taken when (a5(=[[a1+552]:8+64]) & 0x3) == 0, and falls through when (a5(=[[a1+552]:8+64]) & 0x3) != 0.
  The `bne` branch at 0x2e16fbc targets 0x2e16f8c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e16fc8 targets 0x2e17070, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e17068 targets 0x2e16fd0, is taken when a5(=[[a1+552]:8+64]) != a3(?), and falls through when a5(=[[a1+552]:8+64]) == a3(?).
  The `beq` branch at 0x2e1708c targets 0x2e170b0, is taken when t2(=[a1+200]) == t1(?), and falls through when t2(=[a1+200]) != t1(?).
  The `bgtz` branch at 0x2e17094 targets 0x2e16f70, is taken when a5(=[[a1+552]:8+64]) > 0 (signed), and falls through when a5(=[[a1+552]:8+64]) <= 0 (signed).
  The `beq` branch at 0x2e170a8 targets 0x2e17070 and is always taken.
  The `beq` branch at 0x2e170bc targets 0x2e17094 and is always taken.
  The return at 0x2e170b0 has v0 = ?.
- `__glSlowPickConvolutionFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e170d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e170d0-0x2e172d0 (512 bytes).
  It occupies 512 bytes.
  The `ld` at 0x2e17160 loads 8 bytes from ?.
  The `lw` at 0x2e17164 loads 4 bytes from ?.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e17170, `lwc1` at 0x2e17178, `lwc1` at 0x2e17180.
  The `jalr` at 0x2e17150 calls __glInitMemUnpack [0x2e0abb0] with a0=a0 at entry (arg0), a1=sp-696, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a5 at entry (arg5).
  The `jalr` at 0x2e17168 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-696, a2=?, a3=?.
  The `jalr` at 0x2e17260 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-696, a2=0x1, a3=?.
  The `jalr` at 0x2e17270 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-696, a2=?, a3=?.
  The `jalr` at 0x2e17298 calls __glGenericPickCopyImage [0x2e0a680] with a0=a0 at entry (arg0), a1=sp-696, a2=0x0, a3=one of 0x0, 0x1.
  The `beq` branch at 0x2e17108 targets 0x2e172b4, is taken when a6 == at(=0x8010), and falls through when a6 != at(=0x8010).
  The `bc1f` branch at 0x2e17198 targets 0x2e17214, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17188)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17188).
  The `bc1f` branch at 0x2e171a8 targets 0x2e17214, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e171b8 targets 0x2e17214, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e171c8 targets 0x2e17214, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e171d8 targets 0x2e17214, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e171d4)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e171d4).
  The `bc1f` branch at 0x2e171e8 targets 0x2e17214, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e171f8 targets 0x2e17214, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e1720c targets 0x2e172c8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e172c0 targets 0x2e17128 and is always taken.
  The `beq` branch at 0x2e172c8 targets 0x2e17254 and is always taken.
  The return at 0x2e172ac has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickSeparableFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e172d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e172d0-0x2e17594 (708 bytes).
  It occupies 708 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4b8, including `ld` at 0x2e17348, `ld` at 0x2e174cc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x470, including `lw` at 0x2e1734c, `lw` at 0x2e174b8, `lw` at 0x2e174dc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x478, including `lwc1` at 0x2e17358, `lwc1` at 0x2e174f0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x47c, including `lwc1` at 0x2e1735c, `lwc1` at 0x2e17400, `lwc1` at 0x2e174f8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x488, including `lwc1` at 0x2e17364, `lwc1` at 0x2e17418, `lwc1` at 0x2e17510.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x490, including `lwc1` at 0x2e1736c, `lwc1` at 0x2e17428, `lwc1` at 0x2e17520.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x48c, including `lwc1` at 0x2e17370, `lwc1` at 0x2e17420, `lwc1` at 0x2e17518.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x484, including `lwc1` at 0x2e17378, `lwc1` at 0x2e17410, `lwc1` at 0x2e17508.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x480, including `lwc1` at 0x2e1737c, `lwc1` at 0x2e17408, `lwc1` at 0x2e17500.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x494, including `lwc1` at 0x2e173e8, `lwc1` at 0x2e17430, `lwc1` at 0x2e17528.
  The `jalr` at 0x2e17338 calls __glInitMemUnpack [0x2e0abb0] with a0=a0 at entry (arg0), a1=sp-768, a2=a1 at entry (arg1), a3=0x1, a4=0x0, a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a5 at entry (arg5).
  The `jalr` at 0x2e17350 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-768, a2=[a0+1136], a3=[a0+1208]:8.
  The `jalr` at 0x2e17444 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-768, a2=?, a3=?.
  The `jalr` at 0x2e17454 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-768, a2=?, a3=?.
  The `jalr` at 0x2e17478 calls __glGenericPickCopyImage [0x2e0a680] with a0=a0 at entry (arg0), a1=sp-768, a2=0x0, a3=?.
  The `jalr` at 0x2e174a8 calls __glInitMemUnpack [0x2e0abb0] with a0=a0 at entry (arg0), a1=sp-768, a2=a2 at entry (arg2), a3=0x1, a4=0x0, a5=a3 at entry (arg3), a6=a4 at entry (arg4), a7=a6 at entry (arg6).
  The `jalr` at 0x2e174b4 calls __glElementsPerGroup [0x2e0e120] with a0=[a0+1136], a1=?, a2=?, a3=?.
  The `jalr` at 0x2e174e0 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-768, a2=[a0+1136], a3=?, a5=a1 at entry (arg1).
  The `jalr` at 0x2e17538 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-768, a2=?, a3=?.
  The `jalr` at 0x2e17548 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-768, a2=?, a3=?.
  The `jalr` at 0x2e1756c calls __glGenericPickCopyImage [0x2e0a680] with a0=a0 at entry (arg0), a1=sp-768, a2=0x0, a3=?.
  The `bc1f` branch at 0x2e17380 targets 0x2e173fc, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17374)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17374).
  The `bc1f` branch at 0x2e17390 targets 0x2e173fc, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e173a0 targets 0x2e173fc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e173b0 targets 0x2e173fc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e173c0 targets 0x2e173fc, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e173bc)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e173bc).
  The `bc1f` branch at 0x2e173d0 targets 0x2e173fc, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e173e0 targets 0x2e173fc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e173f4 targets 0x2e1758c, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e174e8 targets 0x2e17534, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2e1758c targets 0x2e1743c and is always taken.
  The return at 0x2e17584 has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickGetConvolutionFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e175a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e175a0-0x2e176b4 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0x2e175f0 loads 8 bytes from ?.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e175f8, `lw` at 0x2e17600, `lw` at 0x2e17604.
  The `jalr` at 0x2e17608 calls __glInitMemGet [0x2e0aab0] with a0=a0 at entry (arg0), a1=sp-696, a2=?, a3=?.
  The `jalr` at 0x2e17630 calls __glInitMemPack [0x2e0ac20] with a0=a0 at entry (arg0), a1=sp-696, a2=?, a3=?, a4=0x0, a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a4 at entry (arg4).
  The `jalr` at 0x2e17644 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-696, a2=?, a3=?.
  The `jalr` at 0x2e17654 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-696, a2=?, a3=?.
  The `jalr` at 0x2e17680 calls __glGenericPickCopyImage [0x2e0a680] with a0=a0 at entry (arg0), a1=sp-696, a2=0x0, a3=0x1.
  The `beq` branch at 0x2e175c8 targets 0x2e176a0, is taken when a1 == at(=0x8010), and falls through when a1 != at(=0x8010).
  The `beq` branch at 0x2e176ac targets 0x2e175f0 and is always taken.
  The return at 0x2e17698 has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickGetSeparableFilter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e176c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e176c0-0x2e17850 (400 bytes).
  It occupies 400 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4b8, including `ld` at 0x2e176c8, `ld` at 0x2e177a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x470, including `lw` at 0x2e176d0, `lw` at 0x2e177ac.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4a8, including `lw` at 0x2e17714, `lw` at 0x2e17734, `lw` at 0x2e1778c.
  The `lw` at 0x2e17790 loads 4 bytes from a0 (arg0 at entry) +0x474.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4ac, including `lw` at 0x2e177b8, `lw` at 0x2e177e0.
  The `jalr` at 0x2e17710 calls __glInitMemGet [0x2e0aab0] with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1192], a3=0x1, a4=[a0+1136], a5=[a0+1208]:8.
  The `jalr` at 0x2e17738 calls __glInitMemPack [0x2e0ac20] with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1192], a3=0x1, a4=0x0, a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a4 at entry (arg4).
  The `jalr` at 0x2e17748 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-688, a2=?, a3=?.
  The `jalr` at 0x2e17758 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-688, a2=?, a3=?.
  The `jalr` at 0x2e17784 calls __glGenericPickCopyImage [0x2e0a680] with a0=a0 at entry (arg0), a1=sp-688, a2=0x0, a3=?.
  The `jalr` at 0x2e177bc calls __glInitMemGet [0x2e0aab0] with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1196], a3=0x1, a4=[a0+1136], a7=[a0+1140].
  The `jalr` at 0x2e177e4 calls __glInitMemPack [0x2e0ac20] with a0=a0 at entry (arg0), a1=sp-688, a2=[a0+1196], a3=0x1, a4=0x0, a5=a2 at entry (arg2), a6=a3 at entry (arg3), a7=a5 at entry (arg5).
  The `jalr` at 0x2e177fc calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-688, a2=?, a3=?.
  The `jalr` at 0x2e1780c calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-688, a2=?, a3=?.
  The `jalr` at 0x2e17834 calls __glGenericPickCopyImage [0x2e0a680] with a0=a0 at entry (arg0), a1=sp-688, a2=0x0, a3=?.
  The return at 0x2e17848 has v0 = ret(__glGenericPickCopyImage).
- `__glSlowPickCopyConvolutionFilter1D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e17850 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e17850-0x2e17a0c (444 bytes).
  It occupies 444 bytes.
  The `ld` at 0x2e178b0 loads 8 bytes from a0 (arg0 at entry) +0x408.
  The `lwc1` at 0x2e178bc loads 4 bytes from a0 (arg0 at entry) +0x3c8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3d8, including `lwc1` at 0x2e178c4, `lwc1` at 0x2e1797c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3e0, including `lwc1` at 0x2e178cc, `lwc1` at 0x2e1798c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3dc, including `lwc1` at 0x2e178d0, `lwc1` at 0x2e17984.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3d4, including `lwc1` at 0x2e178d8, `lwc1` at 0x2e17974.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3d0, including `lwc1` at 0x2e178dc, `lwc1` at 0x2e1796c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3cc, including `lwc1` at 0x2e178e8, `lwc1` at 0x2e17964.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3e4, including `lwc1` at 0x2e1794c, `lwc1` at 0x2e17994.
  The `ld` at 0x2e179dc loads 8 bytes from a0 (arg0 at entry) +0x4d68.
  The `jalr` at 0x2e1789c calls __glInitReadImageSrcInfo [0x2e0a780] with a0=a0 at entry (arg0), a1=sp-672, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=0x1, a6=0xe8f48.
  The `jalr` at 0x2e178b4 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-672, a2=a2 at entry (arg2), a3=[a0+1032]:8.
  The `jalr` at 0x2e179a4 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `jalr` at 0x2e179b4 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `jalr` at 0x2e179cc calls __glClipReadPixels [0x2e07890] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `jalr` at 0x2e179e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `bc1f` branch at 0x2e178e4 targets 0x2e17960, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e178d4)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e178d4).
  The `bc1f` branch at 0x2e178f4 targets 0x2e17960, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17904 targets 0x2e17960, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e17914 targets 0x2e17960, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e17924 targets 0x2e17960, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17920)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17920).
  The `bc1f` branch at 0x2e17934 targets 0x2e17960, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17944 targets 0x2e17960, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e17958 targets 0x2e17a04, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e179d4 targets 0x2e179f0, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The `beq` branch at 0x2e17a04 targets 0x2e1799c and is always taken.
  The return at 0x2e179fc has v0 = one of ret(__glClipReadPixels), ret(?).
- `__glSlowPickCopyConvolutionFilter2D` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e17a10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e17a10-0x2e17bd0 (448 bytes).
  It occupies 448 bytes.
  The `ld` at 0x2e17a74 loads 8 bytes from a0 (arg0 at entry) +0x460.
  The `lwc1` at 0x2e17a80 loads 4 bytes from a0 (arg0 at entry) +0x420.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x430, including `lwc1` at 0x2e17a88, `lwc1` at 0x2e17b40.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x438, including `lwc1` at 0x2e17a90, `lwc1` at 0x2e17b50.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x434, including `lwc1` at 0x2e17a94, `lwc1` at 0x2e17b48.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x42c, including `lwc1` at 0x2e17a9c, `lwc1` at 0x2e17b38.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x428, including `lwc1` at 0x2e17aa0, `lwc1` at 0x2e17b30.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x424, including `lwc1` at 0x2e17aac, `lwc1` at 0x2e17b28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x43c, including `lwc1` at 0x2e17b10, `lwc1` at 0x2e17b58.
  The `ld` at 0x2e17ba0 loads 8 bytes from a0 (arg0 at entry) +0x4d68.
  The `jalr` at 0x2e17a60 calls __glInitReadImageSrcInfo [0x2e0a780] with a0=a0 at entry (arg0), a1=sp-672, a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6), a6=0xe8d88, a7=a6 at entry (arg6).
  The `jalr` at 0x2e17a78 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-672, a2=a2 at entry (arg2), a3=[a0+1120]:8.
  The `jalr` at 0x2e17b68 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `jalr` at 0x2e17b78 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `jalr` at 0x2e17b90 calls __glClipReadPixels [0x2e07890] with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `jalr` at 0x2e17ba8 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-672, a2=?, a3=?.
  The `bc1f` branch at 0x2e17aa8 targets 0x2e17b24, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17a98)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17a98).
  The `bc1f` branch at 0x2e17ab8 targets 0x2e17b24, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17ac8 targets 0x2e17b24, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e17ad8 targets 0x2e17b24, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e17ae8 targets 0x2e17b24, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17ae4)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e17ae4).
  The `bc1f` branch at 0x2e17af8 targets 0x2e17b24, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e17b08 targets 0x2e17b24, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e17b1c targets 0x2e17bc8, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e17b98 targets 0x2e17bb4, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The `beq` branch at 0x2e17bc8 targets 0x2e17b60 and is always taken.
  The return at 0x2e17bc0 has v0 = one of ret(__glClipReadPixels), ret(?).
- `__glSep2dZoomDrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e17bd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e17bd0-0x2e180dc (1292 bytes).
  It occupies 1292 bytes.
  The `ld` at 0x2e17bd8 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e17c1c loads 4 bytes from [a1+552]:8 +0x44.
  The `lw` at 0x2e17c2c loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `sd` at 0x2e17c60 stores 8 bytes to a1 (arg1 at entry) +0x160.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd8, including `lwc1` at 0x2e17c64, `lwc1` at 0x2e17df0.
  The `lwc1` at 0x2e17c68 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `ld` at 0x2e17c6c loads 8 bytes from a1 (arg1 at entry) +0x200.
  7 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e17c70, `ld` at 0x2e17d04, `ld` at 0x2e17d58.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lw` at 0x2e17c7c, `lw` at 0x2e1800c.
  The `ld` at 0x2e17c80 loads 8 bytes from a1 (arg1 at entry) +0x198.
  2 such `ld` accesses load 8 bytes from [a1+552]:8 +0x50, including `ld` at 0x2e17c90, `ld` at 0x2e17cc0.
  The `sd` at 0x2e17c98 stores 8 bytes to a1 (arg1 at entry) +0x110.
  The `lw` at 0x2e17cb0 loads 4 bytes from [a1+552]:8 +0x40.
  3 such `lw` accesses load 4 bytes from [a1+552]:8 +0xc, including `lw` at 0x2e17cb4, `lw` at 0x2e17d44, `lw` at 0x2e17e04.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x2e17d00, `lw` at 0x2e17dd4, `lw` at 0x2e18020.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x2e17d20, `sd` at 0x2e17de0, `sd` at 0x2e17f24.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e17d38, `sw` at 0x2e17e5c.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e17d88, `ld` at 0x2e17e94, `ld` at 0x2e17f80.
  The `ld` at 0x2e17da4 loads 8 bytes from a1 (arg1 at entry) +0x210.
  The `lw` at 0x2e17de4 loads 4 bytes from a0 (arg0 at entry) +0x1458.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd8, including `swc1` at 0x2e17e00, `swc1` at 0x2e17f14.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e17e44, `lw` at 0x2e17e60, `lw` at 0x2e17eb4.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e17ee8, `ld` at 0x2e18030.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e17f0c, `lw` at 0x2e17f5c, `lw` at 0x2e17f9c.
  The `ld` at 0x2e17f40 loads 8 bytes from (([a1+280]+2 << 0x3) + a1) +0x190.
  The `jalr` at 0x2e17c5c calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xe8bc8, a3=s8 at entry.
  The `jalr` at 0x2e17d98 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e17dc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=sp-102416.
  The `jalr` at 0x2e17e3c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=[a1+408]:8.
  The `jalr` at 0x2e17eac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e17efc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=sp-102416.
  The `jalr` at 0x2e17f54 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-102416, a3=((one of 0x0, 0x1 << 0xf) + sp-69648), a6=[a1+280].
  The `jalr` at 0x2e17f94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e17fc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e17fe8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-102416, a3=?, a6=[a1+280].
  The `jalr` at 0x2e18048 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=sp-102416, a6=one of 0x0, 0x1.
  The `bne` branch at 0x2e17ca4 targets 0x2e1809c, is taken when a5(=[a1+188]) < a7(=[[a1+552]:8+68]) (signed), and falls through when a5(=[a1+188]) >= a7(=[[a1+552]:8+68]) (signed).
  The `blez` branch at 0x2e17cd0 targets 0x2e1809c, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x2e17cf4 targets 0x2e17d3c and is always taken.
  The `beq` branch at 0x2e17d34 targets 0x2e1809c, is taken when a0(?) >= t9(?) (signed), and falls through when a0(?) < t9(?) (signed).
  The `blez` branch at 0x2e17d50 targets 0x2e17f0c, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x2e17d5c targets 0x2e17e20 and is always taken.
  The `beq` branch at 0x2e17d78 targets 0x2e17ee4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2e17e18 targets 0x2e17f0c, is taken when a0(?) >= a5(?) (signed), and falls through when a0(?) < a5(?) (signed).
  The `beq` branch at 0x2e17e54 targets 0x2e17ed0, is taken when t8(=[a1+280]) == 0, and falls through when t8(=[a1+280]) != 0.
  The `bne` branch at 0x2e17e6c targets 0x2e17d70, is taken when t9(=[a1+280]) < 0x2 (signed), and falls through when t9(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e17ec0 targets 0x2e17e80, is taken when s3(?) < a4(=[a1+280]) (signed), and falls through when s3(?) >= a4(=[a1+280]) (signed).
  The `beq` branch at 0x2e17ec8 targets 0x2e17d74 and is always taken.
  The `beq` branch at 0x2e17ed0 targets 0x2e18030, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2e17edc targets 0x2e17da0 and is always taken.
  The `beq` branch at 0x2e17f04 targets 0x2e17d80 and is always taken.
  The `beq` branch at 0x2e17f20 targets 0x2e17fd0, is taken when a6(=[a1+280]) >= a4(=[a1+284]) (signed), and falls through when a6(=[a1+280]) < a4(=[a1+284]) (signed).
  The `bne` branch at 0x2e17f64 targets 0x2e17fb4, is taken when t8(=[a1+284]) < s3(=[a1+280]+2) (signed), and falls through when t8(=[a1+284]) >= s3(=[a1+280]+2) (signed).
  The `beq` branch at 0x2e17fa8 targets 0x2e17f6c, is taken when t8(=[a1+284]) >= s3(?) (signed), and falls through when t8(=[a1+284]) < s3(?) (signed).
  The `beq` branch at 0x2e17fc8 targets 0x2e17ff0 and is always taken.
  The `bne` branch at 0x2e18004 targets 0x2e17d00, is taken when a6(?) != a3(?), and falls through when a6(?) == a3(?).
  The `beq` branch at 0x2e18018 targets 0x2e1808c, is taken when a4(?) >= a7(=[a1+188]) (signed), and falls through when a4(?) < a7(=[a1+188]) (signed).
  The `beq` branch at 0x2e18028 targets 0x2e18060 and is always taken.
  The `beq` branch at 0x2e18050 targets 0x2e17ed8 and is always taken.
  The `beq` branch at 0x2e18058 targets 0x2e17d0c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2e18078 targets 0x2e18058, is taken when a6(?) == a5(?), and falls through when a6(?) != a5(?).
  The `beq` branch at 0x2e18084 targets 0x2e17d0c and is always taken.
  The `beq` branch at 0x2e18094 targets 0x2e17d0c and is always taken.
  The return at 0x2e180d4 has v0 = one of ret(__glComputeSpanPixelArray), a0+65536.
  The instructions from 0x2e17cfc to 0x2e17cfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e17d64 to 0x2e17d6c are not reached by any path from the entry, and their branches are not listed.
- `__glConv2dDrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e180e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e180e0-0x2e185ac (1228 bytes).
  It occupies 1228 bytes.
  The `ld` at 0x2e18108 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e18110 loads 4 bytes from [a1+552]:8 +0xc.
  The `lw` at 0x2e18114 loads 4 bytes from [a1+552]:8 +0x40.
  The `lw` at 0x2e1811c loads 4 bytes from [a1+552]:8 +0x44.
  The `lw` at 0x2e18128 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `sd` at 0x2e1815c stores 8 bytes to a1 (arg1 at entry) +0x160.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd8, including `lwc1` at 0x2e1816c, `lwc1` at 0x2e182a8.
  The `lwc1` at 0x2e18170 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  9 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e1818c, `ld` at 0x2e181f4, `ld` at 0x2e1826c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lw` at 0x2e18198, `lw` at 0x2e184c8.
  The `ld` at 0x2e1819c loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `ld` at 0x2e181a8 loads 8 bytes from a1 (arg1 at entry) +0x198.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x2e181f0, `lw` at 0x2e18288, `lw` at 0x2e184dc.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x2e18210, `sd` at 0x2e18298, `sd` at 0x2e18400.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e18228, `sw` at 0x2e182e8.
  The `ld` at 0x2e18234 loads 8 bytes from [a1+552]:8 +0x50.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x110, including `sd` at 0x2e1823c, `sd` at 0x2e18290.
  The `ld` at 0x2e18284 loads 8 bytes from a1 (arg1 at entry) +0x110.
  The `lw` at 0x2e1829c loads 4 bytes from a0 (arg0 at entry) +0x1458.
  3 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd8, including `swc1` at 0x2e182bc, `swc1` at 0x2e183f0, `swc1` at 0x2e184f4.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e182c0, `lw` at 0x2e182f8, `lw` at 0x2e1833c.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e1831c, `ld` at 0x2e18370, `ld` at 0x2e18430.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e18398, `ld` at 0x2e183c0.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e183e8, `lw` at 0x2e1844c, `lw` at 0x2e18558.
  The `jalr` at 0x2e18164 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+39260], a3=0xe86b8, a4=[[a1+552]:8+12], a5=[[a1+552]:8+64], a6=s8 at entry.
  The `jalr` at 0x2e18270 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=sp-36880.
  The `jalr` at 0x2e182f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a4=[a0+39260], a5=a0+65536.
  The `jalr` at 0x2e18334 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18388 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=sp-36880.
  The `jalr` at 0x2e183b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=sp-36880.
  The `jalr` at 0x2e183d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=sp-36880, a4=[a0+39260].
  The `jalr` at 0x2e18444 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18484 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=[a1+512]:8, a5=[a1+280], a6=[a1+512]:8.
  The `jalr` at 0x2e184a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=[a1+512]:8, a5=[a1+280].
  The `jalr` at 0x2e1854c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `blez` branch at 0x2e181b4 targets 0x2e1856c, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x2e181e8 targets 0x2e1822c and is always taken.
  The `beq` branch at 0x2e18224 targets 0x2e1856c, is taken when a0(?) >= t9(?) (signed), and falls through when a0(?) < t9(?) (signed).
  The `blez` branch at 0x2e18238 targets 0x2e183e8, is taken when at(=[[a1+552]:8+68]) <= 0 (signed), and falls through when at(=[[a1+552]:8+68]) > 0 (signed).
  The `beq` branch at 0x2e18240 targets 0x2e182c0 and is always taken.
  The `beq` branch at 0x2e18250 targets 0x2e183c0, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x2e182b8 targets 0x2e183e8, is taken when a4(=[[a1+552]:8+68]) == s7(?), and falls through when a4(=[[a1+552]:8+68]) != s7(?).
  The `beq` branch at 0x2e182c4 targets 0x2e18250, is taken when t2(=[a1+280]) == 0, and falls through when t2(=[a1+280]) != 0.
  The `bne` branch at 0x2e18304 targets 0x2e18358, is taken when a6(=[a1+280]) < 0x2 (signed), and falls through when a6(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e18348 targets 0x2e1830c, is taken when s3(?) < a4(=[a1+280]) (signed), and falls through when s3(?) >= a4(=[a1+280]) (signed).
  The `beq` branch at 0x2e18358 targets 0x2e18398, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x2e18390 targets 0x2e18280 and is always taken.
  The `beq` branch at 0x2e183b8 targets 0x2e18364 and is always taken.
  The `beq` branch at 0x2e183e0 targets 0x2e18258 and is always taken.
  The `bne` branch at 0x2e183fc targets 0x2e18524, is taken when a5(=[a1+280]) < a0(=[a1+284]) (signed), and falls through when a5(=[a1+280]) >= a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e18408 targets 0x2e18460, is taken when a0(=[a1+284]) < s3(?) (signed), and falls through when a0(=[a1+284]) >= s3(?) (signed).
  The `beq` branch at 0x2e18458 targets 0x2e18420, is taken when a0(=[a1+284]) >= s3(?) (signed), and falls through when a0(=[a1+284]) < s3(?) (signed).
  The `bne` branch at 0x2e18464 targets 0x2e18494, is taken when a5(=[a1+280]) != a0(=[a1+284]), and falls through when a5(=[a1+280]) == a0(=[a1+284]).
  The `beq` branch at 0x2e1848c targets 0x2e184ac and is always taken.
  The `bne` branch at 0x2e184c0 targets 0x2e181f0, is taken when a6(?) != a3(?), and falls through when a6(?) == a3(?).
  The `beq` branch at 0x2e184d4 targets 0x2e1855c, is taken when a4(?) >= a7(=[a1+188]) (signed), and falls through when a4(?) < a7(=[a1+188]) (signed).
  The `beq` branch at 0x2e184e4 targets 0x2e184f4 and is always taken.
  The `beq` branch at 0x2e184ec targets 0x2e181fc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2e18510 targets 0x2e184ec, is taken when a6(?) == t1(?), and falls through when a6(?) != t1(?).
  The `beq` branch at 0x2e1851c targets 0x2e181fc and is always taken.
  The `beq` branch at 0x2e18554 targets 0x2e18404 and is always taken.
  The `beq` branch at 0x2e18564 targets 0x2e181fc and is always taken.
  The return at 0x2e185a4 has v0 = one of ret(__glComputeSpanPixelArray), a0+65536.
  The instructions from 0x2e18248 to 0x2e1824c are not reached by any path from the entry, and their branches are not listed.
- `__glSep2dDrawPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e185b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e185b0-0x2e18c54 (1700 bytes).
  It occupies 1700 bytes.
  The `ld` at 0x2e185cc loads 8 bytes from a0 (arg0 at entry) +0x4c0.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x228, including `ld` at 0x2e185dc, `ld` at 0x2e1882c.
  The `lw` at 0x2e185e4 loads 4 bytes from [a1+552]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0xc, including `lw` at 0x2e185ec, `lw` at 0x2e18918.
  The `lw` at 0x2e185f8 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lw` at 0x2e18620 loads 4 bytes from [a1+552]:8 +0x44.
  The `sd` at 0x2e1862c stores 8 bytes to a1 (arg1 at entry) +0x160.
  2 such `ld` accesses load 8 bytes from [a1+552]:8 +0x50, including `ld` at 0x2e18648, `ld` at 0x2e18834.
  The `ld` at 0x2e1864c loads 8 bytes from a1 (arg1 at entry) +0x198.
  The `ld` at 0x2e18650 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0x2e18654 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  The `sd` at 0x2e18664 stores 8 bytes to a1 (arg1 at entry) +0x110.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e186c4, `ld` at 0x2e187ec, `ld` at 0x2e18874.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e186f0, `ld` at 0x2e187a0, `ld` at 0x2e188a0.
  8 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e18708, `ld` at 0x2e18760, `ld` at 0x2e18800.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x2e1870c, `lw` at 0x2e18a48.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x2e1872c, `sd` at 0x2e18a54.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e18730, `lw` at 0x2e1876c, `lw` at 0x2e187c8.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e18754, `sw` at 0x2e18ab8, `sw` at 0x2e18bf8.
  The `ld` at 0x2e1894c loads 8 bytes from a1 (arg1 at entry) +0x210.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e18988, `lw` at 0x2e189d8.
  The `lw` at 0x2e18a5c loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `lwc1` at 0x2e18a80 loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `swc1` at 0x2e18aa0 stores 4 bytes to a1 (arg1 at entry) +0xd8.
  The `jalr` at 0x2e18638 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0xe81e8, a3=[[a1+552]:8+12], a4=[[a1+552]:8+64], a5=s8 at entry.
  The `jalr` at 0x2e186d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18700 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18764 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a4=[a1+408]:8.
  The `jalr` at 0x2e187bc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jalr` at 0x2e187fc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?.
  The `jalr` at 0x2e18818 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a7=[a1+408]:8.
  The `jalr` at 0x2e18884 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=?.
  The `jalr` at 0x2e188b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=?.
  The `jalr` at 0x2e188d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18964 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a7=[[a1+552]:8+12].
  The `jalr` at 0x2e189d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18a04 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=?, a4=[a1+512]:8.
  The `jalr` at 0x2e18aec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a4=[a1+16]:8.
  The `jalr` at 0x2e18b48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18b90 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a4=[a1+16]:8.
  The `jalr` at 0x2e18bac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a6=[a1+408]:8.
  The `bne` branch at 0x2e18670 targets 0x2e18c04, is taken when a7(=[a1+188]) < s5(=[[a1+552]:8+68]) (signed), and falls through when a7(=[a1+188]) >= s5(=[[a1+552]:8+68]) (signed).
  The `blez` branch at 0x2e18678 targets 0x2e18c30, is taken when a0(=[[a1+552]:8+68]-1) <= 0 (signed), and falls through when a0(=[[a1+552]:8+68]-1) > 0 (signed).
  The `beq` branch at 0x2e186b4 targets 0x2e18730 and is always taken.
  The `beq` branch at 0x2e18728 targets 0x2e18828, is taken when at(?) == v0(=(([[a1+552]:8+68]-1 << 0xf) + [a0+1216]:8)), and falls through when at(?) != v0(=(([[a1+552]:8+68]-1 << 0xf) + [a0+1216]:8)).
  The `beq` branch at 0x2e18734 targets 0x2e187ec, is taken when a0(=[a1+280]) == 0, and falls through when a0(=[a1+280]) != 0.
  The `bne` branch at 0x2e1877c targets 0x2e186c0, is taken when ra(=[a1+280]) < 0x2 (signed), and falls through when ra(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e187d8 targets 0x2e18790, is taken when a5(?) < a6(=[a1+280]) (signed), and falls through when a5(?) >= a6(=[a1+280]) (signed).
  The `beq` branch at 0x2e187e4 targets 0x2e186c4 and is always taken.
  The `beq` branch at 0x2e18820 targets 0x2e1870c and is always taken.
  The `blez` branch at 0x2e1883c targets 0x2e18bc0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x2e18868 targets 0x2e18aac and is always taken.
  The `blez` branch at 0x2e188e0 targets 0x2e18984, is taken when s5(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s5(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e18970 targets 0x2e18900, is taken when s0(?) != s7(?), and falls through when s0(?) == s7(?).
  The `bne` branch at 0x2e18994 targets 0x2e189f4, is taken when t8(=[a1+284]) < s0(?) (signed), and falls through when t8(=[a1+284]) >= s0(?) (signed).
  The `beq` branch at 0x2e189e4 targets 0x2e189a0, is taken when a3(=[a1+284]) >= s0(?) (signed), and falls through when a3(=[a1+284]) < s0(?) (signed).
  The `beq` branch at 0x2e18aa4 targets 0x2e18bc0, is taken when a7(?) == a3(?), and falls through when a7(?) != a3(?).
  The `beq` branch at 0x2e18ad0 targets 0x2e18b80, is taken when at(=[a1+280]) == 0, and falls through when at(=[a1+280]) != 0.
  The `bne` branch at 0x2e18b04 targets 0x2e18870, is taken when v0(=[a1+280]) < 0x2 (signed), and falls through when v0(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e18b64 targets 0x2e18b20, is taken when a4(?) < a5(=[a1+280]) (signed), and falls through when a4(?) >= a5(=[a1+280]) (signed).
  The `beq` branch at 0x2e18b78 targets 0x2e18874 and is always taken.
  The `beq` branch at 0x2e18bb8 targets 0x2e188b8 and is always taken.
  The `beq` branch at 0x2e18c4c targets 0x2e18828 and is always taken.
  The return at 0x2e18bfc has v0 = one of ?, ret(?).
  The return at 0x2e18c28 has v0 = ret(__glComputeSpanPixelArray).
  The instructions from 0x2e186bc to 0x2e186bc are not reached by any path from the entry, and their branches are not listed.
- `__glConv2dReadPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e18c60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e18c60-0x2e1900c (940 bytes).
  It occupies 940 bytes.
  The `ld` at 0x2e18c60 loads 8 bytes from a1 (arg1 at entry) +0x190.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e18c68, `lw` at 0x2e18ee4, `lw` at 0x2e18f2c.
  The `lw` at 0x2e18c70 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd0, including `lwc1` at 0x2e18ca4, `lwc1` at 0x2e18d8c, `lwc1` at 0x2e18e10.
  The `ld` at 0x2e18cb4 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e18cbc loads 4 bytes from [a1+552]:8 +0xc.
  The `lw` at 0x2e18cc0 loads 4 bytes from [a1+552]:8 +0x40.
  The `lw` at 0x2e18cc4 loads 4 bytes from [a1+552]:8 +0x44.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e18cdc, `lw` at 0x2e18e58, `lw` at 0x2e18ea0.
  The `lw` at 0x2e18ce4 loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `lw` at 0x2e18d0c loads 4 bytes from a0 (arg0 at entry) +0x995c.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x68, including `ld` at 0x2e18d1c, `ld` at 0x2e18d84, `ld` at 0x2e18f54.
  The `lw` at 0x2e18d88 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `sd` at 0x2e18da4 stores 8 bytes to a1 (arg1 at entry) +0x68.
  3 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd0, including `swc1` at 0x2e18db0, `swc1` at 0x2e18e30, `swc1` at 0x2e18ef0.
  The `ld` at 0x2e18dbc loads 8 bytes from [a1+552]:8 +0x50.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x110, including `sd` at 0x2e18dc4, `sd` at 0x2e18e24.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e18dec, `ld` at 0x2e18e84, `ld` at 0x2e18f10.
  The `ld` at 0x2e18e0c loads 8 bytes from a1 (arg1 at entry) +0x110.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e18e54, `sw` at 0x2e19000.
  The `ld` at 0x2e18ec0 loads 8 bytes from a1 (arg1 at entry) +0x208.
  The `jalr` at 0x2e18d7c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=[a1+104]:8.
  The `jalr` at 0x2e18e00 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18e44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18e98 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18ed0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e18f24 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e18f74 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=[a1+104]:8.
  The `jalr` at 0x2e18fac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `bne` branch at 0x2e18d14 targets 0x2e18d28, is taken when at(=[a1+280]) != v0(=[a1+284]), and falls through when at(=[a1+280]) == v0(=[a1+284]).
  The `beq` branch at 0x2e18d20 targets 0x2e18d38 and is always taken.
  The `blez` branch at 0x2e18d3c targets 0x2e18fc0, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x2e18d68 targets 0x2e18db4 and is always taken.
  The `beq` branch at 0x2e18dac targets 0x2e18fc0, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The `blez` branch at 0x2e18dc0 targets 0x2e18ee4, is taken when t0(=[[a1+552]:8+68]) <= 0 (signed), and falls through when t0(=[[a1+552]:8+68]) > 0 (signed).
  The `beq` branch at 0x2e18dd0 targets 0x2e18e34 and is always taken.
  The `beq` branch at 0x2e18e2c targets 0x2e18ee0, is taken when ra(=[[a1+552]:8+68]) == s0(?), and falls through when ra(=[[a1+552]:8+68]) != s0(?).
  The `blez` branch at 0x2e18e60 targets 0x2e18eb4, is taken when a0(=[a1+280]) <= 0 (signed), and falls through when a0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e18eac targets 0x2e18e70, is taken when s3(?) < t8(=[a1+280]) (signed), and falls through when s3(?) >= t8(=[a1+280]) (signed).
  The `bne` branch at 0x2e18eb8 targets 0x2e18de0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x2e18ed8 targets 0x2e18de0 and is always taken.
  The `bne` branch at 0x2e18eec targets 0x2e18f84, is taken when s3(?) < a0(=[a1+284]) (signed), and falls through when s3(?) >= a0(=[a1+284]) (signed).
  The `beq` branch at 0x2e18ef4 targets 0x2e18f40, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e18f38 targets 0x2e18f00, is taken when s3(?) < a0(=[a1+284]) (signed), and falls through when s3(?) >= a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e18f40 targets 0x2e18d84, is taken when a0(=[a1+284]) != s3(?), and falls through when a0(=[a1+284]) == s3(?).
  The `bne` branch at 0x2e18f5c targets 0x2e18d70, is taken when ra(=[a1+280]) != at(=[a1+284]-1), and falls through when ra(=[a1+280]) == at(=[a1+284]-1).
  The `beq` branch at 0x2e18f7c targets 0x2e18d88 and is always taken.
  The `beq` branch at 0x2e18fb8 targets 0x2e18ef4 and is always taken.
  The return at 0x2e19004 has v0 = [a0+39260].
  The instructions from 0x2e18dd8 to 0x2e18ddc are not reached by any path from the entry, and their branches are not listed.
- `__glSep2dReadPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e19010 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e19010-0x2e19620 (1552 bytes).
  It occupies 1552 bytes.
  The `ld` at 0x2e19018 loads 8 bytes from a1 (arg1 at entry) +0x190.
  The `ld` at 0x2e19024 loads 8 bytes from a0 (arg0 at entry) +0x4c0.
  The `lw` at 0x2e19044 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x228, including `ld` at 0x2e19050, `ld` at 0x2e19250.
  The `lw` at 0x2e1905c loads 4 bytes from a1 (arg1 at entry) +0xbc.
  The `lw` at 0x2e19060 loads 4 bytes from [a1+552]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0xc, including `lw` at 0x2e19064, `lw` at 0x2e19498.
  The `lw` at 0x2e1906c loads 4 bytes from [a1+552]:8 +0x44.
  2 such `ld` accesses load 8 bytes from [a1+552]:8 +0x50, including `ld` at 0x2e19084, `ld` at 0x2e19268.
  The `lw` at 0x2e19090 loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `sd` at 0x2e190a8 stores 8 bytes to a1 (arg1 at entry) +0x110.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e190cc, `lw` at 0x2e19508, `lw` at 0x2e19568.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e190d0, `lw` at 0x2e19164, `lw` at 0x2e191c8.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x68, including `ld` at 0x2e190e8, `ld` at 0x2e19414, `ld` at 0x2e195a0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e19160, `sw` at 0x2e1933c, `sw` at 0x2e195ec.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e19198, `ld` at 0x2e19218, `ld` at 0x2e1937c.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e191e8, `ld` at 0x2e193cc, `ld` at 0x2e19444.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd0, including `lwc1` at 0x2e19230, `lwc1` at 0x2e1941c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd0, including `swc1` at 0x2e1924c, `swc1` at 0x2e19440.
  The `lw` at 0x2e19418 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `sd` at 0x2e19434 stores 8 bytes to a1 (arg1 at entry) +0x68.
  The `ld` at 0x2e194cc loads 8 bytes from a1 (arg1 at entry) +0x210.
  The `jalr` at 0x2e19150 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e191bc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e191fc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e19228 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e19354 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=[a1+400]:8.
  The `jalr` at 0x2e193a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jalr` at 0x2e193e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1940c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1945c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e194e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a7=[[a1+552]:8+12].
  The `jalr` at 0x2e19560 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jalr` at 0x2e1959c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+104]:8.
  The `bne` branch at 0x2e190b4 targets 0x2e195f8, is taken when at(?) < s4(=[[a1+552]:8+68]) (signed), and falls through when at(?) >= s4(=[[a1+552]:8+68]) (signed).
  The `bne` branch at 0x2e190dc targets 0x2e190ec, is taken when a5(=[a1+280]) != a6(=[a1+284]), and falls through when a5(=[a1+280]) == a6(=[a1+284]).
  The `beq` branch at 0x2e190e4 targets 0x2e190f8 and is always taken.
  The `blez` branch at 0x2e190f8 targets 0x2e1925c, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `blez` branch at 0x2e1916c targets 0x2e191e8, is taken when v1(=[a1+280]) <= 0 (signed), and falls through when v1(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e191d8 targets 0x2e19180, is taken when a3(?) < a4(=[a1+280]) (signed), and falls through when a3(?) >= a4(=[a1+280]) (signed).
  The `bne` branch at 0x2e19248 targets 0x2e19140, is taken when s1(?) != ra(=(([[a1+552]:8+68] << 0xf) + [a0+1216]:8)), and falls through when s1(?) == ra(=(([[a1+552]:8+68] << 0xf) + [a0+1216]:8)).
  The `blez` branch at 0x2e19278 targets 0x2e195b0, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x2e192a4 targets 0x2e19444 and is always taken.
  The `beq` branch at 0x2e192c0 targets 0x2e19584, is taken when a0(=[a1+284]) == s0(?), and falls through when a0(=[a1+284]) != s0(?).
  The `blez` branch at 0x2e19364 targets 0x2e193c8, is taken when v0(=[a1+280]) <= 0 (signed), and falls through when v0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e193b8 targets 0x2e19370, is taken when s0(?) < a5(=[a1+280]) (signed), and falls through when s0(?) >= a5(=[a1+280]) (signed).
  The `beq` branch at 0x2e1943c targets 0x2e195ac, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `blez` branch at 0x2e19464 targets 0x2e19508, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e194f0 targets 0x2e19480, is taken when s0(?) != s7(?), and falls through when s0(?) == s7(?).
  The `beq` branch at 0x2e19514 targets 0x2e192b0, is taken when s0(?) >= a0(=[a1+284]) (signed), and falls through when s0(?) < a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e19574 targets 0x2e19530, is taken when s0(?) < a0(=[a1+284]) (signed), and falls through when s0(?) >= a0(=[a1+284]) (signed).
  The `beq` branch at 0x2e1957c targets 0x2e192b8 and is always taken.
  The `beq` branch at 0x2e195a4 targets 0x2e192cc and is always taken.
  The return at 0x2e195f0 has v0 = [a0+39260].
  The return at 0x2e19618 has v0 = [[a1+552]:8+68]-1.
  The instructions from 0x2e192ac to 0x2e192ac are not reached by any path from the entry, and their branches are not listed.
- `__glGetCurrentSetDefaultPixelXferState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e19620 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e19620-0x2e1988c (620 bytes).
  It occupies 620 bytes.
  The `ld` at 0x2e19634 loads 8 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x2e19654, `lw` at 0x2e19664.
  The `sw` at 0x2e19660 stores 4 bytes to ret(?) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80c, including `lw` at 0x2e19668, `lw` at 0x2e19688.
  The `sw` at 0x2e19674 stores 4 bytes to a0 (arg0 at entry) +0x808.
  The `sw` at 0x2e1967c stores 4 bytes to ret(?) +0x4.
  The `sw` at 0x2e1969c stores 4 bytes to a0 (arg0 at entry) +0x80c.
  The `lbu` at 0x2e196a8 loads 1 byte from a0 (arg0 at entry) +0x9959.
  The `sw` at 0x2e196cc stores 4 bytes to ret(?) +0x8.
  The `lwc1` at 0x2e196d0 loads 4 bytes from a0 (arg0 at entry) +0x378.
  The `swc1` at 0x2e196d4 stores 4 bytes to ret(?) +0xc.
  The `lwc1` at 0x2e196d8 loads 4 bytes from a0 (arg0 at entry) +0x37c.
  The `swc1` at 0x2e196dc stores 4 bytes to ret(?) +0x10.
  The `lwc1` at 0x2e196e0 loads 4 bytes from a0 (arg0 at entry) +0x380.
  The `swc1` at 0x2e196e4 stores 4 bytes to ret(?) +0x14.
  The `lwc1` at 0x2e196e8 loads 4 bytes from a0 (arg0 at entry) +0x384.
  The `swc1` at 0x2e196ec stores 4 bytes to ret(?) +0x18.
  The `lwc1` at 0x2e196f0 loads 4 bytes from a0 (arg0 at entry) +0x388.
  The `swc1` at 0x2e196f4 stores 4 bytes to ret(?) +0x1c.
  The `lwc1` at 0x2e196f8 loads 4 bytes from a0 (arg0 at entry) +0x38c.
  The `swc1` at 0x2e196fc stores 4 bytes to ret(?) +0x20.
  The `lwc1` at 0x2e19700 loads 4 bytes from a0 (arg0 at entry) +0x390.
  The `swc1` at 0x2e19704 stores 4 bytes to ret(?) +0x24.
  The `lwc1` at 0x2e19708 loads 4 bytes from a0 (arg0 at entry) +0x394.
  The `swc1` at 0x2e1970c stores 4 bytes to ret(?) +0x28.
  The `swc1` at 0x2e19710 stores 4 bytes to a0 (arg0 at entry) +0x378.
  The `swc1` at 0x2e19714 stores 4 bytes to a0 (arg0 at entry) +0x37c.
  The `swc1` at 0x2e19718 stores 4 bytes to a0 (arg0 at entry) +0x380.
  The `swc1` at 0x2e1971c stores 4 bytes to a0 (arg0 at entry) +0x384.
  The `swc1` at 0x2e19720 stores 4 bytes to a0 (arg0 at entry) +0x388.
  The `swc1` at 0x2e19724 stores 4 bytes to a0 (arg0 at entry) +0x38c.
  The `swc1` at 0x2e19728 stores 4 bytes to a0 (arg0 at entry) +0x390.
  The `swc1` at 0x2e1972c stores 4 bytes to a0 (arg0 at entry) +0x394.
  The `sb` at 0x2e19738 stores 1 byte to a0 (arg0 at entry) +0x9959.
  The `lw` at 0x2e1973c loads 4 bytes from a0 (arg0 at entry) +0x9950.
  The `sw` at 0x2e19750 stores 4 bytes to (ret(?) + one of 0xc, 0x2c) +0x0.
  The `ld` at 0x2e19754 loads 8 bytes from a0 (arg0 at entry) +0x94f8.
  The `lwc1` at 0x2e19788 loads 4 bytes from ?.
  10 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1979c, `swc1` at 0x2e197a8, `swc1` at 0x2e197d8.
  The `sw` at 0x2e197b0 stores 4 bytes to a0 (arg0 at entry) +0x9950.
  The `lbu` at 0x2e197b4 loads 1 byte from a0 (arg0 at entry) +0x9888.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2e197bc, `sw` at 0x2e197cc.
  The `lbu` at 0x2e197c0 loads 1 byte from a0 (arg0 at entry) +0x3a8.
  The `sb` at 0x2e197d0 stores 1 byte to a0 (arg0 at entry) +0x3a8.
  The `lwc1` at 0x2e197d4 loads 4 bytes from a0 (arg0 at entry) +0x330.
  The `lwc1` at 0x2e197dc loads 4 bytes from a0 (arg0 at entry) +0x334.
  The `lwc1` at 0x2e197e4 loads 4 bytes from a0 (arg0 at entry) +0x338.
  The `lwc1` at 0x2e197ec loads 4 bytes from a0 (arg0 at entry) +0x33c.
  The `lwc1` at 0x2e197f4 loads 4 bytes from a0 (arg0 at entry) +0x344.
  The `lwc1` at 0x2e197fc loads 4 bytes from a0 (arg0 at entry) +0x348.
  The `lwc1` at 0x2e19804 loads 4 bytes from a0 (arg0 at entry) +0x34c.
  The `lwc1` at 0x2e1980c loads 4 bytes from a0 (arg0 at entry) +0x350.
  The `swc1` at 0x2e19814 stores 4 bytes to a0 (arg0 at entry) +0x350.
  The `swc1` at 0x2e19818 stores 4 bytes to a0 (arg0 at entry) +0x34c.
  The `swc1` at 0x2e1981c stores 4 bytes to a0 (arg0 at entry) +0x348.
  The `swc1` at 0x2e19820 stores 4 bytes to a0 (arg0 at entry) +0x344.
  The `swc1` at 0x2e19824 stores 4 bytes to a0 (arg0 at entry) +0x33c.
  The `swc1` at 0x2e19828 stores 4 bytes to a0 (arg0 at entry) +0x338.
  The `swc1` at 0x2e1982c stores 4 bytes to a0 (arg0 at entry) +0x334.
  The `swc1` at 0x2e19830 stores 4 bytes to a0 (arg0 at entry) +0x330.
  The `sb` at 0x2e19834 stores 1 byte to a0 (arg0 at entry) +0x9888.
  The `sw` at 0x2e19840 stores 4 bytes to abs 0x1030.
  The `lw` at 0x2e19844 loads 4 bytes from a0 (arg0 at entry) +0x4714.
  The `sw` at 0x2e19858 stores 4 bytes to a0 (arg0 at entry) +0x4714.
  The `ld` at 0x2e19868 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0x2e1964c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x26, a2=0x4, a3=a3 at entry (arg3).
  The `jalr` at 0x2e1986c calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?, a4=0x2, a7=0x5; fp f13=0x3f800000.
  The `beq` branch at 0x2e196c8 targets 0x2e1973c, is taken when v1(=[a0+39257]:1) == 0, and falls through when v1(=[a0+39257]:1) != 0.
  The `beq` branch at 0x2e1974c targets 0x2e197b4, is taken when t9(=[a0+39248]) == a0(=0x8421), and falls through when t9(=[a0+39248]) != a0(=0x8421).
  The `bne` branch at 0x2e197a4 targets 0x2e19760, is taken when t0(=0x10) != a5(?), and falls through when t0(=0x10) == a5(?).
  The `beq` branch at 0x2e197b8 targets 0x2e19838, is taken when a0(=[a0+39048]:1) == 0, and falls through when a0(=[a0+39048]:1) != 0.
  The `beq` branch at 0x2e197c8 targets 0x2e197d4, is taken when a2(=[a0+936]:1) == 0, and falls through when a2(=[a0+936]:1) != 0.
  The `beq` branch at 0x2e19838 targets 0x2e19868, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x2e19860 has v0 = ret(?).
  The return at 0x2e19884 has v0 = 0x0.
- `__glRestoreCurrentPixelXferState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e19890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e19890-0x2e199f0 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0x2e198b0 loads 4 bytes from a0 (arg0 at entry) +0x808.
  The `lw` at 0x2e198b4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x2e198b8 loads 4 bytes from a0 (arg0 at entry) +0x80c.
  The `sw` at 0x2e198c0 stores 4 bytes to a0 (arg0 at entry) +0x808.
  The `lw` at 0x2e198c4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0x2e198cc stores 4 bytes to a0 (arg0 at entry) +0x80c.
  The `lbu` at 0x2e198d0 loads 1 byte from a1 (arg1 at entry) +0xb.
  The `sb` at 0x2e198e8 stores 1 byte to a0 (arg0 at entry) +0x9959.
  The `lwc1` at 0x2e198ec loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0x2e198f0 stores 4 bytes to a0 (arg0 at entry) +0x378.
  The `lwc1` at 0x2e198f4 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0x2e198f8 stores 4 bytes to a0 (arg0 at entry) +0x37c.
  The `lwc1` at 0x2e198fc loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `swc1` at 0x2e19900 stores 4 bytes to a0 (arg0 at entry) +0x380.
  The `lwc1` at 0x2e19904 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `swc1` at 0x2e19908 stores 4 bytes to a0 (arg0 at entry) +0x384.
  The `lwc1` at 0x2e1990c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `swc1` at 0x2e19910 stores 4 bytes to a0 (arg0 at entry) +0x388.
  The `lwc1` at 0x2e19914 loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `swc1` at 0x2e19918 stores 4 bytes to a0 (arg0 at entry) +0x38c.
  The `lwc1` at 0x2e1991c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `swc1` at 0x2e19920 stores 4 bytes to a0 (arg0 at entry) +0x390.
  The `lwc1` at 0x2e19924 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0x2e1992c stores 4 bytes to a0 (arg0 at entry) +0x394.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0xc, 0x2c) +0x0, including `lw` at 0x2e19930, `lw` at 0x2e19938.
  The `sw` at 0x2e19934 stores 4 bytes to a0 (arg0 at entry) +0x9950.
  The `ld` at 0x2e19948 loads 8 bytes from a0 (arg0 at entry) +0x94f8.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e19950, `lwc1` at 0x2e1995c, `lwc1` at 0x2e19984.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e19954, `swc1` at 0x2e1996c.
  The `lbu` at 0x2e19970 loads 1 byte from ?.
  The `sb` at 0x2e19978 stores 1 byte to a0 (arg0 at entry) +0x9888.
  The `lw` at 0x2e1997c loads 4 bytes from ?.
  The `sb` at 0x2e19980 stores 1 byte to a0 (arg0 at entry) +0x3a8.
  The `swc1` at 0x2e19988 stores 4 bytes to a0 (arg0 at entry) +0x330.
  The `swc1` at 0x2e19990 stores 4 bytes to a0 (arg0 at entry) +0x334.
  The `swc1` at 0x2e19998 stores 4 bytes to a0 (arg0 at entry) +0x338.
  The `swc1` at 0x2e199a0 stores 4 bytes to a0 (arg0 at entry) +0x33c.
  The `swc1` at 0x2e199a8 stores 4 bytes to a0 (arg0 at entry) +0x344.
  The `swc1` at 0x2e199b0 stores 4 bytes to a0 (arg0 at entry) +0x348.
  The `swc1` at 0x2e199b8 stores 4 bytes to a0 (arg0 at entry) +0x34c.
  The `swc1` at 0x2e199c0 stores 4 bytes to a0 (arg0 at entry) +0x350.
  The `sw` at 0x2e199c8 stores 4 bytes to abs 0x1030.
  The `ld` at 0x2e199cc loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e199d0 loads 4 bytes from a0 (arg0 at entry) +0x4714.
  The `sw` at 0x2e199dc stores 4 bytes to a0 (arg0 at entry) +0x4714.
  The `jalr` at 0x2e199d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=?, a6=0x10, a7=a0+65536.
  The `beq` branch at 0x2e198a8 targets 0x2e199e0, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2e198e4 targets 0x2e19930, is taken when v0(=[a1+11]:1) == 0, and falls through when v0(=[a1+11]:1) != 0.
  The `beq` branch at 0x2e1993c targets 0x2e19970, is taken when t8(=[(a1 + one of 0xc, 0x2c)]) == t9(=0x8421), and falls through when t8(=[(a1 + one of 0xc, 0x2c)]) != t9(=0x8421).
  The `bne` branch at 0x2e19968 targets 0x2e19950, is taken when a6(=0x10) != a5(?), and falls through when a6(=0x10) == a5(?).
  The `beq` branch at 0x2e19974 targets 0x2e199c4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The return at 0x2e199e8 has v0 = one of ?, ret(?).
- `__glConv2dCopyPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e199f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e199f0-0x2e1a1a8 (1976 bytes).
  It occupies 1976 bytes.
  The `lw` at 0x2e19a24 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lbu` at 0x2e19a30 loads 1 byte from a1 (arg1 at entry) +0xf0.
  The `ld` at 0x2e19a3c loads 8 bytes from a1 (arg1 at entry) +0x228.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lw` at 0x2e19a58, `lw` at 0x2e19df8, `lw` at 0x2e1a0d8.
  The `lw` at 0x2e19a60 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x2e19a64 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `ld` at 0x2e19a84 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e19aa4 loads 4 bytes from a0 (arg0 at entry) +0xfb0.
  The `lwc1` at 0x2e19ab0 loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `lw` at 0x2e19ab4 loads 4 bytes from a0 (arg0 at entry) +0xfb4.
  The `lbu` at 0x2e19abc loads 1 byte from a0 (arg0 at entry) +0x1454.
  6 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd0, including `lwc1` at 0x2e19ac8, `lwc1` at 0x2e19e2c, `lwc1` at 0x2e19e70.
  The `lw` at 0x2e19ad8 loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lw` at 0x2e19b00 loads 4 bytes from a0 (arg0 at entry) +0x590.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x590, including `sw` at 0x2e19b04, `sw` at 0x2e19b80.
  The `ld` at 0x2e19b08 loads 8 bytes from a0 (arg0 at entry) +0x588.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x588, including `sd` at 0x2e19b0c, `sd` at 0x2e19b88.
  The `ld` at 0x2e19b10 loads 8 bytes from a0 (arg0 at entry) +0x580.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x580, including `sd` at 0x2e19b14, `sd` at 0x2e19b90.
  The `ld` at 0x2e19b18 loads 8 bytes from a0 (arg0 at entry) +0x570.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x570, including `sd` at 0x2e19b1c, `sd` at 0x2e19bac.
  The `ld` at 0x2e19b20 loads 8 bytes from a0 (arg0 at entry) +0x568.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x568, including `sd` at 0x2e19b24, `sd` at 0x2e19b74.
  The `ld` at 0x2e19b28 loads 8 bytes from a0 (arg0 at entry) +0x578.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x578, including `sd` at 0x2e19b2c, `sd` at 0x2e19b9c.
  The `sw` at 0x2e19b34 stores 4 bytes to a0 (arg0 at entry) +0x578.
  The `lw` at 0x2e19b94 loads 4 bytes from a0 (arg0 at entry) +0x808.
  The `lbu` at 0x2e19bb0 loads 1 byte from a0 (arg0 at entry) +0x650.
  The `lbu` at 0x2e19bbc loads 1 byte from a0 (arg0 at entry) +0x65c.
  The `lw` at 0x2e19bd0 loads 4 bytes from a0 (arg0 at entry) +0x5d8.
  The `lbu` at 0x2e19bdc loads 1 byte from a0 (arg0 at entry) +0x5f8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x2e19be8, `ld` at 0x2e19d68.
  The `lw` at 0x2e19c3c loads 4 bytes from a0 (arg0 at entry) +0x594.
  The `lw` at 0x2e19c40 loads 4 bytes from a0 (arg0 at entry) +0x5bc.
  The `lw` at 0x2e19c44 loads 4 bytes from a0 (arg0 at entry) +0x5b8.
  The `lw` at 0x2e19c48 loads 4 bytes from a0 (arg0 at entry) +0x5b4.
  The `lw` at 0x2e19c4c loads 4 bytes from a0 (arg0 at entry) +0x5b0.
  The `lw` at 0x2e19c50 loads 4 bytes from a0 (arg0 at entry) +0x5ac.
  The `lw` at 0x2e19c54 loads 4 bytes from a0 (arg0 at entry) +0x5a8.
  The `lw` at 0x2e19c58 loads 4 bytes from a0 (arg0 at entry) +0x5a4.
  The `lw` at 0x2e19c5c loads 4 bytes from a0 (arg0 at entry) +0x5a0.
  The `lw` at 0x2e19c60 loads 4 bytes from a0 (arg0 at entry) +0x59c.
  The `lw` at 0x2e19c64 loads 4 bytes from a0 (arg0 at entry) +0x598.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5a4, including `sw` at 0x2e19c9c, `sw` at 0x2e19d3c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x598, including `sw` at 0x2e19ca0, `sw` at 0x2e19d30.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5bc, including `sw` at 0x2e19ca4, `sw` at 0x2e19d4c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5b8, including `sw` at 0x2e19ca8, `sw` at 0x2e19d50.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5b4, including `sw` at 0x2e19cac, `sw` at 0x2e19d54.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5b0, including `sw` at 0x2e19cb0, `sw` at 0x2e19d48.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5ac, including `sw` at 0x2e19cb4, `sw` at 0x2e19d44.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5a8, including `sw` at 0x2e19cb8, `sw` at 0x2e19d40.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5a0, including `sw` at 0x2e19cbc, `sw` at 0x2e19d38.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x59c, including `sw` at 0x2e19cc0, `sw` at 0x2e19d34.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x594, including `sw` at 0x2e19cc8, `sw` at 0x2e19d2c.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0x44, including `lw` at 0x2e19ccc, `lw` at 0x2e19db4.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0x40, including `lw` at 0x2e19cd8, `lw` at 0x2e19d94.
  The `lw` at 0x2e19d98 loads 4 bytes from [a1+552]:8 +0xc.
  The `sd` at 0x2e19dbc stores 8 bytes to a1 (arg1 at entry) +0x160.
  The `lwc1` at 0x2e19dd0 loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `lwc1` at 0x2e19dd4 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `lw` at 0x2e19dd8 loads 4 bytes from a0 (arg0 at entry) +0x1458.
  The `ld` at 0x2e19dfc loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `ld` at 0x2e19e08 loads 8 bytes from a1 (arg1 at entry) +0x190.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd8, including `swc1` at 0x2e19e88, `swc1` at 0x2e1a104.
  4 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd0, including `swc1` at 0x2e19e94, `swc1` at 0x2e19f28, `swc1` at 0x2e19fe8.
  The `ld` at 0x2e19ea0 loads 8 bytes from [a1+552]:8 +0x50.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x110, including `sd` at 0x2e19eac, `sd` at 0x2e19f1c.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e19ee0, `ld` at 0x2e19f74, `ld` at 0x2e1a000.
  The `ld` at 0x2e19f04 loads 8 bytes from a1 (arg1 at entry) +0x110.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e19f4c, `sw` at 0x2e1a188.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e19f50, `lw` at 0x2e19f90, `lw` at 0x2e1a070.
  The `ld` at 0x2e19fb4 loads 8 bytes from a1 (arg1 at entry) +0x208.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e19fdc, `lw` at 0x2e1a01c, `lw` at 0x2e1a05c.
  The `jalr` at 0x2e19a68 calls __glElementsPerGroup [0x2e0e120] with a0=[a1+88], a1=[a1+552]:8, a2=s8 at entry, a3=a3 at entry (arg3).
  The `jalr` at 0x2e19a94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e19b68 calls __glim_ReadPixels [0x2dfaac0] with a0=?, a1=?, a2=[a1+184], a3=[a1+188], a4=[a1+88], a5=0x1406, a6=ret(?), a7=[a0+1392]:8.
  The `jalr` at 0x2e19bf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?, a6=([a0+2056] << 0x23).
  The `bgezall` at 0x2e19c28 calls __glGetCurrentSetDefaultPixelXferState [0x2e19620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=([a0+2056] << 0x23).
  The `jalr` at 0x2e19cec calls __glim_DrawPixels [0x2dfa9a0] with a0=?, a1=?, a2=[a1+88], a3=0x1406, a4=ret(?), a5=[a0+1464], a6=a0+1428, a7=[a0+1468].
  The `bgezall` at 0x2e19d60 calls __glRestoreCurrentPixelXferState [0x2e19890] with a0=a0 at entry (arg0), a1=ret(__glGetCurrentSetDefaultPixelXferState), a2=sp-102712, a3=?.
  The `jalr` at 0x2e19d70 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?.
  The `jalr` at 0x2e19dc8 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s8 at entry, a3=a3 at entry (arg3).
  The `jalr` at 0x2e19ef8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=sp-36880.
  The `jalr` at 0x2e19f3c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e19f88 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e19fc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=sp-36880.
  The `jalr` at 0x2e1a014 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1a054 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=(sp-102416 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1a094 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36880, a3=[a1+512]:8, a5=[a1+280], a6=[a1+512]:8.
  The `jalr` at 0x2e1a0b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-102416 + (one of 0x0, 0x1 << 0xf)), a3=[a1+512]:8, a5=[a1+280].
  The `jalr` at 0x2e1a198 calls __glSetError [0x2e315d0] with a0=0x505, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e19a50 targets 0x2e19d94, is taken when at(=[a1+240]:1) == 0, and falls through when at(=[a1+240]:1) != 0.
  The `beq` branch at 0x2e19a9c targets 0x2e1a194, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2e19ad0 targets 0x2e19d80, is taken when a3(=[a0+5204]:1) == 0, and falls through when a3(=[a0+5204]:1) != 0.
  The `bgez` branch at 0x2e19ba8 targets 0x2e19bc4, is taken when v1(=([a0+2056] << 0x22)) >= 0 (signed), and falls through when v1(=([a0+2056] << 0x22)) < 0 (signed).
  The `beq` branch at 0x2e19bb4 targets 0x2e19bc8, is taken when a4(=[a0+1616]:1) == 0, and falls through when a4(=[a0+1616]:1) != 0.
  The `bne` branch at 0x2e19bc0 targets 0x2e19be8, is taken when a5(=[a0+1628]:1) != 0, and falls through when a5(=[a0+1628]:1) == 0.
  The `bgez` branch at 0x2e19bc8 targets 0x2e19c28, is taken when a6(=([a0+2056] << 0x23)) >= 0 (signed), and falls through when a6(=([a0+2056] << 0x23)) < 0 (signed).
  The `beq` branch at 0x2e19bd4 targets 0x2e19c28, is taken when a7(=[a0+1496]) == 0, and falls through when a7(=[a0+1496]) != 0.
  The `beq` branch at 0x2e19be0 targets 0x2e19c28, is taken when t0(=[a0+1528]:1) == 0, and falls through when t0(=[a0+1528]:1) != 0.
  The `beq` branch at 0x2e19d78 targets 0x2e19bfc and is always taken.
  The `beq` branch at 0x2e19d8c targets 0x2e19b00 and is always taken.
  The `blez` branch at 0x2e19e14 targets 0x2e1a140, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x2e19e5c targets 0x2e19e98 and is always taken.
  The `beq` branch at 0x2e19e90 targets 0x2e1a140, is taken when v0(?) >= t8(?) (signed), and falls through when v0(?) < t8(?) (signed).
  The `blez` branch at 0x2e19ea8 targets 0x2e19fdc, is taken when ra(=[[a1+552]:8+68]) <= 0 (signed), and falls through when ra(=[[a1+552]:8+68]) > 0 (signed).
  The `beq` branch at 0x2e19eb8 targets 0x2e19f2c and is always taken.
  The `beq` branch at 0x2e19f24 targets 0x2e19fd8, is taken when ra(=[[a1+552]:8+68]) == s0(?), and falls through when ra(=[[a1+552]:8+68]) != s0(?).
  The `blez` branch at 0x2e19f58 targets 0x2e19fa4, is taken when a0(=[a1+280]) <= 0 (signed), and falls through when a0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e19f9c targets 0x2e19f60, is taken when s3(?) < t8(=[a1+280]) (signed), and falls through when s3(?) >= t8(=[a1+280]) (signed).
  The `bne` branch at 0x2e19fa8 targets 0x2e19ed0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x2e19fd0 targets 0x2e19ed0 and is always taken.
  The `bne` branch at 0x2e19fe4 targets 0x2e1a070, is taken when v0(=[a1+284]) < s3(?) (signed), and falls through when v0(=[a1+284]) >= s3(?) (signed).
  The `bne` branch at 0x2e1a024 targets 0x2e1a070, is taken when v0(=[a1+284]) < s3(?) (signed), and falls through when v0(=[a1+284]) >= s3(?) (signed).
  The `beq` branch at 0x2e1a068 targets 0x2e1a030, is taken when v0(=[a1+284]) >= s3(?) (signed), and falls through when v0(=[a1+284]) < s3(?) (signed).
  The `bne` branch at 0x2e1a074 targets 0x2e1a0a4, is taken when a5(=[a1+280]) != v0(=[a1+284]), and falls through when a5(=[a1+280]) == v0(=[a1+284]).
  The `beq` branch at 0x2e1a09c targets 0x2e1a0bc and is always taken.
  The `bne` branch at 0x2e1a0d0 targets 0x2e19e70, is taken when a3(?) != a0(?), and falls through when a3(?) == a0(?).
  The `beq` branch at 0x2e1a0e4 targets 0x2e1a134, is taken when a4(?) >= a1(=[a1+188]) (signed), and falls through when a4(?) < a1(=[a1+188]) (signed).
  The `beq` branch at 0x2e1a0f0 targets 0x2e1a104 and is always taken.
  The `beq` branch at 0x2e1a0fc targets 0x2e19e7c, is taken when v0(?) >= a1(=[a1+188]) (signed), and falls through when v0(?) < a1(=[a1+188]) (signed).
  The `beq` branch at 0x2e1a120 targets 0x2e1a0f8, is taken when a6(?) == a0(?), and falls through when a6(?) != a0(?).
  The `beq` branch at 0x2e1a12c targets 0x2e19e78 and is always taken.
  The `beq` branch at 0x2e1a138 targets 0x2e19e78 and is always taken.
  The `beq` branch at 0x2e1a1a0 targets 0x2e19bfc and is always taken.
  The return at 0x2e19c1c has v0 = one of ret(?), ret(__glSetError).
  The return at 0x2e1a18c has v0 = one of [a0+5208], ?.
  The instructions from 0x2e19c24 to 0x2e19c24 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e19e64 to 0x2e19e6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e19ec0 to 0x2e19ecc are not reached by any path from the entry, and their branches are not listed.
- `__glSep2dCopyPixels` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1a1b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1a1b0-0x2e1aac0 (2320 bytes).
  It occupies 2320 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lw` at 0x2e1a1d0, `lw` at 0x2e1a5b0.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x228, including `ld` at 0x2e1a1d8, `ld` at 0x2e1a728.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0x44, including `lw` at 0x2e1a1e8, `lw` at 0x2e1a4b0.
  The `lw` at 0x2e1a208 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  The `lbu` at 0x2e1a21c loads 1 byte from a1 (arg1 at entry) +0xf0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1458, including `lw` at 0x2e1a228, `lw` at 0x2e1a594.
  The `lwc1` at 0x2e1a234 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  The `lw` at 0x2e1a244 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `lw` at 0x2e1a248 loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `ld` at 0x2e1a268 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e1a284 loads 4 bytes from a0 (arg0 at entry) +0xfb0.
  The `lwc1` at 0x2e1a290 loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `lw` at 0x2e1a294 loads 4 bytes from a0 (arg0 at entry) +0xfb4.
  The `lbu` at 0x2e1a29c loads 1 byte from a0 (arg0 at entry) +0x1454.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xd0, including `lwc1` at 0x2e1a2a8, `lwc1` at 0x2e1a6f0, `lwc1` at 0x2e1a930.
  The `lw` at 0x2e1a2bc loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lw` at 0x2e1a2e4 loads 4 bytes from a0 (arg0 at entry) +0x590.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x590, including `sw` at 0x2e1a2e8, `sw` at 0x2e1a364.
  The `ld` at 0x2e1a2ec loads 8 bytes from a0 (arg0 at entry) +0x588.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x588, including `sd` at 0x2e1a2f0, `sd` at 0x2e1a36c.
  The `ld` at 0x2e1a2f4 loads 8 bytes from a0 (arg0 at entry) +0x580.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x580, including `sd` at 0x2e1a2f8, `sd` at 0x2e1a374.
  The `ld` at 0x2e1a2fc loads 8 bytes from a0 (arg0 at entry) +0x570.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x570, including `sd` at 0x2e1a300, `sd` at 0x2e1a390.
  The `ld` at 0x2e1a304 loads 8 bytes from a0 (arg0 at entry) +0x568.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x568, including `sd` at 0x2e1a308, `sd` at 0x2e1a358.
  The `ld` at 0x2e1a310 loads 8 bytes from a0 (arg0 at entry) +0x578.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x578, including `sd` at 0x2e1a314, `sd` at 0x2e1a380.
  The `sw` at 0x2e1a31c stores 4 bytes to a0 (arg0 at entry) +0x578.
  The `lw` at 0x2e1a378 loads 4 bytes from a0 (arg0 at entry) +0x808.
  The `lbu` at 0x2e1a394 loads 1 byte from a0 (arg0 at entry) +0x650.
  The `lbu` at 0x2e1a3a0 loads 1 byte from a0 (arg0 at entry) +0x65c.
  The `lw` at 0x2e1a3b4 loads 4 bytes from a0 (arg0 at entry) +0x5d8.
  The `lbu` at 0x2e1a3c0 loads 1 byte from a0 (arg0 at entry) +0x5f8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x2e1a3cc, `ld` at 0x2e1a54c.
  The `lw` at 0x2e1a424 loads 4 bytes from a0 (arg0 at entry) +0x594.
  The `lw` at 0x2e1a428 loads 4 bytes from a0 (arg0 at entry) +0x5bc.
  The `lw` at 0x2e1a42c loads 4 bytes from a0 (arg0 at entry) +0x5b8.
  The `lw` at 0x2e1a430 loads 4 bytes from a0 (arg0 at entry) +0x5b4.
  The `lw` at 0x2e1a434 loads 4 bytes from a0 (arg0 at entry) +0x5b0.
  The `lw` at 0x2e1a438 loads 4 bytes from a0 (arg0 at entry) +0x5ac.
  The `lw` at 0x2e1a43c loads 4 bytes from a0 (arg0 at entry) +0x5a8.
  The `lw` at 0x2e1a440 loads 4 bytes from a0 (arg0 at entry) +0x5a4.
  The `lw` at 0x2e1a444 loads 4 bytes from a0 (arg0 at entry) +0x5a0.
  The `lw` at 0x2e1a448 loads 4 bytes from a0 (arg0 at entry) +0x59c.
  The `lw` at 0x2e1a44c loads 4 bytes from a0 (arg0 at entry) +0x598.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5a4, including `sw` at 0x2e1a484, `sw` at 0x2e1a520.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x598, including `sw` at 0x2e1a488, `sw` at 0x2e1a514.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5bc, including `sw` at 0x2e1a48c, `sw` at 0x2e1a530.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5b8, including `sw` at 0x2e1a490, `sw` at 0x2e1a534.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5b4, including `sw` at 0x2e1a494, `sw` at 0x2e1a538.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5b0, including `sw` at 0x2e1a498, `sw` at 0x2e1a52c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5ac, including `sw` at 0x2e1a49c, `sw` at 0x2e1a528.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5a8, including `sw` at 0x2e1a4a0, `sw` at 0x2e1a524.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5a0, including `sw` at 0x2e1a4a4, `sw` at 0x2e1a51c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x59c, including `sw` at 0x2e1a4a8, `sw` at 0x2e1a518.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x594, including `sw` at 0x2e1a4ac, `sw` at 0x2e1a510.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0x40, including `lw` at 0x2e1a4b8, `lw` at 0x2e1a564.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0xc, including `lw` at 0x2e1a568, `lw` at 0x2e1a9a8.
  The `ld` at 0x2e1a578 loads 8 bytes from a0 (arg0 at entry) +0x4c0.
  The `sd` at 0x2e1a580 stores 8 bytes to a1 (arg1 at entry) +0x160.
  2 such `ld` accesses load 8 bytes from [a1+552]:8 +0x50, including `ld` at 0x2e1a5a0, `ld` at 0x2e1a730.
  The `ld` at 0x2e1a5a4 loads 8 bytes from a1 (arg1 at entry) +0x190.
  The `ld` at 0x2e1a5a8 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `sd` at 0x2e1a5b8 stores 8 bytes to a1 (arg1 at entry) +0x110.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e1a630, `sw` at 0x2e1a860, `sw` at 0x2e1aa74.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e1a634, `lw` at 0x2e1a688, `lw` at 0x2e1a878.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e1a660, `ld` at 0x2e1a6d8, `ld` at 0x2e1a790.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e1a6a8, `ld` at 0x2e1a8e4, `ld` at 0x2e1a954.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0xd0, including `swc1` at 0x2e1a70c, `swc1` at 0x2e1a950.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e1a7b4, `lw` at 0x2e1aa18.
  The `lwc1` at 0x2e1a92c loads 4 bytes from a1 (arg1 at entry) +0xd8.
  The `swc1` at 0x2e1a948 stores 4 bytes to a1 (arg1 at entry) +0xd8.
  The `ld` at 0x2e1a9dc loads 8 bytes from a1 (arg1 at entry) +0x210.
  The `jalr` at 0x2e1a24c calls __glElementsPerGroup [0x2e0e120] with a0=[a1+88], a1=a1 at entry (arg1), a2=s8 at entry, a3=[a1+240]:1.
  The `jalr` at 0x2e1a274 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e1a34c calls __glim_ReadPixels [0x2dfaac0] with a0=?, a1=?, a2=[a1+184], a3=[a1+188], a4=[a1+88], a5=0x1406, a6=ret(?), a7=[a0+1392]:8.
  The `jalr` at 0x2e1a3d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?, a5=([a0+2056] << 0x23).
  The `bgezall` at 0x2e1a40c calls __glGetCurrentSetDefaultPixelXferState [0x2e19620] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=([a0+2056] << 0x23).
  The `jalr` at 0x2e1a4d0 calls __glim_DrawPixels [0x2dfa9a0] with a0=?, a1=?, a2=[a1+88], a3=0x1406, a4=ret(?), a5=[a0+1464], a6=[a0+1468].
  The `bgezall` at 0x2e1a544 calls __glRestoreCurrentPixelXferState [0x2e19890] with a0=a0 at entry (arg0), a1=ret(__glGetCurrentSetDefaultPixelXferState), a2=ret(__glGetCurrentSetDefaultPixelXferState), a3=sp-70000.
  The `jalr` at 0x2e1a554 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?.
  The `jalr` at 0x2e1a588 calls __glComputeSpanPixelArray [0x2e06590] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[[a1+552]:8+12], a4=[[a1+552]:8+64].
  The `jalr` at 0x2e1a620 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1a67c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jalr` at 0x2e1a6bc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1a6e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1a7ac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a4=one of 0x0, 0x1.
  The `jalr` at 0x2e1a7e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a6=[a1+512]:8.
  The `jalr` at 0x2e1a870 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a7=[a1+400]:8.
  The `jalr` at 0x2e1a8c0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-69648 + (one of 0x0, 0x1 << 0xf)), a3=(sp-69648 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1a900 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1a924 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1a96c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1a9f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a7=[[a1+552]:8+12].
  The `jalr` at 0x2e1aab0 calls __glSetError [0x2e315d0] with a0=0x505, a1=?, a2=?, a3=?.
  The `bne` branch at 0x2e1a214 targets 0x2e1a3e0, is taken when s1(=[a1+188]) < s5(=[[a1+552]:8+68]) (signed), and falls through when s1(=[a1+188]) >= s5(=[[a1+552]:8+68]) (signed).
  The `bne` branch at 0x2e1a220 targets 0x2e1a240, is taken when a3(=[a1+240]:1) != 0, and falls through when a3(=[a1+240]:1) == 0.
  The `bc1t` branch at 0x2e1a23c targets 0x2e1a564, is taken when f0 == f1(=[a1+180]) (c.eq.s at 0x2e1a238), and falls through when not (f0 == f1(=[a1+180]) (c.eq.s at 0x2e1a238)).
  The `beq` branch at 0x2e1a27c targets 0x2e1aab0, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2e1a2b4 targets 0x2e1aa80, is taken when a3(=[a0+5204]:1) == 0, and falls through when a3(=[a0+5204]:1) != 0.
  The `bgez` branch at 0x2e1a38c targets 0x2e1a3a8, is taken when v0(=([a0+2056] << 0x22)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x22)) < 0 (signed).
  The `beq` branch at 0x2e1a398 targets 0x2e1a3ac, is taken when a3(=[a0+1616]:1) == 0, and falls through when a3(=[a0+1616]:1) != 0.
  The `bne` branch at 0x2e1a3a4 targets 0x2e1a3cc, is taken when a4(=[a0+1628]:1) != 0, and falls through when a4(=[a0+1628]:1) == 0.
  The `bgez` branch at 0x2e1a3ac targets 0x2e1a40c, is taken when a5(=([a0+2056] << 0x23)) >= 0 (signed), and falls through when a5(=([a0+2056] << 0x23)) < 0 (signed).
  The `beq` branch at 0x2e1a3b8 targets 0x2e1a40c, is taken when a6(=[a0+1496]) == 0, and falls through when a6(=[a0+1496]) != 0.
  The `beq` branch at 0x2e1a3c4 targets 0x2e1a40c, is taken when a7(=[a0+1528]:1) == 0, and falls through when a7(=[a0+1528]:1) != 0.
  The `beq` branch at 0x2e1a55c targets 0x2e1a3e0 and is always taken.
  The `blez` branch at 0x2e1a5c4 targets 0x2e1aa94, is taken when s5(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s5(=[[a1+552]:8+68]) > 0 (signed).
  The `blez` branch at 0x2e1a63c targets 0x2e1a6a8, is taken when v0(=[a1+280]) <= 0 (signed), and falls through when v0(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e1a698 targets 0x2e1a650, is taken when a5(?) < a6(=[a1+280]) (signed), and falls through when a5(?) >= a6(=[a1+280]) (signed).
  The `bne` branch at 0x2e1a708 targets 0x2e1a610, is taken when s1(?) != ra(=(([[a1+552]:8+68] << 0xf) + [a0+1216]:8)), and falls through when s1(?) == ra(=(([[a1+552]:8+68] << 0xf) + [a0+1216]:8)).
  The `blez` branch at 0x2e1a738 targets 0x2e1aa40, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x2e1a774 targets 0x2e1a954 and is always taken.
  The `beq` branch at 0x2e1a7c0 targets 0x2e1a780, is taken when a5(=[a1+284]) >= s0(?) (signed), and falls through when a5(=[a1+284]) < s0(?) (signed).
  The `blez` branch at 0x2e1a880 targets 0x2e1a8e4, is taken when a1(=[a1+280]) <= 0 (signed), and falls through when a1(=[a1+280]) > 0 (signed).
  The `bne` branch at 0x2e1a8d4 targets 0x2e1a890, is taken when s0(?) < a3(=[a1+280]) (signed), and falls through when s0(?) >= a3(=[a1+280]) (signed).
  The `beq` branch at 0x2e1a94c targets 0x2e1aa34, is taken when ra(?) == s1(?), and falls through when ra(?) != s1(?).
  The `blez` branch at 0x2e1a974 targets 0x2e1aa18, is taken when s5(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s5(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e1aa00 targets 0x2e1a990, is taken when s0(?) != s7(?), and falls through when s0(?) == s7(?).
  The `bne` branch at 0x2e1aa24 targets 0x2e1a7d0, is taken when t8(=[a1+284]) < s0(?) (signed), and falls through when t8(=[a1+284]) >= s0(?) (signed).
  The `beq` branch at 0x2e1aa2c targets 0x2e1a780 and is always taken.
  The `beq` branch at 0x2e1aa8c targets 0x2e1a2e4 and is always taken.
  The `beq` branch at 0x2e1aaa8 targets 0x2e1a724 and is always taken.
  The `beq` branch at 0x2e1aab8 targets 0x2e1a3e0 and is always taken.
  The return at 0x2e1a400 has v0 = one of ?, ret(?), ret(__glSetError).
  The return at 0x2e1aa78 has v0 = one of ?, ret(?).
  The instructions from 0x2e1a408 to 0x2e1a408 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e1a77c to 0x2e1a77c are not reached by any path from the entry, and their branches are not listed.
- `__glConv2dCopyImage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1aac0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1aac0-0x2e1aecc (1036 bytes).
  It occupies 1036 bytes.
  The `ld` at 0x2e1aac0 loads 8 bytes from a1 (arg1 at entry) +0x198.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e1aac8, `lw` at 0x2e1adb4, `lw` at 0x2e1adfc.
  The `lw` at 0x2e1aad0 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  The `ld` at 0x2e1aaf8 loads 8 bytes from a1 (arg1 at entry) +0x228.
  The `lw` at 0x2e1ab00 loads 4 bytes from [a1+552]:8 +0xc.
  The `lw` at 0x2e1ab04 loads 4 bytes from [a1+552]:8 +0x40.
  The `lw` at 0x2e1ab08 loads 4 bytes from [a1+552]:8 +0x44.
  5 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e1ab18, `ld` at 0x2e1ac60, `ld` at 0x2e1ac70.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e1ab2c, `lw` at 0x2e1aca4, `lw` at 0x2e1ace4.
  The `lw` at 0x2e1ab54 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x68, including `ld` at 0x2e1ab64, `ld` at 0x2e1ac00, `ld` at 0x2e1ae24.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e1abd8, `ld` at 0x2e1ad0c, `ld` at 0x2e1ad54.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x2e1abfc, `lw` at 0x2e1ac74.
  The `lw` at 0x2e1ac08 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `sd` at 0x2e1ac18 stores 8 bytes to a1 (arg1 at entry) +0x68.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x2e1ac24, `sd` at 0x2e1ac98.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e1ac28, `sw` at 0x2e1acd4.
  The `ld` at 0x2e1ac3c loads 8 bytes from [a1+552]:8 +0x50.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x110, including `sd` at 0x2e1ac44, `sd` at 0x2e1aca0.
  The `ld` at 0x2e1ac7c loads 8 bytes from a1 (arg1 at entry) +0x110.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e1ad74, `ld` at 0x2e1ad94.
  The `jalr` at 0x2e1abe8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=[a1+104]:8, a5=[a1+280], a6=[a1+284]-1.
  The `jalr` at 0x2e1ac68 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a4=[a1+408]:8.
  The `jalr` at 0x2e1acdc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?.
  The `jalr` at 0x2e1ad20 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1ad64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1ad84 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1ada4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a4=[a1+408]:8.
  The `jalr` at 0x2e1adf4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(sp-98320 + (one of 0x0, 0x1 << 0xf)), a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `jalr` at 0x2e1ae48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=[a1+104]:8, a5=[a1+280], a6=[a1+284]-1.
  The `jalr` at 0x2e1ae80 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32784, a3=(sp-98320 + (one of 0x0, 0x1 << 0xf)).
  The `bne` branch at 0x2e1ab5c targets 0x2e1ab70, is taken when at(=[a1+280]) != v0(=[a1+284]), and falls through when at(=[a1+280]) == v0(=[a1+284]).
  The `beq` branch at 0x2e1ab68 targets 0x2e1ab80 and is always taken.
  The `blez` branch at 0x2e1ab90 targets 0x2e1ae94, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x2e1abc0 targets 0x2e1ac34 and is always taken.
  The `beq` branch at 0x2e1ac2c targets 0x2e1ae94, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `blez` branch at 0x2e1ac40 targets 0x2e1adb4, is taken when a1(=[[a1+552]:8+68]) <= 0 (signed), and falls through when a1(=[[a1+552]:8+68]) > 0 (signed).
  The `beq` branch at 0x2e1ac48 targets 0x2e1aca4 and is always taken.
  The `beq` branch at 0x2e1ac50 targets 0x2e1ad94, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e1ac9c targets 0x2e1adb4, is taken when a6(=[[a1+552]:8+68]) == a7(?), and falls through when a6(=[[a1+552]:8+68]) != a7(?).
  The `beq` branch at 0x2e1acac targets 0x2e1ac50, is taken when t2(=[a1+280]) == 0, and falls through when t2(=[a1+280]) != 0.
  The `bne` branch at 0x2e1acf0 targets 0x2e1ad3c, is taken when ra(=[a1+280]) < 0x2 (signed), and falls through when ra(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e1ad34 targets 0x2e1acf8, is taken when s3(?) < t8(=[a1+280]) (signed), and falls through when s3(?) >= t8(=[a1+280]) (signed).
  The `beq` branch at 0x2e1ad40 targets 0x2e1ad74, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2e1ad6c targets 0x2e1ac70 and is always taken.
  The `beq` branch at 0x2e1ad8c targets 0x2e1ad4c and is always taken.
  The `beq` branch at 0x2e1adac targets 0x2e1ac58 and is always taken.
  The `bne` branch at 0x2e1adbc targets 0x2e1ae58, is taken when s3(?) < a0(=[a1+284]) (signed), and falls through when s3(?) >= a0(=[a1+284]) (signed).
  The `beq` branch at 0x2e1adc4 targets 0x2e1ae10, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e1ae08 targets 0x2e1add0, is taken when s3(?) < a0(=[a1+284]) (signed), and falls through when s3(?) >= a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e1ae10 targets 0x2e1abf0, is taken when a0(=[a1+284]) != s3(?), and falls through when a0(=[a1+284]) == s3(?).
  The `bne` branch at 0x2e1ae20 targets 0x2e1abd0, is taken when a5(=[a1+280]) != a6(=[a1+284]-1), and falls through when a5(=[a1+280]) == a6(=[a1+284]-1).
  The `beq` branch at 0x2e1ae50 targets 0x2e1abf4 and is always taken.
  The `beq` branch at 0x2e1ae8c targets 0x2e1adc4 and is always taken.
  The return at 0x2e1aec4 has v0 = one of [a1+284], ?.
  The instructions from 0x2e1abc8 to 0x2e1abcc are not reached by any path from the entry, and their branches are not listed.
- `__glSep2dCopyImage` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1aed0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1aed0-0x2e1b51c (1612 bytes).
  It occupies 1612 bytes.
  The `ld` at 0x2e1aed8 loads 8 bytes from a1 (arg1 at entry) +0x198.
  The `ld` at 0x2e1aef0 loads 8 bytes from a0 (arg0 at entry) +0x4c0.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x228, including `ld` at 0x2e1af10, `ld` at 0x2e1b160.
  The `lw` at 0x2e1af18 loads 4 bytes from a1 (arg1 at entry) +0xbc.
  The `lw` at 0x2e1af1c loads 4 bytes from [a1+552]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a1+552]:8 +0xc, including `lw` at 0x2e1af20, `lw` at 0x2e1b398.
  The `lw` at 0x2e1af28 loads 4 bytes from [a1+552]:8 +0x44.
  The `lw` at 0x2e1af38 loads 4 bytes from a0 (arg0 at entry) +0x995c.
  2 such `ld` accesses load 8 bytes from [a1+552]:8 +0x50, including `ld` at 0x2e1af48, `ld` at 0x2e1b178.
  The `sd` at 0x2e1af60 stores 8 bytes to a1 (arg1 at entry) +0x110.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x11c, including `lw` at 0x2e1af80, `lw` at 0x2e1b408, `lw` at 0x2e1b468.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x118, including `lw` at 0x2e1af84, `lw` at 0x2e1b018, `lw` at 0x2e1b078.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x68, including `ld` at 0x2e1af9c, `ld` at 0x2e1b310, `ld` at 0x2e1b4a0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x995c, including `sw` at 0x2e1aff8, `sw` at 0x2e1b248, `sw` at 0x2e1b4e8.
  7 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x10, including `ld` at 0x2e1b000, `ld` at 0x2e1b0e0, `ld` at 0x2e1b12c.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e1b048, `ld` at 0x2e1b0c8, `ld` at 0x2e1b29c.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x208, including `ld` at 0x2e1b098, `ld` at 0x2e1b11c, `ld` at 0x2e1b340.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x2e1b0e4, `lw` at 0x2e1b318.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x2e1b104, `sd` at 0x2e1b33c.
  The `lw` at 0x2e1b31c loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `sd` at 0x2e1b334 stores 8 bytes to a1 (arg1 at entry) +0x68.
  The `ld` at 0x2e1b3cc loads 8 bytes from a1 (arg1 at entry) +0x210.
  The `jalr` at 0x2e1b010 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?.
  The `jalr` at 0x2e1b06c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1b0ac calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1b0d8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1b134 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a4=0x1.
  The `jalr` at 0x2e1b150 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a5=[a1+408]:8.
  The `jalr` at 0x2e1b268 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a1+16]:8, a3=?, a5=[a1+408]:8.
  The `jalr` at 0x2e1b2c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jalr` at 0x2e1b308 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1b358 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e1b3e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a7=[[a1+552]:8+12].
  The `jalr` at 0x2e1b460 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jalr` at 0x2e1b49c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+104]:8.
  The `bne` branch at 0x2e1af70 targets 0x2e1b4f4, is taken when at(?) < s4(=[[a1+552]:8+68]) (signed), and falls through when at(?) >= s4(=[[a1+552]:8+68]) (signed).
  The `bne` branch at 0x2e1af90 targets 0x2e1afa0, is taken when a5(=[a1+280]) != a6(=[a1+284]), and falls through when a5(=[a1+280]) == a6(=[a1+284]).
  The `beq` branch at 0x2e1af98 targets 0x2e1afac and is always taken.
  The `blez` branch at 0x2e1afac targets 0x2e1b170, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `beq` branch at 0x2e1afd0 targets 0x2e1b110 and is always taken.
  The `bne` branch at 0x2e1b028 targets 0x2e1b098, is taken when ra(=[a1+280]) < 0x2 (signed), and falls through when ra(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e1b088 targets 0x2e1b030, is taken when a3(?) < a4(=[a1+280]) (signed), and falls through when a3(?) >= a4(=[a1+280]) (signed).
  The `beq` branch at 0x2e1b100 targets 0x2e1b160, is taken when at(?) == v0(=(([[a1+552]:8+68] << 0xf) + [a0+1216]:8)), and falls through when at(?) != v0(=(([[a1+552]:8+68] << 0xf) + [a0+1216]:8)).
  The `bne` branch at 0x2e1b114 targets 0x2e1afe0, is taken when a0(=[a1+280]) != 0, and falls through when a0(=[a1+280]) == 0.
  The `beq` branch at 0x2e1b158 targets 0x2e1b0e4 and is always taken.
  The `blez` branch at 0x2e1b188 targets 0x2e1b4b0, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x2e1b1b0 targets 0x2e1b340 and is always taken.
  The `beq` branch at 0x2e1b1d0 targets 0x2e1b484, is taken when a0(=[a1+284]) == s0(?), and falls through when a0(=[a1+284]) != s0(?).
  The `bne` branch at 0x2e1b280 targets 0x2e1b2e4, is taken when v0(=[a1+280]) < 0x2 (signed), and falls through when v0(=[a1+280]) >= 0x2 (signed).
  The `bne` branch at 0x2e1b2d8 targets 0x2e1b290, is taken when s0(?) < a5(=[a1+280]) (signed), and falls through when s0(?) >= a5(=[a1+280]) (signed).
  The `beq` branch at 0x2e1b338 targets 0x2e1b4ac, is taken when at(?) == s1(?), and falls through when at(?) != s1(?).
  The `blez` branch at 0x2e1b360 targets 0x2e1b408, is taken when s4(=[[a1+552]:8+68]) <= 0 (signed), and falls through when s4(=[[a1+552]:8+68]) > 0 (signed).
  The `bne` branch at 0x2e1b3f0 targets 0x2e1b380, is taken when s0(?) != s7(?), and falls through when s0(?) == s7(?).
  The `beq` branch at 0x2e1b414 targets 0x2e1b1c0, is taken when s0(?) >= a0(=[a1+284]) (signed), and falls through when s0(?) < a0(=[a1+284]) (signed).
  The `bne` branch at 0x2e1b474 targets 0x2e1b430, is taken when s0(?) < a0(=[a1+284]) (signed), and falls through when s0(?) >= a0(=[a1+284]) (signed).
  The `beq` branch at 0x2e1b47c targets 0x2e1b1c8 and is always taken.
  The `beq` branch at 0x2e1b4a4 targets 0x2e1b1dc and is always taken.
  The return at 0x2e1b4ec has v0 = [a0+39260].
  The return at 0x2e1b514 has v0 = [[a1+552]:8+68]-1.
  The instructions from 0x2e1afd8 to 0x2e1afdc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e1b1b8 to 0x2e1b1bc are not reached by any path from the entry, and their branches are not listed.
- `__glFClamp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1b520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1b520-0x2e1b54c (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x2e1b528 loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x2e1b534 loads 4 bytes from [0x1020]:8 +0xf2c.
  The `bc1t` branch at 0x2e1b52c targets 0x2e1b544, is taken when f12 < f5 (c.lt.s at 0x2e1b524), and falls through when not (f12 < f5 (c.lt.s at 0x2e1b524)).
  The return at 0x2e1b53c has v0 = ?.
  The return at 0x2e1b544 has v0 = ?.
- `__glGenMatrixSignature` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1d2e0-0x2e1d408 (296 bytes).
  It occupies 296 bytes.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x9958, including `sb` at 0x2e1d2ec, `sb` at 0x2e1d3dc, `sb` at 0x2e1d3fc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9950, including `sw` at 0x2e1d2f8, `sw` at 0x2e1d374, `sw` at 0x2e1d3d8.
  The `sw` at 0x2e1d304 stores 4 bytes to abs 0x1030.
  The `lw` at 0x2e1d310 loads 4 bytes from a0 (arg0 at entry) +0x4714.
  The `sw` at 0x2e1d328 stores 4 bytes to a0 (arg0 at entry) +0x4714.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e1d334, `sb` at 0x2e1d340, `sb` at 0x2e1d360.
  The `lw` at 0x2e1d344 loads 4 bytes from ?.
  The `lw` at 0x2e1d36c loads 4 bytes from a0 (arg0 at entry) +0x9950.
  The `beq` branch at 0x2e1d348 targets 0x2e1d378, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2e1d350 targets 0x2e1d3d4, is taken when a7(=0x3f800000) != a4(?), and falls through when a7(=0x3f800000) == a4(?).
  The `beq` branch at 0x2e1d358 targets 0x2e1d3e8, is taken when t1(=one of 0x0, 0x1) == 0, and falls through when t1(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2e1d37c targets 0x2e1d344, is taken when a3(?) != ra(=0x4), and falls through when a3(?) == ra(=0x4).
  The `bne` branch at 0x2e1d394 targets 0x2e1d330, is taken when t2(?) != ra(=0x4), and falls through when t2(?) == ra(=0x4).
  The `beq` branch at 0x2e1d3a0 targets 0x2e1d3f8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2e1d3ac targets 0x2e1d3f8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2e1d3b8 targets 0x2e1d3f8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e1d3c4 targets 0x2e1d3f8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2e1d3cc targets 0x2e1d3f8 and is always taken.
  The `beq` branch at 0x2e1d3ec targets 0x2e1d368 and is always taken.
  The return at 0x2e1d3e0 has v0 = ?.
  The return at 0x2e1d400 has v0 = ?.
  The instructions from 0x2e1d3f4 to 0x2e1d3f4 are not reached by any path from the entry, and their branches are not listed.
- `__glSpanColorMatrixSwizzleRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d410 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1d410-0x2e1d564 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x2e1d414 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lb` at 0x2e1d41c loads 1 byte from a0 (arg0 at entry) +0x9955.
  The `lb` at 0x2e1d424 loads 1 byte from a0 (arg0 at entry) +0x9957.
  The `lb` at 0x2e1d42c loads 1 byte from a0 (arg0 at entry) +0x9956.
  The `lb` at 0x2e1d434 loads 1 byte from a0 (arg0 at entry) +0x9954.
  20 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e1d46c, `lwc1` at 0x2e1d474, `lwc1` at 0x2e1d47c.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1d470, `swc1` at 0x2e1d478, `swc1` at 0x2e1d488.
  The `blez` branch at 0x2e1d438 targets 0x2e1d55c, is taken when a6(=[a1+200]) <= 0 (signed), and falls through when a6(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d464 targets 0x2e1d4ac, is taken when (t9(?) & 0x3) == 0, and falls through when (t9(?) & 0x3) != 0.
  The `bne` branch at 0x2e1d4a4 targets 0x2e1d46c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e1d4b0 targets 0x2e1d55c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bgtz` branch at 0x2e1d554 targets 0x2e1d4c0, is taken when a6(?) > 0 (signed), and falls through when a6(?) <= 0 (signed).
  The return at 0x2e1d55c has v0 = ?.
- `__glSpanColorMatrixSwizzWithDropRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1d570-0x2e1d778 (520 bytes).
  It occupies 520 bytes.
  The `lb` at 0x2e1d578 loads 1 byte from a0 (arg0 at entry) +0x9955.
  The `lw` at 0x2e1d57c loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lb` at 0x2e1d580 loads 1 byte from a0 (arg0 at entry) +0x9957.
  The `lb` at 0x2e1d58c loads 1 byte from a0 (arg0 at entry) +0x9956.
  The `lb` at 0x2e1d594 loads 1 byte from a0 (arg0 at entry) +0x9954.
  The `lwc1` at 0x2e1d5d8 loads 4 bytes from (([a0+39252]:1 << 0x2) + a2) +0x0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x2e1d5e0, `swc1` at 0x2e1d750.
  The `lwc1` at 0x2e1d5e4 loads 4 bytes from (([a0+39253]:1 << 0x2) + a2) +0x0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x2e1d5f0, `swc1` at 0x2e1d754.
  The `lwc1` at 0x2e1d5f4 loads 4 bytes from (([a0+39254]:1 << 0x2) + a2) +0x0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0x2e1d600, `swc1` at 0x2e1d760.
  The `lwc1` at 0x2e1d604 loads 4 bytes from (([a0+39255]:1 << 0x2) + a2) +0x0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0xc, including `swc1` at 0x2e1d60c, `swc1` at 0x2e1d774.
  16 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1d648, `swc1` at 0x2e1d64c, `swc1` at 0x2e1d658.
  8 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e1d6a0, `lwc1` at 0x2e1d6d0, `lwc1` at 0x2e1d6dc.
  The `blez` branch at 0x2e1d598 targets 0x2e1d62c, is taken when t8(=[a1+200]) <= 0 (signed), and falls through when t8(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d5c8 targets 0x2e1d620, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `bltz` branch at 0x2e1d5d0 targets 0x2e1d748, is taken when t3(=[a0+39252]:1) < 0 (signed), and falls through when t3(=[a0+39252]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d5dc targets 0x2e1d754, is taken when t0(=[a0+39253]:1) < 0 (signed), and falls through when t0(=[a0+39253]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d5ec targets 0x2e1d760, is taken when t2(=[a0+39254]:1) < 0 (signed), and falls through when t2(=[a0+39254]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d5fc targets 0x2e1d76c, is taken when t1(=[a0+39255]:1) < 0 (signed), and falls through when t1(=[a0+39255]:1) >= 0 (signed).
  The `bne` branch at 0x2e1d624 targets 0x2e1d6c8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bgez` branch at 0x2e1d644 targets 0x2e1d6dc, is taken when t0(=[a0+39253]:1) >= 0 (signed), and falls through when t0(=[a0+39253]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d650 targets 0x2e1d6ec, is taken when t2(=[a0+39254]:1) >= 0 (signed), and falls through when t2(=[a0+39254]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d65c targets 0x2e1d6fc, is taken when t1(=[a0+39255]:1) >= 0 (signed), and falls through when t1(=[a0+39255]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d668 targets 0x2e1d70c, is taken when t3(=[a0+39252]:1) >= 0 (signed), and falls through when t3(=[a0+39252]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d674 targets 0x2e1d71c, is taken when t0(=[a0+39253]:1) >= 0 (signed), and falls through when t0(=[a0+39253]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d680 targets 0x2e1d72c, is taken when t2(=[a0+39254]:1) >= 0 (signed), and falls through when t2(=[a0+39254]:1) < 0 (signed).
  The `bltz` branch at 0x2e1d68c targets 0x2e1d73c, is taken when t1(=[a0+39255]:1) < 0 (signed), and falls through when t1(=[a0+39255]:1) >= 0 (signed).
  The `blez` branch at 0x2e1d6bc targets 0x2e1d62c, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `bltz` branch at 0x2e1d6c8 targets 0x2e1d640, is taken when t3(=[a0+39252]:1) < 0 (signed), and falls through when t3(=[a0+39252]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d6d4 targets 0x2e1d64c, is taken when t0(=[a0+39253]:1) < 0 (signed), and falls through when t0(=[a0+39253]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d6e4 targets 0x2e1d658, is taken when t2(=[a0+39254]:1) < 0 (signed), and falls through when t2(=[a0+39254]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d6f4 targets 0x2e1d664, is taken when t1(=[a0+39255]:1) < 0 (signed), and falls through when t1(=[a0+39255]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d704 targets 0x2e1d670, is taken when t3(=[a0+39252]:1) < 0 (signed), and falls through when t3(=[a0+39252]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d714 targets 0x2e1d67c, is taken when t0(=[a0+39253]:1) < 0 (signed), and falls through when t0(=[a0+39253]:1) >= 0 (signed).
  The `bltz` branch at 0x2e1d724 targets 0x2e1d688, is taken when t2(=[a0+39254]:1) < 0 (signed), and falls through when t2(=[a0+39254]:1) >= 0 (signed).
  The `bgez` branch at 0x2e1d734 targets 0x2e1d6a0, is taken when t1(=[a0+39255]:1) >= 0 (signed), and falls through when t1(=[a0+39255]:1) < 0 (signed).
  The `beq` branch at 0x2e1d740 targets 0x2e1d6ac and is always taken.
  The `bgez` branch at 0x2e1d74c targets 0x2e1d5e4, is taken when t0(=[a0+39253]:1) >= 0 (signed), and falls through when t0(=[a0+39253]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d758 targets 0x2e1d5f4, is taken when t2(=[a0+39254]:1) >= 0 (signed), and falls through when t2(=[a0+39254]:1) < 0 (signed).
  The `bgez` branch at 0x2e1d764 targets 0x2e1d604, is taken when t1(=[a0+39255]:1) >= 0 (signed), and falls through when t1(=[a0+39255]:1) < 0 (signed).
  The `beq` branch at 0x2e1d770 targets 0x2e1d610 and is always taken.
  The return at 0x2e1d62c has v0 = ?.
  The instructions from 0x2e1d634 to 0x2e1d63c are not reached by any path from the entry, and their branches are not listed.
- `__glSpanColorMatrixGeneralRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1d780-0x2e1d958 (472 bytes).
  It occupies 472 bytes.
  The `ld` at 0x2e1d788 loads 8 bytes from a0 (arg0 at entry) +0x94f8.
  The `lw` at 0x2e1d78c loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e1d790 loads 4 bytes from [a0+38136]:8 +0x3c.
  The `lwc1` at 0x2e1d794 loads 4 bytes from [a0+38136]:8 +0x38.
  The `lwc1` at 0x2e1d798 loads 4 bytes from [a0+38136]:8 +0x34.
  The `lwc1` at 0x2e1d79c loads 4 bytes from [a0+38136]:8 +0x30.
  The `lwc1` at 0x2e1d7a0 loads 4 bytes from [a0+38136]:8 +0x2c.
  The `lwc1` at 0x2e1d7a4 loads 4 bytes from [a0+38136]:8 +0x28.
  The `lwc1` at 0x2e1d7a8 loads 4 bytes from [a0+38136]:8 +0x24.
  The `lwc1` at 0x2e1d7ac loads 4 bytes from [a0+38136]:8 +0x20.
  The `lwc1` at 0x2e1d7b0 loads 4 bytes from [a0+38136]:8 +0x1c.
  The `lwc1` at 0x2e1d7b4 loads 4 bytes from [a0+38136]:8 +0x18.
  The `lwc1` at 0x2e1d7b8 loads 4 bytes from [a0+38136]:8 +0x14.
  The `lwc1` at 0x2e1d7bc loads 4 bytes from [a0+38136]:8 +0x10.
  The `lwc1` at 0x2e1d7c0 loads 4 bytes from [a0+38136]:8 +0xc.
  The `lwc1` at 0x2e1d7c4 loads 4 bytes from [a0+38136]:8 +0x8.
  The `lwc1` at 0x2e1d7d0 loads 4 bytes from [a0+38136]:8 +0x4.
  The `lwc1` at 0x2e1d7dc loads 4 bytes from [a0+38136]:8 +0x0.
  The `lwc1` at 0x2e1d7f8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e1d7fc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e1d814 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e1d828 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0x2e1d848 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `swc1` at 0x2e1d84c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e1d854 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e1d860 stores 4 bytes to a3 (arg3 at entry) +0xc.
  8 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e1d880, `lwc1` at 0x2e1d884, `lwc1` at 0x2e1d890.
  8 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1d8d0, `swc1` at 0x2e1d8d4, `swc1` at 0x2e1d8d8.
  The `blez` branch at 0x2e1d7d8 targets 0x2e1d950, is taken when t0(=[a1+200]) <= 0 (signed), and falls through when t0(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d7f0 targets 0x2e1d864, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x2e1d86c targets 0x2e1d950, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bgtz` branch at 0x2e1d948 targets 0x2e1d880, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x2e1d950 has v0 = ?.
- `__glSpanPostColorMatrixScaleBiasRGBA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1d960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1d960-0x2e1daf8 (408 bytes).
  It occupies 408 bytes.
  The `lwc1` at 0x2e1d960 loads 4 bytes from a0 (arg0 at entry) +0x384.
  The `lwc1` at 0x2e1d964 loads 4 bytes from a0 (arg0 at entry) +0x390.
  The `lw` at 0x2e1d968 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lwc1` at 0x2e1d970 loads 4 bytes from a0 (arg0 at entry) +0x38c.
  The `lwc1` at 0x2e1d978 loads 4 bytes from a0 (arg0 at entry) +0x9a08.
  The `lwc1` at 0x2e1d97c loads 4 bytes from a0 (arg0 at entry) +0x394.
  The `lwc1` at 0x2e1d980 loads 4 bytes from a0 (arg0 at entry) +0x9a30.
  The `lwc1` at 0x2e1d984 loads 4 bytes from a0 (arg0 at entry) +0x9a0c.
  The `lwc1` at 0x2e1d988 loads 4 bytes from a0 (arg0 at entry) +0x9a10.
  The `lwc1` at 0x2e1d990 loads 4 bytes from a0 (arg0 at entry) +0x388.
  The `lwc1` at 0x2e1d994 loads 4 bytes from a0 (arg0 at entry) +0x380.
  The `lwc1` at 0x2e1d9a0 loads 4 bytes from a0 (arg0 at entry) +0x378.
  The `lwc1` at 0x2e1d9b4 loads 4 bytes from a0 (arg0 at entry) +0x37c.
  20 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e1d9c8, `lwc1` at 0x2e1d9d4, `lwc1` at 0x2e1d9e0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e1d9d0, `swc1` at 0x2e1d9dc, `swc1` at 0x2e1d9e8.
  The `blez` branch at 0x2e1d9b8 targets 0x2e1daf0, is taken when a5(=[a1+200]) <= 0 (signed), and falls through when a5(=[a1+200]) > 0 (signed).
  The `beq` branch at 0x2e1d9c0 targets 0x2e1da0c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2e1da04 targets 0x2e1d9c8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e1da10 targets 0x2e1daf0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e1dae8 targets 0x2e1da20, is taken when a5(=[a1+200]) != a1(?), and falls through when a5(=[a1+200]) == a1(?).
  The return at 0x2e1daf0 has v0 = ?.
- `__glValidateAlphaTest` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f2a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f2a0-0x2e1f410 (368 bytes).
  It occupies 368 bytes.
  The `lwc1` at 0x2e1f2a4 loads 4 bytes from a0 (arg0 at entry) +0x828.
  The `lwc1` at 0x2e1f2ac loads 4 bytes from a0 (arg0 at entry) +0x9a30.
  The `lwc1` at 0x2e1f2b0 loads 4 bytes from a0 (arg0 at entry) +0xfec.
  The `lw` at 0x2e1f2b4 loads 4 bytes from a0 (arg0 at entry) +0x824.
  The `ld` at 0x2e1f2cc loads 8 bytes from a0 (arg0 at entry) +0x9a00.
  The `lw` at 0x2e1f2d0 loads 4 bytes from a0 (arg0 at entry) +0xfe8.
  8 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e1f31c, `sb` at 0x2e1f354, `sb` at 0x2e1f360.
  The `ld` at 0x2e1f340 loads 8 bytes from table(0x2ee8e30) +0x0.
  The `ld` at 0x2e1f3d4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2e1f3fc stores 8 bytes to a0 (arg0 at entry) +0x9a00.
  The `jalr` at 0x2e1f3e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+4072], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a0+2084].
  The `beq` branch at 0x2e1f2ec targets 0x2e1f3d4, is taken when a1(=[a0+39424]:8) == 0, and falls through when a1(=[a0+39424]:8) != 0.
  The `blez` branch at 0x2e1f2f4 targets 0x2e1f3c0, is taken when s0(=[a0+4072]) <= 0 (signed), and falls through when s0(=[a0+4072]) > 0 (signed).
  The `beq` branch at 0x2e1f308 targets 0x2e1f400 and is always taken.
  The `beq` branch at 0x2e1f328 targets 0x2e1f3c0, is taken when s0(=[a0+4072]) == a0(?), and falls through when s0(=[a0+4072]) != a0(?).
  The `beq` branch at 0x2e1f338 targets 0x2e1f320, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2e1f350 targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f35c targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f370 targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f380 targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f394 targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f3a8 targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f3b8 targets 0x2e1f320 and is always taken.
  The `beq` branch at 0x2e1f3f8 targets 0x2e1f2f4 and is always taken.
  The `beq` branch at 0x2e1f408 targets 0x2e1f334 and is always taken.
  The return at 0x2e1f3cc has v0 = ?.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
  The indirect jump at 0x2e1f344 uses the jump table at 0x2ee8e30 with targets 0x2e1f34c, 0x2e1f3b0, 0x2e1f39c, 0x2e1f388, 0x2e1f378, 0x2e1f310, 0x2e1f364, 0x2e1f358.
- `__glInitAsyncState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f410 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f410-0x2e1f4cc (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x2e1f440 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sd` at 0x2e1f450 stores 8 bytes to a0 (arg0 at entry) +0x1ad0.
  The `sd` at 0x2e1f484 stores 8 bytes to ret(?) +0x8.
  The `sd` at 0x2e1f488 stores 8 bytes to a0 (arg0 at entry) +0x1ac8.
  The `sw` at 0x2e1f48c stores 4 bytes to a0 (arg0 at entry) +0x1ac0.
  The `lw` at 0x2e1f498 loads 4 bytes from ret(?) +0x0.
  The `sw` at 0x2e1f4ac stores 4 bytes to ret(?) +0x0.
  The `jalr` at 0x2e1f438 calls __glNamesNewArray [0x2e54b60] with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e1f458 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1, a2=0x10, a3=?.
  The `jalr` at 0x2e1f474 calls __glNamesNewData [0x2e567c0] with a0=a0 at entry (arg0), a1=ret(__glNamesNewArray), a2=0x0, a3=ret(?).
  The `jalr` at 0x2e1f4a8 calls __glNamesDeleteRange [0x2e57c80] with a0=a0 at entry (arg0), a1=ret(__glNamesNewArray), a2=0x0, a3=0x1.
  The return at 0x2e1f4c4 has v0 = ret(__glNamesDeleteRange).
- `__glFreeAsyncState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f4d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f4d0-0x2e1f504 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x2e1f4f0 loads 8 bytes from a0 (arg0 at entry) +0x1ad0.
  The `jalr` at 0x2e1f4ec calls __glNamesFreeArray [0x2e54ea0] with a0=a0 at entry (arg0), a1=[a0+6864]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e1f4fc has v0 = ret(__glNamesFreeArray).
- `__glFreeAsyncMarker` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f910-0x2e1f944 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x2e1f924 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0x2e1f92c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e1f93c has v0 = ret(?).
- `__glDisposeAsyncMarker` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e1f950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e1f950-0x2e1f984 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x2e1f964 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `jalr` at 0x2e1f96c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e1f97c has v0 = ret(?).
- `RoundWidth` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e21ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e21ae0-0x2e21b0c (44 bytes).
  It occupies 44 bytes.
  The `bc1f` branch at 0x2e21aec targets 0x2e21afc, is taken when not (f12 < f0(=0x3f800000) (c.lt.s at 0x2e21ae4)), and falls through when f12 < f0(=0x3f800000) (c.lt.s at 0x2e21ae4).
  The return at 0x2e21af4 has v0 = 0x1.
  The return at 0x2e21b04 has v0 = ?.
- `ClampWidth` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e21b10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e21b10-0x2e21b60 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0x2e21b10 loads 4 bytes from a0 (arg0 at entry) +0x1010.
  The `lwc1` at 0x2e21b18 loads 4 bytes from a0 (arg0 at entry) +0x1018.
  The `lwc1` at 0x2e21b20 loads 4 bytes from a0 (arg0 at entry) +0x1014.
  The `lwc1` at 0x2e21b40 loads 4 bytes from a0 (arg0 at entry) +0xf28.
  The `bc1t` branch at 0x2e21b1c targets 0x2e21b58, is taken when f13 <= f5(=[a0+4112]) (c.le.s at 0x2e21b14), and falls through when not (f13 <= f5(=[a0+4112]) (c.le.s at 0x2e21b14)).
  The `bc1f` branch at 0x2e21b28 targets 0x2e21b38, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e21b30 has v0 = ?.
  The return at 0x2e21b50 has v0 = ?.
  The return at 0x2e21b58 has v0 = ?.
- `RoundSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e22630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e22630-0x2e2265c (44 bytes).
  It occupies 44 bytes.
  The `bc1f` branch at 0x2e2263c targets 0x2e2264c, is taken when not (f12 < f0(=0x3f800000) (c.lt.s at 0x2e22634)), and falls through when f12 < f0(=0x3f800000) (c.lt.s at 0x2e22634).
  The return at 0x2e22644 has v0 = 0x1.
  The return at 0x2e22654 has v0 = ?.
- `ClampSize` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e22660 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e22660-0x2e226b0 (80 bytes).
  It occupies 80 bytes.
  The `lwc1` at 0x2e22660 loads 4 bytes from a0 (arg0 at entry) +0x1004.
  The `lwc1` at 0x2e22668 loads 4 bytes from a0 (arg0 at entry) +0x100c.
  The `lwc1` at 0x2e22670 loads 4 bytes from a0 (arg0 at entry) +0x1008.
  The `lwc1` at 0x2e22690 loads 4 bytes from a0 (arg0 at entry) +0xf28.
  The `bc1t` branch at 0x2e2266c targets 0x2e226a8, is taken when f13 <= f5(=[a0+4100]) (c.le.s at 0x2e22664), and falls through when not (f13 <= f5(=[a0+4100]) (c.le.s at 0x2e22664)).
  The `bc1f` branch at 0x2e22678 targets 0x2e22688, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e22680 has v0 = ?.
  The return at 0x2e226a0 has v0 = ?.
  The return at 0x2e226a8 has v0 = ?.
- `__glFastDrawBitmap` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28150 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28150-0x2e282a0 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0x2e28180 loads 4 bytes from a0 (arg0 at entry) +0x5a4.
  The `ld` at 0x2e281e8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4ce8, including `ld` at 0x2e28224, `ld` at 0x2e28268, `ld` at 0x2e28284.
  The `ld` at 0x2e28238 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0x2e281e0 calls __glImageSize [0x2e45650] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x1900, a3=0x1a00, a5=a7 at entry (arg7).
  The `jalr` at 0x2e281f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(__glImageSize), a2=?, a3=?.
  The `jalr` at 0x2e2821c calls __glFillImage [0x2e46480] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1900, a4=0x1a00, a5=a7 at entry (arg7), a6=ret(?).
  The `jalr` at 0x2e28230 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-96, a2=ret(?), a3=?.
  The `jalr` at 0x2e28240 calls (unknown callee) with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?.
  The `jalr` at 0x2e28274 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=a3 at entry (arg3), a5=a7 at entry (arg7).
  The `jalr` at 0x2e28290 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-96, a2=a7 at entry (arg7), a3=a3 at entry (arg3), a5=a7 at entry (arg7).
  The `beq` branch at 0x2e281a0 targets 0x2e28284, is taken when v0(=[a0+1444]) == at(=0x1), and falls through when v0(=[a0+1444]) != at(=0x1).
  The `beq` branch at 0x2e281b8 targets 0x2e28284, is taken when (a0(?) & a1(=[a0+1444]-1)) == 0, and falls through when (a0(?) & a1(=[a0+1444]-1)) != 0.
  The `blez` branch at 0x2e281c0 targets 0x2e28268, is taken when s0(=a1) <= 0 (signed), and falls through when s0(=a1) > 0 (signed).
  The `blez` branch at 0x2e281c8 targets 0x2e28268, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x2e2827c targets 0x2e28248 and is always taken.
  The `beq` branch at 0x2e28298 targets 0x2e28248 and is always taken.
  The return at 0x2e28260 has v0 = ret(?).
- `__glDoBlendAdd` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e286e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e286e0-0x2e28724 (68 bytes).
  It occupies 68 bytes.
  The `lwc1` at 0x2e286e0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e286e4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e286e8 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e286f0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e286f4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e286f8 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e28700 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e28704 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e28708 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e28710 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e28714 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0x2e28720 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x2e2871c has v0 = ?.
- `__glDoBlendMin` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28730 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28730-0x2e2879c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x2e28730 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28734 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x2e28744 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28748 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e2874c loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0x2e2875c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e28760 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e28764 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0x2e28774 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e28778 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e2877c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0x2e28790 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0x2e2873c targets 0x2e28748, is taken when not (f4(=[a2]) < f0(=[a3]) (c.lt.s at 0x2e28738)), and falls through when f4(=[a2]) < f0(=[a3]) (c.lt.s at 0x2e28738).
  The `bc1f` branch at 0x2e28754 targets 0x2e28760, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2876c targets 0x2e28778, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e28784 targets 0x2e28794, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x2e2878c has v0 = ?.
  The return at 0x2e28794 has v0 = ?.
- `__glDoBlendSubtract` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28810 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28810-0x2e28854 (68 bytes).
  It occupies 68 bytes.
  The `lwc1` at 0x2e28810 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e28814 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28818 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e28820 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28824 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e28828 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e28830 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e28834 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e28838 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e28840 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e28844 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0x2e28850 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x2e2884c has v0 = ?.
- `__glDoBlendReverseSubtract` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28860 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28860-0x2e288a4 (68 bytes).
  It occupies 68 bytes.
  The `lwc1` at 0x2e28860 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28864 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e28868 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e28870 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28874 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e28878 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e28880 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e28884 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e28888 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e28890 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e28894 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0x2e288a0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x2e2889c has v0 = ?.
- `__glDoBlendAlphaMin` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e288b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e288b0-0x2e288ec (60 bytes).
  It occupies 60 bytes.
  The `lwc1` at 0x2e288b0 loads 4 bytes from a3 (arg3 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e288b4, `lwc1` at 0x2e288d8.
  The `lwc1` at 0x2e288c0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x2e288c4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e288c8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0x2e288cc stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e288d0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0x2e288d4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e288e0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0x2e288bc targets 0x2e288e4, is taken when not (f0(=[a2+12]) <= f1(=[a3+12]) (c.le.s at 0x2e288b8)), and falls through when f0(=[a2+12]) <= f1(=[a3+12]) (c.le.s at 0x2e288b8).
  The return at 0x2e288dc has v0 = ?.
  The return at 0x2e288e4 has v0 = ?.
- `__glDoBlendAlphaMax` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e288f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e288f0-0x2e2892c (60 bytes).
  It occupies 60 bytes.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e288f0, `lwc1` at 0x2e28918.
  The `lwc1` at 0x2e288f4 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e28900 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x2e28904 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28908 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0x2e2890c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e28910 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0x2e28914 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e28920 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0x2e288fc targets 0x2e28924, is taken when not (f0(=[a3+12]) <= f1(=[a2+12]) (c.le.s at 0x2e288f8)), and falls through when f0(=[a3+12]) <= f1(=[a2+12]) (c.le.s at 0x2e288f8).
  The return at 0x2e2891c has v0 = ?.
  The return at 0x2e28924 has v0 = ?.
- `__glDoBlendLogicOp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28930 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28930-0x2e28f28 (1528 bytes).
  It occupies 1528 bytes.
  The `lw` at 0x2e28934 loads 4 bytes from a0 (arg0 at entry) +0x848.
  The `ldc1` at 0x2e28954 loads 8 bytes from abs 0x2f009b0.
  The `ldc1` at 0x2e28958 loads 8 bytes from abs 0x2f00950.
  The `lw` at 0x2e28978 loads 4 bytes from a0 (arg0 at entry) +0xe14.
  The `lw` at 0x2e28998 loads 4 bytes from a0 (arg0 at entry) +0xe10.
  The `lw` at 0x2e289c0 loads 4 bytes from a0 (arg0 at entry) +0xe0c.
  The `lw` at 0x2e289e8 loads 4 bytes from a0 (arg0 at entry) +0xe08.
  The `lwc1` at 0x2e28a04 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e28a0c loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e28a14 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e28a24 loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `lwc1` at 0x2e28a2c loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lwc1` at 0x2e28a30 loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e28a4c loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e28a58 loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lw` at 0x2e28a9c loads 4 bytes from a0 (arg0 at entry) +0x9a14.
  The `ld` at 0x2e28ab4 loads 8 bytes from abs 0x2ef88b8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e28af0, `lwc1` at 0x2e28c9c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x2e28af4, `lwc1` at 0x2e28ca4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e28b00, `lwc1` at 0x2e28cb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x2e28b08, `lwc1` at 0x2e28cac.
  The `ld` at 0x2e28b78 loads 8 bytes from table(0x2ee8f10) +0x0.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x2e28bb8, `swc1` at 0x2e28c50, `swc1` at 0x2e28c68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9a18, including `lw` at 0x2e28bc0, `lw` at 0x2e28ce8.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x2e28bdc, `swc1` at 0x2e28c44, `swc1` at 0x2e28c78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9a1c, including `lw` at 0x2e28be4, `lw` at 0x2e28d14.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0x2e28c00, `swc1` at 0x2e28c40, `swc1` at 0x2e28c88.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9a34, including `lw` at 0x2e28c08, `lw` at 0x2e28d3c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0xc, including `swc1` at 0x2e28c2c, `swc1` at 0x2e28c3c, `swc1` at 0x2e28c98.
  The `lw` at 0x2e28c5c loads 4 bytes from a0 (arg0 at entry) +0x99f0.
  The `lw` at 0x2e28c6c loads 4 bytes from a0 (arg0 at entry) +0x99f4.
  The `lw` at 0x2e28c7c loads 4 bytes from a0 (arg0 at entry) +0x99f8.
  The `lwc1` at 0x2e28c8c loads 4 bytes from a0 (arg0 at entry) +0x9a30.
  The `beq` branch at 0x2e28948 targets 0x2e28c38, is taken when a5(=[a0+2120]) == v1(=0x1500), and falls through when a5(=[a0+2120]) != v1(=0x1500).
  The `beq` branch at 0x2e2895c targets 0x2e28c54, is taken when a5(=[a0+2120]) == v1(=0x150f), and falls through when a5(=[a0+2120]) != v1(=0x150f).
  The `beq` branch at 0x2e28968 targets 0x2e28c30, is taken when a5(=[a0+2120]) == a1(=0x1503), and falls through when a5(=[a0+2120]) != a1(=0x1503).
  The `beq` branch at 0x2e28970 targets 0x2e28c9c, is taken when a5(=[a0+2120]) == a4(=0x1505), and falls through when a5(=[a0+2120]) != a4(=0x1505).
  The `beq` branch at 0x2e28ae8 targets 0x2e28cc4, is taken when a5(=[a0+2120]) == t0(=0x150c), and falls through when a5(=[a0+2120]) != t0(=0x150c).
  The `beq` branch at 0x2e28b70 targets 0x2e28ba4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0x2e28c28 has v0 = ?.
  The return at 0x2e28c30 has v0 = 0x1.
  The return at 0x2e28c4c has v0 = 0xd7e68.
  The return at 0x2e28c94 has v0 = a0+65536.
  The return at 0x2e28cbc has v0 = 0x1.
  The return at 0x2e28d5c has v0 = ?.
  The instructions from 0x2e28b84 to 0x2e28ba0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e28d64 to 0x2e28f24 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x2e28b7c uses a jump table whose successors are unresolved.
- `__glDoBlendSourceZERO` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28f30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28f30-0x2e28f48 (24 bytes).
  It occupies 24 bytes.
  The `swc1` at 0x2e28f34 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e28f38 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e28f3c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e28f44 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e28f40 has v0 = ?.
- `__glDoBlendDestZERO` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28f50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28f50-0x2e28f98 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x2e28f78 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e28f80 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e28f90 has v0 = ret(?).
- `__glDoBlendSourceONE` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28fa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28fa0-0x2e28fc4 (36 bytes).
  It occupies 36 bytes.
  The `lwc1` at 0x2e28fa0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e28fa4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e28fa8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e28fac loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x2e28fb0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e28fb4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e28fb8 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e28fc0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e28fbc has v0 = ?.
- `__glDoBlendDestONE` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e28fd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e28fd0-0x2e29004 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x2e28fe4 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e28fec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e28ffc has v0 = ret(?).
- `__glDoBlendDestSC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29010 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29010-0x2e290ac (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0x2e29010 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29014 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e29020 loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `lwc1` at 0x2e29034 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29038 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e2903c loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lwc1` at 0x2e2904c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29050 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29054 loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lwc1` at 0x2e29064 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e29068 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e2906c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `ld` at 0x2e2908c loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e29094 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e290a4 has v0 = ret(?).
- `__glDoBlendDestMSC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e290b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e290b0-0x2e29150 (160 bytes).
  It occupies 160 bytes.
  The `lwc1` at 0x2e290b4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e290bc loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `lwc1` at 0x2e290c0 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e290c8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e290d8 loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lwc1` at 0x2e290dc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e290e4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e290f0 loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lwc1` at 0x2e290f4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e290fc loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29108 loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e2910c loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29114 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e29130 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e29138 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3); fp f12=[a0+39480].
  The return at 0x2e29148 has v0 = ret(?).
- `__glDoBlendSourceDC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29150 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29150-0x2e291bc (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x2e29150 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29154 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e29158 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e2915c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29160 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e29164 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e29168 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29170 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e2917c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29184 loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lwc1` at 0x2e2918c loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lwc1` at 0x2e29194 loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `swc1` at 0x2e291a0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e291a8 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e291b0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e291b8 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e291b4 has v0 = ?.
- `__glDoBlendSourceMDC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e291c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e291c0-0x2e29230 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0x2e291c0 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e291c4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e291c8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e291cc loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e291d4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e291dc loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e291e0 loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lwc1` at 0x2e291e4 loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lwc1` at 0x2e291e8 loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `lwc1` at 0x2e291f8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29200 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29204 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e29208 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e29214 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e2921c stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29224 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e2922c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29228 has v0 = ?.
- `__glDoBlendSourceSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29230 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29230-0x2e29274 (68 bytes).
  It occupies 68 bytes.
  The `lwc1` at 0x2e29234 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e2923c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29240 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29248 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e2924c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e29258 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29260 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29268 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29270 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e2926c has v0 = ?.
- `__glDoBlendDestSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29280 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29280-0x2e292f8 (120 bytes).
  It occupies 120 bytes.
  The `lwc1` at 0x2e29284 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e2928c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29290 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e292a4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e292b0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e292bc loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e292d8 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e292e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e292f0 has v0 = ret(?).
- `__glDoBlendSourceMSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29300 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29300-0x2e29348 (72 bytes).
  It occupies 72 bytes.
  The `lwc1` at 0x2e29304 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e2930c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29310 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e29318 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e2931c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e29320 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e2932c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29334 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e2933c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29344 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29340 has v0 = ?.
- `__glDoBlendDestMSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29350-0x2e293cc (124 bytes).
  It occupies 124 bytes.
  The `lwc1` at 0x2e29354 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e2935c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29360 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e29368 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29378 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29384 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29390 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e293ac loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e293b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e293c4 has v0 = ret(?).
- `__glDoBlendSourceDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e293d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e293d0-0x2e29418 (72 bytes).
  It occupies 72 bytes.
  The `lwc1` at 0x2e293d4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e293dc loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e293e0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e293e4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e293ec loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e293f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x2e293fc stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29404 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29408 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `swc1` at 0x2e29414 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The return at 0x2e29410 has v0 = ?.
- `__glDoBlendDestDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29420 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29420-0x2e29498 (120 bytes).
  It occupies 120 bytes.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e29424, `lwc1` at 0x2e2945c.
  The `lwc1` at 0x2e2942c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29430 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29444 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29450 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `ld` at 0x2e29478 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e29480 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29490 has v0 = ret(?).
- `__glDoBlendSourceMDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e294a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e294a0-0x2e294ec (76 bytes).
  It occupies 76 bytes.
  The `lwc1` at 0x2e294a4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e294ac loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e294b0 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e294b8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e294bc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e294c0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e294c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e294d0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e294d8 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e294e0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e294e8 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e294e4 has v0 = ?.
- `__glDoBlendDestMDA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e294f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e294f0-0x2e2956c (124 bytes).
  It occupies 124 bytes.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e294f4, `lwc1` at 0x2e29530.
  The `lwc1` at 0x2e294fc loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29500 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e29508 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29518 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29524 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `ld` at 0x2e2954c loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e29554 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29564 has v0 = ret(?).
- `__glDoBlendSourceSAT` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29570-0x2e295e4 (116 bytes).
  It occupies 116 bytes.
  The `lwc1` at 0x2e29574 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e2957c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29580 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e29588 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29594 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29598 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e295a0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0xc, including `swc1` at 0x2e295a4, `swc1` at 0x2e295c4.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0x2e295b0, `swc1` at 0x2e295d0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x2e295b8, `swc1` at 0x2e295d8.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x2e295c0, `swc1` at 0x2e295e0.
  The `bc1f` branch at 0x2e2959c targets 0x2e295c4, is taken when not (f8 < f9 (c.lt.s at 0x2e29590)), and falls through when f8 < f9 (c.lt.s at 0x2e29590).
  The return at 0x2e295bc has v0 = ?.
  The return at 0x2e295dc has v0 = ?.
- `__glDoBlendSourceCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e295f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e295f0-0x2e2964c (92 bytes).
  It occupies 92 bytes.
  The `lwc1` at 0x2e295f0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e295f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e295f8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e295fc loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `ld` at 0x2e29600 loads 8 bytes from a0 (arg0 at entry) +0x838.
  The `ld` at 0x2e29608 loads 8 bytes from a0 (arg0 at entry) +0x840.
  The `swc1` at 0x2e2962c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29634 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e2963c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29648 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29644 has v0 = [a0+2104]:8.
- `__glDoBlendDestCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29650 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29650-0x2e296d4 (132 bytes).
  It occupies 132 bytes.
  The `lwc1` at 0x2e29650 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x2e29654 loads 8 bytes from a0 (arg0 at entry) +0x838.
  The `ld` at 0x2e2965c loads 8 bytes from a0 (arg0 at entry) +0x840.
  The `lwc1` at 0x2e29678 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29688 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29698 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e296b4 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e296bc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e296cc has v0 = ret(?).
- `__glDoBlendSourceCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e296e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e296e0-0x2e29718 (56 bytes).
  It occupies 56 bytes.
  The `lwc1` at 0x2e296e0 loads 4 bytes from a0 (arg0 at entry) +0x844.
  The `lwc1` at 0x2e296e4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e296e8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e296ec loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e296f0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e296fc stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29704 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e2970c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29714 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29710 has v0 = ?.
- `__glDoBlendDestCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29720 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29720-0x2e29788 (104 bytes).
  It occupies 104 bytes.
  The `lwc1` at 0x2e29720 loads 4 bytes from a0 (arg0 at entry) +0x844.
  The `lwc1` at 0x2e29724 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29734 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29740 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e2974c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e29768 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e29770 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29780 has v0 = ret(?).
- `__glDoBlendSourceMCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29790-0x2e29800 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0x2e29790 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29794 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29798 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `ld` at 0x2e2979c loads 8 bytes from a0 (arg0 at entry) +0x838.
  The `ld` at 0x2e297a4 loads 8 bytes from a0 (arg0 at entry) +0x840.
  The `lwc1` at 0x2e297c4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e297cc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e297e0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e297e8 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e297f0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e297fc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e297f8 has v0 = [a0+2104]:8.
- `__glDoBlendDestMCC` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29800-0x2e298a4 (164 bytes).
  It occupies 164 bytes.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x2e29800, `lwc1` at 0x2e29830, `lwc1` at 0x2e29848.
  The `ld` at 0x2e29804 loads 8 bytes from a0 (arg0 at entry) +0x838.
  The `ld` at 0x2e2980c loads 8 bytes from a0 (arg0 at entry) +0x840.
  The `lwc1` at 0x2e2981c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29834 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e2984c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29864 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e29884 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e2988c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e2989c has v0 = ret(?).
- `__glDoBlendSourceMCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e298b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e298b0-0x2e298f0 (64 bytes).
  It occupies 64 bytes.
  The `lwc1` at 0x2e298b0 loads 4 bytes from a0 (arg0 at entry) +0x844.
  The `lwc1` at 0x2e298b4 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e298b8 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e298bc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e298c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e298cc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x2e298d4 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e298dc stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e298e0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `swc1` at 0x2e298ec stores 4 bytes to a3 (arg3 at entry) +0x4.
  The return at 0x2e298e8 has v0 = ?.
- `__glDoBlendDestMCA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e298f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e298f0-0x2e29960 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0x2e298f0 loads 4 bytes from a0 (arg0 at entry) +0x844.
  The `lwc1` at 0x2e298f4 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e298f8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e2990c loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29918 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29924 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x2e29940 loads 8 bytes from a0 (arg0 at entry) +0x4d40.
  The `jalr` at 0x2e29948 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2e29958 has v0 = ret(?).
- `__glDoNoFetchBlend` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29970 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29970-0x2e299a8 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x2e29984 loads 8 bytes from a0 (arg0 at entry) +0x4d28.
  The `jalr` at 0x2e29990 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2+12, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x2e299a0 has v0 = ret(?).
- `__glDoFetchBlend` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e299b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e299b0-0x2e29a24 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x2e299d0 loads 8 bytes from a1 (arg1 at entry) +0xe8.
  The `lw` at 0x2e299e4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0x2e299f0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `ld` at 0x2e299f4 loads 8 bytes from a0 (arg0 at entry) +0x4d28.
  The `jalr` at 0x2e299ec calls (unknown callee) with a0=a1 at entry (arg1), a1=[a2], a2=[a2+4], a3=sp-64.
  The `jalr` at 0x2e29a08 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2+12, a2=sp-64, a3=a3 at entry (arg3).
  The return at 0x2e29a1c has v0 = ret(?).
- `__glDoBlend` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29a30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29a30-0x2e29b10 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x2e29a4c loads 8 bytes from a0 (arg0 at entry) +0x4d30.
  The `ld` at 0x2e29a6c loads 8 bytes from a0 (arg0 at entry) +0x4d38.
  The `lwc1` at 0x2e29a88 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e29a90 loads 4 bytes from a0 (arg0 at entry) +0x9a08.
  The `swc1` at 0x2e29aa0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e29aa4 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e29aa8 loads 4 bytes from a0 (arg0 at entry) +0x9a0c.
  The `swc1` at 0x2e29abc stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e29ac0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e29ac4 loads 4 bytes from a0 (arg0 at entry) +0x9a10.
  The `swc1` at 0x2e29ad4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e29ad8 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x2e29adc loads 4 bytes from a0 (arg0 at entry) +0x9a30.
  The `swc1` at 0x2e29aec stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `jalr` at 0x2e29a64 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e29a7c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1f` branch at 0x2e29a98 targets 0x2e29aa4, is taken when not (f4(=[a0+39432]) < f0(=[a3]) (c.lt.s at 0x2e29a94)), and falls through when f4(=[a0+39432]) < f0(=[a3]) (c.lt.s at 0x2e29a94).
  The `bc1f` branch at 0x2e29ab4 targets 0x2e29ac0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e29acc targets 0x2e29ad8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e29ae4 targets 0x2e29afc, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x2e29af4 has v0 = ret(?).
  The return at 0x2e29b08 has v0 = ret(?).
- `__glDoBlendZeroClamp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29b10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29b10-0x2e29bd0 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x2e29b2c loads 8 bytes from a0 (arg0 at entry) +0x4d30.
  The `ld` at 0x2e29b4c loads 8 bytes from a0 (arg0 at entry) +0x4d38.
  The `lwc1` at 0x2e29b64 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `swc1` at 0x2e29b74 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e29b78 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29b88 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e29b8c loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29b9c stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2e29ba0 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29bb0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `jalr` at 0x2e29b3c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e29b58 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1f` branch at 0x2e29b6c targets 0x2e29b78, is taken when not (f0(=[a3]) < f4 (c.lt.s at 0x2e29b68)), and falls through when f0(=[a3]) < f4 (c.lt.s at 0x2e29b68).
  The `bc1f` branch at 0x2e29b80 targets 0x2e29b8c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e29b94 targets 0x2e29ba0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e29ba8 targets 0x2e29bc0, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x2e29bb8 has v0 = ret(?).
  The return at 0x2e29bc8 has v0 = ret(?).
- `__glDoBlendNoClamp` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29bd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29bd0-0x2e29c34 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0x2e29bec loads 8 bytes from a0 (arg0 at entry) +0x4d30.
  The `ld` at 0x2e29c08 loads 8 bytes from a0 (arg0 at entry) +0x4d38.
  The `jalr` at 0x2e29c00 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e29c18 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e29c2c has v0 = ret(?).
- `__glDoBlend_SA_ZERO` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29c40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29c40-0x2e29c88 (72 bytes).
  It occupies 72 bytes.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lwc1` at 0x2e29c44, `lwc1` at 0x2e29c78.
  The `lwc1` at 0x2e29c4c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29c50 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e29c5c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x2e29c60 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x2e29c68 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2e29c6c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0x2e29c74 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29c84 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x2e29c80 has v0 = ?.
- `__glDoBlend_SA_ONE` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29c90-0x2e29d14 (132 bytes).
  It occupies 132 bytes.
  The `lwc1` at 0x2e29c94 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29c9c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29ca0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29ca4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e29ca8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29cb0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e29cb4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e29cbc loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29cc4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29ccc loads 4 bytes from a0 (arg0 at entry) +0x9a30.
  The `lwc1` at 0x2e29cd4 loads 4 bytes from a0 (arg0 at entry) +0x9a10.
  The `lwc1` at 0x2e29cd8 loads 4 bytes from a0 (arg0 at entry) +0x9a0c.
  The `lwc1` at 0x2e29cdc loads 4 bytes from a0 (arg0 at entry) +0x9a08.
  The `swc1` at 0x2e29cf8 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29d00 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29d08 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29d10 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29d0c has v0 = ?.
- `__glDoBlend_SA_MSA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29d20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29d20-0x2e29d8c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x2e29d24 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29d2c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29d30 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e29d38 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29d3c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e29d44 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29d4c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29d54 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29d5c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e29d68 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e29d78 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29d7c stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29d80 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29d88 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29d84 has v0 = ?.
- `__glDoBlend_MSA_SA` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e29d90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e29d90-0x2e29dfc (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x2e29d94 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x2e29d9c loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  The `lwc1` at 0x2e29da0 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `lwc1` at 0x2e29da4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x2e29dac loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2e29db4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x2e29dbc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e29dc4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x2e29dd0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x2e29dd8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x2e29de8 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2e29dec stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2e29df0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `swc1` at 0x2e29df8 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0x2e29df4 has v0 = ?.
- `__glResizeBuffer` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2ac40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2ac40-0x2e2ad4c (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x2e2ac44 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwu` at 0x2e2ac68 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x2e2ac74 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x2e2ac7c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x2e2ac9c loads 8 bytes from [a0]:8 +0x9ea0.
  The `ld` at 0x2e2acac loads 8 bytes from [[a0]:8+40608]:8 +0x10.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x18, including `sd` at 0x2e2acd0, `sd` at 0x2e2ad48.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `sw` at 0x2e2acd8, `sw` at 0x2e2acf4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x2e2acdc, `sw` at 0x2e2acf8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x2e2ace0, `sw` at 0x2e2acfc.
  The `sw` at 0x2e2ace4 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `ld` at 0x2e2ad24 loads 8 bytes from [[a0]:8+40608]:8 +0x20.
  The `jalr` at 0x2e2acb8 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+24]:8, a6=[[a0]:8+40608]:8.
  The `jalr` at 0x2e2ad2c calls (unknown callee) with a0=[a0+24]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+24]:8, a6=[[a0]:8+40608]:8.
  The `bne` branch at 0x2e2ac98 targets 0x2e2ad10, is taken when a7(=[a0+32]) < a5(?) (unsigned), and falls through when a7(=[a0+32]) >= a5(?) (unsigned).
  The `bne` branch at 0x2e2aca0 targets 0x2e2acf4, is taken when a4(=[a0+24]:8) != 0, and falls through when a4(=[a0+24]:8) == 0.
  The `beq` branch at 0x2e2ad1c targets 0x2e2aca8, is taken when a4(=[a0+24]:8) == 0, and falls through when a4(=[a0+24]:8) != 0.
  The `beq` branch at 0x2e2ad44 targets 0x2e2acd4 and is always taken.
  The return at 0x2e2acec has v0 = ret(?).
  The return at 0x2e2ad08 has v0 = ?.
- `__glMoveBuffer` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2ad50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2ad50-0x2e2ad5c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x2e2ad50 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x2e2ad58 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The return at 0x2e2ad54 has v0 = ?.
- `__glFreeBuffer` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2ad60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2ad60-0x2e2ada8 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x2e2ad60 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x2e2ad80 loads 8 bytes from a1 (arg1 at entry) +0x28.
  The `sd` at 0x2e2ad98 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x2e2ad88 calls (unknown callee) with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0]:8.
  The `beq` branch at 0x2e2ad78 targets 0x2e2ad94, is taken when a3(=[a0]:8) == 0, and falls through when a3(=[a0]:8) != 0.
  The return at 0x2e2ada0 has v0 = one of ?, ret(?).
- `__glLoadColorTableParams` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2e000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2e000-0x2e2e4a0 (1184 bytes).
  It occupies 1184 bytes.
  The `sw` at 0x2e2e004 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0x2e2e00c stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x2e2e014 stores 4 bytes to a0 (arg0 at entry) +0x0.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x54, including `sw` at 0x2e2e098, `sw` at 0x2e2e0dc, `sw` at 0x2e2e160.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x50, including `sw` at 0x2e2e09c, `sw` at 0x2e2e0e4, `sw` at 0x2e2e164.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2c, including `sw` at 0x2e2e0a0, `sw` at 0x2e2e0e8, `sw` at 0x2e2e16c.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x2e2e0a4, `sw` at 0x2e2e0f0, `sw` at 0x2e2e170.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x24, including `sw` at 0x2e2e0ac, `sw` at 0x2e2e0f4, `sw` at 0x2e2e174.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x20, including `sw` at 0x2e2e0b0, `sw` at 0x2e2e0f8, `sw` at 0x2e2e178.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0x2e2e0b4, `sw` at 0x2e2e0fc, `sw` at 0x2e2e17c.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x2e2e0bc, `sw` at 0x2e2e104, `sw` at 0x2e2e184.
  The `bne` branch at 0x2e2e010 targets 0x2e2e07c, is taken when a2 < a5(=0x8048) (unsigned), and falls through when a2 >= a5(=0x8048) (unsigned).
  The `beq` branch at 0x2e2e01c targets 0x2e2e0dc, is taken when a5(=0x8048) >= a2 (unsigned), and falls through when a5(=0x8048) < a2 (unsigned).
  The `bne` branch at 0x2e2e02c targets 0x2e2e144, is taken when a2 < a3(=0x8052) (unsigned), and falls through when a2 >= a3(=0x8052) (unsigned).
  The `beq` branch at 0x2e2e034 targets 0x2e2e204, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e2e040 targets 0x2e2e298, is taken when a2 < a3(=0x8057) (unsigned), and falls through when a2 >= a3(=0x8057) (unsigned).
  The `beq` branch at 0x2e2e048 targets 0x2e2e26c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x2e2e058 targets 0x2e2e254, is taken when a2 < a3(=0x805a) (unsigned), and falls through when a2 >= a3(=0x805a) (unsigned).
  The `beq` branch at 0x2e2e060 targets 0x2e2e26c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e2e06c targets 0x2e2e108, is taken when a2 != t0(=0x805b), and falls through when a2 == t0(=0x805b).
  The `beq` branch at 0x2e2e074 targets 0x2e2e26c and is always taken.
  The `bne` branch at 0x2e2e084 targets 0x2e2e110, is taken when a2 < a3(=0x803e) (unsigned), and falls through when a2 >= a3(=0x803e) (unsigned).
  The `bne` branch at 0x2e2e08c targets 0x2e2e188, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x2e2e0c8 targets 0x2e2e490, is taken when a2 < a3(=0x8045) (unsigned), and falls through when a2 >= a3(=0x8045) (unsigned).
  The `bne` branch at 0x2e2e0d4 targets 0x2e2e108, is taken when a3(=0x8045) < a2 (unsigned), and falls through when a3(=0x8045) >= a2 (unsigned).
  The `bne` branch at 0x2e2e114 targets 0x2e2e1cc, is taken when a2 < 0x190a (unsigned), and falls through when a2 >= 0x190a (unsigned).
  The `bne` branch at 0x2e2e11c targets 0x2e2e0dc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x2e2e12c targets 0x2e2e350, is taken when a2 < a3(=0x803c) (unsigned), and falls through when a2 >= a3(=0x803c) (unsigned).
  The `bne` branch at 0x2e2e134 targets 0x2e2e40c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e2e13c targets 0x2e2e094 and is always taken.
  The `bne` branch at 0x2e2e14c targets 0x2e2e234, is taken when a2 < a3(=0x804d) (unsigned), and falls through when a2 >= a3(=0x804d) (unsigned).
  The `bne` branch at 0x2e2e154 targets 0x2e2e304, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x2e2e190 targets 0x2e2e2c0, is taken when a2 < a3(=0x8043) (unsigned), and falls through when a2 >= a3(=0x8043) (unsigned).
  The `beq` branch at 0x2e2e198 targets 0x2e2e0dc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e2e1a8 targets 0x2e2e0c0, is taken when a2 < a3(=0x8046) (unsigned), and falls through when a2 >= a3(=0x8046) (unsigned).
  The `beq` branch at 0x2e2e1b0 targets 0x2e2e0dc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e2e1bc targets 0x2e2e108, is taken when a2 != v0(=0x8047), and falls through when a2 == v0(=0x8047).
  The `beq` branch at 0x2e2e1c4 targets 0x2e2e0dc and is always taken.
  The `bne` branch at 0x2e2e1d0 targets 0x2e2e1f8, is taken when a2 < 0x1908 (unsigned), and falls through when a2 >= 0x1908 (unsigned).
  The `bne` branch at 0x2e2e1dc targets 0x2e2e26c, is taken when a2 < 0x1909 (unsigned), and falls through when a2 >= 0x1909 (unsigned).
  The `bne` branch at 0x2e2e1e8 targets 0x2e2e108, is taken when a3(=0x1909) != a2, and falls through when a3(=0x1909) == a2.
  The `beq` branch at 0x2e2e1f0 targets 0x2e2e2dc and is always taken.
  The `bne` branch at 0x2e2e1f8 targets 0x2e2e3b4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e2e200 targets 0x2e2e108, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2e2e23c targets 0x2e2e330, is taken when a2 < a3(=0x804b) (unsigned), and falls through when a2 >= a3(=0x804b) (unsigned).
  The `bne` branch at 0x2e2e244 targets 0x2e2e3e8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e2e24c targets 0x2e2e15c and is always taken.
  The `bne` branch at 0x2e2e25c targets 0x2e2e468, is taken when a2 < a3(=0x8059) (unsigned), and falls through when a2 >= a3(=0x8059) (unsigned).
  The `bne` branch at 0x2e2e264 targets 0x2e2e108, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x2e2e2a0 targets 0x2e2e370, is taken when a2 < a3(=0x8055) (unsigned), and falls through when a2 >= a3(=0x8055) (unsigned).
  The `beq` branch at 0x2e2e2a8 targets 0x2e2e268, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e2e2b0 targets 0x2e2e108, is taken when a2 != at(=0x8056), and falls through when a2 == at(=0x8056).
  The `beq` branch at 0x2e2e2b8 targets 0x2e2e26c and is always taken.
  The `bne` branch at 0x2e2e2c8 targets 0x2e2e390, is taken when a2 < a3(=0x8041) (unsigned), and falls through when a2 >= a3(=0x8041) (unsigned).
  The `bne` branch at 0x2e2e2d0 targets 0x2e2e444, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x2e2e30c targets 0x2e2e3c8, is taken when a2 < a3(=0x8050) (unsigned), and falls through when a2 >= a3(=0x8050) (unsigned).
  The `beq` branch at 0x2e2e314 targets 0x2e2e208, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x2e2e320 targets 0x2e2e108, is taken when a2 != a6(=0x8051), and falls through when a2 == a6(=0x8051).
  The `beq` branch at 0x2e2e328 targets 0x2e2e208 and is always taken.
  The `bne` branch at 0x2e2e338 targets 0x2e2e3f8, is taken when a2 < a3(=0x804a) (unsigned), and falls through when a2 >= a3(=0x804a) (unsigned).
  The `bne` branch at 0x2e2e340 targets 0x2e2e108, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x2e2e348 targets 0x2e2e15c and is always taken.
  The `bne` branch at 0x2e2e358 targets 0x2e2e41c, is taken when a2 < a3(=0x803b) (unsigned), and falls through when a2 >= a3(=0x803b) (unsigned).
  The `bne` branch at 0x2e2e360 targets 0x2e2e108, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e2e368 targets 0x2e2e094 and is always taken.
  The `bne` branch at 0x2e2e378 targets 0x2e2e430, is taken when a2 < a3(=0x8054) (unsigned), and falls through when a2 >= a3(=0x8054) (unsigned).
  The `beq` branch at 0x2e2e380 targets 0x2e2e208, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2e2e388 targets 0x2e2e108 and is always taken.
  The `bne` branch at 0x2e2e398 targets 0x2e2e458, is taken when a2 < a3(=0x8040) (unsigned), and falls through when a2 >= a3(=0x8040) (unsigned).
  The `bne` branch at 0x2e2e3a4 targets 0x2e2e108, is taken when a3(=0x8040) < a2 (unsigned), and falls through when a3(=0x8040) >= a2 (unsigned).
  The `beq` branch at 0x2e2e3ac targets 0x2e2e2d8 and is always taken.
  The `bne` branch at 0x2e2e3b8 targets 0x2e2e108, is taken when a3(=0x1906) != a2, and falls through when a3(=0x1906) == a2.
  The `beq` branch at 0x2e2e3c0 targets 0x2e2e098 and is always taken.
  The `bne` branch at 0x2e2e3d0 targets 0x2e2e47c, is taken when a2 < a3(=0x804f) (unsigned), and falls through when a2 >= a3(=0x804f) (unsigned).
  The `beq` branch at 0x2e2e3d8 targets 0x2e2e208, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2e2e3e0 targets 0x2e2e108 and is always taken.
  The `bne` branch at 0x2e2e3e8 targets 0x2e2e108, is taken when a2 != a1(=0x804c), and falls through when a2 == a1(=0x804c).
  The `beq` branch at 0x2e2e3f0 targets 0x2e2e15c and is always taken.
  The `bne` branch at 0x2e2e3fc targets 0x2e2e108, is taken when a3(=0x8049) != a2, and falls through when a3(=0x8049) == a2.
  The `beq` branch at 0x2e2e404 targets 0x2e2e160 and is always taken.
  The `bne` branch at 0x2e2e40c targets 0x2e2e108, is taken when a2 != a3(=0x803d), and falls through when a2 == a3(=0x803d).
  The `beq` branch at 0x2e2e414 targets 0x2e2e094 and is always taken.
  The `bne` branch at 0x2e2e420 targets 0x2e2e108, is taken when a2 != a4(=0x2a10), and falls through when a2 == a4(=0x2a10).
  The `beq` branch at 0x2e2e428 targets 0x2e2e208 and is always taken.
  The `bne` branch at 0x2e2e434 targets 0x2e2e108, is taken when a2 != a5(=0x8053), and falls through when a2 == a5(=0x8053).
  The `beq` branch at 0x2e2e43c targets 0x2e2e208 and is always taken.
  The `bne` branch at 0x2e2e448 targets 0x2e2e108, is taken when a2 != a6(=0x8042), and falls through when a2 == a6(=0x8042).
  The `beq` branch at 0x2e2e450 targets 0x2e2e2d8 and is always taken.
  The `bne` branch at 0x2e2e458 targets 0x2e2e108, is taken when a2 != a7(=0x803f), and falls through when a2 == a7(=0x803f).
  The `beq` branch at 0x2e2e460 targets 0x2e2e2d8 and is always taken.
  The `bne` branch at 0x2e2e46c targets 0x2e2e108, is taken when a2 != t0(=0x8058), and falls through when a2 == t0(=0x8058).
  The `beq` branch at 0x2e2e474 targets 0x2e2e26c and is always taken.
  The `bne` branch at 0x2e2e480 targets 0x2e2e108, is taken when a2 != t1(=0x804e), and falls through when a2 == t1(=0x804e).
  The `beq` branch at 0x2e2e488 targets 0x2e2e208 and is always taken.
  The `bne` branch at 0x2e2e490 targets 0x2e2e108, is taken when a2 != t2(=0x8044), and falls through when a2 == t2(=0x8044).
  The `beq` branch at 0x2e2e498 targets 0x2e2e0dc and is always taken.
  The return at 0x2e2e0b8 has v0 = ?.
  The return at 0x2e2e100 has v0 = 0x18.
  The return at 0x2e2e108 has v0 = one of ?, 0x8047.
  The return at 0x2e2e180 has v0 = ?.
  The return at 0x2e2e22c has v0 = ?.
  The return at 0x2e2e290 has v0 = ?.
  The return at 0x2e2e2fc has v0 = ?.
- `__glColorTableSGI` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2e4a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2e4a0-0x2e2e82c (908 bytes).
  It occupies 908 bytes.
  The `ld` at 0x2e2e4ec loads 8 bytes from table(0x2ee9050) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e2e52c, `lw` at 0x2e2e530, `lw` at 0x2e2e5dc.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2e2e5a4, `sw` at 0x2e2e5a8, `sw` at 0x2e2e5ac.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e2e610, `ld` at 0x2e2e64c, `ld` at 0x2e2e808.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e2e65c, `lwc1` at 0x2e2e674, `lwc1` at 0x2e2e688.
  The `ld` at 0x2e2e774 loads 8 bytes from a0 (arg0 at entry) +0x4d60.
  The `ld` at 0x2e2e804 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sd` at 0x2e2e820 stores 8 bytes to ?.
  The `jalr` at 0x2e2e528 calls __glElementsPerGroup [0x2e0e120] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e2e550 calls __glLoadColorTableParams [0x2e2e000] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e2e5d8 calls __glElementsPerGroup [0x2e0e120] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2e2e63c calls __glInitMemUnpack [0x2e0abb0] with a0=a0 at entry (arg0), a1=sp-744, a2=a3 at entry (arg3), a3=0x1, a4=0x0, a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jalr` at 0x2e2e654 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-744, a2=?, a3=?.
  The `jalr` at 0x2e2e750 calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-744, a2=0x1, a3=?.
  The `jalr` at 0x2e2e760 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-744, a2=?, a3=?.
  The `jalr` at 0x2e2e77c calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-744, a2=0x0, a3=?.
  The `jalr` at 0x2e2e7ec calls __glElementsPerGroup [0x2e0e120] with a0=?, a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0x2e2e810 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e2e4e4 targets 0x2e2e4f8, is taken when at(?) >= 0x1a (unsigned), and falls through when at(?) < 0x1a (unsigned).
  The `beq` branch at 0x2e2e518 targets 0x2e2e5a0, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x2e2e55c targets 0x2e2e5d4, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2e2e598 targets 0x2e2e520, is taken when a2 != 0, and falls through when a2 == 0.
  The `bne` branch at 0x2e2e5f4 targets 0x2e2e7ec, is taken when at(?) < v0(?) (signed), and falls through when at(?) >= v0(?) (signed).
  The `beq` branch at 0x2e2e5fc targets 0x2e2e568, is taken when a2(=a3) == 0, and falls through when a2(=a3) != 0.
  The `beq` branch at 0x2e2e608 targets 0x2e2e568, is taken when v1(=a6) == 0, and falls through when v1(=a6) != 0.
  The `beq` branch at 0x2e2e614 targets 0x2e2e564, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bc1f` branch at 0x2e2e66c targets 0x2e2e704, is taken when not (f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e668)), and falls through when f0 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e668).
  The `bc1f` branch at 0x2e2e680 targets 0x2e2e704, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2e694 targets 0x2e2e704, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2e2e6a8 targets 0x2e2e704, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x2e2e6c0 targets 0x2e2e704, is taken when not (f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e6bc)), and falls through when f6 == f5(=0x3ff0000000000000) (c.eq.d at 0x2e2e6bc).
  The `bc1f` branch at 0x2e2e6d4 targets 0x2e2e704, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x2e2e6e8 targets 0x2e2e704, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1t` branch at 0x2e2e6fc targets 0x2e2e824, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x2e2e784 targets 0x2e2e568 and is always taken.
  The `beq` branch at 0x2e2e794 targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e7a4 targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e7b4 targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e7bc targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e7c8 targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e7d8 targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e7e4 targets 0x2e2e500 and is always taken.
  The `beq` branch at 0x2e2e81c targets 0x2e2e5fc and is always taken.
  The `beq` branch at 0x2e2e824 targets 0x2e2e748 and is always taken.
  The return at 0x2e2e570 has v0 = one of ?, ret(?).
  The return at 0x2e2e5cc has v0 = ?.
  The indirect jump at 0x2e2e4f0 uses the jump table at 0x2ee9050 with targets 0x2e2e7e0, 0x2e2e7d0, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e4f8, 0x2e2e578, 0x2e2e7c4, 0x2e2e7bc, 0x2e2e7ac, 0x2e2e79c, 0x2e2e78c.
- `__glColorSubTable` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2e990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2e990-0x2e2ebb0 (544 bytes).
  It occupies 544 bytes.
  The `ld` at 0x2e2ea3c loads 8 bytes from ?.
  The `lw` at 0x2e2ea40 loads 4 bytes from ?.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e2ea4c, `lwc1` at 0x2e2ea54, `lwc1` at 0x2e2ea5c.
  The `ld` at 0x2e2eb60 loads 8 bytes from a0 (arg0 at entry) +0x4d60.
  The `jalr` at 0x2e2ea2c calls __glInitMemUnpack [0x2e0abb0] with a0=a0 at entry (arg0), a1=sp-680, a2=a3 at entry (arg3), a3=0x1, a4=0x0, a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jalr` at 0x2e2ea44 calls __glInitMemLoad [0x2e0a970] with a0=a0 at entry (arg0), a1=sp-680, a2=?, a3=?.
  The `jalr` at 0x2e2eb3c calls __glInitUnpacker [0x2e0e790] with a0=a0 at entry (arg0), a1=sp-680, a2=?, a3=?.
  The `jalr` at 0x2e2eb50 calls __glInitPacker [0x2dfe160] with a0=a0 at entry (arg0), a1=sp-680, a2=?, a3=?.
  The `jalr` at 0x2e2eb6c calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-680, a2=0x0, a3=?.
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
  The `beq` branch at 0x2e2eb8c targets 0x2e2ea08 and is always taken.
  The `beq` branch at 0x2e2eb98 targets 0x2e2ea08 and is always taken.
  The `beq` branch at 0x2e2eba0 targets 0x2e2ea08 and is always taken.
  The `beq` branch at 0x2e2eba8 targets 0x2e2eb2c and is always taken.
  The return at 0x2e2eb84 has v0 = ret(?).
- `__glColorTableModifiers` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2eed0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2eed0-0x2e2f0dc (524 bytes).
  It occupies 524 bytes.
  The `ld` at 0x2e2ef14 loads 8 bytes from table(0x2ee91f0) +0x0.
  The `ld` at 0x2e2ef94 loads 8 bytes from table(0x2ee92c0) +0x0.
  10 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x2e2f010, `sw` at 0x2e2f020, `sw` at 0x2e2f030.
  The `bgezall` at 0x2e2ef28 calls __glSetError [0x2e315d0] with a0=0x500, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8.
  The `bgezall` at 0x2e2efe8 calls __glSetError [0x2e315d0] with a0=0x500, a1=entry(0x2ee91f0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8, a6=one of 0x0, 0x1.
  The `bgezall` at 0x2e2f094 calls __glSetError [0x2e315d0] with a0=0x500, a1=entry(0x2ee91f0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8, a6=one of 0x0, 0x1.
  The `bgezall` at 0x2e2f0ac calls __glSetError [0x2e315d0] with a0=0x500, a1=entry(0x2ee91f0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xd18c8, a6=one of 0x0, 0x1.
  The `beq` branch at 0x2e2ef0c targets 0x2e2ef24, is taken when at(?) >= 0x1a (unsigned), and falls through when at(?) < 0x1a (unsigned).
  The `beq` branch at 0x2e2ef58 targets 0x2e2ef68 and is always taken.
  The `beq` branch at 0x2e2ef8c targets 0x2e2efe4, is taken when a0(?) >= 0xa (unsigned), and falls through when a0(?) < 0xa (unsigned).
  The `beq` branch at 0x2e2efa4 targets 0x2e2ef68 and is always taken.
  The `beq` branch at 0x2e2efac targets 0x2e2ef6c and is always taken.
  The `beq` branch at 0x2e2efb8 targets 0x2e2ef68 and is always taken.
  The `beq` branch at 0x2e2efc4 targets 0x2e2ef68 and is always taken.
  The `beq` branch at 0x2e2efd0 targets 0x2e2ef68 and is always taken.
  The `beq` branch at 0x2e2efdc targets 0x2e2ef68 and is always taken.
  The `beq` branch at 0x2e2f00c targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f01c targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f02c targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f03c targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f04c targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f078 targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f084 targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f08c targets 0x2e2f0bc, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2e2f09c targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f0a4 targets 0x2e2f0cc, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x2e2f0b4 targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f0c4 targets 0x2e2ef44 and is always taken.
  The `beq` branch at 0x2e2f0d4 targets 0x2e2ef44 and is always taken.
  The return at 0x2e2ef3c has v0 = 0x0.
  The return at 0x2e2ef4c has v0 = one of ?, 0x0.
  The return at 0x2e2effc has v0 = 0x0.
  The return at 0x2e2f068 has v0 = ?.
  The indirect jump at 0x2e2ef1c uses the jump table at 0x2ee91f0 with targets 0x2e2ef60, 0x2e2efd8, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef24, 0x2e2ef54, 0x2e2efcc, 0x2e2efc0, 0x2e2efb4, 0x2e2efac, 0x2e2efa0.
  The indirect jump at 0x2e2ef98 uses the jump table at 0x2ee92c0 with targets 0x2e2f0a4, 0x2e2f08c, 0x2e2f004, 0x2e2f080, 0x2e2f070, 0x2e2f054, 0x2e2f044, 0x2e2f034, 0x2e2f024, 0x2e2f014.
  The indirect jump at 0x2e2ef98 uses the jump table at 0x2ee92c0 with targets 0x2e2f0a4, 0x2e2f08c, 0x2e2f004, 0x2e2f080, 0x2e2f070, 0x2e2f054, 0x2e2f044, 0x2e2f034, 0x2e2f024, 0x2e2f014.
  The indirect jump at 0x2e2ef98 uses the jump table at 0x2ee92c0 with targets 0x2e2f0a4, 0x2e2f08c, 0x2e2f004, 0x2e2f080, 0x2e2f070, 0x2e2f054, 0x2e2f044, 0x2e2f034, 0x2e2f024, 0x2e2f014.
  The indirect jump at 0x2e2ef98 uses the jump table at 0x2ee92c0 with targets 0x2e2f0a4, 0x2e2f08c, 0x2e2f004, 0x2e2f080, 0x2e2f070, 0x2e2f054, 0x2e2f044, 0x2e2f034, 0x2e2f024, 0x2e2f014.
  The indirect jump at 0x2e2ef98 uses the jump table at 0x2ee92c0 with targets 0x2e2f0a4, 0x2e2f08c, 0x2e2f004, 0x2e2f080, 0x2e2f070, 0x2e2f054, 0x2e2f044, 0x2e2f034, 0x2e2f024, 0x2e2f014.
- `__glColorTableParameterv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f0e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2f0e0-0x2e2f264 (388 bytes).
  It occupies 388 bytes.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e2f130, `lwc1` at 0x2e2f150.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e2f134, `swc1` at 0x2e2f154, `swc1` at 0x2e2f18c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e2f180, `lw` at 0x2e2f1a4, `lw` at 0x2e2f1c8.
  The `lwc1` at 0x2e2f22c loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0x2e2f238 stores 4 bytes to ret(__glColorTableModifiers) +0x0.
  The `lw` at 0x2e2f24c loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sw` at 0x2e2f260 stores 4 bytes to ret(__glColorTableModifiers) +0x0.
  The `bgezall` at 0x2e2f0fc calls __glColorTableModifiers [0x2e2eed0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32.
  The `beq` branch at 0x2e2f108 targets 0x2e2f214, is taken when v0(=ret(__glColorTableModifiers)) == 0, and falls through when v0(=ret(__glColorTableModifiers)) != 0.
  The `beq` branch at 0x2e2f118 targets 0x2e2f224, is taken when a3(?) == at(=0x1), and falls through when a3(?) != at(=0x1).
  The `beq` branch at 0x2e2f120 targets 0x2e2f170, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `blez` branch at 0x2e2f128 targets 0x2e2f170, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x2e2f148 targets 0x2e2f170, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x2e2f168 targets 0x2e2f130, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `beq` branch at 0x2e2f170 targets 0x2e2f214, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `blez` branch at 0x2e2f178 targets 0x2e2f214, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x2e2f19c targets 0x2e2f214, is taken when a2(?) >= a1(?) (signed), and falls through when a2(?) < a1(?) (signed).
  The `beq` branch at 0x2e2f1c0 targets 0x2e2f214, is taken when a2(?) >= a4(?) (signed), and falls through when a2(?) < a4(?) (signed).
  The `beq` branch at 0x2e2f1e4 targets 0x2e2f214, is taken when a2(?) >= a6(?) (signed), and falls through when a2(?) < a6(?) (signed).
  The `bne` branch at 0x2e2f20c targets 0x2e2f180, is taken when a2(?) < t0(?) (signed), and falls through when a2(?) >= t0(?) (signed).
  The `beq` branch at 0x2e2f224 targets 0x2e2f244, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `bne` branch at 0x2e2f234 targets 0x2e2f24c, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0x2e2f23c targets 0x2e2f218 and is always taken.
  The `beq` branch at 0x2e2f244 targets 0x2e2f214, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The return at 0x2e2f21c has v0 = one of ?, ret(__glColorTableModifiers).
  The return at 0x2e2f25c has v0 = ret(__glColorTableModifiers).
- `__glGetColorTableParameterv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2f350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2f350-0x2e2f4c4 (372 bytes).
  It occupies 372 bytes.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e2f3a0, `lwc1` at 0x2e2f3c0, `lwc1` at 0x2e2f3f0.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e2f3a4, `swc1` at 0x2e2f3c4, `swc1` at 0x2e2f3f8.
  2 such `lw` accesses load 4 bytes from ret(__glColorTableModifiers) +0x0, including `lw` at 0x2e2f48c, `lw` at 0x2e2f4b0.
  The `swc1` at 0x2e2f49c stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `sw` at 0x2e2f4b4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0x2e2f36c calls __glColorTableModifiers [0x2e2eed0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32.
  The `beq` branch at 0x2e2f378 targets 0x2e2f474, is taken when v0(=ret(__glColorTableModifiers)) == 0, and falls through when v0(=ret(__glColorTableModifiers)) != 0.
  The `beq` branch at 0x2e2f388 targets 0x2e2f484, is taken when a3(?) == at(=0x1), and falls through when a3(?) != at(=0x1).
  The `beq` branch at 0x2e2f390 targets 0x2e2f3e0, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `blez` branch at 0x2e2f398 targets 0x2e2f3e0, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x2e2f3b8 targets 0x2e2f3e0, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x2e2f3d8 targets 0x2e2f3a0, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `beq` branch at 0x2e2f3e0 targets 0x2e2f474, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The `blez` branch at 0x2e2f3e8 targets 0x2e2f474, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x2e2f408 targets 0x2e2f474, is taken when a2(?) >= a1(?) (signed), and falls through when a2(?) < a1(?) (signed).
  The `beq` branch at 0x2e2f428 targets 0x2e2f474, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `beq` branch at 0x2e2f448 targets 0x2e2f474, is taken when a2(?) >= a4(?) (signed), and falls through when a2(?) < a4(?) (signed).
  The `bne` branch at 0x2e2f46c targets 0x2e2f3f0, is taken when a2(?) < a5(?) (signed), and falls through when a2(?) >= a5(?) (signed).
  The `beq` branch at 0x2e2f484 targets 0x2e2f4a8, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `bne` branch at 0x2e2f498 targets 0x2e2f4ac, is taken when s0(=a3) != 0, and falls through when s0(=a3) == 0.
  The `beq` branch at 0x2e2f4a0 targets 0x2e2f478 and is always taken.
  The `beq` branch at 0x2e2f4a8 targets 0x2e2f474, is taken when s0(=a3) == 0, and falls through when s0(=a3) != 0.
  The return at 0x2e2f47c has v0 = one of ?, ret(__glColorTableModifiers).
  The return at 0x2e2f4bc has v0 = ret(__glColorTableModifiers).
- `__glInitColorTables` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fc70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2fc70-0x2e2fd5c (236 bytes).
  It occupies 236 bytes.
  The `sw` at 0x2e2fc74 stores 4 bytes to a0 (arg0 at entry) +0x1a48.
  The `sw` at 0x2e2fc7c stores 4 bytes to a0 (arg0 at entry) +0x1a38.
  The `sw` at 0x2e2fc80 stores 4 bytes to a0 (arg0 at entry) +0x19f0.
  The `sw` at 0x2e2fc88 stores 4 bytes to a0 (arg0 at entry) +0x19e0.
  The `sw` at 0x2e2fc8c stores 4 bytes to a0 (arg0 at entry) +0x1998.
  The `sw` at 0x2e2fc94 stores 4 bytes to a0 (arg0 at entry) +0x1988.
  The `sw` at 0x2e2fc98 stores 4 bytes to a0 (arg0 at entry) +0x1940.
  The `sw` at 0x2e2fca0 stores 4 bytes to a0 (arg0 at entry) +0x1930.
  The `sw` at 0x2e2fca4 stores 4 bytes to a0 (arg0 at entry) +0x18e8.
  The `sw` at 0x2e2fcac stores 4 bytes to a0 (arg0 at entry) +0x18d8.
  The `sw` at 0x2e2fcb0 stores 4 bytes to a0 (arg0 at entry) +0x1890.
  The `sw` at 0x2e2fcb8 stores 4 bytes to a0 (arg0 at entry) +0x1880.
  The `sw` at 0x2e2fcbc stores 4 bytes to a0 (arg0 at entry) +0x1838.
  The `sw` at 0x2e2fcc4 stores 4 bytes to a0 (arg0 at entry) +0x1828.
  The `sw` at 0x2e2fcc8 stores 4 bytes to a0 (arg0 at entry) +0x17e0.
  The `lwc1` at 0x2e2fccc loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `sw` at 0x2e2fcd4 stores 4 bytes to a0 (arg0 at entry) +0x17d0.
  The `swc1` at 0x2e2fcd8 stores 4 bytes to a0 (arg0 at entry) +0x1a74.
  The `swc1` at 0x2e2fcdc stores 4 bytes to a0 (arg0 at entry) +0x1a70.
  The `swc1` at 0x2e2fce0 stores 4 bytes to a0 (arg0 at entry) +0x1a6c.
  The `swc1` at 0x2e2fce4 stores 4 bytes to a0 (arg0 at entry) +0x1a68.
  The `swc1` at 0x2e2fce8 stores 4 bytes to a0 (arg0 at entry) +0x1a1c.
  The `swc1` at 0x2e2fcec stores 4 bytes to a0 (arg0 at entry) +0x1a18.
  The `swc1` at 0x2e2fcf0 stores 4 bytes to a0 (arg0 at entry) +0x1a14.
  The `swc1` at 0x2e2fcf4 stores 4 bytes to a0 (arg0 at entry) +0x1a10.
  The `swc1` at 0x2e2fcf8 stores 4 bytes to a0 (arg0 at entry) +0x19c4.
  The `swc1` at 0x2e2fcfc stores 4 bytes to a0 (arg0 at entry) +0x19c0.
  The `swc1` at 0x2e2fd00 stores 4 bytes to a0 (arg0 at entry) +0x19bc.
  The `swc1` at 0x2e2fd04 stores 4 bytes to a0 (arg0 at entry) +0x19b8.
  The `swc1` at 0x2e2fd08 stores 4 bytes to a0 (arg0 at entry) +0x196c.
  The `swc1` at 0x2e2fd0c stores 4 bytes to a0 (arg0 at entry) +0x1968.
  The `swc1` at 0x2e2fd10 stores 4 bytes to a0 (arg0 at entry) +0x1964.
  The `swc1` at 0x2e2fd14 stores 4 bytes to a0 (arg0 at entry) +0x1960.
  The `swc1` at 0x2e2fd18 stores 4 bytes to a0 (arg0 at entry) +0x1914.
  The `swc1` at 0x2e2fd1c stores 4 bytes to a0 (arg0 at entry) +0x1910.
  The `swc1` at 0x2e2fd20 stores 4 bytes to a0 (arg0 at entry) +0x190c.
  The `swc1` at 0x2e2fd24 stores 4 bytes to a0 (arg0 at entry) +0x1908.
  The `swc1` at 0x2e2fd28 stores 4 bytes to a0 (arg0 at entry) +0x18bc.
  The `swc1` at 0x2e2fd2c stores 4 bytes to a0 (arg0 at entry) +0x18b8.
  The `swc1` at 0x2e2fd30 stores 4 bytes to a0 (arg0 at entry) +0x18b4.
  The `swc1` at 0x2e2fd34 stores 4 bytes to a0 (arg0 at entry) +0x18b0.
  The `swc1` at 0x2e2fd38 stores 4 bytes to a0 (arg0 at entry) +0x1864.
  The `swc1` at 0x2e2fd3c stores 4 bytes to a0 (arg0 at entry) +0x1860.
  The `swc1` at 0x2e2fd40 stores 4 bytes to a0 (arg0 at entry) +0x185c.
  The `swc1` at 0x2e2fd44 stores 4 bytes to a0 (arg0 at entry) +0x1858.
  The `swc1` at 0x2e2fd48 stores 4 bytes to a0 (arg0 at entry) +0x180c.
  The `swc1` at 0x2e2fd4c stores 4 bytes to a0 (arg0 at entry) +0x1808.
  The `swc1` at 0x2e2fd50 stores 4 bytes to a0 (arg0 at entry) +0x1804.
  The `swc1` at 0x2e2fd58 stores 4 bytes to a0 (arg0 at entry) +0x1800.
  The return at 0x2e2fd54 has v0 = 0x1908.
- `__glFreeColorTables` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fd60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2fd60-0x2e2fdd4 (116 bytes).
  It occupies 116 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x2e2fd74, `ld` at 0x2e2fd90, `ld` at 0x2e2fda0.
  The `ld` at 0x2e2fd78 loads 8 bytes from a0 (arg0 at entry) +0x17d8.
  The `ld` at 0x2e2fd9c loads 8 bytes from a0 (arg0 at entry) +0x1888.
  The `ld` at 0x2e2fdac loads 8 bytes from a0 (arg0 at entry) +0x1938.
  The `ld` at 0x2e2fdbc loads 8 bytes from a0 (arg0 at entry) +0x19e8.
  The `jalr` at 0x2e2fd88 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+6104]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e2fd98 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+6280]:8, a2=?, a3=?.
  The `jalr` at 0x2e2fda8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+6456]:8, a2=?, a3=?.
  The `jalr` at 0x2e2fdb8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+6632]:8, a2=?, a3=?.
  The return at 0x2e2fdcc has v0 = ret(?).
- `__glCopyColorTableScaleBias` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fde0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2fde0-0x2e2ffe4 (516 bytes).
  It occupies 516 bytes.
  The `lwc1` at 0x2e2fde0 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `swc1` at 0x2e2fde4 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `lwc1` at 0x2e2fde8 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `swc1` at 0x2e2fdec stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `lwc1` at 0x2e2fdf0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `swc1` at 0x2e2fdf4 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `lwc1` at 0x2e2fdf8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `swc1` at 0x2e2fdfc stores 4 bytes to a1 (arg1 at entry) +0x3c.
  The `lwc1` at 0x2e2fe00 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `swc1` at 0x2e2fe04 stores 4 bytes to a1 (arg1 at entry) +0x40.
  The `lwc1` at 0x2e2fe08 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `swc1` at 0x2e2fe0c stores 4 bytes to a1 (arg1 at entry) +0x44.
  The `lwc1` at 0x2e2fe10 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `swc1` at 0x2e2fe14 stores 4 bytes to a1 (arg1 at entry) +0x48.
  The `lwc1` at 0x2e2fe18 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `swc1` at 0x2e2fe1c stores 4 bytes to a1 (arg1 at entry) +0x4c.
  The `lwc1` at 0x2e2fe20 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `swc1` at 0x2e2fe24 stores 4 bytes to a1 (arg1 at entry) +0x88.
  The `lwc1` at 0x2e2fe28 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `swc1` at 0x2e2fe2c stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `lwc1` at 0x2e2fe30 loads 4 bytes from a0 (arg0 at entry) +0x90.
  The `swc1` at 0x2e2fe34 stores 4 bytes to a1 (arg1 at entry) +0x90.
  The `lwc1` at 0x2e2fe38 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `swc1` at 0x2e2fe3c stores 4 bytes to a1 (arg1 at entry) +0x94.
  The `lwc1` at 0x2e2fe40 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `swc1` at 0x2e2fe44 stores 4 bytes to a1 (arg1 at entry) +0x98.
  The `lwc1` at 0x2e2fe48 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `swc1` at 0x2e2fe4c stores 4 bytes to a1 (arg1 at entry) +0x9c.
  The `lwc1` at 0x2e2fe50 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `swc1` at 0x2e2fe54 stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `lwc1` at 0x2e2fe58 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `swc1` at 0x2e2fe5c stores 4 bytes to a1 (arg1 at entry) +0xa4.
  The `lwc1` at 0x2e2fe60 loads 4 bytes from a0 (arg0 at entry) +0xe0.
  The `swc1` at 0x2e2fe64 stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `lwc1` at 0x2e2fe68 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `swc1` at 0x2e2fe6c stores 4 bytes to a1 (arg1 at entry) +0xe4.
  The `lwc1` at 0x2e2fe70 loads 4 bytes from a0 (arg0 at entry) +0xe8.
  The `swc1` at 0x2e2fe74 stores 4 bytes to a1 (arg1 at entry) +0xe8.
  The `lwc1` at 0x2e2fe78 loads 4 bytes from a0 (arg0 at entry) +0xec.
  The `swc1` at 0x2e2fe7c stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `lwc1` at 0x2e2fe80 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `swc1` at 0x2e2fe84 stores 4 bytes to a1 (arg1 at entry) +0xf0.
  The `lwc1` at 0x2e2fe88 loads 4 bytes from a0 (arg0 at entry) +0xf4.
  The `swc1` at 0x2e2fe8c stores 4 bytes to a1 (arg1 at entry) +0xf4.
  The `lwc1` at 0x2e2fe90 loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `swc1` at 0x2e2fe94 stores 4 bytes to a1 (arg1 at entry) +0xf8.
  The `lwc1` at 0x2e2fe98 loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `swc1` at 0x2e2fe9c stores 4 bytes to a1 (arg1 at entry) +0xfc.
  The `lwc1` at 0x2e2fea0 loads 4 bytes from a0 (arg0 at entry) +0x138.
  The `swc1` at 0x2e2fea4 stores 4 bytes to a1 (arg1 at entry) +0x138.
  The `lwc1` at 0x2e2fea8 loads 4 bytes from a0 (arg0 at entry) +0x13c.
  The `swc1` at 0x2e2feac stores 4 bytes to a1 (arg1 at entry) +0x13c.
  The `lwc1` at 0x2e2feb0 loads 4 bytes from a0 (arg0 at entry) +0x140.
  The `swc1` at 0x2e2feb4 stores 4 bytes to a1 (arg1 at entry) +0x140.
  The `lwc1` at 0x2e2feb8 loads 4 bytes from a0 (arg0 at entry) +0x144.
  The `swc1` at 0x2e2febc stores 4 bytes to a1 (arg1 at entry) +0x144.
  The `lwc1` at 0x2e2fec0 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `swc1` at 0x2e2fec4 stores 4 bytes to a1 (arg1 at entry) +0x148.
  The `lwc1` at 0x2e2fec8 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `swc1` at 0x2e2fecc stores 4 bytes to a1 (arg1 at entry) +0x14c.
  The `lwc1` at 0x2e2fed0 loads 4 bytes from a0 (arg0 at entry) +0x150.
  The `swc1` at 0x2e2fed4 stores 4 bytes to a1 (arg1 at entry) +0x150.
  The `lwc1` at 0x2e2fed8 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x2e2fedc stores 4 bytes to a1 (arg1 at entry) +0x154.
  The `lwc1` at 0x2e2fee0 loads 4 bytes from a0 (arg0 at entry) +0x190.
  The `swc1` at 0x2e2fee4 stores 4 bytes to a1 (arg1 at entry) +0x190.
  The `lwc1` at 0x2e2fee8 loads 4 bytes from a0 (arg0 at entry) +0x194.
  The `swc1` at 0x2e2feec stores 4 bytes to a1 (arg1 at entry) +0x194.
  The `lwc1` at 0x2e2fef0 loads 4 bytes from a0 (arg0 at entry) +0x198.
  The `swc1` at 0x2e2fef4 stores 4 bytes to a1 (arg1 at entry) +0x198.
  The `lwc1` at 0x2e2fef8 loads 4 bytes from a0 (arg0 at entry) +0x19c.
  The `swc1` at 0x2e2fefc stores 4 bytes to a1 (arg1 at entry) +0x19c.
  The `lwc1` at 0x2e2ff00 loads 4 bytes from a0 (arg0 at entry) +0x1a0.
  The `swc1` at 0x2e2ff04 stores 4 bytes to a1 (arg1 at entry) +0x1a0.
  The `lwc1` at 0x2e2ff08 loads 4 bytes from a0 (arg0 at entry) +0x1a4.
  The `swc1` at 0x2e2ff0c stores 4 bytes to a1 (arg1 at entry) +0x1a4.
  The `lwc1` at 0x2e2ff10 loads 4 bytes from a0 (arg0 at entry) +0x1a8.
  The `swc1` at 0x2e2ff14 stores 4 bytes to a1 (arg1 at entry) +0x1a8.
  The `lwc1` at 0x2e2ff18 loads 4 bytes from a0 (arg0 at entry) +0x1ac.
  The `swc1` at 0x2e2ff1c stores 4 bytes to a1 (arg1 at entry) +0x1ac.
  The `lwc1` at 0x2e2ff20 loads 4 bytes from a0 (arg0 at entry) +0x1e8.
  The `swc1` at 0x2e2ff24 stores 4 bytes to a1 (arg1 at entry) +0x1e8.
  The `lwc1` at 0x2e2ff28 loads 4 bytes from a0 (arg0 at entry) +0x1ec.
  The `swc1` at 0x2e2ff2c stores 4 bytes to a1 (arg1 at entry) +0x1ec.
  The `lwc1` at 0x2e2ff30 loads 4 bytes from a0 (arg0 at entry) +0x1f0.
  The `swc1` at 0x2e2ff34 stores 4 bytes to a1 (arg1 at entry) +0x1f0.
  The `lwc1` at 0x2e2ff38 loads 4 bytes from a0 (arg0 at entry) +0x1f4.
  The `swc1` at 0x2e2ff3c stores 4 bytes to a1 (arg1 at entry) +0x1f4.
  The `lwc1` at 0x2e2ff40 loads 4 bytes from a0 (arg0 at entry) +0x1f8.
  The `swc1` at 0x2e2ff44 stores 4 bytes to a1 (arg1 at entry) +0x1f8.
  The `lwc1` at 0x2e2ff48 loads 4 bytes from a0 (arg0 at entry) +0x1fc.
  The `swc1` at 0x2e2ff4c stores 4 bytes to a1 (arg1 at entry) +0x1fc.
  The `lwc1` at 0x2e2ff50 loads 4 bytes from a0 (arg0 at entry) +0x200.
  The `swc1` at 0x2e2ff54 stores 4 bytes to a1 (arg1 at entry) +0x200.
  The `lwc1` at 0x2e2ff58 loads 4 bytes from a0 (arg0 at entry) +0x204.
  The `swc1` at 0x2e2ff5c stores 4 bytes to a1 (arg1 at entry) +0x204.
  The `lwc1` at 0x2e2ff60 loads 4 bytes from a0 (arg0 at entry) +0x240.
  The `swc1` at 0x2e2ff64 stores 4 bytes to a1 (arg1 at entry) +0x240.
  The `lwc1` at 0x2e2ff68 loads 4 bytes from a0 (arg0 at entry) +0x244.
  The `swc1` at 0x2e2ff6c stores 4 bytes to a1 (arg1 at entry) +0x244.
  The `lwc1` at 0x2e2ff70 loads 4 bytes from a0 (arg0 at entry) +0x248.
  The `swc1` at 0x2e2ff74 stores 4 bytes to a1 (arg1 at entry) +0x248.
  The `lwc1` at 0x2e2ff78 loads 4 bytes from a0 (arg0 at entry) +0x24c.
  The `swc1` at 0x2e2ff7c stores 4 bytes to a1 (arg1 at entry) +0x24c.
  The `lwc1` at 0x2e2ff80 loads 4 bytes from a0 (arg0 at entry) +0x250.
  The `swc1` at 0x2e2ff84 stores 4 bytes to a1 (arg1 at entry) +0x250.
  The `lwc1` at 0x2e2ff88 loads 4 bytes from a0 (arg0 at entry) +0x254.
  The `swc1` at 0x2e2ff8c stores 4 bytes to a1 (arg1 at entry) +0x254.
  The `lwc1` at 0x2e2ff90 loads 4 bytes from a0 (arg0 at entry) +0x258.
  The `swc1` at 0x2e2ff94 stores 4 bytes to a1 (arg1 at entry) +0x258.
  The `lwc1` at 0x2e2ff98 loads 4 bytes from a0 (arg0 at entry) +0x25c.
  The `swc1` at 0x2e2ff9c stores 4 bytes to a1 (arg1 at entry) +0x25c.
  The `lwc1` at 0x2e2ffa0 loads 4 bytes from a0 (arg0 at entry) +0x298.
  The `swc1` at 0x2e2ffa4 stores 4 bytes to a1 (arg1 at entry) +0x298.
  The `lwc1` at 0x2e2ffa8 loads 4 bytes from a0 (arg0 at entry) +0x29c.
  The `swc1` at 0x2e2ffac stores 4 bytes to a1 (arg1 at entry) +0x29c.
  The `lwc1` at 0x2e2ffb0 loads 4 bytes from a0 (arg0 at entry) +0x2a0.
  The `swc1` at 0x2e2ffb4 stores 4 bytes to a1 (arg1 at entry) +0x2a0.
  The `lwc1` at 0x2e2ffb8 loads 4 bytes from a0 (arg0 at entry) +0x2a4.
  The `swc1` at 0x2e2ffbc stores 4 bytes to a1 (arg1 at entry) +0x2a4.
  The `lwc1` at 0x2e2ffc0 loads 4 bytes from a0 (arg0 at entry) +0x2a8.
  The `swc1` at 0x2e2ffc4 stores 4 bytes to a1 (arg1 at entry) +0x2a8.
  The `lwc1` at 0x2e2ffc8 loads 4 bytes from a0 (arg0 at entry) +0x2ac.
  The `swc1` at 0x2e2ffcc stores 4 bytes to a1 (arg1 at entry) +0x2ac.
  The `lwc1` at 0x2e2ffd0 loads 4 bytes from a0 (arg0 at entry) +0x2b0.
  The `swc1` at 0x2e2ffd4 stores 4 bytes to a1 (arg1 at entry) +0x2b0.
  The `lwc1` at 0x2e2ffd8 loads 4 bytes from a0 (arg0 at entry) +0x2b4.
  The `swc1` at 0x2e2ffe0 stores 4 bytes to a1 (arg1 at entry) +0x2b4.
  The return at 0x2e2ffdc has v0 = ?.
- `__glDispatchExec` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e2fff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e2fff0-0x2e2fff8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2e2fff0 has v0 = a0+10656.
- `__glBeginDispatchOverride` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e30000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e30000-0x2e30104 (260 bytes).
  It occupies 260 bytes.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e30030, `ld` at 0x2e3004c, `ld` at 0x2e30060.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2e3003c, `sd` at 0x2e30054, `sd` at 0x2e30068.
  The `lw` at 0x2e300e8 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `sd` at 0x2e30100 stores 8 bytes to a0 (arg0 at entry) +0x1ad8.
  The `bne` branch at 0x2e30038 targets 0x2e30020, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x2e300e0 targets 0x2e30040, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x2e300ec targets 0x2e300fc, is taken when a2(=[a0+5440]) == 0, and falls through when a2(=[a0+5440]) != 0.
  The return at 0x2e300f4 has v0 = ?.
  The return at 0x2e300fc has v0 = ?.
- `__glEndDispatchOverride` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e30110 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e30110-0x2e3012c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0x2e30110 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `sd` at 0x2e30128 stores 8 bytes to a0 (arg0 at entry) +0x1ad8.
  The `beq` branch at 0x2e30114 targets 0x2e30124, is taken when at(=[a0+5440]) == 0, and falls through when at(=[a0+5440]) != 0.
  The return at 0x2e3011c has v0 = 0x1090.
  The return at 0x2e30124 has v0 = 0x1090.
- `__glDestroySoftContext` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e312d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e312d0-0x2e314f8 (552 bytes).
  It occupies 552 bytes.
  The `ld` at 0x2e312d0 loads 8 bytes from abs 0x1020.
  2 such `sd` accesses store 8 bytes to abs 0x1020, including `sd` at 0x2e312e4, `sd` at 0x2e314a4.
  The `ld` at 0x2e312ec loads 8 bytes from a0 (arg0 at entry) +0x9a00.
  10 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x2e31310, `ld` at 0x2e313b0, `ld` at 0x2e313c8.
  The `ld` at 0x2e31340 loads 8 bytes from a0 (arg0 at entry) +0x1ad0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x14c8, including `ld` at 0x2e3134c, `ld` at 0x2e314b4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4e28, including `ld` at 0x2e31358, `ld` at 0x2e314c4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8da0, including `ld` at 0x2e31364, `ld` at 0x2e314d4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8d38, including `ld` at 0x2e31370, `ld` at 0x2e314e4.
  The `ld` at 0x2e31384 loads 8 bytes from a0 (arg0 at entry) +0x8d70.
  The `ld` at 0x2e31398 loads 8 bytes from a0 (arg0 at entry) +0x8d98.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x730, including `ld` at 0x2e313a4, `ld` at 0x2e314f4.
  The `ld` at 0x2e313bc loads 8 bytes from a0 (arg0 at entry) +0x8d08.
  The `ld` at 0x2e313d4 loads 8 bytes from a0 (arg0 at entry) +0x1490.
  The `ld` at 0x2e313ec loads 8 bytes from a0 (arg0 at entry) +0x7d8.
  The `ld` at 0x2e31404 loads 8 bytes from a0 (arg0 at entry) +0x94b8.
  The `ld` at 0x2e3141c loads 8 bytes from a0 (arg0 at entry) +0x94c8.
  The `ld` at 0x2e31434 loads 8 bytes from a0 (arg0 at entry) +0x94e0.
  The `ld` at 0x2e3144c loads 8 bytes from a0 (arg0 at entry) +0x94f0.
  The `ld` at 0x2e31464 loads 8 bytes from a0 (arg0 at entry) +0x9500.
  The `jalr` at 0x2e31314 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+39424]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e31320 calls __glFreeColorTables [0x2e2fd60] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3132c calls __glFreeEvaluatorState [0x2e35ac0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e31338 calls __glFreePixelState [0x2df8050] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e3137c calls __glFreeSpecLUT [0x2e69a60] with a0=a0 at entry (arg0), a1=[a0+36152]:8, a2=?, a3=?.
  The `jalr` at 0x2e31390 calls __glFreeSpecLUT [0x2e69a60] with a0=a0 at entry (arg0), a1=[a0+36208]:8, a2=?, a3=?.
  The `jalr` at 0x2e313b4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1840]:8, a2=?, a3=?.
  The `jalr` at 0x2e313cc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+36104]:8, a2=?, a3=?.
  The `jalr` at 0x2e313e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+5264]:8, a2=?, a3=?.
  The `jalr` at 0x2e313fc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2008]:8, a2=?, a3=?.
  The `jalr` at 0x2e31414 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+38072]:8, a2=?, a3=?.
  The `jalr` at 0x2e3142c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+38088]:8, a2=?, a3=?.
  The `jalr` at 0x2e31444 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+38112]:8, a2=?, a3=?.
  The `jalr` at 0x2e3145c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+38128]:8, a2=?, a3=?.
  The `jalr` at 0x2e31474 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+38144]:8, a2=?, a3=?.
  The `jalr` at 0x2e314a8 calls __glFreeAsyncState [0x2e1f4d0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e314b8 calls __glFreeDlistState [0x2df19f0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e314c8 calls __glFreeAttributeState [0x2e275a0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e314d8 calls __glFreeTextureState [0x2e79570] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e314e8 calls __glFreeLUTCache [0x2e69580] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
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
  The `beq` branch at 0x2e314b0 targets 0x2e31350 and is always taken.
  The `beq` branch at 0x2e314c0 targets 0x2e3135c and is always taken.
  The `beq` branch at 0x2e314d0 targets 0x2e31368 and is always taken.
  The `beq` branch at 0x2e314e0 targets 0x2e31374 and is always taken.
  The `beq` branch at 0x2e314f0 targets 0x2e313a8 and is always taken.
  The return at 0x2e314a0 has v0 = one of ?, ret(?).
- `__glFreePrivate` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31500-0x2e315d0 (208 bytes).
  It occupies 208 bytes.
  The `ld` at 0x2e31508 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ld` at 0x2e31528 loads 8 bytes from [a0+56]:8 +0x20.
  The `ld` at 0x2e31540 loads 8 bytes from [a0+56]:8 +0x40.
  The `ld` at 0x2e31554 loads 8 bytes from [a0+56]:8 +0xc8.
  The `ld` at 0x2e31568 loads 8 bytes from [a0+56]:8 +0x88.
  The `ld` at 0x2e3157c loads 8 bytes from [a0+56]:8 +0x68.
  The `ld` at 0x2e31590 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sd` at 0x2e315a8 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0x2e315ac stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `jalr` at 0x2e31538 calls (unknown callee) with a0=[a0+56]:8+8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e3154c calls (unknown callee) with a0=[a0+56]:8+40, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31560 calls (unknown callee) with a0=[a0+56]:8+176, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31574 calls (unknown callee) with a0=[a0+56]:8+112, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31588 calls (unknown callee) with a0=[a0+56]:8+80, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31594 calls (unknown callee) with a0=[a0+56]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e31520 targets 0x2e315bc, is taken when s0(=[a0+56]:8) == 0, and falls through when s0(=[a0+56]:8) != 0.
  The `beq` branch at 0x2e3152c targets 0x2e31540, is taken when t9(=[[a0+56]:8+32]:8) == 0, and falls through when t9(=[[a0+56]:8+32]:8) != 0.
  The `beq` branch at 0x2e31544 targets 0x2e31554, is taken when t9(=[[a0+56]:8+64]:8) == 0, and falls through when t9(=[[a0+56]:8+64]:8) != 0.
  The `beq` branch at 0x2e31558 targets 0x2e31568, is taken when t9(=[[a0+56]:8+200]:8) == 0, and falls through when t9(=[[a0+56]:8+200]:8) != 0.
  The `beq` branch at 0x2e3156c targets 0x2e3157c, is taken when t9(=[[a0+56]:8+136]:8) == 0, and falls through when t9(=[[a0+56]:8+136]:8) != 0.
  The `beq` branch at 0x2e31580 targets 0x2e31590, is taken when t9(=[[a0+56]:8+104]:8) == 0, and falls through when t9(=[[a0+56]:8+104]:8) != 0.
  The return at 0x2e315b4 has v0 = ret(?).
  The return at 0x2e315c8 has v0 = ?.
- `FillBufferInfo` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31a50-0x2e31aa0 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x2e31a50 loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `sd` at 0x2e31a78 stores 8 bytes to ret(?) +0x68.
  The `sd` at 0x2e31a7c stores 8 bytes to ret(?) +0x88.
  The `sd` at 0x2e31a80 stores 8 bytes to ret(?) +0xc8.
  The `sd` at 0x2e31a84 stores 8 bytes to ret(?) +0x40.
  The `sd` at 0x2e31a8c stores 8 bytes to ret(?) +0x20.
  The `sd` at 0x2e31a90 stores 8 bytes to a1 (arg1 at entry) +0x30.
  The `jalr` at 0x2e31a68 calls (unknown callee) with a0=0x1, a1=0xd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e31a98 has v0 = ret(?).
- `__glMakeCurrentBuffers` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31aa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31aa0-0x2e31c10 (368 bytes).
  It occupies 368 bytes.
  The `ld` at 0x2e31abc loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sd` at 0x2e31ae0 stores 8 bytes to a0 (arg0 at entry) +0x9ea0.
  2 such `ld` accesses load 8 bytes from ret(?) +0x38, including `ld` at 0x2e31ae8, `ld` at 0x2e31afc.
  The `lw` at 0x2e31b00 loads 4 bytes from [ret(?)+56]:8 +0x48.
  The `sw` at 0x2e31b04 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x2e31b08 loads 4 bytes from [ret(?)+56]:8 +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xfd8, including `sw` at 0x2e31b0c, `sw` at 0x2e31c04.
  The `lw` at 0x2e31b10 loads 4 bytes from [ret(?)+56]:8 +0x4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xfdc, including `sw` at 0x2e31b14, `sw` at 0x2e31bf8.
  The `ld` at 0x2e31b18 loads 8 bytes from a0 (arg0 at entry) +0x99b8.
  The `lbu` at 0x2e31b30 loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x2e31b3c loads 8 bytes from a0 (arg0 at entry) +0x9b08.
  The `lbu` at 0x2e31b54 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x2e31b64 loads 8 bytes from a0 (arg0 at entry) +0x9e08.
  The `lbu` at 0x2e31b7c loads 1 byte from a0 (arg0 at entry) +0xde9.
  The `ld` at 0x2e31b88 loads 8 bytes from a0 (arg0 at entry) +0x9d38.
  The `lbu` at 0x2e31ba0 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x2e31bac loads 8 bytes from a0 (arg0 at entry) +0x9c60.
  The `sd` at 0x2e31bf4 stores 8 bytes to ret(?) +0x38.
  The `jalr` at 0x2e31ad0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2e31b28 calls (unknown callee) with a0=a0+39288, a1=[ret(?)+56]:8+8, a2=a0 at entry (arg0), a3=[[ret(?)+56]:8+72].
  The `jalr` at 0x2e31b4c calls (unknown callee) with a0=a0+39624, a1=[ret(?)+56]:8+40, a2=a0 at entry (arg0), a3=?, a4=[a0+3558]:1.
  The `jalr` at 0x2e31b74 calls (unknown callee) with a0=a0+40392, a1=[ret(?)+56]:8+176, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x2e31b98 calls (unknown callee) with a0=a0+40184, a1=[ret(?)+56]:8+112, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x2e31bbc calls (unknown callee) with a0=a0+39968, a1=[ret(?)+56]:8+80, a2=a0 at entry (arg0), a3=?.
  The `bgezall` at 0x2e31bec calls FillBufferInfo [0x2e31a50] with a0=a0 at entry (arg0), a1=ret(?), a2=?, a3=?.
  The `beq` branch at 0x2e31aec targets 0x2e31be4, is taken when v0(=[ret(?)+56]:8) == 0, and falls through when v0(=[ret(?)+56]:8) != 0.
  The `beq` branch at 0x2e31b34 targets 0x2e31b54, is taken when a4(=[a0+3558]:1) == 0, and falls through when a4(=[a0+3558]:1) != 0.
  The `beq` branch at 0x2e31b5c targets 0x2e31b7c, is taken when a1(=[a0+3560]:1) == 0, and falls through when a1(=[a0+3560]:1) != 0.
  The `beq` branch at 0x2e31b80 targets 0x2e31ba0, is taken when a1(=[a0+3561]:1) == 0, and falls through when a1(=[a0+3561]:1) != 0.
  The `beq` branch at 0x2e31ba4 targets 0x2e31bc4, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x2e31c08 targets 0x2e31afc and is always taken.
  The return at 0x2e31bdc has v0 = one of 0x0, 0x1.
- `__glLoseCurrentBuffers` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31c10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31c10-0x2e31d08 (248 bytes).
  It occupies 248 bytes.
  The `ld` at 0x2e31c20 loads 8 bytes from a0 (arg0 at entry) +0x9ea0.
  The `ld` at 0x2e31c24 loads 8 bytes from [a0+40608]:8 +0x38.
  The `sw` at 0x2e31c2c stores 4 bytes to [[a0+40608]:8+56]:8 +0x48.
  The `lw` at 0x2e31c30 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `sw` at 0x2e31c34 stores 4 bytes to [[a0+40608]:8+56]:8 +0x0.
  The `lw` at 0x2e31c3c loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `sw` at 0x2e31c44 stores 4 bytes to [[a0+40608]:8+56]:8 +0x4.
  The `ld` at 0x2e31c4c loads 8 bytes from a0 (arg0 at entry) +0x99c0.
  The `lbu` at 0x2e31c6c loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x2e31c78 loads 8 bytes from a0 (arg0 at entry) +0x9b10.
  The `lbu` at 0x2e31c8c loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x2e31c98 loads 8 bytes from a0 (arg0 at entry) +0x9e10.
  The `lbu` at 0x2e31cac loads 1 byte from a0 (arg0 at entry) +0xde9.
  The `ld` at 0x2e31cb8 loads 8 bytes from a0 (arg0 at entry) +0x9d40.
  The `lbu` at 0x2e31ccc loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x2e31cd8 loads 8 bytes from a0 (arg0 at entry) +0x9c68.
  The `jalr` at 0x2e31c64 calls (unknown callee) with a0=a0+39288, a1=a0 at entry (arg0), a2=[[a0+40608]:8+56]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x2e31c84 calls (unknown callee) with a0=a0+39624, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31ca4 calls (unknown callee) with a0=a0+40392, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31cc4 calls (unknown callee) with a0=a0+40184, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31ce4 calls (unknown callee) with a0=a0+39968, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x2e31c70 targets 0x2e31c8c, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x2e31c90 targets 0x2e31cac, is taken when a1(=[a0+3560]:1) == 0, and falls through when a1(=[a0+3560]:1) != 0.
  The `beq` branch at 0x2e31cb0 targets 0x2e31ccc, is taken when a1(=[a0+3561]:1) == 0, and falls through when a1(=[a0+3561]:1) != 0.
  The `beq` branch at 0x2e31cd0 targets 0x2e31cf0, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The return at 0x2e31d00 has v0 = 0x1.
- `__glFreeBufData` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31d10-0x2e31de0 (208 bytes).
  It occupies 208 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x99e0, including `ld` at 0x2e31d20, `ld` at 0x2e31dc4.
  The `ld` at 0x2e31d58 loads 8 bytes from a0 (arg0 at entry) +0x9b30.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9c88, including `ld` at 0x2e31d64, `ld` at 0x2e31ddc.
  The `ld` at 0x2e31d7c loads 8 bytes from a0 (arg0 at entry) +0x9d60.
  The `ld` at 0x2e31d94 loads 8 bytes from a0 (arg0 at entry) +0x9e30.
  The `jalr` at 0x2e31d50 calls (unknown callee) with a0=a0+39288, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=[a0+39392]:8.
  The `jalr` at 0x2e31d74 calls (unknown callee) with a0=a0+39968, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31d8c calls (unknown callee) with a0=a0+40184, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31da4 calls (unknown callee) with a0=a0+40392, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x2e31dd0 calls (unknown callee) with a0=a0+39624, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x2e31d3c targets 0x2e31d58, is taken when a3(=[a0+39392]:8) == 0, and falls through when a3(=[a0+39392]:8) != 0.
  The `bne` branch at 0x2e31d5c targets 0x2e31dc4, is taken when a1(=[a0+39728]:8) != 0, and falls through when a1(=[a0+39728]:8) == 0.
  The `beq` branch at 0x2e31d68 targets 0x2e31d7c, is taken when t9(=[a0+40072]:8) == 0, and falls through when t9(=[a0+40072]:8) != 0.
  The `beq` branch at 0x2e31d80 targets 0x2e31d94, is taken when t9(=[a0+40288]:8) == 0, and falls through when t9(=[a0+40288]:8) != 0.
  The `beq` branch at 0x2e31d98 targets 0x2e31dac, is taken when t9(=[a0+40496]:8) == 0, and falls through when t9(=[a0+40496]:8) != 0.
  The `beq` branch at 0x2e31dd8 targets 0x2e31d68 and is always taken.
  The return at 0x2e31dbc has v0 = one of ?, ret(?).
- `__glCheckConvolutionFilterArgs` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e31de0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e31de0-0x2e32618 (2104 bytes).
  It occupies 2104 bytes.
  The `lw` at 0x2e31e8c loads 4 bytes from a5 (arg5 at entry) +0x0.
  6 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x2e31f28, `sw` at 0x2e31f44, `sw` at 0x2e32150.
  The `lw` at 0x2e320ac loads 4 bytes from a0 (arg0 at entry) +0x4b0.
  The `lw` at 0x2e320bc loads 4 bytes from a0 (arg0 at entry) +0x4b4.
  The `lw` at 0x2e32218 loads 4 bytes from a0 (arg0 at entry) +0x400.
  The `lw` at 0x2e32268 loads 4 bytes from a0 (arg0 at entry) +0x458.
  The `lw` at 0x2e32278 loads 4 bytes from a0 (arg0 at entry) +0x45c.
  The `bgezall` at 0x2e31fec calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x1907, a7=0x80e0.
  The `bgezall` at 0x2e3204c calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32090 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32118 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32228 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e3224c calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e3228c calls __glSetError [0x2e315d0] with a0=0x501, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e322a4 calls __glSetError [0x2e315d0] with a0=0x501, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32378 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2e32398 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x2e31df4 targets 0x2e32394, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x2e31dfc targets 0x2e32394, is taken when a3 < 0 (signed), and falls through when a3 >= 0 (signed).
  The `bne` branch at 0x2e31e04 targets 0x2e31e50, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x2e31e10 targets 0x2e31e8c, is taken when a4 < 0x1909 (unsigned), and falls through when a4 >= 0x1909 (unsigned).
  The `bne` branch at 0x2e31e1c targets 0x2e32154, is taken when a4 < v0(=0x8000) (unsigned), and falls through when a4 >= v0(=0x8000) (unsigned).
  The `beq` branch at 0x2e31e28 targets 0x2e31e8c, is taken when v0(=0x8000) >= a4 (unsigned), and falls through when v0(=0x8000) < a4 (unsigned).
  The `bne` branch at 0x2e31e34 targets 0x2e323e0, is taken when a4 < v0(=0x80e1) (unsigned), and falls through when a4 >= v0(=0x80e1) (unsigned).
  The `beq` branch at 0x2e31e40 targets 0x2e31e8c, is taken when v0(=0x80e1) >= a4 (unsigned), and falls through when v0(=0x80e1) < a4 (unsigned).
  The `beq` branch at 0x2e31e48 targets 0x2e32118 and is always taken.
  The `bne` branch at 0x2e31e50 targets 0x2e31e7c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e31e5c targets 0x2e31e8c, is taken when a4 < 0x1906 (unsigned), and falls through when a4 >= 0x1906 (unsigned).
  The `bne` branch at 0x2e31e64 targets 0x2e322d0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x2e31e6c targets 0x2e31e8c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2e31e74 targets 0x2e32118 and is always taken.
  The `bne` branch at 0x2e31e7c targets 0x2e32110, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x2e31e84 targets 0x2e32118, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x2e31e98 targets 0x2e31f04, is taken when v0(=[a5]) < t1(=0x8048) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8048) (unsigned).
  The `beq` branch at 0x2e31ea0 targets 0x2e31f44, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x2e31eb0 targets 0x2e32170, is taken when v0(=[a5]) < t1(=0x8052) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8052) (unsigned).
  The `beq` branch at 0x2e31eb8 targets 0x2e321e8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2e31ec8 targets 0x2e323b4, is taken when v0(=[a5]) < t1(=0x8057) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8057) (unsigned).
  The `beq` branch at 0x2e31ed0 targets 0x2e3214c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x2e31ee0 targets 0x2e325b4, is taken when v0(=[a5]) < t1(=0x805a) (unsigned), and falls through when v0(=[a5]) >= t1(=0x805a) (unsigned).
  The `beq` branch at 0x2e31ee8 targets 0x2e3214c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x2e31ef4 targets 0x2e3214c, is taken when v0(=[a5]) == t8(=0x805b), and falls through when v0(=[a5]) != t8(=0x805b).
  The `beq` branch at 0x2e31efc targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e31f0c targets 0x2e31f2c, is taken when v0(=[a5]) < t1(=0x803e) (unsigned), and falls through when v0(=[a5]) >= t1(=0x803e) (unsigned).
  The `bne` branch at 0x2e31f18 targets 0x2e32194, is taken when t1(=0x803e) < v0(=[a5]) (unsigned), and falls through when t1(=0x803e) >= v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e31f24 targets 0x2e31f48 and is always taken.
  The `bne` branch at 0x2e31f2c targets 0x2e32134, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e31f38 targets 0x2e322e0, is taken when v0(=[a5]) >= 0x190b (unsigned), and falls through when v0(=[a5]) < 0x190b (unsigned).
  The `bne` branch at 0x2e31f50 targets 0x2e31fa4, is taken when a6 < v0(=0x8034) (unsigned), and falls through when a6 >= v0(=0x8034) (unsigned).
  The `beq` branch at 0x2e31f5c targets 0x2e32028, is taken when v0(=0x8034) >= a6 (unsigned), and falls through when v0(=0x8034) < a6 (unsigned).
  The `bne` branch at 0x2e31f6c targets 0x2e321f0, is taken when a6 < v0(=0x8364) (unsigned), and falls through when a6 >= v0(=0x8364) (unsigned).
  The `beq` branch at 0x2e31f74 targets 0x2e31fd0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x2e31f80 targets 0x2e32480, is taken when a6 < v0(=0x8367) (unsigned), and falls through when a6 >= v0(=0x8367) (unsigned).
  The `beq` branch at 0x2e31f88 targets 0x2e32028, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2e31f94 targets 0x2e32028, is taken when a6 == ra(=0x8368), and falls through when a6 != ra(=0x8368).
  The `beq` branch at 0x2e31f9c targets 0x2e3224c and is always taken.
  The `bne` branch at 0x2e31fa4 targets 0x2e320e8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x2e31fb0 targets 0x2e32078, is taken when a6 < 0x1405 (unsigned), and falls through when a6 >= 0x1405 (unsigned).
  The `bne` branch at 0x2e31fc0 targets 0x2e3233c, is taken when a6 < v0(=0x8032) (unsigned), and falls through when a6 >= v0(=0x8032) (unsigned).
  The `bne` branch at 0x2e31fc8 targets 0x2e324b4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e31fd4 targets 0x2e32078, is taken when a4 == a6(=0x1907), and falls through when a4 != a6(=0x1907).
  The `beq` branch at 0x2e31fe0 targets 0x2e32078, is taken when a4 == a7(=0x80e0), and falls through when a4 != a7(=0x80e0).
  The `bne` branch at 0x2e32010 targets 0x2e324a4, is taken when a6 < v0(=0x8036) (unsigned), and falls through when a6 >= v0(=0x8036) (unsigned).
  The `bne` branch at 0x2e3201c targets 0x2e3224c, is taken when v0(=0x8036) < a6 (unsigned), and falls through when v0(=0x8036) >= a6 (unsigned).
  The `beq` branch at 0x2e32028 targets 0x2e32078, is taken when a4 == t2(=0x1908), and falls through when a4 != t2(=0x1908).
  The `beq` branch at 0x2e32034 targets 0x2e32078, is taken when a4 == t3(=0x8000), and falls through when a4 != t3(=0x8000).
  The `beq` branch at 0x2e32040 targets 0x2e32078, is taken when a4 == t8(=0x80e1), and falls through when a4 != t8(=0x80e1).
  The `bne` branch at 0x2e32068 targets 0x2e3223c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x2e32070 targets 0x2e32248, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2e32078 targets 0x2e32218, is taken when a1 == ra(=0x8010), and falls through when a1 != ra(=0x8010).
  The `beq` branch at 0x2e32080 targets 0x2e32268, is taken when a1 == at(=0x8011), and falls through when a1 != at(=0x8011).
  The `beq` branch at 0x2e32088 targets 0x2e320ac, is taken when a1 == v0(=0x8012), and falls through when a1 != v0(=0x8012).
  The `bne` branch at 0x2e320b4 targets 0x2e322a4, is taken when v1(=[a0+1200]) < a2 (signed), and falls through when v1(=[a0+1200]) >= a2 (signed).
  The `bne` branch at 0x2e320c4 targets 0x2e322a0, is taken when a1(=[a0+1204]) < a3 (signed), and falls through when a1(=[a0+1204]) >= a3 (signed).
  The `bne` branch at 0x2e320e8 targets 0x2e32068, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x2e320f4 targets 0x2e32078, is taken when a6 < 0x1403 (unsigned), and falls through when a6 >= 0x1403 (unsigned).
  The `beq` branch at 0x2e32100 targets 0x2e32078, is taken when a6 == a5(=0x1403), and falls through when a6 != a5(=0x1403).
  The `beq` branch at 0x2e32108 targets 0x2e3224c and is always taken.
  The `beq` branch at 0x2e32110 targets 0x2e31e8c, is taken when a4 == a7(=0x1903), and falls through when a4 != a7(=0x1903).
  The `bne` branch at 0x2e32134 targets 0x2e321d4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e32140 targets 0x2e3235c, is taken when v0(=[a5]) >= 0x1909 (unsigned), and falls through when v0(=[a5]) < 0x1909 (unsigned).
  The `beq` branch at 0x2e3214c targets 0x2e31f48 and is always taken.
  The `bne` branch at 0x2e32154 targets 0x2e322c0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x2e32160 targets 0x2e31e8c, is taken when a4 < 0x190b (unsigned), and falls through when a4 >= 0x190b (unsigned).
  The `beq` branch at 0x2e32168 targets 0x2e32118 and is always taken.
  The `bne` branch at 0x2e32178 targets 0x2e322fc, is taken when v0(=[a5]) < t1(=0x804d) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804d) (unsigned).
  The `bne` branch at 0x2e32180 targets 0x2e323f0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x2e3218c targets 0x2e31f48 and is always taken.
  The `bne` branch at 0x2e32198 targets 0x2e3231c, is taken when v0(=[a5]) < t1(=0x8043) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8043) (unsigned).
  The `beq` branch at 0x2e321a0 targets 0x2e31f44, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e321b0 targets 0x2e32540, is taken when v0(=[a5]) < t1(=0x8046) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8046) (unsigned).
  The `beq` branch at 0x2e321b8 targets 0x2e31f44, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2e321c4 targets 0x2e31f44, is taken when v0(=[a5]) == t0(=0x8047), and falls through when v0(=[a5]) != t0(=0x8047).
  The `beq` branch at 0x2e321cc targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e321d4 targets 0x2e3236c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e321dc targets 0x2e32378, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x2e321e8 targets 0x2e31f48 and is always taken.
  The `bne` branch at 0x2e321f8 targets 0x2e32008, is taken when a6 < v0(=0x8362) (unsigned), and falls through when a6 >= v0(=0x8362) (unsigned).
  The `beq` branch at 0x2e32200 targets 0x2e31fd0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2e32208 targets 0x2e31fd4, is taken when a6 == ra(=0x8363), and falls through when a6 != ra(=0x8363).
  The `beq` branch at 0x2e32210 targets 0x2e3224c and is always taken.
  The `beq` branch at 0x2e32220 targets 0x2e320c8, is taken when at(=[a0+1024]) >= a2 (signed), and falls through when at(=[a0+1024]) < a2 (signed).
  The `beq` branch at 0x2e32234 targets 0x2e320dc and is always taken.
  The `beq` branch at 0x2e32240 targets 0x2e32078, is taken when a6 == v0(=0x1400), and falls through when a6 != v0(=0x1400).
  The `bne` branch at 0x2e32270 targets 0x2e3228c, is taken when v1(=[a0+1112]) < a2 (signed), and falls through when v1(=[a0+1112]) >= a2 (signed).
  The `beq` branch at 0x2e32280 targets 0x2e320cc, is taken when a1(=[a0+1116]) >= a3 (signed), and falls through when a1(=[a0+1116]) < a3 (signed).
  The `beq` branch at 0x2e32298 targets 0x2e320dc and is always taken.
  The `beq` branch at 0x2e322c0 targets 0x2e31e8c, is taken when a4 == a7(=0x1909), and falls through when a4 != a7(=0x1909).
  The `beq` branch at 0x2e322c8 targets 0x2e32118 and is always taken.
  The `beq` branch at 0x2e322d0 targets 0x2e31e8c, is taken when a4 == t0(=0x1906), and falls through when a4 != t0(=0x1906).
  The `beq` branch at 0x2e322d8 targets 0x2e32118 and is always taken.
  The `bne` branch at 0x2e322e4 targets 0x2e32438, is taken when v0(=[a5]) < t1(=0x803c) (unsigned), and falls through when v0(=[a5]) >= t1(=0x803c) (unsigned).
  The `bne` branch at 0x2e322ec targets 0x2e32564, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2e322f4 targets 0x2e31f24 and is always taken.
  The `bne` branch at 0x2e32304 targets 0x2e32418, is taken when v0(=[a5]) < t1(=0x804b) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804b) (unsigned).
  The `bne` branch at 0x2e3230c targets 0x2e3251c, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x2e32314 targets 0x2e3218c and is always taken.
  The `bne` branch at 0x2e32324 targets 0x2e3245c, is taken when v0(=[a5]) < t1(=0x8041) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8041) (unsigned).
  The `bne` branch at 0x2e3232c targets 0x2e32584, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e32334 targets 0x2e32364 and is always taken.
  The `bne` branch at 0x2e32340 targets 0x2e324c4, is taken when a6 < 0x1406 (unsigned), and falls through when a6 >= 0x1406 (unsigned).
  The `bne` branch at 0x2e3234c targets 0x2e32078, is taken when a6 < 0x1407 (unsigned), and falls through when a6 >= 0x1407 (unsigned).
  The `beq` branch at 0x2e32354 targets 0x2e3224c and is always taken.
  The `bne` branch at 0x2e3235c targets 0x2e32378, is taken when t1(=0x1909) != v0(=[a5]), and falls through when t1(=0x1909) == v0(=[a5]).
  The `beq` branch at 0x2e32364 targets 0x2e31f48 and is always taken.
  The `beq` branch at 0x2e32370 targets 0x2e31f24, is taken when t1(=0x1906) == v0(=[a5]), and falls through when t1(=0x1906) != v0(=[a5]).
  The `bne` branch at 0x2e323bc targets 0x2e324d4, is taken when v0(=[a5]) < t1(=0x8055) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8055) (unsigned).
  The `beq` branch at 0x2e323c4 targets 0x2e3214c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2e323d0 targets 0x2e3214c, is taken when v0(=[a5]) == t1(=0x8056), and falls through when v0(=[a5]) != t1(=0x8056).
  The `beq` branch at 0x2e323d8 targets 0x2e32378 and is always taken.
  The `beq` branch at 0x2e323e0 targets 0x2e31e8c, is taken when a4 == t2(=0x80e0), and falls through when a4 != t2(=0x80e0).
  The `beq` branch at 0x2e323e8 targets 0x2e32118 and is always taken.
  The `bne` branch at 0x2e323f4 targets 0x2e324f8, is taken when v0(=[a5]) < t1(=0x8050) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8050) (unsigned).
  The `beq` branch at 0x2e323fc targets 0x2e321e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2e32408 targets 0x2e321e8, is taken when v0(=[a5]) == t9(=0x8051), and falls through when v0(=[a5]) != t9(=0x8051).
  The `beq` branch at 0x2e32410 targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e32420 targets 0x2e3252c, is taken when v0(=[a5]) < t1(=0x804a) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804a) (unsigned).
  The `bne` branch at 0x2e32428 targets 0x2e32378, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e32430 targets 0x2e3218c and is always taken.
  The `bne` branch at 0x2e32440 targets 0x2e32574, is taken when v0(=[a5]) < t1(=0x803b) (unsigned), and falls through when v0(=[a5]) >= t1(=0x803b) (unsigned).
  The `bne` branch at 0x2e3244c targets 0x2e32378, is taken when t1(=0x803b) < v0(=[a5]) (unsigned), and falls through when t1(=0x803b) >= v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e32454 targets 0x2e31f24 and is always taken.
  The `bne` branch at 0x2e32464 targets 0x2e32594, is taken when v0(=[a5]) < t1(=0x8040) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8040) (unsigned).
  The `bne` branch at 0x2e32470 targets 0x2e32378, is taken when t1(=0x8040) < v0(=[a5]) (unsigned), and falls through when t1(=0x8040) >= v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e32478 targets 0x2e32364 and is always taken.
  The `bne` branch at 0x2e32488 targets 0x2e325a4, is taken when a6 < v0(=0x8366) (unsigned), and falls through when a6 >= v0(=0x8366) (unsigned).
  The `beq` branch at 0x2e32494 targets 0x2e32028, is taken when v0(=0x8366) >= a6 (unsigned), and falls through when v0(=0x8366) < a6 (unsigned).
  The `beq` branch at 0x2e3249c targets 0x2e3224c and is always taken.
  The `beq` branch at 0x2e324a4 targets 0x2e32028, is taken when a6 == t9(=0x8035), and falls through when a6 != t9(=0x8035).
  The `beq` branch at 0x2e324ac targets 0x2e3224c and is always taken.
  The `beq` branch at 0x2e324b4 targets 0x2e32028, is taken when a6 == ra(=0x8033), and falls through when a6 != ra(=0x8033).
  The `beq` branch at 0x2e324bc targets 0x2e3224c and is always taken.
  The `beq` branch at 0x2e324c4 targets 0x2e32078, is taken when a6 == at(=0x1405), and falls through when a6 != at(=0x1405).
  The `beq` branch at 0x2e324cc targets 0x2e3224c and is always taken.
  The `bne` branch at 0x2e324dc targets 0x2e325d8, is taken when v0(=[a5]) < t1(=0x8054) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8054) (unsigned).
  The `beq` branch at 0x2e324e8 targets 0x2e321e8, is taken when t1(=0x8054) >= v0(=[a5]) (unsigned), and falls through when t1(=0x8054) < v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e324f0 targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e32500 targets 0x2e325e8, is taken when v0(=[a5]) < t1(=0x804f) (unsigned), and falls through when v0(=[a5]) >= t1(=0x804f) (unsigned).
  The `beq` branch at 0x2e3250c targets 0x2e321e8, is taken when t1(=0x804f) >= v0(=[a5]) (unsigned), and falls through when t1(=0x804f) < v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e32514 targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e3251c targets 0x2e32378, is taken when v0(=[a5]) != t3(=0x804c), and falls through when v0(=[a5]) == t3(=0x804c).
  The `beq` branch at 0x2e32524 targets 0x2e3218c and is always taken.
  The `beq` branch at 0x2e32530 targets 0x2e3218c, is taken when t1(=0x8049) == v0(=[a5]), and falls through when t1(=0x8049) != v0(=[a5]).
  The `beq` branch at 0x2e32538 targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e32548 targets 0x2e325f8, is taken when v0(=[a5]) < t1(=0x8045) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8045) (unsigned).
  The `beq` branch at 0x2e32554 targets 0x2e31f44, is taken when t1(=0x8045) >= v0(=[a5]) (unsigned), and falls through when t1(=0x8045) < v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e3255c targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e32564 targets 0x2e32378, is taken when v0(=[a5]) != ra(=0x803d), and falls through when v0(=[a5]) == ra(=0x803d).
  The `beq` branch at 0x2e3256c targets 0x2e31f24 and is always taken.
  The `beq` branch at 0x2e32574 targets 0x2e321e8, is taken when v0(=[a5]) == at(=0x2a10), and falls through when v0(=[a5]) != at(=0x2a10).
  The `beq` branch at 0x2e3257c targets 0x2e32378 and is always taken.
  The `bne` branch at 0x2e32584 targets 0x2e32378, is taken when v0(=[a5]) != v1(=0x8042), and falls through when v0(=[a5]) == v1(=0x8042).
  The `beq` branch at 0x2e3258c targets 0x2e32364 and is always taken.
  The `bne` branch at 0x2e32594 targets 0x2e32378, is taken when v0(=[a5]) != a7(=0x803f), and falls through when v0(=[a5]) == a7(=0x803f).
  The `beq` branch at 0x2e3259c targets 0x2e32364 and is always taken.
  The `beq` branch at 0x2e325a4 targets 0x2e32028, is taken when a6 == t0(=0x8365), and falls through when a6 != t0(=0x8365).
  The `beq` branch at 0x2e325ac targets 0x2e3224c and is always taken.
  The `bne` branch at 0x2e325bc targets 0x2e32608, is taken when v0(=[a5]) < t1(=0x8059) (unsigned), and falls through when v0(=[a5]) >= t1(=0x8059) (unsigned).
  The `beq` branch at 0x2e325c8 targets 0x2e3214c, is taken when t1(=0x8059) >= v0(=[a5]) (unsigned), and falls through when t1(=0x8059) < v0(=[a5]) (unsigned).
  The `beq` branch at 0x2e325d0 targets 0x2e32378 and is always taken.
  The `beq` branch at 0x2e325d8 targets 0x2e321e8, is taken when v0(=[a5]) == t8(=0x8053), and falls through when v0(=[a5]) != t8(=0x8053).
  The `beq` branch at 0x2e325e0 targets 0x2e32378 and is always taken.
  The `beq` branch at 0x2e325e8 targets 0x2e321e8, is taken when v0(=[a5]) == t9(=0x804e), and falls through when v0(=[a5]) != t9(=0x804e).
  The `beq` branch at 0x2e325f0 targets 0x2e32378 and is always taken.
  The `beq` branch at 0x2e325f8 targets 0x2e31f44, is taken when v0(=[a5]) == ra(=0x8044), and falls through when v0(=[a5]) != ra(=0x8044).
  The `beq` branch at 0x2e32600 targets 0x2e32378 and is always taken.
  The `beq` branch at 0x2e32608 targets 0x2e3214c, is taken when v0(=[a5]) == at(=0x8058), and falls through when v0(=[a5]) != at(=0x8058).
  The `beq` branch at 0x2e32610 targets 0x2e32378 and is always taken.
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
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e32e40-0x2e33060 (544 bytes).
  It occupies 544 bytes.
  The `lw` at 0x2e32e44 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e32e48 loads 8 bytes from abs 0x1020.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e32ed8, `lwc1` at 0x2e32f5c, `lwc1` at 0x2e33004.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3d8, 0x430, 0x488) +0x0, including `swc1` at 0x2e32edc, `swc1` at 0x2e32f94.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x2e32ee0, `lwc1` at 0x2e32f64.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3dc, 0x434, 0x48c) +0x0, including `swc1` at 0x2e32ee4, `swc1` at 0x2e32fa4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x2e32ee8, `lwc1` at 0x2e32f6c.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3e0, 0x438, 0x490) +0x0, including `swc1` at 0x2e32eec, `swc1` at 0x2e32fb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e32ef0, `lwc1` at 0x2e32f78.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3e4, 0x43c, 0x494) +0x0, including `swc1` at 0x2e32efc, `swc1` at 0x2e32fd4.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3c8, 0x420, 0x478) +0x0, including `swc1` at 0x2e32f60, `swc1` at 0x2e33024.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3cc, 0x424, 0x47c) +0x0, including `swc1` at 0x2e32f68, `swc1` at 0x2e33034.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3d0, 0x428, 0x480) +0x0, including `swc1` at 0x2e32f74, `swc1` at 0x2e33044.
  2 such `swc1` accesses store 4 bytes to ([0x1020]:8 + one of 0x3d4, 0x42c, 0x484) +0x0, including `swc1` at 0x2e32f84, `swc1` at 0x2e3305c.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x2e32f88, `lw` at 0x2e33000, `lw` at 0x2e33018.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x2e32f98, `lw` at 0x2e33028.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x2e32fa8, `lw` at 0x2e33038.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x2e32fb8, `lw` at 0x2e33048.
  The `sw` at 0x2e32fd8 stores 4 bytes to ([0x1020]:8 + one of 0x3bc, 0x414, 0x46c) +0x0.
  The `bgezall` at 0x2e32e8c calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011, a7=0x8012.
  The `bgezall` at 0x2e32ec0 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011.
  The `bgezall` at 0x2e32f44 calls __glSetError [0x2e315d0] with a0=0x500, a1=?, a2=0x8016, a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011.
  The `bgezall` at 0x2e32fec calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8.
  The `beq` branch at 0x2e32e64 targets 0x2e32fe8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e32e70 targets 0x2e32f0c, is taken when a0 == a4(=0x8010), and falls through when a0 != a4(=0x8010).
  The `beq` branch at 0x2e32e78 targets 0x2e32f14, is taken when a0 == a6(=0x8011), and falls through when a0 != a6(=0x8011).
  The `beq` branch at 0x2e32e80 targets 0x2e32e9c, is taken when a0 == a7(=0x8012), and falls through when a0 != a7(=0x8012).
  The `beq` branch at 0x2e32e94 targets 0x2e32f00 and is always taken.
  The `beq` branch at 0x2e32ea0 targets 0x2e32f1c, is taken when a1 == t0(=0x8013), and falls through when a1 != t0(=0x8013).
  The `beq` branch at 0x2e32eac targets 0x2e32f54, is taken when a1 == t1(=0x8014), and falls through when a1 != t1(=0x8014).
  The `beq` branch at 0x2e32eb4 targets 0x2e32ed0, is taken when a1 == t2(=0x8015), and falls through when a1 != t2(=0x8015).
  The `beq` branch at 0x2e32ec8 targets 0x2e32f00 and is always taken.
  The `beq` branch at 0x2e32ed0 targets 0x2e32f88, is taken when a3 == t3(=0x1404), and falls through when a3 != t3(=0x1404).
  The `beq` branch at 0x2e32f0c targets 0x2e32e9c and is always taken.
  The `beq` branch at 0x2e32f14 targets 0x2e32e9c and is always taken.
  The `beq` branch at 0x2e32f28 targets 0x2e32ffc, is taken when a3 == t8(=0x1404), and falls through when a3 != t8(=0x1404).
  The `beq` branch at 0x2e32f30 targets 0x2e33004, is taken when a3 == t9(=0x1406), and falls through when a3 != t9(=0x1406).
  The `beq` branch at 0x2e32f3c targets 0x2e32fd8, is taken when a2(=0x8016) == a1(?), and falls through when a2(=0x8016) != a1(?).
  The `beq` branch at 0x2e32f4c targets 0x2e32f00 and is always taken.
  The `beq` branch at 0x2e32f54 targets 0x2e33018, is taken when a3 == ra(=0x1404), and falls through when a3 != ra(=0x1404).
  The `beq` branch at 0x2e32ff4 targets 0x2e32f00 and is always taken.
  The `beq` branch at 0x2e32ffc targets 0x2e32f38 and is always taken.
  The `beq` branch at 0x2e33010 targets 0x2e32f38 and is always taken.
  The `beq` branch at 0x2e33058 targets 0x2e32f00 and is always taken.
  The return at 0x2e32ef8 has v0 = 0x1.
  The return at 0x2e32f04 has v0 = one of ret(__glSetError), 0x1.
  The return at 0x2e32f80 has v0 = 0x1.
  The return at 0x2e32fd0 has v0 = [a2+8].
  The return at 0x2e32fe0 has v0 = 0x1.
- `__GLgetConvolutionParameter` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e331e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e331e0-0x2e334b4 (724 bytes).
  It occupies 724 bytes.
  The `lw` at 0x2e331e4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e331e8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2e33270 loads 8 bytes from table(0x2ee9310) +0x0.
  The `lw` at 0x2e332cc loads 4 bytes from ([0x1020]:8 + one of 0x3c0, 0x418, 0x470) +0x0.
  10 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x2e332e8, `swc1` at 0x2e33310, `swc1` at 0x2e33338.
  The `lw` at 0x2e332fc loads 4 bytes from ([0x1020]:8 + one of 0x404, 0x45c, 0x4b4) +0x0.
  The `lw` at 0x2e33324 loads 4 bytes from ([0x1020]:8 + one of 0x400, 0x458, 0x4b0) +0x0.
  The `lw` at 0x2e33348 loads 4 bytes from ([0x1020]:8 + one of 0x3fc, 0x454, 0x4ac) +0x0.
  The `lw` at 0x2e33374 loads 4 bytes from ([0x1020]:8 + one of 0x3f8, 0x450, 0x4a8) +0x0.
  The `lwc1` at 0x2e33390 loads 4 bytes from ([0x1020]:8 + one of 0x3d8, 0x430, 0x488) +0x0.
  2 such `lwc1` accesses load 4 bytes from ([0x1020]:8 + one of 0x3dc, 0x434, 0x48c) +0x0, including `lwc1` at 0x2e33398, `lwc1` at 0x2e33440.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x2e3339c, `swc1` at 0x2e333c4, `swc1` at 0x2e33448.
  2 such `lwc1` accesses load 4 bytes from ([0x1020]:8 + one of 0x3e0, 0x438, 0x490) +0x0, including `lwc1` at 0x2e333a0, `lwc1` at 0x2e3344c.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x2e333a4, `swc1` at 0x2e333cc, `swc1` at 0x2e33454.
  2 such `lwc1` accesses load 4 bytes from ([0x1020]:8 + one of 0x3e4, 0x43c, 0x494) +0x0, including `lwc1` at 0x2e333a8, `lwc1` at 0x2e33458.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0x2e333b0, `swc1` at 0x2e333d8, `swc1` at 0x2e33464.
  The `lwc1` at 0x2e333b8 loads 4 bytes from ([0x1020]:8 + one of 0x3c8, 0x420, 0x478) +0x0.
  2 such `lwc1` accesses load 4 bytes from ([0x1020]:8 + one of 0x3cc, 0x424, 0x47c) +0x0, including `lwc1` at 0x2e333c0, `lwc1` at 0x2e33470.
  2 such `lwc1` accesses load 4 bytes from ([0x1020]:8 + one of 0x3d0, 0x428, 0x480) +0x0, including `lwc1` at 0x2e333c8, `lwc1` at 0x2e3347c.
  2 such `lwc1` accesses load 4 bytes from ([0x1020]:8 + one of 0x3d4, 0x42c, 0x484) +0x0, including `lwc1` at 0x2e333d0, `lwc1` at 0x2e33488.
  The `lw` at 0x2e333e0 loads 4 bytes from ([0x1020]:8 + one of 0x3bc, 0x414, 0x46c) +0x0.
  6 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2e33414, `sw` at 0x2e3341c, `sw` at 0x2e33424.
  The `bgezall` at 0x2e33228 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8, a6=0x8011, a7=0x8012.
  The `bgezall` at 0x2e332a4 calls __glSetError [0x2e315d0] with a0=0x500, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=table(0x2ee9310).
  The `bgezall` at 0x2e33400 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8.
  The `bgezall` at 0x2e334a4 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8010, a5=[0x1020]:8.
  The `beq` branch at 0x2e33200 targets 0x2e333fc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e3320c targets 0x2e33284, is taken when a0 == a4(=0x8010), and falls through when a0 != a4(=0x8010).
  The `beq` branch at 0x2e33218 targets 0x2e332b4, is taken when a0 == a6(=0x8011), and falls through when a0 != a6(=0x8011).
  The `beq` branch at 0x2e33220 targets 0x2e33240, is taken when a0 == a7(=0x8012), and falls through when a0 != a7(=0x8012).
  The `beq` branch at 0x2e33268 targets 0x2e332a0, is taken when a7(?) >= 0x9 (unsigned), and falls through when a7(?) < 0x9 (unsigned).
  The `beq` branch at 0x2e33284 targets 0x2e334a4, is taken when a1 == t0(=0x8019), and falls through when a1 != t0(=0x8019).
  The `beq` branch at 0x2e33290 targets 0x2e334a4, is taken when a1 == t1(=0x801b), and falls through when a1 != t1(=0x801b).
  The `beq` branch at 0x2e33298 targets 0x2e33244 and is always taken.
  The `beq` branch at 0x2e332ac targets 0x2e33234 and is always taken.
  The `beq` branch at 0x2e332b4 targets 0x2e33244 and is always taken.
  The `beq` branch at 0x2e332c8 targets 0x2e33410, is taken when a3 == t2(=0x1404), and falls through when a3 != t2(=0x1404).
  The `beq` branch at 0x2e332f8 targets 0x2e33418, is taken when a3 == t8(=0x1404), and falls through when a3 != t8(=0x1404).
  The `beq` branch at 0x2e33320 targets 0x2e33420, is taken when a3 == t9(=0x1404), and falls through when a3 != t9(=0x1404).
  The `beq` branch at 0x2e33344 targets 0x2e33428, is taken when a3 == ra(=0x1404), and falls through when a3 != ra(=0x1404).
  The `beq` branch at 0x2e33370 targets 0x2e33430, is taken when a3 == at(=0x1404), and falls through when a3 != at(=0x1404).
  The `beq` branch at 0x2e3338c targets 0x2e33438, is taken when a3 == v0(=0x1404), and falls through when a3 != v0(=0x1404).
  The `beq` branch at 0x2e333ac targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e333b4 targets 0x2e33468, is taken when a3 == v1(=0x1404), and falls through when a3 != v1(=0x1404).
  The `beq` branch at 0x2e333d4 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e333dc targets 0x2e33498, is taken when a3 == a1(=0x1404), and falls through when a3 != a1(=0x1404).
  The `beq` branch at 0x2e333f4 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33408 targets 0x2e33234 and is always taken.
  The `beq` branch at 0x2e33410 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33418 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33420 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33428 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33430 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33460 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33490 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e33498 targets 0x2e33230 and is always taken.
  The `beq` branch at 0x2e334ac targets 0x2e33234 and is always taken.
  The return at 0x2e33238 has v0 = one of ?, ret(__glSetError).
  The return at 0x2e332e4 has v0 = 0x1404.
  The return at 0x2e3330c has v0 = 0x1404.
  The return at 0x2e33334 has v0 = 0x1404.
  The return at 0x2e3335c has v0 = 0x1404.
  The return at 0x2e33384 has v0 = 0x1404.
  The instructions from 0x2e334a0 to 0x2e334a0 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x2e3327c uses the jump table at 0x2ee9310 with targets 0x2e333dc, 0x2e333b4, 0x2e3338c, 0x2e332a0, 0x2e332bc, 0x2e33364, 0x2e3333c, 0x2e33314, 0x2e332ec.
  The indirect jump at 0x2e3327c uses the jump table at 0x2ee9310 with targets 0x2e333dc, 0x2e333b4, 0x2e3338c, 0x2e332a0, 0x2e332bc, 0x2e33364, 0x2e3333c, 0x2e33314, 0x2e332ec.
  The indirect jump at 0x2e3327c uses the jump table at 0x2ee9310 with targets 0x2e333dc, 0x2e333b4, 0x2e3338c, 0x2e332a0, 0x2e332bc, 0x2e33364, 0x2e3333c, 0x2e33314, 0x2e332ec.
- `__glConvolutionParameterfvEXT_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33540 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33540-0x2e3357c (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0x2e33548 targets 0x2e3356c, is taken when a0 == at(=0x8013), and falls through when a0 != at(=0x8013).
  The `beq` branch at 0x2e33554 targets 0x2e33574, is taken when a0 == v0(=0x8014), and falls through when a0 != v0(=0x8014).
  The return at 0x2e33564 has v0 = one of -0x1, 0x10.
  The return at 0x2e3356c has v0 = 0x4.
  The return at 0x2e33574 has v0 = 0x10.
- `__glConvolutionParameterivEXT_size` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33580 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33580-0x2e335bc (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0x2e33588 targets 0x2e335ac, is taken when a0 == at(=0x8013), and falls through when a0 != at(=0x8013).
  The `beq` branch at 0x2e33594 targets 0x2e335b4, is taken when a0 == v0(=0x8014), and falls through when a0 != v0(=0x8014).
  The return at 0x2e335a4 has v0 = one of -0x1, 0x10.
  The return at 0x2e335ac has v0 = 0x4.
  The return at 0x2e335b4 has v0 = 0x10.
- `__glCopyConvolutionPixelModeState` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e335c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e335c0-0x2e336fc (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x2e335c0 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `sw` at 0x2e335c4 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `lwc1` at 0x2e335c8 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `swc1` at 0x2e335cc stores 4 bytes to a1 (arg1 at entry) +0x98.
  The `lwc1` at 0x2e335d0 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `swc1` at 0x2e335d4 stores 4 bytes to a1 (arg1 at entry) +0x9c.
  The `lwc1` at 0x2e335d8 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `swc1` at 0x2e335dc stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `lwc1` at 0x2e335e0 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `swc1` at 0x2e335e4 stores 4 bytes to a1 (arg1 at entry) +0xa4.
  The `lwc1` at 0x2e335e8 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x2e335ec stores 4 bytes to a1 (arg1 at entry) +0xa8.
  The `lwc1` at 0x2e335f0 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x2e335f4 stores 4 bytes to a1 (arg1 at entry) +0xac.
  The `lwc1` at 0x2e335f8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x2e335fc stores 4 bytes to a1 (arg1 at entry) +0xb0.
  The `lwc1` at 0x2e33600 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `swc1` at 0x2e33604 stores 4 bytes to a1 (arg1 at entry) +0xb4.
  The `lwc1` at 0x2e33608 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x2e3360c stores 4 bytes to a1 (arg1 at entry) +0xb8.
  The `lwc1` at 0x2e33610 loads 4 bytes from a0 (arg0 at entry) +0xbc.
  The `swc1` at 0x2e33614 stores 4 bytes to a1 (arg1 at entry) +0xbc.
  The `lwc1` at 0x2e33618 loads 4 bytes from a0 (arg0 at entry) +0xc0.
  The `swc1` at 0x2e3361c stores 4 bytes to a1 (arg1 at entry) +0xc0.
  The `lwc1` at 0x2e33620 loads 4 bytes from a0 (arg0 at entry) +0xc4.
  The `swc1` at 0x2e33624 stores 4 bytes to a1 (arg1 at entry) +0xc4.
  The `lw` at 0x2e33628 loads 4 bytes from a0 (arg0 at entry) +0xe4.
  The `sw` at 0x2e3362c stores 4 bytes to a1 (arg1 at entry) +0xe4.
  The `lwc1` at 0x2e33630 loads 4 bytes from a0 (arg0 at entry) +0xf0.
  The `swc1` at 0x2e33634 stores 4 bytes to a1 (arg1 at entry) +0xf0.
  The `lwc1` at 0x2e33638 loads 4 bytes from a0 (arg0 at entry) +0xf4.
  The `swc1` at 0x2e3363c stores 4 bytes to a1 (arg1 at entry) +0xf4.
  The `lwc1` at 0x2e33640 loads 4 bytes from a0 (arg0 at entry) +0xf8.
  The `swc1` at 0x2e33644 stores 4 bytes to a1 (arg1 at entry) +0xf8.
  The `lwc1` at 0x2e33648 loads 4 bytes from a0 (arg0 at entry) +0xfc.
  The `swc1` at 0x2e3364c stores 4 bytes to a1 (arg1 at entry) +0xfc.
  The `lwc1` at 0x2e33650 loads 4 bytes from a0 (arg0 at entry) +0x100.
  The `swc1` at 0x2e33654 stores 4 bytes to a1 (arg1 at entry) +0x100.
  The `lwc1` at 0x2e33658 loads 4 bytes from a0 (arg0 at entry) +0x104.
  The `swc1` at 0x2e3365c stores 4 bytes to a1 (arg1 at entry) +0x104.
  The `lwc1` at 0x2e33660 loads 4 bytes from a0 (arg0 at entry) +0x108.
  The `swc1` at 0x2e33664 stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `lwc1` at 0x2e33668 loads 4 bytes from a0 (arg0 at entry) +0x10c.
  The `swc1` at 0x2e3366c stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `lwc1` at 0x2e33670 loads 4 bytes from a0 (arg0 at entry) +0x110.
  The `swc1` at 0x2e33674 stores 4 bytes to a1 (arg1 at entry) +0x110.
  The `lwc1` at 0x2e33678 loads 4 bytes from a0 (arg0 at entry) +0x114.
  The `swc1` at 0x2e3367c stores 4 bytes to a1 (arg1 at entry) +0x114.
  The `lwc1` at 0x2e33680 loads 4 bytes from a0 (arg0 at entry) +0x118.
  The `swc1` at 0x2e33684 stores 4 bytes to a1 (arg1 at entry) +0x118.
  The `lwc1` at 0x2e33688 loads 4 bytes from a0 (arg0 at entry) +0x11c.
  The `swc1` at 0x2e3368c stores 4 bytes to a1 (arg1 at entry) +0x11c.
  The `lw` at 0x2e33690 loads 4 bytes from a0 (arg0 at entry) +0x13c.
  The `sw` at 0x2e33694 stores 4 bytes to a1 (arg1 at entry) +0x13c.
  The `lwc1` at 0x2e33698 loads 4 bytes from a0 (arg0 at entry) +0x148.
  The `swc1` at 0x2e3369c stores 4 bytes to a1 (arg1 at entry) +0x148.
  The `lwc1` at 0x2e336a0 loads 4 bytes from a0 (arg0 at entry) +0x14c.
  The `swc1` at 0x2e336a4 stores 4 bytes to a1 (arg1 at entry) +0x14c.
  The `lwc1` at 0x2e336a8 loads 4 bytes from a0 (arg0 at entry) +0x150.
  The `swc1` at 0x2e336ac stores 4 bytes to a1 (arg1 at entry) +0x150.
  The `lwc1` at 0x2e336b0 loads 4 bytes from a0 (arg0 at entry) +0x154.
  The `swc1` at 0x2e336b4 stores 4 bytes to a1 (arg1 at entry) +0x154.
  The `lwc1` at 0x2e336b8 loads 4 bytes from a0 (arg0 at entry) +0x158.
  The `swc1` at 0x2e336bc stores 4 bytes to a1 (arg1 at entry) +0x158.
  The `lwc1` at 0x2e336c0 loads 4 bytes from a0 (arg0 at entry) +0x15c.
  The `swc1` at 0x2e336c4 stores 4 bytes to a1 (arg1 at entry) +0x15c.
  The `lwc1` at 0x2e336c8 loads 4 bytes from a0 (arg0 at entry) +0x160.
  The `swc1` at 0x2e336cc stores 4 bytes to a1 (arg1 at entry) +0x160.
  The `lwc1` at 0x2e336d0 loads 4 bytes from a0 (arg0 at entry) +0x164.
  The `swc1` at 0x2e336d4 stores 4 bytes to a1 (arg1 at entry) +0x164.
  The `lwc1` at 0x2e336d8 loads 4 bytes from a0 (arg0 at entry) +0x168.
  The `swc1` at 0x2e336dc stores 4 bytes to a1 (arg1 at entry) +0x168.
  The `lwc1` at 0x2e336e0 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `swc1` at 0x2e336e4 stores 4 bytes to a1 (arg1 at entry) +0x16c.
  The `lwc1` at 0x2e336e8 loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `swc1` at 0x2e336ec stores 4 bytes to a1 (arg1 at entry) +0x170.
  The `lwc1` at 0x2e336f0 loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `swc1` at 0x2e336f8 stores 4 bytes to a1 (arg1 at entry) +0x174.
  The return at 0x2e336f4 has v0 = [a0+228].
- `__glFillDeformationMap3f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33700-0x2e33784 (132 bytes).
  It occupies 132 bytes.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e33740, `lwc1` at 0x2e33748, `lwc1` at 0x2e33754.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e33744, `swc1` at 0x2e3374c, `swc1` at 0x2e33764.
  The `blez` branch at 0x2e33700 targets 0x2e3377c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2e33720 targets 0x2e33770, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `blez` branch at 0x2e33734 targets 0x2e33768, is taken when a4 <= 0 (signed), and falls through when a4 > 0 (signed).
  The `bne` branch at 0x2e33760 targets 0x2e33740, is taken when a4 != a3(?), and falls through when a4 == a3(?).
  The `bne` branch at 0x2e33768 targets 0x2e33730, is taken when a2 != t2(?), and falls through when a2 == t2(?).
  The `bne` branch at 0x2e33774 targets 0x2e33720, is taken when a0 != t8(?), and falls through when a0 == t8(?).
  The return at 0x2e3377c has v0 = ?.
- `__glFillDeformationMap3d` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33790-0x2e338f8 (360 bytes).
  It occupies 360 bytes.
  15 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x2e337d0, `ldc1` at 0x2e337dc, `ldc1` at 0x2e337e8.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e337d8, `swc1` at 0x2e337e4, `swc1` at 0x2e33804.
  The `blez` branch at 0x2e33794 targets 0x2e338ec, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2e337a8 targets 0x2e337bc and is always taken.
  The `beq` branch at 0x2e337b4 targets 0x2e338ec, is taken when a0 == t9(?), and falls through when a0 != t9(?).
  The `blez` branch at 0x2e337bc targets 0x2e337b0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x2e337c4 targets 0x2e338c4 and is always taken.
  The `bne` branch at 0x2e33800 targets 0x2e337d0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e33808 targets 0x2e338bc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e338b4 targets 0x2e33810, is taken when a4 != a1(?), and falls through when a4 == a1(?).
  The `beq` branch at 0x2e338bc targets 0x2e337b0, is taken when a2 == t3(?), and falls through when a2 != t3(?).
  The `blez` branch at 0x2e338c8 targets 0x2e338bc, is taken when a4 <= 0 (signed), and falls through when a4 > 0 (signed).
  The `bne` branch at 0x2e338dc targets 0x2e337d0, is taken when (a4 & 0x3) != 0, and falls through when (a4 & 0x3) == 0.
  The `beq` branch at 0x2e338e4 targets 0x2e33808 and is always taken.
  The return at 0x2e338f0 has v0 = ?.
  The instructions from 0x2e337cc to 0x2e337cc are not reached by any path from the entry, and their branches are not listed.
- `__glCheckMap3Params` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33900-0x2e339c4 (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x2e33904 loads 8 bytes from abs 0x1020.
  The `lw` at 0x2e33934 loads 4 bytes from [0x1020]:8 +0x1040.
  The `beq` branch at 0x2e3390c targets 0x2e33928, is taken when a0 == at(=0x8194), and falls through when a0 != at(=0x8194).
  The `beq` branch at 0x2e33918 targets 0x2e33928, is taken when a0 == v0(=0x8195), and falls through when a0 != v0(=0x8195).
  The `blez` branch at 0x2e33928 targets 0x2e339b0, is taken when a4 <= 0 (signed), and falls through when a4 > 0 (signed).
  The `bne` branch at 0x2e33940 targets 0x2e339b0, is taken when a0(=[[0x1020]:8+4160]) < a4 (signed), and falls through when a0(=[[0x1020]:8+4160]) >= a4 (signed).
  The `bne` branch at 0x2e33954 targets 0x2e339b0, is taken when a3 < 0x3 (signed), and falls through when a3 >= 0x3 (signed).
  The `bc1t` branch at 0x2e33960 targets 0x2e339b0, is taken when f13 == f14 (c.eq.s at 0x2e3395c), and falls through when not (f13 == f14 (c.eq.s at 0x2e3395c)).
  The `blez` branch at 0x2e33968 targets 0x2e339b0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x2e33970 targets 0x2e339b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x2e33978 targets 0x2e339b0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bc1t` branch at 0x2e33984 targets 0x2e339b0, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `blez` branch at 0x2e3398c targets 0x2e339b0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x2e33994 targets 0x2e339b0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x2e3399c targets 0x2e339b0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bc1f` branch at 0x2e339a8 targets 0x2e339b8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The return at 0x2e33920 has v0 = 0x500.
  The return at 0x2e339b0 has v0 = 0x501.
  The return at 0x2e339bc has v0 = 0x0.
- `FetchNon32` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e339d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e339d0-0x2e33a8c (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x2e339d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e339d4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e339d8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e339e4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e339ec loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33a04 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x2e33a0c loads 4 bytes from ?.
  The `lw` at 0x2e33a10 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lw` at 0x2e33a28 loads 4 bytes from a0 (arg0 at entry) +0x94.
  The `ldc1` at 0x2e33a40 loads 8 bytes from abs 0x2f00950.
  2 such `ldc1` accesses load 8 bytes from [a0]:8 +0x768, including `ldc1` at 0x2e33a44, `ldc1` at 0x2e33a5c.
  The `lw` at 0x2e33a74 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lw` at 0x2e33a88 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `beq` branch at 0x2e33a2c targets 0x2e33a74, is taken when v1(=[a0+128]) == a1(?), and falls through when v1(=[a0+128]) != a1(?).
  The `bne` branch at 0x2e33a3c targets 0x2e33a54, is taken when a5(=[a0+148]) != t9(=0xffffffffff000000), and falls through when a5(=[a0+148]) == t9(=0xffffffffff000000).
  The `bc1t` branch at 0x2e33a4c targets 0x2e33a84, is taken when f0(=[[a0]:8+1896]:8) == f1(=0x3ff0000000000000) (c.eq.d at 0x2e33a48), and falls through when not (f0(=[[a0]:8+1896]:8) == f1(=0x3ff0000000000000) (c.eq.d at 0x2e33a48)).
  The `bne` branch at 0x2e33a54 targets 0x2e33a74, is taken when a5(=[a0+148]) != v0(=0x1000000), and falls through when a5(=[a0+148]) == v0(=0x1000000).
  The `bc1f` branch at 0x2e33a64 targets 0x2e33a74, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x2e33a6c has v0 = 0x0.
  The return at 0x2e33a7c has v0 = ?.
  The return at 0x2e33a84 has v0 = [a0+124].
- `Fetch32` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33a90-0x2e33ad0 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0x2e33a90 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33a94 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33a98 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33aa4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33aac loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33acc loads 4 bytes from ?.
  The return at 0x2e33ac8 has v0 = ?.
- `StoreLESS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33ae0-0x2e33b50 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33ae0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33ae4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33ae8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33af8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33b04 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33b18 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33b20 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33b2c loads 4 bytes from ?.
  The `sw` at 0x2e33b44 stores 4 bytes to ?.
  The `beq` branch at 0x2e33b38 targets 0x2e33b48, is taken when a5(?) >= at(?) (unsigned), and falls through when a5(?) < at(?) (unsigned).
  The return at 0x2e33b40 has v0 = 0x1.
  The return at 0x2e33b48 has v0 = 0x0.
- `StoreLESS_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33b50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33b50-0x2e33bc0 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33b50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33b54 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33b58 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33b68 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33b74 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33b88 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33b90 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33b9c loads 4 bytes from ?.
  The `sw` at 0x2e33bb4 stores 4 bytes to ?.
  The `beq` branch at 0x2e33ba8 targets 0x2e33bb8, is taken when a5(?) >= at(?) (signed), and falls through when a5(?) < at(?) (signed).
  The return at 0x2e33bb0 has v0 = 0x1.
  The return at 0x2e33bb8 has v0 = 0x0.
- `StoreEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33bc0-0x2e33c2c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2e33bc0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33bc4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33bc8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33bd4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33be0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33bfc loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33c00 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33c08 loads 4 bytes from ?.
  The `sw` at 0x2e33c20 stores 4 bytes to ?.
  The `bne` branch at 0x2e33c14 targets 0x2e33c24, is taken when at(?) != a5(?), and falls through when at(?) == a5(?).
  The return at 0x2e33c1c has v0 = 0x1.
  The return at 0x2e33c24 has v0 = 0x0.
- `StoreLEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33c30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33c30-0x2e33ca0 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33c30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33c34 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33c38 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33c44 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33c50 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33c6c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33c70 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33c78 loads 4 bytes from ?.
  The `sw` at 0x2e33c94 stores 4 bytes to ?.
  The `bne` branch at 0x2e33c88 targets 0x2e33c98, is taken when at(?) < a5(?) (unsigned), and falls through when at(?) >= a5(?) (unsigned).
  The return at 0x2e33c90 has v0 = 0x1.
  The return at 0x2e33c98 has v0 = 0x0.
- `StoreLEQUAL_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33ca0-0x2e33d10 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33ca0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33ca4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33ca8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33cb4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33cc0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33cdc loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33ce0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33ce8 loads 4 bytes from ?.
  The `sw` at 0x2e33d04 stores 4 bytes to ?.
  The `bne` branch at 0x2e33cf8 targets 0x2e33d08, is taken when at(?) < a5(?) (signed), and falls through when at(?) >= a5(?) (signed).
  The return at 0x2e33d00 has v0 = 0x1.
  The return at 0x2e33d08 has v0 = 0x0.
- `StoreGREATER` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33d10-0x2e33d80 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33d10 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33d14 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33d18 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33d24 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33d30 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33d4c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33d50 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33d58 loads 4 bytes from ?.
  The `sw` at 0x2e33d74 stores 4 bytes to ?.
  The `beq` branch at 0x2e33d68 targets 0x2e33d78, is taken when at(?) >= a5(?) (unsigned), and falls through when at(?) < a5(?) (unsigned).
  The return at 0x2e33d70 has v0 = 0x1.
  The return at 0x2e33d78 has v0 = 0x0.
- `StoreGREATER_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33d80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33d80-0x2e33df0 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33d80 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33d84 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33d88 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33d94 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33da0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33dbc loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33dc0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33dc8 loads 4 bytes from ?.
  The `sw` at 0x2e33de4 stores 4 bytes to ?.
  The `beq` branch at 0x2e33dd8 targets 0x2e33de8, is taken when at(?) >= a5(?) (signed), and falls through when at(?) < a5(?) (signed).
  The return at 0x2e33de0 has v0 = 0x1.
  The return at 0x2e33de8 has v0 = 0x0.
- `StoreNOTEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33df0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33df0-0x2e33e5c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2e33df0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33df4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33df8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33e04 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33e10 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33e2c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33e30 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33e38 loads 4 bytes from ?.
  The `sw` at 0x2e33e50 stores 4 bytes to ?.
  The `beq` branch at 0x2e33e44 targets 0x2e33e54, is taken when at(?) == a5(?), and falls through when at(?) != a5(?).
  The return at 0x2e33e4c has v0 = 0x1.
  The return at 0x2e33e54 has v0 = 0x0.
- `StoreGEQUAL` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33e60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33e60-0x2e33ed0 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33e60 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33e64 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33e68 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33e78 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33e84 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33e98 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33ea0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33eac loads 4 bytes from ?.
  The `sw` at 0x2e33ec4 stores 4 bytes to ?.
  The `bne` branch at 0x2e33eb8 targets 0x2e33ec8, is taken when a5(?) < at(?) (unsigned), and falls through when a5(?) >= at(?) (unsigned).
  The return at 0x2e33ec0 has v0 = 0x1.
  The return at 0x2e33ec8 has v0 = 0x0.
- `StoreGEQUAL_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33ed0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33ed0-0x2e33f40 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2e33ed0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33ed4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33ed8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33ee8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33ef4 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33f08 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33f10 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33f1c loads 4 bytes from ?.
  The `sw` at 0x2e33f34 stores 4 bytes to ?.
  The `bne` branch at 0x2e33f28 targets 0x2e33f38, is taken when a5(?) < at(?) (signed), and falls through when a5(?) >= at(?) (signed).
  The return at 0x2e33f30 has v0 = 0x1.
  The return at 0x2e33f38 has v0 = 0x0.
- `StoreALWAYS` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33f40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33f40-0x2e33f9c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2e33f40 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33f44 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33f48 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33f58 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33f6c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33f74 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33f84 loads 4 bytes from [a0]:8 +0x9d78.
  The `sw` at 0x2e33f98 stores 4 bytes to ?.
  The return at 0x2e33f94 has v0 = 0x1.
- `StoreLESS_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e33fa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e33fa0-0x2e33ffc (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2e33fa0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e33fa4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e33fa8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e33fb8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e33fc4 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e33fd4 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e33fe0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e33fec loads 4 bytes from ?.
  The return at 0x2e33ff4 has v0 = ?.
- `StoreLESS_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34000-0x2e3405c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2e34000 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e34004 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e34008 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e34018 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e34024 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e34034 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e34040 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e3404c loads 4 bytes from ?.
  The return at 0x2e34054 has v0 = ?.
- `StoreEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34060 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34060-0x2e340c0 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2e34060 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e34064 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e34068 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e34074 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e34080 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e3409c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e340a0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e340a8 loads 4 bytes from ?.
  The return at 0x2e340b8 has v0 = ?.
- `StoreLEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e340c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e340c0-0x2e34120 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2e340c0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e340c4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e340c8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e340d4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e340e0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e340fc loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e34100 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e34108 loads 4 bytes from ?.
  The return at 0x2e34118 has v0 = ?.
- `StoreLEQUAL_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34120 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34120-0x2e34180 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2e34120 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e34124 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e34128 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e34134 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e34140 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e3415c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e34160 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e34168 loads 4 bytes from ?.
  The return at 0x2e34178 has v0 = ?.
- `StoreGREATER_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34180-0x2e341dc (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2e34180 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e34184 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e34188 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e34194 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e341a0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e341bc loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e341c0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e341c8 loads 4 bytes from ?.
  The return at 0x2e341d4 has v0 = ?.
- `StoreGREATER_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e341e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e341e0-0x2e3423c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2e341e0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e341e4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e341e8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e341f4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e34200 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e3421c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e34220 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e34228 loads 4 bytes from ?.
  The return at 0x2e34234 has v0 = ?.
- `StoreNOTEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34240-0x2e342a0 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2e34240 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e34244 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e34248 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e34254 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e34260 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e3427c loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e34280 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e34288 loads 4 bytes from ?.
  The return at 0x2e34298 has v0 = ?.
- `StoreGEQUAL_W` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e342a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e342a0-0x2e34300 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2e342a0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e342a4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e342a8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e342b8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e342c4 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e342d4 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e342e0 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e342ec loads 4 bytes from ?.
  The return at 0x2e342f8 has v0 = ?.
- `StoreGEQUAL_W_s` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34300 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34300-0x2e34360 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2e34300 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x2e34304 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2e34308 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x2e34318 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x2e34324 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x2e34334 loads 4 bytes from [a0]:8 +0x9d80.
  The `lw` at 0x2e34340 loads 4 bytes from [a0]:8 +0x9d78.
  The `lw` at 0x2e3434c loads 4 bytes from ?.
  The return at 0x2e34358 has v0 = ?.
- `__glInitDepth24` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e34e90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e34e90-0x2e34f78 (232 bytes).
  It occupies 232 bytes.
  The `sw` at 0x2e34ee4 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sb` at 0x2e34ee8 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `sw` at 0x2e34ef0 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0x2e34ef4 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0x2e34efc stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0x2e34f04 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x2e34f0c stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x2e34f1c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sw` at 0x2e34f24 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sd` at 0x2e34f2c stores 8 bytes to a0 (arg0 at entry) +0xc8.
  The `sd` at 0x2e34f34 stores 8 bytes to a0 (arg0 at entry) +0xc0.
  The `sd` at 0x2e34f3c stores 8 bytes to a0 (arg0 at entry) +0xb8.
  The `sd` at 0x2e34f44 stores 8 bytes to a0 (arg0 at entry) +0xa8.
  The `sd` at 0x2e34f4c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sd` at 0x2e34f54 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0x2e34f60 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0x2e34f68 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `jalr` at 0x2e34eb4 calls __glInitBuffer [0x2e2ab80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2e34f70 has v0 = 0x2e34ca0.
- `__glim_MapGrid1d` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e36210 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e36210-0x2e36294 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x2e36214 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e36218 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2e36244 stores 4 bytes to [0x1020]:8 +0x8a0.
  The `swc1` at 0x2e36254 stores 4 bytes to [0x1020]:8 +0x898.
  The `swc1` at 0x2e36260 stores 4 bytes to [0x1020]:8 +0x894.
  The `bgezall` at 0x2e36270 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2e36284 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e36234 targets 0x2e36280, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x2e3623c targets 0x2e36270, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2e36278 targets 0x2e36264 and is always taken.
  The `beq` branch at 0x2e3628c targets 0x2e36264 and is always taken.
  The return at 0x2e3625c has v0 = 0x1.
  The return at 0x2e36268 has v0 = ret(__glSetError).
- `__glim_MapGrid1f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e362a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e362a0-0x2e3631c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x2e362a4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e362a8 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2e362d4 stores 4 bytes to [0x1020]:8 +0x8a0.
  The `swc1` at 0x2e362d8 stores 4 bytes to [0x1020]:8 +0x898.
  The `swc1` at 0x2e362dc stores 4 bytes to [0x1020]:8 +0x894.
  The `bgezall` at 0x2e362f8 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2e3630c calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e362c4 targets 0x2e36308, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x2e362cc targets 0x2e362f8, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x2e36300 targets 0x2e362ec and is always taken.
  The `beq` branch at 0x2e36314 targets 0x2e362ec and is always taken.
  The return at 0x2e362e4 has v0 = 0x1.
  The return at 0x2e362f0 has v0 = ret(__glSetError).
- `__glim_MapGrid2f` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e363d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e363d0-0x2e36464 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x2e363d4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e363d8 loads 8 bytes from abs 0x1020.
  The `sw` at 0x2e3640c stores 4 bytes to [0x1020]:8 +0x8c0.
  The `swc1` at 0x2e36410 stores 4 bytes to [0x1020]:8 +0x8b8.
  The `swc1` at 0x2e36414 stores 4 bytes to [0x1020]:8 +0x8b4.
  The `sw` at 0x2e36418 stores 4 bytes to [0x1020]:8 +0x8b0.
  The `swc1` at 0x2e3641c stores 4 bytes to [0x1020]:8 +0x8a8.
  The `swc1` at 0x2e36420 stores 4 bytes to [0x1020]:8 +0x8a4.
  The `bgezall` at 0x2e36440 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `bgezall` at 0x2e36454 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x2e363f4 targets 0x2e36450, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `blez` branch at 0x2e363fc targets 0x2e36440, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `blez` branch at 0x2e36404 targets 0x2e36440, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0x2e36448 targets 0x2e36430 and is always taken.
  The `beq` branch at 0x2e3645c targets 0x2e36430 and is always taken.
  The return at 0x2e36428 has v0 = 0x1.
  The return at 0x2e36434 has v0 = ret(__glSetError).
  The instructions from 0x2e3643c to 0x2e3643c are not reached by any path from the entry, and their branches are not listed.
- `__glSetUpMap2` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e36d00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e36d00-0x2e36e54 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x2e36d40 loads 4 bytes from a0 (arg0 at entry) +0x101c.
  The `lw` at 0x2e36dbc loads 4 bytes from table(0x8f08) +0x0.
  The `swc1` at 0x2e36dc0 stores 4 bytes to table(0x8f20) +0x0.
  The `swc1` at 0x2e36dc4 stores 4 bytes to table(0x8f1c) +0x0.
  The `swc1` at 0x2e36dc8 stores 4 bytes to table(0x8f18) +0x0.
  The `swc1` at 0x2e36dcc stores 4 bytes to table(0x8f14) +0x0.
  The `sw` at 0x2e36dd4 stores 4 bytes to table(0x8f10) +0x0.
  The `sw` at 0x2e36de0 stores 4 bytes to table(0x8f0c) +0x0.
  The `ld` at 0x2e36de8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x2e36e0c loads 8 bytes from table(0x9100) +0x0.
  The `sd` at 0x2e36e1c stores 8 bytes to table(0x9100) +0x0.
  The `bgezall` at 0x2e36d80 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a1-3504 << 0x20).
  The `bgezall` at 0x2e36ddc calls __glMap2_size [0x2e36bc0] with a0=entry(0x8f08), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a3 at entry (arg3), a7=(a1-3504 << 0x20).
  The `jalr` at 0x2e36e08 calls (unknown callee) with a0=a0 at entry (arg0), a1=entry(0x9100), a2=(ret(__glMap2_size) << 0x2), a3=?.
  The `bgezall` at 0x2e36e40 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a1-3504 << 0x20).
  The `beq` branch at 0x2e36d30 targets 0x2e36e38, is taken when a6(?) >= 0x9 (unsigned), and falls through when a6(?) < 0x9 (unsigned).
  The `blez` branch at 0x2e36d38 targets 0x2e36d7c, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `bne` branch at 0x2e36d48 targets 0x2e36d78, is taken when a0(=[a0+4124]) < a3 (signed), and falls through when a0(=[a0+4124]) >= a3 (signed).
  The `blez` branch at 0x2e36d50 targets 0x2e36d7c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0x2e36d58 targets 0x2e36d7c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bc1t` branch at 0x2e36d64 targets 0x2e36d7c, is taken when f16 == f17 (c.eq.s at 0x2e36d60), and falls through when not (f16 == f17 (c.eq.s at 0x2e36d60)).
  The `bc1f` branch at 0x2e36d70 targets 0x2e36d9c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x2e36e4c targets 0x2e36d90 and is always taken.
  The return at 0x2e36d94 has v0 = 0x0.
  The return at 0x2e36e30 has v0 = table(0x8f08).
- `PreEvaluateWithDeriv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e36f80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e36f80-0x2e37224 (676 bytes).
  It occupies 676 bytes.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x2e36f9c, `swc1` at 0x2e37208.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x2e36fac, `swc1` at 0x2e37074, `swc1` at 0x2e37148.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e36fc8, `lwc1` at 0x2e36ff0, `lwc1` at 0x2e36ff4.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e36fe0, `swc1` at 0x2e37020, `swc1` at 0x2e37024.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e37054, `lwc1` at 0x2e37084, `lwc1` at 0x2e370bc.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x2e370b0, `swc1` at 0x2e37204, `swc1` at 0x2e37220.
  The `lwc1` at 0x2e370c0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x2e370d0, `swc1` at 0x2e37200.
  The `beq` branch at 0x2e36f84 targets 0x2e37214, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0x2e36f90 targets 0x2e371fc, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `bne` branch at 0x2e36fa8 targets 0x2e371f4, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0x2e36fb8 targets 0x2e37054 and is always taken.
  The `beq` branch at 0x2e36fc0 targets 0x2e36fe4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e36fdc targets 0x2e36fc8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e36fe4 targets 0x2e37038, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2e37030 targets 0x2e36ff0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x2e3704c targets 0x2e37080, is taken when t1(=a0-1) == a6(?), and falls through when t1(=a0-1) != a6(?).
  The `beq` branch at 0x2e37070 targets 0x2e36fc0, is taken when a6(?) >= 0x2 (signed), and falls through when a6(?) < 0x2 (signed).
  The `beq` branch at 0x2e37078 targets 0x2e3703c and is always taken.
  The `beq` branch at 0x2e370b4 targets 0x2e370d4, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x2e370d8 targets 0x2e37124, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e37118 targets 0x2e370f0, is taken when a4(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a4(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0x2e37144 targets 0x2e371ec, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0x2e3715c targets 0x2e37180, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x2e37178 targets 0x2e37164, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e37184 targets 0x2e371d8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e371d0 targets 0x2e37190, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x2e371ec targets 0x2e371dc and is always taken.
  The `beq` branch at 0x2e371f4 targets 0x2e37088 and is always taken.
  The return at 0x2e371e4 has v0 = ?.
  The return at 0x2e3720c has v0 = ?.
  The return at 0x2e3721c has v0 = ?.
- `DoEvalCoord1` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e37370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e37370-0x2e37758 (1000 bytes).
  It occupies 1000 bytes.
  The `ld` at 0x2e37370 loads 8 bytes from a0 (arg0 at entry) +0x260.
  The `ld` at 0x2e37374 loads 8 bytes from a0 (arg0 at entry) +0x268.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e373c4, `ld` at 0x2e373ec, `ld` at 0x2e37400.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2e373d0, `sd` at 0x2e373f4, `sd` at 0x2e37408.
  The `lbu` at 0x2e37488 loads 1 byte from a0 (arg0 at entry) +0xde5.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x818, including `lw` at 0x2e3748c, `lw` at 0x2e374d0, `lw` at 0x2e3750c.
  The `ld` at 0x2e374c0 loads 8 bytes from a0 (arg0 at entry) +0x90c0.
  The `ld` at 0x2e374fc loads 8 bytes from a0 (arg0 at entry) +0x90e8.
  The `ld` at 0x2e37528 loads 8 bytes from a0 (arg0 at entry) +0x90c8.
  The `ld` at 0x2e37558 loads 8 bytes from a0 (arg0 at entry) +0x90f8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x2e37568, `ld` at 0x2e3764c.
  The `ld` at 0x2e3756c loads 8 bytes from [a0+6872]:8 +0xae8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x2e37588, `lw` at 0x2e376d8.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48f8, including `ld` at 0x2e37598, `ld` at 0x2e375b8, `ld` at 0x2e376cc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x26c, including `swc1` at 0x2e375b4, `swc1` at 0x2e3773c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x268, including `swc1` at 0x2e375bc, `swc1` at 0x2e37740.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x264, including `swc1` at 0x2e375c0, `swc1` at 0x2e3774c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x260, including `swc1` at 0x2e375cc, `swc1` at 0x2e37754.
  The `ld` at 0x2e37604 loads 8 bytes from a0 (arg0 at entry) +0x90e0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x2e37614, `lwc1` at 0x2e37688, `lwc1` at 0x2e3771c.
  3 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x194, including `swc1` at 0x2e37620, `swc1` at 0x2e37694, `swc1` at 0x2e37728.
  The `ld` at 0x2e3763c loads 8 bytes from a0 (arg0 at entry) +0x90f0.
  The `ld` at 0x2e37650 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `ld` at 0x2e37678 loads 8 bytes from a0 (arg0 at entry) +0x90d8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x190, including `swc1` at 0x2e3769c, `swc1` at 0x2e3772c.
  The `ld` at 0x2e376bc loads 8 bytes from a0 (arg0 at entry) +0x90b8.
  The `ld` at 0x2e3770c loads 8 bytes from a0 (arg0 at entry) +0x90d0.
  The `swc1` at 0x2e37734 stores 4 bytes to a0 (arg0 at entry) +0x18c.
  The `bgezall` at 0x2e374c8 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36360, a3=a0+360, a4=[a0+37056]:8, a5=0x2e37230.
  The `bgezall` at 0x2e37504 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36520, a3=a0+392, a4=[a0+37096]:8.
  The `bgezall` at 0x2e37530 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36392, a3=a0+376, a4=[a0+37064]:8.
  The `bgezall` at 0x2e37560 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36584, a3=sp-80, a4=[a0+37112]:8.
  The `jalr` at 0x2e37570 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `jalr` at 0x2e3759c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e375c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3760c calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36488, a3=a0+392, a4=[a0+37088]:8.
  The `bgezall` at 0x2e37644 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36552, a3=sp-64, a4=[a0+37104]:8.
  The `jalr` at 0x2e37654 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e37680 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36456, a3=a0+392, a4=[a0+37080]:8.
  The `bgezall` at 0x2e376c4 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36328, a3=a0+608, a4=[a0+37048]:8, a5=0x2e37230.
  The `jalr` at 0x2e376d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e37714 calls DoDomain1 [0x2e37230] with a0=sp-1824, a1=?, a2=a0+36424, a3=a0+392, a4=[a0+37072]:8.
  The `bne` branch at 0x2e373cc targets 0x2e373b4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x2e37480 targets 0x2e373e0, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x2e37498 targets 0x2e376a0, is taken when v1(=[a0+3557]:1) == 0, and falls through when v1(=[a0+3557]:1) != 0.
  The `beq` branch at 0x2e374a4 targets 0x2e374d4, is taken when (a0(=[a0+2072]) & 0x2) == 0, and falls through when (a0(=[a0+2072]) & 0x2) != 0.
  The `beq` branch at 0x2e374e4 targets 0x2e375ec, is taken when (a0(=[a0+2072]) & 0x40) == 0, and falls through when (a0(=[a0+2072]) & 0x40) != 0.
  The `beq` branch at 0x2e37514 targets 0x2e3753c, is taken when (a0(=[a0+2072]) & 0x4) == 0, and falls through when (a0(=[a0+2072]) & 0x4) != 0.
  The `beq` branch at 0x2e37540 targets 0x2e37624, is taken when (a0(=[a0+2072]) & 0x100) == 0, and falls through when (a0(=[a0+2072]) & 0x100) != 0.
  The `beq` branch at 0x2e37580 targets 0x2e375d4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2e37590 targets 0x2e375d4, is taken when (at(=[a0+2056]) & 0x80) == 0, and falls through when (at(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e375ec targets 0x2e37664, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2e3761c targets 0x2e37510 and is always taken.
  The `beq` branch at 0x2e37624 targets 0x2e37580, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2e3765c targets 0x2e3757c and is always taken.
  The `beq` branch at 0x2e37664 targets 0x2e376f8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2e37698 targets 0x2e37510 and is always taken.
  The `beq` branch at 0x2e376a0 targets 0x2e376ec, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2e376e0 targets 0x2e37738, is taken when (a3(=[a0+2056]) & 0x80) == 0, and falls through when (a3(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e376f0 targets 0x2e374dc and is always taken.
  The `beq` branch at 0x2e376f8 targets 0x2e37510, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2e37730 targets 0x2e37510 and is always taken.
  The `beq` branch at 0x2e37750 targets 0x2e376e8 and is always taken.
  The return at 0x2e375e4 has v0 = one of ?, ret(?).
- `DoEvalCoord2` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e37ec0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e37ec0-0x2e386b8 (2040 bytes).
  It occupies 2040 bytes.
  The `ld` at 0x2e37ec0 loads 8 bytes from a0 (arg0 at entry) +0x260.
  The `ld` at 0x2e37ec4 loads 8 bytes from a0 (arg0 at entry) +0x268.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e37f24, `ld` at 0x2e37f4c, `ld` at 0x2e37f60.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2e37f30, `sd` at 0x2e37f54, `sd` at 0x2e37f68.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x2e37ff4, `sw` at 0x2e38084, `sw` at 0x2e38120.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x2e37ff8, `lw` at 0x2e38254, `lw` at 0x2e38524.
  11 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x81c, including `lw` at 0x2e38004, `lw` at 0x2e380c8, `lw` at 0x2e38144.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9140, including `ld` at 0x2e38030, `ld` at 0x2e38488.
  11 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x2e3807c, `lw` at 0x2e38118, `lw` at 0x2e38180.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x178, including `lwc1` at 0x2e38088, `lwc1` at 0x2e3832c, `lwc1` at 0x2e38438.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x14, including `swc1` at 0x2e3808c, `swc1` at 0x2e38330, `swc1` at 0x2e3843c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x17c, including `lwc1` at 0x2e38090, `lwc1` at 0x2e38334, `lwc1` at 0x2e38440.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x18, including `swc1` at 0x2e38094, `swc1` at 0x2e38338, `swc1` at 0x2e38444.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x180, including `lwc1` at 0x2e38098, `lwc1` at 0x2e3833c, `lwc1` at 0x2e38448.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x1c, including `swc1` at 0x2e3809c, `swc1` at 0x2e38340, `swc1` at 0x2e3844c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x184, including `lwc1` at 0x2e380a0, `lwc1` at 0x2e38344, `lwc1` at 0x2e38450.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x20, including `swc1` at 0x2e380a4, `swc1` at 0x2e38348, `swc1` at 0x2e38454.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x34, including `swc1` at 0x2e380ac, `swc1` at 0x2e38350, `swc1` at 0x2e384b0.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x38, including `swc1` at 0x2e380b4, `swc1` at 0x2e38358, `swc1` at 0x2e384b8.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x3c, including `swc1` at 0x2e380bc, `swc1` at 0x2e38360, `swc1` at 0x2e384c0.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x40, including `swc1` at 0x2e380c4, `swc1` at 0x2e38368, `swc1` at 0x2e384c8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde5, including `lbu` at 0x2e380dc, `lbu` at 0x2e38670.
  The `ld` at 0x2e38100 loads 8 bytes from a0 (arg0 at entry) +0x9108.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x168, including `lwc1` at 0x2e38124, `lwc1` at 0x2e38694.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x2e38128, `swc1` at 0x2e38538, `swc1` at 0x2e38698.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x16c, including `lwc1` at 0x2e3812c, `lwc1` at 0x2e3869c.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0x2e38130, `swc1` at 0x2e38540, `swc1` at 0x2e386a0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x170, including `lwc1` at 0x2e38134, `lwc1` at 0x2e386a4.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0xc, including `swc1` at 0x2e38138, `swc1` at 0x2e38548, `swc1` at 0x2e386a8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x174, including `lwc1` at 0x2e3813c, `lwc1` at 0x2e386ac.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x10, including `swc1` at 0x2e38140, `swc1` at 0x2e38550, `swc1` at 0x2e386b4.
  The `ld` at 0x2e38168 loads 8 bytes from a0 (arg0 at entry) +0x9130.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x188, including `lwc1` at 0x2e3818c, `lwc1` at 0x2e38210, `lwc1` at 0x2e383c8.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x24, including `swc1` at 0x2e38190, `swc1` at 0x2e38214, `swc1` at 0x2e383cc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x18c, including `lwc1` at 0x2e38194, `lwc1` at 0x2e38218, `lwc1` at 0x2e383d0.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x28, including `swc1` at 0x2e38198, `swc1` at 0x2e3821c, `swc1` at 0x2e383d4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x190, including `lwc1` at 0x2e3819c, `lwc1` at 0x2e38220, `lwc1` at 0x2e383d8.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0x2e381a0, `swc1` at 0x2e38224, `swc1` at 0x2e383dc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x194, including `lwc1` at 0x2e381a8, `lwc1` at 0x2e38228, `lwc1` at 0x2e383e0.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0x2e381b0, `swc1` at 0x2e3822c, `swc1` at 0x2e383e8.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x2e381b4, `ld` at 0x2e38654.
  The `ld` at 0x2e381b8 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `ld` at 0x2e381e8 loads 8 bytes from a0 (arg0 at entry) +0x9128.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x2e381f8, `lwc1` at 0x2e383a8, `lwc1` at 0x2e385a4.
  3 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x194, including `swc1` at 0x2e38200, `swc1` at 0x2e383b0, `swc1` at 0x2e385ac.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48f8, including `ld` at 0x2e38264, `ld` at 0x2e38284, `ld` at 0x2e38504.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x26c, including `swc1` at 0x2e38278, `swc1` at 0x2e38678.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x268, including `swc1` at 0x2e3827c, `swc1` at 0x2e3867c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x264, including `swc1` at 0x2e3828c, `swc1` at 0x2e38688.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x260, including `swc1` at 0x2e38298, `swc1` at 0x2e38690.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9138, including `ld` at 0x2e382ec, `ld` at 0x2e38604.
  The `ld` at 0x2e38398 loads 8 bytes from a0 (arg0 at entry) +0x9120.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x190, including `swc1` at 0x2e383b8, `swc1` at 0x2e385b0.
  The `ld` at 0x2e38414 loads 8 bytes from a0 (arg0 at entry) +0x9110.
  The `ld` at 0x2e384f4 loads 8 bytes from a0 (arg0 at entry) +0x9100.
  The `lwc1` at 0x2e38534 loads 4 bytes from a0 (arg0 at entry) +0x260.
  The `lwc1` at 0x2e3853c loads 4 bytes from a0 (arg0 at entry) +0x264.
  The `lwc1` at 0x2e38544 loads 4 bytes from a0 (arg0 at entry) +0x268.
  The `lwc1` at 0x2e3854c loads 4 bytes from a0 (arg0 at entry) +0x26c.
  The `ld` at 0x2e38594 loads 8 bytes from a0 (arg0 at entry) +0x9118.
  The `swc1` at 0x2e385b8 stores 4 bytes to a0 (arg0 at entry) +0x18c.
  The `ld` at 0x2e38658 loads 8 bytes from [a0+6872]:8 +0xae8.
  The `bgezall` at 0x2e38038 calls DoDomain2WithDerivs [0x2e37be0] with a0=sp-1888, a1=?, a2=?, a3=a0+37000, a4=sp-144, a5=sp-128, a6=sp-112, a7=[a0+37184]:8.
  The `bgezall` at 0x2e38050 calls ComputeFirstPartials [0x2e37860] with a0=sp-144, a1=sp-128, a2=sp-112, a3=?.
  The `bgezall` at 0x2e3806c calls ComputeNormal2 [0x2e37900] with a0=a0 at entry (arg0), a1=a0+376, a2=sp-128, a3=sp-112.
  The `bgezall` at 0x2e38108 calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36664, a4=a0+360, a5=[a0+37128]:8.
  The `bgezall` at 0x2e38170 calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36904, a4=a0+392, a5=[a0+37168]:8.
  The `jalr` at 0x2e381bc calls (unknown callee) with a0=sp-144, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e381f0 calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36856, a4=a0+392, a5=[a0+37160]:8.
  The `jalr` at 0x2e38268 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e38294 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e382f4 calls DoDomain2WithDerivs [0x2e37be0] with a0=sp-1888, a1=?, a2=?, a3=a0+36952, a4=sp-144, a5=sp-96, a6=sp-80, a7=[a0+37176]:8.
  The `bgezall` at 0x2e38310 calls ComputeNormal2 [0x2e37900] with a0=a0 at entry (arg0), a1=a0+376, a2=sp-96, a3=sp-80.
  The `bgezall` at 0x2e383a0 calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36808, a4=a0+392, a5=[a0+37152]:8.
  The `bgezall` at 0x2e3841c calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36712, a4=a0+376, a5=[a0+37136]:8, a6=0x2e37970.
  The `bgezall` at 0x2e38490 calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+37000, a4=sp-144, a5=[a0+37184]:8.
  The `bgezall` at 0x2e384fc calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36616, a4=a0+608, a5=[a0+37120]:8.
  The `jalr` at 0x2e38508 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3859c calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36760, a4=a0+392, a5=[a0+37144]:8.
  The `bgezall` at 0x2e3860c calls DoDomain2 [0x2e37970] with a0=sp-1888, a1=?, a2=?, a3=a0+36952, a4=sp-144, a5=[a0+37176]:8.
  The `jalr` at 0x2e3865c calls (unknown callee) with a0=sp-144, a1=?, a2=?, a3=?, a6=0x4.
  The `bne` branch at 0x2e37f2c targets 0x2e37f14, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bgtz` branch at 0x2e37fe0 targets 0x2e37f40, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x2e37fec targets 0x2e37ff8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bgez` branch at 0x2e38000 targets 0x2e383ec, is taken when v1(=([a0+2056] << 0x28)) >= 0 (signed), and falls through when v1(=([a0+2056] << 0x28)) < 0 (signed).
  The `beq` branch at 0x2e3800c targets 0x2e382c4, is taken when (a0(=[a0+2076]) & 0x100) == 0, and falls through when (a0(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x2e38074 targets 0x2e380c8, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e380e0 targets 0x2e384d8, is taken when t8(=[a0+3557]:1) == 0, and falls through when t8(=[a0+3557]:1) != 0.
  The `beq` branch at 0x2e380e8 targets 0x2e38148, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2e38110 targets 0x2e38144, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3814c targets 0x2e381cc, is taken when (a0(=[a0+2076]) & 0x40) == 0, and falls through when (a0(=[a0+2076]) & 0x40) != 0.
  The `beq` branch at 0x2e38178 targets 0x2e38234, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `bne` branch at 0x2e381ac targets 0x2e38238, is taken when s3(=one of -0x1, 0x3, 0x4) != a4(=0x3), and falls through when s3(=one of -0x1, 0x3, 0x4) == a4(=0x3).
  The `beq` branch at 0x2e381c4 targets 0x2e38248 and is always taken.
  The `beq` branch at 0x2e381cc targets 0x2e3837c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2e381fc targets 0x2e38230, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e38234 targets 0x2e381b4, is taken when s3(=one of -0x1, 0x3, 0x4) == a5(=0x3), and falls through when s3(=one of -0x1, 0x3, 0x4) != a5(=0x3).
  The `beq` branch at 0x2e3823c targets 0x2e38654, is taken when s3(=one of -0x1, 0x3, 0x4) == a6(=0x4), and falls through when s3(=one of -0x1, 0x3, 0x4) != a6(=0x4).
  The `beq` branch at 0x2e3824c targets 0x2e382a0, is taken when (a7(=[a0+2076]) & 0x1) == 0, and falls through when (a7(=[a0+2076]) & 0x1) != 0.
  The `beq` branch at 0x2e3825c targets 0x2e382a0, is taken when (t0(=[a0+2056]) & 0x80) == 0, and falls through when (t0(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e382c8 targets 0x2e3856c, is taken when (a0(=[a0+2076]) & 0x80) == 0, and falls through when (a0(=[a0+2076]) & 0x80) != 0.
  The `beq` branch at 0x2e38318 targets 0x2e3836c, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e38374 targets 0x2e380d4 and is always taken.
  The `beq` branch at 0x2e3837c targets 0x2e38578, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2e383b4 targets 0x2e38230, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e383e4 targets 0x2e38230 and is always taken.
  The `beq` branch at 0x2e383f0 targets 0x2e3845c, is taken when (a0(=[a0+2076]) & 0x4) == 0, and falls through when (a0(=[a0+2076]) & 0x4) != 0.
  The `beq` branch at 0x2e38424 targets 0x2e38458, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3846c targets 0x2e385ec, is taken when (a0(=[a0+2076]) & 0x100) == 0, and falls through when (a0(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x2e38498 targets 0x2e384d0, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e384d0 targets 0x2e380dc and is always taken.
  The `beq` branch at 0x2e384dc targets 0x2e38148, is taken when (a0(=[a0+2076]) & 0x1) == 0, and falls through when (a0(=[a0+2076]) & 0x1) != 0.
  The `beq` branch at 0x2e38510 targets 0x2e38554, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3852c targets 0x2e38694, is taken when (a4(=[a0+2056]) & 0x80) == 0, and falls through when (a4(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e3855c targets 0x2e38674, is taken when (a6(=[a0+2056]) & 0x80) == 0, and falls through when (a6(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x2e38564 targets 0x2e38148 and is always taken.
  The `beq` branch at 0x2e38570 targets 0x2e380d4 and is always taken.
  The `beq` branch at 0x2e38578 targets 0x2e38234, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x2e385b4 targets 0x2e38230, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e385e4 targets 0x2e38230 and is always taken.
  The `beq` branch at 0x2e385ec targets 0x2e3866c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2e38614 targets 0x2e3864c, is taken when s1(=a3) == 0, and falls through when s1(=a3) != 0.
  The `beq` branch at 0x2e3864c targets 0x2e380dc and is always taken.
  The `beq` branch at 0x2e38664 targets 0x2e38248 and is always taken.
  The `beq` branch at 0x2e3866c targets 0x2e380e0 and is always taken.
  The `beq` branch at 0x2e3868c targets 0x2e38564 and is always taken.
  The `beq` branch at 0x2e386b0 targets 0x2e38554 and is always taken.
  The return at 0x2e382bc has v0 = one of ?, ret(?).
- `__glEvalMesh2Fill` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e38d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e38d10-0x2e39090 (896 bytes).
  It occupies 896 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8b0, including `lw` at 0x2e38d18, `lw` at 0x2e38ea4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c0, including `lw` at 0x2e38d58, `lw` at 0x2e38f04, `lw` at 0x2e38f50.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8b4, including `lwc1` at 0x2e38d64, `lwc1` at 0x2e38f68.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8b8, including `lwc1` at 0x2e38d74, `lwc1` at 0x2e38f60.
  The `lwc1` at 0x2e38d80 loads 4 bytes from a0 (arg0 at entry) +0x194.
  The `lwc1` at 0x2e38d84 loads 4 bytes from a0 (arg0 at entry) +0x190.
  The `lwc1` at 0x2e38d8c loads 4 bytes from a0 (arg0 at entry) +0x18c.
  The `lwc1` at 0x2e38d90 loads 4 bytes from a0 (arg0 at entry) +0x188.
  The `lwc1` at 0x2e38d94 loads 4 bytes from a0 (arg0 at entry) +0x184.
  The `lwc1` at 0x2e38d98 loads 4 bytes from a0 (arg0 at entry) +0x180.
  The `lwc1` at 0x2e38d9c loads 4 bytes from a0 (arg0 at entry) +0x17c.
  The `lwc1` at 0x2e38da0 loads 4 bytes from a0 (arg0 at entry) +0x178.
  The `lwc1` at 0x2e38da4 loads 4 bytes from a0 (arg0 at entry) +0x174.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8a4, including `lwc1` at 0x2e38dac, `lwc1` at 0x2e38ea8, `lwc1` at 0x2e38fd0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8a8, including `lwc1` at 0x2e38db0, `lwc1` at 0x2e38ebc, `lwc1` at 0x2e38fe0.
  The `lwc1` at 0x2e38dbc loads 4 bytes from a0 (arg0 at entry) +0x170.
  The `lwc1` at 0x2e38dc0 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lwc1` at 0x2e38dd4 loads 4 bytes from a0 (arg0 at entry) +0x168.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x2e38e80, `ld` at 0x2e38ed4.
  The `ld` at 0x2e38e84 loads 8 bytes from [a0+6872]:8 +0x58.
  The `ld` at 0x2e38ed8 loads 8 bytes from [a0+6872]:8 +0x38.
  The `swc1` at 0x2e39044 stores 4 bytes to a0 (arg0 at entry) +0x194.
  The `swc1` at 0x2e39048 stores 4 bytes to a0 (arg0 at entry) +0x190.
  The `swc1` at 0x2e3904c stores 4 bytes to a0 (arg0 at entry) +0x18c.
  The `swc1` at 0x2e39050 stores 4 bytes to a0 (arg0 at entry) +0x188.
  The `swc1` at 0x2e39054 stores 4 bytes to a0 (arg0 at entry) +0x184.
  The `swc1` at 0x2e39058 stores 4 bytes to a0 (arg0 at entry) +0x180.
  The `swc1` at 0x2e3905c stores 4 bytes to a0 (arg0 at entry) +0x17c.
  The `swc1` at 0x2e39060 stores 4 bytes to a0 (arg0 at entry) +0x178.
  The `swc1` at 0x2e39064 stores 4 bytes to a0 (arg0 at entry) +0x174.
  The `swc1` at 0x2e39068 stores 4 bytes to a0 (arg0 at entry) +0x170.
  The `swc1` at 0x2e3906c stores 4 bytes to a0 (arg0 at entry) +0x16c.
  The `swc1` at 0x2e39070 stores 4 bytes to a0 (arg0 at entry) +0x168.
  The `jalr` at 0x2e38e88 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2e38edc calls (unknown callee) with a0=0x8, a1=?, a2=?, a3=?, a6=[a0+2224].
  The `bgezall` at 0x2e38f1c calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `bgezall` at 0x2e38f34 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e38f88 calls sendChange [0x2e38b70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e38fa4 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `bgezall` at 0x2e38fbc calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `beq` branch at 0x2e38d50 targets 0x2e39074, is taken when a6(=[a0+2224]) == 0, and falls through when a6(=[a0+2224]) != 0.
  The `beq` branch at 0x2e38d5c targets 0x2e39074, is taken when a0(=[a0+2240]) == 0, and falls through when a0(=[a0+2240]) != 0.
  The `beq` branch at 0x2e38dd8 targets 0x2e39038, is taken when a1 >= v1(=a3) (signed), and falls through when a1 < v1(=a3) (signed).
  The `beq` branch at 0x2e38e6c targets 0x2e38ea4 and is always taken.
  The `beq` branch at 0x2e38e9c targets 0x2e38fe4, is taken when ra(=a3) == s5(?), and falls through when ra(=a3) != s5(?).
  The `bne` branch at 0x2e38eb4 targets 0x2e38fcc, is taken when a6(=[a0+2224]) != s5(?), and falls through when a6(=[a0+2224]) == s5(?).
  The `beq` branch at 0x2e38ec4 targets 0x2e38fdc, is taken when a6(=[a0+2224]) == at(?), and falls through when a6(=[a0+2224]) != at(?).
  The `beq` branch at 0x2e38ef8 targets 0x2e38e80, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2e38f00 targets 0x2e38f54 and is always taken.
  The `beq` branch at 0x2e38f48 targets 0x2e38e80, is taken when t8(=a2-1) == s1(?), and falls through when t8(=a2-1) != s1(?).
  The `beq` branch at 0x2e38f5c targets 0x2e38f70, is taken when t9(=[a0+2240]) == s1(?), and falls through when t9(=[a0+2240]) != s1(?).
  The `beq` branch at 0x2e38f70 targets 0x2e38f98, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2e38f78 targets 0x2e38f10, is taken when s6(=a1) == s5(?), and falls through when s6(=a1) != s5(?).
  The `beq` branch at 0x2e38f90 targets 0x2e38f24 and is always taken.
  The `beq` branch at 0x2e38fc4 targets 0x2e38f40 and is always taken.
  The `bne` branch at 0x2e38fd4 targets 0x2e38ec8, is taken when a6(=[a0+2224]) != at(?), and falls through when a6(=[a0+2224]) == at(?).
  The `beq` branch at 0x2e38fdc targets 0x2e38ed4 and is always taken.
  The return at 0x2e39088 has v0 = s8.
  The instructions from 0x2e38e74 to 0x2e38e7c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e38f08 to 0x2e38f0c are not reached by any path from the entry, and their branches are not listed.
- `__glEvalMesh2Line` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e39310 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e39310-0x2e398c8 (1464 bytes).
  It occupies 1464 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8b0, including `lw` at 0x2e39318, `lw` at 0x2e394a4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8c0, including `lw` at 0x2e3935c, `lw` at 0x2e39574, `lw` at 0x2e39754.
  The `lwc1` at 0x2e39374 loads 4 bytes from a0 (arg0 at entry) +0x180.
  The `lwc1` at 0x2e39378 loads 4 bytes from a0 (arg0 at entry) +0x184.
  The `lwc1` at 0x2e3937c loads 4 bytes from a0 (arg0 at entry) +0x188.
  The `lwc1` at 0x2e39380 loads 4 bytes from a0 (arg0 at entry) +0x18c.
  The `lwc1` at 0x2e39384 loads 4 bytes from a0 (arg0 at entry) +0x194.
  The `lwc1` at 0x2e39388 loads 4 bytes from a0 (arg0 at entry) +0x190.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8b4, including `lwc1` at 0x2e39394, `lwc1` at 0x2e39578, `lwc1` at 0x2e39594.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8b8, including `lwc1` at 0x2e393a4, `lwc1` at 0x2e39588, `lwc1` at 0x2e39640.
  The `lwc1` at 0x2e393bc loads 4 bytes from a0 (arg0 at entry) +0x17c.
  The `lwc1` at 0x2e393cc loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lwc1` at 0x2e393d8 loads 4 bytes from a0 (arg0 at entry) +0x178.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8a4, including `lwc1` at 0x2e393dc, `lwc1` at 0x2e394f0, `lwc1` at 0x2e396ac.
  The `lwc1` at 0x2e393e8 loads 4 bytes from a0 (arg0 at entry) +0x170.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8a8, including `lwc1` at 0x2e393ec, `lwc1` at 0x2e394e4, `lwc1` at 0x2e396bc.
  The `lwc1` at 0x2e393f8 loads 4 bytes from a0 (arg0 at entry) +0x16c.
  The `lwc1` at 0x2e39404 loads 4 bytes from a0 (arg0 at entry) +0x168.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x2e39540, `ld` at 0x2e3959c, `ld` at 0x2e39648.
  2 such `ld` accesses load 8 bytes from [a0+6872]:8 +0x58, including `ld` at 0x2e39544, `ld` at 0x2e397d4.
  2 such `ld` accesses load 8 bytes from [a0+6872]:8 +0x38, including `ld` at 0x2e395a0, `ld` at 0x2e396e8.
  The `swc1` at 0x2e39824 stores 4 bytes to a0 (arg0 at entry) +0x194.
  The `swc1` at 0x2e39828 stores 4 bytes to a0 (arg0 at entry) +0x190.
  The `swc1` at 0x2e3982c stores 4 bytes to a0 (arg0 at entry) +0x18c.
  The `swc1` at 0x2e39830 stores 4 bytes to a0 (arg0 at entry) +0x188.
  The `swc1` at 0x2e39834 stores 4 bytes to a0 (arg0 at entry) +0x184.
  The `swc1` at 0x2e39838 stores 4 bytes to a0 (arg0 at entry) +0x180.
  The `swc1` at 0x2e3983c stores 4 bytes to a0 (arg0 at entry) +0x17c.
  The `swc1` at 0x2e39840 stores 4 bytes to a0 (arg0 at entry) +0x178.
  The `swc1` at 0x2e39844 stores 4 bytes to a0 (arg0 at entry) +0x174.
  The `swc1` at 0x2e39848 stores 4 bytes to a0 (arg0 at entry) +0x170.
  The `swc1` at 0x2e3984c stores 4 bytes to a0 (arg0 at entry) +0x16c.
  The `swc1` at 0x2e39854 stores 4 bytes to a0 (arg0 at entry) +0x168.
  The `bgezall` at 0x2e39520 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `bgezall` at 0x2e39538 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e39548 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2e395a4 calls (unknown callee) with a0=0x3, a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e395d8 calls sendChange [0x2e38b70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e395f4 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e39624 calls sendChange [0x2e38b70] with a0=a0 at entry (arg0), a1=?, a2=0x2e38b70, a3=?.
  The `bgezall` at 0x2e3965c calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `bgezall` at 0x2e39674 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `bgezall` at 0x2e39690 calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `jalr` at 0x2e396ec calls (unknown callee) with a0=0x3, a1=?, a2=?, a3=?, a6=[a0+2224].
  The `bgezall` at 0x2e3973c calls DoEvalCoord2 [0x2e37ec0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x0.
  The `bgezall` at 0x2e3979c calls sendChange [0x2e38b70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2e397e0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e39354 targets 0x2e39868, is taken when a6(=[a0+2224]) == 0, and falls through when a6(=[a0+2224]) != 0.
  The `beq` branch at 0x2e39360 targets 0x2e39868, is taken when a0(=[a0+2240]) == 0, and falls through when a0(=[a0+2240]) != 0.
  The `beq` branch at 0x2e39414 targets 0x2e39884, is taken when a1 >= v1(=a3) (signed), and falls through when a1 < v1(=a3) (signed).
  The `beq` branch at 0x2e3948c targets 0x2e394c0 and is always taken.
  The `beq` branch at 0x2e394b8 targets 0x2e396c0, is taken when a1(=a3) == s6(?), and falls through when a1(=a3) != s6(?).
  The `bne` branch at 0x2e394d8 targets 0x2e396a0, is taken when a6(=[a0+2224]) != a3(?), and falls through when a6(=[a0+2224]) == a3(?).
  The `beq` branch at 0x2e394e0 targets 0x2e396b8, is taken when a6(=[a0+2224]) == s6(?), and falls through when a6(=[a0+2224]) != s6(?).
  The `beq` branch at 0x2e394f8 targets 0x2e394a8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2e39504 targets 0x2e39574 and is always taken.
  The `beq` branch at 0x2e3956c targets 0x2e394a0, is taken when ra(=a4+1) == s1(?), and falls through when ra(=a4+1) != s1(?).
  The `bne` branch at 0x2e3957c targets 0x2e39634, is taken when a0(=[a0+2240]) != s1(?), and falls through when a0(=[a0+2240]) == s1(?).
  The `beq` branch at 0x2e39584 targets 0x2e39640, is taken when a0(=[a0+2240]) == s3(?), and falls through when a0(=[a0+2240]) != s3(?).
  The `beq` branch at 0x2e395b0 targets 0x2e395fc, is taken when ra(=a4) == s1(?), and falls through when ra(=a4) != s1(?).
  The `beq` branch at 0x2e395b8 targets 0x2e39684, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2e395c0 targets 0x2e395e8, is taken when s7(=a1) == s6(?), and falls through when s7(=a1) != s6(?).
  The `beq` branch at 0x2e395e0 targets 0x2e39600 and is always taken.
  The `beq` branch at 0x2e39600 targets 0x2e3964c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2e39608 targets 0x2e39510, is taken when s7(=a1) == s6(?), and falls through when s7(=a1) != s6(?).
  The `beq` branch at 0x2e39610 targets 0x2e39510, is taken when a0(=a2) == s1(?), and falls through when a0(=a2) != s1(?).
  The `beq` branch at 0x2e3962c targets 0x2e39528 and is always taken.
  The `bne` branch at 0x2e39638 targets 0x2e3958c, is taken when a0(=[a0+2240]) != s3(?), and falls through when a0(=[a0+2240]) == s3(?).
  The `beq` branch at 0x2e39644 targets 0x2e395a0 and is always taken.
  The `beq` branch at 0x2e3967c targets 0x2e39544 and is always taken.
  The `beq` branch at 0x2e39698 targets 0x2e39600 and is always taken.
  The `bne` branch at 0x2e396b0 targets 0x2e394e8, is taken when a6(=[a0+2224]) != s6(?), and falls through when a6(=[a0+2224]) == s6(?).
  The `beq` branch at 0x2e396b8 targets 0x2e394f8 and is always taken.
  The `bne` branch at 0x2e396c4 targets 0x2e396d4, is taken when a6(=[a0+2224]) != s6(?), and falls through when a6(=[a0+2224]) == s6(?).
  The `beq` branch at 0x2e396cc targets 0x2e396e4 and is always taken.
  The `beq` branch at 0x2e396f8 targets 0x2e397ac, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x2e39728 targets 0x2e39754 and is always taken.
  The `beq` branch at 0x2e3974c targets 0x2e397ac, is taken when s6(=a2-1) == s1(?), and falls through when s6(=a2-1) != s1(?).
  The `bne` branch at 0x2e3975c targets 0x2e39780, is taken when t8(=[a0+2240]) != s1(?), and falls through when t8(=[a0+2240]) == s1(?).
  The `bgez` branch at 0x2e39764 targets 0x2e3978c, is taken when s4(?) >= 0 (signed), and falls through when s4(?) < 0 (signed).
  The `beq` branch at 0x2e3976c targets 0x2e39734 and is always taken.
  The `bltz` branch at 0x2e39784 targets 0x2e39730, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x2e39790 targets 0x2e39730, is taken when s4(?) >= 0x400 (signed), and falls through when s4(?) < 0x400 (signed).
  The `beq` branch at 0x2e397a4 targets 0x2e39744 and is always taken.
  The `beq` branch at 0x2e398c0 targets 0x2e396c4 and is always taken.
  The return at 0x2e39860 has v0 = ret(?).
  The return at 0x2e3987c has v0 = s8.
  The instructions from 0x2e39494 to 0x2e3949c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e3950c to 0x2e3950c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2e39774 to 0x2e3977c are not reached by any path from the entry, and their branches are not listed.
- `NurbsKnots1Common` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e398d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e398d0-0x2e399b8 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x2e398d0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e398dc loads 8 bytes from abs 0x1020.
  The `lw` at 0x2e39910 loads 4 bytes from [0x1020]:8 +0x101c.
  The `sw` at 0x2e39950 stores 4 bytes to table(0x8df8) +0x0.
  The `ld` at 0x2e39954 loads 8 bytes from [0x1020]:8 +0x10.
  The `ld` at 0x2e39970 loads 8 bytes from table(0x9148) +0x0.
  The `sd` at 0x2e39984 stores 8 bytes to table(0x9148) +0x0.
  The `jalr` at 0x2e39920 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3), a5=[0x1020]:8, a7=(a0-3472 << 0x20).
  The `jalr` at 0x2e3996c calls (unknown callee) with a0=[0x1020]:8, a1=entry(0x9148), a2=(a1 << 0x3), a3=?, a4=table(0x10000), a5=[0x1020]:8, a7=(a0-3472 << 0x20).
  The `jalr` at 0x2e3998c calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3), a5=[0x1020]:8, a7=(a0-3472 << 0x20).
  The `jalr` at 0x2e399a4 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1020]:8, a7=a0-3472.
  The `beq` branch at 0x2e398e8 targets 0x2e399a0, is taken when at(=[0x1030]) == v1(=0x1), and falls through when at(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e39900 targets 0x2e39988, is taken when t0(?) >= 0x9 (unsigned), and falls through when t0(?) < 0x9 (unsigned).
  The `bltz` branch at 0x2e39908 targets 0x2e39920, is taken when v0(=a1) < 0 (signed), and falls through when v0(=a1) >= 0 (signed).
  The `bne` branch at 0x2e39918 targets 0x2e39940, is taken when v0(=a1) < t1(=[[0x1020]:8+4124]) (signed), and falls through when v0(=a1) >= t1(=[[0x1020]:8+4124]) (signed).
  The `beq` branch at 0x2e39998 targets 0x2e39938 and is always taken.
  The `beq` branch at 0x2e399b0 targets 0x2e39938 and is always taken.
  The return at 0x2e39930 has v0 = 0x0.
  The return at 0x2e39938 has v0 = 0x0.
  The return at 0x2e39980 has v0 = ret(?).
- `NurbsKnots2Common` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e399c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e399c0-0x2e39adc (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x2e399c0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e399cc loads 8 bytes from abs 0x1020.
  The `lw` at 0x2e399fc loads 4 bytes from [0x1020]:8 +0x101c.
  The `lw` at 0x2e39a3c loads 4 bytes from table(0x8f24) +0x0.
  The `sw` at 0x2e39a40 stores 4 bytes to table(0x8f28) +0x0.
  The `ld` at 0x2e39a44 loads 8 bytes from [0x1020]:8 +0x10.
  The `ld` at 0x2e39a4c loads 8 bytes from ?.
  The `sd` at 0x2e39a60 stores 8 bytes to ?.
  The `lw` at 0x2e39a7c loads 4 bytes from table(0x8f28) +0x0.
  The `sw` at 0x2e39a84 stores 4 bytes to table(0x8f24) +0x0.
  The `jalr` at 0x2e39a54 calls (unknown callee) with a0=[0x1020]:8, a1=?, a2=?, a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `jalr` at 0x2e39a94 calls __glSetError [0x2e315d0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `jalr` at 0x2e39aac calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `jalr` at 0x2e39ac8 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=(a0-3504 << 0x20).
  The `beq` branch at 0x2e399d8 targets 0x2e39ac4, is taken when at(=[0x1030]) == v1(=0x1), and falls through when at(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e399ec targets 0x2e39aac, is taken when a6(?) >= 0x9 (unsigned), and falls through when a6(?) < 0x9 (unsigned).
  The `bltz` branch at 0x2e399f4 targets 0x2e39a94, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x2e39a04 targets 0x2e39a94, is taken when a1 >= t0(=[[0x1020]:8+4124]) (signed), and falls through when a1 < t0(=[[0x1020]:8+4124]) (signed).
  The `beq` branch at 0x2e39a30 targets 0x2e39a78, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x2e39a88 targets 0x2e39a44 and is always taken.
  The `beq` branch at 0x2e39ad4 targets 0x2e39a6c and is always taken.
  The return at 0x2e39a70 has v0 = one of ret(?), 0x0.
  The return at 0x2e39aa4 has v0 = 0x0.
  The return at 0x2e39abc has v0 = 0x0.
  The instructions from 0x2e39a90 to 0x2e39a90 are not reached by any path from the entry, and their branches are not listed.
- `feedback` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3a4c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e3a4c0-0x2e3a848 (904 bytes).
  It occupies 904 bytes.
  The `lw` at 0x2e3a4c8 loads 4 bytes from a0 (arg0 at entry) +0x1484.
  The `lw` at 0x2e3a538 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x2e3a550 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwc1` at 0x2e3a560 loads 4 bytes from a1 (arg1 at entry) +0x3c.
  The `lwc1` at 0x2e3a570 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `lwc1` at 0x2e3a580 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `lbu` at 0x2e3a5a0 loads 1 byte from a0 (arg0 at entry) +0xde4.
  The `ld` at 0x2e3a5a4 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x2e3a5b0 loads 4 bytes from [a1+8]:8 +0x0.
  The `lwc1` at 0x2e3a5c0 loads 4 bytes from a0 (arg0 at entry) +0x9a38.
  The `lwc1` at 0x2e3a5e0 loads 4 bytes from [a1+8]:8 +0x4.
  The `lwc1` at 0x2e3a5e4 loads 4 bytes from a0 (arg0 at entry) +0x9a3c.
  The `lwc1` at 0x2e3a600 loads 4 bytes from [a1+8]:8 +0x8.
  The `lwc1` at 0x2e3a604 loads 4 bytes from a0 (arg0 at entry) +0x9a40.
  The `lwc1` at 0x2e3a620 loads 4 bytes from [a1+8]:8 +0xc.
  The `lwc1` at 0x2e3a624 loads 4 bytes from a0 (arg0 at entry) +0x9a44.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xfb8, including `lwc1` at 0x2e3a640, `lwc1` at 0x2e3a6e4, `lwc1` at 0x2e3a758.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0x2e3a644, `lwc1` at 0x2e3a6e8, `lwc1` at 0x2e3a75c.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x1454, including `lbu` at 0x2e3a658, `lbu` at 0x2e3a700, `lbu` at 0x2e3a778.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0x2e3a65c, `lwc1` at 0x2e3a6fc, `lwc1` at 0x2e3a774.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xfbc, including `lwc1` at 0x2e3a660, `lwc1` at 0x2e3a6f8, `lwc1` at 0x2e3a770.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfdc, including `lw` at 0x2e3a66c, `lw` at 0x2e3a710, `lw` at 0x2e3a784.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xfc0, including `lwc1` at 0x2e3a678, `lwc1` at 0x2e3a71c, `lwc1` at 0x2e3a790.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9d74, including `lw` at 0x2e3a698, `lw` at 0x2e3a7b0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x90, including `lwc1` at 0x2e3a6a8, `lwc1` at 0x2e3a7c0.
  The `lwc1` at 0x2e3a7e4 loads 4 bytes from a1 (arg1 at entry) +0x84.
  The `ld` at 0x2e3a7f4 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x2e3a7fc loads 4 bytes from a0 (arg0 at entry) +0x8cf8.
  The `bgezall` at 0x2e3a54c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a1+56].
  The `bgezall` at 0x2e3a55c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a1+60].
  The `bgezall` at 0x2e3a56c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a1+64].
  The `bgezall` at 0x2e3a57c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a1+68].
  The `bgezall` at 0x2e3a5cc calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1+8]:8, a4=[a0+3556]:1, a5=a0+65536.
  The `bgezall` at 0x2e3a5ec calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=[a1+8]:8, a7=a0+65536; fp f14=[[a1+8]:8+4].
  The `bgezall` at 0x2e3a60c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f14=[[a1+8]:8+8].
  The `bgezall` at 0x2e3a62c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f14=[[a1+8]:8+12].
  The `bgezall` at 0x2e3a650 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=[a0+4024].
  The `bgezall` at 0x2e3a688 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f14=[a0+4032].
  The `bgezall` at 0x2e3a6b8 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3a6d4 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1+8]:8, a4=[a0+3556]:1; fp f13=[[a1+8]:8].
  The `bgezall` at 0x2e3a6f0 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=[a0+4024].
  The `bgezall` at 0x2e3a72c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f14=[a0+4032].
  The `bgezall` at 0x2e3a748 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3a768 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=[a0+4024].
  The `bgezall` at 0x2e3a7a0 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=[a0+4060], a2=?, a3=?; fp f14=[a0+4032].
  The `bgezall` at 0x2e3a7d0 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3a7e0 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=[a1+132].
  The `jalr` at 0x2e3a808 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=([a0+36088] | 0x4), a3=?.
  The `bgezall` at 0x2e3a820 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2e3a838 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
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
  The `beq` branch at 0x2e3a634 targets 0x2e3a528 and is always taken.
  The `beq` branch at 0x2e3a664 targets 0x2e3a740, is taken when t8(=[a0+5204]:1) == 0, and falls through when t8(=[a0+5204]:1) != 0.
  The `beq` branch at 0x2e3a6c4 targets 0x2e3a510 and is always taken.
  The `beq` branch at 0x2e3a6dc targets 0x2e3a528 and is always taken.
  The `beq` branch at 0x2e3a708 targets 0x2e3a818, is taken when at(=[a0+5204]:1) == 0, and falls through when at(=[a0+5204]:1) != 0.
  The `beq` branch at 0x2e3a738 targets 0x2e3a510 and is always taken.
  The `beq` branch at 0x2e3a750 targets 0x2e3a694 and is always taken.
  The `beq` branch at 0x2e3a77c targets 0x2e3a830, is taken when v1(=[a0+5204]:1) == 0, and falls through when v1(=[a0+5204]:1) != 0.
  The `beq` branch at 0x2e3a7e8 targets 0x2e3a510 and is always taken.
  The `beq` branch at 0x2e3a810 targets 0x2e3a548 and is always taken.
  The `beq` branch at 0x2e3a828 targets 0x2e3a738 and is always taken.
  The `beq` branch at 0x2e3a840 targets 0x2e3a7a8 and is always taken.
  The return at 0x2e3a598 has v0 = one of ?, ret(__glFeedbackTag).
- `__glFeedbackTriangle` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3aab0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e3aab0-0x2e3af90 (1248 bytes).
  It occupies 1248 bytes.
  The `lwc1` at 0x2e3aab0 loads 4 bytes from a3 (arg3 at entry) +0x88.
  The `lwc1` at 0x2e3aab4 loads 4 bytes from a3 (arg3 at entry) +0x8c.
  The `lwc1` at 0x2e3aab8 loads 4 bytes from a2 (arg2 at entry) +0x8c.
  The `lwc1` at 0x2e3aabc loads 4 bytes from a1 (arg1 at entry) +0x8c.
  The `lwc1` at 0x2e3aac0 loads 4 bytes from a2 (arg2 at entry) +0x88.
  The `lwc1` at 0x2e3aac4 loads 4 bytes from a1 (arg1 at entry) +0x88.
  The `lbu` at 0x2e3ab14 loads 1 byte from a0 (arg0 at entry) +0x9885.
  The `lbu` at 0x2e3ab24 loads 1 byte from table(0x9880) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x670, including `lw` at 0x2e3ab4c, `lw` at 0x2e3ac68.
  The `lw` at 0x2e3ab50 loads 4 bytes from a0 (arg0 at entry) +0x9814.
  The `lw` at 0x2e3ab58 loads 4 bytes from a0 (arg0 at entry) +0x8cf8.
  2 such `lw` accesses load 4 bytes from (a0 + (entry(0x9880) << 0x2)) +0x8cfc, including `lw` at 0x2e3ab80, `lw` at 0x2e3acbc.
  3 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x8, including `sd` at 0x2e3ab98, `sd` at 0x2e3ac54, `sd` at 0x2e3acd0.
  3 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x8, including `sd` at 0x2e3aba4, `sd` at 0x2e3ac5c, `sd` at 0x2e3acd8.
  3 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x8, including `sd` at 0x2e3abac, `sd` at 0x2e3ac64, `sd` at 0x2e3ace0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x2e3abb0, `lw` at 0x2e3ad10.
  The `ld` at 0x2e3abc4 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x2e3abd8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `ld` at 0x2e3abec loads 8 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0x2e3ac00 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0x2e3ac14 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lbu` at 0x2e3ac38 loads 1 byte from (entry(0x9880) + a0) +0x9882.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8cf0, including `ld` at 0x2e3aca4, `ld` at 0x2e3adc0.
  2 such `sd` accesses store 8 bytes to [a0+36080]:8 +0x8, including `sd` at 0x2e3accc, `sd` at 0x2e3add4.
  2 such `ld` accesses load 8 bytes from [a0+36080]:8 +0x8, including `ld` at 0x2e3acd4, `ld` at 0x2e3acdc.
  The `lw` at 0x2e3ace4 loads 4 bytes from [a0+36080]:8 +0x0.
  The `ld` at 0x2e3acfc loads 8 bytes from [a0+36080]:8 +0x10.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0xc0, including `lbu` at 0x2e3ad14, `lbu` at 0x2e3ade8.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0xc0, including `lbu` at 0x2e3ad44, `lbu` at 0x2e3ae34.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0xc0, including `lbu` at 0x2e3ad74, `lbu` at 0x2e3ae7c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8cfc, including `lw` at 0x2e3add8, `lw` at 0x2e3af28.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x95b8, including `lbu` at 0x2e3adf4, `lbu` at 0x2e3ae44, `lbu` at 0x2e3ae88.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x95b8, including `sb` at 0x2e3af44, `sb` at 0x2e3af64, `sb` at 0x2e3af84.
  The `jalr` at 0x2e3abd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e3abf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x2e3ac20 calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0x2e3ad04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+36080]:8, a2=?, a3=?, a6=[[a0+36080]:8+8]:8, a7=[[a0+36080]:8+8]:8.
  The `bgezall` at 0x2e3ad24 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=(entry(0x9880) + a0), a2=?, a3=?; fp f13=0x44e02000.
  The `bgezall` at 0x2e3ad3c calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x2e3ad5c calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=0x44e02000.
  The `bgezall` at 0x2e3ad6c calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgezall` at 0x2e3ad88 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=a1+152; fp f13=0x44e02000.
  The `bgezall` at 0x2e3ad98 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x2e3ae04 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=[a0+38328]:1, a2=0x2, a3=?; fp f13=0x44e04000.
  The `bgezall` at 0x2e3ae1c calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x2e3ae2c calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgezall` at 0x2e3ae54 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=0x44e04000.
  The `bgezall` at 0x2e3ae64 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgezall` at 0x2e3ae74 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x2e3ae98 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=a1+152; fp f13=0x44e04000.
  The `bgezall` at 0x2e3aea8 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x2e3aeb8 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x2e3aed0 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=(entry(0x9880) + a0), a2=0x2, a3=?, a7=a1+152; fp f13=0x44e06000.
  The `bgezall` at 0x2e3aee0 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=0x40400000.
  The `bgezall` at 0x2e3aef8 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgezall` at 0x2e3af08 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `bgezall` at 0x2e3af18 calls feedback [0x2e3a4c0] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `bgezall` at 0x2e3af40 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=[a0+38328]:1, a2=0x2, a3=?; fp f13=0x44e0e000.
  The `bgezall` at 0x2e3af60 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?; fp f13=0x44e0e000.
  The `bgezall` at 0x2e3af80 calls __glFeedbackTag [0x2e3a470] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=a1+152; fp f13=0x44e0e000.
  The `beq` branch at 0x2e3ab44 targets 0x2e3ac78, is taken when a5(=entry(0x9880)) == at(=[a0+39045]:1), and falls through when a5(=entry(0x9880)) != at(=[a0+39045]:1).
  The `beq` branch at 0x2e3ab60 targets 0x2e3aca0, is taken when a7(=0x1d00) == t0(=[a0+1648]), and falls through when a7(=0x1d00) != t0(=[a0+1648]).
  The `beq` branch at 0x2e3ab68 targets 0x2e3add8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2e3abbc targets 0x2e3abd8, is taken when (s1(?) & a5(?)) == 0, and falls through when (s1(?) & a5(?)) != 0.
  The `beq` branch at 0x2e3abe4 targets 0x2e3ac00, is taken when (s1(?) & a6(?)) == 0, and falls through when (s1(?) & a6(?)) != 0.
  The `beq` branch at 0x2e3ac0c targets 0x2e3ac2c, is taken when (s1(?) & a7(?)) == 0, and falls through when (s1(?) & a7(?)) != 0.
  The `beq` branch at 0x2e3ac3c targets 0x2e3ad14, is taken when a0(=[(entry(0x9880) + a0)+39042]:1) == 0, and falls through when a0(=[(entry(0x9880) + a0)+39042]:1) != 0.
  The `beq` branch at 0x2e3ac44 targets 0x2e3ade8, is taken when a0(=[(entry(0x9880) + a0)+39042]:1) == s1(=0x1), and falls through when a0(=[(entry(0x9880) + a0)+39042]:1) != s1(=0x1).
  The `beq` branch at 0x2e3ac4c targets 0x2e3aec8, is taken when a0(=[(entry(0x9880) + a0)+39042]:1) == a2(=0x2), and falls through when a0(=[(entry(0x9880) + a0)+39042]:1) != a2(=0x2).
  The `beq` branch at 0x2e3ac70 targets 0x2e3ada8, is taken when a3(=0x1d00) == a4(=[a0+1648]), and falls through when a3(=0x1d00) != a4(=[a0+1648]).
  The `beq` branch at 0x2e3aca0 targets 0x2e3af28, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2e3acf4 targets 0x2e3abb0, is taken when (a5(?) & 0x1b) == 0, and falls through when (a5(?) & 0x1b) != 0.
  The `beq` branch at 0x2e3ad0c targets 0x2e3abb4 and is always taken.
  The `beq` branch at 0x2e3ad18 targets 0x2e3ad44, is taken when t1(=[a1+192]:1) == 0, and falls through when t1(=[a1+192]:1) != 0.
  The `beq` branch at 0x2e3ad4c targets 0x2e3ad74, is taken when t8(=[a2+192]:1) == 0, and falls through when t8(=[a2+192]:1) != 0.
  The `beq` branch at 0x2e3ad78 targets 0x2e3ac54, is taken when t9(=[a3+192]:1) == 0, and falls through when t9(=[a3+192]:1) != 0.
  The `beq` branch at 0x2e3ada0 targets 0x2e3ac54 and is always taken.
  The `beq` branch at 0x2e3ade0 targets 0x2e3ab88 and is always taken.
  The `beq` branch at 0x2e3adec targets 0x2e3ae34, is taken when a0(=[a1+192]:1) == 0, and falls through when a0(=[a1+192]:1) != 0.
  The `beq` branch at 0x2e3adf8 targets 0x2e3af34, is taken when a1(=[a0+38328]:1) == 0, and falls through when a1(=[a0+38328]:1) != 0.
  The `beq` branch at 0x2e3ae3c targets 0x2e3ae7c, is taken when t8(=[a2+192]:1) == 0, and falls through when t8(=[a2+192]:1) != 0.
  The `beq` branch at 0x2e3ae48 targets 0x2e3af50, is taken when t9(=[a0+38328]:1) == 0, and falls through when t9(=[a0+38328]:1) != 0.
  The `beq` branch at 0x2e3ae80 targets 0x2e3ac54, is taken when ra(=[a3+192]:1) == 0, and falls through when ra(=[a3+192]:1) != 0.
  The `beq` branch at 0x2e3ae8c targets 0x2e3af70, is taken when at(=[a0+38328]:1) == 0, and falls through when at(=[a0+38328]:1) != 0.
  The `beq` branch at 0x2e3aec0 targets 0x2e3ac54 and is always taken.
  The `beq` branch at 0x2e3af20 targets 0x2e3ac54 and is always taken.
  The `beq` branch at 0x2e3af2c targets 0x2e3acc0 and is always taken.
  The `beq` branch at 0x2e3af48 targets 0x2e3ae10 and is always taken.
  The `beq` branch at 0x2e3af68 targets 0x2e3ae60 and is always taken.
  The `beq` branch at 0x2e3af88 targets 0x2e3aea4 and is always taken.
  The return at 0x2e3ac98 has v0 = one of 0xc5ce8, ?.
  The return at 0x2e3add0 has v0 = [a0+36080]:8.
- `__glim_GetMaterialfv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3d8e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e3d8e0-0x2e3da74 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0x2e3d8e8 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e3d8ec loads 8 bytes from abs 0x1020.
  The `lwc1` at 0x2e3d98c loads 4 bytes from ([0x1020]:8 + one of 0x6b0, 0x700) +0x0.
  5 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x2e3d990, `swc1` at 0x2e3d9c4, `swc1` at 0x2e3d9f0.
  The `lwc1` at 0x2e3d994 loads 4 bytes from ([0x1020]:8 + one of 0x6b4, 0x704) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x2e3d998, `swc1` at 0x2e3d9d0, `swc1` at 0x2e3da00.
  The `lwc1` at 0x2e3d99c loads 4 bytes from ([0x1020]:8 + one of 0x6b8, 0x708) +0x0.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x2e3d9a0, `swc1` at 0x2e3d9e4, `swc1` at 0x2e3da0c.
  The `lwc1` at 0x2e3d9a4 loads 4 bytes from ([0x1020]:8 + one of 0x6bc, 0x70c) +0x0.
  3 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `swc1` at 0x2e3d9b4, `swc1` at 0x2e3da20, `swc1` at 0x2e3da44.
  The `lwc1` at 0x2e3d9c0 loads 4 bytes from ([0x1020]:8 + one of 0x6d4, 0x724) +0x0.
  The `lwc1` at 0x2e3d9c8 loads 4 bytes from ([0x1020]:8 + one of 0x6dc, 0x72c) +0x0.
  The `lwc1` at 0x2e3d9d4 loads 4 bytes from ([0x1020]:8 + one of 0x6d8, 0x728) +0x0.
  The `lwc1` at 0x2e3d9e8 loads 4 bytes from ([0x1020]:8 + one of 0x6d0, 0x720) +0x0.
  The `lwc1` at 0x2e3d9f4 loads 4 bytes from ([0x1020]:8 + one of 0x690, 0x6e0) +0x0.
  The `lwc1` at 0x2e3d9fc loads 4 bytes from ([0x1020]:8 + one of 0x694, 0x6e4) +0x0.
  The `lwc1` at 0x2e3da04 loads 4 bytes from ([0x1020]:8 + one of 0x698, 0x6e8) +0x0.
  The `lwc1` at 0x2e3da10 loads 4 bytes from ([0x1020]:8 + one of 0x69c, 0x6ec) +0x0.
  The `lwc1` at 0x2e3da24 loads 4 bytes from ([0x1020]:8 + one of 0x6a0, 0x6f0) +0x0.
  The `lwc1` at 0x2e3da2c loads 4 bytes from ([0x1020]:8 + one of 0x6a4, 0x6f4) +0x0.
  The `lwc1` at 0x2e3da34 loads 4 bytes from ([0x1020]:8 + one of 0x6a8, 0x6f8) +0x0.
  The `lwc1` at 0x2e3da3c loads 4 bytes from ([0x1020]:8 + one of 0x6ac, 0x6fc) +0x0.
  The `jalr` at 0x2e3d92c calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=[0x1020]:8+1760.
  The `jalr` at 0x2e3d974 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=0x404, a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `jalr` at 0x2e3da4c calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1020]:8, a5=a2 at entry (arg2).
  The `jalr` at 0x2e3da64 calls __glUnScaleColorf [0x2e46ec0] with a0=[0x1020]:8, a1=a2 at entry (arg2), a2=([0x1020]:8 + one of 0x6c0, 0x710), a3=0x405, a4=[0x1020]:8, a5=a2 at entry (arg2), a6=([0x1020]:8 + one of 0x690, 0x6e0), a7=0x1603.
  The `beq` branch at 0x2e3d908 targets 0x2e3da48, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2e3d918 targets 0x2e3d9b8, is taken when a0 == a2(=0x404), and falls through when a0 != a2(=0x404).
  The `beq` branch at 0x2e3d920 targets 0x2e3d93c, is taken when a0 == a3(=0x405), and falls through when a0 != a3(=0x405).
  The `beq` branch at 0x2e3d934 targets 0x2e3d980 and is always taken.
  The `beq` branch at 0x2e3d940 targets 0x2e3d9c0, is taken when a1 == a7(=0x1603), and falls through when a1 != a7(=0x1603).
  The `beq` branch at 0x2e3d948 targets 0x2e3d9e8, is taken when a1 == t0(=0x1601), and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0x2e3d950 targets 0x2e3da5c, is taken when a1 == t1(=0x1600), and falls through when a1 != t1(=0x1600).
  The `beq` branch at 0x2e3d95c targets 0x2e3d9f4, is taken when a1 == t2(=0x1200), and falls through when a1 != t2(=0x1200).
  The `beq` branch at 0x2e3d964 targets 0x2e3da24, is taken when a1 == t3(=0x1201), and falls through when a1 != t3(=0x1201).
  The `beq` branch at 0x2e3d96c targets 0x2e3d98c, is taken when a1 == t8(=0x1202), and falls through when a1 != t8(=0x1202).
  The `beq` branch at 0x2e3d9b8 targets 0x2e3d940 and is always taken.
  The `beq` branch at 0x2e3d9ec targets 0x2e3d97c and is always taken.
  The `beq` branch at 0x2e3da40 targets 0x2e3d97c and is always taken.
  The `beq` branch at 0x2e3da54 targets 0x2e3d980 and is always taken.
  The `beq` branch at 0x2e3da6c targets 0x2e3d980 and is always taken.
  The return at 0x2e3d984 has v0 = one of ret(__glSetError), ?, ret(__glUnScaleColorf).
  The return at 0x2e3d9b0 has v0 = 0x1.
  The return at 0x2e3d9e0 has v0 = 0x1.
  The return at 0x2e3da1c has v0 = 0x1.
- `__glConvertResult` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3ecd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e3ecd0-0x2e3f908 (3128 bytes).
  It occupies 3128 bytes.
  17 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2e3ed64, `lbu` at 0x2e3ed88, `lbu` at 0x2e3ed94.
  25 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e3ed78, `sb` at 0x2e3ed90, `sb` at 0x2e3ed9c.
  33 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x2e3ee0c, `lwc1` at 0x2e3ee3c, `lwc1` at 0x2e3ee50.
  17 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e3f0b0, `lw` at 0x2e3f0d4, `lw` at 0x2e3f0e0.
  17 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x2e3f150, `swc1` at 0x2e3f16c, `swc1` at 0x2e3f17c.
  6 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2e3f1d0, `lwc1` at 0x2e3f2d0, `lwc1` at 0x2e3f4a8.
  5 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0x2e3f1dc, `swc1` at 0x2e3f2dc, `swc1` at 0x2e3f4d4.
  20 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0x2e3f24c, `sdc1` at 0x2e3f268, `sdc1` at 0x2e3f278.
  The `lbu` at 0x2e3f3b8 loads 1 byte from a2 (arg2 at entry) +0x0.
  2 such `sw` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `sw` at 0x2e3f3c4, `sw` at 0x2e3f6fc.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2e3f3dc, `sw` at 0x2e3f3ec, `sw` at 0x2e3f714.
  8 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf28, including `lwc1` at 0x2e3f4b8, `lwc1` at 0x2e3f50c, `lwc1` at 0x2e3f53c.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf40, including `lwc1` at 0x2e3f604, `lwc1` at 0x2e3f820, `lwc1` at 0x2e3f868.
  The `lw` at 0x2e3f6f0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a38, including `lwc1` at 0x2e3f73c, `lwc1` at 0x2e3f7a4, `lwc1` at 0x2e3f81c.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x2e3f748, `lwc1` at 0x2e3f7b4, `lwc1` at 0x2e3f860.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a3c, including `lwc1` at 0x2e3f74c, `lwc1` at 0x2e3f7b8, `lwc1` at 0x2e3f864.
  2 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x4, including `swc1` at 0x2e3f754, `swc1` at 0x2e3f888.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x2e3f758, `lwc1` at 0x2e3f7c8, `lwc1` at 0x2e3f890.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a40, including `lwc1` at 0x2e3f75c, `lwc1` at 0x2e3f7cc, `lwc1` at 0x2e3f894.
  2 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x8, including `swc1` at 0x2e3f764, `swc1` at 0x2e3f8b8.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x2e3f768, `lwc1` at 0x2e3f7dc, `lwc1` at 0x2e3f8c0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9a44, including `lwc1` at 0x2e3f76c, `lwc1` at 0x2e3f7e0, `lwc1` at 0x2e3f8c4.
  2 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0xc, including `swc1` at 0x2e3f794, `swc1` at 0x2e3f8f8.
  The `sdc1` at 0x2e3f7b0 stores 8 bytes to a4 (arg4 at entry) +0x0.
  The `sdc1` at 0x2e3f7c4 stores 8 bytes to a4 (arg4 at entry) +0x8.
  The `sdc1` at 0x2e3f7d8 stores 8 bytes to a4 (arg4 at entry) +0x10.
  The `sdc1` at 0x2e3f80c stores 8 bytes to a4 (arg4 at entry) +0x18.
  The `jalr` at 0x2e3f614 calls floorf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x2e3f84c calls floorf with a0=a0 at entry (arg0), a1=a0+65536, a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f15=[a2].
  The `jalr` at 0x2e3f87c calls floorf with a0=?, a1=?, a2=a0+65536, a3=?; fp f15=[a2+4].
  The `jalr` at 0x2e3f8ac calls floorf with a0=?, a1=?, a2=?, a3=a0+65536; fp f15=[a2+8].
  The `jalr` at 0x2e3f8dc calls floorf with a0=?, a1=?, a2=?, a3=?, a4=a0+65536; fp f15=[a2+12].
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
  The `beq` branch at 0x2e3ed58 targets 0x2e3ed7c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e3ed74 targets 0x2e3ed60, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e3ed80 targets 0x2e3edc4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x2e3edbc targets 0x2e3ed88, is taken when a4(?) != a3(=(a5 + a4)), and falls through when a4(?) == a3(=(a5 + a4)).
  The `beq` branch at 0x2e3edc4 targets 0x2e3ee9c and is always taken.
  The `beq` branch at 0x2e3edcc targets 0x2e3f730, is taken when a3 == ra(=0x1), and falls through when a3 != ra(=0x1).
  The `beq` branch at 0x2e3edd4 targets 0x2e3f798, is taken when a3 == at(=0x2), and falls through when a3 != at(=0x2).
  The `beq` branch at 0x2e3eddc targets 0x2e3f810, is taken when a3 == v0(=0x3), and falls through when a3 != v0(=0x3).
  The `bne` branch at 0x2e3ede4 targets 0x2e3ee9c, is taken when a3 != v1(=0x4), and falls through when a3 == v1(=0x4).
  The `blez` branch at 0x2e3edec targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3ee04 targets 0x2e3ee30, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3ee28 targets 0x2e3ee0c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3ee34 targets 0x2e3ee98, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3ee90 targets 0x2e3ee3c, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3eebc targets 0x2e3f1b4, is taken when a3 == a0(=0x1), and falls through when a3 != a0(=0x1).
  The `beq` branch at 0x2e3eec4 targets 0x2e3f314, is taken when a3 == a1(=0x2), and falls through when a3 != a1(=0x2).
  The `beq` branch at 0x2e3eecc targets 0x2e3f484, is taken when a3 == a6(=0x3), and falls through when a3 != a6(=0x3).
  The `bne` branch at 0x2e3eed4 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3eedc targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3eef8 targets 0x2e3ef24, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3ef1c targets 0x2e3ef00, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3ef28 targets 0x2e3ef8c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3ef84 targets 0x2e3ef30, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3ef8c targets 0x2e3ee9c and is always taken.
  The `beq` branch at 0x2e3ef98 targets 0x2e3f2b0, is taken when a3 == a0(=0x1), and falls through when a3 != a0(=0x1).
  The `beq` branch at 0x2e3efa0 targets 0x2e3f3f8, is taken when a3 == a1(=0x2), and falls through when a3 != a1(=0x2).
  The `beq` branch at 0x2e3efa8 targets 0x2e3f5e4, is taken when a3 == a6(=0x3), and falls through when a3 != a6(=0x3).
  The `bne` branch at 0x2e3efb0 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3efb8 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3efd0 targets 0x2e3effc, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3eff4 targets 0x2e3efd8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3f000 targets 0x2e3f064, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3f05c targets 0x2e3f008, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f064 targets 0x2e3ee9c and is always taken.
  The `beq` branch at 0x2e3f070 targets 0x2e3f548, is taken when a3 == a1(=0x1), and falls through when a3 != a1(=0x1).
  The `beq` branch at 0x2e3f078 targets 0x2e3f638, is taken when a3 == a6(=0x2), and falls through when a3 != a6(=0x2).
  The `beq` branch at 0x2e3f080 targets 0x2e3f6d4, is taken when a3 == a0(=0x3), and falls through when a3 != a0(=0x3).
  The `bne` branch at 0x2e3f088 targets 0x2e3ee9c, is taken when a3 != a7(=0x4), and falls through when a3 == a7(=0x4).
  The `blez` branch at 0x2e3f090 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f0a4 targets 0x2e3f0c8, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f0c0 targets 0x2e3f0ac, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3f0cc targets 0x2e3f110, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3f108 targets 0x2e3f0d4, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f110 targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f118 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f12c targets 0x2e3f154, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f14c targets 0x2e3f134, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2e3f158 targets 0x2e3f1ac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2e3f1a4 targets 0x2e3f160, is taken when s2(?) != a1(=((a5 << 0x2) + a4)), and falls through when s2(?) == a1(=((a5 << 0x2) + a4)).
  The `beq` branch at 0x2e3f1ac targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f1b4 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f1c8 targets 0x2e3f1e0, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f1e4 targets 0x2e3f20c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3f204 targets 0x2e3f1f0, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f20c targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f214 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f228 targets 0x2e3f250, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f248 targets 0x2e3f230, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e3f254 targets 0x2e3f2a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2e3f2a0 targets 0x2e3f25c, is taken when s1(?) != a3(=((a5 << 0x3) + a4)), and falls through when s1(?) == a3(=((a5 << 0x3) + a4)).
  The `beq` branch at 0x2e3f2a8 targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f2b0 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f2c8 targets 0x2e3f2e0, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f2e4 targets 0x2e3f30c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3f304 targets 0x2e3f2f0, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f30c targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f314 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f328 targets 0x2e3f34c, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f344 targets 0x2e3f330, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3f350 targets 0x2e3f394, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e3f38c targets 0x2e3f358, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f394 targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f39c targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f3b0 targets 0x2e3f3c8, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f3cc targets 0x2e3f3f0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e3f3e8 targets 0x2e3f3d4, is taken when s2(?) != a1(=((a5 << 0x2) + a4)), and falls through when s2(?) == a1(=((a5 << 0x2) + a4)).
  The `beq` branch at 0x2e3f3f0 targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f3f8 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f410 targets 0x2e3f434, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f42c targets 0x2e3f418, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3f438 targets 0x2e3f47c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e3f474 targets 0x2e3f440, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f47c targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f484 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f4a0 targets 0x2e3f4d8, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `bc1f` branch at 0x2e3f4b4 targets 0x2e3f4c4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x2e3f4bc targets 0x2e3f4c8 and is always taken.
  The `bnel` branch at 0x2e3f4dc targets 0x2e3f500, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lwc1 $f4,0(s1)` at 0x2e3f4e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2e3f4e4 targets 0x2e3ee9c and is always taken.
  The `beq` branch at 0x2e3f4f4 targets 0x2e3f4e4, is taken when s1(?) == s0(=((a5 << 0x2) + a2)), and falls through when s1(?) != s0(=((a5 << 0x2) + a2)).
  The `bc1f` branch at 0x2e3f508 targets 0x2e3f518, is taken when not (f7 <= f21 (c.le.d at 0x2e3f504)), and falls through when f7 <= f21 (c.le.d at 0x2e3f504).
  The `beq` branch at 0x2e3f510 targets 0x2e3f51c and is always taken.
  The `bc1f` branch at 0x2e3f538 targets 0x2e3f4ec, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x2e3f540 targets 0x2e3f4f0 and is always taken.
  The `blez` branch at 0x2e3f548 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f55c targets 0x2e3f584, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f57c targets 0x2e3f564, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3f588 targets 0x2e3f5dc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3f5d4 targets 0x2e3f590, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f5dc targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f5e4 targets 0x2e3ee9c, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `bne` branch at 0x2e3f628 targets 0x2e3f600, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f630 targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f638 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f64c targets 0x2e3f674, is taken when (a5 & 0x3) == 0, and falls through when (a5 & 0x3) != 0.
  The `bne` branch at 0x2e3f66c targets 0x2e3f654, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2e3f678 targets 0x2e3f6cc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x2e3f6c4 targets 0x2e3f680, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f6cc targets 0x2e3ee9c and is always taken.
  The `blez` branch at 0x2e3f6d4 targets 0x2e3ee98, is taken when a5 <= 0 (signed), and falls through when a5 > 0 (signed).
  The `beq` branch at 0x2e3f6e8 targets 0x2e3f700, is taken when (a5 & 0x1) == 0, and falls through when (a5 & 0x1) != 0.
  The `beq` branch at 0x2e3f704 targets 0x2e3f728, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x2e3f720 targets 0x2e3f70c, is taken when s1(?) != s0(=((a5 << 0x2) + a2)), and falls through when s1(?) == s0(=((a5 << 0x2) + a2)).
  The `beq` branch at 0x2e3f728 targets 0x2e3ee9c and is always taken.
  The return at 0x2e3eeb0 has v0 = one of 0x5, 0x3, ?, ret(floorf).
  The return at 0x2e3f790 has v0 = 0x5.
  The return at 0x2e3f808 has v0 = 0x3.
  The return at 0x2e3f900 has v0 = ret(floorf).
- `__glDoGet` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e3f910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e3f910-0x2e43338 (14888 bytes).
  It occupies 14888 bytes.
  The `lw` at 0x2e3f91c loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e3f920 loads 8 bytes from abs 0x1020.
  The `lw` at 0x2e3f968 loads 4 bytes from [0x1020]:8 +0xff0.
  The `lbu` at 0x2e3fa18 loads 1 byte from [0x1020]:8 +0x3a9.
  The `lwc1` at 0x2e3fa50 loads 4 bytes from [0x1020]:8 +0x368.
  The `lw` at 0x2e3fa8c loads 4 bytes from [0x1020]:8 +0x670.
  The `lwc1` at 0x2e3fb08 loads 4 bytes from [0x1020]:8 +0x838.
  The `lwc1` at 0x2e3fb10 loads 4 bytes from [0x1020]:8 +0x83c.
  The `lwc1` at 0x2e3fb18 loads 4 bytes from [0x1020]:8 +0x840.
  The `lwc1` at 0x2e3fb30 loads 4 bytes from [0x1020]:8 +0x844.
  The `lbu` at 0x2e3fbe0 loads 1 byte from [0x1020]:8 +0x685.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xde5, including `lbu` at 0x2e3fc3c, `lbu` at 0x2e3ff4c.
  The `lw` at 0x2e3fd1c loads 4 bytes from [0x1020]:8 +0x167c.
  The `lw` at 0x2e3fd54 loads 4 bytes from [0x1020]:8 +0x780.
  The `lw` at 0x2e3fd8c loads 4 bytes from [0x1020]:8 +0xdf4.
  The `lwc1` at 0x2e3fdc4 loads 4 bytes from [0x1020]:8 +0x208.
  The `lw` at 0x2e3fe00 loads 4 bytes from [0x1020]:8 +0xe30.
  The `lw` at 0x2e3fe4c loads 4 bytes from ([0x1020]:8 + (a0 << 0x4)) -0xc638.
  The `lw` at 0x2e3fe98 loads 4 bytes from [0x1020]:8 +0x1628.
  The `lw` at 0x2e3fed0 loads 4 bytes from [0x1020]:8 +0xe04.
  The `lwc1` at 0x2e3fef8 loads 4 bytes from [0x1020]:8 +0x73c.
  The `lwc1` at 0x2e3ff00 loads 4 bytes from [0x1020]:8 +0x740.
  The `lwc1` at 0x2e3ff08 loads 4 bytes from [0x1020]:8 +0x744.
  The `lwc1` at 0x2e3ff20 loads 4 bytes from [0x1020]:8 +0x748.
  The `lw` at 0x2e3ffac loads 4 bytes from [0x1020]:8 +0x5a0.
  The `lw` at 0x2e3ffe4 loads 4 bytes from [0x1020]:8 +0x880.
  The `lw` at 0x2e40020 loads 4 bytes from [0x1020]:8 +0x1480.
  The `lw` at 0x2e40058 loads 4 bytes from [0x1020]:8 +0x82c.
  The `lw` at 0x2e40090 loads 4 bytes from [0x1020]:8 +0x8c4.
  The `lwc1` at 0x2e400d8 loads 4 bytes from [0x1020]:8 +0x394.
  The `lw` at 0x2e4012c loads 4 bytes from [0x1020]:8 +0x5ac.
  The `lw` at 0x2e401b0 loads 4 bytes from [0x1020]:8 +0x798.
  The `lw` at 0x2e401b8 loads 4 bytes from [0x1020]:8 +0x79c.
  The `lw` at 0x2e401c4 loads 4 bytes from [0x1020]:8 +0x7a0.
  The `lw` at 0x2e401dc loads 4 bytes from [0x1020]:8 +0x7a4.
  The `lwc1` at 0x2e40218 loads 4 bytes from [0x1020]:8 +0x1010.
  The `lwc1` at 0x2e40230 loads 4 bytes from [0x1020]:8 +0x1014.
  The `lw` at 0x2e4026c loads 4 bytes from [0x1020]:8 +0x1034.
  The `lwc1` at 0x2e402a4 loads 4 bytes from [0x1020]:8 +0x75c.
  The `lwc1` at 0x2e402d0 loads 4 bytes from [0x1020]:8 +0x178.
  The `lwc1` at 0x2e402d8 loads 4 bytes from [0x1020]:8 +0x17c.
  The `lwc1` at 0x2e402f0 loads 4 bytes from [0x1020]:8 +0x180.
  The `lwc1` at 0x2e4032c loads 4 bytes from [0x1020]:8 +0x338.
  The `lw` at 0x2e40380 loads 4 bytes from [0x1020]:8 +0x598.
  The `lw` at 0x2e403b8 loads 4 bytes from [0x1020]:8 +0x870.
  The `lwc1` at 0x2e403f0 loads 4 bytes from [0x1020]:8 +0x85c.
  The `lw` at 0x2e4042c loads 4 bytes from [0x1020]:8 +0x8a0.
  The `lw` at 0x2e40470 loads 4 bytes from [0x1020]:8 +0x830.
  The `lw` at 0x2e404a8 loads 4 bytes from [0x1020]:8 +0x153c.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x94f8, including `ld` at 0x2e40524, `ld` at 0x2e420d8.
  The `ld` at 0x2e40528 loads 8 bytes from [0x1020]:8 +0x94f0.
  The `lw` at 0x2e4059c loads 4 bytes from [0x1020]:8 +0x29c.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0x2a8, including `lwc1` at 0x2e405ec, `lwc1` at 0x2e412c4.
  The `lw` at 0x2e4066c loads 4 bytes from [0x1020]:8 +0xdfc.
  The `lh` at 0x2e406a4 loads 2 bytes from [0x1020]:8 +0x786.
  The `lw` at 0x2e406dc loads 4 bytes from [0x1020]:8 +0x760.
  The `lw` at 0x2e40714 loads 4 bytes from [0x1020]:8 +0x1030.
  The `lwc1` at 0x2e40768 loads 4 bytes from [0x1020]:8 +0x1004.
  The `lwc1` at 0x2e40780 loads 4 bytes from [0x1020]:8 +0x1008.
  The `lwc1` at 0x2e407ac loads 4 bytes from [0x1020]:8 +0x220.
  The `lwc1` at 0x2e407b0 loads 4 bytes from [0x1020]:8 +0xfb8.
  The `lbu` at 0x2e407bc loads 1 byte from [0x1020]:8 +0x1454.
  The `lwc1` at 0x2e407c0 loads 4 bytes from [0x1020]:8 +0x224.
  The `lwc1` at 0x2e407c4 loads 4 bytes from [0x1020]:8 +0xfbc.
  The `lw` at 0x2e407d0 loads 4 bytes from [0x1020]:8 +0xfdc.
  The `lwc1` at 0x2e407dc loads 4 bytes from [0x1020]:8 +0xfc0.
  The `lw` at 0x2e407f4 loads 4 bytes from [0x1020]:8 +0x9d74.
  The `lwc1` at 0x2e40808 loads 4 bytes from [0x1020]:8 +0x228.
  The `lwc1` at 0x2e40824 loads 4 bytes from [0x1020]:8 +0x21c.
  The `lwc1` at 0x2e4085c loads 4 bytes from [0x1020]:8 +0x270.
  The `lwc1` at 0x2e40898 loads 4 bytes from [0x1020]:8 +0x398.
  The `lw` at 0x2e408d4 loads 4 bytes from [0x1020]:8 +0x570.
  The `lw` at 0x2e40950 loads 4 bytes from [0x1020]:8 +0x1600.
  The `lbu` at 0x2e40a18 loads 1 byte from [0x1020]:8 +0xde7.
  The `lw` at 0x2e40a40 loads 4 bytes from [0x1020]:8 +0xaf0.
  The `lw` at 0x2e40a48 loads 4 bytes from [0x1020]:8 +0xaf4.
  The `lw` at 0x2e40a54 loads 4 bytes from [0x1020]:8 +0xaf8.
  The `lw` at 0x2e40a6c loads 4 bytes from [0x1020]:8 +0xafc.
  The `lw` at 0x2e40ac0 loads 4 bytes from [0x1020]:8 +0x294.
  The `lw` at 0x2e40ad8 loads 4 bytes from [0x1020]:8 +0x298.
  The `lwc1` at 0x2e40b08 loads 4 bytes from [0x1020]:8 +0x894.
  The `lwc1` at 0x2e40b20 loads 4 bytes from [0x1020]:8 +0x898.
  The `lwc1` at 0x2e40b5c loads 4 bytes from [0x1020]:8 +0x828.
  The `lh` at 0x2e40b98 loads 2 bytes from [0x1020]:8 +0x292.
  The `lwc1` at 0x2e40bd0 loads 4 bytes from [0x1020]:8 +0x358.
  The `lbu` at 0x2e40c00 loads 1 byte from [0x1020]:8 +0xae8.
  The `lbu` at 0x2e40c08 loads 1 byte from [0x1020]:8 +0xae9.
  The `lbu` at 0x2e40c18 loads 1 byte from [0x1020]:8 +0xaea.
  The `lbu` at 0x2e40c30 loads 1 byte from [0x1020]:8 +0xaeb.
  The `lw` at 0x2e40c94 loads 4 bytes from [0x1020]:8 +0x16bc.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x94d0, including `ld` at 0x2e40cc4, `ld` at 0x2e422c8.
  The `lwc1` at 0x2e40cc8 loads 4 bytes from [[0x1020]:8+38096]:8 +0x0.
  The `lwc1` at 0x2e40cd0 loads 4 bytes from [[0x1020]:8+38096]:8 +0x4.
  The `lwc1` at 0x2e40cd8 loads 4 bytes from [[0x1020]:8+38096]:8 +0x8.
  The `lwc1` at 0x2e40ce0 loads 4 bytes from [[0x1020]:8+38096]:8 +0xc.
  The `lwc1` at 0x2e40ce8 loads 4 bytes from [[0x1020]:8+38096]:8 +0x10.
  The `lwc1` at 0x2e40cf0 loads 4 bytes from [[0x1020]:8+38096]:8 +0x14.
  The `lwc1` at 0x2e40cf8 loads 4 bytes from [[0x1020]:8+38096]:8 +0x18.
  The `lwc1` at 0x2e40d00 loads 4 bytes from [[0x1020]:8+38096]:8 +0x1c.
  The `lwc1` at 0x2e40d08 loads 4 bytes from [[0x1020]:8+38096]:8 +0x20.
  The `lwc1` at 0x2e40d10 loads 4 bytes from [[0x1020]:8+38096]:8 +0x24.
  The `lwc1` at 0x2e40d18 loads 4 bytes from [[0x1020]:8+38096]:8 +0x28.
  The `lwc1` at 0x2e40d20 loads 4 bytes from [[0x1020]:8+38096]:8 +0x2c.
  The `lwc1` at 0x2e40d28 loads 4 bytes from [[0x1020]:8+38096]:8 +0x30.
  The `lwc1` at 0x2e40d30 loads 4 bytes from [[0x1020]:8+38096]:8 +0x34.
  The `lwc1` at 0x2e40d38 loads 4 bytes from [[0x1020]:8+38096]:8 +0x38.
  The `lwc1` at 0x2e40d50 loads 4 bytes from [[0x1020]:8+38096]:8 +0x3c.
  The `lwc1` at 0x2e40d8c loads 4 bytes from [0x1020]:8 +0x374.
  The `lw` at 0x2e40df4 loads 4 bytes from [0x1020]:8 +0xe10.
  The `lw` at 0x2e40e2c loads 4 bytes from [0x1020]:8 +0x1028.
  The `lw` at 0x2e40e64 loads 4 bytes from [0x1020]:8 +0x790.
  The `lbu` at 0x2e40ea0 loads 1 byte from [0x1020]:8 +0x764.
  The `lwc1` at 0x2e40ed8 loads 4 bytes from [0x1020]:8 +0x754.
  The `lwc1` at 0x2e40ef8 loads 4 bytes from [0x1020]:8 +0x188.
  The `lwc1` at 0x2e40f00 loads 4 bytes from [0x1020]:8 +0x18c.
  The `lwc1` at 0x2e40f08 loads 4 bytes from [0x1020]:8 +0x190.
  The `lwc1` at 0x2e40f20 loads 4 bytes from [0x1020]:8 +0x194.
  The `lw` at 0x2e40f58 loads 4 bytes from [0x1020]:8 +0x1024.
  The `lw` at 0x2e40f8c loads 4 bytes from [0x1020]:8 +0x66c.
  The `lwc1` at 0x2e40fc0 loads 4 bytes from [0x1020]:8 +0x278.
  The `lwc1` at 0x2e40ffc loads 4 bytes from [0x1020]:8 +0x354.
  The `lw` at 0x2e4103c loads 4 bytes from [0x1020]:8 +0x1654.
  The `lbu` at 0x2e4106c loads 1 byte from [0x1020]:8 +0x684.
  The `lwc1` at 0x2e41090 loads 4 bytes from [0x1020]:8 +0x1d0.
  The `lwc1` at 0x2e41098 loads 4 bytes from [0x1020]:8 +0x1d4.
  The `lwc1` at 0x2e410a0 loads 4 bytes from [0x1020]:8 +0x1d8.
  The `lwc1` at 0x2e410b8 loads 4 bytes from [0x1020]:8 +0x1dc.
  The `lwc1` at 0x2e410d8 loads 4 bytes from [0x1020]:8 +0x260.
  The `lwc1` at 0x2e410e0 loads 4 bytes from [0x1020]:8 +0x264.
  The `lwc1` at 0x2e410e8 loads 4 bytes from [0x1020]:8 +0x268.
  The `lwc1` at 0x2e41100 loads 4 bytes from [0x1020]:8 +0x26c.
  The `lwc1` at 0x2e4113c loads 4 bytes from [0x1020]:8 +0x330.
  The `lbu` at 0x2e4117c loads 1 byte from [0x1020]:8 +0x569.
  The `lw` at 0x2e411e0 loads 4 bytes from [0x1020]:8 +0x878.
  The `lwc1` at 0x2e41208 loads 4 bytes from [0x1020]:8 +0x84c.
  The `lwc1` at 0x2e41210 loads 4 bytes from [0x1020]:8 +0x850.
  The `lwc1` at 0x2e41218 loads 4 bytes from [0x1020]:8 +0x854.
  The `lwc1` at 0x2e41230 loads 4 bytes from [0x1020]:8 +0x858.
  The `lw` at 0x2e4129c loads 4 bytes from [0x1020]:8 +0x580.
  The `lwc1` at 0x2e412c8 loads 4 bytes from [0x1020]:8 +0x2ac.
  The `lbu` at 0x2e41370 loads 1 byte from [0x1020]:8 +0xde6.
  The `lw` at 0x2e413ac loads 4 bytes from [0x1020]:8 +0x5c8.
  The `lw` at 0x2e413e0 loads 4 bytes from [0x1020]:8 +0x848.
  The `lw` at 0x2e4140c loads 4 bytes from [0x1020]:8 +0x1540.
  The `lwc1` at 0x2e41480 loads 4 bytes from [0x1020]:8 +0x284.
  The `lw` at 0x2e414b0 loads 4 bytes from [0x1020]:8 +0x824.
  The `lhu` at 0x2e414dc loads 2 bytes from [0x1020]:8 +0x290.
  The `lw` at 0x2e41548 loads 4 bytes from [0x1020]:8 +0x17c8.
  The `lwc1` at 0x2e4157c loads 4 bytes from [0x1020]:8 +0x384.
  The `lw` at 0x2e415ac loads 4 bytes from [0x1020]:8 +0x2a0.
  The `lw` at 0x2e41604 loads 4 bytes from [0x1020]:8 +0x169c.
  The `lw` at 0x2e4163c loads 4 bytes from [0x1020]:8 +0xdec.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x94e8, including `ld` at 0x2e4166c, `ld` at 0x2e42c84.
  The `ld` at 0x2e41670 loads 8 bytes from [0x1020]:8 +0x94e0.
  The `lw` at 0x2e416e4 loads 4 bytes from [0x1020]:8 +0x7d0.
  The `lh` at 0x2e41728 loads 2 bytes from [0x1020]:8 +0x784.
  The `lbu` at 0x2e41758 loads 1 byte from [0x1020]:8 +0x275.
  The `lwc1` at 0x2e41798 loads 4 bytes from [0x1020]:8 +0x370.
  The `ld` at 0x2e417c4 loads 8 bytes from [0x1020]:8 +0x1498.
  The `ld` at 0x2e417cc loads 8 bytes from [0x1020]:8 +0x1490.
  The `lw` at 0x2e41814 loads 4 bytes from [0x1020]:8 +0xe0c.
  The `lw` at 0x2e4183c loads 4 bytes from [0x1020]:8 +0xf84.
  The `lw` at 0x2e41854 loads 4 bytes from [0x1020]:8 +0xf88.
  The `lw` at 0x2e4187c loads 4 bytes from [0x1020]:8 +0x102c.
  The `lw` at 0x2e418b0 loads 4 bytes from [0x1020]:8 +0x78c.
  The `lwc1` at 0x2e41900 loads 4 bytes from [0x1020]:8 +0x750.
  The `lwc1` at 0x2e41930 loads 4 bytes from [0x1020]:8 +0x100c.
  The `lbu` at 0x2e419c0 loads 1 byte from [0x1020]:8 +0x274.
  The `lw` at 0x2e419ec loads 4 bytes from [0x1020]:8 +0x1020.
  The `lw` at 0x2e41a18 loads 4 bytes from [0x1020]:8 +0x668.
  The `lwc1` at 0x2e41a50 loads 4 bytes from [0x1020]:8 +0x350.
  The `lwc1` at 0x2e41a8c loads 4 bytes from [0x1020]:8 +0x334.
  The `lw` at 0x2e41ac8 loads 4 bytes from [0x1020]:8 +0x578.
  The `lw` at 0x2e41b00 loads 4 bytes from [0x1020]:8 +0x1648.
  The `lw` at 0x2e41b38 loads 4 bytes from [0x1020]:8 +0x160c.
  The `lw` at 0x2e41b6c loads 4 bytes from [0x1020]:8 +0xff4.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xde4, including `lbu` at 0x2e41b88, `lbu` at 0x2e41f0c.
  The `lw` at 0x2e41bd8 loads 4 bytes from [0x1020]:8 +0x3a4.
  The `lbu` at 0x2e41c10 loads 1 byte from [0x1020]:8 +0x568.
  The `lbu` at 0x2e41c48 loads 1 byte from [0x1020]:8 +0x595.
  The `lw` at 0x2e41c90 loads 4 bytes from [0x1020]:8 +0x874.
  The `lw` at 0x2e41cbc loads 4 bytes from [0x1020]:8 +0xdd4.
  The `lw` at 0x2e41ce8 loads 4 bytes from [0x1020]:8 +0x860.
  The `lw` at 0x2e41d70 loads 4 bytes from [0x1020]:8 +0x57c.
  The `lwc1` at 0x2e41dac loads 4 bytes from [0x1020]:8 +0x2a4.
  The `lw` at 0x2e41de8 loads 4 bytes from [0x1020]:8 +0x14b8.
  The `lw` at 0x2e41e14 loads 4 bytes from [0x1020]:8 +0x8b0.
  The `lw` at 0x2e41e2c loads 4 bytes from [0x1020]:8 +0x8c0.
  The `lwc1` at 0x2e41e84 loads 4 bytes from [0x1020]:8 +0x1018.
  3 such `lw` accesses load 4 bytes from ret(__glLookUpTextureTexobjs) +0x0, including `lw` at 0x2e41ed0, `lw` at 0x2e428a4, `lw` at 0x2e429bc.
  The `lw` at 0x2e41f3c loads 4 bytes from [0x1020]:8 +0x86c.
  The `lwc1` at 0x2e41fa0 loads 4 bytes from [0x1020]:8 +0x360.
  The `lw` at 0x2e41fdc loads 4 bytes from [0x1020]:8 +0x5bc.
  The `lwc1` at 0x2e42094 loads 4 bytes from [0x1020]:8 +0x37c.
  The `lwc1` at 0x2e420dc loads 4 bytes from [[0x1020]:8+38136]:8 +0x0.
  The `lwc1` at 0x2e420e4 loads 4 bytes from [[0x1020]:8+38136]:8 +0x4.
  The `lwc1` at 0x2e420ec loads 4 bytes from [[0x1020]:8+38136]:8 +0x8.
  The `lwc1` at 0x2e420f4 loads 4 bytes from [[0x1020]:8+38136]:8 +0xc.
  The `lwc1` at 0x2e420fc loads 4 bytes from [[0x1020]:8+38136]:8 +0x10.
  The `lwc1` at 0x2e42104 loads 4 bytes from [[0x1020]:8+38136]:8 +0x14.
  The `lwc1` at 0x2e4210c loads 4 bytes from [[0x1020]:8+38136]:8 +0x18.
  The `lwc1` at 0x2e42114 loads 4 bytes from [[0x1020]:8+38136]:8 +0x1c.
  The `lwc1` at 0x2e4211c loads 4 bytes from [[0x1020]:8+38136]:8 +0x20.
  The `lwc1` at 0x2e42124 loads 4 bytes from [[0x1020]:8+38136]:8 +0x24.
  The `lwc1` at 0x2e4212c loads 4 bytes from [[0x1020]:8+38136]:8 +0x28.
  The `lwc1` at 0x2e42134 loads 4 bytes from [[0x1020]:8+38136]:8 +0x2c.
  The `lwc1` at 0x2e4213c loads 4 bytes from [[0x1020]:8+38136]:8 +0x30.
  The `lwc1` at 0x2e42144 loads 4 bytes from [[0x1020]:8+38136]:8 +0x34.
  The `lwc1` at 0x2e4214c loads 4 bytes from [[0x1020]:8+38136]:8 +0x38.
  The `lwc1` at 0x2e42164 loads 4 bytes from [[0x1020]:8+38136]:8 +0x3c.
  The `ld` at 0x2e42190 loads 8 bytes from [0x1020]:8 +0x4e30.
  The `ld` at 0x2e42198 loads 8 bytes from [0x1020]:8 +0x4e28.
  The `lw` at 0x2e42200 loads 4 bytes from [0x1020]:8 +0x1694.
  The `lw` at 0x2e42244 loads 4 bytes from [0x1020]:8 +0xe00.
  The `lw` at 0x2e42270 loads 4 bytes from [0x1020]:8 +0xe14.
  The `lw` at 0x2e4229c loads 4 bytes from [0x1020]:8 +0xffc.
  The `ld` at 0x2e422cc loads 8 bytes from [0x1020]:8 +0x94c8.
  The `lh` at 0x2e42334 loads 2 bytes from [0x1020]:8 +0x78a.
  The `lw` at 0x2e42360 loads 4 bytes from [0x1020]:8 +0x794.
  The `lwc1` at 0x2e4237c loads 4 bytes from [0x1020]:8 +0x770.
  The `lwc1` at 0x2e42384 loads 4 bytes from [0x1020]:8 +0x774.
  The `lwc1` at 0x2e4238c loads 4 bytes from [0x1020]:8 +0x778.
  The `lwc1` at 0x2e423a4 loads 4 bytes from [0x1020]:8 +0x77c.
  The `ldc1` at 0x2e423c4 loads 8 bytes from [0x1020]:8 +0x768.
  The `lw` at 0x2e42408 loads 4 bytes from [0x1020]:8 +0x738.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0x230, including `lwc1` at 0x2e4241c, `lwc1` at 0x2e432d0.
  The `lwc1` at 0x2e42424 loads 4 bytes from [0x1020]:8 +0x234.
  The `lwc1` at 0x2e4242c loads 4 bytes from [0x1020]:8 +0x238.
  The `lwc1` at 0x2e42434 loads 4 bytes from [0x1020]:8 +0x23c.
  The `lwc1` at 0x2e42464 loads 4 bytes from [0x1020]:8 +0x36c.
  The `lw` at 0x2e42494 loads 4 bytes from [0x1020]:8 +0xdf8.
  The `lw` at 0x2e424c0 loads 4 bytes from [0x1020]:8 +0xe08.
  The `lw` at 0x2e424ec loads 4 bytes from [0x1020]:8 +0x1038.
  The `lh` at 0x2e4251c loads 2 bytes from [0x1020]:8 +0x788.
  The `ldc1` at 0x2e42538 loads 8 bytes from [0x1020]:8 +0x7a8.
  The `ldc1` at 0x2e42544 loads 8 bytes from [0x1020]:8 +0x7b0.
  The `lwc1` at 0x2e42588 loads 4 bytes from [0x1020]:8 +0x74c.
  The `lw` at 0x2e425c4 loads 4 bytes from [0x1020]:8 +0xf68.
  The `lw` at 0x2e425fc loads 4 bytes from [0x1020]:8 +0x1670.
  The `lwc1` at 0x2e42630 loads 4 bytes from [0x1020]:8 +0x33c.
  The `lwc1` at 0x2e42660 loads 4 bytes from [0x1020]:8 +0x39c.
  The `lwc1` at 0x2e42690 loads 4 bytes from [0x1020]:8 +0x344.
  The `lw` at 0x2e426c0 loads 4 bytes from [0x1020]:8 +0x574.
  The `lw` at 0x2e426ec loads 4 bytes from [0x1020]:8 +0x56c.
  The `lw` at 0x2e42718 loads 4 bytes from [0x1020]:8 +0x59c.
  The `lw` at 0x2e42754 loads 4 bytes from [0x1020]:8 +0x87c.
  The `lbu` at 0x2e42770 loads 1 byte from [0x1020]:8 +0x864.
  The `lbu` at 0x2e42778 loads 1 byte from [0x1020]:8 +0x865.
  The `lbu` at 0x2e42788 loads 1 byte from [0x1020]:8 +0x866.
  The `lbu` at 0x2e427a0 loads 1 byte from [0x1020]:8 +0x867.
  The `lw` at 0x2e427dc loads 4 bytes from [0x1020]:8 +0x1634.
  The `lw` at 0x2e4280c loads 4 bytes from [0x1020]:8 +0x1604.
  The `lw` at 0x2e42854 loads 4 bytes from [0x1020]:8 +0x5a8.
  The `lw` at 0x2e428e0 loads 4 bytes from [0x1020]:8 +0x3a0.
  The `lw` at 0x2e4290c loads 4 bytes from [0x1020]:8 +0x5a4.
  The `lbu` at 0x2e42940 loads 1 byte from [0x1020]:8 +0x594.
  The `lw` at 0x2e429fc loads 4 bytes from [0x1020]:8 +0x1484.
  The `lwc1` at 0x2e42a18 loads 4 bytes from [0x1020]:8 +0x8a4.
  The `lwc1` at 0x2e42a20 loads 4 bytes from [0x1020]:8 +0x8a8.
  The `lwc1` at 0x2e42a28 loads 4 bytes from [0x1020]:8 +0x8b4.
  The `lwc1` at 0x2e42a40 loads 4 bytes from [0x1020]:8 +0x8b8.
  The `lwc1` at 0x2e42a84 loads 4 bytes from [0x1020]:8 +0x35c.
  The `lwc1` at 0x2e42b10 loads 4 bytes from [0x1020]:8 +0x38c.
  The `lw` at 0x2e42b4c loads 4 bytes from [0x1020]:8 +0x890.
  The `lw` at 0x2e42b78 loads 4 bytes from [0x1020]:8 +0x834.
  The `lwc1` at 0x2e42bd8 loads 4 bytes from [0x1020]:8 +0x378.
  The `lw` at 0x2e42c08 loads 4 bytes from [0x1020]:8 +0x16c0.
  The `lw` at 0x2e42c34 loads 4 bytes from [0x1020]:8 +0x16a0.
  The `lw` at 0x2e42c60 loads 4 bytes from [0x1020]:8 +0xdf0.
  The `lwc1` at 0x2e42c88 loads 4 bytes from [[0x1020]:8+38120]:8 +0x0.
  The `lwc1` at 0x2e42c90 loads 4 bytes from [[0x1020]:8+38120]:8 +0x4.
  The `lwc1` at 0x2e42c98 loads 4 bytes from [[0x1020]:8+38120]:8 +0x8.
  The `lwc1` at 0x2e42ca0 loads 4 bytes from [[0x1020]:8+38120]:8 +0xc.
  The `lwc1` at 0x2e42ca8 loads 4 bytes from [[0x1020]:8+38120]:8 +0x10.
  The `lwc1` at 0x2e42cb0 loads 4 bytes from [[0x1020]:8+38120]:8 +0x14.
  The `lwc1` at 0x2e42cb8 loads 4 bytes from [[0x1020]:8+38120]:8 +0x18.
  The `lwc1` at 0x2e42cc0 loads 4 bytes from [[0x1020]:8+38120]:8 +0x1c.
  The `lwc1` at 0x2e42cc8 loads 4 bytes from [[0x1020]:8+38120]:8 +0x20.
  The `lwc1` at 0x2e42cd0 loads 4 bytes from [[0x1020]:8+38120]:8 +0x24.
  The `lwc1` at 0x2e42cd8 loads 4 bytes from [[0x1020]:8+38120]:8 +0x28.
  The `lwc1` at 0x2e42ce0 loads 4 bytes from [[0x1020]:8+38120]:8 +0x2c.
  The `lwc1` at 0x2e42ce8 loads 4 bytes from [[0x1020]:8+38120]:8 +0x30.
  The `lwc1` at 0x2e42cf0 loads 4 bytes from [[0x1020]:8+38120]:8 +0x34.
  The `lwc1` at 0x2e42cf8 loads 4 bytes from [[0x1020]:8+38120]:8 +0x38.
  The `lwc1` at 0x2e42d10 loads 4 bytes from [[0x1020]:8+38120]:8 +0x3c.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x94c0, including `ld` at 0x2e42d38, `ld` at 0x2e42e2c.
  The `lwc1` at 0x2e42d3c loads 4 bytes from [[0x1020]:8+38080]:8 +0x0.
  The `lwc1` at 0x2e42d44 loads 4 bytes from [[0x1020]:8+38080]:8 +0x4.
  The `lwc1` at 0x2e42d4c loads 4 bytes from [[0x1020]:8+38080]:8 +0x8.
  The `lwc1` at 0x2e42d54 loads 4 bytes from [[0x1020]:8+38080]:8 +0xc.
  The `lwc1` at 0x2e42d5c loads 4 bytes from [[0x1020]:8+38080]:8 +0x10.
  The `lwc1` at 0x2e42d64 loads 4 bytes from [[0x1020]:8+38080]:8 +0x14.
  The `lwc1` at 0x2e42d6c loads 4 bytes from [[0x1020]:8+38080]:8 +0x18.
  The `lwc1` at 0x2e42d74 loads 4 bytes from [[0x1020]:8+38080]:8 +0x1c.
  The `lwc1` at 0x2e42d7c loads 4 bytes from [[0x1020]:8+38080]:8 +0x20.
  The `lwc1` at 0x2e42d84 loads 4 bytes from [[0x1020]:8+38080]:8 +0x24.
  The `lwc1` at 0x2e42d8c loads 4 bytes from [[0x1020]:8+38080]:8 +0x28.
  The `lwc1` at 0x2e42d94 loads 4 bytes from [[0x1020]:8+38080]:8 +0x2c.
  The `lwc1` at 0x2e42d9c loads 4 bytes from [[0x1020]:8+38080]:8 +0x30.
  The `lwc1` at 0x2e42da4 loads 4 bytes from [[0x1020]:8+38080]:8 +0x34.
  The `lwc1` at 0x2e42dac loads 4 bytes from [[0x1020]:8+38080]:8 +0x38.
  The `lwc1` at 0x2e42dc4 loads 4 bytes from [[0x1020]:8+38080]:8 +0x3c.
  The `lw` at 0x2e42e08 loads 4 bytes from [0x1020]:8 +0x1690.
  The `ld` at 0x2e42e30 loads 8 bytes from [0x1020]:8 +0x94b8.
  The `lw` at 0x2e42e98 loads 4 bytes from [0x1020]:8 +0x101c.
  The `lwc1` at 0x2e42ec4 loads 4 bytes from [0x1020]:8 +0x340.
  The `lwc1` at 0x2e42ef4 loads 4 bytes from [0x1020]:8 +0x348.
  The `lbu` at 0x2e42f28 loads 1 byte from [0x1020]:8 +0x3a8.
  The `lw` at 0x2e42f58 loads 4 bytes from [0x1020]:8 +0x1658.
  The `lw` at 0x2e42f88 loads 4 bytes from [0x1020]:8 +0x164c.
  The `lw` at 0x2e42fb4 loads 4 bytes from [0x1020]:8 +0x1610.
  The `lwc1` at 0x2e42ff8 loads 4 bytes from [0x1020]:8 +0x34c.
  The `lw` at 0x2e43028 loads 4 bytes from [0x1020]:8 +0x1630.
  The `lwc1` at 0x2e43054 loads 4 bytes from [0x1020]:8 +0x364.
  The `lw` at 0x2e43090 loads 4 bytes from [0x1020]:8 +0x58c.
  The `lwc1` at 0x2e430c0 loads 4 bytes from [0x1020]:8 +0x380.
  The `ld` at 0x2e430e0 loads 8 bytes from [0x1020]:8 +0x4e40.
  The `ld` at 0x2e430e8 loads 8 bytes from [0x1020]:8 +0x4e38.
  The `lw` at 0x2e4313c loads 4 bytes from [0x1020]:8 +0x88c.
  The `lw` at 0x2e4316c loads 4 bytes from [0x1020]:8 +0x17cc.
  The `lwc1` at 0x2e43198 loads 4 bytes from [0x1020]:8 +0x388.
  The `lw` at 0x2e431e4 loads 4 bytes from [0x1020]:8 +0x103c.
  The `lw` at 0x2e43210 loads 4 bytes from [0x1020]:8 +0xf74.
  The `lw` at 0x2e4323c loads 4 bytes from [0x1020]:8 +0x1678.
  The `lw` at 0x2e43274 loads 4 bytes from [0x1020]:8 +0x590.
  The `lwc1` at 0x2e432a4 loads 4 bytes from [0x1020]:8 +0x390.
  The `lw` at 0x2e432f4 loads 4 bytes from [0x1020]:8 +0x688.
  The `lw` at 0x2e43324 loads 4 bytes from [0x1020]:8 +0x5b8.
  The `bgezall` at 0x2e3fab8 calls __glConvertResult [0x2e3ecd0] with a0=[0x1020]:8, a1=0x6, a2=sp-1256, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `bgezall` at 0x2e3fb60 calls __glConvertResult [0x2e3ecd0] with a0=[0x1020]:8, a1=0x3, a2=sp-1760, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `bgezall` at 0x2e3fc04 calls __glConvertResult [0x2e3ecd0] with a0=[0x1020]:8, a1=0x0, a2=sp-456, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `bgezall` at 0x2e3fc68 calls __glConvertResult [0x2e3ecd0] with a0=[0x1020]:8, a1=0x4, a2=sp-1360, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `jalr` at 0x2e3fca0 calls __glim_IsEnabled [0x2e26b20] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a7=sp-1359.
  The `bgezall` at 0x2e3fce4 calls __glConvertResult [0x2e3ecd0] with a0=[0x1020]:8, a1=0x5, a2=sp-856, a3=a2 at entry (arg2), a4=a1 at entry (arg1), a6=sp-1256, a7=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0).
  The `jalr` at 0x2e400a8 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e409e0 calls __glSetError [0x2e315d0] with a0=0x500, a1=?, a2=?, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `bgezall` at 0x2e41960 calls __glUnScaleColorf [0x2e46ec0] with a0=[0x1020]:8, a1=sp-856, a2=[0x1020]:8+1652, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e41eac calls __glLookUpTextureTexobjs [0x2e78a80] with a0=[0x1020]:8, a1=0xde1, a2=?, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e42880 calls __glLookUpTextureTexobjs [0x2e78a80] with a0=[0x1020]:8, a1=0xde0, a2=?, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `jalr` at 0x2e42998 calls __glLookUpTextureTexobjs [0x2e78a80] with a0=[0x1020]:8, a1=0x806f, a2=?, a3=a2 at entry (arg2), a4=a1 at entry (arg1).
  The `beq` branch at 0x2e3f93c targets 0x2e400a4, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bne` branch at 0x2e3f948 targets 0x2e3f9c0, is taken when a0 < 0xd33 (unsigned), and falls through when a0 >= 0xd33 (unsigned).
  The `beq` branch at 0x2e3f954 targets 0x2e3fa2c, is taken when a0 >= 0xd34 (unsigned), and falls through when a0 < 0xd34 (unsigned).
  The `bne` branch at 0x2e3f988 targets 0x2e3fb48, is taken when a7(=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0)) != t8(=sp-1760), and falls through when a7(=(sp + one of -0x6e0, -0x6dc, -0x6d8, -0x6d0)) == t8(=sp-1760).
  The `bne` branch at 0x2e3f990 targets 0x2e3fbf4, is taken when t0(?) != a2(=sp-456), and falls through when t0(?) == a2(=sp-456).
  The `bne` branch at 0x2e3f998 targets 0x2e3fc54, is taken when t1(=(sp + one of -0x550, -0x54f, -0x54c)) != a0(=sp-1360), and falls through when t1(=(sp + one of -0x550, -0x54f, -0x54c)) == a0(=sp-1360).
  The `bne` branch at 0x2e3f9a0 targets 0x2e3fcd0, is taken when t2(?) != a1(=sp-856), and falls through when t2(?) == a1(=sp-856).
  The `bne` branch at 0x2e3f9a8 targets 0x2e3faa0, is taken when t3(=(sp + one of -0x4e8, -0x4d8)) != a6(=sp-1256), and falls through when t3(=(sp + one of -0x4e8, -0x4d8)) == a6(=sp-1256).
  The `bne` branch at 0x2e3f9c0 targets 0x2e3fa68, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2e3f9cc targets 0x2e3fc90, is taken when a0 < 0xbc1 (unsigned), and falls through when a0 >= 0xbc1 (unsigned).
  The `bne` branch at 0x2e3f9d8 targets 0x2e3fc14, is taken when a0 < 0xcb4 (unsigned), and falls through when a0 >= 0xcb4 (unsigned).
  The `bne` branch at 0x2e3f9e4 targets 0x2e3fe28, is taken when a0 < 0xcb5 (unsigned), and falls through when a0 >= 0xcb5 (unsigned).
  The `bne` branch at 0x2e3f9f0 targets 0x2e3ff88, is taken when a0 < 0xd11 (unsigned), and falls through when a0 >= 0xd11 (unsigned).
  The `beq` branch at 0x2e3f9fc targets 0x2e40308, is taken when a0 >= 0xd12 (unsigned), and falls through when a0 < 0xd12 (unsigned).
  The `beq` branch at 0x2e3fa24 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fa30 targets 0x2e3fac8, is taken when a0 < a1(=0x8020) (unsigned), and falls through when a0 >= a1(=0x8020) (unsigned).
  The `bne` branch at 0x2e3fa3c targets 0x2e3fcf4, is taken when a1(=0x8020) < a0 (unsigned), and falls through when a1(=0x8020) >= a0 (unsigned).
  The `beq` branch at 0x2e3fa60 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fa68 targets 0x2e3fb70, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e3fa74 targets 0x2e3fd30, is taken when a0 >= 0xb55 (unsigned), and falls through when a0 < 0xb55 (unsigned).
  The `beq` branch at 0x2e3fa98 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e3fac0 targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e3fac8 targets 0x2e3fd68, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2e3fad4 targets 0x2e3fc90, is taken when a0 < 0xdb6 (unsigned), and falls through when a0 >= 0xdb6 (unsigned).
  The `bne` branch at 0x2e3fae0 targets 0x2e3fff8, is taken when a0 < 0x3005 (unsigned), and falls through when a0 >= 0x3005 (unsigned).
  The `bne` branch at 0x2e3fae8 targets 0x2e3fc90, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e3faf8 targets 0x2e404bc, is taken when a0 < a1(=0x8005) (unsigned), and falls through when a0 >= a1(=0x8005) (unsigned).
  The `bne` branch at 0x2e3fb00 targets 0x2e40bac, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2e3fb40 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e3fb68 targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e3fb70 targets 0x2e3fda0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2e3fb7c targets 0x2e3fc90, is taken when a0 < 0xb25 (unsigned), and falls through when a0 >= 0xb25 (unsigned).
  The `bne` branch at 0x2e3fb88 targets 0x2e4006c, is taken when a0 < 0xb42 (unsigned), and falls through when a0 >= 0xb42 (unsigned).
  The `bne` branch at 0x2e3fb94 targets 0x2e3fc90, is taken when a0 < 0xb43 (unsigned), and falls through when a0 >= 0xb43 (unsigned).
  The `bne` branch at 0x2e3fba0 targets 0x2e40578, is taken when a0 < 0xb50 (unsigned), and falls through when a0 >= 0xb50 (unsigned).
  The `bne` branch at 0x2e3fbac targets 0x2e3fc90, is taken when a0 < 0xb51 (unsigned), and falls through when a0 >= 0xb51 (unsigned).
  The `bne` branch at 0x2e3fbb8 targets 0x2e41050, is taken when a0 < 0xb52 (unsigned), and falls through when a0 >= 0xb52 (unsigned).
  The `beq` branch at 0x2e3fbc4 targets 0x2e41948, is taken when a0 >= 0xb53 (unsigned), and falls through when a0 < 0xb53 (unsigned).
  The `beq` branch at 0x2e3fbec targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e3fc0c targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e3fc14 targets 0x2e3fddc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e3fc20 targets 0x2e3ffc0, is taken when a0 >= 0xc31 (unsigned), and falls through when a0 < 0xc31 (unsigned).
  The `beq` branch at 0x2e3fc4c targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e3fc70 targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e3fc78 targets 0x2e4173c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e3fc84 targets 0x2e409dc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e3fcc8 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e3fcec targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e3fcfc targets 0x2e3fe5c, is taken when a0 < a1(=0x8087) (unsigned), and falls through when a0 >= a1(=0x8087) (unsigned).
  The `bne` branch at 0x2e3fd04 targets 0x2e400b8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e3fd28 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fd30 targets 0x2e3fee4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e3fd3c targets 0x2e4019c, is taken when a0 >= 0xb93 (unsigned), and falls through when a0 < 0xb93 (unsigned).
  The `beq` branch at 0x2e3fd60 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fd68 targets 0x2e3feac, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2e3fd74 targets 0x2e40140, is taken when a0 >= 0xd5b (unsigned), and falls through when a0 < 0xd5b (unsigned).
  The `beq` branch at 0x2e3fd98 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fda0 targets 0x2e3ff38, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e3fdac targets 0x2e401ec, is taken when a0 >= 0xb0a (unsigned), and falls through when a0 < 0xb0a (unsigned).
  The `beq` branch at 0x2e3fdd4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fddc targets 0x2e40034, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e3fde8 targets 0x2e403cc, is taken when a0 >= 0xc01 (unsigned), and falls through when a0 < 0xc01 (unsigned).
  The `beq` branch at 0x2e3fe0c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fe14 targets 0x2e41ee0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e3fe1c targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e3fe54 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fe64 targets 0x2e400f0, is taken when a0 < a1(=0x8075) (unsigned), and falls through when a0 >= a1(=0x8075) (unsigned).
  The `beq` branch at 0x2e3fe6c targets 0x2e3fc90, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2e3fe7c targets 0x2e40928, is taken when a0 < a1(=0x807e) (unsigned), and falls through when a0 >= a1(=0x807e) (unsigned).
  The `bne` branch at 0x2e3fe84 targets 0x2e41014, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e3fea4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3feac targets 0x2e40248, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e3feb8 targets 0x2e40648, is taken when a0 >= 0xd52 (unsigned), and falls through when a0 < 0xd52 (unsigned).
  The `beq` branch at 0x2e3fedc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fee4 targets 0x2e40280, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e3fef0 targets 0x2e406b8, is taken when a0 >= 0xb67 (unsigned), and falls through when a0 < 0xb67 (unsigned).
  The `beq` branch at 0x2e3ff30 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3ff38 targets 0x2e402bc, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x2e3ff44 targets 0x2e40798, is taken when a0 >= 0xb05 (unsigned), and falls through when a0 < 0xb05 (unsigned).
  The `beq` branch at 0x2e3ff50 targets 0x2e4241c, is taken when ra(=[[0x1020]:8+3557]:1) == 0, and falls through when ra(=[[0x1020]:8+3557]:1) != 0.
  The `beq` branch at 0x2e3ff80 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3ff88 targets 0x2e40344, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e3ff94 targets 0x2e408b0, is taken when a0 >= 0xcf5 (unsigned), and falls through when a0 < 0xcf5 (unsigned).
  The `beq` branch at 0x2e3ffb8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3ffc0 targets 0x2e40394, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e3ffcc targets 0x2e408e8, is taken when a0 >= 0xc55 (unsigned), and falls through when a0 < 0xc55 (unsigned).
  The `beq` branch at 0x2e3fff0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e3fffc targets 0x2e40408, is taken when a0 < 0xdf1 (unsigned), and falls through when a0 >= 0xdf1 (unsigned).
  The `beq` branch at 0x2e40008 targets 0x2e40964, is taken when a0 >= 0xdf2 (unsigned), and falls through when a0 < 0xdf2 (unsigned).
  The `beq` branch at 0x2e4002c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40034 targets 0x2e40440, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e40040 targets 0x2e40a7c, is taken when a0 >= 0xbe2 (unsigned), and falls through when a0 < 0xbe2 (unsigned).
  The `beq` branch at 0x2e40064 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4006c targets 0x2e40484, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x2e40078 targets 0x2e40aa8, is taken when a0 >= 0xb33 (unsigned), and falls through when a0 < 0xb33 (unsigned).
  The `beq` branch at 0x2e4009c targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e400b0 targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e400bc targets 0x2e40504, is taken when a0 < a1(=0x80bb) (unsigned), and falls through when a0 >= a1(=0x80bb) (unsigned).
  The `bne` branch at 0x2e400c4 targets 0x2e40be8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e400e8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e400f8 targets 0x2e405b0, is taken when a0 < a1(=0x8069) (unsigned), and falls through when a0 >= a1(=0x8069) (unsigned).
  The `beq` branch at 0x2e40100 targets 0x2e41e9c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x2e4010c targets 0x2e41278, is taken when a0 < a1(=0x806e) (unsigned), and falls through when a0 >= a1(=0x806e) (unsigned).
  The `bne` branch at 0x2e40114 targets 0x2e41b4c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x2e40138 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40140 targets 0x2e40604, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x2e4014c targets 0x2e3fc90, is taken when a0 < 0xd96 (unsigned), and falls through when a0 >= 0xd96 (unsigned).
  The `bne` branch at 0x2e40158 targets 0x2e41320, is taken when a0 < 0xdb1 (unsigned), and falls through when a0 >= 0xdb1 (unsigned).
  The `bne` branch at 0x2e40164 targets 0x2e3fc90, is taken when a0 < 0xdb2 (unsigned), and falls through when a0 >= 0xdb2 (unsigned).
  The `bne` branch at 0x2e40170 targets 0x2e42004, is taken when a0 < 0xdb3 (unsigned), and falls through when a0 >= 0xdb3 (unsigned).
  The `bne` branch at 0x2e4017c targets 0x2e3fc90, is taken when a0 < 0xdb4 (unsigned), and falls through when a0 >= 0xdb4 (unsigned).
  The `beq` branch at 0x2e4018c targets 0x2e3fc8c, is taken when a0 == a5(=0xdb4), and falls through when a0 != a5(=0xdb4).
  The `beq` branch at 0x2e40194 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e4019c targets 0x2e40680, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e401a8 targets 0x2e40ca8, is taken when a0 >= 0xba3 (unsigned), and falls through when a0 < 0xba3 (unsigned).
  The `beq` branch at 0x2e401e4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e401ec targets 0x2e40754, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x2e401f8 targets 0x2e3fc90, is taken when a0 < 0xb21 (unsigned), and falls through when a0 >= 0xb21 (unsigned).
  The `bne` branch at 0x2e40204 targets 0x2e41468, is taken when a0 < 0xb22 (unsigned), and falls through when a0 >= 0xb22 (unsigned).
  The `beq` branch at 0x2e40210 targets 0x2e41e6c, is taken when a0 >= 0xb23 (unsigned), and falls through when a0 < 0xb23 (unsigned).
  The `beq` branch at 0x2e40240 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40248 targets 0x2e406f0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40254 targets 0x2e40e08, is taken when a0 >= 0xd39 (unsigned), and falls through when a0 < 0xd39 (unsigned).
  The `beq` branch at 0x2e40278 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40280 targets 0x2e40728, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e4028c targets 0x2e40eb4, is taken when a0 >= 0xb62 (unsigned), and falls through when a0 < 0xb62 (unsigned).
  The `beq` branch at 0x2e402b4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e402bc targets 0x2e4083c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e402c8 targets 0x2e40ef0, is taken when a0 >= 0xb03 (unsigned), and falls through when a0 < 0xb03 (unsigned).
  The `beq` branch at 0x2e40300 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40308 targets 0x2e40874, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2e40314 targets 0x2e40fd8, is taken when a0 >= 0xd1b (unsigned), and falls through when a0 < 0xd1b (unsigned).
  The `beq` branch at 0x2e4033c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40344 targets 0x2e409a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e40350 targets 0x2e3fe28, is taken when a0 < 0xcba (unsigned), and falls through when a0 >= 0xcba (unsigned).
  The `bne` branch at 0x2e4035c targets 0x2e41c24, is taken when a0 < 0xcf2 (unsigned), and falls through when a0 >= 0xcf2 (unsigned).
  The `beq` branch at 0x2e40368 targets 0x2e42700, is taken when a0 >= 0xcf3 (unsigned), and falls through when a0 < 0xcf3 (unsigned).
  The `beq` branch at 0x2e4038c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40394 targets 0x2e409f0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e403a0 targets 0x2e411bc, is taken when a0 >= 0xc51 (unsigned), and falls through when a0 < 0xc51 (unsigned).
  The `beq` branch at 0x2e403c4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e403cc targets 0x2e40a2c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2e403d8 targets 0x2e411f4, is taken when a0 >= 0xc21 (unsigned), and falls through when a0 < 0xc21 (unsigned).
  The `beq` branch at 0x2e40400 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40408 targets 0x2e40ae8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40414 targets 0x2e412f4, is taken when a0 >= 0xdd2 (unsigned), and falls through when a0 < 0xdd2 (unsigned).
  The `beq` branch at 0x2e40438 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40440 targets 0x2e40b38, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x2e4044c targets 0x2e3fc90, is taken when a0 < 0xbd1 (unsigned), and falls through when a0 >= 0xbd1 (unsigned).
  The `bne` branch at 0x2e40458 targets 0x2e409e0, is taken when a0 != v0(=0xbe0), and falls through when a0 == v0(=0xbe0).
  The `beq` branch at 0x2e4047c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40484 targets 0x2e40b74, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40490 targets 0x2e41420, is taken when a0 >= 0xb31 (unsigned), and falls through when a0 < 0xb31 (unsigned).
  The `beq` branch at 0x2e404b4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e404c0 targets 0x2e40c40, is taken when a0 < 0x4004 (unsigned), and falls through when a0 >= 0x4004 (unsigned).
  The `bne` branch at 0x2e404cc targets 0x2e3fc90, is taken when a0 < 0x4005 (unsigned), and falls through when a0 >= 0x4005 (unsigned).
  The `bne` branch at 0x2e404d8 targets 0x2e41990, is taken when a0 < 0x4006 (unsigned), and falls through when a0 >= 0x4006 (unsigned).
  The `bne` branch at 0x2e404e4 targets 0x2e3fc90, is taken when a0 < 0x4007 (unsigned), and falls through when a0 >= 0x4007 (unsigned).
  The `beq` branch at 0x2e404f4 targets 0x2e3fc8c, is taken when a0 == t2(=0x4007), and falls through when a0 != t2(=0x4007).
  The `beq` branch at 0x2e404fc targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e4050c targets 0x2e40c6c, is taken when a0 < a1(=0x80b2) (unsigned), and falls through when a0 >= a1(=0x80b2) (unsigned).
  The `bne` branch at 0x2e40514 targets 0x2e4155c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x2e40570 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40578 targets 0x2e3fc78, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40584 targets 0x2e41594, is taken when a0 >= 0xb46 (unsigned), and falls through when a0 < 0xb46 (unsigned).
  The `beq` branch at 0x2e405a8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e405b8 targets 0x2e40d68, is taken when a0 < a1(=0x802e) (unsigned), and falls through when a0 >= a1(=0x802e) (unsigned).
  The `beq` branch at 0x2e405c0 targets 0x2e3fc90, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e405d0 targets 0x2e41d84, is taken when a0 < a1(=0x8039) (unsigned), and falls through when a0 >= a1(=0x8039) (unsigned).
  The `bne` branch at 0x2e405d8 targets 0x2e42868, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e405fc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40604 targets 0x2e40da4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e40610 targets 0x2e3fc90, is taken when a0 < 0xd92 (unsigned), and falls through when a0 >= 0xd92 (unsigned).
  The `bne` branch at 0x2e4061c targets 0x2e41e58, is taken when a0 < 0xd93 (unsigned), and falls through when a0 >= 0xd93 (unsigned).
  The `bne` branch at 0x2e40628 targets 0x2e3fc90, is taken when a0 < 0xd94 (unsigned), and falls through when a0 >= 0xd94 (unsigned).
  The `beq` branch at 0x2e40638 targets 0x2e3fc8c, is taken when a0 == t9(=0xd94), and falls through when a0 != t9(=0xd94).
  The `beq` branch at 0x2e40640 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e40648 targets 0x2e40dd0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e40654 targets 0x2e41618, is taken when a0 >= 0xd57 (unsigned), and falls through when a0 < 0xd57 (unsigned).
  The `beq` branch at 0x2e40678 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40680 targets 0x2e40e40, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2e4068c targets 0x2e416c0, is taken when a0 >= 0xb98 (unsigned), and falls through when a0 < 0xb98 (unsigned).
  The `beq` branch at 0x2e406b0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e406b8 targets 0x2e40e78, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e406c4 targets 0x2e416f8, is taken when a0 >= 0xb75 (unsigned), and falls through when a0 < 0xb75 (unsigned).
  The `beq` branch at 0x2e406e8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e406f0 targets 0x2e40f38, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e406fc targets 0x2e41864, is taken when a0 >= 0xd37 (unsigned), and falls through when a0 < 0xd37 (unsigned).
  The `beq` branch at 0x2e40720 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40728 targets 0x2e40f6c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e40734 targets 0x2e3fc90, is taken when a0 < 0xb58 (unsigned), and falls through when a0 >= 0xb58 (unsigned).
  The `beq` branch at 0x2e40744 targets 0x2e3fc8c, is taken when a0 == at(=0xb60), and falls through when a0 != at(=0xb60).
  The `beq` branch at 0x2e4074c targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e40754 targets 0x2e40fa0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40760 targets 0x2e41918, is taken when a0 >= 0xb13 (unsigned), and falls through when a0 < 0xb13 (unsigned).
  The `beq` branch at 0x2e40790 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40798 targets 0x2e41080, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e407a4 targets 0x2e419a4, is taken when a0 >= 0xb08 (unsigned), and falls through when a0 < 0xb08 (unsigned).
  The `beq` branch at 0x2e407c8 targets 0x2e43250, is taken when t2(=[[0x1020]:8+5204]:1) == 0, and falls through when t2(=[[0x1020]:8+5204]:1) != 0.
  The `beq` branch at 0x2e40834 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4083c targets 0x2e410d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e40844 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e4086c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40874 targets 0x2e41118, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40880 targets 0x2e41a68, is taken when a0 >= 0xd17 (unsigned), and falls through when a0 < 0xd17 (unsigned).
  The `beq` branch at 0x2e408a8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e408b0 targets 0x2e41154, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e408bc targets 0x2e41aa4, is taken when a0 >= 0xd04 (unsigned), and falls through when a0 < 0xd04 (unsigned).
  The `beq` branch at 0x2e408e0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e408e8 targets 0x2e41190, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x2e408f4 targets 0x2e3fe28, is taken when a0 < 0xcb1 (unsigned), and falls through when a0 >= 0xcb1 (unsigned).
  The `bne` branch at 0x2e40900 targets 0x2e4272c, is taken when a0 < 0xcb2 (unsigned), and falls through when a0 >= 0xcb2 (unsigned).
  The `bne` branch at 0x2e4090c targets 0x2e3fe28, is taken when a0 < 0xcb3 (unsigned), and falls through when a0 >= 0xcb3 (unsigned).
  The `beq` branch at 0x2e40918 targets 0x2e3fe28, is taken when a0 == a1(=0xcb3), and falls through when a0 != a1(=0xcb3).
  The `beq` branch at 0x2e40920 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e40930 targets 0x2e41248, is taken when a0 < a1(=0x807a) (unsigned), and falls through when a0 >= a1(=0x807a) (unsigned).
  The `bne` branch at 0x2e40938 targets 0x2e41b14, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e4095c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40964 targets 0x2e412b0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x2e40970 targets 0x2e3fc90, is taken when a0 < 0x3002 (unsigned), and falls through when a0 >= 0x3002 (unsigned).
  The `bne` branch at 0x2e4097c targets 0x2e41ff0, is taken when a0 < 0x3003 (unsigned), and falls through when a0 >= 0x3003 (unsigned).
  The `bne` branch at 0x2e40988 targets 0x2e3fc90, is taken when a0 < 0x3004 (unsigned), and falls through when a0 >= 0x3004 (unsigned).
  The `beq` branch at 0x2e40998 targets 0x2e3fc8c, is taken when a0 == t3(=0x3004), and falls through when a0 != t3(=0x3004).
  The `beq` branch at 0x2e409a0 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e409a8 targets 0x2e3fe14, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e409b4 targets 0x2e3fe28, is taken when a0 < 0xcb8 (unsigned), and falls through when a0 >= 0xcb8 (unsigned).
  The `beq` branch at 0x2e409c0 targets 0x2e3fe28, is taken when a0 == t9(=0xcb8), and falls through when a0 != t9(=0xcb8).
  The `beq` branch at 0x2e409c8 targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e409d4 targets 0x2e3fc8c, is taken when a0 == ra(=0xb10), and falls through when a0 != ra(=0xb10).
  The `beq` branch at 0x2e409e8 targets 0x2e3f9b0 and is always taken.
  The `bne` branch at 0x2e409f0 targets 0x2e4134c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e409fc targets 0x2e41ca4, is taken when a0 >= 0xc34 (unsigned), and falls through when a0 < 0xc34 (unsigned).
  The `beq` branch at 0x2e40a24 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40a2c targets 0x2e41388, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e40a38 targets 0x2e41cfc, is taken when a0 >= 0xc11 (unsigned), and falls through when a0 < 0xc11 (unsigned).
  The `beq` branch at 0x2e40a74 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40a7c targets 0x2e413c0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e40a88 targets 0x2e3fc90, is taken when a0 < 0xbf2 (unsigned), and falls through when a0 >= 0xbf2 (unsigned).
  The `beq` branch at 0x2e40a98 targets 0x2e3fc8c, is taken when a0 == a5(=0xbf2), and falls through when a0 != a5(=0xbf2).
  The `beq` branch at 0x2e40aa0 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e40aa8 targets 0x2e413f4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e40ab4 targets 0x2e41d10, is taken when a0 >= 0xb41 (unsigned), and falls through when a0 < 0xb41 (unsigned).
  The `beq` branch at 0x2e40ae0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40ae8 targets 0x2e4144c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e40af4 targets 0x2e3fc90, is taken when a0 < 0xdb9 (unsigned), and falls through when a0 >= 0xdb9 (unsigned).
  The `bne` branch at 0x2e40b00 targets 0x2e409e0, is taken when a0 != v0(=0xdd0), and falls through when a0 == v0(=0xdd0).
  The `beq` branch at 0x2e40b30 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40b38 targets 0x2e41498, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40b44 targets 0x2e409e0, is taken when a0 >= 0xbc3 (unsigned), and falls through when a0 < 0xbc3 (unsigned).
  The `beq` branch at 0x2e40b6c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40b74 targets 0x2e414c4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40b80 targets 0x2e409e0, is taken when a0 >= 0xb27 (unsigned), and falls through when a0 < 0xb27 (unsigned).
  The `beq` branch at 0x2e40ba4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40bb0 targets 0x2e414f0, is taken when a0 < a1(=0x801c) (unsigned), and falls through when a0 >= a1(=0x801c) (unsigned).
  The `bne` branch at 0x2e40bb8 targets 0x2e41f78, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e40be0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40bf0 targets 0x2e41520, is taken when a0 < a1(=0x81ef) (unsigned), and falls through when a0 >= a1(=0x81ef) (unsigned).
  The `bne` branch at 0x2e40bf8 targets 0x2e41fb8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e40c38 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40c40 targets 0x2e415c0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e40c4c targets 0x2e3fc90, is taken when a0 < 0x4003 (unsigned), and falls through when a0 >= 0x4003 (unsigned).
  The `beq` branch at 0x2e40c5c targets 0x2e3fc8c, is taken when a0 == v1(=0x4003), and falls through when a0 != v1(=0x4003).
  The `beq` branch at 0x2e40c64 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e40c74 targets 0x2e415dc, is taken when a0 < a1(=0x808c) (unsigned), and falls through when a0 >= a1(=0x808c) (unsigned).
  The `bne` branch at 0x2e40c7c targets 0x2e420ac, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e40ca0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40ca8 targets 0x2e41650, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e40cb4 targets 0x2e4217c, is taken when a0 >= 0xba8 (unsigned), and falls through when a0 < 0xba8 (unsigned).
  The `beq` branch at 0x2e40d60 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40d70 targets 0x2e4176c, is taken when a0 < a1(=0x8023) (unsigned), and falls through when a0 >= a1(=0x8023) (unsigned).
  The `bne` branch at 0x2e40d78 targets 0x2e42214, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2e40d9c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40da4 targets 0x2e417b0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e40db0 targets 0x2e3fc90, is taken when a0 < 0xd81 (unsigned), and falls through when a0 >= 0xd81 (unsigned).
  The `beq` branch at 0x2e40dc0 targets 0x2e3fc8c, is taken when a0 == t3(=0xd90), and falls through when a0 != t3(=0xd90).
  The `beq` branch at 0x2e40dc8 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e40dd0 targets 0x2e417f4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40ddc targets 0x2e42258, is taken when a0 >= 0xd55 (unsigned), and falls through when a0 < 0xd55 (unsigned).
  The `beq` branch at 0x2e40e00 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40e08 targets 0x2e41828, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40e14 targets 0x2e42284, is taken when a0 >= 0xd3c (unsigned), and falls through when a0 < 0xd3c (unsigned).
  The `beq` branch at 0x2e40e38 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40e40 targets 0x2e41890, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40e4c targets 0x2e42348, is taken when a0 >= 0xb96 (unsigned), and falls through when a0 < 0xb96 (unsigned).
  The `beq` branch at 0x2e40e70 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40e78 targets 0x2e418c4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40e84 targets 0x2e423bc, is taken when a0 >= 0xb73 (unsigned), and falls through when a0 < 0xb73 (unsigned).
  The `beq` branch at 0x2e40eac targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40eb4 targets 0x2e418e0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e40ec0 targets 0x2e423f0, is taken when a0 >= 0xb65 (unsigned), and falls through when a0 < 0xb65 (unsigned).
  The `beq` branch at 0x2e40ee8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40ef0 targets 0x2e409e0, is taken when a0 != t1(=0xb03), and falls through when a0 == t1(=0xb03).
  The `beq` branch at 0x2e40f30 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40f38 targets 0x2e419d4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40f40 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e40f64 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40f6c targets 0x2e41a00, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e40f74 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e40f98 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40fa0 targets 0x2e409d0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2e40fa8 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e40fd0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e40fd8 targets 0x2e41a2c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e40fe4 targets 0x2e425a0, is taken when a0 >= 0xd20 (unsigned), and falls through when a0 < 0xd20 (unsigned).
  The `beq` branch at 0x2e4100c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4101c targets 0x2e41adc, is taken when a0 < a1(=0x8083) (unsigned), and falls through when a0 >= a1(=0x8083) (unsigned).
  The `bne` branch at 0x2e41024 targets 0x2e425d8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e41048 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41050 targets 0x2e409e0, is taken when a0 != ra(=0xb51), and falls through when a0 == ra(=0xb51).
  The `beq` branch at 0x2e41078 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41080 targets 0x2e41b80, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e41088 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e410c8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e410d0 targets 0x2e409e0, is taken when a0 != t1(=0xb00), and falls through when a0 == t1(=0xb00).
  The `beq` branch at 0x2e41110 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41118 targets 0x2e41bb8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41124 targets 0x2e42678, is taken when a0 >= 0xd15 (unsigned), and falls through when a0 < 0xd15 (unsigned).
  The `beq` branch at 0x2e4114c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41154 targets 0x2e41bec, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41160 targets 0x2e426d4, is taken when a0 >= 0xd02 (unsigned), and falls through when a0 < 0xd02 (unsigned).
  The `beq` branch at 0x2e41188 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41190 targets 0x2e41c5c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e4119c targets 0x2e3fc90, is taken when a0 < 0xc63 (unsigned), and falls through when a0 >= 0xc63 (unsigned).
  The `beq` branch at 0x2e411ac targets 0x2e3fc8c, is taken when a0 == at(=0xc63), and falls through when a0 != at(=0xc63).
  The `beq` branch at 0x2e411b4 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e411bc targets 0x2e41c78, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2e411c8 targets 0x2e4273c, is taken when a0 >= 0xc53 (unsigned), and falls through when a0 < 0xc53 (unsigned).
  The `beq` branch at 0x2e411ec targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e411f4 targets 0x2e41cd0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41200 targets 0x2e42768, is taken when a0 >= 0xc23 (unsigned), and falls through when a0 < 0xc23 (unsigned).
  The `beq` branch at 0x2e41240 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41250 targets 0x2e41d24, is taken when a0 < a1(=0x8078) (unsigned), and falls through when a0 >= a1(=0x8078) (unsigned).
  The `beq` branch at 0x2e41258 targets 0x2e3fc90, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x2e41268 targets 0x2e3fc8c, is taken when a0 == t9(=0x8079), and falls through when a0 != t9(=0x8079).
  The `beq` branch at 0x2e41270 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41280 targets 0x2e41d48, is taken when a0 < a1(=0x806c) (unsigned), and falls through when a0 >= a1(=0x806c) (unsigned).
  The `bne` branch at 0x2e41288 targets 0x2e42838, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e412a8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e412b0 targets 0x2e41dc4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2e412bc targets 0x2e428b4, is taken when a0 >= 0x2a01 (unsigned), and falls through when a0 < 0x2a01 (unsigned).
  The `beq` branch at 0x2e412ec targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e412f4 targets 0x2e41dfc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2e41300 targets 0x2e3fc90, is taken when a0 < 0xde1 (unsigned), and falls through when a0 >= 0xde1 (unsigned).
  The `beq` branch at 0x2e41310 targets 0x2e3fc8c, is taken when a0 == t3(=0xde1), and falls through when a0 != t3(=0xde1).
  The `beq` branch at 0x2e41318 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41320 targets 0x2e41e3c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e4132c targets 0x2e3fc90, is taken when a0 < 0xd99 (unsigned), and falls through when a0 >= 0xd99 (unsigned).
  The `beq` branch at 0x2e4133c targets 0x2e3fc8c, is taken when a0 == t9(=0xdb0), and falls through when a0 != t9(=0xdb0).
  The `beq` branch at 0x2e41344 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e4134c targets 0x2e41ef0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e41354 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e41380 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41388 targets 0x2e41f24, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e41394 targets 0x2e409e0, is taken when a0 >= 0xc03 (unsigned), and falls through when a0 < 0xc03 (unsigned).
  The `beq` branch at 0x2e413b8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e413c0 targets 0x2e41f50, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e413c8 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e413ec targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e413f4 targets 0x2e409e0, is taken when a0 != v0(=0xb33), and falls through when a0 == v0(=0xb33).
  The `beq` branch at 0x2e41418 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41420 targets 0x2e409e0, is taken when a0 != a1(=0xb31), and falls through when a0 == a1(=0xb31).
  The `beq` branch at 0x2e41444 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4144c targets 0x2e41f64, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x2e41458 targets 0x2e3fc8c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41460 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41468 targets 0x2e409e0, is taken when a0 != a6(=0xb21), and falls through when a0 == a6(=0xb21).
  The `beq` branch at 0x2e41490 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41498 targets 0x2e409e0, is taken when a0 != t1(=0xbc1), and falls through when a0 == t1(=0xbc1).
  The `beq` branch at 0x2e414bc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e414c4 targets 0x2e409e0, is taken when a0 != ra(=0xb25), and falls through when a0 == ra(=0xb25).
  The `beq` branch at 0x2e414e8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e414f8 targets 0x2e42018, is taken when a0 < a1(=0x8011) (unsigned), and falls through when a0 >= a1(=0x8011) (unsigned).
  The `beq` branch at 0x2e41500 targets 0x2e3fc90, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2e41510 targets 0x2e3fc8c, is taken when a0 == a1(=0x8012), and falls through when a0 != a1(=0x8012).
  The `beq` branch at 0x2e41518 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41528 targets 0x2e42040, is taken when a0 < a1(=0x80e8) (unsigned), and falls through when a0 >= a1(=0x80e8) (unsigned).
  The `bne` branch at 0x2e41530 targets 0x2e42a9c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e41554 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41560 targets 0x2e42070, is taken when a0 < a1(=0x80b7) (unsigned), and falls through when a0 >= a1(=0x80b7) (unsigned).
  The `bne` branch at 0x2e41568 targets 0x2e42ae8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x2e4158c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41594 targets 0x2e409e0, is taken when a0 != t1(=0xb46), and falls through when a0 == t1(=0xb46).
  The `beq` branch at 0x2e415b8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e415c0 targets 0x2e421c0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x2e415cc targets 0x2e3fc8c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e415d4 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e415e4 targets 0x2e421d4, is taken when a0 < a1(=0x808a) (unsigned), and falls through when a0 >= a1(=0x808a) (unsigned).
  The `bne` branch at 0x2e415ec targets 0x2e42c1c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2e41610 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41618 targets 0x2e4222c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41624 targets 0x2e42c48, is taken when a0 >= 0xd59 (unsigned), and falls through when a0 < 0xd59 (unsigned).
  The `beq` branch at 0x2e41648 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41650 targets 0x2e422b0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e4165c targets 0x2e42d28, is taken when a0 >= 0xba6 (unsigned), and falls through when a0 < 0xba6 (unsigned).
  The `beq` branch at 0x2e416b8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e416c0 targets 0x2e4231c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e416cc targets 0x2e42ddc, is taken when a0 >= 0xba1 (unsigned), and falls through when a0 < 0xba1 (unsigned).
  The `beq` branch at 0x2e416f0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e416f8 targets 0x2e42374, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x2e41704 targets 0x2e3fc90, is taken when a0 < 0xb91 (unsigned), and falls through when a0 >= 0xb91 (unsigned).
  The `bne` branch at 0x2e41710 targets 0x2e409e0, is taken when a0 != t1(=0xb91), and falls through when a0 == t1(=0xb91).
  The `beq` branch at 0x2e41734 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4173c targets 0x2e409e0, is taken when a0 != ra(=0xb43), and falls through when a0 == ra(=0xb43).
  The `beq` branch at 0x2e41764 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41774 targets 0x2e4244c, is taken when a0 < a1(=0x8022) (unsigned), and falls through when a0 >= a1(=0x8022) (unsigned).
  The `bne` branch at 0x2e41780 targets 0x2e409e0, is taken when a1(=0x8022) < a0 (unsigned), and falls through when a1(=0x8022) >= a0 (unsigned).
  The `beq` branch at 0x2e417a8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e417b0 targets 0x2e4247c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e417bc targets 0x2e409e0, is taken when a0 >= 0xd71 (unsigned), and falls through when a0 < 0xd71 (unsigned).
  The `beq` branch at 0x2e417ec targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e417f4 targets 0x2e424a8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e417fc targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e41820 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41828 targets 0x2e424d4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2e41830 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e4185c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41864 targets 0x2e409e0, is taken when a0 != a2(=0xd37), and falls through when a0 == a2(=0xd37).
  The `beq` branch at 0x2e41888 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41890 targets 0x2e42500, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e41898 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e418bc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e418c4 targets 0x2e42530, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x2e418d0 targets 0x2e3fc8c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e418d8 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e418e0 targets 0x2e42570, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e418e8 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e41910 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41918 targets 0x2e409e0, is taken when a0 != t1(=0xb13), and falls through when a0 == t1(=0xb13).
  The `beq` branch at 0x2e41940 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4194c targets 0x2e409dc, is taken when a0 != t1(=0xb53), and falls through when a0 == t1(=0xb53).
  The `beq` branch at 0x2e41988 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e41994 targets 0x2e3fc8c, is taken when a0 == t3(=0x4005), and falls through when a0 != t3(=0x4005).
  The `beq` branch at 0x2e4199c targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e419a4 targets 0x2e409e0, is taken when a0 != t8(=0xb08), and falls through when a0 == t8(=0xb08).
  The `beq` branch at 0x2e419cc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e419d4 targets 0x2e409e0, is taken when a0 != ra(=0xd34), and falls through when a0 == ra(=0xd34).
  The `beq` branch at 0x2e419f8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41a00 targets 0x2e409e0, is taken when a0 != v0(=0xb55), and falls through when a0 == v0(=0xb55).
  The `beq` branch at 0x2e41a24 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41a2c targets 0x2e42610, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41a38 targets 0x2e42eac, is taken when a0 >= 0xd1e (unsigned), and falls through when a0 < 0xd1e (unsigned).
  The `beq` branch at 0x2e41a60 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41a68 targets 0x2e42648, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e41a74 targets 0x2e42edc, is taken when a0 >= 0xd19 (unsigned), and falls through when a0 < 0xd19 (unsigned).
  The `beq` branch at 0x2e41a9c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41aa4 targets 0x2e426a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e41ab0 targets 0x2e42f0c, is taken when a0 >= 0xd06 (unsigned), and falls through when a0 < 0xd06 (unsigned).
  The `beq` branch at 0x2e41ad4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41ae4 targets 0x2e427b0, is taken when a0 < a1(=0x8081) (unsigned), and falls through when a0 >= a1(=0x8081) (unsigned).
  The `bne` branch at 0x2e41aec targets 0x2e42f6c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e41b0c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41b18 targets 0x2e427f0, is taken when a0 < a1(=0x807c) (unsigned), and falls through when a0 >= a1(=0x807c) (unsigned).
  The `bne` branch at 0x2e41b20 targets 0x2e42f9c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x2e41b44 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41b50 targets 0x2e42820, is taken when a0 < a1(=0x8073) (unsigned), and falls through when a0 >= a1(=0x8073) (unsigned).
  The `bne` branch at 0x2e41b58 targets 0x2e42fc8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e41b78 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41b80 targets 0x2e409e0, is taken when a0 != ra(=0xb05), and falls through when a0 == ra(=0xb05).
  The `beq` branch at 0x2e41b8c targets 0x2e432d0, is taken when at(=[[0x1020]:8+3556]:1) == 0, and falls through when at(=[[0x1020]:8+3556]:1) != 0.
  The `beq` branch at 0x2e41bb0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41bb8 targets 0x2e428c8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e41bc0 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e41be4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41bec targets 0x2e428f4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e41bf4 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e41c1c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41c24 targets 0x2e42920, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e41c2c targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e41c54 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41c5c targets 0x2e42954, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x2e41c68 targets 0x2e3fc8c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41c70 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41c78 targets 0x2e409e0, is taken when a0 != at(=0xc51), and falls through when a0 == at(=0xc51).
  The `beq` branch at 0x2e41c9c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41ca4 targets 0x2e409e0, is taken when a0 != v1(=0xc40), and falls through when a0 == v1(=0xc40).
  The `beq` branch at 0x2e41cc8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41cd0 targets 0x2e409e0, is taken when a0 != a1(=0xc21), and falls through when a0 == a1(=0xc21).
  The `beq` branch at 0x2e41cf4 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e41d00 targets 0x2e3fc8c, is taken when a0 == a5(=0xc11), and falls through when a0 != a5(=0xc11).
  The `beq` branch at 0x2e41d08 targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e41d14 targets 0x2e3fc8c, is taken when a0 == a6(=0xb41), and falls through when a0 != a6(=0xb41).
  The `beq` branch at 0x2e41d1c targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41d2c targets 0x2e42968, is taken when a0 < a1(=0x8077) (unsigned), and falls through when a0 >= a1(=0x8077) (unsigned).
  The `beq` branch at 0x2e41d38 targets 0x2e3fc8c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2e41d40 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41d50 targets 0x2e42980, is taken when a0 < a1(=0x806b) (unsigned), and falls through when a0 >= a1(=0x806b) (unsigned).
  The `bne` branch at 0x2e41d58 targets 0x2e409e0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e41d7c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41d8c targets 0x2e429cc, is taken when a0 < a1(=0x8038) (unsigned), and falls through when a0 >= a1(=0x8038) (unsigned).
  The `bne` branch at 0x2e41d94 targets 0x2e409e0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e41dbc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41dc4 targets 0x2e429e4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e41dd0 targets 0x2e409e0, is taken when a0 >= 0xdf5 (unsigned), and falls through when a0 < 0xdf5 (unsigned).
  The `beq` branch at 0x2e41df4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41dfc targets 0x2e42a10, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e41e08 targets 0x2e409e0, is taken when a0 >= 0xdd4 (unsigned), and falls through when a0 < 0xdd4 (unsigned).
  The `beq` branch at 0x2e41e34 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41e3c targets 0x2e42a58, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x2e41e48 targets 0x2e3fc8c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x2e41e50 targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e41e5c targets 0x2e3fc8c, is taken when a0 == a5(=0xd92), and falls through when a0 != a5(=0xd92).
  The `beq` branch at 0x2e41e64 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41e6c targets 0x2e409e0, is taken when a0 != a6(=0xb23), and falls through when a0 == a6(=0xb23).
  The `beq` branch at 0x2e41e94 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e41ed8 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e41ee0 targets 0x2e3fe28, is taken when a0 == ra(=0xcb5), and falls through when a0 != ra(=0xcb5).
  The `beq` branch at 0x2e41ee8 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41ef0 targets 0x2e409e0, is taken when a0 != at(=0xc31), and falls through when a0 == at(=0xc31).
  The `beq` branch at 0x2e41f1c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41f24 targets 0x2e409e0, is taken when a0 != t2(=0xc01), and falls through when a0 == t2(=0xc01).
  The `beq` branch at 0x2e41f48 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e41f54 targets 0x2e3fc8c, is taken when a0 == ra(=0xbe2), and falls through when a0 != ra(=0xbe2).
  The `beq` branch at 0x2e41f5c targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e41f68 targets 0x2e3fc8c, is taken when a0 == at(=0xdb6), and falls through when a0 != at(=0xdb6).
  The `beq` branch at 0x2e41f70 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e41f7c targets 0x2e42a6c, is taken when a0 < a1(=0x801e) (unsigned), and falls through when a0 >= a1(=0x801e) (unsigned).
  The `bne` branch at 0x2e41f88 targets 0x2e4303c, is taken when a1(=0x801e) < a0 (unsigned), and falls through when a1(=0x801e) >= a0 (unsigned).
  The `beq` branch at 0x2e41fb0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e41fbc targets 0x2e42b28, is taken when a0 < a1(=0x842d) (unsigned), and falls through when a0 >= a1(=0x842d) (unsigned).
  The `bne` branch at 0x2e41fc4 targets 0x2e4306c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e41fe8 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e41ff4 targets 0x2e3fc8c, is taken when a0 == ra(=0x3002), and falls through when a0 != ra(=0x3002).
  The `beq` branch at 0x2e41ffc targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e42008 targets 0x2e3fc8c, is taken when a0 == at(=0xdb2), and falls through when a0 != at(=0xdb2).
  The `beq` branch at 0x2e42010 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42020 targets 0x2e42b60, is taken when a0 < a1(=0x8010) (unsigned), and falls through when a0 >= a1(=0x8010) (unsigned).
  The `beq` branch at 0x2e42030 targets 0x2e3fc8c, is taken when a1(=0x8010) >= a0 (unsigned), and falls through when a1(=0x8010) < a0 (unsigned).
  The `beq` branch at 0x2e42038 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42048 targets 0x2e42b8c, is taken when a0 < a1(=0x80d1) (unsigned), and falls through when a0 >= a1(=0x80d1) (unsigned).
  The `beq` branch at 0x2e42050 targets 0x2e3fc90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2e42060 targets 0x2e3fc8c, is taken when a0 == a6(=0x80d2), and falls through when a0 != a6(=0x80d2).
  The `beq` branch at 0x2e42068 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42078 targets 0x2e42bb0, is taken when a0 < a1(=0x80b5) (unsigned), and falls through when a0 >= a1(=0x80b5) (unsigned).
  The `bne` branch at 0x2e42080 targets 0x2e430a4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x2e420a4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e420b0 targets 0x2e42bf0, is taken when a0 < a1(=0x8094) (unsigned), and falls through when a0 >= a1(=0x8094) (unsigned).
  The `beq` branch at 0x2e420bc targets 0x2e3fc90, is taken when a1(=0x8094) >= a0 (unsigned), and falls through when a1(=0x8094) < a0 (unsigned).
  The `bne` branch at 0x2e420c8 targets 0x2e409e0, is taken when a0 != t3(=0x80b1), and falls through when a0 == t3(=0x80b1).
  The `beq` branch at 0x2e42174 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4217c targets 0x2e42c74, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e42188 targets 0x2e430d8, is taken when a0 >= 0xbb1 (unsigned), and falls through when a0 < 0xbb1 (unsigned).
  The `beq` branch at 0x2e421b8 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e421c4 targets 0x2e3fc8c, is taken when a0 == at(=0x4000), and falls through when a0 != at(=0x4000).
  The `beq` branch at 0x2e421cc targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e421dc targets 0x2e42df0, is taken when a0 < a1(=0x8089) (unsigned), and falls through when a0 >= a1(=0x8089) (unsigned).
  The `bne` branch at 0x2e421e8 targets 0x2e409e0, is taken when a1(=0x8089) < a0 (unsigned), and falls through when a1(=0x8089) >= a0 (unsigned).
  The `beq` branch at 0x2e4220c targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e4221c targets 0x2e3fc8c, is taken when a0 == a1(=0x8024), and falls through when a0 != a1(=0x8024).
  The `beq` branch at 0x2e42224 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e4222c targets 0x2e409e0, is taken when a0 != a2(=0xd57), and falls through when a0 == a2(=0xd57).
  The `beq` branch at 0x2e42250 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42258 targets 0x2e409e0, is taken when a0 != a6(=0xd55), and falls through when a0 == a6(=0xd55).
  The `beq` branch at 0x2e4227c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42284 targets 0x2e409e0, is taken when a0 != t0(=0xd50), and falls through when a0 == t0(=0xd50).
  The `beq` branch at 0x2e422a8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e422b0 targets 0x2e42e1c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x2e422b8 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e42314 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4231c targets 0x2e409e0, is taken when a0 != a6(=0xb98), and falls through when a0 == a6(=0xb98).
  The `beq` branch at 0x2e42340 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42348 targets 0x2e409e0, is taken when a0 != t0(=0xb96), and falls through when a0 == t0(=0xb96).
  The `beq` branch at 0x2e4236c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42374 targets 0x2e409e0, is taken when a0 != ra(=0xb80), and falls through when a0 == ra(=0xb80).
  The `beq` branch at 0x2e423b4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e423bc targets 0x2e409e0, is taken when a0 != t3(=0xb73), and falls through when a0 == t3(=0xb73).
  The `beq` branch at 0x2e423e8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e423f0 targets 0x2e409e0, is taken when a0 != t3(=0xb65), and falls through when a0 == t3(=0xb65).
  The `beq` branch at 0x2e42414 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e42444 targets 0x2e3ff74 and is always taken.
  The `bne` branch at 0x2e4244c targets 0x2e409e0, is taken when a0 != t8(=0x8021), and falls through when a0 == t8(=0x8021).
  The `beq` branch at 0x2e42474 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4247c targets 0x2e409e0, is taken when a0 != t1(=0xd5b), and falls through when a0 == t1(=0xd5b).
  The `beq` branch at 0x2e424a0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e424a8 targets 0x2e409e0, is taken when a0 != ra(=0xd52), and falls through when a0 == ra(=0xd52).
  The `beq` branch at 0x2e424cc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e424d4 targets 0x2e409e0, is taken when a0 != v0(=0xd39), and falls through when a0 == v0(=0xd39).
  The `beq` branch at 0x2e424f8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42504 targets 0x2e409e0, is taken when a0 != a1(=0xb93), and falls through when a0 == a1(=0xb93).
  The `beq` branch at 0x2e42528 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42530 targets 0x2e409e0, is taken when a0 != a5(=0xb70), and falls through when a0 == a5(=0xb70).
  The `beq` branch at 0x2e42568 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42570 targets 0x2e409e0, is taken when a0 != t3(=0xb62), and falls through when a0 == t3(=0xb62).
  The `beq` branch at 0x2e42598 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e425a0 targets 0x2e42e80, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e425ac targets 0x2e431f8, is taken when a0 >= 0xd32 (unsigned), and falls through when a0 < 0xd32 (unsigned).
  The `beq` branch at 0x2e425d0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e425dc targets 0x2e42f3c, is taken when a0 < a1(=0x8085) (unsigned), and falls through when a0 >= a1(=0x8085) (unsigned).
  The `bne` branch at 0x2e425e4 targets 0x2e43224, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2e42608 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42610 targets 0x2e42fe0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2e42618 targets 0x2e409e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2e42640 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42648 targets 0x2e409e0, is taken when a0 != t1(=0xd17), and falls through when a0 == t1(=0xd17).
  The `beq` branch at 0x2e42670 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42678 targets 0x2e409e0, is taken when a0 != t1(=0xd15), and falls through when a0 == t1(=0xd15).
  The `beq` branch at 0x2e426a0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e426a8 targets 0x2e409e0, is taken when a0 != t1(=0xd04), and falls through when a0 == t1(=0xd04).
  The `beq` branch at 0x2e426cc targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e426d4 targets 0x2e409e0, is taken when a0 != ra(=0xd02), and falls through when a0 == ra(=0xd02).
  The `beq` branch at 0x2e426f8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42700 targets 0x2e409e0, is taken when a0 != v0(=0xcf3), and falls through when a0 == v0(=0xcf3).
  The `beq` branch at 0x2e42724 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e4272c targets 0x2e3fe28, is taken when a0 == a1(=0xcb1), and falls through when a0 != a1(=0xcb1).
  The `beq` branch at 0x2e42734 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e4273c targets 0x2e409e0, is taken when a0 != a2(=0xc53), and falls through when a0 == a2(=0xc53).
  The `beq` branch at 0x2e42760 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42768 targets 0x2e409e0, is taken when a0 != a6(=0xc23), and falls through when a0 == a6(=0xc23).
  The `beq` branch at 0x2e427a8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e427b8 targets 0x2e43010, is taken when a0 < a1(=0x8080) (unsigned), and falls through when a0 >= a1(=0x8080) (unsigned).
  The `bne` branch at 0x2e427c4 targets 0x2e409e0, is taken when a1(=0x8080) < a0 (unsigned), and falls through when a1(=0x8080) >= a0 (unsigned).
  The `beq` branch at 0x2e427e8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e427f4 targets 0x2e409e0, is taken when a0 != a1(=0x807b), and falls through when a0 == a1(=0x807b).
  The `beq` branch at 0x2e42818 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e42828 targets 0x2e3fc8c, is taken when a0 == a5(=0x806f), and falls through when a0 != a5(=0x806f).
  The `beq` branch at 0x2e42830 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e4283c targets 0x2e409e0, is taken when a0 != a6(=0x806d), and falls through when a0 == a6(=0x806d).
  The `beq` branch at 0x2e42860 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42870 targets 0x2e409dc, is taken when a0 != t0(=0x8068), and falls through when a0 == t0(=0x8068).
  The `beq` branch at 0x2e428ac targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e428b8 targets 0x2e3fc8c, is taken when a0 == ra(=0x3000), and falls through when a0 != ra(=0x3000).
  The `beq` branch at 0x2e428c0 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e428c8 targets 0x2e409e0, is taken when a0 != at(=0xd12), and falls through when a0 == at(=0xd12).
  The `beq` branch at 0x2e428ec targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e428f4 targets 0x2e409e0, is taken when a0 != v1(=0xcf5), and falls through when a0 == v1(=0xcf5).
  The `beq` branch at 0x2e42918 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42924 targets 0x2e409e0, is taken when a0 != a1(=0xcf0), and falls through when a0 == a1(=0xcf0).
  The `beq` branch at 0x2e4294c targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e42958 targets 0x2e3fc8c, is taken when a0 == ra(=0xc60), and falls through when a0 != ra(=0xc60).
  The `beq` branch at 0x2e42960 targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e42970 targets 0x2e3fc8c, is taken when a0 == at(=0x8076), and falls through when a0 != at(=0x8076).
  The `beq` branch at 0x2e42978 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42988 targets 0x2e409dc, is taken when a0 != v0(=0x806a), and falls through when a0 == v0(=0x806a).
  The `beq` branch at 0x2e429c4 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e429d4 targets 0x2e3fc8c, is taken when a0 == a1(=0x8037), and falls through when a0 != a1(=0x8037).
  The `beq` branch at 0x2e429dc targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e429e4 targets 0x2e409e0, is taken when a0 != a2(=0xdf2), and falls through when a0 == a2(=0xdf2).
  The `beq` branch at 0x2e42a08 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42a10 targets 0x2e409e0, is taken when a0 != a6(=0xdd2), and falls through when a0 == a6(=0xdd2).
  The `beq` branch at 0x2e42a50 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e42a5c targets 0x2e3fc8c, is taken when a0 == t1(=0xd96), and falls through when a0 != t1(=0xd96).
  The `beq` branch at 0x2e42a64 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42a6c targets 0x2e409e0, is taken when a0 != t2(=0x801d), and falls through when a0 == t2(=0x801d).
  The `beq` branch at 0x2e42a94 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42aa0 targets 0x2e43150, is taken when a0 < a1(=0x817b) (unsigned), and falls through when a0 >= a1(=0x817b) (unsigned).
  The `beq` branch at 0x2e42aa8 targets 0x2e42ab8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x2e42ab0 targets 0x2e409e0, is taken when a0 != t3(=0x817c), and falls through when a0 == t3(=0x817c).
  The `beq` branch at 0x2e42ae0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42af0 targets 0x2e43180, is taken when a0 < a1(=0x80b9) (unsigned), and falls through when a0 >= a1(=0x80b9) (unsigned).
  The `bne` branch at 0x2e42afc targets 0x2e43288, is taken when a1(=0x80b9) < a0 (unsigned), and falls through when a1(=0x80b9) >= a0 (unsigned).
  The `beq` branch at 0x2e42b20 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42b30 targets 0x2e43110, is taken when a0 < a1(=0x8322) (unsigned), and falls through when a0 >= a1(=0x8322) (unsigned).
  The `bne` branch at 0x2e42b38 targets 0x2e43258, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x2e42b58 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42b60 targets 0x2e409e0, is taken when a0 != ra(=0x8009), and falls through when a0 == ra(=0x8009).
  The `beq` branch at 0x2e42b84 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42b94 targets 0x2e431b0, is taken when a0 < a1(=0x80d0) (unsigned), and falls through when a0 >= a1(=0x80d0) (unsigned).
  The `beq` branch at 0x2e42ba0 targets 0x2e3fc8c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2e42ba8 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42bb8 targets 0x2e431c8, is taken when a0 < a1(=0x80b4) (unsigned), and falls through when a0 >= a1(=0x80b4) (unsigned).
  The `bne` branch at 0x2e42bc0 targets 0x2e409e0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e42be8 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42bf0 targets 0x2e409e0, is taken when a0 != t1(=0x808d), and falls through when a0 == t1(=0x808d).
  The `beq` branch at 0x2e42c14 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42c1c targets 0x2e409e0, is taken when a0 != ra(=0x808b), and falls through when a0 == ra(=0x808b).
  The `beq` branch at 0x2e42c40 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42c48 targets 0x2e409e0, is taken when a0 != v0(=0xd59), and falls through when a0 == v0(=0xd59).
  The `beq` branch at 0x2e42c6c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42c74 targets 0x2e409e0, is taken when a0 != a1(=0xba8), and falls through when a0 == a1(=0xba8).
  The `beq` branch at 0x2e42d20 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42d28 targets 0x2e409e0, is taken when a0 != t2(=0xba6), and falls through when a0 == t2(=0xba6).
  The `beq` branch at 0x2e42dd4 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e42de0 targets 0x2e3fc8c, is taken when a0 == t2(=0xba1), and falls through when a0 != t2(=0xba1).
  The `beq` branch at 0x2e42de8 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42df0 targets 0x2e409e0, is taken when a0 != t3(=0x8088), and falls through when a0 == t3(=0x8088).
  The `beq` branch at 0x2e42e14 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42e1c targets 0x2e409e0, is taken when a0 != ra(=0xba3), and falls through when a0 == ra(=0xba3).
  The `beq` branch at 0x2e42e78 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42e80 targets 0x2e409e0, is taken when a0 != a6(=0xd30), and falls through when a0 == a6(=0xd30).
  The `beq` branch at 0x2e42ea4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42eac targets 0x2e409e0, is taken when a0 != t0(=0xd1e), and falls through when a0 == t0(=0xd1e).
  The `beq` branch at 0x2e42ed4 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42edc targets 0x2e409e0, is taken when a0 != t1(=0xd19), and falls through when a0 == t1(=0xd19).
  The `beq` branch at 0x2e42f04 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42f0c targets 0x2e409e0, is taken when a0 != t1(=0xd10), and falls through when a0 == t1(=0xd10).
  The `beq` branch at 0x2e42f34 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42f40 targets 0x2e409e0, is taken when a0 != ra(=0x8084), and falls through when a0 == ra(=0x8084).
  The `beq` branch at 0x2e42f64 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42f70 targets 0x2e409e0, is taken when a0 != v0(=0x8082), and falls through when a0 == v0(=0x8082).
  The `beq` branch at 0x2e42f94 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e42f9c targets 0x2e409e0, is taken when a0 != a1(=0x807d), and falls through when a0 == a1(=0x807d).
  The `beq` branch at 0x2e42fc0 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e42fd0 targets 0x2e3fc8c, is taken when a0 == a5(=0x8074), and falls through when a0 != a5(=0x8074).
  The `beq` branch at 0x2e42fd8 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e42fe0 targets 0x2e409e0, is taken when a0 != a6(=0xd1b), and falls through when a0 == a6(=0xd1b).
  The `beq` branch at 0x2e43008 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e43010 targets 0x2e409e0, is taken when a0 != t1(=0x807f), and falls through when a0 == t1(=0x807f).
  The `beq` branch at 0x2e43034 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4303c targets 0x2e409e0, is taken when a0 != ra(=0x801f), and falls through when a0 == ra(=0x801f).
  The `beq` branch at 0x2e43064 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e43070 targets 0x2e432bc, is taken when a0 < a1(=0x85a0) (unsigned), and falls through when a0 >= a1(=0x85a0) (unsigned).
  The `bne` branch at 0x2e4307c targets 0x2e43308, is taken when a1(=0x85a0) < a0 (unsigned), and falls through when a1(=0x85a0) >= a0 (unsigned).
  The `beq` branch at 0x2e4309c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e430a8 targets 0x2e409e0, is taken when a0 != ra(=0x80b6), and falls through when a0 == ra(=0x80b6).
  The `beq` branch at 0x2e430d0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e430d8 targets 0x2e409e0, is taken when a0 != t1(=0xbb1), and falls through when a0 == t1(=0xbb1).
  The `beq` branch at 0x2e43108 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e43118 targets 0x2e432dc, is taken when a0 < a1(=0x8316) (unsigned), and falls through when a0 >= a1(=0x8316) (unsigned).
  The `bne` branch at 0x2e43124 targets 0x2e409e0, is taken when a1(=0x8316) < a0 (unsigned), and falls through when a1(=0x8316) >= a0 (unsigned).
  The `beq` branch at 0x2e43148 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e43154 targets 0x2e409e0, is taken when a0 != a1(=0x80e9), and falls through when a0 == a1(=0x80e9).
  The `beq` branch at 0x2e43178 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e43180 targets 0x2e409e0, is taken when a0 != a5(=0x80b8), and falls through when a0 == a5(=0x80b8).
  The `beq` branch at 0x2e431a8 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e431b8 targets 0x2e3fc8c, is taken when a0 == t1(=0x80bc), and falls through when a0 != t1(=0x80bc).
  The `beq` branch at 0x2e431c0 targets 0x2e409e0 and is always taken.
  The `bne` branch at 0x2e431cc targets 0x2e409e0, is taken when a0 != t2(=0x80b3), and falls through when a0 == t2(=0x80b3).
  The `beq` branch at 0x2e431f0 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e431f8 targets 0x2e409e0, is taken when a0 != ra(=0xd32), and falls through when a0 == ra(=0xd32).
  The `beq` branch at 0x2e4321c targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e43224 targets 0x2e409e0, is taken when a0 != v0(=0x8086), and falls through when a0 == v0(=0x8086).
  The `beq` branch at 0x2e43248 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e43250 targets 0x2e407ec and is always taken.
  The `bne` branch at 0x2e4325c targets 0x2e409e0, is taken when a0 != a1(=0x842c), and falls through when a0 == a1(=0x842c).
  The `beq` branch at 0x2e43280 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4328c targets 0x2e409e0, is taken when a0 != a5(=0x80ba), and falls through when a0 == a5(=0x80ba).
  The `beq` branch at 0x2e432b4 targets 0x2e3f97c and is always taken.
  The `beq` branch at 0x2e432c0 targets 0x2e3fc8c, is taken when a0 == t1(=0x8568), and falls through when a0 != t1(=0x8568).
  The `beq` branch at 0x2e432c8 targets 0x2e409e0 and is always taken.
  The `beq` branch at 0x2e432d4 targets 0x2e41b98 and is always taken.
  The `bne` branch at 0x2e432dc targets 0x2e409e0, is taken when a0 != t2(=0x81f8), and falls through when a0 == t2(=0x81f8).
  The `beq` branch at 0x2e43300 targets 0x2e3f97c and is always taken.
  The `bne` branch at 0x2e4330c targets 0x2e409e0, is taken when a0 != ra(=0x85a1), and falls through when a0 == ra(=0x85a1).
  The `beq` branch at 0x2e43330 targets 0x2e3f97c and is always taken.
  The return at 0x2e3f9b8 has v0 = one of ?, ret(__glConvertResult), ret(__glSetError).
- `__glim_GetDoublev` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43340 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e43340-0x2e4337c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x2e43364 calls __glDoGet [0x2e3f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=0x2ee9ae0, a4=0xbd458.
  The return at 0x2e43374 has v0 = ret(__glDoGet).
- `__glim_GetFloatv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e43380-0x2e433bc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x2e433a4 calls __glDoGet [0x2e3f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x2ee9af0, a4=0xbd418.
  The return at 0x2e433b4 has v0 = ret(__glDoGet).
- `__glim_GetIntegerv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e433c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e433c0-0x2e433fc (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x2e433e4 calls __glDoGet [0x2e3f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x2ee9b00, a4=0xbd3d8.
  The return at 0x2e433f4 has v0 = ret(__glDoGet).
- `__glim_GetBooleanv` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e43400-0x2e4343c (60 bytes).
  It occupies 60 bytes.
  The `bgezall` at 0x2e43424 calls __glDoGet [0x2e3f910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=0x2ee9b10, a4=0xbd398.
  The return at 0x2e43434 has v0 = ret(__glDoGet).
- `__glim_GetString` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e434a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e434a0-0x2e43560 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x2e434a0 loads 4 bytes from abs 0x1030.
  The `ld` at 0x2e434ac loads 8 bytes from abs 0x1020.
  The `ld` at 0x2e43514 loads 8 bytes from [0x1020]:8 +0xf60.
  The `ld` at 0x2e43524 loads 8 bytes from [0x1020]:8 +0xf48.
  The `ld` at 0x2e43538 loads 8 bytes from [0x1020]:8 +0xf50.
  The `ld` at 0x2e43540 loads 8 bytes from [0x1020]:8 +0xf58.
  The `jalr` at 0x2e434ec calls __glSetError [0x2e315d0] with a0=0x500, a1=0x1f02, a2=0x1f03, a3=[0x1020]:8.
  The `jalr` at 0x2e4354c calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1020]:8.
  The `beq` branch at 0x2e434bc targets 0x2e43544, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x2e434c8 targets 0x2e43524, is taken when a0 == v0(=0x1f00), and falls through when a0 != v0(=0x1f00).
  The `beq` branch at 0x2e434d0 targets 0x2e43534, is taken when a0 == v1(=0x1f01), and falls through when a0 != v1(=0x1f01).
  The `beq` branch at 0x2e434d8 targets 0x2e4353c, is taken when a0 == a1(=0x1f02), and falls through when a0 != a1(=0x1f02).
  The `beq` branch at 0x2e434e0 targets 0x2e43514, is taken when a0 == a2(=0x1f03), and falls through when a0 != a2(=0x1f03).
  The `beq` branch at 0x2e43534 targets 0x2e43508 and is always taken.
  The `beq` branch at 0x2e4353c targets 0x2e43508 and is always taken.
  The `beq` branch at 0x2e43558 targets 0x2e43508 and is always taken.
  The return at 0x2e43500 has v0 = 0x0.
  The return at 0x2e4350c has v0 = one of [[0x1020]:8+3920]:8, [[0x1020]:8+3928]:8, 0x0.
  The return at 0x2e4351c has v0 = [[0x1020]:8+3936]:8.
  The return at 0x2e4352c has v0 = [[0x1020]:8+3912]:8.
- `__glProcessHistogramArguments` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e436e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e436e0-0x2e43b1c (1084 bytes).
  It occupies 1084 bytes.
  8 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x2e43774, `sw` at 0x2e43808, `sw` at 0x2e4385c.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `sw` at 0x2e43778, `sw` at 0x2e4380c, `sw` at 0x2e43860.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `sw` at 0x2e4377c, `sw` at 0x2e43810, `sw` at 0x2e43864.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0xc, including `sw` at 0x2e43784, `sw` at 0x2e43818, `sw` at 0x2e43868.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x10, including `sw` at 0x2e43788, `sw` at 0x2e4381c, `sw` at 0x2e4386c.
  5 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x14, including `sw` at 0x2e43790, `sw` at 0x2e43824, `sw` at 0x2e43874.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x2e43794, `sw` at 0x2e43830, `sw` at 0x2e43880.
  The `lw` at 0x2e437a0 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `bne` branch at 0x2e436e8 targets 0x2e43754, is taken when a1 < a5(=0x8045) (unsigned), and falls through when a1 >= a5(=0x8045) (unsigned).
  The `beq` branch at 0x2e436f0 targets 0x2e43808, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e436fc targets 0x2e43884, is taken when a1 < a5(=0x8053) (unsigned), and falls through when a1 >= a5(=0x8053) (unsigned).
  The `beq` branch at 0x2e43704 targets 0x2e438dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2e43714 targets 0x2e439c8, is taken when a1 < a5(=0x8058) (unsigned), and falls through when a1 >= a5(=0x8058) (unsigned).
  The `beq` branch at 0x2e4371c targets 0x2e4385c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2e4372c targets 0x2e43afc, is taken when a1 < a5(=0x805a) (unsigned), and falls through when a1 >= a5(=0x805a) (unsigned).
  The `beq` branch at 0x2e43738 targets 0x2e4385c, is taken when a5(=0x805a) >= a1 (unsigned), and falls through when a5(=0x805a) < a1 (unsigned).
  The `bne` branch at 0x2e43744 targets 0x2e439a0, is taken when a1 != t2(=0x805b), and falls through when a1 == t2(=0x805b).
  The `beq` branch at 0x2e4374c targets 0x2e4385c and is always taken.
  The `bne` branch at 0x2e4375c targets 0x2e437f4, is taken when a1 < a5(=0x803c) (unsigned), and falls through when a1 >= a5(=0x803c) (unsigned).
  The `bne` branch at 0x2e43768 targets 0x2e43904, is taken when a5(=0x803c) < a1 (unsigned), and falls through when a5(=0x803c) >= a1 (unsigned).
  The `bltz` branch at 0x2e43798 targets 0x2e43834, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x2e437b8 targets 0x2e4383c, is taken when v1(?) < a0 (unsigned), and falls through when v1(?) >= a0 (unsigned).
  The `beq` branch at 0x2e437c0 targets 0x2e437ec, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x2e437cc targets 0x2e437e4, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x2e437d4 targets 0x2e437e4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2e437e4 targets 0x2e437c8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x2e437f4 targets 0x2e43844, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2e43800 targets 0x2e4396c, is taken when a1 >= 0x190b (unsigned), and falls through when a1 < 0x190b (unsigned).
  The `bgez` branch at 0x2e4382c targets 0x2e437a0, is taken when a0 >= 0 (signed), and falls through when a0 < 0 (signed).
  The `bne` branch at 0x2e43844 targets 0x2e438cc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x2e43850 targets 0x2e43998, is taken when a1 >= 0x1909 (unsigned), and falls through when a1 < 0x1909 (unsigned).
  The `beq` branch at 0x2e4387c targets 0x2e43798 and is always taken.
  The `bne` branch at 0x2e4388c targets 0x2e43944, is taken when a1 < a5(=0x804f) (unsigned), and falls through when a1 >= a5(=0x804f) (unsigned).
  The `beq` branch at 0x2e43894 targets 0x2e438dc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2e438a4 targets 0x2e43aac, is taken when a1 < a5(=0x8051) (unsigned), and falls through when a1 >= a5(=0x8051) (unsigned).
  The `beq` branch at 0x2e438b0 targets 0x2e438dc, is taken when a5(=0x8051) >= a1 (unsigned), and falls through when a5(=0x8051) < a1 (unsigned).
  The `bne` branch at 0x2e438bc targets 0x2e439a0, is taken when a1 != a4(=0x8052), and falls through when a1 == a4(=0x8052).
  The `beq` branch at 0x2e438c4 targets 0x2e438dc and is always taken.
  The `bne` branch at 0x2e438cc targets 0x2e43a74, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x2e438d4 targets 0x2e439a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2e438fc targets 0x2e43798 and is always taken.
  The `bne` branch at 0x2e43908 targets 0x2e439a8, is taken when a1 < a5(=0x8041) (unsigned), and falls through when a1 >= a5(=0x8041) (unsigned).
  The `bne` branch at 0x2e43910 targets 0x2e43a28, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x2e4393c targets 0x2e43798 and is always taken.
  The `bne` branch at 0x2e4394c targets 0x2e439f4, is taken when a1 < a5(=0x8048) (unsigned), and falls through when a1 >= a5(=0x8048) (unsigned).
  The `beq` branch at 0x2e43954 targets 0x2e43808, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e4395c targets 0x2e439a0, is taken when a1 != v1(=0x804e), and falls through when a1 == v1(=0x804e).
  The `beq` branch at 0x2e43964 targets 0x2e438dc and is always taken.
  The `bne` branch at 0x2e43970 targets 0x2e43a18, is taken when a1 < a5(=0x8000) (unsigned), and falls through when a1 >= a5(=0x8000) (unsigned).
  The `beq` branch at 0x2e4397c targets 0x2e4385c, is taken when a5(=0x8000) >= a1 (unsigned), and falls through when a5(=0x8000) < a1 (unsigned).
  The `bne` branch at 0x2e43988 targets 0x2e439a0, is taken when a1 != a7(=0x803b), and falls through when a1 == a7(=0x803b).
  The `beq` branch at 0x2e43990 targets 0x2e43774 and is always taken.
  The `beq` branch at 0x2e43998 targets 0x2e4391c, is taken when a5(=0x1909) == a1, and falls through when a5(=0x1909) != a1.
  The `bne` branch at 0x2e439b0 targets 0x2e43a50, is taken when a1 < a5(=0x803f) (unsigned), and falls through when a1 >= a5(=0x803f) (unsigned).
  The `bne` branch at 0x2e439b8 targets 0x2e43adc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e439c0 targets 0x2e4391c and is always taken.
  The `bne` branch at 0x2e439d0 targets 0x2e43a88, is taken when a1 < a5(=0x8056) (unsigned), and falls through when a1 >= a5(=0x8056) (unsigned).
  The `beq` branch at 0x2e439d8 targets 0x2e4385c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x2e439e4 targets 0x2e439a0, is taken when a1 != t8(=0x8057), and falls through when a1 == t8(=0x8057).
  The `beq` branch at 0x2e439ec targets 0x2e4385c and is always taken.
  The `bne` branch at 0x2e439fc targets 0x2e43abc, is taken when a1 < a5(=0x8047) (unsigned), and falls through when a1 >= a5(=0x8047) (unsigned).
  The `beq` branch at 0x2e43a08 targets 0x2e43808, is taken when a5(=0x8047) >= a1 (unsigned), and falls through when a5(=0x8047) < a1 (unsigned).
  The `beq` branch at 0x2e43a10 targets 0x2e439a0 and is always taken.
  The `bne` branch at 0x2e43a18 targets 0x2e439a0, is taken when a1 != v0(=0x2a10), and falls through when a1 == v0(=0x2a10).
  The `beq` branch at 0x2e43a20 targets 0x2e438dc and is always taken.
  The `bne` branch at 0x2e43a2c targets 0x2e43acc, is taken when a1 < a5(=0x8043) (unsigned), and falls through when a1 >= a5(=0x8043) (unsigned).
  The `beq` branch at 0x2e43a38 targets 0x2e43808, is taken when a5(=0x8043) >= a1 (unsigned), and falls through when a5(=0x8043) < a1 (unsigned).
  The `bne` branch at 0x2e43a40 targets 0x2e439a0, is taken when a1 != a5(=0x8044), and falls through when a1 == a5(=0x8044).
  The `beq` branch at 0x2e43a48 targets 0x2e4380c and is always taken.
  The `bne` branch at 0x2e43a58 targets 0x2e43aec, is taken when a1 < a5(=0x803e) (unsigned), and falls through when a1 >= a5(=0x803e) (unsigned).
  The `bne` branch at 0x2e43a64 targets 0x2e439a0, is taken when a5(=0x803e) < a1 (unsigned), and falls through when a5(=0x803e) >= a1 (unsigned).
  The `beq` branch at 0x2e43a6c targets 0x2e43774 and is always taken.
  The `bne` branch at 0x2e43a78 targets 0x2e439a0, is taken when a5(=0x1906) != a1, and falls through when a5(=0x1906) == a1.
  The `beq` branch at 0x2e43a80 targets 0x2e43778 and is always taken.
  The `bne` branch at 0x2e43a90 targets 0x2e43b0c, is taken when a1 < a5(=0x8055) (unsigned), and falls through when a1 >= a5(=0x8055) (unsigned).
  The `beq` branch at 0x2e43a9c targets 0x2e4385c, is taken when a5(=0x8055) >= a1 (unsigned), and falls through when a5(=0x8055) < a1 (unsigned).
  The `beq` branch at 0x2e43aa4 targets 0x2e439a0 and is always taken.
  The `bne` branch at 0x2e43aac targets 0x2e439a0, is taken when a1 != t2(=0x8050), and falls through when a1 == t2(=0x8050).
  The `beq` branch at 0x2e43ab4 targets 0x2e438dc and is always taken.
  The `bne` branch at 0x2e43abc targets 0x2e439a0, is taken when a1 != t3(=0x8046), and falls through when a1 == t3(=0x8046).
  The `beq` branch at 0x2e43ac4 targets 0x2e4380c and is always taken.
  The `bne` branch at 0x2e43acc targets 0x2e439a0, is taken when a1 != t8(=0x8042), and falls through when a1 == t8(=0x8042).
  The `beq` branch at 0x2e43ad4 targets 0x2e4391c and is always taken.
  The `bne` branch at 0x2e43adc targets 0x2e439a0, is taken when a1 != t9(=0x8040), and falls through when a1 == t9(=0x8040).
  The `beq` branch at 0x2e43ae4 targets 0x2e4391c and is always taken.
  The `bne` branch at 0x2e43aec targets 0x2e439a0, is taken when a1 != at(=0x803d), and falls through when a1 == at(=0x803d).
  The `beq` branch at 0x2e43af4 targets 0x2e43774 and is always taken.
  The `bne` branch at 0x2e43afc targets 0x2e439a0, is taken when a1 != v0(=0x8059), and falls through when a1 == v0(=0x8059).
  The `beq` branch at 0x2e43b04 targets 0x2e4385c and is always taken.
  The `bne` branch at 0x2e43b0c targets 0x2e439a0, is taken when a1 != v1(=0x8054), and falls through when a1 == v1(=0x8054).
  The `beq` branch at 0x2e43b14 targets 0x2e438dc and is always taken.
  The return at 0x2e437dc has v0 = 0x501.
  The return at 0x2e437ec has v0 = 0x0.
  The return at 0x2e43834 has v0 = 0x501.
  The return at 0x2e4383c has v0 = 0x8031.
  The return at 0x2e439a0 has v0 = 0x500.
- `__glInitHistogramStore` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43b20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e43b20-0x2e43be4 (196 bytes).
  It occupies 196 bytes.
  The `sw` at 0x2e43b24 stores 4 bytes to a1 (arg1 at entry) +0x8c.
  The `sw` at 0x2e43b28 stores 4 bytes to a1 (arg1 at entry) +0x88.
  The `sw` at 0x2e43b2c stores 4 bytes to a1 (arg1 at entry) +0x94.
  The `sw` at 0x2e43b30 stores 4 bytes to a1 (arg1 at entry) +0x90.
  The `sw` at 0x2e43b38 stores 4 bytes to a1 (arg1 at entry) +0xa4.
  The `lw` at 0x2e43b40 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `sw` at 0x2e43b4c stores 4 bytes to a1 (arg1 at entry) +0x9c.
  6 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x5c, including `sw` at 0x2e43b90, `sw` at 0x2e43ba4, `sw` at 0x2e43bb4.
  6 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x58, including `sw` at 0x2e43b9c, `sw` at 0x2e43bb0, `sw` at 0x2e43bbc.
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
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e43bf0-0x2e43c78 (136 bytes).
  It occupies 136 bytes.
  The `swc1` at 0x2e43c04 stores 4 bytes to a1 (arg1 at entry) +0xd4.
  The `lwc1` at 0x2e43c08 loads 4 bytes from a0 (arg0 at entry) +0xf2c.
  The `sd` at 0x2e43c0c stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0x2e43c10 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x2e43c14 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x2e43c18 stores 4 bytes to a1 (arg1 at entry) +0xbc.
  The `sw` at 0x2e43c20 stores 4 bytes to a1 (arg1 at entry) +0xc4.
  The `sw` at 0x2e43c34 stores 4 bytes to a1 (arg1 at entry) +0xc8.
  The `sw` at 0x2e43c3c stores 4 bytes to a1 (arg1 at entry) +0xb8.
  The `swc1` at 0x2e43c4c stores 4 bytes to a1 (arg1 at entry) +0xb0.
  The `bgezall` at 0x2e43c48 calls __glInitHistogramStore [0x2e43b20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a7 at entry (arg7), a3=a3 at entry (arg3).
  The `jalr` at 0x2e43c5c calls __glLoadUnpackModes [0x2e067a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x2e43c70 has v0 = ret(__glLoadUnpackModes).
- `__glCheckGetArguments` in `usr/gfx/arch/IP27KONA64/libGLcore.so` at 0x2e43ef0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA64/libGLcore.so`.
  Range: 0x2e43ef0-0x2e44218 (808 bytes).
  It occupies 808 bytes.
  The `jalr` at 0x2e44018 calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?, a5=0x1907.
  The `jalr` at 0x2e4408c calls __glSetError [0x2e315d0] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e440b4 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x2e44140 calls __glSetError [0x2e315d0] with a0=0x500, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x2e43f04 targets 0x2e43f4c, is taken when a0 < 0x1908 (unsigned), and falls through when a0 >= 0x1908 (unsigned).
  The `bne` branch at 0x2e43f10 targets 0x2e43f8c, is taken when a0 < 0x1909 (unsigned), and falls through when a0 >= 0x1909 (unsigned).
  The `bne` branch at 0x2e43f1c targets 0x2e440d0, is taken when a0 < v0(=0x8000) (unsigned), and falls through when a0 >= v0(=0x8000) (unsigned).
  The `beq` branch at 0x2e43f24 targets 0x2e43f8c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2e43f34 targets 0x2e441c0, is taken when a0 < v0(=0x80e1) (unsigned), and falls through when a0 >= v0(=0x80e1) (unsigned).
  The `beq` branch at 0x2e43f3c targets 0x2e43f90, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2e43f44 targets 0x2e440ac and is always taken.
  The `bne` branch at 0x2e43f50 targets 0x2e43f78, is taken when a0 < 0x1905 (unsigned), and falls through when a0 >= 0x1905 (unsigned).
  The `bne` branch at 0x2e43f58 targets 0x2e43f8c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x2e43f60 targets 0x2e4418c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2e43f68 targets 0x2e43f90, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2e43f70 targets 0x2e440ac and is always taken.
  The `bne` branch at 0x2e43f7c targets 0x2e440a8, is taken when a0 < 0x1904 (unsigned), and falls through when a0 >= 0x1904 (unsigned).
  The `beq` branch at 0x2e43f84 targets 0x2e440b0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2e43f94 targets 0x2e43fe0, is taken when a1 < v0(=0x8034) (unsigned), and falls through when a1 >= v0(=0x8034) (unsigned).
  The `beq` branch at 0x2e43f9c targets 0x2e4406c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x2e43fa8 targets 0x2e440f0, is taken when a1 < v0(=0x8364) (unsigned), and falls through when a1 >= v0(=0x8364) (unsigned).
  The `beq` branch at 0x2e43fb0 targets 0x2e4400c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x2e43fc0 targets 0x2e441d0, is taken when a1 < v0(=0x8367) (unsigned), and falls through when a1 >= v0(=0x8367) (unsigned).
  The `beq` branch at 0x2e43fc8 targets 0x2e4406c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2e43fd0 targets 0x2e44070, is taken when a1 == v0(=0x8368), and falls through when a1 != v0(=0x8368).
  The `beq` branch at 0x2e43fd8 targets 0x2e44138 and is always taken.
  The `bne` branch at 0x2e43fe4 targets 0x2e4402c, is taken when a1 < 0x1404 (unsigned), and falls through when a1 >= 0x1404 (unsigned).
  The `bne` branch at 0x2e43fec targets 0x2e44048, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x2e43ff8 targets 0x2e4415c, is taken when a1 < v0(=0x8032) (unsigned), and falls through when a1 >= v0(=0x8032) (unsigned).
  The `bne` branch at 0x2e44000 targets 0x2e441a0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2e4400c targets 0x2e44048, is taken when a0 == a5(=0x1907), and falls through when a0 != a5(=0x1907).
  The `beq` branch at 0x2e44024 targets 0x2e4404c and is always taken.
  The `bne` branch at 0x2e44030 targets 0x2e44118, is taken when a1 < 0x1402 (unsigned), and falls through when a1 >= 0x1402 (unsigned).
  The `bne` branch at 0x2e44038 targets 0x2e44048, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2e44040 targets 0x2e4413c, is taken when a1 != a7(=0x1403), and falls through when a1 == a7(=0x1403).
  The `bne` branch at 0x2e44060 targets 0x2e441f0, is taken when a1 < v0(=0x8036) (unsigned), and falls through when a1 >= v0(=0x8036) (unsigned).
  The `bne` branch at 0x2e44068 targets 0x2e44138, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x2e44070 targets 0x2e44048, is taken when a0 == t2(=0x1908), and falls through when a0 != t2(=0x1908).
  The `beq` branch at 0x2e44078 targets 0x2e44048, is taken when a0 == t3(=0x8000), and falls through when a0 != t3(=0x8000).
  The `beq` branch at 0x2e44080 targets 0x2e44048, is taken when a0 == t8(=0x80e1), and falls through when a0 != t8(=0x80e1).
  The `beq` branch at 0x2e440a8 targets 0x2e43f8c, is taken when a0 == t9(=0x1903), and falls through when a0 != t9(=0x1903).
  The `bne` branch at 0x2e440d4 targets 0x2e4417c, is taken when a0 < 0x190a (unsigned), and falls through when a0 >= 0x190a (unsigned).
  The `bne` branch at 0x2e440e0 targets 0x2e43f90, is taken when a0 < 0x190b (unsigned), and falls through when a0 >= 0x190b (unsigned).
  The `beq` branch at 0x2e440e8 targets 0x2e440ac and is always taken.
  The `bne` branch at 0x2e440f8 targets 0x2e44058, is taken when a1 < v0(=0x8362) (unsigned), and falls through when a1 >= v0(=0x8362) (unsigned).
  The `beq` branch at 0x2e44100 targets 0x2e44008, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2e44108 targets 0x2e4400c, is taken when a1 == a3(=0x8363), and falls through when a1 != a3(=0x8363).
  The `beq` branch at 0x2e44110 targets 0x2e44138 and is always taken.
  The `bne` branch at 0x2e4411c targets 0x2e44134, is taken when a1 < 0x1401 (unsigned), and falls through when a1 >= 0x1401 (unsigned).
  The `bne` branch at 0x2e44124 targets 0x2e4404c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2e4412c targets 0x2e44138 and is always taken.
  The `beq` branch at 0x2e44134 targets 0x2e44048, is taken when a1 == a5(=0x1400), and falls through when a1 != a5(=0x1400).
  The `bne` branch at 0x2e44160 targets 0x2e441b0, is taken when a1 < 0x1406 (unsigned), and falls through when a1 >= 0x1406 (unsigned).
  The `bne` branch at 0x2e4416c targets 0x2e4404c, is taken when a1 < 0x1407 (unsigned), and falls through when a1 >= 0x1407 (unsigned).
  The `beq` branch at 0x2e44174 targets 0x2e44138 and is always taken.
  The `beq` branch at 0x2e4417c targets 0x2e43f90, is taken when a0 == t0(=0x1909), and falls through when a0 != t0(=0x1909).
  The `beq` branch at 0x2e44184 targets 0x2e440ac and is always taken.
  The `beq` branch at 0x2e44190 targets 0x2e43f90, is taken when a0 == t1(=0x1906), and falls through when a0 != t1(=0x1906).
  The `beq` branch at 0x2e44198 targets 0x2e440ac and is always taken.
  The `beq` branch at 0x2e441a0 targets 0x2e44070, is taken when a1 == t2(=0x8033), and falls through when a1 != t2(=0x8033).
  The `beq` branch at 0x2e441a8 targets 0x2e44138 and is always taken.
  The `beq` branch at 0x2e441b0 targets 0x2e4404c, is taken when a1 == t3(=0x1405), and falls through when a1 != t3(=0x1405).
  The `beq` branch at 0x2e441b8 targets 0x2e44138 and is always taken.
  The `beq` branch at 0x2e441c0 targets 0x2e43f90, is taken when a0 == t8(=0x80e0), and falls through when a0 != t8(=0x80e0).
  The `beq` branch at 0x2e441c8 targets 0x2e440ac and is always taken.
  The `bne` branch at 0x2e441d8 targets 0x2e44204, is taken when a1 < v0(=0x8366) (unsigned), and falls through when a1 >= v0(=0x8366) (unsigned).
  The `beq` branch at 0x2e441e0 targets 0x2e44070, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2e441e8 targets 0x2e44138 and is always taken.
  The `beq` branch at 0x2e441f4 targets 0x2e44070, is taken when a1 == v0(=0x8035), and falls through when a1 != v0(=0x8035).
  The `beq` branch at 0x2e441fc targets 0x2e44138 and is always taken.
  The `beq` branch at 0x2e44208 targets 0x2e44070, is taken when a1 == v1(=0x8365), and falls through when a1 != v1(=0x8365).
  The `beq` branch at 0x2e44210 targets 0x2e44138 and is always taken.
  The return at 0x2e44050 has v0 = one of 0x0, 0x1.
  The return at 0x2e440a0 has v0 = 0x1.
  The return at 0x2e440c8 has v0 = 0x1.
  The return at 0x2e44154 has v0 = 0x1.
