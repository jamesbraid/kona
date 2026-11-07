# Instruction readings from hostfacts

These readings summarize selected memory accesses, calls, branches and returns from each routine body. Every instruction claim cites its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped 7,827 located, 12,633 understood, and 8 no-software-dependency rows by status, 1,458 rows with existing exact entries, and 0 undocumented rows; 32,383 eligible targets remained after these first 250.

- `fcg_venice_get_vcreg` in `usr/gfx/gfxinfo` at 0x1000f72c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000f72c-0x1000f760 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1000f738 loads 4 bytes from abs 0x10027798.
  The `lw` at 0x1000f740 loads 4 bytes from sym(ven_gfxvaddr) +0x0.
  The `lw` at 0x1000f75c loads 4 bytes from ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000.
  The return at 0x1000f758 has v0 = [([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192].

- `fcg_venice_set_vcreg` in `usr/gfx/gfxinfo` at 0x1000f760 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000f760-0x1000f794 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1000f76c loads 4 bytes from abs 0x10027798.
  The `lw` at 0x1000f774 loads 4 bytes from sym(ven_gfxvaddr) +0x0.
  The `sw` at 0x1000f790 stores 4 bytes to ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000.
  The return at 0x1000f78c has v0 = ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192.

- `venice_get_vcreg` in `usr/gfx/gfxinfo` at 0x1000fcb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000fcb4-0x1000fce8 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1000fcd0 calls fcg_venice_get_vcreg [0x1000f72c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000fce0 has v0 = ret(fcg_venice_get_vcreg).

- `venice_set_vcreg` in `usr/gfx/gfxinfo` at 0x1000fce8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1000fce8-0x1000fd1c (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1000fd04 calls fcg_venice_set_vcreg [0x1000f760] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000fd14 has v0 = ret(fcg_venice_set_vcreg).

- `vs2RegisterSetBit` in `usr/gfx/gfxinfo` at 0x100183c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x100183c8-0x1001842c (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x100183f4 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018410 calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x10018424 has v0 = ret(vs2WriteByte).

- `vs2WriteXilinxReg` in `usr/gfx/gfxinfo` at 0x100188c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x100188c8-0x100188e0 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x100188c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sb` at 0x100188dc stores 1 byte to ((a2 + (a1 + [a0+4])) << 0x0) +0x0.
  The return at 0x100188d8 has v0 = ?.

- `vs2ReadDACCommandRegister` in `usr/gfx/gfxinfo` at 0x1001c4f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1001c4f8-0x1001c55c (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x1001c524 calls (unnamed) [0x1001c67c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c540 calls vs2ReadByte [0x1001834c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x1001c554 has v0 = ret(vs2ReadByte).

- `vs2WriteDACCommandRegister` in `usr/gfx/gfxinfo` at 0x1001c55c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/gfxinfo`.
  Range: 0x1001c55c-0x1001c5c8 (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x1001c58c calls (unnamed) [0x1001c67c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c5ac calls vs2WriteByte [0x10018864] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The return at 0x1001c5c0 has v0 = ret(vs2WriteByte).

- `venice_get_vcreg` in `usr/gfx/setmon` at 0x1000ff38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000ff38-0x1000ff6c (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1000ff54 calls fcg_venice_get_vcreg [0x100110d4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff64 has v0 = ret(fcg_venice_get_vcreg).

- `venice_set_vcreg` in `usr/gfx/setmon` at 0x1000ff6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000ff6c-0x1000ffa0 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1000ff88 calls fcg_venice_set_vcreg [0x10011108] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff98 has v0 = ret(fcg_venice_set_vcreg).

- `fcg_venice_get_vcreg` in `usr/gfx/setmon` at 0x100110d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100110d4-0x10011108 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100110e0 loads 4 bytes from abs 0x10041d90.
  The `lw` at 0x100110e8 loads 4 bytes from sym(ven_gfxvaddr) +0x0.
  The `lw` at 0x10011104 loads 4 bytes from ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000.
  The return at 0x10011100 has v0 = [([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192].

- `fcg_venice_set_vcreg` in `usr/gfx/setmon` at 0x10011108 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011108-0x1001113c (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10011114 loads 4 bytes from abs 0x10041d90.
  The `lw` at 0x1001111c loads 4 bytes from sym(ven_gfxvaddr) +0x0.
  The `sw` at 0x10011138 stores 4 bytes to ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000.
  The return at 0x10011134 has v0 = ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192.

- `vs2WriteXilinxReg` in `usr/gfx/setmon` at 0x1001316c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001316c-0x10013184 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001316c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sb` at 0x10013180 stores 1 byte to ((a2 + (a1 + [a0+4])) << 0x0) +0x0.
  The return at 0x1001317c has v0 = ?.

- `vs2ReadDACCommandRegister` in `usr/gfx/setmon` at 0x10016d9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016d9c-0x10016e00 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x10016dc8 calls (unnamed) [0x10016f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016de4 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10016df8 has v0 = ret(vs2ReadByte).

- `vs2WriteDACCommandRegister` in `usr/gfx/setmon` at 0x10016e00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016e00-0x10016e6c (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x10016e30 calls (unnamed) [0x10016f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016e50 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The return at 0x10016e64 has v0 = ret(vs2WriteByte).

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0934 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c09d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_AsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0a4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9c0a4c-0xd9c0bec (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd9c0a78 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c0a88 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x17e8, including `lw` at 0xd9c0aa4, `lw` at 0xd9c0aec.
  The `lw` at 0xd9c0aa8 loads 4 bytes from [0x1010] +0x17f0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x17ec, including `lw` at 0xd9c0abc, `lw` at 0xd9c0ac8.
  The `lw` at 0xd9c0ad4 loads 4 bytes from [[0x1010]+6124] +0x0.
  The `lw` at 0xd9c0b34 loads 4 bytes from [0x1010] +0x4.
  The `lw` at 0xd9c0b78 loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xd9c0b84 stores 4 bytes to ret(?) +0x0.
  The `sw` at 0xd9c0bb8 stores 4 bytes to ret(?) +0x4.
  The `lw` at 0xd9c0bbc loads 4 bytes from ret(__glNamesLockData) +0x0.
  The `sw` at 0xd9c0bc4 stores 4 bytes to ret(__glNamesLockData) +0x0.
  The `sw` at 0xd9c0bc8 stores 4 bytes to [0x1010] +0x17e8.
  The `sw` at 0xd9c0bcc stores 4 bytes to [0x1010] +0x17ec.
  The `jalr` at 0xd9c0a94 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0ac0 calls __glNamesUnlockData [0xd9f5084] with a0=[0x1010], a1=[[0x1010]+6124], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0af0 calls __glNamesDeleteRange [0xd9f54c0] with a0=[0x1010], a1=[[0x1010]+6128], a2=[[0x1010]+6120], a3=0x1.
  The `jalr` at 0xd9c0b08 calls __glNamesLockData [0xd9f4640] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd9c0b28 calls __glNamesIsName [0xd9f58d8] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0xd9c0b44 calls (unknown callee) with a0=[0x1010], a1=0x1, a2=0x8, a3=?.
  The `jalr` at 0xd9c0b64 calls __glNamesNewData [0xd9f40bc] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=ret(?).
  The `jalr` at 0xd9c0ba0 calls __glNamesDeleteRange [0xd9f54c0] with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=0x1.
  The `bne` branch at 0xd9c0a84 targets 0xd9c0aa4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9c0a9c targets 0xd9c0bd0 and is always taken.
  The `beql` branch at 0xd9c0aac targets 0xd9c0bd4, is taken when s3(=a0) == t7(=[[0x1010]+6120]), and falls through when s3(=a0) != t7(=[[0x1010]+6120]); its branch-likely delay slot `lw ra,44(sp)` at 0xd9c0ab0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9c0adc targets 0xd9c0afc, is taken when t9(=[[[0x1010]+6124]]) >= 0x2 (signed), and falls through when t9(=[[[0x1010]+6124]]) < 0x2 (signed).
  The `bne` branch at 0xd9c0b14 targets 0xd9c0bbc, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `bne` branch at 0xd9c0b8c targets 0xd9c0bb0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0xd9c0bb4 targets 0xd9c0bc8 and is always taken.
  The return at 0xd9c0be4 has v0 = one of 0x1000, ?.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0bec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_FinishAsyncSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0c90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9c0c90-0xd9c0d50 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd9c0cb0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c0cb8 loads 4 bytes from abs 0x1010.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x17f4, including `lw` at 0xd9c0ce4, `lw` at 0xd9c0d08, `lw` at 0xd9c0d24.
  2 such `lw` accesses load 4 bytes from [[0x1010]+6132] +0x484, including `lw` at 0xd9c0cec, `lw` at 0xd9c0d28.
  The `lw` at 0xd9c0d0c loads 4 bytes from [[0x1010]+6132] +0x138.
  The `jalr` at 0xd9c0ccc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0cf0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0d10 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9c0d2c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd9c0cbc targets 0xd9c0ce4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `sw v1,32(sp)` at 0xd9c0cc0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9c0cd8 targets 0xd9c0d40 and is always taken.
  The `bne` branch at 0xd9c0cfc targets 0xd9c0d3c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The return at 0xd9c0d48 has v0 = one of 0x0, ret(?).
  The instructions from 0xd9c0ce0 to 0xd9c0ce0 are not reached by any path from the entry, and their branches are not listed.

- `__glim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1054 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9c1054-0xd9c114c (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xd9c1070 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c1078 loads 4 bytes from abs 0x1010.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x72c, including `sw` at 0xd9c10b8, `sw` at 0xd9c1108, `sw` at 0xd9c1124.
  The `lw` at 0xd9c10f0 loads 4 bytes from table(0xda77c64) +0x0.
  The `sw` at 0xd9c112c stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9c1130 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9c1138 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9c108c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c1114 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9c107c targets 0xd9c10a0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x800c` at 0xd9c1080 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9c1094 targets 0xd9c113c and is always taken.
  The `bne` branch at 0xd9c10a4 targets 0xd9c10c4, is taken when a0 < at(=0x800c) (unsigned), and falls through when a0 >= at(=0x800c) (unsigned).
  The `beq` branch at 0xd9c10ac targets 0xd9c1124, is taken when a0 == at(=0x8320), and falls through when a0 != at(=0x8320).
  The `beql` branch at 0xd9c10b4 targets 0xd9c1128, is taken when a0 == at(=0x8321), and falls through when a0 != at(=0x8321); its branch-likely delay slot `sw a0,1836(v1)` at 0xd9c10b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9c10bc targets 0xd9c110c and is always taken.
  The `bne` branch at 0xd9c10c8 targets 0xd9c1100, is taken when a0 < 0xbf2 (unsigned), and falls through when a0 >= 0xbf2 (unsigned).
  The `beq` branch at 0xd9c10dc targets 0xd9c110c, is taken when t7(=a0-32774) >= 0x6 (unsigned), and falls through when t7(=a0-32774) < 0x6 (unsigned).
  The `beql` branch at 0xd9c1104 targets 0xd9c1128, is taken when a0 == at(=0xbf1), and falls through when a0 != at(=0xbf1); its branch-likely delay slot `sw a0,1836(v1)` at 0xd9c1108 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9c111c targets 0xd9c113c and is always taken.
  The return at 0xd9c1144 has v0 = one of ret(__glSetError), 0x1000.
  The instructions from 0xd9c109c to 0xd9c109c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd9c10f8 uses the jump table at 0xda77c64 with targets 0xd9c1124, 0xd9c1124, 0xd9c1124, 0xd9c110c, 0xd9c1124, 0xd9c1124.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c7e74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c7fa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_Bitmap` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c8f60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9c8f60-0xd9c90a0 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd9c8f88 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9c8f9c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9c8fb8 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9c8fd4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9c8fe4 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xd9c8ff0 loads 4 bytes from [[0x1010]+6132] +0x20.
  The `lw` at 0xd9c9074 loads 4 bytes from [0x1010] +0x3114.
  The `jalr` at 0xd9c8fc0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c9004 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9c901c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c9048 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c9080 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0xd9c8f98 targets 0xd9c902c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9c8fa4 targets 0xd9c9014, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9c900c targets 0xd9c908c and is always taken.
  The `beq` branch at 0xd9c9024 targets 0xd9c908c and is always taken.
  The `bltz` branch at 0xd9c9030 targets 0xd9c9040, is taken when t8(=a0) < 0 (signed), and falls through when t8(=a0) >= 0 (signed).
  The `bgezl` branch at 0xd9c9038 targets 0xd9c905c, is taken when a2(=a1) >= 0 (signed), and falls through when a2(=a1) < 0 (signed); its branch-likely delay slot `lwc1 $f8,64(sp)` at 0xd9c903c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9c9050 targets 0xd9c908c and is always taken.
  The return at 0xd9c9098 has v0 = one of ret(?), ret(__glSetError).
  The instructions from 0xd9c9058 to 0xd9c9058 are not reached by any path from the entry, and their branches are not listed.

- `__glim_Clear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cc890 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cc890-0xd9ccaa0 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0xd9cc8b4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cc8b8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cc8d4 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9cc8e8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9cc924 loads 4 bytes from [0x1010] +0xc84.
  The `lw` at 0xd9cc95c loads 4 bytes from [0x1010] +0x760.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x77f8, including `lw` at 0xd9cc980, `lw` at 0xd9cc98c.
  2 such `lw` accesses load 4 bytes from [[0x1010]+30712] +0xd8, including `lw` at 0xd9cc990, `lw` at 0xd9cc9cc.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc96, including `lbu` at 0xd9cc9a4, `lbu` at 0xd9cc9d8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x77fc, including `lw` at 0xd9cc9b0, `lw` at 0xd9cc9e8.
  2 such `lw` accesses load 4 bytes from [[0x1010]+30716] +0xd8, including `lw` at 0xd9cc9b4, `lw` at 0xd9cc9ec.
  The `lbu` at 0xd9cca0c loads 1 byte from [0x1010] +0xc98.
  The `lw` at 0xd9cca18 loads 4 bytes from [0x1010] +0x7b24.
  The `lbu` at 0xd9cca3c loads 1 byte from [0x1010] +0xc9a.
  The `lw` at 0xd9cca48 loads 4 bytes from [0x1010] +0x7a30.
  The `lbu` at 0xd9cca6c loads 1 byte from [0x1010] +0xc99.
  The `lw` at 0xd9cca78 loads 4 bytes from [0x1010] +0x7aac.
  The `jalr` at 0xd9cc8dc calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc8f4 calls glClear with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cc90c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc930 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc994 calls (unknown callee) with a0=[[0x1010]+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc9b8 calls (unknown callee) with a0=[[0x1010]+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc9d0 calls (unknown callee) with a0=[[0x1010]+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc9f0 calls (unknown callee) with a0=[[0x1010]+30716], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cca20 calls (unknown callee) with a0=[0x1010]+31416, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cca50 calls (unknown callee) with a0=[0x1010]+31164, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cca80 calls (unknown callee) with a0=[0x1010]+31284, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd9cc8c0 targets 0xd9cc91c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9cc8cc targets 0xd9cc904, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9cc8fc targets 0xd9cca8c and is always taken.
  The `beq` branch at 0xd9cc914 targets 0xd9cca8c and is always taken.
  The `beql` branch at 0xd9cc920 targets 0xd9cc944, is taken when (t6(=a0) & at(=-0x4701)) == 0, and falls through when (t6(=a0) & at(=-0x4701)) != 0; its branch-likely delay slot `lw t8,3204(s0)` at 0xd9cc924 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cc938 targets 0xd9cca8c and is always taken.
  The `bne` branch at 0xd9cc94c targets 0xd9cca8c, is taken when t8(=[[0x1010]+3204]) != at(=0x1c00), and falls through when t8(=[[0x1010]+3204]) == at(=0x1c00).
  The `beql` branch at 0xd9cc954 targets 0xd9cca00, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `lw t4,32(sp)` at 0xd9cc958 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cc964 targets 0xd9cca00, is taken when v0(=[[0x1010]+1888]) == 0, and falls through when v0(=[[0x1010]+1888]) != 0; its branch-likely delay slot `lw t4,32(sp)` at 0xd9cc968 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cc96c targets 0xd9cc98c, is taken when v0(=[[0x1010]+1888]) == at(=0x404), and falls through when v0(=[[0x1010]+1888]) != at(=0x404).
  The `beq` branch at 0xd9cc974 targets 0xd9cc9a4, is taken when v0(=[[0x1010]+1888]) == at(=0x405), and falls through when v0(=[[0x1010]+1888]) != at(=0x405).
  The `beql` branch at 0xd9cc97c targets 0xd9cc9cc, is taken when v0(=[[0x1010]+1888]) == at(=0x408), and falls through when v0(=[[0x1010]+1888]) != at(=0x408); its branch-likely delay slot `lw a0,30712(s0)` at 0xd9cc980 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cc984 targets 0xd9cca00 and is always taken.
  The `beq` branch at 0xd9cc99c targets 0xd9cc9fc and is always taken.
  The `beql` branch at 0xd9cc9a8 targets 0xd9cca00, is taken when t2(=[[0x1010]+3222]:1) == 0, and falls through when t2(=[[0x1010]+3222]:1) != 0; its branch-likely delay slot `lw t4,32(sp)` at 0xd9cc9ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cc9c0 targets 0xd9cc9fc and is always taken.
  The `beql` branch at 0xd9cc9e0 targets 0xd9cca00, is taken when t3(=[[0x1010]+3222]:1) == 0, and falls through when t3(=[[0x1010]+3222]:1) != 0; its branch-likely delay slot `lw t4,32(sp)` at 0xd9cc9e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cca04 targets 0xd9cca30, is taken when (t4(=a0) & 0x200) == 0, and falls through when (t4(=a0) & 0x200) != 0; its branch-likely delay slot `lw t7,32(sp)` at 0xd9cca08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cca10 targets 0xd9cca30, is taken when t6(=[[0x1010]+3224]:1) == 0, and falls through when t6(=[[0x1010]+3224]:1) != 0; its branch-likely delay slot `lw t7,32(sp)` at 0xd9cca14 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cca34 targets 0xd9cca60, is taken when (t7(=a0) & 0x400) == 0, and falls through when (t7(=a0) & 0x400) != 0; its branch-likely delay slot `lw t1,32(sp)` at 0xd9cca38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cca40 targets 0xd9cca60, is taken when t0(=[[0x1010]+3226]:1) == 0, and falls through when t0(=[[0x1010]+3226]:1) != 0; its branch-likely delay slot `lw t1,32(sp)` at 0xd9cca44 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cca64 targets 0xd9cca90, is taken when (t1(=a0) & 0x100) == 0, and falls through when (t1(=a0) & 0x100) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9cca68 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9cca70 targets 0xd9cca90, is taken when t3(=[[0x1010]+3225]:1) == 0, and falls through when t3(=[[0x1010]+3225]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9cca74 runs only when taken and is annulled on fall-through.
  The return at 0xd9cca98 has v0 = ?.
  The instructions from 0xd9cc940 to 0xd9cc940 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd9cc9c8 to 0xd9cc9c8 are not reached by any path from the entry, and their branches are not listed.

- `__glim_ColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cecec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cecec-0xd9cee5c (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xd9ced1c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9ced20 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9ced38 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9ced50, `sw` at 0xd9cee34.
  The `lw` at 0xd9cee1c loads 4 bytes from [0x1010] +0x31b0.
  The `lw` at 0xd9cee38 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9cee44 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9ced40 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ced5c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ced8c calls __glCheckColorTableArgs [0xd9ce260] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd9ceddc calls __glSetError [0xd9d1af8] with a0=ret(__glCheckColorTableArgs), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9cedf0 calls __glSetError [0xd9d1af8] with a0=ret(__glCheckColorTableArgs), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9cee28 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=a2 at entry (arg2).
  The `beq` branch at 0xd9ced28 targets 0xd9ced6c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9ced30 targets 0xd9ced54, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9ced4c targets 0xd9ced6c and is always taken.
  The `beq` branch at 0xd9ced64 targets 0xd9cee48 and is always taken.
  The `beq` branch at 0xd9ced9c targets 0xd9cee00, is taken when v0(=ret(__glCheckColorTableArgs)) == 0, and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9ceda8 targets 0xd9cedc4, is taken when a1(=a0) == at(=0x80bd), and falls through when a1(=a0) != at(=0x80bd).
  The `beq` branch at 0xd9cedb0 targets 0xd9cedc4, is taken when a1(=a0) == at(=0x80d3), and falls through when a1(=a0) != at(=0x80d3).
  The `beq` branch at 0xd9cedb8 targets 0xd9cedc4, is taken when a1(=a0) == at(=0x80d4), and falls through when a1(=a0) != at(=0x80d4).
  The `bne` branch at 0xd9cedc0 targets 0xd9cedec, is taken when a1(=a0) != at(=0x80d5), and falls through when a1(=a0) == at(=0x80d5).
  The `bne` branch at 0xd9cedc8 targets 0xd9cedd8, is taken when v0(=ret(__glCheckColorTableArgs)) != at(=0x8031), and falls through when v0(=ret(__glCheckColorTableArgs)) == at(=0x8031).
  The `beq` branch at 0xd9cedd0 targets 0xd9cee00 and is always taken.
  The `beq` branch at 0xd9cede4 targets 0xd9cee48 and is always taken.
  The `beq` branch at 0xd9cedf8 targets 0xd9cee48 and is always taken.
  The return at 0xd9cee54 has v0 = one of ret(__glSetError), ret(?).

- `__glim_ColorSubTable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf0bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cf0bc-0xd9cf1f4 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xd9cf0ec loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cf0f0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf108 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9cf120, `sw` at 0xd9cf1cc.
  The `lw` at 0xd9cf1b4 loads 4 bytes from [0x1010] +0x31b4.
  The `lw` at 0xd9cf1d0 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9cf1dc stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9cf110 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf12c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf15c calls __glCheckColorSubTableArgs [0xd9ce574] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf174 calls __glSetError [0xd9d1af8] with a0=ret(__glCheckColorSubTableArgs), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cf1c0 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9cf0f8 targets 0xd9cf13c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9cf100 targets 0xd9cf124, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9cf11c targets 0xd9cf13c and is always taken.
  The `beq` branch at 0xd9cf134 targets 0xd9cf1e0 and is always taken.
  The `beq` branch at 0xd9cf168 targets 0xd9cf184, is taken when v0(=ret(__glCheckColorSubTableArgs)) == 0, and falls through when v0(=ret(__glCheckColorSubTableArgs)) != 0.
  The `beq` branch at 0xd9cf17c targets 0xd9cf1e0 and is always taken.
  The `beql` branch at 0xd9cf18c targets 0xd9cf1e4, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd9cf190 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cf194 targets 0xd9cf1e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd9cf1ec has v0 = ?.

- `__glim_GetColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf1f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cf1f4-0xd9cf460 (620 bytes).
  It occupies 620 bytes.
  The `lw` at 0xd9cf224 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cf228 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf240 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9cf258 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9cf2e4 loads 4 bytes from table(0xda78b98) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9cf378, `lw` at 0xd9cf384, `lw` at 0xd9cf39c.
  The `lw` at 0xd9cf430 loads 4 bytes from [0x1010] +0x3154.
  The `jalr` at 0xd9cf248 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf264 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf294 calls __glCheckColorTableArgs [0xd9ce260] with a0=[0x1010], a1=a0 at entry (arg0), a2=0x1907, a3=0x0.
  The `jalr` at 0xd9cf2ac calls __glSetError [0xd9d1af8] with a0=ret(__glCheckColorTableArgs), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cf304 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cf324 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cf344 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cf364 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cf3a8 calls __glInitMemGet [0xd9abb34] with a0=[0x1010], a1=sp-504, a2=?, a3=0x1.
  The `jalr` at 0xd9cf3e4 calls __glInitMemPack [0xd9abcf0] with a0=[0x1010], a1=sp-504, a2=?, a3=0x1.
  The `jalr` at 0xd9cf3fc calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xd9cf414 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xd9cf440 calls (unknown callee) with a0=[0x1010], a1=sp-504, a2=0x0, a3=?.
  The `beq` branch at 0xd9cf230 targets 0xd9cf274, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9cf238 targets 0xd9cf25c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9cf254 targets 0xd9cf274 and is always taken.
  The `beq` branch at 0xd9cf26c targets 0xd9cf44c and is always taken.
  The `beq` branch at 0xd9cf2a0 targets 0xd9cf2bc, is taken when v0(=ret(__glCheckColorTableArgs)) == 0, and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9cf2b4 targets 0xd9cf44c and is always taken.
  The `beql` branch at 0xd9cf2d0 targets 0xd9cf378, is taken when t0(=a0-32956) >= 0x1a (unsigned), and falls through when t0(=a0-32956) < 0x1a (unsigned); its branch-likely delay slot `lw v1,572(sp)` at 0xd9cf2d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cf2f4 targets 0xd9cf378 and is always taken.
  The `beq` branch at 0xd9cf30c targets 0xd9cf44c and is always taken.
  The `beq` branch at 0xd9cf314 targets 0xd9cf378 and is always taken.
  The `beq` branch at 0xd9cf32c targets 0xd9cf44c and is always taken.
  The `beq` branch at 0xd9cf334 targets 0xd9cf378 and is always taken.
  The `beq` branch at 0xd9cf34c targets 0xd9cf44c and is always taken.
  The `beq` branch at 0xd9cf354 targets 0xd9cf378 and is always taken.
  The `beq` branch at 0xd9cf36c targets 0xd9cf44c and is always taken.
  The `beql` branch at 0xd9cf37c targets 0xd9cf450, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd9cf380 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cf390 targets 0xd9cf44c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd9cf458 has v0 = one of ret(__glCheckColorTableArgs), ?.
  The indirect jump at 0xd9cf2ec uses the jump table at 0xda78b98 with targets 0xd9cf354, 0xd9cf35c, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf374, 0xd9cf2f4, 0xd9cf314, 0xd9cf334, 0xd9cf2fc, 0xd9cf31c, 0xd9cf33c.

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf754 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cf754-0xd9cf7dc (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd9cf778 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf788 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cf7a0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf7c0 calls __glColorTableParameterv [0xd9cf650] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf790 targets 0xd9cf7b0, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cf7a8 targets 0xd9cf7cc and is always taken.
  The return at 0xd9cf7d4 has v0 = one of ret(__glSetError), ret(__glColorTableParameterv).

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf7dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cf7dc-0xd9cf86c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd9cf804 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf814 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cf830 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf850 calls __glColorTableParameterv [0xd9cf650] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cf820 targets 0xd9cf840, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cf838 targets 0xd9cf85c and is always taken.
  The return at 0xd9cf864 has v0 = one of ret(__glSetError), ret(__glColorTableParameterv).

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf974 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cf974-0xd9cf9fc (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd9cf998 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cf9a8 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cf9c0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf9e0 calls __glGetColorTableParameterv [0xd9cf86c] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf9b0 targets 0xd9cf9d0, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cf9c8 targets 0xd9cf9ec and is always taken.
  The return at 0xd9cf9f4 has v0 = one of ret(__glSetError), ret(__glGetColorTableParameterv).

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf9fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cf9fc-0xd9cfa8c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd9cfa24 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9cfa34 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xd9cfa50 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfa70 calls __glGetColorTableParameterv [0xd9cf86c] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cfa40 targets 0xd9cfa60, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cfa58 targets 0xd9cfa7c and is always taken.
  The return at 0xd9cfa84 has v0 = one of ret(__glSetError), ret(__glGetColorTableParameterv).

- `__glim_CopyColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cfa8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9cfa8c-0xd9cfec0 (1076 bytes).
  It occupies 1076 bytes.
  The `lw` at 0xd9cfac4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9cfac8 loads 4 bytes from abs 0x1010.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9cfbc0, `lw` at 0xd9cfbcc, `lw` at 0xd9cfc00.
  The `lw` at 0xd9cfc44 loads 4 bytes from [0x1010] +0x8.
  The `sw` at 0xd9cfc6c stores 4 bytes to ?.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9cfcc8, `lwc1` at 0xd9cfcf0, `lwc1` at 0xd9cfd08.
  The `lw` at 0xd9cfe50 loads 4 bytes from [0x1010] +0x2e40.
  The `lw` at 0xd9cfe64 loads 4 bytes from [0x1010] +0x3158.
  The `sw` at 0xd9cfe9c stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9cfea0 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9cfea8 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9cfae0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfb0c calls __glCheckColorTableArgs [0xd9ce260] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd9cfb28 calls __glSetError [0xd9d1af8] with a0=ret(__glCheckColorTableArgs), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9cfb64 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9cfbc4 calls __glElementsPerGroup [0xd9aeff0] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9cfbf4 calls __glLoadColorTableParams [0xd9ce77c] with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd9cfc08 calls __glElementsPerGroup [0xd9aeff0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cfc38 calls __glElementsPerGroup [0xd9aeff0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cfc60 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cfca0 calls __glInitReadImageSrcInfo [0xd9ab7b8] with a0=[0x1010], a1=sp-508, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfcc0 calls __glInitMemLoad [0xd9ab9d8] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xd9cfdec calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xd9cfe04 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xd9cfe24 calls __glClipReadPixels [0xd9a8950] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xd9cfe3c calls __glGetCurrentSetDefaultPixelXferState [0xd9ba9e8] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cfe58 calls (unknown callee) with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9cfe70 calls (unknown callee) with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xd9cfe8c calls __glRestoreCurrentPixelXferState [0xd9bad40] with a0=[0x1010], a1=ret(__glGetCurrentSetDefaultPixelXferState), a2=?, a3=?.
  The `bne` branch at 0xd9cfad0 targets 0xd9cfaf0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cfae8 targets 0xd9cfeac and is always taken.
  The `beq` branch at 0xd9cfb1c targets 0xd9cfb38, is taken when v0(=ret(__glCheckColorTableArgs)) == 0, and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9cfb30 targets 0xd9cfeac and is always taken.
  The `beq` branch at 0xd9cfb3c targets 0xd9cfb5c, is taken when a1(=a0) == at(=0x80bd), and falls through when a1(=a0) != at(=0x80bd).
  The `beq` branch at 0xd9cfb44 targets 0xd9cfb5c, is taken when a1(=a0) == at(=0x80d3), and falls through when a1(=a0) != at(=0x80d3).
  The `beq` branch at 0xd9cfb4c targets 0xd9cfb5c, is taken when a1(=a0) == at(=0x80d4), and falls through when a1(=a0) != at(=0x80d4).
  The `bnel` branch at 0xd9cfb54 targets 0xd9cfb78, is taken when a1(=a0) != at(=0x80d5), and falls through when a1(=a0) == at(=0x80d5); its branch-likely delay slot `ori at,zero,0x80bc` at 0xd9cfb58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cfb6c targets 0xd9cfeac and is always taken.
  The `beq` branch at 0xd9cfb78 targets 0xd9cfbbc, is taken when a1(=a0) == at(=0x80bc), and falls through when a1(=a0) != at(=0x80bc).
  The `beq` branch at 0xd9cfb84 targets 0xd9cfba4, is taken when a1(=a0) == at(=0x80d0), and falls through when a1(=a0) != at(=0x80d0).
  The `beq` branch at 0xd9cfb8c targets 0xd9cfbac, is taken when a1(=a0) == at(=0x80d1), and falls through when a1(=a0) != at(=0x80d1).
  The `beq` branch at 0xd9cfb94 targets 0xd9cfbb4, is taken when a1(=a0) == at(=0x80d2), and falls through when a1(=a0) != at(=0x80d2).
  The `beq` branch at 0xd9cfb9c targets 0xd9cfbbc and is always taken.
  The `beq` branch at 0xd9cfba4 targets 0xd9cfbbc and is always taken.
  The `beq` branch at 0xd9cfbac targets 0xd9cfbbc and is always taken.
  The `beq` branch at 0xd9cfbb4 targets 0xd9cfbbc and is always taken.
  The `beq` branch at 0xd9cfc28 targets 0xd9cfc74, is taken when t1(?) >= t2(?) (signed), and falls through when t1(?) < t2(?) (signed).
  The `beql` branch at 0xd9cfc74 targets 0xd9cfeb0, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd9cfc78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9cfc88 targets 0xd9cfeac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `bc1fl` branch at 0xd9cfce8 targets 0xd9cfda4, is taken when not (f0(=ret(__glInitMemLoad)) == f4 (c.eq.d at 0xd9cfce0)), and falls through when f0(=ret(__glInitMemLoad)) == f4 (c.eq.d at 0xd9cfce0); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfcec runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9cfd00 targets 0xd9cfda4, is taken when not (f0 == f8 (c.eq.d at 0xd9cfcf8)), and falls through when f0 == f8 (c.eq.d at 0xd9cfcf8); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfd04 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9cfd18 targets 0xd9cfda4, is taken when not (f0 == f16 (c.eq.d at 0xd9cfd10)), and falls through when f0 == f16 (c.eq.d at 0xd9cfd10); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfd1c runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9cfd30 targets 0xd9cfda4, is taken when not (f0 == f4 (c.eq.d at 0xd9cfd28)), and falls through when f0 == f4 (c.eq.d at 0xd9cfd28); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfd34 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9cfd50 targets 0xd9cfda4, is taken when not (f0 == f8 (c.eq.d at 0xd9cfd48)), and falls through when f0 == f8 (c.eq.d at 0xd9cfd48); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfd54 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9cfd68 targets 0xd9cfda4, is taken when not (f0 == f16 (c.eq.d at 0xd9cfd60)), and falls through when f0 == f16 (c.eq.d at 0xd9cfd60); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfd6c runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xd9cfd80 targets 0xd9cfda4, is taken when not (f0 == f4 (c.eq.d at 0xd9cfd78)), and falls through when f0 == f4 (c.eq.d at 0xd9cfd78); its branch-likely delay slot `sb t6,75(sp)` at 0xd9cfd84 runs only when taken and is annulled on fall-through.
  The `bc1t` branch at 0xd9cfd98 targets 0xd9cfde0, is taken when f0 == f8 (c.eq.d at 0xd9cfd90), and falls through when not (f0 == f8 (c.eq.d at 0xd9cfd90)).
  The `beq` branch at 0xd9cfe2c targets 0xd9cfeac, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The `beq` branch at 0xd9cfe48 targets 0xd9cfe64, is taken when v0(=ret(__glGetCurrentSetDefaultPixelXferState)) == 0, and falls through when v0(=ret(__glGetCurrentSetDefaultPixelXferState)) != 0.
  The `beq` branch at 0xd9cfe78 targets 0xd9cfe98, is taken when s0(=ret(__glGetCurrentSetDefaultPixelXferState)) == 0, and falls through when s0(=ret(__glGetCurrentSetDefaultPixelXferState)) != 0.
  The return at 0xd9cfeb8 has v0 = ?.
  The instructions from 0xd9cfb74 to 0xd9cfb74 are not reached by any path from the entry, and their branches are not listed.

- `__glim_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2754 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d2754-0xd9d28bc (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0xd9d2784 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2788 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d27a0 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9d27b8, `sw` at 0xd9d2894.
  The `sw` at 0xd9d281c stores 4 bytes to [0x1010] +0x308.
  The `sw` at 0xd9d2840 stores 4 bytes to [0x1010] +0x340.
  The `sw` at 0xd9d2858 stores 4 bytes to [0x1010] +0x30c.
  The `lw` at 0xd9d2878 loads 4 bytes from [0x1010] +0x3160.
  The `lw` at 0xd9d2898 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9d28a4 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9d27a8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d27c4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d27fc calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1.
  The `jalr` at 0xd9d2828 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d284c calls __glElementsPerGroup [0xd9aeff0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2888 calls (unknown callee) with a0=[0x1010], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2790 targets 0xd9d27d4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2798 targets 0xd9d27bc, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d27b4 targets 0xd9d27d4 and is always taken.
  The `beq` branch at 0xd9d27cc targets 0xd9d28a8 and is always taken.
  The `beq` branch at 0xd9d2804 targets 0xd9d28a8, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2818 targets 0xd9d283c, is taken when t0(=a0) == at(=0x8010), and falls through when t0(=a0) != at(=0x8010); its branch-likely delay slot `sw t1,776(s0)` at 0xd9d281c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d2830 targets 0xd9d28a8 and is always taken.
  The return at 0xd9d28b4 has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).
  The instructions from 0xd9d2838 to 0xd9d2838 are not reached by any path from the entry, and their branches are not listed.

- `__glim_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d28bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d28bc-0xd9d2a2c (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xd9d28ec loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d28f0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2908 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9d2920, `sw` at 0xd9d2a04.
  The `sw` at 0xd9d2984 stores 4 bytes to [0x1010] +0x35c.
  The `sw` at 0xd9d29a8 stores 4 bytes to [0x1010] +0x394.
  The `sw` at 0xd9d29b0 stores 4 bytes to [0x1010] +0x398.
  The `sw` at 0xd9d29c8 stores 4 bytes to [0x1010] +0x360.
  The `lw` at 0xd9d29e8 loads 4 bytes from [0x1010] +0x3160.
  The `lw` at 0xd9d2a08 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9d2a14 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9d2910 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d292c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2964 calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2990 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d29bc calls __glElementsPerGroup [0xd9aeff0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d29f8 calls (unknown callee) with a0=[0x1010], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `beq` branch at 0xd9d28f8 targets 0xd9d293c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2900 targets 0xd9d2924, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d291c targets 0xd9d293c and is always taken.
  The `beq` branch at 0xd9d2934 targets 0xd9d2a18 and is always taken.
  The `beq` branch at 0xd9d296c targets 0xd9d2a18, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2980 targets 0xd9d29a4, is taken when t0(=a0) == at(=0x8011), and falls through when t0(=a0) != at(=0x8011); its branch-likely delay slot `sw t1,860(s0)` at 0xd9d2984 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d2998 targets 0xd9d2a18 and is always taken.
  The return at 0xd9d2a24 has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).
  The instructions from 0xd9d29a0 to 0xd9d29a0 are not reached by any path from the entry, and their branches are not listed.

- `__glim_SeparableFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2a2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d2a2c-0xd9d2ba4 (376 bytes).
  It occupies 376 bytes.
  The `lw` at 0xd9d2a5c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2a60 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2a78 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9d2a90, `sw` at 0xd9d2b7c.
  The `sw` at 0xd9d2af4 stores 4 bytes to [0x1010] +0x3b0.
  The `sw` at 0xd9d2b18 stores 4 bytes to [0x1010] +0x3e8.
  The `sw` at 0xd9d2b20 stores 4 bytes to [0x1010] +0x3ec.
  The `sw` at 0xd9d2b38 stores 4 bytes to [0x1010] +0x3b4.
  The `lw` at 0xd9d2b60 loads 4 bytes from [0x1010] +0x3164.
  The `lw` at 0xd9d2b80 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9d2b8c stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9d2a80 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2a9c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2ad4 calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2b00 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2b2c calls __glElementsPerGroup [0xd9aeff0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2b70 calls (unknown callee) with a0=[0x1010], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `beq` branch at 0xd9d2a68 targets 0xd9d2aac, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2a70 targets 0xd9d2a94, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2a8c targets 0xd9d2aac and is always taken.
  The `beq` branch at 0xd9d2aa4 targets 0xd9d2b90 and is always taken.
  The `beq` branch at 0xd9d2adc targets 0xd9d2b90, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2af0 targets 0xd9d2b14, is taken when t0(=a0) == at(=0x8012), and falls through when t0(=a0) != at(=0x8012); its branch-likely delay slot `sw t1,944(s0)` at 0xd9d2af4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d2b08 targets 0xd9d2b90 and is always taken.
  The return at 0xd9d2b9c has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).
  The instructions from 0xd9d2b10 to 0xd9d2b10 are not reached by any path from the entry, and their branches are not listed.

- `__glim_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2ba4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d2ba4-0xd9d2d00 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd9d2bd4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2bd8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2bf0 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9d2c08, `sw` at 0xd9d2cd8.
  The `sw` at 0xd9d2c6c stores 4 bytes to [0x1010] +0x308.
  The `sw` at 0xd9d2c90 stores 4 bytes to [0x1010] +0x340.
  The `sw` at 0xd9d2ca8 stores 4 bytes to [0x1010] +0x30c.
  The `lw` at 0xd9d2cc0 loads 4 bytes from [0x1010] +0x3170.
  The `lw` at 0xd9d2cdc loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9d2ce8 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9d2bf8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2c14 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2c4c calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=0x0.
  The `jalr` at 0xd9d2c78 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2c9c calls __glElementsPerGroup [0xd9aeff0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2ccc calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2be0 targets 0xd9d2c24, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2be8 targets 0xd9d2c0c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2c04 targets 0xd9d2c24 and is always taken.
  The `beq` branch at 0xd9d2c1c targets 0xd9d2cec and is always taken.
  The `beq` branch at 0xd9d2c54 targets 0xd9d2cec, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2c68 targets 0xd9d2c8c, is taken when t0(=a0) == at(=0x8010), and falls through when t0(=a0) != at(=0x8010); its branch-likely delay slot `sw t1,776(s0)` at 0xd9d2c6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d2c80 targets 0xd9d2cec and is always taken.
  The return at 0xd9d2cf8 has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).
  The instructions from 0xd9d2c88 to 0xd9d2c88 are not reached by any path from the entry, and their branches are not listed.

- `__glim_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2d00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d2d00-0xd9d2e6c (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0xd9d2d30 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2d34 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2d4c loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xd9d2d64, `sw` at 0xd9d2e44.
  The `sw` at 0xd9d2dc8 stores 4 bytes to [0x1010] +0x35c.
  The `sw` at 0xd9d2dec stores 4 bytes to [0x1010] +0x394.
  The `sw` at 0xd9d2df4 stores 4 bytes to [0x1010] +0x398.
  The `sw` at 0xd9d2e0c stores 4 bytes to [0x1010] +0x360.
  The `lw` at 0xd9d2e28 loads 4 bytes from [0x1010] +0x3174.
  The `lw` at 0xd9d2e48 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9d2e54 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9d2d54 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2d70 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2da8 calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xd9d2dd4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2e00 calls __glElementsPerGroup [0xd9aeff0] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d2e38 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2d3c targets 0xd9d2d80, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2d44 targets 0xd9d2d68, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2d60 targets 0xd9d2d80 and is always taken.
  The `beq` branch at 0xd9d2d78 targets 0xd9d2e58 and is always taken.
  The `beq` branch at 0xd9d2db0 targets 0xd9d2e58, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2dc4 targets 0xd9d2de8, is taken when t0(=a0) == at(=0x8011), and falls through when t0(=a0) != at(=0x8011); its branch-likely delay slot `sw t1,860(s0)` at 0xd9d2dc8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9d2ddc targets 0xd9d2e58 and is always taken.
  The return at 0xd9d2e64 has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).
  The instructions from 0xd9d2de4 to 0xd9d2de4 are not reached by any path from the entry, and their branches are not listed.

- `__glim_GetConvolutionFilterEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2e6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d2e6c-0xd9d2f68 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd9d2ea4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2ea8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2ec0 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9d2ed8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9d2f3c loads 4 bytes from [0x1010] +0x3168.
  The `jalr` at 0xd9d2ec8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2ee4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2f1c calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xd9d2f48 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2eb0 targets 0xd9d2ef4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2eb8 targets 0xd9d2edc, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2ed4 targets 0xd9d2ef4 and is always taken.
  The `beq` branch at 0xd9d2eec targets 0xd9d2f54 and is always taken.
  The `beq` branch at 0xd9d2f24 targets 0xd9d2f54, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The return at 0xd9d2f60 has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).

- `__glim_GetSeparableFilterEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2f68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d2f68-0xd9d3094 (300 bytes).
  It occupies 300 bytes.
  The `lw` at 0xd9d2fa0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9d2fa4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9d2fbc loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9d2fd4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9d3068 loads 4 bytes from [0x1010] +0x316c.
  The `jalr` at 0xd9d2fc4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2fe0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d3018 calls __glCheckConvolutionFilterArgs [0xd9d2340] with a0=[0x1010], a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xd9d3044 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9d3074 calls (unknown callee) with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2fac targets 0xd9d2ff0, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2fb4 targets 0xd9d2fd8, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2fd0 targets 0xd9d2ff0 and is always taken.
  The `beq` branch at 0xd9d2fe8 targets 0xd9d3080 and is always taken.
  The `beq` branch at 0xd9d3020 targets 0xd9d3080, is taken when v0(=ret(__glCheckConvolutionFilterArgs)) == 0, and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beq` branch at 0xd9d3034 targets 0xd9d3054, is taken when t1(=a0) == at(=0x8012), and falls through when t1(=a0) != at(=0x8012).
  The `beq` branch at 0xd9d304c targets 0xd9d3080 and is always taken.
  The return at 0xd9d308c has v0 = one of ret(__glSetError), ret(__glCheckConvolutionFilterArgs), ret(?).

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d3364 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d3364-0xd9d33c8 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xd9d3394 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1404.
  The `jalr` at 0xd9d33ac calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3380 targets 0xd9d33a4, is taken when a1 != at(=0x8013), and falls through when a1 == at(=0x8013).
  The `beq` branch at 0xd9d339c targets 0xd9d33b8 and is always taken.
  The return at 0xd9d33c0 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d33c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d33c8-0xd9d3438 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xd9d3404 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `jalr` at 0xd9d341c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d33e0 targets 0xd9d33fc, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d33ec targets 0xd9d33fc, is taken when a1 == at(=0x8014), and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d33f4 targets 0xd9d3414, is taken when a1 != at(=0x8015), and falls through when a1 == at(=0x8015).
  The `beq` branch at 0xd9d340c targets 0xd9d3428 and is always taken.
  The return at 0xd9d3430 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d3438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d3438-0xd9d349c (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xd9d3468 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1406.
  The `jalr` at 0xd9d3480 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3454 targets 0xd9d3478, is taken when a1 != at(=0x8013), and falls through when a1 == at(=0x8013).
  The `beq` branch at 0xd9d3470 targets 0xd9d348c and is always taken.
  The return at 0xd9d3494 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d349c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d349c-0xd9d350c (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xd9d34d8 calls __GLconvolutionParameter [0xd9d3094] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `jalr` at 0xd9d34f0 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d34b4 targets 0xd9d34d0, is taken when a1 == at(=0x8013), and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d34c0 targets 0xd9d34d0, is taken when a1 == at(=0x8014), and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d34c8 targets 0xd9d34e8, is taken when a1 != at(=0x8015), and falls through when a1 == at(=0x8015).
  The `beq` branch at 0xd9d34e0 targets 0xd9d34fc and is always taken.
  The return at 0xd9d3504 has v0 = one of ret(__GLconvolutionParameter), ret(__glSetError).

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d3864 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d3864-0xd9d389c (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9d3880 calls __GLgetConvolutionParameter [0xd9d350c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9d3894 has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d389c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9d389c-0xd9d38d4 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9d38b8 calls __GLgetConvolutionParameter [0xd9d350c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9d38cc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da26c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da33c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_NurbsKnots1iSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da420 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9da420-0xd9da5ac (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xd9da48c loads 4 bytes from a3 (arg3 at entry) +0x0.
  10 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9da4a4, `sdc1` at 0xd9da4c0, `sdc1` at 0xd9da4ec.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9da4ac, `lw` at 0xd9da4d4, `lw` at 0xd9da4f0.
  The `jalr` at 0xd9da44c calls NurbsKnots1Common [0xd9d9fc8] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9da464 targets 0xd9da59c, is taken when v0(=ret(NurbsKnots1Common)) == 0, and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9da46c targets 0xd9da59c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd9da478 targets 0xd9da4c8, is taken when (a2 & 0x3) == 0, and falls through when (a2 & 0x3) != 0.
  The `beq` branch at 0xd9da488 targets 0xd9da4b0, is taken when a1(?) == a0(=0x1), and falls through when a1(?) != a0(=0x1).
  The `bne` branch at 0xd9da4a8 targets 0xd9da490, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da4c4 targets 0xd9da59c, is taken when a0(?) == a2, and falls through when a0(?) != a2.
  The `beq` branch at 0xd9da4d0 targets 0xd9da540, is taken when a0(?) == a2, and falls through when a0(?) != a2.
  The `bne` branch at 0xd9da538 targets 0xd9da4d8, is taken when a0(?) != a2, and falls through when a0(?) == a2.
  The return at 0xd9da5a4 has v0 = one of ret(NurbsKnots1Common), (a1 << 0x2).

- `__glim_NurbsKnots2dSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da5ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9da5ac-0xd9da74c (416 bytes).
  It occupies 416 bytes.
  10 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xd9da62c, `ldc1` at 0xd9da64c, `ldc1` at 0xd9da65c.
  10 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9da640, `sdc1` at 0xd9da658, `sdc1` at 0xd9da668.
  The `jalr` at 0xd9da5f4 calls NurbsKnots2Common [0xd9da108] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd9da6a0 calls NurbsKnots2Common [0xd9da108] with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0xd9da60c targets 0xd9da738, is taken when v0(=ret(NurbsKnots2Common)) == 0, and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da614 targets 0xd9da688, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9da620 targets 0xd9da648, is taken when (s0(=a2) & 0x3) == 0, and falls through when (s0(=a2) & 0x3) != 0.
  The `bne` branch at 0xd9da63c targets 0xd9da62c, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da644 targets 0xd9da688, is taken when a0(?) == s0(=a2), and falls through when a0(?) != s0(=a2).
  The `bne` branch at 0xd9da680 targets 0xd9da64c, is taken when a0(?) != s0(=a2), and falls through when a0(?) == s0(=a2).
  The `beq` branch at 0xd9da6b0 targets 0xd9da738, is taken when v0(=ret(NurbsKnots2Common)) == 0, and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da6b8 targets 0xd9da738, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd9da6c4 targets 0xd9da6f4, is taken when (s0(?) & 0x3) == 0, and falls through when (s0(?) & 0x3) != 0.
  The `bne` branch at 0xd9da6e4 targets 0xd9da6d4, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beql` branch at 0xd9da6ec targets 0xd9da73c, is taken when a0(?) == s0(?), and falls through when a0(?) != s0(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd9da6f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9da730 targets 0xd9da6fc, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The return at 0xd9da744 has v0 = one of (a3 << 0x3), ?.

- `__glim_NurbsKnots2fSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da74c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9da74c-0xd9da914 (456 bytes).
  It occupies 456 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9da7cc, `lwc1` at 0xd9da7f0, `lwc1` at 0xd9da808.
  10 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9da7e4, `sdc1` at 0xd9da804, `sdc1` at 0xd9da814.
  The `jalr` at 0xd9da794 calls NurbsKnots2Common [0xd9da108] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd9da854 calls NurbsKnots2Common [0xd9da108] with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0xd9da7ac targets 0xd9da900, is taken when v0(=ret(NurbsKnots2Common)) == 0, and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da7b4 targets 0xd9da83c, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9da7c0 targets 0xd9da7ec, is taken when (s0(=a2) & 0x3) == 0, and falls through when (s0(=a2) & 0x3) != 0.
  The `bne` branch at 0xd9da7e0 targets 0xd9da7cc, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da7e8 targets 0xd9da83c, is taken when a0(?) == s0(=a2), and falls through when a0(?) != s0(=a2).
  The `bne` branch at 0xd9da834 targets 0xd9da7f0, is taken when a0(?) != s0(=a2), and falls through when a0(?) == s0(=a2).
  The `beq` branch at 0xd9da864 targets 0xd9da900, is taken when v0(=ret(NurbsKnots2Common)) == 0, and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da86c targets 0xd9da900, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd9da878 targets 0xd9da8ac, is taken when (s0(?) & 0x3) == 0, and falls through when (s0(?) & 0x3) != 0.
  The `bne` branch at 0xd9da89c targets 0xd9da888, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beql` branch at 0xd9da8a4 targets 0xd9da904, is taken when a0(?) == s0(?), and falls through when a0(?) != s0(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd9da8a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9da8f8 targets 0xd9da8b4, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The return at 0xd9da90c has v0 = one of (a3 << 0x2), ?.

- `__glim_NurbsKnots2iSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da914 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9da914-0xd9dac2c (792 bytes).
  It occupies 792 bytes.
  20 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd9da99c, `lw` at 0xd9da9bc, `lw` at 0xd9da9e4.
  20 such `sdc1` accesses store 8 bytes to ?, including `sdc1` at 0xd9da9b4, `sdc1` at 0xd9da9d0, `sdc1` at 0xd9da9fc.
  The `jalr` at 0xd9da95c calls NurbsKnots2Common [0xd9da108] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd9daac4 calls NurbsKnots2Common [0xd9da108] with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0xd9da974 targets 0xd9dac18, is taken when v0(=ret(NurbsKnots2Common)) == 0, and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da97c targets 0xd9daaac, is taken when s0(=a2) <= 0 (signed), and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9da988 targets 0xd9da9d8, is taken when (s0(=a2) & 0x3) == 0, and falls through when (s0(=a2) & 0x3) != 0.
  The `beq` branch at 0xd9da998 targets 0xd9da9c0, is taken when a1(?) == a0(=0x1), and falls through when a1(?) != a0(=0x1).
  The `bne` branch at 0xd9da9b8 targets 0xd9da9a0, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da9d4 targets 0xd9daaac, is taken when a0(?) == s0(=a2), and falls through when a0(?) != s0(=a2).
  The `beq` branch at 0xd9da9e0 targets 0xd9daa50, is taken when a0(?) == s0(=a2), and falls through when a0(?) != s0(=a2).
  The `bne` branch at 0xd9daa48 targets 0xd9da9e8, is taken when a0(?) != s0(=a2), and falls through when a0(?) == s0(=a2).
  The `beq` branch at 0xd9daad4 targets 0xd9dac18, is taken when v0(=ret(NurbsKnots2Common)) == 0, and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9daadc targets 0xd9dac18, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd9daae8 targets 0xd9dab40, is taken when (s0(?) & 0x3) == 0, and falls through when (s0(?) & 0x3) != 0.
  The `beq` branch at 0xd9daafc targets 0xd9dab24, is taken when a1(?) == a0(=0x1), and falls through when a1(?) != a0(=0x1).
  The `bne` branch at 0xd9dab1c targets 0xd9dab04, is taken when a1(?) != a0(?), and falls through when a1(?) == a0(?).
  The `beql` branch at 0xd9dab38 targets 0xd9dac1c, is taken when a0(?) == s0(?), and falls through when a0(?) != s0(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd9dab3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9dab4c targets 0xd9dabbc, is taken when a0(?) == s0(?), and falls through when a0(?) != s0(?).
  The `bne` branch at 0xd9dabb4 targets 0xd9dab54, is taken when a0(?) != s0(?), and falls through when a0(?) == s0(?).
  The return at 0xd9dac24 has v0 = one of (a3 << 0x2), ?.

- `__glim_GetTexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9dd724 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9dd724-0xd9dd840 (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0xd9dd744 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9dd754 loads 4 bytes from abs 0x1018.
  The `lwc1` at 0xd9dd7f0 loads 4 bytes from ret(__glLookUpTextureParams) +0x14.
  The `swc1` at 0xd9dd7fc stores 4 bytes to a2 (arg2 at entry) +0x0.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9dd800, `lwc1` at 0xd9dd810, `lwc1` at 0xd9dd81c.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd9dd80c, `swc1` at 0xd9dd818, `swc1` at 0xd9dd820.
  The `jalr` at 0xd9dd768 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd9dd794 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd9dd7b0 calls __glLookUpTextureParams [0xda178a0] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd9dd7e0 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=a2 at entry (arg2), a3=?.
  The `bnel` branch at 0xd9dd758 targets 0xd9dd77c, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1); its branch-likely delay slot `addiu at,zero,3552` at 0xd9dd75c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9dd770 targets 0xd9dd830 and is always taken.
  The `beq` branch at 0xd9dd77c targets 0xd9dd7a4, is taken when a3(=a0) == at(=0xde0), and falls through when a3(=a0) != at(=0xde0).
  The `beq` branch at 0xd9dd784 targets 0xd9dd7a4, is taken when a3(=a0) == at(=0xde1), and falls through when a3(=a0) != at(=0xde1).
  The `beq` branch at 0xd9dd79c targets 0xd9dd830 and is always taken.
  The `beq` branch at 0xd9dd7bc targets 0xd9dd7d8, is taken when v0(=ret(__glLookUpTextureParams)) == 0, and falls through when v0(=ret(__glLookUpTextureParams)) != 0.
  The `beq` branch at 0xd9dd7d0 targets 0xd9dd7f0, is taken when t8(=a1) == at(=0x8146), and falls through when t8(=a1) != at(=0x8146).
  The `beq` branch at 0xd9dd7e8 targets 0xd9dd830 and is always taken.
  The `bne` branch at 0xd9dd828 targets 0xd9dd800, is taken when a0(?) != a1(=0x21), and falls through when a0(?) == a1(=0x21).
  The return at 0xd9dd838 has v0 = one of ret(__glSetError), ret(__glLookUpTextureParams).
  The instructions from 0xd9dd778 to 0xd9dd778 are not reached by any path from the entry, and their branches are not listed.

- `__glim_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e294c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e294c-0xd9e2a10 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd9e2968 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e2970 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9e29bc loads 4 bytes from [0x1010] +0x4fc.
  The `lw` at 0xd9e29dc loads 4 bytes from [0x1010] +0x4e0.
  The `lw` at 0xd9e29e4 loads 4 bytes from [0x1010] +0x4dc.
  The `jalr` at 0xd9e2984 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9e29a8 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9e29c4 calls __glElementsPerGroup [0xd9aeff0] with a0=[[0x1010]+1276], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9e29f4 calls memset with a0=[[0x1010]+1244], a1=0x0, a2=?, a3=[0x1010].
  The `bnel` branch at 0xd9e2974 targets 0xd9e2998, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x8024` at 0xd9e2978 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e298c targets 0xd9e2a00 and is always taken.
  The `beq` branch at 0xd9e2998 targets 0xd9e29b8, is taken when a0 == at(=0x8024), and falls through when a0 != at(=0x8024).
  The `beq` branch at 0xd9e29b0 targets 0xd9e2a00 and is always taken.
  The return at 0xd9e2a08 has v0 = one of ret(__glSetError), ret(memset).
  The instructions from 0xd9e2994 to 0xd9e2994 are not reached by any path from the entry, and their branches are not listed.

- `__glim_HistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e2a10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e2a10-0xd9e2bec (476 bytes).
  It occupies 476 bytes.
  The `lw` at 0xd9e2a40 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e2a48 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9e2ad4 stores 4 bytes to [0x1010] +0x50c.
  The `sw` at 0xd9e2ad8 stores 4 bytes to [0x1010] +0x510.
  The `sw` at 0xd9e2adc stores 4 bytes to [0x1010] +0x514.
  The `sw` at 0xd9e2ae0 stores 4 bytes to [0x1010] +0x518.
  The `sw` at 0xd9e2ae4 stores 4 bytes to [0x1010] +0x51c.
  The `sw` at 0xd9e2ae8 stores 4 bytes to [0x1010] +0x520.
  The `sw` at 0xd9e2aec stores 4 bytes to [0x1010] +0x524.
  The `sw` at 0xd9e2af4 stores 4 bytes to [0x1010] +0x528.
  The `sw` at 0xd9e2b24 stores 4 bytes to [0x1010] +0x504.
  The `sw` at 0xd9e2b28 stores 4 bytes to [0x1010] +0x4fc.
  The `lw` at 0xd9e2b34 loads 4 bytes from [0x1010] +0x4dc.
  The `lw` at 0xd9e2b44 loads 4 bytes from [0x1010] +0x8.
  The `sw` at 0xd9e2b68 stores 4 bytes to [0x1010] +0x4dc.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd9e2b9c, `sw` at 0xd9e2ba4, `sw` at 0xd9e2bb4.
  The `sb` at 0xd9e2bac stores 1 byte to ?.
  The `jalr` at 0xd9e2a5c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e2a8c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e2aa8 calls __glProcessHistogramArguments [0xd9e25b0] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=sp-24, a3=sp-32.
  The `jalr` at 0xd9e2afc calls __glSetError [0xd9d1af8] with a0=ret(__glProcessHistogramArguments), a1=0x8025, a2=?, a3=?.
  The `jalr` at 0xd9e2b54 calls (unknown callee) with a0=[0x1010], a1=[[0x1010]+1244], a2=?, a3=[0x1010]+1244.
  The `jalr` at 0xd9e2b88 calls memset with a0=ret(?), a1=0x0, a2=?, a3=[0x1010]+1244.
  The `bne` branch at 0xd9e2a4c targets 0xd9e2a6c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9e2a64 targets 0xd9e2bd8 and is always taken.
  The `beq` branch at 0xd9e2a70 targets 0xd9e2a9c, is taken when t7(=a0) == at(=0x8024), and falls through when t7(=a0) != at(=0x8024).
  The `beq` branch at 0xd9e2a7c targets 0xd9e2a9c, is taken when t7(=a0) == at(=0x8025), and falls through when t7(=a0) != at(=0x8025).
  The `beq` branch at 0xd9e2a94 targets 0xd9e2bd8 and is always taken.
  The `beq` branch at 0xd9e2abc targets 0xd9e2b0c, is taken when v0(=ret(__glProcessHistogramArguments)) == 0, and falls through when v0(=ret(__glProcessHistogramArguments)) != 0.
  The `bne` branch at 0xd9e2ac4 targets 0xd9e2af8, is taken when v1(=a0) != a1(=0x8025), and falls through when v1(=a0) == a1(=0x8025).
  The `bne` branch at 0xd9e2acc targets 0xd9e2af8, is taken when v0(=ret(__glProcessHistogramArguments)) != at(=0x8031), and falls through when v0(=ret(__glProcessHistogramArguments)) == at(=0x8031).
  The `beq` branch at 0xd9e2af0 targets 0xd9e2bd8 and is always taken.
  The `beq` branch at 0xd9e2b04 targets 0xd9e2bd8 and is always taken.
  The `bne` branch at 0xd9e2b0c targets 0xd9e2b1c, is taken when v1(=a0) != a1(=0x8025), and falls through when v1(=a0) == a1(=0x8025).
  The `beq` branch at 0xd9e2b14 targets 0xd9e2b98 and is always taken.
  The return at 0xd9e2be4 has v0 = one of ret(__glSetError), ret(__glProcessHistogramArguments), ?.

- `__glim_GetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e31a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e31a0-0xd9e3548 (936 bytes).
  It occupies 936 bytes.
  The `lw` at 0xd9e31cc loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9e31d8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e31ec loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9e3204 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9e32b4 loads 4 bytes from table(0xda7a548) +0x0.
  The `lw` at 0xd9e3314 loads 4 bytes from table(0xda7a568) +0x0.
  The `lw` at 0xd9e3350 loads 4 bytes from table(0xda7a584) +0x0.
  The `lw` at 0xd9e3380 loads 4 bytes from table(0xda7a598) +0x0.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x4dc, including `lw` at 0xd9e3414, `lw` at 0xd9e3438, `lw` at 0xd9e3518.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x4fc, including `lw` at 0xd9e3428, `lw` at 0xd9e3514.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x4e0, including `lw` at 0xd9e342c, `lw` at 0xd9e3454, `lw` at 0xd9e350c.
  The `jalr` at 0xd9e31f4 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3210 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e323c calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e32cc calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e33a8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e33e0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e33f8 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e3440 calls __glInitMemGet [0xd9abb34] with a0=[0x1010], a1=sp-500, a2=[[0x1010]+1248], a3=0x1.
  The `jalr` at 0xd9e347c calls __glInitMemPack [0xd9abcf0] with a0=[0x1010], a1=sp-500, a2=[[0x1010]+1248], a3=0x1.
  The `jalr` at 0xd9e349c calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-500, a2=?, a3=?.
  The `jalr` at 0xd9e34b4 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-500, a2=?, a3=?.
  The `jalr` at 0xd9e34ec calls __glGenericPickCopyImage [0xd9ab694] with a0=[0x1010], a1=sp-500, a2=0x0, a3=?.
  The `jalr` at 0xd9e352c calls __glResetArray [0xd9e2e88] with a0=[[0x1010]+1276], a1=a2 at entry (arg2), a2=[[0x1010]+1244], a3=0x0.
  The `beql` branch at 0xd9e31dc targets 0xd9e3224, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0; its branch-likely delay slot `lw t8,568(sp)` at 0xd9e31e0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9e31e4 targets 0xd9e3208, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9e3200 targets 0xd9e3220 and is always taken.
  The `beq` branch at 0xd9e3218 targets 0xd9e3538 and is always taken.
  The `beql` branch at 0xd9e322c targets 0xd9e3250, is taken when t8(=a0) == at(=0x8024), and falls through when t8(=a0) != at(=0x8024); its branch-likely delay slot `ori at,zero,0x8001` at 0xd9e3230 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e3244 targets 0xd9e3538 and is always taken.
  The `bne` branch at 0xd9e3254 targets 0xd9e3278, is taken when t0(=a2) < at(=0x8001) (unsigned), and falls through when t0(=a2) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9e3260 targets 0xd9e32dc, is taken when t0(=a2) == at(=0x80e0), and falls through when t0(=a2) != at(=0x80e0).
  The `beql` branch at 0xd9e3268 targets 0xd9e32e0, is taken when t0(=a2) == at(=0x80e1), and falls through when t0(=a2) != at(=0x80e1); its branch-likely delay slot `lw t4,580(sp)` at 0xd9e326c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e3270 targets 0xd9e32c4 and is always taken.
  The `bne` branch at 0xd9e327c targets 0xd9e3298, is taken when t1(=a2) < 0x190b (unsigned), and falls through when t1(=a2) >= 0x190b (unsigned).
  The `beql` branch at 0xd9e3288 targets 0xd9e32e0, is taken when t1(=a2) == at(=0x8000), and falls through when t1(=a2) != at(=0x8000); its branch-likely delay slot `lw t4,580(sp)` at 0xd9e328c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e3290 targets 0xd9e32c4 and is always taken.
  The `beq` branch at 0xd9e32a0 targets 0xd9e32c4, is taken when t3(=a2-6403) >= 0x8 (unsigned), and falls through when t3(=a2-6403) < 0x8 (unsigned).
  The `beq` branch at 0xd9e32d4 targets 0xd9e3538 and is always taken.
  The `bne` branch at 0xd9e32ec targets 0xd9e3324, is taken when t4(=a3) < at(=0x8037) (unsigned), and falls through when t4(=a3) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9e3300 targets 0xd9e33f0, is taken when t5(=a3-33634) >= 0x7 (unsigned), and falls through when t5(=a3-33634) < 0x7 (unsigned).
  The `bne` branch at 0xd9e3328 targets 0xd9e3360, is taken when t6(=a3) < 0x1407 (unsigned), and falls through when t6(=a3) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9e333c targets 0xd9e33f0, is taken when t7(=a3-32818) >= 0x5 (unsigned), and falls through when t7(=a3-32818) < 0x5 (unsigned).
  The `beq` branch at 0xd9e336c targets 0xd9e33f0, is taken when t8(=a3-5120) >= 0x7 (unsigned), and falls through when t8(=a3-5120) < 0x7 (unsigned).
  The `beql` branch at 0xd9e3398 targets 0xd9e340c, is taken when t0(=a2) == at(=0x1907), and falls through when t0(=a2) != at(=0x1907); its branch-likely delay slot `lw t2,60(sp)` at 0xd9e339c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e33b0 targets 0xd9e3538 and is always taken.
  The `beq` branch at 0xd9e33c0 targets 0xd9e3408, is taken when t1(=a2) == at(=0x1908), and falls through when t1(=a2) != at(=0x1908).
  The `beq` branch at 0xd9e33c8 targets 0xd9e3408, is taken when t1(=a2) == at(=0x8000), and falls through when t1(=a2) != at(=0x8000).
  The `beql` branch at 0xd9e33d0 targets 0xd9e340c, is taken when t1(=a2) == at(=0x80e1), and falls through when t1(=a2) != at(=0x80e1); its branch-likely delay slot `lw t2,60(sp)` at 0xd9e33d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e33e8 targets 0xd9e3538 and is always taken.
  The `beq` branch at 0xd9e3400 targets 0xd9e3538 and is always taken.
  The `beql` branch at 0xd9e3420 targets 0xd9e353c, is taken when t3(=[[0x1010]+1244]) == 0, and falls through when t3(=[[0x1010]+1244]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd9e3424 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e3500 targets 0xd9e3538, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The return at 0xd9e3540 has v0 = one of [0x1010]+1244, ?.
  The instructions from 0xd9e324c to 0xd9e324c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd9e331c uses the jump table at 0xda7a568 with targets 0xd9e3390, 0xd9e3390, 0xd9e3390, 0xd9e33b8, 0xd9e33b8, 0xd9e33b8, 0xd9e33b8.
  The indirect jump at 0xd9e3358 uses the jump table at 0xda7a584 with targets 0xd9e3390, 0xd9e33b8, 0xd9e33b8, 0xd9e33b8, 0xd9e33b8.
  The indirect jump at 0xd9e3388 uses the jump table at 0xda7a598 with targets 0xd9e3408, 0xd9e3408, 0xd9e3408, 0xd9e3408, 0xd9e3408, 0xd9e3408, 0xd9e3408.
  The indirect jump at 0xd9e32bc uses the jump table at 0xda7a548 with targets 0xd9e32dc, 0xd9e32dc, 0xd9e32dc, 0xd9e32dc, 0xd9e32dc, 0xd9e32dc, 0xd9e32dc, 0xd9e32dc.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e36bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e36bc-0xd9e36f4 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e36d8 calls __glGetHistogramParameters [0xd9e3548] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e36ec has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e36f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e36f4-0xd9e372c (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e3710 calls __glGetHistogramParameters [0xd9e3548] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3724 has v0 = ret(__glGetHistogramParameters).

- `__glim_MinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3980 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e3980-0xd9e3a74 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd9e39a8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e39b0 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9e3a38 stores 4 bytes to [0x1010] +0x558.
  The `sw` at 0xd9e3a40 stores 4 bytes to [0x1010] +0x55c.
  The `sb` at 0xd9e3a48 stores 1 byte to [0x1010] +0x554.
  The `sb` at 0xd9e3a4c stores 1 byte to [0x1010] +0x560.
  The `jalr` at 0xd9e39c4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e39e8 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3a04 calls __glProcessHistogramArguments [0xd9e25b0] with a0=0x2, a1=a1 at entry (arg1), a2=sp-28, a3=sp-36.
  The `jalr` at 0xd9e3a1c calls __glSetError [0xd9d1af8] with a0=ret(__glProcessHistogramArguments), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e3a54 calls __glResetMinmax [0xd9e3820] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd9e39b4 targets 0xd9e39d8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x802e` at 0xd9e39b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9e39cc targets 0xd9e3a60 and is always taken.
  The `beq` branch at 0xd9e39d8 targets 0xd9e39f8, is taken when a0 == at(=0x802e), and falls through when a0 != at(=0x802e).
  The `beq` branch at 0xd9e39f0 targets 0xd9e3a60 and is always taken.
  The `beq` branch at 0xd9e3a10 targets 0xd9e3a2c, is taken when v0(=ret(__glProcessHistogramArguments)) == 0, and falls through when v0(=ret(__glProcessHistogramArguments)) != 0.
  The `beq` branch at 0xd9e3a24 targets 0xd9e3a60 and is always taken.
  The return at 0xd9e3a6c has v0 = one of ret(__glSetError), ret(__glResetMinmax).
  The instructions from 0xd9e39d4 to 0xd9e39d4 are not reached by any path from the entry, and their branches are not listed.

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3a74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
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

- `__glim_GetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3b04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e3b04-0xd9e3d24 (544 bytes).
  It occupies 544 bytes.
  The `lw` at 0xd9e3b34 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9e3b3c loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9e3b50 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9e3b68 stores 4 bytes to abs 0x1018.
  The `lbu` at 0xd9e3bc4 loads 1 byte from [0x1010] +0x554.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x55c, including `lw` at 0xd9e3be0, `lw` at 0xd9e3cac, `lw` at 0xd9e3cd8.
  The `lwc1` at 0xd9e3cbc loads 4 bytes from abs 0xda7a690.
  The `lwc1` at 0xd9e3cec loads 4 bytes from abs 0xda7a694.
  The `jalr` at 0xd9e3b58 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3b74 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3b98 calls __glSetError [0xd9d1af8] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9e3bb4 calls __glCheckGetArguments [0xd9e2bec] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd9e3bec calls __glInitMemGet [0xd9abb34] with a0=[0x1010], a1=sp-504, a2=0x2, a3=0x1.
  The `jalr` at 0xd9e3c24 calls __glInitMemPack [0xd9abcf0] with a0=[0x1010], a1=sp-504, a2=0x2, a3=0x1.
  The `jalr` at 0xd9e3c44 calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xd9e3c5c calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xd9e3c8c calls __glGenericPickCopyImage [0xd9ab694] with a0=[0x1010], a1=sp-504, a2=0x0, a3=?.
  The `jalr` at 0xd9e3ccc calls __glResetArray [0xd9e2e88] with a0=[[0x1010]+1372], a1=a2 at entry (arg2), a2=[0x1010]+1332, a3=0x0.
  The `jalr` at 0xd9e3d04 calls __glResetArray [0xd9e2e88] with a0=[[0x1010]+1372], a1=a2 at entry (arg2), a2=[0x1010]+1332, a3=0x1.
  The `beq` branch at 0xd9e3b40 targets 0xd9e3b84, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9e3b48 targets 0xd9e3b6c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9e3b64 targets 0xd9e3b84 and is always taken.
  The `beq` branch at 0xd9e3b7c targets 0xd9e3d10 and is always taken.
  The `beq` branch at 0xd9e3b88 targets 0xd9e3ba8, is taken when s1(=a0) == at(=0x802e), and falls through when s1(=a0) != at(=0x802e).
  The `beq` branch at 0xd9e3ba0 targets 0xd9e3d10 and is always taken.
  The `bne` branch at 0xd9e3bbc targets 0xd9e3d10, is taken when v0(=ret(__glCheckGetArguments)) != 0, and falls through when v0(=ret(__glCheckGetArguments)) == 0.
  The `beq` branch at 0xd9e3bd0 targets 0xd9e3d10, is taken when t6(=[[0x1010]+1364]:1) == 0, and falls through when t6(=[[0x1010]+1364]:1) != 0.
  The `beq` branch at 0xd9e3ca0 targets 0xd9e3d10, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The return at 0xd9e3d1c has v0 = one of ret(__glSetError), ret(__glCheckGetArguments), ret(__glGenericPickCopyImage), ret(__glResetArray).

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3e18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e3e18-0xd9e3e50 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e3e34 calls __glGetMinmaxParameters [0xd9e3d24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e3e48 has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9e3e50-0xd9e3e88 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd9e3e6c calls __glGetMinmaxParameters [0xd9e3d24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3e80 has v0 = ret(__glGetMinmaxParameters).

- `__gllc_DeformationMap3fSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ed6ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9ed6ec-0xd9ed8c4 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0xd9ed748 loads 4 bytes from abs 0x1010.
  The `sh` at 0xd9ed804 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9ed810 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xd9ed818 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xd9ed820 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9ed828 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `swc1` at 0xd9ed830 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `swc1` at 0xd9ed838 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9ed840 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `swc1` at 0xd9ed848 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `swc1` at 0xd9ed850 stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sw` at 0xd9ed858 stores 4 bytes to ret(__glDlistAllocOp2) +0x34.
  The `jalr` at 0xd9ed768 calls __glCheckMap3Params [0xd9d3d7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ed790 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ed7a8 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ed7ec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ed888 calls __glFillDeformationMap3f [0xd9d3aa0] with a0=?, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd9ed8a4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ed8c4, a3=?.
  The `beq` branch at 0xd9ed774 targets 0xd9ed7a0, is taken when v0(=ret(__glCheckMap3Params)) == at(=0x500), and falls through when v0(=ret(__glCheckMap3Params)) != at(=0x500).
  The `bne` branch at 0xd9ed780 targets 0xd9ed7b8, is taken when v0(=ret(__glCheckMap3Params)) != at(=0x501), and falls through when v0(=ret(__glCheckMap3Params)) == at(=0x501).
  The `beq` branch at 0xd9ed798 targets 0xd9ed8b0 and is always taken.
  The `beq` branch at 0xd9ed7b0 targets 0xd9ed8b0 and is always taken.
  The `beq` branch at 0xd9ed7f8 targets 0xd9ed8b0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd9ed8bc has v0 = one of ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_DeformationMap3dSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ed9bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9ed9bc-0xd9edbd4 (536 bytes).
  It occupies 536 bytes.
  The `lw` at 0xd9eda40 loads 4 bytes from abs 0x1010.
  The `sh` at 0xd9edb14 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9edb20 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xd9edb28 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xd9edb30 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9edb38 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `swc1` at 0xd9edb40 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `swc1` at 0xd9edb48 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9edb50 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `swc1` at 0xd9edb58 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `swc1` at 0xd9edb60 stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sw` at 0xd9edb68 stores 4 bytes to ret(__glDlistAllocOp2) +0x34.
  The `jalr` at 0xd9eda78 calls __glCheckMap3Params [0xd9d3d7c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9edaa0 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9edab8 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9edafc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9edb98 calls __glFillDeformationMap3d [0xd9d3bf0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9edbb4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ed8c4, a3=?.
  The `beq` branch at 0xd9eda84 targets 0xd9edab0, is taken when v0(=ret(__glCheckMap3Params)) == at(=0x500), and falls through when v0(=ret(__glCheckMap3Params)) != at(=0x500).
  The `bne` branch at 0xd9eda90 targets 0xd9edac8, is taken when v0(=ret(__glCheckMap3Params)) != at(=0x501), and falls through when v0(=ret(__glCheckMap3Params)) == at(=0x501).
  The `beq` branch at 0xd9edaa8 targets 0xd9edbc0 and is always taken.
  The `beq` branch at 0xd9edac0 targets 0xd9edbc0 and is always taken.
  The `beq` branch at 0xd9edb08 targets 0xd9edbc0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd9edbcc has v0 = one of ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ee940 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9ee940-0xd9eecc0 (896 bytes).
  It occupies 896 bytes.
  The `lw` at 0xd9ee950 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9ee9a8 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xd9ee9ac loads 4 bytes from [[0x1010]+6132] +0x310.
  The `lw` at 0xd9eea7c loads 4 bytes from table(0xda7a848) +0x0.
  The `lw` at 0xd9eead8 loads 4 bytes from table(0xda7a874) +0x0.
  The `lw` at 0xd9eeb18 loads 4 bytes from table(0xda7a890) +0x0.
  The `lw` at 0xd9eeb40 loads 4 bytes from table(0xda7a8a4) +0x0.
  The `sh` at 0xd9eec1c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9eec24 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9eec2c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9eec34 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9eec38 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9eec40 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9eec44 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9eec4c stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sw` at 0xd9eec50 stores 4 bytes to ret(__glDlistAllocOp2) +0x34.
  The `sw` at 0xd9eec54 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `sw` at 0xd9eec5c stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xd9ee9b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ee9dc calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9eea0c calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eea94 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eeb64 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eeb98 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eebb0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eebcc calls __glImageSize3D [0xd9e401c] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eebf0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9eec8c calls __glFillImage3D [0xd9e406c] with a0=[0x1010], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd9eeca4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ee8a4, a3=?.
  The `bne` branch at 0xd9ee970 targets 0xd9ee9c0, is taken when a0 != at(=0x8070), and falls through when a0 == at(=0x8070).
  The `beq` branch at 0xd9ee9b8 targets 0xd9eecb0 and is always taken.
  The `bltz` branch at 0xd9ee9c4 targets 0xd9ee9d4, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0xd9ee9cc targets 0xd9ee9ec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd9ee9e4 targets 0xd9eecb0 and is always taken.
  The `bltz` branch at 0xd9ee9ec targets 0xd9eea04, is taken when t4(=a3) < 0 (signed), and falls through when t4(=a3) >= 0 (signed).
  The `bltz` branch at 0xd9ee9f4 targets 0xd9eea04, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bgez` branch at 0xd9ee9fc targets 0xd9eea1c, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `beq` branch at 0xd9eea14 targets 0xd9eecb0 and is always taken.
  The `bne` branch at 0xd9eea24 targets 0xd9eea44, is taken when a3(?) < at(=0x8001) (unsigned), and falls through when a3(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9eea2c targets 0xd9eeaa4, is taken when a3(?) == at(=0x80e0), and falls through when a3(?) != at(=0x80e0).
  The `beql` branch at 0xd9eea34 targets 0xd9eeaa8, is taken when a3(?) == at(=0x80e1), and falls through when a3(?) != at(=0x80e1); its branch-likely delay slot `lw t0,104(sp)` at 0xd9eea38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9eea3c targets 0xd9eea8c and is always taken.
  The `bne` branch at 0xd9eea48 targets 0xd9eea64, is taken when a3(?) < 0x190b (unsigned), and falls through when a3(?) >= 0x190b (unsigned).
  The `beql` branch at 0xd9eea54 targets 0xd9eeaa8, is taken when a3(?) == at(=0x8000), and falls through when a3(?) != at(=0x8000); its branch-likely delay slot `lw t0,104(sp)` at 0xd9eea58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9eea5c targets 0xd9eea8c and is always taken.
  The `beq` branch at 0xd9eea68 targets 0xd9eea8c, is taken when t5(?) >= 0xb (unsigned), and falls through when t5(?) < 0xb (unsigned).
  The `beq` branch at 0xd9eea9c targets 0xd9eecb0 and is always taken.
  The `bne` branch at 0xd9eeab0 targets 0xd9eeae8, is taken when t0(?) < at(=0x8037) (unsigned), and falls through when t0(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9eeac4 targets 0xd9eeba8, is taken when t7(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t7(=table(-0x8362)) < 0x7 (unsigned).
  The `bne` branch at 0xd9eeaec targets 0xd9eeb28, is taken when t0(?) < 0x1407 (unsigned), and falls through when t0(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9eeb04 targets 0xd9eeba8, is taken when t8(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t8(=table(-0x8032)) < 0x5 (unsigned).
  The `beq` branch at 0xd9eeb2c targets 0xd9eeba8, is taken when t1(?) >= 0x7 (unsigned), and falls through when t1(?) < 0x7 (unsigned).
  The `beq` branch at 0xd9eeb54 targets 0xd9eebc0, is taken when a3(?) == at(=0x1907), and falls through when a3(?) != at(=0x1907).
  The `beq` branch at 0xd9eeb6c targets 0xd9eecb0 and is always taken.
  The `beq` branch at 0xd9eeb78 targets 0xd9eebc0, is taken when a3(?) == at(=0x1908), and falls through when a3(?) != at(=0x1908).
  The `beq` branch at 0xd9eeb80 targets 0xd9eebc0, is taken when a3(?) == at(=0x8000), and falls through when a3(?) != at(=0x8000).
  The `beq` branch at 0xd9eeb88 targets 0xd9eebc0, is taken when a3(?) == at(=0x80e1), and falls through when a3(?) != at(=0x80e1).
  The `beq` branch at 0xd9eeba0 targets 0xd9eecb0 and is always taken.
  The `beq` branch at 0xd9eebb8 targets 0xd9eecb0 and is always taken.
  The `beq` branch at 0xd9eec04 targets 0xd9eecb0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9eec58 targets 0xd9eec98, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xd9eec6c targets 0xd9eec98, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd9eecb8 has v0 = one of ret(?), ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The indirect jump at 0xd9eeae0 uses the jump table at 0xda7a874 with targets 0xd9eeb50, 0xd9eeb50, 0xd9eeb50, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74.
  The indirect jump at 0xd9eeb20 uses the jump table at 0xda7a890 with targets 0xd9eeb50, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74.
  The indirect jump at 0xd9eeb48 uses the jump table at 0xda7a8a4 with targets 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0.
  The indirect jump at 0xd9eeae0 uses the jump table at 0xda7a874 with targets 0xd9eeb50, 0xd9eeb50, 0xd9eeb50, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74.
  The indirect jump at 0xd9eeb20 uses the jump table at 0xda7a890 with targets 0xd9eeb50, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74, 0xd9eeb74.
  The indirect jump at 0xd9eeb48 uses the jump table at 0xda7a8a4 with targets 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0, 0xd9eebc0.
  The indirect jump at 0xd9eea84 uses the jump table at 0xda7a848 with targets 0xd9eeaa4, 0xd9eea8c, 0xd9eea8c, 0xd9eeaa4, 0xd9eeaa4, 0xd9eeaa4, 0xd9eeaa4, 0xd9eeaa4, 0xd9eeaa4, 0xd9eeaa4, 0xd9eeaa4.

- `__gllc_TexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9eed48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9eed48-0xd9ef060 (792 bytes).
  It occupies 792 bytes.
  The `lw` at 0xd9eed58 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9eedf8 loads 4 bytes from table(0xda7a8c0) +0x0.
  The `lw` at 0xd9eee48 loads 4 bytes from table(0xda7a8ec) +0x0.
  The `lw` at 0xd9eee9c loads 4 bytes from table(0xda7a908) +0x0.
  The `lw` at 0xd9eeee4 loads 4 bytes from table(0xda7a91c) +0x0.
  The `sh` at 0xd9eefdc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9eefe4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9eefec stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9eeff4 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xd9eeff8 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9eeffc stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9ef000 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9ef008 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0xd9eed84 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9eee68 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9eef04 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9eef28 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9eef5c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9eef74 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9eef90 calls __glImageSize [0xd9e3f68] with a0=a3 at entry (arg3), a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd9eefb4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef02c calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=a3 at entry (arg3), a2=0x1, a3=?.
  The `jalr` at 0xd9ef044 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9eecc0, a3=?.
  The `bgez` branch at 0xd9eed74 targets 0xd9eed94, is taken when a3 >= 0 (signed), and falls through when a3 < 0 (signed).
  The `beq` branch at 0xd9eed8c targets 0xd9ef050 and is always taken.
  The `bne` branch at 0xd9eeda0 targets 0xd9eedc0, is taken when a2(?) < at(=0x8001) (unsigned), and falls through when a2(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9eeda8 targets 0xd9eee58, is taken when a2(?) == at(=0x80e0), and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9eedb0 targets 0xd9eee58, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9eedb8 targets 0xd9eee60 and is always taken.
  The `bne` branch at 0xd9eedc4 targets 0xd9eede0, is taken when a2(?) < 0x190b (unsigned), and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9eedd0 targets 0xd9eee58, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9eedd8 targets 0xd9eee60 and is always taken.
  The `beq` branch at 0xd9eede4 targets 0xd9eee60, is taken when t8(?) >= 0xb (unsigned), and falls through when t8(?) < 0xb (unsigned).
  The `bne` branch at 0xd9eee14 targets 0xd9eeeac, is taken when a3(?) < 0x1a01 (unsigned), and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9eee20 targets 0xd9eee78, is taken when a3(?) < at(=0x8037) (unsigned), and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9eee34 targets 0xd9eef6c, is taken when t9(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9eee58 targets 0xd9eee0c and is always taken.
  The `beq` branch at 0xd9eee70 targets 0xd9ef050 and is always taken.
  The `beq` branch at 0xd9eee88 targets 0xd9eef6c, is taken when t0(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t0(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9eeeb0 targets 0xd9eeecc, is taken when a3(?) < 0x1407 (unsigned), and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9eeebc targets 0xd9eeef4, is taken when a3(?) == at(=0x1a00), and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9eeec4 targets 0xd9eef6c and is always taken.
  The `beq` branch at 0xd9eeed0 targets 0xd9eef6c, is taken when t1(?) >= 0x7 (unsigned), and falls through when t1(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9eeef4 targets 0xd9eef84, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9eef0c targets 0xd9ef050 and is always taken.
  The `beq` branch at 0xd9eef18 targets 0xd9eef84, is taken when a2(?) == at(=0x1907), and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9eef30 targets 0xd9ef050 and is always taken.
  The `beq` branch at 0xd9eef3c targets 0xd9eef84, is taken when a2(?) == at(=0x1908), and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9eef44 targets 0xd9eef84, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9eef4c targets 0xd9eef84, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9eef64 targets 0xd9ef050 and is always taken.
  The `beq` branch at 0xd9eef7c targets 0xd9ef050 and is always taken.
  The `beq` branch at 0xd9eefc4 targets 0xd9ef050, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9ef004 targets 0xd9ef038, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The return at 0xd9ef058 has v0 = one of ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The indirect jump at 0xd9eee50 uses the jump table at 0xda7a8ec with targets 0xd9eef14, 0xd9eef14, 0xd9eef14, 0xd9eef38, 0xd9eef38, 0xd9eef38, 0xd9eef38.
  The indirect jump at 0xd9eeea4 uses the jump table at 0xda7a908 with targets 0xd9eef14, 0xd9eef38, 0xd9eef38, 0xd9eef38, 0xd9eef38.
  The indirect jump at 0xd9eeeec uses the jump table at 0xda7a91c with targets 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84.
  The indirect jump at 0xd9eee50 uses the jump table at 0xda7a8ec with targets 0xd9eef14, 0xd9eef14, 0xd9eef14, 0xd9eef38, 0xd9eef38, 0xd9eef38, 0xd9eef38.
  The indirect jump at 0xd9eeea4 uses the jump table at 0xda7a908 with targets 0xd9eef14, 0xd9eef38, 0xd9eef38, 0xd9eef38, 0xd9eef38.
  The indirect jump at 0xd9eeeec uses the jump table at 0xda7a91c with targets 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84.
  The indirect jump at 0xd9eee00 uses the jump table at 0xda7a8c0 with targets 0xd9eee08, 0xd9eee60, 0xd9eee60, 0xd9eee58, 0xd9eee58, 0xd9eee58, 0xd9eee58, 0xd9eee58, 0xd9eee58, 0xd9eee58, 0xd9eee58.
  The indirect jump at 0xd9eee50 uses the jump table at 0xda7a8ec with targets 0xd9eef14, 0xd9eef14, 0xd9eef14, 0xd9eef38, 0xd9eef38, 0xd9eef38, 0xd9eef38.
  The indirect jump at 0xd9eeea4 uses the jump table at 0xda7a908 with targets 0xd9eef14, 0xd9eef38, 0xd9eef38, 0xd9eef38, 0xd9eef38.
  The indirect jump at 0xd9eeeec uses the jump table at 0xda7a91c with targets 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84, 0xd9eef84.

- `__gllc_TexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ef0f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9ef0f4-0xd9ef424 (816 bytes).
  It occupies 816 bytes.
  The `lw` at 0xd9ef108 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9ef1b0 loads 4 bytes from table(0xda7a938) +0x0.
  The `lw` at 0xd9ef200 loads 4 bytes from table(0xda7a964) +0x0.
  The `lw` at 0xd9ef254 loads 4 bytes from table(0xda7a980) +0x0.
  The `lw` at 0xd9ef29c loads 4 bytes from table(0xda7a994) +0x0.
  The `sh` at 0xd9ef390 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9ef398 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9ef3a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9ef3a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9ef3b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9ef3b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9ef3bc stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sw` at 0xd9ef3c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `sw` at 0xd9ef3c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xd9ef3cc stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `jalr` at 0xd9ef148 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef220 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef2bc calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef2e0 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef314 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef32c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef344 calls __glImageSize [0xd9e3f68] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef368 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef3f0 calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef408 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ef060, a3=?.
  The `bltz` branch at 0xd9ef124 targets 0xd9ef140, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `bgez` branch at 0xd9ef138 targets 0xd9ef158, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The `beq` branch at 0xd9ef150 targets 0xd9ef414 and is always taken.
  The `bne` branch at 0xd9ef158 targets 0xd9ef178, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd9ef160 targets 0xd9ef210, is taken when a2(?) == at(=0x80e0), and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9ef168 targets 0xd9ef210, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9ef170 targets 0xd9ef218 and is always taken.
  The `bne` branch at 0xd9ef17c targets 0xd9ef198, is taken when a2(?) < 0x190b (unsigned), and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9ef188 targets 0xd9ef210, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9ef190 targets 0xd9ef218 and is always taken.
  The `beq` branch at 0xd9ef19c targets 0xd9ef218, is taken when t8(?) >= 0xb (unsigned), and falls through when t8(?) < 0xb (unsigned).
  The `bne` branch at 0xd9ef1cc targets 0xd9ef264, is taken when a3(?) < 0x1a01 (unsigned), and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9ef1d8 targets 0xd9ef230, is taken when a3(?) < at(=0x8037) (unsigned), and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9ef1ec targets 0xd9ef324, is taken when t9(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9ef210 targets 0xd9ef1c4 and is always taken.
  The `beq` branch at 0xd9ef228 targets 0xd9ef414 and is always taken.
  The `beq` branch at 0xd9ef240 targets 0xd9ef324, is taken when t0(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t0(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9ef268 targets 0xd9ef284, is taken when a3(?) < 0x1407 (unsigned), and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9ef274 targets 0xd9ef2ac, is taken when a3(?) == at(=0x1a00), and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9ef27c targets 0xd9ef324 and is always taken.
  The `beq` branch at 0xd9ef288 targets 0xd9ef324, is taken when t1(?) >= 0x7 (unsigned), and falls through when t1(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9ef2ac targets 0xd9ef33c, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9ef2c4 targets 0xd9ef414 and is always taken.
  The `beq` branch at 0xd9ef2d0 targets 0xd9ef33c, is taken when a2(?) == at(=0x1907), and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9ef2e8 targets 0xd9ef414 and is always taken.
  The `beq` branch at 0xd9ef2f4 targets 0xd9ef33c, is taken when a2(?) == at(=0x1908), and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9ef2fc targets 0xd9ef33c, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9ef304 targets 0xd9ef33c, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9ef31c targets 0xd9ef414 and is always taken.
  The `beq` branch at 0xd9ef334 targets 0xd9ef414 and is always taken.
  The `beq` branch at 0xd9ef378 targets 0xd9ef414, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9ef3c8 targets 0xd9ef3fc, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The return at 0xd9ef41c has v0 = one of ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The indirect jump at 0xd9ef208 uses the jump table at 0xda7a964 with targets 0xd9ef2cc, 0xd9ef2cc, 0xd9ef2cc, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0.
  The indirect jump at 0xd9ef25c uses the jump table at 0xda7a980 with targets 0xd9ef2cc, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0.
  The indirect jump at 0xd9ef2a4 uses the jump table at 0xda7a994 with targets 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c.
  The indirect jump at 0xd9ef208 uses the jump table at 0xda7a964 with targets 0xd9ef2cc, 0xd9ef2cc, 0xd9ef2cc, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0.
  The indirect jump at 0xd9ef25c uses the jump table at 0xda7a980 with targets 0xd9ef2cc, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0.
  The indirect jump at 0xd9ef2a4 uses the jump table at 0xda7a994 with targets 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c.
  The indirect jump at 0xd9ef1b8 uses the jump table at 0xda7a938 with targets 0xd9ef1c0, 0xd9ef218, 0xd9ef218, 0xd9ef210, 0xd9ef210, 0xd9ef210, 0xd9ef210, 0xd9ef210, 0xd9ef210, 0xd9ef210, 0xd9ef210.
  The indirect jump at 0xd9ef208 uses the jump table at 0xda7a964 with targets 0xd9ef2cc, 0xd9ef2cc, 0xd9ef2cc, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0.
  The indirect jump at 0xd9ef25c uses the jump table at 0xda7a980 with targets 0xd9ef2cc, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0, 0xd9ef2f0.
  The indirect jump at 0xd9ef2a4 uses the jump table at 0xda7a994 with targets 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c, 0xd9ef33c.

- `__gllc_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ef4c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9ef4c8-0xd9ef7d4 (780 bytes).
  It occupies 780 bytes.
  The `lw` at 0xd9ef4dc loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9ef590 loads 4 bytes from table(0xda7a9b0) +0x0.
  The `lw` at 0xd9ef5ec loads 4 bytes from table(0xda7a9dc) +0x0.
  The `lw` at 0xd9ef62c loads 4 bytes from table(0xda7a9f8) +0x0.
  The `lw` at 0xd9ef654 loads 4 bytes from table(0xda7aa0c) +0x0.
  The `sh` at 0xd9ef730 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9ef738 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9ef740 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9ef748 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9ef750 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9ef758 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9ef75c stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9ef764 stores 4 bytes to ret(__glDlistAllocOp2) +0x34.
  The `sw` at 0xd9ef768 stores 4 bytes to ret(__glDlistAllocOp2) +0x38.
  The `sw` at 0xd9ef76c stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `sw` at 0xd9ef770 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `sw` at 0xd9ef778 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xd9ef520 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef5a8 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef678 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef6ac calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef6c4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef6e0 calls __glImageSize3D [0xd9e401c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef704 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef7a0 calls __glFillImage3D [0xd9e406c] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9ef7b8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ef424, a3=?.
  The `bltz` branch at 0xd9ef4f8 targets 0xd9ef518, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `bltz` branch at 0xd9ef508 targets 0xd9ef518, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bgez` branch at 0xd9ef510 targets 0xd9ef530, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `beq` branch at 0xd9ef528 targets 0xd9ef7c4 and is always taken.
  The `bne` branch at 0xd9ef538 targets 0xd9ef558, is taken when a3(?) < at(=0x8001) (unsigned), and falls through when a3(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9ef540 targets 0xd9ef5b8, is taken when a3(?) == at(=0x80e0), and falls through when a3(?) != at(=0x80e0).
  The `beql` branch at 0xd9ef548 targets 0xd9ef5bc, is taken when a3(?) == at(=0x80e1), and falls through when a3(?) != at(=0x80e1); its branch-likely delay slot `lw t0,100(sp)` at 0xd9ef54c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9ef550 targets 0xd9ef5a0 and is always taken.
  The `bne` branch at 0xd9ef55c targets 0xd9ef578, is taken when a3(?) < 0x190b (unsigned), and falls through when a3(?) >= 0x190b (unsigned).
  The `beql` branch at 0xd9ef568 targets 0xd9ef5bc, is taken when a3(?) == at(=0x8000), and falls through when a3(?) != at(=0x8000); its branch-likely delay slot `lw t0,100(sp)` at 0xd9ef56c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9ef570 targets 0xd9ef5a0 and is always taken.
  The `beq` branch at 0xd9ef57c targets 0xd9ef5a0, is taken when t8(?) >= 0xb (unsigned), and falls through when t8(?) < 0xb (unsigned).
  The `beq` branch at 0xd9ef5b0 targets 0xd9ef7c4 and is always taken.
  The `bne` branch at 0xd9ef5c4 targets 0xd9ef5fc, is taken when t0(?) < at(=0x8037) (unsigned), and falls through when t0(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9ef5d8 targets 0xd9ef6bc, is taken when t9(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `bne` branch at 0xd9ef600 targets 0xd9ef63c, is taken when t0(?) < 0x1407 (unsigned), and falls through when t0(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9ef618 targets 0xd9ef6bc, is taken when t1(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t1(=table(-0x8032)) < 0x5 (unsigned).
  The `beq` branch at 0xd9ef640 targets 0xd9ef6bc, is taken when t2(?) >= 0x7 (unsigned), and falls through when t2(?) < 0x7 (unsigned).
  The `beq` branch at 0xd9ef668 targets 0xd9ef6d4, is taken when a3(?) == at(=0x1907), and falls through when a3(?) != at(=0x1907).
  The `beq` branch at 0xd9ef680 targets 0xd9ef7c4 and is always taken.
  The `beq` branch at 0xd9ef68c targets 0xd9ef6d4, is taken when a3(?) == at(=0x1908), and falls through when a3(?) != at(=0x1908).
  The `beq` branch at 0xd9ef694 targets 0xd9ef6d4, is taken when a3(?) == at(=0x8000), and falls through when a3(?) != at(=0x8000).
  The `beq` branch at 0xd9ef69c targets 0xd9ef6d4, is taken when a3(?) == at(=0x80e1), and falls through when a3(?) != at(=0x80e1).
  The `beq` branch at 0xd9ef6b4 targets 0xd9ef7c4 and is always taken.
  The `beq` branch at 0xd9ef6cc targets 0xd9ef7c4 and is always taken.
  The `beq` branch at 0xd9ef718 targets 0xd9ef7c4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9ef774 targets 0xd9ef7ac, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The return at 0xd9ef7cc has v0 = one of ret(__gllc_InvalidValue), ret(__gllc_InvalidEnum), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The indirect jump at 0xd9ef5f4 uses the jump table at 0xda7a9dc with targets 0xd9ef664, 0xd9ef664, 0xd9ef664, 0xd9ef688, 0xd9ef688, 0xd9ef688, 0xd9ef688.
  The indirect jump at 0xd9ef634 uses the jump table at 0xda7a9f8 with targets 0xd9ef664, 0xd9ef688, 0xd9ef688, 0xd9ef688, 0xd9ef688.
  The indirect jump at 0xd9ef65c uses the jump table at 0xda7aa0c with targets 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4.
  The indirect jump at 0xd9ef5f4 uses the jump table at 0xda7a9dc with targets 0xd9ef664, 0xd9ef664, 0xd9ef664, 0xd9ef688, 0xd9ef688, 0xd9ef688, 0xd9ef688.
  The indirect jump at 0xd9ef634 uses the jump table at 0xda7a9f8 with targets 0xd9ef664, 0xd9ef688, 0xd9ef688, 0xd9ef688, 0xd9ef688.
  The indirect jump at 0xd9ef65c uses the jump table at 0xda7aa0c with targets 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4, 0xd9ef6d4.
  The indirect jump at 0xd9ef598 uses the jump table at 0xda7a9b0 with targets 0xd9ef5b8, 0xd9ef5a0, 0xd9ef5a0, 0xd9ef5b8, 0xd9ef5b8, 0xd9ef5b8, 0xd9ef5b8, 0xd9ef5b8, 0xd9ef5b8, 0xd9ef5b8, 0xd9ef5b8.

- `__gllc_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ef8f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9ef8f4-0xd9efcc0 (972 bytes).
  It occupies 972 bytes.
  The `lw` at 0xd9ef904 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9ef954 loads 4 bytes from [0x1010] +0x348.
  The `lw` at 0xd9ef9bc loads 4 bytes from table(0xda7aa28) +0x0.
  The `lw` at 0xd9efa50 loads 4 bytes from table(0xda7aa3c) +0x0.
  The `lw` at 0xd9efaa0 loads 4 bytes from table(0xda7aa68) +0x0.
  The `lw` at 0xd9efaf4 loads 4 bytes from table(0xda7aa84) +0x0.
  The `lw` at 0xd9efb3c loads 4 bytes from table(0xda7aa98) +0x0.
  The `sh` at 0xd9efc3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9efc44 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9efc4c stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9efc50 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9efc54 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9efc58 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9efc60 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xd9ef934 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef970 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef9d4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efac0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efb5c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9efb84 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9efbbc calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9efbd4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd9efbf0 calls __glImageSize [0xd9e3f68] with a0=a2 at entry (arg2), a1=0x1, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd9efc14 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9efc8c calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd9efca4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ef7d4, a3=?.
  The `beq` branch at 0xd9ef924 targets 0xd9ef944, is taken when a0 == at(=0x8010), and falls through when a0 != at(=0x8010).
  The `beq` branch at 0xd9ef93c targets 0xd9efcb0 and is always taken.
  The `bltz` branch at 0xd9ef94c targets 0xd9ef968, is taken when t8(=a2) < 0 (signed), and falls through when t8(=a2) >= 0 (signed).
  The `beql` branch at 0xd9ef960 targets 0xd9ef984, is taken when t0(=[[0x1010]+840]) >= t8(=a2) (signed), and falls through when t0(=[[0x1010]+840]) < t8(=a2) (signed); its branch-likely delay slot `sltiu at,t1,6411` at 0xd9ef964 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9ef978 targets 0xd9efcb0 and is always taken.
  The `bne` branch at 0xd9ef984 targets 0xd9ef9a0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd9ef990 targets 0xd9ef9e8, is taken when t1(=a1) == at(=0x8049), and falls through when t1(=a1) != at(=0x8049); its branch-likely delay slot `lw t4,84(sp)` at 0xd9ef994 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9ef998 targets 0xd9ef9cc and is always taken.
  The `beq` branch at 0xd9ef9a8 targets 0xd9ef9cc, is taken when t3(=a1-6406) >= 0x5 (unsigned), and falls through when t3(=a1-6406) < 0x5 (unsigned).
  The `beq` branch at 0xd9ef9dc targets 0xd9efcb0 and is always taken.
  The `bne` branch at 0xd9ef9f4 targets 0xd9efa18, is taken when t4(=a3) < at(=0x8001) (unsigned), and falls through when t4(=a3) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9efa00 targets 0xd9efab0, is taken when t4(=a3) == at(=0x80e0), and falls through when t4(=a3) != at(=0x80e0).
  The `beq` branch at 0xd9efa08 targets 0xd9efab0, is taken when t4(=a3) == at(=0x80e1), and falls through when t4(=a3) != at(=0x80e1).
  The `beq` branch at 0xd9efa10 targets 0xd9efab8 and is always taken.
  The `bne` branch at 0xd9efa1c targets 0xd9efa38, is taken when t5(=a3) < 0x190b (unsigned), and falls through when t5(=a3) >= 0x190b (unsigned).
  The `beq` branch at 0xd9efa28 targets 0xd9efab0, is taken when t5(=a3) == at(=0x8000), and falls through when t5(=a3) != at(=0x8000).
  The `beq` branch at 0xd9efa30 targets 0xd9efab8 and is always taken.
  The `beq` branch at 0xd9efa3c targets 0xd9efab8, is taken when t6(=a3-6400) >= 0xb (unsigned), and falls through when t6(=a3-6400) < 0xb (unsigned).
  The `bne` branch at 0xd9efa6c targets 0xd9efb04, is taken when a3(?) < 0x1a01 (unsigned), and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9efa78 targets 0xd9efad0, is taken when a3(?) < at(=0x8037) (unsigned), and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9efa8c targets 0xd9efbcc, is taken when t9(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9efab0 targets 0xd9efa64 and is always taken.
  The `beq` branch at 0xd9efac8 targets 0xd9efcb0 and is always taken.
  The `beq` branch at 0xd9efae0 targets 0xd9efbcc, is taken when t0(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t0(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9efb08 targets 0xd9efb24, is taken when a3(?) < 0x1407 (unsigned), and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9efb14 targets 0xd9efb4c, is taken when a3(?) == at(=0x1a00), and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9efb1c targets 0xd9efbcc and is always taken.
  The `beq` branch at 0xd9efb28 targets 0xd9efbcc, is taken when t8(?) >= 0x7 (unsigned), and falls through when t8(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9efb4c targets 0xd9efbe4, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9efb64 targets 0xd9efcb0 and is always taken.
  The `beq` branch at 0xd9efb74 targets 0xd9efbe4, is taken when t1(=a3) == at(=0x1907), and falls through when t1(=a3) != at(=0x1907).
  The `beq` branch at 0xd9efb8c targets 0xd9efcb0 and is always taken.
  The `beq` branch at 0xd9efb9c targets 0xd9efbe4, is taken when t2(=a3) == at(=0x1908), and falls through when t2(=a3) != at(=0x1908).
  The `beq` branch at 0xd9efba4 targets 0xd9efbe4, is taken when t2(=a3) == at(=0x8000), and falls through when t2(=a3) != at(=0x8000).
  The `beq` branch at 0xd9efbac targets 0xd9efbe4, is taken when t2(=a3) == at(=0x80e1), and falls through when t2(=a3) != at(=0x80e1).
  The `beq` branch at 0xd9efbc4 targets 0xd9efcb0 and is always taken.
  The `beq` branch at 0xd9efbdc targets 0xd9efcb0 and is always taken.
  The `beq` branch at 0xd9efc24 targets 0xd9efcb0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9efc5c targets 0xd9efc98, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xd9efc70 targets 0xd9efc98, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd9efcb8 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_InvalidValue), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The instructions from 0xd9ef980 to 0xd9ef980 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xd9efaa8 uses the jump table at 0xda7aa68 with targets 0xd9efb6c, 0xd9efb6c, 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efafc uses the jump table at 0xda7aa84 with targets 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efb44 uses the jump table at 0xda7aa98 with targets 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4.
  The indirect jump at 0xd9efaa8 uses the jump table at 0xda7aa68 with targets 0xd9efb6c, 0xd9efb6c, 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efafc uses the jump table at 0xda7aa84 with targets 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efb44 uses the jump table at 0xda7aa98 with targets 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4.
  The indirect jump at 0xd9efa58 uses the jump table at 0xda7aa3c with targets 0xd9efa60, 0xd9efab8, 0xd9efab8, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0.
  The indirect jump at 0xd9efaa8 uses the jump table at 0xda7aa68 with targets 0xd9efb6c, 0xd9efb6c, 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efafc uses the jump table at 0xda7aa84 with targets 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efb44 uses the jump table at 0xda7aa98 with targets 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4.
  The indirect jump at 0xd9ef9c4 uses the jump table at 0xda7aa28 with targets 0xd9ef9e4, 0xd9ef9e4, 0xd9ef9e4, 0xd9ef9e4, 0xd9ef9e4.
  The indirect jump at 0xd9efaa8 uses the jump table at 0xda7aa68 with targets 0xd9efb6c, 0xd9efb6c, 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efafc uses the jump table at 0xda7aa84 with targets 0xd9efb6c, 0xd9efb94, 0xd9efb94, 0xd9efb94, 0xd9efb94.
  The indirect jump at 0xd9efb44 uses the jump table at 0xda7aa98 with targets 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4, 0xd9efbe4.
  The indirect jump at 0xd9efa58 uses the jump table at 0xda7aa3c with targets 0xd9efa60, 0xd9efab8, 0xd9efab8, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0, 0xd9efab0.

- `__gllc_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9efde8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9efde8-0xd9f01a0 (952 bytes).
  It occupies 952 bytes.
  The `lw` at 0xd9efdf8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9efea4 loads 4 bytes from table(0xda7aab4) +0x0.
  The `lw` at 0xd9eff30 loads 4 bytes from table(0xda7aac8) +0x0.
  The `lw` at 0xd9eff80 loads 4 bytes from table(0xda7aaf4) +0x0.
  The `lw` at 0xd9effd4 loads 4 bytes from table(0xda7ab10) +0x0.
  The `lw` at 0xd9f001c loads 4 bytes from table(0xda7ab24) +0x0.
  The `sh` at 0xd9f0114 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9f011c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9f0124 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9f0128 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9f0130 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xd9f0134 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9f0138 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9f0140 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xd9efe28 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efe58 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efebc calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9effa0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9f003c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f0060 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f0094 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f00ac calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f00c8 calls __glImageSize [0xd9e3f68] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd9f00ec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9f016c calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd9f0184 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9efcc0, a3=?.
  The `beq` branch at 0xd9efe18 targets 0xd9efe38, is taken when a0 == at(=0x8011), and falls through when a0 != at(=0x8011).
  The `beq` branch at 0xd9efe30 targets 0xd9f0190 and is always taken.
  The `bltz` branch at 0xd9efe40 targets 0xd9efe50, is taken when t8(=a2) < 0 (signed), and falls through when t8(=a2) >= 0 (signed).
  The `bgez` branch at 0xd9efe48 targets 0xd9efe68, is taken when t9(=a3) >= 0 (signed), and falls through when t9(=a3) < 0 (signed).
  The `beq` branch at 0xd9efe60 targets 0xd9f0190 and is always taken.
  The `bne` branch at 0xd9efe6c targets 0xd9efe88, is taken when t0(=a1) < 0x190b (unsigned), and falls through when t0(=a1) >= 0x190b (unsigned).
  The `beql` branch at 0xd9efe78 targets 0xd9efed0, is taken when t0(=a1) == at(=0x8049), and falls through when t0(=a1) != at(=0x8049); its branch-likely delay slot `lw a2,88(sp)` at 0xd9efe7c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9efe80 targets 0xd9efeb4 and is always taken.
  The `beq` branch at 0xd9efe90 targets 0xd9efeb4, is taken when t2(=a1-6406) >= 0x5 (unsigned), and falls through when t2(=a1-6406) < 0x5 (unsigned).
  The `beq` branch at 0xd9efec4 targets 0xd9f0190 and is always taken.
  The `bne` branch at 0xd9efed8 targets 0xd9efefc, is taken when a2(?) < at(=0x8001) (unsigned), and falls through when a2(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9efee4 targets 0xd9eff90, is taken when a2(?) == at(=0x80e0), and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9efeec targets 0xd9eff90, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9efef4 targets 0xd9eff98 and is always taken.
  The `bne` branch at 0xd9eff00 targets 0xd9eff18, is taken when a2(?) < 0x190b (unsigned), and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9eff08 targets 0xd9eff90, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9eff10 targets 0xd9eff98 and is always taken.
  The `beq` branch at 0xd9eff1c targets 0xd9eff98, is taken when t3(?) >= 0xb (unsigned), and falls through when t3(?) < 0xb (unsigned).
  The `bne` branch at 0xd9eff4c targets 0xd9effe4, is taken when a3(?) < 0x1a01 (unsigned), and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9eff58 targets 0xd9effb0, is taken when a3(?) < at(=0x8037) (unsigned), and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9eff6c targets 0xd9f00a4, is taken when t4(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t4(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9eff90 targets 0xd9eff44 and is always taken.
  The `beq` branch at 0xd9effa8 targets 0xd9f0190 and is always taken.
  The `beq` branch at 0xd9effc0 targets 0xd9f00a4, is taken when t5(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t5(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9effe8 targets 0xd9f0004, is taken when a3(?) < 0x1407 (unsigned), and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9efff4 targets 0xd9f002c, is taken when a3(?) == at(=0x1a00), and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9efffc targets 0xd9f00a4 and is always taken.
  The `beq` branch at 0xd9f0008 targets 0xd9f00a4, is taken when t7(?) >= 0x7 (unsigned), and falls through when t7(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9f002c targets 0xd9f00bc, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9f0044 targets 0xd9f0190 and is always taken.
  The `beq` branch at 0xd9f0050 targets 0xd9f00bc, is taken when a2(?) == at(=0x1907), and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9f0068 targets 0xd9f0190 and is always taken.
  The `beq` branch at 0xd9f0074 targets 0xd9f00bc, is taken when a2(?) == at(=0x1908), and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9f007c targets 0xd9f00bc, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9f0084 targets 0xd9f00bc, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9f009c targets 0xd9f0190 and is always taken.
  The `beq` branch at 0xd9f00b4 targets 0xd9f0190 and is always taken.
  The `beq` branch at 0xd9f00fc targets 0xd9f0190, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9f013c targets 0xd9f0178, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xd9f0150 targets 0xd9f0178, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd9f0198 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_InvalidValue), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The indirect jump at 0xd9eff88 uses the jump table at 0xda7aaf4 with targets 0xd9f004c, 0xd9f004c, 0xd9f004c, 0xd9f0070, 0xd9f0070, 0xd9f0070, 0xd9f0070.
  The indirect jump at 0xd9effdc uses the jump table at 0xda7ab10 with targets 0xd9f004c, 0xd9f0070, 0xd9f0070, 0xd9f0070, 0xd9f0070.
  The indirect jump at 0xd9f0024 uses the jump table at 0xda7ab24 with targets 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc.
  The indirect jump at 0xd9eff38 uses the jump table at 0xda7aac8 with targets 0xd9eff40, 0xd9eff98, 0xd9eff98, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90.
  The indirect jump at 0xd9eff88 uses the jump table at 0xda7aaf4 with targets 0xd9f004c, 0xd9f004c, 0xd9f004c, 0xd9f0070, 0xd9f0070, 0xd9f0070, 0xd9f0070.
  The indirect jump at 0xd9effdc uses the jump table at 0xda7ab10 with targets 0xd9f004c, 0xd9f0070, 0xd9f0070, 0xd9f0070, 0xd9f0070.
  The indirect jump at 0xd9f0024 uses the jump table at 0xda7ab24 with targets 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc.
  The indirect jump at 0xd9efeac uses the jump table at 0xda7aab4 with targets 0xd9efecc, 0xd9efecc, 0xd9efecc, 0xd9efecc, 0xd9efecc.
  The indirect jump at 0xd9eff88 uses the jump table at 0xda7aaf4 with targets 0xd9f004c, 0xd9f004c, 0xd9f004c, 0xd9f0070, 0xd9f0070, 0xd9f0070, 0xd9f0070.
  The indirect jump at 0xd9effdc uses the jump table at 0xda7ab10 with targets 0xd9f004c, 0xd9f0070, 0xd9f0070, 0xd9f0070, 0xd9f0070.
  The indirect jump at 0xd9f0024 uses the jump table at 0xda7ab24 with targets 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc, 0xd9f00bc.
  The indirect jump at 0xd9eff38 uses the jump table at 0xda7aac8 with targets 0xd9eff40, 0xd9eff98, 0xd9eff98, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90, 0xd9eff90.

- `__gllc_SeparableFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f02e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9f02e8-0xd9f0730 (1096 bytes).
  It occupies 1096 bytes.
  The `lw` at 0xd9f02f8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9f03a4 loads 4 bytes from table(0xda7ab40) +0x0.
  The `lw` at 0xd9f0430 loads 4 bytes from table(0xda7ab54) +0x0.
  The `lw` at 0xd9f0480 loads 4 bytes from table(0xda7ab80) +0x0.
  The `lw` at 0xd9f04d4 loads 4 bytes from table(0xda7ab9c) +0x0.
  The `lw` at 0xd9f051c loads 4 bytes from table(0xda7abb0) +0x0.
  The `sh` at 0xd9f0648 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9f0650 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9f0658 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9f065c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9f0664 stores 4 bytes to ret(__glDlistAllocOp2) +0x28.
  The `sw` at 0xd9f0668 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `sw` at 0xd9f066c stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9f0670 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9f067c stores 4 bytes to ret(__glDlistAllocOp2) +0x2c.
  The `jalr` at 0xd9f0328 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0358 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f03bc calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f04a0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd9f053c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f0560 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f0594 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f05ac calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd9f05c8 calls __glImageSize [0xd9e3f68] with a0=a2 at entry (arg2), a1=0x1, a2=?, a3=?.
  The `jalr` at 0xd9f05e8 calls __glImageSize [0xd9e3f68] with a0=0x1, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd9f0620 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=-0x4, a3=?.
  The `jalr` at 0xd9f06ac calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=a2 at entry (arg2), a2=0x1, a3=?.
  The `jalr` at 0xd9f06fc calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=0x1, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd9f0714 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9f01a0, a3=?.
  The `beq` branch at 0xd9f0318 targets 0xd9f0338, is taken when a0 == at(=0x8012), and falls through when a0 != at(=0x8012).
  The `beq` branch at 0xd9f0330 targets 0xd9f0720 and is always taken.
  The `bltz` branch at 0xd9f0340 targets 0xd9f0350, is taken when t8(=a2) < 0 (signed), and falls through when t8(=a2) >= 0 (signed).
  The `bgez` branch at 0xd9f0348 targets 0xd9f0368, is taken when t9(=a3) >= 0 (signed), and falls through when t9(=a3) < 0 (signed).
  The `beq` branch at 0xd9f0360 targets 0xd9f0720 and is always taken.
  The `bne` branch at 0xd9f036c targets 0xd9f0388, is taken when t1(=a1) < 0x190b (unsigned), and falls through when t1(=a1) >= 0x190b (unsigned).
  The `beql` branch at 0xd9f0378 targets 0xd9f03d0, is taken when t1(=a1) == at(=0x8049), and falls through when t1(=a1) != at(=0x8049); its branch-likely delay slot `lw a2,88(sp)` at 0xd9f037c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9f0380 targets 0xd9f03b4 and is always taken.
  The `beq` branch at 0xd9f0390 targets 0xd9f03b4, is taken when t3(=a1-6406) >= 0x5 (unsigned), and falls through when t3(=a1-6406) < 0x5 (unsigned).
  The `beq` branch at 0xd9f03c4 targets 0xd9f0720 and is always taken.
  The `bne` branch at 0xd9f03d8 targets 0xd9f03fc, is taken when a2(?) < at(=0x8001) (unsigned), and falls through when a2(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9f03e4 targets 0xd9f0490, is taken when a2(?) == at(=0x80e0), and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9f03ec targets 0xd9f0490, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9f03f4 targets 0xd9f0498 and is always taken.
  The `bne` branch at 0xd9f0400 targets 0xd9f0418, is taken when a2(?) < 0x190b (unsigned), and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9f0408 targets 0xd9f0490, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9f0410 targets 0xd9f0498 and is always taken.
  The `beq` branch at 0xd9f041c targets 0xd9f0498, is taken when t4(?) >= 0xb (unsigned), and falls through when t4(?) < 0xb (unsigned).
  The `bne` branch at 0xd9f044c targets 0xd9f04e4, is taken when a3(?) < 0x1a01 (unsigned), and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9f0458 targets 0xd9f04b0, is taken when a3(?) < at(=0x8037) (unsigned), and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9f046c targets 0xd9f05a4, is taken when t5(=table(-0x8362)) >= 0x7 (unsigned), and falls through when t5(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9f0490 targets 0xd9f0444 and is always taken.
  The `beq` branch at 0xd9f04a8 targets 0xd9f0720 and is always taken.
  The `beq` branch at 0xd9f04c0 targets 0xd9f05a4, is taken when t7(=table(-0x8032)) >= 0x5 (unsigned), and falls through when t7(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9f04e8 targets 0xd9f0504, is taken when a3(?) < 0x1407 (unsigned), and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9f04f4 targets 0xd9f052c, is taken when a3(?) == at(=0x1a00), and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9f04fc targets 0xd9f05a4 and is always taken.
  The `beq` branch at 0xd9f0508 targets 0xd9f05a4, is taken when t6(?) >= 0x7 (unsigned), and falls through when t6(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9f052c targets 0xd9f05bc, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9f0544 targets 0xd9f0720 and is always taken.
  The `beq` branch at 0xd9f0550 targets 0xd9f05bc, is taken when a2(?) == at(=0x1907), and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9f0568 targets 0xd9f0720 and is always taken.
  The `beq` branch at 0xd9f0574 targets 0xd9f05bc, is taken when a2(?) == at(=0x1908), and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9f057c targets 0xd9f05bc, is taken when a2(?) == at(=0x8000), and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9f0584 targets 0xd9f05bc, is taken when a2(?) == at(=0x80e1), and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9f059c targets 0xd9f0720 and is always taken.
  The `beq` branch at 0xd9f05b4 targets 0xd9f0720 and is always taken.
  The `beq` branch at 0xd9f0630 targets 0xd9f0720, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9f0678 targets 0xd9f06c4, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beql` branch at 0xd9f068c targets 0xd9f06c8, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw t8,56(sp)` at 0xd9f0690 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd9f06cc targets 0xd9f0708, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0xd9f06d4 targets 0xd9f0708, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xd9f0728 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_InvalidValue), ret(__glSetError), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The indirect jump at 0xd9f0488 uses the jump table at 0xda7ab80 with targets 0xd9f054c, 0xd9f054c, 0xd9f054c, 0xd9f0570, 0xd9f0570, 0xd9f0570, 0xd9f0570.
  The indirect jump at 0xd9f04dc uses the jump table at 0xda7ab9c with targets 0xd9f054c, 0xd9f0570, 0xd9f0570, 0xd9f0570, 0xd9f0570.
  The indirect jump at 0xd9f0524 uses the jump table at 0xda7abb0 with targets 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc.
  The indirect jump at 0xd9f0438 uses the jump table at 0xda7ab54 with targets 0xd9f0440, 0xd9f0498, 0xd9f0498, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490.
  The indirect jump at 0xd9f0488 uses the jump table at 0xda7ab80 with targets 0xd9f054c, 0xd9f054c, 0xd9f054c, 0xd9f0570, 0xd9f0570, 0xd9f0570, 0xd9f0570.
  The indirect jump at 0xd9f04dc uses the jump table at 0xda7ab9c with targets 0xd9f054c, 0xd9f0570, 0xd9f0570, 0xd9f0570, 0xd9f0570.
  The indirect jump at 0xd9f0524 uses the jump table at 0xda7abb0 with targets 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc.
  The indirect jump at 0xd9f03ac uses the jump table at 0xda7ab40 with targets 0xd9f03cc, 0xd9f03cc, 0xd9f03cc, 0xd9f03cc, 0xd9f03cc.
  The indirect jump at 0xd9f0488 uses the jump table at 0xda7ab80 with targets 0xd9f054c, 0xd9f054c, 0xd9f054c, 0xd9f0570, 0xd9f0570, 0xd9f0570, 0xd9f0570.
  The indirect jump at 0xd9f04dc uses the jump table at 0xda7ab9c with targets 0xd9f054c, 0xd9f0570, 0xd9f0570, 0xd9f0570, 0xd9f0570.
  The indirect jump at 0xd9f0524 uses the jump table at 0xda7abb0 with targets 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc, 0xd9f05bc.
  The indirect jump at 0xd9f0438 uses the jump table at 0xda7ab54 with targets 0xd9f0440, 0xd9f0498, 0xd9f0498, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490, 0xd9f0490.

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f0738 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9f0738-0xd9f074c (20 bytes).
  It occupies 20 bytes.
  The return at 0xd9f0744 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f0754 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9f0754-0xd9f0768 (20 bytes).
  It occupies 20 bytes.
  The return at 0xd9f0760 has v0 = ?.

- `__gllc_ColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f0bc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xd9f0bc0-0xd9f0e14 (596 bytes).
  It occupies 596 bytes.
  The `lw` at 0xd9f0bf4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9f0bf8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9f0c10 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xd9f0c28 stores 4 bytes to abs 0x1018.
  The `sh` at 0xd9f0d80 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xd9f0d84 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xd9f0d94 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xd9f0da0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xd9f0da8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `sw` at 0xd9f0db0 stores 4 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sw` at 0xd9f0db8 stores 4 bytes to ret(__glDlistAllocOp2) +0x24.
  The `jalr` at 0xd9f0c18 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0c34 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0c64 calls __glCheckColorTableArgs [0xd9ce260] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd9f0cac calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9f0cc4 calls __gllc_InvalidValue [0xd9933a0] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9f0cdc calls __gllc_InvalidOperation [0xd993468] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9f0d20 calls __gllc_TableTooLarge [0xd9934cc] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9f0d40 calls __glImageSize [0xd9e3f68] with a0=a2 at entry (arg2), a1=0x1, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd9f0d64 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xd9f0dd8 calls __glFillImage [0xd9e4c8c] with a0=[0x1010], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0df4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9f0b38, a3=?.
  The `beq` branch at 0xd9f0c00 targets 0xd9f0c44, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9f0c08 targets 0xd9f0c2c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9f0c24 targets 0xd9f0c44 and is always taken.
  The `beq` branch at 0xd9f0c3c targets 0xd9f0e00 and is always taken.
  The `beq` branch at 0xd9f0c70 targets 0xd9f0d30, is taken when v0(=ret(__glCheckColorTableArgs)) == 0, and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9f0c7c targets 0xd9f0ca4, is taken when v0(=ret(__glCheckColorTableArgs)) == at(=0x500), and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x500).
  The `beq` branch at 0xd9f0c84 targets 0xd9f0cbc, is taken when v0(=ret(__glCheckColorTableArgs)) == at(=0x501), and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x501).
  The `beq` branch at 0xd9f0c8c targets 0xd9f0cd4, is taken when v0(=ret(__glCheckColorTableArgs)) == at(=0x502), and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x502).
  The `beql` branch at 0xd9f0c94 targets 0xd9f0cf0, is taken when v0(=ret(__glCheckColorTableArgs)) == at(=0x8031), and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x8031); its branch-likely delay slot `ori at,zero,0x80bc` at 0xd9f0c98 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9f0c9c targets 0xd9f0d30 and is always taken.
  The `beq` branch at 0xd9f0cb4 targets 0xd9f0e00 and is always taken.
  The `beq` branch at 0xd9f0ccc targets 0xd9f0e00 and is always taken.
  The `beq` branch at 0xd9f0ce4 targets 0xd9f0e00 and is always taken.
  The `beq` branch at 0xd9f0cf0 targets 0xd9f0d18, is taken when t0(=a0) == at(=0x80bc), and falls through when t0(=a0) != at(=0x80bc).
  The `beq` branch at 0xd9f0cf8 targets 0xd9f0d18, is taken when t0(=a0) == at(=0x80d0), and falls through when t0(=a0) != at(=0x80d0).
  The `beq` branch at 0xd9f0d00 targets 0xd9f0d18, is taken when t0(=a0) == at(=0x80d1), and falls through when t0(=a0) != at(=0x80d1).
  The `beq` branch at 0xd9f0d08 targets 0xd9f0d18, is taken when t0(=a0) == at(=0x80d2), and falls through when t0(=a0) != at(=0x80d2).
  The `beq` branch at 0xd9f0d10 targets 0xd9f0d30 and is always taken.
  The `beq` branch at 0xd9f0d28 targets 0xd9f0e00 and is always taken.
  The `beq` branch at 0xd9f0d74 targets 0xd9f0e00, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd9f0e0c has v0 = one of ret(__glSetError), ret(__gllc_InvalidEnum), ret(__gllc_InvalidValue), ret(__gllc_InvalidOperation), ret(__gllc_TableTooLarge), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
  The instructions from 0xd9f0cec to 0xd9f0cec are not reached by any path from the entry, and their branches are not listed.

- `__glim_SubdivPatchParameterfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda09b20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda09b20-0xda09cfc (476 bytes).
  It occupies 476 bytes.
  The `lw` at 0xda09b44 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda09b80 loads 4 bytes from abs 0xda7af20.
  The `lwc1` at 0xda09b98 loads 4 bytes from abs 0xda7af24.
  The `lwc1` at 0xda09bb0 loads 4 bytes from abs 0xda7af28.
  The `lwc1` at 0xda09bc8 loads 4 bytes from abs 0xda7af2c.
  The `sw` at 0xda09c74 stores 4 bytes to [0x1010] +0x17c0.
  The `sw` at 0xda09cdc stores 4 bytes to [0x1010] +0x17b8.
  The `swc1` at 0xda09ce8 stores 4 bytes to [0x1010] +0x17bc.
  The `jalr` at 0xda09b5c calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09be4 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09c9c calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09cb8 calls ceil with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda09b40 targets 0xda09b6c, is taken when a0 == at(=0x6010), and falls through when a0 != at(=0x6010).
  The `beql` branch at 0xda09b4c targets 0xda09b70, is taken when a0 == at(=0x6011), and falls through when a0 != at(=0x6011); its branch-likely delay slot `addiu at,zero,24593` at 0xda09b50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda09b64 targets 0xda09cec and is always taken.
  The `bnel` branch at 0xda09b70 targets 0xda09c7c, is taken when a0 != at(=0x6011), and falls through when a0 == at(=0x6011); its branch-likely delay slot `lui at,0x4080` at 0xda09b74 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda09b8c targets 0xda09bf8, is taken when f14 == f4(=0x46288400) (c.eq.s at 0xda09b84), and falls through when not (f14 == f4(=0x46288400) (c.eq.s at 0xda09b84)); its branch-likely delay slot `cfc1 t6,$31` at 0xda09b90 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda09ba4 targets 0xda09bf8, is taken when f14 == f6(=0x46288c00) (c.eq.s at 0xda09b9c), and falls through when not (f14 == f6(=0x46288c00) (c.eq.s at 0xda09b9c)); its branch-likely delay slot `cfc1 t6,$31` at 0xda09ba8 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda09bbc targets 0xda09bf8, is taken when f14 == f8(=0x46289c00) (c.eq.s at 0xda09bb4), and falls through when not (f14 == f8(=0x46289c00) (c.eq.s at 0xda09bb4)); its branch-likely delay slot `cfc1 t6,$31` at 0xda09bc0 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda09bd4 targets 0xda09bf8, is taken when f14 == f10(=0x4628a400) (c.eq.s at 0xda09bcc), and falls through when not (f14 == f10(=0x4628a400) (c.eq.s at 0xda09bcc)); its branch-likely delay slot `cfc1 t6,$31` at 0xda09bd8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda09bec targets 0xda09cec and is always taken.
  The `beql` branch at 0xda09c10 targets 0xda09c60, is taken when (t7(?) & 0x78) == 0, and falls through when (t7(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t7,$f16` at 0xda09c14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda09c3c targets 0xda09c54, is taken when (t7(?) & 0x78) != 0, and falls through when (t7(?) & 0x78) == 0.
  The `beq` branch at 0xda09c4c targets 0xda09c6c and is always taken.
  The `beq` branch at 0xda09c54 targets 0xda09c6c and is always taken.
  The `bltz` branch at 0xda09c64 targets 0xda09c54, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `beq` branch at 0xda09c70 targets 0xda09cec and is always taken.
  The `bc1f` branch at 0xda09c8c targets 0xda09cac, is taken when not (f18 < f14 (c.lt.s at 0xda09c84)), and falls through when f18 < f14 (c.lt.s at 0xda09c84).
  The `beq` branch at 0xda09ca4 targets 0xda09cec and is always taken.
  The return at 0xda09cf4 has v0 = one of ret(__glSetError), ?.
  The instructions from 0xda09bf4 to 0xda09bf4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda09c5c to 0xda09c5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda09c78 to 0xda09c78 are not reached by any path from the entry, and their branches are not listed.

- `__glim_SubdivPatchParameteriSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda09cfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda09cfc-0xda09d44 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0xda09d28 calls __glim_SubdivPatchParameterfSGIX [0xda09b20] with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xda09d3c has v0 = ret(__glim_SubdivPatchParameterfSGIX).

- `__glim_SubdivPatchSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda09d44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda09d44-0xda0d1c0 (13436 bytes).
  It occupies 13436 bytes.
  The `lw` at 0xda09d54 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda09d90 loads 4 bytes from [0x1010] +0x17b8.
  The `lw` at 0xda09dac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda09db0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda09db4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0xda09dbc loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xda09dd4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda09ddc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda09de4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xda09dec loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xda09df8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xda09e18 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0xda09e20 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0xda09e28 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda09e30 loads 4 bytes from [a0] +0x0.
  The `lw` at 0xda09e34 loads 4 bytes from [a0+4] +0x0.
  The `lw` at 0xda09e38 loads 4 bytes from [a0+8] +0x0.
  The `lw` at 0xda09e3c loads 4 bytes from [a0+12] +0x0.
  12 such `sb` accesses store 1 byte to ?, including `sb` at 0xda09f10, `sb` at 0xda09f3c, `sb` at 0xda09f90.
  77 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda09f84, `lw` at 0xda0a0e4, `lw` at 0xda0a0ec.
  31 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda09fa0, `sw` at 0xda09fb8, `sw` at 0xda09fd4.
  3 such `lwc1` accesses load 4 bytes from [a0] +0x4, including `lwc1` at 0xda0a134, `lwc1` at 0xda0b18c, `lwc1` at 0xda0ba6c.
  4 such `lwc1` accesses load 4 bytes from [a0] +0x8, including `lwc1` at 0xda0a144, `lwc1` at 0xda0a8e0, `lwc1` at 0xda0b1a0.
  3 such `lwc1` accesses load 4 bytes from [a0] +0xc, including `lwc1` at 0xda0a154, `lwc1` at 0xda0a8f0, `lwc1` at 0xda0b158.
  3 such `lwc1` accesses load 4 bytes from [a0+4] +0x4, including `lwc1` at 0xda0a164, `lwc1` at 0xda0b1f0, `lwc1` at 0xda0baf0.
  4 such `lwc1` accesses load 4 bytes from [a0+4] +0x8, including `lwc1` at 0xda0a178, `lwc1` at 0xda0a944, `lwc1` at 0xda0b204.
  3 such `lwc1` accesses load 4 bytes from [a0+4] +0xc, including `lwc1` at 0xda0a18c, `lwc1` at 0xda0a954, `lwc1` at 0xda0b1b4.
  3 such `lwc1` accesses load 4 bytes from [a0+8] +0x4, including `lwc1` at 0xda0a1a0, `lwc1` at 0xda0b250, `lwc1` at 0xda0bb40.
  4 such `lwc1` accesses load 4 bytes from [a0+8] +0x8, including `lwc1` at 0xda0a1b4, `lwc1` at 0xda0a9a8, `lwc1` at 0xda0b260.
  3 such `lwc1` accesses load 4 bytes from [a0+8] +0xc, including `lwc1` at 0xda0a1c8, `lwc1` at 0xda0a9b8, `lwc1` at 0xda0b218.
  96 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0a1dc, `lwc1` at 0xda0a1f0, `lwc1` at 0xda0a204.
  The `lw` at 0xda0a244 loads 4 bytes from [a0] +0x28.
  The `lw` at 0xda0a264 loads 4 bytes from [a0] +0x2c.
  The `lw` at 0xda0a274 loads 4 bytes from [a0] +0x30.
  The `lwc1` at 0xda0a284 loads 4 bytes from [a0] +0x28.
  The `lwc1` at 0xda0a294 loads 4 bytes from [a0] +0x2c.
  The `lwc1` at 0xda0a2a0 loads 4 bytes from [a0] +0x30.
  The `lw` at 0xda0a2f8 loads 4 bytes from [a0+8] +0x34.
  The `lw` at 0xda0a318 loads 4 bytes from [a0+8] +0x38.
  The `lw` at 0xda0a328 loads 4 bytes from [a0+8] +0x3c.
  The `lwc1` at 0xda0a338 loads 4 bytes from [a0+8] +0x34.
  The `lwc1` at 0xda0a348 loads 4 bytes from [a0+8] +0x38.
  The `lwc1` at 0xda0a350 loads 4 bytes from [a0+8] +0x3c.
  The `lw` at 0xda0a440 loads 4 bytes from [a0+4] +0x34.
  The `lw` at 0xda0a460 loads 4 bytes from [a0+4] +0x38.
  The `lw` at 0xda0a470 loads 4 bytes from [a0+4] +0x3c.
  The `lwc1` at 0xda0a480 loads 4 bytes from [a0+4] +0x34.
  The `lwc1` at 0xda0a490 loads 4 bytes from [a0+4] +0x38.
  The `lwc1` at 0xda0a498 loads 4 bytes from [a0+4] +0x3c.
  144 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda0a584, `swc1` at 0xda0a590, `swc1` at 0xda0a598.
  3 such `lwc1` accesses load 4 bytes from [a0] +0x10, including `lwc1` at 0xda0a900, `lwc1` at 0xda0b168, `lwc1` at 0xda0ba08.
  The `lw` at 0xda0a910 loads 4 bytes from [a0] +0x4.
  3 such `lwc1` accesses load 4 bytes from [a0+4] +0x10, including `lwc1` at 0xda0a964, `lwc1` at 0xda0b1c8, `lwc1` at 0xda0ba8c.
  The `lw` at 0xda0a974 loads 4 bytes from [a0+4] +0x4.
  3 such `lwc1` accesses load 4 bytes from [a0+8] +0x10, including `lwc1` at 0xda0a9c8, `lwc1` at 0xda0b22c, `lwc1` at 0xda0bb10.
  The `lw` at 0xda0a9d8 loads 4 bytes from [a0+8] +0x4.
  The `lw` at 0xda0aa38 loads 4 bytes from [a0] +0x38.
  The `lw` at 0xda0aa54 loads 4 bytes from [a0] +0x3c.
  The `lw` at 0xda0aa64 loads 4 bytes from [a0] +0x40.
  The `lwc1` at 0xda0aa74 loads 4 bytes from [a0] +0x38.
  The `lwc1` at 0xda0aa84 loads 4 bytes from [a0] +0x3c.
  2 such `lwc1` accesses load 4 bytes from [a0] +0x40, including `lwc1` at 0xda0aa90, `lwc1` at 0xda0b318.
  The `lw` at 0xda0aa98 loads 4 bytes from [a0] +0x34.
  The `lw` at 0xda0aaf8 loads 4 bytes from [a0+8] +0x48.
  The `lw` at 0xda0ab14 loads 4 bytes from [a0+8] +0x4c.
  The `lw` at 0xda0ab24 loads 4 bytes from [a0+8] +0x50.
  The `lwc1` at 0xda0ab34 loads 4 bytes from [a0+8] +0x48.
  The `lwc1` at 0xda0ab44 loads 4 bytes from [a0+8] +0x4c.
  The `lwc1` at 0xda0ab4c loads 4 bytes from [a0+8] +0x50.
  The `lw` at 0xda0ab54 loads 4 bytes from [a0+8] +0x44.
  The `lw` at 0xda0ac64 loads 4 bytes from [a0+4] +0x48.
  The `lw` at 0xda0ac78 loads 4 bytes from [a0+4] +0x4c.
  The `lw` at 0xda0ac88 loads 4 bytes from [a0+4] +0x50.
  The `lwc1` at 0xda0ac98 loads 4 bytes from [a0+4] +0x48.
  The `lwc1` at 0xda0aca8 loads 4 bytes from [a0+4] +0x4c.
  The `lwc1` at 0xda0acb0 loads 4 bytes from [a0+4] +0x50.
  The `lw` at 0xda0acb8 loads 4 bytes from [a0+4] +0x44.
  2 such `lwc1` accesses load 4 bytes from [a0] +0x14, including `lwc1` at 0xda0b178, `lwc1` at 0xda0ba18.
  2 such `lwc1` accesses load 4 bytes from [a0+4] +0x14, including `lwc1` at 0xda0b1dc, `lwc1` at 0xda0ba9c.
  2 such `lwc1` accesses load 4 bytes from [a0+8] +0x14, including `lwc1` at 0xda0b240, `lwc1` at 0xda0bb1c.
  The `lw` at 0xda0b2b4 loads 4 bytes from [a0] +0x48.
  The `lw` at 0xda0b2d4 loads 4 bytes from [a0] +0x4c.
  The `lw` at 0xda0b2e4 loads 4 bytes from [a0] +0x50.
  The `lwc1` at 0xda0b2f4 loads 4 bytes from [a0] +0x48.
  2 such `lwc1` accesses load 4 bytes from [a0] +0x4c, including `lwc1` at 0xda0b304, `lwc1` at 0xda0bc20.
  2 such `lwc1` accesses load 4 bytes from [a0] +0x50, including `lwc1` at 0xda0b310, `lwc1` at 0xda0bc28.
  The `lwc1` at 0xda0b320 loads 4 bytes from [a0] +0x44.
  The `lw` at 0xda0b37c loads 4 bytes from [a0+8] +0x5c.
  The `lw` at 0xda0b39c loads 4 bytes from [a0+8] +0x60.
  The `lw` at 0xda0b3ac loads 4 bytes from [a0+8] +0x64.
  The `lwc1` at 0xda0b3bc loads 4 bytes from [a0+8] +0x5c.
  The `lwc1` at 0xda0b3cc loads 4 bytes from [a0+8] +0x60.
  2 such `lwc1` accesses load 4 bytes from [a0+8] +0x64, including `lwc1` at 0xda0b3d4, `lwc1` at 0xda0bcfc.
  The `lwc1` at 0xda0b3dc loads 4 bytes from [a0+8] +0x54.
  The `lwc1` at 0xda0b3e4 loads 4 bytes from [a0+8] +0x58.
  The `lw` at 0xda0b4f4 loads 4 bytes from [a0+4] +0x5c.
  The `lw` at 0xda0b514 loads 4 bytes from [a0+4] +0x60.
  The `lw` at 0xda0b524 loads 4 bytes from [a0+4] +0x64.
  The `lwc1` at 0xda0b534 loads 4 bytes from [a0+4] +0x5c.
  The `lwc1` at 0xda0b544 loads 4 bytes from [a0+4] +0x60.
  2 such `lwc1` accesses load 4 bytes from [a0+4] +0x64, including `lwc1` at 0xda0b54c, `lwc1` at 0xda0bea4.
  The `lwc1` at 0xda0b554 loads 4 bytes from [a0+4] +0x54.
  The `lwc1` at 0xda0b55c loads 4 bytes from [a0+4] +0x58.
  The `lwc1` at 0xda0ba28 loads 4 bytes from [a0] +0x18.
  The `lw` at 0xda0ba38 loads 4 bytes from [a0] +0xc.
  The `lwc1` at 0xda0baac loads 4 bytes from [a0+4] +0x18.
  The `lw` at 0xda0babc loads 4 bytes from [a0+4] +0xc.
  The `lwc1` at 0xda0bb24 loads 4 bytes from [a0+8] +0x18.
  The `lw` at 0xda0bb2c loads 4 bytes from [a0+8] +0xc.
  The `lw` at 0xda0bba8 loads 4 bytes from [a0] +0x58.
  The `lw` at 0xda0bbc8 loads 4 bytes from [a0] +0x5c.
  The `lw` at 0xda0bbd8 loads 4 bytes from [a0] +0x60.
  The `lwc1` at 0xda0bbe8 loads 4 bytes from [a0] +0x58.
  The `lwc1` at 0xda0bbf8 loads 4 bytes from [a0] +0x5c.
  The `lwc1` at 0xda0bc04 loads 4 bytes from [a0] +0x60.
  The `lw` at 0xda0bc0c loads 4 bytes from [a0] +0x54.
  The `lw` at 0xda0bc88 loads 4 bytes from [a0+8] +0x70.
  The `lw` at 0xda0bca8 loads 4 bytes from [a0+8] +0x74.
  The `lw` at 0xda0bcb8 loads 4 bytes from [a0+8] +0x78.
  The `lwc1` at 0xda0bcc8 loads 4 bytes from [a0+8] +0x70.
  The `lwc1` at 0xda0bcd8 loads 4 bytes from [a0+8] +0x74.
  The `lwc1` at 0xda0bce0 loads 4 bytes from [a0+8] +0x78.
  The `lw` at 0xda0bce8 loads 4 bytes from [a0+8] +0x6c.
  The `lwc1` at 0xda0bd04 loads 4 bytes from [a0+8] +0x68.
  The `lw` at 0xda0be30 loads 4 bytes from [a0+4] +0x70.
  The `lw` at 0xda0be50 loads 4 bytes from [a0+4] +0x74.
  The `lw` at 0xda0be60 loads 4 bytes from [a0+4] +0x78.
  The `lwc1` at 0xda0be70 loads 4 bytes from [a0+4] +0x70.
  The `lwc1` at 0xda0be80 loads 4 bytes from [a0+4] +0x74.
  The `lwc1` at 0xda0be88 loads 4 bytes from [a0+4] +0x78.
  The `lw` at 0xda0be90 loads 4 bytes from [a0+4] +0x6c.
  The `lwc1` at 0xda0beac loads 4 bytes from [a0+4] +0x68.
  The `lbu` at 0xda0c3f4 loads 1 byte from ?.
  53 such `lb` accesses load 1 byte from ?, including `lb` at 0xda0c514, `lb` at 0xda0c518, `lb` at 0xda0c528.
  The `lw` at 0xda0cdcc loads 4 bytes from table(0xda7af30) +0x0.
  11 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) +0x0, including `lw` at 0xda0ce24, `lw` at 0xda0ce58, `lw` at 0xda0cebc.
  6 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) -0x4, including `lw` at 0xda0ce84, `lw` at 0xda0cf24, `lw` at 0xda0cf80.
  3 such `sw` accesses store 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) -0x4, including `sw` at 0xda0ce9c, `sw` at 0xda0cf98, `sw` at 0xda0d0dc.
  3 such `sw` accesses store 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) +0x0, including `sw` at 0xda0ced0, `sw` at 0xda0cfc8, `sw` at 0xda0d10c.
  3 such `lw` accesses load 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) +0x0, including `lw` at 0xda0cf10, `lw` at 0xda0d008, `lw` at 0xda0d14c.
  3 such `lw` accesses load 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) -0x4, including `lw` at 0xda0cf28, `lw` at 0xda0d020, `lw` at 0xda0d164.
  4 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) -0x8, including `lw` at 0xda0cf48, `lw` at 0xda0d030, `lw` at 0xda0d090.
  2 such `sw` accesses store 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) -0x8, including `sw` at 0xda0cf60, `sw` at 0xda0d0a8.
  2 such `lw` accesses load 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) -0x8, including `lw` at 0xda0d034, `lw` at 0xda0d178.
  2 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) -0xc, including `lw` at 0xda0d054, `lw` at 0xda0d188.
  The `sw` at 0xda0d06c stores 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) -0xc.
  The `lw` at 0xda0d18c loads 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) -0xc.
  The `jalr` at 0xda09d9c calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09ea8 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=[[a0+4]]-1, a3=[[a0]]-1.
  The `jalr` at 0xda0c42c calls CopyVertex [0xda0d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda0c460 calls CopyVertex [0xda0d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda0c49c calls CopyVertex [0xda0d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda0c4cc calls CopyVertex [0xda0d1c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda0cd48 calls getenv with a0=0xda7aef0, a1=?, a2=?, a3=?.
  The `jalr` at 0xda0cd68 calls InitSubdivision [0xda0e810] with a0=sp-1512, a1=sp-236, a2=sp-352, a3=?.
  The `jalr` at 0xda0cdac calls DoRow [0xda11b1c] with a0=0x0, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0cdec calls DoRender [0xda15908] with a0=[[0x1010]+6072], a1=?, a2=?, a3=?.
  The `jalr` at 0xda0ce0c calls DoRow [0xda11b1c] with a0=[[0x1010]+6072], a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0ce30 calls DoRender [0xda15908] with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=?, a3=?.
  The `jalr` at 0xda0ce4c calls DoRow [0xda11b1c] with a0=[[0x1010]+6072], a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0ce6c calls DoRender [0xda15908] with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=?, a3=?.
  The `jalr` at 0xda0ceb4 calls DoRow [0xda11b1c] with a0=[[0x1010]+6072]-1, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0cee4 calls DoRow [0xda11b1c] with a0=[[0x1010]+6072], a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0cf04 calls DoRender [0xda15908] with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=?, a3=?.
  The `jalr` at 0xda0cf78 calls DoRow [0xda11b1c] with a0=[[0x1010]+6072]-2, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0cfac calls DoRow [0xda11b1c] with a0=[[0x1010]+6072]-1, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0cfdc calls DoRow [0xda11b1c] with a0=[[0x1010]+6072], a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0cffc calls DoRender [0xda15908] with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=?, a3=?.
  The `jalr` at 0xda0d088 calls DoRow [0xda11b1c] with a0=[[0x1010]+6072]-3, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0d0bc calls DoRow [0xda11b1c] with a0=[[0x1010]+6072]-2, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0d0f0 calls DoRow [0xda11b1c] with a0=[[0x1010]+6072]-1, a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0d120 calls DoRow [0xda11b1c] with a0=[[0x1010]+6072], a1=sp-1540, a2=?, a3=?.
  The `jalr` at 0xda0d140 calls DoRender [0xda15908] with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=?, a3=?.
  The `bne` branch at 0xda09d8c targets 0xda09dac, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xda09da4 targets 0xda0d19c and is always taken.
  The `bne` branch at 0xda09db8 targets 0xda09dd4, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xda09dcc targets 0xda09df4 and is always taken.
  The `bnel` branch at 0xda09df4 targets 0xda09e14, is taken when a2 != 0, and falls through when a2 == 0; its branch-likely delay slot `lw t6,0(a2)` at 0xda09df8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda09e08 targets 0xda09e30 and is always taken.
  The `beq` branch at 0xda09e74 targets 0xda09e98, is taken when a3(=[[a0]]-1) >= 0x8 (signed), and falls through when a3(=[[a0]]-1) < 0x8 (signed).
  The `beq` branch at 0xda09e80 targets 0xda09e98, is taken when a2(=[[a0+4]]-1) >= 0x9 (signed), and falls through when a2(=[[a0+4]]-1) < 0x9 (signed).
  The `beq` branch at 0xda09e88 targets 0xda09e98, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bnel` branch at 0xda09e90 targets 0xda09ec4, is taken when at(?) != 0, and falls through when at(?) == 0; its branch-likely delay slot `lw t9,1624(sp)` at 0xda09e94 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda09ecc targets 0xda09f10, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0xda09ed4 targets 0xda09f10, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0xda09edc targets 0xda09f10, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0xda09ee4 targets 0xda09f10, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0xda09eec targets 0xda09f10, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0xda09ef4 targets 0xda09f10, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bne` branch at 0xda09efc targets 0xda09f10, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bne` branch at 0xda09f04 targets 0xda09f10, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bgez` branch at 0xda09f20 targets 0xda09f40, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0xda09f48 targets 0xda09f88, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda09f50 targets 0xda09f88, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda09f58 targets 0xda09f88, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda09f60 targets 0xda09f88, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda09f68 targets 0xda09f88, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda09f70 targets 0xda09f88, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda09f78 targets 0xda09f88, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bnel` branch at 0xda09f80 targets 0xda0a0f0, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a2,6080(t4)` at 0xda09f84 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda09f8c targets 0xda09fa4, is taken when a0(?) >= 0x18 (signed), and falls through when a0(?) < 0x18 (signed).
  The `beq` branch at 0xda09fa8 targets 0xda09fbc, is taken when a0(?) >= 0x1d (signed), and falls through when a0(?) < 0x1d (signed).
  The `beq` branch at 0xda09fc0 targets 0xda09fd8, is taken when a0(?) >= 0x17 (signed), and falls through when a0(?) < 0x17 (signed).
  The `beq` branch at 0xda09fdc targets 0xda09ff0, is taken when a0(?) >= 0x1c (signed), and falls through when a0(?) < 0x1c (signed).
  The `beq` branch at 0xda09ff4 targets 0xda0a00c, is taken when a0(?) >= 0x16 (signed), and falls through when a0(?) < 0x16 (signed).
  The `beq` branch at 0xda0a010 targets 0xda0a024, is taken when a0(?) >= 0x1b (signed), and falls through when a0(?) < 0x1b (signed).
  The `beq` branch at 0xda0a028 targets 0xda0a040, is taken when a0(?) >= 0x15 (signed), and falls through when a0(?) < 0x15 (signed).
  The `beq` branch at 0xda0a044 targets 0xda0a058, is taken when a0(?) >= 0x1a (signed), and falls through when a0(?) < 0x1a (signed).
  The `bne` branch at 0xda0a05c targets 0xda09f88, is taken when a0(?) != v1(=0x20), and falls through when a0(?) == v1(=0x20).
  The `bnel` branch at 0xda0a06c targets 0xda0a07c, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t7,1620(sp)` at 0xda0a070 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a080 targets 0xda0a090, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw t8,1616(sp)` at 0xda0a084 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a090 targets 0xda0a0a0, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t9,1612(sp)` at 0xda0a094 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a0a0 targets 0xda0a0b0, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw t6,1608(sp)` at 0xda0a0a4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a0b0 targets 0xda0a0c0, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t7,1604(sp)` at 0xda0a0b4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a0c0 targets 0xda0a0d0, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw t8,1600(sp)` at 0xda0a0c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a0d0 targets 0xda0a0e0, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t9,1596(sp)` at 0xda0a0d4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a0e0 targets 0xda0a0f0, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw a2,6080(t4)` at 0xda0a0e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a0f8 targets 0xda0a12c, is taken when a2(?) == at(=0x2a21), and falls through when a2(?) != at(=0x2a21).
  The `beq` branch at 0xda0a104 targets 0xda0a8d0, is taken when a2(?) == at(=0x2a23), and falls through when a2(?) != at(=0x2a23).
  The `beq` branch at 0xda0a110 targets 0xda0b150, is taken when a2(?) == at(=0x2a27), and falls through when a2(?) != at(=0x2a27).
  The `beq` branch at 0xda0a11c targets 0xda0b9fc, is taken when a2(?) == at(=0x2a29), and falls through when a2(?) != at(=0x2a29).
  The `beq` branch at 0xda0a124 targets 0xda0c3ac and is always taken.
  The `bne` branch at 0xda0a230 targets 0xda0a2b0, is taken when t6(?) < 0x3 (signed), and falls through when t6(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0a258 targets 0xda0a2b4, is taken when t6(?) != t7(=[[a0]+40]), and falls through when t6(?) == t7(=[[a0]+40]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0a25c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a268 targets 0xda0a2b4, is taken when t8(?) != t9(=[[a0]+44]), and falls through when t8(?) == t9(=[[a0]+44]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0a26c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a27c targets 0xda0a2b4, is taken when t6(?) != t7(=[[a0]+48]), and falls through when t6(?) == t7(=[[a0]+48]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0a280 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a2a8 targets 0xda0a2d8 and is always taken.
  The `bnel` branch at 0xda0a2e4 targets 0xda0a364, is taken when t9(?) < 0x4 (signed), and falls through when t9(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-33` at 0xda0a2e8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a30c targets 0xda0a364, is taken when t9(?) != t6(=[[a0+8]+52]), and falls through when t9(?) == t6(=[[a0+8]+52]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0a310 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a31c targets 0xda0a364, is taken when t7(?) != t8(=[[a0+8]+56]), and falls through when t7(?) == t8(=[[a0+8]+56]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0a320 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a330 targets 0xda0a364, is taken when t9(?) != t6(=[[a0+8]+60]), and falls through when t9(?) == t6(=[[a0+8]+60]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0a334 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a358 targets 0xda0a384 and is always taken.
  The `bnel` branch at 0xda0a388 targets 0xda0a408, is taken when s5(?) < 0x3 (signed), and falls through when s5(?) >= 0x3 (signed); its branch-likely delay slot `addiu at,zero,-65` at 0xda0a38c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a3b0 targets 0xda0a408, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0a3b4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a3c0 targets 0xda0a408, is taken when t9(?) != t6(?), and falls through when t9(?) == t6(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0a3c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a3d4 targets 0xda0a408, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0a3d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a3fc targets 0xda0a428 and is always taken.
  The `bnel` branch at 0xda0a430 targets 0xda0a4ac, is taken when t6(?) < 0x4 (signed), and falls through when t6(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-129` at 0xda0a434 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a454 targets 0xda0a4ac, is taken when t9(?) != t6(=[[a0+4]+52]), and falls through when t9(?) == t6(=[[a0+4]+52]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0a458 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a464 targets 0xda0a4ac, is taken when t7(?) != t8(=[[a0+4]+56]), and falls through when t7(?) == t8(=[[a0+4]+56]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0a468 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0a478 targets 0xda0a4ac, is taken when t9(?) != t6(=[[a0+4]+60]), and falls through when t9(?) == t6(=[[a0+4]+60]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0a47c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a4a0 targets 0xda0a4cc and is always taken.
  The `beql` branch at 0xda0a4d8 targets 0xda0a4ec, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0a4dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a4e0 targets 0xda0a4ec and is always taken.
  The `beq` branch at 0xda0a4ec targets 0xda0a4fc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda0a4f4 targets 0xda0a500 and is always taken.
  The `bne` branch at 0xda0a510 targets 0xda0a51c, is taken when v1(?) < 0x5 (signed), and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a544 targets 0xda0a554, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0a54c targets 0xda0a558 and is always taken.
  The `beq` branch at 0xda0a570 targets 0xda0a5a4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda0a59c targets 0xda0a578, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda0a5a8 targets 0xda0a5cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a5c4 targets 0xda0a5b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0a5d8 targets 0xda0a5ec, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0a5dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a5e0 targets 0xda0a5ec and is always taken.
  The `beq` branch at 0xda0a5ec targets 0xda0a5fc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0a5f4 targets 0xda0a600 and is always taken.
  The `bne` branch at 0xda0a610 targets 0xda0a61c, is taken when a1(?) < 0x5 (signed), and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a644 targets 0xda0a654, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0a64c targets 0xda0a658 and is always taken.
  The `beq` branch at 0xda0a670 targets 0xda0a6a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda0a69c targets 0xda0a678, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda0a6a8 targets 0xda0a6cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a6c4 targets 0xda0a6b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0a6d8 targets 0xda0a6ec, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0a6dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a6e0 targets 0xda0a6ec and is always taken.
  The `beq` branch at 0xda0a6ec targets 0xda0a6fc, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0a6f4 targets 0xda0a700 and is always taken.
  The `bnel` branch at 0xda0a710 targets 0xda0a720, is taken when s5(?) < 0x5 (signed), and falls through when s5(?) >= 0x5 (signed); its branch-likely delay slot `sllv t7,t6,s5` at 0xda0a714 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0a744 targets 0xda0a754, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0a74c targets 0xda0a758 and is always taken.
  The `beq` branch at 0xda0a770 targets 0xda0a7a4, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0xda0a79c targets 0xda0a778, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xda0a7a8 targets 0xda0a7cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a7c4 targets 0xda0a7b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0a7d8 targets 0xda0a7e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0a7e0 targets 0xda0a7e8 and is always taken.
  The `beq` branch at 0xda0a7e8 targets 0xda0a7f8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda0a7f0 targets 0xda0a7fc and is always taken.
  The `bne` branch at 0xda0a80c targets 0xda0a818, is taken when a0(?) < 0x5 (signed), and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a840 targets 0xda0a850, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0a848 targets 0xda0a854 and is always taken.
  The `beq` branch at 0xda0a86c targets 0xda0a8a0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xda0a898 targets 0xda0a874, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xda0a8a4 targets 0xda0a8c8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a8c0 targets 0xda0a8ac, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0a8c8 targets 0xda0c3ac and is always taken.
  The `bnel` branch at 0xda0aa28 targets 0xda0aab8, is taken when t9(?) < 0x3 (signed), and falls through when t9(?) >= 0x3 (signed); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0aa2c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0aa48 targets 0xda0aab8, is taken when t9(?) != t6(=[[a0]+56]), and falls through when t9(?) == t6(=[[a0]+56]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0aa4c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0aa58 targets 0xda0aab8, is taken when t7(?) != t8(=[[a0]+60]), and falls through when t7(?) == t8(=[[a0]+60]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0aa5c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0aa6c targets 0xda0aab8, is taken when t9(?) != t6(=[[a0]+64]), and falls through when t9(?) == t6(=[[a0]+64]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0aa70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0aaac targets 0xda0aae0 and is always taken.
  The `bnel` branch at 0xda0aae8 targets 0xda0ab74, is taken when t9(?) < 0x4 (signed), and falls through when t9(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-33` at 0xda0aaec runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0ab08 targets 0xda0ab74, is taken when t9(?) != t6(=[[a0+8]+72]), and falls through when t9(?) == t6(=[[a0+8]+72]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0ab0c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0ab18 targets 0xda0ab74, is taken when t7(?) != t8(=[[a0+8]+76]), and falls through when t7(?) == t8(=[[a0+8]+76]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0ab1c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0ab2c targets 0xda0ab74, is taken when t9(?) != t6(=[[a0+8]+80]), and falls through when t9(?) == t6(=[[a0+8]+80]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0ab30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0ab68 targets 0xda0ab98 and is always taken.
  The `bnel` branch at 0xda0ab9c targets 0xda0ac28, is taken when s5(?) < 0x3 (signed), and falls through when s5(?) >= 0x3 (signed); its branch-likely delay slot `addiu at,zero,-65` at 0xda0aba0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0abbc targets 0xda0ac28, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0abc0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0abcc targets 0xda0ac28, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0abd0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0abe0 targets 0xda0ac28, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0abe4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0ac1c targets 0xda0ac4c and is always taken.
  The `bne` branch at 0xda0ac54 targets 0xda0acd4, is taken when t8(?) < 0x4 (signed), and falls through when t8(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0ac6c targets 0xda0acd8, is taken when t7(?) != t8(=[[a0+4]+72]), and falls through when t7(?) == t8(=[[a0+4]+72]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0ac70 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0ac7c targets 0xda0acd8, is taken when t9(?) != t6(=[[a0+4]+76]), and falls through when t9(?) == t6(=[[a0+4]+76]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0ac80 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0ac90 targets 0xda0acd8, is taken when t7(?) != t8(=[[a0+4]+80]), and falls through when t7(?) == t8(=[[a0+4]+80]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0ac94 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0accc targets 0xda0acfc and is always taken.
  The `beql` branch at 0xda0ad08 targets 0xda0ad1c, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0ad0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0ad10 targets 0xda0ad1c and is always taken.
  The `beq` branch at 0xda0ad1c targets 0xda0ad2c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0ad24 targets 0xda0ad30 and is always taken.
  The `bne` branch at 0xda0ad40 targets 0xda0ad4c, is taken when v1(?) < 0x5 (signed), and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0ad74 targets 0xda0ad84, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0ad7c targets 0xda0ad88 and is always taken.
  The `beq` branch at 0xda0ad9c targets 0xda0ade4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda0addc targets 0xda0ada4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda0ade8 targets 0xda0ae10, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0ae08 targets 0xda0adf0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0ae1c targets 0xda0ae30, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0ae20 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0ae24 targets 0xda0ae30 and is always taken.
  The `beq` branch at 0xda0ae30 targets 0xda0ae40, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0ae38 targets 0xda0ae44 and is always taken.
  The `bne` branch at 0xda0ae54 targets 0xda0ae60, is taken when a1(?) < 0x5 (signed), and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0ae88 targets 0xda0ae98, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda0ae90 targets 0xda0ae9c and is always taken.
  The `beq` branch at 0xda0aeb0 targets 0xda0aef8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda0aef0 targets 0xda0aeb8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda0aefc targets 0xda0af24, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0af1c targets 0xda0af04, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0af30 targets 0xda0af44, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0af34 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0af38 targets 0xda0af44 and is always taken.
  The `beq` branch at 0xda0af44 targets 0xda0af54, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0af4c targets 0xda0af58 and is always taken.
  The `bnel` branch at 0xda0af68 targets 0xda0af78, is taken when s5(?) < 0x5 (signed), and falls through when s5(?) >= 0x5 (signed); its branch-likely delay slot `sllv t6,t9,s5` at 0xda0af6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0af9c targets 0xda0afac, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0afa4 targets 0xda0afb0 and is always taken.
  The `beq` branch at 0xda0afc4 targets 0xda0b00c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0xda0b004 targets 0xda0afcc, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xda0b010 targets 0xda0b038, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b030 targets 0xda0b018, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0b044 targets 0xda0b054, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b04c targets 0xda0b054 and is always taken.
  The `beq` branch at 0xda0b054 targets 0xda0b064, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b05c targets 0xda0b068 and is always taken.
  The `bne` branch at 0xda0b078 targets 0xda0b084, is taken when a0(?) < 0x5 (signed), and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b0ac targets 0xda0b0bc, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0b0b4 targets 0xda0b0c0 and is always taken.
  The `beq` branch at 0xda0b0d4 targets 0xda0b11c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xda0b114 targets 0xda0b0dc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xda0b120 targets 0xda0b148, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b140 targets 0xda0b128, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0b148 targets 0xda0c3ac and is always taken.
  The `bnel` branch at 0xda0b2a0 targets 0xda0b334, is taken when t6(?) < 0x3 (signed), and falls through when t6(?) >= 0x3 (signed); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0b2a4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b2c8 targets 0xda0b334, is taken when t6(?) != t7(=[[a0]+72]), and falls through when t6(?) == t7(=[[a0]+72]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0b2cc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b2d8 targets 0xda0b334, is taken when t8(?) != t9(=[[a0]+76]), and falls through when t8(?) == t9(=[[a0]+76]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0b2dc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b2ec targets 0xda0b334, is taken when t6(?) != t7(=[[a0]+80]), and falls through when t6(?) == t7(=[[a0]+80]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0b2f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b328 targets 0xda0b360 and is always taken.
  The `bnel` branch at 0xda0b368 targets 0xda0b3f8, is taken when t9(?) < 0x4 (signed), and falls through when t9(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-33` at 0xda0b36c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b390 targets 0xda0b3f8, is taken when t9(?) != t6(=[[a0+8]+92]), and falls through when t9(?) == t6(=[[a0+8]+92]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0b394 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b3a0 targets 0xda0b3f8, is taken when t7(?) != t8(=[[a0+8]+96]), and falls through when t7(?) == t8(=[[a0+8]+96]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0b3a4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b3b4 targets 0xda0b3f8, is taken when t9(?) != t6(=[[a0+8]+100]), and falls through when t9(?) == t6(=[[a0+8]+100]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0b3b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b3ec targets 0xda0b420 and is always taken.
  The `bnel` branch at 0xda0b424 targets 0xda0b4b4, is taken when s5(?) < 0x3 (signed), and falls through when s5(?) >= 0x3 (signed); its branch-likely delay slot `addiu at,zero,-65` at 0xda0b428 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b44c targets 0xda0b4b4, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0b450 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b45c targets 0xda0b4b4, is taken when t9(?) != t6(?), and falls through when t9(?) == t6(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0b460 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b470 targets 0xda0b4b4, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0b474 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b4a8 targets 0xda0b4dc and is always taken.
  The `bnel` branch at 0xda0b4e4 targets 0xda0b570, is taken when t6(?) < 0x4 (signed), and falls through when t6(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-129` at 0xda0b4e8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b508 targets 0xda0b570, is taken when t9(?) != t6(=[[a0+4]+92]), and falls through when t9(?) == t6(=[[a0+4]+92]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0b50c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b518 targets 0xda0b570, is taken when t7(?) != t8(=[[a0+4]+96]), and falls through when t7(?) == t8(=[[a0+4]+96]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0b51c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0b52c targets 0xda0b570, is taken when t9(?) != t6(=[[a0+4]+100]), and falls through when t9(?) == t6(=[[a0+4]+100]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0b530 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b564 targets 0xda0b598 and is always taken.
  The `beql` branch at 0xda0b5a4 targets 0xda0b5b8, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0b5a8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b5ac targets 0xda0b5b8 and is always taken.
  The `beq` branch at 0xda0b5b8 targets 0xda0b5c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda0b5c0 targets 0xda0b5cc and is always taken.
  The `bne` branch at 0xda0b5dc targets 0xda0b5e8, is taken when v1(?) < 0x5 (signed), and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b610 targets 0xda0b620, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b618 targets 0xda0b624 and is always taken.
  The `beq` branch at 0xda0b63c targets 0xda0b680, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda0b678 targets 0xda0b644, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda0b684 targets 0xda0b6b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b6a8 targets 0xda0b68c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0b6bc targets 0xda0b6d0, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0b6c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b6c4 targets 0xda0b6d0 and is always taken.
  The `beq` branch at 0xda0b6d0 targets 0xda0b6e0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b6d8 targets 0xda0b6e4 and is always taken.
  The `bne` branch at 0xda0b6f4 targets 0xda0b700, is taken when a1(?) < 0x5 (signed), and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b728 targets 0xda0b738, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0b730 targets 0xda0b73c and is always taken.
  The `beq` branch at 0xda0b754 targets 0xda0b798, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda0b790 targets 0xda0b75c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda0b79c targets 0xda0b7c8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b7c0 targets 0xda0b7a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0b7d4 targets 0xda0b7e8, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0b7d8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b7dc targets 0xda0b7e8 and is always taken.
  The `beq` branch at 0xda0b7e8 targets 0xda0b7f8, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b7f0 targets 0xda0b7fc and is always taken.
  The `bnel` branch at 0xda0b80c targets 0xda0b81c, is taken when s5(?) < 0x5 (signed), and falls through when s5(?) >= 0x5 (signed); its branch-likely delay slot `sllv t7,t6,s5` at 0xda0b810 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0b840 targets 0xda0b850, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b848 targets 0xda0b854 and is always taken.
  The `beq` branch at 0xda0b86c targets 0xda0b8b0, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0xda0b8a8 targets 0xda0b874, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xda0b8b4 targets 0xda0b8e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b8d8 targets 0xda0b8bc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0b8ec targets 0xda0b8fc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b8f4 targets 0xda0b8fc and is always taken.
  The `beq` branch at 0xda0b8fc targets 0xda0b90c, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda0b904 targets 0xda0b910 and is always taken.
  The `bne` branch at 0xda0b920 targets 0xda0b92c, is taken when a0(?) < 0x5 (signed), and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b954 targets 0xda0b964, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b95c targets 0xda0b968 and is always taken.
  The `beq` branch at 0xda0b980 targets 0xda0b9c4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xda0b9bc targets 0xda0b988, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xda0b9c8 targets 0xda0b9f4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b9ec targets 0xda0b9d0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0b9f4 targets 0xda0c3ac and is always taken.
  The `bnel` branch at 0xda0bb94 targets 0xda0bc3c, is taken when t7(?) < 0x3 (signed), and falls through when t7(?) >= 0x3 (signed); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0bb98 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bbbc targets 0xda0bc3c, is taken when t7(?) != t8(=[[a0]+88]), and falls through when t7(?) == t8(=[[a0]+88]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0bbc0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bbcc targets 0xda0bc3c, is taken when t9(?) != t6(=[[a0]+92]), and falls through when t9(?) == t6(=[[a0]+92]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0bbd0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bbe0 targets 0xda0bc3c, is taken when t7(?) != t8(=[[a0]+96]), and falls through when t7(?) == t8(=[[a0]+96]); its branch-likely delay slot `mtc1 zero,$f0` at 0xda0bbe4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0bc30 targets 0xda0bc6c and is always taken.
  The `bnel` branch at 0xda0bc74 targets 0xda0bd18, is taken when t7(?) < 0x4 (signed), and falls through when t7(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-33` at 0xda0bc78 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bc9c targets 0xda0bd18, is taken when t7(?) != t8(=[[a0+8]+112]), and falls through when t7(?) == t8(=[[a0+8]+112]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0bca0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bcac targets 0xda0bd18, is taken when t9(?) != t6(=[[a0+8]+116]), and falls through when t9(?) == t6(=[[a0+8]+116]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0bcb0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bcc0 targets 0xda0bd18, is taken when t7(?) != t8(=[[a0+8]+120]), and falls through when t7(?) == t8(=[[a0+8]+120]); its branch-likely delay slot `addiu at,zero,-33` at 0xda0bcc4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0bd0c targets 0xda0bd44 and is always taken.
  The `bnel` branch at 0xda0bd48 targets 0xda0bdec, is taken when s5(?) < 0x3 (signed), and falls through when s5(?) >= 0x3 (signed); its branch-likely delay slot `addiu at,zero,-65` at 0xda0bd4c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bd70 targets 0xda0bdec, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0bd74 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bd80 targets 0xda0bdec, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0bd84 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0bd94 targets 0xda0bdec, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?); its branch-likely delay slot `addiu at,zero,-65` at 0xda0bd98 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0bde0 targets 0xda0be18 and is always taken.
  The `bnel` branch at 0xda0be20 targets 0xda0bec0, is taken when t6(?) < 0x4 (signed), and falls through when t6(?) >= 0x4 (signed); its branch-likely delay slot `addiu at,zero,-129` at 0xda0be24 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0be44 targets 0xda0bec0, is taken when t9(?) != t6(=[[a0+4]+112]), and falls through when t9(?) == t6(=[[a0+4]+112]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0be48 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0be54 targets 0xda0bec0, is taken when t7(?) != t8(=[[a0+4]+116]), and falls through when t7(?) == t8(=[[a0+4]+116]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0be58 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0be68 targets 0xda0bec0, is taken when t9(?) != t6(=[[a0+4]+120]), and falls through when t9(?) == t6(=[[a0+4]+120]); its branch-likely delay slot `addiu at,zero,-129` at 0xda0be6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0beb4 targets 0xda0beec and is always taken.
  The `beql` branch at 0xda0bef8 targets 0xda0bf0c, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0befc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0bf00 targets 0xda0bf0c and is always taken.
  The `beq` branch at 0xda0bf0c targets 0xda0bf1c, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0bf14 targets 0xda0bf20 and is always taken.
  The `bne` branch at 0xda0bf30 targets 0xda0bf3c, is taken when v1(?) < 0x5 (signed), and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0bf64 targets 0xda0bf74, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0bf6c targets 0xda0bf78 and is always taken.
  The `beq` branch at 0xda0bf90 targets 0xda0bfe8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda0bfe0 targets 0xda0bf98, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda0bfec targets 0xda0c01c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c014 targets 0xda0bff4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0c028 targets 0xda0c03c, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0c02c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0c030 targets 0xda0c03c and is always taken.
  The `beq` branch at 0xda0c03c targets 0xda0c04c, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0c044 targets 0xda0c050 and is always taken.
  The `bne` branch at 0xda0c060 targets 0xda0c06c, is taken when a1(?) < 0x5 (signed), and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0c094 targets 0xda0c0a4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0c09c targets 0xda0c0a8 and is always taken.
  The `beq` branch at 0xda0c0c0 targets 0xda0c118, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda0c110 targets 0xda0c0c8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda0c11c targets 0xda0c14c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c144 targets 0xda0c124, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beql` branch at 0xda0c158 targets 0xda0c16c, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `or a3,zero,zero` at 0xda0c15c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0c160 targets 0xda0c16c and is always taken.
  The `beq` branch at 0xda0c16c targets 0xda0c17c, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xda0c174 targets 0xda0c180 and is always taken.
  The `bnel` branch at 0xda0c190 targets 0xda0c1a0, is taken when s5(?) < 0x5 (signed), and falls through when s5(?) >= 0x5 (signed); its branch-likely delay slot `sllv t6,t9,s5` at 0xda0c194 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda0c1c4 targets 0xda0c1d4, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0c1cc targets 0xda0c1d8 and is always taken.
  The `beq` branch at 0xda0c1f0 targets 0xda0c248, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0xda0c240 targets 0xda0c1f8, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `beq` branch at 0xda0c24c targets 0xda0c27c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c274 targets 0xda0c254, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda0c288 targets 0xda0c298, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda0c290 targets 0xda0c298 and is always taken.
  The `beq` branch at 0xda0c298 targets 0xda0c2a8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda0c2a0 targets 0xda0c2ac and is always taken.
  The `bne` branch at 0xda0c2bc targets 0xda0c2c8, is taken when a0(?) < 0x5 (signed), and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0c2f0 targets 0xda0c300, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda0c2f8 targets 0xda0c304 and is always taken.
  The `beq` branch at 0xda0c31c targets 0xda0c374, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xda0c36c targets 0xda0c324, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xda0c378 targets 0xda0c3a8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c3a0 targets 0xda0c380, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bnel` branch at 0xda0c3b4 targets 0xda0c4f0, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t6,1560(sp)` at 0xda0c3b8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0c3bc targets 0xda0c4f0, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `lw t6,1560(sp)` at 0xda0c3c0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0c3d0 targets 0xda0c4f0, is taken when v0(=0x1) != t6(?), and falls through when v0(=0x1) == t6(?); its branch-likely delay slot `lw t6,1560(sp)` at 0xda0c3d4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda0c3d8 targets 0xda0c4ec, is taken when t7(?) != 0, and falls through when t7(?) == 0.
  The `bnel` branch at 0xda0c3e0 targets 0xda0c4f0, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t6,1560(sp)` at 0xda0c3e4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda0c3ec targets 0xda0c4f0, is taken when v0(=0x1) != t9(?), and falls through when v0(=0x1) == t9(?); its branch-likely delay slot `lw t6,1560(sp)` at 0xda0c3f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda0c400 targets 0xda0c4ec, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `bltz` branch at 0xda0c50c targets 0xda0cd40, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `beq` branch at 0xda0c55c targets 0xda0c56c, is taken when (t0(?) & 0x10) == 0, and falls through when (t0(?) & 0x10) != 0.
  The `beq` branch at 0xda0c564 targets 0xda0c570 and is always taken.
  The `beq` branch at 0xda0c578 targets 0xda0c588, is taken when (t0(?) & 0x20) == 0, and falls through when (t0(?) & 0x20) != 0.
  The `beq` branch at 0xda0c580 targets 0xda0c58c and is always taken.
  The `beq` branch at 0xda0c59c targets 0xda0c5b0, is taken when (t0(?) & 0x40) == 0, and falls through when (t0(?) & 0x40) != 0.
  The `beq` branch at 0xda0c5a8 targets 0xda0c5b4 and is always taken.
  The `beq` branch at 0xda0c5c4 targets 0xda0c5d4, is taken when (t0(?) & 0x80) == 0, and falls through when (t0(?) & 0x80) != 0.
  The `beq` branch at 0xda0c5cc targets 0xda0c5d8 and is always taken.
  The `beq` branch at 0xda0c5fc targets 0xda0c610, is taken when (t0(?) & 0x100) == 0, and falls through when (t0(?) & 0x100) != 0.
  The `beq` branch at 0xda0c608 targets 0xda0c614 and is always taken.
  The `beq` branch at 0xda0c628 targets 0xda0c63c, is taken when (t0(?) & 0x200) == 0, and falls through when (t0(?) & 0x200) != 0.
  The `beq` branch at 0xda0c634 targets 0xda0c640 and is always taken.
  The `beq` branch at 0xda0c650 targets 0xda0c664, is taken when (t0(?) & 0x400) == 0, and falls through when (t0(?) & 0x400) != 0.
  The `beq` branch at 0xda0c65c targets 0xda0c668 and is always taken.
  The `beq` branch at 0xda0c678 targets 0xda0c688, is taken when (t0(?) & 0x800) == 0, and falls through when (t0(?) & 0x800) != 0.
  The `beq` branch at 0xda0c680 targets 0xda0c68c and is always taken.
  The `bgez` branch at 0xda0c6a0 targets 0xda0c6b4, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0xda0c6ac targets 0xda0c6b8 and is always taken.
  The `bgez` branch at 0xda0c6c4 targets 0xda0c6d8, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0c6d0 targets 0xda0c6dc and is always taken.
  The `bgez` branch at 0xda0c6f0 targets 0xda0c704, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0c6fc targets 0xda0c708 and is always taken.
  The `bgez` branch at 0xda0c71c targets 0xda0c730, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0c728 targets 0xda0c738 and is always taken.
  The `bgez` branch at 0xda0c74c targets 0xda0c768, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xda0c760 targets 0xda0c76c and is always taken.
  The `bgez` branch at 0xda0c778 targets 0xda0c794, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xda0c78c targets 0xda0c798 and is always taken.
  The `bgez` branch at 0xda0c7ac targets 0xda0c7c8, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0xda0c7c0 targets 0xda0c7cc and is always taken.
  The `bgez` branch at 0xda0c7e0 targets 0xda0c7f4, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xda0c7ec targets 0xda0c7f8 and is always taken.
  The `beq` branch at 0xda0c808 targets 0xda0c824, is taken when (t0(?) & 0x1000) == 0, and falls through when (t0(?) & 0x1000) != 0.
  The `beq` branch at 0xda0c81c targets 0xda0c828 and is always taken.
  The `beq` branch at 0xda0c830 targets 0xda0c84c, is taken when (t0(?) & 0x2000) == 0, and falls through when (t0(?) & 0x2000) != 0.
  The `beq` branch at 0xda0c844 targets 0xda0c850 and is always taken.
  The `beq` branch at 0xda0c860 targets 0xda0c87c, is taken when (t0(?) & 0x4000) == 0, and falls through when (t0(?) & 0x4000) != 0.
  The `beq` branch at 0xda0c874 targets 0xda0c880 and is always taken.
  The `beq` branch at 0xda0c890 targets 0xda0c8a4, is taken when (t0(?) & 0x8000) == 0, and falls through when (t0(?) & 0x8000) != 0.
  The `beq` branch at 0xda0c89c targets 0xda0c8a8 and is always taken.
  The `beq` branch at 0xda0c8f4 targets 0xda0c90c, is taken when (t1(?) & 0x10) == 0, and falls through when (t1(?) & 0x10) != 0.
  The `beq` branch at 0xda0c904 targets 0xda0c910 and is always taken.
  The `beq` branch at 0xda0c918 targets 0xda0c92c, is taken when (t1(?) & 0x20) == 0, and falls through when (t1(?) & 0x20) != 0.
  The `beq` branch at 0xda0c924 targets 0xda0c930 and is always taken.
  The `beq` branch at 0xda0c940 targets 0xda0c95c, is taken when (t1(?) & 0x40) == 0, and falls through when (t1(?) & 0x40) != 0.
  The `beq` branch at 0xda0c954 targets 0xda0c960 and is always taken.
  The `beq` branch at 0xda0c970 targets 0xda0c984, is taken when (t1(?) & 0x80) == 0, and falls through when (t1(?) & 0x80) != 0.
  The `beq` branch at 0xda0c97c targets 0xda0c988 and is always taken.
  The `beq` branch at 0xda0c998 targets 0xda0c9b4, is taken when (t1(?) & 0xa0) == 0, and falls through when (t1(?) & 0xa0) != 0.
  The `beq` branch at 0xda0c9ac targets 0xda0c9b8 and is always taken.
  The `beq` branch at 0xda0c9cc targets 0xda0c9e0, is taken when (t1(?) & 0x140) == 0, and falls through when (t1(?) & 0x140) != 0.
  The `beq` branch at 0xda0c9d8 targets 0xda0c9e4 and is always taken.
  The `beq` branch at 0xda0c9f4 targets 0xda0ca10, is taken when (t1(?) & 0x280) == 0, and falls through when (t1(?) & 0x280) != 0.
  The `beq` branch at 0xda0ca08 targets 0xda0ca14 and is always taken.
  The `beq` branch at 0xda0ca24 targets 0xda0ca38, is taken when (t1(?) & 0x500) == 0, and falls through when (t1(?) & 0x500) != 0.
  The `beq` branch at 0xda0ca30 targets 0xda0ca3c and is always taken.
  The `beq` branch at 0xda0ca7c targets 0xda0ca94, is taken when (t1(?) & 0x1000) == 0, and falls through when (t1(?) & 0x1000) != 0.
  The `beq` branch at 0xda0ca8c targets 0xda0ca98 and is always taken.
  The `beq` branch at 0xda0caa0 targets 0xda0cabc, is taken when (t1(?) & 0x2000) == 0, and falls through when (t1(?) & 0x2000) != 0.
  The `beq` branch at 0xda0cab4 targets 0xda0cac0 and is always taken.
  The `beq` branch at 0xda0cad0 targets 0xda0caec, is taken when (t1(?) & 0x4000) == 0, and falls through when (t1(?) & 0x4000) != 0.
  The `beq` branch at 0xda0cae4 targets 0xda0caf0 and is always taken.
  The `beq` branch at 0xda0cb00 targets 0xda0cb14, is taken when (t1(?) & 0x8000) == 0, and falls through when (t1(?) & 0x8000) != 0.
  The `beq` branch at 0xda0cb0c targets 0xda0cb18 and is always taken.
  The `beq` branch at 0xda0cb28 targets 0xda0cb44, is taken when (t1(?) & a1(=0x100000)) == 0, and falls through when (t1(?) & a1(=0x100000)) != 0.
  The `beq` branch at 0xda0cb3c targets 0xda0cb48 and is always taken.
  The `beq` branch at 0xda0cb50 targets 0xda0cb6c, is taken when (t1(?) & a3(=0x200000)) == 0, and falls through when (t1(?) & a3(=0x200000)) != 0.
  The `beq` branch at 0xda0cb64 targets 0xda0cb70 and is always taken.
  The `beq` branch at 0xda0cb80 targets 0xda0cb9c, is taken when (t1(?) & t2(=0x400000)) == 0, and falls through when (t1(?) & t2(=0x400000)) != 0.
  The `beq` branch at 0xda0cb94 targets 0xda0cba0 and is always taken.
  The `beq` branch at 0xda0cbb0 targets 0xda0cbc4, is taken when (t1(?) & t4(=0x800000)) == 0, and falls through when (t1(?) & t4(=0x800000)) != 0.
  The `beq` branch at 0xda0cbbc targets 0xda0cbc8 and is always taken.
  The `bgez` branch at 0xda0cbd8 targets 0xda0cbf4, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0cbec targets 0xda0cbf8 and is always taken.
  The `bgez` branch at 0xda0cc00 targets 0xda0cc1c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0cc14 targets 0xda0cc20 and is always taken.
  The `bgez` branch at 0xda0cc30 targets 0xda0cc4c, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xda0cc44 targets 0xda0cc50 and is always taken.
  The `bgez` branch at 0xda0cc60 targets 0xda0cc74, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0cc6c targets 0xda0cc78 and is always taken.
  The `beq` branch at 0xda0cc88 targets 0xda0cca4, is taken when (t1(?) & t5(=0x10000)) == 0, and falls through when (t1(?) & t5(=0x10000)) != 0.
  The `beq` branch at 0xda0cc9c targets 0xda0cca8 and is always taken.
  The `beq` branch at 0xda0ccb0 targets 0xda0cccc, is taken when (t1(?) & ra(=0x20000)) == 0, and falls through when (t1(?) & ra(=0x20000)) != 0.
  The `beq` branch at 0xda0ccc4 targets 0xda0ccd0 and is always taken.
  The `beq` branch at 0xda0cce0 targets 0xda0ccfc, is taken when (t1(?) & s0(=0x40000)) == 0, and falls through when (t1(?) & s0(=0x40000)) != 0.
  The `beq` branch at 0xda0ccf4 targets 0xda0cd00 and is always taken.
  The `beq` branch at 0xda0cd10 targets 0xda0cd24, is taken when (t1(?) & s1(=0x80000)) == 0, and falls through when (t1(?) & s1(=0x80000)) != 0.
  The `beq` branch at 0xda0cd1c targets 0xda0cd28 and is always taken.
  The `bne` branch at 0xda0cd50 targets 0xda0d19c, is taken when v0(=ret(getenv)) != 0, and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xda0cdb8 targets 0xda0d19c, is taken when s4(=[[0x1010]+6072]) >= 0x5 (unsigned), and falls through when s4(=[[0x1010]+6072]) < 0x5 (unsigned).
  The `beq` branch at 0xda0cdf4 targets 0xda0d19c and is always taken.
  The `beq` branch at 0xda0ce74 targets 0xda0d19c and is always taken.
  The `beq` branch at 0xda0ce98 targets 0xda0d19c, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed).
  The `beq` branch at 0xda0cecc targets 0xda0cf24, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed).
  The `bne` branch at 0xda0cf1c targets 0xda0ced4, is taken when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed), and falls through when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed).
  The `bne` branch at 0xda0cf30 targets 0xda0cea4, is taken when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed), and falls through when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed).
  The `beq` branch at 0xda0cf38 targets 0xda0d1a0 and is always taken.
  The `beq` branch at 0xda0cf5c targets 0xda0d19c, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed).
  The `beq` branch at 0xda0cf94 targets 0xda0d030, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed).
  The `beq` branch at 0xda0cfc4 targets 0xda0d01c, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed).
  The `bne` branch at 0xda0d014 targets 0xda0cfcc, is taken when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed), and falls through when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed).
  The `bne` branch at 0xda0d028 targets 0xda0cf9c, is taken when t8(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < t7(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed), and falls through when t8(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= t7(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed).
  The `bne` branch at 0xda0d03c targets 0xda0cf68, is taken when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed), and falls through when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed).
  The `beq` branch at 0xda0d044 targets 0xda0d1a0 and is always taken.
  The `beq` branch at 0xda0d068 targets 0xda0d19c, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]+2) (signed).
  The `beq` branch at 0xda0d0a4 targets 0xda0d188, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed).
  The `beq` branch at 0xda0d0d8 targets 0xda0d174, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed).
  The `beq` branch at 0xda0d108 targets 0xda0d160, is taken when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed), and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed).
  The `bne` branch at 0xda0d158 targets 0xda0d110, is taken when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed), and falls through when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed).
  The `bne` branch at 0xda0d16c targets 0xda0d0e0, is taken when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed), and falls through when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed).
  The `bne` branch at 0xda0d180 targets 0xda0d0ac, is taken when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed), and falls through when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed).
  The `bne` branch at 0xda0d194 targets 0xda0d078, is taken when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) < t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-12]) (signed), and falls through when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) >= t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-12]) (signed).
  The return at 0xda0d1b8 has v0 = ?.
  The instructions from 0xda09e10 to 0xda09e10 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0a360 to 0xda0a360 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0a404 to 0xda0a404 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0a4a8 to 0xda0a4a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0a4e8 to 0xda0a4e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0a5e8 to 0xda0a5e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0a6e8 to 0xda0a6e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0aab4 to 0xda0aab4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0ab70 to 0xda0ab70 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0ac24 to 0xda0ac24 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0ad18 to 0xda0ad18 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0ae2c to 0xda0ae2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0af40 to 0xda0af40 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b330 to 0xda0b330 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b3f4 to 0xda0b3f4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b4b0 to 0xda0b4b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b56c to 0xda0b56c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b5b4 to 0xda0b5b4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b6cc to 0xda0b6cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0b7e4 to 0xda0b7e4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0bc38 to 0xda0bc38 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0bd14 to 0xda0bd14 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0bde8 to 0xda0bde8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0bebc to 0xda0bebc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0bf08 to 0xda0bf08 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0c038 to 0xda0c038 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda0c168 to 0xda0c168 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda0cdd4 uses the jump table at 0xda7af30 with targets 0xda0cddc, 0xda0cdfc, 0xda0ce7c, 0xda0cf40, 0xda0d04c.
  The indirect jump at 0xda0cdd4 uses the jump table at 0xda7af30 with targets 0xda0cddc, 0xda0cdfc, 0xda0ce7c, 0xda0cf40, 0xda0d04c.

- `__glim_TextureColorMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda1a1c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda1a1c4-0xda1a25c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda1a1f0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda1a20c loads 4 bytes from abs 0x1010.
  The `sb` at 0xda1a228 stores 1 byte to [0x1010] +0x9d8.
  The `sb` at 0xda1a22c stores 1 byte to [0x1010] +0x9d9.
  The `sb` at 0xda1a230 stores 1 byte to [0x1010] +0x9da.
  The `sb` at 0xda1a234 stores 1 byte to [0x1010] +0x9db.
  The `sw` at 0xda1a23c stores 4 bytes to abs 0x1018.
  The `lw` at 0xda1a240 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xda1a248 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xda1a218 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda1a208 targets 0xda1a228, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda1a220 targets 0xda1a24c and is always taken.
  The return at 0xda1a254 has v0 = one of ret(__glSetError), [0x1010].

- `__glim_TexImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda1d6dc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda1d6dc-0xda1d96c (656 bytes).
  It occupies 656 bytes.
  The `lw` at 0xda1d70c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda1d710 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda1d728 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda1d740, `sw` at 0xda1d948.
  The `lw` at 0xda1d7c8 loads 4 bytes from ret(__glLookUpTextureObject) +0x0.
  The `lw` at 0xda1d7f8 loads 4 bytes from [0x1010] +0x2fc.
  The `lw` at 0xda1d804 loads 4 bytes from [[0x1010]+764] +0x40.
  The `lw` at 0xda1d810 loads 4 bytes from [[0x1010]+764] +0x0.
  The `lw` at 0xda1d830 loads 4 bytes from [[0x1010]+764] +0x44.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda1d864, `lw` at 0xda1d920.
  The `sb` at 0xda1d944 stores 1 byte to ret(__glLookUpTextureObject) +0xc.
  The `lw` at 0xda1d94c loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xda1d954 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xda1d730 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1d74c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1d79c calls __glCheckTexImage3DArgs [0xda1c9fc] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda1d7bc calls __glLookUpTextureObject [0xda179c8] with a0=[0x1010], a1=0x806f, a2=?, a3=?.
  The `jalr` at 0xda1d7e8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xda1d870 calls (unknown callee) with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda1d8bc calls __glInitTexSourceUnpack [0xda1c6b8] with a0=[0x1010], a1=sp-508, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda1d8dc calls __glInitTexImageStore [0xda1c3e0] with a0=[0x1010], a1=sp-508, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda1d8f4 calls __glInitUnpacker3D [0xd9af628] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda1d90c calls __glInitPacker3D [0xd99e4b4] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda1d92c calls (unknown callee) with a0=[0x1010], a1=sp-508, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda1d718 targets 0xda1d75c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda1d720 targets 0xda1d744, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda1d73c targets 0xda1d75c and is always taken.
  The `beq` branch at 0xda1d754 targets 0xda1d958 and is always taken.
  The `beq` branch at 0xda1d7a8 targets 0xda1d958, is taken when v0(=ret(__glCheckTexImage3DArgs)) == 0, and falls through when v0(=ret(__glCheckTexImage3DArgs)) != 0.
  The `bne` branch at 0xda1d7d8 targets 0xda1d7f8, is taken when t5(=[ret(__glLookUpTextureObject)]) < 0x3 (signed), and falls through when t5(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda1d7f0 targets 0xda1d958 and is always taken.
  The `beq` branch at 0xda1d808 targets 0xda1d848, is taken when v1(=[[[0x1010]+764]+64]) == 0, and falls through when v1(=[[[0x1010]+764]+64]) != 0.
  The `beq` branch at 0xda1d81c targets 0xda1d830, is taken when a0(=[[[0x1010]+764]]) == at(=0x8011), and falls through when a0(=[[[0x1010]+764]]) != at(=0x8011).
  The `bne` branch at 0xda1d828 targets 0xda1d848, is taken when a0(=[[[0x1010]+764]]) != at(=0x8012), and falls through when a0(=[[[0x1010]+764]]) == at(=0x8012).
  The `beq` branch at 0xda1d840 targets 0xda1d848 and is always taken.
  The `beql` branch at 0xda1d880 targets 0xda1d93c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw t2,80(sp)` at 0xda1d884 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda1d888 targets 0xda1d938, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The return at 0xda1d964 has v0 = one of ret(__glSetError), ret(__glCheckTexImage3DArgs), ret(?).

- `__glim_TexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda1dd80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda1dd80-0xda1e000 (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0xda1ddc8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda1dde0 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xda1ded0 loads 8 bytes from abs 0xda7b260.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda1df64, `lwc1` at 0xda1df74, `lwc1` at 0xda1dfb0.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda1df84, `swc1` at 0xda1dfb4.
  The `jalr` at 0xda1ddec calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1de08 calls __glLookUpTextureParams [0xda178a0] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1de24 calls __glSetError [0xd9d1af8] with a0=0x500, a1=ret(__glLookUpTextureParams), a2=?, a3=?.
  The `jalr` at 0xda1de48 calls __glSetError [0xd9d1af8] with a0=0x500, a1=ret(__glLookUpTextureParams), a2=?, a3=?.
  The `jalr` at 0xda1dea4 calls __glSetError [0xd9d1af8] with a0=0x501, a1=ret(__glLookUpTextureParams), a2=?, a3=?.
  The `jalr` at 0xda1def8 calls truncf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda1df24 calls truncf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda1df40 calls truncf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda1df90 calls truncf with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda1dddc targets 0xda1ddfc, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda1ddf4 targets 0xda1dfcc and is always taken.
  The `bne` branch at 0xda1de14 targets 0xda1de34, is taken when v0(=ret(__glLookUpTextureParams)) != 0, and falls through when v0(=ret(__glLookUpTextureParams)) == 0.
  The `beq` branch at 0xda1de2c targets 0xda1dfcc and is always taken.
  The `beq` branch at 0xda1de38 targets 0xda1de58, is taken when s3(=a1) == at(=0x8146), and falls through when s3(=a1) != at(=0x8146).
  The `beq` branch at 0xda1de50 targets 0xda1dfcc and is always taken.
  The `beq` branch at 0xda1de60 targets 0xda1de88, is taken when a0(=a2-1) == at(=0x1), and falls through when a0(=a2-1) != at(=0x1).
  The `beql` branch at 0xda1de78 targets 0xda1de8c, is taken when v0(?) >= 0x401 (signed), and falls through when v0(?) < 0x401 (signed); its branch-likely delay slot `addiu t8,zero,1` at 0xda1de7c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda1de80 targets 0xda1de6c, is taken when a0(=a2-1) != v0(?), and falls through when a0(=a2-1) == v0(?); its branch-likely delay slot `addiu t7,zero,1` at 0xda1de84 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda1de94 targets 0xda1deb8, is taken when t9(?) < 0x401 (signed), and falls through when t9(?) >= 0x401 (signed); its branch-likely delay slot `mtc1 a0,$f4` at 0xda1de98 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda1deac targets 0xda1dfcc and is always taken.
  The `bc1f` branch at 0xda1df14 targets 0xda1df88, is taken when not (f30 < f2 (c.lt.d at 0xda1df0c)), and falls through when f30 < f2 (c.lt.d at 0xda1df0c).
  The `beq` branch at 0xda1df80 targets 0xda1dfb8 and is always taken.
  The `bne` branch at 0xda1dfc4 targets 0xda1def0, is taken when s1(?) != s3(=0x84), and falls through when s1(?) == s3(=0x84).
  The return at 0xda1dff8 has v0 = one of ret(__glSetError), ret(truncf).
  The instructions from 0xda1deb4 to 0xda1deb4 are not reached by any path from the entry, and their branches are not listed.

- `__glim_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2b6fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2b6fc-0xda2b8b0 (436 bytes).
  It occupies 436 bytes.
  The `lw` at 0xda2b72c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2b730 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2b748 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda2b760 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda2b884 loads 4 bytes from ?.
  The `jalr` at 0xda2b750 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b76c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b7c4 calls __glCheckTexSubImage3DArgs [0xda2ae0c] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2b80c calls __glInitTexSourceUnpack [0xda1c6b8] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b840 calls __glInitTexSubImageStore [0xda2aae0] with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda2b858 calls __glInitUnpacker3D [0xd9af628] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b870 calls __glInitPacker3D [0xd99e4b4] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2b890 calls (unknown callee) with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2b738 targets 0xda2b77c, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2b740 targets 0xda2b764, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2b75c targets 0xda2b77c and is always taken.
  The `beq` branch at 0xda2b774 targets 0xda2b89c and is always taken.
  The `beq` branch at 0xda2b7d0 targets 0xda2b89c, is taken when v0(=ret(__glCheckTexSubImage3DArgs)) == 0, and falls through when v0(=ret(__glCheckTexSubImage3DArgs)) != 0.
  The return at 0xda2b8a8 has v0 = one of ret(__glSetError), ret(__glCheckTexSubImage3DArgs), ret(?).

- `__glim_BindTextureEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c0d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2c0d4-0xda2c1e8 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda2c0f4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2c0fc loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2c118 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda2c138, `sw` at 0xda2c1c4.
  The `lw` at 0xda2c1c8 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xda2c1d4 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xda2c120 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xda2c144 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xda2c198 calls __glSetError [0xd9d1af8] with a0=0x500, a1=?, a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xda2c1b4 calls __glBindTexture [0xda2be88] with a0=[0x1010], a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=[0x1010].
  The `beq` branch at 0xda2c100 targets 0xda2c154, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2c108 targets 0xda2c13c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2c134 targets 0xda2c154 and is always taken.
  The `beq` branch at 0xda2c14c targets 0xda2c1d8 and is always taken.
  The `beq` branch at 0xda2c158 targets 0xda2c178, is taken when a2(=a0) == at(=0xde0), and falls through when a2(=a0) != at(=0xde0).
  The `beq` branch at 0xda2c160 targets 0xda2c180, is taken when a2(=a0) == at(=0xde1), and falls through when a2(=a0) != at(=0xde1).
  The `beq` branch at 0xda2c168 targets 0xda2c188, is taken when a2(=a0) == at(=0x806f), and falls through when a2(=a0) != at(=0x806f).
  The `beq` branch at 0xda2c170 targets 0xda2c190 and is always taken.
  The `beq` branch at 0xda2c178 targets 0xda2c1a8 and is always taken.
  The `beq` branch at 0xda2c180 targets 0xda2c1a8 and is always taken.
  The `beq` branch at 0xda2c188 targets 0xda2c1a8 and is always taken.
  The `beq` branch at 0xda2c1a0 targets 0xda2c1d8 and is always taken.
  The return at 0xda2c1e0 has v0 = one of ret(__glSetError), ret(__glBindTexture).

- `__glim_PrioritizeTexturesEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c1e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2c1e8-0xda2c384 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0xda2c228 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2c240 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2c29c loads 4 bytes from ?.
  The `lw` at 0xda2c2b0 loads 4 bytes from [0x1010] +0x6e80.
  The `lwc1` at 0xda2c2d0 loads 4 bytes from ?.
  The `lw` at 0xda2c2e0 loads 4 bytes from [0x1010] +0xdd8.
  2 such `lw` accesses load 4 bytes from ret(__glNamesLockData) +0x8, including `lw` at 0xda2c2e8, `lw` at 0xda2c318.
  The `swc1` at 0xda2c2ec stores 4 bytes to ret(__glNamesLockData) +0xf0.
  The `lw` at 0xda2c2f0 loads 4 bytes from [0x1010] +0x6e5c.
  The `lw` at 0xda2c2f8 loads 4 bytes from ret(__glNamesLockData) +0xec.
  The `lw` at 0xda2c300 loads 4 bytes from ([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2)) +0x0.
  The `lw` at 0xda2c304 loads 4 bytes from [([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))] +0xdc.
  The `lwc1` at 0xda2c310 loads 4 bytes from ret(__glNamesLockData) +0xf0.
  The `swc1` at 0xda2c314 stores 4 bytes to [([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0.
  The `lw` at 0xda2c31c loads 4 bytes from [0x1010] +0x9b0.
  The `swc1` at 0xda2c32c stores 4 bytes to ?.
  The `jalr` at 0xda2c24c calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c26c calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c2b4 calls __glNamesLockData [0xd9f4640] with a0=[0x1010], a1=[[0x1010]+28288], a2=?, a3=?.
  The `jalr` at 0xda2c2dc calls Clampf [0xda17a18] with a0=?, a1=?, a2=[[0x1010]+3544], a3=?; fp f14=f20.
  The `jalr` at 0xda2c33c calls __glNamesUnlockData [0xd9f5084] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xda2c23c targets 0xda2c25c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda2c254 targets 0xda2c354 and is always taken.
  The `bgez` branch at 0xda2c25c targets 0xda2c278, is taken when s6(=a0) >= 0 (signed), and falls through when s6(=a0) < 0 (signed).
  The `beql` branch at 0xda2c278 targets 0xda2c358, is taken when s6(=a0) == 0, and falls through when s6(=a0) != 0; its branch-likely delay slot `lw ra,68(sp)` at 0xda2c27c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xda2c280 targets 0xda2c354, is taken when s6(=a0) <= 0 (signed), and falls through when s6(=a0) > 0 (signed).
  The `beql` branch at 0xda2c2a0 targets 0xda2c34c, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `addiu s1,s1,4` at 0xda2c2a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2c2c0 targets 0xda2c348, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xda2c308 targets 0xda2c330, is taken when t3(=[ret(__glNamesLockData)+236]) != t4(=[[([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))]+220]), and falls through when t3(=[ret(__glNamesLockData)+236]) == t4(=[[([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))]+220]).
  The `bne` branch at 0xda2c34c targets 0xda2c29c, is taken when s1(?) != s4(=((a0 << 0x2) + a1)), and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  The return at 0xda2c37c has v0 = ?.

- `__glim_CopyTexImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c67c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2c67c-0xda2c8f4 (632 bytes).
  It occupies 632 bytes.
  The `lw` at 0xda2c6ac loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2c6b0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2c6c8 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda2c6e0, `sw` at 0xda2c8d0.
  The `lw` at 0xda2c768 loads 4 bytes from ret(__glLookUpTextureObject) +0x0.
  The `lw` at 0xda2c798 loads 4 bytes from [0x1010] +0x2fc.
  The `lw` at 0xda2c7a0 loads 4 bytes from [[0x1010]+764] +0x40.
  The `lw` at 0xda2c7ac loads 4 bytes from [[0x1010]+764] +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2c7ec, `lw` at 0xda2c8ac.
  The `sb` at 0xda2c8c8 stores 1 byte to ret(__glLookUpTextureObject) +0xc.
  The `lw` at 0xda2c8d4 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xda2c8dc stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xda2c6d0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c6ec calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c73c calls __glCheckCopyTexImageArgs [0xda1cb38] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2c75c calls __glLookUpTextureObject [0xda179c8] with a0=[0x1010], a1=0xde0, a2=?, a3=?.
  The `jalr` at 0xda2c788 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2c7f8 calls (unknown callee) with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2c828 calls __glInitReadImageSrcInfo [0xd9ab7b8] with a0=[0x1010], a1=sp-508, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2c848 calls __glInitTexImageStore [0xda1c3e0] with a0=[0x1010], a1=sp-508, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda2c860 calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda2c878 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda2c890 calls __glClipReadPixels [0xd9a8950] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda2c8b4 calls (unknown callee) with a0=[0x1010], a1=sp-508, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2c6b8 targets 0xda2c6fc, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2c6c0 targets 0xda2c6e4, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2c6dc targets 0xda2c6fc and is always taken.
  The `beq` branch at 0xda2c6f4 targets 0xda2c8e0 and is always taken.
  The `beq` branch at 0xda2c748 targets 0xda2c8e0, is taken when v0(=ret(__glCheckCopyTexImageArgs)) == 0, and falls through when v0(=ret(__glCheckCopyTexImageArgs)) != 0.
  The `bne` branch at 0xda2c778 targets 0xda2c798, is taken when t4(=[ret(__glLookUpTextureObject)]) < 0x3 (signed), and falls through when t4(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2c790 targets 0xda2c8e0 and is always taken.
  The `beq` branch at 0xda2c7a4 targets 0xda2c7cc, is taken when v1(=[[[0x1010]+764]+64]) == 0, and falls through when v1(=[[[0x1010]+764]+64]) != 0.
  The `bne` branch at 0xda2c7b8 targets 0xda2c7cc, is taken when t5(=[[[0x1010]+764]]) != at(=0x8010), and falls through when t5(=[[[0x1010]+764]]) == at(=0x8010).
  The `beq` branch at 0xda2c7c4 targets 0xda2c7cc and is always taken.
  The `beq` branch at 0xda2c800 targets 0xda2c8cc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xda2c898 targets 0xda2c8e0, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2c8ec has v0 = one of ret(__glSetError), ret(__glCheckCopyTexImageArgs), ret(__glClipReadPixels), ret(?).

- `__glim_CopyTexImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c8f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2c8f4-0xda2cb88 (660 bytes).
  It occupies 660 bytes.
  The `lw` at 0xda2c924 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2c928 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2c940 loads 4 bytes from [0x1010] +0x2e40.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda2c958, `sw` at 0xda2cb64.
  The `lw` at 0xda2c9e0 loads 4 bytes from ret(__glLookUpTextureObject) +0x0.
  The `lw` at 0xda2ca10 loads 4 bytes from [0x1010] +0x2fc.
  The `lw` at 0xda2ca1c loads 4 bytes from [[0x1010]+764] +0x40.
  The `lw` at 0xda2ca28 loads 4 bytes from [[0x1010]+764] +0x0.
  The `lw` at 0xda2ca48 loads 4 bytes from [[0x1010]+764] +0x44.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda2ca80, `lw` at 0xda2cb40.
  The `sb` at 0xda2cb5c stores 1 byte to ret(__glLookUpTextureObject) +0xc.
  The `lw` at 0xda2cb68 loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xda2cb70 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xda2c948 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c964 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c9b4 calls __glCheckCopyTexImageArgs [0xda1cb38] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2c9d4 calls __glLookUpTextureObject [0xda179c8] with a0=[0x1010], a1=0xde1, a2=?, a3=?.
  The `jalr` at 0xda2ca00 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2ca8c calls (unknown callee) with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2cabc calls __glInitReadImageSrcInfo [0xd9ab7b8] with a0=[0x1010], a1=sp-508, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2cadc calls __glInitTexImageStore [0xda1c3e0] with a0=[0x1010], a1=sp-508, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda2caf4 calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda2cb0c calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda2cb24 calls __glClipReadPixels [0xd9a8950] with a0=[0x1010], a1=sp-508, a2=?, a3=?.
  The `jalr` at 0xda2cb48 calls (unknown callee) with a0=[0x1010], a1=sp-508, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2c930 targets 0xda2c974, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2c938 targets 0xda2c95c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2c954 targets 0xda2c974 and is always taken.
  The `beq` branch at 0xda2c96c targets 0xda2cb74 and is always taken.
  The `beq` branch at 0xda2c9c0 targets 0xda2cb74, is taken when v0(=ret(__glCheckCopyTexImageArgs)) == 0, and falls through when v0(=ret(__glCheckCopyTexImageArgs)) != 0.
  The `bne` branch at 0xda2c9f0 targets 0xda2ca10, is taken when t5(=[ret(__glLookUpTextureObject)]) < 0x3 (signed), and falls through when t5(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2ca08 targets 0xda2cb74 and is always taken.
  The `beq` branch at 0xda2ca20 targets 0xda2ca60, is taken when v1(=[[[0x1010]+764]+64]) == 0, and falls through when v1(=[[[0x1010]+764]+64]) != 0.
  The `beq` branch at 0xda2ca34 targets 0xda2ca48, is taken when a0(=[[[0x1010]+764]]) == at(=0x8011), and falls through when a0(=[[[0x1010]+764]]) != at(=0x8011).
  The `bne` branch at 0xda2ca40 targets 0xda2ca60, is taken when a0(=[[[0x1010]+764]]) != at(=0x8012), and falls through when a0(=[[[0x1010]+764]]) == at(=0x8012).
  The `beq` branch at 0xda2ca58 targets 0xda2ca60 and is always taken.
  The `beq` branch at 0xda2ca94 targets 0xda2cb60, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xda2cb2c targets 0xda2cb74, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2cb80 has v0 = one of ret(__glSetError), ret(__glCheckCopyTexImageArgs), ret(__glClipReadPixels), ret(?).

- `__glim_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2cb88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2cb88-0xda2cd74 (492 bytes).
  It occupies 492 bytes.
  The `lw` at 0xda2cbb8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2cbbc loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2cbd4 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda2cbec stores 4 bytes to abs 0x1018.
  The `lw` at 0xda2cc70 loads 4 bytes from ret(__glLookUpTextureObject) +0x0.
  The `lw` at 0xda2cd4c loads 4 bytes from ?.
  The `jalr` at 0xda2cbdc calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cbf8 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cc48 calls __glCheckCopyTexSubImageArgs [0xda2af60] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2cc68 calls __glLookUpTextureObject [0xda179c8] with a0=[0x1010], a1=0xde0, a2=?, a3=?.
  The `jalr` at 0xda2cc90 calls __glSetError [0xd9d1af8] with a0=0x502, a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2ccb8 calls __glInitReadImageSrcInfo [0xd9ab7b8] with a0=[0x1010], a1=sp-504, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xda2cce4 calls __glInitTexSubImageStore [0xda2aae0] with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda2ccfc calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cd14 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cd2c calls __glClipReadPixels [0xd9a8950] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cd54 calls (unknown callee) with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2cbc4 targets 0xda2cc08, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2cbcc targets 0xda2cbf0, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2cbe8 targets 0xda2cc08 and is always taken.
  The `beq` branch at 0xda2cc00 targets 0xda2cd60 and is always taken.
  The `beq` branch at 0xda2cc54 targets 0xda2cd60, is taken when v0(=ret(__glCheckCopyTexSubImageArgs)) == 0, and falls through when v0(=ret(__glCheckCopyTexSubImageArgs)) != 0.
  The `bne` branch at 0xda2cc80 targets 0xda2cca0, is taken when t2(=[ret(__glLookUpTextureObject)]) < 0x3 (signed), and falls through when t2(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2cc98 targets 0xda2cd60 and is always taken.
  The `beq` branch at 0xda2cd34 targets 0xda2cd60, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2cd6c has v0 = one of ret(__glSetError), ret(__glCheckCopyTexSubImageArgs), ret(__glClipReadPixels), ret(?).

- `__glim_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2cd74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2cd74-0xda2cf64 (496 bytes).
  It occupies 496 bytes.
  The `lw` at 0xda2cda4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2cda8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2cdc0 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda2cdd8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda2ce60 loads 4 bytes from ret(__glLookUpTextureObject) +0x0.
  The `lw` at 0xda2cf3c loads 4 bytes from ?.
  The `jalr` at 0xda2cdc8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cde4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2ce38 calls __glCheckCopyTexSubImageArgs [0xda2af60] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2ce58 calls __glLookUpTextureObject [0xda179c8] with a0=[0x1010], a1=0xde1, a2=?, a3=?.
  The `jalr` at 0xda2ce80 calls __glSetError [0xd9d1af8] with a0=0x502, a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cea8 calls __glInitReadImageSrcInfo [0xd9ab7b8] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2ced8 calls __glInitTexSubImageStore [0xda2aae0] with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda2cef0 calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cf08 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cf20 calls __glClipReadPixels [0xd9a8950] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2cf44 calls (unknown callee) with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2cdb0 targets 0xda2cdf4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2cdb8 targets 0xda2cddc, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2cdd4 targets 0xda2cdf4 and is always taken.
  The `beq` branch at 0xda2cdec targets 0xda2cf50 and is always taken.
  The `beq` branch at 0xda2ce44 targets 0xda2cf50, is taken when v0(=ret(__glCheckCopyTexSubImageArgs)) == 0, and falls through when v0(=ret(__glCheckCopyTexSubImageArgs)) != 0.
  The `bne` branch at 0xda2ce70 targets 0xda2ce90, is taken when t3(=[ret(__glLookUpTextureObject)]) < 0x3 (signed), and falls through when t3(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2ce88 targets 0xda2cf50 and is always taken.
  The `beq` branch at 0xda2cf28 targets 0xda2cf50, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2cf5c has v0 = one of ret(__glSetError), ret(__glCheckCopyTexSubImageArgs), ret(__glClipReadPixels), ret(?).

- `__glim_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2cf64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2cf64-0xda2d160 (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0xda2cf94 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2cf98 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2cfb0 loads 4 bytes from [0x1010] +0x2e40.
  The `sw` at 0xda2cfc8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda2d054 loads 4 bytes from ret(__glLookUpTextureObject) +0x0.
  The `lw` at 0xda2d138 loads 4 bytes from ?.
  The `jalr` at 0xda2cfb8 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cfd4 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2d02c calls __glCheckCopyTexSubImageArgs [0xda2af60] with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2d04c calls __glLookUpTextureObject [0xda179c8] with a0=[0x1010], a1=0xde0, a2=?, a3=?.
  The `jalr` at 0xda2d074 calls __glSetError [0xd9d1af8] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xda2d0a0 calls __glInitReadImageSrcInfo [0xd9ab7b8] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2d0d4 calls __glInitTexSubImageStore [0xda2aae0] with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xda2d0ec calls __glInitUnpacker [0xd9af410] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2d104 calls __glInitPacker [0xd99e2a0] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2d11c calls __glClipReadPixels [0xd9a8950] with a0=[0x1010], a1=sp-504, a2=?, a3=?.
  The `jalr` at 0xda2d140 calls (unknown callee) with a0=[0x1010], a1=sp-504, a2=?, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2cfa0 targets 0xda2cfe4, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2cfa8 targets 0xda2cfcc, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2cfc4 targets 0xda2cfe4 and is always taken.
  The `beq` branch at 0xda2cfdc targets 0xda2d14c and is always taken.
  The `beq` branch at 0xda2d038 targets 0xda2d14c, is taken when v0(=ret(__glCheckCopyTexSubImageArgs)) == 0, and falls through when v0(=ret(__glCheckCopyTexSubImageArgs)) != 0.
  The `bnel` branch at 0xda2d064 targets 0xda2d088, is taken when t4(=[ret(__glLookUpTextureObject)]) < 0x3 (signed), and falls through when t4(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed); its branch-likely delay slot `lw t9,616(sp)` at 0xda2d068 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d07c targets 0xda2d14c and is always taken.
  The `beq` branch at 0xda2d124 targets 0xda2d14c, is taken when v0(=ret(__glClipReadPixels)) == 0, and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2d158 has v0 = one of ret(__glSetError), ret(__glCheckCopyTexSubImageArgs), ret(__glClipReadPixels), ret(?).
  The instructions from 0xda2d084 to 0xda2d084 are not reached by any path from the entry, and their branches are not listed.

- `__glim_SelectTextureCoordSetSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2d160 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda2d160-0xda2d1fc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda2d17c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2d184 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2d1b8 loads 4 bytes from [0x1010] +0xe1c.
  The `sw` at 0xda2d1cc stores 4 bytes to [0x1010] +0x6e6c.
  The `jalr` at 0xda2d198 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2d1d8 calls __glSetError [0xd9d1af8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda2d188 targets 0xda2d1ac, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x83c7` at 0xda2d18c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d1a0 targets 0xda2d1ec and is always taken.
  The `bne` branch at 0xda2d1b0 targets 0xda2d1d0, is taken when a0 < at(=0x83c7) (unsigned), and falls through when a0 >= at(=0x83c7) (unsigned).
  The `beql` branch at 0xda2d1c8 targets 0xda2d1ec, is taken when t8(=[[0x1010]+3612]+33735) >= a0 (unsigned), and falls through when t8(=[[0x1010]+3612]+33735) < a0 (unsigned); its branch-likely delay slot `sw a0,28268(v0)` at 0xda2d1cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2d1e0 targets 0xda2d1ec and is always taken.
  The return at 0xda2d1f4 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xda2d1a8 to 0xda2d1a8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda2d1e8 to 0xda2d1e8 are not reached by any path from the entry, and their branches are not listed.

- `__glim_InterleavedTextureCoordSetsSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda39df8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda39df8-0xda39e84 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda39e14 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda39e1c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda39e48 loads 4 bytes from [0x1010] +0xe1c.
  The `sw` at 0xda39e54 stores 4 bytes to [0x1010] +0x152c.
  The `jalr` at 0xda39e30 calls __glSetError [0xd9d1af8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda39e60 calls __glSetError [0xd9d1af8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda39e20 targets 0xda39e40, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda39e38 targets 0xda39e74 and is always taken.
  The `blez` branch at 0xda39e40 targets 0xda39e58, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beql` branch at 0xda39e50 targets 0xda39e74, is taken when t7(=[[0x1010]+3612]) >= a0 (signed), and falls through when t7(=[[0x1010]+3612]) < a0 (signed); its branch-likely delay slot `sw a0,5420(v0)` at 0xda39e54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda39e68 targets 0xda39e74 and is always taken.
  The return at 0xda39e7c has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xda39e70 to 0xda39e70 are not reached by any path from the entry, and their branches are not listed.

- `__gllc_ListBase` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40450 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40450-0xda404c4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda40468 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40494 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda404a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda40478 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda404a8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c0c0, a3=?.
  The `beq` branch at 0xda40488 targets 0xda404b4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda404bc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda404c4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda404c4-0xda4055c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda404dc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40510 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4051c stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda40524 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda4052c stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda40530 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40538 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda404f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40540 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c100, a3=?.
  The `beq` branch at 0xda40504 targets 0xda4054c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40554 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4055c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4055c-0xda405f4 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40574 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda405a8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lb` at 0xda405ac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda405b4 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lb` at 0xda405b8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda405bc stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `lb` at 0xda405c0 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda405c4 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda405c8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda405d0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40588 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda405d8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c100, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4059c targets 0xda405e4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda405ec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda405f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda405f4-0xda40690 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda40608 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40640 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda40644 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda40650 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda40658 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda40660 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda40664 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4066c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40620 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40674 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c13c, a3=?.
  The `beq` branch at 0xda40630 targets 0xda40680, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40688 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40690 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40690-0xda40730 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda406a8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda406e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda406e4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda406e8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda406f0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda406f4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda406f8 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda406fc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda40700 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda40704 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4070c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda406bc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40714 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c13c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda406d0 targets 0xda40720, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40728 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40730 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40730-0xda407c8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40744 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4077c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda40788 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda40790 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda40798 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda4079c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda407a4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40760 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda407ac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c178, a3=?.
  The `beq` branch at 0xda40770 targets 0xda407b8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda407c0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda407c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda407c8-0xda40860 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda407e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40814 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda40818 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda40820 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda40824 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda40828 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda4082c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda40830 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda40834 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4083c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda407f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40844 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c178, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40808 targets 0xda40850, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40858 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40860 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40860-0xda408f8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40878 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda408ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda408b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda408c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda408c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda408cc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda408d4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40890 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda408dc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c1b4, a3=?.
  The `beq` branch at 0xda408a0 targets 0xda408e8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda408f0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda408f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda408f8-0xda40990 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40910 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40944 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda40948 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda40950 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda40954 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda40958 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda4095c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda40960 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda40964 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4096c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40924 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40974 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c1b4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40938 targets 0xda40980, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40988 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40990 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40990-0xda40a28 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda409a8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda409dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda409e8 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda409f0 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda409f8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda409fc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40a04 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda409c0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40a0c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c1f0, a3=?.
  The `beq` branch at 0xda409d0 targets 0xda40a18, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40a20 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40a28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40a28-0xda40ac0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40a40 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40a74 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda40a78 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda40a80 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda40a84 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda40a88 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda40a8c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda40a90 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda40a94 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40a9c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40a54 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40aa4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c1f0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40a68 targets 0xda40ab0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40ab8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40ac0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40ac0-0xda40b58 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40ad8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40b0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda40b18 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda40b20 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda40b28 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda40b2c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40b34 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40af0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40b3c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c22c, a3=?.
  The `beq` branch at 0xda40b00 targets 0xda40b48, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40b50 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40b58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40b58-0xda40bf0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40b70 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40ba4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lbu` at 0xda40ba8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda40bb0 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lbu` at 0xda40bb4 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda40bb8 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `lbu` at 0xda40bbc loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda40bc0 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda40bc4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40bcc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40b84 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40bd4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c22c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40b98 targets 0xda40be0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40be8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40bf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40bf0-0xda40c88 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40c08 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40c3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda40c48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda40c50 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda40c58 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda40c5c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40c64 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40c20 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40c6c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c268, a3=?.
  The `beq` branch at 0xda40c30 targets 0xda40c78, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40c80 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40c88-0xda40d20 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40ca0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40cd4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda40cd8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda40ce0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda40ce4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda40ce8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda40cec loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda40cf0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda40cf4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40cfc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40cb4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40d04 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c268, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40cc8 targets 0xda40d10, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40d18 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40d20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40d20-0xda40db8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40d38 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40d6c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda40d78 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda40d80 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda40d88 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda40d8c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40d94 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40d50 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40d9c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c2a4, a3=?.
  The `beq` branch at 0xda40d60 targets 0xda40da8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40db0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color3usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40db8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40db8-0xda40e50 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda40dd0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40e04 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lhu` at 0xda40e08 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda40e10 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lhu` at 0xda40e14 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda40e18 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lhu` at 0xda40e1c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda40e20 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda40e24 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40e2c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40de4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40e34 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c2a4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40df8 targets 0xda40e40, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40e48 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40e50-0xda40ef4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda40e68 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40ea0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda40eac stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda40eb4 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda40ebc stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xda40ec4 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `lw` at 0xda40ec8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40ed0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40e84 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40ed8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c2e0, a3=?.
  The `beq` branch at 0xda40e94 targets 0xda40ee4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40eec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40ef4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40ef4-0xda40f94 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda40f0c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40f40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lb` at 0xda40f44 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda40f4c stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lb` at 0xda40f50 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda40f54 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `lb` at 0xda40f58 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda40f5c stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lb` at 0xda40f60 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xda40f64 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `lw` at 0xda40f68 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda40f70 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40f20 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40f78 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c2e0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40f34 targets 0xda40f84, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40f8c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40f94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda40f94-0xda41038 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda40fa8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda40fe0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda40fe4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda40ff0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda40ff8 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda41000 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda41008 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda4100c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41014 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda40fc0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4101c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c31c, a3=?.
  The `beq` branch at 0xda40fd0 targets 0xda41028, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41030 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41038 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41038-0xda410e0 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda41050 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41088 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4108c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda41090 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda41098 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda4109c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda410a0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda410a4 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda410a8 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda410ac loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda410b0 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda410b4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda410bc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41064 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda410c4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c31c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41078 targets 0xda410d0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda410d8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda410e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda410e0-0xda41184 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda410f4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41130 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda4113c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda41144 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda4114c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda41154 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda41158 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41160 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41114 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41168 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c358, a3=?.
  The `beq` branch at 0xda41124 targets 0xda41174, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4117c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41184 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41184-0xda41224 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda4119c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda411d0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda411d4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda411dc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda411e0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda411e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda411e8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda411ec stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lwc1` at 0xda411f0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda411f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda411f8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41200 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda411b0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41208 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c358, a3=a0 at entry (arg0).
  The `beq` branch at 0xda411c4 targets 0xda41214, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4121c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41224 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41224-0xda412c8 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda4123c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41274 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41280 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda41288 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda41290 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda41298 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda4129c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda412a4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41258 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda412ac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c394, a3=?.
  The `beq` branch at 0xda41268 targets 0xda412b8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda412c0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda412c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda412c8-0xda41368 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda412e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41314 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda41318 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda41320 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41324 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda41328 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda4132c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda41330 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda41334 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda41338 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda4133c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41344 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda412f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4134c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c394, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41308 targets 0xda41358, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41360 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41368 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41368-0xda4140c (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda41380 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda413b8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda413c4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda413cc stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda413d4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda413dc stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda413e0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda413e8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4139c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda413f0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c3d0, a3=?.
  The `beq` branch at 0xda413ac targets 0xda413fc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41404 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4140c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4140c-0xda414ac (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda41424 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41458 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda4145c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda41464 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda41468 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda4146c stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda41470 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda41474 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lh` at 0xda41478 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda4147c stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda41480 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41488 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41438 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41490 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c3d0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4144c targets 0xda4149c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda414a4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda414ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda414ac-0xda41550 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda414c4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda414fc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda41508 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda41510 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda41518 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xda41520 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `lw` at 0xda41524 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4152c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda414e0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41534 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c40c, a3=?.
  The `beq` branch at 0xda414f0 targets 0xda41540, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41548 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41550 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41550-0xda415f0 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda41568 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4159c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lbu` at 0xda415a0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda415a8 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lbu` at 0xda415ac loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda415b0 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `lbu` at 0xda415b4 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda415b8 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lbu` at 0xda415bc loads 1 byte from a0 (arg0 at entry) +0x3.
  The `sb` at 0xda415c0 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `lw` at 0xda415c4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda415cc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4157c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda415d4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c40c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41590 targets 0xda415e0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda415e8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda415f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda415f0-0xda41694 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda41608 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41640 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4164c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda41654 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4165c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda41664 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda41668 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41670 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41624 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41678 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c448, a3=?.
  The `beq` branch at 0xda41634 targets 0xda41684, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4168c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41694 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41694-0xda41734 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda416ac loads 4 bytes from abs 0x1010.
  The `sh` at 0xda416e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda416e4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda416ec stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda416f0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda416f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda416f8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda416fc stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda41700 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda41704 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda41708 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41710 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda416c0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41718 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c448, a3=a0 at entry (arg0).
  The `beq` branch at 0xda416d4 targets 0xda41724, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4172c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41734 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41734-0xda417d8 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda4174c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41784 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda41790 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda41798 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda417a0 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda417a8 stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda417ac loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda417b4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41768 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda417bc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c484, a3=?.
  The `beq` branch at 0xda41778 targets 0xda417c8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda417d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Color4usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda417d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda417d8-0xda41878 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda417f0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41824 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lhu` at 0xda41828 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda41830 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lhu` at 0xda41834 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda41838 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lhu` at 0xda4183c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda41840 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lhu` at 0xda41844 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda41848 stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda4184c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41854 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41804 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4185c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c484, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41818 targets 0xda41868, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41870 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EdgeFlag` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41878 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41878-0xda418ec (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda41890 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda418bc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda418c8 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda418a0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda418d0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c4c0, a3=?.
  The `beq` branch at 0xda418b0 targets 0xda418dc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda418e4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_EdgeFlagv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda418ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda418ec-0xda41964 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xda41904 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41930 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lbu` at 0xda4193c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda41940 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda41914 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41948 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c4c0, a3=?.
  The `beq` branch at 0xda41924 targets 0xda41954, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4195c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_End` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41964 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41964-0xda419cc (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xda41974 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda419a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xda41988 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda419b0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c4fc, a3=?.
  The `beq` branch at 0xda41998 targets 0xda419bc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda419c4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda419cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda419cc-0xda41a54 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda419e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41a14 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda41a18 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda41a24 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41a28 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41a30 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda419f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41a38 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c534, a3=?.
  The `beq` branch at 0xda41a04 targets 0xda41a44, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41a4c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41a54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41a54-0xda41ae0 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda41a6c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41a9c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda41aa0 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda41aac loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda41ab0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41ab4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41abc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41a7c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41ac4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c534, a3=?.
  The `beq` branch at 0xda41a8c targets 0xda41ad0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41ad8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41ae0-0xda41b60 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda41af4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41b24 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda41b30 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41b34 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41b3c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41b08 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41b44 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c570, a3=?.
  The `beq` branch at 0xda41b18 targets 0xda41b50, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41b58 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41b60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41b60-0xda41be4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda41b78 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41ba4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda41bb0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda41bb4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41bb8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41bc0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41b88 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41bc8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c570, a3=?.
  The `beq` branch at 0xda41b98 targets 0xda41bd4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41bdc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41be4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41be4-0xda41c64 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda41bfc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41c28 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda41c34 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41c38 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41c40 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41c0c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41c48 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c5ac, a3=?.
  The `beq` branch at 0xda41c1c targets 0xda41c54, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41c5c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41c64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41c64-0xda41ce8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda41c7c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41ca8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda41cb4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda41cb8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41cbc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41cc4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41c8c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41ccc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c5ac, a3=?.
  The `beq` branch at 0xda41c9c targets 0xda41cd8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41ce0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41ce8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41ce8-0xda41d68 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda41d00 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41d2c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda41d38 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41d3c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41d44 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41d10 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41d4c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c5e8, a3=?.
  The `beq` branch at 0xda41d20 targets 0xda41d58, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41d60 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Indexsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41d68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41d68-0xda41dec (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda41d80 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41dac stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda41db8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda41dbc stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda41dc0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41dc8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41d90 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41dd0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c5e8, a3=?.
  The `beq` branch at 0xda41da0 targets 0xda41ddc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41de4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41dec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41dec-0xda41e84 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda41e04 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41e38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda41e44 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xda41e4c stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xda41e54 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda41e58 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41e60 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41e1c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41e68 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c624, a3=?.
  The `beq` branch at 0xda41e2c targets 0xda41e74, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41e7c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41e84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41e84-0xda41f1c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda41e9c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41ed0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lb` at 0xda41ed4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xda41edc stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `lb` at 0xda41ee0 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xda41ee4 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `lb` at 0xda41ee8 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xda41eec stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda41ef0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41ef8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41eb0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41f00 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c624, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41ec4 targets 0xda41f0c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41f14 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41f1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41f1c-0xda41fb8 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda41f30 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda41f68 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda41f6c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda41f78 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda41f80 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda41f88 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda41f8c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda41f94 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41f48 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41f9c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c660, a3=?.
  The `beq` branch at 0xda41f58 targets 0xda41fa8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41fb0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41fb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda41fb8-0xda42058 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda41fd0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42008 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4200c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda42010 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda42018 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda4201c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda42020 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda42024 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda42028 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda4202c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42034 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda41fe4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4203c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c660, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41ff8 targets 0xda42048, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42050 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42058-0xda420f0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda4206c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda420a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda420b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda420b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda420c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda420c4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda420cc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42088 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda420d4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c69c, a3=?.
  The `beq` branch at 0xda42098 targets 0xda420e0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda420e8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda420f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda420f0-0xda42188 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda42108 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4213c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda42140 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda42148 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda4214c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda42150 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda42154 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda42158 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda4215c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42164 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4211c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4216c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c69c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42130 targets 0xda42178, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42180 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42188 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42188-0xda42220 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda421a0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda421d4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda421e0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda421e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda421f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda421f4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda421fc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda421b8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42204 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c6d8, a3=?.
  The `beq` branch at 0xda421c8 targets 0xda42210, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42218 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42220 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42220-0xda422b8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda42238 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4226c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda42270 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda42278 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda4227c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda42280 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda42284 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda42288 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda4228c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42294 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4224c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4229c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c6d8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42260 targets 0xda422a8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda422b0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda422b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda422b8-0xda42350 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda422d0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42304 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda42310 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda42318 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda42320 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda42324 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4232c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda422e8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42334 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c714, a3=?.
  The `beq` branch at 0xda422f8 targets 0xda42340, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42348 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Normal3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42350 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42350-0xda423e8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda42368 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4239c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda423a0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda423a8 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda423ac loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda423b0 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda423b4 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda423b8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda423bc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda423c4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4237c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda423cc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c714, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42390 targets 0xda423d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda423e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42b5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42b5c-0xda42bf4 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda42b74 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42ba8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda42bac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda42bb4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda42bb8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda42bbc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda42bc0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda42bc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda42bc8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42bd0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42b88 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42bd8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c8b8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42b9c targets 0xda42be4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42bec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42bf4-0xda42c8c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda42c0c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42c40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda42c4c stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda42c54 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda42c5c stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda42c60 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42c68 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42c24 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42c70 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c8f4, a3=?.
  The `beq` branch at 0xda42c34 targets 0xda42c7c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42c84 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42c8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42c8c-0xda42d24 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda42ca4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42cd8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda42cdc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda42ce4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda42ce8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda42cec stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda42cf0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda42cf4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda42cf8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42d00 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42cb8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42d08 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c8f4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42ccc targets 0xda42d14, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42d1c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42d24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42d24-0xda42dc8 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda42d38 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42d70 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda42d74 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda42d80 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda42d88 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda42d90 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda42d98 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda42d9c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42da4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42d50 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42dac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c930, a3=?.
  The `beq` branch at 0xda42d60 targets 0xda42db8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42dc0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42dc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42dc8-0xda42e70 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda42de0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42e18 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda42e1c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda42e20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda42e28 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda42e2c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda42e30 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda42e34 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda42e38 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda42e3c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda42e40 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda42e44 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42e4c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42df4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42e54 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c930, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42e08 targets 0xda42e60, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42e68 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42e70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42e70-0xda42f14 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda42e84 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42ec0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda42ecc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda42ed4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda42edc stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda42ee4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda42ee8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42ef0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42ea4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42ef8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c96c, a3=?.
  The `beq` branch at 0xda42eb4 targets 0xda42f04, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42f0c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42f14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42f14-0xda42fb4 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda42f2c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda42f60 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda42f64 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda42f6c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda42f70 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda42f74 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda42f78 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda42f7c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lwc1` at 0xda42f80 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda42f84 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda42f88 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda42f90 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42f40 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42f98 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c96c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42f54 targets 0xda42fa4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42fac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42fb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda42fb4-0xda43058 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda42fcc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43004 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda43010 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda43018 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda43020 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda43028 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda4302c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43034 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda42fe8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4303c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c9a8, a3=?.
  The `beq` branch at 0xda42ff8 targets 0xda43048, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43050 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43058-0xda430f8 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda43070 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda430a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda430a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda430b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda430b4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda430b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda430bc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda430c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda430c4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda430c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda430cc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda430d4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43084 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda430dc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c9a8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda43098 targets 0xda430e8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda430f0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda430f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda430f8-0xda4319c (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda43110 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43148 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda43154 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda4315c stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda43164 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda4316c stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda43170 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43178 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4312c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43180 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c9e4, a3=?.
  The `beq` branch at 0xda4313c targets 0xda4318c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43194 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_RasterPos4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4319c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4319c-0xda4323c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda431b4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda431e8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda431ec loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda431f4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda431f8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda431fc stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda43200 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda43204 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lh` at 0xda43208 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda4320c stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda43210 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43218 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda431c8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda43220 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4c9e4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda431dc targets 0xda4322c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43234 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rectd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4323c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4323c-0xda432e0 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda43250 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43288 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4328c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda43298 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda432a0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda432a8 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda432b0 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda432b4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda432bc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43268 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda432c4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ca20, a3=?.
  The `beq` branch at 0xda43278 targets 0xda432d0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda432d8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rectdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda432e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda432e0-0xda4338c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xda432f8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43334 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda43338 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda4333c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda43344 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda43348 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda4334c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda43350 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdc1` at 0xda43354 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda43358 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sdc1` at 0xda4335c stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda43360 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43368 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4330c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43370 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ca20, a3=a1 at entry (arg1).
  The `beq` branch at 0xda43324 targets 0xda4337c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43384 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rectf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4338c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4338c-0xda43430 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda433a0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda433dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda433e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda433f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda433f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda43400 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda43404 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4340c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda433c0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43414 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ca60, a3=?.
  The `beq` branch at 0xda433d0 targets 0xda43420, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43428 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rectfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43430 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43430-0xda434d4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda43448 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43480 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda43484 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda4348c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda43490 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda43494 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda43498 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0xda4349c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lwc1` at 0xda434a0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda434a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda434a8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda434b0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4345c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda434b8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ca60, a3=a1 at entry (arg1).
  The `beq` branch at 0xda43474 targets 0xda434c4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda434cc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Recti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda434d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda434d4-0xda43578 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda434ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43524 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda43530 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda43538 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda43540 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda43548 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda4354c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43554 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43508 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4355c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4caa0, a3=?.
  The `beq` branch at 0xda43518 targets 0xda43568, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43570 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rectiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43578-0xda4361c (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda43590 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda435c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda435cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda435d4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda435d8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda435dc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda435e0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0xda435e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda435e8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `sw` at 0xda435ec stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda435f0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda435f8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda435a4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43600 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4caa0, a3=a1 at entry (arg1).
  The `beq` branch at 0xda435bc targets 0xda4360c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43614 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rects` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4361c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4361c-0xda436c0 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda43634 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4366c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda43678 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda43680 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda43688 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda43690 stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda43694 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4369c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43650 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda436a4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cae0, a3=?.
  The `beq` branch at 0xda43660 targets 0xda436b0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda436b8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Rectsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda436c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda436c0-0xda43764 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda436d8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43710 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda43714 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda4371c stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda43720 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda43724 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda43728 loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `sh` at 0xda4372c stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lh` at 0xda43730 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `sh` at 0xda43734 stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda43738 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43740 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda436ec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43748 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cae0, a3=a1 at entry (arg1).
  The `beq` branch at 0xda43704 targets 0xda43754, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4375c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43764 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43764-0xda437ec (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda43778 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda437ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda437b0 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda437bc stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda437c0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda437c8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4378c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda437d0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cb20, a3=?.
  The `beq` branch at 0xda4379c targets 0xda437dc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda437e4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda437ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda437ec-0xda43878 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43804 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43834 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda43838 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda43844 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda43848 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda4384c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43854 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43814 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4385c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cb20, a3=?.
  The `beq` branch at 0xda43824 targets 0xda43868, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43870 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43878 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43878-0xda438f8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda4388c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda438bc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda438c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda438cc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda438d4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda438a0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda438dc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cb5c, a3=?.
  The `beq` branch at 0xda438b0 targets 0xda438e8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda438f0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda438f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda438f8-0xda4397c (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda43910 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4393c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda43948 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda4394c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda43950 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43958 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43920 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43960 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cb5c, a3=?.
  The `beq` branch at 0xda43930 targets 0xda4396c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43974 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4397c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4397c-0xda439fc (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda43994 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda439c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda439cc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda439d0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda439d8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda439a4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda439e0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cb98, a3=?.
  The `beq` branch at 0xda439b4 targets 0xda439ec, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda439f4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda439fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda439fc-0xda43a80 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda43a14 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43a40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda43a4c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda43a50 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda43a54 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43a5c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43a24 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43a64 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cb98, a3=?.
  The `beq` branch at 0xda43a34 targets 0xda43a70, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43a78 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43a80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43a80-0xda43b00 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda43a98 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43ac4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda43ad0 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda43ad4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43adc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43aa8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43ae4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cbd4, a3=?.
  The `beq` branch at 0xda43ab8 targets 0xda43af0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43af8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord1sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43b00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43b00-0xda43b84 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda43b18 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43b44 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda43b50 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda43b54 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda43b58 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43b60 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43b28 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43b68 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cbd4, a3=?.
  The `beq` branch at 0xda43b38 targets 0xda43b74, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43b7c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43b84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43b84-0xda43c18 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda43b98 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43bd0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda43bd4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda43be0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda43be8 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda43bec loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43bf4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43bb0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43bfc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cc10, a3=?.
  The `beq` branch at 0xda43bc0 targets 0xda43c08, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43c10 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43c18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43c18-0xda43cac (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda43c30 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43c64 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda43c68 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda43c6c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda43c74 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda43c78 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda43c7c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda43c80 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43c88 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43c40 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43c90 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cc10, a3=?.
  The `beq` branch at 0xda43c54 targets 0xda43c9c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43ca4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43cac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43cac-0xda43d38 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43cc0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43cf4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda43d00 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda43d08 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda43d0c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43d14 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43cd8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43d1c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cc4c, a3=?.
  The `beq` branch at 0xda43ce8 targets 0xda43d28, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43d30 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43d38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43d38-0xda43dc4 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43d50 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43d80 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda43d84 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda43d8c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda43d90 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda43d94 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda43d98 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43da0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43d60 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43da8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cc4c, a3=?.
  The `beq` branch at 0xda43d74 targets 0xda43db4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43dbc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43dc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43dc4-0xda43e50 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43ddc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43e0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda43e18 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda43e20 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda43e24 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43e2c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43df0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43e34 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cc88, a3=?.
  The `beq` branch at 0xda43e00 targets 0xda43e40, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43e48 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43e50-0xda43edc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43e68 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43e98 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda43e9c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda43ea4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda43ea8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda43eac stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda43eb0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43eb8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43e78 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43ec0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cc88, a3=?.
  The `beq` branch at 0xda43e8c targets 0xda43ecc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43ed4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43edc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43edc-0xda43f68 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43ef4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43f24 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda43f30 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda43f38 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda43f3c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43f44 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43f08 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43f4c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ccc4, a3=?.
  The `beq` branch at 0xda43f18 targets 0xda43f58, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43f60 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43f68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43f68-0xda43ff4 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda43f80 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda43fb0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda43fb4 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda43fbc stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda43fc0 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda43fc4 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda43fc8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda43fd0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda43f90 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43fd8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ccc4, a3=?.
  The `beq` branch at 0xda43fa4 targets 0xda43fe4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43fec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda43ff4-0xda44090 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda44008 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44040 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda44044 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda44050 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda44058 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda44060 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda44064 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4406c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44020 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44074 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cd00, a3=?.
  The `beq` branch at 0xda44030 targets 0xda44080, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44088 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44090-0xda44130 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda440a8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda440e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda440e4 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda440e8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda440f0 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda440f4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda440f8 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda440fc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda44100 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda44104 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4410c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda440bc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44114 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cd00, a3=a0 at entry (arg0).
  The `beq` branch at 0xda440d0 targets 0xda44120, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44128 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44130 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44130-0xda441c8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda44144 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4417c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda44188 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda44190 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda44198 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda4419c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda441a4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44160 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda441ac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cd3c, a3=?.
  The `beq` branch at 0xda44170 targets 0xda441b8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda441c0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda441c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda441c8-0xda44260 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda441e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44214 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda44218 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda44220 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda44224 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda44228 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda4422c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda44230 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda44234 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4423c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda441f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44244 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cd3c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44208 targets 0xda44250, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44258 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44260-0xda442f8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda44278 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda442ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda442b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda442c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda442c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda442cc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda442d4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44290 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda442dc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cd78, a3=?.
  The `beq` branch at 0xda442a0 targets 0xda442e8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda442f0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda442f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda442f8-0xda44390 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda44310 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44344 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda44348 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda44350 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda44354 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda44358 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda4435c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda44360 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda44364 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4436c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44324 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44374 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cd78, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44338 targets 0xda44380, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44388 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44390 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44390-0xda44428 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda443a8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda443dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda443e8 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda443f0 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda443f8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda443fc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44404 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda443c0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4440c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cdb4, a3=?.
  The `beq` branch at 0xda443d0 targets 0xda44418, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44420 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44428 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44428-0xda444c0 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda44440 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44474 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda44478 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda44480 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda44484 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda44488 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda4448c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda44490 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda44494 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4449c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44454 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda444a4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cdb4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44468 targets 0xda444b0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda444b8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda444c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda444c0-0xda44564 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda444d4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4450c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda44510 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda4451c stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda44524 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda4452c stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda44534 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda44538 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44540 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda444ec calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44548 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cdf0, a3=?.
  The `beq` branch at 0xda444fc targets 0xda44554, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4455c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44564 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44564-0xda4460c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda4457c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda445b4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda445b8 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda445bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda445c4 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda445c8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda445cc stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda445d0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda445d4 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda445d8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda445dc stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda445e0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda445e8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44590 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda445f0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cdf0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda445a4 targets 0xda445fc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44604 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4460c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4460c-0xda446b0 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda44620 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4465c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda44668 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda44670 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda44678 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda44680 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda44684 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4468c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44640 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44694 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ce2c, a3=?.
  The `beq` branch at 0xda44650 targets 0xda446a0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda446a8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda446b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda446b0-0xda44750 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda446c8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda446fc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda44700 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda44708 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda4470c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda44710 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda44714 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda44718 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lwc1` at 0xda4471c loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda44720 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda44724 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4472c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda446dc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44734 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ce2c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda446f0 targets 0xda44740, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44748 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44750 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44750-0xda447f4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda44768 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda447a0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda447ac stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda447b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda447bc stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda447c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda447c8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda447d0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44784 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda447d8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ce68, a3=?.
  The `beq` branch at 0xda44794 targets 0xda447e4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda447ec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda447f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda447f4-0xda44894 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda4480c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44840 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda44844 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda4484c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda44850 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda44854 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda44858 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda4485c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda44860 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda44864 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda44868 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44870 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44820 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44878 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4ce68, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44834 targets 0xda44884, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4488c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44894 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44894-0xda44938 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda448ac loads 4 bytes from abs 0x1010.
  The `sh` at 0xda448e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda448f0 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda448f8 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda44900 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda44908 stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda4490c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44914 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda448c8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4491c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cea4, a3=?.
  The `beq` branch at 0xda448d8 targets 0xda44928, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44930 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexCoord4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44938 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44938-0xda449d8 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda44950 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44984 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda44988 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda44990 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda44994 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda44998 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda4499c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda449a0 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lh` at 0xda449a4 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda449a8 stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda449ac loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda449b4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44964 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda449bc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cea4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44978 targets 0xda449c8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda449d0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda449d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda449d8-0xda44a6c (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda449ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44a24 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda44a28 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda44a34 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda44a3c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda44a40 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44a48 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44a04 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44a50 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cee0, a3=?.
  The `beq` branch at 0xda44a14 targets 0xda44a5c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44a64 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44a6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44a6c-0xda44b00 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda44a84 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44ab8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda44abc stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda44ac0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda44ac8 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda44acc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda44ad0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda44ad4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44adc stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44a94 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44ae4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cee0, a3=?.
  The `beq` branch at 0xda44aa8 targets 0xda44af0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44af8 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44b00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44b00-0xda44b8c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda44b14 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44b48 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda44b54 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda44b5c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda44b60 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44b68 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44b2c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44b70 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cf1c, a3=?.
  The `beq` branch at 0xda44b3c targets 0xda44b7c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44b84 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44b8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44b8c-0xda44c18 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda44ba4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44bd4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda44bd8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda44be0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda44be4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda44be8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda44bec loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44bf4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44bb4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44bfc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cf1c, a3=?.
  The `beq` branch at 0xda44bc8 targets 0xda44c08, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44c10 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44c18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44c18-0xda44ca4 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda44c30 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44c60 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda44c6c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda44c74 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda44c78 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44c80 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44c44 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44c88 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cf58, a3=?.
  The `beq` branch at 0xda44c54 targets 0xda44c94, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44c9c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44ca4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44ca4-0xda44d30 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda44cbc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44cec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda44cf0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda44cf8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda44cfc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda44d00 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda44d04 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44d0c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44ccc calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44d14 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cf58, a3=?.
  The `beq` branch at 0xda44ce0 targets 0xda44d20, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44d28 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44d30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44d30-0xda44dbc (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda44d48 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44d78 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda44d84 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda44d8c stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda44d90 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44d98 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44d5c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44da0 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cf94, a3=?.
  The `beq` branch at 0xda44d6c targets 0xda44dac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44db4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44dbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44dbc-0xda44e48 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xda44dd4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44e04 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda44e08 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda44e10 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda44e14 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda44e18 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lw` at 0xda44e1c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44e24 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44de4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44e2c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cf94, a3=?.
  The `beq` branch at 0xda44df8 targets 0xda44e38, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44e40 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44e48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44e48-0xda44ee4 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda44e5c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44e94 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda44e98 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda44ea4 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda44eac stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda44eb4 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda44eb8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44ec0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44e74 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44ec8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cfd0, a3=?.
  The `beq` branch at 0xda44e84 targets 0xda44ed4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44edc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44ee4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44ee4-0xda44f84 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda44efc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44f34 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda44f38 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda44f3c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda44f44 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda44f48 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda44f4c stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda44f50 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda44f54 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `lw` at 0xda44f58 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44f60 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44f10 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44f68 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4cfd0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44f24 targets 0xda44f74, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44f7c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44f84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda44f84-0xda4501c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda44f98 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda44fd0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda44fdc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda44fe4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda44fec stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda44ff0 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda44ff8 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda44fb4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45000 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d00c, a3=?.
  The `beq` branch at 0xda44fc4 targets 0xda4500c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45014 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4501c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4501c-0xda450b4 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda45034 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45068 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda4506c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda45074 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda45078 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda4507c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda45080 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda45084 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda45088 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45090 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45048 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45098 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d00c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4505c targets 0xda450a4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda450ac has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda450b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda450b4-0xda4514c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda450cc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45100 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4510c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45114 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda4511c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda45120 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45128 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda450e4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45130 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d048, a3=?.
  The `beq` branch at 0xda450f4 targets 0xda4513c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45144 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4514c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4514c-0xda451e4 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda45164 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45198 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda4519c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda451a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda451a8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda451ac stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda451b0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda451b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda451b8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda451c0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45178 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda451c8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d048, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4518c targets 0xda451d4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda451dc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda451e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda451e4-0xda4527c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda451fc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45230 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda4523c stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda45244 stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda4524c stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda45250 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45258 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45214 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45260 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d084, a3=?.
  The `beq` branch at 0xda45224 targets 0xda4526c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45274 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4527c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4527c-0xda45314 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda45294 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda452c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda452cc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda452d4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda452d8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda452dc stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda452e0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda452e4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda452e8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda452f0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda452a8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda452f8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d084, a3=a0 at entry (arg0).
  The `beq` branch at 0xda452bc targets 0xda45304, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4530c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45314 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45314-0xda453b8 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda45328 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45360 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda45364 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sdc1` at 0xda45370 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sdc1` at 0xda45378 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sdc1` at 0xda45380 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `sdc1` at 0xda45388 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda4538c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45394 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45340 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4539c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d0c0, a3=?.
  The `beq` branch at 0xda45350 targets 0xda453a8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda453b0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda453b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda453b8-0xda45460 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda453d0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45408 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda4540c stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `ldc1` at 0xda45410 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdc1` at 0xda45418 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda4541c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sdc1` at 0xda45420 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda45424 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sdc1` at 0xda45428 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda4542c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sdc1` at 0xda45430 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `lw` at 0xda45434 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4543c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda453e4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45444 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d0c0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda453f8 targets 0xda45450, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45458 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45460 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45460-0xda45504 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda45474 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda454b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda454bc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda454c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `swc1` at 0xda454cc stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `swc1` at 0xda454d4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda454d8 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda454e0 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45494 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda454e8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d0fc, a3=?.
  The `beq` branch at 0xda454a4 targets 0xda454f4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda454fc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45504 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45504-0xda455a4 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda4551c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45550 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lwc1` at 0xda45554 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xda4555c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lwc1` at 0xda45560 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xda45564 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lwc1` at 0xda45568 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `swc1` at 0xda4556c stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lwc1` at 0xda45570 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `swc1` at 0xda45574 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda45578 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45580 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45530 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45588 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d0fc, a3=a0 at entry (arg0).
  The `beq` branch at 0xda45544 targets 0xda45594, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4559c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda455a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda455a4-0xda45648 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda455bc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda455f4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45600 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45608 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda45610 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda45618 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda4561c loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45624 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda455d8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4562c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d138, a3=?.
  The `beq` branch at 0xda455e8 targets 0xda45638, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45640 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45648 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45648-0xda456e8 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda45660 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45694 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lw` at 0xda45698 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xda456a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lw` at 0xda456a4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xda456a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda456ac loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xda456b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `lw` at 0xda456b4 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xda456b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `lw` at 0xda456bc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda456c4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda45674 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda456cc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d138, a3=a0 at entry (arg0).
  The `beq` branch at 0xda45688 targets 0xda456d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda456e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda456e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda456e8-0xda4578c (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xda45700 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45738 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sh` at 0xda45744 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda4574c stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `sh` at 0xda45754 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sh` at 0xda4575c stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda45760 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45768 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4571c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45770 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d174, a3=?.
  The `beq` branch at 0xda4572c targets 0xda4577c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45784 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Vertex4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4578c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4578c-0xda4582c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda457a4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda457d8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `lh` at 0xda457dc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xda457e4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10.
  The `lh` at 0xda457e8 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xda457ec stores 2 bytes to ret(__glDlistAllocOp2) +0x12.
  The `lh` at 0xda457f0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xda457f4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lh` at 0xda457f8 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xda457fc stores 2 bytes to ret(__glDlistAllocOp2) +0x16.
  The `lw` at 0xda45800 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda45808 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda457b8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45810 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d174, a3=a0 at entry (arg0).
  The `beq` branch at 0xda457cc targets 0xda4581c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45824 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ClipPlane` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4582c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4582c-0xda458d4 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xda45844 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45880 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xda45884 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `sw` at 0xda45890 stores 4 bytes to ret(__glDlistAllocOp2) +0x30.
  The `ldc1` at 0xda45894 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdc1` at 0xda45898 stores 8 bytes to ret(__glDlistAllocOp2) +0x10.
  The `ldc1` at 0xda4589c loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sdc1` at 0xda458a0 stores 8 bytes to ret(__glDlistAllocOp2) +0x18.
  The `ldc1` at 0xda458a4 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sdc1` at 0xda458a8 stores 8 bytes to ret(__glDlistAllocOp2) +0x20.
  The `ldc1` at 0xda458ac loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `sdc1` at 0xda458b0 stores 8 bytes to ret(__glDlistAllocOp2) +0x28.
  The `jalr` at 0xda4585c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x28, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xda458b8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d1b0, a3=a1 at entry (arg1).
  The `beq` branch at 0xda45870 targets 0xda458c4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda458cc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda458d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda458d4-0xda45954 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda458ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda4591c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45928 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45930 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda45900 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45938 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d1f4, a3=?.
  The `beq` branch at 0xda45910 targets 0xda45944, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4594c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_CullFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45954 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45954-0xda459c8 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda4596c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45998 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda459a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4597c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda459ac calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d23c, a3=?.
  The `beq` branch at 0xda4598c targets 0xda459b8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda459c0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Fogf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda459c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda459c8-0xda45a48 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda459e0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45a10 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45a1c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `swc1` at 0xda45a24 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda459f4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45a2c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d27c, a3=?.
  The `beq` branch at 0xda45a04 targets 0xda45a38, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45a40 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Fogfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45a48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45a48-0xda45b14 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda45a5c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45ac0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45acc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda45a70 calls __glFogfv_size [0xda077e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45a8c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xda45aa8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFogfv_size) << 0x2)+4, a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xda45adc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glFogfv_size) << 0x2), a3=?.
  The `jalr` at 0xda45af8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d2c4, a3=?.
  The `bgez` branch at 0xda45a7c targets 0xda45a9c, is taken when a2(=(ret(__glFogfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFogfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45a94 targets 0xda45b04 and is always taken.
  The `beq` branch at 0xda45ab4 targets 0xda45b04, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45b0c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Fogi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45b14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45b14-0xda45b94 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda45b2c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45b5c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45b68 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45b70 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda45b40 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45b78 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d32c, a3=?.
  The `beq` branch at 0xda45b50 targets 0xda45b84, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45b8c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Fogiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45b94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45b94-0xda45c60 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda45ba8 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45c0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45c18 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda45bbc calls __glFogiv_size [0xda07770] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45bd8 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xda45bf4 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glFogiv_size) << 0x2)+4, a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xda45c28 calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glFogiv_size) << 0x2), a3=?.
  The `jalr` at 0xda45c44 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d374, a3=?.
  The `bgez` branch at 0xda45bc8 targets 0xda45be8, is taken when a2(=(ret(__glFogiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFogiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45be0 targets 0xda45c50 and is always taken.
  The `beq` branch at 0xda45c00 targets 0xda45c50, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45c58 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_FrontFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45c60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45c60-0xda45cd4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda45c78 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45ca4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45cb0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda45c88 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45cb8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d3dc, a3=?.
  The `beq` branch at 0xda45c98 targets 0xda45cc4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45ccc has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Hint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45cd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45cd4-0xda45d54 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda45cec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45d1c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45d28 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45d30 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda45d00 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45d38 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d41c, a3=?.
  The `beq` branch at 0xda45d10 targets 0xda45d44, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45d4c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Lightf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45d54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45d54-0xda45dd8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda45d68 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda45d84 calls __glLightfv_size [0xda07814] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45da0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda45dbc calls __gllc_Lightfv [0xda45dd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda45d90 targets 0xda45db0, is taken when v0(=ret(__glLightfv_size)) == at(=0x1), and falls through when v0(=ret(__glLightfv_size)) != at(=0x1).
  The `beq` branch at 0xda45da8 targets 0xda45dc8 and is always taken.
  The return at 0xda45dd0 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_Lightfv).

- `__gllc_Lightfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45dd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45dd8-0xda45eb4 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda45dec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45e58 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45e64 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45e6c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda45e08 calls __glLightfv_size [0xda07814] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45e24 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xda45e40 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glLightfv_size) << 0x2)+8, a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xda45e7c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glLightfv_size) << 0x2), a3=?.
  The `jalr` at 0xda45e98 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d464, a3=?.
  The `bgez` branch at 0xda45e14 targets 0xda45e34, is taken when a2(=(ret(__glLightfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45e2c targets 0xda45ea4 and is always taken.
  The `beq` branch at 0xda45e4c targets 0xda45ea4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45eac has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Lighti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45eb4-0xda45f38 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda45ec8 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda45ee4 calls __glLightiv_size [0xda078a4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45f00 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda45f1c calls __gllc_Lightiv [0xda45f38] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda45ef0 targets 0xda45f10, is taken when v0(=ret(__glLightiv_size)) == at(=0x1), and falls through when v0(=ret(__glLightiv_size)) != at(=0x1).
  The `beq` branch at 0xda45f08 targets 0xda45f28 and is always taken.
  The return at 0xda45f30 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_Lightiv).

- `__gllc_Lightiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45f38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda45f38-0xda46014 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda45f4c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda45fb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda45fc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda45fcc stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda45f68 calls __glLightiv_size [0xda078a4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45f84 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xda45fa0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glLightiv_size) << 0x2)+8, a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xda45fdc calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glLightiv_size) << 0x2), a3=?.
  The `jalr` at 0xda45ff8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d4d0, a3=?.
  The `bgez` branch at 0xda45f74 targets 0xda45f94, is taken when a2(=(ret(__glLightiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45f8c targets 0xda46004 and is always taken.
  The `beq` branch at 0xda45fac targets 0xda46004, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4600c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LightModelf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46014 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46014-0xda46090 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda46028 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda4603c calls __glLightModelfv_size [0xda078d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46058 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda46074 calls __gllc_LightModelfv [0xda46090] with a0=a0 at entry (arg0), a1=sp+4, a2=?, a3=?.
  The `beq` branch at 0xda46048 targets 0xda46068, is taken when v0(=ret(__glLightModelfv_size)) == at(=0x1), and falls through when v0(=ret(__glLightModelfv_size)) != at(=0x1).
  The `beq` branch at 0xda46060 targets 0xda46080 and is always taken.
  The return at 0xda46088 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_LightModelfv).

- `__gllc_LightModelfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46090 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46090-0xda4615c (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda460a4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46108 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46114 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda460b8 calls __glLightModelfv_size [0xda078d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda460d4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xda460f0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glLightModelfv_size) << 0x2)+4, a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46124 calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glLightModelfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46140 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d53c, a3=?.
  The `bgez` branch at 0xda460c4 targets 0xda460e4, is taken when a2(=(ret(__glLightModelfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightModelfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda460dc targets 0xda4614c and is always taken.
  The `beq` branch at 0xda460fc targets 0xda4614c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46154 has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LightModeli` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4615c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4615c-0xda461d8 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xda46170 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda46184 calls __glLightModeliv_size [0xda0792c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda461a0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda461bc calls __gllc_LightModeliv [0xda461d8] with a0=a0 at entry (arg0), a1=sp+4, a2=?, a3=?.
  The `beq` branch at 0xda46190 targets 0xda461b0, is taken when v0(=ret(__glLightModeliv_size)) == at(=0x1), and falls through when v0(=ret(__glLightModeliv_size)) != at(=0x1).
  The `beq` branch at 0xda461a8 targets 0xda461c8 and is always taken.
  The return at 0xda461d0 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_LightModeliv).

- `__gllc_LightModeliv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda461d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda461d8-0xda462a4 (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0xda461ec loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46250 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda4625c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda46200 calls __glLightModeliv_size [0xda0792c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4621c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xda46238 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glLightModeliv_size) << 0x2)+4, a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xda4626c calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(ret(__glLightModeliv_size) << 0x2), a3=?.
  The `jalr` at 0xda46288 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d5a4, a3=?.
  The `bgez` branch at 0xda4620c targets 0xda4622c, is taken when a2(=(ret(__glLightModeliv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glLightModeliv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda46224 targets 0xda46294 and is always taken.
  The `beq` branch at 0xda46244 targets 0xda46294, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4629c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LineStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda462a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda462a4-0xda46324 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda462bc loads 4 bytes from abs 0x1010.
  The `sh` at 0xda462ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda462f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xda46300 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda462d0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46308 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d60c, a3=?.
  The `beq` branch at 0xda462e0 targets 0xda46314, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4631c has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LineWidth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46324 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46324-0xda46398 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda46338 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46368 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda46374 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4634c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4637c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d654, a3=?.
  The `beq` branch at 0xda4635c targets 0xda46388, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46390 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Materialf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46398 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46398-0xda4641c (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda463ac loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda463c8 calls __glMaterialfv_size [0xda07960] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda463e4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda46400 calls __gllc_Materialfv [0xda4641c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda463d4 targets 0xda463f4, is taken when v0(=ret(__glMaterialfv_size)) == at(=0x1), and falls through when v0(=ret(__glMaterialfv_size)) != at(=0x1).
  The `beq` branch at 0xda463ec targets 0xda4640c and is always taken.
  The return at 0xda46414 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_Materialfv).

- `__gllc_Materialfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4641c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4641c-0xda4653c (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda46448 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda46450 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sh` at 0xda464d0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda464dc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda464e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda464fc loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda4650c stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda4644c calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xda46468 calls __gllc_Error [0xd993598] with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda46480 calls __glMaterialfv_size [0xda07960] with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda4649c calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xda464b8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glMaterialfv_size) << 0x2)+8, a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xda464f4 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glMaterialfv_size) << 0x2), a3=?.
  The `jalr` at 0xda4651c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d694, a3=?.
  The `beq` branch at 0xda46458 targets 0xda46478, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda46470 targets 0xda46528 and is always taken.
  The `bgez` branch at 0xda4648c targets 0xda464ac, is taken when a2(=(ret(__glMaterialfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glMaterialfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda464a4 targets 0xda46528 and is always taken.
  The `beq` branch at 0xda464c4 targets 0xda46528, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46534 has v0 = one of ret(__gllc_Error), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Materiali` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4653c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda4653c-0xda465c0 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda46550 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda4656c calls __glMaterialiv_size [0xda079e4] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46588 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda465a4 calls __gllc_Materialiv [0xda465c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda46578 targets 0xda46598, is taken when v0(=ret(__glMaterialiv_size)) == at(=0x1), and falls through when v0(=ret(__glMaterialiv_size)) != at(=0x1).
  The `beq` branch at 0xda46590 targets 0xda465b0 and is always taken.
  The return at 0xda465b8 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_Materialiv).

- `__gllc_Materialiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda465c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda465c0-0xda466f4 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0xda465e8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xda465f0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46688 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46694 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4669c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `lw` at 0xda466b4 loads 4 bytes from [0x1010] +0x1384.
  The `sw` at 0xda466c4 stores 4 bytes to [0x1010] +0x1384.
  The `jalr` at 0xda46604 calls __glErrorCheckMaterial [0xd9c339c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xda46620 calls __gllc_Error [0xd993598] with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda46638 calls __glMaterialiv_size [0xda079e4] with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=?, a3=?.
  The `jalr` at 0xda46654 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xda46670 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glMaterialiv_size) << 0x2)+8, a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xda466ac calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glMaterialiv_size) << 0x2), a3=?.
  The `jalr` at 0xda466d4 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d700, a3=?.
  The `beq` branch at 0xda46610 targets 0xda46630, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xda46628 targets 0xda466e0 and is always taken.
  The `bgez` branch at 0xda46644 targets 0xda46664, is taken when a2(=(ret(__glMaterialiv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glMaterialiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4665c targets 0xda466e0 and is always taken.
  The `beq` branch at 0xda4667c targets 0xda466e0, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda466ec has v0 = one of ret(__gllc_Error), ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PointSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda466f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda466f4-0xda46768 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda46708 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46738 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `swc1` at 0xda46744 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda4671c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4674c calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d76c, a3=?.
  The `beq` branch at 0xda4672c targets 0xda46758, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46760 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_PolygonMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46768 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46768-0xda467e8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xda46780 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda467b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda467bc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda467c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda46794 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda467cc calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d7ac, a3=?.
  The `beq` branch at 0xda467a4 targets 0xda467d8, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda467e0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_Scissor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda467e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda467e8-0xda46880 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xda46800 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda46838 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46844 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda4684c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xda46854 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `sw` at 0xda4685c stores 4 bytes to ret(__glDlistAllocOp2) +0x1c.
  The `jalr` at 0xda4681c calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46864 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d7f4, a3=?.
  The `beq` branch at 0xda4682c targets 0xda46870, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46878 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ShadeModel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46880 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46880-0xda468f4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xda46898 loads 4 bytes from abs 0x1010.
  The `sh` at 0xda468c4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda468d0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xda468a8 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda468d8 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d844, a3=?.
  The `beq` branch at 0xda468b8 targets 0xda468e4, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda468ec has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexParameterf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda468f4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda468f4-0xda46978 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda46908 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda46924 calls __glTexParameterfv_size [0xda19c24] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46940 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda4695c calls __gllc_TexParameterfv [0xda46978] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda46930 targets 0xda46950, is taken when v0(=ret(__glTexParameterfv_size)) == at(=0x1), and falls through when v0(=ret(__glTexParameterfv_size)) != at(=0x1).
  The `beq` branch at 0xda46948 targets 0xda46968 and is always taken.
  The return at 0xda46970 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexParameterfv).

- `__gllc_TexParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46978 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46978-0xda46a54 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xda4698c loads 4 bytes from abs 0x1010.
  The `sh` at 0xda469f8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xda46a04 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xda46a0c stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xda469a8 calls __glTexParameterfv_size [0xda19c24] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda469c4 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=(ret(__glTexParameterfv_size) << 0x2), a3=?.
  The `jalr` at 0xda469e0 calls __glDlistAllocOp2 [0xd992e30] with a0=[0x1010], a1=(ret(__glTexParameterfv_size) << 0x2)+8, a2=(ret(__glTexParameterfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46a1c calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=(ret(__glTexParameterfv_size) << 0x2), a3=?.
  The `jalr` at 0xda46a38 calls __glDlistAppendOp [0xd992ec8] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xda4d884, a3=?.
  The `bgez` branch at 0xda469b4 targets 0xda469d4, is taken when a2(=(ret(__glTexParameterfv_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glTexParameterfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda469cc targets 0xda46a44 and is always taken.
  The `beq` branch at 0xda469ec targets 0xda46a44, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46a4c has v0 = one of ret(__gllc_InvalidEnum), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_TexParameteri` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46a54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP27KONA/libGLcore.so`.
  Range: 0xda46a54-0xda46ad8 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xda46a68 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xda46a84 calls __glTexParameteriv_size [0xda19d70] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46aa0 calls __gllc_InvalidEnum [0xd993404] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xda46abc calls __gllc_TexParameteriv [0xda46ad8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=?.
  The `beq` branch at 0xda46a90 targets 0xda46ab0, is taken when v0(=ret(__glTexParameteriv_size)) == at(=0x1), and falls through when v0(=ret(__glTexParameteriv_size)) != at(=0x1).
  The `beq` branch at 0xda46aa8 targets 0xda46ac8 and is always taken.
  The return at 0xda46ad0 has v0 = one of ret(__gllc_InvalidEnum), ret(__gllc_TexParameteriv).
