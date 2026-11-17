# Readings: `usr/gfx/arch/IP35KONA32/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `__glKonExecuteLDMA` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94b060 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd94b060-0xd94b080 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0xd94b060 loads 4 bytes from a1 (arg1 at entry) +0x14.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd94b068, `sw` at 0xd94b074, `sw` at 0xd94b07c.
  The `lw` at 0xd94b06c loads 4 bytes from [a1+20] +0x4.
  The `lw` at 0xd94b070 loads 4 bytes from [a1+20] +0x0.
  The return at 0xd94b078 has v0 = [[a1+20]].

- `__glKonExecuteLDMAn` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94b080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd94b080-0xd94b0ec (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd94b080 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd94b090 loads 4 bytes from a1 (arg1 at entry) +0x14.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd94b0a4, `sw` at 0xd94b0b8, `sw` at 0xd94b0cc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd94b0c0, `lw` at 0xd94b0c4.
  The `bne` branch at 0xd94b0d4 targets 0xd94b0c0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xd94b0dc targets 0xd94b0a0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0xd94b0e4 has v0 = ?.

- `__glKonExecuteIDMA` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94b0f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd94b0f0-0xd94b128 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0xd94b0f0 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd94b0f8 loads 4 bytes from a1 (arg1 at entry) +0x14.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd94b100, `lw` at 0xd94b104.
  3 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd94b108, `sw` at 0xd94b110, `sw` at 0xd94b11c.
  The `bne` branch at 0xd94b118 targets 0xd94b100, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0xd94b120 has v0 = ?.

- `__glKonExecuteIDMAn` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94b130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd94b130-0xd94b19c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd94b130 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0xd94b140 loads 4 bytes from a1 (arg1 at entry) +0x14.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd94b154, `sw` at 0xd94b168, `sw` at 0xd94b17c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd94b170, `lw` at 0xd94b174.
  The `bne` branch at 0xd94b184 targets 0xd94b170, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xd94b18c targets 0xd94b150, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0xd94b194 has v0 = ?.

- `__glkonim_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd94dc70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd94dc70-0xd94dc88 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd94dc74, `sw` at 0xd94dc78.
  The `lw` at 0xd94dc84 loads 4 bytes from abs 0x10100.
  The return at 0xd94dc80 has v0 = 0xc7.

- `update_cmpnd_cmd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95af20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95af20-0xd95af54 (52 bytes).
  It occupies 52 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd95af24, `sw` at 0xd95af44.
  The `lw` at 0xd95af28 loads 4 bytes from a0 (arg0 at entry) +0x151c.
  The `lw` at 0xd95af30 loads 4 bytes from a0 (arg0 at entry) +0x1518.
  The `lw` at 0xd95af38 loads 4 bytes from a0 (arg0 at entry) +0x8ac8.
  The `sw` at 0xd95af50 stores 4 bytes to a0 (arg0 at entry) +0x8ac8.
  The return at 0xd95af4c has v0 = a0+65536.

- `__glkon_SuspendSelectfeed` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95cc00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95cc00-0xd95cd18 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xd95cc08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd95cc0c loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xd95cc34 loads 4 bytes from [0x1010] +0x7b78.
  The `sw` at 0xd95cc68 stores 4 bytes to [0x1010] +0x7b88.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x1304, including `lbu` at 0xd95cc78, `lbu` at 0xd95cca4.
  The `lw` at 0xd95cc98 loads 4 bytes from [0x1010] +0x7b6c.
  The `sw` at 0xd95cca8 stores 4 bytes to [0x1010] +0x7b6c.
  The `sb` at 0xd95ccb8 stores 1 byte to [0x1010] +0x1304.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x1324, including `lbu` at 0xd95ccc8, `lbu` at 0xd95ccf4.
  The `lw` at 0xd95cce8 loads 4 bytes from [0x1010] +0x7b74.
  The `sw` at 0xd95ccf8 stores 4 bytes to [0x1010] +0x7b74.
  The `sb` at 0xd95cd08 stores 1 byte to [0x1010] +0x1324.
  The `bgezall` at 0xd95cc58 calls FinishSelectFeed [0xd95cba0] with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd95cc90 calls FinishSelectFeed [0xd95cba0] with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd95cce0 calls FinishSelectFeed [0xd95cba0] with a0=sp-32, a1=[[0x1010]+3204], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd95cc20 targets 0xd95cc78, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c01), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c01).
  The `beq` branch at 0xd95cc2c targets 0xd95ccc8, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c02), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c02).
  The `bne` branch at 0xd95cc38 targets 0xd95cc50, is taken when v1(=[[0x1010]+31608]) != 0, and falls through when v1(=[[0x1010]+31608]) == 0.
  The `bnel` branch at 0xd95cc7c targets 0xd95cc44, is taken when at(=[[0x1010]+4868]:1) != 0, and falls through when at(=[[0x1010]+4868]:1) == 0; its branch-likely delay slot `ld gp,8(sp)` at 0xd95cc80 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd95cccc targets 0xd95cc44, is taken when a0(=[[0x1010]+4900]:1) != 0, and falls through when a0(=[[0x1010]+4900]:1) == 0; its branch-likely delay slot `ld gp,8(sp)` at 0xd95ccd0 runs only when taken and is annulled on fall-through.
  The return at 0xd95cc48 has v0 = one of 0x1c01, 0x1c02.
  The return at 0xd95cc70 has v0 = ret(FinishSelectFeed).
  The return at 0xd95ccc0 has v0 = [[0x1010]+4868]:1.
  The return at 0xd95cd10 has v0 = [[0x1010]+4900]:1.

