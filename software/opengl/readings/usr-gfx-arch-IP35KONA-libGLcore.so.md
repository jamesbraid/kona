# Readings: `usr/gfx/arch/IP35KONA/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `__glKonExecuteLDMA` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd948e2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd948e2c-0xd948e50 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0xd948e30 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xd948e38 loads 4 bytes from [a1+20] +0x0.
  The `lw` at 0xd948e3c loads 4 bytes from [a1+20] +0x4.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd948e40, `sw` at 0xd948e44, `sw` at 0xd948e4c.
  The return at 0xd948e48 has v0 = [a1+20].

- `__glKonExecuteLDMAn` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd948e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd948e50-0xd948f18 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd948e54 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd948e58 loads 4 bytes from a1 (arg1 at entry) +0x14.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd948e84, `sw` at 0xd948e90, `sw` at 0xd948ea4.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd948e98, `lw` at 0xd948e9c, `lw` at 0xd948ebc.
  The `bne` branch at 0xd948e6c targets 0xd948e7c, is taken when a0(?) < 0x8 (unsigned), and falls through when a0(?) >= 0x8 (unsigned).
  The `beq` branch at 0xd948e74 targets 0xd948e80 and is always taken.
  The `beq` branch at 0xd948e8c targets 0xd948ebc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd948eac targets 0xd948e98, is taken when t0(?) != v1(?), and falls through when t0(?) == v1(?).
  The `beq` branch at 0xd948eb4 targets 0xd948f08, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd948f00 targets 0xd948ebc, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd948f08 targets 0xd948e68, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0xd948f10 has v0 = ?.

- `__glKonExecuteIDMA` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd948f18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd948f18-0xd948fc4 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd948f1c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd948f20 loads 4 bytes from a1 (arg1 at entry) +0x14.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd948f38, `lw` at 0xd948f3c, `lw` at 0xd948f60.
  15 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd948f40, `sw` at 0xd948f48, `sw` at 0xd948f54.
  The `beq` branch at 0xd948f30 targets 0xd948f5c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd948f50 targets 0xd948f38, is taken when a2(?) != v1(?), and falls through when a2(?) == v1(?).
  The `beq` branch at 0xd948f58 targets 0xd948fbc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd948fb4 targets 0xd948f60, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0xd948fbc has v0 = ?.

