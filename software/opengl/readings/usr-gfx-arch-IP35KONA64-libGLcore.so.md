# Readings: `usr/gfx/arch/IP35KONA64/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyViewport` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218a330 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218a330-0x218a368 (56 bytes).
  It occupies 56 bytes.
  The `bgezall` at 0x218a350 calls FindWindowSize [0x218a2c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x218a360 has v0 = ret(FindWindowSize).

- `LoseCurrent` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218a570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218a570-0x218a628 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x218a574 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0x218a598, `lw` at 0x218a5cc.
  The `lw` at 0x218a5a8 loads 4 bytes from a0 (arg0 at entry) +0x150.
  The `sd` at 0x218a5d0 stores 8 bytes to abs 0x1020.
  The `lw` at 0x218a5d4 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `sw` at 0x218a5e4 stores 4 bytes to a0 (arg0 at entry) +0xdd0.
  The `lw` at 0x218a5e8 loads 4 bytes from abs 0x1048.
  The `sw` at 0x218a5ec stores 4 bytes to a0 (arg0 at entry) +0x15b8.
  The `ld` at 0x218a5f0 loads 8 bytes from abs 0x1050.
  The `sd` at 0x218a5f4 stores 8 bytes to a0 (arg0 at entry) +0x15c0.
  The `ld` at 0x218a5f8 loads 8 bytes from abs 0x1058.
  The `sd` at 0x218a5fc stores 8 bytes to a0 (arg0 at entry) +0x15c8.
  The `lw` at 0x218a600 loads 4 bytes from abs 0x1060.
  The `sw` at 0x218a604 stores 4 bytes to a0 (arg0 at entry) +0x15d0.
  The `jalr` at 0x218a5c0 calls __glLoseCurrentBuffers [0x2211c10] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x218a590 targets 0x218a614, is taken when v0(=[a0+3540]) != v1(=0x1c00), and falls through when v0(=[a0+3540]) == v1(=0x1c00).
  The `beq` branch at 0x218a5a0 targets 0x218a618, is taken when a0(=[0x1030]) == v0(=0x1), and falls through when a0(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x218a5b0 targets 0x218a5d0, is taken when (v1(=[a0+336]) & 0x4) == 0, and falls through when (v1(=[a0+336]) & 0x4) != 0.
  The `beq` branch at 0x218a5e0 targets 0x218a608, is taken when a1(=[a0+5440]) == 0, and falls through when a1(=[a0+5440]) != 0.
  The return at 0x218a60c has v0 = 0x1.
  The return at 0x218a620 has v0 = 0x0.

- `MakeCurrent` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218b8f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218b8f0-0x218b95c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x218b904 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x218b920 loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `jalr` at 0x218b918 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x218b928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezl` branch at 0x218b954 targets 0x218a910 and is always taken.

- `__glKonExecuteLDMA` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218cf80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218cf80-0x218cfa0 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x218cf80 loads 8 bytes from a1 (arg1 at entry) +0x28.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x218cf88, `sw` at 0x218cf94, `sw` at 0x218cf9c.
  The `lw` at 0x218cf8c loads 4 bytes from [a1+40]:8 +0x8.
  The `lw` at 0x218cf90 loads 4 bytes from [a1+40]:8 +0x4.
  The return at 0x218cf98 has v0 = [[a1+40]:8+4].

- `__glKonExecuteLDMAn` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218cfa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218cfa0-0x218d08c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x218cfa0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `ld` at 0x218cfb0 loads 8 bytes from a1 (arg1 at entry) +0x28.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x218cfd8, `sw` at 0x218cfdc, `sw` at 0x218cff8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x218cfe8, `lw` at 0x218d020, `lw` at 0x218d028.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x218cfec, `ld` at 0x218d024, `ld` at 0x218d02c.
  The `beq` branch at 0x218cfe0 targets 0x218d008, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `bne` branch at 0x218d000 targets 0x218cfe8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x218d00c targets 0x218d070, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x218d064 targets 0x218d020, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x218d07c targets 0x218cfc0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The return at 0x218d084 has v0 = ?.

- `__glKonExecuteIDMA` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218d090 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218d090-0x218d144 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x218d090 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `ld` at 0x218d0ac loads 8 bytes from a1 (arg1 at entry) +0x28.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x218d0b0, `lw` at 0x218d0e0, `lw` at 0x218d0e8.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x218d0b4, `ld` at 0x218d0e4, `ld` at 0x218d0ec.
  15 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x218d0b8, `sw` at 0x218d0c4, `sw` at 0x218d0d0.
  The `beq` branch at 0x218d0a8 targets 0x218d0d4, is taken when (a5(?) & 0x3) == 0, and falls through when (a5(?) & 0x3) != 0.
  The `bne` branch at 0x218d0cc targets 0x218d0b0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x218d0d8 targets 0x218d13c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x218d134 targets 0x218d0e0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x218d13c has v0 = ?.

- `__glKonExecuteIDMAn` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218d150 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218d150-0x218d23c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x218d150 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `ld` at 0x218d160 loads 8 bytes from a1 (arg1 at entry) +0x28.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x218d188, `sw` at 0x218d18c, `sw` at 0x218d1a8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x218d198, `lw` at 0x218d1d0, `lw` at 0x218d1d8.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x218d19c, `ld` at 0x218d1d4, `ld` at 0x218d1dc.
  The `beq` branch at 0x218d190 targets 0x218d1b8, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `bne` branch at 0x218d1b0 targets 0x218d198, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x218d1bc targets 0x218d220, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x218d214 targets 0x218d1d0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x218d22c targets 0x218d170, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The return at 0x218d234 has v0 = ?.

- `__glkonim_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218fd70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x218fd70-0x218fd88 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x218fd74, `sw` at 0x218fd78.
  The `lw` at 0x218fd84 loads 4 bytes from abs 0x10100.
  The return at 0x218fd80 has v0 = 0xc7.

### `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x218fd90

`__glkonim_AlphaFunc` is an 80-byte leaf with no calls. It compares f13 with f0 using c.lt.s (at 0x218fd94) and branches on the result (0x218fdac). When f13 < f0 it stores two words and one single float to abs 0x4000 (0x218fdb4, 0x218fdb8, 0x218fdc0) and returns at 0x218fdbc. Otherwise it loads a float at 0x218fdc4 from an address the facts do not resolve, then stores two words and one single float to abs 0x4000 (0x218fdcc, 0x218fdd0, 0x218fddc) and returns at 0x218fdd8. 0x4000 is the same address the vertex and texture entries write to. Both returns leave v0 at 0x150a08, which looks like a leftover constant rather than a result. The name suggests an alpha test function and reference value, which fits the stores, but the comparison operands and the meaning of the stored values are not established.

Grade: inferred.

Reviewed: 2026-11-12

- `__glKon_ioctl` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x219fad0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x219fad0-0x219fb0c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x219faf8 loads 4 bytes from a0 (arg0 at entry) +0x9ea8.
  The `jalr` at 0x219faf4 calls ioctl with a0=[a0+40616], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x9ea8, a4=0x140cc8.
  The return at 0x219fb04 has v0 = ret(ioctl).

- `__glKonSendMapSpec1D` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21c04d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21c04d0-0x21c051c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x21c04d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x21c04e0 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  6 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x21c04e4, `sw` at 0x21c04f0, `sw` at 0x21c04fc.
  The `lw` at 0x21c0508 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `beq` branch at 0x21c04d0 targets 0x21c04f4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x21c04dc targets 0x21c0508, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x21c04f4 targets 0x21c0514, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x21c050c targets 0x21c04e4 and is always taken.
  The `beq` branch at 0x21c0514 targets 0x21c04fc and is always taken.
  The return at 0x21c04ec has v0 = [a0+4].
  The return at 0x21c0500 has v0 = ?.

- `__glKonSendMapSpec2D` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21c0520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21c0520-0x21c0564 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x21c0528 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x21c052c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x21c0530 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x21c0534 loads 4 bytes from a0 (arg0 at entry) +0x8.
  8 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x21c0538, `sw` at 0x21c053c, `sw` at 0x21c0540.
  The `beq` branch at 0x21c0520 targets 0x21c0550, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0x21c0548 has v0 = [a0+4].
  The return at 0x21c055c has v0 = ?.

- `__glKonSendMapData1D` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21c0570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21c0570-0x21c0618 (168 bytes).
  It occupies 168 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x21c0578, `sw` at 0x21c0594, `sw` at 0x21c059c.
  The `lwc1` at 0x21c057c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0x21c0580 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0x21c0584 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x21c0588 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x21c058c loads 4 bytes from a0 (arg0 at entry) +0x0.
  7 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0x21c05a0, `swc1` at 0x21c05a4, `swc1` at 0x21c05a8.
  The `ld` at 0x21c05b4 loads 8 bytes from a0 (arg0 at entry) +0x30.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21c05c0, `lwc1` at 0x21c05d4, `lwc1` at 0x21c05e8.
  The `beq` branch at 0x21c0570 targets 0x21c0610, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x21c05ac targets 0x21c0610, is taken when a4(=[a0+44]) <= 0 (signed), and falls through when a4(=[a0+44]) > 0 (signed).
  The `beq` branch at 0x21c05cc targets 0x21c0610, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0x21c05e0 targets 0x21c0610, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0x21c05f4 targets 0x21c0610, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `bne` branch at 0x21c0608 targets 0x21c05bc, is taken when a2(?) < a4(=[a0+44]) (signed), and falls through when a2(?) >= a4(=[a0+44]) (signed).
  The return at 0x21c0610 has v0 = one of ?, [a0+44]+5.

- `__glKonSendMapData2D` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21c0620 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21c0620-0x21c06e0 (192 bytes).
  It occupies 192 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0x21c0628, `sw` at 0x21c0650, `sw` at 0x21c0658.
  The `lwc1` at 0x21c062c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0x21c0630 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwc1` at 0x21c0634 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lwc1` at 0x21c0638 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0x21c063c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0x21c0640 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x21c0644 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x21c0648 loads 4 bytes from a0 (arg0 at entry) +0x0.
  10 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0x21c065c, `swc1` at 0x21c0660, `swc1` at 0x21c0664.
  The `ld` at 0x21c067c loads 8 bytes from a0 (arg0 at entry) +0x30.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21c0688, `lwc1` at 0x21c069c, `lwc1` at 0x21c06b0.
  The `beq` branch at 0x21c0620 targets 0x21c06d8, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x21c0674 targets 0x21c06d8, is taken when a4(=[a0+44]) <= 0 (signed), and falls through when a4(=[a0+44]) > 0 (signed).
  The `beq` branch at 0x21c0694 targets 0x21c06d8, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0x21c06a8 targets 0x21c06d8, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0x21c06bc targets 0x21c06d8, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `bne` branch at 0x21c06d0 targets 0x21c0684, is taken when a2(?) < a4(=[a0+44]) (signed), and falls through when a2(?) >= a4(=[a0+44]) (signed).
  The return at 0x21c06d8 has v0 = one of ?, [a0+44]+8.

- `EramAlloc` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21c3cc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21c3cc0-0x21c3d74 (180 bytes).
  It occupies 180 bytes.
  The `jalr` at 0x21c3cec calls __glkon_mem_free [0x218f9e0] with a0=0x2, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=a3 at entry (arg3).
  The `jalr` at 0x21c3d2c calls __glkon_mem_alloc [0x218f920] with a0=0x2, a1=a0 at entry (arg0), a2=0x0, a3=(a3 << 0x2), a4=(a4 << 0x2), a7=a3 at entry (arg3).
  The `jalr` at 0x21c3d3c calls __glSetError [0x22115d0] with a0=0x505, a1=?, a2=?, a3=?.
  The `beq` branch at 0x21c3ccc targets 0x21c3d64, is taken when a2 == a3, and falls through when a2 != a3.
  The `beq` branch at 0x21c3cd8 targets 0x21c3d0c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x21c3cf4 targets 0x21c3d0c, is taken when v0(=ret(__glkon_mem_free)) == 0, and falls through when v0(=ret(__glkon_mem_free)) != 0.
  The `beq` branch at 0x21c3d0c targets 0x21c3d58, is taken when a7(=a3) == 0, and falls through when a7(=a3) != 0.
  The `beq` branch at 0x21c3d34 targets 0x21c3d54, is taken when v0(=ret(__glkon_mem_alloc)) == 0, and falls through when v0(=ret(__glkon_mem_alloc)) != 0.
  The return at 0x21c3d04 has v0 = 0x1.
  The return at 0x21c3d4c has v0 = 0x1.
  The return at 0x21c3d5c has v0 = 0x0.
  The return at 0x21c3d6c has v0 = 0x0.

- `CopyVertex` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21cbb10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21cbb10-0x21cbb74 (100 bytes).
  It occupies 100 bytes.
  The `lwc1` at 0x21cbb34 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x21cbb40 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21cbb50, `lwc1` at 0x21cbb5c.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21cbb58, `swc1` at 0x21cbb68.
  The `blez` branch at 0x21cbb18 targets 0x21cbb6c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x21cbb2c targets 0x21cbb44, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x21cbb48 targets 0x21cbb6c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x21cbb64 targets 0x21cbb50, is taken when a0(?) != a4(=((a0 << 0x2) + a1)), and falls through when a0(?) == a4(=((a0 << 0x2) + a1)).
  The return at 0x21cbb6c has v0 = ?.

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

- `Clear` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21fec90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21fec90-0x21fefc4 (820 bytes).
  It occupies 820 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x21feca4, `ld` at 0x21fefc0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x21fecb4, `ld` at 0x21fefb8.
  The `lw` at 0x21fecc0 loads 4 bytes from [a0]:8 +0x951c.
  The `lw` at 0x21feccc loads 4 bytes from [a0]:8 +0x9514.
  The `lw` at 0x21fecd8 loads 4 bytes from [a0]:8 +0x9510.
  The `lw` at 0x21fecdc loads 4 bytes from [a0]:8 +0x9518.
  The `lwc1` at 0x21fece0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0x21fece4 loads 4 bytes from [a0]:8 +0x9a30.
  The `lwc1` at 0x21fece8 loads 4 bytes from [a0]:8 +0x77c.
  The `lwc1` at 0x21fecec loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0x21fecf0 loads 4 bytes from [a0]:8 +0x9a10.
  The `lwc1` at 0x21fecf4 loads 4 bytes from [a0]:8 +0x778.
  The `lwc1` at 0x21fecf8 loads 4 bytes from [a0]:8 +0x9a0c.
  The `lw` at 0x21fecfc loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x21fed00 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0x21fed08 loads 4 bytes from [a0]:8 +0x774.
  The `lwc1` at 0x21fed14 loads 4 bytes from [a0]:8 +0x9a08.
  The `lwc1` at 0x21fed20 loads 4 bytes from [a0]:8 +0x770.
  The `lwc1` at 0x21fed28 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lwc1` at 0x21fed30 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x21fed6c loads 4 bytes from [a0]:8 +0xfb0.
  84 such `sh` accesses store 2 bytes to ?, including `sh` at 0x21fedb4, `sh` at 0x21fedb8, `sh` at 0x21fedbc.
  The `ld` at 0x21fef90 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x21fefa4 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x21fecd4 targets 0x21fef90, is taken when t0(=[a0+24]:8) == 0, and falls through when t0(=[a0+24]:8) != 0.
  The `beq` branch at 0x21fed90 targets 0x21fef74, is taken when s0(=[[a0]:8+38164]) >= s1(=[[a0]:8+38172]) (signed), and falls through when s0(=[[a0]:8+38164]) < s1(=[[a0]:8+38172]) (signed).
  The `beq` branch at 0x21feda4 targets 0x21fef54 and is always taken.
  The `bne` branch at 0x21fedf8 targets 0x21fedb0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x21fee00 targets 0x21fef1c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x21fef14 targets 0x21fee10, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `bltz` branch at 0x21fef20 targets 0x21fef4c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x21fef44 targets 0x21fef30, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `beq` branch at 0x21fef4c targets 0x21fef74, is taken when s0(?) == s1(=[[a0]:8+38172]), and falls through when s0(?) != s1(=[[a0]:8+38172]).
  The `bltz` branch at 0x21fef54 targets 0x21fef1c, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bne` branch at 0x21fef64 targets 0x21fedb0, is taken when (t1(?) & 0x3) != 0, and falls through when (t1(?) & 0x3) == 0.
  The `beq` branch at 0x21fef6c targets 0x21fee00 and is always taken.
  The `beq` branch at 0x21fefbc targets 0x21fecdc and is always taken.
  The return at 0x21fef88 has v0 = ?.
  The instructions from 0x21fedac to 0x21fedac are not reached by any path from the entry, and their branches are not listed.

- `Pick` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x21fefd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x21fefd0-0x21fefd8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x21fefd0 has v0 = ?.

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

- `__glDoBlendMax` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22087a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22087a0-0x220880c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x22087a0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22087a4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `swc1` at 0x22087b4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x22087b8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22087bc loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x22087cc stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x22087d0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x22087d4 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x22087e4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x22087e8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x22087ec loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2208800 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0x22087ac targets 0x22087b8, is taken when not (f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22087a8)), and falls through when f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22087a8).
  The `bc1f` branch at 0x22087c4 targets 0x22087d0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x22087dc targets 0x22087e8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x22087f4 targets 0x2208804, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x22087fc has v0 = ?.
  The return at 0x2208804 has v0 = ?.

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

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2211840-0x2211960 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x2211848 stores 4 bytes to a0 (arg0 at entry) +0xfdc.
  The `sw` at 0x2211854 stores 4 bytes to a0 (arg0 at entry) +0xfd8.
  The `ld` at 0x2211860 loads 8 bytes from a0 (arg0 at entry) +0x9968.
  The `ld` at 0x2211870 loads 8 bytes from [a0+39272]:8 +0x58.
  The `lbu` at 0x2211894 loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x22118a0 loads 8 bytes from a0 (arg0 at entry) +0x9970.
  The `ld` at 0x22118a4 loads 8 bytes from [a0+39280]:8 +0x58.
  The `lbu` at 0x22118b4 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x22118c0 loads 8 bytes from a0 (arg0 at entry) +0x9de0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9, including `lbu` at 0x22118cc, `lbu` at 0x221195c.
  The `ld` at 0x22118d8 loads 8 bytes from a0 (arg0 at entry) +0x9d50.
  The `lbu` at 0x22118f0 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x22118fc loads 8 bytes from a0 (arg0 at entry) +0x9c78.
  The `ld` at 0x2211914 loads 8 bytes from a0 (arg0 at entry) +0x4850.
  The `ld` at 0x2211940 loads 8 bytes from a0 (arg0 at entry) +0x9e20.
  The `jalr` at 0x221188c calls (unknown callee) with a0=[a0+39272]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22118ac calls (unknown callee) with a0=[a0+39280]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x22118e8 calls (unknown callee) with a0=a0+40184, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x221190c calls (unknown callee) with a0=a0+39968, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x2211924 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2211950 calls (unknown callee) with a0=a0+40392, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x2211898 targets 0x22118b4, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x22118b8 targets 0x22118cc, is taken when t9(=[a0+3560]:1) == 0, and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` branch at 0x22118c4 targets 0x2211940, is taken when ra(=[a0+40416]:8) != 0, and falls through when ra(=[a0+40416]:8) == 0.
  The `beq` branch at 0x22118d0 targets 0x22118f0, is taken when at(=[a0+3561]:1) == 0, and falls through when at(=[a0+3561]:1) != 0.
  The `beq` branch at 0x22118f4 targets 0x2211914, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x2211958 targets 0x22118d0 and is always taken.
  The return at 0x2211938 has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2211960-0x221196c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x2211960 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x2211968 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x2211964 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2211970 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2211970-0x2211a44 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x2211984 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x22119b0 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `lw` at 0x22119b4 loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lbu` at 0x22119d0 loads 1 byte from a0 (arg0 at entry) +0xf20.
  The `lw` at 0x22119e8 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lw` at 0x22119f0 loads 4 bytes from a0 (arg0 at entry) +0xfe4.
  The `ld` at 0x2211a24 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `jalr` at 0x22119a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x22119c8 calls __glChangeWindowSize [0x2211840] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x2211a14 calls __glChangeReadWindowSize [0x2211960] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x2211a30 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0x22119b8 targets 0x22119c4, is taken when v0(=[a0+4056]) != a1(?), and falls through when v0(=[a0+4056]) == a1(?).
  The `beq` branch at 0x22119c0 targets 0x22119d0, is taken when v1(=[a0+4060]) == a2(?), and falls through when v1(=[a0+4060]) != a2(?).
  The `beq` branch at 0x22119d4 targets 0x2211a24, is taken when a0(=[a0+3872]:1) == 0, and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` branch at 0x22119ec targets 0x2211a10, is taken when a3(=[a0+4064]) != a1(?), and falls through when a3(=[a0+4064]) == a1(?).
  The `bne` branch at 0x22119f4 targets 0x2211a14, is taken when a4(=[a0+4068]) != a2(?), and falls through when a4(=[a0+4068]) == a2(?).
  The `beq` branch at 0x2211a1c targets 0x2211a00 and is always taken.
  The `beq` branch at 0x2211a3c targets 0x22119e8 and is always taken.
  The return at 0x2211a08 has v0 = one of ?, ret(__glChangeReadWindowSize).

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