- `__glkon_ResumeSelectfeed` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95cd20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95cd20-0xd95ce18 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xd95cd20 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd95cd24 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xd95cd50 loads 4 bytes from [0x1010] +0x7b78.
  The `lw` at 0xd95cd5c loads 4 bytes from [0x1010] +0x7b88.
  The `lw` at 0xd95cd64 loads 4 bytes from [0x1010] +0x7b8c.
  The `lbu` at 0xd95cd90 loads 1 byte from [0x1010] +0x1304.
  The `lw` at 0xd95cd9c loads 4 bytes from [0x1010] +0x7b6c.
  The `lw` at 0xd95cda4 loads 4 bytes from [0x1010] +0x1310.
  The `lw` at 0xd95cda8 loads 4 bytes from [0x1010] +0x7b68.
  The `lbu` at 0xd95cdcc loads 1 byte from [0x1010] +0x1324.
  The `lw` at 0xd95cddc loads 4 bytes from [0x1010] +0x1330.
  The `lw` at 0xd95cde0 loads 4 bytes from [0x1010] +0x7b50.
  The `lw` at 0xd95cdec loads 4 bytes from [0x1010] +0x7b74.
  The `lw` at 0xd95cdf4 loads 4 bytes from [0x1010] +0x7b70.
  The `bgezall` at 0xd95cd78 calls StartSelectFeed [0xd95cb30] with a0=([[0x1010]+31608] + ([[0x1010]+31624] << 0x2)), a1=?, a2=a2 at entry (arg2), a3=[0x1010], a4=[[0x1010]+31608].
  The `bgezall` at 0xd95cdbc calls StartSelectFeed [0xd95cb30] with a0=([[0x1010]+31592] + ([[0x1010]+31596] << 0x2)), a1=?, a2=([[0x1010]+31596] << 0x2), a3=[0x1010].
  The `bgezall` at 0xd95ce08 calls StartSelectFeed [0xd95cb30] with a0=([[0x1010]+31600] + ([[0x1010]+31604] << 0x2)), a1=?, a2=[[0x1010]+31604], a3=[0x1010].
  The `beq` branch at 0xd95cd3c targets 0xd95cd90, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c01), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c01).
  The `beq` branch at 0xd95cd48 targets 0xd95cdcc, is taken when a1(=[[0x1010]+3204]) == v0(=0x1c02), and falls through when a1(=[[0x1010]+3204]) != v0(=0x1c02).
  The `beq` branch at 0xd95cd54 targets 0xd95cd84, is taken when a4(=[[0x1010]+31608]) == 0, and falls through when a4(=[[0x1010]+31608]) != 0.
  The `bne` branch at 0xd95cd94 targets 0xd95cd84, is taken when at(=[[0x1010]+4868]:1) != 0, and falls through when at(=[[0x1010]+4868]:1) == 0.
  The `beq` branch at 0xd95cdc4 targets 0xd95cd84 and is always taken.
  The `bne` branch at 0xd95cdd0 targets 0xd95cd84, is taken when at(=[[0x1010]+4900]:1) != 0, and falls through when at(=[[0x1010]+4900]:1) == 0.
  The `beq` branch at 0xd95ce10 targets 0xd95cd84 and is always taken.
  The return at 0xd95cd88 has v0 = one of 0x1c02, ret(StartSelectFeed), 0x1c01.

- `__glKon_ioctl` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd95d660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd95d660-0xd95d694 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xd95d680 loads 4 bytes from a0 (arg0 at entry) +0x7b48.
  The `jalr` at 0xd95d67c calls ioctl with a0=[a0+31560], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd95d68c has v0 = ret(ioctl).