- `__glKonExecuteIDMAn` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd948fc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd948fc4-0xd94908c (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd948fc8 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd948fcc loads 4 bytes from a1 (arg1 at entry) +0x14.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd948ff8, `sw` at 0xd949004, `sw` at 0xd949018.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd94900c, `lw` at 0xd949010, `lw` at 0xd949030.
  The `bne` branch at 0xd948fe0 targets 0xd948ff0, is taken when a0(?) < 0x4 (unsigned), and falls through when a0(?) >= 0x4 (unsigned).
  The `beq` branch at 0xd948fe8 targets 0xd948ff4 and is always taken.
  The `beq` branch at 0xd949000 targets 0xd949030, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xd949020 targets 0xd94900c, is taken when t0(?) != v1(?), and falls through when t0(?) == v1(?).
  The `beq` branch at 0xd949028 targets 0xd94907c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd949074 targets 0xd949030, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xd94907c targets 0xd948fdc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0xd949084 has v0 = ?.

- `__glKon_ioctl` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd95be10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd95be10-0xd95be48 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xd95be30 loads 4 bytes from a0 (arg0 at entry) +0x7b48.
  The `jalr` at 0xd95be2c calls ioctl with a0=[a0+31560], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd95be40 has v0 = ret(ioctl).

- `__glKonSendMapSpec1D` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd981088 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd981088-0xd9810d8 (80 bytes).
  It occupies 80 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd981098, `lw` at 0xd9810a4.
  The `lw` at 0xd98109c loads 4 bytes from a0 (arg0 at entry) +0x8.
  7 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd9810a0, `sw` at 0xd9810a8, `sw` at 0xd9810b8.
  The `lw` at 0xd9810ac loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `beq` branch at 0xd98108c targets 0xd9810bc, is taken when a0 == 0, and falls through when a0 != 0.
  The `bnel` branch at 0xd981094 targets 0xd9810a8, is taken when a1(?) != 0, and falls through when a1(?) == 0; its branch-likely delay slot `lw t7,4(a0)` at 0xd981098 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd9810bc targets 0xd9810cc, is taken when a1(?) != 0, and falls through when a1(?) == 0; its branch-likely delay slot `sw zero,16384(zero)` at 0xd9810c0 runs only when taken and is annulled on fall-through.
  The return at 0xd9810b4 has v0 = ?.
  The return at 0xd9810d0 has v0 = ?.

- `__glKonSendMapSpec2D` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9810d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9810d8-0xd981120 (72 bytes).
  It occupies 72 bytes.
  8 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd9810dc, `sw` at 0xd9810e4, `sw` at 0xd9810ec.
  The `lw` at 0xd9810e0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xd9810e8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xd9810f0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xd9810f8 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `beql` branch at 0xd9810d8 targets 0xd98110c, is taken when a0 == 0, and falls through when a0 != 0; its branch-likely delay slot `sw zero,16384(zero)` at 0xd9810dc runs only when taken and is annulled on fall-through.
  The return at 0xd981100 has v0 = ?.
  The return at 0xd981118 has v0 = ?.
  The instructions from 0xd981108 to 0xd981108 are not reached by any path from the entry, and their branches are not listed.

- `__glKonSendMapData1D` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd981120 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd981120-0xd9811ac (140 bytes).
  It occupies 140 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0xd981128, `lw` at 0xd981168, `lw` at 0xd981170.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd981130, `sw` at 0xd981138, `sw` at 0xd98114c.
  The `lw` at 0xd98113c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xd981150 loads 4 bytes from a0 (arg0 at entry) +0x14.
  4 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xd981154, `swc1` at 0xd98115c, `swc1` at 0xd981164.
  The `lwc1` at 0xd981158 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd981160 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xd98117c, `lw` at 0xd9811a0.
  The `lwc1` at 0xd981188 loads 4 bytes from ?.
  The `beq` branch at 0xd981120 targets 0xd9811a4, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0xd981174 targets 0xd9811a4, is taken when t0(=[a0+44]) <= 0 (signed), and falls through when t0(=[a0+44]) > 0 (signed).
  The `bnel` branch at 0xd98119c targets 0xd981180, is taken when v1(?) < t3(=[a0+44]) (signed), and falls through when v1(?) >= t3(=[a0+44]) (signed); its branch-likely delay slot `lw t1,48(a0)` at 0xd9811a0 runs only when taken and is annulled on fall-through.
  The return at 0xd9811a4 has v0 = one of ?, 0x0.

- `__glKonSendMapData2D` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9811ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9811ac-0xd981250 (164 bytes).
  It occupies 164 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0xd9811b4, `lw` at 0xd98120c, `lw` at 0xd981214.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd9811bc, `sw` at 0xd9811c4, `sw` at 0xd9811d8.
  The `lw` at 0xd9811c8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xd9811dc loads 4 bytes from a0 (arg0 at entry) +0x14.
  7 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xd9811e0, `swc1` at 0xd9811e8, `swc1` at 0xd9811f0.
  The `lwc1` at 0xd9811e4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd9811ec loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xd9811f4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lwc1` at 0xd9811fc loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwc1` at 0xd981204 loads 4 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xd981220, `lw` at 0xd981244.
  The `lwc1` at 0xd98122c loads 4 bytes from ?.
  The `beq` branch at 0xd9811ac targets 0xd981248, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0xd981218 targets 0xd981248, is taken when t0(=[a0+44]) <= 0 (signed), and falls through when t0(=[a0+44]) > 0 (signed).
  The `bnel` branch at 0xd981240 targets 0xd981224, is taken when v1(?) < t3(=[a0+44]) (signed), and falls through when v1(?) >= t3(=[a0+44]) (signed); its branch-likely delay slot `lw t1,48(a0)` at 0xd981244 runs only when taken and is annulled on fall-through.
  The return at 0xd981248 has v0 = one of ?, 0x0.

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

- `__glDoBlendMax` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9c916c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9c916c-0xd9c91ec (128 bytes).
  It occupies 128 bytes.
  The `lwc1` at 0xd9c9174 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xd9c9178 loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xd9c9188, `lwc1` at 0xd9c9190.
  The `swc1` at 0xd9c918c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xd9c9194 loads 4 bytes from a3 (arg3 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xd9c91a4, `lwc1` at 0xd9c91ac.
  The `swc1` at 0xd9c91a8 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0xd9c91b0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xd9c91c0, `lwc1` at 0xd9c91c8.
  The `swc1` at 0xd9c91c4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xd9c91cc loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0xd9c91e0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1fl` branch at 0xd9c9184 targets 0xd9c9194, is taken when not (f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xd9c917c)), and falls through when f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xd9c917c); its branch-likely delay slot `lwc1 $f0,4(a2)` at 0xd9c9188 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c91a0 targets 0xd9c91b0, is taken when not (f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xd9c9198)), and falls through when f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xd9c9198); its branch-likely delay slot `lwc1 $f0,8(a2)` at 0xd9c91a4 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9c91bc targets 0xd9c91cc, is taken when not (f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xd9c91b4)), and falls through when f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xd9c91b4); its branch-likely delay slot `lwc1 $f0,12(a2)` at 0xd9c91c0 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xd9c91d8 targets 0xd9c91e4, is taken when not (f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xd9c91d0)), and falls through when f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xd9c91d0).
  The return at 0xd9c91e4 has v0 = ?.

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

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d1d7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d1d7c-0xd9d1e94 (280 bytes).
  It occupies 280 bytes.
  The `sw` at 0xd9d1da4 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `sw` at 0xd9d1da8 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `lw` at 0xd9d1dac loads 4 bytes from a0 (arg0 at entry) +0x77f8.
  The `lw` at 0xd9d1db8 loads 4 bytes from [a0+30712] +0x38.
  The `lbu` at 0xd9d1dc4 loads 1 byte from a0 (arg0 at entry) +0xc96.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc98, including `lbu` at 0xd9d1dd0, `lbu` at 0xd9d1df0.
  The `lw` at 0xd9d1dd4 loads 4 bytes from a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xd9d1de0 loads 4 bytes from [a0+30716] +0x38.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99, including `lbu` at 0xd9d1df8, `lbu` at 0xd9d1e04, `lbu` at 0xd9d1e20.
  The `lw` at 0xd9d1dfc loads 4 bytes from a0 (arg0 at entry) +0x7ac8.
  The `lw` at 0xd9d1e08 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc9a, including `lbu` at 0xd9d1e28, `lbu` at 0xd9d1e44.
  The `lw` at 0xd9d1e2c loads 4 bytes from a0 (arg0 at entry) +0x7a6c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2ec4, including `lw` at 0xd9d1e4c, `lw` at 0xd9d1e68.
  The `lw` at 0xd9d1e50 loads 4 bytes from a0 (arg0 at entry) +0x79f4.
  The `jalr` at 0xd9d1dbc calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d1de4 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9d1e14 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9d1e38 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9d1e5c calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9d1e70 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd9d1dcc targets 0xd9d1df4, is taken when t6(=[a0+3222]:1) == 0, and falls through when t6(=[a0+3222]:1) != 0; its branch-likely delay slot `lbu t7,3224(s0)` at 0xd9d1dd0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d1df4 targets 0xd9d1e24, is taken when t7(=[a0+3224]:1) == 0, and falls through when t7(=[a0+3224]:1) != 0; its branch-likely delay slot `lbu t0,3225(s0)` at 0xd9d1df8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d1e00 targets 0xd9d1e24, is taken when t8(=[a0+31432]) == 0, and falls through when t8(=[a0+31432]) != 0; its branch-likely delay slot `lbu t0,3225(s0)` at 0xd9d1e04 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d1e24 targets 0xd9d1e48, is taken when t0(=[a0+3225]:1) == 0, and falls through when t0(=[a0+3225]:1) != 0; its branch-likely delay slot `lbu t1,3226(s0)` at 0xd9d1e28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d1e48 targets 0xd9d1e6c, is taken when t1(=[a0+3226]:1) == 0, and falls through when t1(=[a0+3226]:1) != 0; its branch-likely delay slot `lw t9,11972(s0)` at 0xd9d1e4c runs only when taken and is annulled on fall-through.
  The return at 0xd9d1e8c has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d1e94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d1e94-0xd9d1ea0 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xd9d1e94 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The `sw` at 0xd9d1e9c stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The return at 0xd9d1e98 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9d1ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9d1ea0-0xd9d1f9c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd9d1ec8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xd9d1ee0 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xd9d1ef4 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xdd0, including `lbu` at 0xd9d1efc, `lbu` at 0xd9d1f18.
  The `lw` at 0xd9d1f24 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xd9d1f54 loads 4 bytes from a0 (arg0 at entry) +0xe7c.
  The `lw` at 0xd9d1f64 loads 4 bytes from a0 (arg0 at entry) +0xe80.
  The `jalr` at 0xd9d1ed4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-4, a2=sp-8, a3=sp-12.
  The `jalr` at 0xd9d1f0c calls __glChangeWindowSize [0xd9d1d7c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d1f44 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-20, a2=sp-24, a3=?.
  The `jalr` at 0xd9d1f7c calls __glChangeReadWindowSize [0xd9d1e94] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd9d1eec targets 0xd9d1f00, is taken when t7(?) != t8(=[a0+3700]), and falls through when t7(?) == t8(=[a0+3700]).
  The `beql` branch at 0xd9d1ef8 targets 0xd9d1f1c, is taken when t0(?) == t1(=[a0+3704]), and falls through when t0(?) != t1(=[a0+3704]); its branch-likely delay slot `lbu t2,3536(s0)` at 0xd9d1efc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9d1f20 targets 0xd9d1f3c, is taken when t2(=[a0+3536]:1) == 0, and falls through when t2(=[a0+3536]:1) != 0; its branch-likely delay slot `lw t9,72(s0)` at 0xd9d1f24 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d1f30 targets 0xd9d1f50 and is always taken.
  The `bne` branch at 0xd9d1f5c targets 0xd9d1f70, is taken when t5(?) != t6(=[a0+3708]), and falls through when t5(?) == t6(=[a0+3708]).
  The `beql` branch at 0xd9d1f68 targets 0xd9d1f8c, is taken when t7(?) == t8(=[a0+3712]), and falls through when t7(?) != t8(=[a0+3712]); its branch-likely delay slot `lw ra,36(sp)` at 0xd9d1f6c runs only when taken and is annulled on fall-through.
  The return at 0xd9d1f94 has v0 = one of ?, ret(__glChangeReadWindowSize).
  The instructions from 0xd9d1f38 to 0xd9d1f38 are not reached by any path from the entry, and their branches are not listed.

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

- `__glim_Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xd9dbb28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xd9dbb28-0xd9dbb90 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xd9dbb44 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9dbb4c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9dbb54 loads 4 bytes from [0x1010] +0x2e30.
  The `jalr` at 0xd9dbb60 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9dbb74 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9dbb50 targets 0xd9dbb74, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t9,11824(a0)` at 0xd9dbb54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9dbb68 targets 0xd9dbb80 and is always taken.
  The return at 0xd9dbb88 has v0 = one of ret(__glSetError), ret(?).
  The instructions from 0xd9dbb70 to 0xd9dbb70 are not reached by any path from the entry, and their branches are not listed.

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

- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda0d580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda0d580-0xda0d6ac (300 bytes).
  It occupies 300 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0d5c4, `lwc1` at 0xda0d5c8, `lwc1` at 0xda0d624.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0d5f0, `swc1` at 0xda0d648, `swc1` at 0xda0d664.
  The `blez` branch at 0xda0d590 targets 0xda0d6a4, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0d59c targets 0xda0d5fc, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0d5ec targets 0xda0d5c4, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xda0d5f4 targets 0xda0d6a4, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xda0d69c targets 0xda0d624, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xda0d6a4 has v0 = one of 0x0, ?.

- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda0d6ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda0d6ac-0xda0d840 (404 bytes).
  It occupies 404 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0d708, `lwc1` at 0xda0d70c, `lwc1` at 0xda0d788.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0d740, `swc1` at 0xda0d7b8, `swc1` at 0xda0d7e0.
  The `blez` branch at 0xda0d6bc targets 0xda0d838, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0d6c8 targets 0xda0d748, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0d73c targets 0xda0d708, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xda0d744 targets 0xda0d838, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xda0d830 targets 0xda0d788, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xda0d838 has v0 = one of 0x0, ?.

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

- `__glReCompute2DMatrix` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3ce84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda3ce84-0xda3cf2c (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0xda3ce90, `lw` at 0xda3cf1c.
  The `lwc1` at 0xda3cea0 loads 4 bytes from a0 (arg0 at entry) +0x6b8.
  The `lwc1` at 0xda3cea4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda3cea8 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0xda3ceb4 stores 4 bytes to a0 (arg0 at entry) +0x746c.
  The `lwc1` at 0xda3ceb8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda3cec0 stores 4 bytes to a0 (arg0 at entry) +0x7470.
  The `lwc1` at 0xda3cec4 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0xda3cecc stores 4 bytes to a0 (arg0 at entry) +0x747c.
  The `lwc1` at 0xda3ced0 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0xda3ced4 loads 4 bytes from a0 (arg0 at entry) +0x6bc.
  The `swc1` at 0xda3cedc stores 4 bytes to a0 (arg0 at entry) +0x7480.
  The `lwc1` at 0xda3cee0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0xda3cee4 stores 4 bytes to a0 (arg0 at entry) +0x7494.
  The `lwc1` at 0xda3cee8 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xda3cef0 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0xda3cef8 stores 4 bytes to a0 (arg0 at entry) +0x749c.
  The `lwc1` at 0xda3cefc loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `swc1` at 0xda3cf0c stores 4 bytes to a0 (arg0 at entry) +0x74a0.
  The `lwc1` at 0xda3cf10 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0xda3cf14 stores 4 bytes to a0 (arg0 at entry) +0x74a8.
  The `swc1` at 0xda3cf18 stores 4 bytes to a0 (arg0 at entry) +0x74a4.
  The `sw` at 0xda3cf20 stores 4 bytes to a0 (arg0 at entry) +0x74ac.
  The `bne` branch at 0xda3ce98 targets 0xda3cf24, is taken when t6(=[a1+64]) < 0x2 (unsigned), and falls through when t6(=[a1+64]) >= 0x2 (unsigned).
  The return at 0xda3cf24 has v0 = ?.

- `Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda3d1cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda3d1cc-0xda3d1dc (16 bytes).
  It occupies 16 bytes.
  The return at 0xda3d1cc has v0 = ?.
  The instructions from 0xda3d1d4 to 0xda3d1d8 are not reached by any path from the entry, and their branches are not listed.

- `__gllc_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda48db4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda48db4-0xda48e3c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda48dcc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48df0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda48ddc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48e04 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `jalr` at 0xda48e20 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e8e0, a3=?.
  The `beq` branch at 0xda48de4 targets 0xda48e2c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48e34 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda48e3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda48e3c-0xda48ecc (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda48e54 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda48e7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda48e80 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `jalr` at 0xda48e64 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda48e94 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `jalr` at 0xda48eb0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4e91c, a3=?.
  The `beq` branch at 0xda48e6c targets 0xda48ebc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda48ec4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glle_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda4e8e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda4e8e0-0xda4e91c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e8ec loads 4 bytes from abs 0x12b4.
  The `jalr` at 0xda4e8fc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e914 has v0 = a0+64.

- `__glle_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda4e91c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda4e91c-0xda4e958 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xda4e928 loads 4 bytes from abs 0x12b8.
  The `jalr` at 0xda4e938 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda4e950 has v0 = a0+128.

- `__glsplc_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5605c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda5605c-0xda560bc (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda56080 calls __glSPDlalloc [0xd94a930] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda560a0 calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `beq` branch at 0xda5608c targets 0xda560ac, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xda560b4 has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda560bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda560bc-0xda5611c (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda560e0 calls __glSPDlalloc2 [0xd94ab64] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda56100 calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `beq` branch at 0xda560ec targets 0xda5610c, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xda56114 has v0 = one of ret(__glSPDlalloc2), ret(memcpy).

- `__glkonim_RasterPos2d` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b68c
  It occupies 20 bytes.
  **Inferred.** The rendered facts match the IP27KONA copy at the same address line for line: one 4-byte store (0xda5b690), two 8-byte FP stores (0xda5b694, 0xda5b69c), no calls. The bytes were not compared, so this rests on the rendered facts only.
  Reviewed: 2026-11-12

- `__glkonim_RasterPos2f` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b6a0
  It occupies 20 bytes.
  **Inferred.** The rendered facts match the IP27KONA copy at the same address: one 4-byte store (0xda5b6a4), two 4-byte float stores (0xda5b6a8, 0xda5b6b0), no calls. As with the 2d copy, the bytes were not compared directly.
  Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b6b4

`__glkonim_RasterPos2i` is a 20-byte leaf with no calls. It stores three words to the fixed absolute address 0x4000 (stores at 0xda5b6b8, 0xda5b6bc and 0xda5b6c4), and the last one sits in the delay slot of the return at 0xda5b6c0. The likely reading is that it writes a command word and two integer coordinates into one write window, but the binary does not say what 0x4000 is, so the destination stays open.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8a4

`__glkonim_TexCoord2d` is a 20-byte leaf with no calls. It stores one word at 0xda5b8a8, then two 8-byte doubles at 0xda5b8ac and 0xda5b8b4, all to abs 0x4000. The order of one word followed by two doubles fits a command carrying a double-precision pair, but the meaning of the leading word is not shown.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8b8

`__glkonim_TexCoord2f` is a 20-byte leaf with no calls. It stores one word at 0xda5b8bc, then two single-precision floats at 0xda5b8c0 and 0xda5b8c8, all to abs 0x4000. It is the same shape as the double variant one entry above, with 4-byte floats in place of doubles, so the two are probably one command family. That is a guess from the shape, not something the facts establish.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8cc

`__glkonim_TexCoord2i` is a 20-byte leaf with no calls. It stores three words to abs 0x4000 at 0xda5b8d0, 0xda5b8d4 and 0xda5b8dc, with the return at 0xda5b8d8 and its last store in the delay slot. Unlike the float and double variants, it stores three words and no 8-byte values. What the three words hold is not shown.

Grade: inferred.

Reviewed: 2026-11-12

- `__glkonim_TexCoord2i` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5b8cc
  **Inferred.** The rendered facts match the IP27KONA copy at the same address: the same 20 bytes, the same three stores to 0x4000 and no calls. The entry describes the same code, and the caveat about the stored values applies here too.
  Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5baf4

`__glkonim_Vertex2d` is a 20-byte leaf with no calls. It stores one word at 0xda5baf8, then two doubles at 0xda5bafc and 0xda5bb04, all to abs 0x4000, with the return at 0xda5bb00 and the second double in its delay slot. Its store layout matches `__glkonim_TexCoord2d`. The name suggests a double-precision vertex submission, but the code does not show the leading word's value or any check on the arguments.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5bb08

`__glkonim_Vertex2f` is a 20-byte leaf with no calls. It stores one word at 0xda5bb0c and two single floats at 0xda5bb10 and 0xda5bb18, all to abs 0x4000, with the return at 0xda5bb14. Its layout matches `__glkonim_TexCoord2f`. As with the other vertex and texture entries, the facts show the store pattern, not the command encoding.

Grade: inferred.

Reviewed: 2026-11-12

### `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5bb1c

`__glkonim_Vertex2i` is a 20-byte leaf with no calls. It stores three words to abs 0x4000 at 0xda5bb20, 0xda5bb24 and 0xda5bb2c, with the return at 0xda5bb28. Its layout matches `__glkonim_TexCoord2i`. The facts show no argument check in this routine; whether a caller validates anything is not visible here.

Grade: inferred.

Reviewed: 2026-11-12

- `__glkonim_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5c908 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda5c908-0xda5c994 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0xda5c90c stores 4 bytes to abs 0x4000.
  The `lwc1` at 0xda5c910 loads 4 bytes from a0 (arg0 at entry) +0x0.
  16 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda5c914, `swc1` at 0xda5c91c, `swc1` at 0xda5c924.
  The `lwc1` at 0xda5c918 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xda5c920 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda5c928 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lwc1` at 0xda5c930 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xda5c938 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xda5c940 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xda5c948 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xda5c950 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lwc1` at 0xda5c958 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwc1` at 0xda5c960 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0xda5c968 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lwc1` at 0xda5c970 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lwc1` at 0xda5c978 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lwc1` at 0xda5c980 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lwc1` at 0xda5c988 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The return at 0xda5c98c has v0 = ?.

- `__glkonim_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda5c994 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda5c994-0xda5ca20 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0xda5c998 stores 4 bytes to abs 0x4000.
  The `ldc1` at 0xda5c99c loads 8 bytes from a0 (arg0 at entry) +0x0.
  16 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xda5c9a0, `sdc1` at 0xda5c9a8, `sdc1` at 0xda5c9b0.
  The `ldc1` at 0xda5c9a4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xda5c9ac loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda5c9b4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ldc1` at 0xda5c9bc loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0xda5c9c4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ldc1` at 0xda5c9cc loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ldc1` at 0xda5c9d4 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ldc1` at 0xda5c9dc loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ldc1` at 0xda5c9e4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ldc1` at 0xda5c9ec loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ldc1` at 0xda5c9f4 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ldc1` at 0xda5c9fc loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ldc1` at 0xda5ca04 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `ldc1` at 0xda5ca0c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `ldc1` at 0xda5ca14 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The return at 0xda5ca18 has v0 = ?.

- `__glkonlc_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda650fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda650fc-0xda65208 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xda65118 loads 4 bytes from abs 0x1028.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda65128, `lw` at 0xda65150.
  The `sw` at 0xda6515c stores 4 bytes to [0x1030] +0x0.
  The `lwc1` at 0xda65160 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda65168 stores 4 bytes to [0x1030] +0x4.
  The `lwc1` at 0xda6516c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda65170 stores 4 bytes to [0x1030] +0x8.
  The `lwc1` at 0xda65174 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda65178 stores 4 bytes to [0x1030] +0xc.
  The `lwc1` at 0xda6517c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda65180 stores 4 bytes to [0x1030] +0x10.
  The `lwc1` at 0xda65184 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `swc1` at 0xda65188 stores 4 bytes to [0x1030] +0x14.
  The `lwc1` at 0xda6518c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `swc1` at 0xda65190 stores 4 bytes to [0x1030] +0x18.
  The `lwc1` at 0xda65194 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `swc1` at 0xda65198 stores 4 bytes to [0x1030] +0x1c.
  The `lwc1` at 0xda6519c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `swc1` at 0xda651a0 stores 4 bytes to [0x1030] +0x20.
  The `lwc1` at 0xda651a4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `swc1` at 0xda651a8 stores 4 bytes to [0x1030] +0x24.
  The `lwc1` at 0xda651ac loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `swc1` at 0xda651b0 stores 4 bytes to [0x1030] +0x28.
  The `lwc1` at 0xda651b4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `swc1` at 0xda651b8 stores 4 bytes to [0x1030] +0x2c.
  The `lwc1` at 0xda651bc loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `swc1` at 0xda651c0 stores 4 bytes to [0x1030] +0x30.
  The `lwc1` at 0xda651c4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `swc1` at 0xda651c8 stores 4 bytes to [0x1030] +0x34.
  The `lwc1` at 0xda651cc loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `swc1` at 0xda651d0 stores 4 bytes to [0x1030] +0x38.
  The `lwc1` at 0xda651d4 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `swc1` at 0xda651d8 stores 4 bytes to [0x1030] +0x3c.
  The `lwc1` at 0xda651dc loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `swc1` at 0xda651e0 stores 4 bytes to [0x1030] +0x40.
  The `lw` at 0xda651e4 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda651e8 stores 4 bytes to abs 0x1030.
  The `sw` at 0xda651ec stores 4 bytes to abs 0x1028.
  The `sw` at 0xda651f4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda65138 calls __glSPDlistSpace [0xd99726c] with a0=0x0, a1=a0 at entry (arg0), a2=0x1028, a3=a3 at entry (arg3).
  The `beql` branch at 0xda65124 targets 0xda65154, is taken when v1(=[0x1028]) >= 0x11 (signed), and falls through when v1(=[0x1028]) < 0x11 (signed); its branch-likely delay slot `lw v0,8(a2)` at 0xda65128 runs only when taken and is annulled on fall-through.
  The return at 0xda65200 has v0 = [0x1030].

- `__glkonlc_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda65208 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda65208-0xda65454 (588 bytes).
  It occupies 588 bytes.
  The `lw` at 0xda65224 loads 4 bytes from abs 0x1028.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda65234, `lw` at 0xda6525c.
  The `sw` at 0xda65268 stores 4 bytes to [0x1030] +0x0.
  The `ldc1` at 0xda6526c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda65288 stores 4 bytes to [0x1030] +0x4.
  The `sw` at 0xda65298 stores 4 bytes to [0x1030] +0x8.
  The `ldc1` at 0xda6529c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda652b0 stores 4 bytes to [0x1030] +0xc.
  The `sw` at 0xda652bc stores 4 bytes to [0x1030] +0x10.
  The `ldc1` at 0xda652c0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0xda652cc stores 4 bytes to [0x1030] +0x14.
  The `sw` at 0xda652d8 stores 4 bytes to [0x1030] +0x18.
  The `ldc1` at 0xda652dc loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xda652e8 stores 4 bytes to [0x1030] +0x1c.
  The `sw` at 0xda652f4 stores 4 bytes to [0x1030] +0x20.
  The `ldc1` at 0xda652f8 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0xda65304 stores 4 bytes to [0x1030] +0x24.
  The `sw` at 0xda65310 stores 4 bytes to [0x1030] +0x28.
  The `ldc1` at 0xda65314 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0xda65320 stores 4 bytes to [0x1030] +0x2c.
  The `sw` at 0xda6532c stores 4 bytes to [0x1030] +0x30.
  The `ldc1` at 0xda65330 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0xda6533c stores 4 bytes to [0x1030] +0x34.
  The `sw` at 0xda65348 stores 4 bytes to [0x1030] +0x38.
  The `ldc1` at 0xda6534c loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0xda65358 stores 4 bytes to [0x1030] +0x3c.
  The `sw` at 0xda65364 stores 4 bytes to [0x1030] +0x40.
  The `ldc1` at 0xda65368 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0xda65374 stores 4 bytes to [0x1030] +0x44.
  The `sw` at 0xda65380 stores 4 bytes to [0x1030] +0x48.
  The `ldc1` at 0xda65384 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xda65390 stores 4 bytes to [0x1030] +0x4c.
  The `sw` at 0xda65398 stores 4 bytes to [0x1030] +0x50.
  The `ldc1` at 0xda6539c loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0xda653a8 stores 4 bytes to [0x1030] +0x54.
  The `sw` at 0xda653b0 stores 4 bytes to [0x1030] +0x58.
  The `ldc1` at 0xda653b4 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sw` at 0xda653c0 stores 4 bytes to [0x1030] +0x5c.
  The `sw` at 0xda653c8 stores 4 bytes to [0x1030] +0x60.
  The `ldc1` at 0xda653cc loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xda653d8 stores 4 bytes to [0x1030] +0x64.
  The `sw` at 0xda653e0 stores 4 bytes to [0x1030] +0x68.
  The `ldc1` at 0xda653e4 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0xda653f0 stores 4 bytes to [0x1030] +0x6c.
  The `sw` at 0xda653f8 stores 4 bytes to [0x1030] +0x70.
  The `ldc1` at 0xda653fc loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xda6540c stores 4 bytes to [0x1030] +0x74.
  The `sw` at 0xda65414 stores 4 bytes to [0x1030] +0x78.
  The `ldc1` at 0xda65418 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0xda65424 stores 4 bytes to [0x1030] +0x7c.
  The `sw` at 0xda6542c stores 4 bytes to [0x1030] +0x80.
  The `lw` at 0xda65430 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda65434 stores 4 bytes to abs 0x1030.
  The `sw` at 0xda65438 stores 4 bytes to abs 0x1028.
  The `sw` at 0xda65440 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda65244 calls __glSPDlistSpace [0xd99726c] with a0=0x0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xda65230 targets 0xda65260, is taken when v1(=[0x1028]) >= 0x21 (signed), and falls through when v1(=[0x1028]) < 0x21 (signed); its branch-likely delay slot `lw v0,8(t3)` at 0xda65234 runs only when taken and is annulled on fall-through.
  The return at 0xda6544c has v0 = [0x1030].

- `__glkonle_Push` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6c2f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6c2f0-0xda6c354 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xda6c2f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda6c2fc loads 4 bytes from a0 (arg0 at entry) +0x4.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda6c308, `swc1` at 0xda6c348.
  The `ldc1` at 0xda6c31c loads 8 bytes from ?.
  The `sdc1` at 0xda6c330 stores 8 bytes to abs 0x4000.
  The `lwc1` at 0xda6c33c loads 4 bytes from ?.
  The `bne` branch at 0xda6c2f4 targets 0xda6c30c, is taken when (a0 & 0x4) != 0, and falls through when (a0 & 0x4) == 0.
  The `beq` branch at 0xda6c310 targets 0xda6c33c, is taken when a1(?) == at(=0x1), and falls through when a1(?) != at(=0x1).
  The `beq` branch at 0xda6c32c targets 0xda6c31c, is taken when a1(?) >= t2(=0x2) (signed), and falls through when a1(?) < t2(=0x2) (signed).
  The `beq` branch at 0xda6c334 targets 0xda6c34c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The return at 0xda6c344 has v0 = ?.
  The return at 0xda6c34c has v0 = ?.

- `__glce_Flush` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6d340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6d340-0xda6d348 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d340 targets 0xda6db08 and is always taken.

- `__glce_LoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6d590 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6d590-0xda6d598 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d590 targets 0xda6dc08 and is always taken.

- `__glce_LoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6d598 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6d598-0xda6d5a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xda6d598 targets 0xda6dc08 and is always taken.

- `glLoadMatrixf` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ed50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ed50-0xda6ed5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ed50 loads 4 bytes from abs 0x12b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ed54).

- `glLoadMatrixd` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ed5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ed5c-0xda6ed68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ed5c loads 4 bytes from abs 0x12b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ed60).

- `glBlendColorEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee04-0xda6ee10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee04 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee08).

- `glBlendEquationEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee10-0xda6ee1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee10 loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee14).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee28-0xda6ee34 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee28 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee2c).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee34-0xda6ee40 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee34 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee38).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee40-0xda6ee4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee40 loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee44).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee4c-0xda6ee58 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee4c loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee50).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee58-0xda6ee64 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee58 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee5c).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee64-0xda6ee70 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee64 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee68).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee70-0xda6ee7c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee70 loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee74).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee7c-0xda6ee88 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee7c loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee80).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee88-0xda6ee94 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee88 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee8c).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ee94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ee94-0xda6eea0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ee94 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ee98).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6eed0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6eed0-0xda6eedc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6eed0 loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6eed4).

- `glHistogramEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef24-0xda6ef30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef24 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef28).