- `Resize` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2214ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2214ca0-0x2214ce8 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x2214cd8 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `jalr` at 0x2214cc4 calls __glResizeBuffer [0x220ac40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2214ce0 has v0 = 0x1.

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

- `__glim_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x221aff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x221aff0-0x221b048 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x221aff4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x221aff8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x221b018 loads 8 bytes from [0x1020]:8 +0x4728.
  The `jalr` at 0x221b01c calls (unknown callee) with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x221b038 calls __glSetError [0x22115d0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x221b010 targets 0x221b034, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x221b040 targets 0x221b028 and is always taken.
  The return at 0x221b02c has v0 = one of ret(?), ret(__glSetError).

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

- `Coverage` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x223b1b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x223b1b0-0x223b300 (336 bytes).
  It occupies 336 bytes.
  The `bc1f` branch at 0x223b1f0 targets 0x223b1fc, is taken when not (f9 <= f5 (c.le.s at 0x223b1e8)), and falls through when f9 <= f5 (c.le.s at 0x223b1e8).
  The `bc1f` branch at 0x223b200 targets 0x223b20c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x223b20c targets 0x223b218, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x223b218 targets 0x223b224, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x223b230 targets 0x223b23c, is taken when not (f9 <= f5 (c.le.s at 0x223b22c)), and falls through when f9 <= f5 (c.le.s at 0x223b22c).
  The `bc1f` branch at 0x223b240 targets 0x223b24c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x223b250 targets 0x223b25c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x223b260 targets 0x223b26c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x223b27c targets 0x223b288, is taken when not (f9 <= f5 (c.le.s at 0x223b274)), and falls through when f9 <= f5 (c.le.s at 0x223b274).
  The `bc1f` branch at 0x223b28c targets 0x223b298, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x223b29c targets 0x223b2a8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x223b2a8 targets 0x223b2b4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x223b2b8 targets 0x223b2c4, is taken when not (f9 <= f5 (c.le.s at 0x223b2b4)), and falls through when f9 <= f5 (c.le.s at 0x223b2b4).
  The `bc1f` branch at 0x223b2c8 targets 0x223b2d4, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x223b2d8 targets 0x223b2e4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x223b2e8 targets 0x223b2f8, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x223b2f0 has v0 = ?.
  The return at 0x223b2f8 has v0 = ?.

- `SetInitialParameters` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x223d780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x223d780-0x223dd1c (1436 bytes).
  It occupies 1436 bytes.
  The `lw` at 0x223d790 loads 4 bytes from a0 (arg0 at entry) +0x96ec.
  The `lw` at 0x223d794 loads 4 bytes from a0 (arg0 at entry) +0x96e8.
  The `lw` at 0x223d7ac loads 4 bytes from a0 (arg0 at entry) +0x9814.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x977c, including `lwc1` at 0x223d7ec, `lwc1` at 0x223d9d0, `lwc1` at 0x223dcbc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x978c, including `lwc1` at 0x223d7f0, `lwc1` at 0x223d9d4, `lwc1` at 0x223dcc0.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x223d7f4, `lwc1` at 0x223d9d8, `lwc1` at 0x223dcc4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9790, including `lwc1` at 0x223d804, `lwc1` at 0x223d9e8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9780, including `lwc1` at 0x223d808, `lwc1` at 0x223d9ec.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9730, including `swc1` at 0x223d80c, `swc1` at 0x223d9f0, `swc1` at 0x223dce4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x975c, including `swc1` at 0x223d810, `swc1` at 0x223d9f4, `swc1` at 0x223dcd4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x976c, including `swc1` at 0x223d818, `swc1` at 0x223d9fc, `swc1` at 0x223dcdc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x223d81c, `lwc1` at 0x223da00.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9794, including `lwc1` at 0x223d82c, `lwc1` at 0x223da10.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9784, including `lwc1` at 0x223d830, `lwc1` at 0x223da14.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9760, including `swc1` at 0x223d834, `swc1` at 0x223da1c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9734, including `swc1` at 0x223d838, `swc1` at 0x223da18.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9770, including `swc1` at 0x223d840, `swc1` at 0x223da24.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x223d844, `lwc1` at 0x223da28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9798, including `lwc1` at 0x223d854, `lwc1` at 0x223da38.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9788, including `lwc1` at 0x223d858, `lwc1` at 0x223da3c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9764, including `swc1` at 0x223d85c, `swc1` at 0x223da44.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9738, including `swc1` at 0x223d860, `swc1` at 0x223da40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9774, including `swc1` at 0x223d868, `swc1` at 0x223da4c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x223d870, `lwc1` at 0x223da54.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9768, including `swc1` at 0x223d87c, `swc1` at 0x223da60.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9778, including `swc1` at 0x223d884, `swc1` at 0x223da68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x973c, including `swc1` at 0x223d888, `swc1` at 0x223da6c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x94, including `lwc1` at 0x223d898, `lwc1` at 0x223da7c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0x223d89c, `lwc1` at 0x223da80.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97dc, including `lwc1` at 0x223d8a0, `lwc1` at 0x223da84.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f0, including `lwc1` at 0x223d8a4, `lwc1` at 0x223da88.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b4, including `swc1` at 0x223d8b8, `swc1` at 0x223daa0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9740, including `swc1` at 0x223d8bc, `swc1` at 0x223da9c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97c8, including `swc1` at 0x223d8c4, `swc1` at 0x223daa8.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0x223d8c8, `lwc1` at 0x223daac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e0, including `lwc1` at 0x223d8cc, `lwc1` at 0x223dab0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f4, including `lwc1` at 0x223d8d0, `lwc1` at 0x223dab4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b8, including `swc1` at 0x223d8e4, `swc1` at 0x223dacc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9744, including `swc1` at 0x223d8e8, `swc1` at 0x223dac8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97cc, including `swc1` at 0x223d8f0, `swc1` at 0x223dad4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lwc1` at 0x223d8f4, `lwc1` at 0x223dad8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e4, including `lwc1` at 0x223d8f8, `lwc1` at 0x223dadc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f8, including `lwc1` at 0x223d8fc, `lwc1` at 0x223dae0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97bc, including `swc1` at 0x223d910, `swc1` at 0x223daf8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9748, including `swc1` at 0x223d914, `swc1` at 0x223daf4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97d0, including `swc1` at 0x223d91c, `swc1` at 0x223db00.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lwc1` at 0x223d920, `lwc1` at 0x223db04.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e8, including `lwc1` at 0x223d924, `lwc1` at 0x223db08.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97fc, including `lwc1` at 0x223d928, `lwc1` at 0x223db0c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9800, including `lwc1` at 0x223d93c, `lwc1` at 0x223db20.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97ec, including `lwc1` at 0x223d940, `lwc1` at 0x223db24.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97c0, including `swc1` at 0x223d944, `swc1` at 0x223db2c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x974c, including `swc1` at 0x223d948, `swc1` at 0x223db28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97d4, including `swc1` at 0x223d950, `swc1` at 0x223db34.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lwc1` at 0x223d958, `lwc1` at 0x223db3c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97c4, including `swc1` at 0x223d964, `swc1` at 0x223db48.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97d8, including `swc1` at 0x223d96c, `swc1` at 0x223db50.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `swc1` at 0x223d970, `swc1` at 0x223db54.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x223d97c, `lw` at 0x223db60.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97ac, including `lwc1` at 0x223d9b0, `lwc1` at 0x223db94, `lwc1` at 0x223dba8.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97b0, including `lwc1` at 0x223d9b4, `lwc1` at 0x223db98, `lwc1` at 0x223dba4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x972c, including `sw` at 0x223d9bc, `sw` at 0x223dba0, `sw` at 0x223dbc0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x90, including `lwc1` at 0x223dbac, `lwc1` at 0x223dc28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x979c, including `swc1` at 0x223dbd0, `swc1` at 0x223dc4c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a0, including `swc1` at 0x223dbd8, `swc1` at 0x223dc54.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9810, including `lwc1` at 0x223dbe4, `lwc1` at 0x223dc60.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x980c, including `lwc1` at 0x223dbe8, `lwc1` at 0x223dc64.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9804, including `swc1` at 0x223dc04, `swc1` at 0x223dc80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9808, including `swc1` at 0x223dc0c, `swc1` at 0x223dc88.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9754, including `swc1` at 0x223dc10, `swc1` at 0x223dc8c.
  The `bgezall` at 0x223d99c calls __glPolygonOffsetZ [0x223fd50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bgezall` at 0x223db80 calls __glPolygonOffsetZ [0x223fd50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bc1f` branch at 0x223d7d4 targets 0x223d9c0, is taken when not (f24 < f0 (c.lt.s at 0x223d7b0)), and falls through when f24 < f0 (c.lt.s at 0x223d7b0).
  The `beq` branch at 0x223d7dc targets 0x223dcb4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x223d7e4 targets 0x223d890, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x223d890 targets 0x223d974, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x223d974 targets 0x223dbdc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0x223d984 targets 0x223dba4, is taken when t9(=([a0+2056] << 0x27)) >= 0 (signed), and falls through when t9(=([a0+2056] << 0x27)) < 0 (signed).
  The `beq` branch at 0x223d9b8 targets 0x223dbc4 and is always taken.
  The `beq` branch at 0x223d9c0 targets 0x223dce8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x223d9c8 targets 0x223da74, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x223da74 targets 0x223db58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x223db58 targets 0x223dc58, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0x223db68 targets 0x223dc20, is taken when v0(=([a0+2056] << 0x27)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x27)) < 0 (signed).
  The `beq` branch at 0x223db9c targets 0x223dc40 and is always taken.
  The `beq` branch at 0x223dbdc targets 0x223dc9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x223dc58 targets 0x223dc9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x223dcb4 targets 0x223d974, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x223dce0 targets 0x223d974 and is always taken.
  The `beq` branch at 0x223dce8 targets 0x223db58, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x223dd14 targets 0x223db58 and is always taken.
  The return at 0x223dc18 has v0 = ?.
  The return at 0x223dc94 has v0 = ?.
  The return at 0x223dcac has v0 = ?.

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

- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x224fbe0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x224fbe0-0x224fcc8 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x224fbf8, `lwc1` at 0x224fbfc, `lwc1` at 0x224fc40.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x224fc24, `swc1` at 0x224fc58, `swc1` at 0x224fc74.
  The `blez` branch at 0x224fbe0 targets 0x224fcc0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x224fbf0 targets 0x224fc28, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x224fc20 targets 0x224fbf8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x224fc2c targets 0x224fcc0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x224fcb8 targets 0x224fc40, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x224fcc0 has v0 = ?.

- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x224fcd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x224fcd0-0x224fde8 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x224fcf0, `lwc1` at 0x224fcf4, `lwc1` at 0x224fd40.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x224fd24, `swc1` at 0x224fd60, `swc1` at 0x224fd84.
  The `blez` branch at 0x224fcd0 targets 0x224fde0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x224fce8 targets 0x224fd28, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0x224fd20 targets 0x224fcf0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x224fd2c targets 0x224fde0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x224fdd8 targets 0x224fd40, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x224fde0 has v0 = ?.

- `__glReCompute2DMatrix` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227c4c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227c4c0-0x227c574 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0x227c4c0, `lw` at 0x227c560.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7b8, including `lwc1` at 0x227c4e0, `lwc1` at 0x227c500, `lwc1` at 0x227c528.
  The `lwc1` at 0x227c4e4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x227c4ec stores 4 bytes to a0 (arg0 at entry) +0x9540.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7c0, including `lwc1` at 0x227c4f0, `lwc1` at 0x227c510, `lwc1` at 0x227c53c.
  The `lwc1` at 0x227c4f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x227c4fc stores 4 bytes to a0 (arg0 at entry) +0x9544.
  The `lwc1` at 0x227c504 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0x227c50c stores 4 bytes to a0 (arg0 at entry) +0x9550.
  The `lwc1` at 0x227c514 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `swc1` at 0x227c51c stores 4 bytes to a0 (arg0 at entry) +0x9554.
  The `lwc1` at 0x227c520 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0x227c524 stores 4 bytes to a0 (arg0 at entry) +0x9568.
  The `lwc1` at 0x227c52c loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0x227c530 loads 4 bytes from a0 (arg0 at entry) +0x7bc.
  The `swc1` at 0x227c538 stores 4 bytes to a0 (arg0 at entry) +0x9570.
  The `lwc1` at 0x227c540 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0x227c544 loads 4 bytes from a0 (arg0 at entry) +0x7c4.
  The `lwc1` at 0x227c54c loads 4 bytes from abs 0x22e0778.
  The `swc1` at 0x227c550 stores 4 bytes to a0 (arg0 at entry) +0x9574.
  The `lwc1` at 0x227c554 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0x227c558 stores 4 bytes to a0 (arg0 at entry) +0x957c.
  The `swc1` at 0x227c55c stores 4 bytes to a0 (arg0 at entry) +0x9578.
  The `sw` at 0x227c568 stores 4 bytes to a0 (arg0 at entry) +0x9580.
  The `bne` branch at 0x227c4d8 targets 0x227c56c, is taken when v1(=[a1+64]) < 0x2 (unsigned), and falls through when v1(=[a1+64]) >= 0x2 (unsigned).
  The return at 0x227c564 has v0 = 0x642d8.
  The return at 0x227c56c has v0 = 0x642d8.

- `Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227c8a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227c8a0-0x227c8a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x227c8a0 has v0 = ?.

- `Store_8` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227d3f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227d3f0-0x227d56c (380 bytes).
  It occupies 380 bytes.
  The `ld` at 0x227d3f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x227d3f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x227d3f8 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x227d3fc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x227d414 loads 4 bytes from [a0]:8 +0x80c.
  The `ld` at 0x227d424 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x227d430 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x227d434 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x227d448 loads 4 bytes from [a0]:8 +0xfb0.
  The `lb` at 0x227d480 loads 1 byte from table(0x22d25f0) +0x0.
  The `ld` at 0x227d4b0 loads 8 bytes from [a0]:8 +0x4d20.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x227d4d4, `lwc1` at 0x227d4d8.
  The `lbu` at 0x227d4fc loads 1 byte from ?.
  The `lw` at 0x227d508 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x227d510 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x227d518 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x227d520 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x227d528 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sb` at 0x227d54c stores 1 byte to ?.
  The `lwc1` at 0x227d560 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0x227d568 loads 4 bytes from [a0]:8 +0xf28.
  The `jalr` at 0x227d4bc calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64, a4=[[a0]:8+2056], a5=[a0]:8, a6=[a1], a7=[a1+4].
  The `beq` branch at 0x227d45c targets 0x227d564, is taken when (a4(=[[a0]:8+2056]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2056]) & 0x8) != 0.
  The `bne` branch at 0x227d4a0 targets 0x227d4b0, is taken when (a4(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (a4(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x227d4a8 targets 0x227d55c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x227d55c targets 0x227d4d0 and is always taken.
  The `beq` branch at 0x227d564 targets 0x227d498 and is always taken.
  The return at 0x227d554 has v0 = ?.

- `Store_16` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227d570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227d570-0x227d6f8 (392 bytes).
  It occupies 392 bytes.
  The `ld` at 0x227d570 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x227d574 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x227d578 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x227d57c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x227d594 loads 4 bytes from [a0]:8 +0x80c.
  The `ld` at 0x227d5a8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x227d5b4 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x227d5bc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x227d5c4 loads 4 bytes from [a0]:8 +0xfb0.
  The `lb` at 0x227d60c loads 1 byte from table(0x22d25f0) +0x0.
  The `ld` at 0x227d63c loads 8 bytes from [a0]:8 +0x4d20.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x227d660, `lwc1` at 0x227d664.
  The `lhu` at 0x227d688 loads 2 bytes from ?.
  The `lw` at 0x227d694 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x227d69c loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x227d6a4 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x227d6ac loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x227d6b4 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sh` at 0x227d6d8 stores 2 bytes to ?.
  The `lwc1` at 0x227d6ec loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0x227d6f4 loads 4 bytes from [a0]:8 +0xf28.
  The `jalr` at 0x227d648 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64, a4=[[a0]:8+2056], a5=[a0]:8, a6=[a1+4], a7=[a1].
  The `beq` branch at 0x227d5e8 targets 0x227d6f0, is taken when (a4(=[[a0]:8+2056]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2056]) & 0x8) != 0.
  The `bne` branch at 0x227d62c targets 0x227d63c, is taken when (a4(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (a4(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x227d634 targets 0x227d6e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x227d6e8 targets 0x227d65c and is always taken.
  The `beq` branch at 0x227d6f0 targets 0x227d624 and is always taken.
  The return at 0x227d6e0 has v0 = ?.

- `Store_32` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227d870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227d870-0x227d9b8 (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x227d878 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x227d87c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x227d880 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x227d884 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x227d89c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x227d8a4 loads 4 bytes from [a0]:8 +0x80c.
  The `lw` at 0x227d8ac loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x227d8c0 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x227d8c8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x227d900 loads 8 bytes from [a0]:8 +0x4d20.
  The `lwc1` at 0x227d920 loads 4 bytes from [a0]:8 +0xf28.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x227d928, `lwc1` at 0x227d92c.
  The `lw` at 0x227d950 loads 4 bytes from ?.
  The `lw` at 0x227d95c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x227d964 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x227d96c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x227d974 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x227d97c loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sw` at 0x227d9a0 stores 4 bytes to ?.
  The `lwc1` at 0x227d9b4 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `jalr` at 0x227d90c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64.
  The `bne` branch at 0x227d8ec targets 0x227d900, is taken when (at(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (at(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x227d8f8 targets 0x227d9b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x227d9b0 targets 0x227d920 and is always taken.
  The return at 0x227d9a8 has v0 = one of ret(?), ([[a0]:8+4016] << 0x2).

- `Fetch_8` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227d9c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227d9c0-0x227da68 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0x227d9c0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x227d9c4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x227d9c8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x227d9d4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x227d9e0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x227d9e8 loads 4 bytes from [a0]:8 +0xe18.
  The `lbu` at 0x227d9f0 loads 1 byte from ?.
  The `lw` at 0x227d9f4 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x227da10 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x227da14 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x227da18 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x227da34 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x227da38 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x227da3c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x227da58 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x227da5c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x227da64 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x227da60 has v0 = [a0+176].

- `Fetch_16` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227da70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227da70-0x227db24 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x227da70 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x227da74 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x227da78 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x227da84 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x227da8c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x227daa4 loads 4 bytes from [a0]:8 +0xe18.
  The `lhu` at 0x227daac loads 2 bytes from ?.
  The `lw` at 0x227dab0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x227dacc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x227dad0 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x227dad4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x227daf0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x227daf4 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x227daf8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x227db14 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x227db18 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x227db20 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x227db1c has v0 = [a0+176].

- `Fetch_32` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227dc00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227dc00-0x227dcb4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x227dc00 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x227dc04 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x227dc08 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x227dc14 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x227dc1c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x227dc38 loads 4 bytes from [a0]:8 +0xe18.
  The `lw` at 0x227dc3c loads 4 bytes from ?.
  The `lw` at 0x227dc40 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x227dc5c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x227dc60 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x227dc64 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x227dc80 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x227dc84 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x227dc88 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x227dca4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x227dca8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x227dcb0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x227dcac has v0 = [a0+176].

- `StoreSpan` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227de10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227de10-0x227ded4 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x227de28 loads 4 bytes from a0 (arg0 at entry) +0x9758.
  The `lw` at 0x227de2c loads 4 bytes from a0 (arg0 at entry) +0x9728.
  The `lw` at 0x227de34 loads 4 bytes from a0 (arg0 at entry) +0x9724.
  The `ld` at 0x227de54 loads 8 bytes from a0 (arg0 at entry) +0x9858.
  The `ld` at 0x227de5c loads 8 bytes from a0 (arg0 at entry) +0x9838.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x227de74, `lwc1` at 0x227de7c, `lwc1` at 0x227de84.
  The `ld` at 0x227de94 loads 8 bytes from [a0+39000]:8 +0xe0.
  The `jalr` at 0x227dea0 calls (unknown callee) with a0=[a0+39000]:8, a1=sp-112, a2=?, a3=?.
  The `beq` branch at 0x227de58 targets 0x227deb4, is taken when s0(=[a0+38692]) >= s3(=([a0+38692] + [a0+38744])) (signed), and falls through when s0(=[a0+38692]) < s3(=([a0+38692] + [a0+38744])) (signed).
  The `bne` branch at 0x227deac targets 0x227de70, is taken when s3(=([a0+38692] + [a0+38744])) != s0(?), and falls through when s3(=([a0+38692] + [a0+38744])) == s0(?).
  The return at 0x227decc has v0 = 0x0.

- `StoreStippledSpan` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x227dee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x227dee0-0x227e030 (336 bytes).
  It occupies 336 bytes.
  The `ld` at 0x227df00 loads 8 bytes from a0 (arg0 at entry) +0x9848.
  The `lw` at 0x227df08 loads 4 bytes from a0 (arg0 at entry) +0x9728.
  The `lw` at 0x227df0c loads 4 bytes from a0 (arg0 at entry) +0x9758.
  The `ld` at 0x227df18 loads 8 bytes from a0 (arg0 at entry) +0x9858.
  The `ld` at 0x227df20 loads 8 bytes from a0 (arg0 at entry) +0x9838.
  The `lw` at 0x227df2c loads 4 bytes from a0 (arg0 at entry) +0x9724.
  The `lw` at 0x227df74 loads 4 bytes from ?.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x227df9c, `lwc1` at 0x227dfa4, `lwc1` at 0x227dfac.
  The `ld` at 0x227dfbc loads 8 bytes from [a0+39000]:8 +0xe0.
  The `jalr` at 0x227dfc4 calls (unknown callee) with a0=[a0+39000]:8, a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0x227df28 targets 0x227e00c, is taken when s7(=[a0+38744]) == 0, and falls through when s7(=[a0+38744]) != 0.
  The `bltz` branch at 0x227df78 targets 0x227dff4, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x227df90 targets 0x227dfcc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x227dfdc targets 0x227df90, is taken when s4(?) != s6(=-0x1), and falls through when s4(?) == s6(=-0x1).
  The `bne` branch at 0x227dff4 targets 0x227df50, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The return at 0x227e028 has v0 = 0x0.

- `__gllc_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2288600 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2288600-0x2288684 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x2288604 loads 8 bytes from abs 0x1020.
  The `sh` at 0x2288664 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0x228862c calls __glDlistAllocOp2 [0x21d29e0] with a0=[0x1020]:8, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2288660 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x40, a3=0xaf.
  The `jalr` at 0x2288674 calls __glDlistAppendOp [0x21d2a70] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x228ec20, a3=?.
  The `bne` branch at 0x2288634 targets 0x228864c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x228867c targets 0x2288640 and is always taken.
  The return at 0x2288644 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2288690 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2288690-0x228871c (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x2288694 loads 8 bytes from abs 0x1020.
  The `sb` at 0x22886f0 stores 1 byte to ret(__glDlistAllocOp2) +0x16.
  The `sh` at 0x22886fc stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0x22886bc calls __glDlistAllocOp2 [0x21d29e0] with a0=[0x1020]:8, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22886f8 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x80, a3=0xb0, a5=0x1.
  The `jalr` at 0x228870c calls __glDlistAppendOp [0x21d2a70] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x228ec70, a3=?.
  The `bne` branch at 0x22886c4 targets 0x22886dc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x2288714 targets 0x22886d0 and is always taken.
  The return at 0x22886d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glle_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x228ec20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x228ec20-0x228ec64 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x228ec34 loads 8 bytes from abs 0x1558.
  The `jalr` at 0x228ec44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x228ec5c has v0 = a0+64.

- `__glle_LoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x228ec70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x228ec70-0x228ecb4 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x228ec84 loads 8 bytes from abs 0x1560.
  The `jalr` at 0x228ec94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x228ecac has v0 = a0+128.

- `__glsplc_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2297110 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2297110-0x229716c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x2297134 calls __glSPDlalloc [0x218e980] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x229715c calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `bne` branch at 0x229713c targets 0x2297154, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `beq` branch at 0x2297164 targets 0x2297148 and is always taken.
  The return at 0x229714c has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x2297170 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x2297170-0x22971cc (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x2297194 calls __glSPDlalloc2 [0x218ebb0] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22971bc calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `bne` branch at 0x229719c targets 0x22971b4, is taken when v0(=ret(__glSPDlalloc2)) != 0, and falls through when v0(=ret(__glSPDlalloc2)) == 0.
  The `beq` branch at 0x22971c4 targets 0x22971a8 and is always taken.
  The return at 0x22971ac has v0 = one of ret(__glSPDlalloc2), ret(memcpy).

- `__glce_Flush` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22a08b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22a08b0-0x22a08fc (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x22a08b8 loads 8 bytes from abs 0x1308.
  The `ld` at 0x22a08c0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x22a08d8 loads 8 bytes from [0x1020]:8 +0x3ad0.
  2 such `sd` accesses store 8 bytes to abs 0x1308, including `sd` at 0x22a08e0, `sd` at 0x22a08ec.
  The `jalr` at 0x22a08dc calls glFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22a08f4 has v0 = ret(glFlush).

- `__glce_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22a29d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22a29d0-0x22a2a44 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x22a29d0 loads 8 bytes from abs 0x1558.
  The `ld` at 0x22a29e8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x22a2a00 loads 8 bytes from [0x1020]:8 +0x1fa8.
  3 such `sd` accesses store 8 bytes to abs 0x1558, including `sd` at 0x22a2a0c, `sd` at 0x22a2a24, `sd` at 0x22a2a40.
  The `ld` at 0x22a2a18 loads 8 bytes from [0x1020]:8 +0x3d20.
  The `jalr` at 0x22a2a08 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22a2a20 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=[[0x1020]:8+15648]:8, a2=?, a3=?.
  The return at 0x22a2a3c has v0 = ret(glLoadMatrixf).

- `__glce_LoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22a2a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22a2a50-0x22a2ac4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x22a2a50 loads 8 bytes from abs 0x1560.
  The `ld` at 0x22a2a68 loads 8 bytes from abs 0x1020.
  The `ld` at 0x22a2a80 loads 8 bytes from [0x1020]:8 +0x1fb0.
  3 such `sd` accesses store 8 bytes to abs 0x1560, including `sd` at 0x22a2a8c, `sd` at 0x22a2aa4, `sd` at 0x22a2ac0.
  The `ld` at 0x22a2a98 loads 8 bytes from [0x1020]:8 +0x3d28.
  The `jalr` at 0x22a2a88 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22a2aa0 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=[[0x1020]:8+15656]:8, a2=?, a3=?.
  The return at 0x22a2abc has v0 = ret(glLoadMatrixd).

- `__glkonim_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22abed0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22abed0-0x22abf5c (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x22abed4 stores 4 bytes to abs 0x4000.
  The `lwc1` at 0x22abed8 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lwc1` at 0x22abedc loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lwc1` at 0x22abee0 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lwc1` at 0x22abee4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lwc1` at 0x22abee8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lwc1` at 0x22abeec loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0x22abef0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwc1` at 0x22abef4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lwc1` at 0x22abef8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0x22abefc loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0x22abf00 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0x22abf04 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0x22abf08 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lwc1` at 0x22abf0c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0x22abf10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22abf14 loads 4 bytes from a0 (arg0 at entry) +0x4.
  16 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0x22abf18, `swc1` at 0x22abf1c, `swc1` at 0x22abf20.
  The return at 0x22abf54 has v0 = ?.

- `__glkonim_LoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22abf60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22abf60-0x22abfec (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x22abf64 stores 4 bytes to abs 0x4000.
  The `ldc1` at 0x22abf68 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ldc1` at 0x22abf6c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `ldc1` at 0x22abf70 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `ldc1` at 0x22abf74 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ldc1` at 0x22abf78 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ldc1` at 0x22abf7c loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ldc1` at 0x22abf80 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ldc1` at 0x22abf84 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ldc1` at 0x22abf88 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ldc1` at 0x22abf8c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ldc1` at 0x22abf90 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ldc1` at 0x22abf94 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0x22abf98 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ldc1` at 0x22abf9c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0x22abfa0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0x22abfa4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  16 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0x22abfa8, `sdc1` at 0x22abfac, `sdc1` at 0x22abfb0.
  The return at 0x22abfe4 has v0 = ?.

- `__glkonlc_LoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22b4820 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22b4820-0x22b491c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x22b4820 loads 4 bytes from abs 0x1048.
  The `ld` at 0x22b4848 loads 8 bytes from abs 0x1058.
  The `sw` at 0x22b4850 stores 4 bytes to [0x1058]:8 +0x0.
  The `lwc1` at 0x22b4854 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0x22b4858 stores 4 bytes to [0x1058]:8 +0x4.
  The `lwc1` at 0x22b485c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0x22b4860 stores 4 bytes to [0x1058]:8 +0x8.
  The `lwc1` at 0x22b4864 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0x22b4868 stores 4 bytes to [0x1058]:8 +0xc.
  The `lwc1` at 0x22b486c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22b4870 stores 4 bytes to [0x1058]:8 +0x10.
  The `lwc1` at 0x22b4874 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `swc1` at 0x22b4878 stores 4 bytes to [0x1058]:8 +0x14.
  The `lwc1` at 0x22b487c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `swc1` at 0x22b4880 stores 4 bytes to [0x1058]:8 +0x18.
  The `lwc1` at 0x22b4884 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `swc1` at 0x22b4888 stores 4 bytes to [0x1058]:8 +0x1c.
  The `lwc1` at 0x22b488c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `swc1` at 0x22b4890 stores 4 bytes to [0x1058]:8 +0x20.
  The `lwc1` at 0x22b4894 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `swc1` at 0x22b4898 stores 4 bytes to [0x1058]:8 +0x24.
  The `lwc1` at 0x22b489c loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `swc1` at 0x22b48a0 stores 4 bytes to [0x1058]:8 +0x28.
  The `lwc1` at 0x22b48a4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `swc1` at 0x22b48a8 stores 4 bytes to [0x1058]:8 +0x2c.
  The `lwc1` at 0x22b48ac loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `swc1` at 0x22b48b0 stores 4 bytes to [0x1058]:8 +0x30.
  The `lwc1` at 0x22b48b4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `swc1` at 0x22b48b8 stores 4 bytes to [0x1058]:8 +0x34.
  The `lwc1` at 0x22b48bc loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `swc1` at 0x22b48c0 stores 4 bytes to [0x1058]:8 +0x38.
  The `lwc1` at 0x22b48c4 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `swc1` at 0x22b48cc stores 4 bytes to [0x1058]:8 +0x3c.
  The `lwc1` at 0x22b48d0 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `swc1` at 0x22b48d8 stores 4 bytes to [0x1058]:8 +0x40.
  The `sd` at 0x22b48e0 stores 8 bytes to abs 0x1058.
  The `lw` at 0x22b48e4 loads 4 bytes from abs 0x1060.
  The `sw` at 0x22b48ec stores 4 bytes to abs 0x1048.
  The `sw` at 0x22b48fc stores 4 bytes to abs 0x1060.
  The `jalr` at 0x22b4908 calls __glSPDlistSpace [0x21d7420] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1048].
  The `bne` branch at 0x22b4840 targets 0x22b4900, is taken when a3(=[0x1048]) < 0x11 (signed), and falls through when a3(=[0x1048]) >= 0x11 (signed).
  The `beq` branch at 0x22b4914 targets 0x22b4848 and is always taken.
  The return at 0x22b48f8 has v0 = [0x1060]+17.

- `__glkonle_Push` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22bc880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22bc880-0x22bc8e4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x22bc888 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22bc88c loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0x22bc898, `swc1` at 0x22bc8d8.
  The `ldc1` at 0x22bc8ac loads 8 bytes from ?.
  The `sdc1` at 0x22bc8c0 stores 8 bytes to abs 0x4000.
  The `lwc1` at 0x22bc8cc loads 4 bytes from ?.
  The `bne` branch at 0x22bc884 targets 0x22bc89c, is taken when (a0 & 0x4) != 0, and falls through when (a0 & 0x4) == 0.
  The `beq` branch at 0x22bc8a0 targets 0x22bc8cc, is taken when a1(?) == at(=0x1), and falls through when a1(?) != at(=0x1).
  The `beq` branch at 0x22bc8bc targets 0x22bc8ac, is taken when a1(?) >= t2(=0x2) (signed), and falls through when a1(?) < t2(=0x2) (signed).
  The `beq` branch at 0x22bc8c4 targets 0x22bc8dc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The return at 0x22bc8d4 has v0 = ?.
  The return at 0x22bc8dc has v0 = ?.

- `glLoadMatrixf` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be1f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be1f0-0x22be1fc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be1f0 loads 8 bytes from abs 0x1558.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be1f4).

- `glLoadMatrixd` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be1fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be1fc-0x22be208 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be1fc loads 8 bytes from abs 0x1560.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be200).

- `glBlendColorEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2a4-0x22be2b0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2a4 loads 8 bytes from abs 0x15d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2a8).

- `glBlendEquationEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2b0-0x22be2bc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2b0 loads 8 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2b4).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2c8-0x22be2d4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2c8 loads 8 bytes from abs 0x15e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2cc).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2d4-0x22be2e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2d4 loads 8 bytes from abs 0x15f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2d8).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2e0-0x22be2ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2e0 loads 8 bytes from abs 0x15f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2e4).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2ec-0x22be2f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2ec loads 8 bytes from abs 0x1600.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2f0).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be2f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be2f8-0x22be304 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be2f8 loads 8 bytes from abs 0x1608.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be2fc).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be304 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be304-0x22be310 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be304 loads 8 bytes from abs 0x1610.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be308).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be310 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be310-0x22be31c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be310 loads 8 bytes from abs 0x1618.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be314).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be31c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be31c-0x22be328 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be31c loads 8 bytes from abs 0x1620.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be320).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be328 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be328-0x22be334 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be328 loads 8 bytes from abs 0x1628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be32c).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be334 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be334-0x22be340 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be334 loads 8 bytes from abs 0x1630.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be338).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be370-0x22be37c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be370 loads 8 bytes from abs 0x1658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be374).