- `__glKonSendMapSpec1D` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd97db70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd97db70-0xd97dbbc (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xd97db78 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xd97db80 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  6 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd97db84, `sw` at 0xd97db90, `sw` at 0xd97db9c.
  The `lw` at 0xd97dba8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `beq` branch at 0xd97db70 targets 0xd97db94, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xd97db7c targets 0xd97dba8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xd97db94 targets 0xd97dbb4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xd97dbac targets 0xd97db84 and is always taken.
  The `beq` branch at 0xd97dbb4 targets 0xd97db9c and is always taken.
  The return at 0xd97db8c has v0 = [a0+4].
  The return at 0xd97dba0 has v0 = ?.

- `__glKonSendMapSpec2D` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd97dbc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd97dbc0-0xd97dc04 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd97dbc8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xd97dbcc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xd97dbd0 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xd97dbd4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  8 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd97dbd8, `sw` at 0xd97dbdc, `sw` at 0xd97dbe0.
  The `beq` branch at 0xd97dbc0 targets 0xd97dbf0, is taken when a0 == 0, and falls through when a0 != 0.
  The return at 0xd97dbe8 has v0 = [a0+4].
  The return at 0xd97dbfc has v0 = ?.

- `__glKonSendMapData1D` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd97dc10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd97dc10-0xd97dcb8 (168 bytes).
  It occupies 168 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd97dc18, `sw` at 0xd97dc34, `sw` at 0xd97dc3c.
  The `lwc1` at 0xd97dc1c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xd97dc20 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd97dc24 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xd97dc28 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xd97dc2c loads 4 bytes from a0 (arg0 at entry) +0x0.
  7 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xd97dc40, `swc1` at 0xd97dc44, `swc1` at 0xd97dc48.
  The `lw` at 0xd97dc54 loads 4 bytes from a0 (arg0 at entry) +0x30.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd97dc60, `lwc1` at 0xd97dc74, `lwc1` at 0xd97dc88.
  The `beq` branch at 0xd97dc10 targets 0xd97dcb0, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0xd97dc4c targets 0xd97dcb0, is taken when a4(=[a0+44]) <= 0 (signed), and falls through when a4(=[a0+44]) > 0 (signed).
  The `beq` branch at 0xd97dc6c targets 0xd97dcb0, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0xd97dc80 targets 0xd97dcb0, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0xd97dc94 targets 0xd97dcb0, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `bne` branch at 0xd97dca8 targets 0xd97dc5c, is taken when a2(?) < a4(=[a0+44]) (signed), and falls through when a2(?) >= a4(=[a0+44]) (signed).
  The return at 0xd97dcb0 has v0 = one of ?, [a0+44]+5.

- `__glKonSendMapData2D` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd97dcc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd97dcc0-0xd97dd80 (192 bytes).
  It occupies 192 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xd97dcc8, `sw` at 0xd97dcf0, `sw` at 0xd97dcf8.
  The `lwc1` at 0xd97dccc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0xd97dcd0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwc1` at 0xd97dcd4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lwc1` at 0xd97dcd8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xd97dcdc loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xd97dce0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xd97dce4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xd97dce8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  10 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xd97dcfc, `swc1` at 0xd97dd00, `swc1` at 0xd97dd04.
  The `lw` at 0xd97dd1c loads 4 bytes from a0 (arg0 at entry) +0x30.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd97dd28, `lwc1` at 0xd97dd3c, `lwc1` at 0xd97dd50.
  The `beq` branch at 0xd97dcc0 targets 0xd97dd78, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0xd97dd14 targets 0xd97dd78, is taken when a4(=[a0+44]) <= 0 (signed), and falls through when a4(=[a0+44]) > 0 (signed).
  The `beq` branch at 0xd97dd34 targets 0xd97dd78, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0xd97dd48 targets 0xd97dd78, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `beq` branch at 0xd97dd5c targets 0xd97dd78, is taken when a2(?) >= a4(=[a0+44]) (signed), and falls through when a2(?) < a4(=[a0+44]) (signed).
  The `bne` branch at 0xd97dd70 targets 0xd97dd24, is taken when a2(?) < a4(=[a0+44]) (signed), and falls through when a2(?) >= a4(=[a0+44]) (signed).
  The return at 0xd97dd78 has v0 = one of ?, [a0+44]+8.

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

- `__glDoBlendMax` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9c4c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9c4c00-0xd9c4c6c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xd9c4c00 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xd9c4c04 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `swc1` at 0xd9c4c14 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xd9c4c18 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xd9c4c1c loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0xd9c4c2c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0xd9c4c30 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xd9c4c34 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0xd9c4c44 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xd9c4c48 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xd9c4c4c loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0xd9c4c60 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0xd9c4c0c targets 0xd9c4c18, is taken when not (f0(=[a3]) < f4(=[a2]) (c.lt.s at 0xd9c4c08)), and falls through when f0(=[a3]) < f4(=[a2]) (c.lt.s at 0xd9c4c08).
  The `bc1f` branch at 0xd9c4c24 targets 0xd9c4c30, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xd9c4c3c targets 0xd9c4c48, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xd9c4c54 targets 0xd9c4c64, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0xd9c4c5c has v0 = ?.
  The return at 0xd9c4c64 has v0 = ?.

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

- `__glChangeWindowSize` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cdb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cdb70-0xd9cdc74 (260 bytes).
  It occupies 260 bytes.
  The `sw` at 0xd9cdb78 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `sw` at 0xd9cdb7c stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The `lw` at 0xd9cdb80 loads 4 bytes from a0 (arg0 at entry) +0x77f8.
  The `lw` at 0xd9cdb94 loads 4 bytes from [a0+30712] +0x38.
  The `lbu` at 0xd9cdbb8 loads 1 byte from a0 (arg0 at entry) +0xc96.
  The `lw` at 0xd9cdbc4 loads 4 bytes from a0 (arg0 at entry) +0x77fc.
  The `lw` at 0xd9cdbc8 loads 4 bytes from [a0+30716] +0x38.
  The `lbu` at 0xd9cdbd8 loads 1 byte from a0 (arg0 at entry) +0xc98.
  The `lw` at 0xd9cdbe4 loads 4 bytes from a0 (arg0 at entry) +0x7ac8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc99, including `lbu` at 0xd9cdbf0, `lbu` at 0xd9cdc70.
  The `lw` at 0xd9cdbfc loads 4 bytes from a0 (arg0 at entry) +0x7a6c.
  The `lbu` at 0xd9cdc10 loads 1 byte from a0 (arg0 at entry) +0xc9a.
  The `lw` at 0xd9cdc1c loads 4 bytes from a0 (arg0 at entry) +0x79f4.
  The `lw` at 0xd9cdc30 loads 4 bytes from a0 (arg0 at entry) +0x2ec4.
  The `lw` at 0xd9cdc58 loads 4 bytes from a0 (arg0 at entry) +0x7af0.
  The `jalr` at 0xd9cdbb0 calls (unknown callee) with a0=[a0+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cdbd0 calls (unknown callee) with a0=[a0+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9cdc08 calls (unknown callee) with a0=a0+31284, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9cdc28 calls (unknown callee) with a0=a0+31164, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3226]:1.
  The `jalr` at 0xd9cdc3c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cdc64 calls (unknown callee) with a0=a0+31416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xd9cdbbc targets 0xd9cdbd8, is taken when v1(=[a0+3222]:1) == 0, and falls through when v1(=[a0+3222]:1) != 0.
  The `beq` branch at 0xd9cdbdc targets 0xd9cdbf0, is taken when a0(=[a0+3224]:1) == 0, and falls through when a0(=[a0+3224]:1) != 0.
  The `bne` branch at 0xd9cdbe8 targets 0xd9cdc58, is taken when a1(=[a0+31432]) != 0, and falls through when a1(=[a0+31432]) == 0.
  The `beq` branch at 0xd9cdbf4 targets 0xd9cdc10, is taken when a2(=[a0+3225]:1) == 0, and falls through when a2(=[a0+3225]:1) != 0.
  The `beq` branch at 0xd9cdc14 targets 0xd9cdc30, is taken when a3(=[a0+3226]:1) == 0, and falls through when a3(=[a0+3226]:1) != 0.
  The `beq` branch at 0xd9cdc6c targets 0xd9cdbf4 and is always taken.
  The return at 0xd9cdc50 has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cdc80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cdc80-0xd9cdc8c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xd9cdc80 stores 4 bytes to a0 (arg0 at entry) +0xe80.
  The `sw` at 0xd9cdc88 stores 4 bytes to a0 (arg0 at entry) +0xe7c.
  The return at 0xd9cdc84 has v0 = ?.

- `__glFindWindowSize` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9cdc90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9cdc90-0xd9cdd64 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd9cdca4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xd9cdcd0 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xd9cdcd4 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `lbu` at 0xd9cdcf0 loads 1 byte from a0 (arg0 at entry) +0xdd0.
  The `lw` at 0xd9cdd08 loads 4 bytes from a0 (arg0 at entry) +0xe7c.
  The `lw` at 0xd9cdd10 loads 4 bytes from a0 (arg0 at entry) +0xe80.
  The `lw` at 0xd9cdd44 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0xd9cdcc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0xd9cdce8 calls __glChangeWindowSize [0xd9cdb70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xd9cdd34 calls __glChangeReadWindowSize [0xd9cdc80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+3708], a4=[a0+3712].
  The `jalr` at 0xd9cdd50 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0xd9cdcd8 targets 0xd9cdce4, is taken when v0(=[a0+3700]) != a1(?), and falls through when v0(=[a0+3700]) == a1(?).
  The `beq` branch at 0xd9cdce0 targets 0xd9cdcf0, is taken when v1(=[a0+3704]) == a2(?), and falls through when v1(=[a0+3704]) != a2(?).
  The `beq` branch at 0xd9cdcf4 targets 0xd9cdd44, is taken when a0(=[a0+3536]:1) == 0, and falls through when a0(=[a0+3536]:1) != 0.
  The `bne` branch at 0xd9cdd0c targets 0xd9cdd30, is taken when a3(=[a0+3708]) != a1(?), and falls through when a3(=[a0+3708]) == a1(?).
  The `bne` branch at 0xd9cdd14 targets 0xd9cdd34, is taken when a4(=[a0+3712]) != a2(?), and falls through when a4(=[a0+3712]) == a2(?).
  The `beq` branch at 0xd9cdd3c targets 0xd9cdd20 and is always taken.
  The `beq` branch at 0xd9cdd5c targets 0xd9cdd08 and is always taken.
  The return at 0xd9cdd28 has v0 = one of ?, ret(__glChangeReadWindowSize).

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

- `__glim_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xd9d71c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xd9d71c0-0xd9d7218 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xd9d71c4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d71c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d71e8 loads 4 bytes from [0x1010] +0x2e30.
  The `jalr` at 0xd9d71ec calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d7208 calls __glSetError [0xd9cd900] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d71e0 targets 0xd9d7204, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xd9d7210 targets 0xd9d71f8 and is always taken.
  The return at 0xd9d71fc has v0 = one of ret(?), ret(__glSetError).

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

- `SubdivRegCreaseEdge` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda0ae30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda0ae30-0xda0af18 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0ae48, `lwc1` at 0xda0ae4c, `lwc1` at 0xda0ae90.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0ae74, `swc1` at 0xda0aea8, `swc1` at 0xda0aec4.
  The `blez` branch at 0xda0ae30 targets 0xda0af10, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0ae40 targets 0xda0ae78, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0ae70 targets 0xda0ae48, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda0ae7c targets 0xda0af10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0af08 targets 0xda0ae90, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda0af10 has v0 = ?.

- `SubdivIRRegCreaseEdge` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda0af20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda0af20-0xda0b038 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0af40, `lwc1` at 0xda0af44, `lwc1` at 0xda0af90.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0af74, `swc1` at 0xda0afb0, `swc1` at 0xda0afd4.
  The `blez` branch at 0xda0af20 targets 0xda0b030, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda0af38 targets 0xda0af78, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda0af70 targets 0xda0af40, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda0af7c targets 0xda0b030, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda0b028 targets 0xda0af90, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda0b030 has v0 = ?.

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

- `__glReCompute2DMatrix` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda37480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda37480-0xda3751c (156 bytes).
  It occupies 156 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0xda37480, `lw` at 0xda37508.
  The `lwc1` at 0xda37498 loads 4 bytes from a0 (arg0 at entry) +0x6b8.
  The `lwc1` at 0xda3749c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda374a0 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0xda374a8 stores 4 bytes to a0 (arg0 at entry) +0x746c.
  The `lwc1` at 0xda374ac loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda374b4 stores 4 bytes to a0 (arg0 at entry) +0x7470.
  The `lwc1` at 0xda374b8 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0xda374c0 stores 4 bytes to a0 (arg0 at entry) +0x747c.
  The `lwc1` at 0xda374c4 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `swc1` at 0xda374cc stores 4 bytes to a0 (arg0 at entry) +0x7480.
  The `lwc1` at 0xda374d0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0xda374d4 stores 4 bytes to a0 (arg0 at entry) +0x7494.
  The `lwc1` at 0xda374d8 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xda374dc loads 4 bytes from a0 (arg0 at entry) +0x6bc.
  The `swc1` at 0xda374e4 stores 4 bytes to a0 (arg0 at entry) +0x749c.
  The `lwc1` at 0xda374e8 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xda374ec loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `lwc1` at 0xda374f4 loads 4 bytes from abs 0xda8d028.
  The `swc1` at 0xda374f8 stores 4 bytes to a0 (arg0 at entry) +0x74a0.
  The `lwc1` at 0xda374fc loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0xda37500 stores 4 bytes to a0 (arg0 at entry) +0x74a8.
  The `swc1` at 0xda37504 stores 4 bytes to a0 (arg0 at entry) +0x74a4.
  The `sw` at 0xda37510 stores 4 bytes to a0 (arg0 at entry) +0x74ac.
  The `bne` branch at 0xda37490 targets 0xda37514, is taken when v1(=[a1+64]) < 0x2 (unsigned), and falls through when v1(=[a1+64]) >= 0x2 (unsigned).
  The return at 0xda3750c has v0 = 0x59b58.
  The return at 0xda37514 has v0 = 0x59b58.

- `Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda37800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda37800-0xda37808 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda37800 has v0 = ?.

- `__gllc_LoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda435f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda435f0-0xda43678 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda435f4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43658 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda4361c calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43654 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=0xaf, a4=ret(__glDlistAllocOp2).
  The `jalr` at 0xda43668 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49a20, a3=?.
  The `bne` branch at 0xda43624 targets 0xda4363c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43670 targets 0xda43630 and is always taken.
  The return at 0xda43634 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda43680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda43680-0xda43710 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xda43684 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda436e4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sh` at 0xda436f0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda436ac calls __glDlistAllocOp2 [0xd98f5b0] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda436ec calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=0xb0, a4=ret(__glDlistAllocOp2), a5=0x1.
  The `jalr` at 0xda43700 calls __glDlistAppendOp [0xd98f640] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda49a70, a3=?.
  The `bne` branch at 0xda436b4 targets 0xda436cc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0xda43708 targets 0xda436c0 and is always taken.
  The return at 0xda436c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glle_LoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda49a20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda49a20-0xda49a64 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda49a34 loads 4 bytes from abs 0x12b4.
  The `jalr` at 0xda49a44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda49a5c has v0 = a0+64.

- `__glle_LoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda49a70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda49a70-0xda49ab4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda49a84 loads 4 bytes from abs 0x12b8.
  The `jalr` at 0xda49a94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda49aac has v0 = a0+128.

- `__glsplc_LoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda51d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda51d10-0xda51d6c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0xda51d34 calls __glSPDlalloc [0xd94c8b0] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda51d5c calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `bne` branch at 0xda51d3c targets 0xda51d54, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `beq` branch at 0xda51d64 targets 0xda51d48 and is always taken.
  The return at 0xda51d4c has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda51d70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda51d70-0xda51dcc (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0xda51d94 calls __glSPDlalloc2 [0xd94cad0] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda51dbc calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `bne` branch at 0xda51d9c targets 0xda51db4, is taken when v0(=ret(__glSPDlalloc2)) != 0, and falls through when v0(=ret(__glSPDlalloc2)) == 0.
  The `beq` branch at 0xda51dc4 targets 0xda51da8 and is always taken.
  The return at 0xda51dac has v0 = one of ret(__glSPDlalloc2), ret(memcpy).

- `__glce_Flush` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda5b450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda5b450-0xda5b49c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda5b458 loads 4 bytes from abs 0x118c.
  The `lw` at 0xda5b460 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5b478 loads 4 bytes from [0x1010] +0x27fc.
  2 such `sw` accesses store 4 bytes to abs 0x118c, including `sw` at 0xda5b480, `sw` at 0xda5b48c.
  The `jalr` at 0xda5b47c calls glFlush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda5b494 has v0 = ret(glFlush).

- `__glce_LoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda5d570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda5d570-0xda5d5e4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda5d570 loads 4 bytes from abs 0x12b4.
  The `lw` at 0xda5d588 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5d5a0 loads 4 bytes from [0x1010] +0x1a5c.
  3 such `sw` accesses store 4 bytes to abs 0x12b4, including `sw` at 0xda5d5ac, `sw` at 0xda5d5c4, `sw` at 0xda5d5e0.
  The `lw` at 0xda5d5b8 loads 4 bytes from [0x1010] +0x2924.
  The `jalr` at 0xda5d5a8 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5d5c0 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=[[0x1010]+10532], a2=?, a3=?.
  The return at 0xda5d5dc has v0 = ret(glLoadMatrixf).

- `__glce_LoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda5d5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda5d5f0-0xda5d664 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda5d5f0 loads 4 bytes from abs 0x12b8.
  The `lw` at 0xda5d608 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5d620 loads 4 bytes from [0x1010] +0x1a60.
  3 such `sw` accesses store 4 bytes to abs 0x12b8, including `sw` at 0xda5d62c, `sw` at 0xda5d644, `sw` at 0xda5d660.
  The `lw` at 0xda5d638 loads 4 bytes from [0x1010] +0x2928.
  The `jalr` at 0xda5d628 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5d640 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=[[0x1010]+10536], a2=?, a3=?.
  The return at 0xda5d65c has v0 = ret(glLoadMatrixd).

- `__glkonim_LoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda66a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda66a00-0xda66a8c (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0xda66a04 stores 4 bytes to abs 0x4000.
  The `lwc1` at 0xda66a08 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lwc1` at 0xda66a0c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lwc1` at 0xda66a10 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `lwc1` at 0xda66a14 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lwc1` at 0xda66a18 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lwc1` at 0xda66a1c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0xda66a20 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lwc1` at 0xda66a24 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lwc1` at 0xda66a28 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xda66a2c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwc1` at 0xda66a30 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lwc1` at 0xda66a34 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lwc1` at 0xda66a38 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lwc1` at 0xda66a3c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xda66a40 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda66a44 loads 4 bytes from a0 (arg0 at entry) +0x4.
  16 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda66a48, `swc1` at 0xda66a4c, `swc1` at 0xda66a50.
  The return at 0xda66a84 has v0 = ?.

- `__glkonim_LoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda66a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda66a90-0xda66b1c (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0xda66a94 stores 4 bytes to abs 0x4000.
  The `ldc1` at 0xda66a98 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ldc1` at 0xda66a9c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `ldc1` at 0xda66aa0 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `ldc1` at 0xda66aa4 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ldc1` at 0xda66aa8 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ldc1` at 0xda66aac loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ldc1` at 0xda66ab0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ldc1` at 0xda66ab4 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ldc1` at 0xda66ab8 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ldc1` at 0xda66abc loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ldc1` at 0xda66ac0 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ldc1` at 0xda66ac4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ldc1` at 0xda66ac8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ldc1` at 0xda66acc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xda66ad0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xda66ad4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  16 such `sdc1` accesses store 8 bytes to abs 0x4000, including `sdc1` at 0xda66ad8, `sdc1` at 0xda66adc, `sdc1` at 0xda66ae0.
  The return at 0xda66b14 has v0 = ?.

- `__glkonlc_LoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda6f350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda6f350-0xda6f44c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xda6f350 loads 4 bytes from abs 0x1028.
  The `lw` at 0xda6f378 loads 4 bytes from abs 0x1030.
  The `sw` at 0xda6f380 stores 4 bytes to [0x1030] +0x0.
  The `lwc1` at 0xda6f384 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda6f388 stores 4 bytes to [0x1030] +0x4.
  The `lwc1` at 0xda6f38c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda6f390 stores 4 bytes to [0x1030] +0x8.
  The `lwc1` at 0xda6f394 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda6f398 stores 4 bytes to [0x1030] +0xc.
  The `lwc1` at 0xda6f39c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda6f3a0 stores 4 bytes to [0x1030] +0x10.
  The `lwc1` at 0xda6f3a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `swc1` at 0xda6f3a8 stores 4 bytes to [0x1030] +0x14.
  The `lwc1` at 0xda6f3ac loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `swc1` at 0xda6f3b0 stores 4 bytes to [0x1030] +0x18.
  The `lwc1` at 0xda6f3b4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `swc1` at 0xda6f3b8 stores 4 bytes to [0x1030] +0x1c.
  The `lwc1` at 0xda6f3bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `swc1` at 0xda6f3c0 stores 4 bytes to [0x1030] +0x20.
  The `lwc1` at 0xda6f3c4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `swc1` at 0xda6f3c8 stores 4 bytes to [0x1030] +0x24.
  The `lwc1` at 0xda6f3cc loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `swc1` at 0xda6f3d0 stores 4 bytes to [0x1030] +0x28.
  The `lwc1` at 0xda6f3d4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `swc1` at 0xda6f3d8 stores 4 bytes to [0x1030] +0x2c.
  The `lwc1` at 0xda6f3dc loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `swc1` at 0xda6f3e0 stores 4 bytes to [0x1030] +0x30.
  The `lwc1` at 0xda6f3e4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `swc1` at 0xda6f3e8 stores 4 bytes to [0x1030] +0x34.
  The `lwc1` at 0xda6f3ec loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `swc1` at 0xda6f3f0 stores 4 bytes to [0x1030] +0x38.
  The `lwc1` at 0xda6f3f4 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `swc1` at 0xda6f3fc stores 4 bytes to [0x1030] +0x3c.
  The `lwc1` at 0xda6f400 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `swc1` at 0xda6f408 stores 4 bytes to [0x1030] +0x40.
  The `sw` at 0xda6f410 stores 4 bytes to abs 0x1030.
  The `lw` at 0xda6f414 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda6f41c stores 4 bytes to abs 0x1028.
  The `sw` at 0xda6f42c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda6f438 calls __glSPDlistSpace [0xd993f00] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda6f370 targets 0xda6f430, is taken when a3(=[0x1028]) < 0x11 (signed), and falls through when a3(=[0x1028]) >= 0x11 (signed).
  The `beq` branch at 0xda6f444 targets 0xda6f378 and is always taken.
  The return at 0xda6f428 has v0 = [0x1034]+17.

- `__glkonlc_LoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda6f450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda6f450-0xda6f64c (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0xda6f450 loads 4 bytes from abs 0x1028.
  The `lw` at 0xda6f478 loads 4 bytes from abs 0x1030.
  The `sw` at 0xda6f480 stores 4 bytes to [0x1030] +0x0.
  The `ldc1` at 0xda6f484 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda6f494 stores 4 bytes to [0x1030] +0x8.
  The `sw` at 0xda6f498 stores 4 bytes to [0x1030] +0x4.
  The `ldc1` at 0xda6f49c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda6f4ac stores 4 bytes to [0x1030] +0x10.
  The `sw` at 0xda6f4b0 stores 4 bytes to [0x1030] +0xc.
  The `ldc1` at 0xda6f4b4 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0xda6f4c4 stores 4 bytes to [0x1030] +0x18.
  The `sw` at 0xda6f4c8 stores 4 bytes to [0x1030] +0x14.
  The `ldc1` at 0xda6f4cc loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xda6f4dc stores 4 bytes to [0x1030] +0x20.
  The `sw` at 0xda6f4e0 stores 4 bytes to [0x1030] +0x1c.
  The `ldc1` at 0xda6f4e4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0xda6f4f4 stores 4 bytes to [0x1030] +0x28.
  The `sw` at 0xda6f4f8 stores 4 bytes to [0x1030] +0x24.
  The `ldc1` at 0xda6f4fc loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sw` at 0xda6f50c stores 4 bytes to [0x1030] +0x30.
  The `sw` at 0xda6f510 stores 4 bytes to [0x1030] +0x2c.
  The `ldc1` at 0xda6f514 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0xda6f524 stores 4 bytes to [0x1030] +0x38.
  The `sw` at 0xda6f528 stores 4 bytes to [0x1030] +0x34.
  The `ldc1` at 0xda6f52c loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0xda6f53c stores 4 bytes to [0x1030] +0x40.
  The `sw` at 0xda6f540 stores 4 bytes to [0x1030] +0x3c.
  The `ldc1` at 0xda6f544 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0xda6f554 stores 4 bytes to [0x1030] +0x48.
  The `sw` at 0xda6f558 stores 4 bytes to [0x1030] +0x44.
  The `ldc1` at 0xda6f55c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xda6f56c stores 4 bytes to [0x1030] +0x50.
  The `sw` at 0xda6f570 stores 4 bytes to [0x1030] +0x4c.
  The `ldc1` at 0xda6f574 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0xda6f584 stores 4 bytes to [0x1030] +0x58.
  The `sw` at 0xda6f588 stores 4 bytes to [0x1030] +0x54.
  The `ldc1` at 0xda6f58c loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sw` at 0xda6f59c stores 4 bytes to [0x1030] +0x60.
  The `sw` at 0xda6f5a0 stores 4 bytes to [0x1030] +0x5c.
  The `ldc1` at 0xda6f5a4 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xda6f5b4 stores 4 bytes to [0x1030] +0x68.
  The `sw` at 0xda6f5b8 stores 4 bytes to [0x1030] +0x64.
  The `ldc1` at 0xda6f5bc loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0xda6f5cc stores 4 bytes to [0x1030] +0x70.
  The `sw` at 0xda6f5d0 stores 4 bytes to [0x1030] +0x6c.
  The `ldc1` at 0xda6f5d4 loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xda6f5e8 stores 4 bytes to [0x1030] +0x78.
  The `sw` at 0xda6f5ec stores 4 bytes to [0x1030] +0x74.
  The `ldc1` at 0xda6f5f0 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sw` at 0xda6f604 stores 4 bytes to [0x1030] +0x7c.
  The `sw` at 0xda6f608 stores 4 bytes to [0x1030] +0x80.
  The `sw` at 0xda6f610 stores 4 bytes to abs 0x1030.
  The `lw` at 0xda6f614 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda6f61c stores 4 bytes to abs 0x1028.
  The `sw` at 0xda6f62c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda6f638 calls __glSPDlistSpace [0xd993f00] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028].
  The `bne` branch at 0xda6f470 targets 0xda6f630, is taken when a3(=[0x1028]) < 0x21 (signed), and falls through when a3(=[0x1028]) >= 0x21 (signed).
  The `beq` branch at 0xda6f644 targets 0xda6f478 and is always taken.
  The return at 0xda6f628 has v0 = [0x1034]+33.

- `glLoadMatrixf` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78c10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78c10-0xda78c1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78c10 loads 4 bytes from abs 0x12b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78c14).

- `glLoadMatrixd` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78c1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78c1c-0xda78c28 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78c1c loads 4 bytes from abs 0x12b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78c20).

- `glBlendColorEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78cc4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78cc4-0xda78cd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78cc4 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78cc8).

- `glBlendEquationEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78cd0-0xda78cdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78cd0 loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78cd4).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78ce8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78ce8-0xda78cf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78ce8 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78cec).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78cf4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78cf4-0xda78d00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78cf4 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78cf8).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d00-0xda78d0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d00 loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d04).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d0c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d0c-0xda78d18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d0c loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d10).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d18-0xda78d24 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d18 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d1c).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d24 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d24-0xda78d30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d24 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d28).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d30-0xda78d3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d30 loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d34).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d3c-0xda78d48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d3c loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d40).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d48 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d48-0xda78d54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d48 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d4c).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d54 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d54-0xda78d60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d54 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d58).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78d90-0xda78d9c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78d90 loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78d94).

