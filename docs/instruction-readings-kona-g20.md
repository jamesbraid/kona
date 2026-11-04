# Instruction readings from hostfacts

These readings summarize selected memory accesses, calls, branches and returns from each routine body. Every instruction claim cites its address in the exact binary build. They describe software behavior, not hardware measurements.

Skipped 7,827 located, 12,633 understood, and 8 no-software-dependency rows by status, 1,458 rows with existing exact entries, and 0 undocumented rows; 32,383 eligible targets remained after these first 250.

- `fcg_venice_get_vcreg` in `usr/gfx/gfxinfo` at 0x1000f72c (n32).
  It occupies 52 bytes.
  The `lw` at 0x1000f738 loads 4 bytes from abs 0x10027798 via base at (0x1002f264).
  The `lw` at 0x1000f740 loads 4 bytes from sym(ven_gfxvaddr) +0x0 via base v1 (sym(ven_gfxvaddr)).
  The `lw` at 0x1000f75c loads 4 bytes from ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000 via base v0 (([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192).
  The return at 0x1000f758 has v0 = [([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192].

- `fcg_venice_set_vcreg` in `usr/gfx/gfxinfo` at 0x1000f760 (n32).
  It occupies 52 bytes.
  The `lw` at 0x1000f76c loads 4 bytes from abs 0x10027798 via base at (0x1002f264).
  The `lw` at 0x1000f774 loads 4 bytes from sym(ven_gfxvaddr) +0x0 via base v1 (sym(ven_gfxvaddr)).
  The `sw` at 0x1000f790 stores 4 bytes to ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000 via base v0 (([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192) with value a1.
  The return at 0x1000f78c has v0 = ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192.

- `venice_get_vcreg` in `usr/gfx/gfxinfo` at 0x1000fcb4 (n32).
  It occupies 52 bytes.
  The `lw` at 0x1000fcc8 loads 4 bytes from abs 0x10027490 via base gp (0x1002f264).
  The `jal` at 0x1000fcd0 calls `fcg_venice_get_vcreg [0x1000f72c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000fce0 has v0 = ret(fcg_venice_get_vcreg).

- `venice_set_vcreg` in `usr/gfx/gfxinfo` at 0x1000fce8 (n32).
  It occupies 52 bytes.
  The `lw` at 0x1000fcfc loads 4 bytes from abs 0x10027494 via base gp (0x1002f264).
  The `jal` at 0x1000fd04 calls `fcg_venice_set_vcreg [0x1000f760]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000fd14 has v0 = ret(fcg_venice_set_vcreg).

- `vs2RegisterSetBit` in `usr/gfx/gfxinfo` at 0x100183c8 (n32).
  It occupies 100 bytes.
  The `lw` at 0x100183e0 loads 4 bytes from abs 0x10027618 via base gp (0x1002f264).
  The `lw` at 0x100183fc loads 4 bytes from abs 0x1002762c via base gp (0x1002f264).
  The `jal` at 0x100183f4 calls `vs2ReadByte [0x1001834c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10018410 calls `vs2WriteByte [0x10018864]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The return at 0x10018424 has v0 = ret(vs2WriteByte).

- `vs2WriteXilinxReg` in `usr/gfx/gfxinfo` at 0x100188c8 (n32).
  It occupies 24 bytes.
  The `lw` at 0x100188c8 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `sb` at 0x100188dc stores 1 byte to ((a2 + (a1 + [a0+4])) << 0x0) +0x0 via base at (((a2 + (a1 + [a0+4])) << 0x0)) with value a3.
  The return at 0x100188d8 has v0 = ?.

- `vs2ReadDACCommandRegister` in `usr/gfx/gfxinfo` at 0x1001c4f8 (n32).
  It occupies 100 bytes.
  The `lw` at 0x1001c510 loads 4 bytes from abs 0x10027280 via base gp (0x1002f264).
  The `lw` at 0x1001c530 loads 4 bytes from abs 0x10027618 via base gp (0x1002f264).
  The `jal` at 0x1001c524 calls `(unnamed) [0x1001c67c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c540 calls `vs2ReadByte [0x1001834c]` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x1001c554 has v0 = ret(vs2ReadByte).

- `vs2WriteDACCommandRegister` in `usr/gfx/gfxinfo` at 0x1001c55c (n32).
  It occupies 108 bytes.
  The `lw` at 0x1001c574 loads 4 bytes from abs 0x10027280 via base gp (0x1002f264).
  The `lw` at 0x1001c598 loads 4 bytes from abs 0x1002762c via base gp (0x1002f264).
  The `jal` at 0x1001c58c calls `(unnamed) [0x1001c67c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001c5ac calls `vs2WriteByte [0x10018864]` with a0=a0 at entry (arg0), a1=unknown, a2=a3 at entry (arg3), a3=unknown.
  The return at 0x1001c5c0 has v0 = ret(vs2WriteByte).

- `venice_get_vcreg` in `usr/gfx/setmon` at 0x1000ff38 (n32).
  It occupies 52 bytes.
  The `lw` at 0x1000ff4c loads 4 bytes from abs 0x10041a68 via base gp (0x10049760).
  The `jal` at 0x1000ff54 calls `fcg_venice_get_vcreg [0x100110d4]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff64 has v0 = ret(fcg_venice_get_vcreg).

- `venice_set_vcreg` in `usr/gfx/setmon` at 0x1000ff6c (n32).
  It occupies 52 bytes.
  The `lw` at 0x1000ff80 loads 4 bytes from abs 0x10041a6c via base gp (0x10049760).
  The `jal` at 0x1000ff88 calls `fcg_venice_set_vcreg [0x10011108]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff98 has v0 = ret(fcg_venice_set_vcreg).

- `fcg_venice_get_vcreg` in `usr/gfx/setmon` at 0x100110d4 (n32).
  It occupies 52 bytes.
  The `lw` at 0x100110e0 loads 4 bytes from abs 0x10041d90 via base at (0x10049760).
  The `lw` at 0x100110e8 loads 4 bytes from sym(ven_gfxvaddr) +0x0 via base v1 (sym(ven_gfxvaddr)).
  The `lw` at 0x10011104 loads 4 bytes from ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000 via base v0 (([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192).
  The return at 0x10011100 has v0 = [([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192].

- `fcg_venice_set_vcreg` in `usr/gfx/setmon` at 0x10011108 (n32).
  It occupies 52 bytes.
  The `lw` at 0x10011114 loads 4 bytes from abs 0x10041d90 via base at (0x10049760).
  The `lw` at 0x1001111c loads 4 bytes from sym(ven_gfxvaddr) +0x0 via base v1 (sym(ven_gfxvaddr)).
  The `sw` at 0x10011138 stores 4 bytes to ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000 via base v0 (([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192) with value a1.
  The return at 0x10011134 has v0 = ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192.

- `vs2WriteXilinxReg` in `usr/gfx/setmon` at 0x1001316c (n32).
  It occupies 24 bytes.
  The `lw` at 0x1001316c loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `sb` at 0x10013180 stores 1 byte to ((a2 + (a1 + [a0+4])) << 0x0) +0x0 via base at (((a2 + (a1 + [a0+4])) << 0x0)) with value a3.
  The return at 0x1001317c has v0 = ?.

- `vs2ReadDACCommandRegister` in `usr/gfx/setmon` at 0x10016d9c (n32).
  It occupies 100 bytes.
  The `lw` at 0x10016db4 loads 4 bytes from abs 0x10041778 via base gp (0x10049760).
  The `lw` at 0x10016dd4 loads 4 bytes from abs 0x10041ac4 via base gp (0x10049760).
  The `jal` at 0x10016dc8 calls `(unnamed) [0x10016f20]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016de4 calls `vs2ReadByte [0x10012bf0]` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The return at 0x10016df8 has v0 = ret(vs2ReadByte).

- `vs2WriteDACCommandRegister` in `usr/gfx/setmon` at 0x10016e00 (n32).
  It occupies 108 bytes.
  The `lw` at 0x10016e18 loads 4 bytes from abs 0x10041778 via base gp (0x10049760).
  The `lw` at 0x10016e3c loads 4 bytes from abs 0x10041adc via base gp (0x10049760).
  The `jal` at 0x10016e30 calls `(unnamed) [0x10016f20]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016e50 calls `vs2WriteByte [0x10013108]` with a0=a0 at entry (arg0), a1=unknown, a2=a3 at entry (arg3), a3=unknown.
  The return at 0x10016e64 has v0 = ret(vs2WriteByte).

- `__glim_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0934 (o32).
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

- `__glim_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c09d8 (o32).
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

- `__glim_AsyncMarkerSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0a4c (o32).
  It occupies 416 bytes.
  The `lw` at 0xd9c0a78 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9c0a88 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9c0a8c loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9c0aa4 loads 4 bytes from [0x1010] +0x17e8 via base s0 ([0x1010]).
  The `lw` at 0xd9c0aa8 loads 4 bytes from [0x1010] +0x17f0 via base s0 ([0x1010]).
  The `lw` at 0xd9c0ab4 loads 4 bytes from abs 0xda85078 via base gp (0xda8bc00).
  2 such `lw` accesses load 4 bytes from [0x1010] +0x17ec via base s2 ([0x1010]+6120), including `lw` at 0xd9c0abc, `lw` at 0xd9c0ac8.
  The `lw` at 0xd9c0ad4 loads 4 bytes from [[0x1010]+6124] +0x0 via base t8 ([[0x1010]+6124]).
  2 such `lw` accesses load 4 bytes from abs 0xda85084 via base gp (0xda8bc00), including `lw` at 0xd9c0ae4, `lw` at 0xd9c0b94.
  The `lw` at 0xd9c0aec loads 4 bytes from [0x1010] +0x17e8 via base s2 ([0x1010]+6120).
  The `lw` at 0xd9c0afc loads 4 bytes from abs 0xda85070 via base gp (0xda8bc00).
  The `lw` at 0xd9c0b1c loads 4 bytes from abs 0xda85088 via base gp (0xda8bc00).
  The `lw` at 0xd9c0b34 loads 4 bytes from [0x1010] +0x4 via base s0 ([0x1010]).
  The `lw` at 0xd9c0b58 loads 4 bytes from abs 0xda8506c via base gp (0xda8bc00).
  The `lw` at 0xd9c0b78 loads 4 bytes from unknown (base unknown) via base v1 (unknown).
  The `sw` at 0xd9c0b84 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value unknown.
  The `lw` at 0xd9c0bb0 loads 4 bytes from abs 0xda84960 via base gp (0xda8bc00).
  The `sw` at 0xd9c0bb8 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value 0xd9c0d50.
  The `lw` at 0xd9c0bbc loads 4 bytes from ret(__glNamesLockData) +0x0 via base v0 (ret(__glNamesLockData)).
  The `sw` at 0xd9c0bc4 stores 4 bytes to ret(__glNamesLockData) +0x0 via base v0 (ret(__glNamesLockData)) with value [ret(__glNamesLockData)]+1.
  The `sw` at 0xd9c0bc8 stores 4 bytes to [0x1010] +0x17e8 via base s2 ([0x1010]+6120) with value a0.
  The `sw` at 0xd9c0bcc stores 4 bytes to [0x1010] +0x17ec via base s2 ([0x1010]+6120) with value unknown.
  The `jalr` at 0xd9c0a94 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0ac0 calls `__glNamesUnlockData [0xd9f5084]` with a0=[0x1010], a1=[[0x1010]+6124], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0af0 calls `__glNamesDeleteRange [0xd9f54c0]` with a0=[0x1010], a1=[[0x1010]+6128], a2=[[0x1010]+6120], a3=0x1.
  The `jalr` at 0xd9c0b08 calls `__glNamesLockData [0xd9f4640]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0xd9c0b28 calls `__glNamesIsName [0xd9f58d8]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0xd9c0b44 calls `(unknown callee)` with a0=[0x1010], a1=0x1, a2=0x8, a3=unknown.
  The `jalr` at 0xd9c0b64 calls `__glNamesNewData [0xd9f40bc]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=ret(unknown).
  The `jalr` at 0xd9c0ba0 calls `__glNamesDeleteRange [0xd9f54c0]` with a0=[0x1010], a1=[[0x1010]+6128], a2=a0 at entry (arg0), a3=0x1.
  The `bne` branch at 0xd9c0a84 goes to 0xd9c0aa4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beql` branch at 0xd9c0aac goes to 0xd9c0bd4 when s3(=a0) == t7(=[[0x1010]+6120]) and falls through when s3(=a0) != t7(=[[0x1010]+6120]).
  The `beq` branch at 0xd9c0adc goes to 0xd9c0afc when t9(=[[[0x1010]+6124]]) >= 0x2 (signed) and falls through when t9(=[[[0x1010]+6124]]) < 0x2 (signed).
  The `bne` branch at 0xd9c0b14 goes to 0xd9c0bbc when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `bne` branch at 0xd9c0b8c goes to 0xd9c0bb0 when t2(?) != 0 and falls through when t2(?) == 0.
  The return at 0xd9c0be4 has v0 = ?.

- `__glim_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0bec (o32).
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

- `__glim_FinishAsyncSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c0c90 (o32).
  It occupies 192 bytes.
  The `lw` at 0xd9c0cb0 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9c0cb8 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9c0cc4 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9c0ce4 loads 4 bytes from [0x1010] +0x17f4 via base v1 ([0x1010]).
  The `lw` at 0xd9c0cec loads 4 bytes from [[0x1010]+6132] +0x484 via base t7 ([[0x1010]+6132]).
  The `lw` at 0xd9c0d08 loads 4 bytes from unknown (base unknown) via base t8 (unknown).
  The `lw` at 0xd9c0d0c loads 4 bytes from unknown (base unknown) via base t0 (unknown).
  The `lw` at 0xd9c0d24 loads 4 bytes from unknown (base unknown) via base t1 (unknown).
  The `lw` at 0xd9c0d28 loads 4 bytes from unknown (base unknown) via base t2 (unknown).
  The `jalr` at 0xd9c0ccc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0cf0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c0d10 calls `(unknown callee)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9c0d2c calls `(unknown callee)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `bnel` branch at 0xd9c0cbc goes to 0xd9c0ce4 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bne` branch at 0xd9c0cfc goes to 0xd9c0d3c when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The return at 0xd9c0d48 has v0 = ?.

- `__glim_BlendEquationEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c1054 (o32).
  It occupies 248 bytes.
  The `lw` at 0xd9c1070 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9c1078 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9c1084, `lw` at 0xd9c110c.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x72c via base v1 ([0x1010]) with value a0, including `sw` at 0xd9c10b8, `sw` at 0xd9c1108, `sw` at 0xd9c1124.
  The `lw` at 0xd9c10e4 loads 4 bytes from abs 0xda83c60 via base gp (0xda8bc00).
  The `lw` at 0xd9c10f0 loads 4 bytes from table(0xda77c64) +0x0 via base at (table(0xda70000)).
  The `sw` at 0xd9c112c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9c1130 loads 4 bytes from [0x1010] +0x2e24 via base v1 ([0x1010]).
  The `sw` at 0xd9c1138 stores 4 bytes to [0x1010] +0x2e24 via base v1 ([0x1010]) with value ([[0x1010]+11812] | 0x1).
  The `jalr` at 0xd9c108c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c1114 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9c107c goes to 0xd9c10a0 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bne` branch at 0xd9c10a4 goes to 0xd9c10c4 when a0 < at(=0x800c) (unsigned) and falls through when a0 >= at(=0x800c) (unsigned).
  The `beq` branch at 0xd9c10ac goes to 0xd9c1124 when a0 == at(=0x8320) and falls through when a0 != at(=0x8320).
  The `beql` branch at 0xd9c10b4 goes to 0xd9c1128 when a0 == at(=0x8321) and falls through when a0 != at(=0x8321).
  The `bne` branch at 0xd9c10c8 goes to 0xd9c1100 when a0 < 0xbf2 (unsigned) and falls through when a0 >= 0xbf2 (unsigned).
  The `beq` branch at 0xd9c10dc goes to 0xd9c110c when t7(=a0-32774) >= 0x6 (unsigned) and falls through when t7(=a0-32774) < 0x6 (unsigned).
  The `beql` branch at 0xd9c1104 goes to 0xd9c1128 when a0 == at(=0xbf1) and falls through when a0 != at(=0xbf1).
  The return at 0xd9c1144 has v0 = ?.

- `__glim_BlendColorEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c7e74 (o32).
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

- `__glim_PolygonOffsetEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c7fa0 (o32).
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

- `__glim_Bitmap` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9c8f60 (o32).
  It occupies 320 bytes.
  The `lw` at 0xd9c8f88 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9c8f9c loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9c8fb8 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9c8fd4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xd9c8fe4 loads 4 bytes from [0x1010] +0x17f4 via base s0 ([0x1010]).
  The `lw` at 0xd9c8ff0 loads 4 bytes from [[0x1010]+6132] +0x20 via base t7 ([[0x1010]+6132]).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9c9014, `lw` at 0xd9c9040.
  The `lw` at 0xd9c9074 loads 4 bytes from [0x1010] +0x3114 via base s0 ([0x1010]).
  The `jalr` at 0xd9c8fc0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c9004 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9c901c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c9048 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9c9080 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The `beq` branch at 0xd9c8f98 goes to 0xd9c902c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9c8fa4 goes to 0xd9c9014 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `bltz` branch at 0xd9c9030 goes to 0xd9c9040 when t8(=a0) < 0 (signed) and falls through when t8(=a0) >= 0 (signed).
  The `bgezl` branch at 0xd9c9038 goes to 0xd9c905c when a2(=a1) >= 0 (signed) and falls through when a2(=a1) < 0 (signed).
  The return at 0xd9c9098 has v0 = ?.

- `__glim_Clear` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cc890 (o32).
  It occupies 528 bytes.
  The `lw` at 0xd9cc8b4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9cc8b8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9cc8d4 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9cc8e8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xd9cc8f0 loads 4 bytes from abs 0xda8772c via base gp (0xda8bc00).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9cc904, `lw` at 0xd9cc928.
  The `lw` at 0xd9cc924 loads 4 bytes from [0x1010] +0xc84 via base s0 ([0x1010]).
  The `lw` at 0xd9cc95c loads 4 bytes from [0x1010] +0x760 via base s0 ([0x1010]).
  2 such `lw` accesses load 4 bytes from [0x1010] +0x77f8 via base s0 ([0x1010]), including `lw` at 0xd9cc980, `lw` at 0xd9cc98c.
  2 such `lw` accesses load 4 bytes from [[0x1010]+30712] +0xd8 via base a0 ([[0x1010]+30712]), including `lw` at 0xd9cc990, `lw` at 0xd9cc9cc.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc96 via base s0 ([0x1010]), including `lbu` at 0xd9cc9a4, `lbu` at 0xd9cc9d8.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x77fc via base s0 ([0x1010]), including `lw` at 0xd9cc9b0, `lw` at 0xd9cc9e8.
  2 such `lw` accesses load 4 bytes from [[0x1010]+30716] +0xd8 via base a0 ([[0x1010]+30716]), including `lw` at 0xd9cc9b4, `lw` at 0xd9cc9ec.
  The `lbu` at 0xd9cca0c loads 1 byte from [0x1010] +0xc98 via base s0 ([0x1010]).
  The `lw` at 0xd9cca18 loads 4 bytes from [0x1010] +0x7b24 via base s0 ([0x1010]).
  The `lbu` at 0xd9cca3c loads 1 byte from [0x1010] +0xc9a via base s0 ([0x1010]).
  The `lw` at 0xd9cca48 loads 4 bytes from [0x1010] +0x7a30 via base s0 ([0x1010]).
  The `lbu` at 0xd9cca6c loads 1 byte from [0x1010] +0xc99 via base s0 ([0x1010]).
  The `lw` at 0xd9cca78 loads 4 bytes from [0x1010] +0x7aac via base s0 ([0x1010]).
  The `jalr` at 0xd9cc8dc calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc8f4 calls `glClear` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cc90c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc930 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc994 calls `(unknown callee)` with a0=[[0x1010]+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc9b8 calls `(unknown callee)` with a0=[[0x1010]+30716], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc9d0 calls `(unknown callee)` with a0=[[0x1010]+30712], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cc9f0 calls `(unknown callee)` with a0=[[0x1010]+30716], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cca20 calls `(unknown callee)` with a0=[0x1010]+31416, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cca50 calls `(unknown callee)` with a0=[0x1010]+31164, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cca80 calls `(unknown callee)` with a0=[0x1010]+31284, a1=unknown, a2=unknown, a3=unknown.
  The `beq` branch at 0xd9cc8c0 goes to 0xd9cc91c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9cc8cc goes to 0xd9cc904 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beql` branch at 0xd9cc920 goes to 0xd9cc944 when (t6(=a0) & at(=-0x4701)) == 0 and falls through when (t6(=a0) & at(=-0x4701)) != 0.
  The `bne` branch at 0xd9cc94c goes to 0xd9cca8c when t8(=[[0x1010]+3204]) != at(=0x1c00) and falls through when t8(=[[0x1010]+3204]) == at(=0x1c00).
  The `beql` branch at 0xd9cc954 goes to 0xd9cca00 when t1(?) == 0 and falls through when t1(?) != 0.
  The `beql` branch at 0xd9cc964 goes to 0xd9cca00 when v0(=[[0x1010]+1888]) == 0 and falls through when v0(=[[0x1010]+1888]) != 0.
  The `beq` branch at 0xd9cc96c goes to 0xd9cc98c when v0(=[[0x1010]+1888]) == at(=0x404) and falls through when v0(=[[0x1010]+1888]) != at(=0x404).
  The `beq` branch at 0xd9cc974 goes to 0xd9cc9a4 when v0(=[[0x1010]+1888]) == at(=0x405) and falls through when v0(=[[0x1010]+1888]) != at(=0x405).
  The `beql` branch at 0xd9cc97c goes to 0xd9cc9cc when v0(=[[0x1010]+1888]) == at(=0x408) and falls through when v0(=[[0x1010]+1888]) != at(=0x408).
  The `beql` branch at 0xd9cc9a8 goes to 0xd9cca00 when t2(=[[0x1010]+3222]:1) == 0 and falls through when t2(=[[0x1010]+3222]:1) != 0.
  The `beql` branch at 0xd9cc9e0 goes to 0xd9cca00 when t3(=[[0x1010]+3222]:1) == 0 and falls through when t3(=[[0x1010]+3222]:1) != 0.
  The `beql` branch at 0xd9cca04 goes to 0xd9cca30 when (t4(=a0) & 0x200) == 0 and falls through when (t4(=a0) & 0x200) != 0.
  The `beql` branch at 0xd9cca10 goes to 0xd9cca30 when t6(=[[0x1010]+3224]:1) == 0 and falls through when t6(=[[0x1010]+3224]:1) != 0.
  The `beql` branch at 0xd9cca34 goes to 0xd9cca60 when (t7(=a0) & 0x400) == 0 and falls through when (t7(=a0) & 0x400) != 0.
  The `beql` branch at 0xd9cca40 goes to 0xd9cca60 when t0(=[[0x1010]+3226]:1) == 0 and falls through when t0(=[[0x1010]+3226]:1) != 0.
  The `beql` branch at 0xd9cca64 goes to 0xd9cca90 when (t1(=a0) & 0x100) == 0 and falls through when (t1(=a0) & 0x100) != 0.
  The `beql` branch at 0xd9cca70 goes to 0xd9cca90 when t3(=[[0x1010]+3225]:1) == 0 and falls through when t3(=[[0x1010]+3225]:1) != 0.
  The return at 0xd9cca98 has v0 = ?.

- `__glim_ColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cecec (o32).
  It occupies 368 bytes.
  The `lw` at 0xd9ced1c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9ced20 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9ced38 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9ced50 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9ced54, `lw` at 0xd9cedd8, `lw` at 0xd9cedec.
  The `lw` at 0xd9ced6c loads 4 bytes from abs 0xda84be0 via base gp (0xda8bc00).
  The `lw` at 0xd9cee1c loads 4 bytes from [0x1010] +0x31b0 via base s0 ([0x1010]).
  The `sw` at 0xd9cee34 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9cee38 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9cee44 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x11).
  The `jalr` at 0xd9ced40 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ced5c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ced8c calls `__glCheckColorTableArgs [0xd9ce260]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd9ceddc calls `__glSetError [0xd9d1af8]` with a0=ret(__glCheckColorTableArgs), a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9cedf0 calls `__glSetError [0xd9d1af8]` with a0=ret(__glCheckColorTableArgs), a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9cee28 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=a2 at entry (arg2).
  The `beq` branch at 0xd9ced28 goes to 0xd9ced6c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9ced30 goes to 0xd9ced54 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9ced9c goes to 0xd9cee00 when v0(=ret(__glCheckColorTableArgs)) == 0 and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9ceda8 goes to 0xd9cedc4 when a1(=a0) == at(=0x80bd) and falls through when a1(=a0) != at(=0x80bd).
  The `beq` branch at 0xd9cedb0 goes to 0xd9cedc4 when a1(=a0) == at(=0x80d3) and falls through when a1(=a0) != at(=0x80d3).
  The `beq` branch at 0xd9cedb8 goes to 0xd9cedc4 when a1(=a0) == at(=0x80d4) and falls through when a1(=a0) != at(=0x80d4).
  The `bne` branch at 0xd9cedc0 goes to 0xd9cedec when a1(=a0) != at(=0x80d5) and falls through when a1(=a0) == at(=0x80d5).
  The `bne` branch at 0xd9cedc8 goes to 0xd9cedd8 when v0(=ret(__glCheckColorTableArgs)) != at(=0x8031) and falls through when v0(=ret(__glCheckColorTableArgs)) == at(=0x8031).
  The return at 0xd9cee54 has v0 = ?.

- `__glim_ColorSubTable` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf0bc (o32).
  It occupies 312 bytes.
  The `lw` at 0xd9cf0ec loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9cf0f0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9cf108 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9cf120 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9cf124, `lw` at 0xd9cf170.
  The `lw` at 0xd9cf13c loads 4 bytes from abs 0xda84be4 via base gp (0xda8bc00).
  The `lw` at 0xd9cf1b4 loads 4 bytes from [0x1010] +0x31b4 via base s0 ([0x1010]).
  The `sw` at 0xd9cf1cc stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9cf1d0 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9cf1dc stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x11).
  The `jalr` at 0xd9cf110 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf12c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf15c calls `__glCheckColorSubTableArgs [0xd9ce574]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf174 calls `__glSetError [0xd9d1af8]` with a0=ret(__glCheckColorSubTableArgs), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf1c0 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9cf0f8 goes to 0xd9cf13c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9cf100 goes to 0xd9cf124 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9cf168 goes to 0xd9cf184 when v0(=ret(__glCheckColorSubTableArgs)) == 0 and falls through when v0(=ret(__glCheckColorSubTableArgs)) != 0.
  The `beql` branch at 0xd9cf18c goes to 0xd9cf1e4 when t8(=a2) == 0 and falls through when t8(=a2) != 0.
  The `beq` branch at 0xd9cf194 goes to 0xd9cf1e0 when v0(?) == 0 and falls through when v0(?) != 0.
  The return at 0xd9cf1ec has v0 = ?.

- `__glim_GetColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf1f4 (o32).
  It occupies 620 bytes.
  The `lw` at 0xd9cf224 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9cf228 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9cf240 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9cf258 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  6 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9cf25c, `lw` at 0xd9cf2a8, `lw` at 0xd9cf2fc.
  The `lw` at 0xd9cf274 loads 4 bytes from abs 0xda84be0 via base gp (0xda8bc00).
  The `lw` at 0xd9cf2d8 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  The `lw` at 0xd9cf2e4 loads 4 bytes from table(0xda78b98) +0x0 via base at (table(0xda80000)).
  4 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xd9cf378, `lw` at 0xd9cf384, `lw` at 0xd9cf39c.
  The `lw` at 0xd9cf398 loads 4 bytes from abs 0xda84660 via base gp (0xda8bc00).
  The `lw` at 0xd9cf3bc loads 4 bytes from abs 0xda84668 via base gp (0xda8bc00).
  The `lw` at 0xd9cf3f8 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xd9cf410 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xd9cf430 loads 4 bytes from [0x1010] +0x3154 via base s0 ([0x1010]).
  The `jalr` at 0xd9cf248 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf264 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf294 calls `__glCheckColorTableArgs [0xd9ce260]` with a0=[0x1010], a1=a0 at entry (arg0), a2=0x1907, a3=0x0.
  The `jalr` at 0xd9cf2ac calls `__glSetError [0xd9d1af8]` with a0=ret(__glCheckColorTableArgs), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf304 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf324 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf344 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf364 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf3a8 calls `__glInitMemGet [0xd9abb34]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=0x1.
  The `jalr` at 0xd9cf3e4 calls `__glInitMemPack [0xd9abcf0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=0x1.
  The `jalr` at 0xd9cf3fc calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf414 calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cf440 calls `(unknown callee)` with a0=[0x1010], a1=sp-504, a2=0x0, a3=unknown.
  The `beq` branch at 0xd9cf230 goes to 0xd9cf274 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9cf238 goes to 0xd9cf25c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9cf2a0 goes to 0xd9cf2bc when v0(=ret(__glCheckColorTableArgs)) == 0 and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beql` branch at 0xd9cf2d0 goes to 0xd9cf378 when t0(=a0-32956) >= 0x1a (unsigned) and falls through when t0(=a0-32956) < 0x1a (unsigned).
  The `beql` branch at 0xd9cf37c goes to 0xd9cf450 when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` branch at 0xd9cf390 goes to 0xd9cf44c when v0(?) == 0 and falls through when v0(?) != 0.
  The return at 0xd9cf458 has v0 = ?.

- `__glim_ColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf754 (o32).
  It occupies 136 bytes.
  The `lw` at 0xd9cf778 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cf788 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cf798 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cf7b0 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cf7a0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf7c0 calls `__glColorTableParameterv [0xd9cf650]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf790 goes to 0xd9cf7b0 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cf7d4 has v0 = ?.

- `__glim_ColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf7dc (o32).
  It occupies 144 bytes.
  The `lw` at 0xd9cf804 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cf814 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cf828 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cf840 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cf830 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cf850 calls `__glColorTableParameterv [0xd9cf650]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cf820 goes to 0xd9cf840 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cf864 has v0 = ?.

- `__glim_GetColorTableParameterivSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf974 (o32).
  It occupies 136 bytes.
  The `lw` at 0xd9cf998 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cf9a8 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cf9b8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cf9d0 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cf9c0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a2 at entry (arg2).
  The `jalr` at 0xd9cf9e0 calls `__glGetColorTableParameterv [0xd9cf86c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xd9cf9b0 goes to 0xd9cf9d0 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cf9f4 has v0 = ?.

- `__glim_GetColorTableParameterfvSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cf9fc (o32).
  It occupies 144 bytes.
  The `lw` at 0xd9cfa24 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9cfa34 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cfa48 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9cfa60 loads 4 bytes from abs 0xda83c38 via base gp (0xda8bc00).
  The `jalr` at 0xd9cfa50 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfa70 calls `__glGetColorTableParameterv [0xd9cf86c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x0.
  The `bne` branch at 0xd9cfa40 goes to 0xd9cfa60 when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The return at 0xd9cfa84 has v0 = ?.

- `__glim_CopyColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9cfa8c (o32).
  It occupies 1076 bytes.
  The `lw` at 0xd9cfac4 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9cfac8 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9cfad8, `lw` at 0xd9cfb24, `lw` at 0xd9cfb5c.
  The `lw` at 0xd9cfaf0 loads 4 bytes from abs 0xda84be0 via base gp (0xda8bc00).
  3 such `lw` accesses load 4 bytes from abs 0xda846fc via base gp (0xda8bc00), including `lw` at 0xd9cfbbc, `lw` at 0xd9cfc04, `lw` at 0xd9cfc30.
  8 such `lw` accesses load 4 bytes from unknown (base unknown) via base s0 (unknown), including `lw` at 0xd9cfbc0, `lw` at 0xd9cfbcc, `lw` at 0xd9cfc00.
  The `lw` at 0xd9cfbdc loads 4 bytes from abs 0xda84be8 via base gp (0xda8bc00).
  The `lw` at 0xd9cfc44 loads 4 bytes from [0x1010] +0x8 via base s1 ([0x1010]).
  The `sw` at 0xd9cfc6c stores 4 bytes to unknown (base unknown) via base s0 (unknown) with value ret(unknown).
  The `lw` at 0xd9cfc90 loads 4 bytes from abs 0xda84654 via base gp (0xda8bc00).
  The `lw` at 0xd9cfcb4 loads 4 bytes from abs 0xda8465c via base gp (0xda8bc00).
  The `lw` at 0xd9cfde0 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xd9cfe00 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xd9cfe18 loads 4 bytes from abs 0xda845f4 via base gp (0xda8bc00).
  The `lw` at 0xd9cfe34 loads 4 bytes from abs 0xda848cc via base gp (0xda8bc00).
  The `lw` at 0xd9cfe50 loads 4 bytes from [0x1010] +0x2e40 via base s1 ([0x1010]).
  The `lw` at 0xd9cfe64 loads 4 bytes from [0x1010] +0x3158 via base s1 ([0x1010]).
  The `lw` at 0xd9cfe80 loads 4 bytes from abs 0xda848d0 via base gp (0xda8bc00).
  The `sw` at 0xd9cfe9c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9cfea0 loads 4 bytes from [0x1010] +0x2e24 via base s1 ([0x1010]).
  The `sw` at 0xd9cfea8 stores 4 bytes to [0x1010] +0x2e24 via base s1 ([0x1010]) with value ([[0x1010]+11812] | 0x10).
  The `jalr` at 0xd9cfae0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfb0c calls `__glCheckColorTableArgs [0xd9ce260]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The `jalr` at 0xd9cfb28 calls `__glSetError [0xd9d1af8]` with a0=ret(__glCheckColorTableArgs), a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfb64 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfbc4 calls `__glElementsPerGroup [0xd9aeff0]` with a0=unknown, a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfbf4 calls `__glLoadColorTableParams [0xd9ce77c]` with a0=unknown, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=unknown.
  The `jalr` at 0xd9cfc08 calls `__glElementsPerGroup [0xd9aeff0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfc38 calls `__glElementsPerGroup [0xd9aeff0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfc60 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfca0 calls `__glInitReadImageSrcInfo [0xd9ab7b8]` with a0=[0x1010], a1=sp-508, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9cfcc0 calls `__glInitMemLoad [0xd9ab9d8]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfdec calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfe04 calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfe24 calls `__glClipReadPixels [0xd9a8950]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfe3c calls `__glGetCurrentSetDefaultPixelXferState [0xd9ba9e8]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfe58 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfe70 calls `(unknown callee)` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xd9cfe8c calls `__glRestoreCurrentPixelXferState [0xd9bad40]` with a0=[0x1010], a1=ret(__glGetCurrentSetDefaultPixelXferState), a2=unknown, a3=unknown.
  The `bne` branch at 0xd9cfad0 goes to 0xd9cfaf0 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9cfb1c goes to 0xd9cfb38 when v0(=ret(__glCheckColorTableArgs)) == 0 and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9cfb3c goes to 0xd9cfb5c when a1(=a0) == at(=0x80bd) and falls through when a1(=a0) != at(=0x80bd).
  The `beq` branch at 0xd9cfb44 goes to 0xd9cfb5c when a1(=a0) == at(=0x80d3) and falls through when a1(=a0) != at(=0x80d3).
  The `beq` branch at 0xd9cfb4c goes to 0xd9cfb5c when a1(=a0) == at(=0x80d4) and falls through when a1(=a0) != at(=0x80d4).
  The `bnel` branch at 0xd9cfb54 goes to 0xd9cfb78 when a1(=a0) != at(=0x80d5) and falls through when a1(=a0) == at(=0x80d5).
  The `beq` branch at 0xd9cfb78 goes to 0xd9cfbbc when a1(=a0) == at(=0x80bc) and falls through when a1(=a0) != at(=0x80bc).
  The `beq` branch at 0xd9cfb84 goes to 0xd9cfba4 when a1(=a0) == at(=0x80d0) and falls through when a1(=a0) != at(=0x80d0).
  The `beq` branch at 0xd9cfb8c goes to 0xd9cfbac when a1(=a0) == at(=0x80d1) and falls through when a1(=a0) != at(=0x80d1).
  The `beq` branch at 0xd9cfb94 goes to 0xd9cfbb4 when a1(=a0) == at(=0x80d2) and falls through when a1(=a0) != at(=0x80d2).
  The `beq` branch at 0xd9cfc28 goes to 0xd9cfc74 when t1(?) >= t2(?) (signed) and falls through when t1(?) < t2(?) (signed).
  The `beql` branch at 0xd9cfc74 goes to 0xd9cfeb0 when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` branch at 0xd9cfc88 goes to 0xd9cfeac when t4(?) == 0 and falls through when t4(?) != 0.
  The `bc1fl` branch at 0xd9cfce8 goes to 0xd9cfda4 when not (f0(=ret(__glInitMemLoad)) == f4 (c.eq.d at 0xd9cfce0)) and falls through when f0(=ret(__glInitMemLoad)) == f4 (c.eq.d at 0xd9cfce0).
  The `bc1fl` branch at 0xd9cfd00 goes to 0xd9cfda4 when not (f0 == f8 (c.eq.d at 0xd9cfcf8)) and falls through when f0 == f8 (c.eq.d at 0xd9cfcf8).
  The `bc1fl` branch at 0xd9cfd18 goes to 0xd9cfda4 when not (f0 == f16 (c.eq.d at 0xd9cfd10)) and falls through when f0 == f16 (c.eq.d at 0xd9cfd10).
  The `bc1fl` branch at 0xd9cfd30 goes to 0xd9cfda4 when not (f0 == f4 (c.eq.d at 0xd9cfd28)) and falls through when f0 == f4 (c.eq.d at 0xd9cfd28).
  The `bc1fl` branch at 0xd9cfd50 goes to 0xd9cfda4 when not (f0 == f8 (c.eq.d at 0xd9cfd48)) and falls through when f0 == f8 (c.eq.d at 0xd9cfd48).
  The `bc1fl` branch at 0xd9cfd68 goes to 0xd9cfda4 when not (f0 == f16 (c.eq.d at 0xd9cfd60)) and falls through when f0 == f16 (c.eq.d at 0xd9cfd60).
  The `bc1fl` branch at 0xd9cfd80 goes to 0xd9cfda4 when not (f0 == f4 (c.eq.d at 0xd9cfd78)) and falls through when f0 == f4 (c.eq.d at 0xd9cfd78).
  The `bc1t` branch at 0xd9cfd98 goes to 0xd9cfde0 when f0 == f8 (c.eq.d at 0xd9cfd90) and falls through when not (f0 == f8 (c.eq.d at 0xd9cfd90)).
  The `beq` branch at 0xd9cfe2c goes to 0xd9cfeac when v0(=ret(__glClipReadPixels)) == 0 and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The `beq` branch at 0xd9cfe48 goes to 0xd9cfe64 when v0(=ret(__glGetCurrentSetDefaultPixelXferState)) == 0 and falls through when v0(=ret(__glGetCurrentSetDefaultPixelXferState)) != 0.
  The `beq` branch at 0xd9cfe78 goes to 0xd9cfe98 when s0(=ret(__glGetCurrentSetDefaultPixelXferState)) == 0 and falls through when s0(=ret(__glGetCurrentSetDefaultPixelXferState)) != 0.
  The return at 0xd9cfeb8 has v0 = ?.

- `__glim_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2754 (o32).
  It occupies 360 bytes.
  The `lw` at 0xd9d2784 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d2788 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d27a0 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d27b8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d27bc, `lw` at 0xd9d2820.
  The `lw` at 0xd9d27d4 loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `sw` at 0xd9d281c stores 4 bytes to [0x1010] +0x308 via base s0 ([0x1010]) with value a1.
  The `sw` at 0xd9d2840 stores 4 bytes to [0x1010] +0x340 via base s0 ([0x1010]) with value a2.
  The `lw` at 0xd9d2844 loads 4 bytes from abs 0xda846fc via base gp (0xda8bc00).
  The `sw` at 0xd9d2858 stores 4 bytes to [0x1010] +0x30c via base s0 ([0x1010]) with value ret(__glElementsPerGroup).
  The `lw` at 0xd9d2878 loads 4 bytes from [0x1010] +0x3160 via base s0 ([0x1010]).
  The `sw` at 0xd9d2894 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9d2898 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9d28a4 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x10).
  The `jalr` at 0xd9d27a8 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d27c4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d27fc calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1.
  The `jalr` at 0xd9d2828 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d284c calls `__glElementsPerGroup [0xd9aeff0]` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2888 calls `(unknown callee)` with a0=[0x1010], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d2790 goes to 0xd9d27d4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2798 goes to 0xd9d27bc when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2804 goes to 0xd9d28a8 when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2818 goes to 0xd9d283c when t0(=a0) == at(=0x8010) and falls through when t0(=a0) != at(=0x8010).
  The return at 0xd9d28b4 has v0 = ?.

- `__glim_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d28bc (o32).
  It occupies 368 bytes.
  The `lw` at 0xd9d28ec loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d28f0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d2908 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d2920 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d2924, `lw` at 0xd9d2988.
  The `lw` at 0xd9d293c loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `sw` at 0xd9d2984 stores 4 bytes to [0x1010] +0x35c via base s0 ([0x1010]) with value a1.
  The `sw` at 0xd9d29a8 stores 4 bytes to [0x1010] +0x394 via base s0 ([0x1010]) with value a2.
  The `sw` at 0xd9d29b0 stores 4 bytes to [0x1010] +0x398 via base s0 ([0x1010]) with value a3.
  The `lw` at 0xd9d29b4 loads 4 bytes from abs 0xda846fc via base gp (0xda8bc00).
  The `sw` at 0xd9d29c8 stores 4 bytes to [0x1010] +0x360 via base s0 ([0x1010]) with value ret(__glElementsPerGroup).
  The `lw` at 0xd9d29e8 loads 4 bytes from [0x1010] +0x3160 via base s0 ([0x1010]).
  The `sw` at 0xd9d2a04 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9d2a08 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9d2a14 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x10).
  The `jalr` at 0xd9d2910 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d292c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2964 calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2990 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d29bc calls `__glElementsPerGroup [0xd9aeff0]` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d29f8 calls `(unknown callee)` with a0=[0x1010], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=unknown.
  The `beq` branch at 0xd9d28f8 goes to 0xd9d293c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2900 goes to 0xd9d2924 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d296c goes to 0xd9d2a18 when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2980 goes to 0xd9d29a4 when t0(=a0) == at(=0x8011) and falls through when t0(=a0) != at(=0x8011).
  The return at 0xd9d2a24 has v0 = ?.

- `__glim_SeparableFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2a2c (o32).
  It occupies 376 bytes.
  The `lw` at 0xd9d2a5c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d2a60 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d2a78 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d2a90 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d2a94, `lw` at 0xd9d2af8.
  The `lw` at 0xd9d2aac loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `sw` at 0xd9d2af4 stores 4 bytes to [0x1010] +0x3b0 via base s0 ([0x1010]) with value a1.
  The `sw` at 0xd9d2b18 stores 4 bytes to [0x1010] +0x3e8 via base s0 ([0x1010]) with value a2.
  The `sw` at 0xd9d2b20 stores 4 bytes to [0x1010] +0x3ec via base s0 ([0x1010]) with value a3.
  The `lw` at 0xd9d2b24 loads 4 bytes from abs 0xda846fc via base gp (0xda8bc00).
  The `sw` at 0xd9d2b38 stores 4 bytes to [0x1010] +0x3b4 via base s0 ([0x1010]) with value ret(__glElementsPerGroup).
  The `lw` at 0xd9d2b60 loads 4 bytes from [0x1010] +0x3164 via base s0 ([0x1010]).
  The `sw` at 0xd9d2b7c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9d2b80 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9d2b8c stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x10).
  The `jalr` at 0xd9d2a80 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2a9c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2ad4 calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2b00 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2b2c calls `__glElementsPerGroup [0xd9aeff0]` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2b70 calls `(unknown callee)` with a0=[0x1010], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=unknown.
  The `beq` branch at 0xd9d2a68 goes to 0xd9d2aac when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2a70 goes to 0xd9d2a94 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2adc goes to 0xd9d2b90 when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2af0 goes to 0xd9d2b14 when t0(=a0) == at(=0x8012) and falls through when t0(=a0) != at(=0x8012).
  The return at 0xd9d2b9c has v0 = ?.

- `__glim_CopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2ba4 (o32).
  It occupies 348 bytes.
  The `lw` at 0xd9d2bd4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d2bd8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d2bf0 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d2c08 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d2c0c, `lw` at 0xd9d2c70.
  The `lw` at 0xd9d2c24 loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `sw` at 0xd9d2c6c stores 4 bytes to [0x1010] +0x308 via base s0 ([0x1010]) with value a1.
  The `sw` at 0xd9d2c90 stores 4 bytes to [0x1010] +0x340 via base s0 ([0x1010]) with value unknown.
  The `lw` at 0xd9d2c94 loads 4 bytes from abs 0xda846fc via base gp (0xda8bc00).
  The `sw` at 0xd9d2ca8 stores 4 bytes to [0x1010] +0x30c via base s0 ([0x1010]) with value ret(__glElementsPerGroup).
  The `lw` at 0xd9d2cc0 loads 4 bytes from [0x1010] +0x3170 via base s0 ([0x1010]).
  The `sw` at 0xd9d2cd8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9d2cdc loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9d2ce8 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x10).
  The `jalr` at 0xd9d2bf8 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2c14 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2c4c calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=0x0.
  The `jalr` at 0xd9d2c78 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2c9c calls `__glElementsPerGroup [0xd9aeff0]` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2ccc calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2be0 goes to 0xd9d2c24 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2be8 goes to 0xd9d2c0c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2c54 goes to 0xd9d2cec when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2c68 goes to 0xd9d2c8c when t0(=a0) == at(=0x8010) and falls through when t0(=a0) != at(=0x8010).
  The return at 0xd9d2cf8 has v0 = ?.

- `__glim_CopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2d00 (o32).
  It occupies 364 bytes.
  The `lw` at 0xd9d2d30 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d2d34 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d2d4c loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d2d64 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d2d68, `lw` at 0xd9d2dcc.
  The `lw` at 0xd9d2d80 loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `sw` at 0xd9d2dc8 stores 4 bytes to [0x1010] +0x35c via base s0 ([0x1010]) with value a1.
  The `sw` at 0xd9d2dec stores 4 bytes to [0x1010] +0x394 via base s0 ([0x1010]) with value unknown.
  The `sw` at 0xd9d2df4 stores 4 bytes to [0x1010] +0x398 via base s0 ([0x1010]) with value unknown.
  The `lw` at 0xd9d2df8 loads 4 bytes from abs 0xda846fc via base gp (0xda8bc00).
  The `sw` at 0xd9d2e0c stores 4 bytes to [0x1010] +0x360 via base s0 ([0x1010]) with value ret(__glElementsPerGroup).
  The `lw` at 0xd9d2e28 loads 4 bytes from [0x1010] +0x3174 via base s0 ([0x1010]).
  The `sw` at 0xd9d2e44 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xd9d2e48 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xd9d2e54 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x10).
  The `jalr` at 0xd9d2d54 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2d70 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2da8 calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2dd4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2e00 calls `__glElementsPerGroup [0xd9aeff0]` with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d2e38 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2d3c goes to 0xd9d2d80 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2d44 goes to 0xd9d2d68 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2db0 goes to 0xd9d2e58 when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beql` branch at 0xd9d2dc4 goes to 0xd9d2de8 when t0(=a0) == at(=0x8011) and falls through when t0(=a0) != at(=0x8011).
  The return at 0xd9d2e64 has v0 = ?.

- `__glim_GetConvolutionFilterEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2e6c (o32).
  It occupies 252 bytes.
  The `lw` at 0xd9d2ea4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d2ea8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d2ec0 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d2ed8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xd9d2edc loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9d2ef4 loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `lw` at 0xd9d2f3c loads 4 bytes from [0x1010] +0x3168 via base s0 ([0x1010]).
  The `jalr` at 0xd9d2ec8 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2ee4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2f1c calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xd9d2f48 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2eb0 goes to 0xd9d2ef4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2eb8 goes to 0xd9d2edc when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d2f24 goes to 0xd9d2f54 when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The return at 0xd9d2f60 has v0 = ?.

- `__glim_GetSeparableFilterEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d2f68 (o32).
  It occupies 300 bytes.
  The `lw` at 0xd9d2fa0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9d2fa4 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9d2fbc loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9d2fd4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9d2fd8, `lw` at 0xd9d303c.
  The `lw` at 0xd9d2ff0 loads 4 bytes from abs 0xda84c54 via base gp (0xda8bc00).
  The `lw` at 0xd9d3068 loads 4 bytes from [0x1010] +0x316c via base s0 ([0x1010]).
  The `jalr` at 0xd9d2fc4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d2fe0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9d3018 calls `__glCheckConvolutionFilterArgs [0xd9d2340]` with a0=[0x1010], a1=a0 at entry (arg0), a2=0x0, a3=0x0.
  The `jalr` at 0xd9d3044 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9d3074 calls `(unknown callee)` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `beq` branch at 0xd9d2fac goes to 0xd9d2ff0 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9d2fb4 goes to 0xd9d2fd8 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9d3020 goes to 0xd9d3080 when v0(=ret(__glCheckConvolutionFilterArgs)) == 0 and falls through when v0(=ret(__glCheckConvolutionFilterArgs)) != 0.
  The `beq` branch at 0xd9d3034 goes to 0xd9d3054 when t1(=a0) == at(=0x8012) and falls through when t1(=a0) != at(=0x8012).
  The return at 0xd9d308c has v0 = ?.

- `__glim_ConvolutionParameteriEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d3364 (o32).
  It occupies 100 bytes.
  The `lw` at 0xd9d3388 loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d33a4 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3394 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1404.
  The `jalr` at 0xd9d33ac calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3380 goes to 0xd9d33a4 when a1 != at(=0x8013) and falls through when a1 == at(=0x8013).
  The return at 0xd9d33c0 has v0 = ?.

- `__glim_ConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d33c8 (o32).
  It occupies 112 bytes.
  The `lw` at 0xd9d33fc loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d3414 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3404 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The `jalr` at 0xd9d341c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d33e0 goes to 0xd9d33fc when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d33ec goes to 0xd9d33fc when a1 == at(=0x8014) and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d33f4 goes to 0xd9d3414 when a1 != at(=0x8015) and falls through when a1 == at(=0x8015).
  The return at 0xd9d3430 has v0 = ?.

- `__glim_ConvolutionParameterfEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d3438 (o32).
  It occupies 100 bytes.
  The `lw` at 0xd9d345c loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d3478 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3468 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=0x1406.
  The `jalr` at 0xd9d3480 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd9d3454 goes to 0xd9d3478 when a1 != at(=0x8013) and falls through when a1 == at(=0x8013).
  The return at 0xd9d3494 has v0 = ?.

- `__glim_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d349c (o32).
  It occupies 112 bytes.
  The `lw` at 0xd9d34d0 loads 4 bytes from abs 0xda84c74 via base gp (0xda8bc00).
  The `lw` at 0xd9d34e8 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `jalr` at 0xd9d34d8 calls `__GLconvolutionParameter [0xd9d3094]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The `jalr` at 0xd9d34f0 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9d34b4 goes to 0xd9d34d0 when a1 == at(=0x8013) and falls through when a1 != at(=0x8013).
  The `beq` branch at 0xd9d34c0 goes to 0xd9d34d0 when a1 == at(=0x8014) and falls through when a1 != at(=0x8014).
  The `bne` branch at 0xd9d34c8 goes to 0xd9d34e8 when a1 != at(=0x8015) and falls through when a1 == at(=0x8015).
  The return at 0xd9d3504 has v0 = ?.

- `__glim_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d3864 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9d3870 loads 4 bytes from abs 0xda84c88 via base gp (0xda8bc00).
  The `jalr` at 0xd9d3880 calls `__GLgetConvolutionParameter [0xd9d350c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9d3894 has v0 = ret(__GLgetConvolutionParameter).

- `__glim_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9d389c (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9d38a8 loads 4 bytes from abs 0xda84c88 via base gp (0xda8bc00).
  The `jalr` at 0xd9d38b8 calls `__GLgetConvolutionParameter [0xd9d350c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9d38cc has v0 = ret(__GLgetConvolutionParameter).

- `__glim_NurbsKnots1dSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da26c (o32).
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

- `__glim_NurbsKnots1fSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da33c (o32).
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

- `__glim_NurbsKnots1iSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da420 (o32).
  It occupies 396 bytes.
  The `lw` at 0xd9da42c loads 4 bytes from abs 0xda83c3c via base gp (0xda8bc00).
  The `lw` at 0xd9da48c loads 4 bytes from a3 (arg3 at entry) +0x0 via base t0 (a3).
  9 such `lw` accesses load 4 bytes from unknown (base unknown) via base t0 (unknown), including `lw` at 0xd9da4ac, `lw` at 0xd9da4d4, `lw` at 0xd9da4f0.
  The `jalr` at 0xd9da44c calls `NurbsKnots1Common [0xd9d9fc8]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9da464 goes to 0xd9da59c when v0(=ret(NurbsKnots1Common)) == 0 and falls through when v0(=ret(NurbsKnots1Common)) != 0.
  The `blez` branch at 0xd9da46c goes to 0xd9da59c when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `beq` branch at 0xd9da478 goes to 0xd9da4c8 when (a2 & 0x3) == 0 and falls through when (a2 & 0x3) != 0.
  The `beq` branch at 0xd9da488 goes to 0xd9da4b0 when a1(?) == a0(=0x1) and falls through when a1(?) != a0(=0x1).
  The `bne` branch at 0xd9da4a8 goes to 0xd9da490 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da4c4 goes to 0xd9da59c when a0(?) == a2 and falls through when a0(?) != a2.
  The `beq` branch at 0xd9da4d0 goes to 0xd9da540 when a0(?) == a2 and falls through when a0(?) != a2.
  The `bne` branch at 0xd9da538 goes to 0xd9da4d8 when a0(?) != a2 and falls through when a0(?) == a2.
  The return at 0xd9da5a4 has v0 = ?.

- `__glim_NurbsKnots2dSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da5ac (o32).
  It occupies 416 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xda83c3c via base gp (0xda8bc00), including `lw` at 0xd9da5bc, `lw` at 0xd9da688.
  The `jalr` at 0xd9da5f4 calls `NurbsKnots2Common [0xd9da108]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd9da6a0 calls `NurbsKnots2Common [0xd9da108]` with a0=a0 at entry (arg0), a1=unknown, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0xd9da60c goes to 0xd9da738 when v0(=ret(NurbsKnots2Common)) == 0 and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da614 goes to 0xd9da688 when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9da620 goes to 0xd9da648 when (s0(=a2) & 0x3) == 0 and falls through when (s0(=a2) & 0x3) != 0.
  The `bne` branch at 0xd9da63c goes to 0xd9da62c when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da644 goes to 0xd9da688 when a0(?) == s0(=a2) and falls through when a0(?) != s0(=a2).
  The `bne` branch at 0xd9da680 goes to 0xd9da64c when a0(?) != s0(=a2) and falls through when a0(?) == s0(=a2).
  The `beq` branch at 0xd9da6b0 goes to 0xd9da738 when v0(=ret(NurbsKnots2Common)) == 0 and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da6b8 goes to 0xd9da738 when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd9da6c4 goes to 0xd9da6f4 when (s0(?) & 0x3) == 0 and falls through when (s0(?) & 0x3) != 0.
  The `bne` branch at 0xd9da6e4 goes to 0xd9da6d4 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beql` branch at 0xd9da6ec goes to 0xd9da73c when a0(?) == s0(?) and falls through when a0(?) != s0(?).
  The `bne` branch at 0xd9da730 goes to 0xd9da6fc when a0(?) != s0(?) and falls through when a0(?) == s0(?).
  The return at 0xd9da744 has v0 = ?.

- `__glim_NurbsKnots2fSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da74c (o32).
  It occupies 456 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xda83c3c via base gp (0xda8bc00), including `lw` at 0xd9da75c, `lw` at 0xd9da83c.
  The `jalr` at 0xd9da794 calls `NurbsKnots2Common [0xd9da108]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd9da854 calls `NurbsKnots2Common [0xd9da108]` with a0=a0 at entry (arg0), a1=unknown, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0xd9da7ac goes to 0xd9da900 when v0(=ret(NurbsKnots2Common)) == 0 and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da7b4 goes to 0xd9da83c when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9da7c0 goes to 0xd9da7ec when (s0(=a2) & 0x3) == 0 and falls through when (s0(=a2) & 0x3) != 0.
  The `bne` branch at 0xd9da7e0 goes to 0xd9da7cc when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da7e8 goes to 0xd9da83c when a0(?) == s0(=a2) and falls through when a0(?) != s0(=a2).
  The `bne` branch at 0xd9da834 goes to 0xd9da7f0 when a0(?) != s0(=a2) and falls through when a0(?) == s0(=a2).
  The `beq` branch at 0xd9da864 goes to 0xd9da900 when v0(=ret(NurbsKnots2Common)) == 0 and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da86c goes to 0xd9da900 when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd9da878 goes to 0xd9da8ac when (s0(?) & 0x3) == 0 and falls through when (s0(?) & 0x3) != 0.
  The `bne` branch at 0xd9da89c goes to 0xd9da888 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beql` branch at 0xd9da8a4 goes to 0xd9da904 when a0(?) == s0(?) and falls through when a0(?) != s0(?).
  The `bne` branch at 0xd9da8f8 goes to 0xd9da8b4 when a0(?) != s0(?) and falls through when a0(?) == s0(?).
  The return at 0xd9da90c has v0 = ?.

- `__glim_NurbsKnots2iSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9da914 (o32).
  It occupies 792 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xda83c3c via base gp (0xda8bc00), including `lw` at 0xd9da924, `lw` at 0xd9daaac.
  10 such `lw` accesses load 4 bytes from unknown (base unknown) via base t0 (unknown), including `lw` at 0xd9da99c, `lw` at 0xd9da9bc, `lw` at 0xd9da9e4.
  10 such `lw` accesses load 4 bytes from unknown (base unknown) via base t1 (unknown), including `lw` at 0xd9dab00, `lw` at 0xd9dab20, `lw` at 0xd9dab50.
  The `jalr` at 0xd9da95c calls `NurbsKnots2Common [0xd9da108]` with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=a3 at entry (arg3).
  The `jalr` at 0xd9daac4 calls `NurbsKnots2Common [0xd9da108]` with a0=a0 at entry (arg0), a1=unknown, a2=0x1, a3=a1 at entry (arg1).
  The `beq` branch at 0xd9da974 goes to 0xd9dac18 when v0(=ret(NurbsKnots2Common)) == 0 and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9da97c goes to 0xd9daaac when s0(=a2) <= 0 (signed) and falls through when s0(=a2) > 0 (signed).
  The `beq` branch at 0xd9da988 goes to 0xd9da9d8 when (s0(=a2) & 0x3) == 0 and falls through when (s0(=a2) & 0x3) != 0.
  The `beq` branch at 0xd9da998 goes to 0xd9da9c0 when a1(?) == a0(=0x1) and falls through when a1(?) != a0(=0x1).
  The `bne` branch at 0xd9da9b8 goes to 0xd9da9a0 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` branch at 0xd9da9d4 goes to 0xd9daaac when a0(?) == s0(=a2) and falls through when a0(?) != s0(=a2).
  The `beq` branch at 0xd9da9e0 goes to 0xd9daa50 when a0(?) == s0(=a2) and falls through when a0(?) != s0(=a2).
  The `bne` branch at 0xd9daa48 goes to 0xd9da9e8 when a0(?) != s0(=a2) and falls through when a0(?) == s0(=a2).
  The `beq` branch at 0xd9daad4 goes to 0xd9dac18 when v0(=ret(NurbsKnots2Common)) == 0 and falls through when v0(=ret(NurbsKnots2Common)) != 0.
  The `blez` branch at 0xd9daadc goes to 0xd9dac18 when s0(?) <= 0 (signed) and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xd9daae8 goes to 0xd9dab40 when (s0(?) & 0x3) == 0 and falls through when (s0(?) & 0x3) != 0.
  The `beq` branch at 0xd9daafc goes to 0xd9dab24 when a1(?) == a0(=0x1) and falls through when a1(?) != a0(=0x1).
  The `bne` branch at 0xd9dab1c goes to 0xd9dab04 when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beql` branch at 0xd9dab38 goes to 0xd9dac1c when a0(?) == s0(?) and falls through when a0(?) != s0(?).
  The `beq` branch at 0xd9dab4c goes to 0xd9dabbc when a0(?) == s0(?) and falls through when a0(?) != s0(?).
  The `bne` branch at 0xd9dabb4 goes to 0xd9dab54 when a0(?) != s0(?) and falls through when a0(?) == s0(?).
  The return at 0xd9dac24 has v0 = ?.

- `__glim_GetTexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9dd724 (o32).
  It occupies 284 bytes.
  The `lw` at 0xd9dd744 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  The `lw` at 0xd9dd754 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9dd760, `lw` at 0xd9dd78c, `lw` at 0xd9dd7d8.
  The `lw` at 0xd9dd7a4 loads 4 bytes from abs 0xda853e0 via base gp (0xda8bc00).
  The `jalr` at 0xd9dd768 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd9dd794 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd9dd7b0 calls `__glLookUpTextureParams [0xda178a0]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xd9dd7e0 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=a2 at entry (arg2), a3=unknown.
  The `bnel` branch at 0xd9dd758 goes to 0xd9dd77c when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9dd77c goes to 0xd9dd7a4 when a3(=a0) == at(=0xde0) and falls through when a3(=a0) != at(=0xde0).
  The `beq` branch at 0xd9dd784 goes to 0xd9dd7a4 when a3(=a0) == at(=0xde1) and falls through when a3(=a0) != at(=0xde1).
  The `beq` branch at 0xd9dd7bc goes to 0xd9dd7d8 when v0(=ret(__glLookUpTextureParams)) == 0 and falls through when v0(=ret(__glLookUpTextureParams)) != 0.
  The `beq` branch at 0xd9dd7d0 goes to 0xd9dd7f0 when t8(=a1) == at(=0x8146) and falls through when t8(=a1) != at(=0x8146).
  The `bne` branch at 0xd9dd828 goes to 0xd9dd800 when a0(?) != a1(=0x21) and falls through when a0(?) == a1(=0x21).
  The return at 0xd9dd838 has v0 = ?.

- `__glim_ResetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e294c (o32).
  It occupies 196 bytes.
  The `lw` at 0xd9e2968 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9e2970 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e297c, `lw` at 0xd9e29a0.
  The `lw` at 0xd9e29b8 loads 4 bytes from abs 0xda846fc via base gp (0xda8bc00).
  The `lw` at 0xd9e29bc loads 4 bytes from [0x1010] +0x4fc via base a3 ([0x1010]).
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xd9e29dc, `lw` at 0xd9e29e4.
  The `lw` at 0xd9e29e0 loads 4 bytes from abs 0xda873e8 via base gp (0xda8bc00).
  The `jalr` at 0xd9e2984 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9e29a8 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9e29c4 calls `__glElementsPerGroup [0xd9aeff0]` with a0=[[0x1010]+1276], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010].
  The `jalr` at 0xd9e29f4 calls `memset` with a0=unknown, a1=0x0, a2=unknown, a3=unknown.
  The `bnel` branch at 0xd9e2974 goes to 0xd9e2998 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9e2998 goes to 0xd9e29b8 when a0 == at(=0x8024) and falls through when a0 != at(=0x8024).
  The return at 0xd9e2a08 has v0 = ?.

- `__glim_HistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e2a10 (o32).
  It occupies 476 bytes.
  The `lw` at 0xd9e2a40 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9e2a48 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e2a54, `lw` at 0xd9e2a84, `lw` at 0xd9e2af8.
  The `lw` at 0xd9e2a9c loads 4 bytes from abs 0xda84e38 via base gp (0xda8bc00).
  The `sw` at 0xd9e2ad4 stores 4 bytes to [0x1010] +0x50c via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2ad8 stores 4 bytes to [0x1010] +0x510 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2adc stores 4 bytes to [0x1010] +0x514 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2ae0 stores 4 bytes to [0x1010] +0x518 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2ae4 stores 4 bytes to [0x1010] +0x51c via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2ae8 stores 4 bytes to [0x1010] +0x520 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2aec stores 4 bytes to [0x1010] +0x524 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2af4 stores 4 bytes to [0x1010] +0x528 via base s0 ([0x1010]) with value 0x0.
  The `sw` at 0xd9e2b24 stores 4 bytes to [0x1010] +0x504 via base s0 ([0x1010]) with value a1-1.
  The `sw` at 0xd9e2b28 stores 4 bytes to [0x1010] +0x4fc via base s0 ([0x1010]) with value unknown.
  The `lw` at 0xd9e2b34 loads 4 bytes from [0x1010] +0x4dc via base s0 ([0x1010]).
  The `lw` at 0xd9e2b44 loads 4 bytes from [0x1010] +0x8 via base s0 ([0x1010]).
  The `sw` at 0xd9e2b68 stores 4 bytes to unknown (base unknown) via base a3 (unknown) with value ret(unknown).
  The `lw` at 0xd9e2b74 loads 4 bytes from abs 0xda873e8 via base gp (0xda8bc00).
  The `sw` at 0xd9e2b9c stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value a1.
  The `sw` at 0xd9e2ba4 stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value a2.
  The `sb` at 0xd9e2bac stores 1 byte to unknown (base unknown) via base v1 (unknown) with value unknown.
  5 such `sw` accesses store 4 bytes to unknown (base unknown) via base v1 (unknown) with value unknown, including `sw` at 0xd9e2bb4, `sw` at 0xd9e2bbc, `sw` at 0xd9e2bc4.
  The `jalr` at 0xd9e2a5c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e2a8c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e2aa8 calls `__glProcessHistogramArguments [0xd9e25b0]` with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=sp-24, a3=sp-32.
  The `jalr` at 0xd9e2afc calls `__glSetError [0xd9d1af8]` with a0=ret(__glProcessHistogramArguments), a1=0x8025, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e2b54 calls `(unknown callee)` with a0=[0x1010], a1=[[0x1010]+1244], a2=unknown, a3=[0x1010]+1244.
  The `jalr` at 0xd9e2b88 calls `memset` with a0=ret(unknown), a1=0x0, a2=unknown, a3=unknown.
  The `bne` branch at 0xd9e2a4c goes to 0xd9e2a6c when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9e2a70 goes to 0xd9e2a9c when t7(=a0) == at(=0x8024) and falls through when t7(=a0) != at(=0x8024).
  The `beq` branch at 0xd9e2a7c goes to 0xd9e2a9c when t7(=a0) == at(=0x8025) and falls through when t7(=a0) != at(=0x8025).
  The `beq` branch at 0xd9e2abc goes to 0xd9e2b0c when v0(=ret(__glProcessHistogramArguments)) == 0 and falls through when v0(=ret(__glProcessHistogramArguments)) != 0.
  The `bne` branch at 0xd9e2ac4 goes to 0xd9e2af8 when v1(=a0) != a1(=0x8025) and falls through when v1(=a0) == a1(=0x8025).
  The `bne` branch at 0xd9e2acc goes to 0xd9e2af8 when v0(=ret(__glProcessHistogramArguments)) != at(=0x8031) and falls through when v0(=ret(__glProcessHistogramArguments)) == at(=0x8031).
  The `bne` branch at 0xd9e2b0c goes to 0xd9e2b1c when v1(=a0) != a1(=0x8025) and falls through when v1(=a0) == a1(=0x8025).
  The return at 0xd9e2be4 has v0 = ?.

- `__glim_GetHistogramEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e31a0 (o32).
  It occupies 936 bytes.
  The `lw` at 0xd9e31cc loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9e31d8 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9e31ec loads 4 bytes from [0x1010] +0x2e40 via base t6 ([0x1010]).
  The `sw` at 0xd9e3204 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  6 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e3208, `lw` at 0xd9e3234, `lw` at 0xd9e32c4.
  4 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9e32a8, `lw` at 0xd9e3308, `lw` at 0xd9e3344.
  The `lw` at 0xd9e32b4 loads 4 bytes from table(0xda7a548) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9e3314 loads 4 bytes from table(0xda7a568) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9e3350 loads 4 bytes from table(0xda7a584) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9e3380 loads 4 bytes from table(0xda7a598) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9e3414 loads 4 bytes from unknown (base unknown) via base t2 (unknown).
  7 such `lw` accesses load 4 bytes from unknown (base unknown) via base v0 (unknown), including `lw` at 0xd9e3428, `lw` at 0xd9e342c, `lw` at 0xd9e3438.
  The `lw` at 0xd9e3430 loads 4 bytes from abs 0xda84660 via base gp (0xda8bc00).
  The `lw` at 0xd9e345c loads 4 bytes from abs 0xda84668 via base gp (0xda8bc00).
  The `lw` at 0xd9e3490 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xd9e34b0 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xd9e34c8 loads 4 bytes from abs 0xda84650 via base gp (0xda8bc00).
  The `lw` at 0xd9e3508 loads 4 bytes from abs 0xda84e50 via base gp (0xda8bc00).
  The `jalr` at 0xd9e31f4 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3210 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e323c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e32cc calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e33a8 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e33e0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e33f8 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e3440 calls `__glInitMemGet [0xd9abb34]` with a0=unknown, a1=sp-500, a2=unknown, a3=0x1.
  The `jalr` at 0xd9e347c calls `__glInitMemPack [0xd9abcf0]` with a0=unknown, a1=sp-500, a2=unknown, a3=0x1.
  The `jalr` at 0xd9e349c calls `__glInitUnpacker [0xd9af410]` with a0=unknown, a1=sp-500, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e34b4 calls `__glInitPacker [0xd99e2a0]` with a0=unknown, a1=sp-500, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e34ec calls `__glGenericPickCopyImage [0xd9ab694]` with a0=unknown, a1=sp-500, a2=0x0, a3=unknown.
  The `jalr` at 0xd9e352c calls `__glResetArray [0xd9e2e88]` with a0=unknown, a1=a2 at entry (arg2), a2=unknown, a3=0x0.
  The `beql` branch at 0xd9e31dc goes to 0xd9e3224 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9e31e4 goes to 0xd9e3208 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beql` branch at 0xd9e322c goes to 0xd9e3250 when t8(=a0) == at(=0x8024) and falls through when t8(=a0) != at(=0x8024).
  The `bne` branch at 0xd9e3254 goes to 0xd9e3278 when t0(=a2) < at(=0x8001) (unsigned) and falls through when t0(=a2) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9e3260 goes to 0xd9e32dc when t0(=a2) == at(=0x80e0) and falls through when t0(=a2) != at(=0x80e0).
  The `beql` branch at 0xd9e3268 goes to 0xd9e32e0 when t0(=a2) == at(=0x80e1) and falls through when t0(=a2) != at(=0x80e1).
  The `bne` branch at 0xd9e327c goes to 0xd9e3298 when t1(=a2) < 0x190b (unsigned) and falls through when t1(=a2) >= 0x190b (unsigned).
  The `beql` branch at 0xd9e3288 goes to 0xd9e32e0 when t1(=a2) == at(=0x8000) and falls through when t1(=a2) != at(=0x8000).
  The `beq` branch at 0xd9e32a0 goes to 0xd9e32c4 when t3(=a2-6403) >= 0x8 (unsigned) and falls through when t3(=a2-6403) < 0x8 (unsigned).
  The `bne` branch at 0xd9e32ec goes to 0xd9e3324 when t4(=a3) < at(=0x8037) (unsigned) and falls through when t4(=a3) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9e3300 goes to 0xd9e33f0 when t5(=a3-33634) >= 0x7 (unsigned) and falls through when t5(=a3-33634) < 0x7 (unsigned).
  The `bne` branch at 0xd9e3328 goes to 0xd9e3360 when t6(=a3) < 0x1407 (unsigned) and falls through when t6(=a3) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9e333c goes to 0xd9e33f0 when t7(=a3-32818) >= 0x5 (unsigned) and falls through when t7(=a3-32818) < 0x5 (unsigned).
  The `beq` branch at 0xd9e336c goes to 0xd9e33f0 when t8(=a3-5120) >= 0x7 (unsigned) and falls through when t8(=a3-5120) < 0x7 (unsigned).
  The `beql` branch at 0xd9e3398 goes to 0xd9e340c when t0(=a2) == at(=0x1907) and falls through when t0(=a2) != at(=0x1907).
  The `beq` branch at 0xd9e33c0 goes to 0xd9e3408 when t1(=a2) == at(=0x1908) and falls through when t1(=a2) != at(=0x1908).
  The `beq` branch at 0xd9e33c8 goes to 0xd9e3408 when t1(=a2) == at(=0x8000) and falls through when t1(=a2) != at(=0x8000).
  The `beql` branch at 0xd9e33d0 goes to 0xd9e340c when t1(=a2) == at(=0x80e1) and falls through when t1(=a2) != at(=0x80e1).
  The `beql` branch at 0xd9e3420 goes to 0xd9e353c when t3(?) == 0 and falls through when t3(?) != 0.
  The `beq` branch at 0xd9e3500 goes to 0xd9e3538 when t4(?) == 0 and falls through when t4(?) != 0.
  The return at 0xd9e3540 has v0 = ?.

- `__glim_GetHistogramParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e36bc (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e36c8 loads 4 bytes from abs 0xda84e58 via base gp (0xda8bc00).
  The `jalr` at 0xd9e36d8 calls `__glGetHistogramParameters [0xd9e3548]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e36ec has v0 = ret(__glGetHistogramParameters).

- `__glim_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e36f4 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e3700 loads 4 bytes from abs 0xda84e58 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3710 calls `__glGetHistogramParameters [0xd9e3548]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3724 has v0 = ret(__glGetHistogramParameters).

- `__glim_MinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3980 (o32).
  It occupies 244 bytes.
  The `lw` at 0xd9e39a8 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xd9e39b0 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e39bc, `lw` at 0xd9e39e0, `lw` at 0xd9e3a18.
  The `lw` at 0xd9e39f8 loads 4 bytes from abs 0xda84e38 via base gp (0xda8bc00).
  The `sw` at 0xd9e3a38 stores 4 bytes to [0x1010] +0x558 via base s0 ([0x1010]) with value a1.
  The `sw` at 0xd9e3a40 stores 4 bytes to [0x1010] +0x55c via base s0 ([0x1010]) with value unknown.
  The `sb` at 0xd9e3a48 stores 1 byte to [0x1010] +0x554 via base s0 ([0x1010]) with value 0x1.
  The `sb` at 0xd9e3a4c stores 1 byte to [0x1010] +0x560 via base s0 ([0x1010]) with value unknown.
  The `lw` at 0xd9e3a50 loads 4 bytes from abs 0xda84e64 via base gp (0xda8bc00).
  The `jalr` at 0xd9e39c4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e39e8 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3a04 calls `__glProcessHistogramArguments [0xd9e25b0]` with a0=0x2, a1=a1 at entry (arg1), a2=sp-28, a3=sp-36.
  The `jalr` at 0xd9e3a1c calls `__glSetError [0xd9d1af8]` with a0=ret(__glProcessHistogramArguments), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e3a54 calls `__glResetMinmax [0xd9e3820]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `bnel` branch at 0xd9e39b4 goes to 0xd9e39d8 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9e39d8 goes to 0xd9e39f8 when a0 == at(=0x802e) and falls through when a0 != at(=0x802e).
  The `beq` branch at 0xd9e3a10 goes to 0xd9e3a2c when v0(=ret(__glProcessHistogramArguments)) == 0 and falls through when v0(=ret(__glProcessHistogramArguments)) != 0.
  The return at 0xd9e3a6c has v0 = ?.

- `__glim_ResetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3a74 (o32).
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

- `__glim_GetMinmaxEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3b04 (o32).
  It occupies 544 bytes.
  The `lw` at 0xd9e3b34 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9e3b3c loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9e3b50 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xd9e3b68 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9e3b6c, `lw` at 0xd9e3b90.
  The `lw` at 0xd9e3ba8 loads 4 bytes from abs 0xda84e48 via base gp (0xda8bc00).
  The `lbu` at 0xd9e3bc4 loads 1 byte from [0x1010] +0x554 via base s0 ([0x1010]).
  The `lw` at 0xd9e3bd8 loads 4 bytes from abs 0xda84660 via base gp (0xda8bc00).
  3 such `lw` accesses load 4 bytes from [0x1010] +0x55c via base s1 ([0x1010]+1332), including `lw` at 0xd9e3be0, `lw` at 0xd9e3cac, `lw` at 0xd9e3cd8.
  The `lw` at 0xd9e3c00 loads 4 bytes from abs 0xda84668 via base gp (0xda8bc00).
  The `lw` at 0xd9e3c38 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xd9e3c58 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xd9e3c70 loads 4 bytes from abs 0xda84650 via base gp (0xda8bc00).
  2 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9e3ca8, `lw` at 0xd9e3ce0.
  2 such `lw` accesses load 4 bytes from abs 0xda84e50 via base gp (0xda8bc00), including `lw` at 0xd9e3cb8, `lw` at 0xd9e3ce4.
  The `jalr` at 0xd9e3b58 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3b74 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9e3b98 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e3bb4 calls `__glCheckGetArguments [0xd9e2bec]` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `jalr` at 0xd9e3bec calls `__glInitMemGet [0xd9abb34]` with a0=[0x1010], a1=sp-504, a2=0x2, a3=0x1.
  The `jalr` at 0xd9e3c24 calls `__glInitMemPack [0xd9abcf0]` with a0=[0x1010], a1=sp-504, a2=0x2, a3=0x1.
  The `jalr` at 0xd9e3c44 calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e3c5c calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xd9e3c8c calls `__glGenericPickCopyImage [0xd9ab694]` with a0=[0x1010], a1=sp-504, a2=0x0, a3=unknown.
  The `jalr` at 0xd9e3ccc calls `__glResetArray [0xd9e2e88]` with a0=[[0x1010]+1372], a1=a2 at entry (arg2), a2=[0x1010]+1332, a3=0x0.
  The `jalr` at 0xd9e3d04 calls `__glResetArray [0xd9e2e88]` with a0=[[0x1010]+1372], a1=a2 at entry (arg2), a2=[0x1010]+1332, a3=0x1.
  The `beq` branch at 0xd9e3b40 goes to 0xd9e3b84 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9e3b48 goes to 0xd9e3b6c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9e3b88 goes to 0xd9e3ba8 when s1(=a0) == at(=0x802e) and falls through when s1(=a0) != at(=0x802e).
  The `bne` branch at 0xd9e3bbc goes to 0xd9e3d10 when v0(=ret(__glCheckGetArguments)) != 0 and falls through when v0(=ret(__glCheckGetArguments)) == 0.
  The `beq` branch at 0xd9e3bd0 goes to 0xd9e3d10 when t6(=[[0x1010]+1364]:1) == 0 and falls through when t6(=[[0x1010]+1364]:1) != 0.
  The `beq` branch at 0xd9e3ca0 goes to 0xd9e3d10 when t5(?) == 0 and falls through when t5(?) != 0.
  The return at 0xd9e3d1c has v0 = ?.

- `__glim_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3e18 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e3e24 loads 4 bytes from abs 0xda84e74 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3e34 calls `__glGetMinmaxParameters [0xd9e3d24]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1404.
  The return at 0xd9e3e48 has v0 = ret(__glGetMinmaxParameters).

- `__glim_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9e3e50 (o32).
  It occupies 56 bytes.
  The `lw` at 0xd9e3e5c loads 4 bytes from abs 0xda84e74 via base gp (0xda8bc00).
  The `jalr` at 0xd9e3e6c calls `__glGetMinmaxParameters [0xd9e3d24]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1406.
  The return at 0xd9e3e80 has v0 = ret(__glGetMinmaxParameters).

- `__gllc_DeformationMap3fSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ed6ec (o32).
  It occupies 472 bytes.
  The `lw` at 0xd9ed70c loads 4 bytes from abs 0xda84ca8 via base gp (0xda8bc00).
  The `lw` at 0xd9ed748 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9ed788 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  The `lw` at 0xd9ed7a0 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xd9ed7cc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9ed804 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xf8.
  The `sw` at 0xd9ed810 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9ed828 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ed840 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ed858 stores 4 bytes to ret(__glDlistAllocOp2) +0x34 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xd9ed85c loads 4 bytes from abs 0xda84ca0 via base gp (0xda8bc00).
  The `lw` at 0xd9ed89c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9ed8a0 loads 4 bytes from abs 0xda84fa8 via base gp (0xda8bc00).
  The `jalr` at 0xd9ed768 calls `__glCheckMap3Params [0xd9d3d7c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ed790 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ed7a8 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ed7ec calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ed888 calls `__glFillDeformationMap3f [0xd9d3aa0]` with a0=unknown, a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `jalr` at 0xd9ed8a4 calls `__glDlistAppendOp [0xd992ec8]` with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ed8c4, a3=unknown.
  The `beq` branch at 0xd9ed774 goes to 0xd9ed7a0 when v0(=ret(__glCheckMap3Params)) == at(=0x500) and falls through when v0(=ret(__glCheckMap3Params)) != at(=0x500).
  The `bne` branch at 0xd9ed780 goes to 0xd9ed7b8 when v0(=ret(__glCheckMap3Params)) != at(=0x501) and falls through when v0(=ret(__glCheckMap3Params)) == at(=0x501).
  The `beq` branch at 0xd9ed7f8 goes to 0xd9ed8b0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd9ed8bc has v0 = ?.

- `__gllc_DeformationMap3dSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ed9bc (o32).
  It occupies 536 bytes.
  The `lw` at 0xd9eda04 loads 4 bytes from abs 0xda84ca8 via base gp (0xda8bc00).
  The `lw` at 0xd9eda40 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9eda98 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  The `lw` at 0xd9edab0 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xd9edadc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9edb14 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xf7.
  The `sw` at 0xd9edb20 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9edb38 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9edb50 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9edb68 stores 4 bytes to ret(__glDlistAllocOp2) +0x34 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xd9edb6c loads 4 bytes from abs 0xda84ca4 via base gp (0xda8bc00).
  The `lw` at 0xd9edbac loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9edbb0 loads 4 bytes from abs 0xda84fa8 via base gp (0xda8bc00).
  The `jalr` at 0xd9eda78 calls `__glCheckMap3Params [0xd9d3d7c]` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9edaa0 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9edab8 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9edafc calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9edb98 calls `__glFillDeformationMap3d [0xd9d3bf0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9edbb4 calls `__glDlistAppendOp [0xd992ec8]` with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9ed8c4, a3=unknown.
  The `beq` branch at 0xd9eda84 goes to 0xd9edab0 when v0(=ret(__glCheckMap3Params)) == at(=0x500) and falls through when v0(=ret(__glCheckMap3Params)) != at(=0x500).
  The `bne` branch at 0xd9eda90 goes to 0xd9edac8 when v0(=ret(__glCheckMap3Params)) != at(=0x501) and falls through when v0(=ret(__glCheckMap3Params)) == at(=0x501).
  The `beq` branch at 0xd9edb08 goes to 0xd9edbc0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd9edbcc has v0 = ?.

- `__gllc_TexImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ee940 (o32).
  It occupies 896 bytes.
  The `lw` at 0xd9ee950 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9ee9a8 loads 4 bytes from [0x1010] +0x17f4 via base t6 ([0x1010]).
  The `lw` at 0xd9ee9ac loads 4 bytes from [[0x1010]+6132] +0x310 via base t3 ([[0x1010]+6132]).
  2 such `lw` accesses load 4 bytes from abs 0xda84380 via base gp (0xda8bc00), including `lw` at 0xd9ee9d4, `lw` at 0xd9eea04.
  4 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9eea70, `lw` at 0xd9eeacc, `lw` at 0xd9eeb0c.
  The `lw` at 0xd9eea7c loads 4 bytes from table(0xda7a848) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9eea8c, `lw` at 0xd9eeba8.
  The `lw` at 0xd9eead8 loads 4 bytes from table(0xda7a874) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9eeb18 loads 4 bytes from table(0xda7a890) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9eeb40 loads 4 bytes from table(0xda7a8a4) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9eeb5c, `lw` at 0xd9eeb90.
  The `lw` at 0xd9eebc0 loads 4 bytes from abs 0xda84e88 via base gp (0xda8bc00).
  The `lw` at 0xd9eebe0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9eec1c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xd0.
  The `sw` at 0xd9eec24 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9eec2c stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd9eec34 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9eec38 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9eec40 stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eec44 stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eec4c stores 4 bytes to ret(__glDlistAllocOp2) +0x30 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eec50 stores 4 bytes to ret(__glDlistAllocOp2) +0x34 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eec54 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eec5c stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xd9eec78 loads 4 bytes from abs 0xda84e8c via base gp (0xda8bc00).
  The `lw` at 0xd9eec98 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9eeca8 loads 4 bytes from abs 0xda84fc4 via base gp (0xda8bc00).
  The `jalr` at 0xd9ee9b0 calls `(unknown callee)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ee9dc calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9eea0c calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eea94 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eeb64 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eeb98 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eebb0 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eebcc calls `__glImageSize3D [0xd9e401c]` with a0=a3 at entry (arg3), a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eebf0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eec8c calls `__glFillImage3D [0xd9e406c]` with a0=unknown, a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `jalr` at 0xd9eeca4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9ee8a4, a3=unknown.
  The `bne` branch at 0xd9ee970 goes to 0xd9ee9c0 when a0 != at(=0x8070) and falls through when a0 == at(=0x8070).
  The `bltz` branch at 0xd9ee9c4 goes to 0xd9ee9d4 when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0xd9ee9cc goes to 0xd9ee9ec when at(?) != 0 and falls through when at(?) == 0.
  The `bltz` branch at 0xd9ee9ec goes to 0xd9eea04 when t4(=a3) < 0 (signed) and falls through when t4(=a3) >= 0 (signed).
  The `bltz` branch at 0xd9ee9f4 goes to 0xd9eea04 when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  The `bgez` branch at 0xd9ee9fc goes to 0xd9eea1c when a2(?) >= 0 (signed) and falls through when a2(?) < 0 (signed).
  The `bne` branch at 0xd9eea24 goes to 0xd9eea44 when a3(?) < at(=0x8001) (unsigned) and falls through when a3(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9eea2c goes to 0xd9eeaa4 when a3(?) == at(=0x80e0) and falls through when a3(?) != at(=0x80e0).
  The `beql` branch at 0xd9eea34 goes to 0xd9eeaa8 when a3(?) == at(=0x80e1) and falls through when a3(?) != at(=0x80e1).
  The `bne` branch at 0xd9eea48 goes to 0xd9eea64 when a3(?) < 0x190b (unsigned) and falls through when a3(?) >= 0x190b (unsigned).
  The `beql` branch at 0xd9eea54 goes to 0xd9eeaa8 when a3(?) == at(=0x8000) and falls through when a3(?) != at(=0x8000).
  The `beq` branch at 0xd9eea68 goes to 0xd9eea8c when t5(?) >= 0xb (unsigned) and falls through when t5(?) < 0xb (unsigned).
  The `bne` branch at 0xd9eeab0 goes to 0xd9eeae8 when t0(?) < at(=0x8037) (unsigned) and falls through when t0(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9eeac4 goes to 0xd9eeba8 when t7(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t7(=table(-0x8362)) < 0x7 (unsigned).
  The `bne` branch at 0xd9eeaec goes to 0xd9eeb28 when t0(?) < 0x1407 (unsigned) and falls through when t0(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9eeb04 goes to 0xd9eeba8 when t8(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t8(=table(-0x8032)) < 0x5 (unsigned).
  The `beq` branch at 0xd9eeb2c goes to 0xd9eeba8 when t1(?) >= 0x7 (unsigned) and falls through when t1(?) < 0x7 (unsigned).
  The `beq` branch at 0xd9eeb54 goes to 0xd9eebc0 when a3(?) == at(=0x1907) and falls through when a3(?) != at(=0x1907).
  The `beq` branch at 0xd9eeb78 goes to 0xd9eebc0 when a3(?) == at(=0x1908) and falls through when a3(?) != at(=0x1908).
  The `beq` branch at 0xd9eeb80 goes to 0xd9eebc0 when a3(?) == at(=0x8000) and falls through when a3(?) != at(=0x8000).
  The `beq` branch at 0xd9eeb88 goes to 0xd9eebc0 when a3(?) == at(=0x80e1) and falls through when a3(?) != at(=0x80e1).
  The `beq` branch at 0xd9eec04 goes to 0xd9eecb0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9eec58 goes to 0xd9eec98 when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xd9eec6c goes to 0xd9eec98 when v0(?) == 0 and falls through when v0(?) != 0.
  The return at 0xd9eecb8 has v0 = ?.

- `__gllc_TexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9eed48 (o32).
  It occupies 792 bytes.
  The `lw` at 0xd9eed58 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9eed7c loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  4 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9eedec, `lw` at 0xd9eee3c, `lw` at 0xd9eee90.
  The `lw` at 0xd9eedf8 loads 4 bytes from table(0xda7a8c0) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9eee48 loads 4 bytes from table(0xda7a8ec) +0x0 via base at (table(0xda80000)).
  3 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9eee60, `lw` at 0xd9eeefc, `lw` at 0xd9eef6c.
  The `lw` at 0xd9eee9c loads 4 bytes from table(0xda7a908) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9eeee4 loads 4 bytes from table(0xda7a91c) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9eef20, `lw` at 0xd9eef54.
  The `lw` at 0xd9eef84 loads 4 bytes from abs 0xda84e84 via base gp (0xda8bc00).
  The `lw` at 0xd9eefa4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9eefdc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xc1.
  The `sw` at 0xd9eefe4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9eefec stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd9eeff4 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eeff8 stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9eeffc stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9ef000 stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef008 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `lw` at 0xd9ef010 loads 4 bytes from abs 0xda84e90 via base gp (0xda8bc00).
  The `lw` at 0xd9ef038 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9ef048 loads 4 bytes from abs 0xda84fcc via base gp (0xda8bc00).
  The `jalr` at 0xd9eed84 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9eee68 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9eef04 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9eef28 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9eef5c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9eef74 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9eef90 calls `__glImageSize [0xd9e3f68]` with a0=a3 at entry (arg3), a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0xd9eefb4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef02c calls `__glFillImage [0xd9e4c8c]` with a0=unknown, a1=a3 at entry (arg3), a2=0x1, a3=unknown.
  The `jalr` at 0xd9ef044 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9eecc0, a3=unknown.
  The `bgez` branch at 0xd9eed74 goes to 0xd9eed94 when a3 >= 0 (signed) and falls through when a3 < 0 (signed).
  The `bne` branch at 0xd9eeda0 goes to 0xd9eedc0 when a2(?) < at(=0x8001) (unsigned) and falls through when a2(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9eeda8 goes to 0xd9eee58 when a2(?) == at(=0x80e0) and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9eedb0 goes to 0xd9eee58 when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `bne` branch at 0xd9eedc4 goes to 0xd9eede0 when a2(?) < 0x190b (unsigned) and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9eedd0 goes to 0xd9eee58 when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9eede4 goes to 0xd9eee60 when t8(?) >= 0xb (unsigned) and falls through when t8(?) < 0xb (unsigned).
  The `bne` branch at 0xd9eee14 goes to 0xd9eeeac when a3(?) < 0x1a01 (unsigned) and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9eee20 goes to 0xd9eee78 when a3(?) < at(=0x8037) (unsigned) and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9eee34 goes to 0xd9eef6c when t9(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9eee88 goes to 0xd9eef6c when t0(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t0(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9eeeb0 goes to 0xd9eeecc when a3(?) < 0x1407 (unsigned) and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9eeebc goes to 0xd9eeef4 when a3(?) == at(=0x1a00) and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9eeed0 goes to 0xd9eef6c when t1(?) >= 0x7 (unsigned) and falls through when t1(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9eeef4 goes to 0xd9eef84 when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9eef18 goes to 0xd9eef84 when a2(?) == at(=0x1907) and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9eef3c goes to 0xd9eef84 when a2(?) == at(=0x1908) and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9eef44 goes to 0xd9eef84 when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9eef4c goes to 0xd9eef84 when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9eefc4 goes to 0xd9ef050 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9ef004 goes to 0xd9ef038 when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The return at 0xd9ef058 has v0 = ?.

- `__gllc_TexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ef0f4 (o32).
  It occupies 816 bytes.
  The `lw` at 0xd9ef108 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9ef140 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  4 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9ef1a4, `lw` at 0xd9ef1f4, `lw` at 0xd9ef248.
  The `lw` at 0xd9ef1b0 loads 4 bytes from table(0xda7a938) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9ef200 loads 4 bytes from table(0xda7a964) +0x0 via base at (table(0xda80000)).
  3 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9ef218, `lw` at 0xd9ef2b4, `lw` at 0xd9ef324.
  The `lw` at 0xd9ef254 loads 4 bytes from table(0xda7a980) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9ef29c loads 4 bytes from table(0xda7a994) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9ef2d8, `lw` at 0xd9ef30c.
  The `lw` at 0xd9ef33c loads 4 bytes from abs 0xda84e84 via base gp (0xda8bc00).
  The `lw` at 0xd9ef358 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9ef390 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xc2.
  The `sw` at 0xd9ef398 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9ef3a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd9ef3a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9ef3b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef3b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9ef3bc stores 4 bytes to ret(__glDlistAllocOp2) +0x30 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef3c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef3c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef3cc stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xd9ef3e0 loads 4 bytes from abs 0xda84e90 via base gp (0xda8bc00).
  The `lw` at 0xd9ef3fc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9ef40c loads 4 bytes from abs 0xda84fd4 via base gp (0xda8bc00).
  The `jalr` at 0xd9ef148 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef220 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef2bc calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef2e0 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef314 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef32c calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef344 calls `__glImageSize [0xd9e3f68]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef368 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef3f0 calls `__glFillImage [0xd9e4c8c]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef408 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9ef060, a3=unknown.
  The `bltz` branch at 0xd9ef124 goes to 0xd9ef140 when t7(?) < 0 (signed) and falls through when t7(?) >= 0 (signed).
  The `bgez` branch at 0xd9ef138 goes to 0xd9ef158 when a1(?) >= 0 (signed) and falls through when a1(?) < 0 (signed).
  The `bne` branch at 0xd9ef158 goes to 0xd9ef178 when at(?) != 0 and falls through when at(?) == 0.
  The `beq` branch at 0xd9ef160 goes to 0xd9ef210 when a2(?) == at(=0x80e0) and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9ef168 goes to 0xd9ef210 when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `bne` branch at 0xd9ef17c goes to 0xd9ef198 when a2(?) < 0x190b (unsigned) and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9ef188 goes to 0xd9ef210 when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9ef19c goes to 0xd9ef218 when t8(?) >= 0xb (unsigned) and falls through when t8(?) < 0xb (unsigned).
  The `bne` branch at 0xd9ef1cc goes to 0xd9ef264 when a3(?) < 0x1a01 (unsigned) and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9ef1d8 goes to 0xd9ef230 when a3(?) < at(=0x8037) (unsigned) and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9ef1ec goes to 0xd9ef324 when t9(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9ef240 goes to 0xd9ef324 when t0(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t0(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9ef268 goes to 0xd9ef284 when a3(?) < 0x1407 (unsigned) and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9ef274 goes to 0xd9ef2ac when a3(?) == at(=0x1a00) and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9ef288 goes to 0xd9ef324 when t1(?) >= 0x7 (unsigned) and falls through when t1(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9ef2ac goes to 0xd9ef33c when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9ef2d0 goes to 0xd9ef33c when a2(?) == at(=0x1907) and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9ef2f4 goes to 0xd9ef33c when a2(?) == at(=0x1908) and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9ef2fc goes to 0xd9ef33c when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9ef304 goes to 0xd9ef33c when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9ef378 goes to 0xd9ef414 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9ef3c8 goes to 0xd9ef3fc when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The return at 0xd9ef41c has v0 = ?.

- `__gllc_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ef4c8 (o32).
  It occupies 780 bytes.
  The `lw` at 0xd9ef4dc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xd9ef518 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  4 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9ef584, `lw` at 0xd9ef5e0, `lw` at 0xd9ef620.
  The `lw` at 0xd9ef590 loads 4 bytes from table(0xda7a9b0) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9ef5a0, `lw` at 0xd9ef6bc.
  The `lw` at 0xd9ef5ec loads 4 bytes from table(0xda7a9dc) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9ef62c loads 4 bytes from table(0xda7a9f8) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9ef654 loads 4 bytes from table(0xda7aa0c) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9ef670, `lw` at 0xd9ef6a4.
  The `lw` at 0xd9ef6d4 loads 4 bytes from abs 0xda84e88 via base gp (0xda8bc00).
  The `lw` at 0xd9ef6f4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9ef730 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xd1.
  The `sw` at 0xd9ef738 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9ef740 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd9ef748 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9ef750 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9ef758 stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef75c stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef764 stores 4 bytes to ret(__glDlistAllocOp2) +0x34 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef768 stores 4 bytes to ret(__glDlistAllocOp2) +0x38 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef76c stores 4 bytes to ret(__glDlistAllocOp2) +0x30 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef770 stores 4 bytes to ret(__glDlistAllocOp2) +0x2c via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9ef778 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xd9ef780 loads 4 bytes from abs 0xda84e8c via base gp (0xda8bc00).
  The `lw` at 0xd9ef7ac loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9ef7bc loads 4 bytes from abs 0xda84fdc via base gp (0xda8bc00).
  The `jalr` at 0xd9ef520 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef5a8 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef678 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef6ac calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef6c4 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef6e0 calls `__glImageSize3D [0xd9e401c]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef704 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef7a0 calls `__glFillImage3D [0xd9e406c]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9ef7b8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9ef424, a3=unknown.
  The `bltz` branch at 0xd9ef4f8 goes to 0xd9ef518 when t7(?) < 0 (signed) and falls through when t7(?) >= 0 (signed).
  The `bltz` branch at 0xd9ef508 goes to 0xd9ef518 when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  The `bgez` branch at 0xd9ef510 goes to 0xd9ef530 when a2(?) >= 0 (signed) and falls through when a2(?) < 0 (signed).
  The `bne` branch at 0xd9ef538 goes to 0xd9ef558 when a3(?) < at(=0x8001) (unsigned) and falls through when a3(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9ef540 goes to 0xd9ef5b8 when a3(?) == at(=0x80e0) and falls through when a3(?) != at(=0x80e0).
  The `beql` branch at 0xd9ef548 goes to 0xd9ef5bc when a3(?) == at(=0x80e1) and falls through when a3(?) != at(=0x80e1).
  The `bne` branch at 0xd9ef55c goes to 0xd9ef578 when a3(?) < 0x190b (unsigned) and falls through when a3(?) >= 0x190b (unsigned).
  The `beql` branch at 0xd9ef568 goes to 0xd9ef5bc when a3(?) == at(=0x8000) and falls through when a3(?) != at(=0x8000).
  The `beq` branch at 0xd9ef57c goes to 0xd9ef5a0 when t8(?) >= 0xb (unsigned) and falls through when t8(?) < 0xb (unsigned).
  The `bne` branch at 0xd9ef5c4 goes to 0xd9ef5fc when t0(?) < at(=0x8037) (unsigned) and falls through when t0(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9ef5d8 goes to 0xd9ef6bc when t9(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `bne` branch at 0xd9ef600 goes to 0xd9ef63c when t0(?) < 0x1407 (unsigned) and falls through when t0(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9ef618 goes to 0xd9ef6bc when t1(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t1(=table(-0x8032)) < 0x5 (unsigned).
  The `beq` branch at 0xd9ef640 goes to 0xd9ef6bc when t2(?) >= 0x7 (unsigned) and falls through when t2(?) < 0x7 (unsigned).
  The `beq` branch at 0xd9ef668 goes to 0xd9ef6d4 when a3(?) == at(=0x1907) and falls through when a3(?) != at(=0x1907).
  The `beq` branch at 0xd9ef68c goes to 0xd9ef6d4 when a3(?) == at(=0x1908) and falls through when a3(?) != at(=0x1908).
  The `beq` branch at 0xd9ef694 goes to 0xd9ef6d4 when a3(?) == at(=0x8000) and falls through when a3(?) != at(=0x8000).
  The `beq` branch at 0xd9ef69c goes to 0xd9ef6d4 when a3(?) == at(=0x80e1) and falls through when a3(?) != at(=0x80e1).
  The `beq` branch at 0xd9ef718 goes to 0xd9ef7c4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9ef774 goes to 0xd9ef7ac when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The return at 0xd9ef7cc has v0 = ?.

- `__gllc_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9ef8f4 (o32).
  It occupies 972 bytes.
  The `lw` at 0xd9ef904 loads 4 bytes from abs 0x1010 via base zero (0x0).
  5 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9ef92c, `lw` at 0xd9ef9cc, `lw` at 0xd9efab8.
  The `lw` at 0xd9ef954 loads 4 bytes from [0x1010] +0x348 via base t9 ([0x1010]).
  The `lw` at 0xd9ef968 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  5 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9ef9b0, `lw` at 0xd9efa44, `lw` at 0xd9efa94.
  The `lw` at 0xd9ef9bc loads 4 bytes from table(0xda7aa28) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9efa50 loads 4 bytes from table(0xda7aa3c) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9efaa0 loads 4 bytes from table(0xda7aa68) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9efaf4 loads 4 bytes from table(0xda7aa84) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9efb3c loads 4 bytes from table(0xda7aa98) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9efb7c, `lw` at 0xd9efbb4.
  The `lw` at 0xd9efbe4 loads 4 bytes from abs 0xda84e84 via base gp (0xda8bc00).
  The `lw` at 0xd9efc04 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9efc3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xc3.
  The `sw` at 0xd9efc44 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9efc4c stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9efc50 stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9efc54 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9efc58 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9efc60 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xd9efc7c loads 4 bytes from abs 0xda84e90 via base gp (0xda8bc00).
  The `lw` at 0xd9efc98 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9efca8 loads 4 bytes from abs 0xda84fe4 via base gp (0xda8bc00).
  The `jalr` at 0xd9ef934 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef970 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9ef9d4 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efac0 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efb5c calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `jalr` at 0xd9efb84 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `jalr` at 0xd9efbbc calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `jalr` at 0xd9efbd4 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=unknown.
  The `jalr` at 0xd9efbf0 calls `__glImageSize [0xd9e3f68]` with a0=a2 at entry (arg2), a1=0x1, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xd9efc14 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9efc8c calls `__glFillImage [0xd9e4c8c]` with a0=unknown, a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd9efca4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9ef7d4, a3=unknown.
  The `beq` branch at 0xd9ef924 goes to 0xd9ef944 when a0 == at(=0x8010) and falls through when a0 != at(=0x8010).
  The `bltz` branch at 0xd9ef94c goes to 0xd9ef968 when t8(=a2) < 0 (signed) and falls through when t8(=a2) >= 0 (signed).
  The `beql` branch at 0xd9ef960 goes to 0xd9ef984 when t0(=[[0x1010]+840]) >= t8(=a2) (signed) and falls through when t0(=[[0x1010]+840]) < t8(=a2) (signed).
  The `bne` branch at 0xd9ef984 goes to 0xd9ef9a0 when at(?) != 0 and falls through when at(?) == 0.
  The `beql` branch at 0xd9ef990 goes to 0xd9ef9e8 when t1(=a1) == at(=0x8049) and falls through when t1(=a1) != at(=0x8049).
  The `beq` branch at 0xd9ef9a8 goes to 0xd9ef9cc when t3(=a1-6406) >= 0x5 (unsigned) and falls through when t3(=a1-6406) < 0x5 (unsigned).
  The `bne` branch at 0xd9ef9f4 goes to 0xd9efa18 when t4(=a3) < at(=0x8001) (unsigned) and falls through when t4(=a3) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9efa00 goes to 0xd9efab0 when t4(=a3) == at(=0x80e0) and falls through when t4(=a3) != at(=0x80e0).
  The `beq` branch at 0xd9efa08 goes to 0xd9efab0 when t4(=a3) == at(=0x80e1) and falls through when t4(=a3) != at(=0x80e1).
  The `bne` branch at 0xd9efa1c goes to 0xd9efa38 when t5(=a3) < 0x190b (unsigned) and falls through when t5(=a3) >= 0x190b (unsigned).
  The `beq` branch at 0xd9efa28 goes to 0xd9efab0 when t5(=a3) == at(=0x8000) and falls through when t5(=a3) != at(=0x8000).
  The `beq` branch at 0xd9efa3c goes to 0xd9efab8 when t6(=a3-6400) >= 0xb (unsigned) and falls through when t6(=a3-6400) < 0xb (unsigned).
  The `bne` branch at 0xd9efa6c goes to 0xd9efb04 when a3(?) < 0x1a01 (unsigned) and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9efa78 goes to 0xd9efad0 when a3(?) < at(=0x8037) (unsigned) and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9efa8c goes to 0xd9efbcc when t9(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t9(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9efae0 goes to 0xd9efbcc when t0(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t0(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9efb08 goes to 0xd9efb24 when a3(?) < 0x1407 (unsigned) and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9efb14 goes to 0xd9efb4c when a3(?) == at(=0x1a00) and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9efb28 goes to 0xd9efbcc when t8(?) >= 0x7 (unsigned) and falls through when t8(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9efb4c goes to 0xd9efbe4 when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9efb74 goes to 0xd9efbe4 when t1(=a3) == at(=0x1907) and falls through when t1(=a3) != at(=0x1907).
  The `beq` branch at 0xd9efb9c goes to 0xd9efbe4 when t2(=a3) == at(=0x1908) and falls through when t2(=a3) != at(=0x1908).
  The `beq` branch at 0xd9efba4 goes to 0xd9efbe4 when t2(=a3) == at(=0x8000) and falls through when t2(=a3) != at(=0x8000).
  The `beq` branch at 0xd9efbac goes to 0xd9efbe4 when t2(=a3) == at(=0x80e1) and falls through when t2(=a3) != at(=0x80e1).
  The `beq` branch at 0xd9efc24 goes to 0xd9efcb0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9efc5c goes to 0xd9efc98 when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xd9efc70 goes to 0xd9efc98 when v0(?) == 0 and falls through when v0(?) != 0.
  The return at 0xd9efcb8 has v0 = ?.

- `__gllc_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9efde8 (o32).
  It occupies 952 bytes.
  The `lw` at 0xd9efdf8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  5 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9efe20, `lw` at 0xd9efeb4, `lw` at 0xd9eff98.
  The `lw` at 0xd9efe50 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  5 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9efe98, `lw` at 0xd9eff24, `lw` at 0xd9eff74.
  The `lw` at 0xd9efea4 loads 4 bytes from table(0xda7aab4) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9eff30 loads 4 bytes from table(0xda7aac8) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9eff80 loads 4 bytes from table(0xda7aaf4) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9effd4 loads 4 bytes from table(0xda7ab10) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9f001c loads 4 bytes from table(0xda7ab24) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9f0058, `lw` at 0xd9f008c.
  The `lw` at 0xd9f00bc loads 4 bytes from abs 0xda84e84 via base gp (0xda8bc00).
  The `lw` at 0xd9f00dc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9f0114 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xc4.
  The `sw` at 0xd9f011c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9f0124 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9f0128 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd9f0130 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0134 stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0138 stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0140 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xd9f015c loads 4 bytes from abs 0xda84e90 via base gp (0xda8bc00).
  The `lw` at 0xd9f0178 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9f0188 loads 4 bytes from abs 0xda84fec via base gp (0xda8bc00).
  The `jalr` at 0xd9efe28 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efe58 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9efebc calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9effa0 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9f003c calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0060 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0094 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f00ac calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f00c8 calls `__glImageSize [0xd9e3f68]` with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f00ec calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f016c calls `__glFillImage [0xd9e4c8c]` with a0=unknown, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xd9f0184 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9efcc0, a3=unknown.
  The `beq` branch at 0xd9efe18 goes to 0xd9efe38 when a0 == at(=0x8011) and falls through when a0 != at(=0x8011).
  The `bltz` branch at 0xd9efe40 goes to 0xd9efe50 when t8(=a2) < 0 (signed) and falls through when t8(=a2) >= 0 (signed).
  The `bgez` branch at 0xd9efe48 goes to 0xd9efe68 when t9(=a3) >= 0 (signed) and falls through when t9(=a3) < 0 (signed).
  The `bne` branch at 0xd9efe6c goes to 0xd9efe88 when t0(=a1) < 0x190b (unsigned) and falls through when t0(=a1) >= 0x190b (unsigned).
  The `beql` branch at 0xd9efe78 goes to 0xd9efed0 when t0(=a1) == at(=0x8049) and falls through when t0(=a1) != at(=0x8049).
  The `beq` branch at 0xd9efe90 goes to 0xd9efeb4 when t2(=a1-6406) >= 0x5 (unsigned) and falls through when t2(=a1-6406) < 0x5 (unsigned).
  The `bne` branch at 0xd9efed8 goes to 0xd9efefc when a2(?) < at(=0x8001) (unsigned) and falls through when a2(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9efee4 goes to 0xd9eff90 when a2(?) == at(=0x80e0) and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9efeec goes to 0xd9eff90 when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `bne` branch at 0xd9eff00 goes to 0xd9eff18 when a2(?) < 0x190b (unsigned) and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9eff08 goes to 0xd9eff90 when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9eff1c goes to 0xd9eff98 when t3(?) >= 0xb (unsigned) and falls through when t3(?) < 0xb (unsigned).
  The `bne` branch at 0xd9eff4c goes to 0xd9effe4 when a3(?) < 0x1a01 (unsigned) and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9eff58 goes to 0xd9effb0 when a3(?) < at(=0x8037) (unsigned) and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9eff6c goes to 0xd9f00a4 when t4(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t4(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9effc0 goes to 0xd9f00a4 when t5(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t5(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9effe8 goes to 0xd9f0004 when a3(?) < 0x1407 (unsigned) and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9efff4 goes to 0xd9f002c when a3(?) == at(=0x1a00) and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9f0008 goes to 0xd9f00a4 when t7(?) >= 0x7 (unsigned) and falls through when t7(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9f002c goes to 0xd9f00bc when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9f0050 goes to 0xd9f00bc when a2(?) == at(=0x1907) and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9f0074 goes to 0xd9f00bc when a2(?) == at(=0x1908) and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9f007c goes to 0xd9f00bc when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9f0084 goes to 0xd9f00bc when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9f00fc goes to 0xd9f0190 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9f013c goes to 0xd9f0178 when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0xd9f0150 goes to 0xd9f0178 when v0(?) == 0 and falls through when v0(?) != 0.
  The return at 0xd9f0198 has v0 = ?.

- `__gllc_SeparableFilter2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f02e8 (o32).
  It occupies 1096 bytes.
  The `lw` at 0xd9f02f8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  5 such `lw` accesses load 4 bytes from abs 0xda84384 via base gp (0xda8bc00), including `lw` at 0xd9f0320, `lw` at 0xd9f03b4, `lw` at 0xd9f0498.
  The `lw` at 0xd9f0350 loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  5 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xd9f0398, `lw` at 0xd9f0424, `lw` at 0xd9f0474.
  The `lw` at 0xd9f03a4 loads 4 bytes from table(0xda7ab40) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9f0430 loads 4 bytes from table(0xda7ab54) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9f0480 loads 4 bytes from table(0xda7ab80) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9f04d4 loads 4 bytes from table(0xda7ab9c) +0x0 via base at (table(0xda80000)).
  The `lw` at 0xd9f051c loads 4 bytes from table(0xda7abb0) +0x0 via base at (table(0xda80000)).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xd9f0558, `lw` at 0xd9f058c.
  2 such `lw` accesses load 4 bytes from abs 0xda84e84 via base gp (0xda8bc00), including `lw` at 0xd9f05bc, `lw` at 0xd9f05dc.
  The `lw` at 0xd9f0604 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9f0648 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xcb.
  The `sw` at 0xd9f0650 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9f0658 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9f065c stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xd9f0664 stores 4 bytes to ret(__glDlistAllocOp2) +0x28 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0668 stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f066c stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0670 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9f067c stores 4 bytes to ret(__glDlistAllocOp2) +0x2c via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  2 such `lw` accesses load 4 bytes from abs 0xda84e90 via base gp (0xda8bc00), including `lw` at 0xd9f0698, `lw` at 0xd9f06ec.
  The `lw` at 0xd9f0708 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9f0718 loads 4 bytes from abs 0xda84ff4 via base gp (0xda8bc00).
  The `jalr` at 0xd9f0328 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0358 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f03bc calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f04a0 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xd9f053c calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0560 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0594 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f05ac calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f05c8 calls `__glImageSize [0xd9e3f68]` with a0=a2 at entry (arg2), a1=0x1, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f05e8 calls `__glImageSize [0xd9e3f68]` with a0=0x1, a1=a3 at entry (arg3), a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0620 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=unknown, a2=-0x4, a3=unknown.
  The `jalr` at 0xd9f06ac calls `__glFillImage [0xd9e4c8c]` with a0=unknown, a1=a2 at entry (arg2), a2=0x1, a3=unknown.
  The `jalr` at 0xd9f06fc calls `__glFillImage [0xd9e4c8c]` with a0=unknown, a1=0x1, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xd9f0714 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xd9f01a0, a3=unknown.
  The `beq` branch at 0xd9f0318 goes to 0xd9f0338 when a0 == at(=0x8012) and falls through when a0 != at(=0x8012).
  The `bltz` branch at 0xd9f0340 goes to 0xd9f0350 when t8(=a2) < 0 (signed) and falls through when t8(=a2) >= 0 (signed).
  The `bgez` branch at 0xd9f0348 goes to 0xd9f0368 when t9(=a3) >= 0 (signed) and falls through when t9(=a3) < 0 (signed).
  The `bne` branch at 0xd9f036c goes to 0xd9f0388 when t1(=a1) < 0x190b (unsigned) and falls through when t1(=a1) >= 0x190b (unsigned).
  The `beql` branch at 0xd9f0378 goes to 0xd9f03d0 when t1(=a1) == at(=0x8049) and falls through when t1(=a1) != at(=0x8049).
  The `beq` branch at 0xd9f0390 goes to 0xd9f03b4 when t3(=a1-6406) >= 0x5 (unsigned) and falls through when t3(=a1-6406) < 0x5 (unsigned).
  The `bne` branch at 0xd9f03d8 goes to 0xd9f03fc when a2(?) < at(=0x8001) (unsigned) and falls through when a2(?) >= at(=0x8001) (unsigned).
  The `beq` branch at 0xd9f03e4 goes to 0xd9f0490 when a2(?) == at(=0x80e0) and falls through when a2(?) != at(=0x80e0).
  The `beq` branch at 0xd9f03ec goes to 0xd9f0490 when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `bne` branch at 0xd9f0400 goes to 0xd9f0418 when a2(?) < 0x190b (unsigned) and falls through when a2(?) >= 0x190b (unsigned).
  The `beq` branch at 0xd9f0408 goes to 0xd9f0490 when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9f041c goes to 0xd9f0498 when t4(?) >= 0xb (unsigned) and falls through when t4(?) < 0xb (unsigned).
  The `bne` branch at 0xd9f044c goes to 0xd9f04e4 when a3(?) < 0x1a01 (unsigned) and falls through when a3(?) >= 0x1a01 (unsigned).
  The `bne` branch at 0xd9f0458 goes to 0xd9f04b0 when a3(?) < at(=0x8037) (unsigned) and falls through when a3(?) >= at(=0x8037) (unsigned).
  The `beq` branch at 0xd9f046c goes to 0xd9f05a4 when t5(=table(-0x8362)) >= 0x7 (unsigned) and falls through when t5(=table(-0x8362)) < 0x7 (unsigned).
  The `beq` branch at 0xd9f04c0 goes to 0xd9f05a4 when t7(=table(-0x8032)) >= 0x5 (unsigned) and falls through when t7(=table(-0x8032)) < 0x5 (unsigned).
  The `bne` branch at 0xd9f04e8 goes to 0xd9f0504 when a3(?) < 0x1407 (unsigned) and falls through when a3(?) >= 0x1407 (unsigned).
  The `beq` branch at 0xd9f04f4 goes to 0xd9f052c when a3(?) == at(=0x1a00) and falls through when a3(?) != at(=0x1a00).
  The `beq` branch at 0xd9f0508 goes to 0xd9f05a4 when t6(?) >= 0x7 (unsigned) and falls through when t6(?) < 0x7 (unsigned).
  The `bne` branch at 0xd9f052c goes to 0xd9f05bc when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xd9f0550 goes to 0xd9f05bc when a2(?) == at(=0x1907) and falls through when a2(?) != at(=0x1907).
  The `beq` branch at 0xd9f0574 goes to 0xd9f05bc when a2(?) == at(=0x1908) and falls through when a2(?) != at(=0x1908).
  The `beq` branch at 0xd9f057c goes to 0xd9f05bc when a2(?) == at(=0x8000) and falls through when a2(?) != at(=0x8000).
  The `beq` branch at 0xd9f0584 goes to 0xd9f05bc when a2(?) == at(=0x80e1) and falls through when a2(?) != at(=0x80e1).
  The `beq` branch at 0xd9f0630 goes to 0xd9f0720 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `blez` branch at 0xd9f0678 goes to 0xd9f06c4 when t0(?) <= 0 (signed) and falls through when t0(?) > 0 (signed).
  The `beql` branch at 0xd9f068c goes to 0xd9f06c8 when v0(?) == 0 and falls through when v0(?) != 0.
  The `blez` branch at 0xd9f06cc goes to 0xd9f0708 when t8(?) <= 0 (signed) and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0xd9f06d4 goes to 0xd9f0708 when v0(?) == 0 and falls through when v0(?) != 0.
  The return at 0xd9f0728 has v0 = ?.

- `__gllc_TexImage4DSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f0738 (o32).
  It occupies 20 bytes.
  The return at 0xd9f0744 has v0 = ?.

- `__gllc_TexSubImage4DSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f0754 (o32).
  It occupies 20 bytes.
  The return at 0xd9f0760 has v0 = ?.

- `__gllc_ColorTableSGI` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xd9f0bc0 (o32).
  It occupies 596 bytes.
  The `lw` at 0xd9f0bf4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xd9f0bf8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xd9f0c10 loads 4 bytes from [0x1010] +0x2e40 via base s1 ([0x1010]).
  The `sw` at 0xd9f0c28 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xd9f0c2c loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xd9f0c44 loads 4 bytes from abs 0xda84be0 via base gp (0xda8bc00).
  The `lw` at 0xd9f0ca4 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xd9f0cbc loads 4 bytes from abs 0xda84380 via base gp (0xda8bc00).
  The `lw` at 0xd9f0cd4 loads 4 bytes from abs 0xda84388 via base gp (0xda8bc00).
  The `lw` at 0xd9f0d18 loads 4 bytes from abs 0xda8438c via base gp (0xda8bc00).
  The `lw` at 0xd9f0d30 loads 4 bytes from abs 0xda84e84 via base gp (0xda8bc00).
  The `lw` at 0xd9f0d54 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xd9f0d80 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xe3.
  The `sw` at 0xd9f0d84 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xd9f0d94 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0da0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xd9f0da8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `sw` at 0xd9f0db0 stores 4 bytes to ret(__glDlistAllocOp2) +0x20 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sw` at 0xd9f0db8 stores 4 bytes to ret(__glDlistAllocOp2) +0x24 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xd9f0dcc loads 4 bytes from abs 0xda84e90 via base gp (0xda8bc00).
  The `lw` at 0xd9f0dec loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xd9f0df0 loads 4 bytes from abs 0xda85028 via base gp (0xda8bc00).
  The `jalr` at 0xd9f0c18 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0c34 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0c64 calls `__glCheckColorTableArgs [0xd9ce260]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd9f0cac calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0cc4 calls `__gllc_InvalidValue [0xd9933a0]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0cdc calls `__gllc_InvalidOperation [0xd993468]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0d20 calls `__gllc_TableTooLarge [0xd9934cc]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0d40 calls `__glImageSize [0xd9e3f68]` with a0=a2 at entry (arg2), a1=0x1, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xd9f0d64 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xd9f0dd8 calls `__glFillImage [0xd9e4c8c]` with a0=[0x1010], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd9f0df4 calls `__glDlistAppendOp [0xd992ec8]` with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xd9f0b38, a3=unknown.
  The `beq` branch at 0xd9f0c00 goes to 0xd9f0c44 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xd9f0c08 goes to 0xd9f0c2c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xd9f0c70 goes to 0xd9f0d30 when v0(=ret(__glCheckColorTableArgs)) == 0 and falls through when v0(=ret(__glCheckColorTableArgs)) != 0.
  The `beq` branch at 0xd9f0c7c goes to 0xd9f0ca4 when v0(=ret(__glCheckColorTableArgs)) == at(=0x500) and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x500).
  The `beq` branch at 0xd9f0c84 goes to 0xd9f0cbc when v0(=ret(__glCheckColorTableArgs)) == at(=0x501) and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x501).
  The `beq` branch at 0xd9f0c8c goes to 0xd9f0cd4 when v0(=ret(__glCheckColorTableArgs)) == at(=0x502) and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x502).
  The `beql` branch at 0xd9f0c94 goes to 0xd9f0cf0 when v0(=ret(__glCheckColorTableArgs)) == at(=0x8031) and falls through when v0(=ret(__glCheckColorTableArgs)) != at(=0x8031).
  The `beq` branch at 0xd9f0cf0 goes to 0xd9f0d18 when t0(=a0) == at(=0x80bc) and falls through when t0(=a0) != at(=0x80bc).
  The `beq` branch at 0xd9f0cf8 goes to 0xd9f0d18 when t0(=a0) == at(=0x80d0) and falls through when t0(=a0) != at(=0x80d0).
  The `beq` branch at 0xd9f0d00 goes to 0xd9f0d18 when t0(=a0) == at(=0x80d1) and falls through when t0(=a0) != at(=0x80d1).
  The `beq` branch at 0xd9f0d08 goes to 0xd9f0d18 when t0(=a0) == at(=0x80d2) and falls through when t0(=a0) != at(=0x80d2).
  The `beq` branch at 0xd9f0d74 goes to 0xd9f0e00 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xd9f0e0c has v0 = ?.

- `__glim_SubdivPatchParameterfSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda09b20 (o32).
  It occupies 476 bytes.
  The `lw` at 0xda09b44 loads 4 bytes from abs 0x1010 via base zero (0x0).
  3 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda09b54, `lw` at 0xda09bdc, `lw` at 0xda09c94.
  4 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xda09b78, `lw` at 0xda09b94, `lw` at 0xda09bac.
  The `sw` at 0xda09c74 stores 4 bytes to [0x1010] +0x17c0 via base v1 ([0x1010]) with value unknown.
  The `lw` at 0xda09cac loads 4 bytes from abs 0xda873f0 via base gp (0xda8bc00).
  The `sw` at 0xda09cdc stores 4 bytes to unknown (base unknown) via base v1 (unknown) with value unknown.
  The `jalr` at 0xda09b5c calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09be4 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09c9c calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09cb8 calls `ceil` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda09b40 goes to 0xda09b6c when a0 == at(=0x6010) and falls through when a0 != at(=0x6010).
  The `beql` branch at 0xda09b4c goes to 0xda09b70 when a0 == at(=0x6011) and falls through when a0 != at(=0x6011).
  The `bnel` branch at 0xda09b70 goes to 0xda09c7c when a0 != at(=0x6011) and falls through when a0 == at(=0x6011).
  The `bc1tl` branch at 0xda09b8c goes to 0xda09bf8 when f14 == f4(=0x46288400) (c.eq.s at 0xda09b84) and falls through when not (f14 == f4(=0x46288400) (c.eq.s at 0xda09b84)).
  The `bc1tl` branch at 0xda09ba4 goes to 0xda09bf8 when f14 == f6(=0x46288c00) (c.eq.s at 0xda09b9c) and falls through when not (f14 == f6(=0x46288c00) (c.eq.s at 0xda09b9c)).
  The `bc1tl` branch at 0xda09bbc goes to 0xda09bf8 when f14 == f8(=0x46289c00) (c.eq.s at 0xda09bb4) and falls through when not (f14 == f8(=0x46289c00) (c.eq.s at 0xda09bb4)).
  The `bc1tl` branch at 0xda09bd4 goes to 0xda09bf8 when f14 == f10(=0x4628a400) (c.eq.s at 0xda09bcc) and falls through when not (f14 == f10(=0x4628a400) (c.eq.s at 0xda09bcc)).
  The `beql` branch at 0xda09c10 goes to 0xda09c60 when (t7(?) & 0x78) == 0 and falls through when (t7(?) & 0x78) != 0.
  The `bne` branch at 0xda09c3c goes to 0xda09c54 when (t7(?) & 0x78) != 0 and falls through when (t7(?) & 0x78) == 0.
  The `bltz` branch at 0xda09c64 goes to 0xda09c54 when t7(?) < 0 (signed) and falls through when t7(?) >= 0 (signed).
  The `bc1f` branch at 0xda09c8c goes to 0xda09cac when not (f18 < f14 (c.lt.s at 0xda09c84)) and falls through when f18 < f14 (c.lt.s at 0xda09c84).
  The return at 0xda09cf4 has v0 = ?.

- `__glim_SubdivPatchParameteriSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda09cfc (o32).
  It occupies 72 bytes.
  The `lw` at 0xda09d10 loads 4 bytes from abs 0xda85364 via base gp (0xda8bc00).
  The `jalr` at 0xda09d28 calls `__glim_SubdivPatchParameterfSGIX [0xda09b20]` with a0=a0 at entry (arg0), a1=unknown, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xda09d3c has v0 = ret(__glim_SubdivPatchParameterfSGIX).

- `__glim_SubdivPatchSGIX` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda09d44 (o32).
  It occupies 13436 bytes.
  The `lw` at 0xda09d54 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda09d90 loads 4 bytes from [0x1010] +0x17b8 via base t4 ([0x1010]).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda09d94, `lw` at 0xda09e98.
  The `lw` at 0xda09dac loads 4 bytes from a0 (arg0 at entry) +0x0 via base a0 (a0).
  The `lw` at 0xda09db0 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a0 (a0).
  The `lw` at 0xda09db4 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a0 (a0).
  The `lw` at 0xda09dbc loads 4 bytes from a0 (arg0 at entry) +0xc via base a0 (a0).
  The `lw` at 0xda09dd4 loads 4 bytes from a1 (arg1 at entry) +0x0 via base a1 (a1).
  The `lw` at 0xda09ddc loads 4 bytes from a1 (arg1 at entry) +0x4 via base a1 (a1).
  The `lw` at 0xda09de4 loads 4 bytes from a1 (arg1 at entry) +0x8 via base a1 (a1).
  The `lw` at 0xda09dec loads 4 bytes from a1 (arg1 at entry) +0xc via base a1 (a1).
  The `lw` at 0xda09df8 loads 4 bytes from a2 (arg2 at entry) +0x0 via base a2 (a2).
  The `lw` at 0xda09e18 loads 4 bytes from a2 (arg2 at entry) +0x4 via base a2 (a2).
  The `lw` at 0xda09e20 loads 4 bytes from a2 (arg2 at entry) +0x8 via base a2 (a2).
  The `lw` at 0xda09e28 loads 4 bytes from a2 (arg2 at entry) +0xc via base a2 (a2).
  The `lw` at 0xda09e30 loads 4 bytes from [a0] +0x0 via base s0 ([a0]).
  The `lw` at 0xda09e34 loads 4 bytes from [a0+4] +0x0 via base s3 ([a0+4]).
  The `lw` at 0xda09e38 loads 4 bytes from [a0+8] +0x0 via base s1 ([a0+8]).
  The `lw` at 0xda09e3c loads 4 bytes from [a0+12] +0x0 via base s2 ([a0+12]).
  6 such `sb` accesses store 1 byte to unknown (base unknown) via base t4 (unknown) with value 0x0, including `sb` at 0xda09f10, `sb` at 0xda0a128, `sb` at 0xda0a8cc.
  2 such `sb` accesses store 1 byte to unknown (base unknown) via base t4 (unknown) with value 0x1, including `sb` at 0xda09f3c, `sb` at 0xda0c4e8.
  5 such `lw` accesses load 4 bytes from unknown (base unknown) via base t4 (unknown), including `lw` at 0xda09f84, `lw` at 0xda0a0e4, `lw` at 0xda0a0ec.
  4 such `sb` accesses store 1 byte to unknown (base unknown) via base v0 (unknown) with value 0x0, including `sb` at 0xda09f90, `sb` at 0xda09fc4, `sb` at 0xda09ff8.
  2 such `sw` accesses store 4 bytes to unknown (base unknown) via base t8 (unknown) with value 0x0, including `sw` at 0xda09fa0, `sw` at 0xda0a008.
  2 such `sw` accesses store 4 bytes to unknown (base unknown) via base t7 (unknown) with value 0x0, including `sw` at 0xda09fb8, `sw` at 0xda0a020.
  2 such `sw` accesses store 4 bytes to unknown (base unknown) via base t6 (unknown) with value 0x0, including `sw` at 0xda09fd4, `sw` at 0xda0a03c.
  2 such `sw` accesses store 4 bytes to unknown (base unknown) via base t9 (unknown) with value 0x0, including `sw` at 0xda09fec, `sw` at 0xda0a054.
  The `sw` at 0xda0a130 stores 4 bytes to unknown (base unknown) via base t4 (unknown) with value 0x3.
  The `lw` at 0xda0a244 loads 4 bytes from [a0] +0x28 via base a0 ([a0]+40).
  50 such `lw` accesses load 4 bytes from unknown (base unknown) via base v1 (unknown), including `lw` at 0xda0a254, `lw` at 0xda0a260, `lw` at 0xda0a270.
  The `lw` at 0xda0a264 loads 4 bytes from [a0] +0x2c via base a0 ([a0]+40).
  The `lw` at 0xda0a274 loads 4 bytes from [a0] +0x30 via base a0 ([a0]+40).
  The `lw` at 0xda0a2f8 loads 4 bytes from [a0+8] +0x34 via base a0 ([a0+8]+52).
  The `lw` at 0xda0a318 loads 4 bytes from [a0+8] +0x38 via base a0 ([a0+8]+52).
  The `lw` at 0xda0a328 loads 4 bytes from [a0+8] +0x3c via base a0 ([a0+8]+52).
  12 such `lw` accesses load 4 bytes from unknown (base unknown) via base a0 (unknown), including `lw` at 0xda0a39c, `lw` at 0xda0a3bc, `lw` at 0xda0a3cc.
  The `lw` at 0xda0a440 loads 4 bytes from [a0+4] +0x34 via base a0 ([a0+4]+52).
  The `lw` at 0xda0a460 loads 4 bytes from [a0+4] +0x38 via base a0 ([a0+4]+52).
  The `lw` at 0xda0a470 loads 4 bytes from [a0+4] +0x3c via base a0 ([a0+4]+52).
  19 such `sw` accesses store 4 bytes to unknown (base unknown) via base t4 (unknown) with value unknown, including `sw` at 0xda0a530, `sw` at 0xda0a630, `sw` at 0xda0a730.
  The `sw` at 0xda0a8dc stores 4 bytes to unknown (base unknown) via base t4 (unknown) with value 0x4.
  The `lw` at 0xda0a910 loads 4 bytes from [a0] +0x4 via base s0 ([a0]+4).
  The `lw` at 0xda0a974 loads 4 bytes from [a0+4] +0x4 via base s3 ([a0+4]+4).
  The `lw` at 0xda0a9d8 loads 4 bytes from [a0+8] +0x4 via base s1 ([a0+8]+20).
  4 such `lw` accesses load 4 bytes from unknown (base unknown) via base s2 (unknown), including `lw` at 0xda0aa0c, `lw` at 0xda0aff0, `lw` at 0xda0bb68.
  The `lw` at 0xda0aa38 loads 4 bytes from [a0] +0x38 via base a0 ([a0]+52).
  The `lw` at 0xda0aa54 loads 4 bytes from [a0] +0x3c via base a0 ([a0]+52).
  The `lw` at 0xda0aa64 loads 4 bytes from [a0] +0x40 via base a0 ([a0]+52).
  The `lw` at 0xda0aa98 loads 4 bytes from [a0] +0x34 via base v1 ([a0]+52).
  The `lw` at 0xda0aaf8 loads 4 bytes from [a0+8] +0x48 via base a0 ([a0+8]+68).
  The `lw` at 0xda0ab14 loads 4 bytes from [a0+8] +0x4c via base a0 ([a0+8]+68).
  The `lw` at 0xda0ab24 loads 4 bytes from [a0+8] +0x50 via base a0 ([a0+8]+68).
  The `lw` at 0xda0ab54 loads 4 bytes from [a0+8] +0x44 via base v1 ([a0+8]+68).
  The `lw` at 0xda0ac64 loads 4 bytes from [a0+4] +0x48 via base a0 ([a0+4]+68).
  The `lw` at 0xda0ac78 loads 4 bytes from [a0+4] +0x4c via base a0 ([a0+4]+68).
  The `lw` at 0xda0ac88 loads 4 bytes from [a0+4] +0x50 via base a0 ([a0+4]+68).
  The `lw` at 0xda0acb8 loads 4 bytes from [a0+4] +0x44 via base v1 ([a0+4]+68).
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base s0 (unknown), including `lw` at 0xda0adc8, `lw` at 0xda0bfbc.
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base s1 (unknown), including `lw` at 0xda0aedc, `lw` at 0xda0c0ec.
  2 such `lw` accesses load 4 bytes from unknown (base unknown) via base s3 (unknown), including `lw` at 0xda0b100, `lw` at 0xda0c348.
  The `sw` at 0xda0b154 stores 4 bytes to unknown (base unknown) via base t4 (unknown) with value 0x5.
  The `lw` at 0xda0b2b4 loads 4 bytes from [a0] +0x48 via base a0 ([a0]+64).
  The `lw` at 0xda0b2d4 loads 4 bytes from [a0] +0x4c via base a0 ([a0]+64).
  The `lw` at 0xda0b2e4 loads 4 bytes from [a0] +0x50 via base a0 ([a0]+64).
  The `lw` at 0xda0b37c loads 4 bytes from [a0+8] +0x5c via base a0 ([a0+8]+84).
  The `lw` at 0xda0b39c loads 4 bytes from [a0+8] +0x60 via base a0 ([a0+8]+84).
  The `lw` at 0xda0b3ac loads 4 bytes from [a0+8] +0x64 via base a0 ([a0+8]+84).
  The `lw` at 0xda0b4f4 loads 4 bytes from [a0+4] +0x5c via base a0 ([a0+4]+84).
  The `lw` at 0xda0b514 loads 4 bytes from [a0+4] +0x60 via base a0 ([a0+4]+84).
  The `lw` at 0xda0b524 loads 4 bytes from [a0+4] +0x64 via base a0 ([a0+4]+84).
  The `sw` at 0xda0ba04 stores 4 bytes to unknown (base unknown) via base t4 (unknown) with value 0x6.
  The `lw` at 0xda0ba38 loads 4 bytes from [a0] +0xc via base s0 ([a0]+4).
  The `lw` at 0xda0babc loads 4 bytes from [a0+4] +0xc via base s3 ([a0+4]+4).
  The `lw` at 0xda0bb2c loads 4 bytes from [a0+8] +0xc via base s1 ([a0+8]+28).
  The `lw` at 0xda0bba8 loads 4 bytes from [a0] +0x58 via base a0 ([a0]+76).
  The `lw` at 0xda0bbc8 loads 4 bytes from [a0] +0x5c via base a0 ([a0]+76).
  The `lw` at 0xda0bbd8 loads 4 bytes from [a0] +0x60 via base a0 ([a0]+76).
  The `lw` at 0xda0bc0c loads 4 bytes from [a0] +0x54 via base v1 ([a0]+76).
  The `lw` at 0xda0bc88 loads 4 bytes from [a0+8] +0x70 via base a0 ([a0+8]+100).
  The `lw` at 0xda0bca8 loads 4 bytes from [a0+8] +0x74 via base a0 ([a0+8]+100).
  The `lw` at 0xda0bcb8 loads 4 bytes from [a0+8] +0x78 via base a0 ([a0+8]+100).
  The `lw` at 0xda0bce8 loads 4 bytes from [a0+8] +0x6c via base v1 ([a0+8]+100).
  The `lw` at 0xda0be30 loads 4 bytes from [a0+4] +0x70 via base a0 ([a0+4]+100).
  The `lw` at 0xda0be50 loads 4 bytes from [a0+4] +0x74 via base a0 ([a0+4]+100).
  The `lw` at 0xda0be60 loads 4 bytes from [a0+4] +0x78 via base a0 ([a0+4]+100).
  The `lw` at 0xda0be90 loads 4 bytes from [a0+4] +0x6c via base v1 ([a0+4]+100).
  The `lbu` at 0xda0c3f4 loads 1 byte from unknown (base unknown) via base t4 (unknown).
  23 such `lw` accesses load 4 bytes from abs 0xda83c48 via base gp (0xda8bc00), including `lw` at 0xda0c410, `lw` at 0xda0c458, `lw` at 0xda0c490.
  6 such `lb` accesses load 1 byte from unknown (base unknown) via base v1 (unknown), including `lb` at 0xda0c514, `lb` at 0xda0c568, `lb` at 0xda0c604.
  17 such `lb` accesses load 1 byte from unknown (base unknown) via base t8 (unknown), including `lb` at 0xda0c518, `lb` at 0xda0c8bc, `lb` at 0xda0c958.
  2 such `lb` accesses load 1 byte from unknown (base unknown) via base a1 (unknown), including `lb` at 0xda0c528, `lb` at 0xda0c5d0.
  6 such `lb` accesses load 1 byte from unknown (base unknown) via base a3 (unknown), including `lb` at 0xda0c53c, `lb` at 0xda0c584, `lb` at 0xda0c6a8.
  11 such `lb` accesses load 1 byte from unknown (base unknown) via base t6 (unknown), including `lb` at 0xda0c5ac, `lb` at 0xda0c7b8, `lb` at 0xda0c86c.
  8 such `lb` accesses load 1 byte from unknown (base unknown) via base t9 (unknown), including `lb` at 0xda0c758, `lb` at 0xda0c784, `lb` at 0xda0c7f0.
  3 such `lb` accesses load 1 byte from unknown (base unknown) via base t7 (unknown), including `lb` at 0xda0c8c0, `lb` at 0xda0c8f8, `lb` at 0xda0c908.
  The `lw` at 0xda0cd40 loads 4 bytes from abs 0xda87364 via base gp (0xda8bc00).
  2 such `lw` accesses load 4 bytes from abs 0xda83c64 via base gp (0xda8bc00), including `lw` at 0xda0cd44, `lw` at 0xda0cdc0.
  The `lw` at 0xda0cdcc loads 4 bytes from table(0xda7af30) +0x0 via base at (table(0xda80000)).
  11 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) +0x0 via base s0 ((sp-1540 + ([[0x1010]+6072] << 0x2))), including `lw` at 0xda0ce24, `lw` at 0xda0ce58, `lw` at 0xda0cebc.
  6 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) -0x4 via base s0 ((sp-1540 + ([[0x1010]+6072] << 0x2))), including `lw` at 0xda0ce84, `lw` at 0xda0cf24, `lw` at 0xda0cf80.
  3 such `sw` accesses store 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) -0x4 via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)) with value [(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2, including `sw` at 0xda0ce9c, `sw` at 0xda0cf98, `sw` at 0xda0d0dc.
  3 such `sw` accesses store 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) +0x0 via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)) with value [(sp-1540 + ([[0x1010]+6072] << 0x2))]+2, including `sw` at 0xda0ced0, `sw` at 0xda0cfc8, `sw` at 0xda0d10c.
  3 such `lw` accesses load 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) +0x0 via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)), including `lw` at 0xda0cf10, `lw` at 0xda0d008, `lw` at 0xda0d14c.
  3 such `lw` accesses load 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) -0x4 via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)), including `lw` at 0xda0cf28, `lw` at 0xda0d020, `lw` at 0xda0d164.
  4 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) -0x8 via base s0 ((sp-1540 + ([[0x1010]+6072] << 0x2))), including `lw` at 0xda0cf48, `lw` at 0xda0d030, `lw` at 0xda0d090.
  2 such `sw` accesses store 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) -0x8 via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)) with value [(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2, including `sw` at 0xda0cf60, `sw` at 0xda0d0a8.
  2 such `lw` accesses load 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) -0x8 via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)), including `lw` at 0xda0d034, `lw` at 0xda0d178.
  2 such `lw` accesses load 4 bytes from (sp-1540 + ([[0x1010]+6072] << 0x2)) -0xc via base s0 ((sp-1540 + ([[0x1010]+6072] << 0x2))), including `lw` at 0xda0d054, `lw` at 0xda0d188.
  The `sw` at 0xda0d06c stores 4 bytes to (([[0x1010]+6072] << 0x2) + sp-1560) -0xc via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)) with value [(sp-1540 + ([[0x1010]+6072] << 0x2))-12]+2.
  The `lw` at 0xda0d18c loads 4 bytes from (([[0x1010]+6072] << 0x2) + sp-1560) -0xc via base s1 ((([[0x1010]+6072] << 0x2) + sp-1560)).
  The `jalr` at 0xda09d9c calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda09ea8 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=[[a0+4]]-1, a3=[[a0]]-1.
  The `jalr` at 0xda0c42c calls `CopyVertex [0xda0d1c0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda0c460 calls `CopyVertex [0xda0d1c0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda0c49c calls `CopyVertex [0xda0d1c0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda0c4cc calls `CopyVertex [0xda0d1c0]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cd48 calls `getenv` with a0=0xda7aef0, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cd68 calls `InitSubdivision [0xda0e810]` with a0=sp-1512, a1=sp-236, a2=sp-352, a3=unknown.
  The `jalr` at 0xda0cdac calls `DoRow [0xda11b1c]` with a0=0x0, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cdec calls `DoRender [0xda15908]` with a0=[[0x1010]+6072], a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda0ce0c calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072], a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0ce30 calls `DoRender [0xda15908]` with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=unknown, a3=unknown.
  The `jalr` at 0xda0ce4c calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072], a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0ce6c calls `DoRender [0xda15908]` with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=unknown, a3=unknown.
  The `jalr` at 0xda0ceb4 calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072]-1, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cee4 calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072], a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cf04 calls `DoRender [0xda15908]` with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cf78 calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072]-2, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cfac calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072]-1, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cfdc calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072], a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0cffc calls `DoRender [0xda15908]` with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=unknown, a3=unknown.
  The `jalr` at 0xda0d088 calls `DoRow [0xda11b1c]` with a0=unknown, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0d0bc calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072]-2, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0d0f0 calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072]-1, a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0d120 calls `DoRow [0xda11b1c]` with a0=[[0x1010]+6072], a1=sp-1540, a2=unknown, a3=unknown.
  The `jalr` at 0xda0d140 calls `DoRender [0xda15908]` with a0=[[0x1010]+6072], a1=[(sp-1540 + ([[0x1010]+6072] << 0x2))]-1, a2=unknown, a3=unknown.
  The `bne` branch at 0xda09d8c goes to 0xda09dac when a0 != 0 and falls through when a0 == 0.
  The `bne` branch at 0xda09db8 goes to 0xda09dd4 when a1 != 0 and falls through when a1 == 0.
  The `bnel` branch at 0xda09df4 goes to 0xda09e14 when a2 != 0 and falls through when a2 == 0.
  The `beq` branch at 0xda09e74 goes to 0xda09e98 when a3(=[[a0]]-1) >= 0x8 (signed) and falls through when a3(=[[a0]]-1) < 0x8 (signed).
  The `beq` branch at 0xda09e80 goes to 0xda09e98 when a2(=[[a0+4]]-1) >= 0x9 (signed) and falls through when a2(=[[a0+4]]-1) < 0x9 (signed).
  The `beq` branch at 0xda09e88 goes to 0xda09e98 when at(?) == 0 and falls through when at(?) != 0.
  The `bnel` branch at 0xda09e90 goes to 0xda09ec4 when at(?) != 0 and falls through when at(?) == 0.
  The `bne` branch at 0xda09ecc goes to 0xda09f10 when t9(?) != 0 and falls through when t9(?) == 0.
  The `bne` branch at 0xda09ed4 goes to 0xda09f10 when t6(?) != 0 and falls through when t6(?) == 0.
  The `bne` branch at 0xda09edc goes to 0xda09f10 when t7(?) != 0 and falls through when t7(?) == 0.
  The `bne` branch at 0xda09ee4 goes to 0xda09f10 when t8(?) != 0 and falls through when t8(?) == 0.
  The `bne` branch at 0xda09eec goes to 0xda09f10 when t9(?) != 0 and falls through when t9(?) == 0.
  The `bne` branch at 0xda09ef4 goes to 0xda09f10 when t6(?) != 0 and falls through when t6(?) == 0.
  The `bne` branch at 0xda09efc goes to 0xda09f10 when t7(?) != 0 and falls through when t7(?) == 0.
  The `bne` branch at 0xda09f04 goes to 0xda09f10 when t8(?) != 0 and falls through when t8(?) == 0.
  The `bgez` branch at 0xda09f20 goes to 0xda09f40 when t6(?) >= 0 (signed) and falls through when t6(?) < 0 (signed).
  The `beq` branch at 0xda09f48 goes to 0xda09f88 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda09f50 goes to 0xda09f88 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda09f58 goes to 0xda09f88 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda09f60 goes to 0xda09f88 when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` branch at 0xda09f68 goes to 0xda09f88 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda09f70 goes to 0xda09f88 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda09f78 goes to 0xda09f88 when t8(?) == 0 and falls through when t8(?) != 0.
  The `bnel` branch at 0xda09f80 goes to 0xda0a0f0 when t9(?) != 0 and falls through when t9(?) == 0.
  The `beq` branch at 0xda09f8c goes to 0xda09fa4 when a0(?) >= 0x18 (signed) and falls through when a0(?) < 0x18 (signed).
  The `beq` branch at 0xda09fa8 goes to 0xda09fbc when a0(?) >= 0x1d (signed) and falls through when a0(?) < 0x1d (signed).
  The `beq` branch at 0xda09fc0 goes to 0xda09fd8 when a0(?) >= 0x17 (signed) and falls through when a0(?) < 0x17 (signed).
  The `beq` branch at 0xda09fdc goes to 0xda09ff0 when a0(?) >= 0x1c (signed) and falls through when a0(?) < 0x1c (signed).
  The `beq` branch at 0xda09ff4 goes to 0xda0a00c when a0(?) >= 0x16 (signed) and falls through when a0(?) < 0x16 (signed).
  The `beq` branch at 0xda0a010 goes to 0xda0a024 when a0(?) >= 0x1b (signed) and falls through when a0(?) < 0x1b (signed).
  The `beq` branch at 0xda0a028 goes to 0xda0a040 when a0(?) >= 0x15 (signed) and falls through when a0(?) < 0x15 (signed).
  The `beq` branch at 0xda0a044 goes to 0xda0a058 when a0(?) >= 0x1a (signed) and falls through when a0(?) < 0x1a (signed).
  The `bne` branch at 0xda0a05c goes to 0xda09f88 when a0(?) != v1(=0x20) and falls through when a0(?) == v1(=0x20).
  The `bnel` branch at 0xda0a06c goes to 0xda0a07c when t6(?) != 0 and falls through when t6(?) == 0.
  The `bnel` branch at 0xda0a080 goes to 0xda0a090 when t7(?) != 0 and falls through when t7(?) == 0.
  The `bnel` branch at 0xda0a090 goes to 0xda0a0a0 when t8(?) != 0 and falls through when t8(?) == 0.
  The `bnel` branch at 0xda0a0a0 goes to 0xda0a0b0 when t9(?) != 0 and falls through when t9(?) == 0.
  The `bnel` branch at 0xda0a0b0 goes to 0xda0a0c0 when t6(?) != 0 and falls through when t6(?) == 0.
  The `bnel` branch at 0xda0a0c0 goes to 0xda0a0d0 when t7(?) != 0 and falls through when t7(?) == 0.
  The `bnel` branch at 0xda0a0d0 goes to 0xda0a0e0 when t8(?) != 0 and falls through when t8(?) == 0.
  The `bnel` branch at 0xda0a0e0 goes to 0xda0a0f0 when t9(?) != 0 and falls through when t9(?) == 0.
  The `beq` branch at 0xda0a0f8 goes to 0xda0a12c when a2(?) == at(=0x2a21) and falls through when a2(?) != at(=0x2a21).
  The `beq` branch at 0xda0a104 goes to 0xda0a8d0 when a2(?) == at(=0x2a23) and falls through when a2(?) != at(=0x2a23).
  The `beq` branch at 0xda0a110 goes to 0xda0b150 when a2(?) == at(=0x2a27) and falls through when a2(?) != at(=0x2a27).
  The `beq` branch at 0xda0a11c goes to 0xda0b9fc when a2(?) == at(=0x2a29) and falls through when a2(?) != at(=0x2a29).
  The `bne` branch at 0xda0a230 goes to 0xda0a2b0 when t6(?) < 0x3 (signed) and falls through when t6(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0a258 goes to 0xda0a2b4 when t6(?) != t7(=[[a0]+40]) and falls through when t6(?) == t7(=[[a0]+40]).
  The `bnel` branch at 0xda0a268 goes to 0xda0a2b4 when t8(?) != t9(=[[a0]+44]) and falls through when t8(?) == t9(=[[a0]+44]).
  The `bnel` branch at 0xda0a27c goes to 0xda0a2b4 when t6(?) != t7(=[[a0]+48]) and falls through when t6(?) == t7(=[[a0]+48]).
  The `bnel` branch at 0xda0a2e4 goes to 0xda0a364 when t9(?) < 0x4 (signed) and falls through when t9(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0a30c goes to 0xda0a364 when t9(?) != t6(=[[a0+8]+52]) and falls through when t9(?) == t6(=[[a0+8]+52]).
  The `bnel` branch at 0xda0a31c goes to 0xda0a364 when t7(?) != t8(=[[a0+8]+56]) and falls through when t7(?) == t8(=[[a0+8]+56]).
  The `bnel` branch at 0xda0a330 goes to 0xda0a364 when t9(?) != t6(=[[a0+8]+60]) and falls through when t9(?) == t6(=[[a0+8]+60]).
  The `bnel` branch at 0xda0a388 goes to 0xda0a408 when s5(?) < 0x3 (signed) and falls through when s5(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0a3b0 goes to 0xda0a408 when t7(?) != t8(?) and falls through when t7(?) == t8(?).
  The `bnel` branch at 0xda0a3c0 goes to 0xda0a408 when t9(?) != t6(?) and falls through when t9(?) == t6(?).
  The `bnel` branch at 0xda0a3d4 goes to 0xda0a408 when t7(?) != t8(?) and falls through when t7(?) == t8(?).
  The `bnel` branch at 0xda0a430 goes to 0xda0a4ac when t6(?) < 0x4 (signed) and falls through when t6(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0a454 goes to 0xda0a4ac when t9(?) != t6(=[[a0+4]+52]) and falls through when t9(?) == t6(=[[a0+4]+52]).
  The `bnel` branch at 0xda0a464 goes to 0xda0a4ac when t7(?) != t8(=[[a0+4]+56]) and falls through when t7(?) == t8(=[[a0+4]+56]).
  The `bnel` branch at 0xda0a478 goes to 0xda0a4ac when t9(?) != t6(=[[a0+4]+60]) and falls through when t9(?) == t6(=[[a0+4]+60]).
  The `beql` branch at 0xda0a4d8 goes to 0xda0a4ec when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0a4ec goes to 0xda0a4fc when t9(?) == 0 and falls through when t9(?) != 0.
  The `bne` branch at 0xda0a510 goes to 0xda0a51c when v1(?) < 0x5 (signed) and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a544 goes to 0xda0a554 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0a570 goes to 0xda0a5a4 when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` branch at 0xda0a59c goes to 0xda0a578 when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` branch at 0xda0a5a8 goes to 0xda0a5cc when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a5c4 goes to 0xda0a5b0 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0a5d8 goes to 0xda0a5ec when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0a5ec goes to 0xda0a5fc when t8(?) == 0 and falls through when t8(?) != 0.
  The `bne` branch at 0xda0a610 goes to 0xda0a61c when a1(?) < 0x5 (signed) and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a644 goes to 0xda0a654 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0a670 goes to 0xda0a6a4 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0xda0a69c goes to 0xda0a678 when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0xda0a6a8 goes to 0xda0a6cc when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a6c4 goes to 0xda0a6b0 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0a6d8 goes to 0xda0a6ec when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0a6ec goes to 0xda0a6fc when t7(?) == 0 and falls through when t7(?) != 0.
  The `bnel` branch at 0xda0a710 goes to 0xda0a720 when s5(?) < 0x5 (signed) and falls through when s5(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a744 goes to 0xda0a754 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0a770 goes to 0xda0a7a4 when s5(?) == 0 and falls through when s5(?) != 0.
  The `bne` branch at 0xda0a79c goes to 0xda0a778 when s5(?) != 0 and falls through when s5(?) == 0.
  The `beq` branch at 0xda0a7a8 goes to 0xda0a7cc when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a7c4 goes to 0xda0a7b0 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beq` branch at 0xda0a7d8 goes to 0xda0a7e8 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0a7e8 goes to 0xda0a7f8 when t9(?) == 0 and falls through when t9(?) != 0.
  The `bne` branch at 0xda0a80c goes to 0xda0a818 when a0(?) < 0x5 (signed) and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0a840 goes to 0xda0a850 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0a86c goes to 0xda0a8a0 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xda0a898 goes to 0xda0a874 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xda0a8a4 goes to 0xda0a8c8 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0a8c0 goes to 0xda0a8ac when a3(?) != 0 and falls through when a3(?) == 0.
  The `bnel` branch at 0xda0aa28 goes to 0xda0aab8 when t9(?) < 0x3 (signed) and falls through when t9(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0aa48 goes to 0xda0aab8 when t9(?) != t6(=[[a0]+56]) and falls through when t9(?) == t6(=[[a0]+56]).
  The `bnel` branch at 0xda0aa58 goes to 0xda0aab8 when t7(?) != t8(=[[a0]+60]) and falls through when t7(?) == t8(=[[a0]+60]).
  The `bnel` branch at 0xda0aa6c goes to 0xda0aab8 when t9(?) != t6(=[[a0]+64]) and falls through when t9(?) == t6(=[[a0]+64]).
  The `bnel` branch at 0xda0aae8 goes to 0xda0ab74 when t9(?) < 0x4 (signed) and falls through when t9(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0ab08 goes to 0xda0ab74 when t9(?) != t6(=[[a0+8]+72]) and falls through when t9(?) == t6(=[[a0+8]+72]).
  The `bnel` branch at 0xda0ab18 goes to 0xda0ab74 when t7(?) != t8(=[[a0+8]+76]) and falls through when t7(?) == t8(=[[a0+8]+76]).
  The `bnel` branch at 0xda0ab2c goes to 0xda0ab74 when t9(?) != t6(=[[a0+8]+80]) and falls through when t9(?) == t6(=[[a0+8]+80]).
  The `bnel` branch at 0xda0ab9c goes to 0xda0ac28 when s5(?) < 0x3 (signed) and falls through when s5(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0abbc goes to 0xda0ac28 when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  The `bnel` branch at 0xda0abcc goes to 0xda0ac28 when t6(?) != t7(?) and falls through when t6(?) == t7(?).
  The `bnel` branch at 0xda0abe0 goes to 0xda0ac28 when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  The `bne` branch at 0xda0ac54 goes to 0xda0acd4 when t8(?) < 0x4 (signed) and falls through when t8(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0ac6c goes to 0xda0acd8 when t7(?) != t8(=[[a0+4]+72]) and falls through when t7(?) == t8(=[[a0+4]+72]).
  The `bnel` branch at 0xda0ac7c goes to 0xda0acd8 when t9(?) != t6(=[[a0+4]+76]) and falls through when t9(?) == t6(=[[a0+4]+76]).
  The `bnel` branch at 0xda0ac90 goes to 0xda0acd8 when t7(?) != t8(=[[a0+4]+80]) and falls through when t7(?) == t8(=[[a0+4]+80]).
  The `beql` branch at 0xda0ad08 goes to 0xda0ad1c when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0ad1c goes to 0xda0ad2c when t8(?) == 0 and falls through when t8(?) != 0.
  The `bne` branch at 0xda0ad40 goes to 0xda0ad4c when v1(?) < 0x5 (signed) and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0ad74 goes to 0xda0ad84 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0ad9c goes to 0xda0ade4 when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` branch at 0xda0addc goes to 0xda0ada4 when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` branch at 0xda0ade8 goes to 0xda0ae10 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0ae08 goes to 0xda0adf0 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0ae1c goes to 0xda0ae30 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0ae30 goes to 0xda0ae40 when t7(?) == 0 and falls through when t7(?) != 0.
  The `bne` branch at 0xda0ae54 goes to 0xda0ae60 when a1(?) < 0x5 (signed) and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0ae88 goes to 0xda0ae98 when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` branch at 0xda0aeb0 goes to 0xda0aef8 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0xda0aef0 goes to 0xda0aeb8 when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0xda0aefc goes to 0xda0af24 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0af1c goes to 0xda0af04 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0af30 goes to 0xda0af44 when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` branch at 0xda0af44 goes to 0xda0af54 when t6(?) == 0 and falls through when t6(?) != 0.
  The `bnel` branch at 0xda0af68 goes to 0xda0af78 when s5(?) < 0x5 (signed) and falls through when s5(?) >= 0x5 (signed).
  The `beq` branch at 0xda0af9c goes to 0xda0afac when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0afc4 goes to 0xda0b00c when s5(?) == 0 and falls through when s5(?) != 0.
  The `bne` branch at 0xda0b004 goes to 0xda0afcc when s5(?) != 0 and falls through when s5(?) == 0.
  The `beq` branch at 0xda0b010 goes to 0xda0b038 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b030 goes to 0xda0b018 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beq` branch at 0xda0b044 goes to 0xda0b054 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b054 goes to 0xda0b064 when t8(?) == 0 and falls through when t8(?) != 0.
  The `bne` branch at 0xda0b078 goes to 0xda0b084 when a0(?) < 0x5 (signed) and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b0ac goes to 0xda0b0bc when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0b0d4 goes to 0xda0b11c when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xda0b114 goes to 0xda0b0dc when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xda0b120 goes to 0xda0b148 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b140 goes to 0xda0b128 when a3(?) != 0 and falls through when a3(?) == 0.
  The `bnel` branch at 0xda0b2a0 goes to 0xda0b334 when t6(?) < 0x3 (signed) and falls through when t6(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0b2c8 goes to 0xda0b334 when t6(?) != t7(=[[a0]+72]) and falls through when t6(?) == t7(=[[a0]+72]).
  The `bnel` branch at 0xda0b2d8 goes to 0xda0b334 when t8(?) != t9(=[[a0]+76]) and falls through when t8(?) == t9(=[[a0]+76]).
  The `bnel` branch at 0xda0b2ec goes to 0xda0b334 when t6(?) != t7(=[[a0]+80]) and falls through when t6(?) == t7(=[[a0]+80]).
  The `bnel` branch at 0xda0b368 goes to 0xda0b3f8 when t9(?) < 0x4 (signed) and falls through when t9(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0b390 goes to 0xda0b3f8 when t9(?) != t6(=[[a0+8]+92]) and falls through when t9(?) == t6(=[[a0+8]+92]).
  The `bnel` branch at 0xda0b3a0 goes to 0xda0b3f8 when t7(?) != t8(=[[a0+8]+96]) and falls through when t7(?) == t8(=[[a0+8]+96]).
  The `bnel` branch at 0xda0b3b4 goes to 0xda0b3f8 when t9(?) != t6(=[[a0+8]+100]) and falls through when t9(?) == t6(=[[a0+8]+100]).
  The `bnel` branch at 0xda0b424 goes to 0xda0b4b4 when s5(?) < 0x3 (signed) and falls through when s5(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0b44c goes to 0xda0b4b4 when t7(?) != t8(?) and falls through when t7(?) == t8(?).
  The `bnel` branch at 0xda0b45c goes to 0xda0b4b4 when t9(?) != t6(?) and falls through when t9(?) == t6(?).
  The `bnel` branch at 0xda0b470 goes to 0xda0b4b4 when t7(?) != t8(?) and falls through when t7(?) == t8(?).
  The `bnel` branch at 0xda0b4e4 goes to 0xda0b570 when t6(?) < 0x4 (signed) and falls through when t6(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0b508 goes to 0xda0b570 when t9(?) != t6(=[[a0+4]+92]) and falls through when t9(?) == t6(=[[a0+4]+92]).
  The `bnel` branch at 0xda0b518 goes to 0xda0b570 when t7(?) != t8(=[[a0+4]+96]) and falls through when t7(?) == t8(=[[a0+4]+96]).
  The `bnel` branch at 0xda0b52c goes to 0xda0b570 when t9(?) != t6(=[[a0+4]+100]) and falls through when t9(?) == t6(=[[a0+4]+100]).
  The `beql` branch at 0xda0b5a4 goes to 0xda0b5b8 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b5b8 goes to 0xda0b5c8 when t9(?) == 0 and falls through when t9(?) != 0.
  The `bne` branch at 0xda0b5dc goes to 0xda0b5e8 when v1(?) < 0x5 (signed) and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b610 goes to 0xda0b620 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b63c goes to 0xda0b680 when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` branch at 0xda0b678 goes to 0xda0b644 when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` branch at 0xda0b684 goes to 0xda0b6b0 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b6a8 goes to 0xda0b68c when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0b6bc goes to 0xda0b6d0 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b6d0 goes to 0xda0b6e0 when t8(?) == 0 and falls through when t8(?) != 0.
  The `bne` branch at 0xda0b6f4 goes to 0xda0b700 when a1(?) < 0x5 (signed) and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b728 goes to 0xda0b738 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0b754 goes to 0xda0b798 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0xda0b790 goes to 0xda0b75c when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0xda0b79c goes to 0xda0b7c8 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b7c0 goes to 0xda0b7a4 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0b7d4 goes to 0xda0b7e8 when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` branch at 0xda0b7e8 goes to 0xda0b7f8 when t7(?) == 0 and falls through when t7(?) != 0.
  The `bnel` branch at 0xda0b80c goes to 0xda0b81c when s5(?) < 0x5 (signed) and falls through when s5(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b840 goes to 0xda0b850 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b86c goes to 0xda0b8b0 when s5(?) == 0 and falls through when s5(?) != 0.
  The `bne` branch at 0xda0b8a8 goes to 0xda0b874 when s5(?) != 0 and falls through when s5(?) == 0.
  The `beq` branch at 0xda0b8b4 goes to 0xda0b8e0 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b8d8 goes to 0xda0b8bc when a3(?) != 0 and falls through when a3(?) == 0.
  The `beq` branch at 0xda0b8ec goes to 0xda0b8fc when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0b8fc goes to 0xda0b90c when t9(?) == 0 and falls through when t9(?) != 0.
  The `bne` branch at 0xda0b920 goes to 0xda0b92c when a0(?) < 0x5 (signed) and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0b954 goes to 0xda0b964 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0b980 goes to 0xda0b9c4 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xda0b9bc goes to 0xda0b988 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xda0b9c8 goes to 0xda0b9f4 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0b9ec goes to 0xda0b9d0 when a3(?) != 0 and falls through when a3(?) == 0.
  The `bnel` branch at 0xda0bb94 goes to 0xda0bc3c when t7(?) < 0x3 (signed) and falls through when t7(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0bbbc goes to 0xda0bc3c when t7(?) != t8(=[[a0]+88]) and falls through when t7(?) == t8(=[[a0]+88]).
  The `bnel` branch at 0xda0bbcc goes to 0xda0bc3c when t9(?) != t6(=[[a0]+92]) and falls through when t9(?) == t6(=[[a0]+92]).
  The `bnel` branch at 0xda0bbe0 goes to 0xda0bc3c when t7(?) != t8(=[[a0]+96]) and falls through when t7(?) == t8(=[[a0]+96]).
  The `bnel` branch at 0xda0bc74 goes to 0xda0bd18 when t7(?) < 0x4 (signed) and falls through when t7(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0bc9c goes to 0xda0bd18 when t7(?) != t8(=[[a0+8]+112]) and falls through when t7(?) == t8(=[[a0+8]+112]).
  The `bnel` branch at 0xda0bcac goes to 0xda0bd18 when t9(?) != t6(=[[a0+8]+116]) and falls through when t9(?) == t6(=[[a0+8]+116]).
  The `bnel` branch at 0xda0bcc0 goes to 0xda0bd18 when t7(?) != t8(=[[a0+8]+120]) and falls through when t7(?) == t8(=[[a0+8]+120]).
  The `bnel` branch at 0xda0bd48 goes to 0xda0bdec when s5(?) < 0x3 (signed) and falls through when s5(?) >= 0x3 (signed).
  The `bnel` branch at 0xda0bd70 goes to 0xda0bdec when t6(?) != t7(?) and falls through when t6(?) == t7(?).
  The `bnel` branch at 0xda0bd80 goes to 0xda0bdec when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  The `bnel` branch at 0xda0bd94 goes to 0xda0bdec when t6(?) != t7(?) and falls through when t6(?) == t7(?).
  The `bnel` branch at 0xda0be20 goes to 0xda0bec0 when t6(?) < 0x4 (signed) and falls through when t6(?) >= 0x4 (signed).
  The `bnel` branch at 0xda0be44 goes to 0xda0bec0 when t9(?) != t6(=[[a0+4]+112]) and falls through when t9(?) == t6(=[[a0+4]+112]).
  The `bnel` branch at 0xda0be54 goes to 0xda0bec0 when t7(?) != t8(=[[a0+4]+116]) and falls through when t7(?) == t8(=[[a0+4]+116]).
  The `bnel` branch at 0xda0be68 goes to 0xda0bec0 when t9(?) != t6(=[[a0+4]+120]) and falls through when t9(?) == t6(=[[a0+4]+120]).
  The `beql` branch at 0xda0bef8 goes to 0xda0bf0c when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` branch at 0xda0bf0c goes to 0xda0bf1c when t6(?) == 0 and falls through when t6(?) != 0.
  The `bne` branch at 0xda0bf30 goes to 0xda0bf3c when v1(?) < 0x5 (signed) and falls through when v1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0bf64 goes to 0xda0bf74 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0bf90 goes to 0xda0bfe8 when v1(?) == 0 and falls through when v1(?) != 0.
  The `bne` branch at 0xda0bfe0 goes to 0xda0bf98 when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` branch at 0xda0bfec goes to 0xda0c01c when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c014 goes to 0xda0bff4 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0c028 goes to 0xda0c03c when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` branch at 0xda0c03c goes to 0xda0c04c when t6(?) == 0 and falls through when t6(?) != 0.
  The `bne` branch at 0xda0c060 goes to 0xda0c06c when a1(?) < 0x5 (signed) and falls through when a1(?) >= 0x5 (signed).
  The `beq` branch at 0xda0c094 goes to 0xda0c0a4 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0c0c0 goes to 0xda0c118 when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` branch at 0xda0c110 goes to 0xda0c0c8 when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` branch at 0xda0c11c goes to 0xda0c14c when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c144 goes to 0xda0c124 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beql` branch at 0xda0c158 goes to 0xda0c16c when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` branch at 0xda0c16c goes to 0xda0c17c when t6(?) == 0 and falls through when t6(?) != 0.
  The `bnel` branch at 0xda0c190 goes to 0xda0c1a0 when s5(?) < 0x5 (signed) and falls through when s5(?) >= 0x5 (signed).
  The `beq` branch at 0xda0c1c4 goes to 0xda0c1d4 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0c1f0 goes to 0xda0c248 when s5(?) == 0 and falls through when s5(?) != 0.
  The `bne` branch at 0xda0c240 goes to 0xda0c1f8 when s5(?) != 0 and falls through when s5(?) == 0.
  The `beq` branch at 0xda0c24c goes to 0xda0c27c when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c274 goes to 0xda0c254 when a3(?) != 0 and falls through when a3(?) == 0.
  The `beq` branch at 0xda0c288 goes to 0xda0c298 when t8(?) == 0 and falls through when t8(?) != 0.
  The `beq` branch at 0xda0c298 goes to 0xda0c2a8 when t9(?) == 0 and falls through when t9(?) != 0.
  The `bne` branch at 0xda0c2bc goes to 0xda0c2c8 when a0(?) < 0x5 (signed) and falls through when a0(?) >= 0x5 (signed).
  The `beq` branch at 0xda0c2f0 goes to 0xda0c300 when t7(?) == 0 and falls through when t7(?) != 0.
  The `beq` branch at 0xda0c31c goes to 0xda0c374 when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` branch at 0xda0c36c goes to 0xda0c324 when a0(?) != 0 and falls through when a0(?) == 0.
  The `beq` branch at 0xda0c378 goes to 0xda0c3a8 when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` branch at 0xda0c3a0 goes to 0xda0c380 when a3(?) != 0 and falls through when a3(?) == 0.
  The `bnel` branch at 0xda0c3b4 goes to 0xda0c4f0 when t8(?) != 0 and falls through when t8(?) == 0.
  The `bnel` branch at 0xda0c3bc goes to 0xda0c4f0 when t9(?) != 0 and falls through when t9(?) == 0.
  The `bnel` branch at 0xda0c3d0 goes to 0xda0c4f0 when v0(=0x1) != t6(?) and falls through when v0(=0x1) == t6(?).
  The `bne` branch at 0xda0c3d8 goes to 0xda0c4ec when t7(?) != 0 and falls through when t7(?) == 0.
  The `bnel` branch at 0xda0c3e0 goes to 0xda0c4f0 when t8(?) != 0 and falls through when t8(?) == 0.
  The `bnel` branch at 0xda0c3ec goes to 0xda0c4f0 when v0(=0x1) != t9(?) and falls through when v0(=0x1) == t9(?).
  The `bne` branch at 0xda0c400 goes to 0xda0c4ec when t6(?) != 0 and falls through when t6(?) == 0.
  The `bltz` branch at 0xda0c50c goes to 0xda0cd40 when t7(?) < 0 (signed) and falls through when t7(?) >= 0 (signed).
  The `beq` branch at 0xda0c55c goes to 0xda0c56c when (t0(?) & 0x10) == 0 and falls through when (t0(?) & 0x10) != 0.
  The `beq` branch at 0xda0c578 goes to 0xda0c588 when (t0(?) & 0x20) == 0 and falls through when (t0(?) & 0x20) != 0.
  The `beq` branch at 0xda0c59c goes to 0xda0c5b0 when (t0(?) & 0x40) == 0 and falls through when (t0(?) & 0x40) != 0.
  The `beq` branch at 0xda0c5c4 goes to 0xda0c5d4 when (t0(?) & 0x80) == 0 and falls through when (t0(?) & 0x80) != 0.
  The `beq` branch at 0xda0c5fc goes to 0xda0c610 when (t0(?) & 0x100) == 0 and falls through when (t0(?) & 0x100) != 0.
  The `beq` branch at 0xda0c628 goes to 0xda0c63c when (t0(?) & 0x200) == 0 and falls through when (t0(?) & 0x200) != 0.
  The `beq` branch at 0xda0c650 goes to 0xda0c664 when (t0(?) & 0x400) == 0 and falls through when (t0(?) & 0x400) != 0.
  The `beq` branch at 0xda0c678 goes to 0xda0c688 when (t0(?) & 0x800) == 0 and falls through when (t0(?) & 0x800) != 0.
  The `bgez` branch at 0xda0c6a0 goes to 0xda0c6b4 when t6(?) >= 0 (signed) and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0xda0c6c4 goes to 0xda0c6d8 when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xda0c6f0 goes to 0xda0c704 when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xda0c71c goes to 0xda0c730 when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xda0c74c goes to 0xda0c768 when t7(?) >= 0 (signed) and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xda0c778 goes to 0xda0c794 when t7(?) >= 0 (signed) and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xda0c7ac goes to 0xda0c7c8 when t8(?) >= 0 (signed) and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xda0c7e0 goes to 0xda0c7f4 when t7(?) >= 0 (signed) and falls through when t7(?) < 0 (signed).
  The `beq` branch at 0xda0c808 goes to 0xda0c824 when (t0(?) & 0x1000) == 0 and falls through when (t0(?) & 0x1000) != 0.
  The `beq` branch at 0xda0c830 goes to 0xda0c84c when (t0(?) & 0x2000) == 0 and falls through when (t0(?) & 0x2000) != 0.
  The `beq` branch at 0xda0c860 goes to 0xda0c87c when (t0(?) & 0x4000) == 0 and falls through when (t0(?) & 0x4000) != 0.
  The `beq` branch at 0xda0c890 goes to 0xda0c8a4 when (t0(?) & 0x8000) == 0 and falls through when (t0(?) & 0x8000) != 0.
  The `beq` branch at 0xda0c8f4 goes to 0xda0c90c when (t1(?) & 0x10) == 0 and falls through when (t1(?) & 0x10) != 0.
  The `beq` branch at 0xda0c918 goes to 0xda0c92c when (t1(?) & 0x20) == 0 and falls through when (t1(?) & 0x20) != 0.
  The `beq` branch at 0xda0c940 goes to 0xda0c95c when (t1(?) & 0x40) == 0 and falls through when (t1(?) & 0x40) != 0.
  The `beq` branch at 0xda0c970 goes to 0xda0c984 when (t1(?) & 0x80) == 0 and falls through when (t1(?) & 0x80) != 0.
  The `beq` branch at 0xda0c998 goes to 0xda0c9b4 when (t1(?) & 0xa0) == 0 and falls through when (t1(?) & 0xa0) != 0.
  The `beq` branch at 0xda0c9cc goes to 0xda0c9e0 when (t1(?) & 0x140) == 0 and falls through when (t1(?) & 0x140) != 0.
  The `beq` branch at 0xda0c9f4 goes to 0xda0ca10 when (t1(?) & 0x280) == 0 and falls through when (t1(?) & 0x280) != 0.
  The `beq` branch at 0xda0ca24 goes to 0xda0ca38 when (t1(?) & 0x500) == 0 and falls through when (t1(?) & 0x500) != 0.
  The `beq` branch at 0xda0ca7c goes to 0xda0ca94 when (t1(?) & 0x1000) == 0 and falls through when (t1(?) & 0x1000) != 0.
  The `beq` branch at 0xda0caa0 goes to 0xda0cabc when (t1(?) & 0x2000) == 0 and falls through when (t1(?) & 0x2000) != 0.
  The `beq` branch at 0xda0cad0 goes to 0xda0caec when (t1(?) & 0x4000) == 0 and falls through when (t1(?) & 0x4000) != 0.
  The `beq` branch at 0xda0cb00 goes to 0xda0cb14 when (t1(?) & 0x8000) == 0 and falls through when (t1(?) & 0x8000) != 0.
  The `beq` branch at 0xda0cb28 goes to 0xda0cb44 when (t1(?) & a1(=0x100000)) == 0 and falls through when (t1(?) & a1(=0x100000)) != 0.
  The `beq` branch at 0xda0cb50 goes to 0xda0cb6c when (t1(?) & a3(=0x200000)) == 0 and falls through when (t1(?) & a3(=0x200000)) != 0.
  The `beq` branch at 0xda0cb80 goes to 0xda0cb9c when (t1(?) & t2(=0x400000)) == 0 and falls through when (t1(?) & t2(=0x400000)) != 0.
  The `beq` branch at 0xda0cbb0 goes to 0xda0cbc4 when (t1(?) & t4(=0x800000)) == 0 and falls through when (t1(?) & t4(=0x800000)) != 0.
  The `bgez` branch at 0xda0cbd8 goes to 0xda0cbf4 when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xda0cc00 goes to 0xda0cc1c when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xda0cc30 goes to 0xda0cc4c when t7(?) >= 0 (signed) and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xda0cc60 goes to 0xda0cc74 when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0xda0cc88 goes to 0xda0cca4 when (t1(?) & t5(=0x10000)) == 0 and falls through when (t1(?) & t5(=0x10000)) != 0.
  The `beq` branch at 0xda0ccb0 goes to 0xda0cccc when (t1(?) & ra(=0x20000)) == 0 and falls through when (t1(?) & ra(=0x20000)) != 0.
  The `beq` branch at 0xda0cce0 goes to 0xda0ccfc when (t1(?) & s0(=0x40000)) == 0 and falls through when (t1(?) & s0(=0x40000)) != 0.
  The `beq` branch at 0xda0cd10 goes to 0xda0cd24 when (t1(?) & s1(=0x80000)) == 0 and falls through when (t1(?) & s1(=0x80000)) != 0.
  The `bne` branch at 0xda0cd50 goes to 0xda0d19c when v0(=ret(getenv)) != 0 and falls through when v0(=ret(getenv)) == 0.
  The `beq` branch at 0xda0cdb8 goes to 0xda0d19c when s4(=[[0x1010]+6072]) >= 0x5 (unsigned) and falls through when s4(=[[0x1010]+6072]) < 0x5 (unsigned).
  The `beq` branch at 0xda0ce98 goes to 0xda0d19c when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed).
  The `beq` branch at 0xda0cecc goes to 0xda0cf24 when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed).
  The `bne` branch at 0xda0cf1c goes to 0xda0ced4 when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed) and falls through when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed).
  The `bne` branch at 0xda0cf30 goes to 0xda0cea4 when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed) and falls through when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed).
  The `beq` branch at 0xda0cf5c goes to 0xda0d19c when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed).
  The `beq` branch at 0xda0cf94 goes to 0xda0d030 when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed).
  The `beq` branch at 0xda0cfc4 goes to 0xda0d01c when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed).
  The `bne` branch at 0xda0d014 goes to 0xda0cfcc when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed) and falls through when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed).
  The `bne` branch at 0xda0d028 goes to 0xda0cf9c when t8(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < t7(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed) and falls through when t8(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= t7(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed).
  The `bne` branch at 0xda0d03c goes to 0xda0cf68 when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed) and falls through when t6(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= t9(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed).
  The `beq` branch at 0xda0d068 goes to 0xda0d19c when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]+2) (signed).
  The `beq` branch at 0xda0d0a4 goes to 0xda0d188 when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]+2) (signed).
  The `beq` branch at 0xda0d0d8 goes to 0xda0d174 when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]+2) (signed).
  The `beq` branch at 0xda0d108 goes to 0xda0d160 when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed) and falls through when v0(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < v1(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]+2) (signed).
  The `bne` branch at 0xda0d158 goes to 0xda0d110 when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) < t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed) and falls through when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))]) >= t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)]) (signed).
  The `bne` branch at 0xda0d16c goes to 0xda0d0e0 when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) < t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed) and falls through when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-4]) >= t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-4]) (signed).
  The `bne` branch at 0xda0d180 goes to 0xda0d0ac when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) < t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed) and falls through when t7(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-8]) >= t6(=[(([[0x1010]+6072] << 0x2) + sp-1560)-8]) (signed).
  The `bne` branch at 0xda0d194 goes to 0xda0d078 when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) < t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-12]) (signed) and falls through when t9(=[(sp-1540 + ([[0x1010]+6072] << 0x2))-12]) >= t8(=[(([[0x1010]+6072] << 0x2) + sp-1560)-12]) (signed).
  The return at 0xda0d1b8 has v0 = ?.

- `__glim_TextureColorMaskSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda1a1c4 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda1a1f0 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda1a20c loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda1a210 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `sb` at 0xda1a228 stores 1 byte to [0x1010] +0x9d8 via base v0 ([0x1010]) with value unknown.
  The `sb` at 0xda1a22c stores 1 byte to [0x1010] +0x9d9 via base v0 ([0x1010]) with value unknown.
  The `sb` at 0xda1a230 stores 1 byte to [0x1010] +0x9da via base v0 ([0x1010]) with value unknown.
  The `sb` at 0xda1a234 stores 1 byte to [0x1010] +0x9db via base v0 ([0x1010]) with value unknown.
  The `sw` at 0xda1a23c stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xda1a240 loads 4 bytes from [0x1010] +0x2e24 via base v0 ([0x1010]).
  The `sw` at 0xda1a248 stores 4 bytes to [0x1010] +0x2e24 via base v0 ([0x1010]) with value ([[0x1010]+11812] | 0x1).
  The `jalr` at 0xda1a218 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0xda1a208 goes to 0xda1a228 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The return at 0xda1a254 has v0 = ?.

- `__glim_TexImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda1d6dc (o32).
  It occupies 656 bytes.
  The `lw` at 0xda1d70c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda1d710 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda1d728 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda1d740 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda1d744, `lw` at 0xda1d7e0.
  The `lw` at 0xda1d75c loads 4 bytes from abs 0xda854e0 via base gp (0xda8bc00).
  The `lw` at 0xda1d7b0 loads 4 bytes from abs 0xda853ec via base gp (0xda8bc00).
  The `lw` at 0xda1d7c8 loads 4 bytes from ret(__glLookUpTextureObject) +0x0 via base v0 (ret(__glLookUpTextureObject)).
  The `lw` at 0xda1d7f8 loads 4 bytes from [0x1010] +0x2fc via base s0 ([0x1010]).
  The `lw` at 0xda1d804 loads 4 bytes from [[0x1010]+764] +0x40 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda1d810 loads 4 bytes from [[0x1010]+764] +0x0 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda1d830 loads 4 bytes from [[0x1010]+764] +0x44 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda1d864 loads 4 bytes from unknown (base unknown) via base a1 (unknown).
  The `lw` at 0xda1d890 loads 4 bytes from abs 0xda854d0 via base gp (0xda8bc00).
  The `lw` at 0xda1d8d0 loads 4 bytes from abs 0xda854c8 via base gp (0xda8bc00).
  The `lw` at 0xda1d8f0 loads 4 bytes from abs 0xda8470c via base gp (0xda8bc00).
  The `lw` at 0xda1d908 loads 4 bytes from abs 0xda844e8 via base gp (0xda8bc00).
  The `lw` at 0xda1d920 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `sb` at 0xda1d944 stores 1 byte to unknown (base unknown) via base t2 (unknown) with value 0x1.
  The `sw` at 0xda1d948 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xda1d94c loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xda1d954 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x1).
  The `jalr` at 0xda1d730 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1d74c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1d79c calls `__glCheckTexImage3DArgs [0xda1c9fc]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda1d7bc calls `__glLookUpTextureObject [0xda179c8]` with a0=[0x1010], a1=0x806f, a2=unknown, a3=unknown.
  The `jalr` at 0xda1d7e8 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda1d870 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda1d8bc calls `__glInitTexSourceUnpack [0xda1c6b8]` with a0=[0x1010], a1=sp-508, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xda1d8dc calls `__glInitTexImageStore [0xda1c3e0]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda1d8f4 calls `__glInitUnpacker3D [0xd9af628]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda1d90c calls `__glInitPacker3D [0xd99e4b4]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda1d92c calls `(unknown callee)` with a0=[0x1010], a1=sp-508, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda1d718 goes to 0xda1d75c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda1d720 goes to 0xda1d744 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda1d7a8 goes to 0xda1d958 when v0(=ret(__glCheckTexImage3DArgs)) == 0 and falls through when v0(=ret(__glCheckTexImage3DArgs)) != 0.
  The `bne` branch at 0xda1d7d8 goes to 0xda1d7f8 when t5(=[ret(__glLookUpTextureObject)]) < 0x3 (signed) and falls through when t5(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda1d808 goes to 0xda1d848 when v1(=[[[0x1010]+764]+64]) == 0 and falls through when v1(=[[[0x1010]+764]+64]) != 0.
  The `beq` branch at 0xda1d81c goes to 0xda1d830 when a0(=[[[0x1010]+764]]) == at(=0x8011) and falls through when a0(=[[[0x1010]+764]]) != at(=0x8011).
  The `bne` branch at 0xda1d828 goes to 0xda1d848 when a0(=[[[0x1010]+764]]) != at(=0x8012) and falls through when a0(=[[[0x1010]+764]]) == at(=0x8012).
  The `beql` branch at 0xda1d880 goes to 0xda1d93c when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` branch at 0xda1d888 goes to 0xda1d938 when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The return at 0xda1d964 has v0 = ?.

- `__glim_TexFilterFuncSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda1dd80 (o32).
  It occupies 640 bytes.
  The `lw` at 0xda1ddc8 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xda1dde0 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  4 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda1dde4, `lw` at 0xda1de1c, `lw` at 0xda1de40.
  The `lw` at 0xda1ddfc loads 4 bytes from abs 0xda853e0 via base gp (0xda8bc00).
  The `lw` at 0xda1dec4 loads 4 bytes from abs 0xda83c64 via base gp (0xda8bc00).
  4 such `lw` accesses load 4 bytes from abs 0xda873f4 via base gp (0xda8bc00), including `lw` at 0xda1def0, `lw` at 0xda1df1c, `lw` at 0xda1df3c.
  The `jalr` at 0xda1ddec calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1de08 calls `__glLookUpTextureParams [0xda178a0]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda1de24 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=ret(__glLookUpTextureParams), a2=unknown, a3=unknown.
  The `jalr` at 0xda1de48 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=ret(__glLookUpTextureParams), a2=unknown, a3=unknown.
  The `jalr` at 0xda1dea4 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=ret(__glLookUpTextureParams), a2=unknown, a3=unknown.
  The `jalr` at 0xda1def8 calls `truncf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda1df24 calls `truncf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda1df40 calls `truncf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda1df90 calls `truncf` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `bne` branch at 0xda1dddc goes to 0xda1ddfc when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bne` branch at 0xda1de14 goes to 0xda1de34 when v0(=ret(__glLookUpTextureParams)) != 0 and falls through when v0(=ret(__glLookUpTextureParams)) == 0.
  The `beq` branch at 0xda1de38 goes to 0xda1de58 when s3(=a1) == at(=0x8146) and falls through when s3(=a1) != at(=0x8146).
  The `beq` branch at 0xda1de60 goes to 0xda1de88 when a0(=a2-1) == at(=0x1) and falls through when a0(=a2-1) != at(=0x1).
  The `beql` branch at 0xda1de78 goes to 0xda1de8c when v0(?) >= 0x401 (signed) and falls through when v0(?) < 0x401 (signed).
  The `bnel` branch at 0xda1de80 goes to 0xda1de6c when a0(=a2-1) != v0(?) and falls through when a0(=a2-1) == v0(?).
  The `bnel` branch at 0xda1de94 goes to 0xda1deb8 when t9(?) < 0x401 (signed) and falls through when t9(?) >= 0x401 (signed).
  The `bc1f` branch at 0xda1df14 goes to 0xda1df88 when not (f30 < f2 (c.lt.d at 0xda1df0c)) and falls through when f30 < f2 (c.lt.d at 0xda1df0c).
  The `bne` branch at 0xda1dfc4 goes to 0xda1def0 when s1(?) != s3(=0x84) and falls through when s1(?) == s3(=0x84).
  The return at 0xda1dff8 has v0 = ?.

- `__glim_TexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2b6fc (o32).
  It occupies 436 bytes.
  The `lw` at 0xda2b72c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2b730 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2b748 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda2b760 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  The `lw` at 0xda2b764 loads 4 bytes from abs 0xda84c34 via base gp (0xda8bc00).
  The `lw` at 0xda2b77c loads 4 bytes from abs 0xda8566c via base gp (0xda8bc00).
  The `lw` at 0xda2b7e8 loads 4 bytes from abs 0xda854d0 via base gp (0xda8bc00).
  The `lw` at 0xda2b820 loads 4 bytes from abs 0xda85660 via base gp (0xda8bc00).
  The `lw` at 0xda2b854 loads 4 bytes from abs 0xda8470c via base gp (0xda8bc00).
  The `lw` at 0xda2b86c loads 4 bytes from abs 0xda844e8 via base gp (0xda8bc00).
  The `lw` at 0xda2b884 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda2b750 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b76c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2b7c4 calls `__glCheckTexSubImage3DArgs [0xda2ae0c]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2b80c calls `__glInitTexSourceUnpack [0xda1c6b8]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2b840 calls `__glInitTexSubImageStore [0xda2aae0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda2b858 calls `__glInitUnpacker3D [0xd9af628]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2b870 calls `__glInitPacker3D [0xd99e4b4]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2b890 calls `(unknown callee)` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2b738 goes to 0xda2b77c when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2b740 goes to 0xda2b764 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2b7d0 goes to 0xda2b89c when v0(=ret(__glCheckTexSubImage3DArgs)) == 0 and falls through when v0(=ret(__glCheckTexSubImage3DArgs)) != 0.
  The return at 0xda2b8a8 has v0 = ?.

- `__glim_BindTextureEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c0d4 (o32).
  It occupies 276 bytes.
  The `lw` at 0xda2c0f4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2c0fc loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2c118 loads 4 bytes from [0x1010] +0x2e40 via base a3 ([0x1010]).
  The `sw` at 0xda2c138 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2c13c, `lw` at 0xda2c190.
  The `lw` at 0xda2c1a8 loads 4 bytes from abs 0xda8569c via base gp (0xda8bc00).
  The `sw` at 0xda2c1c4 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xda2c1c8 loads 4 bytes from unknown (base unknown) via base a3 (unknown).
  The `sw` at 0xda2c1d4 stores 4 bytes to unknown (base unknown) via base a3 (unknown) with value unknown.
  The `jalr` at 0xda2c120 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xda2c144 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xda2c198 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=unknown, a2=a0 at entry (arg0), a3=unknown.
  The `jalr` at 0xda2c1b4 calls `__glBindTexture [0xda2be88]` with a0=unknown, a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=unknown.
  The `beq` branch at 0xda2c100 goes to 0xda2c154 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2c108 goes to 0xda2c13c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2c158 goes to 0xda2c178 when a2(=a0) == at(=0xde0) and falls through when a2(=a0) != at(=0xde0).
  The `beq` branch at 0xda2c160 goes to 0xda2c180 when a2(=a0) == at(=0xde1) and falls through when a2(=a0) != at(=0xde1).
  The `beq` branch at 0xda2c168 goes to 0xda2c188 when a2(=a0) == at(=0x806f) and falls through when a2(=a0) != at(=0x806f).
  The return at 0xda2c1e0 has v0 = ?.

- `__glim_PrioritizeTexturesEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c1e8 (o32).
  It occupies 412 bytes.
  The `lw` at 0xda2c228 loads 4 bytes from abs 0x1018 via base v0 (0x1000).
  The `lw` at 0xda2c240 loads 4 bytes from abs 0x1010 via base v0 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2c244, `lw` at 0xda2c264.
  The `lw` at 0xda2c29c loads 4 bytes from unknown (base unknown) via base s1 (unknown).
  The `lw` at 0xda2c2a8 loads 4 bytes from abs 0xda85070 via base gp (0xda8bc00).
  The `lw` at 0xda2c2b0 loads 4 bytes from [0x1010] +0x6e80 via base s2 ([0x1010]).
  The `lw` at 0xda2c2c8 loads 4 bytes from abs 0xda83c48 via base gp (0xda8bc00).
  The `lw` at 0xda2c2e0 loads 4 bytes from [0x1010] +0xdd8 via base s2 ([0x1010]).
  2 such `lw` accesses load 4 bytes from ret(__glNamesLockData) +0x8 via base s0 (ret(__glNamesLockData)), including `lw` at 0xda2c2e8, `lw` at 0xda2c318.
  The `lw` at 0xda2c2f0 loads 4 bytes from [0x1010] +0x6e5c via base s2 ([0x1010]).
  The `lw` at 0xda2c2f8 loads 4 bytes from ret(__glNamesLockData) +0xec via base s0 (ret(__glNamesLockData)).
  The `lw` at 0xda2c300 loads 4 bytes from ([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2)) +0x0 via base t2 (([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))).
  The `lw` at 0xda2c304 loads 4 bytes from [([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))] +0xdc via base v0 ([([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))]).
  The `lw` at 0xda2c31c loads 4 bytes from [0x1010] +0x9b0 via base s2 ([0x1010]).
  The `lw` at 0xda2c330 loads 4 bytes from abs 0xda85078 via base gp (0xda8bc00).
  The `jalr` at 0xda2c24c calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c26c calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c2b4 calls `__glNamesLockData [0xd9f4640]` with a0=[0x1010], a1=[[0x1010]+28288], a2=unknown, a3=unknown.
  The `jalr` at 0xda2c2dc calls `Clampf [0xda17a18]` with a0=unknown, a1=unknown, a2=[[0x1010]+3544], a3=unknown; fp f14=f20.
  The `jalr` at 0xda2c33c calls `__glNamesUnlockData [0xd9f5084]` with a0=[0x1010], a1=ret(__glNamesLockData), a2=unknown, a3=unknown.
  The `bne` branch at 0xda2c23c goes to 0xda2c25c when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bgez` branch at 0xda2c25c goes to 0xda2c278 when s6(=a0) >= 0 (signed) and falls through when s6(=a0) < 0 (signed).
  The `beql` branch at 0xda2c278 goes to 0xda2c358 when s6(=a0) == 0 and falls through when s6(=a0) != 0.
  The `blez` branch at 0xda2c280 goes to 0xda2c354 when s6(=a0) <= 0 (signed) and falls through when s6(=a0) > 0 (signed).
  The `beql` branch at 0xda2c2a0 goes to 0xda2c34c when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` branch at 0xda2c2c0 goes to 0xda2c348 when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xda2c308 goes to 0xda2c330 when t3(=[ret(__glNamesLockData)+236]) != t4(=[[([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) and falls through when t3(=[ret(__glNamesLockData)+236]) == t4(=[[([[0x1010]+28252] + ([ret(__glNamesLockData)+8] << 0x2))]+220]).
  The `bne` branch at 0xda2c34c goes to 0xda2c29c when s1(?) != s4(=((a0 << 0x2) + a1)) and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  The return at 0xda2c37c has v0 = ?.

- `__glim_CopyTexImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c67c (o32).
  It occupies 632 bytes.
  The `lw` at 0xda2c6ac loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2c6b0 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2c6c8 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda2c6e0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2c6e4, `lw` at 0xda2c780.
  The `lw` at 0xda2c6fc loads 4 bytes from abs 0xda854e4 via base gp (0xda8bc00).
  The `lw` at 0xda2c750 loads 4 bytes from abs 0xda853ec via base gp (0xda8bc00).
  The `lw` at 0xda2c768 loads 4 bytes from ret(__glLookUpTextureObject) +0x0 via base v0 (ret(__glLookUpTextureObject)).
  The `lw` at 0xda2c798 loads 4 bytes from [0x1010] +0x2fc via base s0 ([0x1010]).
  The `lw` at 0xda2c7a0 loads 4 bytes from [[0x1010]+764] +0x40 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda2c7ac loads 4 bytes from [[0x1010]+764] +0x0 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda2c7ec loads 4 bytes from unknown (base unknown) via base a1 (unknown).
  The `lw` at 0xda2c808 loads 4 bytes from abs 0xda84654 via base gp (0xda8bc00).
  The `lw` at 0xda2c83c loads 4 bytes from abs 0xda854c8 via base gp (0xda8bc00).
  The `lw` at 0xda2c85c loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xda2c874 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xda2c88c loads 4 bytes from abs 0xda845f4 via base gp (0xda8bc00).
  The `lw` at 0xda2c8ac loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `sb` at 0xda2c8c8 stores 1 byte to unknown (base unknown) via base t3 (unknown) with value 0x1.
  The `sw` at 0xda2c8d0 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xda2c8d4 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xda2c8dc stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x1).
  The `jalr` at 0xda2c6d0 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c6ec calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c73c calls `__glCheckCopyTexImageArgs [0xda1cb38]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2c75c calls `__glLookUpTextureObject [0xda179c8]` with a0=[0x1010], a1=0xde0, a2=unknown, a3=unknown.
  The `jalr` at 0xda2c788 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda2c7f8 calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2c828 calls `__glInitReadImageSrcInfo [0xd9ab7b8]` with a0=[0x1010], a1=sp-508, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xda2c848 calls `__glInitTexImageStore [0xda1c3e0]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda2c860 calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda2c878 calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda2c890 calls `__glClipReadPixels [0xd9a8950]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda2c8b4 calls `(unknown callee)` with a0=[0x1010], a1=sp-508, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2c6b8 goes to 0xda2c6fc when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2c6c0 goes to 0xda2c6e4 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2c748 goes to 0xda2c8e0 when v0(=ret(__glCheckCopyTexImageArgs)) == 0 and falls through when v0(=ret(__glCheckCopyTexImageArgs)) != 0.
  The `bne` branch at 0xda2c778 goes to 0xda2c798 when t4(=[ret(__glLookUpTextureObject)]) < 0x3 (signed) and falls through when t4(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2c7a4 goes to 0xda2c7cc when v1(=[[[0x1010]+764]+64]) == 0 and falls through when v1(=[[[0x1010]+764]+64]) != 0.
  The `bne` branch at 0xda2c7b8 goes to 0xda2c7cc when t5(=[[[0x1010]+764]]) != at(=0x8010) and falls through when t5(=[[[0x1010]+764]]) == at(=0x8010).
  The `beq` branch at 0xda2c800 goes to 0xda2c8cc when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xda2c898 goes to 0xda2c8e0 when v0(=ret(__glClipReadPixels)) == 0 and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2c8ec has v0 = ?.

- `__glim_CopyTexImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2c8f4 (o32).
  It occupies 660 bytes.
  The `lw` at 0xda2c924 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2c928 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2c940 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda2c958 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2c95c, `lw` at 0xda2c9f8.
  The `lw` at 0xda2c974 loads 4 bytes from abs 0xda854e4 via base gp (0xda8bc00).
  The `lw` at 0xda2c9c8 loads 4 bytes from abs 0xda853ec via base gp (0xda8bc00).
  The `lw` at 0xda2c9e0 loads 4 bytes from ret(__glLookUpTextureObject) +0x0 via base v0 (ret(__glLookUpTextureObject)).
  The `lw` at 0xda2ca10 loads 4 bytes from [0x1010] +0x2fc via base s0 ([0x1010]).
  The `lw` at 0xda2ca1c loads 4 bytes from [[0x1010]+764] +0x40 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda2ca28 loads 4 bytes from [[0x1010]+764] +0x0 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda2ca48 loads 4 bytes from [[0x1010]+764] +0x44 via base v0 ([[0x1010]+764]).
  The `lw` at 0xda2ca80 loads 4 bytes from unknown (base unknown) via base a1 (unknown).
  The `lw` at 0xda2ca9c loads 4 bytes from abs 0xda84654 via base gp (0xda8bc00).
  The `lw` at 0xda2cad0 loads 4 bytes from abs 0xda854c8 via base gp (0xda8bc00).
  The `lw` at 0xda2caf0 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xda2cb08 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xda2cb20 loads 4 bytes from abs 0xda845f4 via base gp (0xda8bc00).
  The `lw` at 0xda2cb40 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `sb` at 0xda2cb5c stores 1 byte to unknown (base unknown) via base t8 (unknown) with value 0x1.
  The `sw` at 0xda2cb64 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x2.
  The `lw` at 0xda2cb68 loads 4 bytes from [0x1010] +0x2e24 via base s0 ([0x1010]).
  The `sw` at 0xda2cb70 stores 4 bytes to [0x1010] +0x2e24 via base s0 ([0x1010]) with value ([[0x1010]+11812] | 0x1).
  The `jalr` at 0xda2c948 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c964 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2c9b4 calls `__glCheckCopyTexImageArgs [0xda1cb38]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2c9d4 calls `__glLookUpTextureObject [0xda179c8]` with a0=[0x1010], a1=0xde1, a2=unknown, a3=unknown.
  The `jalr` at 0xda2ca00 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda2ca8c calls `(unknown callee)` with a0=[0x1010], a1=unknown, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2cabc calls `__glInitReadImageSrcInfo [0xd9ab7b8]` with a0=[0x1010], a1=sp-508, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xda2cadc calls `__glInitTexImageStore [0xda1c3e0]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda2caf4 calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cb0c calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cb24 calls `__glClipReadPixels [0xd9a8950]` with a0=[0x1010], a1=sp-508, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cb48 calls `(unknown callee)` with a0=[0x1010], a1=sp-508, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2c930 goes to 0xda2c974 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2c938 goes to 0xda2c95c when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2c9c0 goes to 0xda2cb74 when v0(=ret(__glCheckCopyTexImageArgs)) == 0 and falls through when v0(=ret(__glCheckCopyTexImageArgs)) != 0.
  The `bne` branch at 0xda2c9f0 goes to 0xda2ca10 when t5(=[ret(__glLookUpTextureObject)]) < 0x3 (signed) and falls through when t5(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2ca20 goes to 0xda2ca60 when v1(=[[[0x1010]+764]+64]) == 0 and falls through when v1(=[[[0x1010]+764]+64]) != 0.
  The `beq` branch at 0xda2ca34 goes to 0xda2ca48 when a0(=[[[0x1010]+764]]) == at(=0x8011) and falls through when a0(=[[[0x1010]+764]]) != at(=0x8011).
  The `bne` branch at 0xda2ca40 goes to 0xda2ca60 when a0(=[[[0x1010]+764]]) != at(=0x8012) and falls through when a0(=[[[0x1010]+764]]) == at(=0x8012).
  The `beq` branch at 0xda2ca94 goes to 0xda2cb60 when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xda2cb2c goes to 0xda2cb74 when v0(=ret(__glClipReadPixels)) == 0 and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2cb80 has v0 = ?.

- `__glim_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2cb88 (o32).
  It occupies 492 bytes.
  The `lw` at 0xda2cbb8 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2cbbc loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2cbd4 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda2cbec stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2cbf0, `lw` at 0xda2cc88.
  The `lw` at 0xda2cc08 loads 4 bytes from abs 0xda85670 via base gp (0xda8bc00).
  The `lw` at 0xda2cc5c loads 4 bytes from abs 0xda853ec via base gp (0xda8bc00).
  The `lw` at 0xda2cc70 loads 4 bytes from ret(__glLookUpTextureObject) +0x0 via base v0 (ret(__glLookUpTextureObject)).
  The `lw` at 0xda2cca0 loads 4 bytes from abs 0xda84654 via base gp (0xda8bc00).
  The `lw` at 0xda2cccc loads 4 bytes from abs 0xda85660 via base gp (0xda8bc00).
  The `lw` at 0xda2ccf8 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xda2cd10 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xda2cd28 loads 4 bytes from abs 0xda845f4 via base gp (0xda8bc00).
  The `lw` at 0xda2cd4c loads 4 bytes from unknown (base unknown) via base t9 (unknown).
  The `jalr` at 0xda2cbdc calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cbf8 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cc48 calls `__glCheckCopyTexSubImageArgs [0xda2af60]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2cc68 calls `__glLookUpTextureObject [0xda179c8]` with a0=[0x1010], a1=0xde0, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cc90 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2ccb8 calls `__glInitReadImageSrcInfo [0xd9ab7b8]` with a0=[0x1010], a1=sp-504, a2=a3 at entry (arg3), a3=unknown.
  The `jalr` at 0xda2cce4 calls `__glInitTexSubImageStore [0xda2aae0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda2ccfc calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cd14 calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cd2c calls `__glClipReadPixels [0xd9a8950]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cd54 calls `(unknown callee)` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2cbc4 goes to 0xda2cc08 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2cbcc goes to 0xda2cbf0 when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2cc54 goes to 0xda2cd60 when v0(=ret(__glCheckCopyTexSubImageArgs)) == 0 and falls through when v0(=ret(__glCheckCopyTexSubImageArgs)) != 0.
  The `bne` branch at 0xda2cc80 goes to 0xda2cca0 when t2(=[ret(__glLookUpTextureObject)]) < 0x3 (signed) and falls through when t2(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2cd34 goes to 0xda2cd60 when v0(=ret(__glClipReadPixels)) == 0 and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2cd6c has v0 = ?.

- `__glim_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2cd74 (o32).
  It occupies 496 bytes.
  The `lw` at 0xda2cda4 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2cda8 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2cdc0 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda2cdd8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2cddc, `lw` at 0xda2ce78.
  The `lw` at 0xda2cdf4 loads 4 bytes from abs 0xda85670 via base gp (0xda8bc00).
  The `lw` at 0xda2ce4c loads 4 bytes from abs 0xda853ec via base gp (0xda8bc00).
  The `lw` at 0xda2ce60 loads 4 bytes from ret(__glLookUpTextureObject) +0x0 via base v0 (ret(__glLookUpTextureObject)).
  The `lw` at 0xda2ce90 loads 4 bytes from abs 0xda84654 via base gp (0xda8bc00).
  The `lw` at 0xda2cec0 loads 4 bytes from abs 0xda85660 via base gp (0xda8bc00).
  The `lw` at 0xda2ceec loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xda2cf04 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xda2cf1c loads 4 bytes from abs 0xda845f4 via base gp (0xda8bc00).
  The `lw` at 0xda2cf3c loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda2cdc8 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cde4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2ce38 calls `__glCheckCopyTexSubImageArgs [0xda2af60]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2ce58 calls `__glLookUpTextureObject [0xda179c8]` with a0=[0x1010], a1=0xde1, a2=unknown, a3=unknown.
  The `jalr` at 0xda2ce80 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cea8 calls `__glInitReadImageSrcInfo [0xd9ab7b8]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2ced8 calls `__glInitTexSubImageStore [0xda2aae0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda2cef0 calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cf08 calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cf20 calls `__glClipReadPixels [0xd9a8950]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2cf44 calls `(unknown callee)` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2cdb0 goes to 0xda2cdf4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2cdb8 goes to 0xda2cddc when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2ce44 goes to 0xda2cf50 when v0(=ret(__glCheckCopyTexSubImageArgs)) == 0 and falls through when v0(=ret(__glCheckCopyTexSubImageArgs)) != 0.
  The `bne` branch at 0xda2ce70 goes to 0xda2ce90 when t3(=[ret(__glLookUpTextureObject)]) < 0x3 (signed) and falls through when t3(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2cf28 goes to 0xda2cf50 when v0(=ret(__glClipReadPixels)) == 0 and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2cf5c has v0 = ?.

- `__glim_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2cf64 (o32).
  It occupies 508 bytes.
  The `lw` at 0xda2cf94 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2cf98 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  The `lw` at 0xda2cfb0 loads 4 bytes from [0x1010] +0x2e40 via base s0 ([0x1010]).
  The `sw` at 0xda2cfc8 stores 4 bytes to abs 0x1018 via base zero (0x0) with value 0x0.
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2cfcc, `lw` at 0xda2d06c.
  The `lw` at 0xda2cfe4 loads 4 bytes from abs 0xda85670 via base gp (0xda8bc00).
  The `lw` at 0xda2d040 loads 4 bytes from abs 0xda853ec via base gp (0xda8bc00).
  The `lw` at 0xda2d054 loads 4 bytes from ret(__glLookUpTextureObject) +0x0 via base v0 (ret(__glLookUpTextureObject)).
  The `lw` at 0xda2d094 loads 4 bytes from abs 0xda84654 via base gp (0xda8bc00).
  The `lw` at 0xda2d0b4 loads 4 bytes from abs 0xda85660 via base gp (0xda8bc00).
  The `lw` at 0xda2d0e8 loads 4 bytes from abs 0xda84708 via base gp (0xda8bc00).
  The `lw` at 0xda2d100 loads 4 bytes from abs 0xda844e4 via base gp (0xda8bc00).
  The `lw` at 0xda2d118 loads 4 bytes from abs 0xda845f4 via base gp (0xda8bc00).
  The `lw` at 0xda2d138 loads 4 bytes from unknown (base unknown) via base a2 (unknown).
  The `jalr` at 0xda2cfb8 calls `(unknown callee)` with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2cfd4 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2d02c calls `__glCheckCopyTexSubImageArgs [0xda2af60]` with a0=[0x1010], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xda2d04c calls `__glLookUpTextureObject [0xda179c8]` with a0=[0x1010], a1=0xde0, a2=unknown, a3=unknown.
  The `jalr` at 0xda2d074 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda2d0a0 calls `__glInitReadImageSrcInfo [0xd9ab7b8]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2d0d4 calls `__glInitTexSubImageStore [0xda2aae0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `jalr` at 0xda2d0ec calls `__glInitUnpacker [0xd9af410]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2d104 calls `__glInitPacker [0xd99e2a0]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2d11c calls `__glClipReadPixels [0xd9a8950]` with a0=[0x1010], a1=sp-504, a2=unknown, a3=unknown.
  The `jalr` at 0xda2d140 calls `(unknown callee)` with a0=[0x1010], a1=sp-504, a2=unknown, a3=a1 at entry (arg1).
  The `beq` branch at 0xda2cfa0 goes to 0xda2cfe4 when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xda2cfa8 goes to 0xda2cfcc when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xda2d038 goes to 0xda2d14c when v0(=ret(__glCheckCopyTexSubImageArgs)) == 0 and falls through when v0(=ret(__glCheckCopyTexSubImageArgs)) != 0.
  The `bnel` branch at 0xda2d064 goes to 0xda2d088 when t4(=[ret(__glLookUpTextureObject)]) < 0x3 (signed) and falls through when t4(=[ret(__glLookUpTextureObject)]) >= 0x3 (signed).
  The `beq` branch at 0xda2d124 goes to 0xda2d14c when v0(=ret(__glClipReadPixels)) == 0 and falls through when v0(=ret(__glClipReadPixels)) != 0.
  The return at 0xda2d158 has v0 = ?.

- `__glim_SelectTextureCoordSetSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda2d160 (o32).
  It occupies 156 bytes.
  The `lw` at 0xda2d17c loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda2d184 loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda2d190, `lw` at 0xda2d1d0.
  The `lw` at 0xda2d1b8 loads 4 bytes from [0x1010] +0xe1c via base v0 ([0x1010]).
  The `sw` at 0xda2d1cc stores 4 bytes to [0x1010] +0x6e6c via base v0 ([0x1010]) with value a0.
  The `jalr` at 0xda2d198 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda2d1d8 calls `__glSetError [0xd9d1af8]` with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xda2d188 goes to 0xda2d1ac when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bne` branch at 0xda2d1b0 goes to 0xda2d1d0 when a0 < at(=0x83c7) (unsigned) and falls through when a0 >= at(=0x83c7) (unsigned).
  The `beql` branch at 0xda2d1c8 goes to 0xda2d1ec when t8(=[[0x1010]+3612]+33735) >= a0 (unsigned) and falls through when t8(=[[0x1010]+3612]+33735) < a0 (unsigned).
  The return at 0xda2d1f4 has v0 = ?.

- `__glim_InterleavedTextureCoordSetsSGIS` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda39df8 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda39e14 loads 4 bytes from abs 0x1018 via base v1 (0x1000).
  The `lw` at 0xda39e1c loads 4 bytes from abs 0x1010 via base v1 (0x1000).
  2 such `lw` accesses load 4 bytes from abs 0xda84c34 via base gp (0xda8bc00), including `lw` at 0xda39e28, `lw` at 0xda39e58.
  The `lw` at 0xda39e48 loads 4 bytes from [0x1010] +0xe1c via base v0 ([0x1010]).
  The `sw` at 0xda39e54 stores 4 bytes to [0x1010] +0x152c via base v0 ([0x1010]) with value a0.
  The `jalr` at 0xda39e30 calls `__glSetError [0xd9d1af8]` with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda39e60 calls `__glSetError [0xd9d1af8]` with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda39e20 goes to 0xda39e40 when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `blez` branch at 0xda39e40 goes to 0xda39e58 when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beql` branch at 0xda39e50 goes to 0xda39e74 when t7(=[[0x1010]+3612]) >= a0 (signed) and falls through when t7(=[[0x1010]+3612]) < a0 (signed).
  The return at 0xda39e7c has v0 = ?.

- `__gllc_ListBase` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40450 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda40460 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40468 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40494 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2.
  The `lw` at 0xda4049c loads 4 bytes from abs 0xda85cf4 via base gp (0xda8bc00).
  The `sw` at 0xda404a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda404a4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40478 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda404a8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c0c0, a3=unknown.
  The `beq` branch at 0xda40488 goes to 0xda404b4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda404bc has v0 = ?.

- `__gllc_Color3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda404c4 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda404d4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda404dc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40510 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x5.
  The `lw` at 0xda40518 loads 4 bytes from abs 0xda85cf8 via base gp (0xda8bc00).
  The `sb` at 0xda4051c stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda40524 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda4052c stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda40530 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40538 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4053c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda404f4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40540 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c100, a3=unknown.
  The `beq` branch at 0xda40504 goes to 0xda4054c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40554 has v0 = ?.

- `__gllc_Color3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4055c (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40568 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40574 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda405a8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x5.
  The `lb` at 0xda405ac loads 1 byte from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda405b0 loads 4 bytes from abs 0xda85cf8 via base gp (0xda8bc00).
  The `sb` at 0xda405b4 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:1.
  The `lb` at 0xda405b8 loads 1 byte from a0 (arg0 at entry) +0x1 via base a3 (a0).
  The `sb` at 0xda405bc stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value [a0+1]:1.
  The `lb` at 0xda405c0 loads 1 byte from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sb` at 0xda405c4 stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:1.
  The `lw` at 0xda405c8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda405d0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda405d4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40588 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda405d8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c100, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4059c goes to 0xda405e4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda405ec has v0 = ?.

- `__gllc_Color3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda405f4 (o32).
  It occupies 156 bytes.
  The `lw` at 0xda40604 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40608 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40640 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x6.
  The `sb` at 0xda40644 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda4064c loads 4 bytes from abs 0xda85cfc via base gp (0xda8bc00).
  The `lw` at 0xda40664 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4066c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40670 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40620 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40674 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c13c, a3=unknown.
  The `beq` branch at 0xda40630 goes to 0xda40680 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40688 has v0 = ?.

- `__gllc_Color3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40690 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda4069c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda406a8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda406e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x6.
  The `sb` at 0xda406e4 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda406ec loads 4 bytes from abs 0xda85cfc via base gp (0xda8bc00).
  The `lw` at 0xda40704 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4070c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40710 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda406bc calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40714 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c13c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda406d0 goes to 0xda40720 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40728 has v0 = ?.

- `__gllc_Color3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40730 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40740 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40744 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4077c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x7.
  The `lw` at 0xda40784 loads 4 bytes from abs 0xda85d00 via base gp (0xda8bc00).
  The `lw` at 0xda4079c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda407a4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda407a8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40760 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda407ac calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c178, a3=unknown.
  The `beq` branch at 0xda40770 goes to 0xda407b8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda407c0 has v0 = ?.

- `__gllc_Color3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda407c8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda407d4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda407e0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40814 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x7.
  The `lw` at 0xda4081c loads 4 bytes from abs 0xda85d00 via base gp (0xda8bc00).
  The `lw` at 0xda40834 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4083c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40840 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda407f4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40844 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c178, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40808 goes to 0xda40850 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40858 has v0 = ?.

- `__gllc_Color3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40860 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40870 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40878 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda408ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x8.
  The `lw` at 0xda408b4 loads 4 bytes from abs 0xda85d04 via base gp (0xda8bc00).
  The `sw` at 0xda408b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda408c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda408c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `lw` at 0xda408cc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda408d4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda408d8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40890 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda408dc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c1b4, a3=unknown.
  The `beq` branch at 0xda408a0 goes to 0xda408e8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda408f0 has v0 = ?.

- `__gllc_Color3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda408f8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40904 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40910 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40944 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x8.
  The `lw` at 0xda40948 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4094c loads 4 bytes from abs 0xda85d04 via base gp (0xda8bc00).
  The `sw` at 0xda40950 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda40954 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda40958 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda4095c loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda40960 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda40964 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4096c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40970 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40924 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40974 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c1b4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40938 goes to 0xda40980 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40988 has v0 = ?.

- `__gllc_Color3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40990 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda409a0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda409a8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda409dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x9.
  The `lw` at 0xda409e4 loads 4 bytes from abs 0xda85d08 via base gp (0xda8bc00).
  The `sh` at 0xda409e8 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda409f0 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda409f8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda409fc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40a04 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40a08 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda409c0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40a0c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c1f0, a3=unknown.
  The `beq` branch at 0xda409d0 goes to 0xda40a18 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40a20 has v0 = ?.

- `__gllc_Color3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40a28 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40a34 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40a40 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40a74 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x9.
  The `lh` at 0xda40a78 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda40a7c loads 4 bytes from abs 0xda85d08 via base gp (0xda8bc00).
  The `sh` at 0xda40a80 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda40a84 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda40a88 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda40a8c loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda40a90 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lw` at 0xda40a94 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40a9c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40aa0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40a54 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40aa4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c1f0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40a68 goes to 0xda40ab0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40ab8 has v0 = ?.

- `__gllc_Color3ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40ac0 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40ad0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40ad8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40b0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xa.
  The `lw` at 0xda40b14 loads 4 bytes from abs 0xda85d0c via base gp (0xda8bc00).
  The `sb` at 0xda40b18 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda40b20 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda40b28 stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda40b2c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40b34 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40b38 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40af0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40b3c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c22c, a3=unknown.
  The `beq` branch at 0xda40b00 goes to 0xda40b48 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40b50 has v0 = ?.

- `__gllc_Color3ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40b58 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40b64 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40b70 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40ba4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xa.
  The `lbu` at 0xda40ba8 loads 1 byte from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda40bac loads 4 bytes from abs 0xda85d0c via base gp (0xda8bc00).
  The `sb` at 0xda40bb0 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:1.
  The `lbu` at 0xda40bb4 loads 1 byte from a0 (arg0 at entry) +0x1 via base a3 (a0).
  The `sb` at 0xda40bb8 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value [a0+1]:1.
  The `lbu` at 0xda40bbc loads 1 byte from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sb` at 0xda40bc0 stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:1.
  The `lw` at 0xda40bc4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40bcc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40bd0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40b84 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40bd4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c22c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40b98 goes to 0xda40be0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40be8 has v0 = ?.

- `__gllc_Color3ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40bf0 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40c00 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40c08 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40c3c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xb.
  The `lw` at 0xda40c44 loads 4 bytes from abs 0xda85d10 via base gp (0xda8bc00).
  The `sw` at 0xda40c48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda40c50 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda40c58 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `lw` at 0xda40c5c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40c64 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40c68 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40c20 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40c6c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c268, a3=unknown.
  The `beq` branch at 0xda40c30 goes to 0xda40c78 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40c80 has v0 = ?.

- `__gllc_Color3uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40c88 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40c94 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40ca0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40cd4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xb.
  The `lw` at 0xda40cd8 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda40cdc loads 4 bytes from abs 0xda85d10 via base gp (0xda8bc00).
  The `sw` at 0xda40ce0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda40ce4 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda40ce8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda40cec loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda40cf0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda40cf4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40cfc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40d00 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40cb4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40d04 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c268, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40cc8 goes to 0xda40d10 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40d18 has v0 = ?.

- `__gllc_Color3us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40d20 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40d30 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40d38 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40d6c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xc.
  The `lw` at 0xda40d74 loads 4 bytes from abs 0xda85d14 via base gp (0xda8bc00).
  The `sh` at 0xda40d78 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda40d80 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda40d88 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda40d8c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40d94 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40d98 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40d50 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40d9c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c2a4, a3=unknown.
  The `beq` branch at 0xda40d60 goes to 0xda40da8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40db0 has v0 = ?.

- `__gllc_Color3usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40db8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda40dc4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40dd0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40e04 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xc.
  The `lhu` at 0xda40e08 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda40e0c loads 4 bytes from abs 0xda85d14 via base gp (0xda8bc00).
  The `sh` at 0xda40e10 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lhu` at 0xda40e14 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda40e18 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lhu` at 0xda40e1c loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda40e20 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lw` at 0xda40e24 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40e2c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40e30 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40de4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40e34 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c2a4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40df8 goes to 0xda40e40 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40e48 has v0 = ?.

- `__gllc_Color4b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40e50 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda40e60 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40e68 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40ea0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xd.
  The `lw` at 0xda40ea8 loads 4 bytes from abs 0xda85d18 via base gp (0xda8bc00).
  The `sb` at 0xda40eac stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda40eb4 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda40ebc stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda40ec4 stores 1 byte to ret(__glDlistAllocOp2) +0x13 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda40ec8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40ed0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40ed4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40e84 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda40ed8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c2e0, a3=unknown.
  The `beq` branch at 0xda40e94 goes to 0xda40ee4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40eec has v0 = ?.

- `__gllc_Color4bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40ef4 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda40f00 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40f0c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40f40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xd.
  The `lb` at 0xda40f44 loads 1 byte from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda40f48 loads 4 bytes from abs 0xda85d18 via base gp (0xda8bc00).
  The `sb` at 0xda40f4c stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:1.
  The `lb` at 0xda40f50 loads 1 byte from a0 (arg0 at entry) +0x1 via base a3 (a0).
  The `sb` at 0xda40f54 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value [a0+1]:1.
  The `lb` at 0xda40f58 loads 1 byte from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sb` at 0xda40f5c stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:1.
  The `lb` at 0xda40f60 loads 1 byte from a0 (arg0 at entry) +0x3 via base a3 (a0).
  The `sb` at 0xda40f64 stores 1 byte to ret(__glDlistAllocOp2) +0x13 via base v0 (ret(__glDlistAllocOp2)) with value [a0+3]:1.
  The `lw` at 0xda40f68 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda40f70 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda40f74 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40f20 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda40f78 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c2e0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda40f34 goes to 0xda40f84 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda40f8c has v0 = ?.

- `__gllc_Color4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda40f94 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda40fa4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda40fa8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda40fe0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xe.
  The `sb` at 0xda40fe4 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda40fec loads 4 bytes from abs 0xda85d1c via base gp (0xda8bc00).
  The `lw` at 0xda4100c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41014 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41018 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda40fc0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4101c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c31c, a3=unknown.
  The `beq` branch at 0xda40fd0 goes to 0xda41028 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41030 has v0 = ?.

- `__gllc_Color4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41038 (o32).
  It occupies 168 bytes.
  The `lw` at 0xda41044 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41050 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41088 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xe.
  The `sb` at 0xda4108c stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda41094 loads 4 bytes from abs 0xda85d1c via base gp (0xda8bc00).
  The `lw` at 0xda410b4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda410bc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda410c0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41064 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda410c4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c31c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41078 goes to 0xda410d0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda410d8 has v0 = ?.

- `__gllc_Color4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda410e0 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda410f0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda410f4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41130 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xf.
  The `lw` at 0xda41138 loads 4 bytes from abs 0xda85d20 via base gp (0xda8bc00).
  The `lw` at 0xda41158 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41160 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41164 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41114 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41168 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c358, a3=unknown.
  The `beq` branch at 0xda41124 goes to 0xda41174 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4117c has v0 = ?.

- `__gllc_Color4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41184 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda41190 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4119c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda411d0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0xf.
  The `lw` at 0xda411d8 loads 4 bytes from abs 0xda85d20 via base gp (0xda8bc00).
  The `lw` at 0xda411f8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41200 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41204 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda411b0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41208 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c358, a3=a0 at entry (arg0).
  The `beq` branch at 0xda411c4 goes to 0xda41214 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4121c has v0 = ?.

- `__gllc_Color4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41224 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda41234 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4123c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41274 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x10.
  The `lw` at 0xda4127c loads 4 bytes from abs 0xda85d24 via base gp (0xda8bc00).
  The `sw` at 0xda41280 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda41288 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda41290 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda41298 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda4129c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda412a4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda412a8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41258 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda412ac calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c394, a3=unknown.
  The `beq` branch at 0xda41268 goes to 0xda412b8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda412c0 has v0 = ?.

- `__gllc_Color4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda412c8 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda412d4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda412e0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41314 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x10.
  The `lw` at 0xda41318 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4131c loads 4 bytes from abs 0xda85d24 via base gp (0xda8bc00).
  The `sw` at 0xda41320 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda41324 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda41328 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda4132c loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda41330 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda41334 loads 4 bytes from a0 (arg0 at entry) +0xc via base a3 (a0).
  The `sw` at 0xda41338 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value [a0+12].
  The `lw` at 0xda4133c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41344 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41348 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda412f4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4134c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c394, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41308 goes to 0xda41358 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41360 has v0 = ?.

- `__gllc_Color4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41368 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda41378 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41380 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda413b8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x11.
  The `lw` at 0xda413c0 loads 4 bytes from abs 0xda85d28 via base gp (0xda8bc00).
  The `sh` at 0xda413c4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda413cc stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda413d4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda413dc stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda413e0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda413e8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda413ec loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4139c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda413f0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c3d0, a3=unknown.
  The `beq` branch at 0xda413ac goes to 0xda413fc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41404 has v0 = ?.

- `__gllc_Color4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4140c (o32).
  It occupies 160 bytes.
  The `lw` at 0xda41418 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41424 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41458 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x11.
  The `lh` at 0xda4145c loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda41460 loads 4 bytes from abs 0xda85d28 via base gp (0xda8bc00).
  The `sh` at 0xda41464 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda41468 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda4146c stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda41470 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda41474 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lh` at 0xda41478 loads 2 bytes from a0 (arg0 at entry) +0x6 via base a3 (a0).
  The `sh` at 0xda4147c stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value [a0+6]:2.
  The `lw` at 0xda41480 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41488 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4148c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41438 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41490 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c3d0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4144c goes to 0xda4149c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda414a4 has v0 = ?.

- `__gllc_Color4ub` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda414ac (o32).
  It occupies 164 bytes.
  The `lw` at 0xda414bc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda414c4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda414fc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x12.
  The `lw` at 0xda41504 loads 4 bytes from abs 0xda85d2c via base gp (0xda8bc00).
  The `sb` at 0xda41508 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda41510 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda41518 stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda41520 stores 1 byte to ret(__glDlistAllocOp2) +0x13 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda41524 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4152c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41530 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda414e0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41534 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c40c, a3=unknown.
  The `beq` branch at 0xda414f0 goes to 0xda41540 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41548 has v0 = ?.

- `__gllc_Color4ubv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41550 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda4155c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41568 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4159c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x12.
  The `lbu` at 0xda415a0 loads 1 byte from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda415a4 loads 4 bytes from abs 0xda85d2c via base gp (0xda8bc00).
  The `sb` at 0xda415a8 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:1.
  The `lbu` at 0xda415ac loads 1 byte from a0 (arg0 at entry) +0x1 via base a3 (a0).
  The `sb` at 0xda415b0 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value [a0+1]:1.
  The `lbu` at 0xda415b4 loads 1 byte from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sb` at 0xda415b8 stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:1.
  The `lbu` at 0xda415bc loads 1 byte from a0 (arg0 at entry) +0x3 via base a3 (a0).
  The `sb` at 0xda415c0 stores 1 byte to ret(__glDlistAllocOp2) +0x13 via base v0 (ret(__glDlistAllocOp2)) with value [a0+3]:1.
  The `lw` at 0xda415c4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda415cc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda415d0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4157c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda415d4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c40c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41590 goes to 0xda415e0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda415e8 has v0 = ?.

- `__gllc_Color4ui` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda415f0 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda41600 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41608 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41640 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x13.
  The `lw` at 0xda41648 loads 4 bytes from abs 0xda85d30 via base gp (0xda8bc00).
  The `sw` at 0xda4164c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda41654 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda4165c stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda41664 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda41668 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41670 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41674 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41624 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41678 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c448, a3=unknown.
  The `beq` branch at 0xda41634 goes to 0xda41684 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4168c has v0 = ?.

- `__gllc_Color4uiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41694 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda416a0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda416ac loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda416e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x13.
  The `lw` at 0xda416e4 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda416e8 loads 4 bytes from abs 0xda85d30 via base gp (0xda8bc00).
  The `sw` at 0xda416ec stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda416f0 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda416f4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda416f8 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda416fc stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda41700 loads 4 bytes from a0 (arg0 at entry) +0xc via base a3 (a0).
  The `sw` at 0xda41704 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value [a0+12].
  The `lw` at 0xda41708 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41710 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41714 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda416c0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41718 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c448, a3=a0 at entry (arg0).
  The `beq` branch at 0xda416d4 goes to 0xda41724 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4172c has v0 = ?.

- `__gllc_Color4us` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41734 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda41744 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4174c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41784 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x14.
  The `lw` at 0xda4178c loads 4 bytes from abs 0xda85d34 via base gp (0xda8bc00).
  The `sh` at 0xda41790 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda41798 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda417a0 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda417a8 stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda417ac loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda417b4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda417b8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41768 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda417bc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c484, a3=unknown.
  The `beq` branch at 0xda41778 goes to 0xda417c8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda417d0 has v0 = ?.

- `__gllc_Color4usv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda417d8 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda417e4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda417f0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41824 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x14.
  The `lhu` at 0xda41828 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4182c loads 4 bytes from abs 0xda85d34 via base gp (0xda8bc00).
  The `sh` at 0xda41830 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lhu` at 0xda41834 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda41838 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lhu` at 0xda4183c loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda41840 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lhu` at 0xda41844 loads 2 bytes from a0 (arg0 at entry) +0x6 via base a3 (a0).
  The `sh` at 0xda41848 stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value [a0+6]:2.
  The `lw` at 0xda4184c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41854 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41858 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41804 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4185c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c484, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41818 goes to 0xda41868 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41870 has v0 = ?.

- `__gllc_EdgeFlag` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41878 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda41888 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41890 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda418bc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x15.
  The `lw` at 0xda418c4 loads 4 bytes from abs 0xda85d38 via base gp (0xda8bc00).
  The `sb` at 0xda418c8 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda418cc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda418a0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda418d0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c4c0, a3=unknown.
  The `beq` branch at 0xda418b0 goes to 0xda418dc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda418e4 has v0 = ?.

- `__gllc_EdgeFlagv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda418ec (o32).
  It occupies 120 bytes.
  The `lw` at 0xda418fc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41904 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41930 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x15.
  The `lw` at 0xda41938 loads 4 bytes from abs 0xda85d38 via base gp (0xda8bc00).
  The `lbu` at 0xda4193c loads 1 byte from a0 (arg0 at entry) +0x0 via base t7 (a0).
  The `sb` at 0xda41940 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:1.
  The `lw` at 0xda41944 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41914 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41948 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c4c0, a3=unknown.
  The `beq` branch at 0xda41924 goes to 0xda41954 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4195c has v0 = ?.

- `__gllc_End` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41964 (o32).
  It occupies 104 bytes.
  The `lw` at 0xda41970 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41974 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda419a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x16.
  The `lw` at 0xda419a8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda419ac loads 4 bytes from abs 0xda85d3c via base gp (0xda8bc00).
  The `jalr` at 0xda41988 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda419b0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c4fc, a3=unknown.
  The `beq` branch at 0xda41998 goes to 0xda419bc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda419c4 has v0 = ?.

- `__gllc_Indexd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda419cc (o32).
  It occupies 136 bytes.
  The `lw` at 0xda419d8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda419e0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41a14 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x17.
  The `sb` at 0xda41a18 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda41a20 loads 4 bytes from abs 0xda85d40 via base gp (0xda8bc00).
  The `lw` at 0xda41a28 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41a30 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41a34 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda419f4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41a38 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c534, a3=unknown.
  The `beq` branch at 0xda41a04 goes to 0xda41a44 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41a4c has v0 = ?.

- `__gllc_Indexdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41a54 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda41a64 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41a6c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41a9c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x17.
  The `sb` at 0xda41aa0 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda41aa8 loads 4 bytes from abs 0xda85d40 via base gp (0xda8bc00).
  The `lw` at 0xda41ab4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41abc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41ac0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41a7c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41ac4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c534, a3=unknown.
  The `beq` branch at 0xda41a8c goes to 0xda41ad0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41ad8 has v0 = ?.

- `__gllc_Indexf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41ae0 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda41aec loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41af4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41b24 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x18.
  The `lw` at 0xda41b2c loads 4 bytes from abs 0xda85d44 via base gp (0xda8bc00).
  The `lw` at 0xda41b34 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41b3c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41b40 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41b08 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41b44 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c570, a3=unknown.
  The `beq` branch at 0xda41b18 goes to 0xda41b50 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41b58 has v0 = ?.

- `__gllc_Indexfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41b60 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda41b70 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41b78 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41ba4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x18.
  The `lw` at 0xda41bac loads 4 bytes from abs 0xda85d44 via base gp (0xda8bc00).
  The `lw` at 0xda41bb8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41bc0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41bc4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41b88 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41bc8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c570, a3=unknown.
  The `beq` branch at 0xda41b98 goes to 0xda41bd4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41bdc has v0 = ?.

- `__gllc_Indexi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41be4 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda41bf4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41bfc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41c28 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x19.
  The `lw` at 0xda41c30 loads 4 bytes from abs 0xda85d48 via base gp (0xda8bc00).
  The `sw` at 0xda41c34 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda41c38 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41c40 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41c44 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41c0c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41c48 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c5ac, a3=unknown.
  The `beq` branch at 0xda41c1c goes to 0xda41c54 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41c5c has v0 = ?.

- `__gllc_Indexiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41c64 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda41c74 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41c7c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41ca8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x19.
  The `lw` at 0xda41cb0 loads 4 bytes from abs 0xda85d48 via base gp (0xda8bc00).
  The `lw` at 0xda41cb4 loads 4 bytes from a0 (arg0 at entry) +0x0 via base t7 (a0).
  The `sw` at 0xda41cb8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda41cbc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41cc4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41cc8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41c8c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41ccc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c5ac, a3=unknown.
  The `beq` branch at 0xda41c9c goes to 0xda41cd8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41ce0 has v0 = ?.

- `__gllc_Indexs` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41ce8 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda41cf8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41d00 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41d2c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1a.
  The `lw` at 0xda41d34 loads 4 bytes from abs 0xda85d4c via base gp (0xda8bc00).
  The `sh` at 0xda41d38 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda41d3c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41d44 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41d48 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41d10 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41d4c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c5e8, a3=unknown.
  The `beq` branch at 0xda41d20 goes to 0xda41d58 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41d60 has v0 = ?.

- `__gllc_Indexsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41d68 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda41d78 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41d80 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41dac stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1a.
  The `lw` at 0xda41db4 loads 4 bytes from abs 0xda85d4c via base gp (0xda8bc00).
  The `lh` at 0xda41db8 loads 2 bytes from a0 (arg0 at entry) +0x0 via base t7 (a0).
  The `sh` at 0xda41dbc stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lw` at 0xda41dc0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41dc8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41dcc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41d90 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41dd0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c5e8, a3=unknown.
  The `beq` branch at 0xda41da0 goes to 0xda41ddc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41de4 has v0 = ?.

- `__gllc_Normal3b` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41dec (o32).
  It occupies 152 bytes.
  The `lw` at 0xda41dfc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41e04 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41e38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1b.
  The `lw` at 0xda41e40 loads 4 bytes from abs 0xda85d50 via base gp (0xda8bc00).
  The `sb` at 0xda41e44 stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda41e4c stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sb` at 0xda41e54 stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda41e58 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41e60 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41e64 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41e1c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41e68 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c624, a3=unknown.
  The `beq` branch at 0xda41e2c goes to 0xda41e74 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41e7c has v0 = ?.

- `__gllc_Normal3bv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41e84 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda41e90 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41e9c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41ed0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1b.
  The `lb` at 0xda41ed4 loads 1 byte from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda41ed8 loads 4 bytes from abs 0xda85d50 via base gp (0xda8bc00).
  The `sb` at 0xda41edc stores 1 byte to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:1.
  The `lb` at 0xda41ee0 loads 1 byte from a0 (arg0 at entry) +0x1 via base a3 (a0).
  The `sb` at 0xda41ee4 stores 1 byte to ret(__glDlistAllocOp2) +0x11 via base v0 (ret(__glDlistAllocOp2)) with value [a0+1]:1.
  The `lb` at 0xda41ee8 loads 1 byte from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sb` at 0xda41eec stores 1 byte to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:1.
  The `lw` at 0xda41ef0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41ef8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41efc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41eb0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda41f00 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c624, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41ec4 goes to 0xda41f0c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41f14 has v0 = ?.

- `__gllc_Normal3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41f1c (o32).
  It occupies 156 bytes.
  The `lw` at 0xda41f2c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41f30 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda41f68 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1c.
  The `sb` at 0xda41f6c stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda41f74 loads 4 bytes from abs 0xda85d54 via base gp (0xda8bc00).
  The `lw` at 0xda41f8c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda41f94 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda41f98 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41f48 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda41f9c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c660, a3=unknown.
  The `beq` branch at 0xda41f58 goes to 0xda41fa8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda41fb0 has v0 = ?.

- `__gllc_Normal3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda41fb8 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda41fc4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda41fd0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42008 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1c.
  The `sb` at 0xda4200c stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda42014 loads 4 bytes from abs 0xda85d54 via base gp (0xda8bc00).
  The `lw` at 0xda4202c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42034 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42038 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda41fe4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4203c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c660, a3=a0 at entry (arg0).
  The `beq` branch at 0xda41ff8 goes to 0xda42048 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42050 has v0 = ?.

- `__gllc_Normal3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42058 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda42068 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4206c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda420a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1d.
  The `lw` at 0xda420ac loads 4 bytes from abs 0xda85d58 via base gp (0xda8bc00).
  The `lw` at 0xda420c4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda420cc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda420d0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42088 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda420d4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c69c, a3=unknown.
  The `beq` branch at 0xda42098 goes to 0xda420e0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda420e8 has v0 = ?.

- `__gllc_Normal3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda420f0 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda420fc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42108 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4213c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1d.
  The `lw` at 0xda42144 loads 4 bytes from abs 0xda85d58 via base gp (0xda8bc00).
  The `lw` at 0xda4215c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42164 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42168 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4211c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4216c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c69c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42130 goes to 0xda42178 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42180 has v0 = ?.

- `__gllc_Normal3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42188 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda42198 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda421a0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda421d4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1e.
  The `lw` at 0xda421dc loads 4 bytes from abs 0xda85d5c via base gp (0xda8bc00).
  The `sw` at 0xda421e0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda421e8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda421f0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `lw` at 0xda421f4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda421fc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42200 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda421b8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42204 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c6d8, a3=unknown.
  The `beq` branch at 0xda421c8 goes to 0xda42210 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42218 has v0 = ?.

- `__gllc_Normal3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42220 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda4222c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42238 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4226c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1e.
  The `lw` at 0xda42270 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda42274 loads 4 bytes from abs 0xda85d5c via base gp (0xda8bc00).
  The `sw` at 0xda42278 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda4227c loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda42280 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda42284 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda42288 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda4228c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42294 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42298 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4224c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda4229c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c6d8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42260 goes to 0xda422a8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda422b0 has v0 = ?.

- `__gllc_Normal3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda422b8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda422c8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda422d0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42304 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1f.
  The `lw` at 0xda4230c loads 4 bytes from abs 0xda85d60 via base gp (0xda8bc00).
  The `sh` at 0xda42310 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda42318 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda42320 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda42324 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4232c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42330 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda422e8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42334 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c714, a3=unknown.
  The `beq` branch at 0xda422f8 goes to 0xda42340 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42348 has v0 = ?.

- `__gllc_Normal3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42350 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda4235c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42368 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4239c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x1f.
  The `lh` at 0xda423a0 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda423a4 loads 4 bytes from abs 0xda85d60 via base gp (0xda8bc00).
  The `sh` at 0xda423a8 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda423ac loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda423b0 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda423b4 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda423b8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lw` at 0xda423bc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda423c4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda423c8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4237c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda423cc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c714, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42390 goes to 0xda423d8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda423e0 has v0 = ?.

- `__gllc_RasterPos3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42b5c (o32).
  It occupies 152 bytes.
  The `lw` at 0xda42b68 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42b74 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42ba8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x26.
  The `lw` at 0xda42bac loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda42bb0 loads 4 bytes from abs 0xda85d7c via base gp (0xda8bc00).
  The `sw` at 0xda42bb4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda42bb8 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda42bbc stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda42bc0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda42bc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda42bc8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42bd0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42bd4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42b88 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42bd8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c8b8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42b9c goes to 0xda42be4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42bec has v0 = ?.

- `__gllc_RasterPos3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42bf4 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda42c04 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42c0c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42c40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x27.
  The `lw` at 0xda42c48 loads 4 bytes from abs 0xda85d80 via base gp (0xda8bc00).
  The `sh` at 0xda42c4c stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda42c54 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda42c5c stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda42c60 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42c68 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42c6c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42c24 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42c70 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c8f4, a3=unknown.
  The `beq` branch at 0xda42c34 goes to 0xda42c7c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42c84 has v0 = ?.

- `__gllc_RasterPos3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42c8c (o32).
  It occupies 152 bytes.
  The `lw` at 0xda42c98 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42ca4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42cd8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x27.
  The `lh` at 0xda42cdc loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda42ce0 loads 4 bytes from abs 0xda85d80 via base gp (0xda8bc00).
  The `sh` at 0xda42ce4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda42ce8 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda42cec stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda42cf0 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda42cf4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lw` at 0xda42cf8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42d00 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42d04 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42cb8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42d08 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c8f4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42ccc goes to 0xda42d14 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42d1c has v0 = ?.

- `__gllc_RasterPos4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42d24 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda42d34 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42d38 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42d70 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x28.
  The `sb` at 0xda42d74 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda42d7c loads 4 bytes from abs 0xda85d84 via base gp (0xda8bc00).
  The `lw` at 0xda42d9c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42da4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42da8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42d50 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42dac calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c930, a3=unknown.
  The `beq` branch at 0xda42d60 goes to 0xda42db8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42dc0 has v0 = ?.

- `__gllc_RasterPos4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42dc8 (o32).
  It occupies 168 bytes.
  The `lw` at 0xda42dd4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42de0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42e18 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x28.
  The `sb` at 0xda42e1c stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda42e24 loads 4 bytes from abs 0xda85d84 via base gp (0xda8bc00).
  The `lw` at 0xda42e44 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42e4c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42e50 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42df4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42e54 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c930, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42e08 goes to 0xda42e60 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42e68 has v0 = ?.

- `__gllc_RasterPos4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42e70 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda42e80 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42e84 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42ec0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x29.
  The `lw` at 0xda42ec8 loads 4 bytes from abs 0xda85d88 via base gp (0xda8bc00).
  The `lw` at 0xda42ee8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42ef0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42ef4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42ea4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42ef8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c96c, a3=unknown.
  The `beq` branch at 0xda42eb4 goes to 0xda42f04 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42f0c has v0 = ?.

- `__gllc_RasterPos4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42f14 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda42f20 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42f2c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda42f60 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x29.
  The `lw` at 0xda42f68 loads 4 bytes from abs 0xda85d88 via base gp (0xda8bc00).
  The `lw` at 0xda42f88 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda42f90 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda42f94 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42f40 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda42f98 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c96c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda42f54 goes to 0xda42fa4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda42fac has v0 = ?.

- `__gllc_RasterPos4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda42fb4 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda42fc4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda42fcc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43004 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2a.
  The `lw` at 0xda4300c loads 4 bytes from abs 0xda85d8c via base gp (0xda8bc00).
  The `sw` at 0xda43010 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda43018 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda43020 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda43028 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda4302c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43034 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43038 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda42fe8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4303c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c9a8, a3=unknown.
  The `beq` branch at 0xda42ff8 goes to 0xda43048 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43050 has v0 = ?.

- `__gllc_RasterPos4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43058 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda43064 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43070 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda430a4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2a.
  The `lw` at 0xda430a8 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda430ac loads 4 bytes from abs 0xda85d8c via base gp (0xda8bc00).
  The `sw` at 0xda430b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda430b4 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda430b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda430bc loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda430c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda430c4 loads 4 bytes from a0 (arg0 at entry) +0xc via base a3 (a0).
  The `sw` at 0xda430c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value [a0+12].
  The `lw` at 0xda430cc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda430d4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda430d8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43084 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda430dc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c9a8, a3=a0 at entry (arg0).
  The `beq` branch at 0xda43098 goes to 0xda430e8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda430f0 has v0 = ?.

- `__gllc_RasterPos4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda430f8 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda43108 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43110 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43148 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2b.
  The `lw` at 0xda43150 loads 4 bytes from abs 0xda85d90 via base gp (0xda8bc00).
  The `sh` at 0xda43154 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda4315c stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda43164 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda4316c stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda43170 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43178 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4317c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4312c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43180 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c9e4, a3=unknown.
  The `beq` branch at 0xda4313c goes to 0xda4318c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43194 has v0 = ?.

- `__gllc_RasterPos4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4319c (o32).
  It occupies 160 bytes.
  The `lw` at 0xda431a8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda431b4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda431e8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2b.
  The `lh` at 0xda431ec loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda431f0 loads 4 bytes from abs 0xda85d90 via base gp (0xda8bc00).
  The `sh` at 0xda431f4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda431f8 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda431fc stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda43200 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda43204 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lh` at 0xda43208 loads 2 bytes from a0 (arg0 at entry) +0x6 via base a3 (a0).
  The `sh` at 0xda4320c stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value [a0+6]:2.
  The `lw` at 0xda43210 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43218 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4321c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda431c8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda43220 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4c9e4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda431dc goes to 0xda4322c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43234 has v0 = ?.

- `__gllc_Rectd` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4323c (o32).
  It occupies 164 bytes.
  The `lw` at 0xda4324c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43250 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43288 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2c.
  The `sb` at 0xda4328c stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda43294 loads 4 bytes from abs 0xda85d94 via base gp (0xda8bc00).
  The `lw` at 0xda432b4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda432bc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda432c0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43268 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda432c4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ca20, a3=unknown.
  The `beq` branch at 0xda43278 goes to 0xda432d0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda432d8 has v0 = ?.

- `__gllc_Rectdv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda432e0 (o32).
  It occupies 172 bytes.
  The `lw` at 0xda432f0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda432f8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43334 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2c.
  The `sb` at 0xda43338 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda43340 loads 4 bytes from abs 0xda85d94 via base gp (0xda8bc00).
  The `lw` at 0xda43360 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43368 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4336c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4330c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43370 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ca20, a3=a1 at entry (arg1).
  The `beq` branch at 0xda43324 goes to 0xda4337c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43384 has v0 = ?.

- `__gllc_Rectf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4338c (o32).
  It occupies 164 bytes.
  The `lw` at 0xda4339c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda433a0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda433dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2d.
  The `lw` at 0xda433e4 loads 4 bytes from abs 0xda85d98 via base gp (0xda8bc00).
  The `lw` at 0xda43404 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4340c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43410 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda433c0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43414 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ca60, a3=unknown.
  The `beq` branch at 0xda433d0 goes to 0xda43420 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43428 has v0 = ?.

- `__gllc_Rectfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43430 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda43440 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43448 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43480 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2d.
  The `lw` at 0xda43488 loads 4 bytes from abs 0xda85d98 via base gp (0xda8bc00).
  The `lw` at 0xda434a8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda434b0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda434b4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4345c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda434b8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ca60, a3=a1 at entry (arg1).
  The `beq` branch at 0xda43474 goes to 0xda434c4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda434cc has v0 = ?.

- `__gllc_Recti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda434d4 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda434e4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda434ec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43524 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2e.
  The `lw` at 0xda4352c loads 4 bytes from abs 0xda85d9c via base gp (0xda8bc00).
  The `sw` at 0xda43530 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda43538 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda43540 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda43548 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda4354c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43554 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43558 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43508 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4355c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4caa0, a3=unknown.
  The `beq` branch at 0xda43518 goes to 0xda43568 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43570 has v0 = ?.

- `__gllc_Rectiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43578 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda43588 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43590 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda435c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2e.
  The `lw` at 0xda435cc loads 4 bytes from a0 (arg0 at entry) +0x0 via base v1 (a0).
  The `lw` at 0xda435d0 loads 4 bytes from abs 0xda85d9c via base gp (0xda8bc00).
  The `sw` at 0xda435d4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda435d8 loads 4 bytes from a0 (arg0 at entry) +0x4 via base v1 (a0).
  The `sw` at 0xda435dc stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda435e0 loads 4 bytes from a1 (arg1 at entry) +0x0 via base a3 (a1).
  The `sw` at 0xda435e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a1].
  The `lw` at 0xda435e8 loads 4 bytes from a1 (arg1 at entry) +0x4 via base a3 (a1).
  The `sw` at 0xda435ec stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value [a1+4].
  The `lw` at 0xda435f0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda435f8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda435fc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda435a4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43600 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4caa0, a3=a1 at entry (arg1).
  The `beq` branch at 0xda435bc goes to 0xda4360c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43614 has v0 = ?.

- `__gllc_Rects` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4361c (o32).
  It occupies 164 bytes.
  The `lw` at 0xda4362c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43634 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4366c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2f.
  The `lw` at 0xda43674 loads 4 bytes from abs 0xda85da0 via base gp (0xda8bc00).
  The `sh` at 0xda43678 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda43680 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda43688 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda43690 stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda43694 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4369c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda436a0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43650 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda436a4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cae0, a3=unknown.
  The `beq` branch at 0xda43660 goes to 0xda436b0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda436b8 has v0 = ?.

- `__gllc_Rectsv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda436c0 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda436d0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda436d8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43710 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x2f.
  The `lh` at 0xda43714 loads 2 bytes from a0 (arg0 at entry) +0x0 via base v1 (a0).
  The `lw` at 0xda43718 loads 4 bytes from abs 0xda85da0 via base gp (0xda8bc00).
  The `sh` at 0xda4371c stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda43720 loads 2 bytes from a0 (arg0 at entry) +0x2 via base v1 (a0).
  The `sh` at 0xda43724 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda43728 loads 2 bytes from a1 (arg1 at entry) +0x0 via base a3 (a1).
  The `sh` at 0xda4372c stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a1]:2.
  The `lh` at 0xda43730 loads 2 bytes from a1 (arg1 at entry) +0x2 via base a3 (a1).
  The `sh` at 0xda43734 stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value [a1+2]:2.
  The `lw` at 0xda43738 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43740 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43744 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda436ec calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43748 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cae0, a3=a1 at entry (arg1).
  The `beq` branch at 0xda43704 goes to 0xda43754 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4375c has v0 = ?.

- `__gllc_TexCoord1d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43764 (o32).
  It occupies 136 bytes.
  The `lw` at 0xda43770 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43778 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda437ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x30.
  The `sb` at 0xda437b0 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda437b8 loads 4 bytes from abs 0xda85da4 via base gp (0xda8bc00).
  The `lw` at 0xda437c0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda437c8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda437cc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4378c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda437d0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cb20, a3=unknown.
  The `beq` branch at 0xda4379c goes to 0xda437dc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda437e4 has v0 = ?.

- `__gllc_TexCoord1dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda437ec (o32).
  It occupies 140 bytes.
  The `lw` at 0xda437fc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43804 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43834 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x30.
  The `sb` at 0xda43838 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda43840 loads 4 bytes from abs 0xda85da4 via base gp (0xda8bc00).
  The `lw` at 0xda4384c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43854 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43858 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43814 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4385c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cb20, a3=unknown.
  The `beq` branch at 0xda43824 goes to 0xda43868 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43870 has v0 = ?.

- `__gllc_TexCoord1f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43878 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda43884 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4388c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda438bc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x31.
  The `lw` at 0xda438c4 loads 4 bytes from abs 0xda85da8 via base gp (0xda8bc00).
  The `lw` at 0xda438cc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda438d4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda438d8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda438a0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda438dc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cb5c, a3=unknown.
  The `beq` branch at 0xda438b0 goes to 0xda438e8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda438f0 has v0 = ?.

- `__gllc_TexCoord1fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda438f8 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda43908 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43910 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4393c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x31.
  The `lw` at 0xda43944 loads 4 bytes from abs 0xda85da8 via base gp (0xda8bc00).
  The `lw` at 0xda43950 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43958 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4395c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43920 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43960 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cb5c, a3=unknown.
  The `beq` branch at 0xda43930 goes to 0xda4396c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43974 has v0 = ?.

- `__gllc_TexCoord1i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4397c (o32).
  It occupies 128 bytes.
  The `lw` at 0xda4398c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43994 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda439c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x32.
  The `lw` at 0xda439c8 loads 4 bytes from abs 0xda85dac via base gp (0xda8bc00).
  The `sw` at 0xda439cc stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda439d0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda439d8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda439dc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda439a4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda439e0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cb98, a3=unknown.
  The `beq` branch at 0xda439b4 goes to 0xda439ec when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda439f4 has v0 = ?.

- `__gllc_TexCoord1iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda439fc (o32).
  It occupies 132 bytes.
  The `lw` at 0xda43a0c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43a14 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43a40 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x32.
  The `lw` at 0xda43a48 loads 4 bytes from abs 0xda85dac via base gp (0xda8bc00).
  The `lw` at 0xda43a4c loads 4 bytes from a0 (arg0 at entry) +0x0 via base t7 (a0).
  The `sw` at 0xda43a50 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda43a54 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43a5c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43a60 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43a24 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43a64 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cb98, a3=unknown.
  The `beq` branch at 0xda43a34 goes to 0xda43a70 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43a78 has v0 = ?.

- `__gllc_TexCoord1s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43a80 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda43a90 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43a98 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43ac4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x33.
  The `lw` at 0xda43acc loads 4 bytes from abs 0xda85db0 via base gp (0xda8bc00).
  The `sh` at 0xda43ad0 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda43ad4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43adc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43ae0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43aa8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43ae4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cbd4, a3=unknown.
  The `beq` branch at 0xda43ab8 goes to 0xda43af0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43af8 has v0 = ?.

- `__gllc_TexCoord1sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43b00 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda43b10 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43b18 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43b44 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x33.
  The `lw` at 0xda43b4c loads 4 bytes from abs 0xda85db0 via base gp (0xda8bc00).
  The `lh` at 0xda43b50 loads 2 bytes from a0 (arg0 at entry) +0x0 via base t7 (a0).
  The `sh` at 0xda43b54 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lw` at 0xda43b58 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43b60 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43b64 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43b28 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43b68 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cbd4, a3=unknown.
  The `beq` branch at 0xda43b38 goes to 0xda43b74 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43b7c has v0 = ?.

- `__gllc_TexCoord2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43b84 (o32).
  It occupies 148 bytes.
  The `lw` at 0xda43b94 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43b98 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43bd0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x34.
  The `sb` at 0xda43bd4 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda43bdc loads 4 bytes from abs 0xda85db4 via base gp (0xda8bc00).
  The `lw` at 0xda43bec loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43bf4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43bf8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43bb0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43bfc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cc10, a3=unknown.
  The `beq` branch at 0xda43bc0 goes to 0xda43c08 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43c10 has v0 = ?.

- `__gllc_TexCoord2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43c18 (o32).
  It occupies 148 bytes.
  The `lw` at 0xda43c28 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43c30 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43c64 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x34.
  The `sb` at 0xda43c68 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda43c70 loads 4 bytes from abs 0xda85db4 via base gp (0xda8bc00).
  The `lw` at 0xda43c80 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43c88 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43c8c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43c40 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43c90 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cc10, a3=unknown.
  The `beq` branch at 0xda43c54 goes to 0xda43c9c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43ca4 has v0 = ?.

- `__gllc_TexCoord2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43cac (o32).
  It occupies 140 bytes.
  The `lw` at 0xda43cbc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43cc0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43cf4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x35.
  The `lw` at 0xda43cfc loads 4 bytes from abs 0xda85db8 via base gp (0xda8bc00).
  The `lw` at 0xda43d0c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43d14 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43d18 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43cd8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43d1c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cc4c, a3=unknown.
  The `beq` branch at 0xda43ce8 goes to 0xda43d28 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43d30 has v0 = ?.

- `__gllc_TexCoord2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43d38 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda43d48 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43d50 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43d80 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x35.
  The `lw` at 0xda43d88 loads 4 bytes from abs 0xda85db8 via base gp (0xda8bc00).
  The `lw` at 0xda43d98 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43da0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43da4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43d60 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43da8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cc4c, a3=unknown.
  The `beq` branch at 0xda43d74 goes to 0xda43db4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43dbc has v0 = ?.

- `__gllc_TexCoord2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43dc4 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda43dd4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43ddc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43e0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x36.
  The `lw` at 0xda43e14 loads 4 bytes from abs 0xda85dbc via base gp (0xda8bc00).
  The `sw` at 0xda43e18 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda43e20 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda43e24 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43e2c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43e30 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43df0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43e34 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cc88, a3=unknown.
  The `beq` branch at 0xda43e00 goes to 0xda43e40 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43e48 has v0 = ?.

- `__gllc_TexCoord2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43e50 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda43e60 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43e68 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43e98 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x36.
  The `lw` at 0xda43e9c loads 4 bytes from a0 (arg0 at entry) +0x0 via base v1 (a0).
  The `lw` at 0xda43ea0 loads 4 bytes from abs 0xda85dbc via base gp (0xda8bc00).
  The `sw` at 0xda43ea4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda43ea8 loads 4 bytes from a0 (arg0 at entry) +0x4 via base v1 (a0).
  The `sw` at 0xda43eac stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda43eb0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43eb8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43ebc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43e78 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43ec0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cc88, a3=unknown.
  The `beq` branch at 0xda43e8c goes to 0xda43ecc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43ed4 has v0 = ?.

- `__gllc_TexCoord2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43edc (o32).
  It occupies 140 bytes.
  The `lw` at 0xda43eec loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43ef4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43f24 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x37.
  The `lw` at 0xda43f2c loads 4 bytes from abs 0xda85dc0 via base gp (0xda8bc00).
  The `sh` at 0xda43f30 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda43f38 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda43f3c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43f44 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43f48 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43f08 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43f4c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ccc4, a3=unknown.
  The `beq` branch at 0xda43f18 goes to 0xda43f58 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43f60 has v0 = ?.

- `__gllc_TexCoord2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43f68 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda43f78 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda43f80 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda43fb0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x37.
  The `lh` at 0xda43fb4 loads 2 bytes from a0 (arg0 at entry) +0x0 via base v1 (a0).
  The `lw` at 0xda43fb8 loads 4 bytes from abs 0xda85dc0 via base gp (0xda8bc00).
  The `sh` at 0xda43fbc stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda43fc0 loads 2 bytes from a0 (arg0 at entry) +0x2 via base v1 (a0).
  The `sh` at 0xda43fc4 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lw` at 0xda43fc8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda43fd0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda43fd4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda43f90 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda43fd8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ccc4, a3=unknown.
  The `beq` branch at 0xda43fa4 goes to 0xda43fe4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda43fec has v0 = ?.

- `__gllc_TexCoord3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda43ff4 (o32).
  It occupies 156 bytes.
  The `lw` at 0xda44004 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44008 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44040 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x38.
  The `sb` at 0xda44044 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda4404c loads 4 bytes from abs 0xda85dc4 via base gp (0xda8bc00).
  The `lw` at 0xda44064 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4406c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44070 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44020 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44074 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cd00, a3=unknown.
  The `beq` branch at 0xda44030 goes to 0xda44080 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44088 has v0 = ?.

- `__gllc_TexCoord3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44090 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda4409c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda440a8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda440e0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x38.
  The `sb` at 0xda440e4 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda440ec loads 4 bytes from abs 0xda85dc4 via base gp (0xda8bc00).
  The `lw` at 0xda44104 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4410c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44110 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda440bc calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44114 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cd00, a3=a0 at entry (arg0).
  The `beq` branch at 0xda440d0 goes to 0xda44120 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44128 has v0 = ?.

- `__gllc_TexCoord3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44130 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda44140 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44144 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4417c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x39.
  The `lw` at 0xda44184 loads 4 bytes from abs 0xda85dc8 via base gp (0xda8bc00).
  The `lw` at 0xda4419c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda441a4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda441a8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44160 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda441ac calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cd3c, a3=unknown.
  The `beq` branch at 0xda44170 goes to 0xda441b8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda441c0 has v0 = ?.

- `__gllc_TexCoord3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda441c8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda441d4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda441e0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44214 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x39.
  The `lw` at 0xda4421c loads 4 bytes from abs 0xda85dc8 via base gp (0xda8bc00).
  The `lw` at 0xda44234 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4423c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44240 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda441f4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44244 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cd3c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44208 goes to 0xda44250 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44258 has v0 = ?.

- `__gllc_TexCoord3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44260 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda44270 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44278 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda442ac stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3a.
  The `lw` at 0xda442b4 loads 4 bytes from abs 0xda85dcc via base gp (0xda8bc00).
  The `sw` at 0xda442b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda442c0 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda442c8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `lw` at 0xda442cc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda442d4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda442d8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44290 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda442dc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cd78, a3=unknown.
  The `beq` branch at 0xda442a0 goes to 0xda442e8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda442f0 has v0 = ?.

- `__gllc_TexCoord3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda442f8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda44304 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44310 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44344 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3a.
  The `lw` at 0xda44348 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4434c loads 4 bytes from abs 0xda85dcc via base gp (0xda8bc00).
  The `sw` at 0xda44350 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda44354 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda44358 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda4435c loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda44360 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda44364 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4436c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44370 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44324 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44374 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cd78, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44338 goes to 0xda44380 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44388 has v0 = ?.

- `__gllc_TexCoord3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44390 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda443a0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda443a8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda443dc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3b.
  The `lw` at 0xda443e4 loads 4 bytes from abs 0xda85dd0 via base gp (0xda8bc00).
  The `sh` at 0xda443e8 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda443f0 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda443f8 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda443fc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44404 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44408 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda443c0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4440c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cdb4, a3=unknown.
  The `beq` branch at 0xda443d0 goes to 0xda44418 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44420 has v0 = ?.

- `__gllc_TexCoord3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44428 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda44434 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44440 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44474 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3b.
  The `lh` at 0xda44478 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4447c loads 4 bytes from abs 0xda85dd0 via base gp (0xda8bc00).
  The `sh` at 0xda44480 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda44484 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda44488 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda4448c loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda44490 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lw` at 0xda44494 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4449c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda444a0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44454 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda444a4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cdb4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44468 goes to 0xda444b0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda444b8 has v0 = ?.

- `__gllc_TexCoord4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda444c0 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda444d0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda444d4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4450c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3c.
  The `sb` at 0xda44510 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda44518 loads 4 bytes from abs 0xda85dd4 via base gp (0xda8bc00).
  The `lw` at 0xda44538 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44540 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44544 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda444ec calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44548 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cdf0, a3=unknown.
  The `beq` branch at 0xda444fc goes to 0xda44554 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4455c has v0 = ?.

- `__gllc_TexCoord4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44564 (o32).
  It occupies 168 bytes.
  The `lw` at 0xda44570 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4457c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda445b4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3c.
  The `sb` at 0xda445b8 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda445c0 loads 4 bytes from abs 0xda85dd4 via base gp (0xda8bc00).
  The `lw` at 0xda445e0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda445e8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda445ec loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44590 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda445f0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cdf0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda445a4 goes to 0xda445fc when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44604 has v0 = ?.

- `__gllc_TexCoord4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4460c (o32).
  It occupies 164 bytes.
  The `lw` at 0xda4461c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44620 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4465c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3d.
  The `lw` at 0xda44664 loads 4 bytes from abs 0xda85dd8 via base gp (0xda8bc00).
  The `lw` at 0xda44684 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4468c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44690 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44640 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44694 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ce2c, a3=unknown.
  The `beq` branch at 0xda44650 goes to 0xda446a0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda446a8 has v0 = ?.

- `__gllc_TexCoord4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda446b0 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda446bc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda446c8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda446fc stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3d.
  The `lw` at 0xda44704 loads 4 bytes from abs 0xda85dd8 via base gp (0xda8bc00).
  The `lw` at 0xda44724 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4472c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44730 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda446dc calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44734 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ce2c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda446f0 goes to 0xda44740 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44748 has v0 = ?.

- `__gllc_TexCoord4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44750 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda44760 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44768 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda447a0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3e.
  The `lw` at 0xda447a8 loads 4 bytes from abs 0xda85ddc via base gp (0xda8bc00).
  The `sw` at 0xda447ac stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda447b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda447bc stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda447c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda447c8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda447d0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda447d4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44784 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda447d8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ce68, a3=unknown.
  The `beq` branch at 0xda44794 goes to 0xda447e4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda447ec has v0 = ?.

- `__gllc_TexCoord4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda447f4 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda44800 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4480c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44840 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3e.
  The `lw` at 0xda44844 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda44848 loads 4 bytes from abs 0xda85ddc via base gp (0xda8bc00).
  The `sw` at 0xda4484c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda44850 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda44854 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda44858 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda4485c stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda44860 loads 4 bytes from a0 (arg0 at entry) +0xc via base a3 (a0).
  The `sw` at 0xda44864 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value [a0+12].
  The `lw` at 0xda44868 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44870 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44874 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44820 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44878 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4ce68, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44834 goes to 0xda44884 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4488c has v0 = ?.

- `__gllc_TexCoord4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44894 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda448a4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda448ac loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda448e4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3f.
  The `lw` at 0xda448ec loads 4 bytes from abs 0xda85de0 via base gp (0xda8bc00).
  The `sh` at 0xda448f0 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda448f8 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda44900 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda44908 stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda4490c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44914 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44918 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda448c8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4491c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cea4, a3=unknown.
  The `beq` branch at 0xda448d8 goes to 0xda44928 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44930 has v0 = ?.

- `__gllc_TexCoord4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44938 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda44944 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44950 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44984 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x3f.
  The `lh` at 0xda44988 loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4498c loads 4 bytes from abs 0xda85de0 via base gp (0xda8bc00).
  The `sh` at 0xda44990 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda44994 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda44998 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda4499c loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda449a0 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lh` at 0xda449a4 loads 2 bytes from a0 (arg0 at entry) +0x6 via base a3 (a0).
  The `sh` at 0xda449a8 stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value [a0+6]:2.
  The `lw` at 0xda449ac loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda449b4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda449b8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44964 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda449bc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cea4, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44978 goes to 0xda449c8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda449d0 has v0 = ?.

- `__gllc_Vertex2d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda449d8 (o32).
  It occupies 148 bytes.
  The `lw` at 0xda449e8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda449ec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44a24 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x40.
  The `sb` at 0xda44a28 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda44a30 loads 4 bytes from abs 0xda85de4 via base gp (0xda8bc00).
  The `lw` at 0xda44a40 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44a48 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44a4c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44a04 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44a50 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cee0, a3=unknown.
  The `beq` branch at 0xda44a14 goes to 0xda44a5c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44a64 has v0 = ?.

- `__gllc_Vertex2dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44a6c (o32).
  It occupies 148 bytes.
  The `lw` at 0xda44a7c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44a84 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44ab8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x40.
  The `sb` at 0xda44abc stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda44ac4 loads 4 bytes from abs 0xda85de4 via base gp (0xda8bc00).
  The `lw` at 0xda44ad4 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44adc stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44ae0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44a94 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44ae4 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cee0, a3=unknown.
  The `beq` branch at 0xda44aa8 goes to 0xda44af0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44af8 has v0 = ?.

- `__gllc_Vertex2f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44b00 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda44b10 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44b14 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44b48 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x41.
  The `lw` at 0xda44b50 loads 4 bytes from abs 0xda85de8 via base gp (0xda8bc00).
  The `lw` at 0xda44b60 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44b68 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44b6c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44b2c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44b70 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cf1c, a3=unknown.
  The `beq` branch at 0xda44b3c goes to 0xda44b7c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44b84 has v0 = ?.

- `__gllc_Vertex2fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44b8c (o32).
  It occupies 140 bytes.
  The `lw` at 0xda44b9c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44ba4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44bd4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x41.
  The `lw` at 0xda44bdc loads 4 bytes from abs 0xda85de8 via base gp (0xda8bc00).
  The `lw` at 0xda44bec loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44bf4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44bf8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44bb4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44bfc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cf1c, a3=unknown.
  The `beq` branch at 0xda44bc8 goes to 0xda44c08 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44c10 has v0 = ?.

- `__gllc_Vertex2i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44c18 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda44c28 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44c30 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44c60 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x42.
  The `lw` at 0xda44c68 loads 4 bytes from abs 0xda85dec via base gp (0xda8bc00).
  The `sw` at 0xda44c6c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda44c74 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda44c78 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44c80 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44c84 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44c44 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44c88 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cf58, a3=unknown.
  The `beq` branch at 0xda44c54 goes to 0xda44c94 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44c9c has v0 = ?.

- `__gllc_Vertex2iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44ca4 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda44cb4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44cbc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44cec stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x42.
  The `lw` at 0xda44cf0 loads 4 bytes from a0 (arg0 at entry) +0x0 via base v1 (a0).
  The `lw` at 0xda44cf4 loads 4 bytes from abs 0xda85dec via base gp (0xda8bc00).
  The `sw` at 0xda44cf8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda44cfc loads 4 bytes from a0 (arg0 at entry) +0x4 via base v1 (a0).
  The `sw` at 0xda44d00 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda44d04 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44d0c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44d10 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44ccc calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44d14 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cf58, a3=unknown.
  The `beq` branch at 0xda44ce0 goes to 0xda44d20 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44d28 has v0 = ?.

- `__gllc_Vertex2s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44d30 (o32).
  It occupies 140 bytes.
  The `lw` at 0xda44d40 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44d48 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44d78 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x43.
  The `lw` at 0xda44d80 loads 4 bytes from abs 0xda85df0 via base gp (0xda8bc00).
  The `sh` at 0xda44d84 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda44d8c stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda44d90 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44d98 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44d9c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44d5c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44da0 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cf94, a3=unknown.
  The `beq` branch at 0xda44d6c goes to 0xda44dac when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44db4 has v0 = ?.

- `__gllc_Vertex2sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44dbc (o32).
  It occupies 140 bytes.
  The `lw` at 0xda44dcc loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44dd4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44e04 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x43.
  The `lh` at 0xda44e08 loads 2 bytes from a0 (arg0 at entry) +0x0 via base v1 (a0).
  The `lw` at 0xda44e0c loads 4 bytes from abs 0xda85df0 via base gp (0xda8bc00).
  The `sh` at 0xda44e10 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda44e14 loads 2 bytes from a0 (arg0 at entry) +0x2 via base v1 (a0).
  The `sh` at 0xda44e18 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lw` at 0xda44e1c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44e24 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44e28 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44de4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44e2c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cf94, a3=unknown.
  The `beq` branch at 0xda44df8 goes to 0xda44e38 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44e40 has v0 = ?.

- `__gllc_Vertex3d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44e48 (o32).
  It occupies 156 bytes.
  The `lw` at 0xda44e58 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44e5c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44e94 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x44.
  The `sb` at 0xda44e98 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda44ea0 loads 4 bytes from abs 0xda85df4 via base gp (0xda8bc00).
  The `lw` at 0xda44eb8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44ec0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44ec4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44e74 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda44ec8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cfd0, a3=unknown.
  The `beq` branch at 0xda44e84 goes to 0xda44ed4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44edc has v0 = ?.

- `__gllc_Vertex3dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44ee4 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda44ef0 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44efc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44f34 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x44.
  The `sb` at 0xda44f38 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda44f40 loads 4 bytes from abs 0xda85df4 via base gp (0xda8bc00).
  The `lw` at 0xda44f58 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44f60 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44f64 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44f10 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x18, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda44f68 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4cfd0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda44f24 goes to 0xda44f74 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda44f7c has v0 = ?.

- `__gllc_Vertex3f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda44f84 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda44f94 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda44f98 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda44fd0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x45.
  The `lw` at 0xda44fd8 loads 4 bytes from abs 0xda85df8 via base gp (0xda8bc00).
  The `lw` at 0xda44ff0 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda44ff8 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda44ffc loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda44fb4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45000 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d00c, a3=unknown.
  The `beq` branch at 0xda44fc4 goes to 0xda4500c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45014 has v0 = ?.

- `__gllc_Vertex3fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4501c (o32).
  It occupies 152 bytes.
  The `lw` at 0xda45028 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45034 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45068 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x45.
  The `lw` at 0xda45070 loads 4 bytes from abs 0xda85df8 via base gp (0xda8bc00).
  The `lw` at 0xda45088 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45090 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda45094 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45048 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45098 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d00c, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4505c goes to 0xda450a4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda450ac has v0 = ?.

- `__gllc_Vertex3i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda450b4 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda450c4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda450cc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45100 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x46.
  The `lw` at 0xda45108 loads 4 bytes from abs 0xda85dfc via base gp (0xda8bc00).
  The `sw` at 0xda4510c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45114 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda4511c stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `lw` at 0xda45120 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45128 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4512c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda450e4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45130 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d048, a3=unknown.
  The `beq` branch at 0xda450f4 goes to 0xda4513c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45144 has v0 = ?.

- `__gllc_Vertex3iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4514c (o32).
  It occupies 152 bytes.
  The `lw` at 0xda45158 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45164 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45198 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x46.
  The `lw` at 0xda4519c loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda451a0 loads 4 bytes from abs 0xda85dfc via base gp (0xda8bc00).
  The `sw` at 0xda451a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda451a8 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda451ac stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda451b0 loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda451b4 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda451b8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda451c0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda451c4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45178 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0xc, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda451c8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d048, a3=a0 at entry (arg0).
  The `beq` branch at 0xda4518c goes to 0xda451d4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda451dc has v0 = ?.

- `__gllc_Vertex3s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda451e4 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda451f4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda451fc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45230 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x47.
  The `lw` at 0xda45238 loads 4 bytes from abs 0xda85e00 via base gp (0xda8bc00).
  The `sh` at 0xda4523c stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda45244 stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda4524c stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda45250 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45258 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4525c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45214 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45260 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d084, a3=unknown.
  The `beq` branch at 0xda45224 goes to 0xda4526c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45274 has v0 = ?.

- `__gllc_Vertex3sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4527c (o32).
  It occupies 152 bytes.
  The `lw` at 0xda45288 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45294 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda452c8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x47.
  The `lh` at 0xda452cc loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda452d0 loads 4 bytes from abs 0xda85e00 via base gp (0xda8bc00).
  The `sh` at 0xda452d4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda452d8 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda452dc stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda452e0 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda452e4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lw` at 0xda452e8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda452f0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda452f4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda452a8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda452f8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d084, a3=a0 at entry (arg0).
  The `beq` branch at 0xda452bc goes to 0xda45304 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4530c has v0 = ?.

- `__gllc_Vertex4d` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45314 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda45324 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45328 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45360 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x48.
  The `sb` at 0xda45364 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda4536c loads 4 bytes from abs 0xda85e04 via base gp (0xda8bc00).
  The `lw` at 0xda4538c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45394 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda45398 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45340 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4539c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d0c0, a3=unknown.
  The `beq` branch at 0xda45350 goes to 0xda453a8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda453b0 has v0 = ?.

- `__gllc_Vertex4dv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda453b8 (o32).
  It occupies 168 bytes.
  The `lw` at 0xda453c4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda453d0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45408 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x48.
  The `sb` at 0xda4540c stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda45414 loads 4 bytes from abs 0xda85e04 via base gp (0xda8bc00).
  The `lw` at 0xda45434 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda4543c stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda45440 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda453e4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x20, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45444 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d0c0, a3=a0 at entry (arg0).
  The `beq` branch at 0xda453f8 goes to 0xda45450 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45458 has v0 = ?.

- `__gllc_Vertex4f` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45460 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda45470 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45474 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda454b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x49.
  The `lw` at 0xda454b8 loads 4 bytes from abs 0xda85e08 via base gp (0xda8bc00).
  The `lw` at 0xda454d8 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda454e0 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda454e4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45494 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda454e8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d0fc, a3=unknown.
  The `beq` branch at 0xda454a4 goes to 0xda454f4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda454fc has v0 = ?.

- `__gllc_Vertex4fv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45504 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda45510 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4551c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45550 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x49.
  The `lw` at 0xda45558 loads 4 bytes from abs 0xda85e08 via base gp (0xda8bc00).
  The `lw` at 0xda45578 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45580 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda45584 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45530 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45588 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d0fc, a3=a0 at entry (arg0).
  The `beq` branch at 0xda45544 goes to 0xda45594 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4559c has v0 = ?.

- `__gllc_Vertex4i` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda455a4 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda455b4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda455bc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda455f4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4a.
  The `lw` at 0xda455fc loads 4 bytes from abs 0xda85e0c via base gp (0xda8bc00).
  The `sw` at 0xda45600 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45608 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda45610 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda45618 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda4561c loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45624 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda45628 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda455d8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4562c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d138, a3=unknown.
  The `beq` branch at 0xda455e8 goes to 0xda45638 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45640 has v0 = ?.

- `__gllc_Vertex4iv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45648 (o32).
  It occupies 160 bytes.
  The `lw` at 0xda45654 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45660 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45694 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4a.
  The `lw` at 0xda45698 loads 4 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda4569c loads 4 bytes from abs 0xda85e0c via base gp (0xda8bc00).
  The `sw` at 0xda456a0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0].
  The `lw` at 0xda456a4 loads 4 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sw` at 0xda456a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4].
  The `lw` at 0xda456ac loads 4 bytes from a0 (arg0 at entry) +0x8 via base a3 (a0).
  The `sw` at 0xda456b0 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value [a0+8].
  The `lw` at 0xda456b4 loads 4 bytes from a0 (arg0 at entry) +0xc via base a3 (a0).
  The `sw` at 0xda456b8 stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value [a0+12].
  The `lw` at 0xda456bc loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda456c4 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda456c8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45674 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda456cc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d138, a3=a0 at entry (arg0).
  The `beq` branch at 0xda45688 goes to 0xda456d8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda456e0 has v0 = ?.

- `__gllc_Vertex4s` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda456e8 (o32).
  It occupies 164 bytes.
  The `lw` at 0xda456f8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45700 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45738 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4b.
  The `lw` at 0xda45740 loads 4 bytes from abs 0xda85e10 via base gp (0xda8bc00).
  The `sh` at 0xda45744 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda4574c stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda45754 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `sh` at 0xda4575c stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda45760 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45768 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4576c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4571c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45770 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d174, a3=unknown.
  The `beq` branch at 0xda4572c goes to 0xda4577c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45784 has v0 = ?.

- `__gllc_Vertex4sv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4578c (o32).
  It occupies 160 bytes.
  The `lw` at 0xda45798 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda457a4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda457d8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4b.
  The `lh` at 0xda457dc loads 2 bytes from a0 (arg0 at entry) +0x0 via base a3 (a0).
  The `lw` at 0xda457e0 loads 4 bytes from abs 0xda85e10 via base gp (0xda8bc00).
  The `sh` at 0xda457e4 stores 2 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value [a0]:2.
  The `lh` at 0xda457e8 loads 2 bytes from a0 (arg0 at entry) +0x2 via base a3 (a0).
  The `sh` at 0xda457ec stores 2 bytes to ret(__glDlistAllocOp2) +0x12 via base v0 (ret(__glDlistAllocOp2)) with value [a0+2]:2.
  The `lh` at 0xda457f0 loads 2 bytes from a0 (arg0 at entry) +0x4 via base a3 (a0).
  The `sh` at 0xda457f4 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value [a0+4]:2.
  The `lh` at 0xda457f8 loads 2 bytes from a0 (arg0 at entry) +0x6 via base a3 (a0).
  The `sh` at 0xda457fc stores 2 bytes to ret(__glDlistAllocOp2) +0x16 via base v0 (ret(__glDlistAllocOp2)) with value [a0+6]:2.
  The `lw` at 0xda45800 loads 4 bytes from unknown (base unknown) via base a0 (unknown).
  The `sw` at 0xda45808 stores 4 bytes to unknown (base unknown) via base a0 (unknown) with value unknown.
  The `lw` at 0xda4580c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda457b8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xda45810 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d174, a3=a0 at entry (arg0).
  The `beq` branch at 0xda457cc goes to 0xda4581c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45824 has v0 = ?.

- `__gllc_ClipPlane` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4582c (o32).
  It occupies 168 bytes.
  The `lw` at 0xda4583c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45844 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45880 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4c.
  The `sb` at 0xda45884 stores 1 byte to ret(__glDlistAllocOp2) +0xe via base v0 (ret(__glDlistAllocOp2)) with value 0x1.
  The `lw` at 0xda4588c loads 4 bytes from abs 0xda85e14 via base gp (0xda8bc00).
  The `sw` at 0xda45890 stores 4 bytes to ret(__glDlistAllocOp2) +0x30 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda458b4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4585c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x28, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xda458b8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d1b0, a3=a1 at entry (arg1).
  The `beq` branch at 0xda45870 goes to 0xda458c4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda458cc has v0 = ?.

- `__gllc_ColorMaterial` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda458d4 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda458e4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda458ec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda4591c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4d.
  The `lw` at 0xda45924 loads 4 bytes from abs 0xda85e18 via base gp (0xda8bc00).
  The `sw` at 0xda45928 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45930 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda45934 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45900 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45938 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d1f4, a3=unknown.
  The `beq` branch at 0xda45910 goes to 0xda45944 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4594c has v0 = ?.

- `__gllc_CullFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45954 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda45964 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda4596c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45998 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4e.
  The `lw` at 0xda459a0 loads 4 bytes from abs 0xda85e1c via base gp (0xda8bc00).
  The `sw` at 0xda459a4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda459a8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4597c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda459ac calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d23c, a3=unknown.
  The `beq` branch at 0xda4598c goes to 0xda459b8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda459c0 has v0 = ?.

- `__gllc_Fogf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda459c8 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda459d8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda459e0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45a10 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x4f.
  The `lw` at 0xda45a18 loads 4 bytes from abs 0xda85e20 via base gp (0xda8bc00).
  The `sw` at 0xda45a1c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda45a28 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda459f4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45a2c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d27c, a3=unknown.
  The `beq` branch at 0xda45a04 goes to 0xda45a38 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45a40 has v0 = ?.

- `__gllc_Fogfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45a48 (o32).
  It occupies 204 bytes.
  The `lw` at 0xda45a58 loads 4 bytes from abs 0xda852c4 via base gp (0xda8bc00).
  The `lw` at 0xda45a5c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda45a84 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda45a9c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda45ac0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x50.
  The `sw` at 0xda45acc stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda45ad0 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda45af0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda45af4 loads 4 bytes from abs 0xda85e24 via base gp (0xda8bc00).
  The `jalr` at 0xda45a70 calls `__glFogfv_size [0xda077e0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45a8c calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glFogfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45aa8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glFogfv_size) << 0x2)+4, a2=(ret(__glFogfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45adc calls `memcpy` with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xda45af8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d2c4, a3=unknown.
  The `bgez` branch at 0xda45a7c goes to 0xda45a9c when a2(=(ret(__glFogfv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glFogfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45ab4 goes to 0xda45b04 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45b0c has v0 = ?.

- `__gllc_Fogi` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45b14 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda45b24 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45b2c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45b5c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x51.
  The `lw` at 0xda45b64 loads 4 bytes from abs 0xda85e28 via base gp (0xda8bc00).
  The `sw` at 0xda45b68 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45b70 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda45b74 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45b40 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45b78 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d32c, a3=unknown.
  The `beq` branch at 0xda45b50 goes to 0xda45b84 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45b8c has v0 = ?.

- `__gllc_Fogiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45b94 (o32).
  It occupies 204 bytes.
  The `lw` at 0xda45ba4 loads 4 bytes from abs 0xda852c0 via base gp (0xda8bc00).
  The `lw` at 0xda45ba8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda45bd0 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda45be8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda45c0c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x52.
  The `sw` at 0xda45c18 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda45c1c loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda45c3c loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda45c40 loads 4 bytes from abs 0xda85e2c via base gp (0xda8bc00).
  The `jalr` at 0xda45bbc calls `__glFogiv_size [0xda07770]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45bd8 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glFogiv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45bf4 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glFogiv_size) << 0x2)+4, a2=(ret(__glFogiv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45c28 calls `memcpy` with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xda45c44 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d374, a3=unknown.
  The `bgez` branch at 0xda45bc8 goes to 0xda45be8 when a2(=(ret(__glFogiv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glFogiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45c00 goes to 0xda45c50 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45c58 has v0 = ?.

- `__gllc_FrontFace` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45c60 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda45c70 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45c78 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45ca4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x53.
  The `lw` at 0xda45cac loads 4 bytes from abs 0xda85e30 via base gp (0xda8bc00).
  The `sw` at 0xda45cb0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda45cb4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45c88 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45cb8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d3dc, a3=unknown.
  The `beq` branch at 0xda45c98 goes to 0xda45cc4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45ccc has v0 = ?.

- `__gllc_Hint` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45cd4 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda45ce4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda45cec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda45d1c stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x54.
  The `lw` at 0xda45d24 loads 4 bytes from abs 0xda85e34 via base gp (0xda8bc00).
  The `sw` at 0xda45d28 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45d30 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda45d34 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda45d00 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45d38 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d41c, a3=unknown.
  The `beq` branch at 0xda45d10 goes to 0xda45d44 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45d4c has v0 = ?.

- `__gllc_Lightf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45d54 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda45d64 loads 4 bytes from abs 0xda852c8 via base gp (0xda8bc00).
  The `lw` at 0xda45d68 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda45d98 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda45db0 loads 4 bytes from abs 0xda85b04 via base gp (0xda8bc00).
  The `jalr` at 0xda45d84 calls `__glLightfv_size [0xda07814]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45da0 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda45dbc calls `__gllc_Lightfv [0xda45dd8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=unknown.
  The `beq` branch at 0xda45d90 goes to 0xda45db0 when v0(=ret(__glLightfv_size)) == at(=0x1) and falls through when v0(=ret(__glLightfv_size)) != at(=0x1).
  The return at 0xda45dd0 has v0 = ?.

- `__gllc_Lightfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45dd8 (o32).
  It occupies 220 bytes.
  The `lw` at 0xda45de8 loads 4 bytes from abs 0xda852c8 via base gp (0xda8bc00).
  The `lw` at 0xda45dec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda45e1c loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda45e34 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda45e58 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x56.
  The `sw` at 0xda45e64 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45e6c stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda45e70 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda45e90 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda45e94 loads 4 bytes from abs 0xda85e38 via base gp (0xda8bc00).
  The `jalr` at 0xda45e08 calls `__glLightfv_size [0xda07814]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45e24 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glLightfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45e40 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glLightfv_size) << 0x2)+8, a2=(ret(__glLightfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45e7c calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0xda45e98 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d464, a3=unknown.
  The `bgez` branch at 0xda45e14 goes to 0xda45e34 when a2(=(ret(__glLightfv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glLightfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45e4c goes to 0xda45ea4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda45eac has v0 = ?.

- `__gllc_Lighti` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45eb4 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda45ec4 loads 4 bytes from abs 0xda852cc via base gp (0xda8bc00).
  The `lw` at 0xda45ec8 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda45ef8 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda45f10 loads 4 bytes from abs 0xda85b0c via base gp (0xda8bc00).
  The `jalr` at 0xda45ee4 calls `__glLightiv_size [0xda078a4]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45f00 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda45f1c calls `__gllc_Lightiv [0xda45f38]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=unknown.
  The `beq` branch at 0xda45ef0 goes to 0xda45f10 when v0(=ret(__glLightiv_size)) == at(=0x1) and falls through when v0(=ret(__glLightiv_size)) != at(=0x1).
  The return at 0xda45f30 has v0 = ?.

- `__gllc_Lightiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda45f38 (o32).
  It occupies 220 bytes.
  The `lw` at 0xda45f48 loads 4 bytes from abs 0xda852cc via base gp (0xda8bc00).
  The `lw` at 0xda45f4c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda45f7c loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda45f94 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda45fb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x58.
  The `sw` at 0xda45fc4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda45fcc stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda45fd0 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda45ff0 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda45ff4 loads 4 bytes from abs 0xda85e3c via base gp (0xda8bc00).
  The `jalr` at 0xda45f68 calls `__glLightiv_size [0xda078a4]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda45f84 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glLightiv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45fa0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glLightiv_size) << 0x2)+8, a2=(ret(__glLightiv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda45fdc calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0xda45ff8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d4d0, a3=unknown.
  The `bgez` branch at 0xda45f74 goes to 0xda45f94 when a2(=(ret(__glLightiv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glLightiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda45fac goes to 0xda46004 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4600c has v0 = ?.

- `__gllc_LightModelf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46014 (o32).
  It occupies 124 bytes.
  The `lw` at 0xda46024 loads 4 bytes from abs 0xda852d0 via base gp (0xda8bc00).
  The `lw` at 0xda46028 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46050 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda46068 loads 4 bytes from abs 0xda85b14 via base gp (0xda8bc00).
  The `jalr` at 0xda4603c calls `__glLightModelfv_size [0xda078d8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46058 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda46074 calls `__gllc_LightModelfv [0xda46090]` with a0=a0 at entry (arg0), a1=sp+4, a2=unknown, a3=unknown.
  The `beq` branch at 0xda46048 goes to 0xda46068 when v0(=ret(__glLightModelfv_size)) == at(=0x1) and falls through when v0(=ret(__glLightModelfv_size)) != at(=0x1).
  The return at 0xda46088 has v0 = ?.

- `__gllc_LightModelfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46090 (o32).
  It occupies 204 bytes.
  The `lw` at 0xda460a0 loads 4 bytes from abs 0xda852d0 via base gp (0xda8bc00).
  The `lw` at 0xda460a4 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda460cc loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda460e4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda46108 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x5a.
  The `sw` at 0xda46114 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda46118 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda46138 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda4613c loads 4 bytes from abs 0xda85e40 via base gp (0xda8bc00).
  The `jalr` at 0xda460b8 calls `__glLightModelfv_size [0xda078d8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda460d4 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glLightModelfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda460f0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glLightModelfv_size) << 0x2)+4, a2=(ret(__glLightModelfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda46124 calls `memcpy` with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xda46140 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d53c, a3=unknown.
  The `bgez` branch at 0xda460c4 goes to 0xda460e4 when a2(=(ret(__glLightModelfv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glLightModelfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda460fc goes to 0xda4614c when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46154 has v0 = ?.

- `__gllc_LightModeli` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4615c (o32).
  It occupies 124 bytes.
  The `lw` at 0xda4616c loads 4 bytes from abs 0xda852d4 via base gp (0xda8bc00).
  The `lw` at 0xda46170 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46198 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda461b0 loads 4 bytes from abs 0xda85b1c via base gp (0xda8bc00).
  The `jalr` at 0xda46184 calls `__glLightModeliv_size [0xda0792c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda461a0 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda461bc calls `__gllc_LightModeliv [0xda461d8]` with a0=a0 at entry (arg0), a1=sp+4, a2=unknown, a3=unknown.
  The `beq` branch at 0xda46190 goes to 0xda461b0 when v0(=ret(__glLightModeliv_size)) == at(=0x1) and falls through when v0(=ret(__glLightModeliv_size)) != at(=0x1).
  The return at 0xda461d0 has v0 = ?.

- `__gllc_LightModeliv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda461d8 (o32).
  It occupies 204 bytes.
  The `lw` at 0xda461e8 loads 4 bytes from abs 0xda852d4 via base gp (0xda8bc00).
  The `lw` at 0xda461ec loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46214 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda4622c loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda46250 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x5c.
  The `sw` at 0xda4625c stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda46260 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda46280 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda46284 loads 4 bytes from abs 0xda85e44 via base gp (0xda8bc00).
  The `jalr` at 0xda46200 calls `__glLightModeliv_size [0xda0792c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4621c calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glLightModeliv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda46238 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glLightModeliv_size) << 0x2)+4, a2=(ret(__glLightModeliv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda4626c calls `memcpy` with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=unknown, a3=unknown.
  The `jalr` at 0xda46288 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d5a4, a3=unknown.
  The `bgez` branch at 0xda4620c goes to 0xda4622c when a2(=(ret(__glLightModeliv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glLightModeliv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda46244 goes to 0xda46294 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4629c has v0 = ?.

- `__gllc_LineStipple` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda462a4 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda462b4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda462bc loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda462ec stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x5d.
  The `lw` at 0xda462f4 loads 4 bytes from abs 0xda85e48 via base gp (0xda8bc00).
  The `sw` at 0xda462f8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sh` at 0xda46300 stores 2 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value unknown.
  The `lw` at 0xda46304 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda462d0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46308 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d60c, a3=unknown.
  The `beq` branch at 0xda462e0 goes to 0xda46314 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda4631c has v0 = ?.

- `__gllc_LineWidth` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46324 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda46330 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda46338 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda46368 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x5e.
  The `lw` at 0xda46370 loads 4 bytes from abs 0xda85e4c via base gp (0xda8bc00).
  The `lw` at 0xda46378 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4634c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4637c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d654, a3=unknown.
  The `beq` branch at 0xda4635c goes to 0xda46388 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46390 has v0 = ?.

- `__gllc_Materialf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46398 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda463a8 loads 4 bytes from abs 0xda852d8 via base gp (0xda8bc00).
  The `lw` at 0xda463ac loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda463dc loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda463f4 loads 4 bytes from abs 0xda85b2c via base gp (0xda8bc00).
  The `jalr` at 0xda463c8 calls `__glMaterialfv_size [0xda07960]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda463e4 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda46400 calls `__gllc_Materialfv [0xda4641c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=unknown.
  The `beq` branch at 0xda463d4 goes to 0xda463f4 when v0(=ret(__glMaterialfv_size)) == at(=0x1) and falls through when v0(=ret(__glMaterialfv_size)) != at(=0x1).
  The return at 0xda46414 has v0 = ?.

- `__gllc_Materialfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4641c (o32).
  It occupies 288 bytes.
  The `lw` at 0xda4642c loads 4 bytes from abs 0xda849ec via base gp (0xda8bc00).
  The `lw` at 0xda46448 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46450 loads 4 bytes from a2 (arg2 at entry) +0x0 via base a2 (a2).
  The `lw` at 0xda46460 loads 4 bytes from abs 0xda84394 via base gp (0xda8bc00).
  The `lw` at 0xda46478 loads 4 bytes from abs 0xda852d8 via base gp (0xda8bc00).
  The `lw` at 0xda46494 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda464ac loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda464d0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x60.
  The `sw` at 0xda464dc stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda464e4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda464e8 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda464fc loads 4 bytes from [0x1010] +0x1384 via base s0 ([0x1010]).
  The `sw` at 0xda4650c stores 4 bytes to [0x1010] +0x1384 via base s0 ([0x1010]) with value ([[0x1010]+4996] | 0x100).
  The `lw` at 0xda46510 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda46518 loads 4 bytes from abs 0xda85e50 via base gp (0xda8bc00).
  The `jalr` at 0xda4644c calls `__glErrorCheckMaterial [0xd9c339c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xda46468 calls `__gllc_Error [0xd993598]` with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=unknown, a3=unknown.
  The `jalr` at 0xda46480 calls `__glMaterialfv_size [0xda07960]` with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=unknown, a3=unknown.
  The `jalr` at 0xda4649c calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=(ret(__glMaterialfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda464b8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=(ret(__glMaterialfv_size) << 0x2)+8, a2=(ret(__glMaterialfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda464f4 calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0xda4651c calls `__glDlistAppendOp [0xd992ec8]` with a0=[0x1010], a1=unknown, a2=0xda4d694, a3=unknown.
  The `beq` branch at 0xda46458 goes to 0xda46478 when v0(=ret(__glErrorCheckMaterial)) == 0 and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `bgez` branch at 0xda4648c goes to 0xda464ac when a2(=(ret(__glMaterialfv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glMaterialfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda464c4 goes to 0xda46528 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46534 has v0 = ?.

- `__gllc_Materiali` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda4653c (o32).
  It occupies 132 bytes.
  The `lw` at 0xda4654c loads 4 bytes from abs 0xda852dc via base gp (0xda8bc00).
  The `lw` at 0xda46550 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46580 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda46598 loads 4 bytes from abs 0xda85b34 via base gp (0xda8bc00).
  The `jalr` at 0xda4656c calls `__glMaterialiv_size [0xda079e4]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46588 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda465a4 calls `__gllc_Materialiv [0xda465c0]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=unknown.
  The `beq` branch at 0xda46578 goes to 0xda46598 when v0(=ret(__glMaterialiv_size)) == at(=0x1) and falls through when v0(=ret(__glMaterialiv_size)) != at(=0x1).
  The return at 0xda465b8 has v0 = ?.

- `__gllc_Materialiv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda465c0 (o32).
  It occupies 308 bytes.
  The `lw` at 0xda465e8 loads 4 bytes from a2 (arg2 at entry) +0x0 via base a2 (a2).
  The `lw` at 0xda465ec loads 4 bytes from abs 0xda849ec via base gp (0xda8bc00).
  The `lw` at 0xda465f0 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46618 loads 4 bytes from abs 0xda84394 via base gp (0xda8bc00).
  The `lw` at 0xda46630 loads 4 bytes from abs 0xda852dc via base gp (0xda8bc00).
  The `lw` at 0xda4664c loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda46664 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda46688 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x62.
  The `sw` at 0xda46694 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda4669c stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda466a0 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda466b4 loads 4 bytes from [0x1010] +0x1384 via base s0 ([0x1010]).
  The `sw` at 0xda466c4 stores 4 bytes to [0x1010] +0x1384 via base s0 ([0x1010]) with value ([[0x1010]+4996] | 0x100).
  The `lw` at 0xda466c8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda466d0 loads 4 bytes from abs 0xda85e54 via base gp (0xda8bc00).
  The `jalr` at 0xda46604 calls `__glErrorCheckMaterial [0xd9c339c]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3).
  The `jalr` at 0xda46620 calls `__gllc_Error [0xd993598]` with a0=[0x1010], a1=ret(__glErrorCheckMaterial), a2=unknown, a3=unknown.
  The `jalr` at 0xda46638 calls `__glMaterialiv_size [0xda079e4]` with a0=a1 at entry (arg1), a1=ret(__glErrorCheckMaterial), a2=unknown, a3=unknown.
  The `jalr` at 0xda46654 calls `__gllc_InvalidEnum [0xd993404]` with a0=[0x1010], a1=unknown, a2=(ret(__glMaterialiv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda46670 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=(ret(__glMaterialiv_size) << 0x2)+8, a2=(ret(__glMaterialiv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda466ac calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0xda466d4 calls `__glDlistAppendOp [0xd992ec8]` with a0=[0x1010], a1=unknown, a2=0xda4d700, a3=unknown.
  The `beq` branch at 0xda46610 goes to 0xda46630 when v0(=ret(__glErrorCheckMaterial)) == 0 and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `bgez` branch at 0xda46644 goes to 0xda46664 when a2(=(ret(__glMaterialiv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glMaterialiv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda4667c goes to 0xda466e0 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda466ec has v0 = ?.

- `__gllc_PointSize` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda466f4 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda46700 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda46708 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda46738 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x63.
  The `lw` at 0xda46740 loads 4 bytes from abs 0xda85e58 via base gp (0xda8bc00).
  The `lw` at 0xda46748 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4671c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4674c calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d76c, a3=unknown.
  The `beq` branch at 0xda4672c goes to 0xda46758 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46760 has v0 = ?.

- `__gllc_PolygonMode` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46768 (o32).
  It occupies 128 bytes.
  The `lw` at 0xda46778 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda46780 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda467b0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x64.
  The `lw` at 0xda467b8 loads 4 bytes from abs 0xda85e5c via base gp (0xda8bc00).
  The `sw` at 0xda467bc stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda467c4 stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda467c8 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda46794 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda467cc calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d7ac, a3=unknown.
  The `beq` branch at 0xda467a4 goes to 0xda467d8 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda467e0 has v0 = ?.

- `__gllc_Scissor` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda467e8 (o32).
  It occupies 152 bytes.
  The `lw` at 0xda467f8 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda46800 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda46838 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x66.
  The `lw` at 0xda46840 loads 4 bytes from abs 0xda85e60 via base gp (0xda8bc00).
  The `sw` at 0xda46844 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda4684c stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `sw` at 0xda46854 stores 4 bytes to ret(__glDlistAllocOp2) +0x18 via base v0 (ret(__glDlistAllocOp2)) with value a2.
  The `sw` at 0xda4685c stores 4 bytes to ret(__glDlistAllocOp2) +0x1c via base v0 (ret(__glDlistAllocOp2)) with value a3.
  The `lw` at 0xda46860 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda4681c calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x10, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46864 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d7f4, a3=unknown.
  The `beq` branch at 0xda4682c goes to 0xda46870 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46878 has v0 = ?.

- `__gllc_ShadeModel` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46880 (o32).
  It occupies 116 bytes.
  The `lw` at 0xda46890 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `lw` at 0xda46898 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `sh` at 0xda468c4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x67.
  The `lw` at 0xda468cc loads 4 bytes from abs 0xda85e64 via base gp (0xda8bc00).
  The `sw` at 0xda468d0 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `lw` at 0xda468d4 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `jalr` at 0xda468a8 calls `__glDlistAllocOp2 [0xd992e30]` with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda468d8 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xda4d844, a3=unknown.
  The `beq` branch at 0xda468b8 goes to 0xda468e4 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda468ec has v0 = ?.

- `__gllc_TexParameterf` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda468f4 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda46904 loads 4 bytes from abs 0xda8543c via base gp (0xda8bc00).
  The `lw` at 0xda46908 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46938 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda46950 loads 4 bytes from abs 0xda85b4c via base gp (0xda8bc00).
  The `jalr` at 0xda46924 calls `__glTexParameterfv_size [0xda19c24]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46940 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda4695c calls `__gllc_TexParameterfv [0xda46978]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=unknown.
  The `beq` branch at 0xda46930 goes to 0xda46950 when v0(=ret(__glTexParameterfv_size)) == at(=0x1) and falls through when v0(=ret(__glTexParameterfv_size)) != at(=0x1).
  The return at 0xda46970 has v0 = ?.

- `__gllc_TexParameterfv` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46978 (o32).
  It occupies 220 bytes.
  The `lw` at 0xda46988 loads 4 bytes from abs 0xda8543c via base gp (0xda8bc00).
  The `lw` at 0xda4698c loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda469bc loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda469d4 loads 4 bytes from abs 0xda84344 via base gp (0xda8bc00).
  The `sh` at 0xda469f8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc via base v0 (ret(__glDlistAllocOp2)) with value 0x69.
  The `sw` at 0xda46a04 stores 4 bytes to ret(__glDlistAllocOp2) +0x10 via base v0 (ret(__glDlistAllocOp2)) with value a0.
  The `sw` at 0xda46a0c stores 4 bytes to ret(__glDlistAllocOp2) +0x14 via base v0 (ret(__glDlistAllocOp2)) with value a1.
  The `lw` at 0xda46a10 loads 4 bytes from abs 0xda873b4 via base gp (0xda8bc00).
  The `lw` at 0xda46a30 loads 4 bytes from abs 0xda8434c via base gp (0xda8bc00).
  The `lw` at 0xda46a34 loads 4 bytes from abs 0xda85e68 via base gp (0xda8bc00).
  The `jalr` at 0xda469a8 calls `__glTexParameterfv_size [0xda19c24]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda469c4 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=(ret(__glTexParameterfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda469e0 calls `__glDlistAllocOp2 [0xd992e30]` with a0=unknown, a1=(ret(__glTexParameterfv_size) << 0x2)+8, a2=(ret(__glTexParameterfv_size) << 0x2), a3=unknown.
  The `jalr` at 0xda46a1c calls `memcpy` with a0=ret(__glDlistAllocOp2)+24, a1=a2 at entry (arg2), a2=unknown, a3=unknown.
  The `jalr` at 0xda46a38 calls `__glDlistAppendOp [0xd992ec8]` with a0=unknown, a1=unknown, a2=0xda4d884, a3=unknown.
  The `bgez` branch at 0xda469b4 goes to 0xda469d4 when a2(=(ret(__glTexParameterfv_size) << 0x2)) >= 0 (signed) and falls through when a2(=(ret(__glTexParameterfv_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xda469ec goes to 0xda46a44 when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xda46a4c has v0 = ?.

- `__gllc_TexParameteri` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda46a54 (o32).
  It occupies 132 bytes.
  The `lw` at 0xda46a64 loads 4 bytes from abs 0xda85440 via base gp (0xda8bc00).
  The `lw` at 0xda46a68 loads 4 bytes from abs 0x1010 via base zero (0x0).
  The `lw` at 0xda46a98 loads 4 bytes from abs 0xda84384 via base gp (0xda8bc00).
  The `lw` at 0xda46ab0 loads 4 bytes from abs 0xda85b54 via base gp (0xda8bc00).
  The `jalr` at 0xda46a84 calls `__glTexParameteriv_size [0xda19d70]` with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda46aa0 calls `__gllc_InvalidEnum [0xd993404]` with a0=unknown, a1=unknown, a2=unknown, a3=unknown.
  The `jalr` at 0xda46abc calls `__gllc_TexParameteriv [0xda46ad8]` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=unknown.
  The `beq` branch at 0xda46a90 goes to 0xda46ab0 when v0(=ret(__glTexParameteriv_size)) == at(=0x1) and falls through when v0(=ret(__glTexParameteriv_size)) != at(=0x1).
  The return at 0xda46ad0 has v0 = ?.