- `glHistogramEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be3c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be3c4-0x22be3d0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be3c4 loads 8 bytes from abs 0x1690.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be3c8).

- `glMinmaxEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be3d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be3d0-0x22be3dc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be3d0 loads 8 bytes from abs 0x1698.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be3d4).

- `glResetHistogramEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be3dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be3dc-0x22be3e8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be3dc loads 8 bytes from abs 0x16a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be3e0).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be3e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be3e8-0x22be3f4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be3e8 loads 8 bytes from abs 0x16a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be3ec).

- `glTexImage3DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be3f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be3f4-0x22be400 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be3f4 loads 8 bytes from abs 0x16b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be3f8).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be400-0x22be40c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be400 loads 8 bytes from abs 0x16b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be404).

- `glArrayElementEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be40c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be40c-0x22be418 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be40c loads 8 bytes from abs 0x16c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be410).

- `glGetPointervEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be43c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be43c-0x22be448 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be43c loads 8 bytes from abs 0x16e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be440).

- `glBindTextureEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be484 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be484-0x22be490 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be484 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be488).

- `glPrioritizeTexturesEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be4b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be4b4-0x22be4c0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be4b4 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be4b8).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be4c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be4c0-0x22be4cc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be4c0 loads 8 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be4c4).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be4cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be4cc-0x22be4d8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be4cc loads 8 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be4d0).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be4d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be4d8-0x22be4e4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be4d8 loads 8 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be4dc).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be4e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be4e4-0x22be4f0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be4e4 loads 8 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be4e8).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be4f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be4f0-0x22be4fc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be4f0 loads 8 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be4f4).

- `glColorTableSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be608 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be608-0x22be614 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be608 loads 8 bytes from abs 0x1800.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be60c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be614 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be614-0x22be620 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be614 loads 8 bytes from abs 0x1808.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be618).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be620 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be620-0x22be62c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be620 loads 8 bytes from abs 0x1810.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be624).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be62c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be62c-0x22be638 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be62c loads 8 bytes from abs 0x1818.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be630).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be6c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be6c8-0x22be6d4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be6c8 loads 8 bytes from abs 0x1880.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be6cc).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be6d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be6d4-0x22be6e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be6d4 loads 8 bytes from abs 0x1888.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be6d8).

- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP35KONA64/libGLcore.so` at 0x22be6f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA64/libGLcore.so`.
  Range: 0x22be6f8-0x22be704 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x22be6f8 loads 8 bytes from abs 0x18a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x22be6fc).