- `glHistogramEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78de4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78de4-0xda78df0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78de4 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78de8).

- `glMinmaxEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78df0-0xda78dfc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78df0 loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78df4).

- `glResetHistogramEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78dfc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78dfc-0xda78e08 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78dfc loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78e00).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78e08 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78e08-0xda78e14 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78e08 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78e0c).

- `glTexImage3DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78e14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78e14-0xda78e20 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78e14 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78e18).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78e20-0xda78e2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78e20 loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78e24).

- `glArrayElementEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78e2c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78e2c-0xda78e38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78e2c loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78e30).

- `glGetPointervEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78e5c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78e5c-0xda78e68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78e5c loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78e60).

- `glBindTextureEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78ea4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78ea4-0xda78eb0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78ea4 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78ea8).

- `glPrioritizeTexturesEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78ed4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78ed4-0xda78ee0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78ed4 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78ed8).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78ee0-0xda78eec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78ee0 loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78ee4).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78eec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78eec-0xda78ef8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78eec loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78ef0).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78ef8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78ef8-0xda78f04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78ef8 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78efc).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78f04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78f04-0xda78f10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78f04 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78f08).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda78f10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda78f10-0xda78f1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda78f10 loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda78f14).

- `glColorTableSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda79028 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda79028-0xda79034 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda79028 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda7902c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda79034 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda79034-0xda79040 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda79034 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda79038).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda79040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda79040-0xda7904c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda79040 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda79044).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda7904c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda7904c-0xda79058 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda7904c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda79050).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda790e8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda790e8-0xda790f4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda790e8 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda790ec).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda790f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda790f4-0xda79100 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda790f4 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda790f8).

- `glInstrumentsBufferSGIX` in `usr/gfx/arch/IP35KONA32/libGLcore.so` at 0xda79118 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35KONA32/libGLcore.so`.
  Range: 0xda79118-0xda79124 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xda79118 loads 4 bytes from abs 0x1458.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xda7911c).