- `glMinmaxEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef30-0xda6ef3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef30 loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef34).

- `glResetHistogramEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef3c-0xda6ef48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef3c loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef40).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef48-0xda6ef54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef48 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef4c).

- `glTexImage3DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef54-0xda6ef60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef54 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef58).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef60-0xda6ef6c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef60 loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef64).

- `glArrayElementEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef6c-0xda6ef78 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef6c loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6ef70).

- `glGetPointervEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6ef9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6ef9c-0xda6efa8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6ef9c loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6efa0).

- `glBindTextureEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6efe4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6efe4-0xda6eff0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6efe4 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6efe8).

- `glPrioritizeTexturesEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f014 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f014-0xda6f020 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f014 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f018).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f020-0xda6f02c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f020 loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f024).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f02c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f02c-0xda6f038 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f02c loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f030).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f038 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f038-0xda6f044 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f038 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f03c).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f044 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f044-0xda6f050 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f044 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f048).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f050-0xda6f05c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f050 loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f054).

- `glColorTableSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f168 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f168-0xda6f174 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f168 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f16c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f174 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f174-0xda6f180 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f174 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f178).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f180 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f180-0xda6f18c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f180 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f184).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f18c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f18c-0xda6f198 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f18c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f190).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f228 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f228-0xda6f234 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f228 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f22c).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f234 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f234-0xda6f240 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f234 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f238).

- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP35KONA/libGLcore.so` at 0xda6f258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA/libGLcore.so`.
  Range: 0xda6f258-0xda6f264 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda6f258 loads 4 bytes from abs 0x1458.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda6f25c).
